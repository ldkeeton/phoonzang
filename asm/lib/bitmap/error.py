"""Error-handler discovery pass.

DOS drivers often have inline print-and-exit blocks:

    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21

These sit in dead zones after conditional branches.  Detecting them by
signature ensures they get proper mnemonics instead of raw db.
"""

from lib.model import IS_UNKNOWN, IS_CODE
from lib.bitmap.common import disasm_one


def _find_print_exit(data, off):
    """Check for ``mov ah, 9 / int 0x21 / mov ax, 0x4c01 / int 0x21`` at *off*."""
    if off + 9 > len(data):
        return None
    sig = bytes([0xb4, 0x09, 0xcd, 0x21, 0xb8, 0x01, 0x4c, 0xcd, 0x21])
    if data[off:off + 9] == sig:
        return off + 9
    return None


def _find_error_handler_start(data, exit_off, md):
    """Walk backward from ``mov dx, imm16`` to find handler entry.

    ``exit_off`` is the start of the 9-byte print-exit signature.
    The byte at ``exit_off - 3`` must be 0xBA (``mov dx, imm16``).
    The chain stops at ``mov ax, cs`` (0x8C 0xC8) or ``mov bx, cs`` (0x8C 0xCB).
    """
    sig_off = exit_off
    if sig_off < 3 or data[sig_off - 3] != 0xBA:
        return sig_off
    end = sig_off - 3
    for _ in range(10):
        found = None
        lo = max(0, end - 6)
        for trial in range(end - 1, lo - 1, -1):
            insn = disasm_one(data, trial, md)
            if insn is not None and insn.address + insn.size == end:
                found = insn.address
                break
        if found is None:
            break
        b = data[found:found + 2]
        if b in (b'\x8c\xc8', b'\x8c\xcb'):
            return found
        end = found
    return end


def discover_error_handlers(data, bitmap, md):
    """Scan for DOS error-handler blocks in IS_UNKNOWN regions.

    Returns a set of code-entry addresses to seed recursive descent.
    """
    n = len(data)
    seeds = set()
    off = 0
    while off < n:
        if bitmap[off] != IS_UNKNOWN:
            off += 1
            continue
        end_after_exit = _find_print_exit(data, off)
        if end_after_exit is None:
            off += 1
            continue
        handler_start = _find_error_handler_start(data, off, md)
        for i in range(handler_start, end_after_exit):
            bitmap[i] = IS_CODE
        seeds.add(handler_start)
        off = end_after_exit
    return seeds
