import polars as pl
import numpy as np
from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.model import PhaseContext, CONF_CODE, SeedInfo, TargetInfo
from lib.pipeline.phase import Phase, PhaseContract
from lib.x86util import disasm_one, is_indirect, get_imm_target


class TrampolinePhase(Phase):
    contract = PhaseContract(
        output_slot='trampoline',
        reads_columns=['ALL'],  # undecided_mask checks EVERY column with col < -0.3
        reads_ctx=['binary_data', 'seeds', 'code_targets'],
        writes_ctx=['seeds', 'code_targets', 'annotations'],
        requires_binary=True,
    )

    def __init__(self, input_slot='', output_slot='trampoline'):
        self.input_slot = input_slot
        self.output_slot = output_slot

    def _undecided_mask(self, ctx):
        n = len(ctx.binary_data)
        opin = np.zeros(n, dtype=bool)
        for name in ctx.layers.columns:
            if name in ('raw_byte', 'seed', 'squashed', self.output_slot):
                continue
            if name.startswith('squashed_iter_'):
                continue
            col = ctx.layers[name].to_numpy()
            opin |= (col < -0.3)
        return ~opin

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = np.zeros(n, dtype=np.float32)
        undecided = self._undecided_mask(ctx)

        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True

        limit = min(n, 4096)
        candidates = []
        off = 0
        while off < limit:
            if not undecided[off]:
                off += 1
                continue

            if data[off] == 0xE8 and off + 3 < n and data[off + 3] == 0xCB:
                pass
            elif data[off] == 0x9A and off + 5 < n and data[off + 5] == 0xCB:
                pass
            else:
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
            if ret_off >= n or data[ret_off] != 0xCB:
                off += 1
                continue

            candidates.append((off, target))
            off = ret_off + 1

        if len(candidates) >= 3:
            runs = []
            run_start = 0
            for i in range(1, len(candidates)):
                if candidates[i][0] != candidates[i - 1][0] + 4:
                    if i - run_start >= 3:
                        runs.append((run_start, i))
                    run_start = i
            if len(candidates) - run_start >= 3:
                runs.append((run_start, len(candidates)))

            for r_start, r_end in runs:
                run_len = r_end - r_start
                conf = 1.0 if run_len >= 20 else (0.7 if run_len >= 10 else 0.5)
                for i in range(r_start, r_end):
                    off, target = candidates[i]
                    ctx.seeds.append(SeedInfo(
                        address=target, source_phase='trampoline',
                        confidence=conf, reason='trampoline dispatch stub',
                    ))
                    if target not in ctx.code_targets:
                        ctx.code_targets[target] = TargetInfo(
                            address=target, reason='trampoline',
                            confidence=conf, source_offset=off,
                        )
                    ctx.annotations.append((off, target, 'trampoline'))
                    for j in range(off, min(off + 4, n)):
                        result[j] = conf

        return pl.Series(self.output_slot, result, dtype=pl.Float32)
