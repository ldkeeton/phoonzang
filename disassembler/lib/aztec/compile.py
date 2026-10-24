"""Compile Aztec C source and recover per-function machine code.

The Manx compilers are DOS programs, so compilation is driven through an
isolated, headless DOSBox session.  Wizardry 7 was built with Aztec C86 v4.2b
throughout: its runtime is that release's ``C.LIB`` (rebuilt byte-exact by
:mod:`.libcheck`) and its own C compiles identically with that ``cc``.

Pipeline inside DOSBox::

    cc <flags> MODULE.C        -> MODULE.O    (compile + assemble)
    obj MODULE.O               -> MODULE.OBJ  (Aztec -> MS OMF)
    obd MODULE.O > OBD.TXT     -> relocation records

``MODULE.OBJ`` yields the per-symbol code ranges (via :mod:`.omflib`)
and ``OBD.TXT`` yields the relocations; the two share the same segment
offsets, so relocations can be attributed to each function.
"""

import contextlib
import os
import re
import shutil
import subprocess
import tempfile

try:
    import fcntl
except ImportError:  # pragma: no cover - non-POSIX
    fcntl = None

from ..dosbox import DOSBOX, environment as dosbox_env, show_gui
from ..dosbox import run as run_dosbox
from ..dosbox import timeout as dosbox_timeout
from .objread import attach_locals, fixup_width, parse_obd
from . import omflib
from .omflib import public_functions
from . import sources

_DOSCOMP = os.path.join(
    os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))),
    'dos_compilers')

#: The one Aztec release the game was built with.
VERSION = 'v42b'

#: How the sidecar spells a runtime-library routine (``aztec_open``); its
#: ``compiler_flags`` entry for this prefix is how Manx built the library.
LIBRARY_PREFIX = 'aztec_'

#: A hand-written ``.s`` includes the project's ``lmacros.h``.  The build
#: installs the merged header in ``src_<project>/include`` and mounts that
#: directory as INCLUDE.
_LMACROS_RE = re.compile(r'^\s*include\s+lmacros\.h\b', re.I | re.M)


def project_headers(source_text):
    """The high-level lmacros text *source_text* gains when it includes
    ``lmacros.h`` (``''`` otherwise), for the compile cache key.

    The vendor base comes from prebuild and is fixed for the cached tree; the
    master fragment is what a build can change.
    """
    if not _LMACROS_RE.search(source_text):
        return ''
    return sources.master_text()


_COMPILER_DIRS = {
    VERSION: os.path.join(_DOSCOMP, 'Manx Aztec C86 v42b'),
}

# The verifier reads OMF, made by the converter that ships with the compiler.
_OBJ_CONVERTERS = {
    VERSION: 'obj',
}


def _obj_converter(compiler):
    try:
        return _OBJ_CONVERTERS[compiler]
    except KeyError:
        raise ValueError(f'unknown Aztec compiler version {compiler!r}')

_CONF = """\
[dosbox]
machine=svga_s3
memsize=128
quit warning=false

[cpu]
cycles=max
turbo=true

[sblaster]
sbtype=none

[midi]
mpu401=none

[autoexec]
"""


@contextlib.contextmanager
def _dosbox_lock():
    """Serialize DOSBox across processes when ``ASM_DOSBOX_LOCK`` is set.

    Runs that only *disassemble* (``make prebuild``) can run in parallel, but
    the emulator itself contends badly, so callers set a lock file and every
    DOSBox invocation waits on it.  With no lock configured this is a no-op.
    """
    path = os.environ.get('ASM_DOSBOX_LOCK')
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


class ModuleShapeError(ValueError):
    """A compiled module's functions do not tile its code segment."""


class AztecCompileError(RuntimeError):
    #: The compiler's own output (``CC.LOG``), untruncated, when it ran.
    cc_log = ''


# ``cc`` prints ``FILE.C:LINE: ERROR n: text``; ``as`` ``ERROR:FILE.ASM:LINE: text``.
_ERROR_LINE = re.compile(r'^(?:\S+\.C:\d+: ERROR \d+:|ERROR:\S+\.ASM:\d+:)',
                         re.I | re.M)


