"""Persistent cache of mux results.

Compiling through DOSBox is slow, so resolved routines are cached under
``asm_<project>/aztec_mux.json``.  The cache records, per ``aztec_*`` label,
the winning source, compiler, and the exact machine code (with relocation
sites marked).  A build reads the cache directly; ``--aztec-refresh`` (or a
missing entry) triggers recompilation.
"""

import json
import os

from .mux import MuxEngine, normalize
from .objread import fixup_width

CACHE_VERSION = 1


def cache_path(project, binary):
    asm_dir = os.path.dirname(os.path.dirname(os.path.dirname(
        os.path.abspath(__file__))))
    root = os.path.join(os.path.dirname(asm_dir), f'asm_{project}')
    return os.path.join(root, f'{binary}_aztec_mux.json')


def _entry_from_match(match):
    func = match.func
    return {
        'source_version': match.version,
        'file': match.filename,
        'compiler': match.compiler,
        'includes': match.includes,
        'code': func.code.hex(),
        'fixups': [{'offset': fx.offset, 'kind': fx.kind}
                   for fx in func.fixups],
    }


def _load(path):
    try:
        with open(path) as f:
            blob = json.load(f)
    except (OSError, ValueError):
        return None
    if blob.get('version') != CACHE_VERSION:
        return None
    return blob.get('functions', {})


def _save(path, functions):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, 'w') as f:
        json.dump({'version': CACHE_VERSION, 'functions': functions}, f,
                  indent=1, sort_keys=True)


def to_override(entry):
    """Convert a cache entry to the ``verify`` override form."""
    code = bytes.fromhex(entry['code'])
    fixups = [(fx['offset'], fixup_width(fx['kind'])) for fx in entry['fixups']]
    return {'code': code, 'fixups': fixups,
            'source_version': entry['source_version'], 'file': entry['file'],
            'compiler': entry['compiler']}


def load_or_build(project, binary, data, aztec_labels, *, refresh=False,
                  engine=None, verbose=True):
    """Return ``{label: entry}`` for every exactly-recovered routine.

    ``aztec_labels`` is an iterable of ``(address, label_name)``.
    """
    path = cache_path(project, binary)
    functions = None if refresh else _load(path)
    if functions is None:
        engine = engine or MuxEngine()
        if verbose:
            print(f'  aztec mux: compiling candidates for {binary} '
                  f'(first run, cached afterwards)...')
        functions = {}
        for addr, label in aztec_labels:
            if not label.startswith('aztec_'):
                continue
            symbol = label[len('aztec_'):]
            matches = engine.resolve(symbol, data, addr)
            good = [m for m in matches if m.exact]
            if good:
                functions[label] = _entry_from_match(good[0])
                if verbose:
                    m = good[0]
                    print(f'    C  {label:20} <- {m.version}/{m.filename} '
                          f'via {m.compiler}')
        _save(path, functions)
        if verbose:
            print(f'  aztec mux: {len(functions)} exact routines '
                  f'({engine.compile_count} compiles)')
    overrides = {}
    for label, entry in functions.items():
        overrides[label] = to_override(entry)
    return overrides, functions
