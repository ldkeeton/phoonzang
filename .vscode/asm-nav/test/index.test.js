'use strict';
// Run with `node test/index.test.js` from anywhere.
const assert = require('assert');
const path = require('path');
const { WorkspaceIndex, uriOf } = require('../index');

const root = path.resolve(__dirname, '..', '..', '..');
const index = new WorkspaceIndex(root);
index.initialize();

function at(rel, needle, nth = 0) {
    const uri = uriOf(path.join(root, rel));
    const file = index.files.get(uri);
    assert(file, `indexed ${rel}`);
    let offset = -1;
    for (let i = 0; i <= nth; i++) offset = file.text.indexOf(needle, offset + 1);
    assert(offset >= 0, `${needle} in ${rel}`);
    return index.resolveAt(uri, offset).map((symbol) =>
        `${symbol.fsPath.replace(root + path.sep, '')}:${symbol.row + 1}`);
}

function references(rel, needle, nth = 0) {
    const uri = uriOf(path.join(root, rel));
    const file = index.files.get(uri);
    let offset = -1;
    for (let i = 0; i <= nth; i++) offset = file.text.indexOf(needle, offset + 1);
    return index.referencesAt(uri, offset, true);
}

// A C definition beats the generated .asm.
assert.deepStrictEqual(at('src_DSAVANT/vmele/fill_row_action_slots.asm', 'random_below'),
    ['src_DSAVANT/ds/game/random_below.c:5']);

// C and .s beat .asm; .asm still finds other .asm.
assert.deepStrictEqual(at('src_DSAVANT/shared/aztec/aztec_strncpy.s', 'aztec_strncpy'),
    ['src_DSAVANT/shared/aztec/aztec_strncpy.s:4']);

// Project-wide ASM data/equ definitions.
assert.deepStrictEqual(at('src_DSAVANT/vpcmk/adjust_female_character_stats.asm', 'party_records'),
    ['src_DSAVANT/ds/data/globals.c:156']);
assert.deepStrictEqual(at('src_DSAVANT/include/msg.inc', 'MSG_RACE_BASE'),
    ['src_DSAVANT/include/msg.h:5']);

// Struct members in the NASM include.
assert.deepStrictEqual(at('src_DSAVANT/vpcmk/adjust_female_character_stats.asm', 'pc_rec.stat'),
    ['src_DSAVANT/include/structs/pcrec.h:73']);

// Local labels stay in their routine.
assert.deepStrictEqual(at('src_DSAVANT/vpcmk/adjust_female_character_stats.asm', '.return1'),
    ['src_DSAVANT/vpcmk/adjust_female_character_stats.asm:17']);
assert.deepStrictEqual(references('src_DSAVANT/vpcmk/adjust_female_character_stats.asm', '.return1')
    .map((item) => `${path.basename(item.uri)}:${item.range.start.line + 1}`).sort(),
    ['adjust_female_character_stats.asm:17', 'adjust_female_character_stats.asm:6']);

// C parameters are lexical, not name-global.
assert.deepStrictEqual(at('src_DSAVANT/vpcmk/adjust_female_character_stats.c', 'member_index', 1),
    ['src_DSAVANT/vpcmk/adjust_female_character_stats.c:7']);
assert.strictEqual(references('src_DSAVANT/vpcmk/adjust_female_character_stats.c', 'member_index', 2).length, 5);

// Manx assembler macros in lmacros.h.
assert.deepStrictEqual(at('src_DSAVANT/shared/aztec/aztec_strncpy.s', 'procdef'),
    ['src_DSAVANT/include/lmacros.h:42']);

// Duplicate routine names in different binaries stay local to the chosen one.
const ovmain = references('src_DSAVANT/vmele/ovmain.asm', 'ovmain');
assert(ovmain.length > 0);
assert(ovmain.every((item) => /\/vmele\/|\/shared\//.test(item.uri)), 'ovmain references stay in vmele/shared');

console.log('asm-nav index tests passed');
