"""Resource / region carving pre-pass (plan.md Section 11, step D2).

Classifies a binary's byte ranges into coarse, non-overlapping regions —
embedded resource magics, typed struct data, packed pointer runs, printable
strings, high-entropy blobs, and zero padding — so the pointer-candidate
scorer (Section 8) can attach its "inside a string/resource" soft negative to
words that sit in one.

This is a *scheduling* tool, not a decision.  Prior art is explicit that a
resource region can still contain a pointer (an offset table into a string
pool, for instance), so a claim only *deprioritises* a word; it never makes it
inert.  The region map is also a review aid: each region carries a short note.

Coordinate system: absolute **file offsets** into ``data`` (the same space the
sidecar ``data_pointers`` list uses for its ``offset`` field).
"""

import bisect
import collections
import math

from lib.compare.constants import _FILE_FORMATS


Region = collections.namedtuple('Region', 'start end kind note')

#: Every kind :func:`carve` can emit, highest precedence first.  A byte claimed
#: by several detectors keeps the claim with the highest precedence.
REGION_KINDS = (
    'code', 'typed', 'resource', 'pointer_table', 'string', 'entropy', 'zero',
    'data',
)

_PRIORITY = {kind: len(REGION_KINDS) - i for i, kind in enumerate(REGION_KINDS)}

#: Kinds whose words are weak pointer candidates (soft negative evidence).
DEPRIORITISED_KINDS = frozenset({'resource', 'string', 'entropy', 'zero'})

# Resource magics worth scanning for: multi-byte magics only, so short
# signatures (``BM``, ``\\x0A``, ``Z\\x00``) cannot fire by chance in code.
RESOURCE_MAGICS = tuple(
    (magic, name) for _, magic, name in _FILE_FORMATS if len(magic) >= 3
)

DEFAULT_MIN_STRING = 6
DEFAULT_MIN_ZERO = 8
DEFAULT_ENTROPY_WINDOW = 256
DEFAULT_ENTROPY_THRESHOLD = 7.0


def _printable(byte):
    return 0x20 <= byte < 0x7f or byte in (0x09, 0x0a, 0x0d)


#: Bytes that end an Aztec C string: NUL (menu strings) and ``$``.
STRING_TERMINATORS = frozenset((0x00, 0x24))


def string_run(data, offset, lo=0):
    """Return the printable run ``(start, end)`` containing *offset*, or ``None``.

    The run is bounded by non-printable bytes, an Aztec string terminator
    (NUL/``$``), and the *lo* floor.  ``offset`` is not "inside" a run when it
    sits on the first byte, on a terminator, or on a non-printable byte.
    """
    n = len(data)
    if not (0 <= offset < n) or not _printable(data[offset]) \
            or data[offset] in STRING_TERMINATORS:
        return None
    start = offset
    while (start > lo and _printable(data[start - 1])
           and data[start - 1] not in STRING_TERMINATORS):
        start -= 1
    end = offset + 1
    while (end < n and _printable(data[end])
           and data[end] not in STRING_TERMINATORS):
        end += 1
    return start, end


def _string_runs(data, start, end, minlen):
    runs = []
    run_start = None
    for i in range(start, end):
        byte = data[i]
        if _printable(byte) and byte not in STRING_TERMINATORS:
            if run_start is None:
                run_start = i
        elif run_start is not None:
            if i - run_start >= minlen:
                runs.append((run_start, i, 'string', 'printable run'))
            run_start = None
    if run_start is not None and end - run_start >= minlen:
        runs.append((run_start, end, 'string', 'printable run'))
    return runs


def _zero_runs(data, start, end, minlen):
    runs = []
    run_start = None
    for i in range(start, end):
        if data[i] == 0:
            if run_start is None:
                run_start = i
        elif run_start is not None:
            if i - run_start >= minlen:
                runs.append((run_start, i, 'zero', 'zero padding'))
            run_start = None
    if run_start is not None and end - run_start >= minlen:
        runs.append((run_start, end, 'zero', 'zero padding'))
    return runs


def _entropy_runs(data, start, end, window, threshold):
    if threshold < 0 or window <= 0 or end - start < window:
        return []
    runs = []
    run_start = None
    run_end = None
    for w in range(start, end - window + 1, window):
        chunk = data[w:w + window]
        counts = collections.Counter(chunk)
        total = len(chunk)
        entropy = -sum((n / total) * math.log2(n / total)
                       for n in counts.values())
        if entropy >= threshold:
            if run_start is None:
                run_start = w
            run_end = w + window
        elif run_start is not None:
            runs.append((run_start, run_end, 'entropy',
                         f'high entropy (>={threshold:g}/byte)'))
            run_start = run_end = None
    if run_start is not None:
        runs.append((run_start, run_end, 'entropy',
                     f'high entropy (>={threshold:g}/byte)'))
    return runs


