"""Lint rules and fixers (``lib``-free unit tests)."""

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


class TabsTest(unittest.TestCase):
    def setUp(self):
        self.rule = next(rule for rule in _rules('.c')
                         if rule.name == 'c-tabs')

    def test_space_indent_is_found_and_fixed(self):
        text = 'foo()\n{\n    bar();\n}\n'
        found = list(self.rule.check(text, 'x.c'))
        self.assertEqual(len(found), 1)
        self.assertEqual((found[0].line, found[0].col), (3, 1))
        self.assertEqual(self.rule.fix(text, 'x.c'),
                         'foo()\n{\n\tbar();\n}\n')

    def test_tabs_and_alignment_are_accepted(self):
        text = '\tfoo(\n\t    a);\n'
        self.assertEqual(list(self.rule.check(text, 'x.c')), [])

    def test_comment_continuation_is_ignored(self):
        text = '/* first\n   second\n   third */\n'
        self.assertEqual(list(self.rule.check(text, 'x.c')), [])
        self.assertEqual(self.rule.fix(text, 'x.c'), text)

    def test_fix_is_idempotent(self):
        once = self.rule.fix('foo()\n{\n  bar();\n}\n', 'x.c')
        self.assertEqual(self.rule.fix(once, 'x.c'), once)


class TrailingSpaceTest(unittest.TestCase):
    def setUp(self):
        self.rule = next(rule for rule in _rules('.c')
                         if rule.name == 'c-trailing-space')

    def test_trailing_tabs_and_spaces_are_found(self):
        text = 'int x;   \n\t\n'
        found = list(self.rule.check(text, 'x.c'))
        self.assertEqual([(item.line, item.col) for item in found],
                         [(1, 7), (2, 1)])
        self.assertEqual(self.rule.fix(text, 'x.c'), 'int x;\n\n')

    def test_clean_lines_are_accepted(self):
        self.assertEqual(list(self.rule.check('int x;\n\n', 'x.c')), [])

    def test_crlf_line_endings_survive(self):
        text = 'int x;  \r\n'
        self.assertEqual(self.rule.fix(text, 'x.c'), 'int x;\r\n')


class FinalNewlineTest(unittest.TestCase):
    def setUp(self):
        self.rule = next(rule for rule in _rules('.c')
                         if rule.name == 'c-final-newline')

    def test_missing_newline_is_found_and_fixed(self):
        self.assertEqual(len(list(self.rule.check('int x;', 'x.c'))), 1)
        self.assertEqual(self.rule.fix('int x;', 'x.c'), 'int x;\n')

    def test_extra_blank_lines_are_removed(self):
        self.assertEqual(len(list(self.rule.check('int x;\n\n', 'x.c'))), 1)
        self.assertEqual(self.rule.fix('int x;\n\n', 'x.c'), 'int x;\n')

    def test_one_newline_and_empty_text_are_accepted(self):
        self.assertEqual(list(self.rule.check('int x;\n', 'x.c')), [])
        self.assertEqual(list(self.rule.check('', 'x.c')), [])


class CommentStyleTest(unittest.TestCase):
    def setUp(self):
        self.rule = next(rule for rule in _rules('.c')
                         if rule.name == 'c-comment-style')

    def test_slash_comment_is_found_and_fixed(self):
        text = 'int x; // note\nchar *s = "// not a comment";\n'
        found = list(self.rule.check(text, 'x.c'))
        self.assertEqual(len(found), 1)
        self.assertEqual(found[0].line, 1)
        self.assertEqual(self.rule.fix(text, 'x.c'),
                         'int x; /* note */\n'
                         'char *s = "// not a comment";\n')

    def test_comment_with_a_closing_marker_is_not_fixed(self):
        text = '// a */ b\n'
        found = list(self.rule.check(text, 'x.c'))
        self.assertEqual(len(found), 1)
        self.assertFalse(found[0].fixable)
        self.assertEqual(self.rule.fix(text, 'x.c'), text)

    def test_fix_is_idempotent(self):
        once = self.rule.fix('// note\n', 'x.c')
        self.assertEqual(self.rule.fix(once, 'x.c'), once)


class FunctionBraceTest(unittest.TestCase):
    def setUp(self):
        self.rule = next(rule for rule in _rules('.c')
                         if rule.name == 'c-function-brace')

    def test_same_line_brace_is_found_and_moved(self):
        text = 'int foo(a) {\n\treturn a;\n}\n'
        found = list(self.rule.check(text, 'x.c'))
        self.assertEqual(len(found), 1)
        self.assertEqual(found[0].col, 12)
        self.assertEqual(self.rule.fix(text, 'x.c'),
                         'int foo(a)\n{\n\treturn a;\n}\n')

    def test_next_line_brace_is_accepted(self):
        text = 'int foo(a)\n{\n\treturn a;\n}\n'
        self.assertEqual(list(self.rule.check(text, 'x.c')), [])

    def test_control_and_struct_braces_are_ignored(self):
        text = 'if (x) {\n}\nstruct x {\n};\n'
        self.assertEqual(list(self.rule.check(text, 'x.c')), [])


