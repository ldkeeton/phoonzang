'use strict';
// Pure helpers (no vscode API) so they can be tested with plain node.

// A global label (``name:``) or constant (``name equ ...``) at column zero.
// ``@..name.l1`` locals are skipped.
const LABEL = /^([A-Za-z_$?][\w$?]*)(?::|[ \t]+equ\b)/i;

function labels(text) {
    const out = [];
    text.split('\n').forEach((line, row) => {
        const m = LABEL.exec(line);
        if (m) out.push({ name: m[1], row, col: 0 });
    });
    return out;
}

// Every whole-word occurrence of ``name``; the label definition itself is
// reported with ``def: true`` so callers can honour includeDeclaration.
function occurrences(text, name) {
    const out = [];
    const word = new RegExp(`(?<![\\w$?@.])${name.replace(/\$/g, '\\$')}(?![\\w$?@])`, 'g');
    text.split('\n').forEach((line, row) => {
        let m;
        word.lastIndex = 0;
        while ((m = word.exec(line))) {
            out.push({ row, col: m.index, def: m.index === 0 && /^(:|[ \t]+equ\b)/i.test(line.slice(name.length)) });
        }
    });
    return out;
}

// Instruction addresses: the generated listings end each line ``; 0x4b50``.
const ADDR = /;\s*0x([0-9a-fA-F]+)\s*$/;

function addresses(text) {
    const out = [];
    text.split('\n').forEach((line, row) => {
        const m = ADDR.exec(line);
        if (m) out.push({ addr: parseInt(m[1], 16), row });
    });
    return out;
}

// Address of the first instruction at or after ``row`` (a label's own line
// carries no address), or null.
function routineStart(text, row) {
    const lines = text.split('\n');
    for (let i = row; i < lines.length && i < row + 8; i++) {
        const m = ADDR.exec(lines[i]);
        if (m) return parseInt(m[1], 16);
    }
    return null;
}

// ``.../src_DSAVANT/ds/x.asm`` (or a band folder, ``ds/game/x.asm``) -> {project:'DSAVANT', binary:'ds', label:'x'}.
// Top-level files such as ``src_DSAVANT/ds.asm`` have no binary directory.
function locate(fsPath) {
    const m = /src_([^/\\]+)[/\\]([^/\\]+)[/\\](?:.*[/\\])?([^/\\]+?)\.(c|asm)$/.exec(fsPath);
    return m ? { project: m[1], binary: m[2], label: m[3], ext: m[4] } : null;
}

module.exports = { labels, occurrences, addresses, routineStart, locate };
