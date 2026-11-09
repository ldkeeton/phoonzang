"""``make link``: reading the project file, and how LN's errors are sorted.  The logs
are real ``ln``/``cnm`` output, so these run without DOSBox."""

import os
import tempfile
import unittest

from lib.autogen import is_generated
from lib.aztec import build_sh, link, linkorder, project
from lib.compare import render
from lib.sidecar.errors import SidecarError


def _write(root, path, text=''):
    full = os.path.join(root, path)
    os.makedirs(os.path.dirname(full), exist_ok=True)
    with open(full, 'w') as f:
        f.write(text)


MAKEFILE = """# auto-generated
all: r.exe o.ovr d.drv

r.exe: r.lnk
\tln -R -o r.exe -f r.lnk

o.ovr: o.lnk r.rsm
\tln -o o.ovr -f o.lnk r.rsm

d.drv: d.lnk
\tln -o d.drv -f d.lnk
"""


class GenerateTest(unittest.TestCase):
    BINARIES = {'o': {'type': 'aztec_overlay'}, 'r': {'type': 'mz'},
                'd': {'type': 'raw_drv'}}
    FILES = {'r.asm': '%include "include/s.inc"\n%include "r/b.asm"  ; 0x1\n'
                      '%include "shared/a.asm"\n',
             'o.asm': '%include "o/x.asm"\n%include "shared/a.asm"\n',
             'd.asm': '%include "d/y.asm"\n%include "d/y.asm"\n'}

    def test_project_files(self):
        out = project.project_files(self.BINARIES, 'r', self.FILES)
        self.assertEqual(out['r.lnk'], '# auto-generated\nr/b\nshared/a\n')
        self.assertEqual(out['d.lnk'], '# auto-generated\nd/y\n')
        self.assertEqual(project.parse_makefile(out['makefile']), [
            project.Target('r', 'r.exe', ['-R'], 'r.lnk', None),
            project.Target('o', 'o.ovr', [], 'o.lnk', 'r'),
            project.Target('d', 'd.com', [], 'd.lnk', None)])

    def test_marked_generated_and_the_marker_is_no_module(self):
        out = project.project_files(self.BINARIES, 'r', self.FILES)
        self.assertEqual(project.parse_lnk(out['r.lnk']), ['r/b', 'shared/a'])
        with tempfile.TemporaryDirectory() as tree:
            for rel, text in out.items():
                _write(tree, rel, text)
                self.assertTrue(is_generated(os.path.join(tree, rel)))

    def test_desc_is_a_comment_above_the_rule(self):
        out = project.project_files({'r': {'type': 'mz', 'desc': 'the root'}},
                                    None, {'r.asm': '%include "r/b.asm"\n'})
        self.assertIn('# the root\nr.exe: r.lnk\n', out['makefile'])
        self.assertEqual(project.parse_makefile(out['makefile']),
                         [project.Target('r', 'r.exe', [], 'r.lnk', None)])

    def test_long_desc_wraps_at_80(self):
        desc = ' '.join(['word'] * 40)
        out = project.project_files({'r': {'type': 'mz', 'desc': desc}},
                                    None, {'r.asm': '%include "r/b.asm"\n'})
        comments = [l for l in out['makefile'].splitlines()
                    if l.startswith('# ') and 'word' in l]
        self.assertGreater(len(comments), 1)
        self.assertTrue(all(len(l) <= 80 for l in comments))
        self.assertEqual(' '.join(l[2:] for l in comments), desc)

    FLAGS = project.Flags(
        c=['-n', '+b'], asm=['-dMODEL=0'],
        binary=lambda name: ['-n'] if name == 'd' else ['-n', '+b'],
        module=lambda stem, name: (['-n', '-Z1'] if stem == 'x'
                                   else ['-n'] if stem == 'a' or name == 'd'
                                   else ['-n', '+b']))

    def test_compile_rules_and_flags_in_the_makefile(self):
        out = project.project_files(self.BINARIES, 'r', self.FILES,
                                    flags=self.FLAGS)
        make = out['makefile']
        for line in ('CFLAGS = -n +b', 'AFLAGS = -dMODEL=0',
                     'export INCLUDE = include', '.SUFFIXES: .o .s .c',
                     '.s.o:\n\tas $(AFLAGS) -o $@ $<',
                     '.c.o:\n\tcc -B $(CFLAGS) -o $@ $<', 'r.rsm: r.exe',
                     'd.com: CFLAGS = -n', 'o/x.o: CFLAGS = -n -Z1',
                     'shared/a.o: CFLAGS = -n'):
            self.assertIn(line + '\n', make)
        parsed = project.parse_project(make)
        self.assertEqual([t.binary for t in parsed.targets], ['r', 'o', 'd'])
        self.assertEqual(parsed.macros['CFLAGS'], '-n +b')
        self.assertEqual(parsed.sources, project.SOURCE_EXTS)
        self.assertEqual(parsed.recipes['.c'], 'cc -B $(CFLAGS) -o $@ $<')
        self.assertEqual(parsed.scoped['o/x.o'], {'CFLAGS': '-n -Z1'})
        self.assertNotIn('build.sh', out)

    def test_build_sh_downloads_the_sidecars_one_compiler_folder(self):
        compiler = build_sh.Compiler('me/compilers', 'main', 'Manx Aztec C86 v42b')
        out = project.project_scripts(self.BINARIES, 'r', self.FILES, compiler,
                                      self.FLAGS, game='../apps/G')
        script = out['build.sh']
        # make buildsh owns it: no generated marker for make build to prune.
        self.assertTrue(script.startswith('#!/usr/bin/env bash\n# Build '))
        for line in ("REPO='me/compilers'", "REF='main'",
                     "FOLDER='Manx Aztec C86 v42b'",
                     'AZTEC=$here/dos_compilers/$FOLDER'):
            self.assertIn(line + '\n', script)
        # The game's own files come from the app directory, as make build copies them.
        self.assertIn('GAME=${GAME:-$here/../apps/G}\n', script)
        self.assertIn('\ncopy_game\n', script)
        for placeholder in ('@REPO@', '@REF@', '@FOLDER@', '@GAME@'):
            self.assertNotIn(placeholder, script)

    def test_build_sh_says_what_it_builds_without_makefile_or_lnk(self):
        compiler = build_sh.Compiler('me/compilers', 'main', 'Manx Aztec C86 v42b')
        out = project.project_scripts(self.BINARIES, 'r', self.FILES, compiler,
                                      self.FLAGS)
        script = out['build.sh']
        for line in ("CFLAGS='-n +b'", "AFLAGS='-dMODEL=0'", "LIBDIRS=('shared')",
                     "    'r r.exe r.exe - -R'", "    'o o.ovr o.ovr r'",
                     # ln writes no header only for .com, so a driver is renamed.
                     "    'd d.com d.com -'",
                     "    [d]='d/y'",          # a driver's first module stays first
                     "    [d]='-n'",           # its binary's own default
                     "    [o/x]='-n -Z1'",     # a module's own flags
                     "    [shared/a]='-n'"):
            self.assertIn(line + '\n', script)
        self.assertNotIn('@CONFIG@', script)
        # It never reads the makefile or a .lnk.
        self.assertNotIn('< "$lnk"', script)
        self.assertNotIn('done < makefile', script)

    def test_build_sh_refuses_a_shared_module_compiled_two_ways(self):
        # SHARED.LIB holds one object per module: lib.shared keeps such a
        # module in each binary's own directory instead.
        compiler = build_sh.Compiler('me/compilers', 'main', 'Manx Aztec C86 v42b')
        # Each binary compiles shared/a with its own default (STKSIZ in ds and
        # vinstall): the makefile needs no line for it, but one library can't.
        default = lambda name: ['-n'] if name in ('d', 'o') else ['-n', '+b']
        flags = self.FLAGS._replace(binary=default, module=lambda stem, name: (
            ['-n', '-Z1'] if stem == 'x' else default(name)))
        with self.assertRaisesRegex(ValueError, 'shared/a: compiled with different'):
            project.project_scripts(self.BINARIES, 'r', self.FILES, compiler,
                                    flags)

    def test_build_sh_gives_a_shared_module_the_flags_all_its_binaries_use(self):
        # d alone compiles with -n by default; a module only it and o share
        # takes -n from no override of its own, and SHARED.LIB must too.
        compiler = build_sh.Compiler('me/compilers', 'main', 'Manx Aztec C86 v42b')
        files = dict(self.FILES, **{'d.asm': '%include "d/y.asm"\n%include "shared/z.asm"\n',
                                    'o.asm': '%include "o/x.asm"\n%include "shared/z.asm"\n'})
        binaries = dict(self.BINARIES, o={'type': 'aztec_overlay'})
        flags = self.FLAGS._replace(
            binary=lambda name: ['-n'] if name in ('d', 'o') else ['-n', '+b'],
            module=lambda stem, name: ['-n'] if name in ('d', 'o') else ['-n', '+b'])
        script = project.project_scripts(binaries, 'r', files, compiler,
                                         flags)['build.sh']
        self.assertIn("    [shared/z]='-n'\n", script)

    def test_run_sh_launches_the_hosts_program_from_build_out_new(self):
        compiler = build_sh.Compiler('me/compilers', 'main', 'Manx Aztec C86 v42b')
        out = project.project_scripts(self.BINARIES, 'r', self.FILES, compiler,
                                      self.FLAGS, game='../apps/Game')
        run = out['run.sh']
        self.assertTrue(run.startswith('#!/usr/bin/env bash\n# Play '))
        self.assertIn("EXE='r.exe'\n", run)
        # Installed where the game's data says: C:\GAME is a link to build_out.
        self.assertIn("FOLDER='GAME'\n", run)
        self.assertIn('ln -sfn ../../../build_out_new "$drive/$FOLDER"', run)
        self.assertIn('-c "cd \\\\$FOLDER"', run)
        for placeholder in ('@EXE@', '@FOLDER@'):
            self.assertNotIn(placeholder, run)

    def test_rules_make_the_sidecars_file_names(self):
        binaries = {'o': {'type': 'aztec_overlay', 'file': 'O.OVR'},
                    'r': {'type': 'mz', 'file': 'R.EXE'},
                    'd': {'type': 'raw_drv', 'file': 'D.DRV'}}
        make = project.project_files(binaries, 'r', self.FILES)['makefile']
        for line in ('all: R.EXE O.OVR D.DRV', 'R.EXE: r.lnk\n\tln -R -o R.EXE -f r.lnk',
                     'r.rsm: R.EXE', 'O.OVR: o.lnk r.rsm\n\tln -o O.OVR -f o.lnk r.rsm',
                     # ln writes no header only for .com, so a driver is renamed.
                     'D.DRV: d.lnk\n\tln -o D.COM -f d.lnk\n\tren D.COM D.DRV'):
            self.assertIn(line + '\n', make)
        self.assertEqual(project.parse_makefile(make), [
            project.Target('r', 'R.EXE', ['-R'], 'r.lnk', None),
            project.Target('o', 'O.OVR', [], 'o.lnk', 'r'),
            project.Target('d', 'D.COM', [], 'd.lnk', None, 'D.DRV')])

    def test_a_ren_must_rename_what_ln_wrote(self):
        with self.assertRaisesRegex(ValueError, 'expected ren'):
            project.parse_makefile('D.DRV: d.lnk\n\tln -o D.COM -f d.lnk\n'
                                   '\tren X.COM D.DRV\n')

    def test_without_flags_no_compile_rules(self):
        out = project.project_files(self.BINARIES, 'r', self.FILES)
        self.assertNotIn('CFLAGS', out['makefile'])
        self.assertNotIn('build.sh', out)
        self.assertNotIn('run.sh', out)

    def test_an_object_needing_two_flag_sets_is_an_error(self):
        flags = self.FLAGS._replace(
            module=lambda stem, name: ['-Z1'] if (stem, name) == ('a', 'r')
            else ['-Z2'] if stem == 'a' else ['-n', '+b'],
            binary=lambda name: ['-n', '+b'])
        with self.assertRaisesRegex(ValueError, 'shared/a: compiled with'):
            project.project_files(self.BINARIES, 'r', self.FILES, flags=flags)

    def test_suffix_order_picks_the_source(self):
        text = ('.SUFFIXES:\n.SUFFIXES: .o .c .s\n.c.o:\n\tcc $<\n.s.o:\n\tas $<\n'
                'r.exe: r.lnk\n\tln -o r.exe -f r.lnk\n')
        self.assertEqual(project.parse_project(text).sources,
                         (('.c', 'c'), ('.s', 'asm')))

    def test_no_overlays_means_no_rsm(self):
        out = project.project_files({'r': {'type': 'mz'}}, None,
                                    {'r.asm': '%include "r/b.asm"\n'})
        self.assertEqual(project.parse_makefile(out['makefile']),
                         [project.Target('r', 'r.exe', [], 'r.lnk', None)])