def _check_log(module, cc_log):
    """Raise :class:`AztecCompileError` when *cc_log* reports an error.

    Both tools still write an object after most errors (``as`` makes an
    undefined name an external), so the object alone says nothing.
    """
    if _ERROR_LINE.search(cc_log or ''):
        err = AztecCompileError(f'{module} has compile errors:\n{cc_log[-2000:]}')
        err.cc_log = cc_log
        raise err


def symbol_key(name):
    """The lookup key of a C name: ``$csav`` and ``csav`` alike, in any case.

    Leading underscores are part of the name: ``_read``, ``__read`` and
    ``read`` are three routines.
    """
    return name.lstrip('$').lower()


def aztec_name(symbol):
    """The C name of an Aztec-spelled symbol (``__read_`` -> ``__read``).

    The compiler appends exactly one ``_``: library objects, assembler
    ``public``/``proc`` names and the object dump's externals all carry it.
    """
    return symbol[:-1] if symbol.endswith('_') else symbol


def routine_label(cname):
    """The asm label of library routine *cname*: ``aztec_`` + the name, with a
    runtime helper's ``$`` dropped (``$csav`` -> ``aztec_csav``).

    Leading ``_`` marks Manx's internal layer, the routine the library calls
    under a public one (``_read`` under ``read``); it reads ``impl_``
    (``aztec_impl_read``, ``__tty_rd`` -> ``aztec_impl_tty_rd``).
    """
    cname = cname.lstrip('$')
    if cname.startswith('_'):
        return LIBRARY_PREFIX + 'impl_' + cname.lstrip('_')
    return LIBRARY_PREFIX + cname


#: OMF converters that prefix ``_`` to every public (``_putc``, ``___read``
#: for ``__read``, ``_$csav`` for ``$csav``).
_PREFIXING_CONVERTERS = {VERSION}


def omf_name(public, compiler):
    """The C name of an OMF public written by *compiler*'s converter."""
    if compiler in _PREFIXING_CONVERTERS and public.startswith('_'):
        return public[1:]
    return public


class Func:
    """A public function recovered from a compiled module."""

    __slots__ = ('name', 'cname', 'module', 'offset', 'code', 'fixups',
                 'locals', 'data_locals', 'members')

    def __init__(self, name, module, offset, code, fixups, locals_=None,
                 cname=None, data_locals=None):
        self.name = name
        # ``{key: offset}`` of every function inside *code*: just this one,
        # or each member of a whole module (:meth:`CompiledModule.whole`).
        self.members = {symbol_key(cname or name): 0}
        self.cname = cname or name   # the C name (``__read``, ``flsh_``)
        self.module = module
        self.offset = offset
        self.code = bytes(code)
        self.fixups = fixups  # Fixup with offsets relative to *code*
        # ``.N`` local label -> offset relative to *code*.
        self.locals = dict(locals_ or {})
        # ``.N`` module-local data label (a ``static`` or string literal) ->
        # the initialized bytes the C gives it (``b''`` for uninitialized
        # storage).  None for a module cached before this was recorded.
        self.data_locals = (None if data_locals is None
                            else {k: bytes(v) for k, v in data_locals.items()})

    @property
    def key(self):
        return symbol_key(self.cname)

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
            'cname': self.cname,
            'module': self.module,
            'offset': self.offset,
            'code': self.code.hex(),
            'fixups': [fx.to_list() for fx in self.fixups],
            'locals': self.locals,
            'data_locals': (None if self.data_locals is None
                            else {k: v.hex()
                                  for k, v in self.data_locals.items()}),
        }

    @classmethod
    def from_dict(cls, blob):
        from .objread import Fixup
        fixups = [Fixup.from_list(row) for row in blob.get('fixups', ())]
        data_locals = blob.get('data_locals')
        if data_locals is not None:
            data_locals = {k: bytes.fromhex(v) for k, v in data_locals.items()}
        return cls(blob['name'], blob.get('module'),
                   blob.get('offset', 0), bytes.fromhex(blob['code']), fixups,
                   blob.get('locals'), blob.get('cname'), data_locals)

    def __repr__(self):
        return (f'Func({self.name!r}, off=0x{self.offset:x}, '
                f'len={len(self.code)}, fixups={len(self.fixups)})')


