import polars as pl
import numpy as np

from lib.model import PhaseContext, CONF_CODE, CONF_DATA, SeedInfo
from lib.pipeline.phase import Phase, PhaseContract


class SidecarPhase(Phase):
    contract = PhaseContract(
        input_slot='seed',
        output_slot='sidecar',
        writes_columns=['sidecar'],
        reads_ctx=['sidecar_entry', 'seeds'],
        writes_ctx=['seeds'],
        requires_binary=True,
    )

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
            result[s:e] = 0.6
            ctx.seeds.append(SeedInfo(
                address=s, source_phase='sidecar', confidence=0.6,
                reason='manual override',
            ))

        return pl.Series('sidecar', result, dtype=pl.Float32)
