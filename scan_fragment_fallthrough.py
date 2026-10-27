#!/usr/bin/env python3
"""List generated fragments connected by fallthrough or direct branches.

Run from the repository root: python3 scan_fragment_fallthrough.py
Resolves per-binary label aliases and filters known DOS termination paths.
Direct jumps may indicate shared implementations or ordinary tail calls. This is a
source-level candidate scan, not proof that routines should be merged:
independent entry points, shared epilogues and decoded data need review.
Offsets come from include comments; instruction sizes are not verified.
"""

import collections
import argparse
import json
import pathlib
import re


def dos_exit(operations):
    """Recognize a proven DOS termination at the end of a basic block.

    Stop at branches/calls rather than borrowing an AH value from another
    execution path. Unknown writes to AX/AH invalidate the value.
    """
    ah = None
    for operation in operations:
        parts = operation.lower().split(None, 1)
        mnemonic = parts[0]
        operands = parts[1].replace(' ', '') if len(parts) > 1 else ''
        if mnemonic == 'int':
            if operands in ('0x20', '32', '0x27', '39'):
                return True
            if operands in ('0x21', '33') and ah in (0, 0x31, 0x4c):
                return True
            ah = None
        elif mnemonic.startswith(('j', 'loop', 'call')) or operation.endswith(':'):
            ah = None
        elif mnemonic == 'mov' and operands.startswith(('ax,', 'ah,')):
            dest, value = operands.split(',', 1)
            try:
                value = re.sub(r'^(?:strict)?(?:word|byte)', '', value)
                value = int(value, 0)
                ah = (value >> 8 if dest == 'ax' else value) & 255
            except ValueError:
                ah = None
        elif mnemonic in ('xor', 'sub') and operands in ('ax,ax', 'ah,ah'):
            ah = 0
        elif (mnemonic not in ('cmp', 'test', 'push', 'out')
              and (operands.split(',')[0] in ('ax', 'ah')
                   or mnemonic in ('mul', 'imul', 'div', 'idiv', 'lodsw',
                                   'lahf', 'cbw', 'popa', 'aaa', 'aas', 'aam', 'aad')
                   or (mnemonic == 'xchg' and operands.split(',')[-1] in ('ax', 'ah')))):
            ah = None
    return False


# NASM symbols are case-sensitive. Mnemonics and directives are not.
SYMBOL = r'[A-Za-z_.$?@][\w.$?@~#]*'
DATA = {'db', 'dw', 'dd', 'dq', 'dt', 'times', 'resb', 'resw', 'incbin', 'align'}
RETURNS = {'ret', 'retf', 'retn', 'iret', 'iretw', 'iretd'}
REGISTERS = {'ax', 'bx', 'cx', 'dx', 'si', 'di', 'bp', 'sp',
             'eax', 'ebx', 'ecx', 'edx', 'esi', 'edi', 'ebp', 'esp'}


def clean_line(row):
    return re.sub(r'''('[^']*'|"[^"]*")|;.*$''',
                  lambda m: '' if m[0].startswith(';') else m[0], row).strip()


def scoped(name, scope):
    return scope + name if name.startswith('.') and not name.startswith('..') else name


def direct_target(row, scope):
    """Return a direct symbolic operand; leave registers/indirection unresolved."""
    parts = row.split(None, 1)
    if len(parts) != 2:
        return None
    operand = re.sub(r'^(?:(?:short|near|far|word|dword)\s+)+', '', parts[1], flags=re.I)
    if re.fullmatch(SYMBOL, operand) and operand.lower() not in REGISTERS:
        return scoped(operand, scope)
    return None


def is_branch(row):
    mnemonic = row.split()[0].lower()
    return mnemonic in ('jmp', 'ljmp') or mnemonic.startswith(('j', 'loop'))


def walk(operations, scopes, target_index):
    """Walk one fragment from its entry; return end reachability and live rows.

    Calls are assumed to return. An external jump ends its path; conditional
    branches retain their untaken path. DOS state remains basic-block local.
    """
    pending, visited, live = [(0, ())], set(), set()
    end = False
    while pending:
        index, block = pending.pop()
        if index == len(operations):
            end = True
            continue
        if (index, block) in visited:
            continue
        visited.add((index, block))
        live.add(index)
        row = operations[index]
        if row.endswith(':'):
            pending.append((index + 1, ()))
            continue
        mnemonic = row.split()[0].lower()
        if mnemonic in RETURNS | DATA:
            continue
        current = block + (row,)
        if dos_exit(current):
            continue
        if is_branch(row):
            target = target_index(direct_target(row, scopes[index]))
            if target is not None:
                pending.append((target, ()))
            if mnemonic not in ('jmp', 'ljmp'):
                pending.append((index + 1, ()))
        else:
            pending.append((index + 1, () if mnemonic.startswith('call') else current))
    return end, live


