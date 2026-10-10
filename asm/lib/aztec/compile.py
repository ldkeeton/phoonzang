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

import os
import shutil
import subprocess
import sys
import tempfile

from .objread import parse_obd, fixup_width
from . import sources

_DOSCOMP = os.path.join(
    os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))),
    'tools', 'dos_compilers')

_COMPILER_DIRS = {
    'v340a': os.path.join(_DOSCOMP, 'Manx Aztec C86 v340a'),
    'v52a': os.path.join(_DOSCOMP, 'Manx Aztec C86 v52a'),
}

DOSBOX = os.environ.get('WIZ7_DOSBOX', 'dosbox')

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

    def __repr__(self):
        return (f'Func({self.name!r}, off=0x{self.offset:x}, '
                f'len={len(self.code)}, fixups={len(self.fixups)})')


class CompiledModule:
    def __init__(self):
        self.functions = {}
        self.log = ''

    def get(self, name):
        return self.functions.get(name.strip('_').lower())


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
            f'objms {module}.O > OBJMS.LOG',
            f'obd {module}.O > OBD.TXT',
            'exit',
        ]
        argv = [exe, '-conf', os.path.join(work, 'dosbox.conf'), '-exit']
        for cmd in cmds:
            argv += ['-c', cmd]
        env = dict(os.environ)
        env['HOME'] = work
        env['SDL_VIDEODRIVER'] = 'dummy'
        env['SDL_AUDIODRIVER'] = 'dummy'
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
