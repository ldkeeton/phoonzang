"""Jump-table and trampoline-table discovery passes.

Jump-table detection reads 16-bit word tables after indirect jumps and
validates each entry as a plausible code address.

Trampoline-table discovery finds ``call X; retf`` chains near the start of
DOS driver binaries.
"""

import struct
from capstone import CS_OP_REG, CS_OP_IMM
from lib.model import IS_UNKNOWN, IS_CODE, IS_DATA
from lib.bitmap.common import disasm_one, is_indirect, get_imm_target


def find_jump_table_bounds(data, jmp_addr, md):
    """Look backward from *jmp_addr* for a bounds-check idiom.

    16-bit compilers guard jump tables with::

        cmp bx, N       ; max valid index
        ja  default     ; jump away if out of bounds
        …
        jmp [bx + table]

    Returns the maximum valid table index (N), or None if no bounds check.
    """
    search_start = max(0, jmp_addr - 30)
    insns = []
    md.skipdata = True
    for insn in md.disasm(data[search_start:], search_start):
        if insn.address >= jmp_addr:
            break
        if insn.id != 0:
            insns.append(insn)
    md.skipdata = False

    for i in range(len(insns) - 1):
        insn = insns[i]
        nxt = insns[i + 1]

        if insn.mnemonic != 'cmp':
            continue
        ops = insn.operands
        if len(ops) < 2:
            continue
        if ops[0].type != CS_OP_REG:
            continue
        if ops[1].type != CS_OP_IMM:
            continue
        imm = ops[1].imm & 0xFFFF

        if nxt.mnemonic == 'ja':
            return imm
        if nxt.mnemonic in ('jae', 'jb', 'jbe'):
            return max(imm - 1, 0)

    return None


def scan_jump_table(data, start, bitmap, max_index=None):
    """After an indirect jmp, scan for a word-aligned pointer table.

    Reads 16-bit little-endian words starting at *start*.  Each word
    is validated as a plausible code address.

    Returns (table_end_exclusive, target_set) if >=3 valid targets,
    else (start, empty_set).
    """
    n = len(data)
    targets = set()
    tbl = start
    max_entries = (max_index + 1) if max_index is not None else None
    while tbl + 2 <= n:
        if max_entries is not None and len(targets) >= max_entries:
            break
        val = struct.unpack_from('<H', data, tbl)[0]
        if not (0 <= val < n):
            break
        if bitmap[val] == IS_DATA:
            break
        targets.add(val)
        tbl += 2
    if len(targets) >= 3:
        return tbl, targets
    return start, set()


def discover_trampoline_table(data, bitmap, md):
    """Find consecutive ``call X; retf`` trampolines in IS_UNKNOWN regions.

    DOS drivers often lay out export tables as flat arrays of 4-byte
    trampolines near the start of the file.

    Returns a set of code-entry addresses to seed recursive descent.
    """
    n = len(data)
    limit = min(n, 4096)
    candidates = []
    off = 0
    while off < limit:
        if bitmap[off] != IS_UNKNOWN:
            off += 1
            continue

        insn = disasm_one(data, off, md)
        if insn is None or insn.mnemonic != 'call':
            off += 1
            continue
        if is_indirect(insn):
            off += 1
            continue

        target = get_imm_target(insn)
        if target is None or not (0 <= target < n):
            off += 1
            continue

        ret_off = off + insn.size
        if ret_off >= n or data[ret_off] != 0xCB:  # retf = CB
            off += 1
            continue

        candidates.append((off, target))
        off = ret_off + 1

    if len(candidates) < 3:
        return set()

    runs = []
    run_start = 0
    for i in range(1, len(candidates)):
        if candidates[i][0] != candidates[i - 1][0] + 4:
            if i - run_start >= 3:
                runs.append((run_start, i))
            run_start = i
    if len(candidates) - run_start >= 3:
        runs.append((run_start, len(candidates)))

    targets = set()
    for r_start, r_end in runs:
        for i in range(r_start, r_end):
            off, target = candidates[i]
            targets.add(target)
            for j in range(off, min(off + 4, n)):
                bitmap[j] = IS_CODE

    return targets
