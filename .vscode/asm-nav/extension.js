'use strict';
// Navigation and tooling for the generated C / NASM trees (``asm_<PROJECT>/``):
//   * Go to Definition / Find References from C into the NASM listings
//   * hover: address, sidecar name/note, vendor provenance
//   * Go to address, Name this routine (writes the sidecar), vendor diff
//   * Manx ``cc`` diagnostics on save, and a provenance CodeLens
const fs = require('fs');
const path = require('path');
const { execFile } = require('child_process');
const vscode = require('vscode');
const { labels, occurrences, addresses, routineStart, locate } = require('./scan');
const sidecar = require('./sidecar');

const SRC = 'asm_*/**/*.{asm,c}';
const WORD = /[A-Za-z_$?][\w$?]*/;
const C_SELECTOR = [{ language: 'c' }, { language: 'cpp' }];
const ANY_SELECTOR = [{ pattern: '**/asm_*/**/*.{c,asm}' }, ...C_SELECTOR];

let texts = new Map();   // uri string -> text (asm and c under asm_*)
let defs = new Map();    // label -> [{uri, row}]
let addrs = new Map();   // binary -> sorted [{addr, uri, row}]

const root = () => vscode.workspace.workspaceFolders[0].uri.fsPath;
const cfg = () => vscode.workspace.getConfiguration('wiz7AsmNav');

// ---------------------------------------------------------------- index

async function load(uri) {
    try {
        const bytes = await vscode.workspace.fs.readFile(uri);
        texts.set(uri.toString(), Buffer.from(bytes).toString('latin1'));
    } catch (e) {
        texts.delete(uri.toString());
    }
}

function reindex() {
    defs = new Map();
    addrs = new Map();
    for (const [key, text] of texts) {
        if (!key.endsWith('.asm')) continue;
        const uri = vscode.Uri.parse(key);
        for (const l of labels(text)) {
            if (!defs.has(l.name)) defs.set(l.name, []);
            defs.get(l.name).push({ uri, row: l.row });
        }
        const where = locate(uri.fsPath);
        if (!where) continue;
        if (!addrs.has(where.binary)) addrs.set(where.binary, []);
        for (const a of addresses(text)) addrs.get(where.binary).push({ ...a, uri });
    }
    for (const list of addrs.values()) list.sort((a, b) => a.addr - b.addr);
}

async function rebuild() {
    texts = new Map();
    const files = await vscode.workspace.findFiles(SRC, '**/node_modules/**');
    await Promise.all(files.map(load));
    reindex();
}

function nameAt(doc, pos) {
    const range = doc.getWordRangeAtPosition(pos, WORD);
    return range ? doc.getText(range) : null;
}

// Aztec spells C ``name`` as ``name_`` inside ``#asm`` blocks.
function resolve(name) {
    if (!name) return null;
    if (defs.has(name)) return name;
    const bare = name.replace(/_$/, '');
    return defs.has(bare) ? bare : null;
}

// Definitions of ``name`` visible from ``doc``: its own binary's when it has
// one (``ds`` and ``vinstall`` each carry their own ``aztec_open``), else all.
function hitsFor(name, doc) {
    const all = defs.get(name);
    const here = doc && locate(doc.fileName);
    const mine = here ? all.filter((h) => { const w = locate(h.uri.fsPath); return w && w.binary === here.binary; }) : [];
    return mine.length ? mine : all;
}

const sameBinary = (key, doc) => {
    const here = locate(doc.fileName);
    const there = locate(vscode.Uri.parse(key).fsPath);
    return !here || (there && there.binary === here.binary);
};

// ------------------------------------------------- sidecar / manifest data

const fileCache = new Map();

function readJson(file) {
    try {
        const mtime = fs.statSync(file).mtimeMs;
        const hit = fileCache.get(file);
        if (hit && hit.mtime === mtime) return hit.json;
        const json = JSON.parse(fs.readFileSync(file, 'utf8'));
        fileCache.set(file, { mtime, json });
        return json;
    } catch (e) {
        return null;
    }
}

const sidecarPath = (project) => path.join(root(), 'asm', 'sidecar', `${project}.json`);
const manifestPath = (project, binary) =>
    path.join(root(), '.cache', project, 'prebuild', `${binary}_aztec_mux.json`);
