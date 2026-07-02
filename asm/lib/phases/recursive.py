import struct

import polars as pl
import numpy as np
from capstone import Cs, CS_ARCH_X86, CS_MODE_16, CS_OP_IMM, CS_OP_REG

from lib.model import (
    PhaseContext, CONF_CODE, CONF_DATA,
    SeedInfo, TargetInfo, BasicBlock, JumpTableInfo,
)
from lib.pipeline.phase import Phase, PhaseContract
from lib.x86util import (
    is_cond_jump, get_imm_target, is_indirect,
    disasm_one, _TERMINATORS, _UNCOND_JUMPS, _CALLS,
    is_dos_terminator,
)
from capstone import CS_OP_MEM


_CONF_SEED_CODE = 1.0
_CONF_CALL_CODE = 0.9
_CONF_JT_CODE = 0.7
_CONF_JT_DATA = -1.0

_HARD_DATA = -0.8
_SOFT_DATA = -0.3
_SOFT_CODE = 0.3


def _find_jump_table_bounds(data, jmp_addr, md, jt_addr=None):
    if jt_addr is not None:
        lo = max(0, min(jt_addr, jmp_addr) - 64)
        hi = min(len(data) - 4, max(jmp_addr, jt_addr) + 5)
        for i in range(lo, hi):
            if data[i] == 0x3D and data[i + 3] in (0x73, 0x77, 0x72, 0x76):
                imm = struct.unpack_from('<H', data, i + 1)[0]
                if data[i + 3] in (0x77, 0x72):
                    return imm
                return max(imm - 1, 0)

    lo = max(0, jmp_addr - 64)
    hi = jmp_addr
    for i in range(lo, hi):
        if data[i] == 0xB9:
            imm = struct.unpack_from('<H', data, i + 1)[0]
            if 0 < imm <= 256:
                return imm

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
        if len(ops) >= 2 and ops[0].type == CS_OP_REG and ops[1].type == CS_OP_IMM:
            imm = ops[1].imm & 0xFFFF
            if nxt.mnemonic in ('ja', 'jb'):
                return imm
            if nxt.mnemonic in ('jae', 'jbe', 'je', 'jne'):
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


def _add_target(ctx, address, reason, confidence, source_offset=-1):
    existing = ctx.code_targets.get(address)
    if existing is None or confidence > existing.confidence:
        ctx.code_targets[address] = TargetInfo(
            address=address, reason=reason,
            confidence=confidence, source_offset=source_offset,
        )


def _validate_jump_tables(ctx, data, n, result, md):
    """Re-validate jump tables after recursive descent has decoded the
    binary.  A table is valid when most of its targets land inside
    confirmed basic blocks with proper terminators.  Invalid tables
    have their targets demoted and their table region re-marked."""
    for jt in ctx.jump_tables:
        if not jt.targets:
            continue
        valid = 0
        for t in jt.targets:
            for block in ctx.blocks:
                if block.start <= t < block.end:
                    if block.exit_type in ('ret', 'retf', 'jmp', 'hlt'):
                        if block.provenance in ('seed', 'call', 'trampoline'):
                            valid += 2
                        else:
                            valid += 1
                    break
        fraction = valid / max(len(jt.targets), 1)
        if fraction >= 0.4:
            jt.validated = True
            jt.validation_ok = True
        else:
            jt.validated = True
            jt.validation_ok = False
            for t in jt.targets:
                info = ctx.code_targets.get(t)
                if info and info.reason == 'jt_target':
                    del ctx.code_targets[t]
            for j in range(jt.table_addr, min(jt.table_end, n)):
                result[j] = _CONF_JT_DATA


def _infer_exit_type(insn):
    mnem = insn.mnemonic
    if mnem in _TERMINATORS:
        if 'ret' in mnem:
            return 'ret'
        return 'hlt'
    if mnem in _UNCOND_JUMPS:
        if is_indirect(insn):
            return 'jmp_indirect'
        return 'jmp'
    if mnem in _CALLS:
        return 'call'
    if is_cond_jump(mnem):
        return 'cond_jmp'
    return 'fallthrough'


