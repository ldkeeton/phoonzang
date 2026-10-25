"""Record layouts recovered from the instructions, rendered as NASM ``struc``.

A record shows itself in how the code addresses it, not in which register
holds it:

* **indexed** -- an element index scaled by a constant stride and added to a
  data label: ``mov cx, 0x15e; imul cx; mov bx, ax; mov al, [bx + 0x6a40]``
  is field ``+0x26`` of the 350-byte records at the object starting 0x6a1a;
* **pointer** -- a word loaded from a data table and dereferenced:
  ``mov bx, [bx + party_char]; cmp byte [bx + 0x19f], 0xff`` is field
  ``+0x19f`` of the records ``party_char`` points at.

:func:`observe` walks each straight-line run with a small value lattice
(constant, scaled index, loaded pointer) and lists those accesses; the build
unites every binary of a host family (:func:`merge`, one layout per object
so ``shared/`` fragments render alike) and the renderer spells the operands
with the fields (:func:`field_text`) that ``include/structs.inc`` defines
(:func:`inc_text`).  Names come from the sidecar (a ``record`` on a
``data_names`` entry), else ``<label>_rec`` with ``.f_<offset>`` fields.

Nothing here reads hand-written sources: the layouts follow from the
original bytes and the sidecar alone.
"""

import os
import re

from lib.segdataflow import DATA, _R8_PARENT, _join_points

#: The generated include holding every family layout.
STRUCTS_INC = 'include/structs.inc'
#: The merged layouts the build hands the family's emitting pass.
RECORDS_NAME = 'records.json'

#: A pointer field this high is an address, not an offset into a record.
_POINTER_FIELD_MAX = 0x400
#: Registers a call is taken to clobber.
_CALL_CLOBBER = ('ax', 'bx', 'cx', 'dx')
_WORD_REGS = ('ax', 'bx', 'cx', 'dx', 'si', 'di')


class _Val:
    """A register's abstract value: ``off`` plus index terms scaled by
    ``scales`` (``1`` an unscaled one), or a pointer loaded from ``table``."""

    __slots__ = ('scales', 'off', 'table')

    def __init__(self, scales=frozenset(), off=0, table=None):
        self.scales, self.off, self.table = frozenset(scales), off, table

    @property
    def const(self):
        return not self.scales and self.table is None

    def __eq__(self, other):
        return (isinstance(other, _Val) and self.scales == other.scales
                and self.off == other.off and self.table == other.table)

    def __hash__(self):
        return hash((self.scales, self.off, self.table))

    def __repr__(self):
        return f'_Val({sorted(self.scales)}, {self.off:#x}, {self.table})'


_VAR = _Val({1})


def _add(a, b):
    if a is None or b is None or (a.table is not None and b.table is not None):
        return None
    return _Val(a.scales | b.scales, (a.off + b.off) & 0xFFFF,
                a.table if a.table is not None else b.table)


def _scale(a, k):
    if a is None or a.table is not None:
        return None
    if a.const:
        return _Val(off=(a.off * k) & 0xFFFF)
    return _Val({s * k for s in a.scales}, (a.off * k) & 0xFFFF)


def _mul(a, b):
    if a is None or b is None:
        return None
    if a.const:
        return _scale(b, a.off)
    if b.const:
        return _scale(a, b.off)
    return None if a.table is not None or b.table is not None else _VAR


def _parent(insn, reg):
    return _R8_PARENT.get(insn.reg_name(reg).lower(), '')


def _sum_regs(insn, op, regs):
    """The value of *op*'s base plus index registers, or None."""
    total = _Val()
    for reg in (op.mem.base, op.mem.index):
        if reg:
            total = _add(total, regs.get(_parent(insn, reg)))
    return total


def _is_data(insn, op, flow):
    from capstone.x86 import X86_REG_BP, X86_REG_CS
    if op.mem.base == X86_REG_BP or op.mem.segment == X86_REG_CS:
        return False
    return flow is None or flow.effective_segment(insn, op)[1] == DATA


