import polars as pl
import numpy as np
from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.model import PhaseContext, CONF_CODE, SeedInfo, TargetInfo
from lib.pipeline.phase import Phase, PhaseContract


_TERMINATORS = {'ret', 'retf', 'iret', 'hlt'}
_CONF_FORCE_CODE = 0.8


class ForceCodePhase(Phase):
    contract = PhaseContract(
        input_slot='settled',
        output_slot='force_code',
        writes_columns=['force_code'],
        reads_columns=['ALL'],  # counts strong-data votes via col < -0.8
        reads_ctx=['binary_data', 'label_map', 'code_targets', 'seeds'],
        writes_ctx=['code_targets', 'seeds'],
        requires_binary=True,
        requires_label_map=True,
    )

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = np.zeros(n, dtype=np.float32)

        if not ctx.label_map:
            return pl.Series('force_code', result, dtype=pl.Float32)

        prior_names = [c for c in ctx.layers.columns
                        if c not in ('raw_byte', 'seed', 'squashed', self.output_slot)
                        and not c.startswith('squashed_iter_')]
        strong_data_count = np.zeros(n, dtype=np.int32)
        for name in prior_names:
            col = ctx.layers[name].to_numpy()
            strong_data_count += (col < -0.8).astype(np.int32)

        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True

        for off in sorted(ctx.label_map.keys()):
            lbl = ctx.label_map[off]

            expected = f'loc_{off:04x}'
            if lbl == expected or lbl.endswith(f'_{expected}'):
                continue

            if strong_data_count[off] >= 3:
                continue

            func_start = off
            for i in range(min(16, off), 0, -1):
                p = off - i
                if data[p] == 0x55:
                    try:
                        prev = list(md.disasm(data[p:off], p))
                    except Exception:
                        prev = []
                    if prev and prev[-1].address + prev[-1].size == off:
                        func_start = p
                        break

            for i in range(func_start, off):
                if i < n and strong_data_count[i] < 3:
                    result[i] = _CONF_FORCE_CODE

            end = min(func_start + 512, n)
            try:
                for insn in md.disasm(data[func_start:end], func_start):
                    if insn.mnemonic in _TERMINATORS:
                        end = insn.address + insn.size
                        break
                    end = insn.address + insn.size
            except Exception:
                pass
            for i in range(func_start, min(end, n)):
                if strong_data_count[i] < 3:
                    result[i] = _CONF_FORCE_CODE

            if func_start not in ctx.code_targets:
                ctx.code_targets[func_start] = TargetInfo(
                    address=func_start, reason='force_code',
                    confidence=_CONF_FORCE_CODE, source_offset=-1,
                )
            ctx.seeds.append(SeedInfo(
                address=func_start, source_phase='force_code',
                confidence=_CONF_FORCE_CODE, reason=f'known func: {lbl}',
            ))

        return pl.Series('force_code', result, dtype=pl.Float32)
