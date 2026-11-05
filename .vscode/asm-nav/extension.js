'use strict';
// Navigation and tooling for the generated C / NASM trees (``src_<PROJECT>/``):
//   * Source navigation within C / Manx assembly, separate from NASM listings
//   * hover: address, sidecar name/note
//   * Go to address, Name this routine (writes the sidecar)
//   * Manx ``cc``/``as`` diagnostics on save, and a compiler CodeLens
const fs = require('fs');
const path = require('path');
const { execFile } = require('child_process');
const vscode = require('vscode');
const { LanguageClient, TransportKind } = require('vscode-languageclient/node');
const { addresses, routineStart, locate } = require('./scan');
const sidecar = require('./sidecar');

const SRC = 'src_*/**/*.{asm,c,h,s}';
const NAV_SRC = '**/src_*/**/*.{c,h,s,asm,inc}';
const SHARED_DIR = 'shared';   // src_<PROJECT>/shared/ holds routines shared between binaries

const root = () => vscode.workspace.workspaceFolders[0].uri.fsPath;
const cfg = () => vscode.workspace.getConfiguration('PHOONZANGAsmNav');

let client = null;
let addrIndex = null;           // lazily built; invalidated when a listing changes

// ------------------------------------------------- sidecar data

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
function sidecarName(where, addr) {
    const data = readJson(sidecarPath(where.project));
    const key = data && addr !== null ? sidecar.keyFor(data, where.binary, addr) : null;
    return key && data.binaries[where.binary].function_names
        ? { key, entry: data.binaries[where.binary].function_names[key] } : { key };
}

// ------------------------------------------------------- go to address

