"""Aztec C86 v5.2a object handling for the C-overlay rebuild.

The vendor ``OBD`` utility (``BIN/OBD.EXE``) decodes a native Aztec ``.O``
object into a regular text listing.  We parse that listing to recover the
code bytes plus the relocation records, then apply the relocations against
the addresses the disassembler already resolved.  This lets a byte-exact
function compiled from C be spliced back into the flat-image rebuild.
"""

import re

_DATA_RE = re.compile(r'^Code \(([0-9a-fA-F]+)\): Data\(\s*(\d+)\)\s*(.*)$')
_CODE_RE = re.compile(r'^Code \(([0-9a-fA-F]+)\): (.+?)\s*$')
# OBD omits the kind for a plain segment-relative (absolute) word reference.
_DEFAULT_FIXUP = 'WABS'

# Bytes overwritten by each relocation kind (small model is 16-bit).
_FIXUP_WIDTH = {
    'BREL': 1, 'BABS': 1, 'BOFF': 1,
    'WREL': 2, 'WABS': 2, 'WOFF': 2, 'W': 2, 'WSEG': 2,
    'DREL': 4, 'DABS': 4, 'DOFF': 4,
}


def is_reloc(fx):
    """Whether *fx* patches code bytes (as opposed to OBD debug output).

    OBD prints a ``Code (xxxx)`` line for source lines, type records and block
    markers as well as for relocations; only a known patch kind aimed at a
    global, local-label or segment target patches bytes.
    """
    return ((fx.kind or '').upper() in _RELOC_KINDS
            and (fx.symbol_kind or '').upper() in _RELOC_SYMBOL_KINDS)


def is_pc_relative(kind):
    """True when a relocation kind patches a displacement (call/jmp target)."""
    return (kind or '').upper() in _PCREL_KINDS


def external_label(symbol):
    """The assembler label an Aztec external names (``aztec_open_`` -> ``aztec_open``).

    The compiler appends exactly one ``_`` to every external reference; the
    asm label is the rest, verbatim.
    """
    if not symbol or not symbol.endswith('_'):
        return symbol
    return symbol[:-1]


def fixup_width(kind):
    """Number of bytes a relocation patches (defaults to 2)."""
    return _FIXUP_WIDTH.get((kind or '').upper(), 2)


# Relocation kinds OBD prints for a real patch site.  Everything else it lists
# under ``Code (xxxx)`` (``LCLSYM .N`` local-label definitions, ``type:``,
# ``line #``, ``Block start``, ``Expr ...``) is debug/structure information.
_RELOC_KINDS = frozenset(_FIXUP_WIDTH)
# Symbol kinds that name a relocation target.
_RELOC_SYMBOL_KINDS = frozenset({'GBLSYM', 'LCLSYM', 'DATASEG', 'CODESEG'})
# Kinds whose patched value is a displacement from the end of the field.
_PCREL_KINDS = frozenset({'BREL', 'WREL', 'DREL'})


class Fixup:
    """One relocation record of a compiled object.

    ``kind`` is the patch kind (``WREL``, ``WABS``, ``BREL`` ...), ``symbol_kind``
    what it targets (``GBLSYM`` external, ``LCLSYM`` local label, ``DATASEG``,
    ``CODESEG``) and ``symbol`` the target's name as the compiler spells it
    (externals carry one trailing ``_``; locals are ``.N``).  ``addend`` is the
    constant of an ``Expr ADD`` (``tbl + 4``); ``expr`` keeps the raw
    continuation lines of an expression this module does not decode.
    """
    __slots__ = ('offset', 'kind', 'symbol_kind', 'symbol_index', 'symbol',
                 'addend', 'expr')

    def __init__(self, offset, kind, symbol_kind, symbol_index, symbol,
                 addend=0, expr=None):
        self.offset = offset
        self.kind = kind
        self.symbol_kind = symbol_kind
        self.symbol_index = symbol_index
        self.symbol = symbol
        self.addend = addend
        self.expr = expr

    @property
    def width(self):
        return fixup_width(self.kind)

    @property
    def is_reloc(self):
        """True for a real relocation record (not OBD debug output)."""
        return is_reloc(self)

    @property
    def is_external(self):
        """True when the target is a named global symbol (``GBLSYM``)."""
        return self.is_reloc and self.symbol_kind == 'GBLSYM' and bool(self.symbol)

    @property
    def is_local(self):
        """True for a branch to a label inside the same module (``LCLSYM``)."""
        return self.is_reloc and self.symbol_kind == 'LCLSYM'

    def to_list(self):
        return [self.offset, self.kind, self.symbol_kind, self.symbol_index,
                self.symbol, self.addend, self.expr]

    @classmethod
    def from_list(cls, row):
        return cls(*row)

    def __repr__(self):
        extra = f' {self.addend:+d}' if self.addend else ''
        return (f'Fixup(0x{self.offset:x}, {self.kind}, '
                f'{self.symbol_kind} {self.symbol!r}{extra})')


