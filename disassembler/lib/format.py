"""Format capstone instruction objects to valid NASM assembly text.

Every edge case between capstone's Intel-syntax output and NASM's
syntax requirements lives here.  Uses capstone's *detailed* operand
API so we build the text from structured data, never by regex-parsing
capstone's op_str.

Address spaces
--------------
The recovered DOS image has more than one address space, but early
revisions had a single ``label_map`` keyed by file offset, which
conflated them:

* **F (file/listing offset)** - where code labels (``loc_``, ``aztec_``,
  ``app_``, ``string_``, ``leaf_``) live.  ``label_map`` is keyed by F and
  the generated listing's ``; 0xADDR`` comments are F.
* **L (load/segment offset)** - what the code embeds in absolute operands.
  For the code segment, ``F = L + IMAGE_BASE`` (``IMAGE_BASE`` is the load
  offset: ``0x200`` for an EXE, ``14`` for an overlay (its 14-byte Aztec
  header), ``0`` for a driver).  Embedded pointers are therefore rendered
  ``symbol - IMAGE_BASE``.

  The ``cseg_<file>`` round-trip depends on this: the raw displacement is a
  *file* offset minus ``IMAGE_BASE``, so the symbol's ``equ`` value is
  ``disp + IMAGE_BASE`` (``start_offset + disp``).  Overlay jump-table
  *entry values*, by contrast, are ``o_corg``-based; those are converted with
  ``SegmentModel.code_offset`` when the table is injected, not here.  Keeping
  the two conventions apart is what lets ``name - IMAGE_BASE`` reassemble
  byte-exactly (7E.5/7C).
* **DATA** - the program's data segment.  ``DS:o`` addresses file
  ``hdr + e_ss*16 + o``, which is yet another offset from F and L.  Part of
  this segment is file-backed and part is BSS (beyond the BSS boundary
  ``load_size - e_ss*16``); see ``lib.segments``.
* **PSP** - the Program Segment Prefix.  ``DS:o`` before the CRT reassigns
  DS addresses the PSP, not the data segment (e.g. ``[2]`` is top-of-memory,
  ``[0x2c]`` the environment segment, ``[0x80]`` the command tail).

An *overlay* executes inside its host's data segment, so its DATA is layered:
host file-backed data (``dseg_``), host BSS (``bss_``), then the overlay's
own initialized data at ``o_dorg`` (``dseg_``) and its BSS above
``o_dorg + o_dsize`` (``bss_``).  ``SegmentModel.data_space`` implements the
split; the address inventory records it per binary.

Callers therefore pass three separate namespaces: code labels for flow
(``label_map``/``local_labels``/``foreign_label_map``), the data namespace
for absolute memory displacements (``data_labels``), and an explicit
sidecar (``immediate_labels``) for the few immediates proven to be
addresses.  An immediate is never symbolized from the code map: the same
numeric value can be a constant (``mov cx, 2``) or a pointer in another
segment.

``lib.segdataflow`` resolves which space each operand actually addresses and
supplies ``mem_symbols`` (keyed ``(insn.address, operand_index)``); when an
entry is present it overrides the raw displacement for both absolute memory
displacements and proven immediate pointers.  The namespaces it introduces:

* ``cseg_<file>`` - a symbol in the **code/load segment** (file offset),
  rendered ``cseg_<file> - IMAGE_BASE``.  An existing code/data label at the
  same file offset is reused when one exists.
* ``dseg_<off>`` - a **file-backed data-segment** offset.
* ``bss_<off>`` - a data-segment offset **past the BSS boundary**.
* ``psp_<field>`` - a **PSP** field (``psp_<off>`` when not catalogued).
"""

from capstone import CS_OP_MEM, CS_OP_REG, CS_OP_IMM
from capstone.x86 import X86_REG_INVALID

# Accumulator-specific ALU opcodes that need 'strict word' in NASM
_AX_ALU = {0x05, 0x0D, 0x15, 0x1D, 0x25, 0x2D, 0x35, 0x3D}

# String ops — NASM wants bare mnemonic (implicit operands)
_STR_OPS = {
    'stosb','stosw','lodsb','lodsw','movsb','movsw',
    'scasb','scasw','cmpsb','cmpsw','insb','insw','outsb','outsw',
}

