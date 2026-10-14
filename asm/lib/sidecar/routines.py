"""``routines``: names for code shared between binaries, by content tag."""

import re

from .errors import SidecarError

#: A generic label's content tag (see :func:`lib.names.tag_generics`).
_TAGGED_LABEL = re.compile(r'_[G-V]{4}(?:_[0-9a-f]{4,5})?$')


def _validate_routines(block):
    """``routines``: names for code shared between binaries, by content tag."""
    if block is None:
        return
    if not isinstance(block, dict):
        raise SidecarError('"routines" must be an object')
    for label, info in block.items():
        if (not _TAGGED_LABEL.search(label) or not isinstance(info, dict)
                or not isinstance(info.get('name'), str) or not info['name']):
            raise SidecarError(
                f'routines.{label}: key must be a content-tagged label '
                '(ending _GHIJ) and the value an object with a "name"')
