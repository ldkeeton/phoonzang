"""Link a project's hand-owned sources with the real Aztec ``ln``.

The build checks each source by its bytes and normalizes the trailing ``_``, so
a wrong symbol name passes it.  Here the targets of the project file
(:mod:`lib.aztec.project`) are assembled, compiled and linked the way Manx did:
a root with ``ln -R``, which writes its symbols to a ``.rsm`` even when it has
undefined names, then each overlay against that ``.rsm``.  Only ``.s`` and
``.c`` files take part, so while modules lack a source the link's errors are
the product.
"""

import concurrent.futures
import os
import re
import shutil
import tempfile
from collections import namedtuple

from lib.cachedirs import src_dir
from lib.sidecar.compiler import asm_flags, compiler_flags

from ..dosbox import DOSBOX, environment as dosbox_env, run as run_dosbox
from ..dosbox import timeout as dosbox_timeout
from . import compile as _compile
from . import project as _project
from . import sources
from .compile import VERSION, aztec_name, symbol_key

_ASM_LABEL = re.compile(
    r'^\s*([A-Za-z_$][\w$]*)(?::|\s+(?:equ|proc|label|db|dw|dd)\b)', re.M | re.I)
_UNDEFINED = re.compile(r'Undefined symbol:\s*(\S+)')
_MULTIPLE = re.compile(r'(\S+) multiply defined')
_BANNER = re.compile(r'^Aztec C Linker|^(?:Base|Code):\s')
#: One ``cnm`` symbol: value, two-letter type, name.
_SYMBOL = re.compile(r'\b[0-9a-fA-F]{4,}\s+([A-Za-z][a-z])\s+(\S+)')

#: What is wrong with the sources; the names nothing linked defines; the listed
#: modules that have no source yet.
ERRORS = ('failed', 'linker', 'spelling', 'not_public', 'multiple')
MISSING = ('undefined',)
ABSENT = ('no_source',)

#: One target's link: classified errors (with ``no_source``), sources built,
#: ``ln``'s log, ``{name: path}`` it exports, ``{key: path}`` of its ``.s``
#: labels, and the bytes of the ``.rsm`` and the binary it wrote (``None`` for
#: none).
Linked = namedtuple('Linked', 'result count log publics labels rsm image symbols',
                    defaults=(None,))


def parse_log(text):
    """``(undefined, multiply defined)`` names of one ``ln`` log, in order."""
    return (list(dict.fromkeys(_UNDEFINED.findall(text))),
            list(dict.fromkeys(_MULTIPLE.findall(text))))


def parse_other(text):
    """Each line of one ``ln`` log that is not its banner, its size summary or
    a name :func:`parse_log` sorts: ``ln`` reports an unreadable object without
    the word ``ERROR``.  An empty log means ``ln`` itself never ran."""
    lines = [line.strip() for line in text.splitlines() if line.strip()]
    if not lines:
        return ['ln wrote no log']
    return [line for line in lines
            if not _BANNER.match(line) and not _UNDEFINED.search(line)
            and not _MULTIPLE.search(line)]


def source_errors(text):
    """The error lines of one ``as``/``cc`` log; its last line when it has none
    in the known format, since a source only fails here for a reason."""
    lines = [line.strip() for line in text.splitlines() if line.strip()]
    found = [line for line in lines if _compile._ERROR_LINE.match(line)]
    return found or lines[-1:] or ['no object and no log']


def parse_publics(text):
    """The names one ``cnm`` listing marks public: an upper-case type letter,
    except ``U``, undefined."""
    return [name for kind, name in _SYMBOL.findall(text)
            if kind[0].isupper() and kind[0] != 'U']


def parse_externals(text):
    """The names one ``cnm`` listing marks undefined."""
    return [name for kind, name in _SYMBOL.findall(text) if kind[0] == 'U']


def asm_labels(text):
    """The keys of the labels ``.s`` text defines, exported or not."""
    return {symbol_key(aztec_name(name)) for name in _ASM_LABEL.findall(text)}


def _other_spelling(name):
    return name[:-1] if name.endswith('_') else name + '_'


