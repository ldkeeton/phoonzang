"""A project's Manx-style build description: ``makefile``, ``BIN.lnk`` and ``build.sh``.

The build generates them from the layout of its listings and the sidecar's
``compiler_flags`` (:func:`project_files`); ``make link`` and ``build.sh`` then
read only them.  The makefile says everything a build needs: how each object is
made, with which flags, from which source, and how each binary is linked::

    CFLAGS = -n +b +m +c
    AFLAGS = -dMODEL=0 -l
    export INCLUDE = include

    .SUFFIXES:
    .SUFFIXES: .o .s .c

    .s.o:
    	as $(AFLAGS) -o $@ $<

    .c.o:
    	cc -B $(CFLAGS) -o $@ $<

    all: ds.exe vinit.ovr

    ds.exe: ds.lnk
    	ln -R -o ds.exe -f ds.lnk

    ds.rsm: ds.exe

    vinit.ovr: vinit.lnk ds.rsm
    	ln -o vinit.ovr -f vinit.lnk ds.rsm

    vinstall.exe: CFLAGS = -n
    shared/aztec/aztec_Croot.o: CFLAGS = -n

A ``.lnk`` holds one extensionless module per line, in link order; each is
``MODULE.o``, made from the first of ``.SUFFIXES`` that exists (``MODULE.s``,
else ``MODULE.c``).  ``TARGET: NAME = value`` sets a macro for one target, as
in GNU make: on a binary it covers every object linked into it, and an
object's own line beats its binary's.  Each binary compiles its objects on its
own, so a shared source may carry different flags in different binaries.
``#`` starts a comment.  Names stay long; the layer that runs the tools
(``make link``, ``build.sh``) maps them to 8.3.
"""

import os
import re
import textwrap
from collections import namedtuple

from lib.autogen import stamp

MAKEFILE = 'makefile'
BUILD_SH = 'build.sh'
#: ``ln`` picks its output format from the extension: ``.com`` has no header and
#: loads at 0x100, which is what the shipped drivers are.  A driver shipped
#: under another name (``VGA.DRV``) links as ``VGA.COM`` and its rule renames it.
_OUTPUT_EXT = {'aztec_overlay': 'ovr', 'raw_drv': 'com'}
_LN_EXT = {'raw_drv': '.COM'}
_INCLUDE = re.compile(r'^\s*%include\s+"([^"]+)\.asm"', re.M)
#: The source suffixes in the order they are looked for, when a makefile does
#: not set ``.SUFFIXES``, and the tool kind of each.
SOURCE_EXTS = (('.s', 'asm'), ('.c', 'c'))
_KINDS = dict(SOURCE_EXTS)
#: The include tree, relative to the project, cc and as search.
INCLUDE_DIR = 'include'

#: One binary: its name (its ``.lnk``'s), what ``ln`` writes, the flags, its
#: ``.lnk``, the binary whose ``.rsm`` it links against (``None`` for none), and
#: the file a ``ren`` line then renames the output to (``None`` for none).
Target = namedtuple('Target', 'binary output flags lnk root file', defaults=(None,))
Module = namedtuple('Module', 'stem path kind')
#: A parsed makefile: its targets; ``{name: value}`` macros; the source
#: suffixes in search order; ``{'.s': recipe}`` of each suffix rule; and
#: ``{target: {name: value}}`` of the target-specific macros.
Project = namedtuple('Project', 'targets macros sources recipes scoped')
#: What :func:`project_files` writes the compile rules from: the project's C and
#: assembler flags, and ``binary(name)`` / ``module(stem, name)`` giving the C
#: flags of a binary and of one of its modules (lists).
Flags = namedtuple('Flags', 'c asm binary module')

_RULE = re.compile(r'^([^\s:]+)\s*:\s*(.*)$')
_SCOPED = re.compile(r'^([^\s:=]+)\s*:\s*([A-Za-z_]\w*)\s*=\s*(.*)$')
_MACRO = re.compile(r'^(?:export\s+)?([A-Za-z_]\w*)\s*=\s*(.*)$')
_SUFFIX_RULE = re.compile(r'^(\.\w+)\.o$')


def _join(flags):
    return ' '.join(flags)


def _compile_section(flags):
    """The makefile's head: macros, suffixes and the two suffix rules."""
    return [
        '# Every module a .lnk lists is MODULE.o, made from MODULE.s or else',
        '# MODULE.c.  cc and as search INCLUDE, which Aztec reads from the',
        '# environment.',
        f'CFLAGS = {_join(flags.c)}',
        f'AFLAGS = {_join(flags.asm)}',
        f'export INCLUDE = {INCLUDE_DIR}',
        '',
        '.SUFFIXES:',
        '.SUFFIXES: .o ' + ' '.join(ext for ext, _ in SOURCE_EXTS),
        '',
        '.s.o:',
        '\tas $(AFLAGS) -o $@ $<',
        '',
        '# -B: never stop after five errors to ask whether to go on.',
        '.c.o:',
        '\tcc -B $(CFLAGS) -o $@ $<',
        '',
    ]


