"""Message-id constants: decoding, naming, headers and the argument walker."""

import os
import re
import unittest

from capstone import CS_ARCH_X86, CS_MODE_16, Cs

from lib import msgids
from lib.format import format_instruction
from lib.sidecar.binary import per_binary
from lib.sidecar.loader import load as load_sidecar

_TESTS = os.path.dirname(os.path.abspath(__file__))
_ASM = os.path.dirname(_TESTS)
_ROOT = os.path.dirname(_ASM)
_APP = os.path.join(_ROOT, 'apps', 'DSAVANT')
_SRC = os.path.join(_ROOT, 'src_DSAVANT')


def _disassemble(code, address=0):
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True
    return list(md.disasm(code, address))


class DecodeTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        spec = load_sidecar('DSAVANT')['message_data']
        cls.messages, cls.skipped = msgids.decode_messages(_APP, spec)

    def test_sidecar_names_the_data_files(self):
        # The file names are the game's data, not the decoder's: the sidecar
        # is the only place they are spelled.
        spec = load_sidecar('DSAVANT')['message_data']
        self.assertEqual(sorted(spec),
                         ['blocks', 'directory', 'tree'])
        for path in (os.path.join(_APP, spec['directory']),
                     os.path.join(_APP, spec['blocks']),
                     os.path.join(_APP, spec['tree'])):
            self.assertTrue(os.path.isfile(path), path)

    def test_known_ids(self):
        self.assertEqual(self.messages[2026], 'CAST')
        self.assertEqual(self.messages[2027], 'CANCEL')
        self.assertEqual(self.messages[1050], 'SECURITY CLEARANCE')
        self.assertEqual(self.messages[3505], 'CANCEL')

    def test_record_count_is_plausible(self):
        self.assertGreater(len(self.messages), 10000)
        self.assertLess(len(self.skipped), 50)


class IdentifierTest(unittest.TestCase):
    def test_examples(self):
        cases = {
            2026: ('CAST', 'MSG_CAST'),
            2027: ('CANCEL', 'MSG_CANCEL'),
            1050: ('SECURITY CLEARANCE', 'MSG_SECURITY_CLEARANCE'),
            1051: ('PLEASE TURN TO PAGE $ OF YOUR',
                   'MSG_PLEASE_TURN_TO_PAGE_OF_YOUR'),
            485: (' At ', 'MSG_AT'),
            487: (' Is Dead', 'MSG_IS_DEAD'),
            3512: (' calls for help!', 'MSG_CALLS_FOR_HELP'),
            3524: ('Died!', 'MSG_DIED'),
        }
        for value, (text, expected) in cases.items():
            self.assertEqual(msgids.identifier(value, text), expected)

    def test_control_bytes_force_the_id_suffix(self):
        self.assertEqual(msgids.identifier(2500, '\x01\x01CRUSADERS'),
                         'MSG_CRUSADERS_2500')

    def test_long_names_truncate_at_a_word_boundary(self):
        name = msgids.identifier(1234, 'A' * 20 + ' ' + 'B' * 30)
        self.assertLessEqual(len(name), msgids.MAX_NAME)
        self.assertTrue(name.endswith('_1234'))

    def test_empty_text_uses_the_id(self):
        self.assertEqual(msgids.identifier(42, '\x01'), 'MSG_42')

    def test_collisions_are_suffixed(self):
        messages = {1: 'CANCEL', 2: 'CANCEL', 3: 'CAST'}
        constants = msgids.build_constants(messages, [1, 2, 3])
        names = {constant.value: constant.name for constant in constants}
        self.assertEqual(names[1], 'MSG_CANCEL_1')
        self.assertEqual(names[2], 'MSG_CANCEL_2')
        self.assertEqual(names[3], 'MSG_CAST')

    def test_a_name_does_not_depend_on_use(self):
        # A cleaned tree renders before the header is complete, so two builds
        # of the same data must spell an id the same way whatever is used.
        messages = {1: 'CANCEL', 2: 'CANCEL', 3: 'CAST'}
        only_three = msgids.build_constants(messages, [3])
        everything = msgids.build_constants(messages, [1, 2, 3])
        self.assertEqual(only_three[0].name, 'MSG_CAST')
        self.assertIn(('MSG_CAST', 3),
                      [(c.name, c.value) for c in everything])

    def test_base_value_wins_over_a_direct_name(self):
        constants = msgids.build_constants(
            {1700: 'H\'Jenn-Ra T\'Rang'}, [1700],
            [{'value': 1700, 'name': 'MSG_SLOT_NAME_BASE'}])
        self.assertEqual([(c.value, c.name) for c in constants],
                         [(1700, 'MSG_SLOT_NAME_BASE')])


