"""Resolve Aztec runtime routines to C and compile the current seeds."""

import json
import os

from lib import routine_source
from lib.autogen import hand_owned
from lib.shared import FOLDER, shared_dirs
from lib.sidecar.bands import band_for

#: Where the vendor headers the C includes are copied (``src_<project>/include``).
INCLUDE_FOLDER = 'include'

from .options import (
    AZTEC_MUX_DISABLED,
    AZTEC_MUX_REFRESH,
    AZTEC_PREBUILD,
    AZTEC_PREBUILD_ONLY,
)


class SourceBuildError(Exception):
    """Source validation failed, but generated files are available."""

    def __init__(self, errors, files):
        super().__init__('\n'.join(dict.fromkeys(errors)))
        self.files = files


def _aztec_c_overrides(project, name, data, label_map, out_dir,
                       function_roots=None, start_offset=0, errors=None):
    """Resolve Aztec runtime routines to C and compile the current seeds.

    Returns ``(overrides, checks, entries, files)``.  Prebuild-derived
    *overrides* feed the byte-preserving splice in :func:`lib.compare.verify`
    from generated Aztec prebuild C and .s (the vendor's original source);
    hand-owned sources are check-only inputs.
    *entries* records the winning provenance and *files* are vendor headers
    the C includes.

    ``ASM_AZTEC_PREBUILD=1`` runs the DOSBox search and writes
    ``.cache/<project>/prebuild/``; an ordinary build does no vendor matching.
    Prebuild module C is always seeded from the cached vendor source.  A hand-owned C file is compiled only for the
    semantic gate, as is a hand-owned ``.s``.
    """
    errors = errors if errors is not None else []
    if not project or AZTEC_MUX_DISABLED:
        return {}, {}, {}, {}
    labels = [(addr, nm) for addr, nm in label_map.items()
              if getattr(nm, 'role', None) == 'aztec']
    dest = os.path.join(out_dir, name)
    # A binary with sidecar ``bands`` keeps each routine's source beside its
    # .asm, in the band's folder (``ds/game/x.c``).  Hand-owned C and .s are
    # compiled for verification only; generated Aztec prebuild sources supply
    # their reassembled instructions.
    bands = _sidecar_bands(project, name)
    found_local = _hand_source_tree(dest, bands)
    found_shared = _hand_shared_source_tree(out_dir)
    found_c = {label: path for label, path in found_local.items()
               if path.endswith('.c')}
    found_shared_c = {label: path for label, path in found_shared.items()
                      if path.endswith('.c')}
    found_sources = dict(found_local)
    for label, path in found_shared.items():
        found_sources.setdefault(label, path)
    hand_sources = sorted(found_sources)
    if not labels and not hand_sources:
        return {}, {}, {}, {}
    from lib.aztec import cache
    from lib.aztec.objread import external_label, fixup_width
    entries = {}
    # Only discovery matches vendor modules; a build compiles hand-owned sources.
    discover = AZTEC_PREBUILD or AZTEC_MUX_REFRESH
    tried = {str(nm) for _, nm in labels}
    more = False
    while discover and labels:
        try:
            entries = cache.load_or_build(
                project, name, data, labels, mode='prebuild', more=more,
                present={str(nm) for nm in label_map.values()})
        except Exception as exc:
            # Every recovered routine's C would silently drop out of the build.
            raise SystemExit(f'error: aztec mux: {exc}') from exc
        _name_routines(project, name, data, entries, label_map,
                       function_roots, start_offset)
        tried.update(entries)   # a recovered routine under its new name
        # A routine named only now (a C routine's callee, a matched module's
        # neighbour) is searched for too -- when a vendor file defines it; a
        # name inside a hand-written module (``iocommon`` in ``io.asm``) is a
        # jump target there, not a routine.
        labels = [(addr, nm) for addr, nm in label_map.items()
                  if getattr(nm, 'role', None) == 'aztec'
                  and str(nm) not in tried and _vendor_defines(nm.library)]
        tried.update(str(nm) for _, nm in labels)
        more = True
    if AZTEC_PREBUILD_ONLY:
        return {}, {}, entries, {}
    # Each vendor module the image holds byte-exact is one fragment with one
    # .c, both named after the vendor file (croot.c -> aztec_croot.c and
    # aztec_croot.asm): the whole module.  Its routines are labels inside
    # that fragment and have no C of their own.
    from lib.aztec.modules import module_spans
    spans, misses = module_spans(project, name, data, label_map, entries)
    for filename, why in sorted(misses.items()):
        print(f'  aztec module {filename}: stays assembly ({why})')
    known = {nm for nm in label_map.values() if isinstance(nm, str)}
    known |= set(spans)

    # The host's address-derived names carry a prefix (``ds_``) that the build
    # adds after this pass.  A source written against the current asm label
    # may already have it, so match through it to the unprefixed label the
    # compiler and the recorded spans use.
    def canonical(label):
        if label in known:
            return label
        prefix = f'{name}_'
        stripped = label[len(prefix):] if label.startswith(prefix) else None
        return stripped if stripped in known else None

    sources = sorted({label for label in found_local if canonical(label) is not None} | {
        label for label in found_shared if canonical(label) is not None})
    orphans = sorted(os.path.basename(found_local[label])
                     for label in found_local
                     if canonical(label) is None)
    if orphans:
        errors.append(
            f'error: source file(s) in {dest} with no matching asm routine: '
            f'{", ".join(orphans)} (check the sidecar names: function_names '
            f'and dispatch_table.names must agree; `make info` / `make refs` '
            f'show both)')
    starts = {nm: addr for addr, nm in label_map.items()
              if isinstance(nm, str)}
    starts.update((module, span.start) for module, span in spans.items())

    def home(label):
        return _band_home(dest, bands,
                          starts.get(canonical(label) or label))

    invalid = set()
    for label, path in sorted(found_local.items()):
        if canonical(label) is None:
            continue
        if os.path.dirname(path) != home(label):
            invalid.add(label)
            errors.append(
                f'error: {path}: move it to {home(label)}/, beside its .asm')
    module_of = {member: span for span in spans.values()
                 for member in span.members}
    for label in sources:
        routine = canonical(label) or label
        span = module_of.get(routine)
        if span is not None and routine not in spans:
            invalid.add(label)
            errors.append(
                f'error: {c_path(dest, label, home(label))}: {routine} is '
                f'part of module {span.file}, whose source is '
                f'{span.name}{cache.seed_suffix(span.entry)}; merge it there')

    sources = [label for label in sources if label not in invalid]

    # Everything the loops below compile goes through DOSBox up front, one
    # session per tool and flags instead of one per routine; the loops then
    # hit the object cache.
    hand = [label for label in sources
            if (canonical(label) or label) not in spans
            and (canonical(label) or label) not in module_of]
    batch = [(module, span.entry,
              _seed_aztec_c(cache, project, name, module, span.entry, dest,
                            home(module))[0])
             for module, span in sorted(spans.items())]
    for label in hand:
        routine = canonical(label) or label
        path = found_sources[label]
        with open(path) as f:
            batch.append((routine, cache.default_entry(
                routine, project, os.path.splitext(path)[1]), f.read()))
    try:
        failed = cache.precompile(project, name, batch)
    except Exception as exc:
        errors.append(f'error: {exc}')
        failed = {label: exc for label, _, _ in batch}

    overrides, checks = {}, {}
    for module, span in sorted(spans.items()):
        entry = span.entry
        path = c_path(dest, module, home(module), cache.seed_suffix(entry))
        if not path.endswith(cache.seed_suffix(entry)):
            # The tool follows the vendor's: as for its .asm, cc for its .c.
            errors.append(
                f'error: {path}: {module} is the vendor\'s {entry["file"]}; '
                f'its source is {module}{cache.seed_suffix(entry)}')
            continue
        text, generated = _seed_aztec_c(cache, project, name, module, entry,
                                        dest, home(module))
        try:
            if module in failed:
                raise failed[module]
            compiled, func = cache.compile_source_module(
                project, name, module, entry, text)
        except Exception as exc:
            errors.append(
                f'error: {os.path.basename(path)}: compile failed '
                f'({exc})')
            continue
        overrides[module] = {
            # The linker resolves the module's relocations against the build's
            # label maps once those exist (lib.compare.coverrides).
            'func': func, 'text': text,
            'path': path,
            'generated': generated,
            'own_keys': dict(span.keys),
            'pristine': text == cache.seed_source_text(
                project, name, module, entry),
            'compile': (lambda t, _l=module, _e=entry:
                        cache.compile_source(project, name, _l, _e, t)),
            # A pristine seed's renamed text, for one batch of them all
            # (lib.compare.coverrides._batch_relabels).
            'entry': entry,
            'precompile': (lambda items:
                           cache.precompile(project, name, items)),
            'code': func.code,
            'fixups': [(fx.offset, fixup_width(fx.kind))
                       for fx in func.fixups],
            'data_spans': cache.data_spans(project, name, module, entry,
                                           text),
            # The C/asm module's own data, for the ownership gate.
            'module_data': compiled.data,
            'module_data_relocations': compiled.data_relocations,
            'module_externals': compiled.externals,
            # The module's first byte, and where its first routine starts.
            'start': span.start, 'lead': span.lead,
            'length': span.length,
            'source_version': entry['source_version'],
            'file': entry['file'], 'compiler': entry['compiler'],
            'includes': entry['includes'],
            'asm_stub': cache.is_asm_entry(entry),
            # Generated prebuild C and .s are the vendor's original source:
            # their reassembled records replace the disassembly.  Hand-owned
            # sources remain check-only below.
            'check_only': not generated,
        }
    # A hand-written <label>.c or .s outside every placed module (an
    # application routine, or a vendor routine whose module stays assembly)
    # is checked without replacing its disassembly.  It must fit inside the
    # recorded span, the next routine, and its sidecar band.
    recorded = _recorded_spans(project, name)
    roots = sorted(function_roots or ())
    # Concrete runtime entries bound their hand-owned sources.  An inferred
    # fragment inside one function (malloc's unreachable return jump) is not
    # another function; its complete compiler output is still byte-checked.
    from lib.sidecar.loader import load as load_sidecar
    from lib.sidecar.binary import per_binary
    entry = per_binary(load_sidecar(project) or {}, name)
    adjust = start_offset + entry.get('ghidra_base_offset', 0)
    runtime_roots = {
        int(key, 16) + adjust
        for key, info in entry.get('function_names', {}).items()
        if info.get('role') == 'aztec'}
    declared_roots = sorted(int(key, 16) + adjust
                            for key in entry.get('function_names', {}))
    for label in hand:
        routine = canonical(label) or label
        path = c_path(dest, label, home(label))
        with open(path) as f:
            text = f.read()
        entry = cache.default_entry(routine, project,
                                    os.path.splitext(path)[1])
        try:
            if routine in failed:
                raise failed[routine]
            compiled, func = cache.compile_source_module(
                project, name, routine, entry, text)
        except Exception as exc:
            errors.append(f'error: {os.path.basename(path)}: compile '
                             f'failed ({exc})')
            continue
        start = starts.get(routine)
        band = band_for(bands, start) if start is not None else None
        source_roots = declared_roots if start in runtime_roots else roots
        recorded_end = None if start in runtime_roots else recorded.get(start)
        try:
            length = routine_source.owned_length(
                start, len(func.code),
                recorded_end=recorded_end,
                next_root=(next((r for r in source_roots if r > start), None)
                           if start is not None else None),
                band_end=(band[1] + 1) if band is not None else None)
        except routine_source.FragmentLengthError as exc:
            errors.append(f'error: {os.path.basename(path)}: {exc}')
            continue
        checks[label] = {
            'func': func, 'text': text, 'path': path,
            'start': start,
            'own_keys': {cache.own_key(routine, entry): label},
            # A shared source may call a target this binary spells
            # differently; there is no other binary's asm to read, so the
            # link reads the target from the original instruction.
            'shared': os.path.dirname(path) in shared_dirs(out_dir),
            'pristine': False,
            'compile': (lambda t, _l=routine, _e=entry:
                        cache.compile_source(project, name, _l, _e, t)),
            'code': func.code,
            'fixups': [(fx.offset, fixup_width(fx.kind))
                       for fx in func.fixups],
            'data_spans': cache.data_spans(project, name, routine, entry,
                                           text),
            'module_data': compiled.data,
            'module_data_relocations': compiled.data_relocations,
            'module_externals': compiled.externals,
            'length': length,
            # A .s module's publics, each an asm label the build must give
            # the same name (lib.compare.coverrides._check_publics).
            'publics': ({external_label(f.cname): f.offset
                         for f in compiled.functions.values()}
                        if routine_source.is_asm_source(path) else None),
            'source_version': entry['source_version'],
            'file': entry['file'], 'compiler': entry['compiler'],
            'includes': entry['includes'],
            'check_only': True,
        }
    # A hand-owned module C file is checked against the same original module
    # span; the prebuild seed is also verified without replacing ASM.
    all_hand_c = dict(found_shared_c)
    all_hand_c.update(found_c)
    for label, path in sorted(all_hand_c.items()):
        routine = canonical(label) or label
        if canonical(label) is None:
            continue
        span = spans.get(routine)
        if span is None:
            continue
        with open(path) as f:
            text = f.read()
        entry = span.entry
        try:
            compiled, func = cache.compile_source_module(
                project, name, routine, entry, text)
        except Exception as exc:
            errors.append(f'error: {os.path.basename(path)}: compile '
                             f'failed ({exc})')
            continue
        checks[label] = {
            'func': func, 'text': text, 'path': path,
            'start': span.start,
            'own_keys': dict(span.keys), 'pristine': False,
            'code': func.code,
            'fixups': [(fx.offset, fixup_width(fx.kind))
                       for fx in func.fixups],
            'data_spans': cache.data_spans(project, name, routine, entry,
                                           text),
            'module_data': compiled.data,
            'module_data_relocations': compiled.data_relocations,
            'module_externals': compiled.externals,
            'start': span.start, 'lead': span.lead, 'length': span.length,
            'source_version': entry['source_version'],
            'file': entry['file'], 'compiler': entry['compiler'],
            'includes': entry['includes'], 'check_only': True,
        }
    headers = _headers(out_dir)
    return overrides, checks, entries, headers


