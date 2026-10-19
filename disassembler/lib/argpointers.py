"""Pointer parameters: the stack arguments a routine reads memory through.

At run time a C routine gets its arguments on the stack.  The caller pushes
them last to first (``mov ax, 0x1630; push ax; call f`` passes ``0x1630`` as
``f``'s first argument), and the routine reads argument *k* back from its
frame at ``[bp + 4 + 2k]``.  A number pushed this way is either a value
(a count, a size) or the address of data in DS; the two instructions alone do
not say which.

What the routine *does* with the argument does: one that loads it into a
register and reads memory through that register (``mov bx, [bp + 4];
cmp byte [bx], 0``), or that hands it on to a routine that does, takes an
address.  A constant pushed into such a slot is then a DS address whatever
its value, so it must move with the data; a constant in any other slot is
left a number.

Conservative throughout: an argument whose push cannot be matched to its slot
(an intervening call, a stack adjustment, a join point) proves nothing.
"""

from capstone import CS_OP_IMM, CS_OP_MEM, CS_OP_REG

from lib.segdataflow import (
    DATA, _COND_JUMPS, _R8_PARENT, _STRING_USES, _TERMINATORS,
    _base_mnemonic, _direct_target,
)

#: A pointer use reads a field near the pointer; a displacement this large is
#: a table address indexed by the register, so the register is a number.
_FIELD_LIMIT = 0x100
#: How far a register is followed forward from where it is loaded.
_SCAN_LIMIT = 48
#: How far back a call's pushes, and their registers' values, are looked for.
_BACK_LIMIT = 32
#: Instructions a function body is walked for, at most.
_BODY_LIMIT = 6000
#: Where argument 0 sits in a near routine's ``push bp; mov bp, sp`` frame.
_ARG0 = 4

_GPRS = ('ax', 'bx', 'cx', 'dx', 'si', 'di')
#: Registers an Aztec C routine keeps across a call (its register variables).
_CALLEE_SAVED = frozenset(('si', 'di'))
#: The smallest constant taken as a passed address: a routine wrongly taken
#: to read through an argument can then never turn a small count into a name.
_MIN_ADDRESS = 0x100

#: Runtime-library routines that hand an argument to DOS (``int 21h`` reads
#: ``DS:DX``) or keep it for later, so no read through it shows in their body.
#: Each is the Aztec C library routine of that name; the indices are its
#: ``char *``/buffer arguments.
_LIBRARY_POINTER_ARGS = {
    'aztec_open': frozenset((0,)),        # open(name, mode)
    'aztec_read': frozenset((1,)),        # read(fd, buf, len)
    'aztec_write': frozenset((1,)),       # write(fd, buf, len)
    'aztec_movmem': frozenset((0, 1)),    # movmem(src, dst, len)
    'aztec_ovloader': frozenset((0,)),    # the overlay's name
}


def _parent(insn, reg):
    return _R8_PARENT.get(insn.reg_name(reg).lower(), '') if reg else ''


def _written(insn):
    """Parent registers *insn* writes (implicit ones too), or ``None``."""
    try:
        _, writes = insn.regs_access()
    except Exception:  # noqa: BLE001 - capstone without detail
        return None
    return {_R8_PARENT.get(insn.reg_name(r).lower(), insn.reg_name(r).lower())
            for r in writes}


def _is_near_call(insn):
    return insn.mnemonic == 'call' and insn.bytes[0] == 0xE8


def _is_flow(insn):
    m = insn.mnemonic
    return (m in ('call', 'jmp', 'ljmp', 'lcall', 'int', 'into')
            or m in _COND_JUMPS or m in _TERMINATORS)


def _frame_slot(insn, op):
    """Argument index read by memory operand *op* (``[bp + 4 + 2k]``)."""
    if (op.type != CS_OP_MEM or _parent(insn, op.mem.base) != 'bp'
            or op.mem.index or op.mem.segment or op.size != 2):
        return None
    disp = op.mem.disp
    if disp < _ARG0 or disp % 2:
        return None
    return (disp - _ARG0) // 2


