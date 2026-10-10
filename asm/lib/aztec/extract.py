"""Extract a single routine from an Aztec runtime source module.

The vendored v3.40b ``SRC/*.ARC`` files are whole translation units: several
public functions, file-scope data and macros live together in one ``.c`` file
(e.g. ``open.c`` defines both ``creat`` and ``open``).  To make a routine's
recovered ``.c`` self-contained -- and small enough to read -- we lift just the
target definition plus the preamble it needs, leaving the sibling functions
behind.

``extract_routine`` is deliberately conservative: it returns ``None`` whenever
it cannot identify exactly one definition, so the caller can fall back to the
whole module (see the ``extracted: false`` provenance flag).

Layout it recognises
--------------------
* K&R definitions ending in ``name(...)`` at column zero, with the return type
  either before the name (``int lseek(``) or on its own preceding line
  (``char *\\nrealloc(``).
* Parameter declarations between ``)`` and the body ``{``.
* ``#ifdef`` regions copied verbatim (``croot.c``'s ``Croot`` contains a
  ``#ifdef REDIR`` block).
* Preprocessing is not evaluated, so braces inside comments, strings and
  character literals are ignored while matching the body.
"""

import re

# Mirrors ``sources._DEF_RE``: a definition starts at column zero, may carry
# return-type tokens, and ends with the function name and an open paren.
_DEF_RE = re.compile(
    r'^(?:[A-Za-z_][A-Za-z0-9_]*[ \t\*]+)*'
    r'([A-Za-z_][A-Za-z0-9_]*)[ \t]*\(', re.M)

_KEYWORDS = {
    'if', 'for', 'while', 'switch', 'return', 'sizeof', 'do', 'else',
}

# C type / storage tokens.  ``_DEF_RE`` can match these as a "name" when a
# function-pointer declaration such as ``int (*cls_)()`` begins a line.
_TYPE_NAMES = {
    'int', 'char', 'long', 'short', 'unsigned', 'signed', 'float', 'double',
    'void', 'struct', 'union', 'enum', 'typedef', 'static', 'extern',
    'register', 'const', 'volatile', 'auto',
}

# A lone return-type line: only identifiers, ``*`` and horizontal whitespace.
_TYPE_LINE_RE = re.compile(r'^[A-Za-z_][A-Za-z0-9_ \t\*]*$')


def _skip_literal(text, i):
    """Return the index just past the string/char literal starting at *i*."""
    quote = text[i]
    n = len(text)
    j = i + 1
    while j < n:
        if text[j] == '\\':
            j += 2
            continue
        if text[j] == quote:
            return j + 1
        j += 1
    return n




def _skip_blank(text, i):
    """Return the index of the next non-space, non-comment character."""
    n = len(text)
    while i < n:
        c = text[i]
        if c in ' \t\r\n':
            i += 1
            continue
        if c == '/' and i + 1 < n and text[i + 1] == '*':
            j = text.find('*/', i + 2)
            i = n if j < 0 else j + 2
            continue
        if c == '/' and i + 1 < n and text[i + 1] == '/':
            j = text.find('\n', i)
            i = n if j < 0 else j
            continue
        break
    return i


def _depth_array(text):
    """Brace depth *before* each character, ignoring comments and literals."""
    n = len(text)
    depths = [0] * (n + 1)
    depth = 0
    i = 0
    while i < n:
        c = text[i]
        if c == '/' and i + 1 < n and text[i + 1] == '*':
            j = text.find('*/', i + 2)
            end = n if j < 0 else j + 2
            for k in range(i, end):
                depths[k] = depth
            i = end
            continue
        if c == '/' and i + 1 < n and text[i + 1] == '/':
            j = text.find('\n', i)
            end = n if j < 0 else j
            for k in range(i, end):
                depths[k] = depth
            i = end
            continue
        if c == '"' or c == "'":
            end = _skip_literal(text, i)
            for k in range(i, end):
                depths[k] = depth
            i = end
            continue
        depths[i] = depth
        if c == '{':
            depth += 1
        elif c == '}':
            depth = max(0, depth - 1)
        i += 1
    depths[n] = depth
    return depths


def _find_body_open(text, lparen):
    """Return the ``{`` index of the body opened at *lparen*, else ``None``.

    ``None`` means the declaration was a prototype (terminated by ``;``) or the
    body could not be found.
    """
    n = len(text)
    depth = 0
    i = lparen
    while i < n:
        c = text[i]
        if c == '/' and i + 1 < n and text[i + 1] == '*':
            j = text.find('*/', i + 2)
            i = n if j < 0 else j + 2
            continue
        if c == '/' and i + 1 < n and text[i + 1] == '/':
            j = text.find('\n', i)
            i = n if j < 0 else j
            continue
        if c == '"' or c == "'":
            i = _skip_literal(text, i)
            continue
        if c == '(':
            depth += 1
        elif c == ')':
            depth -= 1
            if depth == 0:
                i += 1
                break
        i += 1
    else:
        return None
    # The first significant character after the ``)`` separates a prototype
    # (``foo();``) from a K&R definition (``foo(a)\nchar *a;\n{``).  A ``;``
    # right after the parameter list means there is no body.
    i = _skip_blank(text, i)
    if i >= n or text[i] == ';':
        return None
    while i < n:
        c = text[i]
        if c == '/' and i + 1 < n and text[i + 1] == '*':
            j = text.find('*/', i + 2)
            i = n if j < 0 else j + 2
            continue
        if c == '/' and i + 1 < n and text[i + 1] == '/':
            j = text.find('\n', i)
            i = n if j < 0 else j
            continue
        if c == '{':
            return i
        if c == '}':
            return None
        i += 1
    return None