def _vendor_defines(key):
    """True when a vendor source defines routine *key* in any spelling."""
    from lib.aztec import sources
    from lib.aztec.mux import normalize, spellings
    return any(sources.definition_files(version, normalize(name))
               or sources.asm_definition_files(version, normalize(name))
               for version in sources.VERSIONS
               for name in spellings(key or ''))


def _name_routines(project, binary, data, entries, label_map,
                   function_roots, start_offset):
    """Name what the recovered routines prove, until nothing changes.

    Each round can name a routine whose own entry names more: the signature's
    label takes the source's name, a C routine's callees take the vendor's,
    and a matched module's neighbours take theirs.
    """
    from lib.aztec import libnames
    while True:
        before = dict(label_map)
        _apply_renames(entries, label_map, function_roots)
        _name_c_callees(project, binary, data, entries, label_map,
                        function_roots, start_offset)
        for off, sym in libnames.sibling_symbols(
                project, binary, data, label_map, entries,
                start_offset).items():
            if function_roots is not None and \
                    function_roots.get(off) == label_map[off]:
                function_roots[off] = sym
            label_map[off] = sym
        if label_map == before:
            return


def _apply_renames(entries, label_map, function_roots):
    """Name each recovered routine as its matching source does.

    The signature took the library's spelling (``aztec__open``); the entry is
    keyed by the vendor source's C name (``aztec_open``) and remembers the
    signature's label.
    """
    from lib.symtab import Source
    at = {str(nm): addr for addr, nm in label_map.items()}
    for label, entry in entries.items():
        addr = at.get(entry.get('signature'))
        if addr is None:
            continue
        # The name changes; ``library`` stays the object the bytes matched.
        sym = label_map[addr].renamed(label, Source.LIBRARY)
        if function_roots is not None and function_roots.get(addr) == \
                label_map[addr]:
            function_roots[addr] = sym
        label_map[addr] = sym


