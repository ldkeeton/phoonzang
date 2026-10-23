"""``byte_patches``: bytes a shipped binary changed after it was built.

A released executable is sometimes patched after linking (a crack, a local
fix, a publisher edit).  The disassembly must see the code the compiler
produced -- otherwise an unreachable block left by the patch becomes a
function root, and a byte-exact C source can never match.  A patch entry
declares both views at one offset:

* ``natural``: the bytes the compiler/assembly is expected to emit.  The
  analysis view replaces the shipped bytes with these before disassembly.
* ``apply``: the bytes the shipped file has and the final build must get.
* ``allow``: every value a pre-patch build may have.  ``natural`` and
  ``apply`` are always members; defaults to exactly those two.
* ``note``: why the file differs (required).

Offsets are file offsets, the same coordinate system as ``function_names``,
``bands``, the spans sidecar, and the ``; 0x...`` comments in generated
assembly.
"""

import re

from .errors import SidecarError
from .offsets import _parse_offset

#: A patch entry's hex string, with optional ``0x`` and separators.
_HEX = re.compile(r'^(?:0x)?[0-9a-fA-F]+$')


class PatchError(ValueError):
    """A binary does not contain the bytes a patch entry describes."""


def _parse_bytes(value, where):
    """``bytes`` from a hex string; spaces/underscores/``0x`` are ignored."""
    if not isinstance(value, str):
        raise SidecarError(f'{where}: expected a hexadecimal byte string')
    text = re.sub(r'[\s_]', '', value)
    if text[:2].lower() == '0x':
        text = text[2:]
    if not text or len(text) % 2 or not _HEX.match(text):
        raise SidecarError(f'{where}: expected an even number of hex digits')
    try:
        return bytes.fromhex(text)
    except ValueError as exc:
        raise SidecarError(f'{where}: invalid hexadecimal bytes') from exc


def _parse_patch(entry, where):
    if not isinstance(entry, dict):
        raise SidecarError(f'{where}: must be an object')
    offset = _parse_offset(entry.get('offset'), f'{where}.offset')
    natural = _parse_bytes(entry.get('natural'), f'{where}.natural')
    apply = _parse_bytes(entry.get('apply'), f'{where}.apply')
    if len(natural) != len(apply):
        raise SidecarError(
            f'{where}: natural is {len(natural)} bytes, apply is '
            f'{len(apply)}; a patch cannot change the image length')
    note = entry.get('note')
    if not isinstance(note, str) or not note.strip():
        raise SidecarError(f'{where}.note: a non-empty note is required')

    raw_allow = entry.get('allow')
    if raw_allow is None:
        allow = [natural, apply]
    else:
        if not isinstance(raw_allow, list) or not raw_allow:
            raise SidecarError(f'{where}.allow: expected a non-empty list')
        allow = [_parse_bytes(value, f'{where}.allow[{index}]')
                 for index, value in enumerate(raw_allow)]
        for index, value in enumerate(allow):
            if len(value) != len(natural):
                raise SidecarError(
                    f'{where}.allow[{index}]: {len(value)} bytes, expected '
                    f'{len(natural)}')
    for label, value in (('natural', natural), ('apply', apply)):
        if value not in allow:
            raise SidecarError(
                f'{where}.{label}: {value.hex()} is not listed in .allow')
    # Stable order, with the analysis value first, so the representation does
    # not depend on the caller's spelling of an otherwise identical set.
    ordered = [natural] + [value for value in allow if value != natural]
    return {
        'offset': offset,
        'length': len(natural),
        'natural': natural,
        'apply': apply,
        'allow': tuple(ordered),
        'note': note.strip(),
    }


def parse_patches(raw, where='byte_patches'):
    """Validate *raw* and return the patch entries in address order."""
    if raw is None:
        return []
    if not isinstance(raw, list):
        raise SidecarError(f'{where}: must be a list')
    patches = []
    for index, entry in enumerate(raw):
        patches.append(_parse_patch(entry, f'{where}[{index}]'))
    patches.sort(key=lambda patch: patch['offset'])
    for previous, patch in zip(patches, patches[1:]):
        if patch['offset'] < previous['offset'] + previous['length']:
            raise SidecarError(
                f'{where}: patch at 0x{previous["offset"]:04x} overlaps '
                f'patch at 0x{patch["offset"]:04x}')
    return patches


def _validate_patches(raw, where):
    parse_patches(raw, where)


def normalize(data, patches):
    """Return *data* with each patch's ``natural`` bytes in place.

    The result is the view the disassembler and the C gate work from.  The
    shipped bytes may be ``apply`` or any other allowed value; anything else
    means the sidecar no longer describes this file.
    """
    out = bytearray(data)
    for patch in patches or ():
        at = patch['offset']
        end = at + patch['length']
        if end > len(out):
            raise PatchError(
                f'patch at 0x{at:04x} runs past the end of the image '
                f'({len(out)} bytes): {patch["note"]}')
        got = bytes(out[at:end])
        if got == patch['natural']:
            continue
        if got not in patch['allow']:
            expect = ', '.join(value.hex() for value in patch['allow'])
            raise PatchError(
                f'patch at 0x{at:04x}: file has {got.hex()}, expected one of '
                f'{expect} ({patch["note"]})')
        out[at:end] = patch['natural']
    return bytes(out)


def finalize(data, patches, on_apply=None):
    """Return *data* with each patch's ``apply`` bytes written.

    *data* must hold one of the entry's allowed values (or the final bytes
    already); a build that produced anything else is a regression, not a patch
    to hide.  ``on_apply(patch, before)`` is called for each changed entry.
    """
    out = bytearray(data)
    for patch in patches or ():
        at = patch['offset']
        end = at + patch['length']
        if end > len(out):
            raise PatchError(
                f'patch at 0x{at:04x} runs past the end of the image '
                f'({len(out)} bytes): {patch["note"]}')
        got = bytes(out[at:end])
        if got == patch['apply']:
            continue
        if got not in patch['allow']:
            expect = ', '.join(value.hex() for value in patch['allow'])
            raise PatchError(
                f'patch at 0x{at:04x}: build has {got.hex()}, expected one '
                f'of {expect} ({patch["note"]})')
        out[at:end] = patch['apply']
        if on_apply is not None:
            on_apply(patch, got)
    return bytes(out)
