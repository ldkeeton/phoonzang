"""Switch/jump-table detection merging, injection and dispatcher rewriting."""

import struct

from capstone import CS_OP_MEM

from lib.verify.assemble import micro_assemble
from lib.compare.records import _record_span, _label_record
from lib.names import is_data
from lib.symtab import Kind, Source, Space, Symbol


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

    def _record(table_addr, jmp_addr, count, entry_size, source, note='',
                keys=0):
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
            'label': _table_symbol(table_addr),
            'source': source,
            'note': note,
            'keys': keys,
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
        keys = getattr(table, 'keys', 0) or 0
        _record(table_addr, getattr(table, 'jmp_addr', -1), count, 2,
                'inline_switch' if keys else 'auto',
                'inline switch: keys, then case targets' if keys else '',
                keys=keys)

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
                entry_size, 'sidecar', entry.get('note', ''),
                keys=existing['keys'] if existing else 0)

    return [specs[addr] for addr in sorted(specs)]


def _table_symbol(offset):
    return Symbol.generated('jumptable', offset, Kind.TABLE)


def _case_symbol(table, index, target):
    """The label synthesized at a table entry's *target*."""
    return Symbol(f'jumptable_{table:04x}_case_{index}', kind=Kind.LABEL,
                  source=Source.ADDRESS, offset=target, base='jumptable_case',
                  role='case')


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
    if is_data(name) or name.kind is Kind.LOCAL:
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
    False and fall back to a raw ``dw`` value.  Idempotent: a second call for the
    same name at the same offset is a no-op, so asking twice cannot emit a
    duplicate symbol.
    """
    for i, rec in enumerate(records):
        rtype = rec['type']
        if rtype == 'label':
            if rec['offset'] == off and rec['name'] == name:
                return True
            if rec['offset'] == off:
                records.insert(i, _label_record(name, off))
                return True
            continue
        rec_start, rec_end = _record_span(rec)
        if rec_start == off:
            records.insert(i, _label_record(name, off))
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
                _label_record(name, off),
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
        'keys': spec.get('keys', 0),
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
                        label_map, local_labels=None, o_corg=None,
                        load_offset=0):
    """Replace detected switch-table data blocks with readable records.

    Table entries are read as raw little-endian words (order and duplicates
    preserved -- ``JumpTableInfo.targets`` is a set and would collapse them).
    Targets that already have a global label reference it; otherwise a
    ``jumptable_<table>_case_<index>`` label is synthesized at the target.

    Overlay code addresses are ``o_corg``-based CS offsets, so a word *value*
    addresses file offset ``start_offset + (value - o_corg)`` and re-encodes as
    ``label - IMAGE_BASE + o_corg``.  MZ words are load-image offsets
    (``value + start_offset``) and re-encode as ``label - IMAGE_BASE``.  A raw
    driver runs at ``CS:load_offset``, so its words are ``file + load_offset``
    (``value + start_offset - load_offset``); ``IMAGE_BASE`` is ``-load_offset``,
    so ``label - IMAGE_BASE`` re-encodes them unchanged.

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
            target = value + start_offset - load_offset
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
        keys = spec.get('keys', 0)

        overlap = _records_overlapping(records, start, end)
        if not overlap or any(
                records[i]['type'] not in ('data_block', 'db', 'db_with_comment')
                for i in overlap):
            continue

        resolved = []
        for index in range(count):
            value = struct.unpack_from('<H', binary_data, start + index * 2)[0]
            if literal or index < keys:
                # Inline data or a switch key, not a code pointer: keep raw.
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
        label = _table_symbol(start)
        spec = {**spec, 'table_end': end, 'label': label, 'adjust': adjust}

        entries = []
        case_names = {}
        for index, (value, target) in enumerate(resolved):
            if value == 0:
                entries.append(None)
                continue
            if literal or index < keys:
                entries.append(value)
                continue
            name = None
            if target is not None:
                name = _usable_jump_label(target, label_map)
                if name is None:
                    name = case_names.get(target)
                if name is None:
                    candidate = _case_symbol(start, index, target)
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


_TABLE_RECORD_TYPES = ('data_block', 'db', 'db_with_comment', 'jump_table')


