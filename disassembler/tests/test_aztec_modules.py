"""Placing vendor object modules in the image (:mod:`lib.aztec.modules`).

The linker places an object as one unit, so a module is one fragment with one
``.c``: ``mkdir.asm``'s three entry points share a body and a file.
"""

import unittest
from unittest import mock

from lib.aztec import modules
from lib.aztec.compile import Func
from tests.syms import routine


def _entry(file, cname):
    return {'source_version': 'v42b', 'file': file, 'compiler': 'v42b',
            'includes': 'v42b', 'cname': cname}


def _whole(code, members):
    func = Func('m', 'm', 0, code, [])
    func.members = members
    return func


class ModuleSpanTest(unittest.TestCase):
    #: mkdir.asm: mkdir (23 bytes), rmdir (7), chdir (7).
    CODE = bytes(range(1, 38))
    BASE = 0x100

    def _image(self, code=None):
        image = bytearray(0x200)
        image[self.BASE:self.BASE + 37] = code or self.CODE
        return bytes(image)

    def _spans(self, image, label_map, entries, whole=None):
        whole = whole or _whole(self.CODE, {'mkdir': 0, 'rmdir': 23,
                                            'chdir': 30})
        with mock.patch.object(modules.cache, 'seed_source_text',
                               return_value='seed'), \
                mock.patch.object(modules.cache, 'compile_source',
                                  return_value=whole):
            return modules.module_spans('P', 'bin', image, label_map, entries)

    def _labels(self, **offsets):
        return {self.BASE + off: routine(f'aztec_{name}', self.BASE + off)
                for name, off in offsets.items()}

    def _entries(self, *names):
        return {f'aztec_{name}': _entry('mkdir.asm', name) for name in names}

    def test_a_module_is_one_span_named_after_its_source(self):
        spans, misses = self._spans(
            self._image(), self._labels(mkdir=0, rmdir=23, chdir=30),
            self._entries('mkdir', 'rmdir', 'chdir'))
        self.assertEqual(misses, {})
        span = spans['aztec_mkdir']
        self.assertEqual(span.root, 'aztec_mkdir')
        self.assertEqual((span.start, span.length, span.lead),
                         (self.BASE, 37, 0))
        self.assertEqual(sorted(span.members),
                         ['aztec_chdir', 'aztec_mkdir', 'aztec_rmdir'])
        self.assertEqual(span.keys['chdir'], 'aztec_chdir')

    def test_a_sibling_the_mux_did_not_list_is_still_a_member(self):
        # Only chdir was recovered; its neighbours are labelled in the image.
        spans, _ = self._spans(
            self._image(), self._labels(mkdir=0, rmdir=23, chdir=30),
            self._entries('chdir'))
        self.assertEqual(list(spans), ['aztec_mkdir'])

    def test_a_module_that_differs_from_the_image_stays_assembly(self):
        image = bytearray(self._image())
        image[self.BASE + 25] ^= 0xff     # inside rmdir
        spans, misses = self._spans(
            bytes(image), self._labels(mkdir=0, rmdir=23, chdir=30),
            self._entries('mkdir', 'rmdir', 'chdir'))
        self.assertEqual(spans, {})
        self.assertIn('1 of 37 bytes differ', misses['mkdir.asm'])

    def test_members_that_disagree_on_the_start_are_a_miss(self):
        spans, misses = self._spans(
            self._image(), self._labels(mkdir=0, rmdir=23, chdir=31),
            self._entries('mkdir', 'rmdir', 'chdir'))
        self.assertEqual(spans, {})
        self.assertIn('disagree', misses['mkdir.asm'])

    def test_leading_bytes_belong_to_the_module(self):
        # csav.asm: ``dw $begin`` then csav at +2.
        whole = _whole(self.CODE, {'csav': 2, 'cret': 30})
        labels = {self.BASE + 2: routine('aztec_csav', self.BASE + 2),
                  self.BASE + 30: routine('aztec_cret', self.BASE + 30)}
        entries = {'aztec_csav': _entry('csav.asm', 'csav')}
        spans, _ = self._spans(self._image(), labels, entries, whole)
        span = spans['aztec_csav']
        self.assertEqual((span.start, span.lead, span.end, span.root),
                         (self.BASE, 2, self.BASE + 37, 'aztec_csav'))

    def test_the_name_is_the_source_file_not_the_first_routine(self):
        # croot.c's first routine is noper.
        whole = _whole(self.CODE, {'noper': 0, 'croot': 4})
        labels = {self.BASE: routine('aztec_noper', self.BASE),
                  self.BASE + 4: routine('aztec_Croot', self.BASE + 4)}
        entries = {'aztec_Croot': _entry('croot.c', 'Croot')}
        spans, _ = self._spans(self._image(), labels, entries, whole)
        self.assertEqual(list(spans), ['aztec_croot'])
        self.assertEqual(spans['aztec_croot'].root, 'aztec_noper')

    def test_overlapping_modules_are_both_misses(self):
        # Two candidate objects both reproduce chdir's bytes (``sbegin.asm``
        # and ``lbegin.asm`` both define ``_exit``): neither is placed.
        labels = self._labels(mkdir=0, rmdir=23, chdir=30)
        entries = {'aztec_mkdir': _entry('mkdir.asm', 'mkdir'),
                   'aztec_chdir': _entry('other.asm', 'chdir')}

        def compile_source(project, binary, label, entry, text):
            if entry['file'] == 'mkdir.asm':
                return _whole(self.CODE, {'mkdir': 0, 'rmdir': 23, 'chdir': 30})
            return _whole(self.CODE[30:], {'chdir': 0})

        with mock.patch.object(modules.cache, 'seed_source_text',
                               return_value='seed'), \
                mock.patch.object(modules.cache, 'compile_source',
                                  side_effect=compile_source):
            spans, misses = modules.module_spans(
                'P', 'bin', self._image(), labels, entries)
        self.assertEqual(spans, {})
        self.assertIn('overlaps other.asm', misses['mkdir.asm'])
        self.assertIn('overlaps mkdir.asm', misses['other.asm'])