#: Routines the runtime calls but the program defines: ``main`` (``Croot``)
#: and an overlay's ``ovmain`` (``$ovbgn``).
_PROGRAM_NAMES = {'main', 'ovmain'}


def _name_c_callees(project, binary, data, entries, label_map,
                    function_roots, start_offset=0):
    """Name each routine a recovered routine calls, as the vendor source does.

    A call in the original image lands where the vendor source's callee is
    (``sprintf`` from ``ovloader.c``).  A label there the pipeline only
    derived from the address or its content (``ds_loc_LHHJ``) becomes that
    vendor routine (``aztec_sprintf``), so the C keeps the vendor's call; a
    routine the program defines (``main``, called by ``Croot``) takes the C
    name as it is.  So does an Aztec signature's name its own source did not
    match: a byte window can fire inside another routine (a ``fputs``
    window landed in ``aputc``), and the call is proof.  A proven name, or the
    sidecar's, stays; the link then reports the disagreement.  A vendor routine whose address the C
    takes (``printf`` passes ``putchar``) is named the same way: its value is
    a CS offset, so the label sits at the value plus *start_offset*.
    """
    from lib.aztec import cache, sources
    from lib.aztec.compile import aztec_name, routine_label
    from lib.symtab import GENERIC, Kind, Source, Symbol
    starts = {str(nm): addr for addr, nm in label_map.items()}
    taken = set(starts)
    found = {}

    def vendor_routine(key):
        return key not in _PROGRAM_NAMES and any(
            sources.definition_files(version, key)
            or sources.asm_definition_files(version, key)
            for version in sources.VERSIONS)

    from lib.aztec.modules import module_key
    from lib.aztec.mux import compare as mux_compare
    done = set()
    for label, entry in entries.items():
        start = starts.get(label)
        if start is None or module_key(entry) in done:
            continue
        try:
            func = cache.compile_source(
                project, binary, label, entry,
                cache.seed_source_text(project, binary, label, entry))
        except Exception:
            continue    # the override's own compile reports it
        offset = func.members.get(cache.own_key(label, entry))
        if offset is None:
            continue
        base = start - offset
        # A module the image holds whole is read whole, once; otherwise only
        # this routine's own bytes are known to be where the C puts them.
        if not mux_compare(func, data, base)[0]:
            done.add(module_key(entry))
            lo, hi = 0, len(func.code)
        else:
            lo = offset
            hi = min([o for o in func.members.values() if o > offset]
                     + [len(func.code)])
        for fx in func.fixups:
            if fx.symbol_kind != 'GBLSYM' or fx.kind not in ('WREL', 'WABS') \
                    or not lo <= fx.offset <= hi - 2:
                continue
            site = base + fx.offset
            word = int.from_bytes(data[site:site + 2], 'little')
            if fx.kind == 'WREL':
                target = (site + 2 + word) & 0xFFFF
            elif vendor_routine(aztec_name(fx.symbol)):
                target = ((word - fx.addend) & 0xFFFF) + start_offset
            else:
                continue    # a data address
            sym = label_map.get(target)
            if sym is not None and (sym.source in GENERIC or (
                    sym.source is Source.SIGNATURE and str(sym) not in entries)):
                found.setdefault(target, set()).add(aztec_name(fx.symbol))
    for target, keys in found.items():
        if len(keys) != 1:
            continue
        key = keys.pop()
        vendor = vendor_routine(key)
        new = routine_label(key) if vendor else key
        if new in taken:
            continue
        sym = Symbol(new, kind=Kind.ROUTINE, source=Source.LIBRARY,
                     offset=target, role='aztec' if vendor else None,
                     library=key if vendor else None)
        if function_roots is not None and target in function_roots:
            function_roots[target] = sym
        label_map[target] = sym
        taken.add(new)


