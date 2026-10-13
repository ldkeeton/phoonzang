"""Address-derived ("generic") label names and the host's name prefix.

Most labels are named after their address (``loc_08f2``, ``app_03b8``,
``leaf_loc_10108``).  An overlay includes the host's symbols to call into it, so
the host's generic names would collide with the overlay's own generic names of
the same shape.  The host therefore carries a prefix on them (``ds_loc_08f2``);
named routines (``dos_con_in_noecho``) keep their names.

The pipeline works with the plain names until the host is about to be emitted
(:func:`rename_generics`).  From then on its name checks go through
:func:`stem`, which looks through the prefix.
"""

import re

# Hex-suffixed names are address-derived; these families are symbols of other
# kinds (data-segment offsets, geometry markers) and are never renamed.
_ADDRESS_RE = re.compile(r'.*_[0-9a-f]{4,5}$')
_NOT_GENERIC = ('dseg_', 'bss_', 'psp_', 'cseg_', '__z', 'bios_data_',
                'external_')

#: Prefix of the host's generic names while the host is being emitted.
_state = {'prefix': ''}
#: Every host prefix seen, so text produced earlier still reads correctly.
_known = {'ds_'}


def set_generic_prefix(prefix):
    """Set the prefix given to generic names (``''`` for non-host binaries)."""
    _state['prefix'] = prefix
    if prefix:
        _known.add(prefix)


def generic_prefix():
    return _state['prefix']


def stem(name):
    """*name* without a leading host prefix."""
    for prefix in _known:
        if name.startswith(prefix):
            return name[len(prefix):]
    return name


def startswith_stem(name, stems):
    """``name.startswith(stems)``, looking through the host prefix."""
    return stem(name).startswith(stems)


def loc_name(offset):
    """The generic ``loc_<offset>`` label name for the binary being emitted."""
    return f'{_state["prefix"]}loc_{offset:04x}'


def is_generic(name):
    """True for an address-derived label name (and not a data/geometry symbol)."""
    bare = stem(name)
    return bool(_ADDRESS_RE.match(bare)) and not bare.startswith(_NOT_GENERIC)


def rename_generics(label_map, function_roots=None, split_functions=None,
                    prefix=''):
    """Give every generic name the host *prefix*, in place.

    Applies to *label_map* values, *function_roots* values and the
    *split_functions* set.  Idempotent: a name that already carries the prefix
    is left alone.  Returns ``{old: new}``.
    """
    renames = {}

    def new_name(name):
        if (not isinstance(name, str) or not prefix
                or name.startswith(prefix) or not is_generic(name)):
            return name
        renames[name] = prefix + name
        return renames[name]

    for off, name in list(label_map.items()):
        label_map[off] = new_name(name)
    if function_roots:
        for off, name in list(function_roots.items()):
            function_roots[off] = new_name(name)
    if split_functions:
        renamed = {new_name(name) for name in split_functions}
        split_functions.clear()
        split_functions.update(renamed)
    return renames
