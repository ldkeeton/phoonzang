"""Tests for linking C-compiled routines against the asm namespace.

``cc`` leaves every call, data reference and branch as a placeholder plus a
relocation record.  These tests feed hand-written OBD listings and raw object
tails through the parser, the linker and the record renderer, so they run
without DOSBox.
"""

import unittest

from lib.aztec import relabel, relink
from lib.aztec.compile import Func
from lib.aztec.objread import (
    Fixup, attach_locals, external_label, fixup_width, is_reloc, parse_obd,
    parse_o_locals,
)
from lib.compare.coverrides import _c_bytes_to_records

# ``foo(a)``: a loop with a call, a data read and an array reference.  Mirrors
# what OBD printed for a real probe module.
FOO_OBD = '''\
Code (0000): Use Code
Code (0000): Use Data
Data (0000): Use Code
Code (0000): Data(12)  55 8b ec 83 c4 fe c7 46 fe 00 00 eb
Code (000c): BREL LCLSYM .0
Code (000d): Data( 2)  83 3e
Code (000f): GBLSYM 1, bss_0cfa_
Code (0011): Data( 2)  00 74
Code (0013): BREL LCLSYM .1
Code (0014): Data( 4)  ff 76 fe e8
Code (0018): WREL GBLSYM 2, ds_loc_4462_
Code (001a): Data( 2)  59 eb
Code (001c): BREL LCLSYM .2
Code (001d): Data(12)  8b 46 fe 25 03 00 d1 e0 8b d8 c7 87
Code (0029): Expr ADD
                 GBLSYM 3, tbl_
                 SMLINT: 0
Code (002b): Data(12)  01 00 ff 46 fe 8b 46 fe 3b 46 04 7c
Code (0037): BREL LCLSYM .3
Code (0038): Data( 1)  a1
Code (0039): Expr ADD
                 GBLSYM 3, tbl_
                 SMLINT: 4
Code (003b): Data( 4)  8b e5 5d c3
Code (003f): Use Code
Code (003f): TheEnd
'''

# The object's trailer: four ``02 80 lo hi`` local label definitions, after the
# global names.
FOO_TAIL = bytes.fromhex('0002 8030 00 02801d00 02802d00 02800d00'.replace(' ', ''))


class ObdParseTest(unittest.TestCase):
    def setUp(self):
        self.dump = parse_obd(FOO_OBD)
        self.by_offset = {fx.offset: fx for fx in self.dump.fixups}

    def test_local_branch_keeps_its_kind_and_width(self):
        fx = self.by_offset[0xc]
        self.assertEqual((fx.kind, fx.symbol_kind, fx.symbol),
                         ('BREL', 'LCLSYM', '.0'))
        self.assertEqual(fx.width, 1)

    def test_external_call_and_data_reference(self):
        call = self.by_offset[0x18]
        self.assertEqual((call.kind, call.symbol), ('WREL', 'ds_loc_4462_'))
        data = self.by_offset[0xf]
        self.assertEqual((data.kind, data.symbol), ('WABS', 'bss_0cfa_'))
        self.assertEqual(external_label(data.symbol), 'bss_0cfa')

    def test_expr_add_carries_symbol_and_addend(self):
        self.assertEqual(self.by_offset[0x29].addend, 0)
        fx = self.by_offset[0x39]
        self.assertEqual((fx.kind, fx.symbol, fx.addend),
                         ('WABS', 'tbl_', 4))

    def test_unmodelled_expression_is_kept_raw(self):
        dump = parse_obd(
            'Code (0000): Data( 3)  b8 00 00\n'
            'Code (0001): Expr ADD\n'
            '                 Expr SUB\n'
            '                     LCLSYM .1\n'
            '                     SMLINT: 1\n'
            '                 SMLINT: 0\n'
            'Code (0003): TheEnd\n')
        fx = dump.fixups[0]
        self.assertEqual(fx.kind, 'Expr')
        self.assertFalse(fx.is_reloc)
        self.assertIsNone(fx.symbol)
        self.assertEqual(len(fx.expr), 4)

    def test_real_relocation_classification(self):
        self.assertTrue(is_reloc(self.by_offset[0x18]))
        self.assertTrue(is_reloc(self.by_offset[0xc]))
        self.assertFalse(is_reloc(Fixup(0, 'line', '#10', None, None)))
        self.assertEqual(fixup_width('BREL'), 1)
        self.assertEqual(fixup_width('WREL'), 2)


