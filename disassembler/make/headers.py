"""``make headers`` — write the static headers in ``src_<project>/include/``."""

from lib.aztec.headers import write_project_headers


def cmd_headers(app):
    """``make headers``: ``msg.h``/``msg.inc``, the vendor C headers some
    source includes, and ``lmacros.h`` (:mod:`lib.aztec.headers`)."""
    write_project_headers(app)
    print(f'headers {app}: OK')
