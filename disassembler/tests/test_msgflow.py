"""Message types reach producers and wrapper callers before ASM rendering."""
import shutil
import struct
import subprocess
import tempfile
from pathlib import Path
import unittest

from capstone import Cs, CS_ARCH_X86, CS_MODE_16
from lib.msgflow import analyze
from lib.msgids import MessageCall


@unittest.skipUnless(shutil.which('nasm'), 'NASM is required')
class MessageFlowTest(unittest.TestCase):
    def analyze(self, source, routines=('main', 'show'), foreign=None):
        with tempfile.TemporaryDirectory() as tmp:
            src, out = Path(tmp) / 'test.asm', Path(tmp) / 'test.bin'
            src.write_text('bits 16\n' + source + '\ndw ' + ','.join(routines))
            subprocess.run(['nasm', '-f', 'bin', '-o', str(out), str(src)],
                           check=True, capture_output=True)
            data = out.read_bytes()
        n = len(routines) * 2
        labels = dict(zip(struct.unpack('<' + 'H' * len(routines), data[-n:]),
                          routines))
        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True
        insns = list(md.disasm(data[:-n], 0))
        symbols, uses, params = analyze(
            insns, [MessageCall('show', 1, 1, 1)],
            {2026: 'MSG_CAST', 2027: 'MSG_CANCEL', 5500: 'MSG_SKILL_START'}, {},
            lambda i: labels.get(i.operands[0].imm & 0xffff)
            if i.operands else None, labels, foreign)
        return symbols, uses, params, insns

    def test_wrapper_fixed_point_and_non_message_argument(self):
        symbols, _, params, insns = self.analyze('''
main: push bp
mov bp,sp
mov ax,2026
push ax
mov ax,2027
push ax
call outer
ret
outer: push bp
mov bp,sp
push word [bp+6]
call inner
ret
inner: push bp
mov bp,sp
mov si,[bp+4]
push si
call show
ret
show: ret
''', ('main', 'outer', 'inner', 'show'))
        self.assertEqual(params, {'outer': [1], 'inner': [0]})
        self.assertEqual(list(symbols.values()), ['MSG_CAST'])
        producer = next(i for i in insns if i.mnemonic == 'mov'
                        and i.op_str == 'ax, 0x7ea')
        self.assertEqual(symbols, {(producer.address, 1): 'MSG_CAST'})

    def test_branch_alternatives_and_local_spill(self):
        symbols, _, _, _ = self.analyze('''
main: push bp
mov bp,sp
cmp bx,0
je other
mov ax,2026
jmp join
other: mov ax,2027
join: mov [bp-2],ax
mov cx,[bp-2]
push cx
call show
ret
show: ret
''')
        self.assertEqual(set(symbols.values()), {'MSG_CAST', 'MSG_CANCEL'})

    def test_computed_range_from_catalog_without_sidecar_base(self):
        symbols, _, params, _ = self.analyze('''
main: push bp
mov bp,sp
mov ax,[bp+4]
shl ax,1
add ax,5500
push ax
call show
ret
show: ret
''')
        self.assertEqual(list(symbols.values()), ['MSG_SKILL_START'])
        self.assertEqual(params, {})  # The input is an index, not an ID.

    def test_literal_base_is_not_replaced_by_small_increment(self):
        symbols, _, _, _ = self.analyze('''
main: mov ax,2026
add ax,1
push ax
call show
ret
show: ret
''')
        self.assertEqual(symbols, {(0, 1): 'MSG_CAST'})

    def test_direct_store_to_frame_local(self):
        symbols, _, _, _ = self.analyze('''
main: push bp
mov bp,sp
mov word [bp-2],2026
push word [bp-2]
call show
ret
show: ret
''')
        self.assertEqual(list(symbols.values()), ['MSG_CAST'])

    def test_clobbers_do_not_name_stale_values(self):
        for clobber in ('mov al,3', 'mul bx', 'xchg ax,bx', 'call other'):
            with self.subTest(clobber=clobber):
                symbols, _, _, _ = self.analyze('''
main: mov ax,2026
''' + clobber + '''
push ax
call show
ret
other: ret
show: ret
''', ('main', 'show', 'other'))
                self.assertEqual(symbols, {})

    def test_popped_push_is_not_an_argument(self):
        symbols, _, _, _ = self.analyze('''
main: mov ax,2026
push ax
pop cx
call show
ret
show: ret
''')
        self.assertEqual(symbols, {})

    def test_escaped_local_is_not_followed(self):
        symbols, _, _, _ = self.analyze('''
main: push bp
mov bp,sp
mov word [bp-2],2026
lea bx,[bp-2]
mov word [bx],0
push word [bp-2]
call show
ret
show: ret
''')
        self.assertEqual(symbols, {})

    def test_imported_host_wrapper_parameter(self):
        symbols, _, _, _ = self.analyze('''
main: mov ax,2026
push ax
call host
ret
host: ret
show: ret
''', ('main', 'host', 'show'), foreign={'host': [0]})
        self.assertEqual(symbols, {(0, 1): 'MSG_CAST'})

    def test_local_survives_call_when_its_address_does_not_escape(self):
        symbols, _, _, _ = self.analyze('''
main: push bp
mov bp,sp
mov word [bp-2],2026
call other
push word [bp-2]
call show
ret
other: ret
show: ret
''', ('main', 'other', 'show'))
        self.assertEqual(list(symbols.values()), ['MSG_CAST'])

    def test_shifted_wrappers_and_spills_keep_the_same_message_types(self):
        source = """
main: push bp
mov bp,sp
mov word [bp-2],2026
push word [bp-2]
call wrapper
ret
times PAD db 0x90
wrapper: push bp
mov bp,sp
mov dx,[bp+4]
push dx
call show
ret
show: ret
"""
        results = [self.analyze(source.replace('PAD', str(pad)),
                               ('main', 'wrapper', 'show'))
                   for pad in (0, 17, 129)]
        for symbols, _, params, _ in results:
            self.assertEqual(list(symbols.values()), ['MSG_CAST'])
            self.assertEqual(params, {'wrapper': [0]})

    def test_two_dynamic_addends_do_not_type_both_arguments_as_messages(self):
        _, _, params, _ = self.analyze("""
main: push bp
mov bp,sp
mov ax,[bp+4]
add ax,[bp+6]
push ax
call show
ret
show: ret
""")
        self.assertEqual(params, {})


