import polars as pl
import numpy as np

from lib.model import PhaseContext, IS_UNKNOWN, IS_CODE, IS_DATA
from lib.pipeline.phase import Phase


class ArbiterPhase(Phase):
    """Reduce the last f32 confidence column to a single u8 squashed column.

    Each phase in the pipeline already builds on the previous phase's
    output (starting with ``input_col.to_numpy().copy()``).  So the
    last column written before the arbiter *is* the final classified
    state.  This phase simply thresholds that column to u8 for legacy
    consumers (disassemble, verify).
    """

    input_slot = ''
    output_slot = 'squashed'

    def run(self, _input, ctx):
        phase_cols = [c for c in ctx.layers.columns
                      if c not in ('raw_byte', 'squashed')]
        n = len(ctx.binary_data)

        if not phase_cols:
            return pl.Series('squashed', [IS_UNKNOWN] * n, dtype=pl.UInt8)

        last_col = ctx.layers[phase_cols[-1]]
        arr = last_col.to_numpy()

        result = np.full(n, IS_UNKNOWN, dtype=np.uint8)
        result[arr > 0.0] = IS_CODE
        result[arr < 0.0] = IS_DATA

        return pl.Series('squashed', result, dtype=pl.UInt8)