class LinkOrderTest(unittest.TestCase):
    #: DS: table 'TT', then 'abc' from c/one and its word pad, 'de' from
    #: c/two, then a late table.
    DSEG = b'\0\0TTabc\0deZZ'
    INFO = {'dseg': DSEG.hex(),
            'starts': {'table': 2, 'strings': 4, 'late': 10},
            'sources': {'c/one': {'data': b'abc'.hex(), 'relocations': []},
                        'c/two': {'data': b'de'.hex(), 'relocations': []}}}
    LISTED = ['c/zero', 'c/one', 'c/two', 'b/data/table', 'b/data/strings',
              'b/data/late']
    #: The sidecar's ``emits``: what INFO's sources emit.
    EMITTED = {'c/one': (4, 7), 'c/two': (8, 10)}
    ORDER = ['c/zero', 'b/data/table', 'c/one', 'c/two', 'b/data/late']

    def test_no_owned_data_keeps_the_listing(self):
        self.assertEqual(linkorder.arrange(['a', 'b/data/t', 'c'], None),
                         ['a', 'b/data/t', 'c'])

    def test_emitted_dropped_and_tables_placed(self):
        self.assertEqual(
            linkorder.arrange(self.LISTED, self.INFO, self.EMITTED), self.ORDER)

    def test_order_needs_no_source(self):
        info = {k: v for k, v in self.INFO.items() if k not in ('dseg', 'sources')}
        self.assertEqual(
            linkorder.arrange(self.LISTED, info, self.EMITTED), self.ORDER)

    def test_without_emits_nothing_drops(self):
        self.assertEqual(linkorder.arrange(self.LISTED, self.INFO, {}),
                         self.LISTED)

    def test_check_agrees(self):
        self.assertEqual(
            linkorder.check(self.LISTED, self.INFO, self.EMITTED), [])

    def test_check_reports_a_wrong_emits(self):
        lines = linkorder.check(self.LISTED, self.INFO,
                                {'c/one': (4, 6), 'c/two': (8, 10)})
        self.assertEqual(len(lines), 1)
        self.assertIn('c/one: its source emits DS 0x0004-0x0007', lines[0])

    def test_module_data_starts_on_a_word(self):
        # All-relocation data fits anywhere; ln still puts it on a word.
        sources = {'c/one': {'data': b'abc'.hex(), 'relocations': []},
                   'c/two': {'data': '0000', 'relocations': [[0, 2]]}}
        self.assertEqual(linkorder.source_spans(['c/one', 'c/two'], sources,
                                                b'abc\0\0\0'),
                         {'c/one': (0, 3), 'c/two': (4, 6)})

    def test_listed_starts_places_an_unlabelled_fragment(self):
        listing = ('%include "b/data/table.asm"  ; 0x0020\n'
                   '%include "b/data/bare.asm"   ; 0x0128\n'
                   '%include "b/data/strings.asm" ; 0x0104\n')
        info = linkorder.listed_starts(
            listing, {'origin': 0x100, 'starts': {'strings': 4}})
        # Code-segment data (before the DS) has no DS start; a label wins.
        self.assertEqual(info['starts'], {'bare': 0x28, 'strings': 4})

    def test_check_skips_a_module_without_source(self):
        info = dict(self.INFO, sources={})
        self.assertEqual(linkorder.check(self.LISTED, info, self.EMITTED), [])

    def test_owners_by_listing_offset(self):
        listing = ('%include "c/one.asm"   ; 0x0100\n'
                   '%include "c/two.asm"   ; 0x0180\n')
        self.assertEqual(linkorder.owners(listing, {0x180: (7, 9)}),
                         {'c/two': (7, 9)})
        with self.assertRaises(ValueError):
            linkorder.owners(listing, {0x150: (7, 9)})

    def test_a_data_source_is_stepped_over(self):
        dseg = b'ab\0\0' + bytes(4)
        sources = {'c/one': {'data': b'ab'.hex(), 'relocations': []},
                   'b/data/low': {'data': b'\0\0'.hex(), 'relocations': []},
                   'c/zeros': {'data': bytes(4).hex(), 'relocations': []}}
        self.assertEqual(
            linkorder.source_spans(['c/one', 'c/zeros', 'b/data/low'], sources,
                                   dseg, {'b/data/low': 2}),
            {'c/one': (0, 2), 'c/zeros': (4, 8)})

    def test_zeros_after_a_data_module_without_a_source(self):
        # vmele: every C module's data is in a data module, and ovbgn's own
        # data is all zeros after the last of them.
        dseg = b'VM1.$$$\0' + bytes(4)
        sources = {'c/zeros': {'data': bytes(4).hex(), 'relocations': []}}
        self.assertEqual(
            linkorder.source_spans(['b/data/name', 'c/zeros'], sources,
                                   dseg, {'b/data/name': 0}),
            {'c/zeros': (8, 12)})

    def test_zeros_after_a_zeroed_data_module_without_a_source(self):
        # vmexe: empty_text_fragment is two zero bytes just before ovbgn's
        # zeros; without its size ovbgn would be placed on top of it.
        dseg = bytes(12)
        sources = {'c/zeros': {'data': bytes(10).hex(), 'relocations': []}}
        args = (['b/data/empty', 'c/zeros'], sources, dseg, {'b/data/empty': 0})
        self.assertEqual(linkorder.source_spans(*args), {'c/zeros': (0, 10)})
        self.assertEqual(linkorder.source_spans(*args, {'empty': 2}),
                         {'c/zeros': (2, 12)})

    def test_fragment_size(self):
        text = ("; auto-generated\n__zname:\n    db 'a,b', 0\n"
                "    dw 0x1234, label\n    times 3 db 0\n    resb 0x0004\n")
        self.assertEqual(linkorder.fragment_size(text), 4 + 4 + 3 + 4)
        self.assertIsNone(linkorder.fragment_size('    incbin "x"\n'))

    def test_flags_go_on_the_ln_line(self):
        binaries = {'r': {'type': 'mz', 'link': {'flags': ['+C', 'af00']}}}
        out = project.project_files(binaries, None,
                                    {'r.asm': '%include "r/b.asm"\n'})
        self.assertEqual(project.parse_makefile(out['makefile']),
                         [project.Target('r', 'r.exe', ['+C', 'af00'], 'r.lnk', None)])


