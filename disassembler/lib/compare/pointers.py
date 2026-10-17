"""Data-pointer candidate scorer (plan.md Sections 8-10, step D4).

A word stored in data may be a pointer (it must follow the data/code segment
when bytes are inserted) or a number (it must stay put).  ``make verify``
cannot tell them apart, because at the original layout a *correct* promotion
re-emits exactly the original bytes -- and so does a wrong one (plan.md
Section 3.1).  This module is the static half of the answer: it collects every
candidate, attaches weighted independent evidence (Section 8.2), applies the
strong-anchor rule (8.1) and the Section 5d hard refusals, and returns the
accepted set plus the ``unproven_data_words`` backlog (Section 13).

It is **pure analysis**: it never changes the emitted source.  Promotion is
D5; here we only decide *which* words would be promoted and prove the
precision claim against the sidecar corpus (Section 14).

Candidate = a 16-bit word ``W != 0`` at an even file offset that lies entirely
in a non-code span, whose value maps into a loaded space (CS/``LOAD`` or
DS/``DATA``; see :mod:`lib.segments`).

Evidence weights (starting values; only the *sign* of the total is
load-bearing) follow plan.md 8.2, with the 16-bit adaptations and one
deliberate omission recorded inline and in Section 17 (D5).
"""

import collections
import struct

from lib.model import IS_CODE
from lib.compare.regions import kind_at, region_at

# ── weights (plan.md Section 8.2) ───────────────────────────────────────────
BASELINE = -2

W_RELOCATION = 10          # strong: an MZ relocation marks the word
W_POINTER_ACCESS = 5       # strong: read by code at pointer size
W_CONSUMPTION = 5          # strong: loaded word then used as an address (E1)
W_ARRAY_RUN = 3            # strong: part of a >=3 run of known addresses
W_RUN_TARGET = 2           # pointed to by such a run
W_ALIGNED = 2              # trivial (every candidate is aligned)
W_KNOWN_LABEL = 2          # target is a known label / block start

W_OVERLAP = -2             # overlaps another candidate (resolution)
W_BITMASK = -2             # round number: a size/offset, very likely not a ptr
W_IN_STRING = -2           # the word sits inside printable text
W_INERT_TARGET = -1        # target points into an inert resource region
W_NON_POINTER_ACCESS = -6  # read by code at a size != pointer size

#: Strong anchors: at least one is required to promote (plan.md Section 8.1).
#: ``pointer_access`` is granted only by a **table** read (``[bx+disp]`` word
#: access), not by an absolute single-word read: the corpus showed absolute
#: reads of code-embedded data islands promote round numbers/segment words,
#: while every asserted table is walked through a register-relative operand.
#: ``consumption`` is the plan's E1 "proven consumer": the loaded word is
#: *used as an address* (``mov di, [mem]; stosb es:[di]``), which proves the
#: space even when the value lies outside the statically bounded data bytes.
STRONG_ANCHORS = ('relocation', 'pointer_access', 'array_run', 'consumption')

#: The PSP saved-SS:SP slots (plan.md Section 5d).  An **unrelocated** absolute
#: DS displacement in this range names a PSP field, not a data object, so the
#: accessed word is inert and carries no access evidence.
FIXED_DS_SLOTS = frozenset({0x2E, 0x30})

#: Region kinds that refusal rule 1 treats as "not a data object".
REFUSED_TARGET_KINDS = frozenset({'string', 'resource'})

# ── ddisasm's `point-to-boundary-sym` is deliberately NOT ported ────────────
# `symbolization.dl` gives +4 when a candidate points at a value proven to be a
# **section** boundary: `boundary_sym_expr` requires `loaded_section(Dest,_,_)`
# *and* `loaded_section(_,Dest,_)` (the end of one section is the start of the
# next) plus a structural reason (a loop counting down, a loop-bound compare, a
# compared loop counter, the end of a >=3 pointer array, or the last section).
# A 16-bit MZ image has no fine sections and no such code analysis, so any
# cheapened version -- "the target is the start of a carved region" -- fires on
# coincidence.  Measured: the 902-byte unclassified blob at vinstall
# 0x401b..0x43a1 yielded 224 candidates and 10 region-start hits, nine of them
# the same repeated value 0x050d; the tenth (`0x4374`) is what put a font-data
# word in front of a reviewer (plan.md Section 17, D5).  The term is therefore
# omitted rather than weakened.  See `_STRONG_HINTS` for the corroboration rule
# that replaces it.

