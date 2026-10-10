"""Persistent prebuild results for the mixed-version Aztec C mux.

Compiling through DOSBox is slow, so ``make prebuild <project>`` resolves every
``aztec_*`` routine once and stores the winners under
``asm_prebuild_<project>/``.  ``make build`` creates that directory when it is
missing and otherwise reads it directly without running DOSBox; ``make clean``
removes it, but a repeat ``make build`` never does.  Compiled candidate
modules are additionally cached by content hash under
``asm_prebuild_<project>/objs/`` so re-running prebuild (or a later debug-time
cache) is cheap.

A build that finds ``aztec_*`` labels but no prebuild data fails loudly with
:class:`PrebuildMissing` rather than silently repeating the expensive search.
"""

import json
import os

from . import objcache
from .mux import MuxEngine
from .objread import fixup_width

PREBUILD_VERSION = 1

_ASM_DIR = os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__))))
_ROOT = os.path.dirname(_ASM_DIR)


class PrebuildMissing(RuntimeError):
    """Raised when a build needs prebuild data that has not been generated."""


def prebuild_dir(project):
    return os.path.join(_ROOT, f'asm_prebuild_{project}')


def cache_dir(project):
    """Session cache wiped by build; survives debug (future hot-C use)."""
    return os.path.join(_ROOT, f'asm_cache_{project}')


def manifest_path(project, binary):
    return os.path.join(prebuild_dir(project), f'{binary}_aztec_mux.json')


def cache_path(project, binary):
    """Back-compat alias: the manifest now lives in the prebuild tree."""
    return manifest_path(project, binary)


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
    if blob.get('version') != PREBUILD_VERSION:
        return None
    return blob.get('functions', {})


def _save(path, binary, functions):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, 'w') as f:
        json.dump({'version': PREBUILD_VERSION, 'binary': binary,
                   'functions': functions}, f, indent=1, sort_keys=True)


def to_override(entry):
    """Convert a manifest entry to the ``verify`` override form."""
    code = bytes.fromhex(entry['code'])
    fixups = [(fx['offset'], fixup_width(fx['kind'])) for fx in entry['fixups']]
    return {'code': code, 'fixups': fixups,
            'source_version': entry['source_version'], 'file': entry['file'],
            'compiler': entry['compiler']}


def load_or_build(project, binary, data, aztec_labels, *, mode='build',
                  verbose=True):
    """Return ``(overrides, functions)`` for every exactly-recovered routine.

    ``aztec_labels`` is an iterable of ``(address, label_name)``.

    ``mode='prebuild'`` runs the DOSBox search and writes the prebuild tree;
    ``mode='build'`` reads it and raises :class:`PrebuildMissing` if absent.
    """
    path = manifest_path(project, binary)
    if mode == 'prebuild':
        return _prebuild(project, binary, data, aztec_labels, path, verbose)
    functions = _load(path)
    if functions is None:
        raise PrebuildMissing(
            f'{path} missing; run "make prebuild {project}" first')
    if verbose:
        print(f'  aztec mux: {len(functions)} cached routines ({binary})')
    overrides = {label: to_override(entry)
                 for label, entry in functions.items()}
    return overrides, functions


def _prebuild(project, binary, data, aztec_labels, path, verbose):
    from . import compile as azc
    from .mux import COMPILER_FLAGS

    objcache_dir = os.path.join(prebuild_dir(project), 'objs')
    os.makedirs(objcache_dir, exist_ok=True)
    engine = MuxEngine(objcache_dir=objcache_dir)

    # Phase 1: batch-compile every candidate module not already cached.  One
    # DOSBox session per (compiler, includes) pair instead of one per module.
    requests = {}
    for _addr, label in aztec_labels:
        if not label.startswith('aztec_'):
            continue
        for version, filename, source, compiler in engine.candidates(label[6:]):
            key = engine.compile_key(version, filename, source, compiler)
            requests.setdefault(key, (version, filename, source, compiler))
    missing = []
    for index, (key, (version, filename, source, compiler)) in enumerate(
            requests.items()):
        if objcache.load(objcache_dir, key) is None:
            flags = COMPILER_FLAGS.get(compiler, engine.flags)
            missing.append((key, f'T{index:04d}', source, compiler, version,
                            flags))
    if missing:
        if verbose:
            print(f'  aztec mux: prebuilding {binary} ...')
        results = azc.compile_batch(missing, verbose=verbose)
        for key, result in results.items():
            objcache.save(objcache_dir, key, result)

    # Phase 2: resolve winners.  Every module is now in the object cache, so
    # this does no DOSBox work (and any cached compile error is reproduced).
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
    _save(path, binary, functions)
    if verbose:
        print(f'  aztec mux: {len(functions)} exact routines '
              f'({engine.compile_count} late compiles)')
        for version, filename, compiler, error in engine.errors:
            print(f'    !  {version}/{filename} via {compiler}: {error}')
    overrides = {label: to_override(entry)
                 for label, entry in functions.items()}
    return overrides, functions
