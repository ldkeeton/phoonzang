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
(:mod:`.modules`) and compiles its seed: one ``.c`` (or, for a vendor assembly
module, ``.s``) per module, written to
``src_<project>/<binary>/`` only when absent, so a no-clean debug rebuild keeps
hand edits.
The build never reads it: prebuild is discovery, and its output stays in
``.cache``.
"""

import collections
import json
import os

from lib.autogen import MARKER_ASM, MARKER_C
from lib import cachedirs
from lib.cachedirs import prebuild_dir

from . import listing, objcache, sources
from .compile import CompiledModule, DATA_VERSION
from .compile import VERSION, project_headers
from .mux import MuxEngine, is_asm
from .objread import fixup_width

_ASM_DIR = os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__))))
_ROOT = os.path.dirname(_ASM_DIR)


def manifest_path(project, binary):
    return os.path.join(prebuild_dir(project), f'{binary}_aztec_mux.json')


def cache_path(project, binary):
    """Back-compat alias: the manifest now lives in the prebuild tree."""
    return manifest_path(project, binary)


def objs_dir(project):
    """The content-keyed compiled-module cache."""
    return cachedirs.objs_dir(project)


def is_asm_entry(entry):
    """True when the routine was recovered from a hand-written ``.asm``."""
    return is_asm(entry['file'])


def seed_suffix(entry):
    """The seed's extension: ``.s`` for a vendor assembly module, which ``as``
    builds as the library makefiles do, else ``.c``."""
    return '.s' if is_asm_entry(entry) else '.c'


def source_header(label, entry):
    """Header of a build-time seed: just the auto-generated marker."""
    return (MARKER_ASM if is_asm_entry(entry) else MARKER_C) + '\n'


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
    (manifest + per-routine ``src/`` seeds) under ``.cache``; any other mode
    returns nothing, since the build compiles only hand-owned sources.  ``more`` adds
    *aztec_labels* -- routines named after the first search -- to the
    manifest the first search wrote; a miss whose label is no longer among
    the *present* names (proof renamed it since) is dropped.
    """
    path = manifest_path(project, binary)
    if mode == 'prebuild':
        return _prebuild(project, binary, data, aztec_labels, path, verbose,
                         more, present)
    return {}


def _prebuild(project, binary, data, aztec_labels, path, verbose,
              more=False, present=None):
    from . import compile as azc
    objcache_dir = objs_dir(project)
    os.makedirs(objcache_dir, exist_ok=True)
    from lib.sidecar.compiler import asm_flags, compiler_flags
    from lib.sidecar.vendor import vendor_patches
    from .compile import LIBRARY_PREFIX
    engine = MuxEngine(objcache_dir=objcache_dir,
                       patches=vendor_patches(project),
                       asm_flags=asm_flags(project),
                       c_flags=compiler_flags(project, LIBRARY_PREFIX,
                                               binary))

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
            flags = engine.tool_flags(filename)
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
        stubs = sum(1 for e in functions.values() if is_asm_entry(e))
        if functions:
            summary = (f'{len(functions)} routines recovered '
                       f'({stubs} assembly, seeded as .s)')
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
        entry['data_labels'] = sorted(notes['data_labels'].items())


def _miss_status(matches):
    """Why a routine has no byte-exact source, for the manifest's ``misses``."""
    if not matches:
        return 'no vendor source defines it'
    best = matches[0]
    if best.error:
        return f'{best.filename}: {best.error.splitlines()[0][:80]}'
    return (f'closest {best.filename}: '
            f'{len(best.diffs)} of {best.length} bytes differ')


def default_entry(label, project, suffix='.c'):
    """Provenance for a hand-written ``<label>.c`` (or ``.s``, *suffix*) with
    no manifest entry: the release every recovered routine uses
    (:mod:`.mux`).  Flags are never part of an entry; :func:`_tool` picks them
    by name."""
    return {'compiler': VERSION, 'includes': VERSION,
            'source_version': VERSION, 'file': f'{label}{suffix}'}


def _tool(project, binary, label, entry):
    """``(kind, flags)`` that build *entry*'s source: ``as`` with the
    sidecar's ``compiler_flags.asm`` for assembly (a vendor ``.asm`` module or
    a routine's ``.s``), else ``cc`` with the flags *label*'s name picks from
    ``compiler_flags`` (*binary*'s own over the project's) -- the same rule
    whether or not the prebuild matched it to a vendor source."""
    if is_asm_entry(entry):
        from lib.sidecar.compiler import asm_flags
        return 'asm', asm_flags(project)
    from lib.sidecar.compiler import compiler_flags
    flags = compiler_flags(project, label, binary)
    if flags is None:
        from lib.sidecar.errors import SidecarError
        raise SidecarError(f'{project}: "compiler_flags" has no flags for '
                           f'{label} in {binary} (no matching prefix, no '
                           '"default")')
    return 'c', tuple(flags)


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


def _module_key(project, binary, label, entry, source_text):
    return objcache.module_key(entry['includes'], entry['file'],
                               entry['compiler'],
                               _tool(project, binary, label, entry)[1],
                               source_text + project_headers(
                                   source_text,
                                   sources.project_include_dir(project)))


