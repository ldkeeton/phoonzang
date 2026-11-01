"""``make link`` — link hand-owned sources with Aztec ``ln``; report bad names."""

import sys

from lib.aztec.link import ABSENT, FIX, link_binaries
from lib.sidecar.loader import load

_TITLES = {
    'failed': 'Did not assemble/compile',
    'linker': 'Other linker errors',
    'spelling': 'Misnamed: spelling (_ differs from the definition)',
    'not_public': 'Not public: its linked source holds the label but does not export it',
    'undefined': 'Undefined: no .s or .c defines it',
    'multiple': 'Multiply defined',
    'in_c': 'Not in this link: in a .c (C=name to add)',
}


def _print_group(result, key):
    if result[key]:
        print(f'  {_TITLES[key]}: {len(result[key])}')
        for name, where in result[key]:
            print(f'    {name}{f"  ({where})" if where else ""}')


def cmd_link(projects, binary=None, c_files=()):
    """Link each binary, print what to fix; exit nonzero if there is any."""
    found = 0
    for project in projects:
        binaries = [binary] if binary else list(load(project)['binaries'])
        try:
            results = link_binaries(project, binaries, c_files)
        except ValueError as e:
            print(e)
            sys.exit(1)
        for name, (result, count, log) in zip(binaries, results):
            fix = sum(len(result[key]) for key in FIX)
            found += fix
            print(f'{project}/{name}: {count} sources, {fix} to fix, '
                  f'{sum(len(result[key]) for key in ABSENT)} not in this link')
            for key in FIX + ABSENT:
                _print_group(result, key)
    print(f'\n{found} to fix')
    if found:
        sys.exit(1)
