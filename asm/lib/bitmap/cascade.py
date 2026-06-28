"""Cascade code recovery pass.

Promotes IS_DATA blocks that fully decode as valid x86 instructions.
Catches functions missed by recursive descent (e.g. called only through
pointer tables or indirect jumps).
"""

from capstone import Cs, CS_ARCH_X86, CS_MODE_16
from lib.model import IS_DATA, IS_CODE


def cascade_code_recovery(data, bitmap, md):
    """Promote IS_DATA blocks that fully decode as valid x86 instructions.

    A data block is promoted to code when every byte in it decodes as a
    valid instruction (no illegal opcode / operand combinations).

    Returns a set of byte offsets that were promoted.
    """
    n = len(data)
    i = 0
    promoted_set = set()
    while i < n:
        if bitmap[i] != IS_DATA:
            i += 1
            continue

        start = i
        while i < n and bitmap[i] == IS_DATA:
            i += 1

        block = data[start:i]

        # Heuristic: skip blocks that look like data tables (e.g. jump tables
        # with 16-bit zero-extended entries).  If >=50% of 16-bit words have
        # high byte == 0x00, this is probably not real code.
        if len(block) >= 6:
            n_words = len(block) // 2
            zero_high = sum(1 for j in range(0, len(block) - 1, 2)
                            if block[j + 1] == 0x00)
            if zero_high >= 3 and zero_high * 100 // n_words >= 50:
                continue

        try:
            insns = list(md.disasm(block, start))
        except Exception:
            continue

        if not insns:
            continue

        decoded = sum(insn.size for insn in insns)

        if decoded == len(block):
            for j in range(start, i):
                bitmap[j] = IS_CODE
                promoted_set.add(j)
        elif decoded >= len(block) - 3:
            for j in range(start, start + decoded):
                bitmap[j] = IS_CODE
                promoted_set.add(j)

    return promoted_set