#: Bump when the cached data segment representation changes.
DATA_VERSION = 1


class CompiledModule:
    def __init__(self):
        self.functions = {}
        # The whole code segment as one :class:`Func` (:meth:`whole`), or
        # None for a module cached before it was kept.
        self.segment = None
        self.log = ''
        self.cc_log = ''
        # Assembler listing (``as -l``) of a hand-written module, else ''.
        self.listing = ''
        # The module's initialized data segment, zero-filled to its declared
        # length.  This is the whole ``_DATA``/``CONST`` contribution, not
        # just the first gap-free run: a struct with a zero byte in it
        # (``modes``) is still one object.
        self.data = b''
        # ``(offset, width)`` of data bytes the linker patches.  They cannot
        # be compared with the C's placeholders.
        self.data_relocations = ()
        # Names the module imports.  A data name here is not a definition;
        # it must not make this module the owner of the object.
        self.externals = frozenset()
        # Caches written before the full data segment was kept have 0.
        self.data_version = 0

    def get(self, name):
        return self.functions.get(symbol_key(name))

    def whole(self):
        """The module's whole code segment as one :class:`Func`.

        The linker places an object as a unit, so the segment sits in the
        image exactly as it sits here: every routine, every ``static``, and
        any code before the first public (``sbegin.asm``).  ``members`` gives
        each function's offset by C key.  Raises :class:`ModuleShapeError`
        for a module cached before the segment was kept.
        """
        if self.segment is None:
            raise ModuleShapeError('compiled before the module segment was '
                                   'kept; recompile it')
        whole = Func(self.segment.name, self.segment.module, 0,
                     self.segment.code, self.segment.fixups,
                     self.segment.locals, self.segment.cname,
                     self.segment.data_locals)
        whole.members = {key: func.offset
                         for key, func in self.functions.items()}
        return whole

    def to_dict(self):
        return {'functions': {name: func.to_dict()
                              for name, func in self.functions.items()},
                'segment': (None if self.segment is None
                            else self.segment.to_dict()),
                'listing': self.listing,
                'data': self.data.hex(),
                'data_relocations': [list(row)
                                     for row in self.data_relocations],
                'externals': sorted(self.externals),
                'data_version': self.data_version}

    @classmethod
    def from_dict(cls, blob):
        result = cls()
        funcs = [Func.from_dict(func)
                 for func in blob.get('functions', {}).values()]
        result.functions = {func.key: func for func in funcs}
        if blob.get('segment'):
            result.segment = Func.from_dict(blob['segment'])
        result.listing = blob.get('listing', '')
        if blob.get('data') is not None:
            result.data = bytes.fromhex(blob['data'])
        result.data_relocations = tuple(
            tuple(row) for row in blob.get('data_relocations', ()))
        result.externals = frozenset(blob.get('externals', ()))
        result.data_version = blob.get('data_version', 0)
        return result


def _compiler_dir(version):
    try:
        return _COMPILER_DIRS[version]
    except KeyError:
        raise ValueError(f'unknown Aztec compiler version {version!r}')


def available(version=VERSION):
    return (os.path.isdir(_compiler_dir(version))
            and shutil.which(DOSBOX) is not None)


#: DOS device names: a file stem spelled like one opens the device instead.
_DOS_DEVICES = frozenset(
    {'CON', 'PRN', 'AUX', 'NUL', 'CLOCK$', 'BUILD'}
    | {f'{dev}{n}' for dev in ('COM', 'LPT') for n in range(1, 10)})


