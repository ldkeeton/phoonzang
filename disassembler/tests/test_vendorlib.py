"""A runtime linked from the vendor's library (``"lib": "c.lib"`` on the
``aztec`` band): the sidecar, the C names, where the fragments go, and the
project files that link it (:mod:`lib.vendorlib`)."""

import os
import tempfile
import unittest
from unittest import mock

from lib import vendorlib
from lib.aztec import build_sh, link, project, relink
from lib.aztec.compile import Func, vendor_names
from lib.aztec.objread import attach_locals, parse_obd
from lib.sidecar.bands import _validate_bands, runtime_library, runtime_objects
from lib.sidecar.errors import SidecarError
from lib.symtab import Kind, Source, Symbol
from tests.test_aztec_link import FOO_OBD, FOO_TAIL

AZTEC = {'name': 'aztec', 'start': '0220', 'end': '022f'}


class SidecarTest(unittest.TestCase):
    def test_lib_is_a_property_of_the_aztec_band_only(self):
        _validate_bands([dict(AZTEC, lib='c.lib')], 'bands')
        with self.assertRaisesRegex(SidecarError, 'only the aztec band'):
            _validate_bands([{'name': 'game', 'start': '0', 'end': '1',
                              'lib': 'c.lib'}], 'bands')
        with self.assertRaisesRegex(SidecarError, 'DOS library file name'):
            _validate_bands([dict(AZTEC, lib='runtime.library')], 'bands')

    def test_objects_need_a_lib_and_name_object_files(self):
        _validate_bands([dict(AZTEC, lib='c.lib', objects={'ovloader': 'ovld.o'})],
                        'bands')
        with self.assertRaisesRegex(SidecarError, 'only a band with a lib'):
            _validate_bands([dict(AZTEC, objects={'ovloader': 'ovld.o'})], 'bands')
        with self.assertRaisesRegex(SidecarError, 'DOS object file name'):
            _validate_bands([dict(AZTEC, lib='c.lib', objects={'ovloader': 'ovld'})],
                            'bands')

    def test_an_overlay_links_its_hosts_library(self):
        sidecar = {'binaries': {
            'ds': {'type': 'mz', 'bands': [dict(AZTEC, lib='C.LIB')]},
            'inst': {'type': 'mz', 'bands': [AZTEC]},
            'ov': {'type': 'aztec_overlay'},
            'drv': {'type': 'raw_drv'}}}
        self.assertEqual(
            {name: runtime_library(sidecar, name) for name in sidecar['binaries']},
            {'ds': 'c.lib', 'inst': None, 'ov': 'c.lib', 'drv': None})

    def test_an_overlay_takes_its_hosts_objects(self):
        band = dict(AZTEC, lib='c.lib', objects={'$ovbgn': 'OVBGN.O'})
        sidecar = {'binaries': {'ds': {'type': 'mz', 'bands': [band]},
                                'ov': {'type': 'aztec_overlay'}}}
        self.assertEqual(runtime_objects(sidecar, 'ov'), {'$ovbgn': 'ovbgn.o'})


class VendorNamesTest(unittest.TestCase):
    def test_inverts_the_generators_spelling(self):
        self.assertEqual(vendor_names('aztec_strcpy'), ('strcpy',))
        self.assertEqual(vendor_names('aztec_impl_ovld'), ('_ovld', '__ovld'))
        self.assertEqual(vendor_names('draw_box'), ())


def _calling(name):
    """``foo`` of :mod:`tests.test_aztec_link`, calling *name* at +0x18."""
    dump = attach_locals(parse_obd(FOO_OBD.replace('ds_loc_4462_', name + '_')),
                         b'\x00' + FOO_TAIL[1:])
    return Func('_foo', 'foo', 0, bytes(dump.code), dump.fixups, dump.locals)


