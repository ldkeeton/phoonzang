"""Functional pipeline runner.

Each phase declares an *input_slot* and *output_slot*.  The runner
reads the input column from ``ctx.layers``, calls ``phase.run()``,
and stores the result as a new column.  Phases never mutate existing
columns.
"""

import polars as pl

from lib.model import PhaseContext
from lib.pipeline.phase import Phase


def run_functional(ctx: PhaseContext, phases: list[Phase]):
    """Run each phase in order.  Each phase adds one column to ctx.layers."""
    for phase in phases:
        if phase.input_slot:
            input_col = ctx.layers[phase.input_slot]
        else:
            input_col = None

        result = phase.run(input_col, ctx)

        if not isinstance(result, pl.Series):
            raise TypeError(
                f'{phase.name} returned {type(result).__name__}, '
                f'expected pl.Series')

        ctx.add_layer(phase.output_slot, result)
