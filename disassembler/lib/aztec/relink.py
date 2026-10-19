"""Link a C-compiled routine against the asm namespace.

``cc`` produces an object, not a linked image: every call, data reference and
branch is a placeholder plus a relocation record.  The first C splice took the
relocated bytes from the original image at the same offset, which only works
while the routine still occupies the original bytes and ignores the symbol the
C actually named.  Here the relocations are resolved the way a linker would:

* **externals** (``WREL``/``WABS`` to a ``GBLSYM``) name an asm label directly
  -- the C identifier *is* the label, plus the one ``_`` Aztec appends
  (``aztec_open_`` -> ``aztec_open``).  The label is looked up in the build's
  own label maps; an unknown symbol is an error, never a zero fill;
* **local branches** (``BREL``/``WREL`` to ``.N``) use the object's own local
  label table, so the labels follow the code the compiler actually produced;
* **module-local data** (``.N`` in the object's data segment: a ``static`` or
  a string literal) is where the original link put it -- the address the
  original instruction carries -- and the bytes the C gives it must be the
  bytes the exe has there;
* anything else is an error: a reference the build cannot name would stay a
  number copied from the original image.

The result carries the relocated bytes *and* the operand text to emit
(``call aztec_open``), so NASM -- which assembles the whole listing -- is the
linker and the emitted source stays valid when layout moves.
"""

import re

from lib.symtab import Kind, Symbol

from .objread import external_label

#: A data name spelled by address (``dseg_8482``/``bss_8482``): the C may name
#: a DS object no asm operand names yet, but only by its canonical spelling.
_DATA_BY_ADDRESS = re.compile(r'(?:dseg|bss)_([0-9a-f]{4})')


#: Symbols the Aztec linker itself defines (no C module does), by the name the
#: renderer gives the same value (``lib.compare.render.image_geometry``).
LINKER_SYMBOLS = {'_Cend': '__zres_end', '_Uend': '__zdseg_end'}


def linked_name(c_name):
    """The asm name of C external *c_name*: itself, or the linker symbol's."""
    return LINKER_SYMBOLS.get(c_name, c_name)


class RelinkError(ValueError):
    """A relocation could not be resolved against the asm namespace."""


class SymbolIndex:
    """``name -> address`` for the build's code labels and data symbols.

    *label_map* / *foreign_label_map* map file offsets to code labels (the
    space calls and jumps are measured in); *data_labels* and *mem_equ* name
    data-segment offsets.  *data_symbol* maps a DS offset to the build's
    canonical name for it (``lib.compare.symbols.data_symbol``), or is None
    where the image has no data segment.  *data_bytes* ``(offset, n)`` reads
    the exe's initialized data there (None for uninitialized storage).
    *image_base* is where CS offset 0 sits in the file, which a code label's
    address as a value (``cls_ = closall``) needs; None where code addresses
    do not follow that convention.  *data_names* are the image's known DS
    names (``{offset: Symbol}``, ``SegmentModel.data_names``).
    """

    def __init__(self, label_map=None, foreign_label_map=None,
                 data_labels=None, mem_equ=None, data_symbol=None,
                 data_bytes=None, image_base=None, data_names=None):
        self.data_symbol = data_symbol
        # The image's known DS names (the vendor C's, the library's) by name,
        # whether or not an asm operand uses them yet.
        self.named_data = {str(sym): sym for sym in (data_names or {}).values()}
        self.data_bytes = data_bytes
        self.image_base = image_base
        self.code = {}
        for maps in (label_map, foreign_label_map):
            for addr, name in (maps or {}).items():
                if isinstance(name, str):
                    self.code.setdefault(name, addr)
        self.data = {}
        for addr, name in (data_labels or {}).items():
            if isinstance(name, str):
                self.data.setdefault(name, addr)
        for name, value in (mem_equ or {}).items():
            self.data.setdefault(name, value)


class Ref:
    """A relocated operand: where it is, what to print, what NASM must know."""

    __slots__ = ('offset', 'width', 'text', 'flow', 'equ')

    def __init__(self, offset, width, text, flow, equ):
        self.offset = offset
        self.width = width
        self.text = text
        self.flow = flow
        self.equ = equ          # {name: value} the assembler must define


