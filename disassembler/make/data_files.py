"""``make data PROJECT [FILE...]`` -- the game's data files decoded into C."""

import os
import sys

from lib.cdata.lang import CDataError
from lib.cdata.project import data_dir, init_project


def cmd_data_files(project, names):
    try:
        written = init_project(project, [n.upper() for n in names])
    except (CDataError, ValueError) as exc:
        print(f'{project}: {exc}')
        sys.exit(1)
    out = data_dir(project)
    folders = sorted({os.path.relpath(os.path.dirname(p), out) for p in written}
                     - {'.'})
    print(f'{project}: {len(written)} file(s) in {out}: {", ".join(folders)}')
