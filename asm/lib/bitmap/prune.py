"""Dead-zone and zero-run pruning passes.

After recursive descent, bytes after control-flow terminators (ret, jmp, etc.)
that remain IS_UNKNOWN are marked IS_DATA.  Large runs of zero bytes
misidentified as code are also reclassified as data.
"""

from capstone import Cs, CS_ARCH_X86, CS_MODE_16
from lib.model import IS_UNKNOWN, IS_CODE, IS_DATA
from lib.bitmap.common import _TERMINATORS, _UNCOND_JUMPS, is_indirect


def _find_last_insn(data, code_start, code_end_excl, md):
    """Walk *code_start*→*code_end_excl* to find the last complete instruction."""
    off = code_start
    last = None
    gen = md.disasm(data[off:], off)
    while off < code_end_excl:
        try:
            insn = next(gen)
        except StopIteration:
            off += 1
            if off < code_end_excl:
                gen = md.disasm(data[off:], off)
            continue
        end = insn.address + insn.size
        if end > code_end_excl:
            break
        last = insn
        off = end
    return last


def prune_dead_zones(data, bitmap, md):
    """After a CFG terminator, mark trailing IS_UNKNOWN bytes as IS_DATA."""
    n = len(data)
    i = 0
    while i < n:
        if bitmap[i] == IS_CODE:
            j = i
            while j < n and bitmap[j] == IS_CODE:
                j += 1
            code_end = j

            last_insn = _find_last_insn(data, i, code_end, md)
            ends_trace = True
            if last_insn is not None:
                mnem = last_insn.mnemonic
                ends_trace = (
                    mnem in _TERMINATORS
                    or (mnem in _UNCOND_JUMPS and not is_indirect(last_insn))
                )

            if ends_trace:
                k = code_end
                while k < n and bitmap[k] != IS_CODE:
                    bitmap[k] = IS_DATA
                    k += 1

            i = j
        else:
            i += 1


def prune_zero_zones(data, bitmap, min_run=64):
    """Reclassify large runs of zero bytes misidentified as code.

    After recursive descent, entry points in zero-filled regions
    may have been classified as IS_CODE.  Consecutive zero bytes at
    the machine level are not meaningful code; reclassify runs
    >= *min_run* bytes as IS_DATA.
    """
    n = len(data)
    i = 0
    while i < n:
        if bitmap[i] == IS_CODE and data[i] == 0:
            start = i
            while i < n and bitmap[i] == IS_CODE and data[i] == 0:
                i += 1
            run = i - start
            if run >= min_run:
                for j in range(start, i):
                    bitmap[j] = IS_DATA
        else:
            i += 1
