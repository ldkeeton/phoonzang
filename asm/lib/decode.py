from capstone import Cs, CS_ARCH_X86, CS_MODE_16


def disassemble(data, start=0, bitmap=None):
    """Disassemble *data* starting at *start*, recovering from undecodable bytes.

    If *bitmap* (a byte-level classification array) is provided, only
    IS_CODE regions are disassembled.  Bytes classified as IS_DATA or
    IS_UNKNOWN are skipped.  Falls back to the original linear sweep
    when *bitmap* is None.
    """
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True

    if bitmap is None:
        # Original linear-sweep path (backward-compatible)
        off = start
        while off < len(data):
            gen = md.disasm(data[off:], off)
            batch = list(gen)
            if not batch:
                off += 1
                continue
            for insn in batch:
                yield insn
            last = batch[-1]
            off = last.address + last.size
        return

    # Classification-aware path
    from lib.model import IS_CODE
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

        # Disassemble within the code region
        # Include a small tail buffer so that the last instruction
        # can be fully decoded even if it extends slightly past
        # the region boundary (unlikely but safe).
        tail = min(16, n - off)
        chunk = data[off:region_end + tail]
        for insn in md.disasm(chunk, off):
            if insn.address >= region_end:
                break
            yield insn

        off = region_end
