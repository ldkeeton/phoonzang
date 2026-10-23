'use strict';
// Navigation and tooling for the generated C / NASM trees (``src_<PROJECT>/``):
//   * Go to Definition / Find References from C (and Manx assembly, ``.s``) into
//     the NASM listings (``.asm``)
//   * hover: address, sidecar name/note, vendor provenance
//   * Go to address, Name this routine (writes the sidecar), vendor diff
//   * Manx ``cc``/``as`` diagnostics on save, and a provenance CodeLens
const fs = require('fs');
const path = require('path');
const { execFile, spawn } = require('child_process');
const vscode = require('vscode');
const { labels, occurrences, addresses, routineStart, locate } = require('./scan');
const sidecar = require('./sidecar');

const SRC = 'src_*/**/*.{asm,c,s}';
const SHARED_DIR = 'shared';   // src_<PROJECT>/shared/ holds routines shared between binaries
const WORD = /[A-Za-z_$?][\w$?]*/;
// A routine's source: C, or Manx assembly (``.s``, built by ``as``).
const S_PATTERN = '**/src_*/**/*.s';
const C_SELECTOR = [{ language: 'c' }, { language: 'cpp' }, { pattern: S_PATTERN }];
const ANY_SELECTOR = [{ pattern: '**/src_*/**/*.{c,s,asm}' }, ...C_SELECTOR];

let texts = new Map();   // uri string -> text (asm, c and s under src_*)
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

// Aztec spells C ``name`` as ``name_`` in assembly (``#asm`` blocks, ``.s``).
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
    path.join(root(), '.cache', where.project, 'prebuild', 'src', where.binary, `${where.label}.${where.ext}`);

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
        const { key, entry } = sharedEntry(where) || {};
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

// A shared routine's sidecar ``{key, entry}``: its ``routines`` entry, else the
// ``function_names`` entry of a binary whose name the shared file took.  Null
// when neither names it.
function sharedEntry(where) {
    const data = readJson(sidecarPath(where.project)) || {};
    const key = routineKey(where);
    if (key) return { key, entry: (data.routines || {})[key] || null };
    for (const b of Object.values(data.binaries || {})) {
        const names = b.function_names || {};
        const hit = Object.keys(names).find((k) => names[k].name === where.label);
        if (hit) return { key: hit, entry: names[hit] };
    }
    return null;
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
    if (!where || !SOURCE_EXT.has(where.ext)) return vscode.window.showErrorMessage('open a generated .c or .s file');
    const seed = seedPath(where);
    if (!fs.existsSync(seed)) {
        return vscode.window.showErrorMessage(`no vendor seed at ${seed} — run make prebuild ${where.project}`);
    }
    await vscode.commands.executeCommand('vscode.diff', vscode.Uri.file(seed), uri,
        `vendor seed ↔ ${where.label}.${where.ext}`);
}

// ------------------------------------------------------------ Manx cc / as

let diagnostics;
const running = new Map();   // fsPath -> state of the check in flight
const checked = new Map();   // fsPath -> document version last checked
const shown = new Map();     // uri string -> signature of diagnostics last published

const mtimeOf = (file) => {
    try { return fs.statSync(file).mtimeMs; } catch (e) { return null; }
};

// Drop everything remembered about ``uri``: its problems, and the version it was
// last checked at.  Called when the file is renamed or deleted, so its warnings
// (and a recreated file's old signature) do not outlive it.
function forget(uri) {
    diagnostics.delete(uri);
    shown.delete(uri.toString());
    checked.delete(uri.fsPath);
    texts.delete(uri.toString());
}

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
        d.source = /\.s$/.test(doc.fileName) ? 'Manx as' : 'Manx cc';
        out.push(d);
    }
    return out;
}