def _headers(out_dir):
    """The generated headers already installed in ``<out_dir>/include/``.

    The build installs them from prebuild before compiling
    (:func:`lib.aztec.sources.install_headers`); the compiler reads this same
    tree.  Returning them here keeps the build's sync from pruning them.  The
    renderer's ``host_symbols.inc`` and ``structs.inc`` are not vendor
    headers and come from the normal emitted files instead.
    """
    from lib.autogen import is_generated
    from lib.aztec import sources
    include = os.path.join(out_dir, INCLUDE_FOLDER)
    files = {}
    if not os.path.isdir(include):
        return files
    for name in sorted(os.listdir(include)):
        path = os.path.join(include, name)
        if (name in (sources.HOST_SYMBOLS_INC, sources.STRUCTS_INC)
                or not os.path.isfile(path)):
            continue
        if is_generated(path):
            with open(path) as f:
                files[f'{INCLUDE_FOLDER}/{name}'] = f.read()
    return files


def _hand_shared_source_tree(out_dir):
    """Hand-owned shared C/assembly sources, keyed by routine label."""
    found = {}
    for folder in shared_dirs(out_dir):
        for label, filename in routine_source.sources_in(
                folder, hand_owned).items():
            found.setdefault(label, os.path.join(folder, filename))
    return found


