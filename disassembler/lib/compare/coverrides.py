"""Replacement of disassembled records with code compiled from C."""

import os
import re
from collections import ChainMap

from capstone import Cs, CS_ARCH_X86, CS_MODE_16, CS_OP_IMM, CS_OP_MEM

from lib.aztec import relabel, relink
from lib.routine_source import is_asm_source
from lib.format import LinkedSymbol
from lib.verify.assemble import (
    assemble_batch, micro_assemble, is_semantically_equivalent)
from lib.compare.interrupts import _set_insn_fields
from lib.compare.cgate import CGateError, check_against_original
from lib.compare.records import _label_record, _record_span
from lib.compare.symbols import data_symbol
from lib.names import data_space
from lib.symtab import Kind, Space, Symbol
from lib.x86util import is_dos_terminator


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


def _claim_table(table, base, linked, name_to_addr):
    """Match a jump table's relocations to its entries; False: not plain.

    ``cc``'s dense ``switch`` puts its ``dw`` table in the code, each word a
    relocation to a case label.  A word is claimed when its relocation lands
    where the entry's label does; any other is a failure to report.
    """
    # An overlay's table is shifted to its ``o_corg`` (``adjust``); only the
    # relocations, which carry that shift, can vouch for its entries.
    if (table.get('entry_size', 2) != 2
            or (table.get('adjust', 0) and linked is None)
            or table.get('keys', 0)
            or not all(isinstance(e, str) for e in table['entries'])):
        return False
    if linked is None:
        return True
    for i, entry in enumerate(table['entries']):
        site = table['start'] - base + 2 * i
        ref = linked.refs.get(site)
        if ref is None:
            continue
        target = next(iter(ref.equ.values()), None)
        want = name_to_addr.get(entry)
        if target is not None and target == want:
            linked.consumed.add(site)
        else:
            linked.failed.append((
                base + site, f'dw {entry} - IMAGE_BASE',
                f'0x{target:x}' if target is not None else None,
                f'0x{want:x}' if want is not None else None))
    return True


#: Mnemonics after which execution never reaches the next byte.
_NO_FALLTHROUGH = frozenset(('ret', 'retf', 'iret', 'jmp', 'ljmp'))


