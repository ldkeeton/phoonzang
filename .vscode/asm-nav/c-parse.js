'use strict';
// Tolerant C89 / Manx Aztec C parser for navigation.  It is not a preprocessor
// or a type checker; it reports declarations, definitions, references and the
// lexical scope each reference resolves to.  The generated sources are K&R C,
// so the parser understands old-style function definitions and declarations.

const IDENT = /^[A-Za-z_]\w*$/;
const BUILTINS = new Set('void char short int long float double signed unsigned'.split(' '));
const QUALIFIERS = new Set(('const volatile extern static register auto typedef far near huge ' +
    '_far _near __far __near cdecl pascal _cdecl _pascal').split(' '));
const KEYWORDS = new Set([...BUILTINS, ...QUALIFIERS,
    ...'struct union enum if else for while do switch case default break continue return goto sizeof asm'.split(' ')]);

// Preserve offsets while hiding comments and literals from C symbol scanning.
function cCode(text) {
    return text.replace(/\/\*[\s\S]*?\*\/|\/\/[^\n]*|"(?:\\.|[^"\\])*"|'(?:\\.|[^'\\])*'/g,
        (part) => part.replace(/[^\n\r]/g, ' '));
}

function offsetPos(code, offset) {
    const before = code.slice(0, offset);
    return { row: before.split('\n').length - 1, col: offset - before.lastIndexOf('\n') - 1 };
}

