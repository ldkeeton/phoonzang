"""``make name`` / ``make refs`` — name a routine's symbols in one step.

``make name PROJECT BIN SYMBOL=NAME[:NOTE] ...`` resolves each symbol as the
build spells it (``cseg_0d3a``, ``bss_1234``, ``io_loc_KRUO``, a content-tag
``routines`` key, or a name already given) to its sidecar entry, writes every
naming surface the routine has (``function_names``, the project-wide
``routines`` entry keyed by content tag, and the ``dispatch_table`` slot),
renames the hand-owned sources and every reference in them, then builds and
rebuilds the project.  The sources are renamed before the build because a hand
source whose routine the sidecar renamed is an orphan the build refuses.  A
failed build rolls the sidecar and sources back and drops label exports the
failed build wrote.

``DRY_RUN=1 make name ...`` (or ``--dry-run``) prints the same plan without
writing; ``make info`` and ``make refs`` show each naming surface and which one
wins.

``make refs PROJECT BIN ROUTINE`` lists the address-named symbols a routine's
asm and source reference, with the sidecar entry each one resolves to.
"""

import functools
import json
import os
import re
import sys

from lib.autogen import hand_owned
from lib.cachedirs import labels_dir, src_dir
from lib.sidecar.constants import SIDECAR_DIR
from lib.sidecar.errors import SidecarError

from .common import PROJECT

SHARED_DIR = 'shared'

_CSEG = re.compile(r'^cseg_([0-9a-f]{4,5})$')
_DSEG = re.compile(r'^(?:bss|dseg)_([0-9a-f]{4,5})$')
#: A content-tagged routine label (``io_loc_KRUO``, ``loc_GOTP_17f0``) or a
#: plain address one (``loc_0614``).
_AUTO_ROUTINE = re.compile(r'^(?:\w+_)?loc_(?:[G-V]{4}(?:_[0-9a-f]{4,5})?|[0-9a-f]{4,5})$')
_TAGGED = re.compile(r'_[G-V]{4}(?:_[0-9a-f]{4,5})?$')
_ADDR_COMMENT = re.compile(r';\s*0x([0-9a-fA-F]+)\s*$')
_IDENT = re.compile(r'^[A-Za-z_]\w*$')
#: Files a rename rewrites, when hand-owned.
_REWRITE_SUFFIXES = ('.c', '.s', '.h', '.asm', '.inc')


def sidecar_path(project):
    return os.path.join(SIDECAR_DIR, f'{project}.json')


# ── JSON splicing (keeps the file's layout; only one row changes) ────────────

def _close_of(text, open_):
    """Index of the ``}`` matching the ``{`` at *open_* (string-aware)."""
    depth = 0
    i = open_
    while i < len(text):
        c = text[i]
        if c == '"':
            i += 1
            while text[i] != '"':
                i += 2 if text[i] == '\\' else 1
        elif c in '{[':
            depth += 1
        elif c in '}]':
            depth -= 1
            if depth == 0:
                return i
        i += 1
    raise SidecarError('unbalanced braces in sidecar')


def _members(text, open_):
    """``[(key, key_start, value_start, value_end)]`` of the object at *open_*;
    *value_end* is exclusive."""
    close = _close_of(text, open_)
    out = []
    i = open_ + 1
    while i < close:
        c = text[i]
        if c != '"':
            i += 1
            continue
        end = i + 1
        while text[end] != '"':
            end += 2 if text[end] == '\\' else 1
        key = json.loads(text[i:end + 1])
        j = text.index(':', end) + 1
        while text[j].isspace():
            j += 1
        if text[j] in '{[':
            vend = _close_of(text, j) + 1
        elif text[j] == '"':
            vend = j + 1
            while text[vend] != '"':
                vend += 2 if text[vend] == '\\' else 1
            vend += 1
        else:
            vend = j
            while vend < close and text[vend] not in ',}\n':
                vend += 1
        out.append((key, i, j, vend))
        i = vend
    return out


def _object_at(text, path):
    """Open-brace index of the object at *path* (keys from the root), creating
    each missing level as an empty object; returns ``(text, open_)``."""
    open_ = text.index('{')
    for name in path:
        hit = next((m for m in _members(text, open_) if m[0] == name), None)
        if hit is None:
            indent = re.match(r'\{\s*\n([ \t]*)', text[open_:])
            indent = indent.group(1) if indent else ''
            text = (text[:open_ + 1] + f'\n{indent}{json.dumps(name)}: {{}},'
                    + text[open_ + 1:])
            hit = next(m for m in _members(text, open_) if m[0] == name)
        open_ = hit[2]
    return text, open_


def set_value(text, path, key, value):
    """*text* with ``path[...][key] = value``: the row changes, every other
    row keeps its place and spelling (a hand-ordered block is not re-sorted)."""
    text, open_ = _object_at(text, path)
    close = _close_of(text, open_)
    members = _members(text, open_)
    rows = {k: text[v:e] for k, _, v, e in members}
    order = [k for k, _, _, _ in members]
    if key not in rows:
        # A new key goes before the first later one; existing rows stay put,
        # even when the block is grouped rather than sorted.
        at = next((i for i, k in enumerate(order) if k > key), len(order))
        order.insert(at, key)
    rows[key] = json.dumps(value, ensure_ascii=False)
    line_start = text.rfind('\n', 0, open_) + 1
    base = re.match(r'[ \t]*', text[line_start:]).group(0)
    body = ',\n'.join(f'{base}  {json.dumps(k)}: {rows[k]}' for k in order)
    return text[:open_] + '{\n' + body + '\n' + base + '}' + text[close + 1:]