def _c_bytes_to_records(data, base, label_map, local_labels, foreign_label_map,
                        immediate_labels, exact_bytes=False, data_labels=None,
                        mem_symbols=None, mem_equ=None, image_base=None,
                        linked=None, skip=0, data_spans=(), label_offsets=(),
                        jump_tables=(), label_addrs=None):
    """Disassemble compiler-produced code into emission records.

    *linked* (a :class:`lib.aztec.relink.Linked`) names the operands the C
    relocations patch; those render as their symbol (``call aztec_open``)
    instead of being inferred from the relocated bytes.  The first *skip*
    bytes are not code (a module's data before its first routine) and are
    left to the caller.  *data_spans* (``[(start, end)]`` offsets into
    *data*, :func:`lib.aztec.listing.data_spans`) are the source's own data
    directives, emitted as ``db`` rather than decoded; each is split at the
    *label_offsets* (absolute) inside it, so a label lands on its byte.
    A span that is one of the disassembly's *jump_tables* records is emitted
    as that record, its relocations claimed by :func:`_claim_table`; an
    entry's label is found in *label_map* or *label_addrs* (``{name: addr}``).
    """
    from lib.format import format_instruction
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True
    records = []
    consumed = skip
    tables = {(t['start'], t['end']): t for t in jump_tables}
    name_to_addr = dict(label_addrs or {})
    for addr, nm in (label_map or {}).items():
        if isinstance(nm, str):
            name_to_addr.setdefault(nm, addr)

    def emit_db(start, end):
        for k in range(start, end):
            records.append({
                'type': 'db', 'text': f'0x{data[k]:02x}',
                'offset': base + k, 'size': 1,
            })

    # An absolute external (``bios_data_0410``) is an ``equ`` in the
    # binary's asm; the round-trip assemble needs it too.
    absolute = {name: addr for addr, name in (data_labels or {}).items()
                if getattr(name, 'space', None) is Space.ABS}
    if absolute:
        mem_equ = {**absolute, **(mem_equ or {})}

    def decode():
        """Instructions, and ``(lo, hi)`` for each data span, in order.

        A span that code falls into (``caller``'s ``db 0cbH``, a ``retf``)
        is an instruction spelled as bytes, and is decoded as one.
        """
        pos = skip
        last = None             # the instruction before *pos*; None: none
        for lo, hi in sorted(data_spans or ()):
            lo = max(lo, pos)
            if hi <= lo:
                continue
            for insn in md.disasm(data[pos:lo], base + pos):
                # A DOS exit (``mov ax,4c01h; int 21h``) ends the code too.
                last = ('ret' if is_dos_terminator(data, insn, base)
                        else insn.mnemonic)
                yield insn
            if last is not None and last not in _NO_FALLTHROUGH:
                pos = lo
                continue
            hi = min(hi, len(data))
            # A label inside the span (``cseg_3532``, a word after the strings)
            # starts its own block, so it is placed on its byte.
            cuts = sorted({addr - base for addr in (*(label_map or ()),
                                                    *(local_labels or ()),
                                                    *label_offsets)
                           if base + lo < addr < base + hi})
            for a, b in zip([lo, *cuts], [*cuts, hi]):
                yield a, b
            pos, last = hi, None
        yield from md.disasm(data[pos:], base + pos)

    #: ``(record, text to assemble, original bytes, has linked operands)``
    #: of each instruction, checked against NASM after the walk.
    pending = []
    for insn in decode():
        if isinstance(insn, tuple):
            lo, hi = insn
            if lo > consumed:
                emit_db(consumed, lo)
            table = tables.get((base + lo, base + hi))
            if table is not None and _claim_table(table, base, linked,
                                                  name_to_addr):
                records.append(dict(table))
                consumed = hi
                continue
            records.append({
                'type': 'data_block', 'start': base + lo, 'end': base + hi,
                'bytes': [f'0x{b:02x}' for b in data[lo:hi]],
            })
            consumed = hi
            continue
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
            rec = {'type': None, 'text': nasm_text,
                   'offset': insn.address, 'size': insn.size}
            _set_insn_fields(rec, insn)
            records.append(rec)
            pending.append((rec, assemble_text, bts, bool(sym_ops)))
        else:
            emit_db(off, off + insn.size)
        consumed = off + insn.size
    if consumed < len(data):
        emit_db(consumed, len(data))

    # One NASM run checks every instruction of the routine.
    requests = [(text, rec['offset']) for rec, text, _, _ in pending]
    built_all = assemble_batch(
        requests, label_map, local_labels, foreign_label_map,
        immediate_labels=immediate_labels, image_base=image_base,
        mem_equ=mem_equ) if requests else []
    if built_all is None:
        built_all = [
            micro_assemble(
                text, addr, label_map, local_labels,
                foreign_label_map=foreign_label_map,
                immediate_labels=immediate_labels, mem_equ=mem_equ,
                image_base=image_base)
            for text, addr in requests]
    for (rec, _, bts, linked_ops), built in zip(pending, built_all):
        ok = built is not None and built[:len(bts)] == bts
        if linked_ops and not ok:
            linked.failed.append((rec['offset'], rec['text'],
                                  built.hex() if built else None,
                                  bts.hex()))
        elif not ok and not exact_bytes and built:
            ok = is_semantically_equivalent(bts, built[:len(bts)],
                                            rec['offset'])
        rec['type'] = 'mnem' if ok else 'db_with_comment'
        if not ok:
            rec['db_hex'] = ', '.join(f'0x{b:02x}' for b in bts)
    return records


def _merge_label_records(new_records, label_records):
    """Re-insert original ``label`` records into regenerated code records."""
    out = []
    labels = sorted(label_records, key=lambda r: r['offset'])
    li = 0
    for rec in new_records:
        off = _record_span(rec)[0]
        while li < len(labels) and labels[li]['offset'] <= off:
            out.append(labels[li])
            li += 1
        out.append(rec)
    while li < len(labels):
        out.append(labels[li])
        li += 1
    return out


