"""Dynamic-address goal tests (plan.md).

Two layers:

* pure classification tests for ``count_frozen_addrs`` (the metric that tracks
  the goal);
* a baseline check over the committed ``asm_DSAVANT`` tree: ``frozen_addr`` may
  only decrease as values are rewritten into assembler expressions.
"""

import os
import pathlib
import re
import struct
import subprocess
import tempfile
import unittest

from tests.slow import slow

from lib.compare.render import HOST_SYMBOLS_INC, _build_source
from lib.compare.records import (
    DISPATCH_STRIDE, count_frozen_addrs, count_hidden_flow, count_name_use,
    dispatch_handlers, far_entry_runs, instruction_offsets, thunk_entry_count,
)
from lib.compare.cotenancy import symbol_tables
from lib.sidecar.loader import load as load_sidecar
from lib.symtab import Space, Symbol
from tests.syms import bss, cseg, data, dseg, loc, psp, routine
from lib.sidecar.binary import per_binary
from make.elf import _force_origin_zero


_ASM_DIR = pathlib.Path(__file__).resolve().parents[1]
_PROJECT_ROOT = _ASM_DIR.parent
_TREE = _PROJECT_ROOT / 'asm_DSAVANT'
_SKIP_DIRS = {'build_out', 'inc'}


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


def _copy_source_tree(dest):
    """Copy the assembler source tree (``.asm``/``.inc``) into *dest*."""
    import shutil
    for path in _TREE.rglob('*'):
        rel = path.relative_to(_TREE)
        if rel.parts[0] == 'build_out' or not path.is_file():
            continue
        if path.suffix not in ('.asm', '.inc'):
            continue
        target = os.path.join(dest, rel)
        os.makedirs(os.path.dirname(target), exist_ok=True)
        shutil.copy2(path, target)


def _mz_header(e_ss):
    header = bytearray(0x200)
    struct.pack_into(
        '<2s13H', header, 0,
        b'MZ', 0x0056, 0x0088, 1, 0x0020, 0x0e4b, 0xffff,
        e_ss, 0xf198, 0, 0x0010, 0, 0x0020, 0,
    )
    return header


