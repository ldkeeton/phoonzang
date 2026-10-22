"""Aztec C86 v4.2b runtime-library objects as OMF, regenerated from the vendor tree.

:mod:`.build_db` fingerprints the runtime routines from OMF
modules.  Those modules are produced here, under
``.cache/<project>/aztec_lib_obj/<group>/*.OBJ``, entirely from ``dos_compilers``::

    lb LIB.LIB -x            -> one MODULE.O per library member
    obj -u MODULE.O          -> MODULE.OBJ   (Aztec -> MS OMF, ``-u``: keep
                                              the trailing-underscore form)

``obj`` also prefixes the MS ``_`` (``_putc_``, ``_$csav``);
:func:`aztec_spelling` takes it off again, giving the name as the Aztec
object and the compiler's ``obd`` spell it (``putc_``, ``$csav``).

``c``/``m``/``s`` come from the small-model ``C.LIB``/``M.LIB``/``S.LIB``
(``LIB``); ``ovl`` converts the standalone overlay support objects.
Everything runs in one headless DOSBox session behind the same lock the
compile pipeline uses.
"""

import os
import shutil
import subprocess
import tempfile

from ..dosbox import DOSBOX, environment as dosbox_env, timeout as dosbox_timeout
from ..dosbox import run as run_dosbox
from . import compile as _compile
from .compile import VERSION
from lib.cachedirs import aztec_lib_obj_dir

# group -> library to extract (extension-less); ``ovl`` has loose objects.
LIBRARIES = {'c': 'C', 'm': 'M', 's': 'S'}
OVERLAY_OBJECTS = ('OVBGN.O', 'OVLD.O', 'OVLDPATH.O')
GROUPS = tuple(LIBRARIES) + ('ovl',)


def aztec_spelling(public):
    """The Aztec spelling of a converted public (``_putc_`` -> ``putc_``)."""
    return public[1:] if public.startswith('_') else public


def present(project):
    """True when every group directory already holds converted objects."""
    root = aztec_lib_obj_dir(project)
    return all(
        os.path.isdir(os.path.join(root, g))
        and any(n.endswith('.OBJ') for n in os.listdir(os.path.join(root, g)))
        for g in GROUPS)


def _libs_dir():
    return os.path.join(_compile._COMPILER_DIRS[VERSION], 'LIB')


def build(project, *, force=False, verbose=False):
    """Create ``.cache/<project>/aztec_lib_obj`` unless complete; return its path."""
    out = aztec_lib_obj_dir(project)
    if present(project) and not force:
        return out
    if not _compile.available(VERSION):
        raise _compile.AztecCompileError(
            f'Aztec {VERSION} compiler and DOSBox are required; run `make init`')

    libs = _libs_dir()
    work = tempfile.mkdtemp(prefix='asmazlib-')
    try:
        os.symlink(_compile._COMPILER_DIRS[VERSION], os.path.join(work, 'azbin'))
        with open(os.path.join(work, 'dosbox.conf'), 'w') as f:
            f.write(_compile._CONF)

        lines = ['d:']
        for group in GROUPS:
            gdir = os.path.join(work, group.upper())
            os.mkdir(gdir)
            lines.append(f'cd \\{group.upper()}')
            if group == 'ovl':
                for name in OVERLAY_OBJECTS:
                    shutil.copy(os.path.join(libs, name), gdir)
            else:
                lib = LIBRARIES[group]
                shutil.copy(os.path.join(libs, f'{lib}.LIB'), gdir)
                lines.append(f'lb {lib}.LIB -x > LB.LOG')
            lines.append('for %%f in (*.O) do obj -u %%f')
            lines.append('cd \\')
        with open(os.path.join(work, 'BUILD.BAT'), 'w') as f:
            f.write('\r\n'.join(lines) + '\r\n')

        cmds = [
            f'mount c {os.path.join(work, "azbin")}',
            f'mount d {work}',
            'set PATH=C:\\BIN',
            'd:',
            'BUILD.BAT',
            'exit',
        ]
        argv = _compile._dosbox_argv(DOSBOX, work, cmds)
        env = dosbox_env(work)
        print('  aztec libs: extracting + converting C/M/S libs and overlay '
              f'objects via {VERSION}', flush=True)
        if verbose:
            print(f'    {" ".join(argv)}', flush=True)
        limit = dosbox_timeout()
        with _compile._dosbox_lock():
            try:
                run_dosbox(argv, env=env, timeout=limit,
                           what=f'aztec libs | DOSBox converting {VERSION} '
                                'libraries')
            except subprocess.TimeoutExpired as exc:
                raise RuntimeError(
                    f'aztec library DOSBox session timed out'
                    f'{f" after {limit:g}s" if limit else ""}') from exc

        staged = os.path.join(work, 'out')
        counts = {}
        for group in GROUPS:
            dst = os.path.join(staged, group)
            os.makedirs(dst)
            src = os.path.join(work, group.upper())
            names = sorted(n for n in os.listdir(src) if n.endswith('.OBJ'))
            for n in names:
                shutil.copy(os.path.join(src, n), dst)
            counts[group] = len(names)
        empty = [g for g, n in counts.items() if n == 0]
        if empty:
            raise _compile.AztecCompileError(
                f'aztec lib conversion produced no objects for: {", ".join(empty)}')

        if os.path.isdir(out):
            shutil.rmtree(out)
        os.makedirs(os.path.dirname(out), exist_ok=True)
        shutil.copytree(staged, out)
        print('  aztec libs: ' + ', '.join(f'{g}={n}' for g, n in counts.items())
              + f' -> {out}', flush=True)
        return out
    finally:
        shutil.rmtree(work, ignore_errors=True)
