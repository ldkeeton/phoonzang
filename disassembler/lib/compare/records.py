"""Shared record helpers: spans, labels, data-block flushing."""

import re
import struct

from lib.names import is_data, is_label, loc_name
from lib.symtab import Kind, Space


def _record_span(rec):
    """Return the half-open byte span emitted by a record, or its label offset."""
    if rec['type'] == 'label':
        return rec['offset'], rec['offset']
    if rec['type'] in ('data_block', 'jump_table'):
        return rec['start'], rec['end']
    start = rec.get('offset', 0)
    return start, start + rec.get('size', 1)


def _label_record(name, off, comment=None):
    """A ``label`` record: *name* (its :class:`~lib.symtab.Symbol`) and the line."""
    text = f'{name}:'
    if comment:
        text = f'{text} {comment}'
    return {'type': 'label', 'text': text, 'name': name, 'offset': off}


def _flush_data_block(records, pending_data, data_block_start, end_off):
    """Append a data_block record if *pending_data* is non-empty."""
    if not pending_data:
        return None, []
    records.append({
        'type': 'data_block',
        'start': data_block_start,
        'end': end_off,
        'bytes': list(pending_data),
    })
    return None, []


def _emit_label_record(records, off, label_map, local_labels=None,
                       insn_by_addr=None, label_comments=None):
    local = (local_labels or {}).get(off)
    name = (label_map or {}).get(off)
    if name is not None:
        if is_data(name) or (is_label(name) and local is not None):
            if local is not None:
                records.append(_label_record(local, off))
            return
        records.append(_label_record(name, off, (label_comments or {}).get(off)))
    elif local is not None:
        records.append(_label_record(local, off))
    else:
        records.append(_label_record(loc_name(off), off))


_BARE_MEM_RE = re.compile(r'\[(?:[a-z]+:)?0x[0-9a-f]{4}\]')
_BARE_FLOW_RE = re.compile(
    r'\b(?:call|jmp|j[a-z]+|loop(?:e|ne)?)\s+'
    r'(?:(?:short|near|far)\s+)?(?:0x[0-9a-f]{1,4}:)?0x[0-9a-f]{1,4}\b'
)

# ── frozen-address census ───────────────────────────────────────────────────
# The dynamic-address goal (plan.md) counts values that still stand as bare
# literals for a location/size/file-offset.  Each pattern names the taxonomy id
# from the plan; a value that has been rewritten as an expression no longer
# matches.
_FROZEN_MZ_FIELD_RE = re.compile(
    r'^\s*dw\s+0x[0-9a-f]{1,4}\s*;\s*e_(cblp|cp|ss|sp|minalloc)\b'
)
_FROZEN_OVR_FIELD_RE = re.compile(
    r'^\s*dw\s+0x[0-9a-f]{1,4}\s*;\s*o_(csize|dsize|bss|entry)\b'
)
# Overlay *origin* fields are counted separately from the size/entry fields
# because their gate class differs: ``o_corg`` (code origin) follows the host
# code region, while ``o_dorg`` (data origin) **is** the host's data-segment
# size (plan.md D7.0).  Both stand as bare literals today.
_FROZEN_OVR_ORIGIN_RE = re.compile(
    r'^\s*dw\s+0x[0-9a-f]{1,4}\s*;\s*o_(corg|dorg)\b'
)
# The ``o_entry`` field is ``<entry> - IMAGE_BASE + o_corg``: the same host
# code-region anchor as the ``o_corg`` field, written inside a formula so the
# bare-literal rule above misses it (plan.md D7.2).
_FROZEN_OVR_ENTRY_LITERAL_RE = re.compile(
    r'^\s*dw\s+\S+.*\+\s*0x[0-9a-f]{4}\s*;.*\bo_entry\b'
)
# ``VBASE`` (the assembler's ``vstart``) **is** ``o_corg - start_offset`` for an
# overlay, so it is a third spelling of the same anchor (plan.md D7.2); the
# counter recognises it by name in the ``equ`` branch below.
# A code immediate equal to the image's data-segment size -- the shared
# host/overlay geometry constant (plan.md D7.0).  Tagged ``; dssize`` at emit
# time (``render.py``) so the census matches a *form*, not a magic number.
_FROZEN_DSSIZE_RE = re.compile(r';\s*dssize\b')
# A data name written as a segment boundary plus a number -- ``bss_9420 equ
# __zdseg_end + 0x0388`` or ``(__zimage_end - __zdseg_start) + 0x4c18``: the
# number is the distance to an object, so an object added before it (or an
# overlay's data growing) leaves the name on the wrong byte.  A BSS object is a
# label in the BSS block after the image instead (plan.md section 5).
_FROZEN_SEG_DELTA_RE = re.compile(
    r'^\s*[A-Za-z_.@$?][\w.@$?]*\s+equ\s+'
    r'(?:__zdseg_end|\(__zimage_end - __zdseg_start\))\s*\+\s*0x[0-9a-f]+\s*$'
)
# The BSS reservation as a number, not the span of the BSS block.
_FROZEN_BSS_SIZE_RE = re.compile(r'^\s*__zbss_size\s+equ\s+0x[0-9a-f]+\s*$')
# A code immediate equal to the *host's resident-code end* (the overlay load
# address, ``o_corg``).  Tagged ``; ocorg`` at emit time so the counter exists
# before the binding does (plan.md D7.2).
_FROZEN_OCORG_IMM_RE = re.compile(r';\s*ocorg\b')
# A code-segment table indexed by a register, ``[cs:bx + 0x1529]``: the
# displacement is the table's CS address (plan.md section 5).  A field offset
# into a CS structure (``[cs:bx + 0x2]``) is below any table, so three hex
# digits is the floor.  The bound form is ``[cs:bx + <label> - IMAGE_BASE]``.
_FROZEN_CS_INDEX_RE = re.compile(
    r'\[cs:(?:word )?[a-z]{2}(?: \+ [a-z]{2})? [+-] 0x[0-9a-f]{3,}\]')
