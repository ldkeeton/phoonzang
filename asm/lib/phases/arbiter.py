import polars as pl
import numpy as np

from lib.model import PhaseContext, IS_UNKNOWN, IS_CODE, IS_DATA
from lib.pipeline.phase import Phase


# Per-phase voting weights (higher = more reliable / more authoritative)
_PHASE_WEIGHTS = {
    'sidecar': 5,        # manual override, ground truth
    'recursive': 5,      # CFG-proven, most reliable automatic signal
    'force_code': 4,     # name-based (known_funcs.json)
    'trampoline': 3,     # structural pattern (call+retf)
    'prune_dead': 3,     # structural heuristic (reliable)
    'prune_zero': 3,     # structural heuristic (reliable)
    'carve_1': 3,        # string carving, conservative
    'carve_2': 2,        # string carving, aggressive
    'error_handler': 2,  # heuristic pattern match
    'settled': 1,        # default assumption, weakest
}

_CONF_CODE = 0.3
_CONF_DATA = -0.3


class ArbiterPhase(Phase):
    """Weighted-voting arbiter across all independent opinion columns.

    For each byte:
      1. Sum weighted votes for CODE (opinion > +0.3) vs DATA (opinion < -0.3)
      2. If CODE votes > DATA votes by at least 2: IS_CODE
      3. If DATA votes > CODE votes by at least 2: IS_DATA
      4. Otherwise: fall back to "last non-zero opinion wins"

    This ensures that strong consensus overrides a single phase's
    decision, while the fallback preserves old semantics when phases
    disagree closely.
    """

    input_slot = ''
    output_slot = 'squashed'

    def run(self, _input, ctx):
        n = len(ctx.binary_data)

        # Collect independent opinion columns (exclude raw_byte, seed, squashed)
        phase_cols = [c for c in ctx.layers.columns
                      if c not in ('raw_byte', 'seed', 'squashed')]

        if not phase_cols:
            return pl.Series('squashed', [IS_UNKNOWN] * n, dtype=pl.UInt8)

        code_weight = np.zeros(n, dtype=np.float32)
        data_weight = np.zeros(n, dtype=np.float32)

        for name in phase_cols:
            w = _PHASE_WEIGHTS.get(name, 1)
            col = ctx.layers[name].to_numpy()
            code_weight = np.where(col > _CONF_CODE, code_weight + w, code_weight)
            data_weight = np.where(col < _CONF_DATA, data_weight + w, data_weight)

        result = np.full(n, IS_UNKNOWN, dtype=np.uint8)

        # Clear majority
        code_wins = (code_weight >= data_weight + 2)
        data_wins = (data_weight >= code_weight + 2)
        result[code_wins] = IS_CODE
        result[data_wins] = IS_DATA

        # Fallback: last non-zero opinion wins (preserves old semantics)
        last_col = ctx.layers[phase_cols[-1]]
        last_arr = last_col.to_numpy()
        undecided = (result == IS_UNKNOWN)
        result[undecided & (last_arr > 0.0)] = IS_CODE
        result[undecided & (last_arr < 0.0)] = IS_DATA

        # Log vote breakdown
        vote_log = {}
        for name in phase_cols:
            w = _PHASE_WEIGHTS.get(name, 1)
            col = ctx.layers[name].to_numpy()
            cw = int((col > _CONF_CODE).sum())
            dw = int((col < _CONF_DATA).sum())
            vote_log[name] = {'weight': w, 'code_votes': cw, 'data_votes': dw}
        vote_log['_stats'] = {
            'code_wins': int(code_wins.sum()),
            'data_wins': int(data_wins.sum()),
            'fallback_code': int((undecided & (last_arr > 0.0)).sum()),
            'fallback_data': int((undecided & (last_arr < 0.0)).sum()),
            'undecided_final': int((result == IS_UNKNOWN).sum()),
        }
        ctx.report['arbiter'] = vote_log

        return pl.Series('squashed', result, dtype=pl.UInt8)
