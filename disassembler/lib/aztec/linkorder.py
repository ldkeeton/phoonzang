"""A binary's link order, from the listing and the sidecar's ``emits``.

A listing has one fragment per run of image bytes, but ``ln`` lays out data in
module order, and a linked module emits its own string literals and initialized
globals.  So a fragment for bytes a source already emits must not be linked, and
a data table only has to come ahead of the first module whose data follows it.

Which module emits which bytes is a fact no listing shows, so the sidecar holds
it (``function_names`` ``emits``, :func:`owners`).  The worker that holds the
image records the fragments' places (:func:`record`); :func:`arrange` applies
both to the listing once the build knows its final paths.  The compiled
sources are recorded too, but only :func:`check` reads them, to catch a wrong
``emits``.
"""

import os
import re

from lib.segments import _OVR_HEADER_SIZE
from .dataowners import _has_checked_bytes, _matches

#: A DS fragment's labels carry the ``__z`` prefix; a code fragment's do not.
_DS_LABEL = re.compile(r'^__z(\w+):', re.M)
_DSEG_NAME = re.compile(r'^dseg_([0-9a-f]+)$')
_DATA_FRAGMENT = re.compile(r'(?:^|/)data/(\w+)\.asm$')


def is_data_module(module):
    """True for a module in a ``data`` folder."""
    return '/data/' in f'/{module}'


def _fragment_start(text, names):
    found = _DS_LABEL.search(text)
    if not found:
        return None
    name = found.group(1)
    if name in names:
        return names[name]
    number = _DSEG_NAME.match(name)
    return int(number.group(1), 16) if number else None


def record(segments, image, sources, split_sources):
    """What :func:`arrange` needs from one binary, as JSON; ``None`` for a
    binary without its own initialized data segment."""
    if segments is None:
        return None
    if segments.kind == 'overlay':
        # An overlay's data follows its code in the file and loads at DS
        # ``o_dorg``; the origin is where DS 0 would be, so a DS offset
        # indexes the slice as it does in a program's.
        overlay = segments.overlay
        if not overlay or not overlay.get('o_dsize'):
            return None
        data_at = _OVR_HEADER_SIZE + overlay['o_csize']
        origin = data_at - overlay['o_dorg']
        end = data_at + overlay['o_dsize']
        if end > len(image):
            return None
    else:
        origin = getattr(segments, 'data_origin', None)
        if origin is None:
            return None
        boundary = getattr(segments, 'bss_boundary', None)
        end = len(image) if boundary is None else origin + boundary
    names = {str(name): offset for offset, name
             in (getattr(segments, 'data_names', None) or {}).items()
             if segments.data_space(offset) != 'bss'}
    starts = {}
    for rel, text in split_sources.items():
        fragment = _DATA_FRAGMENT.search(rel)
        if not fragment:
            continue
        start = _fragment_start(text, names)
        if start is not None:
            starts[fragment.group(1)] = start
    return {
        'origin': origin,
        # A small overlay has less file than DS ahead of its data: zeros
        # stand in for what the file does not have.
        'dseg': (bytes(max(0, -origin)) + bytes(image[max(0, origin):end])).hex(),
        'starts': starts,
        'sources': {
            os.path.splitext(source['path'])[0]: {
                'data': bytes(source['data']).hex(),
                'relocations': [list(r) for r in source.get('relocations') or ()],
            } for source in sources},
    }


