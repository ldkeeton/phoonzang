'use strict';

// Semantic roles for the generated C89 / Manx sources. No colors live here.
// This is a tolerant source scanner, not a preprocessor or a C type checker.
const IDENT = /^[A-Za-z_]\w*$/;
const BUILTINS = new Set('void char short int long float double signed unsigned'.split(' '));
const QUALIFIERS = new Set('const volatile extern static register auto typedef far near huge _far _near __far __near cdecl pascal _cdecl _pascal'.split(' '));
const KEYWORDS = new Set([...BUILTINS, ...QUALIFIERS,
    ...'struct union enum if else for while do switch case default break continue return goto sizeof asm'.split(' ')]);

function semanticTokens(code, known) {
    // Preprocessor directives and inline assembly use different identifier rules.
    // Keep their offsets while removing them from C declaration parsing.
    code = code.replace(/^[ \t]*#asm\b[\s\S]*?^[ \t]*#endasm\b[^\n]*/gm,
        block => block.replace(/[^\r\n]/g, ' '));
    const macros = [];
    code = code.replace(/^[ \t]*#[^\n]*(?:\\\r?\n[^\n]*)*/gm, (line, offset) => {
        const define = /^\s*#\s*define\s+([A-Za-z_]\w*)/.exec(line);
        if (define) macros.push({ name: define[1], offset: offset + line.indexOf(define[1]), declaration: true });
        else if (!/^\s*#\s*(?:asm|endasm)\b/.test(line)) {
            // Retain known macros in #if expressions, but not directive words.
            const expression = line.replace(/^\s*#\s*\w+/, x => ' '.repeat(x.length));
            for (const m of expression.matchAll(/[A-Za-z_]\w*/g)) {
                if (known.get(m[0]) === 'macro') macros.push({ name: m[0], offset: offset + m.index });
            }
        }
        return line.replace(/[^\r\n]/g, ' ');
    });
    const tokens = [...code.matchAll(/[A-Za-z_]\w*|(?:0[xX][\da-fA-F]+|\d[\w.]*|\.\d+)|->|\S/g)]
        .map(m => ({ value: m[0], offset: m.index }));
    const pairs = new Map(), stack = [];
    for (let i = 0; i < tokens.length; i++) {
        const value = tokens[i].value;
        if ('([{'.includes(value)) stack.push(i);
        else if (')]}'.includes(value)) {
            const opening = stack[stack.length - 1];
            if (opening !== undefined && '([{'.indexOf(tokens[opening].value) === ')]}'.indexOf(value)) {
                stack.pop(); pairs.set(opening, i); pairs.set(i, opening);
            }
        }
    }
    const global = { start: 0, end: code.length + 1, kind: 'global', names: new Map(), parent: null };
    const scopes = [global], scopeStack = [global];
    for (let i = 0; i < tokens.length; i++) {
        if (tokens[i].value === '{') {
            const aggregate = tokens[i - 1]?.value === 'struct' || tokens[i - 1]?.value === 'union' || tokens[i - 1]?.value === 'enum' ? tokens[i - 1].value :
                ['struct', 'union', 'enum'].includes(tokens[i - 2]?.value) ? tokens[i - 2].value : null;
            const scope = { start: tokens[i].offset, end: tokens[pairs.get(i)]?.offset ?? code.length,
                kind: aggregate || 'block', names: new Map(), parent: scopeStack[scopeStack.length - 1] };
            scopes.push(scope); scopeStack.push(scope);
        } else if (tokens[i].value === '}' && scopeStack.length > 1) scopeStack.pop();
    }
    const scopeAt = offset => {
        let found = global;
        for (const scope of scopes) if (scope.start <= offset && offset < scope.end && scope.start >= found.start) found = scope;
        return found;
    };
    const declarations = new Map(), parameterHeaders = [];
    const declare = (index, kind, scope, modifiers = []) => {
        if (index === undefined || !IDENT.test(tokens[index]?.value) || KEYWORDS.has(tokens[index].value)) return;
        const hit = { kind, modifiers, offset: tokens[index].offset };
        declarations.set(index, hit);
        scope.names.set(tokens[index].value, hit);
    };
    const split = (start, end, delimiter = ',') => {
        const parts = []; let from = start;
        for (let i = start; i < end; i++) {
            if (tokens[i].value === delimiter) { parts.push([from, i]); from = i + 1; }
            else if ('([{'.includes(tokens[i].value) && pairs.has(i)) i = pairs.get(i);
        }
        parts.push([from, end]); return parts;
    };
    const typeEnd = start => {
        let i = start, type = false;
        for (; i < tokens.length;) {
            const word = tokens[i].value;
            if (QUALIFIERS.has(word)) { i++; continue; }
            if (BUILTINS.has(word) || known.get(word) === 'type') { type = true; i++; continue; }
            if (['struct', 'union', 'enum'].includes(word)) {
                type = true; i++;
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
    // Identify function bodies first so K&R argument declarations are attached
    // to their function rather than leaking into the file's global namespace.
    for (let i = 0; i < tokens.length - 1; i++) {
        if (!IDENT.test(tokens[i].value) || KEYWORDS.has(tokens[i].value) || tokens[i + 1].value !== '(' || scopeAt(tokens[i].offset) !== global) continue;
        const close = pairs.get(i + 1);
        if (close === undefined) continue;
        let body = close + 1;
        const oldStyle = split(i + 2, close).every(([a, b]) => b === a || (b === a + 1 && IDENT.test(tokens[a].value) && !KEYWORDS.has(tokens[a].value)));
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
        const scope = scopes.find(s => s.start === tokens[body].offset);
        declare(i, 'function', global, ['definition']);
        parameterHeaders.push({ start: i + 2, end: body, scope });
        for (const [a, b] of split(i + 2, close)) {
            const start = oldStyle ? a : typeEnd(a);
            const name = declarator(start, b);
            if (name !== undefined && name < b) declare(name, 'parameter', scope);
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
        const header = parameterHeaders.find(h => h.start <= i && i < h.end);
        const scope = header?.scope || scopeAt(tokens[i].offset);
        let end = endType;
        while (end < tokens.length && ![';', '{', '}'].includes(tokens[end].value)) {
            if ('(['.includes(tokens[end].value) && pairs.has(end)) end = pairs.get(end);
            end++;
        }
        const specifiers = tokens.slice(i, endType).map(t => t.value);
        for (const [a, b] of split(endType, end)) {
            const name = declarator(a, b);
            if (name === undefined || name >= b) continue;
            const pointerFunction = tokens[a]?.value === '(';
            const functionName = !pointerFunction && tokens[name + 1]?.value === '(';
            let kind = specifiers.includes('typedef') ? 'type' : functionName ? 'function' :
                ['struct', 'union'].includes(scope.kind) ? 'property' :
                header && scope.names.get(tokens[name].value)?.kind === 'parameter' ? 'parameter' :
                scope === global || specifiers.includes('extern') ? 'global' : 'local';
            const modifiers = functionName && declarations.get(name)?.modifiers.includes('definition') ? ['definition'] : [];
            // Top-level const applies to the object; const before a pointer
            // qualifies its pointee and does not make the pointer readonly.
            const pointer = tokens.slice(a, name).some(t => t.value === '*');
            if ((!pointer && specifiers.includes('const')) || tokens.slice(a, name).some(t => t.value === 'const')) modifiers.push('readonly');
            if (specifiers.includes('static')) modifiers.push('static');
            declare(name, kind, scope, modifiers);
            if (kind === 'type') known.set(tokens[name].value, 'type');
        }
        // Do not skip aggregate fields when the type specifier contains a body.
    }
    // Enum members are constants in their enclosing C scope.
    for (const scope of scopes.filter(s => s.kind === 'enum')) {
        const start = tokens.findIndex(t => t.offset === scope.start);
        const end = pairs.get(start);
        if (end === undefined) continue;
        for (const [a, b] of split(start + 1, end)) if (a < b) declare(a, 'enumMember', scope.parent, ['readonly']);
    }
    const output = [];
    const push = (offset, name, kind, modifiers) => output.push({ offset, length: name.length, kind, modifiers });
    for (let i = 0; i < tokens.length; i++) {
        const { value: name, offset } = tokens[i];
        if (!IDENT.test(name) || KEYWORDS.has(name)) continue;
        const declaration = declarations.get(i);
        let hit = declaration;
        if (!hit && ['.', '->'].includes(tokens[i - 1]?.value)) hit = { kind: 'property' };
        if (!hit && ['struct', 'union', 'enum'].includes(tokens[i - 1]?.value)) {
            hit = { kind: tokens[i - 1].value };
            if (tokens[i + 1]?.value === '{') hit.modifiers = ['declaration', 'definition'];
        }
        if (!hit) {
            const header = parameterHeaders.find(h => h.start <= i && i < h.end);
            for (let scope = header?.scope || scopeAt(offset); scope; scope = scope.parent) {
                const candidate = scope.names.get(name);
                // C block locals are visible from their declaration onward.
                if (candidate && (scope === global || candidate.kind === 'parameter' || candidate.offset <= offset)) { hit = candidate; break; }
            }
        }
        if (!hit && known.has(name)) {
            const kind = known.get(name);
            // C tags live in a separate namespace; a bare name is not a tag.
            if (!['struct', 'union', 'enum'].includes(kind)) hit = { kind };
        }
        if (!hit && tokens[i + 1]?.value === '(') hit = { kind: 'function' };
        if (!hit) continue;
        const modifiers = [...(hit.modifiers || [])].filter(m => !['declaration', 'definition'].includes(m) || declaration || (['struct', 'union', 'enum'].includes(hit.kind) && tokens[i + 1]?.value === '{'));
        if (declaration) modifiers.push('declaration');
        if (hit.kind === 'global') modifiers.push('globalScope');
        if (hit.kind === 'local') modifiers.push('local');
        push(offset, name, hit.kind, modifiers);
    }
    for (const macro of macros) push(macro.offset, macro.name, 'macro', macro.declaration ? ['declaration'] : []);
    output.sort((a, b) => a.offset - b.offset);
    let row = 0, lineStart = 0;
    for (const token of output) {
        let next;
        while ((next = code.indexOf('\n', lineStart)) >= 0 && next < token.offset) { row++; lineStart = next + 1; }
        token.row = row; token.col = token.offset - lineStart;
    }
    return output;
}
module.exports = { semanticTokens };
