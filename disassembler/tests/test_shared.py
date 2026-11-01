import contextlib
import io
import os
import shutil
import tempfile
import types
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
            files, result = shared.share_files(self._files(), root)
            self.assertEqual(os.listdir(root), [])
        self.assertEqual(result, {'shared/ovr/f.asm': ['a/f.asm', 'b/f.asm']})
        self.assertEqual(sorted(files), ['a.asm', 'b.asm', 'shared/ovr/f.asm'])
        self.assertIn('%include "shared/ovr/f.asm"', files['a.asm'])

    def test_hand_owned_c_does_not_change_assembly_sharing(self):
        with tempfile.TemporaryDirectory() as root:
            os.makedirs(os.path.join(root, 'b'))
            with open(os.path.join(root, 'b', 'f.c'), 'w') as f:
                f.write('int f;\n')
            files, result = shared.share_files(self._files(), root)
        self.assertEqual(result, {'shared/ovr/f.asm': ['a/f.asm', 'b/f.asm']})
        self.assertNotIn('b/f.asm', files)
        self.assertFalse([p for p in files if p.endswith('.c')])


    def _hand_s(self, root, bodies):
        for b, body in bodies.items():
            os.makedirs(os.path.join(root, b))
            with open(os.path.join(root, b, 'f.s'), 'w') as f:
                f.write(body)

    def test_hand_owned_s_does_not_change_assembly_sharing(self):
        with tempfile.TemporaryDirectory() as root:
            self._hand_s(root, {'a': 'f proc\n', 'b': 'f proc near\n'})
            files, result = shared.share_files(self._files(), root)
        self.assertEqual(result, {'shared/ovr/f.asm': ['a/f.asm', 'b/f.asm']})
        self.assertNotIn('b/f.asm', files)
        self.assertFalse([p for p in files if p.endswith('.s')])

    def test_conflicting_hand_s_stays_in_place(self):
        with tempfile.TemporaryDirectory() as root:
            self._hand_s(root, {'a': 'f proc\n', 'b': 'f proc near\n'})
            out = io.StringIO()
            with contextlib.redirect_stdout(out):
                moves = shared.companion_moves(
                    root, {'shared/ovr/f.asm': ['a/f.asm', 'b/f.asm']})
        self.assertEqual(moves, [])
        self.assertIn('conflicting source', out.getvalue())

    def test_matching_hand_s_moves_beside_the_shared_file(self):
        with tempfile.TemporaryDirectory() as root:
            self._hand_s(root, {'a': 'f proc\n', 'b': 'f proc\n'})
            moves = shared.companion_moves(
                root, {'shared/ovr/f.asm': ['a/f.asm', 'b/f.asm']})
        self.assertEqual(moves, [('a/f.s', 'shared/ovr/f.s'),
                                 ('b/f.s', 'shared/ovr/f.s')])

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
            _, result = shared.share_files(self._files('dseg_9098'), root)
        self.assertEqual(result, {})

    def test_a_named_object_still_is(self):
        with tempfile.TemporaryDirectory() as root:
            _, result = shared.share_files(self._files('save_si'), root)
        self.assertEqual(list(result), ['shared/data/save_si.asm'])

    def test_binary_local_is_the_address_name_in_a_data_folder(self):
        self.assertTrue(shared.binary_local('vmele/data/dseg_9098.asm'))
        self.assertTrue(shared.binary_local('ega/data/cseg_1add.asm'))
        self.assertFalse(shared.binary_local('ega/data/mouse_drawn_y.asm'))
        self.assertFalse(shared.binary_local('play/cseg_0870.asm'))


