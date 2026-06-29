import polars as pl
import numpy as np
from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.model import PhaseContext, CONF_CODE, CONF_DATA
from lib.pipeline.phase import Phase
from lib.x86util import _TERMINATORS, _UNCOND_JUMPS, is_indirect


_CONF_DEAD_DATA = -1.0


class PruneDeadPhase(Phase):
    """Independent opinion: mark bytes after terminator-ended CODE blocks as DATA.

    Reads the RecursiveDescent column to locate CODE blocks.  Writes
    DATA=-1.0 for undecided bytes that follow a terminator-ended block.
    """

    input_slot = 'recursive'
    output_slot = 'prune_dead'
    requires_binary = True

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = np.zeros(n, dtype=np.float32)
        recursive_col = input_col.to_numpy()

        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True

        def _find_last_insn(code_start, code_end_excl):
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

        i = 0
        while i < n:
            if recursive_col[i] > 0.3:
                j = i
                while j < n and recursive_col[j] > 0.3:
                    j += 1
                code_end = j

                last_insn = _find_last_insn(i, code_end)
                ends_trace = True
                if last_insn is not None:
                    mnem = last_insn.mnemonic
                    ends_trace = (
                        mnem in _TERMINATORS
                        or (mnem in _UNCOND_JUMPS and not is_indirect(last_insn))
                    )

                if ends_trace:
                    k = code_end
                    while k < n and recursive_col[k] <= 0.3:
                        result[k] = _CONF_DEAD_DATA
                        k += 1

                i = j
            else:
                i += 1

        return pl.Series('prune_dead', result, dtype=pl.Float32)


class PruneZeroPhase(Phase):
    """Independent opinion: reclassify large zero runs as DATA.

    Reads the RecursiveDescent column to find CODE blocks containing
    zero runs.  Writes graduated DATA confidence by run length.
    """

    input_slot = 'recursive'
    output_slot = 'prune_zero'
    requires_binary = True

    def __init__(self, min_run=64):
        self.min_run = min_run

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = np.zeros(n, dtype=np.float32)
        recursive_col = input_col.to_numpy()
        min_run = self.min_run

        i = 0
        while i < n:
            if recursive_col[i] > 0.3 and data[i] == 0:
                start = i
                while i < n and recursive_col[i] > 0.3 and data[i] == 0:
                    i += 1
                run = i - start
                if run >= min_run:
                    conf = _CONF_DEAD_DATA if run >= 256 else -0.9
                    for j in range(start, i):
                        result[j] = conf
            else:
                i += 1

        return pl.Series('prune_zero', result, dtype=pl.Float32)
