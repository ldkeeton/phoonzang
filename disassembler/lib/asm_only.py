"""Heuristic: a routine that can never have a C equivalent.

The C gate needs the Aztec code generator to reproduce the routine's bytes.
It never emits port I/O, ``int``, interrupt-flag changes, segment-register
loads, string-instruction repeats, far returns/calls and a few other forms, so
a routine containing one is hand-written assembly.  ``les``/``lds`` are left
out: the large-model code generator emits them for far pointers.

The generator stamps such files with :data:`MARKER` on their second line, which
``make readme`` reads to leave them out of the C coverage count.
"""

import re

MARKER = '; asm only'
FOLDER = 'asm_only'

_BLOCKERS = re.compile(
    r'^\s+(?:int\b|into\b|in\s|out\s|cli\b|sti\b|hlt\b|retf\b|iret\w*\b'
    r'|pushf\w*\b|popf\w*\b|lahf\b|sahf\b|xlat\w*\b|aam\b|aad\b|daa\b|das\b'
    r'|aaa\b|aas\b|rep\w*\b|(?:movs|stos|lods|scas|cmps)[bw]\b'
    r'|mov\s+(?:word\s+)?(?:ss|ds|es)\s*,|(?:call|jmp)\s+(?:far|dword)\b)',
    re.M)


def blockers(asm_text):
    """The distinct blocking mnemonics in *asm_text* (empty: unknown, maybe C)."""
    code = re.sub(r';[^\n]*', '', asm_text)
    return sorted({m.group(0).split()[0] for m in _BLOCKERS.finditer(code)})


def stamp(text, force=False):
    """Put :data:`MARKER` on the second line of an asm-only routine's *text*.

    *force* marks the routine regardless of its instructions: used when the
    vendor's own source for it is assembly (the mux manifest says so), which is
    stronger evidence than any mnemonic scan.
    """
    lines = text.split('\n')
    if len(lines) > 1 and lines[1].rstrip() == MARKER:
        return text
    if not force and not blockers(text):
        return text
    return '\n'.join(lines[:1] + [MARKER] + lines[1:])


def is_marked(path):
    """True when the file at *path* carries :data:`MARKER` on its second line."""
    try:
        with open(path, 'r', errors='replace') as f:
            f.readline()
            return f.readline().rstrip() == MARKER
    except OSError:
        return False
