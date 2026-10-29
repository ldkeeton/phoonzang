"""Dynamic-address goal tests (plan.md).

Two layers:

* pure classification tests for ``count_frozen_addrs`` (the metric that tracks
  the goal);
* synthetic masters that reassemble byte for byte and, after an inserted
  byte, keep every named address on the byte it names.
"""

import os
import pathlib
import re
import struct
import subprocess
import tempfile
import unittest


from lib import names
from lib.compare.render import _build_source as _render
from tests.inline import build_source as _build_source
from lib.compare.records import (
    DISPATCH_STRIDE, count_ds_index, count_frozen_addrs, count_hidden_flow,
    count_name_use, count_string_immediates, dispatch_handlers, far_entry_runs,
    fragment_instruction_offsets, instruction_offsets, shared_includes,
    thunk_entry_count,
)
from lib.sidecar.loader import load as load_sidecar
from lib.symtab import Space, Symbol
from tests.syms import bss, cseg, data, dseg, loc, psp, routine
from lib.sidecar.binary import per_binary


_ASM_DIR = pathlib.Path(__file__).resolve().parents[1]
_PROJECT_ROOT = _ASM_DIR.parent
_TREE = _PROJECT_ROOT / 'src_DSAVANT'


def _nasm(text):
    """Assemble *text* with nasm ``-f bin`` and return the bytes (or raise)."""
    with tempfile.TemporaryDirectory() as d:
        asm = os.path.join(d, 't.asm')
        out = os.path.join(d, 't.bin')
        with open(asm, 'w') as f:
            f.write(text)
        r = subprocess.run(
            ['nasm', '-O0', '-f', 'bin', '-w-number-overflow', '-o', out, asm],
            capture_output=True, text=True,
        )
        if r.returncode != 0:
            raise AssertionError(r.stderr)
        with open(out, 'rb') as f:
            return f.read()


def _nasm_file(path, inc_dir):
    """Assemble a source file with include root *inc_dir*; return the bytes."""
    with tempfile.NamedTemporaryFile(suffix='.bin') as out:
        r = subprocess.run(
            ['nasm', '-O0', '-f', 'bin', '-w-number-overflow', '-w-other',
             f'-I{inc_dir}/', '-o', out.name, path],
            capture_output=True, text=True,
        )
        if r.returncode != 0:
            raise AssertionError(r.stderr)
        out.seek(0)
        return out.read()


def _mz_header(e_ss):
    header = bytearray(0x200)
    struct.pack_into(
        '<2s13H', header, 0,
        b'MZ', 0x0056, 0x0088, 1, 0x0020, 0x0e4b, 0xffff,
        e_ss, 0xf198, 0, 0x0010, 0, 0x0020, 0,
    )
    return header


#: Declared dispatch-table handlers (D7.2c-2d): 118 of them (play 8, ega 55, vga 55).
#: Before the change 43 carried a bare ``loc_`` name and shared a neighbour's
#: fragment, and 11 carried a category their own fragment evidences nothing for
#: (``play``'s ``io_loc_016e`` borrowed an ``out`` from a data blob 100 bytes on,
#: ``ega``'s ``dos_con_loc_1490`` an ``int 0x21`` from the routine after its
#: ``ret``).  Both count the *rendering's* faithfulness to the declared ABI, so,
#: like the census, they may only fall.
HANDLER_BASELINE = {'buried': 0, 'unsupported': 2}


def _binary_sources(binary):
    """The generated files belonging to *binary*: its master plus fragments."""
    out = []
    master = _TREE / f'{binary}.asm'
    if master.is_file():
        out.append(master)
    frag_dir = _TREE / binary
    if frag_dir.is_dir():
        out += sorted(frag_dir.rglob('*.asm'))
    if master.is_file():
        # Fragments shared with other binaries live in shared/ (lib.shared).
        for name in re.findall(r'%include "(shared/[^"]+)"', master.read_text()):
            out.append(_TREE / name)
    return out


_LABEL_RE = re.compile(r'^([A-Za-z_@][\w.@]*):')
_LABEL_OFFSET_RE = re.compile(r';\s*0x([0-9a-f]{4})\b')


_DATA_LINE_RE = re.compile(r'^\s+(?:db|dw|dd|times)\b')


def _tree_labels(binary):
    """``{offset: (label, relpath, is_first_label_in_file)}`` for *binary*.

    A label line carries no offset comment of its own; it names the next emitted
    record, whose ``; 0x<hex>`` comment gives the address.  Local (``@..``)
    labels never displace a global one and never start a file.  The path is
    relative to the tree root because a fragment no longer has to sit beside its
    master: ``shared/`` holds the ones binaries share (`disassembler/lib/shared.py`),
    so a bare basename would not resolve.
    """
    out = {}
    for path in _binary_sources(binary):
        pending, first = None, None
        for line in path.read_text(errors='ignore').splitlines():
            m = _LABEL_RE.match(line)
            if m:
                pending = m.group(1)
                if first is None and not pending.startswith('@'):
                    first = pending
                continue
            if pending is None:
                continue
            m = _LABEL_OFFSET_RE.search(line)
            if not m:
                if _DATA_LINE_RE.match(line):
                    # An uncommented ``db`` run is the record the label names;
                    # the next comment belongs to whatever follows it.
                    pending = None
                continue
            offset = int(m.group(1), 16)
            if offset not in out or not pending.startswith('@'):
                out[offset] = (pending, str(path.relative_to(_TREE)),
                               pending == first)
            pending = None
    return out


#: Evidence a categorized name has to show in the fragment it names.
_IO_MNEMONICS = {'in', 'out', 'insb', 'insw', 'insd', 'outsb', 'outsw', 'outsd'}
_STRING_MNEMONICS = {'movs', 'movsb', 'movsw', 'movsd', 'cmps', 'cmpsb', 'cmpsw',
                     'scas', 'scasb', 'scasw', 'lods', 'lodsb', 'lodsw',
                     'stos', 'stosb', 'stosw'}
_BIOS_INTS = {'bios_disk': 'int 0x13', 'bios_video': 'int 0x10',
              'bios_mouse': 'int 0x33'}
_LABEL_LINE_RE = re.compile(r'^[A-Za-z_@][\w.@]*:$')
#: A categorized label is ``<category>_loc_<tag>``.  The tag is four ``G``-``V``
#: letters derived from the routine's *content* (`disassembler/lib/names.py`), optionally
#: followed by the address that separates identical copies in one binary; a bare
#: ``loc_<hex>`` claims no category and a signature name is not this pass's call.
_CATEGORY_RE = re.compile(r'([a-z_]+)_loc_[G-V]{4}(?:_[0-9a-f]{4,5})?$')


def _fragment_instructions(text):
    """The instruction texts of an emitted source file (labels/data dropped)."""
    out = []
    for line in text.splitlines():
        body = line.split(';', 1)[0].strip()
        if not body or body.startswith(('%', 'db ', 'dw ', 'times ', 'dd ')):
            continue
        if _LABEL_LINE_RE.match(body):
            continue
        out.append(body)
    return out


def _category_evidence(category, insns, image, offsets):
    """Whether *insns* show *category*'s evidence; None when unknowable."""
    mnemonics = [text.split(' ', 1)[0] for text in insns]
    if category == 'leaf':
        return not any(m in ('call', 'lcall') for m in mnemonics)
    if category == 'io':
        return any(m in _IO_MNEMONICS for m in mnemonics)
    if category == 'string':
        return any(m in _STRING_MNEMONICS for m in mnemonics)
    if category == 'fpu':
        return any(m.startswith('f') for m in mnemonics)
    if category in _BIOS_INTS:
        return _BIOS_INTS[category] in insns
    if category.startswith('bios'):
        return any(text.startswith('int 0x1') for text in insns)
    if category.startswith('dos'):
        return 'int 0x21' in insns
    if category == 'graphics':
        from capstone import Cs, CS_ARCH_X86, CS_MODE_16
        from lib.match.categorize import _has_graphics_rendering_pattern
        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True
        decoded = [next(iter(md.disasm(image[o:o + 16], o)), None)
                   for o in sorted(offsets)]
        return _has_graphics_rendering_pattern(
            [insn for insn in decoded if insn is not None])
    return None


