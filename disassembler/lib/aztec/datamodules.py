"""The runtime library's data-only modules: a vendor ``.c`` that is only data.

``ctype.c`` is one table (``char ctp_[129]``); ``stksiz.c`` is four ``int``s
(``_STKSIZ``, ``_STKRED``, ``_HEAPSIZ``, ``_STKLOW``).  The library's own
object says which objects a module defines, in which order, and their bytes,
so where the image holds exactly those bytes under exactly those names, that
span of data is the module: one ``.asm`` with the vendor file as its ``.c``.

A module with relocations (``syserr.c``'s table of string pointers) holds
addresses the linker chose, not the vendor's bytes, and is left out.
"""

import functools
import glob
import os
from collections import namedtuple

from lib.cachedirs import aztec_lib_obj_dir

from . import libobjs, omflib
from .build_db import LIB_DIRS
from .objread import external_label

#: *file* is the vendor source (``stksiz.c``); *publics* ``((label, offset),
#: ...)`` in offset order; *data* the module's initialized bytes.
DataModule = namedtuple('DataModule', 'file publics data declared',
                       defaults=(False,))


def declared_data_modules(entry, segments, image):
    """Explicit data_names lengths, independent of vendor prebuild discovery.

    Lengths are bytes, starting at the named DS object. Interior public names
    remain at their addresses; the file takes its first object's stem.
    """
    if segments is None or segments.kind == 'overlay':
        return ()
    names = (entry or {}).get('data_names') or {}
    result, previous_end = [], 0
    for offset, info in sorted(names.items()):
        if 'length' not in info:
            continue
        origin = segments.data_origin
        end = offset + info['length']
        if (origin is None or offset < previous_end
                or segments.data_space(offset) != 'dseg'
                or end > len(image) - origin
                or (segments.bss_boundary is not None
                    and end > segments.bss_boundary)):
            raise ValueError(f'data_names[{offset:04x}].length overlaps another '
                             'span or exceeds initialized DS data')
        publics = tuple((item['name'], at - offset)
                        for at, item in sorted(names.items())
                        if offset <= at < end)
        filename = info['name'].strip('_') + '.c'
        result.append(DataModule(filename, publics,
                                 bytes(image[origin + offset:origin + end]), True))
        previous_end = end
    return tuple(result)


def stem(module):
    """The fragment's name: its object's, or the vendor file's for several
    (``ctp_``, ``stksiz``)."""
    if len(module.publics) == 1:
        return module.publics[0][0]
    return os.path.splitext(module.file)[0]


@functools.lru_cache(maxsize=None)
def data_modules(project):
    """``(DataModule, ...)`` for every library module that is only data."""
    from main.options import AZTEC_PREBUILD
    if not AZTEC_PREBUILD:
        return ()
    from .sources import VERSION, catalog
    try:
        vendor = catalog(VERSION)
    except FileNotFoundError:
        return ()
    found = []
    for group in LIB_DIRS:
        for path in sorted(glob.glob(os.path.join(aztec_lib_obj_dir(project),
                                                  group, '*.OBJ'))):
            with open(path, 'rb') as f:
                blob = f.read()
            try:
                modules = [omflib.Module(blob, start, end)
                           for start, _, end in omflib.find_modules(blob)]
            except (IndexError, ValueError):
                continue
            for module in modules:
                found += _data_module(module, vendor)
    return tuple(found)


def _data_module(module, vendor):
    code = module.code_segments()
    segs = {seg for _, seg, _ in module.pubdefs}
    if (any(module.segbytes.get(seg) for seg in code) or module.fixups
            or len(segs) != 1 or segs & set(code)):
        return []
    filename = f'{module.name.lower()}.c'
    data = module.segbytes.get(segs.pop(), b'')
    if filename not in vendor or not data:
        return []
    publics = tuple(sorted(
        ((external_label(libobjs.aztec_spelling(name)), offset)
         for name, _, offset in module.pubdefs), key=lambda p: p[1]))
    return [DataModule(filename, publics, bytes(data))]

