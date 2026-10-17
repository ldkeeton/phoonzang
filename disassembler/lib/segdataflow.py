"""Segment-register dataflow over the recovered code.

The instruction stream embeds offsets into several segments but never says
*which* segment an operand uses.  This module abstract-interprets the
segment registers (``CS``/``DS``/``SS``/``ES``) and the general registers
that are used to shuffle selectors around, so a consumer can ask "what
space does this memory operand address?" and get an answer.

Lattice (per register)::

    LOAD    the code/load segment (``CS``)
    DATA    the program data segment (``DS``/``SS``)
    PSP     the Program Segment Prefix (before the CRT reassigns ``DS``)
    UNKNOWN anything else (a caller-supplied segment, a computed value)

``CS`` is always ``LOAD``; ``SS`` is ``DATA`` after the CRT.  Selector
sources are recognised from:

* ``mov reg, Sreg`` / ``mov Sreg, reg`` (register-to-register selectors),
* the **MZ relocation table** (a relocated word is a segment selector whose
  paragraph tells which segment it names),
* a stored word read from a statically-addressable, file-backed location
  whose value matches a known segment paragraph,
* ``les``/``lds`` high words (same stored-word rule).

Conservative by construction: anything not provably known is ``UNKNOWN``,
so consumers leave the operand numeric rather than guessing.
"""

import struct

LOAD = 'load'
DATA = 'data'
PSP = 'psp'
UNKNOWN = 'unknown'

_SPACES = (LOAD, DATA, PSP, UNKNOWN)

_SEG_REGS = ('cs', 'ds', 'ss', 'es')
_GPR16 = ('ax', 'bx', 'cx', 'dx', 'si', 'di', 'bp', 'sp')

# 8-bit register -> parent 16-bit register
_R8_PARENT = {name: name for name in _GPR16}
for _lo, _hi, _parent in (
    ('al', 'ah', 'ax'), ('bl', 'bh', 'bx'), ('cl', 'ch', 'cx'),
    ('dl', 'dh', 'dx'),
):
    _R8_PARENT[_lo] = _parent
    _R8_PARENT[_hi] = _parent
for _n in ('es', 'cs', 'ss', 'ds', 'fs', 'gs'):
    _R8_PARENT[_n] = _n

_COND_JUMPS = {
    'jo', 'jno', 'jb', 'jae', 'je', 'jne', 'jbe', 'ja',
    'js', 'jns', 'jp', 'jnp', 'jl', 'jge', 'jle', 'jg',
    'jcxz', 'jecxz', 'loop', 'loope', 'loopne',
}
_TERMINATORS = {'ret', 'retf', 'iret', 'iretd'}

# Mnemonics that write their first register operand.
_WRITE_DEST = {
    'add', 'adc', 'sub', 'sbb', 'and', 'or', 'xor', 'inc', 'dec',
    'neg', 'not', 'shl', 'shr', 'sar', 'sal', 'rol', 'ror', 'rcl', 'rcr',
    'movzx', 'movsx', 'pop', 'lea',
}
# Registers a rule-of-thumb call clobbers (caller-saved).
_CALL_CLOBBER = ('ax', 'bx', 'cx', 'dx', 'es')


class State:
    """Abstract register/stack state."""

    __slots__ = ('regs', 'stack')

    def __init__(self, regs, stack=()):
        self.regs = regs
        self.stack = stack  # tuple of spaces (or None elements); None=opaque

    def copy(self):
        return State(dict(self.regs), self.stack)

    def get(self, reg):
        return self.regs.get(reg)

    def set(self, reg, value):
        self.regs[reg] = value

    def __eq__(self, other):
        return (isinstance(other, State)
                and self.regs == other.regs and self.stack == other.stack)


def merge(a, b):
    """Least upper bound of two states (pointwise; mismatch -> UNKNOWN)."""
    if a is None:
        return b
    if b is None:
        return a
    regs = {}
    for key in set(a.regs) | set(b.regs):
        va, vb = a.regs.get(key), b.regs.get(key)
        regs[key] = va if va == vb else None
    if a.stack is None or b.stack is None:
        stack = None
    elif a.stack == b.stack:
        stack = a.stack
    else:
        stack = None
    return State(regs, stack)