class MakefileTest(unittest.TestCase):
    def test_targets(self):
        self.assertEqual(project.parse_makefile(MAKEFILE), [
            project.Target('r', 'r.exe', ['-R'], 'r.lnk', None),
            project.Target('o', 'o.ovr', [], 'o.lnk', 'r'),
            project.Target('d', 'd.drv', [], 'd.lnk', None)])

    def test_rejects(self):
        for text in ('x.exe: x.lnk\n',
                     'x.exe: x.lnk\n\tcc x.c\n',
                     'x.exe: x.lnk\n\tln -o y.exe -f x.lnk\n',
                     'x.ovr: x.lnk r.rsm\n\tln -o x.ovr -f x.lnk r.rsm\n',
                     '\tln -o x.exe -f x.lnk\n',
                     'nonsense\n'):
            with self.assertRaises(ValueError, msg=text):
                project.parse_makefile(text)

    def test_ln_line(self):
        target = project.Target('r', 'r.exe', ['-R'], 'r.lnk', None)
        self.assertEqual(link.ln_line(target, 'LINK.EXE'),
                         'ln -R -o LINK.EXE -f LINK.RSP > LINK.LOG')
        target = project.Target('o', 'o.ovr', [], 'o.lnk', 'r')
        self.assertEqual(link.ln_line(target, 'LINK.OVR', 'ROOT.RSM'),
                         'ln -o LINK.OVR -f LINK.RSP ROOT.RSM > LINK.LOG')