// The symbol server owns navigation, but this command is a plain address
// lookup.  Build the listing-address map lazily and drop it when any .asm
// changes (a build rewrites many of them at once).
async function addressMap() {
    if (addrIndex) return addrIndex;
    const map = new Map();
    const files = await vscode.workspace.findFiles('src_*/**/*.asm', '**/node_modules/**');
    await Promise.all(files.map(async (uri) => {
        const where = locate(uri.fsPath);
        if (!where) return;
        let text;
        try {
            text = Buffer.from(await vscode.workspace.fs.readFile(uri)).toString('utf8');
        } catch (e) { return; }
        const binary = where.binary || where.project;
        if (!map.has(binary)) map.set(binary, []);
        const list = map.get(binary);
        for (const item of addresses(text)) list.push({ addr: item.addr, row: item.row, uri });
    }));
    for (const list of map.values()) list.sort((a, b) => a.addr - b.addr);
    addrIndex = map;
    return map;
}

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
    const list = (await addressMap()).get(binary);
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
    let file;
    if (uri) {
        file = uri.fsPath;
    } else {
        const editor = vscode.window.activeTextEditor;
        if (!editor) return;
        file = editor.document.fileName;
    }
    const where = locate(file);
    if (!where) return vscode.window.showErrorMessage('open a routine .c, .s or .asm under src_<PROJECT>/<binary>/');
    if (where.binary === SHARED_DIR) return nameSharedRoutine(where, suggestion);
    const asmFile = path.join(path.dirname(file), `${where.label}.asm`);
    if (!fs.existsSync(asmFile)) {
        return vscode.window.showErrorMessage(`no ${path.basename(asmFile)} beside ${path.basename(file)}`);
    }
    const asmText = fs.readFileSync(asmFile, 'utf8');
    const row = asmText.split('\n').findIndex((line) => line.startsWith(`${where.label}:`));
    const addr = row < 0 ? null : routineStart(asmText, row);
    if (addr === null) return vscode.window.showErrorMessage(`${where.label} has no listing address`);
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
    const fileSidecar = sidecarPath(where.project);
    const next = sidecar.setFunctionName(fs.readFileSync(fileSidecar, 'utf8'), where.binary, key,
        note ? { name: newName, note } : { name: newName });
    fs.writeFileSync(fileSidecar, next);
    vscode.window.showInformationMessage(
        `${key} → ${newName} in ${path.basename(fileSidecar)}. Rebuild (make build ${where.project} ${where.binary}) to apply.`);
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
const shellQuote = (s) => `'${String(s).replace(/'/g, `'\\''`)}'`;

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
        // No IDE integration: don't auto-connect, and drop the port the Claude VS Code
        // extension injects into integrated terminals.
        env: { CLAUDE_CODE_AUTO_CONNECT_IDE: 'false', CLAUDE_CODE_SSE_PORT: null },
        // Started directly, Claude inherits VS Code's process PATH, where /usr/bin
        // precedes the pyenv shims and make picks a python3 without capstone.  A
        // login shell runs the profile (pyenv init) first; exec keeps the tab
        // closing when Claude exits.
        terminalArgs(prompt, model) {
            const cli = cfg().get('claude');
            const args = this.args(prompt, model);
            if (process.platform === 'win32') return { shellPath: cli, shellArgs: args };
            return { shellPath: process.env.SHELL || '/bin/bash',
                shellArgs: ['-lc', `exec ${[cli, ...args].map(shellQuote).join(' ')}`] };
        },
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
        env: {},
    },
    codex: {
        label: 'OpenAI Codex',
        prompt: claudePrompt,
        cli: () => cfg().get('codex'),
        model: () => cfg().get('codexModel'),
        // Interactive Codex starts the normal TUI in the workspace.
        args(prompt, model) {
            const args = ['--cd', root()];
            if (model) args.push('--model', model);
            args.push(prompt);
            return args;
        },
        env: { CODEX_DEBUG: '1' },
        // Codex is an executable, not a shell. Run it through the user's login shell
        // so shell aliases/wrappers and the PATH used by VS Code terminals resolve.
        terminalArgs(prompt, model) {
            const args = ['--cd', root(), '--sandbox', 'workspace-write'];
            if (model) args.push('--model', model);
            args.push(prompt);
            const quote = shellQuote;
            const cleanEnvironment = `for var in $(env | grep -E 'PROXY|proxy|npm_config|YARN|BUNDLE|CARGO' | cut -d= -f1); do unset "$var"; done; `;
            const command = `${process.platform === 'win32' ? '' : cleanEnvironment}${quote(cfg().get('codex'))} ${args.map(quote).join(' ')}`;
            return process.platform === 'win32'
                ? { shellPath: process.env.COMSPEC || 'cmd.exe',
                    shellArgs: ['/d', '/s', '/c', `${command} & set codex_status=%errorlevel% & echo. & echo Codex exited with status %codex_status%. & pause`] }
                : { shellPath: process.env.SHELL || '/bin/bash',
                    shellArgs: ['-lc', `${command}; codex_status=$?; echo; echo "Codex exited with status $codex_status. Press Enter to close this terminal."; read _`] };
        },
    },
};

// Everything both agents share: resolve the routine, confirm a redo, work out the
// compiler flags, and build the prompt.  Null when the user backed out or the file
// cannot be processed.  A batch never prompts: selecting a file with source is the
// request to redo it, and an unprocessable file throws, stopping the whole batch.
// A routine with no sidecar entry is not a failure; the agent adds the entry.
async function prepareMakeC(uri, label, batch) {
    const fail = (msg) => {
        if (batch) throw new Error(msg);
        return vscode.window.showErrorMessage(msg);
    };
    uri = uri || (vscode.window.activeTextEditor && vscode.window.activeTextEditor.document.uri);
    const where = uri && locate(uri.fsPath);
    if (!where) return fail('open a routine .asm under src_<PROJECT>/<binary>/');
    const dir = path.dirname(uri.fsPath);
    const asmFile = path.join(dir, `${where.label}.asm`);
    const cFile = path.join(dir, `${where.label}.c`);
    const sFile = path.join(dir, `${where.label}.s`);
    if (!fs.existsSync(asmFile)) return fail(`no ${path.basename(asmFile)} (renamed by an earlier routine?)`);
    const existing = [cFile, sFile].find((f) => fs.existsSync(f));
    if (existing && !batch) {
        const pick = await vscode.window.showWarningMessage(
            `${path.basename(existing)} exists. Have ${label} redo it?`, { modal: true }, 'Redo');
        if (pick !== 'Redo') return;
    }
    const rel = (f) => path.relative(root(), f);

    // The routine's sidecar entry, if it has one yet; only its note is read here.
    let entry;
    if (where.binary === SHARED_DIR) {
        const sharedHit = sharedEntry(where);
        entry = sharedHit && sharedHit.entry;
    } else {
        const asmText = fs.readFileSync(asmFile, 'utf8');
        const row = asmText.split('\n').findIndex((l) => l.startsWith(`${where.label}:`));
        const addr = row < 0 ? null : routineStart(asmText, row);
        entry = addr === null ? null : sidecarName(where, addr).entry;
    }

    const sidecar = readJson(sidecarPath(where.project)) || {};
    // A binary's own ``compiler_flags`` (``default``/``prefixes``) override the project's.
    const projectFlags = sidecar.compiler_flags || {};
    const ownFlags = ((sidecar.binaries || {})[where.binary] || {}).compiler_flags || {};
    const flags = {
        default: ownFlags.default || projectFlags.default,
        prefixes: { ...(projectFlags.prefixes || {}), ...(ownFlags.prefixes || {}) },
    };
    // A sidecar note saying "hand-written" settles the form; a sibling .s shows the style.
    const handWritten = /^hand-written/.test((entry || {}).note || '');
    // The newest sibling .s/.c shows the current house style the new file should follow.
    const newest = (ext) => fs.readdirSync(dir).filter((f) => f.endsWith(ext))
        .map((f) => [f, fs.statSync(path.join(dir, f)).mtimeMs])
        .sort((a, b) => b[1] - a[1]).map(([f]) => f)[0];
    const exampleS = newest('.s');
    const exampleC = newest('.c');
    const flagList = [`default \`${(flags.default || []).join(' ')}\``].concat(
        Object.entries(flags.prefixes || {}).map(([p, f]) => `\`${p}\` → \`${f.join(' ')}\``)).join('; ');

    return { where, asmFile, cFile, sFile, dir, rel, exampleS, exampleC, handWritten,
        flagList };
}

