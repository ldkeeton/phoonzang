import contextlib
import io
import os
import shutil
import tempfile
import unittest
from unittest import mock

from lib import shared
from lib.autogen import write_text

BODY = '{name}:\n    push bp ; 0x{a}\n    jmp short @..{name}.l1 ; 0x{b}\n@..{name}.l1:\n    ret ; 0x{c}\n'


def _put(root, rel, text):
    os.makedirs(os.path.dirname(os.path.join(root, rel)), exist_ok=True)
    write_text(os.path.join(root, rel), text)


def _read(root, rel):
    with open(os.path.join(root, rel)) as f:
        return f.read()


class CodeKeyTest(unittest.TestCase):
    def test_short_and_qualified_local_spellings_have_the_same_key(self):
        canonical = 'owner:\njmp @..owner.back1\n@..owner.back1:\nret\n'
        short = 'owner:\njmp .back1\n.back1:\nret\n'
        qualified = 'owner:\njmp owner.back1\nowner.back1:\nret\n'
        self.assertEqual(shared._code_key(canonical), shared._code_key(short))
        self.assertEqual(shared._code_key(canonical), shared._code_key(qualified))

    def test_role_counters_do_not_merge_different_local_targets(self):
        first = ('je @..first.back1\njmp @..first.forward1\n'
                 '@..first.back1:\nnop\n@..first.forward1:\nret\n')
        renamed = first.replace('first', 'second').replace('back1', 'back3')
        self.assertEqual(shared._code_key(first), shared._code_key(renamed))
        self.assertNotEqual(shared._code_key(first), shared._code_key(
            first.replace('forward1', 'back1')))

    def test_local_label_numbers_are_renamed_by_use_order(self):
        first = '''\
            je short @..first.l8
            jmp short @..first.l3
        @..first.l8:
            ret
        @..first.l3:
            ret
        '''
        renamed = '''\
            je short @..second.l4
            jmp short @..second.l9
        @..second.l4:
            ret
        @..second.l9:
            ret
        '''
        different_flow = renamed.replace('@..second.l9', '@..second.l4')

        self.assertEqual(shared._code_key(first), shared._code_key(renamed))
        self.assertNotEqual(shared._code_key(first),
                            shared._code_key(different_flow))


class ShareIdenticalTest(unittest.TestCase):
    def _tree(self, root):
        _put(root, 'a/f.asm', BODY.format(name='f', a='0100', b='0101', c='0103'))
        _put(root, 'b/f.asm', BODY.format(name='f', a='0900', b='0901', c='0903'))
        _put(root, 'a.asm', '%include "a/f.asm"   ; 0x0100\n')
        _put(root, 'b.asm', '%include "b/f.asm"   ; 0x0900\n')

    def test_identical_fragments_move_to_shared(self):
        with tempfile.TemporaryDirectory() as root:
            self._tree(root)
            result = shared.share_identical(root)
            self.assertEqual(result, {'shared/ovr/f.asm': ['a/f.asm', 'b/f.asm']})
            self.assertFalse(os.path.exists(os.path.join(root, 'a')))
            self.assertIn('%include "shared/ovr/f.asm"   ; 0x0100', _read(root, 'a.asm'))
            self.assertIn('%include "shared/ovr/f.asm"', _read(root, 'b.asm'))
            self.assertNotIn('; 0x', _read(root, 'shared/ovr/f.asm'))

    def test_different_code_or_hand_c_stays(self):
        with tempfile.TemporaryDirectory() as root:
            self._tree(root)
            _put(root, 'c/f.asm', BODY.format(name='f', a='1', b='2', c='3')
                 .replace('push bp', 'push si'))
            with open(os.path.join(root, 'c', 'f.c'), 'w') as f:
                f.write('int f;\n')
            shared.share_identical(root)
            self.assertTrue(os.path.exists(os.path.join(root, 'c', 'f.asm')))

    def test_same_name_different_bodies_share_only_the_largest_group(self):
        with tempfile.TemporaryDirectory() as root:
            self._tree(root)                      # a, b: push bp
            for b in ('c', 'd', 'e'):
                _put(root, f'{b}/f.asm', BODY.format(name='f', a='1', b='2', c='3')
                     .replace('push bp', 'push si'))
                _put(root, f'{b}.asm', f'%include "{b}/f.asm"\n')
            result = shared.share_identical(root)
            self.assertEqual(result, {'shared/ovr/f.asm': ['c/f.asm', 'd/f.asm', 'e/f.asm']})
            self.assertTrue(os.path.exists(os.path.join(root, 'a', 'f.asm')))

    def test_hand_owned_fragment_is_untouched(self):
        with tempfile.TemporaryDirectory() as root:
            self._tree(root)
            with open(os.path.join(root, 'b', 'f.asm'), 'w') as f:
                f.write(BODY.format(name='f', a='1', b='2', c='3'))
            self.assertEqual(shared.share_identical(root), {})


