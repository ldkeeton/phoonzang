import polars as pl
import numpy as np
from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.model import PhaseContext, CONF_CODE
from lib.pipeline.phase import Phase


_CONF_CASCADE_CODE = 0.6


class CascadePhase(Phase):
    """Cascade code recovery: promote DATA blocks that contain known code
    targets AND fully decode as x86.

    Only promotes when the block contains at least one offset from
    ``ctx.code_targets`` (offsets referenced by ``call`` or jump table
    instructions discovered during recursive descent).  The zero-high-
    byte heuristic is retained as a pre-filter.

    Used via ``-ccr`` flag.  Writes independent CODE=0.6 opinion.
    """

    requires_binary = True

    def __init__(self, input_slot='', output_slot='cascade'):
        self.input_slot = input_slot
        self.output_slot = output_slot

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = np.zeros(n, dtype=np.float32)

        if not ctx.code_targets:
            return pl.Series(self.output_slot, result, dtype=pl.Float32)

        # Read the input column to find DATA blocks (whoever set CONF_DATA)
        prior = input_col.to_numpy()

        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True

        i = 0
        while i < n:
            if prior[i] >= -0.3:
                i += 1
                continue

            start = i
            while i < n and prior[i] < -0.3:
                i += 1

            # Entry-point filter: block must contain at least one code target
            if not any(addr in ctx.code_targets for addr in range(start, i)):
                continue

            block = data[start:i]

            # Zero-high-byte heuristic (data-table pre-filter)
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

            # Verify block is fully decodable AND at least one call target
            # aligns with an instruction start
            if decoded >= len(block) - 3:
                insn_starts = {insn.address for insn in insns}
                has_aligned_entry = any(
                    addr in insn_starts for addr in range(start, i)
                    if addr in ctx.code_targets
                )
                if has_aligned_entry:
                    end = start + decoded if decoded < len(block) else i
                    for j in range(start, end):
                        result[j] = _CONF_CASCADE_CODE

        return pl.Series(self.output_slot, result, dtype=pl.Float32)
