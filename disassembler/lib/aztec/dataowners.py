"""Which source module owns each named data object.

A generated ``data/*.asm`` fragment is the image side: it may carry a label
that a source also defines.  It is not a second definition.  The source side
is a compiled C or assembly module, and it owns every named data object whose
bytes it supplies.

The check is by address, not by which generated file currently holds the
bytes.  That lets the data splitter move a name into a different fragment (or
split more image bytes into named objects) without changing ownership.
"""

import collections

from .compile import aztec_name, symbol_key


class DataOwnerError(RuntimeError):
    """A source's data cannot be matched, or two sources own one object."""


Root = collections.namedtuple('Root', 'offset name keys')


def _keys(name):
    """Comparable spellings of a C/asm data name.

    Aztec adds one trailing ``_``; the OMF converter may add a leading one.
    ``_Eol_``, ``__Eol_`` and ``_Eol`` all name the same object for this
    comparison.  The variants are deliberately loose: this is only used to
    associate a source fixup with a data name, never to define one.
    """
    if not name:
        return set()
    text = str(name)
    # Aztec adds the trailing underscore, the OMF converter may add a leading
    # one, and a vendor source may spell either.  The canonical key drops both
    # so ``__ioflg``, ``_ioflg_`` and ``_ioflg`` are one data name here.
    return {symbol_key(value)
            for value in (text.strip('_'), aztec_name(text).strip('_'))
            if value}


def _source_keys(source):
    defined = set()
    for name in source.get('symbols') or ():
        defined |= _keys(name)
    external = set()
    for name in source.get('externals') or ():
        external |= _keys(name)
    return defined - external


def _mask(source, size):
    mask = bytearray(size)
    for offset, width in source.get('relocations') or ():
        for index in range(offset, min(offset + width, size)):
            mask[index] = 1
    return mask


def _matches(source, image, file_base):
    """True when the source's data equals the image at *file_base*.

    Relocation sites are placeholders in the compiled object; the linker
    fills them with an address the source cannot know.  They are ignored.
    """
    data = source['data']
    chunk = image[file_base:file_base + len(data)]
    if len(chunk) != len(data):
        return False
    mask = _mask(source, len(data))
    for index, (want, got) in enumerate(zip(data, chunk)):
        if not mask[index] and want != got:
            return False
    return True


def _has_checked_bytes(source):
    """False for a data object made only of linker-patched placeholders."""
    mask = _mask(source, len(source['data']))
    return any(byte and not mask[index]
               for index, byte in enumerate(source['data']))


def _roots(segments):
    """The named, file-backed data objects of *segments*."""
    found = []
    for offset, name in (getattr(segments, 'data_names', None) or {}).items():
        if segments.data_space(offset) == 'bss':
            continue
        keys = _keys(str(name)) | _keys(getattr(name, 'library', None))
        found.append(Root(offset, name, keys))
    return sorted(found)


def _candidates(source, roots, data_lo, data_hi):
    """``(associated_roots, candidate_ds_bases)`` for *source*."""
    data = source['data']
    size = len(data)
    if not size or size > data_hi - data_lo:
        return [], []
    defined = _source_keys(source)
    associated = [root for root in roots if root.keys & defined]
    starts = set()
    if associated:
        for root in associated:
            first = max(data_lo, root.offset - size + 1)
            last = min(root.offset, data_hi - size)
            starts.update(range(first, last + 1))
    else:
        starts.update(range(data_lo, data_hi - size + 1))
    return associated, sorted(starts)


def validate(segments, image, sources):
    """Check every compiled source's data against the image.

    *sources* are dicts with ``path``, ``data``, ``relocations``, ``symbols``
    and ``externals``.  Returns ``{DS offset: source path}`` for the named
    objects a source owns.

    A source with no named object is still checked when its bytes identify a
    unique place in the image.  Tiny or pointer-only data may be ambiguous;
    those are left to the code's relocation check rather than guessed.
    """
    if segments is None or segments.kind == 'overlay':
        return {}
    origin = getattr(segments, 'data_origin', None)
    if origin is None:
        return {}
    boundary = getattr(segments, 'bss_boundary', None)
    if boundary is None:
        boundary = max(0, len(image) - origin)
    data_hi = min(boundary, max(0, len(image) - origin))
    if data_hi <= 0:
        return {}

    roots = _roots(segments)
    claims = {}
    for source in sources:
        data = source.get('data') or b''
        if not data or not _has_checked_bytes(source):
            continue
        associated, bases = _candidates(source, roots, 0, data_hi)
        valid = []
        for base in bases:
            if associated and any(not (base <= root.offset < base + len(data))
                                  for root in associated):
                continue
            if _matches(source, image, origin + base):
                valid.append(base)
        if not valid:
            if associated:
                where = ', '.join(f'{root.name} at DS:0x{root.offset:04x}'
                                  for root in associated)
                raise DataOwnerError(
                    f'{source["path"]}: its data does not match {where}')
            raise DataOwnerError(
                f'{source["path"]}: initialized data does not match the image')
        if len(valid) > 1:
            if associated:
                where = ', '.join(f'{root.name} at DS:0x{root.offset:04x}'
                                  for root in associated)
                raise DataOwnerError(
                    f'{source["path"]}: its data matches more than one place '
                    f'for {where}; the source needs one unambiguous object')
            continue

        base = valid[0]
        end = base + len(data)
        for root in associated:
            if not base <= root.offset < end:
                continue
            previous = claims.get(root.offset)
            if previous and previous != source['path']:
                raise DataOwnerError(
                    f'{root.name} at DS:0x{root.offset:04x} is defined by '
                    f'both {previous} and {source["path"]}')
            claims[root.offset] = source['path']
    return claims