def _local_slot(insn, op):
    """Displacement of the frame-local word *op* reads (``[bp - n]``)."""
    if (op.type != CS_OP_MEM or _parent(insn, op.mem.base) != 'bp'
            or op.mem.index or op.mem.segment or op.size != 2
            or op.mem.disp >= 0):
        return None
    return op.mem.disp


#: Mnemonics after which a register holds an element offset, not an address.
_INDEX_MAKERS = frozenset(('shl', 'sal', 'shr', 'sar', 'mul', 'imul'))
#: Read-modify-write steps that keep a local's kind: a counter stays a
#: counter, a pointer stays a pointer into the same object.
_STEPS = frozenset(('inc', 'dec', 'add', 'sub'))
#: Mnemonics that do not write their first operand.
_READS_ONLY = frozenset(('cmp', 'test', 'push'))


def _frame_locals(image, body):
    """``(counters, aliases)`` for the frame locals of a routine body.

    A **counter** is a local word only ever set to a byte-sized constant or
    stepped by one (``mov word [bp-2], 0`` ... ``inc word [bp-2]``); a value
    loaded from it is an index.  An **alias** of argument *n* is a local only
    ever set from that argument (``mov si, [bp+4]; mov [bp-2], si``) or
    stepped, so a value loaded from it is the argument moved along.  Both are
    empty when the body takes a local's address (``lea``, ``add bx, bp``),
    since a write through that address would not show.
    """
    writes = {}
    for k in body:
        insn = image.insns[k]
        ops = insn.operands
        # ``bp`` read as a value (``add bx, bp``, ``mov ax, bp``), except
        # by the epilogue's ``mov sp, bp``, hands out a local's address.
        if any(op.type == CS_OP_REG and _parent(insn, op.reg) == 'bp'
               for op in ops[1:]) and not (
                   insn.mnemonic == 'mov' and ops[0].type == CS_OP_REG
                   and _parent(insn, ops[0].reg) == 'sp'):
            return {}, {}
        if (insn.mnemonic == 'lea' and len(ops) == 2
                and _parent(insn, ops[1].mem.base) == 'bp'):
            return {}, {}
        if not ops or insn.mnemonic in _READS_ONLY:
            continue
        dest = ops[0]
        if (dest.type != CS_OP_MEM or _parent(insn, dest.mem.base) != 'bp'
                or dest.mem.index or dest.mem.disp >= 0):
            continue
        writes.setdefault(dest.mem.disp, []).append(k)
        if dest.size != 2:
            writes.setdefault(dest.mem.disp, []).append(None)
        if dest.size == 1:
            # A byte write to the high half spoils the word below it.
            writes.setdefault(dest.mem.disp - 1, []).append(None)
    counters, aliases = set(), {}
    for disp, ks in writes.items():
        if None in ks:
            continue
        kinds = set()
        for k in ks:
            insn = image.insns[k]
            src = insn.operands[1] if len(insn.operands) == 2 else None
            if insn.mnemonic in _STEPS and (
                    src is None or (src.type == CS_OP_IMM
                                    and src.imm & 0xFFFF < 0x100)):
                continue
            if (insn.mnemonic == 'mov' and src is not None
                    and src.type == CS_OP_IMM and src.imm & 0xFFFF < 0x100):
                kinds.add('counter')
            elif (insn.mnemonic == 'mov' and src is not None
                    and src.type == CS_OP_REG):
                kinds.add(image.value_of(k, _parent(insn, src.reg)))
            else:
                kinds.add(None)
        if kinds == {'counter'}:
            counters.add(disp)
        elif len(kinds) == 1:
            (kind,) = kinds
            if kind is not None and kind[0] == 'arg':
                aliases[disp] = kind[1]
    return counters, aliases