def set_entry(text, path, key, entry):
    """*text* with ``path[...][key] = entry``; see :func:`set_value`."""
    return set_value(text, path, key, entry)


# ── resolving a build spelling to its sidecar entry ──────────────────────────

def data_owner(sidecar, binary):
    """The binary whose ``data_names`` *binary*'s DS globals live in: its own
    when it is an MZ, else ``ds``, else the first MZ (lib/link.py host)."""
    bins = sidecar.get('binaries', {})
    if bins.get(binary, {}).get('type') == 'mz':
        return binary
    if 'ds' in bins:
        return 'ds'
    return next(b for b in sorted(bins) if bins[b].get('type') == 'mz')


def _asm_file(project, folder, label):
    """``src_<project>/<folder>/**/<label>.asm``, or None."""
    top = os.path.join(src_dir(project, PROJECT), folder)
    for dirpath, _, files in os.walk(top):
        if f'{label}.asm' in files:
            return os.path.join(dirpath, f'{label}.asm')
    return None


def _routine_addr(asm_path, label):
    """The listing address on the first instruction after ``label:``."""
    with open(asm_path) as f:
        lines = f.read().split('\n')
    row = next((i for i, l in enumerate(lines) if l.startswith(f'{label}:')), None)
    if row is None:
        return None
    for line in lines[row:row + 8]:
        m = _ADDR_COMMENT.search(line)
        if m:
            return int(m.group(1), 16)
    return None


def _label_file(project, folder, label):
    """The asm file under *folder* that defines *label* inside another
    routine, or None."""
    top = os.path.join(src_dir(project, PROJECT), folder)
    for dirpath, _, files in os.walk(top):
        for f in sorted(files):
            if f.endswith('.asm') and f != f'{label}.asm':
                path = os.path.join(dirpath, f)
                with open(path) as fh:
                    if re.search(rf'^{re.escape(label)}:', fh.read(), re.M):
                        return path
    return None


def _named(block, name):
    return next((k for k, v in (block or {}).items() if v.get('name') == name), None)


def _entry(sidecar, path, key):
    """The sidecar entry at *path*/*key*, or ``{}`` when it is absent."""
    block = sidecar
    for part in path:
        block = block.get(part, {})
    return dict(block.get(key, {}))


def _label_tag_key(project, binary, addr):
    """The content-tag key of this binary's routine at *addr*, or None.

    The build exports each label's ``base``/``tag``; the global ``routines``
    block is keyed by the tagged spelling (``dos_file_loc_IRLV``).
    """
    if project is None or addr is None:
        return None
    from lib.cross_ref import read_label_json
    from lib.link import LinkError
    path = os.path.join(labels_dir(project), f'{binary}_labels.json')
    try:
        labels = read_label_json(path)
    except (OSError, ValueError, KeyError, LinkError):
        return None
    symbol = labels.get(addr)
    if symbol is None:
        return None
    base = getattr(symbol, 'base', None)
    tag = getattr(symbol, 'tag', None)
    if not base or not tag:
        return None
    return f'{getattr(symbol, "prefix", "") or ""}{base}_{tag}'


def _routine_routines_key(sidecar, project, binary, addr, name):
    """The global ``routines`` key naming the routine at *addr*, or None.

    Prefer the exported content tag so one entry cannot be confused with a
    same-named routine in another binary.  Without a label export, a unique
    name match is safe; several matches need the tag spelling instead.
    """
    routines = sidecar.get('routines') or {}
    tag_key = _label_tag_key(project, binary, addr)
    if tag_key is not None:
        return tag_key if tag_key in routines else None
    matches = [key for key, entry in routines.items()
               if entry.get('name') == name]
    if len(matches) == 1:
        return matches[0]
    if len(matches) > 1:
        raise SidecarError(
            f'{name}: named by several routines entries '
            f'({", ".join(sorted(matches))}); name the tag itself')
    return None


def _routine_address(project, binary, *names):
    """The listing address of the first *name* found in this binary's asm."""
    for name in names:
        if not name:
            continue
        path = _asm_file(project, binary, name) or _label_file(
            project, binary, name)
        if path:
            addr = _routine_addr(path, name)
            if addr is not None:
                return addr
    return None