class HeaderTest(unittest.TestCase):
    def test_round_trip(self):
        constants = [
            msgids.MessageConstant(2026, 'MSG_CAST', 'CAST'),
            msgids.MessageConstant(2027, 'MSG_CANCEL', 'CANCEL'),
        ]
        names, values = msgids.parse_inc(msgids.inc_text(constants))
        self.assertEqual(names, {'MSG_CAST': 2026, 'MSG_CANCEL': 2027})
        self.assertEqual(values, {2026: 'MSG_CAST', 2027: 'MSG_CANCEL'})
        header, header_values = msgids.parse_header(
            msgids.header_text(constants))
        self.assertEqual(header, names)
        self.assertEqual(header_values, values)

    def test_one_guard_covers_the_game(self):
        self.assertIn('%ifndef MSG_INC', msgids.inc_text([]))
        self.assertIn('#ifndef MSG_H', msgids.header_text([]))

    def test_the_header_covers_every_binary(self):
        # One id namespace for the game: an id used only by vdopt and a base
        # used only by ds are declared together, with collisions renamed.
        names, _values = msgids.read_constants(
            os.path.join(_SRC, 'include', 'msg.inc'))
        self.assertIn('MSG_CAST', names)          # vdopt
        self.assertIn('MSG_CLASS_BASE', names)    # ds
        self.assertIn('MSG_SLOT_NAME_BASE', names)
        self.assertIn('MSG_FAILURE_486', names)   # vdopt's "Failure"
        self.assertIn('MSG_FAILURE_465', names)   # vpcvw's "* FAILURE *"
        self.assertNotIn('MSG_FAILURE', names)
        # "CANCEL" has many ids in the database, so its spelling is fixed by
        # the data, not by which binaries happen to use it.
        self.assertIn('MSG_CANCEL_2321', names)
        self.assertNotIn('MSG_CANCEL', names)
        self.assertFalse(os.path.isdir(
            os.path.join(_SRC, 'include', 'msgs')))

    def test_checked_in_headers_agree(self):
        inc = os.path.join(_SRC, msgids.inc_rel())
        header = os.path.join(_SRC, msgids.header_rel())
        inc_names, inc_values = msgids.read_constants(inc)
        header_names, header_values = msgids.read_constants(header)
        self.assertTrue(inc_names, 'include/msg.inc is missing or empty')
        self.assertEqual(header_names, inc_names)
        self.assertEqual(header_values, inc_values)
        self.assertEqual(inc_values[2026], 'MSG_CAST')


class CleanTest(unittest.TestCase):
    def test_no_generated_file_is_exempt(self):
        # Including the message headers: the build regenerates them from the
        # message data (and, on a cleaned tree, the names the hand C uses).
        import tempfile
        from lib import autogen
        with tempfile.TemporaryDirectory() as root:
            os.makedirs(os.path.join(root, 'include'))
            header = os.path.join(root, 'include', 'msg.inc')
            hand = os.path.join(root, 'hand.c')
            with open(header, 'w') as f:
                f.write(f'{autogen.MARKER_ASM}\nMSG_X equ 1\n')
            with open(hand, 'w') as f:
                f.write('int x;\n')
            removed, kept = autogen.remove_generated(root)
            self.assertEqual(removed, 1)
            self.assertFalse(os.path.exists(header))
            self.assertTrue(os.path.exists(hand))
            self.assertEqual(kept, [hand])


def _hand_c_names():
    """Every ``MSG_*`` token the hand-owned ``.c`` files spell."""
    from lib import autogen
    used = set()
    for base, dirnames, filenames in os.walk(_SRC):
        dirnames[:] = [name for name in dirnames
                       if name not in ('include', 'build_out')]
        for name in filenames:
            if not name.endswith('.c'):
                continue
            path = os.path.join(base, name)
            if not autogen.hand_owned(path):
                continue
            with open(path, errors='replace') as f:
                used.update(re.findall(r'\bMSG_[A-Za-z0-9_]+\b', f.read()))
    return used


class HandCTest(unittest.TestCase):
    def test_every_message_constant_it_uses_is_defined(self):
        # The failure that deleted a build: a hand C includes msg.h, so every
        # MSG_* it names must be declared there.
        names, _values = msgids.read_constants(
            os.path.join(_SRC, msgids.header_rel()))
        used = _hand_c_names()
        self.assertEqual(sorted(used - set(names)), [])
        self.assertTrue(used)

    def test_the_cold_seed_declares_every_name_it_uses(self):
        # Nothing is rendered yet, so the header a C worker sees is only the
        # bases and these names; the full pass comes after rendering.
        outputs, _stats = msgids.generate_project(
            'DSAVANT', _ROOT, write=False, seed_only=True)
        names, _values = msgids.parse_inc(outputs[msgids.MSG_INC])
        self.assertEqual(sorted(_hand_c_names() - set(names)), [])