def _scan_declared_handlers():
    """Placement and naming of every declared dispatch-table handler (D7.2c-2d).

    A declared handler is a function entry by contract, so two things must hold
    of the emitted tree and neither is a rendering heuristic:

    * it is the first label of **its own fragment** -- ``buried`` counts the
      handlers that share their neighbour's file instead;
    * its name is a category **its own fragment evidences** -- ``unsupported``
      counts names that only a window reading the following bytes could have
      produced (``play``'s ``io_loc_016e`` borrowed an ``out`` from a data blob
      100 bytes on; ``ega``'s ``string_loc_31df`` borrowed a string op).

    Signature names (``strlen``, ``mouse_init``) are not the label pass's
    decision and are skipped; a bare ``loc_<addr>`` claims no category at all.
    The check reads the fragment the label owns, so a routine a *later* entry
    interleaves into another fragment can still report (a documented backlog):
    ``play``'s ``bios_disk_loc_RVRG`` reaches its ``int 0x13`` past ``0x02b3``,
    and ``ega``'s ``graphics_loc_UVTQ`` is a ``jmp`` thunk into handler ``0x04b1``.
    Names carry a *content* tag now (`disassembler/lib/names.py`), so a name says nothing
    about an address -- and ``_CATEGORY_RE`` has to follow that shape, or this
    counter silently reads zero (which is how the rename first disabled it).
    """
    app_dir = _PROJECT_ROOT / 'apps' / 'DSAVANT'
    if not _TREE.is_dir() or not app_dir.is_dir():
        return [], []
    sidecar = load_sidecar('DSAVANT')
    buried, unsupported = [], []
    for binary in sorted(sidecar['binaries']):
        entry = per_binary(sidecar, binary)
        table = entry.get('dispatch_table')
        image = app_dir / entry['file']
        if not table or not image.is_file():
            continue
        data = image.read_bytes()
        labels = _tree_labels(binary)
        for handler in dispatch_handlers(data, table):
            if handler not in labels:
                continue
            name, relpath, first = labels[handler]
            if not first:
                buried.append((binary, handler, name, relpath))
            m = _CATEGORY_RE.fullmatch(name)
            if not m:
                continue          # a signature/pattern name, or the bare loc_
            path = _TREE / relpath
            if not path.is_file():
                continue
            text = path.read_text(errors='ignore')
            insns = _fragment_instructions(text)
            evidence = _category_evidence(m.group(1), insns, data,
                                          instruction_offsets(text))
            if evidence is False:
                unsupported.append((binary, handler, name, relpath))
    return buried, unsupported


class DsReferenceCountTests(unittest.TestCase):
    #: DS 0x100: "nul" after a NUL; DS 0x110: a console string after code.
    DS = (bytes(0xff) + b'\0nul\0' + bytes(0x0b)
          + b'\xcd\x21\r\n\x07MAZE SET ERROR.\0' + bytes(0x200))

    def test_an_immediate_on_a_string_start_is_counted(self):
        hits = count_string_immediates('\n'.join([
            '    mov ax, 0x100                    ; 0x0f89',
            '    mov ax, 0x101                    ; 0x0f8c',   # mid-string
            '    mov ax, 0x26                     ; 0x0f8f',   # a small number
            '    mov ax, dseg_0100                ; 0x0f92',
        ]), self.DS)
        self.assertEqual(hits, [(0x0f89, 0x100)])

    def test_a_console_string_needs_the_driver_rule(self):
        line = '    mov dx, 0x112                    ; 0x0fde'
        self.assertEqual(count_string_immediates(line, self.DS), [])
        self.assertEqual(count_string_immediates(line, self.DS, console=True),
                         [(0x0fde, 0x112)])

    def test_a_ds_table_displacement_is_counted(self):
        hits = count_ds_index('\n'.join([
            '    mov word [bx + 0x5c0c], ax       ; 0x032a',
            '    push word [bx + 0x1a1]           ; 0x0d26',
            '    mov al, byte [bx + si + 0x2a]    ; 0x0d2a',   # a field
            '    mov al, byte [cs:bx + 0x1529]    ; 0x0205',   # cs_index
            '    mov ax, word [bp + 0x1a1]        ; 0x0d30',   # a frame slot
            '    mov ax, word [bx + 0xf000]       ; 0x0d34',   # past DS
        ]), 0x9098)
        self.assertEqual(hits, [(0x032a, 0x5c0c), (0x0d26, 0x1a1)])


