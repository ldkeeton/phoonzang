import polars as pl
import numpy as np
from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.model import PhaseContext, CONF_CODE, SeedInfo, TargetInfo
from lib.pipeline.phase import Phase, PhaseContract
from lib.x86util import is_dos_terminator


_TERMINATORS = {'ret', 'retf', 'iret', 'hlt'}
# A routine whose first instruction is an unconditional jmp is a tail-jump
# stub (EGA's `dissolve_area: jmp show_area`); what follows it is not its body
# and is often data, so the sweep stops there.  A later jmp does not stop it:
# Aztec leaves a dead `ret` after a function's closing `jmp` (main's loop).
_JUMPS = {'jmp', 'ljmp'}
_CONF_FORCE_CODE = 0.8


class ForceCodePhase(Phase):
    contract = PhaseContract(
        input_slot='settled',
        output_slot='force_code',
        writes_columns=['force_code'],
        reads_columns=['ALL'],  # counts strong-data votes via col < -0.8
        reads_ctx=['binary_data', 'label_map', 'code_targets', 'seeds',
                   'hard_data', 'start_offset'],
        writes_ctx=['code_targets', 'seeds'],
        requires_binary=True,
        requires_label_map=True,
    )

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = np.zeros(n, dtype=np.float32)

        if not ctx.label_map:
            return pl.Series('force_code', result, dtype=pl.Float32)

        prior_names = [c for c in ctx.layers.columns
                        if c not in ('raw_byte', 'seed', 'squashed', self.output_slot)
                        and not c.startswith('squashed_iter_')]
        strong_data_count = np.zeros(n, dtype=np.int32)
        for name in prior_names:
            col = ctx.layers[name].to_numpy()
            strong_data_count += (col < -0.8).astype(np.int32)

        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True

        for off in sorted(ctx.label_map.keys()):
            lbl = ctx.label_map[off]

            if ctx.is_hard_data(off):
                continue

            expected = f'loc_{off:04x}'
            if lbl == expected or lbl.endswith(f'_{expected}'):
                continue
            # A switch case is a block of its dispatcher, never a function
            # entry: no prologue to scan back for.
            if getattr(lbl, 'role', None) == 'case':
                continue

            if strong_data_count[off] >= 3:
                continue

            func_start = off
            # Never scan back into the binary header (MZ/overlay): those
            # bytes are not code and often contain 0x55 by chance.
            max_back = min(16, off - ctx.start_offset)
            for i in range(max_back, 0, -1):
                p = off - i
                if ctx.is_hard_data(p):
                    continue
                # A byte spelling PUSH BP is common in data/immediates. Only
                # a complete frame prologue can move a known entry backward.
                if data[p:p + 3] in (b'\x55\x89\xe5', b'\x55\x8b\xec'):
                    try:
                        prev = list(md.disasm(data[p:off], p))
                    except Exception:
                        prev = []
                    if prev and prev[-1].address + prev[-1].size == off:
                        func_start = p
                        break

            if ctx.is_hard_data(func_start):
                continue

            for i in range(func_start, off):
                if i < n and strong_data_count[i] < 3 and not ctx.is_hard_data(i):
                    result[i] = _CONF_FORCE_CODE

            end = min(func_start + 512, n)
            try:
                for insn in md.disasm(data[func_start:end], func_start):
                    # A DOS exit (int 0x20 / int 0x21 with AH=0/4C/31) never
                    # returns, so bytes after it are inline data, not code.
                    if (insn.mnemonic in _TERMINATORS
                            or is_dos_terminator(data, insn)
                            or (insn.mnemonic in _JUMPS
                                and insn.address == func_start)):
                        end = insn.address + insn.size
                        break
                    end = insn.address + insn.size
            except Exception:
                pass
            for i in range(func_start, min(end, n)):
                if strong_data_count[i] < 3 and not ctx.is_hard_data(i):
                    result[i] = _CONF_FORCE_CODE

            if func_start not in ctx.code_targets:
                ctx.code_targets[func_start] = TargetInfo(
                    address=func_start, reason='force_code',
                    confidence=_CONF_FORCE_CODE, source_offset=-1,
                )
            ctx.seeds.append(SeedInfo(
                address=func_start, source_phase='force_code',
                confidence=_CONF_FORCE_CODE, reason=f'known func: {lbl}',
            ))

        return pl.Series('force_code', result, dtype=pl.Float32)