def _flag_lines(order, outputs, listed, flags):
    """``TARGET: CFLAGS = ...`` lines that give every module of every binary
    the flags *flags* says: a binary's line where its default is not
    ``CFLAGS``, an object's line where the module differs from its binary.
    An object linked into two binaries gets one line, so its flags must agree
    wherever its binary's default does not already give them."""
    binary_lines, objects = [], {}
    defaults = {}
    for name in order:
        defaults[name] = list(flags.binary(name))
        if defaults[name] != list(flags.c):
            binary_lines.append(f'{outputs[name]}: CFLAGS = {_join(defaults[name])}')
    for name in order:
        for module in listed[name]:
            own = list(flags.module(os.path.basename(module), name))
            if own != defaults[name]:
                objects.setdefault(f'{module}.o', own)
    for name in order:
        for module in listed[name]:
            own = list(flags.module(os.path.basename(module), name))
            got = objects.get(f'{module}.o', defaults[name])
            if got != own:
                raise ValueError(
                    f'{module}: compiled with {_join(own) or "no flags"} in '
                    f'{name} but {_join(got) or "no flags"} elsewhere; one '
                    'makefile line cannot give it both')
    lines = [f'{obj}: CFLAGS = {_join(value)}' for obj, value in objects.items()]
    if not (binary_lines or lines):
        return []
    return ['# Compiled with other flags than CFLAGS: a binary\'s line covers each',
            '# of its objects; an object\'s own line beats it.',
            *binary_lines, *lines, '']


def project_files(binaries, host, files, arrange=None, flags=None, compiler=None):
    """``{relative path: text}`` of the project file for this build's *files*.

    *binaries* is the sidecar's ``{name: entry}`` and *host* the binary overlays
    call into.  Each ``.lnk`` keeps the order of its binary's listing, except as
    *arrange* ``(name, modules)`` changes it (:mod:`lib.aztec.linkorder`), since
    a listing has no module for what a C source emits itself.  A binary's
    ``link.flags`` go on its ``ln`` line, and its ``desc`` in a ``#`` comment
    above its rule.  The host links first, since overlays
    need its ``.rsm``.  *flags* (:data:`Flags`) adds the compile rules and
    ``build.sh``, which downloads and runs *compiler*
    (:data:`lib.aztec.build_sh.Compiler`); without it the makefile only links.
    """
    order = sorted(binaries, key=lambda name: name != host)
    has_overlays = any(binaries[name].get('type') == 'aztec_overlay'
                       for name in binaries)
    # Each rule makes the game's own file (the sidecar's ``file``, case and all);
    # ``ln`` writes it directly unless the extension would pick the wrong format.
    outputs = {name: binaries[name].get('file') or
               f'{name}.{_OUTPUT_EXT.get(binaries[name].get("type"), "exe")}'
               for name in order}
    linked = {}
    for name in order:
        stem, ext = os.path.splitext(outputs[name])
        want = _LN_EXT.get(binaries[name].get('type'))
        linked[name] = stem + want if want and ext.upper() != want else outputs[name]
    make = _compile_section(flags) if flags is not None else []
    make += ['all: ' + ' '.join(outputs[name] for name in order), '']
    out = {}
    listed_by = {}
    for name in order:
        output, lnk = outputs[name], f'{name}.lnk'
        ln_out = linked[name]
        ren = [f'\tren {ln_out} {output}'] if ln_out != output else []
        listed = dict.fromkeys(_INCLUDE.findall(files[f'{name}.asm']))
        if arrange is not None:
            listed = arrange(name, list(listed))
        listed_by[name] = list(listed)
        out[lnk] = ''.join(f'{module}\n' for module in listed)
        flags_ = ''.join(f'{flag} ' for flag in
                         (binaries[name].get('link') or {}).get('flags', ()))
        desc = binaries[name].get('desc')
        if desc:
            make += ['# ' + line for line in textwrap.wrap(desc, 78)]
        if binaries[name].get('type') == 'aztec_overlay' and host:
            make += [f'{output}: {lnk} {host}.rsm',
                     f'\tln {flags_}-o {ln_out} -f {lnk} {host}.rsm', *ren, '']
        elif name == host and has_overlays:
            make += [f'{output}: {lnk}', f'\tln -R {flags_}-o {ln_out} -f {lnk}', *ren,
                     '', '# ln -R also writes the symbols the overlays link against.',
                     f'{name}.rsm: {output}', '']
        else:
            make += [f'{output}: {lnk}', f'\tln {flags_}-o {ln_out} -f {lnk}', *ren, '']
    if flags is not None:
        make += _flag_lines(order, outputs, listed_by, flags)
        if compiler is not None:
            from .build_sh import script
            out[BUILD_SH] = script(compiler)
    out[MAKEFILE] = '\n'.join(make).rstrip() + '\n'
    return {path: stamp(text, path) for path, text in out.items()}


def _lines(text):
    for raw in text.splitlines():
        line = raw.split('#', 1)[0].rstrip()
        if line:
            yield line


