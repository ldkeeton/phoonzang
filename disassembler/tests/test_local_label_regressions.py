import unittest

from tests.syms import local


# 0x1a84..0x1b1c, 0x2c74/0x2d5c and 0x4879..0x48fc were once kept global: each
# of their routine's switch arms was rooted as an entry of its own, cutting
# ``ds_app_UPSN``, ``ds_app_JKOJ`` and ``sprintf`` into pieces that branched
# into each other.  A ``jmp``-dispatched arm is a block of its dispatcher now
# (``runner``: a switch arm loses a generic root), so each routine is whole and
# they are its locals again.


class OverrideLocalLabelTests(unittest.TestCase):
    """A C override's branches must name labels the override itself defines.

    ``_override_local_labels`` derives them from the bytes being emitted.  The
    disassembly's table names bytes of the *original* routine, and ``relink``
    only sees relocations -- the Aztec compiler resolves some short forward
    branches itself -- so neither is enough on its own; before this, the text
    named a disassembly label that override never defined and NASM failed the
    whole binary with ``symbol ... not defined`` (D7.2c-2e).
    """

    # 0x100: je +3 -> 0x105; 0x102: jmp +0 -> 0x104; 0x104/0x105: ret
    BYTES = bytes.fromhex('74 03 eb 00 c3 c3')
    START, END = 0x100, 0x106

    def _derive(self, local_labels=None, linked=None, taken=frozenset()):
        from lib.compare.coverrides import _override_local_labels
        return _override_local_labels(
            self.BYTES, self.START, self.END, {}, local_labels, linked, 'foo',
            set(taken))

    def test_a_target_relink_never_saw_still_gets_a_definition(self):
        names, records = self._derive()
        self.assertEqual(names, {0x104: '@..foo.l1', 0x105: '@..foo.l2'})
        self.assertEqual([(r['text'], r['offset']) for r in records],
                         [('@..foo.l1:', 0x104), ('@..foo.l2:', 0x105)])

    def test_the_disassembly_name_is_reused_and_defined_once(self):
        names, records = self._derive(local_labels={0x105: local('foo', 0x105, 9)},
                                      taken={0x104})
        # 0x105 keeps the disassembly's name; 0x104 is numbered after it, and
        # only the target with no label record yet is defined.
        self.assertEqual(names, {0x105: '@..foo.l9', 0x104: '@..foo.l10'})
        self.assertEqual([r['offset'] for r in records], [0x105])

    def test_relinks_own_name_wins_and_is_not_redefined(self):
        class _Linked:
            local_names = {0x104: local('foo', 0x104, 1)}
        names, records = self._derive(linked=_Linked(), taken={0x104})
        self.assertEqual(names[0x104], '@..foo.l1')
        self.assertNotIn(0x104, [r['offset'] for r in records])

    def test_a_global_target_is_left_to_the_label_map(self):
        from lib.compare.coverrides import _override_local_labels
        names, records = _override_local_labels(
            self.BYTES, self.START, self.END, {0x105: 'leaf_loc_ABCD'}, {},
            None, 'foo', set())
        self.assertNotIn(0x105, names)
        self.assertEqual([r['offset'] for r in records], [0x104])


if __name__ == '__main__':
    unittest.main()
