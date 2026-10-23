"""Source annotations from an Aztec assembler listing (``as -l``).

A listing pairs every emitted byte with the vendor source line that produced
it::

    0003  8b 5e 04                6  	mov	bx,fd
    000b  72 xx                   9  	jc	not_tty		;error, then not a tty
    001c                         16  not_tty:

That is exactly what the generated disassembly lacks: the author's local label
names and comments.  :func:`annotate` extracts both for one routine, keyed by
offset from the routine's start, and refuses (returns ``None``) unless the
listing's bytes reproduce the routine, so a wrong pairing can never annotate.
"""

import re

_LINE_RE = re.compile(
    r'^([0-9a-f]{4}) {2}((?:[0-9a-f]{2}|xx)(?: (?:[0-9a-f]{2}|xx))*)?'
    r' +(\d+)(\+?) ?(.*)$', re.I)
_SEGMENT_RE = re.compile(r'^\s*([A-Za-z_$@?][\w$@?]*)\s+(segment|ends)\b', re.I)
_LABEL_RE = re.compile(r'^([A-Za-z_@?][\w@?]*)(?::|\s+proc\b)', re.I)
_IDENT_RE = re.compile(r'[^A-Za-z0-9_]')

# Boilerplate that carries no information about the routine.
_NOISE = ('copyright', ':ts=')
_MAX_NOTE = 100


def _comment(text):
    """The ``;`` comment of a source line (empty when there is none)."""
    quote = None
    for i, ch in enumerate(text):
        if quote:
            if ch == quote:
                quote = None
        elif ch in '\'"':
            quote = ch
        elif ch == ';':
            return text[i + 1:].strip()
    return ''


def _is_code_segment(stack):
    return bool(stack) and 'code' in stack[-1].lower()


def parse(listing):
    """Return ``(items, labels)`` for the code segment of *listing*.

    ``items`` is a list of ``(offset, bytes_or_None_per_byte, comment)`` for
    every source line that emitted code (macro expansions are folded into the
    line that invoked them); ``labels`` maps offset to the labels defined there.
    """
    items = []
    labels = {}
    stack = []
    pending = []          # full-line comments waiting for the next instruction
    last_line = None
    for raw in listing.splitlines():
        m = _LINE_RE.match(raw)
        if not m:
            continue
        off = int(m.group(1), 16)
        data = m.group(2)
        lineno = int(m.group(3))
        expansion = bool(m.group(4))
        text = m.group(5)
        seg = _SEGMENT_RE.match(text)
        if seg and not expansion:
            if seg.group(2).lower() == 'segment':
                stack.append(seg.group(1))
            elif stack:
                stack.pop()
            continue
        if not _is_code_segment(stack):
            continue
        body = text.strip()
        if not data:
            if expansion:
                continue
            lab = _LABEL_RE.match(body)
            if lab:
                labels.setdefault(off, []).append(lab.group(1))
            elif body.startswith(';'):
                note = body[1:].strip()
                if note and not note.lower().startswith(_NOISE):
                    pending.append(note)
            continue
        cells = [None if b.lower() == 'xx' else int(b, 16)
                 for b in data.split()]
        if expansion and last_line == lineno and items:
            # Continuation of the same source line (macro expansion): extend it.
            o, prev, note = items[-1]
            items[-1] = (o, prev + cells, note)
            continue
        note = _comment(text)
        if pending:
            note = ' / '.join([*pending, *([note] if note else [])])
            pending = []
        items.append((off, cells, note))
        last_line = lineno
    return items, labels


def annotate(listing, func):
    """Local label names and comments for *func*, or ``None`` on a mismatch.

    Returns ``{'labels': {offset: name}, 'comments': {offset: text}}`` with
    offsets relative to the start of the routine (``data_labels`` may be
    negative: a module's own data precedes its first routine).
    """
    if not listing:
        return None
    items, labels = parse(listing)
    start = func.offset
    end = start + len(func.code)
    covered = bytearray(len(func.code))
    for fx in func.fixups:
        from .objread import fixup_width
        for k in range(fixup_width(fx.kind)):
            if fx.offset + k < len(covered):
                covered[fx.offset + k] = 1
    seen = 0
    comments = {}
    for off, cells, note in items:
        if not (start <= off < end):
            continue
        for k, b in enumerate(cells):
            rel = off - start + k
            if rel >= len(func.code):
                break
            seen += 1
            if b is not None and not covered[rel] and func.code[rel] != b:
                return None
        if note:
            comments[off - start] = (note if len(note) <= _MAX_NOTE
                                     else note[:_MAX_NOTE - 3] + '...')
    if seen < len(func.code) // 2:
        return None
    names = {}
    for off, found in labels.items():
        if start < off < end:
            names[off - start] = _IDENT_RE.sub('_', found[0])
    named_data = {off - start: _IDENT_RE.sub('_', name)
                  for off, name in data_labels(listing).items()}
    return {'labels': names, 'comments': comments, 'data_labels': named_data}


_DATA_LABEL_RE = re.compile(r'^([A-Za-z_@?][\w@?]*):?\s+(db|dw|dd)\b', re.I)


def data_labels(listing):
    """``{offset: name}`` of each label a code-segment data directive carries.

    ``exitcs dw 0`` and ``conv_routines dw ...`` name their own bytes, with no
    colon, so :func:`parse` does not see them.  Unlike a code label one may sit
    on the module's first byte.  The first name at an offset wins.
    """
    found = {}
    stack = []
    for raw in (listing or '').splitlines():
        m = _LINE_RE.match(raw)
        if not m or m.group(4):
            continue
        text = m.group(5)
        seg = _SEGMENT_RE.match(text)
        if seg:
            if seg.group(2).lower() == 'segment':
                stack.append(seg.group(1))
            elif stack:
                stack.pop()
            continue
        label = _DATA_LABEL_RE.match(text.strip())
        if label and _is_code_segment(stack):
            found.setdefault(int(m.group(1), 16), label.group(1))
    return found


_DATA_RE = re.compile(r'^(?:[A-Za-z_$@?][\w$@?]*\s+)?(db|dw|dd)\b', re.I)


def data_spans(listing):
    """``[(start, end)]`` code-segment offsets that data directives emitted.

    A routine's own tables (a palette after its ``ret``) are bytes, not
    instructions, so the build renders them as ``db``.  A long ``db`` wraps
    onto unnumbered listing lines; it runs to the next listed offset.
    Consecutive directives form one span unless a label starts the next.
    """
    spans = []
    stack = []
    open_at = None          # (offset, labelled) of the directive being read
    labelled = False        # a label line precedes the next directive
    for raw in (listing or '').splitlines():
        m = _LINE_RE.match(raw)
        if not m:
            continue
        off = int(m.group(1), 16)
        text = m.group(5)
        body = text.strip()
        if open_at is not None:
            at, named = open_at
            if off > at:
                if spans and spans[-1][1] == at and not named:
                    spans[-1] = (spans[-1][0], off)
                else:
                    spans.append((at, off))
            open_at = None
        seg = _SEGMENT_RE.match(text)
        if seg and not m.group(4):
            if seg.group(2).lower() == 'segment':
                stack.append(seg.group(1))
            elif stack:
                stack.pop()
            continue
        if not m.group(2):
            labelled = labelled or bool(_LABEL_RE.match(body))
            continue
        directive = _DATA_RE.match(body)
        if directive and _is_code_segment(stack):
            # ``retip dw 0`` names its own bytes.
            own = not body.lower().startswith(directive.group(1).lower())
            open_at = (off, labelled or own)
        labelled = False
    return spans
