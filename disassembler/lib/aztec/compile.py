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

``MODULE.OBJ`` yields the per-symbol code ranges (via :mod:`.omflib`)
and ``OBD.TXT`` yields the relocations; the two share the same segment
offsets, so relocations can be attributed to each function.
"""

import contextlib
import os
import shutil
import subprocess
import tempfile

try:
    import fcntl
except ImportError:  # pragma: no cover - non-POSIX
    fcntl = None

from ..dosbox import DOSBOX
from .objread import attach_locals, fixup_width, parse_obd
from .omflib import public_functions
from . import sources

_DOSCOMP = os.path.join(
    os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))),
    'dos_compilers')

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

_CONF = """\
[dosbox]
machine=svga_s3
memsize=16

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


class AztecCompileError(RuntimeError):
    #: The compiler's own output (``CC.LOG``), untruncated, when it ran.
    cc_log = ''


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
        return 'aztec_impl_' + cname.lstrip('_')
    return 'aztec_' + cname


#: OMF converters that prefix ``_`` to every public (v5.2a OBJMS: ``_putc``,
#: ``___read`` for ``__read``).  The v3.40a OBJ keeps the C name as it is.
_PREFIXING_CONVERTERS = {'v52a'}


def omf_name(public, compiler):
    """The C name of an OMF public written by *compiler*'s converter."""
    if compiler in _PREFIXING_CONVERTERS and public.startswith('_'):
        return public[1:]
    return public


class Func:
    """A public function recovered from a compiled module."""

    __slots__ = ('name', 'cname', 'module', 'offset', 'code', 'fixups',
                 'locals', 'data_locals')

    def __init__(self, name, module, offset, code, fixups, locals_=None,
                 cname=None, data_locals=None):
        self.name = name
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

    def truncate(self, length):
        """A copy owning only the first *length* bytes of *code*.

        A public function's object extent runs to the next public symbol
        (:func:`omflib.public_functions`), so a trailing ``static`` neighbour
        is compiled inside it -- ``putc``'s extent swallows ``closall``, and
        the module-wide local-label table hands ``putc`` the neighbour's
        ``.N`` labels.  When the build knows where the routine really ends (the
        fragment span the splitter chose), take only those bytes so the
        neighbour's code, fixups and local labels are not claimed here.
        """
        if length >= len(self.code):
            return self
        length = max(0, length)
        return Func(
            self.name, self.module, self.offset, self.code[:length],
            [fx for fx in self.fixups if fx.offset + fx.width <= length],
            {name: off for name, off in self.locals.items() if off < length},
            self.cname, self.data_locals)

    def __repr__(self):
        return (f'Func({self.name!r}, off=0x{self.offset:x}, '
                f'len={len(self.code)}, fixups={len(self.fixups)})')


class CompiledModule:
    def __init__(self):
        self.functions = {}
        self.log = ''
        self.cc_log = ''
        # Assembler listing (``as -l``) of a hand-written module, else ''.
        self.listing = ''

    def get(self, name):
        return self.functions.get(symbol_key(name))

    def to_dict(self):
        return {'functions': {name: func.to_dict()
                              for name, func in self.functions.items()},
                'listing': self.listing}

    @classmethod
    def from_dict(cls, blob):
        result = cls()
        funcs = [Func.from_dict(func)
                 for func in blob.get('functions', {}).values()]
        result.functions = {func.key: func for func in funcs}
        result.listing = blob.get('listing', '')
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


def _tool_line(kind, flags, module, log):
    """The DOS command that turns ``MODULE.C``/``MODULE.ASM`` into ``.O``."""
    if kind == 'asm':
        return ' '.join(['as', *flags, f'{module}.ASM', f'> {log}'])
    return ' '.join(['cc', *flags, f'{module}.C', f'> {log}'])


