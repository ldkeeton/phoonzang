"""Resolve Aztec runtime routines to C and compile the current seeds."""

import os

from lib.shared import FOLDER

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

    Returns ``(overrides, entries)`` where *overrides* feeds the byte-preserving
    splice in :func:`lib.compare.verify` and *entries* records the
    winning provenance.

    ``ASM_AZTEC_PREBUILD=1`` runs the DOSBox search and writes
    ``.cache/<project>/prebuild/``; otherwise the prebuilt manifest is read and a
    missing prebuild is a hard error.  The seed ``.c`` files live in
    ``<out_dir>/<binary>/`` and are written only when absent, so a no-clean
    debug rebuild respects hand edits.
    """
    if not project or AZTEC_MUX_DISABLED:
        return {}, {}
    labels = [(addr, nm) for addr, nm in label_map.items()
              if getattr(nm, 'role', None) == 'aztec']
    dest = os.path.join(out_dir, name)
    known = {nm for nm in label_map.values() if isinstance(nm, str)}
    hand_c = sorted(f[:-2] for f in (os.listdir(dest) if os.path.isdir(dest)
                                     else ()) if f.endswith('.c'))
    shared_dir = os.path.join(out_dir, FOLDER)
    # C shared between binaries (lib.shared) lives in shared/; only the labels
    # this binary has are its own.
    shared_c = sorted(f[:-2] for f in (os.listdir(shared_dir)
                                       if os.path.isdir(shared_dir) else ())
                      if f.endswith('.c') and f[:-2] in known)
    if not labels and not hand_c and not shared_c:
        return {}, {}
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
        return {}, entries
    known = {nm for nm in label_map.values() if isinstance(nm, str)}
    shared_c = sorted(f[:-2] for f in (os.listdir(shared_dir)
                                       if os.path.isdir(shared_dir) else ())
                      if f.endswith('.c') and f[:-2] in known)

    orphans = sorted(f'{label}.c' for label in hand_c if label not in known)
    if orphans:
        raise SystemExit(f'error: C file(s) in {dest} with no matching asm '
                         f'routine: {", ".join(orphans)}')
    # A routine ends at the next fragment root.  The object's public extent can
    # run past it into a trailing ``static`` neighbour (``putc`` compiles
    # ``closall`` inside its extent; the splitter gives each its own fragment),
    # so the C override must own only its own fragment -- never the
    # neighbour's bytes or its ``.N`` labels.
    roots = sorted(function_roots or ())
    starts = {nm: addr for addr, nm in label_map.items()
              if isinstance(nm, str)}

    def owned_length(label, entry, func):
        length = entry.get('original_length') or len(func.code)
        start = starts.get(label)
        following = [r for r in roots if start is not None and r > start]
        if following:
            length = min(length, following[0] - start)
        return length

    overrides = {}
    for label, entry in entries.items():
        if cache.is_asm_entry(entry):
            continue  # hand-written: annotated, never recompiled (see below)
        text = _seed_aztec_c(cache, project, name, label, entry, dest)
        try:
            func = cache.compile_source(project, label, entry, text)
        except Exception as exc:
            raise SystemExit(f'error: {label}.c: compile failed ({exc})') from exc
        length = owned_length(label, entry, func)
        func = func.truncate(length)
        path = c_path(dest, label)
        overrides[label] = {
            # The linker resolves the routine's relocations against the build's
            # label maps once those exist (lib.compare.coverrides).
            'func': func, 'text': text, 'path': path,
            'own_key': cache.own_key(label, entry),
            'pristine': text == cache.seed_source_text(
                project, name, label, entry),
            'compile': (lambda t, _l=label, _e=entry:
                        cache.compile_source(project, _l, _e, t)),
            'code': func.code,
            'fixups': [(fx.offset, fixup_width(fx.kind))
                       for fx in func.fixups],
            'length': length,
            'source_version': entry['source_version'],
            'file': entry['file'], 'compiler': entry['compiler'],
            'includes': entry['includes'],
        }
    # A hand-written <label>.c with no compiled manifest entry (an application
    # routine, a miss, or a vendor-asm routine) replaces that routine too.  Its
    # original length runs to the next fragment root.
    for label in sorted(set(hand_c) | set(shared_c)):
        entry = entries.get(label)
        if entry is not None and not cache.is_asm_entry(entry):
            continue
        path = c_path(dest, label)
        with open(path) as f:
            text = f.read()
        entry = cache.default_entry(label, project)
        try:
            func = cache.compile_source(project, label, entry, text)
        except Exception as exc:
            raise SystemExit(f'error: {label}.c: compile failed ({exc})')
        start = starts.get(label)
        following = [r for r in roots if start is not None and r > start]
        overrides[label] = {
            'func': func, 'text': text, 'path': path,
            'own_key': cache.own_key(label, entry), 'pristine': False,
            'compile': (lambda t, _l=label, _e=entry:
                        cache.compile_source(project, _l, _e, t)),
            'code': func.code,
            'fixups': [(fx.offset, fixup_width(fx.kind))
                       for fx in func.fixups],
            'length': (following[0] - start) if following else len(func.code),
            'source_version': entry['source_version'],
            'file': entry['file'], 'compiler': entry['compiler'],
            'includes': entry['includes'],
        }
    _write_headers(out_dir, [(ov['text'], ov['includes'])
                             for ov in overrides.values()])
    return overrides, entries


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
                project, data, label_map, entries, start_offset).items():
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


#: Routines the runtime calls but the program defines.
_PROGRAM_NAMES = {'main'}


def _name_c_callees(project, binary, data, entries, label_map,
                    function_roots, start_offset=0):
    """Name each routine a recovered C routine calls, as the vendor C does.

    A call in the original image lands where the vendor source's callee is
    (``sprintf`` from ``ovloader.c``).  A label there the pipeline only
    derived from the address or its content (``ds_loc_LHHJ``) becomes that
    vendor routine (``aztec_sprintf``), so the C keeps the vendor's call; a
    routine the program defines (``main``, called by ``Croot``) takes the C
    name as it is.  So does an Aztec signature's name its own source did not
    match: a byte window can fire inside another routine (v5.2a ``fputs``'s
    lands in ``aputc``), and the call is proof.  A proven name, or the
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

    for label, entry in entries.items():
        start = starts.get(label)
        if start is None or cache.is_asm_entry(entry):
            continue
        try:
            func = cache.compile_source(
                project, label, entry,
                cache.seed_source_text(project, binary, label, entry))
        except Exception:
            continue    # the override's own compile reports it
        for fx in func.fixups:
            if fx.symbol_kind != 'GBLSYM' or fx.kind not in ('WREL', 'WABS') \
                    or fx.offset + 2 > len(func.code):
                continue
            site = start + fx.offset
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


