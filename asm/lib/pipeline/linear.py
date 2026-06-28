"""Linear pipeline runner.

Executes phases in order, once.  This matches the original
classify → disassemble → verify flow.
"""

from lib.model import PhaseContext
from lib.pipeline.phase import Phase


def run_linear(ctx: PhaseContext, phases: list[Phase]):
    """Run each phase in order, exactly once."""
    for phase in phases:
        phase.run(ctx)
