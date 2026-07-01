import polars as pl
import numpy as np
from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.model import PhaseContext, SeedInfo, TargetInfo
from lib.pipeline.phase import Phase, PhaseContract


_TERMINATORS = {'ret', 'retf', 'iret', 'hlt'}


class PatternSeedPhase(Phase):
    contract = PhaseContract(
        output_slot='pattern_seed',
        writes_columns=['pattern_seed'],
        reads_ctx=['binary_data', 'label_map', 'code_targets', 'seeds'],
        writes_ctx=['label_map', 'seeds', 'code_targets'],
        requires_binary=True,
    )

    def __init__(self, known_db=None, max_func_size=256,
                 input_slot='', output_slot='pattern_seed'):
        self.input_slot = input_slot or 'sidecar'
        self.output_slot = output_slot
        self.known_db = known_db or {}
        self.max_func_size = max_func_size

    def run(self, input_col, ctx):
        data = ctx.binary_data
        n = len(data)
        result = np.zeros(n, dtype=np.float32)

        if not self.known_db:
            return pl.Series(self.output_slot, result, dtype=pl.Float32)

        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = False

        name_count = {}

        for sig in self.known_db.get('signatures', []):
            name = sig['name']
            for pat_str in sig.get('patterns', []):
                try:
                    pat_bytes = bytes.fromhex(pat_str.replace(' ', ''))
                except (ValueError, KeyError):
                    continue
                idx = 0
                while True:
                    idx = data.find(pat_bytes, idx)
                    if idx == -1:
                        break

                    matched = False
                    for i in range(min(256, idx), 0, -1):
                        p = idx - i
                        if data[p] != 0x55:
                            continue
                        try:
                            prev_insns = list(md.disasm(data[p:idx], p))
                        except Exception:
                            prev_insns = []
                        if not (prev_insns and prev_insns[-1].address + prev_insns[-1].size == idx):
                            continue

                        func_start = p

                        max_end = min(func_start + self.max_func_size, n)
                        try:
                            insns = list(md.disasm(data[func_start:max_end], func_start))
                        except Exception:
                            insns = []
                        func_end = max_end
                        for insn in insns:
                            if insn.mnemonic in _TERMINATORS:
                                func_end = insn.address + insn.size
                                break

                        if func_start <= idx < func_end and func_end <= func_start + self.max_func_size:
                            matched = True
                            break

                    if matched:
                        n_label = name_count.get(name, 0) + 1
                        name_count[name] = n_label
                        label = f'{name}_{n_label}' if n_label > 1 else name
                        ctx.label_map[func_start] = label
                        ctx.seeds.append(SeedInfo(
                            address=func_start, source_phase='pattern_seed',
                            confidence=1.0, reason=label,
                        ))
                        if func_start not in ctx.code_targets:
                            ctx.code_targets[func_start] = TargetInfo(
                                address=func_start, reason='pattern_seed',
                                confidence=1.0, source_offset=-1,
                            )

                    idx += len(pat_bytes)

        return pl.Series(self.output_slot, result, dtype=pl.Float32)
