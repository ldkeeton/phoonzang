"""Recognize Aztec C86's inline switch helper (plan.md D8).

The compiler lowers a sparse ``switch`` to::

    mov  cx, N          ; B9 xx xx
    call <helper>       ; E8 xx xx
    dw   key_0 .. key_(N-2)
    dw   target_0 .. target_(N-1)   ; the last target is the default

The helper pops the return address as the table base, ``repne scasw``s the
keys and jumps through ``[es:bx + di - 4]`` -- the target matching the key, or
the default.  It never returns, so the bytes after the call are table data.

``aztec_switch_layout`` is an inline-table recognizer for
``RecursiveDescentPhase``: given a direct near call and the instruction before
it, it returns the table's ``(keys, targets)`` word counts or None.
"""

from capstone import CS_OP_IMM, CS_OP_REG

from lib.x86util import get_imm_target


AZTEC_SWITCH_BODY = bytes.fromhex(
    '5b57068ccf8ec78bfb8bd9d1e3fcf2af268b49fc075fffe1')


def is_aztec_switch(data, target):
    """True when *target* is the Aztec inline switch helper."""
    return (0 <= target
            and bytes(data[target:target + len(AZTEC_SWITCH_BODY)])
            == AZTEC_SWITCH_BODY)


def _mov_cx_imm(insn):
    """The immediate of ``mov cx, imm``, else None."""
    if insn is None or insn.mnemonic != 'mov' or len(insn.operands) != 2:
        return None
    op0, op1 = insn.operands
    if op0.type != CS_OP_REG or op1.type != CS_OP_IMM:
        return None
    if insn.reg_name(op0.reg) != 'cx':
        return None
    return op1.imm & 0xFFFF


def aztec_switch_layout(data, call, prev):
    """``(keys, targets)`` for ``mov cx, N; call <helper>``, else None."""
    helper = get_imm_target(call)
    if helper is None or not is_aztec_switch(data, helper):
        return None
    count = _mov_cx_imm(prev)
    if not count or prev.address + prev.size != call.address:
        return None
    return count - 1, count
