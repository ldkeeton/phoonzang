'use strict';
// Language server for the generated C / Manx assembler / NASM trees.
//
// All navigation state lives here: the extension only forwards document
// changes and displays the results.  See index.js for the symbol model.

const fs = require('fs');
const path = require('path');
const { fileURLToPath } = require('url');
const {
    createConnection, ProposedFeatures, TextDocuments, TextDocumentSyncKind,
    SemanticTokensBuilder,
} = require('vscode-languageserver/node');
const { TextDocument } = require('vscode-languageserver-textdocument');
const { WorkspaceIndex } = require('./index');
const sidecar = require('./sidecar');

const connection = createConnection(ProposedFeatures.all);
const documents = new TextDocuments(TextDocument);
let index = null;
let root = process.cwd();

const TOKEN_TYPES = ['type', 'struct', 'enum', 'macro', 'variable', 'parameter',
    'property', 'function', 'enumMember'];
const TOKEN_MODIFIERS = ['declaration', 'definition', 'readonly', 'static', 'local', 'globalScope'];
const LEGEND = { tokenTypes: TOKEN_TYPES, tokenModifiers: TOKEN_MODIFIERS };

// ---------------------------------------------------------------- sidecar

const sidecarCache = new Map();

function readSidecar(project) {
    if (!project) return null;
    const file = path.join(root, 'disassembler', 'sidecar', `${project}.json`);
    try {
        const mtime = fs.statSync(file).mtimeMs;
        const hit = sidecarCache.get(file);
        if (hit && hit.mtime === mtime) return hit.json;
        const json = JSON.parse(fs.readFileSync(file, 'utf8'));
        sidecarCache.set(file, { mtime, json });
        return json;
    } catch (e) {
        return null;
    }
}

function sidecarFor(symbol) {
    if (!symbol || !symbol.binary || symbol.address === null || symbol.address === undefined) return null;
    const data = readSidecar(symbol.project);
    const key = data && symbol.address !== null ? sidecar.keyFor(data, symbol.binary, symbol.address) : null;
    if (!key) return null;
    const entry = data.binaries[symbol.binary] && data.binaries[symbol.binary].function_names
        ? data.binaries[symbol.binary].function_names[key] : null;
    return entry ? { key, entry } : { key };
}

// ------------------------------------------------------------------ hover

function definitionLine(symbol) {
    const file = index.files.get(symbol.uri);
    if (!file) return null;
    const line = file.text.split('\n')[symbol.row];
    return line === undefined ? null : line.trim();
}

function hoverMarkdown(symbol) {
    const lines = [`**${symbol.name}**`];
    const where = [];
    if (symbol.binary) where.push(`\`${symbol.binary}\``);
    if (symbol.address !== null && symbol.address !== undefined) {
        where.push(`\`0x${symbol.address.toString(16)}\``);
    }
    if (where.length) lines[0] += ` — ${where.join(' · ')}`;

    const line = definitionLine(symbol);
    if (line) lines.push('```' + (symbol.origin === 'c' ? 'c' : 'asm') + '\n' + line + '\n```');

    const named = sidecarFor(symbol);
    if (named && named.entry) {
        lines.push(`sidecar \`${named.key}\`: **${named.entry.name}**`);
        if (named.entry.note) lines.push(`_${named.entry.note}_`);
    }
    const relative = symbol.fsPath ? path.relative(root, symbol.fsPath) : null;
    if (relative) lines.push(`\`${relative}\``);
    return lines.join('\n\n');
}

// ----------------------------------------------------------------- server

connection.onInitialize(async (params) => {
    const folder = (params.workspaceFolders || [])[0];
    if (folder && folder.uri) {
        try { root = fileURLToPath(folder.uri); } catch (e) { /* keep cwd */ }
    } else if (params.rootUri) {
        try { root = fileURLToPath(params.rootUri); } catch (e) { /* keep cwd */ }
    } else if (params.rootPath) {
        root = params.rootPath;
    }
    index = new WorkspaceIndex(root);
    try {
        index.initialize();
    } catch (e) {
        connection.console.error(`index: ${e && e.stack ? e.stack : e}`);
    }
    return {
        capabilities: {
            textDocumentSync: TextDocumentSyncKind.Incremental,
            definitionProvider: true,
            referencesProvider: true,
            hoverProvider: true,
            documentSymbolProvider: true,
            workspaceSymbolProvider: true,
            semanticTokensProvider: { legend: LEGEND, full: true, range: false },
        },
        serverInfo: { name: 'phoonzang-asm-nav', version: '0.1.0' },
    };
});

function withDocument(uri, fn) {
    const doc = documents.get(uri);
    if (!doc) return null;
    return fn(doc);
}

connection.onDefinition((params) => {
    if (!index) return null;
    return withDocument(params.textDocument.uri, (doc) => {
        const offset = doc.offsetAt(params.position);
        const include = index.resolveInclude(params.textDocument.uri, offset);
        if (include) return include;
        return index.resolveAt(params.textDocument.uri, offset).map((symbol) => index.location(symbol));
    });
});

connection.onReferences((params) => {
    if (!index) return [];
    return withDocument(params.textDocument.uri, (doc) => {
        const offset = doc.offsetAt(params.position);
        return index.referencesAt(params.textDocument.uri, offset, params.context.includeDeclaration);
    });
});

connection.onHover((params) => {
    if (!index) return null;
    return withDocument(params.textDocument.uri, (doc) => {
        const offset = doc.offsetAt(params.position);
        const symbol = index.symbolAt(params.textDocument.uri, offset);
        if (!symbol) return null;
        return {
            contents: { kind: 'markdown', value: hoverMarkdown(symbol) },
            range: {
                start: { line: symbol.row, character: symbol.col },
                end: { line: symbol.row, character: symbol.col + symbol.length },
            },
        };
    });
});

connection.onDocumentSymbol((params) => {
    if (!index) return [];
    return index.documentSymbols(params.textDocument.uri);
});

connection.onWorkspaceSymbol((params) => {
    if (!index) return [];
    return index.workspaceSymbols(params.query);
});

connection.languages.semanticTokens.on((params) => {
    const builder = new SemanticTokensBuilder();
    if (!index) return builder.build();
    const file = index.files.get(params.textDocument.uri);
    if (!file || !file.tokens) return builder.build();
    for (const token of file.tokens) {
        const kind = TOKEN_TYPES.indexOf(token.kind === 'union' ? 'struct' :
            token.kind === 'field' ? 'property' :
            ['global', 'local'].includes(token.kind) ? 'variable' : token.kind);
        if (kind < 0 || !token.length) continue;
        let bits = 0;
        for (const modifier of token.modifiers || []) {
            const at = TOKEN_MODIFIERS.indexOf(modifier);
            if (at >= 0) bits |= 1 << at;
        }
        builder.push(token.row, token.col, token.length, kind, bits);
    }
    return builder.build();
});

// ---------------------------------------------------------- file tracking

function refresh(uri) {
    if (!index) return;
    const doc = documents.get(uri);
    if (doc) index.updateFile(uri, doc.getText(), { version: doc.version });
    else index.updateFromDisk(uri);
}

documents.onDidOpen((event) => refresh(event.document.uri));
documents.onDidChangeContent((event) => refresh(event.document.uri));
documents.onDidSave((event) => refresh(event.document.uri));
documents.onDidClose((event) => refresh(event.document.uri));

connection.onDidChangeWatchedFiles((params) => {
    if (!index) return;
    for (const change of params.changes) {
        if (change.type === 3) index.removeFile(change.uri);
        else refresh(change.uri);
    }
});

documents.listen(connection);
connection.listen();
