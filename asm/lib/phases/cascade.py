import polars as pl
import numpy as np
from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.model import PhaseContext, CONF_CODE
from lib.pipeline.phase import Phase


class CascadePhase(Phase):
    """Cascade code recovery: promote DATA blocks that fully decode as x86.

    A data block is promoted to CODE when every byte decodes as a valid
    instruction (no illegal opcodes).  Used via ``-ccr`` flag.
    """

    requires_binary = True

    def __init__(self, input_slot='', output_slot='cascade'):
        self.input_slot = input_slot
        self.output_slot = output_slot

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = input_col.to_numpy().copy()

        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True

        i = 0
        while i < n:
            if result[i] >= -0.3:
                i += 1
                continue

            start = i
            while i < n and result[i] < -0.3:
                i += 1

            block = data[start:i]

            if len(block) >= 6:
                n_words = len(block) // 2
                zero_high = sum(1 for j in range(0, len(block) - 1, 2)
                                if block[j + 1] == 0x00)
                if zero_high >= 3 and zero_high * 100 // n_words >= 50:
                    continue

            try:
                insns = list(md.disasm(block, start))
            except Exception:
                continue

            if not insns:
                continue

            decoded = sum(insn.size for insn in insns)

            if decoded == len(block):
                for j in range(start, i):
                    result[j] = CONF_CODE
            elif decoded >= len(block) - 3:
                for j in range(start, start + decoded):
                    result[j] = CONF_CODE

        return pl.Series(self.output_slot, result, dtype=pl.Float32)
