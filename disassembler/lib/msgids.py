"""Message-id constants from the game's packed message data.

A directory file points at 1K blocks; each block holds length-prefixed
records, and each record is a character count followed by a Huffman bit
stream decoded with the tree in a third file.  ``load_message_string`` takes
one of the resulting ids, so a numeric argument such as ``2026`` means the
message ``"CAST"``.

The three file names are the game's data, not this module's: the sidecar's
``message_data`` table names them.  Nothing here hard-codes a project.

This module owns the data side of the message-id namespace:

* :func:`decode_messages` reads the packed data into ``{id: text}``;
* :func:`identifier` normalises the text into a ``MSG_*`` name;
* :func:`constant_names` gives every id its name, from the data alone;
* :func:`build_constants`, :func:`inc_text` and :func:`header_text` emit the
  checked-in ASM/C headers;
* :func:`message_calls` and :func:`message_bases` read the sidecar's
  project-wide knowledge (which routines take an id, where a computed id
  starts); a binary may override one ``message_calls`` entry;
* :func:`find_message_symbols` and :func:`scan_asm_text` are the generic
  argument walkers for capstone instructions and rendered ``.asm`` text.

The ASM header is derived from the binary and the data; the C header is
derived from the ASM header.  The one back edge is the cold-tree seed in
:func:`seed_ids`: the C has to compile before anything is rendered, so the
names it already uses are resolved against the same data-derived table.
"""

from __future__ import annotations

from dataclasses import dataclass, field
from functools import lru_cache
import os
import re
import struct

from lib.sidecar.messages import MESSAGE_DATA_KEYS

#: Longest identifier the emitted headers use (Aztec C's minimum significant
#: length is larger, but short names keep the two headers readable).
MAX_NAME = 31

#: The generated headers, relative to ``src_<project>``.  There is one pair
#: for the whole game: a message id is a property of the message data, not of
#: the binary that happens to use it.
MSG_INC = 'include/msg.inc'
MSG_H = 'include/msg.h'

#: Every generated message header; the one place the pair is spelled.
HEADER_PATHS = (MSG_INC, MSG_H)


# ── Decoding ────────────────────────────────────────────────────────────────

def _word(data, offset):
    return struct.unpack_from('<H', data, offset)[0]


def _decode_record(packed, count, tree):
    """Decode *count* symbols from the Huffman *tree*."""
    bits = []
    for byte in packed:
        bits.extend((byte >> shift) & 1 for shift in range(7, -1, -1))
    out = []
    node = 0
    for bit in bits:
        if len(out) >= count:
            break
        value = _word(tree, node + (2 if bit else 0))
        if value & 0x8000:
            node = ((-value) & 0xffff) * 4
            continue
        out.append(chr(value))
        node = 0
    return ''.join(out)


def message_data(sidecar):
    """The sidecar's packed-message table, validated.

    Names the directory, block and tree files.  A project that decodes
    messages must declare it; nothing here assumes a file name.
    """
    spec = (sidecar or {}).get('message_data')
    if not isinstance(spec, dict):
        raise ValueError('sidecar has no "message_data" table')
    missing = [key for key in MESSAGE_DATA_KEYS
               if not isinstance(spec.get(key), str) or not spec.get(key)]
    if missing:
        raise ValueError(
            f'message_data is missing {", ".join(missing)}')
    return spec


def decode_messages(app_dir, spec):
    """Read the packed message data named by *spec* under *app_dir*.

    *spec* is the sidecar's ``message_data`` table (:func:`message_data`).
    Returns ``({id: text}, skipped)`` where *skipped* lists ids whose record
    could not be read (a truncated block, or a record with no length byte).
    """
    with open(os.path.join(app_dir, spec['tree']), 'rb') as f:
        tree = f.read()
    with open(os.path.join(app_dir, spec['blocks']), 'rb') as f:
        blocks = f.read()
    with open(os.path.join(app_dir, spec['directory']), 'rb') as f:
        directory = f.read()

    records = []
    count = _word(directory, 0) if len(directory) >= 2 else 0
    for index in range(count):
        at = 2 + index * 6
        if at + 6 > len(directory):
            break
        first, offset, records_here, block = struct.unpack_from(
            '<HHBB', directory, at)
        records.append((first, offset, records_here, block))

    messages = {}
    skipped = []
    for first, offset, records_here, block in records:
        data = blocks[block * 1024:(block + 1) * 1024]
        if not data:
            continue
        position = offset
        for number in range(first, first + records_here + 1):
            if position >= len(data):
                skipped.append(number)
                break
            length = data[position]
            record = data[position + 1:position + 1 + length]
            position += length + 1
            if not record:
                skipped.append(number)
                continue
            try:
                messages[number] = _decode_record(record[1:], record[0], tree)
            except (IndexError, struct.error):
                skipped.append(number)
    return messages, skipped


