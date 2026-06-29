import polars as pl
import numpy as np

from lib.model import PhaseContext, CONF_DATA
from lib.pipeline.phase import Phase


_CONF_SETTLE_DATA = -0.5


class SettlePhase(Phase):
    """Independent opinion: remaining undecided bytes → weak DATA.

    A byte is undecided when NO prior opinion column has a non-zero
    value.  Writes DATA=-0.5 (default assumption, not proven).
    """

    def __init__(self, input_slot='', output_slot='settled'):
        self.input_slot = input_slot
        self.output_slot = output_slot

    def run(self, input_col, ctx):
        n = len(ctx.binary_data)
        prior_cols = [c for c in ctx.layers.columns
                       if c not in ('raw_byte', 'seed', 'squashed', self.output_slot)]

        has_opinion = np.zeros(n, dtype=bool)
        for name in prior_cols:
            col = ctx.layers[name].to_numpy()
            has_opinion |= (col != 0.0)

        result = np.zeros(n, dtype=np.float32)
        result[~has_opinion] = _CONF_SETTLE_DATA
        return pl.Series(self.output_slot, result, dtype=pl.Float32)