#: 16-bit adaptation of ddisasm's ">=20 trailing zero bits" cut: a value that
#: is a multiple of 256 is a size/offset/bitmask far more often than an
#: address, and the observed pointer arrays never look like that.
ROUND_NUMBER_TRAILING_ZEROS = 8

# Mnemonics whose *first* operand is still read (read-modify / compare / push).
_READS_DEST = frozenset({
    'push', 'inc', 'dec', 'not', 'neg', 'add', 'adc', 'sub', 'sbb', 'and',
    'or', 'xor', 'cmp', 'test', 'shl', 'shr', 'sal', 'sar', 'rol', 'ror',
    'rcl', 'rcr', 'mul', 'imul', 'div', 'idiv', 'xchg',
})


def _read16(data, offset):
    return struct.unpack_from('<H', data, offset)[0]


def _non_code_spans(emit_class):
    """Yield ``(start, end)`` of maximal runs of non-code bytes."""
    n = len(emit_class)
    i = 0
    while i < n:
        if emit_class[i] != IS_CODE:
            start = i
            while i < n and emit_class[i] != IS_CODE:
                i += 1
            yield start, i
        else:
            i += 1


def _in_space(value, segments):
    """Spaces a 16-bit *value* can name, as a set of ``{'ds','cs'}``.

    The DATA test is limited to the **file-backed** data segment (``value <
    bss_boundary``).  A value that points into BSS is also a real DS pointer,
    but BSS size is not statically bounded here, so accepting ``value < 0x10000``
    would make almost every small number a candidate; BSS-offset pointers are
    left to the backlog (plan.md Section 18).
    """
    spaces = set()
    if segments is None or not value:
        return spaces
    data_origin = getattr(segments, 'data_origin', None)
    if data_origin is not None:
        bss = getattr(segments, 'bss_boundary', None)
        if bss is not None and value < bss:
            spaces.add('ds')
    cs_file = _cs_file(value, segments)
    if cs_file is not None and 0 <= cs_file < segments.file_size:
        spaces.add('cs')
    return spaces


def _cs_file(value, segments):
    """File offset of CS offset *value*, or None.

    A raw driver runs at ``CS:0x100`` (``load_offset``), so its CS offsets are
    file offsets plus the load base (plan.md D7.6).
    """
    cs_origin = getattr(segments, 'cs_origin', None)
    if cs_origin is None:
        return None
    return cs_origin + value - (getattr(segments, 'load_offset', 0) or 0)


def _in_initialised_data(value, segments):
    """True when *value* names a file-backed DS byte (``value < bss_boundary``).

    The table-run bound uses this stricter test so a pointer run stops at the
    end of the initialised data instead of continuing into adjacent text.
    """
    if segments is None or not value:
        return False
    bss = getattr(segments, 'bss_boundary', None)
    return bss is not None and value < bss


def _target_offset(space, value, segments):
    if space == 'ds' and segments.data_origin is not None:
        return segments.data_origin + value
    if space == 'cs':
        return _cs_file(value, segments)
    return None


def _trailing_zeros(value):
    count = 0
    while value and not (value & 1):
        value >>= 1
        count += 1
    return count


def collect_candidates(data, segments, emit_class):
    """Every aligned in-space word in a non-code span.

    Returns a list of ``(offset, value, spaces)`` with *spaces* the set of
    loaded spaces the value can name.
    """
    candidates = []
    for start, end in _non_code_spans(emit_class):
        offset = start + (start & 1)
        while offset + 2 <= end:
            value = _read16(data, offset)
            spaces = _in_space(value, segments)
            if spaces:
                candidates.append((offset, value, spaces))
            offset += 2
    return candidates


