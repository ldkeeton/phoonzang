import polars as pl
import numpy as np

from lib.model import PhaseContext, CONF_CODE, CONF_DATA
from lib.pipeline.phase import Phase


class SidecarPhase(Phase):
    """Apply sidecar_entry overrides (force_data / force_code).

    Writes independent opinion: CONF_CODE=0.6 for force_code ranges,
    CONF_DATA=-1.0 for force_data ranges.  Adds force_code range starts
    to ctx.seeds for recursive descent.  If no sidecar is configured,
    outputs all zeros (nothing to contribute).
    """

    input_slot = 'seed'
    output_slot = 'sidecar'
    requires_binary = True

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = np.zeros(n, dtype=np.float32)

        if ctx.sidecar_entry is None:
            return pl.Series('sidecar', result, dtype=pl.Float32)

        sidecar = ctx.sidecar_entry

        for r in sidecar.get('force_data', []):
            s = int(r['start'], 16)
            e_raw = r.get('end', r['start'])
            e = int(e_raw, 16) + 1
            s = max(0, s)
            e = min(n, e)
            result[s:e] = CONF_DATA

        for r in sidecar.get('force_code', []):
            s = int(r['start'], 16)
            e_raw = r.get('end', r['start'])
            e = int(e_raw, 16) + 1
            s = max(0, s)
            e = min(n, e)
            result[s:e] = 0.6  # CONF_CODE_SIDECAR — manual override, not CFG-proven
            ctx.seeds.add(s)

        return pl.Series('sidecar', result, dtype=pl.Float32)
