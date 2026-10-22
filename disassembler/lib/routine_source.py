"""A routine's source beside its NASM fragment.

``<label>.asm`` is the disassembly (NASM).  The source it is rebuilt from sits
next to it with the same stem: ``<label>.c``, C compiled by Aztec ``cc``, or
``<label>.s``, Manx assembly assembled by Aztec ``as``.  A routine has at most
one of the two.
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
    """The bytes a hand-written source owns: exactly what it compiled to.

    A source may be shorter than the fragment it was split from -- the tail
    becomes its own fragment on the next build.  It may not grow past the
    fragment it replaces, the next routine, or its sidecar band: that would
    shift or overlap later addresses.  *recorded_end*, *next_root* and
    *band_end* are absolute image offsets, all exclusive.
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
    return compiled_len