# A label re-based by a number, ``label - IMAGE_BASE + 0x5055``: the number is
# a frozen origin standing in for a symbol (``__zres_end``).
_FROZEN_REBASED_RE = re.compile(r'- IMAGE_BASE \+ 0x[0-9a-f]+')
_FROZEN_EQU_RE = re.compile(r'^\s*(\w+)\s+equ\s+0x')
_FROZEN_PAD_RE = re.compile(r'^\s*times\s+(\d+)\s+db\s+0\b')
# A numeric word in a jump table renders as ``dw 0x<value> ; 0x<slot>``; header
# fields and data blocks carry a textual description instead of a slot offset.
_FROZEN_JT_WORD_RE = re.compile(
    r'^\s*dw\s+0x[0-9a-f]{1,4}\s*;\s*0x[0-9a-f]{4}\s*$'
)
# A deliberately-literal data word carries an extra ``; literal`` tag so the
# census can tell it apart from an unresolved pointer word in a real jump
# table, which otherwise renders identically (plan.md section 10.2).
_FROZEN_LITERAL_WORD_RE = re.compile(
    r'^\s*dw\s+0x[0-9a-f]{1,4}\s*;\s*0x[0-9a-f]{4}\s*;\s*literal\s*$'
)

#: The census bucket of a frozen ``equ``'s symbol, by data space; code (a
#: routine, label or jump table: file offsets) is ``f3``.
_DATA_BUCKETS = {Space.IMAGE: 'f3', Space.CSEG: 'f3', Space.DS: 'f4',
                 Space.BSS: 'f4', Space.PSP: 'psp', Space.ABS: 'external'}

# A literal ``times N db 0`` is treated as a layout pad (F5) only when it is
# large enough to be the code→data gap rather than an inline zero run.
_F5_PAD_MIN = 1000
#: A label definition on its own line (``name:``), the start of an object.
_LABEL_LINE_RE = re.compile(r'^[A-Za-z_.@$?][\w.@$?]*:\s*(?:;.*)?$')


#: Identifier occurrences, and the ``; 0x<hex>`` offset comment of an instruction
#: line (census tags such as ``; dssize`` follow it).
_IDENT_RE = re.compile(r'[A-Za-z_][A-Za-z0-9_]*')
_LABEL_DEF_RE = re.compile(r'^([A-Za-z_][A-Za-z0-9_]*):')
_ANCHOR_RE = re.compile(r';\s*0x([0-9a-f]{4})\b')
_MNEMONIC_RE = re.compile(r'([A-Za-z_][A-Za-z0-9_]*)')
#: First tokens that are data or directives, not instructions.
_DIRECTIVE_KEYWORDS = frozenset((
    'db', 'dw', 'dd', 'times', 'equ', 'section', 'org', 'bits', 'incbin',
))


