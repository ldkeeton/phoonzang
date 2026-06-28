"""Heuristic function categorization.

Analyses unnamed call targets by scanning their function body for
signals: BIOS/DOS interrupts, I/O instructions, string ops, FPU,
math, leaf (no calls), or thunk (single-call wrapper).
"""

from capstone import CS_OP_IMM, CS_OP_REG
from capstone.x86 import X86_REG_AH

_CALL_MNEMONICS = {'call', 'lcall'}
_IO_MNEMONICS = {'in', 'out'}
_STRING_MNEMONICS = {
    'movsb', 'movsw', 'stosb', 'stosw', 'lodsb', 'lodsw',
    'scasb', 'scasw', 'cmpsb', 'cmpsw',
}
_MATH_MNEMONICS = {'mul', 'imul', 'div', 'idiv'}

_DOS_AH_FILES = {0x3c, 0x3d, 0x3e, 0x3f, 0x40, 0x41, 0x42, 0x43, 0x56, 0x57,
                 0x5b, 0x5c, 0x6c}
_DOS_AH_MEM = {0x48, 0x49, 0x4a}
_DOS_AH_CON = {0x01, 0x02, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c}
_DOS_AH_PROC = {0x00, 0x31, 0x4c, 0x4d}
_DOS_AH_TIME = {0x2a, 0x2b, 0x2c, 0x2d}
_DOS_AH_INTV = {0x25, 0x35}
_DOS_AH_DPB = {0x1f, 0x32}
_DOS_AH_DTA = {0x1a, 0x2f, 0x4e, 0x4f}
_DOS_AH_PSP = {0x51, 0x52, 0x62}

_BIOS_CATEGORIES = {
    0x10: 'bios_video', 0x13: 'bios_disk',
    0x16: 'bios_kbd',   0x1a: 'bios_timer',
    0x33: 'bios_mouse',
}


def _find_mov_ah(insns, int_idx):
    """Scan backward from int_idx-1 to find the nearest ``mov ah, N``."""
    for i in range(int_idx - 1, -1, -1):
        if insns[i].mnemonic == 'mov':
            ops = insns[i].operands
            if len(ops) == 2 and ops[0].type == CS_OP_REG:
                if ops[0].reg == X86_REG_AH and ops[1].type == CS_OP_IMM:
                    return ops[1].imm
        if insns[i].mnemonic in ('int', 'call', 'lcall', 'jmp', 'ljmp', 'ret', 'retf', 'iret', 'hlt'):
            break
    return None


def _detect_category(insns, off, body_size):
    """Return a category prefix string, or None if no signal found."""
    has_call = False
    call_count = 0
    total_insn_bytes = 0
    dos_ah = set()
    bios_ints = set()
    has_io = False
    has_string = False
    has_math = False
    has_fpu = False

    for idx, insn in enumerate(insns):
        mn = insn.mnemonic
        total_insn_bytes += insn.size

        if mn in _CALL_MNEMONICS:
            has_call = True
            call_count += 1

        if mn in _IO_MNEMONICS:
            has_io = True

        if mn in _STRING_MNEMONICS:
            has_string = True

        if mn in _MATH_MNEMONICS:
            has_math = True

        if mn.startswith('f'):
            has_fpu = True

        if mn == 'int':
            for op in insn.operands:
                if op.type == CS_OP_IMM:
                    if op.imm == 0x21:
                        ah = _find_mov_ah(insns, idx)
                        if ah is not None:
                            dos_ah.add(ah)
                    elif op.imm in _BIOS_CATEGORIES:
                        bios_ints.add(op.imm)

    if bios_ints:
        for ival in _BIOS_CATEGORIES:
            if ival in bios_ints:
                return _BIOS_CATEGORIES[ival]
        return 'bios'

    if dos_ah:
        ah = next(iter(dos_ah))
        if ah in _DOS_AH_FILES:
            return 'dos_file'
        if ah in _DOS_AH_MEM:
            return 'dos_mem'
        if ah in _DOS_AH_CON:
            return 'dos_con'
        if ah in _DOS_AH_PROC:
            return 'dos_proc'
        if ah in _DOS_AH_TIME:
            return 'dos_time'
        if ah in _DOS_AH_INTV:
            return 'dos_intvec'
        if ah in _DOS_AH_DPB:
            return 'dos_dpb'
        if ah in _DOS_AH_DTA:
            return 'dos_dta'
        if ah in _DOS_AH_PSP:
            return 'dos_psp'
        return 'dos'

    if has_io:
        return 'io'

    if has_string:
        return 'string'

    if has_fpu:
        return 'fpu'

    if has_math:
        return 'math'

    if not has_call:
        return 'leaf'

    if call_count == 1 and total_insn_bytes <= 12:
        last_mn = insns[-1].mnemonic if insns else ''
        if last_mn in ('ret', 'retf'):
            return 'thunk'

    return None


def categorize_call_targets(data, call_targets, label_map):
    """Analyse function bodies and upgrade loc_XXXX to categorized names.

    Returns a new label_map dict with categorized entries for unnamed
    call targets.  Already-named entries are preserved as-is.
    """
    from capstone import Cs, CS_ARCH_X86, CS_MODE_16

    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True

    result = dict(label_map)

    for off in sorted(call_targets):
        if off in label_map:
            continue
        if off + 3 > len(data):
            continue

        body = data[off:min(off + 128, len(data))]
        try:
            insns = list(md.disasm(body, off))
        except Exception:
            continue

        if not insns:
            continue

        category = _detect_category(insns, off, len(body))
        if category:
            result[off] = f'{category}_loc_{off:04x}'

    return result