def classify(undefined, multiple, publics, labels, failed=None, other=(),
             no_source=(), users=None):
    """Sort a link's errors: ``{category: [(symbol, where)]}``.

    *publics* maps each name the objects export to its source; *labels* each
    key of a ``.s`` label in the link to its source; *failed* each source that
    did not build to its error lines; *other* holds the rest of the linker's
    output and *no_source* the listed modules without a source; *users* maps a
    name to the sources that reference it.
    """
    out = {key: [] for key in ERRORS + MISSING + ABSENT}
    out['failed'] = [(path, line) for path, lines in (failed or {}).items()
                     for line in lines]
    out['linker'] = [(line, '') for line in other]
    out['no_source'] = [(name, '') for name in no_source]
    out['multiple'] = [(name, publics.get(name, '')) for name in multiple]
    for name in undefined:
        spelled = _other_spelling(name)
        label = symbol_key(aztec_name(name))
        if spelled in publics:
            out['spelling'].append((name, f'{spelled} in {publics[spelled]}'))
        elif label in labels:
            out['not_public'].append((name, labels[label]))
        else:
            where = ', '.join((users or {}).get(name, ()))
            out['undefined'].append((name, f'used by {where}' if where else ''))
    return out


def compare_bytes(built, original):
    """How *built* differs from *original*, byte for byte; ``None`` when they
    are identical.  Nothing is masked: no fixups, padding or ranges are excused."""
    if built == original:
        return None
    shared = min(len(built), len(original))
    diffs = [at for at in range(shared) if built[at] != original[at]]
    first = diffs[0] if diffs else shared
    return (f'{len(built)} bytes, original {len(original)}; '
            f'{len(diffs)} differ in the shared {shared}; first at 0x{first:x}')


def _tool_flags(project, binary, module):
    if module.kind == 'asm':
        return asm_flags(project)
    return compiler_flags(project, module.stem, binary) or []


def ln_line(target, output, root_rsm=None):
    """The DOS ``ln`` command of *target*, its objects in ``LINK.RSP``."""
    words = ['ln', *target.flags, '-o', output, '-f', 'LINK.RSP']
    if root_rsm:
        words.append(root_rsm)
    return ' '.join(words + ['> LINK.LOG'])


