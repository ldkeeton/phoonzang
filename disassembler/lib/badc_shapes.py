"""``make badc``'s ``span`` and ``shp`` columns: records the C has no struct for.

A record the code moves in one go ought to be one C object of its own type.
When it is not, the declarations only work because ln happens to lay out the
variables they are split into next to each other, which build.sh's link does
not promise (see :mod:`lib.badc`'s ``adj``).  Two shapes give this away:

* **span** -- a transfer moves more bytes than its destination (or source)
  is declared to hold: ``data_record_io(5, npc_record_buffer, ...)`` reads a
  148-byte record into ``char npc_record_buffer[16]``, the rest landing in
  the globals ln put after it.  A transfer is a call to the Aztec runtime's
  ``read``/``write``/``movmem``/``setmem``/``swapmem``, or to any C function
  that hands its own parameters on to one (found here, so
  ``read_startup_file`` and ``data_record_io`` need no listing).  Its length
  is a literal, a ``sizeof``, or a global table indexed by a parameter
  (``record_size[type]``) whose bytes come from the data file the sidecar's
  ``data_files`` reads it from.
* **shape** -- one global declared with different element types in different
  files: ``char member_roster_index[14]`` where it is defined, ``int
  member_roster_index`` where it is used.  Signedness alone is not a shape:
  ``char`` and ``unsigned char`` are both one byte.  Each declaration that
  differs from the most specific one (a struct, else a pointer, else the
  widest element, else the most files) counts once.

Declarations are parsed with :mod:`lib.cdata.lang` under Aztec's 8086 sizes.
A transfer whose length or destination cannot be sized is not counted:
nothing here guesses.
"""

import os
import re

from lib import cachedirs
from lib.cdata.lang import CDataError, parse_text
from lib.cdata.layout import Array, Pointer, StructType

#: The runtime's block transfers: ``name: (pointer args, length arg)``.
RUNTIME_TRANSFERS = {
    'aztec_read': ((1,), 2),
    'aztec_write': ((1,), 2),
    'aztec_movmem': ((0, 1), 2),
    'aztec_setmem': ((0,), 1),
    'aztec_swapmem': ((0, 1), 2),
}

_COMMENT = re.compile(r'/\*.*?\*/', re.S)
_ASM = re.compile(r'^#asm\b.*?^#endasm\b', re.S | re.M)
_INCLUDE = re.compile(r'^#include\s+"([^"]+)"', re.M)
_STORAGE = re.compile(r'^\s*((?:(?:extern|static|register|auto)\s+)*)')
_DECL_START = re.compile(r'(?:struct|union|unsigned|signed|char|short|int|long)\b')
_KR_HEADER = re.compile(r'^\s*[A-Za-z_]\w*\s*\([^;{}()]*\)\s*')
_BASE = re.compile(r'^\s*((?:(?:unsigned|signed|const|volatile|far|near|huge|'
                   r'char|short|int|long)\s+|(?:struct|union)\s+\w+\s+)+)')
# A name and parameter list followed, past any K&R parameter declarations, by
# the body's brace; :func:`_top_level` checks that only a return type comes
# before it on its line.  (No nested quantifiers: they backtrack badly.)
_DEFINITION = re.compile(r'\b([A-Za-z_]\w*)[ \t]*\(([^;{}()]*)\)(?=[^{}()]*\{)')
_RETURN_TYPE = re.compile(r'[\w \t*]*')
_NOT_FUNCTIONS = {'if', 'for', 'while', 'switch', 'return', 'sizeof'}
_CALL = re.compile(r'\b([A-Za-z_]\w*)\s*\(')
_NUMBER = re.compile(r'(0[xX][0-9a-fA-F]+|\d+)[uUlL]*')
_SIZEOF = re.compile(r'sizeof\s*\(?\s*((?:struct|union)\s+\w+|\w+)\s*\)?')
_CAST = re.compile(r'^\(\s*(?:(?:unsigned|signed|const|far|near|char|short|int|'
                   r'long|void|struct\s+\w+|union\s+\w+)\s*)+\**\s*\)\s*')
