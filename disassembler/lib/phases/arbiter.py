import polars as pl
import numpy as np

from lib.model import PhaseContext, IS_UNKNOWN, IS_CODE, IS_DATA
from lib.pipeline.phase import Phase, PhaseContract


_PHASE_WEIGHTS = {
    'sidecar': 5,
    'recursive': 5,
    'force_code': 5,
    'dispatch_table': 3,
    'aztec_overlay': 4,
    'trampoline': 3,
    'prune_dead': 3,
    'prune_zero': 3,
    'carve_1': 3,
    'carve_2': 2,
    'error_handler': 2,
    'settled': 1,
    'prune_dead_before': 1,
    'pattern_seed': 5,
}

_CONF_CODE = 0.3
_CONF_DATA = -0.3

_CALL_REASON_BONUS = {
    'direct_call': 2,
    'seed': 2,
    'trampoline': 1,
    'indirect_jmp': 1,
    'jt_target': 0,
    'code_table': 2,
    'force_code': 2,
}


class ArbiterPhase(Phase):
    contract = PhaseContract(
        input_slot='',
        output_slot='squashed',
        writes_columns=['squashed'],
        reads_columns=['ALL'],  # weighted voting from ALL columns (excl raw_byte/seed/squashed/squashed_iter)
        reads_ctx=['binary_data', 'code_targets', 'blocks', 'jump_tables',
                   'hard_data', 'hard_code', 'trace'],
        writes_ctx=['report'],
        requires_binary=True,
    )

    def run(self, _input, ctx):
        n = len(ctx.binary_data)
        tlog = ctx.trace

        phase_cols = [c for c in ctx.layers.columns
                      if c not in ('raw_byte', 'seed', 'squashed')
                      and not c.startswith('squashed_iter_')]

        if not phase_cols:
            result = np.full(n, IS_UNKNOWN, dtype=np.uint8)
            result[ctx.hard_data] = IS_DATA
            return pl.Series('squashed', result, dtype=pl.UInt8)

        code_weight = np.zeros(n, dtype=np.float32)
        data_weight = np.zeros(n, dtype=np.float32)
        phase_values = {}

        for name in phase_cols:
            w = _PHASE_WEIGHTS.get(name, 1)
            col = ctx.layers[name].to_numpy()
            phase_values[name] = col
            code_weight = np.where(col > _CONF_CODE, code_weight + w, code_weight)
            data_weight = np.where(col < _CONF_DATA, data_weight + w, data_weight)

        for addr, info in ctx.code_targets.items():
            bonus = _CALL_REASON_BONUS.get(info.reason, 0)
            if bonus > 0 and 0 <= addr < n:
                code_weight[addr] += bonus

        for block in ctx.blocks:
            if block.confidence >= 0.9 and block.provenance in ('seed', 'call', 'trampoline'):
                code_weight[block.start:block.end] += 3

        result = np.full(n, IS_UNKNOWN, dtype=np.uint8)

        code_wins = (code_weight >= data_weight + 2)
        data_wins = (data_weight >= code_weight + 2)
        result[code_wins] = IS_CODE
        result[data_wins] = IS_DATA

        last_col = ctx.layers[phase_cols[-1]]
        last_arr = last_col.to_numpy()
        undecided = (result == IS_UNKNOWN)
        result[undecided & (last_arr > 0.0)] = IS_CODE
        result[undecided & (last_arr < 0.0)] = IS_DATA
        weighted_result = result.copy()

        # Verified control-flow decoding is authoritative over heuristic
        # data votes; explicit sidecar data remains the final authority.
        hard_code = ctx.hard_code & ~ctx.hard_data
        result[hard_code] = IS_CODE
        result[ctx.hard_data] = IS_DATA
        code_wins[hard_code] = True
        data_wins[hard_code] = False
        code_wins[ctx.hard_data] = False
        data_wins[ctx.hard_data] = True

        if tlog and tlog.watched_addresses:
            decision_names = {
                IS_UNKNOWN: 'unknown',
                IS_CODE: 'code',
                IS_DATA: 'data',
            }
            for addr in sorted(tlog.watched_addresses):
                if not 0 <= addr < n:
                    continue
                code_sources = []
                data_sources = []
                phase_evidence = []
                for name, values in phase_values.items():
                    value = float(values[addr])
                    weight = _PHASE_WEIGHTS.get(name, 1)
                    vote = 'neutral'
                    if value > _CONF_CODE:
                        vote = 'code'
                        code_sources.append({'phase': name, 'value': value,
                                             'weight': weight})
                    elif value < _CONF_DATA:
                        vote = 'data'
                        data_sources.append({'phase': name, 'value': value,
                                             'weight': weight})
                    if value != 0.0:
                        phase_evidence.append({
                            'phase': name, 'value': value,
                            'weight': weight, 'vote': vote,
                        })

                target = ctx.code_targets.get(addr)
                tlog.event(
                    'arbiter', 'byte_decision', iteration=ctx.iteration,
                    addr=addr,
                    code_weight=float(code_weight[addr]),
                    data_weight=float(data_weight[addr]),
                    weighted_decision=decision_names[int(weighted_result[addr])],
                    final_decision=decision_names[int(result[addr])],
                    code_sources=code_sources, data_sources=data_sources,
                    phase_evidence=phase_evidence,
                    code_target=(
                        {
                            'reason': target.reason,
                            'confidence': target.confidence,
                            'hard': target.hard,
                            'source_offset': target.source_offset,
                        } if target else None
                    ),
                    hard_code=bool(ctx.hard_code[addr]),
                    hard_data=bool(ctx.hard_data[addr]),
                    last_phase=phase_cols[-1],
                    last_phase_value=float(last_arr[addr]),
                )

        if tlog:
            CHUNK = 256
            for chunk_start in range(0, n, CHUNK):
                chunk_end = min(chunk_start + CHUNK, n)
                cw = int(code_weight[chunk_start:chunk_end].sum())
                dw = int(data_weight[chunk_start:chunk_end].sum())
                n_code = int((result[chunk_start:chunk_end] == IS_CODE).sum())
                n_data = int((result[chunk_start:chunk_end] == IS_DATA).sum())
                if n_code > 0 or n_data > 0:
                    tlog.event('arbiter', 'chunk_result',
                               iteration=ctx.iteration,
                               addr=chunk_start,
                               end=chunk_end,
                               code_weight_sum=cw,
                               data_weight_sum=dw,
                               code_bytes=n_code,
                               data_bytes=n_data,
                               chunk_size=chunk_end - chunk_start)

        vote_log = {}
        for name in phase_cols:
            w = _PHASE_WEIGHTS.get(name, 1)
            col = ctx.layers[name].to_numpy()
            cw = int((col > _CONF_CODE).sum())
            dw = int((col < _CONF_DATA).sum())
            vote_log[name] = {'weight': w, 'code_votes': cw, 'data_votes': dw}
        vote_log['_stats'] = {
            'code_wins': int(code_wins.sum()),
            'data_wins': int(data_wins.sum()),
            'fallback_code': int((undecided & (last_arr > 0.0)).sum()),
            'fallback_data': int((undecided & (last_arr < 0.0)).sum()),
            'undecided_final': int((result == IS_UNKNOWN).sum()),
            'hard_code_bytes': int(hard_code.sum()),
            'hard_data_bytes': int(ctx.hard_data.sum()),
        }
        vote_log['_blocks_confirmed'] = len([
            b for b in ctx.blocks
            if b.confidence >= 0.9 and b.provenance in ('seed', 'call', 'trampoline')
        ])
        vote_log['_jt_validated'] = sum(
            1 for jt in ctx.jump_tables if jt.validation_ok
        )
        vote_log['_jt_rejected'] = sum(
            1 for jt in ctx.jump_tables if jt.validated and not jt.validation_ok
        )
        ctx.report['arbiter'] = vote_log

        return pl.Series('squashed', result, dtype=pl.UInt8)
