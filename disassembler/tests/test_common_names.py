"""Copies get one set of names only where the names can truthfully be one."""

import tempfile
import unittest

from lib.common_names import unify_names


def _binary(name, *routines, data=()):
    files = {f'{name}.asm': ''.join(f'{d} equ {i}\n' for i, d in enumerate(data))}
    for stem, body in routines:
        files[f'{name}/{stem}.asm'] = f'{stem}:\n' + ''.join(
            f'    {op}\n' for op in body)
        files[f'{name}.asm'] += f'%include "{name}/{stem}.asm"\n'
    return files


def _unify(*binaries):
    files = {}
    for binary in binaries:
        files.update(binary)
    with tempfile.TemporaryDirectory() as root:
        return unify_names(files, root)


class DataTest(unittest.TestCase):
    OPS = ['mov ax, [{0}]', 'mov [{1}], ax', 'mov bx, [{0}]']

    def _routine(self, x, y):
        return [op.format(x, y) for op in self.OPS]

    def test_data_at_other_addresses_gets_one_name(self):
        out = _unify(
            _binary('a', ('f', self._routine('bss_1000', 'bss_1002')),
                    data=['bss_1000', 'bss_1002']),
            _binary('b', ('f', self._routine('bss_2000', 'bss_2002')),
                    data=['bss_2000', 'bss_2002']))
        self.assertEqual(out['a/f.asm'], out['b/f.asm'])
        self.assertIn('f_bss6', out['a/f.asm'])
        self.assertIn('f_bss6 equ 0', out['a.asm'])
        self.assertIn('f_bss6 equ 0', out['b.asm'])

    def test_naming_one_variable_leaves_the_other_s_name(self):
        out = _unify(
            _binary('a', ('f', self._routine('stride', 'bss_1002')),
                    data=['stride', 'bss_1002']),
            _binary('b', ('f', self._routine('bss_2000', 'bss_2002')),
                    data=['bss_2000', 'bss_2002']))
        self.assertEqual(out['a/f.asm'], out['b/f.asm'])
        self.assertIn('stride', out['b/f.asm'])
        self.assertIn('f_bss10', out['b/f.asm'])

    def test_a_pairing_that_does_not_hold_stays(self):
        out = _unify(
            _binary('a', ('f', self._routine('bss_1000', 'bss_1000')),
                    data=['bss_1000', 'bss_1002']),
            _binary('b', ('f', self._routine('bss_2000', 'bss_2002')),
                    data=['bss_2000', 'bss_2002']))
        self.assertIn('bss_1000', out['a/f.asm'])
        self.assertIn('bss_2000', out['b/f.asm'])

    def test_data_the_binary_does_not_define_stays(self):
        out = _unify(
            _binary('a', ('f', self._routine('bss_1000', 'bss_1002')),
                    data=['bss_1000', 'bss_1002']),
            _binary('b', ('f', self._routine('bss_2000', 'bss_2002')),
                    data=['bss_2000']))
        self.assertIn('bss_1000', out['a/f.asm'])
        self.assertIn('bss_2002', out['b/f.asm'])

    def test_a_human_name_wins(self):
        out = _unify(
            _binary('a', ('f', ['mov ax, [stride]', 'ret']), data=['stride']),
            _binary('b', ('f', ['mov ax, [bss_2000]', 'ret']), data=['bss_2000']))
        self.assertEqual(out['a/f.asm'], out['b/f.asm'])
        self.assertIn('stride', out['b/f.asm'])

    def test_a_name_in_a_hand_source_stays(self):
        with tempfile.TemporaryDirectory() as root:
            import os
            from lib.autogen import hand_owned
            os.makedirs(f'{root}/b')
            with open(f'{root}/b/g.s', 'w') as f:
                f.write('extrn bss_2000\n')
            self.assertTrue(hand_owned(f'{root}/b/g.s'))
            files = {**_binary('a', ('f', ['mov ax, [bss_1000]', 'ret']),
                               data=['bss_1000']),
                     **_binary('b', ('f', ['mov ax, [bss_2000]', 'ret']),
                               data=['bss_2000'])}
            out = unify_names(files, root)
        self.assertIn('bss_2000', out['b/f.asm'])


class CallTest(unittest.TestCase):
    def test_different_code_behind_a_call_stays(self):
        out = _unify(
            _binary('a', ('f', ['call g_GGGG', 'ret']),
                    ('g_GGGG', ['push bp', 'ret'])),
            _binary('b', ('f', ['call g_HHHH', 'ret']),
                    ('g_HHHH', ['push si', 'ret'])))
        self.assertIn('call g_GGGG', out['a/f.asm'])
        self.assertIn('call g_HHHH', out['b/f.asm'])

    def test_one_routine_behind_a_call_merges_the_callers(self):
        out = _unify(
            _binary('a', ('f', ['call g_GGGG', 'ret']),
                    ('g_GGGG', ['push bp', 'ret'])),
            _binary('b', ('f', ['call g_HHHH', 'ret']),
                    ('g_HHHH', ['push bp', 'ret'])))
        self.assertEqual(out['a/f.asm'], out['b/f.asm'])
        self.assertIn('b/g_GGGG.asm', out)
        self.assertNotIn('b/g_HHHH.asm', out)

    def test_human_names_behind_a_call_stay(self):
        out = _unify(
            _binary('a', ('f', ['call mouse_init', 'ret'])),
            _binary('b', ('f', ['call music_start', 'ret'])))
        self.assertIn('call music_start', out['b/f.asm'])


class OwnNameTest(unittest.TestCase):
    def test_a_tag_takes_the_human_name(self):
        out = _unify(
            _binary('a', ('show_message', ['push bp', 'ret'])),
            _binary('b', ('api_idx_0050_JOKU', ['push bp', 'ret'])))
        self.assertIn('b/show_message.asm', out)
        self.assertIn('b/show_message.asm', out['b.asm'])

    def test_the_first_copy_s_tag_takes_it_too(self):
        out = _unify(
            _binary('a', ('api_idx_0050_JOKU', ['push bp', 'ret'])),
            _binary('b', ('show_message', ['push bp', 'ret'])))
        self.assertIn('a/show_message.asm', out)

    def test_a_third_tagged_copy_does_not_undo_the_human_name(self):
        out = _unify(
            _binary('a', ('f_GGGG', ['push bp', 'ret'])),
            _binary('b', ('log_maze_change', ['push bp', 'ret'])),
            _binary('c', ('f_HHHH', ['push bp', 'ret'])))
        for binary in 'abc':
            self.assertIn(f'{binary}/log_maze_change.asm', out)

    def test_two_human_names_stay(self):
        out = _unify(_binary('a', ('fade_in', ['push bp', 'ret'])),
                     _binary('b', ('fade_out', ['push bp', 'ret'])))
        self.assertIn('a/fade_in.asm', out)
        self.assertIn('b/fade_out.asm', out)


class HostTest(unittest.TestCase):
    def test_the_host_keeps_its_names(self):
        out = _unify(
            {'include/host_symbols.inc': '%include "ds.asm"\n'},
            _binary('ds', ('f', ['mov ax, [bss_1000]', 'ret']), data=['bss_1000']),
            _binary('b', ('f', ['mov ax, [bss_2000]', 'ret']), data=['bss_2000']))
        self.assertIn('bss_1000', out['ds/f.asm'])
        self.assertIn('bss_2000', out['b/f.asm'])


if __name__ == '__main__':
    unittest.main()