# ── Naming ──────────────────────────────────────────────────────────────────

_PRINTABLE = re.compile(r'[\x20-\x7e]')
_NON_IDENTIFIER = re.compile(r'[^A-Z0-9]+')


def _printable(text):
    """The printable ASCII in *text* (control bytes are dropped)."""
    return ''.join(_PRINTABLE.findall(text))


def _base_name(text):
    """``MSG_`` plus the normalised text, before collision suffixing."""
    cleaned = _printable(text).upper()
    return _NON_IDENTIFIER.sub('_', cleaned).strip('_')


def identifier(value, text):
    """A deterministic ``MSG_*`` name for message *value*.

    Printable ASCII is upper-cased and every run of other characters becomes
    one ``_``.  A name with control bytes (the game's inline colour codes) or
    one that is too long is suffixed with the numeric id, so it can never be
    confused with a plain-text sibling.
    """
    raw = _base_name(text)
    forced = bool(raw) and _printable(text) != text
    if not raw:
        return f'MSG_{value}'
    full = f'MSG_{raw}'
    if forced or len(full) > MAX_NAME:
        suffix = f'_{value}'
        keep = MAX_NAME - len('MSG_') - len(suffix)
        prefix = raw[:max(keep, 0)].rstrip('_')
        return f'MSG_{prefix}{suffix}' if prefix else f'MSG_{value}'
    return full


@dataclass(frozen=True)
class MessageConstant:
    """One ``MSG_* equ <value>`` line."""

    value: int
    name: str
    text: str = ''
    note: str = ''


def _comment(text):
    """Message text made safe for an ``;`` or ``/* */`` comment."""
    cleaned = ''.join(ch if 32 <= ord(ch) <= 126 else '?' for ch in text)
    return cleaned.replace(';', ':').replace('"', "'")


def constant_names(messages, bases=()):
    """``{id: MSG_*}`` for every message, from the data alone.

    The spelling must not depend on which ids the code happens to use: a tree
    cleaned since the last build renders its asm before the header is
    complete, and the next build must assemble that same text.  So a collision
    is resolved against the whole message database, and a name that repeats a
    sidecar base's name is suffixed too -- both pure functions of the data.
    """
    names = {value: identifier(value, text)
             for value, text in messages.items()}
    counts = {}
    for name in names.values():
        counts[name] = counts.get(name, 0) + 1
    base_names = {_base_entry(entry).name for entry in bases}
    for value, name in list(names.items()):
        if counts[name] > 1 or name in base_names:
            names[value] = f'{name}_{value}'
    return names


def build_constants(messages, direct_ids=(), bases=()):
    """Return the constants for the header, sorted by value then name.

    *direct_ids* are the message ids the code passes literally; *bases* are
    the sidecar's ``message_bases`` entries (``value``/``name``/``note``).
    A base value is emitted once, under its sidecar name, even if the same
    value also reached the scan as a literal.
    """
    entries = {}
    for entry in bases:
        entry = _base_entry(entry)
        entries[entry.value] = entry

    names = constant_names(messages, bases)
    result = [entries[value] for value in sorted(entries)]
    result.extend(
        MessageConstant(value, names[value], messages[value])
        for value in sorted(set(direct_ids))
        if value in names and value not in entries)
    return result


def _base_entry(entry):
    """Normalise a sidecar ``message_bases`` entry."""
    if isinstance(entry, MessageConstant):
        return entry
    value = entry['value']
    if isinstance(value, str):
        value = int(value, 0)
    return MessageConstant(int(value), entry['name'], entry.get('note', ''))


# ── Header text ─────────────────────────────────────────────────────────────