def resolve(sidecar, project, binary, symbol):
    """``(path, key, entry)`` for *symbol*: the JSON path of its sidecar block,
    its key there, and the entry it has now (``{}`` if none)."""
    bins = sidecar.get('binaries', {})
    if binary not in bins and binary != SHARED_DIR:
        raise SidecarError(f'unknown binary {binary!r}')
    # A shared/ routine runs in the host's data segment; its CS data has no
    # one binary to be keyed under.
    own = bins.get(binary, {})
    owner = data_owner(sidecar, binary)

    m = _CSEG.match(symbol)
    if m and binary == SHARED_DIR:
        raise SidecarError(f'{symbol}: name it from the binary whose CS holds it')
    if m:
        path, key = ['binaries', binary, 'code_data_names'], f'{int(m.group(1), 16):04x}'
    elif _DSEG.match(symbol):
        path = ['binaries', owner, 'data_names']
        key = f'{int(_DSEG.match(symbol).group(1), 16):04x}'
    elif _named(own.get('code_data_names'), symbol):
        path, key = ['binaries', binary, 'code_data_names'], _named(own['code_data_names'], symbol)
    elif _named(bins[owner].get('data_names'), symbol):
        path, key = ['binaries', owner, 'data_names'], _named(bins[owner]['data_names'], symbol)
    elif symbol in (sidecar.get('routines') or {}):
        path, key = ['routines'], symbol
    elif binary != SHARED_DIR and (_asm_file(project, binary, symbol)
                                   or _label_file(project, binary, symbol)):
        # A branch target inside a routine (``loc_3a3a``) becomes a routine.
        asm_path = (_asm_file(project, binary, symbol)
                    or _label_file(project, binary, symbol))
        addr = _routine_addr(asm_path, symbol)
        if addr is None:
            raise SidecarError(f'{symbol}: no listing address in its asm')
        # ``ds`` keys are the listing address (its Ghidra base offset cancels
        # the header); the others are the address minus ``start_offset``.
        offset = 0 if own.get('ghidra_base_offset') is not None else own.get('start_offset', 0)
        fn_key = f'{addr - offset:04x}'
        # A routine with no function_names entry may be named only by the
        # global routines block (keyed by content tag); rename that surface
        # rather than adding an untagged function_names entry that would
        # erase the tag the routines entry matches on.
        rkey = (None if fn_key in (own.get('function_names') or {})
                else _routine_routines_key(
                    sidecar, project, binary, addr, symbol))
        if rkey is not None:
            path, key = ['routines'], rkey
        else:
            path, key = ['binaries', binary, 'function_names'], fn_key
    elif _asm_file(project, SHARED_DIR, symbol):
        key = symbol if _TAGGED.search(symbol) else _named(sidecar.get('routines'), symbol)
        if key is None:
            raise SidecarError(f'{symbol}: shared routine with no content tag or routines entry')
        path = ['routines']
    else:
        raise SidecarError(f'{symbol}: not a cseg_/bss_/dseg_ address, a named global, '
                           f'or a routine in {binary}/ or {SHARED_DIR}/')
    return path, key, _entry(sidecar, path, key)


# ── every place a routine is named ───────────────────────────────────────────

def _binaries(sidecar):
    return sidecar.get('binaries') or {}


def _dispatch_names(sidecar, binary):
    table = (_binaries(sidecar).get(binary) or {}).get('dispatch_table') or {}
    return table.get('names') or {}


def dispatch_owner(sidecar, binary):
    """The binary whose ``dispatch_table.names`` name *binary*'s API slots.

    A driver table may name its slots itself.  A second driver can declare
    ``"api": "<driver>"`` and reuse that table, so the names live one or more
    hops away.  Returns None when no table in the chain names anything.
    """
    seen = set()
    owner = binary
    while owner and owner not in seen:
        seen.add(owner)
        table = (_binaries(sidecar).get(owner) or {}).get('dispatch_table') or {}
        if table.get('names'):
            return owner
        owner = table.get('api')
    return None


def _sidecar_key(sidecar, binary, addr):
    """The ``function_names`` key for listing address *addr*, or None."""
    if addr is None:
        return None
    own = _binaries(sidecar).get(binary) or {}
    offset = 0 if own.get('ghidra_base_offset') is not None else own.get(
        'start_offset', 0) or 0
    return f'{addr - offset:04x}'


def _dispatch_targets(project, sidecar, driver):
    """``{slot: routine offset}`` for a driver's declared dispatch table.

    The handlers are ``call target; retf`` entries; the target is the routine
    the slot names.  Empty when the image or table is unavailable.
    """
    if project is None:
        return {}
    from lib.match.driver_slots import entry_handlers
    from .inspect import binary_bytes
    data, _ = binary_bytes(project, driver)
    if data is None:
        return {}
    table = (_binaries(sidecar).get(driver) or {}).get('dispatch_table') or {}
    if not table:
        return {}
    out = {}
    for slot, handler in entry_handlers(data, table).items():
        if (handler + 4 <= len(data) and data[handler] == 0xE8
                and data[handler + 3] == 0xCB):
            rel = int.from_bytes(data[handler + 1:handler + 3], 'little',
                                 signed=True)
            out[slot] = (handler + 3 + rel) & 0xFFFF
    return out


