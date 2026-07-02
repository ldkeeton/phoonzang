"""Detect Borland overlay function entries by prologue signature.

Borland C/C++ overlay modules (``.OVR``) use a distinctive function
prologue::

    mov  ax, <func_number>   ; B8 xx xx
    call <patched_runtime>   ; E8 xx xx

where the ``call`` target is patched at load time to point to the
overlay manager in the main program's segment.  In the static file
this target always falls **outside** the file, distinguishing real
entries from intra-module calls.

The phase marks the 6-byte dispatch table at 0x08–0x0d as data
(the real code starts at 0x0e) and registers every prologue target
as a code seed for the recursive descent phase.
"""

import struct

import polars as pl
import numpy as np

from lib.model import PhaseContext, CONF_CODE, CONF_DATA, SeedInfo, TargetInfo
from lib.pipeline.phase import Phase, PhaseContract


_BORLAND_MAGIC = b'\xf2\x00\x55\x50'


class BorlandOverlayPhase(Phase):
    """Scan for ``B8 xx xx E8 xx xx`` patterns (Borland overlay entries).

    Does NOT write confidence values at entry points — the column stays
    neutral there so the recursive descent phase can decode from the
    seeds without hitting its ``prior_code > _SOFT_CODE`` skip check.
    """

    contract = PhaseContract(
        input_slot='sidecar',
        output_slot='borland_overlay',
        writes_columns=['borland_overlay'],
        reads_ctx=['binary_data', 'seeds', 'code_targets'],
        writes_ctx=['seeds', 'code_targets'],
        requires_binary=True,
    )

    def __init__(self, input_slot='sidecar', output_slot='borland_overlay'):
        self.input_slot = input_slot
        self.output_slot = output_slot

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = np.zeros(n, dtype=np.float32)

        if not _is_borland_overlay(data):
            return pl.Series(self.output_slot, result, dtype=pl.Float32)

        # Mark the 6-byte dispatch table at 0x08-0x0d as data.
        # The first real function starts at 0x0e.
        for i in range(8, min(14, n)):
            result[i] = CONF_DATA

        # Remove the start_offset (which points into the dispatch table) from
        # code_targets and seeds — it's data, not code.
        if ctx.start_offset == 8:
            ctx.code_targets.pop(8, None)
            ctx.seeds = [s for s in ctx.seeds if s.address != 8]

        # Scan for B8 xx xx E8 xx xx where call target is outside the file
        # (patched runtime thunk in the main program's segment).
        for i in range(0, n - 5):
            if data[i] != 0xB8 or data[i + 3] != 0xE8:
                continue

            call_ofs = struct.unpack_from('<h', data, i + 4)[0]
            call_target = i + 6 + call_ofs

            if 0 <= call_target < n:
                continue  # intra-module call, not a Borland entry

            if i not in ctx.code_targets:
                ctx.code_targets[i] = TargetInfo(
                    address=i, reason='borland_overlay',
                    confidence=CONF_CODE, source_offset=-1,
                )
            ctx.seeds.append(SeedInfo(
                address=i, source_phase='borland_overlay',
                confidence=CONF_CODE,
                reason=f'Borland prologue',
            ))

        return pl.Series(self.output_slot, result, dtype=pl.Float32)


def _is_borland_overlay(data):
    if len(data) < 4:
        return False
    return data[:4] == _BORLAND_MAGIC
