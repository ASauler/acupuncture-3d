"""
Generate meridian paths directly from acupoint positions.
Connects acupoints in order (e.g. LU1 -> LU2 -> ... -> LU11) to form the path.
Splits into sub-paths at large jumps (e.g. BL40->BL41 jumps 93 units).
Output format: { "BL": [[seg1_pts], [seg2_pts], ...], "LU": [[pts]], ... }
Each meridian value is an array of segments (sub-paths).
"""
import json
import re
import math

with open('data/unity_points.json', 'r') as f:
    pts_data = json.load(f)

points = pts_data['points']

# Map GV/CV (Unity) -> DU/RN (JS code)
CODE_MAP = {'GV': 'DU', 'CV': 'RN'}

# Group points by meridian
meridian_points = {}
for code, pos in points.items():
    m = re.match(r'([A-Z]+)', code)
    if not m:
        continue
    meridian = m.group(1)
    meridian = CODE_MAP.get(meridian, meridian)
    num_match = re.search(r'(\d+)', code)
    if not num_match:
        continue
    num = int(num_match.group(1))
    if meridian not in meridian_points:
        meridian_points[meridian] = []
    # pos = [side, x, y, z]
    meridian_points[meridian].append((num, code, pos[1], pos[2], pos[3]))

# Split path into segments at large jumps
JUMP_THRESHOLD = 25  # units in Three.js space

meridian_paths = {}
for meridian, pts in sorted(meridian_points.items()):
    pts.sort(key=lambda p: p[0])
    all_pts = [[p[2], p[3], p[4]] for p in pts]

    # Split into segments
    segments = []
    current_seg = [all_pts[0]]
    for i in range(1, len(all_pts)):
        dx = all_pts[i][0] - all_pts[i-1][0]
        dy = all_pts[i][1] - all_pts[i-1][1]
        dz = all_pts[i][2] - all_pts[i-1][2]
        d = math.sqrt(dx*dx + dy*dy + dz*dz)
        if d > JUMP_THRESHOLD:
            # Break here
            if len(current_seg) >= 2:
                segments.append(current_seg)
            current_seg = [all_pts[i]]
        else:
            current_seg.append(all_pts[i])
    if len(current_seg) >= 2:
        segments.append(current_seg)

    meridian_paths[meridian] = segments
    seg_info = ', '.join([f'{len(s)}pts' for s in segments])
    print(f'{meridian}: {len(all_pts)} points -> {len(segments)} segments [{seg_info}]')

# Save
with open('data/meridian_paths.json', 'w') as f:
    json.dump(meridian_paths, f)

print(f'\nSaved {len(meridian_paths)} meridian paths to data/meridian_paths.json')