def run_link(project, target, chosen, include_dir, root_rsm=None,
             symbols=False):
    """Build *chosen* and link it in one DOSBox session.

    A source without an object stays out of ``LINK.RSP``: ``ln`` gives up at the
    first file it cannot open.  Returns ``(log, {path: publics}, {name: paths
    that reference it}, {path that failed: its error lines}, the .rsm's bytes
    or None, the binary's bytes or None, ln's symbol table or None)``; the
    table is only asked for (``ln -t``) when *symbols* is set.
    """
    if symbols:
        target = target._replace(flags=['-t', *target.flags])
    tree = src_dir(project)
    dos = _compile.dos_names([m.stem for m in chosen])
    work = tempfile.mkdtemp(prefix='asmazb-')
    try:
        os.symlink(_compile._compiler_dir(VERSION), os.path.join(work, 'azbin'))
        os.symlink(os.path.abspath(include_dir), os.path.join(work, 'azinc'))
        with open(os.path.join(work, 'dosbox.conf'), 'w') as f:
            f.write(_compile._CONF)
        lines = []
        for module, name in zip(chosen, dos):
            ext = 'ASM' if module.kind == 'asm' else 'C'
            shutil.copyfile(os.path.join(tree, module.path),
                            os.path.join(work, f'{name}.{ext}'))
            lines.append(_compile._tool_line(
                module.kind, _tool_flags(project, target.binary, module), name,
                f'{name}.CC'))
            lines.append(f'if exist {name}.O cnm -l {name}.O > {name}.NM')
            lines.append(f'if exist {name}.O echo {name}.O>> LINK.RSP')
        if root_rsm is not None:
            with open(os.path.join(work, 'ROOT.RSM'), 'wb') as f:
                f.write(root_rsm)
        output = 'LINK' + os.path.splitext(target.output)[1].upper()
        lines.append(ln_line(target, output,
                             'ROOT.RSM' if root_rsm is not None else None))
        with open(os.path.join(work, 'BUILD.BAT'), 'w') as f:
            f.write('\r\n'.join(lines) + '\r\n')
        cmds = [f'mount c {os.path.join(work, "azbin")}',
                f'mount d {work}',
                f'mount e {os.path.join(work, "azinc")}',
                'set PATH=C:\\BIN', 'set INCLUDE=E:\\', 'd:', 'BUILD.BAT',
                'exit']
        limit = dosbox_timeout()
        if limit is not None:
            limit *= max(1, len(chosen) // 10)
        run_dosbox(_compile._dosbox_argv(DOSBOX, work, cmds),
                   env=dosbox_env(work), timeout=limit,
                   what=f'aztec link | {target.binary}: {len(chosen)} sources')
        publics, users, failed = {}, {}, {}
        for module, name in zip(chosen, dos):
            cc_log = _read(os.path.join(work, f'{name}.CC'))
            if (not os.path.exists(os.path.join(work, f'{name}.O'))
                    or _compile._ERROR_LINE.search(cc_log)):
                failed[module.path] = source_errors(cc_log)
            listing = _read(os.path.join(work, f'{name}.NM'))
            publics[module.path] = parse_publics(listing)
            for symbol in parse_externals(listing):
                users.setdefault(symbol, []).append(module.path)
        return (_read(os.path.join(work, 'LINK.LOG')), publics, users, failed,
                _read_bytes(os.path.join(work, 'LINK.RSM')),
                _read_bytes(os.path.join(work, output)),
                _read(os.path.join(work, 'LINK.SYM')) if symbols else None)
    finally:
        shutil.rmtree(work, ignore_errors=True)


def _read(path):
    if not os.path.exists(path):
        return ''
    with open(path, errors='replace') as f:
        return f.read()


def _read_bytes(path):
    if not os.path.exists(path):
        return None
    with open(path, 'rb') as f:
        return f.read()


def link_target(project, target, root=None, symbols=False):
    """The :class:`Linked` of *target*; *root* is the ``Linked`` of its root.
    *symbols* keeps ln's symbol table in ``Linked.symbols``."""
    tree = src_dir(project)
    chosen, missing = _project.modules(tree, target)
    if not chosen:
        return Linked(classify([], [], {}, {}, no_source=missing), 0, '', {}, {},
                      None, None)
    log, by_path, users, failed, rsm, image, table = run_link(
        project, target, chosen, sources.project_include_dir(project),
        root.rsm if root else None, symbols)
    own = {name: path for path, names in by_path.items() for name in names}
    labels = {key: module.path for module in chosen if module.kind == 'asm'
              for key in asm_labels(_read(os.path.join(tree, module.path)))}
    undefined, multiple = parse_log(log)
    other = parse_other(log)
    if target.root and not (root and root.rsm):
        other.append(f'{target.root} wrote no .rsm to link against')
    result = classify(undefined, multiple,
                      {**(root.publics if root else {}), **own},
                      {**(root.labels if root else {}), **labels},
                      failed, other, missing, users)
    return Linked(result, len(chosen), log, own, labels, rsm, image, table)


def link_targets(project, targets, chosen=None, symbols=False):
    """``{binary: Linked}`` of each target named in *chosen* (default: all).
    Roots link first, also when only a binary built on them was asked for.
    *symbols* keeps each ln symbol table (:func:`link_target`)."""
    by_name = {t.binary: t for t in targets}
    wanted = list(chosen) if chosen is not None else list(by_name)
    roots = list(dict.fromkeys(by_name[name].root for name in wanted
                               if by_name[name].root))
    done = {name: link_target(project, by_name[name], symbols=symbols)
            for name in roots}
    rest = [name for name in wanted if name not in done]
    with concurrent.futures.ThreadPoolExecutor(
            max_workers=max(1, min(len(rest), os.cpu_count() or 4))) as pool:
        linked = pool.map(lambda name: link_target(
            project, by_name[name], done.get(by_name[name].root), symbols),
            rest)
        done.update(zip(rest, linked))
    return {name: done[name] for name in wanted}
