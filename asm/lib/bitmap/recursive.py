"""Recursive-descent disassembly with speculative-code discipline.

Starting from known entry points, follows control-flow edges (calls,
conditional jumps, unconditional jumps) to discover reachable code.
Uses a fork-range commit model to ensure only validated byte ranges
are marked IS_CODE.
"""

from lib.model import IS_UNKNOWN, IS_DATA, IS_CODE
from lib.bitmap.common import (
    is_cond_jump, get_imm_target, is_indirect,
    disasm_one, _TERMINATORS, _UNCOND_JUMPS, _CALLS,
)
from lib.bitmap.tables import find_jump_table_bounds, scan_jump_table


def recursive_descent(data, bitmap, md, seeds, discovered=None, call_targets=None, jt_targets=None):
    """Recursive descent from *seeds*.

    Modifies *bitmap* in place, marking reachable code IS_CODE.
    Returns (discovered, call_targets, jt_targets) sets.
    """
    n = len(data)
    if discovered is None:
        discovered = set()
    if call_targets is None:
        call_targets = set()
    if jt_targets is None:
        jt_targets = set()

    visited_starts = set()
    worklist = set(seeds)

    while worklist:
        off = worklist.pop()
        if off in visited_starts or off < 0 or off >= n:
            continue
        if bitmap[off] == IS_DATA:
            continue
        if bitmap[off] == IS_CODE:
            continue
        visited_starts.add(off)

        fork_ranges = []
        spec_start = off
        gen = md.disasm(data[off:], off)

        while off < n:
            if bitmap[off] == IS_DATA:
                break

            if bitmap[off] == IS_CODE:
                fork_ranges.append((spec_start, off))
                break

            try:
                insn = next(gen)
            except StopIteration:
                break

            insn_end = insn.address + insn.size
            mnem = insn.mnemonic

            if mnem in _TERMINATORS:
                fork_ranges.append((spec_start, insn_end))
                break

            if mnem in _UNCOND_JUMPS:
                fork_ranges.append((spec_start, insn_end))

                if is_indirect(insn):
                    max_idx = find_jump_table_bounds(data, off, md)
                    tbl_end, jt_tgts = scan_jump_table(
                        data, off + insn.size, bitmap, max_index=max_idx,
                    )
                    if jt_tgts:
                        for t in jt_tgts:
                            if 0 <= t < n and bitmap[t] != IS_DATA:
                                worklist.add(t)
                                discovered.add(t)
                                call_targets.add(t)
                        for j in range(off + insn.size, min(tbl_end, n)):
                            if bitmap[j] == IS_UNKNOWN:
                                bitmap[j] = IS_DATA
                else:
                    target = get_imm_target(insn)
                    if target is not None and 0 <= target < n:
                        if bitmap[target] != IS_DATA:
                            worklist.add(target)
                            discovered.add(target)
                break

            if mnem in _CALLS:
                fork_ranges.append((spec_start, insn_end))
                spec_start = insn_end
                if not is_indirect(insn):
                    target = get_imm_target(insn)
                    if target is not None and 0 <= target < n:
                        if bitmap[target] != IS_DATA:
                            worklist.add(target)
                            discovered.add(target)
                            call_targets.add(target)
                off = insn_end
                continue

            if is_cond_jump(mnem):
                fork_ranges.append((spec_start, insn_end))
                spec_start = insn_end
                target = get_imm_target(insn)
                if target is not None and 0 <= target < n:
                    if bitmap[target] != IS_DATA:
                        worklist.add(target)
                        discovered.add(target)
                off = insn_end
                continue

            off = insn_end

        for r_start, r_end in fork_ranges:
            for i in range(r_start, r_end):
                if i < n:
                    bitmap[i] = IS_CODE

    return discovered, call_targets, jt_targets
