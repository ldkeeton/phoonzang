import polars as pl
import numpy as np

from lib.model import PhaseContext, CONF_DATA
from lib.pipeline.phase import Phase


class SettlePhase(Phase):
    """Remaining CONF_UNKNOWN bytes → CONF_DATA."""

    def __init__(self, input_slot='', output_slot='settled'):
        self.input_slot = input_slot
        self.output_slot = output_slot

    def run(self, input_col, ctx):
        result = input_col.to_numpy().copy()
        result[result == 0.0] = CONF_DATA
        return pl.Series(self.output_slot, result, dtype=pl.Float32)
