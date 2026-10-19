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
        if label.startswith('aztec_') and isinstance(info, dict) \
                and 'name' not in info:
            continue    # a library routine's note; its name is the library's
        if (not _TAGGED_LABEL.search(label) or not isinstance(info, dict)
                or not isinstance(info.get('name'), str) or not info['name']):
            raise SidecarError(
                f'routines.{label}: key must be a content-tagged label '
                '(ending _GHIJ) and the value an object with a "name"')
        for key in ('role', 'library'):
            if not isinstance(info.get(key, ''), str):
                raise SidecarError(f'routines.{label}.{key} must be a string')


def _validate_signatures(block):
    """``signatures``: byte patterns that name the routine they fall in."""
    if block is None:
        return
    if not isinstance(block, list):
        raise SidecarError('"signatures" must be a list')
    for i, sig in enumerate(block):
        patterns = sig.get('patterns') if isinstance(sig, dict) else None
        if (not isinstance(sig, dict) or not isinstance(sig.get('name'), str)
                or not sig['name'] or not isinstance(patterns, list)
                or not patterns):
            raise SidecarError(f'signatures[{i}]: must be an object with a '
                               '"name" and a non-empty "patterns" list')
        for pattern in patterns:
            try:
                bytes.fromhex(pattern.replace(' ', ''))
            except (AttributeError, ValueError):
                raise SidecarError(f'signatures[{i}].patterns: {pattern!r} '
                                   'is not hex bytes') from None
