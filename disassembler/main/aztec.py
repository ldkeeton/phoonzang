"""Resolve Aztec runtime routines to C and compile the current seeds."""

import os

from lib import routine_source
from lib.autogen import hand_owned
from lib.shared import FOLDER
from lib.sidecar.bands import band_for

#: Where the vendor headers the C includes are copied (``src_<project>/include``).
INCLUDE_FOLDER = 'include'

from .options import (
    AZTEC_MUX_DISABLED,
    AZTEC_MUX_REFRESH,
    AZTEC_PREBUILD,
    AZTEC_PREBUILD_ONLY,
)


def _aztec_c_overrides(project, name, data, label_map, out_dir,
                       function_roots=None, start_offset=0):
    """Resolve Aztec runtime routines to C and compile the current seeds.

    Returns ``(overrides, entries, files)`` where *overrides* feeds the
    byte-preserving splice in :func:`lib.compare.verify`, *entries* records the
    winning provenance and *files* are the vendor headers the C includes
    (``{relative path: text}``), for the build to write with the sources.

    ``ASM_AZTEC_PREBUILD=1`` runs the DOSBox search and writes
    ``.cache/<project>/prebuild/``; otherwise the prebuilt manifest is read and a
    missing prebuild is a hard error.  The seed sources -- ``.c``, or ``.s``
    for assembly (:mod:`lib.routine_source`) -- live in
    ``<out_dir>/<binary>/``.  Only a hand-owned one (its marker line removed)
    is read; any other module gets its seed (``generated``, written with the
    binary's sources), so a seed an earlier build wrote is never mistaken
    for a human's.
    """
    if not project or AZTEC_MUX_DISABLED:
        return {}, {}, {}
    labels = [(addr, nm) for addr, nm in label_map.items()
              if getattr(nm, 'role', None) == 'aztec']
    dest = os.path.join(out_dir, name)
    known = {nm for nm in label_map.values() if isinstance(nm, str)}
    # A binary with sidecar ``bands`` keeps each routine's source beside its
    # .asm, in the band's folder (``ds/game/x.c``).
    bands = _sidecar_bands(project, name)
    found_c = _hand_c_tree(dest, bands)
    hand_c = sorted(found_c)
    shared_dir = os.path.join(out_dir, FOLDER)
    # C shared between binaries (lib.shared) lives in shared/; only the labels
    # this binary has are its own.
    shared_c = [label for label in _hand_c(shared_dir) if label in known]
    if not labels and not hand_c and not shared_c:
        return {}, {}, {}
    from lib.aztec import cache
    from lib.aztec.objread import fixup_width
    entries = {}
    mode = 'prebuild' if (AZTEC_PREBUILD or AZTEC_MUX_REFRESH) else 'build'
    tried = {str(nm) for _, nm in labels}
    more = False
    while labels:
        try:
            entries = cache.load_or_build(
                project, name, data, labels, mode=mode, more=more,
                present={str(nm) for nm in label_map.values()})
        except cache.PrebuildMissing as exc:
            raise SystemExit(f'error: {exc}')
        except Exception as exc:
            # Every recovered routine's C would silently drop out of the build.
            raise SystemExit(f'error: aztec mux: {exc}') from exc
        _name_routines(project, name, data, entries, label_map,
                       function_roots, start_offset)
        if mode != 'prebuild':
            break
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
        return {}, entries, {}
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
    shared_c = [label for label in _hand_c(shared_dir) if label in known]

    orphans = sorted(os.path.basename(found_c[label]) for label in hand_c
                     if label not in known)
    if orphans:
        raise SystemExit(f'error: source file(s) in {dest} with no matching '
                         f'asm routine: {", ".join(orphans)}')
    starts = {nm: addr for addr, nm in label_map.items()
              if isinstance(nm, str)}
    starts.update((module, span.start) for module, span in spans.items())

    def home(label):
        return _band_home(dest, bands, starts.get(label))

    for label, path in sorted(found_c.items()):
        if os.path.dirname(path) != home(label):
            raise SystemExit(
                f'error: {path}: move it to {home(label)}/, beside its .asm')
    module_of = {member: span for span in spans.values()
                 for member in span.members}
    for label in sorted(set(hand_c) | set(shared_c)):
        span = module_of.get(label)
        if span is not None and label not in spans:
            raise SystemExit(
                f'error: {c_path(dest, label, home(label))}: {label} is part '
                f'of module {span.file}, whose source is '
                f'{span.name}{cache.seed_suffix(span.entry)}; merge it there')

    overrides = {}
    for module, span in sorted(spans.items()):
        entry = span.entry
        path = c_path(dest, module, home(module), cache.seed_suffix(entry))
        if not path.endswith(cache.seed_suffix(entry)):
            # The tool follows the vendor's: as for its .asm, cc for its .c.
            raise SystemExit(
                f'error: {path}: {module} is the vendor\'s {entry["file"]}; '
                f'its source is {module}{cache.seed_suffix(entry)}')
        text, generated = _seed_aztec_c(cache, project, name, module, entry,
                                        dest, home(module))
        try:
            func = cache.compile_source(project, name, module, entry, text)
        except Exception as exc:
            raise SystemExit(
                f'error: {os.path.basename(path)}: compile failed '
                f'({exc})') from exc
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
            'code': func.code,
            'fixups': [(fx.offset, fixup_width(fx.kind))
                       for fx in func.fixups],
            'data_spans': cache.data_spans(project, name, module, entry,
                                           text),
            # The module's first byte, and where its first routine starts.
            'start': span.start, 'lead': span.lead,
            'length': span.length,
            'source_version': entry['source_version'],
            'file': entry['file'], 'compiler': entry['compiler'],
            'includes': entry['includes'],
            'asm_stub': cache.is_asm_entry(entry),
        }
    # A hand-written <label>.c or .s outside every placed module (an
    # application routine, or a vendor routine whose module stays assembly)
    # replaces that routine too.  It owns its fragment: up to the next
    # fragment root.
    roots = sorted(function_roots or ())
    for label in sorted(set(hand_c) | set(shared_c)):
        if label in spans or label in module_of:
            continue
        path = c_path(dest, label, home(label))
        with open(path) as f:
            text = f.read()
        entry = cache.default_entry(label, project,
                                    os.path.splitext(path)[1])
        try:
            func = cache.compile_source(project, name, label, entry, text)
        except Exception as exc:
            raise SystemExit(f'error: {os.path.basename(path)}: compile '
                             f'failed ({exc})')
        start = starts.get(label)
        following = [r for r in roots if start is not None and r > start]
        overrides[label] = {
            'func': func, 'text': text, 'path': path,
            'own_keys': {cache.own_key(label, entry): label},
            'pristine': False,
            'compile': (lambda t, _l=label, _e=entry:
                        cache.compile_source(project, name, _l, _e, t)),
            'code': func.code,
            'fixups': [(fx.offset, fixup_width(fx.kind))
                       for fx in func.fixups],
            'data_spans': cache.data_spans(project, name, label, entry,
                                           text),
            'length': (following[0] - start) if following else len(func.code),
            'source_version': entry['source_version'],
            'file': entry['file'], 'compiler': entry['compiler'],
            'includes': entry['includes'],
        }
    headers = _headers(out_dir, [(ov['text'], ov['includes'])
                                 for ov in overrides.values()])
    return overrides, entries, headers


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