class Linked:
    """The outcome of linking one routine."""

    def __init__(self, code):
        self.code = code            # relocated bytes (bytearray)
        self.refs = {}              # fixup offset -> Ref
        self.local_records = []     # label records for derived local labels
        self.local_names = {}       # absolute address -> local label name
        self.minted = {}            # data names first defined by the C: {name: offset}
        self.failed = []            # refs whose operand text did not verify
        self.consumed = set()       # fixup offsets matched to an operand

    @property
    def unmatched(self):
        """Symbolic refs no decoded instruction operand claimed."""
        return sorted(set(self.refs) - self.consumed)


def _addend_text(addend):
    if not addend:
        return ''
    return f' + 0x{addend:x}' if addend > 0 else f' - 0x{-addend:x}'


def _resolved_branches(code, fixups):
    """``{operand offset: (width, target offset)}`` of in-routine branches
    the assembler resolved itself, so the object has no fixup for them.

    Aztec's ``as`` turns an out-of-range conditional into a short ``jcc`` over
    a near ``jmp``; that short ``jcc`` jumps to the code right after the
    ``jmp`` and needs a label like any other local branch.
    """
    from capstone import Cs, CS_ARCH_X86, CS_MODE_16
    covered = set()
    for fx in fixups:
        covered.update(range(fx.offset, fx.offset + fx.width))
    out = {}
    for insn in Cs(CS_ARCH_X86, CS_MODE_16).disasm(bytes(code), 0):
        op = insn.bytes[0]
        if 0x70 <= op <= 0x7f or 0xe0 <= op <= 0xe3 or op == 0xeb:
            width = 1
        elif op in (0xe8, 0xe9):
            width = 2
        else:
            continue
        site = insn.address + insn.size - width
        if covered & set(range(site, site + width)):
            continue
        disp = int.from_bytes(code[site:site + width], 'little', signed=True)
        target = insn.address + insn.size + disp
        if 0 <= target < len(code):
            out[site] = (width, target)
    return out


def _put(code, offset, width, value):
    value &= (1 << (8 * width)) - 1
    code[offset:offset + width] = value.to_bytes(width, 'little')


