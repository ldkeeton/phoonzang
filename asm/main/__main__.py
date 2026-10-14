"""``python -m main`` entry point."""

import sys

from lib.sidecar.errors import SidecarError
from lib.compare.records import UnencodedInstructionError

from .cli import main

if __name__ == '__main__':
    try:
        main()
    except UnencodedInstructionError as exc:
        print(f'ERROR: {exc}', file=sys.stderr)
        sys.exit(2)
    except SidecarError as exc:
        print(f'Sidecar configuration error: {exc}', file=sys.stderr)
        sys.exit(2)
