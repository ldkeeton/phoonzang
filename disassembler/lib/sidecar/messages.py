"""Sidecar validation for the game's message-id tables."""

from .constants import _IDENTIFIER
from .errors import SidecarError

#: Keys of the sidecar's ``message_data`` table, in read order.
MESSAGE_DATA_KEYS = ('directory', 'blocks', 'tree')


def _validate_message_calls(calls, where):
    """``message_calls``: which routines take a message id, at which argument.

    This is knowledge about the game's routines, so it lives in the sidecar
    rather than in the renderer or the generator.  ``arg`` is the 1-based C
    argument and ``args`` the routine's argument count; ``push`` overrides the
    standard right-to-left position (1 = the last push) for an unusual
    convention.
    """
    if not isinstance(calls, list):
        raise SidecarError(f'{where} must be a list')
    seen = set()
    for index, entry in enumerate(calls):
        at = f'{where}[{index}]'
        if not isinstance(entry, dict):
            raise SidecarError(f'{at} must be an object')
        routine = entry.get('routine')
        if not (isinstance(routine, str) and _IDENTIFIER.match(routine)):
            raise SidecarError(f'{at}.routine must be an identifier')
        if routine in seen:
            raise SidecarError(f'{at}.routine duplicates {routine!r}')
        seen.add(routine)
        args = entry.get('args')
        if isinstance(args, bool) or not isinstance(args, int) or args < 1:
            raise SidecarError(f'{at}.args must be a positive integer')
        arg = entry.get('arg')
        if isinstance(arg, bool) or not isinstance(arg, int) or not 1 <= arg <= args:
            raise SidecarError(f'{at}.arg must be between 1 and {args}')
        push = entry.get('push')
        if push is not None and (
                isinstance(push, bool) or not isinstance(push, int)
                or not 1 <= push <= args):
            raise SidecarError(f'{at}.push must be between 1 and {args}')


def _validate_message_data(spec, where):
    """``message_data``: the packed-message files' names.

    These are the game's data files, so they live in the sidecar rather than
    in the decoder.  ``directory`` points at 1K blocks in ``blocks`` and names
    the Huffman tree in ``tree``.
    """
    if not isinstance(spec, dict):
        raise SidecarError(f'{where} must be an object')
    for key in MESSAGE_DATA_KEYS:
        value = spec.get(key)
        if not (isinstance(value, str) and value):
            raise SidecarError(f'{where}.{key} must be a non-empty file name')
    extra = sorted(set(spec) - set(MESSAGE_DATA_KEYS))
    if extra:
        raise SidecarError(f'{where}: unknown key(s) {", ".join(extra)}')


def _validate_message_bases(bases, where):
    """``message_bases``: the named bases a computed message id starts from."""
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
        note = entry.get('note')
        if note is not None and not isinstance(note, str):
            raise SidecarError(f'{at}.note must be a string')


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


def merge_message_calls(defaults, overrides):
    """The project's ``message_calls`` with a binary's own entries replacing
    the same routine's.

    Which routines take a message id is project-wide knowledge; a binary may
    still override a single entry (an unusual calling convention) without
    repeating the whole table.
    """
    merged = {entry['routine']: entry for entry in defaults or ()}
    for entry in overrides or ():
        merged[entry['routine']] = entry
    return list(merged.values())
