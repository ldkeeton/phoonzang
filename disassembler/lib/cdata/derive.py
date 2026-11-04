"""Data-file layouts derived from the code that reads the files.

A part of a data file names what the code reads it into (``"into"``), and
its type follows from the project, never from a hand-written layout:

1. the variable's C declarations in ``src_<project>/`` (``extern struct
   path_edge path_edges[];``, a function's local array, an anonymous
   ``extern struct {...}``), the most specific one where several disagree
   (``struct path_edge`` over ``char``); a pointer stands for its target;
2. else the record layout recovered from the instructions at the variable's
   DS address (``records.json``, :mod:`lib.record_layout`);
3. else bytes.

``"memory"`` names the first variable of a run the code reads in one go
(``read_startup_file(..., disk_header, 780)``): the sidecar's DS names in
that range become one struct, a field per variable, each typed as above and
as long as the gap to the next name.

A struct the declarations do not name gets ``<variable>_rec``, the name
:mod:`lib.record_layout` gives it.  A record longer than its declared struct
grows the struct's trailing ``[1]`` array, the struct hack the code indexes
past (``message_directory.record``), else gets the rest as ``pad_<offset>``
(``maze_data``: 2608 of 2768 bytes).
"""

import os
import re

from .lang import CDataError, parse_text
from .layout import Array, Pointer, Scalar, StructType, scalar_type

_DECL_START = re.compile(r'^(?:(?:extern|static|register)\s+)*'
                         r'(?:struct|union|unsigned|signed|char|short|int|long)\b')
_INCLUDE = re.compile(r'^#include\s+"(structs/[^"]+)"', re.M)
_BYTE = scalar_type(['unsigned', 'char'])
_WORD = scalar_type(['int'])
_LONG = scalar_type(['long'])


def _strip_comments(text):
    return re.sub(r'/\*.*?\*/', ' ', text, flags=re.S)


def _statement_at(text, at):
    """The declaration statement around index *at*, or None."""
    depth, i = 0, at
    while i > 0:
        c = text[i - 1]
        if c in ')]}':
            depth += 1
        elif c in '([{':
            if depth == 0:
                break
            depth -= 1
        elif c == ';' and depth == 0:
            break
        elif c == '\n' and depth == 0 and text[i:].lstrip().startswith('#'):
            break
        i -= 1
    start, depth, j = i, 0, at
    while j < len(text):
        c = text[j]
        if c in '([{':
            depth += 1
        elif c in ')]}':
            depth -= 1
            if depth < 0:
                return None
        elif c == ';' and depth == 0:
            break
        j += 1
    stmt = text[start:j + 1].strip()
    lines = [ln for ln in stmt.splitlines() if not ln.lstrip().startswith('#')]
    stmt = '\n'.join(lines).strip()
    return stmt if _DECL_START.match(stmt) else None


def _specificity(ctype):
    """Rank of a declared type: a struct beats a word, a word beats a byte."""
    while isinstance(ctype, (Array, Pointer)):
        ctype = ctype.elem if isinstance(ctype, Array) else ctype.target
    if isinstance(ctype, StructType):
        return 3
    return 2 if ctype.size > 1 else 1


def _signed(ctype):
    while isinstance(ctype, (Array, Pointer)):
        ctype = ctype.elem if isinstance(ctype, Array) else ctype.target
    return isinstance(ctype, Scalar) and ctype.signed


def _rename(ctype, tag):
    """*ctype* with an anonymous struct given *tag*."""
    if isinstance(ctype, StructType) and ctype.key.strip() in ('struct', 'union'):
        return StructType(f'struct {tag}', ctype.fields, ctype.is_union)
    if isinstance(ctype, Array):
        return Array(_rename(ctype.elem, tag), ctype.count)
    if isinstance(ctype, Pointer):
        return Pointer(_rename(ctype.target, tag), ctype.far)
    return ctype


def _target(ctype):
    """What a declaration holds: a pointer's (or pointer array's) target, an
    unsized array's element (count 0), else the type itself."""
    if isinstance(ctype, Array) and isinstance(ctype.elem, Pointer):
        return ctype.elem.target
    if isinstance(ctype, Pointer):
        return ctype.target
    return ctype


