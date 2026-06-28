"""Conflict detection phase.

After the .asm is assembled, compares the output byte-by-byte
against the original binary.  For each mismatch region, checks
whether the original bytes decode as valid instructions:

- If yes → the region was data misidentified as code
          (e.g. a jump table disassembled to mnemonics).
- If no  → the region was code misidentified as data
          (less common, but possible with cascade recovery).

Emits ``Annotation`` records that earlier phases consume on the
next iteration to refine the bitmap.
"""

from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.model import PhaseContext, Annotation, IS_DATA, IS_CODE
from lib.pipeline.phase import Phase


class ConflictDetectPhase(Phase):
    """Compare assembled output vs original binary; emit annotations for
    regions where the bytes differ."""

    def __init__(self, assembled_bytes: bytes, original_bytes: bytes):
        self._assembled = assembled_bytes
        self._original = original_bytes

    def run(self, ctx: PhaseContext):
        """Scan for mismatches and emit Annotation records."""
        max_len = min(len(self._assembled), len(self._original))
        if max_len == 0:
            return

        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True

        i = 0
        while i < max_len:
            if self._assembled[i] == self._original[i]:
                i += 1
                continue

            start = i
            while i < max_len and self._assembled[i] != self._original[i]:
                i += 1

            region_len = i - start
            if region_len < 2:
                continue

            original_chunk = self._original[start:i]

            try:
                insns = list(md.disasm(original_chunk, start))
            except Exception:
                insns = []

            if insns:
                decoded = sum(instr.size for instr in insns)
                if decoded >= region_len - 3:
                    # Original bytes decode as valid instructions →
                    # data was misidentified as code (e.g. jump table)
                    ctx.annotations.append(Annotation(
                        offset=start, length=region_len,
                        kind='force_data',
                        source='conflict_detect',
                        payload={'reason': 'data-in-code'},
                    ))
                    for j in range(start, min(start + region_len, len(ctx.bitmap))):
                        ctx.bitmap[j] = IS_DATA
                        ctx.mark_changed()
                else:
                    # Doesn't decode cleanly → code was misidentified as data
                    ctx.annotations.append(Annotation(
                        offset=start, length=region_len,
                        kind='force_code',
                        source='conflict_detect',
                        payload={'reason': 'code-in-data'},
                    ))
                    for j in range(start, min(start + region_len, len(ctx.bitmap))):
                        ctx.bitmap[j] = IS_CODE
                        ctx.mark_changed()
