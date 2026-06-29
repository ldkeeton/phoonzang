import polars as pl
import numpy as np
from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.model import PhaseContext, CONF_CODE
from lib.pipeline.phase import Phase
from lib.x86util import disasm_one, is_indirect, get_imm_target


class TrampolinePhase(Phase):
    """Discover trampoline-dispatch stubs (call X; retf chains).

    DOS drivers often have flat arrays of 4-byte trampolines near the
    file start.  Each is marked CODE and its target is added to seeds.
    """

    requires_binary = True

    def __init__(self, input_slot='', output_slot='trampoline'):
        self.input_slot = input_slot
        self.output_slot = output_slot

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = input_col.to_numpy().copy()

        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True

        limit = min(n, 4096)
        candidates = []
        off = 0
        while off < limit:
            if result[off] != 0.0:
                off += 1
                continue

            insn = disasm_one(data, off, md)
            if insn is None or insn.mnemonic != 'call':
                off += 1
                continue
            if is_indirect(insn):
                off += 1
                continue

            target = get_imm_target(insn)
            if target is None or not (0 <= target < n):
                off += 1
                continue

            ret_off = off + insn.size
            if ret_off >= n or data[ret_off] != 0xCB:
                off += 1
                continue

            candidates.append((off, target))
            off = ret_off + 1

        if len(candidates) >= 3:
            runs = []
            run_start = 0
            for i in range(1, len(candidates)):
                if candidates[i][0] != candidates[i - 1][0] + 4:
                    if i - run_start >= 3:
                        runs.append((run_start, i))
                    run_start = i
            if len(candidates) - run_start >= 3:
                runs.append((run_start, len(candidates)))

            for r_start, r_end in runs:
                for i in range(r_start, r_end):
                    off, target = candidates[i]
                    ctx.seeds.add(target)
                    for j in range(off, min(off + 4, n)):
                        result[j] = CONF_CODE

        return pl.Series(self.output_slot, result, dtype=pl.Float32)
