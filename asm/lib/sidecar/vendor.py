"""``vendor_patches``: how the game's copy of a vendor routine differs."""

from .errors import SidecarError


def _validate_vendor_patches(block):
    if block is None:
        return
    if not isinstance(block, dict):
        raise SidecarError('"vendor_patches" must be an object')
    for label, patch in block.items():
        where = f'vendor_patches.{label}'
        if (not isinstance(patch, dict)
                or not isinstance(patch.get('file'), str)
                or not isinstance(patch.get('version'), str)):
            raise SidecarError(f'{where} must be an object with string '
                               '"version" and "file"')
        edits = patch.get('edits')
        if not isinstance(edits, list) or not edits or not all(
                isinstance(e, dict) and isinstance(e.get('find'), str)
                and e['find'] and isinstance(e.get('replace'), str)
                for e in edits):
            raise SidecarError(f'{where}.edits must be a non-empty list of '
                               '{"find", "replace"} string pairs')


def vendor_patches(project):
    """``{label: patch}`` of how the game's copy of a vendor asm routine differs.

    Each patch names the vendor ``version``/``file`` and the ordered ``edits``
    that turn its text into the source of the bytes in the game binary.
    """
    from . import load

    return dict((load(project) or {}).get('vendor_patches') or {})
