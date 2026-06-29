import polars as pl
import numpy as np
from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.model import PhaseContext, CONF_CODE
from lib.pipeline.phase import Phase


_TERMINATORS = {'ret', 'retf', 'iret', 'hlt'}


class ForceCodePhase(Phase):
    """Force-code function bodies that the classifier missed.

    Reads ``ctx.label_map`` to find named function offsets, backtracks
    for ``push bp`` prologues, and marks the entire function body as
    CODE.
    """

    input_slot = 'settled'
    output_slot = 'force_code'
    requires_binary = True
    requires_label_map = True

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = input_col.to_numpy().copy()

        if not ctx.label_map:
            return pl.Series('force_code', result, dtype=pl.Float32)

        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True

        for off in sorted(ctx.label_map.keys()):
            lbl = ctx.label_map[off]

            expected = f'loc_{off:04x}'
            if lbl == expected or lbl.endswith(f'_{expected}'):
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
                if i < n:
                    result[i] = CONF_CODE

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
                result[i] = CONF_CODE

        return pl.Series('force_code', result, dtype=pl.Float32)