class _Image:
    """The decoded instructions in address order, with the join points."""

    def __init__(self, insns, labels=()):
        self.insns = sorted(insns, key=lambda i: i.address)
        self.index = {insn.address: k for k, insn in enumerate(self.insns)}
        self.joins = set(labels)
        for insn in self.insns:
            if insn.mnemonic in ('jmp', 'call') or insn.mnemonic in _COND_JUMPS:
                target = _direct_target(insn)
                if target is not None:
                    self.joins.add(target)

    def body(self, entry):
        """Indices of the instructions reachable from *entry* without a call."""
        seen = set()
        todo = [entry]
        while todo and len(seen) < _BODY_LIMIT:
            address = todo.pop()
            k = self.index.get(address)
            if k is None or k in seen:
                continue
            seen.add(k)
            insn = self.insns[k]
            mnem = insn.mnemonic
            if mnem in _TERMINATORS or mnem in ('ljmp', 'iret'):
                continue
            if mnem == 'jmp':
                target = _direct_target(insn)
                if target is not None:
                    todo.append(target)
                continue
            if mnem in _COND_JUMPS:
                target = _direct_target(insn)
                if target is not None:
                    todo.append(target)
            if k + 1 < len(self.insns):
                todo.append(self.insns[k + 1].address)
        return sorted(seen)

    def value_of(self, k, reg):
        """Where *reg* got its value before instruction *k*.

        ``('imm', i)`` for ``mov reg, imm16`` at index *i*, ``('arg', n)`` for
        a load of argument *n*, ``('local', d)`` for a load of the frame local
        at ``[bp + d]`` (``d < 0``), ``None`` otherwise or when a join point
        or a control transfer comes first.
        """
        for j in range(k - 1, max(k - 1 - _BACK_LIMIT, -1), -1):
            insn = self.insns[j]
            if _is_flow(insn):
                return None
            written = _written(insn)
            if written is None:
                return None
            if reg in written:
                if insn.mnemonic != 'mov' or len(insn.operands) != 2:
                    return None
                src = insn.operands[1]
                if src.type == CS_OP_IMM and insn.operands[0].size == 2:
                    return ('imm', j)
                if src.type == CS_OP_REG:
                    reg = _parent(insn, src.reg)
                    if reg not in _GPRS:
                        return None
                    if insn.address in self.joins:
                        return None
                    continue
                slot = _frame_slot(insn, src)
                if slot is not None:
                    return ('arg', slot)
                local = _local_slot(insn, src)
                return ('local', local) if local is not None else None
            if insn.address in self.joins:
                return None
        return None

    def index_register(self, k, reg, counters, depth=4):
        """True when *reg* holds an element offset before instruction *k*.

        Its definition, in the same straight-line run, is a load of a loop
        counter (a local in *counters*), a shift or multiply, or an ``and``
        with a byte mask: nothing an address is made from.
        """
        for j in range(k - 1, max(k - 1 - _BACK_LIMIT, -1), -1):
            insn = self.insns[j]
            if _is_flow(insn):
                return False
            written = _written(insn)
            if written is None:
                return False
            if reg in written:
                ops = insn.operands
                mnem = insn.mnemonic
                if mnem in ('mul', 'imul') and len(ops) == 1:
                    return reg in ('ax', 'dx')
                if mnem in _INDEX_MAKERS and ops and ops[0].type == CS_OP_REG:
                    return True
                if (mnem == 'and' and len(ops) == 2 and ops[1].type == CS_OP_IMM
                        and ops[1].imm & 0xFFFF < 0x100):
                    return True
                if mnem != 'mov' or len(ops) != 2:
                    return False
                if ops[1].type == CS_OP_REG and depth:
                    if insn.address in self.joins:
                        return False
                    return self.index_register(j, _parent(insn, ops[1].reg),
                                               counters, depth - 1)
                return _local_slot(insn, ops[1]) in counters
            if insn.address in self.joins:
                return False
        return False

    def call_args(self, k):
        """``{argument: source}`` for the call at index *k* (see value_of)."""
        args = {}
        n = 0
        for j in range(k - 1, max(k - 1 - _BACK_LIMIT, -1), -1):
            insn = self.insns[j]
            if _is_flow(insn):
                break
            if insn.mnemonic == 'push':
                op = insn.operands[0]
                if op.type == CS_OP_REG:
                    reg = _parent(insn, op.reg)
                    args[n] = self.value_of(j, reg) if reg in _GPRS else None
                elif op.type == CS_OP_MEM:
                    slot = _frame_slot(insn, op)
                    args[n] = ('arg', slot) if slot is not None else None
                else:
                    args[n] = None
                n += 1
            else:
                written = _written(insn)
                if written is None or 'sp' in written:
                    break
            if insn.address in self.joins:
                break
        return args