def inc_text(constants):
    """The ``include/msg.inc`` text."""
    from lib.autogen import MARKER_ASM
    lines = [
        MARKER_ASM,
        '%ifndef MSG_INC',
        '%define MSG_INC',
        '',
    ]
    for const in constants:
        text = _comment(const.text or const.note)
        row = f'{const.name} equ {const.value}'
        if text:
            lines.append(row.ljust(34) + f'; "{text}"')
        else:
            lines.append(row + ' ;')
    lines.extend(['', '%endif', ''])
    return '\n'.join(lines)


def header_text(constants):
    """The ``include/msg.h`` text, converted from the same constants."""
    from lib.autogen import MARKER_C
    lines = [
        MARKER_C,
        '#ifndef MSG_H',
        '#define MSG_H',
        '',
    ]
    for const in constants:
        text = _comment(const.text or const.note)
        row = f'#define {const.name} {const.value}'
        lines.append(row.ljust(38) + (f'/* "{text}" */' if text else ''))
    lines.extend(['', '#endif', ''])
    return '\n'.join(lines)


_INC_LINE = re.compile(
    r'^\s*(MSG_[A-Za-z0-9_]+)\s+equ\s+(0x[0-9a-fA-F]+|\d+)\b')
_H_LINE = re.compile(
    r'^\s*#define\s+(MSG_[A-Za-z0-9_]+)\s+(0x[0-9a-fA-F]+|\d+)\b')


def _parse(text, pattern):
    names = {}
    values = {}
    for line in text.splitlines():
        match = pattern.match(line)
        if not match:
            continue
        name, raw = match.groups()
        value = int(raw, 0)
        names[name] = value
        values.setdefault(value, name)
    return names, values


def parse_inc(text):
    """``(name -> value, value -> name)`` for a ``msg.inc``."""
    return _parse(text, _INC_LINE)


def parse_header(text):
    """``(name -> value, value -> name)`` for a ``msg.h``."""
    return _parse(text, _H_LINE)


def read_constants(path):
    """Read a ``msg.inc``/``msg.h`` from *path*; ``{}`` when absent."""
    try:
        with open(path, errors='replace') as f:
            return _parse(f.read(), _INC_LINE if path.endswith('.inc')
                          else _H_LINE)
    except OSError:
        return {}, {}


# ── Sidecar knowledge ───────────────────────────────────────────────────────

@dataclass(frozen=True)
class MessageCall:
    """A routine that takes a message id, and where that argument is."""

    routine: str
    arg: int
    args: int
    push: int

    @classmethod
    def from_entry(cls, entry):
        args = int(entry['args'])
        arg = int(entry['arg'])
        return cls(entry['routine'], arg, args, int(entry.get('push', arg)))


def message_calls(entries):
    """The sidecar's ``message_calls`` as :class:`MessageCall` objects."""
    return [MessageCall.from_entry(entry) for entry in (entries or ())]


def message_bases(entries):
    """``{value: name}`` for the sidecar's ``message_bases``."""
    out = {}
    for entry in entries or ():
        entry = _base_entry(entry)
        out[entry.value] = entry.name
    return out


# ── Argument walker ─────────────────────────────────────────────────────────

@dataclass
class MessageUse:
    """One call site: the message argument and the constant it suggests."""

    routine: str
    arg: int
    kind: str = 'unknown'       # direct | base | unknown
    value: int | None = None
    name: str | None = None
    address: int | None = None
    line: int | None = None
    path: str = ''
    detail: str = ''


@dataclass
class _Event:
    """A write to ``ax`` while an argument is being computed."""

    kind: str                   # mov-imm | mov-other | add-imm | add-other | clobber
    value: int | None = None
    address: int | None = None
    op_index: int | None = None
    line: int | None = None


def classify_events(events):
    """Return ``(kind, event)`` for the immediate that carries a message id.

    *kind* is ``direct`` (the value itself), ``base`` (the start of a computed
    id) or ``unknown``.  *event* is the event whose immediate should be named.
    """
    mov = None
    adds = []
    for event in events:
        if event.kind in ('mov-imm', 'mov-other'):
            mov = event
            adds = []
        elif event.kind in ('add-imm', 'add-other'):
            adds.append(event)
        elif event.kind == 'clobber':
            mov = None
            adds = []
    imm_adds = [event for event in adds if event.kind == 'add-imm']
    if imm_adds:
        return 'base', imm_adds[-1]
    if mov is not None and mov.kind == 'mov-imm':
        return ('base' if adds else 'direct'), mov
    return 'unknown', None