def _relocation_file_offsets(segments):
    relocs = getattr(segments, 'relocations', ()) or ()
    header = getattr(segments, 'header_size', 0) or 0
    return {header + r['segment'] * 16 + r['offset'] for r in relocs}


def _absolute_operand_file_offset(insn, op, segments, segment_flow,
                                  reloc_file_offsets):
    """File offset named by an absolute (base/index-less) memory operand.

    Honours the segment model (CS -> load image, DS/ES -> data segment) and
    drops the PSP saved-stack slots (plan.md Section 5d) unless the slot is
    itself a relocation target.  Returns ``None`` when the operand does not
    provably name a byte of the image.
    """
    from lib.segdataflow import DATA, LOAD

    seg, space = segment_flow.effective_segment(insn, op)
    if seg not in ('ds', 'es', 'cs'):
        return None
    disp = op.mem.disp & 0xFFFF
    if space == LOAD:
        return _cs_file(disp, segments)
    if space == DATA:
        origin = segments.data_origin
    else:
        return None
    if origin is None:
        return None
    file_off = origin + disp
    if (space == DATA and disp in FIXED_DS_SLOTS
            and file_off not in reloc_file_offsets):
        # PSP saved-stack slot: the runtime reads a PSP field, not a data
        # object (plan.md Section 5d).
        return None
    return file_off


def _access_evidence(instructions, segments, segment_flow):
    """Walk decoded reads and classify pointer-sized accesses.

    Returns ``(word_reads, non_pointer_reads, table_bases, sources)``:

    * ``word_reads`` -- words read by code at pointer (word) size through a
      statically addressable DS/ES/CS operand;
    * ``non_pointer_reads`` -- words read at another size (a byte table, a
      dword far pointer, ...);
    * ``table_bases`` -- the base word of a register-relative word read
      (``[bx+disp]``), i.e. a pointer-sized table access;
    * ``sources`` -- ``{file_offset: (insn_address, 'word'|'table')}``.

    SS-relative operands (``[bp+..]`` stack frames) are ignored: their
    displacement is a stack offset, not a data offset.
    """
    from capstone import CS_OP_MEM

    word_reads = set()
    non_pointer_reads = set()
    table_bases = set()
    sources = {}
    reloc_file_offsets = _relocation_file_offsets(segments)

    for insn in instructions:
        for idx, op in enumerate(insn.operands):
            if op.type != CS_OP_MEM:
                continue
            is_read = idx > 0 or insn.mnemonic in _READS_DEST
            if not is_read:
                continue
            file_off = _absolute_operand_file_offset(
                insn, op, segments, segment_flow, reloc_file_offsets)
            if file_off is None:
                continue
            if op.mem.base or op.mem.index:
                if op.size == 2 and file_off % 2 == 0:
                    table_bases.add(file_off)
                    sources.setdefault(file_off, (insn.address, 'table'))
                continue
            if op.size == 2:
                word_reads.add(file_off)
                sources.setdefault(file_off, (insn.address, 'word'))
            else:
                non_pointer_reads.add(file_off)
    return word_reads, non_pointer_reads, table_bases, sources


def _consumed_use_space(insn, parent, flow):
    """Space proven by *insn* using register *parent* as an address, or None.

    A **sole** memory base (``[reg]``/``[reg+disp]``, no index) makes the loaded
    value a pointer; ``[bx+reg]`` (the register used as an *index* beside
    another base) does not -- a number is commonly used as an index.  String
    ops use their implicit offset register, and an indirect ``call``/``jmp``
    through the register reads a code pointer.
    """
    from capstone import CS_OP_MEM, CS_OP_REG
    from lib.segdataflow import (
        _R8_PARENT, _STRING_USES, _base_mnemonic, DATA, LOAD,
    )

    for op in insn.operands:
        if op.type != CS_OP_MEM or not op.mem.base or op.mem.index:
            continue
        base = _R8_PARENT.get(insn.reg_name(op.mem.base).lower(), '')
        if base != parent:
            continue
        _, space = flow.effective_segment(insn, op)
        if space == DATA:
            return 'ds'
        if space == LOAD:
            return 'cs'
        return None
    use = _STRING_USES.get(_base_mnemonic(insn))
    if use and use[0] == parent:
        space = flow.space_of(insn.address, use[1])
        if space == DATA:
            return 'ds'
        if space == LOAD:
            return 'cs'
        return None
    if insn.mnemonic in ('call', 'jmp', 'lcall', 'ljmp') and any(
            op.type == CS_OP_REG
            and _R8_PARENT.get(insn.reg_name(op.reg).lower(), '') == parent
            for op in insn.operands):
        return 'cs'
    return None


