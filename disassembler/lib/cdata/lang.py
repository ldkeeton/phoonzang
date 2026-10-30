"""Lexer, preprocessor and parser for the data-source C subset.

The subset: ``#include "..."``, object-like ``#define``, ``#ifdef``/``#ifndef``/
``#else``/``#endif``/``#undef``; ``struct``/``union`` declarations; object
definitions with nested and designated initializers; integer, character and
string literals; constant expressions.  ``extern`` declarations and function
prototypes are read past.  Anything else raises :class:`CDataError`.

One extension: after ``#pragma huffman "tree.c"`` each string literal is a
packed text record (:mod:`.huffman`) under the tree that ``tree.c`` compiles
to, a run of bytes in the flat list of a byte array.
"""

import os
import re

from .layout import Array, Pointer, Scalar, StructType, scalar_type


class CDataError(Exception):
    """A source error, with the ``file:line`` it was found at."""

    def __init__(self, where, message):
        super().__init__(f'{where}: {message}' if where else message)


class Tok:
    __slots__ = ('kind', 'value', 'where')

    def __init__(self, kind, value, where):
        self.kind, self.value, self.where = kind, value, where

    def __repr__(self):
        return f'Tok({self.kind}, {self.value!r})'


_TOKEN = re.compile(r'''
    (?P<ws>[ \t\r\f\v]+)
  | (?P<num>0[xX][0-9a-fA-F]+[uUlL]*|\d+[uUlL]*)
  | (?P<id>[A-Za-z_]\w*)
  | (?P<str>"(?:\\.|[^"\\\n])*")
  | (?P<char>'(?:\\.|[^'\\\n])+')
  | (?P<punct><<|>>|[{}\[\]();,=.*+\-/%&|^~!<>?:])
''', re.X)

_ESCAPES = {'n': 10, 't': 9, 'r': 13, '0': 0, '\\': 92, "'": 39, '"': 34,
            'a': 7, 'b': 8, 'f': 12, 'v': 11}


def unescape(body, where):
    """The bytes of a literal's body (between the quotes)."""
    out = bytearray()
    i = 0
    while i < len(body):
        c = body[i]
        if c != '\\':
            code = ord(c)
            if code > 255:
                raise CDataError(where, f'character {c!r} is not one byte')
            out.append(code)
            i += 1
            continue
        i += 1
        e = body[i]
        if e == 'x':
            m = re.match(r'[0-9a-fA-F]{1,2}', body[i + 1:])
            if not m:
                raise CDataError(where, 'bad \\x escape')
            out.append(int(m.group(0), 16))
            i += 1 + len(m.group(0))
        elif e in '01234567':
            m = re.match(r'[0-7]{1,3}', body[i:])
            out.append(int(m.group(0), 8) & 0xff)
            i += len(m.group(0))
        elif e in _ESCAPES:
            out.append(_ESCAPES[e])
            i += 1
        else:
            raise CDataError(where, f'unknown escape \\{e}')
    return bytes(out)


def _strip_comments(text):
    """*text* with comments replaced by spaces (newlines kept)."""
    out = []
    i, n = 0, len(text)
    while i < n:
        c = text[i]
        if c in '"\'':
            j = i + 1
            while j < n and text[j] != c and text[j] != '\n':
                j += 2 if text[j] == '\\' else 1
            out.append(text[i:j + 1])
            i = j + 1
        elif text.startswith('/*', i):
            j = text.find('*/', i + 2)
            if j < 0:
                raise CDataError(None, 'unterminated comment')
            out.append(re.sub(r'[^\n]', ' ', text[i:j + 2]))
            i = j + 2
        elif text.startswith('//', i):
            j = text.find('\n', i)
            j = n if j < 0 else j
            out.append(' ' * (j - i))
            i = j
        else:
            out.append(c)
            i += 1
    return ''.join(out)


def _lex_line(line, where):
    toks = []
    pos = 0
    while pos < len(line):
        m = _TOKEN.match(line, pos)
        if not m:
            raise CDataError(where, f'unexpected character {line[pos]!r}')
        pos = m.end()
        kind = m.lastgroup
        if kind != 'ws':
            toks.append(Tok(kind, m.group(kind), where))
    return toks


