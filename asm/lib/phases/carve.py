import polars as pl
import numpy as np

from lib.model import PhaseContext, CONF_DATA
from lib.pipeline.phase import Phase, PhaseContract


_CONF_STRONG_DATA = -1.0
_CONF_WEAK_DATA = -0.6
_CONF_EDGE_DATA = -0.3


class CarvePhase(Phase):
    contract = PhaseContract(
        writes_columns=['carve_1', 'carve_2'],
        reads_columns=['ALL'],  # undecided_mask checks EVERY column with col != 0.0
        reads_ctx=['binary_data', 'carve_strings_1'],
        writes_ctx=['carve_strings_1'],  # only carve_1 writes; carve_2 reads it
        requires_binary=True,
    )

    def __init__(self, min_body=4, input_slot='', output_slot=''):
        self.min_body = min_body
        self.input_slot = input_slot
        self.output_slot = output_slot

    def _undecided_mask(self, ctx):
        n = len(ctx.binary_data)
        opin = np.zeros(n, dtype=bool)
        for name in ctx.layers.columns:
            if name in ('raw_byte', 'seed', 'squashed', self.output_slot):
                continue
            if name.startswith('squashed_iter_'):
                continue
            opin |= (ctx.layers[name].to_numpy() != 0.0)
        return ~opin

    def _build_carve1_map(self, ctx):
        n = len(ctx.binary_data)
        ranges = []
        if 'carve_1' not in ctx.layers.columns:
            return ranges
        carve1_col = ctx.layers['carve_1'].to_numpy()
        i = 0
        while i < n:
            if carve1_col[i] <= -0.6:
                start = i
                while i < n and carve1_col[i] <= 0.0:
                    i += 1
                ranges.append((start, i))
            else:
                i += 1
        return ranges

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = np.zeros(n, dtype=np.float32)
        min_body = self.min_body
        undecided = self._undecided_mask(ctx)

        carve1_ranges = ctx.carve_strings_1 if ctx.carve_strings_1 else []
        if self.output_slot == 'carve_2' and not carve1_ranges:
            carve1_ranges = self._build_carve1_map(ctx)

        i = 0
        while i < n:
            if not undecided[i]:
                i += 1
                continue
            if not (0x20 <= data[i] <= 0x7E):
                i += 1
                continue

            start = i
            # absorb leading whitespace within printable range
            while i < n and data[i] == 0x20:
                i += 1
            body_start = i
            body_len = 0
            while i < n and 0x20 <= data[i] <= 0x7E:
                body_len += 1
                i += 1

            if body_len < min_body:
                continue

            terminator = None
            if i < n and data[i] in (0x00, 0x24):
                terminator = i
            elif i + 2 <= n and data[i] in (0x0D, 0x0A):
                skip = i
                while skip < n and data[skip] in (0x0D, 0x0A, 0x09, 0x20):
                    skip += 1
                if skip < n and data[skip] in (0x00, 0x24):
                    terminator = skip

            if terminator is None:
                continue

            end = terminator + 1

            if self.output_slot == 'carve_2':
                overlaps = False
                for p1s, p1e in carve1_ranges:
                    if start < p1e and end > p1s:
                        overlaps = True
                        break
                if overlaps:
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

            if self.output_slot == 'carve_1':
                ctx.carve_strings_1.append((start, end))

        if self.output_slot == 'carve_1':
            seen = set()
            deduped = []
            for r in ctx.carve_strings_1:
                if r not in seen:
                    seen.add(r)
                    deduped.append(r)
            ctx.carve_strings_1 = deduped

        return pl.Series(self.output_slot, result, dtype=pl.Float32)
