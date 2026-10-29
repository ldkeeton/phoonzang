"""Address-derived label names and the host prefix (``lib.names``)."""

import unittest

from lib import names
from lib.compare.render import (
    HOST_SYMBOLS_INC, _build_source, host_symbols_inc_lines,
)
from lib.compare.records import count_frozen_addrs
from lib.symtab import Kind, Source, Space, Symbol


def _gen(base, off, kind=Kind.ROUTINE):
    return Symbol.generated(base, off, kind)


def _named(text, off=None):
    return Symbol(text, kind=Kind.ROUTINE, source=Source.SIGNATURE, offset=off)


class GenericNameTests(unittest.TestCase):
    def tearDown(self):
        names.set_generic_prefix('')

    def test_address_derived_names_are_generic(self):
        for name in (_gen('loc', 0x8f2, Kind.LABEL), _gen('app', 0x3b8),
                     _gen('leaf_loc', 0x10108), _gen('app_file', 0x242)):
            self.assertTrue(names.is_generic(name), name)

    def test_named_and_data_symbols_are_not_generic(self):
        for name in (_named('dos_con_in_noecho'), _named('main'),
                     Symbol.data(Space.DS, 2), Symbol.data(Space.CSEG, 0x1234),
                     Symbol.data(Space.PSP, 0x2c, 'psp_env_segment')):
            self.assertFalse(names.is_generic(name), name)

    def test_rename_prefixes_only_generic_names_everywhere(self):
        loc, app = _gen('loc', 0x8f2, Kind.LABEL), _gen('app', 0x3b8)
        named = _named('dos_con_in_noecho', 0x3c97)
        label_map = {0x8f2: loc, 0x3b8: app, 0x3c97: named}
        roots = {0x3b8: app, 0x3c97: named, 0x1: None}
        split = {app, 'dos_con_in_noecho'}
        renames = names.rename_generics(label_map, roots, split, prefix='ds_')
        self.assertEqual(label_map, {0x8f2: 'ds_loc_08f2', 0x3b8: 'ds_app_03b8',
                                     0x3c97: 'dos_con_in_noecho'})
        self.assertEqual(roots, {0x3b8: 'ds_app_03b8',
                                 0x3c97: 'dos_con_in_noecho', 0x1: None})
        self.assertEqual(split, {'ds_app_03b8', 'dos_con_in_noecho'})
        self.assertEqual(renames, {'loc_08f2': 'ds_loc_08f2',
                                   'app_03b8': 'ds_app_03b8'})

    def test_rename_is_idempotent(self):
        label_map = {0x8f2: _gen('loc', 0x8f2, Kind.LABEL).prefixed('ds_')}
        self.assertEqual(
            names.rename_generics(label_map, prefix='ds_'), {})
        self.assertEqual(label_map, {0x8f2: 'ds_loc_08f2'})

    def test_loc_name_carries_the_host_prefix(self):
        names.set_generic_prefix('ds_')
        self.assertEqual(names.loc_name(0x8f2), 'ds_loc_08f2')

    def test_non_host_names_get_no_prefix(self):
        names.set_generic_prefix('')
        self.assertEqual(names.loc_name(0x8f2), 'loc_08f2')


