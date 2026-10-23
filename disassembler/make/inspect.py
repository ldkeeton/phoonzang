"""``make info`` / ``make data`` / ``make probe`` — routine-level inspection.

These are the authoring tools the reverse-engineering loop needs before a
source exists: what a fragment *is* (its span and any glued neighbour), what
an unlabeled data operand is called, and what a candidate ``.c`` compiles to
without running the whole gate.

``make info PROJECT BIN ROUTINE``
    The fragment's span, every top-level routine in it, each one's callers,
    the source beside it, and the tool/flags the build would use.  Embedded
    data bytes inside the root are reported separately, so they never make
    the root look shorter than the routine the author must write.

``make data PROJECT SEG OFFSET [BIN]``
    The bytes at a data-segment offset, its canonical build name
    (``bss_6eb5``/``dseg_00f0``) and whether the image file backs it.

``make probe PROJECT BIN ROUTINE [FILE=path]``
    Compile one candidate source with the routine's exact tool and flags, and
    print the resulting code with fixups and branch targets.  No gate, no
    whole-project rebuild.  ``LINKED=1`` also resolves relocations and reports
    the linked bytes against the original fragment.
"""

import functools
import json
import os
import re

from lib.autogen import hand_owned
from lib.cachedirs import spans_dir, symbols_dir
from lib.cross_ref import read_label_json
from lib.link import LinkError
from lib.sidecar.binary import per_binary
from lib.sidecar.constants import SIDECAR_DIR
from lib.sidecar.loader import load as load_sidecar
from lib.symtab import Kind
from main.projects import discover_binaries

from .common import APPS, PROJECT

SHARED_DIR = 'shared'

_ADDR_COMMENT = re.compile(r';\s*0x([0-9a-fA-F]+)\s*$')
_TOP_LABEL = re.compile(r'^([A-Za-z_]\w*):(?:\s*;.*)?$')
_CALL = re.compile(r'\b(?:call|jmp)\s+(?:short\s+|near\s+)?([A-Za-z_]\w*)\b')
_MEM_ABS = re.compile(r'\[\s*([^\]]*?)\b0x([0-9a-fA-F]{4,5})\s*\]')
_SKIP_LABEL = re.compile(r'^(?:@|jumptable_|__)')
#: Labels that are data, not a routine/code root.
_DATA_LABEL = re.compile(r'^(?:cseg|dseg|bss|psp)_[0-9a-f]{4,5}$')


def sidecar_path(project):
    return os.path.join(SIDECAR_DIR, f'{project}.json')


# ── files and cache sidecars ────────────────────────────────────────────────

def asm_file(project, binary, label):
    """``src_<project>/<binary>/**/<label>.asm``, or the shared one."""
    from .naming import _asm_file
    return _asm_file(project, binary, label) or _asm_file(project, SHARED_DIR,
                                                          label)


def source_path(project, binary, routine):
    """The hand source beside the routine's asm, if any."""
    path = asm_file(project, binary, routine)
    if path is None:
        return None
    stem = os.path.splitext(path)[0]
    for suffix in ('.c', '.s'):
        if os.path.isfile(stem + suffix):
            return stem + suffix
    return None


def load_spans(project, binary):
    path = os.path.join(spans_dir(project), f'{binary}_aztec_spans.json')
    try:
        with open(path) as f:
            return {label: tuple(span) for label, span in json.load(f).items()}
    except (OSError, ValueError):
        return {}


def load_labels(project, binary):
    path = os.path.join(os.path.dirname(spans_dir(project)), 'labels',
                        f'{binary}_labels.json')
    try:
        return read_label_json(path)
    except (OSError, ValueError, LinkError):
        return {}


def load_symbols(project, binary):
    """``{name: Symbol}`` from the build's symbol sidecar."""
    path = os.path.join(symbols_dir(project), f'{binary}.json')
    try:
        with open(path) as f:
            rows = json.load(f)
    except (OSError, ValueError):
        return {}
    from lib.symtab import from_record
    out = {}
    for row in rows:
        sym = from_record(row)
        out.setdefault(str(sym), sym)
    return out


def load_context(project, binary):
    from lib.renderctx import context_path, decode
    path = context_path(project, binary)
    if not os.path.isfile(path):
        return None
    with open(path) as f:
        return decode(json.load(f))


