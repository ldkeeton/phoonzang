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
import re

from capstone.x86 import X86_OP_IMM

# Hex-suffixed names are address-derived; these families are symbols of other
# kinds (data-segment offsets, geometry markers) and are never renamed.  A
# routine's content tag (:func:`tag_generics`) and the address that separates
# identical copies in one binary may follow the tag.
_ADDRESS_RE = re.compile(r'.*_(?:[0-9a-f]{4,5}|[G-V]{4}(?:_[0-9a-f]{4,5})?)$')
_NOT_GENERIC = ('dseg_', 'bss_', 'psp_', 'cseg_', '__z', 'bios_data_',
                'external_')

#: Prefix of the host's generic names while the host is being emitted.
_state = {'prefix': ''}
#: Every host prefix seen, so text produced earlier still reads correctly.
_known = {'ds_'}


def set_generic_prefix(prefix):
    """Set the prefix given to generic names (``''`` for non-host binaries)."""
    _state['prefix'] = prefix
    if prefix:
        _known.add(prefix)


def generic_prefix():
    return _state['prefix']


def stem(name):
    """*name* without a leading host prefix."""
    for prefix in _known:
        if name.startswith(prefix):
            return name[len(prefix):]
    return name


def startswith_stem(name, stems):
    """``name.startswith(stems)``, looking through the host prefix."""
    return stem(name).startswith(stems)


def loc_name(offset):
    """The generic ``loc_<offset>`` label name for the binary being emitted."""
    return f'{_state["prefix"]}loc_{offset:04x}'


def is_generic(name):
    """True for an address-derived label name (and not a data/geometry symbol)."""
    bare = stem(name)
    return bool(_ADDRESS_RE.match(bare)) and not bare.startswith(_NOT_GENERIC)


def rename_generics(label_map, function_roots=None, split_functions=None,
                    prefix=''):
    """Give every generic name the host *prefix*, in place.

    Applies to *label_map* values, *function_roots* values and the
    *split_functions* set.  Idempotent: a name that already carries the prefix
    is left alone.  Returns ``{old: new}``.
    """
    renames = {}

    def new_name(name):
        if (not isinstance(name, str) or not prefix
                or name.startswith(prefix) or not is_generic(name)):
            return name
        renames[name] = prefix + name
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


_ADDR_TAIL = re.compile(r'_[0-9a-f]{4,5}$')


def _is_branch(insn):
    return (insn.mnemonic == 'call' or insn.mnemonic.startswith('j')
            or insn.mnemonic.startswith('loop'))


def content_tag(instructions, data, start, end, external=None):
    """Four letters (``G``-``V``) identifying the code in ``[start, end)``.

    Built from the decoded instructions with a near branch or call written
    relative to *start* when it stays inside the routine.  One that leaves it
    is written as ``external(target)`` (the callee's own name or tag; its
    address differs between binaries) or plain ``EXT`` without that callback;
    plus the raw bytes no instruction covers (tables, strings; trailing padding
    is ignored, as the next routine's distance differs between binaries).
    Immediates and memory operands are kept, so two routines get the same tag
    only when they are the same code against the same data layout -- and never
    depend on the label names being chosen.
    """
    lines = []
    cursor = start
    for insn in instructions:
        if insn.address > cursor:
            lines.append('db ' + data[cursor:insn.address].hex())
        text = f'{insn.mnemonic} {insn.op_str}'
        if (_is_branch(insn) and insn.operands
                and insn.operands[0].type == X86_OP_IMM):
            target = insn.operands[0].imm
            if start <= target < end:
                text = f'{insn.mnemonic} @{target - start}'
            else:
                text = f'{insn.mnemonic} ' + (
                    external(target) if external else 'EXT')
        lines.append(text)
        cursor = insn.address + insn.size
    tail = data[cursor:end].rstrip(_PADDING)
    if tail:
        lines.append('db ' + tail.hex())
    digest = hashlib.md5('\n'.join(lines).encode()).hexdigest()
    return digest[:4].translate(_TAG_ALPHABET)


def tag_generics(label_map, function_roots, instructions, data, size,
                 stubs=()):
    """Append each generic routine's :func:`content_tag` to its name, in place.

    The name then says which code it is: two functions never share one across
    binaries, and nothing shifts when a routine is added (no counters).  Applies
    to the generic function roots in *label_map* and *function_roots*, except a
    plain ``loc_``/``data_`` label.  *stubs* are offsets named
    ``<base>_<offset>`` (trampoline stubs, whose base is a dispatch index).
    Every address is dropped from the name; only copies of the *same* code
    within one binary keep theirs (``..._HQRK_02e3``), the one thing that can
    tell identical bytes apart, and without a count that would shift.
    Returns ``{old: new}``.
    """
    # A routine runs to the next *named* root: that is where its file ends (a
    # plain ``loc_`` root, or an anonymous call target, is inside its body).
    roots = sorted(off for off, name in function_roots.items()
                   if isinstance(name, str)
                   and not stem(name).startswith(('loc_', 'data_')))
    addrs = [insn.address for insn in instructions]
    stubs = set(stubs)
    every = sorted(function_roots)
    memo, active = {}, set()

    def span_tag(off):
        """Tag of the code at *off* up to the next root of any kind."""
        if off in memo:
            return memo[off]
        if off in active:
            return 'REC'
        active.add(off)
        index = bisect.bisect_right(every, off)
        end = every[index] if index < len(every) else size
        lo = bisect.bisect_left(addrs, off)
        hi = bisect.bisect_left(addrs, end)
        memo[off] = content_tag(instructions[lo:hi], data, off, end, external)
        active.discard(off)
        return memo[off]

    def external(target):
        name = label_map.get(target)
        if (isinstance(name, str) and not is_generic(name)
                and not stem(name).startswith(('loc_', 'data_'))):
            return name
        return span_tag(target)

    todo = []
    for index, off in enumerate(roots):
        name = label_map.get(off)
        if not isinstance(name, str):
            continue
        if off not in stubs and (not is_generic(name)
                                 or stem(name).startswith(('loc_', 'data_'))):
            continue
        end = roots[index + 1] if index + 1 < len(roots) else size
        lo = bisect.bisect_left(addrs, off)
        hi = bisect.bisect_left(addrs, end)
        # The address goes: the name is the code's, not the place's.  A stub
        # keeps its dispatch index (``api_idx_0008``), which is not an address.
        base = name[:-5] if off in stubs else _ADDR_TAIL.sub('', name)
        todo.append((off, name, base, content_tag(
            instructions[lo:hi], data, off, end, external)))
    seen = {}
    for _, _, base, tag in todo:
        seen[(base, tag)] = seen.get((base, tag), 0) + 1
    renames = {}
    for off, name, base, tag in todo:
        new = f'{base}_{tag}'
        if seen[(base, tag)] > 1:
            new += f'_{off:04x}'
        label_map[off] = new
        function_roots[off] = new
        renames[name] = new
    return renames