class ObjDump:
    """Code bytes and relocations recovered from an ``OBD`` listing."""

    def __init__(self):
        self.code = bytearray()
        self.fixups = []
        # Module-relative offsets of the ``.N`` local labels, by name; filled
        # from the raw object (OBD does not print their definitions).
        self.locals = {}
        self.data_locals = {}

    def __len__(self):
        return len(self.code)

    def apply_fixups(self, base, resolve, endian='little'):
        """Return a copy of *code* with relocations resolved.

        ``base`` is the absolute address the code will be placed at;
        ``resolve(symbol)`` returns the absolute address of a symbol (or
        raises ``KeyError``).
        """
        out = bytearray(self.code)
        for fx in self.fixups:
            target = resolve(fx.symbol)
            loc = fx.offset
            if loc + 2 > len(out):
                raise ValueError(f'fixup at 0x{loc:x} outside code')
            if fx.kind == 'WREL':
                value = target - (base + loc) - 2
            elif fx.kind in ('WABS', 'WOFF', 'W'):
                value = target
            elif fx.kind == 'WSEG':
                value = target >> 4
            else:
                raise ValueError(f'unsupported fixup kind {fx.kind!r} '
                                 f'at 0x{loc:x} ({fx.symbol})')
            value &= 0xFFFF
            out[loc] = value & 0xFF
            out[loc + 1] = (value >> 8) & 0xFF
        return bytes(out)


_EXPR_SYM_RE = re.compile(r'^\s+([A-Z]+SYM)\s+(\d+),\s*(\S+)\s*$')
_EXPR_INT_RE = re.compile(r'^\s+[A-Z]*INT:\s*(-?\d+)\s*$')


def _parse_reloc(rest):
    """Parse the text after ``Code (xxxx): `` of a relocation line.

    Returns ``(kind, symbol_kind, index, symbol)`` or ``None`` for a line that
    is not a relocation (OBD prints source-line, type and block records too).
    """
    left, _, name = rest.partition(',')
    tokens = left.split()
    index = None
    symbol = name.strip() or None
    if tokens and tokens[-1].isdigit():
        index = int(tokens.pop())
    elif tokens and tokens[-1].startswith('.'):
        symbol = tokens.pop()          # ``BREL LCLSYM .3``: the local label
    symbol_kind = tokens.pop() if tokens else None
    kind = tokens.pop() if tokens else _DEFAULT_FIXUP
    return kind, symbol_kind, index, symbol


