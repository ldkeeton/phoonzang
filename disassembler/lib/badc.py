"""Flag hand-written C that matches the original bytes only through workarounds.

``make badc [PROJECT...]`` runs :func:`cmd_badc` and fails if any file is
flagged.  Columns: ``back``/``fwd`` forward and backward gotos, ``frm`` frame
structs, ``vol`` volatile, ``def`` macro aliases, ``uni`` unions, ``fill``
reserved/filler locals, ``gen`` generated symbol names, ``pun`` pointer
casts that reinterpret an object's bytes (``(int *)&x``, ``*(long *)p``,
``((int *)p)[n]``, ``((struct X *)p)->f``), ``off`` raw byte offsets into a
byte-pointer view of a typed record (``groups[i][415]``, ``recs[i][n * 44 + 3]``),
``mac`` macros that hide a pointer cast or an address alias, ``view``
arrays of byte pointers that another file declares as an array of typed
pointers, ``ext`` ``extern`` declarations whose return type disagrees
with the definition, and ``addr`` integer literals that are a named DS datum's
address (``npc_id_address = 3638`` for ``&npc_id``): they match only while
the link keeps the original layout.
"""

import os
import re
import sys

from lib import cachedirs

_COMMENT = re.compile(r'/\*.*?\*/', re.S)
_LABEL = re.compile(r'^\s*(\w+):(?!:)')
_GOTO = re.compile(r'\bgoto\s+(\w+)')
_FRAME = re.compile(r'struct\s+\w*(?:locals|frame)\w*')
_FRAME_USE = re.compile(r'\b(?:frame|local)\.\w')
_VOLATILE = re.compile(r'\bvolatile\b')
_ALIAS = re.compile(r'^#define\s+\w+\s+\w+[.\[]', re.M)
_UNION = re.compile(r'\bunion\b')
# ``unused_*`` is the repository's deliberate marker for padding that must keep
# its place; it is not a smell.  Generated address names (``bss_831c``) are
# caught by ``_GENNAME`` instead.
_FILLER = re.compile(
    r'\b(?:reserved|gap|filler|dummy|spare)(?:_\w*|\d+)?\s*[\[;,]')
_GENNAME = re.compile(r'\b(?:loc|api_idx|dseg|bss|f)_[0-9a-fA-F]{4}\w*')
_PTR_CAST = re.compile(
    r'\(\s*(?:(?:const|volatile)\s+)*'
    r'(?:(?:unsigned|signed)\s+)?'
    r'(?:struct\s+\w+|union\s+\w+|\w+)\s*\*\s*\)')
_EXTERN = re.compile(
    r'^\s*extern\s+([^;()]+?)\s+([A-Za-z_]\w*)\s*\(\s*\)\s*;', re.M)
_EXTERN_VAR = re.compile(r'^\s*extern\s+([^;]+);', re.M)
_DECLARATOR = re.compile(
    r'\s*((?:(?:unsigned|signed|const|volatile|far|near|huge)\s+)*'
    r'(?:struct\s+\w+|union\s+\w+|enum\s+\w+|\w+))'
    r'((?:\s+(?:far|near|huge))*)'
    r'\s*(\**)\s*(\w+)\s*$')
_DEFINITION = re.compile(r'^([A-Za-z_]\w*)\s*\(')
_KEYWORDS = {'if', 'for', 'while', 'switch', 'return', 'else', 'do', 'sizeof'}
_RETURN_TYPE = re.compile(
    r'^(?:(?:static|extern|const|volatile|far|near|huge)\s+)*'
    r'(?:(?:unsigned|signed)\s+)?'
    r'(?:struct\s+|union\s+|enum\s+)?[A-Za-z_]\w*\b[ \t*]*$')