class Preprocessor:
    """Tokens of a root file with its includes and macros expanded."""

    def __init__(self, include_dirs):
        self.include_dirs = list(include_dirs)
        self.macros = {}
        self.funclike = set()
        self.files = []

    def run(self, path):
        out = []
        self._file(os.path.abspath(path), out, ())
        return out

    def _find(self, name, here, where):
        for d in (os.path.dirname(here),) + tuple(self.include_dirs):
            path = os.path.join(d, name)
            if os.path.isfile(path):
                return os.path.abspath(path)
        raise CDataError(where, f'cannot find include "{name}"')

    def _file(self, path, out, stack):
        if path in stack:
            raise CDataError(None, f'{path}: recursive include')
        self.files.append(path)
        with open(path, encoding='latin-1') as f:
            text = _strip_comments(f.read().replace('\\\n', ''))
        rel = os.path.basename(path)
        live = [True]
        for lineno, line in enumerate(text.split('\n'), 1):
            where = f'{rel}:{lineno}'
            stripped = line.strip()
            if stripped.startswith('#'):
                self._directive(stripped[1:].strip(), where, path, out,
                                stack, live)
                continue
            if all(live) and stripped:
                out.extend(self._expand(_lex_line(line, where), ()))
        if len(live) != 1:
            raise CDataError(f'{rel}', 'unterminated #if')

    def _directive(self, body, where, path, out, stack, live):
        word, _, rest = body.partition(' ')
        rest = rest.strip()
        if word in ('ifdef', 'ifndef'):
            known = rest in self.macros or rest in self.funclike
            live.append(known if word == 'ifdef' else not known)
        elif word == 'else':
            if len(live) == 1:
                raise CDataError(where, '#else without #if')
            live[-1] = not live[-1]
        elif word == 'endif':
            if len(live) == 1:
                raise CDataError(where, '#endif without #if')
            live.pop()
        elif not all(live):
            return
        elif word == 'include':
            m = re.match(r'"([^"]+)"', rest)
            if not m:
                raise CDataError(where, 'only #include "file" is supported')
            self._file(self._find(m.group(1), path, where), out,
                       stack + (path,))
        elif word == 'define':
            m = re.match(r'(\w+)(\()?', rest)
            if not m:
                raise CDataError(where, 'bad #define')
            if m.group(2):
                self.funclike.add(m.group(1))
            else:
                self.macros[m.group(1)] = _lex_line(rest[m.end():], where)
        elif word == 'pragma':
            m = re.fullmatch(r'huffman\s+"([^"]+)"', rest)
            if not m:
                raise CDataError(where, 'only #pragma huffman "tree.c" is supported')
            from .emit import Image
            from .huffman import codes
            tree = parse_file(self._find(m.group(1), path, where),
                              self.include_dirs)
            out.append(Tok('huffman', codes(Image(tree.objects).data), where))
        elif word == 'undef':
            self.macros.pop(rest, None)
            self.funclike.discard(rest)
        else:
            raise CDataError(where, f'unsupported directive #{word}')

    def _expand(self, toks, active):
        out = []
        for tok in toks:
            if tok.kind == 'id' and tok.value in self.funclike:
                raise CDataError(tok.where,
                                 f'function-like macro {tok.value} is not supported')
            if tok.kind == 'id' and tok.value in self.macros \
                    and tok.value not in active:
                body = [Tok(t.kind, t.value, tok.where)
                        for t in self.macros[tok.value]]
                out.extend(self._expand(body, active + (tok.value,)))
            else:
                out.append(tok)
        return out


# ── parser ────────────────────────────────────────────────────────────────────

class Init:
    """An initializer: ``expr`` (an int), ``string`` (bytes), ``packed`` (a
    packed text record's bytes) or ``list`` of ``(designators, Init)`` with
    designators ``('field', name)``/``('index', n)``."""
    __slots__ = ('kind', 'value', 'where')

    def __init__(self, kind, value, where):
        self.kind, self.value, self.where = kind, value, where


class Object:
    __slots__ = ('name', 'type', 'init', 'where')

    def __init__(self, name, ctype, init, where):
        self.name, self.type, self.init, self.where = name, ctype, init, where


_TYPE_WORDS = {'char', 'short', 'int', 'long', 'unsigned', 'signed'}
_IGNORED = {'static', 'const', 'volatile', 'register', 'auto'}


