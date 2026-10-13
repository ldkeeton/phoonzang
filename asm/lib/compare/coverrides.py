"""Replacement of disassembled records with code compiled from C."""

import re
from collections import ChainMap

from capstone import Cs, CS_ARCH_X86, CS_MODE_16, CS_OP_IMM, CS_OP_MEM

from lib.aztec import relabel, relink
from lib.format import LinkedSymbol
from lib.verify.assemble import micro_assemble, is_semantically_equivalent
from lib.compare.interrupts import _set_insn_fields
from lib.compare.records import _record_span


def _ref_operands(insn, off, refs):
    """Map each relocation inside *insn* to the operand it patches.

    Returns ``({operand index: Ref}, [fixup offsets used])``.  Capstone reports
    where an instruction's immediate and displacement bytes sit, which is
    exactly what a relocation's offset identifies.
    """
    found = {}
    used = []
    for site in range(off, off + insn.size):
        ref = refs.get(site)
        if ref is None:
            continue
        rel = site - off
        for i, op in enumerate(insn.operands):
            if ((op.type == CS_OP_IMM and insn.imm_size
                 and insn.imm_offset == rel)
                    or (op.type == CS_OP_MEM and insn.disp_size
                        and insn.disp_offset == rel)):
                found[i] = ref
                used.append(site)
                break
    return found, used


def _numeric_form(text, refs):
    """*text* with each linked symbol replaced by its value.

    NASM encodes ``call sym`` and ``call 0x1234`` identically (the symbol is a
    constant), so the numeric form verifies a symbolic operand without defining
    the symbol -- which could clash with the shared label prelude.
    """
    for ref in refs:
        for name, value in ref.equ.items():
            text = re.sub(rf'(?<![\w@.$]){re.escape(name)}(?![\w.$])',
                          f'0x{value:04x}', text)
    return text


def _c_bytes_to_records(data, base, label_map, local_labels, foreign_label_map,
                        immediate_labels, exact_bytes=False, data_labels=None,
                        mem_symbols=None, mem_equ=None, image_base=None,
                        linked=None):
    """Disassemble compiler-produced code into emission records.

    *linked* (a :class:`lib.aztec.relink.Linked`) names the operands the C
    relocations patch; those render as their symbol (``call aztec_open``)
    instead of being inferred from the relocated bytes.
    """
    from lib.format import format_instruction
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True
    records = []
    consumed = 0

    def emit_db(start, end):
        for k in range(start, end):
            records.append({
                'type': 'db', 'text': f'0x{data[k]:02x}',
                'offset': base + k, 'size': 1,
            })

    for insn in md.disasm(data, base):
        off = insn.address - base
        if off > consumed:
            emit_db(consumed, off)
        bts = data[off:off + insn.size]
        sym_ops = {}
        if linked is not None and linked.refs:
            sym_ops, used = _ref_operands(insn, off, linked.refs)
            linked.consumed.update(used)
        sym_map = mem_symbols
        if sym_ops:
            sym_map = ChainMap(
                {(insn.address, i): LinkedSymbol(ref.text)
                 for i, ref in sym_ops.items()},
                mem_symbols or {})
        nasm_text = format_instruction(
            insn, label_map, local_labels, foreign_label_map,
            immediate_labels=immediate_labels, data_labels=data_labels,
            mem_symbols=sym_map)
        if nasm_text:
            assemble_text = (_numeric_form(nasm_text, sym_ops.values())
                             if sym_ops else nasm_text)
            built = micro_assemble(
                assemble_text, insn.address, label_map, local_labels,
                foreign_label_map=foreign_label_map,
                immediate_labels=immediate_labels, mem_equ=mem_equ,
                image_base=image_base)
            ok = built is not None and built[:len(bts)] == bts
            if sym_ops and not ok:
                linked.failed.append((insn.address, nasm_text,
                                      built.hex() if built else None,
                                      bts.hex()))
            elif not ok and not exact_bytes and built:
                ok = is_semantically_equivalent(bts, built[:len(bts)],
                                                insn.address)
            rec = {
                'type': 'mnem' if ok else 'db_with_comment',
                'text': nasm_text, 'offset': insn.address, 'size': insn.size,
            }
            if not ok:
                rec['db_hex'] = ', '.join(f'0x{b:02x}' for b in bts)
            _set_insn_fields(rec, insn)
            records.append(rec)
        else:
            emit_db(off, off + insn.size)
        consumed = off + insn.size
    if consumed < len(data):
        emit_db(consumed, len(data))
    return records


