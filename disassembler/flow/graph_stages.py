"""Whole-pipeline stage report from the stage ledgers (``lib/stagelog``).

``make build`` leaves one ledger per binary plus one for the project under
``.cache/<project>/stages/``.  This module merges them into one table of stages
-- at three levels (0 project, 1 binary, 2 verify) -- and answers the question
the hand-drawn diagrams could not: *which steps rewrite which other steps'
output?*

* :func:`load` / :func:`aggregate` -- ledgers -> merged stage rows
* :func:`findings` -- counts, undeclared rewrites, multi-writer artifacts
* :func:`render_markdown` -- ``PIPELINE.md``
* :func:`headline` -- the lines ``make build`` prints
"""

import os
import re

from flow.base import BUILD_OUT
from lib import stagelog
from lib.cachedirs import stages_dir

LEVEL_TITLES = {0: 'project (main/build.py)',
                1: 'binary (main/runner.py)',
                2: 'verify (lib/compare/verify.py)'}

_ITER = re.compile(r'\.iter\d+$')


def norm(name):
    """Fold the per-iteration stages (``phase.x.iter1``/``iter2``) into one."""
    return _ITER.sub('.iter+', name) if name else name


def load(project):
    """``{scope: [stage, ...]}`` for every ledger of *project*."""
    out = {}
    folder = stages_dir(project)
    if not os.path.isdir(folder):
        return out
    for filename in sorted(os.listdir(folder)):
        if filename.endswith('.jsonl'):
            scope, stages = stagelog.load(os.path.join(folder, filename))
            out[scope] = stages
    return out


def aggregate(ledgers):
    """Merge ledgers into ``{name: row}``; rows are ordered by (level, position).

    A row sums the artifact churn, rewrites and time of every binary that ran
    the stage; ``position`` is its mean index within its own ledger.
    """
    rows = {}
    for scope, stages in ledgers.items():
        for st in stages:
            name = norm(st['name'])
            row = rows.setdefault(name, {
                'name': name, 'level': st['level'], 'kind': st['kind'],
                'repairs': norm(st['repairs']), 'why': st['why'],
                'scopes': set(), 'runs': 0, 'ms': 0.0, 'pos': 0, 'io': {},
                'rewrites': {}, 'undeclared_scopes': set(), 'metrics': {},
            })
            row['scopes'].add(scope)
            row['runs'] += 1
            row['ms'] += st['ms']
            row['pos'] += st['i']
            for artifact, io in st['io'].items():
                tot = row['io'].setdefault(
                    artifact, {'added': 0, 'removed': 0, 'changed': 0})
                for key in tot:
                    tot[key] += io[key]
            for rw in st['rewrites']:
                cell = (rw['artifact'], norm(rw['step']))
                row['rewrites'][cell] = row['rewrites'].get(cell, 0) + rw['keys']
            if st['undeclared']:
                row['undeclared_scopes'].add(scope)
            for key, value in st['metrics'].items():
                if isinstance(value, (int, float)):
                    row['metrics'][key] = row['metrics'].get(key, 0) + value
    for row in rows.values():
        row['pos'] /= row['runs']
    return dict(sorted(rows.items(), key=lambda kv: (kv[1]['level'], kv[1]['pos'])))


def by_level(rows):
    levels = {}
    for row in rows.values():
        levels.setdefault(row['level'], []).append(row)
    return dict(sorted(levels.items()))


def findings(rows):
    """Structural findings over aggregated *rows*."""
    kinds = {k: 0 for k in stagelog.KINDS}
    writers = {}
    matrix = {}
    for row in rows.values():
        kinds[row['kind']] += 1
        for artifact, io in row['io'].items():
            if io['added'] or io['removed'] or io['changed']:
                writers.setdefault(artifact, []).append(row['name'])
        for (artifact, creator), keys in row['rewrites'].items():
            matrix[(creator, row['name'])] = matrix.get(
                (creator, row['name']), 0) + keys
    # the fixed-point loop re-runs every phase by design; not a band-aid
    own = [r for r in rows.values() if not r['name'].endswith('.iter+')]
    declared = sum(r['kind'] in stagelog.DECLARED for r in own)
    return {
        'total': len(rows),
        'kinds': kinds,
        'per_level': {lvl: len(r) for lvl, r in by_level(rows).items()},
        'declared_ratio': declared / len(own) if own else 0.0,
        'undeclared': sorted(r['name'] for r in rows.values()
                             if r['undeclared_scopes']),
        'multi_writer': {a: w for a, w in sorted(writers.items()) if len(w) > 1},
        'matrix': matrix,
    }


