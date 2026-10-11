"""``make check`` / ``make run`` — smoke-test or launch a built game."""

import os
import subprocess
import sys

from main import discover_binaries

from .common import APPS, PROJECT, _main_exe

DEFAULT_CHECK_SECONDS = 5


def _parse_check_args(args):
    """Return project names and an optional trailing smoke-test timeout."""
    args = list(args)
    timeout_seconds = DEFAULT_CHECK_SECONDS
    if len(args) > 1:
        try:
            timeout_seconds = int(args[-1], 10)
        except ValueError:
            pass
        else:
            args.pop()
            if timeout_seconds <= 0:
                raise ValueError('seconds must be a positive integer')
    return args, timeout_seconds


def cmd_check(app, timeout_seconds=DEFAULT_CHECK_SECONDS):
    app_dir = os.path.join(APPS, app)
    out_dir = os.path.join(PROJECT, f'asm_{app}')
    bins = discover_binaries(app_dir)
    name, rel = _main_exe(out_dir, bins)
    if name is None:
        print(f'{app}: no binaries found')
        sys.exit(1)

    bin_path = os.path.join(out_dir, 'build_out', rel)
    if not os.path.exists(bin_path):
        print(f'{app}: {rel} not built')
        sys.exit(1)

    build_dir = os.path.join(out_dir, 'build_out')
    print(f'Smoke test: launching {rel} via dosbox ({timeout_seconds}s timeout)...')
    rc = subprocess.run(
        ['timeout', str(timeout_seconds), 'dosbox', '-c', f'mount c {build_dir}',
         '-c', 'c:', '-c', rel],
        capture_output=True, text=True,
    ).returncode

    if rc == 124:
        print(f'{app}: PASS (game loaded, killed after {timeout_seconds}s)')
    elif rc == 0:
        print(f'{app}: FAIL (game exited silently)')
        sys.exit(1)
    else:
        print(f'{app}: FAIL (dosbox error {rc})')
        sys.exit(1)


def cmd_run(app):
    app_dir = os.path.join(APPS, app)
    out_dir = os.path.join(PROJECT, f'asm_{app}')
    bins = discover_binaries(app_dir)
    name, rel = _main_exe(out_dir, bins)
    if name is None:
        print(f'{app}: no binaries found')
        sys.exit(1)

    bin_path = os.path.join(out_dir, 'build_out', rel)
    if not os.path.exists(bin_path):
        print(f'{app}: {rel} not built')
        sys.exit(1)

    subprocess.run(['dosbox', '-c', f'mount c {os.path.join(out_dir, "build_out")}',
                    '-c', 'c:', '-c', rel])