def instruction_offsets(text):
    """Emitted file offsets of the instruction lines in *text* (D7.2c-2).

    The emitted convention is that an instruction line carries the
    ``; 0x<hex>`` file offset in its comment slot while a data line
    (``db``/``dw``/``times``) carries none -- so this is the set of addresses the
    source *shows* as code, which is what ``count_hidden_flow`` measures against.
    """
    offsets = set()
    for line in (text or '').splitlines():
        stripped = line.strip()
        if not stripped or stripped[0] in ';%':
            continue
        m = _MNEMONIC_RE.match(stripped)
        if m is None or m.group(1).lower() in _DIRECTIVE_KEYWORDS:
            continue
        semi = line.find(';')
        if semi < 0:
            continue
        anchor = _ANCHOR_RE.search(line, semi)
        if anchor:
            offsets.add(int(anchor.group(1), 16))
    return offsets


def _walk_gap(data, lo, hi, code_offsets, md, max_insn):
    """Near call/jmp sites in ``data[lo:hi]`` that target a shown code offset.

    The gap is a run the source does not show as code, walked linearly from its
    start so an ``e8`` byte inside some other construct is not mistaken for a
    site.  The walk stops at the first byte that does not decode, which is what
    makes the caller's count a lower bound.
    """
    hits = []
    pos = lo
    while pos < hi:
        insn = next(md.disasm(data[pos:min(pos + max_insn, hi)], pos), None)
        if insn is None or insn.address + insn.size > hi:
            break
        if data[pos] in (0xE8, 0xE9) and pos + 3 <= hi:
            rel = data[pos + 1] | (data[pos + 2] << 8)
            if rel > 0x7FFF:
                rel -= 0x10000
            target = (pos + 3 + rel) & 0xFFFF
            if target in code_offsets:
                hits.append((pos, target))
        pos = insn.address + insn.size
    return hits


#: A loaded module is called at entry *k* through a far pointer whose offset half
#: is ``MODULE_LOAD_OFFSET + DISPATCH_BASE + DISPATCH_STRIDE * k``.  The host's
#: loader reads the module to ``segment:0x100`` and the module's entry *k* is the
#: ``call handler; retf`` thunk at ``3 + 4k``; the far pointer's segment half is
#: patched in at load time, so only the offsets live in the image (plan.md, the
#: ``DRV`` probe).  That makes the entry offsets the *host's* contract, not an
#: internal choice of the module -- which is why the census's used/inert split
#: reports some of them inert and why they want a declared pin, not a label.
MODULE_LOAD_OFFSET = 0x100
DISPATCH_BASE = 3
DISPATCH_STRIDE = 4


def thunk_entry_count(data, base=DISPATCH_BASE, stride=DISPATCH_STRIDE):
    """The number of ``call handler; retf`` thunks at the head of a module image.

    The dispatch table is ``e8 rel16 cb`` at ``base + stride*k`` starting at
    *base*; the run ends at the first entry that is not one.  This is the count a
    ``dispatch_table`` declaration claims, so comparing the two is what pins the
    declaration to the bytes.
    """
    count = 0
    a = base
    while a + 4 <= len(data) and data[a] == 0xE8 and data[a + 3] == 0xCB:
        count += 1
        a += stride
    return count


def far_entry_runs(data, base=MODULE_LOAD_OFFSET, first=DISPATCH_BASE,
                   stride=DISPATCH_STRIDE, min_slots=2):
    """Maximal runs of the host's far pointers into a loaded module.

    Each slot is ``(offset, segment)`` with the offset half at
    ``base + first + stride*k`` and the segment half patched in at load time (0
    in the image, and the slots are not word-aligned).  Returns
    ``[(byte_offset, count), ...]`` for the runs of at least *min_slots* slots.
    """
    runs = []
    n = len(data)
    for i in range(0, n - stride + 1):
        if struct.unpack_from('<H', data, i)[0] != base + first:
            continue
        count = 1
        while (i + stride * count + 2 <= n
               and struct.unpack_from('<H', data, i + stride * count)[0]
               == base + first + stride * count):
            count += 1
        if count >= min_slots:
            runs.append((i, count))
    return runs


