"""``bands``: the contiguous address ranges a binary's link line left behind.

The linker places its inputs in order, so a binary's code falls into bands:
the game's own compiled objects, an in-house assembly library, the C library.
Each band names the folder its fragments are emitted into
(``ds/game/x.asm``).  A name is a folder path, so a band can sit beneath
another (``game/party``: a source module the link order shows, a run of
routines several overlays carry in the same order, one object linked into
each).  A name may repeat, one range each.
"""

import re

from .errors import SidecarError
from .offsets import _parse_offset

#: The kinds of code (:func:`lib.shared._band` sorts shared routines by them).
BAND_NAMES = ('game', 'library', 'aztec')

_WORD = r'[a-z][a-z0-9_]*'
_NAME = re.compile(rf'^{_WORD}(?:/{_WORD})*$')


def _validate_bands(bands, where):
    if not isinstance(bands, list):
        raise SidecarError(f'{where} must be a list')
    previous_end = None
    for index, band in enumerate(bands):
        at = f'{where}[{index}]'
        if not isinstance(band, dict) or 'start' not in band or 'end' not in band:
            raise SidecarError(f'{at} must be an object with "start" and "end"')
        name = band.get('name')
        if not isinstance(name, str) or not _NAME.match(name) \
                or name.split('/')[0] == 'data':
            raise SidecarError(f'{at}.name must be a folder path of '
                               'lower_snake_case words, not under "data"')
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
    """``[(start, end, name)]`` from a validated ``bands`` list
    (*end* inclusive, as in ``force_data``)."""
    return [(_parse_offset(b['start'], 'bands.start'),
             _parse_offset(b['end'], 'bands.end'),
             b['name'])
            for b in raw or ()]


def band_for(bands, offset):
    """The ``(start, end, name)`` band holding *offset*, or None."""
    for band in bands:
        if band[0] <= offset <= band[1]:
            return band
    return None
