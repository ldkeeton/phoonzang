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
* :func:`find_message_symbols` resolves arguments from decoded instructions.

The ASM header describes the complete database.  The C header is a subset
selected by proven decoded-code uses and names hand-written C uses, keeping
the DOS compiler's macro
table small.  Both use the same data-derived names and values; neither reads
rendered ASM or a previously generated header.
"""

from __future__ import annotations

from dataclasses import dataclass
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


def _tree_words(tree):
    """The Huffman *tree* as words: node byte offset ``n`` reads ``[n // 2]``."""
    return struct.unpack(f'<{len(tree) // 2}H', tree[:len(tree) & ~1])


def _byte_step(node, byte, words):
    """Walk one packed *byte* from *node*: ``(symbols, node, error)``.

    *error* is set when a bit indexes past the tree; the symbols before it
    still count, because a record may end before that bit is read.
    """
    out = []
    for shift in range(7, -1, -1):
        try:
            value = words[(node >> 1) + ((byte >> shift) & 1)]
        except IndexError:
            return ''.join(out), node, True
        if value & 0x8000:
            node = ((-value) & 0xffff) * 4
            continue
        out.append(chr(value))
        node = 0
    return ''.join(out), node, False


def _decode_record(packed, count, words, steps):
    """Decode *count* symbols from the Huffman tree's *words*.

    *steps* memoizes :func:`_byte_step` by ``(node, byte)`` across records,
    so each packed byte is one lookup instead of eight tree reads.
    """
    out = ''
    node = 0
    for byte in packed:
        if len(out) >= count:
            break
        key = node << 8 | byte
        step = steps.get(key)
        if step is None:
            step = steps[key] = _byte_step(node, byte, words)
        symbols, node, error = step
        out += symbols
        if error and len(out) < count:
            raise IndexError('message tree index out of range')
    return out[:count]


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

    words = _tree_words(tree)
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
    steps = {}
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
                messages[number] = _decode_record(record[1:], record[0], words,
                                                  steps)
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
    return cleaned.replace(';', ':').replace('"', "'").replace('*/', '* /')


def constant_names(messages, bases=()):
    """``{id: MSG_*}`` for every message, from the data alone.

    Collisions are resolved against the whole message database.  A sidecar
    base supplies the canonical name for its value, including literal uses,
    so headers and instruction operands always agree.
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
    names.update(message_bases(bases))
    return names


def build_constants(messages, direct_ids=(), bases=()):
    """Return the constants for the header, sorted by value then name.

    *direct_ids* are the message ids the code passes literally; *bases* are
    the sidecar's ``message_bases`` entries (``value``/``name``/``note``).
    A base value is emitted once, under its sidecar name, even if the same
    value is also requested as a literal.
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
    from lib.autogen import HEADERS_ASM
    lines = [
        HEADERS_ASM,
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
    from lib.autogen import HEADERS_C
    lines = [
        HEADERS_C,
        '#ifndef MSG_H',
        '#define MSG_H',
        '',
    ]
    for const in constants:
        text = _comment(const.text or const.note)
        row = f'#define {const.name} {const.value}'
        lines.append(row.ljust(38) + f'/* "{text}" */' if text else row)
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
    detail: str = ''


# ── Decoded message provenance ─────────────────────────────────────────────


def find_message_symbols(insns, calls, names, bases, resolve, boundaries=()):
    """Name the message-id operands in a decoded instruction stream.

    *insns* is address-ordered; *calls* the sidecar's :class:`MessageCall`
    list; *names* ``{id: MSG_*}`` and *bases* ``{id: MSG_*_BASE}``;
    *resolve(insn)* returns the routine a ``call`` targets, or None.
    *boundaries* is an optional set of instruction addresses that begin a new
    basic block. Routine prologues and decoded branches define the flow;
    forwarding wrappers are inferred from their frame-argument uses.

    Returns ``({(address, operand_index): name}, [MessageUse])``.  The map is
    keyed by the *producer* instruction, so an unrelated ``mov ax, 2026`` is
    never renamed.
    """
    from lib.msgflow import analyze
    symbols, uses, _params = analyze(insns, calls, names, bases, resolve,
                                     labels=boundaries)
    return symbols, uses


# ── Generation ──────────────────────────────────────────────────────────────

def inc_rel():
    """The game's ASM message header, relative to ``src_<project>``."""
    return MSG_INC


def header_rel():
    """The game's C message header, relative to ``src_<project>``."""
    return MSG_H


def sidecar_calls(sidecar):
    """Every ``message_calls`` entry, a binary's own replacing the project's."""
    from lib.sidecar.messages import merge_message_calls
    merged = list(sidecar.get('message_calls', []))
    for info in (sidecar.get('binaries') or {}).values():
        merged = merge_message_calls(merged, info.get('message_calls'))
    return message_calls(merged)


def c_message_ids(src_dir, names):
    """Select catalog ids named by hand-written C, without reading ASM.

    This selects declarations, never discovers values: all bindings come
    from the decoded catalog.  Unknown names remain compiler errors.
    """
    from lib.autogen import hand_owned
    by_name = {name: value for value, name in names.items()}
    token = re.compile(r'\bMSG_[A-Za-z0-9_]+\b')
    found = set()
    for base, dirnames, filenames in os.walk(src_dir):
        dirnames[:] = sorted(name for name in dirnames
                            if name not in ('include', 'build_out'))
        for filename in sorted(filenames):
            path = os.path.join(base, filename)
            if not filename.endswith('.c') or not hand_owned(path):
                continue
            with open(path, errors='replace') as f:
                found.update(by_name[name] for name in token.findall(f.read())
                             if name in by_name)
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


def generate_project(project, root, write=True, used_ids=()):
    """Generate both headers from packed message data and sidecar bases.

    Returns ``({relative path: text}, stats)``.  ASM receives every decoded
    id; C receives decoded-code uses, hand-written C uses, and the bases.
    *used_ids* comes from the upstream instruction analysis; this function
    combines it with hand-written C uses. Clean, incremental and partial
    builds share the same name/value bindings.
    Rendered ASM and previously generated headers are never inputs.
    """
    app_dir = os.path.join(root, 'apps', project)
    src_dir = os.path.join(root, f'src_{project}')
    if not os.path.isdir(app_dir):
        raise FileNotFoundError(f'{project}: {app_dir} does not exist')
    messages, skipped, bases = project_data(project, root)
    constants = (build_constants(messages, messages, bases)
                 if messages is not None else [])
    outputs = {}
    c_constants = []
    if constants:
        names = constant_names(messages, bases)
        c_constants = build_constants(
            messages, set(used_ids) | c_message_ids(src_dir, names), bases)
        outputs[MSG_INC] = inc_text(constants)
        outputs[MSG_H] = header_text(c_constants)
    if write:
        _write_outputs(src_dir, outputs)
    return outputs, {'messages': len(messages or {}), 'skipped': skipped,
                     'constants': len(constants),
                     'c_constants': len(c_constants)}


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
