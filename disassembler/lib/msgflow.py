"""Message argument provenance over decoded code, before source rendering.

Only known message parameters seed the analysis. Forwarded frame arguments
extend that knowledge to wrappers until it reaches a fixed point. Backward
slices then name literal producers, including register copies, local spills,
branch alternatives and computed message ranges. Addresses are used only to
connect the decoded control flow; no original-layout offsets are knowledge.
"""
from dataclasses import dataclass

from capstone import CS_OP_IMM, CS_OP_MEM, CS_OP_REG
from lib.argpointers import (_Image, _bp_frame, _frame_slot, _local_slot,
                             _parent, _written, _is_flow)
from lib.segdataflow import _COND_JUMPS, _TERMINATORS, _direct_target


@dataclass(frozen=True)
class Origin:
    kind: str                         # direct, base, arg
    value: int
    address: int = 0
    operand: int = 1


class MessageFlow:
    def __init__(self, insns, resolve, labels):
        self.image = _Image(insns, labels)
        self.insns = self.image.insns
        self.call_names = {i.address: resolve(i) for i in self.insns
                           if i.mnemonic == 'call'}
        self.target_names = {_direct_target(i): self.call_names[i.address]
                             for i in self.insns if i.mnemonic == 'call'}
        targets = set(self.target_names)
        self.entries = {e for e in set(labels) | targets if e in self.image.index
                        and _bp_frame(self.image, e, self.name_of)}
        self.bodies = {e: set(self.image.body(e)) for e in self.entries}
        # Far frames have a different argument layout.
        self.bodies = {e: body for e, body in self.bodies.items()
                       if not any(self.insns[k].mnemonic == 'retf' for k in body)}
        owners = {}
        for entry, body in self.bodies.items():
            for k in body:
                owners.setdefault(k, set()).add(entry)
        self.owners = {k: next(iter(es)) for k, es in owners.items() if len(es) == 1}
        self.escaped = {e for e, body in self.bodies.items()
                        if any((i.mnemonic == 'lea' and any(
                            op.type == CS_OP_MEM and _parent(i, op.mem.base) == 'bp'
                            and op.mem.disp < 0 for op in i.operands))
                            or (i.mnemonic in ('mov', 'add') and any(
                                op.type == CS_OP_REG and i.reg_name(op.reg) == 'bp'
                                for op in i.operands[1:]))
                            for i in (self.insns[k] for k in body))}
        roots = {self.image.index[e] for e in self.entries}
        self.pred = {k: [] for k in range(len(self.insns))}
        for k, i in enumerate(self.insns):
            m = i.mnemonic
            if m in _COND_JUMPS or m == 'jmp':
                dest = self.image.index.get(_direct_target(i))
                if dest is not None and dest not in roots:
                    self.pred[dest].append(k)
            if (m not in _TERMINATORS and m not in ('jmp', 'ljmp', 'iret')
                    and k + 1 < len(self.insns) and k + 1 not in roots
                    and i.address + i.size == self.insns[k + 1].address):
                self.pred[k + 1].append(k)
        self.cache = {}

    def name_of(self, target):
        return self.target_names.get(target)

    def operand(self, k, op, operand=0, trail=frozenset()):
        i = self.insns[k]
        if op.size != 2:
            return frozenset()
        if op.type == CS_OP_IMM:
            return frozenset((Origin('direct', op.imm & 0xffff, i.address, operand),))
        if op.type == CS_OP_REG:
            return self.before(k, ('reg', i.reg_name(op.reg)), trail)
        if op.type == CS_OP_MEM:
            arg = _frame_slot(i, op)
            if arg is not None and k in self.owners:
                return frozenset((Origin('arg', arg),))
            local = _local_slot(i, op)
            if local is not None and self.owners.get(k) not in self.escaped:
                return self.before(k, ('local', local), trail)
        return frozenset()

    def before(self, k, location, trail=frozenset()):
        key = (k, location)
        # Bound loops and unusually long slices; exhaustion proves nothing.
        if key in trail or len(trail) >= 120:
            return frozenset()
        if not trail and key in self.cache:
            return self.cache[key]
        result = set()
        for prev in self.pred[k]:
            if self.owners.get(prev) != self.owners.get(k):
                continue
            result.update(self.after(prev, location, trail | {key}))
        result = frozenset(result)
        if not trail:
            self.cache[key] = result
        return result

    def after(self, k, location, trail):
        i = self.insns[k]
        ops, m = i.operands, i.mnemonic
        if m in ('lcall', 'int'):
            return frozenset()
        if m == 'call':
            # The ABI preserves register variables. An unescaped frame local
            # cannot be written by a callee; others need alias analysis.
            if location[0] == 'reg' and location[1] not in ('si', 'di', 'bp'):
                return frozenset()
            if location[0] == 'local' and self.owners.get(k) in self.escaped:
                return frozenset()
        if location[0] == 'reg':
            writes = _written(i)
            if writes is None:
                return frozenset()
            if location[1] not in writes:
                return self.before(k, location, trail)
            if (not ops or ops[0].type != CS_OP_REG
                    or i.reg_name(ops[0].reg) != location[1] or ops[0].size != 2):
                return frozenset()
        else:
            if not ops or ops[0].type != CS_OP_MEM:
                return self.before(k, location, trail)
            # Any overlapping byte/word store kills an earlier local value.
            mem = ops[0].mem
            overlaps = (_parent(i, mem.base) == 'bp' and not mem.index
                        and mem.disp < location[1] + 2
                        and mem.disp + ops[0].size > location[1])
            if not overlaps or m in ('cmp', 'test', 'push'):
                return self.before(k, location, trail)
            if _local_slot(i, ops[0]) != location[1]:
                return frozenset()
        if m == 'mov' and len(ops) == 2:
            return self.operand(k, ops[1], 1, trail)
        if m in ('inc', 'dec'):
            return self.before(k, location, trail)
        if m == 'add' and len(ops) == 2:
            left = self.before(k, location, trail)
            right = self.operand(k, ops[1], 1, trail)
            literal_left = {o for o in left if o.kind != 'arg'}
            literal_right = {o for o in right if o.kind != 'arg'}
            # A literal plus an index is a message range start. If both
            # sides are literals, retain the first rather than naming an
            # arbitrary increment as a message.
            selected = literal_left or literal_right
            if selected:
                return frozenset(Origin('base', o.value, o.address, o.operand)
                                 for o in selected)
            # Two dynamic addends do not establish which is the message
            # base and which is an index; do not infer wrapper types.
            return frozenset()
        return frozenset()

    def arguments(self, k, wanted):
        """Stack-slot matched pushes; never scan past a call or stack edit."""
        found = {}
        n = 0
        for j in range(k - 1, max(-1, k - 65), -1):
            i = self.insns[j]
            if (i.address + i.size != self.insns[j + 1].address or _is_flow(i)
                    or i.mnemonic in ('pop', 'popf', 'popa', 'enter', 'leave')):
                break
            if i.mnemonic == 'push' and i.operands[0].size == 2:
                if n in wanted:
                    found[n] = self.operand(j, i.operands[0])
                n += 1
            else:
                writes = _written(i)
                if writes is None or 'sp' in writes:
                    break
            if i.address in self.image.joins:
                break
        return found


