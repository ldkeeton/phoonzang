"""Iterative fixpoint pipeline runner.

Re-runs phases until the bitmap stabilises (no new changes) or
the maximum iteration count is reached.  Later phases (e.g.
conflict detection) feed annotations back to the start of the
loop so earlier phases can refine their decisions.
"""

from lib.model import PhaseContext
from lib.pipeline.phase import Phase


def run_iterative(ctx: PhaseContext, phases: list[Phase], max_iterations=10):
    """Run phases iteratively until fixpoint.

    Each iteration:
      1. Run every phase in order.
      2. If no phase changed the bitmap, we are done.
      3. Otherwise reset instruction list and re-run.
    """
    for iteration in range(max_iterations):
        before = ctx.change_count

        for phase in phases:
            phase.run(ctx)

        # Re-disassemble after bitmap changes so decode sees the
        # updated classification.
        if ctx.change_count > before:
            _re_disassemble(ctx)

        if ctx.change_count == before:
            break


def _re_disassemble(ctx: PhaseContext):
    """Re-disassemble using the current bitmap."""
    from lib.decode import disassemble
    ctx.instructions = list(disassemble(
        ctx.binary_data, ctx.start_offset, bitmap=ctx.bitmap,
    ))
