"""Multi-pass code/data classification orchestrator.

Produces a byte-level bitmap (IS_CODE / IS_DATA) by running a sequence
of passes: sidecar overrides, string carving, trampoline discovery,
error-handler discovery, recursive descent, dead-zone pruning, zero-run
pruning, cascade code recovery, and final cleanup.

All addresses in this module are file offsets (org 0 in the .asm).
"""

from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.model import IS_UNKNOWN, IS_DATA
from lib.bitmap.carve import carve_strings
from lib.bitmap.tables import discover_trampoline_table
from lib.bitmap.error import discover_error_handlers
from lib.bitmap.recursive import recursive_descent
from lib.bitmap.prune import prune_dead_zones, prune_zero_zones
from lib.bitmap.cascade import cascade_code_recovery


def _apply_sidecar(bitmap, sidecar_entry):
    """Apply *sidecar_entry* overrides directly to *bitmap*.

    All addresses in the sidecar are file offsets (org 0).
    Returns a set of code entry addresses to add as recursive-descent seeds.
    """
    seeds = set()
    for r in sidecar_entry.get('force_data', []):
        s = int(r['start'], 16)
        e_raw = r.get('end', r['start'])
        e = int(e_raw, 16) + 1
        s = max(0, s)
        e = min(len(bitmap), e)
        for i in range(s, e):
            bitmap[i] = IS_DATA
    for r in sidecar_entry.get('force_code', []):
        s = int(r['start'], 16)
        e_raw = r.get('end', r['start'])
        e = int(e_raw, 16) + 1
        s = max(0, s)
        e = min(len(bitmap), e)
        for i in range(s, e):
            bitmap[i] = IS_CODE
        seeds.add(s)
    return seeds


def classify(data, start_offset=0, entry_points=None, sidecar_entry=None,
             cascade_search=False):
    """Classify every byte as IS_CODE or IS_DATA.

    Returns (bitmap, info) where *info* is a dict with:
        ``discovered`` — addresses found during recursive descent
        ``call_targets`` — addresses targeted by direct ``call`` insns
        ``jt_targets`` — addresses targeted by indirect-jump tables
        ``cascade_promoted`` — offsets promoted by cascade recovery
    """
    n = len(data)
    bitmap = bytearray(b'\x00' * n)

    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True

    # Pass 0: sidecar overrides
    force_seeds = set()
    if sidecar_entry is not None:
        force_seeds = _apply_sidecar(bitmap, sidecar_entry)

    # Pass 0.5: conservative string carving (long strings locked IS_DATA early)
    carve_strings(data, bitmap, min_body=6)

    # Pass 0.6: trampoline-table discovery (drivers only)
    trampoline_targets = set()
    if start_offset == 0:
        trampoline_targets = discover_trampoline_table(data, bitmap, md)

    # Pass 0.7: error-handler discovery
    error_handler_seeds = discover_error_handlers(data, bitmap, md)

    # Pass 1: recursive descent (speculative-code discipline)
    seeds = set()
    discovered = set()
    call_targets = set()
    jt_targets = set()

    for s in force_seeds:
        if 0 <= s < n and bitmap[s] != IS_DATA:
            seeds.add(s)
            discovered.add(s)
    for s in error_handler_seeds:
        if 0 <= s < n and bitmap[s] != IS_DATA:
            seeds.add(s)
            discovered.add(s)
    if 0 <= start_offset < n:
        seeds.add(start_offset)
    if entry_points:
        for addr in entry_points:
            if 0 <= addr < n:
                seeds.add(addr)
    for t in trampoline_targets:
        if 0 <= t < n and bitmap[t] != IS_DATA:
            seeds.add(t)
            discovered.add(t)

    discovered, call_targets, jt_targets = recursive_descent(
        data, bitmap, md, seeds, discovered, call_targets, jt_targets,
    )

    # Pass 2: dead-zone pruning
    prune_dead_zones(data, bitmap, md)

    # Pass 2.5: zero-run pruning
    prune_zero_zones(data, bitmap)

    # Pass 3: final (short) string carving
    carve_strings(data, bitmap, min_body=4)

    # Pass 3.5: cascade code recovery
    cascade_promoted = set()
    if cascade_search:
        cascade_promoted = cascade_code_recovery(data, bitmap, md)

    # Final: remaining IS_UNKNOWN -> IS_DATA
    for i in range(n):
        if bitmap[i] == IS_UNKNOWN:
            bitmap[i] = IS_DATA

    return bitmap, {
        'discovered': discovered,
        'call_targets': call_targets,
        'jt_targets': jt_targets,
        'cascade_promoted': cascade_promoted,
    }
