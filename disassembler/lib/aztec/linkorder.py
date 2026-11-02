"""A binary's link order, derived from what its sources emit.

A listing has one fragment per run of image bytes, but ``ln`` lays out data in
module order, and a linked module emits its own string literals and initialized
globals.  So a fragment for bytes a source already emits must not be linked, and
a data table only has to come ahead of the first module whose data follows it.

The worker that holds the image records what this needs (:func:`record`);
:func:`arrange` applies it to the listing once the build knows its final paths.
"""

import os
import re

from .dataowners import _has_checked_bytes, _matches

#: A DS fragment's labels carry the ``__z`` prefix; a code fragment's do not.
_DS_LABEL = re.compile(r'^__z(\w+):', re.M)
_DSEG_NAME = re.compile(r'^dseg_([0-9a-f]+)$')
#: ``ln`` itself writes this word at DS:0; a listing shows it as an unlabelled
#: fragment.
_GUARD_WORD = re.compile(r'\A(?:;[^\n]*\n|\s)*db 0x00, 0x00\s*\Z')
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
    if segments is None or segments.kind == 'overlay':
        return None
    origin = getattr(segments, 'data_origin', None)
    if origin is None:
        return None
    boundary = getattr(segments, 'bss_boundary', None)
    end = len(image) if boundary is None else origin + boundary
    names = {str(name): offset for offset, name
             in (getattr(segments, 'data_names', None) or {}).items()
             if segments.data_space(offset) != 'bss'}
    starts, guards = {}, []
    for rel, text in split_sources.items():
        fragment = _DATA_FRAGMENT.search(rel)
        if not fragment:
            continue
        if _GUARD_WORD.match(text):
            guards.append(fragment.group(1))
            continue
        start = _fragment_start(text, names)
        if start is not None:
            starts[fragment.group(1)] = start
    return {
        'dseg': bytes(image[origin:end]).hex(),
        'starts': starts,
        'guards': sorted(guards),
        'sources': {
            os.path.splitext(source['path'])[0]: {
                'data': bytes(source['data']).hex(),
                'relocations': [list(r) for r in source.get('relocations') or ()],
            } for source in sources},
    }


def source_spans(listed, sources, dseg, starts=None):
    """``{module: (start, end)}`` of the DS bytes each listed module emits.

    Modules emit in link order, so each is at the first match after the one
    before it.  That also places data with nothing to compare, such as a table
    of relocations or all zeros, which could otherwise be anywhere.  A data
    source's place is known (*starts*), wherever it is listed, so no other
    module can be there.
    """
    taken = [(at, at + len(bytes.fromhex(sources[module]['data'])))
             for module, at in (starts or {}).items() if module in sources]
    spans, cursor = {}, None
    for module in listed:
        source = sources.get(module)
        if source is None or is_data_module(module):
            continue
        data = bytes.fromhex(source['data'])
        if not data:
            continue
        one = {'data': data, 'relocations': source['relocations']}
        if cursor is None and not _has_checked_bytes(one):
            continue
        for base in range(cursor or 0, len(dseg) - len(data) + 1):
            if (_matches(one, dseg, base) and not any(
                    lo < base + len(data) and base < hi for lo, hi in taken)):
                spans[module] = (base, base + len(data))
                cursor = base + len(data)
                break
    return spans


def arrange(listed, info, extras=()):
    """The link order of *listed* for *info* from :func:`record`.

    *extras* are data sources with no fragment: they have no bytes in the image,
    so they go ahead of the code.
    """
    def stem(module):
        return module.rsplit('/', 1)[-1]

    fragments = [m for m in listed if is_data_module(m)]
    if not info:
        return [*extras, *listed]

    dseg = bytes.fromhex(info['dseg'])
    starts = {m: info['starts'][stem(m)] for m in fragments
              if stem(m) in info['starts']}
    spans = source_spans(listed, info['sources'], dseg, starts)
    dropped = {m for m in fragments if stem(m) in info['guards']}
    dropped |= {m for m, at in starts.items()
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
    # Tables that lead the data segment come first, then the extras.
    lead = sum(1 for m in out if m in placed and not any(
        n not in placed for n in out[:out.index(m)]))
    if spans and pending:
        out.extend(pending)
    elif pending:
        return [*extras, *(m for m in listed if m not in dropped)]
    return [*out[:lead], *extras, *out[lead:]]
