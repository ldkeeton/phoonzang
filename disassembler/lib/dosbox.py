"""Locate the DOSBox-X executable used to run DOS binaries.

Only DOSBox-X is supported: the stock/debug DOSBox floods stdout and wedges on
compiler errors.  Set ``ASM_DOSBOX`` to point at a specific build; otherwise the
first candidate on ``PATH`` is used.
"""

import os
import shutil

_DOSBOX_CANDIDATES = ('dosbox-x',)


def resolve_dosbox():
    override = os.environ.get('ASM_DOSBOX')
    if override:
        return shutil.which(override) or override
    for candidate in _DOSBOX_CANDIDATES:
        found = shutil.which(candidate)
        if found:
            return found
    return 'dosbox-x'


DOSBOX = resolve_dosbox()
