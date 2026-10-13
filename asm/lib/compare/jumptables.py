"""Switch/jump-table detection merging, injection and dispatcher rewriting."""

import struct

from capstone import CS_OP_MEM

from lib.verify.assemble import micro_assemble
from lib.compare.records import _record_span, _emit_label
from lib.names import startswith_stem


def _parse_hex_offset(value):
    """Parse a sidecar-style offset (hex string or int) or return None."""
    if value is None or isinstance(value, bool):
        return None
    try:
        return int(value, 16) if isinstance(value, str) else int(value)
    except (TypeError, ValueError):
        return None


def _merge_jump_table_specs(jump_tables, overrides, start_offset, total):
    """Combine auto-detected jump tables with sidecar overrides.

    Auto-detected tables are the default; a sidecar entry with the same
    ``table`` offset overrides or corrects its geometry.  Returns a sorted
    list of specs keyed by table offset.
    """
    specs = {}

    def _record(table_addr, jmp_addr, count, entry_size, source, note=''):
        if table_addr is None or not (0 <= table_addr < total):
            return
        entry_size = entry_size if entry_size and entry_size > 0 else 2
        if count is None:
            table_end = table_addr
        else:
            table_end = min(table_addr + count * entry_size, total)
        specs[table_addr] = {
            'table_addr': table_addr,
            'table_end': table_end,
            'jmp_addr': jmp_addr,
            'count': count,
            'entry_size': entry_size,
            'label': f'jumptable_{table_addr:04x}',
            'source': source,
            'note': note,
        }

    for table in jump_tables or ():
        table_addr = getattr(table, 'table_addr', None)
        if table_addr is None:
            continue
        table_end = getattr(table, 'table_end', 0) or 0
        if table_end > table_addr:
            count = (table_end - table_addr) // 2
        else:
            max_index = getattr(table, 'max_index', None)
            count = (max_index + 1) if max_index is not None else None
        _record(table_addr, getattr(table, 'jmp_addr', -1), count, 2, 'auto')

    for entry in overrides or ():
        if not isinstance(entry, dict):
            continue
        table_addr = _parse_hex_offset(entry.get('table'))
        if table_addr is None:
            continue
        existing = specs.get(table_addr)
        jmp_addr = _parse_hex_offset(entry.get('jmp'))
        if jmp_addr is None and existing:
            jmp_addr = existing['jmp_addr']
        entry_size = entry.get('entry_size')
        if entry_size is None and existing:
            entry_size = existing['entry_size']
        count = entry.get('count')
        if count is None and existing:
            count = existing['count']
        _record(table_addr, jmp_addr if jmp_addr is not None else -1, count,
                entry_size, 'sidecar', entry.get('note', ''))

    return [specs[addr] for addr in sorted(specs)]


def _usable_jump_label(off, label_map):
    """Return a global label at *off*, or None if it must be synthesized.

    ``data_`` labels and function-local labels are rejected: data targets get
    a readable case label, and local labels are not safely referenceable from
    a table that may live in another source file.
    """
    if not label_map:
        return None
    name = label_map.get(off)
    if not name:
        return None
    if startswith_stem(name, 'data_') or name.startswith('@..'):
        return None
    return name


def _records_overlapping(records, start, end):
    """Indices of non-label records whose span intersects [start, end)."""
    indices = []
    for i, rec in enumerate(records):
        if rec['type'] == 'label':
            continue
        rec_start, rec_end = _record_span(rec)
        if rec_start < end and rec_end > start:
            indices.append(i)
    return indices


def _ensure_jump_case_label(records, binary_data, off, name):
    """Insert a global case label at *off*, splitting a data block if needed.

    Returns True when the label is in place.  Mid-instruction offsets return
    False and fall back to a raw ``dw`` value.
    """
    for i, rec in enumerate(records):
        rtype = rec['type']
        if rtype == 'label':
            if rec['offset'] == off:
                records.insert(i, {
                    'type': 'label', 'text': _emit_label(name), 'offset': off,
                })
                return True
            continue
        rec_start, rec_end = _record_span(rec)
        if rec_start == off:
            records.insert(i, {
                'type': 'label', 'text': _emit_label(name), 'offset': off,
            })
            return True
        if rec_start < off < rec_end:
            if rtype != 'data_block':
                return False
            prefix = {**rec, 'end': off,
                      'bytes': [f'0x{b:02x}' for b in binary_data[rec_start:off]]}
            suffix = {**rec, 'start': off,
                      'bytes': [f'0x{b:02x}' for b in binary_data[off:rec_end]]}
            records[i:i + 1] = [
                prefix,
                {'type': 'label', 'text': _emit_label(name), 'offset': off},
                suffix,
            ]
            return True
    return False


