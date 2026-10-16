"""Share byte-identical routines between binaries under ``asm_<project>/shared/``.

The same vendor runtime routine (``aztec_strlen``) or overlay API stub is
emitted once per binary that contains it.  Where the instructions are identical
(comments and the routine's own address annotations aside) the copies collapse
into one file in ``shared/`` that every binary's master ``%include``s.

Only generated files are touched (see :mod:`lib.autogen`).  A routine with C
shares its ``.c`` too, when every copy is generated and identical:
``shared/<label>.c`` is then the one source the C gate checks against each
binary's bytes (``main.aztec`` and ``make.elf`` look there).  Routines that
differ only in the addresses their symbols embed are not shared (their file
names differ too).
"""

import os
import re
from collections import defaultdict

from .autogen import is_generated
from .asm_only import MARKER as ASM_ONLY_MARKER

FOLDER = 'shared'
_SKIP_DIRS = {FOLDER, 'inc', 'build_out'}
_ADDR_COMMENT = re.compile(r'[ \t]+; 0x[0-9a-fA-F]+[ \t]*$')
_LOCAL_LABEL = re.compile(r'@\.\.[A-Za-z0-9_.]+?\.l(\d+)')


def _code_key(text):
    """The routine's instructions with comments and local-label names removed."""
    lines = []
    for line in text.split('\n'):
        code = line.split(';', 1)[0].rstrip()
        if code.strip():
            lines.append(code.strip())
    return _LOCAL_LABEL.sub(r'@L\1', '\n'.join(lines))


def neutral(text):
    """*text* without the per-binary ``; 0xADDR`` annotations."""
    return '\n'.join(_ADDR_COMMENT.sub('', line) for line in text.split('\n'))


def _text_for(fragments, members):
    """The shared text: addresses kept only when every copy agrees on them.

    A routine with C is rewritten from it by each binary's resplice, so its
    annotations are always dropped to keep that rewrite the same for all.
    """
    texts = {fragments[rel][0] for rel in members}
    first = fragments[members[0]][0]
    if len(texts) == 1 and fragments[members[0]][1] is None:
        return first
    return neutral(first)


def _read(path):
    with open(path, encoding='utf-8', errors='surrogateescape') as f:
        return f.read()


def _fragments(out_dir):
    """``{relative path: (asm text, C text or None)}`` of generated fragments.

    The C text is the ``.c`` beside the fragment, else ``shared/<label>.c`` (a
    shared or hand-owned copy).  A fragment whose own ``.c`` was taken over by
    hand (no auto-generated marker) is left out: it is not ours to move.
    """
    found = {}
    for binary in sorted(os.listdir(out_dir)):
        top = os.path.join(out_dir, binary)
        if binary in _SKIP_DIRS or not os.path.isdir(top):
            continue
        for folder, _, files in os.walk(top):
            for filename in sorted(files):
                path = os.path.join(folder, filename)
                if not filename.endswith('.asm') or not is_generated(path):
                    continue
                own_c, shared_c = path[:-4] + '.c', os.path.join(
                    out_dir, FOLDER, filename[:-4] + '.c')
                ctext = None
                if os.path.exists(own_c):
                    if not is_generated(own_c):
                        continue
                    ctext = _read(own_c)
                elif os.path.exists(shared_c):
                    ctext = _read(shared_c)
                found[os.path.relpath(path, out_dir)] = (_read(path), ctext)
    return found


def share_identical(out_dir):
    """Collapse identical fragments of different binaries into ``shared/``.

    A routine with generated C moves its ``.c`` along (``shared/<label>.c``).
    Returns ``{shared relative path: [replaced relative paths]}``.
    """
    fragments = _fragments(out_dir)
    groups = defaultdict(list)
    for rel, (text, ctext) in fragments.items():
        stem = os.path.basename(rel)[:-4]
        marked = text.split('\n', 2)[1:2] == [ASM_ONLY_MARKER]
        groups[(stem, marked, _code_key(text), ctext)].append(rel)
    groups = {k: v for k, v in groups.items()
              if len({p.split(os.sep)[0] for p in v}) > 1}

    # Names carry a content tag (lib.names), so one stem is one body.  Where a
    # stem still has several (a label whose callee differs only by an
    # address-named ``loc_``), the largest group is shared and the rest stay.
    best = {}
    for key in sorted(groups):
        stem = key[0]
        if stem not in best or len(groups[key]) > len(groups[best[stem]]):
            best[stem] = key

    shared = {}
    for stem, key in best.items():
        members = sorted(groups[key])
        shared_rel = f'{FOLDER}/{stem}.asm'
        shared_path = os.path.join(out_dir, shared_rel)
        os.makedirs(os.path.dirname(shared_path), exist_ok=True)
        with open(shared_path, 'w', encoding='utf-8',
                  errors='surrogateescape') as f:
            f.write(_text_for(fragments, members))
        if key[3] is not None:
            c_path = shared_path[:-4] + '.c'
            if not os.path.exists(c_path):
                with open(c_path, 'w', encoding='utf-8',
                          errors='surrogateescape') as f:
                    f.write(key[3])
        shared[shared_rel] = members

    _rewrite_includes(out_dir, shared)
    for members in shared.values():
        for rel in members:
            for old in (rel, rel[:-4] + '.c'):
                path = os.path.join(out_dir, old)
                if os.path.exists(path):
                    os.unlink(path)
            folder = os.path.dirname(os.path.join(out_dir, rel))
            while folder != out_dir and not os.listdir(folder):
                os.rmdir(folder)
                folder = os.path.dirname(folder)
    return shared


def _rewrite_includes(out_dir, shared):
    """Point each master's (and fragment's) ``%include`` at the shared copy."""
    moved = {rel: dst for dst, members in shared.items() for rel in members}
    pattern = re.compile(r'(%include\s+")([^"]+)(")')

    def swap(m):
        return m.group(1) + moved.get(m.group(2), m.group(2)) + m.group(3)

    for folder, dirs, files in os.walk(out_dir):
        dirs[:] = [d for d in dirs if d not in ('build_out', 'inc')]
        for filename in files:
            path = os.path.join(folder, filename)
            if not filename.endswith('.asm') or not is_generated(path):
                continue
            with open(path, encoding='utf-8', errors='surrogateescape') as f:
                text = f.read()
            new = pattern.sub(swap, text)
            if new != text:
                with open(path, 'w', encoding='utf-8',
                          errors='surrogateescape') as f:
                    f.write(new)