_OFFSET_NUMBER = re.compile(r'\b(?:0[xX][0-9a-fA-F]+|\d+)\b')
_LITERAL = re.compile(r'(?<![\w.])(0[xX][0-9a-fA-F]+|\d+)[uUlL]*(?![\w.])')
_STRING = re.compile(r'"(?:\\.|[^"\\\n])*"|\'(?:\\.|[^\'\\\n])*\'')
#: Below this a literal is far likelier a count or a flag than an address: the
#: low DS bytes hold the runtime's own data, which C never names by number.
_ADDRESS_FLOOR = 0x400

_HEADER = (f"{'score':>5} {'back':>4} {'fwd':>4} {'frm':>3} {'vol':>3} "
           f"{'def':>3} {'uni':>3} {'fill':>4} {'gen':>3} {'pun':>3} "
           f"{'off':>3} {'mac':>3} {'view':>4} {'ext':>3} {'addr':>4}  file")

# Definitions do not change between projects that share a source tree.
_DEFINITION_CACHE = {}
_EXTERN_CACHE = {}


def _count_punning(code):
    """Count pointer casts that reinterpret an object's bytes.

    Three shapes are workarounds: ``(int *)&value``, ``*(long *)buffer``,
    ``((int *)buffer)[index]`` and ``((struct X *)buffer)->field``.  A cast used
    only for byte addressing (for example ``(char *)slot_label + offset``) is
    left alone.
    """
    count = 0
    for match in _PTR_CAST.finditer(code):
        before = match.start() - 1
        while before >= 0 and code[before] in '( \t\r\n':
            before -= 1
        if before >= 0 and code[before] == '*':
            count += 1
            continue
        after = code[match.end():].lstrip()
        if after.startswith('&'):
            count += 1
            continue
        prefix = code[:match.start()].rstrip()
        if not prefix.endswith('('):
            continue
        depth = 1
        end = match.end()
        while end < len(code) and depth:
            if code[end] == '(':
                depth += 1
            elif code[end] == ')':
                depth -= 1
            end += 1
        if depth == 0:
            after = code[end:].lstrip()
            if after.startswith('[') or after.startswith('->'):
                count += 1
    return count


def _split_declarators(text):
    """Split a declaration on top-level commas."""
    parts = []
    depth = 0
    current = ''
    for char in text:
        if char in '([':
            depth += 1
        elif char in ')]':
            depth -= 1
        if char == ',' and depth == 0:
            parts.append(current)
            current = ''
        else:
            current += char
    parts.append(current)
    return parts


def _byte_views(code):
    """Names declared ``extern char *name[]`` or ``extern char *name``.

    Such a name is a byte view over memory that really holds typed records.
    """
    names = set()
    for match in re.finditer(r'^\s*extern\s+([^;]+);', code, re.M):
        parts = _split_declarators(match.group(1))
        first = parts[0]
        base = re.match(
            r'\s*((?:(?:unsigned|signed|const|volatile|far|near)\s+)*'
            r'(?:char|int|long|short|void|struct\s+\w+|union\s+\w+))', first)
        if not base:
            continue
        kind = base.group(1)
        rest = first[base.end():]
        pointer = rest.lstrip().startswith('*')
        if pointer:
            kind += ' *'
        if not re.match(r'(?:unsigned\s+|signed\s+)?char\s*\*', kind):
            continue
        name = re.match(r'\s*\**\s*(\w+)', rest)
        if pointer and name:
            names.add(name.group(1))
        for part in parts[1:]:
            pointer = part.lstrip().startswith('*')
            name = re.match(r'\s*\**\s*(\w+)', part)
            if pointer and name:
                names.add(name.group(1))
    return names


def _count_offsets(code):
    """Count byte offsets indexed through a byte view.

    A constant of 16 or more (or an expression such as ``* 44 + 3``) cannot be
    an ordinary array index on a typed record, so it is a raw byte offset.
    """
    count = 0
    for name in _byte_views(code):
        pattern = re.compile(r'\b' + re.escape(name) + r'\s*'
                             r'((?:\[[^\]]*\]\s*)+)')
        for match in pattern.finditer(code):
            for subscript in re.findall(r'\[([^\]]*)\]', match.group(1)):
                for number in _OFFSET_NUMBER.findall(subscript):
                    if int(number, 0) >= 16:
                        count += 1
                        break
    return count