def dispatch_handlers(data, table):
    """The handler offsets a declared ``dispatch_table`` names in *data*.

    Each entry is ``e8 rel16 cb`` at ``base_offset + entry_size*k`` -- an
    executable ``call handler; retf`` thunk -- so entry *k*'s handler is
    ``addr + 3 + rel16``.  Returns the handler offsets in entry order, in the
    same shape and with the same entry filter as ``DispatchTablePhase`` (an
    entry whose bytes are not the declared form is skipped, not the run).
    """
    base = table.get('base_offset', DISPATCH_BASE)
    stride = table.get('entry_size', DISPATCH_STRIDE)
    out = []
    for k in range(int(table.get('count', 0))):
        addr = base + k * stride
        if addr + 4 > len(data):
            break
        if data[addr] != 0xE8 or data[addr + 3] != 0xCB:
            continue
        rel = struct.unpack_from('<h', data, addr + 1)[0]
        out.append((addr + 3 + rel) & 0xFFFF)
    return out


def count_hidden_flow(data, code_offsets, max_insn=16):
    """Near call/jmp displacements that the source emits as *data* (D7.2c-2).

    Returns ``[(site, target), ...]``: a near ``call``/``jmp`` in the image whose
    site the source does not show as code but whose target it *does* -- a real
    address reference no source line spells, so neither the census nor a label
    can reach it.  The measured example is VGA's ``jmp near`` at ``0x2a3c`` into
    ``0x2a97``, emitted as ``db 0xe9, 0x58, 0x00``.

    The scan walks only the bytes *between* the source's instruction offsets, so
    a displacement can never be found inside a rendered instruction, and the walk
    stops at the first byte that does not decode: the count is a **lower bound**.
    """
    from capstone import Cs, CS_ARCH_X86, CS_MODE_16
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    n = len(data)
    anchors = sorted(o for o in code_offsets if 0 <= o < n)
    hits = []
    pos = 0
    for anchor in anchors:
        if anchor > pos:
            hits += _walk_gap(data, pos, anchor, code_offsets, md, max_insn)
        insn = next(md.disasm(data[anchor:anchor + max_insn], anchor), None)
        pos = max(pos, anchor + (insn.size if insn is not None else 1))
    if n > pos:
        hits += _walk_gap(data, pos, n, code_offsets, md, max_insn)
    return hits


def _frozen_bucket(sym):
    """The census bucket of a frozen name's symbol, or ``None``."""
    if sym is None or sym.kind in (Kind.LOCAL, Kind.ANCHOR):
        return None
    if sym.kind is Kind.DATA:
        return _DATA_BUCKETS.get(sym.space)
    return 'f3'


def count_name_use(sources, symbols=None):
    """Split the census's frozen address *names* into used and inert (D7.2c).

    *sources* is an iterable of ``(path, text)`` covering the whole emitted
    tree.  The unit is the tree rather than one file on purpose: a name declared
    in a master is normally used in a fragment.  Returns ``{'names_used',
    'names_inert', 'inert_names'}``.

    A name is **used** when the tree mentions it anywhere other than the ``equ``
    that declares it -- the frozen literal is then a real dependency, and binding
    it to a label is what makes it follow an edit.  An **inert** name is one
    nothing refers to: the literal costs nothing, and converting it to a label
    only moves the census (``loc_0007`` names offset 7 of ``play``'s dispatch
    table, which nothing in the tree calls).

    A comment is not a reference, and neither is a ``%`` directive or an
    ``%include`` path: an emitted fragment is named after the label it defines,
    so its include line would otherwise make every fragment-rooted name look
    used.

    One name can be declared by several binaries (a content tag names the code,
    so identical code carries the same name), so each binary's declaration is
    counted on its own, and a reference means the declaration it resolves to
    (:func:`lib.compare.cotenancy.resolve`: its own binary first).  *sources*
    paths are relative to the tree root.  *symbols* is ``{text: Symbol}``: a
    frozen ``equ`` names a byte when its symbol has a census bucket.
    """
    symbols = symbols or {}
    from lib.compare.cotenancy import binary_of, resolve

    texts = [(str(path), text or '') for path, text in sources]
    defined = {}
    anywhere = {}
    for path, text in texts:
        for lineno, line in enumerate(text.splitlines()):
            m = _FROZEN_EQU_RE.match(line)
            if m and _frozen_bucket(symbols.get(m.group(1))) is not None:
                defined.setdefault((m.group(1), binary_of(path)), set()).add(
                    (path, lineno))
            m = m or _LABEL_DEF_RE.match(line)
            if m:
                anywhere.setdefault(m.group(1), []).append(path)
    if not defined:
        return {'names_used': 0, 'names_inert': 0, 'inert_names': []}
    names = {name for name, _ in defined}
    used = set()
    for path, text in texts:
        for lineno, line in enumerate(text.splitlines()):
            code = line.split(';', 1)[0]
            if not code.strip() or code.lstrip()[0] == '%':
                continue
            for ident in _IDENT_RE.findall(code):
                if ident not in names:
                    continue
                for file in resolve(ident, path, anywhere):
                    key = (ident, binary_of(file))
                    if key in defined and (path, lineno) not in defined[key]:
                        used.add(key)
    inert = sorted(name for name, _ in set(defined) - used)
    return {
        'names_used': len(defined) - len(inert),
        'names_inert': len(inert),
        'inert_names': inert,
    }


