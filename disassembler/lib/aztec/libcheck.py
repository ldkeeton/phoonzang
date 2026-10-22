"""``make libcheck`` — rebuild the vendor C library and compare it to the shipped one.

The Aztec runtime the game links is v4.2b's small-model ``C.LIB``.  Its
members are listed in ``build/c.bld`` and built by the per-directory Manx
makefiles (``dos_compilers/aztec_src/v42b/<dir>/makefile``)::

    .c.o:    cc +$(MODEL) -n $*.c -o $@      then  sqz $@
    .asm.o:  as -dMODEL=$(AMODEL) $*.asm -o $@  then  sqz $@

(small model: ``MODEL=``, ``AMODEL=0``).  This rebuilds every member from the
unpacked sources with exactly that recipe, in one DOSBox session, and compares
the object dump (``obd``) with the member extracted from the shipped library
(``lb -x``), both before and after ``sqz``.  A member that reproduces proves
the source file and the recipe; the result is what :mod:`.sources` and the mux
build on.

All 140 members reproduce, and only after ``sqz``: it resolves intra-module
branch relocations into the code and packs the records, without changing a
code byte (``lfree``'s forward ``jmp`` stays the long ``e9`` form).  So the
pipeline, which compares code with relocation sites masked, can skip it.
"""

import os
import shutil
import subprocess
import tempfile

from ..dosbox import DOSBOX, environment as dosbox_env, timeout as dosbox_timeout
from ..dosbox import run as run_dosbox
from . import compile as _compile
from . import sources

VERSION = 'v42b'


def _members():
    """``[(dir, stem)]`` of the small-model ``C.LIB``, in ``c.bld`` order."""
    path = os.path.join(sources.src_root(VERSION), 'build', 'c.bld')
    with open(path, errors='replace') as f:
        names = f.read().split()
    return [tuple(n[:-2].split('/')) for n in names if n.endswith('.o')]


def _candidates(directory, stem):
    """Source files the makefile could build ``<stem>.o`` from."""
    root = os.path.join(sources.src_root(VERSION), directory)
    return [stem + ext for ext in ('.c', '.asm')
            if os.path.isfile(os.path.join(root, stem + ext))]


def _dump_body(path):
    """An ``obd`` listing without its version banner (or None if absent)."""
    if not os.path.isfile(path):
        return None
    with open(path, errors='replace') as f:
        return ''.join(line for line in f if not line.startswith('Manx Object'))


def check(verbose=False):
    """Rebuild every member; return ``[(member, source, verdict)]``.

    *verdict* is ``'exact'`` (matches after ``sqz``), ``'exact-nosqz'``
    (matches only without it), ``'differs'``, or ``'build failed'``; an exact
    member that ``sqz`` changed reads ``'exact (sqz)'``.
    """
    members = _members()
    cbin = _compile._COMPILER_DIRS[VERSION]
    work = tempfile.mkdtemp(prefix='azlibchk-')
    try:
        os.symlink(cbin, os.path.join(work, 'azbin'))
        os.symlink(sources.include_dir(VERSION), os.path.join(work, 'azinc'))
        with open(os.path.join(work, 'dosbox.conf'), 'w') as f:
            f.write(_compile._CONF)
        os.mkdir(os.path.join(work, 'LIB'))
        shutil.copy(os.path.join(cbin, 'LIB', 'C.LIB'), os.path.join(work, 'LIB'))
        bat = ['cd \\LIB', 'lb C.LIB -x > LB.LOG']
        bat += [f'obd {stem}.o > {stem}.TXT' for _, stem in members]
        bat.append('cd \\')
        jobs = []
        for directory, stem in members:
            for i, src in enumerate(_candidates(directory, stem)):
                tag = f'B{len(jobs):03d}'
                os.makedirs(os.path.join(work, tag))
                shutil.copy(os.path.join(sources.src_root(VERSION), directory, src),
                            os.path.join(work, tag, src.upper()))
                jobs.append(((directory, stem), src, tag))
                tool = (f'cc + -n {src} -o {stem}.o' if src.endswith('.c')
                        else f'as -dMODEL=0 {src} -o {stem}.o')
                bat += [f'cd \\{tag}', f'{tool} > BUILD.LOG',
                        f'obd {stem}.o > RAW.TXT', f'sqz {stem}.o > SQZ.LOG',
                        f'obd {stem}.o > SQZ.TXT', 'cd \\']
        with open(os.path.join(work, 'CHECK.BAT'), 'w') as f:
            f.write('\r\n'.join(bat) + '\r\n')
        cmds = [f'mount c {os.path.join(work, "azbin")}', f'mount d {work}',
                f'mount e {os.path.join(work, "azinc")}', 'set PATH=C:\\BIN',
                'set INCLUDE=E:\\', 'd:', 'CHECK.BAT', 'exit']
        env = dosbox_env(work)
        if verbose:
            print(f'  libcheck: {len(jobs)} builds for {len(members)} members',
                  flush=True)
        limit = dosbox_timeout()
        if limit is not None:
            limit *= 4
        with _compile._dosbox_lock():
            try:
                run_dosbox(_compile._dosbox_argv(DOSBOX, work, cmds),
                           env=env, timeout=limit,
                           what=f'libcheck | DOSBox rebuilding {len(jobs)} '
                                'objects')
            except subprocess.TimeoutExpired as exc:
                raise RuntimeError(
                    f'libcheck DOSBox session timed out'
                    f'{f" after {limit:g}s" if limit else ""}') from exc

        results = []
        for member in members:
            want = _dump_body(os.path.join(work, 'LIB', f'{member[1].upper()}.TXT'))
            mine = [(src, tag) for m, src, tag in jobs if m == member]
            verdict, which = 'build failed', None
            for src, tag in mine:
                sqz = _dump_body(os.path.join(work, tag, 'SQZ.TXT'))
                raw = _dump_body(os.path.join(work, tag, 'RAW.TXT'))
                if want and sqz == want:
                    verdict = 'exact' if raw == want else 'exact (sqz)'
                    which = src
                    break
                if want and raw == want:
                    verdict, which = 'exact-nosqz', src
                elif sqz is not None and verdict == 'build failed':
                    verdict, which = 'differs', src
            results.append(('/'.join(member), which, verdict))
        return results
    finally:
        shutil.rmtree(work, ignore_errors=True)


def cmd_libcheck(verbose_all=False):
    results = check(verbose=True)
    counts = {}
    for member, src, verdict in results:
        counts[verdict] = counts.get(verdict, 0) + 1
        if not verdict.startswith('exact') or verbose_all:
            print(f'  {verdict:12} {member}  ({src or "no source"})')
    print('libcheck: ' + ', '.join(f'{v} {n}' for v, n in sorted(counts.items()))
          + f' of {len(results)} C.LIB members')
    return sum(n for v, n in counts.items() if v.startswith('exact (')
               or v == 'exact') == len(results)
