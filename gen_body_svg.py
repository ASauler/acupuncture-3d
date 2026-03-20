"""
Generate white-line drawing SVG from body.obj.
Two-pass approach:
  Pass 1: Rasterize → bitmap → outer contour (clean silhouette)
  Pass 2: Silhouette edge detection → filter to keep only edges NEAR the outer contour
          (removes internal seam lines, keeps fingers/face/muscle details)
  Combine both into final SVG.
"""
import numpy as np
from collections import defaultdict
from PIL import Image

# --- Load OBJ ---
verts, faces = [], []
with open('model/body.obj') as f:
    for line in f:
        if line.startswith('v '):
            p = line.split()
            verts.append([float(p[1]), float(p[2]), float(p[3])])
        elif line.startswith('f '):
            p = line.split()[1:]
            idx = [int(x.split('/')[0]) - 1 for x in p]
            if len(idx) == 3:
                faces.append(idx)
            elif len(idx) == 4:
                faces.append([idx[0], idx[1], idx[2]])
                faces.append([idx[0], idx[2], idx[3]])

V = np.array(verts, dtype=np.float64)
F = np.array(faces, dtype=np.int32)
print(f"Mesh: {len(V)} verts, {len(F)} faces")

# --- Face normals ---
v0, v1, v2 = V[F[:,0]], V[F[:,1]], V[F[:,2]]
normals = np.cross(v1 - v0, v2 - v0)
norms_len = np.linalg.norm(normals, axis=1, keepdims=True)
norms_len[norms_len == 0] = 1
normals /= norms_len
front_facing = normals[:, 2] > 0

# --- Projection setup ---
RENDER_W, RENDER_H = 800, 1500
MARGIN = 30
x_min, x_max = V[:,0].min(), V[:,0].max()
y_min, y_max = V[:,1].min(), V[:,1].max()
x_range, y_range = x_max - x_min, y_max - y_min

def proj(vx, vy):
    px = MARGIN + (vx - x_min) / x_range * (RENDER_W - 2*MARGIN)
    py = MARGIN + (y_max - vy) / y_range * (RENDER_H - 2*MARGIN)
    return px, py

# ============================================================
# PASS 1: Rasterize → outer contour
# ============================================================
print("Pass 1: Rasterizing...")
bitmap = np.zeros((RENDER_H, RENDER_W), dtype=np.uint8)

def fill_tri(img, x0,y0, x1,y1, x2,y2):
    pts = sorted([(x0,y0),(x1,y1),(x2,y2)], key=lambda p: p[1])
    (ax,ay),(bx,by),(cx,cy) = pts
    ay,by,cy = int(ay), int(by), int(cy)
    h = img.shape[0]
    w = img.shape[1]
    def ix(ya,xa,yb,xb,y):
        return xa if yb==ya else xa+(xb-xa)*(y-ya)/(yb-ya)
    for y in range(max(0,ay), min(h,cy+1)):
        if y < by:
            xl = ix(ay,ax,by,bx,y) if by>ay else ax
            xr = ix(ay,ax,cy,cx,y)
        else:
            xl = ix(by,bx,cy,cx,y) if cy>by else bx
            xr = ix(ay,ax,cy,cx,y)
        if xl>xr: xl,xr=xr,xl
        xs,xe = max(0,int(xl)), min(w-1,int(xr))
        img[y,xs:xe+1] = 255

for fi in np.where(front_facing)[0]:
    i0,i1,i2 = F[fi]
    fill_tri(bitmap, *proj(V[i0,0],V[i0,1]), *proj(V[i1,0],V[i1,1]), *proj(V[i2,0],V[i2,1]))

# Extract outer contour pixels
contour = np.zeros_like(bitmap)
for dy,dx in [(-1,0),(1,0),(0,-1),(0,1)]:
    shifted = np.roll(np.roll(bitmap, dy, axis=0), dx, axis=1)
    contour |= ((bitmap > 0) & (shifted == 0))

contour_pixels = set(map(tuple, np.argwhere(contour > 0)))
print(f"Outer contour pixels: {len(contour_pixels)}")

# Chain the contour pixels
adj_c = defaultdict(list)
for y,x in contour_pixels:
    for dy in [-1,0,1]:
        for dx in [-1,0,1]:
            if dy==0 and dx==0: continue
            nb = (y+dy,x+dx)
            if nb in contour_pixels:
                adj_c[(y,x)].append(nb)

visited = set()
contour_chains = []
for start in sorted(contour_pixels, key=lambda p: len(adj_c[p])):
    if start in visited: continue
    chain = [start]; visited.add(start); cur = start
    while True:
        nbs = [n for n in adj_c[cur] if n not in visited]
        if not nbs: break
        nxt = nbs[0]; chain.append(nxt); visited.add(nxt); cur = nxt
    if len(chain) >= 30:
        contour_chains.append(chain)

