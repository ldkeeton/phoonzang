"""Inline-code generation for code-like data blocks."""

from capstone import CS_OP_MEM

from lib.verify.assemble import micro_assemble, is_semantically_equivalent, clear_assemble_cache
from lib.diagnostics import enabled as diag_enabled, emit as diag_emit, phase as diag_phase
from lib.compare.interrupts import _set_insn_fields


def _generate_inline_code(insns, raw_bytes, start_offset, binary_data, label_map, local_labels=None, exact_bytes=False, foreign_label_map=None, immediate_labels=None, data_labels=None, mem_symbols=None, mem_equ=None, image_base=0):
    """Build mnem/db_with_comment/db records for a code-like block."""
    from lib.format import format_instruction

    records = []
    data_added = 0

    for insn in insns:
        rel_off = insn.address - start_offset
        if rel_off < 0 or rel_off + insn.size > len(raw_bytes):
            break

        bts = raw_bytes[rel_off:rel_off + insn.size]

        if all(b == 0 for b in bts):
            for i, b in enumerate(bts):
                records.append({
                    'type': 'db',
                    'text': f'0x{b:02x}',
                    'offset': insn.address + i,
                    'size': 1,
                })
            continue

        nasm_text = format_instruction(insn, label_map, local_labels, foreign_label_map=foreign_label_map, immediate_labels=immediate_labels, data_labels=data_labels, mem_symbols=mem_symbols)

        if nasm_text is None:
            for i, b in enumerate(bts):
                records.append({
                    'type': 'db',
                    'text': f'0x{b:02x}',
                    'offset': insn.address + i,
                    'size': 1,
                })
            continue

        built = micro_assemble(nasm_text, insn.address, label_map, local_labels, immediate_labels=immediate_labels, mem_equ=mem_equ, image_base=image_base)
        ok = built and len(built) >= len(bts) and built[:len(bts)] == bts
        if not ok and not exact_bytes and built:
            ok = is_semantically_equivalent(bts, built[:len(bts)], insn.address)
        if ok:
            new_text = None
            names = data_labels if data_labels is not None else label_map
            if names is not None:
                for op in insn.operands:
                    if op.type == CS_OP_MEM and op.mem.base == 0 and op.mem.index == 0:
                        addr = op.mem.disp & 0xFFFF
                        if addr == 0 or addr in names:
                            continue
                        if label_map is not None and addr in label_map:
                            # A code label owns this offset; a data-space
                            # alias would be undefined.
                            continue
                        dname = f'data_{addr:04x}'
                        names[addr] = dname
                        if label_map is not None and names is not label_map:
                            label_map[addr] = dname
                        data_added += 1
                        clear_assemble_cache()
                        new_text = format_instruction(insn, label_map, local_labels, foreign_label_map=foreign_label_map, immediate_labels=immediate_labels, data_labels=names, mem_symbols=mem_symbols)
                        if new_text:
                            rebuilt = micro_assemble(new_text, insn.address, label_map, local_labels, immediate_labels=immediate_labels, mem_equ=mem_equ, image_base=image_base)
                            if rebuilt and len(built) >= len(bts) and rebuilt[:len(bts)] == bts:
                                nasm_text = new_text
            rec = {
                'type': 'mnem',
                'text': nasm_text,
                'offset': insn.address,
                'size': insn.size,
            }
            _set_insn_fields(rec, insn)
            records.append(rec)
        else:
            db_hex = ', '.join(f'0x{b:02x}' for b in bts)
            rec = {
                'type': 'db_with_comment',
                'text': nasm_text,
                'db_hex': db_hex,
                'offset': insn.address,
                'size': insn.size,
            }
            _set_insn_fields(rec, insn)
            records.append(rec)

    if diag_enabled() and data_added > 0:
        diag_phase('gen_inline')
        diag_emit('data_added', data_added)

    return records