def _resolve_use(kind, event, names, bases):
    """Fill in a :class:`MessageUse` from a classified event.

    The kind and value survive even when the header has no name yet: the
    generator discovers ids before it can name them.
    """
    if event is None or event.value is None or kind == 'unknown':
        return 'unknown', None, None
    table = names if kind == 'direct' else bases
    return kind, event.value, table.get(event.value)


# ── capstone walker ─────────────────────────────────────────────────────────

def _is_flow(insn):
    try:
        from capstone import CS_GRP_CALL, CS_GRP_JUMP, CS_GRP_RET
        return (insn.group(CS_GRP_JUMP) or insn.group(CS_GRP_RET)
                or insn.group(CS_GRP_CALL))
    except (AttributeError, ImportError):
        return insn.mnemonic in _FLOW


_FLOW = {
    'jmp', 'call', 'ret', 'retf', 'iret', 'iretd', 'loop', 'loope', 'loopne',
    'jcxz', 'jecxz',
    *(f'j{cc}' for cc in (
        'a', 'ae', 'b', 'be', 'c', 'cxz', 'e', 'g', 'ge', 'l', 'le', 'na',
        'nae', 'nb', 'nbe', 'nc', 'ne', 'ng', 'nge', 'nl', 'nle', 'no', 'np',
        'ns', 'nz', 'o', 'p', 'pe', 'po', 's', 'z')),
}

_AX_WRITERS = {
    'mov', 'lea', 'pop', 'xchg', 'add', 'sub', 'xor', 'and', 'or', 'adc',
    'sbb', 'neg', 'not', 'inc', 'dec', 'shl', 'shr', 'sar', 'sal', 'rol',
    'ror', 'rcl', 'rcr', 'imul', 'mul', 'div', 'idiv', 'in', 'movzx', 'movsx',
}
_AX_IMPLICIT = {'cbw', 'cwd', 'lodsb', 'lodsw', 'xlatb'}


def _writes_ax(insn):
    if insn.mnemonic in _AX_IMPLICIT:
        return True
    if insn.mnemonic not in _AX_WRITERS or not insn.operands:
        return False
    op = insn.operands[0]
    from capstone import CS_OP_REG
    return (op.type == CS_OP_REG
            and insn.reg_name(op.reg) in ('ax', 'al', 'ah'))


def _capstone_event(insn):
    """The :class:`_Event` for one instruction, or None if it leaves ax alone."""
    from capstone import CS_OP_IMM, CS_OP_REG
    mnem = insn.mnemonic
    ops = insn.operands
    if mnem in _AX_IMPLICIT:
        return _Event('clobber', address=insn.address)
    if mnem not in _AX_WRITERS or not ops:
        return None
    first = ops[0]
    if not (first.type == CS_OP_REG
            and insn.reg_name(first.reg) in ('ax', 'al', 'ah')):
        return None
    if mnem not in ('mov', 'add') or len(ops) < 2:
        return _Event('clobber', address=insn.address)
    second = ops[1]
    if second.type == CS_OP_IMM:
        return _Event(f'{mnem}-imm', second.imm & 0xFFFF,
                      insn.address, 1)
    return _Event(f'{mnem}-other', address=insn.address)