print(f"Contour chains: {len(contour_chains)}, lengths: {[len(c) for c in contour_chains][:5]}")

# ============================================================
# PASS 2: Silhouette edges near contour (for detail lines)
# ============================================================
print("Pass 2: Silhouette edge detail...")

# Build edge→face map
edge_faces = defaultdict(list)
for fi, face in enumerate(F):
    for i in range(3):
        a,b = face[i], face[(i+1)%3]
        edge_faces[(min(a,b),max(a,b))].append(fi)

# Find silhouette edges
sil_edges = []
for edge, fids in edge_faces.items():
    if len(fids) == 2:
        if front_facing[fids[0]] != front_facing[fids[1]]:
            # Filter: keep edges where both faces are nearly edge-on to camera
            nz0 = abs(normals[fids[0], 2])
            nz1 = abs(normals[fids[1], 2])
            # True silhouette: both normals nearly perpendicular to view
            if max(nz0, nz1) < 0.45:
                sil_edges.append(edge)
    elif len(fids) == 1:
        sil_edges.append(edge)

print(f"Filtered silhouette edges: {len(sil_edges)}")

# Check which silhouette edges are near the contour (within N pixels)
NEAR_DIST = 8  # pixels
def is_near_contour(vi):
    px, py = proj(V[vi,0], V[vi,1])
    iy, ix = int(py), int(px)
    for dy in range(-NEAR_DIST, NEAR_DIST+1, 2):
        for dx in range(-NEAR_DIST, NEAR_DIST+1, 2):
            if (iy+dy, ix+dx) in contour_pixels:
                return True
    return False

# Filter to edges near contour
detail_edges = []
for a,b in sil_edges:
    if is_near_contour(a) or is_near_contour(b):
        detail_edges.append((a,b))

print(f"Detail edges near contour: {len(detail_edges)}")

# Chain detail edges
d_adj = defaultdict(set)
for a,b in detail_edges:
    d_adj[a].add(b); d_adj[b].add(a)

d_used = set()
detail_chains = []
for a,b in detail_edges:
    ek = (min(a,b),max(a,b))
    if ek in d_used: continue
    chain = [a,b]; d_used.add(ek)
    cur,prev = b,a
    while True:
        nbs = d_adj[cur] - {prev}
        found = False
        for n in nbs:
            k = (min(cur,n),max(cur,n))
            if k not in d_used:
                d_used.add(k); chain.append(n); prev=cur; cur=n; found=True; break
        if not found: break
    cur,prev = a,b
    while True:
        nbs = d_adj[cur] - {prev}
        found = False
        for n in nbs:
            k = (min(cur,n),max(cur,n))
            if k not in d_used:
                d_used.add(k); chain.insert(0,n); prev=cur; cur=n; found=True; break
        if not found: break
    if len(chain) >= 15:
        detail_chains.append(chain)

print(f"Detail chains (>=15): {len(detail_chains)}")

# ============================================================
# Generate SVG
# ============================================================
SVG_W = 500
svg_scale = SVG_W / RENDER_W
SVG_H = int(RENDER_H * svg_scale)

def dp_simplify(pts, eps):
    if len(pts) <= 2: return pts
    pts_a = np.array(pts)
    s, e = pts_a[0], pts_a[-1]
    line = e - s; ll = np.linalg.norm(line)
    if ll < 1e-10: return [tuple(pts_a[0]), tuple(pts_a[-1])]
    lu = line/ll
    vecs = pts_a[1:-1] - s
    proj_d = vecs @ lu
    proj_pts = np.outer(proj_d, lu) + s
    dists = np.linalg.norm(pts_a[1:-1] - proj_pts, axis=1)
    mi = np.argmax(dists) + 1
    if dists[mi-1] > eps:
        l = dp_simplify([tuple(p) for p in pts_a[:mi+1]], eps)
        r = dp_simplify([tuple(p) for p in pts_a[mi:]], eps)
        return l[:-1]+r
    return [tuple(pts_a[0]), tuple(pts_a[-1])]

def chain_to_svg_path(chain, is_pixel=True, epsilon=1.2):
    if is_pixel:
        pts = [(x*svg_scale, y*svg_scale) for y,x in chain]
    else:
        pts = [(proj(V[vi,0],V[vi,1])[0]*svg_scale, proj(V[vi,0],V[vi,1])[1]*svg_scale) for vi in chain]
    simp = dp_simplify(pts, epsilon)
    if len(simp) < 2: return None
    d = f"M{simp[0][0]:.1f},{simp[0][1]:.1f}"
    for px,py in simp[1:]:
        d += f" L{px:.1f},{py:.1f}"
    return d

svg = f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {SVG_W} {SVG_H}">\n'
svg += '  <g fill="none" stroke="#3A3228" stroke-linecap="round" stroke-linejoin="round">\n'

