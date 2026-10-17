"""``make check`` / ``make run`` — smoke-test or launch a built game."""

import os
import shutil
import subprocess
import sys

from lib.dosbox import DOSBOX
from main.projects import discover_binaries

from .common import APPS, PROJECT, _main_exe

DEFAULT_CHECK_SECONDS = 5


def _dosbox_exe():
    """Return the DOSBox-X executable, or exit with a friendly error."""
    exe = shutil.which(DOSBOX)
    if exe is None:
        print(f'dosbox-x not found (looked for {DOSBOX!r}; set ASM_DOSBOX to override)')
        sys.exit(1)
    return exe


def _dosbox_flags():
    """DOSBox-X flags shared by ``check`` and ``run``.

    ``-fastlaunch`` skips the BIOS logo/splash and welcome banner,
    ``-nomenu`` hides the menu bar, ``-nopromptfolder`` suppresses the startup
    working-directory dialog, and the ``-set`` override disables the
    close-confirmation prompt while a program is running.
    """
    return [
        '-fastlaunch',
        '-nomenu',
        '-nopromptfolder',
        '-set', 'dosbox quit warning=false',
        '-set', 'cpu cycles=max',
        '-set', 'cpu turbo=false',
    ]


def _dosbox_argv(build_dir, rel, *, timeout=None):
    """Build the DOSBox-X command line that mounts *build_dir* and runs *rel*.

    ``@echo off`` goes first so the mount/run commands are not echoed to the
    screen.  When *timeout* is given the process is wrapped in ``timeout(1)``.
    """
    argv = [_dosbox_exe(), *_dosbox_flags()]
    if timeout is not None:
        argv = ['timeout', str(timeout)] + argv
    for cmd in ('@echo off', f'mount c {build_dir}', 'c:', rel):
        argv += ['-c', cmd]
    return argv


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
    print(f'Smoke test: launching {rel} via dosbox-x ({timeout_seconds}s timeout)...')
    rc = subprocess.run(
        _dosbox_argv(build_dir, rel, timeout=timeout_seconds),
        capture_output=True, text=True,
    ).returncode

    if rc == 124:
        print(f'{app}: PASS (game loaded, killed after {timeout_seconds}s)')
    elif rc == 0:
        print(f'{app}: FAIL (game exited silently)')
        sys.exit(1)
    else:
        print(f'{app}: FAIL (dosbox-x error {rc})')
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

    subprocess.run(_dosbox_argv(os.path.join(out_dir, 'build_out'), rel))