def _bp_frame(image, entry, name_of):
    """True when *entry* sets ``bp`` to its frame at once.

    ``push bp; mov bp, sp``, or Aztec's ``mov ax, <frame>; call $csav``
    (``$csav`` runs ``push bp; mov bp, sp`` for the routine).
    """
    k = image.index.get(entry)
    if k is None or k + 1 >= len(image.insns):
        return False
    a, b = image.insns[k], image.insns[k + 1]
    if (a.mnemonic == 'push' and a.operands[0].type == CS_OP_REG
            and _parent(a, a.operands[0].reg) == 'bp'
            and b.mnemonic == 'mov' and len(b.operands) == 2
            and all(op.type == CS_OP_REG for op in b.operands)
            and _parent(b, b.operands[0].reg) == 'bp'
            and _parent(b, b.operands[1].reg) == 'sp'):
        return True
    if a.mnemonic == 'mov' and _is_near_call(b):
        name = name_of(_direct_target(b)) or ''
        return name.endswith('csav')
    return False


def _uses_as_pointer(insn, regs, flow, is_index=lambda reg: False):
    """True when *insn* reads or writes DS memory through one of *regs*.

    A ``[r1 + r2]`` operand counts when one of them is in *regs* and the
    other is an element offset (*is_index*): ``[bx + si]`` with ``si`` a loop
    counter reads through ``bx``.
    """
    for op in insn.operands:
        if op.type != CS_OP_MEM:
            continue
        base = _parent(insn, op.mem.base)
        if op.mem.index:
            index = _parent(insn, op.mem.index)
            if base in regs and index not in regs and is_index(index):
                pass
            elif index in regs and base not in regs and is_index(base):
                pass
            else:
                continue
        elif base not in regs:
            continue
        if -_FIELD_LIMIT <= op.mem.disp < _FIELD_LIMIT:
            if flow.effective_segment(insn, op)[1] == DATA:
                return True
    use = _STRING_USES.get(_base_mnemonic(insn))
    if use and use[0] in regs:
        return flow.space_of(insn.address, use[1]) == DATA
    return False


def _direct_pointer_args(image, body, flow):
    """Arguments the body loads into a register and reads memory through.

    A load of a local that aliases an argument counts as a load of it
    (:func:`_frame_locals`).
    """
    found = set()
    counters, aliases = _frame_locals(image, body)
    for k in body:
        insn = image.insns[k]
        if insn.mnemonic != 'mov' or len(insn.operands) != 2:
            continue
        dest, src = insn.operands
        slot = _frame_slot(insn, src)
        if slot is None:
            slot = aliases.get(_local_slot(insn, src))
        if slot is None or dest.type != CS_OP_REG or slot in found:
            continue
        regs = {_parent(insn, dest.reg)}
        if not regs <= set(_GPRS):
            continue
        j = k + 1
        for _ in range(_SCAN_LIMIT):
            if j >= len(image.insns):
                break
            nxt = image.insns[j]
            if _uses_as_pointer(
                    nxt, regs, flow,
                    lambda reg, j=j: image.index_register(j, reg, counters)):
                found.add(slot)
                break
            if _is_near_call(nxt):
                # The callee keeps ``si``/``di``; the rest are its to change.
                regs &= _CALLEE_SAVED
                if not regs:
                    break
                j += 1
                continue
            if nxt.mnemonic == 'jmp':
                # A forward direct jump is the only way on; a backward one
                # could loop back over the load.
                target = _direct_target(nxt)
                j = image.index.get(target, -1) if target is not None else -1
                if j <= k:
                    break
                continue
            if nxt.mnemonic in ('ljmp', 'lcall', 'call') \
                    or nxt.mnemonic in _TERMINATORS:
                break
            j += 1
            written = _written(nxt)
            if written is None:
                break
            copy = (nxt.mnemonic == 'mov' and len(nxt.operands) == 2
                    and all(op.type == CS_OP_REG for op in nxt.operands)
                    and _parent(nxt, nxt.operands[1].reg) in regs)
            if copy:
                regs.add(_parent(nxt, nxt.operands[0].reg))
            else:
                regs -= written
            if not regs:
                break
    return found