def _recorded_spans(project, name):
    """``{start: end}`` of the routine spans the last build emitted.

    The full build and ``make rebuild`` both read this one record: a hand
    source owns exactly its compiled bytes, and the recorded end is the
    boundary it must not grow past.
    """
    from lib.cachedirs import spans_dir
    path = os.path.join(spans_dir(project), f'{name}_aztec_spans.json')
    try:
        with open(path) as f:
            spans = json.load(f)
    except (OSError, ValueError):
        return {}
    out = {}
    for start, end in spans.values():
        out[int(start)] = int(end)
    return out


def _sidecar_bands(project, binary):
    """The binary's sidecar ``bands`` (:mod:`lib.sidecar.bands`), or ``[]``."""
    from lib.sidecar.binary import per_binary
    from lib.sidecar.loader import load
    sidecar = load(project) if project else None
    return per_binary(sidecar, binary)['bands'] if sidecar else []


def _band_home(dest, bands, start):
    """The folder a routine starting at *start* lives in: *dest*, or the
    folder of its sidecar band beneath it."""
    band = band_for(bands, start) if bands and start is not None else None
    return os.path.join(dest, band[2]) if band else dest


def _hand_source_tree(dest, bands):
    """``{label: path}`` for hand-owned C/assembly sources in binary folders."""
    found = {}
    for folder in [dest] + [os.path.join(dest, b[2]) for b in bands]:
        for label, filename in routine_source.sources_in(
                folder, hand_owned).items():
            if label in found:
                raise SystemExit(f'error: {label} has a source in both '
                                 f'{os.path.dirname(found[label])} and '
                                 f'{folder}')
            found[label] = os.path.join(folder, filename)
    return found


