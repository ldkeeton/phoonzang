"""``bands``: the contiguous address ranges a binary's link line left behind.

The linker places its inputs in order, so a binary's code falls into bands:
the game's own compiled objects, an in-house assembly library, the C library.
Each band names the folder its fragments are emitted into
(``ds/game/x.asm``); an ``asm_only`` band's routines have no C equivalent and
are stamped as such (:mod:`lib.asm_only`).
"""

from .errors import SidecarError
from .offsets import _parse_offset

BAND_NAMES = ('game', 'library', 'aztec')


def _validate_bands(bands, where):
    if not isinstance(bands, list):
        raise SidecarError(f'{where} must be a list')
    previous_end = None
    for index, band in enumerate(bands):
        at = f'{where}[{index}]'
        if not isinstance(band, dict) or 'start' not in band or 'end' not in band:
            raise SidecarError(f'{at} must be an object with "start" and "end"')
        if band.get('name') not in BAND_NAMES:
            raise SidecarError(f'{at}.name must be one of {", ".join(BAND_NAMES)}')
        if not isinstance(band.get('asm_only', False), bool):
            raise SidecarError(f'{at}.asm_only must be true or false')
        if 'note' in band and not isinstance(band['note'], str):
            raise SidecarError(f'{at}.note must be a string')
        start = _parse_offset(band['start'], f'{at}.start')
        end = _parse_offset(band['end'], f'{at}.end')
        if end < start:
            raise SidecarError(f'{at}: end precedes start')
        if previous_end is not None and start <= previous_end:
            raise SidecarError(f'{at}: overlaps or precedes the band before it')
        previous_end = end


def parse_bands(raw):
    """``[(start, end, name, asm_only)]`` from a validated ``bands`` list
    (*end* inclusive, as in ``force_data``)."""
    return [(_parse_offset(b['start'], 'bands.start'),
             _parse_offset(b['end'], 'bands.end'),
             b['name'], bool(b.get('asm_only', False)))
            for b in raw or ()]


def band_for(bands, offset):
    """The ``(start, end, name, asm_only)`` band holding *offset*, or None."""
    for band in bands:
        if band[0] <= offset <= band[1]:
            return band
    return None