class HostSymbolsBlockTests(unittest.TestCase):
    def _overlay(self):
        header = b'\xf2\x00' + (0x5055).to_bytes(2, 'little') + bytes(10)
        return header + b'\x90'

    def test_overlay_includes_the_host_without_a_table(self):
        records = [{'type': 'mnem', 'text': 'nop', 'offset': 14, 'size': 1}]
        src, includes = _build_source(records, 14, self._overlay(), label_map={},
                                      host_symbols=('ds.asm', -0x200))
        self.assertNotIn('host_calls.inc', src)
        self.assertNotIn('host_values.inc', src)
        self.assertNotIn('host_data.inc', src)
        self.assertIn('section .text vstart=VBASE', src)
        # D7.2: the overlay's load origin is the host's own anchor, not a
        # literal; the host source must therefore come first, because nasm
        # needs the value at the ``section`` directive.
        self.assertIn('VBASE equ __zres_end - 0x000e', src)
        self.assertLess(src.index(f'%include "{HOST_SYMBOLS_INC}"'),
                        src.index('section .text vstart=VBASE'))
        # E2: the host's frame is the same for every overlay of it, so the
        # master carries one include line and the block is emitted once per tree.
        self.assertNotIn('%define HOST_SYMS_ONLY', src)
        block = includes[HOST_SYMBOLS_INC]
        self.assertIn('%define HOST_SYMS_ONLY', block)
        self.assertIn('section .host nobits vstart=-0x0200', block)
        self.assertIn('%include "ds.asm"', block)
        self.assertIn('%undef VBASE', block)
        self.assertIn('%undef HOST_SYMS_ONLY', block)

    def test_host_block_carries_no_frozen_address(self):
        """The shared include sits outside the census, which scans ``*.asm``.

        Every value the block needs is symbolic or derived, so the guard is
        explicit rather than an accident of the file glob (plan.md E2).
        """
        block = '\n'.join(host_symbols_inc_lines('ds.asm', -0x200))
        self.assertEqual(count_frozen_addrs(block)['total'], 0)

    def test_host_guards_its_own_section_line(self):
        names.set_generic_prefix('ds_')
        try:
            data = b'MZ' + bytes(0x1fe) + b'\x90'
            records = [{'type': 'mnem', 'text': 'nop', 'offset': 0x200,
                        'size': 1}]
            src, _ = _build_source(records, 0x200, data, label_map={})
        finally:
            names.set_generic_prefix('')
        self.assertIn('%ifndef HOST_SYMS_ONLY\nsection .text vstart=VBASE\n%endif',
                      src)
        self.assertIn('VBASE equ -0x0200', src)


if __name__ == '__main__':
    unittest.main()


def _decode(code, base):
    from capstone import Cs, CS_ARCH_X86, CS_MODE_16
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True
    return list(md.disasm(code, base))