function checkFile(doc, force) {
    const file = doc.fileName;
    if (!force && checked.get(file) === doc.version) return;
    checked.set(file, doc.version);
    if (running.has(file)) {
        const state = running.get(file);
        state.again = true;
        state.doc = doc;
        return;
    }
    const started = mtimeOf(file);
    const state = { again: false, doc };
    running.set(file, state);
    const done = new Promise((resolveRun) => {
        execFile(cfg().get('python'), [path.join(root(), '.vscode', 'cccheck.py'), file],
            { cwd: root(), timeout: 180000, maxBuffer: 1 << 24 }, (err, stdout, stderr) => {
                const key = doc.uri.toString();
                if (fs.existsSync(file)) {
                    const parsed = toDiagnostics(doc, stdout || '');
                    // Republishing identical diagnostics still fires onDidChangeDiagnostics, which
                    // repaints open views (the References panel) and dismisses their context menus.
                    const sig = JSON.stringify(parsed.map((d) =>
                        [d.range.start.line, d.range.start.character, d.severity, d.message]));
                    if (shown.get(key) !== sig) {
                        shown.set(key, sig);
                        diagnostics.set(doc.uri, parsed);
                    }
                    if (err && !parsed.length) {
                        vscode.window.showErrorMessage(`Manx cc check failed: ${(stderr || err.message).slice(-300)}`);
                    }
                } else {
                    // Renamed or deleted while the compiler ran: don't publish for a
                    // file that is gone (a rename may already be at its new path).
                    forget(doc.uri);
                }
                if (running.get(file) === state) running.delete(file);
                resolveRun();
                // A save and its file-watcher event arrive as two requests, but the
                // file is the same in both; only rerun when it really changed.
                if (state.again && fs.existsSync(file) && mtimeOf(file) !== started) {
                    checkFile(state.doc, true);
                }
            });
    });
    vscode.window.setStatusBarMessage(`$(sync~spin) Manx ${/\.s$/.test(file) ? 'as' : 'cc'}…`, done);
}

const SOURCE_EXT = new Set(['c', 's']);
// A routine's .c or .s under src_<PROJECT>/<binary>/ (or a band folder beneath it).
const isGeneratedC = (doc) => doc.uri.scheme === 'file' &&
    /src_[^/\\]+[/\\][^/\\]+[/\\](?:[^/\\]+[/\\])?[^/\\]+\.[cs]$/.test(doc.fileName);

// ------------------------------------------------------- make C

// An interactive agent session in its own terminal tab, so the conversation is
// visible.  The agent ends with a suggested routine name; naming stays manual.
// Each invocation gets its own tab, so Claude and OpenCode can work side by side.

// The CLI invocation and the prompt differ: each agent gets a prompt shaped for
// how it works.  prepareMakeC resolves the routine and supplies both.
const AGENTS = {
    claude: {
        label: 'Claude',
        prompt: claudePrompt,
        cli: () => cfg().get('claude'),
        model: () => cfg().get('claudeModel'),
        // --allowedTools is variadic: a trailing prompt would be swallowed as another
        // tool name (the session then starts empty), so the prompt goes first.
        args(prompt, model) {
            const args = [prompt, '--permission-mode', 'auto',
                '--allowedTools=Read,Write,Edit,Bash(make rebuild),Bash(make name:*),Bash(make refs:*)'];
            if (model) args.push('--model', model);
            return args;
        },
        // Headless, for a batch: one --print session per routine, streamed as JSON so
        // the conversation can still be shown as it happens.
        batchArgs(prompt, model) {
            const args = ['-p', prompt, '--output-format', 'stream-json', '--verbose',
                '--permission-mode', 'auto',
                '--allowedTools=Read,Write,Edit,Bash(make rebuild),Bash(make name:*),Bash(make refs:*)'];
            if (model) args.push('--model', model);
            return args;
        },
        format: formatClaudeEvent,
        // No IDE integration: don't auto-connect, and drop the port the Claude VS Code
        // extension injects into integrated terminals.
        env: { CLAUDE_CODE_AUTO_CONNECT_IDE: 'false', CLAUDE_CODE_SSE_PORT: null },
    },
    opencode: {
        label: 'OpenCode',
        prompt: claudePrompt,
        cli: () => cfg().get('opencode'),
        model: () => cfg().get('opencodeModel'),
        // Interactive TUI, with the prompt as its first message.
        args(prompt, model) {
            const args = ['--prompt', prompt, '--auto'];
            if (model) args.push('--model', model);
            return args;
        },
        // Headless, for a batch: `run` prints the conversation and exits when done.
        // --standalone: by default `run` goes through the shared background service,
        // which works in whatever directory that service started in (not our cwd).
        // `run` also ignores the model last picked in the TUI and falls back to a free
        // default, so take the TUI's most recent one when none is configured.
        batchArgs(prompt, model) {
            const args = ['run', prompt, '--auto', '--standalone'];
            if (!model) {
                const state = readJson(path.join(require('os').homedir(),
                    '.local', 'state', 'opencode', 'model.json'));
                const recent = state && (state.recent || [])[0];
                if (recent) model = `${recent.providerID}/${recent.modelID}`;
            }
            if (model) args.push('--model', model);
            return args;
        },
        format: (line) => ({ text: line }),
        env: {},
    },
};