def _count_macros(code):
    """Count macros that hide a cast or an address alias."""
    count = 0
    lines = code.split('\n')
    index = 0
    while index < len(lines):
        if lines[index].lstrip().startswith('#define'):
            body = lines[index]
            end = index
            while body.rstrip().endswith('\\') and end + 1 < len(lines):
                end += 1
                body += '\n' + lines[end]
            if re.search(r'\*\s*\)', body) or ('&' in body and '[' in body):
                count += 1
            index = end
        index += 1
    return count


def _extern_variables(code):
    """Yield ``(name, byte_pointer_array, typed_pointer_array)`` externs.

    Grouped declarators inherit the base type from the first one, so
    ``extern unsigned char *a[], *b[];`` marks both names.
    """
    found = []
    for match in _EXTERN_VAR.finditer(code):
        base = None
        for part in _split_declarators(match.group(1)):
            part = part.strip()
            is_array = False
            while True:
                suffix = re.search(r'\[[^\]]*\]\s*$', part)
                if not suffix:
                    break
                part = part[:suffix.start()].rstrip()
                is_array = True
            if not part or '(' in part:
                continue
            declarator = _DECLARATOR.match(part)
            if declarator:
                base = ' '.join(
                    (declarator.group(1) + declarator.group(2)).split())
                pointer = len(declarator.group(3))
                name = declarator.group(4)
            elif base is not None:
                rest = re.match(r'(\**)\s*(\w+)\s*$', part)
                if not rest:
                    continue
                pointer = len(rest.group(1))
                name = rest.group(2)
            else:
                continue
            tokens = base.split()
            is_char = ('char' in tokens and
                       all(token == 'char' or token in
                           ('unsigned', 'signed', 'const', 'volatile',
                            'far', 'near', 'huge') for token in tokens))
            found.append((name,
                          is_char and pointer >= 1 and is_array,
                          not is_char and tokens[-1] != 'void' and
                          pointer >= 1 and is_array))
    return found


def _project_externs(root):
    """Names declared as arrays of typed pointers somewhere in the project."""
    key = os.path.realpath(root)
    if key not in _EXTERN_CACHE:
        typed = set()
        for directory, dirnames, filenames in os.walk(root):
            dirnames[:] = sorted(name for name in dirnames
                                 if name != 'aztec' and name not in cachedirs.SRC_SKIP_DIRS)
            for name in sorted(filenames):
                if not name.endswith('.c'):
                    continue
                path = os.path.join(directory, name)
                with open(path, errors='replace') as source:
                    code = _COMMENT.sub('', source.read())
                for symbol, _, is_typed in _extern_variables(code):
                    if is_typed:
                        typed.add(symbol)
        _EXTERN_CACHE[key] = typed
    return _EXTERN_CACHE[key]


def _count_views(code, typed_symbols):
    """Count byte-pointer arrays that another file declares as typed arrays."""
    count = 0
    seen = set()
    for name, is_byte, _ in _extern_variables(code):
        if is_byte and name in typed_symbols and name not in seen:
            count += 1
            seen.add(name)
    return count


def _normalise_type(text):
    text = re.sub(r'\b(?:static|extern|const|volatile|far|near|huge)\b',
                  ' ', text)
    text = re.sub(r'\s*\*\s*', ' *', text)
    return re.sub(r'\s+', ' ', text).strip()