def compile_module(source_text, name, *, compiler='v52a', includes=None,
                   flags=('-n', '+y'), keep=False, kind='c'):
    """Compile *source_text* and return a :class:`CompiledModule`.

    ``kind='asm'`` assembles a hand-written Manx ``.ASM`` module with ``as``
    instead of compiling C with ``cc``.

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

    work = tempfile.mkdtemp(prefix='asmaz-')
    try:
        os.symlink(cbin, os.path.join(work, 'azbin'))
        os.symlink(incdir, os.path.join(work, 'azinc'))
        with open(os.path.join(work, 'dosbox.conf'), 'w') as f:
            f.write(_CONF)
        module = _dos_name(name)
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
        env = dict(os.environ)
        env['HOME'] = work
        env['SDL_VIDEODRIVER'] = 'dummy'
        env['SDL_AUDIODRIVER'] = 'dummy'
        with _dosbox_lock():
            proc = subprocess.run(argv, capture_output=True, text=True,
                                  env=env)
        log = proc.stdout + proc.stderr

        obj_path = os.path.join(work, f'{module}.O')
        omf_path = os.path.join(work, f'{module}.OBJ')
        obd_path = os.path.join(work, 'OBD.TXT')
        cc_log = _read(os.path.join(work, 'CC.LOG'))
        if not os.path.exists(obj_path):
            err = AztecCompileError(
                f'compiler produced no object for {module}:\n{cc_log[-2000:]}')
            err.cc_log = cc_log
            raise err

        dump = attach_locals(parse_obd(_read(obd_path)), _read_bytes(obj_path))
        result = _build_module(module, omf_path, dump, compiler)
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
    
    argv.append('-nogui')
    for cmd in cmds:
        argv += ['-c', cmd]
    return argv


def compile_batch(requests, *, verbose=False):
    """Compile many modules with as few DOSBox launches as possible.

    ``requests`` is an iterable of
    ``(key, dos_name, source_text, compiler, includes, flags[, kind])`` tuples
    (``kind`` is ``'c'`` by default, ``'asm'`` for a hand-written module).  One
    DOSBox session is used per ``(compiler, includes, flags)`` group: mixing
    compilers in a single session wedges the DOS ``cc`` driver, and repeatedly
    opening/closing DOSBox is both slow and unreliable.

    Returns ``{key: CompiledModule | Exception}``.
    """
    groups = {}
    for key, dos_name, source_text, compiler, includes, flags, *rest in requests:
        kind = rest[0] if rest else 'c'
        groups.setdefault((compiler, includes, tuple(flags), kind), []).append(
            (key, dos_name, source_text))
    results = {}
    for (compiler, includes, flags, kind), members in groups.items():
        results.update(_compile_group(compiler, includes, flags, members,
                                      verbose=verbose, kind=kind))
    return results


def _compile_group(compiler, inc_version, flags, members, *, verbose,
                   kind='c'):
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
        env = dict(os.environ)
        env['HOME'] = work
        env['SDL_VIDEODRIVER'] = 'dummy'
        env['SDL_AUDIODRIVER'] = 'dummy'
        print(f'  aztec batch: {len(names)} modules via {compiler} '
              f'({inc_version} includes)', flush=True)
        if verbose:
            print(f'    {" ".join(argv)}', flush=True)
        with _dosbox_lock():
            subprocess.run(argv, env=env)

        results = {}
        for key, dos in names:
            obj_path = os.path.join(work, f'{dos}.O')
            cc_path = os.path.join(work, f'{dos}.CC')
            if os.path.exists(obj_path):
                omf_path = os.path.join(work, f'{dos}.OBJ')
                obd_path = os.path.join(work, f'{dos}.OBD')
                dump = attach_locals(parse_obd(_read(obd_path)),
                                     _read_bytes(obj_path))
                results[key] = _build_module(dos, omf_path, dump, compiler)
                results[key].listing = _read(os.path.join(work, f'{dos}.LST'))
            elif os.path.exists(cc_path) and os.path.getsize(cc_path) > 0:
                results[key] = AztecCompileError(
                    f'compiler produced no object for {dos}')
            else:
                results[key] = AztecCompileError(
                    f'compiler never reached {dos}')
        return results
    finally:
        if os.environ.get('ASM_KEEP_BATCH'):
            print(f'  aztec batch: kept work dir {work}', flush=True)
        else:
            shutil.rmtree(work, ignore_errors=True)


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


def _build_module(module, omf_path, dump, compiler):
    result = CompiledModule()
    if not os.path.exists(omf_path):
        return result
    with open(omf_path, 'rb') as f:
        data = f.read()

    code_len = len(dump.code)
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
        seg = bytes(dump.code[off:end])
        if not seg:
            continue
        fixups = []
        for fx in dump.fixups:
            if off <= fx.offset < end:
                from .objread import Fixup
                fixups.append(Fixup(fx.offset - off, fx.kind, fx.symbol_kind,
                                    fx.symbol_index, fx.symbol, fx.addend,
                                    fx.expr))
        # A local label belongs to the function whose body contains it.
        local_names = {fx.symbol for fx in fixups if fx.symbol_kind == 'LCLSYM'}
        locals_ = {name: dump.locals[name] - off for name in local_names
                   if name in dump.locals}
        data_locals = {name: _local_data(dump, name) for name in local_names
                       if name in dump.data_locals}
        func = Func(pf['name'], pf['module'] or module, off, seg, fixups,
                    locals_, omf_name(pf['name'], compiler), data_locals)
        result.functions[func.key] = func
    return result
