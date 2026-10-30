"""Function split-range selection and record partitioning."""

import re
from bisect import bisect_left, bisect_right
from itertools import accumulate

from lib.compare.records import _record_span
from lib.names import is_address_label, is_data
from lib.sidecar.bands import band_for
from lib.symtab import Kind, Source

#: Tokens removed before looking for label references: quoted strings and the
#: trailing ``; 0x<offset>`` comment.
_NOT_CODE = re.compile(r"'(?:[^']|'')*'|\"[^\"]*\"|;[^\n]*")
_IDENT = re.compile(r'[A-Za-z_][A-Za-z0-9_.]*')
#: Labels that never root a fragment of their own.
_NOT_ROUTINES = (Kind.DATA, Kind.TABLE, Kind.ANCHOR)


def _roots_fragment(label):
    """True when a foreign tail *label* can be its own routine.

    Data, tables and anchors cannot, and neither can a switch arm: it is the
    dispatching routine's code, reached through its table.
    """
    return label.kind not in _NOT_ROUTINES and label.role != 'case'


def _file_stem(name):
    """Include-file stem for a function label.

    A trailing ``_`` is part of the label (``aztec_flsh_``) and a hand-written
    ``<label>.c`` is found by that exact name, so only leading ``.``/``_`` and
    trailing ``.`` are trimmed.
    """
    return re.sub(r'[^A-Za-z0-9_.-]+', '_', name).lstrip('._').rstrip('.')


def _select_split_ranges(label_map, split_functions, func_boundaries=None,
                         binary_size=None, c_override_lengths=None,
                         declared_roots=None, code_end=None,
                         code_start=None, c_override_roots=None):
    """Select named function boundaries, ending each at the next split root.

    Starts come straight from the label offsets so a function's file always
    begins at its real entry.  Deriving starts from the heuristic boundary
    scan was unreliable: the 512-byte cap truncated long functions and the
    backward push-bp scan pulled starts into the preceding function.

    A switch's case body (``role == 'case'``) never starts a range: it is the
    dispatching routine's code, so the routine's file runs through its bodies,
    table and dispatcher.

    A *declared* root (``declared_roots``) splits even when its label is a bare
    ``loc_<addr>``: a declared dispatch table names a function entry, so the
    entry owns its fragment whatever name a categorization heuristic left it
    with (D7.2c-2d).  Undeclared bare ``loc_`` names stay address labels and keep
    sharing their neighbour's fragment -- otherwise the ~1600 internal branch
    targets in the tree would each become a file.

    The last root has no successor to end it, so its heuristic boundary
    (``func_boundaries``: the first ``ret``, at most 512 bytes) would strand the
    rest of the code in the master file.  *code_end* (the end of the last decoded
    instruction) lets it run to the end of the code instead;
    ``_split_off_foreign_objects`` then cuts the neighbours it swallowed.

    Code before the first root (an overlay's entry routine, right after its
    header) has no predecessor to cut it, so when *code_start* (the first decoded
    instruction) carries a code label it starts a range of its own.

    Functions that have a C override own exactly ``length`` bytes; their split
    range is capped there so non-C data after the routine stays in the master
    file instead of being absorbed into the C fragment.  *c_override_roots*
    (``{start: label}``) is where each C fragment starts: a vendor module's
    first byte, which can come before the routine that names it.
    """
    requested = set(split_functions or ())
    declared = set(declared_roots or ())
    c_override_lengths = c_override_lengths or {}
    selected = sorted(
        (off, name)
        for off, name in (label_map or {}).items()
        if not is_data(name)
        and getattr(name, 'role', None) != 'case'
        and (off in declared
             or (name in requested
                 and not is_address_label(name)))
    )

    name = (label_map or {}).get(code_start)
    if (selected and code_start is not None and code_start < selected[0][0]
            and name is not None and not is_data(name)):
        selected.insert(0, (code_start, name))

    if c_override_roots:
        symbols = {str(sym): sym for sym in (label_map or {}).values()}
        moved = set(c_override_roots.values())
        selected = sorted(
            [(off, name) for off, name in selected
             if str(name) not in moved and off not in c_override_roots]
            + [(off, symbols.get(name, name))
               for off, name in c_override_roots.items()])

    # A split root strictly inside a C routine's own recovered extent (a
    # module's other entry points, or the one-instruction ``jmp`` exit tail a
    # routine's branches share) is part of that routine, not a neighbour; it
    # must not truncate the fragment.
    covered = [(off, off + c_override_lengths[off])
               for off, _ in selected if off in c_override_lengths]
    selected = [
        (off, name) for off, name in selected
        if not any(lo < off < hi for lo, hi in covered)
    ]

    ranges = []
    for index, (start, name) in enumerate(selected):
        if index + 1 < len(selected):
            original_end = selected[index + 1][0]
        else:
            original_end = None
            if code_end is not None and code_end > start:
                # It ends with the code, not in the data after it (an
                # overlay's data block), whatever the boundary scan found.
                original_end = code_end
            elif func_boundaries and start in func_boundaries:
                original_end = func_boundaries[start][0]
            if original_end is None:
                original_end = binary_size
        capped = None
        if start in c_override_lengths:
            boundary = start + c_override_lengths[start]
            if original_end is None or boundary < original_end:
                capped = boundary
        end = capped if capped is not None else original_end
        if end is None or end <= start:
            continue
        ranges.append((start, end, name))
        # A C routine's fragment ends at its compiled length.  Any real code
        # that follows it (up to the next split root) is a separate subroutine;
        # carve it out under its own label instead of dropping it into the
        # master file.
        if capped is not None:
            tail_end = original_end if original_end is not None else binary_size
            tail_name = (label_map or {}).get(capped)
            if (isinstance(tail_name, str) and tail_name not in requested
                    and not is_data(tail_name)
                    and tail_end is not None and tail_end > capped):
                ranges.append((capped, tail_end, tail_name))
    return ranges