function parseC(text, knownIn = new Map(), meta = {}) {
    const uri = meta.uri || '';
    const known = new Map(knownIn);
    let code = cCode(text);

    // #asm blocks use assembler syntax.  Their contents are indexed separately
    // by asm-parse.js; blank them here so C declarations stop at the block.
    const blocks = [];
    code = code.replace(/^[ \t]*#asm\b[\s\S]*?^[ \t]*#endasm\b[^\n]*/gm,
        (block, offset) => {
            blocks.push({ offset, text: block });
            return block.replace(/[^\r\n]/g, ' ');
        });

    // Preprocessor directives use their own identifier rules.
    const macroRefs = [];
    const macros = [];
    code = code.replace(/^[ \t]*#[^\n]*(?:\\\r?\n[^\n]*)*/gm, (line, offset) => {
        const define = /^\s*#\s*define\s+([A-Za-z_]\w*)/.exec(line);
        if (define) {
            macros.push({ name: define[1], offset: offset + line.indexOf(define[1]) });
            known.set(define[1], 'macro');
        } else if (!/^\s*#\s*(?:asm|endasm)\b/.test(line)) {
            // Keep references to macros in #if expressions, but not the
            // directive's own word.
            const expression = line.replace(/^\s*#\s*\w+/, (x) => ' '.repeat(x.length));
            for (const m of expression.matchAll(/[A-Za-z_]\w*/g)) {
                if (known.get(m[0]) === 'macro' || m[0] === 'defined') {
                    macroRefs.push({ name: m[0], offset: offset + m.index });
                }
            }
        }
        return line.replace(/[^\r\n]/g, ' ');
    });

    const lineStarts = [0];
    for (let i = 0; i < code.length; i++) if (code[i] === '\n') lineStarts.push(i + 1);
    const posAt = (offset) => {
        let lo = 0, hi = lineStarts.length - 1;
        while (lo < hi) {
            const mid = (lo + hi + 1) >> 1;
            if (lineStarts[mid] <= offset) lo = mid; else hi = mid - 1;
        }
        return { row: lo, col: offset - lineStarts[lo] };
    };
    const tokens = [...code.matchAll(/[A-Za-z_]\w*|(?:0[xX][\da-fA-F]+|\d[\w.]*|\.\d+)|->|\S/g)]
        .map((m) => ({ value: m[0], offset: m.index }));
    const pairs = new Map();
    const stack = [];
    for (let i = 0; i < tokens.length; i++) {
        const value = tokens[i].value;
        if ('([{'.includes(value)) stack.push(i);
        else if (')]}'.includes(value)) {
            const opening = stack[stack.length - 1];
            if (opening !== undefined && '([{'.indexOf(tokens[opening].value) === ')]}'.indexOf(value)) {
                stack.pop();
                pairs.set(opening, i);
                pairs.set(i, opening);
            }
        }
    }

    const global = { start: 0, end: code.length + 1, kind: 'global', names: new Map(), parent: null, tag: null };
    const scopes = [global];
    const scopeStack = [global];
    const tagDecls = new Map();
    for (let i = 0; i < tokens.length; i++) {
        if (tokens[i].value === '{') {
            const aggregate = tokens[i - 1]?.value === 'struct' || tokens[i - 1]?.value === 'union' ||
                tokens[i - 1]?.value === 'enum' ? tokens[i - 1].value :
                ['struct', 'union', 'enum'].includes(tokens[i - 2]?.value) ? tokens[i - 2].value : null;
            let tag = null;
            if (aggregate) {
                const near = tokens[i - 1]?.value;
                if (IDENT.test(near) && !['struct', 'union', 'enum'].includes(near)) tag = near;
                else if (IDENT.test(tokens[i - 2]?.value) && tokens[i - 2]?.value !== aggregate) tag = tokens[i - 2].value;
            }
            const scope = {
                start: tokens[i].offset, end: tokens[pairs.get(i)]?.offset ?? code.length,
                kind: aggregate || 'block', names: new Map(),
                parent: scopeStack[scopeStack.length - 1], tag,
            };
            scopes.push(scope);
            scopeStack.push(scope);
            if (aggregate && tag) {
                const index = tokens[i - 1]?.value === tag ? i - 1 : i - 2;
                tagDecls.set(tag, {
                    index, name: tag, kind: aggregate, offset: tokens[index].offset,
                    scope: scope.parent, modifiers: ['definition'], container: null,
                });
            }
        } else if (tokens[i].value === '}' && scopeStack.length > 1) {
            scopeStack.pop();
        }
    }

    const scopeAt = (offset) => {
        let found = global;
        for (const scope of scopes) {
            if (scope.start <= offset && offset < scope.end && scope.start >= found.start) found = scope;
        }
        return found;
    };

    const declarations = new Map();
    const declare = (index, kind, scope, modifiers = [], container = null) => {
        if (index === undefined || !IDENT.test(tokens[index]?.value) || KEYWORDS.has(tokens[index].value)) return;
        const hit = declarations.get(index) || {
            index, name: tokens[index].value, kind, offset: tokens[index].offset,
            scope, modifiers: [], container,
        };
        hit.kind = kind;
        hit.scope = scope;
        hit.container = container;
        for (const modifier of modifiers) if (!hit.modifiers.includes(modifier)) hit.modifiers.push(modifier);
        declarations.set(index, hit);
        scope.names.set(hit.name, hit);
        return hit;
    };

    const split = (start, end, delimiter = ',') => {
        const parts = [];
        let from = start;
        for (let i = start; i < end; i++) {
            if (tokens[i].value === delimiter) {
                parts.push([from, i]);
                from = i + 1;
            } else if ('([{'.includes(tokens[i].value) && pairs.has(i)) i = pairs.get(i);
        }
        parts.push([from, end]);
        return parts;
    };
    const typeEnd = (start) => {
        let i = start;
        let type = false;
        for (; i < tokens.length;) {
            const word = tokens[i].value;
            if (QUALIFIERS.has(word)) { i++; continue; }
            if (BUILTINS.has(word) || known.get(word) === 'type') { type = true; i++; continue; }
            if (['struct', 'union', 'enum'].includes(word)) {
                type = true;
                i++;
                if (IDENT.test(tokens[i]?.value)) i++;
                if (tokens[i]?.value === '{' && pairs.has(i)) i = pairs.get(i) + 1;
                continue;
            }
            break;
        }
        return type ? i : start;
    };
    const declarator = (start, end) => {
        let i = start;
        while (i < end && (tokens[i].value === '*' || QUALIFIERS.has(tokens[i].value))) i++;
        if (IDENT.test(tokens[i]?.value) && !KEYWORDS.has(tokens[i].value)) return i;
        // Function pointers: int (*callback)(int).
        if (tokens[i]?.value === '(') {
            i++;
            while (i < end && (tokens[i].value === '*' || QUALIFIERS.has(tokens[i].value))) i++;
            if (IDENT.test(tokens[i]?.value) && !KEYWORDS.has(tokens[i].value)) return i;
        }
        return undefined;
    };

    // Identify function bodies first so K&R argument declarations attach to
    // their function instead of leaking into the file's global namespace.
    const parameterHeaders = [];
    for (let i = 0; i < tokens.length - 1; i++) {
        if (!IDENT.test(tokens[i].value) || KEYWORDS.has(tokens[i].value) ||
                tokens[i + 1].value !== '(' || scopeAt(tokens[i].offset) !== global) continue;
        const close = pairs.get(i + 1);
        if (close === undefined) continue;
        let body = close + 1;
        const oldStyle = split(i + 2, close).every(([a, b]) =>
            b === a || (b === a + 1 && IDENT.test(tokens[a].value) && !KEYWORDS.has(tokens[a].value)));
        if (tokens[body]?.value !== '{' && oldStyle) {
            while (body < tokens.length && tokens[body].value !== '{') {
                const endType = typeEnd(body);
                if (endType === body) break;
                let end = endType;
                while (end < tokens.length && tokens[end].value !== ';' && tokens[end].value !== '{') end++;
                if (tokens[end]?.value !== ';') break;
                body = end + 1;
            }
        }
        if (tokens[body]?.value !== '{') continue;
        const scope = scopes.find((s) => s.start === tokens[body].offset);
        declare(i, 'function', global, ['definition']);
        parameterHeaders.push({ start: i + 2, end: body, scope });
        for (const [a, b] of split(i + 2, close)) {
            const start = oldStyle ? a : typeEnd(a);
            const name = declarator(start, b);
            if (name !== undefined && name < b) declare(name, 'parameter', scope, ['definition']);
        }
        i = close;
    }

    for (let i = 0; i < tokens.length; i++) {
        const endType = typeEnd(i);
        if (endType === i) continue;
        // Declaration starts, not casts, sizeof operands, or expression fragments.
        const previous = tokens[i - 1]?.value;
        if (i && ![';', '{', '}'].includes(previous) &&
                !code.slice(tokens[i - 1].offset + previous.length, tokens[i].offset).includes('\n')) continue;
        const header = parameterHeaders.find((h) => h.start <= i && i < h.end);
        const scope = header?.scope || scopeAt(tokens[i].offset);
        let end = endType;
        while (end < tokens.length && ![';', '{', '}'].includes(tokens[end].value)) {
            if ('(['.includes(tokens[end].value) && pairs.has(end)) end = pairs.get(end);
            end++;
        }
        const specifiers = tokens.slice(i, endType).map((t) => t.value);
        for (const [a, b] of split(endType, end)) {
            const name = declarator(a, b);
            if (name === undefined || name >= b) continue;
            const pointerFunction = tokens[a]?.value === '(';
            const functionName = !pointerFunction && tokens[name + 1]?.value === '(';
            let kind = specifiers.includes('typedef') ? 'type' : functionName ? 'function' :
                ['struct', 'union'].includes(scope.kind) ? 'field' :
                header && scope.names.get(tokens[name].value)?.kind === 'parameter' ? 'parameter' :
                scope === global || specifiers.includes('extern') ? 'global' : 'local';
            const modifiers = [];
            if (functionName && declarations.get(name)?.modifiers.includes('definition')) {
                modifiers.push('definition');
            } else if (!functionName && kind === 'global' && !specifiers.includes('extern')) {
                modifiers.push('definition');
            }
            if (kind === 'field') modifiers.push('definition');
            if (['local', 'parameter', 'field'].includes(kind)) modifiers.push('definition');
            if (specifiers.includes('typedef') || kind === 'type') modifiers.push('definition');
            // K&R argument declarations repeat names already declared by the
            // function header; keep the header's parameter, not a duplicate.
            if (kind === 'parameter' && header && scope.names.get(tokens[name].value)?.kind === 'parameter') {
                continue;
            }
            // Top-level const applies to the object; const before a pointer
            // qualifies its pointee and does not make the pointer readonly.
            const pointer = tokens.slice(a, name).some((t) => t.value === '*');
            if ((!pointer && specifiers.includes('const')) ||
                    tokens.slice(a, name).some((t) => t.value === 'const')) modifiers.push('readonly');
            if (specifiers.includes('static')) modifiers.push('static');
            const container = kind === 'field' ? scope.tag : null;
            declare(name, kind, scope, modifiers, container);
            if (kind === 'type') known.set(tokens[name].value, 'type');
        }
        // Do not skip aggregate fields when the type specifier contains a body.
    }

    // Enum members are constants in their enclosing C scope.
    for (const scope of scopes.filter((s) => s.kind === 'enum')) {
        const start = tokens.findIndex((t) => t.offset === scope.start);
        const end = pairs.get(start);
        if (end === undefined) continue;
        for (const [a, b] of split(start + 1, end)) {
            if (a < b) declare(a, 'enumMember', scope.parent, ['definition', 'readonly'], scope.tag);
        }
    }

    // Turn declarations into symbols and references.  Scanning last means tag
    // declarations and function bodies are all visible to each identifier.
    const symbols = [];
    const byIndex = new Map();
    const addSymbol = (declaration) => {
        const { row, col } = posAt(declaration.offset);
        const scopeKind = ['local', 'parameter'].includes(declaration.kind) ? 'local' :
            declaration.kind === 'field' ? 'field' :
            declaration.modifiers.includes('static') ? 'file' : 'global';
        const symbol = {
            name: declaration.name, offset: declaration.offset,
            length: declaration.name.length, row, col,
            kind: declaration.kind, modifiers: declaration.modifiers.slice(),
            definition: declaration.modifiers.includes('definition'),
            declaration: true, scope: scopeKind,
            container: declaration.container, declIndex: declaration.index,
            origin: 'c', address: null,
        };
        symbols.push(symbol);
        byIndex.set(declaration.index, symbol);
        return symbol;
    };

    const tagByIndex = new Map();
    for (const declaration of tagDecls.values()) {
        const { row, col } = posAt(declaration.offset);
        const symbol = {
            name: declaration.name, offset: declaration.offset, length: declaration.name.length,
            row, col, kind: declaration.kind, modifiers: ['definition'],
            definition: true, declaration: true, scope: 'global',
            container: null, declIndex: declaration.index, origin: 'c', address: null,
        };
        symbols.push(symbol);
        tagByIndex.set(declaration.index, symbol);
    }
    for (const declaration of declarations.values()) {
        const symbol = addSymbol(declaration);
        if (declaration.index !== undefined && tagByIndex.has(declaration.index)) {
            // A tag that also landed in the normal declaration map.
            Object.assign(tagByIndex.get(declaration.index), symbol);
        }
        byIndex.set(declaration.index, symbol);
    }

    const macroByName = new Map();
    for (const macro of macros) {
        const { row, col } = posAt(macro.offset);
        const symbol = {
            name: macro.name, offset: macro.offset, length: macro.name.length,
            row, col, kind: 'macro', modifiers: ['definition'],
            definition: true, declaration: true, scope: 'global',
            container: null, declIndex: undefined, origin: 'c', address: null,
        };
        symbols.push(symbol);
        macroByName.set(macro.name, symbol);
        byIndex.set(`macro:${macro.name}`, symbol);
    }

    const refs = [];
    const tokensOut = [];
    for (let i = 0; i < tokens.length; i++) {
        const { value: name, offset } = tokens[i];
        if (!IDENT.test(name) || KEYWORDS.has(name)) continue;
        const declaration = declarations.get(i);
        let hit = declaration;
        let member = false;
        if (!hit && ['.', '->'].includes(tokens[i - 1]?.value)) {
            hit = { kind: 'field' };
            member = true;
        }
        if (!hit && ['struct', 'union', 'enum'].includes(tokens[i - 1]?.value)) {
            const tag = tagDecls.get(name);
            hit = tag ? tagByIndex.get(tag.index) : { kind: tokens[i - 1].value };
        }
        if (!hit) {
            const header = parameterHeaders.find((h) => h.start <= i && i < h.end);
            for (let scope = header?.scope || scopeAt(offset); scope; scope = scope.parent) {
                const candidate = scope.names.get(name);
                // C block locals are visible from their declaration onward.
                if (candidate && (scope === global || candidate.kind === 'parameter' ||
                        candidate.offset <= offset)) { hit = candidate; break; }
            }
        }
        if (!hit && known.has(name)) {
            const kind = known.get(name);
            // C tags live in a separate namespace; a bare name is not a tag.
            if (!['struct', 'union', 'enum'].includes(kind)) hit = { kind };
        }
        if (!hit && tokens[i + 1]?.value === '(') hit = { kind: 'function' };
        if (!hit && member) hit = { kind: 'field' };

        const declarationHit = hit && hit.index !== undefined ? hit : null;
        const symbol = declarationHit ? (byIndex.get(declarationHit.index) || tagByIndex.get(declarationHit.index)) : null;
        if (hit) {
            const { row, col } = posAt(offset);
            const modifiers = [...(hit.modifiers || [])].filter((m) =>
                !['declaration', 'definition'].includes(m) || declaration ||
                (['struct', 'union', 'enum'].includes(hit.kind) && tokens[i + 1]?.value === '{'));
            if (declaration) modifiers.push('declaration');
            if (hit.kind === 'global') modifiers.push('globalScope');
            if (hit.kind === 'local') modifiers.push('local');
            tokensOut.push({ offset, length: name.length, kind: hit.kind, modifiers, row, col });
        }
        if (declarationHit && !symbol) {
            // Keep the reference linked to its declaration even if the symbol
            // table has not been built yet.
        }
        const { row, col } = posAt(offset);
        refs.push({
            name, offset, length: name.length, row, col,
            origin: 'c', kind: hit ? hit.kind : null,
            declIndex: declarationHit ? declarationHit.index : null,
            member, unresolved: !hit,
        });
    }
    for (const macro of macroRefs) {
        const { row, col } = posAt(macro.offset);
        refs.push({ name: macro.name, offset: macro.offset, length: macro.name.length,
            row, col, origin: 'c', kind: 'macro', member: false,
            declIndex: macroByName.has(macro.name) ? `macro:${macro.name}` : null,
            unresolved: false });
    }

    // #include "..." targets, for include-path navigation.
    const includes = [];
    const includeRe = /^[ \t]*#[ \t]*include[ \t]*(?:[<"]([^">]+)[">])/gm;
    let include;
    while ((include = includeRe.exec(text))) {
        const target = include[1];
        const offset = include.index + include[0].lastIndexOf(target);
        const { row, col } = posAt(offset);
        includes.push({ target, offset, length: target.length, row, col });
    }

    // Keep the semantic-token array in source order.
    tokensOut.sort((a, b) => a.offset - b.offset);
    return { tokens: tokensOut, symbols, refs, includes, asmBlocks: blocks };
}

module.exports = { parseC, cCode, offsetPos };