class SegmentFlow:
    """Result of the analysis: abstract states keyed by instruction address."""

    def __init__(self, model, states):
        self.model = model
        self.states = states

    def state_at(self, address):
        return self.states.get(address)

    def space_of(self, address, reg):
        """Space held by *reg* at *address* (or ``None``).

        *reg* may be a segment register or a general register currently
        holding a selector (e.g. ``bp`` after ``mov bp, <reloc>``).
        """
        state = self.states.get(address)
        if state is None:
            return None
        parent = _R8_PARENT.get(reg, reg)
        if parent == 'cs':
            return LOAD
        return state.get(parent)

    def effective_segment(self, insn, op):
        """Return ``(segment_name, space)`` for a memory operand.

        *segment_name* is the register actually used (honouring an explicit
        override and the SS-vs-DS default for BP/SP bases); *space* is the
        corresponding abstract space.
        """
        if op.mem.segment:
            seg = insn.reg_name(op.mem.segment).lower()
        elif op.mem.base:
            base = insn.reg_name(op.mem.base).lower()
            seg = 'ss' if base in ('bp', 'sp', 'ebp', 'esp') else 'ds'
        else:
            seg = 'ds'
        if seg == 'cs':
            return seg, LOAD
        if seg == 'ss':
            space = self.space_of(insn.address, 'ss')
            return seg, space if space is not None else DATA
        return seg, self.space_of(insn.address, seg)


def operand_space_counts(instructions, flow):
    """Count memory operands by the space they were resolved to."""
    from capstone import CS_OP_MEM

    counts = {}
    for insn in instructions:
        for op in insn.operands:
            if op.type == CS_OP_MEM:
                _, space = flow.effective_segment(insn, op)
                key = space or UNKNOWN
                counts[key] = counts.get(key, 0) + 1
    return counts


# String ops and the segment they use for their implicit offset register.
_STRING_USES = {
    'scasb': ('di', 'es'), 'scasw': ('di', 'es'),
    'stosb': ('di', 'es'), 'stosw': ('di', 'es'),
    'lodsb': ('si', 'ds'), 'lodsw': ('si', 'ds'),
    'movsb': ('si', 'ds'), 'movsw': ('si', 'ds'),
    'cmpsb': ('si', 'ds'), 'cmpsw': ('si', 'ds'),
}

# Segment-override prefix byte (capstone ``insn.prefix[1]``) -> segment.
_XLAT_SEGMENT = {0x2E: 'cs', 0x26: 'es', 0x36: 'ss', 0x3E: 'ds'}

# Mnemonics that write their first (register) operand.
_DEST_WRITERS = {
    'mov', 'lea', 'pop', 'add', 'adc', 'sub', 'sbb', 'and', 'or', 'xor',
    'inc', 'dec', 'neg', 'not', 'shl', 'shr', 'sar', 'sal', 'rol', 'ror',
    'rcl', 'rcr', 'xchg', 'movzx', 'movsx',
}


def immediate_pointer_spaces(instructions, flow, limit=64):
    """Prove immediates that are addresses from a known segment.

    Returns ``{(insn.address, operand_index): space}`` for each
    ``mov reg, imm16`` whose *reg* is used, before being redefined, as the
    base of a memory operand (explicitly or via a string op) whose segment is
    statically known.  Anything not provable this way is left out.
    """
    from capstone import CS_OP_REG, CS_OP_IMM, CS_OP_MEM

    insns = sorted(instructions, key=lambda i: i.address)
    index_of = {insn.address: k for k, insn in enumerate(insns)}
    result = {}
    for k, insn in enumerate(insns):
        if insn.mnemonic != 'mov' or len(insn.operands) != 2:
            continue
        dest, src = insn.operands
        if dest.type != CS_OP_REG or src.type != CS_OP_IMM:
            continue
        reg = insn.reg_name(dest.reg).lower()
        parent = _R8_PARENT.get(reg, reg)
        if parent in _SEG_REGS:
            continue
        space = None
        j = k + 1
        for _ in range(limit):
            if j >= len(insns):
                break
            nxt = insns[j]
            if _writes_register(nxt, parent):
                break
            space = _use_space(nxt, parent, flow)
            if space is not None:
                break
            if nxt.mnemonic == 'jmp':
                # A forward direct jump is the only path on: follow it (a
                # backward one could loop back over the definition).
                target = _direct_target(nxt)
                j = index_of.get(target, -1) if target is not None else -1
                if j <= k:
                    break
                continue
            if nxt.mnemonic in _TERMINATORS or nxt.mnemonic == 'ljmp':
                break
            j += 1
        if space is not None:
            result[(insn.address, 1)] = space
    return result


def _writes_register(insn, parent):
    from capstone import CS_OP_REG, CS_OP_MEM

    mnem = insn.mnemonic
    if mnem not in _DEST_WRITERS or not insn.operands:
        return False
    first = insn.operands[0]
    if first.type == CS_OP_REG:
        return _R8_PARENT.get(insn.reg_name(first.reg).lower(), '') == parent
    return False


