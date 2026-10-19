"""The "auto-generated" marker: which files under ``src_<project>/`` are ours.

Every file the generator writes starts with a one-line marker.  ``make clean``
removes exactly the files that still carry it, so a file a human took over (by
deleting the marker line) or added is never touched.
"""

import os
from contextlib import contextmanager

MARKER_ASM = '; auto-generated'
MARKER_C = '/* auto-generated */'

_C_SUFFIXES = ('.c', '.h')
_MAX_LISTED = 10


def marker_for(path):
    """The marker line for *path*, chosen by its extension."""
    return MARKER_C if path.endswith(_C_SUFFIXES) else MARKER_ASM


def stamp(text, path):
    """Return *text* with the marker as its first line (idempotent)."""
    marker = marker_for(path)
    if text.split('\n', 1)[0].rstrip() == marker:
        return text
    return marker + '\n' + text


def is_generated(path):
    """True when *path* is a regular file whose first line is a marker."""
    if os.path.islink(path) or not os.path.isfile(path):
        return False
    try:
        with open(path, 'rb') as f:
            first = f.readline(256)
    except OSError:
        return False
    line = first.decode('utf-8', 'ignore').rstrip()
    return line in (MARKER_ASM, MARKER_C)


#: The paths written inside :func:`write_once`, or ``None`` outside it.
_written = None


@contextmanager
def write_once():
    """A build: inside it, :func:`write_text` writing one path twice is an error.

    The build lays every file out before writing any (:mod:`main.build`), so a
    second write means some step rewrites another's output.
    """
    global _written
    previous, _written = _written, set()
    try:
        yield
    finally:
        _written = previous


def write_text(path, text):
    """Write *text* to *path* with the marker as its first line."""
    if _written is not None:
        key = os.path.abspath(path)
        if key in _written:
            raise RuntimeError(f'{path}: written twice in one build')
        _written.add(key)
    with open(path, 'w') as f:
        f.write(stamp(text, path))


def remove_generated(root):
    """Delete marked files under *root*, then directories left empty.

    Returns ``(removed, kept)``: how many files were deleted and the paths of
    files left because they carry no marker.
    """
    removed = 0
    kept = []
    for base, dirs, files in os.walk(root, topdown=False):
        for name in files:
            path = os.path.join(base, name)
            if is_generated(path):
                os.unlink(path)
                removed += 1
            else:
                kept.append(path)
        if base != root and not os.listdir(base):
            os.rmdir(base)
    if os.path.isdir(root) and not os.listdir(root):
        os.rmdir(root)
    return removed, sorted(kept)