class LocalTableTest(unittest.TestCase):
    def test_trailer_records_are_read_in_order(self):
        records = parse_o_locals(b'...names_\x00' + FOO_TAIL[1:])
        self.assertEqual([off for _seg, off in records], [0x30, 0x1d, 0x2d, 0xd])

    def test_data_segment_locals_are_kept_apart(self):
        dump = parse_obd('Code (0001): WABS LCLSYM .1\nCode (0003): TheEnd\n')
        blob = b'x\x00' + bytes([2, 0x80, 0x10, 0, 3, 0x82, 0x02, 0])
        attach_locals(dump, blob)
        self.assertEqual(dump.locals, {'.0': 0x10})
        self.assertEqual(dump.data_locals, {'.1': 0x02})

    def test_undefined_local_is_an_error(self):
        dump = parse_obd(FOO_OBD)
        with self.assertRaises(ValueError):
            attach_locals(dump, b'no records here\x00')


def _foo():
    dump = attach_locals(parse_obd(FOO_OBD), b'\x00' + FOO_TAIL[1:])
    return Func('_foo', 'foo', 0, bytes(dump.code), dump.fixups, dump.locals)


def _index():
    code = {0x5000: 'ds_loc_4462', 0x4f00: 'aztec_close'}
    data = {0x0cfa: 'bss_0cfa', 0x0d10: 'dseg_0d10', 0x0d20: 'tbl'}
    return relink.SymbolIndex(code, None, None,
                              {name: addr for addr, name in data.items()})


class LinkTest(unittest.TestCase):
    START = 0x4400

    def link(self, index=None, labels_in=()):
        return relink.link('aztec_foo', self.START, _foo(),
                           index or _index(), b'', labels_in)

    def test_call_displacement_follows_the_symbol(self):
        out = self.link(_index())
        site = 0x18
        disp = int.from_bytes(out.code[site:site + 2], 'little', signed=True)
        self.assertEqual(self.START + site + 2 + disp, 0x5000)
        self.assertEqual(out.refs[site].text, 'ds_loc_4462')

    def test_data_reference_uses_value_and_addend(self):
        out = self.link(_index())
        self.assertEqual(int.from_bytes(out.code[0xf:0x11], 'little'), 0xcfa)
        self.assertEqual(int.from_bytes(out.code[0x39:0x3b], 'little'), 0xd24)
        self.assertEqual(out.refs[0x39].text, 'tbl + 0x4')
        self.assertEqual(out.refs[0x29].text, 'tbl')

    def test_local_branches_use_the_object_table(self):
        out = self.link(_index())
        # ``jmp short`` at +0xc goes to .0 = +0x30 (end of the 1-byte field).
        self.assertEqual(out.code[0xc], 0x30 - 0xd)
        self.assertEqual(out.code[0x13], (0x1d - 0x14) & 0xff)
        self.assertEqual(sorted(out.local_names.values()),
                         [f'@..aztec_foo.l{i}' for i in (1, 2, 3, 4)])
        # Names follow address order, whatever order the branches appear in.
        self.assertEqual(out.local_names[self.START + 0xd], '@..aztec_foo.l1')
        self.assertEqual(out.local_names[self.START + 0x30], '@..aztec_foo.l4')

    def test_named_label_keeps_its_name_at_a_branch_target(self):
        out = self.link(_index(),
                        labels_in=[(self.START + 0x30, 'ds_loc_4430:')])
        self.assertEqual(out.local_names[self.START + 0x30], 'ds_loc_4430')
        self.assertEqual(len(out.local_records), 3)

    def test_unknown_symbol_is_an_error(self):
        with self.assertRaisesRegex(relink.RelinkError, 'ds_loc_4462'):
            self.link(relink.SymbolIndex({}, None, None, {'bss_0cfa': 1}))

    def test_short_branch_out_of_range_is_an_error(self):
        func = _foo()
        func.locals['.0'] = 0x300
        with self.assertRaisesRegex(relink.RelinkError, 'out of range'):
            relink.link('aztec_foo', self.START, func, _index(), b'')

    def test_code_address_operand_stays_on_the_legacy_path(self):
        func = Func('_f', 'f', 0, b'\xb8\x00\x00',
                    [Fixup(1, 'WABS', 'GBLSYM', 0, 'aztec_close_')])
        out = relink.link('aztec_f', 0, func, _index(), b'\xb8\x34\x12')
        self.assertEqual(bytes(out.code), b'\xb8\x34\x12')
        self.assertEqual(len(out.legacy), 1)


