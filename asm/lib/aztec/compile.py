"""Compile Aztec C source and recover per-function machine code.

The Manx compilers are DOS programs, so compilation is driven through an
isolated, headless DOSBox session.  We deliberately separate the *source
version* (whose headers define the runtime's data layout) from the
*compiler version* (whose code generator produced the bytes), because the
Wizardry 7 binaries mix them: e.g. the game's ``_open`` is the v3.40b
source compiled by the v5.2a code generator.

Pipeline inside DOSBox::

    cc <flags> MODULE.C        -> MODULE.O    (compile + assemble)
    objms MODULE.O             -> MODULE.OBJ  (Aztec -> MS OMF)
    obd MODULE.O > OBD.TXT     -> relocation records

``MODULE.OBJ`` yields the per-symbol code ranges (via :mod:`types.omflib`)
and ``OBD.TXT`` yields the relocations; the two share the same segment
offsets, so relocations can be attributed to each function.
"""

import contextlib
import os
import shutil
import subprocess
import sys
import tempfile

try:
    import fcntl
except ImportError:  # pragma: no cover - non-POSIX
    fcntl = None

from .objread import parse_obd, fixup_width
from . import sources

_DOSCOMP = os.path.join(
    os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))),
    'tools', 'dos_compilers')

_COMPILER_DIRS = {
    'v340a': os.path.join(_DOSCOMP, 'Manx Aztec C86 v340a'),
    'v52a': os.path.join(_DOSCOMP, 'Manx Aztec C86 v52a'),
}

# Aztec's object->OMF converter was renamed between releases.  The verifier
# reads OMF, so we must use the tool that ships with the chosen compiler:
# v3.40a has OBJ.EXE ("Object Converter"), v5.2a has OBJMS.EXE.
_OBJ_CONVERTERS = {
    'v340a': 'obj',
    'v52a': 'objms',
}


def _obj_converter(compiler):
    try:
        return _OBJ_CONVERTERS[compiler]
    except KeyError:
        raise ValueError(f'unknown Aztec compiler version {compiler!r}')

# Only DOSBox-X is supported: the stock/debug DOSBox floods stdout and wedges
# on compiler errors.
_DOSBOX_CANDIDATES = ('dosbox-x',)


def _resolve_dosbox():
    override = os.environ.get('WIZ7_DOSBOX')
    if override:
        return shutil.which(override) or override
    for candidate in _DOSBOX_CANDIDATES:
        found = shutil.which(candidate)
        if found:
            return found
    return 'dosbox'


DOSBOX = _resolve_dosbox()

_CONF = """\
[dosbox]
machine=svga_s3
memsize=16

[sblaster]
sbtype=none

[midi]
mpu401=none

[autoexec]
"""


@contextlib.contextmanager
def _dosbox_lock():
    """Serialize DOSBox across processes when ``WIZ7_DOSBOX_LOCK`` is set.

    Runs that only *disassemble* (``make prebuild``) can run in parallel, but
    the emulator itself contends badly, so callers set a lock file and every
    DOSBox invocation waits on it.  With no lock configured this is a no-op.
    """
    path = os.environ.get('WIZ7_DOSBOX_LOCK')
    if not path or fcntl is None:
        yield
        return
    parent = os.path.dirname(path)
    if parent:
        os.makedirs(parent, exist_ok=True)
    with open(path, 'w') as fh:
        fcntl.flock(fh, fcntl.LOCK_EX)
        try:
            yield
        finally:
            fcntl.flock(fh, fcntl.LOCK_UN)


class AztecCompileError(RuntimeError):
    pass


