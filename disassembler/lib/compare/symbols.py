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


def cseg_symbol(segments, file_off):
    """The symbol for a CS-reached byte at *file_off*: its sidecar name
    (``code_data_names``), else generated ``cseg_<file>``."""
    named = getattr(segments, 'cseg_names', {}).get(file_off)
    return named or Symbol.data(Space.CSEG, file_off)


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


def _host_space_limit(segments):
    """The end of the data space a cross-binary DS start may come from.

    An overlay's own data and BSS begin at ``o_dorg``; below it is the host's
    data segment, whose objects are the same in every binary.  An overlay-own
    address names a different object in each overlay, so it never comes from
    the union.  ``None`` (no limit) for the host itself.
    """
    if getattr(segments, 'kind', None) == 'overlay' and segments.overlay:
        return segments.overlay.get('o_dorg')
    return None


def _resolve_mem_symbols(insns, segment_flow, segments, label_map, start_offset,
                         ds_starts=frozenset(), indexed=True):
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

    An indexed DATA operand (``[bx - 0x7b7e]``) is bound only when its
    displacement is the start of a named object: one this binary addresses
    absolutely, a known data name, or a host-space start another binary names
    (*ds_starts*, the build's union).  A displacement in the DS range is not
    enough: record field offsets (``[si + 0x1a1]``) live there too.  With
    *indexed* false that pass is left to the caller, which runs
    :func:`_resolve_indexed_symbols` once the immediates have been named too.
    """
    if segment_flow is None:
        return {}, {}
    from lib.segdataflow import LOAD, DATA, PSP
    from lib.segments import psp_field

    symbols = {}
    equ = {}
    named = set()
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
                    name = cseg_symbol(segments, file_off)
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
                named.add(addr)
    if indexed:
        symbols.update(_resolve_indexed_symbols(
            insns, segment_flow, segments, named, ds_starts, equ))
    return symbols, equ


def _resolve_indexed_symbols(insns, segment_flow, segments, named, ds_starts,
                             equ):
    """Symbols for indexed DATA displacements that start a named object.

    *named* holds the DATA addresses this binary binds absolutely; the known
    data names and the host-space part of *ds_starts* are added to it.  A
    ``bp`` base is a frame slot and an indexed ``cs:`` table belongs to
    ``jumptables``, so neither is considered.
    """
    from capstone.x86 import X86_REG_BP, X86_REG_CS
    from lib.segdataflow import DATA
    from lib.compare.records import DS_INDEX_MIN

    starts = _object_starts(segments, named, ds_starts)
    symbols = {}
    for insn in insns:
        for idx, op in enumerate(insn.operands):
            if (op.type != CS_OP_MEM or not (op.mem.base or op.mem.index)
                    or op.mem.base == X86_REG_BP
                    or op.mem.segment == X86_REG_CS):
                continue
            addr = op.mem.disp & 0xFFFF
            if addr < DS_INDEX_MIN or addr not in starts:
                continue
            if segment_flow.effective_segment(insn, op)[1] != DATA:
                continue
            name = data_symbol(segments, addr)
            equ.setdefault(name, addr)
            symbols[(insn.address, idx)] = name
    return symbols


def _object_starts(segments, named, ds_starts):
    """DS offsets known to start an object: *named* here, a data name, or a
    host-space start another binary names (*ds_starts*)."""
    limit = _host_space_limit(segments)
    return (set(named) | set(getattr(segments, 'data_names', {}))
            | {a for a in ds_starts if limit is None or a < limit})


def _resolve_index_offset_symbols(insns, segment_flow, segments, named,
                                  ds_starts, equ, resolved):
    """Symbols for a DS table start added to an index.

    ``imul word [bp + 4]; add ax, 0x5bf4`` is the immediate spelling of
    ``[bx + 0x5bf4]``, so it binds under the same proof as
    :func:`_resolve_indexed_symbols`: the constant starts a named object.  A
    sum used through another segment, or a site already in *resolved*, is
    left alone.
    """
    from lib.segdataflow import index_offset_immediates, DATA
    from lib.compare.records import DS_INDEX_MIN

    starts = _object_starts(segments, named, ds_starts)
    by_addr = {insn.address: insn for insn in insns}
    symbols = {}
    for key, space in index_offset_immediates(insns, segment_flow).items():
        if key in resolved or space not in (None, DATA):
            continue
        value = by_addr[key[0]].operands[1].imm & 0xFFFF
        if value < DS_INDEX_MIN or value not in starts:
            continue
        name = data_symbol(segments, value)
        equ.setdefault(name, value)
        symbols[key] = str(name)
    return symbols


def _resolve_imm_symbols(insns, segment_flow, segments, label_map, mem_equ,
                         start_offset, extra_proven=None):
    """Symbols for immediates proven to point into a known segment.

    Uses :func:`lib.segdataflow.immediate_pointer_spaces` and returns entries
    keyed the same way as :func:`_resolve_mem_symbols`, so both share one
    ``mem_symbols`` map.  *extra_proven* adds proofs made elsewhere in the
    same ``{(address, operand): space}`` form (``lib.argpointers``).
    """
    if segment_flow is None:
        return {}
    from lib.segdataflow import immediate_pointer_spaces, LOAD, DATA, PSP
    from lib.segments import psp_field

    proven = dict(extra_proven or {})
    proven.update(immediate_pointer_spaces(insns, segment_flow))
    by_addr = {insn.address: insn for insn in insns}
    file_size = segments.file_size if segments is not None else 0
    result = {}
    for (addr, idx), space in proven.items():
        insn = by_addr.get(addr)
        if insn is None or idx >= len(insn.operands):
            continue
        op = insn.operands[idx]
        # ``lea reg, [disp]`` loads its displacement as the address.
        value = (op.mem.disp if op.type == CS_OP_MEM else op.imm) & 0xFFFF
        if value == 0:
            continue
        if space == LOAD:
            file_off = value + start_offset - _load_offset(segments)
            if not 0 <= file_off < file_size:
                continue
            name = (label_map or {}).get(file_off)
            if name is None:
                name = cseg_symbol(segments, file_off)
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


#: Bytes a code-segment string may hold, and the bytes that end one.
_PRINTABLE = range(0x20, 0x7F)
_STRING_ENDS = (0x00, 0x24)
#: How many instructions on a ``mov reg, string`` may look for its escape.
_ESCAPE_SCAN = 8


def code_string_immediates(insns, binary_data, segments, start_offset):
    """Prove ``mov reg16, imm16`` loads of code-segment string addresses.

    ``mov bx, 0x3307; mov [bp - 4], bx`` hands a file name (``"vga.drv"``)
    to a routine that opens it through ``DS=CS``: no use in sight proves the
    pointer, but the value starts a string in this image's own data (bytes no
    instruction covers, at least three printable then NUL or ``$``, not inside
    a longer run) and the register escapes unread -- stored to memory or
    pushed -- as a pointer does.  Returns ``{(address, 1): LOAD}``.  An
    overlay is skipped: its CS values are ``o_corg``-based.
    """
    from bisect import bisect_right
    from capstone import CS_OP_IMM, CS_OP_REG
    from lib.segdataflow import LOAD

    if segments is None or getattr(segments, 'overlay', None):
        return {}
    order = sorted(insns, key=lambda i: i.address)
    starts = [i.address for i in order]

    def covered(off):
        k = bisect_right(starts, off) - 1
        return k >= 0 and off < starts[k] + order[k].size

    def string_start(off):
        if not start_offset <= off < len(binary_data) or covered(off):
            return False
        if off > start_offset and not covered(off - 1) \
                and binary_data[off - 1] in _PRINTABLE:
            return False   # the middle of a longer string
        end = off
        while end < len(binary_data) and binary_data[end] in _PRINTABLE:
            end += 1
        return (end - off >= 3 and end < len(binary_data)
                and binary_data[end] in _STRING_ENDS)

    load_offset = _load_offset(segments)
    result = {}
    for k, insn in enumerate(order):
        ops = insn.operands
        if (insn.mnemonic != 'mov' or len(ops) != 2
                or ops[0].type != CS_OP_REG or ops[1].type != CS_OP_IMM
                or ops[0].size != 2 or ops[1].imm & 0xFFFF < 0x100):
            continue
        reg = ops[0].reg
        if not string_start((ops[1].imm & 0xFFFF) + start_offset - load_offset):
            continue
        for nxt in order[k + 1:k + 1 + _ESCAPE_SCAN]:
            nops = nxt.operands
            if (nxt.mnemonic == 'push' and nops and nops[0].type == CS_OP_REG
                    and nops[0].reg == reg) or (
                    nxt.mnemonic == 'mov' and len(nops) == 2
                    and nops[0].type == CS_OP_MEM
                    and nops[1].type == CS_OP_REG and nops[1].reg == reg):
                result[(insn.address, 1)] = LOAD
                break
            if reg in nxt.regs_access()[0] or reg in nxt.regs_access()[1] \
                    or nxt.mnemonic in ('jmp', 'call', 'ret', 'retf', 'int') \
                    or nxt.mnemonic.startswith('j'):
                break
    return result


#: Instructions whose immediate a sidecar ``immediate_pointers`` entry may name.
_DECLARABLE = ('mov', 'add', 'sub', 'cmp')


def _resolve_declared_immediates(insns, declared, segments, label_map, mem_equ,
                                 start_offset, owner=''):
    """Symbols for the sidecar's ``immediate_pointers`` (``op reg16, imm16``).

    Segment dataflow proves an immediate by its use; a register loaded with a
    table's address and then overwritten unread (``mov di, 0x1a3a`` in a
    routine that indexes that table as ``[cs:bx + 0x1a3a]``) has no use to
    prove it by, yet its value still moves with the table.  So does a table's
    end in a loop bound (``cmp bx, 0xe3a``) or its start taken back off a
    pointer (``sub bx, 0x257d``).  Each entry names the instruction's file
    ``offset`` and the ``space`` (``cs`` or ``ds``); the instruction must be
    ``mov``/``add``/``sub``/``cmp reg16, imm16`` whose value is a byte of this
    image (``cs``) or of its data segment (``ds``: a row of a DS array added
    to a scaled index, ``imul``'d by the row size), or the sidecar is wrong and
    this raises.  A ``cs`` entry in an overlay is not supported (its CS values
    are ``o_corg``-based); a ``ds`` name is the same in every binary.
    """
    from capstone import CS_OP_IMM, CS_OP_REG
    from lib.sidecar.errors import SidecarError

    if not declared:
        return {}
    by_addr = {insn.address: insn for insn in insns}
    file_size = _file_size(segments)
    result = {}
    for entry in declared:
        where = f'{owner}.immediate_pointers[0x{entry["offset"]:04x}]'
        space = entry.get('space', 'cs')
        if space not in ('cs', 'ds') or (
                space == 'cs' and getattr(segments, 'overlay', None)):
            raise SidecarError(
                f'{where}: only a ds or non-overlay cs pointer is supported')
        insn = by_addr.get(entry['offset'])
        ops = insn.operands if insn is not None else ()
        if (insn is None or insn.mnemonic not in _DECLARABLE or len(ops) != 2
                or ops[0].type != CS_OP_REG or ops[1].type != CS_OP_IMM
                or ops[0].size != 2):
            raise SidecarError(f'{where}: not a decoded `op reg16, imm16`')
        value = ops[1].imm & 0xFFFF
        if space == 'ds':
            if segments is None or segments.data_space(value) is None:
                raise SidecarError(f'{where}: this image has no data segment')
            name = data_symbol(segments, value)
            mem_equ.setdefault(name, value)
            result[(insn.address, 1)] = str(name)
            continue
        file_off = value + start_offset - _load_offset(segments)
        if not 0 <= file_off < file_size:
            raise SidecarError(
                f'{where}: 0x{value:04x} names no byte of the image')
        name = (label_map or {}).get(file_off)
        if name is None:
            name = cseg_symbol(segments, file_off)
            mem_equ.setdefault(name, file_off)
        result[(insn.address, 1)] = f'{name} - IMAGE_BASE'
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
