"""Pipeline architecture diagrams, generated from the stage ledgers.

One Mermaid flowchart per level (0 project, 1 binary, 2 verify).  Nothing here
is typed by hand: the stages, their order, their kinds and what they rewrote
all come from ``.cache/<project>/stages/`` (see ``lib/stagelog``), so a new
stage appears on the next build and a band-aid shows up as a red dashed edge
back to the step it repairs.

    produce    solid box
    repair     red hexagon, red dashed edge back to the repaired step
    recompute  orange stadium, orange dashed edge back to the step it repeats
    cleanup    grey subroutine box, grey dashed edge
    measure    grey subroutine box
"""

import os

from flow import graph_stages
from flow.base import MermaidBuilder, get_projects

_SHAPE = {'produce': 'box', 'repair': 'hex', 'recompute': 'stadium',
          'cleanup': 'subroutine', 'measure': 'subroutine'}
_EDGE = {'repair': 'stroke:#d62728,stroke-width:2px',
         'recompute': 'stroke:#ff7f0e,stroke-width:2px',
         'cleanup': 'stroke:#7f7f7f,stroke-width:2px'}
_CLASS = {
    'produce': 'fill:#eef3fb,stroke:#4c78a8,color:#111',
    'repair': 'fill:#fde8e8,stroke:#d62728,color:#111',
    'recompute': 'fill:#fff1e0,stroke:#ff7f0e,color:#111',
    'cleanup': 'fill:#eeeeee,stroke:#7f7f7f,color:#111',
    'measure': 'fill:#eeeeee,stroke:#7f7f7f,color:#111',
}


def _label(row):
    lines = [row['name'].split('.', 1)[-1], row['kind']]
    changes = sum(io['added'] + io['removed'] + io['changed']
                  for io in row['io'].values())
    if changes:
        lines.append(f'{changes} keys')
    runs = max(len(row['scopes']), 1)
    if row['ms'] / runs >= 1:
        lines.append(f'{row["ms"] / runs:.0f} ms')
    if row['undeclared_scopes']:
        lines.append('UNDECLARED REWRITE')
    return '\\n'.join(lines)


def level_diagram(level, rows, title):
    m = MermaidBuilder(title=title)
    for kind, style in _CLASS.items():
        m.class_def(kind, style)
    m.class_def('undeclared', 'fill:#fde8e8,stroke:#d62728,stroke-width:4px,color:#111')

    groups = {}
    for row in rows:
        groups.setdefault(row['name'].split('.', 1)[0], []).append(row)
    for group, members in groups.items():
        m.subgraph_start(f'g_{group}', group)
        for row in members:
            m.node(row['name'], _label(row), _SHAPE[row['kind']])
        m.subgraph_end()
    for row in rows:
        m.assign_class(row['name'], 'undeclared' if row['undeclared_scopes']
                       else row['kind'])

    names = {row['name'] for row in rows}
    for left, right in zip(rows, rows[1:]):
        m.edge(left['name'], right['name'], '', 'solid')
    for row in rows:
        target = row['repairs']
        if row['kind'] in _EDGE and target in names and target != row['name']:
            m.edge(row['name'], target, '', 'dotted')
            m.link_style(m.n_edges - 1, _EDGE[row['kind']])
    return m.render()


def generate_architecture_diagram(out_dir, project=None):
    """Write ``pipeline_L<level>.mmd`` for *project* (default: every project
    that has ledgers); return the paths."""
    projects = [project] if project else [
        p for p in get_projects() if graph_stages.load(p)]
    paths = []
    os.makedirs(out_dir, exist_ok=True)
    for name in projects:
        rows = graph_stages.aggregate(graph_stages.load(name))
        for level, level_rows in graph_stages.by_level(rows).items():
            path = os.path.join(out_dir, f'{name}_pipeline_L{level}.mmd')
            title = f'{name} pipeline, level {level}: {graph_stages.LEVEL_TITLES[level]}'
            with open(path, 'w') as f:
                f.write(level_diagram(level, level_rows, title))
            print(f'  wrote {path}')
            paths.append(path)
    if not paths:
        print('  (no stage ledgers found -- run `make build <project>` first)')
    return paths
