"""Give copies of one routine in different binaries one set of names.

A binary's generated names come from its addresses (``bss_92f2``) or from a tag
(``api_idx_0004_RTNM``), so the same routine can be spelled differently in two
overlays.  A name is only text: each binary assembles and links on its own, and
gives a name its own address.  So when two copies line up instruction for
instruction, and their names can truthfully be one, they get one name, in every
file of each binary, and the copies then share by plain text (:mod:`lib.shared`).

Whether names can be one:

* data: the pairing must hold across the whole routine (``bss_931e`` always with
  ``bss_92f2``) and the name must be the binary's own; it takes the human name if
  there is one, else ``<routine>_<kind><n>``;
* a call target: only once the targets are themselves one routine, so a copy that
  calls different code never merges.  Leaves merge first, then their callers;
* a routine's own name: a tag gives way to the other copy's name, and two human
  names stay apart;
* anything else must match exactly.

A name a hand-owned source mentions stays as it is, and so does the host, whose
names the overlays read.
"""

import os
import re
from collections import defaultdict
from functools import lru_cache

from .autogen import hand_owned
from .cachedirs import SRC_SKIP_DIRS

_WORD = re.compile(r'\w+|\S')
_DATA = re.compile(r'(bss|dseg|str|cp)_[0-9a-f]{4,5}$')
_CSEG = re.compile(r'(cseg)_[0-9a-f]{4,5}$')
_LABEL = re.compile(r'(?:loc_[0-9a-f]{4,5}|jumptable_[0-9a-f]{4,5}(?:_case_\d+)?)$')
_TAG = re.compile(r'\w+_[G-V]{4}(?:_[0-9a-f]+)?$')
_LOCAL = re.compile(r'(?<![\w.])(?:(?:@\.\.)?[A-Za-z_][\w.]*?)?\.((?:l|back|return|forward)\d+)(?![\w.])')
_DEFINED = re.compile(r'^[ \t]*([A-Za-z_]\w*)(?::|[ \t]+equ\b)', re.M)
_HOST = re.compile(r'^[ \t]*%include\s+"([^"/]+)\.asm"', re.M)
_SOURCE = ('.s', '.c', '.h', '.inc')
_MAX_ROUNDS = 12
_MIN_INSTRUCTIONS = 2


def _top(rel):
    top, sep, _ = rel.partition('/')
    return top if sep else top.removesuffix('.asm')


@lru_cache(maxsize=None)
def _maskable(token):
    return bool(_DATA.match(token) or _CSEG.match(token) or _LABEL.match(token)
                or _TAG.match(token))


# Each round re-reads every file, and most are unchanged since the last one.
@lru_cache(maxsize=8192)
def _code_tokens(text):
    lines = []
    for line in text.split('\n'):
        code = line.split(';', 1)[0].strip()
        if code:
            lines.append(code)
    return tuple(_WORD.findall(_LOCAL.sub('@L', '\n'.join(lines))))


@lru_cache(maxsize=8192)
def _instruction_count(text):
    count = 0
    for line in text.split('\n'):
        code = line.split(';', 1)[0].strip()
        code = re.sub(r'^[.@\w]+:\s*', '', code)
        if code and not code.startswith(('%', 'db ', 'dw ', 'dd ', 'times ')):
            count += 1
    return count


def _hand_names(out_dir):
    """Every word in a hand-owned source under *out_dir*."""
    words = set()
    for folder, dirs, names in os.walk(out_dir):
        dirs[:] = [d for d in dirs if d not in SRC_SKIP_DIRS]
        for name in names:
            path = os.path.join(folder, name)
            if name.endswith(_SOURCE) and hand_owned(path):
                with open(path, encoding='utf-8', errors='replace') as f:
                    words.update(re.findall(r'\w+', f.read()))
    return words


def _groups(files, host, defined):
    """``[[(binary, rel, stem, tokens)]]``: copies that line up."""
    out = defaultdict(list)
    for rel, text in sorted(files.items()):
        top, sep, _ = rel.partition('/')
        if (not sep or top == host or top in ('shared', 'include', 'inc')
                or not rel.endswith('.asm')
                or os.path.basename(os.path.dirname(rel)) == 'data'):
            continue
        if _instruction_count(text) < _MIN_INSTRUCTIONS:
            continue
        stem = os.path.basename(rel)[:-4]
        tokens = _code_tokens(text)
        names = defined[top]
        shape = tuple('\0name' if token in names or _maskable(token) else token
                      for token in tokens)
        out[shape].append((top, rel, stem, tokens))
    return [sorted(members) for members in out.values()
            if len({member[0] for member in members}) > 1]


def _pairs(first, other):
    """``{name in first: name in other}`` where they differ, or None when one
    name would have to mean two things."""
    forward, backward = {}, {}
    for a, b in zip(first[3], other[3]):
        if a == b:
            continue
        if forward.setdefault(a, b) != b or backward.setdefault(b, a) != a:
            return None
    return forward