// Claude Code's prompt.  The text lives in prompt.txt beside this file and is
// read on every use, so it can be edited without reloading the window;
// {{name}} placeholders are filled per job.
function claudePrompt(job) {
    const { where, asmFile, cFile, sFile, dir, rel, exampleS, exampleC, handWritten,
        flagList } = job;
    const file = path.join(__dirname, 'prompt.txt');
    let text;
    try {
        text = fs.readFileSync(file, 'utf8');
    } catch (e) {
        throw new Error(`cannot read ${file}: ${e.message}`);
    }
    const values = {
        asm: rel(asmFile),
        c: rel(cFile),
        s: rel(sFile),
        style: exampleS ? `, in the style of ${rel(path.join(dir, exampleS))}` : '',
        cstyle: exampleC ? `, in the style of ${rel(path.join(dir, exampleC))}` : '',
        flags: flagList,
        hand: handWritten ? ` The sidecar note marks this routine hand-written asm: write ${rel(sFile)}.` : '',
        project: where.project,
        binary: where.binary,
        label: where.label,
        sidecar: rel(sidecarPath(where.project)),
    };
    return text.replace(/\{\{(\w+)\}\}/g, (m, key) => key in values ? values[key] : m).trim();
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
    let prompt;
    try {
        prompt = agent.prompt(job);
    } catch (e) {
        vscode.window.showErrorMessage(e.message);
        return;
    }
    openAgentTerminal(agent, prompt, where.label, async () => {
        await openMade(cFile, sFile);
    });
}