def dos_names(names):
    """A distinct DOS 8.3 stem for each of *names*, in order.

    The stem is the name upper-cased, cut to eight characters, anything but
    ``A-Z0-9_`` made ``_``.  A stem already taken (``draw_button`` and
    ``draw_bevel_frame`` both cut to ``DRAW_B..``) or naming a DOS device
    ends in a number instead (``DRAW_BU1``).  ``BUILD`` is the batch file's.
    """
    used = set()
    out = []
    for name in names:
        stem = re.sub(r'[^A-Z0-9_]', '_', str(name).upper())[:8] or 'MODULE'
        cand = stem
        n = 0
        while cand in used or cand in _DOS_DEVICES:
            n += 1
            cand = stem[:8 - len(str(n))] + str(n)
        used.add(cand)
        out.append(cand)
    return out


def _tool_line(kind, flags, module, log):
    """The DOS command that turns ``MODULE.C``/``MODULE.ASM`` into ``.O``."""
    if kind == 'asm':
        return ' '.join(['as', *flags, f'{module}.ASM', f'> {log}'])
    return ' '.join(['cc', *flags, f'{module}.C', f'> {log}'])


def compile_module(source_text, name, *, compiler=VERSION, includes=None,
                   flags, keep=False, kind='c', headers_dir=None):
    """Compile *source_text* and return a :class:`CompiledModule`.

    ``kind='asm'`` assembles a Manx assembly module (a vendor ``.asm``, or a
    routine's ``.s``) with ``as`` instead of compiling C with ``cc``.

    ``compiler`` selects the code generator; ``includes`` selects the header
    tree (defaults to the same version as the compiler).  *headers_dir* is the
    include directory to mount; the build passes the project's
    ``src_<project>/include``, while prebuild passes its staged copy.
    """
    inc_version = includes or compiler
    cbin = _compiler_dir(compiler)
    incdir = headers_dir or sources.include_dir(inc_version)
    if not os.path.isdir(cbin):
        raise AztecCompileError(f'Aztec {compiler} compiler not found at {cbin!r}')
    exe = shutil.which(DOSBOX)
    if exe is None:
        raise AztecCompileError(f'DOSBox {DOSBOX!r} not found')

    work = tempfile.mkdtemp(prefix='asmaz-')
    try:
        os.symlink(cbin, os.path.join(work, 'azbin'))
        os.symlink(incdir, os.path.join(work, 'azinc'))
        with open(os.path.join(work, 'dosbox.conf'), 'w') as f:
            f.write(_CONF)
        module = dos_names([name])[0]
        ext = 'ASM' if kind == 'asm' else 'C'
        with open(os.path.join(work, f'{module}.{ext}'), 'w') as f:
            f.write(source_text)

        cmds = [
            f'mount c {os.path.join(work, "azbin")}',
            f'mount d {work}',
            f'mount e {os.path.join(work, "azinc")}',
            'set PATH=C:\\BIN',
            'set INCLUDE=E:\\',
            'd:',
            _tool_line(kind, flags, module, 'CC.LOG'),
            f'{_obj_converter(compiler)} {module}.O > OBJMS.LOG',
            f'obd {module}.O > OBD.TXT',
            'exit',
        ]
        argv = _dosbox_argv(exe, work, cmds)
        env = dosbox_env(work)
        limit = dosbox_timeout()
        with _dosbox_lock():
            try:
                proc = run_dosbox(
                    argv, env=env, timeout=limit,
                    what=f'{name} | DOSBox compile {module} '
                         f'({compiler} {kind})')
            except subprocess.TimeoutExpired as exc:
                raise AztecCompileError(
                    f'DOSBox compile of {module} timed out'
                    f'{f" after {limit:g}s" if limit else ""}'
                    '\n  (set ASM_DOSBOX_TIMEOUT=0 to disable, or '
                    'ASM_DOSBOX_TIMEOUT=<seconds> to change it)') from exc
        log = (proc.stdout or '') + (proc.stderr or '')

        obj_path = os.path.join(work, f'{module}.O')
        omf_path = os.path.join(work, f'{module}.OBJ')
        obd_path = os.path.join(work, 'OBD.TXT')
        cc_log = _read(os.path.join(work, 'CC.LOG'))
        if not os.path.exists(obj_path):
            err = AztecCompileError(
                f'compiler produced no object for {module}:\n{cc_log[-2000:]}')
            err.cc_log = cc_log
            raise err
        _check_log(module, cc_log)

        dump = attach_locals(parse_obd(_read(obd_path)), _read_bytes(obj_path))
        result = _build_module(module, omf_path, dump, compiler, kind)
        result.listing = _read(os.path.join(work, f'{module}.LST'))
        result.log = log + cc_log
        result.cc_log = cc_log
        if keep:
            result._work = work
            work = None
        return result
    finally:
        if work is not None:
            shutil.rmtree(work, ignore_errors=True)