# Snapshot taken from the committed tree after the F1/F2/F3/F5 work
# (2026-10-11), the D0 census split and D1's data-label binding (2026-10-12),
# the D7.0a shared-geometry counters (2026-10-12), D7.0b's binding of the
# DS-size immediates to ``__zdseg_end`` (2026-10-12), D7.0c's pre-NASM
# link step binding the 13 overlay ``o_dorg`` origins to the same host symbol
# (2026-10-12), and D7.1's host-owned shared DS name map (2026-10-13: the 13
# overlay masters' ~1230 ``dseg_``/``bss_`` literals are replaced by one
# ``host_data.inc`` include).  ``total`` is the *gated* sum (``code_shift +
# data_shift``); ``inert`` values (``psp_`` fields, ``bios_data_0410``, literal
# data tables) are reported but excluded from the gate.  D7.0a *raised* the
# baseline by 33 (it made the previously invisible shared host/overlay geometry
# countable); D7.0b/D7.0c then bound the DS-size immediates and the ``o_dorg``
# origins, and D7.1 drops ``data_shift`` from 1231 to its single residual -- a
# raw-driver (``ega``) DS reference whose segment is only known at run time
# (Appendix C).  D7.2a *raised* the baseline by 27 (like D7.0a): the ``o_corg``
# bucket now counts all three spellings of the overlay load address (the header
# field, the ``VBASE`` and the ``o_entry`` addend -- 39, not 13) and a host code
# immediate equal to it (``o_corg_imm``); D7.2b then bound all 40 to the host's
# resident-code end (``__zresident_end``), 192 -> 152.  D7.2c then gave the
# sidecar's names a label on the byte they name (``_ensure_global_label``, the
# same splitter the D1 data anchors use) wherever the byte can hold one: 26 of
# the 134, so 152 -> 126.  The other 70 stay literals *by construction*: 55 name
# a byte the renderer emits as data (31 inside a jump-table record, 24 inside a
# data block -- a code label there would put code back into bytes the arbiter
# removed, which ``verify.code_loss`` counts and ``test_hard_classification``
# pins), 15 are strictly inside a decoded instruction, 2 are outside every
# record.  Another 44 are never routed through the placement call at all: the 27
# ``cseg_``/``data_`` *operand* symbols the ``mem_equ`` block spells literally,
# and ``vga``'s 17 ``immediate_labels``, whose value is a raw offset immediate
# that a label (``VBASE + off``) would change for a ``vstart`` image.
# 26 placed + 70 refused + 44 never routed = 140 (the original 134 plus the six
# ``cseg_`` globals D7.2c-2c revealed).  Every count may only go down from here.
#
# Two further counters split what the census *counts* from what it *means* (they
# are the measurement D7.2c-2 starts from):
#
# * ``names_used``/``names_inert`` -- of the named frozen addresses above, how
#   many the tree actually refers to.  An inert name costs nothing and converting
#   it to a label only moves the census; only a used name has to follow an edit.
#   Measured over the whole tree, because a name declared in a master is normally
#   used in a fragment.
# * ``hidden_flow`` -- near call/jmp displacements in the original image that the
#   source emits as *data* while their target *is* shown as code: real address
#   references no source line spells, so neither the census nor a label can reach
#   them (play's ``call 0x07f6`` at 0x00e2, emitted as ``db 0xe8, 0x11, 0x07`` on
#   ``play.asm:93``).  A *lower bound*: the scan walks only the bytes between the
#   source's instruction offsets and stops at the first byte that does not decode,
#   so it is trustworthy as a falling signal, not as an exact population.  It needs
#   ``apps/DSAVANT`` (which the tree cannot exist without).
#
# The census floor was re-baselined **once**, in D7.2c-2b.  VGA's sidecar carried
# a ``force_data`` range over its dispatch table (0x0003..0x00c2) whose only real
# effect was to trip the ``hard_data`` guard in ``DispatchTablePhase``: 48 handler
# targets were never seeded, so vga sat ~90% undecoded (452 instruction offsets
# against ega's 5830 for the same construct).  Removing it, declaring the data
# *after* the table (0x00df..0x0292), and letting a declared table seed its
# *entries* as well as its handlers -- ``call handler; retf``, which is how play's
# table always rendered -- decodes vga to ega's depth.  Measured: ``hidden_flow``
# 161 -> **98** (ega 54 -> 0 and vga 9 -> 0 -- the two tables' entries were all of
# it), ``names_used`` 61 -> **84**, ``names_inert`` 52 -> **32**.  The decoding
# *reveals* six ``cseg_`` code-segment globals that vga code addresses -- the same
# class ega already carries, and the class item (ii) exists to resolve -- so the
# census floor rose once, to 133, and the classes below it only fall from here.
#
# Two counters fell afterwards with the hand-written C (the C workstream, plan.md
# section 17 "C"): a C-overridden routine is re-rendered from the compiler's bytes,
# so its instructions carry ``; 0x`` offsets where the disassembly had emitted the
# same bytes as ``db`` -- no longer a site ``hidden_flow`` can see.  Measured:
# ``hidden_flow`` 98 -> **87** (``vinstall`` 38 -> 26, the binary with the most
# ``.c`` overrides), ``names_used`` 84 -> **83** and ``names_inert`` 32 -> **33**
# (one name the C spelling no longer mentions).  Both are decrease-only baselines;
# they were lowered here after measuring HEAD's own tree, not the working tree.
BASELINE_TOTALS = {
    'code_shift': 57, 'data_shift': 1, 'inert': 230,
    'f1': 2, 'f2': 13, 'f3': 39, 'f4': 1, 'f5': 3, 'f6': 223, 'f7': 0,
    'o_corg': 0, 'o_corg_imm': 0, 'o_dorg': 0, 'ds_size_imm': 0,
    # D7.6 gave the raw drivers their true load origin (``CS:0x100``), so a
    # ``[cs:disp]`` operand now resolves to ``disp - 0x100`` and the ``cseg_``
    # names land on the bytes they really name.  ``f3`` 114 -> 79 and
    # ``code_shift`` 132 -> 97 as 35 names that could not hold a label at their
    # (0x100 too high) offset now do; ``names_used`` 83 -> 55 and
    # ``names_inert`` 33 -> 29 for the same reason.  All 19 binaries stay
    # byte-identical (the ``IMAGE_BASE`` base turns negative, so the encodings
    # are unchanged).  ``play``'s own ``f3`` rises 9 -> 14 where an operand
    # previously borrowed a (0x100-off) code label and now carries a real
    # ``cseg_`` name -- the honest count, and the whole class only falls.
    # ``split_off_foreign_objects`` + the ``loc_`` content tag (2026-10-14): each
    # fragment's trailing neighbour is its own file, and every ``loc_`` root is
    # named after its code.  ``glued_files`` 361 -> 214, ``outside`` 734 -> 254.
    # ``names_used`` 55 -> 56 (one more named address is referenced) and
    # ``hidden_flow`` 87 -> **90**: a shared ``shared/`` file carries no ``; 0x``
    # comments -- dropping them is what lets it share -- so the source-anchored
    # scan cannot see its instructions.  More sharing (58 -> 84 shared files) means
    # fewer visible anchors, and ``hidden_flow`` is a lower bound on a *gap*
    # walk, so the count rises mechanically rather than from a new reference.
    # ``code_shift``/``data_shift``, the gate classes, are unchanged.
    # D7.6b bound the raw drivers' *named* absolute immediates (plan.md section 5,
    # "raw-driver absolute immediates").  A driver's immediate encodes
    # ``file + load_offset``, so ``vga``'s 17 sidecar ``immediate_labels`` name
    # the byte at ``value - 0x100``; each is now a label on that byte, written
    # ``data_XXXX equ __zdata_XXXX - IMAGE_BASE``, which keeps the encoding and
    # lets the operand follow an edit.  ``f3`` 79 -> 64 and ``code_shift``
    # 97 -> 82 (14 live names + ``data_1e64``, which is name-only); the 15 names
    # leave ``names_used``/``names_inert`` altogether (56 -> 42, 28 -> 27),
    # because a bound name is no longer a *frozen* name for a byte.  ``vga``
    # stays byte-identical at the original layout, and the parked ``ega
    # dseg_24fd`` stays the one ``data_shift`` (a runtime-DS site, Appendix B).
    # Byte-hash tags give identical code in two binaries one name, so a name
    # resolves in its own binary first and each binary's ``equ`` counts on its
    # own: 42/27 -> **44/28** (the same tree at HEAD measures 44/28 too; the old
    # count merged two binaries' names and saw a same-named label as a use).
    # They also share more (84 -> 90 shared files): ``hidden_flow`` 90 -> **105**,
    # every new site at an offset whose ``; 0x`` anchor moved into ``shared/``.
    # Parameterised sharing (lib.shared: copies differing only in label names)
    # took ``shared/`` 90 -> 141 files: ``hidden_flow`` 105 -> **157**, all 61 new
    # sites at offsets whose anchor moved into ``shared/`` (9 sites went).
    'names_used': 22, 'names_inert': 25, 'hidden_flow': 175,
    'total': 58,
    # D8 (inline switch tables): ``mov cx, N; call <switch helper>`` never
    # returns; the call is followed by N-1 keys and N case targets.  The decoder
    # used to fall through the call and decode the target words as ``jcc``s,
    # minting a frozen ``loc_`` ``equ`` per fake branch target, and 7E.4 tagged
    # N+1 words ``literal``.  Now the table is carved exactly and the targets are
    # code roots: ``f3`` 64 -> **39**, ``code_shift`` 82 -> **57**, ``f6`` 241
    # -> **223** (case targets render as labels, not tagged numbers),
    # ``hidden_flow`` 157 -> **118** (the case arms decode as code),
    # ``names_used`` 44 -> **22**, ``names_inert`` 28 -> **25**.
    # No bare code left in the masters (switch-arm tails kept with their routine,
    # the last root runs to the end of the code, the entry routine gets a file):
    # ``shared/`` 146 -> 202 files, which drops more ``; 0x`` anchors, so
    # ``hidden_flow`` 118 -> **175** (a lower-bound artifact, not a new reference).
}


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
        out += sorted(frag_dir.rglob('*.asm'))   # incl. asm_only/
    if master.is_file():
        # Fragments shared with other binaries live in shared/ (lib.shared).
        for name in re.findall(r'%include "(shared/[^"]+)"', master.read_text()):
            out.append(_TREE / name)
    return out