class SidecarTest(unittest.TestCase):
    def test_calls_and_bases_are_project_wide(self):
        sidecar = load_sidecar('DSAVANT')
        self.assertEqual(
            sorted(call['routine'] for call in sidecar['message_calls']),
            ['action_spell_dialog', 'find_message_record',
             'load_message_string', 'pick_spell_dialog', 'show_event_message',
             'show_message', 'spell_select_dialog'])
        self.assertEqual(
            [base['name'] for base in sidecar['message_bases']],
            ['MSG_CLASS_BASE', 'MSG_ORDINAL_BASE', 'MSG_SLOT_NAME_BASE',
             'MSG_SLOT_KIND_BASE', 'MSG_CODE_CHAR_BASE',
             'MSG_SPELL_NAME_BASE'])
        for info in sidecar['binaries'].values():
            self.assertNotIn('message_calls', info)
            self.assertNotIn('message_bases', info)

    def test_calls_are_available_per_binary(self):
        sidecar = load_sidecar('DSAVANT')
        entry = per_binary(sidecar, 'vdopt')
        calls = {call.routine: call
                 for call in msgids.message_calls(entry['message_calls'])}
        self.assertEqual(calls['load_message_string'].arg, 1)
        self.assertEqual(calls['pick_spell_dialog'].arg, 2)
        self.assertEqual(calls['pick_spell_dialog'].push, 2)
        # Every binary inherits the project table, not a hand-copied subset.
        self.assertEqual(
            set(calls),
            {call['routine'] for call in sidecar['message_calls']})

    def test_a_binary_can_override_one_entry(self):
        sidecar = {
            'message_calls': [
                {'routine': 'load_message_string', 'arg': 1, 'args': 2},
                {'routine': 'show_message', 'arg': 1, 'args': 1}],
            'message_bases': [
                {'value': 120, 'name': 'MSG_CLASS_BASE'},
                {'value': 4000, 'name': 'MSG_SPELL_NAME_BASE'}],
            'binaries': {'x': {
                'message_calls': [
                    {'routine': 'show_message', 'arg': 2, 'args': 3}]}},
        }
        entry = per_binary(sidecar, 'x')
        calls = {call.routine: call
                 for call in msgids.message_calls(entry['message_calls'])}
        self.assertEqual(set(calls), {'load_message_string', 'show_message'})
        self.assertEqual(calls['show_message'].arg, 2)
        self.assertEqual(calls['show_message'].args, 3)

    def test_a_binary_cannot_override_the_bases(self):
        # The bases name values in the message data; a per-binary copy would
        # disagree with the project-wide names the header spells.
        from lib.sidecar.binary import _validate_binary
        from lib.sidecar.errors import SidecarError
        with self.assertRaisesRegex(SidecarError, 'project-wide'):
            _validate_binary('x', {'message_bases': [
                {'value': 120, 'name': 'MSG_CLASS_BASE'}]})

    def test_bad_call_is_rejected(self):
        from lib.sidecar.messages import _validate_message_calls
        from lib.sidecar.errors import SidecarError
        with self.assertRaises(SidecarError):
            _validate_message_calls(
                [{'routine': 'f', 'arg': 3, 'args': 2}], 'x')
        with self.assertRaises(SidecarError):
            _validate_message_calls(
                [{'routine': 'f', 'arg': 1, 'args': 1},
                 {'routine': 'f', 'arg': 1, 'args': 1}], 'x')


