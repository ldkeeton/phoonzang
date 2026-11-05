"""A routine's source beside its NASM fragment.

``<label>.asm`` is the disassembly (NASM).  The source it is rebuilt from sits
next to it with the same stem: ``<label>.c``, C compiled by Aztec ``cc``, or
``<label>.s``, Manx assembly assembled by Aztec ``as``.  A routine has at most
one of the two.  A grouped fragment (sidecar ``function_names`` ``length``)
may name its files with ``file`` instead of its head routine's label.
"""

import os

C = '.c'
ASM = '.s'
SUFFIXES = (C, ASM)


def is_source(filename):
    """True for a routine source file name (``x.c``, ``x.s``)."""
    return filename.endswith(SUFFIXES)


def is_asm_source(filename):
    """True for Manx assembly (``x.s``), which ``as`` builds."""
    return filename.endswith(ASM)


def stem(filename):
    """``x`` from ``x.c`` or ``x.s``."""
    return os.path.splitext(filename)[0]


def sources_in(folder, accept=lambda path: True):
    """``{stem: filename}`` of the routine sources in *folder* that *accept*
    takes; a stem with both a ``.c`` and a ``.s`` is an error."""
    found = {}
    if not os.path.isdir(folder):
        return found
    for filename in sorted(os.listdir(folder)):
        if not is_source(filename) \
                or not accept(os.path.join(folder, filename)):
            continue
        label = stem(filename)
        if label in found:
            raise SystemExit(
                f'error: {os.path.join(folder, label)}: both '
                f'{found[label]} and {filename}; keep one')
        found[label] = filename
    return found


def beside(path_no_ext, exists=os.path.isfile):
    """The source at *path_no_ext* (``.c`` or ``.s``) that *exists*, or None."""
    for suffix in SUFFIXES:
        if exists(path_no_ext + suffix):
            return path_no_ext + suffix
    return None


class FragmentLengthError(ValueError):
    """A hand-written source does not fit the fragment it may own."""


def owned_length(start, compiled_len, recorded_end=None, next_root=None,
                 band_end=None):
    """The bytes a hand-written source owns: its whole fragment.

    A source must compile to exactly the fragment it replaces.  It may not
    grow past that fragment, the next routine, or its sidecar band: that would
    shift or overlap later addresses.  A shorter compile is not a split -- it
    still owns the whole fragment, so the byte gate reports what is missing.
    *recorded_end*, *next_root* and *band_end* are absolute image offsets, all
    exclusive.  Only *recorded_end* is the fragment's end: the next routine is
    a bound, not a boundary (a fragment may end before it).  With no recorded
    end the compile is what it owns, and the build checks it against the
    fragment it lays out (:func:`short_of_fragment`).
    """
    if start is None:
        return compiled_len
    end = start + compiled_len
    for what, limit in (('its fragment', recorded_end),
                        ('the next routine', next_root),
                        ('its band', band_end)):
        if limit is not None and end > limit:
            raise FragmentLengthError(
                f'source at 0x{start:04x} compiles to {compiled_len} bytes '
                f'(0x{end:04x}), past {what} at 0x{limit:04x}')
    if recorded_end is None:
        return compiled_len
    return recorded_end - start


def short_of_fragment(checks, spans, path_of):
    """Errors for the hand sources in *checks* that compile short of the
    fragment the build laid out at their start.

    *spans* is the build's ``{name: [start, end]}``; *path_of* turns a check's
    ``path`` into the name printed.  A source may own more than one fragment
    (an inferred fragment inside its function), never less than its first.
    """
    ends = {start: end for start, end in spans.values()}
    errors = []
    for label, check in sorted(checks.items()):
        start, code = check.get('start'), check.get('code')
        end = ends.get(start)
        if start is None or code is None or end is None:
            continue
        if len(code) < end - start:
            errors.append(
                f'error: {label}: {path_of(check["path"])} compiles to '
                f'{len(code)} bytes, {end - start - len(code)} short of its '
                f'{end - start}-byte fragment (0x{start:04x}-0x{end:04x})')
    return errors