class CountFrozenAddrsTests(unittest.TestCase):
    def test_a_distance_from_a_segment_boundary_is_data_shift(self):
        counts = count_frozen_addrs('\n'.join([
            'bss_9420 equ __zdseg_end + 0x0388',
            'bss_5910 equ (__zimage_end - __zdseg_start) + 0x4c1a',
            '__zbss_size equ 0x83a2',
            '; bss_9436 equ __zdseg_end + 0x039e',                 # comment
            'bss_9408 equ __zdseg_end + (__zobss_9408 - __zdata_start)',
            'bss_0e36 equ __zbss_0e36 - __zdseg_start',
            '__zbss_size equ __zbss_end - __zimage_end',
            '__zdseg_end equ (__zimage_end - __zdseg_start) + __zbss_size',
        ]))
        self.assertEqual(counts['seg_delta'], 3)
        self.assertEqual(counts['data_shift'], 3)

    def test_an_indexed_code_segment_table_is_code_shift(self):
        counts = count_frozen_addrs('\n'.join([
            '    mov al, byte [cs:bx + 0x1529]    ; 0x0205',
            '    jmp [cs:bx - 0x7fb9]             ; 0x3014',
            '    mov ax, word [cs:bx + 0x2]       ; 0x47b5',   # a field
            '    mov al, byte [cs:bx + cseg_1429 - IMAGE_BASE] ; 0x0205',
        ]))
        self.assertEqual(counts['cs_index'], 2)
        self.assertEqual(counts['code_shift'], 2)

    def test_a_label_rebased_by_a_number_is_code_shift(self):
        counts = count_frozen_addrs('\n'.join([
            '    dw loc_X - IMAGE_BASE + 0x5055   ; 0x03ce',
            '    dw loc_X - IMAGE_BASE + __zres_end ; 0x03d0',
            '    nop ; was loc_X - IMAGE_BASE + 0x5055',          # a comment
        ]))
        self.assertEqual(counts['rebased'], 1)
        self.assertEqual(counts['code_shift'], 1)

    def test_literal_tag_separates_f6_from_f7(self):
        literal = count_frozen_addrs('    dw 0x001c ; 0x1698 ; literal')
        self.assertEqual((literal['f6'], literal['f7']), (1, 0))
        self.assertEqual(literal['inert'], 1)
        self.assertEqual(literal['total'], 0)
        pointer = count_frozen_addrs('    dw 0x490f ; 0x4822')
        self.assertEqual((pointer['f6'], pointer['f7']), (0, 1))
        self.assertEqual(pointer['data_shift'], 1)
        self.assertEqual(pointer['total'], 1)

    def test_classifies_each_taxonomy(self):
        text = '\n'.join([
            '    dw 0x0056 ; e_cblp: bytes in final page',
            '    dw 0x0ff6 ; e_ss: initial stack segment',
            '    dw 0x93df ; o_csize: code size in bytes',
            'cseg_2f36 equ 0x2f36',
            'dseg_0002 equ 0x0002',
            'bss_0cf6 equ 0x0cf6',
            'psp_env_segment equ 0x002c',
            'bios_data_0410 equ 0x0410',
            '    times 44813 db 0',
            '    times 4 db 0',
            '    dw 0x490f ; 0x4822',              # unresolved pointer -> f7
            '    dw 0x001c ; 0x1698 ; literal',    # literal data word -> f6
            'IMAGE_BASE equ 0x0200',
        ])
        symbols = {str(s): s for s in (
            cseg(0x2f36), dseg(0x0002), bss(0x0cf6),
            psp(0x2c, 'psp_env_segment'),
            Symbol.data(Space.ABS, 0x410, 'bios_data_0410'))}
        counts = count_frozen_addrs(text, symbols)
        self.assertEqual(counts['f1'], 2)
        self.assertEqual(counts['f2'], 1)
        self.assertEqual(counts['f3'], 1)
        self.assertEqual(counts['f4'], 2)   # dseg_ + bss_
        self.assertEqual(counts['f5'], 1)   # the 44813 pad, not the 4-byte run
        self.assertEqual(counts['f6'], 1)   # the tagged literal word
        self.assertEqual(counts['f7'], 1)   # the untagged pointer word
        # Gate classes (plan.md section 10.2); inert is reported, not gated.
        self.assertEqual(counts['code_shift'], 2 + 1 + 1 + 1)
        self.assertEqual(counts['data_shift'], 2 + 1)
        self.assertEqual(counts['inert'], 1 + 1 + 1)  # psp_ + bios_ + f6
        self.assertEqual(counts['total'],
                         counts['code_shift'] + counts['data_shift'])

    def test_a_zero_run_on_a_label_is_a_buffer_not_a_pad(self):
        # The run after ``__zcp_1afd:`` is that buffer's body (its size, not a
        # distance to a fixed origin); a run after an instruction is an F5 fill.
        counts = count_frozen_addrs('\n'.join([
            '__zcp_1afd:',
            '',
            '    times 1152 db 0',
            '    ret',
            '    times 2306 db 0',
        ]))
        self.assertEqual(counts['buffers'], 1)
        self.assertEqual(counts['f5'], 1)
        self.assertEqual(counts['code_shift'], 1)
        self.assertEqual(counts['inert'], 1)

    def test_an_equ_the_symbol_table_does_not_know_is_not_counted(self):
        counts = count_frozen_addrs('mystery equ 0x1234\n', {})
        self.assertEqual(counts['total'], 0)
        self.assertEqual(counts['inert'], 0)

    def test_name_use_splits_used_from_inert(self):
        sources = [
            ('play.asm',
             'loc_0007 equ 0x0007\n'
             'loc_0008 equ 0x0008\n'
             'cseg_0100 equ 0x0100\n'),
            ('play/leaf_loc_077b.asm',
             '    call loc_0008\n'
             '    mov al, [cs:cseg_0100]\n'),
        ]
        symbols = {str(s): s for s in (loc(7), loc(8), cseg(0x100))}
        counts = count_name_use(sources, symbols)
        self.assertEqual(counts['names_used'], 2)
        self.assertEqual(counts['names_inert'], 1)
        self.assertEqual(counts['inert_names'], ['loc_0007'])

    def test_include_paths_and_comments_are_not_references(self):
        """A fragment is named after its label, so its include must not count."""
        sources = [
            ('vga.asm',
             'loc_1000 equ 0x1000\n'
             '%include "vga/loc_2000.asm"          ; 0x2000\n'),
            ('vga/loc_2000.asm',
             'loc_2000 equ 0x2000  ; is loc_1000 live?\n'),
        ]
        symbols = {str(s): s for s in (loc(0x1000), loc(0x2000))}
        counts = count_name_use(sources, symbols)
        self.assertEqual(counts['names_inert'], 2)
        self.assertEqual(sorted(counts['inert_names']),
                         ['loc_1000', 'loc_2000'])

    def test_ocorg_family_is_counted_in_every_spelling(self):
        """D7.2: the overlay load origin is one value written three ways.

        The header field, the ``VBASE`` macro and the addend inside ``o_entry``
        are the same host quantity, and the host's own loader immediate is a
        fourth.  All four are counted so the binding can be shown to remove them.
        """
        text = '\n'.join([
            '    dw 0x5055 ; o_corg: code load origin (memory offset)',
            'VBASE equ 0x5047',
            '    dw string_loc_9330 - IMAGE_BASE + 0x5055 ; 0xe377 ; o_entry:'
            ' overlay entry offset (CS)',
            '    cmp word [bp - 0x0010], strict word 0x5055 ; ocorg ; 0x440c',
            '    dw __zresident_end ; 0x5055 ; o_corg: code load origin',
            'VBASE equ __zresident_end - 0x000e',
            '    dw string_loc_9330 - IMAGE_BASE + __zresident_end ; 0xe377'
            ' ; o_entry: overlay entry offset (CS)',
            '    cmp word [bp - 0x0010], strict word __zresident_end ; 0x440c',
        ])
        counts = count_frozen_addrs(text)
        self.assertEqual(counts['o_corg'], 3)
        self.assertEqual(counts['o_corg_imm'], 1)
        self.assertEqual(counts['code_shift'], 4)
        self.assertEqual(counts['total'], 4)
        # The bound spellings are assembler expressions, so they fall out.
        bound = '\n'.join(text.splitlines()[4:])
        self.assertEqual(count_frozen_addrs(bound)['total'], 0)

    def test_dynamic_expressions_are_not_counted(self):
        text = '\n'.join([
            '    dw (__zimage_end - $$) % 512 ; 0x0056 ; e_cblp: bytes',
            '    dw __zdseg_para ; 0x0ff6 ; e_ss: stack',
            '    times (__zdseg_start - ($ - $$)) db 0 ; 0xaf0d',
            '    dw string_loc_490f - IMAGE_BASE ; 0x490f ; 0x4822',
            'cseg_490f:',
        ])
        counts = count_frozen_addrs(text)
        self.assertEqual(counts['total'], 0)

    def test_empty_text(self):
        self.assertEqual(count_frozen_addrs('')['total'], 0)

    def test_shared_geometry_buckets(self):
        # plan.md D7.0: overlay origins and the host DS-size immediate.
        text = '\n'.join([
            '    dw 0x5055 ; o_corg: code load origin (memory offset)',
            '    dw 0x9098 ; o_dorg: data load origin (memory offset)',
            '    dw 0x143c ; o_bss: uninitialized data size',
            '    add bx, strict word 0x9098       ; 0x4d89 ; dssize',
            '    mov cx, 0x2afe                   ; 0x367b ; dssize',
        ])
        counts = count_frozen_addrs(text)
        self.assertEqual(counts['o_corg'], 1)
        self.assertEqual(counts['o_dorg'], 1)
        self.assertEqual(counts['ds_size_imm'], 2)
        self.assertEqual(counts['f2'], 1)               # o_bss stays F2
        # code_shift also carries the F2 o_bss field.
        self.assertEqual(counts['code_shift'], 1 + 1 + 2)
        self.assertEqual(counts['data_shift'], 1)       # o_dorg
        self.assertEqual(counts['inert'], 0)
        self.assertEqual(counts['total'], 1 + 1 + 2 + 1)

    def test_dssize_immediate_without_tag_is_not_counted(self):
        # The counter is form-based: an untagged immediate is invisible.
        counts = count_frozen_addrs('    mov cx, 0x9098                   ; 0x4de3')
        self.assertEqual(counts['ds_size_imm'], 0)
        self.assertEqual(counts['total'], 0)


class CensusMeaningCounterTests(unittest.TestCase):
    """D7.2c-2 counters: what the census's names and bytes actually cost."""

    def test_geometry_macros_are_not_names_for_a_byte(self):
        counts = count_name_use([
            ('ds.asm', 'VBASE equ 0x5047\nIMAGE_BASE equ 0x0200\n'),
        ])
        self.assertEqual((counts['names_used'], counts['names_inert']), (0, 0))

    def test_hidden_flow_finds_a_call_the_source_hides(self):
        data = bytearray(b'\x00' * 0x20)
        data[0x10:0x13] = b'\xb8\x00\x00'      # mov ax, 0  (shown as code)
        data[0x13:0x16] = b'\xe8\x04\x00'      # call 0x13 + 3 + 4 = 0x1a
        data[0x1a:0x1c] = b'\x90\xc3'
        self.assertEqual(count_hidden_flow(bytes(data), {0x10, 0x1a}),
                         [(0x13, 0x1a)])

    def test_bytes_inside_a_rendered_instruction_are_not_sites(self):
        # ``mov bx, 0xe8`` is ``bb e8 00``: the ``e8`` is an operand byte of an
        # instruction the source shows, so nothing is hidden here.
        data = b'\xbb\xe8\x00' + b'\x90' * 4
        self.assertEqual(count_hidden_flow(data, {0x00, 0x03}), [])

    def test_a_shared_fragment_is_walked_from_its_include(self):
        # ``shared/f.asm`` has no ``; 0x`` comments; the master places it at
        # 0x10.  Each line follows the last: ``mov ax, 0`` is 3 bytes, the
        # ``db`` 2, so the ``call`` sits at 0x15 and the source shows it.
        data = bytearray(b'\x00' * 0x20)
        data[0x10:0x13] = b'\xb8\x00\x00'
        data[0x13:0x15] = b'\x80\x41'
        data[0x15:0x18] = b'\xe8\x02\x00'     # call 0x1a
        data[0x1a:0x1c] = b'\x90\xc3'
        master = '%include "shared/f.asm"           ; 0x0010\n'
        self.assertEqual(shared_includes(master), [('shared/f.asm', 0x10)])
        fragment = '\n'.join(['; auto-generated', 'f:', '    mov ax, 0',
                              '    db 0x80, 0x41', '    call g'])
        offsets = fragment_instruction_offsets(fragment, bytes(data), 0x10)
        self.assertEqual(offsets, {0x10, 0x15})
        self.assertEqual(count_hidden_flow(bytes(data), offsets | {0x1a}), [])

    def test_a_fragment_walk_steps_over_a_switch_table(self):
        # An inline switch table's ``dw`` words are two bytes each, so the
        # case arm after them is still shown code.
        data = b'\x90' * 8
        fragment = '\n'.join(['    nop', '    dw f.case1 - IMAGE_BASE, f.case2',
                              'f.case1:', '    nop'])
        self.assertEqual(fragment_instruction_offsets(fragment, data, 0),
                         {0, 5})

    def test_a_fragment_walk_stops_at_a_line_it_cannot_size(self):
        data = b'\x90' * 8
        fragment = '\n'.join(['    nop', "    db 'ab', 0", '    nop'])
        self.assertEqual(fragment_instruction_offsets(fragment, data, 0), {0})

    def test_instruction_offsets_skips_data_and_directives(self):
        text = '\n'.join([
            '    mov ax, 0                       ; 0x0000',
            '    add bx, strict word 0x9098       ; 0x0003 ; dssize',
            'loc_0005:',
            '    db 0x90, 0x90',
            '    dw 0x490f ; 0x4822',
            '    times 4 db 0',
            '%include "vga/x.asm"                 ; 0x0200',
        ])
        self.assertEqual(instruction_offsets(text), {0x0000, 0x0003})
        self.assertEqual(instruction_offsets(''), set())