def _base_mnemonic(insn):
    """Strip a capstone-attached ``rep``/``lock`` prefix from a mnemonic."""
    mnem = insn.mnemonic
    for prefix in ('repne ', 'repe ', 'rep ', 'lock '):
        if mnem.startswith(prefix):
            return mnem[len(prefix):]
    return mnem


def _use_space(insn, parent, flow):
    from capstone import CS_OP_MEM

    for op in insn.operands:
        if op.type == CS_OP_MEM and op.mem.base:
            base = _R8_PARENT.get(insn.reg_name(op.mem.base).lower(), '')
            if base == parent:
                _, space = flow.effective_segment(insn, op)
                if space in (LOAD, DATA, PSP):
                    return space
    if insn.mnemonic == 'xlatb' and parent == 'bx':
        # ``xlatb`` reads ``[seg:bx + al]`` with no operand capstone lists;
        # the segment is the override prefix, else DS.
        seg = _XLAT_SEGMENT.get(insn.prefix[1], 'ds')
        space = LOAD if seg == 'cs' else flow.space_of(insn.address, seg)
        if space in (LOAD, DATA, PSP):
            return space
    use = _STRING_USES.get(_base_mnemonic(insn))
    if use and use[0] == parent:
        space = flow.space_of(insn.address, use[1])
        if space in (LOAD, DATA, PSP):
            return space
    return None


def analyze(instructions, model, binary_data=None, function_roots=(),
            extra_edges=(), entry_roots=()):
    """Run segment-register dataflow over *instructions*.

    *instructions* is a list of capstone instructions whose ``address`` is a
    file offset.  *function_roots* are addresses where the caller-convention
    state (``DS=ES=DATA``) is re-established.  *extra_edges* are additional
    ``(src, dst)`` control-flow edges (e.g. validated jump tables).

    A root reached only by direct ``call``/``jmp`` from this image -- not an
    edge in *extra_edges*, not one of *entry_roots* (addresses entered from
    outside: seeds, declared handlers) and not the entry -- is internal: it
    starts in the state its callers hand it, so a routine whose callers set
    ``DS=CS`` addresses the code segment through ``DS``.  An internal root no
    reached caller hands a state to falls back to the convention.
    """
    insns = {insn.address: insn for insn in instructions}
    roots = set(function_roots)
    relocs = _relocation_offsets(model)
    test_before = _index_compare_results(instructions)

    extra = {}
    for src, dst in extra_edges:
        extra.setdefault(src, set()).add(dst)

    mz_entry = model.entry_offset if model.kind == 'mz' else None
    entry = mz_entry if mz_entry in insns else next(iter(insns), None)

    internal = _internal_roots(insns, roots, extra, entry_roots, entry)

    states = {}
    worklist = []

    def seed_for(address):
        if mz_entry is not None and address == mz_entry:
            return _entry_state()
        return _convention_state()

    def push(address, state):
        merged = merge(states.get(address), state)
        if merged != states.get(address):
            states[address] = merged
            worklist.append(address)

    def run():
        while worklist:
            address = worklist.pop()
            insn = insns.get(address)
            if insn is None:
                continue
            state = states[address]
            out = _transfer(insn, state, model, relocs, binary_data)
            if insn.mnemonic == 'call':
                callee = _direct_target(insn)
                if callee in internal:
                    push(callee, State(dict(state.regs)))
            for succ in _successors(insn, insns, state, model, extra,
                                    test_before):
                if succ is None:
                    continue
                if succ in internal:
                    incoming = State(dict(out.regs))
                elif succ in roots or succ == entry:
                    incoming = seed_for(succ)
                else:
                    incoming = out
                push(succ, incoming)

    for root in roots | ({entry} if entry is not None else set()):
        if root in insns and root not in internal:
            push(root, seed_for(root))
    run()
    for root in sorted(internal):
        if root not in states:
            push(root, seed_for(root))
            run()

    # Detached code islands (e.g. switch arms promoted after the first decode)
    # have no incoming edge, so the walk above never reaches them and their
    # absolute operands would fall back to the generic ``data_`` namespace.
    # For overlays the data segment is the host's for the whole image, so each
    # unreached instruction can be treated as an entry following the caller
    # convention.  MZ images are excluded: their DS starts at the PSP and only
    # later becomes the data segment, so a blind seed could overwrite states.
    if model.kind == 'overlay':
        for address in insns:
            if address not in states:
                push(address, _convention_state())
        run()

    return SegmentFlow(model, states)


