'use strict';
// Workspace symbol index for the generated C / Manx asm / NASM trees.
//
// The index is the single source of truth behind definition, references,
// hover, outline and semantic tokens.  Files are parsed once and kept in
// per-file tables; changing one file only replaces that file's entries.

const fs = require('fs');
const path = require('path');
const { fileURLToPath, pathToFileURL } = require('url');
const { parseC } = require('./c-parse');
const { parseAsm } = require('./asm-parse');
const { cSymbols, locate } = require('./scan');

const SOURCE_EXT = new Set(['.c', '.h', '.s', '.asm', '.inc']);
const GLOBAL_KINDS = new Set(['function', 'label', 'global', 'type', 'struct', 'union',
    'enum', 'enumMember', 'macro', 'constant']);

function uriOf(file) {
    return pathToFileURL(file).href;
}

function fsPathOf(uri) {
    try { return fileURLToPath(uri); } catch (e) { return null; }
}

function classify(fsPath) {
    const parts = fsPath.split(path.sep);
    const at = parts.findIndex((part) => /^src_/.test(part));
    if (at < 0) return { project: null, binary: null };
    const project = parts[at].slice(4);
    const next = parts[at + 1];
    if (!next) return { project, binary: null };
    if (['shared', 'include'].includes(next)) return { project, binary: next };
    // A file directly under src_<PROJECT>/ is project-level (for example ds.asm).
    if (at + 2 >= parts.length) return { project, binary: null };
    return { project, binary: next };
}

function collectFiles(root) {
    const out = [];
    const walk = (dir) => {
        let entries;
        try { entries = fs.readdirSync(dir, { withFileTypes: true }); } catch (e) { return; }
        for (const entry of entries) {
            const full = path.join(dir, entry.name);
            if (entry.isDirectory()) {
                if (['node_modules', '.git', '.cache', 'build_out', '__pycache__', 'dos_compilers',
                    'apps', 'trash'].includes(entry.name)) continue;
                walk(full);
            } else if (SOURCE_EXT.has(path.extname(entry.name).toLowerCase()) &&
                    /[\\/]src_[^\\/]+[\\/]/.test(full)) {
                out.push(full);
            }
        }
    };
    walk(root);
    return out;
}

function symbolKeys(symbol) {
    if (symbol.local && symbol.localKey) return new Set([`local:${symbol.localKey}`]);
    if (symbol.scope === 'local') return new Set([symbol.name]);
    const keys = new Set([symbol.name]);
    if (symbol.kind === 'field') {
        if (symbol.container && !symbol.name.includes('.')) keys.add(`${symbol.container}.${symbol.name}`);
        keys.add(`.${symbol.name.split('.').pop()}`);
        return keys;
    }
    if (symbol.origin === 'c' && symbol.scope === 'file') return keys;
    if (symbol.alias) keys.add(symbol.alias);
    if (GLOBAL_KINDS.has(symbol.kind)) {
        if (symbol.name.endsWith('_') && !symbol.name.endsWith('__')) keys.add(symbol.name.slice(0, -1));
        else keys.add(`${symbol.name}_`);
    }
    return keys;
}

function queryKeys(name, origin) {
    const keys = new Set([name]);
    if (name.startsWith('.')) {
        keys.add(`.${name.replace(/^\.+/, '')}`);
        return keys;
    }
    if (name.includes('.')) {
        keys.add(name.split('.').pop());
        keys.add(`.${name.split('.').pop()}`);
    }
    if (origin === 'c') keys.add(`${name}_`);
    else if (name.endsWith('_')) keys.add(name.slice(0, -1));
    else keys.add(`${name}_`);
    return keys;
}

function tier(symbol) {
    if (symbol.origin === 'c') {
        if (symbol.definition) return 0;
        if (symbol.fsPath && symbol.fsPath.endsWith('.h')) return 1;
        return 5;                       // a .c extern declaration
    }
    if (symbol.origin === 'inl') return 2;
    if (symbol.origin === 's') return 2;
    if (symbol.origin === 'asm') return 3;
    if (symbol.origin === 'inc') return 4;
    return 6;
}

class WorkspaceIndex {
    constructor(root) {
        this.root = root;
        this.files = new Map();
        this.defs = new Map();
        this.refs = new Map();
        this.symbolsById = new Map();
        this.addresses = new Map();
        this.knownTypes = new Map();
        this.ready = false;
    }

    // ---------------------------------------------------------------- loading