def link(label, start, func, index, original, labels_in=()):
    """Resolve *func*'s relocations for placement at file offset *start*.

    *original* is the original image: its relocated words say where the
    original link put the module's own data.  *labels_in* are the
    ``(offset, name)`` labels the build already placed inside the routine;
    non-local ones keep their name when a derived branch target lands on them.
    """
    code = bytearray(func.code)
    out = Linked(code)

    def unknown(fx, why):
        what = fx.symbol or ' '.join(x.strip() for x in fx.expr or ())
        raise RelinkError(f'{label}: relocation at +0x{fx.offset:x} '
                          f'({fx.kind} {fx.symbol_kind} {what}): {why}')

    def canonical_data(fx, value):
        canonical = (index.data_symbol(value)
                     if index.data_symbol else None)
        if canonical is None:
            unknown(fx, 'this image has no data segment')
        return canonical

    def put_data(fx, name, value):
        _put(code, fx.offset, 2, value + fx.addend)
        out.refs[fx.offset] = Ref(fx.offset, 2, name + _addend_text(fx.addend),
                                  False, {name: value})

    named = {}
    for offset, name in labels_in:
        if name.kind is not Kind.LOCAL:
            named.setdefault(offset, name)

    locals_ = [fx for fx in func.fixups
               if fx.symbol_kind == 'LCLSYM' and fx.kind in ('BREL', 'WREL')]
    local_ids = {id(fx) for fx in locals_}
    targets = set()
    for fx in locals_:
        if fx.symbol not in func.locals:
            raise RelinkError(
                f'{label}: branch at +0x{fx.offset:x} targets undefined '
                f'local label {fx.symbol}')
        targets.add(start + func.locals[fx.symbol])
    resolved = _resolved_branches(code, func.fixups)
    targets.update(start + target for _width, target in resolved.values())
    fresh = sorted(t for t in targets if t not in named)
    for t in targets & set(named):
        out.local_names[t] = named[t]
    for i, t in enumerate(fresh):
        name = Symbol.local(label, t, i + 1)
        out.local_names[t] = name
        out.local_records.append(
            {'type': 'label', 'text': f'{name}:', 'name': name, 'offset': t})
    for site, (width, target) in resolved.items():
        name = out.local_names[start + target]
        out.refs[site] = Ref(site, width, name, True, {name: start + target})

    for fx in func.fixups:
        site = fx.offset
        width = fx.width
        if site + width > len(code):
            unknown(fx, 'runs past the end of the routine')
        if id(fx) in local_ids:
            target = start + func.locals[fx.symbol]
            disp = target - (start + site + width)
            if width == 1 and not -128 <= disp <= 127:
                raise RelinkError(
                    f'{label}: short branch at +0x{site:x} to {fx.symbol} '
                    f'is out of range ({disp})')
            _put(code, site, width, disp)
            name = out.local_names[target]
            out.refs[site] = Ref(site, width, name, True, {name: target})
        elif fx.symbol_kind == 'GBLSYM' and fx.kind == 'WREL':
            name = external_label(fx.symbol)
            if name not in index.code:
                raise RelinkError(
                    f'{label}: call to unknown symbol {name!r} '
                    f'(from C identifier {fx.symbol!r}); the C must name an '
                    f'asm label')
            target = index.code[name]
            _put(code, site, 2, target - (start + site + 2))
            out.refs[site] = Ref(site, 2, name, True, {name: target})
        elif fx.symbol_kind == 'GBLSYM' and fx.kind == 'WABS':
            name = linked_name(external_label(fx.symbol))
            if name in index.data:
                put_data(fx, name, index.data[name])
            elif name in index.code:
                # A code address as a value (a function pointer): the label
                # is a file offset, the value its CS offset.
                if index.image_base is None:
                    unknown(fx, 'a code address as a value needs the image '
                                'base, which this image does not have')
                target = index.code[name]
                _put(code, site, 2, target - index.image_base + fx.addend)
                out.refs[site] = Ref(
                    site, 2, f'{name} - IMAGE_BASE' + _addend_text(fx.addend),
                    False, {name: target})
            elif name in index.named_data:
                # A known DS name (``ctp_``) no asm operand uses yet: the C
                # is the first, so it defines it.
                sym = index.named_data[name]
                put_data(fx, sym, sym.offset)
                out.minted[sym] = sym.offset
            elif _DATA_BY_ADDRESS.fullmatch(name):
                # ``dseg_6a1a``: a DS object no asm operand names (an
                # overlay's reach into the host's data).  It becomes a build
                # symbol under its canonical spelling -- a wrong
                # ``dseg_``/``bss_`` prefix would otherwise name nothing.
                value = int(_DATA_BY_ADDRESS.fullmatch(name).group(1), 16)
                canonical = canonical_data(fx, value)
                if canonical != name:
                    raise RelinkError(
                        f'{label}: data reference {name!r} (from C identifier '
                        f'{fx.symbol!r}): the build calls DS:0x{value:04x} '
                        f'{canonical!r}')
                put_data(fx, canonical, value)
                out.minted[canonical] = value
            else:
                raise RelinkError(
                    f'{label}: reference to unknown symbol {name!r} '
                    f'(from C identifier {fx.symbol!r}); the C must name an '
                    f'asm label')
        elif (fx.symbol_kind == 'LCLSYM' and fx.kind == 'WABS'
              and fx.symbol in (func.data_locals or {})):
            # The C's own ``static`` or string literal.  The splice does not
            # emit the object's data segment: the exe already holds it, at
            # the address the original instruction carries.
            word = int.from_bytes(original[start + site:start + site + 2],
                                  'little')
            value = (word - fx.addend) & 0xffff
            name = canonical_data(fx, value)
            want = func.data_locals[fx.symbol]
            have = index.data_bytes(value, len(want)) if want else None
            if want and have != want:
                unknown(fx, f'the C gives DS:0x{value:04x} {name} the bytes '
                            f'{want.hex()}, the exe has '
                            f'{have.hex() if have else "no initialized data"}')
            put_data(fx, name, value)
            out.minted[name] = value
        else:
            unknown(fx, 'not a relocation the linker can name')
    return out