class ContentTagTests(unittest.TestCase):
    #: ``push bp / jmp short +0 / ret`` placed at two different addresses.
    CODE = bytes([0x55, 0xEB, 0x00, 0xC3])

    def _tag(self, code, base):
        return names.content_tag(_decode(code, base), code and
                                 bytes(base) + code, base, base + len(code))

    def test_tag_is_letters_a_reader_cannot_take_for_an_address(self):
        tag = self._tag(self.CODE, 0x100)
        self.assertRegex(tag, r'^[G-V]{4}$')

    def test_same_code_at_another_address_has_the_same_tag(self):
        self.assertEqual(self._tag(self.CODE, 0x100), self._tag(self.CODE, 0x900))

    def test_different_code_has_a_different_tag(self):
        other = bytes([0x56, 0xEB, 0x00, 0xC3])
        self.assertNotEqual(self._tag(self.CODE, 0x100), self._tag(other, 0x100))

    def test_bytes_count_however_they_were_decoded(self):
        # ``push bp / ret`` with the ``ret`` left undecoded (a ``db``).
        code, base = bytes([0x55, 0xC3]), 0x100
        data = bytes(base) + code
        full = names.content_tag(_decode(code, base), data, base, base + 2)
        part = names.content_tag(_decode(code, base)[:1], data, base, base + 2)
        self.assertEqual(full, part)

    def test_absolute_data_address_is_layout(self):
        # ``mov ax, [0x9b00] / ret`` vs ``[0x9c00]``.
        self.assertEqual(self._tag(bytes([0xA1, 0x00, 0x9B, 0xC3]), 0x100),
                         self._tag(bytes([0xA1, 0x00, 0x9C, 0xC3]), 0x100))
        # ``mov ax, [bp+4]``: a frame offset is code, not layout.
        self.assertNotEqual(self._tag(bytes([0x8B, 0x46, 0x04, 0xC3]), 0x100),
                            self._tag(bytes([0x8B, 0x46, 0x06, 0xC3]), 0x100))

    def test_constants_count(self):
        self.assertNotEqual(self._tag(bytes([0xB8, 0x34, 0x12, 0xC3]), 0x100),
                            self._tag(bytes([0xB8, 0x35, 0x12, 0xC3]), 0x100))

    def test_short_and_near_jumps_out_differ(self):
        short = bytes([0xEB, 0x10])
        near = bytes([0xE9, 0x10, 0x00])
        self.assertNotEqual(self._tag(short, 0x100), self._tag(near, 0x100))

    def test_jump_out_does_not_depend_on_the_distance(self):
        self.assertEqual(self._tag(bytes([0xE9, 0x10, 0x00]), 0x100),
                         self._tag(bytes([0xE9, 0x40, 0x02]), 0x100))

    def test_offset_of_own_code_is_rebased(self):
        # ``mov bx, <own ret> / ret`` with the code at 0x100 and at 0x900.
        def tag(base):
            code = bytes([0xBB]) + (base + 3).to_bytes(2, 'little') + b'\xC3'
            return names.content_tag(
                _decode(code, base), bytes(base) + code, base, base + 4,
                code_off=lambda v: v, code_labels={base + 3})
        self.assertEqual(tag(0x100), tag(0x900))

    def test_relocated_word_is_masked(self):
        # ``mov ax, <segment> / ret``, patched by the loader.
        def tag(seg):
            code = bytes([0xB8]) + seg.to_bytes(2, 'little') + b'\xC3'
            return names.content_tag(_decode(code, 0x100), bytes(0x100) + code,
                                     0x100, 0x104, relocs={0x101})
        self.assertEqual(tag(0x1234), tag(0x5678))

    def test_switch_table_and_dispatch_are_rebased(self):
        # ``jmp [cs:bx + table] / ret / table: dw <ret>`` at 0x100 and 0x900.
        def tag(base, target=5):
            table = (base + 6).to_bytes(2, 'little')
            code = (bytes([0x2E, 0xFF, 0xA7]) + table + b'\xC3'
                    + (base + target).to_bytes(2, 'little'))
            return names.content_tag(
                _decode(code[:6], base), bytes(base) + code, base, base + 8,
                code_off=lambda v: v, tables={base + 6})
        self.assertEqual(tag(0x100), tag(0x900))
        self.assertNotEqual(tag(0x100), tag(0x100, target=0))

    def test_generic_names_still_read_as_generic_with_a_tag(self):
        tagged = _gen('leaf_loc', 0x10).tagged('HQRK')
        self.assertEqual(tagged, 'leaf_loc_HQRK')
        self.assertTrue(names.is_generic(tagged))
        twin = _gen('api_idx_0008', 0x2e3).tagged('HQRK', keep_address=True)
        self.assertEqual(twin, 'api_idx_0008_HQRK_02e3')
        self.assertTrue(names.is_generic(twin))
        self.assertFalse(names.is_generic(_named('aztec_open')))