def _override_local_labels(data, start, end, label_map, local_labels, linked,
                           label, taken, data_spans=()):
    """``(name_by_offset, label_records)`` for a C override's own branches.

    *data* is the routine's bytes, *start*/*end* its span, and *taken* the
    offsets that already carry a label record; *data_spans* (offsets into
    *data*) are the source's own data, not code.  Names come from the disassembly
    when it has the offset (so the file reads as it did before the override),
    from ``linked`` when relink derived one, and are numbered after them
    otherwise.  Only relative branches need a name: an absolute operand is a
    value, not a location, so a bare number assembles correctly for those.
    """
    named = dict(linked.local_names) if linked is not None else {}
    for off, name in (local_labels or {}).items():
        if start <= off < end:
            named.setdefault(off, name)
    global_offsets = {off for off, name in (label_map or {}).items()
                      if isinstance(name, str)}
    numbers = [name.index for name in named.values()
               if name.kind is Kind.LOCAL and name.index is not None]
    number = max(numbers, default=0) + 1
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True
    targets = set()
    insns = [insn for lo, hi in relink.code_runs(len(data), data_spans)
             for insn in md.disasm(bytes(data[lo:hi]), start + lo)]
    for insn in insns:
        if not insn.operands or insn.operands[0].type != CS_OP_IMM:
            continue
        if not (insn.mnemonic == 'call' or insn.mnemonic.startswith('j')
                or insn.mnemonic.startswith('loop')):
            continue
        target = insn.operands[0].imm
        if not (start <= target < end) or target in global_offsets:
            continue
        targets.add(target)
    names = {off: named[off] for off in targets if off in named}
    for target in sorted(targets - names.keys()):
        names[target] = Symbol.local(label, target, number)
        number += 1
    records = [_label_record(names[off], off)
               for off in sorted(targets) if off not in taken]
    return names, records


def _link_override(label, start, override, records, binary_data, index,
                   names_at, image_base=0):
    """Link one ``.c``'s relocations, upgrading a pristine seed first.

    A seed recovered from the Manx sources names Manx identifiers (``open``);
    the linker needs asm labels.  A seed nobody has edited is rewritten once,
    using the original image to learn each name (:mod:`lib.aztec.relabel`);
    anything else must already say what it means.  The whole compile is
    linked: what it does not fit is the gate's to report, never cut off.
    """
    try:
        return _link(label, start, override, records, binary_data, index)
    except relink.RelinkError as exc:
        if not override.get('pristine'):
            raise ValueError(str(exc)) from exc
    text, func = relabel.upgrade(
        label, override['own_keys'], start, override['text'], binary_data,
        index, names_at, override['compile'], image_base or 0,
        asm=is_asm_source(override['path']))
    if not override.get('generated'):
        # A seed kept on disk is rewritten; a new one is written once, at emit.
        with open(override['path'], 'w') as f:
            f.write(text)
    override.update(text=text, func=func, pristine=False)
    print(f'  aztec relabel: {os.path.basename(override["path"])} now names '
          'asm labels')
    return _link(label, start, override, records, binary_data, index)


def _check_publics(label, start, override, labels_at):
    """Every public a hand-written ``.s`` defines besides *label* must be the
    name the build gives its address: a public the sidecar does not name
    (``table_entry_ptr`` where the build says ``loc_3a3a``) is an error."""
    publics = override.get('publics') or {}
    base = start - publics.get(label, 0)
    wrong = []
    for name, off in sorted(publics.items(), key=lambda kv: kv[1]):
        if name == label:
            continue
        addr = base + off
        have = labels_at.get(addr)
        if have is None:
            wrong.append(f'public {name} at 0x{addr:04x}: the build has no '
                         f'label there')
        elif str(have) != name:
            wrong.append(f'public {name} at 0x{addr:04x} is {have} in the '
                         f'build; name it in the sidecar (make name ... '
                         f'{have}={name}:\'note\')')
    if wrong:
        raise CGateError('\n'.join(
            f'{os.path.basename(override["path"])}: {w}' for w in wrong))


def _link(label, start, override, records, binary_data, index):
    """:func:`lib.aztec.relink.link` of *override*'s compiled code at *start*."""
    func = override['func']
    length = override.get('length') or len(func.code)
    labels_in = [(r['offset'], r['name']) for r in records
                 if r['type'] == 'label' and start <= r['offset'] < start + length]
    labels_at = {r['offset']: r['name'] for r in records if r['type'] == 'label'}
    _check_publics(label, start, override, labels_at)
    # A jump table is labelled by its own record (``format``'s
    # ``conv_routines`` is ``jumptable_4822``).
    for r in records:
        if r['type'] == 'jump_table':
            labels_at.setdefault(r['start'], r['label'])
    return relink.link(label, start, func, index, binary_data, labels_in,
                       labels_at, override.get('data_spans', ()))


