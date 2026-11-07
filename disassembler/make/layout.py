"""``make layout`` - link both ways and report what depends on addresses.

``make link``'s order reproduces the original image; ``build.sh`` links in
its own order.  This links each binary both ways with ``ln -t`` and hands the
two images to :mod:`lib.layout`, which lists every word that only works at
the original addresses.  ``build.sh`` writes ``build_out_new/``, so the tree
ends with both games: ``build_out/`` (``make``) and ``build_out_new/``.
"""

import os
import subprocess
import sys

from lib import layout
from lib.aztec import project as _project
from lib.aztec.link import link_targets
from lib.cachedirs import project_cache, src_dir

_KINDS = (('A', 'code differs: changed, and no address move explains it'),
          ('B', 'address literal: kept the old address of a symbol that moved'),
          ('b', f'small literal (< 0x{layout.SMALL:x}) equal to a moved address: '
                'informational, mostly counts and flags'),
          ('C', 'adjacency: moved with the neighbouring module, not its own'),
          ('U', 'unplaced: no symbol or unique bytes say where it went'),
          ('D', 'not linked by build.sh (nothing calls it): informational'))


def _build_sh(tree, binaries):
    """Run the tree's ``build.sh`` with ``ln -t``: it writes the binaries to
    ``build_out_new/`` (a second playable copy of the game, beside ``make``'s
    ``build_out/``) and each symbol table to ``.cache/build/BIN/``."""
    print(f'layout: build.sh {" ".join(binaries)}', flush=True)
    subprocess.run(['bash', os.path.join(tree, 'build.sh'), *binaries],
                   cwd=tree, env=dict(os.environ, LN_EXTRA='-t'), check=False)


def _read(path, mode='r'):
    if not os.path.exists(path):
        return None
    with open(path, mode, **({} if 'b' in mode else {'errors': 'replace'})) as f:
        return f.read()


def analyse(binary, target, old_image, old_table, new_image, new_table,
            asm_text, tree, root_moves=None):
    """``(findings, Moves)`` of one binary."""
    kind = layout.image_kind(target.output)
    old = layout.Image(old_image, kind, layout.parse_symbols(old_table))
    new = layout.Image(new_image, kind, layout.parse_symbols(new_table))
    spans = layout.module_spans(asm_text, old,
                                lambda path: _read(os.path.join(tree, path)))
    spans = layout.regions(spans, old, new)
    spans = layout.infer_deltas(spans, old, new, root_moves)
    moves = layout.Moves(old, new, spans, root_moves)
    operands = layout.operand_words(old, spans, layout.data_like)
    return layout.compare(binary, old, new, spans, moves, operands), moves


def report(findings, limit):
    """Print *findings* grouped by kind; returns how many there are."""
    for kind, title in _KINDS:
        rows = [f for f in findings if f.kind == kind]
        if not rows:
            continue
        print(f'  {kind} {title}: {len(rows)}')
        for f in ([] if kind == 'b' and limit < 10 ** 9 else rows[:limit]):
            old = '' if f.old is None else f' {f.old:04x}'
            new = '' if f.new is None or f.new == f.old else f'->{f.new:04x}'
            at = '' if f.offset is None else f' @{f.offset:05x}'
            print(f'    {f.module}{at}{old}{new}  {f.note}')
        if kind == 'b' and limit < 10 ** 9:
            print('    (VERBOSE=1 lists them)')
            continue
        if len(rows) > limit:
            print(f'    ... {len(rows) - limit} more (VERBOSE=1 lists all)')
    return len(findings)


def _save_old(directory, linked):
    """Keep each ``make link`` image and symbol table for ``REUSE=1``."""
    os.makedirs(directory, exist_ok=True)
    for name, link in linked.items():
        if link.image is not None:
            with open(os.path.join(directory, f'{name}.bin'), 'wb') as f:
                f.write(link.image)
        if link.symbols:
            with open(os.path.join(directory, f'{name}.sym'), 'w') as f:
                f.write(link.symbols)


def _load_old(directory, names):
    """What :func:`_save_old` kept, as ``{name: Linked}``."""
    from lib.aztec.link import Linked
    return {name: Linked(None, 0, '', {}, {}, None,
                         _read(os.path.join(directory, f'{name}.bin'), 'rb'),
                         _read(os.path.join(directory, f'{name}.sym')))
            for name in names}


def cmd_layout(project, binaries=None):
    """Link *binaries* (default: all) the ``make link`` way and the
    ``build.sh`` way, and report what in each depends on its addresses;
    exit 1 when anything does."""
    tree = src_dir(project)
    targets = _project.load_targets(tree)
    by_name = {t.binary: t for t in targets}
    wanted = list(binaries) if binaries else [t.binary for t in targets]
    for name in wanted:
        if name not in by_name:
            print(f'{project} has no binary {name}')
            sys.exit(1)
    roots = [by_name[n].root for n in wanted if by_name[n].root]
    order = list(dict.fromkeys(roots + wanted))

    base = os.path.join(project_cache(project), 'layout')
    if os.environ.get('REUSE'):
        old = _load_old(os.path.join(base, 'old'), order)
    else:
        _build_sh(tree, wanted)
        print(f'layout: make link {" ".join(order)}', flush=True)
        old = link_targets(project, targets, order, symbols=True)
        _save_old(os.path.join(base, 'old'), old)

    limit = 10 ** 9 if os.environ.get('VERBOSE') else 40
    total = 0
    moves = {}
    for name in order:
        target = by_name[name]
        work = os.path.join(tree, '.cache', 'build', name)
        stem = target.output.rsplit('.', 1)[0].upper()
        new_image = _read(os.path.join(tree, 'build_out_new',
                                       target.file or target.output), 'rb')
        new_table = _read(os.path.join(work, f'{stem}.SYM'))
        asm_text = _read(os.path.join(tree, f'{name}.asm'))
        link = old[name]
        problems = [what for what, missing in (
            ('make link wrote no image', link.image is None),
            ('make link wrote no symbol table', not link.symbols),
            ('build.sh wrote no image', new_image is None),
            ('build.sh wrote no symbol table', not new_table),
            (f'no {name}.asm (make build writes it)', asm_text is None))
            if missing]
        if problems:
            print(f'{project}/{name}: ' + '; '.join(problems))
            total += 1
            continue
        findings, moves[name] = analyse(
            name, target, link.image, link.symbols, new_image, new_table,
            asm_text, tree, moves.get(target.root))
        if name not in wanted:
            continue
        failing = [f for f in findings if f.kind not in ('D', 'b')]
        if not failing:
            dropped = sum(f.kind == 'D' for f in findings)
            small = sum(f.kind == 'b' for f in findings)
            notes = [f'{dropped} module(s) not linked'] if dropped else []
            notes += [f'{small} small literal(s)'] if small else []
            print(f'{project}/{name}: OK' + (f' ({", ".join(notes)})'
                                               if notes else ''))
            continue
        print(f'{project}/{name}: {len(failing)} layout dependencies')
        report(findings, limit)
        total += len(failing)
    if total:
        sys.exit(1)
