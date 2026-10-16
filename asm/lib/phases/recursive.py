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
        # The ``cmp ax, N; jcc`` bounds check belongs to *this* dispatcher and
        # sits just before the ``xchg bx, ax; shl bx, 1; jmp [cs:bx+table]``
        # tail.  Search backwards from the jmp so an earlier, unrelated
        # switch's cmp (which a forward window would hit first) cannot bound
        # this table.
        lo = max(0, jmp_addr - 16)
        for i in range(jmp_addr - 1, lo - 1, -1):
            if (data[i] == 0x3D and i + 3 < len(data)
                    and data[i + 3] in (0x73, 0x77, 0x72, 0x76)):
                imm = struct.unpack_from('<H', data, i + 1)[0]
                if data[i + 3] in (0x77, 0x72):
                    return imm
                return max(imm - 1, 0)

        # Fallback: a forward scan around the table (historical behaviour).
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


def _code_off(ctx, value):
    """Translate an embedded CS offset to a file offset.

    Overlays store ``o_corg``-based CS values (``SegmentModel.code_offset``);
    MZ images and drivers use the plain ``start_offset + value`` convention.

    Embedded code offsets are 16-bit.  capstone sign-extends a memory
    displacement whose high byte is set (e.g. ``jmp [cs:bx - 0x78c1]`` arrives
    as ``-0x78c1``), so mask to 16 bits before translating or the range check
    rejects a valid table.
    """
    value &= 0xFFFF
    segments = getattr(ctx, 'segments', None)
    if segments is not None:
        off = segments.code_offset(value)
        if off is not None:
            return off
    return ctx.start_offset + value


def _scan_jump_table(data, start, conf_arr, max_index=None, translate=None):
    n = len(conf_arr)
    targets = set()
    tbl = start
    max_entries = (max_index + 1) if max_index is not None else 256
    entries_read = 0
    while tbl + 2 <= n and entries_read < max_entries:
        val = struct.unpack_from('<H', data, tbl)[0]
        buf_val = translate(val) if translate is not None else val
        if not (0 <= buf_val < n):
            break
        # The data-vote stop is only a length heuristic for a table whose
        # bounds are unknown.  When max_index came from the cmp/jae bounds
        # pattern the count is authoritative, so accept in-range entries
        # even if a prior phase (prune_dead after a jmp-ending block) has
        # already voted the arm data -- otherwise valid switch tables are
        # never detected.
        if max_index is None and conf_arr[buf_val] < -0.3:
            break
        targets.add(buf_val)
        tbl += 2
        entries_read += 1
    if len(targets) >= 3:
        return tbl, targets
    return start, set()


def _add_target(ctx, address, reason, confidence, source_offset=-1):
    if ctx.is_hard_data(address):
        if ctx.trace:
            ctx.trace.event(
                'recursive', 'code_target_rejected', iteration=ctx.iteration,
                addr=address, source_offset=source_offset, reason=reason,
                confidence=confidence, hard_data=True,
            )
        return
    if reason in ('direct_jump', 'conditional_jump'):
        ctx.branch_targets.add(address)
        if source_offset >= 0:
            ctx.branch_edges.add((source_offset, address))
    else:
        ctx.entry_targets.add(address)
    existing = ctx.code_targets.get(address)
    hard = reason in ('direct_call', 'direct_jump', 'conditional_jump')
    accepted = (existing is None or confidence > existing.confidence
                or (hard and not existing.hard))
    if accepted:
        ctx.code_targets[address] = TargetInfo(
            address=address, reason=reason,
            confidence=max(confidence, existing.confidence if existing else 0.0),
            source_offset=source_offset,
            hard=hard or bool(existing and existing.hard),
        )
    if ctx.trace:
        info = ctx.code_targets.get(address)
        ctx.trace.event(
            'recursive', 'code_target_discovered', iteration=ctx.iteration,
            addr=address, source_offset=source_offset, reason=reason,
            confidence=confidence, accepted=accepted,
            previous_reason=existing.reason if existing else None,
            previous_confidence=existing.confidence if existing else None,
            previous_hard=existing.hard if existing else False,
            target_reason=info.reason if info else None,
            target_confidence=info.confidence if info else None,
            target_hard=info.hard if info else False,
            hard_data=ctx.is_hard_data(address),
        )