def _ensure_global_label(records, binary_data, off, name):
    """Insert a global label at *off*, splitting a data block if needed.

    Shared by jump-table case synthesis and the dynamic-address rewrite of
    ``equ`` symbols (plan.md F3): placing the label at the byte makes the
    symbol's value follow a relocatable layout.  Returns True when the label is
    in place; a mid-instruction or out-of-range offset returns False so the
    caller keeps the literal ``equ``.
    """
    return _ensure_jump_case_label(records, binary_data, off, name)


def _jump_table_record(spec, entries):
    return {
        'type': 'jump_table',
        'start': spec['table_addr'],
        'end': spec['table_end'],
        'label': spec['label'],
        'jmp_addr': spec.get('jmp_addr', -1),
        'entry_size': spec.get('entry_size', 2),
        'entries': list(entries),
        'adjust': spec.get('adjust', 0),
        'literal': bool(spec.get('literal', False)),
        'note': spec.get('note', ''),
    }


def _replace_jump_span(records, binary_data, spec, entries):
    """Swap the records covering a table span for one jump_table record."""
    start = spec['table_addr']
    end = spec['table_end']
    lo = hi = None
    for i, rec in enumerate(records):
        if rec['type'] == 'label':
            continue
        rec_start, rec_end = _record_span(rec)
        if rec_start < end and rec_end > start:
            if lo is None:
                lo = i
            hi = i + 1

    if lo is None:
        # The span was not emitted as a contiguous data block; insert the
        # table record in offset order so it still gets rendered.
        out = list(records)
        insert_at = len(out)
        for i, rec in enumerate(out):
            if rec['type'] == 'label':
                continue
            rec_start, _ = _record_span(rec)
            if rec_start >= start:
                insert_at = i
                break
        out.insert(insert_at, _jump_table_record(spec, entries))
        return out

    out = list(records[:lo])
    for rec in records[lo:hi]:
        if rec['type'] == 'label' and rec['offset'] <= start:
            out.append(rec)

    first = records[lo]
    first_start, _ = _record_span(first)
    if first_start < start:
        out.append({**first, 'end': start,
                    'bytes': [f'0x{b:02x}' for b in binary_data[first_start:start]]})

    out.append(_jump_table_record(spec, entries))

    last = records[hi - 1]
    _, last_end = _record_span(last)
    if last_end > end:
        out.append({**last, 'start': end,
                    'bytes': [f'0x{b:02x}' for b in binary_data[end:last_end]]})

    out.extend(records[hi:])
    return out


