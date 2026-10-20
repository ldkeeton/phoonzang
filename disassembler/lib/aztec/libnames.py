"""Names for runtime-library data, read from the library's own relocations.

A recognised Aztec routine is its library code byte for byte, except at the
relocation sites.  A site that names a data public (``errno_``) holds, in the
image, that datum's data-segment offset, so the library itself names the byte.
That name is the same in every binary that links the routine, and it is the
name the Manx C sources use.

Two kinds of routine are read: a signature-matched library module (its OMF
object), and a C routine the mux recovered (its seed compiled from the Manx
source, whose object carries the same relocations).
"""

import functools
import glob
import os

from lib.cachedirs import aztec_lib_obj_dir

from . import libobjs, omflib
from .build_db import LIB_DIRS, normalize
from .compile import aztec_name, routine_label
from .objread import external_label, fixup_width
from .relink import LINKER_SYMBOLS, PLACE_SYMBOLS

_DATA_LOCATIONS = (omflib.LOC_OFFSET, omflib.LOC_LOADER_OFFSET)


class _Code:
    """Object code: its bytes, every patched span, and its data references."""

    def __init__(self, code, patched, refs):
        self.code = bytes(code)
        self.patched = patched      # [(offset, width)]
        self.refs = refs            # [(offset, public, displacement)]

    def matches(self, image, start):
        """True when *image* holds this code at *start*.

        Relocation sites may differ, and so may an instruction's immediate
        constant (another library build's errno value): the instructions, and
        so what each site names, are the same.
        """
        end = start + len(self.code)
        if start < 0 or end > len(image):
            return False
        got = bytearray(image[start:end])
        for offset, width in self.patched:
            got[offset:offset + width] = self.code[offset:offset + width]
        if got == self.code:
            return True
        fields = _immediates(self.code)
        if fields is None:
            return False
        for offset, width in fields:
            got[offset:offset + width] = self.code[offset:offset + width]
        return got == self.code and _immediates(bytes(image[start:end])) == \
            fields

    def part(self, lo, hi):
        """The code of ``[lo, hi)`` alone (one public of a module)."""
        return _Code(self.code[lo:hi],
                     [(o - lo, w) for o, w in self.patched if lo <= o < hi],
                     [(o - lo, p, d) for o, p, d in self.refs if lo <= o < hi])

    def value(self, image, start, ref):
        """The data-segment offset a reference's site holds in *image*.

        The linker adds the target to what the object already holds in the
        field (``_Eol+1`` keeps the 1 there), and to the fixup's displacement.
        """
        offset, _, displacement = ref
        field = int.from_bytes(self.code[offset:offset + 2], 'little')
        site = start + offset
        return (int.from_bytes(image[site:site + 2], 'little')
                - field - displacement) & 0xFFFF


@functools.lru_cache(maxsize=4096)
def _immediates(code):
    """``((offset, width), ...)`` of every immediate field, or ``None``."""
    from capstone import Cs, CS_ARCH_X86, CS_MODE_16
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True
    fields = []
    end = 0
    for insn in md.disasm(code, 0):
        if insn.imm_size:
            fields.append((insn.address + insn.imm_offset, insn.imm_size))
        end = insn.address + insn.size
    return tuple(fields) if end == len(code) else None


class _Library:
    def __init__(self):
        self.data_publics = set()
        self.entries = {}           # library name -> [(_Code, start, end)]


@functools.lru_cache(maxsize=None)
def _library(project):
    """Every runtime module's code segment, indexed by its publics."""
    lib = _Library()
    modules = []
    for group in LIB_DIRS:
        for path in sorted(glob.glob(os.path.join(aztec_lib_obj_dir(project),
                                                  group, '*.OBJ'))):
            with open(path, 'rb') as f:
                blob = f.read()
            try:
                modules += [omflib.Module(blob, start, end)
                            for start, _, end in omflib.find_modules(blob)]
            except (IndexError, ValueError):
                continue
    for module in modules:
        module.pubdefs = [(libobjs.aztec_spelling(name), seg, offset)
                          for name, seg, offset in module.pubdefs]
        module.extdefs = [libobjs.aztec_spelling(name)
                          for name in module.extdefs]
    for module in modules:
        code = module.code_segments()
        lib.data_publics.update(name for name, seg, _ in module.pubdefs
                                if seg not in code)
    for module in modules:
        code = module.code_segments()
        statics = {(seg, offset): name for name, seg, offset in module.pubdefs
                   if seg not in code}
        for seg in code:
            fixups = [fx for fx in module.fixups if fx.seg == seg]
            refs = []
            for fx in fixups:
                if fx.self_relative or fx.location not in _DATA_LOCATIONS:
                    continue
                public, displacement = None, 0
                if fx.method == omflib.TARGET_EXTDEF:
                    public = module.extdefs[fx.index - 1]
                    displacement = fx.displacement
                elif fx.method == omflib.TARGET_SEGDEF and fx.index not in code:
                    public = statics.get((fx.index, fx.displacement))
                if public in lib.data_publics:
                    refs.append((fx.offset, public, displacement))
            whole = _Code(module.segbytes.get(seg, b''),
                          [(fx.offset, fx.width) for fx in fixups], refs)
            starts = sorted({offset for _, pub_seg, offset in module.pubdefs
                             if pub_seg == seg} | {len(whole.code)})
            for name, pub_seg, offset in module.pubdefs:
                if pub_seg == seg:
                    end = next(o for o in starts if o > offset or
                               o == len(whole.code))
                    lib.entries.setdefault(normalize(name), []).append(
                        (whole, offset, end))
    return lib


