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


def is_dos_terminator(data, insn, base=0):
    """True for a DOS exit: ``int 20h``, or ``int 21h`` after an exit ``ah``.
    *data* starts at address *base*."""
    if insn.mnemonic != 'int':
        return False
    at = insn.address - base
    for op in insn.operands:
        if op.type == CS_OP_IMM:
            vec = op.imm & 0xFF
            if vec in _DOS_TERMINATOR_VECTORS:
                return True
            if vec == 0x21 and at >= 2:
                prefix = bytes(data[at - 2:at])
                if prefix in _DOS_EXIT_PREFIXES:
                    return True
                if at >= 3:
                    prefix3 = bytes(data[at - 3:at])
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


#: The longest x86 instruction, in bytes.
_MAX_INSN = 15


#: The last ``bytes`` decoded and its instructions (or None) by offset: each
#: classify iteration, and the prune after it, walks much of the same code.
_decoded = (None, {})


def _decode_at(md, data, off):
    """The instruction at *off*, decoded once per offset of immutable *data*."""
    global _decoded
    if _decoded[0] is not data:
        if not isinstance(data, bytes):
            return next(md.disasm(data[off:off + _MAX_INSN], off, 1), None)
        _decoded = (data, {})
    cache = _decoded[1]
    if off not in cache:
        cache[off] = next(md.disasm(data[off:off + _MAX_INSN], off, 1), None)
    return cache[off]


def disasm_one(data, off, md=None):
    if md is None:
        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True
    return _decode_at(md, data, off)


def decode_from(md, data, off):
    """Instructions from *off* on, like ``md.disasm(data[off:], off)``.

    Capstone's ``disasm`` decodes all it is given before yielding the first
    instruction, so a walk that stops after a few would pay for the whole
    tail; this decodes one instruction at a time.
    """
    while off < len(data):
        insn = _decode_at(md, data, off)
        if insn is None:
            return
        yield insn
        off += insn.size