def _plan_group(group, defined, frozen):
    """``{binary: {old: new}}`` that makes *group*'s copies text-equal, or ``{}``.

    Members that cannot join are left out; two members are needed.
    """
    first = group[0]
    labels_a = _inside(first[3])
    joined = []
    for other in group[1:]:
        pairs = _pairs(first, other)
        if pairs is None:
            continue
        labels_b = _inside(other[3])
        renames = {}
        ok = True
        for a, b in pairs.items():
            if a == first[2] and b == other[2]:
                if not (_TAG.match(b) or _TAG.match(a)):
                    ok = False      # two people's names
                    break
                renames[b] = (a, 'own')
                continue
            if a in labels_a and b in labels_b:
                continue        # private to the routine: compared by position
            kind_a, kind_b = _data_kind(a), _data_kind(b)
            if kind_a is None and kind_b is None:
                ok = False      # a call target (or a constant) that differs
                break
            renames[b] = (a, kind_a or kind_b)
        if ok:
            joined.append((other, renames))
    if not joined:
        return {}

    # One new name for each name of the first copy.
    plan = defaultdict(dict)
    common = {}
    for other, renames in joined:
        for old, (a, kind) in renames.items():
            if kind == 'own':
                # A tag gives way to a human name.
                if _TAG.match(common.get(a, a)) and not _TAG.match(old):
                    common[a] = old
                else:
                    common.setdefault(a, a)
            elif a not in common:
                if _data_kind(a) and not _data_kind(old):
                    common[a] = old         # the other copy's human name
                elif _data_kind(a):
                    # By place in the routine: naming another variable does
                    # not move this one's name.
                    common[a] = f'{first[2]}_{kind}{first[3].index(a)}'
                else:
                    common[a] = a           # the first copy's human name
    accepted = []
    for other, renames in joined:
        binary = other[0]
        good = True
        for old, (a, kind) in renames.items():
            new = common[a]
            if new == old:
                continue
            if (old in frozen or old not in defined[binary]
                    or new in defined[binary]
                    or not (_TAG.match(old) if kind == 'own'
                            else _data_kind(old))):
                good = False
                break
        if good:
            accepted.append((other, renames))
    if not accepted:
        return {}
    # The first copy's own data takes the common name too.
    for a, new in common.items():
        if a == new:
            continue
        if (a in frozen or a not in defined[first[0]]
                or new in defined[first[0]]):
            return {}
        plan[first[0]][a] = new
    for other, renames in accepted:
        for old, (a, _) in renames.items():
            if common[a] != old:
                plan[other[0]][old] = common[a]
    return plan


def _data_kind(name):
    match = _DATA.match(name) or _CSEG.match(name)
    return match.group(1) if match else None


def _inside(tokens):
    """The names a routine defines (``name :`` in its tokens)."""
    return {tokens[i] for i in range(len(tokens) - 1)
            if tokens[i + 1] == ':'
            and (_LABEL.match(tokens[i]) or _CSEG.match(tokens[i]))}


def _apply(files, renames):
    """*files* with ``{binary: {old: new}}`` applied, tag-named files moved."""
    out = {}
    for rel, text in files.items():
        names = renames.get(_top(rel))
        if not names:
            out[rel] = text
            continue
        pattern = re.compile(r'(?<!\w)(' + '|'.join(
            map(re.escape, sorted(names, key=len, reverse=True))) + r')(?!\w)')
        replace = lambda match: names[match.group(1)]  # noqa: E731
        out[pattern.sub(replace, rel)] = pattern.sub(replace, text)
    return out


def _host_of(files):
    match = _HOST.search(files.get('include/host_symbols.inc', ''))
    return match.group(1) if match else None


def _one_per_binary(members):
    seen, out = set(), []
    for member in members:
        if member[0] not in seen:
            seen.add(member[0])
            out.append(member)
    return out


def _round(files, host, frozen):
    """``{binary: {old: new}}`` for what can merge now."""
    defined = defaultdict(set)
    for rel, text in files.items():
        if rel.endswith('.asm'):
            defined[_top(rel)].update(_DEFINED.findall(text))
    renames = defaultdict(dict)
    for group in sorted(_groups(files, host, defined), key=lambda g: g[0][1]):
        # Each copy gets a turn as the reference: one that merges with nothing
        # must not stop the others merging.
        for start, first in enumerate(group):
            members = _one_per_binary(group[start:])
            if len(members) < 2:
                break
            plan = _plan_group(members, defined, frozen)
            if any(old in renames[b] or new in renames[b].values()
                   for b, names in plan.items() for old, new in names.items()):
                continue
            for binary, names in plan.items():
                renames[binary].update(names)
                defined[binary].update(names.values())
    return {b: names for b, names in renames.items() if names}


def unify_names(files, out_dir):
    """*files* with the names of copies made one (see the module docstring)."""
    frozen = _hand_names(out_dir)
    host = _host_of(files)
    for _ in range(_MAX_ROUNDS):
        renames = _round(files, host, frozen)
        if not renames:
            break
        files = _apply(files, renames)
    return files
