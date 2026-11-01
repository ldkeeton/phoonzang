"""Sidecar validation for the game's Huffman string table."""

from .constants import _IDENTIFIER
from .errors import SidecarError

#: File keys of the sidecar's ``huffman_strings`` table, in read order.
HUFFMAN_FILE_KEYS = ('directory', 'blocks', 'tree')


def _validate_huffman_strings(spec, where):
    """``huffman_strings``: the Huffman-packed string files and named groups.

    These are the game's data files, so they live in the sidecar rather than
    in the decoder.  ``directory`` points at 1K blocks in ``blocks`` and names
    the Huffman tree in ``tree``.  ``groups`` names where a run of related
    strings starts.
    """
    if not isinstance(spec, dict):
        raise SidecarError(f'{where} must be an object')
    for key in HUFFMAN_FILE_KEYS:
        value = spec.get(key)
        if not (isinstance(value, str) and value):
            raise SidecarError(f'{where}.{key} must be a non-empty file name')
    extra = sorted(set(spec) - set(HUFFMAN_FILE_KEYS) - {'groups'})
    if extra:
        raise SidecarError(f'{where}: unknown key(s) {", ".join(extra)}')
    if 'groups' in spec:
        _validate_groups(spec['groups'], f'{where}.groups')


def _validate_groups(bases, where):
    """``groups``: the named bases a computed string id starts from."""
    if not isinstance(bases, list):
        raise SidecarError(f'{where} must be a list')
    seen_values = {}
    seen_names = {}
    for index, entry in enumerate(bases):
        at = f'{where}[{index}]'
        if not isinstance(entry, dict):
            raise SidecarError(f'{at} must be an object')
        value = _message_value(entry.get('value'), f'{at}.value')
        name = entry.get('name')
        if not (isinstance(name, str) and _IDENTIFIER.match(name)):
            raise SidecarError(f'{at}.name must be an identifier')
        if value in seen_values:
            raise SidecarError(
                f'{at}.value {value} duplicates {seen_values[value]!r}')
        if name in seen_names:
            raise SidecarError(
                f'{at}.name {name!r} duplicates {seen_names[name]!r}')
        seen_values[value] = name
        seen_names[name] = value


def _message_value(value, where):
    """A message id from an int or a decimal/hex string."""
    if isinstance(value, bool):
        raise SidecarError(f'{where} must be a message id')
    if isinstance(value, int):
        if value < 0:
            raise SidecarError(f'{where} must not be negative')
        return value
    if isinstance(value, str):
        try:
            parsed = int(value, 0)
        except ValueError as exc:
            raise SidecarError(f'{where} is not a message id') from exc
        if parsed >= 0:
            return parsed
    raise SidecarError(f'{where} must be a message id')