# Outer contour (thicker)
for chain in contour_chains:
    d = chain_to_svg_path(chain, is_pixel=True, epsilon=1.5)
    if d:
        svg += f'    <path d="{d}" stroke-width="1.5"/>\n'

# Detail lines (thinner, slightly transparent)
for chain in detail_chains:
    d = chain_to_svg_path(chain, is_pixel=False, epsilon=1.0)
    if d:
        sw = 0.8 if len(chain) > 30 else 0.6
        op = 0.4 if len(chain) < 20 else 0.55
        svg += f'    <path d="{d}" stroke-width="{sw}" opacity="{op}"/>\n'

svg += '  </g>\n</svg>'

with open('model/body_outline.svg', 'w') as f:
    f.write(svg)
print(f"\nSaved: model/body_outline.svg ({SVG_W}x{SVG_H}), {len(contour_chains)} contour + {len(detail_chains)} detail paths")

# ============================================================
# Project acupoint 3D coords to 2D SVG coords
# ============================================================
import json

with open('data/unity_points.json') as f:
    udata = json.load(f)

scale_factor = udata['scale']  # 95.3
y_offset = udata['y_offset']    # -11.2
pts3d = udata['points']

# The 3D viewer applies: obj.scale.set(95.3, 95.3, 95.3); obj.position.y = -11.2
# Unity points have [side, x, y, z] where side=-1 means left side
# In the 3D viewer, points are placed at: x_world = x/95.3 (negated for right-hand), y_world = y/95.3 + y_offset/95.3, z_world = z/95.3
# But body.obj vertices are already in the right-hand system at scale ~0.47

# Let's figure out the mapping. Body.obj X range: -0.467 to 0.467
# Unity points X range: check
lu_pts = {k:v for k,v in pts3d.items() if k.startswith('LU')}
sample = pts3d['LU1']
print(f"\nSample LU1 raw: {sample}")
# Format: [side, x, y, z]
# side: -1=left, 1=right
# The 3D viewer code: mesh.userData = {x: pt.x, y: pt.y, z: pt.z}
# And in the viewer, point position = new Vector3(-x, y + y_offset, z) / scale (wait no...)
# Looking at the 3D viewer code from memory:
#   pos.set(pt[1], pt[2], pt[3])  -- uses raw x,y,z from unity_points
#   Then the body mesh is scaled by 95.3
# Actually the body mesh in body.obj is at unit scale (~0.5 range)
# And the points in unity_points are at Unity scale (range ~40)
# So to project points onto the same 2D as body.obj, we need to divide by scale_factor

# body.obj coords: x ∈ [-0.47, 0.47], y ∈ [-0.86, 0.88]
# unity coords / 95.3: x ∈ ? y ∈ ?
sx = sample[1] / scale_factor
sy = sample[2] / scale_factor
print(f"LU1 normalized: x={sx:.4f}, y={sy:.4f}")
# But body.obj already has X negated (right-hand conversion)
# Unity points: side=-1 means body's left side
# In the export, X was negated. So for a left-side point (side=-1),
# the original Unity X is positive, and after negation for right-hand system, X is negative.
# Wait, looking at export_body.py: UnityPy's export() negates X.
# And for points, the raw x in unity_points is the Unity X value.
# In the 3D viewer, points are placed at: THREE.Vector3(x, y, z) * (1/scale)
# But body vertices have X negated... so we need to negate X for points too.

# Let me check: body.obj X center is ~0.0, and for left arm points, X should be positive
# (viewer's right side = body's left side = positive X in the SVG)
# LU1 raw x = 12.72. If body's left side has positive X in body.obj...
# body.obj X goes from -0.467 to 0.467
# LU1 x / 95.3 = 0.133 → this should be in the range [0, 0.47] for left side. Hmm that seems right.
# But we negated X in body.obj export! So body's left side has NEGATIVE X in body.obj.
# LU1 is on body's left (side=-1), so in body.obj coords, x should be negative.
# So: point_x = -raw_x / scale_factor

projected = {}
for code, data in pts3d.items():
    side, rx, ry, rz = data
    # Convert to body.obj coordinate system
    bx = -rx / scale_factor  # negate X like body.obj export
    by = ry / scale_factor
    # Project to SVG 2D
    px, py = proj(bx, by)
    sx2 = px * svg_scale
    sy2 = py * svg_scale
    projected[code] = [round(sx2, 1), round(sy2, 1)]

# Output LU points for verification
print("\nProjected LU points (SVG coords):")
for k in sorted(projected.keys()):
    if k.startswith('LU'):
        print(f"  {k}: x={projected[k][0]}, y={projected[k][1]}")

# Save all projected coords
with open('data/points_2d.json', 'w') as f:
    json.dump(projected, f, indent=2)
print(f"\nSaved: data/points_2d.json ({len(projected)} points)")
