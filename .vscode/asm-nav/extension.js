'use strict';
// Navigation and tooling for the generated C / NASM trees (``src_<PROJECT>/``):
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

const SRC = 'src_*/**/*.{asm,c}';
const SHARED_DIR = 'shared';   // src_<PROJECT>/shared/ holds routines shared between binaries
const WORD = /[A-Za-z_$?][\w$?]*/;
const C_SELECTOR = [{ language: 'c' }, { language: 'cpp' }];
const ANY_SELECTOR = [{ pattern: '**/src_*/**/*.{c,asm}' }, ...C_SELECTOR];

let texts = new Map();   // uri string -> text (asm and c under src_*)
let defs = new Map();    // label -> [{uri, row}]
let addrs = new Map();   // binary -> sorted [{addr, uri, row}]

const root = () => vscode.workspace.workspaceFolders[0].uri.fsPath;
const cfg = () => vscode.workspace.getConfiguration('PHOONZANGAsmNav');

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

const sidecarPath = (project) => path.join(root(), 'disassembler', 'sidecar', `${project}.json`);
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

// A vendor module's file is named after its source (lib/aztec/modules.py):
// ``aztec_croot`` is croot.c.  Two vendor files of one stem take their vendor
// directory too: ``aztec_misc_lmalloc`` (lmalloc.c), ``aztec_dos20_lmalloc``
// (lmalloc.asm).
function moduleEntry(where) {
    const data = readJson(manifestPath(where.project, where.binary));
    if (!data || !data.functions || !where.label.startsWith('aztec_')) return null;
    const entries = Object.values(data.functions);
    const clean = (s) => s.toLowerCase().replace(/[^a-z0-9_]+/g, '_');
    const stemOf = (f) => clean(f.replace(/\.[^.]*$/, ''));
    const want = where.label.slice('aztec_'.length);
    const plain = entries.find((e) => stemOf(e.file) === want);
    if (plain) return plain;
    const srcRoot = path.join(root(), 'disassembler', 'dos_compilers', 'aztec_src');
    return entries.find((e) => {
        const stem = stemOf(e.file);
        if (!want.endsWith('_' + stem)) return false;
        const dir = want.slice(0, -stem.length - 1);
        return fs.existsSync(path.join(srcRoot, e.source_version, dir, e.file));
    }) || null;
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
    if (where && where.binary === SHARED_DIR) {
        const key = routineKey(where);
        const data = readJson(sidecarPath(where.project));
        const entry = key && data && data.routines && data.routines[key];
        if (entry) {
            md.appendMarkdown(`\n\nsidecar routine \`${key}\`: **${entry.name}**`);
            if (entry.note) md.appendMarkdown(`\n\n_${entry.note}_`);
        }
    } else if (where) {
        const named = sidecarName(where, addr);
        if (named.entry) {
            md.appendMarkdown(`\n\nsidecar \`${named.key}\`: **${named.entry.name}**`);
            if (named.entry.note) md.appendMarkdown(`\n\n_${named.entry.note}_`);
        }
        const m = where.label === name ? manifestEntry(where) : manifestEntry({ ...where, label: name });
        if (m) {
            md.appendMarkdown(`\n\nvendor \`${m.file}\` (${m.source_version}) · cc ${m.compiler} · ` +
                `routine ${m.original_length} bytes`);
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

const TAGGED_LABEL = /_[G-V]{4}(?:_[0-9a-f]{4,5})?$/;

// Sidecar ``routines`` key for a shared routine: its content-tagged label, or the
// key it was already named under (the file is then called by that name).
function routineKey(where) {
    if (TAGGED_LABEL.test(where.label)) return where.label;
    const data = readJson(sidecarPath(where.project));
    const routines = (data && data.routines) || {};
    return Object.keys(routines).find((k) => routines[k].name === where.label) || null;
}

async function nameSharedRoutine(where, suggestion) {
    const key = routineKey(where);
    if (!key) return vscode.window.showErrorMessage(`${where.label} has no content tag; cannot key it in routines`);
    const file = sidecarPath(where.project);
    if (!fs.existsSync(file)) return vscode.window.showErrorMessage(`cannot read ${file}`);
    const text = fs.readFileSync(file, 'utf8');
    const entry = sidecar.routines(text)[key];
    const newName = await vscode.window.showInputBox({
        prompt: `Name for shared routine ${key}`,
        value: suggestion || (entry ? entry.name : ''),
        validateInput: (v) => /^[A-Za-z_]\w*$/.test(v) ? null : 'a C-style identifier',
    });
    if (!newName) return;
    const note = await vscode.window.showInputBox({
        prompt: 'Note (optional)', value: entry && entry.note ? entry.note : '' });
    if (note === undefined) return;
    fs.writeFileSync(file, sidecar.setRoutine(text, key, note ? { name: newName, note } : { name: newName }));
    vscode.window.showInformationMessage(
        `${key} → ${newName} in ${path.basename(file)}. Rebuild (make build ${where.project}) to apply.`);
}

async function nameRoutine(uri, suggestion) {
    let doc;
    let name;
    if (uri) {
        doc = { fileName: uri.fsPath };
        name = resolve(locate(uri.fsPath).label);
    } else {
        const editor = vscode.window.activeTextEditor;
        if (!editor) return;
        doc = editor.document;
        name = resolve(nameAt(doc, editor.selection.active));
    }
    if (!name) return vscode.window.showErrorMessage('put the cursor on a routine label');
    const hit = hitsFor(name, doc)[0];
    const where = locate(hit.uri.fsPath);
    if (where && where.binary === SHARED_DIR) return nameSharedRoutine(where, suggestion);
    const addr = routineStart(texts.get(hit.uri.toString()), hit.row);
    if (!where || addr === null) return vscode.window.showErrorMessage(`${name} has no listing address`);
    const data = readJson(sidecarPath(where.project));
    if (!data) return vscode.window.showErrorMessage(`cannot read ${sidecarPath(where.project)}`);
    const { key, entry } = sidecarName(where, addr);
    if (!key) return vscode.window.showErrorMessage(`binary ${where.binary} not in the sidecar`);
    const newName = await vscode.window.showInputBox({
        prompt: `Name for ${where.binary} 0x${addr.toString(16)} (sidecar key ${key})`,
        value: suggestion || (entry ? entry.name : ''),
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
const checked = new Map();   // fsPath -> document version last checked
const shown = new Map();     // uri string -> signature of diagnostics last published

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

function checkFile(doc, force) {
    const file = doc.fileName;
    if (!force && checked.get(file) === doc.version) return;
    checked.set(file, doc.version);
    if (running.has(file)) { running.set(file, true); return; }
    running.set(file, false);
    const done = new Promise((resolveRun) => {
        execFile(cfg().get('python'), [path.join(root(), '.vscode', 'cccheck.py'), file],
            { cwd: root(), timeout: 180000, maxBuffer: 1 << 24 }, (err, stdout, stderr) => {
                const parsed = toDiagnostics(doc, stdout || '');
                // Republishing identical diagnostics still fires onDidChangeDiagnostics, which
                // repaints open views (the References panel) and dismisses their context menus.
                const sig = JSON.stringify(parsed.map((d) =>
                    [d.range.start.line, d.range.start.character, d.severity, d.message]));
                if (shown.get(doc.uri.toString()) !== sig) {
                    shown.set(doc.uri.toString(), sig);
                    diagnostics.set(doc.uri, parsed);
                }
                if (err && !parsed.length) {
                    vscode.window.showErrorMessage(`Manx cc check failed: ${(stderr || err.message).slice(-300)}`);
                }
                const again = running.get(file);
                running.delete(file);
                resolveRun();
                if (again) checkFile(doc, true);
            });
    });
    vscode.window.setStatusBarMessage('$(sync~spin) Manx cc…', done);
}

const isGeneratedC = (doc) => doc.uri.scheme === 'file' && /src_[^/\\]+[/\\][^/\\]+[/\\][^/\\]+\.c$/.test(doc.fileName);

// ------------------------------------------------------- make C (Claude)

// An interactive Claude session in its own terminal tab, so the conversation is
// visible.  Claude ends with a suggested routine name; naming stays manual.
const converting = new Map();   // asm path -> terminal

async function makeC(uri) {
    uri = uri || (vscode.window.activeTextEditor && vscode.window.activeTextEditor.document.uri);
    const where = uri && locate(uri.fsPath);
    if (!where) return vscode.window.showErrorMessage('open a routine .asm under src_<PROJECT>/<binary>/');
    const dir = path.dirname(uri.fsPath);
    const asmFile = path.join(dir, `${where.label}.asm`);
    const cFile = path.join(dir, `${where.label}.c`);
    if (!fs.existsSync(asmFile)) return vscode.window.showErrorMessage(`no ${asmFile}`);
    if (converting.has(asmFile)) { converting.get(asmFile).show(); return; }
    if (fs.existsSync(cFile)) {
        const pick = await vscode.window.showWarningMessage(
            `${path.basename(cFile)} exists. Have Claude redo it?`, { modal: true }, 'Redo');
        if (pick !== 'Redo') return;
    }
    const rel = (f) => path.relative(root(), f);

    // Renaming goes through the sidecar, as nameRoutine does; the key is resolved here
    // so Claude never has to work it out.
    const shared = where.binary === SHARED_DIR;
    let key;
    if (shared) {
        key = routineKey(where);
    } else {
        const asmText = fs.readFileSync(asmFile, 'utf8');
        const row = asmText.split('\n').findIndex((l) => l.startsWith(`${where.label}:`));
        const addr = row < 0 ? null : routineStart(asmText, row);
        key = addr === null ? null : sidecarName(where, addr).key;
    }
    if (!key) return vscode.window.showErrorMessage(`no sidecar key for ${where.label}`);
    const build = shared ? `make build ${where.project}` : `make build`;
    const table = shared ? 'the top-level `routines` object' : `\`binaries.${where.binary}.function_names\``;

    const sidecar = readJson(sidecarPath(where.project)) || {};
    const flags = sidecar.compiler_flags || {};
    // An overlay or shared routine runs in the host's data segment, so its data names are
    // the host's; the host is `ds` when present, else the first MZ (lib/link.py host_name).
    const bins = sidecar.binaries || {};
    const own = bins[where.binary];
    const dataOwner = own && own.type === 'mz' ? where.binary
        : ('ds' in bins ? 'ds' : Object.keys(bins).sort().find((b) => bins[b].type === 'mz'));
    const flagList = [`default \`${(flags.default || []).join(' ')}\``].concat(
        Object.entries(flags.prefixes || {}).map(([p, f]) => `\`${p}\` → \`${f.join(' ')}\``)).join('; ');

    const prompt = [
        `Convert ${rel(asmFile)} to K&R syntax C, writing ${rel(cFile)}. ` +
            `It must compile to byte-exact matching asm; never hand-edit the asm.`,
        `Build commands: \`make rebuild\` (repo root) is the sole pass/fail gate; the only other is ` +
            `\`${build}\`, for renaming. Do not look for, read, or run any other build commands, Makefiles, or scripts.`,
        `Compiler flags come from the routine name's longest matching prefix: ${flagList}.`,
        `To rename to NAME: (1) in ${rel(sidecarPath(where.project))}, set \`"${key}": {"name": "NAME"}\` under ` +
            `${table} (keep any "note", keep keys sorted); (2) run \`${build}\`, which regenerates the asm as ` +
            `NAME.asm; (3) rename the C file to NAME.c and the function in it (and any C callers) to NAME; ` +
            `(4) run \`make rebuild\`.`,
        `Name the data too. Give parameters and locals descriptive names in the C itself. For each ` +
            `address-named global (\`bss_XXXX\`/\`dseg_XXXX\`) the routine uses, set ` +
            `\`"XXXX": {"name": "NAME", "note": "..."}\` under \`binaries.${dataOwner}.data_names\` (keyed by DS ` +
            `offset, keep keys sorted; skip any already named there), run \`${build}\`, change the C's \`extern\` ` +
            `and uses to NAME, and run \`make rebuild\`. A C still spelling a named global by address fails ` +
            `the link and gives the build's name for it.`,
        `Name every other address-named symbol it references the same way, including those only in ` +
            `\`extrn\` lines of #asm: each code-segment global (\`cseg_XXXX\`) under ` +
            `\`binaries.${where.binary}.code_data_names\` (keyed by CS offset, same form and rules), and each ` +
            `auto-named routine it calls (e.g. \`*_loc_XXXX\`) under ${table} as in renaming (keyed like the ` +
            `routine's own entry, with a "note"). Give #asm stack arguments and locals \`equ\` names. Then run ` +
            `\`${build}\`, update the C, and run \`make rebuild\`. No address-named symbol may remain in the C.`,
        `Once it matches, give the routine a descriptive lowercase_underscore name this way, keeping any prefix ` +
            `its flags need. Your final message: only the name.`,
    ].join('\n\n');
    // --allowedTools is variadic: a trailing prompt would be swallowed as another tool name
    // (the session then starts empty), so the prompt goes first and the value is attached.
    const args = [prompt, '--permission-mode', 'auto',
        `--allowedTools=Read,Write,Edit,Bash(make rebuild),Bash(${build})`];
    const model = cfg().get('claudeModel');
    if (model) args.push('--model', model);

    // No IDE integration: don't auto-connect, and drop the port the Claude VS Code
    // extension injects into integrated terminals.
    const term = vscode.window.createTerminal({
        name: `Claude: ${where.label}`, cwd: root(), shellPath: cfg().get('claude'), shellArgs: args,
        env: { CLAUDE_CODE_AUTO_CONNECT_IDE: 'false', CLAUDE_CODE_SSE_PORT: null },
        location: vscode.TerminalLocation.Editor,
    });
    converting.set(asmFile, term);
    term.show();
    const sub = vscode.window.onDidCloseTerminal(async (t) => {
        if (t !== term) return;
        sub.dispose();
        converting.delete(asmFile);
        if (!fs.existsSync(cFile)) return;
        const doc = await vscode.workspace.openTextDocument(vscode.Uri.file(cFile));
        await vscode.window.showTextDocument(doc, { preview: false });
        if (isGeneratedC(doc)) checkFile(doc, true);
    });
}

// ---------------------------------------------------------------- lens

function provenance(doc) {
    const where = locate(doc.fileName);
    const m = where && moduleEntry(where);
    if (m) {
        return `vendor module ${m.file} (${m.source_version}, cc ${m.compiler}), ` +
            `compiled whole into this fragment`;
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
            [{ pattern: '**/src_*/*/*.c' }, { pattern: '**/src_*/*/*/*.c' }], {
                provideCodeLenses(doc) {
                    const top = new vscode.Range(0, 0, 0, 0);
                    return [
                        new vscode.CodeLens(top, { title: provenance(doc),
                            command: 'PHOONZANGAsmNav.diffVendor', arguments: [doc.uri] }),
                        new vscode.CodeLens(top, { title: '$(check) Manx cc',
                            command: 'PHOONZANGAsmNav.check', arguments: [doc.uri] }),
                    ];
                },
            }),
        vscode.workspace.onDidSaveTextDocument((doc) => {
            if (cfg().get('checkOnSave') && isGeneratedC(doc)) checkFile(doc, true);
        }),
        vscode.workspace.onDidOpenTextDocument((doc) => {
            if (cfg().get('checkOnOpen') && isGeneratedC(doc)) checkFile(doc);
        }),
        // The References panel opens and closes documents constantly, so don't clear
        // diagnostics here (that would churn views too); just forget the checked version.
        vscode.workspace.onDidCloseTextDocument((doc) => checked.delete(doc.fileName)),
        vscode.commands.registerCommand('PHOONZANGAsmNav.reindex', rebuild),
        vscode.commands.registerCommand('PHOONZANGAsmNav.goToAddress', async () => { await ready; return goToAddress(); }),
        vscode.commands.registerCommand('PHOONZANGAsmNav.nameRoutine', async () => { await ready; return nameRoutine(); }),
        vscode.commands.registerCommand('PHOONZANGAsmNav.diffVendor', diffVendor),
        vscode.commands.registerCommand('PHOONZANGAsmNav.makeC', makeC),
        vscode.commands.registerCommand('PHOONZANGAsmNav.check', async (uri) => {
            const doc = uri
                ? await vscode.workspace.openTextDocument(uri)
                : vscode.window.activeTextEditor && vscode.window.activeTextEditor.document;
            if (doc && isGeneratedC(doc)) checkFile(doc, true);
            else vscode.window.showErrorMessage('open a generated .c file');
        }),
    );
}

module.exports = { activate };