class ModulesTest(unittest.TestCase):
    def setUp(self):
        tmp = tempfile.TemporaryDirectory()
        self.addCleanup(tmp.cleanup)
        self.tree = tmp.name
        _write(self.tree, 'makefile', MAKEFILE)
        _write(self.tree, 'r.lnk', '# order matters\nr/two\nshared/one\nr/gen\n')
        _write(self.tree, 'o.lnk', 'shared/one\n')
        _write(self.tree, 'd.lnk', '')
        _write(self.tree, 'r/two.c')
        _write(self.tree, 'shared/one.s')
        _write(self.tree, 'shared/one.c')
        _write(self.tree, 'r/gen.asm')
        self.targets = project.load_targets(self.tree)

    def test_keeps_order_prefers_s_and_never_uses_asm(self):
        found, missing = project.modules(self.tree, self.targets[0])
        self.assertEqual([(m.path, m.kind) for m in found],
                         [('r/two.c', 'c'), ('shared/one.s', 'asm')])
        self.assertEqual(missing, ['r/gen'])

    def test_unlisted_sources(self):
        self.assertEqual(project.unlisted(self.tree, self.targets), [])
        _write(self.tree, 'r/stray.c')
        _write(self.tree, 'r/ignored.asm')
        self.assertEqual(project.unlisted(self.tree, self.targets), ['r/stray.c'])

    def test_no_makefile(self):
        os.remove(os.path.join(self.tree, 'makefile'))
        with self.assertRaises(ValueError):
            project.load_targets(self.tree)