    initialize() {
        const files = collectFiles(this.root);
        const texts = new Map();
        for (const file of files) {
            try { texts.set(file, fs.readFileSync(file, 'utf8')); } catch (e) { /* ignored */ }
        }
        // Typedefs/tags/macros are needed before the declaration pass.
        for (const [file, text] of texts) {
            if (!/\.(c|h)$/i.test(file)) continue;
            for (const symbol of cSymbols(text)) {
                if (['type', 'struct', 'union', 'enum', 'macro'].includes(symbol.kind)) {
                    this.knownTypes.set(symbol.name, symbol.kind);
                }
            }
        }
        for (const [file, text] of texts) this.updateFile(uriOf(file), text, { parse: false });
        this.ready = true;
    }

    updateFromDisk(uri, version) {
        const file = fsPathOf(uri);
        if (!file || !fs.existsSync(file)) return this.removeFile(uri);
        let text;
        try { text = fs.readFileSync(file, 'utf8'); } catch (e) { return; }
        return this.updateFile(uri, text, { version });
    }

    updateFile(uri, text, opts = {}) {
        const file = fsPathOf(uri);
        if (!file) return;
        const old = this.files.get(uri);
        if (old) this.removeFile(uri, { keepText: true });
        const { project, binary } = classify(file);
        const ext = path.extname(file).toLowerCase();
        const record = {
            uri, fsPath: file, project, binary, ext, text,
            version: opts.version,
            symbols: [], refs: [], includes: [], addresses: [],
            byDeclIndex: new Map(),
        };
        let parsed;
        if (ext === '.c' || ext === '.h') {
            parsed = parseC(text, this.knownTypes, { uri });
            for (const symbol of parsed.symbols) {
                if (['type', 'struct', 'union', 'enum', 'macro'].includes(symbol.kind)) {
                    this.knownTypes.set(symbol.name, symbol.kind);
                }
            }
            record.includes = parsed.includes || [];
            // A few project headers (lmacros.h) are Manx assembler includes,
            // not C headers.  Index their macros/equates too.
            if (ext === '.h' && /\bmacro\b/i.test(text)) {
                const asm = parseAsm(text, { uri, origin: 'inc' });
                record.symbols = parsed.symbols.concat(asm.symbols);
                record.refs = parsed.refs.concat(asm.refs);
                record.includes = record.includes.concat(asm.includes || []);
            } else {
                record.symbols = parsed.symbols;
                record.refs = parsed.refs;
            }
        } else {
            const origin = ext === '.s' ? 's' : ext === '.inc' ? 'inc' : 'asm';
            parsed = parseAsm(text, { uri, origin });
            record.symbols = parsed.symbols;
            record.refs = parsed.refs;
            record.includes = parsed.includes || [];
            record.addresses = parsed.addresses || [];
        }
        record.tokens = parsed.tokens || [];
        for (const symbol of record.symbols) {
            symbol.id = `${uri}#${symbol.origin}:${symbol.offset}:${symbol.kind}:${symbol.name}`;
            symbol.uri = uri;
            symbol.fsPath = file;
            symbol.project = project;
            symbol.binary = binary;
            if (symbol.declIndex !== undefined) record.byDeclIndex.set(symbol.declIndex, symbol);
        }
        this.files.set(uri, record);
        this.addToMaps(record);
    }

    removeFile(uri, opts = {}) {
        const record = this.files.get(uri);
        if (!record) return;
        this.removeFromMaps(record);
        this.files.delete(uri);
        if (!opts.keepText) return;
    }

    addToMaps(file) {
        for (const symbol of file.symbols) {
            this.symbolsById.set(symbol.id, symbol);
            for (const key of symbolKeys(symbol)) {
                if (!this.defs.has(key)) this.defs.set(key, []);
                this.defs.get(key).push(symbol);
            }
            if (symbol.address !== null && symbol.address !== undefined && symbol.binary) {
                if (!this.addresses.has(symbol.binary)) this.addresses.set(symbol.binary, []);
                this.addresses.get(symbol.binary).push({
                    addr: symbol.address, uri: file.uri, row: symbol.row, name: symbol.name,
                });
            }
        }
        for (const ref of file.refs) {
            ref.uri = file.uri;
            ref.fsPath = file.fsPath;
            ref.project = file.project;
            ref.binary = file.binary;
            const keys = ref.local ? [`local:${ref.localKey}`] : [ref.name];
            for (const key of keys) {
                if (!this.refs.has(key)) this.refs.set(key, []);
                this.refs.get(key).push(ref);
            }
        }
        for (const list of this.addresses.values()) list.sort((a, b) => a.addr - b.addr);
    }