def reaches_end(operations):
    """Compatibility helper for walking local control flow without a master."""
    labels, scopes, scope = {}, [], ''
    for i, row in enumerate(operations):
        if row.endswith(':'):
            name = row[:-1]
            if not name.startswith('.'):
                scope = name
            labels[scoped(name, scope)] = i
        scopes.append(scope)
    return walk(operations, scopes, labels.get)[0]


def read_master(root, master):
    """Index includes and symbol-only EQU chains in their assembly scope."""
    fragments, aliases, labels, adjacent = [], {}, {}, []
    scope, previous = '', None

    def equ(row):
        match = re.fullmatch(r'(' + SYMBOL + r')\s+equ\s+(.+)', row, re.I)
        if not match:
            return False
        name, value = match.groups()
        if re.fullmatch(SYMBOL, value):
            aliases[scoped(name, scope)] = scoped(value, scope)
        return True

    for line in master.read_text().splitlines():
        match = re.match(r'\s*%include "([^"]+)"\s*;\s*(0x[0-9a-f]+)', line, re.I)
        if not match:
            row = clean_line(line)
            if row and not equ(row):
                previous = None
                label = re.match(r'(' + SYMBOL + r'):', row)
                if label and not label[1].startswith('.'):
                    scope = label[1]
            continue
        relative, address = match.groups()
        path = root / relative
        if not path.exists():
            raise ValueError(f'{master.name}: missing fragment {relative}')
        fid = len(fragments)
        rows, scopes = [], []
        for line in path.read_text().splitlines():
            row = clean_line(line)
            if not row or equ(row):
                continue
            # Handle both standalone labels and "label: instruction".
            while (label := re.match(r'^(' + SYMBOL + r'):\s*', row)):
                name = label[1]
                if not name.startswith('.'):
                    scope = name
                labels[scoped(name, scope)] = (fid, len(rows))
                rows.append(name + ':')
                scopes.append(scope)
                row = row[label.end():]
            if row:
                rows.append(row)
                scopes.append(scope)
        fragments.append(dict(path=relative, rows=rows, scopes=scopes,
                              address=address))
        if previous is not None and int(address, 16) > int(fragments[previous]['address'], 16):
            adjacent.append((previous, fid))
        previous = fid
    return fragments, aliases, labels, adjacent


