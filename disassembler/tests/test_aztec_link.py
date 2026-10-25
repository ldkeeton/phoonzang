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
from lib.symtab import Space, Symbol
from tests.syms import loc

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

    def test_nested_expression_folds_to_symbol_and_addend(self):
        dump = parse_obd(
            'Code (0000): Data( 3)  b8 00 00\n'
            'Code (0001): Expr ADD\n'
            '                 Expr SUB\n'
            '                     LCLSYM .1\n'
            '                     SMLINT: 1\n'
            '                 SMLINT: 0\n'
            'Code (0003): TheEnd\n')
        fx = dump.fixups[0]
        self.assertEqual((fx.kind, fx.symbol_kind, fx.symbol, fx.addend),
                         ('WABS', 'LCLSYM', '.1', -1))

    def test_unmodelled_expression_is_kept_raw(self):
        dump = parse_obd(
            'Code (0000): Data( 3)  b8 00 00\n'
            'Code (0001): Expr MUL\n'
            '                 GBLSYM 3, tbl_\n'
            '                 SMLINT: 2\n'
            'Code (0003): TheEnd\n')
        fx = dump.fixups[0]
        self.assertEqual(fx.kind, 'Expr')
        self.assertFalse(fx.is_reloc)
        self.assertIsNone(fx.symbol)
        self.assertEqual(len(fx.expr), 2)

    def test_module_data_segment_is_kept(self):
        dump = parse_obd('Data (0000): Use Code\n'
                         'Data (0001): Data( 2)  0d 0a\n')
        self.assertEqual(dump.data, {1: 0x0d, 2: 0x0a})

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
                        labels_in=[(self.START + 0x30,
                                    loc(0x30).prefixed('ds_'))])
        self.assertEqual(out.local_names[self.START + 0x30], 'ds_loc_0030')
        self.assertEqual(len(out.local_records), 3)

    def test_unknown_symbol_is_an_error(self):
        with self.assertRaisesRegex(relink.RelinkError, 'ds_loc_4462'):
            self.link(relink.SymbolIndex({}, None, None, {'bss_0cfa': 1}))

    def test_a_shared_call_resolves_from_the_original_target(self):
        # A shared C spells another binary's name for the callee.  The
        # original instruction says where the call really goes, so the link
        # needs no alias table -- and no other binary's asm on disk.
        original = bytearray(self.START + 0x1a)
        original[self.START + 0x18:self.START + 0x1a] = (
            0x5100 - (self.START + 0x18 + 2)).to_bytes(2, 'little')
        index = relink.SymbolIndex({0x5100: 'api_idx_0004_SMTU'}, None, None,
                                   {'bss_0cfa': 0xcfa, 'tbl': 0xd20})
        out = relink.link('aztec_foo', self.START, _foo(), index,
                          bytes(original), (),
                          resolve_by_address=True)
        disp = int.from_bytes(out.code[0x18:0x1a], 'little', signed=True)
        self.assertEqual(self.START + 0x18 + 2 + disp, 0x5100)
        self.assertEqual(out.refs[0x18].text, 'api_idx_0004_SMTU')

    def test_an_unknown_call_is_still_an_error_without_the_original_rule(self):
        # Only a shared source links by the original instruction; a hand C
        # still has to name a label the image defines.
        original = bytearray(self.START + 0x1a)
        original[self.START + 0x18:self.START + 0x1a] = (
            0x5100 - (self.START + 0x18 + 2)).to_bytes(2, 'little')
        index = relink.SymbolIndex({0x5100: 'api_idx_0004_SMTU'}, None, None,
                                   {'bss_0cfa': 0xcfa, 'tbl': 0xd20})
        with self.assertRaisesRegex(relink.RelinkError, 'ds_loc_4462'):
            relink.link('aztec_foo', self.START, _foo(), index, bytes(original),
                        ())

    def test_a_shared_call_resolves_to_a_neighbour_label(self):
        # The original target may carry only a label the build placed (a
        # neighbour's), not one the symbol index knows.
        original = bytearray(self.START + 0x1a)
        original[self.START + 0x18:self.START + 0x1a] = (
            0x5100 - (self.START + 0x18 + 2)).to_bytes(2, 'little')
        index = relink.SymbolIndex({}, None, None,
                                   {'bss_0cfa': 0xcfa, 'tbl': 0xd20})
        out = relink.link('aztec_foo', self.START, _foo(), index,
                          bytes(original), (), {0x5100: 'loc_GPIH'},
                          resolve_by_address=True)
        disp = int.from_bytes(out.code[0x18:0x1a], 'little', signed=True)
        self.assertEqual(self.START + 0x18 + 2 + disp, 0x5100)
        self.assertEqual(out.refs[0x18].text, 'loc_GPIH')

    def test_the_original_never_overrides_a_name_the_image_defines(self):
        original = bytearray(self.START + 0x1a)
        original[self.START + 0x18:self.START + 0x1a] = (
            0x4f00 - (self.START + 0x18 + 2)).to_bytes(2, 'little')
        out = relink.link('aztec_foo', self.START, _foo(), _index(),
                          bytes(original), (), resolve_by_address=True)
        self.assertEqual(out.refs[0x18].text, 'ds_loc_4462')

    def _unnamed_index(self, canonical):
        code = {0x5000: 'ds_loc_4462', 0x4f00: 'aztec_close'}
        data = {'dseg_0d10': 0xd10, 'tbl': 0xd20}
        return relink.SymbolIndex(code, None, None, data,
                                  data_symbol=lambda off: canonical)

    def test_a_data_object_no_operand_names_becomes_a_symbol(self):
        out = self.link(self._unnamed_index('bss_0cfa'))
        self.assertEqual(out.refs[0xf].text, 'bss_0cfa')
        self.assertEqual(out.minted, {'bss_0cfa': 0xcfa})

    def test_a_wrong_data_prefix_is_an_error(self):
        with self.assertRaisesRegex(relink.RelinkError, "calls DS:0x0cfa 'dseg_0cfa'"):
            self.link(self._unnamed_index('dseg_0cfa'))

    def test_a_place_symbol_keeps_its_own_name(self):
        """``_Uorg`` (BSS start) is a symbol of its own at the address the
        original link gave it, whatever object starts there."""
        func = Func('_f', 'f', 0, b'\xbf\x00\x00',
                    [Fixup(1, 'WABS', 'GBLSYM', 0, '_Uorg_')])
        image = bytearray(self.START + 3)
        image[self.START + 1:self.START + 3] = (0x2534).to_bytes(2, 'little')
        index = relink.SymbolIndex(
            {}, None, None, {'keep': 0x2534},
            data_symbol=lambda off: Symbol.data(Space.BSS, off))
        out = relink.link('aztec_f', self.START, func, index, bytes(image), ())
        self.assertEqual(out.refs[1].text, '_Uorg')
        self.assertEqual(int.from_bytes(out.code[1:3], 'little'), 0x2534)
        self.assertEqual({str(k): v for k, v in out.minted.items()},
                         {'_Uorg': 0x2534})

    def test_the_data_segment_paragraph_keeps_the_original_word(self):
        """``mov bp,dataseg``: the exe's relocation table fixes it at load."""
        func = Func('_f', 'f', 0, b'\xbd\x00\x00',
                    [Fixup(1, 'WABS', 'DATASEG', 0, None)])
        image = bytearray(self.START + 3)
        image[self.START + 1:self.START + 3] = (0x38e).to_bytes(2, 'little')
        out = relink.link('aztec_f', self.START, func, _index(), bytes(image), ())
        self.assertEqual(int.from_bytes(out.code[1:3], 'little'), 0x38e)
        self.assertNotIn(1, out.refs)

    def test_short_branch_out_of_range_is_an_error(self):
        func = _foo()
        func.locals['.0'] = 0x300
        with self.assertRaisesRegex(relink.RelinkError, 'out of range'):
            relink.link('aztec_foo', self.START, func, _index(), b'')

    def test_a_code_address_operand_is_relative_to_the_image_base(self):
        func = Func('_f', 'f', 0, b'\xb8\x00\x00',
                    [Fixup(1, 'WABS', 'GBLSYM', 0, 'aztec_close_')])
        index = _index()
        index.image_base = 0x200
        out = relink.link('aztec_f', 0, func, index, b'')
        self.assertEqual(out.refs[1].text, 'aztec_close - IMAGE_BASE')
        self.assertEqual(bytes(out.code[1:]),
                         (index.code['aztec_close'] - 0x200).to_bytes(2, 'little'))

    def test_a_code_address_without_an_image_base_is_an_error(self):
        func = Func('_f', 'f', 0, b'\xb8\x00\x00',
                    [Fixup(1, 'WABS', 'GBLSYM', 0, 'aztec_close_')])
        with self.assertRaisesRegex(relink.RelinkError, 'image base'):
            relink.link('aztec_f', 0, func, _index(), b'')

    def test_an_undecoded_expression_is_an_error(self):
        func = Func('_f', 'f', 0, b'\xb8\x00\x00',
                    [Fixup(1, 'Expr', 'MUL', None, None, expr=['x'])])
        with self.assertRaisesRegex(relink.RelinkError, 'linker can name'):
            relink.link('aztec_f', 0, func, _index(), b'\xb8\x34\x12')

    def _static(self, data, exe_bytes):
        """``mov ax, &crbuf`` where the original link put ``crbuf`` at 0xcf5."""
        func = Func('_f', 'f', 0, b'\xb8\x00\x00',
                    [Fixup(1, 'WABS', 'LCLSYM', None, '.2')],
                    data_locals={'.2': data})
        index = relink.SymbolIndex(
            data_symbol=lambda off: f'dseg_{off:04x}',
            data_bytes=lambda off, n: exe_bytes[:n])
        return relink.link('aztec_f', 0, func, index, b'\xb8\xf5\x0c')

    def test_module_static_data_is_named_where_the_exe_has_it(self):
        out = self._static(b'\r', b'\r')
        self.assertEqual(out.refs[1].text, 'dseg_0cf5')
        self.assertEqual(out.minted, {'dseg_0cf5': 0xcf5})

    def test_module_static_data_must_match_the_exe(self):
        with self.assertRaisesRegex(relink.RelinkError, 'the exe has 0d'):
            self._static(b'\n', b'\r')


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

    def test_message_constant_names_a_c_override_immediate(self):
        # A C-owned routine is re-decoded from the compiled bytes; the
        # per-operand map still has to name the producer instruction.
        code = b'\xb8\xea\x07'  # mov ax, 2026
        records = _c_bytes_to_records(
            code, 0x45ee, {0x45ee: 'cast_spell_from_menu'}, {}, None, None,
            message_symbols={(0x45ee, 1): 'MSG_CAST'},
            message_equ={'MSG_CAST': 2026})
        self.assertEqual([r['text'] for r in records], ['mov ax, MSG_CAST'])
        self.assertEqual(records[0]['type'], 'mnem')

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