def _index(library=None):
    runtime = Symbol('aztec_strcpy', kind=Kind.ROUTINE, source=Source.SIDECAR,
                     offset=0x5000, role='aztec')
    return relink.SymbolIndex({0x5000: runtime}, None, None,
                              {'bss_0cfa': 0xcfa, 'tbl': 0xd20},
                              library=library)


class LinkTest(unittest.TestCase):
    START = 0x4400

    def link(self, name, library=None):
        return relink.link('game_foo', self.START, _calling(name),
                           _index(library), b'')

    def test_the_vendors_name_calls_the_runtime_label(self):
        for library in (None, 'c.lib'):
            out = self.link('strcpy', library)
            disp = int.from_bytes(out.code[0x18:0x1a], 'little', signed=True)
            self.assertEqual(self.START + 0x1a + disp, 0x5000)
            # NASM still assembles the band, under the generator's label.
            self.assertEqual(out.refs[0x18].text, 'aztec_strcpy')

    def test_with_the_library_the_generators_name_is_refused(self):
        self.assertEqual(self.link('aztec_strcpy').refs[0x18].text,
                         'aztec_strcpy')
        with self.assertRaisesRegex(relink.RelinkError,
                                    "c.lib defines it as 'strcpy'"):
            self.link('aztec_strcpy', 'c.lib')

    def test_an_overlays_own_copy_needs_no_role(self):
        index = relink.SymbolIndex({0x5000: 'aztec_strcpy'}, None, None,
                                   {'bss_0cfa': 0xcfa, 'tbl': 0xd20},
                                   library='c.lib')
        out = relink.link('game_foo', self.START, _calling('strcpy'), index, b'')
        self.assertEqual(out.refs[0x18].text, 'aztec_strcpy')


FILES = {
    'ds.asm': '%include "ds/game/main.asm"\n%include "ds/aztec/aztec_ovloader.asm"\n'
              '%include "shared/aztec/aztec_strcpy.asm"\n'
              '%include "ds/data/STKSIZ.asm"\n%include "ds/data/titles.asm"\n'
              '    dw aztec_begin - IMAGE_BASE\n',
    'ov.asm': '%include "shared/ovr/aztec_ovbgn.asm"\n%include "ov/run.asm"\n'
              '%include "shared/aztec/aztec_strcpy.asm"\n',
    'inst.asm': '%include "inst/go.asm"\n%include "shared/aztec/aztec_strlen.asm"\n',
    'ds2.asm': '%include "shared/aztec/aztec_strlen.asm"\n',
    'ds/game/main.asm': 'main:\n    call aztec_csav\n    call aztec_strcpy\n'
                        '    call aztec_impl_read\n    call aztec_wait\n'
                        '    mov ax, __zaztec_MEMRY\n',
    'ds/aztec/aztec_ovloader.asm': 'aztec_ovloader:\n',
    'ds/aztec/aztec_ovloader.data.asm': 'y:\n',
    'shared/aztec/aztec_strcpy.asm': 'aztec_strcpy:\n',
    'shared/aztec/aztec_strlen.asm': 'aztec_strlen:\n',
    'ds/data/STKSIZ.asm': '__z_STKSIZ:\n    db 0\n__z_STKRED:\n',
    'ds/data/titles.asm': 'titles:\n', 'shared/ovr/aztec_ovbgn.asm': 'aztec_ovbgn:\n',
    'ov/run.asm': 'run:\n', 'inst/go.asm': 'go:\n    call aztec_strlen\n',
}

SPELLINGS = frozenset({'$csav', '$begin', '$ovbgn', '_read', 'strcpy', 'wait'})


