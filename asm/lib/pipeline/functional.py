"""Functional pipeline runner with per-phase timing.

Each phase declares an *input_slot* and *output_slot*.  The runner
reads the input column from ``ctx.layers``, calls ``phase.run()``,
and stores the result as a new column.  Phases never mutate existing
columns.
"""

import time
import polars as pl

from lib.model import PhaseContext
from lib.pipeline.phase import Phase


# Accumulated per-phase timing, reset on each run
_timings: list[tuple[str, float, int, int]] = []


def run_functional(ctx: PhaseContext, phases: list[Phase]):
    """Run each phase in order.  Each phase adds one column to ctx.layers."""
    global _timings
    _timings = []
    for phase in phases:
        if phase.input_slot:
            input_col = ctx.layers[phase.input_slot]
        else:
            input_col = None

        t0 = time.perf_counter()
        result = phase.run(input_col, ctx)
        dt = time.perf_counter() - t0

        if not isinstance(result, pl.Series):
            raise TypeError(
                f'{phase.name} returned {type(result).__name__}, '
                f'expected pl.Series')

        ctx.add_layer(phase.output_slot, result)
        arr = result.to_numpy()
        _timings.append((phase.output_slot, dt, int((arr != 0).sum()),
                         int((arr > 0.3).sum())))


def report_timings():
    """Return timing summary lines."""
    global _timings
    lines = []
    total = sum(t for _, t, _, _ in _timings)
    for name, t, nz, pos in _timings:
        col_meta = f'  nz={nz} pos={pos}' if nz else ''
        lines.append(f'    {name:<18s} {t:.1f}s{col_meta}')
    lines.append(f'    {"total":<18s} {total:.1f}s')
    return '\n'.join(lines)