class ModuleNameTest(unittest.TestCase):
    def test_a_module_is_named_after_its_source_stem(self):
        self.assertEqual(modules.module_name('croot.c'), 'aztec_croot')
        self.assertEqual(modules.module_name('io.asm'), 'aztec_io')

    def test_two_files_of_one_stem_take_their_vendor_directory(self):
        # ds links misc/lmalloc.c and dos20/lmalloc.asm.
        clashes = {'lmalloc'}
        dirs = {'lmalloc.c': 'misc', 'lmalloc.asm': 'dos20'}
        with mock.patch.object(modules.sources, 'source_dir',
                               side_effect=lambda v, f: dirs[f]):
            self.assertEqual(
                modules.module_name('lmalloc.c', clashes, 'v42b'),
                'aztec_misc_lmalloc')
            self.assertEqual(
                modules.module_name('lmalloc.asm', clashes, 'v42b'),
                'aztec_dos20_lmalloc')
        self.assertEqual(modules.module_name('mkdir.asm', clashes, 'v42b'),
                         'aztec_mkdir')

    def test_the_entry_is_found_by_module_name_not_label(self):
        entries = {'aztec_malloc': _entry('lmalloc.c', 'malloc'),
                   'aztec_lmalloc': _entry('lmalloc.asm', 'lmalloc')}
        dirs = {'lmalloc.c': 'misc', 'lmalloc.asm': 'dos20'}
        with mock.patch.object(modules, 'clashing_stems',
                               return_value={'lmalloc'}), \
                mock.patch.object(modules.sources, 'source_dir',
                                  side_effect=lambda v, f: dirs[f]):
            self.assertEqual(
                modules.entry_for('P', 'aztec_misc_lmalloc', entries)['file'],
                'lmalloc.c')
            self.assertEqual(
                modules.entry_for('P', 'aztec_dos20_lmalloc', entries)['file'],
                'lmalloc.asm')


if __name__ == '__main__':
    unittest.main()