def find_message_symbols(insns, calls, names, bases, resolve, boundaries=()):
    """Name the message-id operands in a decoded instruction stream.

    *insns* is address-ordered; *calls* the sidecar's :class:`MessageCall`
    list; *names* ``{id: MSG_*}`` and *bases* ``{id: MSG_*_BASE}``;
    *resolve(insn)* returns the routine a ``call`` targets, or None.
    *boundaries* is an optional set of instruction addresses that begin a new
    basic block.

    Returns ``({(address, operand_index): name}, [MessageUse])``.  The map is
    keyed by the *producer* instruction, so an unrelated ``mov ax, 2026`` is
    never renamed.
    """
    by_routine = {call.routine: call for call in calls}
    symbols = {}
    uses = []
    if not by_routine or not insns:
        return symbols, uses
    insns = list(insns)
    boundary_set = set(boundaries or ())
    for index, insn in enumerate(insns):
        if insn.mnemonic != 'call':
            continue
        routine = resolve(insn)
        call = by_routine.get(routine)
        if call is None:
            continue
        start = index - 1
        while start >= 0:
            prev = insns[start]
            if prev.address in boundary_set or _is_flow(prev):
                break
            start -= 1
        block = insns[start + 1:index]
        pushes = [position for position, item in enumerate(block)
                  if item.mnemonic == 'push']
        use = MessageUse(routine=routine, arg=call.arg,
                         address=insn.address)
        if len(pushes) < call.push:
            use.detail = f'only {len(pushes)} push(es) before the call'
            uses.append(use)
            continue
        push_at = pushes[-call.push]
        push_insn = block[push_at]
        from capstone import CS_OP_IMM
        if push_insn.operands and push_insn.operands[0].type == CS_OP_IMM:
            kind, value, name = _resolve_use(
                'direct',
                _Event('direct', push_insn.operands[0].imm & 0xFFFF,
                       push_insn.address, 0),
                names, bases)
            target, target_op = push_insn, 0
        elif push_insn.operands and _push_is_ax(push_insn):
            events = [event for event in
                      (_capstone_event(item) for item in block[:push_at])
                      if event is not None]
            kind, event = classify_events(events)
            kind, value, name = _resolve_use(kind, event, names, bases)
            target = (_insn_at(insns, start + 1, push_at, event)
                      if event is not None else None)
            target_op = event.op_index if event else None
            if name is None:
                use.detail = ('producer is not a literal id' if event is None
                              else f'0x{value:04x} has no message name'
                              if value is not None
                              else 'producer is not a literal id')
        else:
            target = None
            target_op = None
            kind, value, name = 'unknown', None, None
            use.detail = 'argument is not pushed from ax'
        use.kind, use.value, use.name = kind, value, name
        if target is not None and target_op is not None and name:
            symbols[(target.address, target_op)] = name
        uses.append(use)
    return symbols, uses


def _push_is_ax(insn):
    from capstone import CS_OP_REG
    op = insn.operands[0]
    return op.type == CS_OP_REG and insn.reg_name(op.reg) == 'ax'


def _insn_at(insns, start, push_at, event):
    """The instruction a classified event came from."""
    if event.address is None:
        return None
    for insn in insns[start:start + push_at]:
        if insn.address == event.address:
            return insn
    return None


# ── rendered-.asm walker ────────────────────────────────────────────────────

@dataclass
class AsmItem:
    line: int
    mnemonic: str = ''
    operands: tuple = ()
    label: bool = False
    text: str = ''


_LABEL = re.compile(r'^[A-Za-z_@.?][\w@.$#?]*:\s*(?:;.*)?$')
_INSTRUCTION = re.compile(r'^\s+([A-Za-z][\w.]*)\s*(.*?)\s*$')
_SIZE = re.compile(r'^(?:strict\s+)?(?:byte|word|dword|qword|short)\s+',
                   re.IGNORECASE)
_NUMBER = re.compile(r'^(0x[0-9a-fA-F]+|\d+)$')
_SYMBOL = re.compile(r'^[A-Za-z_@.?][\w@.$#?]*$')


def parse_asm(text):
    """Split rendered assembly into :class:`AsmItem` values.

    Indented lines are instructions; a non-indented line is a label or a
    directive and acts as a block boundary.
    """
    items = []
    for number, raw in enumerate(text.splitlines(), 1):
        code = raw.split(';', 1)[0].rstrip()
        if not code.strip():
            continue
        if not code[0].isspace():
            items.append(AsmItem(number, label=True, text=code.strip()))
            continue
        match = _INSTRUCTION.match(code)
        if not match:
            items.append(AsmItem(number, label=True, text=code.strip()))
            continue
        operands = tuple(part.strip()
                         for part in match.group(2).split(',')
                         if part.strip())
        items.append(AsmItem(number, match.group(1).lower(), operands,
                             text=code.strip()))
    return items