class ParseTest(unittest.TestCase):
    def test_log(self):
        log = ('Aztec C Linker Version  v4.10d 7-22-88\n'
               'ERROR: Undefined symbol: music_enabled\n'
               'ERROR: Undefined symbol: music_enabled\n'
               'foo_ multiply defined\n')
        self.assertEqual(link.parse_log(log), (['music_enabled'], ['foo_']))

    def test_publics_skip_undefined_and_local(self):
        text = ('X.O: code: 147 data: 0 udata: 0  total: 147 (0x93)\n'
                '  0000 Un music_enabled  0000 Pg music_start_  0038 pg _hw1\n')
        self.assertEqual(link.parse_publics(text), ['music_start_'])

    def test_externals(self):
        text = '  0000 Un music_enabled  0000 Pg music_start_  0038 pg _hw1\n'
        self.assertEqual(link.parse_externals(text), ['music_enabled'])

    def test_other_linker_output(self):
        log = ('Aztec C Linker Version  v4.10d 7-22-88\n'
               'ERROR: Undefined symbol: music_enabled\n'
               'foo_ multiply defined\n'
               "file: X.O Can't open.\n"
               'Base: 0100  Code: 1b39  Data: 0000  Udata: 0000  Total: 1b3c\n'
               'Code: 0048  Data: 000a  Udata: 0000  Total: 0052\n')
        self.assertEqual(link.parse_other(log), ["file: X.O Can't open."])
        self.assertEqual(link.parse_other(''), ['ln wrote no log'])

    def test_source_errors(self):
        log = 'Aztec 8086 Assembler\nERROR:X.ASM:12: bad operand\n1 errors\n'
        self.assertEqual(link.source_errors(log), ['ERROR:X.ASM:12: bad operand'])
        self.assertEqual(link.source_errors('Out of memory\n'), ['Out of memory'])
        self.assertEqual(link.source_errors(''), ['no object and no log'])

    def test_asm_labels(self):
        text = ('\tpublic\tfoo_\nfoo_ proc near\nbaz_\tdw\t0\nqux:\n'
                'off\tequ\tfoo_+1\n\textrn\tother_:word\n')
        self.assertEqual(link.asm_labels(text), {'foo', 'baz', 'qux', 'off'})