_LABEL_RE = re.compile(r'^([A-Za-z_@][\w.@]*):')
_LABEL_OFFSET_RE = re.compile(r';\s*0x([0-9a-f]{4})\b')


def _tree_labels(binary):
    """``{offset: (label, relpath, is_first_label_in_file)}`` for *binary*.

    A label line carries no offset comment of its own; it names the next emitted
    record, whose ``; 0x<hex>`` comment gives the address.  Local (``@..``)
    labels never displace a global one and never start a file.  The path is
    relative to the tree root because a fragment no longer has to sit beside its
    master: ``asm_only/`` holds the hand-written ones and ``shared/`` the shared
    ones (`asm/lib/asm_only.py`), so a bare basename would not resolve.
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
#: letters derived from the routine's *content* (`asm/lib/names.py`), optionally
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
    Names carry a *content* tag now (`asm/lib/names.py`), so a name says nothing
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


def _scan_hidden_flow():
    """``(site, target)`` pairs the source emits as bytes, over every binary."""
    app_dir = _PROJECT_ROOT / 'apps' / 'DSAVANT'
    if not _TREE.is_dir() or not app_dir.is_dir():
        return []
    sidecar = load_sidecar('DSAVANT')
    hits = []
    for binary in sorted(sidecar['binaries']):
        image = app_dir / per_binary(sidecar, binary)['file']
        if not image.is_file():
            continue
        offsets = set()
        for path in _binary_sources(binary):
            offsets |= instruction_offsets(path.read_text(errors='ignore'))
        hits += count_hidden_flow(image.read_bytes(), offsets)
    return hits


def _scan_tree():
    census = count_frozen_addrs('')      # the per-file keys, all zero
    symbols = symbol_tables('DSAVANT')
    sources = []
    for path in sorted(_TREE.rglob('*.asm')):
        rel = path.relative_to(_TREE)
        if rel.parts[0] in _SKIP_DIRS:
            continue
        text = path.read_text(errors='ignore')
        sources.append((rel, text))
        counts = count_frozen_addrs(text, symbols)
        for key in census:
            census[key] += counts[key]
    use = count_name_use(sources, symbols)
    census['names_used'] = use['names_used']
    census['names_inert'] = use['names_inert']
    census['hidden_flow'] = len(_scan_hidden_flow())
    return census


class CountFrozenAddrsTests(unittest.TestCase):
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
        # ships 55 entries, and its loader patches 55 segment words, so the 56th
        # slot is a spare the host never calls.
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

    @unittest.skipUnless(_TREE.is_dir(), 'generated asm_DSAVANT tree not present')
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


class EmittedTreeCoherenceTests(unittest.TestCase):
    """Every local label the emitted tree references must be defined in it.

    A reference with no definition is not a rendering nit: NASM fails the whole
    binary with ``symbol ... not defined``, and the pipeline's own checks do not
    assemble, so ``make build`` is where it surfaces -- as a wall of
    ``label-redef-late`` cascade errors that hides the one real line.  The
    C-override path produced exactly one (D7.2c-2e): a short forward branch the
    Aztec compiler resolved itself carries no relocation, so the override's
    label table had no entry for its target, while the text named one taken from
    the *disassembly*'s table -- a label that override never defines.
    """

    @slow
    def test_every_referenced_local_label_is_defined(self):
        if not _TREE.is_dir():
            self.skipTest('generated asm_DSAVANT tree not present')
        referenced, defined = set(), set()
        for path in sorted(_TREE.rglob('*.asm')):
            if path.relative_to(_TREE).parts[0] in _SKIP_DIRS:
                continue
            text = path.read_text(errors='ignore')
            referenced |= set(re.findall(r'@\.\.[\w.@]+\.l\d+', text))
            defined |= set(re.findall(r'^(@\.\.[\w.@]+\.l\d+):', text, re.M))
        self.assertEqual(
            sorted(referenced - defined), [],
            'local labels referenced but never defined (NASM fails the binary)',
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
        self.assertIn(
            'bss_0012 equ (__zimage_end - __zdseg_start) + 0x0002', src)
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
        self.assertIn('__zbss_size equ 0x0008', src)
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


class HostIncludeTests(unittest.TestCase):
    """An overlay sees the host's own symbols (plan.md D7.0c / D7.1).

    An overlay is a separate NASM assembly, so it cannot see the host's labels
    by itself.  It includes the host source in a section that emits no bytes,
    so ``o_dorg`` (the host data-segment size), the shared ``dseg_``/``bss_``
    names and the near-call handles all follow a host edit with no generated
    table in between.
    """

    def _build_overlay(self, root):
        return _nasm_file(os.path.join(root, 'vbase.asm'), root)

    @staticmethod
    def _edit_host(root, old, new):
        master = os.path.join(root, 'ds.asm')
        with open(master) as f:
            src = f.read()
        edited = src.replace(old, new, 1)
        assert edited != src
        with open(master, 'w') as f:
            f.write(edited)

    @slow
    @unittest.skipUnless(
        _TREE.is_dir() and (_TREE / 'ds.asm').exists()
        and (_TREE / 'vbase.asm').exists(),
        'generated asm_DSAVANT tree not present',
    )
    def test_overlay_o_dorg_follows_a_host_data_edit(self):
        with tempfile.TemporaryDirectory() as d:
            _copy_source_tree(d)
            original = self._build_overlay(d)
            # o_dorg is the 4th 16-bit overlay-header field (file offset 6).
            self.assertEqual(original[6:8], b'\x98\x90')
            self.assertEqual(original[:2], b'\xf2\x00')

            # Grow the host's file-backed data by one byte.
            self._edit_host(d, '__zdseg_start:\n',
                            '__zdseg_start:\n    db 0xee\n')
            self.assertEqual(self._build_overlay(d)[6:8], b'\x99\x90')

    @slow
    @unittest.skipUnless(
        _TREE.is_dir() and (_TREE / 'ds.asm').exists()
        and (_TREE / 'vbase.asm').exists(),
        'generated asm_DSAVANT tree not present',
    )
    def test_overlay_data_name_follows_a_host_data_edit(self):
        """D7.1: a shared DS name in an overlay follows a host data edit.

        ``vbase`` reads the host's file-backed word at DS:2 (``les bx, word
        [dseg_0002]`` -> ``c4 1e 02 00``).  Inserting one byte into the host's
        initialized data moves ``dseg_0002`` (and every encoded reference in
        the rebuilt overlay) by one, resolved entirely from ``ds.asm``.
        """
        with tempfile.TemporaryDirectory() as d:
            _copy_source_tree(d)
            original = self._build_overlay(d)
            count = original.count(b'\xc4\x1e\x02\x00')
            self.assertGreater(count, 0)

            self._edit_host(d, '__zdseg_start:\n',
                            '__zdseg_start:\n    db 0xee\n')
            grown = self._build_overlay(d)
            self.assertEqual(len(grown), len(original))
            self.assertEqual(grown.count(b'\xc4\x1e\x03\x00'), count)
            self.assertEqual(grown.count(b'\xc4\x1e\x02\x00'), 0)

    @unittest.skipUnless(
        _TREE.is_dir() and (_TREE / 'vbase.asm').exists(),
        'generated asm_DSAVANT tree not present',
    )
    def test_overlay_origin_is_what_the_elf_prep_zeroes(self):
        """The emitted origin is the form ``make elf-rebuild`` rewrites.

        The ELF build has no ``vstart``, so the origin must be 0 there; the prep
        zeroes the image's own ``VBASE equ`` line in the prepared source rather
        than passing ``-DVBASE=0``, because an overlay's host include defines
        ``VBASE`` for its own frame and clears it, so a command-line definition
        never reaches the overlay's own line.
        """
        lines = (_TREE / 'vbase.asm').read_text().splitlines()
        rewritten = _force_origin_zero(lines)
        self.assertEqual(len(rewritten), len(lines))
        self.assertIn('VBASE equ 0', rewritten)
        self.assertNotIn('VBASE equ __zresident_end - 0x000e', rewritten)
        # The host's own frame definition is no longer in the master at all (E2
        # moved it to the shared include, which the ELF prep leaves alone), so
        # the overlay's own origin is the only ``VBASE`` left to rewrite.
        self.assertNotIn('%define VBASE', rewritten)
        self.assertIn(f'%include "{HOST_SYMBOLS_INC}"', rewritten)

    @slow
    @unittest.skipUnless(
        _TREE.is_dir() and (_TREE / 'ds.asm').exists()
        and (_TREE / 'vbase.asm').exists(),
        'generated asm_DSAVANT tree not present',
    )
    def test_overlay_corg_follows_a_host_code_edit(self):
        """D7.2: the overlay load origin tracks the host's resident code end.

        ``o_corg`` (the 2nd header field, file offset 2) *is* the host CS offset
        at which the host's resident code ends -- where the overlay loader loads
        the overlay.  Inserting one byte in the host before ``aztec_csav`` moves
        it by one, and the overlay's whole frame moves with it: the near-call
        displacement to the host routine (and every other byte) is unchanged,
        so only the load origin moves.
        """
        with tempfile.TemporaryDirectory() as d:
            _copy_source_tree(d)
            original = self._build_overlay(d)
            self.assertEqual(original[2:4], b'\x55\x50')            # o_corg 0x5055
            self.assertEqual(original[0xb8:0xbb], b'\xe8\x50\xf3')  # call aztec_csav

            self._edit_host(d, '%include "ds/asm_only/aztec_csav.asm"',
                            '    db 0xee\n%include "ds/asm_only/aztec_csav.asm"')
            grown = self._build_overlay(d)
            self.assertEqual(len(grown), len(original))
            self.assertEqual(grown[2:4], b'\x56\x50')               # o_corg 0x5056
            self.assertEqual(grown[0xb8:0xbb], b'\xe8\x50\xf3')
            # ``o_entry`` (the entry's host CS offset) is drawn from the frame,
            # so it follows the host code edit too.
            self.assertEqual(grown[0xc:0xe], b'\x78\xe3')


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

    @unittest.skipUnless(
        _TREE.is_dir() and (_TREE / 'ds.asm').exists(),
        'generated asm_DSAVANT tree not present',
    )
    @slow
    def test_every_referenced_host_prefixed_name_is_defined_by_the_host(self):
        import re
        defined = self._host_definitions()
        self.assertTrue(defined)
        name_re = re.compile(r'\bds_[0-9A-Za-z_]+')
        missing = []
        for p in sorted(_TREE.rglob('*.asm')):
            rel = p.relative_to(_TREE)
            if rel.parts[0] in _SKIP_DIRS or rel.parts[0] in ('ds', 'ds.asm'):
                continue  # the host itself defines its ``ds_`` names
            for name in sorted(set(name_re.findall(
                    p.read_text(errors='ignore')))):
                # ``ds___zimage_end`` only exists inside the include.
                if name not in defined and name != 'ds___zimage_end':
                    missing.append(f'{rel}:{name}')
        self.assertEqual(missing, [])

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
    """D7.1: the overlays share one host DS name table.

    A data name the host owns (``dseg_``/``bss_``) is declared once in
    ``ds.asm`` with a host recipe; the 13 overlay masters no longer re-declare
    ~1230 literals, they see the host's declarations through the include.  (The two MZ
    images own their data names via in-place labels, and a raw driver's
    ``dseg_`` is run-time DS -- both stay out of this table; Appendix C.)
    """

    @slow
    def test_every_overlay_ds_name_is_defined_by_the_host(self):
        import re
        pat = re.compile(r'^((?:bss|dseg)_[0-9a-fA-F]+)\s+equ\b')
        defined = {m.group(1)
                   for line in (_TREE / 'ds.asm').read_text().splitlines()
                   if (m := pat.match(line))}
        self.assertTrue(defined)
        name_re = re.compile(r'\b(?:bss|dseg)_[0-9a-fA-F]{4}\b')
        missing = []
        for master in _OVERLAY_MASTERS:
            paths = [_TREE / f'{master}.asm']
            directory = _TREE / master
            if directory.is_dir():
                paths.extend(sorted(directory.rglob('*.asm')))
            for p in paths:
                for name in sorted(set(name_re.findall(
                        p.read_text(errors='ignore')))):
                    if name not in defined:
                        missing.append(f'{p.relative_to(_TREE)}:{name}')
        self.assertEqual(missing, [])

    def test_no_overlay_master_defines_a_ds_equ(self):
        import re
        pat = re.compile(r'^\s*(bss_|dseg_)[0-9a-fA-F]+\s+equ\b')
        offenders = []
        for master in _OVERLAY_MASTERS:
            for line in (_TREE / f'{master}.asm').read_text().splitlines():
                if pat.match(line):
                    offenders.append(f'{master}.asm:{line.strip()}')
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

    def test_a_name_inside_an_instruction_keeps_its_equ(self):
        records = [{'type': 'mnem', 'text': 'mov ax, 0', 'offset': 14,
                    'size': 3}]
        src = self._source(records, {15: routine('app_inside', 15)}, 3)
        self.assertIn('app_inside equ 0x000f + VBASE', src)
        self.assertNotIn('app_inside:', src)

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


@slow
class InlineSwitchEditTests(unittest.TestCase):
    """An inline switch table follows a code edit (plan.md D8).

    ``vpcvw``'s ``mov cx, 0x18; call <switch helper>`` at file 0x291c is
    followed by 23 keys and 24 case targets (file 0x291f..0x297d).  Inserting
    one byte in front of a case arm must move exactly the targets at or past it
    and leave the keys alone.
    """

    _TABLE = 0x291f
    _KEYS = 23
    _TARGETS = 24
    _O_CORG = 0x5055
    _HEADER = 14

    def _words(self, image, start, count):
        return list(struct.unpack_from(f'<{count}H', image, start))

    @unittest.skipUnless(
        _TREE.is_dir() and (_TREE / 'vpcvw.asm').exists()
        and (_TREE / 'ds.asm').exists(),
        'generated asm_DSAVANT tree not present',
    )
    def test_case_targets_follow_an_inserted_byte(self):
        with tempfile.TemporaryDirectory() as d:
            _copy_source_tree(d)
            root = pathlib.Path(d)
            original = _nasm_file(str(root / 'vpcvw.asm'), d)
            keys = self._words(original, self._TABLE, self._KEYS)
            targets = self._words(original, self._TABLE + 2 * self._KEYS,
                                  self._TARGETS)
            self.assertEqual(keys[0], 0x000c)

            # The arm the first target names; insert a byte in front of it.
            arm = self._HEADER + targets[0] - self._O_CORG
            label = 'jumptable_291f_case_23:'
            src = next(p for p in root.rglob('*.asm')
                       if label in p.read_text(errors='ignore'))
            text = src.read_text()
            src.write_text(text.replace(label, f'    nop\n{label}', 1))

            grown = _nasm_file(str(root / 'vpcvw.asm'), d)
            self.assertEqual(len(grown), len(original) + 1)
            table = self._TABLE + 1  # the table sits past the edit
            self.assertEqual(self._words(grown, table, self._KEYS), keys)
            expected = [
                t + 1 if self._HEADER + t - self._O_CORG >= arm else t
                for t in targets
            ]
            self.assertEqual(
                self._words(grown, table + 2 * self._KEYS, self._TARGETS),
                expected)
            self.assertNotEqual(expected, targets)


@slow
class InsertBytePropertyTests(unittest.TestCase):
    """Acceptance test: editing a fragment keeps the image consistent.

    Assembles the real ``ds`` source in a scratch copy, then repeats with one
    ``nop`` inserted (fits the gap → data unmoved) and with a large insert
    (grows past the gap → data relocates, ``e_ss`` tracks it).
    """

    @unittest.skipUnless(_TREE.is_dir() and (_TREE / 'ds.asm').exists(),
                         'generated asm_DSAVANT tree not present')
    def test_ds_insert_byte_property(self):
        with tempfile.TemporaryDirectory() as d:
            _copy_source_tree(d)
            master = os.path.join(d, 'ds.asm')
            original = _nasm_file(master, d)
            data_origin = 0x200 + struct.unpack_from('<H', original, 14)[0] * 16

            frag = os.path.join(d, 'ds', 'app_malloc.asm')
            with open(frag) as f:
                lines = f.read().splitlines(keepends=True)

            # 1) a single nop fits in the code→data gap.
            with open(frag, 'w') as f:
                f.writelines([lines[0], '    nop\n'] + lines[1:])
            mut = _nasm_file(master, d)
            self.assertEqual(len(mut), len(original))
            self.assertEqual(struct.unpack_from('<H', mut, 14)[0],
                             struct.unpack_from('<H', original, 14)[0])
            self.assertEqual(mut[data_origin:],
                             original[data_origin:])
            cblp, cp = struct.unpack_from('<HH', mut, 2)
            self.assertEqual(cblp, len(mut) % 512)
            self.assertEqual(cp, (len(mut) + 511) // 512)

            # 2) a large insertion overflows the gap → data relocates.
            with open(frag, 'w') as f:
                f.writelines([lines[0], '    times 45000 db 0x90\n'] + lines[1:])
            grown = _nasm_file(master, d)
            new_origin = 0x200 + struct.unpack_from('<H', grown, 14)[0] * 16
            self.assertGreater(new_origin, data_origin)
            self.assertEqual(new_origin % 16, 0)
            self.assertEqual(grown[new_origin:new_origin + len(original) - data_origin],
                             original[data_origin:])
            g_cblp, g_cp = struct.unpack_from('<HH', grown, 2)
            self.assertEqual(g_cblp, len(grown) % 512)
            self.assertEqual(g_cp, (len(grown) + 511) // 512)

    @unittest.skipUnless(_TREE.is_dir() and (_TREE / 'ds.asm').exists(),
                         'generated asm_DSAVANT tree not present')
    def test_ds_data_insert_moves_the_ds_size_immediates(self):
        """D7.0b: a code immediate hard-coding the DS size follows a data edit.

        ``aztec_begin`` stores the DS size (``0x9098``) three ways: into a
        register, the stack pointer and a DS word.  Inserting one file-backed
        data byte grows the segment by one, so every stored size must read
        ``0x9099``.
        """
        with tempfile.TemporaryDirectory() as d:
            _copy_source_tree(d)
            master = os.path.join(d, 'ds.asm')
            original = _nasm_file(master, d)
            self.assertEqual(original[0x4d89:0x4d8d], b'\x81\xc3\x98\x90')
            self.assertEqual(original[0x4de3:0x4de6], b'\xb9\x98\x90')
            self.assertEqual(original[0x4e46:0x4e4c],
                             b'\xc7\x06\x7a\x0c\x98\x90')

            with open(master) as f:
                src = f.read()
            grown_src = src.replace('__zdseg_start:\n',
                                    '__zdseg_start:\n    db 0xee\n', 1)
            self.assertNotEqual(grown_src, src)
            with open(master, 'w') as f:
                f.write(grown_src)
            grown = _nasm_file(master, d)

            self.assertEqual(grown[0x4d89:0x4d8d], b'\x81\xc3\x99\x90')
            self.assertEqual(grown[0x4de3:0x4de6], b'\xb9\x99\x90')
            # dseg_0c7a is a DS offset past the inserted byte, so it moves too,
            # and its stored size grows with the segment.
            self.assertEqual(grown[0x4e46:0x4e4c],
                             b'\xc7\x06\x7b\x0c\x99\x90')

    @unittest.skipUnless(_TREE.is_dir() and (_TREE / 'vinstall.asm').exists(),
                         'generated asm_DSAVANT tree not present')
    def test_vinstall_data_insert_moves_promoted_pointers(self):
        """D5: a promoted pointer word follows an edit inside the data segment.

        The graphics-board menu is a ``char *`` array at DS 0x02 (file 0x3ae2);
        entry ``dseg_000e`` names the '0-NO GRAPHICS BOARD' string.  Inserting a
        byte between the array and that string must move both the label and the
        stored word by one, so the word still names the same byte content.
        """
        with tempfile.TemporaryDirectory() as d:
            _copy_source_tree(d)
            master = os.path.join(d, 'vinstall.asm')
            original = _nasm_file(master, d)
            data_origin = 0x200 + struct.unpack_from('<H', original, 14)[0] * 16
            word_off = 0x3ae2
            start = struct.unpack_from('<H', original, word_off)[0]
            target = data_origin + start
            content = original[target:target + 23]
            self.assertEqual(content, b'0-NO GRAPHICS BOARD   \x00')

            with open(master) as f:
                src = f.read()
            grown_src = src.replace('__zdseg_000e:',
                                    '    db 0xee\n__zdseg_000e:', 1)
            self.assertNotEqual(grown_src, src)
            with open(master, 'w') as f:
                f.write(grown_src)
            grown = _nasm_file(master, d)

            new_origin = 0x200 + struct.unpack_from('<H', grown, 14)[0] * 16
            new_start = struct.unpack_from('<H', grown, word_off)[0]
            self.assertEqual(new_origin, data_origin)
            self.assertEqual(new_start, start + 1)
            self.assertEqual(
                grown[new_origin + new_start:new_origin + new_start + 23],
                content)

    @unittest.skipUnless(_TREE.is_dir() and (_TREE / 'vinstall.asm').exists(),
                         'generated asm_DSAVANT tree not present')
    def test_vinstall_data_delete_moves_promoted_pointers(self):
        """D5: the same property for a deletion (array stays word-aligned)."""
        with tempfile.TemporaryDirectory() as d:
            _copy_source_tree(d)
            master = os.path.join(d, 'vinstall.asm')
            original = _nasm_file(master, d)
            data_origin = 0x200 + struct.unpack_from('<H', original, 14)[0] * 16
            start = struct.unpack_from('<H', original, 0x3ae2)[0]
            content = original[data_origin + start:data_origin + start + 23]

            with open(master) as f:
                src = f.read()
            shrunk_src = src.replace('__zdseg_start:\n    db 0x00, 0x00\n',
                                     '__zdseg_start:\n', 1)
            self.assertNotEqual(shrunk_src, src)
            with open(master, 'w') as f:
                f.write(shrunk_src)
            shrunk = _nasm_file(master, d)

            new_origin = 0x200 + struct.unpack_from('<H', shrunk, 14)[0] * 16
            # The array moved back by two bytes; its first entry is now at the
            # data origin and still names the same string.
            self.assertEqual(new_origin, data_origin)
            new_start = struct.unpack_from('<H', shrunk, 0x3ae0)[0]
            self.assertEqual(new_start, start - 2)
            self.assertEqual(
                shrunk[new_origin + new_start:new_origin + new_start + 23],
                content)

    @unittest.skipUnless(_TREE.is_dir() and (_TREE / 'play.asm').exists(),
                         'generated asm_DSAVANT tree not present')
    def test_driver_branch_follows_an_inserted_byte(self):
        """D7.2c: a named branch target is a label, so an edit moves it.

        ``loc_07a2`` names the byte at 0x07a2, spelled ``loc_07a2 equ 0x07a2``
        before this step.  Inserting one byte *between* the ``jb`` at 0x079a and
        that target must lengthen the branch by exactly one: the target moved
        with the byte.  Under the old ``equ`` the displacement would have stayed
        put and the jump would have landed one byte short.
        """
        with tempfile.TemporaryDirectory() as d:
            _copy_source_tree(d)
            master = os.path.join(d, 'play.asm')
            original = _nasm_file(master, d)
            self.assertEqual(original[0x79a:0x79c], b'\x72\x06')  # jb +6 -> 0x07a2
            # Named by its code, not its address: find it by where play.asm
            # includes it.
            with open(master) as f:
                included = re.findall(r'%include "([^"]+)"\s*; 0x077b\b', f.read())
            self.assertEqual(len(included), 1, included)
            frag = os.path.join(d, included[0])
            with open(frag) as f:
                text = f.read()
            needle = '    jb short loc_07a2'
            self.assertIn(needle, text)
            with open(frag, 'w') as f:
                f.write(text.replace(needle, needle + '\n    db 0x90', 1))
            grown = _nasm_file(master, d)

        self.assertEqual(len(grown), len(original) + 1)
        # The branch itself did not move (the byte went in after it) ...
        self.assertEqual(grown[0x79a], original[0x79a])
        # ... and its displacement grew by exactly one, because the label it
        # names moved with the inserted byte.
        self.assertEqual(grown[0x79a:0x79c], b'\x72\x07')
        self.assertEqual(original[0x79a:0x79c], b'\x72\x06')
        # The instruction at the target is the same one, one byte later.  (Its
        # embedded ``mov word [0x0b93], ax`` operand grows too: that absolute
        # address is still a frozen ``data_`` immediate -- D7.2c-2.)
        self.assertEqual(original[0x7a2:0x7a6], b'\x2e\x88\x26\x93')
        self.assertEqual(grown[0x7a3:0x7a6], b'\x2e\x88\x26')
        self.assertEqual(grown[0x7a6:0x7a8], b'\x94\x0b')

    @unittest.skipUnless(_TREE.is_dir() and (_TREE / 'vga.asm').exists(),
                         'generated asm_DSAVANT tree not present')
    def test_driver_immediate_follows_an_inserted_byte(self):
        """D7.6b: a driver's named absolute immediate tracks the byte it names.

        ``vga``'s sidecar names the CS offset 0x0bda -- file byte 0x0ada, since
        the module is read to ``segment:0x100`` -- and its routines load it
        (``mov bx, data_0bda``) to walk a buffer with ``[cs:bx]``.  It used to
        stand as the frozen ``data_0bda equ 0x0bda``, so an edit above the byte
        left the operand put.  Bound as ``__zdata_0bda - IMAGE_BASE`` it moves
        with the byte: inserting one byte above the *first* consumer moves the
        byte (0x0ada -> 0x0adb) and every operand naming it (0x0bda -> 0x0bdb)
        -- the site above the insert keeps its address, the site below moves.
        """
        with tempfile.TemporaryDirectory() as d:
            _copy_source_tree(d)
            master = os.path.join(d, 'vga.asm')
            original = _nasm_file(master, d)
            self.assertEqual(original[0x8ff:0x902], b'\xbb\xda\x0b')
            self.assertEqual(original[0x456e:0x4571], b'\xbb\xda\x0b')

            frag = os.path.join(d, 'vga', 'asm_only', 'dos_read_file.asm')
            with open(frag) as f:
                text = f.read()
            needle = '    mov bx, data_0bda                ; 0x08ff\n'
            self.assertIn(needle, text)
            with open(frag, 'w') as f:
                f.write(text.replace(needle, '    nop\n' + needle, 1))
            grown = _nasm_file(master, d)

        self.assertEqual(len(grown), len(original) + 1)
        # The first consumer moved with the insert; its operand grew by one
        # because the byte it names moved too.
        self.assertEqual(grown[0x900:0x903], b'\xbb\xdb\x0b')
        # The consumer *below* the insert also grew, though nothing local to it
        # changed -- the operand is the named byte, not a frozen address.
        self.assertEqual(grown[0x456f:0x4572], b'\xbb\xdb\x0b')


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

    def test_corpus_targets_match_the_stored_words(self):
        seen = 0
        for binary in self._FILES:
            data = self._read(binary)
            for entry in per_binary(self.sidecar, binary)['data_pointers']:
                target = entry.get('target', '')
                if not target.startswith('dseg_'):
                    continue
                value = struct.unpack_from('<H', data, entry['offset'])[0]
                self.assertEqual(
                    value, int(target[len('dseg_'):], 16),
                    f'{binary}: word at {entry["offset"]:#x} is {value:#06x}, '
                    f'not {target}')
                seen += 1
        self.assertGreater(seen, 0, 'the seed corpus is empty')

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


@slow
class CommittedTreeBaselineTests(unittest.TestCase):
    @unittest.skipUnless(_TREE.is_dir(), 'generated asm_DSAVANT tree not present')
    def test_frozen_addr_only_decreases(self):
        totals = _scan_tree()
        for key, limit in BASELINE_TOTALS.items():
            self.assertLessEqual(
                totals[key], limit,
                f'frozen_addr.{key} rose to {totals[key]} (baseline {limit})',
            )


if __name__ == '__main__':
    unittest.main()
