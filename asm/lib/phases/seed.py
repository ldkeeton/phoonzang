import polars as pl

from lib.model import PhaseContext, CONF_UNKNOWN
from lib.pipeline.phase import Phase


class SeedPhase(Phase):
    """Initial layer: every byte is CONF_UNKNOWN (0.0).

    Reads raw_byte only to determine length; returns all zeros.
    """

    input_slot = 'raw_byte'
    output_slot = 'seed'

    def run(self, input_col, ctx):
        n = len(input_col)
        return pl.Series('seed', [CONF_UNKNOWN] * n, dtype=pl.Float32)
