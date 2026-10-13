"""Function/branch ownership analysis and local-label assignment."""

from capstone import Cs, CS_ARCH_X86, CS_MODE_16, CS_OP_IMM
from lib.names import loc_name, startswith_stem, stem


def _compute_func_boundaries(label_map, binary_data):
    """Return {start: (end, name)} for each named function."""
    if not label_map:
        return {}
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    _TERMINATORS = {'ret', 'retf', 'iret', 'hlt'}
    boundaries = {}
    for off in sorted(label_map.keys()):
        name = label_map[off]
        if stem(name) == f'loc_{off:04x}':
            continue
        func_start = off
        current = list(md.disasm(binary_data[off:min(off + 8, len(binary_data))], off))
        has_entry_prefix = (
            len(current) >= 3
            and current[0].address == off
            and current[1].address == off + current[0].size
            and current[0].mnemonic not in ('ret', 'retf', 'retn', 'iret',
                                            'hlt', 'jmp', 'ljmp', 'ud2')
            and current[1].mnemonic == 'push'
            and current[1].op_str == 'bp'
            and current[2].mnemonic == 'mov'
            and current[2].op_str == 'bp, sp'
        )
        if not has_entry_prefix:
            for i in range(min(16, off), 0, -1):
                p = off - i
                if binary_data[p] == 0x55:
                    try:
                        prev = list(md.disasm(binary_data[p:off], p))
                    except Exception:
                        prev = []
                    if prev and prev[-1].address + prev[-1].size == off:
                        func_start = p
                        break
        end = min(func_start + 512, len(binary_data))
        for insn in md.disasm(binary_data[func_start:end], func_start):
            if insn.mnemonic in _TERMINATORS:
                end = insn.address + insn.size
                break
            end = insn.address + insn.size
        if func_start not in boundaries:
            boundaries[func_start] = (end, name)
    return boundaries


def _direct_flow_targets(insn, binary_size, start_offset=0):
    """Return in-binary targets of direct control-flow instructions."""
    mnemonic = insn.mnemonic
    if not (mnemonic.startswith('j') or mnemonic in (
            'call', 'lcall', 'loop', 'loope', 'loopne')):
        return ()
    immediates = [op for op in insn.operands if op.type == CS_OP_IMM]
    if mnemonic in ('ljmp', 'lcall') and len(immediates) >= 2:
        # Far transfers have segment and offset immediates; only the offset
        # denotes a location in this flat binary image.
        immediates = immediates[-1:]
    return tuple(
        target for op in immediates
        if start_offset <= (target := (op.imm & 0xFFFF)) < binary_size
    )


def _is_conditional_branch(mnemonic):
    return ((mnemonic.startswith('j') and mnemonic not in ('jmp', 'ljmp'))
            or mnemonic in ('loop', 'loope', 'loopne', 'jcxz', 'jecxz'))


def _direct_branch_targets(insn, binary_size, start_offset=0):
    """Return immediate destinations of direct jumps, excluding calls."""
    mnemonic = insn.mnemonic
    if not (mnemonic.startswith('j') or mnemonic in (
            'loop', 'loope', 'loopne')):
        return ()
    return _direct_flow_targets(insn, binary_size, start_offset)


def _function_roots(label_map, instructions, entry_points=(),
                    binary_size=None, start_offset=0):
    """Find function roots from named labels, entries and direct calls."""
    roots = {}
    for address, name in (label_map or {}).items():
        if startswith_stem(name, ('loc_', 'data_')):
            continue
        roots[address] = name

    for address in entry_points or ():
        roots.setdefault(address, None)

    size = binary_size if binary_size is not None else 0x10000
    for insn in instructions or ():
        if insn.mnemonic not in ('call', 'lcall'):
            continue
        for address in _direct_flow_targets(insn, size, start_offset):
            name = (label_map or {}).get(address)
            if name and startswith_stem(name, ('loc_', 'data_')):
                name = None
            roots.setdefault(address, name)
    return roots