def count_frozen_addrs(src_text, symbols=None):
    """Classify residual frozen address/size values in emitted source text.

    Returns the per-taxonomy counts (``f1``..``f7``) plus the three gate
    classes of ``plan.md`` section 10.2:

    * ``code_shift`` -- breaks when code before it resizes; **must reach 0**.
    * ``data_shift`` -- breaks when the data segment resizes; **must reach 0**.
    * ``inert`` -- can never change (``psp_`` fields, ``external_data``, and the
      deliberately-literal data tables counted as ``f6``); excluded from the
      gate but reported for review.

    ``total`` is the gated sum (``code_shift + data_shift``); ``inert`` values
    are reported but not counted against the goal.  ``f7`` is an unresolved
    pointer word -- a numeric ``dw`` in a jump table *without* the ``; literal``
    tag that marks a deliberate data table.  See ``plan.md`` section 3 for the
    taxonomy; rewriting a value as an assembler expression removes it.

    Four extra buckets cover the shared host/overlay segment geometry
    (``plan.md`` D7.0/D7.2): ``o_corg`` (overlay code origin -> ``code_shift``,
    counted in all three spellings -- the header field, the ``VBASE`` and the
    ``o_entry`` addend), ``o_corg_imm`` (a host code immediate equal to it, the
    overlay load address -> ``code_shift``), ``o_dorg`` (overlay data origin,
    i.e. the host DS size -> ``data_shift``), and ``ds_size_imm`` (a code
    immediate equal to the DS size -> ``code_shift``).  Two more are
    ``code_shift`` by construction: ``cs_index`` (a register-indexed code-segment
    table spelled ``[cs:bx + 0x1529]``) and ``rebased`` (a label re-based by a
    number, ``label - IMAGE_BASE + 0x5055``).  ``seg_delta`` (``data_shift``)
    is a data name spelled as a segment boundary plus a number, or the BSS
    size as a number, where the BSS block should carry a label.  ``buffers``
    (``inert``, reported) is a large zero run that starts on a label: an
    object's body, not an F5 fill to a fixed origin.

    *symbols* is ``{text: Symbol}`` for the names the source spells: a frozen
    ``equ`` is bucketed by what its symbol is (:func:`_frozen_bucket`).
    """
    symbols = symbols or {}
    f = {'f1': 0, 'f2': 0, 'f3': 0, 'f4': 0, 'f5': 0, 'f6': 0, 'f7': 0}
    f4_inert = 0
    external = 0
    o_corg = 0
    o_corg_imm = 0
    o_dorg = 0
    ds_size_imm = 0
    cs_index = 0
    rebased = 0
    seg_delta = 0
    buffers = 0
    # An F5 pad is a zero run that fills up to a fixed origin.  A run that
    # starts on a label is an object's body instead (a driver's save buffer,
    # whose start a stored pointer names): its length is the object's size, and
    # an edit before it moves the label and leaves the size right.
    after_label = False
    for line in (src_text or '').splitlines():
        stripped = line.strip()
        if not stripped:
            continue
        on_label = _LABEL_LINE_RE.match(line) is not None
        prev_label, after_label = after_label, on_label
        if on_label:
            continue
        if _FROZEN_SEG_DELTA_RE.match(line) or _FROZEN_BSS_SIZE_RE.match(line):
            seg_delta += 1
            continue
        if _FROZEN_MZ_FIELD_RE.match(line):
            f['f1'] += 1
            continue
        if _FROZEN_OVR_FIELD_RE.match(line):
            f['f2'] += 1
            continue
        m = _FROZEN_OVR_ORIGIN_RE.match(line)
        if m:
            if m.group(1) == 'corg':
                o_corg += 1
            else:
                o_dorg += 1
            continue
        if _FROZEN_OVR_ENTRY_LITERAL_RE.match(line):
            o_corg += 1
            continue
        m = _FROZEN_EQU_RE.match(line)
        if m:
            bucket = _frozen_bucket(symbols.get(m.group(1)))
            if m.group(1) == 'VBASE':
                o_corg += 1
            elif bucket in ('f3', 'f4'):
                f[bucket] += 1
            elif bucket == 'psp':
                f4_inert += 1
            elif bucket == 'external':
                external += 1
            continue
        m = _FROZEN_PAD_RE.match(line)
        if m and int(m.group(1)) >= _F5_PAD_MIN:
            if prev_label:
                buffers += 1
            else:
                f['f5'] += 1
            continue
        if _FROZEN_LITERAL_WORD_RE.match(line):
            f['f6'] += 1
            continue
        if _FROZEN_JT_WORD_RE.match(line):
            f['f7'] += 1
            continue
        if _FROZEN_DSSIZE_RE.search(line):
            ds_size_imm += 1
        if _FROZEN_OCORG_IMM_RE.search(line):
            o_corg_imm += 1
        code = line.split(';', 1)[0]
        cs_index += len(_FROZEN_CS_INDEX_RE.findall(code))
        rebased += len(_FROZEN_REBASED_RE.findall(code))
    code_shift = (f['f1'] + f['f2'] + f['f3'] + f['f5'] + o_corg
                  + o_corg_imm + ds_size_imm + cs_index + rebased)
    data_shift = f['f4'] + f['f7'] + o_dorg + seg_delta
    inert = f4_inert + f['f6'] + external + buffers
    return {
        **f,
        'o_corg': o_corg,
        'o_corg_imm': o_corg_imm,
        'o_dorg': o_dorg,
        'ds_size_imm': ds_size_imm,
        'cs_index': cs_index,
        'rebased': rebased,
        'seg_delta': seg_delta,
        'buffers': buffers,
        'code_shift': code_shift,
        'data_shift': data_shift,
        'inert': inert,
        'total': code_shift + data_shift,
    }


