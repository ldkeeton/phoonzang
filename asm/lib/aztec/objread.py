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


def fixup_width(kind):
    """Number of bytes a relocation patches (defaults to 2)."""
    return _FIXUP_WIDTH.get((kind or '').upper(), 2)


class Fixup:
    __slots__ = ('offset', 'kind', 'symbol_kind', 'symbol_index', 'symbol')

    def __init__(self, offset, kind, symbol_kind, symbol_index, symbol):
        self.offset = offset
        self.kind = kind
        self.symbol_kind = symbol_kind
        self.symbol_index = symbol_index
        self.symbol = symbol

    def __repr__(self):
        return (f'Fixup(0x{self.offset:x}, {self.kind}, '
                f'{self.symbol_kind} {self.symbol!r})')


class ObjDump:
    """Code bytes and relocations recovered from an ``OBD`` listing."""

    def __init__(self):
        self.code = bytearray()
        self.fixups = []

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


def parse_obd(text):
    """Parse ``OBD`` output into an :class:`ObjDump`."""
    dump = ObjDump()
    for raw in text.splitlines():
        line = raw.rstrip()
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
            continue
        m = _CODE_RE.match(line)
        if not m:
            continue
        rest = m.group(2)
        if rest.startswith('Use ') or rest == 'TheEnd':
            continue
        left, _, name = rest.partition(',')
        tokens = left.split()
        index = None
        if tokens and tokens[-1].isdigit():
            index = int(tokens.pop())
        symbol_kind = tokens.pop() if tokens else None
        kind = tokens.pop() if tokens else _DEFAULT_FIXUP
        dump.fixups.append(Fixup(
            offset=int(m.group(1), 16),
            kind=kind,
            symbol_kind=symbol_kind,
            symbol_index=index,
            symbol=name.strip() or None,
        ))
    return dump