def _extend_split_ranges_with_local_tails(split_ranges, records, fixed=()):
    """Keep immediately following, referenced local blocks with their root.

    A range starting in *fixed* (a C fragment) is left as it is.
    """
    if not split_ranges:
        return split_ranges

    labels_at = {}
    records_at = {}
    # (offset, text) of each instruction, in offset order, for the
    # "is a local label referenced inside the range" test below.
    insns = sorted((rec.get('offset', -1), rec.get('text', ''))
                   for rec in records
                   if rec.get('type') in ('mnem', 'db_with_comment'))
    insn_offsets = [off for off, _ in insns]
    for rec in records:
        if rec['type'] == 'label':
            labels_at.setdefault(rec['offset'], []).append(rec['name'])
        else:
            start, end = _record_span(rec)
            if end > start:
                records_at[start] = rec

    extended = []
    def scoped(label, name):
        return label.kind is Kind.LOCAL and label.owner == name

    for start, end, name in split_ranges:
        while start not in fixed:
            local_labels = [
                label for label in labels_at.get(end, ()) if scoped(label, name)
            ]
            referenced = any(
                any(label in text for label in local_labels)
                for _, text in insns[bisect_left(insn_offsets, start):
                                     bisect_left(insn_offsets, end)]
            )
            if not local_labels or not referenced:
                break

            cursor = end
            found_terminator = False
            while True:
                scoped_labels = [
                    label for label in labels_at.get(cursor, ())
                    if scoped(label, name)
                ]
                if labels_at.get(cursor) and not scoped_labels:
                    break
                rec = records_at.get(cursor)
                if rec is None or rec['type'] not in (
                        'mnem', 'db', 'db_with_comment'):
                    break
                rec_start, rec_end = _record_span(rec)
                if rec_start != cursor or rec_end <= cursor:
                    break
                cursor = rec_end
                mnemonic = rec.get('text', '').split(' ', 1)[0]
                if mnemonic in ('jmp', 'ljmp', 'ret', 'retf', 'retn',
                                'iret', 'hlt'):
                    found_terminator = True
                    break

            if not found_terminator:
                break
            end = cursor
        extended.append((start, end, name))
    return extended