def provenance_rows(sidecar, project, binary, routine, addr=None):
    """Every sidecar surface that names *routine* or its address.

    Each row is ``{surface, key, name, note, effective}``.  ``effective`` marks
    the name the build applies last.  ``function_names`` runs first, then the
    dispatch/driver names, then a ``routines`` entry keyed by the content tag;
    an untagged ``function_names`` rename replaces the tag, so that routines
    entry no longer matches and the later ``function_names`` name wins.
    """
    rows = []
    own = _binaries(sidecar).get(binary) or {}
    key = _sidecar_key(sidecar, binary, addr)
    for slot, entry in sorted((own.get('function_names') or {}).items()):
        name = entry.get('name')
        if (key is not None and slot == key) or name == routine:
            rows.append({'surface': 'function_names', 'key': slot,
                         'name': name, 'note': entry.get('note'),
                         'effective': False})
    routines = sidecar.get('routines') or {}
    tag_key = _label_tag_key(project, binary, addr)
    if tag_key is not None:
        # Only the entry keyed by this routine's content tag names it; a
        # same-named entry for another binary does not.
        entry = routines.get(tag_key)
        if entry is not None:
            rows.append({'surface': 'routines', 'key': tag_key,
                         'name': entry.get('name'), 'note': entry.get('note'),
                         'effective': False})
    else:
        for tag, entry in sorted(routines.items()):
            if entry.get('name') == routine:
                rows.append({'surface': 'routines', 'key': tag,
                             'name': entry.get('name'),
                             'note': entry.get('note'), 'effective': False})
    drivers = []
    owner = dispatch_owner(sidecar, binary)
    if owner:
        drivers.append(owner)
    if owner != binary and binary not in drivers:
        drivers.append(binary)
    for driver in drivers:
        names = _dispatch_names(sidecar, driver)
        targets = _dispatch_targets(project, sidecar, driver)
        for slot, name in sorted(names.items(), key=lambda row: int(row[0])):
            hit = targets.get(int(slot)) == addr
            if hit or name == routine:
                rows.append({'surface': f'{driver}.dispatch_table',
                             'key': slot, 'name': name, 'note': None,
                             'effective': False})
    for slots in own.get('driver_slots') or []:
        driver = slots.get('driver')
        prefix = slots.get('prefix') or ''
        names = _dispatch_names(sidecar, driver)
        for slot, name in sorted(names.items(), key=lambda row: int(row[0])):
            wrapped = f'{prefix}_{name}' if prefix else name
            if wrapped == routine:
                rows.append({'surface': f'driver_slots["{slots["offset"]}"]',
                             'key': slot, 'name': wrapped, 'note': None,
                             'effective': False})
    dispatch = [row for row in rows if row['surface'].endswith('dispatch_table')]
    plain = [row for row in rows if not row['surface'].endswith('dispatch_table')
             and row['surface'] != 'routines']
    tagged = [row for row in rows if row['surface'] == 'routines']
    chosen = (dispatch or plain or tagged)
    if chosen:
        chosen[-1]['effective'] = True
    return rows


def api_consumers(sidecar, binary):
    """One line per binary/wrapper that reuses *binary*'s API names."""
    out = []
    for name, info in sorted(_binaries(sidecar).items()):
        table = info.get('dispatch_table') or {}
        if table.get('api') == binary:
            out.append(f'{name} reuses the {binary} dispatch table')
        for slots in info.get('driver_slots') or []:
            if slots.get('driver') == binary:
                prefix = slots.get('prefix') or ''
                wrapper = f'{prefix}_<slot name>' if prefix else '<slot name>'
                out.append(f'{name}.driver_slots["{slots["offset"]}"] '
                           f'wraps each slot as {wrapper}')
    return out


def print_provenance(rows, shared=(), indent='  '):
    """Print the naming surfaces of one routine, effective name marked."""
    if not rows and not shared:
        return
    print(f'{indent}names')
    for row in rows:
        mark = '  [effective]' if row.get('effective') else ''
        print(f'{indent}        {row["surface"]}[{row["key"]}] = '
              f'{row["name"]}{mark}')
    for line in shared:
        print(f'{indent}        shared  {line}')
    if len({row['name'] for row in rows}) > 1:
        winners = [row for row in rows if row.get('effective')]
        if winners:
            winner = winners[-1]
            print(f'{indent}note   naming surfaces disagree; '
                  f'{winner["surface"]}[{winner["key"]}] wins')


# ── renaming the hand-owned sources ──────────────────────────────────────────

def _hand_files(project):
    top = src_dir(project, PROJECT)
    for dirpath, _, files in os.walk(top):
        for f in sorted(files):
            p = os.path.join(dirpath, f)
            if f.endswith(_REWRITE_SUFFIXES) and hand_owned(p):
                yield p


class _Journal:
    """Undo log for a naming transaction: sidecar and hand-source writes."""

    def __init__(self):
        self._edits = {}
        self._renames = []

    def edit(self, path, text):
        if path not in self._edits:
            with open(path) as f:
                self._edits[path] = f.read()
        with open(path, 'w') as f:
            f.write(text)

    def rename(self, old, new):
        os.rename(old, new)
        self._renames.append((old, new))

    def rollback(self):
        for old, new in reversed(self._renames):
            if os.path.exists(new):
                os.rename(new, old)
        for path, text in self._edits.items():
            with open(path, 'w') as f:
                f.write(text)