    removeFromMaps(file) {
        const drop = (map, entries) => {
            for (const entry of entries) {
                const list = map.get(entry.key);
                if (!list) continue;
                const at = list.indexOf(entry.value);
                if (at >= 0) list.splice(at, 1);
                if (!list.length) map.delete(entry.key);
            }
        };
        const defEntries = [];
        for (const symbol of file.symbols) {
            this.symbolsById.delete(symbol.id);
            for (const key of symbolKeys(symbol)) defEntries.push({ key, value: symbol });
            if (symbol.address !== null && symbol.address !== undefined && symbol.binary) {
                const list = this.addresses.get(symbol.binary);
                if (list) {
                    for (let i = list.length - 1; i >= 0; i--) {
                        if (list[i].uri === file.uri && list[i].row === symbol.row) list.splice(i, 1);
                    }
                    if (!list.length) this.addresses.delete(symbol.binary);
                }
            }
        }
        drop(this.defs, defEntries);
        const refEntries = [];
        for (const ref of file.refs) {
            for (const key of (ref.local ? [`local:${ref.localKey}`] : [ref.name])) {
                refEntries.push({ key, value: ref });
            }
        }
        drop(this.refs, refEntries);
    }

    // -------------------------------------------------------------- position

    findAt(uri, offset) {
        const file = this.files.get(uri);
        if (!file) return null;
        let symbol = null;
        let ref = null;
        for (const candidate of file.symbols) {
            if (offset >= candidate.offset && offset < candidate.offset + candidate.length) {
                if (!symbol || candidate.length < symbol.length) symbol = candidate;
            }
        }
        for (const candidate of file.refs) {
            if (offset >= candidate.offset && offset < candidate.offset + candidate.length) {
                if (!ref || candidate.length < ref.length) ref = candidate;
            }
        }
        return { file, symbol, ref };
    }

    resolveAt(uri, offset) {
        const found = this.findAt(uri, offset);
        if (!found) return [];
        const { file, symbol, ref } = found;
        if (symbol) return this.resolveSymbol(symbol, file);
        if (ref) return this.resolveRef(ref, file);
        return [];
    }

    resolveSymbol(symbol, file) {
        if (symbol.kind === 'field') return this.lookupField(symbol.name, symbol.container);
        if (symbol.local || symbol.scope === 'local') return [symbol];
        if (symbol.scope === 'file') return [symbol];
        return this.lookup(symbol.name, file, symbol.origin, { preferred: symbol });
    }

    resolveRef(ref, file) {
        if (ref.local && ref.localKey) {
            return this.defs.get(`local:${ref.localKey}`) || [];
        }
        if (ref.member || ref.field || ref.name.includes('.')) {
            const field = this.lookupField(ref.name, ref.container || null);
            if (field.length) return field;
        }
        if (ref.declIndex !== null && ref.declIndex !== undefined) {
            const declaration = file.byDeclIndex.get(ref.declIndex) ||
                (typeof ref.declIndex === 'string' ? file.byDeclIndex.get(ref.declIndex) : null);
            if (declaration) {
                if (declaration.kind === 'field') return this.lookupField(declaration.name, declaration.container);
                if (declaration.local || declaration.scope === 'local') return [declaration];
                if (declaration.scope === 'file') return [declaration];
                if (declaration.definition) return this.lookup(declaration.name, file, declaration.origin,
                    { preferred: declaration });
                return this.lookup(declaration.name, file, declaration.origin, { preferred: declaration });
            }
        }
        return this.lookup(ref.name, file, ref.origin);
    }

    lookup(name, file, origin = 'asm', opts = {}) {
        const keys = queryKeys(name, origin);
        const seen = new Set();
        let candidates = [];
        for (const key of keys) {
            for (const symbol of this.defs.get(key) || []) {
                if (seen.has(symbol.id)) continue;
                seen.add(symbol.id);
                if (symbol.scope === 'local') continue;
                if (symbol.scope === 'file' && symbol.uri !== file.uri) continue;
                if (symbol.project !== file.project) continue;
                if (symbol.kind === 'field') continue;
                candidates.push(symbol);
            }
        }
        if (!candidates.length) return [];
        if (opts.preferred && opts.preferred.definition) {
            const same = candidates.filter((c) => c.id === opts.preferred.id);
            if (same.length) candidates = same.concat(candidates.filter((c) => c.id !== opts.preferred.id));
        }
        candidates.sort((a, b) => this.compare(a, b, file));
        const bestTier = tier(candidates[0]);
        let group = candidates.filter((c) => tier(c) === bestTier);
        const sameFile = group.filter((c) => c.uri === file.uri);
        if (sameFile.length) return sameFile;
        const sameBinary = group.filter((c) => c.binary && c.binary === file.binary);
        if (sameBinary.length) return sameBinary;
        const shared = group.filter((c) => !c.binary || c.binary === 'shared' || c.binary === 'include');
        if (shared.length) return shared;
        return group;
    }