// One line of Claude's stream-json as readable text; `result` is the final message.
function formatClaudeEvent(line) {
    let ev;
    try { ev = JSON.parse(line); } catch (e) { return { text: line }; }
    const content = (ev.message && ev.message.content) || [];
    if (ev.type === 'assistant') {
        return { text: content.map((c) => {
            if (c.type === 'text') return c.text;
            if (c.type !== 'tool_use') return '';
            const input = c.input || {};
            const what = input.command || input.file_path || input.pattern || '';
            return `\x1b[36m▸ ${c.name}\x1b[0m ${String(what).split('\n')[0].slice(0, 200)}`;
        }).filter(Boolean).join('\n') };
    }
    if (ev.type === 'user') {
        const failed = content.filter((c) => c.type === 'tool_result' && c.is_error);
        return { text: failed.map((c) => {
            const body = typeof c.content === 'string' ? c.content : JSON.stringify(c.content);
            return `\x1b[31m  ✗ ${body.split('\n')[0].slice(0, 200)}\x1b[0m`;
        }).join('\n') };
    }
    if (ev.type === 'result') {
        return { text: `\x1b[1m${ev.result || ev.subtype}\x1b[0m`, result: ev.result || ev.subtype };
    }
    return { text: '' };
}

// Everything both agents share: resolve the routine, confirm a redo, work out the
// sidecar key and compiler flags, and build the prompt.  Null when there is
// nothing to do (bad selection, or the user backed out).  In a batch nothing pops
// up: the reason comes back as { skip } and a routine with source is just skipped.
async function prepareMakeC(uri, label, batch) {
    const fail = (msg) => batch ? { skip: msg } : vscode.window.showErrorMessage(msg);
    uri = uri || (vscode.window.activeTextEditor && vscode.window.activeTextEditor.document.uri);
    const where = uri && locate(uri.fsPath);
    if (!where) return fail('open a routine .asm under src_<PROJECT>/<binary>/');
    const dir = path.dirname(uri.fsPath);
    const asmFile = path.join(dir, `${where.label}.asm`);
    const cFile = path.join(dir, `${where.label}.c`);
    const sFile = path.join(dir, `${where.label}.s`);
    if (!fs.existsSync(asmFile)) return fail(`no ${path.basename(asmFile)} (renamed by an earlier routine?)`);
    const existing = [cFile, sFile].find((f) => fs.existsSync(f));
    if (existing && batch) return { skip: `${path.basename(existing)} exists` };
    if (existing) {
        const pick = await vscode.window.showWarningMessage(
            `${path.basename(existing)} exists. Have ${label} redo it?`, { modal: true }, 'Redo');
        if (pick !== 'Redo') return;
    }
    const rel = (f) => path.relative(root(), f);

    // Renaming goes through the sidecar, as nameRoutine does; the key is resolved here
    // so the agent never has to work it out.
    const shared = where.binary === SHARED_DIR;
    let key, sharedHit;
    if (shared) {
        sharedHit = sharedEntry(where);
        key = sharedHit && sharedHit.key;
    } else {
        const asmText = fs.readFileSync(asmFile, 'utf8');
        const row = asmText.split('\n').findIndex((l) => l.startsWith(`${where.label}:`));
        const addr = row < 0 ? null : routineStart(asmText, row);
        key = addr === null ? null : sidecarName(where, addr).key;
    }
    if (!key) return fail(`no sidecar key for ${where.label}`);

    const sidecar = readJson(sidecarPath(where.project)) || {};
    // A binary's own ``compiler_flags`` (``default``/``prefixes``) override the project's.
    const projectFlags = sidecar.compiler_flags || {};
    const ownFlags = ((sidecar.binaries || {})[where.binary] || {}).compiler_flags || {};
    const flags = {
        default: ownFlags.default || projectFlags.default,
        prefixes: { ...(projectFlags.prefixes || {}), ...(ownFlags.prefixes || {}) },
    };
    const own = (sidecar.binaries || {})[where.binary];
    // A sidecar note saying "hand-written" settles the form; a sibling .s shows the style.
    const entry = shared ? sharedHit.entry : ((own || {}).function_names || {})[key];
    const handWritten = /^hand-written/.test((entry || {}).note || '');
    const exampleS = fs.readdirSync(dir).filter((f) => f.endsWith('.s')).sort()[0];
    const flagList = [`default \`${(flags.default || []).join(' ')}\``].concat(
        Object.entries(flags.prefixes || {}).map(([p, f]) => `\`${p}\` → \`${f.join(' ')}\``)).join('; ');

    return { where, asmFile, cFile, sFile, dir, rel, exampleS, handWritten,
        flagList };
}

