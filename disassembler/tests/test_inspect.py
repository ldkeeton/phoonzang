import os
import tempfile
import unittest
from unittest import mock

from lib.link import LinkError
from lib.symtab import Kind, Source, Space, Symbol
from make import inspect, naming


class NumberTest(unittest.TestCase):
    def test_hex_spellings(self):
        self.assertEqual(inspect._number('0x6eb5'), 0x6eb5)
        self.assertEqual(inspect._number('6eb5'), 0x6eb5)
        self.assertEqual(inspect._number('911e'), 0x911e)
        self.assertEqual(inspect._number('100'), 100)


class TopLabelsTest(unittest.TestCase):
    def test_reads_top_level_labels_and_offsets(self):
        text = (
            '; auto-generated\n'
            'root:\n'
            '    mov ax, 0      ; 0x073b\n'
            'loc_tail:\n'
            '    ret            ; 0x07de\n'
            '@..root.l1:\n'
            '    ret            ; 0x07e0\n'
        )
        with tempfile.NamedTemporaryFile('w', suffix='.asm', delete=False) as f:
            f.write(text)
            path = f.name
        try:
            self.assertEqual(inspect.top_labels(path),
                             [('root', 0x073b, 1), ('loc_tail', 0x07de, 3)])
        finally:
            os.unlink(path)

    def test_reads_a_label_with_a_generated_comment(self):
        text = (
            '; auto-generated\n'
            'root: ; Aztec csav frame=0x0000\n'
            '    mov ax, 0      ; 0x0e03\n'
            'loc_tail: ; frame=0x0002\n'
            '    ret            ; 0x0e81\n'
        )
        with tempfile.NamedTemporaryFile('w', suffix='.asm', delete=False) as f:
            f.write(text)
            path = f.name
        try:
            self.assertEqual(inspect.top_labels(path),
                             [('root', 0x0e03, 1), ('loc_tail', 0x0e81, 3)])
        finally:
            os.unlink(path)


class _Model:
    """Just enough SegmentModel for a DS operand."""
    data_names = {}

    def data_space(self, offset):
        return 'bss'

    def resolve(self, segment, offset):
        return ('bss',)


class RawDataRefsTest(unittest.TestCase):
    def test_finds_unlabeled_ds_displacement(self):
        text = ('    mov al, byte [bx + 0x6eb5]  ; 0x0771\n'
                '    mov al, byte [bp - 0x000a] ; frame slot\n'
                '    mov al, byte [bx + 0x14]   ; struct field\n')
        rows = naming._raw_data_refs('P', text, _Model(), {}, set())
        self.assertEqual([row['value'] for row in rows], [0x6eb5])
        self.assertEqual(rows[0]['canonical'], 'bss_6eb5')
        self.assertEqual(rows[0]['space'], 'bss')

    def test_skips_a_known_operand(self):
        text = '    mov al, byte [bx + 0x6eb5]\n'
        rows = naming._raw_data_refs('P', text, _Model(), {}, {0x6eb5})
        self.assertEqual(rows, [])


def _routine(name, offset):
    return Symbol(name, kind=Kind.ROUTINE, source=Source.SIDECAR,
                  offset=offset)


def _flag(name, offset):
    return Symbol.data(Space.CSEG, offset, name)


class SplitTopLabelsTest(unittest.TestCase):
    def test_symbol_offsets_win_over_borrowed_addresses(self):
        # A ``db`` line carries no ``; 0x...`` comment, so top_labels gives
        # both flag labels the next instruction's address.  The symbol
        # sidecar knows the real bytes.
        tops = [('root', 0x100, 0),
                ('flag_a', 0x103, 1), ('flag_b', 0x103, 2),
                ('next', 0x110, 3)]
        symbols = {'root': _routine('root', 0x100),
                   'flag_a': _flag('flag_a', 0x103),
                   'flag_b': _flag('flag_b', 0x104),
                   'next': _routine('next', 0x110)}
        code, embedded = inspect._split_top_labels(
            tops, symbols, 0x100, 0x120)
        self.assertEqual([row[1] for row in code], ['root', 'next'])
        self.assertEqual(embedded, [{'start': 0x103, 'end': 0x105,
                                     'names': ['flag_a', 'flag_b']}])

    def test_data_prefixed_names_are_data_without_a_symbol(self):
        tops = [('root', 0x100, 0), ('cseg_0103', 0x103, 1),
                ('next', 0x110, 2)]
        symbols = {'root': _routine('root', 0x100),
                   'next': _routine('next', 0x110)}
        code, embedded = inspect._split_top_labels(
            tops, symbols, 0x100, 0x120)
        self.assertEqual([row[1] for row in code], ['root', 'next'])
        self.assertEqual(embedded, [{'start': 0x103, 'end': 0x104,
                                     'names': ['cseg_0103']}])


