import polars as pl
import numpy as np

from lib.model import PhaseContext, CONF_DATA
from lib.pipeline.phase import Phase


class CarvePhase(Phase):
    """String carving phase.

    Scans for printable-ASCII strings in unknown-confidence regions
    and marks them as DATA.  Runs with different *min_body* lengths
    (e.g. 6 for conservative first pass, 4 for aggressive second pass).
    """

    requires_binary = True

    def __init__(self, min_body=4, input_slot='', output_slot=''):
        self.min_body = min_body
        self.input_slot = input_slot
        self.output_slot = output_slot

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = input_col.to_numpy().copy()
        min_body = self.min_body

        i = 0
        while i < n:
            if result[i] != 0.0:
                i += 1
                continue
            if not (0x20 <= data[i] <= 0x7E):
                i += 1
                continue
            start = i
            while i < n and 0x20 <= data[i] <= 0x7E:
                i += 1
            body_len = i - start
            if body_len < min_body:
                continue
            if i < n and data[i] in (0x00, 0x24):
                for j in range(start, i + 1):
                    result[j] = CONF_DATA

        return pl.Series(self.output_slot, result, dtype=pl.Float32)
