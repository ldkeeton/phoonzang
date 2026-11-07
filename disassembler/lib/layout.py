"""``make layout``: what in a binary only works at the original addresses.

``make link`` lays every module out where the original had it; ``build.sh``
links in its own order.  The bytes of a module that does not depend on where it
sits differ between the two images only where the linker wrote an address, and
there by exactly how far the address's target moved.  This module compares the
two images module by module and reports every word that breaks that rule:

``A`` (code differs)
    a word that changed although no address explains the change (the module
    compiled differently, or a ``.s`` encodes a position);
``B`` (address literal)
    an instruction operand or data word that kept the value of an old address
    whose symbol moved: an address spelt as a number (``npc_id_address =
    3638``), which ``ln`` cannot relocate;
``C`` (adjacency)
    a relocated word whose target moved with a *neighbouring* module, not with
    the one it points into: ``sym+N`` reaching past its own module.

Inputs per binary are the two images, ``ln -t``'s symbol table of each, and
the module start offsets the generated ``BIN.asm`` lists (``%include
"x.asm" ; 0x1234``), which are file offsets in the original image.
"""

import bisect
import re
import struct
from collections import Counter, namedtuple

CODE, DATA = 'code', 'data'

Finding = namedtuple('Finding', 'kind file module offset old new note')

_SYMBOL = re.compile(r'^([0-9a-fA-F]{4}):([0-9a-fA-F]{4})\s+(\S+)')
_INCLUDE = re.compile(r'^%include\s+"([^"]+)"\s*;\s*0x([0-9a-fA-F]+)')
_BSS_INCLUDE = re.compile(r'^%include\s+"([^"]+)"')
_RESB = re.compile(r'^\s*resb\s+(0x[0-9a-fA-F]+|\d+)', re.M)
_MARKERS = {'_Corg_', '_Cend_', '_Dorg_', '_Dend_', '_Uorg_', '_Uend_'}


# ---- symbol tables ----------------------------------------------------------

def parse_symbols(text):
    """``{name: (space, segment, offset)}`` from ``ln -t``'s table.

    The table lists the code symbols first and the data symbols from
    ``_Dorg_`` on (an overlay's table also holds its root's symbols, in the
    same two groups).  A table without ``_Dorg_`` (a ``.COM`` driver, one
    segment) is all code.
    """
    out = {}
    space = CODE
    for line in (text or '').splitlines():
        m = _SYMBOL.match(line.strip())
        if not m:
            continue
        segment, offset, name = int(m.group(1), 16), int(m.group(2), 16), m.group(3)
        if name == '_Dorg_':
            space = DATA
        out.setdefault(name, (space, segment, offset))
    return out


# ---- image geometry -------------------------------------------------------

class Image:
    """A linked binary: its bytes and how file offsets map to addresses."""

    def __init__(self, data, kind, symbols):
        self.data = data
        self.kind = kind
        self.symbols = symbols
        if kind == 'exe':
            self.header = struct.unpack_from('<H', data, 8)[0] * 16
            segs = [seg for space, seg, _ in symbols.values() if space == DATA]
            self.dseg = Counter(segs).most_common(1)[0][0] if segs else 0
            self.code = (self.header, self.header + self.dseg * 16, 0)
            self.datas = (self.header + self.dseg * 16, len(data), 0)
        elif kind == 'ovr':
            corg, csize, dorg = struct.unpack_from('<HHH', data, 2)
            self.header = 14
            self.dseg = None
            self.code = (14, 14 + csize, corg)
            self.datas = (14 + csize, len(data), dorg)
        else:  # .COM: one segment loaded at 0x100
            self.header = 0
            self.dseg = None
            self.code = (0, len(data), 0x100)
            self.datas = None

    def address(self, file_offset):
        """``(space, address)`` of a file offset, or None in a header."""
        for space, part in ((CODE, self.code), (DATA, self.datas)):
            if part and part[0] <= file_offset < part[1]:
                return space, part[2] + file_offset - part[0]
        return None

    def file_offset(self, space, address):
        """The file offset of an address, or None outside the image."""
        part = self.code if space == CODE or self.datas is None else self.datas
        offset = part[0] + address - part[2]
        return offset if part[0] <= offset < part[1] else None

    def word(self, file_offset):
        if 0 <= file_offset and file_offset + 2 <= len(self.data):
            return struct.unpack_from('<H', self.data, file_offset)[0]
        return None