def _compute_branch_ownership(instructions, function_roots,
                              branch_edges=(), extra_flow_edges=(),
                              binary_size=None, start_offset=0):
    """Return reachable function owners and direct branch edges.

    Reachability follows decoded instructions, so a reachable block after a
    return instruction is still owned by its function when a branch reaches
    it. Calls create separate roots but continue at their fallthrough site.
    """
    insn_by_addr = {insn.address: insn for insn in instructions or ()}
    ordered = sorted(insn_by_addr.values(), key=lambda insn: insn.address)
    size = binary_size if binary_size is not None else 0x10000
    roots = {
        address: name for address, name in (function_roots or {}).items()
        if address in insn_by_addr and start_offset <= address < size
    }
    root_addresses = set(roots)

    direct_edges = set(branch_edges or ())
    for insn in ordered:
        for target in _direct_branch_targets(insn, size, start_offset):
            direct_edges.add((insn.address, target))

    outgoing = {insn.address: set() for insn in ordered}
    edge_sources = {}
    for source, target in direct_edges | set(extra_flow_edges or ()):
        if source not in insn_by_addr or not (start_offset <= target < size):
            continue
        outgoing[source].add(target)
        if (source, target) in direct_edges:
            edge_sources.setdefault(target, set()).add(source)

    for index, insn in enumerate(ordered):
        mnemonic = insn.mnemonic
        if mnemonic in ('ret', 'retf', 'iret', 'hlt', 'ud2'):
            continue
        next_address = insn.address + insn.size
        has_fallthrough = (
            mnemonic in ('call', 'lcall')
            or _is_conditional_branch(mnemonic)
            or mnemonic not in ('jmp', 'ljmp')
        )
        if (has_fallthrough and index + 1 < len(ordered)
                and ordered[index + 1].address == next_address):
            outgoing[insn.address].add(next_address)

    owners = {}

    def propagate(root):
        pending = [root]
        visited = set()
        while pending:
            address = pending.pop()
            if address in visited:
                continue
            visited.add(address)
            if address != root and address in root_addresses:
                continue
            owners.setdefault(address, set()).add(root)
            pending.extend(outgoing.get(address, ()))

    for root in sorted(roots):
        propagate(root)

    # Classifier output can contain detached code islands with no named
    # function or call-site root (for example, switch arms reached through an
    # indirect jump table that was not recovered). Group each rootless weak
    # CFG component under one inferred owner so its arms and shared epilogues
    # retain a common local scope.
    all_addresses = set(insn_by_addr)
    unowned = all_addresses - owners.keys()
    undirected = {address: set() for address in unowned}
    for source in unowned:
        for target in outgoing.get(source, ()):
            if target in unowned:
                undirected[source].add(target)
                undirected[target].add(source)
    while unowned:
        component = set()
        pending = [min(unowned)]
        while pending:
            address = pending.pop()
            if address in component:
                continue
            component.add(address)
            pending.extend(undirected.get(address, ()) - component)
        incoming = {
            target for source in component
            for target in outgoing.get(source, ()) if target in component
        }
        external_owners = {
            owner
            for source in component
            for target in outgoing.get(source, ())
            if target not in component
            for owner in owners.get(target, ())
        }
        if len(external_owners) == 1:
            root = next(iter(external_owners))
        else:
            entries = sorted(component - incoming)
            root = entries[0] if entries else min(component)
            roots[root] = None
            root_addresses.add(root)
        for address in component:
            owners.setdefault(address, set()).add(root)
        unowned -= component

    return owners, edge_sources, direct_edges, roots


def _local_branch_targets(branch_targets, owners, edge_sources,
                          function_roots):
    """Select branch targets uniquely owned by one non-entry function."""
    root_addresses = set(function_roots or ())
    local = set()
    for target in branch_targets or ():
        target_owners = owners.get(target, set())
        if target in root_addresses or len(target_owners) != 1:
            continue
        sources = edge_sources.get(target, set())
        if not sources:
            continue
        owner = next(iter(target_owners))
        if all(owners.get(source) == {owner} for source in sources):
            local.add(target)
    return local


def _compute_local_labels(local_targets, owners, function_roots, label_map,
                          fragment_names=None):
    """Return local assembly names for branch targets with unique owners.

    Owners are normally scoped by their function-root name.  A root without a
    friendly name (for example a bare ``loc_`` helper that is a call target)
    is scoped by its own address, so its locals read as ``@..loc_4be6.l1``.
    """
    local_labels = {}
    named_counts = {}
    for off in sorted(local_targets or ()):
        if off in (label_map or {}):
            continue
        owner_set = owners.get(off, set())
        if len(owner_set) != 1:
            continue
        owner = next(iter(owner_set))
        name = (function_roots or {}).get(owner)
        if not name or startswith_stem(name, ('loc_', 'data_')):
            candidate = (label_map or {}).get(owner)
            if (fragment_names and isinstance(candidate, str)
                    and candidate in fragment_names):
                name = candidate
        if not name or startswith_stem(name, ('loc_', 'data_')):
            # Scope by the owner's own address, never a binary-wide counter,
            # so adding or naming another routine cannot renumber these.
            candidate = (label_map or {}).get(owner)
            name = (candidate if isinstance(candidate, str)
                    and startswith_stem(candidate, 'loc_')
                    else loc_name(owner))
        named_counts[owner] = named_counts.get(owner, 0) + 1
        local_labels[off] = f'@..{name}.l{named_counts[owner]}'
    return local_labels