def c_path(dest, label, folder=None, suffix='.c'):
    """The routine's source: the hand-owned one in *folder* (its band's,
    :func:`_band_home`) or *dest*, else the hand-owned ``shared/`` copy, else
    where a new one goes, with *suffix* (``.c``, ``.s``)."""
    base = os.path.join(folder or dest, label)
    mine = routine_source.beside(base, hand_owned)
    if mine:
        return mine
    for home in shared_dirs(os.path.dirname(dest)):
        shared = routine_source.beside(os.path.join(home, label),
                                       hand_owned)
        if shared:
            return shared
    return base + suffix


def _seed_aztec_c(cache, project, binary, label, entry, dest, folder=None):
    """``(text, generated)``: the routine's C, and whether it is a new seed.

    A hand-owned file already there is read; otherwise the seed is returned
    for the build to write.
    """
    path = c_path(dest, label, folder, cache.seed_suffix(entry))
    # A hand-owned C file is never an assembly override.  A hand-owned .s
    # remains usable for entries whose prebuild source is assembly.
    if path.endswith('.s') and hand_owned(path):
        with open(path) as f:
            return f.read(), False
    return cache.seed_source_text(project, binary, label, entry), True


def _aztec_asm_annotations(entries, label_map, c_overrides=None):
    """Vendor label names/comments for hand-written (``.asm``) routines.

    Returns ``{label: {'start', 'end', 'labels': {addr: name},
    'comments': {addr: text}}}`` with absolute addresses.  The disassembly's
    bytes already equal the vendor routine's; this only carries what the
    vendor source adds (the author's local label names and comments).  A
    vendor module built from one ``.c`` (*c_overrides* with a ``start``) gets
    one note, under its name, for all its routines: its branch targets are
    numbered under the module (``@..aztec_csav.l2`` is ``stackfault``).
    """
    from lib.aztec import cache
    by_name = {}
    for addr, nm in label_map.items():
        if isinstance(nm, str):
            by_name.setdefault(nm, addr)
    out = {}
    for label, entry in entries.items():
        start = by_name.get(label)
        if (start is None or not cache.is_asm_entry(entry)
                or not (entry.get('labels') or entry.get('comments')
                        or entry.get('data_labels'))):
            continue
        out[label] = {
            'start': start,
            'end': start + (entry.get('original_length') or 0),
            'labels': {start + off: name for off, name in entry.get('labels', ())},
            'comments': {start + off: text
                         for off, text in entry.get('comments', ())},
            'data_labels': {start + off: name
                            for off, name in entry.get('data_labels', ())},
        }
    for module, override in (c_overrides or {}).items():
        if 'start' not in override:
            continue
        start = override['start']
        end = start + override['length']
        inside = [label for label, note in out.items()
                  if start <= note['start'] < end]
        if not inside:
            if module.startswith('aztec_') and module not in out:
                # No hand-written routine, but the module's shared tails
                # still want module-relative names (vendor.py).
                out[module] = {'start': start, 'end': end, 'labels': {},
                               'comments': {}, 'data_labels': {},
                               'owners': {module}}
            continue
        merged = {'start': start, 'end': end, 'labels': {}, 'comments': {},
                  'data_labels': {}, 'owners': {module, *inside}}
        for label in inside:
            note = out.pop(label)
            merged['labels'].update(note['labels'])
            merged['comments'].update(note['comments'])
            for addr, name in note['data_labels'].items():
                merged['data_labels'].setdefault(addr, name)
        out[module] = merged
    return out



