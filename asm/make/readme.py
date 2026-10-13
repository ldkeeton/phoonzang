"""``make readme`` — render README.md and the coverage heatmap from readme/."""

import os
import re

from .common import PROJECT

README_DIR = os.path.join(PROJECT, 'readme')
CELL, GAP, COLS, LABEL_W, ROW_H = 6, 2, 100, 70, 14
STYLE = (
    ':root{--c:#2da44e;--n:#d0d7de;--t:#57606a}'
    '@media(prefers-color-scheme:dark){:root{--c:#3fb950;--n:#30363d;--t:#8b949e}}'
    'text{font:11px sans-serif;fill:var(--t)}'
    '.c{fill:var(--c)}.n{fill:var(--n)}'
)


def _scan(src):
    """Return {binary: [(asm_stem, has_c)]} for a generated asm_<PROJECT> tree."""
    groups = {}
    for name in sorted(os.listdir(src)):
        path = os.path.join(src, name)
        if os.path.isdir(path):
            groups.setdefault(name, [])
            files = os.listdir(path)
            stems = {f[:-2] for f in files if f.endswith('.c')}
            groups[name] += [(f[:-4], f[:-4] in stems)
                             for f in sorted(files) if f.endswith('.asm')]
    for name in sorted(os.listdir(src)):
        if name.endswith('.asm') and name[:-4] in groups:
            groups[name[:-4]].append((name[:-4], False))
    return {k: v for k, v in groups.items() if v}


def _svg(groups):
    step = CELL + GAP
    y, out = 4, []
    for name, cells in groups.items():
        out.append(f'<text x="0" y="{y + CELL + 1}">{name}</text>')
        for i, (stem, has_c) in enumerate(cells):
            x = LABEL_W + (i % COLS) * step
            cy = y + (i // COLS) * step
            out.append(f'<rect class="{"c" if has_c else "n"}" x="{x}" y="{cy}" '
                       f'width="{CELL}" height="{CELL}"><title>{stem}</title></rect>')
        y += ((len(cells) - 1) // COLS + 1) * step + ROW_H - step
    w = LABEL_W + COLS * step
    return (f'<svg xmlns="http://www.w3.org/2000/svg" width="{w}" height="{y}" '
            f'viewBox="0 0 {w} {y}"><style>{STYLE}</style>' + ''.join(out) + '</svg>\n')


def _make_table():
    from .cli import HELP
    rows = ['| command | what |', '|---|---|']
    for m in re.finditer(r'^  make (\S+)((?: [A-Z\[\]\.\-\w]+)*?)\s{2,}(.+)$', HELP, re.M):
        cmd = ('make ' + m.group(1) + m.group(2)).strip()
        rows.append(f'| `{cmd}` | {m.group(3).strip()} |')
    return '\n'.join(rows)


def cmd_readme():
    groups = _scan(os.path.join(PROJECT, 'asm_DSAVANT'))
    asm_total = sum(len(v) for v in groups.values())
    c_total = sum(h for v in groups.values() for _, h in v)
    table = ['| binary | ASM | C |', '|---|--:|--:|']
    table += [f'| {k} | {len(v)} | {sum(h for _, h in v)} |' for k, v in groups.items()]
    subs = {
        'asm_total': asm_total,
        'c_total': c_total,
        'c_pct': f'{100 * c_total / asm_total:.1f}' if asm_total else '0',
        'coverage_table': '\n'.join(table),
        'make_table': _make_table(),
    }
    with open(os.path.join(README_DIR, 'heatmap.svg'), 'w') as f:
        f.write(_svg(groups))
    with open(os.path.join(README_DIR, 'README.md.tmpl')) as f:
        text = f.read()
    text = re.sub(r'\{\{(\w+)\}\}', lambda m: str(subs[m.group(1)]), text)
    with open(os.path.join(PROJECT, 'README.md'), 'w') as f:
        f.write(text)
    print(f'README.md: {c_total}/{asm_total} asm files have C')
