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
