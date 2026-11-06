"""Lint the hand-owned project sources.

The rules live in :mod:`lint` and are registered there.  This module only
walks the projects, prints findings, and applies the rules' fixers when asked
(the build runs it in fix mode); adding a rule does not touch this file.
"""

import os
import sys

from lib import autogen, cachedirs, progress

from .common import _apps

from lint.c_structs import check_project
from lint.core import check_text, fix_text


_SOURCE_EXTENSIONS = ('.c', '.s')


def _projects(args):
    known = list(_apps())
    if not args:
        return known
    for project in args:
        if project not in known:
            print(f'Unknown project: {project}')
            print(f'Known: {", ".join(known)}')
            sys.exit(1)
    return args


def _files(project):
    """Hand-owned ``.c``/``.s`` files under ``src_<project>``."""
    root = cachedirs.src_dir(project)
    if not os.path.isdir(root):
        return []
    files = []
    for directory, dirnames, filenames in os.walk(root):
        dirnames[:] = sorted(name for name in dirnames
                             if name != '__pycache__' and name not in cachedirs.SRC_SKIP_DIRS)
        for name in sorted(filenames):
            if os.path.splitext(name)[1].lower() not in _SOURCE_EXTENSIONS:
                continue
            path = os.path.join(directory, name)
            if autogen.hand_owned(path):
                files.append(path)
    return files


def _display(path):
    return os.path.relpath(path, cachedirs.PROJECT_ROOT)


def _read(path):
    with open(path, encoding='utf-8', errors='surrogateescape',
              newline='') as source:
        return source.read()


def _write(path, text):
    with open(path, 'w', encoding='utf-8', errors='surrogateescape',
              newline='') as source:
        source.write(text)


def _lint_file(path, fix):
    """``(findings, fixed)`` for one file, applying fixable rules when *fix*.

    Runs in a pool process: the rules are pure, each file is independent."""
    text = _read(path)
    findings = check_text(text, path)
    fixed = 0
    if fix and findings and any(finding.fixable for finding in findings):
        rewritten = fix_text(text, path)
        if rewritten != text:
            _write(path, rewritten)
            fixed = sum(1 for finding in findings if finding.fixable)
            findings = check_text(rewritten, path)
    return findings, fixed


def _lint_files(files, fix):
    """:func:`_lint_file` for every file, in order, across processes."""
    from concurrent.futures import ProcessPoolExecutor
    jobs = min(len(files), os.cpu_count() or 4)
    if jobs <= 1:
        return [_lint_file(path, fix) for path in files]
    chunk = max(1, len(files) // (jobs * 4))
    try:
        with ProcessPoolExecutor(max_workers=jobs) as pool:
            return list(pool.map(_lint_file, files, [fix] * len(files),
                                 chunksize=chunk))
    except PermissionError:
        # Restricted runners may forbid the forkserver's local socket. The
        # lint operations are independent, so retry serially in that case.
        return [_lint_file(path, fix) for path in files]


def cmd_lint(projects, fix=False):
    projects = _projects(projects)
    total_files = 0
    total_findings = 0
    fixed = 0
    for project in projects:
        files = _files(project)
        if not files:
            progress.log(f'{project}: no hand-owned .c/.s files')
            continue
        total_files += len(files)
        findings_here = 0
        for path, (findings, fixed_here) in zip(files, _lint_files(files, fix)):
            fixed += fixed_here
            for finding in findings:
                print(f'{_display(path)}:{finding.line}:{finding.col}: '
                      f'{finding.rule}: {finding.message}', file=sys.stderr)
            findings_here += len(findings)
        # Rules that compare files with each other run once per tree.
        for finding in check_project(cachedirs.src_dir(project)):
            print(f'{_display(finding.path)}:{finding.line}:{finding.col}: '
                  f'{finding.rule}: {finding.message}', file=sys.stderr)
            findings_here += 1
        progress.log(f'{project}: {len(files)} files, {findings_here} finding(s)')
        total_findings += findings_here

    if fix:
        progress.log(f'fixed {fixed} finding(s)')
    if total_findings:
        print(f'lint: {total_findings} finding(s) in {total_files} file(s)',
              file=sys.stderr)
        sys.exit(1)
    progress.log(f'{total_files} file(s) clean')
