"""Discover resource destinations from C reads and assembler filename strings.

The I/O signatures here are the project's existing runtime APIs. Source paths,
line numbers, destination names and record sizes are never configuration.
"""

import os
import re


def _calls(text, names):
    """Yield balanced call arguments, including nested argument expressions."""
    for match in re.finditer(r'\b(' + '|'.join(names) + r')\s*\(', text):
        start = match.end()
        depth, quote, args, at = 1, None, [], start
        i = start
        while i < len(text):
            char = text[i]
            if quote:
                if char == '\\':
                    i += 2
                    continue
                if char == quote:
                    quote = None
            elif char in '\"\'':
                quote = char
            elif char in '([':
                depth += 1
            elif char in ')]':
                depth -= 1
                if depth == 0:
                    args.append(text[at:i].strip())
                    yield match[1], args, match.start()
                    break
            elif char == ',' and depth == 1:
                args.append(text[at:i].strip())
                at = i + 1
            i += 1


def _variable(expression):
    match = re.fullmatch(r'&?\s*([A-Za-z_]\w*)(?:\s*\[[^\]]+\])*', expression)
    return match[1] if match else None


def _inventory(project):
    aliases = {}
    for root, _dirs, files in os.walk(project.src_root):
        for filename in sorted(files):
            if not filename.endswith('.asm'):
                continue
            with open(os.path.join(root, filename), encoding='latin-1') as fh:
                text = fh.read()
            for match in re.finditer(
                    r'^__z(\w+):\s*\n\s*db\s+[\"\']([^\"\']+)[\"\']',
                    text, re.M):
                aliases[match[1]] = match[2].upper()

    def resources(expression):
        found = {v.upper() for v in re.findall(r'"([^"\n]+)"', expression)}
        found.update(aliases[token] for token in re.findall(r'\b\w+\b', expression)
                     if token in aliases)
        return found

    sources, handles = [], {}
    for path, _raw, text in project._files():
        calls = list(_calls(text, ('aztec_open', 'aztec_read', 'read_startup_file',
                                  'data_record_io', 'transfer_pc_file_record')))
        tags = resources(text)
        sources.append((os.path.relpath(path, project.src_root), text, calls, tags))
        for kind, args, at in calls:
            if kind != 'aztec_open' or len(args) != 2:
                continue
            assignment = re.search(r'(\w+)\s*=\s*$', text[max(0, at - 100):at])
            if assignment:
                # Locals must retain their source scope; globals also connect
                # an open in startup code to reads in another routine.
                key = assignment[1]
                targets = resources(args[0])
                handles.setdefault((path, key), set()).update(targets)
                if key != 'fd' and key != 'record_fd':
                    handles.setdefault(key, set()).update(targets)
    return sources, handles, resources


def _sequential(project, parts, sources):
    """Match a multipart file against one ordered sequence of direct reads.

    Memory runs consume all adjacent read buffers covering their byte span;
    runtime count expressions establish record width for variable-size reads.
    """
    solutions = []
    for path, text, calls, _tags in sources:
        reads = [(args, at) for kind, args, at in calls
                 if kind == 'aztec_read' and len(args) == 3]
        cursor, found = 0, {}
        for index, part in enumerate(parts):
            if 'raw' in part:
                break
            matched = False
            while cursor < len(reads):
                args, at = reads[cursor]
                cursor += 1
                name = _variable(args[1])
                if not name:
                    continue
                if 'memory' in part:
                    if name != part['memory']:
                        continue
                    total = int(args[2]) if args[2].isdigit() else 0
                    while total < part['size'] and cursor < len(reads):
                        next_args, _ = reads[cursor]
                        if not next_args[2].isdigit():
                            break
                        total += int(next_args[2])
                        cursor += 1
                    if total != part['size']:
                        break
                    matched = True
                    break
                size = args[2]
                if size.isdigit():
                    expected = part.get('size', part.get('record'))
                    if expected is None:
                        ctype, _inc, _open = project.declared_element(name, path)
                        expected = ctype.size if ctype else None
                    if int(size) != expected:
                        continue
                else:
                    assignments = list(re.finditer(
                        rf'\b{re.escape(size)}\s*=\s*([^;)]+)', text[:at]))
                    expression = assignments[-1][1] if assignments else ''
                    factor = re.match(r'(\d+)\s*\*', expression)
                    if not factor or int(factor[1]) != part.get('record'):
                        continue
                found[index] = (name, path)
                matched = True
                break
            if not matched:
                break
        else:
            solutions.append(found)
    if len(solutions) == 1:
        return solutions[0]
    return None