    lookupField(name, container) {
        const keys = new Set([name, `.${name}`]);
        if (container) keys.add(`${container}.${name}`);
        const out = [];
        const seen = new Set();
        for (const key of keys) {
            for (const symbol of this.defs.get(key) || []) {
                if (symbol.kind !== 'field' || seen.has(symbol.id)) continue;
                seen.add(symbol.id);
                if (container && symbol.container && symbol.container !== container) {
                    // A qualified field wins over same-named fields elsewhere.
                    continue;
                }
                out.push(symbol);
            }
        }
        if (!out.length && container) return this.lookupField(name, null);
        out.sort((a, b) => (tier(a) - tier(b)) || (a.uri < b.uri ? -1 : a.uri > b.uri ? 1 : 0));
        const best = tier(out[0]);
        const grouped = out.filter((symbol) => tier(symbol) === best);
        return grouped;
    }

    compare(a, b, file) {
        const dt = tier(a) - tier(b);
        if (dt) return dt;
        const af = a.uri === file.uri ? 0 : 1;
        const bf = b.uri === file.uri ? 0 : 1;
        if (af !== bf) return af - bf;
        const ab = a.binary && a.binary === file.binary ? 0 : 1;
        const bb = b.binary && b.binary === file.binary ? 0 : 1;
        if (ab !== bb) return ab - bb;
        const ash = !a.binary || a.binary === 'shared' || a.binary === 'include' ? 0 : 1;
        const bsh = !b.binary || b.binary === 'shared' || b.binary === 'include' ? 0 : 1;
        if (ash !== bsh) return ash - bsh;
        return a.uri < b.uri ? -1 : a.uri > b.uri ? 1 : a.offset - b.offset;
    }

    // ------------------------------------------------------------ references

    referencesAt(uri, offset, includeDeclaration) {
        const resolved = this.resolveAt(uri, offset);
        if (!resolved.length) return [];
        const symbol = resolved[0];
        const file = this.files.get(uri);
        let found = [];

        if (symbol.local || symbol.scope === 'local' || symbol.scope === 'file') {
            const record = this.files.get(symbol.uri);
            if (record) {
                if (symbol.origin !== 'c') {
                    found = record.refs.filter((ref) => symbol.local
                        ? ref.local && ref.localKey === symbol.localKey
                        : !ref.local && ref.name === symbol.name);
                } else {
                    found = record.refs.filter((ref) => {
                        if (ref.local && symbol.localKey) return ref.localKey === symbol.localKey;
                        return ref.declIndex !== null && ref.declIndex !== undefined &&
                            ref.declIndex === symbol.declIndex;
                    });
                }
            }
        } else if (symbol.kind === 'field') {
            found = this.fieldReferences(symbol);
        } else {
            const keys = symbolKeys(symbol);
            const homes = new Set();
            for (const key of keys) {
                for (const definition of this.defs.get(key) || []) {
                    if (definition.project !== symbol.project || !definition.definition) continue;
                    if (definition.local || definition.scope === 'local') continue;
                    if (!['function', 'global', 'type', 'struct', 'union', 'enum', 'label'].includes(definition.kind)) continue;
                    homes.add(definition.binary || '');
                }
            }
            // Several binaries can each define their own `ovmain`.  When the
            // name is genuinely duplicated, keep references in the chosen
            // binary; a routine defined only in ds is called from every overlay.
            const scoped = homes.size > 1 && symbol.binary &&
                !['shared', 'include'].includes(symbol.binary);
            const seen = new Set();
            for (const key of keys) {
                for (const ref of this.refs.get(key) || []) {
                    if (ref.project !== symbol.project) continue;
                    if (scoped && ref.binary && ref.binary !== symbol.binary &&
                            !['shared', 'include'].includes(ref.binary)) continue;
                    const id = `${ref.uri}:${ref.offset}`;
                    if (seen.has(id)) continue;
                    seen.add(id);
                    if (ref.local) continue;
                    if (ref.declIndex !== null && ref.declIndex !== undefined) {
                        const declFile = this.files.get(ref.uri);
                        const declaration = declFile && declFile.byDeclIndex.get(ref.declIndex);
                        if (declaration) {
                            if (declaration.kind === 'field') continue;
                            if (declaration.local || declaration.scope === 'local') continue;
                            if (declaration.name !== symbol.name &&
                                    declaration.alias !== symbol.name) continue;
                        }
                    }
                    found.push(ref);
                }
            }
        }

        const seen = new Set();
        const out = [];
        if (includeDeclaration) {
            out.push(this.location(symbol));
            seen.add(`${symbol.uri}:${symbol.offset}`);
        }
        for (const ref of found) {
            const id = `${ref.uri}:${ref.offset}`;
            if (seen.has(id)) continue;
            seen.add(id);
            out.push({
                uri: ref.uri,
                range: {
                    start: { line: ref.row, character: ref.col },
                    end: { line: ref.row, character: ref.col + ref.length },
                },
            });
        }
        return out;
    }