def rename_sources(project, renames, journal=None, dry_run=False):
    """Rewrite ``old``/``old_`` to ``new``/``new_`` in every hand-owned source
    and rename a source named after a renamed routine.  Returns a description
    per change; with *dry_run* nothing is written."""
    if not renames:
        return []
    pattern = re.compile(r'\b(' + '|'.join(map(re.escape, renames)) + r')(_?)\b')
    changed = []
    for p in list(_hand_files(project)):
        with open(p) as f:
            text = f.read()
        new = pattern.sub(lambda m: renames[m.group(1)] + m.group(2), text)
        stem, ext = os.path.splitext(os.path.basename(p))
        dest = None
        if stem in renames and ext in ('.c', '.s'):
            dest = os.path.join(os.path.dirname(p), renames[stem] + ext)
            if dest != p and os.path.exists(dest):
                raise SystemExit(f'error: {dest} already exists')
        if new == text and dest is None:
            continue
        changed.append(f'{p} -> {dest}' if dest else p)
        if dry_run:
            continue
        if new != text:
            if journal is not None:
                journal.edit(p, new)
            else:
                with open(p, 'w') as f:
                    f.write(new)
        if dest is not None:
            if journal is not None:
                journal.rename(p, dest)
            else:
                os.rename(p, dest)
    return changed


def _routine_companions(sidecar, project, binary, old, addr, primary):
    """Surfaces naming the same routine through another block.

    A routine can have both a ``function_names`` entry and a global
    ``routines`` entry keyed by its content tag.  Renaming only one leaves the
    other applying the old name (or strips the tag the routines entry needs),
    so the plan updates every one it can identify.
    """
    found = []
    own = _binaries(sidecar).get(binary) or {}
    fn_key = _sidecar_key(sidecar, binary, addr)
    functions = own.get('function_names') or {}
    if fn_key in functions and (
            (('binaries', binary, 'function_names'), fn_key) != primary):
        found.append((['binaries', binary, 'function_names'], fn_key,
                      functions[fn_key]))
    rkey = _routine_routines_key(sidecar, project, binary, addr, old)
    if rkey is not None and (('routines',), rkey) != primary:
        found.append((['routines'], rkey, (sidecar.get('routines') or {})[rkey]))
    return found


def plan_names(project, binary, specs):
    """Resolve *specs* and every naming surface they must update.

    Returns ``(sidecar_text, sidecar, renames, changes)`` without writing
    anything.  A dispatch-table slot names the same routine through a second
    sidecar surface; leaving it behind makes the runner apply the old name
    after the new one, so the plan updates it in the same transaction.
    """
    path_ = sidecar_path(project)
    with open(path_) as f:
        original = f.read()
    sidecar = json.loads(original)
    text = original
    renames = {}
    changes = []
    for sym, name, note in specs:
        path, key, entry = resolve(sidecar, project, binary, sym)
        old = entry.get('name') or sym
        entry = dict(entry)
        entry['name'] = name
        if note:
            entry['note'] = note
        text = set_entry(text, path, key, entry)
        sidecar = json.loads(text)
        changes.append({'symbol': sym, 'old': old, 'name': name,
                        'surface': f'{".".join(path)}["{key}"]'})
        is_routine = (path == ['routines']
                      or path == ['binaries', binary, 'function_names'])
        if is_routine and old != name:
            addr = _routine_address(project, binary, old, sym)
            for cpath, ckey, centry in _routine_companions(
                    sidecar, project, binary, old, addr,
                    (tuple(path), key)):
                centry = dict(centry)
                centry['name'] = name
                text = set_entry(text, cpath, ckey, centry)
                sidecar = json.loads(text)
                changes.append({
                    'symbol': sym, 'old': old, 'name': name,
                    'surface': f'{".".join(cpath)}["{ckey}"]'})
            owner = dispatch_owner(sidecar, binary)
            slots = [slot for slot, value in
                     _dispatch_names(sidecar, owner).items() if value == old]
            if slots and owner != binary:
                raise SidecarError(
                    f'{sym}: {owner}.dispatch_table.names['
                    f'{", ".join(sorted(slots))}] still says {old!r}; name '
                    f'the slot from {owner} or it overrides this entry')
            if slots:
                for slot in sorted(slots):
                    text = set_value(
                        text, ['binaries', binary, 'dispatch_table', 'names'],
                        slot, name)
                    changes.append({
                        'symbol': sym, 'old': old, 'name': name,
                        'surface': f'binaries.{binary}.dispatch_table.names'
                                   f'["{slot}"]'})
                sidecar = json.loads(text)
            own = _binaries(sidecar).get(binary) or {}
            for driver_slots in own.get('driver_slots') or []:
                driver = driver_slots.get('driver')
                prefix = driver_slots.get('prefix') or ''
                for slot, value in _dispatch_names(sidecar, driver).items():
                    wrapped = f'{prefix}_{value}' if prefix else value
                    if wrapped == old and driver != binary:
                        raise SidecarError(
                            f'{sym}: {binary}.driver_slots['
                            f'"{driver_slots["offset"]}"] wraps '
                            f'{driver}.dispatch_table.names["{slot}"] as '
                            f'{wrapped!r}; name the slot from {driver}')
        if old != name:
            renames[old] = name
    return text, sidecar, renames, changes


# ── commands ─────────────────────────────────────────────────────────────────

#: Command-line variables ``make`` itself takes; never naming specs.
_MAKE_VARS = {'ARGS', 'EXTRA_FLAGS', 'EXACT_FLAG', 'VERBOSE', 'ASM_STAGELOG',
              'ASM_DOSBOX_SHOW', 'ASM_DOSBOX_TIMEOUT', 'ASM_PROFILE', 'DRY_RUN'}


