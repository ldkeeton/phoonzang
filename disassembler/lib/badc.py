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
with the definition, ``span`` transfers that move more bytes than their
object holds and ``shp`` globals declared with different element types in
different files (records with no struct: see :mod:`lib.badc_shapes`),
``adj`` code that reaches past the end of an object
into its neighbour (see :func:`_count_adjacency`), and ``addr`` integer literals that are a named DS datum's
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
           f"{'off':>3} {'mac':>3} {'view':>4} {'ext':>3} {'span':>4} {'shp':>3} "
           f"{'adj':>3} {'addr':>4}  "
           "file")

# Definitions do not change between projects that share a source tree.
_DEFINITION_CACHE = {}
_EXTERN_CACHE = {}
_ARRAY_CACHE = {}


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


# ---- adj: reaching past the end of an object --------------------------------
#
# Code that uses one object's name to reach the next one only works while the
# link keeps the two adjacent.  The usual cause is one real object (a 20-row
# array, a buffer, a record) that the generator named in pieces: the C then
# indexes the first piece past its end.  Three exact checks, no heuristics:
#
# * every use of a file-scope array defined with one element
#   (``int rows[1];``, a piece's tell) beyond element 0: a variable or
#   non-zero index, or its address handed on (``strcpy(path, ...)``,
#   ``path + i``);
# * a constant index at or past an array's declared dimension;
# * in ``.s``, ``name+N`` where N reaches the next symbol of the original
#   image (the generator's symbol table gives where each object ends).

#: A file-scope declaration: type and declarators, then an optional
#: initializer (which may hold braces and run over lines).
_TOP_DECL = re.compile(r'^(?!extern\b|typedef\b|return\b|#)'
                       r'([A-Za-z_][^;{}()=]*?)\s*(?:=[^;]*)?;', re.M)
_ARRAY_DECLARATOR = re.compile(r'^\s*\**\s*([A-Za-z_]\w*)\s*((?:\[\s*\d+\s*\]\s*)+)$')
_ASM_REACH = re.compile(r'(?<![\w$.])([A-Za-z_$][\w$]*)\s*\+\s*'
                        r'([0-9][0-9a-fA-F]*[hH]|\d+)(?![\w$])')
_REGISTERS = frozenset('ax bx cx dx si di bp sp al ah bl bh cl ch dl dh '
                       'cs ds es ss'.split())


def _array_definitions(code):
    """``{name: dims}`` of the file-scope array definitions in *code*."""
    found = {}
    for match in _TOP_DECL.finditer(code):
        parts = _split_declarators(match.group(1))
        # The first declarator carries the type: drop it, keep the name.
        first = re.match(r'^(?:(?:static|const|volatile|unsigned|signed|far|'
                         r'near|huge|struct\s+\w+|union\s+\w+|enum\s+\w+|'
                         r'[A-Za-z_]\w*)\s+)+(.*)$', parts[0].strip(), re.S)
        if not first:
            continue
        for part in [first.group(1)] + parts[1:]:
            part = part.split('=')[0]
            declarator = _ARRAY_DECLARATOR.match(part)
            if declarator:
                found[declarator.group(1)] = [
                    int(n) for n in re.findall(r'\d+', declarator.group(2))]
    return found


def _project_arrays(root):
    """``{top directory: {name: dims}}`` of every file-scope array defined
    under *root*; a name defined in a binary's own directory shadows one in
    a shared directory."""
    key = os.path.realpath(root)
    if key not in _ARRAY_CACHE:
        found = {}
        for directory, dirnames, filenames in os.walk(root):
            dirnames[:] = sorted(name for name in dirnames
                                 if name not in cachedirs.SRC_SKIP_DIRS)
            for name in sorted(filenames):
                if not name.endswith('.c'):
                    continue
                path = os.path.join(directory, name)
                top = os.path.relpath(path, root).split(os.sep, 1)[0]
                with open(path, errors='replace') as source:
                    code = _STRING.sub('""', _COMMENT.sub('', source.read()))
                found.setdefault(top, {}).update(_array_definitions(code))
        _ARRAY_CACHE[key] = found
    return _ARRAY_CACHE[key]


def _file_arrays(relpath, arrays, root_binary='ds'):
    """The arrays a file under *relpath* sees: the root's, then its own
    directory's (a name defined in several other directories with different
    dimensions is left out: the file cannot be tied to one of them)."""
    if not arrays:
        return {}
    top = relpath.split(os.sep, 1)[0]
    merged, clash = {}, set()
    for directory, names in arrays.items():
        if directory in (top, root_binary):
            continue
        for name, dims in names.items():
            if merged.get(name, dims) != dims:
                clash.add(name)
            merged[name] = dims
    for name in clash:
        del merged[name]
    merged.update(arrays.get(root_binary) or {})
    merged.update(arrays.get(top) or {})
    return merged