class SwitchTableTest(unittest.TestCase):
    """A ``cc`` switch table in the code renders as the build's record."""

    START = 0x4400
    BASE = 0x200

    def render(self, entries, label_addrs=None):
        # jmp short .0 ; .1: nop ; ret ; dw .1 ; dw .1 ; .0: ret
        code = b'\xeb\x00\x90\xc3\x00\x00\x00\x00\xc3'
        fixups = [Fixup(1, 'BREL', 'LCLSYM', None, '.0'),
                  Fixup(4, 'WABS', 'LCLSYM', None, '.1'),
                  Fixup(6, 'WABS', 'LCLSYM', None, '.1')]
        func = Func('_f', 'f', 0, code, fixups, {'.0': 8, '.1': 2})
        case = self.START + 2
        original = bytearray(self.START + len(code))
        for site in (4, 6):
            original[self.START + site:self.START + site + 2] = (
                (case - self.BASE).to_bytes(2, 'little'))
        label_map = {self.START: 'aztec_f', case: 'jt_case_0'}
        index = relink.SymbolIndex(label_map, None, None, {},
                                   image_base=self.BASE)
        linked = relink.link('aztec_f', self.START, func, index,
                             bytes(original))
        table = {'type': 'jump_table', 'start': self.START + 4,
                 'end': self.START + 8, 'label': 'jt', 'jmp_addr': -1,
                 'entry_size': 2, 'entries': entries, 'adjust': 0,
                 'literal': False, 'keys': 0, 'note': ''}
        records = _c_bytes_to_records(
            bytes(linked.code), self.START, label_map, {}, None, None,
            linked=linked, image_base=self.BASE, data_spans=[(4, 8)],
            jump_tables=[table], label_addrs=label_addrs)
        return linked, records

    def test_table_relocations_are_claimed(self):
        linked, records = self.render(['jt_case_0', 'jt_case_0'])
        tables = [r for r in records if r['type'] == 'jump_table']
        self.assertEqual(len(tables), 1)
        self.assertEqual(tables[0]['entries'], ['jt_case_0', 'jt_case_0'])
        self.assertFalse(linked.failed)
        self.assertFalse(linked.unmatched)

    def test_entry_naming_another_label_fails(self):
        linked, _records = self.render(['jt_case_0', 'jt_other'],
                                       {'jt_other': self.START + 3})
        self.assertEqual(len(linked.failed), 1)
        self.assertEqual(linked.failed[0][0], self.START + 6)