_PLACE = re.compile(r'(&\s*)?([A-Za-z_]\w*)((?:\s*\[[^\[\]]+\])*)')


# ── reading the sources ──────────────────────────────────────────────────────

def _clean(text):
    """*text* without comments, ``#asm`` blocks or directives, line numbers
    kept."""
    blank = lambda m: re.sub(r'[^\n]', ' ', m.group())
    text = _ASM.sub(blank, _COMMENT.sub(blank, text))
    return re.sub(r'^[ \t]*#[^\n]*', '', text, flags=re.M)


def _skip_quote(text, i):
    quote = text[i]
    i += 1
    while i < len(text) and text[i] != quote:
        i += 2 if text[i] == '\\' else 1
    return i


def _statements(text):
    """``(offset, local, statement)`` of every ``;``-ended statement; a
    brace that opens an initializer or a struct body stays inside it."""
    paren = brace = 0
    start = i = 0
    while i < len(text):
        c = text[i]
        if c in '"\'':
            i = _skip_quote(text, i)
        elif c in '([':
            paren += 1
        elif c in ')]':
            paren -= 1
        elif paren == 0 and c == ';':
            yield start, brace > 0, text[start:i]
            start = i + 1
        elif paren == 0 and c == '{':
            head = text[start:i].rstrip()
            if head.endswith('=') or re.search(r'\b(?:struct|union|enum)\s*\w*$',
                                               head):
                depth = 1
                while depth and i + 1 < len(text):
                    i += 1
                    if text[i] in '"\'':
                        i = _skip_quote(text, i)
                    elif text[i] == '{':
                        depth += 1
                    elif text[i] == '}':
                        depth -= 1
            else:
                brace += 1
                start = i + 1
        elif paren == 0 and c == '}':
            brace -= 1
            start = i + 1
        i += 1


def _split_top(text, sep=','):
    parts, depth, current, i = [], 0, '', 0
    while i < len(text):
        c = text[i]
        if c in '"\'':
            j = _skip_quote(text, i)
            current += text[i:j + 1]
            i = j + 1
            continue
        if c in '([{':
            depth += 1
        elif c in ')]}':
            depth -= 1
        if c == sep and depth == 0:
            parts.append(current)
            current = ''
        else:
            current += c
        i += 1
    parts.append(current)
    return parts


def _declaration(statement):
    """``(flags, text)`` of a declaration statement the parser can take, or
    None: storage classes moved to *flags*, function declarators dropped,
    ``[]`` sized 0."""
    body = _KR_HEADER.sub('', statement, count=1) \
        if _KR_HEADER.match(statement) else statement
    storage = _STORAGE.match(body)
    flags = set(storage.group(1).split())
    body = body[storage.end():]
    if not _DECL_START.match(body) or 'typedef' in flags:
        return None
    if '{' not in body:
        base = _BASE.match(body)
        if not base:
            return None
        parts = _split_top(body[base.end():])
        kept = [p for p in parts if '(' not in p.split('=')[0]]
        if not kept:
            return None
        body = base.group(1) + ','.join(kept)
    return flags, re.sub(r'\[\s*\]', '[0]', body)


class Decl:
    __slots__ = ('name', 'ctype', 'path', 'line', 'extern', 'static', 'local')

    def __init__(self, name, ctype, path, line, extern, static, local):
        self.name, self.ctype, self.path, self.line = name, ctype, path, line
        self.extern, self.static, self.local = extern, static, local


