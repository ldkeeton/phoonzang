"""Function split-range selection and record partitioning."""

import re

from lib.compare.records import _record_span
from lib.names import is_address_label, is_data
from lib.symtab import Kind

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
            if func_boundaries and start in func_boundaries:
                original_end = func_boundaries[start][0]
                if code_end is not None and code_end > original_end:
                    original_end = code_end
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
                rec.get('type') in ('mnem', 'db_with_comment')
                and start <= rec.get('offset', -1) < end
                and any(label in rec.get('text', '') for label in local_labels)
                for rec in records
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
            if any(owner(source) == index for source in refs.get(label, ())):
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


def _partition_function_records(records, split_ranges, split_dir):
    """Replace selected contiguous function spans with include records."""
    if not split_ranges:
        return records, {}

    # Function bounds are heuristic and can land inside an instruction or
    # across un-emitted gaps (for example, when a label was matched to data).
    # Splitting is only a source-layout optimization, so leave any unsafe span
    # in the master file instead of failing the entire project build.
    ranges = []
    candidates = sorted(split_ranges, key=lambda item: item[0])
    for start, end, name in candidates:
        if start >= end:
            continue
        spans = []
        safe = True
        for rec in records:
            if rec['type'] == 'label':
                continue
            rec_start, rec_end = _record_span(rec)
            if rec_start >= end or rec_end <= start:
                continue
            if rec['type'] != 'data_block' and (
                    rec_start < start or rec_end > end):
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
    records = partitioned_records

    main_records = []
    split_records = {name: [] for _, _, name in ranges}
    split_bytes = {name: 0 for _, _, name in ranges}
    include_inserted = set()

    for rec in records:
        rec_start, rec_end = _record_span(rec)
        owner = None
        for start, end, name in ranges:
            if rec['type'] == 'label':
                if start <= rec_start < end:
                    owner = (start, end, name)
                    break
            elif rec_start < end and rec_end > start:
                if rec_start < start or rec_end > end:
                    raise ValueError(
                        f'{name}: function boundary 0x{start:x}-0x{end:x} '
                        f'splits emitted record at 0x{rec_start:x}-0x{rec_end:x}'
                    )
                owner = (start, end, name)
                break

        if owner is None:
            main_records.append(rec)
            continue

        start, end, name = owner
        if name not in include_inserted:
            filename = _file_stem(name)
            if not filename:
                raise ValueError(f'cannot make include filename for function {name!r}')
            main_records.append({
                'type': 'include',
                'text': f'%include "{split_dir}/{filename}.asm"',
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
    for _, _, name in ranges:
        filename = _file_stem(name)
        split_sources[f'{split_dir}/{filename}.asm'] = split_records[name]
    return main_records, split_sources