class WalkTest(unittest.TestCase):
    def _symbols(self, code, calls, names, bases, resolve):
        return msgids.find_message_symbols(
            _disassemble(code), calls, names, bases, resolve)[0]

    def test_direct_id(self):
        # mov ax, 0x07ea; push ax; push word [bp + 4]; call 0x0100
        code = bytes.fromhex('b8ea0750ff7604e8f700')
        calls = [msgids.MessageCall('pick_spell_dialog', 2, 4, 2)]
        symbols = self._symbols(
            code, calls, {2026: 'MSG_CAST'}, {},
            lambda insn: 'pick_spell_dialog')
        self.assertEqual(symbols, {(0, 1): 'MSG_CAST'})

    def test_base(self):
        # push [bp + 4]; mov ax, [bp - 2]; add ax, 0x06a4; push ax; call
        code = bytes.fromhex('ff76048b46fe05a40650e8f400')
        calls = [msgids.MessageCall('load_message_string', 1, 2, 1)]
        symbols = self._symbols(
            code, calls, {}, {1700: 'MSG_SLOT_NAME_BASE'},
            lambda insn: 'load_message_string')
        self.assertEqual(symbols, {(6, 1): 'MSG_SLOT_NAME_BASE'})

    def test_unlisted_routine_is_not_named(self):
        code = bytes.fromhex('b8ea0750ff7604e8f700')
        calls = [msgids.MessageCall('pick_spell_dialog', 2, 4, 2)]
        symbols = self._symbols(
            code, calls, {2026: 'MSG_CAST'}, {},
            lambda insn: 'other_routine')
        self.assertEqual(symbols, {})

    def test_only_the_argument_instruction_is_named(self):
        # mov ax, 0x07ea; mov ax, 0x07ea; push ax; push [bp+4]; call
        code = bytes.fromhex('b8ea07b8ea0750ff7604e8f200')
        calls = [msgids.MessageCall('pick_spell_dialog', 2, 4, 2)]
        symbols = self._symbols(
            code, calls, {2026: 'MSG_CAST'}, {},
            lambda insn: 'pick_spell_dialog')
        self.assertEqual(symbols, {(3, 1): 'MSG_CAST'})

    def test_existing_symbol_resolves_for_the_generator(self):
        text = ('    mov ax, 0x7ea\n'
                '    push ax\n'
                '    push word [bp + 4]\n'
                '    call pick_spell_dialog\n')
        calls = [msgids.MessageCall('pick_spell_dialog', 2, 4, 2)]
        uses = msgids.scan_asm_text(text, calls, {2026: 'MSG_CAST'}, {})
        self.assertEqual(len(uses), 1)
        self.assertEqual(uses[0].kind, 'direct')
        self.assertEqual(uses[0].value, 2026)
        self.assertEqual(uses[0].name, 'MSG_CAST')


class FormatTest(unittest.TestCase):
    def test_message_symbol_wins(self):
        insn = _disassemble(bytes.fromhex('b8ea07'))[0]
        text = format_instruction(
            insn, message_symbols={(0, 1): 'MSG_CAST'})
        self.assertIn('MSG_CAST', text)
        self.assertNotIn('0x07ea', text)

    def test_unmapped_immediate_stays_numeric(self):
        insn = _disassemble(bytes.fromhex('b8ea07'))[0]
        text = format_instruction(insn, message_symbols={(9, 1): 'MSG_CAST'})
        self.assertIn('0x7ea', text)


class IncludeTest(unittest.TestCase):
    def test_include_only_for_message_users(self):
        from lib.compare.render import _message_include_lines
        self.assertEqual(_message_include_lines(None), [])
        self.assertEqual(
            _message_include_lines('include/msg.inc'),
            ['%include "include/msg.inc"'])


class LintTest(unittest.TestCase):
    def setUp(self):
        from lint.core import check_text
        self.check = check_text

    def _findings(self, text):
        return [finding for finding in self.check(text, 'x.c')
                if finding.rule == 'c-message-id']

    def test_literal_is_reported(self):
        findings = self._findings('load_message_string(2026, buf);\n')
        self.assertEqual(len(findings), 1)

    def test_constant_is_allowed(self):
        self.assertEqual(self._findings(
            'load_message_string(MSG_CAST, buf);\n'), [])

    def test_base_expression_is_allowed(self):
        self.assertEqual(self._findings(
            'load_message_string(MSG_CLASS_BASE + label, buf);\n'), [])

    def test_dynamic_argument_is_allowed(self):
        self.assertEqual(self._findings(
            'load_message_string(number, buf);\n'), [])

    def test_dialog_argument_position(self):
        self.assertEqual(self._findings(
            'pick_spell_dialog(pc, 2026, 1, 1);\n')[0].rule, 'c-message-id')
        self.assertEqual(self._findings(
            'pick_spell_dialog(pc, MSG_CAST, 1, 1);\n'), [])

    def test_definition_is_not_a_call(self):
        text = 'load_message_string(number, dest)\nint number;\n{\n}\n'
        self.assertEqual(self._findings(text), [])

    def test_comments_and_strings_are_ignored(self):
        text = ('/* load_message_string(2026, buf); */\n'
                'char *s = "load_message_string(2026, buf)";\n')
        self.assertEqual(self._findings(text), [])


class GeneratedAsmTest(unittest.TestCase):
    """The rendered tree spells the constants, not the raw ids."""

    def _asm(self, *parts):
        with open(os.path.join(_SRC, *parts)) as f:
            return f.read()

    def test_a_routine_without_c_spells_a_constant(self):
        # vbase/loc_RMVR has no C override: the straight-asm renderer names it.
        self.assertIn('mov ax, MSG_EFFECTS',
                      self._asm('vbase', 'loc_RMVR.asm'))

    def test_a_c_override_spells_a_constant(self):
        # cast_spell_from_menu is re-decoded from the C-compiled bytes.
        self.assertIn('mov ax, MSG_CAST',
                      self._asm('vdopt', 'cast_spell_from_menu.asm'))


if __name__ == '__main__':
    unittest.main()
