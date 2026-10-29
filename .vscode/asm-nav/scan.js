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
    const word = new RegExp(`(?<![\\w$?@.])${name.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')}(?![\\w$?@])`, 'g');
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

// ``.../src_DSAVANT/ds/x.asm`` (or ``x.c``/``x.s``, or in a band folder, ``ds/game/x.asm``)
// -> {project:'DSAVANT', binary:'ds', label:'x', ext:'asm'}.
// Top-level files such as ``src_DSAVANT/ds.asm`` have no binary directory.
function locate(fsPath) {
    const m = /src_([^/\\]+)[/\\]([^/\\]+)[/\\](?:.*[/\\])?([^/\\]+?)\.(c|h|s|asm)$/.exec(fsPath);
    return m ? { project: m[1], binary: m[2], label: m[3], ext: m[4] } : null;
}

module.exports = { labels, occurrences, addresses, routineStart, locate };

// Preserve offsets while hiding comments and literals from C symbol scanning.
function cCode(text) {
    return text.replace(/\/\*[\s\S]*?\*\/|\/\/[^\n]*|"(?:\\.|[^"\\])*"|'(?:\\.|[^'\\])*'/g,
        part => part.replace(/[^\n\r]/g, ' '));
}

function cSymbols(text) {
    const code = cCode(text);
    const out = [];
    const add = (name, offset, kind) => {
        const before = code.slice(0, offset);
        out.push({ name, row: before.split('\n').length - 1,
            col: offset - before.lastIndexOf('\n') - 1, kind });
    };
    let m;
    const tags = /\b(struct|union|enum)\s+([A-Za-z_]\w*)\s*\{/g;
    while ((m = tags.exec(code))) add(m[2], m.index + m[0].indexOf(m[2], m[1].length), m[1]);
    const macros = /^\s*#\s*define[ \t]+([A-Za-z_]\w*)/gm;
    while ((m = macros.exec(code))) add(m[1], m.index + m[0].lastIndexOf(m[1]), 'macro');
    // A typedef ends at the first semicolon outside its aggregate body.
    const typedefs = /\btypedef\b/g;
    while ((m = typedefs.exec(code))) {
        let depth = 0, end = m.index + m[0].length;
        for (; end < code.length; end++) {
            if (code[end] === '{') depth++;
            if (code[end] === '}') depth--;
            if (code[end] === ';' && depth === 0) break;
        }
        const body = code.slice(m.index, end).replace(/\{[\s\S]*\}/g, x => ' '.repeat(x.length));
        const aliases = /([A-Za-z_]\w*)\s*(?:\[[^\]]*\]\s*)?(?=,|$)|\(\s*\*\s*([A-Za-z_]\w*)\s*\)/g;
        let alias;
        while ((alias = aliases.exec(body))) add(alias[1] || alias[2],
            m.index + alias.index + alias[0].indexOf(alias[1] || alias[2]), 'type');
        typedefs.lastIndex = end + 1;
    }
    return out;
}
module.exports.cCode = cCode;
module.exports.cSymbols = cSymbols;

// Share comment/string masking with navigation while keeping semantic analysis separate.
module.exports.cSemanticTokens = (text, known) =>
    require('./c-semantic').semanticTokens(cCode(text), new Map(known));