class FragmentRootTest(unittest.TestCase):
    def _fragment(self, tops, symbols, start=0x100, end=0x120):
        labels = {start: _routine('root', start)}
        labels.update({addr: sym for name, addr, _ in tops
                       for sym in [symbols.get(name)]
                       if sym is not None})
        with mock.patch.object(inspect, 'asm_file', return_value=__file__), \
             mock.patch.object(inspect, 'load_spans',
                               return_value={'root': (start, end)}), \
             mock.patch.object(inspect, 'load_labels',
                               return_value=labels), \
             mock.patch.object(inspect, 'load_symbols',
                               return_value=symbols), \
             mock.patch.object(inspect, 'top_labels',
                               return_value=tops), \
             mock.patch.object(inspect, '_call_sites', return_value={}):
            return inspect._fragment('P', 'b', 'root')

    def test_embedded_data_does_not_end_the_root(self):
        tops = [('root', 0x100, 0),
                ('flag_a', 0x103, 1), ('flag_b', 0x103, 2),
                ('next', 0x110, 3)]
        symbols = {'root': _routine('root', 0x100),
                   'flag_a': _flag('flag_a', 0x103),
                   'flag_b': _flag('flag_b', 0x104),
                   'next': _routine('next', 0x110)}
        frag = self._fragment(tops, symbols)
        self.assertEqual(frag['size'], 0x20)
        self.assertEqual([(m['name'], m['start'], m['end'])
                          for m in frag['members']],
                         [('root', 0x100, 0x110), ('next', 0x110, 0x120)])
        self.assertEqual(frag['embedded_data'],
                         [{'start': 0x103, 'end': 0x105,
                           'names': ['flag_a', 'flag_b']}])

    def test_one_routine_with_embedded_data_is_the_whole_span(self):
        tops = [('root', 0x100, 0), ('flag_a', 0x103, 1)]
        symbols = {'root': _routine('root', 0x100),
                   'flag_a': _flag('flag_a', 0x103)}
        frag = self._fragment(tops, symbols)
        self.assertEqual(len(frag['members']), 1)
        self.assertEqual((frag['members'][0]['start'],
                          frag['members'][0]['end']),
                         (0x100, 0x120))
        self.assertEqual(frag['embedded_data'],
                         [{'start': 0x103, 'end': 0x104,
                           'names': ['flag_a']}])


class SharedSourceTest(unittest.TestCase):
    class _Sym:
        def __init__(self, name):
            self.name = name

        def __str__(self):
            return self.name

    def test_missing_shared_labels_is_not_an_error(self):
        with mock.patch.object(inspect, 'read_label_json',
                               side_effect=LinkError('no export')):
            self.assertEqual(inspect.load_labels('P', 'shared'), {})

    def test_borrows_the_first_donor_with_a_span(self):
        labels = {'b1': {}, 'b2': {0x10: self._Sym('root')}}
        spans = {'b1': {}, 'b2': {'root': (0x10, 0x20)}}
        symbols = {'b2': {'root': object()}}
        with mock.patch.object(inspect, 'discover_binaries',
                               return_value={'b1': ('x', 0),
                                             'b2': ('y', 0)}), \
                mock.patch.object(inspect, 'load_labels',
                                  side_effect=lambda p, b: labels[b]), \
                mock.patch.object(inspect, 'load_spans',
                                  side_effect=lambda p, b: spans[b]), \
                mock.patch.object(inspect, 'load_symbols',
                                  side_effect=lambda p, b: symbols[b]):
            got = inspect._shared_source('P', 'root')
        self.assertEqual(got, (labels['b2'], spans['b2'], symbols['b2']))


if __name__ == '__main__':
    unittest.main()