def _packed_word_runs(data, start, end, is_addr, minlen):
    """Runs of >= *minlen* consecutive in-space address words (a pointer table).

    *is_addr* maps a 16-bit word value to a bool; *start* is aligned to a word
    boundary first.  Mirrors the ">=3 evenly spaced" jump-table rule, applied
    to data.
    """
    if is_addr is None or end - start < minlen * 2:
        return []
    base = start + (start % 2)
    runs = []
    run_start = None
    count = 0
    off = base
    while off + 2 <= end:
        value = data[off] | (data[off + 1] << 8)
        if value != 0 and is_addr(value):
            if run_start is None:
                run_start = off
            count += 1
        else:
            if count >= minlen:
                runs.append((run_start, off, 'pointer_table',
                             f'{count} in-space words'))
            run_start = None
            count = 0
        off += 2
    if count >= minlen:
        runs.append((run_start, off, 'pointer_table',
                     f'{count} in-space words'))
    return runs


def _magic_runs(data, start, end, magics):
    """Resource regions: each magic hit extends to the next hit (or *end*).

    The extent is deliberately loose — it is deprioritised data, and ``code``
    claims outrank it, so a magic that fires inside an instruction does not
    swallow code.
    """
    hits = []
    for magic, name in magics:
        at = data.find(magic, start, end)
        while at != -1:
            hits.append((at, name))
            at = data.find(magic, at + 1, end)
    if not hits:
        return []
    hits.sort()
    runs = []
    for idx, (at, name) in enumerate(hits):
        stop = hits[idx + 1][0] if idx + 1 < len(hits) else end
        runs.append((at, stop, 'resource', name))
    return runs


def carve(data, start=0, end=None, *, code_ranges=(), typed_ranges=(),
          is_addr=None, magics=None, min_string=DEFAULT_MIN_STRING,
          min_zero=DEFAULT_MIN_ZERO, window=DEFAULT_ENTROPY_WINDOW,
          entropy_threshold=DEFAULT_ENTROPY_THRESHOLD, min_run=3):
    """Carve ``data[start:end]`` into a sorted, gap-free list of :class:`Region`.

    Parameters
    ----------
    code_ranges : iterable of ``(start, end)``
        Bytes already known to be code (kept as ``code`` regions).
    typed_ranges : iterable of ``(start, end, note)``
        Struct/array regions supplied by ``lib.struct_analysis``.
    is_addr : callable | None
        Predicate for a 16-bit word value that maps into a loaded space; enables
        the ``pointer_table`` detector when supplied.
    magics : iterable of ``(bytes, name)`` | None
        Resource signatures to scan for (defaults to :data:`RESOURCE_MAGICS`).
    """
    n = len(data)
    if end is None:
        end = n
    start = max(0, min(start, n))
    end = max(start, min(end, n))
    if end <= start:
        return []

    magics = RESOURCE_MAGICS if magics is None else tuple(magics)

    claims = []
    claims.extend((s, e, 'code', 'code') for s, e in code_ranges)
    claims.extend((s, e, 'typed', note) for s, e, note in typed_ranges)
    claims.extend(_magic_runs(data, start, end, magics))
    claims.extend(_packed_word_runs(data, start, end, is_addr, min_run))
    claims.extend(_string_runs(data, start, end, min_string))
    claims.extend(_entropy_runs(data, start, end, window, entropy_threshold))
    claims.extend(_zero_runs(data, start, end, min_zero))

    span = end - start
    kind = ['data'] * span
    note = [None] * span
    for claim_start, claim_end, claim_kind, claim_note in claims:
        claim_start = max(start, claim_start)
        claim_end = min(end, claim_end)
        if claim_end <= claim_start:
            continue
        priority = _PRIORITY[claim_kind]
        for i in range(claim_start - start, claim_end - start):
            if priority > _PRIORITY[kind[i]]:
                kind[i] = claim_kind
                note[i] = claim_note

    regions = []
    i = 0
    while i < span:
        j = i + 1
        while j < span and kind[j] == kind[i] and note[j] == note[i]:
            j += 1
        regions.append(Region(start + i, start + j, kind[i], note[i]))
        i = j
    return regions


def region_at(regions, offset):
    """Return the :class:`Region` containing *offset*, or ``None``."""
    idx = bisect.bisect_right([r.start for r in regions], offset) - 1
    if idx < 0:
        return None
    region = regions[idx]
    return region if offset < region.end else None


def kind_at(regions, offset):
    region = region_at(regions, offset)
    return region.kind if region is not None else None


def is_deprioritised(regions, offset):
    """True when *offset* sits in a region that weakens pointer evidence."""
    region = region_at(regions, offset)
    return region is not None and region.kind in DEPRIORITISED_KINDS


def summarize_regions(regions):
    """Byte totals per kind, e.g. ``{'string': 220, 'code': 60000, ...}``."""
    totals = collections.Counter()
    for region in regions:
        totals[region.kind] += region.end - region.start
    return dict(sorted(totals.items()))


def deprioritised_bytes(regions):
    return sum(r.end - r.start for r in regions
               if r.kind in DEPRIORITISED_KINDS)


def iter_ranges(mask, value):
    """Yield ``(start, end)`` runs where *mask* equals *value* (bytearray/bool)."""
    n = len(mask)
    i = 0
    while i < n:
        if mask[i] == value:
            s = i
            while i < n and mask[i] == value:
                i += 1
            yield s, i
        else:
            i += 1