def _headers(out_dir, sources_in):
    """The vendor headers the C includes, for ``<out_dir>/include/``.

    *sources_in* is ``[(text, includes version)]``; returns ``{relative path:
    text}`` of the headers not already there.  The copy is what the C reads;
    the compile still reads the vendor's own directory, so a copy that differs
    from it (an edit, or two versions wanting one name) is an error rather
    than a header the build silently ignores.
    """
    from lib.autogen import stamp
    from lib.aztec import sources
    files = {}
    for text, version in sources_in:
        for name, header in sources.headers(version, text).items():
            rel = f'{INCLUDE_FOLDER}/{name}'
            path = os.path.join(out_dir, rel)
            want = stamp(header, path)
            if hand_owned(path):
                with open(path) as f:
                    if f.read() == header:
                        continue
            elif files.get(rel, want) == want:
                files[rel] = want
                continue
            raise SystemExit(
                f'error: {path} differs from the {version} header the C '
                f'compiles with; the compile reads the vendor copy, so '
                f'this one must match it (delete it to have it regenerated)')
    return files


def _hand_c(folder):
    """The labels of the hand-owned sources (``.c``, ``.s``) in *folder*,
    sorted."""
    return sorted(routine_source.sources_in(folder, hand_owned))


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


def _hand_c_tree(dest, bands):
    """``{label: path}`` for the hand-owned sources (``.c``, ``.s``) in *dest*
    and in its band folders."""
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
    """The routine's source: the hand-owned ``shared/`` copy when there is
    one, else the hand-owned one in *folder* (its band's, :func:`_band_home`)
    or *dest*, else where a new one goes, with *suffix* (``.c``, ``.s``)."""
    shared = routine_source.beside(
        os.path.join(os.path.dirname(dest), FOLDER, label), hand_owned)
    if shared:
        return shared
    base = os.path.join(folder or dest, label)
    return routine_source.beside(base, hand_owned) or base + suffix


def _seed_aztec_c(cache, project, binary, label, entry, dest, folder=None):
    """``(text, generated)``: the routine's C, and whether it is a new seed.

    A hand-owned file already there is read; otherwise the seed is returned
    for the build to write.
    """
    path = c_path(dest, label, folder, cache.seed_suffix(entry))
    if hand_owned(path):
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
                or not (entry.get('labels') or entry.get('comments'))):
            continue
        out[label] = {
            'start': start,
            'end': start + (entry.get('original_length') or 0),
            'labels': {start + off: name for off, name in entry.get('labels', ())},
            'comments': {start + off: text
                         for off, text in entry.get('comments', ())},
        }
    for module, override in (c_overrides or {}).items():
        if 'start' not in override:
            continue
        start = override['start']
        end = start + override['length']
        inside = [label for label, note in out.items()
                  if start <= note['start'] < end]
        if not inside:
            continue
        merged = {'start': start, 'end': end, 'labels': {}, 'comments': {},
                  'owners': {module, *inside}}
        for label in inside:
            note = out.pop(label)
            merged['labels'].update(note['labels'])
            merged['comments'].update(note['comments'])
        out[module] = merged
    return out