def _write_headers(out_dir, sources_in):
    """Copy the vendor headers the C includes to ``<out_dir>/include/``.

    *sources_in* is ``[(text, includes version)]``.  The copy is what the C
    reads; the compile still reads the vendor's own directory, so a copy that
    differs from it (an edit, or two versions wanting one name) is an error
    rather than a header the build silently ignores.
    """
    from lib.autogen import stamp
    from lib.aztec import sources
    dest = os.path.join(out_dir, INCLUDE_FOLDER)
    for text, version in sources_in:
        for name, header in sources.headers(version, text).items():
            path = os.path.join(dest, name)
            want = stamp(header, path)
            if os.path.exists(path):
                with open(path) as f:
                    if f.read() == want:
                        continue
                raise SystemExit(
                    f'error: {path} differs from the {version} header the C '
                    f'compiles with; the compile reads the vendor copy, so '
                    f'this one must match it (make clean regenerates it)')
            os.makedirs(dest, exist_ok=True)
            with open(path, 'w') as f:
                f.write(want)


def c_path(dest, label):
    """The routine's ``.c``: the shared ``shared/`` copy when there is one."""
    shared = os.path.join(os.path.dirname(dest), FOLDER, f'{label}.c')
    return shared if os.path.exists(shared) else os.path.join(dest, f'{label}.c')


def _seed_aztec_c(cache, project, binary, label, entry, dest):
    """Return the routine's C text, writing a seed only when it is absent."""
    os.makedirs(dest, exist_ok=True)
    path = c_path(dest, label)
    if os.path.exists(path):
        with open(path) as f:
            return f.read()
    text = cache.seed_source_text(project, binary, label, entry)
    with open(path, 'w') as f:
        f.write(text)
    return text


def _aztec_asm_annotations(entries, label_map):
    """Vendor label names/comments for hand-written (``.asm``) routines.

    Returns ``{label: {'start', 'end', 'labels': {addr: name},
    'comments': {addr: text}}}`` with absolute addresses.  The disassembly's
    bytes already equal the vendor routine's; this only carries what the
    vendor source adds (the author's local label names and comments).
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
    return out

