"""Heuristic function categorization.

Analyses unnamed call targets by scanning reachable function instructions for
signals: BIOS/DOS interrupts, I/O instructions, string ops, FPU,
math, leaf (no calls), or thunk (single-call wrapper).
"""

from capstone import CS_AC_WRITE, CS_OP_IMM, CS_OP_MEM, CS_OP_REG
from capstone.x86 import X86_REG_AH, X86_REG_ES

_CALL_MNEMONICS = {'call', 'lcall'}
_IO_MNEMONICS = {'in', 'out'}
_STRING_MNEMONICS = {
    'movsb', 'movsw', 'stosb', 'stosw', 'lodsb', 'lodsw',
    'scasb', 'scasw', 'cmpsb', 'cmpsw',
}
_MATH_MNEMONICS = {'mul', 'imul', 'div', 'idiv'}
_RETURN_MNEMONICS = {'ret', 'retf', 'iret', 'hlt'}
_UNCONDITIONAL_JUMPS = {'jmp', 'ljmp'}

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


def _has_graphics_rendering_pattern(insns):
    """Recognize a masked 320-pixel-stride renderer, not incidental math."""
    writes_es_memory = any(
        operand.type == CS_OP_MEM
        and operand.mem.segment == X86_REG_ES
        and operand.access & CS_AC_WRITE
        for insn in insns
        for operand in insn.operands
    )
    has_320_pixel_stride = any(
        operand.type == CS_OP_IMM and operand.imm in (320, 0x140)
        for insn in insns
        for operand in insn.operands
    )
    has_transparency_test = any(
        insn.mnemonic == 'cmp'
        and any(operand.type == CS_OP_IMM and operand.imm == 0xff
                for operand in insn.operands)
        for insn in insns
    )
    has_masked_loop = (
        any(insn.mnemonic in ('rol', 'ror') for insn in insns)
        and any(insn.mnemonic.startswith('loop') for insn in insns)
    )
    return (
        writes_es_memory
        and has_320_pixel_stride
        and (has_transparency_test or has_masked_loop)
    )


def _function_instructions(root, instruction_map, function_roots,
                           max_instructions=2048):
    """Collect instructions reachable from one function entry.

    Branches within the function are followed, calls are not descended into,
    and traversal stops at returns or another known function root. This keeps
    category evidence scoped to a function instead of an arbitrary byte window.
    """
    pending = [root]
    visited = set()
    body = []

    while pending and len(visited) < max_instructions:
        address = pending.pop()
        if address in visited or (address in function_roots and address != root):
            continue
        insn = instruction_map.get(address)
        if insn is None:
            continue

        visited.add(address)
        body.append(insn)
        mnemonic = insn.mnemonic
        if mnemonic in _RETURN_MNEMONICS:
            continue

        fallthrough = insn.address + insn.size
        if mnemonic in _UNCONDITIONAL_JUMPS:
            if (insn.operands and insn.operands[0].type == CS_OP_IMM):
                pending.append(insn.operands[0].imm)
            continue

        if mnemonic.startswith('j') or mnemonic.startswith('loop'):
            if (insn.operands and insn.operands[0].type == CS_OP_IMM):
                pending.append(insn.operands[0].imm)
            pending.append(fallthrough)
            continue

        pending.append(fallthrough)

    return sorted(body, key=lambda insn: insn.address)


def _detect_category(insns, off, body_size):
    """Return a category prefix string, or None if no signal found."""
    has_call = False
    call_count = 0
    total_insn_bytes = 0
    dos_ah = set()
    bios_ints = set()
    has_io = False
    has_string = False
    math_count = 0
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
            math_count += 1

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

    if _has_graphics_rendering_pattern(insns):
        return 'graphics'

    if has_io:
        return 'io'

    if has_string:
        return 'string'

    if has_fpu:
        return 'fpu'

    # A single multiply/divide often computes an address, length, or row
    # stride. Only use the math category when arithmetic is repeated or the
    # routine is a small, call-free arithmetic helper.
    if math_count >= 2 or (
            math_count == 1 and not has_call and len(insns) <= 16):
        return 'math'

    if not has_call:
        return 'leaf'

    if call_count == 1 and total_insn_bytes <= 12:
        last_mn = insns[-1].mnemonic if insns else ''
        if last_mn in ('ret', 'retf'):
            return 'thunk'

    return None


def categorize_call_targets(data, call_targets, label_map, instructions=None,
                            function_roots=None, bounded_targets=None):
    """Analyse function bodies and upgrade loc_XXXX to categorized names.

    Returns a new label_map dict with categorized entries for unnamed
    call targets.  Already-named entries are preserved as-is.
    """
    from capstone import Cs, CS_ARCH_X86, CS_MODE_16

    result = dict(label_map)
    function_roots = set(call_targets if function_roots is None
                         else function_roots)
    bounded_targets = set(call_targets if bounded_targets is None
                          else bounded_targets)
    instruction_map = None
    if instructions is not None:
        instruction_map = {insn.address: insn for insn in instructions}

    for off in sorted(call_targets):
        if off in label_map:
            continue
        if off + 3 > len(data):
            continue

        if instruction_map is not None and off in bounded_targets:
            insns = _function_instructions(
                off, instruction_map, function_roots,
            )
        else:
            # Keep the public helper usable without a prior project
            # disassembly; the main pipeline supplies its classified code.
            md = Cs(CS_ARCH_X86, CS_MODE_16)
            md.detail = True
            body = data[off:min(off + 128, len(data))]
            try:
                insns = list(md.disasm(body, off))
            except Exception:
                continue

        if not insns:
            continue

        category = _detect_category(insns, off, len(data) - off)
        if category:
            result[off] = f'{category}_loc_{off:04x}'

    return result
