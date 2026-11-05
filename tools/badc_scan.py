#!/usr/bin/env python3
"""Flag hand-written C that matches the original bytes only through workarounds.

Run from the repo root:  python3 tools/badc_scan.py [src_DSAVANT]
See badc.md for what each column means and how to fix each pattern.
"""
import glob
import os
import re
import sys

root = sys.argv[1] if len(sys.argv) > 1 else 'src_DSAVANT'
rows = []
for path in sorted(glob.glob(os.path.join(root, '**/*.c'), recursive=True)):
    rel = os.path.relpath(path, root)
    if rel.startswith('build_out') or '/aztec/' in rel:
        continue
    text = open(path, errors='replace').read()
    # Blank out comments but keep line numbers.
    code = re.sub(r'/\*.*?\*/', lambda m: '\n' * m.group().count('\n'), text, flags=re.S)
    lines = code.split('\n')
    labels = {}
    for i, line in enumerate(lines):
        m = re.match(r'^\s*(\w+):(?!:)', line)
        if m and m.group(1) != 'default':
            labels[m.group(1)] = i
    back = fwd = 0
    for i, line in enumerate(lines):
        for target in re.findall(r'\bgoto\s+(\w+)', line):
            if target in labels and labels[target] < i:
                back += 1
            else:
                fwd += 1
    frame = len(re.findall(r'struct\s+\w*(?:locals|frame)\w*', code))
    frame += 1 if re.search(r'\b(?:frame|local)\.\w', code) else 0
    vol = len(re.findall(r'\bvolatile\b', code))
    alias = len(re.findall(r'^#define\s+\w+\s+\w+[.\[]', code, re.M))
    union = len(re.findall(r'\bunion\b', code))
    filler = len(re.findall(r'\b(?:reserved|gap|filler|dummy|spare|unused_frame)\w*\s*[\[;]', code))
    genname = len(re.findall(r'\b(?:loc|api_idx|dseg|bss|f)_[0-9a-fA-F]{4}\w*', code))
    score = 3 * back + fwd + 10 * frame + 10 * vol + 3 * alias + 5 * union + 3 * filler + 2 * genname
    if score:
        rows.append((score, rel, back, fwd, frame, vol, alias, union, filler, genname))

rows.sort(key=lambda r: (-r[0], r[1]))
print(f"{'score':>5} {'back':>4} {'fwd':>4} {'frm':>3} {'vol':>3} {'def':>3} {'uni':>3} {'fill':>4} {'gen':>3}  file")
for r in rows:
    print(f'{r[0]:5} {r[2]:4} {r[3]:4} {r[4]:3} {r[5]:3} {r[6]:3} {r[7]:3} {r[8]:4} {r[9]:3}  {r[1]}')
print(f'{len(rows)} files flagged')