function openAgentTerminal(agent, prompt, title, onClose) {
    const term = vscode.window.createTerminal({
        name: `${agent.label}: ${title}`, cwd: root(),
        ...(agent.terminalArgs ? agent.terminalArgs(prompt, agent.model()) : {
            shellPath: agent.cli(), shellArgs: agent.args(prompt, agent.model()),
        }),
        env: agent.env, location: vscode.TerminalLocation.Editor,
    });
    term.show();
    const sub = vscode.window.onDidCloseTerminal(async (t) => {
        if (t !== term) return;
        sub.dispose();
        if (onClose) await onClose();
    });
}

// Multi-select sends one ordered work list to a master agent. The prompt owns
// sequential delegation and the final concatenated report.
async function makeCBatch(kind, uris) {
    const agent = AGENTS[kind];
    try {
        const tasks = [];
        const childPrompts = [];
        for (const uri of uris) {
            const job = await prepareMakeC(uri, agent.label, true);
            tasks.push({ file: path.relative(root(), uri.fsPath) });
            childPrompts.push({ index: tasks.length, text: agent.prompt(job) });
        }
        const template = fs.readFileSync(path.join(__dirname, 'prompt-multi.txt'), 'utf8');
        // Keep the large task list off the command line: Linux limits each
        // argument to ~128 KiB, even when ARG_MAX is much larger.
        const cache = path.join(root(), '.cache');
        fs.mkdirSync(cache, { recursive: true });
        const sessionDir = fs.mkdtempSync(path.join(cache, 'asm-nav-multi-'));
        const promptFile = path.join(sessionDir, 'prompt.txt');
        const instructionsDir = path.join(sessionDir, 'instructions');
        fs.mkdirSync(instructionsDir);
        for (const child of childPrompts) {
            const name = `${String(child.index).padStart(4, '0')}.txt`;
            fs.writeFileSync(path.join(instructionsDir, name), child.text, { mode: 0o600 });
        }
        const batchPrompt = template
            .replace(/\{\{tasks\}\}/g, () => JSON.stringify(tasks, null, 2))
            .replace(/\{\{instructions_dir\}\}/g, instructionsDir)
            .trim();
        fs.writeFileSync(promptFile, batchPrompt, { mode: 0o600 });
        const cleanup = () => fs.rmSync(sessionDir, { recursive: true, force: true });
        const bootstrap = `Read the UTF-8 task file at ${JSON.stringify(promptFile)} and follow its instructions. ` +
            'You are the master agent; run the listed child agents strictly one at a time and concatenate their final messages.';
        try {
            openAgentTerminal(agent, bootstrap, `multi (${uris.length})`, cleanup);
        } catch (e) {
            cleanup();
            throw e;
        }
    } catch (e) {
        vscode.window.showErrorMessage(e.message);
    }
}

// ------------------------------------------------------------- activate

function startClient(context) {
    const serverModule = context.asAbsolutePath('server.js');
    const serverOptions = {
        run: { module: serverModule, transport: TransportKind.ipc },
        debug: {
            module: serverModule,
            transport: TransportKind.ipc,
            options: { execArgv: ['--nolazy', '--inspect=6009'] },
        },
    };
    const navWatcher = vscode.workspace.createFileSystemWatcher(NAV_SRC);
    const topWatcher = vscode.workspace.createFileSystemWatcher('**/src_*/*.{c,h,s,asm,inc}');
    const clientOptions = {
        documentSelector: [
            { scheme: 'file', pattern: '**/src_*/*.{c,h,s,asm,inc}' },
            { scheme: 'file', pattern: '**/src_*/**/*.{c,h,s,asm,inc}' },
        ],
        synchronize: { fileEvents: [navWatcher, topWatcher] },
        outputChannelName: 'PHOONZANG ASM Navigation',
    };
    client = new LanguageClient('phoonzang-asm-nav', 'PHOONZANG ASM Navigation',
        serverOptions, clientOptions);
    context.subscriptions.push(navWatcher, topWatcher);
    client.start().catch((e) => {
        vscode.window.showErrorMessage(`PHOONZANG language server failed: ${e.message || e}`);
    });
    context.subscriptions.push({ dispose: () => client && client.stop() });
}