def _known(name, foreign):
    """Pointer arguments of a routine outside this image, by *name*."""
    if not name:
        return frozenset()
    return frozenset(_LIBRARY_POINTER_ARGS.get(str(name))
                     or foreign.get(str(name), ()))


def pointer_params(insns, flow, name_of=lambda t: None, foreign=None,
                   labels=()):
    """``{entry: frozenset(argument indices)}`` read as DS pointers.

    *name_of* names a call target (for ``$csav`` and *foreign*); *foreign*
    maps a routine outside this image, by name, to its pointer arguments (the
    host's, for an overlay).  An argument handed on to a pointer argument of
    another routine is one too, to a fixed point.
    """
    image = insns if isinstance(insns, _Image) else _Image(insns, labels)
    foreign = foreign or {}
    # A labelled routine is an entry even when nothing here calls it: a
    # host routine only the overlays call still exports its pointer
    # arguments to them.
    entries = {_direct_target(i) for i in image.insns if _is_near_call(i)}
    entries |= set(labels)
    entries = {e for e in entries if e in image.index
               and _bp_frame(image, e, name_of)}
    bodies = {e: image.body(e) for e in entries}
    # A far routine (``retf``) has its arguments one word higher; it is not
    # reached by the near calls matched here, so it is left out entirely.
    entries = {e for e in entries
               if not any(image.insns[k].mnemonic == 'retf' for k in bodies[e])}
    params = {e: _direct_pointer_args(image, bodies[e], flow) for e in entries}
    calls = {e: [(k, _direct_target(image.insns[k])) for k in bodies[e]
                 if _is_near_call(image.insns[k])] for e in entries}

    def of(target):
        known = _known(name_of(target), foreign)
        return params[target] | known if target in params else known

    changed = True
    while changed:
        changed = False
        for e in entries:
            for k, target in calls[e]:
                wanted = of(target)
                if not wanted:
                    continue
                for n, src in image.call_args(k).items():
                    if (n in wanted and src and src[0] == 'arg'
                            and src[1] not in params[e]):
                        params[e].add(src[1])
                        changed = True
    return {e: frozenset(p | set(_known(name_of(e), {})))
            for e, p in params.items() if p or _known(name_of(e), {})}


def argument_pointer_immediates(insns, flow, name_of=lambda t: None,
                                foreign=None, labels=()):
    """``{(insn.address, 1): DATA}`` for each constant passed as a pointer.

    The ``mov reg, imm16`` whose register is pushed into a pointer argument
    of a routine called directly (:func:`pointer_params`).  Returns the
    proofs and the parameter map (for export to the overlays).
    """
    image = _Image(insns, labels)
    params = pointer_params(image, flow, name_of, foreign, labels)
    foreign = foreign or {}
    proven = {}
    for k, insn in enumerate(image.insns):
        if not _is_near_call(insn):
            continue
        target = _direct_target(insn)
        wanted = set(params.get(target, ())) | set(_known(name_of(target),
                                                          foreign))
        if not wanted:
            continue
        for n, src in image.call_args(k).items():
            if n in wanted and src and src[0] == 'imm':
                mov = image.insns[src[1]]
                if mov.operands[1].imm & 0xFFFF >= _MIN_ADDRESS:
                    proven[(mov.address, 1)] = DATA
    return proven, params