def _cs_table_symbol(records, off, mem_equ):
    """The name for file offset *off* inside a carved data object, or None.

    An injected table answers ``label`` / ``label + k`` (its span is one
    record, so a label cannot sit inside it); a label already on the byte is
    reused; any other data byte gets a ``cseg_`` name in *mem_equ*, which the
    dynamic-address pass then places as a label (plan.md F3).  A byte that is
    code, a header or outside every record names no table.
    """
    covering = None
    label = None
    for rec in records:
        if rec['type'] == 'label':
            if rec['offset'] == off and label is None:
                label = rec['name']
            continue
        start, end = _record_span(rec)
        if start == off or start < off < end:
            covering = rec
            break
    if covering is None or covering['type'] not in _TABLE_RECORD_TYPES:
        return None
    if covering['type'] == 'jump_table':
        k = off - covering['start']
        return covering['label'] if k == 0 else f"{covering['label']} + 0x{k:x}"
    if label is not None:
        return label
    name = Symbol.data(Space.CSEG, off)
    mem_equ.setdefault(name, off)
    return name


def _bind_cs_table_operands(records, binary_data, start_offset, label_map,
                            local_labels, foreign_label_map, immediate_labels,
                            data_labels=None, mem_symbols=None, mem_equ=None,
                            load_offset=0, o_corg=None):
    """Name the table in every ``[cs:reg + disp]`` operand (plan.md §5).

    ``mov dx, [cs:bx + 0x5a5]`` or ``jmp [cs:bx + 0x5415]`` indexes a table in
    the code segment: the displacement is the table's CS address, so it moves
    whenever the table does.  When the displacement lands on a carved data
    object of this image (an injected table, a data block, a string) it is
    rewritten over that object's label.  A displacement on code, below the
    image or past it is a field offset or an unknown pointer and stays.

    The CS address of file offset ``F`` is ``F - IMAGE_BASE`` for an MZ or a
    driver (``IMAGE_BASE`` is ``-load_offset`` there) and
    ``F - IMAGE_BASE + __zres_end`` for an overlay, whose code runs at
    ``o_corg`` -- the same spelling as ``o_entry`` and the table words.  Each
    rewritten line must assemble back to the original bytes.
    """
    from lib.format import format_instruction

    if mem_symbols is None or mem_equ is None:
        return records
    total = len(binary_data)
    suffix = ' - IMAGE_BASE' + (' + __zres_end' if o_corg is not None else '')

    planned = []
    for rec in records:
        if rec['type'] != 'mnem':
            continue
        insn = rec.get('_insn')
        if insn is None:
            continue
        for idx, op in enumerate(insn.operands):
            if (op.type != CS_OP_MEM or not (op.mem.base or op.mem.index)
                    or insn.reg_name(op.mem.segment or 0) != 'cs'):
                continue
            disp = op.mem.disp & 0xFFFF
            if disp == 0:
                continue        # ``[cs:bx]``: a pointer, not a table base
            if o_corg is not None:
                off = start_offset + disp - o_corg
            else:
                off = disp + start_offset - load_offset
            if not start_offset <= off < total:
                continue
            name = _cs_table_symbol(records, off, mem_equ)
            if name is not None:
                planned.append((rec, insn, idx, f'{name}{suffix}'))
    if not planned:
        return records

    # One prelude for every check: the names the rewrites spell, at their
    # file offsets, plus the overlay origin (``IMAGE_BASE`` is the file-offset
    # model's ``start_offset - load_offset``).
    known = {str(n) for m in (label_map, local_labels, foreign_label_map,
                              immediate_labels) for n in (m or {}).values()}
    defs = {name: value for name, value in mem_equ.items()
            if str(name) not in known}
    for rec in records:
        if rec['type'] == 'label' and rec['name'] not in known:
            defs.setdefault(rec['name'], rec['offset'])
        elif rec['type'] == 'jump_table' and rec['label'] not in known:
            defs.setdefault(rec['label'], rec['start'])
    if o_corg is not None:
        defs['__zres_end'] = o_corg
    image_base = start_offset - load_offset

    for rec, insn, idx, expr in planned:
        previous = mem_symbols.get((insn.address, idx))
        mem_symbols[(insn.address, idx)] = expr
        text = format_instruction(
            insn, label_map, local_labels, foreign_label_map,
            immediate_labels=immediate_labels, data_labels=data_labels,
            mem_symbols=mem_symbols,
        )
        original = bytes(insn.bytes)
        built = text and micro_assemble(
            text, insn.address, label_map, local_labels,
            foreign_label_map=foreign_label_map,
            immediate_labels=immediate_labels,
            image_base=image_base, mem_equ=defs,
        )
        if built and built[:len(original)] == original:
            rec['text'] = text
        elif previous is None:
            del mem_symbols[(insn.address, idx)]
        else:
            mem_symbols[(insn.address, idx)] = previous
    return records