def _grow_last(ctype, record, tag):
    """*ctype* with its trailing ``[1]`` array (the struct hack: entries
    follow) grown to fill *record* bytes, as ``struct <tag>``; else None."""
    if not isinstance(ctype, StructType) or not ctype.fields:
        return None
    name, last = ctype.fields[-1]
    if not isinstance(last, Array) or last.count != 1:
        return None
    extra = record - ctype.size
    if extra <= 0 or extra % last.elem.size:
        return None
    fields = ctype.fields[:-1] + [
        (name, Array(last.elem, 1 + extra // last.elem.size))]
    return StructType(f'struct {tag}', fields, ctype.is_union)


class Project:
    """The code a data layout is derived from."""

    def __init__(self, src_root, sidecar, include_dirs, layouts=None):
        self.src_root = src_root
        self.include_dirs = include_dirs
        self.layouts = layouts or {}
        self._sources = None
        self.names = {}             # binary -> {address: (name, note)}
        for binary, info in (sidecar.get('binaries') or {}).items():
            table = {}
            for key, entry in (info.get('data_names') or {}).items():
                if isinstance(entry, str):
                    entry = {'name': entry}
                table[int(key, 16)] = (entry['name'], entry.get('note'))
            self.names[binary] = table

    # ── C declarations ──────────────────────────────────────────────────────
    def _files(self):
        if self._sources is None:
            self._sources = []
            for root, _dirs, files in os.walk(self.src_root):
                for f in sorted(files):
                    if f.endswith(('.c', '.h')):
                        path = os.path.join(root, f)
                        with open(path, encoding='latin-1') as fh:
                            raw = fh.read()
                        self._sources.append((path, raw, _strip_comments(raw)))
        return self._sources

    def declarations(self, name, in_file=None):
        """``[(ctype, includes, where)]``: every C declaration of *name*."""
        found = []
        pattern = re.compile(rf'\b{re.escape(name)}\b')
        for path, raw, text in self._files():
            rel = os.path.relpath(path, self.src_root)
            if in_file and rel != in_file:
                continue
            seen = set()
            for m in pattern.finditer(text):
                stmt = _statement_at(text, m.start())
                if stmt is None or stmt in seen:
                    continue
                seen.add(stmt)
                includes = _INCLUDE.findall(raw)
                body = re.sub(r'^(?:(?:extern|static|register)\s+)*', '', stmt)
                body = body.replace('[]', '[0]')
                source = ''.join(f'#include "{inc}"\n' for inc in includes)
                try:
                    parsed = parse_text(source + body + '\n', self.include_dirs,
                                        name=rel)
                except CDataError:
                    continue
                for obj in parsed.objects:
                    if obj.name == name:
                        found.append((_rename(obj.type, f'{name}_rec'),
                                      includes, rel))
        return found

    def declared(self, name, in_file=None):
        """The most specific declaration of *name*: ``(ctype, includes)``."""
        found = self.declarations(name, in_file)
        if not found:
            return None
        ctype, includes, _where = max(found, key=lambda d: (
            _specificity(d[0]), not _signed(d[0])))
        return ctype, includes

    # ── sidecar names and recovered layouts ─────────────────────────────────
    def address(self, name):
        """``(binary, DS address)`` of a sidecar data name, else None."""
        for binary in sorted(self.names, key=lambda b: b != 'ds'):
            for addr, (label, _note) in self.names[binary].items():
                if label == name:
                    return binary, addr
        return None

    def names_between(self, binary, start, end):
        """``[(address, name, note)]`` in ``[start, end)`` of *binary* and
        the shared DS."""
        merged = dict(self.names.get('ds', {}))
        merged.update(self.names.get(binary, {}))
        return sorted((a, n, note) for a, (n, note) in merged.items()
                      if start <= a < end)

    def recovered(self, addr, record=None):
        """The struct :mod:`lib.record_layout` recovered at *addr*."""
        from lib.record_layout import _members
        layout = self.layouts.get(f'{addr:04x}')
        if layout is None:
            return None
        size = layout['size'] or record
        if size is None:
            return None
        layout = dict(layout, size=size)
        fields = []
        for _off, fname, span in _members(layout):
            fields.append((fname, {1: _BYTE, 2: _WORD, 4: _LONG}.get(span)
                           or Array(_BYTE, span)))
        return StructType(f'struct {layout["name"]}', fields)

    # ── part types ──────────────────────────────────────────────────────────
    def declared_element(self, name, in_file=None):
        """``(type, includes, open)`` of what *name* holds: *open* when the
        declaration is a pointer or an unsized array (a run of its type)."""
        decl = self.declared(name, in_file)
        if decl is None:
            return None, [], True
        ctype, includes = decl
        is_open = isinstance(ctype, Pointer) or (
            isinstance(ctype, Array)
            and (ctype.count == 0 or isinstance(ctype.elem, Pointer)))
        ctype = _target(ctype)
        if isinstance(ctype, Array) and ctype.count == 0:
            ctype = ctype.elem
        return ctype, includes, is_open

    def element(self, name, record=None, in_file=None):
        """``(element type, includes)`` of one record read into *name*:
        *record* bytes when given, else the declaration's element."""
        ctype, includes, is_open = self.declared_element(name, in_file)
        if ctype is None or (_specificity(ctype) == 1
                             and (record is None or ctype.size != record)):
            where = self.address(name)
            layout = where and self.recovered(where[1], record)
            if layout is not None:
                return layout, []
        if ctype is None:
            if record is None:
                raise ValueError(f'{name}: no declaration, recovered layout '
                                 'or record size')
            return Array(_BYTE, record) if record > 1 else _BYTE, []
        if record is None or ctype.size == record:
            return ctype, includes
        if is_open and not isinstance(ctype, StructType) \
                and record % ctype.size == 0:
            return Array(ctype, record // ctype.size), includes
        grown = _grow_last(ctype, record, f'{name}_rec')
        if grown is not None:
            return grown, includes
        if ctype.size < record:
            return StructType(f'struct {name}_rec', [
                (name, ctype),
                (f'pad_{ctype.size:04x}', Array(_BYTE, record - ctype.size))
            ]), includes
        raise ValueError(f'{name}: declared {ctype!r} ({ctype.size} bytes) '
                         f'is longer than its {record}-byte record')

    def memory(self, name, size):
        """The struct of the DS variables from *name* over *size* bytes, the
        includes it needs, and the sidecar's note per field.  A variable
        shorter than the gap to the next name is followed by ``bss_<addr>``,
        the assembly's name for unnamed storage."""
        where = self.address(name)
        if where is None:
            raise ValueError(f'{name}: not a sidecar data name')
        binary, start = where
        labels = self.names_between(binary, start, start + size)
        if not labels or labels[0][0] != start:
            raise ValueError(f'{name}: no sidecar name at 0x{start:04x}')
        fields, notes, includes = [], {}, []
        cursor, run_elem = start, None
        for i, (addr, label, note) in enumerate(labels):
            if addr < cursor:
                continue            # a name inside the variable before it
            ctype, inc, is_open = self.declared_element(label)
            later = [a for a, _n, _t in labels[i + 1:]]
            if ctype is not None and not is_open and ctype.size > 1:
                # A closed variable spans its size, whatever names lie in it
                # (pc_file_record_base_hi in the long pc_file_record_base).
                later = [a for a in later if a >= addr + ctype.size]
            end = later[0] if later else start + size
            extent = end - addr
            if ctype is None or _specificity(ctype) == 1 and not is_open:
                ctype, inc = self.element(label, extent)
            elif is_open and not isinstance(ctype, StructType) \
                    and extent % ctype.size == 0 and ctype.size < extent:
                ctype = Array(ctype, extent // ctype.size)
            elif ctype.size > extent:
                raise ValueError(f'{label}: declared {ctype!r} is longer '
                                 f'than the {extent} bytes before the next name')
            fields.append((label, ctype))
            if is_open and isinstance(ctype, Array) \
                    and isinstance(ctype.elem, Scalar):
                run_elem = ctype.elem
            if ctype.size < extent:
                # Unnamed storage continues the run's last open array (the
                # ints of record_size past maze_tables_size), else bytes.
                rest = extent - ctype.size
                elem = run_elem if run_elem and not rest % run_elem.size \
                    else _BYTE
                fields.append((f'bss_{addr + ctype.size:04x}',
                               Array(elem, rest // elem.size)))
            includes += [x for x in inc if x not in includes]
            if note:
                notes[label] = note
            cursor = end
        return StructType(f'struct {name}_rec', fields), includes, notes


def _definition(ctype, notes=None):
    """The C definition of struct *ctype*, a ``/* +offset */`` comment (and
    any field note) on each field."""
    from .layout import type_text
    lines = [ctype.key + ' {']
    for (fname, ftype), at in zip(ctype.fields, ctype.offsets):
        note = (notes or {}).get(fname)
        tail = ': ' + ' '.join(note.replace('*/', '* /').split()) if note else ''
        comment = f'/* +0x{at:03x}{tail} */'
        lines.append(f'\t{type_text(ftype, fname)};\t{comment}')
    lines.append('};')
    return '\n'.join(lines) + '\n'


def _struct_of(ctype):
    while isinstance(ctype, (Array, Pointer)):
        ctype = ctype.elem if isinstance(ctype, Array) else ctype.target
    return ctype if isinstance(ctype, StructType) else None


def struct_definitions(ctype, known, notes=None):
    """C definitions of the structs in *ctype* not in *known* (struct keys
    the includes define), innermost first; *known* gains them."""
    ctype = _struct_of(ctype)
    if ctype is None or ctype.key in known:
        return []
    known.add(ctype.key)
    out = []
    for _name, ftype in ctype.fields:
        out += struct_definitions(ftype, known)
    return out + [_definition(ctype, notes)]


def struct_headers(ctype, headers, notes=None):
    """Add a header per struct *ctype* uses to *headers* (``{file name:
    text}``), each including the headers of the structs inside it; returns
    the file name of *ctype*'s own struct, or None.  Two uses of one struct
    must agree on its text."""
    ctype = _struct_of(ctype)
    if ctype is None:
        return None
    fname = ctype.key.split()[-1] + '.h'
    inner = sorted({h for _n, f in ctype.fields
                    if (h := struct_headers(f, headers)) is not None})
    guard = fname.upper().replace('.', '_')
    text = (f'#ifndef {guard}\n#define {guard}\n\n'
            + ''.join(f'#include "{h}"\n' for h in inner)
            + ('\n' if inner else '')
            + _definition(ctype, notes) + '\n#endif\n')
    if headers.setdefault(fname, text) != text:
        raise ValueError(f'{ctype.key} is written two ways')
    return fname