if __name__ == '__main__':
    unittest.main()


class KeepAddressesTest(unittest.TestCase):
    def test_addresses_kept_only_when_copies_agree(self):
        with tempfile.TemporaryDirectory() as root:
            for b in ('a', 'b'):
                _put(root, f'{b}/f.asm', BODY.format(name='f', a='0100', b='0101', c='0103'))
                _put(root, f'{b}.asm', f'%include "{b}/f.asm"\n')
            shared.share_identical(root)
            self.assertIn('; 0x0100', _read(root, 'shared/ovr/f.asm'))


class CommonNameTest(unittest.TestCase):
    def _tree(self, root, a_ops, b_ops):
        for b, ops in (('a', a_ops), ('b', b_ops)):
            body = 'f:\n' + ''.join(f'{op}\n' for op in ops) + '    ret\n'
            _put(root, f'{b}/f.asm', body)
            _put(root, f'{b}.asm', f'%include "{b}/f.asm"\n')

    def test_numbers_or_registers_do_not_get_common_names(self):
        for a, b in (('    mov ax, 1', '    mov ax, 2'),
                     ('    push ax', '    push bx')):
            with tempfile.TemporaryDirectory() as root:
                self._tree(root, [a], [b])
                self.assertEqual(shared.share_identical(root), {})

    def test_copies_must_agree_on_which_names_repeat(self):
        for a, b in ((['bss_1', 'bss_1'], ['bss_2', 'bss_3']),
                     (['bss_2', 'bss_3'], ['bss_1', 'bss_1'])):
            with tempfile.TemporaryDirectory() as root:
                self._tree(root, [f'    mov ax, [{a[0]}]', f'    mov bx, [{a[1]}]'],
                           [f'    mov ax, [{b[0]}]', f'    mov bx, [{b[1]}]'])
                self.assertEqual(shared.share_identical(root), {})


class PlaceEqusTest(unittest.TestCase):
    def test_header_equs_move_to_the_includes_that_use_them(self):
        with tempfile.TemporaryDirectory() as root:
            _put(root, 'a/f.asm', 'f:\n    mov ax, [bss_1]\n    mov bx, [bss_2]\n')
            _put(root, 'a/g.asm', 'g:\n    mov ax, [bss_2]\n')
            _put(root, 'a.asm', 'bss_1 equ 0x10\nbss_2 equ 0x20\nbss_3 equ 0x30\n'
                 '\n%include "a/f.asm"\n\n%include "a/g.asm"\n')
            shared.share_identical(root)
            self.assertEqual(_read(root, 'a.asm').split('\n')[1:], [
                'bss_3 equ 0x30', '',
                'bss_1 equ 0x10', 'bss_2 equ 0x20', '%include "a/f.asm"', '',
                '; bss_2 equ 0x20', '%include "a/g.asm"', ''])


class SharedCTest(unittest.TestCase):
    def _tree(self, root, c_b='int f;\n'):
        for b, c in (('a', 'int f;\n'), ('b', c_b)):
            _put(root, f'{b}/f.asm', BODY.format(name='f', a='1', b='2', c='3'))
            _put(root, f'{b}/f.c', c)
            _put(root, f'{b}.asm', f'%include "{b}/f.asm"\n')

    def test_generated_identical_c_moves_with_the_asm(self):
        with tempfile.TemporaryDirectory() as root:
            self._tree(root)
            shared.share_identical(root)
            self.assertTrue(os.path.exists(os.path.join(root, 'shared', 'ovr', 'f.c')))
            self.assertFalse(os.path.exists(os.path.join(root, 'a', 'f.c')))
            self.assertNotIn('; 0x', _read(root, 'shared/ovr/f.asm'))

    def test_differing_c_stays(self):
        with tempfile.TemporaryDirectory() as root:
            self._tree(root, c_b='int g;\n')
            self.assertEqual(shared.share_identical(root), {})

    def test_hand_c_stays(self):
        with tempfile.TemporaryDirectory() as root:
            self._tree(root)
            with open(os.path.join(root, 'a', 'f.c'), 'w') as f:
                f.write('int f;\n')
            self.assertEqual(shared.share_identical(root), {})