// readme/authoring-c-fragments.md, inlined at the end of each prompt so the agent
// has it up front instead of spending a turn reading it.
function authoringGuide() {
    const file = path.join(root(), 'readme', 'authoring-c-fragments.md');
    const text = fs.existsSync(file) ? fs.readFileSync(file, 'utf8').trim() : '';
    return text ? `Reference: readme/authoring-c-fragments.md (fragment splits and the ` +
        `\`make info\`/\`probe\`/\`data\` loop), already included in full:\n\n${text}` : '';
}

// Claude Code's prompt: unchanged from the long-form workflow that has been in
// use.  OpenCode gets a separate, more directive prompt below.
function claudePrompt(job) {
    const { where, asmFile, cFile, sFile, dir, rel, exampleS, handWritten,
        flagList } = job;
    return [
        `Reproduce ${rel(asmFile)} as source that builds to byte-exact matching asm; never hand-edit ` +
            `the asm. First decide the form. Write ${rel(cFile)} (K&R C for the Manx Aztec \`cc\`) only ` +
            `if \`cc\` could have generated this code; otherwise write ${rel(sFile)} (Manx \`as\` assembly` +
            (exampleS ? `, in the style of ${rel(path.join(dir, exampleS))}` : '') + `). Signs it is ` +
            `hand-written: no csav or \`push bp; mov bp,sp\` frame, or running in its caller's frame; ` +
            `segment-register juggling (\`push cs; pop ds\`); \`cld\` and string ops; code-segment data; ` +
            `padding \`nop\`s or jumps \`cc\` would shorten; falling through into the next routine. ` +
            `Never put a whole routine body in \`#asm\` inside a C function: that is what a .s is for, ` +
            `and labels in \`#asm\` become linker symbols. \`#asm\` is only for a few instructions ` +
            `inside real C. A .s may \`include hlmacros.h\` (after lmacros.h) for MASM 6-style ` +
            `\`.if\`/\`.elseif\`/\`.else\`/\`.endif\`, \`.while\`/\`.endw\`, \`.repeat\`/\`.until\`, \`.break\`/` +
            `\`.continue\` (conditions like \`ax == 5\`, \`al lt 3\`, \`dl and 2\` (test), \`carry?\`, \`not cx\`; no \`!\`, \`<\` or ` +
            `\`>\`), plus DOS/BIOS call, push/pop list and clamp shorthand, \`frame\`/\`unframe\` (bp frame), ` +
            `\`movseg\` (segment via ax), \`outp\` (port writes), \`fatal\` (print and exit) and ` +
            `\`jnear\` (jcc over a near jmp). ` +
            `disassembler/lib/aztec/hlmacros.h lists each macro's exact expansion: use one only where ` +
            `it expands to the original instructions. Indent each block body one tab past its directive.` +
            (handWritten ? ` The sidecar note marks this routine hand-written asm: write ${rel(sFile)}.` : ''),
        `Commands (repo root): \`make rebuild\` is the pass/fail gate: it recompiles every .c/.s, ` +
            `checks it against the original bytes, and assembles. ` +
            `\`make refs ${where.project} ${where.binary} ROUTINE\` lists the address-named and ` +
            `content-tagged symbols a routine references. \`make name ${where.project} ${where.binary} ` +
            `SYMBOL=NAME[:NOTE] ...\` writes the sidecar, renames the hand-written sources and every ` +
            `reference in them (file, routine, \`NAME_\` in .s, \`extern\`/\`extrn\`, C callers), then ` +
            `builds and rebuilds; give SYMBOL as the build spells it (\`cseg_0d3a\`, \`bss_1234\`, ` +
            `\`io_loc_KRUO\`, \`${where.label}\`) or by its current name, and single-quote any spec whose ` +
            `note has spaces. \`make build ${where.project}\` regenerates the asm from the disassembly ` +
            `and sources. The sidecar (${rel(sidecarPath(where.project))}) and the tooling under ` +
            `disassembler/ are there to read when you need them.`,
        `Compiler flags come from the routine name's longest matching prefix: ${flagList} ` +
            `(a .s uses \`compiler_flags.asm\`).`,
        `Steps:\n` +
            `1. Write the source with the routine still named \`${where.label}\` and run \`make rebuild\` ` +
            `until it passes. If the only differences left are symbol or label names on the same ` +
            `instructions and offsets, the bytes match: go on to step 2 (step 3's \`make name\` ` +
            `regenerates the asm). A report that the source compiles to a different size than its ` +
            `fragment means the bytes do not match yet.\n` +
            `2. Give parameters and locals descriptive names in the source itself (C names; \`equ\` names ` +
            `for .s and #asm stack arguments and locals). Add terse comments that say why, not what: a ` +
            `one-line header above the routine (a \`;\` line in a .s, \`/* */\` in C, never \`//\`), and ` +
            `short trailing comments on loops, branches and magic numbers (BIOS/DOS function numbers, key ` +
            `codes, header offsets, strides, flag bits). Describe only what the code shows; don't guess intent.\n` +
            `3. Run \`make refs ${where.project} ${where.binary} ${where.label}\`, then name everything in ` +
            `one call: \`make name ${where.project} ${where.binary} ${where.label}=NAME:'note' ` +
            `SYMBOL=NAME:'note' ...\`. NAME for the routine is a descriptive lowercase_underscore name ` +
            `keeping any prefix its flags need; add every symbol \`make refs\` listed (globals, code-segment ` +
            `data, called routines, including those only in \`extrn\` lines) except "label inside" rows, ` +
            `each with a note saying what it holds or does.\n` +
            `4. If \`make name\` reports a rebuild failure, fix the source and run \`make rebuild\` until it ` +
            `passes. No address-named or content-tagged symbol may remain in the source.\n\n` +
            `Your final message: only the routine's new name, or, if you could not finish, what is ` +
            `left and why.`,
        authoringGuide(),
    ].join('\n\n');
}
  