def scan(root, binaries=(), show_rejected=False):
    """Return candidate edges and evidence, preserving the original tuple API.

    Keys are (source, destination, source_operation, destination_operation,
    reachable). For branches, source_operation is the branch, not necessarily
    the source fragment's final operation. Locations identify destination
    include offsets, not verified instruction addresses.
    """
    root = pathlib.Path(root)
    hits, details = collections.defaultdict(list), {}
    masters = sorted(root.glob('*.asm'))
    if not masters:
        raise ValueError(f'no master .asm files found in {root}')
    missing = set(binaries) - {master.stem for master in masters}
    if missing:
        raise ValueError('unknown binaries: ' + ', '.join(sorted(missing)))
    for master in masters:
        if binaries and master.stem not in binaries:
            continue
        fragments, aliases, labels, adjacent = read_master(root, master)
        resolved = {}

        def resolve(name):
            if name is None:
                return None
            chain, seen = [], set()
            while name not in labels and name in aliases:
                if name in resolved:
                    result = resolved[name]
                    break
                if name in seen:
                    result = None
                    break
                seen.add(name)
                chain.append(name)
                name = aliases[name]
            else:
                result = (name, labels[name]) if name in labels else None
            for alias in chain:
                resolved[alias] = result
            return result

        flows, references = [], collections.defaultdict(list)
        for fid, fragment in enumerate(fragments):
            def local_target(name):
                target = resolve(name)
                return target[1][1] if target and target[1][0] == fid else None
            flow = walk(fragment['rows'], fragment['scopes'], local_target)
            flows.append(flow)
            # Keep all syntactic references as conservative evidence, even
            # when the fragment's primary entry cannot reach that row.
            for i, row in enumerate(fragment['rows']):
                if is_branch(row) or row.lower().startswith(('call ', 'call\t')):
                    target = resolve(direct_target(row, fragment['scopes'][i]))
                    if target:
                        references[target[1][0]].append((fid, i, target))

        def first_code(fid, start=0):
            return next((row for row in fragments[fid]['rows'][start:]
                         if not row.endswith(':')), '')

        def add(source, destination, operation, first, reachable, notes):
            key = (fragments[source]['path'], fragments[destination]['path'],
                   operation, first, reachable)
            location = f"{master.stem}:{fragments[destination]['address']}"
            if location not in hits[key]:
                hits[key].append(location)
            evidence = details.setdefault(key, [])
            for note in notes:
                if note not in evidence:
                    evidence.append(note)
            current.add((key, source, destination))

        current = set()
        for source, destination in adjacent:
            old_code = [row for row in fragments[source]['rows'] if not row.endswith(':')]
            first = first_code(destination)
            if not old_code or not first:
                continue
            last = old_code[-1]
            if last.split()[0].lower() in RETURNS | DATA | {'jmp', 'ljmp'}:
                continue
            reachable = flows[source][0]
            if reachable or show_rejected:
                add(source, destination, last, first, reachable, ['edge: fallthrough'])

        for destination, refs in references.items():
            entry_index = next((i for i, row in enumerate(fragments[destination]['rows'])
                                if not row.endswith(':')), len(fragments[destination]['rows']))
            for source, index, (name, (_, target_index)) in refs:
                row = fragments[source]['rows'][index]
                if source == destination or not is_branch(row):
                    continue
                reachable = index in flows[source][1]
                if not reachable and not show_rejected:
                    continue
                interior = target_index > entry_index
                kind = ('interior entry; possible shared implementation' if interior
                        else 'fragment entry; possible tail call' if row.split()[0].lower() in ('jmp', 'ljmp')
                        else 'fragment entry; cross-fragment conditional branch')
                first = first_code(destination, target_index)
                notes = ['edge: direct branch',
                         f'{master.stem}: {row} resolves to {name} ({kind})']
                if not first or first.split()[0].lower() in DATA:
                    notes.append(f'{master.stem}: target is data or has no instruction; review code/data classification')
                add(source, destination, row, first, reachable, notes)

        # Cross-reference edges using the same alias-aware symbol index.
        for key, source, destination in sorted(current):
            notes = details[key]
            callers = sorted({fragments[fid]['path'] for fid, index, _ in references[destination]
                              if fid != destination and fragments[fid]['rows'][index].lower().startswith('call')})
            if callers:
                notes.append(f'{master.stem}: destination called from ' + ', '.join(callers))
            backedges = sorted({fragments[destination]['rows'][index]
                         for fid, index, _ in references[source]
                         if fid == destination and is_branch(fragments[fid]['rows'][index])})
            if backedges:
                notes.append(f'{master.stem}: destination branches back into source: ' + ', '.join(backedges))
            if source:
                preceding = [row for row in fragments[source - 1]['rows'] if not row.endswith(':')]
                if (preceding and preceding[-1].split()[0].lower() in DATA
                        and not references[source]):
                    notes.append(f'{master.stem}: source follows data with no direct code references; check for decoded data')
            if key[3].lower().startswith('pop '):
                note = 'shared epilogue: preserve entry labels'
                if note not in notes:
                    notes.append(note)
    return hits, details


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('root', nargs='?', type=pathlib.Path,
                        default=pathlib.Path(__file__).resolve().parent / 'src_DSAVANT')
    parser.add_argument('--binary', action='append', default=[], help='binary to scan (repeatable)')
    parser.add_argument('--all', action='store_true', help='also show rejected textual candidates')
    parser.add_argument('--json', action='store_true', help='emit a machine-readable report')
    args = parser.parse_args(argv)
    try:
        hits, details = scan(args.root, args.binary, args.all)
    except (OSError, ValueError) as exc:
        parser.error(str(exc))
    report = [dict(source=a, destination=b, last=last, first=start,
                   status='candidate' if reachable else 'rejected',
                   locations=locations, notes=details[key])
              for key, locations in hits.items()
              for a, b, last, start, reachable in [key]]
    if args.json:
        print(json.dumps(report, indent=2))
    else:
        for item in report:
            print(f'[{item["status"]}] {item["source"]} -> {item["destination"]}\n'
                  f'  {item["last"]} -> {item["first"]} [{", ".join(item["locations"])}]')
            for note in item['notes']:
                print(f'  {note}')
        print(f'\n{sum(item["status"] == "candidate" for item in report)} candidate boundaries'
              f'; {sum(item["status"] == "rejected" for item in report)} rejected shown')


if __name__ == '__main__':
    main()