# Standalone bytes that vanish when written as NASM mnemonics
_STANDALONE_PREFIX = {0x26, 0x2E, 0x36, 0x3E, 0xF0, 0xF2, 0xF3}

# Segment override first bytes
_SEG_PREFIXES = {0x26, 0x2E, 0x36, 0x3E}

# Legacy prefixes that may precede the opcode byte.  The opcode-dependent
# encoding decisions below (group-1 immediate width, accumulator ALU forms)
# must look past these, otherwise a segment override hides the opcode.
_PREFIX_BYTES = {0x26, 0x2E, 0x36, 0x3E, 0x66, 0x67, 0xF0, 0xF2, 0xF3}

# x87 FPU memory-operand size by escape opcode byte, for the escapes whose
# memory forms all share one size: D8/DA -> dword, DC -> qword, DE -> word.
# 0xD9/0xDB/0xDD are omitted because their memory forms mix sizes (dword,
# qword, tbyte, control word); those already carry a capstone size when
# unambiguous.  Capstone omits the size for the arithmetic forms, which is
# what leaves `fadd [si]` (0xDC) unencodable in NASM without a hint.
_FPU_MEM_SIZE = {
    0xD8: 'dword', 0xDA: 'dword', 0xDC: 'qword', 0xDE: 'word',
}

# Ops that need implicit count=1 in NASM  (capstone drops it)
_OPS_NEED_IMPLICIT_ONE = {
    'rcl','rcr','rol','ror','sal','sar','shl','shr',
}


def _opcode_byte(insn):
    """Return the opcode byte, skipping any leading legacy prefixes."""
    b = insn.bytes
    i = 0
    while i < len(b) - 1 and b[i] in _PREFIX_BYTES:
        i += 1
    return b[i]


def _is_far(insn):
    b0 = insn.bytes[0]
    return b0 in (0xEA, 0x9A) or insn.mnemonic in ('ljmp','lcall')


def _has_prefix(insn, prefix_byte):
    for p in insn.prefix:
        if p == prefix_byte:
            return True
    # also check insn.bytes[0] as fallback
    return insn.bytes[0] == prefix_byte


def _fmt_imm(val, bits=16):
    mask = (1 << bits) - 1
    uval = val & mask
    if uval <= 9:
        return str(uval)
    if bits <= 8:
        return f'0x{uval:02x}'
    if uval < 0x1000:
        return f'0x{uval:x}'
    return f'0x{uval:04x}'


def _fmt_mem(op, insn, op_index=None, data_labels=None, foreign_label_map=None,
             local_labels=None, disp_labels=None, mem_symbols=None):
    """Render a memory operand.

    Absolute displacements (no base/index register) are drawn only from the
    *data* namespace (``data_labels``), never the code-label map.  A numeric
    displacement can coincide with a code label at the same file offset, but
    the operand addresses data in some segment, so substituting a code label
    there conflates two address spaces.  Flow targets keep using code labels.

    ``mem_symbols`` (keyed ``(insn.address, operand_index)``) carries the
    segment-aware symbol chosen by ``lib.segdataflow``; when present it
    replaces the generic ``data_`` fallback for an absolute operand.
    """
    seg = insn.reg_name(op.mem.segment) if op.mem.segment else ''
    base = insn.reg_name(op.mem.base) if op.mem.base else ''
    idx = insn.reg_name(op.mem.index) if op.mem.index else ''
    disp = op.mem.disp

    # 16-bit real-mode: base reg or just displacement
    regs = []
    if base:
        regs.append(base)
    if idx:
        regs.append(idx)
    inner = ' + '.join(regs) if regs else ''
    if inner and getattr(insn, 'disp_size', 0) == 2 and -128 <= disp <= 127:
        # The original encodes a 16-bit displacement whose value also fits in
        # a signed byte; NASM would shorten it to disp8, changing the
        # instruction length.  Force the word-sized form: [word bx + 0x4a].
        inner = 'word ' + inner

    # displacement
    addr = disp & 0xFFFF
    override = mem_symbols.get((insn.address, op_index)) if mem_symbols else None
    sym = disp_labels.get(addr) if disp_labels else None
    if sym is not None:
        # A switch-table displacement: render as the load-image symbol so the
        # emitted source names the table instead of an opaque constant.
        if inner:
            ea = f'{inner} + {sym} - IMAGE_BASE'
        else:
            ea = f'{sym} - IMAGE_BASE'
    elif override is not None:
        # Segment-aware resolution (PSP field, data/BSS word, or a code-segment
        # symbol rendered ``sym - IMAGE_BASE``).
        ea = override if not inner else f'{inner} + {override}'
    elif not inner:
        if data_labels and addr in data_labels:
            ea = data_labels[addr]
        elif foreign_label_map and addr in foreign_label_map:
            ea = foreign_label_map[addr]
        else:
            ea = f'0x{addr:04x}'
    elif disp < 0:
        ea = f'{inner} - 0x{(-disp & 0xFFFF):04x}'
    elif disp > 0:
        ea = f'{inner} + 0x{disp:x}'
    else:
        ea = inner

    # segment prefix inside brackets: [cs:bx + …]
    if seg:
        ea = f'{seg}:{ea}'

    size_tag = ''
    if op.size == 1:
        size_tag = 'byte '
    elif op.size == 2:
        size_tag = 'word '
    elif op.size == 4:
        size_tag = 'dword '

    return f'{size_tag}[{ea}]'
    # NOTE: size_tag is returned with the mem operand.
    # For instructions where size is already implied (jmp, call) the
    # caller strips the tag.  For generic data-movement ops the tag
    # stays.


