"""Detect Aztec C86 overlay (``.OVR``) function entries by prologue signature.

Aztec overlays start with a 14-byte header (see ``LIB/DOS/OVLOADER.C``)::

    struct ovrheader {
        short          o_magic;   /* 0x00f2 */
        unsigned short o_corg;    /* code origin (memory offset) */
        unsigned short o_csize;   /* code size */
        unsigned short o_dorg;    /* data origin (memory offset) */
        unsigned short o_dsize;   /* data size */
        unsigned short o_bss;     /* uninitialized data size */
        unsigned short o_entry;   /* overlay entry offset */
    };

Overlay code begins immediately after the header at file offset 14.  Each
overlay function is entered through a thunk::

    mov  ax, <function>     ; B8 xx xx
    call <overlay_loader>   ; E8 xx xx

where the ``call`` target is patched at load time to point at the overlay
manager (``ovloader_``) in the main program's segment.  In the static file
this target always falls **outside** the file, distinguishing real entries
from intra-module calls.

The phase marks the 14-byte header as data, seeds the loader entry
(``o_entry`` mapped into the code block), and registers every prologue
target as a code seed for the recursive descent phase.
"""

import struct

import polars as pl
import numpy as np

from lib.model import PhaseContext, CONF_CODE, CONF_DATA, SeedInfo, TargetInfo
from lib.pipeline.phase import Phase, PhaseContract


_AZTEC_OVL_MAGIC = b'\xf2\x00'
_HEADER_SIZE = 14


class AztecOverlayPhase(Phase):
    """Scan for ``B8 xx xx E8 xx xx`` patterns (Aztec overlay entries).

    Does NOT write confidence values at entry points — the column stays
    neutral there so the recursive descent phase can decode from the
    seeds without hitting its ``prior_code > _SOFT_CODE`` skip check.
    """

    contract = PhaseContract(
        input_slot='sidecar',
        output_slot='aztec_overlay',
        writes_columns=['aztec_overlay'],
        reads_ctx=['binary_data', 'start_offset', 'seeds', 'code_targets',
                   'hard_data'],
        writes_ctx=['seeds', 'code_targets'],
        requires_binary=True,
    )

    def __init__(self, input_slot='sidecar', output_slot='aztec_overlay'):
        self.input_slot = input_slot
        self.output_slot = output_slot

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = np.zeros(n, dtype=np.float32)

        if not _is_aztec_overlay(data):
            return pl.Series(self.output_slot, result, dtype=pl.Float32)

        # The whole 14-byte header is data; real code starts at offset 14.
        for i in range(0, min(_HEADER_SIZE, n)):
            result[i] = CONF_DATA

        # The sidecar start offset points into the header, not at code.
        if 0 < ctx.start_offset <= _HEADER_SIZE:
            ctx.code_targets.pop(ctx.start_offset, None)
            ctx.seeds = [s for s in ctx.seeds if s.address != ctx.start_offset]

        # Seed the loader entry (o_entry), an offset inside the code block.
        o_corg, o_csize, o_dorg, o_dsize, o_bss, o_entry = struct.unpack_from(
            '<6H', data, 2)
        if o_corg <= o_entry < o_corg + o_csize:
            entry = _HEADER_SIZE + (o_entry - o_corg)
            if _HEADER_SIZE <= entry < n:
                ctx.seeds.append(SeedInfo(
                    address=entry, source_phase='aztec_overlay',
                    confidence=CONF_CODE, reason='Aztec overlay entry',
                ))
                ctx.code_targets.setdefault(entry, TargetInfo(
                    address=entry, reason='aztec_overlay',
                    confidence=CONF_CODE, source_offset=-1,
                ))

        # Scan for B8 xx xx E8 xx xx where the call target is outside the
        # file (patched runtime thunk in the main program's segment).
        for i in range(0, n - 5):
            if ctx.hard_data[i:i + 6].any():
                continue
            if data[i] != 0xB8 or data[i + 3] != 0xE8:
                continue

            call_ofs = struct.unpack_from('<h', data, i + 4)[0]
            call_target = i + 6 + call_ofs

            if 0 <= call_target < n:
                continue  # intra-module call, not an overlay entry

            if i not in ctx.code_targets:
                ctx.code_targets[i] = TargetInfo(
                    address=i, reason='aztec_overlay',
                    confidence=CONF_CODE, source_offset=-1,
                )
            ctx.seeds.append(SeedInfo(
                address=i, source_phase='aztec_overlay',
                confidence=CONF_CODE, reason='Aztec prologue',
            ))

        return pl.Series(self.output_slot, result, dtype=pl.Float32)


def _is_aztec_overlay(data):
    if len(data) < _HEADER_SIZE:
        return False
    if data[:2] != _AZTEC_OVL_MAGIC:
        return False
    o_corg, o_csize = struct.unpack_from('<2H', data, 2)
    return o_corg > 0 and o_csize > 0
