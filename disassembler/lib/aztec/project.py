"""A project's Manx-style build description: ``makefile``, ``BIN.lnk``, ``build.sh`` and ``run.sh``.

The build generates the makefile and ``.lnk`` files from the layout of its
listings and the sidecar's ``compiler_flags`` (:func:`project_files`); ``make
link`` then reads only them.  ``make buildsh`` writes ``build.sh`` and
``run.sh`` (:func:`project_scripts`), which read neither.  The makefile says everything a build needs: how each object is
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
RUN_SH = 'run.sh'
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


def _flag_overrides(order, listed, flags):
    """``({binary: flags}, {module: flags})``: the C flags *flags* gives every
    module of every binary, as a binary's default where it is not ``CFLAGS``
    and a module's own where it differs from its binary's.  A module linked
    into two binaries gets one entry, so its flags must agree wherever its
    binary's default does not already give them."""
    binaries, objects, defaults = {}, {}, {}
    for name in order:
        defaults[name] = list(flags.binary(name))
        if defaults[name] != list(flags.c):
            binaries[name] = defaults[name]
    for name in order:
        for module in listed[name]:
            own = list(flags.module(os.path.basename(module), name))
            if own != defaults[name]:
                objects.setdefault(module, own)
    for name in order:
        for module in listed[name]:
            own = list(flags.module(os.path.basename(module), name))
            got = objects.get(module, defaults[name])
            if got != own:
                raise ValueError(
                    f'{module}: compiled with {_join(own) or "no flags"} in '
                    f'{name} but {_join(got) or "no flags"} elsewhere; one '
                    'makefile line cannot give it both')
    return binaries, objects


def _flag_lines(order, outputs, listed, flags):
    """``TARGET: CFLAGS = ...`` lines of :func:`_flag_overrides`: a binary's
    line where its default is not ``CFLAGS``, an object's line where the
    module differs from its binary."""
    binaries, objects = _flag_overrides(order, listed, flags)
    binary_lines = [f'{outputs[name]}: CFLAGS = {_join(value)}'
                    for name, value in binaries.items()]
    lines = [f'{obj}.o: CFLAGS = {_join(value)}' for obj, value in objects.items()]
    if not (binary_lines or lines):
        return []
    return ['# Compiled with other flags than CFLAGS: a binary\'s line covers each',
            '# of its objects; an object\'s own line beats it.',
            *binary_lines, *lines, '']


def project_files(binaries, host, files, arrange=None, flags=None):
    """``{relative path: text}`` of the project file for this build's *files*.

    *binaries* is the sidecar's ``{name: entry}`` and *host* the binary overlays
    call into.  Each ``.lnk`` keeps the order of its binary's listing, except as
    *arrange* ``(name, modules)`` changes it (:mod:`lib.aztec.linkorder`), since
    a listing has no module for what a C source emits itself.  A binary's
    ``link.flags`` go on its ``ln`` line, and its ``desc`` in a ``#`` comment
    above its rule.  The host links first, since overlays
    need its ``.rsm``.  *flags* (:data:`Flags`) adds the compile rules; without
    it the makefile only links.  ``build.sh`` and ``run.sh`` are
    :func:`project_scripts`'.
    """
    order, has_overlays, outputs, linked, listed_by = _plan(
        binaries, host, files, arrange)
    make = _compile_section(flags) if flags is not None else []
    make += ['all: ' + ' '.join(outputs[name] for name in order), '']
    out = {}
    for name in order:
        output, lnk = outputs[name], f'{name}.lnk'
        ln_out = linked[name]
        ren = [f'\tren {ln_out} {output}'] if ln_out != output else []
        out[lnk] = ''.join(f'{module}\n' for module in listed_by[name])
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
    out[MAKEFILE] = '\n'.join(make).rstrip() + '\n'
    return {path: stamp(text, path) for path, text in out.items()}