def _definitions(code):
    """Map function names to their explicit return types (``None`` if K&R)."""
    lines = code.split('\n')
    found = {}
    for index, line in enumerate(lines):
        if not line or line[0].isspace():
            continue
        match = _DEFINITION.match(line)
        if not match or match.group(1) in _KEYWORDS:
            continue
        if line.rstrip().endswith(';'):
            continue
        end = index
        while end < len(lines) and '{' not in lines[end]:
            end += 1
        if end >= len(lines):
            continue
        result = line[:match.start(1)].strip() or None
        if result is None:
            above = index - 1
            while above >= 0 and not lines[above].strip():
                above -= 1
            if above >= 0 and _RETURN_TYPE.match(lines[above].strip()):
                result = lines[above].strip()
        found.setdefault(match.group(1), set()).add(
            _normalise_type(result) if result else None)
    return found


def _project_definitions(root):
    """Return every function definition under *root*, including Aztec."""
    key = os.path.realpath(root)
    if key not in _DEFINITION_CACHE:
        found = {}
        for directory, dirnames, filenames in os.walk(root):
            dirnames[:] = sorted(name for name in dirnames
                                 if name not in cachedirs.SRC_SKIP_DIRS)
            for name in sorted(filenames):
                if not name.endswith('.c'):
                    continue
                path = os.path.join(directory, name)
                with open(path, errors='replace') as source:
                    code = _COMMENT.sub('', source.read())
                for function, types in _definitions(code).items():
                    found.setdefault(function, set()).update(types)
        _DEFINITION_CACHE[key] = found
    return _DEFINITION_CACHE[key]


def _count_externs(code, definitions):
    """Count ``extern`` return types that disagree with the definition."""
    count = 0
    for match in _EXTERN.finditer(code):
        declared = match.group(1)
        if ',' in declared:
            continue
        function = match.group(2)
        types = definitions.get(function)
        if not types:
            continue
        declared = _normalise_type(declared)
        if declared in types:
            continue
        # A K&R definition without a return type is ``int``; ``void`` is the
        # repository's usual spelling for a function that returns nothing.
        if None in types and declared in ('int', 'void'):
            continue
        count += 1
    return count


def _literal_value(token):
    """The value of a C integer literal (``0x1f``, ``017``, ``42``)."""
    if token[:2] in ('0x', '0X'):
        return int(token, 16)
    try:
        return int(token, 8 if len(token) > 1 and token[0] == '0' else 10)
    except ValueError:
        return None


def _count_addresses(code, addresses):
    """Count integer literals that equal a named DS datum's offset.

    *addresses* maps an offset to its name; offsets below
    :data:`_ADDRESS_FLOOR` and round decimals are not considered.  Strings
    and preprocessor lines are skipped.
    """
    if not addresses:
        return 0
    count = 0
    for line in _STRING.sub('""', code).split('\n'):
        if line.lstrip().startswith('#'):
            continue
        for match in _LITERAL.finditer(line):
            token = match.group(1)
            value = _literal_value(token)
            # A round decimal (``3000``) is a count or an id someone chose; an
            # address copied from a listing is not round.
            if token.isdigit() and value is not None and value % 100 == 0:
                continue
            if (value is not None and value >= _ADDRESS_FLOOR
                    and value in addresses):
                count += 1
    return count


def data_addresses(project):
    """``{binary: {offset: name}}`` of each binary's named DS data.

    From the sidecar's ``data_names``: their keys are DS offsets, the value
    a C literal would spell.  Empty without a sidecar.
    """
    from lib.sidecar import loader
    sidecar = loader.load_readonly(project) or {}
    out = {}
    for binary, section in (sidecar.get('binaries') or {}).items():
        names = {}
        for key, entry in (section.get('data_names') or {}).items():
            name = entry.get('name') if isinstance(entry, dict) else entry
            if name:
                names[int(key, 16)] = name
        out[binary] = names
    return out


def _file_addresses(relpath, addresses, root_binary='ds'):
    """The address map a file under *relpath* can reach: the root's data
    plus that of the binary whose directory holds it."""
    if not addresses:
        return {}
    top = relpath.split(os.sep, 1)[0]
    merged = dict(addresses.get(root_binary) or {})
    if top != root_binary:
        merged.update(addresses.get(top) or {})
    return merged