def image_kind(output):
    ext = output.rsplit('.', 1)[-1].lower()
    return {'exe': 'exe', 'ovr': 'ovr'}.get(ext, 'com')


def _space_key(image, space):
    """The space a symbol is looked up in: a ``.COM`` has only one."""
    return CODE if image.datas is None else space


# ---- modules ------------------------------------------------------------------

Region = namedtuple('Region', 'module space start end delta dropped',
                    defaults=(False,))


def module_spans(asm_text, old, read_include):
    """``[(module path, space, start, end)]`` of the original layout.

    Image modules come from the generated ``BIN.asm``'s ``%include "x.asm" ;
    0x1234`` lines (file offsets), each running to the next start in its
    space.  The uninitialized modules after ``absolute __zimage_end`` have no
    offsets: they follow the image in order, each as long as its ``resb``
    lines (*read_include* returns an include's text).
    """
    starts = []
    bss = []
    in_bss = False
    for line in asm_text.splitlines():
        line = line.strip()
        if line.startswith('absolute __zimage_end'):
            in_bss = True
            continue
        if in_bss:
            m = _BSS_INCLUDE.match(line)
            if m:
                bss.append((m.group(1), _resb(read_include(m.group(1)) or '')))
                continue
            m = _RESB.match(line)
            if m:
                bss.append((None, int(m.group(1), 0)))
            continue
        m = _INCLUDE.match(line)
        if m:
            starts.append((m.group(1), int(m.group(2), 16)))
    spans = []
    placed = sorted((old.address(offset), path) for path, offset in starts
                    if old.address(offset) is not None)
    for i, ((space, start), path) in enumerate(placed):
        end = None
        for (space2, start2), _ in placed[i + 1:]:
            if space2 == space:
                end = start2
                break
        if end is None:
            part = old.code if space == CODE or old.datas is None else old.datas
            end = part[2] + part[1] - part[0]
        spans.append((path, space, start, end))
    if old.datas is not None:
        addr = old.datas[2] + old.datas[1] - old.datas[0]
    else:
        addr = old.code[2] + old.code[1] - old.code[0]
    space = DATA if old.datas is not None else CODE
    for path, size in bss:
        if path is not None and size:
            spans.append((path, space, addr, addr + size))
        addr += size
    return spans


def _resb(text):
    return sum(int(n, 0) for n in _RESB.findall(text))


def regions(spans, old, new):
    """Each module span of *old* (:func:`module_spans`), with how far *new*
    moved it.

    Its delta is what every public symbol inside it agrees on (``new - old``).
    A span whose symbols disagree is split at each symbol.  One with no
    symbol is located by its bytes when they occur once in *new*; else its
    delta is None (:func:`infer_deltas` may find it later).  A span whose
    symbols are all missing from *new* was not linked: ``dropped``.
    """
    by_space = {}
    gone = {}
    for name, (space, _, addr) in old.symbols.items():
        if name in _MARKERS:
            continue
        key = _space_key(old, space)
        if name in new.symbols:
            by_space.setdefault(key, []).append((addr, name))
        else:
            gone.setdefault(key, []).append(addr)
    for values in by_space.values():
        values.sort()
    for values in gone.values():
        values.sort()

    out = []
    for path, space, start, end in spans:
        inside = by_space.get(space, [])
        lo = bisect.bisect_left(inside, (start, ''))
        hi = bisect.bisect_left(inside, (end, ''))
        moves = [(addr, new.symbols[name][2] - addr)
                 for addr, name in inside[lo:hi]]
        deltas = {d for _, d in moves}
        if len(deltas) == 1:
            out.append(Region(path, space, start, end, deltas.pop()))
        elif moves:
            # Split at each symbol: the bytes before the first one follow it.
            cuts = [start] + [addr for addr, _ in moves[1:]] + [end]
            for (a, b), (_, d) in zip(zip(cuts, cuts[1:]), moves):
                out.append(Region(path, space, a, b, d))
        else:
            missing = gone.get(space, [])
            dropped = (bisect.bisect_left(missing, end)
                       > bisect.bisect_left(missing, start))
            out.append(Region(path, space, start, end,
                              None if dropped else
                              _find_bytes(old, new, space, start, end),
                              dropped))
    return out