def _text_value(text, symbol_values):
    """``(kind, value)`` for an operand: ``imm``, ``sym`` or ``other``."""
    stripped = _SIZE.sub('', text.strip())
    if _NUMBER.match(stripped):
        return 'imm', int(stripped, 0)
    if _SYMBOL.match(stripped) and stripped in symbol_values:
        return 'sym', symbol_values[stripped]
    return 'other', None


def _text_event(item, symbol_values):
    mnem = item.mnemonic
    if mnem in _AX_IMPLICIT:
        return _Event('clobber', line=item.line)
    if mnem not in _AX_WRITERS or not item.operands:
        return None
    if item.operands[0].lower() not in ('ax', 'al', 'ah'):
        return None
    if mnem not in ('mov', 'add') or len(item.operands) < 2:
        return _Event('clobber', line=item.line)
    kind, value = _text_value(item.operands[1], symbol_values)
    if kind in ('imm', 'sym'):
        return _Event(f'{mnem}-imm', value, line=item.line, op_index=1)
    return _Event(f'{mnem}-other', line=item.line)


def scan_asm_text(text, calls, names, bases, path=''):
    """Find message-id uses in one rendered ``.asm`` file.

    *names* is ``{id: MSG_*}`` and *bases* ``{id: MSG_*_BASE}``; the
    name-to-value map is derived from them so a header that already spells a
    constant keeps resolving.
    """
    by_routine = {call.routine: call for call in calls}
    symbol_values = {name: value for value, name in
                     list(names.items()) + list(bases.items())}
    items = parse_asm(text)
    uses = []
    for index, item in enumerate(items):
        if item.label or item.mnemonic != 'call' or not item.operands:
            continue
        routine = item.operands[0].strip()
        if routine.startswith('far '):
            routine = routine[4:].strip()
        call = by_routine.get(routine)
        if call is None:
            continue
        start = index - 1
        while start >= 0:
            prev = items[start]
            if prev.label or _is_text_flow(prev):
                break
            start -= 1
        block = items[start + 1:index]
        pushes = [position for position, entry in enumerate(block)
                  if entry.mnemonic == 'push']
        use = MessageUse(routine=routine, arg=call.arg, line=item.line,
                         path=path)
        if len(pushes) < call.push:
            use.detail = f'only {len(pushes)} push(es) before the call'
            uses.append(use)
            continue
        push_at = pushes[-call.push]
        push_item = block[push_at]
        if not push_item.operands:
            use.detail = 'push has no operand'
            uses.append(use)
            continue
        kind, value = _text_value(push_item.operands[0], symbol_values)
        if push_item.operands[0].lower() not in ('ax',):
            if kind in ('imm', 'sym'):
                use.kind = 'direct'
                use.value = value
                use.name = names.get(value)
                use.detail = '' if use.name else (
                    f'{value} has no message name')
            else:
                use.detail = 'argument is not pushed from ax'
            uses.append(use)
            continue
        events = [event for event in
                  (_text_event(entry, symbol_values)
                   for entry in block[:push_at])
                  if event is not None]
        kind, event = classify_events(events)
        use.kind, use.value, use.name = _resolve_use(
            kind, event, names, bases)
        if event is not None and not use.name:
            use.detail = (f'0x{use.value:04x} has no message name'
                          if use.value is not None
                          else 'producer is not a literal id')
        elif event is None:
            use.detail = 'producer is not a literal id'
        uses.append(use)
    return uses


def _is_text_flow(item):
    return item.mnemonic in _FLOW


# ── reports ─────────────────────────────────────────────────────────────────

# ── Generation ──────────────────────────────────────────────────────────────

_INCLUDE = re.compile(r'^\s*%include\s+"([^"]+)"', re.M)


def inc_rel():
    """The game's ASM message header, relative to ``src_<project>``."""
    return MSG_INC


def header_rel():
    """The game's C message header, relative to ``src_<project>``."""
    return MSG_H