def source_spans(listed, sources, dseg, starts=None):
    """``{module: (start, end)}`` of the DS bytes each listed module emits.

    Modules emit in link order, so each is at the first word-aligned match
    after the one before it.  That also places data with nothing to compare, such as a table
    of relocations or all zeros, which could otherwise be anywhere.  A data
    source's place is known (*starts*), wherever it is listed, so no other
    module can be there, and a module linked after it emits after it.
    """
    starts = starts or {}
    taken = [(at, at + len(bytes.fromhex(sources[module]['data'])))
             for module, at in starts.items() if module in sources]
    spans, cursor = {}, None
    for module in listed:
        source = sources.get(module)
        if source is None:
            continue
        if is_data_module(module):
            if module in starts:
                end = starts[module] + len(bytes.fromhex(source['data']))
                cursor = max(cursor or 0, end)
            continue
        data = bytes.fromhex(source['data'])
        if not data:
            continue
        one = {'data': data, 'relocations': source['relocations']}
        if cursor is None and not _has_checked_bytes(one):
            continue
        # ln starts each module's data on a word.
        for base in range(-(-(cursor or 0) // 2) * 2,
                          len(dseg) - len(data) + 1, 2):
            if (_matches(one, dseg, base) and not any(
                    lo < base + len(data) and base < hi for lo, hi in taken)):
                spans[module] = (base, base + len(data))
                cursor = base + len(data)
                break
    return spans


def _starts(listed, info):
    """``{listed data fragment: its DS start}``."""
    return {m: info['starts'][_stem(m)] for m in listed
            if is_data_module(m) and _stem(m) in info['starts']}


def _stem(module):
    return module.rsplit('/', 1)[-1]


#: A listing line that includes a module, and the file offset it starts at.
_INCLUDE_AT = re.compile(r'^\s*%include\s+"([^"]+)\.asm"\s*;\s*0x([0-9a-f]+)', re.M)


def listed_starts(listing, info):
    """*info* with the DS start of every data fragment the *listing*
    includes, from its ``%include`` comment, for a fragment that opens with
    no label to place it (``aztec_fexecv``'s data).  Data in the code
    segment, before the DS, has no DS start."""
    if not info or 'origin' not in info:
        return info
    found = {_stem(module): int(offset, 16) - info['origin']
             for module, offset in _INCLUDE_AT.findall(listing)
             if is_data_module(module) and int(offset, 16) >= info['origin']}
    return {**info, 'starts': {**found, **info['starts']}}


def owners(listing, emitted):
    """``{module: (DS start, DS end)}`` of what each module's source emits.

    *emitted* is the sidecar's ``emits`` ranges by the file offset of the
    module's start (:func:`lib.sidecar.binary.emitted_ranges`); the *listing*
    gives the module that starts there.  An offset no module starts at is an
    error: the entry would apply to nothing."""
    at = {int(offset, 16): module for module, offset in _INCLUDE_AT.findall(listing)}
    missing = sorted(offset for offset in emitted if offset not in at)
    if missing:
        raise ValueError('function_names ' + ', '.join(f'{o:04x}' for o in missing)
                         + ': emits, but no module starts there')
    return {at[offset]: span for offset, span in emitted.items()}


def arrange(listed, info, emitted=None):
    """The link order of *listed* for *info* from :func:`record`, given
    *emitted* from :func:`owners`.

    A data fragment that starts inside a module's ``emits`` range is that
    module's own data, so it is not linked.  Every other data fragment goes
    ahead of the first module whose data follows it.
    """
    if not info:
        return list(listed)
    spans = {m: span for m, span in (emitted or {}).items() if m in listed}
    starts = _starts(listed, info)
    dropped = {m for m, at in starts.items()
                if any(lo <= at < hi for lo, hi in spans.values())}
    pending = sorted((m for m in starts if m not in dropped), key=starts.get)
    placed = set(pending)
    out = []
    for module in listed:
        if module in dropped or module in placed:
            continue
        if module in spans:
            while pending and starts[pending[0]] < spans[module][0]:
                out.append(pending.pop(0))
        out.append(module)
    if spans and pending:
        out.extend(pending)
    elif pending:
        return [m for m in listed if m not in dropped]
    return out


def check(listed, info, emitted):
    """The disagreements between the sidecar's ``emits`` (*emitted*) and what
    the compiled sources emit, one line each.  Verification only: the link
    order never reads a source."""
    if not info or not info.get('sources'):
        return []
    spans = source_spans(arrange(listed, info, emitted), info['sources'],
                         bytes.fromhex(info['dseg']), _starts(listed, info))
    lines = []
    for module in sorted(set(spans) | {m for m in emitted if m in listed}):
        got, want = spans.get(module), emitted.get(module)
        if module not in spans and module not in info['sources']:
            continue
        if got != want:
            show = lambda s: 'nothing' if s is None else f'0x{s[0]:04x}-0x{s[1]:04x}'
            lines.append(f'{module}: its source emits DS {show(got)}, the '
                         f'sidecar\'s emits says {show(want)}')
    return lines