def specs_from_makeflags():
    """The ``SYMBOL=NAME[:NOTE]`` overrides of the invoking ``make``.

    ``make name P B io_loc_GHPS=opl_init`` makes the spec a variable override;
    make passes it on in ``MAKEFLAGS`` after `` -- ``, spaces escaped with
    ``\\`` and ``$`` doubled.
    """
    flags = os.environ.get('MAKEFLAGS', '')
    if ' -- ' not in f' {flags}':
        return []
    tail = f' {flags}'.split(' -- ', 1)[1]
    specs, cur, i = [], '', 0
    while i < len(tail):
        c = tail[i]
        if c == '\\' and i + 1 < len(tail):
            cur += tail[i + 1]
            i += 2
            continue
        if c == '$' and tail[i + 1:i + 2] == '$':
            cur += '$'
            i += 2
            continue
        if c == ' ':
            if cur:
                specs.append(cur)
            cur = ''
        else:
            cur += c
        i += 1
    if cur:
        specs.append(cur)
    return [s for s in specs if s.partition('=')[0] not in _MAKE_VARS]


def parse_specs(args):
    """``SYMBOL=NAME[:NOTE]`` arguments -> ``[(symbol, name, note|None)]``."""
    specs = []
    for arg in args:
        sym, sep, rest = arg.partition('=')
        name, colon, note = rest.partition(':')
        if not sep or not _IDENT.match(sym) or not _IDENT.match(name):
            raise SystemExit(f'error: {arg!r} is not SYMBOL=NAME[:NOTE]')
        specs.append((sym, name, note.strip() if colon else None))
    return specs


def apply_names(project, binary, specs, journal=None):
    """Write *specs* and every naming surface they affect, then rename the
    sources; returns the ``{old: new}`` renames."""
    from lib.sidecar.loader import load
    path_ = sidecar_path(project)
    with open(path_) as f:
        original = f.read()
    text, sidecar, renames, changes = plan_names(project, binary, specs)
    if journal is not None:
        journal.edit(path_, text)
    else:
        with open(path_, 'w') as f:
            f.write(text)
    try:
        load(project)
    except SidecarError as exc:
        with open(path_, 'w') as f:
            f.write(original)
        raise SidecarError(f'sidecar rejected, left unchanged: {exc}')
    for change in changes:
        print(f'  {change["old"]} -> {change["name"]}'
              f'  ({change["surface"]})')
    for p in rename_sources(project, renames, journal=journal):
        print(f'  rewrote {os.path.relpath(p, PROJECT) if " -> " not in p else p}')
    return renames


def _label_snapshot(project):
    """``{path: mtime_ns}`` of the project's exported labels before a build."""
    root = labels_dir(project)
    out = {}
    try:
        names = os.listdir(root)
    except OSError:
        return out
    for name in names:
        path = os.path.join(root, name)
        try:
            out[path] = os.stat(path).st_mtime_ns
        except OSError:
            pass
    return out


def _invalidate_changed_labels(project, snapshot):
    """Drop label exports a failed build rewrote, so info/refs cannot read
    names from a sidecar state that was rolled back."""
    root = labels_dir(project)
    try:
        names = os.listdir(root)
    except OSError:
        return
    for name in names:
        path = os.path.join(root, name)
        if not os.path.isfile(path):
            continue
        try:
            mtime = os.stat(path).st_mtime_ns
        except OSError:
            continue
        if snapshot.get(path) != mtime:
            try:
                os.unlink(path)
            except OSError:
                pass


def cmd_name(project, binary, args, all_projects, dry_run=False):
    specs = parse_specs(args)
    if not specs:
        raise SystemExit('Usage: make name PROJECT BIN SYMBOL=NAME[:NOTE] ...')
    if dry_run:
        try:
            _text, sidecar, renames, changes = plan_names(
                project, binary, specs)
        except SidecarError as exc:
            raise SystemExit(f'error: {exc}')
        print('dry run: sidecar changes')
        for change in changes:
            print(f'  {change["old"]} -> {change["name"]}'
                  f'  ({change["surface"]})')
        if renames:
            print('dry run: source changes')
            changed = rename_sources(project, renames, dry_run=True)
            for p in changed:
                print(f'  rewrote {os.path.relpath(p, PROJECT) if " -> " not in p else p}')
            if not changed:
                print('  (none)')
            shared = api_consumers(sidecar, binary)
            if shared:
                print('dry run: shared API')
                for line in shared:
                    print(f'  {line}')
        else:
            print('dry run: no name change')
        return
    from .build import _build_projects, _rebuild_project
    journal = _Journal()
    snapshot = None
    try:
        apply_names(project, binary, specs, journal=journal)
        snapshot = _label_snapshot(project)
        _build_projects([project], all_projects)
        _rebuild_project(project)
    except SidecarError as exc:
        journal.rollback()
        if snapshot is not None:
            _invalidate_changed_labels(project, snapshot)
        print('name changes rolled back')
        raise SystemExit(f'error: {exc}')
    except BaseException:
        journal.rollback()
        if snapshot is not None:
            _invalidate_changed_labels(project, snapshot)
        print('name changes rolled back')
        raise