def destination(project, filename, index, part, remaining):
    if not hasattr(project, '_read_inventory'):
        project._read_inventory = _inventory(project)
    sources, handles, resources = project._read_inventory
    filename = filename.upper()
    parts = project.data_files.get(filename, {}).get('parts', [])
    if len(parts) > 2 and any('memory' in p for p in parts):
        sequence = _sequential(project, parts, sources)
        if sequence is not None and index in sequence:
            return sequence[index]
        raise ValueError(f'{filename}: cannot determine a unique ordered reader')
    candidates = []
    for path, text, calls, tags in sources:
        fullpath = os.path.join(project.src_root, path)
        for kind, args, at in calls:
            name, size, affinity = None, None, False
            if kind == 'read_startup_file' and len(args) == 3:
                if filename not in resources(args[0]):
                    continue
                name, size, affinity = _variable(args[1]), args[2], True
            elif kind == 'aztec_read' and len(args) == 3:
                target = handles.get((fullpath, args[0]), set()) or handles.get(args[0], set())
                if target and filename not in target:
                    continue
                affinity = filename in target or filename in tags
                name, size = _variable(args[1]), args[2]
            elif kind == 'data_record_io' and len(args) == 4:
                if args[0] != str(index) or args[3] != '0':
                    continue
                # The reader operates on the descriptor opened for this file.
                if filename not in handles.get('data_file_fd', set()):
                    continue
                name, affinity = _variable(args[1]), True
            elif kind == 'transfer_pc_file_record' and len(args) == 3:
                if args[2] != '0':
                    continue
                readers = [t for p, t, c, tags_ in sources
                           if any(k == 'aztec_read' and a[1] == 'buffer'
                                  for k, a, _ in c if len(a) == 3)
                           and filename in tags_]
                if not readers:
                    continue
                name, affinity = _variable(args[0]), True
            else:
                continue
            if not name:
                continue
            if size is not None:
                if not size.isdigit():
                    continue
                expected = part.get('size', part.get('record'))
                if expected is None:
                    ctype, _inc, _open = project.declared_element(name, path)
                    if ctype is None:
                        continue
                    expected = ctype.size
                if int(size) != expected:
                    continue
            candidates.append((affinity, name, path))
    candidates = [c for c in candidates if c[0]]
    # Multiple readers may use equivalent declarations for one resource.
    # Choose the most specific declaration, preserving its local scope.
    typed = []
    for _affinity, name, path in candidates:
        ctype, _inc, _open = project.declared_element(name, path)
        if ctype is not None:
            from .derive import _specificity
            typed.append((_specificity(ctype), name, path))
    if typed:
        best = max(t[0] for t in typed)
        choices = sorted({(name, path) for rank, name, path in typed if rank == best})
        names = {name for name, _path in choices}
        if len(names) == 1:
            return choices[0]
        # Transfer helpers have local buffers in each caller. Their shared
        # declaration establishes the same record type independently of name.
        types = {repr(project.declared_element(name, path)[0]) for name, path in choices}
        if len(types) == 1 and all(c[0] for c in candidates):
            return choices[0]
    detail = ', '.join(f'{name} ({path})' for _, name, path in candidates) or 'none'
    raise ValueError(f'{filename} part {index}: cannot determine read destination: {detail}')