def _split_off_foreign_objects(split_ranges, records, owners=None, fixed=()):
    """Cut a fragment's trailing neighbours into their own ranges.

    A fragment is cut at *named* routines only, so an unnamed tail -- a data blob
    (``cseg_XXXX`` + zeros) or a bare ``loc_<addr>`` callee -- is emitted inside
    the earlier routine's file.  Such an object is *foreign*: it is referenced
    from outside the fragment that defines it.  Leaving it glued makes identical
    code produce non-identical files (the address-named neighbour's spelling
    differs per binary and blocks ``lib.shared``) and puts a routine's bytes in a
    neighbour's file.

    Only the tail is touched: a foreign label after the last instruction the
    range's *own* root owns (``owners``) is a neighbour, a label inside the
    routine's own code is left alone.  A foreign *code* label (a subroutine) is
    promoted to its own range, so it gets its own file like any other routine.  A
    foreign *data* label is left for the master file -- a data-only fragment
    would not be a routine.  A range starting in *fixed* (a C fragment: a whole
    vendor module, its other entry points included) is never cut.
    """
    if not split_ranges:
        return split_ranges
    owners = owners or {}

    defs = {}
    spans = []
    for rec in records:
        if rec['type'] == 'label':
            if rec['name'].kind is not Kind.LOCAL:
                defs.setdefault(rec['name'], rec['offset'])
            continue
        start, end = _record_span(rec)
        if end > start:
            spans.append((start, end, rec))

    # Which label names does each emitted record mention?  Definitions are label
    # records; an ``include`` path names a file, not a label, so it is skipped.
    refs = {}
    for start, end, rec in spans:
        if rec['type'] == 'include':
            continue
        for token in set(_IDENT.findall(_NOT_CODE.sub(' ', rec.get('text', '')))):
            if token in defs:
                refs.setdefault(token, set()).add(start)

    def owner(offset):
        for index, (start, end, _) in enumerate(split_ranges):
            if start <= offset < end:
                return index
        return None

    result = []
    for index, (start, end, name) in enumerate(split_ranges):
        if start in fixed:
            result.append((start, end, name))
            continue
        own_end = start - 1
        for span_start, span_end, rec in spans:
            if (rec['type'] == 'mnem' and start <= span_start < end
                    and start in owners.get(span_start, ())):
                own_end = max(own_end, span_end)
        cuts = []
        kept = []
        for label, offset in defs.items():
            if not own_end <= offset < end:
                continue
            # A switch arm is the dispatching routine's code, reached through a
            # ``jump_table`` record (which names it without any ``text``).
            # Cutting here would strand the tail in the master file, since an
            # arm can never root a fragment of its own.
            if label.role == 'case':
                continue
            # A tail label the range's own code never names is a neighbour: it is
            # referenced from outside (a blob, a bare ``loc_`` callee) or not at
            # all (a dead name).  Either way it is not this routine's.
            # A named data object past the routine's code is its own object
            # even when that code reads it (``ega_palette``).
            if (any(owner(source) == index for source in refs.get(label, ()))
                    and not (label.kind is Kind.DATA
                             and label.source is Source.SIDECAR)):
                kept.append((offset, label))
                continue
            cuts.append((offset, label))
        # The range is about to be cut at the routines it carries, so a tail
        # label is the routine's own only when the piece it ends up in names
        # it: a data byte just before a promoted ``loc_`` callee, used only by
        # that callee, is a neighbour of the routine above it.
        bounds = sorted({start, end, *(offset for offset, label in cuts
                                       if _roots_fragment(label))})
        for offset, label in kept:
            if _roots_fragment(label):
                continue
            lo = max(b for b in bounds if b <= offset)
            hi = min(b for b in bounds if b > offset)
            if not any(lo <= source < hi for source in refs.get(label, ())):
                cuts.append((offset, label))
        if not cuts:
            result.append((start, end, name))
            continue
        cuts.sort()
        if cuts[0][0] > start:
            result.append((start, cuts[0][0], name))
        for position, (offset, label) in enumerate(cuts):
            if not _roots_fragment(label):
                continue
            next_offset = cuts[position + 1][0] if position + 1 < len(cuts) else end
            if next_offset > offset:
                result.append((offset, next_offset, label))
    result.sort()
    return result