    fieldReferences(symbol) {
        const keys = symbolKeys(symbol);
        const last = symbol.name.split('.').pop();
        const allFields = new Set();
        for (const key of [symbol.name, `.${last}`]) {
            for (const field of this.defs.get(key) || []) if (field.kind === 'field') allFields.add(field);
        }
        const ambiguous = new Set([...allFields].map((field) => field.container || field.name)).size > 1;
        const out = [];
        const seen = new Set();
        for (const key of keys) {
            for (const ref of this.refs.get(key) || []) {
                if (ref.project !== symbol.project) continue;
                const id = `${ref.uri}:${ref.offset}`;
                if (seen.has(id)) continue;
                seen.add(id);
                if (symbol.container && ref.container && ref.container !== symbol.container) continue;
                // A C member access only says `.field`; when several records
                // have that field name we cannot attribute it without a type.
                if (ambiguous && ref.member) continue;
                out.push(ref);
            }
        }
        return out;
    }

    location(symbol) {
        return {
            uri: symbol.uri,
            range: {
                start: { line: symbol.row, character: symbol.col },
                end: { line: symbol.row, character: symbol.col + symbol.length },
            },
        };
    }

    // -------------------------------------------------------------- includes

    resolveInclude(uri, offset) {
        const file = this.files.get(uri);
        if (!file) return null;
        const include = file.includes.find((item) =>
            offset >= item.offset && offset < item.offset + item.length);
        if (!include) return null;
        const projectDir = (() => {
            const parts = file.fsPath.split(path.sep);
            const at = parts.findIndex((part) => /^src_/.test(part));
            return at < 0 ? path.dirname(file.fsPath) : parts.slice(0, at + 1).join(path.sep);
        })();
        const candidates = [
            path.resolve(path.dirname(file.fsPath), include.target),
            path.resolve(projectDir, include.target),
            path.resolve(projectDir, 'include', include.target),
            path.resolve(projectDir, 'include', path.basename(include.target)),
        ];
        for (const candidate of candidates) {
            if (!fs.existsSync(candidate)) continue;
            const targetUri = uriOf(candidate);
            if (!this.files.has(targetUri)) this.updateFromDisk(targetUri);
            return { uri: targetUri, range: { start: { line: 0, character: 0 }, end: { line: 0, character: 0 } } };
        }
        return null;
    }

    // -------------------------------------------------------------- hover

    symbolAt(uri, offset) {
        const resolved = this.resolveAt(uri, offset);
        return resolved.length ? resolved[0] : null;
    }

    // -------------------------------------------------------------- symbols

    documentSymbols(uri) {
        const file = this.files.get(uri);
        if (!file) return [];
        return file.symbols.filter((symbol) =>
            symbol.definition && !symbol.local && !['local', 'parameter', 'field'].includes(symbol.kind))
            .map((symbol) => ({
                name: symbol.name,
                kind: symbolKind(symbol.kind),
                location: this.location(symbol),
                containerName: symbol.container || undefined,
            }));
    }

    workspaceSymbols(query) {
        const needle = String(query || '').toLowerCase();
        const out = [];
        for (const symbol of this.symbolsById.values()) {
            if (!symbol.definition || symbol.local) continue;
            if (['local', 'parameter', 'field'].includes(symbol.kind)) continue;
            if (needle && !symbol.name.toLowerCase().includes(needle)) continue;
            out.push({
                name: symbol.name,
                kind: symbolKind(symbol.kind),
                location: this.location(symbol),
                containerName: symbol.container || undefined,
            });
            if (out.length >= 200) break;
        }
        return out;
    }
}

// LSP SymbolKind values.
function symbolKind(kind) {
    switch (kind) {
    case 'function': return 12;
    case 'struct': case 'union': case 'enum': case 'type': return 5;
    case 'macro': case 'constant': return 14;
    case 'field': return 8;
    case 'enumMember': return 22;
    case 'parameter': case 'local': return 13;
    default: return 13;
    }
}

module.exports = { WorkspaceIndex, uriOf, fsPathOf, classify, collectFiles, symbolKind };