def binary_bytes(project, binary):
    """``(data, start_offset)`` of *binary*'s image, or ``(None, 0)``."""
    bins = discover_binaries(os.path.join(APPS, project))
    if binary not in bins:
        return None, 0
    rel_path, start = bins[binary]
    with open(os.path.join(APPS, project, rel_path), 'rb') as f:
        return f.read(), start


@functools.lru_cache(maxsize=None)
def _bins(project):
    return discover_binaries(os.path.join(APPS, project))


def segment_model(project, binary, data=None, context=None):
    """The binary's :class:`SegmentModel`, or None when the geometry is not
    statically known (raw drivers).  Reuses the build's host model so an
    overlay's DS operands resolve against the host's data segment."""
    from lib.segments import SegmentError, from_binary
    from main.projects import _build_host_model
    if data is None:
        data, _ = binary_bytes(project, binary)
    if data is None:
        return None
    bins = _bins(project)
    sidecar = load_sidecar(project)
    binary_type = (per_binary(sidecar, binary) if sidecar else {}).get('type')
    host = (_build_host_model(os.path.join(APPS, project), bins, sidecar)
            if binary_type == 'aztec_overlay' else None)
    try:
        model = from_binary(data, binary_type, bins[binary][1], host=host)
    except SegmentError:
        return None
    if context is not None:
        model.data_names = dict(context.get('data_names') or {})
    return model


def canonical_data(model, offset):
    """``dseg_XXXX``/``bss_XXXX`` for a DS offset, preferring a known name."""
    if model is not None:
        named = getattr(model, 'data_names', {}).get(offset)
        if named is not None:
            return str(named), named
    from lib.compare.symbols import data_symbol
    sym = data_symbol(model, offset)
    return str(sym), sym


# ── fragment shape ──────────────────────────────────────────────────────────

def top_labels(path):
    """``[(name, addr, line_index)]`` of the top-level labels in *path*."""
    with open(path) as f:
        lines = f.read().split('\n')
    out = []
    for i, line in enumerate(lines):
        m = _TOP_LABEL.match(line)
        if not m or _SKIP_LABEL.match(m.group(1)):
            continue
        addr = None
        for nxt in lines[i:i + 6]:
            hit = _ADDR_COMMENT.search(nxt)
            if hit:
                addr = int(hit.group(1), 16)
                break
        out.append((m.group(1), addr, i))
    return out


@functools.lru_cache(maxsize=None)
def _call_sites(project):
    """``{label: [(file_stem, line)]}`` over every generated ``.asm``."""
    from lib.cachedirs import src_dir
    root = src_dir(project, PROJECT)
    sites = {}
    for dirpath, dirs, files in os.walk(root):
        dirs[:] = [d for d in dirs if d not in ('build_out', 'inc')]
        for filename in sorted(files):
            if not filename.endswith('.asm'):
                continue
            stem = os.path.splitext(filename)[0]
            with open(os.path.join(dirpath, filename)) as f:
                for lineno, line in enumerate(f):
                    for name in _CALL.findall(line):
                        sites.setdefault(name, []).append(
                            (stem, lineno, line.strip()))
    return {name: rows for name, rows in sites.items()}


def _is_data_top(name, symbols):
    """True when a top label is data, not a routine/code root.

    A ``cseg_``/``dseg_`` name is data even without a symbol record, and the
    symbol sidecar can also mark a sidecar-named byte (``mpu401_...``) data.
    """
    sym = symbols.get(name)
    if sym is not None and sym.kind in (Kind.DATA, Kind.ANCHOR,
                                        Kind.LOCAL, Kind.TABLE):
        return True
    return bool(_DATA_LABEL.match(name))


def _top_addr(name, addr, symbols):
    """The byte a top label marks, preferring the symbol sidecar's offset.

    A data label often has no ``; 0x...`` comment (``label:`` followed by
    ``db``); ``top_labels`` then borrows the next instruction's address.  The
    sidecar knows the byte the name actually marks.
    """
    sym = symbols.get(name)
    exact = getattr(sym, 'offset', None) if sym is not None else None
    return exact if exact is not None else addr