def _included_asm(src_dir, master):
    """Every ``.asm`` a binary's master pulls in, transitively.

    ``%include`` paths resolve through the same ``-I`` the assembler uses
    (``src_<project>`` itself), which is why ``vdopt.asm`` spells
    ``%include "vdopt/ovmain.asm"``.  ``include/*.inc`` headers are not code
    and are skipped.
    """
    seen = set()
    out = []
    pending = [master]
    while pending:
        rel = pending.pop()
        path = os.path.join(src_dir, rel)
        if rel in seen or not os.path.isfile(path):
            continue
        seen.add(rel)
        with open(path, errors='replace') as f:
            text = f.read()
        out.append((rel, text))
        for include in _INCLUDE.findall(text):
            if include.endswith('.asm') and include not in seen:
                pending.append(include)
    return out


def sidecar_calls(sidecar):
    """Every ``message_calls`` entry, a binary's own replacing the project's."""
    from lib.sidecar.messages import merge_message_calls
    merged = list(sidecar.get('message_calls', []))
    for info in (sidecar.get('binaries') or {}).values():
        merged = merge_message_calls(merged, info.get('message_calls'))
    return message_calls(merged)


def _binary_uses(src_dir, binary, entry, names, base_names):
    """The message-id uses in one binary's own image.

    *names* is the current project-wide ``{id: MSG_*}`` and *base_names* the
    project ``message_bases`` table, both used only to resolve a use for the
    report; the emitted constants come from the union over every binary.
    """
    calls = message_calls(entry.get('message_calls') or ())
    if not calls:
        return []
    uses = []
    for rel, text in _included_asm(src_dir, f'{binary}.asm'):
        uses.extend(scan_asm_text(text, calls, names, base_names, path=rel))
    return uses


def seed_ids(src_dir, messages, bases=()):
    """Ids the hand C names, for a tree with no rendered asm.

    The C override compiles before anything is rendered, so a tree cleaned
    since the last build has no header for it.  Every ``MSG_*`` the sources
    use is already a pure function of the data (:func:`constant_names`), so
    the binding is exact, not a guess: a name that resolves to one id is
    seeded, and a name that resolves to none is left for the compiler to
    report.
    """
    from lib.autogen import hand_owned
    by_name = {}
    for value, name in constant_names(messages, bases).items():
        by_name.setdefault(name, []).append(value)
    for entry in bases:
        entry = _base_entry(entry)
        by_name[entry.name] = [entry.value]
    token = re.compile(r'\bMSG_[A-Za-z0-9_]+\b')
    found = set()
    for base, dirnames, filenames in os.walk(src_dir):
        dirnames[:] = [name for name in dirnames
                       if name not in ('include', 'build_out')]
        for name in filenames:
            if not name.endswith('.c'):
                continue
            path = os.path.join(base, name)
            if not hand_owned(path):
                continue
            with open(path, errors='replace') as f:
                text = f.read()
            for match in token.findall(text):
                values = by_name.get(match)
                if values and len(values) == 1:
                    found.add(values[0])
    return found


@lru_cache(maxsize=None)
def project_data(project, root):
    """``(messages, skipped, bases)`` for *project* under *root*.

    *messages* is ``None`` when the sidecar declares no ``message_data``.
    This is the whole of the naming input: the packed data and the sidecar's
    bases.  Every caller that needs names reads them the same way.  The
    decode is cached: a build asks once per binary it renders, and the
    callers only read the result.
    """
    from lib.sidecar.loader import load as load_sidecar
    sidecar = load_sidecar(project) or {}
    spec = sidecar.get('message_data')
    if not spec:
        return None, [], []
    app_dir = os.path.join(root, 'apps', project)
    messages, skipped = decode_messages(app_dir, message_data(sidecar))
    return messages, skipped, list(sidecar.get('message_bases') or ())