class RelocateTest(unittest.TestCase):
    def relocate(self, libraries, files=None):
        files = dict(files or FILES)
        with mock.patch.object(vendorlib, '_vendor_data_names',
                               return_value=frozenset({'_STKSIZ', '_STKRED'})), \
                mock.patch.object(vendorlib, '_vendor_spellings',
                                  return_value=SPELLINGS):
            moved = vendorlib.relocate(files, libraries, 'v42b')
        return files, moved

    def test_the_runtime_goes_to_the_cache_and_the_masters_follow(self):
        files, moved = self.relocate({'ds': 'c.lib', 'ov': 'c.lib'})
        self.assertEqual(moved, {
            'ds/aztec/aztec_ovloader.asm': '.cache/c.lib/ds/ovloader.asm',
            'ds/aztec/aztec_ovloader.data.asm': '.cache/c.lib/ds/ovloader.data.asm',
            'shared/aztec/aztec_strcpy.asm': '.cache/c.lib/shared/strcpy.asm',
            'ds/data/STKSIZ.asm': '.cache/c.lib/ds/data/STKSIZ.asm',
            'shared/ovr/aztec_ovbgn.asm': '.cache/c.lib/shared/ovr/ovbgn.asm'})
        self.assertIn('%include ".cache/c.lib/shared/strcpy.asm"\n', files['ds.asm'])
        self.assertIn('%include "ds/data/titles.asm"\n', files['ds.asm'])
        self.assertEqual(files['.cache/c.lib/shared/strcpy.asm'], 'strcpy:\n')
        self.assertEqual(files['.cache/c.lib/shared/ovr/ovbgn.asm'], '$ovbgn:\n')
        self.assertNotIn('shared/aztec/aztec_strcpy.asm', files)

    def test_the_runtime_is_spelled_as_manx_spells_it(self):
        files, _ = self.relocate({'ds': 'c.lib', 'ov': 'c.lib'})
        # $ where Manx writes one or NASM reserves the word; none inside a
        # longer label.
        self.assertEqual(files['ds/game/main.asm'],
                         'main:\n    call $csav\n    call strcpy\n'
                         '    call _read\n    call $wait\n    mov ax, __zMEMRY\n')
        self.assertIn('    dw $begin - IMAGE_BASE\n', files['ds.asm'])

    def test_a_module_a_source_runtime_binary_links_stays(self):
        # strlen is linked by inst, which keeps its runtime as source.
        files, moved = self.relocate({'ds': 'c.lib', 'ds2': 'c.lib'})
        self.assertIn('shared/aztec/aztec_strlen.asm', files)
        self.assertNotIn('shared/aztec/aztec_strlen.asm', moved)
        self.assertEqual(files['shared/aztec/aztec_strlen.asm'], 'aztec_strlen:\n')
        self.assertEqual(files['inst/go.asm'], 'go:\n    call aztec_strlen\n')

    def test_a_vendor_name_the_game_already_defines_is_refused(self):
        clash = dict(FILES, **{'ds/game/main.asm': 'strcpy:\n    call aztec_strcpy\n'})
        with self.assertRaisesRegex(ValueError, "spelled 'strcpy'"):
            self.relocate({'ds': 'c.lib', 'ov': 'c.lib'}, clash)

    def test_no_library_moves_nothing(self):
        files, moved = self.relocate({})
        self.assertEqual((files, moved), (FILES, {}))

    def test_link_list_keeps_the_compilers_own_objects(self):
        self.assertEqual(vendorlib.link_list([
            'ds/game/main', '.cache/c.lib/ds/ovloader',
            '.cache/c.lib/shared/strcpy', 'ds/data/titles'],
            {'ovloader': 'ovld.o', '$ovbgn': 'ovbgn.o'}),
            (['ds/game/main', 'ovld.o', 'ds/data/titles'], ['ovld.o']))

    def test_prune_removes_what_the_build_did_not_write(self):
        with tempfile.TemporaryDirectory() as tree:
            for rel in ('.cache/c.lib/a.asm', '.cache/c.lib/old/b.asm', '.cache/build/x'):
                os.makedirs(os.path.dirname(os.path.join(tree, rel)), exist_ok=True)
                open(os.path.join(tree, rel), 'w').close()
            vendorlib.prune(tree, {'.cache/c.lib/a.asm': ''}, {'ds': 'c.lib'})
            self.assertTrue(os.path.exists(os.path.join(tree, '.cache/c.lib/a.asm')))
            self.assertFalse(os.path.exists(os.path.join(tree, '.cache/c.lib/old')))
            self.assertTrue(os.path.exists(os.path.join(tree, '.cache/build/x')))


