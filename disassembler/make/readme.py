"""``make readme`` — render README.md and the coverage heatmap from readme/."""

import os
import re

from lib.cachedirs import src_dir

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
    """Return {binary: [(asm_stem, state)]} for a generated src_<PROJECT> tree.

    ``state`` is ``'c'`` (has a .c) or ``'todo'``.
    """
    groups = {}
    for name in sorted(os.listdir(src)):
        path = os.path.join(src, name)
        if os.path.isdir(path):
            groups.setdefault(name, [])
            files = os.listdir(path)
            stems = {f[:-2] for f in files if f.endswith('.c')}
            groups[name] += [(f[:-4], 'c' if f[:-4] in stems else 'todo')
                             for f in sorted(files) if f.endswith('.asm')]
    for name in sorted(os.listdir(src)):
        if name.endswith('.asm') and name[:-4] in groups:
            groups[name[:-4]].append((name[:-4], 'todo'))
    return {k: v for k, v in groups.items() if v}


def _svg(groups):
    step = CELL + GAP
    y, out = 4, []
    for name, cells in groups.items():
        out.append(f'<text x="0" y="{y + CELL + 1}">{name}</text>')
        for i, (stem, state) in enumerate(cells):
            x = LABEL_W + (i % COLS) * step
            cy = y + (i // COLS) * step
            cls = 'c' if state == 'c' else 'n'
            out.append(f'<rect class="{cls}" x="{x}" y="{cy}" '
                       f'width="{CELL}" height="{CELL}"><title>{stem}'
                       f'</title></rect>')
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
    groups = _scan(src_dir('DSAVANT', PROJECT))
    asm_total = sum(len(v) for v in groups.values())
    c_total = sum(s == 'c' for v in groups.values() for _, s in v)
    table = ['| binary | ASM | C |', '|---|--:|--:|']
    table += [f'| {k} | {len(v)} | {sum(s == "c" for _, s in v)} |'
              for k, v in groups.items()]
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