def _find_bytes(old, new, space, start, end):
    """The delta that puts *old*'s bytes [start, end) once in *new*, or None."""
    a, b = old.file_offset(space, start), old.file_offset(space, end - 1)
    if a is None or b is None or b + 1 - a < 4:
        return None
    blob = old.data[a:b + 1]
    part = new.code if space == CODE or new.datas is None else new.datas
    hay = new.data[part[0]:part[1]]
    first = hay.find(blob)
    if first < 0 or hay.find(blob, first + 1) >= 0:
        return None
    return (part[2] + first) - start


class Moves:
    """Where each old address went: module regions, then symbols (BSS and
    anything no module region covers), for one binary and its root."""

    def __init__(self, image, new, region_list, root=None):
        self.image = image
        self.root = root
        self.regions = {}
        for r in region_list:
            self.regions.setdefault(r.space, []).append(r)
        for values in self.regions.values():
            values.sort(key=lambda r: r.start)
        self.starts = {s: [r.start for r in rs] for s, rs in self.regions.items()}
        self.symbols = {}
        for name, (space, _, addr) in image.symbols.items():
            if name in new.symbols:
                key = _space_key(image, space)
                self.symbols.setdefault(key, []).append(
                    (addr, new.symbols[name][2] - addr, name))
        for values in self.symbols.values():
            values.sort()
        self.moved = {}
        for space, values in self.symbols.items():
            for addr, delta, name in values:
                if delta and name not in _MARKERS:
                    self.moved.setdefault(space, {}).setdefault(addr, name)

    def region(self, space, address):
        starts = self.starts.get(space, [])
        i = bisect.bisect_right(starts, address) - 1
        if i >= 0:
            r = self.regions[space][i]
            if r.start <= address < r.end:
                return r
        return None

    def delta(self, space, address):
        """``(delta, where)`` the old *address* moved by, or None."""
        r = self.region(space, address)
        if r is not None and r.delta is not None:
            return r.delta, r.module
        if self.root is not None:
            found = self.root.delta(space, address)
            if found is not None:
                return found
        values = self.symbols.get(space, [])
        i = bisect.bisect_right(values, (address, float('inf'), '')) - 1
        if i >= 0:
            return values[i][1], values[i][2]
        return None

    def moved_name(self, space, address):
        name = self.moved.get(space, {}).get(address)
        if name is None and self.root is not None:
            name = self.root.moved_name(space, address)
        return name

    def neighbours(self, space, address):
        """The deltas of the regions just before and after *address*'s."""
        starts = self.starts.get(space, [])
        i = bisect.bisect_right(starts, address) - 1
        out = []
        for j in (i - 1, i + 1):
            if 0 <= j < len(starts):
                r = self.regions[space][j]
                if r.delta is not None:
                    out.append((r.delta, r.module))
        return out


# ---- comparison -------------------------------------------------------------

def _explains(moves, old, new, space, file_old, vo, vn):
    """True when the change ``vo -> vn`` at *file_old* is a relocation."""
    spaces = (CODE,) if old.datas is None else (CODE, DATA)
    for target in spaces:
        # ``vo - 1`` too: a pointer one past an array's end (``Cbuffs +
        # MAXSTREAM``) is the address of whatever follows it, but ln moves
        # it with the array.
        for owner in (vo, vo - 1):
            found = moves.delta(target, owner)
            if found is not None and (vo + found[0]) & 0xffff == vn:
                return True
    if old.kind == 'exe' and vo == old.dseg and vn == new.dseg:
        return True
    if space == CODE:
        # A near call/jmp: rel16 changes by target move minus own move.
        here = old.address(file_old)
        if here is not None:
            target = (here[1] + 2 + vo) & 0xffff
            own = moves.delta(CODE, here[1])
            found = moves.delta(CODE, target)
            if own and found and (vo + found[0] - own[0]) & 0xffff == vn:
                return True
    return False