class ShareFilesTest(unittest.TestCase):
    """The build shares on its files as data, before writing any."""

    def _files(self):
        from lib.autogen import stamp
        files = {
            'a/f.asm': BODY.format(name='f', a='0100', b='0101', c='0103'),
            'b/f.asm': BODY.format(name='f', a='0900', b='0901', c='0903'),
            'a.asm': '%include "a/f.asm"   ; 0x0100\n',
            'b.asm': '%include "b/f.asm"   ; 0x0900\n',
        }
        return {rel: stamp(text, rel) for rel, text in files.items()}

    def test_members_are_never_laid_out_and_nothing_is_written(self):
        with tempfile.TemporaryDirectory() as root:
            files, result = shared.share_files(self._files(), root, {})
            self.assertEqual(os.listdir(root), [])
        self.assertEqual(result, {'shared/ovr/f.asm': ['a/f.asm', 'b/f.asm']})
        self.assertEqual(sorted(files), ['a.asm', 'b.asm', 'shared/ovr/f.asm'])
        self.assertIn('%include "shared/ovr/f.asm"', files['a.asm'])

    def test_hand_owned_c_does_not_change_assembly_sharing(self):
        with tempfile.TemporaryDirectory() as root:
            os.makedirs(os.path.join(root, 'b'))
            with open(os.path.join(root, 'b', 'f.c'), 'w') as f:
                f.write('int f;\n')
            files, result = shared.share_files(self._files(), root, {})
        self.assertEqual(result, {'shared/ovr/f.asm': ['a/f.asm', 'b/f.asm']})
        self.assertNotIn('b/f.asm', files)
        self.assertFalse([p for p in files if p.endswith('.c')])


class AddressDataTest(unittest.TestCase):
    """A data file named for its address is its binary's own."""

    def _files(self, stem):
        from lib.autogen import stamp
        files = {
            f'a/data/{stem}.asm': f'__z{stem}:\n    db 0x56, 0x00\n',
            f'b/data/{stem}.asm': f'__z{stem}:\n    db 0x56, 0x00\n',
            'a.asm': f'%include "a/data/{stem}.asm"   ; 0x3773\n',
            'b.asm': f'%include "b/data/{stem}.asm"   ; 0x3773\n',
        }
        return {rel: stamp(text, rel) for rel, text in files.items()}

    def test_one_address_in_two_programs_is_not_shared(self):
        with tempfile.TemporaryDirectory() as root:
            _, result = shared.share_files(self._files('dseg_9098'), root, {})
        self.assertEqual(result, {})

    def test_a_named_object_still_is(self):
        with tempfile.TemporaryDirectory() as root:
            _, result = shared.share_files(self._files('save_si'), root, {})
        self.assertEqual(list(result), ['shared/data/save_si.asm'])

    def test_binary_local_is_the_address_name_in_a_data_folder(self):
        self.assertTrue(shared.binary_local('vmele/data/dseg_9098.asm'))
        self.assertTrue(shared.binary_local('ega/data/cseg_1add.asm'))
        self.assertFalse(shared.binary_local('ega/data/mouse_drawn_y.asm'))
        self.assertFalse(shared.binary_local('play/cseg_0870.asm'))