def _consumed_reads(instructions, segments, segment_flow, limit=64):
    """Words loaded into a register and then *used as an address*.

    Returns ``{file_offset: space}`` with *space* in ``{'ds', 'cs'}`` -- the
    space proven by the consuming use.  This is the plan's E1 "proven
    consumer" (Section 18): the semantic proof that the stored word is a
    pointer, and the only reliable way to reach values whose *target* lies
    outside the statically bounded data bytes (the Aztec heap-base pointers
    ``vinstall 0x5fb4`` / ``ds 0x10dd0``).

    The scan is a bounded forward walk from the load, stopping when the
    register is redefined or control leaves the straight-line block.  It
    deliberately does **not** cross a call: the callee's use of a caller
    register is not visible here, so an unproven word stays unproven.

    A near ``jmp``/``call [disp]`` is its own consumer: it loads IP from the
    word, so the word is a ``cs`` pointer.
    """
    from capstone import CS_OP_MEM, CS_OP_REG
    from lib.segdataflow import (
        _R8_PARENT, _SEG_REGS, _TERMINATORS, _writes_register,
    )

    insns = sorted(instructions, key=lambda i: i.address)
    reloc_file_offsets = _relocation_file_offsets(segments)
    consumed = {}
    for k, insn in enumerate(insns):
        if insn.mnemonic in ('jmp', 'call') and len(insn.operands) == 1:
            # ``jmp [vector]``: the CPU loads IP from the word, so the word is
            # a code pointer by its use (Aztec's ``_write`` vector).
            op = insn.operands[0]
            if (op.type == CS_OP_MEM and not op.mem.base and not op.mem.index
                    and op.size == 2):
                file_off = _absolute_operand_file_offset(
                    insn, op, segments, segment_flow, reloc_file_offsets)
                if file_off is not None:
                    consumed[file_off] = 'cs'
            continue
        if insn.mnemonic != 'mov' or len(insn.operands) != 2:
            continue
        dest, src = insn.operands
        if dest.type != CS_OP_REG or src.type != CS_OP_MEM:
            continue
        if src.mem.base or src.mem.index or src.size != 2:
            continue
        parent = _R8_PARENT.get(insn.reg_name(dest.reg).lower(), '')
        if parent in _SEG_REGS:
            continue
        file_off = _absolute_operand_file_offset(
            insn, src, segments, segment_flow, reloc_file_offsets)
        if file_off is None:
            continue
        for j in range(k + 1, min(k + limit, len(insns))):
            nxt = insns[j]
            if _writes_register(nxt, parent):
                break
            space = _consumed_use_space(nxt, parent, segment_flow)
            if space is not None:
                consumed[file_off] = space
                break
            if (nxt.mnemonic in _TERMINATORS
                    or nxt.mnemonic in ('jmp', 'ljmp', 'call', 'lcall')):
                break
    return consumed


def _table_read_offsets(data, bases, segments):
    """Extend a pointer-sized table base over its run of in-space words.

    A ``[bx+disp]``/``[si+disp]`` word read proves the *whole* word array at
    ``disp`` is read at pointer size; the array is exactly the maximal run of
    consecutive in-space words from the base (the value-based bound the region
    carver also uses).
    """
    offsets = set()
    for base in bases:
        offset = base
        previous = None
        while offset + 2 <= len(data):
            value = _read16(data, offset)
            if not _in_initialised_data(value, segments):
                break
            if previous is not None and value <= previous:
                break
            offsets.add(offset)
            previous = value
            offset += 2
    return offsets


