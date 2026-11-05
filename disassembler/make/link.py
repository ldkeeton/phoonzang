"""``make link`` — link a project file's sources with Aztec ``ln``; list errors."""

import os
import sys
import textwrap

from lib.aztec import project as _project
from lib.aztec.link import ABSENT, ERRORS, MISSING, compare_bytes, link_targets
from lib.cachedirs import src_dir
from main.projects import discover_binaries

from .common import APPS, _verbose

_TITLES = {
    'failed': 'Did not assemble/compile',
    'linker': 'Other linker errors',
    'spelling': 'Misnamed: spelling (_ differs from the definition)',
    'not_public': 'Not public: its linked source holds the label but does not export it',
    'undefined': 'Missing: no linked .s or .c defines it',
    'multiple': 'Multiply defined',
    'no_source': 'Listed, no .s or .c yet',
}


def _print_group(result, key):
    if result[key]:
        print(f'  {_TITLES[key]}: {len(result[key])}')
        for name, where in result[key]:
            print(f'    {name}{f"  ({where})" if where else ""}')


def _print_names(result, key):
    """One group as a wrapped list of its names, sorted."""
    if result[key]:
        print(f'  {_TITLES[key]}: {len(result[key])}')
        print(textwrap.fill('  '.join(sorted(name for name, _ in result[key])),
                            width=100, initial_indent='    ',
                            subsequent_indent='    ', break_on_hyphens=False))


def projects_with_binary(binary, projects):
    """The projects whose makefile has a target *binary*."""
    found = []
    for project in projects:
        try:
            targets = _project.load_targets(src_dir(project))
        except ValueError:
            continue
        if binary in {t.binary for t in targets}:
            found.append(project)
    return found


def _check_image(project, tree, target, image, originals):
    """Write what ``ln`` produced to ``build_out/ORIGINAL.dos``, lower case (so
    ``play.drv.dos``), or remove an older one when it produced nothing, then
    compare it byte for byte with the shipped binary.  Returns the line to print
    and whether they are identical."""
    rel_path = originals[target.binary][0]
    name = f'{os.path.basename(rel_path).lower()}.dos'
    path = os.path.join(tree, 'build_out', name)
    if image is None:
        if os.path.exists(path):
            os.remove(path)
        return f'  {name}: ln wrote no binary', False
    # The sources keep the compiler's bytes; the shipped binary has the edits.
    from main.build import _patches_for, finalize_patches
    image = finalize_patches(image, _patches_for(tree, target.binary))
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, 'wb') as f:
        f.write(image)
    with open(os.path.join(APPS, project, rel_path), 'rb') as f:
        original = f.read()
    diff = compare_bytes(image, original)
    if diff:
        return f'  {name}: DIFFERS from {rel_path}: {diff}', False
    return f'  {name}: identical to {rel_path} ({len(image)} bytes)', True


def cmd_link(projects, binary=None):
    """Link each target, print every error, write each binary to
    ``build_out/ORIGINAL.dos`` and compare it byte for byte with the original;
    exit nonzero on any error, undefined name or difference.  Naming a binary also lists what it still lacks: the
    undefined names and the modules without a source.  ``VERBOSE=1`` lists them
    for every binary, one per line with the sources using each name."""
    errors = missing = different = 0
    for project in projects:
        tree = src_dir(project)
        try:
            targets = _project.load_targets(tree)
            if binary and binary not in {t.binary for t in targets}:
                raise ValueError(f'{project} makefile has no target {binary}')
            linked = link_targets(project, targets, [binary] if binary else None)
            orphans = _project.unlisted(tree, targets)
        except ValueError as e:
            print(e)
            sys.exit(1)
        by_name = {t.binary: t for t in targets}
        originals = discover_binaries(os.path.join(APPS, project))
        for name, link in linked.items():
            bad = sum(len(link.result[key]) for key in ERRORS)
            gone = sum(len(link.result[key]) for key in MISSING)
            errors += bad
            missing += gone
            absent = sum(len(link.result[key]) for key in ABSENT)
            line, same = _check_image(project, tree, by_name[name], link.image,
                                      originals)
            different += not same
            if same and not (bad or gone or absent):
                print(f'{project}/{name}: OK')
                continue
            print(f'{project}/{name}: {link.count} sources, {bad} errors, '
                  f'{gone} missing, {absent} without a source')
            if link.image is not None or not (bad or gone):
                print(line)
            for key in ERRORS:
                _print_group(link.result, key)
            for key in MISSING + ABSENT:
                if _verbose():
                    _print_group(link.result, key)
                elif binary:
                    _print_names(link.result, key)
        if orphans:
            errors += len(orphans)
            print(f'{project}: in no .lnk: {len(orphans)}')
            for path in orphans:
                print(f'    {path}')
    if not (errors or missing or different):
        return
    print(f'\n{errors} errors, {missing} missing, {different} not byte-identical')
    if missing and not binary and not _verbose():
        print('make link BIN lists what one binary is missing')
    if errors or missing or different:
        sys.exit(1)
