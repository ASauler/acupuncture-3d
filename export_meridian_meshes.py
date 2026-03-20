"""
Export meridian tube meshes from 针灸大师 app as individual OBJ files.
These are the actual visual tubes used in the app for meridian lines.
Applies Transform offsets and converts to right-handed coordinates (same as body.obj).
"""
import UnityPy
import os

BUNDLE = 'xapk-decompiled/assets-apktool/assets/aa/Android/Android/internationaljlsx_assets_all_331b38c657f2d8ce1f15f58f6d82c201.bundle'
env = UnityPy.load(BUNDLE)

OUTPUT_DIR = 'model/meridians'
os.makedirs(OUTPUT_DIR, exist_ok=True)

# Build transform map
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

go_to_transform = {}
for tpid, tdata in transforms.items():
    go_to_transform[tdata['go_pid']] = tpid

# Find line GO references
line_data = None
for obj in env.objects:
    if obj.type.name == 'MonoBehaviour':
        try:
            tt = obj.read_typetree()
            if tt and 'acuLineList' in tt:
                line_data = tt
                break
        except:
            pass

acu_lines = line_data['acuLineList']

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

for i in range(min(14, len(acu_lines))):
    go_pid = acu_lines[i].get('m_PathID', 0)
    name = go_names.get(go_pid, '?')
    m_key = MERIDIAN_KEYS[i]

    mesh_pid = go_meshes.get(go_pid)
    if not mesh_pid:
        print(f'  [{i}] {m_key}: no mesh')
        continue

    # Get transform offset
    t_pid = go_to_transform.get(go_pid)
    if t_pid:
        world_pos = get_world_pos(t_pid)
        # Negate X because export() already negated vertex X
        tx = -world_pos[0]
        ty = world_pos[1]
        tz = world_pos[2]
    else:
        tx, ty, tz = 0, 0, 0

    for obj in env.objects:
        if obj.type.name == 'Mesh' and obj.path_id == mesh_pid:
            d = obj.read()
            exp = d.export()
            if not exp:
                break

            # Apply transform offset to vertices
            lines_out = []
            v_count = 0
            for line in exp.split('\n'):
                if line.startswith('v '):
                    parts = line.split()
                    x = float(parts[1]) + tx
                    y = float(parts[2]) + ty
                    z = float(parts[3]) + tz
                    lines_out.append(f'v {x} {y} {z}\n')
                    v_count += 1
                elif line.startswith('vn ') or line.startswith('f '):
                    lines_out.append(line + '\n')

            out_path = os.path.join(OUTPUT_DIR, f'{m_key}.obj')
            with open(out_path, 'w') as f:
                f.write(f'# Meridian {m_key} tube mesh\n')
                f.writelines(lines_out)

            print(f'  [{i}] {m_key}: {v_count} verts -> {out_path}')
            break

print(f'\nExported to {OUTPUT_DIR}/')