_REF = re.compile(r'\b(?:cseg|bss|dseg)_[0-9a-f]{4,5}\b|\b(?:\w+_)?loc_[0-9A-Za-z_]+\b')
#: A content-tagged routine name (``ds_app_alloc_VKRR``), with the ``_`` a .s
#: appends; only counted when an asm file defines it, as C macros can look alike.
_TAGGED_REF = re.compile(r'\b\w+_[G-V]{4}(?:_[0-9a-f]{4,5})?_?\b')
_ANY_REF = re.compile(f'{_REF.pattern}|{_TAGGED_REF.pattern}')


def referenced(text, routine, is_routine):
    """The address-named and content-tagged symbols *text* references, in
    order, leaving out *routine* and labels *text* defines; a tagged name
    counts only when *is_routine* (sym) says an asm file defines it."""
    defined = set(re.findall(r'^(\w+):', text, re.M))
    seen = []
    for sym in _ANY_REF.findall(text):
        sym = sym[:-1] if sym.endswith('_') and not _AUTO_ROUTINE.match(sym) else sym
        if sym in defined or sym in seen or sym == routine:
            continue
        if not (_CSEG.match(sym) or _DSEG.match(sym) or _AUTO_ROUTINE.match(sym)
                or (_TAGGED.search(sym) and is_routine(sym))):
            continue
        seen.append(sym)
    return seen


#: A raw absolute memory displacement in the asm (``[bx + 0x6eb5]``).
_RAW_MEM = re.compile(r'\[\s*([^\]]*?)\b0x([0-9a-fA-F]{4,5})\s*\]')
_WORD_USE = re.compile(r'\b(byte|word|dword)\s*\[')


def _model_for(project, binary):
    from .inspect import binary_bytes, load_context, segment_model
    data, _ = binary_bytes(project, binary)
    if data is None:
        return None
    return segment_model(project, binary, data, load_context(project, binary))


_DEF_LINE = re.compile(r'^[ \t]*([A-Za-z_]\w*)[ \t]*(?::|[ \t]+equ\b)')


@functools.lru_cache(maxsize=None)
def _definition_index(project):
    """``{symbol: relative asm path}`` for every label/equ the tree spells."""
    top = src_dir(project, PROJECT)
    out = {}
    for dirpath, dirs, files in os.walk(top):
        dirs[:] = [d for d in dirs if d not in ('build_out', 'inc')]
        for filename in sorted(files):
            if not filename.endswith('.asm'):
                continue
            path = os.path.join(dirpath, filename)
            rel = os.path.relpath(path, PROJECT)
            with open(path) as f:
                for line in f:
                    hit = _DEF_LINE.match(line)
                    if hit:
                        out.setdefault(hit.group(1), rel)
    return out


def _data_defined_in(project, sym):
    """The asm file that spells *sym*, or None when nothing defines it yet."""
    return _definition_index(project).get(sym)


def _use_line(text, sym):
    pattern = re.compile(rf'\b{re.escape(sym)}_?\b')
    for line in text.split('\n'):
        if pattern.search(line) and not re.match(rf'\s*{re.escape(sym)}:', line):
            return line.strip()
    return None


def _fact(project, binary, sym, sidecar, text, own):
    """What the build knows about one referenced symbol."""
    fact = {'symbol': sym, 'kind': None, 'value': None, 'space': None,
            'canonical': sym, 'defined_in': None, 'use': _use_line(text, sym),
            'width': None}
    use = fact['use'] or ''
    hit = _WORD_USE.search(use)
    if hit:
        fact['width'] = hit.group(1)
    try:
        path, key, entry = resolve(sidecar, project, binary, sym)
        fact['sidecar'] = f'{".".join(path)}["{key}"]'
    except SidecarError:
        fact['sidecar'] = None
    if _DSEG.match(sym) or _CSEG.match(sym):
        fact['kind'] = 'data'
        fact['value'] = int(re.search(r'([0-9a-f]{4,5})$', sym).group(1), 16)
        if _DSEG.match(sym):
            model = _model_for(project, binary)
            if model is not None:
                from .inspect import canonical_data
                canonical, symobj = canonical_data(model, fact['value'])
                fact['canonical'] = canonical
                fact['space'] = symobj.space.value if symobj is not None else None
            else:
                fact['canonical'] = sym
        else:
            fact['space'] = 'cseg'
        fact['defined_in'] = _data_defined_in(project, sym)
        return fact
    home = _asm_file(project, binary, sym) or _asm_file(project, SHARED_DIR, sym)
    if home:
        fact['kind'] = 'public' if sym in own else 'routine'
        fact['value'] = _routine_addr(home, sym)
        fact['defined_in'] = os.path.relpath(home, PROJECT)
        return fact
    inner = _label_file(project, binary, sym) or _label_file(
        project, SHARED_DIR, sym)
    if inner:
        fact['kind'] = 'label inside'
        fact['value'] = _routine_addr(inner, sym)
        fact['defined_in'] = os.path.relpath(inner, PROJECT)
        return fact
    fact['kind'] = 'unresolved'
    return fact