def _compile_seeds(engine, project, binary, functions, objcache_dir,
                   verbose):
    """Compile every recovered routine's module seed into the object cache.

    A module's seed is the whole vendor module (an assembly one as it is, for
    ``as``), so the build compiles each seed with no
    DOSBox work; whether it reproduces its place is the build's check
    (:mod:`lib.aztec.modules`).
    """
    from . import compile as azc

    requests = {}
    for label, entry in functions.items():
        text = seed_source_text(project, binary, label, entry, engine)
        if text is None:
            continue
        dest = os.path.join(prebuild_dir(project), 'src', binary)
        os.makedirs(dest, exist_ok=True)
        from .modules import module_name, clashing_stems
        name = module_name(entry['file'], clashing_stems(project),
                           entry['source_version'])
        with open(os.path.join(dest, name + seed_suffix(entry)), 'w') as f:
            f.write(text)
        # Vendor seeds compile against the release's own INCLUDE.
        headers_dir = None
        key = _module_key(project, binary, label, entry, text)
        kind, flags = _tool(project, binary, label, entry)
        requests.setdefault(
            key, (f'X{len(requests):04d}', text, entry['compiler'],
                  entry['includes'], flags, kind, headers_dir))
    missing = [(key, dos, text, compiler, includes, flags, kind, headers_dir)
               for key, (dos, text, compiler, includes, flags, kind,
                         headers_dir)
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
    applied, since the seed is the source of the game's bytes -- as C or,
    when the vendor wrote it in assembly, as assembly (:func:`seed_suffix`).
    """
    if engine is None:
        from lib.sidecar.vendor import vendor_patches
        engine = MuxEngine(patches=vendor_patches(project))
    text = engine.source(entry['source_version'], entry['file'])
    if not text:
        return None
    return source_header(label, entry) + text


def compile_source(project, binary, label, entry, source_text):
    """Compile a ``.c`` and return its whole code as one :class:`Func`.

    The prebuild ``objs`` cache is consulted first (no DOSBox on a hit);
    otherwise the source is compiled in a fresh DOSBox session.
    """
    return compile_source_module(project, binary, label, entry,
                                 source_text)[1]


def data_spans(project, binary, label, entry, source_text):
    """``[(start, end)]``: the module's own data directives, from its ``as``
    listing (:func:`lib.aztec.listing.data_spans`); none for C ``cc`` built."""
    module = compile_source_module(project, binary, label, entry,
                                   source_text)[0]
    return listing.data_spans(module.listing)


def _stale(module):
    """True for a cache miss, or a module cached before its segment and its
    data were kept (the build needs both).  A module that is only data
    (``stksiz.c``) has no segment, only its data."""
    return module is None or (isinstance(module, CompiledModule) and (
        module.data_version < DATA_VERSION
        or (module.segment is None and not module.data)
        or any(f.data_locals is None for f in module.functions.values())))


def data_entry(filename):
    """The provenance of a vendor data module's source (``stksiz.c``): the one
    release, built as the library is."""
    return {'source_version': VERSION, 'file': filename, 'compiler': VERSION,
            'includes': VERSION}


def compile_data(project, binary, label, entry, source_text):
    """The initialized data *source_text* compiles to (``b''`` for none),
    through the ``objs`` cache like :func:`compile_source_module`."""
    from . import compile as azc

    headers_dir = sources.project_include_dir(project)
    key = _module_key(project, binary, label, entry, source_text)
    module = objcache.load(objs_dir(project), key)
    if _stale(module):
        kind, flags = _tool(project, binary, label, entry)
        module = azc.compile_module(
            source_text, label, compiler=entry['compiler'],
            includes=entry['includes'], flags=flags, kind=kind,
            headers_dir=headers_dir)
        objcache.save(objs_dir(project), key, module)
    if isinstance(module, Exception):
        raise module
    return module.data or b''


def compile_source_module(project, binary, label, entry, source_text):
    """``(module, whole)``: the compiled module and its whole code segment
    (:meth:`lib.aztec.compile.CompiledModule.whole`)."""
    from . import compile as azc

    headers_dir = sources.project_include_dir(project)
    key = _module_key(project, binary, label, entry, source_text)
    module = objcache.load(objs_dir(project), key)
    if _stale(module):
        kind, flags = _tool(project, binary, label, entry)
        module = azc.compile_module(
            source_text, label, compiler=entry['compiler'],
            includes=entry['includes'], flags=flags, kind=kind,
            headers_dir=headers_dir)
        # Keep it: an unedited seed hits this cache on every later build.
        objcache.save(objs_dir(project), key, module)
    if isinstance(module, Exception):
        raise module
    return module, module.whole()


def precompile(project, binary, items):
    """Compile every ``(label, entry, source_text)`` of *items* the ``objs``
    cache lacks, in one DOSBox session per tool and flags, so the
    :func:`compile_source_module` calls after it are cache hits.

    Returns ``{label: exception}`` for the modules that failed to compile;
    they are not cached, so the caller reports them.  A timed-out session
    raises :class:`lib.aztec.compile.AztecCompileError`.
    """
    from . import compile as azc

    headers_dir = sources.project_include_dir(project)
    pending = {}
    for label, entry, text in items:
        key = _module_key(project, binary, label, entry, text)
        if key in pending or not _stale(objcache.load(objs_dir(project), key)):
            continue
        pending[key] = (label, entry, text)
    if not pending:
        return {}
    requests = []
    for (key, (label, entry, text)), dos in zip(
            pending.items(), azc.dos_names(label for label, _, _
                                           in pending.values())):
        kind, flags = _tool(project, binary, label, entry)
        requests.append((key, dos, text, entry['compiler'], entry['includes'],
                         flags, kind, headers_dir))
    failed = {}
    for key, result in azc.compile_batch(requests).items():
        if isinstance(result, Exception):
            failed[pending[key][0]] = result
        else:
            objcache.save(objs_dir(project), key, result)
    return failed
