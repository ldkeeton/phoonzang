import polars as pl
import numpy as np
from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.model import PhaseContext, SeedInfo, TargetInfo
from lib.match.pattern import anchor_signature
from lib.pipeline.phase import Phase, PhaseContract
from lib.symtab import Kind, Source, Symbol


def _discard_stale_prologue_seed(ctx, address):
    """Drop a prior pattern root superseded by a discovered entry prefix."""
    stale_reasons = {
        seed.reason for seed in ctx.seeds
        if seed.address == address and seed.source_phase == 'pattern_seed'
    }
    if not stale_reasons:
        return

    ctx.seeds = [
        seed for seed in ctx.seeds
        if not (seed.address == address
                and seed.source_phase == 'pattern_seed')
    ]
    if ctx.label_map.get(address) in stale_reasons:
        del ctx.label_map[address]
    target = ctx.code_targets.get(address)
    if target is not None and target.reason == 'pattern_seed':
        del ctx.code_targets[address]


class PatternSeedPhase(Phase):
    contract = PhaseContract(
        output_slot='pattern_seed',
        writes_columns=['pattern_seed'],
        reads_ctx=['binary_data', 'label_map', 'code_targets', 'seeds',
                   'hard_data'],
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

        known_targets = set(ctx.code_targets.keys())
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

                    if ctx.hard_data[idx:idx + len(pat_bytes)].any():
                        idx += len(pat_bytes)
                        continue

                    anchored = anchor_signature(
                        data, idx, sig, known_targets, md, self.max_func_size,
                        window_len=len(pat_bytes))
                    if anchored is None:
                        idx += len(pat_bytes)
                        continue

                    func_start, _ = anchored
                    if func_start in ctx.label_map:
                        # First match wins (Aztec/known precedence over reuse).
                        idx += len(pat_bytes)
                        continue

                    if func_start != idx:
                        _discard_stale_prologue_seed(ctx, idx)

                    n_label = name_count.get(name, 0) + 1
                    name_count[name] = n_label
                    label = Symbol(
                        f'{name}_{n_label}' if n_label > 1 else name,
                        kind=Kind.ROUTINE, source=Source.SIGNATURE,
                        offset=func_start, role=sig.get('role'),
                        library=sig.get('library'))

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