def _read_bytes(path):
    try:
        with open(path, 'rb') as f:
            return f.read()
    except OSError:
        return b''


def _read(path):
    try:
        with open(path, 'r', errors='replace') as f:
            return f.read()
    except OSError:
        return ''


def _dosbox_argv(exe, work, cmds):
    """Build a non-interactive DOSBox-X command line.

    ``-nopromptfolder`` is essential: recent DOSBox-X builds otherwise block on
    a working-directory dialog.
    """
    argv = [exe, '-conf', os.path.join(work, 'dosbox.conf'),
            '-nopromptfolder', '-defaultdir', work, '-fastlaunch', '-exit']

    if not show_gui():
        argv.append('-nogui')
    for cmd in cmds:
        argv += ['-c', cmd]
    return argv


def compile_batch(requests, *, verbose=False):
    """Compile many modules with as few DOSBox launches as possible.

    ``requests`` is an iterable of
    ``(key, dos_name, source_text, compiler, includes, flags[, kind[, headers_dir]])``
    tuples (``kind`` is ``'c'`` by default, ``'asm'`` for a hand-written
    module).  One DOSBox session is used per
    ``(compiler, includes, flags, kind, headers_dir)`` group: mixing compilers
    in a single session wedges the DOS ``cc`` driver, and repeatedly opening
    and closing DOSBox is both slow and unreliable.

    Returns ``{key: CompiledModule | Exception}``.  A session that times out
    raises :class:`AztecCompileError` naming the module it stopped in.
    """
    groups = {}
    for key, dos_name, source_text, compiler, includes, flags, *rest in requests:
        kind = rest[0] if rest else 'c'
        headers_dir = rest[1] if len(rest) > 1 else None
        groups.setdefault((compiler, includes, tuple(flags), kind, headers_dir),
                          []).append((key, dos_name, source_text))
    results = {}
    for (compiler, includes, flags, kind, headers_dir), members in groups.items():
        results.update(_compile_group(compiler, includes, flags, members,
                                      verbose=verbose, kind=kind,
                                      headers_dir=headers_dir))
    return results


