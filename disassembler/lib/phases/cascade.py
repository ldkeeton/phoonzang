import numpy as np
import polars as pl
from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.model import IS_CODE, IS_DATA, TargetInfo
from lib.pipeline.phase import Phase, PhaseContract
from lib.phases.recursive import _add_target
from lib.x86util import _CALLS, _UNCOND_JUMPS, get_imm_target, is_cond_jump, is_indirect


class CascadeTargetPhase(Phase):
    """Feed verified small data-block code discoveries back into recursion.

    The output formatter can promote a fully decodable, control-flow-bearing
    DATA block of at most 32 bytes when it immediately follows CODE. This
    phase mirrors that admission rule using the previous iteration's bitmap,
    then registers the block and its direct-flow destinations before the next
    recursive-descent pass.
    """

    contract = PhaseContract(
        input_slot='carve_2',
        output_slot='cascade_targets',
        writes_columns=['cascade_targets'],
        reads_columns=['ALL'],
        reads_ctx=['binary_data', 'hard_data', 'code_targets', 'iteration',
                   'start_offset', 'trace'],
        writes_ctx=['code_targets', 'branch_targets', 'branch_edges',
                    'entry_targets'],
        requires_binary=True,
    )

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = np.zeros(n, dtype=np.float32)
        previous_slot = (
            f'squashed_iter_{ctx.iteration - 1}'
            if ctx.iteration is not None and ctx.iteration > 0 else None
        )
        if previous_slot is None or previous_slot not in ctx.layers.columns:
            return pl.Series(self.output_slot, result, dtype=pl.Float32)

        previous = ctx.layers[previous_slot].to_numpy()
        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True
        i = max(ctx.start_offset + 1, 1)

        while i < n:
            if previous[i] != IS_DATA:
                i += 1
                continue

            start = i
            while i < n and previous[i] == IS_DATA:
                i += 1
            end = i
            size = end - start
            preceded_by_code = previous[start - 1] == IS_CODE
            has_hard_data = bool(ctx.hard_data[start:end].any())

            if not preceded_by_code or not (2 <= size <= 32) or has_hard_data:
                continue

            insns = list(md.disasm(data[start:end], start))
            all_decoded = bool(insns) and sum(insn.size for insn in insns) >= size
            has_control_flow = any(
                insn.mnemonic in ('ret', 'retf', 'iret', 'call', 'lcall',
                                  'jmp', 'ljmp', 'jcxz', 'jecxz', 'loop',
                                  'loope', 'loopne')
                or is_cond_jump(insn.mnemonic)
                for insn in insns
            )

            if not all_decoded or not has_control_flow:
                if ctx.trace:
                    ctx.trace.event(
                        'cascade_flow', 'candidate_rejected',
                        iteration=ctx.iteration, addr=start, end=end,
                        size=size, preceded_by_code=preceded_by_code,
                        all_decoded=all_decoded,
                        has_control_flow=has_control_flow,
                        hard_data=has_hard_data,
                    )
                continue

            result[start:end] = 1.0
            existing = ctx.code_targets.get(start)
            if existing is None:
                ctx.code_targets[start] = TargetInfo(
                    address=start, reason='verified_cascade',
                    confidence=1.0, source_offset=start - 1, hard=True,
                )
            else:
                existing.hard = True

            direct_flows = []
            for insn in insns:
                mnemonic = insn.mnemonic
                if (mnemonic not in (_CALLS | _UNCOND_JUMPS)
                        and not is_cond_jump(mnemonic)):
                    continue
                if is_indirect(insn):
                    continue
                target = get_imm_target(insn)
                if target is None or not 0 <= target < n:
                    continue
                reason = (
                    'direct_call' if mnemonic in _CALLS else
                    'direct_jump' if mnemonic in _UNCOND_JUMPS else
                    'conditional_jump'
                )
                direct_flows.append({
                    'source': insn.address,
                    'target': target,
                    'reason': reason,
                })
                _add_target(
                    ctx, target, reason, 0.9, source_offset=insn.address,
                )

            if ctx.trace:
                ctx.trace.event(
                    'cascade_flow', 'candidate_accepted',
                    iteration=ctx.iteration, addr=start, end=end,
                    size=size, reason='preceded by CODE, fully decoded, control flow',
                    code_target_hard=True, direct_flows=direct_flows,
                )

        return pl.Series(self.output_slot, result, dtype=pl.Float32)
