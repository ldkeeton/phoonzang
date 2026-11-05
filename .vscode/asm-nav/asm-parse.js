'use strict';
// Tolerant indexer for the generated NASM listings (.asm), the Manx assembler
// sources (.s), NASM includes (.inc), and #asm blocks embedded in C.
//
// It deliberately does not try to assemble anything.  It records definitions,
// references, include directives and listing addresses so the language server
// can answer definition/reference/hover requests without scraping text again.

const IDENT = /^[A-Za-z_$?@][\w$?@]*$/;
const ADDR = /;\s*0x([0-9a-fA-F]+)\s*$/;
const TOKEN = /(?:[A-Za-z_$?@][\w$?@]*\.)*[A-Za-z_$?@][\w$?@]*|\.[A-Za-z_$?@][\w$?@]*/g;

// Comments and strings are blanked (newlines kept) so offsets still line up.
function maskAsmLine(line) {
    let out = '';
    let quote = null;
    for (let i = 0; i < line.length; i++) {
        const c = line[i];
        if (quote) {
            if (c === quote) quote = null;
            out += ' ';
        } else if (c === ';') {
            out += ' '.repeat(line.length - i);
            break;
        } else if (c === "'" || c === '"' || c === '`') {
            quote = c;
            out += ' ';
        } else {
            out += c;
        }
    }
    return out;
}

function wordAt(text, offset) {
    if (offset < 0 || offset >= text.length) return null;
    let start = offset;
    let end = offset;
    const part = (c) => /[A-Za-z0-9_$?@.]/.test(c);
    while (start > 0 && part(text[start - 1])) start--;
    while (end < text.length && part(text[end])) end++;
    let word = text.slice(start, end).replace(/^\.+/, '.');
    word = word.replace(/\.+$/, '');
    if (!word || !/[A-Za-z0-9_$?@]/.test(word)) return null;
    if (word.startsWith('.') && word.length > 1) end = start + word.length;
    else if (!word.startsWith('.')) end = start + word.length;
    return { word, start, end };
}