class Func:
    """A public function recovered from a compiled module."""

    __slots__ = ('name', 'module', 'offset', 'code', 'fixups')

    def __init__(self, name, module, offset, code, fixups):
        self.name = name
        self.module = module
        self.offset = offset
        self.code = bytes(code)
        self.fixups = fixups  # Fixup with offsets relative to *code*

    @property
    def key(self):
        return self.name.strip('_').lower()

    def masked(self):
        """Yield ``(index, is_relocation)`` for every byte of the code."""
        covered = set()
        for fx in self.fixups:
            for k in range(fixup_width(fx.kind)):
                covered.add(fx.offset + k)
        for i in range(len(self.code)):
            yield i, i in covered

    def to_dict(self):
        return {
            'name': self.name,
            'module': self.module,
            'offset': self.offset,
            'code': self.code.hex(),
            'fixups': [
                [fx.offset, fx.kind, fx.symbol_kind, fx.symbol_index, fx.symbol]
                for fx in self.fixups
            ],
        }

    @classmethod
    def from_dict(cls, blob):
        from .objread import Fixup
        fixups = [
            Fixup(offset, kind, symbol_kind, symbol_index, symbol)
            for offset, kind, symbol_kind, symbol_index, symbol
            in blob.get('fixups', ())
        ]
        return cls(blob['name'], blob.get('module'),
                   blob.get('offset', 0), bytes.fromhex(blob['code']), fixups)

    def __repr__(self):
        return (f'Func({self.name!r}, off=0x{self.offset:x}, '
                f'len={len(self.code)}, fixups={len(self.fixups)})')


class CompiledModule:
    def __init__(self):
        self.functions = {}
        self.log = ''

    def get(self, name):
        return self.functions.get(name.strip('_').lower())

    def to_dict(self):
        return {'functions': {name: func.to_dict()
                              for name, func in self.functions.items()}}

    @classmethod
    def from_dict(cls, blob):
        result = cls()
        result.functions = {name: Func.from_dict(func)
                            for name, func in blob.get('functions', {}).items()}
        return result


def _compiler_dir(version):
    try:
        return _COMPILER_DIRS[version]
    except KeyError:
        raise ValueError(f'unknown Aztec compiler version {version!r}')


def available(version='v52a'):
    return (os.path.isdir(_compiler_dir(version))
            and shutil.which(DOSBOX) is not None)


def _dos_name(name):
    stem = name.upper()
    for ch in ' /\\:;*?"<>|':
        stem = stem.replace(ch, '_')
    return stem[:8]


def compile_module(source_text, name, *, compiler='v52a', includes=None,
                   flags=('-n', '+y'), timeout=120, keep=False):
    """Compile *source_text* and return a :class:`CompiledModule`.

    ``compiler`` selects the code generator; ``includes`` selects the header
    tree (defaults to the same version as the compiler).
    """
    inc_version = includes or compiler
    cbin = _compiler_dir(compiler)
    incdir = sources.include_dir(inc_version)
    if not os.path.isdir(cbin):
        raise AztecCompileError(f'Aztec {compiler} compiler not found at {cbin!r}')
    exe = shutil.which(DOSBOX)
    if exe is None:
        raise AztecCompileError(f'DOSBox {DOSBOX!r} not found')

    work = tempfile.mkdtemp(prefix='wiz7az-')
    try:
        os.symlink(cbin, os.path.join(work, 'azbin'))
        os.symlink(incdir, os.path.join(work, 'azinc'))
        with open(os.path.join(work, 'dosbox.conf'), 'w') as f:
            f.write(_CONF)
        module = _dos_name(name)
        with open(os.path.join(work, f'{module}.C'), 'w') as f:
            f.write(source_text)

        cmds = [
            f'mount c {os.path.join(work, "azbin")}',
            f'mount d {work}',
            f'mount e {os.path.join(work, "azinc")}',
            'set PATH=C:\\BIN',
            'set INCLUDE=E:\\',
            'd:',
            ' '.join(['cc', *flags, f'{module}.C', '> CC.LOG']),
            f'{_obj_converter(compiler)} {module}.O > OBJMS.LOG',
            f'obd {module}.O > OBD.TXT',
            'exit',
        ]
        argv = _dosbox_argv(exe, work, cmds, time_limit=timeout)
        env = dict(os.environ)
        env['HOME'] = work
        if os.environ.get('WIZ7_DOSBOX_HEADLESS'):
            env['SDL_VIDEODRIVER'] = 'dummy'
            env['SDL_AUDIODRIVER'] = 'dummy'
        with _dosbox_lock():
            proc = subprocess.run(argv, capture_output=True, text=True,
                                  timeout=timeout, env=env)
        log = proc.stdout + proc.stderr

        obj_path = os.path.join(work, f'{module}.O')
        omf_path = os.path.join(work, f'{module}.OBJ')
        obd_path = os.path.join(work, 'OBD.TXT')
        cc_log = _read(os.path.join(work, 'CC.LOG'))
        if not os.path.exists(obj_path):
            raise AztecCompileError(
                f'compiler produced no object for {module}:\n{cc_log[-2000:]}')

        dump = parse_obd(_read(obd_path))
        result = _build_module(module, omf_path, dump)
        result.log = log + cc_log
        if keep:
            result._work = work
            work = None
        return result
    finally:
        if work is not None:
            shutil.rmtree(work, ignore_errors=True)