def _compile_group(compiler, inc_version, flags, members, *, verbose,
                   kind='c', headers_dir=None):
    cbin = _compiler_dir(compiler)
    incdir = headers_dir or sources.include_dir(inc_version)
    if not os.path.isdir(cbin):
        raise AztecCompileError(
            f'Aztec {compiler} compiler not found at {cbin!r}')
    if not os.path.isdir(incdir):
        raise AztecCompileError(
            f'Aztec {inc_version} includes not found at {incdir!r}')
    exe = DOSBOX
    if not (os.path.exists(exe) or shutil.which(exe)):
        raise AztecCompileError(f'DOSBox {exe!r} not found')

    work = tempfile.mkdtemp(prefix='asmazb-')
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
        converter = _obj_converter(compiler)
        for key, dos_name, source_text in members:
            dos = dos_name.upper()
            ext = 'ASM' if kind == 'asm' else 'C'
            with open(os.path.join(work, f'{dos}.{ext}'), 'w') as f:
                f.write(source_text)
            lines.append(_tool_line(kind, flags, dos, f'{dos}.CC'))
            lines.append(f'if exist {dos}.O {converter} {dos}.O > {dos}.OM')
            lines.append(f'if exist {dos}.O obd {dos}.O > {dos}.OBD')
            names.append((key, dos))
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
        argv = _dosbox_argv(exe, work, cmds)
        env = dosbox_env(work)
        if verbose:
            print(f'  aztec batch: {len(names)} modules via {compiler} '
                  f'({inc_version} includes)', flush=True)
            print(f'    {" ".join(argv)}', flush=True)
        limit = dosbox_timeout()
        if limit is not None:
            # A batch legitimately takes longer than one module.
            limit *= max(1, len(names) // 10)
        timed_out = None
        with _dosbox_lock():
            try:
                run_dosbox(argv, env=env, timeout=limit,
                           what=f'aztec batch | DOSBox compiling '
                                f'{len(names)} modules ({compiler} {kind})')
            except subprocess.TimeoutExpired as exc:
                timed_out = exc
        if timed_out is not None:
            # The module it stopped in is the last one ``cc`` began (its log
            # redirect exists).
            began = [dos for _, dos in names
                     if os.path.exists(os.path.join(work, f'{dos}.CC'))]
            raise AztecCompileError(
                f'DOSBox batch of {len(names)} modules timed out'
                f'{f" after {limit:g}s" if limit else ""}'
                f'{f" compiling {began[-1]}" if began else ""}'
                '\n  (set ASM_DOSBOX_TIMEOUT=0 to disable, or '
                'ASM_DOSBOX_TIMEOUT=<seconds> to change it)') from timed_out
        return _group_results(work, names, compiler, kind)
    finally:
        if os.environ.get('ASM_KEEP_BATCH'):
            print(f'  aztec batch: kept work dir {work}', flush=True)
        else:
            shutil.rmtree(work, ignore_errors=True)


def _group_results(work, names, compiler, kind):
    """``{key: CompiledModule | AztecCompileError}`` for the ``(key, dos)``
    *names* a batch session in *work* compiled."""
    results = {}
    for key, dos in names:
        obj_path = os.path.join(work, f'{dos}.O')
        cc_path = os.path.join(work, f'{dos}.CC')
        cc_log = _read(cc_path)
        if os.path.exists(obj_path) and _ERROR_LINE.search(cc_log):
            results[key] = AztecCompileError(
                f'{dos} has compile errors:\n{cc_log[-2000:]}')
            results[key].cc_log = cc_log
        elif os.path.exists(obj_path):
            omf_path = os.path.join(work, f'{dos}.OBJ')
            obd_path = os.path.join(work, f'{dos}.OBD')
            dump = attach_locals(parse_obd(_read(obd_path)),
                                 _read_bytes(obj_path))
            results[key] = _build_module(
                dos, omf_path, dump, compiler, kind)
            results[key].listing = _read(os.path.join(work, f'{dos}.LST'))
        elif os.path.exists(cc_path) and os.path.getsize(cc_path) > 0:
            results[key] = AztecCompileError(
                f'compiler produced no object for {dos}:\n'
                f'{cc_log[-2000:]}')
            results[key].cc_log = cc_log
        else:
            results[key] = AztecCompileError(
                f'compiler never reached {dos}')
    return results


def _local_data(dump, name):
    """The initialized bytes at module-local data label *name*.

    They run from the label to the next data label or the first uninitialized
    byte, whichever comes first.  Uninitialized storage has none.
    """
    if name in dump.bss_locals:
        return b''
    start = dump.data_locals[name]
    stops = [off for n, off in dump.data_locals.items()
             if off > start and n not in dump.bss_locals]
    stop = min(stops, default=None)
    out = bytearray()
    off = start
    while off in dump.data and (stop is None or off < stop):
        out.append(dump.data[off])
        off += 1
    return bytes(out)


def _initialized(dump):
    """The module's initialized data bytes, from offset 0 to the first
    byte it does not initialize."""
    out = bytearray()
    while len(out) in dump.data:
        out.append(dump.data[len(out)])
    return bytes(out)


def _omf_data(blob):
    """``(data, relocations, externals)`` for a converted object.

    Every initialized non-code segment (``_DATA`` and any non-empty
    ``CONST``) is kept in segment-definition order, zero-filled to its
    declared length.  OMF's ``SEGDEF`` length is the object's true size;
    ``segbytes`` may stop early when the tail is zero (``Cbuffs``).
    """
    data = bytearray()
    relocations = []
    externals = set()
    try:
        modules = [omflib.Module(blob, start, end)
                   for start, _, end in omflib.find_modules(blob)]
    except (IndexError, ValueError):
        return bytes(data), tuple(relocations), frozenset()
    for found in modules:
        code = found.code_segments()
        for seg in found.segdefs:
            if (seg['id'] in code or not seg['length']
                    or seg['class'].upper() in ('BSS', 'STACK')):
                continue
            chunk = bytearray(seg['length'])
            raw = found.segbytes.get(seg['id'], b'')
            chunk[:len(raw)] = raw[:len(chunk)]
            base = len(data)
            data += chunk
            relocations.extend((base + fx.offset, fx.width)
                               for fx in found.fixups
                               if fx.seg == seg['id'])
        externals.update(found.extdefs)
    return bytes(data), tuple(relocations), frozenset(externals)


def _build_module(module, omf_path, dump, compiler, kind='c'):
    result = CompiledModule()
    if kind != 'c':
        # An assembler's symbols are its labels, not routines: a branch to one
        # is the module's own, like a C ``.N`` local.
        dump.statics = {}
        for fx in dump.fixups:
            if fx.symbol_kind == 'GBLSYM' and fx.symbol in dump.code_labels:
                fx.symbol_kind = 'LCLSYM'
                dump.locals[fx.symbol] = dump.code_labels[fx.symbol]
    result.data = _initialized(dump)
    result.data_version = DATA_VERSION
    if not os.path.exists(omf_path):
        return result
    with open(omf_path, 'rb') as f:
        data = f.read()
    result.data, result.data_relocations, result.externals = _omf_data(data)

    code_len = len(dump.code)
    # PUBDEF has no ``static`` routine, so a public's extent runs on over the
    # static after it (``putc`` swallowed ``closall``).  The ``.O`` has every
    # routine: each one ends where the next begins.
    starts = sorted({pf['offset'] for pf in public_functions(data)}
                    | set(dump.statics.values()))

    def until_next(off, end):
        later = [s for s in starts if off < s < end]
        return later[0] if later else end

    for pf in public_functions(data):
        off = pf['offset']
        # A function's length is declared by its own object: the distance to
        # the next public symbol, or the segment end for the last one.  Take
        # exactly that many bytes, so ``len(func.code)`` -- the length the mux
        # matches and the build splices -- equals the image-derived length
        # instead of being clipped.  OBD suppresses a trailing relocation's
        # operands (``parse_obd`` pads them back), but pad here as well so a
        # short dump can never silently truncate a routine mid-instruction.
        length = pf['length']
        end = (off + length) if length else code_len
        if end > len(dump.code):
            dump.code.extend(b'\x00' * (end - len(dump.code)))
        func = _func(dump, pf['name'], omf_name(pf['name'], compiler),
                     pf['module'] or module, off, until_next(off, end))
        if func is not None:
            result.functions[func.key] = func
    for name, off in dump.statics.items():
        func = _func(dump, name, name, module, off,
                     until_next(off, code_len))
        if func is not None:
            result.functions[func.key] = func
    result.segment = _func(dump, module, module, module, 0, len(dump.code))
    return result


def _func(dump, name, cname, owner, off, end):
    """The :class:`Func` for module bytes ``[off, end)``, or None if empty."""
    from .objread import Fixup
    seg = bytes(dump.code[off:end])
    if not seg:
        return None
    fixups = [Fixup(fx.offset - off, fx.kind, fx.symbol_kind, fx.symbol_index,
                    fx.symbol, fx.addend, fx.expr)
              for fx in dump.fixups if off <= fx.offset < end]
    # A local label belongs to the function whose body contains it.
    local_names = {fx.symbol for fx in fixups if fx.symbol_kind == 'LCLSYM'}
    locals_ = {n: dump.locals[n] - off for n in local_names
               if n in dump.locals}
    data_locals = {n: _local_data(dump, n) for n in local_names
                   if n in dump.data_locals}
    return Func(name, owner, off, seg, fixups, locals_, cname, data_locals)
