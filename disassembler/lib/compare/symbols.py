"""Segment-aware operand symbolization and address inventory records."""

from capstone import CS_OP_MEM
from lib.names import is_data
from lib.symtab import Space, Symbol


def _data_space(segments, offset):
    """:class:`Space` ``DS`` or ``BSS`` of a data-segment offset (SegmentModel)."""
    if segments is not None and segments.data_space(offset) == 'bss':
        return Space.BSS
    return Space.DS


def data_symbol(segments, offset):
    """The symbol for data-segment *offset*: its known name, else generated."""
    named = getattr(segments, 'data_names', {}).get(offset)
    return named or Symbol.data(_data_space(segments, offset), offset)


def _load_offset(segments):
    """Where file offset 0 runs inside a raw driver's segment (plan.md D7.6).

    A ``[cs:disp]`` operand in a driver encodes ``file_offset + load_offset``
    (the host reads the module to ``segment:0x100``), so the file offset is
    ``disp - load_offset``.  ``0`` for the MZ/overlay images, whose CS base is
    their own first byte.
    """
    return getattr(segments, 'load_offset', 0) or 0


def _file_size(segments):
    return getattr(segments, 'file_size', 0) or 0


def _resolve_mem_symbols(insns, segment_flow, segments, label_map, start_offset):
    """Choose a segment-correct symbol for every absolute memory operand.

    Returns ``(mem_symbols, mem_equ)`` where ``mem_symbols`` maps
    ``(insn.address, operand_index)`` to the rendered effective address and
    ``mem_equ`` maps each newly introduced symbol name to the value it must
    ``equ``.  Segments come from ``lib.segdataflow``:

    * **LOAD** (CS) - the displacement is a load-image offset; reuse a code
      label at ``disp + IMAGE_BASE`` if one exists, else create ``cseg_<file>``,
      and render ``name - IMAGE_BASE``.  A raw driver runs at ``CS:0x100``
      (``load_offset``), so its displacement is ``file + 0x100`` and the file
      offset is ``disp - load_offset`` (plan.md D7.6).
    * **DATA** (DS/SS) - ``dseg_<off>`` when file-backed, ``bss_<off>`` past the
      BSS boundary.
    * **PSP** - ``psp_<field>`` for catalogued fields, else ``psp_<off>``.
    * **UNKNOWN** - left to the ``data_`` fallback (nothing emitted here).
    """
    if segment_flow is None:
        return {}, {}
    from lib.segdataflow import LOAD, DATA, PSP
    from lib.segments import psp_field

    symbols = {}
    equ = {}
    for insn in insns:
        for idx, op in enumerate(insn.operands):
            if (op.type != CS_OP_MEM or op.mem.base or op.mem.index):
                continue
            addr = op.mem.disp & 0xFFFF
            if addr == 0:
                continue
            _, space = segment_flow.effective_segment(insn, op)
            if space == LOAD:
                file_off = addr + start_offset - _load_offset(segments)
                size = _file_size(segments)
                if size and not 0 <= file_off < size:
                    # A driver displacement below its load offset names no
                    # byte of the module; leave it numeric rather than mint a
                    # negative ``cseg_``.
                    continue
                name = (label_map or {}).get(file_off)
                if name is None:
                    name = Symbol.data(Space.CSEG, file_off)
                    equ.setdefault(name, file_off)
                symbols[(insn.address, idx)] = f'{name} - IMAGE_BASE'
            elif space == PSP:
                name = Symbol.data(Space.PSP, addr, psp_field(addr))
                equ.setdefault(name, addr)
                symbols[(insn.address, idx)] = name
            elif space == DATA:
                name = data_symbol(segments, addr)
                equ.setdefault(name, addr)
                symbols[(insn.address, idx)] = name
    return symbols, equ


