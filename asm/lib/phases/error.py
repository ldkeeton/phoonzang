import polars as pl
import numpy as np
from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.model import PhaseContext, CONF_CODE
from lib.pipeline.phase import Phase
from lib.x86util import disasm_one


_CONF_ERROR_CODE = 0.9


def _find_print_exit(data, off):
    if off + 9 > len(data):
        return None
    sig = bytes([0xb4, 0x09, 0xcd, 0x21, 0xb8, 0x01, 0x4c, 0xcd, 0x21])
    if data[off:off + 9] == sig:
        return off + 9
    return None


def _find_handler_start(data, sig_offset, md):
    """Backtrack from the print-exit signature to find handler entry.

    Walks backward instruction-by-instruction looking for a ``mov ...``
    or ``push ...`` that starts the handler.  Falls back to the
    signature offset if no instruction boundary is found.
    """
    end = sig_offset
    for _ in range(20):
        found = None
        lo = max(0, end - 8)
        for trial in range(end - 1, lo - 1, -1):
            insn = disasm_one(data, trial, md)
            if insn is not None and insn.address + insn.size == end:
                found = insn.address
                break
        if found is None:
            break
        # Common handler-start patterns: push reg, mov reg, ..., xor reg, reg
        first_byte = data[found]
        if first_byte in (0x50, 0x51, 0x52, 0x53,  # push ax..bx
                          0x55,                    # push bp
                          0x56, 0x57,              # push si, push di
                          0x8c,                    # mov segreg, reg
                          0x1e, 0x06, 0x0e, 0x16): # push seg
            return found
        end = found
    return sig_offset


class ErrorHandlerPhase(Phase):
    """Discover DOS error-handler blocks in undecided regions.

    Finds ``mov ah, 9 / int 21h / mov ax, 4c01 / int 21h`` sequences,
    backtracks for the handler prologue, writes CODE=0.9 as independent
    opinion, and seeds entry points for recursive descent.
    """

    input_slot = 'trampoline'
    output_slot = 'error_handler'
    requires_binary = True

    def _undecided_mask(self, ctx):
        n = len(ctx.binary_data)
        opin = np.zeros(n, dtype=bool)
        for name in ctx.layers.columns:
            if name in ('raw_byte', 'seed', 'squashed', self.output_slot):
                continue
            opin |= (ctx.layers[name].to_numpy() != 0.0)
        return ~opin

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = np.zeros(n, dtype=np.float32)
        undecided = self._undecided_mask(ctx)

        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True

        off = 0
        while off < n:
            if not undecided[off]:
                off += 1
                continue
            end_after_exit = _find_print_exit(data, off)
            if end_after_exit is None:
                off += 1
                continue
            handler_start = _find_handler_start(data, off, md)
            for i in range(handler_start, end_after_exit):
                result[i] = _CONF_ERROR_CODE
            ctx.seeds.add(handler_start)
            off = end_after_exit

        return pl.Series('error_handler', result, dtype=pl.Float32)
