"""Data-pointer scorer tests (plan.md Section 8-10, step D4).

Synthetic unit tests for the individual rules (candidate collection, the
table-read anchor, hard refusals, space membership).
"""

import struct
import unittest


from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.model import IS_DATA
from lib.segments import SegmentModel
from lib.segdataflow import DATA
from lib.compare.regions import carve, Region, region_at
from lib.compare import pointers as P


def _mz_model(file_size, *, cs_origin=0x200, data_origin=0x100,
              bss_boundary=0x300):
    return SegmentModel(
        kind='mz', file_size=file_size, cs_origin=cs_origin,
        data_origin=data_origin, bss_boundary=bss_boundary,
        header_size=0x200,
    )


class _Flow:
    """Minimal stand-in for ``SegmentFlow``."""

    def __init__(self, space):
        self._space = space

    def effective_segment(self, insn, op):
        return 'ds', self._space

    def space_of(self, address, reg):
        return self._space


def _decode(code, base=0):
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True
    return list(md.disasm(code, base))


class CandidateCollectionTests(unittest.TestCase):
    def test_only_aligned_non_code_in_space_words(self):
        data = bytearray(0x40)
        # data segment is 0x100..0x300; values below 0x300 are in space.
        struct.pack_into('<H', data, 0x10, 0x0010)   # in space
        struct.pack_into('<H', data, 0x12, 0x0000)   # zero -> excluded
        struct.pack_into('<H', data, 0x1c, 0x0500)   # out of space -> excluded
        model = _mz_model(0x400)
        emit_class = bytearray([IS_DATA]) * 0x40
        found = {o for o, _, _ in P.collect_candidates(data, model, emit_class)}
        self.assertIn(0x10, found)
        self.assertNotIn(0x12, found)
        self.assertNotIn(0x1c, found)

    def test_code_bytes_are_not_candidates(self):
        data = bytearray(0x40)
        struct.pack_into('<H', data, 0x20, 0x0010)
        model = _mz_model(0x400)
        emit_class = bytearray([IS_DATA]) * 0x40
        emit_class[0x20] = 1  # IS_CODE
        found = {o for o, _, _ in P.collect_candidates(data, model, emit_class)}
        self.assertNotIn(0x20, found)

    def test_space_membership_limits_ds_to_file_backed_data(self):
        model = _mz_model(0x800)          # bss_boundary 0x300, data_origin 0x100
        self.assertEqual(P._in_space(0x0200, model), {'ds', 'cs'})
        # 0x400 >= bss_boundary -> not a DS candidate, but inside the file (CS).
        self.assertEqual(P._in_space(0x0400, model), {'cs'})


class AccessEvidenceTests(unittest.TestCase):
    def test_word_read_at_absolute_offset_is_pointer_sized(self):
        insns = _decode(b'\xa1\x00\x02')          # mov ax, [0x0200]
        reads, non, bases, _ = P._access_evidence(
            insns, _mz_model(0x400), _Flow('data'))
        self.assertIn(0x100 + 0x200, reads)
        self.assertEqual(bases, set())

    def test_byte_read_is_not_pointer_sized(self):
        insns = _decode(b'\xa0\x00\x02')          # mov al, [0x0200]
        reads, non, _, _ = P._access_evidence(
            insns, _mz_model(0x400), _Flow('data'))
        self.assertEqual(reads, set())
        self.assertIn(0x100 + 0x200, non)

    def test_register_relative_word_read_is_a_table_base(self):
        insns = _decode(b'\x8b\x87\x00\x02')      # mov ax, [bx+0x0200]
        _, _, bases, sources = P._access_evidence(
            insns, _mz_model(0x400), _Flow('data'))
        self.assertEqual(bases, {0x100 + 0x200})
        self.assertEqual(sources[0x100 + 0x200][1], 'table')

    def test_fixed_ds_slot_is_ignored(self):
        insns = _decode(b'\xff\x36\x2e\x00'       # push word [0x2e]
                        b'\xff\x36\x00\x02')      # push word [0x0200]
        reads, _, _, _ = P._access_evidence(
            insns, _mz_model(0x400), _Flow('data'))
        self.assertNotIn(0x100 + 0x2E, reads)
        self.assertIn(0x100 + 0x200, reads)


