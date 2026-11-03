"""A binary's uninitialized globals: the ``globals`` fragment and its companion.

``ln`` lays out a binary's BSS as every module's own BSS (its ``static``s and
library locals) first, then the commons -- ``int x;``, which ``cc`` writes as
``global x_:word,2`` -- in the order it first meets them.  The listing's BSS
block is one ``absolute`` run of labels and ``resb``; the commons part of it
becomes the fragment ``<binary>/data/globals.asm`` (:func:`split`), and its
companion ``globals.c`` (or ``.s``), linked first, declares them for ``make
link``.  The build checks the companion against the fragment (:func:`check`):
the same names, sizes and order, so a wrong or missing global fails here
instead of in the link.

A module's own BSS (its sidecar ``emits`` span before the commons) becomes
``<module>.bss.asm`` beside its code, its slots labelled by name so it is the
same file in every binary that links the module; a span after the commons (ttyio's
``_TTrem``) stays in the listing.  Neither is linked: the build checks the
owner's object against its slots.
"""

import re

STEM = 'globals'
_SLOT = re.compile(r'^(__zo?bss_(\w+)):')
_RESB = re.compile(r'^\s+resb\s+(0x[0-9a-fA-F]+|\d+)\s*$')
_NAME = re.compile(r'^(\w+)\s+equ\b[^\n]*?\b(__zo?bss_\w+)\b', re.M)
_BLOCK = 'absolute __zimage_end'
#: Names ``ln`` itself defines at the ends of the block.
_LINKER_NAMES = frozenset({'_Uorg', '_Uend'})
#: What a companion may call a stretch the listing has no label for.
_FILLER = re.compile(r'^o?bss_([0-9a-f]{4})_$')


def module(binary):
    """The ``globals`` module of *binary*, without an extension."""
    return f'{binary}/data/{STEM}'


def _names(listing):
    names = {}
    for name, label in _NAME.findall(listing):
        if name not in _LINKER_NAMES:
            names.setdefault(label, name)
    return names


def _block(lines):
    """``[(line index, offset, label)]`` of each slot of the BSS block in
    *lines*, ending with its ``..._end`` label; empty without one."""
    try:
        start = lines.index(_BLOCK)
    except ValueError:
        return []
    out, offset, seen = [], 0, set()
    for i in range(start + 1, len(lines)):
        slot = _SLOT.match(lines[i])
        if slot:
            if offset not in seen:
                seen.add(offset)
                out.append((i, offset, slot.group(1)))
            if slot.group(2) == 'end':
                return out
            continue
        size = _RESB.match(lines[i])
        if size:
            offset += int(size.group(1), 0)
    return []


def block_start(listing):
    """The DS address of the BSS block's first slot, or ``None`` for a
    listing without one: where the image ends and BSS begins."""
    block = _block(listing.split('\n'))
    for _, offset, label in block:
        at = label.rsplit('_', 1)[1]
        if at != 'end':
            return int(at, 16) - offset
    return None


