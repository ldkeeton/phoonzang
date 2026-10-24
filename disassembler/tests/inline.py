"""The master source with its data fragments inlined, as NASM reads it."""

import re

from lib.compare.render import _build_source as _render

_INCLUDE = re.compile(r'^%include "([^"]*/data/[^"]*)".*$', re.M)


def build_source(*args, **kwargs):
    """``_build_source`` with each ``data/`` include spliced into the master.

    Every data byte is a fragment's (the master is layout only), so a test
    that assembles or reads the master on its own reads it whole this way.
    """
    src, sources = _render(*args, **kwargs)
    return _INCLUDE.sub(lambda m: sources[m.group(1)].rstrip('\n'), src), \
        sources
