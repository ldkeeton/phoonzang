"""Format capstone instruction objects to valid NASM assembly text.

Every edge case between capstone's Intel-syntax output and NASM's
syntax requirements lives here.  Uses capstone's *detailed* operand
API so we build the text from structured data, never by regex-parsing
capstone's op_str.
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

# Ops that need implicit count=1 in NASM  (capstone drops it)
_OPS_NEED_IMPLICIT_ONE = {
    'rcl','rcr','rol','ror','sal','sar','shl','shr',
}


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


def _fmt_mem(op, insn):
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

    # displacement
    if not inner:
        # No base/index — direct memory address, always use unsigned
        ea = f'0x{(disp & 0xFFFF):04x}'
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


def format_instruction(insn, label_map=None, local_labels=None):
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
    is_flow = mnem in ('jmp', 'call', 'jcxz', 'jecxz', 'loop', 'loope', 'loopne')

    for op in insn.operands:
        if op.type == CS_OP_REG:
            parts.append(insn.reg_name(op.reg))
        elif op.type == CS_OP_IMM:
            target = op.imm & 0xFFFF
            if is_flow and local_labels and target in local_labels:
                parts.append(local_labels[target])
            elif is_flow and label_map and target in label_map:
                parts.append(label_map[target])
            else:
                parts.append(_fmt_imm(op.imm))
        elif op.type == CS_OP_MEM:
            parts.append(_fmt_mem(op, insn))
            has_mem = True

    ops = ', '.join(parts)

    # — jmp/call indirect: strip size tag from memory operand ---------------
    if mnem in ('jmp','call'):
        ops = ops.replace('dword ', '').replace('word ', '').replace('byte ', '')

    # — Jump / call distance keywords ---------------------------------------
    if mnem == 'jmp':
        if b0 == 0xEB:
            if 'short' not in ops:
                ops = 'short ' + ops
        elif b0 == 0xE9:
            if 'near' not in ops and 'short' not in ops:
                ops = 'near ' + ops
        elif far:
            if 'far' not in ops:
                ops = 'far ' + ops
    elif mnem == 'call':
        if far:
            if 'far' not in ops:
                ops = 'far ' + ops

    # — Far jmp/call with seg:off immediates --------------------------------
    if mnem in ('jmp','call') and far and len(insn.operands) >= 2:
        imm0 = insn.operands[0].imm
        imm1 = insn.operands[1].imm
        if ops.startswith('far '):
            offset16 = imm1 & 0xFFFF
            if local_labels and offset16 in local_labels:
                ops = f'far {_fmt_imm(imm0)}:{local_labels[offset16]}'
            elif label_map and offset16 in label_map:
                ops = f'far {_fmt_imm(imm0)}:{label_map[offset16]}'
            else:
                ops = f'far {_fmt_imm(imm0)}:{_fmt_imm(imm1)}'

    # — Conditional jumps ---------------------------------------------------
    is_cond_near = (len(b) >= 2 and b[0] == 0x0F and 0x80 <= b[1] <= 0x8F)
    if is_cond_near:
        if 'near' not in ops:
            ops = f'near {ops}'
    elif 0x70 <= b0 <= 0x7F and mnem not in ('jmp','call'):
        if 'short' not in ops and 'near' not in ops:
            ops = f'short {ops}'

    # — Loop instructions (E0–E3): always short, no keyword needed ----------

    # — Encoding overrides (match exact opcode bytes) -----------------------
    # Group 1 opcodes: 0x83 = sign-extended imm8 (5-byte), 0x81 = imm16 (6-byte)
    if b0 == 0x83:
        # Force 'byte' on the immediate so NASM emits the 0x83 encoding
        # Format the immediate as a byte value (last byte of insn.bytes)
        imm_byte = b[-1]
        parts_list = ops.split(',')
        if len(parts_list) >= 2:
            parts_list[-1] = f' byte {_fmt_imm(imm_byte, 8)}'
            ops = ','.join(parts_list)

    if b0 == 0x81:
        # Full imm16 — with -O0 NASM uses this, but ensure strict word
        # to prevent future optimizer surprises
        parts_list = ops.split(',')
        if len(parts_list) >= 2 and parts_list[-1].strip().startswith('0x'):
            val_str = parts_list[-1].strip()
            parts_list[-1] = f' strict word {val_str}'
            ops = ','.join(parts_list)

    # — Accumulator ALU: strict word ----------------------------------------
    if b0 in _AX_ALU:
        m = list(insn.operands)
        if len(m) == 2 and m[0].type == CS_OP_REG and m[1].type == CS_OP_IMM:
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