def _raw_data_refs(project, text, model, known, skip):
    """Raw ``[bx + 0xNNNN]`` operands that no symbol names.

    A displacement under 0x100 is a struct field, and a ``bp``/``sp`` base is
    a frame slot, so only unbased/DS-indexed absolute offsets are candidates.
    """
    out = []
    seen = set(skip)
    for line in text.split('\n'):
        for match in _RAW_MEM.finditer(line):
            expr = match.group(1)
            value = int(match.group(2), 16)
            if value < 0x100:
                continue
            if re.search(r'\b(?:bp|sp|ss)\b', expr):
                continue
            if re.search(r'\bcs\s*:', expr):
                continue
            if value in seen:
                continue
            if model is not None:
                where = model.resolve('DS', value)
                if where[0] == 'unknown':
                    continue
            from .inspect import canonical_data
            canonical, sym = canonical_data(model, value)
            if value in known:
                canonical = str(known[value])
            seen.add(value)
            out.append({'symbol': None, 'kind': 'data', 'value': value,
                        'space': (sym.space.value if sym is not None else None),
                        'canonical': canonical,
                        'defined_in': _data_defined_in(project, canonical),
                        'use': line.strip(), 'width': None,
                        'sidecar': None})
    return out


def cmd_refs(project, binary, routine, json_out=False):
    """Print every symbol *routine* references, with what the build calls it.

    Besides the address-named and content-tagged names of the asm and source,
    this reports raw absolute data operands (``[bx + 0x6eb5]``) that have no
    label yet -- the C still has to spell them ``bss_6eb5``/``dseg_...`` --
    and the width each symbol is used at.
    """
    path = _asm_file(project, binary, routine) or _asm_file(project, SHARED_DIR, routine)
    if path is None:
        raise SystemExit(f'error: no {routine}.asm in {binary}/ or {SHARED_DIR}/')
    files = [path] + [os.path.splitext(path)[0] + s for s in ('.c', '.s')
                      if os.path.isfile(os.path.splitext(path)[0] + s)]
    text = ''.join(open(p).read() for p in files)
    with open(sidecar_path(project)) as f:
        sidecar = json.load(f)
    seen = referenced(text, routine, lambda sym: bool(
        _asm_file(project, binary, sym) or _asm_file(project, SHARED_DIR, sym)))
    # A .s's own publics are defined, not referenced, yet the build checks
    # each one against the name the sidecar gives its address.
    s_path = os.path.splitext(path)[0] + '.s'
    own = asm_publics(open(s_path).read()) if os.path.isfile(s_path) else []
    seen = [sym for sym in own if sym not in seen] + seen
    facts = [_fact(project, binary, sym, sidecar, text, own) for sym in seen]
    # Data names already present in the namespace, so a raw operand can use
    # the build's own spelling instead of a generated one.
    context = {}
    known = {}
    try:
        from .inspect import load_context
        context = load_context(project, binary) or {}
    except Exception:
        context = {}
    for off, sym in (context.get('data_names') or {}).items():
        known.setdefault(off, str(sym))
    for sym, value in (context.get('mem_equ') or {}).items():
        known.setdefault(value, str(sym))
    model = _model_for(project, binary)
    raws = _raw_data_refs(project, text, model, known,
                          {fact['value'] for fact in facts
                           if fact['value'] is not None})
    addr = _routine_addr(path, routine)
    names = provenance_rows(sidecar, project, binary, routine, addr)
    shared = api_consumers(sidecar, binary)
    if json_out:
        print(json.dumps({'routine': routine, 'binary': binary,
                          'names': names, 'shared_names': shared,
                          'symbols': facts, 'unlabeled': raws}, indent=1))
        return facts, raws
    print_provenance(names, shared)
    if not facts and not raws:
        print(f'{routine}: no address-named symbols')
        return facts, raws
    for fact in facts:
        value = ('0x%04x' % fact['value']) if fact['value'] is not None else '?'
        where = fact['space'] or ''
        width = fact['width'] or ''
        detail = fact['sidecar'] or ''
        if fact['kind'] == 'label inside':
            detail = f'label inside {os.path.basename(fact["defined_in"] or "")} (not a routine entry)'
        elif fact['kind'] == 'unresolved':
            detail = 'unresolved (not a routine, global, or data name)'
        elif fact['defined_in']:
            detail = (detail + '  ' if detail else '') + fact['defined_in']
        print(f'  {fact["symbol"]:24} {value:8} {where:5} {fact["kind"]:12} '
              f'{fact["canonical"]:20} {width:5} {detail}')
        if fact['use']:
            print(f'  {"":24} use: {fact["use"]}')
    for fact in raws:
        value = '0x%04x' % fact['value']
        print(f'  {"(unlabeled)":24} {value:8} {fact["space"] or "":5} '
              f'{"data":12} {fact["canonical"]:20} {"":5} '
              f'{fact["defined_in"] or ""}')
        if fact['use']:
            print(f'  {"":24} use: {fact["use"]}')
    return facts, raws


def asm_publics(text):
    """The address-named labels a ``.s`` declares ``public``, in order."""
    out = []
    for m in re.finditer(r'^[ \t]*public[ \t]+([^;\n]+)', text, re.M | re.I):
        for sym in (x.strip() for x in m.group(1).split(',')):
            if (_CSEG.match(sym) or _AUTO_ROUTINE.match(sym)) and sym not in out:
                out.append(sym)
    return out


def _label_home(project, binary, label):
    """The asm file (``x.asm``) in *binary*/ or shared/ that defines *label*
    inside another routine, or None."""
    for folder in (binary, SHARED_DIR):
        path = _label_file(project, folder, label)
        if path:
            return os.path.basename(path)
    return None