def _resolve_imm_symbols(insns, segment_flow, segments, label_map, mem_equ,
                         start_offset):
    """Symbols for immediates proven to point into a known segment.

    Uses :func:`lib.segdataflow.immediate_pointer_spaces` and returns entries
    keyed the same way as :func:`_resolve_mem_symbols`, so both share one
    ``mem_symbols`` map.
    """
    if segment_flow is None:
        return {}
    from lib.segdataflow import immediate_pointer_spaces, LOAD, DATA, PSP
    from lib.segments import psp_field

    proven = immediate_pointer_spaces(insns, segment_flow)
    by_addr = {insn.address: insn for insn in insns}
    file_size = segments.file_size if segments is not None else 0
    result = {}
    for (addr, idx), space in proven.items():
        insn = by_addr.get(addr)
        if insn is None or idx >= len(insn.operands):
            continue
        value = insn.operands[idx].imm & 0xFFFF
        if value == 0:
            continue
        if space == LOAD:
            file_off = value + start_offset - _load_offset(segments)
            if not 0 <= file_off < file_size:
                continue
            name = (label_map or {}).get(file_off)
            if name is None:
                name = Symbol.data(Space.CSEG, file_off)
                mem_equ.setdefault(name, file_off)
            result[(addr, idx)] = f'{name} - IMAGE_BASE'
        elif space == PSP:
            name = Symbol.data(Space.PSP, value, psp_field(value))
            mem_equ.setdefault(name, value)
            result[(addr, idx)] = name
        elif space == DATA:
            name = data_symbol(segments, value)
            mem_equ.setdefault(name, value)
            result[(addr, idx)] = name
    return result


def _build_address_records(insns, mem_symbols, mem_equ, segment_flow,
                           label_map, start_offset, data_labels=None,
                           reloc_targets=None, immediate_labels=None):
    """Summarize the Phase 4 resolution as inventory records (Phase 5/6).

    Each record names the symbol, its value, the space/kind/confidence it
    belongs to, and every instruction load address that references it.
    Segment-resolved operands are ``strong``; symbols reached by relative
    flow, MZ relocation, or an explicit sidecar assertion are ``certain``;
    plausible but unresolved ``data_`` names are ``candidate`` and are
    reported, never asserted.
    """
    from lib.inventory import classify, CERTAIN
    from lib.segdataflow import immediate_pointer_spaces

    proven_immediates = (
        immediate_pointer_spaces(insns, segment_flow)
        if segment_flow is not None else set())
    label_value = {}
    for off, label in (label_map or {}).items():
        if isinstance(label, str):
            label_value.setdefault(label, off)
    # The operand text spells the name; the symbol says what it is.
    symbol = {str(name): name for name in (*mem_equ, *label_value)}

    suffix = ' - IMAGE_BASE'
    records = {}
    for insn in insns:
        for idx in range(len(insn.operands)):
            key = (insn.address, idx)
            rendered = mem_symbols.get(key)
            if rendered is None:
                continue
            name = rendered[:-len(suffix)] if rendered.endswith(suffix) else rendered
            value = mem_equ.get(name)
            if value is None:
                value = label_value.get(name)
            if value is None:
                continue
            name = symbol.get(name, name)
            space, kind, source, confidence = classify(name)
            record = records.setdefault(name, {
                'name': name,
                'value': value,
                'space': space,
                'kind': kind,
                'source': source,
                'confidence': confidence,
                'referenced_by': [],
            })
            if key in proven_immediates:
                record['source'] = 'immediate'
            record['referenced_by'].append(insn.address)

    reloc_targets = reloc_targets or set()
    for addr, name in (data_labels or {}).items():
        if name in records:
            continue
        if is_data(name) and addr in reloc_targets:
            space, kind, source, confidence = 'ds', 'data', 'relocation', CERTAIN
        else:
            space, kind, source, confidence = classify(name)
        records[name] = {
            'name': name,
            'value': addr,
            'space': space,
            'kind': kind,
            'source': source,
            'confidence': confidence,
            'referenced_by': [],
        }

    for addr, name in (immediate_labels or {}).items():
        if name in records:
            continue
        records[name] = {
            'name': name,
            'value': addr,
            'space': 'unknown',
            'kind': 'candidate',
            'source': 'sidecar',
            'confidence': CERTAIN,
            'referenced_by': [],
        }
    return sorted(records.values(), key=lambda item: (item['value'], item['name']))
