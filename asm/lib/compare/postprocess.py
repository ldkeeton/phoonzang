"""Data-block postprocessing: promote code-like blocks, annotate tables."""

from lib.model import IS_CODE, IS_DATA
from lib.diagnostics import enabled as diag_enabled, emit as diag_emit, phase as diag_phase
from lib.compare.detect import (
    _try_decode_block,
    _detect_jump_table,
    _detect_file_format,
)
from lib.compare.inline import _generate_inline_code


def _postprocess_data_blocks(records, binary_data, known_addrs, label_map, exact_bytes=False, bitmap=None, carve_1=None, trace=None, local_labels=None, foreign_label_map=None, immediate_labels=None, hard_data=None, data_labels=None, mem_symbols=None, mem_equ=None, image_base=0, table_ranges=None):
    """Replace code-like data_block records with inline records;
    annotate jump tables and known file formats on the rest."""
    new_records = []
    binary_len = len(binary_data)

    promoted_blocks = 0
    promoted_mnemonics = 0
    skipped_all_data = 0
    skipped_carve = 0
    skipped_no_ctrl = 0
    partial_blocks = 0

    for rec in records:
        if rec['type'] != 'data_block':
            new_records.append(rec)
            continue

        start = rec['start']
        end = rec['end']
        raw = binary_data[start:end]

        if len(raw) < 2:
            new_records.append(rec)
            continue

        # Never promote a detected switch table to instructions: its bytes
        # are target words, not code, even when the run is short enough to
        # trip the dead-code heuristic below.  _inject_jump_tables renders
        # the table from these data blocks.
        if table_ranges and any(s < end and start < e for s, e in table_ranges):
            new_records.append(rec)
            if trace is not None:
                trace.event('cascade', 'skipped', addr=start, end=end,
                            size=end - start, reason='jump table')
            continue

        if hard_data is not None and any(hard_data[start:end]):
            new_records.append(rec)
            if trace is not None:
                trace.event('cascade', 'skipped', addr=start, end=end,
                            size=end - start, reason='explicit force_data')
            continue

        # A verifier data block can begin with one decoded code byte (often a
        # return) followed by a much larger classifier-DATA run. Treat a
        # small prefix as part of the boundary, not as evidence that the whole
        # block is dead code after a return.
        if bitmap is not None:
            data_start = start
            while data_start < end and bitmap[data_start] != IS_DATA:
                data_start += 1
            long_data_tail = (
                0 <= data_start - start <= 3
                and end - data_start > 32
                and all(b == IS_DATA for b in bitmap[data_start:end])
            )
            if long_data_tail:
                new_records.append(rec)
                if trace is not None:
                    trace.event('cascade', 'skipped', addr=start, end=end,
                                size=end - start,
                                reason='long classifier-DATA tail')
                continue

        promoted = False
        reason = None

        # If bitmap marks the whole block as DATA, skip promotion
        # UNLESS preceded by CODE (e.g., dead code after ret) AND the
        # entire contiguous DATA run is small (≤ 32 bytes). Looking at the
        # full run prevents labels or record boundaries from fragmenting a
        # large table into individually promotable small blocks.
        if bitmap is not None:
            block_bitmap = bitmap[start:end]
            if all(b == IS_DATA for b in block_bitmap):
                data_run_start = start
                while (data_run_start > 0
                       and bitmap[data_run_start - 1] == IS_DATA):
                    data_run_start -= 1
                data_run_end = end
                while (data_run_end < len(bitmap)
                       and bitmap[data_run_end] == IS_DATA):
                    data_run_end += 1

                preceded_by_code = (
                    data_run_start > 0
                    and bitmap[data_run_start - 1] == IS_CODE
                )
                small_data_run = (data_run_end - data_run_start) <= 32
                if not (preceded_by_code and small_data_run):
                    reason = (
                        'all DATA in bitmap'
                        + (', not preceded by code' if not preceded_by_code
                           else ', contiguous data run too large')
                    )
                    skipped_all_data += 1
                    new_records.append(rec)
                    if trace is not None:
                        trace.event('cascade', 'skipped', addr=start,
                                    end=end, size=end - start, reason=reason)
                    continue
                else:
                    if trace is not None:
                        trace.event('cascade', 'override_allowed', addr=start,
                                    end=end, size=end - start,
                                    reason='preceded by CODE, short data run')

        insns, all_decoded, has_ctrl = _try_decode_block(raw, start)
        if insns and has_ctrl:
            consumed = sum(i.size for i in insns)
            gap = len(raw) - consumed

            # If carve_1 is available, check each decoded instruction
            # against carve DATA signal. Stop promotion at the first
            # instruction that ends at or past the first strong carve
            # byte — keep the safe prefix as code and the tail as a
            # new data block.
            if carve_1 is not None:
                # Locate the first byte with strong carve DATA signal
                carve_frontier = None
                for offset in range(len(raw)):
                    if carve_1[start + offset] < -0.5:
                        carve_frontier = offset
                        break
                if carve_frontier is not None:
                    safe_end_offset = 0
                    for insn in insns:
                        insn_end = safe_end_offset + insn.size
                        if insn_end >= carve_frontier:
                            break
                        safe_end_offset = insn_end
                    if safe_end_offset == 0:
                        # No safe instruction — keep entire block as data
                        skipped_carve += 1
                        new_records.append(rec)
                        if trace is not None:
                            trace.event('cascade', 'carve_blocked',
                                        addr=start, end=end, size=end - start,
                                        reason='first instruction reaches carve frontier')
                        continue
                    if safe_end_offset < len(raw):
                        # Partial promotion: safe prefix → code, tail → data
                        safe_insns = [i for i in insns
                                      if i.address - start < safe_end_offset]
                        inline = _generate_inline_code(
                            safe_insns, raw[:safe_end_offset], start,
                            binary_data, label_map, local_labels, exact_bytes=True,
                            foreign_label_map=foreign_label_map,
                            immediate_labels=immediate_labels,
                            data_labels=data_labels,
                            mem_symbols=mem_symbols, mem_equ=mem_equ,
                            image_base=image_base)
                        if inline:
                            partial_blocks += 1
                            if trace is not None:
                                trace.event('cascade', 'partial_promote',
                                            addr=start,
                                            end=start + safe_end_offset,
                                            size=safe_end_offset,
                                            tail=len(raw) - safe_end_offset)
                            new_records.extend(inline)
                            tail_start = start + safe_end_offset
                            tail_hex = [f'0x{b:02x}'
                                        for b in raw[safe_end_offset:]]
                            new_records.append({
                                'type': 'data_block',
                                'start': tail_start,
                                'end': end,
                                'bytes': tail_hex,
                            })
                            continue
                    # safe_end_offset == len(raw) or inline failed —
                    # fall through to normal promotion

            if all_decoded or (0 < gap <= 3):
                inline = _generate_inline_code(insns, raw, start, binary_data, label_map, local_labels, exact_bytes=True,
                                               foreign_label_map=foreign_label_map,
                                               immediate_labels=immediate_labels,
                                               data_labels=data_labels,
                                               mem_symbols=mem_symbols, mem_equ=mem_equ,
                                               image_base=image_base)
                if inline:
                    promoted_blocks += 1
                    promoted_mnemonics += sum(1 for r in inline if r['type'] == 'mnem')
                    if trace is not None:
                        trace.event('cascade', 'promoted', addr=start,
                                    end=start + consumed, size=consumed,
                                    gap=gap, all_decoded=all_decoded)
                    new_records.extend(inline)
                    if gap > 0:
                        for g_off in range(consumed, len(raw)):
                            new_records.append({
                                'type': 'db',
                                'text': f'0x{raw[g_off]:02x}',
                                'offset': start + g_off,
                                'size': 1,
                            })
                    continue

        jt_count = _detect_jump_table(raw, start, binary_len, known_addrs)
        if jt_count is not None:
            rec['format_hint'] = f'Jump table: {jt_count} entries'
            skipped_no_ctrl += 1
            if trace is not None:
                trace.event('cascade', 'jump_table', addr=start,
                            end=end, size=end - start)
            new_records.append(rec)
            continue

        fmt = _detect_file_format(raw)
        if fmt is not None:
            rec['format_hint'] = fmt
            skipped_no_ctrl += 1
            if trace is not None:
                trace.event('cascade', 'file_format', addr=start,
                            end=end, size=end - start)
            new_records.append(rec)
            continue

        if trace is not None:
            trace.event('cascade', 'kept_as_data', addr=start,
                        end=end, size=end - start,
                        decoded=insns is not None,
                        all_decoded=all_decoded if insns else False,
                        has_ctrl=has_ctrl if insns else False)
        skipped_no_ctrl += 1
        new_records.append(rec)

    if diag_enabled():
        diag_phase('postproc')
        diag_emit('promoted_blocks', promoted_blocks)
        diag_emit('promoted_mnemonics', promoted_mnemonics)
        diag_emit('skipped_all_data', skipped_all_data)
        diag_emit('skipped_carve', skipped_carve)
        diag_emit('skipped_no_ctrl', skipped_no_ctrl)
        diag_emit('partial', partial_blocks)

    return new_records
