"""``make lint`` rules and fixers (``lib``-free unit tests)."""

import unittest

import lint.core as lint


def _rules(extension):
    return [rule for rule in lint.rules() if extension in rule.extensions]


class DecimalConstantsTest(unittest.TestCase):
    def setUp(self):
        self.rule = next(rule for rule in _rules('.c')
                         if rule.name == 'c-decimal')

    def test_hex_in_code_is_found(self):
        text = 'int x = 0x10;\n'
        found = list(self.rule.check(text, 'x.c'))
        self.assertEqual(len(found), 1)
        self.assertEqual((found[0].line, found[0].col), (1, 9))
        self.assertIn("'0x10'", found[0].message)

    def test_comments_strings_and_characters_are_ignored(self):
        text = ('/* 0xaa */\n'
                'char *s = "0xbb";\n'
                "char c = '\\x41';\n"
                '// 0xcc\n')
        self.assertEqual(list(self.rule.check(text, 'x.c')), [])

    def test_preprocessor_hex_is_found(self):
        text = '#define MAGIC 0xff\n'
        found = list(self.rule.check(text, 'x.c'))
        self.assertEqual(len(found), 1)
        self.assertEqual(found[0].line, 1)

    def test_fix_uses_decimal_and_keeps_the_type(self):
        text = ('int a = 0x10; /* 0xaa */\n'
                'char *s = "0x20";\n'
                'unsigned b = 0xffff;\n'
                'long c = 0x10000;\n')
        fixed = self.rule.fix(text, 'x.c')
        self.assertEqual(fixed,
                         'int a = 16; /* 0xaa */\n'
                         'char *s = "0x20";\n'
                         'unsigned b = (unsigned)65535;\n'
                         'long c = 65536;\n')

    def test_fix_is_idempotent(self):
        once = self.rule.fix('int x = 0x10;\n', 'x.c')
        self.assertEqual(self.rule.fix(once, 'x.c'), once)


class HlmacrosIncludeTest(unittest.TestCase):
    def setUp(self):
        self.rule = next(rule for rule in _rules('.s')
                         if rule.name == 'asm-hlmacros')

    def test_missing_include_is_found(self):
        found = list(self.rule.check('\tinclude\tlmacros.h\n', 'x.s'))
        self.assertEqual(len(found), 1)
        self.assertEqual(found[0].rule, 'asm-hlmacros')

    def test_fix_inserts_after_lmacros(self):
        text = '; comment\n\tinclude\tlmacros.h\n\tassume\tcs:codeseg\n'
        self.assertEqual(
            self.rule.fix(text, 'x.s'),
            '; comment\n\tinclude\tlmacros.h\n\tinclude\thlmacros.h\n'
            '\tassume\tcs:codeseg\n')

    def test_fix_inserts_after_leading_comments_without_lmacros(self):
        text = '; comment\n\n\tassume\tcs:codeseg\n'
        self.assertEqual(
            self.rule.fix(text, 'x.s'),
            '; comment\n\n\tinclude\thlmacros.h\n\tassume\tcs:codeseg\n')

    def test_present_include_is_accepted(self):
        text = '\tinclude\tlmacros.h\n\tinclude\thlmacros.h\n'
        self.assertEqual(list(self.rule.check(text, 'x.s')), [])
        self.assertEqual(self.rule.fix(text, 'x.s'), text)


class StructuredIndentTest(unittest.TestCase):
    def setUp(self):
        self.rule = next(rule for rule in _rules('.s')
                         if rule.name == 'asm-indent')

    def test_correct_nesting_has_no_findings(self):
        text = ('\t.if\tal\n'
                '\t\tmov\tax,1\n'
                '\t\t.if\tbl\n'
                '\t\t\tmov\tax,2\n'
                '\t\t.endif\n'
                '\t.else\n'
                '\t\tmov\tax,3\n'
                '\t.endif\n')
        self.assertEqual(list(self.rule.check(text, 'x.s')), [])

    def test_bad_body_indent_is_reported_and_fixed(self):
        text = '\t.if\tal\n\tmov\tax,1\n\t.endif\n'
        found = list(self.rule.check(text, 'x.s'))
        self.assertEqual(len(found), 1)
        self.assertIn('expected 2 tab(s), found 1', found[0].message)
        self.assertEqual(self.rule.fix(text, 'x.s'),
                         '\t.if\tal\n\t\tmov\tax,1\n\t.endif\n')

    def test_closers_line_up_with_their_opener(self):
        text = '\t.if\tal\n\t\tmov\tax,1\n\t\t.endif\n'
        found = list(self.rule.check(text, 'x.s'))
        self.assertEqual(len(found), 1)
        self.assertIn('expected 1 tab(s), found 2', found[0].message)
        self.assertEqual(self.rule.fix(text, 'x.s'),
                         '\t.if\tal\n\t\tmov\tax,1\n\t.endif\n')

    def test_labels_blank_lines_and_comments_are_ignored(self):
        text = ('\t.while\tcx\n'
                'next:\n'
                '\n'
                '\t\t; comment\n'
                '\t\tdec\tcx\n'
                '\t.endw\n')
        self.assertEqual(list(self.rule.check(text, 'x.s')), [])

    def test_mismatched_closer_is_reported(self):
        found = list(self.rule.check('\t.endif\n', 'x.s'))
        self.assertEqual(len(found), 1)
        self.assertIn('without .if', found[0].message)