def _internal_roots(insns, roots, extra, entry_roots, entry):
    """Roots every reference to which is a direct call or jump in *insns*."""
    referenced = set()
    for insn in insns.values():
        if insn.mnemonic in ('call', 'jmp') or insn.mnemonic in _COND_JUMPS:
            target = _direct_target(insn)
            if target in roots:
                referenced.add(target)
    external = set(entry_roots) | {entry}
    for targets in extra.values():
        external |= targets
    return referenced - external


def _entry_state():
    regs = {reg: None for reg in _GPR16}
    regs['cs'] = LOAD
    regs['ds'] = PSP
    regs['es'] = PSP
    regs['ss'] = DATA
    return State(regs)


def _convention_state():
    regs = {reg: None for reg in _GPR16}
    regs['cs'] = LOAD
    regs['ds'] = DATA
    regs['es'] = DATA
    regs['ss'] = DATA
    return State(regs)


def _relocation_offsets(model):
    offsets = set()
    for reloc in model.relocations:
        offsets.add(model.header_size + reloc['segment'] * 16 + reloc['offset'])
    return offsets


def _index_compare_results(instructions):
    """Map each conditional jump to the compare/test that precedes it."""
    by_addr = sorted(instructions, key=lambda i: i.address)
    result = {}
    pending = None
    for insn in by_addr:
        if insn.mnemonic in _COND_JUMPS and pending is not None:
            result[insn.address] = pending
        if insn.mnemonic in ('test', 'cmp'):
            pending = insn
        elif insn.mnemonic in _TERMINATORS or insn.mnemonic in (
                'jmp', 'ljmp', 'call', 'lcall'):
            pending = None
    return result


def _successors(insn, insns, state, model, extra_edges, test_before):
    addr = insn.address
    mnem = insn.mnemonic
    fallthrough = addr + len(insn.bytes)
    nxt = fallthrough if fallthrough in insns else None

    if mnem in _TERMINATORS:
        return []

    if mnem in ('jmp', 'ljmp'):
        target = _direct_target(insn)
        edges = extra_edges.get(addr, set())
        if target is None:
            return [t for t in edges if t in insns]
        result = [target] if target in insns else []
        result.extend(t for t in edges if t in insns and t != target)
        return result

    if mnem in _COND_JUMPS:
        taken = _condition_taken(insn, state, test_before.get(addr), model)
        target = _direct_target(insn)
        if taken is True and target in insns:
            return [target]
        if taken is False:
            return [nxt] if nxt is not None else []
        edges = ([nxt] if nxt is not None else [])
        if target in insns:
            edges.append(target)
        return edges

    if mnem in ('call', 'lcall'):
        # The callee is a function root (seeded separately); only the return
        # site continues in this function.
        return [nxt] if nxt is not None else []

    return [nxt] if nxt is not None else []


def _direct_target(insn):
    from capstone import CS_OP_IMM
    for op in insn.operands:
        if op.type == CS_OP_IMM:
            return op.imm & 0xFFFF
    return None


def _condition_taken(insn, state, test_insn, model):
    """Evaluate a conditional jump using the preceding ``test reg,reg``."""
    if test_insn is None:
        return None
    zf = _eval_test(test_insn, state, model)
    if zf is None:
        return None
    mnem = insn.mnemonic
    if mnem in ('je', 'jz'):
        return zf
    if mnem in ('jne', 'jnz'):
        return not zf
    return None


def _eval_test(test_insn, state, model):
    from capstone import CS_OP_REG, CS_OP_IMM

    ops = test_insn.operands
    if test_insn.mnemonic != 'test' or len(ops) != 2 or state is None:
        return None
    a, b = ops
    if a.type == CS_OP_IMM and b.type == CS_OP_IMM:
        return (a.imm & b.imm) == 0
    if a.type == CS_OP_REG and b.type == CS_OP_REG:
        sa = _register_space(test_insn, test_insn.reg_name(a.reg).lower(), state)
        sb = _register_space(test_insn, test_insn.reg_name(b.reg).lower(), state)
        if sa == sb and sa in (LOAD, DATA, PSP):
            return False  # a known segment selector is never zero
        return None
    return None


def _register_space(insn, reg_name, state):
    reg_name = _R8_PARENT.get(reg_name, reg_name)
    if reg_name == 'cs':
        return LOAD
    return state.get(reg_name)