def _parse_decls(raw, relpath, include_dirs):
    """Every :class:`Decl` in one source file."""
    text = _clean(raw)
    prefix = ''.join(f'#include "{inc}"\n' for inc in _INCLUDE.findall(raw)
                     if inc.startswith('structs/'))
    # K&R parameter declarations sit between a definition's ``)`` and ``{``.
    headers = [(m.start(), text.index('{', m.end()))
               for m in _top_level(text)]
    pending = []
    for offset, local, statement in _statements(text):
        end = offset + len(statement)
        local = local or any(a <= end < b for a, b in headers)
        found = _declaration(statement)
        if found:
            line = text.count('\n', 0, offset) + 1 + \
                len(statement) - len(statement.lstrip('\n'))
            pending.append((line, local, found[0], ' '.join(found[1].split())))
    out = []

    def parse(batch):
        source = prefix + ''.join(f'{t};\n' for _l, _lo, _f, t in batch)
        objects = parse_text(source, include_dirs, name='S').objects
        first = prefix.count('\n') + 1
        for obj in objects:
            line, local, flags, _t = batch[int(obj.where.rsplit(':', 1)[1])
                                           - first]
            out.append(Decl(obj.name, obj.type, relpath, line,
                            'extern' in flags, 'static' in flags, local))
    try:
        parse(pending)
    except CDataError:
        out.clear()
        for item in pending:
            try:
                parse([item])
            except CDataError:
                pass
    return out


def _top_level(text):
    """The file-scope matches of :data:`_DEFINITION` in *text*."""
    depth, at, out = 0, 0, []
    for match in _DEFINITION.finditer(text):
        if match.group(1) in _NOT_FUNCTIONS:
            continue
        line_start = text.rfind('\n', 0, match.start()) + 1
        if not _RETURN_TYPE.fullmatch(text, line_start, match.start()):
            continue
        i = at
        while i < match.start():
            if text[i] in '"\'':
                i = _skip_quote(text, i)
            elif text[i] == '{':
                depth += 1
            elif text[i] == '}':
                depth -= 1
            i += 1
        at = max(at, i)
        if depth == 0:
            out.append(match)
    return out


def _functions(text):
    """``(name, params, body offset, body)`` of each function definition."""
    found = []
    for match in _top_level(text):
        open_at = text.index('{', match.end())
        depth, i = 1, open_at
        while depth and i + 1 < len(text):
            i += 1
            if text[i] in '"\'':
                i = _skip_quote(text, i)
            elif text[i] == '{':
                depth += 1
            elif text[i] == '}':
                depth -= 1
        params = [p.strip() for p in match.group(2).split(',') if p.strip()]
        found.append((match.group(1), params, open_at, text[open_at:i + 1]))
    return found


def _calls(text, names):
    """``(name, args, offset)`` of each call to one of *names*."""
    for match in _CALL.finditer(text):
        if match.group(1) not in names:
            continue
        start = match.end()
        depth, i = 1, start
        while depth and i < len(text):
            if text[i] in '"\'':
                i = _skip_quote(text, i)
            elif text[i] in '([':
                depth += 1
            elif text[i] in ')]':
                depth -= 1
            i += 1
        args = [a.strip() for a in _split_top(text[start:i - 1])]
        yield match.group(1), args, match.start()


# ── the project ──────────────────────────────────────────────────────────────

def read_sources(root):
    """``{relpath: text}`` of the ``.c`` files under *root*."""
    found = {}
    for directory, dirnames, filenames in os.walk(root):
        dirnames[:] = sorted(d for d in dirnames
                             if d != 'aztec' and d not in cachedirs.SRC_SKIP_DIRS)
        for name in sorted(filenames):
            if name.endswith('.c'):
                path = os.path.join(directory, name)
                with open(path, encoding='latin-1') as source:
                    found[os.path.relpath(path, root)] = source.read()
    return found


