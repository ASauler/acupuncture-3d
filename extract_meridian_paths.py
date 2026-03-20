"""
Extract meridian line centerlines from tube meshes in 针灸大师 app.
Uses two strategies:
1. Ring-based: for meshes with consistent ring structure
2. Spatial binning: for meshes with irregular topology

CRITICAL: Mesh vertices from export() are in LOCAL space with X already negated.
Must apply the GO's Transform world position offset (also X-negated) before
converting to Three.js coordinates.
"""
import UnityPy
import json
import math

BUNDLE = 'xapk-decompiled/assets-apktool/assets/aa/Android/Android/internationaljlsx_assets_all_331b38c657f2d8ce1f15f58f6d82c201.bundle'
env = UnityPy.load(BUNDLE)

SCALE = 95.3
Y_OFFSET = -11.2

# Build transform map for world position calculation
transforms = {}
for obj in env.objects:
    if obj.type.name == 'Transform':
        t = obj.read()
        go = t.m_GameObject.read()
        pos = t.m_LocalPosition
        father_pid = t.m_Father.path_id if t.m_Father else None
        transforms[obj.path_id] = {
            'name': go.m_Name,
            'pos': (pos.x, pos.y, pos.z),
            'father_pid': father_pid,
            'go_pid': go.object_reader.path_id,
        }

def get_world_pos(pid):
    wx, wy, wz = 0, 0, 0
    current = pid
    while current and current in transforms:
        t = transforms[current]
        wx += t['pos'][0]
        wy += t['pos'][1]
        wz += t['pos'][2]
        current = t['father_pid']
    return (wx, wy, wz)

# Map GO path_id -> Transform path_id
go_to_transform = {}
for tpid, tdata in transforms.items():
    go_to_transform[tdata['go_pid']] = tpid

# Find line references
line_go_pids = []
for obj in env.objects:
    if obj.type.name == 'MonoBehaviour':
        try:
            tt = obj.read_typetree()
            if tt and 'acuLineList' in tt:
                for ref in tt['acuLineList']:
                    line_go_pids.append(ref.get('m_PathID', 0))
                break
        except:
            pass

go_names = {}
for obj in env.objects:
    if obj.type.name == 'GameObject':
        go_names[obj.path_id] = obj.read().m_Name

go_meshes = {}
for obj in env.objects:
    if obj.type.name == 'MeshFilter':
        d = obj.read()
        go_pid = d.m_GameObject.path_id
        mesh_ref = d.m_Mesh
        if mesh_ref and mesh_ref.path_id:
            go_meshes[go_pid] = mesh_ref.path_id

MERIDIAN_KEYS = ['LU','LI','ST','SP','HT','SI','BL','KI','PC','TE','GB','LR','DU','RN']


def extract_centerline_ring(verts, n_verts):
    """Try ring-based extraction."""
    best = None
    best_smooth = float('inf')
    for ring_size in range(3, 25):
        if n_verts % ring_size != 0:
            continue
        n_rings = n_verts // ring_size
        if n_rings < 3:
            continue
        centers = []
        for r in range(n_rings):
            rv = verts[r*ring_size:(r+1)*ring_size]
            centers.append((
                sum(v[0] for v in rv)/ring_size,
                sum(v[1] for v in rv)/ring_size,
                sum(v[2] for v in rv)/ring_size
            ))
        # Smoothness check
        dev = 0
        for i in range(1, len(centers)-1):
            d1 = [centers[i][k]-centers[i-1][k] for k in range(3)]
            d2 = [centers[i+1][k]-centers[i][k] for k in range(3)]
            l1 = math.sqrt(sum(x*x for x in d1))
            l2 = math.sqrt(sum(x*x for x in d2))
            if l1 > 1e-6 and l2 > 1e-6:
                cx = d1[1]*d2[2]-d1[2]*d2[1]
                cy = d1[2]*d2[0]-d1[0]*d2[2]
                cz = d1[0]*d2[1]-d1[1]*d2[0]
                dev += math.sqrt(cx*cx+cy*cy+cz*cz)/(l1*l2)
        s = dev / max(len(centers)-2, 1)
        if s < best_smooth:
            best_smooth = s
            best = (centers, ring_size)
    return best


