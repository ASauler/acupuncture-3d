"""
Export 38 PF_ skin meshes from Unity AssetBundle to a single OBJ file.

Key insight: UnityPy's export() already converts Unity left-hand → OBJ right-hand by:
  1. Negating X coordinates of vertices and normals
  2. Reversing face winding order (a,b,c → c,b,a)

So when adding Transform offsets, we must ALSO negate the X component
to keep everything in the same right-handed coordinate system.

The resulting OBJ is already right-handed, so Three.js should use
positive scale: obj.scale.set(95.3, 95.3, 95.3) — no X negation needed.
"""
import UnityPy

BUNDLE = 'xapk-decompiled/assets-apktool/assets/aa/Android/Android/prefab3localresource_assets_all_a2e71a73ebe8870963c34e1f9c670b04.bundle'
OUTPUT = 'model/body.obj'

env = UnityPy.load(BUNDLE)

# Step 1: Collect Transform position offsets for PF_ GameObjects
go_transforms = {}
for obj in env.objects:
    if obj.type.name == 'Transform':
        t = obj.read()
        go = t.m_GameObject.read()
        if go.m_Name.startswith('PF_'):
            pos = t.m_LocalPosition
            go_transforms[go.m_Name] = (pos.x, pos.y, pos.z)

# Step 2: Export each PF_ mesh, apply transform offset, merge
all_lines = ['# Acupuncture Master - Body Model\n']
all_lines.append('# Exported from Unity AssetBundle with correct coordinate conversion\n\n')
vertex_offset = 0
uv_offset = 0
normal_offset = 0
total_verts = 0
part_count = 0

# Skip eyes and pants (not skin)
SKIP = {'PF_Eyes', 'PF_Eyes_L', 'PF_Eyes_R', 'PF_Nan_KuZi', 'PF_JLSX_ZheDang',
        'PF_ShengZhiBu_L', 'PF_ShengZhiBu_R', 'PF_GaoWanBu_L', 'PF_GaoWanBu_R'}

for obj in env.objects:
    if obj.type.name == 'Mesh':
        d = obj.read()
        if not d.m_Name.startswith('PF_'):
            continue
        if d.m_Name in SKIP:
            continue

        export_text = d.export()
        if not export_text:
            continue

        tf = go_transforms.get(d.m_Name, (0, 0, 0))
        # CRITICAL: negate tx because export() already negated vertex X
        tx_negated = -tf[0]
        ty = tf[1]
        tz = tf[2]

        v_count = 0
        vt_count = 0
        vn_count = 0

        all_lines.append(f'# {d.m_Name} (offset: {tf[0]:.6f}, {tf[1]:.6f}, {tf[2]:.6f})\n')

        for line in export_text.split('\n'):
            if line.startswith('v '):
                parts = line.split()
                x = float(parts[1]) + tx_negated
                y = float(parts[2]) + ty
                z = float(parts[3]) + tz
                all_lines.append(f'v {x} {y} {z}\n')
                v_count += 1
            elif line.startswith('vt '):
                all_lines.append(line + '\n')
                vt_count += 1
            elif line.startswith('vn '):
                all_lines.append(line + '\n')
                vn_count += 1
            elif line.startswith('f '):
                parts = line.split()
                new_parts = ['f']
                for p in parts[1:]:
                    indices = p.split('/')
                    new_indices = []
                    for i, idx in enumerate(indices):
                        if idx:
                            val = int(idx)
                            if i == 0:
                                val += vertex_offset
                            elif i == 1:
                                val += uv_offset
                            elif i == 2:
                                val += normal_offset
                            new_indices.append(str(val))
                        else:
                            new_indices.append('')
                    new_parts.append('/'.join(new_indices))
                all_lines.append(' '.join(new_parts) + '\n')

        vertex_offset += v_count
        uv_offset += vt_count
        normal_offset += vn_count
        total_verts += v_count
        part_count += 1
        print(f'  {d.m_Name}: {v_count} verts, offset ({tf[0]:.4f}, {tf[1]:.4f}, {tf[2]:.4f})')

with open(OUTPUT, 'w') as f:
    f.writelines(all_lines)

print(f'\nExported {part_count} parts, {total_verts} vertices total to {OUTPUT}')