def _load(insn, op, regs, flow):
    """The value a word load from *op* yields: a pointer when it reads a data
    table (``[bx + party_char]``, index scaled by 2) or a data word."""
    if op.size != 2 or not _is_data(insn, op, flow):
        return _VAR
    index = _sum_regs(insn, op, regs)
    if index is None or index.table is not None or index.scales - {2}:
        return _VAR
    return _Val(table=(op.mem.disp + index.off) & 0xFFFF)


def _src(insn, op, regs, flow):
    from capstone import CS_OP_IMM, CS_OP_MEM, CS_OP_REG
    if op.type == CS_OP_IMM:
        return _Val(off=op.imm & 0xFFFF)
    if op.type == CS_OP_REG:
        if op.size != 2:
            return _VAR
        return regs.get(_parent(insn, op.reg))
    if op.type == CS_OP_MEM:
        return _load(insn, op, regs, flow) if op.size == 2 else _VAR
    return None


def _step(insn, regs, stack, flow):
    """Apply *insn* to *regs* and *stack* in place."""
    from capstone import CS_OP_IMM, CS_OP_MEM, CS_OP_REG

    mnem, ops = insn.mnemonic, insn.operands
    dest = (_parent(insn, ops[0].reg)
            if ops and ops[0].type == CS_OP_REG else None)
    wide = bool(ops) and ops[0].size == 2

    if mnem == 'call' or mnem == 'lcall' or mnem.startswith('int'):
        for reg in _CALL_CLOBBER:
            regs[reg] = None
        return
    if mnem == 'push' and ops:
        stack.append(_src(insn, ops[0], regs, flow) if ops[0].size == 2
                     else None)
        return
    if mnem == 'pop' and dest:
        regs[dest] = stack.pop() if stack else None
        return
    if (mnem == 'add' and dest == 'sp' and len(ops) == 2
            and ops[1].type == CS_OP_IMM):
        del stack[max(0, len(stack) - (ops[1].imm & 0xFFFF) // 2):]
        return
    if mnem in ('mul', 'imul') and len(ops) == 1:
        if ops[0].size == 2:
            regs['ax'] = _mul(regs.get('ax'), _src(insn, ops[0], regs, flow))
        else:
            regs['ax'] = _VAR
        regs['dx'] = None
        return
    if mnem == 'imul' and len(ops) == 3 and dest:
        regs[dest] = _mul(_src(insn, ops[1], regs, flow),
                          _src(insn, ops[2], regs, flow)) if wide else _VAR
        return
    if mnem == 'cbw':
        regs['ax'] = _VAR
        return
    if mnem == 'cwd':
        regs['dx'] = None
        return
    if mnem == 'xchg' and len(ops) == 2 and dest and ops[1].type == CS_OP_REG:
        other = _parent(insn, ops[1].reg)
        regs[dest], regs[other] = regs.get(other), regs.get(dest)
        return

    written = {_R8_PARENT.get(insn.reg_name(r).lower(), '')
               for r in insn.regs_access()[1]}
    if dest and not wide:
        # A byte write: the parent holds a byte-sized index from now on.
        regs[dest] = _VAR
        return
    if dest and len(ops) == 2:
        src = ops[1]
        if mnem == 'mov':
            regs[dest] = _src(insn, src, regs, flow)
            return
        if mnem == 'lea' and src.type == CS_OP_MEM:
            total = _sum_regs(insn, src, regs)
            regs[dest] = (None if total is None
                          else _add(total, _Val(off=src.mem.disp & 0xFFFF)))
            return
        if mnem == 'add':
            if src.type == CS_OP_REG and _parent(insn, src.reg) == dest:
                regs[dest] = _scale(regs.get(dest), 2)
            else:
                regs[dest] = _add(regs.get(dest), _src(insn, src, regs, flow))
            return
        if mnem == 'sub' and src.type == CS_OP_IMM:
            value = regs.get(dest)
            regs[dest] = (None if value is None else
                          _Val(value.scales, (value.off - src.imm) & 0xFFFF,
                               value.table))
            return
        if mnem in ('xor', 'sub') and src.type == CS_OP_REG \
                and src.reg == ops[0].reg:
            regs[dest] = _Val()
            return
        if mnem in ('shl', 'sal'):
            count = _src(insn, src, regs, flow) if src.type != CS_OP_REG \
                else regs.get('cx')
            if count is not None and count.const and count.off < 16:
                regs[dest] = _scale(regs.get(dest), 1 << count.off)
            else:
                regs[dest] = None
            return
    if dest and mnem in ('inc', 'dec') and len(ops) == 1:
        value = regs.get(dest)
        delta = 1 if mnem == 'inc' else -1
        regs[dest] = (None if value is None else
                      _Val(value.scales, (value.off + delta) & 0xFFFF,
                           value.table))
        return
    for reg in written:
        if reg in regs or reg in _WORD_REGS:
            regs[reg] = None


def _accesses(insns, flow):
    """``(insn, op_index, op, value)`` for each data memory operand whose
    registers hold known values, in address order."""
    from capstone import CS_OP_MEM

    insns = sorted(insns, key=lambda i: i.address)
    joins = _join_points(insns)
    regs, stack = {}, []
    prev = None
    for insn in insns:
        if (insn.address in joins or prev is None
                or prev.address + prev.size != insn.address):
            regs, stack = {}, []
        for idx, op in enumerate(insn.operands):
            if (op.type == CS_OP_MEM and (op.mem.base or op.mem.index)
                    and _is_data(insn, op, flow)):
                value = _sum_regs(insn, op, regs)
                if value is not None:
                    yield insn, idx, op, value
        _step(insn, regs, stack, flow)
        if insn.mnemonic.startswith('j') or insn.mnemonic in (
                'ret', 'retf', 'iret', 'loop'):
            regs, stack = {}, []
        prev = insn


def _classify(op, value):
    """``('pointer', table, field)``, ``('index', disp, scales)`` or None."""
    disp = op.mem.disp & 0xFFFF
    if value.off:
        return None
    if value.table is not None:
        if disp < _POINTER_FIELD_MAX:
            return 'pointer', value.table, disp
        return None
    from lib.compare.records import DS_INDEX_MIN
    if disp >= DS_INDEX_MIN and value.scales and max(value.scales) > 1:
        return 'index', disp, tuple(sorted(value.scales, reverse=True))
    return None


def observe(insns, flow):
    """The record accesses in *insns*, as sorted JSON-ready lists:
    ``['index', disp, [scales...], width]`` and
    ``['pointer', table, field, width]``."""
    seen = set()
    for insn, _idx, op, value in _accesses(insns, flow):
        kind = _classify(op, value)
        if kind is None:
            continue
        what, a, b = kind
        seen.add((what, a, b, op.size))
    return sorted([what, a, list(b) if what == 'index' else b, width]
                  for what, a, b, width in seen)


# ── the family union ───────────────────────────────────────────────────────

def _owner(starts, addr):
    below = [s for s in starts if s <= addr]
    return max(below) if below else None


def _parse_hex(key):
    return int(key, 16) if isinstance(key, str) else int(key)


def _config_fields(config):
    """``{offset: (name, size or None)}`` of a sidecar ``record``."""
    fields = {}
    for key, entry in (config.get('fields') or {}).items():
        if isinstance(entry, str):
            fields[_parse_hex(key)] = (entry, None)
        else:
            fields[_parse_hex(key)] = (entry['name'], entry.get('size'))
    return fields


def merge(observations, starts, names=None, configs=None):
    """One layout per record, from every binary's :func:`observe` lists.

    *starts* are the DS object starts (the family's ``ds_starts`` union and
    the named objects); an indexed access belongs to the greatest start at
    or below it.  *names* maps a start to its label, *configs* a start to
    its sidecar ``record``.  Returns ``(layouts, report)``: *layouts* maps
    ``'%04x' % start`` to ``{'name', 'pointer', 'size', 'fields': [[offset,
    name, size], ...], 'loads': [...]}`` and *report* is a list of lines.
    """
    names, configs = names or {}, configs or {}
    starts = sorted(set(starts))
    index, pointer = {}, {}
    for obs in observations:
        what, a, b, width = obs
        if what == 'index':
            base = _owner(starts, a)
            # A displacement past the owner's first element is some unnamed
            # object after it more often than ``tbl[i + 48]``.
            if base is None or a - base >= max(b):
                continue
            entry = index.setdefault(base, {'strides': set(), 'hits': set()})
            entry['strides'].add(max(b))
            entry['hits'].add((a - base, width))
        else:
            base = _owner(starts, a)
            if base is None:
                continue
            entry = pointer.setdefault(base, {'loads': set(), 'hits': set()})
            entry['loads'].add(a)
            entry['hits'].add((b, width))

    layouts, report = {}, []
    for base, entry in sorted(index.items()):
        # The sidecar may say the element is smaller than the outermost
        # stride (a ``[][3][10]`` table of 3-byte entries).
        size = (configs.get(base) or {}).get('size') or max(entry['strides'])
        offsets = {rel % size: width for rel, width in entry['hits']}
        if not _is_record(size, offsets):
            continue
        layouts[f'{base:04x}'] = _layout(base, size, offsets, names,
                                         configs.get(base), False, (), report)
    for base, entry in sorted(pointer.items()):
        offsets = {}
        for field, width in entry['hits']:
            offsets[field] = max(width, offsets.get(field, 0))
        if not offsets or set(offsets) == {0}:
            continue
        if f'{base:04x}' in layouts:
            report.append(f'{_label(base, names)}: both indexed and a pointer '
                          'table; kept as indexed')
            continue
        layouts[f'{base:04x}'] = _layout(base, None, offsets, names,
                                         configs.get(base), True,
                                         sorted(entry['loads']), report)
    report.extend(_nested_starts(layouts, names))
    return layouts, report


def absorbed_starts(starts, configs, keep=()):
    """The *starts* inside a sidecar record array, ``count`` records of
    ``size`` from its base, other than the base and the names in *keep*.

    Such a start is a field some binary addressed absolutely
    (``mov word [0x5c0a], 0`` is ``party_records[0]``'s +0x16), not an object:
    left in, it would cut the array into one record per field label.
    """
    spans = [(base, base + config['size'] * config['count'])
             for base, config in configs.items()
             if config.get('size') and config.get('count')]
    return {start for start in starts for lo, hi in spans
            if lo < start < hi and start not in keep}


def absorb_symbols(symbols, equ, layouts, base_symbol, is_data):
    """Respell each data name inside a counted record array as its base
    plus the field (``bss_5c0a`` -> ``party_records + pc_rec.w16``).

    *symbols* (operand texts) and *equ* (``{name: value}``) are updated in
    place; *base_symbol* names a base offset and *is_data* picks the DS/BSS
    names of *equ*.  A sidecar name is a stated object and is kept.
    """
    spans = [(int(key, 16), layout) for key, layout in layouts.items()
             if not layout['pointer'] and layout.get('count')
             and layout['size']]
    texts = {}
    for sym, value in list(equ.items()):
        if (not is_data(sym)
                or getattr(sym, 'source', None) is _sidecar_source()):
            continue
        for base, layout in spans:
            if base < value < base + layout['size'] * layout['count']:
                name = base_symbol(base)
                del equ[sym]
                equ.setdefault(name, base)
                texts[str(sym)] = f'{name} + {field_text(layout, value - base)}'
                break
    if not texts:
        return
    pattern = re.compile(r'\b(%s)\b' % '|'.join(map(re.escape, texts)))
    for key, text in symbols.items():
        new = pattern.sub(lambda m: texts[m.group(1)], str(text))
        if new != str(text):
            symbols[key] = new


def _sidecar_source():
    from lib.symtab import Source
    return Source.SIDECAR


def _is_record(size, offsets):
    """A record has two fields at least; a scalar array (one field at 0, or a
    long's two words) is not one."""
    if size <= 2 or len(offsets) < 2:
        return False
    return not (size == 4 and set(offsets) <= {0, 2})


def _label(base, names):
    return names.get(base) or f'0x{base:04x}'


def _layout(base, size, offsets, names, config, pointer, loads, report):
    config = config or {}
    label = names.get(base)
    name = config.get('name') or (f'{label}_rec' if label
                                  else f'rec_{base:04x}')
    named = _config_fields(config)
    fields = {}
    for off, (fname, fsize) in named.items():
        fields[off] = [fname, fsize]
    for off in sorted(offsets):
        owner = next((o for o, (_n, s) in named.items()
                      if s and o <= off < o + s), None)
        if owner is None and off not in fields:
            fields[off] = [f'f_{off:04x}', None]
    end = size if size is not None else max(
        off + offsets.get(off, 1) for off in fields)
    if size is None:
        size_cfg = config.get('size')
        end = max(end, size_cfg or 0)
    ordered = sorted(fields)
    out = []
    for i, off in enumerate(ordered):
        fname, fsize = fields[off]
        nxt = ordered[i + 1] if i + 1 < len(ordered) else end
        span = fsize or (nxt - off)
        if span <= 0 or off + span > nxt:
            report.append(f'{name}.{fname} (+0x{off:x}) overlaps the next '
                          'field; its size is cut to the gap')
            span = max(nxt - off, 1)
        width = offsets.get(off)
        if width and width > span:
            report.append(f'{name}.{fname} (+0x{off:x}) is read {width} bytes '
                          f'wide but spans {span}')
        out.append([off, fname, span])
    return {'name': name, 'pointer': pointer, 'size': size,
            'count': None if pointer else config.get('count'),
            'fields': out, 'loads': list(loads)}


def _nested_starts(layouts, names):
    """Report a record whose start lies inside another's first element:
    a field label (``slot_rec_target``) cut out of one record.  Each inner
    start is reported once, against the outermost record holding it."""
    lines = []
    indexed = sorted((int(k, 16), v) for k, v in layouts.items()
                     if not v['pointer'])
    for other, inner in indexed:
        base = next((b for b, outer in indexed
                     if b < other < b + outer['size']
                     and outer['size'] == inner['size']), None)
        if base is not None:
            lines.append(
                f'{_label(other, names)} is +0x{other - base:x} of '
                f'{_label(base, names)} (stride {inner["size"]}): one '
                'record; name the base and drop the field label')
    return lines


# ── rendering ──────────────────────────────────────────────────────────────

def _field_terms(layout, rel):
    """The ``struc`` spelling of byte *rel* of *layout* (no leading object)."""
    name, size = layout['name'], layout['size']
    terms = []
    if size:
        count, rel = divmod(rel, size)
        if count:
            terms.append(f'{name}_size*{count}')
    # A byte in a gap is spelled from the ``.pad_`` label there.
    field = next((f for f in reversed(_members(layout)) if f[0] <= rel), None)
    if field is None:
        return terms + ([f'0x{rel:x}'] if rel else [])
    off, fname, _span = field
    if rel == off == 0 and terms:
        return terms
    terms.append(f'{name}.{fname}')
    if rel > off:
        terms.append(f'0x{rel - off:x}')
    return terms


def field_text(layout, rel):
    """``'slot_rec.target'`` for byte *rel* of an indexed record, or
    ``'slot_rec_size*2 + slot_rec.f_0001 + 0x1'``; None for byte 0."""
    if rel == 0:
        return None
    return ' + '.join(_field_terms(layout, rel))


def pointer_symbols(insns, flow, layouts, resolved=()):
    """``{(insn.address, op_index): field text}`` for the dereferences of a
    pointer table's records (``[bx + party_char_rec.f_019f]``)."""
    by_load = {}
    for layout in layouts.values():
        if layout['pointer']:
            for load in layout['loads']:
                by_load[load] = layout
    symbols = {}
    if not by_load:
        return symbols
    for insn, idx, op, value in _accesses(insns, flow):
        key = (insn.address, idx)
        if key in resolved:
            continue
        kind = _classify(op, value)
        if kind is None or kind[0] != 'pointer':
            continue
        layout = by_load.get(kind[1])
        if layout is not None and kind[2]:
            symbols[key] = ' + '.join(_field_terms(layout, kind[2]))
    return symbols


def _members(layout):
    """``[[offset, name, span], ...]``: *layout*'s fields with a ``pad_``
    member over each gap, the ``struc`` body :func:`inc_text` writes."""
    members, at = [], 0
    for off, fname, span in layout['fields']:
        if off > at:
            members.append([at, f'pad_{at:04x}', off - at])
        members.append([off, fname, span])
        at = off + span
    if layout['size'] and layout['size'] > at:
        members.append([at, f'pad_{at:04x}', layout['size'] - at])
    return members


def inc_text(layouts):
    """``include/structs.inc``: one ``struc`` per layout, guarded so the host
    an overlay includes for its symbols does not define them twice."""
    lines = ['; auto-generated',
             '; Record layouts the code addresses (lib/record_layout.py).',
             '; Each field is an offset the code reads or writes; names come',
             '; from the sidecar\'s data_names "record", else f_<offset>.',
             '%ifndef STRUCTS_INC',
             '%define STRUCTS_INC']
    for key in sorted(layouts):
        layout = layouts[key]
        lines.append('')
        what = 'records pointed at by' if layout['pointer'] else 'records at'
        lines.append(f'; {what} DS 0x{key}')
        lines.append(f'struc {layout["name"]}')
        for _off, fname, span in _members(layout):
            lines.append(f'    .{fname}: resb {span}')
        lines.append('endstruc')
    lines.append('%endif')
    return '\n'.join(lines) + '\n'


#: The layouts the binary being rendered spells its operands with
#: (:func:`activate`): the per-instruction assembler and the C relinker read
#: them, both deep below the render.
_active = {}
_active_equ = ''


def activate(layouts):
    """Make *layouts* the ones :func:`active_equ`/:func:`data_text` use."""
    global _active, _active_equ
    _active = layouts or {}
    _active_equ = '\n'.join(equ_lines(_active))


def active_equ():
    """The active layouts' ``struc`` names as ``equ`` lines."""
    return _active_equ


def data_text(name, value, addend):
    """``name + field`` for byte *addend* of the indexed record at DS *value*
    under the active layouts, else None."""
    layout = _active.get(f'{value:04x}')
    if layout is None or layout['pointer'] or addend <= 0:
        return None
    return f'{name} + {field_text(layout, addend)}'


def equ_lines(layouts):
    """The ``struc`` names of *layouts* as plain ``equ`` lines, the values
    :func:`inc_text` defines, for assembling one instruction alone."""
    lines = []
    for key in sorted(layouts):
        layout = layouts[key]
        name = layout['name']
        end = 0
        for off, fname, span in _members(layout):
            lines.append(f'{name}.{fname} equ 0x{off:x}')
            end = off + span
        lines.append(f'{name}_size equ 0x{max(end, layout["size"] or 0):x}')
    return lines


def read_layouts(path):
    """The layouts of a :func:`write_layouts` file."""
    from lib.link import read_export
    return read_export(path) or {}


def write_layouts(project, layouts):
    """Persist the family's layouts for its emitting pass; return the path."""
    from lib.cachedirs import labels_dir
    from lib.link import write_export
    path = os.path.join(labels_dir(project), RECORDS_NAME)
    write_export(path, layouts)
    return path


def export_name(name):
    """The per-binary observations file :func:`collect` reads."""
    return f'{name}_records.json'


def write_observations(project, name, observations):
    from lib.cachedirs import labels_dir
    from lib.link import write_export
    write_export(os.path.join(labels_dir(project), export_name(name)),
                 observations, once=True)


def collect(labels_path, names):
    """Every observation the binaries *names* exported."""
    from lib.link import read_export
    out = []
    for name in sorted(names):
        out.extend(read_export(os.path.join(labels_path, export_name(name)))
                   or [])
    return out