def _split_top_labels(tops, symbols, start, end):
    """``(code_rows, embedded_data)`` for a fragment's top labels.

    A data label inside a routine does not end the routine: ``following``
    once used every top label, so the first flag byte after a prologue made
    the root look three bytes long.  Code members are cut by the next *code*
    label only; data labels are reported separately, as the bytes embedded in
    the root.
    """
    rows = [(_top_addr(name, addr, symbols), name, line)
            for name, addr, line in tops]
    rows = [(addr, name, line) for addr, name, line in rows
            if addr is not None and start <= addr < end]
    code = sorted((row for row in rows
                   if not _is_data_top(row[1], symbols)),
                  key=lambda row: row[0])
    data = sorted((row for row in rows if _is_data_top(row[1], symbols)),
                  key=lambda row: row[0])
    embedded = []
    for addr, name, _line in data:
        if embedded and embedded[-1]['end'] == addr:
            embedded[-1]['end'] = addr + 1
            embedded[-1]['names'].append(name)
        else:
            embedded.append({'start': addr, 'end': addr + 1,
                             'names': [name]})
    return code, embedded


def _shared_source(project, routine):
    """A donor binary's ``(labels, spans, symbols)`` for a shared routine.

    A ``shared/`` fragment is a copy of a routine from one or more binaries and
    carries neither address comments nor label/span sidecars of its own.  The
    routine's listing address and span live in each copy's binary, so borrow
    the first donor that has a span for it.
    """
    for donor in discover_binaries(os.path.join(APPS, project)):
        labels = load_labels(project, donor)
        if not any(str(sym) == routine for sym in labels.values()):
            continue
        spans = load_spans(project, donor)
        if routine not in spans:
            continue
        return labels, spans, load_symbols(project, donor)
    return {}, {}, {}


def _fragment(project, binary, routine):
    """The fragment's span and its top-level members."""
    path = asm_file(project, binary, routine)
    if path is None:
        raise SystemExit(f'error: no {routine}.asm in {binary}/ or {SHARED_DIR}/')
    if binary == SHARED_DIR:
        labels, spans, symbols = _shared_source(project, routine)
    else:
        spans = load_spans(project, binary)
        labels = load_labels(project, binary)
        symbols = load_symbols(project, binary)
    tops = top_labels(path)
    own_stem = os.path.splitext(os.path.basename(path))[0]
    # labels is keyed by offset; the name lives on the Symbol's str value.
    start = next((offset for offset, sym in labels.items()
                  if str(sym) == routine), None)
    if start is None:
        start = next((_top_addr(name, addr, symbols)
                      for name, addr, _ in tops if name == routine), None)
    if start is None:
        raise SystemExit(f'error: {path}: no address for {routine}')
    if routine in spans:
        end = spans[routine][1]
    else:
        later = sorted(a for a in
                       (_top_addr(name, addr, symbols)
                        for name, addr, _ in tops)
                       if a is not None and a > start)
        end = later[0] if later else start

    code_rows, embedded = _split_top_labels(tops, symbols, start, end)
    line_members = [(name, line) for _addr, name, line in code_rows]

    members = []
    for index, (addr, name, _) in enumerate(code_rows):
        sym = symbols.get(name)
        stop = code_rows[index + 1][0] if index + 1 < len(code_rows) else end
        callers = set()
        for stem, lineno, _line in _call_sites(project).get(name, []):
            if stem == own_stem:
                owner = next((n for n, l in reversed(line_members)
                              if l <= lineno), name)
                if owner != name:
                    callers.add(f'{owner} (same file)')
            else:
                callers.add(stem)
        members.append({'name': name, 'start': addr, 'end': stop,
                        'size': stop - addr,
                        'kind': (sym.kind.value if sym is not None else 'label'),
                        'callers': sorted(callers)})
    if not members:
        members = [{'name': routine, 'start': start, 'end': end,
                    'size': end - start, 'kind': 'routine', 'callers': []}]

    nxt = sorted(addr for addr, sym in labels.items()
                 if getattr(sym, 'kind', None) in (Kind.ROUTINE, Kind.LABEL)
                 and addr >= end)
    return {
        'asm': path,
        'start': start,
        'end': end,
        'size': end - start,
        'members': members,
        'embedded_data': embedded,
        'next': (str(labels[nxt[0]]), nxt[0]) if nxt else None,
    }


def _source_summary(project, binary, routine):
    path = source_path(project, binary, routine)
    if path is None:
        return None
    return {'path': path, 'suffix': os.path.splitext(path)[1],
            'hand': hand_owned(path)}


def _tool_summary(project, binary, routine, suffix):
    """``(tool, flags, provenance)`` for the source the build would use."""
    from lib.aztec import cache
    entry = None
    try:
        with open(cache.manifest_path(project, binary)) as f:
            entry = json.load(f).get('functions', {}).get(routine)
    except (OSError, ValueError):
        pass
    if entry is None:
        entry = cache.default_entry(routine, project, suffix)
        provenance = 'default'
    else:
        provenance = entry.get('file')
    try:
        kind, flags = cache._tool(project, binary, routine, entry)
    except Exception as exc:      # a broken sidecar should not hide info
        return None, None, f'{provenance} ({exc})'
    return kind, list(flags), provenance