def _cap_split_ranges_to_bands(split_ranges, bands):
    """Leave bytes past a routine's band for the leftover-data splitter.

    Band ends are inclusive; fragment ends are exclusive.  In particular,
    linker alignment between bands belongs to neither neighbouring routine.
    """
    result = []
    for start, end, name in split_ranges:
        band = band_for(bands, start)
        result.append((start, min(end, band[1] + 1) if band else end, name))
    return result


def _select_data_ranges(records, roots, binary_data=None, modules=()):
    """``[(start, end, name)]``: a file for each named data object.

    *roots* is ``{file offset: name}``, the data names bound to the exact byte
    they name.  An object runs from its root to the next label -- any label,
    an address-named one too, is another object -- or to the last byte of the
    data records that follow it without a gap or an instruction.  Like a bare
    ``loc_`` in code, an address-named object has no root and stays in the
    master file.

    *modules* are the library's data-only modules
    (:func:`lib.aztec.datamodules.data_modules`).  Where *binary_data* holds
    one exactly, under its own names, its objects are one file named for the
    module (:func:`lib.aztec.datamodules.stem`) and it ends where the module
    does: the vendor source is that file's C.
    """
    if not roots:
        return []
    from lib.compare.render import _DATA_RECORD_TYPES
    labels = sorted({rec['offset'] for rec in records if rec['type'] == 'label'
                     and rec['name'].kind is not Kind.LOCAL})
    spans = sorted(_record_span(rec) + (rec['type'],) for rec in records
                   if rec['type'] != 'label')
    ranges = []
    for start, name in sorted(roots.items()):
        stop = next((offset for offset in labels if offset > start), None)
        end = start
        for span_start, span_end, kind in spans:
            if span_end <= end:
                continue
            if (span_start > end or (stop is not None and span_start >= stop)
                    or kind not in _DATA_RECORD_TYPES + ('data_ptr',)
                    or kind == 'jump_table'):
                break
            end = span_end if stop is None else min(span_end, stop)
        if end > start:
            ranges.append((start, end, name))
    for module in modules or ():
        ranges = _group_module(ranges, roots, binary_data, module, spans)
    return ranges


def _group_data_ranges(ranges, records, groups):
    """*ranges* with each declared group ``(start, end, stem)`` made one file.

    A group is the sidecar's (a ``driver_slots`` ``file``, a CS
    ``code_data_names`` ``length``): it takes the ranges inside it, keeps the
    labels inside it, and must cover data records only, from a record
    boundary to a record boundary.
    """
    if not groups:
        return ranges
    from lib.compare.render import _DATA_RECORD_TYPES
    spans = [_record_span(rec) + (rec['type'],) for rec in records
             if rec['type'] != 'label']
    for start, end, stem in groups:
        for lo, hi, kind in spans:
            if hi <= start or lo >= end or lo == hi:
                continue
            if lo < start or hi > end:
                raise ValueError(f'{stem}: 0x{start:04x}..0x{end:04x} cuts the '
                                 f'record at 0x{lo:04x}..0x{hi:04x}')
            if kind not in _DATA_RECORD_TYPES + ('data_ptr',):
                raise ValueError(f'{stem}: 0x{start:04x}..0x{end:04x} holds a '
                                 f'{kind} record at 0x{lo:04x}')
        for lo, hi, name in ranges:
            if lo < end and hi > start and not (start <= lo and hi <= end):
                raise ValueError(f'{stem}: 0x{start:04x}..0x{end:04x} overlaps '
                                 f'{name} at 0x{lo:04x}..0x{hi:04x}')
        ranges = [r for r in ranges if not (start <= r[0] and r[1] <= end)]
        ranges.append((start, end, stem))
    return sorted(ranges)


