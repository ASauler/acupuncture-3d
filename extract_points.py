"""
Extract acupoint 3D coordinates and meridian line paths from 针灸大师 app.
Converts from Unity left-handed to Three.js right-handed coordinates.
"""
import UnityPy
import json
import re

BUNDLE = 'xapk-decompiled/assets-apktool/assets/aa/Android/Android/internationaljlsx_assets_all_331b38c657f2d8ce1f15f58f6d82c201.bundle'
env = UnityPy.load(BUNDLE)

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
            'children_pids': [c.path_id for c in t.m_Children] if hasattr(t, 'm_Children') else [],
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

# --- ACUPOINTS ---
jlsx_pattern = re.compile(r'^JLSX_([A-Z]+\d+)$')
acupoints = {}  # code -> Unity world pos

for pid, t in transforms.items():
    match = jlsx_pattern.match(t['name'])
    if match:
        code = match.group(1)
        wpos = get_world_pos(pid)
        acupoints[code] = wpos

print(f'Extracted {len(acupoints)} acupoints')

# Determine side for each point
# In Unity, left side = negative X, right side = positive X
# The app stores left-side points for bilateral meridians
bilateral = {'LU','LI','ST','SP','HT','SI','BL','KI','PC','TE','GB','LR'}
midline = {'RN','GV','CV','DU'}

# Analyze: which meridians have which X pattern
meridian_codes = {}
for code, pos in acupoints.items():
    m = re.match(r'([A-Z]+)', code).group(1)
    if m not in meridian_codes:
        meridian_codes[m] = []
    meridian_codes[m].append((code, pos))

print('\nMeridian X analysis:')
for m, points in sorted(meridian_codes.items()):
    xs = [p[1][0] for p in points]
    avg_x = sum(xs) / len(xs)
    print(f'  {m}: {len(points)} pts, avg_X={avg_x:.4f}, X_range=[{min(xs):.4f}, {max(xs):.4f}]')

# --- MERIDIAN LINE PATHS ---
# The acuLineList contains PPtrs to GameObjects that are line path containers
# Each container has children that are the waypoints of the meridian line
print('\n=== Meridian Line Paths ===')

# Find the JLSX_ZhengJiu MonoBehaviour with acuLineList
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

if line_data:
    acu_lines = line_data['acuLineList']
    acu_lines_cu = line_data.get('acuLineCuList', [])
    print(f'acuLineList: {len(acu_lines)} entries')
    print(f'acuLineCuList: {len(acu_lines_cu)} entries')

    # Resolve each line reference
    for i, ref in enumerate(acu_lines):
        pid = ref.get('m_PathID', 0)
        # Find this GO
        for obj2 in env.objects:
            if obj2.type.name == 'GameObject' and obj2.path_id == pid:
                go = obj2.read()
                print(f'\n  Line[{i}]: {go.m_Name}')
                # Find its transform and children
                for comp_pp in go.m_Components:
                    comp = comp_pp.read()
                    if comp.__class__.__name__ == 'Transform':
                        # Get children - these are the waypoints
                        children_names = []
                        for child_pp in comp.m_Children:
                            child_t = child_pp.read()
                            child_go = child_t.m_GameObject.read()
                            child_pos = get_world_pos(child_pp.path_id)
                            children_names.append((child_go.m_Name, child_pos))
                        print(f'    Children: {len(children_names)}')
                        if children_names:
                            print(f'    First 3: {children_names[:3]}')
                            print(f'    Last: {children_names[-1]}')
                break
