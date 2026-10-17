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


_ASM_BLOCK = re.compile(r'^[ \t]*#asm\b.*?^[ \t]*#endasm\b', re.S | re.M)
_ASM_IDENT = re.compile(r'[A-Za-z_][A-Za-z0-9_]*')


def rewrite_identifiers(text, mapping):
    """Return *text* with every identifier in *mapping* renamed.

    Comments and literals are left alone; ``#include "x.h"`` is a literal.
    Inside ``#asm`` blocks a C name appears with the compiler's trailing ``_``
    (``ovname_``), so that spelling is renamed to ``<new>_``.
    """
    def sub(match):
        token = match.group(0)
        return mapping.get(token, token) if token[0].isalpha() or \
            token[0] == '_' else token

    def asm_sub(match):
        token = match.group(0)
        if token.endswith('_') and token[:-1] in mapping:
            return mapping[token[:-1]] + '_'
        return token

    out = []
    pos = 0
    for block in _ASM_BLOCK.finditer(text):
        out.append(_TOKEN.sub(sub, text[pos:block.start()]))
        out.append(_ASM_IDENT.sub(asm_sub, block.group(0)))
        pos = block.end()
    out.append(_TOKEN.sub(sub, text[pos:]))
    return ''.join(out)


def learn_names(label, start, func, original, index, names_at, image_base=0):
    """Map each C external of *func* to the asm label the original used.

    ``index`` is a :class:`lib.aztec.relink.SymbolIndex`; ``names_at`` maps a
    data-segment offset to the names defined there.  An absolute address with
    no data name may be a code pointer (``cls_ = closall``): code labels sit at
    file offsets, so it is looked up at ``target + image_base``.  An external
    whose target has no name, or more than one, is an error rather than a
    guess.
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
            if not candidates:
                candidates = code_at.get(target + image_base, [])
                what = (f'data or code address 0x{target:04x} '
                        f'(file 0x{target + image_base:04x})')
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


def _own_names(text, label, own_key):
    """Identifiers in *text* that spell the routine's own name.

    The C name itself, or its assembler spelling inside ``#asm``
    (``ovloader_``).
    """
    from .compile import aztec_name, symbol_key
    return {m.group(0): label for m in _TOKEN.finditer(text)
            if m.group(0)[0] != '/' and m.group(0)[0] not in '"\''
            and own_key in (symbol_key(m.group(0)),
                            symbol_key(aztec_name(m.group(0))))}


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


def upgrade(label, own_key, start, text, original, index, names_at, compile_,
            image_base=0):
    """Return ``(new_text, new_func)`` with asm names in place of Manx ones.

    *own_key* is the normalized name the routine defines (``creat``); every
    spelling of it becomes *label*.  *compile_* compiles C text to a
    :class:`lib.aztec.compile.Func`.  The renamed seed must compile to the
    identical code and relocations.
    """
    func = compile_(text)
    mapping = learn_names(label, start, func, original, index, names_at,
                          image_base)
    mapping.update(_own_names(text, label, own_key))
    macros = {}
    for _attempt in range(4):
        direct = {k: v for k, v in mapping.items() if k not in macros}
        new_text = _with_defines(rewrite_identifiers(text, direct),
                                 {k: mapping[k] for k in macros})
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
