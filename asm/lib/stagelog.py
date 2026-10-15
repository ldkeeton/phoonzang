"""Pipeline stage ledger: what each step created, and whom it rewrote.

The disassembler front half is a real pipeline (``lib/pipeline``); everything
after it is imperative, and that is where one step quietly repairs another's
output.  This ledger makes that visible.  It is behaviour-neutral: steps are
recorded by one-line checkpoints placed *after* a section has run.

Three zoom levels share one record format::

    level 0  project   main/build.py       one record set per ``build_project``
    level 1  binary    main/runner.py      one per binary
    level 2  verify    lib/compare/verify  inside level 1 (same binary ledger)

A checkpoint names the step, its *kind*, and the collections (*artifacts*) it
owns or changes::

    stagelog.step('verify.split_foreign', 2, 'repair', repairs='verify.split_select',
                  why='unnamed tail glued into earlier routine',
                  track={'split_ranges': ranges_by_start(split_ranges)})

Each tracked artifact is diffed against its previous snapshot.  A key is owned
by the step that first added it; a later step that removes or changes a key
owned by *another* step has **rewritten** it.  A ``produce`` step that rewrites
is an *undeclared* repair -- the case the lock test (``flow/pipeline.lock``)
exists to stop.

Kinds:

``produce``    creates its artifacts
``repair``     rewrites/undoes an earlier step's output (needs ``repairs=``/``why=``)
``recompute``  derives again what an earlier step already derived
``cleanup``    undoes a side effect
``measure``    reads only; ``metrics`` carries the numbers
"""

import json
import os
import time

KINDS = ('produce', 'repair', 'recompute', 'cleanup', 'measure')
#: Kinds that are *declared* second-guessing of earlier work.
DECLARED = ('repair', 'recompute', 'cleanup')


def ranges_by_start(ranges):
    """``{start: (end, name)}`` for ``[(start, end, name), ...]`` ranges."""
    return {start: (end, name) for start, end, name in ranges}


def _snapshot(collection):
    if isinstance(collection, dict):
        return dict(collection)
    return {item: True for item in collection}


class Ledger:
    def __init__(self, scope):
        self.scope = scope
        self.stages = []
        self._snap = {}      # artifact -> {key: value}
        self._owner = {}     # (artifact, key) -> creating step name
        self._clock = {}     # level -> perf_counter at the last checkpoint
        self._born = time.perf_counter()

    def step(self, name, level, kind='produce', *, repairs=None, why=None,
             track=None, metrics=None, reads=(), writes=(), ms=None):
        if kind not in KINDS:
            raise ValueError(f'unknown stage kind {kind!r}')
        now = time.perf_counter()
        if ms is None:
            ms = round((now - self._clock.get(level, self._born)) * 1000, 1)
        self._clock[level] = now

        io = {}
        rewrites = {}
        for artifact, collection in (track or {}).items():
            before = self._snap.get(artifact, {})
            after = _snapshot(collection)
            added = [k for k in after if k not in before]
            removed = [k for k in before if k not in after]
            changed = [k for k in after if k in before and after[k] != before[k]]
            for key in removed + changed:
                creator = self._owner.get((artifact, key))
                if creator is not None and creator != name:
                    rewrites[(artifact, creator)] = (
                        rewrites.get((artifact, creator), 0) + 1)
            for key in added + changed:
                self._owner[(artifact, key)] = name
            for key in removed:
                self._owner.pop((artifact, key), None)
            self._snap[artifact] = after
            io[artifact] = {'added': len(added), 'removed': len(removed),
                            'changed': len(changed), 'size': len(after)}

        rewritten = [{'artifact': a, 'step': c, 'keys': n}
                     for (a, c), n in sorted(rewrites.items())]
        self.stages.append({
            'i': len(self.stages), 'name': name, 'level': level, 'kind': kind,
            'repairs': repairs, 'why': why, 'ms': ms,
            'reads': list(reads), 'writes': list(writes), 'io': io,
            'rewrites': rewritten, 'metrics': metrics or {},
            # a step that rewrote others' keys without saying so
            'undeclared': bool(rewritten) and kind not in DECLARED,
        })
        return self.stages[-1]

    def dump(self, path):
        os.makedirs(os.path.dirname(path), exist_ok=True)
        with open(path, 'w') as f:
            f.write(json.dumps({'scope': self.scope}) + '\n')
            for stage in self.stages:
                f.write(json.dumps(stage, default=str) + '\n')


_stack = []


def begin(scope):
    """Open a ledger; steps go to the innermost open one."""
    ledger = Ledger(scope)
    _stack.append(ledger)
    return ledger


def end(ledger, path=None):
    """Close *ledger* (and anything left open above it); write it to *path*."""
    while _stack and _stack[-1] is not ledger:
        _stack.pop()
    if _stack:
        _stack.pop()
    if path:
        ledger.dump(path)
    return ledger


def current():
    if not _stack:
        _stack.append(Ledger('anonymous'))
    return _stack[-1]


def step(name, level, kind='produce', **kwargs):
    return current().step(name, level, kind, **kwargs)


def ledger_path(project, binary):
    from lib.cachedirs import stages_dir
    return os.path.join(stages_dir(project), f'{project}_{binary}.jsonl')


def load(path):
    """``(scope, [stage, ...])`` from a file written by :meth:`Ledger.dump`."""
    with open(path) as f:
        lines = [json.loads(line) for line in f if line.strip()]
    return lines[0]['scope'], lines[1:]


def summarize(stages):
    """Counts and the structural findings the flow report and lock test use."""
    by_kind = {k: 0 for k in KINDS}
    by_level = {}
    writers = {}
    matrix = {}
    for st in stages:
        by_kind[st['kind']] += 1
        by_level[st['level']] = by_level.get(st['level'], 0) + 1
        for artifact, io in st['io'].items():
            if io['added'] or io['removed'] or io['changed']:
                writers.setdefault(artifact, []).append(st['name'])
        for rw in st['rewrites']:
            cell = (rw['step'], st['name'])
            matrix[cell] = matrix.get(cell, 0) + rw['keys']
    declared = sum(by_kind[k] for k in DECLARED)
    return {
        'total': len(stages),
        'by_kind': by_kind,
        'by_level': by_level,
        'declared_ratio': declared / len(stages) if stages else 0.0,
        'undeclared': [s['name'] for s in stages if s['undeclared']],
        'multi_writer': {a: w for a, w in writers.items() if len(w) > 1},
        'rewrites': matrix,
    }
