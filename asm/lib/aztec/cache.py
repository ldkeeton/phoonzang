"""Persistent prebuild results for the mixed-version Aztec C mux.

Compiling through DOSBox is slow, so ``make prebuild <project>`` resolves every
``aztec_*`` routine once and stores the winners under
``.cache/asm_prebuild_<project>/``:

``<binary>_aztec_mux.json``
    Winners with provenance (source version/file, compiler, includes, byte
    length, and whether the routine's C was *extracted* from its module).
``src/<binary>/<label>.c``
    A self-contained seed per routine: the extracted function when that still
    compiles byte-exact, otherwise the whole module.  ``make build`` copies
    these into ``asm_<project>/<binary>/`` only when a seed is absent, so a
    no-clean debug rebuild keeps hand edits.
``objs/<sha1>.json``
    Baseline compiled modules keyed by content hash, so re-running prebuild (or
    a later build) never repeats an unchanged compile.

``make build`` reads the manifest (creating nothing) and compiles each seed.
A build that finds ``aztec_*`` labels but no prebuild data fails loudly with
:class:`PrebuildMissing` rather than silently repeating the expensive search.
"""

import json
import os

from . import listing, objcache, sources
from .mux import MuxEngine, is_asm, tool_flags
from .objread import fixup_width

PREBUILD_VERSION = 1

_ASM_DIR = os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__))))
_ROOT = os.path.dirname(_ASM_DIR)


class PrebuildMissing(RuntimeError):
    """Raised when a build needs prebuild data that has not been generated."""


def prebuild_dir(project):
    return os.path.join(_ROOT, '.cache', f'asm_prebuild_{project}')


def manifest_path(project, binary):
    return os.path.join(prebuild_dir(project), f'{binary}_aztec_mux.json')


def cache_path(project, binary):
    """Back-compat alias: the manifest now lives in the prebuild tree."""
    return manifest_path(project, binary)


def src_dir(project, binary):
    """Per-routine extracted C seeds inside the prebuild tree."""
    return os.path.join(prebuild_dir(project), 'src', binary)


def objs_dir(project):
    """Baseline compiled objects inside the prebuild tree."""
    return os.path.join(prebuild_dir(project), 'objs')


def is_asm_entry(entry):
    """True when the routine was recovered from a hand-written ``.asm``."""
    return is_asm(entry['file'])


def source_header(label, entry):
    """Comment banner shared by prebuild seeds and build-time seeding."""
    kind = 'extracted function' if entry.get('extracted') else 'whole module'
    return (
        f'/* Aztec runtime routine: {label}\n'
        f' * source: Manx Aztec C86 {entry["source_version"]} '
        f'{entry["file"]} ({kind})\n'
        f' * compiled with: Aztec C86 {entry["compiler"]} '
        f'(includes {entry["includes"]})\n'
        f' * recovered byte-exact by the C mux (lib/aztec/mux.py);\n'
        f' * relocation bytes are supplied by the original image.\n'
        f' */\n')


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
        # The exact-match length is the routine's own length; bytes between the
        # routine end and the next emitted record (local tails, padding) are
        # preserved from the original image, not overwritten.
        'original_length': len(func.code),
        'extracted': False,
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


def _save(path, binary, functions, misses):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, 'w') as f:
        json.dump({'version': PREBUILD_VERSION, 'binary': binary,
                   'functions': functions, 'misses': misses},
                  f, indent=1, sort_keys=True)


def to_override(entry):
    """Convert a manifest entry to the ``verify`` override form."""
    code = bytes.fromhex(entry['code'])
    fixups = [(fx['offset'], fixup_width(fx['kind'])) for fx in entry['fixups']]
    return {'code': code, 'fixups': fixups,
            'length': entry.get('original_length') or len(code),
            'source_version': entry['source_version'], 'file': entry['file'],
            'compiler': entry['compiler']}


