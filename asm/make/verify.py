"""``make verify`` — verify one or all projects."""

import sys

from main.verify import (
    verify_all,
    verify_project,
)


def cmd_verify(apps):
    if not apps:
        verify_all()
        return
    for app in apps:
        ok, fail = verify_project(app)
        print(f'{app}: {ok}/{ok + len(fail)} passed')
        for f in fail:
            print(f'  FAIL: {f}')
        if fail:
            sys.exit(1)
