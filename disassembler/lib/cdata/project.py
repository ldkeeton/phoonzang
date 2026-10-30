"""``make data PROJECT``: the game's data files decoded into C, for review.

The sidecar's ``data_files`` table says what the code reads each file into,
part by part, in the order it reads them::

    "data_files": {"NEWGAME.DBS": {"note": "...",
        "parts": [{"into": "path_edges", "size": 128,
                   "element_labels": "MSG_LOCATION_NAME_BASE",
                   "field_labels": {"end_a": "MSG_LOCATION_NAME_BASE"}}, ...]}}

A part is ``into`` a variable (``size`` bytes, ``count`` elements, or the
rest of the file; ``record`` bytes per element; ``in`` the file declaring a
local), a ``memory`` run of variables (``size`` bytes, ``count`` times), or
``raw`` records of ``record`` bytes for a buffer the code has not named.
Their types are derived from the code (:mod:`.derive`); no layout is written
by hand.  The parts must cover the file exactly.  Labels name a
``message_bases`` entry, a number then shown with the message at base +
value as a comment, or are ``text``: each element's leading text.

Each file becomes ``.cache/<project>/data/<FILE>.c``; a file of several parts
includes one ``<FILE>/<offset>_<variable>.c`` per part, so the folder lists
them in file order.  Each struct the files use is written once, as
``structs/<name>.h``, so nothing reaches into ``src_<project>/include``.  Nothing is written unless the root
compiles back to the original bytes.  The build never reads these files, and nothing
is written under ``src_<project>/``, which holds only the code's sources.

The C is compiled here, not by Aztec (whose K&R C has no designated
initializers and whose objects stop at 64K), under Aztec's 8086 rules:
``char`` 1 byte, ``int``/``short`` 2, ``long`` 4, near pointers 2,
little-endian, no padding.

* :mod:`.lang` -- lexer, preprocessor and parser for the C subset;
* :mod:`.layout` -- the type model and its layout;
* :mod:`.emit` -- initializers to bytes, and offsets back to field names;
* :mod:`.render` -- bytes to initializers;
* :mod:`.derive` -- part types from the code's declarations and layouts;
* :mod:`.project` -- the sidecar's ``data_files`` table, writing the files.

Anything outside the subset is an error naming ``file:line``.
"""

import os

from .emit import Image
from .lang import CDataError, parse_file, parse_text
from .derive import Project, struct_headers
from .render import render_object, render_packed


def include_dirs(src_root):
    return [os.path.join(src_root, 'include')]


def compile_root(path, src_root, more_dirs=()):
    """The :class:`Image` a root source compiles to; includes are looked for
    beside the including file, then in *more_dirs* and the code's headers."""
    parser = parse_file(path, [*more_dirs, *include_dirs(src_root)])
    if not parser.objects:
        raise CDataError(os.path.basename(path), 'defines no objects')
    return Image(parser.objects)


def _difference(orig, image):
    built = image.data
    for at, (a, b) in enumerate(zip(orig, built)):
        if a != b:
            return (f'{image.where(at)} (+0x{at:x}): built {b:02x}, '
                    f'original {a:02x}')
    if len(orig) != len(built):
        return f'size {len(built)} != original {len(orig)}'
    return None


# ── writing the sources (make data-init) ─────────────────────────────────────

def _message_labels(app_dir, sidecar):
    from lib.msgids import decode_messages, message_data
    spec = message_data(sidecar)
    messages = decode_messages(app_dir, spec)[0] if spec else {}
    bases = {b['name']: b['value'] for b in sidecar.get('message_bases') or ()}

    def labels(base_name, count=256):
        if base_name not in bases:
            raise ValueError(f'unknown message base {base_name}')
        base = bases[base_name]
        out = {}
        for value in range(count):
            text = messages.get(base + value)
            if text:
                out[value] = ' '.join(text.replace('*/', '* /').split())
        return out
    labels.spec, labels.messages = spec, messages
    return labels


