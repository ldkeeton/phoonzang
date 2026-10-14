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
* anything else (``Long`` far references, module-local data) keeps the legacy
  original-bytes overlay and is reported in :attr:`Linked.legacy`.

The result carries the relocated bytes *and* the operand text to emit
(``call aztec_open``), so NASM -- which assembles the whole listing -- is the
linker and the emitted source stays valid when layout moves.
"""

import re

from .objread import external_label

_RAW_DATA = re.compile(r'dseg_[0-9a-f]{4}')

LOCAL_PREFIX = '@..'


class RelinkError(ValueError):
    """A relocation could not be resolved against the asm namespace."""


class SymbolIndex:
    """``name -> address`` for the build's code labels and data symbols.

    *label_map* / *foreign_label_map* map file offsets to code labels (the
    space calls and jumps are measured in); *data_labels* and *mem_equ* name
    data-segment offsets.
    """

    def __init__(self, label_map=None, foreign_label_map=None,
                 data_labels=None, mem_equ=None):
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
        self.legacy = []            # Fixups left on the original-bytes path
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


def _put(code, offset, width, value):
    value &= (1 << (8 * width)) - 1
    code[offset:offset + width] = value.to_bytes(width, 'little')


def link(label, start, func, index, original, labels_in=()):
    """Resolve *func*'s relocations for placement at file offset *start*.

    *original* is the original image, used only for relocations this module
    does not model.  *labels_in* are the ``(offset, text)`` label lines the
    build already placed inside the routine; non-local ones keep their name
    when a derived branch target lands on them.
    """
    code = bytearray(func.code)
    out = Linked(code)

    def legacy(fx):
        n = min(fx.width, len(code) - fx.offset)
        if n > 0:
            chunk = original[start + fx.offset:start + fx.offset + n]
            chunk = chunk + bytes(n - len(chunk))
            code[fx.offset:fx.offset + n] = chunk
        out.legacy.append(fx)

    named = {}
    for offset, text in labels_in:
        if not text.startswith(LOCAL_PREFIX):
            named.setdefault(offset, text.rstrip(':'))

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
    fresh = sorted(t for t in targets if t not in named)
    for t in targets & set(named):
        out.local_names[t] = named[t]
    for i, t in enumerate(fresh):
        name = f'{LOCAL_PREFIX}{label}.l{i + 1}'
        out.local_names[t] = name
        out.local_records.append(
            {'type': 'label', 'text': f'{name}:', 'offset': t})

    for fx in func.fixups:
        site = fx.offset
        width = fx.width
        if site + width > len(code):
            legacy(fx)
            continue
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
            name = external_label(fx.symbol)
            if name in index.data:
                value = index.data[name]
                _put(code, site, 2, value + fx.addend)
                out.refs[site] = Ref(site, 2, name + _addend_text(fx.addend),
                                     False, {name: value})
            elif name in index.code:
                legacy(fx)      # address of code needs the image base
            elif _RAW_DATA.fullmatch(name):
                # ``dseg_01d4``: a data-segment offset no label names (an
                # overlay's reach into the host's data), taken as written.
                value = int(name[-4:], 16)
                _put(code, site, 2, value + fx.addend)
                out.refs[site] = Ref(site, 2, f'0x{value + fx.addend:04x}',
                                     False, {})
            else:
                raise RelinkError(
                    f'{label}: reference to unknown symbol {name!r} '
                    f'(from C identifier {fx.symbol!r}); the C must name an '
                    f'asm label')
        else:
            legacy(fx)
    return out