def project_scripts(binaries, host, files, compiler, flags, arrange=None,
                    game=''):
    """``{BUILD_SH: text, RUN_SH: text}``: the scripts ``make buildsh`` writes,
    with no generated marker (the build neither writes nor removes them).

    The arguments are :func:`project_files`'; ``build.sh`` downloads and runs
    *compiler* (:data:`lib.aztec.build_sh.Compiler`).  *game* is the app
    directory relative to the tree, which ``build.sh`` copies the game's other
    files from into ``build_out_new/``.  ``run.sh`` launches the host's program
    (else the first ``.EXE``) from there, as ``C:\\GAME`` (*game*'s own name,
    where the installer puts the game); it is left out when there is none.
    """
    from .build_sh import run_script, script
    order, has_overlays, outputs, linked, listed_by = _plan(
        binaries, host, files, arrange)
    out = {BUILD_SH: script(compiler, game, _build_sh_config(
        binaries, order, host, has_overlays, outputs, linked, listed_by, flags))}
    exe = _main_output(order, outputs, host)
    if exe:
        out[RUN_SH] = run_script(exe, _install_folder(game))
    return out


def _plan(binaries, host, files, arrange):
    """``(order, has_overlays, outputs, linked, listed_by)``: the binaries, host
    first; whether any is an overlay; ``{name: the game's file}``; ``{name:
    the file ln writes}``; ``{name: its modules in link order}``."""
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
    listed_by = {}
    for name in order:
        listed = dict.fromkeys(_INCLUDE.findall(files[f'{name}.asm']))
        if arrange is not None:
            listed = arrange(name, list(listed))
        listed_by[name] = list(listed)
    return order, has_overlays, outputs, linked, listed_by


def _build_sh_config(binaries, order, host, has_overlays, outputs, linked, listed,
                     flags):
    """``build.sh``'s block of what it builds (:func:`lib.aztec.build_sh.config`)
    from what the makefile is written from.  A binary is its own directory's
    sources; every other directory its listing names is a library directory.
    A driver's first module stays first, and the startup modules it lists
    are linked by force."""
    from .build_sh import ENTRY_STEMS, Binary, config
    entries, libdirs = [], []
    for name in order:
        info = binaries[name]
        link_flags = list((info.get('link') or {}).get('flags', ()))
        if name == host and has_overlays:
            link_flags.insert(0, '-R')
        root = host if info.get('type') == 'aztec_overlay' and host else None
        modules = listed[name]
        for module in modules:
            top = module.split('/', 1)[0]
            if '/' in module and top not in binaries and top not in libdirs:
                libdirs.append(top)
        first = modules[0] if info.get('type') == 'raw_drv' and modules else None
        entry = [m for m in modules if not m.startswith(name + '/')
                 and os.path.basename(m) in ENTRY_STEMS]
        entries.append(Binary(name, outputs[name], linked[name], root, link_flags,
                              info.get('desc'), first, entry))
    bin_cflags, obj_cflags = _flag_overrides(order, listed, flags)
    # SHARED.LIB compiles a module once, with its own flags or else CFLAGS, so
    # every binary linking it must want just those (lib.shared keeps a module
    # that one binary compiles differently in that binary's directory).
    wanted = {}
    for name in order:
        for module in listed[name]:
            if module.split('/', 1)[0] in libdirs:
                wanted.setdefault(module, {})[name] = list(
                    flags.module(os.path.basename(module), name))
    for module, by_binary in wanted.items():
        kinds = {tuple(value) for value in by_binary.values()}
        if len(kinds) > 1:
            raise ValueError(f'{module}: compiled with different flags in '
                             + ', '.join(f'{name} ({_join(value) or "no flags"})'
                                         for name, value in by_binary.items())
                             + '; SHARED.LIB can hold only one')
        want = list(kinds.pop())
        if want != obj_cflags.get(module, list(flags.c)):
            obj_cflags[module] = want
    return config(entries, flags.c, flags.asm, INCLUDE_DIR, sorted(libdirs),
                  bin_cflags, obj_cflags)


def _install_folder(game):
    """The DOS folder the game is installed in: its app directory's name, as
    8.3 sees it (``../apps/DSAVANT`` -> ``DSAVANT``)."""
    return os.path.basename(game.rstrip('/\\')).upper()[:8] or 'GAME'


def _main_output(order, outputs, host):
    """The program ``run.sh`` starts: the host's file, else the first ``.EXE``
    by binary name (as ``make run`` picks)."""
    if host in outputs:
        return outputs[host]
    exes = [outputs[name] for name in sorted(order)
            if outputs[name].upper().endswith('.EXE')]
    return exes[0] if exes else None


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