def load_or_build(project, binary, data, aztec_labels, *, mode='build',
                  verbose=True):
    """Return the manifest's ``{label: entry}`` for every recovered routine.

    ``aztec_labels`` is an iterable of ``(address, label_name)``.

    ``mode='prebuild'`` runs the DOSBox search and writes the prebuild tree
    (manifest + per-routine ``src/`` seeds); ``mode='build'`` reads it and
    raises :class:`PrebuildMissing` if it is absent.
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
    return functions


def _prebuild(project, binary, data, aztec_labels, path, verbose):
    from . import compile as azc
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
            flags = tool_flags(filename, compiler, engine.flags)
            missing.append((key, f'T{index:04d}', source, compiler, version,
                            flags, 'asm' if is_asm(filename) else 'c'))
    if missing:
        if verbose:
            print(f'  aztec mux: prebuilding {binary} ...')
        results = azc.compile_batch(missing, verbose=verbose)
        for key, result in results.items():
            objcache.save(objcache_dir, key, result)

    # Phase 2: resolve winners.  Every module is now in the object cache, so
    # this does no DOSBox work (and any cached compile error is reproduced).
    functions = {}
    misses = {}
    for addr, label in aztec_labels:
        if not label.startswith('aztec_'):
            continue
        symbol = label[len('aztec_'):]
        matches = engine.resolve(symbol, data, addr)
        good = [m for m in matches if m.exact]
        if not good:
            misses[label] = _miss_status(matches)
        if good:
            m = good[0]
            functions[label] = _entry_from_match(m)
            if is_asm(m.filename):
                _annotate_entry(engine, m, functions[label])
            if verbose:
                kind = 'ASM' if is_asm(m.filename) else 'C  '
                print(f'    {kind} {label:20} <- {m.version}/{m.filename} '
                      f'via {m.compiler}')
    _seed_sources(project, binary, functions, data,
                  {label: addr for addr, label in aztec_labels},
                  objcache_dir, verbose)
    _save(path, binary, functions, misses)
    if verbose:
        extracted = sum(1 for e in functions.values() if e.get('extracted'))
        if functions:
            summary = (f'{len(functions)} routines recovered '
                       f'({extracted} extracted)')
            if engine.compile_count:
                summary += f', {engine.compile_count} extra compiles'
            print(f'  aztec mux: {summary}')
        else:
            print('  aztec mux: no routines recovered')
        for version, filename, compiler, error in engine.errors:
            print(f'    !  {version}/{filename} via {compiler}: {error}')
    return functions


def _annotate_entry(engine, match, entry):
    """Attach the vendor source's local label names and comments.

    The hand-written routine's bytes are reproduced by the generated disassembly
    already; the vendor listing only adds what the disassembly cannot know.
    """
    source = sources.catalog(match.version)[match.filename]
    module = engine._compile(match.version, match.filename, source,
                             match.compiler)
    notes = listing.annotate(getattr(module, 'listing', ''), match.func)
    if notes:
        entry['labels'] = sorted(notes['labels'].items())
        entry['comments'] = sorted(notes['comments'].items())


def _miss_status(matches):
    """Why a routine has no byte-exact source, for the manifest's ``misses``."""
    if not matches:
        return 'no vendor source defines it'
    best = matches[0]
    if best.error:
        return f'{best.filename}: {best.error.splitlines()[0][:80]}'
    return (f'closest {best.version}/{best.filename}: '
            f'{len(best.diffs)} of {best.length} bytes differ')


def _flags_for(entry):
    return tool_flags(entry['file'], entry['compiler'])


def _symbol(label):
    """The C symbol behind a game label (``aztec_open`` -> ``open``)."""
    return label[len('aztec_'):] if label.startswith('aztec_') else label


def _module_key(entry, source_text):
    return objcache.module_key(entry['includes'], entry['file'],
                               entry['compiler'], _flags_for(entry),
                               source_text)