class RecursiveDescentPhase(Phase):
    contract = PhaseContract(
        output_slot='recursive',
        reads_columns=['ALL'],  # data_boundary/prior_code from ALL columns (excl seed/raw_byte/squashed/recursive/squashed_iter)
        reads_ctx=['binary_data', 'seeds', 'code_targets', 'start_offset', 'trace'],
        writes_ctx=['code_targets', 'blocks', 'jump_tables'],
        requires_binary=True,
    )

    def __init__(self, input_slot='seed', output_slot='recursive'):
        self.input_slot = input_slot
        self.output_slot = output_slot

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = np.zeros(n, dtype=np.float32)
        tlog = ctx.trace

        data_boundary = np.full(n, np.inf, dtype=np.float32)
        prior_code = np.zeros(n, dtype=np.float32)
        for name in ctx.layers.columns:
            if name in ('raw_byte', 'seed', 'squashed', self.output_slot):
                continue
            if name.startswith('squashed_iter_'):
                continue
            col = ctx.layers[name].to_numpy()
            data_boundary = np.where(col < _SOFT_DATA, col, data_boundary)
            prior_code = np.where(col > _SOFT_CODE, col, prior_code)

        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True

        if ctx.seeds:
            sorted_seeds = sorted(ctx.seeds, key=lambda s: s.confidence, reverse=True)
            seeds = {s.address for s in sorted_seeds}
            if tlog:
                tlog.event('recursive', 'seeds_loaded', iteration=ctx.iteration,
                           addr=min(seeds), count=len(seeds),
                           sample=list(seeds)[:20])
        else:
            seeds = set()

        if 0 <= ctx.start_offset < n and data_boundary[ctx.start_offset] >= _HARD_DATA:
            seeds.add(ctx.start_offset)

        visited_starts = set()
        worklist = [s.address for s in sorted_seeds] if ctx.seeds else list(seeds)

        # Ensure start_offset and seeds are known as code targets so they
        # receive labels in the final output.
        if 0 <= ctx.start_offset < n and data_boundary[ctx.start_offset] >= _HARD_DATA and ctx.start_offset not in ctx.code_targets:
            _add_target(ctx, ctx.start_offset, 'seed', _CONF_SEED_CODE)
        for si in (ctx.seeds or []):
            if si.address not in ctx.code_targets:
                _add_target(ctx, si.address, 'seed', si.confidence)

        if 0 <= ctx.start_offset < n and data_boundary[ctx.start_offset] >= _HARD_DATA and ctx.start_offset not in visited_starts and ctx.start_offset not in worklist:
            worklist.append(ctx.start_offset)
        for addr in ctx.code_targets:
            if addr not in visited_starts and 0 <= addr < n:
                worklist.append(addr)

        ctx.jump_tables = []

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
            max_idx = _find_jump_table_bounds(data, scan_idx, md, jt_addr=tgt)
            tbl_end, jt_tgts = _scan_jump_table(
                data, tgt, data_boundary,
                max_index=max_idx, start_offset=ctx.start_offset,
            )
            jt_info = JumpTableInfo(
                table_addr=tgt, jmp_addr=scan_idx,
                targets=sorted(jt_tgts), max_index=max_idx,
                table_end=tbl_end,
            )
            if jt_tgts:
                for t in jt_tgts:
                    if 0 <= t < n:
                        worklist.append(t)
                        _add_target(ctx, t, 'jt_target', _CONF_JT_CODE, source_offset=scan_idx)
                for j in range(tgt, min(tbl_end, n)):
                    if result[j] == 0.0:
                        result[j] = _CONF_JT_DATA
                        data_boundary[j] = _CONF_JT_DATA
            ctx.jump_tables.append(jt_info)

        ctx.blocks = []

        while worklist:
            off = worklist.pop()
            if off in visited_starts or off < 0 or off >= n:
                if tlog and off >= 0 and off < n:
                    tlog.event('recursive', 'worklist_skip_visited',
                               iteration=ctx.iteration, addr=off,
                               prior_code=float(prior_code[off]),
                               data_boundary=float(data_boundary[off]))
                continue
            if data_boundary[off] < _HARD_DATA:
                if tlog:
                    tlog.event('recursive', 'worklist_skip_data_boundary',
                               iteration=ctx.iteration, addr=off,
                               data_boundary=float(data_boundary[off]))
                continue
            if prior_code[off] > _SOFT_CODE:
                if tlog:
                    tlog.event('recursive', 'worklist_skip_prior_code',
                               iteration=ctx.iteration, addr=off,
                               prior_code=float(prior_code[off]))
                continue
            visited_starts.add(off)
            if tlog:
                tlog.event('recursive', 'worklist_start',
                           iteration=ctx.iteration, addr=off,
                           prior_code=float(prior_code[off]),
                           data_boundary=float(data_boundary[off]))

            fork_ranges = []
            fork_exits = []
            spec_start = off
            gen = md.disasm(data[off:], off)

            while off < n:
                if data_boundary[off] < _HARD_DATA:
                    if tlog:
                        tlog.event('recursive', 'decode_data_boundary',
                                   iteration=ctx.iteration,
                                   addr=off,
                                   spec_start=spec_start,
                                   data_boundary=float(data_boundary[off]))
                    break
                if prior_code[off] > _SOFT_CODE:
                    if tlog:
                        tlog.event('recursive', 'decode_prior_code',
                                   iteration=ctx.iteration,
                                   addr=off, spec_start=spec_start,
                                   prior_code=float(prior_code[off]))
                    fork_ranges.append((spec_start, off))
                    fork_exits.append('fallthrough')
                    break

                try:
                    insn = next(gen)
                except StopIteration:
                    break

                insn_end = insn.address + insn.size
                mnem = insn.mnemonic

                exit_type = _infer_exit_type(insn)
                dos_term = is_dos_terminator(data, insn)

                if mnem in _TERMINATORS or dos_term:
                    fork_ranges.append((spec_start, insn_end))
                    fork_exits.append('ret' if not dos_term else 'hlt')
                    break

                if mnem in _UNCOND_JUMPS:
                    fork_ranges.append((spec_start, insn_end))
                    fork_exits.append(exit_type)

                    if is_indirect(insn):
                        mem_disp = None
                        has_base = False
                        for op in insn.operands:
                            if op.type == CS_OP_MEM:
                                mem_disp = op.mem.disp
                                has_base = op.mem.base != 0
                                break
                        use_jt = has_base and mem_disp is not None
                        if use_jt:
                            new_start = ctx.start_offset + mem_disp
                            if not (0 <= new_start < n):
                                break
                            max_idx = _find_jump_table_bounds(data, off, md, jt_addr=new_start)
                            tbl_end, jt_tgts = _scan_jump_table(
                                data, new_start, data_boundary,
                                max_index=max_idx, start_offset=ctx.start_offset,
                            )
                            jt_info = JumpTableInfo(
                                table_addr=new_start, jmp_addr=off,
                                targets=sorted(jt_tgts), max_index=max_idx,
                                table_end=tbl_end,
                            )
                            if jt_tgts:
                                for t in jt_tgts:
                                    if 0 <= t < n:
                                        worklist.append(t)
                                        _add_target(ctx, t, 'jt_target', _CONF_JT_CODE, source_offset=off)
                                for j in range(new_start, min(tbl_end, n)):
                                    if result[j] == 0.0:
                                        result[j] = _CONF_JT_DATA
                                        data_boundary[j] = _CONF_JT_DATA
                            ctx.jump_tables.append(jt_info)
                        elif mem_disp is not None:
                            ptr_addr = ctx.start_offset + mem_disp
                            if 0 <= ptr_addr < n - 2:
                                ptr = struct.unpack_from('<H', data, ptr_addr)[0]
                                target = ptr + ctx.start_offset
                                if 0 <= target < n:
                                    worklist.append(target)
                                    _add_target(ctx, target, 'indirect_jmp', _CONF_JT_CODE, source_offset=off)
                    else:
                        target = get_imm_target(insn)
                        if target is not None and 0 <= target < n:
                            worklist.append(target)
                            fork_exits[-1] = 'jmp'
                    break

                if mnem in _CALLS:
                    fork_ranges.append((spec_start, insn_end))
                    fork_exits.append('call')
                    spec_start = insn_end
                    if not is_indirect(insn):
                        target = get_imm_target(insn)
                        if target is not None and 0 <= target < n:
                            worklist.append(target)
                            _add_target(ctx, target, 'direct_call', _CONF_CALL_CODE, source_offset=insn.address)
                    off = insn_end
                    continue

                if is_cond_jump(mnem):
                    fork_ranges.append((spec_start, insn_end))
                    fork_exits.append('cond_jmp')
                    spec_start = insn_end
                    target = get_imm_target(insn)
                    if target is not None and 0 <= target < n:
                        worklist.append(target)
                    off = insn_end
                    continue

                off = insn_end

            is_seed_addr = spec_start in seeds if fork_ranges else True
            for idx, (fn_start, fn_end) in enumerate(fork_ranges):
                provenance = 'seed' if idx == 0 and is_seed_addr else 'call'
                if not is_seed_addr and fn_start not in ctx.code_targets:
                    provenance = 'jt'

                if provenance == 'seed':
                    conf = _CONF_SEED_CODE
                elif provenance == 'call':
                    conf = _CONF_CALL_CODE
                else:
                    conf = _CONF_JT_CODE

                for i in range(fn_start, fn_end):
                    if i < n:
                        result[i] = max(result[i], conf)

                block_exit = fork_exits[idx] if idx < len(fork_exits) else 'fallthrough'
                exit_targets = []
                if block_exit == 'jmp' and idx + 1 < len(fork_ranges):
                    next_start = fork_ranges[idx + 1][0]
                    exit_targets = [next_start] if next_start < n else []
                elif block_exit == 'call':
                    next_start = fork_ranges[idx + 1][0] if idx + 1 < len(fork_ranges) else fn_end
                    if next_start < n:
                        exit_targets = [next_start]
                elif block_exit == 'cond_jmp' and idx + 1 < len(fork_ranges):
                    next_start = fork_ranges[idx + 1][0]
                    exit_targets = [next_start] if next_start < n else []

                ctx.blocks.append(BasicBlock(
                    start=fn_start, end=fn_end,
                    exit_type=block_exit, exit_targets=exit_targets,
                    confidence=conf, provenance=provenance,
                ))

            if tlog:
                for idx, (fn_start, fn_end) in enumerate(fork_ranges):
                    block_exit = fork_exits[idx] if idx < len(fork_exits) else 'fallthrough'
                    tlog.event('recursive', 'block_created',
                               iteration=ctx.iteration,
                               addr=fn_start, end=fn_end,
                               exit_type=block_exit,
                               provenance=('seed' if idx == 0 and is_seed_addr
                                           else 'call' if fn_start in ctx.code_targets
                                           else 'jt'),
                               confidence=conf)

        _validate_jump_tables(ctx, data, n, result, md)

        ctx.report['jump_tables'] = []
        for jt in ctx.jump_tables:
            ctx.report['jump_tables'].append({
                'jmp_addr': jt.jmp_addr,
                'jmp_seg': jt.jmp_addr - ctx.start_offset,
                'table_start': jt.table_addr,
                'max_index': jt.max_index,
                'targets_found': len(jt.targets),
                'targets': jt.targets[:20],
                'tbl_end': jt.table_end,
                'validated': jt.validation_ok,
            })

        if tlog:
            tlog.event('recursive', 'phase_done', iteration=ctx.iteration,
                       addr=0, blocks_created=len(ctx.blocks),
                       jt_count=len(ctx.jump_tables),
                       non_zero=int((result != 0).sum()))

        return pl.Series('recursive', result, dtype=pl.Float32)