const seedPath = (where) =>
    path.join(root(), '.cache', where.project, 'prebuild', 'src', where.binary, `${where.label}.c`);

function sidecarName(where, addr) {
    const data = readJson(sidecarPath(where.project));
    const key = data && addr !== null ? sidecar.keyFor(data, where.binary, addr) : null;
    return key && data.binaries[where.binary].function_names
        ? { key, entry: data.binaries[where.binary].function_names[key] } : { key };
}

function manifestEntry(where) {
    const data = readJson(manifestPath(where.project, where.binary));
    return data && data.functions ? data.functions[where.label] : null;
}

// ---------------------------------------------------------------- hover

function describe(name, doc) {
    const hit = hitsFor(name, doc)[0];
    const text = texts.get(hit.uri.toString());
    const where = locate(hit.uri.fsPath);
    const addr = routineStart(text, hit.row);
    const md = new vscode.MarkdownString();
    md.appendMarkdown(`**${name}**`);
    if (where) md.appendMarkdown(` — \`${where.binary}\``);
    if (addr !== null) md.appendMarkdown(` · \`0x${addr.toString(16)}\``);
    if (addr === null) {
        md.appendCodeblock(text.split('\n')[hit.row].trim(), 'asm');
    }
    if (where) {
        const named = sidecarName(where, addr);
        if (named.entry) {
            md.appendMarkdown(`\n\nsidecar \`${named.key}\`: **${named.entry.name}**`);
            if (named.entry.note) md.appendMarkdown(`\n\n_${named.entry.note}_`);
        }
        const m = where.label === name ? manifestEntry(where) : manifestEntry({ ...where, label: name });
        if (m) {
            md.appendMarkdown(`\n\nvendor \`${m.file}\` (${m.source_version}) · cc ${m.compiler} · ` +
                `${m.extracted ? 'routine slice' : 'whole module'} · ${m.original_length} bytes`);
        }
    }
    return md;
}

// ------------------------------------------------------- go to address

async function goToAddress() {
    const active = vscode.window.activeTextEditor;
    const here = active && locate(active.document.fileName);
    const input = await vscode.window.showInputBox({
        prompt: 'Address (hex), optionally binary:address — e.g. 4b46 or vinstall:2d86',
        placeHolder: `${here ? here.binary : 'ds'}:4b46`,
    });
    if (!input) return;
    const m = /^(?:([\w]+):)?(?:0x)?([0-9a-fA-F]+)$/.exec(input.trim());
    if (!m) return vscode.window.showErrorMessage(`not an address: ${input}`);
    const binary = m[1] || (here ? here.binary : 'ds');
    const target = parseInt(m[2], 16);
    const list = addrs.get(binary);
    if (!list) return vscode.window.showErrorMessage(`no listing for binary ${binary}`);
    let best = null;                       // greatest address <= target
    for (const a of list) if (a.addr <= target) best = a; else break;
    if (!best) return vscode.window.showErrorMessage(`0x${target.toString(16)} precedes ${binary}`);
    const doc = await vscode.workspace.openTextDocument(best.uri);
    const range = new vscode.Range(best.row, 0, best.row, 0);
    await vscode.window.showTextDocument(doc, { selection: range });
    if (best.addr !== target) {
        vscode.window.setStatusBarMessage(
            `0x${target.toString(16)} is inside the instruction at 0x${best.addr.toString(16)}`, 4000);
    }
}

// ------------------------------------------------- name this routine

