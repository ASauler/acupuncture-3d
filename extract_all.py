"""
Extract acupoint coordinates and meridian line paths from 针灸大师 app.
Output: data/unity_points.json with coordinates in Three.js space.
"""
import UnityPy
import json
import re

BUNDLE = 'xapk-decompiled/assets-apktool/assets/aa/Android/Android/internationaljlsx_assets_all_331b38c657f2d8ce1f15f58f6d82c201.bundle'
env = UnityPy.load(BUNDLE)

# --- Build transform map ---
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
            'children': [c.path_id for c in t.m_Children] if hasattr(t, 'm_Children') else [],
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

# --- SCALE/OFFSET to match body.obj in Three.js ---
# body.obj was exported with X negated (UnityPy convention)
# Three.js uses: obj.scale.set(95.3, 95.3, 95.3), obj.position.y = -11.2
# So model vertex world pos = (obj_x * 95.3, obj_y * 95.3 - 11.2, obj_z * 95.3)
# where obj_x = -unity_x, obj_y = unity_y, obj_z = unity_z
# Therefore acupoint in Three.js: (-unity_x * 95.3, unity_y * 95.3 - 11.2, unity_z * 95.3)
SCALE = 95.3
Y_OFFSET = -11.2

def unity_to_threejs(ux, uy, uz):
    return (-ux * SCALE, uy * SCALE + Y_OFFSET, uz * SCALE)

# --- Extract acupoints ---
jlsx_pattern = re.compile(r'^JLSX_([A-Z]+\d+)$')
acupoints_unity = {}

for pid, t in transforms.items():
    match = jlsx_pattern.match(t['name'])
    if match:
        code = match.group(1)
        wpos = get_world_pos(pid)
        acupoints_unity[code] = wpos

print(f'Extracted {len(acupoints_unity)} acupoints')

# Midline meridians (no mirror needed)
MIDLINE = {'CV', 'GV'}

# Build output: same POS format as the JS code expects
# [side, x, y, z] where side=0 for midline, side=-1/1 for bilateral
pos_data = {}
for code, (ux, uy, uz) in sorted(acupoints_unity.items()):
    m = re.match(r'([A-Z]+)', code).group(1)
    tx, ty, tz = unity_to_threejs(ux, uy, uz)

    if m in MIDLINE:
        # Midline: side=0, no mirror
        pos_data[code] = [0, round(tx, 2), round(ty, 2), round(tz, 2)]
    else:
        # Bilateral: original is left side (negative Unity X -> positive Three.js X)
        # side=-1 means "left side, create mirror on right"
        pos_data[code] = [-1, round(tx, 2), round(ty, 2), round(tz, 2)]

# --- Extract meridian line mesh vertices (for flow animation paths) ---
print('\n=== Extracting Meridian Line Meshes ===')

# Map GO path_id -> GO name
go_names = {}
for obj in env.objects:
    if obj.type.name == 'GameObject':
        d = obj.read()
        go_names[obj.path_id] = d.m_Name

# Map GO path_id -> MeshFilter -> Mesh
go_meshes = {}
for obj in env.objects:
    if obj.type.name == 'MeshFilter':
        d = obj.read()
        go_pid = d.m_GameObject.path_id
        mesh_ref = d.m_Mesh
        if mesh_ref and mesh_ref.path_id:
            go_meshes[go_pid] = mesh_ref.path_id

# Find the JLSX_ZhengJiu MonoBehaviour
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

# Meridian name mapping
MERIDIAN_NAMES = [
    'LU', 'LI', 'ST', 'SP', 'HT', 'SI', 'BL', 'KI', 'PC', 'TE', 'GB', 'LR',
    'GV', 'CV',
    None,  # placeholder
    'GV2', 'CV2',  # duplicates?
    'ChongMai', 'DaiMai', 'YingWeiMai', 'YangWeiMai', 'YingQiaoMai', 'YangQiaoMai'
]

meridian_paths = {}
for i, go_pid in enumerate(line_go_pids):
    name = go_names.get(go_pid, '?')
    m_key = MERIDIAN_NAMES[i] if i < len(MERIDIAN_NAMES) else f'line_{i}'

    # Find mesh for this GO
    mesh_pid = go_meshes.get(go_pid, None)
    if mesh_pid:
        for obj in env.objects:
            if obj.type.name == 'Mesh' and obj.path_id == mesh_pid:
                d = obj.read()
                exp = d.export()
                if exp:
                    verts = []
                    for line in exp.split('\n'):
                        if line.startswith('v '):
                            parts = line.split()
                            # export() already negated X, so these are in right-handed space
                            verts.append((float(parts[1]), float(parts[2]), float(parts[3])))
                    print(f'  [{i}] {name} ({m_key}): {len(verts)} mesh verts')
                break
    else:
        # Maybe the line is on child objects
        print(f'  [{i}] {name} ({m_key}): no mesh on this GO')

# --- Save point data ---
output = {
    'scale': SCALE,
    'y_offset': Y_OFFSET,
    'points': pos_data,
}
with open('data/unity_points.json', 'w') as f:
    json.dump(output, f, indent=2)

print(f'\nSaved {len(pos_data)} points to data/unity_points.json')

# Print some sample points for verification
print('\nSample points (Three.js coords):')
samples = ['CV1', 'CV17', 'GV14', 'GV20', 'LU1', 'LU5', 'ST36', 'BL1', 'KI1']
for s in samples:
    if s in pos_data:
        p = pos_data[s]
        print(f'  {s}: side={p[0]}, ({p[1]}, {p[2]}, {p[3]})')