class LnComJumpTest(unittest.TestCase):
    JUMP = b'\xe9\x00\x00'

    def _records(self):
        return [{'type': 'label', 'text': 'a:', 'name': 'a', 'offset': 0},
                {'type': 'mnem', 'text': 'jmp near b', 'offset': 0, 'size': 3},
                {'type': 'label', 'text': 'b:', 'name': 'b', 'offset': 3},
                {'type': 'mnem', 'text': 'ret', 'offset': 3, 'size': 1}]

    def test_replaces_the_routine_with_the_macro(self):
        labels = {0: 'a', 3: 'b'}
        records, ranges = render.use_ln_com_jump(
            self._records(), [(0, 3, 'a'), (3, 4, 'b')], labels, self.JUMP + b'\xc3')
        self.assertEqual(records[0], {'type': 'include', 'text': render.LN_COM_JUMP,
                                      'offset': 0})
        self.assertEqual([r.get('name') or r['text'] for r in records[1:]], ['b', 'ret'])
        self.assertEqual(ranges, [(3, 4, 'b')])
        self.assertEqual(labels, {3: 'b'})

    def test_master_defines_the_macro(self):
        text = render.nasm_macros_text()
        self.assertEqual(text.split('\n', 1)[0], '; auto-generated')
        self.assertIn(f'%macro {render.LN_COM_JUMP} 0', text)

    def test_macro_is_no_module(self):
        files = {'d.asm': f'{render.LN_COM_JUMP}   ; 0x0000\n%include "d/y.asm"\n'}
        out = project.project_files({'d': {'type': 'raw_drv'}}, None, files)
        self.assertEqual(project.parse_lnk(out['d.lnk']), ['d/y'])

    def test_rejects_an_image_without_the_jump(self):
        with self.assertRaises(SidecarError):
            render.use_ln_com_jump([], [], {}, b'\xe9\x01\x00')

    def test_rejects_a_routine_running_past_the_jump(self):
        with self.assertRaises(SidecarError):
            render.use_ln_com_jump([], [(0, 4, 'a')], {}, self.JUMP + b'\xc3')


