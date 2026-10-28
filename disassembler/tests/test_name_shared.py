"""``make name PROJECT shared bss_XXXX=NAME`` names each includer's own BSS."""

import os
import tempfile
import unittest
from unittest import mock

from make import naming


def _write(root, rel, text):
    path = os.path.join(root, rel)
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, 'w') as f:
        f.write(text)


class SharedBssNameTest(unittest.TestCase):
    def setUp(self):
        self.root = tempfile.mkdtemp()
        patcher = mock.patch.object(naming, 'src_dir', return_value=self.root)
        patcher.start()
        self.addCleanup(patcher.stop)
        for cache in (naming._master_paths, naming._master_text,
                      naming._shared_text, naming._shared_alias_index):
            cache.cache_clear()
            self.addCleanup(cache.cache_clear)
        _write(self.root, 'shared/ovr/f.asm', 'f:\n    mov word [bss_91c8], 0\n    ret\n')
        own = 'bss_91c8 equ __zdseg_end + (__zobss_91c8 - __zdata_start)\n'
        _write(self.root, 'a.asm', own + '%include "shared/ovr/f.asm"\n')
        _write(self.root, 'b.asm', own + '%include "shared/ovr/f.asm"\n')
        _write(self.root, 'c.asm', own)     # its own bss_91c8, but not f

    def test_each_includer_is_named(self):
        out = naming._expand_shared_specs('P', 'shared', [('bss_91c8', 'flag', None)])
        self.assertEqual(out, [('bss_91c8', 'flag', None, 'a'),
                               ('bss_91c8', 'flag', None, 'b')])

    def test_a_named_overlay_variable_fans_out(self):
        own = 'flag equ __zdseg_end + (__zobss_91c8 - __zdata_start)\n'
        _write(self.root, 'shared/ovr/f.asm', 'f:\n    mov word [flag], 0\n    ret\n')
        _write(self.root, 'a.asm', own + '%include "shared/ovr/f.asm"\n')
        _write(self.root, 'b.asm', own + '%include "shared/ovr/f.asm"\n')
        out = naming._expand_shared_specs('P', 'shared', [('flag', 'save_flag', None)])
        self.assertEqual([donor for *_, donor in out], ['a', 'b'])

    def test_host_bss_stays_with_the_host(self):
        _write(self.root, 'shared/ovr/g.asm', 'g:\n    inc word [bss_1234]\n    ret\n')
        _write(self.root, 'a.asm', '%include "shared/ovr/g.asm"\n')
        out = naming._expand_shared_specs('P', 'shared', [('bss_1234', 'count', None)])
        self.assertEqual(out, [('bss_1234', 'count', None, 'shared')])


if __name__ == '__main__':
    unittest.main()