class OtherNameTest(unittest.TestCase):
    """Copies whose content tags differ share when their code agrees."""

    @staticmethod
    def _table(*texts):
        from lib.symtab import Kind, Space, Symbol
        table = {}
        for text in texts:
            if text.startswith('bss_'):
                table[text] = Symbol.data(Space.BSS, int(text[4:], 16))
            else:
                table[text] = Symbol.generated('leaf_loc', 0, Kind.ROUTINE,
                                               text=text)
        return table

    def _share(self, copies, tables):
        """*copies* ``{binary: (label, body lines)}``."""
        files = {}
        for b, (name, ops) in copies.items():
            files[f'{b}/{name}.asm'] = (f'{name}:\n' + ''.join(
                f'    {op}\n' for op in ops) + f'    jmp short @..{name}.l1\n'
                f'@..{name}.l1:\n    ret\n')
            files[f'{b}.asm'] = f'%include "{b}/{name}.asm"\n'
        with tempfile.TemporaryDirectory() as root:
            return shared.share_files(files, root, tables)

    def test_same_code_under_two_tags_shares_one_file(self):
        files, result = self._share(
            {'a': ('f_GGGG', ['push bp']), 'b': ('f_HHHH', ['push bp']),
             'c': ('f_GGGG', ['push bp'])},
            {'a': self._table('f_GGGG'), 'b': self._table('f_HHHH'),
             'c': self._table('f_GGGG')})
        self.assertEqual(result, {'shared/ovr/f_GGGG.asm':
                                  ['a/f_GGGG.asm', 'b/f_HHHH.asm', 'c/f_GGGG.asm']})
        self.assertIn('f_HHHH equ f_GGGG\n%include "shared/ovr/f_GGGG.asm"',
                      files['b.asm'])
        self.assertEqual(files['a.asm'], '%include "shared/ovr/f_GGGG.asm"\n')
        self.assertIn('@..f_GGGG.l1:', files['shared/ovr/f_GGGG.asm'])

    def test_label_and_the_names_it_uses_both_alias(self):
        files, result = self._share(
            {'a': ('f_GGGG', ['mov ax, [bss_10]']),
             'b': ('f_HHHH', ['mov ax, [bss_20]'])},
            {'a': self._table('f_GGGG', 'bss_10'),
             'b': self._table('f_HHHH', 'bss_20')})
        self.assertEqual(list(result), ['shared/ovr/f_GGGG.asm'])
        self.assertIn('mov ax, [f_GGGG.bss1]', files['shared/ovr/f_GGGG.asm'])
        self.assertIn('f_GGGG.bss1 equ bss_20', files['b.asm'])
        self.assertIn('f_HHHH      equ f_GGGG', files['b.asm'])

    def test_shared_name_taken_in_a_binary_stays(self):
        _, result = self._share(
            {'a': ('f_GGGG', ['push bp']), 'b': ('f_HHHH', ['push bp'])},
            {'a': self._table('f_GGGG'),
             'b': self._table('f_HHHH', 'f_GGGG')})
        self.assertEqual(result, {})

    def test_a_person_s_name_is_the_shared_one(self):
        files, result = self._share(
            {'a': ('f_GGGG', ['push bp']), 'b': ('f_GGGG', ['push bp']),
             'c': ('draw', ['push bp'])},
            {'a': self._table('f_GGGG'), 'b': self._table('f_GGGG'),
             'c': self._named('draw')})
        self.assertEqual(list(result), ['shared/ovr/draw.asm'])
        self.assertIn('f_GGGG equ draw', files['a.asm'])

    def test_two_people_s_names_never_alias(self):
        _, result = self._share(
            {'a': ('fade_in', ['ret']), 'b': ('fade_out', ['ret'])},
            {'a': self._named('fade_in'), 'b': self._named('fade_out')})
        self.assertEqual(result, {})

    def test_empty_functions_under_two_tags_stay(self):
        files = {'a/f_GGGG.asm': 'f_GGGG:\n    ret\n',
                 'b/f_HHHH.asm': 'f_HHHH:\n    ret\n',
                 'a.asm': '%include "a/f_GGGG.asm"\n',
                 'b.asm': '%include "b/f_HHHH.asm"\n'}
        with tempfile.TemporaryDirectory() as root:
            _, result = shared.share_files(
                files, root, {'a': self._table('f_GGGG'),
                              'b': self._table('f_HHHH')})
        self.assertEqual(result, {})

    def test_the_host_s_copy_keeps_its_own_name(self):
        from lib.symtab import Kind, Symbol
        host = {'ds_f_GGGG': Symbol.generated('f', 0, Kind.ROUTINE,
                                              prefix='ds_', text='ds_f_GGGG')}
        _, result = self._share(
            {'ds': ('ds_f_GGGG', ['push bp']), 'b': ('f_HHHH', ['push bp'])},
            {'ds': host, 'b': self._table('f_HHHH')})
        self.assertEqual(result, {})

    @staticmethod
    def _named(text):
        from lib.symtab import Kind, Source, Symbol
        return {text: Symbol(text, kind=Kind.ROUTINE, source=Source.SIDECAR)}

    def _share_with_hand(self, copies, tables, hand):
        """:meth:`_share` with hand-written sources ``{rel: text}`` on disk."""
        files = {}
        for b, (name, ops) in copies.items():
            files[f'{b}/{name}.asm'] = (f'{name}:\n' + ''.join(
                f'    {op}\n' for op in ops) + f'    jmp short @..{name}.l1\n'
                f'@..{name}.l1:\n    ret\n')
            files[f'{b}.asm'] = f'%include "{b}/{name}.asm"\n'
        with tempfile.TemporaryDirectory() as root:
            for rel, text in hand.items():
                path = os.path.join(root, rel)
                os.makedirs(os.path.dirname(path), exist_ok=True)
                with open(path, 'w') as f:
                    f.write(text)
            return shared.share_files(files, root, tables)

    def test_hand_c_does_not_change_which_tag_names_the_shared_copy(self):
        # Verification-only C does not change assembly placement or aliases.
        files, result = self._share_with_hand(
            {'a': ('f_GGGG', ['mov ax, [bss_10]']),
             'b': ('f_HHHH', ['mov ax, [bss_20]'])},
            {'a': self._table('f_GGGG', 'bss_10'),
             'b': self._table('f_HHHH', 'bss_20')},
            {'shared/ovr/f_HHHH.c': 'f_HHHH() {}\n'})
        self.assertEqual(result, {'shared/ovr/f_GGGG.asm':
                                  ['a/f_GGGG.asm', 'b/f_HHHH.asm']})
        self.assertRegex(files['b.asm'], r'f_HHHH\s+equ f_GGGG')
        self.assertIn('f_GGGG.bss1 equ bss_10', files['a.asm'])

    def test_a_named_group_of_the_same_shape_gets_no_source(self):
        # Matching assembly shares under the explicit routine name.  The
        # hand-owned C is not copied to that routine.
        files, result = self._share_with_hand(
            {'a': ('f_HHHH', ['push bp']), 'c': ('draw', ['push bp']),
             'd': ('draw', ['push bp'])},
            {'a': self._table('f_HHHH'), 'c': self._named('draw'),
             'd': self._named('draw')},
            {'shared/ovr/f_HHHH.c': 'f_HHHH() {}\n'})
        self.assertEqual(result, {'shared/ovr/draw.asm':
                                  ['a/f_HHHH.asm', 'c/draw.asm', 'd/draw.asm']})
        self.assertFalse([rel for rel in files
                          if os.path.basename(rel).startswith('draw.')
                          and not rel.endswith('.asm')])

    def test_two_hand_c_sources_do_not_split_matching_assembly(self):
        _, result = self._share_with_hand(
            {'a': ('f_GGGG', ['push bp']), 'b': ('f_HHHH', ['push bp'])},
            {'a': self._table('f_GGGG'), 'b': self._table('f_HHHH')},
            {'shared/ovr/f_GGGG.c': 'f_GGGG() {}\n',
             'shared/ovr/f_HHHH.c': 'f_HHHH() { }\n'})
        self.assertEqual(result, {'shared/ovr/f_GGGG.asm':
                                  ['a/f_GGGG.asm', 'b/f_HHHH.asm']})

    def test_different_code_under_two_tags_stays(self):
        _, result = self._share(
            {'a': ('f_GGGG', ['push bp']), 'b': ('f_HHHH', ['push si'])},
            {'a': self._table('f_GGGG'), 'b': self._table('f_HHHH')})
        self.assertEqual(result, {})


