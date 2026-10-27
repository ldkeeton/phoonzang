"""Whole-project build dispatch and rebuild selectors."""

import io
import contextlib
import unittest
from unittest import mock

from make import build


class BuildCommandTest(unittest.TestCase):
    def run_build(self, *args):
        from make import cli
        with contextlib.ExitStack() as stack:
            stack.enter_context(mock.patch('sys.argv', ['make', '--build', *args]))
            stack.enter_context(mock.patch.object(cli.buildlock, 'acquire'))
            stack.enter_context(mock.patch.object(cli.childproc, 'install'))
            stack.enter_context(mock.patch.object(cli.childproc, 'reap_stale',
                                                   return_value=(0, 0)))
            stack.enter_context(mock.patch.object(cli, '_apps',
                                                   return_value=['P', 'Q']))
            lint = stack.enter_context(mock.patch.object(cli, 'cmd_lint'))
            build_projects = stack.enter_context(mock.patch.object(cli, '_build_projects'))
            output = stack.enter_context(contextlib.redirect_stdout(io.StringIO()))
            try:
                cli.main()
            except SystemExit as exc:
                return exc.code, lint, build_projects, output.getvalue()
            return 0, lint, build_projects, output.getvalue()

    def test_project_build(self):
        code, lint, builds, _ = self.run_build('P')
        self.assertEqual(code, 0)
        builds.assert_called_once_with(['P'], ['P', 'Q'])
        lint.assert_called_once()

    def test_default_builds_all_projects(self):
        code, _, builds, _ = self.run_build()
        self.assertEqual(code, 0)
        builds.assert_called_once_with(['P', 'Q'], ['P', 'Q'])

    def test_binary_argument_is_rejected_before_build_work(self):
        code, lint, builds, output = self.run_build('P', 'b1')
        self.assertEqual(code, 1)
        self.assertIn('Usage: make build [PROJECT]', output)
        lint.assert_not_called()
        builds.assert_not_called()

    def test_unknown_project_is_rejected_before_build_work(self):
        code, lint, builds, output = self.run_build('missing')
        self.assertEqual(code, 1)
        self.assertIn('Unknown project: missing', output)
        lint.assert_not_called()
        builds.assert_not_called()


class RebuildTargetsTest(unittest.TestCase):
    BINS = {'b1': ('b1.bin', 0), 'b2': ('b2.bin', 0)}

    def test_all_binaries_by_default(self):
        self.assertEqual(build._rebuild_targets('P', self.BINS, None, None),
                         (['b1', 'b2'], None))

    def test_a_real_binary_still_selects_one(self):
        self.assertEqual(build._rebuild_targets('P', self.BINS, 'b2', 'r'),
                         (['b2'], 'r'))

    def test_a_routine_selects_every_binary_that_contains_it(self):
        with mock.patch.object(build, '_routine_donors',
                               return_value=['b1', 'b2']):
            self.assertEqual(build._rebuild_targets('P', self.BINS, 'r', None),
                             (['b1', 'b2'], 'r'))

    def test_unknown_routine(self):
        with mock.patch.object(build, '_routine_donors', return_value=[]):
            with self.assertRaises(SystemExit):
                build._rebuild_targets('P', self.BINS, 'r', None)

    def test_shared_alone_is_not_a_routine(self):
        out = io.StringIO()
        with contextlib.redirect_stdout(out):
            with self.assertRaises(SystemExit):
                build._rebuild_targets('P', self.BINS, 'shared', None)
        self.assertIn('pass the routine instead', out.getvalue())


if __name__ == '__main__':
    unittest.main()