def _merge_label_records(new_records, label_records):
    """Re-insert original ``label`` records into regenerated code records."""
    out = []
    labels = sorted(label_records, key=lambda r: r['offset'])
    li = 0
    for rec in new_records:
        off = rec.get('offset', 0)
        while li < len(labels) and labels[li]['offset'] <= off:
            out.append(labels[li])
            li += 1
        out.append(rec)
    while li < len(labels):
        out.append(labels[li])
        li += 1
    return out


def _link_override(label, start, override, records, binary_data, index,
                   names_at):
    """Link one routine's relocations, upgrading a pristine seed first.

    A seed recovered from the Manx sources names Manx identifiers (``open``);
    the linker needs asm labels.  A seed nobody has edited is rewritten once,
    using the original image to learn each name (:mod:`lib.aztec.relabel`);
    anything else must already say what it means.
    """
    func = override['func']
    length = override.get('length') or len(func.code)
    labels_in = [(r['offset'], r['text']) for r in records
                 if r['type'] == 'label' and start <= r['offset'] < start + length]
    try:
        return relink.link(label, start, func, index, binary_data, labels_in)
    except relink.RelinkError as exc:
        if not override.get('pristine'):
            raise ValueError(str(exc)) from exc
    text, func = relabel.upgrade(
        label, override['own_key'], start, override['text'], binary_data,
        index, names_at, override['compile'])
    with open(override['path'], 'w') as f:
        f.write(text)
    override.update(text=text, func=func, pristine=False)
    print(f'  aztec relabel: {label}.c now names asm labels')
    return relink.link(label, start, func, index, binary_data, labels_in)


def _report_linked(label, linked):
    """Print what the linker could not place symbolically."""
    for addr, text, built, want in linked.failed:
        print(f'  aztec link: {label}: 0x{addr:x} {text!r} assembles to '
              f'{built}, compiled bytes are {want}')
    for site in linked.unmatched:
        print(f'  aztec link: {label}: relocation at +0x{site:x} matched no '
              f'operand')
    if linked.legacy:
        kinds = ', '.join(sorted({f'{fx.kind} {fx.symbol_kind}'
                                  for fx in linked.legacy}))
        print(f'  aztec link: {label}: {len(linked.legacy)} relocation(s) '
              f'copied from the original image ({kinds})')