class KnrTest(unittest.TestCase):
    def setUp(self):
        self.rule = next(rule for rule in _rules('.c')
                         if rule.name == 'c-knr')

    def test_typed_definition_is_found(self):
        found = list(self.rule.check('foo(int a)\n{\n}\n', 'x.c'))
        self.assertEqual(len(found), 1)
        self.assertIn('int', found[0].message)

    def test_typed_prototype_and_void_are_found(self):
        self.assertEqual(
            len(list(self.rule.check('int foo(int a);\n', 'x.c'))), 1)
        self.assertEqual(
            len(list(self.rule.check('foo(void)\n{\n}\n', 'x.c'))), 1)

    def test_knr_definition_and_bare_call_are_accepted(self):
        text = ('foo(a)\nint a;\n{\n}\n'
                'foo(bar);\n'
                'assert(sizeof(int) == 1);\n')
        self.assertEqual(list(self.rule.check(text, 'x.c')), [])


class DeclarationOrderTest(unittest.TestCase):
    def setUp(self):
        self.rule = next(rule for rule in _rules('.c')
                         if rule.name == 'c-declaration-order')

    def test_declaration_after_statement_is_found(self):
        text = 'foo()\n{\n\tint a;\n\ta = 1;\n\tint b;\n}\n'
        found = list(self.rule.check(text, 'x.c'))
        self.assertEqual(len(found), 1)
        self.assertEqual(found[0].line, 5)

    def test_declarations_first_and_nested_blocks_are_accepted(self):
        text = ('foo()\n{\n\tint a;\n\tif (a) {\n\t\tint b;\n'
                '\t\tb = 1;\n\t}\n}\n')
        self.assertEqual(list(self.rule.check(text, 'x.c')), [])

    def test_struct_members_and_parameter_declarations_are_accepted(self):
        text = ('struct x {\n\tint a;\n};\n'
                'foo(a)\nint a;\n{\n\ta = 1;\n}\n')
        self.assertEqual(list(self.rule.check(text, 'x.c')), [])

    def test_wrapped_knr_header_parameter_declarations_are_accepted(self):
        text = ('foo(a,\n\tb)\nint a,\n\tb;\n{\n\ta = b;\n}\n')
        self.assertEqual(list(self.rule.check(text, 'x.c')), [])

    def test_declaration_after_a_label_is_found(self):
        text = 'foo()\n{\n\tint a;\n\ta = 1;\nlabel:\n\tint b;\n}\n'
        found = list(self.rule.check(text, 'x.c'))
        self.assertEqual(len(found), 1)
        self.assertEqual(found[0].line, 6)

    def test_top_level_inline_assembly_does_not_poison_c_declarations(self):
        text = ('#asm\nentry: mov ax,bx\n#endasm\n'
                'static\nfoo()\n{\n\tint a;\n\treturn a;\n}\n')
        self.assertEqual(list(self.rule.check(text, 'x.c')), [])

    def test_declaration_after_inline_assembly_is_still_found(self):
        text = ('foo()\n{\n#asm\nmov ax,bx\n#endasm\n'
                '\tint late;\n}\n')
        found = list(self.rule.check(text, 'x.c'))
        self.assertEqual([item.line for item in found], [6])

    def test_split_static_headers_preserve_declaration_checks(self):
        text = ('static\nfirst()\n{\n\tint a;\n\ta = 1;\n}\n'
                'static\nsecond()\n{\n\tint b;\n\tb = 1;\n\tint late;\n}\n')
        found = list(self.rule.check(text, 'x.c'))
        self.assertEqual([item.line for item in found], [12])

    def test_typedef_declarations_do_not_count_as_statements(self):
        text = ('typedef unsigned size_t;\n'
                'typedef struct list {\n\tstruct list *next;\n} l_t;\n'
                'foo()\n{\n\tl_t *p;\n\tsize_t n;\n\tchar *s;\n'
                '\tn = 1;\n\tsize_t late;\n}\n')
        found = list(self.rule.check(text, 'x.c'))
        self.assertEqual([item.line for item in found], [11])

    def test_multiline_declaration_continuation_is_accepted(self):
        text = 'foo()\n{\n\tint a,\n\t    b;\n\tint c;\n\ta = b;\n}\n'
        self.assertEqual(list(self.rule.check(text, 'x.c')), [])


