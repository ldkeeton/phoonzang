"""``make buildsh`` - write ``build.sh`` and ``run.sh`` into ``src_<project>/``.

``make build`` neither writes nor removes them: they carry no generated
marker, so ``make clean`` keeps them too, and a hand-edited copy stays as it
is until this command overwrites it.  They come from the tree ``make build``
left (each binary's ``NAME.asm`` listing) and the sidecar.
"""

import os
import sys
from collections.abc import Mapping

from lib.aztec.project import project_scripts
from lib.cachedirs import src_dir
from lib.link import host_name
from lib.sidecar.loader import load as load_sidecar
from main.build import _link_order, _project_compiler, _project_flags
from main.options import APPS_DIR, PROJECT_ROOT
from main.projects import discover_binaries


class _Tree(Mapping):
    """The tree's files as ``{relative path: text}``, read when asked for."""

    def __init__(self, root):
        self.root = root

    def __getitem__(self, rel):
        path = os.path.join(self.root, rel)
        if not os.path.isfile(path):
            raise KeyError(rel)
        with open(path, errors='surrogateescape') as f:
            return f.read()

    def __contains__(self, rel):
        return os.path.isfile(os.path.join(self.root, rel))

    def __iter__(self):
        raise TypeError('the tree is not listed')

    def __len__(self):
        raise TypeError('the tree is not listed')


def _write(path, text):
    with open(path, 'w', errors='surrogateescape') as f:
        f.write(text)
    mode = os.stat(path).st_mode
    os.chmod(path, mode | ((mode & 0o444) >> 2))


def cmd_buildsh(project):
    """Write *project*'s ``build.sh`` and ``run.sh``; exits 1 when the tree
    has no listing to write them from."""
    app_dir = os.path.join(APPS_DIR, project)
    out_dir = src_dir(project, PROJECT_ROOT)
    bins = discover_binaries(app_dir)
    missing = [f'{name}.asm' for name in sorted(bins)
               if not os.path.isfile(os.path.join(out_dir, f'{name}.asm'))]
    if missing:
        print(f'buildsh {project}: {", ".join(missing)} missing; '
              f'run "make build {project}" first')
        sys.exit(1)
    flags = _project_flags(project)
    compiler = _project_compiler(project)
    if flags is None or compiler is None:
        print(f'buildsh {project}: the sidecar names no compiler_flags or '
              f'Aztec dos_compilers folder')
        sys.exit(1)
    files = _Tree(out_dir)
    binaries = (load_sidecar(project) or {}).get('binaries') or {}
    scripts = project_scripts(
        {name: binaries.get(name, {}) for name in bins}, host_name(bins), files,
        compiler, flags, _link_order(project, files),
        os.path.relpath(app_dir, out_dir))
    for rel, text in sorted(scripts.items()):
        _write(os.path.join(out_dir, rel), text)
    print(f'buildsh {project}: wrote {", ".join(sorted(scripts))}')