def _inject_jump_tables(records, specs, binary_data, start_offset,
                        label_map, local_labels=None, o_corg=None):
    """Replace detected switch-table data blocks with readable records.

    Table entries are read as raw little-endian words (order and duplicates
    preserved -- ``JumpTableInfo.targets`` is a set and would collapse them).
    Targets that already have a global label reference it; otherwise a
    ``jumptable_<table>_case_<index>`` label is synthesized at the target.

    Overlay code addresses are ``o_corg``-based CS offsets, so a word *value*
    addresses file offset ``start_offset + (value - o_corg)`` and re-encodes as
    ``label - IMAGE_BASE + o_corg``.  MZ/driver words are load-image offsets
    (``value + start_offset``) and re-encode as ``label - IMAGE_BASE``.

    Returns ``(records, injected, synthesized)`` where *injected* maps each
    emitted table offset to its label and *synthesized* maps every generated
    name to its address (for the exported label map/``elf-rebuild`` resplice).
    """
    total = len(binary_data)
    injected = {}
    synthesized = {}
    # A synthesized case label must not land inside any detected table: for an
    # overlay a neighbouring table's span can cover it and drop the label when
    # that table is later replaced.  Fall back to the raw word in that case.
    table_ranges = []
    for spec in specs:
        if spec.get('entry_size') != 2:
            continue
        r_start = spec['table_addr']
        r_end = spec['table_end']
        floor = 2 if spec.get('literal') else 6
        if r_start < 0 or r_end > total or r_end - r_start < floor:
            continue
        if (r_end - r_start) % 2:
            r_end -= 1
        table_ranges.append((r_start, r_end))

    def _entry_target(value):
        if o_corg is not None:
            target = start_offset + (value - o_corg)
        else:
            target = value + start_offset
        return target if 0 <= target < total else None

    for spec in specs:
        if spec.get('entry_size') != 2:
            continue
        literal = bool(spec.get('literal'))
        start = spec['table_addr']
        end = spec['table_end']
        floor = 2 if literal else 6
        if start < 0 or end > total or end - start < floor:
            continue
        if (end - start) % 2:
            end -= 1
        count = (end - start) // 2

        overlap = _records_overlapping(records, start, end)
        if not overlap or any(
                records[i]['type'] not in ('data_block', 'db', 'db_with_comment')
                for i in overlap):
            continue

        resolved = []
        for index in range(count):
            value = struct.unpack_from('<H', binary_data, start + index * 2)[0]
            if literal:
                # Inline data, not a code-pointer table: keep every word raw.
                resolved.append((value, None))
                continue
            target = None
            if value != 0:
                target = _entry_target(value)
                if target is not None and (
                        start <= target < end
                        or any(r_start <= target < r_end
                               for r_start, r_end in table_ranges)):
                    target = None
            resolved.append((value, target))

        adjust = o_corg if o_corg is not None else 0
        label = f'jumptable_{start:04x}'
        spec = {**spec, 'table_end': end, 'label': label, 'adjust': adjust}

        entries = []
        case_names = {}
        for index, (value, target) in enumerate(resolved):
            if value == 0:
                entries.append(None)
                continue
            if literal:
                entries.append(value)
                continue
            name = None
            if target is not None:
                name = _usable_jump_label(target, label_map)
                if name is None:
                    name = case_names.get(target)
                if name is None:
                    candidate = f'jumptable_{start:04x}_case_{index}'
                    if _ensure_jump_case_label(records, binary_data, target,
                                               candidate):
                        case_names[target] = candidate
                        synthesized[candidate] = target
                        name = candidate
            entries.append(name if name is not None else value)

        records = _replace_jump_span(records, binary_data, spec, entries)
        if not literal:
            injected[spec['table_addr']] = spec['label']
        synthesized[spec['label']] = spec['table_addr']
    return records, injected, synthesized


def _rewrite_jump_dispatchers(records, disp_labels, start_offset,
                              label_map, local_labels, foreign_label_map,
                              immediate_labels, data_labels=None,
                              mem_symbols=None, mem_equ=None):
    """Rewrite switch dispatchers to reference the emitted table label.

    Only applied to mnemonics whose CS-relative displacement resolves to an
    injected table.  The rewritten line is round-trip assembled and must
    reproduce the original bytes before it replaces the literal form.
    """
    from lib.format import format_instruction

    for rec in records:
        if rec['type'] != 'mnem':
            continue
        insn = rec.get('_insn')
        if insn is None or insn.mnemonic not in (
                'jmp', 'ljmp', 'call', 'lcall'):
            continue
        disp = None
        for op in insn.operands:
            if op.type == CS_OP_MEM:
                disp = op.mem.disp & 0xFFFF
                break
        if disp is None or disp not in disp_labels:
            continue
        text = format_instruction(
            insn, label_map, local_labels, foreign_label_map,
            immediate_labels=immediate_labels, disp_labels=disp_labels,
            data_labels=data_labels, mem_symbols=mem_symbols,
        )
        if not text:
            continue
        original = bytes(insn.bytes)
        built = micro_assemble(
            text, insn.address, label_map, local_labels,
            foreign_label_map=foreign_label_map,
            immediate_labels=immediate_labels,
            disp_labels=disp_labels, image_base=start_offset,
            mem_equ=mem_equ,
        )
        if built and len(built) >= len(original) and built[:len(original)] == original:
            rec['text'] = text
    return records