def _array_run_offsets(data, segments, emit_class, known_addrs, min_len=3):
    """Runs of >=3 consecutive words whose values are known addresses.

    Mirrors :func:`lib.compare.detect._detect_jump_table`: each value must be
    a *known address* (a label / code target), not merely in range -- that is
    what separates a real pointer array from a table of round numbers.
    """
    run_offsets = set()
    run_targets = set()

    def close(run):
        if len(run) >= min_len:
            run_offsets.update(off for off, _ in run)
            run_targets.update(tgt for _, tgt in run)

    for start, end in _non_code_spans(emit_class):
        offset = start + (start & 1)
        run = []
        while offset + 2 <= end:
            value = _read16(data, offset)
            target = _target_offset('ds', value, segments)
            if target is None:
                target = _target_offset('cs', value, segments)
            if value and target is not None and target in known_addrs:
                run.append((offset, target))
            else:
                close(run)
                run = []
            offset += 2
        close(run)
    return run_offsets, run_targets


def score_candidates(data, segments, emit_class, *, instructions=(),
                     segment_flow=None, known_addrs=(), regions=(),
                     reloc_targets=None, data_pointers=(), not_pointers=()):
    """Score every data-pointer candidate.

    Returns a report dict (see the module docstring).  ``data_pointers`` /
    ``not_pointers`` are the sidecar corpus entries (``{'offset': int, ...}``)
    used to calibrate and to pin the negative direction.
    """
    kind = getattr(segments, 'kind', None)
    if kind == 'driver':
        return _score_driver(data, segments, emit_class, instructions,
                             segment_flow, data_pointers, not_pointers)
    if segments is None or kind != 'mz':
        # Scope is the MZ images and the raw drivers; overlays are D7.
        return _empty_report()

    known_addrs = set(known_addrs)
    reloc_targets = set(reloc_targets or ())
    corpus_pos = {e['offset']: e for e in (data_pointers or ())}
    corpus_neg = {e['offset']: e for e in (not_pointers or ())}

    word_reads = set()
    non_pointer_reads = set()
    table_bases = set()
    access_sources = {}
    consumed = {}
    if segment_flow is not None and instructions:
        (word_reads, non_pointer_reads, table_bases,
         access_sources) = _access_evidence(instructions, segments, segment_flow)
        consumed = _consumed_reads(instructions, segments, segment_flow)
    table_reads = _table_read_offsets(data, table_bases, segments)
    pointer_reads = word_reads | table_reads

    run_offsets, run_targets = _array_run_offsets(
        data, segments, emit_class, known_addrs)

    candidates = []
    for offset, value, spaces in collect_candidates(data, segments, emit_class):
        if offset in consumed:
            # The consuming use *proves* the space, so the value may name an
            # address outside the statically bounded data bytes (heap base).
            spaces = spaces | {consumed[offset]}
        score = BASELINE
        anchors = []
        evidence = ['base', 'aligned']
        score += W_ALIGNED

        target = _target_offset('ds', value, segments) if 'ds' in spaces else None
        cs_target = (_target_offset('cs', value, segments)
                     if 'cs' in spaces else None)
        target_kind = kind_at(regions, target) if target is not None else None

        if offset in reloc_targets:
            score += W_RELOCATION
            anchors.append('relocation')
            evidence.append('relocation')
        if offset in pointer_reads:
            score += W_POINTER_ACCESS
            if offset in table_reads:
                anchors.append('pointer_access')
                evidence.append('table-read')
            else:
                evidence.append('word-read')
        if offset in consumed:
            score += W_CONSUMPTION
            anchors.append('consumption')
            evidence.append('consumed')
        if offset in run_offsets:
            score += W_ARRAY_RUN
            anchors.append('array_run')
            evidence.append('array-run')
        if target is not None and target in known_addrs:
            score += W_KNOWN_LABEL
            evidence.append('known-label')
        if target is not None and target in run_targets:
            score += W_RUN_TARGET
            evidence.append('run-target')
        if target_kind == 'resource':
            score += W_INERT_TARGET
            evidence.append('inert-target')
        if _trailing_zeros(value) >= ROUND_NUMBER_TRAILING_ZEROS:
            score += W_BITMASK
            evidence.append('round-number')

        region = region_at(regions, offset)
        if region is not None and region.kind == 'string':
            score += W_IN_STRING
            evidence.append('in-text')
        if offset in non_pointer_reads and offset not in pointer_reads:
            score += W_NON_POINTER_ACCESS
            evidence.append('non-pointer-read')

        refused = None
        refused_region = region_at(regions, target) if target is not None else None
        if (refused_region is not None
                and refused_region.kind in REFUSED_TARGET_KINDS
                and target != refused_region.start):
            refused = 'target-mid-' + refused_region.kind
        if value in FIXED_DS_SLOTS:
            refused = refused or 'fixed-ds-slot'
        if offset in corpus_neg:
            refused = refused or 'corpus-negative'

        if consumed.get(offset) == 'cs':
            space = 'cs'   # the consuming use is the proof of the space
        elif 'ds' in spaces:
            space = corpus_pos[offset]['space'] if offset in corpus_pos else 'ds'
        else:
            space = 'cs'

        candidates.append({
            'offset': offset,
            'value': value,
            'space': space,
            'target': target if space == 'ds' else cs_target,
            'score': score,
            'anchors': anchors,
            'evidence': evidence,
            'refused': refused,
            'source': access_sources.get(offset),
            'corpus': 'pointer' if offset in corpus_pos
            else 'not_pointer' if offset in corpus_neg else None,
        })

    acceptable = [c for c in candidates
                  if c['refused'] is None and c['score'] >= 0 and c['anchors']]
    _apply_overlap_penalty(acceptable)
    promoted = [c for c in acceptable if c['score'] >= 0]
    promoted_offsets = {c['offset'] for c in promoted}

    # The backlog is the *pointer-shaped* remainder: candidates that carried
    # some pointer evidence but did not clear the anchor/score bar.  Recording
    # every in-space number would drown the signal (Section 13).
    #
    # A candidate is only listed when the evidence is about an *access* (or a
    # relocation), not merely about the shape of its target.  In a 64 KB
    # real-mode image an address is a small number, so target-shape terms are
    # cheap to hit by accident; twice now a single weak term has put a
    # coincidental word in front of a reviewer (see `_STRONG_HINTS`).  Corpus
    # positives are always listed so a genuine miss stays visible.
    unproven = [c for c in candidates
                if c['refused'] is None and c['offset'] not in promoted_offsets
                and (_has_strong_hint(c) or c['corpus'] == 'pointer')]
    refused = [c for c in candidates if c['refused'] is not None]

    return {
        'candidates': candidates,
        'promoted': promoted,
        'unproven': unproven,
        'refused': refused,
        'precision': _precision(promoted, corpus_pos),
        'recall': _recall(promoted, corpus_pos),
        'counts': {
            'candidates': len(candidates),
            'promoted': len(promoted),
            'unproven': len(unproven),
            'refused': len(refused),
        },
    }


