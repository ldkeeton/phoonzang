"""``make`` pre-NASM link step (plan.md D7.0c).

``asm_<project>`` is source: names and logic, hand-editable.  A separate NASM
assembly (an overlay or raw driver) cannot see the host program's labels, so the
host geometry an overlay names -- the data-segment size that ``o_dorg`` carries
-- is resolved here and written to ``.cache/<project>/labels/``.

The step runs after the host source is generated and before any binary is
assembled, on every build/rebuild/elf-rebuild.  See :mod:`lib.link`.
"""

from lib.link import LinkError, write_link_values as _write_link_values


def write_link_values(app, out_dir, bins, verbose=True):
    """Resolve host geometry, converting a link failure into a hard exit.

    The build must not fall through to NASM with a missing/stale values file,
    because the generated overlays ``%include`` it by name.
    """
    try:
        return _write_link_values(app, out_dir, bins, verbose=verbose)
    except LinkError as exc:
        print(f'  LINK FAIL: {exc}')
        raise SystemExit(1)
