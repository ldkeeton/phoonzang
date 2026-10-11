"""``python -m main`` entry point."""

import sys

from lib.sidecar import SidecarError

from .cli import main

if __name__ == '__main__':
    try:
        main()
    except SidecarError as exc:
        print(f'Sidecar configuration error: {exc}', file=sys.stderr)
        sys.exit(2)
