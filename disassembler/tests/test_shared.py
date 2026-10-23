import os
import shutil
import tempfile
import unittest

from lib import shared
from lib.autogen import write_text

BODY = '{name}:\n    push bp ; 0x{a}\n    jmp short @..{name}.l1 ; 0x{b}\n@..{name}.l1:\n    ret ; 0x{c}\n'


def _put(root, rel, text):
    os.makedirs(os.path.dirname(os.path.join(root, rel)), exist_ok=True)
    write_text(os.path.join(root, rel), text)


def _read(root, rel):
    with open(os.path.join(root, rel)) as f:
        return f.read()


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
            self.assertEqual(result, {'shared/library/f.asm': ['a/f.asm', 'b/f.asm']})
            self.assertFalse(os.path.exists(os.path.join(root, 'a')))
            self.assertIn('%include "shared/library/f.asm"   ; 0x0100', _read(root, 'a.asm'))
            self.assertIn('%include "shared/library/f.asm"', _read(root, 'b.asm'))
            self.assertNotIn('; 0x', _read(root, 'shared/library/f.asm'))

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
            self.assertEqual(result, {'shared/library/f.asm': ['c/f.asm', 'd/f.asm', 'e/f.asm']})
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
            self.assertIn('; 0x0100', _read(root, 'shared/library/f.asm'))


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
            self.assertTrue(os.path.exists(os.path.join(root, 'shared', 'game', 'f.c')))
            self.assertFalse(os.path.exists(os.path.join(root, 'a', 'f.c')))
            self.assertNotIn('; 0x', _read(root, 'shared/game/f.asm'))

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
        self.assertEqual(result, {'shared/library/f.asm': ['a/f.asm', 'b/f.asm']})
        self.assertEqual(sorted(files), ['a.asm', 'b.asm', 'shared/library/f.asm'])
        self.assertIn('%include "shared/library/f.asm"', files['a.asm'])

    def test_a_hand_owned_c_on_disk_keeps_its_fragment(self):
        with tempfile.TemporaryDirectory() as root:
            os.makedirs(os.path.join(root, 'b'))
            with open(os.path.join(root, 'b', 'f.c'), 'w') as f:
                f.write('int f;\n')
            files, result = shared.share_files(self._files(), root, {})
        self.assertEqual(result, {})
        self.assertIn('b/f.asm', files)


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
        self.assertEqual(result, {'shared/library/f_GGGG.asm':
                                  ['a/f_GGGG.asm', 'b/f_HHHH.asm', 'c/f_GGGG.asm']})
        self.assertIn('f_HHHH equ f_GGGG\n%include "shared/library/f_GGGG.asm"',
                      files['b.asm'])
        self.assertEqual(files['a.asm'], '%include "shared/library/f_GGGG.asm"\n')
        self.assertIn('@..f_GGGG.l1:', files['shared/library/f_GGGG.asm'])

    def test_label_and_the_names_it_uses_both_alias(self):
        files, result = self._share(
            {'a': ('f_GGGG', ['mov ax, [bss_10]']),
             'b': ('f_HHHH', ['mov ax, [bss_20]'])},
            {'a': self._table('f_GGGG', 'bss_10'),
             'b': self._table('f_HHHH', 'bss_20')})
        self.assertEqual(list(result), ['shared/library/f_GGGG.asm'])
        self.assertIn('mov ax, [f_GGGG.bss1]', files['shared/library/f_GGGG.asm'])
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
        self.assertEqual(list(result), ['shared/library/draw.asm'])
        self.assertIn('f_GGGG equ draw', files['a.asm'])

    def test_two_people_s_names_never_alias(self):
        _, result = self._share(
            {'a': ('fade_in', ['ret']), 'b': ('fade_out', ['ret'])},
            {'a': self._named('fade_in'), 'b': self._named('fade_out')})
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
                'shared/library/helper.asm': 'helper:\n    ret\n',
                'a/other.asm': 'other:\n    ret\n',
                'a.asm': '%include "shared/library/helper.asm"\n',
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
            'shared/library/y.asm': 'y:\n' + self.BODY,
            'over.asm': '%include "include/host_symbols.inc"\n'
                        '%include "shared/library/y.asm"\n',
            'over2.asm': '%include "include/host_symbols.inc"\n'
                         '%include "shared/library/y.asm"\n'}), [])

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
    """A shared file goes in the band folder of what its code is."""

    def _share(self, name, ops, root=None):
        files = {}
        for b in ('a', 'b'):
            files[f'{b}/{name}.asm'] = f'{name}:\n' + ''.join(
                f'    {op}\n' for op in ops) + '    ret\n'
            files[f'{b}.asm'] = f'%include "{b}/{name}.asm"\n'
        if root is not None:
            return shared.share_files(files, root, {})
        with tempfile.TemporaryDirectory() as root:
            return shared.share_files(files, root, {})

    def test_compiled_c_is_game(self):
        _, result = self._share('f', ['mov ax, 0xfff6', 'call aztec_csav'])
        self.assertEqual(list(result), ['shared/game/f.asm'])

    def test_c_library_is_aztec(self):
        _, result = self._share('aztec_strlen', ['push bp'])
        self.assertEqual(list(result), ['shared/aztec/aztec_strlen.asm'])

    def test_assembly_is_library(self):
        _, result = self._share('f', ['push bp'])
        self.assertEqual(list(result), ['shared/library/f.asm'])

    def test_hand_c_in_the_flat_folder_still_counts(self):
        with tempfile.TemporaryDirectory() as root:
            os.makedirs(os.path.join(root, 'shared'))
            with open(os.path.join(root, 'shared', 'f.c'), 'w') as f:
                f.write('int f;\n')
            files, result = self._share('f', ['push bp'], root)
        self.assertEqual(list(result), ['shared/game/f.asm'])
        self.assertFalse([p for p in files if p.endswith('.c')])


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
                  '%include "shared/library/f.asm"   ; 0x381b\n')
        self.assertEqual(
            sorted(shared.include_aliases(master, 'shared/library/f.asm')),
            [('f.bss1', 'bss_0d00'), ('f.cseg1', 'cseg_382b')])

    def test_no_include_has_no_aliases(self):
        self.assertEqual(shared.include_aliases('', 'shared/f.asm'), [])


class DonorAliasesTest(unittest.TestCase):
    def test_other_binaries_names_map_to_this_ones(self):
        with tempfile.TemporaryDirectory() as root:
            _put(root, 'shared/game/f.asm', 'f:\n    call f.api_idx1\n')
            _put(root, 'a.asm', 'f.api_idx1 equ api_idx_0004_ONRQ\n'
                                '%include "shared/game/f.asm"\n')
            _put(root, 'b.asm', 'f.api_idx1 equ api_idx_0004_SMTU\n'
                                '%include "shared/game/f.asm"\n')
            _put(root, 'c.asm', 'f.api_idx1 equ api_idx_0004_ONRQ\n'
                                '%include "shared/game/f.asm"\n')
            self.assertEqual(shared.label_aliases(root, 'b', 'f'),
                             {'api_idx_0004_ONRQ': 'api_idx_0004_SMTU'})
            self.assertEqual(shared.label_aliases(root, 'a', 'f'),
                             {'api_idx_0004_SMTU': 'api_idx_0004_ONRQ'})
            self.assertEqual(shared.label_aliases(root, 'a', 'g'), {})
