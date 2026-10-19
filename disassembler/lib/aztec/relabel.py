"""Rewrite a recovered C seed to name asm labels instead of Manx identifiers.

A seed recovered from the Manx runtime sources calls ``open(...)``; the asm
calls the same routine ``aztec_open``.  The C linker (:mod:`lib.aztec.relink`)
takes the C identifier *as* the asm label, so the seed's routine names are
rewritten once, here, to the library's ``aztec_`` spelling -- the only change
made to vendor C.  Data keeps the vendor's names (``errno``, ``Argv``,
``ctp_``): the build names those objects as the C does
(:mod:`lib.aztec.libnames`).  The original image is the check: at each
relocation its bytes hold the real target, and the build's label maps must
name it with the C's name or its ``aztec_`` spelling.

Only a *pristine* seed is rewritten.  Hand-edited C already says what it means.
"""

import re

from .objread import external_label
from .relink import RelinkError, linked_name

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
    """Map each C routine external of *func* to the asm label the original used.

    ``index`` is a :class:`lib.aztec.relink.SymbolIndex`; ``names_at`` maps a
    data-segment offset to the names defined there.  Only routine names are
    renamed, and only to the library's ``aztec_`` spelling of the same name
    (:func:`lib.aztec.compile.routine_label`): that is the one change made to
    vendor C.  A data object keeps the vendor's name, which the build gives the
    object (:mod:`lib.aztec.libnames`); the original image checks both.  A code
    address taken as a value (``cls_ = closall``) is a routine: code labels sit
    at file offsets, so it is looked up at ``target + image_base``.
    """
    from .compile import aztec_name, routine_label
    code_at = {}
    for name, addr in index.code.items():
        code_at.setdefault(addr, []).append(name)
    mapping = {}
    for fx in func.fixups:
        if fx.symbol_kind != 'GBLSYM':
            continue
        c_name = linked_name(external_label(fx.symbol))
        spelled = routine_label(aztec_name(fx.symbol))
        site = start + fx.offset
        raw = int.from_bytes(original[site:site + 2], 'little')
        if fx.kind == 'WREL':
            target = (site + 2 + raw) & 0xFFFF
            what = f'calls 0x{target:04x}'
        elif fx.kind == 'WABS':
            target = (raw - fx.addend) & 0xFFFF
            names = names_at.get(target, [])
            code = code_at.get(target + image_base, [])
            if not {c_name, spelled} & set(code):
                if c_name in names:
                    continue
                raise RelinkError(
                    f'{label}: the C names DS:0x{target:04x} {c_name!r}, the '
                    f'build calls it {sorted(names) or "nothing"}')
            target += image_base
            what = f'takes the address of 0x{target:04x}'
        else:
            continue
        here = code_at.get(target, [])
        if c_name in here:
            continue
        if spelled not in here:
            raise RelinkError(
                f'{label}: the C {what} as {c_name!r}, the build calls it '
                f'{sorted(here) or "nothing"}')
        if mapping.setdefault(c_name, spelled) != spelled:
            raise RelinkError(
                f'{label}: C identifier {c_name!r} maps to both '
                f'{mapping[c_name]!r} and {spelled!r}')
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
    new_text = rewrite_identifiers(text, mapping)
    new_func = compile_(new_text)
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
