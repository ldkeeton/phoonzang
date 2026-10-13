"""Rewrite a recovered C seed to name asm labels instead of Manx identifiers.

A seed recovered from the Manx runtime sources calls ``open(...)`` and reads
``errno``; the asm calls the same things ``aztec_open`` and ``dseg_0c72``.  The
C linker (:mod:`lib.aztec.relink`) takes the C identifier *as* the asm label, so
the seed's identifiers are rewritten once, here, using the one place the two
namespaces are known to agree: the original image.  At each relocation the
original bytes hold the real target, and the build's label maps name it.

Only a *pristine* seed is rewritten.  Hand-edited C already says what it means.
"""

import re

from .compile import AztecCompileError
from .objread import external_label
from .relink import RelinkError

# Comments, string/char literals (copied through) and identifiers (renamed).
_TOKEN = re.compile(
    r'/\*.*?\*/|"(?:\\.|[^"\\\n])*"|\'(?:\\.|[^\'\\\n])*\'|'
    r'[A-Za-z_][A-Za-z0-9_]*', re.S)


def rewrite_identifiers(text, mapping):
    """Return *text* with every identifier in *mapping* renamed.

    Comments and literals are left alone; ``#include "x.h"`` is a literal.
    """
    def sub(match):
        token = match.group(0)
        return mapping.get(token, token) if token[0].isalpha() or \
            token[0] == '_' else token
    return _TOKEN.sub(sub, text)


def learn_names(label, start, func, original, index, names_at):
    """Map each C external of *func* to the asm label the original used.

    ``index`` is a :class:`lib.aztec.relink.SymbolIndex`; ``names_at`` maps a
    data-segment offset to the names defined there.  An external whose target
    has no name, or more than one, is an error rather than a guess.
    """
    code_at = {}
    for name, addr in index.code.items():
        code_at.setdefault(addr, []).append(name)
    mapping = {}
    for fx in func.fixups:
        if fx.symbol_kind != 'GBLSYM':
            continue
        c_name = external_label(fx.symbol)
        site = start + fx.offset
        raw = int.from_bytes(original[site:site + 2], 'little')
        if fx.kind == 'WREL':
            target = (site + 2 + raw) & 0xFFFF
            candidates = code_at.get(target, [])
            what = f'call target 0x{target:04x}'
        elif fx.kind == 'WABS':
            target = (raw - fx.addend) & 0xFFFF
            candidates = names_at.get(target, [])
            what = f'data address 0x{target:04x}'
        else:
            continue
        if len(candidates) != 1:
            raise RelinkError(
                f'{label}: cannot name C identifier {c_name!r} '
                f'({what}): {len(candidates)} asm labels there '
                f'{sorted(candidates)}')
        if mapping.setdefault(c_name, candidates[0]) != candidates[0]:
            raise RelinkError(
                f'{label}: C identifier {c_name!r} maps to both '
                f'{mapping[c_name]!r} and {candidates[0]!r}')
    return mapping


def data_names(data_labels, mem_equ):
    """``{offset: [names]}`` over the build's data-segment symbols."""
    at = {}
    for addr, name in (data_labels or {}).items():
        if isinstance(name, str):
            at.setdefault(addr, []).append(name)
    for name, value in (mem_equ or {}).items():
        at.setdefault(value, []).append(name)
    return {addr: sorted(set(names)) for addr, names in at.items()}


_OLD_NOTE = ' * relocation bytes are supplied by the original image.\n'
_NEW_NOTE = (' * relocations are linked against asm labels (lib/aztec/relink.py);\n'
             ' * the identifiers below are the asm label names.\n')


def _normalize(name):
    return name.strip('_$').lower()


def _own_names(text, label, own_key):
    """Identifiers in *text* that spell the routine's own name."""
    return {m.group(0): label for m in _TOKEN.finditer(text)
            if m.group(0)[0] != '/' and m.group(0)[0] not in '"\''
            and _normalize(m.group(0)) == own_key}


def _with_defines(text, defines):
    """Insert ``#define old new`` lines ahead of the first ``#include``.

    A header-declared name (``Cbuffs`` in ``stdio.h``) cannot be renamed in the
    C text: its declaration lives in the header.  Defining it first makes the
    header declare the asm label instead.
    """
    if not defines:
        return text
    block = ''.join(f'#define {old} {new}\n'
                    for old, new in sorted(defines.items()))
    block = ('/* asm label names for identifiers the headers declare */\n'
             + block)
    pos = text.find('#include')
    if pos < 0:
        end = text.find('*/')
        pos = end + 2 if end >= 0 else 0
        block = '\n' + block
    return text[:pos] + block + text[pos:]


def upgrade(label, own_key, start, text, original, index, names_at, compile_):
    """Return ``(new_text, new_func)`` with asm names in place of Manx ones.

    *own_key* is the normalized name the routine defines (``creat``); every
    spelling of it becomes *label*.  *compile_* compiles C text to a
    :class:`lib.aztec.compile.Func`.  The renamed seed must compile to the
    identical code and relocations.
    """
    func = compile_(text)
    mapping = learn_names(label, start, func, original, index, names_at)
    mapping.update(_own_names(text, label, own_key))
    macros = {}
    for _attempt in range(4):
        direct = {k: v for k, v in mapping.items() if k not in macros}
        new_text = _with_defines(rewrite_identifiers(text, direct),
                                 {k: mapping[k] for k in macros})
        new_text = new_text.replace(_OLD_NOTE, _NEW_NOTE)
        try:
            new_func = compile_(new_text)
            break
        except AztecCompileError as exc:
            undefined = set(re.findall(r'undefined symbol: (\w+)', str(exc)))
            fresh = {k for k, v in mapping.items()
                     if v in undefined and k not in macros}
            if not fresh:
                raise
            macros.update({k: mapping[k] for k in fresh})
    else:
        raise RelinkError(f'{label}: could not rename {sorted(mapping)}')
    if new_func.code != func.code or len(new_func.fixups) != len(func.fixups):
        raise RelinkError(
            f'{label}: renaming {sorted(mapping)} changed the compiled code')
    for old, new in zip(func.fixups, new_func.fixups):
        if (old.offset, old.kind, old.addend) != (new.offset, new.kind,
                                                  new.addend):
            raise RelinkError(
                f'{label}: renaming changed the relocation at '
                f'+0x{old.offset:x}')
    return new_text, new_func
