import polars as pl
import numpy as np
from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.model import PhaseContext, CONF_CODE
from lib.pipeline.phase import Phase
from lib.x86util import disasm_one


def _find_print_exit(data, off):
    if off + 9 > len(data):
        return None
    sig = bytes([0xb4, 0x09, 0xcd, 0x21, 0xb8, 0x01, 0x4c, 0xcd, 0x21])
    if data[off:off + 9] == sig:
        return off + 9
    return None


def _find_error_handler_start(data, exit_off, md):
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


class ErrorHandlerPhase(Phase):
    """Discover DOS error-handler blocks in unknown regions.

    Finds ``mov ah, 9 / int 21h / mov ax, 4c01 / int 21h`` sequences,
    marks them CODE, and seeds their entry points for recursive descent.
    """

    input_slot = 'trampoline'
    output_slot = 'error_handler'
    requires_binary = True

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = input_col.to_numpy().copy()

        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True

        off = 0
        while off < n:
            if result[off] != 0.0:
                off += 1
                continue
            end_after_exit = _find_print_exit(data, off)
            if end_after_exit is None:
                off += 1
                continue
            handler_start = _find_error_handler_start(data, off, md)
            for i in range(handler_start, end_after_exit):
                result[i] = CONF_CODE
            ctx.seeds.add(handler_start)
            off = end_after_exit

        return pl.Series('error_handler', result, dtype=pl.Float32)