class ProjectFilesTest(unittest.TestCase):
    BINARIES = {'r': {'type': 'mz', 'bands': [dict(
                    AZTEC, lib='c.lib',
                    objects={'ovloader': 'ovld.o', '$ovbgn': 'ovbgn.o'})]},
                'o': {'type': 'aztec_overlay'}}
    FILES = {'r.asm': '%include "r/main.asm"\n'
                      '%include ".cache/c.lib/r/ovloader.asm"\n'
                      '%include ".cache/c.lib/shared/strcpy.asm"\n',
             'o.asm': '%include ".cache/c.lib/shared/ovr/ovbgn.asm"\n'
                      '%include "o/run.asm"\n'}
    FLAGS = project.Flags(c=['-n'], asm=['-l'], binary=lambda name: ['-n'],
                          module=lambda stem, name: ['-n'])

    def out(self, **kw):
        return project.project_files(self.BINARIES, 'r', self.FILES, **kw)

    def test_lnk_names_the_compilers_objects_in_place_of_the_runtime(self):
        out = self.out()
        self.assertEqual(project.parse_lnk(out['r.lnk']), ['r/main', 'ovld.o'])
        self.assertEqual(project.parse_lnk(out['o.lnk']), ['ovbgn.o', 'o/run'])

    def test_ln_links_the_library_after_the_hosts_symbols(self):
        make = self.out()['makefile']
        self.assertIn('\tln -R -o r.exe -f r.lnk c.lib\n', make)
        self.assertIn('\tln -o o.ovr -f o.lnk r.rsm c.lib\n', make)
        self.assertEqual(project.parse_makefile(make), [
            project.Target('r', 'r.exe', ['-R'], 'r.lnk', None, None, ('c.lib',)),
            project.Target('o', 'o.ovr', [], 'o.lnk', 'r', None, ('c.lib',))])

    def test_build_sh_links_the_library_and_compiles_no_runtime(self):
        compiler = build_sh.Compiler('me/compilers', 'main', 'Manx Aztec C86 v42b')
        script = self.out(flags=self.FLAGS, compiler=compiler)['build.sh']
        self.assertIn("declare -A OBJECTS=(\n    [r]='ovld.o'\n    [o]='ovbgn.o'\n)",
                      script)
        self.assertIn("declare -A LIBS=(\n    [r]='c.lib'\n)", script)
        self.assertIn("LIBDIRS=()", script)
        self.assertNotIn('aztec_', script.split('set -u', 1)[0].split('BINARIES=(')[1])

    def test_a_compiler_object_is_a_module_without_a_source(self):
        with tempfile.TemporaryDirectory() as tree:
            for rel, text in self.out().items():
                os.makedirs(os.path.dirname(os.path.join(tree, rel)) or tree,
                            exist_ok=True)
                with open(os.path.join(tree, rel), 'w') as f:
                    f.write(text)
            os.makedirs(os.path.join(tree, 'r'))
            open(os.path.join(tree, 'r', 'main.c'), 'w').close()
            target = project.load_targets(tree)[0]
            found, missing = project.modules(tree, target)
        self.assertEqual(found, [project.Module('main', 'r/main.c', 'c'),
                                 project.Module('ovld.o', 'ovld.o', 'obj')])
        self.assertEqual(missing, [])

    def test_the_link_command_takes_the_library_from_the_compiler(self):
        target = project.Target('o', 'o.ovr', [], 'o.lnk', 'r', None, ('c.lib',))
        self.assertEqual(link.ln_line(target, 'LINK.OVR', 'ROOT.RSM'),
                         'ln -o LINK.OVR -f LINK.RSP ROOT.RSM C:\\LIB\\C.LIB > LINK.LOG')


if __name__ == '__main__':
    unittest.main()
