'use strict';
// Read and edit ``asm/sidecar/<PROJECT>.json`` without reformatting it: the
// file mixes layouts, so only the ``function_names`` object being changed is
// re-serialised and spliced back in.

// Index of the ``}`` matching the ``{`` at ``open`` (string-aware).
function closeOf(text, open) {
    let depth = 0;
    for (let i = open; i < text.length; i++) {
        const c = text[i];
        if (c === '"') {
            for (i++; text[i] !== '"'; i++) if (text[i] === '\\') i++;
        } else if (c === '{') depth++;
        else if (c === '}' && --depth === 0) return i;
    }
    throw new Error('unbalanced braces in sidecar');
}

// Extent of the ``member`` object of ``binary``; null when it has none (and
// ``bOpen`` says where the binary's own object starts, to create it).
function span(text, binary, member) {
    const binaries = text.indexOf('"binaries"');
    const head = new RegExp(`"${binary}"\\s*:\\s*\\{`).exec(text.slice(binaries));
    if (binaries < 0 || !head) throw new Error(`binary ${binary} not in sidecar`);
    const bOpen = binaries + head.index + head[0].length - 1;
    const bEnd = closeOf(text, bOpen);
    const rel = new RegExp(`"${member}"\\s*:\\s*\\{`).exec(text.slice(bOpen, bEnd));
    if (!rel) return { bOpen, open: null };
    const open = bOpen + rel.index + rel[0].length - 1;
    return { bOpen, open, close: closeOf(text, open) };
}

function functionNames(text, binary) {
    const { open, close } = span(text, binary, 'function_names');
    return open === null ? {} : JSON.parse(text.slice(open, close + 1));
}

// Listing address -> ``function_names`` key.  ``ds`` keys are the listing
// address itself (its Ghidra base offset cancels the file header); the others
// are the listing address minus ``start_offset``.
function keyFor(sidecar, binary, addr) {
    const b = (sidecar.binaries || {})[binary];
    if (!b) return null;
    const offset = b.ghidra_base_offset != null ? 0 : (b.start_offset || 0);
    return (addr - offset).toString(16).padStart(4, '0');
}

function setFunctionName(text, binary, key, entry) {
    let { bOpen, open, close } = span(text, binary, 'function_names');
    if (open === null) {
        // Create an empty member as the binary's first, then fill it below.
        const indent = /\n([ \t]*)\S/.exec(text.slice(bOpen))[1];
        text = text.slice(0, bOpen + 1) + `\n${indent}"function_names": {},` +
            text.slice(bOpen + 1);
        ({ open, close } = span(text, binary, 'function_names'));
    }
    const names = JSON.parse(text.slice(open, close + 1));
    names[key] = entry;
    const lineStart = text.lastIndexOf('\n', open) + 1;
    const base = /^\s*/.exec(text.slice(lineStart))[0];
    // Built from a sorted array: an object would put all-digit keys first.
    const rows = Object.keys(names).sort().map((k) =>
        `${base}  ${JSON.stringify(k)}: ` +
        JSON.stringify(names[k], null, 2).split('\n').join('\n' + base + '  '));
    const body = rows.length ? `{\n${rows.join(',\n')}\n${base}}` : '{}';
    return text.slice(0, open) + body + text.slice(close + 1);
}

module.exports = { functionNames, keyFor, setFunctionName };