def _batch_relabels(c_overrides, records, binary_data, starts, index_names,
                    image_base):
    """Compile, as one DOSBox batch, the renamed text of every pristine seed
    that does not link as it is, so :func:`relabel.upgrade` in
    :func:`_link_override` finds each compile cached.

    *starts* gives each label's address; *index_names* returns the symbol
    index and data names.  A seed whose renaming fails is left for
    :func:`_link_override` to report.
    """
    items = []
    precompile = None
    for label, override in c_overrides.items():
        start = override.get('start', starts.get(label))
        if (override.get('func') is None or not override.get('pristine')
                or 'precompile' not in override or start is None):
            continue
        index, names_at = index_names()
        try:
            _link(label, start, override, records, binary_data, index)
            continue
        except relink.RelinkError:
            pass
        try:
            text, _ = relabel.renamed(
                label, override['own_keys'], start, override['text'],
                binary_data, index, names_at, override['func'],
                image_base or 0, asm=is_asm_source(override['path']))
        except relink.RelinkError:
            continue
        items.append((label, override['entry'], text))
        precompile = override['precompile']
    if items:
        for label, exc in precompile(items).items():
            raise ValueError(f'{label}: the renamed seed does not compile: '
                             f'{exc}')


def _split_data_block(records, at, binary_data):
    """Split the aggregate data block that straddles *at*, in place.

    Returns None, or the end of a record of another kind straddling *at*.
    """
    for index, rec in enumerate(records):
        if rec['type'] == 'label':
            continue
        rec_start, rec_end = _record_span(rec)
        if not rec_start < at < rec_end:
            continue
        if rec['type'] != 'data_block':
            return rec_end
        records[index:index + 1] = [
            {**rec, 'end': at,
             'bytes': [f'0x{b:02x}' for b in binary_data[rec_start:at]]},
            {**rec, 'start': at,
             'bytes': [f'0x{b:02x}' for b in binary_data[at:rec_end]]},
        ]
        return None
    return None


def _check_linked(label, linked):
    """Fail on any relocation the emitted source does not name.

    A relocation whose operand text assembles to other bytes, or that no
    decoded operand claims, would leave the C's reference a number.
    """
    problems = [f'0x{addr:x} {text!r} assembles to {built}, compiled bytes '
                f'are {want}' for addr, text, built, want in linked.failed]
    if linked.unmatched:
        sites = ', '.join(f'+0x{site:x}' for site in linked.unmatched)
        problems.append(f'{len(linked.unmatched)} relocation(s) matched no '
                        f'operand ({sites})')
    if problems:
        raise ValueError(f'C override {label!r}: ' + '; '.join(problems))


def _data_bytes(segments, binary_data, offset, n):
    """The exe's *n* initialized bytes at DS:*offset*, None for BSS.

    An overlay's data segment is the host's, whose bytes this run does not
    hold, so a C module's own data cannot be checked there.
    """
    if segments is None or getattr(segments, 'host', None) is not None:
        raise ValueError(f'DS:0x{offset:04x}: this image does not hold the '
                         f'data segment, so the C\'s data cannot be checked')
    where = segments.resolve('DS', offset)
    if where[0] == 'bss':
        return None
    if where[0] != 'file':
        raise ValueError(f'DS:0x{offset:04x} is not in the image')
    return bytes(binary_data[where[1]:where[1] + n])


def symbol_index(label_map, foreign_label_map, data_labels, sym_equ,
                 binary_data, segments, image_base):
    """The :class:`lib.aztec.relink.SymbolIndex` a C routine links against.

    *segments* gives the data segment its canonical names and bytes; an
    overlay's code runs at its ``o_corg``, not CS 0, and its ``_Uend`` marks a
    place (:data:`lib.aztec.relink.OVERLAY_PLACE_SYMBOLS`).
    """
    canonical = None
    if segments is not None and segments.data_space(0) is not None:
        def canonical(offset):
            return data_symbol(segments, offset)
    overlay = getattr(segments, 'kind', None) == 'overlay'
    code_origin = ((getattr(segments, 'overlay', None) or {}).get('o_corg')
                   if overlay else None)
    return relink.SymbolIndex(
        label_map, foreign_label_map, data_labels, sym_equ,
        data_symbol=canonical,
        data_bytes=lambda off, n: _data_bytes(segments, binary_data, off, n),
        # An overlay with no ``o_corg`` has no CS address for its code.
        image_base=None if overlay and code_origin is None else image_base,
        code_origin=code_origin,
        data_names=getattr(segments, 'data_names', None),
        places=(relink.OVERLAY_PLACE_SYMBOLS if overlay
                else relink.PLACE_SYMBOLS))