class TagGenericsTests(unittest.TestCase):
    def _run(self, blobs, stubs=()):
        """Lay *blobs* ``{offset: code}`` out in one image and tag them."""
        size = max(off + len(code) for off, code in blobs.items())
        data = bytearray(size)
        instructions = []
        for off, code in blobs.items():
            data[off:off + len(code)] = code
            instructions += _decode(code, off)
        label_map = {off: _gen('leaf_loc', off) for off in blobs}
        roots = dict(label_map)
        for off in stubs:
            label_map[off] = roots[off] = _gen('api_idx_0008', off)
        renames = names.tag_generics(label_map, roots, instructions,
                                     bytes(data), size, stubs=stubs)
        return label_map, renames

    def test_generic_routine_gets_a_tag_and_keeps_its_address(self):
        label_map, _ = self._run({0x10: bytes([0x55, 0xC3])})
        self.assertRegex(label_map[0x10], r'^leaf_loc_[G-V]{4}$')

    def test_plain_loc_labels_get_a_content_tag(self):
        # A plain ``loc_`` root is a fragment of its own once a fragment's
        # trailing neighbour is cut at it (splitting._split_off_foreign_objects),
        # so it is named after its code too: an address-derived name would rename
        # the file whenever bytes above it moved.
        data = bytes([0x90, 0xC3])
        loc = _gen('loc', 0, Kind.LABEL)
        label_map, roots = {0: loc}, {0: loc}
        names.tag_generics(label_map, roots, _decode(data, 0), data, 2)
        self.assertRegex(label_map[0], r'^loc_[G-V]{4}$')

    def test_stub_drops_its_address_unless_copies_share_a_binary(self):
        code = bytes([0x55, 0xC3])
        single, _ = self._run({0x10: code}, stubs={0x10})
        self.assertRegex(single[0x10], r'^api_idx_0008_[G-V]{4}$')
        twin, _ = self._run({0x10: code, 0x20: code}, stubs={0x10, 0x20})
        self.assertRegex(twin[0x10], r'^api_idx_0008_[G-V]{4}_0010$')
        self.assertRegex(twin[0x20], r'^api_idx_0008_[G-V]{4}_0020$')

    def test_routine_stops_at_a_following_loc_root(self):
        # ``push bp / ret`` then a ``loc_`` root whose code differs: the
        # routine's tag must not change with it (naming the ``loc_`` would).
        def tag(tail):
            data = bytes([0x55, 0xC3]) + tail
            routine, loc = _gen('leaf_loc', 0), _gen('loc', 2, Kind.LABEL)
            label_map = {0: routine, 2: loc}
            names.tag_generics(label_map, {0: routine, 2: loc},
                               _decode(data, 0), data, len(data))
            return label_map[0]
        self.assertEqual(tag(bytes([0x90, 0xC3])), tag(bytes([0x40, 0xC3])))

    def test_callee_name_counts_only_when_stable(self):
        # ``call; ret`` twice, into different routines (0x20 and 0x22).
        callers = {0x10: bytes([0xE8, 0x0D, 0x00, 0xC3]),
                   0x18: bytes([0xE8, 0x07, 0x00, 0xC3])}
        callees = {0x20: bytes([0x55, 0xC3]), 0x22: bytes([0x56, 0xC3])}
        generic, _ = self._run({**callers, **callees})
        self.assertEqual(generic[0x10][:-5], generic[0x18][:-5])
        self.assertTrue(generic[0x10].endswith('_0010'))
        self.assertTrue(generic[0x18].endswith('_0018'))

        blobs = {**callers, **callees}
        size = max(off + len(code) for off, code in blobs.items())
        data = bytearray(size)
        instructions = []
        for off, code in blobs.items():
            data[off:off + len(code)] = code
            instructions += _decode(code, off)
        label_map = {0x10: _gen('leaf_loc', 0x10), 0x18: _gen('leaf_loc', 0x18),
                     0x20: _named('_open', 0x20), 0x22: _named('_close', 0x22)}
        names.tag_generics(label_map, dict(label_map), instructions,
                           bytes(data), size)
        self.assertNotEqual(label_map[0x10][-4:], label_map[0x18][-4:])

    def test_changing_a_generic_callee_does_not_rename_its_caller(self):
        caller = bytes([0xE8, 0x0D, 0x00, 0xC3])
        before, _ = self._run({0x10: caller, 0x20: bytes([0x55, 0xC3])})
        after, _ = self._run({0x10: caller, 0x20: bytes([0x56, 0xC3])})
        self.assertNotEqual(before[0x20], after[0x20])
        self.assertEqual(before[0x10], after[0x10])

    def test_adding_a_routine_does_not_rename_the_others(self):
        code = bytes([0x55, 0xC3])
        before, _ = self._run({0x10: code})
        after, _ = self._run({0x08: bytes([0x56, 0xC3]), 0x10: code})
        self.assertEqual(before[0x10], after[0x10])
