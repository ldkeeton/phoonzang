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

from lib.symtab import Kind, Source, Space, Symbol

from .objread import external_label

#: A data name spelled by address (``dseg_8482``/``bss_8482``): the C may name
#: a DS object no asm operand names yet, but only by its canonical spelling.
_DATA_BY_ADDRESS = re.compile(r'(?:dseg|bss)_([0-9a-f]{4})')


#: Symbols the Aztec linker itself defines (no C module does), by the name the
#: renderer gives the same value (``lib.compare.render.image_geometry``).
LINKER_SYMBOLS = {'_Cend': '__zres_end', '_Uend': '__zdseg_end'}

#: Linker symbols that mark a place rather than name an object: ``_Uorg`` is
#: where uninitialized data starts, so the build names it after the object
#: that starts there (``keep`` in vinstall, ``bss_0cf6`` in ds).
PLACE_SYMBOLS = frozenset({'_Uorg'})

#: An overlay is linked on its own, so its ``_Uend`` is the end of its own
#: uninitialized data (``o_dorg + o_dsize + o_bss``: ``$ovbgn`` clears up to
#: it), not the host's data-segment end: a place, like ``_Uorg``.
OVERLAY_PLACE_SYMBOLS = PLACE_SYMBOLS | {'_Uend'}


def linked_name(c_name, places=PLACE_SYMBOLS):
    """The asm name of C external *c_name*: itself, or the linker symbol's.

    A place symbol of the image (*places*) keeps its C name: the build names
    the object at that place instead.
    """
    if c_name in places:
        return c_name
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
    names (``{offset: Symbol}``, ``SegmentModel.data_names``).  *places* are
    the linker symbols that mark a place in this image.
    """

    def __init__(self, label_map=None, foreign_label_map=None,
                 data_labels=None, mem_equ=None, data_symbol=None,
                 data_bytes=None, image_base=None, data_names=None,
                 places=PLACE_SYMBOLS):
        self.data_symbol = data_symbol
        # The linker symbols that mark a place in this image (PLACE_SYMBOLS,
        # or OVERLAY_PLACE_SYMBOLS for an overlay).
        self.places = places
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
                self._add_data(name, addr)
        for name, value in (mem_equ or {}).items():
            self._add_data(name, value)

    def _add_data(self, name, value):
        # Data the code reaches through CS (``drv_file_handle``) is a file
        # offset like a code label, its value as an operand the CS offset.
        if getattr(name, 'space', None) is Space.CSEG:
            self.code.setdefault(name, value)
        else:
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


def _code_value(name, addend):
    """A code label's CS offset, the addend on the label (``conversions+1``)."""
    return f'{name}{_addend_text(addend)} - IMAGE_BASE'


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


def _neighbour_target(label, start, fx, func, index, original, labels_at):
    """``(name, address)`` of a module label outside the routine, read from
    the branch's displacement in the *original* image.  *labels_at* maps an
    address to the label the build placed there (a neighbour's own labels)."""
    site = start + fx.offset
    disp = int.from_bytes(original[site:site + fx.width], 'little', signed=True)
    target = site + fx.width + disp
    if start <= target < start + len(func.code):
        raise RelinkError(f'{label}: branch at +0x{fx.offset:x} targets '
                          f'undefined local label {fx.symbol}')
    names = sorted(name for name, addr in index.code.items() if addr == target)
    if not names and target in labels_at:
        names = [labels_at[target]]
    if not names:
        raise RelinkError(
            f'{label}: branch at +0x{fx.offset:x} to {fx.symbol} leaves the '
            f'routine for 0x{target:x}, where the build has no label')
    return names[0], target