def headline(found):
    """The summary lines ``make build`` prints."""
    kinds = found['kinds']
    per = ' | '.join(f'L{lvl} {n}' for lvl, n in found['per_level'].items())
    lines = [
        f'pipeline: {per} -- {found["total"]} stages: '
        + ', '.join(f'{n} {k}' for k, n in kinds.items() if n),
        f'  declared repair/recompute/cleanup {found["declared_ratio"]:.0%} | '
        f'undeclared rewrites {len(found["undeclared"])}'
        + (f' ({", ".join(found["undeclared"])})' if found['undeclared'] else ''),
    ]
    if found['multi_writer']:
        lines.append('  artifacts with >1 writer: ' + ' '.join(
            f'{a}({len(w)})' for a, w in found['multi_writer'].items()))
    return lines


def _churn(row):
    parts = []
    for artifact, io in row['io'].items():
        if io['added'] or io['removed'] or io['changed']:
            parts.append(f'{artifact} +{io["added"]}/-{io["removed"]}/~{io["changed"]}')
    return '<br>'.join(parts)


def _rewrote(row):
    return '<br>'.join(f'{a} <- {creator}: {n}'
                       for (a, creator), n in sorted(row['rewrites'].items()))


def render_markdown(project, rows):
    found = findings(rows)
    out = [f'# {project} pipeline ledger', '',
           'Generated by `make flow ARGS="--stages"` from '
           '`.cache/<project>/stages/`; do not edit.', '', '```']
    out += headline(found)
    out += ['```', '']
    out += ['Kinds: **produce** creates, **repair** rewrites an earlier step, '
            '**recompute** derives again, **cleanup** undoes a side effect, '
            '**measure** reads only. Churn is `+added/-removed/~changed` over the '
            'tracked artifacts, summed over the binaries that ran the stage.', '']
    for level, level_rows in by_level(rows).items():
        out += [f'## L{level} {LEVEL_TITLES.get(level, "")}', '',
                '| # | stage | kind | repairs | churn | rewrote | ms/bin | why |',
                '|---|-------|------|---------|-------|---------|--------|-----|']
        for index, row in enumerate(level_rows):
            flag = ' **UNDECLARED**' if row['undeclared_scopes'] else ''
            out.append(
                f'| {index} | `{row["name"]}`{flag} | {row["kind"]} | '
                f'{("`" + row["repairs"] + "`") if row["repairs"] else ""} | '
                f'{_churn(row)} | {_rewrote(row)} | '
                f'{row["ms"] / max(len(row["scopes"]), 1):.0f} | {row["why"] or ""} |')
        out.append('')
    out += ['## Who rewrites whom', '',
            '| creating step | rewritten by | keys |', '|---|---|---|']
    for (creator, rewriter), keys in sorted(
            found['matrix'].items(), key=lambda kv: -kv[1]):
        out.append(f'| `{creator}` | `{rewriter}` | {keys} |')
    out += ['', '## Artifacts with more than one writer', '']
    for artifact, writers in found['multi_writer'].items():
        out.append(f'- **{artifact}** ({len(writers)}): '
                   + ' -> '.join(f'`{w}`' for w in writers))
    metric_rows = [r for r in rows.values() if r['metrics']]
    if metric_rows:
        out += ['', '## Metrics', '', '| stage | metrics (summed over binaries) |',
                '|---|---|']
        for row in metric_rows:
            out.append(f'| `{row["name"]}` | '
                       + ', '.join(f'{k}={v:g}' for k, v in row['metrics'].items())
                       + ' |')
    return '\n'.join(out) + '\n'


def write(project):
    """Write ``PIPELINE.md`` for *project*; return ``(path, findings)`` or None."""
    ledgers = load(project)
    if not ledgers:
        return None
    rows = aggregate(ledgers)
    out_dir = os.path.join(BUILD_OUT, 'stages')
    os.makedirs(out_dir, exist_ok=True)
    path = os.path.join(out_dir, f'{project}_PIPELINE.md')
    with open(path, 'w') as f:
        f.write(render_markdown(project, rows))
    return path, findings(rows)