class DriverDispatchAbiTests(unittest.TestCase):
    """The driver dispatch tables are a contract the *host* holds (D7.2c-2).

    ``DS.EXE``'s loaders read each module to ``segment:0x100`` and call entry *k*
    through a far pointer whose offset half is ``0x100 + 3 + 4k`` -- the module's
    ``call handler; retf`` thunk at ``3 + 4k`` -- with the segment half patched in
    at load time.  So the entry offsets are pinned from outside the module, which
    is exactly why the census's used/inert split calls some of them inert and why
    they want a declared pin rather than a label.
    """

    def _image(self, name):
        path = _PROJECT_ROOT / 'apps' / 'DSAVANT' / name
        if not path.is_file():
            self.skipTest('needs apps/DSAVANT')
        return path.read_bytes()

    def test_thunk_entry_count_reads_the_head_of_a_module(self):
        # A module begins with a 3-byte jump to entry 0 (``e9 00 00``), then the
        # ``call handler; retf`` thunks.
        head = b'\xe9\x00\x00'
        self.assertEqual(thunk_entry_count(head + b'\xe8\x01\x00\xcb' * 3), 3)
        self.assertEqual(thunk_entry_count(b''), 0)
        # A run stops at the first entry that is not `call …; retf`.
        self.assertEqual(thunk_entry_count(head + b'\xe8\x01\x00\xcb'
                                           + b'\x90' * 4), 1)

    def test_far_entry_runs_finds_the_offset_ladder(self):
        # Two slots at file 0x10, then the ladder broken by an unrelated word.
        data = bytearray(b'\x00' * 0x20)
        data[0x10:0x14] = b'\x03\x01\x00\x00'
        data[0x14:0x18] = b'\x07\x01\x00\x00'
        self.assertEqual(far_entry_runs(bytes(data)), [(0x10, 2)])

    def test_declared_handler_offset_decodes_an_entry(self):
        """``dispatch_handlers`` reads the handler each ``e8 rel16 cb`` names."""
        table = {'base_offset': 0, 'entry_size': 4, 'count': 3}
        # entry 0 at 0x00 -> target 0x03 + 0x20 = 0x23; entry 1 at 0x04 ->
        # target 0x07 + 0x10 = 0x17; entry 2 is not the declared shape and is
        # skipped, not the run.
        data = (b'\xe8\x20\x00\xcb' + b'\xe8\x10\x00\xcb' + b'\x90\x90\x90\x90')
        self.assertEqual(dispatch_handlers(data, table), [0x23, 0x17])
        self.assertEqual(dispatch_handlers(b'', table), [])

    def test_declared_counts_match_the_module_bytes(self):
        """A declared count must equal the thunks actually at 3 + 4k.

        This is what the old ``count: 48`` for ``vga`` got wrong: the run is 55
        entries long, so seven entries were neither declared nor forced.
        """
        sidecar = load_sidecar('DSAVANT')
        declared = {}
        for binary in sorted(sidecar['binaries']):
            entry = per_binary(sidecar, binary)
            table = entry.get('dispatch_table')
            if not table:
                continue
            data = self._image(entry['file'])
            got = thunk_entry_count(data, table.get('base_offset', 3),
                                    table.get('entry_size', 4))
            self.assertEqual(got, table['count'],
                             f'{binary}: dispatch_table says {table["count"]} '
                             f'entries, the image has {got}')
            declared[binary] = table['count']
        self.assertEqual(declared, {'play': 8, 'ega': 55, 'vga': 55})

    def test_host_pins_every_declared_entry(self):
        """``DS.EXE`` holds a far pointer to every declared entry."""
        runs = sorted(c for _, c in far_entry_runs(self._image('DS.EXE')))
        # 8 slots for play.drv and 56 for the display driver: the display driver
        # ships 55 entries, and its loader patches 55 segment words.  The 56th
        # (0x1df, one past the last entry) is never called: load_video_driver
        # reads it as where in the driver to copy the host's tables.
        self.assertEqual(runs, [8, 56])
        sidecar = load_sidecar('DSAVANT')
        for binary in ('play', 'ega', 'vga'):
            table = per_binary(sidecar, binary)['dispatch_table']
            self.assertEqual(table['entry_size'], DISPATCH_STRIDE)
            self.assertEqual(table['format'], 'e8_rel16_cb')
            self.assertTrue(any(count >= table['count'] for count in runs),
                            f'{binary}: {table["count"]} entries, '
                            f'host runs {runs}')


class DriverHandlerPlacementTests(unittest.TestCase):
    """A declared table's handlers are function entries, not stray addresses.

    ``dispatch_table`` names where each module's host-called entries jump; every
    handler it points at is a routine with its own body.  Two counters keep the
    rendering honest about that (D7.2c-2d): a handler owns its fragment, and its
    name is the category of its own body -- not whatever a raw window over the
    following bytes happened to look like.
    """

    def test_declared_handler_count_is_the_sidecar_declaration(self):
        app_dir = _PROJECT_ROOT / 'apps' / 'DSAVANT'
        sidecar = load_sidecar('DSAVANT')
        total = 0
        for binary in ('play', 'ega', 'vga'):
            entry = per_binary(sidecar, binary)
            image = app_dir / entry['file']
            if not image.is_file():
                self.skipTest('needs apps/DSAVANT')
            handlers = dispatch_handlers(image.read_bytes(), entry['dispatch_table'])
            self.assertEqual(len(handlers), entry['dispatch_table']['count'])
            total += len(handlers)
        self.assertEqual(total, 118)

    @unittest.skipUnless(_TREE.is_dir(), 'generated src_DSAVANT tree not present')
    def test_handler_placement_only_improves(self):
        buried, unsupported = _scan_declared_handlers()
        self.assertLessEqual(
            len(buried), HANDLER_BASELINE['buried'],
            'declared handlers buried in a neighbour fragment: '
            f'{len(buried)} (baseline {HANDLER_BASELINE["buried"]})',
        )
        self.assertLessEqual(
            len(unsupported), HANDLER_BASELINE['unsupported'],
            'declared handlers named with a category their own fragment does '
            f'not evidence: {len(unsupported)} '
            f'(baseline {HANDLER_BASELINE["unsupported"]})',
        )