def _validate_jump_tables(ctx, data, n, result, md):
    """Re-validate jump tables after recursive descent has decoded the
    binary.  A table is valid when most of its targets land inside
    confirmed basic blocks with proper terminators.  Invalid tables
    have their targets demoted and their table region re-marked."""
    for jt in ctx.jump_tables:
        if not jt.targets:
            continue
        # The table holds target words, never code.  A hard-path block that
        # happened to be decoded linearly across the table stamps hard_code
        # on these bytes, which the arbiter treats as authoritative; undo
        # that so the table is emitted as data/jumptable.
        for j in range(jt.table_addr, min(jt.table_end, n)):
            if not ctx.hard_data[j]:
                result[j] = _CONF_JT_DATA
                ctx.hard_code[j] = False
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


def _inline_call_table(ctx, data, n, call, prev, recognizers):
    """The inline key/target table after a non-returning *call*, or None.

    Each recognizer takes ``(data, call, prev)`` -- a direct near call and the
    instruction before it -- and returns the ``(keys, targets)`` word counts
    of the table that follows the call, or None (e.g.
    ``lib.phases.aztec_switch.aztec_switch_layout``).  Returns a
    ``JumpTableInfo`` whose first ``keys`` words are switch keys and whose
    remaining words are code targets (file offsets in ``targets``).  Refuses
    -- returns None -- unless every target word lands in the image, so a
    misread count never turns data into code roots.
    """
    if not recognizers or is_indirect(call) or call.bytes[:1] != b'\xe8':
        return None
    layout = None
    for recognize in recognizers:
        layout = recognize(data, call, prev)
        if layout is not None:
            break
    if layout is None:
        return None
    keys, slots = layout
    if keys < 0 or slots < 1:
        return None
    start = call.address + call.size
    end = start + 2 * (keys + slots)
    if end > n or ctx.hard_data[start:end].any():
        return None
    targets = []
    for i in range(slots):
        value = struct.unpack_from('<H', data, start + 2 * (keys + i))[0]
        target = _code_off(ctx, value)
        if not (0 <= target < n) or start <= target < end:
            return None
        targets.append(target)
    return JumpTableInfo(
        table_addr=start, jmp_addr=call.address, targets=sorted(set(targets)),
        max_index=keys + slots - 1, table_end=end, keys=keys,
    )


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
        reads_ctx=['binary_data', 'seeds', 'code_targets', 'start_offset',
                   'hard_data', 'trace'],
        writes_ctx=['code_targets', 'blocks', 'jump_tables', 'hard_code',
                    'branch_targets', 'branch_edges', 'entry_targets'],
        requires_binary=True,
    )

    def __init__(self, input_slot='seed', output_slot='recursive',
                 inline_tables=()):
        self.input_slot = input_slot
        self.output_slot = output_slot
        # Toolchain recognizers for non-returning calls followed by an inline
        # key/target table (see ``_inline_call_table``).
        self.inline_tables = tuple(inline_tables)

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = np.zeros(n, dtype=np.float32)
        tlog = ctx.trace
        ctx.hard_code[:] = False
        ctx.seeds = [s for s in ctx.seeds
                     if not ctx.is_hard_data(s.address)]
        ctx.code_targets = {
            addr: info for addr, info in ctx.code_targets.items()
            if not ctx.is_hard_data(addr)
        }
        ctx.label_map = {
            addr: label for addr, label in ctx.label_map.items()
            if not ctx.is_hard_data(addr)
        }

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
            if (addr not in visited_starts and 0 <= addr < n
                    and not ctx.is_hard_data(addr)):
                worklist.append(addr)

        ctx.jump_tables = []

        for scan_idx in range(ctx.start_offset, n - 5):
            if ctx.is_hard_data(scan_idx):
                continue
            if (data[scan_idx] != 0x2E or data[scan_idx + 1] != 0xFF
                    or data[scan_idx + 2] not in (0xA7, 0xA5)):
                continue
            if data_boundary[scan_idx] < _HARD_DATA:
                continue
            disp = struct.unpack_from('<H', data, scan_idx + 3)[0]
            tgt = _code_off(ctx, disp)
            if not (0 <= tgt < n):
                continue
            max_idx = _find_jump_table_bounds(data, scan_idx, md, jt_addr=tgt)
            tbl_end, jt_tgts = _scan_jump_table(
                data, tgt, data_boundary,
                max_index=max_idx,
                translate=lambda v: _code_off(ctx, v),
            )
            jt_info = JumpTableInfo(
                table_addr=tgt, jmp_addr=scan_idx,
                targets=sorted(jt_tgts), max_index=max_idx,
                table_end=tbl_end,
            )
            if jt_tgts:
                for t in jt_tgts:
                    if 0 <= t < n and not ctx.is_hard_data(t):
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
            target_info = ctx.code_targets.get(off)
            if off in visited_starts or off < 0 or off >= n:
                if tlog and off >= 0 and off < n:
                    tlog.event('recursive', 'worklist_skip_visited',
                               iteration=ctx.iteration, addr=off,
                               prior_code=float(prior_code[off]),
                               data_boundary=float(data_boundary[off]),
                               target_reason=target_info.reason if target_info else None,
                               target_hard=target_info.hard if target_info else False,
                               hard_code=bool(ctx.hard_code[off]))
                continue
            if ctx.is_hard_data(off):
                if tlog:
                    tlog.event('recursive', 'worklist_skip_hard_data',
                               iteration=ctx.iteration, addr=off,
                               target_reason=target_info.reason if target_info else None,
                               target_hard=target_info.hard if target_info else False)
                continue
            hard_path = bool(target_info and target_info.hard)
            if data_boundary[off] < _HARD_DATA:
                if not hard_path and tlog:
                    tlog.event('recursive', 'worklist_skip_data_boundary',
                               iteration=ctx.iteration, addr=off,
                               data_boundary=float(data_boundary[off]),
                               target_reason=target_info.reason if target_info else None,
                               target_hard=target_info.hard if target_info else False,
                               hard_data=bool(ctx.hard_data[off]))
                if not hard_path:
                    continue
            if prior_code[off] > _SOFT_CODE and not hard_path:
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
                           data_boundary=float(data_boundary[off]),
                           target_reason=target_info.reason if target_info else None,
                           target_hard=target_info.hard if target_info else False,
                           hard_path=hard_path,
                           hard_data=bool(ctx.hard_data[off]))

            fork_ranges = []
            fork_exits = []
            spec_start = off
            gen = md.disasm(data[off:], off)
            last_insn = None

            while off < n:
                if ctx.is_hard_data(off):
                    if spec_start < off:
                        fork_ranges.append((spec_start, off))
                        fork_exits.append('fallthrough')
                    if tlog:
                        tlog.event('recursive', 'decode_hard_data_boundary',
                                   iteration=ctx.iteration,
                                   addr=off, spec_start=spec_start)
                    break
                if data_boundary[off] < _HARD_DATA:
                    if not hard_path and tlog:
                        tlog.event('recursive', 'decode_data_boundary',
                                   iteration=ctx.iteration,
                                   addr=off,
                                   spec_start=spec_start,
                                   data_boundary=float(data_boundary[off]))
                    if not hard_path:
                        break
                if prior_code[off] > _SOFT_CODE and not hard_path:
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

                prev_insn, last_insn = last_insn, insn
                insn_end = insn.address + insn.size
                mnem = insn.mnemonic

                # Never let an instruction straddle an explicit data range.
                if ctx.hard_data[insn.address:insn_end].any():
                    if spec_start < insn.address:
                        fork_ranges.append((spec_start, insn.address))
                        fork_exits.append('fallthrough')
                    break

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
                                mem_disp = op.mem.disp & 0xFFFF
                                has_base = op.mem.base != 0
                                break
                        use_jt = has_base and mem_disp is not None
                        if use_jt:
                            new_start = _code_off(ctx, mem_disp)
                            if not (0 <= new_start < n):
                                break
                            max_idx = _find_jump_table_bounds(data, off, md, jt_addr=new_start)
                            tbl_end, jt_tgts = _scan_jump_table(
                                data, new_start, data_boundary,
                                max_index=max_idx,
                                translate=lambda v: _code_off(ctx, v),
                            )
                            jt_info = JumpTableInfo(
                                table_addr=new_start, jmp_addr=off,
                                targets=sorted(jt_tgts), max_index=max_idx,
                                table_end=tbl_end,
                            )
                            if jt_tgts:
                                for t in jt_tgts:
                                    if 0 <= t < n and not ctx.is_hard_data(t):
                                        worklist.append(t)
                                        _add_target(ctx, t, 'jt_target', _CONF_JT_CODE, source_offset=off)
                                for j in range(new_start, min(tbl_end, n)):
                                    if result[j] == 0.0:
                                        result[j] = _CONF_JT_DATA
                                        data_boundary[j] = _CONF_JT_DATA
                            ctx.jump_tables.append(jt_info)
                        elif mem_disp is not None:
                            ptr_addr = _code_off(ctx, mem_disp)
                            if 0 <= ptr_addr < n - 2:
                                ptr = struct.unpack_from('<H', data, ptr_addr)[0]
                                target = _code_off(ctx, ptr)
                                if 0 <= target < n and not ctx.is_hard_data(target):
                                    worklist.append(target)
                                    _add_target(ctx, target, 'indirect_jmp', _CONF_JT_CODE, source_offset=off)
                    else:
                        target = get_imm_target(insn)
                        if target is not None and 0 <= target < n:
                            if tlog:
                                tlog.event(
                                    'recursive', 'direct_flow',
                                    iteration=ctx.iteration, addr=insn.address,
                                    target=target, mnemonic=mnem,
                                    flow='jump', target_hard_data=ctx.is_hard_data(target),
                                )
                            worklist.append(target)
                            _add_target(ctx, target, 'direct_jump',
                                        _CONF_CALL_CODE,
                                        source_offset=insn.address)
                            fork_exits[-1] = 'jmp'
                    break

                swt = (_inline_call_table(ctx, data, n, insn, prev_insn,
                                          self.inline_tables)
                       if mnem == 'call' else None)
                if swt is not None:
                    # The helper never returns: the bytes after the call are
                    # its key/target table, and the targets are the case arms.
                    fork_ranges.append((spec_start, insn_end))
                    fork_exits.append('jmp_indirect')
                    helper = get_imm_target(insn)
                    worklist.append(helper)
                    _add_target(ctx, helper, 'direct_call', _CONF_CALL_CODE,
                                source_offset=insn.address)
                    for t in swt.targets:
                        if not ctx.is_hard_data(t):
                            worklist.append(t)
                            _add_target(ctx, t, 'jt_target', _CONF_JT_CODE,
                                        source_offset=insn.address)
                    for j in range(swt.table_addr, swt.table_end):
                        result[j] = _CONF_JT_DATA
                        data_boundary[j] = _CONF_JT_DATA
                    if all(jt.table_addr != swt.table_addr
                           for jt in ctx.jump_tables):
                        ctx.jump_tables.append(swt)
                    if tlog:
                        tlog.event('recursive', 'inline_call_table',
                                   iteration=ctx.iteration, addr=insn.address,
                                   table=swt.table_addr, end=swt.table_end,
                                   keys=swt.keys, targets=swt.targets[:20])
                    break

                if mnem in _CALLS:
                    fork_ranges.append((spec_start, insn_end))
                    fork_exits.append('call')
                    spec_start = insn_end
                    if not is_indirect(insn):
                        target = get_imm_target(insn)
                        if target is not None and 0 <= target < n:
                            if tlog:
                                tlog.event(
                                    'recursive', 'direct_flow',
                                    iteration=ctx.iteration, addr=insn.address,
                                    target=target, mnemonic=mnem,
                                    flow='call', target_hard_data=ctx.is_hard_data(target),
                                )
                            worklist.append(target)
                            _add_target(ctx, target, 'direct_call',
                                        _CONF_CALL_CODE,
                                        source_offset=insn.address)
                    off = insn_end
                    continue

                if is_cond_jump(mnem):
                    fork_ranges.append((spec_start, insn_end))
                    fork_exits.append('cond_jmp')
                    spec_start = insn_end
                    target = get_imm_target(insn)
                    if target is not None and 0 <= target < n:
                        if tlog:
                            tlog.event(
                                'recursive', 'direct_flow',
                                iteration=ctx.iteration, addr=insn.address,
                                target=target, mnemonic=mnem,
                                flow='conditional_jump',
                                target_hard_data=ctx.is_hard_data(target),
                            )
                        worklist.append(target)
                        _add_target(ctx, target, 'conditional_jump',
                                    _CONF_CALL_CODE,
                                    source_offset=insn.address)
                    off = insn_end
                    continue

                off = insn_end

            is_seed_addr = spec_start in seeds if fork_ranges else True
            for idx, (fn_start, fn_end) in enumerate(fork_ranges):
                provenance = 'seed' if idx == 0 and is_seed_addr else 'call'
                if not is_seed_addr and fn_start not in ctx.code_targets:
                    provenance = 'jt'

                if hard_path:
                    conf = 1.0
                elif provenance == 'seed':
                    conf = _CONF_SEED_CODE
                elif provenance == 'call':
                    conf = _CONF_CALL_CODE
                else:
                    conf = _CONF_JT_CODE

                for i in range(fn_start, fn_end):
                    if i < n and not ctx.is_hard_data(i):
                        result[i] = max(result[i], conf)
                        if hard_path:
                            ctx.hard_code[i] = True

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
                               confidence=conf, hard_path=hard_path,
                               target_hard=bool(
                                   ctx.code_targets.get(fn_start)
                                   and ctx.code_targets[fn_start].hard
                               ))

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