def _definition_start(text, match_start):
    """Extend *match_start* to include a return-type line placed above it."""
    line_start = text.rfind('\n', 0, match_start) + 1
    if text[line_start:match_start].strip():
        return line_start
    prev_end = line_start - 1
    if prev_end < 0:
        return match_start
    prev_start = text.rfind('\n', 0, prev_end) + 1
    prev = text[prev_start:prev_end]
    if (prev.strip() and '(' not in prev and ';' not in prev
            and not prev.lstrip().startswith('#')
            and _TYPE_LINE_RE.match(prev)):
        return prev_start
    return match_start



def _blocks(text):
    """Return top-level function definitions as ordered ``dict`` records."""
    depths = _depth_array(text)
    found = []
    for m in _DEF_RE.finditer(text):
        name = m.group(1)
        if name.lstrip('_').lower() in _KEYWORDS:
            continue
        if name.lower() in _TYPE_NAMES:
            continue
        if depths[m.start()] != 0:
            continue
        # Reject function-pointer declarations: ``int (*cls_)()`` matches with
        # the name ``int`` and a ``(`` followed by ``*``.
        lparen = m.end() - 1
        after = _skip_blank(text, lparen + 1)
        if after < len(text) and text[after] == '*':
            continue
        open_idx = _find_body_open(text, lparen)
        if open_idx is None:
            continue
        body_depth = depths[open_idx] + 1
        close = None
        for j in range(open_idx + 1, len(text)):
            if text[j] == '}' and depths[j] == body_depth:
                close = j
                break
        if close is None:
            continue
        start = _definition_start(text, m.start())
        end = close + 1
        while end < len(text) and text[end] in '\r\n':
            end += 1
        found.append({'name': name.lstrip('_').lower(), 'raw': name,
                      'start': start, 'end': end})

    # Keep only outermost, non-overlapping blocks (a nested definition would be
    # inside its parent; the parent wins).
    found.sort(key=lambda b: (b['start'], -b['end']))
    result = []
    for block in found:
        if result and block['start'] < result[-1]['end']:
            continue
        result.append(block)
    return result




def extract_routine(module_text, symbol):
    """Return ``preamble + target_function`` for *symbol*, or ``None``.

    *symbol* may be given with a leading underscore and in any case; it is
    matched against the module's normalized definition names.  ``None`` is
    returned when the definition is missing or ambiguous (more than one body),
    which tells the caller to fall back to the whole module.
    """
    target = symbol.lstrip('_').lower()
    blocks = _blocks(module_text)
    matches = [b for b in blocks if b['name'] == target]
    if len(matches) != 1:
        return None
    target_block = matches[0]
    body = module_text[target_block['start']:target_block['end']]

    preceding = [b for b in blocks if b['end'] <= target_block['start']]

    # Text with every preceding definition removed is the reference space: a
    # sibling is pulled back in only when the retained source mentions it (for
    # example ``int (*cls_)() = noper;`` in croot.c forces ``noper`` to stay).
    retained_parts = []
    cursor = 0
    for b in preceding:
        retained_parts.append(module_text[cursor:b['start']])
        cursor = b['end']
    retained_parts.append(module_text[cursor:target_block['start']])
    retained = ''.join(retained_parts) + body

    keep = set()
    changed = True
    while changed:
        changed = False
        for b in preceding:
            if b['start'] in keep:
                continue
            if _references(retained, b['raw']):
                keep.add(b['start'])
                retained += module_text[b['start']:b['end']]
                changed = True

    items = []
    cursor = 0
    for b in preceding:
        if b['start'] > cursor:
            items.append((cursor, module_text[cursor:b['start']]))
        if b['start'] in keep:
            items.append((b['start'], module_text[b['start']:b['end']]))
        cursor = b['end']
    if target_block['start'] > cursor:
        items.append((cursor, module_text[cursor:target_block['start']]))
    items.sort(key=lambda item: item[0])
    preamble = ''.join(chunk for _, chunk in items)
    return preamble + body

def _references(text, identifier):
    if not identifier:
        return False
    pattern = (r'(?<![A-Za-z0-9_])' + re.escape(identifier)
               + r'(?![A-Za-z0-9_])')
    return re.search(pattern, text) is not None