// Open the source an agent wrote and check it; null when it wrote none.
async function openMade(cFile, sFile) {
    const made = [cFile, sFile].find((f) => fs.existsSync(f));
    if (!made) return null;
    const doc = await vscode.workspace.openTextDocument(vscode.Uri.file(made));
    await vscode.window.showTextDocument(doc, { preview: false });
    if (isGeneratedC(doc)) checkFile(doc, true);
    return made;
}

// One agent session per invocation, so Claude and OpenCode can each have a tab (and
// both can run at once).  A multi-selection in the explorer becomes a batch.
async function makeC(kind, uri, uris) {
    const asms = (uris || []).filter((u) => /\.asm$/.test(u.fsPath) && locate(u.fsPath));
    if (asms.length > 1) return makeCBatch(kind, asms);
    const agent = AGENTS[kind];
    const job = await prepareMakeC(uri, agent.label);
    if (!job) return;
    const { where, cFile, sFile } = job;
    const prompt = agent.prompt(job);
    const term = vscode.window.createTerminal({
        name: `${agent.label}: ${where.label}`, cwd: root(),
        shellPath: agent.cli(), shellArgs: agent.args(prompt, agent.model()),
        env: agent.env, location: vscode.TerminalLocation.Editor,
    });
    term.show();
    const sub = vscode.window.onDidCloseTerminal(async (t) => {
        if (t !== term) return;
        sub.dispose();
        await openMade(cFile, sFile);
    });
}