def _count_adjacency(code, arrays):
    """Count the arrays this file reaches past the end of (see above): one
    per array, however many uses."""
    code = _STRING.sub('""', code)
    # A name this file declares without brackets is a scalar here: one
    # element, nothing past it.
    scalars = set()
    for match in _EXTERN_VAR.finditer(code):
        for part in _split_declarators(match.group(1)):
            if '[' not in part and '(' not in part:
                name = re.search(r'(\w+)\s*$', part)
                if name:
                    scalars.add(name.group(1))
    # Uses only: not declarations (an initializer is not a use either).
    body = _EXTERN_VAR.sub('', _TOP_DECL.sub('', code))
    body = '\n'.join(line for line in body.split('\n')
                     if not line.lstrip().startswith('#'))
    return sum(1 for name, dims in arrays.items()
               if name in body and name not in scalars
               and _reaches_past(body, name, dims))


def _reaches_past(body, name, dims):
    """Whether *body* uses array *name* (*dims*) past its last element."""
    for match in re.finditer(r'(?<![\w.>])' + re.escape(name) +
                             r'\b(\s*\[([^\[\]]*)\])?', body):
        if match.group(1) is None:
            # The bare name is the array's address: past element 0 only for
            # a one-element array, and not as ``sizeof name``.
            if dims[0] == 1 and not body[:match.start()].rstrip().endswith(
                    'sizeof'):
                return True
            continue
        subscript = match.group(2).strip()
        literal = re.fullmatch(r'(0[xX][0-9a-fA-F]+|\d+)[uUlL]*', subscript)
        if literal:
            value = _literal_value(literal.group(1))
            if value is not None and value >= dims[0]:
                return True
        elif dims[0] == 1:
            return True
    return False


def _asm_value(token):
    return int(token[:-1], 16) if token[-1] in 'hH' else int(token)


def _object_ends(symbols):
    """``{name: (offset, sorted offsets, {offset: names})}`` from one
    binary's symbol table (the generator's ``symbols/BIN.json``): enough to
    say which object ``name+N`` lands in."""
    by_space = {}
    for entry in symbols:
        if entry.get('kind') == 'LOCAL' or entry.get('offset') is None:
            continue
        by_space.setdefault(entry['space'], []).append(entry)
    out = {}
    for entries in by_space.values():
        names = {}
        for entry in entries:
            names.setdefault(entry['offset'], set()).add(entry['name'])
        offsets = sorted(names)
        for entry in entries:
            out[entry['name']] = (entry['offset'], offsets, names)
    return out


def _landing(table, name, reach):
    """The names of the object ``name+reach`` lands in, or ``None`` when
    *table* does not know *name*."""
    import bisect
    for key in (name, name.rstrip('_')):
        if key in table:
            offset, offsets, names = table[key]
            at = offsets[bisect.bisect_right(offsets, offset + reach) - 1]
            return names[at]
    return None


def _asm_defined(code):
    """The labels *code* defines, with and without the C ``_``."""
    from lib.aztec.link import asm_labels
    labels = set(asm_labels(code))
    return labels | {label.rstrip('_') for label in labels}


def _count_asm_reach(code, ends):
    """Count ``name+N`` operands in assembly that land in another file's
    object.

    *ends* is ``[table, ...]`` (:func:`_object_ends`), one per binary the
    file may be linked into.  Landing in ``name`` itself, or in anything this
    file defines, is fine: one file keeps its own order.  It counts only
    where every binary that knows the name agrees; a name no table knows
    counts unless this file defines it."""
    defined = _asm_defined(code)
    count = 0
    for line in code.split('\n'):
        line = line.split(';', 1)[0]
        for match in _ASM_REACH.finditer(line):
            name = match.group(1)
            if name.lower() in _REGISTERS:
                continue
            reach = _asm_value(match.group(2))
            landed = [_landing(table, name, reach) for table in ends]
            landed = [names for names in landed if names is not None]
            if not landed:
                # No symbol table knows it: fine only if this file defines
                # it (a local table), else nothing proves where N lands.
                count += name not in defined
                continue
            if all(
                    name not in names and name.rstrip('_') not in names
                    and not names & defined for names in landed):
                count += 1
    return count


def object_ends(project):
    """``{binary: table}`` (:func:`_object_ends`) from the generator's symbol tables
    in the project cache; empty before ``make build``."""
    import json
    directory = os.path.join(cachedirs.project_cache(project), 'symbols')
    out = {}
    if not os.path.isdir(directory):
        return out
    for name in sorted(os.listdir(directory)):
        if name.endswith('.json'):
            with open(os.path.join(directory, name)) as f:
                out[name[:-5]] = _object_ends(json.load(f))
    return out


