"""``make init`` — download read-only reference files into ``disassembler/``."""

import concurrent.futures
import glob
import hashlib
import json
import os
import sys
import time
import urllib.error
import urllib.parse
import urllib.request

from .common import ASM

DOS_COMPILERS_REPO = 'ldkeeton/dos_compilers'
DOS_COMPILERS_REF = 'main'
DOS_COMPILERS_DIR = os.path.join(ASM, 'dos_compilers')
SIDECAR_DIR = os.path.join(ASM, 'sidecar')
# Manx ships its runtime sources as ``ARC/*.ARC`` text bundles; ``make init``
# splits them into ``dos_compilers/aztec_src/<version>/<archive>/<file>``
# (lib.aztec.sources), next to the release folders.
AZTEC_SRC_DIR = os.path.join(DOS_COMPILERS_DIR, 'aztec_src')
_AZTEC_PREFIX = 'Manx Aztec C86 '
_API = f'https://api.github.com/repos/{DOS_COMPILERS_REPO}'
_RAW = f'https://raw.githubusercontent.com/{DOS_COMPILERS_REPO}/{DOS_COMPILERS_REF}'
_WORKERS = 8
_RETRIES = 3


def _get(url, api=False):
    """Body of *url*, retrying transient failures; ``RuntimeError`` on give-up."""
    headers = {'User-Agent': 'wiz7-make-init'}
    if api:
        headers['Accept'] = 'application/vnd.github+json'
        token = os.environ.get('GITHUB_TOKEN') or os.environ.get('GH_TOKEN')
        if token:
            headers['Authorization'] = f'Bearer {token}'
    last = ''
    for attempt in range(_RETRIES):
        try:
            with urllib.request.urlopen(
                    urllib.request.Request(url, headers=headers), timeout=60) as r:
                return r.read()
        except urllib.error.HTTPError as e:
            body = e.read().decode('utf-8', 'replace')
            if e.code == 403 and api and 'rate limit' in body.lower():
                raise RuntimeError(
                    f'GitHub API rate limit hit; set GITHUB_TOKEN and re-run ({url})')
            last = f'HTTP {e.code} {url}'
            if e.code not in (429, 500, 502, 503, 504):
                break
        except (urllib.error.URLError, TimeoutError) as e:
            last = f'{e} ({url})'
        if attempt != _RETRIES - 1:
            time.sleep(1 + attempt)
    raise RuntimeError(last)


def _blob_sha(data):
    """Git blob hash of *data*, as ``git hash-object`` would report it."""
    return hashlib.sha1(b'blob %d\0' % len(data) + data).hexdigest()


def _wanted_folders():
    """Sorted, de-duped ``dos_compilers`` folders named by all sidecars."""
    folders = set()
    for path in glob.glob(os.path.join(SIDECAR_DIR, '*.json')):
        with open(path) as f:
            folders.update(json.load(f).get('dos_compilers', []))
    return sorted(folders)


def _tree_blobs():
    """``path -> (sha, size)`` for every regular file in the repo."""
    data = json.loads(_get(f'{_API}/git/trees/{DOS_COMPILERS_REF}?recursive=1',
                           api=True))
    if data.get('truncated'):
        raise RuntimeError('dos_compilers tree listing is truncated')
    return {e['path']: (e['sha'], int(e.get('size', 0)))
            for e in data['tree'] if e['type'] == 'blob' and e.get('mode') != '120000'}


def _write(rel, body, sha):
    """Write *body* to ``DOS_COMPILERS_DIR/rel`` unless it is already there."""
    path = os.path.join(DOS_COMPILERS_DIR, rel)
    if os.path.isfile(path) and os.path.getsize(path) == len(body):
        with open(path, 'rb') as f:
            if _blob_sha(f.read()) == sha:
                return False
    os.makedirs(os.path.dirname(path), exist_ok=True)
    tmp = path + '.part'
    with open(tmp, 'wb') as f:
        f.write(body)
    os.replace(tmp, path)
    return True


def _download(folders):
    """Fetch the files under *folders*, verifying size and blob hash."""
    blobs = _tree_blobs()
    wanted = {p: v for p, v in blobs.items()
              if any(p.startswith(f + '/') for f in folders)}
    if not wanted:
        print('no files found for: ' + ', '.join(folders))
        sys.exit(1)

    def fetch(item):
        rel, (sha, size) = item
        try:
            body = _get(f'{_RAW}/{urllib.parse.quote(rel, safe="/")}')
            if len(body) != size:
                return rel, f'size {len(body)} != {size}'
            if _blob_sha(body) != sha:
                return rel, 'hash mismatch'
            return rel, _write(rel, body, sha)
        except (RuntimeError, OSError) as e:
            return rel, f'failed: {e}'

    with concurrent.futures.ThreadPoolExecutor(_WORKERS) as pool:
        results = list(pool.map(fetch, wanted.items()))

    bad = [(p, r) for p, r in results if isinstance(r, str)]
    if bad:
        print(f'download FAILED ({len(bad)} of {len(wanted)} files):')
        for path, why in bad:
            print(f'  {why}: {path}')
        print('re-run `make init` to retry')
        sys.exit(1)
    written = sum(1 for _, r in results if r is True)
    total = sum(size for _, size in wanted.values())
    print(f'downloaded {len(wanted)} files, {total:,} bytes '
          f'({written} written, {len(wanted) - written} unchanged)')


def cmd_init():
    """Fetch only the sidecar-listed folders into ``disassembler/dos_compilers``.

    Files come straight from the repo over HTTPS, so there is no ``.git`` and
    nothing from the repo root is checked out.  Every file is verified against
    the repo tree (size and blob hash).  Safe to re-run: folder lists are
    re-read, so folders added to a sidecar later are picked up, and files that
    are already byte-identical are left alone.
    """
    folders = _wanted_folders()
    if not folders:
        print('no sidecar lists dos_compilers folders')
        return
    print('dos_compilers folders: ' + ', '.join(folders))
    _download(folders)
    _unpack_sources(folders)


def _unpack_sources(folders):
    """Split each Aztec folder's ``ARC/*.ARC`` into ``aztec_src/<version>/``.

    The archives are plain ``\\f<name>\\n<body>`` concatenations (Manx's
    ``mkarcv``), one directory per archive because names repeat across them
    (``croot.c`` is in both ``cpm86`` and ``dos20``).  Files whose bytes are
    unchanged are left alone, so a re-run touches nothing.
    """
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
