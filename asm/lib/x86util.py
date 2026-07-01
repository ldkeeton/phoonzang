"""Shared helpers for bitmap classification passes."""

from capstone import Cs, CS_ARCH_X86, CS_MODE_16
from capstone import CS_OP_IMM, CS_OP_REG, CS_OP_MEM

_TERMINATORS = {'ret', 'retf', 'iret', 'hlt'}
_UNCOND_JUMPS = {'jmp', 'ljmp'}
_CALLS = {'call', 'lcall'}
_COND_JUMP_MNEMS = {
    'jcxz', 'jecxz', 'loop', 'loope', 'loopne',
}

_DOS_TERMINATOR_VECTORS = {0x20}
_DOS_EXIT_AH = {0x00, 0x4C, 0x31}

_DOS_EXIT_PREFIXES = frozenset({
    bytes((0xB4, ah)) for ah in _DOS_EXIT_AH
} | {
    bytes((0xB8, 0x00, ah)) for ah in _DOS_EXIT_AH
} | {
    bytes((0xB8, 0x01, ah)) for ah in _DOS_EXIT_AH
})


def is_dos_terminator(data, insn):
    if insn.mnemonic != 'int':
        return False
    for op in insn.operands:
        if op.type == CS_OP_IMM:
            vec = op.imm & 0xFF
            if vec in _DOS_TERMINATOR_VECTORS:
                return True
            if vec == 0x21 and insn.address >= 2:
                prefix = bytes(data[insn.address - 2:insn.address])
                if prefix in _DOS_EXIT_PREFIXES:
                    return True
                if insn.address >= 3:
                    prefix3 = bytes(data[insn.address - 3:insn.address])
                    if prefix3 in _DOS_EXIT_PREFIXES:
                        return True
    return False


def is_cond_jump(mnem):
    if mnem in _COND_JUMP_MNEMS:
        return True
    if len(mnem) >= 2 and mnem[0] == 'j' and mnem not in ('jmp',):
        return True
    return False


def get_imm_target(insn):
    for op in insn.operands:
        if op.type == CS_OP_IMM:
            return op.imm & 0xFFFF
    return None


def is_indirect(insn):
    for op in insn.operands:
        if op.type in (CS_OP_REG, CS_OP_MEM):
            return True
    return False


def disasm_one(data, off, md=None):
    if md is None:
        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True
    gen = md.disasm(data[off:], off)
    try:
        return next(gen)
    except StopIteration:
        return None