def _seed_sources(project, binary, functions, data, addr_by_label,
                  objcache_dir, verbose):
    """Write ``src/<binary>/<label>.c`` seeds and set ``entry['extracted']``.

    An extracted routine is kept only when compiling the extracted text still
    reproduces the original routine exactly (masked comparison); otherwise the
    whole module is seeded, so ``extracted`` is a truthful provenance flag.
    """
    from . import compile as azc
    from . import extract
    from .mux import compare as mux_compare, normalize

    candidates = {}
    requests = {}
    for label, entry in functions.items():
        if is_asm_entry(entry):
            continue
        module_text = sources.catalog(entry['source_version']).get(entry['file'])
        if not module_text:
            continue
        text = extract.extract_routine(module_text, label[len('aztec_'):])
        if text is None:
            continue
        candidates[label] = text
        key = _module_key(entry, text)
        requests.setdefault(
            key, (f'X{len(requests):04d}', text, entry['compiler'],
                  entry['includes'], _flags_for(entry)))

    missing = [(key, dos, text, compiler, includes, flags)
               for key, (dos, text, compiler, includes, flags)
               in requests.items()
               if objcache.load(objcache_dir, key) is None]
    if missing:
        if verbose:
            print(f'  aztec mux: verifying {len(missing)} extracted '
                  f'routines ({binary})')
        for key, result in azc.compile_batch(missing, verbose=verbose).items():
            objcache.save(objcache_dir, key, result)

    dest = src_dir(project, binary)
    os.makedirs(dest, exist_ok=True)
    for label, entry in functions.items():
        if is_asm_entry(entry):
            continue
        text = None
        extracted = False
        if label in candidates:
            module = objcache.load(objcache_dir, _module_key(entry,
                                                             candidates[label]))
            func = (None if module is None or isinstance(module, Exception)
                    else module.get(normalize(_symbol(label))))
            addr = addr_by_label.get(label)
            if func is not None and addr is not None:
                diffs, _ = mux_compare(func, data, addr)
                if (not diffs
                        and len(func.code) == entry.get('original_length',
                                                        len(func.code))):
                    text = candidates[label]
                    extracted = True
        if text is None:
            text = sources.catalog(entry['source_version']).get(
                entry['file'], '')
        entry['extracted'] = extracted
        seed = source_header(label, entry) + text
        with open(os.path.join(dest, f'{label}.c'), 'w') as f:
            f.write(seed)
        # The build compiles the exact seed text (banner included); mirror the
        # already-cached compile under that key so an untouched build never
        # needs DOSBox.
        base_key = _module_key(entry, text)
        seed_key = _module_key(entry, seed)
        if seed_key != base_key:
            cached = objcache.load(objcache_dir, base_key)
            if cached is not None:
                objcache.save(objcache_dir, seed_key, cached)


def seed_source_text(project, binary, label, entry):
    """Return the C seed for *label* (prebuild copy if present, else module)."""
    path = os.path.join(src_dir(project, binary), f'{label}.c')
    try:
        with open(path) as f:
            return f.read()
    except OSError:
        pass
    text = sources.catalog(entry['source_version']).get(entry['file'], '')
    return source_header(label, entry) + text


def compile_source(project, label, entry, source_text):
    """Compile a routine's C and return its :class:`Func`.

    The prebuild ``objs`` cache is consulted first (no DOSBox on a hit);
    otherwise the routine is compiled in a fresh DOSBox session.
    """
    from . import compile as azc
    from .mux import normalize

    key = _module_key(entry, source_text)
    module = objcache.load(objs_dir(project), key)
    if module is None:
        module = azc.compile_module(
            source_text, label, compiler=entry['compiler'],
            includes=entry['includes'], flags=_flags_for(entry))
    if isinstance(module, Exception):
        raise module
    func = module.get(normalize(_symbol(label)))
    if func is None:
        raise RuntimeError(
            f'{label}: compiled {entry["file"]} defines no such function')
    return func

