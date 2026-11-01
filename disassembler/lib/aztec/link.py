"""Link a binary's hand-owned sources with the real Aztec ``ln``.

The build checks each source by its bytes and normalizes the trailing ``_``, so
a wrong symbol name passes it.  Here the sources are assembled, compiled and
handed to ``LN.EXE`` the way Manx would have.  Only ``.s`` and ``.c`` files take
part.  ``shared/`` acts as a library: a source joins the link when an undefined
symbol names something it defines.  What is left over is the product: the
link's ``Undefined symbol`` and ``multiply defined`` errors.
"""

import concurrent.futures
import os
import re
import shutil
import tempfile
from collections import namedtuple

from lib.cachedirs import src_dir
from lib.shared import FOLDER as SHARED
from lib.sidecar.compiler import asm_flags, compiler_flags
from lib.sidecar.loader import load

from ..dosbox import DOSBOX, environment as dosbox_env, run as run_dosbox
from ..dosbox import timeout as dosbox_timeout
from . import compile as _compile
from . import sources
from .compile import VERSION, aztec_name, symbol_key

#: What Manx links first into every overlay.
OVERLAY_START = 'aztec_ovbgn'

#: Files the default link takes C from: the runtime the ``.s`` files sit on.
RUNTIME_PREFIX = 'aztec_'

_ASM_LABEL = re.compile(
    r'^\s*([A-Za-z_$][\w$]*)(?::|\s+(?:equ|proc|label|db|dw|dd)\b)', re.M | re.I)
#: A column-zero C definition: a function's head or a variable, not a prototype.
_C_DEFINITION = re.compile(
    r'^(?!extern\b|static\b|typedef\b|return\b)(?=[A-Za-z_])'
    r'(?:[^\n#;{}]*?\b)?(\w+)[ \t]*'
    r'(?:\([^;\n]*\)[ \t]*(?:\{|$)|(?:\[[^\]\n]*\])?[ \t]*[=;])', re.M)
#: The parameter declarations between a K&R function's head and its body.
_KR_PARAMS = re.compile(r'(\)[ \t]*\n)(?:[^\n{}]*;[ \t]*\n)+(?=\{)')
_UNDEFINED = re.compile(r'Undefined symbol:\s*(\S+)')
_MULTIPLE = re.compile(r'(\S+) multiply defined')
#: One ``cnm`` symbol: value, two-letter type, name.
_SYMBOL = re.compile(r'\b[0-9a-fA-F]{4,}\s+([A-Za-z][a-z])\s+(\S+)')

Member = namedtuple('Member', 'stem path kind')

#: The list to fix, then what the link merely did not contain.
FIX = ('failed', 'linker', 'spelling', 'not_public', 'undefined', 'multiple')
ABSENT = ('in_c',)


def _sources(tree, folder):
    """Every source below *folder*, sorted; a ``.s`` hides its ``.c`` twin."""
    paths = {}
    for root, dirs, files in os.walk(os.path.join(tree, folder)):
        dirs.sort()
        for fn in sorted(files):
            stem, ext = os.path.splitext(fn)
            if ext in ('.s', '.c'):
                rel = os.path.relpath(os.path.join(root, stem), tree)
                if ext == '.s' or rel not in paths:
                    paths[rel] = Member(stem, rel + ext,
                                        'asm' if ext == '.s' else 'c')
    return [paths[rel] for rel in sorted(paths)]


def _default(member):
    return member.kind == 'asm' or member.stem.startswith(RUNTIME_PREFIX)


def members(tree, binary, c_files=(), overlay=False):
    """What the link of *binary* starts from: its own ``.s`` and ``aztec_``
    ``.c``, plus the ``.c`` stems in *c_files* (``'all'`` for each of its own),
    which may be shared; an *overlay* also starts from its Manx startup.  Raises ``ValueError`` for a stem it does not hold."""
    wanted = set(c_files)
    own = _sources(tree, binary)
    named = [m for m in own + library(tree)
             if m.kind == 'c' and m.stem in wanted]
    out = [m for m in own if _default(m) or 'all' in wanted]
    out += [m for m in named if m not in out]
    if overlay:
        out += [m for m in library(tree)
                if m.stem == OVERLAY_START and m not in out]
    missing = wanted - {m.stem for m in named} - {'all'}
    if missing:
        raise ValueError(f'{binary} has no .c for: {", ".join(sorted(missing))}')
    return out


def library(tree):
    """Every source of ``shared/``."""
    return _sources(tree, SHARED)


def defined_names(path, text):
    """The keys of what the source text at *path* defines."""
    if path.endswith('.c'):
        text = _KR_PARAMS.sub(r'\1', text)
        return {symbol_key(name) for name in _C_DEFINITION.findall(text)}
    return (set(sources._asm_names(text))
            | {symbol_key(aztec_name(name)) for name in _ASM_LABEL.findall(text)})


