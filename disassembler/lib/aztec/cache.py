"""Persistent prebuild results for the Aztec C mux (:mod:`.mux`).

Compiling through DOSBox is slow, so ``make prebuild <project>`` resolves every
``aztec_*`` routine once and stores the winners under
``.cache/<project>/prebuild/``:

``<binary>_aztec_mux.json``
    Winners with provenance (source file, compiler, includes, byte length).
``objs/<sha1>.json``
    Compiled modules keyed by content hash -- every module's pristine seed
    (:func:`seed_source_text`) among them -- so re-running prebuild (or a
    later build) never repeats an unchanged compile.

``make build`` reads the manifest (creating nothing), places each module
(:mod:`.modules`) and compiles its seed: one ``.c`` per module, written to
``src_<project>/<binary>/`` only when absent, so a no-clean debug rebuild keeps
hand edits.
A build that finds ``aztec_*`` labels but no prebuild data fails loudly with
:class:`PrebuildMissing` rather than silently repeating the expensive search.
"""

import collections
import json
import os

from lib.autogen import MARKER_C
from lib.cachedirs import prebuild_dir

from . import listing, objcache, sources
from .compile import CompiledModule
from .compile import VERSION
from .mux import C_FLAGS, MuxEngine, is_asm, tool_flags
from .objread import fixup_width

_ASM_DIR = os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__))))
_ROOT = os.path.dirname(_ASM_DIR)


class PrebuildMissing(RuntimeError):
    """Raised when a build needs prebuild data that has not been generated."""


def manifest_path(project, binary):
    return os.path.join(prebuild_dir(project), f'{binary}_aztec_mux.json')


def cache_path(project, binary):
    """Back-compat alias: the manifest now lives in the prebuild tree."""
    return manifest_path(project, binary)


def objs_dir(project):
    """Baseline compiled objects inside the prebuild tree."""
    return os.path.join(prebuild_dir(project), 'objs')


def is_asm_entry(entry):
    """True when the routine was recovered from a hand-written ``.asm``."""
    return is_asm(entry['file'])


def asm_stub(module_text):
    """C for a vendor assembly module: the whole module in one ``#asm`` block.

    ``cc`` hands the block to the same ``as`` the library makefiles use, so
    the module's equates, macros (``lmacros.h``) and neighbours come along,
    and the whole module compiles to its fragment like any C module.
    """
    return '#asm\n' + module_text.rstrip('\n') + '\n#endasm\n'


def source_header(label, entry):
    """Header of a build-time seed: just the auto-generated marker."""
    return MARKER_C + '\n'


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
    }


def _load(path):
    try:
        with open(path) as f:
            blob = json.load(f)
    except (OSError, ValueError):
        return None
    return blob.get('functions', {})