#: Layout labels: the image's own frame (header sizes, the BSS block), never an
#: object's.  They stay in the master file, ahead of a fragment that starts on
#: the same byte.
LAYOUT_LABELS = frozenset({'__zcode_start', '__zdata_start'})


def _starts_object(name):
    """True when a label in leftover data names an object of its own.

    An anchor (``__zdseg_1444``, ``__zstr_0c80``) and an address name
    (``cseg_086e``) are only handles on a byte, so the run goes on past them.
    """
    return (name.kind not in (Kind.ANCHOR, Kind.LOCAL)
            and not name.generic)


def _select_leftover_data_ranges(records, claimed, name_at):
    """``[(start, end, name)]``: a file for each run of data no range takes.

    Every data byte belongs to some fragment, so the master file is layout
    only.  A run is the data bytes left between *claimed* ranges (functions,
    named objects), cut at any other record and at a layout label.  A named
    label inside it is an object of its own, up to the next label; a generic
    one is not.  A run is named for the label on its first byte, ``__z``
    dropped (``dseg_001e``), else ``name_at(offset)``.
    """
    from lib.compare.render import _DATA_RECORD_TYPES
    taken = sorted((start, end) for start, end, _ in claimed)
    pieces = []
    for rec in records:
        if rec['type'] == 'label':
            continue
        start, end = _record_span(rec)
        if rec['type'] not in _DATA_RECORD_TYPES + ('data_ptr',):
            pieces.append((start, end, False))
            continue
        for lo, hi in taken:
            if hi <= start or lo >= end:
                continue
            if lo > start:
                pieces.append((start, lo, True))
            start = max(start, hi)
            if start >= end:
                break
        if start < end:
            pieces.append((start, end, True))
    # A record that is not data (even an empty one, the code-to-data pad on
    # a binary without one) ends the run.
    runs = []
    broken = True
    for start, end, is_data in sorted(pieces):
        if not is_data:
            broken = True
            continue
        if runs and not broken and runs[-1][1] == start:
            runs[-1][1] = end
        else:
            runs.append([start, end])
        broken = False
    labels = {}
    for rec in records:
        if rec['type'] == 'label':
            labels.setdefault(rec['offset'], []).append(rec['name'])

    def names_object(off):
        return any(map(_starts_object, labels.get(off, ())))

    ranges = []
    for start, end in runs:
        # A named object ends at the next label, as one with a root does
        # (:func:`_select_data_ranges`); what follows is a run again.
        inside = sorted(off for off in labels if start <= off < end)
        cuts = {start, end}
        for at, off in enumerate(inside):
            if any(n in LAYOUT_LABELS for n in labels[off]):
                cuts.add(off)
            if names_object(off):
                cuts.add(off)
                cuts.add(inside[at + 1] if at + 1 < len(inside) else end)
        cuts = sorted(cuts)
        for lo, hi in zip(cuts, cuts[1:]):
            names = [n for n in labels.get(lo, ()) if n not in LAYOUT_LABELS]
            named = next((n for n in names if _starts_object(n)), None)
            if named is None and names:
                named = str(names[0]).removeprefix('__z')
            ranges.append((lo, hi, named or name_at(lo)))
    return ranges


