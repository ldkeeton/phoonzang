import polars as pl
import numpy as np
from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.model import PhaseContext, CONF_CODE, CONF_DATA
from lib.pipeline.phase import Phase, PhaseContract
from lib.x86util import (
    _TERMINATORS, _UNCOND_JUMPS, decode_from, is_indirect, is_dos_terminator)


_CONF_DEAD_DATA = -1.0


class PruneDeadPhase(Phase):
    contract = PhaseContract(
        input_slot='recursive',
        output_slot='prune_dead',
        writes_columns=['prune_dead'],
        reads_ctx=['binary_data', 'code_targets', 'trace'],
        requires_binary=True,
    )

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = np.zeros(n, dtype=np.float32)
        recursive_col = input_col.to_numpy()
        tlog = ctx.trace

        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True

        def _find_last_insn(code_start, code_end_excl):
            off = code_start
            last = None
            gen = decode_from(md, data, off)
            while off < code_end_excl:
                try:
                    insn = next(gen)
                except StopIteration:
                    off += 1
                    if off < code_end_excl:
                        gen = decode_from(md, data, off)
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
                        or is_dos_terminator(data, last_insn)
                        or (mnem in _UNCOND_JUMPS and not is_indirect(last_insn))
                    )

                if ends_trace:
                    k = code_end
                    marked_start = k
                    while k < n and recursive_col[k] <= 0.3:
                        if k not in ctx.code_targets:
                            result[k] = _CONF_DEAD_DATA
                        k += 1
                    if k > marked_start and tlog:
                        tlog.event('prune_dead', 'dead_after',
                                   iteration=ctx.iteration,
                                   addr=i, code_end=code_end,
                                   marked_from=marked_start,
                                   marked_to=k,
                                   last_insn=last_insn.mnemonic if last_insn else None)

                i = j
            else:
                i += 1

        return pl.Series('prune_dead', result, dtype=pl.Float32)


class PruneDeadBeforePhase(Phase):
    contract = PhaseContract(
        input_slot='recursive',
        output_slot='prune_dead_before',
        writes_columns=['prune_dead_before'],
        reads_ctx=['binary_data', 'code_targets', 'trace'],
        requires_binary=True,
    )

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = np.zeros(n, dtype=np.float32)
        recursive_col = input_col.to_numpy()
        code_targets = ctx.code_targets
        tlog = ctx.trace

        i = 0
        while i < n:
            if recursive_col[i] > 0.3:
                block_start = i
                while i < n and recursive_col[i] > 0.3:
                    i += 1

                k = block_start - 1
                marked_to = k
                while k >= 0 and recursive_col[k] <= 0.3:
                    if k not in code_targets:
                        result[k] = _CONF_DEAD_DATA
                    k -= 1
                if marked_to > k + 1 and tlog:
                    tlog.event('prune_dead_before', 'dead_before',
                               iteration=ctx.iteration,
                               addr=block_start,
                               marked_from=k + 1,
                               marked_to=marked_to + 1)
            else:
                i += 1

        return pl.Series('prune_dead_before', result, dtype=pl.Float32)


class PruneZeroPhase(Phase):
    contract = PhaseContract(
        input_slot='recursive',
        output_slot='prune_zero',
        writes_columns=['prune_zero'],
        reads_ctx=['binary_data'],
        requires_binary=True,
    )

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