def _score_driver(data, segments, emit_class, instructions, segment_flow,
                  data_pointers, not_pointers):
    """Accept a raw driver's stored CS pointers that a consumer proves.

    A driver is hand-written assembly: its variables sit at any byte offset,
    so the MZ scorer's aligned-word candidate sweep and its shape terms do not
    apply.  The only candidates are words a consuming use proves to be
    addresses (:func:`_consumed_reads`, ``DS = CS`` here); the corpus adds the
    reviewed ones whose consumer is out of the scan's reach (across a call).
    """
    report = _empty_report()
    if segment_flow is None or not instructions:
        return report
    corpus_pos = {e['offset']: e for e in (data_pointers or ())}
    corpus_neg = {e['offset']: e for e in (not_pointers or ())}
    consumed = _consumed_reads(instructions, segments, segment_flow)
    candidates = []
    for offset in sorted(consumed):
        if consumed[offset] != 'cs' or offset + 2 > len(data):
            continue
        if emit_class[offset] == IS_CODE or emit_class[offset + 1] == IS_CODE:
            continue
        value = _read16(data, offset)
        target = _target_offset('cs', value, segments)
        if not value or target is None or not 0 <= target < len(data):
            continue
        candidates.append({
            'offset': offset, 'value': value, 'space': 'cs', 'target': target,
            'score': W_CONSUMPTION, 'anchors': ['consumption'],
            'evidence': ['consumed'],
            'refused': 'corpus-negative' if offset in corpus_neg else None,
            'source': None,
            'corpus': 'pointer' if offset in corpus_pos
            else 'not_pointer' if offset in corpus_neg else None,
        })
    promoted = [c for c in candidates if c['refused'] is None]
    refused = [c for c in candidates if c['refused'] is not None]
    report.update({
        'candidates': candidates, 'promoted': promoted, 'refused': refused,
        'precision': _precision(promoted, corpus_pos),
        'recall': _recall(promoted, corpus_pos),
        'counts': {'candidates': len(candidates), 'promoted': len(promoted),
                   'unproven': 0, 'refused': len(refused)},
    })
    return report


