"""Guardrail: no code may live in ``__init__.py`` (project convention).

The toolchain uses implicit namespace packages (PEP 420), so an ``__init__.py``
is never required — with a single exception: ``tests/__init__.py``, which
the stdlib ``unittest`` discovery needs in order to treat the test directory as
a package.  Keeping the rest of the tree free of ``__init__.py`` stops
implementation from being squirrelled away in a file that is easy to overlook;
put code in a sibling module instead.
"""

import ast
import os
import pathlib
import unittest

_ASM = pathlib.Path(__file__).resolve().parents[1]
_TESTS_INIT = _ASM / 'tests' / '__init__.py'
# ``unittest discover`` refuses a test directory without ``__init__.py``; no
# other package may have one.
_ALLOWED = {_TESTS_INIT}
_SKIP_DIRS = {'tools', '.git', '__pycache__', 'build_out'}


def _init_files():
    """Every ``__init__.py`` under ``disassembler/`` except vendored ``tools/``."""
    found = set()
    for dirpath, dirnames, filenames in os.walk(_ASM):
        dirnames[:] = [d for d in dirnames if d not in _SKIP_DIRS]
        if '__init__.py' in filenames:
            found.add(pathlib.Path(dirpath) / '__init__.py')
    return found


class NoCodeInInitTest(unittest.TestCase):
    def test_only_the_test_package_has_an_init(self):
        extra = sorted(_init_files() - _ALLOWED)
        self.assertEqual(
            extra, [],
            'unexpected __init__.py: ' + ', '.join(str(p) for p in extra)
            + ' — this project uses namespace packages, so move any code to a '
              'sibling module and leave only disassembler/tests/__init__.py.')

    def test_allowed_init_holds_no_code(self):
        for path in sorted(_init_files() & _ALLOWED):
            tree = ast.parse(path.read_text())
            for node in tree.body:
                if isinstance(node, ast.Expr) and isinstance(node.value, ast.Constant):
                    continue  # module docstring
                if isinstance(node, (ast.Import, ast.ImportFrom)):
                    continue
                if isinstance(node, ast.Assign) and all(
                        isinstance(t, ast.Name) and t.id == '__all__'
                        for t in node.targets):
                    continue
                self.fail(f'{path} contains executable code '
                          f'({type(node).__name__} at line {node.lineno}); '
                          'keep __init__.py to a docstring only')


if __name__ == '__main__':
    unittest.main()
