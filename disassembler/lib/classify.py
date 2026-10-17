"""Backward-compatibility shim — wraps the new functional pipeline."""

from lib.model import PhaseContext, IS_UNKNOWN, IS_CODE, IS_DATA
from lib.phases.seed import SeedPhase
from lib.phases.sidecar import SidecarPhase
from lib.phases.carve import CarvePhase
from lib.phases.trampoline import TrampolinePhase
from lib.phases.error import ErrorHandlerPhase
from lib.phases.recursive import RecursiveDescentPhase
from lib.phases.prune import (
    PruneDeadPhase,
    PruneZeroPhase,
)
from lib.phases.settle import SettlePhase
from lib.phases.arbiter import ArbiterPhase
from lib.phases.cascade import CascadeTargetPhase
from lib.pipeline.functional import run_functional


def _build_phases():
    return [
        SeedPhase(),
        SidecarPhase(),
        CarvePhase(min_body=6, input_slot='sidecar', output_slot='carve_1'),
        TrampolinePhase(input_slot='carve_1'),
        ErrorHandlerPhase(),
        RecursiveDescentPhase(),
        PruneDeadPhase(),
        PruneZeroPhase(),
        CarvePhase(min_body=4, input_slot='prune_zero', output_slot='carve_2'),
        CascadeTargetPhase(),
    ]


def classify(data, start_offset=0, entry_points=None, sidecar_entry=None):
    ctx = PhaseContext(
        binary_data=data,
        start_offset=start_offset,
        entry_points=entry_points,
        sidecar_entry=sidecar_entry,
    )

    phases = _build_phases()
    run_functional(ctx, phases)

    last_slot = phases[-1].output_slot
    settle = SettlePhase(input_slot=last_slot, output_slot='settled')
    arbiter = ArbiterPhase()
    run_functional(ctx, [settle, arbiter])

    bitmap = ctx.bitmap

    info = {
        'discovered': set(ctx.code_targets.keys()),
        'call_targets': set(ctx.code_targets.keys()),
        'jt_targets': set(),
    }

    return bitmap, info