def analyze(insns, calls, names, bases, resolve, labels=(), foreign=None):
    """Return producer symbols, call-site uses and inferred wrapper parameters.

    Parameter indices are physical, zero-based word slots (``push - 1``),
    so declared ABI overrides and inferred forwarding use the same convention.
    """
    from lib.msgids import MessageUse
    flow = MessageFlow(insns, resolve, labels)
    known = {str(name): set(slots) for name, slots in (foreign or {}).items()}
    for call in calls:
        known.setdefault(call.routine, set()).add(call.push - 1)
    params = {e: set() for e in flow.bodies}
    # Resolve entry names through the exact same routine resolver as calls.
    entry_names = {}
    for i in flow.insns:
        if i.mnemonic == 'call':
            target = _direct_target(i)
            if target in params and resolve(i):
                entry_names[target] = str(resolve(i))
    labelled_entries = labels.items() if hasattr(labels, 'items') else ()
    for e, name in labelled_entries:
        if e in params:
            entry_names[e] = str(name)

    def wanted(i):
        return (known.get(str(resolve(i)), set())
                | params.get(_direct_target(i), set()))

    changed = True
    while changed:
        changed = False
        for k, i in enumerate(flow.insns):
            owner = flow.owners.get(k)
            if i.mnemonic != 'call' or owner not in params:
                continue
            for origins in flow.arguments(k, wanted(i)).values():
                forwarded = {o.value for o in origins if o.kind == 'arg'}
                extra = forwarded - params[owner]
                if extra:
                    params[owner].update(extra)
                    changed = True
    symbols, uses = {}, []
    for k, i in enumerate(flow.insns):
        if i.mnemonic != 'call' or not wanted(i):
            continue
        args = flow.arguments(k, wanted(i))
        for slot in sorted(wanted(i)):
            origins = args.get(slot, ())
            named = []
            for o in sorted(origins, key=lambda o: (o.address, o.operand, o.kind)):
                if o.kind == 'arg':
                    continue
                name = (bases.get(o.value) or names.get(o.value)
                        if o.kind == 'base' else names.get(o.value))
                if name:
                    symbols[o.address, o.operand] = name
                    named.append((o, name))
            if named:
                for o, name in named:
                    uses.append(MessageUse(str(resolve(i)), slot + 1, o.kind,
                                           o.value, name, i.address))
            else:
                uses.append(MessageUse(str(resolve(i)), slot + 1,
                                       address=i.address,
                                       detail='forwarded or dynamic argument' if origins
                                       else 'no proven producer'))
    exported = {entry_names[e]: sorted(slots) for e, slots in params.items()
                if slots and e in entry_names}
    return symbols, uses, exported
