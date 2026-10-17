import polars as pl
import numpy as np

from lib.model import PhaseContext, CONF_DATA
from lib.pipeline.phase import Phase, PhaseContract


_CONF_SETTLE_DATA = -0.5


class SettlePhase(Phase):
    contract = PhaseContract(
        output_slot='settled',
        writes_columns=['settled'],
        reads_columns=['ALL'],  # prior_cols checks ALL columns with != 0.0
        reads_ctx=['binary_data'],
        requires_binary=True,
    )

    def __init__(self, input_slot='', output_slot='settled'):
        self.input_slot = input_slot
        self.output_slot = output_slot

    def run(self, input_col, ctx):
        n = len(ctx.binary_data)
        prior_cols = [c for c in ctx.layers.columns
                       if c not in ('raw_byte', 'seed', 'squashed', self.output_slot)
                       and not c.startswith('squashed_iter_')]

        has_opinion = np.zeros(n, dtype=bool)
        for name in prior_cols:
            col = ctx.layers[name].to_numpy()
            has_opinion |= (col != 0.0)

        result = np.zeros(n, dtype=np.float32)
        result[~has_opinion] = _CONF_SETTLE_DATA
        return pl.Series(self.output_slot, result, dtype=pl.Float32)
