"""Seed the program's own functions and the runtime's veneer stubs.

Covers exact compiler-runtime signatures, Aztec stack-checked (``$csav``)
application functions, indirectly-reached OS/interrupt stubs, and the hybrid
naming of application wrappers.
"""

import json
import os

from lib.model import CONF_CODE, SeedInfo, TargetInfo
from lib.symtab import Kind, Source, Symbol

from lib.cachedirs import aztec_funcs_path


def _load_aztec_signatures(project=None):
    """The compiler-runtime signatures (Manx Aztec C86 v5.2a) ``make prebuild``
    builds per project (.cache/<project>/aztec_funcs.json).  The program's own
    routines are named by the sidecar's ``routines``, by content tag."""
    db = {'signatures': []}
    funcs_path = aztec_funcs_path(project) if project else None
    if funcs_path and os.path.exists(funcs_path):
        with open(funcs_path) as f:
            db['signatures'] = list(json.load(f).get('signatures', []))
    return db


_CSAV_PROLOGUE = b'\x5b\x55\x8b\xec'  # $csav: pop bx; push bp; mov bp, sp

# Application wrappers that forward to a single runtime routine.
_CSAV_WRAPPER_NAMES = {
    'aztec_lmalloc': 'app_malloc',
    'aztec_movblock': 'app_memmove',
    'aztec_lfree': 'app_free',
}


def _seed_csav_functions(ctx):
    """Detect Aztec stack-checked application functions.

    The compiler emits ``mov ax,<frame>; call $csav`` at the entry of every
    function when stack checking is enabled.  ``$csav`` is the shared runtime
    prologue (``pop bx; push bp; mov bp, sp``); the frame size is encoded as
    the negative immediate.  These are the program's own functions, not
    runtime-library routines.
    """
    data = ctx.binary_data
    n = len(data)
    found = {}
    i = 0
    while i < n - 2:
        if data[i] != 0xE8:
            i += 1
            continue
        rel = data[i + 1] | (data[i + 2] << 8)
        if rel >= 0x8000:
            rel -= 0x10000
        target = i + 3 + rel
        if (target >= 0 and target + 4 <= n
                and data[target:target + 4] == _CSAV_PROLOGUE):
            entry = i - 3
            if entry >= 0 and data[entry] == 0xB8:
                imm = data[entry + 1] | (data[entry + 2] << 8)
                frame = (-imm) & 0xFFFF
                if not ctx.hard_data[entry:entry + 3].any():
                    found[entry] = frame
                    if entry not in ctx.code_targets:
                        ctx.code_targets[entry] = TargetInfo(
                            address=entry, reason='csav',
                            confidence=CONF_CODE, source_offset=-1)
                    ctx.seeds.append(SeedInfo(
                        address=entry, source_phase='csav',
                        confidence=CONF_CODE,
                        reason=f'csav frame=0x{frame:x}'))
        i += 1
    ctx.csav_functions = found


_AZTEC_STUB_PROLOGUE = b'\x55\x8b\xec\xfc'  # push bp; mov bp, sp; cld


def _seed_aztec_stubs(ctx):
    """Seed Aztec OS-call / interrupt veneer stubs.

    The runtime lays out small ``push bp; mov bp, sp; cld`` stubs (``call far
    [cs:...]`` or direct ``int`` wrappers).  They are reached indirectly, so
    recursive descent never finds them and they leak out as data blocks.
    """
    from capstone import Cs, CS_ARCH_X86, CS_MODE_16

    data = ctx.binary_data
    n = len(data)
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    seed_terminators = {'ret', 'retf', 'iret', 'hlt', 'int3'}
    found = 0
    i = 0
    while True:
        i = data.find(_AZTEC_STUB_PROLOGUE, i)
        if i < 0:
            break
        entry = i
        i += 1
        if ctx.hard_data[entry:entry + 4].any():
            continue
        if entry in ctx.code_targets:
            continue
        end = min(entry + 256, n)
        if not any(insn.mnemonic in seed_terminators
                   for insn in md.disasm(data[entry:end], entry)):
            continue
        ctx.code_targets[entry] = TargetInfo(
            address=entry, reason='aztec_stub', confidence=CONF_CODE,
            source_offset=-1)
        ctx.seeds.append(SeedInfo(
            address=entry, source_phase='aztec_stub', confidence=CONF_CODE,
            reason='aztec veneer prologue'))
        found += 1
    return found


