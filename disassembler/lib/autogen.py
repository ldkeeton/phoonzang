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


def hand_owned(path):
    """True when *path* is a file a human owns: present, with no marker.

    A build reads only these as input; a generated file on disk is what an
    earlier build wrote, and this build lays it out afresh.
    """
    return os.path.isfile(path) and not is_generated(path)


def _prune(root, keep=lambda path: False, skip=()):
    """Delete marked files under *root* that *keep* rejects, then directories
    left empty.  Directories named in *skip* are not entered.

    Returns ``(removed, kept)``: how many files were deleted and the paths of
    files left because they carry no marker.
    """
    removed = 0
    kept = []
    for base, dirs, files in os.walk(root, topdown=False):
        rel_base = os.path.relpath(base, root)
        if rel_base.split(os.sep, 1)[0] in skip:
            continue
        for name in files:
            path = os.path.join(base, name)
            if not is_generated(path):
                kept.append(path)
            elif not keep(path):
                os.unlink(path)
                removed += 1
        if base != root and not os.listdir(base):
            os.rmdir(base)
    if os.path.isdir(root) and not os.listdir(root):
        os.rmdir(root)
    return removed, sorted(kept)


def remove_generated(root):
    """Delete marked files under *root*, then directories left empty.

    Returns ``(removed, kept)``: how many files were deleted and the paths of
    files left because they carry no marker.
    """
    return _prune(root)


def _same(path, data):
    """True when *path* already holds exactly *data* (bytes)."""
    try:
        if os.path.getsize(path) != len(data):
            return False
        with open(path, 'rb') as f:
            return f.read() == data
    except OSError:
        return False


def sync(root, files, scopes=None, skip=()):
    """Make the generated files under *root* exactly *files*.

    *files* is ``{relative path: text}``.  A file whose content is already on
    disk is left alone (its mtime too); the others are written.  Then every
    generated file under *scopes* (relative paths, files or directories; none:
    all of *root* but *skip*) that is not in *files* is deleted.  A file a
    human owns is never touched: one in the way of a generated path is an
    error.  Returns ``(written, unchanged, removed)``.
    """
    in_the_way = sorted(rel for rel in files
                        if hand_owned(os.path.join(root, rel)))
    if in_the_way:
        raise RuntimeError(
            f'{len(in_the_way)} hand-owned file(s) in the way of generated '
            f'output (restore the marker line or move them): '
            + ', '.join(in_the_way[:_MAX_LISTED])
            + (' ...' if len(in_the_way) > _MAX_LISTED else ''))
    written = unchanged = 0
    for rel, text in sorted(files.items()):
        path = os.path.join(root, rel)
        if _written is not None:
            key = os.path.abspath(path)
            if key in _written:
                raise RuntimeError(f'{path}: written twice in one build')
            _written.add(key)
        data = stamp(text, path).encode('utf-8', 'surrogateescape')
        if _same(path, data):
            unchanged += 1
            continue
        os.makedirs(os.path.dirname(path), exist_ok=True)
        tmp = path + '.tmp'
        with open(tmp, 'wb') as f:
            f.write(data)
        os.replace(tmp, path)
        written += 1

    wanted = {os.path.abspath(os.path.join(root, rel)) for rel in files}

    def keep(path):
        return os.path.abspath(path) in wanted

    removed = 0
    for scope in (scopes if scopes is not None else ['']):
        target = os.path.join(root, scope) if scope else root
        if os.path.isdir(target):
            removed += _prune(target, keep, skip if not scope else ())[0]
        elif is_generated(target) and not keep(target):
            os.unlink(target)
            removed += 1
    return written, unchanged, removed
