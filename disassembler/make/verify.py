"""``make verify`` — verify one or all projects."""

import sys

from main.verify import (
    verify_all,
    verify_project,
)

from .common import _extra_flags


def cmd_verify(apps):
    exact = '--exact-bytes' in _extra_flags()
    if not apps:
        verify_all(exact)
        return
    for app in apps:
        ok, fail = verify_project(app, exact)
        print(f'{app}: {ok}/{ok + len(fail)} passed')
        for f in fail:
            print(f'  FAIL: {f}')
        if fail:
            sys.exit(1)