def _read(path):
    try:
        with open(path, 'r', errors='replace') as f:
            return f.read()
    except OSError:
        return ''


def _dosbox_argv(exe, work, cmds, *, time_limit=None):
    """Build a non-interactive DOSBox-X command line.

    ``-nopromptfolder`` is essential: recent DOSBox-X builds otherwise block on
    a working-directory dialog.  ``-time-limit`` is a hard wall-clock kill so a
    wedged DOS compiler cannot hold the session open forever.
    """
    argv = [exe, '-conf', os.path.join(work, 'dosbox.conf'),
            '-nopromptfolder', '-defaultdir', work, '-fastlaunch', '-exit']
    if os.environ.get('WIZ7_DOSBOX_HEADLESS'):
        argv.append('-nogui')
    if time_limit:
        argv += ['-time-limit', str(int(time_limit))]
    for cmd in cmds:
        argv += ['-c', cmd]
    return argv


def compile_batch(requests, *, timeout=None, verbose=False):
    """Compile many modules with as few DOSBox launches as possible.

    ``requests`` is an iterable of
    ``(key, dos_name, source_text, compiler, includes, flags)`` tuples.  One
    DOSBox session is used per ``(compiler, includes, flags)`` group: mixing
    compilers in a single session wedges the DOS ``cc`` driver, and repeatedly
    opening/closing DOSBox is both slow and unreliable.

    Returns ``{key: CompiledModule | Exception}``.
    """
    groups = {}
    for key, dos_name, source_text, compiler, includes, flags in requests:
        groups.setdefault((compiler, includes, tuple(flags)), []).append(
            (key, dos_name, source_text))
    results = {}
    for (compiler, includes, flags), members in groups.items():
        results.update(_compile_group(compiler, includes, flags, members,
                                      timeout=timeout, verbose=verbose))
    return results