function activate(context) {
    diagnostics = vscode.languages.createDiagnosticCollection('manx-cc');
    startClient(context);
    const watcher = vscode.workspace.createFileSystemWatcher(SRC);
    // Files can change on disk without a save in this editor: `make rebuild`,
    // `make name` (which also renames them), or another editor.  Refresh an open
    // document's diagnostics when its file changes, not just on save.
    // Only a document shown in an editor is checked: the References panel and
    // peek load many in the background, and each check is a Manx run in DOSBox.
    const visible = (uri) => vscode.window.visibleTextEditors.find(
        (e) => e.document.uri.toString() === uri.toString());
    const touch = async (uri) => {
        if (/\.asm$/i.test(uri.fsPath)) addrIndex = null;
        const editor = visible(uri);
        if (editor && isGeneratedC(editor.document) &&
                (cfg().get('checkOnSave') || shown.has(uri.toString()))) {
            checkFile(editor.document, true);
        }
    };
    watcher.onDidChange(touch);
    watcher.onDidCreate(touch);
    watcher.onDidDelete((uri) => {
        forget(uri);
        if (/\.asm$/i.test(uri.fsPath)) addrIndex = null;
    });

    // Editors already open when the window loads never fire a visibility change.
    const checkVisible = (editors) => {
        if (!cfg().get('checkOnOpen')) return;
        for (const e of editors) if (isGeneratedC(e.document)) checkFile(e.document);
    };
    checkVisible(vscode.window.visibleTextEditors);

    context.subscriptions.push(
        watcher, diagnostics,
        vscode.languages.registerCodeLensProvider(
            [{ pattern: '**/src_*/*/*.{c,s}' }, { pattern: '**/src_*/*/*/*.{c,s}' }], {
                provideCodeLenses(doc) {
                    const top = new vscode.Range(0, 0, 0, 0);
                    return [
                        new vscode.CodeLens(top, { title: `$(check) Manx ${/\.s$/.test(doc.fileName) ? 'as' : 'cc'}`,
                            command: 'PHOONZANGAsmNav.check', arguments: [doc.uri] }),
                    ];
                },
            }),
        vscode.workspace.onDidSaveTextDocument((doc) => {
            if (cfg().get('checkOnSave') && isGeneratedC(doc)) checkFile(doc, true);
        }),
        // A rename inside VS Code need not surface as a watcher delete for the old
        // path, so clear the old file's problems explicitly and check the new one.
        vscode.workspace.onDidRenameFiles(async (e) => {
            for (const f of e.files) forget(f.oldUri);
            for (const f of e.files) await touch(f.newUri);
        }),
        vscode.workspace.onDidDeleteFiles((e) => {
            for (const uri of e.files) forget(uri);
            addrIndex = null;
        }),
        vscode.window.onDidChangeVisibleTextEditors(checkVisible),
        // The References panel opens and closes documents constantly, so don't clear
        // diagnostics here (that would churn views too); just forget the checked version.
        vscode.workspace.onDidCloseTextDocument((doc) => checked.delete(doc.fileName)),
        // Restarting the server rebuilds its complete workspace index.
        vscode.commands.registerCommand('PHOONZANGAsmNav.reindex', async () => {
            if (!client) return;
            await client.stop();
            await client.start();
        }),
        vscode.commands.registerCommand('PHOONZANGAsmNav.goToAddress', () => goToAddress()),
        vscode.commands.registerCommand('PHOONZANGAsmNav.nameRoutine', (uri) => nameRoutine(uri)),
        vscode.commands.registerCommand('PHOONZANGAsmNav.makeC', (uri, uris) => makeC('claude', uri, uris)),
        vscode.commands.registerCommand('PHOONZANGAsmNav.makeCOpenCode', (uri, uris) => makeC('opencode', uri, uris)),
        vscode.commands.registerCommand('PHOONZANGAsmNav.makeCCodex', (uri, uris) => makeC('codex', uri, uris)),
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