def parse_obd(text):
    """Parse ``OBD`` output into an :class:`ObjDump`.

    OBD prints a ``Code (xxxx)`` line for every data, relocation and
    segment-use record, and the segment-use / ``TheEnd`` record carries the
    code segment's total length.  The operands of a *trailing* relocation are
    suppressed from the data lines (they are held in the fixup record instead),
    so the decoded bytes can stop a few bytes short of the segment.  Track the
    highest ``Code`` address and pad below it, so a function's ``length``
    matches its OMF length instead of being clipped mid-instruction.  The
    padded bytes are relocation operands (``fixup.width`` says how many).

    ``Expr ADD`` records carry their operands on the following indented lines
    (``GBLSYM 3, tbl_`` and ``SMLINT: 4``): a word reference to ``tbl`` plus a
    constant.  Other expressions are kept raw (``fixup.expr``).
    """
    dump = ObjDump()
    code_len = 0
    lines = text.splitlines()
    i = 0
    while i < len(lines):
        line = lines[i].rstrip()
        i += 1
        m = _DATA_RE.match(line)
        if m:
            addr = int(m.group(1), 16)
            count = int(m.group(2))
            hexs = m.group(3).split()
            data = bytes(int(h, 16) for h in hexs)
            if len(data) != count:
                raise ValueError(
                    f'odd OBD data count at 0x{addr:x}: '
                    f'expected {count}, got {len(data)}')
            if len(dump.code) < addr + len(data):
                dump.code.extend(b'\x00' * (addr + len(data) - len(dump.code)))
            dump.code[addr:addr + len(data)] = data
            code_len = max(code_len, addr + len(data))
            continue
        m = _CODE_RE.match(line)
        if not m:
            continue
        addr = int(m.group(1), 16)
        code_len = max(code_len, addr)
        rest = m.group(2)
        if rest.startswith('Use ') or rest == 'TheEnd':
            continue
        if rest.startswith('Expr'):
            op = rest.split(None, 1)[1].strip() if ' ' in rest else ''
            body = []
            while i < len(lines) and not lines[i].startswith('Code ') \
                    and not lines[i].startswith('Data '):
                if lines[i].strip():
                    body.append(lines[i].rstrip())
                i += 1
            sym = [_EXPR_SYM_RE.match(b) for b in body]
            ints = [_EXPR_INT_RE.match(b) for b in body]
            if (op == 'ADD' and len(body) == 2 and sym[0] and ints[1]):
                dump.fixups.append(Fixup(
                    addr, _DEFAULT_FIXUP, sym[0].group(1), int(sym[0].group(2)),
                    sym[0].group(3), addend=int(ints[1].group(1))))
            else:
                dump.fixups.append(Fixup(addr, 'Expr', op, None, None,
                                         expr=body))
            continue
        kind, symbol_kind, index, symbol = _parse_reloc(rest)
        dump.fixups.append(Fixup(addr, kind, symbol_kind, index, symbol))
    if len(dump.code) < code_len:
        dump.code.extend(b'\x00' * (code_len - len(dump.code)))
    return dump


# Local symbol definitions in the raw object: ``<type> <seg> <offset16>``.  They
# are the file's trailer, in ``.0``, ``.1`` ... order, after the global symbol
# names.  ``seg`` is 0x80 for a code-segment label and 0x82 for a data-segment
# one (a static or string literal); ``type`` varies (02, 03, 09) and is not
# needed.  Names are ASCII, so a 0x80/0x82 byte in the third-from-last position
# cannot belong to a symbol name.
_SEG_CODE = 0x80
_SEG_DATA = 0x82


def parse_o_locals(blob):
    """Return ``[(seg, offset), ...]`` for ``.0``, ``.1`` ... from a ``.O``.

    OBD prints references to local labels (``BREL LCLSYM .3``) but not their
    definitions; those are the object's trailing 4-byte records.
    """
    records = []
    end = len(blob)
    while end >= 4 and blob[end - 3] in (_SEG_CODE, _SEG_DATA):
        records.append((blob[end - 3], blob[end - 2] | (blob[end - 1] << 8)))
        end -= 4
    records.reverse()
    return records


def attach_locals(dump, blob):
    """Fill ``dump.locals`` / ``dump.data_locals`` from the raw ``.O`` bytes.

    ``locals`` maps ``.N`` to a module code offset, ``data_locals`` to a module
    data offset.  Every ``.N`` the relocations reference must be defined.
    """
    records = parse_o_locals(blob)
    needed = [int(fx.symbol[1:]) for fx in dump.fixups
              if fx.symbol_kind == 'LCLSYM' and (fx.symbol or '').startswith('.')]
    if needed and max(needed) >= len(records):
        raise ValueError(
            f'object defines {len(records)} local labels but references '
            f'.{max(needed)}')
    dump.locals = {f'.{n}': off for n, (seg, off) in enumerate(records)
                   if seg == _SEG_CODE}
    dump.data_locals = {f'.{n}': off for n, (seg, off) in enumerate(records)
                        if seg == _SEG_DATA}
    return dump