def generate_project(project, root, write=True, dump_all=False,
                     seed_only=False):
    """Generate the game's message headers for *project* under *root*.

    Returns ``({relative path: text}, stats)``.  With *write* false nothing is
    written, so a caller can compare the text with the checked-in files.  One
    header pair covers every binary: a message id is a property of the game's
    data, not of the binary that happens to use it.

    The constants are the bases, the ids the asm names, and the ids the hand C
    names (:func:`seed_ids`); every name is a pure function of the message
    data.  Nothing here reads a header this generator wrote.  *seed_only*
    writes just the bases and the hand C's ids: that is all a C compile needs
    before anything has been rendered.
    """
    from lib.sidecar.binary import per_binary
    from lib.sidecar.loader import load as load_sidecar
    app_dir = os.path.join(root, 'apps', project)
    src_dir = os.path.join(root, f'src_{project}')
    if not os.path.isdir(app_dir):
        raise FileNotFoundError(f'{project}: {app_dir} does not exist')

    messages, skipped, bases = project_data(project, root)
    if messages is None:
        # No packed-message table: the project has none, and any stale pair
        # from an earlier layout goes.
        if write:
            _write_outputs(src_dir, {})
        return {}, {'messages': 0, 'skipped': [], 'constants': 0,
                    'binaries': 0, 'resolved': 0, 'review': 0}
    base_names = message_bases(bases)
    # The scan and the renderer both name an id from the data alone; there is
    # no second naming source to consult.
    names = constant_names(messages, bases)
    if seed_only:
        constants = build_constants(
            messages, seed_ids(src_dir, messages, bases), bases)
        outputs = {}
        if constants:
            outputs[MSG_INC] = inc_text(constants)
            outputs[MSG_H] = header_text(constants)
        if write:
            _write_outputs(src_dir, outputs)
        return outputs, {'messages': len(messages), 'skipped': skipped,
                         'constants': len(constants), 'binaries': 0,
                         'resolved': 0, 'review': 0}
    sidecar = load_sidecar(project) or {}
    all_uses = []
    seen_uses = set()
    binaries = 0
    direct = set()
    for binary in sorted((sidecar.get('binaries') or {})):
        entry = per_binary(sidecar, binary) or {}
        uses = _binary_uses(src_dir, binary, entry, names, base_names)
        for use in uses:
            key = (use.path, use.line, use.routine, use.arg)
            if key not in seen_uses:
                seen_uses.add(key)
                all_uses.append(use)
            if (use.kind == 'direct' and use.value is not None
                    and use.value in messages):
                direct.add(use.value)
        if uses:
            binaries += 1
    if dump_all:
        direct = set(messages)
    else:
        # The hand C compiles against this header whatever the scan found
        # (and on a cleaned tree the scan has no asm at all), so the names
        # the C uses are always declared.  The binding is exact: a name is
        # seeded only when it resolves to one id in the message data.
        direct.update(seed_ids(src_dir, messages, bases))
    constants = build_constants(messages, direct, bases)
    outputs = {}
    if constants:
        outputs[MSG_INC] = inc_text(constants)
        outputs[MSG_H] = header_text(constants)
    stats = {
        'messages': len(messages),
        'skipped': skipped,
        'constants': len(constants),
        'binaries': binaries,
        'resolved': sum(1 for use in all_uses if use.name),
        'review': sum(1 for use in all_uses if not use.name),
    }
    if write:
        _write_outputs(src_dir, outputs)
    return outputs, stats


def _write_outputs(src_dir, outputs):
    """Write *outputs* and drop generated message headers no longer produced."""
    for rel, text in sorted(outputs.items()):
        _write(os.path.join(src_dir, rel), text, rel)
    include_dir = os.path.join(src_dir, 'include')
    if not os.path.isdir(include_dir):
        return
    from lib.autogen import is_generated
    # The split design's per-binary headers, and the old ``msg/`` tree.
    for tree in ('msgs', 'msg'):
        root = os.path.join(include_dir, tree)
        for base, _dirnames, filenames in os.walk(root, topdown=False):
            for name in filenames:
                path = os.path.join(base, name)
                rel = os.path.relpath(path, src_dir)
                if rel not in outputs and is_generated(path):
                    os.unlink(path)
                    print(f'removed {rel}')
            if base != root and not os.listdir(base):
                os.rmdir(base)
        if os.path.isdir(root) and not os.listdir(root):
            os.rmdir(root)
    # Legacy flat ``msg_*`` headers.
    for name in sorted(os.listdir(include_dir)):
        if not (name.startswith('msg_') and name.endswith(('.inc', '.h'))):
            continue
        rel = f'include/{name}'
        path = os.path.join(include_dir, name)
        if rel not in outputs and is_generated(path):
            os.unlink(path)
            print(f'removed {rel}')


def _write(path, text, rel=None):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    try:
        with open(path) as f:
            if f.read() == text:
                return
    except OSError:
        pass
    with open(path, 'w') as f:
        f.write(text)
    print(f'wrote {rel or path}')