def _group_module(ranges, roots, binary_data, module, spans):
    """*ranges* with *module*'s objects made one, when the image holds it.

    Its first object's root places it; every public must be a root at its
    own offset, the bytes must be the module's, and the module's end must be
    a record boundary.  Otherwise *ranges* is returned as it is.  A declared
    module may also hold address-named data, which has no root and so no range;
    it may not hold anything but data, and it may end inside a ``data_block``,
    which is only bytes (an address-named object can start there).
    """
    from lib.aztec.datamodules import stem
    from lib.compare.render import _DATA_RECORD_TYPES
    first = module.publics[0][0]
    base = next((at for at, name in roots.items() if str(name) == first),
                None)
    def ungrouped():
        if module.declared:
            raise ValueError(f'{module.file}: declared data length must cover '
                             'data records only and not end inside a record')
        return ranges
    if base is None or binary_data is None:
        return ungrouped()
    end = base + len(module.data)
    ends = {span_end for _, span_end, _ in spans}
    if module.declared:
        ends.update(at for lo, hi, kind in spans if kind == 'data_block'
                    for at in range(lo + 1, hi))
    if (bytes(binary_data[base:end]) != module.data or end not in ends
            or any(str(roots.get(base + offset)) != label
                   for label, offset in module.publics)):
        return ungrouped()
    inside = sorted(r for r in ranges if base <= r[0] < end)
    if module.declared:
        if any(lo < end and hi > base and lo != hi
               and kind not in _DATA_RECORD_TYPES + ('data_ptr',)
               for lo, hi, kind in spans):
            return ungrouped()
        return sorted([r for r in ranges if r not in inside]
                      + [(base, end, stem(module))])
    at = base
    for start, stop, _ in inside:
        if start != at:
            return ungrouped()
        # An inferred object can include unnamed padding after the module.
        # The checked record boundary permits cutting there; the leftover
        # data splitter retains the bytes beyond the module's exact length.
        at = min(stop, end)
    if at != end:
        return ungrouped()
    return sorted([r for r in ranges if r not in inside]
                  + [(base, end, stem(module))])


def _band_dir(split_dir, bands, start, name):
    """The folder a fragment starting at *start* is emitted into: the binary's
    own, or its band's beneath it when the sidecar declares ``bands``."""
    if not bands:
        return split_dir
    band = band_for(bands, start)
    if band is None:
        raise ValueError(f'{name}: 0x{start:x} is in no sidecar band of '
                         f'{split_dir}')
    return f'{split_dir}/{band[2]}'


def _layout_labels_first(records):
    """*records* with each layout label ahead of the labels on its byte.

    A layout label stays in the master file; one that follows a fragment's
    first label would be emitted after the fragment's include, past its byte.
    """
    out = []
    for rec in records:
        if rec['type'] == 'label' and rec.get('name') in LAYOUT_LABELS:
            at = len(out)
            while (at and out[at - 1]['type'] == 'label'
                   and out[at - 1]['offset'] == rec['offset']):
                at -= 1
            out.insert(at, rec)
        else:
            out.append(rec)
    return out