def _name_surfaces(project, binary, routine, addr):
    """``(rows, shared)`` naming surfaces for *routine*, or empty on error."""
    from .naming import api_consumers, provenance_rows
    try:
        with open(sidecar_path(project)) as f:
            sidecar = json.load(f)
    except (OSError, ValueError):
        return [], []
    return (provenance_rows(sidecar, project, binary, routine, addr),
            api_consumers(sidecar, binary))


def cmd_info(project, binary, routine, json_out=False):
    frag = _fragment(project, binary, routine)
    src = _source_summary(project, binary, routine)
    suffix = src['suffix'] if src else '.c'
    tool, flags, provenance = _tool_summary(project, binary, routine, suffix)
    names, shared = _name_surfaces(project, binary, routine, frag['start'])
    info = {
        'routine': routine,
        'binary': binary,
        'asm': os.path.relpath(frag['asm'], PROJECT),
        'span': [frag['start'], frag['end']],
        'size': frag['size'],
        'members': [dict(member) for member in frag['members']],
        'embedded_data': frag['embedded_data'],
        'next': frag['next'][0] if frag['next'] else None,
        'source': (os.path.relpath(src['path'], PROJECT) if src else None),
        'hand': bool(src and src['hand']),
        'tool': tool,
        'flags': flags,
        'provenance': provenance,
        'names': names,
        'shared_names': shared,
    }
    if json_out:
        print(json.dumps(info, indent=1))
        return info

    print(f'fragment  {routine}  ({binary})')
    print(f'  span   0x{frag["start"]:04x}..0x{frag["end"]:04x}  '
          f'({frag["size"]} bytes)')
    print(f'  asm    {info["asm"]}')
    print(f'  source {info["source"] or "none"}'
          + ('  [hand-owned]' if info['hand'] else ''))
    if tool:
        print(f'  tool   {tool}  {" ".join(flags)}'
              f'  ({provenance})')
    else:
        print(f'  tool   unknown  ({provenance})')
    from .naming import print_provenance
    print_provenance(names, shared)
    for i, member in enumerate(frag['members']):
        role = 'root' if i == 0 else 'co-tenant'
        callers = member['callers']
        extra = (f'  called from {", ".join(callers)}' if callers else '')
        print(f'  {role:9} {member["name"]:24} '
              f'0x{member["start"]:04x}..0x{member["end"]:04x} '
              f'({member["size"]} bytes){extra}')
    if len(frag['members']) > 1:
        print('  note   the C defines every member above, in address order')
    for block in frag['embedded_data']:
        names = ', '.join(block['names'])
        print(f'  note   embedded data 0x{block["start"]:04x}..'
              f'0x{block["end"]:04x} ({names})')
    if frag['embedded_data'] and len(frag['members']) == 1:
        print(f'  note   the root spans the whole {frag["size"]}-byte fragment; '
              f'write one source for it')
    if frag['next']:
        print(f'  next   {frag["next"][0]} 0x{frag["next"][1]:04x}')
    return info


# ── data-segment bytes ──────────────────────────────────────────────────────

def _hexdump(data, base, width=16):
    for off in range(0, len(data), width):
        chunk = data[off:off + width]
        text = ''.join(chr(b) if 0x20 <= b < 0x7f else '.' for b in chunk)
        print(f'  0x{base + off:04x}  {chunk.hex(" "):<{width * 3 - 1}}  |{text}|')


def _number(text):
    """An offset as the asm spells it: ``0x6eb5``, bare ``6eb5`` or decimal."""
    text = str(text)
    if text.lower().startswith('0x'):
        return int(text, 16)
    if all(c in '0123456789' for c in text):
        return int(text, 10)
    return int(text, 16)


def _symbol_offset(project, binary, name):
    """Resolve a known DS name to its offset, or None."""
    context = load_context(project, binary) or {}
    for off, sym in (context.get('data_names') or {}).items():
        if str(sym) == name:
            return off
    for sym, value in (context.get('mem_equ') or {}).items():
        if str(sym) == name:
            return value
    from .naming import data_owner
    with open(sidecar_path(project)) as f:
        sidecar = json.load(f)
    owner = data_owner(sidecar, binary)
    for block in (sidecar.get('binaries', {}).get(owner, {})
                  .get('data_names', {}),
                  sidecar.get('binaries', {}).get(binary, {})
                  .get('code_data_names', {})):
        for key, entry in block.items():
            if entry.get('name') == name:
                return int(key, 16)
    return None