class ServedBinaryTest(unittest.TestCase):
    """A binary that already includes a shared copy has its one."""

    def test_a_binary_that_includes_the_shared_copy_is_served(self):
        with tempfile.TemporaryDirectory() as root:
            for rel, text in {
                'shared/ovr/helper.asm': 'helper:\n    ret\n',
                'a/other.asm': 'other:\n    ret\n',
                'a.asm': '%include "shared/ovr/helper.asm"\n',
            }.items():
                _put(root, rel, text)
            self.assertEqual(shared.scan(root), [])


class HostOverlayTest(unittest.TestCase):
    """A host copy and an overlay copy cannot share one file."""

    BODY = '    push bp\n    mov bp, sp\n    pop bp\n    ret\n'

    def _tree(self, files, host_symbols=True):
        root = tempfile.mkdtemp()
        self.addCleanup(shutil.rmtree, root)
        masters = {'host.asm': '', 'over.asm': '', 'over2.asm': '', 'drv.asm': ''}
        if host_symbols:
            for master in ('over.asm', 'over2.asm'):
                masters[master] = '%include "include/host_symbols.inc"\n'
            _put(root, 'include/host_symbols.inc', '%include "host.asm"\n')
        for rel, text in {**masters, **files}.items():
            _put(root, rel, text)
        return shared.scan(root)

    def test_a_host_copy_and_an_overlay_copy_are_not_reported(self):
        self.assertEqual(self._tree({
            'host/x.asm': 'x:\n' + self.BODY,
            'over/y.asm': 'y:\n' + self.BODY}), [])

    def test_a_host_copy_and_an_overlay_shared_file_are_not_reported(self):
        self.assertEqual(self._tree({
            'host/x.asm': 'x:\n' + self.BODY,
            'shared/ovr/y.asm': 'y:\n' + self.BODY,
            'over.asm': '%include "include/host_symbols.inc"\n'
                        '%include "shared/ovr/y.asm"\n',
            'over2.asm': '%include "include/host_symbols.inc"\n'
                         '%include "shared/ovr/y.asm"\n'}), [])

    def test_two_overlay_copies_are_reported(self):
        found = self._tree({'over/x.asm': 'x:\n' + self.BODY,
                            'over2/y.asm': 'y:\n' + self.BODY})
        self.assertEqual([f.kind for f in found], ['code'])

    def test_a_host_copy_with_two_overlay_copies_is_reported(self):
        found = self._tree({'host/x.asm': 'x:\n' + self.BODY,
                            'over/y.asm': 'y:\n' + self.BODY,
                            'over2/z.asm': 'z:\n' + self.BODY})
        self.assertEqual([f.kind for f in found], ['code'])

    def test_a_host_copy_and_a_driver_copy_are_reported(self):
        found = self._tree({'host/x.asm': 'x:\n' + self.BODY,
                            'drv/y.asm': 'y:\n' + self.BODY})
        self.assertEqual([f.kind for f in found], ['code'])

    def test_without_host_symbols_a_host_copy_is_an_ordinary_binary(self):
        found = self._tree({'host/x.asm': 'x:\n' + self.BODY,
                            'over/y.asm': 'y:\n' + self.BODY},
                           host_symbols=False)
        self.assertEqual([f.kind for f in found], ['code'])


