"""Construction of the classification and refinement phase pipelines."""

from lib.phases.seed import SeedPhase
from lib.phases.sidecar import SidecarPhase
from lib.phases.aztec_overlay import AztecOverlayPhase
from lib.phases.dispatch import DispatchTablePhase
from lib.phases.pattern_seed import PatternSeedPhase
from lib.phases.carve import CarvePhase
from lib.phases.trampoline import TrampolinePhase
from lib.phases.error import ErrorHandlerPhase
from lib.phases.recursive import RecursiveDescentPhase
from lib.phases.prune import (
    PruneDeadPhase,
    PruneDeadBeforePhase,
    PruneZeroPhase,
)
from lib.phases.cascade import CascadeTargetPhase
from lib.phases.settle import SettlePhase
from lib.phases.forcecode import ForceCodePhase
from lib.phases.arbiter import ArbiterPhase


def _build_classify_phases(known_db=None):
    phases = [
        SeedPhase(),
        SidecarPhase(),
        AztecOverlayPhase(),
        DispatchTablePhase(),
    ]
    if known_db and known_db.get('signatures'):
        phases.append(PatternSeedPhase(
            known_db=known_db,
            input_slot='sidecar',
            output_slot='pattern_seed',
        ))
    phases.extend([
        CarvePhase(min_body=6, input_slot='pattern_seed' if known_db and known_db.get('signatures') else 'sidecar',
                    output_slot='carve_1'),
        TrampolinePhase(input_slot='carve_1'),
        ErrorHandlerPhase(),
        RecursiveDescentPhase(input_slot='error_handler', output_slot='recursive'),
        PruneDeadPhase(),
        PruneDeadBeforePhase(),
        PruneZeroPhase(),
        CarvePhase(min_body=4, input_slot='prune_zero', output_slot='carve_2'),
        CascadeTargetPhase(),
    ])
    return phases


def _build_refine_phases(last_classify_slot):
    return [
        SettlePhase(input_slot=last_classify_slot, output_slot='settled'),
        ForceCodePhase(),
        ArbiterPhase(),
    ]