class UnencodedInstructionError(RuntimeError):
    """A decoded instruction could not be re-encoded and fell back to ``db``.

    Raised by the build when a non-``--exact-bytes`` run still emits
    ``db 0x.. ; <disassembly>`` records: every such line is a decoded
    instruction the formatter could not reproduce, which the project now
    treats as a hard error (see ``disassembler/lib/format.py``).
    """


# Emitted ``db 0x.., 0x.. ; <disassembly>`` lines produced by a
# ``db_with_comment`` record.  A plain data block renders without the ``;``.
_DB_COMMENT_LINE_RE = re.compile(
    r'^\s*db\s+0x[0-9a-f]{2}(?:\s*,\s*0x[0-9a-f]{2})*\s*;'
)


def find_db_with_comment_lines(text):
    """Return emitted ``db … ; <disassembly>`` lines (unencoded instructions)."""
    return [line for line in (text or '').splitlines()
            if _DB_COMMENT_LINE_RE.match(line)]


def _count_bare_addrs(records):
    bare_mem = 0
    bare_call = 0
    bare_dbc = 0
    for r in records:
        t = r.get('text')
        if not t:
            continue
        if r['type'] == 'mnem':
            if _BARE_MEM_RE.search(t):
                bare_mem += 1
            if _BARE_FLOW_RE.search(t):
                bare_call += 1
        elif r['type'] == 'db_with_comment':
            if _BARE_FLOW_RE.search(t) or _BARE_MEM_RE.search(t):
                bare_dbc += 1
    return bare_mem, bare_call, bare_dbc
