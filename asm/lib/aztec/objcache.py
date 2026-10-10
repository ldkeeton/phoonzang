"""Content-hash cache of compiled Aztec modules.

Each ``(source version, file, compiler, flags, source text)`` combination is
compiled at most once and stored as JSON under a cache directory.  Prebuild
uses ``asm_prebuild_<project>/objs`` so the long DOSBox work is never repeated
for an unchanged module; the debug cache uses ``asm_cache_<project>`` for the
same purpose within a session.

Failures are cached too: some ``(source, compiler)`` pairings make the DOS
compiler hang until the subprocess timeout, and retrying them on every prebuild
is pure waste.  Deleting the prebuild tree retries them.

Writes are atomic (temp file + rename) because prebuild may compile the same
module from several binaries concurrently.
"""

import hashlib
import json
import os
import tempfile

from .compile import CompiledModule


# Bump when the compile pipeline changes in a way that alters output for the
# same inputs (e.g. a different object->OMF converter), so stale entries are
# not trusted.
CACHE_VERSION = 4


def module_key(version, filename, compiler, flags, source_text):
    digest = hashlib.sha1()
    digest.update(f'v{CACHE_VERSION}'.encode())
    digest.update(b'\x00')
    for part in (version, filename, compiler, '\x00'.join(flags)):
        digest.update(part.encode('utf-8', 'replace'))
        digest.update(b'\x00')
    digest.update(source_text.encode('latin1', 'replace'))
    return digest.hexdigest()


def _path(cache_dir, key):
    return os.path.join(cache_dir, f'{key}.json')


def load(cache_dir, key):
    """Return a cached :class:`CompiledModule`, cached :class:`Exception`, or
    ``None`` when there is no cache entry."""
    if not cache_dir:
        return None
    try:
        with open(_path(cache_dir, key)) as f:
            blob = json.load(f)
    except (OSError, ValueError):
        return None
    if 'error' in blob:
        return RuntimeError(blob['error'])
    try:
        return CompiledModule.from_dict(blob)
    except (KeyError, ValueError, TypeError):
        return None


def save(cache_dir, key, module):
    """Persist *module* (a :class:`CompiledModule` or an ``Exception``)."""
    if not cache_dir:
        return
    if isinstance(module, Exception):
        blob = {'error': f'{type(module).__name__}: {module}'}
    else:
        blob = module.to_dict()
    os.makedirs(cache_dir, exist_ok=True)
    fd, tmp = tempfile.mkstemp(dir=cache_dir, suffix='.tmp')
    try:
        with os.fdopen(fd, 'w') as f:
            json.dump(blob, f)
        os.replace(tmp, _path(cache_dir, key))
    except BaseException:
        try:
            os.unlink(tmp)
        except FileNotFoundError:
            pass
        raise