class CommaSpaceTest(unittest.TestCase):
    def setUp(self):
        self.rule = next(rule for rule in _rules('.c')
                         if rule.name == 'c-comma-space')

    def test_missing_space_is_found_and_fixed(self):
        found = list(self.rule.check('f(a,b);\n', 'x.c'))
        self.assertEqual(len(found), 1)
        self.assertEqual(found[0].col, 4)
        self.assertEqual(self.rule.fix('f(a,b);\n', 'x.c'), 'f(a, b);\n')

    def test_strings_and_comments_are_ignored(self):
        text = 'char *s = "a,b";\n/* a,b */\n'
        self.assertEqual(list(self.rule.check(text, 'x.c')), [])
        self.assertEqual(self.rule.fix(text, 'x.c'), text)


class KeywordSpaceTest(unittest.TestCase):
    def setUp(self):
        self.rule = next(rule for rule in _rules('.c')
                         if rule.name == 'c-keyword-space')

    def test_missing_space_is_found_and_fixed(self):
        text = 'if(x) {\n}\nreturn(x);\n'
        found = list(self.rule.check(text, 'x.c'))
        self.assertEqual([item.line for item in found], [1, 3])
        self.assertEqual(self.rule.fix(text, 'x.c'),
                         'if (x) {\n}\nreturn (x);\n')

    def test_spaced_keywords_and_strings_are_ignored(self):
        text = 'if (x) {\n}\nchar *s = "if(x)";\n'
        self.assertEqual(list(self.rule.check(text, 'x.c')), [])


class LineLengthTest(unittest.TestCase):
    def setUp(self):
        self.rule = next(rule for rule in _rules('.c')
                         if rule.name == 'c-line-length')

    def _long(self):
        return ('\tcall(alpha_one, beta_two, gamma_three, delta_four,'
                ' epsilon_five, zeta_six, eta_seven);\n')

    def test_long_call_wraps_at_a_comma(self):
        text = self._long()
        found = list(self.rule.check(text, 'x.c'))
        self.assertEqual(len(found), 1)
        self.assertTrue(found[0].fixable)
        fixed = self.rule.fix(text, 'x.c')
        self.assertTrue(all(len(line) <= 79 for line in fixed.splitlines()))
        self.assertIn('\n\t\t', fixed)

    def test_condition_wraps_before_the_operator(self):
        text = ('\tif (first_part_here && second_part_here &&'
                ' third_part_here && fourth_part_here)\n')
        fixed = self.rule.fix(text, 'x.c')
        self.assertTrue(all(len(line) <= 79 for line in fixed.splitlines()))
        self.assertIn('\n\t\t&& ', fixed)

    def test_long_comment_wraps_as_prose(self):
        text = '/* ' + 'word ' * 20 + '*/\n'
        found = list(self.rule.check(text, 'x.c'))
        self.assertEqual(len(found), 1)
        fixed = self.rule.fix(text, 'x.c')
        self.assertTrue(all(len(line) <= 79 for line in fixed.splitlines()))
        self.assertTrue(fixed.rstrip().endswith('*/'))

    def test_an_assignment_breaks_after_the_operator(self):
        text = ('\t\tresult_total = table_one[index_one][index_two]'
                ' + table_two[index_three][index_four];\n')
        self.assertEqual(self.rule.fix(text, 'x.c'),
                         '\t\tresult_total =\n'
                         '\t\t\ttable_one[index_one][index_two]'
                         ' + table_two[index_three][index_four];\n')

    def test_the_closing_marker_never_stands_alone(self):
        text = '/* ' + 'x' * 70 + ' tail */\n'
        fixed = self.rule.fix(text, 'x.c')
        self.assertNotIn('*/', [line.strip() for line in fixed.splitlines()])
        self.assertTrue(all(len(line) <= 79 for line in fixed.splitlines()))

    def test_short_lines_are_accepted(self):
        self.assertEqual(list(self.rule.check('int x;\n', 'x.c')), [])

    def test_one_long_token_is_reported_but_not_fixed(self):
        text = '\t' + 'a' * 100 + ';\n'
        found = list(self.rule.check(text, 'x.c'))
        self.assertEqual(len(found), 1)
        self.assertFalse(found[0].fixable)
        self.assertEqual(self.rule.fix(text, 'x.c'), text)

    def test_wrapping_keeps_every_token(self):
        text = self._long()
        fixed = self.rule.fix(text, 'x.c')
        self.assertEqual(text.split(), fixed.split())

    def test_fix_is_idempotent(self):
        once = self.rule.fix(self._long(), 'x.c')
        self.assertEqual(self.rule.fix(once, 'x.c'), once)