class OverlaySwitchTableTest(unittest.TestCase):
    """An overlay's switch table words are CS offsets from its ``o_corg``."""

    START = 0x4400
    BASE = 14
    CORG = 0x5055

    def test_table_words_follow_the_load_origin(self):
        code = b'\xeb\x00\x90\xc3\x00\x00\x00\x00\xc3'
        fixups = [Fixup(1, 'BREL', 'LCLSYM', None, '.0'),
                  Fixup(4, 'WABS', 'LCLSYM', None, '.1'),
                  Fixup(6, 'WABS', 'LCLSYM', None, '.1')]
        func = Func('_f', 'f', 0, code, fixups, {'.0': 8, '.1': 2})
        case = self.START + 2
        word = (case - self.BASE + self.CORG).to_bytes(2, 'little')
        original = bytearray(self.START + len(code))
        for site in (4, 6):
            original[self.START + site:self.START + site + 2] = word
        label_map = {self.START: 'aztec_f', case: 'jt_case_0'}
        index = relink.SymbolIndex(label_map, None, None, {},
                                   image_base=self.BASE,
                                   code_origin=self.CORG)
        linked = relink.link('aztec_f', self.START, func, index,
                             bytes(original))
        self.assertEqual(bytes(linked.code[4:8]), word * 2)
        self.assertEqual(linked.refs[4].text,
                         'jt_case_0 - IMAGE_BASE + __zres_end')
        self.assertEqual(linked.refs[4].equ,
                         {'jt_case_0': case, '__zres_end': self.CORG})
        # A shifted table is claimed only when relocations vouch for it.
        table = {'type': 'jump_table', 'start': self.START + 4,
                 'end': self.START + 8, 'label': 'jt', 'jmp_addr': -1,
                 'entry_size': 2, 'entries': ['jt_case_0', 'jt_case_0'],
                 'adjust': self.CORG, 'literal': False, 'keys': 0,
                 'note': ''}
        records = _c_bytes_to_records(
            bytes(linked.code), self.START, label_map, {}, None, None,
            linked=linked, image_base=self.BASE, data_spans=[(4, 8)],
            jump_tables=[table])
        self.assertEqual(
            [r['type'] for r in records if r['type'] == 'jump_table'],
            ['jump_table'])
        self.assertFalse(linked.failed)
        self.assertFalse(linked.unmatched)


