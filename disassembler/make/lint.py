"""Lint the hand-owned project sources.

The rules live in :mod:`lint` and are registered there.  This module only
walks the projects, prints findings, and applies the rules' fixers when asked
(the build runs it in fix mode); adding a rule does not touch this file.
"""

import os
import sys

from lib import autogen, cachedirs, progress

from .common import _apps

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
                             if name not in ('__pycache__', 'build_out'))
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
        for path in files:
            text = _read(path)
            findings = check_text(text, path)
            if fix and findings and any(finding.fixable for finding in findings):
                rewritten = fix_text(text, path)
                if rewritten != text:
                    _write(path, rewritten)
                    fixed += sum(1 for finding in findings if finding.fixable)
                    text = rewritten
                    findings = check_text(text, path)
            for finding in findings:
                progress.log(f'{_display(path)}:{finding.line}:{finding.col}: '
                      f'{finding.rule}: {finding.message}')
            findings_here += len(findings)
        progress.log(f'{project}: {len(files)} files, {findings_here} finding(s)')
        total_findings += findings_here

    if fix:
        progress.log(f'fixed {fixed} finding(s)')
    if total_findings:
        progress.log(f'{total_findings} finding(s) in {total_files} file(s)')
        sys.exit(1)
    progress.log(f'{total_files} file(s) clean')