// `parseAsm` works on a whole file, or on one #asm block.  baseOffset/baseRow
// let a block's positions be reported in the surrounding C file.
function parseAsm(text, meta = {}) {
    const uri = meta.uri || '';
    const origin = meta.origin || 'asm';
    const manx = origin === 's' || origin === 'inl';
    const baseOffset = meta.baseOffset || 0;
    const baseRow = meta.baseRow || 0;
    const lines = text.split('\n');
    const symbols = [];
    const refs = [];
    const includes = [];
    const addresses = [];
    const publicNames = new Set();
    const strucStack = [];
    let currentGlobal = null;

    const lineStarts = [0];
    for (let i = 0; i < text.length; i++) if (text[i] === '\n') lineStarts.push(i + 1);
    const rowCol = (offset) => {
        let lo = 0;
        let hi = lineStarts.length - 1;
        while (lo < hi) {
            const mid = (lo + hi + 1) >> 1;
            if (lineStarts[mid] <= offset) lo = mid;
            else hi = mid - 1;
        }
        return { row: baseRow + lo, col: offset - lineStarts[lo] };
    };

    const addSymbol = (symbol) => {
        const pos = rowCol(symbol.localOffset === undefined ? symbol.offset : symbol.localOffset);
        symbol.row = pos.row;
        symbol.col = pos.col;
        symbol.length = symbol.length || symbol.name.length;
        symbol.origin = origin;
        if (!symbol.local && !symbol.field && ['function', 'label'].includes(symbol.kind)) {
            symbol.alias = symbol.name.endsWith('_') && !symbol.name.endsWith('__')
                ? symbol.name.slice(0, -1) : symbol.name + '_';
        }
        symbols.push(symbol);
        return symbol;
    };

    const containerKey = () => currentGlobal
        ? `${uri}|${currentGlobal.name}@${currentGlobal.offset}`
        : `${uri}|@file`;

    let lineStart = 0;
    lines.forEach((raw, rowIndex) => {
        const line = maskAsmLine(raw);
        const defSpans = [];
        const start = lineStart;
        lineStart += raw.length + 1;

        const define = (name, localOffset, length, kind, extra = {}) => {
            const symbol = addSymbol({
                name, offset: start + localOffset + baseOffset,
                localOffset: start + localOffset, length, kind,
                definition: true, declaration: false,
                scope: extra.scope || 'project', local: extra.local || false,
                localKey: extra.localKey, container: extra.container,
                field: extra.field || false, address: null, ...extra,
            });
            defSpans.push([start + localOffset, start + localOffset + length]);
            return symbol;
        };
        const defineLocal = (name, localOffset) => {
            if (strucStack.length) {
                const struc = strucStack[strucStack.length - 1];
                const field = name.startsWith('.') ? name : `.${name}`;
                return define(`${struc}${field}`, localOffset, name.length, 'field', {
                    container: struc, local: false, field: true, aliasField: field,
                });
            }
            const key = `${containerKey()}|${name}`;
            return define(name, localOffset, name.length, 'label', { local: true, localKey: key });
        };

        // ---- definitions -------------------------------------------------
        let m;
        if (/^\s*struc\s+/i.test(line)) {
            m = /^\s*struc\s+([A-Za-z_$?@][\w$?@]*)/i.exec(line);
            if (m) {
                define(m[1], m.index + m[0].lastIndexOf(m[1]), m[1].length, 'struct');
                strucStack.push(m[1]);
            }
        } else if (/^\s*endstruc\b/i.test(line)) {
            strucStack.pop();
        } else if (strucStack.length && /^\s*\.[A-Za-z_$?@][\w$?@]*\s*:/.test(line)) {
            m = /^\s*(\.[A-Za-z_$?@][\w$?@]*)\s*:/.exec(line);
            if (m) defineLocal(m[1], m.index + m[0].indexOf(m[1]));
        } else if ((m = /^\s*%define\s+([A-Za-z_$?@][\w$?@]*)/i.exec(line))) {
            define(m[1], m.index + m[0].lastIndexOf(m[1]), m[1].length, 'macro');
        } else if ((m = /^\s*%macro\s+([A-Za-z_$?@][\w$?@]*)/i.exec(line))) {
            define(m[1], m.index + m[0].lastIndexOf(m[1]), m[1].length, 'macro');
        } else if ((m = /^\s*([A-Za-z_$?@][\w$?@]*)\s+macro\b/i.exec(line))) {
            define(m[1], m.index + m[0].lastIndexOf(m[1]), m[1].length, 'macro');
        } else if ((m = /^\s*(procdef|entrdef|intrdef)\s+([A-Za-z_$?@][\w$?@]*)/i.exec(line))) {
            const name = `${m[2]}_`;
            const offset = m.index + m[0].lastIndexOf(m[2]);
            const symbol = define(name, offset, name.length, 'function');
            symbol.alias = m[2];
            currentGlobal = symbol;
            publicNames.add(m[2]);
            publicNames.add(name);
        } else if ((m = /^\s*internal\s+([A-Za-z_$?@][\w$?@]*)/i.exec(line))) {
            define(m[1], m.index + m[0].lastIndexOf(m[1]), m[1].length, 'function', { scope: 'file' });
        } else if ((m = /^\s*([A-Za-z_$?@][\w$?@]*)\s+proc\b/i.exec(line))) {
            currentGlobal = define(m[1], m.index + m[0].lastIndexOf(m[1]), m[1].length, 'function',
                { scope: m[1].endsWith('_') ? 'project' : 'file' });
        } else if ((m = /^\s*([A-Za-z_$?@][\w$?@]*)\s+label\b/i.exec(line))) {
            currentGlobal = define(m[1], m.index + m[0].lastIndexOf(m[1]), m[1].length, 'function',
                { scope: m[1].endsWith('_') ? 'project' : 'file' });
        } else if ((m = /^\s*(\.[A-Za-z_$?@][\w$?@]*)\s*:/.exec(line))) {
            defineLocal(m[1], m.index + m[0].indexOf(m[1]));
        } else if ((m = /^\s*([A-Za-z_$?@][\w$?@]*)\s*:\s*/.exec(line))) {
            const name = m[1];
            const offset = m.index + m[0].indexOf(name);
            if (name.startsWith('.')) {
                defineLocal(name, offset);
            } else {
                currentGlobal = define(name, offset, name.length, 'function',
                    { scope: manx && !name.endsWith('_') ? 'file' : 'project' });
            }
        } else if ((m = /^\s*([A-Za-z_$?@][\w$?@]*)\s+equ\b/i.exec(line))) {
            define(m[1], m.index + m[0].lastIndexOf(m[1]), m[1].length, 'constant');
        }

        const pub = /^\s*(?:public|global)\s+(.+)$/i.exec(line);
        if (pub) {
            for (const name of pub[1].split(/[\s,]+/)) if (IDENT.test(name)) publicNames.add(name);
        }
        const ext = /^\s*extern\s+(.+)$/i.exec(line);
        if (ext) {
            for (const name of ext[1].split(/[\s,]+/)) {
                if (!IDENT.test(name)) continue;
                const offset = line.indexOf(name);
                addSymbol({ name, offset: start + offset + baseOffset,
                    localOffset: start + offset, length: name.length,
                    kind: 'label', definition: false, declaration: true,
                    scope: 'project', address: null, origin });
            }
        }

        // ---- include directives -----------------------------------------
        const inc = /^\s*(?:%include|include)\s+(?:"([^"]+)"|(\S+))/i.exec(raw);
        if (inc) {
            const target = inc[1] || inc[2];
            const at = inc.index + inc[0].indexOf(target);
            const pos = rowCol(start + at);
            includes.push({ target, offset: start + at + baseOffset,
                length: target.length, row: pos.row, col: pos.col });
        }

        // ---- references --------------------------------------------------
        TOKEN.lastIndex = 0;
        while ((m = TOKEN.exec(line))) {
            const localOffset = start + m.index;
            const offset = localOffset + baseOffset;
            if (defSpans.some(([a, b]) => localOffset >= a && localOffset < b)) continue;
            const previous = localOffset > 0 ? text[localOffset - 1] : '';
            if (previous === '%' || previous === '#') continue;
            const name = m[0];
            const pos = rowCol(localOffset);
            const ref = { name, offset, length: name.length,
                row: pos.row, col: pos.col, origin, local: false };
            if (name.startsWith('.')) {
                ref.local = true;
                ref.localKey = `${containerKey()}|${name}`;
            } else if (name.includes('.')) {
                const base = name.split('.')[0];
                if (strucStack.includes(base)) {
                    ref.field = true;
                    ref.container = base;
                }
            }
            refs.push(ref);
        }

        // ---- listing addresses ------------------------------------------
        const a = ADDR.exec(raw);
        if (a) addresses.push({ addr: parseInt(a[1], 16), row: baseRow + rowIndex });
    });

    // A label without a trailing underscore can still be public.
    for (const symbol of symbols) {
        if (publicNames.has(symbol.name)) symbol.scope = 'project';
    }

    // Give each routine label the address of its first instruction.
    for (const symbol of symbols) {
        if (!['function', 'label'].includes(symbol.kind) || symbol.local) continue;
        for (let i = 0; i < addresses.length; i++) {
            const a = addresses[i];
            if (a.row < symbol.row) continue;
            if (a.row > symbol.row + 8) break;
            symbol.address = a.addr;
            break;
        }
    }

    return { symbols, refs, includes, addresses };
}

// Locate #asm ... #endasm blocks in a C file.  The block includes the directive
// lines; the asm parser ignores them because their names follow `#`/`%`.
function asmBlocks(text) {
    const out = [];
    const re = /^[ \t]*#asm\b[\s\S]*?^[ \t]*#endasm\b[^\n]*/gm;
    let m;
    while ((m = re.exec(text))) {
        out.push({ offset: m.index, text: m[0], row: text.slice(0, m.index).split('\n').length - 1 });
    }
    return out;
}

module.exports = { parseAsm, asmBlocks, wordAt, maskAsmLine };