class RenderTest(unittest.TestCase):
    """The linked operands reach the emitted instruction text."""

    def render(self, code, fixups, locals_=None, index=None, start=0x4400):
        func = Func('_f', 'f', 0, code, fixups, locals_)
        linked = relink.link('aztec_f', start, func,
                             index or _index(), b'')
        records = _c_bytes_to_records(
            bytes(linked.code), start, {start: 'aztec_f', 0x5000: 'ds_loc_4462'},
            {}, None, None, linked=linked)
        return linked, [r['text'] for r in records]

    def test_call_names_the_symbol_not_the_displacement(self):
        # The same bytes would be ``call aztec_close`` in the original; the C
        # says ``ds_loc_4462`` so that is what is emitted.
        linked, text = self.render(
            b'\xe8\x00\x00\xc3',
            [Fixup(1, 'WREL', 'GBLSYM', 0, 'ds_loc_4462_')])
        self.assertEqual(text, ['call ds_loc_4462', 'ret'])
        self.assertFalse(linked.failed)
        self.assertFalse(linked.unmatched)

    def test_data_operands_and_immediates(self):
        # mov ax, [bss_0cfa]; mov word [bss_0cfa], bss_0d10; cmp ax, bss_0d10
        code = (b'\xa1\x00\x00' b'\xc7\x06\x00\x00\x00\x00' b'\x3d\x00\x00')
        linked, text = self.render(code, [
            Fixup(1, 'WABS', 'GBLSYM', 0, 'bss_0cfa_'),
            Fixup(5, 'WABS', 'GBLSYM', 0, 'bss_0cfa_'),
            Fixup(7, 'WABS', 'GBLSYM', 0, 'dseg_0d10_'),
            Fixup(10, 'WABS', 'GBLSYM', 0, 'dseg_0d10_', 2)])
        self.assertEqual(text, [
            'mov ax, word [bss_0cfa]',
            'mov word [bss_0cfa], dseg_0d10',
            'cmp ax, strict word dseg_0d10 + 0x2'])
        self.assertFalse(linked.failed)

    def test_local_branch_renders_a_derived_label(self):
        # jmp short .0 ; nop ; nop ; ret
        linked, text = self.render(
            b'\xeb\x00\x90\x90\xc3',
            [Fixup(1, 'BREL', 'LCLSYM', None, '.0')], {'.0': 4})
        self.assertEqual(text[0], 'jmp short @..aztec_f.l1')
        self.assertEqual(linked.local_records[0]['offset'], 0x4404)


class RelabelTest(unittest.TestCase):
    def test_rewrite_skips_comments_and_literals(self):
        text = ('/* open is documented */\n'
                'f() { return open("open", 0); }\n')
        out = relabel.rewrite_identifiers(text, {'open': 'aztec_open'})
        self.assertIn('/* open is documented */', out)
        self.assertIn('aztec_open("open", 0)', out)

    def test_learn_names_reads_the_original_image(self):
        func = Func('_f', 'f', 0, b'\xe8\x00\x00\xa1\x00\x00',
                    [Fixup(1, 'WREL', 'GBLSYM', 0, 'open_'),
                     Fixup(4, 'WABS', 'GBLSYM', 0, 'errno_')])
        start = 0x100
        image = bytearray(0x200)
        # call from 0x101: target 0x180 -> disp = 0x180 - 0x103
        image[start + 1:start + 3] = (0x180 - (start + 3)).to_bytes(2, 'little')
        image[start + 4:start + 6] = (0xc72).to_bytes(2, 'little')
        index = relink.SymbolIndex({0x180: 'aztec_open'}, None, None,
                                   {'dseg_0c72': 0xc72})
        names = relabel.learn_names('aztec_f', start, func, bytes(image), index,
                                    relabel.data_names(None, {'dseg_0c72': 0xc72}))
        self.assertEqual(names, {'open': 'aztec_open', 'errno': 'dseg_0c72'})

    def test_ambiguous_target_is_an_error(self):
        func = Func('_f', 'f', 0, b'\xa1\x00\x00',
                    [Fixup(1, 'WABS', 'GBLSYM', 0, 'x_')])
        image = b'\x00\x34\x12'
        index = relink.SymbolIndex()
        with self.assertRaisesRegex(relink.RelinkError, 'asm labels there'):
            relabel.learn_names('aztec_f', 0, func, image, index,
                                {0x1234: ['a', 'b']})


if __name__ == '__main__':
    unittest.main()
