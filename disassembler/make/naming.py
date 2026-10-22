"""``make name`` / ``make refs`` — name a routine's symbols in one step.

``make name PROJECT BIN SYMBOL=NAME[:NOTE] ...`` resolves each symbol as the
build spells it (``cseg_0d3a``, ``bss_1234``, ``io_loc_KRUO``, or a name
already given) to its sidecar entry, writes the entries, renames the
hand-owned sources and every reference in them, then builds and rebuilds the
project.  The sources are renamed before the build because a hand source
whose routine the sidecar renamed is an orphan the build refuses.

``make refs PROJECT BIN ROUTINE`` lists the address-named symbols a routine's
asm and source reference, with the sidecar entry each one resolves to.
"""

import json
import os
import re
import sys

from lib.autogen import hand_owned
from lib.cachedirs import src_dir
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


def set_entry(text, path, key, entry):
    """*text* with ``path[...][key] = entry``: rows sorted by key, every other
    row kept as written."""
    text, open_ = _object_at(text, path)
    close = _close_of(text, open_)
    rows = {k: text[v:e] for k, _, v, e in _members(text, open_)}
    rows[key] = json.dumps(entry, ensure_ascii=False)
    line_start = text.rfind('\n', 0, open_) + 1
    base = re.match(r'[ \t]*', text[line_start:]).group(0)
    body = ',\n'.join(f'{base}  {json.dumps(k)}: {rows[k]}' for k in sorted(rows))
    return text[:open_] + '{\n' + body + '\n' + base + '}' + text[close + 1:]


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


def _named(block, name):
    return next((k for k, v in (block or {}).items() if v.get('name') == name), None)


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
    elif binary != SHARED_DIR and _asm_file(project, binary, symbol):
        addr = _routine_addr(_asm_file(project, binary, symbol), symbol)
        if addr is None:
            raise SidecarError(f'{symbol}: no listing address in its asm')
        # ``ds`` keys are the listing address (its Ghidra base offset cancels
        # the header); the others are the address minus ``start_offset``.
        offset = 0 if own.get('ghidra_base_offset') is not None else own.get('start_offset', 0)
        path, key = ['binaries', binary, 'function_names'], f'{addr - offset:04x}'
    elif _asm_file(project, SHARED_DIR, symbol):
        key = symbol if _TAGGED.search(symbol) else _named(sidecar.get('routines'), symbol)
        if key is None:
            raise SidecarError(f'{symbol}: shared routine with no content tag or routines entry')
        path = ['routines']
    else:
        raise SidecarError(f'{symbol}: not a cseg_/bss_/dseg_ address, a named global, '
                           f'or a routine in {binary}/ or {SHARED_DIR}/')
    block = sidecar
    for p in path:
        block = block.get(p, {})
    return path, key, dict(block.get(key, {}))


# ── renaming the hand-owned sources ──────────────────────────────────────────

def _hand_files(project):
    top = src_dir(project, PROJECT)
    for dirpath, _, files in os.walk(top):
        for f in sorted(files):
            p = os.path.join(dirpath, f)
            if f.endswith(_REWRITE_SUFFIXES) and hand_owned(p):
                yield p


def rename_sources(project, renames):
    """Rewrite ``old``/``old_`` to ``new``/``new_`` in every hand-owned source
    and rename a source named after a renamed routine.  Returns the changed
    paths."""
    if not renames:
        return []
    pattern = re.compile(r'\b(' + '|'.join(map(re.escape, renames)) + r')(_?)\b')
    changed = []
    for p in list(_hand_files(project)):
        with open(p) as f:
            text = f.read()
        new = pattern.sub(lambda m: renames[m.group(1)] + m.group(2), text)
        if new != text:
            with open(p, 'w') as f:
                f.write(new)
            changed.append(p)
        stem, ext = os.path.splitext(os.path.basename(p))
        if stem in renames and ext in ('.c', '.s'):
            dest = os.path.join(os.path.dirname(p), renames[stem] + ext)
            if os.path.exists(dest):
                raise SystemExit(f'error: {dest} already exists')
            os.rename(p, dest)
            changed.append(f'{p} -> {dest}')
    return changed


# ── commands ─────────────────────────────────────────────────────────────────

#: Command-line variables ``make`` itself takes; never naming specs.
_MAKE_VARS = {'ARGS', 'EXTRA_FLAGS', 'EXACT_FLAG', 'VERBOSE', 'ASM_STAGELOG',
              'ASM_DOSBOX_SHOW', 'ASM_DOSBOX_TIMEOUT'}


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


def apply_names(project, binary, specs):
    """Write *specs* to the sidecar and rename the sources; returns the
    ``{old: new}`` renames.  Nothing is written if any symbol fails to
    resolve or the result does not validate."""
    from lib.sidecar.loader import load
    path_ = sidecar_path(project)
    with open(path_) as f:
        original = f.read()
    sidecar = json.loads(original)
    text = original
    renames = {}
    for sym, name, note in specs:
        path, key, entry = resolve(sidecar, project, binary, sym)
        entry['name'] = name
        if note:
            entry['note'] = note
        text = set_entry(text, path, key, entry)
        print(f'  {sym} -> {name}  ({".".join(path)}["{key}"])')
        if sym != name:
            renames[sym] = name
    json.loads(text)
    with open(path_, 'w') as f:
        f.write(text)
    try:
        load(project)
    except SidecarError as exc:
        with open(path_, 'w') as f:
            f.write(original)
        raise SystemExit(f'error: sidecar rejected, left unchanged: {exc}')
    for p in rename_sources(project, renames):
        print(f'  rewrote {os.path.relpath(p, PROJECT) if " -> " not in p else p}')
    return renames


def cmd_name(project, binary, args, all_projects):
    from .build import _build_projects, _rebuild_project
    specs = parse_specs(args)
    if not specs:
        raise SystemExit('Usage: make name PROJECT BIN SYMBOL=NAME[:NOTE] ...')
    try:
        apply_names(project, binary, specs)
    except SidecarError as exc:
        raise SystemExit(f'error: {exc}')
    _build_projects([project], all_projects)
    _rebuild_project(project)


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


def cmd_refs(project, binary, routine):
    """Print the address-named and content-tagged symbols *routine*
    references (asm and source), each with the sidecar entry it resolves to."""
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
    if not seen:
        print(f'{routine}: no address-named symbols')
        return
    for sym in seen:
        try:
            p, key, _ = resolve(sidecar, project, binary, sym)
            print(f'  {sym:24} {".".join(p)}["{key}"]')
        except SidecarError as exc:
            home = _label_home(project, binary, sym)
            print(f'  {sym:24} ' + (f'label inside {home} (not a routine entry)'
                                    if home else f'unresolved: {exc}'))


def _label_home(project, binary, label):
    """The asm file (``x.asm``) in *binary*/ or shared/ that defines *label*
    inside another routine, or None."""
    for folder in (binary, SHARED_DIR):
        top = os.path.join(src_dir(project, PROJECT), folder)
        for dirpath, _, files in os.walk(top):
            for f in sorted(files):
                if f.endswith('.asm'):
                    with open(os.path.join(dirpath, f)) as fh:
                        if re.search(rf'^{re.escape(label)}:', fh.read(), re.M):
                            return f
    return None