def definitions(tree, chosen):
    """``{key: [paths]}`` of what each of *chosen* defines, in order."""
    out = {}
    for member in chosen:
        for key in defined_names(member.path,
                                 _read(os.path.join(tree, member.path))):
            out.setdefault(key, []).append(member.path)
    return out


def needed(undefined, chosen, index):
    """The paths *undefined* adds to the link: for each name whose definer is
    not linked yet, the first of *index* that defines it."""
    have = {m.path for m in chosen}
    out = []
    for name in undefined:
        paths = index.get(symbol_key(aztec_name(name)), ())
        if paths and not have.intersection(paths) and paths[0] not in out:
            out.append(paths[0])
    return out


def parse_log(text):
    """``(undefined, multiply defined)`` names of one ``ln`` log, in order."""
    return (list(dict.fromkeys(_UNDEFINED.findall(text))),
            list(dict.fromkeys(_MULTIPLE.findall(text))))


def parse_other(text):
    """The ``ERROR`` lines of one ``ln`` log that :func:`parse_log` does not
    sort, in order.  A log with nothing in it means ``ln`` itself never ran."""
    if not text.strip():
        return ['ln wrote no log']
    return [line.strip() for line in text.splitlines()
            if line.lstrip().startswith('ERROR')
            and not _UNDEFINED.search(line) and not _MULTIPLE.search(line)]


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


def _other_spelling(name):
    return name[:-1] if name.endswith('_') else name + '_'


def _label_of(name, labels):
    """The key of *labels* that *name* refers to, or ``None``."""
    key = symbol_key(aztec_name(name))
    return key if key in labels else None


def classify(undefined, multiple, publics, labels, failed=None, linked=(),
             other=()):
    """Sort the link's errors: ``{category: [(symbol, where)]}``.

    *publics* maps each name the objects define to its source; *labels* each
    key the sources define to its source; *failed* each source that did not
    build to its error lines; *linked* holds the sources in the link; *other*
    the rest of the linker's errors.  A label its linked source does not export
    is a defect of that source; a ``.c`` only means it is not in this link.
    """
    out = {key: [] for key in FIX + ABSENT}
    out['failed'] = [(path, line) for path, lines in (failed or {}).items()
                     for line in lines]
    out['linker'] = [(line, '') for line in other]
    out['multiple'] = [(name, publics.get(name, '')) for name in multiple]
    for name in undefined:
        if name in publics:     # an overlay's call the host's object satisfies
            continue
        other = _other_spelling(name)
        label = _label_of(name, labels)
        if other in publics:
            out['spelling'].append((name, f'{other} in {publics[other]}'))
        elif label is None:
            out['undefined'].append((name, ''))
        elif labels[label].endswith('.s') or labels[label] in linked:
            out['not_public'].append((name, labels[label]))
        else:
            out['in_c'].append((name, labels[label]))
    return out


def _tool_flags(project, binary, member):
    if member.kind == 'asm':
        return asm_flags(project)
    return compiler_flags(project, member.stem, binary) or []