def _partition_function_records(records, split_ranges, split_dir, bands=(),
                                data_starts=(), file_stems=None):
    """Replace selected contiguous function spans with include records.

    *bands* (:mod:`lib.sidecar.bands`) puts each fragment in its band's
    folder (``ds/game/x.asm``).  A range starting in *data_starts* is a data
    object (:func:`_select_data_ranges`): its file goes in the binary's
    ``data`` folder (``vinstall/data/ctp_.asm``), banded or not.
    *file_stems* (``{start: stem}``, sidecar ``file``) names a fragment's
    file other than after its head label.
    """
    file_stems = file_stems or {}

    def folder(start, name):
        if start in data_starts:
            return f'{split_dir}/data'
        return _band_dir(split_dir, bands, start, name)

    if not split_ranges:
        return records, {}

    # Function bounds are heuristic and can land inside an instruction or
    # across un-emitted gaps (for example, when a label was matched to data).
    # Splitting is only a source-layout optimization, so leave any unsafe span
    # in the master file instead of failing the entire project build.
    ranges = []
    candidates = sorted(split_ranges, key=lambda item: item[0])
    # The non-label records' spans by start, and the furthest end reached by
    # any of them up to each one, so a range's records are found by bisection.
    extents = sorted((*_record_span(rec), rec['type'] == 'data_block')
                     for rec in records if rec['type'] != 'label')
    extent_starts = [rec_start for rec_start, _, _ in extents]
    reach = list(accumulate((rec_end for _, rec_end, _ in extents), max))
    for start, end, name in candidates:
        if start >= end:
            continue
        spans = []
        safe = True
        i = bisect_left(extent_starts, end) - 1
        while i >= 0 and reach[i] > start:
            rec_start, rec_end, is_block = extents[i]
            i -= 1
            if rec_end <= start:
                continue
            if not is_block and (rec_start < start or rec_end > end):
                safe = False
                break
            spans.append((max(start, rec_start), min(end, rec_end)))
        if safe:
            cursor = start
            for span_start, span_end in sorted(spans):
                if span_start != cursor:
                    safe = False
                    break
                cursor = span_end
            safe = safe and cursor == end
        if safe and (not ranges or start >= ranges[-1][1]):
            ranges.append((start, end, name))

    if not ranges:
        return records, {}

    # Data blocks can span a function's final byte and following data (or a
    # split boundary between adjacent named roots). Divide those aggregate
    # records at split boundaries so each byte is routed to the right source.
    boundaries = sorted({point for start, end, _ in ranges
                         for point in (start, end)})
    partitioned_records = []
    for rec in records:
        if rec['type'] != 'data_block':
            partitioned_records.append(rec)
            continue
        cuts = [rec['start']]
        cuts.extend(point for point in boundaries
                    if rec['start'] < point < rec['end'])
        cuts.append(rec['end'])
        partitioned_records.extend(
            {**rec, 'start': start, 'end': end}
            for start, end in zip(cuts, cuts[1:])
        )
    records = _layout_labels_first(partitioned_records)

    main_records = []
    split_records = {name: [] for _, _, name in ranges}
    split_bytes = {name: 0 for _, _, name in ranges}
    include_inserted = set()
    # The ranges are sorted and disjoint, so their starts and ends both are.
    range_starts = [start for start, _, _ in ranges]
    range_ends = [end for _, end, _ in ranges]

    for rec in records:
        rec_start, rec_end = _record_span(rec)
        owner = None
        if rec['type'] == 'label':
            if rec.get('name') in LAYOUT_LABELS:
                main_records.append(rec)
                continue
            i = bisect_right(range_starts, rec_start) - 1
            if i >= 0 and rec_start < range_ends[i]:
                owner = ranges[i]
        else:
            i = bisect_right(range_ends, rec_start)
            if i < len(ranges) and range_starts[i] < rec_end:
                start, end, name = owner = ranges[i]
                if rec_start < start or rec_end > end:
                    raise ValueError(
                        f'{name}: function boundary 0x{start:x}-0x{end:x} '
                        f'splits emitted record at 0x{rec_start:x}-0x{rec_end:x}'
                    )

        if owner is None:
            main_records.append(rec)
            continue

        start, end, name = owner
        if name not in include_inserted:
            filename = file_stems.get(start) or _file_stem(name)
            if not filename:
                raise ValueError(f'cannot make include filename for function {name!r}')
            main_records.append({
                'type': 'include',
                'text': f'%include "{folder(start, name)}'
                        f'/{filename}.asm"',
                'offset': start,
            })
            include_inserted.add(name)
        split_records[name].append(rec)
        if rec['type'] != 'label':
            split_bytes[name] += rec_end - rec_start

    for start, end, name in ranges:
        if name not in include_inserted:
            raise ValueError(f'{name}: no emitted records in split range 0x{start:x}-0x{end:x}')
        if split_bytes[name] != end - start:
            raise ValueError(
                f'{name}: split records cover {split_bytes[name]} bytes, '
                f'expected {end - start} for 0x{start:x}-0x{end:x}'
            )

    split_sources = {}
    for start, _, name in ranges:
        filename = file_stems.get(start) or _file_stem(name)
        split_sources[f'{folder(start, name)}/{filename}.asm'] = \
            split_records[name]
    return main_records, split_sources