class BandTest(unittest.TestCase):
    """A shared file goes in its banded copy's band folder, else ovr/."""

    def _share(self, name, ops, homes=('a', 'b'), root=None):
        files = {}
        for home in homes:
            b = home.split('/')[0]
            files[f'{home}/{name}.asm'] = f'{name}:\n' + ''.join(
                f'    {op}\n' for op in ops) + '    ret\n'
            files[f'{b}.asm'] = f'%include "{home}/{name}.asm"\n'
        if root is not None:
            return shared.share_files(files, root, {})
        with tempfile.TemporaryDirectory() as root:
            return shared.share_files(files, root, {})

    def test_banded_copy_names_the_band(self):
        for band in ('aztec', 'game', 'library'):
            with self.subTest(band=band):
                _, result = self._share('f', ['push bp'], (f'a/{band}', 'b'))
                self.assertEqual(list(result), [f'shared/{band}/f.asm'])

    def test_unbanded_copies_are_overlay(self):
        _, result = self._share('aztec_strlen', ['push bp'])
        self.assertEqual(list(result), ['shared/ovr/aztec_strlen.asm'])

    def test_copies_only_drivers_share_are_drv(self):
        for drivers, folder in (({'a', 'b'}, 'drv'), ({'a'}, 'ovr')):
            with self.subTest(drivers=drivers), mock.patch.object(
                    shared, '_drivers', return_value=frozenset(drivers)):
                _, result = self._share('f', ['push bp'])
                self.assertEqual(list(result), [f'shared/{folder}/f.asm'])

    def test_compiled_c_is_not_a_band(self):
        _, result = self._share('f', ['mov ax, 0xfff6', 'call aztec_csav'])
        self.assertEqual(list(result), ['shared/ovr/f.asm'])

    def test_hand_c_does_not_change_the_folder(self):
        with tempfile.TemporaryDirectory() as root:
            os.makedirs(os.path.join(root, 'shared'))
            with open(os.path.join(root, 'shared', 'f.c'), 'w') as f:
                f.write('int f;\n')
            files, result = self._share('f', ['push bp'], root=root)
        self.assertEqual(list(result), ['shared/ovr/f.asm'])
        self.assertFalse([p for p in files if p.endswith('.c')])


