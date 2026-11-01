"""A project's Manx-style build description: ``makefile`` and ``BIN.lnk`` files.

The build generates them from the layout of its listings (:func:`project_files`);
``make link`` then reads only them.  This is the form a Manx project took, a makefile whose ``ln`` lines take their
ordered objects from ``-f`` files, in the subset below.  Names stay long; the
layer that runs the tools maps them to 8.3::

    all: ds.exe vinit.ovr

    ds.exe: ds.lnk
    	ln -R -o ds.exe -f ds.lnk

    vinit.ovr: vinit.lnk ds.rsm
    	ln -o vinit.ovr -f vinit.lnk ds.rsm

A ``.lnk`` holds one extensionless module per line, in link order, naming
``MODULE.s`` or ``MODULE.c``.  ``#`` starts a comment in either file.
"""

import os
import re
from collections import namedtuple

from lib.autogen import stamp

MAKEFILE = 'makefile'
#: ``ln`` picks its output format from the extension: ``.com`` has no header and
#: loads at 0x100, which is what the shipped drivers are.
_OUTPUT_EXT = {'aztec_overlay': 'ovr', 'raw_drv': 'com'}
_INCLUDE = re.compile(r'^\s*%include\s+"([^"]+)\.asm"', re.M)
SOURCE_EXTS = (('.s', 'asm'), ('.c', 'c'))

#: One binary: its name, what ``ln`` writes, the flags, its ``.lnk`` and the
#: binary whose ``.rsm`` it links against (``None`` for none).
Target = namedtuple('Target', 'binary output flags lnk root')
Module = namedtuple('Module', 'stem path kind')

_RULE = re.compile(r'^([^\s:]+)\s*:\s*(.*)$')


def project_files(binaries, host, files):
    """``{relative path: text}`` of the project file for this build's *files*.

    *binaries* is the sidecar's ``{name: entry}`` and *host* the binary overlays
    call into.  Each ``.lnk`` keeps the order of its binary's listing, which is
    the original link's; the host links first, since overlays need its ``.rsm``.
    """
    order = sorted(binaries, key=lambda name: name != host)
    has_overlays = any(binaries[name].get('type') == 'aztec_overlay'
                       for name in binaries)
    outputs = {name: f'{name}.{_OUTPUT_EXT.get(binaries[name].get("type"), "exe")}'
               for name in order}
    make = ['all: ' + ' '.join(outputs[name] for name in order), '']
    out = {}
    for name in order:
        output, lnk = outputs[name], f'{name}.lnk'
        listed = dict.fromkeys(_INCLUDE.findall(files[f'{name}.asm']))
        out[lnk] = ''.join(f'{module}\n' for module in listed)
        if binaries[name].get('type') == 'aztec_overlay' and host:
            make += [f'{output}: {lnk} {host}.rsm',
                     f'\tln -o {output} -f {lnk} {host}.rsm', '']
        elif name == host and has_overlays:
            make += [f'{output}: {lnk}', f'\tln -R -o {output} -f {lnk}', '']
        else:
            make += [f'{output}: {lnk}', f'\tln -o {output} -f {lnk}', '']
    out[MAKEFILE] = '\n'.join(make).rstrip() + '\n'
    return {path: stamp(text, path) for path, text in out.items()}


def _lines(text):
    for raw in text.splitlines():
        line = raw.split('#', 1)[0].rstrip()
        if line:
            yield line


def _parse_ln(output, recipe):
    """``Target`` from the words of *output*'s ``ln`` line."""
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
    return Target(os.path.splitext(output)[0], output, flags, lnk, root)


def parse_makefile(text):
    """The targets of a project makefile, in file order, roots checked."""
    targets, pending = [], None
    for line in _lines(text):
        if line[0].isspace():
            if pending is None:
                raise ValueError(f'makefile: recipe without a target: {line.strip()}')
            targets.append(_parse_ln(pending, line.strip()))
            pending = None
            continue
        rule = _RULE.match(line)
        if not rule:
            raise ValueError(f'makefile: cannot read: {line}')
        if pending is not None:
            raise ValueError(f'makefile: {pending} has no ln line')
        if rule.group(1) != 'all':
            pending = rule.group(1)
    if pending is not None:
        raise ValueError(f'makefile: {pending} has no ln line')
    names = {t.binary for t in targets}
    for target in targets:
        if target.root is not None and target.root not in names:
            raise ValueError(f'makefile: {target.output} links against '
                             f'{target.root}.rsm, which nothing builds')
    return targets


def parse_lnk(text):
    """The modules of a ``.lnk``, in link order."""
    return [line.strip() for line in _lines(text)]


def load_targets(tree):
    """The targets of the project in *tree*."""
    path = os.path.join(tree, MAKEFILE)
    if not os.path.isfile(path):
        raise ValueError(f'{tree} has no {MAKEFILE}; run make build')
    with open(path) as f:
        return parse_makefile(f.read())


def modules(tree, target):
    """``(listed modules with a source, listed modules without one)``."""
    with open(os.path.join(tree, target.lnk)) as f:
        listed = parse_lnk(f.read())
    found, missing = [], []
    for name in listed:
        for ext, kind in SOURCE_EXTS:
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
