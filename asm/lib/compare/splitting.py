"""Function split-range selection and record partitioning."""

import re

from lib.compare.records import _record_span


def _select_split_ranges(label_map, split_functions, func_boundaries=None,
                         binary_size=None, c_override_lengths=None):
    """Select named function boundaries, ending each at the next split root.

    Starts come straight from the label offsets so a function's file always
    begins at its real entry.  Deriving starts from the heuristic boundary
    scan was unreliable: the 512-byte cap truncated long functions and the
    backward push-bp scan pulled starts into the preceding function.

    Functions that have a C override own exactly ``length`` bytes; their split
    range is capped there so non-C data after the routine stays in the master
    file instead of being absorbed into the C fragment.
    """
    requested = set(split_functions or ())
    c_override_lengths = c_override_lengths or {}
    selected = sorted(
        (off, name)
        for off, name in (label_map or {}).items()
        if name in requested
        and not name.startswith('data_')
        and not re.fullmatch(r'loc_[0-9a-fA-F]+', name)
    )

    ranges = []
    for index, (start, name) in enumerate(selected):
        if index + 1 < len(selected):
            original_end = selected[index + 1][0]
        else:
            original_end = None
            if func_boundaries and start in func_boundaries:
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
                    and not tail_name.startswith('data_')
                    and tail_end is not None and tail_end > capped):
                ranges.append((capped, tail_end, tail_name))
    return ranges


def _extend_split_ranges_with_local_tails(split_ranges, records):
    """Keep immediately following, referenced local blocks with their root."""
    if not split_ranges:
        return split_ranges

    labels_at = {}
    records_at = {}
    for rec in records:
        if rec['type'] == 'label':
            labels_at.setdefault(rec['offset'], []).append(
                rec['text'].removesuffix(':')
            )
        else:
            start, end = _record_span(rec)
            if end > start:
                records_at[start] = rec

    extended = []
    for start, end, name in split_ranges:
        scope_prefix = f'@..{name}.'
        while True:
            local_labels = [
                label for label in labels_at.get(end, ())
                if label.startswith(scope_prefix)
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
                    if label.startswith(scope_prefix)
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
            filename = re.sub(r'[^A-Za-z0-9_.-]+', '_', name).strip('._')
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
        filename = re.sub(r'[^A-Za-z0-9_.-]+', '_', name).strip('._')
        split_sources[f'{split_dir}/{filename}.asm'] = split_records[name]
    return main_records, split_sources