class CommentColumnTest(unittest.TestCase):
    def setUp(self):
        self.rule = next(rule for rule in _rules('.c')
                         if rule.name == 'c-comment-column')

    def test_a_ragged_run_is_aligned(self):
        text = '\tfoo();\t/* a */\n\tbarbar();\t/* b */\n'
        found = list(self.rule.check(text, 'x.c'))
        self.assertEqual([item.line for item in found], [1])
        self.assertEqual(self.rule.fix(text, 'x.c'),
                         '\tfoo();\t\t/* a */\n\tbarbar();\t/* b */\n')

    def test_an_aligned_run_is_left_alone(self):
        text = '\tfoo();\t\t/* a */\n\tbarbar();\t/* b */\n'
        self.assertEqual(list(self.rule.check(text, 'x.c')), [])
        self.assertEqual(self.rule.fix(text, 'x.c'), text)

    def test_a_lone_comment_is_left_alone(self):
        text = '\tfoo();     /* a */\n'
        self.assertEqual(list(self.rule.check(text, 'x.c')), [])
        self.assertEqual(self.rule.fix(text, 'x.c'), text)


class StructLayoutTest(unittest.TestCase):
    def setUp(self):
        self.rule = next(rule for rule in _rules('.c')
                         if rule.name == 'c-struct-layout')

    def test_one_line_struct_is_expanded(self):
        text = 'struct pair { char lo, hi; };\n'
        found = list(self.rule.check(text, 'x.c'))
        self.assertEqual(len(found), 1)
        self.assertEqual(self.rule.fix(text, 'x.c'),
                         'struct pair {\n\tchar lo, hi;\n};\n')

    def test_declarator_and_comment_are_kept(self):
        text = 'extern struct { int a; long b; } table[];\t/* 8 bytes */\n'
        self.assertEqual(self.rule.fix(text, 'x.c'),
                         'extern struct {\n\tint a;\n\tlong b;\n'
                         '} table[];\t/* 8 bytes */\n')

    def test_multiline_struct_is_left_alone(self):
        text = 'struct pair {\n\tchar lo, hi;\n};\n'
        self.assertEqual(list(self.rule.check(text, 'x.c')), [])
        self.assertEqual(self.rule.fix(text, 'x.c'), text)

    def test_fix_is_idempotent(self):
        once = self.rule.fix('struct pair { char lo, hi; };\n', 'x.c')
        self.assertEqual(self.rule.fix(once, 'x.c'), once)


class FileCommentTest(unittest.TestCase):
    def setUp(self):
        self.rule = next(rule for rule in _rules('.c')
                         if rule.name == 'c-file-comment')

    def test_missing_comment_is_found(self):
        found = list(self.rule.check('struct x {\n};\n', 'x.c'))
        self.assertEqual(len(found), 1)
        self.assertEqual(found[0].line, 1)

    def test_leading_comment_is_accepted(self):
        text = '\n\n/* says what this file is */\nint x;\n'
        self.assertEqual(list(self.rule.check(text, 'x.c')), [])

    def test_empty_file_is_accepted(self):
        self.assertEqual(list(self.rule.check('', 'x.c')), [])


class FunctionCommentTest(unittest.TestCase):
    def setUp(self):
        self.rule = next(rule for rule in _rules('.c')
                         if rule.name == 'c-function-comment')

    def test_missing_comment_is_found(self):
        text = 'foo(a)\nint a;\n{\n\treturn a;\n}\n'
        found = list(self.rule.check(text, 'x.c'))
        self.assertEqual(len(found), 1)
        self.assertEqual(found[0].line, 1)

    def test_comment_above_the_name_is_accepted(self):
        text = '/* returns a */\nfoo(a)\nint a;\n{\n\treturn a;\n}\n'
        self.assertEqual(list(self.rule.check(text, 'x.c')), [])

    def test_the_file_comment_covers_the_first_function(self):
        text = '/* file purpose */\nextern int g;\nfoo()\n{\n}\n'
        self.assertEqual(list(self.rule.check(text, 'x.c')), [])

    def test_a_second_function_still_needs_its_own_comment(self):
        text = ('/* file purpose */\n'
                'first()\n{\n}\n'
                'extern int g;\n'
                'second()\n{\n}\n')
        found = list(self.rule.check(text, 'x.c'))
        self.assertEqual([item.line for item in found], [6])


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

    def test_explicit_frame_is_left_alone(self):
        text = ('\tpush\tbp\n'
                '\tmov\tbp,sp\n'
                '\tsub\tsp,4\n'
                '\tmov\tsp,bp\n'
                '\tpop\tbp\n'
                '\tret\n')
        self.assertEqual(self._usage(text), [])
        self.assertEqual(self.rule.fix(text, 'x.s'), text)

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
        text = '/* a file */\nint x = 16;\n'
        rules = {finding.rule for finding in lint.check_text(text, 'x.c')}
        self.assertTrue(all(rule.startswith('c-') for rule in rules))
