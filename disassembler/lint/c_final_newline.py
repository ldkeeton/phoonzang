"""``.c`` rule: end the file with exactly one newline."""

from .core import Finding, Rule, register


@register
class FinalNewline(Rule):
    name = 'c-final-newline'
    extensions = ('.c',)
    order = 75

    def check(self, text, path):
        if not text:
            return ()
        ending = '\r\n' if '\r\n' in text else '\n'
        if text == text.rstrip('\r\n') + ending:
            return ()
        return (Finding(path, text.count('\n') + 1, 1, self.name,
                        'file must end with exactly one newline',
                        fixable=True),)

    def fix(self, text, path):
        if not text:
            return text
        ending = '\r\n' if '\r\n' in text else '\n'
        return text.rstrip('\r\n') + ending