def _save(path, binary, functions, misses):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, 'w') as f:
        json.dump({'binary': binary,
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
                  verbose=True, more=False, present=None):
    """Return the manifest's ``{label: entry}`` for every recovered routine.

    ``aztec_labels`` is an iterable of ``(address, label_name)``.

    ``mode='prebuild'`` runs the DOSBox search and writes the prebuild tree
    (manifest + per-routine ``src/`` seeds); ``mode='build'`` reads it and
    raises :class:`PrebuildMissing` if it is absent.  ``more`` adds
    *aztec_labels* -- routines named after the first search -- to the
    manifest the first search wrote; a miss whose label is no longer among
    the *present* names (proof renamed it since) is dropped.
    """
    path = manifest_path(project, binary)
    if mode == 'prebuild':
        return _prebuild(project, binary, data, aztec_labels, path, verbose,
                         more, present)
    functions = _load(path)
    if functions is None:
        raise PrebuildMissing(
            f'{path} missing; run "make prebuild {project}" first')
    if verbose:
        print(f'  aztec mux: {len(functions)} cached routines ({binary})')
    return functions


def _prebuild(project, binary, data, aztec_labels, path, verbose,
              more=False, present=None):
    from . import compile as azc
    objcache_dir = os.path.join(prebuild_dir(project), 'objs')
    os.makedirs(objcache_dir, exist_ok=True)
    from lib.sidecar.vendor import vendor_patches
    engine = MuxEngine(objcache_dir=objcache_dir,
                       patches=vendor_patches(project))

    # Phase 1: batch-compile every candidate module not already cached.  One
    # DOSBox session per (compiler, includes) pair instead of one per module.
    requests = {}
    for _addr, label in aztec_labels:
        if getattr(label, 'role', None) != 'aztec':
            continue
        for version, filename, source, compiler in engine.candidates(
                label.library):
            key = engine.compile_key(version, filename, source, compiler)
            requests.setdefault(key, (version, filename, source, compiler))
    missing = []
    for index, (key, (version, filename, source, compiler)) in enumerate(
            requests.items()):
        if objcache.load(objcache_dir, key) is None:
            flags = tool_flags(filename)
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
    found = []
    for addr, label in aztec_labels:
        if getattr(label, 'role', None) != 'aztec':
            continue
        matches = engine.resolve(label.library, data, addr)
        good = [m for m in matches if m.exact]
        if good:
            found.append((addr, label, good[0]))
        else:
            misses[label] = _miss_status(matches)
    # The matching source names the routine; the signature took the library
    # public's spelling.  A name two routines would take stays the signature's.
    wanted = {str(label): azc.routine_label(m.func.cname)
              for _, label, m in found}
    finals = collections.Counter(wanted.get(str(label), str(label))
                                 for _, label in aztec_labels)
    for addr, label, m in found:
        entry = _entry_from_match(m)
        entry['cname'] = m.func.cname
        name = wanted[str(label)]
        if name != label and finals[name] == 1:
            entry['signature'] = str(label)
            label = name
        functions[label] = entry
        if is_asm(m.filename):
            _annotate_entry(engine, m, functions[label])
        if verbose:
            kind = 'ASM' if is_asm(m.filename) else 'C  '
            print(f'    {kind} {label:20} <- {m.filename}')
    _compile_seeds(engine, project, binary, functions, objcache_dir, verbose)
    if more:
        with open(path) as f:
            before = json.load(f)
        functions = {**functions, **before['functions']}
        misses = {**before['misses'], **{str(label): why for label, why
                                         in misses.items()}}
        if present is not None:
            misses = {label: why for label, why in misses.items()
                      if label in present}
    _save(path, binary, functions, misses)
    if verbose:
        stubs = sum(1 for e in functions.values() if e.get('asm_stub'))
        if functions:
            summary = (f'{len(functions)} routines recovered '
                       f'({stubs} assembly as #asm C)')
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
    source = engine.source(match.version, match.filename)
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
    return (f'closest {best.filename}: '
            f'{len(best.diffs)} of {best.length} bytes differ')


def default_entry(label, project):
    """Provenance for a hand-written ``<label>.c`` with no manifest entry.

    The release every recovered routine uses (:mod:`.mux`); the flags come
    from the sidecar's ``compiler_flags``, chosen by the routine's name.
    """
    from lib.sidecar.compiler import compiler_flags
    entry = {'compiler': VERSION, 'includes': VERSION,
             'source_version': VERSION, 'file': f'{label}.c'}
    flags = compiler_flags(project, label)
    if flags is not None:
        entry['flags'] = flags
    return entry


def _flags_for(entry):
    if entry.get('flags') is not None:
        return tuple(entry['flags'])
    if is_asm_entry(entry):
        return C_FLAGS      # the seed is the module wrapped in ``#asm``
    return tool_flags(entry['file'])


def _cname(label, entry=None):
    """The C name behind a game label: the manifest's, else ``aztec_open`` ->
    ``open`` (a hand-written routine, whose seed defines the label itself)."""
    if entry and entry.get('cname'):
        return entry['cname']
    return label[len('aztec_'):] if label.startswith('aztec_') else label


def own_key(label, entry=None):
    """The normalized C name a routine's seed defines (``aztec_creat`` -> ``creat``)."""
    from .mux import normalize
    return normalize(_cname(label, entry))


def _module_key(entry, source_text):
    return objcache.module_key(entry['includes'], entry['file'],
                               entry['compiler'], _flags_for(entry),
                               source_text)


def _compile_seeds(engine, project, binary, functions, objcache_dir,
                   verbose):
    """Compile every recovered routine's module seed into the object cache.

    A module's seed is the whole vendor module (an assembly one wrapped in
    ``#asm``, :func:`asm_stub`), so the build compiles each seed with no
    DOSBox work; whether it reproduces its place is the build's check
    (:mod:`lib.aztec.modules`).
    """
    from . import compile as azc

    requests = {}
    for label, entry in functions.items():
        entry['asm_stub'] = is_asm_entry(entry)
        text = seed_source_text(project, binary, label, entry, engine)
        if text is None:
            continue
        key = _module_key(entry, text)
        requests.setdefault(
            key, (f'X{len(requests):04d}', text, entry['compiler'],
                  entry['includes'], _flags_for(entry)))
    missing = [(key, dos, text, compiler, includes, flags)
               for key, (dos, text, compiler, includes, flags)
               in requests.items()
               if _stale(objcache.load(objcache_dir, key))]
    if missing:
        if verbose:
            print(f'  aztec mux: compiling {len(missing)} module seeds '
                  f'({binary})')
        for key, result in azc.compile_batch(missing, verbose=verbose).items():
            objcache.save(objcache_dir, key, result)


def seed_source_text(project, binary, label, entry, engine=None):
    """The pristine ``.c`` for *entry*'s module, or None without a source.

    The whole vendor module -- with any sidecar ``vendor_patches`` edit
    applied, since the seed is the source of the game's bytes -- wrapped in
    ``#asm`` when the vendor wrote it in assembly.
    """
    if engine is None:
        from lib.sidecar.vendor import vendor_patches
        engine = MuxEngine(patches=vendor_patches(project))
    text = engine.source(entry['source_version'], entry['file'])
    if not text:
        return None
    if is_asm_entry(entry):
        text = asm_stub(text)
    return source_header(label, entry) + text


def compile_source(project, label, entry, source_text):
    """Compile a ``.c`` and return its whole code as one :class:`Func`.

    The prebuild ``objs`` cache is consulted first (no DOSBox on a hit);
    otherwise the source is compiled in a fresh DOSBox session.
    """
    return compile_source_module(project, label, entry, source_text)[1]


def _stale(module):
    """True for a cache miss, or a module cached before its segment and its
    data were kept (the build needs both)."""
    return module is None or (isinstance(module, CompiledModule) and (
        module.segment is None
        or any(f.data_locals is None for f in module.functions.values())))


def compile_source_module(project, label, entry, source_text):
    """``(module, whole)``: the compiled module and its whole code segment
    (:meth:`lib.aztec.compile.CompiledModule.whole`)."""
    from . import compile as azc

    key = _module_key(entry, source_text)
    module = objcache.load(objs_dir(project), key)
    if _stale(module):
        module = azc.compile_module(
            source_text, label, compiler=entry['compiler'],
            includes=entry['includes'], flags=_flags_for(entry))
        # Keep it: an unedited seed hits this cache on every later build.
        objcache.save(objs_dir(project), key, module)
    if isinstance(module, Exception):
        raise module
    return module, module.whole()