class RelabelTest(unittest.TestCase):
    def test_rewrite_skips_comments_and_literals(self):
        text = ('/* open is documented */\n'
                'f() { return open("open", 0); }\n')
        out = relabel.rewrite_identifiers(text, {'open': 'aztec_open'})
        self.assertIn('/* open is documented */', out)
        self.assertIn('aztec_open("open", 0)', out)

    def _errno_func(self, data_name):
        func = Func('_f', 'f', 0, b'\xe8\x00\x00\xa1\x00\x00',
                    [Fixup(1, 'WREL', 'GBLSYM', 0, 'open_'),
                     Fixup(4, 'WABS', 'GBLSYM', 0, 'errno_')])
        start = 0x100
        image = bytearray(0x200)
        # call from 0x101: target 0x180 -> disp = 0x180 - 0x103
        image[start + 1:start + 3] = (0x180 - (start + 3)).to_bytes(2, 'little')
        image[start + 4:start + 6] = (0xc72).to_bytes(2, 'little')
        index = relink.SymbolIndex({0x180: 'aztec_open'}, None, None,
                                   {data_name: 0xc72})
        return lambda: relabel.learn_names(
            'aztec_f', start, func, bytes(image), index,
            relabel.data_names(None, {data_name: 0xc72}))

    def test_learn_names_renames_routines_to_the_aztec_spelling(self):
        self.assertEqual(self._errno_func('errno')(), {'open': 'aztec_open'})

    def test_a_data_name_the_build_spells_otherwise_is_an_error(self):
        with self.assertRaisesRegex(relink.RelinkError,
                                    r"names DS:0x0c72 'errno', the build "
                                    r"calls it \['dseg_0c72'\]"):
            self._errno_func('dseg_0c72')()

if __name__ == '__main__':
    unittest.main()


class ResolvedBranchDataTest(unittest.TestCase):
    # ``ret`` then data bytes that decode as ``jb`` to the next byte.
    CODE = bytearray(b'\xc3\x72\x00\x24')

    def test_data_bytes_are_not_branches(self):
        self.assertTrue(relink._resolved_branches(self.CODE, ()))
        self.assertEqual(
            relink._resolved_branches(self.CODE, (), [(1, len(self.CODE))]),
            {})

    def test_code_runs_skip_the_data(self):
        self.assertEqual(relink.code_runs(10, [(2, 4), (7, 12)]),
                         [(0, 2), (4, 7)])
