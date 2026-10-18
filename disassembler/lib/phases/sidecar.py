import polars as pl
import numpy as np

from lib.model import PhaseContext, CONF_DATA, SeedInfo, TargetInfo
from lib.sidecar.offsets import _parse_offset
from lib.pipeline.phase import Phase, PhaseContract


class SidecarPhase(Phase):
    contract = PhaseContract(
        input_slot='seed',
        output_slot='sidecar',
        writes_columns=['sidecar'],
        reads_ctx=['sidecar_entry', 'seeds', 'hard_data'],
        writes_ctx=['seeds', 'code_targets'],
        requires_binary=True,
    )

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = np.zeros(n, dtype=np.float32)

        if ctx.sidecar_entry is None:
            return pl.Series('sidecar', result, dtype=pl.Float32)

        sidecar = ctx.sidecar_entry
        use = sidecar.get('use')

        for r in sidecar.get('force_data', []):
            s = _parse_offset(r['start'], 'force_data.start')
            e_raw = r.get('end', r['start'])
            e = _parse_offset(e_raw, 'force_data.end') + 1
            s = max(0, s)
            e = min(n, e)
            if use is not None:
                if s < e:
                    use.applied('force_data', r['start'])
                else:
                    use.skipped('force_data', r['start'], 'outside the file')
            result[s:e] = CONF_DATA

        for r in sidecar.get('force_code', []):
            s = _parse_offset(r['start'], 'force_code.start')
            e_raw = r.get('end', r['start'])
            e = _parse_offset(e_raw, 'force_code.end') + 1
            s = max(0, s)
            e = min(n, e)
            if s >= e or ctx.hard_data[s:e].any():
                if use is not None:
                    use.skipped('force_code', r['start'],
                                'outside the file' if s >= e else
                                'overlaps force_data or a code_tables table')
                continue
            if use is not None:
                use.applied('force_code', r['start'])
            result[s:e] = 1.0
            ctx.code_targets[s] = TargetInfo(
                address=s, reason='force_code', confidence=1.0,
                source_offset=-1, hard=True,
            )
            ctx.seeds.append(SeedInfo(
                address=s, source_phase='sidecar', confidence=1.0,
                reason='manual override',
            ))

        return pl.Series('sidecar', result, dtype=pl.Float32)