def split(listing, binary, start=None, end=None, owned=None):
    """``(listing, {path: fragment}, slots)``: *listing* with the commons of
    its BSS block cut into the ``globals`` fragment, the fragment's text, and
    the ``[(name, size, address)]`` of the fragment's path and of each owned
    span ``(module, n)``; ``None`` for a listing without a BSS block.

    The commons are the sidecar's ``globals`` range and become the
    ``globals`` fragment: from the slot at *start* up to the one at *end*
    (addresses as the labels carry them, ``"0e0e"``), by default the whole
    block.  *owned* ``{module: [(start, end), ...]}`` (integers, the
    sidecar's ``emits`` past the image) are the spans a module reserves itself
    -- its ``static``s, a library's locals.  A span before the commons becomes
    the fragment ``<module>.bss``; one after them stays in the listing.
    Raises :class:`ValueError` for an address that is no slot or spans that
    overlap.
    """
    lines = listing.split('\n')
    block = _block(lines)
    if not block:
        return None
    names = _names(listing)
    where = [label.rsplit('_', 1)[1] for _, _, label in block]
    base = next((int(at, 16) - offset for (_, offset, _), at
                 in zip(block, where) if at != 'end'), 0)
    addrs = [base + offset for _, offset, _ in block]
    for key, value in (('start', start), ('end', end)):
        if value is not None and value.lower() not in where:
            raise ValueError(f'globals.{key} {value}: no BSS object of '
                             f'{binary} starts there')
    lo = where.index(start.lower()) if start is not None else 0
    hi = where.index(end.lower()) if end is not None else len(block) - 1
    if lo >= hi:
        raise ValueError(f'globals: {start} is not before {end}')
    cuts = [(lo, hi, module(binary))]
    for owner, spans in (owned or {}).items():
        for n, (first, last) in enumerate(spans):
            ends = []
            for value in (first, last):
                if value not in addrs:
                    raise ValueError(f'{owner}.bss {value:04x}: no BSS object '
                                     f'of {binary} starts there')
                ends.append(addrs.index(value))
            cuts.append((*ends, (owner, n)))
    cuts.sort()
    for (_, a_hi, a), (b_lo, _, b) in zip(cuts, cuts[1:]):
        if b_lo < a_hi:
            raise ValueError(f'BSS of {_owner(b)} overlaps {_owner(a)}')
    rel = module(binary)
    text, fragments, slots = [], {}, {}
    for c_lo, c_hi, key in cuts:
        slots[f'{key}.asm' if key == rel else key] = [
            (names.get(label) or label[3:], after - offset, place)
            for (_, offset, label), (_, after, _), place
            in zip(block[c_lo:c_hi], block[c_lo + 1:c_hi + 1],
                   where[c_lo:c_hi])]
    files = [(c_lo, c_hi, rel) for c_lo, c_hi, key in cuts if key == rel]
    filed = set()
    for c_lo, c_hi, key in cuts:
        if key != rel and c_hi <= lo:
            if key[0] in filed:
                raise ValueError(f'{key[0]}.bss: more than one span before '
                                 'the commons')
            filed.add(key[0])
            files.append((c_lo, c_hi, f'{key[0]}.bss'))
    text, renamed = lines, {}
    for c_lo, c_hi, path in sorted(files, reverse=True):
        first, last = block[c_lo][0], block[c_hi][0]
        body = []
        for line in lines[first:last]:
            slot = _SLOT.match(line)
            label = slot and slot.group(1)
            if label not in names:
                body.append(line)
            elif path == rel:
                body.append(f'{line}  ; {names[label]}')
            else:
                # Named by its name, not its address, so the same module's
                # BSS is the same file in every binary.
                if label not in renamed:
                    renamed[label] = f'__z{names[label]}'
                    body.append(f'{renamed[label]}:')
        fragments[f'{path}.asm'] = '\n'.join(body) + '\n'
        text = [*text[:first], f'%include "{path}.asm"', *text[last:]]
    text = '\n'.join(text)
    if renamed:
        text = re.sub(r'\b(?:%s)\b' % '|'.join(renamed),
                      lambda m: renamed[m.group(0)], text)
    return text, fragments, slots


def _owner(key):
    return key[0] if isinstance(key, tuple) else key


def check(commons, slots):
    """The errors of a companion whose object declares *commons* (``(name,
    size)`` in ``ln``'s order) against the fragment's *slots*.

    Each slot must be a common of its name (``floor_items`` ->
    ``floor_items_``) at its place.  A companion may split a slot with a
    filler named after its address (``bss_831c``), since nothing names
    those bytes.
    """
    errors, at = [], 0
    starts, base = {}, int(slots[0][2], 16) if slots else 0
    offset = 0
    for name, size, where in slots:
        starts[offset] = (name, where)
        offset += size
    total = offset
    for name, size in commons:
        want = starts.get(at)
        if want is not None and name != f'{want[0]}_':
            errors.append(f'{name} at 0x{want[1]}: the listing has {want[0]} '
                          'there')
        elif want is None:
            filler = _FILLER.match(name)
            if not filler or int(filler.group(1), 16) != base + at:
                errors.append(f'{name} at 0x{base + at:04x}: the listing has no '
                              'object there; a filler is bss_XXXX at its address')
        at += size
        if len(errors) >= 5:
            break
    if not errors and at != total:
        errors.append(f'declares {at} bytes, the listing has {total}')
    missing = [name for off, (name, _) in sorted(starts.items()) if off >= at]
    if not errors and missing:
        errors.append(f'missing {", ".join(missing[:5])}')
    return errors