_APP_WRAPPER_MAX_INSNS = 12

# Callee substrings -> affinity tag, in priority order.
_APP_TAG_KEYS = (
    ('file', ('open', 'close', 'read', 'write', 'lseek', 'unlink',
              'rename', 'creat')),
    ('alloc', ('malloc', 'free', 'alloc', 'lmalloc', 'lfree')),
    ('io', ('con_', 'getch', 'putch', 'bios_', 'kbd', 'scr_', 'intvec')),
    ('mem', ('movmem', 'setmem', 'movblock', 'memcpy', 'memset')),
    ('string', ('str',)),
)


def _app_affinity_tag(callee_names):
    joined = ' '.join(callee_names).lower()
    for tag, keys in _APP_TAG_KEYS:
        if any(key in joined for key in keys):
            return tag
    return None


def _label_app_functions(label_map, ctx, instructions):
    """Give each csav application function a hybrid name.

    A function that forwards to exactly one runtime routine is named after
    that routine; otherwise it gets a callee-affinity tag (or a bare
    ``app_<addr>`` when there is no clear affinity).
    """
    csav_types = getattr(ctx, 'csav_functions', None)
    ctx.app_callees = {}
    if not csav_types:
        return
    by_addr = {ins.address: ins for ins in instructions}
    csav_sorted = sorted(csav_types)

    for index, entry in enumerate(csav_sorted):
        existing = label_map.get(entry)
        if (existing and existing.source is not Source.FIXED
                and existing.kind is not Kind.LABEL):
            # Preserve an explicit sidecar/known name (e.g. 'main').
            continue
        boundary = (csav_sorted[index + 1] if index + 1 < len(csav_sorted)
                    else len(ctx.binary_data))
        span = [(a, ins) for a, ins in by_addr.items()
                if entry <= a < boundary]
        targets = [ins.operands[0].imm for _, ins in span
                   if ins.mnemonic in ('call', 'lcall') and ins.operands
                   and ins.operands[0].imm not in csav_types]
        ctx.app_callees[entry] = targets
        callees = list(dict.fromkeys(
            label_map.get(t) for t in targets
            if label_map.get(t) not in (None, 'aztec_csav')
        ))

        if len(callees) == 1 and len(span) <= _APP_WRAPPER_MAX_INSNS:
            callee = callees[0]
            short = _CSAV_WRAPPER_NAMES.get(callee)
            if short:
                label_map[entry] = Symbol(short, kind=Kind.ROUTINE,
                                          source=Source.FIXED, offset=entry)
            else:
                base = (callee.split('_', 1)[-1]
                        if callee.startswith(('aztec_', 'dos_', 'bios_'))
                        else callee)
                label_map[entry] = Symbol.generated(
                    f'app_{base}', entry, Kind.ROUTINE, role='app')
            continue

        tag = _app_affinity_tag(callees)
        label_map[entry] = Symbol.generated(
            f'app_{tag}' if tag else 'app', entry, Kind.ROUTINE, role='app')


def _retag_app_functions(label_map, ctx, function_roots):
    """Tag an untagged application function by the names the sidecar's
    ``routines`` gave its callees since it was named.

    Those names key on content tags, so they arrive after
    :func:`_label_app_functions` ran; the callees it saw then were unnamed.
    """
    for entry, targets in (getattr(ctx, 'app_callees', None) or {}).items():
        sym = label_map.get(entry)
        if sym is None or sym.role != 'app' or sym.base != 'app':
            continue
        tag = _app_affinity_tag(
            label_map[t] for t in targets
            if t in label_map and label_map[t].source is Source.SIDECAR)
        if not tag:
            continue
        label_map[entry] = sym.renamed(
            str(sym).replace('app', f'app_{tag}', 1), sym.source,
            base=f'app_{tag}')
        if function_roots.get(entry) == sym:
            function_roots[entry] = label_map[entry]
