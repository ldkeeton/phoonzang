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


_CONF_SEED_CODE = 1.0
_CONF_CALL_CODE = 0.9
_CONF_JT_CODE = 0.7
_CONF_JT_DATA = -1.0

_HARD_DATA = -0.8
_SOFT_DATA = -0.3
_SOFT_CODE = 0.3


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
    """Recursive-descent disassembly with confidence propagation.

    Independent opinion: writes graduated CODE confidence based on how
    code is reached (seed-proximal → 1.0, call-target → 0.9,
    jump-table → 0.7).  Reads prior columns for DATA/CODE boundaries.
    """

    input_slot = 'error_handler'
    output_slot = 'recursive'
    requires_binary = True

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = np.zeros(n, dtype=np.float32)

        # Build prior-consensus masks for boundary detection.
        # data_boundary is updated in-place as the current phase marks
        # jump-table entries as DATA — the inner loop reads this to
        # stop decoding when it hits a byte we have classified as data.
        data_boundary = np.full(n, np.inf, dtype=np.float32)
        prior_code = np.zeros(n, dtype=np.float32)
        for name in ctx.layers.columns:
            if name in ('raw_byte', 'seed', 'squashed', self.output_slot):
                continue
            col = ctx.layers[name].to_numpy()
            data_boundary = np.where(col < _SOFT_DATA, col, data_boundary)
            prior_code = np.where(col > _SOFT_CODE, col, prior_code)

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
            if data_boundary[off] < _HARD_DATA:
                continue
            if prior_code[off] > _SOFT_CODE:
                continue
            visited_starts.add(off)

            fork_ranges = []
            spec_start = off
            gen = md.disasm(data[off:], off)

            while off < n:
                if data_boundary[off] < _HARD_DATA:
                    break
                if prior_code[off] > _SOFT_CODE:
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
                            data, off + insn.size, data_boundary, max_index=max_idx,
                        )
                        if jt_tgts:
                            for t in jt_tgts:
                                if 0 <= t < n:
                                    worklist.add(t)
                                    ctx.code_targets.add(t)
                            # Mark table entries in both result and data_boundary
                            for j in range(off + insn.size, min(tbl_end, n)):
                                if result[j] == 0.0:
                                    result[j] = _CONF_JT_DATA
                                    data_boundary[j] = _CONF_JT_DATA
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

            # Confidence propagation: seed→1.0, call-target→0.9, jt→0.7
            is_seed = off in seeds
            is_call = off in ctx.code_targets
            conf = _CONF_SEED_CODE
            if is_call and not is_seed:
                conf = _CONF_CALL_CODE
            if not is_call and not is_seed:
                conf = _CONF_JT_CODE

            for r_start, r_end in fork_ranges:
                for i in range(r_start, r_end):
                    if i < n:
                        result[i] = max(result[i], conf)

        return pl.Series('recursive', result, dtype=pl.Float32)
