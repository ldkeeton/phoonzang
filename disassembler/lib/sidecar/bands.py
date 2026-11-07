"""``bands``: the contiguous address ranges a binary's link line left behind.

The linker places its inputs in order, so a binary's code falls into bands:
the game's own compiled objects, an in-house assembly library, the C library.
Each band names the folder its fragments are emitted into
(``ds/game/x.asm``).

The ``aztec`` band may say which vendor library it is, ``"lib": "c.lib"``.
Then the runtime is not part of the game's source: the build links that
library, as the original did, and the game's code calls the runtime by its
vendor names (``strcpy``, not ``aztec_strcpy``).  The NASM masters still
assemble the band, from fragments written under ``.cache/<lib>/`` instead of
the tree (:mod:`lib.vendorlib`).  An overlay has no bands: it links the
library its host does.

With a ``lib``, ``objects`` names the runtime modules Manx ships as object
files of their own in its ``LIB/`` rather than as members of the library,
by the routine each holds: ``{"ovloader": "ovld.o", "$ovbgn": "ovbgn.o"}``.
The link names them where the binary has them; an overlay takes its host's.
"""

import re

from .errors import SidecarError
from .offsets import _parse_offset

BAND_NAMES = ('game', 'library', 'aztec')

#: A band's ``lib``: an 8.3 library file name.
LIBRARY_NAME = re.compile(r'[A-Za-z0-9_]{1,8}\.[Ll][Ii][Bb]')
#: An ``objects`` file: an 8.3 object file name.
OBJECT_NAME = re.compile(r'[A-Za-z0-9_]{1,8}\.[Oo]')


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
        if 'lib' in band:
            if band.get('name') != 'aztec':
                raise SidecarError(f'{at}.lib: only the aztec band is a '
                                   'vendor library')
            if not (isinstance(band['lib'], str)
                    and LIBRARY_NAME.fullmatch(band['lib'])):
                raise SidecarError(f'{at}.lib must be a DOS library file '
                                   'name, such as "c.lib"')
        if 'objects' in band:
            objects = band['objects']
            if 'lib' not in band:
                raise SidecarError(f'{at}.objects: only a band with a lib '
                                   'links the compiler\'s objects')
            if not (isinstance(objects, dict) and all(
                    isinstance(k, str) and isinstance(v, str)
                    and OBJECT_NAME.fullmatch(v) for k, v in objects.items())):
                raise SidecarError(f'{at}.objects must map a routine to a DOS '
                                   'object file name, such as {"ovloader": '
                                   '"ovld.o"}')
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


def _runtime_band(raw):
    """A raw ``bands`` list's aztec band with a ``lib``, or None."""
    for band in raw or ():
        if band.get('name') == 'aztec' and band.get('lib'):
            return band
    return None


def band_library(raw):
    """The ``lib`` of a raw ``bands`` list's aztec band, lower case, or None."""
    band = _runtime_band(raw)
    return band['lib'].lower() if band else None


def _runtime_bands(sidecar, binary):
    """The raw bands *binary*'s runtime is described by: its own, or for an
    overlay (``aztec_overlay``), which runs on its host's runtime, the
    host's: ``ds``'s, or the first ``mz`` binary's."""
    binaries = (sidecar or {}).get('binaries') or {}
    entry = binaries.get(binary) or {}
    if entry.get('bands'):
        return entry['bands']
    if entry.get('type') != 'aztec_overlay':
        return None
    hosts = sorted(name for name, b in binaries.items() if b.get('type') == 'mz')
    host = 'ds' if 'ds' in hosts else (hosts[0] if hosts else None)
    return binaries[host].get('bands') if host else None


def runtime_library(sidecar, binary):
    """The vendor library *binary* links its runtime from (``c.lib``), or None
    when its runtime is source in the tree.  An overlay links its host's."""
    return band_library(_runtime_bands(sidecar, binary))


def runtime_objects(sidecar, binary):
    """``{routine: object file}`` of the runtime modules *binary* links as
    the compiler's own objects (the band's ``objects``, lower case), or
    ``{}``.  An overlay takes its host's."""
    band = _runtime_band(_runtime_bands(sidecar, binary))
    return {name: obj.lower() for name, obj in ((band or {}).get('objects')
                                                or {}).items()}
