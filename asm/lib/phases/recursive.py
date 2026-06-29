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
from capstone import CS_OP_MEM


_CONF_SEED_CODE = 1.0
_CONF_CALL_CODE = 0.9
_CONF_JT_CODE = 0.7
_CONF_JT_DATA = -1.0

_HARD_DATA = -0.8
_SOFT_DATA = -0.3
_SOFT_CODE = 0.3


def _find_jump_table_bounds(data, jmp_addr, jt_addr, md):
    # Try raw byte search for CMP AX, imm16 / JNB pattern.
    # The guard is between the table and the jmp (or just before the jmp
    # for inline guards).  Search from before the table to past the jmp.
    if jt_addr is not None:
        lo = max(0, min(jt_addr, jmp_addr) - 64)
        hi = min(len(data) - 4, max(jmp_addr, jt_addr) + 5)
        for i in range(lo, hi):
            if data[i] == 0x3D and data[i + 3] in (0x73, 0x77, 0x72, 0x76):
                imm = struct.unpack_from('<H', data, i + 1)[0]
                if data[i + 3] in (0x77, 0x72):   # JA / JB
                    return imm
                return max(imm - 1, 0)             # JAE / JBE

    # Fallback: capstone-based search near jmp_addr.
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


def _scan_jump_table(data, start, conf_arr, max_index=None, start_offset=0):
    n = len(conf_arr)
    targets = set()
    tbl = start
    max_entries = (max_index + 1) if max_index is not None else 256
    entries_read = 0
    while tbl + 2 <= n and entries_read < max_entries:
        val = struct.unpack_from('<H', data, tbl)[0]
        buf_val = val + start_offset
        if not (0 <= buf_val < n):
            break
        if conf_arr[buf_val] < -0.3:
            break
        targets.add(buf_val)
        tbl += 2
        entries_read += 1
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

        # Pre-scan binary for all jmp [cs:bx+disp] and jmp [cs:di+disp]
        # patterns, so tables are found even when the walker cannot reach
        # their addresses through static control-flow reconstruction.
        for scan_idx in range(ctx.start_offset, n - 5):
            if (data[scan_idx] != 0x2E or data[scan_idx + 1] != 0xFF
                    or data[scan_idx + 2] not in (0xA7, 0xA5)):
                continue
            if data_boundary[scan_idx] < _HARD_DATA:
                continue
            disp = struct.unpack_from('<h', data, scan_idx + 3)[0]
            tgt = ctx.start_offset + disp
            if not (0 <= tgt < n):
                continue
            max_idx = _find_jump_table_bounds(data, scan_idx, tgt, md)
            tbl_end, jt_tgts = _scan_jump_table(
                data, tgt, data_boundary,
                max_index=max_idx, start_offset=ctx.start_offset,
            )
            jt_info = {
                'jmp_addr': scan_idx,
                'jmp_seg': scan_idx - ctx.start_offset,
                'size': 5,
                'mnemonic': 'jmp [cs:bx+disp]' if data[scan_idx+2] == 0xA7 else 'jmp [cs:di+disp]',
                'mem_disp': disp,
                'table_start': tgt,
                'max_index': max_idx,
                'bound_source': 'cmp_found' if max_idx is not None else 'none',
                'targets_found': len(jt_tgts),
                'targets': sorted(jt_tgts)[:20],
                'tbl_end': tbl_end,
            }
            if jt_tgts:
                for t in jt_tgts:
                    if 0 <= t < n:
                        worklist.add(t)
                        ctx.code_targets.add(t)
                for j in range(tgt, min(tbl_end, n)):
                    if result[j] == 0.0:
                        result[j] = _CONF_JT_DATA
                        data_boundary[j] = _CONF_JT_DATA
            ctx.report.setdefault('jump_tables', []).append(jt_info)

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
                        mem_disp = None
                        has_base = False
                        for op in insn.operands:
                            if op.type == CS_OP_MEM:
                                mem_disp = op.mem.disp
                                has_base = op.mem.base != 0
                                break
                        # Only treat as a jump table when a register indexes
                        # into a displacement ([bx+disp], [di+disp], etc.).
                        # Direct [disp] or register-only jmps are not tables.
                        use_jt = has_base and mem_disp is not None
                        if use_jt:
                            new_start = ctx.start_offset + mem_disp
                            if not (0 <= new_start < n):
                                break
                            max_idx = _find_jump_table_bounds(data, off, new_start, md)
                            tbl_end, jt_tgts = _scan_jump_table(
                                data, new_start, data_boundary,
                                max_index=max_idx, start_offset=ctx.start_offset,
                            )
                            jt_info = {
                                'jmp_addr': off,
                                'jmp_seg': off - ctx.start_offset,
                                'size': insn.size,
                                'mnemonic': f'{insn.mnemonic} {insn.op_str}',
                                'mem_disp': mem_disp,
                                'table_start': new_start,
                                'max_index': max_idx,
                                'bound_source': 'cmp_found' if max_idx is not None else 'none',
                                'targets_found': len(jt_tgts),
                                'targets': sorted(jt_tgts)[:20],
                                'tbl_end': tbl_end,
                            }
                            if jt_tgts:
                                for t in jt_tgts:
                                    if 0 <= t < n:
                                        worklist.add(t)
                                        ctx.code_targets.add(t)
                                for j in range(new_start, min(tbl_end, n)):
                                    if result[j] == 0.0:
                                        result[j] = _CONF_JT_DATA
                                        data_boundary[j] = _CONF_JT_DATA
                            ctx.report.setdefault('jump_tables', []).append(jt_info)
                        elif mem_disp is not None:
                            # Direct memory JMP: follow the single pointer.
                            ptr_addr = ctx.start_offset + mem_disp
                            if 0 <= ptr_addr < n - 2:
                                ptr = struct.unpack_from('<H', data, ptr_addr)[0]
                                target = ptr + ctx.start_offset
                                if 0 <= target < n:
                                    worklist.add(target)
                                    ctx.code_targets.add(target)
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