class ResharePartialTest(unittest.TestCase):
    """A partial build puts its routines back where the full build shared them."""

    def _full(self, root, a='f', b='f', tables=None):
        """A full build of binaries a and b, sharing f, written at *root*."""
        files = {}
        for name, stem in (('a', a), ('b', b)):
            files[f'{name}/{stem}.asm'] = BODY.format(name=stem, a='1', b='2', c='3')
            files[f'{name}.asm'] = f'%include "{name}/{stem}.asm"\n'
        files, result = shared.share_files(files, root, tables or {})
        self.assertEqual(len(result), 1)
        for rel, text in files.items():
            _put(root, rel, text)
        return files

    def test_an_unchanged_copy_goes_back_to_shared(self):
        with tempfile.TemporaryDirectory() as root:
            full = self._full(root)
            files, result, diverged = shared.reshare_partial(
                {'a/f.asm': BODY.format(name='f', a='7', b='8', c='9'),
                 'a.asm': '%include "a/f.asm"\n'}, root)
        self.assertEqual(result, {'shared/ovr/f.asm': ['a/f.asm']})
        self.assertEqual(diverged, [])
        self.assertEqual(files, {'a.asm': full['a.asm']})

    def test_an_aliased_copy_gets_its_aliases_back(self):
        tables = {'a': OtherNameTest._table('f_GGGG'),
                  'b': OtherNameTest._table('f_HHHH')}
        with tempfile.TemporaryDirectory() as root:
            full = self._full(root, 'f_GGGG', 'f_HHHH', tables)
            files, result, _ = shared.reshare_partial(
                {'b/f_HHHH.asm': BODY.format(name='f_HHHH', a='1', b='2', c='3'),
                 'b.asm': '%include "b/f_HHHH.asm"\n'}, root)
        self.assertEqual(result, {'shared/ovr/f_GGGG.asm': ['b/f_HHHH.asm']})
        self.assertEqual(files['b.asm'], full['b.asm'])

    def test_a_changed_copy_keeps_its_own(self):
        with tempfile.TemporaryDirectory() as root:
            self._full(root)
            changed = BODY.format(name='f', a='1', b='2', c='3').replace(
                'push bp', 'push si')
            files, result, diverged = shared.reshare_partial(
                {'a/f.asm': changed, 'a.asm': '%include "a/f.asm"\n'}, root)
        self.assertEqual(result, {})
        self.assertEqual(diverged, [('a', 'shared/ovr/f.asm')])
        self.assertEqual(files['a/f.asm'], changed)

    def test_a_changed_c_keeps_its_own(self):
        with tempfile.TemporaryDirectory() as root:
            for b in ('a', 'b'):
                _put(root, f'{b}/f.asm', BODY.format(name='f', a='1', b='2', c='3'))
                _put(root, f'{b}/f.c', 'int f;\n')
                _put(root, f'{b}.asm', f'%include "{b}/f.asm"\n')
            shared.share_identical(root)
            asm = BODY.format(name='f', a='1', b='2', c='3')
            _, same, _ = shared.reshare_partial(
                {'a/f.asm': asm, 'a/f.c': 'int f;\n',
                 'a.asm': '%include "a/f.asm"\n'}, root)
            _, other, diverged = shared.reshare_partial(
                {'a/f.asm': asm, 'a/f.c': 'int g;\n',
                 'a.asm': '%include "a/f.asm"\n'}, root)
        self.assertEqual(list(same), ['shared/ovr/f.asm'])
        self.assertEqual((other, diverged), ({}, [('a', 'shared/ovr/f.asm')]))

    def test_every_binary_the_partial_build_emits_reshares(self):
        with tempfile.TemporaryDirectory() as root:
            full = self._full(root)
            body = BODY.format(name='f', a='1', b='2', c='3')
            files, result, _ = shared.reshare_partial(
                {'a/f.asm': body, 'a.asm': '%include "a/f.asm"\n',
                 'b/f.asm': body, 'b.asm': '%include "b/f.asm"\n'}, root)
        self.assertEqual(result, {'shared/ovr/f.asm': ['a/f.asm', 'b/f.asm']})
        self.assertEqual(files, {'a.asm': full['a.asm'], 'b.asm': full['b.asm']})

    def test_no_full_build_leaves_the_files_alone(self):
        files = {'a/f.asm': 'f:\n    ret\n', 'a.asm': '%include "a/f.asm"\n'}
        with tempfile.TemporaryDirectory() as root:
            self.assertEqual(shared.reshare_partial(files, root),
                             (files, {}, []))


class MergeFilesTest(unittest.TestCase):
    def test_one_copy_of_a_file_binaries_lay_out_alike(self):
        from main.build import merge_files
        self.assertEqual(
            merge_files({'a': {'inc/s.inc': 'x', 'a.asm': '1'},
                         'b': {'inc/s.inc': 'x', 'b.asm': '2'}}),
            {'inc/s.inc': 'x', 'a.asm': '1', 'b.asm': '2'})

    def test_two_layouts_of_one_path_are_an_error(self):
        from lib.link import LinkError
        from main.build import merge_files
        with self.assertRaises(LinkError):
            merge_files({'a': {'inc/s.inc': 'x'}, 'b': {'inc/s.inc': 'y'}})