class ConsumptionTests(unittest.TestCase):
    """E1: the loaded word is *used as an address* (plan.md Section 18)."""

    def test_load_then_string_store_is_consumed(self):
        # mov di, [0x0200] ; stosb  ->  di is the es:di base of the store.
        insns = _decode(b'\x8b\x3e\x00\x02' b'\xaa')
        consumed = P._consumed_reads(insns, _mz_model(0x400), _Flow(DATA))
        self.assertEqual(consumed, {0x100 + 0x200: 'ds'})

    def test_index_use_is_not_consumption(self):
        # mov ax, [0x0200] ; mov dl, [bx+ax]  ->  ax is an *index* beside a
        # base, so the stored value may be a plain number.
        insns = _decode(b'\xa1\x00\x02' b'\x8a\x10')
        consumed = P._consumed_reads(insns, _mz_model(0x400), _Flow(DATA))
        self.assertEqual(consumed, {})

    def test_redefined_register_is_not_consumed(self):
        # mov di, [0x0200] ; xor di, di ; stosb
        insns = _decode(b'\x8b\x3e\x00\x02' b'\x31\xff' b'\xaa')
        consumed = P._consumed_reads(insns, _mz_model(0x400), _Flow(DATA))
        self.assertEqual(consumed, {})

    def test_consumption_proves_space_outside_the_data_bound(self):
        # The word holds 0x0500 (> bss_boundary 0x300), so without a consumer
        # it is only a CS candidate; consumption proves it is a DS pointer.
        data = bytearray(0x300)
        struct.pack_into('<H', data, 0x120, 0x0500)
        insns = _decode(b'\x8b\x3e\x20\x00' b'\xaa')   # mov di,[0x0020]; stosb
        report = P.score_candidates(
            data, _mz_model(0x800), bytearray([IS_DATA]) * len(data),
            instructions=insns, segment_flow=_Flow(DATA))
        promoted = {c['offset']: c for c in report['promoted']}
        self.assertIn(0x120, promoted)
        self.assertEqual(promoted[0x120]['space'], 'ds')
        self.assertIn('consumption', promoted[0x120]['anchors'])

    def test_consumption_respects_the_data_bound_without_a_consumer(self):
        data = bytearray(0x300)
        struct.pack_into('<H', data, 0x120, 0x0500)
        report = P.score_candidates(
            data, _mz_model(0x800), bytearray([IS_DATA]) * len(data))
        self.assertEqual(report['promoted'], [])

    def test_consumption_does_not_override_a_corpus_negative(self):
        data = bytearray(0x300)
        struct.pack_into('<H', data, 0x120, 0x0500)
        insns = _decode(b'\x8b\x3e\x20\x00' b'\xaa')
        report = P.score_candidates(
            data, _mz_model(0x800), bytearray([IS_DATA]) * len(data),
            instructions=insns, segment_flow=_Flow(DATA),
            not_pointers=[{'offset': 0x120}])
        by_offset = {c['offset']: c for c in report['candidates']}
        self.assertEqual(by_offset[0x120]['refused'], 'corpus-negative')
        self.assertEqual(report['promoted'], [])


class TableRunTests(unittest.TestCase):
    def test_extension_follows_ascending_in_space_words(self):
        data = bytearray(0x40)
        for i, value in enumerate((0x0010, 0x0020, 0x0030, 0x0005)):
            struct.pack_into('<H', data, 0x10 + 2 * i, value)
        offsets = P._table_read_offsets(data, {0x10}, _mz_model(0x400))
        self.assertEqual(offsets, {0x10, 0x12, 0x14})


class ArrayRunTests(unittest.TestCase):
    def _data(self):
        data = bytearray(0x40)
        for i, value in enumerate((0x0010, 0x0030, 0x0050)):
            struct.pack_into('<H', data, 0x10 + 2 * i, value)
        return data

    def test_run_requires_known_targets(self):
        data = self._data()
        model = _mz_model(0x400)          # data_origin 0x100
        emit_class = bytearray([IS_DATA]) * 0x40
        targets = {0x100 + v for v in (0x10, 0x30, 0x50)}
        offsets, run_targets = P._array_run_offsets(
            data, model, emit_class, targets)
        self.assertEqual(offsets, {0x10, 0x12, 0x14})
        self.assertEqual(run_targets, targets)

    def test_run_is_empty_without_known_targets(self):
        data = self._data()
        emit_class = bytearray([IS_DATA]) * 0x40
        offsets, _ = P._array_run_offsets(
            data, _mz_model(0x400), emit_class, set())
        self.assertEqual(offsets, set())


