"""Seed dispatch-table entry and handler addresses from sidecar config.

A declared dispatch table is `count` entries of ``E8 <rel16_le> CB`` at
``base_offset + entry_size*i``: executable ``call handler; retf`` thunks.  Both
halves are code, so this phase seeds both -- the entry address *and* the handler
it calls.  The entry bytes then render as ``call handler`` / ``retf`` exactly as
``play``'s table always has, which keeps the encoding identical (the ``rel16`` is
read from the image) and stops the handler references counting as hidden flow.

A ``force_data`` range covering an entry still wins: the entry then stays data,
but its handler is seeded regardless -- the handler is code whatever the table
bytes are rendered as.

Sidecar format::

    "dispatch_table": {
        "base_offset": 3,
        "entry_size": 4,
        "count": 55,
        "format": "e8_rel16_cb",
    }
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
        writes_ctx=['seeds', 'code_targets', 'dispatch_handlers'],
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

        def seed(address, reason, source_offset):
            if (0 <= address < n and not ctx.is_hard_data(address)
                    and address not in ctx.code_targets):
                ctx.code_targets[address] = TargetInfo(
                    address=address, reason=reason,
                    confidence=CONF_CODE, source_offset=source_offset,
                )
                ctx.seeds.append(SeedInfo(
                    address=address, source_phase='dispatch_table',
                    confidence=CONF_CODE, reason=reason,
                ))

        use = ctx.sidecar_entry.get('use')
        if use is not None:
            use.applied('dispatch_table', 'table')
        for i in range(count):
            addr = base + i * esize
            if addr + 3 >= n:
                if use is not None:
                    use.skipped('dispatch_table', 'table',
                                f'entry {i} runs past the end of the file')
                break
            if data[addr] != 0xE8 or data[addr + 3] != 0xCB:
                if use is not None:
                    use.skipped('dispatch_table', 'table',
                                f'entry {i} at 0x{addr:04x} is not '
                                f'`call rel16; retf`')
                continue

            # The entry is an executable thunk, so its own address is a code
            # target too -- but a `force_data` range over the entry wins.
            if not ctx.hard_data[addr:addr + 4].any():
                seed(addr, f'dispatch entry {i}', addr)

            rel16 = struct.unpack_from('<h', data, addr + 1)[0]
            target = (addr + 3 + rel16) & 0xFFFF
            seed(target, f'dispatch handler {i} from entry {addr:04x}', addr)
            # The handler is a function entry by contract whether or not it was
            # newly seeded (a force_data range can leave it unseeded).
            if not ctx.is_hard_data(target):
                ctx.dispatch_handlers.add(target)

        return pl.Series(self.output_slot, result, dtype=pl.Float32)
