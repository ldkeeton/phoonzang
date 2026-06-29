import polars as pl
import numpy as np

from lib.model import PhaseContext, CONF_DATA
from lib.pipeline.phase import Phase


_CONF_STRONG_DATA = -1.0
_CONF_WEAK_DATA = -0.6
_CONF_EDGE_DATA = -0.3


class CarvePhase(Phase):
    """String carving phase (independent opinion).

    Scans for printable-ASCII strings in undecided regions (bytes where
    *all* prior opinion columns are still 0.0).  Writes graduated DATA
    confidence by string length and broadens to a soft edge of 4 bytes
    before/after the string+terminator.

    Runs with different *min_body* lengths
    (e.g. 6 for conservative first pass, 4 for aggressive second pass).
    """

    requires_binary = True

    def __init__(self, min_body=4, input_slot='', output_slot=''):
        self.min_body = min_body
        self.input_slot = input_slot
        self.output_slot = output_slot

    def _undecided_mask(self, ctx):
        """Return bool array: True where no prior opinion column is non-zero."""
        n = len(ctx.binary_data)
        opin = np.zeros(n, dtype=bool)
        for name in ctx.layers.columns:
            if name in ('raw_byte', 'seed', 'squashed', self.output_slot):
                continue
            opin |= (ctx.layers[name].to_numpy() != 0.0)
        return ~opin

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = np.zeros(n, dtype=np.float32)
        min_body = self.min_body
        undecided = self._undecided_mask(ctx)

        i = 0
        while i < n:
            if not undecided[i]:
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
                end = i + 1
            else:
                continue

            conf = _CONF_STRONG_DATA if body_len >= 10 else _CONF_WEAK_DATA
            for j in range(start, end):
                result[j] = conf

            soft_left = max(0, start - 4)
            for j in range(soft_left, start):
                if result[j] == 0.0:
                    result[j] = _CONF_EDGE_DATA
            soft_right = min(n, end + 4)
            for j in range(end, soft_right):
                if result[j] == 0.0:
                    result[j] = _CONF_EDGE_DATA

        return pl.Series(self.output_slot, result, dtype=pl.Float32)