async function nameRoutine() {
    const editor = vscode.window.activeTextEditor;
    if (!editor) return;
    const name = resolve(nameAt(editor.document, editor.selection.active));
    if (!name) return vscode.window.showErrorMessage('put the cursor on a routine label');
    const hit = hitsFor(name, editor.document)[0];
    const where = locate(hit.uri.fsPath);
    const addr = routineStart(texts.get(hit.uri.toString()), hit.row);
    if (!where || addr === null) return vscode.window.showErrorMessage(`${name} has no listing address`);
    const data = readJson(sidecarPath(where.project));
    if (!data) return vscode.window.showErrorMessage(`cannot read ${sidecarPath(where.project)}`);
    const { key, entry } = sidecarName(where, addr);
    if (!key) return vscode.window.showErrorMessage(`binary ${where.binary} not in the sidecar`);
    const newName = await vscode.window.showInputBox({
        prompt: `Name for ${where.binary} 0x${addr.toString(16)} (sidecar key ${key})`,
        value: entry ? entry.name : '',
        validateInput: (v) => /^[A-Za-z_]\w*$/.test(v) ? null : 'a C-style identifier',
    });
    if (!newName) return;
    const note = await vscode.window.showInputBox({
        prompt: 'Note (optional)', value: entry && entry.note ? entry.note : '' });
    if (note === undefined) return;
    const file = sidecarPath(where.project);
    const next = sidecar.setFunctionName(fs.readFileSync(file, 'utf8'), where.binary, key,
        note ? { name: newName, note } : { name: newName });
    fs.writeFileSync(file, next);
    vscode.window.showInformationMessage(
        `${key} → ${newName} in ${path.basename(file)}. Rebuild (make build ${where.project} ${where.binary}) to apply.`);
}

// ------------------------------------------------------------ vendor diff

async function diffVendor(uri) {
    uri = uri || (vscode.window.activeTextEditor && vscode.window.activeTextEditor.document.uri);
    const where = uri && locate(uri.fsPath);
    if (!where || where.ext !== 'c') return vscode.window.showErrorMessage('open a generated .c file');
    const seed = seedPath(where);
    if (!fs.existsSync(seed)) {
        return vscode.window.showErrorMessage(`no vendor seed at ${seed} — run make prebuild ${where.project}`);
    }
    await vscode.commands.executeCommand('vscode.diff', vscode.Uri.file(seed), uri,
        `vendor seed ↔ ${where.label}.c`);
}

// ------------------------------------------------------------ Manx cc

let diagnostics;
const running = new Map();   // fsPath -> rerun requested?

function toDiagnostics(doc, stdout) {
    const out = [];
    for (const line of stdout.split('\n')) {
        const m = /^(.+?):(\d+):(\d+): (error|warning): (.*)$/.exec(line);
        if (!m) continue;
        const row = Math.min(+m[2] - 1, doc.lineCount - 1);
        const text = doc.lineAt(row).text;
        const col = Math.min(+m[3] - 1, text.length);
        const word = /^[\w$?]+/.exec(text.slice(col));
        const range = new vscode.Range(row, col, row, col + (word ? word[0].length : 1));
        const d = new vscode.Diagnostic(range, m[5],
            m[4] === 'error' ? vscode.DiagnosticSeverity.Error : vscode.DiagnosticSeverity.Warning);
        d.source = 'Manx cc';
        out.push(d);
    }
    return out;
}

function checkFile(doc) {
    const file = doc.fileName;
    if (running.has(file)) { running.set(file, true); return; }
    running.set(file, false);
    const done = new Promise((resolveRun) => {
        execFile(cfg().get('python'), [path.join(root(), '.vscode', 'cccheck.py'), file],
            { cwd: root(), timeout: 180000, maxBuffer: 1 << 24 }, (err, stdout, stderr) => {
                const parsed = toDiagnostics(doc, stdout || '');
                diagnostics.set(doc.uri, parsed);
                if (err && !parsed.length) {
                    vscode.window.showErrorMessage(`Manx cc check failed: ${(stderr || err.message).slice(-300)}`);
                }
                const again = running.get(file);
                running.delete(file);
                resolveRun();
                if (again) checkFile(doc);
            });
    });
    vscode.window.setStatusBarMessage('$(sync~spin) Manx cc…', done);
}

const isGeneratedC = (doc) => doc.uri.scheme === 'file' && /asm_[^/\\]+[/\\][^/\\]+[/\\][^/\\]+\.c$/.test(doc.fileName);

// ---------------------------------------------------------------- lens

function provenance(doc) {
    const where = locate(doc.fileName);
    const m = where && manifestEntry(where);
    if (m) {
        return `vendor-recovered from ${m.file} (${m.source_version}, cc ${m.compiler}) · ` +
            `${m.extracted ? 'routine slice' : 'whole module'} · ${m.original_length} bytes`;
    }
    return /auto-generated/.test(doc.lineAt(0).text) ? 'generated (decompiled)' : 'hand-written C';
}