def cmd_data(project, segment, offset, binary=None, length=16, json_out=False):
    """Print what lives at *segment*:*offset* (DS/SS/ES or CS)."""
    from .naming import data_owner
    with open(sidecar_path(project)) as f:
        sidecar = json.load(f)
    if binary is None:
        binary = data_owner(sidecar, 'ds')
    segment = segment.upper()
    if isinstance(offset, str):
        try:
            offset = _number(offset)
        except ValueError:
            resolved = _symbol_offset(project, binary, offset)
            if resolved is None:
                raise SystemExit(f'error: unknown data name {offset!r}')
            offset = resolved
    data, _ = binary_bytes(project, binary)
    if data is None:
        raise SystemExit(f'error: unknown binary {binary!r}')
    context = load_context(project, binary)
    model = segment_model(project, binary, data, context)
    if model is None:
        raise SystemExit(f'error: {binary}: no segment geometry')
    if segment == 'CS' and getattr(model, 'kind', None) == 'overlay':
        # An overlay's listing comments are file offsets; an absolute CS value
        # (o_corg + file - header) is accepted too.
        file_off = model.code_offset(offset) if hasattr(model, 'code_offset') else None
        if file_off is not None and 0 <= file_off < len(data):
            where = ('file', file_off)
        elif 0 <= offset < len(data):
            where = ('file', offset)
        else:
            where = model.resolve(segment, offset)
    else:
        where = model.resolve(segment, offset)
    name, sym = canonical_data(model, offset) if segment != 'CS' else (
        None, None)
    info = {'binary': binary, 'segment': segment, 'offset': offset,
            'where': where[0], 'name': name,
            'space': (sym.space.value if sym is not None else None)}
    if where[0] == 'file':
        blob = data[where[1]:where[1] + length]
        info['file_offset'] = where[1]
        info['bytes'] = blob.hex()
        if json_out:
            print(json.dumps(info, indent=1))
            return info
        print(f'{segment}:{offset:04x}  {name or "?"}  '
              f'{info["space"] or "?"}  file 0x{where[1]:05x}')
        _hexdump(blob, offset)
        return info
    if json_out:
        print(json.dumps(info, indent=1))
        return info
    kind = {'bss': 'BSS (zero-filled; not in the file)',
            'psp': 'PSP field (not in the image)',
            'unknown': 'unmapped for this image'}.get(where[0], where[0])
    print(f'{segment}:{offset:04x}  {name or "?"}  {kind}')
    return info


# ── one-source compile probe ────────────────────────────────────────────────

def _disasm(code, base=0):
    try:
        from capstone import Cs, CS_ARCH_X86, CS_MODE_16
    except ImportError:
        return None
    return list(Cs(CS_ARCH_X86, CS_MODE_16).disasm(code, base))


def _display_path(path):
    """A path relative to the project, or the given path when outside it."""
    rel = os.path.relpath(path, PROJECT)
    return path if rel.startswith('..') else rel


def _link_probe(project, binary, routine, entry, whole, text):
    """Relocate a compiled probe and return ``(code, original, notes)``.

    The build's own render context and symbol index resolve every relocation
    the way :func:`make.elf.resplice_c` does, so the returned bytes are what
    the routine would be after placement, not the object's placeholder zeros.
    ``notes`` explains why linking was not possible (no span/context yet), and
    is a byte diff when the linked code is not exact.
    """
    from lib.aztec import cache, relink
    from lib.cachedirs import src_dir
    from lib.compare.coverrides import symbol_index
    from lib.shared import label_aliases

    spans = load_spans(project, binary)
    span = spans.get(routine)
    if span is None:
        return None, None, ['no fragment span; run "make build" first']
    data, image_start = binary_bytes(project, binary)
    if data is None:
        return None, None, [f'unknown binary {binary!r}']
    context = load_context(project, binary)
    if context is None:
        return None, None, ['no render context; run "make build" first']
    start, end = span
    segments = segment_model(project, binary, data, context)
    image_base = image_start - (getattr(segments, 'load_offset', 0) or 0)
    index = symbol_index(
        load_labels(project, binary), context['foreign_label_map'],
        context['data_labels'],
        {**context['mem_equ'], **context['geometry']},
        data, segments, image_base)
    labels_in = [(offset, name) for offset, name, _
                 in context['label_records'] if start <= offset < end]
    labels_at = {offset: name for offset, name, _
                 in context['label_records']}
    for offset, name in context.get('table_labels', {}).items():
        labels_at.setdefault(offset, name)
    try:
        linked = relink.link(routine, start, whole, index, data,
                             labels_in, labels_at,
                             cache.data_spans(project, binary, routine,
                                              entry, text),
                             aliases=label_aliases(
                                 src_dir(project, PROJECT), binary, routine))
    except relink.RelinkError as exc:
        return None, None, [str(exc)]
    return bytes(linked.code), data[start:end], []


