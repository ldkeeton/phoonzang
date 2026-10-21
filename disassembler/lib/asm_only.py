"""Routines with no C equivalent, as the sidecar's ``bands`` declare them.

A fragment in a band marked ``asm_only`` (:mod:`lib.sidecar.bands`) is
hand-written assembly: the build stamps :data:`MARKER` on its second line,
seeds no ``.c`` for it and rejects one written by hand, and ``make readme``
leaves it out of the C coverage count.
"""

MARKER = '; asm only'


def stamp(text):
    """Put :data:`MARKER` on the second line of a fragment's *text*."""
    lines = text.split('\n')
    if len(lines) > 1 and lines[1].rstrip() == MARKER:
        return text
    return '\n'.join(lines[:1] + [MARKER] + lines[1:])


def is_marked(path):
    """True when the file at *path* carries :data:`MARKER` on its second line."""
    try:
        with open(path, 'r', errors='replace') as f:
            f.readline()
            return f.readline().rstrip() == MARKER
    except OSError:
        return False
