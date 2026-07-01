"""Iterative pipeline runner — repeats until arbiter output stabilises."""

import time

import numpy as np
import polars as pl

from lib.model import PhaseContext
from lib.pipeline.phase import Phase
from lib.pipeline.functional import run_functional, _timings


def run_iterative(ctx: PhaseContext, phases: list[Phase],
                  arbiter_phase: Phase | None = None,
                  max_iter: int = 5):
    """Run *phases* in a loop until the squashed output stops changing.

    After each iteration the squashed column is fed back so phases in
    the next round can treat confirmed CODE/DATA regions as boundaries.
    """
    all_phases = list(phases)
    if arbiter_phase is not None:
        all_phases = list(phases) + [arbiter_phase]
    elif not any(p.output_slot == 'squashed' for p in all_phases):
        raise ValueError('No ArbiterPhase in iterative pipeline — '
                         'pass arbiter_phase= explicitly')

    prev_squashed = None
    prev_code_target_count = len(ctx.code_targets)

    for iteration in range(max_iter):
        ctx.iteration = iteration
        t0 = time.perf_counter()

        for phase in all_phases:
            if phase.input_slot:
                input_col = ctx.layers[phase.input_slot]
            else:
                input_col = None

            t_phase = time.perf_counter()
            result = phase.run(input_col, ctx)
            dt = time.perf_counter() - t_phase

            if not isinstance(result, pl.Series):
                raise TypeError(
                    f'{phase.name} returned {type(result).__name__}, '
                    f'expected pl.Series')

            ctx.add_layer(phase.output_slot, result)
            arr = result.to_numpy()
            nz = int((arr != 0).sum())
            pos = int((arr > 0.3).sum())
            neg = int((arr < -0.3).sum())
            _timings.append((phase.output_slot, dt, nz, pos))
            if phase.output_slot not in ctx.report.get('phases', {}):
                ctx.report.setdefault('phases', {})[phase.output_slot] = {}
            ctx.report['phases'][phase.output_slot] = {
                'time_s': round(dt, 3),
                'nz': nz,
                'pos': pos,
                'neg': neg,
            }

        squashed = ctx.layers['squashed'].to_numpy()

        if prev_squashed is not None:
            changed = int((squashed != prev_squashed).sum())
            code_target_count = len(ctx.code_targets)
            if changed == 0 and code_target_count == prev_code_target_count:
                ctx.report.setdefault('iterative', {})['iterations'] = iteration + 1
                ctx.report['iterative']['converged'] = True
                break
            prev_code_target_count = code_target_count

        ctx.add_layer(f'squashed_iter_{iteration}',
                      pl.Series(f'squashed_iter_{iteration}',
                                 squashed.astype(np.float32)))
        prev_squashed = squashed
        t_iter = time.perf_counter() - t0
        ctx.report.setdefault('iterative', {})[f'iter_{iteration}_time_s'] = round(t_iter, 3)
    else:
        ctx.report.setdefault('iterative', {})['iterations'] = max_iter
        ctx.report['iterative']['converged'] = False
