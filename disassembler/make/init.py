"""``make init`` — sparse-clone read-only reference repos into ``disassembler/``."""

import glob
import json
import os
import subprocess
import sys

from .common import ASM

DOS_COMPILERS_URL = 'https://github.com/ldkeeton/dos_compilers'
DOS_COMPILERS_DIR = os.path.join(ASM, 'dos_compilers')
SIDECAR_DIR = os.path.join(ASM, 'sidecar')
# Manx ships its runtime sources as ``ARC/*.ARC`` text bundles; ``make init``
# splits them into ``dos_compilers/aztec_src/<version>/<archive>/<file>``
# (lib.aztec.sources), next to the release folders.
AZTEC_SRC_DIR = os.path.join(DOS_COMPILERS_DIR, 'aztec_src')
_AZTEC_PREFIX = 'Manx Aztec C86 '


def _git(*args, cwd=None, stdin=None):
    r = subprocess.run(['git', *args], cwd=cwd, input=stdin, text=True)
    if r.returncode != 0:
        print(f'git {args[0]} failed ({r.returncode})')
        sys.exit(r.returncode)


def _wanted_folders():
    """Sorted, de-duped ``dos_compilers`` folders named by all sidecars."""
    folders = set()
    for path in glob.glob(os.path.join(SIDECAR_DIR, '*.json')):
        with open(path) as f:
            folders.update(json.load(f).get('dos_compilers', []))
    return sorted(folders)


def _verify(folders):
    """Check every blob git expects under *folders* exists with the right size/hash."""
    out = subprocess.run(['git', 'ls-tree', '-r', '-l', '-z', 'HEAD', '--', *folders],
                         cwd=DOS_COMPILERS_DIR, capture_output=True, text=True,
                         check=True).stdout
    expected = {}   # path -> (sha, size)
    for rec in filter(None, out.split('\0')):
        meta, path = rec.split('\t', 1)
        mode, kind, sha, size = meta.split()
        if kind == 'blob' and mode != '120000':
            expected[path] = (sha, int(size))

    bad = []
    present = []
    for path, (sha, size) in expected.items():
        full = os.path.join(DOS_COMPILERS_DIR, path)
        if not os.path.isfile(full):
            bad.append(f'missing: {path}')
        elif os.path.getsize(full) != size:
            bad.append(f'size {os.path.getsize(full)} != {size}: {path}')
        else:
            present.append(path)

    if present:
        hashes = subprocess.run(['git', 'hash-object', '--stdin-paths'],
                                cwd=DOS_COMPILERS_DIR, input='\n'.join(present),
                                capture_output=True, text=True, check=True
                                ).stdout.split()
        bad += [f'hash mismatch: {p}' for p, h in zip(present, hashes)
                if h != expected[p][0]]

    total = sum(size for _, size in expected.values())
    if bad:
        print(f'verify FAILED ({len(bad)} of {len(expected)} files):')
        for b in bad:
            print(f'  {b}')
        print('re-run `make init` to retry')
        sys.exit(1)
    print(f'verified {len(expected)} files, {total:,} bytes match git')


def cmd_init():
    """Fetch only the sidecar-listed folders into ``disassembler/dos_compilers``.

    After checkout every file is verified against git's tree (existence,
    size, blob hash).  Safe to re-run: it re-applies the folder list, so folders added to a
    sidecar later are picked up.  Nothing from the repo root is checked out.
    """
    folders = _wanted_folders()
    if not folders:
        print('no sidecar lists dos_compilers folders')
        return
    if not os.path.isdir(os.path.join(DOS_COMPILERS_DIR, '.git')):
        _git('clone', '--depth', '1', '--filter=blob:none', '--sparse',
             '--no-checkout', DOS_COMPILERS_URL, DOS_COMPILERS_DIR)
    print('dos_compilers folders: ' + ', '.join(folders))
    _git('sparse-checkout', 'set', '--no-cone', '--stdin',
         cwd=DOS_COMPILERS_DIR, stdin=''.join(f'/{f}/\n' for f in folders))
    _git('checkout', cwd=DOS_COMPILERS_DIR)
    _verify(folders)
    _unpack_sources(folders)


def _unpack_sources(folders):
    """Split each Aztec folder's ``ARC/*.ARC`` into ``aztec_src/<version>/``.

    The archives are plain ``\\f<name>\\n<body>`` concatenations (Manx's
    ``mkarcv``), one directory per archive because names repeat across them
    (``croot.c`` is in both ``cpm86`` and ``dos20``).  Files whose bytes are
    unchanged are left alone, so a re-run touches nothing.  ``aztec_src/``
    is not in the dos_compilers repo, so the clone's ``info/exclude`` hides it.
    """
    _exclude('/aztec_src/')
    for folder in folders:
        if not folder.startswith(_AZTEC_PREFIX):
            continue
        version = folder[len(_AZTEC_PREFIX):]
        arcs = sorted(glob.glob(os.path.join(DOS_COMPILERS_DIR, folder, 'ARC', '*.ARC')))
        written = total = 0
        for arc in arcs:
            dest = os.path.join(AZTEC_SRC_DIR, version,
                                os.path.splitext(os.path.basename(arc))[0].lower())
            os.makedirs(dest, exist_ok=True)
            with open(arc, 'rb') as f:
                data = f.read()
            for name, body in _arc_members(data):
                total += 1
                path = os.path.join(dest, name.lower())
                if os.path.isfile(path):
                    with open(path, 'rb') as f:
                        if f.read() == body:
                            continue
                with open(path, 'wb') as f:
                    f.write(body)
                written += 1
        if arcs:
            print(f'aztec sources {version}: {total} files from {len(arcs)} '
                  f'archives ({written} written) -> '
                  f'{os.path.relpath(os.path.join(AZTEC_SRC_DIR, version), ASM)}')


def _exclude(pattern):
    """Add *pattern* to the dos_compilers clone's ``.git/info/exclude``."""
    path = os.path.join(DOS_COMPILERS_DIR, '.git', 'info', 'exclude')
    lines = open(path).read().splitlines() if os.path.isfile(path) else []
    if pattern not in lines:
        os.makedirs(os.path.dirname(path), exist_ok=True)
        with open(path, 'a') as f:
            f.write(pattern + '\n')


def _arc_members(data):
    """``(name, body bytes)`` of a ``\\f<name>\\n<body>`` bundle.

    The bundle's last member carries its DOS end-of-file byte (``^Z``); DOS
    tools stop reading there, so it is not part of the file.
    """
    for part in data.split(b'\x0c')[1:]:
        nl = part.find(b'\n')
        name = part[:nl].strip().decode('latin1') if nl >= 0 else ''
        if name:
            yield name, part[nl + 1:].rstrip(b'\x1a')