def _data_sources(project, binary, out_dir, split_sources, segments=None,
                  data=None, overrides=()):
    """``{relative path: text}``: the C source beside each generated data file.

    A library module that is only data (:mod:`lib.aztec.datamodules`) is one
    file in the binary's ``data`` folder (``vinstall/data/ctp_.asm``), and its
    vendor source is that file's C (``ctp_.c`` is ``ctype.c``).  A hand-owned
    copy, there or in ``shared/data/``, is read; otherwise the seed is
    returned for the build to write.

    Every compiled C/assembly module is also checked against the named data
    objects in the image (:mod:`lib.aztec.dataowners`).  A mixed module's
    existing source is the owner; no second ``data/<name>.c`` is created for
    data that C already defines.
    """
    if not project or AZTEC_MUX_DISABLED:
        return {}
    from lib.aztec import cache
    from lib.aztec.compile import LIBRARY_PREFIX
    from lib.aztec.dataowners import DataOwnerError, validate
    from lib.aztec.datamodules import data_modules, stem
    sources = []
    seeds = {}
    todo = []
    for module in data_modules(project):
        name = stem(module)
        rel = f'{binary}/data/{name}.asm'
        text = split_sources.get(rel)
        if text is None or any(f'__z{label}:' not in text
                               for label, _ in module.publics):
            continue
        entry = cache.data_entry(module.file)
        label = LIBRARY_PREFIX + name
        c_rel = shown = rel[:-4] + '.c'
        source = None
        for path in (os.path.join(out_dir, c_rel),
                     os.path.join(out_dir, FOLDER, 'data', f'{name}.c')):
            if hand_owned(path):
                with open(path) as f:
                    source = f.read()
                shown = os.path.relpath(path, out_dir)
                break
        if source is None:
            source = cache.seed_source_text(project, binary, label, entry)
            seeds[c_rel] = source
        todo.append((module, rel, label, entry, shown, source))
    # One DOSBox batch compiles them all; compile_data then hits the cache.
    try:
        failed = cache.precompile(project, binary,
                                  [(label, entry, source) for _, _, label,
                                   entry, _, source in todo])
    except Exception as exc:
        raise SystemExit(f'error: {exc}') from exc
    for module, rel, label, entry, shown, source in todo:
        try:
            if label in failed:
                raise failed[label]
            got = cache.compile_data(project, binary, label, entry, source)
        except Exception as exc:
            raise SystemExit(f'error: {shown}: {exc}') from exc
        if got != module.data:
            raise SystemExit(
                f'error: {shown}: compiles to {got.hex() or "no data"}, '
                f'but {rel} holds {module.data.hex()}')
        sources.append({
            'path': shown, 'data': got, 'relocations': (),
            'symbols': {label for label, _ in module.publics},
            'externals': (),
        })

    for override in overrides:
        module_data = override.get('module_data') or b''
        if not module_data:
            continue
        sources.append({
            'path': os.path.relpath(override['path'], out_dir),
            'data': module_data,
            'relocations': override.get('module_data_relocations') or (),
            'symbols': {fx.symbol for fx in override['func'].fixups
                        if fx.symbol},
            'externals': override.get('module_externals') or (),
        })

    try:
        validate(segments, data, sources)
    except DataOwnerError as exc:
        raise SystemExit(f'error: {exc}') from exc
    return seeds