def infer_deltas(region_list, old, new, root=None):
    """*region_list* with the delta of each unplaced span filled in from the
    relocated words that point into it, when they all agree.

    A module's private data and BSS have no public symbol; the code that uses
    them still says where they went.
    """
    unknown = [r for r in region_list if r.delta is None and not r.dropped]
    if not unknown:
        return region_list
    moves = Moves(old, new, region_list, root)
    votes = {}
    for r in region_list:
        if r.delta is None:
            continue
        a = old.file_offset(r.space, r.start)
        b = old.file_offset(r.space, r.end - 1)
        if a is None or b is None:
            continue
        shift = (new.file_offset(r.space, r.start + r.delta) or 0) - a
        for x in range(a, b):
            y = x + shift
            if y + 2 > len(new.data):
                break
            vo, vn = old.word(x), new.word(y)
            if vo == vn or _explains(moves, old, new, r.space, x, vo, vn):
                continue
            for u in unknown:
                if u.start <= vo < u.end:
                    votes.setdefault(u, Counter())[(vn - vo) & 0xffff] += 1
    out = []
    for r in region_list:
        tally = votes.get(r)
        if tally:
            delta, count = tally.most_common(1)[0]
            if delta >= 0x8000:
                delta -= 0x10000
            r = r._replace(delta=delta)
        out.append(r)
    return out


def _adjacent(moves, old, vo, vn):
    """The neighbouring module whose move explains ``vo -> vn``, or None."""
    spaces = (CODE,) if old.datas is None else (CODE, DATA)
    for target in spaces:
        for delta, module in moves.neighbours(target, vo):
            if (vo + delta) & 0xffff == vn:
                return module
    return None


def compare(binary, old, new, region_list, moves, operands):
    """Every :class:`Finding` of one binary (see the module docstring).

    *operands* maps an old file offset to ``(width, text)`` for each
    instruction operand and data word that could hold an address
    (:func:`operand_words`).
    """
    findings = []
    for r in region_list:
        if r.dropped:
            findings.append(Finding('D', binary, r.module,
                                    old.file_offset(r.space, r.start), None,
                                    None, f'{r.space} {r.end - r.start} bytes'))
            continue
        if r.delta is None:
            a = old.file_offset(r.space, r.start)
            b = old.file_offset(r.space, r.end - 1)
            # BSS, or bytes all zero: nothing there can hold an address.
            if a is None or b is None or not any(old.data[a:b + 1]):
                continue
            findings.append(Finding('U', binary, r.module,
                                    old.file_offset(r.space, r.start), None,
                                    None, f'{r.space} {r.end - r.start} bytes '
                                    'not found in the new image'))
            continue
        a = old.file_offset(r.space, r.start)
        b = old.file_offset(r.space, r.end - 1)
        if a is None or b is None:
            continue
        shift = (new.file_offset(r.space, r.start + r.delta) or 0) - a
        x = a
        while x <= b:
            y = x + shift
            if y >= len(new.data) or old.data[x] == new.data[y]:
                if x in operands:
                    _literal(findings, binary, r, old, new, moves, x, shift,
                             operands[x])
                x += 1
                continue
            # A changed byte: try the word that starts here and the one
            # before (a relocation may change only its high byte).
            done = False
            for q in (x - 1, x):
                vo, vn = old.word(q), new.word(q + shift)
                if vo is None or vn is None or vo == vn:
                    continue
                if _explains(moves, old, new, r.space, q, vo, vn):
                    x = q + 2
                    done = True
                    break
            if done:
                continue
            q = x
            vo, vn = old.word(q), new.word(q + shift)
            module = _adjacent(moves, old, vo, vn) if vo is not None else None
            if module:
                findings.append(Finding('C', binary, r.module, q, vo, vn,
                                        f'moved with {module}'))
            else:
                findings.append(Finding('A', binary, r.module, q, vo, vn,
                                        operands.get(q, (0, '', None))[1]))
            x = q + 2
    return findings