// Several routines, one after another in a single tab: each gets its own headless
// agent process, so every routine starts from a clean context, and the next starts
// only when the last has exited.  Each job is resolved just before it runs, since an
// earlier routine's `make name` may rename the files.  Closing the tab stops the batch.
function makeCBatch(kind, uris) {
    const agent = AGENTS[kind];
    const emitter = new vscode.EventEmitter();
    const write = (text) => emitter.fire(text.replace(/\r?\n/g, '\r\n'));
    let child = null, stopped = false;
    // The extension host's PWD is wherever VS Code was launched; match it to the cwd.
    const env = { ...process.env, PWD: root() };
    for (const [k, v] of Object.entries(agent.env)) {
        if (v === null) delete env[k]; else env[k] = v;
    }

    const runOne = (job) => new Promise((resolve) => {
        // Claude's `result` event is its final message; OpenCode has no such event,
        // so its final message is taken as the last line it printed.
        let result = '', last = '', pending = '';
        const emit = (line) => {
            const out = agent.format(line);
            if (out.result) result = out.result;
            const plain = line.replace(/\x1b\[[0-9;?]*[A-Za-z]/g, '').trim();
            if (plain) last = plain;
            if (out.text) write(out.text + '\n');
        };
        const feed = (chunk) => {
            const lines = (pending + chunk).split('\n');
            pending = lines.pop();
            lines.forEach(emit);
        };
        child = spawn(agent.cli(), agent.batchArgs(agent.prompt(job), agent.model()),
            { cwd: root(), env, stdio: ['ignore', 'pipe', 'pipe'] });
        child.stdout.setEncoding('utf8').on('data', feed);
        child.stderr.setEncoding('utf8').on('data', (d) => write(`\x1b[2m${d}\x1b[0m`));
        child.on('error', (e) => { write(`\x1b[31m${e.message}\x1b[0m\n`); });
        child.on('close', (code) => {
            if (pending) emit(pending);
            child = null;
            resolve({ code, result: result || last });
        });
    });

    const run = async () => {
        const summary = [];
        for (const [i, uri] of uris.entries()) {
            if (stopped) break;
            const name = path.basename(uri.fsPath, '.asm');
            write(`\x1b[1;33m=== [${i + 1}/${uris.length}] ${name} ===\x1b[0m\n`);
            const job = await prepareMakeC(uri, agent.label, true);
            if (!job || job.skip) {
                write(`— skip: ${(job && job.skip) || 'nothing to do'}\n\n`);
                continue;
            }
            const { result } = await runOne(job);
            if (stopped) break;
            summary.push(result);
            write('\n');
        }
        write(`\x1b[1m=== batch ${stopped ? 'stopped' : 'finished'} ===\x1b[0m\n${summary.join('\n')}\n`);
    };

    const term = vscode.window.createTerminal({
        name: `${agent.label}: batch (${uris.length})`,
        location: vscode.TerminalLocation.Editor,
        pty: {
            onDidWrite: emitter.event,
            open: () => { run(); },
            close: () => { stopped = true; if (child) child.kill(); },
        },
    });
    term.show();
}

// ---------------------------------------------------------------- lens

function provenance(doc) {
    const where = locate(doc.fileName);
    const m = where && moduleEntry(where);
    if (m) {
        return `vendor module ${m.file} (${m.source_version}, cc ${m.compiler}), ` +
            `compiled whole into this fragment`;
    }
    if (/auto-generated/.test(doc.lineAt(0).text)) return 'generated (decompiled)';
    return /\.s$/.test(doc.fileName) ? 'hand-written Manx assembly' : 'hand-written C';
}

// ------------------------------------------------------------- activate

function activate(context) {
    diagnostics = vscode.languages.createDiagnosticCollection('manx-cc');
    const ready = rebuild();
    const watcher = vscode.workspace.createFileSystemWatcher(SRC);
    // Files can change on disk without a save in this editor: `make rebuild`,
    // `make name` (which also renames them), or another editor.  Refresh an open
    // document's diagnostics when its file changes, not just on save.
    const touch = async (uri) => {
        await load(uri);
        reindex();
        const doc = vscode.workspace.textDocuments.find((d) => d.uri.toString() === uri.toString());
        if (doc && isGeneratedC(doc) &&
                (cfg().get('checkOnSave') || shown.has(uri.toString()))) {
            checkFile(doc, true);
        }
    };
    watcher.onDidChange(touch);
    watcher.onDidCreate(touch);
    watcher.onDidDelete((uri) => { forget(uri); reindex(); });

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
                    // ``name_`` is the same symbol in assembly: a C file's ``#asm`` block, a ``.s``.
                    const spellings = /\.[cs]$/.test(key) ? [name, name + '_'] : [name];
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
            [{ pattern: '**/src_*/*/*.{c,s}' }, { pattern: '**/src_*/*/*/*.{c,s}' }], {
                provideCodeLenses(doc) {
                    const top = new vscode.Range(0, 0, 0, 0);
                    return [
                        new vscode.CodeLens(top, { title: provenance(doc),
                            command: 'PHOONZANGAsmNav.diffVendor', arguments: [doc.uri] }),
                        new vscode.CodeLens(top, { title: `$(check) Manx ${/\.s$/.test(doc.fileName) ? 'as' : 'cc'}`,
                            command: 'PHOONZANGAsmNav.check', arguments: [doc.uri] }),
                    ];
                },
            }),
        vscode.workspace.onDidSaveTextDocument((doc) => {
            if (cfg().get('checkOnSave') && isGeneratedC(doc)) checkFile(doc, true);
        }),
        // A rename inside VS Code need not surface as a watcher delete for the old
        // path, so clear the old file's problems explicitly and index the new one.
        vscode.workspace.onDidRenameFiles(async (e) => {
            for (const f of e.files) forget(f.oldUri);
            for (const f of e.files) await touch(f.newUri);
        }),
        vscode.workspace.onDidDeleteFiles((e) => {
            for (const uri of e.files) forget(uri);
            reindex();
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
        vscode.commands.registerCommand('PHOONZANGAsmNav.makeC', (uri, uris) => makeC('claude', uri, uris)),
        vscode.commands.registerCommand('PHOONZANGAsmNav.makeCOpenCode', (uri, uris) => makeC('opencode', uri, uris)),
        vscode.commands.registerCommand('PHOONZANGAsmNav.check', async (uri) => {
            const doc = uri
                ? await vscode.workspace.openTextDocument(uri)
                : vscode.window.activeTextEditor && vscode.window.activeTextEditor.document;
            if (doc && isGeneratedC(doc)) checkFile(doc, true);
            else vscode.window.showErrorMessage('open a generated .c or .s file');
        }),
    );
}

module.exports = { activate };