class LnDsZeroTest(unittest.TestCase):
    def test_cuts_the_word_off_the_data(self):
        block = {'type': 'data_block', 'start': 4, 'end': 8}
        records = render._use_ln_ds_zero([block], b'\xc3\0\0\0\0\0TT', 4)
        self.assertEqual(records, [
            {'type': 'include', 'text': render.LN_DS_ZERO, 'offset': 4},
            {**block, 'start': 6}])

    def test_master_defines_the_macro(self):
        self.assertIn(f'%macro {render.LN_DS_ZERO} 0', render.nasm_macros_text())

    def test_rejects_a_data_segment_without_the_word(self):
        with self.assertRaises(SidecarError):
            render._use_ln_ds_zero([], b'\x01\0', 0)


class CompareBytesTest(unittest.TestCase):
    def test_identical(self):
        self.assertIsNone(link.compare_bytes(b'abc', b'abc'))

    def test_differing_byte(self):
        self.assertEqual(link.compare_bytes(b'abXd', b'abcZ'),
                         '4 bytes, original 4; 2 differ in the shared 4; first at 0x2')

    def test_length_alone_is_a_difference(self):
        self.assertEqual(link.compare_bytes(b'ab', b'abc'),
                         '2 bytes, original 3; 0 differ in the shared 2; first at 0x2')


class ClassifyTest(unittest.TestCase):
    def _sort(self, name, publics=None, labels=None):
        result = link.classify([name], [], publics or {}, labels or {})
        return {k: v for k, v in result.items() if v}

    def test_spelling_either_way(self):
        self.assertEqual(self._sort('f_', {'f': 'a.s'}),
                         {'spelling': [('f_', 'f in a.s')]})
        self.assertEqual(self._sort('f', {'f_': 'a.s'}),
                         {'spelling': [('f', 'f_ in a.s')]})

    def test_name_nothing_defines_is_undefined(self):
        self.assertEqual(self._sort('gone_'), {'undefined': [('gone_', '')]})

    def test_undefined_names_its_users(self):
        result = link.classify(['gone_'], [], {}, {},
                               users={'gone_': ['a.s', 'b.c']})
        self.assertEqual(result['undefined'], [('gone_', 'used by a.s, b.c')])

    def test_label_not_exported(self):
        self.assertEqual(self._sort('x', labels={'x': 'p/x.s'}),
                         {'not_public': [('x', 'p/x.s')]})
        self.assertEqual(self._sort('$csav', labels={'csav': 'a/c.s'}),
                         {'not_public': [('$csav', 'a/c.s')]})

    def test_the_rest(self):
        result = link.classify([], ['f_'], {'f_': 'a.s'}, {},
                               {'b.s': ['E1', 'E2']}, ['E3'], ['p/gen'])
        self.assertEqual(result['multiple'], [('f_', 'a.s')])
        self.assertEqual(result['failed'], [('b.s', 'E1'), ('b.s', 'E2')])
        self.assertEqual(result['linker'], [('E3', '')])
        self.assertEqual(result['no_source'], [('p/gen', '')])


if __name__ == '__main__':
    unittest.main()