def _label_comment(insn, label_map):
    """If instruction targets a known label, return ' ; name' else ''."""
    if not label_map:
        return ''
    if insn.mnemonic not in ('jmp', 'call', 'jcxz', 'jecxz', 'loop', 'loope', 'loopne'):
        return ''
    for op in insn.operands:
        if op.type == CS_OP_IMM:
            target = op.imm & 0xFFFF
            if target in label_map:
                return f'  ; {label_map[target]}'
    return ''


class LinkedSymbol(str):
    """Operand text chosen by the C linker (``lib.aztec.relink``).

    Distinguishes a relocation's symbol from the segment-dataflow symbols in
    ``mem_symbols`` so the encoding fix-ups only treat the former specially.
    """
    __slots__ = ()


def format_instruction(insn, label_map=None, local_labels=None, foreign_label_map=None,
                       immediate_labels=None, disp_labels=None, data_labels=None,
                       mem_symbols=None):
    """Return valid NASM line text for *insn*, or None if the instruction
    should stay as raw db bytes."""
    b = insn.bytes
    b0 = b[0]

    # — Standalone prefixes vanish in NASM ---------------------------------
    if len(b) == 1 and b0 in _STANDALONE_PREFIX:
        return None

    mnem = insn.mnemonic

    # — Fix capstone naming -------------------------------------------------
    if mnem == 'ljmp':
        mnem = 'jmp'
    elif mnem == 'lcall':
        mnem = 'call'
    elif mnem == 'cdq':
        mnem = 'cwd'
    elif mnem == 'cwde':
        mnem = 'cbw'       # 16-bit: 0x98 is cbw, not cwde
    elif mnem == 'xlat':
        mnem = 'xlatb'

    far = _is_far(insn)

    # — Segment override that capstone didn't reflect in mem.segment -------
    seg_prefix = ''
    if b0 in _SEG_PREFIXES and len(b) > 1:
        has_seg = any(
            op.type == CS_OP_MEM and op.mem.segment != 0
            for op in insn.operands
        )
        if not has_seg:
            seg_names = {0x26: 'es', 0x2E: 'cs', 0x36: 'ss', 0x3E: 'ds'}
            seg_prefix = seg_names.get(b0, 'cs') + ' '

    # — String ops: NASM takes no operands ---------------------------------
    # Capstone may include the rep prefix in the mnemonic (e.g. "repne scasb")
    # rather than leaving it as a separate prefix.  Strip it for matching.
    str_prefix = ''
    str_mnem = mnem
    for spfx, sname in [('repne ', 'repne'), ('repe ', 'repe'), ('rep ', 'rep')]:
        if str_mnem.startswith(spfx):
            str_mnem = str_mnem[len(spfx):]
            str_prefix = sname + ' '
            break
    if str_mnem in _STR_OPS:
        if not str_prefix:
            for pfx, name in [(0xF3, 'rep'), (0xF2, 'repne'), (0xF0, 'lock')]:
                if _has_prefix(insn, pfx):
                    str_prefix = name + ' '
                    break
        return f'{str_prefix}{str_mnem}'

    # — Build operand list --------------------------------------------------
    parts = []
    has_mem = False
    is_flow = mnem in ('jmp', 'call', 'jcxz', 'jecxz', 'loop', 'loope', 'loopne',
                       'je', 'jne', 'jb', 'jae', 'jbe', 'ja', 'jl', 'jge', 'jle', 'jg',
                       'js', 'jns', 'jp', 'jnp', 'jo', 'jno')

    for op_idx, op in enumerate(insn.operands):
        if op.type == CS_OP_REG:
            parts.append(insn.reg_name(op.reg))
        elif op.type == CS_OP_IMM:
            target = op.imm & 0xFFFF
            if is_flow and mem_symbols and (insn.address, op_idx) in mem_symbols:
                # A call/jump whose target the linker named explicitly (a
                # C-compiled routine's relocation) -- not inferred from the
                # displacement.
                parts.append(mem_symbols[(insn.address, op_idx)])
            elif is_flow and local_labels and target in local_labels:
                parts.append(local_labels[target])
            elif is_flow and label_map and target in label_map:
                parts.append(label_map[target])
            elif is_flow and foreign_label_map and target in foreign_label_map:
                parts.append(foreign_label_map[target])
            elif not is_flow and immediate_labels and target in immediate_labels:
                parts.append(immediate_labels[target])
            elif (not is_flow and mem_symbols
                  and (insn.address, op_idx) in mem_symbols):
                # A `mov reg, imm` proven (by segment dataflow) to be a pointer
                # into a known segment.
                parts.append(mem_symbols[(insn.address, op_idx)])
            else:
                # An immediate is not an address label.  The same numeric value
                # can be a constant (e.g. PSP:0002 -> mov cx, 2) or a pointer in
                # a segment other than the one the label map is keyed by.  Only
                # an explicit sidecar entry (immediate_labels) may symbolize it;
                # everything else stays numeric until segment resolution can
                # prove which address space it belongs to.
                parts.append(_fmt_imm(op.imm))
        elif op.type == CS_OP_MEM:
            parts.append(_fmt_mem(op, insn, op_idx, data_labels, foreign_label_map,
                                  local_labels, disp_labels, mem_symbols))
            has_mem = True

    ops = ', '.join(parts)

    # An immediate the linker (or segment dataflow) replaced with a symbol must
    # not be re-expanded to a number by the encoding fix-ups below.
    sym_imm = bool(mem_symbols) and any(
        op.type == CS_OP_IMM
        and isinstance(mem_symbols.get((insn.address, i)), LinkedSymbol)
        for i, op in enumerate(insn.operands))

    # — x87 FPU memory operand needs an explicit size for NASM ------------
    # Capstone omits it; without e.g. ``qword`` NASM guesses dword and the
    # encoding (and length) changes.
    if has_mem and mnem.startswith('f'):
        fsz = _FPU_MEM_SIZE.get(_opcode_byte(insn))
        if fsz and not ops.startswith(('byte ', 'word ', 'dword ', 'qword ',
                                        'tword ')):
            ops = f'{fsz} {ops}'

    # — jmp/call indirect: strip size tag from memory operand ---------------
    # Only the leading operand-size tag is implied; a ``word`` inside the
    # brackets forces a 16-bit displacement and must be preserved.
    if mnem in ('jmp', 'call'):
        for tag in ('dword ', 'word ', 'byte '):
            if ops.startswith(tag):
                ops = ops[len(tag):]
                break

    # — Jump / call distance keywords ---------------------------------------
    # The keyword is the operand's first word: a label may contain one
    # (format.asm's ``shortload``, ``FARopt``).
    distance = ops.split(' ', 1)[0]
    if mnem == 'jmp':
        if b0 == 0xEB:
            if distance != 'short':
                ops = 'short ' + ops
        elif b0 == 0xE9:
            if distance not in ('near', 'short'):
                ops = 'near ' + ops
        elif far:
            if distance != 'far':
                ops = 'far ' + ops
    elif mnem == 'call':
        if far:
            if distance != 'far':
                ops = 'far ' + ops

    # — Far jmp/call with seg:off immediates --------------------------------
    if mnem in ('jmp','call') and far and len(insn.operands) >= 2:
        imm0 = insn.operands[0].imm
        imm1 = insn.operands[1].imm
        if ops.startswith('far '):
            offset16 = imm1 & 0xFFFF
            if imm0 == 0 and offset16 == 0:
                # ``call far 0000:0000``: a placeholder patched at run time
                # (a chained interrupt vector), not a pointer to offset 0.
                ops = 'far 0x0:0x0'
            elif local_labels and offset16 in local_labels:
                ops = f'far {_fmt_imm(imm0)}:{local_labels[offset16]}'
            elif label_map and offset16 in label_map:
                ops = f'far {_fmt_imm(imm0)}:{label_map[offset16]}'
            elif foreign_label_map and offset16 in foreign_label_map:
                ops = f'far {_fmt_imm(imm0)}:{foreign_label_map[offset16]}'
            else:
                ops = f'far {_fmt_imm(imm0)}:{_fmt_imm(imm1)}'

    # — Conditional jumps ---------------------------------------------------
    is_cond_near = (len(b) >= 2 and b[0] == 0x0F and 0x80 <= b[1] <= 0x8F)
    distance = ops.split(' ', 1)[0]
    if is_cond_near:
        if distance != 'near':
            ops = f'near {ops}'
    elif 0x70 <= b0 <= 0x7F and mnem not in ('jmp','call'):
        if distance not in ('short', 'near'):
            ops = f'short {ops}'

    # — Loop instructions (E0–E3): always short, no keyword needed ----------

    # — Encoding overrides (match exact opcode bytes) -----------------------
    # Group 1 opcodes: 0x83 = sign-extended imm8 (5-byte), 0x81 = imm16 (6-byte)
    # Look past any segment/operand-size prefix (e.g. ``26 83 3e …``).
    op_b0 = _opcode_byte(insn)
    if op_b0 == 0x83:
        # Force 'byte' on the immediate so NASM emits the 0x83 encoding
        # Format the immediate as a byte value (last byte of insn.bytes)
        imm_byte = b[-1]
        parts_list = ops.split(',')
        if len(parts_list) >= 2:
            parts_list[-1] = f' byte {_fmt_imm(imm_byte, 8)}'
            ops = ','.join(parts_list)

    if op_b0 == 0x81:
        # Full imm16 — with -O0 NASM uses this, but ensure strict word
        # to prevent future optimizer surprises
        parts_list = ops.split(',')
        if len(parts_list) >= 2 and (parts_list[-1].strip().startswith('0x')
                                     or sym_imm):
            val_str = parts_list[-1].strip()
            parts_list[-1] = f' strict word {val_str}'
            ops = ','.join(parts_list)

    # — Accumulator ALU: strict word ----------------------------------------
    if op_b0 in _AX_ALU:
        m = list(insn.operands)
        if (len(m) == 2 and m[0].type == CS_OP_REG and m[1].type == CS_OP_IMM):
            if sym_imm:
                # The opcode is the imm16 form; a small symbol value must not
                # let NASM pick the sign-extended short one.
                ops = f'{insn.reg_name(m[0].reg)}, strict word {parts[1]}'
            else:
                val = m[1].imm & 0xFFFF
                if 0 <= val <= 0x7F or 0xFF80 <= val <= 0xFFFF:
                    ops = f'ax, strict word {_fmt_imm(val)}'

    # — Rotate/shift with implicit count=1 ----------------------------------
    if mnem in _OPS_NEED_IMPLICIT_ONE:
        # if we have only one operand (or count missing), add ", 1"
        if len(insn.operands) == 1:
            ops += ', 1'
        elif (len(insn.operands) == 2
              and insn.operands[1].type == CS_OP_IMM
              and insn.operands[1].imm == 1):
            # Already has implicit 1 — ensure it's present in text
            if ', 1' not in ops and ',1' not in ops:
                ops += ', 1'

    # — Remove 'ptr' that capstone text may inject --------------------------
    ops = ops.replace(' ptr ',' ').replace(' ptr,',',')

    ln = f'{mnem} {ops}'.strip()
    if seg_prefix:
        ln = seg_prefix + ln.strip()
    return ln