def _score_file(text, definitions=None, externs=None, addresses=None):
    """Return the per-file counts, in header order, plus the score."""
    # Blank out comments but keep line numbers.
    code = _COMMENT.sub(lambda m: '\n' * m.group().count('\n'), text)
    lines = code.split('\n')
    labels = {}
    for i, line in enumerate(lines):
        m = _LABEL.match(line)
        if m and m.group(1) != 'default':
            labels[m.group(1)] = i
    back = fwd = 0
    for i, line in enumerate(lines):
        for target in _GOTO.findall(line):
            if target in labels and labels[target] < i:
                back += 1
            else:
                fwd += 1
    frame = len(_FRAME.findall(code)) + (1 if _FRAME_USE.search(code) else 0)
    vol = len(_VOLATILE.findall(code))
    alias = len(_ALIAS.findall(code))
    union = len(_UNION.findall(code))
    filler = len(_FILLER.findall(code))
    gen = len(_GENNAME.findall(code))
    pun = _count_punning(code)
    off = _count_offsets(code)
    mac = _count_macros(code)
    view = _count_views(code, externs or set())
    ext = _count_externs(code, definitions or {})
    addr = _count_addresses(code, addresses)
    score = (3 * back + fwd + 10 * frame + 10 * vol + 3 * alias + 5 * union
             + 3 * filler + 2 * gen + 5 * pun + 5 * off + 5 * mac + 5 * view
             + 3 * ext + 10 * addr)
    return (score, back, fwd, frame, vol, alias, union, filler, gen, pun,
            off, mac, view, ext, addr)


def scan(root, addresses=None):
    """Flagged ``.c`` files under *root*, worst first.

    Each row is ``(score, relpath, back, fwd, frame, vol, alias, union,
    filler, gen, pun, off, mac, view, ext, addr)``.  *addresses* is
    :func:`data_addresses`; without it ``addr`` stays 0.
    """
    rows = []
    definitions = _project_definitions(root)
    externs = _project_externs(root)
    for directory, dirnames, filenames in os.walk(root):
        dirnames[:] = sorted(name for name in dirnames
                             if name != 'aztec' and name not in cachedirs.SRC_SKIP_DIRS)
        for name in sorted(filenames):
            if not name.endswith('.c'):
                continue
            path = os.path.join(directory, name)
            relpath = os.path.relpath(path, root)
            with open(path, errors='replace') as source:
                counts = _score_file(source.read(), definitions, externs,
                                     _file_addresses(relpath, addresses))
            if counts[0]:
                rows.append((counts[0], relpath) + counts[1:])
    rows.sort(key=lambda r: (-r[0], r[1]))
    return rows


def cmd_badc(projects):
    """Scan each project's sources; print flagged files and exit 1 if any."""
    flagged = 0
    for project in projects:
        root = cachedirs.src_dir(project)
        if not os.path.isdir(root):
            continue
        rows = scan(root, data_addresses(project))
        if rows:
            print(f'badc {project}:', file=sys.stderr)
            print(_HEADER, file=sys.stderr)
            for r in rows:
                print(f'{r[0]:5} {r[2]:4} {r[3]:4} {r[4]:3} {r[5]:3} '
                      f'{r[6]:3} {r[7]:3} {r[8]:4} {r[9]:3} {r[10]:3} '
                      f'{r[11]:3} {r[12]:3} {r[13]:4} {r[14]:3} '
                      f'{r[15]:4}  {r[1]}',
                      file=sys.stderr)
        print(f'badc {project}: {len(rows)} file(s) flagged')
        flagged += len(rows)
    if flagged:
        print(f'badc: {flagged} file(s) flagged', file=sys.stderr)
        sys.exit(1)