class HlmacroUsageTest(unittest.TestCase):
    def setUp(self):
        self.rule = next(rule for rule in _rules('.s')
                         if rule.name == 'asm-macros')

    def _usage(self, text):
        return [finding.message for finding in self.rule.check(text, 'x.s')]

    def test_frame_and_unframe(self):
        text = ('\tpush\tbp\n'
                '\tmov\tbp,sp\n'
                '\tsub\tsp,4\n'
                '\tmov\tsp,bp\n'
                '\tpop\tbp\n'
                '\tret\n')
        self.assertEqual(self._usage(text),
                         ["use 'frame 4'", "use 'unframe'"])
        self.assertEqual(self.rule.fix(text, 'x.s'),
                         '\tframe\t4\n\tunframe\n')

    def test_interrupt_forms(self):
        cases = {
            'mov\tsi,1\n': None,
            'mov\tah,3fh\nint\t21h\n': "use 'dos 3fh'",
            'mov\tah,3fh\nmov\tal,1\nint\t21h\n': "use 'dos 3fh,1'",
            'mov\tax,4c00h\nint\t21h\n': "use 'dosx 4c00h'",
            'mov\tah,0fh\nint\t10h\n': "use 'video 0fh'",
            'mov\tax,1a00h\nint\t10h\n': "use 'videox 1a00h'",
            'mov\tah,1\nint\t16h\n': "use 'kbd 1'",
            'mov\tah,42h\nint\t67h\n': "use 'ems 42h'",
            'mov\tax,0\nint\t33h\n': "use 'mouse 0'",
        }
        for source, wanted in cases.items():
            text = ''.join('\t' + line + '\n' for line in source.splitlines())
            self.assertEqual(self._usage(text), [] if wanted is None else [wanted])

    def test_pushs_and_pops_need_two_registers(self):
        text = '\tpush\tds\n\tpush\tes\n\tpop\tes\n\tpop\tds\n'
        self.assertEqual(self._usage(text),
                         ["use 'pushs ds,es'", "use 'pops es,ds'"])
        self.assertEqual(self.rule.fix(text, 'x.s'),
                         '\tpushs\tds,es\n\tpops\tes,ds\n')
        self.assertEqual(self._usage('\tpush\tds\n'), [])

    def test_movseg_and_outp(self):
        text = ('\tmov\tax,ds\n'
                '\tmov\tes,ax\n'
                '\tmov\tdx,388h\n'
                '\tmov\tal,40h\n'
                '\tout\tdx,al\n')
        self.assertEqual(self._usage(text),
                         ["use 'movseg es,ds'", "use 'outp 388h,40h'"])

    def test_umin_and_umax_keep_the_label(self):
        text = ('\tcmp\tax,5\n'
                '\tjb\tok\n'
                '\tmov\tax,5\n'
                'ok:\n')
        self.assertEqual(self._usage(text), ["use 'umin ax,5'"])
        self.assertEqual(self.rule.fix(text, 'x.s'), '\tumin\tax,5\nok:\n')

        text = ('\tcmp\tax,5\n'
                '\tjae\tok\n'
                '\tmov\tax,5\n'
                'ok:\n')
        self.assertEqual(self._usage(text), ["use 'umax ax,5'"])

    def test_fatal(self):
        text = ('\tmov\tax,cs\n'
                '\tmov\tds,ax\n'
                '\tmov\tdx,offset message\n'
                '\tmov\tah,9\n'
                '\tint\t21h\n'
                '\tmov\tax,4c01h\n'
                '\tint\t21h\n')
        self.assertEqual(self._usage(text), ["use 'fatal message'"])
        self.assertEqual(self.rule.fix(text, 'x.s'),
                         '\tfatal\tmessage\n')

    def test_comments_move_to_the_macro_line(self):
        text = ('\tmov\tah,9\t; print\n'
                '\tint\t21h\n')
        self.assertEqual(self.rule.fix(text, 'x.s'),
                         '\tdos\t9\t; print\n')

    def test_a_label_blocks_a_match(self):
        text = ('\tpush\tds\n'
                'label:\n'
                '\tpush\tes\n')
        self.assertEqual(self._usage(text), [])

    def test_fix_is_idempotent(self):
        text = ('\tpush\tbp\n'
                '\tmov\tbp,sp\n'
                '\tpush\tds\n'
                '\tpush\tes\n'
                '\tmov\tax,ds\n'
                '\tmov\tes,ax\n'
                '\tmov\tsp,bp\n'
                '\tpop\tbp\n'
                '\tret\n')
        once = self.rule.fix(text, 'x.s')
        self.assertEqual(self.rule.fix(once, 'x.s'), once)


class RoutingTest(unittest.TestCase):
    def test_c_rules_do_not_run_on_asm(self):
        rules = {finding.rule
                 for finding in lint.check_text('\tmov\tax,0x10\n', 'x.s')}
        self.assertNotIn('c-decimal', rules)

    def test_s_rules_do_not_run_on_c(self):
        text = 'int x = 16;\n'
        self.assertEqual(lint.check_text(text, 'x.c'), [])


class RepositoryAsmTest(unittest.TestCase):
    """The checked-in hand-written ``.s`` tree stays lint-clean."""

    def test_hand_owned_asm_sources_are_clean(self):
        from make.lint import _files, _read
        findings = []
        for path in _files('DSAVANT'):
            if not path.endswith('.s'):
                continue
            findings.extend(lint.check_text(_read(path), path))
        self.assertEqual(findings, [])