def cmd_probe(project, binary, routine, source=None, json_out=False,
              linked=False):
    """Compile one candidate source with the routine's tool/flags and show it."""
    from lib.aztec import cache

    path = source or source_path(project, binary, routine)
    if path is None:
        raise SystemExit(f'error: no source for {routine}; pass FILE=...')
    with open(path) as f:
        text = f.read()
    suffix = os.path.splitext(path)[1]
    entry = None
    try:
        with open(cache.manifest_path(project, binary)) as f:
            entry = json.load(f).get('functions', {}).get(routine)
    except (OSError, ValueError):
        pass
    if entry is None:
        entry = cache.default_entry(routine, project, suffix)
    module, whole = cache.compile_source_module(project, binary, routine,
                                                entry, text)
    raw_code = whole.code
    code = raw_code
    spans = load_spans(project, binary)
    span = spans.get(routine)
    link_notes = []
    bytes_ok = None
    if linked:
        linked_code, original, link_notes = _link_probe(
            project, binary, routine, entry, whole, text)
        if linked_code is not None:
            code = linked_code
            bytes_ok = len(code) == len(original) and code == original
            if not bytes_ok:
                from lib.compare.cgate import check_against_original
                link_notes = check_against_original(
                    f'{routine} (linked)', span[0], original, code, exact=True)
    info = {
        'routine': routine,
        'source': (_display_path(path)),
        'length': len(raw_code),
        'fragment': span[1] - span[0] if span else None,
        'members': [{'name': name, 'offset': off}
                    for name, off in sorted(whole.members.items(),
                                            key=lambda row: row[1])],
        'fixups': [{'offset': fx.offset, 'kind': fx.kind,
                    'symbol': fx.symbol}
                   for fx in whole.fixups],
        'linked': bool(linked and bytes_ok is not None),
        'bytes_ok': bytes_ok,
    }
    if json_out:
        if link_notes:
            info['link_notes'] = link_notes
        print(json.dumps(info, indent=1))
        return info

    print(f'probe    {routine}  ({binary})  <- {info["source"]}')
    if span:
        mark = 'OK' if len(raw_code) == span[1] - span[0] else 'DIFF'
        print(f'  length {len(raw_code)} bytes; fragment {span[1] - span[0]} '
              f'bytes  [{mark}]')
    else:
        print(f'  length {len(raw_code)} bytes')
    if linked:
        if bytes_ok is None:
            print(f'  link     unavailable: {link_notes[0]}')
        else:
            frag_len = span[1] - span[0] if span else len(code)
            print(f'  link     {len(code)} bytes; fragment {frag_len} '
                  f'bytes  [{"OK" if bytes_ok else "DIFF"}]')
            for line in link_notes:
                print(f'  {line}')
    if len(whole.members) > 1:
        print('  members ' + ', '.join(
            f'{name}@0x{off:x}' for name, off in
            sorted(whole.members.items(), key=lambda row: row[1])))
    fixups = {fx.offset: fx for fx in whole.fixups}
    endpoints = {off: name for name, off in whole.members.items()}
    insns = _disasm(code)
    if insns is None:
        print(f'  code {code.hex()}')
        return info
    for insn in insns:
        if insn.address in endpoints:
            print(f'{insn.address:04x}  <{endpoints[insn.address]}>')
        note = ''
        for k in range(insn.address, insn.address + insn.size):
            fx = fixups.get(k)
            if fx is not None:
                note += f'   ; +{k - insn.address} {fx.kind} ' \
                        f'{fx.symbol or ""}'.rstrip()
        print(f'{insn.address:04x}  {insn.bytes.hex():<12} '
              f'{insn.mnemonic} {insn.op_str}{note}')
    return info
