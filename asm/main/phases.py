"""Construction of the classification and refinement phase pipelines."""

from lib.phases import (
    SeedPhase, SidecarPhase, AztecOverlayPhase, DispatchTablePhase,
    PatternSeedPhase, CarvePhase, TrampolinePhase, ErrorHandlerPhase,
    RecursiveDescentPhase, PruneDeadPhase, PruneDeadBeforePhase,
    PruneZeroPhase, CascadeTargetPhase,
    SettlePhase, ForceCodePhase, ArbiterPhase,
)


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