_NAME = re.compile(r'[A-Za-z_.@$][\w.@$]*')


def _drop_replaced_names(mem_equ, mem_symbols, spans, kept):
    """Forget the DS/BSS names only the replaced code printed.

    *mem_symbols* (``{(address, operand): text}``) is the disassembly's
    operands; those inside *spans* are gone, replaced by the C's records,
    which print the names in *kept*.  A name with no operand left loses its ``equ`` and its
    ``__z`` label (``main``'s strings: ``dseg_0c00`` became
    ``dseg_0bfa + 0x6``).  A name no operand printed came from elsewhere and
    stays.
    """
    if not spans:
        return
    inside, outside = set(), set()
    for (addr, _op), text in (mem_symbols or {}).items():
        name = str(text).split()[0]
        if any(lo <= addr < hi for lo, hi in spans):
            inside.add(name)
        else:
            outside.add(name)
    for name in list(mem_equ):
        key = str(name)
        if (key in inside and key not in outside and key not in kept
                and isinstance(name, Symbol)
                and data_space(name) in (Space.DS, Space.BSS)):
            del mem_equ[name]


def _apply_c_overrides(records, c_overrides, binary_data, label_map,
                       local_labels, foreign_label_map, immediate_labels,
                       exact_bytes=False, data_labels=None,
                       mem_symbols=None, mem_equ=None, image_base=None,
                       allow_diff=False, geometry=None, segments=None):
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

    def index_names():
        nonlocal sym_index, names_at
        if sym_index is None:
            # ``geometry`` (``__zres_end``, ``__zdseg_end``) are the
            # image-size symbols the renderer defines; a C external such
            # as ``_Cend``/``_Uend`` names them.
            sym_equ = {**(mem_equ or {}), **(geometry or {})}
            sym_index = symbol_index(
                label_map, foreign_label_map, data_labels, sym_equ,
                binary_data, segments, image_base)
            names_at = relabel.data_names(
                {**getattr(segments, 'data_names', {}),
                 **(data_labels or {})}, sym_equ)
        return sym_index, names_at

    _batch_relabels(c_overrides, records, binary_data, name_to_addr,
                    index_names, image_base)

    replacements = []
    unplaced = []
    # What the linked C replaced, and the names it prints in their place.
    linked_spans = []
    linked_names = set()
    # The loop below only splits data blocks, so the labels and the jump
    # tables it looks up stay as they are here.
    label_records = [r for r in records if r['type'] == 'label']
    label_addrs = {r['name']: r['offset'] for r in label_records}
    table_records = [r for r in records if r['type'] == 'jump_table']
    for label, override in list(c_overrides.items()):
        # A vendor module starts at its own first byte, which may come before
        # its first routine (``csav.asm``'s ``dw $begin``).
        start = override.get('start', name_to_addr.get(label))
        if start is None:
            raise ValueError(f'C override: label {label!r} not found')
        lead = override.get('lead', 0)
        linked = None
        if override.get('func') is not None:
            index_names()
            try:
                linked = _link_override(label, start, override, records,
                                        binary_data, sym_index, names_at,
                                        image_base)
            except (relink.RelinkError, ValueError) as exc:
                # A new ``.s`` seed the build cannot place (it names module
                # data the splitter gave a neighbour).  Every one is listed
                # before the build fails, so one run shows them all.
                if not (override.get('asm_stub') and override.get('generated')):
                    raise
                unplaced.append(f'{label}: {exc}')
                continue
            compiled = linked.code
            # A DS object the C names first is defined like any operand
            # symbol: in ``mem_equ``, so an overlay exports it to the host.
            if mem_equ is not None:
                for name, value in linked.minted.items():
                    mem_equ.setdefault(name, value)
        else:
            compiled = bytearray(override['code'])
        # The routine owns exactly *length* bytes (its original, exact-match
        # size).  A shorter compile is NOP-filled up to that size; a longer one
        # would shift every following address, so it is a hard error.
        length = override.get('length') or len(compiled)
        if len(compiled) > length:
            raise CGateError(
                f'C override: {label!r} compiled to {len(compiled)} bytes, '
                f'exceeds the original {length} bytes')

        if not allow_diff:
            report = check_against_original(
                label, start, binary_data[start:start + length], compiled,
                exact=exact_bytes)
            if report:
                raise CGateError('\n'.join(report))

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
        _split_data_block(records, start, binary_data)
        if lead:
            _split_data_block(records, start + lead, binary_data)
        straddling = _split_data_block(records, end, binary_data)
        if straddling is not None:
            # A single instruction/record straddles the boundary; keep the
            # previous behaviour and absorb the whole record.
            end = straddling
        final = bytearray(binary_data[start:end])
        if len(final) < length:
            final.extend(b'\x90' * (length - len(final)))
        final[:len(compiled)] = compiled
        if len(compiled) < length:
            final[len(compiled):length] = b'\x90' * (length - len(compiled))
        labels_in = [r for r in label_records if start < r['offset'] < end]
        # Bytes before the module's first routine are data the disassembly
        # already renders (the gate has checked them): they stay as they are.
        head = [r for r in records if r['type'] != 'label'
                and start <= _record_span(r)[0] < start + lead] if lead else []
        if linked is not None:
            linked.consumed.update(site for site in linked.refs if site < lead)
            # Branch labels follow the code the compiler produced.
            labels_in = ([r for r in labels_in
                          if r['name'].kind is not Kind.LOCAL]
                         + linked.local_records)
        # Every branch the override's code makes *inside* the routine must name
        # a label this override defines.  The disassembly's ``local_labels``
        # names bytes of the original routine -- including targets this code
        # does not branch to -- and ``relink`` only sees relocations, while the
        # Aztec compiler resolves some short forward branches itself.  Decoding
        # the bytes we are about to emit closes both holes: a target keeps the
        # disassembly's name when it has one (so the file reads as before) and
        # gets a fresh ``@..<label>.lN`` otherwise.
        record_labels, derived = _override_local_labels(
            bytes(final[lead:]), start + lead, end, label_map, local_labels,
            linked, label, {r['offset'] for r in labels_in},
            [(lo - lead, hi - lead)
             for lo, hi in override.get('data_spans', ()) if hi > lead])
        if linked is None:
            # No relinking: the bytes *are* the original routine's, so its own
            # local labels stay valid for every operand, not just branches.
            record_labels = {**(local_labels or {}), **record_labels}
        labels_in = labels_in + derived
        # A ``switch`` table in the code: the disassembly's record says where
        # it is, and the record prints its own label.
        tables = [r for r in table_records
                  if start + lead <= r['start'] and r['end'] <= end]
        table_starts = {r['start'] for r in tables}
        labels_in = [r for r in labels_in if not (
            r['offset'] in table_starts
            and any(r['name'] == t['label'] for t in tables))]
        spans = [*override.get('data_spans', ()),
                 *((r['start'] - start, r['end'] - start) for r in tables)]
        new_records = head + _c_bytes_to_records(
            bytes(final), start, label_map, record_labels, foreign_label_map,
            immediate_labels, exact_bytes=exact_bytes, data_labels=data_labels,
            mem_symbols=mem_symbols, mem_equ=mem_equ, image_base=image_base,
            linked=linked, skip=lead, data_spans=spans,
            label_offsets=[r['offset'] for r in labels_in], jump_tables=tables,
            label_addrs=label_addrs)
        if linked is not None:
            _check_linked(label, linked)
            linked_spans.append((start + lead, end))
            # Every name the new records print: the C's relocations, and an
            # operand without one that still falls back to the disassembly's
            # name (``fexec``'s ``push word [dseg_0030]``).
            linked_names.update(str(n) for n in linked.minted)
            linked_names.update(_NAME.findall(' '.join(
                r.get('text', '') for r in new_records)))
        replacements.append((start, end,
                             _merge_label_records(new_records, labels_in)))

    if unplaced:
        raise ValueError('.s seed(s) the build cannot place:\n  '
                         + '\n  '.join(unplaced))
    if mem_equ is not None:
        _drop_replaced_names(mem_equ, mem_symbols, linked_spans, linked_names)
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
