"""Shared helpers for bitmap classification passes."""

from capstone import Cs, CS_ARCH_X86, CS_MODE_16
from capstone import CS_OP_IMM, CS_OP_REG, CS_OP_MEM

_TERMINATORS = {'ret', 'retf', 'iret', 'hlt'}
_UNCOND_JUMPS = {'jmp', 'ljmp'}
_CALLS = {'call', 'lcall'}
_COND_JUMP_MNEMS = {
    'jcxz', 'jecxz', 'loop', 'loope', 'loopne',
}


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