class RefusalTests(unittest.TestCase):
    def _image(self):
        data = bytearray(0x300)
        data[0x140:0x14b] = b'HELLO WORLD'   # string region, min length 6
        struct.pack_into('<H', data, 0x120, 0x0042)  # -> 0x142 (mid-string)
        struct.pack_into('<H', data, 0x122, 0x0040)  # -> 0x140 (start)
        return bytes(data)

    def test_mid_string_target_is_refused(self):
        data = self._image()
        regions = carve(data)
        self.assertEqual(region_at(regions, 0x140).kind, 'string')
        report = P.score_candidates(
            data, _mz_model(0x400), bytearray([IS_DATA]) * len(data),
            regions=regions)
        by_offset = {c['offset']: c for c in report['candidates']}
        self.assertEqual(by_offset[0x120]['refused'], 'target-mid-string')
        self.assertIsNone(by_offset[0x122]['refused'])

    def test_fixed_ds_slot_refused(self):
        data = bytearray(0x300)
        struct.pack_into('<H', data, 0x120, 0x002E)
        report = P.score_candidates(
            data, _mz_model(0x400), bytearray([IS_DATA]) * len(data))
        by_offset = {c['offset']: c for c in report['candidates']}
        self.assertEqual(by_offset[0x120]['refused'], 'fixed-ds-slot')

    def test_corpus_negative_is_refused(self):
        data = bytearray(0x300)
        struct.pack_into('<H', data, 0x120, 0x0040)
        report = P.score_candidates(
            data, _mz_model(0x400), bytearray([IS_DATA]) * len(data),
            not_pointers=[{'offset': 0x120}])
        by_offset = {c['offset']: c for c in report['candidates']}
        self.assertEqual(by_offset[0x120]['refused'], 'corpus-negative')


class AnchorGateTests(unittest.TestCase):
    def test_alignment_alone_does_not_promote(self):
        data = bytearray(0x300)
        struct.pack_into('<H', data, 0x120, 0x0040)  # in space, no evidence
        report = P.score_candidates(
            data, _mz_model(0x400), bytearray([IS_DATA]) * len(data))
        self.assertEqual(report['promoted'], [])

    def test_non_pointer_access_blocks_promotion(self):
        # A word read only at dword size takes the large negative term even
        # when it would otherwise be anchored.
        data = bytearray(0x300)
        struct.pack_into('<H', data, 0x120, 0x0040)
        insns = _decode(b'\xc4\x1e\x20\x01')   # les bx, [0x0120]
        report = P.score_candidates(
            data, _mz_model(0x400), bytearray([IS_DATA]) * len(data),
            instructions=insns, segment_flow=_Flow('data'))
        promoted = {c['offset'] for c in report['promoted']}
        self.assertNotIn(0x120, promoted)


class BacklogCorroborationTests(unittest.TestCase):
    """A target-shape hint alone must not manufacture a backlog entry.

    ddisasm's ``point-to-boundary-sym`` (+4) needs a *section* boundary plus a
    structural reason (loop bound, array end, last section).  In a 16-bit image
    any cheapened version fires on coincidence: the vinstall font blob at
    ``0x401b..0x43a1`` produced 224 candidates and 10 region-start hits, and the
    survivor ``0x4374`` reached a reviewer as a possible pointer.  We therefore
    omit the term and only list a candidate whose evidence is about an *access*.
    """

    def test_region_start_is_not_evidence(self):
        from lib.compare.regions import Region
        data = bytearray(0x300)
        struct.pack_into('<H', data, 0x120, 0x0040)      # target = 0x140
        regions = [Region(0x140, 0x150, 'string', 'printable run')]
        report = P.score_candidates(
            data, _mz_model(0x400), bytearray([IS_DATA]) * len(data),
            regions=regions)
        by_offset = {c['offset']: c for c in report['candidates']}
        self.assertNotIn('boundary', by_offset[0x120]['evidence'])
        self.assertEqual(report['unproven'], [])

    def test_known_label_alone_is_not_backlog_material(self):
        data = bytearray(0x300)
        struct.pack_into('<H', data, 0x120, 0x0040)      # target = 0x140
        report = P.score_candidates(
            data, _mz_model(0x400), bytearray([IS_DATA]) * len(data),
            known_addrs={0x140})
        by_offset = {c['offset']: c for c in report['candidates']}
        self.assertIn('known-label', by_offset[0x120]['evidence'])
        self.assertEqual(report['unproven'], [])

    def test_an_access_hint_alone_is_backlog_material(self):
        # The same word, now actually read at pointer size: the evidence is a
        # fact about the code, so it is listed even without an anchor.
        data = bytearray(0x300)
        struct.pack_into('<H', data, 0x120, 0x0040)
        insns = _decode(b'\x8b\x3e\x20\x00')             # mov di, [0x0020]
        report = P.score_candidates(
            data, _mz_model(0x400), bytearray([IS_DATA]) * len(data),
            instructions=insns, segment_flow=_Flow(DATA))
        by_offset = {c['offset']: c for c in report['candidates']}
        self.assertIn('word-read', by_offset[0x120]['evidence'])
        self.assertEqual([c['offset'] for c in report['unproven']], [0x120])


if __name__ == '__main__':
    unittest.main()