def _part_type(part, derived, remaining):
    """``(object name, type, includes, field notes)`` of one part."""
    from .derive import _BYTE
    from .layout import Array
    count = part.get('count')
    if 'memory' in part:
        name = part['memory']
        ctype, includes, notes = derived.memory(name, part['size'])
    elif 'into' in part:
        name = part['into']
        ctype, includes = derived.element(name, part.get('record'),
                                          part.get('in'))
        notes = {}
        if count is None:
            size = part.get('size', remaining)
            if size % ctype.size:
                raise ValueError(f'{name}: {size} bytes is not a whole number '
                                 f'of {ctype.size}-byte elements')
            count = size // ctype.size
            if count == 1 and 'size' in part and part['size'] == ctype.size:
                count = None
    elif 'raw' in part:
        from .layout import scalar_type
        name, includes, notes = part['raw'], [], {}
        elem = scalar_type(part['type'].split()) if 'type' in part else _BYTE
        if part['record'] % elem.size:
            raise ValueError(f'{name}: {part["record"]} bytes is not a whole '
                             f'number of {part["type"]}')
        ctype = Array(elem, part['record'] // elem.size)
    else:
        raise ValueError(f'{part}: needs into, memory or raw')
    if count is not None and count != 1:
        ctype = Array(ctype, count)
    return name, ctype, includes, notes


def _message_records(app_dir, labels, at, size):
    """``[(offset, number, text)]`` for each length-prefixed message record in
    the message blocks file within its part (*size* bytes at *at*), in file
    order: the walk ``load_message_string`` makes from each directory entry.
    *text* is None for a record its text does not pack back to."""
    import struct
    from .huffman import codes, pack
    spec = labels.spec
    with open(os.path.join(app_dir, spec['directory']), 'rb') as f:
        directory = f.read()
    with open(os.path.join(app_dir, spec['blocks']), 'rb') as f:
        blocks = f.read()
    with open(os.path.join(app_dir, spec['tree']), 'rb') as f:
        table = codes(f.read())
    records = {}
    count = struct.unpack_from('<H', directory)[0]
    for index in range(count):
        first, offset, here, block = struct.unpack_from('<HHBB', directory,
                                                        2 + index * 6)
        position = block * 1024 + offset
        for number in range(first, first + here + 1):
            if position >= len(blocks):
                break
            length = blocks[position]
            text = labels.messages.get(number)
            try:
                if pack(text, table) != blocks[position:position + length + 1]:
                    text = None
            except (KeyError, TypeError, ValueError):
                text = None
            if at <= position < at + size:
                records.setdefault(position - at, (number, text))
            position += length + 1
    return [(offset, number, text)
            for offset, (number, text) in sorted(records.items())]


def _text_labels(ctype, data):
    """Element labels from each element's leading text (an item's name)."""
    from .layout import Array
    if not isinstance(ctype, Array):
        return {}
    size, out = ctype.elem.size, {}
    for i in range(ctype.count):
        text = data[i * size:(i + 1) * size].split(b'\0', 1)[0]
        if len(text) >= 3 and all(0x20 <= b < 0x7f for b in text):
            out[i] = text.decode('ascii').replace('*/', '* /')
    return out


def _comment(text):
    return '/* ' + text.replace('*/', '* /') + ' */'


def write_sources(name, spec, app_dir, out_root, src_root, labels, derived,
                  headers):
    """Write the root and parts of data file *name*; returns the paths.

    The structs it uses join *headers* (``{file name: text}``), written to
    ``structs/``.  Nothing is written unless every part renders and the whole
    root compiles back to the original bytes.
    """
    with open(os.path.join(app_dir, name), 'rb') as f:
        data = f.read()
    files = {}
    at = 0
    root_lines = [_comment(f'{name}: {spec["note"]}') if spec.get('note')
                  else _comment(name), '']
    structs = 'structs/' if len(spec['parts']) == 1 else '../structs/'
    digits = max(4, len(f'{len(data):x}'))
    for part in spec['parts']:
        obj_name, ctype, _includes, notes = _part_type(part, derived,
                                                      len(data) - at)
        chunk = data[at:at + ctype.size]
        if len(chunk) != ctype.size:
            raise ValueError(f'{name}: {obj_name} needs {ctype.size} bytes '
                             f'at +0x{at:x}; the file has {len(data) - at}')
        element = part.get('element_labels')
        if element == 'text':
            element = _text_labels(ctype, chunk)
        elif element:
            element = labels(element)
        fields = {field: labels(base)
                  for field, base in (part.get('field_labels') or {}).items()}
        head = f'{name} +0x{at:04x}, {ctype.size} bytes'
        if part.get('note'):
            head += f': {part["note"]}'
        text = _comment(head) + '\n'
        header = struct_headers(ctype, headers, notes)
        if header:
            text += f'\n#include "{structs}{header}"\n'
        text += '\n'
        if part.get('records') == 'messages':
            tree = labels.spec['tree']
            text += (_comment(f'Each string is a packed record: [length]'
                              f'[count][Huffman bits], the tree in {tree}.c '
                              f'(huffman.c shows both ways).') + '\n'
                     f'#pragma huffman "{tree}.c"\n\n')
            text += render_packed(obj_name, ctype, chunk,
                                  _message_records(app_dir, labels, at,
                                                   ctype.size))
        else:
            text += render_object(obj_name, ctype, chunk, element, fields)
        fname = f'{at:0{digits}x}_{obj_name}.c'
        files[fname] = text
        root_lines.append(f'#include "{name}/{fname}"')
        at += ctype.size
    if at != len(data):
        raise ValueError(f'{name}: the parts cover {at} of {len(data)} bytes')
    if len(files) == 1:
        root_lines[-1:], files = [*files.values()], {}
    root = '\n'.join(root_lines) + '\n'

    # Compile from a scratch copy first: only a byte-exact result is written.
    import tempfile
    with tempfile.TemporaryDirectory() as scratch:
        _write_files(scratch, name, root, files)
        _write_headers(scratch, headers)
        image = compile_root(os.path.join(scratch, f'{name}.c'), src_root,
                             [out_root])
        problem = _difference(data, image)
        if problem:
            raise ValueError(f'{name}: the sources do not round-trip: {problem}')
    return _write_files(out_root, name, root, files)


def _write_headers(out_root, headers):
    """Write *headers* to ``structs/`` under *out_root*; returns the paths."""
    os.makedirs(os.path.join(out_root, 'structs'), exist_ok=True)
    paths = []
    for fname, text in sorted(headers.items()):
        paths.append(os.path.join(out_root, 'structs', fname))
        with open(paths[-1], 'w', encoding='latin-1') as f:
            f.write(text)
    return paths


def _write_files(out_root, name, root, parts):
    """Write *root* as ``<name>.c`` under *out_root* and any *parts* in the
    folder ``<name>/``; returns the paths."""
    os.makedirs(os.path.join(out_root, name) if parts else out_root,
                exist_ok=True)
    paths = [os.path.join(out_root, f'{name}.c')]
    paths += [os.path.join(out_root, name, fname) for fname in parts]
    for path, text in zip(paths, [root, *parts.values()]):
        with open(path, 'w', encoding='latin-1') as f:
            f.write(text)
    return paths


def _recovered_layouts(project):
    """The record layouts the last build recovered (``records.json``)."""
    from lib.cachedirs import labels_dir
    from lib.record_layout import RECORDS_NAME, read_layouts
    path = os.path.join(labels_dir(project), RECORDS_NAME)
    return read_layouts(path) if os.path.exists(path) else {}


def data_dir(project):
    """``.cache/<project>/data``."""
    from lib.cachedirs import project_cache
    return os.path.join(project_cache(project), 'data')


def init_project(project, names=()):
    """Write the decoded sources of the sidecar's data files (all, or
    *names*) under :func:`data_dir`, replacing what is there."""
    import shutil
    from lib.cachedirs import src_dir
    from lib.sidecar.loader import load as load_sidecar
    from main.options import APPS_DIR
    sidecar = load_sidecar(project) or {}
    table = sidecar.get('data_files') or {}
    unknown = [n for n in names if n not in table]
    if unknown:
        raise ValueError(f'not in the sidecar data_files: {", ".join(unknown)}'
                         f' (known: {", ".join(sorted(table))})')
    app_dir = os.path.join(APPS_DIR, project)
    out_root = data_dir(project)
    if not names:
        shutil.rmtree(out_root, ignore_errors=True)
    labels = _message_labels(app_dir, sidecar)
    derived = Project(src_dir(project), sidecar, include_dirs(src_dir(project)),
                      _recovered_layouts(project))
    # The message blocks compile against the tree's source: write it first.
    names = list(names or sorted(table))
    packed = any(part.get('records') == 'messages'
                 for name in names for part in table[name]['parts'])
    if packed:
        tree = labels.spec['tree']
        names = [tree] + [n for n in names if n != tree]
    written, headers = [], {}
    for name in names:
        written.extend(write_sources(name, table[name], app_dir, out_root,
                                     src_dir(project), labels, derived,
                                     headers))
    if headers:
        written.extend(_write_headers(out_root, headers))
    if packed:
        shutil.copy(os.path.join(os.path.dirname(__file__), 'huffman.c'),
                    out_root)
        written.append(os.path.join(out_root, 'huffman.c'))
    return written