#: Evidence that the word is actually *read* as an address (ddisasm's
#: data-access / relocation class: `preferred_data_access`, `relocation`,
#: `address_array`).  One of these is enough to make a candidate backlog
#: material -- it is a fact about the code, not a guess about a number.
_STRONG_HINTS = frozenset({
    'relocation', 'table-read', 'word-read', 'array-run', 'consumed',
})

#: Evidence about the *shape of the target* only.  It still scores -- a pointer
#: that lands on a known label or is pointed to by a run is a better pointer --
#: but it is not reported on its own.  ddisasm keeps its equivalent
#: (`point-to-boundary-sym`, +4) because it can prove a *section* boundary and
#: a structural reason; in a 16-bit image those collapse into "the number is in
#: range", which is nearly free (see the note above `ROUND_NUMBER...`).
_WEAK_HINTS = frozenset({'known-label', 'run-target'})

#: Every label that marks a candidate as pointer-shaped (reported for review).
_POINTER_HINTS = _STRONG_HINTS | _WEAK_HINTS


def _has_strong_hint(candidate):
    """True when the evidence is an *access* claim, not a target-shape guess."""
    if candidate['anchors']:
        return True
    return bool(_STRONG_HINTS.intersection(candidate['evidence']))


def _apply_overlap_penalty(promoted):
    """Apply the -2 term when two candidates point at the same target word.

    ddisasm's ``discarded_data_object``: overlapping data objects resolve by
    score, keeping the higher.
    """
    by_target = collections.defaultdict(list)
    for candidate in promoted:
        if candidate['target'] is not None:
            by_target[candidate['target']].append(candidate)
    for group in by_target.values():
        if len(group) < 2:
            continue
        group.sort(key=lambda c: (-c['score'], c['offset']))
        for candidate in group[1:]:
            candidate['score'] += W_OVERLAP
            candidate['evidence'].append('overlap')


def _precision(promoted, corpus_pos):
    if not promoted:
        return None
    hits = sum(1 for c in promoted if c['offset'] in corpus_pos)
    return hits / len(promoted)


def _recall(promoted, corpus_pos):
    if not corpus_pos:
        return None
    hits = sum(1 for c in promoted if c['offset'] in corpus_pos)
    return hits / len(corpus_pos)


def _empty_report():
    return {
        'candidates': [], 'promoted': [], 'unproven': [], 'refused': [],
        'precision': None, 'recall': None,
        'counts': {'candidates': 0, 'promoted': 0, 'unproven': 0, 'refused': 0},
    }


def summarize(report):
    """Compact ``{counts, precision, recall}`` for the run report."""
    counts = dict(report.get('counts', {}))
    counts['precision'] = report.get('precision')
    counts['recall'] = report.get('recall')
    return counts