class DynamicDataAnchorTests(unittest.TestCase):
    """The MZ code→data gap and header fields reassemble from expressions."""

    def _original(self):
        header = _mz_header(e_ss=1)          # data_origin = 0x200 + 0x10 = 0x210
        code = bytes([0x90])                 # one nop at 0x200
        gap = bytes(0x210 - 0x201)           # 0x201..0x210
        data = bytes(range(0x10, 0x20))      # 0x210..0x220
        binary = bytes(header) + code + gap + data
        # Make the stored length fields agree with the actual image so the
        # dynamic header reproduces them exactly.
        binary = bytearray(binary)
        struct.pack_into('<HH', binary, 2, len(binary) % 512,
                         (len(binary) + 511) // 512)
        binary = bytes(binary)
        records = [
            {'type': 'mnem', 'text': 'nop', 'offset': 0x200, 'size': 1},
            {'type': 'data_block', 'start': 0x201, 'end': 0x220, 'bytes': []},
        ]
        return binary, records

    def test_gap_and_headers_are_dynamic(self):
        binary, records = self._original()
        src, _ = _build_source(records, 0x200, binary, label_map={})
        self.assertIn('%if ($ - $$) > 0x210', src)
        self.assertIn('__zdseg_start:', src)
        self.assertIn('dw __zdseg_para', src)
        self.assertIn('__zimage_end:', src)
        self.assertIn('dw (__zimage_end - $$) % 512', src)
        # Original values are preserved as comments.
        self.assertIn('; 0x0020 ; e_cblp:', src)
        self.assertIn('; 0x0001 ; e_ss:', src)

    def test_original_layout_reassembles_byte_for_byte(self):
        binary, records = self._original()
        src, _ = _build_source(records, 0x200, binary, label_map={})
        built = _nasm(src)
        self.assertEqual(len(built), len(binary))
        self.assertEqual(built, binary)

    def test_growth_past_data_origin_moves_data(self):
        binary, records = self._original()
        src, _ = _build_source(records, 0x200, binary, label_map={})
        # Insert 31 extra nops (32 total): code ends at 0x220 > data_origin 0x210.
        grown = src.replace('    nop', '    nop\n' + '    nop\n' * 31, 1)
        built = _nasm(grown)
        e_ss = struct.unpack_from('<H', built, 14)[0]
        self.assertEqual(e_ss, (0x220 - 0x200) // 16)   # 2 paragraphs
        self.assertEqual(len(built), 0x220 + 0x10)        # data moved to 0x220
        # Header length fields agree with the new image.
        e_cblp, e_cp = struct.unpack_from('<HH', built, 2)
        self.assertEqual(e_cblp, len(built) % 512)
        self.assertEqual(e_cp, (len(built) + 511) // 512)


class DataSegmentLabelBindingTests(unittest.TestCase):
    """D1: ``dseg_``/``bss_`` operands follow a resized data segment.

    The synthetic MZ has ``e_ss=1`` (data origin 0x210) and two instructions:
    ``mov ax, [dseg_0004]`` (``a1 04 00``) and ``mov bx, [bss_0012]``
    (``8b 1e 12 00``).  A data symbol must be anchored to the byte it names, so
    inserting a data byte moves the label and the encoded displacement together;
    a BSS symbol must track the (dynamic) file-backed data size.
    """

    CODE = b'\xa1\x04\x00\x8b\x1e\x12\x00'    # mov ax,[dseg_0004]; mov bx,[bss_0012]
    DATA = bytes(range(0x10, 0x20))           # DS 0x00..0x0f
    DATA_ORIGIN = 0x210

    def _image(self):
        header = _mz_header(e_ss=1)
        gap = bytes(self.DATA_ORIGIN - (0x200 + len(self.CODE)))
        binary = bytearray(header + self.CODE + gap + self.DATA)
        struct.pack_into('<HH', binary, 2, len(binary) % 512,
                         (len(binary) + 511) // 512)
        return bytes(binary)

    def _source(self, binary, mem_equ):
        records = [
            {'type': 'mnem', 'text': 'mov ax, [dseg_0004]',
             'offset': 0x200, 'size': 3},
            {'type': 'mnem', 'text': 'mov bx, [bss_0012]',
             'offset': 0x203, 'size': 4},
            {'type': 'data_block', 'start': 0x207, 'end': len(binary),
             'bytes': []},
        ]
        src, _ = _build_source(records, 0x200, binary, label_map={},
                               mem_equ=mem_equ)
        return src

    def test_data_symbols_become_expressions(self):
        src = self._source(self._image(),
                           {dseg(0x0004): 0x04, bss(0x0012): 0x12})
        self.assertIn('dseg_0004 equ __zdseg_0004 - __zdseg_start', src)
        # A BSS object is a label in the block after the image.
        self.assertIn('bss_0012 equ __zbss_0012 - __zdseg_start', src)
        self.assertIn('__zimage_end:\nabsolute __zimage_end\n'
                      '    resb 0x0002\n__zbss_0012:', src)
        self.assertEqual(count_frozen_addrs(src)['data_shift'], 0)

    def test_original_layout_reassembles_byte_for_byte(self):
        binary = self._image()
        src = self._source(binary, {dseg(0x0004): 0x04, bss(0x0012): 0x12})
        self.assertEqual(_nasm(src), binary)

    def test_operand_follows_an_inserted_data_byte(self):
        binary = self._image()
        src = self._source(binary, {dseg(0x0004): 0x04, bss(0x0012): 0x12})
        grown = src.replace('__zdseg_start:',
                            '__zdseg_start:\n    db 0xee', 1)
        built = _nasm(grown)
        # A file-backed byte: the target that was at DS:4 is now at DS:5, so
        # the operand follows it.
        self.assertEqual(built[0x200:0x203], b'\xa1\x05\x00')
        self.assertEqual(built[self.DATA_ORIGIN + 5], self.DATA[4])
        # A BSS byte: offset 0x12 is one byte further into the segment (0x13),
        # because the file-backed data grew by one.
        self.assertEqual(built[0x203:0x207], b'\x8b\x1e\x13\x00')


class DsSizeSymbolTests(unittest.TestCase):
    """D7.0b: a code immediate equal to the DS size is bound to ``__zdseg_end``.

    The synthetic MZ has one instruction ``mov cx, 0x0018`` where ``0x18`` is
    the total data-segment size (0x10 file-backed bytes + 0x08 reserved BSS).
    The immediate must render as the symbol (not a literal), reassemble byte for
    byte, and follow an inserted data byte.
    """

    DATA_ORIGIN = 0x210
    CODE = b'\xb9\x18\x00'                    # mov cx, 0x0018
    DATA = bytes(range(0x10, 0x20))           # 0x10 file-backed bytes

    def _image(self):
        header = _mz_header(e_ss=1)
        gap = bytes(self.DATA_ORIGIN - (0x200 + len(self.CODE)))
        binary = bytearray(header + self.CODE + gap + self.DATA)
        struct.pack_into('<HH', binary, 2, len(binary) % 512,
                         (len(binary) + 511) // 512)
        return bytes(binary)

    def _source(self, binary):
        records = [
            {'type': 'mnem', 'text': 'mov cx, 0x0018',
             'offset': 0x200, 'size': 3},
            {'type': 'data_block', 'start': 0x203, 'end': len(binary),
             'bytes': []},
        ]
        src, _ = _build_source(records, 0x200, binary, label_map={},
                               ds_size=0x18)
        return src

    def test_immediate_becomes_the_symbol(self):
        src = self._source(self._image())
        # The BSS size is the block's span; the stack ends it, so ``e_sp`` is
        # its top.
        self.assertIn('__zbss_size equ __zbss_end - __zimage_end', src)
        self.assertIn('    resb 0x0008\n__zbss_end:\n'
                      '    resb 0xf180\n__zstack_top:', src)
        self.assertIn('dw __zstack_top - __zdseg_start', src)
        self.assertIn(
            '__zdseg_end equ (__zimage_end - __zdseg_start) '
            '+ __zbss_size', src)
        self.assertIn('mov cx, __zdseg_end', src)
        self.assertNotIn('mov cx, 0x0018', src)
        self.assertEqual(count_frozen_addrs(src)['ds_size_imm'], 0)
        self.assertEqual(_nasm(src), self._image())

    def test_immediate_follows_an_inserted_data_byte(self):
        src = self._source(self._image())
        grown = src.replace('__zdseg_start:',
                            '__zdseg_start:\n    db 0xee', 1)
        built = _nasm(grown)
        self.assertEqual(built[0x200:0x203], b'\xb9\x19\x00')

    def test_stack_top_follows_an_inserted_data_byte(self):
        """``e_sp`` is the top of the BSS block, so a data byte moves it.

        SS == DS, and the stack is the last object after the BSS.  One byte
        of file-backed data moves the stack top (``e_sp`` 0xf198 -> 0xf199);
        ``e_minalloc`` -- the paragraphs from the end of the file to the stack
        top -- stays.
        """
        src = self._source(self._image())
        built = _nasm(src)
        grown = _nasm(src.replace('__zdseg_start:',
                                  '__zdseg_start:\n    db 0xee', 1))
        self.assertEqual(struct.unpack_from('<H', built, 16)[0], 0xf198)
        self.assertEqual(struct.unpack_from('<H', grown, 16)[0], 0xf199)
        self.assertEqual(struct.unpack_from('<H', grown, 10)[0],
                         struct.unpack_from('<H', built, 10)[0])


class HostIncludeTests(unittest.TestCase):
    """An overlay sees the host's own symbols (plan.md D7.0c / D7.1).

    An overlay is a separate NASM assembly, so it cannot see the host's labels
    by itself.  It includes the host source in a section that emits no bytes,
    so ``o_dorg`` (the host data-segment size), the shared ``dseg_``/``bss_``
    names and the load origin all follow a host edit with no generated table
    in between.

    The host is a three-``nop`` MZ (resident code end CS 0x0003) with 0x10
    bytes of data and 0x18 bytes of DS; the overlay reads the host's DS:2.
    """

    DS_SIZE = 0x18

    def _write(self, root, src, includes, name):
        for rel, text in includes.items():
            path = os.path.join(root, rel)
            os.makedirs(os.path.dirname(path), exist_ok=True)
            with open(path, 'w') as f:
                f.write(text)
        with open(os.path.join(root, name), 'w') as f:
            f.write(src)

    def _host(self, root):
        code = b'\x90' * 3
        binary = bytearray(_mz_header(e_ss=1) + code
                           + bytes(0x210 - 0x203) + bytes(range(0x10, 0x20)))
        struct.pack_into('<HH', binary, 2, len(binary) % 512,
                         (len(binary) + 511) // 512)
        records = [{'type': 'mnem', 'text': 'nop', 'offset': 0x200 + i,
                    'size': 1} for i in range(3)]
        records.append({'type': 'data_block', 'start': 0x203,
                        'end': len(binary), 'bytes': []})
        # The host guards its ``section`` line only under its own prefix.
        names.set_generic_prefix('ds_')
        try:
            src, includes = _render(
                records, 0x200, bytes(binary), label_map={},
                mem_equ={dseg(2): 2}, host_data_offsets={dseg(2): 2},
                ds_size=self.DS_SIZE)
        finally:
            names.set_generic_prefix('')
        self._write(root, src, includes, 'ds.asm')

    def _overlay(self, root, code, records, own=b'', bss_size=0,
                 mem_equ=None, overlay_own=None):
        header = b'\xf2\x00' + struct.pack(
            '<6H', 0x0003, len(code), self.DS_SIZE, len(own), bss_size, 0)
        binary = header + code + own
        if own:
            records = records + [{
                'type': 'data_block', 'start': 14 + len(code),
                'end': len(binary), 'bytes': [f'0x{b:02x}' for b in own]}]
        src, includes = _render(records, 14, binary, label_map={},
                                mem_equ=mem_equ or {dseg(2): 2},
                                host_symbols=('ds.asm', -0x200),
                                ds_size=self.DS_SIZE, overlay_own=overlay_own)
        self._write(root, src, includes, 'ov.asm')
        return binary

    def _build(self, root):
        return _nasm_file(os.path.join(root, 'ov.asm'), root)

    @staticmethod
    def _edit(root, name, old, new):
        path = pathlib.Path(root, name)
        candidates = [path, *sorted(pathlib.Path(root).rglob('data/*.asm'))]
        path = next(p for p in candidates if old in p.read_text())
        path.write_text(path.read_text().replace(old, new, 1))

    def _les_overlay(self, root):
        self._host(root)
        return self._overlay(root, b'\xc4\x1e\x02\x00', [
            {'type': 'mnem', 'text': 'les bx, word [dseg_0002]',
             'offset': 14, 'size': 4}])

    def test_the_overlay_reassembles_byte_for_byte(self):
        with tempfile.TemporaryDirectory() as d:
            binary = self._les_overlay(d)
            self.assertEqual(self._build(d), binary)

    def test_overlay_o_dorg_follows_a_host_data_edit(self):
        with tempfile.TemporaryDirectory() as d:
            self._les_overlay(d)
            # o_dorg is the 4th 16-bit overlay-header field (file offset 6).
            self.assertEqual(self._build(d)[6:8], b'\x18\x00')
            # Grow the host's file-backed data by one byte.
            self._edit(d, 'ds.asm', '__zdseg_start:\n',
                       '__zdseg_start:\n    db 0xee\n')
            self.assertEqual(self._build(d)[6:8], b'\x19\x00')

    def test_overlay_data_name_follows_a_host_data_edit(self):
        """D7.1: a shared DS name in an overlay follows a host data edit.

        Inserting one byte into the host's initialized data moves
        ``dseg_0002`` (``les bx, word [dseg_0002]`` -> ``c4 1e 03 00``),
        resolved entirely from ``ds.asm``.
        """
        with tempfile.TemporaryDirectory() as d:
            self._les_overlay(d)
            original = self._build(d)
            self._edit(d, 'ds.asm', '__zdseg_start:\n',
                       '__zdseg_start:\n    db 0xee\n')
            grown = self._build(d)
        self.assertEqual(len(grown), len(original))
        self.assertEqual(original[14:18], b'\xc4\x1e\x02\x00')
        self.assertEqual(grown[14:18], b'\xc4\x1e\x03\x00')

    def test_overlay_corg_follows_a_host_code_edit(self):
        """D7.2: the overlay load origin tracks the host's resident code end.

        ``o_corg`` (the 2nd header field, file offset 2) *is* the host CS
        offset at which the host's resident code ends.  One byte inserted in
        the host's code moves it by one; the overlay's own bytes stay.
        """
        with tempfile.TemporaryDirectory() as d:
            original = self._les_overlay(d)
            self._edit(d, 'ds.asm', '    nop', '    nop\n    nop')
            grown = self._build(d)
        self.assertEqual(original[2:4], b'\x03\x00')
        self.assertEqual(grown[2:4], b'\x04\x00')
        self.assertEqual(grown[4:], original[4:])

    def test_overlay_bss_follows_an_inserted_data_byte(self):
        """An overlay's own data and BSS move when its data grows.

        The overlay's data loads at the host's data end (``o_dorg``) and its
        BSS follows it.  One byte inserted at the start of the data moves its
        data word ``dseg_0018`` and its BSS object ``bss_001c`` by one;
        ``o_dsize`` grows by one and ``o_bss`` -- the BSS block's span -- stays.
        """
        own = {dseg(0x18): 0x18, bss(0x1c): 0x1c}
        with tempfile.TemporaryDirectory() as d:
            self._host(d)
            binary = self._overlay(
                d, b'\x89\x3e\x18\x00\xbf\x1c\x00', [
                    {'type': 'mnem', 'text': 'mov [dseg_0018], di',
                     'offset': 14, 'size': 4},
                    {'type': 'mnem', 'text': 'mov di, bss_001c',
                     'offset': 18, 'size': 3}],
                own=b'\x11\x22', bss_size=4, mem_equ=own, overlay_own=own)
            self.assertEqual(self._build(d), binary)
            self._edit(d, 'ov.asm', '__zdata_start:\n',
                       '__zdata_start:\n    db 0xee\n')
            grown = self._build(d)
        self.assertEqual(len(grown), len(binary) + 1)
        self.assertEqual(struct.unpack_from('<HH', grown, 8), (3, 4))
        self.assertEqual(grown[14:18], b'\x89\x3e\x19\x00')
        self.assertEqual(grown[18:21], b'\xbf\x1d\x00')


class HostCallNamesTests(unittest.TestCase):
    """Overlays name host routines by the host's own labels.

    A named routine keeps its name (``call dos_con_in_noecho``); the host's
    address-derived names carry the host prefix (``ds_loc_08f2``) so they cannot
    clash with an overlay's own.  Either way the name is defined in the host
    source, not in a generated table.
    """

    @staticmethod
    def _host_definitions():
        import re
        defined = set()
        paths = [_TREE / 'ds.asm', *sorted((_TREE / 'ds').rglob('*.asm'))]
        for p in paths:
            for line in p.read_text(errors='ignore').splitlines():
                m = re.match(r'^([A-Za-z_][\w]*)(?::|\s+equ\b)', line)
                if m:
                    defined.add(m.group(1))
        return defined

    def test_no_generated_host_tables_are_written(self):
        from lib.cachedirs import labels_dir
        d = pathlib.Path(labels_dir('DSAVANT'))
        if not d.is_dir():
            self.skipTest('no .cache label dir; run "make build DSAVANT"')
        # Overlays include the host source, so a stale table cannot be read.
        for name in ('host_calls.inc', 'host_values.inc', 'host_data.inc'):
            self.assertFalse((d / name).exists(), name)


#: The 13 Aztec overlay masters -- the consumers of the shared host DS table.
_OVERLAY_MASTERS = (
    'vbase', 'vdopt', 'vinit', 'vmaze', 'vmele', 'vmexe', 'vmext',
    'vmnpc', 'vpclv', 'vpcmk', 'vpcvw', 'vpops', 'vtrea',
)


class HostDataTableTests(unittest.TestCase):
    """D7.1: the host owns its DS names; an overlay owns the ones past its end.

    A data name in the host's segment (``dseg_``/``bss_`` below ``__zdseg_end``)
    is declared once in ``ds.asm`` with a host recipe, and the 13 overlay
    masters see it through the include.  A name at or past ``__zdseg_end`` is
    an overlay's own data or BSS -- loaded at ``o_dorg``, different in every
    overlay -- so the overlay declares it, on its own byte or BSS label.  (The
    two MZ images own their data names via in-place labels, and a raw driver's
    ``dseg_`` is run-time DS -- both stay out of this table; Appendix C.)
    """

    _DEF = re.compile(r'^((?:bss|dseg)_[0-9a-fA-F]+)\s+equ\s+(.*)$')

    def _definitions(self, path):
        return {m.group(1): m.group(2)
                for line in path.read_text().splitlines()
                if (m := self._DEF.match(line))}

    def test_an_overlay_declares_only_its_own_data(self):
        own = re.compile(r'^__zdseg_end \+ \(__z\w+ - __zdata_start\)'
                         r'(?: \+ 0x[0-9a-f]+)?$')
        offenders = []
        for master in _OVERLAY_MASTERS:
            for name, expr in self._definitions(
                    _TREE / f'{master}.asm').items():
                if not own.match(expr):
                    offenders.append(f'{master}.asm:{name} equ {expr}')
        self.assertEqual(offenders, [])

    def test_the_host_declares_no_overlay_data(self):
        offenders = [f'{name} equ {expr}' for name, expr in
                     self._definitions(_TREE / 'ds.asm').items()
                     if expr.startswith('__zdseg_end')]
        self.assertEqual(offenders, [])


class DataStringAnchorTests(unittest.TestCase):
    """D1: a reference *inside* a string anchors to the string start.

    A word read from the middle of an Aztec string (e.g. the ``push word
    [0x2e]`` PSP-stack idiom) is not a data symbol.  The label must not slice
    the literal, but the reference must still move with the data before it.
    """

    def _image(self):
        header = _mz_header(e_ss=1)
        code = b'\xa1\x02\x00'                 # mov ax, [dseg_0002]
        gap = bytes(0x210 - (0x200 + len(code)))
        data = b'ABCDEFGH' + b'\x00' + bytes([0, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77])
        binary = bytearray(header + code + gap + data)
        struct.pack_into('<HH', binary, 2, len(binary) % 512,
                         (len(binary) + 511) // 512)
        return bytes(binary)

    def _source(self, binary):
        records = [
            {'type': 'mnem', 'text': 'mov ax, [dseg_0002]',
             'offset': 0x200, 'size': 3},
            {'type': 'data_block', 'start': 0x203, 'end': len(binary),
             'bytes': []},
        ]
        src, _ = _build_source(records, 0x200, binary, label_map={},
                               mem_equ={dseg(0x0002): 0x02})
        return src

    def test_reference_anchors_to_string_start(self):
        binary = self._image()
        src = self._source(binary)
        self.assertIn('dseg_0002 equ __zstr_0000 - __zdseg_start + 0x0002',
                      src)
        self.assertIn('__zstr_0000:', src)
        self.assertNotIn('__zdseg_0002:', src)
        self.assertIn("db 'ABCDEFGH'", src)
        self.assertEqual(_nasm(src), binary)

    def test_anchor_survives_an_inserted_string_byte(self):
        src = self._source(self._image())
        # Insert a byte before the string: the start label moves, so the
        # anchored reference (string start + 2) moves with it.
        grown = src.replace('__zdseg_start:',
                            '__zdseg_start:\n    db 0xee', 1)
        built = _nasm(grown)
        self.assertEqual(built[0x200:0x203], b'\xa1\x03\x00')


class NamedAddressPlacementTests(unittest.TestCase):
    """D7.2c: a name the sidecar gives a byte becomes a label *on* the byte.

    An absolute ``equ`` (``loc_1795 equ 0x1795 + VBASE``) is only right until the
    code above it moves; a label moves with the byte.  The literal is now the
    fallback, kept only where the byte cannot carry a label -- strictly inside an
    instruction or a jump table, or inside the MZ code->data gap.
    """

    def _overlay(self, n):
        header = b'\xf2\x00' + (0x5055).to_bytes(2, 'little') + bytes(10)
        return header + b'\x90' * n

    def _source(self, records, label_map, n):
        src, _ = _build_source(records, 14, self._overlay(n),
                               label_map=label_map,
                               host_symbols=('ds.asm', -0x200))
        return src

    def test_a_named_record_start_becomes_a_label(self):
        records = [{'type': 'mnem', 'text': 'nop', 'offset': 14, 'size': 1},
                   {'type': 'mnem', 'text': 'nop', 'offset': 15, 'size': 1}]
        src = self._source(records, {14: routine('app_start', 14),
                                     15: routine('app_next', 15)}, 2)
        self.assertIn('app_start:', src)
        self.assertIn('app_next:', src)
        self.assertNotIn('app_start equ', src)
        self.assertNotIn('app_next equ', src)

    def test_a_code_name_inside_a_data_block_keeps_its_equ(self):
        """A code name on data must not become a label.

        The arbiter decides which bytes are data; a label there would put code
        back (``verify.code_loss`` counts exactly these).  ``verify`` already
        covers this for the final bitmap -- this is the same rule at the
        placement site.
        """
        records = [{'type': 'data_block', 'start': 14, 'end': 18,
                    'bytes': ['0x11', '0x22', '0x33', '0x44']}]
        src = self._source(records, {16: loc(0x0010)}, 4)
        self.assertIn('loc_0010 equ 0x0010 + VBASE', src)
        self.assertNotIn('loc_0010:', src)

    def test_a_data_name_inside_a_data_block_is_placed(self):
        """A data name may anchor data -- the D1 pattern, one name form over."""
        records = [{'type': 'data_block', 'start': 14, 'end': 18,
                    'bytes': ['0x11', '0x22', '0x33', '0x44']}]
        src = self._source(records, {16: data(0x0010)}, 4)
        self.assertIn('data_0010:', src)
        self.assertNotIn('data_0010 equ', src)

    def test_a_name_inside_an_instruction_hangs_off_its_first_byte(self):
        """A self-modified operand: the label goes on the instruction, and the
        name keeps its distance from it instead of freezing the address."""
        records = [{'type': 'mnem', 'text': 'mov ax, 0', 'offset': 14,
                    'size': 3}]
        src = self._source(records, {15: routine('app_inside', 15)}, 3)
        self.assertIn('app_inside equ __zinsn_000e + 0x1', src)
        self.assertIn('__zinsn_000e:', src)
        self.assertNotIn('app_inside:', src)
        self.assertNotIn('0x000f + VBASE', src)

    def test_a_cs_operand_inside_a_driver_instruction_follows_it(self):
        """``play``'s ``cseg_`` names patch its own instructions' operands."""
        records = [{'type': 'mnem', 'text': 'mov ax, 0', 'offset': 0x10,
                    'size': 3}]
        src, _ = _build_source(records, 0, bytes(0x20),
                               mem_equ={cseg(0x11): 0x11}, load_offset=0x100)
        self.assertIn('cseg_0011 equ __zinsn_0010 + 0x1', src)
        self.assertNotIn('cseg_0011 equ 0x0011', src)

    def test_names_inside_one_instruction_share_its_label(self):
        """``play``'s ``call far 0000:0000``: offset word at +1, segment at +3."""
        records = [{'type': 'mnem', 'text': 'call far 0x0:0x0',
                    'offset': 0x10, 'size': 5}]
        src, _ = _build_source(records, 0, bytes(0x20),
                               mem_equ={cseg(0x11): 0x11, cseg(0x13): 0x13},
                               load_offset=0x100)
        self.assertIn('cseg_0011 equ __zinsn_0010 + 0x1', src)
        self.assertIn('cseg_0013 equ __zinsn_0010 + 0x3', src)
        self.assertEqual(src.count('__zinsn_0010:'), 1)

    def _driver_source(self, records, immediate_labels, size=0x40):
        src, _ = _build_source(records, 0, bytes(size),
                               immediate_labels=immediate_labels,
                               load_offset=0x100)
        return src

    def test_a_driver_immediate_binds_to_the_byte_it_names(self):
        """D7.6b: a driver's named immediate becomes ``label - IMAGE_BASE``.

        ``data_010a`` encodes the CS offset 0x010a, which a module read to
        ``segment:0x100`` uses at file 0x00a.  The name is not a virtual address,
        so it stays an ``equ`` -- but the byte it names carries a label, and the
        value is written through it, so an edit above the byte moves the operand.
        """
        records = [{'type': 'data_block', 'start': 0x0a, 'end': 0x0c,
                    'bytes': ['0x11', '0x22']}]
        src = self._driver_source(records, {0x010a: data(0x010a)})
        self.assertIn('__zdata_010a:', src)
        self.assertIn('data_010a equ __zdata_010a - IMAGE_BASE', src)
        self.assertNotIn('data_010a equ 0x010a', src)

    def test_a_driver_immediate_inside_an_instruction_keeps_its_literal(self):
        """A byte inside a decoded instruction cannot carry a label."""
        records = [{'type': 'mnem', 'text': 'mov ax, 0', 'offset': 0,
                    'size': 3}]
        src = self._driver_source(records, {0x0101: data(0x0101)})
        self.assertIn('data_0101 equ 0x0101', src)
        self.assertNotIn('__zdata_0101', src)

    def test_a_driver_immediate_past_the_module_keeps_its_literal(self):
        """A displacement naming no byte of the module stays numeric."""
        records = [{'type': 'data_block', 'start': 0x0a, 'end': 0x0c,
                    'bytes': ['0x11', '0x22']}]
        src = self._driver_source(records, {0x0180: data(0x0180)}, size=0x40)
        self.assertIn('data_0180 equ 0x0180', src)

    def test_a_non_driver_immediate_keeps_its_literal(self):
        """An MZ/overlay immediate is a raw offset, not a load address.

        ``VBASE`` would have to be subtracted -- a formula only the driver's
        negative ``IMAGE_BASE`` makes free -- so those stay as they were.
        """
        records = [{'type': 'data_block', 'start': 0x0a, 'end': 0x0c,
                    'bytes': ['0x11', '0x22']}]
        src, _ = _build_source(records, 0, bytes(0x40),
                               immediate_labels={0x010a: 'data_010a'})
        self.assertIn('data_010a equ 0x010a', src)


class InlineSwitchEditTests(unittest.TestCase):
    """A switch table follows a code edit (plan.md D8).

    ``jmp [cs:bx + jumptable_0206]`` dispatches through two words naming the
    arms at 0x20a and 0x20c.  Inserting one byte in front of the second arm
    must move exactly the targets at or past it.
    """

    def _source(self):
        code = (bytes.fromhex('2effa70600') + b'\x90'
                + struct.pack('<HH', 0x0a, 0x0c) + b'\x90\x90\xc3\xc3')
        binary = bytearray(_mz_header(e_ss=1) + code
                           + bytes(0x10 - len(code)) + bytes(range(16)))
        struct.pack_into('<HH', binary, 2, len(binary) % 512,
                         (len(binary) + 511) // 512)
        table = 'jumptable_0206'
        records = [
            {'type': 'mnem', 'text': f'jmp [cs:bx + {table} - IMAGE_BASE]',
             'offset': 0x200, 'size': 5},
            {'type': 'mnem', 'text': 'nop', 'offset': 0x205, 'size': 1},
            {'type': 'jump_table', 'start': 0x206, 'end': 0x20a,
             'label': table, 'jmp_addr': 0x200, 'entry_size': 2,
             'entries': [f'{table}_case_0', f'{table}_case_1']},
            {'type': 'mnem', 'text': 'nop', 'offset': 0x20a, 'size': 1},
            {'type': 'mnem', 'text': 'nop', 'offset': 0x20b, 'size': 1},
            {'type': 'mnem', 'text': 'ret', 'offset': 0x20c, 'size': 1},
            {'type': 'mnem', 'text': 'ret', 'offset': 0x20d, 'size': 1},
            {'type': 'data_block', 'start': 0x20e, 'end': len(binary),
             'bytes': []},
        ]
        label_map = {0x20a: f'{table}_case_0', 0x20c: f'{table}_case_1'}
        src, _ = _build_source(records, 0x200, bytes(binary),
                               label_map=label_map)
        return src, bytes(binary)

    def test_case_targets_follow_an_inserted_byte(self):
        src, binary = self._source()
        self.assertEqual(_nasm(src), binary)
        grown = _nasm(src.replace('jumptable_0206_case_1:',
                                  '    nop\njumptable_0206_case_1:', 1))
        self.assertEqual(struct.unpack_from('<HH', grown, 0x206),
                         (0x0a, 0x0d))


class DriverEditTests(unittest.TestCase):
    """A raw driver's CS names follow an inserted code byte (D7.2c / D7.6b).

    The driver runs at ``CS:0x100``.  Above a run of ``nop``s it stores into
    the immediate of its own ``mov ax, 0`` (a self-modified operand,
    ``cseg_0011``), loads a named absolute immediate (``data_012a``) and
    indexes a byte table (``cseg_0020``).  One byte inserted below those
    three instructions moves every byte they name, so each operand grows by
    one; under a frozen ``equ`` none would.
    """

    def _image(self):
        binary = bytearray(0x30)
        binary[0x00:0x0c] = bytes.fromhex('2ea31101' 'bb2a01' '2e8a872001')
        binary[0x0c:0x20] = (b'\x90' * 4 + bytes.fromhex('b80000c3')
                             + b'\x90' * 12)
        binary[0x20:0x30] = bytes(range(0x40, 0x50))
        return bytes(binary)

    def _source(self, binary):
        records = [
            {'type': 'mnem', 'text': 'mov [cs:cseg_0011 - IMAGE_BASE], ax',
             'offset': 0x00, 'size': 4},
            {'type': 'mnem', 'text': 'mov bx, data_012a',
             'offset': 0x04, 'size': 3},
            {'type': 'mnem',
             'text': 'mov al, byte [cs:bx + cseg_0020 - IMAGE_BASE]',
             'offset': 0x07, 'size': 5},
            *({'type': 'mnem', 'text': 'nop', 'offset': off, 'size': 1}
              for off in range(0x0c, 0x10)),
            {'type': 'mnem', 'text': 'mov ax, 0', 'offset': 0x10, 'size': 3},
            {'type': 'mnem', 'text': 'ret', 'offset': 0x13, 'size': 1},
            *({'type': 'mnem', 'text': 'nop', 'offset': off, 'size': 1}
              for off in range(0x14, 0x20)),
            {'type': 'data_block', 'start': 0x20, 'end': 0x30,
             'bytes': [f'0x{b:02x}' for b in binary[0x20:]]},
        ]
        src, _ = _build_source(
            records, 0, binary, label_map={},
            mem_equ={cseg(0x11): 0x11, cseg(0x20): 0x20},
            immediate_labels={0x012a: data(0x012a)}, load_offset=0x100)
        return src

    def test_named_operands_follow_an_inserted_byte(self):
        binary = self._image()
        src = self._source(binary)
        self.assertEqual(_nasm(src), binary)
        grown = _nasm(src.replace('    nop', '    nop\n    nop', 1))
        self.assertEqual(len(grown), len(binary) + 1)
        self.assertEqual(grown[0x00:0x04], b'\x2e\xa3\x12\x01')
        self.assertEqual(grown[0x04:0x07], b'\xbb\x2b\x01')
        self.assertEqual(grown[0x07:0x0c], b'\x2e\x8a\x87\x21\x01')
        self.assertEqual(grown[0x21:], binary[0x20:])


class DataPointerCorpusTests(unittest.TestCase):
    """D3: the seed ``data_pointers`` corpus matches the real binaries.

    The corpus is deliberately small — it is the calibration set for the D4
    scorer and the pin for the false-positive direction (plan Section 14).
    These tests keep the seed honest against the binaries it describes.
    """

    _FILES = {'ds': 'DS.EXE', 'vinstall': 'VINSTALL.EXE'}

    @classmethod
    def setUpClass(cls):
        cls.sidecar = load_sidecar('DSAVANT')

    def _read(self, binary):
        path = _PROJECT_ROOT / 'apps' / 'DSAVANT' / self._FILES[binary]
        with open(path, 'rb') as f:
            return f.read()

    def _image_start(self, binary):
        data = self._read(binary)
        return struct.unpack_from('<H', data, 8)[0] * 16

    def test_corpus_offsets_lie_in_the_loaded_image(self):
        # The F7 candidate space is every non-code span of the image, not only
        # the DS data segment: e.g. vinstall 0x113c/0x1b44 are DS-pointer tables
        # stored in the code segment, and ds 0x30dc/0x3672 are code-segment data
        # words read through cs:.  Corpus words may live anywhere in the image.
        for binary in self._FILES:
            origin = self._image_start(binary)
            size = len(self._read(binary))
            result = per_binary(self.sidecar, binary)
            for entry in result['data_pointers'] + result['not_pointers']:
                self.assertGreaterEqual(
                    entry['offset'], origin,
                    f'{binary}: {entry["offset"]:#x} precedes the loaded image')
                self.assertLessEqual(
                    entry['offset'] + 2, size,
                    f'{binary}: {entry["offset"]:#x} runs past EOF')

    def test_no_offset_is_asserted_both_ways(self):
        for binary in self._FILES:
            result = per_binary(self.sidecar, binary)
            asserted = {e['offset'] for e in result['data_pointers']}
            denied = {e['offset'] for e in result['not_pointers']}
            self.assertFalse(asserted & denied,
                             f'{binary}: offset asserted both ways')


if __name__ == '__main__':
    unittest.main()