def _literal(findings, binary, r, old, new, moves, x, shift, operand):
    width, text, hint = operand
    if width != 2:
        return
    vo, vn = old.word(x), new.word(x + shift)
    if vo is None or vo != vn:
        return
    if text == 'dw' and _in_text(old.data, x):
        return
    if old.datas is None:
        spaces = (CODE,)
    else:
        spaces = (hint,) if hint else (CODE, DATA)
    for space in spaces:
        name = moves.moved_name(space, vo)
        if name is not None:
            findings.append(Finding('B' if vo >= SMALL else 'b',
                                    binary, r.module, x, vo, vn,
                                    f'{space} {name} | {text}'))
            return


# ---- operand positions ------------------------------------------------------

def operand_words(old, region_list, data_like):
    """``{file offset: (width, text, space)}`` of words that could hold an
    address.

    Code regions are decoded (capstone): each 16-bit immediate and
    displacement that is not a branch target.  A displacement addresses DS
    (CS with a ``cs:`` override); an immediate or data word may be either
    (space None).  A region whose module
    *data_like* says is data (``ds/data/x``, ``x.data``) contributes a word at
    every byte, as packed C data has no alignment.
    """
    import capstone
    md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_16)
    md.detail = True
    branch = {capstone.x86.X86_GRP_JUMP, capstone.x86.X86_GRP_CALL}
    out = {}
    for r in region_list:
        a = old.file_offset(r.space, r.start)
        b = old.file_offset(r.space, r.end - 1)
        if a is None or b is None:
            continue
        if r.space == DATA or data_like(r.module):
            for x in range(a, b):
                out.setdefault(x, (2, 'dw', None))
            continue
        blob = old.data[a:b + 1]
        pos = 0
        while pos < len(blob):
            decoded = False
            for insn in md.disasm(blob[pos:], r.start + pos):
                decoded = True
                base = a + pos
                text = f'{insn.mnemonic} {insn.op_str}'.strip()
                if not set(insn.groups) & branch:
                    if insn.imm_size == 2 and insn.imm_offset:
                        out[base + insn.imm_offset] = (2, text, None)
                    if (insn.disp_size == 2 and insn.disp_offset
                            and _absolute_memory(insn)):
                        out[base + insn.disp_offset] = (
                            2, text, CODE if 'cs:' in insn.op_str else DATA)
                pos += insn.size
            if not decoded:
                pos += 1
    return out


def _absolute_memory(insn):
    """True when a memory operand is ``[disp]`` alone: with a base or index
    register the displacement is a field offset, not an address."""
    import capstone.x86 as x86
    for op in insn.operands:
        if op.type == x86.X86_OP_MEM and (op.mem.base or op.mem.index):
            return False
    return True


def _in_text(data, x, run=4):
    """True when the word at *x* sits in a run of *run* or more printable
    bytes: text, whose letters often spell a small address."""
    def printable(b):
        return 0x20 <= b < 0x7f
    if not (x + 1 < len(data) and printable(data[x]) and printable(data[x + 1])):
        return False
    lo, hi = x, x + 2
    while lo > 0 and printable(data[lo - 1]):
        lo -= 1
    while hi < len(data) and printable(data[hi]):
        hi += 1
    return hi - lo >= run


#: Below this a literal equal to an address is listed as ``b``, not ``B``: so
#: many small counts and flags match the low addresses that only a review of
#: the instruction can tell an address apart.
SMALL = 0x100


def data_like(module):
    """True for a module path that holds data, not code."""
    return '/data/' in module or module.endswith('.data.asm')