def _file_ends(relpath, ends):
    """The symbol tables a ``.s`` under *relpath* is linked against: its own
    binary's, or every binary's for a shared directory."""
    if not ends:
        return []
    top = relpath.split(os.sep, 1)[0]
    return [ends[top]] if top in ends else list(ends.values())


def _score_asm(text, ends=None):
    """The counts of one ``.s`` file, as :func:`_score_file`'s: only
    ``adj`` applies to assembly."""
    adj = _count_asm_reach(text, ends or [])
    return (10 * adj,) + (0,) * 15 + (adj, 0)


def _score_file(text, definitions=None, externs=None, addresses=None,
                arrays=None, shapes=None):
    """Return the per-file counts, in header order, plus the score.
    *shapes* is this file's ``(line, kind, detail)`` list from
    :func:`lib.badc_shapes.analyse`."""
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
    adj = _count_adjacency(code, arrays or {})
    addr = _count_addresses(code, addresses)
    span = sum(1 for _l, kind, _d in shapes or () if kind == 'span')
    shp = sum(1 for _l, kind, _d in shapes or () if kind == 'shape')
    score = (3 * back + fwd + 10 * frame + 10 * vol + 3 * alias + 5 * union
             + 3 * filler + 2 * gen + 5 * pun + 5 * off + 5 * mac + 5 * view
             + 3 * ext + 10 * span + 3 * shp + 10 * adj + 10 * addr)
    return (score, back, fwd, frame, vol, alias, union, filler, gen, pun,
            off, mac, view, ext, span, shp, adj, addr)


def scan(root, addresses=None, ends=None, shapes=None):
    """Flagged ``.c`` and ``.s`` files under *root*, worst first.

    Each row is ``(score, relpath, back, fwd, frame, vol, alias, union,
    filler, gen, pun, off, mac, view, ext, span, shp, adj, addr)``.
    *shapes* is :func:`lib.badc_shapes.analyse`; without it ``span`` and
    ``shp`` stay 0.  *addresses* is
    :func:`data_addresses`; without it ``addr`` stays 0.  *ends* is
    :func:`object_ends`; without it a ``.s`` file's ``adj`` stays 0.
    """
    rows = []
    definitions = _project_definitions(root)
    externs = _project_externs(root)
    arrays = _project_arrays(root)
    for directory, dirnames, filenames in os.walk(root):
        dirnames[:] = sorted(name for name in dirnames
                             if name != 'aztec' and name not in cachedirs.SRC_SKIP_DIRS)
        for name in sorted(filenames):
            if not name.endswith(('.c', '.s')):
                continue
            path = os.path.join(directory, name)
            relpath = os.path.relpath(path, root)
            with open(path, errors='replace') as source:
                text = source.read()
            if name.endswith('.s'):
                counts = _score_asm(text, _file_ends(relpath, ends))
            else:
                counts = _score_file(text, definitions, externs,
                                     _file_addresses(relpath, addresses),
                                     _file_arrays(relpath, arrays),
                                     (shapes or {}).get(relpath))
            if counts[0]:
                rows.append((counts[0], relpath) + counts[1:])
    rows.sort(key=lambda r: (-r[0], r[1]))
    return rows


def record_shapes(project, root):
    """``{relpath: [(line, kind, detail)]}``: :mod:`lib.badc_shapes` over
    *root*, sizing table-driven transfers from the project's original data
    files."""
    from lib import badc_shapes
    from lib.sidecar import loader
    from main.options import APPS_DIR
    sidecar = loader.load_readonly(project) or {}
    return badc_shapes.analyse(root, sidecar, os.path.join(APPS_DIR, project))


def cmd_badc(projects):
    """Scan each project's sources; print flagged files and exit 1 if any."""
    flagged = 0
    for project in projects:
        root = cachedirs.src_dir(project)
        if not os.path.isdir(root):
            continue
        shapes = record_shapes(project, root)
        rows = scan(root, data_addresses(project), object_ends(project),
                    shapes)
        if rows:
            print(f'badc {project}:', file=sys.stderr)
            print(_HEADER, file=sys.stderr)
            for r in rows:
                print(f'{r[0]:5} {r[2]:4} {r[3]:4} {r[4]:3} {r[5]:3} '
                      f'{r[6]:3} {r[7]:3} {r[8]:4} {r[9]:3} {r[10]:3} '
                      f'{r[11]:3} {r[12]:3} {r[13]:4} {r[14]:3} '
                      f'{r[15]:4} {r[16]:3} {r[17]:3} {r[18]:4}  {r[1]}',
                      file=sys.stderr)
                for line, _kind, detail in shapes.get(r[1], ()):
                    print(f'{"":6}{r[1]}:{line}: {detail}', file=sys.stderr)
        print(f'badc {project}: {len(rows)} file(s) flagged')
        flagged += len(rows)
    if flagged:
        print(f'badc: {flagged} file(s) flagged', file=sys.stderr)
        sys.exit(1)