class MessageCollectionTest(unittest.TestCase):
    def test_collects_host_wrapper_uses_without_compiling_or_rendering(self):
        from types import SimpleNamespace
        from unittest import mock
        from main.messages import collect_message_ids

        def decoded(data):
            md = Cs(CS_ARCH_X86, CS_MODE_16)
            md.detail = True
            return list(md.disasm(bytes.fromhex(data), 0))

        project = SimpleNamespace(
            app_dir='/unused', host_model=None, sidecar={'message_data': {}},
            bins={'host': ('HOST.EXE', 0), 'overlay': ('O.OVR', 0)})
        host = SimpleNamespace(
            ctx=SimpleNamespace(segments=None), data=b'', start_offset=0,
            instructions=decoded('5589e5ff7604e80100c3c3'),
            label_map={0: 'wrapper', 10: 'show'})
        overlay = SimpleNamespace(
            ctx=SimpleNamespace(segments=None), data=b'', start_offset=0,
            instructions=decoded('b8ea0750e8f900c3'), label_map={0: 'main'})
        with mock.patch('main.messages.project_data',
                        return_value=({2026: 'CAST'}, [], [])), \
                mock.patch('main.worker.Project', return_value=project), \
                mock.patch('main.messages.detect',
                           return_value={'overlay': [(256, 'host')]}), \
                mock.patch('main.messages.per_binary', return_value={
                    'message_calls': [{'routine': 'show', 'arg': 1, 'args': 1}]}), \
                mock.patch('main.messages.overlay_host_aliases',
                           side_effect=lambda foreign, *args: {256: foreign[0]}), \
                mock.patch('main.runner.analyze',
                           side_effect=lambda name, *args, **kw:
                           host if name == 'host' else overlay) as analyze_code, \
                mock.patch('main.runner.finish') as finish, \
                mock.patch('main.runner._aztec_c_overrides',
                           side_effect=AssertionError('C compilation')), \
                mock.patch('main.runner.verify',
                           side_effect=AssertionError('rendering')):
            self.assertEqual(collect_message_ids('P'), {2026})
        self.assertEqual(finish.call_count, 2)
        self.assertTrue(all(call.kwargs['messages_only']
                            for call in analyze_code.call_args_list))


if __name__ == '__main__':
    unittest.main()
