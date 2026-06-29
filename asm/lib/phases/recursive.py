import struct

import polars as pl
import numpy as np
from capstone import Cs, CS_ARCH_X86, CS_MODE_16, CS_OP_IMM, CS_OP_REG

from lib.model import PhaseContext, CONF_CODE, CONF_DATA
from lib.pipeline.phase import Phase
from lib.x86util import (
    is_cond_jump, get_imm_target, is_indirect,
    disasm_one, _TERMINATORS, _UNCOND_JUMPS, _CALLS,
)


def _find_jump_table_bounds(data, jmp_addr, md):
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


def _scan_jump_table(data, start, conf_arr, max_index=None):
    n = len(conf_arr)
    targets = set()
    tbl = start
    max_entries = (max_index + 1) if max_index is not None else None
    while tbl + 2 <= n:
        if max_entries is not None and len(targets) >= max_entries:
            break
        val = struct.unpack_from('<H', data, tbl)[0]
        if not (0 <= val < n):
            break
        if conf_arr[val] < -0.3:
            break
        targets.add(val)
        tbl += 2
    if len(targets) >= 3:
        return tbl, targets
    return start, set()


class RecursiveDescentPhase(Phase):
    """Recursive-descent disassembly with speculative-code discipline.

    Reads seeds from ``ctx.seeds`` and ``ctx.start_offset``, follows
    control-flow edges to discover reachable code.  Stores discovered
    call targets in ``ctx.code_targets``.
    """

    input_slot = 'error_handler'
    output_slot = 'recursive'
    requires_binary = True

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = input_col.to_numpy().copy()

        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True

        seeds = set(ctx.seeds)
        if 0 <= ctx.start_offset < n:
            seeds.add(ctx.start_offset)

        visited_starts = set()
        worklist = set(seeds)

        while worklist:
            off = worklist.pop()
            if off in visited_starts or off < 0 or off >= n:
                continue
            if result[off] < -0.3:
                continue
            if input_col[off] > 0.3:
                continue
            visited_starts.add(off)

            fork_ranges = []
            spec_start = off
            gen = md.disasm(data[off:], off)

            while off < n:
                if result[off] < -0.3:
                    break

                if input_col[off] > 0.3:
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
                        max_idx = _find_jump_table_bounds(data, off, md)
                        tbl_end, jt_tgts = _scan_jump_table(
                            data, off + insn.size, result, max_index=max_idx,
                        )
                        if jt_tgts:
                            for t in jt_tgts:
                                if 0 <= t < n:
                                    worklist.add(t)
                                    ctx.code_targets.add(t)
                            for j in range(off + insn.size, min(tbl_end, n)):
                                if result[j] == 0.0:
                                    result[j] = CONF_DATA
                    else:
                        target = get_imm_target(insn)
                        if target is not None and 0 <= target < n:
                            worklist.add(target)
                    break

                if mnem in _CALLS:
                    fork_ranges.append((spec_start, insn_end))
                    spec_start = insn_end
                    if not is_indirect(insn):
                        target = get_imm_target(insn)
                        if target is not None and 0 <= target < n:
                            worklist.add(target)
                            ctx.code_targets.add(target)
                    off = insn_end
                    continue

                if is_cond_jump(mnem):
                    fork_ranges.append((spec_start, insn_end))
                    spec_start = insn_end
                    target = get_imm_target(insn)
                    if target is not None and 0 <= target < n:
                        worklist.add(target)
                    off = insn_end
                    continue

                off = insn_end

            for r_start, r_end in fork_ranges:
                for i in range(r_start, r_end):
                    if i < n:
                        result[i] = CONF_CODE

        return pl.Series('recursive', result, dtype=pl.Float32)
