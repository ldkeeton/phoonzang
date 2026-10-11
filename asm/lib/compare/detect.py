"""Low-level block classification helpers.

Decide whether a run of data bytes looks like code, a jump table, or a
known file format.  These are used by the data-block postprocessor and by
the standalone binary inventory tool.
"""

import struct

from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.compare.constants import _FILE_FORMATS


def _try_decode_block(raw_bytes, start_offset):
    """Try to disassemble *raw_bytes* as 16-bit x86 instructions.

    Returns (instructions, all_decoded, has_control_flow) or
    (None, False, False) for all-zero or undecodable blocks.
    """
    if not raw_bytes or all(b == 0 for b in raw_bytes):
        return None, False, False

    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True

    insns = list(md.disasm(raw_bytes, start_offset))
    if not insns:
        return None, False, False

    consumed = sum(insn.size for insn in insns)
    all_decoded = consumed >= len(raw_bytes)

    ctrl_flow = frozenset({'ret', 'retf', 'iret', 'retn', 'call', 'lcall', 'jmp', 'ljmp',
                            'jcxz', 'jecxz', 'loop', 'loope', 'loopne'})
    has_ctrl = any(
        insn.mnemonic in ctrl_flow
        or (insn.mnemonic.startswith('j')
            and insn.mnemonic not in ('jmp', 'ljmp')
            and len(insn.mnemonic) > 1)
        for insn in insns
    )
    return insns, all_decoded, has_ctrl


def _detect_jump_table(raw_bytes, start_offset, binary_len, known_addrs):
    """Check if *raw_bytes* is a jump table (consecutive word code pointers).

    Returns the number of valid entries or None.
    """
    n = len(raw_bytes)
    if n < 6:
        return None

    skip = start_offset % 2
    if skip >= n:
        return None

    zero_count = sum(1 for b in raw_bytes if b == 0)
    if zero_count > len(raw_bytes) // 2:
        return None

    entries = []
    off = skip
    while off + 2 <= n:
        val = struct.unpack_from('<H', raw_bytes, off)[0]
        is_addr = val != 0 and 0 <= val < binary_len and val in known_addrs
        entries.append(is_addr)
        off += 2

    if len(entries) < 3:
        return None

    best = 0
    cur = 0
    for flag in entries:
        if flag:
            cur += 1
            best = max(best, cur)
        else:
            cur = 0

    return best if best >= 3 else None


def _detect_file_format(raw_bytes):
    """Check if *raw_bytes* starts with a known file-format magic."""
    for offset, magic, name in _FILE_FORMATS:
        if len(raw_bytes) >= offset + len(magic):
            if raw_bytes[offset:offset + len(magic)] == magic:
                return name
    return None