class IncludeAliasesTest(unittest.TestCase):
    def test_aliases_above_the_include_name_the_common_names(self):
        master = ('x equ y\n\n'
                  'cseg_382b equ f.cseg1\n'
                  'f.bss1 equ bss_0d00\n'
                  '%include "shared/ovr/f.asm"   ; 0x381b\n')
        self.assertEqual(
            sorted(shared.include_aliases(master, 'shared/ovr/f.asm')),
            [('f.bss1', 'bss_0d00'), ('f.cseg1', 'cseg_382b')])

    def test_no_include_has_no_aliases(self):
        self.assertEqual(shared.include_aliases('', 'shared/f.asm'), [])


class IsSharedTest(unittest.TestCase):
    def test_a_routine_in_shared_is_shared(self):
        with tempfile.TemporaryDirectory() as root:
            _put(root, 'shared/ovr/f.asm', 'f:\n    ret\n')
            self.assertTrue(shared.is_shared(root, 'f'))
            self.assertFalse(shared.is_shared(root, 'g'))


class PartialShareWarningTest(unittest.TestCase):
    def setUp(self):
        verbose = mock.patch.dict(os.environ, {'VERBOSE': '1'})
        verbose.start()
        self.addCleanup(verbose.stop)

    def _share(self, root, names):
        from lib.symtab import Space, Symbol
        files, tables = {}, {}
        for binary, name in zip(('a', 'b'), names):
            files[f'{binary}/f.asm'] = (
                f'f:\n    mov ax, [{name}]\n    ret\n')
            files[f'{binary}.asm'] = f'%include "{binary}/f.asm"\n'
            tables[binary] = {name: Symbol.data(Space.BSS, 0x9000, name)}
        return shared.share_files(files, root, tables)

    def test_warns_with_per_binary_names_and_keeps_sharing(self):
        output = io.StringIO()
        with tempfile.TemporaryDirectory() as root, \
                contextlib.redirect_stdout(output):
            files, groups = self._share(root, ('spell_ids', 'spell_list'))
        self.assertEqual(groups['shared/ovr/f.asm'], ['a/f.asm', 'b/f.asm'])
        self.assertIn('f.spell_ids1', files['shared/ovr/f.asm'])
        warning = output.getvalue()
        self.assertIn('warning: partial share shared/ovr/f.asm', warning)
        self.assertIn('a=spell_ids', warning)
        self.assertIn('b=spell_list', warning)

    def test_matching_names_are_quiet(self):
        output = io.StringIO()
        with tempfile.TemporaryDirectory() as root, \
                contextlib.redirect_stdout(output):
            self._share(root, ('spell_ids', 'spell_ids'))
        self.assertEqual(output.getvalue(), '')

    def test_inconsistent_names_are_quiet_without_verbose_one(self):
        for value in (None, '', '0'):
            with self.subTest(verbose=value), \
                    mock.patch.dict(os.environ), \
                    tempfile.TemporaryDirectory() as root:
                if value is None:
                    os.environ.pop('VERBOSE', None)
                else:
                    os.environ['VERBOSE'] = value
                output = io.StringIO()
                with contextlib.redirect_stdout(output):
                    _, groups = self._share(root, ('spell_ids', 'spell_list'))
                self.assertIn('shared/ovr/f.asm', groups)
                self.assertEqual(output.getvalue(), '')

    def test_partial_build_warns_for_preserved_alias(self):
        with tempfile.TemporaryDirectory() as root:
            with contextlib.redirect_stdout(io.StringIO()):
                files, _ = self._share(root, ('spell_ids', 'spell_list'))
            for path, text in files.items():
                _put(root, path, text)
            output = io.StringIO()
            with contextlib.redirect_stdout(output):
                _, groups, diverged = shared.reshare_partial({
                    'a.asm': '%include "a/f.asm"\n',
                    'a/f.asm': 'f:\n    mov ax, [spell_ids]\n    ret\n',
                }, root)
            self.assertFalse(diverged)
            self.assertIn('shared/ovr/f.asm', groups)
            self.assertIn('a=spell_ids', output.getvalue())

    def test_internal_labels_and_routine_aliases_are_quiet(self):
        output = io.StringIO()
        with contextlib.redirect_stdout(output):
            shared._warn_partial_shares(
                {'shared/ovr/f.asm': ['a/f.asm']},
                {'a/f.asm': [('f', 'other_f', True),
                             ('f.loc1', 'local_label', True)]})
        self.assertEqual(output.getvalue(), '')
