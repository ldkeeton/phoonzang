"""Address-derived ("generic") label names and the host's name prefix.

Most labels are named after their address (``loc_08f2``, ``app_03b8``,
``leaf_loc_10108``).  An overlay includes the host's symbols to call into it, so
the host's generic names would collide with the overlay's own generic names of
the same shape.  The host therefore carries a prefix on them (``ds_loc_08f2``);
named routines (``dos_con_in_noecho``) keep their names.

The pipeline works with the plain names until the host is about to be emitted
(:func:`rename_generics`).  From then on its name checks go through
:func:`stem`, which looks through the prefix.
"""

import bisect
import hashlib

from capstone.x86 import X86_OP_IMM, X86_OP_MEM, X86_REG_CS, X86_REG_ES

from lib.symtab import Kind, Source, Space, Symbol

#: Prefix of the host's generic names while the host is being emitted.
_state = {'prefix': ''}


def set_generic_prefix(prefix):
    """Set the prefix given to generic names (``''`` for non-host binaries)."""
    _state['prefix'] = prefix


def generic_prefix():
    return _state['prefix']


def loc_name(offset):
    """The generic ``loc_<offset>`` label for the binary being emitted."""
    return Symbol.generated('loc', offset, Kind.LABEL, prefix=_state['prefix'])


def is_generic(name):
    """True for an address- or content-derived name (not a data/geometry one)."""
    return name.generic and name.kind is not Kind.DATA


def is_label(name):
    """True for a plain ``loc_`` label: a target inside some routine's body."""
    return name.kind is Kind.LABEL


def is_address_label(name):
    """True for a ``loc_<addr>`` label still named after its address (untagged)."""
    return name.kind is Kind.LABEL and name.source is Source.ADDRESS


def data_space(name):
    """The :class:`Space` of a data name, or ``None`` for a code name."""
    return name.space if name.kind is Kind.DATA else None


def is_data(name):
    """True for a label on data in the image (``data_<addr>``)."""
    return name.kind is Kind.DATA and name.space is Space.IMAGE


def rename_generics(label_map, function_roots=None, split_functions=None,
                    prefix=''):
    """Give every generic name the host *prefix*, in place.

    Applies to *label_map* values, *function_roots* values and the
    *split_functions* set.  Idempotent: a name that already carries the prefix
    is left alone.  Returns ``{old: new}``.
    """
    renames = {}

    def new_name(name):
        if (not isinstance(name, Symbol) or not prefix or name.prefix
                or not is_generic(name)):
            return name
        renames[name] = name.prefixed(prefix)
        return renames[name]

    for off, name in list(label_map.items()):
        label_map[off] = new_name(name)
    if function_roots:
        for off, name in list(function_roots.items()):
            function_roots[off] = new_name(name)
    if split_functions:
        renamed = {new_name(name) for name in split_functions}
        split_functions.clear()
        split_functions.update(renamed)
    return renames


#: Hex digit -> tag letter.  The tag is upper-case ``G``-``V``: never hex, and
#: never the tail of a routine's own lower-case name (``mouse_init``).
_TAG_ALPHABET = str.maketrans('0123456789abcdef', 'GHIJKLMNOPQRSTUV')


#: Bytes that only pad a routine out to the next one.
_PADDING = b'\x00\x90\xcc'


def _is_branch(insn):
    return (insn.mnemonic == 'call' or insn.mnemonic.startswith('j')
            or insn.mnemonic.startswith('loop'))


def content_tag(instructions, data, start, end, *,
                relocs=frozenset(), code_off=None, code_labels=frozenset()):
    """Four letters (``G``-``V``) identifying the code in ``[start, end)``.

    A hash of the routine's own bytes, so it does not depend on how we decode
    them (code or ``db``), only on where the routine starts and ends.  Every
    field that differs with the layout is masked (zeroed) or, when it points
    inside the routine, rebased to *start*; the decoded *instructions* only
    say where those fields are:

    * a near branch or call that leaves the routine (the opcode stays, so
      ``jmp short`` and ``jmp near`` still differ), a far pointer;
    * an absolute ``DS``/``SS`` memory operand (``[0x9b00]``: where a binary
      linked its globals) or ``CS`` one (``ES`` stays raw: BIOS, far data);
    * an imm16 naming a code label (``code_off`` maps it to a file offset,
      *code_labels* are the labels), and every MZ relocation word (*relocs*:
      the loader patches it).

    What a masked field points at never counts: our names for it change, the
    bytes do not.  Constants and register-relative displacements (frames, struct fields) are
    kept, as is any byte no instruction covers (tables, strings), but not the
    trailing padding: the next routine's distance differs between binaries.
    """
    cursor = start
    for insn in instructions:
        cursor = insn.address + insn.size
    keep = cursor - start + len(data[cursor:end].rstrip(_PADDING))
    buf = bytearray(data[start:end])
    ids = []

    def put(at, size, value=0):
        at -= start
        if 0 <= at and at + size <= len(buf):
            buf[at:at + size] = (value & ((1 << 8 * size) - 1)).to_bytes(
                size, 'little')

    for insn in instructions:
        if insn.bytes[0] in (0x9A, 0xEA):
            put(insn.address + 1, 4)
            ids.append('FAR')
            continue
        if (_is_branch(insn) and insn.operands
                and insn.operands[0].type == X86_OP_IMM):
            target = insn.operands[0].imm
            if not start <= target < end:
                put(insn.address + insn.imm_offset, insn.imm_size)
            continue
        for op in insn.operands:
            if (op.type == X86_OP_MEM and op.mem.base == 0
                    and op.mem.index == 0 and insn.disp_size):
                at = insn.address + insn.disp_offset
                if op.mem.segment == X86_REG_ES:
                    continue
                if op.mem.segment == X86_REG_CS and code_off:
                    file = code_off(op.mem.disp & 0xFFFF)
                    if start <= file < end:
                        put(at, insn.disp_size, file - start)
                        continue
                put(at, insn.disp_size)
                ids.append('D')
            elif (op.type == X86_OP_IMM and insn.imm_size == 2 and code_off
                    and code_off(op.imm & 0xFFFF) in code_labels):
                at = insn.address + insn.imm_offset
                file = code_off(op.imm & 0xFFFF)
                if start <= file < end:
                    put(at, 2, file - start)
                else:
                    put(at, 2)
    for at in sorted(r for r in relocs if start <= r < end):
        put(at, 2)
        ids.append('R')
    blob = bytes(buf[:keep]) + b'\n' + '\n'.join(ids).encode()
    return hashlib.md5(blob).hexdigest()[:4].translate(_TAG_ALPHABET)