def run_link(project, binary, chosen, include_dir, index=None, resolved=()):
    """Build *chosen* and link it, in a DOSBox session per round.

    While the link's undefined names (other than those in *resolved*) have a
    definer in *index*, those sources join and the link runs again.

    Returns ``(log, {path: publics}, {path that failed: its error lines},
    [the sources linked])``.
    """
    tree = src_dir(project)
    by_path = {m.path: m for m in library(tree)}
    chosen, pending = list(chosen), list(chosen)
    work = tempfile.mkdtemp(prefix='asmazb-')
    try:
        os.symlink(_compile._compiler_dir(VERSION), os.path.join(work, 'azbin'))
        os.symlink(os.path.abspath(include_dir), os.path.join(work, 'azinc'))
        with open(os.path.join(work, 'dosbox.conf'), 'w') as f:
            f.write(_compile._CONF)
        while pending:
            # Names are given in order, so a later round keeps the earlier ones.
            dos = _compile.dos_names([m.stem for m in chosen])
            names = dict(zip(chosen, dos))
            lines = []
            for member in pending:
                name = names[member]
                ext = 'ASM' if member.kind == 'asm' else 'C'
                shutil.copyfile(os.path.join(tree, member.path),
                                os.path.join(work, f'{name}.{ext}'))
                lines.append(_compile._tool_line(
                    member.kind, _tool_flags(project, binary, member), name,
                    f'{name}.CC'))
                lines.append(f'if exist {name}.O cnm -l {name}.O > {name}.NM')
            with open(os.path.join(work, 'LINK.RSP'), 'w') as f:
                f.write(''.join(f'{name}.O\r\n' for name in dos))
            lines.append('ln -o LINK.EXE -f LINK.RSP > LINK.LOG')
            with open(os.path.join(work, 'BUILD.BAT'), 'w') as f:
                f.write('\r\n'.join(lines) + '\r\n')
            cmds = [f'mount c {os.path.join(work, "azbin")}',
                    f'mount d {work}',
                    f'mount e {os.path.join(work, "azinc")}',
                    'set PATH=C:\\BIN', 'set INCLUDE=E:\\', 'd:', 'BUILD.BAT',
                    'exit']
            limit = dosbox_timeout()
            if limit is not None:
                limit *= max(1, len(pending) // 10)
            run_dosbox(_compile._dosbox_argv(DOSBOX, work, cmds),
                       env=dosbox_env(work), timeout=limit,
                       what=f'aztec link | {binary}: {len(chosen)} sources')
            log = _read(os.path.join(work, 'LINK.LOG'))
            undefined = [name for name in parse_log(log)[0]
                         if name not in resolved]
            pending = [by_path[path] for path in
                       needed(undefined, chosen, index or {})]
            chosen += pending
        publics, failed = {}, {}
        dos = _compile.dos_names([m.stem for m in chosen])
        for member, name in zip(chosen, dos):
            cc_log = _read(os.path.join(work, f'{name}.CC'))
            if (not os.path.exists(os.path.join(work, f'{name}.O'))
                    or _compile._ERROR_LINE.search(cc_log)):
                failed[member.path] = source_errors(cc_log)
            publics[member.path] = parse_publics(
                _read(os.path.join(work, f'{name}.NM')))
        return log, publics, failed, chosen
    finally:
        shutil.rmtree(work, ignore_errors=True)


def _read(path):
    if not os.path.exists(path):
        return ''
    with open(path, errors='replace') as f:
        return f.read()


def _library_index(tree):
    return definitions(tree, [m for m in library(tree) if _default(m)])


def _first(index):
    return {key: paths[0] for key, paths in index.items()}


def split_overlays(project):
    """``(host, overlays)`` from the sidecar: the overlays, and the first ``mz``
    binary, which they call into."""
    binaries = load(project)['binaries']
    overlays = frozenset(name for name, info in binaries.items()
                         if info.get('type') == 'aztec_overlay')
    host = next((name for name, info in binaries.items()
                 if info.get('type') == 'mz'), None)
    return host, overlays


def _host_view(project, c_files):
    """``(labels, publics, linked)`` of the host an overlay calls into.

    An overlay links on its own but calls into its host, so its names resolve
    against the host's; only ``all`` carries over from *c_files*, which name the
    overlay's own files.
    """
    tree = src_dir(project)
    host, _ = split_overlays(project)
    chosen = members(tree, host, [c for c in c_files if c == 'all'])
    _, by_path, _, linked = run_link(project, host, chosen,
                                     sources.project_include_dir(project),
                                     _library_index(tree))
    return (_first(definitions(tree, _sources(tree, host))),
            {name: path for path, names in by_path.items() for name in names},
            {m.path for m in linked})


def link_binary(project, binary, c_files=(), host_view=None):
    """``(result of classify, sources linked, raw log)`` for *binary*."""
    tree = src_dir(project)
    chosen = members(tree, binary, c_files, host_view is not None)
    if not chosen:
        return classify([], [], {}, {}), 0, ''
    host_labels, host_publics, host_linked = host_view or ({}, {}, set())
    index = _library_index(tree)
    log, by_path, failed, linked = run_link(
        project, binary, chosen, sources.project_include_dir(project), index,
        host_publics)
    publics = {**host_publics,
               **{name: path for path, names in by_path.items()
                  for name in names}}
    undefined, multiple = parse_log(log)
    labels = {**host_labels, **_first(definitions(tree, library(tree))),
              **_first(definitions(tree, _sources(tree, binary)))}
    return (classify(undefined, multiple, publics, labels, failed,
                     host_linked | {m.path for m in linked}, parse_other(log)),
            len(linked), log)


def link_binaries(project, binaries, c_files=()):
    """:func:`link_binary` for each of *binaries*, side by side, in order; the
    overlays share one link of their host."""
    _, overlays = split_overlays(project)
    view = (_host_view(project, c_files)
            if any(b in overlays for b in binaries) else None)
    with concurrent.futures.ThreadPoolExecutor(
            max_workers=min(len(binaries), os.cpu_count() or 4)) as pool:
        return list(pool.map(
            lambda b: link_binary(project, b, c_files,
                                  view if b in overlays else None),
            binaries))
