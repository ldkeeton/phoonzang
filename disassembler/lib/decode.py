from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.model import IS_CODE
from lib.x86util import decode_from


def disassemble(data, start, bitmap):
    """Disassemble *data* from *start*, decoding only IS_CODE regions."""
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True

    n = len(data)
    off = start
    while off < n:
        # Skip non-code regions
        while off < n and bitmap[off] != IS_CODE:
            off += 1
        if off >= n:
            break

        # Find end of this contiguous code region
        region_end = off
        while region_end < n and bitmap[region_end] == IS_CODE:
            region_end += 1

        # Disassemble within the code region; the last instruction may
        # extend past its end.  The classifier decoded these offsets already.
        for insn in decode_from(md, data, off):
            if insn.address >= region_end:
                break
            yield insn

        off = region_end