def tag_generics(label_map, function_roots, instructions, data, size,
                 stubs=(), relocs=(), code_off=None):
    """Append each generic routine's :func:`content_tag` to its name, in place.

    The name then says which code it is: two functions never share one across
    binaries, and nothing shifts when a routine is added (no counters).  Applies
    to the generic function roots in *label_map* and *function_roots*, except a
    plain ``loc_``/``data_`` label.  *stubs* are offsets named
    ``<base>_<offset>`` (trampoline stubs, whose base is a dispatch index).
    Every address is dropped from the name; only copies of the *same* code
    within one binary keep theirs (``..._HQRK_02e3``), the one thing that can
    tell identical bytes apart, and without a count that would shift.
    *relocs* (MZ relocation word offsets) and *code_off* (an embedded CS value
    to its file offset) let :func:`content_tag` mask what the layout moves.
    Returns ``{old: new}``.
    """
    # A routine runs to the next *named* root: that is where its file ends (a
    # plain ``loc_`` root, or an anonymous call target, is inside its body).
    roots = sorted(off for off, name in function_roots.items()
                   if isinstance(name, str)
                   and not is_label(name) and not is_data(name))
    addrs = [insn.address for insn in instructions]
    stubs = set(stubs)
    every = sorted(function_roots)

    relocs = frozenset(relocs)
    code_labels = frozenset(function_roots) | frozenset(
        off for off, name in label_map.items()
        if isinstance(name, str) and not is_data(name))

    def tag(lo, hi, off, end):
        return content_tag(instructions[lo:hi], data, off, end,
                           relocs=relocs, code_off=code_off,
                           code_labels=code_labels)

    todo = []
    for index, off in enumerate(roots):
        name = label_map.get(off)
        if not isinstance(name, str):
            continue
        if off not in stubs and (not is_generic(name) or is_label(name)
                                 or is_data(name)):
            continue
        end = roots[index + 1] if index + 1 < len(roots) else size
        lo = bisect.bisect_left(addrs, off)
        hi = bisect.bisect_left(addrs, end)
        # The address goes: the name is the code's, not the place's.  A stub
        # keeps its dispatch index (``api_idx_0008``), which is not an address.
        todo.append((off, name, tag(lo, hi, off, end)))
    # A bare ``loc_`` root becomes a file of its own once a fragment is cut at it
    # (``splitting._split_off_foreign_objects``), so it needs a content-derived
    # name too: an address-derived one would rename the file whenever bytes above
    # it moved.  Its span runs to the next root of *any* kind -- its own code.
    loc_roots = sorted(
        off for off, name in label_map.items()
        if isinstance(name, str) and is_generic(name) and is_label(name))
    bounds = sorted(set(every) | set(loc_roots))
    for off in loc_roots:
        name = label_map[off]
        index = bisect.bisect_right(bounds, off)
        end = bounds[index] if index < len(bounds) else size
        lo = bisect.bisect_left(addrs, off)
        hi = bisect.bisect_left(addrs, end)
        todo.append((off, name, tag(lo, hi, off, end)))
    seen = {}
    for _, name, digest in todo:
        seen[(name.base, digest)] = seen.get((name.base, digest), 0) + 1
    renames = {}
    for off, name, digest in todo:
        new = name.tagged(digest, keep_address=seen[(name.base, digest)] > 1)
        label_map[off] = new
        # A bare ``loc_`` *label* that is not a function root stays a label: it
        # must not enter ``function_roots``, which is the ownership model's root
        # set (adding roots there changes which routine owns an instruction).
        if off in function_roots:
            function_roots[off] = new
        renames[name] = new
    return renames