class Parser:
    def __init__(self, toks):
        self.toks = toks
        self.pos = 0
        self.structs = {}
        self.objects = []
        self.far = False                # ``far`` read before a declarator
        self.huffman = None             # codes of the last #pragma huffman

    # token helpers
    def peek(self, k=0):
        i = self.pos + k
        return self.toks[i] if i < len(self.toks) else None

    def where(self):
        t = self.peek() or (self.toks[-1] if self.toks else None)
        return t.where if t else None

    def accept(self, value):
        t = self.peek()
        if t is not None and t.value == value and t.kind in ('punct', 'id'):
            self.pos += 1
            return t
        return None

    def expect(self, value):
        t = self.accept(value)
        if t is None:
            got = self.peek()
            raise CDataError(self.where(),
                             f'expected {value!r}, got {got.value if got else "end of file"!r}')
        return t

    def ident(self):
        t = self.peek()
        if t is None or t.kind != 'id':
            raise CDataError(self.where(), 'expected a name')
        self.pos += 1
        return t.value

    # top level
    def parse(self):
        while self.peek() is not None:
            if self.peek().kind == 'huffman':
                self.huffman = self.peek().value
                self.pos += 1
                continue
            self.declaration()
        return self

    def _skip_statement(self):
        depth = 0
        while True:
            t = self.peek()
            if t is None:
                raise CDataError(self.where(), "missing ';'")
            self.pos += 1
            if t.value in ('(', '{', '['):
                depth += 1
            elif t.value in (')', '}', ']'):
                depth -= 1
            elif t.value == ';' and depth == 0:
                return

    def declaration(self):
        if self.accept(';'):
            return
        if self.peek().value in ('extern', 'typedef'):
            if self.peek().value == 'typedef':
                raise CDataError(self.where(), 'typedef is not supported')
            self._skip_statement()
            return
        base = self.type_specifier()
        if self.accept(';'):
            return                      # a bare struct declaration
        while True:
            where = self.where()
            name, ctype, is_func = self.declarator(base)
            if is_func:
                self._skip_statement()
                return
            init = None
            if self.accept('='):
                init = self.initializer()
            if isinstance(ctype, Array) and ctype.count is None:
                ctype = Array(ctype.elem, _infer_count(ctype.elem, init, where))
            self.objects.append(Object(name, ctype, init, where))
            if self.accept(';'):
                return
            self.expect(',')

    def type_specifier(self):
        self.far = False
        words = []
        while True:
            t = self.peek()
            if t is None:
                raise CDataError(self.where(), 'expected a type')
            if t.value in _IGNORED or t.value in ('far', 'near'):
                self.far = self.far or t.value == 'far'
                self.pos += 1
            elif t.value in _TYPE_WORDS:
                words.append(t.value)
                self.pos += 1
            elif t.value in ('struct', 'union') and not words:
                return self.struct_specifier()
            else:
                break
        if not words:
            raise CDataError(self.where(), f'expected a type, got {self.peek().value!r}')
        try:
            return scalar_type(words)
        except ValueError as exc:
            raise CDataError(self.where(), str(exc)) from None

    def struct_specifier(self):
        where = self.where()
        is_union = self.ident() == 'union'
        tag = None
        if self.peek().kind == 'id':
            tag = self.ident()
        key = ('union ' if is_union else 'struct ') + (tag or '')
        if not self.accept('{'):
            if tag is None:
                raise CDataError(where, 'anonymous struct without a body')
            if key not in self.structs:
                raise CDataError(where, f'{key} is not defined')
            return self.structs[key]
        fields = []
        while not self.accept('}'):
            base = self.type_specifier()
            while True:
                fwhere = self.where()
                name, ctype, is_func = self.declarator(base)
                if is_func or (isinstance(ctype, Array) and ctype.count is None):
                    raise CDataError(fwhere, f'field {name} needs a complete type')
                fields.append((name, ctype))
                if self.accept(';'):
                    break
                self.expect(',')
        st = StructType(key, fields, is_union)
        if tag is not None:
            if key in self.structs and self.structs[key].fields != st.fields:
                raise CDataError(where, f'{key} redefined differently')
            self.structs[key] = st
        return st

    def declarator(self, base):
        far, self.far = self.far, False
        pointers = 0
        while True:
            if self.accept('*'):
                pointers += 1
            elif self.accept('far'):
                far = True
            elif self.accept('near') or any(self.accept(w) for w in _IGNORED):
                pass
            else:
                break
        ctype = base
        for _ in range(pointers):
            ctype = Pointer(ctype, far)
        name = self.ident()
        if self.accept('('):
            self.pos -= 1
            return name, ctype, True
        dims = []
        while self.accept('['):
            if self.accept(']'):
                dims.append(None)
                continue
            dims.append(self.const_expr())
            self.expect(']')
        for i, d in enumerate(reversed(dims)):
            if d is None and i != len(dims) - 1:
                raise CDataError(self.where(), 'only the first dimension may be empty')
            ctype = Array(ctype, d)
        return name, ctype, False

    # initializers
    def initializer(self):
        t = self.peek()
        if t is not None and t.value == '{' and t.kind == 'punct':
            self.pos += 1
            items = []
            while not self.accept('}'):
                designators = []
                while True:
                    if self.accept('.'):
                        designators.append(('field', self.ident()))
                    elif self.peek().value == '[':
                        self.pos += 1
                        designators.append(('index', self.const_expr()))
                        self.expect(']')
                    else:
                        break
                if designators:
                    self.expect('=')
                items.append((designators, self.initializer()))
                if not self.accept(','):
                    self.expect('}')
                    break
            return Init('list', items, t.where)
        if t is not None and t.kind == 'str':
            data = b''
            while self.peek() is not None and self.peek().kind == 'str':
                s = self.peek()
                data += unescape(s.value[1:-1], s.where)
                self.pos += 1
            if self.huffman is None:
                return Init('string', data, t.where)
            from .huffman import pack
            text = data.decode('latin-1')
            missing = sorted(set(text) - set(self.huffman))
            if missing:
                raise CDataError(t.where, 'no Huffman code for '
                                 + ', '.join(repr(c) for c in missing))
            try:
                return Init('packed', pack(text, self.huffman), t.where)
            except ValueError as e:
                raise CDataError(t.where, str(e)) from None
        where = self.where()
        return Init('expr', self.const_expr(), where)

    # constant expressions, by precedence
    _BINARY = [('|',), ('^',), ('&',), ('<<', '>>'), ('+', '-'), ('*', '/', '%')]

    def const_expr(self, level=0):
        if level == len(self._BINARY):
            return self.unary()
        value = self.const_expr(level + 1)
        while True:
            t = self.peek()
            if t is None or t.kind != 'punct' or t.value not in self._BINARY[level]:
                return value
            self.pos += 1
            rhs = self.const_expr(level + 1)
            value = _apply(t.value, value, rhs, t.where)

    def unary(self):
        t = self.peek()
        if t is None:
            raise CDataError(self.where(), 'expected an expression')
        if t.kind == 'punct' and t.value in ('-', '+', '~', '!'):
            self.pos += 1
            v = self.unary()
            return {'-': -v, '+': v, '~': ~v, '!': int(not v)}[t.value]
        if t.value == '(':
            self.pos += 1
            v = self.const_expr()
            self.expect(')')
            return v
        if t.value == 'sizeof':
            self.pos += 1
            self.expect('(')
            base = self.type_specifier()
            ctype = base
            while self.accept('*'):
                ctype = Pointer(ctype, False)
            while self.accept('['):
                n = self.const_expr()
                self.expect(']')
                ctype = Array(ctype, n)
            self.expect(')')
            return ctype.size
        self.pos += 1
        if t.kind == 'num':
            return int(t.value.rstrip('uUlL'), 0) if not re.match(
                r'0\d', t.value) else int(t.value.rstrip('uUlL'), 8)
        if t.kind == 'char':
            data = unescape(t.value[1:-1], t.where)
            if len(data) != 1:
                raise CDataError(t.where, 'character constant must be one byte')
            return data[0]
        if t.kind == 'id':
            raise CDataError(t.where, f'{t.value} is not a constant')
        raise CDataError(t.where, f'unexpected {t.value!r}')