def _parse_ln(output, recipe):
    """``Target`` from *output*'s recipe: an ``ln`` line, and a ``ren`` line
    when ``ln`` writes another name."""
    if len(recipe) == 2:
        ren = recipe[1].split()
        words = recipe[0].split()
        written = words[words.index('-o') + 1] if '-o' in words[:-1] else None
        if ren != ['ren', written, output]:
            raise ValueError(f'{output}: expected ren {written} {output}, got: {recipe[1]}')
        return _parse_ln(written, recipe[:1])._replace(file=output)
    if len(recipe) != 1:
        raise ValueError(f'{output}: needs an ln line (and a ren line), not {recipe}')
    recipe = recipe[0]
    words = recipe.split()
    if words[:1] != ['ln']:
        raise ValueError(f'{output}: expected an ln line, got: {recipe}')
    flags, lnk, root, written = [], None, None, None
    rest = iter(words[1:])
    for word in rest:
        if word == '-o':
            written = next(rest, None)
        elif word == '-f':
            lnk = next(rest, None)
        elif word.endswith('.rsm'):
            root = word[:-len('.rsm')]
        else:
            flags.append(word)
    if written != output or lnk is None:
        raise ValueError(f'{output}: ln needs -o {output} and -f FILE: {recipe}')
    return Target(os.path.splitext(os.path.basename(lnk))[0], output, flags, lnk, root)


def parse_project(text):
    """The :data:`Project` of a makefile: targets in file order, roots checked."""
    macros, scoped, suffixes, rules = {}, {}, None, []
    for line in _lines(text):
        if line[0].isspace():
            if not rules:
                raise ValueError(f'makefile: recipe without a target: {line.strip()}')
            rules[-1][2].append(line.strip())
            continue
        m = _SCOPED.match(line)
        if m:
            scoped.setdefault(m.group(1), {})[m.group(2)] = m.group(3).strip()
            continue
        m = _MACRO.match(line)
        if m:
            macros[m.group(1)] = m.group(2).strip()
            continue
        rule = _RULE.match(line)
        if not rule:
            raise ValueError(f'makefile: cannot read: {line}')
        if rule.group(1) == '.SUFFIXES':
            words = rule.group(2).split()
            suffixes = (suffixes or []) + words if words else []
            continue
        rules.append((rule.group(1), rule.group(2).split(), []))
    targets, recipes = [], {}
    for name, deps, recipe in rules:
        suffix = _SUFFIX_RULE.match(name)
        if suffix:
            if len(recipe) != 1:
                raise ValueError(f'makefile: {name} needs one recipe line')
            recipes[suffix.group(1)] = recipe[0]
        elif recipe:
            targets.append(_parse_ln(name, recipe))
        elif name != 'all' and not name.endswith('.rsm'):
            raise ValueError(f'makefile: {name} has no ln line')
    names = {t.binary for t in targets}
    for target in targets:
        if target.root is not None and target.root not in names:
            raise ValueError(f'makefile: {target.output} links against '
                             f'{target.root}.rsm, which nothing builds')
    if suffixes is None:
        sources = SOURCE_EXTS
    else:
        unknown = [ext for ext in suffixes if ext != '.o' and ext not in _KINDS]
        if unknown:
            raise ValueError(f'makefile: no tool builds {", ".join(unknown)}')
        sources = tuple((ext, _KINDS[ext]) for ext in suffixes if ext in recipes)
    return Project(targets, macros, sources, recipes, scoped)


def parse_makefile(text):
    """The targets of a project makefile, in file order, roots checked."""
    return parse_project(text).targets


def parse_lnk(text):
    """The modules of a ``.lnk``, in link order."""
    return [line.strip() for line in _lines(text)]


def load_project(tree):
    """The :data:`Project` of the makefile in *tree*."""
    path = os.path.join(tree, MAKEFILE)
    if not os.path.isfile(path):
        raise ValueError(f'{tree} has no {MAKEFILE}; run make build')
    with open(path) as f:
        return parse_project(f.read())


def load_targets(tree):
    """The targets of the project in *tree*."""
    return load_project(tree).targets


def modules(tree, target, sources=SOURCE_EXTS):
    """``(listed modules with a source, listed modules without one)``; a
    module's source is the first of *sources* ``(suffix, kind)`` on disk."""
    with open(os.path.join(tree, target.lnk)) as f:
        listed = parse_lnk(f.read())
    found, missing = [], []
    for name in listed:
        for ext, kind in sources:
            if os.path.exists(os.path.join(tree, name + ext)):
                found.append(Module(os.path.basename(name), name + ext, kind))
                break
        else:
            missing.append(name)
    return found, missing


def unlisted(tree, targets):
    """Sources on disk that no ``.lnk`` of *targets* names, sorted."""
    listed = set()
    for target in targets:
        with open(os.path.join(tree, target.lnk)) as f:
            listed.update(parse_lnk(f.read()))
    folders = {name.split('/', 1)[0] for name in listed if '/' in name}
    out = []
    for folder in sorted(folders):
        for root, _, files in os.walk(os.path.join(tree, folder)):
            for fn in files:
                stem, ext = os.path.splitext(fn)
                rel = os.path.relpath(os.path.join(root, stem), tree)
                if ext in ('.s', '.c') and rel not in listed:
                    out.append(rel + ext)
    return sorted(out)