def _apply_c_overrides(records, c_overrides, binary_data, label_map,
                       local_labels, foreign_label_map, immediate_labels,
                       exact_bytes=False, data_labels=None,
                       mem_symbols=None, mem_equ=None, image_base=None):
    """Replace disassembled records with code compiled from C.

    ``c_overrides`` maps a function label to ``{'code': bytes,
    'fixups': [(offset, width), ...]}``.  Relocation bytes are taken from the
    original binary (the compiled code carries placeholders there), so an
    exactly-recovered routine reproduces the original bytes verbatim.
    """
    name_to_addr = {}
    for addr, nm in label_map.items():
        if isinstance(nm, str):
            name_to_addr.setdefault(nm, addr)
    sym_index = names_at = None

    replacements = []
    for label, override in c_overrides.items():
        start = name_to_addr.get(label)
        if start is None:
            raise ValueError(f'C override: label {label!r} not found')
        linked = None
        if override.get('func') is not None:
            if sym_index is None:
                sym_index = relink.SymbolIndex(label_map, foreign_label_map,
                                               data_labels, mem_equ)
                names_at = relabel.data_names(data_labels, mem_equ)
            linked = _link_override(label, start, override, records,
                                    binary_data, sym_index, names_at)
            compiled = linked.code
        else:
            compiled = bytearray(override['code'])
        # The routine owns exactly *length* bytes (its original, exact-match
        # size).  A shorter compile is NOP-filled up to that size; a longer one
        # would shift every following address, so it is a hard error.
        length = override.get('length') or len(compiled)
        if len(compiled) > length:
            raise ValueError(
                f'C override: {label!r} compiled to {len(compiled)} bytes, '
                f'exceeds the original {length} bytes')

        # Overlay the original relocation bytes.  A relocation may start on the
        # routine's last byte and run one byte past it; clamp to the code so the
        # overlay never grows the routine.
        for off, width in (() if linked is not None
                           else override.get('fixups', ())):
            n = min(width, len(compiled) - off)
            if n <= 0:
                continue
            chunk = binary_data[start + off:start + off + n]
            if len(chunk) < n:
                chunk = chunk + bytes(n - len(chunk))
            compiled[off:off + n] = chunk

        # The C routine owns exactly *length* bytes: [start, start+length) is
        # replaced and nothing more.  Previously the replacement was extended
        # to the end of whichever record the routine ended inside, which
        # swallowed following non-C data (strings, jump tables, lookups) and
        # re-decoded it as garbage pseudo-instructions, misplacing any label
        # (e.g. a switch table) that lived past the true routine end.
        end = start + length
        for index, rec in enumerate(records):
            rec_start, rec_end = _record_span(rec)
            if rec['type'] == 'label':
                continue
            if rec_start < end < rec_end:
                if rec['type'] == 'data_block':
                    # Split the aggregate data block at the routine boundary so
                    # the replacement covers only the routine's own bytes.
                    prefix = {
                        **rec, 'end': end,
                        'bytes': [f'0x{b:02x}'
                                  for b in binary_data[rec_start:end]],
                    }
                    suffix = {
                        **rec, 'start': end,
                        'bytes': [f'0x{b:02x}'
                                  for b in binary_data[end:rec_end]],
                    }
                    records[index:index + 1] = [prefix, suffix]
                else:
                    # A single instruction/record straddles the boundary; keep
                    # the previous behaviour and absorb the whole record.
                    end = rec_end
                break
        final = bytearray(binary_data[start:end])
        if len(final) < length:
            final.extend(b'\x90' * (length - len(final)))
        final[:len(compiled)] = compiled
        if len(compiled) < length:
            final[len(compiled):length] = b'\x90' * (length - len(compiled))
        new_records = _c_bytes_to_records(
            bytes(final), start, label_map, local_labels, foreign_label_map,
            immediate_labels, exact_bytes=exact_bytes, data_labels=data_labels,
            mem_symbols=mem_symbols, mem_equ=mem_equ, image_base=image_base,
            linked=linked)
        labels_in = [r for r in records
                     if r['type'] == 'label' and start < r['offset'] < end]
        if linked is not None:
            _report_linked(label, linked)
            # Branch labels follow the code the compiler produced.
            labels_in = ([r for r in labels_in
                          if not r['text'].startswith(relink.LOCAL_PREFIX)]
                         + linked.local_records)
        replacements.append((start, end,
                             _merge_label_records(new_records, labels_in)))

    if not replacements:
        return records

    out = []
    done = set()
    for rec in records:
        rec_start, rec_end = _record_span(rec)
        span = None
        for repl_start, repl_end, _ in replacements:
            if rec['type'] == 'label':
                if repl_start <= rec_start < repl_end:
                    span = (repl_start, repl_end)
                    break
            elif rec_start < repl_end and rec_end > repl_start:
                if rec_start < repl_start or rec_end > repl_end:
                    raise ValueError(
                        f'C override: record 0x{rec_start:x}-0x{rec_end:x} '
                        f'straddles override boundary '
                        f'0x{repl_start:x}-0x{repl_end:x}')
                span = (repl_start, repl_end)
                break
        if span is None:
            out.append(rec)
            continue
        if rec['type'] == 'label':
            if rec_start == span[0]:
                out.append(rec)
            continue
        if span not in done:
            out.extend(next(r[2] for r in replacements
                            if (r[0], r[1]) == span))
            done.add(span)
    return out
