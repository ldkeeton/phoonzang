"""Lift Capstone 16-bit x86 instructions into the decompiler IR."""

from .ir import Instruction, Operand


# Capstone operand types
_CS_OP_REG = 1
_CS_OP_IMM = 2
_CS_OP_MEM = 3


def _cs_to_operand(cs_op, cs_insn) -> Operand:
    """Convert a Capstone operand to our IR Operand."""
    op = Operand(type='???', size=cs_op.size)

    if cs_op.type == _CS_OP_REG:
        op.type = 'reg'
        op.value = cs_insn.reg_name(cs_op.reg)
    elif cs_op.type == _CS_OP_IMM:
        op.type = 'imm'
        op.value = cs_op.imm
    elif cs_op.type == _CS_OP_MEM:
        op.type = 'mem'
        op.value = cs_op.mem.disp
        op.base = cs_insn.reg_name(cs_op.mem.base) if cs_op.mem.base else ''
        op.index = cs_insn.reg_name(cs_op.mem.index) if cs_op.mem.index else ''
        seg = cs_op.mem.segment
        op.segment = cs_insn.reg_name(seg) if seg else ''
    return op


def _capstone_to_ir(cs_insns: list) -> list[Instruction]:
    """Convert Capstone CsInsn list to our IR instructions."""
    result = []
    for ci in cs_insns:
        ops = []
        for co in ci.operands:
            ops.append(_cs_to_operand(co, ci))
        result.append(Instruction(
            address=ci.address,
            mnemonic=ci.mnemonic,
            raw_bytes=bytes(ci.bytes),
            operands=ops,
        ))
    return result