def _transfer(insn, state, model, relocs, binary_data):
    from capstone import CS_OP_REG, CS_OP_MEM, CS_OP_IMM

    out = state.copy()
    mnem = insn.mnemonic
    ops = insn.operands

    def reg(operand):
        return insn.reg_name(operand.reg).lower()

    if mnem == 'mov' and len(ops) == 2 and ops[0].type == CS_OP_REG:
        value = _source_space(insn, ops[1], state, model, relocs, binary_data)
        _assign(out, reg(ops[0]), value)
    elif mnem in ('les', 'lds') and len(ops) == 2:
        seg = 'es' if mnem == 'les' else 'ds'
        out.set(seg, _load_word_space(insn, ops[1], state, model, binary_data))
        if ops[0].type == CS_OP_REG:
            _assign(out, reg(ops[0]), None)
    elif mnem == 'xchg' and len(ops) == 2 and all(
            op.type == CS_OP_REG for op in ops):
        va = _source_space(insn, ops[0], state, model, relocs, binary_data)
        vb = _source_space(insn, ops[1], state, model, relocs, binary_data)
        _assign(out, reg(ops[0]), vb)
        _assign(out, reg(ops[1]), va)
    elif mnem == 'pop' and ops and ops[0].type == CS_OP_REG:
        value, stack = _pop(out.stack)
        out.stack = stack
        _assign(out, reg(ops[0]), value)
    elif mnem == 'push' and ops and ops[0].type == CS_OP_REG:
        value = _source_space(insn, ops[0], state, model, relocs, binary_data)
        out.stack = (out.stack or ()) + (value,)
    elif mnem == 'int':
        _clobber(out, ('ax', 'bx', 'cx', 'dx'))
    elif mnem in ('call', 'lcall'):
        _clobber(out, _CALL_CLOBBER)
        out.stack = None
    elif mnem in ('in', 'out'):
        _clobber(out, ('ax',))
    elif mnem in ('mul', 'imul', 'div', 'idiv', 'cwd', 'cdq'):
        _clobber(out, ('ax', 'dx'))
    elif mnem in ('lodsb', 'lodsw', 'scasb', 'scasw',
                  'cmpsb', 'cmpsw', 'insb', 'insw', 'outsb', 'outsw'):
        pass
    elif mnem in _WRITE_DEST and ops and ops[0].type == CS_OP_REG:
        _assign(out, reg(ops[0]), None)
    return out


def _assign(state, reg_name, value):
    parent = _R8_PARENT.get(reg_name, reg_name)
    if parent in _SEG_REGS or parent in _GPR16:
        state.set(parent, value)


def _clobber(state, names):
    for name in names:
        state.set(_R8_PARENT.get(name, name), None)


def _pop(stack):
    if not stack:
        return None, stack
    return stack[-1], stack[:-1]


def _source_space(insn, operand, state, model, relocs, binary_data):
    from capstone import CS_OP_REG, CS_OP_MEM, CS_OP_IMM

    if operand.type == CS_OP_REG:
        return _register_space(insn, insn.reg_name(operand.reg).lower(), state)
    if operand.type == CS_OP_IMM:
        return _relocated_imm_space(insn, operand, model, relocs)
    if operand.type == CS_OP_MEM:
        return _load_word_space(insn, operand, state, model, binary_data)
    return None


def _relocated_imm_space(insn, operand, model, relocs):
    """A ``mov reg, imm16`` whose storage is relocated holds a selector."""
    if not relocs:
        return None
    if insn.bytes and 0xB8 <= insn.bytes[0] <= 0xBF:
        imm_offset = insn.address + 1
    else:
        return None
    if imm_offset not in relocs:
        return None
    return _paragraph_space(operand.imm & 0xFFFF, model)


def _paragraph_space(word, model):
    if model.kind != 'mz' or not word:
        # A zero word is uninitialized/segment-0, never a usable selector.
        return None
    cs_para = model.cs_base // 16
    ss_para = model.data_base // 16
    if word == ss_para:
        return DATA
    if word == cs_para:
        return LOAD
    return None


def _load_word_space(insn, operand, state, model, binary_data):
    """Space named by a 16-bit selector stored at a static memory operand."""
    from capstone import CS_OP_MEM

    if operand.type != CS_OP_MEM or model.kind != 'mz':
        return None
    if operand.mem.base or operand.mem.index:
        return None  # register-relative: not statically addressable
    offset = operand.mem.disp & 0xFFFF
    seg = insn.reg_name(operand.mem.segment).lower() if operand.mem.segment else 'ds'
    if seg == 'cs':
        origin = model.cs_origin
    else:
        origin = model.data_origin
        if model.bss_boundary is not None and offset >= model.bss_boundary:
            return None  # in BSS: no file bytes to read
    if origin is None:
        return None
    word = _read_word(binary_data, origin + offset)
    return _paragraph_space(word, model)


def _read_word(data, offset):
    if data is not None and 0 <= offset and offset + 2 <= len(data):
        return struct.unpack_from('<H', data, offset)[0]
    return None
