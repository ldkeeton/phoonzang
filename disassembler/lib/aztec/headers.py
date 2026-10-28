"""``make headers``: the static headers in ``src_<project>/include/``.

The build reads these and never writes them, so a build does not depend on
``dos_compilers`` or on the message pre-scan.  ``make headers`` writes:

* ``msg.h`` and ``msg.inc`` (:func:`lib.msgids.generate_project`);
* the vendor C headers some source under ``src_<project>/`` includes, copied
  from the release's ``INCLUDE`` with lower-case names;
* ``lmacros.h``: the vendor ``LMACROS.H`` with :data:`sources._MASTER`
  appended, when some ``.s`` includes it.

Each starts with the ``auto headers`` marker (:data:`lib.autogen.HEADERS_C`,
:data:`~lib.autogen.HEADERS_ASM`), not the generated one, so the build's sync
and ``make clean`` leave them alone.
"""

import os

from lib.autogen import HEADERS_ASM, HEADERS_C, is_auto_header, is_generated
from lib.cachedirs import src_dir

from . import sources
from .compile import _C_INCLUDE_RE, _LMACROS_RE

LMACROS = 'lmacros.h'

#: Folders under ``src_<project>/`` whose files are not sources.
_SKIP_DIRS = ('include', 'build_out')


def _clean_text(text):
    """Drop trailing whitespace and leave exactly one final newline."""
    lines = [line.rstrip() for line in text.splitlines()]
    while lines and not lines[-1]:
        lines.pop()
    return '\n'.join(lines) + ('\n' if lines else '')


def _vendor_files(version=sources.VERSION):
    """``{lower-case name: path}`` of the release's vendor headers."""
    root = sources.include_dir(version)
    if not root or not os.path.isdir(root):
        raise FileNotFoundError(
            f'vendor headers unavailable at {root}; run "make init"')
    return {name.lower(): os.path.join(root, name)
            for name in os.listdir(root)
            if os.path.isfile(os.path.join(root, name))}


def _read(path):
    with open(path, errors='replace') as f:
        return f.read()


def _sources(out_dir):
    """Every ``.c``, ``.h`` and ``.s`` under *out_dir* outside ``include/``."""
    for base, dirnames, filenames in os.walk(out_dir):
        if base == out_dir:
            dirnames[:] = [d for d in dirnames if d not in _SKIP_DIRS]
        dirnames.sort()
        for name in sorted(filenames):
            if name.lower().endswith(('.c', '.h', '.s')):
                yield os.path.join(base, name)


def used_headers(out_dir, vendor):
    """``(names, lmacros)``: the *vendor* headers the C under *out_dir*
    includes, directly or through another vendor header, and whether any
    ``.s`` includes ``lmacros.h``."""
    names, pending, lmacros = set(), [], False
    for path in _sources(out_dir):
        text = _read(path)
        if path.lower().endswith('.s'):
            lmacros = lmacros or bool(_LMACROS_RE.search(text))
        else:
            pending.append(text)
    while pending:
        for name in _C_INCLUDE_RE.findall(pending.pop()):
            name = name.lower()
            if name in names or name == LMACROS or name not in vendor:
                continue
            names.add(name)
            pending.append(_read(vendor[name]))
    return names, lmacros


def header_texts(out_dir, version=sources.VERSION):
    """``{name: text}`` of the vendor headers to write into ``include/``."""
    vendor = _vendor_files(version)
    names, lmacros = used_headers(out_dir, vendor)
    out = {name: f'{HEADERS_C}\n{_clean_text(_read(vendor[name]))}'
           for name in sorted(names)}
    if lmacros and LMACROS in vendor:
        base = _read(vendor[LMACROS])
        if not base.endswith('\n'):
            base += '\n'
        # lmacros.h is included by the assembler, whose comment is ``;``.
        out[LMACROS] = (f'{HEADERS_ASM}\n'
                        f'{_clean_text(base + chr(10) + sources.master_text())}')
    return out


def _write(path, text):
    """Write *text* to *path* unless it is already there; True when written."""
    try:
        if _read(path) == text:
            return False
    except OSError:
        pass
    with open(path, 'w') as f:
        f.write(text)
    return True


def write_vendor_headers(project, out_dir=None, version=sources.VERSION):
    """Write the used vendor headers and drop the ones no longer used.

    Returns ``(written, removed)`` names.  A file is removed only when it
    carries the ``auto headers`` marker, or the old generated marker on a
    vendor name; hand-owned headers are never touched.
    """
    out_dir = out_dir or src_dir(project)
    include = sources.project_include_dir(project, out_dir)
    os.makedirs(include, exist_ok=True)
    texts = header_texts(out_dir, version)
    written = [name for name, text in texts.items()
               if _write(os.path.join(include, name), text)]
    vendor = _vendor_files(version)
    removed = []
    for name in sorted(os.listdir(include)):
        path = os.path.join(include, name)
        if name in texts or name not in vendor:
            continue
        if is_auto_header(path) or is_generated(path):
            os.unlink(path)
            removed.append(name)
    return written, removed


def write_project_headers(project):
    """``make headers``: write every static header for *project*."""
    from lib import msgids
    from main.messages import collect_message_ids
    from main.options import PROJECT_ROOT

    out_dir = src_dir(project, PROJECT_ROOT)
    written, removed = write_vendor_headers(project, out_dir)
    for name in written:
        print(f'wrote include/{name}')
    for name in removed:
        print(f'removed include/{name}')
    used_ids = collect_message_ids(project)
    msgids.generate_project(project, PROJECT_ROOT, used_ids=used_ids)


def missing(project, out_dir=None):
    """The static headers a build of *project* needs that are not there."""
    from lib import msgids
    from lib.sidecar.loader import load as load_sidecar
    out_dir = out_dir or src_dir(project)
    need = []
    if used_headers(out_dir, {})[1]:
        need.append(f'include/{LMACROS}')
    if (load_sidecar(project) or {}).get('message_data'):
        need += [msgids.MSG_H, msgids.MSG_INC]
    return [rel for rel in need
            if not os.path.isfile(os.path.join(out_dir, rel))]