def _library_routines(lib, image, label_map):
    """``(start, _Code)`` for each signature-matched module.

    The whole module when the image holds it, else the routine's own public:
    a module linked from a slightly different library build (another errno
    constant elsewhere) still names the data its routine uses.
    """
    for start, sym in label_map.items():
        if getattr(sym, 'role', None) == 'aztec':
            for code, offset, end in lib.entries.get(sym.library, ()):
                if code.matches(image, start - offset):
                    yield start - offset, code
                else:
                    yield start, code.part(offset, end)


def _compiled_routines(lib, project, binary, image, label_map, entries,
                       cs_origin=None):
    """``(start, _Code)`` for each mux-recovered routine's pristine seed.

    Every data object the vendor source names is read, not only the library's
    publics: a ``static`` (``Argv`` in ``croot.c``), a name only a header
    spells (``ctp_`` in ``isdigit``), or an assembly module's own data
    (``save_ret`` in ``ovbgn.asm``) is that object's name too.  An address
    taken of code (``cls_ = closall``) is not data: its word is a CS offset,
    and a routine starts there (*cs_origin* is the file offset of CS:0).
    """
    from . import cache
    from .modules import module_key
    from .mux import compare
    starts = {str(sym): start for start, sym in label_map.items()}
    done = set()
    for label, entry in (entries or {}).items():
        if label not in starts or module_key(entry) in done:
            continue
        try:
            module, func = cache.compile_source_module(
                project, binary, label, entry,
                cache.seed_source_text(project, binary, label, entry))
        except Exception:
            continue
        offset = func.members.get(cache.own_key(label, entry))
        if offset is None:
            continue
        functions = {f.cname + '_' for f in module.functions.values()}
        functions |= {name + '_' for name in (*LINKER_SYMBOLS, *PLACE_SYMBOLS)}
        start = starts[label] - offset
        # The module where the image holds it whole, else the routine's own
        # bytes: only those are known to sit where the C puts them.
        if not compare(func, image, start)[0]:
            done.add(module_key(entry))
            lo, hi = 0, len(func.code)
        else:
            lo = offset
            hi = min([o for o in func.members.values() if o > offset]
                     + [len(func.code)])

        def code_address(fx):
            if cs_origin is None:
                return False
            site = start + fx.offset
            word = int.from_bytes(image[site:site + 2], 'little')
            return label_map.get(((word - fx.addend) & 0xFFFF)
                                 + cs_origin) is not None

        fixups = [fx.rebased(-lo) for fx in func.fixups
                  if lo <= fx.offset < hi]
        refs = [(fx.offset, fx.symbol, fx.addend) for fx in fixups
                if fx.symbol_kind == 'GBLSYM' and fx.kind == 'WABS'
                and fx.symbol not in functions
                and (fx.symbol in lib.data_publics
                     or not code_address(fx.rebased(lo)))]
        yield start + lo, _Code(
            func.code[lo:hi],
            [(fx.offset, fixup_width(fx.kind)) for fx in fixups], refs)


def _static_routines(func, image, pos, start_offset, span, publics):
    """``{offset: key}`` for the module's static routines *func* takes the
    address of.

    A static (``closall`` in ``putc.c``) has no public, so the module's
    function table folds it into the routine before it; but a reference to it
    is a relocation: ``cls_ = closall`` a code address whose site holds its CS
    offset, ``call _ovld_`` a displacement from the next instruction.  A
    target inside the module's own span is that static.
    """
    found = {}
    for fx in func.fixups:
        if (fx.symbol_kind != 'GBLSYM' or fx.kind not in ('WABS', 'WREL')
                or fx.symbol in publics):
            continue
        site = pos + fx.offset
        word = int.from_bytes(image[site:site + 2], 'little')
        if fx.kind == 'WREL':
            word += site - start_offset + 2
        target = ((word - (fx.addend or 0)) & 0xFFFF) + start_offset
        if span[0] <= target < span[1]:
            found[target] = aztec_name(fx.symbol)
    return found