def _apply(op, a, b, where):
    if op in ('/', '%') and b == 0:
        raise CDataError(where, 'division by zero')
    if op == '/':
        return int(a / b)
    if op == '%':
        return a - int(a / b) * b
    return {'|': a | b, '^': a ^ b, '&': a & b, '<<': a << b, '>>': a >> b,
            '+': a + b, '-': a - b, '*': a * b}[op]


def _infer_count(elem, init, where):
    if init is None:
        raise CDataError(where, 'an array without a size needs an initializer')
    if init.kind == 'string':
        return len(init.value) + 1
    if init.kind != 'list':
        raise CDataError(where, 'an array needs a braced initializer')
    n = index = 0
    for designators, _item in init.value:
        if designators and designators[0][0] == 'index':
            index = designators[0][1]
        index += 1
        n = max(n, index)
    return n


def parse_file(path, include_dirs):
    """``Parser`` holding the structs and object definitions of *path*."""
    pre = Preprocessor(include_dirs)
    parser = Parser(pre.run(path)).parse()
    parser.files = pre.files
    return parser


def parse_text(text, include_dirs=(), name='<text>'):
    """``Parser`` for source *text* (tests)."""
    pre = Preprocessor(include_dirs)
    out = []
    lines = _strip_comments(text.replace('\\\n', '')).split('\n')
    live = [True]
    for lineno, line in enumerate(lines, 1):
        where = f'{name}:{lineno}'
        stripped = line.strip()
        if stripped.startswith('#'):
            pre._directive(stripped[1:].strip(), where,
                           os.path.join(os.getcwd(), name), out, (), live)
        elif all(live) and stripped:
            out.extend(pre._expand(_lex_line(line, where), ()))
    return Parser(out).parse()