def _compile_group(compiler, inc_version, flags, members, *, timeout,
                   verbose):
    cbin = _compiler_dir(compiler)
    incdir = sources.include_dir(inc_version)
    if not os.path.isdir(cbin):
        raise AztecCompileError(
            f'Aztec {compiler} compiler not found at {cbin!r}')
    if not os.path.isdir(incdir):
        raise AztecCompileError(
            f'Aztec {inc_version} includes not found at {incdir!r}')
    exe = DOSBOX
    if not (os.path.exists(exe) or shutil.which(exe)):
        raise AztecCompileError(f'DOSBox {exe!r} not found')

    work = tempfile.mkdtemp(prefix='wiz7azb-')
    try:
        # Mount through space-free symlinks: the vendor paths contain spaces,
        # which DOSBox's `mount` cannot take unquoted.
        os.symlink(cbin, os.path.join(work, 'azbin'))
        os.symlink(incdir, os.path.join(work, 'azinc'))
        with open(os.path.join(work, 'dosbox.conf'), 'w') as f:
            f.write(_CONF)

        # DOSBox-X stops honouring -c flags after ~10, so the per-module work
        # goes into one batch file; the mounts stay as -c.
        lines = []
        names = []
        sources_by_key = {}
        converter = _obj_converter(compiler)
        for key, dos_name, source_text in members:
            dos = dos_name.upper()
            with open(os.path.join(work, f'{dos}.C'), 'w') as f:
                f.write(source_text)
            lines.append(' '.join(['cc', *flags, f'{dos}.C', f'> {dos}.CC']))
            lines.append(f'if exist {dos}.O {converter} {dos}.O > {dos}.OM')
            lines.append(f'if exist {dos}.O obd {dos}.O > {dos}.OBD')
            names.append((key, dos))
            sources_by_key[key] = (dos, source_text)
        with open(os.path.join(work, 'BUILD.BAT'), 'w') as f:
            f.write('\r\n'.join(lines) + '\r\n')

        cmds = [
            f'mount c {os.path.join(work, "azbin")}',
            f'mount d {work}',
            f'mount e {os.path.join(work, "azinc")}',
            'set PATH=C:\\BIN',
            'set INCLUDE=E:\\',
            'd:',
            'BUILD.BAT',
            'exit',
        ]
        if timeout is None:
            timeout = max(60, 3 * len(names))
        argv = _dosbox_argv(exe, work, cmds, time_limit=timeout)
        env = dict(os.environ)
        env['HOME'] = work
        if os.environ.get('WIZ7_DOSBOX_HEADLESS'):
            env['SDL_VIDEODRIVER'] = 'dummy'
            env['SDL_AUDIODRIVER'] = 'dummy'
        print(f'  aztec batch: {len(names)} modules via {compiler} '
              f'({inc_version} includes)', flush=True)
        if verbose:
            print(f'    {" ".join(argv)}', flush=True)
        try:
            with _dosbox_lock():
                subprocess.run(argv, timeout=timeout, env=env)
        except subprocess.TimeoutExpired:
            print(f'  aztec batch: {compiler} batch timed out after '
                  f'{timeout}s; isolating unfinished modules', flush=True)

        results = {}
        unfinished = []
        for key, dos in names:
            obj_path = os.path.join(work, f'{dos}.O')
            cc_path = os.path.join(work, f'{dos}.CC')
            if os.path.exists(obj_path):
                omf_path = os.path.join(work, f'{dos}.OBJ')
                obd_path = os.path.join(work, f'{dos}.OBD')
                dump = parse_obd(_read(obd_path))
                results[key] = _build_module(dos, omf_path, dump)
            elif os.path.exists(cc_path) and os.path.getsize(cc_path) > 0:
                results[key] = AztecCompileError(
                    f'compiler produced no object for {dos}')
            else:
                unfinished.append(key)

        # Anything the batch never reached (a wedged module blocks the rest of
        # the BAT) is retried one at a time with a short timeout, so a single
        # bad source cannot sink the whole group.
        for key in unfinished:
            dos, source_text = sources_by_key[key]
            try:
                results[key] = compile_module(
                    source_text, dos, compiler=compiler, includes=inc_version,
                    flags=flags, timeout=COMPILE_TIMEOUT)
            except Exception as exc:
                results[key] = exc
        return results
    finally:
        if os.environ.get('WIZ7_KEEP_BATCH'):
            print(f'  aztec batch: kept work dir {work}', flush=True)
        else:
            shutil.rmtree(work, ignore_errors=True)


_ASM_DIR = os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__))))
if os.path.join(_ASM_DIR, 'tools') not in sys.path:
    sys.path.insert(0, os.path.join(_ASM_DIR, 'tools'))


def _build_module(module, omf_path, dump):
    from omflib import public_functions

    result = CompiledModule()
    if not os.path.exists(omf_path):
        return result
    with open(omf_path, 'rb') as f:
        data = f.read()

    code_len = len(dump.code)
    for pf in public_functions(data):
        off = pf['offset']
        end = min(pf['offset'] + pf['length'], code_len) if pf['length'] \
            else code_len
        seg = bytes(dump.code[off:end])
        if not seg:
            continue
        fixups = []
        for fx in dump.fixups:
            if off <= fx.offset < end:
                from .objread import Fixup
                fixups.append(Fixup(fx.offset - off, fx.kind, fx.symbol_kind,
                                    fx.symbol_index, fx.symbol))
        result.functions[pf['name'].strip('_').lower()] = Func(
            pf['name'], pf['module'] or module, off, seg, fixups)
    return result