def extract_centerline_spatial(verts):
    """
    Spatial method: project vertices onto principal axis, bin, and average.
    """
    n = len(verts)

    # Find the two most distant vertices (tube endpoints)
    cx = sum(v[0] for v in verts)/n
    cy = sum(v[1] for v in verts)/n
    cz = sum(v[2] for v in verts)/n

    max_d = 0
    start_idx = 0
    for i, v in enumerate(verts):
        d = (v[0]-cx)**2 + (v[1]-cy)**2 + (v[2]-cz)**2
        if d > max_d:
            max_d = d
            start_idx = i

    sx, sy, sz = verts[start_idx]
    max_d = 0
    end_idx = 0
    for i, v in enumerate(verts):
        d = (v[0]-sx)**2 + (v[1]-sy)**2 + (v[2]-sz)**2
        if d > max_d:
            max_d = d
            end_idx = i

    ex, ey, ez = verts[end_idx]
    dx, dy, dz = ex-sx, ey-sy, ez-sz
    path_len = math.sqrt(dx*dx+dy*dy+dz*dz)
    if path_len < 1e-6:
        return []

    dx /= path_len
    dy /= path_len
    dz /= path_len

    projections = []
    for v in verts:
        proj = (v[0]-sx)*dx + (v[1]-sy)*dy + (v[2]-sz)*dz
        projections.append(proj)

    n_bins = min(200, n // 3)
    min_proj = min(projections)
    max_proj = max(projections)
    bin_width = (max_proj - min_proj) / n_bins

    bins = [[] for _ in range(n_bins)]
    for i, proj in enumerate(projections):
        b = int((proj - min_proj) / bin_width)
        b = min(b, n_bins - 1)
        bins[b].append(verts[i])

    centers = []
    for b in bins:
        if not b:
            continue
        avg = (
            sum(v[0] for v in b)/len(b),
            sum(v[1] for v in b)/len(b),
            sum(v[2] for v in b)/len(b)
        )
        centers.append(avg)

    return centers


def simplify_path(points, max_points=120):
    """Reduce path points while preserving shape."""
    n = len(points)
    if n <= max_points:
        return points

    step = max(1, (n - 1) // (max_points - 1))
    result = [points[i] for i in range(0, n, step)]
    if result[-1] != points[-1]:
        result.append(points[-1])
    return result


# Extract all 14 meridians
meridian_paths = {}

for i in range(min(14, len(line_go_pids))):
    go_pid = line_go_pids[i]
    name = go_names.get(go_pid, '?')
    m_key = MERIDIAN_KEYS[i]

    mesh_pid = go_meshes.get(go_pid, None)
    if not mesh_pid:
        print(f'  [{i}] {m_key}: no mesh')
        continue

    # Get the GO's world position for Transform offset
    t_pid = go_to_transform.get(go_pid)
    if t_pid:
        world_pos = get_world_pos(t_pid)
        # CRITICAL: negate X because export() already negated vertex X
        tx_offset = -world_pos[0]
        ty_offset = world_pos[1]
        tz_offset = world_pos[2]
    else:
        tx_offset, ty_offset, tz_offset = 0, 0, 0

    for obj in env.objects:
        if obj.type.name == 'Mesh' and obj.path_id == mesh_pid:
            d = obj.read()
            exp = d.export()
            if not exp:
                break

            # Parse vertices (already X-negated by UnityPy export)
            # Apply Transform offset to convert from local to world space
            verts = []
            for line in exp.split('\n'):
                if line.startswith('v '):
                    parts = line.split()
                    vx = float(parts[1]) + tx_offset
                    vy = float(parts[2]) + ty_offset
                    vz = float(parts[3]) + tz_offset
                    verts.append((vx, vy, vz))

            n_verts = len(verts)

            # Try ring-based first
            ring_result = extract_centerline_ring(verts, n_verts)
            if ring_result:
                centers, ring_size = ring_result
                method = f'ring(size={ring_size})'
            else:
                # Fallback to spatial binning
                centers = extract_centerline_spatial(verts)
                method = 'spatial'

            if centers:
                # Convert to Three.js coords
                # Vertices are now in world OBJ space (X already negated, offset applied)
                # Three.js: x = obj_x * SCALE, y = obj_y * SCALE + Y_OFFSET, z = obj_z * SCALE
                threejs = []
                for c in centers:
                    threejs.append([
                        round(c[0] * SCALE, 2),
                        round(c[1] * SCALE + Y_OFFSET, 2),
                        round(c[2] * SCALE, 2)
                    ])

                threejs = simplify_path(threejs, 120)
                meridian_paths[m_key] = threejs
                print(f'  [{i}] {m_key}: {method}, {n_verts} verts -> {len(threejs)} path pts, offset=({tx_offset:.4f},{ty_offset:.4f},{tz_offset:.4f})')
            else:
                print(f'  [{i}] {m_key}: FAILED')
            break

# Save
with open('data/meridian_paths.json', 'w') as f:
    json.dump(meridian_paths, f)

print(f'\nSaved {len(meridian_paths)} meridian paths to data/meridian_paths.json')

# Verify alignment with acupoints
import re
try:
    with open('data/unity_points.json', 'r') as f:
        pts_data = json.load(f)
    points = pts_data['points']

    print('\n=== Alignment Check (avg distance from acupoint to nearest path point) ===')
    for m_key, path in meridian_paths.items():
        m_points = {}
        for code, pos in points.items():
            m = re.match(r'([A-Z]+)', code).group(1)
            if m == m_key:
                m_points[code] = pos

        if not m_points:
            continue

        dists = []
        for code, pos in m_points.items():
            px, py, pz = pos[1], pos[2], pos[3]
            min_d = float('inf')
            for wp in path:
                d = math.sqrt((px-wp[0])**2 + (py-wp[1])**2 + (pz-wp[2])**2)
                min_d = min(min_d, d)
            dists.append((code, min_d))

        avg_d = sum(d for _, d in dists) / len(dists)
        max_d = max(d for _, d in dists)
        max_code = max(dists, key=lambda x: x[1])[0]
        print(f'  {m_key}: {len(m_points)} pts, avg_dist={avg_d:.1f}, max_dist={max_d:.1f} ({max_code})')
except:
    import traceback
    traceback.print_exc()