class Sources:
    """The project's declarations, functions and transfers."""

    def __init__(self, root, include_dirs=None, sources=None):
        """*sources* (``{relpath: text}``) stands in for the ``.c`` files
        under *root*."""
        self.root = root
        self.include_dirs = include_dirs or [os.path.join(root, 'include')]
        self.raw = sources if sources is not None else read_sources(root)
        self.files = {}             # relpath -> cleaned text
        self.decls = {}             # name -> [Decl]
        self.by_file = {}           # relpath -> [Decl]
        for relpath, raw in sorted(self.raw.items()):
            self.files[relpath] = _clean(raw)
            decls = _parse_decls(raw, relpath, self.include_dirs)
            self.by_file[relpath] = decls
            for decl in decls:
                self.decls.setdefault(decl.name, []).append(decl)

    # declarations
    def definition(self, name, relpath):
        """The sized file-scope definition *relpath*'s binary links for
        *name*: its own directory's, else the root's or a shared one."""
        top = relpath.split(os.sep, 1)[0]
        candidates = [d for d in self.decls.get(name, ())
                      if not d.extern and not d.local and not d.static
                      and d.ctype.size]
        for want in (top, 'ds'):
            for d in candidates:
                if d.path.split(os.sep, 1)[0] == want:
                    return d
        shared = [d for d in candidates
                  if d.path.split(os.sep, 1)[0] not in self._binaries()]
        return shared[0] if len(shared) == 1 else None

    def _binaries(self):
        if not hasattr(self, '_tops'):
            self._tops = {p.split(os.sep, 1)[0] for p in self.files
                          if os.sep in p} - {'shared', 'include'}
        return self._tops

    def visible(self, name, relpath, line):
        """The declaration of *name* in force at *line* of *relpath*, sized
        from its definition when it is declared ``[]``."""
        here = [d for d in self.by_file.get(relpath, ())
                if d.name == name and d.line <= line]
        locals_ = [d for d in here if d.local]
        decl = (locals_ or here or [None])[-1]
        if decl is not None and (decl.ctype.size or
                                 not isinstance(decl.ctype, Array)):
            return decl
        definition = self.definition(name, relpath)
        if decl is None or definition is None:
            return decl or definition
        # ``extern T name[][n]``: this file's element, the definition's size.
        elem = decl.ctype.elem
        if elem.size and definition.ctype.size % elem.size == 0:
            return Decl(name, Array(elem, definition.ctype.size // elem.size),
                        definition.path, definition.line, False, False, False)
        return definition

    def sizeof(self, expression, relpath, line):
        match = _SIZEOF.fullmatch(expression.strip())
        if not match:
            return None
        target = match.group(1)
        if re.match(r'(?:struct|union)\s', target):
            for decl in self.by_file.get(relpath, ()):
                if _key(decl.ctype) == target:
                    return decl.ctype.size
            source = ''.join(f'#include "{inc}"\n' for inc in
                             _INCLUDE.findall(self.raw.get(relpath, ''))
                             if inc.startswith('structs/'))
            try:
                objects = parse_text(f'{source}{target} probe_;\n',
                                     self.include_dirs, name='S').objects
            except CDataError:
                return None
            return objects[0].type.size if objects else None
        decl = self.visible(target, relpath, line)
        return decl.ctype.size if decl and decl.ctype.size else None


def _key(ctype):
    return getattr(ctype, 'key', None)


def _base(ctype):
    while isinstance(ctype, Array):
        ctype = ctype.elem
    return ctype


def _shape(ctype):
    """What one element is, signedness aside: a struct's tag, ``*`` and the
    target's shape for a pointer, else the scalar's byte count."""
    ctype = _base(ctype)
    if isinstance(ctype, StructType):
        return ctype.key
    if isinstance(ctype, Pointer):
        return ('far *' if ctype.far else '*') + str(_shape(ctype.target))
    return str(ctype.size)


def _rank(shape):
    if shape.startswith(('struct', 'union')):
        return (3, 0)
    if '*' in shape:
        return (2, 0)
    return (1, int(shape))


# ── table values from the data files ────────────────────────────────────────

def _part_length(part):
    if 'size' in part:
        return part['size'] * (part.get('count') or 1) \
            if part.get('memory') and part.get('count') and 'record' in part \
            else part['size']
    if 'record' in part and part.get('count'):
        return part['record'] * part['count']
    return None


def file_tables(sidecar, app_dir, data=None):
    """``{variable: bytes from its start}`` for each variable a sidecar
    ``data_files`` part reads (the first variable of a ``memory`` run, and
    the named variables inside it by their DS addresses).  *data*
    (``{file name: bytes}``) stands in for the files in *app_dir*."""
    addresses = {}
    for binary, section in (sidecar.get('binaries') or {}).items():
        for key, entry in (section.get('data_names') or {}).items():
            name = entry.get('name') if isinstance(entry, dict) else entry
            if name:
                addresses.setdefault(name, (binary, int(key, 16)))
    tables = {}
    for filename, spec in (sidecar.get('data_files') or {}).items():
        if data is not None:
            content = data.get(filename)
        else:
            path = os.path.join(app_dir or '', filename)
            content = None
            if app_dir and os.path.exists(path):
                with open(path, 'rb') as f:
                    content = f.read()
        if content is None:
            continue
        at = 0
        for part in spec.get('parts', ()):
            name = part.get('memory') or part.get('variable')
            length = _part_length(part)
            if name and name not in tables:
                end = at + length if length else len(content)
                tables[name] = content[at:end]
                if part.get('memory') and name in addresses:
                    binary, start = addresses[name]
                    for other, (b, addr) in addresses.items():
                        if b == binary and start < addr < start + (end - at):
                            tables.setdefault(other,
                                              content[at + addr - start:end])
            if length is None:
                break
            at += length
    return tables


# ── transfers ────────────────────────────────────────────────────────────────

def _strip(expression):
    expression = expression.strip()
    while True:
        cast = _CAST.match(expression)
        if not cast:
            return expression
        expression = expression[cast.end():].strip()


def _length_spec(expression, params, where):
    """How a callee's length argument is formed from its parameters:
    ``('arg', i)``, ``('table', name, i)`` or ``('value', name)``."""
    expression = _strip(expression)
    if expression in params:
        return ('arg', params.index(expression))
    # *where* is the (file, line) the table is indexed at: its declaration
    # there gives the element width (the definition may be a byte blob).
    match = re.fullmatch(r'([A-Za-z_]\w*)\s*\[\s*(\w+)\s*\]', expression)
    if match and match.group(2) in params:
        return ('table', match.group(1), params.index(match.group(2)), where)
    if re.fullmatch(r'[A-Za-z_]\w*', expression):
        return ('value', expression, where)
    return None


def transfers(sources):
    """``{function: (pointer args, length spec)}``: the runtime's transfers
    and every C function that passes its parameters on to one."""
    table = {name: (pointers, ('arg', length))
             for name, (pointers, length) in RUNTIME_TRANSFERS.items()}
    functions = [(relpath, text.count('\n', 0, f[2]) + 1) + f
                 for relpath, text in sources.files.items()
                 for f in _functions(text)]
    changed = True
    while changed:
        changed = False
        for relpath, line, name, params, _at, body in functions:
            if name in table:
                continue
            for callee, args, _off in _calls(body, table):
                pointers, spec = table[callee]
                mine = tuple(params.index(_strip(args[i])) for i in pointers
                             if i < len(args) and _strip(args[i]) in params)
                if not mine:
                    continue
                if spec[0] == 'arg':
                    if spec[1] >= len(args):
                        continue
                    length = _length_spec(args[spec[1]], params,
                                          (relpath, line))
                elif spec[0] == 'table' and spec[2] < len(args) \
                        and _strip(args[spec[2]]) in params:
                    length = ('table', spec[1],
                              params.index(_strip(args[spec[2]])), spec[3])
                elif spec[0] == 'value':
                    length = spec
                else:
                    length = None
                if length:
                    table[name] = (mine, length)
                    changed = True
                    break
    return table


def _table_value(sources, tables, name, index, where):
    data = tables.get(name)
    decl = sources.visible(name, *where)
    if data is None or decl is None:
        return None
    elem = _base(decl.ctype)
    width = elem.size if elem.size in (1, 2, 4) else None
    if width is None or (index + 1) * width > len(data):
        return None
    return int.from_bytes(data[index * width:(index + 1) * width], 'little')


def _length(sources, tables, spec, args, relpath, line):
    if spec[0] == 'arg':
        if spec[1] >= len(args):
            return None
        expression = _strip(args[spec[1]])
        number = _NUMBER.fullmatch(expression)
        if number:
            return int(number.group(1), 0)
        return sources.sizeof(expression, relpath, line)
    if spec[0] == 'table':
        if spec[2] >= len(args):
            return None
        number = _NUMBER.fullmatch(_strip(args[spec[2]]))
        if not number:
            return None
        return _table_value(sources, tables, spec[1], int(number.group(1), 0),
                            spec[3])
    return _table_value(sources, tables, spec[1], 0, spec[2])


def _element_at(ctype, subscripts):
    for _ in re.findall(r'\[[^\[\]]+\]', subscripts or ''):
        if not isinstance(ctype, Array):
            return None
        ctype = ctype.elem
    return ctype


def _room(sources, expression, relpath, line):
    """``(name, bytes from the address to the object's end)`` of a pointer
    argument, or None when it is not a sized object."""
    place = _PLACE.fullmatch(_strip(expression))
    if not place:
        return None
    amp, name, subscripts = place.groups()
    decl = sources.visible(name, relpath, line)
    if decl is None or isinstance(decl.ctype, Pointer) or not decl.ctype.size:
        return None
    if not amp and not subscripts and not isinstance(decl.ctype, Array):
        return None             # a scalar's value (an address held in an int)
    if not amp and isinstance(_element_at(decl.ctype, subscripts), Pointer):
        return None             # the element is a pointer: its target moves
    ctype, room = decl.ctype, decl.ctype.size
    for subscript in re.findall(r'\[([^\[\]]+)\]', subscripts or ''):
        if not isinstance(ctype, Array):
            return None
        number = _NUMBER.fullmatch(subscript.strip())
        if number and room == ctype.size:
            room = (ctype.count - int(number.group(1), 0)) * ctype.elem.size
        elif not number:
            room = ctype.elem.size
        ctype = ctype.elem
    if not subscripts and not amp and isinstance(decl.ctype, Array):
        room = decl.ctype.size
    return name, room


def span_findings(sources, tables):
    """``{relpath: [(line, detail)]}`` of transfers longer than their
    object."""
    table = transfers(sources)
    found = {}
    for relpath, text in sources.files.items():
        for callee, args, offset in _calls(text, table):
            line = text.count('\n', 0, offset) + 1
            pointers, spec = table[callee]
            length = _length(sources, tables, spec, args, relpath, line)
            if not length:
                continue
            for i in pointers:
                if i >= len(args):
                    continue
                room = _room(sources, args[i], relpath, line)
                if room and length > room[1]:
                    found.setdefault(relpath, []).append(
                        (line, f'span: {callee} moves {length} bytes at '
                               f'{args[i]}, which holds {room[1]}'))
    return found


# ── declarations that disagree ───────────────────────────────────────────────

def shape_findings(sources):
    """``{relpath: [(line, detail)]}`` of global declarations whose element
    differs from the most specific declaration of the same object."""
    found = {}
    for name, decls in sources.decls.items():
        groups = {}
        for decl in decls:
            if decl.local or decl.static:
                continue
            definition = sources.definition(name, decl.path)
            key = definition.path if definition else name
            groups.setdefault(key, []).append(decl)
        for group in groups.values():
            shapes = {}
            for decl in group:
                shapes.setdefault(_shape(decl.ctype), []).append(decl)
            if len(shapes) < 2:
                continue
            best = max(shapes, key=lambda s: (_rank(s), len(shapes[s])))
            example = shapes[best][0]
            for shape, members in shapes.items():
                if shape == best:
                    continue
                for decl in members:
                    found.setdefault(decl.path, []).append(
                        (decl.line, f'shape: {name} is {decl.ctype!r} here, '
                                    f'{example.ctype!r} in {len(shapes[best])} '
                                    f'file(s) such as {example.path}'))
    return found


def analyse(root, sidecar=None, app_dir=None, sources=None, data=None):
    """``{relpath: [(line, kind, detail)]}`` for every flagged ``.c``;
    *sources* and *data* stand in for the files (see :class:`Sources` and
    :func:`file_tables`)."""
    sources = Sources(root, sources=sources)
    tables = file_tables(sidecar or {}, app_dir, data)
    out = {}
    for kind, findings in (('span', span_findings(sources, tables)),
                           ('shape', shape_findings(sources))):
        for relpath, items in findings.items():
            for line, detail in items:
                out.setdefault(relpath, []).append((line, kind, detail))
    for items in out.values():
        items.sort()
    return out