class OtherNameTest(unittest.TestCase):
    """Copies share only when their code is the same, every name included."""

    def _share(self, copies):
        """*copies* ``{binary: (label, body lines)}``."""
        files = {}
        for b, (name, ops) in copies.items():
            files[f'{b}/{name}.asm'] = (f'{name}:\n' + ''.join(
                f'    {op}\n' for op in ops) + f'    jmp short @..{name}.l1\n'
                f'@..{name}.l1:\n    ret\n')
            files[f'{b}.asm'] = f'%include "{b}/{name}.asm"\n'
        with tempfile.TemporaryDirectory() as root:
            return shared.share_files(files, root)

    def test_same_code_under_two_tags_shares_under_one(self):
        files, result = self._share(
            {'a': ('f_GGGG', ['push bp']), 'b': ('f_HHHH', ['push bp'])})
        self.assertEqual(result, {'shared/ovr/f_GGGG.asm':
                                  ['a/f_GGGG.asm', 'b/f_GGGG.asm']})
        self.assertNotIn(' equ ', files['b.asm'])

    def test_same_code_under_two_human_names_stays(self):
        _, result = self._share(
            {'a': ('fade_in', ['push bp']), 'b': ('fade_out', ['push bp'])})
        self.assertEqual(result, {})

    def test_a_different_callee_under_one_name_stays(self):
        # One shape, but each binary calls another routine: not one routine.
        files, result = self._share(
            {'a': ('slot', ['call mouse_init']), 'b': ('slot', ['call mouse_init']),
             'c': ('slot', ['call music_start'])})
        self.assertEqual(result, {'shared/ovr/slot.asm': ['a/slot.asm', 'b/slot.asm']})
        self.assertIn('call music_start', files['c/slot.asm'])
        self.assertEqual(files['c.asm'], '%include "c/slot.asm"\n')

    def test_different_code_under_one_name_stays(self):
        _, result = self._share(
            {'a': ('f', ['push bp']), 'b': ('f', ['push si'])})
        self.assertEqual(result, {})

    def test_identical_code_under_one_name_shares(self):
        _, result = self._share(
            {'a': ('f', ['push bp']), 'b': ('f', ['push bp'])})
        self.assertEqual(result, {'shared/ovr/f.asm': ['a/f.asm', 'b/f.asm']})

    def _with_label(self, label_a, label_b, extra=None):
        files = {'a/f.asm': f'f:\n    jmp {label_a}\n{label_a}:\n    ret\n',
                 'b/f.asm': f'f:\n    jmp {label_b}\n{label_b}:\n    ret\n',
                 'a.asm': '%include "a/f.asm"\n', 'b.asm': '%include "b/f.asm"\n',
                 **(extra or {})}
        with tempfile.TemporaryDirectory() as root:
            return shared.share_files(files, root)[1]

    def test_a_private_address_label_does_not_block_sharing(self):
        self.assertEqual(self._with_label('cseg_1111', 'cseg_2222'),
                         {'shared/ovr/f.asm': ['a/f.asm', 'b/f.asm']})

    def test_a_private_tag_label_does_not_block_sharing(self):
        self.assertEqual(self._with_label('ds_loc_KRNT', 'loc_KRNT'),
                         {'shared/ovr/f.asm': ['a/f.asm', 'b/f.asm']})

    def test_a_tag_label_another_file_uses_blocks_sharing(self):
        self.assertEqual(self._with_label(
            'loc_KRNT', 'loc_MGHP',
            {'b/g.asm': 'g:\n    jmp loc_MGHP\n'}), {})

    def test_a_label_another_file_uses_blocks_sharing(self):
        self.assertEqual(self._with_label(
            'cseg_1111', 'cseg_2222',
            {'b/g.asm': 'g:\n    jmp cseg_2222\n'}), {})

    def test_a_spelling_taken_in_the_other_binary_blocks_sharing(self):
        self.assertEqual(self._with_label(
            'cseg_1111', 'cseg_2222',
            {'b/g.asm': 'cseg_1111:\n    ret\n'}), {})

    def test_a_different_address_target_outside_the_routine_blocks_sharing(self):
        files = {'a/f.asm': 'f:\n    call cseg_1111\n    ret\n',
                 'b/f.asm': 'f:\n    call cseg_2222\n    ret\n',
                 'a.asm': '%include "a/f.asm"\n', 'b.asm': '%include "b/f.asm"\n'}
        with tempfile.TemporaryDirectory() as root:
            self.assertEqual(shared.share_files(files, root)[1], {})


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
            return shared.share_files(files, root)
        with tempfile.TemporaryDirectory() as root:
            return shared.share_files(files, root)

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

    def _full(self, root, a='f', b='f'):
        """A full build of binaries a and b, sharing f, written at *root*."""
        files = {}
        for name, stem in (('a', a), ('b', b)):
            files[f'{name}/{stem}.asm'] = BODY.format(name=stem, a='1', b='2', c='3')
            files[f'{name}.asm'] = f'%include "{name}/{stem}.asm"\n'
        files, result = shared.share_files(files, root)
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

    def test_a_copy_spelling_a_private_label_its_own_way_goes_back(self):
        body = 'f:\n    jmp {0}\n{0}:\n    ret\n'
        with tempfile.TemporaryDirectory() as root:
            files, result = shared.share_files(
                {'a/f.asm': body.format('cseg_1111'),
                 'b/f.asm': body.format('cseg_2222'),
                 'a.asm': '%include "a/f.asm"\n',
                 'b.asm': '%include "b/f.asm"\n'}, root)
            self.assertEqual(len(result), 1)
            for rel, text in files.items():
                _put(root, rel, text)
            _, result, diverged = shared.reshare_partial(
                {'b/f.asm': body.format('cseg_2222'),
                 'b.asm': '%include "b/f.asm"\n'}, root)
        self.assertEqual(result, {'shared/ovr/f.asm': ['b/f.asm']})
        self.assertEqual(diverged, [])

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