def link(label, start, func, index, original, labels_in=(), labels_at=None):
    """Resolve *func*'s relocations for placement at file offset *start*.

    *original* is the original image: its relocated words say where the
    original link put the module's own data.  *labels_in* are the
    ``(offset, name)`` labels the build already placed inside the routine;
    non-local ones keep their name when a derived branch target lands on them.
    *labels_at* (``{offset: name}``) is every label the build placed, for a
    branch that leaves the routine for a module label beside it.
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

    # A target keeps the name the build gave it: a global, or a local label
    # (``@..aztec_mkdir.dircommon``, the vendor's) that a neighbour's branch
    # into this routine names too.  Only a target with neither is numbered.
    named, kept = {}, {}
    for offset, name in labels_in:
        if name.kind is not Kind.LOCAL:
            named.setdefault(offset, name)
        else:
            kept.setdefault(offset, name)

    branches = [fx for fx in func.fixups
                if fx.symbol_kind == 'LCLSYM' and fx.kind in ('BREL', 'WREL')]
    # A module's own label past this routine's end (an assembly module's
    # ``call emitchar`` into a neighbour proc the build splits off): the
    # original image says where the branch lands, the build's label there
    # names it.
    leaving = {id(fx): _neighbour_target(label, start, fx, func, index,
                                         original, labels_at or {})
               for fx in branches if not fx.symbol.startswith('.')
               and not 0 <= func.locals.get(fx.symbol, -1) < len(code)}
    locals_ = [fx for fx in branches if id(fx) not in leaving]
    local_ids = {id(fx) for fx in locals_}
    targets = set()
    for fx in locals_:
        targets.add(start + func.locals[fx.symbol])
    resolved = _resolved_branches(code, func.fixups)
    targets.update(start + target for _width, target in resolved.values())
    for t in targets & set(named):
        out.local_names[t] = named[t]
    # Every kept local stays, branched to from here or not: a neighbour's
    # branch (``chdir``'s ``jmp dircommon`` into ``mkdir``) names it too.
    for t in sorted(set(kept) - set(named)):
        if not start <= t < start + len(code):
            continue
        out.local_names[t] = kept[t]
        out.local_records.append(
            {'type': 'label', 'text': f'{kept[t]}:', 'name': kept[t],
             'offset': t})
    taken = {name.index for name in kept.values() if name.index is not None}
    number = 0
    for t in sorted(targets - set(named) - set(kept)):
        number += 1
        while number in taken:
            number += 1
        name = Symbol.local(label, t, number)
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
        if id(fx) in leaving:
            name, target = leaving[id(fx)]
            _put(code, site, width, target - (start + site + width))
            out.refs[site] = Ref(site, width, name, True, {name: target})
        elif id(fx) in local_ids:
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
            name = linked_name(external_label(fx.symbol), index.places)
            if name in index.places:
                word = int.from_bytes(original[start + site:start + site + 2],
                                      'little')
                value = (word - fx.addend) & 0xffff
                sym = Symbol(name, kind=Kind.DATA, source=Source.LIBRARY,
                             offset=value,
                             space=canonical_data(fx, value).space)
                put_data(fx, sym, value)
                out.minted[sym] = value
            elif name in index.data:
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
                    site, 2, _code_value(name, fx.addend),
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
        elif fx.symbol_kind == 'LCLSYM' and fx.kind == 'WABS':
            # An assembly module's own code label as a value (``conversions``,
            # a jump table in its code): a CS offset, read from the original.
            if index.image_base is None:
                unknown(fx, 'a code address as a value needs the image '
                            'base, which this image does not have')
            word = int.from_bytes(original[start + site:start + site + 2],
                                  'little')
            target = ((word - fx.addend) & 0xffff) + index.image_base
            names = sorted(n for n, addr in index.code.items() if addr == target)
            name = (names[0] if names else (labels_at or {}).get(target)
                    or out.local_names.get(target))
            if name is None and start <= target < start + len(code):
                name = Symbol.local(label, target, name=fx.symbol,
                                    source=Source.SIGNATURE)
                out.local_names[target] = name
                out.local_records.append({'type': 'label', 'text': f'{name}:',
                                          'name': name, 'offset': target})
            if name is None:
                unknown(fx, f'the build has no label at 0x{target:x}')
            _put(code, site, 2, target - index.image_base + fx.addend)
            out.refs[site] = Ref(
                site, 2, _code_value(name, fx.addend),
                False, {name: target})
        elif fx.symbol_kind == 'DATASEG' and fx.kind == 'WABS':
            # The data segment's paragraph (``mov bp,dataseg``): DOS adds the
            # load segment through the exe's relocation table, so the word is
            # the original's and the operand stays the number it decodes to.
            _put(code, site, 2, int.from_bytes(
                original[start + site:start + site + 2], 'little'))
        else:
            unknown(fx, 'not a relocation the linker can name')
    return out
