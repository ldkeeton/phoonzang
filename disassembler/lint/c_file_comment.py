"""``.c`` rule: a source file opens with a comment naming what it does.

One line is enough to say what belongs in the file.  Check-only: the fixer has
no way to invent the sentence, so ``make lint fix`` never writes prose.
"""

from .core import Finding, Rule, register


@register
class FileComment(Rule):
    name = 'c-file-comment'
    extensions = ('.c',)
    order = 20

    def check(self, text, path):
        for number, line in enumerate(text.splitlines(), 1):
            if not line.strip():
                continue
            if line.lstrip().startswith(('/*', '//')):
                return ()
            return (Finding(path, number, 1, self.name,
                            'start the file with a comment naming its '
                            'purpose'),)
        return ()