def sibling_symbols(project, binary, image, label_map, entries,
                    start_offset=0):
    """``{offset: Symbol}`` for the vendor module's other routines.

    A routine the mux matched exactly came from a vendor module whose other
    publics sit beside it: ``read_`` before ``write_`` in ``io.asm``,
    ``strcat_`` before ``strncat_``.  Each that is byte-exact at its place
    (relocations aside) names a generic label there, and so does each static
    routine a matched one takes the address of.  The modules come from the
    prebuild's object cache; nothing is compiled here.
    """
    from lib.cachedirs import prebuild_dir
    from lib.sidecar.compiler import asm_flags, compiler_flags
    from lib.sidecar.vendor import vendor_patches
    from lib.symtab import Kind, Source, Symbol
    from . import cache, objcache
    from .compile import CompiledModule
    from .compile import LIBRARY_PREFIX
    from .mux import MuxEngine, compare
    objs = os.path.join(prebuild_dir(project), 'objs')
    lib = _library(project)
    engine = MuxEngine(objcache_dir=objs, patches=vendor_patches(project),
                       asm_flags=asm_flags(project),
                       c_flags=compiler_flags(project, LIBRARY_PREFIX,
                                              binary))
    starts = {str(sym): at for at, sym in label_map.items()}
    taken = set(starts)
    found = {}
    for label, entry in (entries or {}).items():
        at = starts.get(label)
        version, filename = entry.get('source_version'), entry.get('file')
        source = engine.source(version, filename) if at is not None else None
        if source is None:
            continue
        module = objcache.load(objs, engine.compile_key(
            version, filename, source, entry['compiler']))
        func = (module.get(cache._cname(label, entry))
                if isinstance(module, CompiledModule) else None)
        if func is None or compare(func, image, at)[0]:
            continue
        base = at - func.offset
        span = (base, base + max(f.offset + len(f.code)
                                 for f in module.functions.values()))
        publics = lib.data_publics | {f.cname + '_'
                                      for f in module.functions.values()}
        names, statics = {}, {}
        for sib in module.functions.values():
            pos = base + sib.offset
            if compare(sib, image, pos)[0]:
                continue
            names[pos] = sib.cname
            statics.update(_static_routines(sib, image, pos, start_offset,
                                            span, publics))
        for pos, key in statics.items():
            names.setdefault(pos, key)
        for pos, key in names.items():
            sym = label_map.get(pos)
            if sym is not None and sym.source in (Source.ADDRESS, Source.TAG):
                found.setdefault(pos, set()).add(key)
    labels = {pos: {routine_label(key): key for key in keys}
              for pos, keys in found.items()}
    return {pos: Symbol(name, kind=Kind.ROUTINE, source=Source.LIBRARY,
                        offset=pos, role='aztec', library=key)
            for pos, names in labels.items()
            for name, key in names.items()
            if len(names) == 1 and name not in taken}


def data_names(project, binary, image, label_map, entries=None,
               cs_origin=None):
    """``{data-segment offset: (name, public)}`` the library names in *image*.

    Only code that matches the image exactly (sites aside) is read.  A public
    seen at two offsets, or an offset given two names, is dropped rather than
    guessed.
    """
    lib = _library(project)
    found = {}
    routines = list(_library_routines(lib, image, label_map))
    routines += _compiled_routines(lib, project, binary, image, label_map,
                                   entries, cs_origin)
    for start, code in routines:
        if not code.refs or not code.matches(image, start):
            continue
        for ref in code.refs:
            found.setdefault(ref[1], set()).add(code.value(image, start, ref))
    by_offset = {}
    for public, values in found.items():
        if len(values) == 1:
            by_offset.setdefault(values.pop(), set()).add(public)
    result = {}
    for offset, publics in by_offset.items():
        if len(publics) == 1:
            public = publics.pop()
            result[offset] = (external_label(public), public)
    return result


def data_symbols(project, binary, image, label_map, segments, entries=None):
    """:func:`data_names` as ``{offset: Symbol}`` in *segments*' data spaces."""
    from lib.compare.symbols import _data_space
    from lib.symtab import Kind, Source, Symbol
    return {offset: Symbol(name, kind=Kind.DATA, source=Source.LIBRARY,
                           offset=offset, space=_data_space(segments, offset),
                           role='aztec', library=public)
            for offset, (name, public) in data_names(
                project, binary, image, label_map, entries,
                getattr(segments, 'cs_origin', None)).items()}
