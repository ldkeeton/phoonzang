"""Seed dispatch-table handler targets from sidecar config.

The dispatch table bytes are data (``force_data`` in sidecar), not code.
This phase only extracts the handler addresses encoded inside each entry
and seeds those as code targets. The table bytes themselves are left for
the ``SidecarPhase`` to mark as ``CONF_DATA``.

Sidecar format::

    "dispatch_table": {
        "base_offset": 3,
        "entry_size": 4,
        "count": 48,
        "format": "e8_rel16_cb",
        "name_pattern": "vga_api_{:02d}"
    }

Each entry is decoded as: E8 <rel16_le> CB → ``call near <handler> ; retf``.
Only the handler target is added as a code seed — the entry bytes are data.
"""

import struct

import polars as pl

from lib.model import CONF_CODE, TargetInfo, SeedInfo
from lib.pipeline.phase import Phase, PhaseContract


class DispatchTablePhase(Phase):
    """Extract handler targets from dispatch table entries; do NOT mark entry bytes as code."""

    contract = PhaseContract(
        input_slot='aztec_overlay',
        output_slot='dispatch_table',
        writes_columns=['dispatch_table'],
        reads_ctx=['sidecar_entry', 'binary_data', 'seeds', 'code_targets',
                   'hard_data'],
        writes_ctx=['seeds', 'code_targets'],
        requires_binary=True,
    )

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        import numpy as np
        result = np.zeros(n, dtype=np.float32)

        if ctx.sidecar_entry is None:
            return pl.Series(self.output_slot, result, dtype=pl.Float32)

        dt = ctx.sidecar_entry.get('dispatch_table')
        if not dt:
            return pl.Series(self.output_slot, result, dtype=pl.Float32)

        base = dt['base_offset']
        esize = dt['entry_size']
        count = dt['count']

        for i in range(count):
            addr = base + i * esize
            if addr + 3 >= n:
                break
            if ctx.hard_data[addr:addr + 4].any():
                continue

            if data[addr] != 0xE8 or data[addr + 3] != 0xCB:
                continue

            rel16 = struct.unpack_from('<h', data, addr + 1)[0]
            target = (addr + 3 + rel16) & 0xFFFF

            if (0 <= target < n and not ctx.is_hard_data(target)
                    and target not in ctx.code_targets):
                ctx.code_targets[target] = TargetInfo(
                    address=target, reason='dispatch_handler',
                    confidence=CONF_CODE, source_offset=addr,
                )
                ctx.seeds.append(SeedInfo(
                    address=target, source_phase='dispatch_table',
                    confidence=CONF_CODE,
                    reason=f'dispatch handler {i} from entry {addr:04x}',
                ))

        return pl.Series(self.output_slot, result, dtype=pl.Float32)