// ------------------------------------------------------------- activate

function activate(context) {
    diagnostics = vscode.languages.createDiagnosticCollection('manx-cc');
    const ready = rebuild();
    const watcher = vscode.workspace.createFileSystemWatcher(SRC);
    const touch = async (uri) => { await load(uri); reindex(); };
    watcher.onDidChange(touch);
    watcher.onDidCreate(touch);
    watcher.onDidDelete((uri) => { texts.delete(uri.toString()); reindex(); });

    // Documents already open when the window loads never fire onDidOpen.
    if (cfg().get('checkOnOpen')) {
        for (const doc of vscode.workspace.textDocuments) if (isGeneratedC(doc)) checkFile(doc);
    }

    context.subscriptions.push(
        watcher, diagnostics,
        vscode.languages.registerDefinitionProvider(C_SELECTOR, {
            async provideDefinition(doc, pos) {
                await ready;
                const name = resolve(nameAt(doc, pos));
                return name && hitsFor(name, doc).map((h) =>
                    new vscode.Location(h.uri, new vscode.Position(h.row, 0)));
            },
        }),
        vscode.languages.registerReferenceProvider(C_SELECTOR, {
            async provideReferences(doc, pos, ctx) {
                await ready;
                const typed = nameAt(doc, pos);
                if (!typed) return [];
                const name = defs.has(typed) ? typed : typed.replace(/_$/, '');
                const out = [];
                for (const [key, text] of texts) {
                    if (!sameBinary(key, doc)) continue;
                    // ``name_`` is the same symbol inside a C file's ``#asm`` block.
                    const spellings = key.endsWith('.c') ? [name, name + '_'] : [name];
                    for (const spelling of spellings) {
                        for (const o of occurrences(text, spelling)) {
                            if (o.def && !ctx.includeDeclaration) continue;
                            out.push(new vscode.Location(vscode.Uri.parse(key),
                                new vscode.Range(o.row, o.col, o.row, o.col + spelling.length)));
                        }
                    }
                }
                return out;
            },
        }),
        vscode.languages.registerHoverProvider(ANY_SELECTOR, {
            async provideHover(doc, pos) {
                await ready;
                const name = resolve(nameAt(doc, pos));
                return name ? new vscode.Hover(describe(name, doc)) : null;
            },
        }),
        vscode.languages.registerCodeLensProvider(
            [{ pattern: '**/asm_*/*/*.c' }, { pattern: '**/asm_*/*/*/*.c' }], {
                provideCodeLenses(doc) {
                    const top = new vscode.Range(0, 0, 0, 0);
                    return [
                        new vscode.CodeLens(top, { title: provenance(doc),
                            command: 'wiz7AsmNav.diffVendor', arguments: [doc.uri] }),
                        new vscode.CodeLens(top, { title: '$(check) Manx cc',
                            command: 'wiz7AsmNav.check', arguments: [doc.uri] }),
                    ];
                },
            }),
        vscode.workspace.onDidSaveTextDocument((doc) => {
            if (cfg().get('checkOnSave') && isGeneratedC(doc)) checkFile(doc);
        }),
        vscode.workspace.onDidOpenTextDocument((doc) => {
            if (cfg().get('checkOnOpen') && isGeneratedC(doc)) checkFile(doc);
        }),
        vscode.workspace.onDidCloseTextDocument((doc) => diagnostics.delete(doc.uri)),
        vscode.commands.registerCommand('wiz7AsmNav.reindex', rebuild),
        vscode.commands.registerCommand('wiz7AsmNav.goToAddress', async () => { await ready; return goToAddress(); }),
        vscode.commands.registerCommand('wiz7AsmNav.nameRoutine', async () => { await ready; return nameRoutine(); }),
        vscode.commands.registerCommand('wiz7AsmNav.diffVendor', diffVendor),
        vscode.commands.registerCommand('wiz7AsmNav.check', async (uri) => {
            const doc = uri
                ? await vscode.workspace.openTextDocument(uri)
                : vscode.window.activeTextEditor && vscode.window.activeTextEditor.document;
            if (doc && isGeneratedC(doc)) checkFile(doc);
            else vscode.window.showErrorMessage('open a generated .c file');
        }),
    );
}

module.exports = { activate };
