import polars as pl
import numpy as np
from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.model import PhaseContext, CONF_CODE, SeedInfo
from lib.pipeline.phase import Phase, PhaseContract
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
        first_byte = data[found]
        if first_byte in (0x50, 0x51, 0x52, 0x53,
                          0x55,
                          0x56, 0x57,
                          0x8c,
                          0x1e, 0x06, 0x0e, 0x16):
            return found
        end = found
    return sig_offset


class ErrorHandlerPhase(Phase):
    contract = PhaseContract(
        input_slot='trampoline',
        output_slot='error_handler',
        reads_columns=['ALL'],  # undecided_mask checks EVERY column with col < -0.3
        reads_ctx=['binary_data', 'seeds', 'hard_data'],
        writes_ctx=['seeds'],
        requires_binary=True,
    )

    def _undecided_mask(self, ctx):
        n = len(ctx.binary_data)
        opin = np.zeros(n, dtype=bool)
        opin |= ctx.hard_data
        for name in ctx.layers.columns:
            if name in ('raw_byte', 'seed', 'squashed', self.output_slot):
                continue
            if name.startswith('squashed_iter_'):
                continue
            col = ctx.layers[name].to_numpy()
            opin |= (col < -0.3)
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
            if ctx.hard_data[off:min(off + 9, n)].any():
                off += 1
                continue
            end_after_exit = _find_print_exit(data, off)
            if end_after_exit is None:
                off += 1
                continue
            handler_start = _find_handler_start(data, off, md)
            if ctx.hard_data[handler_start:end_after_exit].any():
                off = end_after_exit
                continue
            for i in range(handler_start, end_after_exit):
                result[i] = _CONF_ERROR_CODE
            ctx.seeds.append(SeedInfo(
                address=handler_start, source_phase='error_handler',
                confidence=0.9, reason='DOS error handler',
            ))
            off = end_after_exit

        return pl.Series('error_handler', result, dtype=pl.Float32)
