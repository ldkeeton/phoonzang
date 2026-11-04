#!/usr/bin/env python3
"""Fan out C reversal of one binary's routines to parallel Codex agents (v3.1).

Every agent works in THIS working tree; up to -j run at once.  Every make
command queues on the tree's one .cache/build.lock, so builds take turns.
The driver never writes to git: you review `git diff` and commit yourself.

One invocation = one binary, then stop for review:

  python3 tools/codex_fanout.py --next -n         # dry run of the smallest binary left
  python3 tools/codex_fanout.py --next            # run it (refuses a dirty tree)
  python3 tools/codex_fanout.py vpops --only HKLS,LIRP -j 2
  python3 tools/codex_fanout.py vpops --resume 20261105-090000
  python3 tools/codex_fanout.py --lint-only [BIN] # lint sweep of the current tree

Per routine:
  1. author: a Codex session drafts C outside the tree (.cache/fanout/<run>/<bin>/<label>/draft.c),
     places it once make probe LINKED=1 matches, names its symbols.  The prompt names
     any near-identical routine in another binary (a twin) whose name/C to reuse.
  2. driver check: .c present, defines the routine, make rebuild passes, no generated
     name, make refs clean, and the hard lints (duplicate name, local copy of a shared
     struct, extern type conflict).  Problems resume the same session (--retries).
     A failure caused by ANOTHER file (the tree is broken) pauses new starts and is
     waited out instead of being charged to the job.
  3. reviewer: a fresh Codex session checks every name this job gave against all
     readers, the soft lints (pad structs, raw offsets) and comments; fixes what is
     clear, flags the rest (--no-review skips it).
Dependents start only after their in-batch callees passed review, so they see final names.
Each run writes .cache/fanout/<run>/report.md: status, review verdicts, lint flags, the
sidecar name changes (naming-review checklist), lock-watchdog events, and a needs-you list.
"""
import argparse, concurrent.futures as cf, difflib, glob, json, os, re, shutil, signal, subprocess, sys, threading, time

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
FANOUT_DIR = os.path.join(ROOT, '.cache', 'fanout')
LOCK = os.path.join(ROOT, '.cache', 'build.lock')
PROJECT = 'DSAVANT'
SRC = os.path.join(ROOT, f'src_{PROJECT}')
STRUCTS = os.path.join(SRC, 'include', 'structs')
SIDECAR_REL = f'disassembler/sidecar/{PROJECT}.json'
SIDECAR = os.path.join(ROOT, SIDECAR_REL)
GENERATED = re.compile(r'^(api_idx_[0-9a-f]{4}_[A-Z]{4}|\w*loc_[0-9a-fA-Z_]+|sub_[0-9a-f]+|'
                       r'(dseg|bss|cseg|word|byte|dword)_[0-9a-f]+)$')
NAME_BLOCKS = ('function_names', 'data_names', 'code_data_names')
SKIP_DIRS = {'include', 'build_out'}

_lock = threading.Lock()


def log(*a):
    with _lock:
        print(time.strftime('%H:%M:%S'), *a, flush=True)


def sh(cmd, check=True, timeout=None, **kw):
    r = subprocess.run(cmd, cwd=ROOT, text=True, capture_output=True, timeout=timeout, **kw)
    if check and r.returncode:
        raise RuntimeError(f'{cmd} failed ({r.returncode}):\n{r.stdout}\n{r.stderr}')
    return r


def make_json(*args):
    r = sh(['make', *args], check=False, env={**os.environ, 'JSON': '1'})
    try:
        return json.loads(r.stdout)
    except ValueError:
        return None


def read(path, default=''):
    try:
        with open(path) as f:
            return f.read()
    except OSError:
        return default


def rel(path):
    return os.path.relpath(path, ROOT)


# ------------------------------------------------------------------ targets

def binaries():
    return sorted(d for d in os.listdir(SRC)
                  if os.path.isdir(os.path.join(SRC, d)) and d not in SKIP_DIRS | {'shared', 'ds'})


def is_c_routine(binary, label):
    return 'call aztec_csav' in read(os.path.join(SRC, binary, label + '.asm'))


def bare(binary):
    """(C routines still only .asm, other bare .asm)."""
    d = os.path.join(SRC, binary)
    out, skipped = [], []
    for f in sorted(os.listdir(d)):
        if not f.endswith('.asm'):
            continue
        b = f[:-4]
        if os.path.exists(os.path.join(d, b + '.c')) or os.path.exists(os.path.join(d, b + '.s')):
            continue
        (out if is_c_routine(binary, b) else skipped).append(b)
    return out, skipped


def next_binary():
    left = [(len(bare(b)[0]), b) for b in binaries()]
    left = [x for x in left if x[0]]
    return min(left)[1] if left else None


def dependencies(binary, labels):
    d = os.path.join(SRC, binary)
    deps = {}
    for l in labels:
        text = read(os.path.join(d, l + '.asm'))
        deps[l] = {o for o in labels if o != l and re.search(rf'\b{re.escape(o)}\b', text)}
    return deps


def topo_order(labels, deps):
    out, done = [], set()
    while len(done) < len(labels):
        ready = [l for l in labels if l not in done and deps[l] <= done]
        if not ready:  # a cycle: take what is left
            ready = [l for l in labels if l not in done]
        out += ready
        done |= set(ready)
    return out


def dirty():
    r = sh(['git', 'status', '--porcelain', '--', f'src_{PROJECT}', SIDECAR_REL], check=False)
    return [l for l in r.stdout.splitlines() if l.strip()]


# ------------------------------------------------------------------ twins

_REGS = set('ax bx cx dx si di bp sp al ah bl bh cl ch dl dh cs ds es ss byte word dword '
            'short near far ptr'.split())


_SYM = re.compile(r'(?<![\w.])[A-Za-z_]\w*(?:\.\w+)?')


def _asm_lines(text):
    """[(instruction with symbols/labels abstracted, [symbols in order])]."""
    out = []
    for line in text.splitlines():
        line = line.split(';', 1)[0].strip()
        if not line or line.endswith(':') or line.startswith(('%', 'db ', 'dw ')):
            continue
        op, _, rest = line.partition(' ')
        rest = re.sub(r'(?<!\w)\.\w+', 'L', rest)
        syms = [m.group(0) for m in _SYM.finditer(rest) if m.group(0) not in _REGS and m.group(0) != 'L']
        norm = op + ' ' + _SYM.sub(lambda m: m.group(0) if m.group(0) in _REGS or m.group(0) == 'L' else 'S', rest)
        out.append((norm, syms))
    return out


def _norm_asm(text):
    """The routine's instructions with symbols and jump labels abstracted."""
    return [n for n, _ in _asm_lines(text)]


def generated_sym(s):
    """A symbol spelling the disassembler made up (sub_, dseg_, rec.f_0002 ...)."""
    base, _, field = s.partition('.')
    return bool(GENERATED.match(base) or re.match(r'jumptable_[0-9a-f]+$', base)
                or (field and re.match(r'f_[0-9a-f]+$', field)))


_JUMP = re.compile(r'\.(?:forward|back)\d+$')


def twin_pairs(asm_text, twin_text):
    """{symbol here: symbol in the twin} at aligned identical instructions
    (majority vote, only where the two spell it differently)."""
    me, tw = _asm_lines(asm_text), _asm_lines(twin_text)
    sm = difflib.SequenceMatcher(None, [n for n, _ in me], [n for n, _ in tw], autojunk=False)
    votes = {}
    for a, b, size in sm.get_matching_blocks():
        for k in range(size):
            for x, y in zip(me[a + k][1], tw[b + k][1]):
                if _JUMP.search(x):
                    continue
                votes.setdefault(x, {}).setdefault(y, 0)
                votes[x][y] += 1
    out = {}
    for x, ys in votes.items():
        y, n = max(ys.items(), key=lambda t: t[1])
        if x != y and 3 * n >= 2 * sum(ys.values()):
            out[x] = y
    return out


def twin_names(binary, label, stem):
    """Generated symbols of *label* whose aligned twin symbol has a real name."""
    pairs = twin_pairs(read(os.path.join(SRC, binary, label + '.asm')), read(os.path.join(SRC, stem + '.asm')))
    out = {x: y for x, y in pairs.items() if generated_sym(x) and not generated_sym(y)}
    if GENERATED.match(label):
        out[label] = os.path.basename(stem)
    return out


def twin_mismatches(binary, name, stem, mine):
    """Names this job gave (*mine*) that differ from the twin's at the same place."""
    pairs = twin_pairs(read(os.path.join(SRC, binary, name + '.asm')), read(os.path.join(SRC, stem + '.asm')))
    out = [f'twin-name: {x} here is {y} in {stem}' for x, y in pairs.items()
           if x.split('.')[-1] in mine and not generated_sym(y)]
    if name in mine and name != os.path.basename(stem):
        out.append(f'twin-name: routine {name} is {os.path.basename(stem)} in {stem}')
    return out


class Twins:
    """Routines in other binaries whose instructions nearly match a target's."""

    def __init__(self):
        self.cache = {}

    def corpus(self):
        out = []
        for path in glob.glob(os.path.join(SRC, '*', '**', '*.asm'), recursive=True):
            r = os.path.relpath(path, SRC)
            if r.split(os.sep)[0] in SKIP_DIRS:
                continue
            stem = path[:-4]
            if not (os.path.exists(stem + '.c') or os.path.exists(stem + '.s')):
                continue  # only routines someone already reversed and named
            mt = os.path.getmtime(path)
            hit = self.cache.get(path)
            if not hit or hit[0] != mt:
                hit = self.cache[path] = (mt, _norm_asm(read(path)))
            out.append((path, hit[1]))
        return out

    def find(self, binary, label, limit=3, floor=0.80):
        me = _norm_asm(read(os.path.join(SRC, binary, label + '.asm')))
        if len(me) < 8:
            return []
        best = []
        for path, seq in self.corpus():
            if abs(len(seq) - len(me)) > 0.2 * len(me):
                continue
            sm = difflib.SequenceMatcher(None, me, seq, autojunk=False)
            if sm.real_quick_ratio() < floor or sm.quick_ratio() < floor:
                continue
            r = sm.ratio()
            if r >= floor:
                best.append((r, path))
        best.sort(reverse=True)
        return [(round(r, 2), os.path.relpath(p, SRC)[:-4]) for r, p in best[:limit]]


# ------------------------------------------------------------------ lints

def name_map(sc):
    out = {}
    for b, bd in sc.get('binaries', {}).items():
        for kind in NAME_BLOCKS:
            for addr, e in bd.get(kind, {}).items():
                if isinstance(e, dict) and e.get('name'):
                    out[(b, kind, addr)] = (e['name'], e.get('note', ''))
    return out


def lint_dup_names(sc, names=None):
    """Names spelled by two entries of one binary (or a binary and its ds)."""
    found = []
    bins = sc.get('binaries', {})
    for b, bd in bins.items():
        seen = {}
        for blk in [b] + (['ds'] if b != 'ds' and bd.get('type') != 'mz' and 'ds' in bins else []):
            for kind in NAME_BLOCKS:
                for addr, e in (bins.get(blk, {}).get(kind) or {}).items():
                    if isinstance(e, dict) and e.get('name'):
                        # an overlay's mirror of a ds object shares its address
                        seen.setdefault(e['name'], {}).setdefault(addr, f'{blk} {kind}[{addr}]')
        for n, where in seen.items():
            if len(where) > 1 and (names is None or n in names):
                found.append(f'{n} is spelled by {len(where)} entries: ' + ', '.join(sorted(where.values())))
    return sorted(set(found))


_EXTERN = re.compile(r'^\s*extern\s+([^;(){}]*);', re.M)
_SPEC = re.compile(r'^((?:(?:unsigned|signed|const|volatile|register)\s+)*'
                   r'(?:struct\s+\w+|union\s+\w+|enum\s+\w+|char|short|int|long|void|float|double|unsigned|signed)'
                   r'(?:\s+(?:int|long|char|short))?)\b\s*(.*)$', re.S)
_DECL = re.compile(r'^((?:\s*(?:far|near)?\s*\*)*)\s*(?:far\s+|near\s+)?(\w+)\s*((?:\[[^\]]*\]\s*)*)$')


def externs(path):
    """(symbol, type, [dims]) for each extern object declarator in *path*."""
    out = []
    for m in _EXTERN.finditer(read(path)):
        sm = _SPEC.match(m.group(1).strip())
        if not sm:
            continue
        base = re.sub(r'\s+', ' ', sm.group(1))
        for d in sm.group(2).split(','):
            dm = _DECL.match(d.strip())
            if not dm:
                continue
            ptr = re.sub(r'\s+', ' ', dm.group(1)).strip()
            typ = f'{base} {ptr}'.strip()
            dims = [x.strip() for x in re.findall(r'\[([^\]]*)\]', dm.group(3))]
            out.append((dm.group(2), typ, dims))
    return out


def _scope(path):
    r = os.path.relpath(path, SRC).split(os.sep)
    return r[0]


def lint_extern_conflicts(only_files=None, ds_names=()):
    """Symbols declared extern with different types or dimensions.  DS globals
    are compared tree-wide, everything else within one folder."""
    decls = {}
    for path in glob.glob(os.path.join(SRC, '**', '*.c'), recursive=True):
        for sym, typ, dims in externs(path):
            key = sym if sym in ds_names else f'{_scope(path)}:{sym}'
            decls.setdefault(key, []).append((path, typ, dims))
    found = []
    for key, ds in decls.items():
        shapes = {}
        for path, typ, dims in ds:
            typ = re.sub(r'\b(?:unsigned|signed)\s*', '', typ).strip() or 'int'
            # an empty first dimension matches any
            shapes.setdefault((typ, tuple(dims[1:])), []).append((path, dims[:1]))
        firsts = {d[0] for v in shapes.values() for _, d in v if d and d[0]}
        if len(shapes) == 1 and len(firsts) <= 1:
            continue
        files = {p for p, *_ in ds}
        if only_files and not files & set(only_files):
            continue
        desc = '; '.join(f'{rel(p)}: {t}{"".join(f"[{x}]" for x in d)}' for p, t, d in ds[:6])
        found.append(f'{key.split(":")[-1]} has conflicting extern declarations: {desc}')
    return found


_STRUCT_DEF = re.compile(r'\bstruct\s+(\w+)\s*\{')


def header_structs():
    out = {}
    for h in glob.glob(os.path.join(STRUCTS, '*.h')):
        for tag in _STRUCT_DEF.findall(read(h)):
            out[tag] = rel(h)
    return out


def lint_local_structs(cpath, hs=None):
    hs = header_structs() if hs is None else hs
    return [f'{rel(cpath)} defines struct {t}, already defined in {hs[t]}: include that header instead'
            for t in _STRUCT_DEF.findall(read(cpath)) if t in hs]


_PAD = re.compile(r'^\s*[\w ]+?\b(pad\w*|f_[0-9a-f]+|unk\w*|skip\w*)\s*(\[\s*\w+\s*\])?\s*;', re.M)
_RAW_INDEX = re.compile(r'\[[^\]\n]*\b(?:[1-9]\d{2,}|0x[0-9a-fA-F]{3,})\b[^\]\n]*\]')
_WIDTH_CAST = re.compile(r'\*\s*\(\s*(?:unsigned\s+)?(?:char|int|long|short)\s*\*\s*\)\s*\(?[^;\n]*\+')


_VAGUE = set('aux misc data value val info tmp stuff thing helper util generic extra special '
             'do handle handler process word byte dword overlay buf flag flags flagged index idx entry '
             'selection selected'.split())


def lint_vague(names, binary=None):
    """Names whose words do not say what the thing is or does.  A name another
    binary already uses is an established family (often a twin's): not flagged."""
    out = []
    elsewhere = {n for (b, _, _), (n, _) in name_map(json.load(open(SIDECAR))).items() if b != binary}
    for n in sorted(set(names) - elsewhere):
        toks = n.lower().split('_')
        bad = [t for t in toks if t in _VAGUE]
        if bad or re.search(r'_(?:[a-z]|\d+|[0-9a-f]{4})$', n):
            out.append(f'vague-name: {n}' + (f' ({", ".join(bad)})' if bad else '')
                       + ': does it say what the value IS / what the routine DOES for its callers?')
    return out


# ---- header struct fields vs sidecar records

_FTYPES = {'char': 1, 'short': 2, 'int': 2, 'long': 4}
_FIELD = re.compile(r'^\s*((?:unsigned |signed )?(?:struct\s+(\w+)|char|short|int|long))\s+(\**)(\w+)'
                    r'((?:\[\s*\w+\s*\])*)\s*;\s*/\*\s*\+(0x[0-9a-fA-F]+|\d+)', re.M)
_BODY = re.compile(r'\bstruct\s+(\w+)\s*\{(.*?)\n\};', re.S)
_SKIPF = re.compile(r'^(pad\w*|f_[0-9a-f]+|unk\w*|skip\w*|reserved\w*)$')


def header_fields():
    """{struct tag: ([(offset, name, nested tag, byte size)], header)} from offset comments."""
    out = {}
    for h in glob.glob(os.path.join(STRUCTS, '*.h')):
        for tag, body in _BODY.findall(read(h)):
            fl = []
            for m in _FIELD.finditer(body):
                typ, sub, ptr, name, dims, off = m.groups()
                n = 1
                for d in re.findall(r'\[\s*(\w+)\s*\]', dims):
                    n *= int(d, 0) if re.match(r'^(0x[0-9a-fA-F]+|\d+)$', d) else 0
                esz = 2 if ptr else (None if sub else _FTYPES.get(typ.split()[-1]))
                fl.append((int(off, 0), name, None if ptr else sub, esz * n if esz and n else None))
            out[tag] = (fl, rel(h))
    return out


def _flat(tag, hf, base=0, prefix='', depth=0):
    out = []
    for off, name, sub, size in (hf.get(tag) or ([], ''))[0]:
        if _SKIPF.match(name):
            continue
        if sub and sub in hf and depth < 3:
            out += _flat(sub, hf, base + off, name + '_', depth + 1)
        else:
            out.append((base + off, prefix + name, size))
    return out


def lint_records(sc):
    """[(binary, record, offset, field name, size)] for named header fields of a
    struct that has a sidecar record but no record field at that offset (the
    asm then keeps spelling it rec.f_XXXX)."""
    hf, found = header_fields(), []
    for b, bd in sc['binaries'].items():
        for tag, rec in (bd.get('records') or {}).items():
            if tag not in hf:
                continue
            cover = set()
            for k, v in (rec.get('fields') or {}).items():
                o = int(k, 16)
                cover.update(range(o, o + (v.get('size', 1) if isinstance(v, dict) else 1)))
            for off, name, size in _flat(tag, hf):
                if off not in cover:
                    found.append((b, tag, off, name, size))
    return found


def sync_records(baseline):
    """Add record fields for header fields that are missing now but were not at
    run start; returns what was added.  Edits the sidecar under the build lock."""
    import fcntl
    sys.path.insert(0, os.path.join(ROOT, 'disassembler'))
    from make.naming import set_value
    with open(LOCK, 'a') as lk:
        fcntl.flock(lk, fcntl.LOCK_EX)
        text = read(SIDECAR)
        sc = json.loads(text)
        new = [x for x in lint_records(sc) if x not in baseline]
        added = []
        for b, tag, off, name, size in new:
            rec = sc['binaries'][b]['records'][tag]
            fields = rec.setdefault('fields', {})
            if name in {(v.get('name') if isinstance(v, dict) else v) for v in fields.values()}:
                continue
            fields[f'{off:x}'] = {'name': name, 'size': size} if size and size > 1 else name
            rec['fields'] = dict(sorted(fields.items(), key=lambda kv: int(kv[0], 16)))
            text = set_value(text, ['binaries', b, 'records'], tag, rec)
            added.append(f'{b} records.{tag} +0x{off:x} {name}' + (f' ({size} bytes)' if size and size > 1 else ''))
        if added:
            json.loads(text)
            open(SIDECAR, 'w').write(text)
    return added


def records_of(sc):
    return {(b, t): dict(r.get('fields') or {}) for b, bd in sc['binaries'].items()
            for t, r in (bd.get('records') or {}).items()}


def records_diff(before):
    now = records_of(json.load(open(SIDECAR)))
    out = []
    for key, f in now.items():
        old = before.get(key, {})
        for k, v in f.items():
            if old.get(k) != v:
                out.append(f'  {key[0]} records.{key[1]} +0x{k}: {json.dumps(old.get(k))} -> {json.dumps(v)}')
    return out


def snapshot_headers():
    return {p: read(p) for p in glob.glob(os.path.join(STRUCTS, '*.h'))}


def header_diff(before, cap=120):
    out = []
    for p in sorted(set(before) | set(glob.glob(os.path.join(STRUCTS, '*.h')))):
        a, b = before.get(p, ''), read(p)
        if a != b:
            out += list(difflib.unified_diff(a.splitlines(), b.splitlines(), rel(p), rel(p), n=1, lineterm=''))
    return out[:cap] + ([f'... ({len(out) - cap} more lines)'] if len(out) > cap else [])


def added_fields(diff_lines):
    return [m.group(4) for l in diff_lines if l.startswith('+') and not l.startswith('+++')
            for m in [_FIELD.match(l[1:])] if m and not _SKIPF.match(m.group(4))]


def caller_context(binary, name, limit=4, cap=150):
    """How the callers use the routine: lines around each call site."""
    info = make_json('info', PROJECT, binary, name) or {}
    callers = next((m.get('callers') or [] for m in info.get('members', []) if m.get('name') == name), [])
    out = []
    for c in callers[:limit]:
        hit = next(((p, k) for p, k in ((os.path.join(SRC, d, c + e), e) for d in (binary, 'shared/ovr')
                                       for e in ('.c', '.asm')) if os.path.exists(p)), None)
        if not hit:
            continue
        path, kind = hit
        lines = read(path).splitlines()
        if kind == '.c':
            pat, before, after = re.compile(rf'\b{re.escape(name)}\s*\('), 5, 5
        else:
            pat, before, after = re.compile(rf'\bcall\s+{re.escape(name)}\b'), 10, 10
            lines = [re.sub(r'\s*;\s*0x[0-9a-f]+\s*$', '', l) for l in lines]
        for i in [i for i, l in enumerate(lines) if pat.search(l)][:2]:
            out.append(f'--- {rel(path)} (caller{" still asm" if kind == ".asm" else ""})')
            out += lines[max(0, i - before):i + after + 1]
    if len(callers) > limit:
        out.append(f'(+{len(callers) - limit} more callers: {" ".join(callers[limit:])})')
    return '\n'.join(out[:cap]) or '(no callers found)'


def orphans():
    """Hand .c/.s files with no companion .asm: their routine was split or
    renamed out from under them, so the C is silently no longer built."""
    out = set()
    for path in glob.glob(os.path.join(SRC, '**', '*.[cs]'), recursive=True):
        if os.path.relpath(path, SRC).split(os.sep)[0] in SKIP_DIRS:
            continue
        if not os.path.exists(path[:-2] + '.asm'):
            out.add(rel(path))
    return out


def lint_soft(cpath):
    """Layout shortcuts worth a reviewer's look (heuristic)."""
    text = read(cpath)
    out = []
    for m in _PAD.finditer(text):
        out.append(f'pad-struct: `{m.group(0).strip()}` skips bytes instead of naming them')
    for m in _RAW_INDEX.finditer(text):
        out.append(f'raw-offset: `{m.group(0)}` (layout arithmetic? declare a struct/array dim)')
    for m in _WIDTH_CAST.finditer(text):
        out.append(f'width-cast: `{m.group(0).strip()[:70]}`')
    return out[:12]


# ------------------------------------------------------------------ lock watchdog

class Watchdog(threading.Thread):
    """Logs a build lock held longer than --lock-warn minutes.  Never kills."""

    def __init__(self, warn_min):
        super().__init__(daemon=True)
        self.warn = warn_min * 60
        self.events = []
        self.stop = threading.Event()
        self.seen = {}

    def holder(self):
        try:
            ino = os.stat(LOCK).st_ino
        except OSError:
            return None
        for line in read('/proc/locks').splitlines():
            parts = line.split()
            if '->' in parts or len(parts) < 6:
                continue
            if parts[5].split(':')[-1] == str(ino):
                return int(parts[4])
        return None

    def run(self):
        while not self.stop.wait(60):
            pid = self.holder()
            now = time.time()
            if pid is None:
                self.seen.clear()
                continue
            first = self.seen.setdefault(pid, [now, False])
            if not first[1] and now - first[0] > self.warn:
                first[1] = True
                cmd = read(f'/proc/{pid}/cmdline').replace('\0', ' ').strip()
                kids = sh(['ps', '--ppid', str(pid), '-o', 'pid=,etime=,cmd='], check=False).stdout.strip()
                msg = (f'{time.strftime("%H:%M")} build lock held {int((now - first[0]) / 60)} min '
                       f'by pid {pid}: {cmd[:160]}' + (f' | children: {kids[:200]}' if kids else ''))
                self.events.append(msg)
                log('WATCHDOG ' + msg)


# ------------------------------------------------------------------ prompts

COMMON = """\
Workspace: {root}. This is a SHARED working tree: up to {j} other agents are working on other routines in it right now.
Every make command waits its turn on one build lock, so a make call may sit silently for a while; that is normal.
Never run make clean, make prebuild, make all, make build --all or make data (make data starts DOSBox and can hang
the build lock for everyone; read src_{project}/ds/data/*.c or use make refs/info instead). Do not touch other
routines' .c/.s files. Do not modify anything under disassembler/ except via make name (which edits {sidecar}).
Do not run any git command that writes (commit, checkout, reset, stash, add, merge, rm).

  make info  {project} {binary} <routine>      # span, co-tenants, callers, flags
  make refs  {project} {binary} <routine>      # referenced symbols that still need names
  make rebuild {project} {binary} <routine>    # gate one routine against the original bytes
  make name  {project} {binary} OLD=new:'note' OLD2=new2:'note' ...   # renames, then builds; refuses a name in use

NAMING RULES
- A routine is named for what its body does, not for the event bit, region flag, menu slot or caller that dispatches to it.
- A small helper's MEANING usually shows only in how its callers use it (which record the index selects, what the
  result decides). Read the CALLERS section / make info callers before naming: pick_monster_attack_slot, not
  pick_flagged_member_index. If the callers are still asm and you cannot tell, name the mechanics and put
  "uncertain" in the note.
- No filler words that do not say what a thing is: flags, index, data, value, info, entry, selection, aux, misc, temp,
  handle, process, helper. "attack_mode", not "selection_flags"; "active_unit_count", not "display_unit_count".
- Header struct fields you add (include/structs/*.h, with their /* +0xNN */ offset comment) follow the same rules.
  Do not edit the sidecar's records yourself: the driver mirrors new header fields into them after the run.
- A global is named for what its value IS across all its readers, not for the routine where you first saw it. Before
  naming one, read its other users (grep -rw <symbol> src_{project} and make info on the readers).
- Before choosing any name, grep src_{project}/ and {sidecar} (all binaries) for it and for routines with the same
  purpose in other binaries; if such a family exists (process_scene_message_words, ...), reuse its naming.
- If a symbol sits inside a larger named object (a record array such as battle_groups or slot_recs), do not name
  the inner label: index the larger object in C instead.
- Never rename a symbol that already has a descriptive (non-generated) name; say so in NOTES instead.
- If the role is uncertain, choose a neutral descriptive name and put "uncertain" in its note. Every name gets a short note.
- RESERVED, owned by other agents running now or later. Do NOT name or rename these; call/extern them by their current name:
    {reserved}
- Other agents name things concurrently. If make name reports a symbol as unknown, someone else already named it:
  re-run make refs and use the current name. Names in a draft are not rewritten by make name; fix them by hand.

LAYOUT RULES
- No layout arithmetic: no raw byte offsets (ptr + 2480, table[700 + i]), hand-scaled indexes, or casts that pick a width.
- No pad[]/f_XXXX/unk fields to skip bytes you have not understood. Find the struct in src_{project}/include/structs/
  that covers this memory (grep the global's other readers to see how they declare it). Extend an existing header with
  named fields rather than declaring a second copy; a struct only this file uses may live in the .c.
- Before writing an extern, grep src_{project} for that symbol's existing extern declaration and copy its type and
  dimensions exactly. Two files must never disagree about a global's type.
- Spell unnamed DS objects by their canonical name (bss_XXXX / dseg_XXXX, as make refs shows). extern declarations stay in the .c.
"""

PROMPT = """\
You are reversing one routine of Wizardry 7 (Manx Aztec C86 4.2b, small model) back to byte-exact C.
TARGET: {asm}
Its prologue calls aztec_csav, so it IS compiler output: the result is {c} in K&R C. Never write a .s for it and never put the body in #asm.
cc flags: {flags}. Style references (read one or two first): {examples}. Shared record layouts: src_{project}/include/structs/*.h.
Background on the toolchain, codegen idioms and layout rules is in .vscode/asm-nav/prompt.txt (the "C declarations and layouts" and "Choosing C or assembly" sections are worth reading once).
{twins}
CALLERS (how the rest of the program uses this routine; names may still be generated):
{callers}
""" + COMMON + """
DRAFT OUTSIDE THE SOURCE TREE. Every make build/name in this tree compiles every .c under src_{project}/, so a .c that does not
match yet would break the other agents. Work in your draft file (if it already exists, an earlier attempt left it: start from it):
  {draft}
and iterate with
  make probe {project} {binary} {label} FILE={draft}            # compile the draft, show length + instructions
  make probe {project} {binary} {label} FILE={draft} LINKED=1   # also gate the linked bytes against the original
probe always exits 0: the verdict is the "link ... [OK]" line (a "[DIFF]" line lists the differing instructions).
Only when the LINKED=1 probe says "link ... [OK]": copy the draft to {c} and run
  make rebuild {project} {binary} {label}
If that rebuild fails, IMMEDIATELY move {c} back to the draft path, then keep working on the draft.
Compare compiled length against the ROOT span from make info, not the whole fragment (a fragment can hold co-tenant loc_ routines
after the root). A length or byte mismatch means the C is not right yet: keep adjusting declaration order, signedness, types,
expression shape and operand order until it matches. Do not give up on a mismatch and do not switch to assembly.

C style: locals are allocated in declaration order from bp-2 downward; match the frame. cbw/jl = signed, sub ah,ah/jb = unsigned.
Descriptive names for parameters and locals; a short header comment and brief /* */ comments on loops, branches and magic
numbers. Describe only what the code shows; no guesses about game meaning you cannot see in the code.

After the C is placed and make rebuild passes:
- {target_naming}
- Run make refs and name every listed unresolved symbol (skip "label inside" rows) plus the target if needed, in ONE make name call.
- make name renames files and regenerates the asm; afterwards re-run make rebuild {project} {binary} <new name> and fix anything it reports.

When done, your final message must be exactly these lines:
STATUS: done | unfinished
NAME: <final routine name>
RENAMES: <old=new space-separated, everything you passed to make name>
NOTES: <one line: what remains unfinished and why, names you think are wrong, or tooling limitations; else "none">
"""

REVIEW_PROMPT = """\
You are REVIEWING another agent's finished work on one routine of a Wizardry 7 decompilation (Manx Aztec C86, byte-exact C).
The C already matches the original bytes. Your job is the names, types and comments, not the code shape.
ROUTINE: {binary} {name}   ({c})
Names this job gave (old=new): {renames}
Readers of each named global/routine (other files that use it):
{readers}
CALLERS of this routine (call sites):
{callers}
Struct header changes made while this job ran (other agents' edits may be mixed in; judge the fields this
routine uses):
{hdiff}
{twins}{lints}
""" + COMMON + """
CHECK, in this order:
1. The routine's name: does it say what the body does FOR ITS CALLERS? Read the call sites above: a helper whose
   callers pick an attack slot is pick_monster_attack_slot, not pick_flagged_member_index.
2. Each name in the list above: read every reader listed. Does the name say what the value or routine IS across all of
   them? A name that fits only this routine's use of a global is wrong. Vague names (aux_, misc_, data_, value_, flags,
   index, selection, _a/_b suffixes, overlay_word_XXXX) are wrong.
3. Struct fields added in the header diff that this routine uses: same test. Read the other users of the field
   (grep -rw <field> src_{project}) and the bytes it covers.
4. Twins: a name that matches the twin's (same routine/object in another binary) is FIXED: never rename it away
   from the twin's, even to something you find clearer (consistency across binaries wins). Names listed as twin-name
   mismatches should take the twin's name unless the code shows they differ.
5. The lint findings above: fix real layout shortcuts (pad fields, raw offsets, width casts, conflicting externs) by using
   the right struct/array declaration; ignore a finding that is a genuine constant.
6. Comments: remove or correct any comment that states something the code does not show, or contradicts it.

FIX what is clearly wrong:
- Rename with ONE make name call (names in the list above and generated names only; never a name that existed before
  this job; for those, write your view in NOTES).
- Edit {c}. Header fields ADDED in the diff above may be renamed (update every file that uses them: grep -rlw);
  add named fields if a fix needs it; never change an existing field's offset or a field that predates this job.
- After any change: make rebuild {project} {binary} <final name> must pass. If it does not and you cannot fix it,
  undo your edit.
Do not rewrite working code for style. If unsure, leave it and flag it.

When done, your final message must be exactly these lines:
VERDICT: ok | fixed | flag
NAME: <final routine name>
CHANGES: <old=new space-separated renames you made; "none" if none>
NOTES: <one line: what you changed and why, and anything the human should look at; else "none">
"""


FINAL_REVIEW_PROMPT = """\
You are doing the FINAL NAMING REVIEW of one binary ({binary}) of a Wizardry 7 decompilation (Manx Aztec C86,
byte-exact C). Parallel agents just reversed these routines, each seeing only its own corner; every routine already
passed a per-routine review. Your job is the names as a SET: consistency across routines, and meanings that only show
once the callers are reversed too (helpers were named before their callers).
Workspace: {root}. No other agent is running now. Do not run any git command that writes. Never run make data,
make clean, make prebuild, make all or make build --all.

Routines reversed in this run (C files):
{files}

Names this run gave (old -> new: note):
{names}

Struct header changes this run made:
{hdiff}

Sidecar record fields added for them:
{rdiff}

Driver lint findings:
{lints}

  make info  {project} {binary} <routine>
  make rebuild {project} {binary} <routine>
  make name  {project} {binary} OLD=new:'note' ...   # renames, then builds; refuses a name in use

CHECK:
1. Read each C file above with its callers. Now that callers are C, does each helper's name (and its globals' and
   struct fields' names) say what it is for? Fix names given from a narrow view.
2. Consistency: one concept, one word across the set and with the other binaries (grep). A name that matches a
   twin routine's/object's name in another binary is FIXED: do not rename it away, even to something clearer.
3. Vague words (flags, index, data, value, info, entry, selection, aux, misc) and the lint findings.
4. Comments that say more than the code shows.
FIX what is clearly wrong: rename ONLY names this run gave (the list above), with make name (one call per binary is
fine); header fields added this run may be renamed in the header and every file that uses them, and then in the sidecar
record entry listed above with the same offset (edit just that field's name). Edit only the C files above.
Afterwards make rebuild {project} {binary} <each routine you touched> must pass, and so must make build {project}.
Leave anything uncertain and list it in NOTES.

When done, your final message must be exactly these lines:
VERDICT: ok | fixed | flag
CHANGES: <old=new space-separated renames you made; "none" if none>
NOTES: <one line per concern, ';'-separated: what you changed and why, and what the human should look at>
"""


def examples(binary, n=3):
    d = os.path.join(SRC, binary)
    own = sorted(glob.glob(os.path.join(d, '*.c')), key=os.path.getmtime, reverse=True)
    shared = sorted(glob.glob(os.path.join(SRC, 'shared', 'ovr', '*.c')), key=os.path.getmtime, reverse=True)
    return ', '.join(rel(p) for p in (own + shared)[:n]) or 'none yet'


def twins_text(found, for_review=False, names=None, reserved=()):
    if not found:
        return ''
    lines = []
    for r, stem in found:
        src = next((f'src_{PROJECT}/{stem}{e}' for e in ('.c', '.s')
                    if os.path.exists(os.path.join(SRC, stem + e))), f'src_{PROJECT}/{stem}.asm')
        lines.append(f'  {src}  (instruction similarity {r})')
    head = ('TWINS: these already-reversed routines in other binaries have nearly the same instructions:\n'
            if not for_review else 'Near-identical routines elsewhere:\n')
    tail = ('' if for_review else
            'Read them first. If one is the same routine, start your draft from its C and keep its name family '
            '(same name, or the same name plus a short binary-specific suffix only if that one is taken here).\n')
    if names:
        tail += (f'TWIN NAMES: aligned instruction by instruction with {found[0][1]}, these symbols here sit where the '
                 'twin has a named one. Use the twin\'s name (make name) unless the code shows they differ; if a '
                 'name is refused as in use, pick its closest variant; explain any departure in NOTES.\n'
                 + '\n'.join(f'  {x} -> {y}' + ('   (reserved: another agent names it)' if x in reserved else '')
                             for x, y in sorted(names.items())) + '\n')
    return head + '\n'.join(lines) + '\n' + tail


def top_twin(found, floor=0.85):
    return found[0][1] if found and found[0][0] >= floor else None


def common_fmt(binary, reserved, j):
    return dict(root=ROOT, j=j - 1, project=PROJECT, binary=binary, sidecar=SIDECAR_REL,
                reserved=' '.join(sorted(reserved)) or '(none)')


def make_prompt(binary, label, reserved, flags, draft, j, twins, callers='(none)'):
    r = lambda f: f'src_{PROJECT}/{binary}/{f}'
    stem = top_twin(twins)
    names = twin_names(binary, label, stem) if stem else None
    if GENERATED.match(label):
        naming = (f'The target\'s name {label} is generated: pick a descriptive lowercase_underscore name '
                  'from what the routine does.')
    else:
        naming = (f'The target already has a name, {label}, given from its callers. Keep it unless the code '
                  'clearly shows it is wrong; if so, rename it and explain why in NOTES.')
    return PROMPT.format(target_naming=naming, label=label, asm=r(label + '.asm'), c=r(label + '.c'),
                         flags=flags, draft=draft, examples=examples(binary), callers=callers,
                         twins=twins_text(twins, names=names, reserved=reserved),
                         **common_fmt(binary, reserved, j))


def readers_of(names, exclude):
    out = []
    for n in names:
        r = sh(['grep', '-rlw', '--include=*.c', '--include=*.s', '--include=*.h', n, f'src_{PROJECT}'], check=False)
        files = [f for f in r.stdout.split() if not f.endswith(exclude)]
        out.append(f'  {n}: ' + (' '.join(files[:12]) + (f' (+{len(files) - 12} more)' if len(files) > 12 else '')
                                 if files else '(no other readers)'))
    return '\n'.join(out) or '  (none)'


def new_names_of(renames):
    return [p.split('=', 1)[1].split(':', 1)[0] for p in renames if '=' in p]


def make_review_prompt(binary, name, renames, reserved, j, twins, lints, callers='(none)', hdiff=()):
    c = f'src_{PROJECT}/{binary}/{name}.c'
    lint = ('Driver lint findings (heuristic; judge each):\n' + '\n'.join(f'  - {x}' for x in lints) + '\n'
            if lints else '')
    return REVIEW_PROMPT.format(name=name, c=c, renames=' '.join(renames) or '(none)',
                                readers=readers_of([n for n in new_names_of(renames) if n != name], f'/{name}.c'),
                                callers=callers, hdiff='\n'.join(hdiff) or '  (none)',
                                twins=twins_text(twins, True), lints=lint, **common_fmt(binary, reserved, j))


def cc_flags(binary):
    sc = json.load(open(SIDECAR))
    own = sc['binaries'][binary].get('compiler_flags', {})
    return ' '.join(own.get('default') or sc['compiler_flags']['default'])


# ------------------------------------------------------------------ codex

def parse_final(text):
    out = {}
    for line in text.splitlines():
        m = re.match(r'\s*(STATUS|NAME|RENAMES|NOTES|VERDICT|CHANGES):\s*(.*)', line)
        if m:
            out[m.group(1).lower()] = m.group(2).strip()
    return out


def codex_env():
    return {k: v for k, v in os.environ.items()
            if not re.search(r'PROXY|proxy|npm_config|YARN|BUNDLE|CARGO', k)}


_children = set()


def descendants(pid):
    kids = {}
    for line in sh(['ps', '-e', '-o', 'pid=,ppid='], check=False).stdout.splitlines():
        c, pp = map(int, line.split())
        kids.setdefault(pp, []).append(c)
    out, todo = [], [pid]
    while todo:
        for c in kids.get(todo.pop(), []):
            out.append(c)
            todo.append(c)
    return out


def kill_group(p):
    """Kill a codex session and every command it started (make, DOSBox ...).
    The sandbox setsid()s each command, so walk the tree while codex is alive."""
    tree = [p.pid] + descendants(p.pid)
    for sig in (signal.SIGTERM, signal.SIGKILL):
        for pid in reversed(tree):
            try:
                os.kill(pid, sig)
            except (ProcessLookupError, PermissionError):
                pass
        time.sleep(3)


def run_codex(cmd, prompt, logpath, timeout):
    with open(logpath, 'a') as lf:
        p = subprocess.Popen(cmd, cwd=ROOT, stdin=subprocess.PIPE, stdout=lf,
                             stderr=subprocess.STDOUT, text=True, env=codex_env())
        _children.add(p)
        try:
            p.communicate(prompt, timeout=timeout)
            return p.returncode
        except subprocess.TimeoutExpired:
            kill_group(p)
            p.wait()
            lf.write(f'\n[driver] killed after {timeout}s\n')
            return 'timeout'
        finally:
            _children.discard(p)


def stop_all(signum=None, frame=None):
    """Ctrl-C / SIGTERM: take every running agent down with the driver."""
    log(f'stopping {len(_children)} agent(s) and their commands')
    for p in list(_children):
        kill_group(p)
    os._exit(130)


def thread_id(logpath):
    """The most recent session in the log (a resumed run appends a new one)."""
    tid = None
    try:
        for line in open(logpath):
            if '"thread.started"' in line:
                tid = json.loads(line).get('thread_id') or tid
    except (OSError, ValueError):
        pass
    return tid


def current_name(binary, span, label, candidates=()):
    """The routine's name now: the first candidate (the agent's NAME, then the
    original label) whose make info span is the original span."""
    for n in [c for c in candidates if c] + [label]:
        if os.path.exists(os.path.join(SRC, binary, n + '.asm')):
            info = make_json('info', PROJECT, binary, n)
            if info and info.get('span') == span:
                return n
    return label


# ------------------------------------------------------------------ jobs

_SRC_PATH = re.compile(r'(?:src_' + PROJECT + r'/)?([\w/]+\.(?:c|s|h|asm))\b')


class Batch:
    def __init__(self, a, binary, jobs, deps, run_dir, watchdog):
        self.a, self.binary, self.jobs, self.deps, self.run_dir = a, binary, jobs, deps, run_dir
        self.flags = cc_flags(binary)
        self.state = {j: 'pending' for j in jobs}
        self.addr, self.names, self.hdr0 = {}, {}, {}
        self.twins = Twins()
        self.twin_lock = threading.Lock()
        self.healthy = threading.Event()
        self.healthy.set()
        self.tree_note = ''
        self.watchdog = watchdog
        self.orphans0 = orphans()
        sc = json.load(open(SIDECAR))
        self.ds_names = {e['name'] for e in (sc['binaries'].get('ds', {}).get('data_names') or {}).values()
                         if isinstance(e, dict) and e.get('name')}

    def reserved(self, me):
        return {self.jobs[j] for j in self.jobs if j != me and self.state[j] not in ('done', 'review')}

    # ---- checks
    def foreign_failure(self, name, out):
        """True when a rebuild failure names files other than this routine's."""
        mine = {f'{self.binary}/{name}.c', f'{self.binary}/{name}.asm', f'{self.binary}/{name}.s'}
        paths = {p for p in _SRC_PATH.findall(out) if '/' in p}
        return bool(paths - mine) and not (paths & mine)

    def check(self, jid):
        """(name, hard problems, gate, tree_broken)."""
        b, label = self.binary, self.jobs[jid]
        name = current_name(b, self.addr[jid], label, [self.names.get(jid)])
        c = os.path.join(SRC, b, name + '.c')
        s = os.path.join(SRC, b, name + '.s')
        probs, gate, broken = [], False, False
        if os.path.exists(s):
            probs.append(f'src_{PROJECT}/{b}/{name}.s exists: this routine calls aztec_csav, so it must be C. '
                         'Delete the .s and finish the C.')
        if not os.path.exists(c):
            probs.append(f'src_{PROJECT}/{b}/{name}.c does not exist yet: finish the draft until '
                         'the LINKED=1 probe says "link ... [OK]", then place it and run make rebuild.')
        else:
            if not re.search(rf'^{re.escape(name)}\s*\(', read(c), re.M):
                probs.append(f'{name}.c does not define a function named {name}: '
                             'the C function name must match the routine name.')
            r = sh(['make', 'rebuild', PROJECT, b, name], check=False)
            out = r.stdout + r.stderr
            gate = r.returncode == 0 and not probs
            if r.returncode:
                if self.foreign_failure(name, out):
                    broken = True
                    self.tree_note = out[-600:]
                else:
                    probs.append(f'make rebuild {PROJECT} {b} {name} fails:\n' + out[-1500:])
            probs += lint_local_structs(c)
        lost = orphans() - self.orphans0
        if lost:
            probs.append('these hand sources lost their companion .asm, so their C/asm is no longer built (a name '
                         'you gave inside a shared or existing routine split it): ' + ' '.join(sorted(lost))
                         + '. Remove the names you added inside that routine (make name back to the generated '
                         'name, or ask in NOTES) until the file has its .asm again.')
        if GENERATED.match(name):
            probs.append(f'the routine still has its generated name {name}: give it a descriptive one with make name.')
        refs = make_json('refs', PROJECT, b, name) or {}
        res = self.reserved(jid)
        left = [x['symbol'] for x in refs.get('symbols', []) if x.get('symbol') not in res]
        if left:
            probs.append('make refs still lists unnamed symbols: ' + ' '.join(left))
        return name, probs, gate, broken

    def wait_tree(self, jid, name):
        """The tree is broken by someone else: hold new starts, wait it out."""
        self.healthy.clear()
        log(f'  {jid}: TREE BROKEN (not this job) -- pausing new starts:\n    '
            + self.tree_note.strip().replace('\n', '\n    ')[-400:])
        for _ in range(48):  # up to 4 h
            time.sleep(300)
            r = sh(['make', 'rebuild', PROJECT, self.binary, name], check=False)
            if r.returncode == 0 or not self.foreign_failure(name, r.stdout + r.stderr):
                break
        log(f'  {jid}: tree check done; resuming starts')
        self.healthy.set()

    def park(self, jid, name, draft):
        """Move a .c that fails its gate back out of the source tree."""
        c = os.path.join(SRC, self.binary, name + '.c')
        if os.path.exists(c):
            if os.path.exists(draft):
                shutil.move(draft, draft + '.prev')
            shutil.move(c, draft)
            log(f'  {jid}: parked failing {name}.c at {rel(draft)}')

    # ---- one job
    def codex_cmd(self, final_path):
        cmd = ['codex', 'exec', '-C', ROOT, '-s', 'workspace-write', '--skip-git-repo-check', '--json', '-o', final_path]
        if self.a.model:
            cmd += ['-m', self.a.model]
        return cmd + ['-']

    def author(self, jid, jd, res):
        a, b, label = self.a, self.binary, self.jobs[jid]
        draft = os.path.join(jd, 'draft.c')
        logpath = os.path.join(jd, 'log.jsonl')
        final_path = os.path.join(jd, 'final.txt')
        with self.twin_lock:
            res['twins'] = self.twins.find(b, label)
        self.hdr0[jid] = snapshot_headers()
        prompt = make_prompt(b, label, self.reserved(jid), self.flags, draft, a.j, res['twins'],
                             caller_context(b, label))
        open(os.path.join(jd, 'prompt.txt'), 'w').write(prompt)
        log(f'start {jid}' + (f'  twins: {res["twins"]}' if res['twins'] else ''))
        exit_ = run_codex(self.codex_cmd(final_path), prompt, logpath, a.timeout)
        waited = False
        while True:
            final = read(final_path)
            res.update(parse_final(final), exit=exit_)
            self.names[jid] = res.get('name')
            name, probs, gate, broken = self.check(jid)
            if broken and not waited:
                waited = True
                self.wait_tree(jid, name)
                continue  # re-check; not charged as a retry
            if broken:
                probs.append('make rebuild fails in files other than this routine (the tree is broken):\n'
                             + self.tree_note)
            if not probs:
                break
            touched = (os.path.exists(draft) or name != label
                       or os.path.exists(os.path.join(SRC, b, name + '.c')) or res.get('renames'))
            if not touched:
                res['status'] = 'failed'
                res['notes'] = (res.get('notes') or '') + ' [driver] agent changed nothing'
                break
            tid = thread_id(logpath)
            if res['retries'] >= a.retries or not tid:
                break
            res['retries'] += 1
            msg = ('The driver checked your result and it is not finished:\n- ' + '\n- '.join(probs)
                   + '\nKeep working until all of these are resolved, then end with the same '
                     'STATUS/NAME/RENAMES/NOTES lines.')
            log(f'  {jid}: resume {res["retries"]}: ' + ' | '.join(p.splitlines()[0][:90] for p in probs))
            exit_ = run_codex(['codex', 'exec', 'resume', '--skip-git-repo-check', '--json',
                               '-o', final_path, tid, '-'], msg, logpath, a.timeout)
        res.update(name=name, gate=gate, problems=probs)
        if not gate:
            self.park(jid, name, draft)
        return gate

    def review(self, jid, jd, res):
        a, b = self.a, self.binary
        name = res['name']
        logpath = os.path.join(jd, 'review.jsonl')
        final_path = os.path.join(jd, 'review.txt')
        renames = [p for p in (res.get('renames') or '').split() if '=' in p]
        c = os.path.join(SRC, b, name + '.c')
        hdiff = header_diff(self.hdr0.get(jid, {}))
        mine = set(new_names_of(renames)) | {name}
        uses = set(re.findall(r'\w+', read(c)))
        stem = top_twin(res.get('twins'))
        lints = (lint_soft(c) + [f'extern-conflict: {x}' for x in lint_extern_conflicts([c], self.ds_names)]
                 + lint_vague(mine | {f for f in added_fields(hdiff) if f in uses}, b)
                 + (twin_mismatches(b, name, stem, mine) if stem else []))
        res['lints'] = lints
        prompt = make_review_prompt(b, name, renames, self.reserved(jid), a.j, res.get('twins'), lints,
                                    caller_context(b, name), hdiff)
        open(os.path.join(jd, 'review_prompt.txt'), 'w').write(prompt)
        log(f'  {jid}: review {name}')
        run_codex(self.codex_cmd(final_path), prompt, logpath, a.timeout)
        rv = parse_final(read(final_path))
        for attempt in range(2):
            self.names[jid] = rv.get('name') or name
            new, probs, gate, broken = self.check(jid)
            if broken:
                self.wait_tree(jid, new)
                continue
            if gate or attempt or not thread_id(logpath):
                break
            run_codex(['codex', 'exec', 'resume', '--skip-git-repo-check', '--json', '-o', final_path,
                       thread_id(logpath), '-'],
                      'After your changes the driver check fails:\n- ' + '\n- '.join(probs)
                      + '\nFix it or undo your change, then end with the same VERDICT/NAME/CHANGES/NOTES lines.',
                      logpath, a.timeout)
            rv = parse_final(read(final_path))
        res.update(name=new, gate=gate, problems=probs, verdict=rv.get('verdict', '?'),
                   review_changes=rv.get('changes', ''), review_notes=rv.get('notes', ''))
        return gate

    def run_job(self, jid):
        b, label = self.binary, self.jobs[jid]
        jd = os.path.join(self.run_dir, label)
        os.makedirs(jd, exist_ok=True)
        res = dict(label=label, retries=0, started=time.time())
        try:
            info = None
            for _ in range(60):  # the tree may be mid-rename or briefly unbuildable
                info = make_json('info', PROJECT, b, label)
                if info and info.get('span'):
                    break
                log(f'  {jid}: make info failed; waiting for a healthy tree')
                time.sleep(30)
            self.addr[jid] = info['span']
            gate = self.author(jid, jd, res)
            if gate and not self.a.no_review and res.get('status') != 'failed':
                gate = self.review(jid, jd, res)
            if res.get('status') != 'failed':
                if not gate:
                    res['status'] = 'unfinished'
                elif res.get('problems') or res.get('verdict') == 'flag':
                    res['status'] = 'review'
                else:
                    res['status'] = 'done'
        except Exception as e:  # noqa
            res.update(status='error', notes=str(e)[-2000:])
        res['ended'] = time.time()
        log(f'end   {jid}: {res.get("status")} name={res.get("name")} retries={res["retries"]} '
            f'verdict={res.get("verdict", "-")} ({int((res["ended"] - res["started"]) / 60)} min)')
        self.state[jid] = res['status']
        json.dump(res, open(os.path.join(jd, 'result.json'), 'w'), indent=1)
        return res


# ------------------------------------------------------------------ report

def md(s, n=220):
    return (s or '').replace('|', '/').replace('\n', ' ')[:n]


def name_changes(start_names):
    """{(old, new): {note, where}} between the run-start sidecar and now."""
    changes = {}
    for k, (new, note) in name_map(json.load(open(SIDECAR))).items():
        old = start_names.get(k, (None, None))[0]
        if old == new:
            continue
        g = changes.setdefault((old, new), dict(note=note, where=[]))
        g['where'].append(f'{k[0]} {k[2]}')
    return changes


FINAL_REVIEW = {}
ORPHANS0 = set()


def final_review(a, run_dir, binary, results, start_names, hdr_start, rec_start):
    """One session reviews the whole binary's new names together."""
    files = [f'src_{PROJECT}/{binary}/{r["name"]}.c' for r in results
             if r.get('name') and os.path.exists(os.path.join(SRC, binary, r['name'] + '.c'))]
    if not files:
        return
    changes = name_changes(start_names)
    hdiff = header_diff(hdr_start, cap=200)
    lints = lint_vague([new for _, new in changes] + added_fields(hdiff), binary)
    lints += [x for r in results for x in (r.get('lints') or []) if x.startswith('twin-name')]
    prompt = FINAL_REVIEW_PROMPT.format(
        root=ROOT, project=PROJECT, binary=binary, files='\n'.join(f'  {f}' for f in files),
        names='\n'.join(f'  {old or "(generated)"} -> {new}: {g["note"]}' for (old, new), g in sorted(changes.items(),
                        key=lambda x: x[0][1])) or '  (none)',
        hdiff='\n'.join(hdiff) or '  (none)', rdiff='\n'.join(records_diff(rec_start)) or '  (none)',
        lints='\n'.join(f'  - {x}' for x in lints) or '  (none)')
    open(os.path.join(run_dir, 'final_review_prompt.txt'), 'w').write(prompt)
    final_path = os.path.join(run_dir, 'final_review.txt')
    cmd = ['codex', 'exec', '-C', ROOT, '-s', 'workspace-write', '--skip-git-repo-check', '--json', '-o', final_path]
    log(f'final review of {len(files)} routine(s) / {len(changes)} name change(s)')
    t = time.time()
    run_codex(cmd + (['-m', a.model] if a.model else []) + ['-'], prompt,
              os.path.join(run_dir, 'final_review.jsonl'), a.timeout)
    FINAL_REVIEW.update(parse_final(read(final_path)), minutes=int((time.time() - t) / 60), lints=lints)
    log(f'final review: {FINAL_REVIEW.get("verdict", "?")} changes={FINAL_REVIEW.get("changes", "")}')


def write_report(run_dir, binary, results, start_names, final_ok, final_out, events, sweep, synced=()):
    who = {}
    for r in results:
        for p in ((r.get('renames') or '') + ' ' + (r.get('review_changes') or '')).split():
            if '=' in p:
                who[p.split('=', 1)[1].split(':', 1)[0]] = r['label']
    reviewed = {p.split('=', 1)[1].split(':', 1)[0] for r in results
                for p in (r.get('review_changes') or '').split() if '=' in p}
    finals = {p.split('=', 1)[1].split(':', 1)[0] for p in (FINAL_REVIEW.get('changes') or '').split() if '=' in p}
    for n in finals:
        who[n] = 'final review'
    changes = name_changes(start_names)
    L = [f'# Fan-out run {os.path.basename(run_dir)} ({binary})', '',
         '| label | final name | status | retries | review | lints | notes |', '|---|---|---|---|---|---|---|']
    for r in results:
        notes = md(r.get('notes'))
        if r.get('review_notes') and r['review_notes'] != 'none':
            notes += ' — review: ' + md(r['review_notes'])
        L.append(f"| {r['label']} | {r.get('name', '')} | {r.get('status')} | {r.get('retries', 0)} | "
                 f"{r.get('verdict', '-')} | {len(r.get('lints') or [])} | {notes} |")
    need = [r for r in results if r.get('status') not in ('done',)]
    L += ['', '## Needs you', '']
    L += [f"- **{r['label']}** ({r.get('name')}): {r.get('status')}; "
          + md('; '.join(p.splitlines()[0] for p in r.get('problems') or []) or r.get('review_notes') or r.get('notes'), 400)
          for r in need] or ['(nothing)']
    lost = sorted(orphans() - ORPHANS0)
    if lost:
        L += ['', '**Hand sources without companion asm (C no longer built):** ' + ', '.join(lost)]
    L += ['', '## Name changes (naming review)', '',
          '⚠ = the old name was already descriptive; ✎ = set or changed by the routine reviewer; '
          '★ = changed by the final binary review.', '',
          '| | old | new | by | where | note |', '|---|---|---|---|---|---|']
    for (old, new), g in sorted(changes.items(), key=lambda x: x[0][1]):
        flag = (('⚠' if old and not GENERATED.match(old) else '') + ('✎' if new in reviewed else '')
                + ('★' if new in finals else ''))
        L.append(f"| {flag} | {old or '(generated)'} | {new} | {who.get(new, '?')} | "
                 f"{', '.join(g['where'][:4])} | {md(g['note'], 300)} |")
    L += ['', '## Lints left after review', '']
    for r in results:
        for x in r.get('lints') or []:
            L.append(f"- {r.get('name')}: {md(x, 200)}")
    if FINAL_REVIEW:
        L += ['', f'## Final binary review ({FINAL_REVIEW.get("verdict", "?")}, {FINAL_REVIEW.get("minutes")} min)', '',
              f'Changes: {FINAL_REVIEW.get("changes") or "none"}', '']
        L += [f'- {md(x, 400)}' for x in (FINAL_REVIEW.get('notes') or '').split(';') if x.strip()]
    L += ['', '## Sidecar records mirrored from new header fields', '']
    L += [f'- {x}' for x in synced] or ['(none)']
    L += ['', '## Tree lint sweep', ''] + [f'- {md(x, 400)}' for x in sweep] + (['(clean)'] if not sweep else [])
    L += ['', '## Build lock watchdog', ''] + [f'- {e}' for e in events] + (['(no long holds)'] if not events else [])
    L += ['', '## Final rebuild', '', 'OK' if final_ok else 'FAILED', '', '```', final_out.strip()[-3000:], '```', '']
    path = os.path.join(run_dir, 'report.md')
    open(path, 'w').write('\n'.join(L))
    return path


def sweep(binary=None, files=None):
    """Tree lints; extern conflicts only where they involve *files* (all when None)."""
    sc = json.load(open(SIDECAR))
    ds = {e['name'] for e in (sc['binaries'].get('ds', {}).get('data_names') or {}).values()
          if isinstance(e, dict) and e.get('name')}
    out = lint_dup_names(sc)
    if files is None or files:
        out += lint_extern_conflicts(files, ds)
    hs = header_structs()
    for c in glob.glob(os.path.join(SRC, binary or '*', '*.c')):
        out += lint_local_structs(c, hs)
    return out


def eta(n, j):
    durs = []
    for p in glob.glob(os.path.join(FANOUT_DIR, '*', '*', 'result.json')):
        try:
            r = json.load(open(p))
            if r.get('ended') and r.get('started') and r.get('status') in ('done', 'review'):
                durs.append(r['ended'] - r['started'])
        except (OSError, ValueError):
            pass
    avg = sum(durs) / len(durs) if durs else 50 * 60
    return f'~{n * avg / j / 3600:.1f} h at -j {j} (avg {avg / 60:.0f} min/job over {len(durs) or "no"} earlier jobs)'


# ------------------------------------------------------------------ main

def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('binary', nargs='?')
    ap.add_argument('--next', action='store_true', help='the binary with the fewest bare routines left')
    ap.add_argument('-j', type=int, default=8)
    ap.add_argument('-n', '--dry-run', action='store_true')
    ap.add_argument('--only', default='', help='comma list of label substrings to run')
    ap.add_argument('--skip', default='', help='comma list of label substrings to leave out')
    ap.add_argument('--limit', type=int, default=0, help='at most this many jobs (default all)')
    ap.add_argument('--model')
    ap.add_argument('--retries', type=int, default=2)
    ap.add_argument('--timeout', type=int, default=3 * 3600, help='seconds per codex call')
    ap.add_argument('--resume', metavar='RUN', help='continue a run directory under .cache/fanout')
    ap.add_argument('--no-review', action='store_true')
    ap.add_argument('--no-final-review', action='store_true', help='skip the whole-binary naming review at the end')
    ap.add_argument('--dirty-ok', action='store_true', help='run although src/sidecar have uncommitted changes')
    ap.add_argument('--lock-warn', type=int, default=20, help='minutes before the watchdog reports a lock holder')
    ap.add_argument('--lint-only', action='store_true', help='print the tree lint sweep and exit')
    a = ap.parse_args()

    if a.lint_only:
        found = sweep(a.binary)
        print('\n'.join(found) or 'clean')
        if a.binary:
            for c in sorted(glob.glob(os.path.join(SRC, a.binary, '*.c'))):
                for x in lint_soft(c):
                    print(f'{rel(c)}: {x}')
        return

    if a.resume and not a.binary:
        meta = read(os.path.join(FANOUT_DIR, a.resume, 'binary'))
        a.binary = meta.strip() or None
    binary = next_binary() if a.next else a.binary
    if not binary:
        sys.exit('name a binary or pass --next' if not a.next else 'no bare C routines left')
    if binary not in binaries():
        sys.exit(f'unknown binary {binary}')

    only = [o for o in a.only.split(',') if o]
    labels, skipped = bare(binary)
    labels = [l for l in labels if (not only or any(o in l for o in only))
              and not any(x in l for x in a.skip.split(',') if x)]
    d = dependencies(binary, labels)
    order = topo_order(labels, d)
    if a.limit:
        order = order[:a.limit]
    deps = {l: d[l] & set(order) for l in order}
    jobs = {l: l for l in order}
    run = a.resume or time.strftime('%Y%m%d-%H%M%S')
    run_dir = os.path.join(FANOUT_DIR, run)

    if skipped:
        log(f'{binary}: not C (no aztec_csav), skipped: ' + ' '.join(skipped))
    log(f'run {run}: {binary}, {len(order)} job(s), -j {a.j}, review {"off" if a.no_review else "on"}; '
        f'{eta(len(order), a.j)}')
    for j in order:
        log(f'  {j}' + (f'  after {" ".join(sorted(deps[j]))}' if deps[j] else ''))
    if a.dry_run:
        if order:
            l = order[0]
            tw = Twins().find(binary, l)
            calls = caller_context(binary, l)
            print(make_prompt(binary, l, set(order[1:]), cc_flags(binary),
                              os.path.join(run_dir, l, 'draft.c'), a.j, tw, calls))
            print('=' * 30, 'review prompt (with placeholder renames)', '=' * 30)
            print(make_review_prompt(binary, l, [f'{l}=<new_name>'], set(order[1:]), a.j, tw,
                                     ['(lints appear here)'], calls, ['(header diff appears here)']))
            for x in order:
                t = Twins().find(binary, x)
                if top_twin(t):
                    print(f'twin names {x} <- {top_twin(t)}: {twin_names(binary, x, top_twin(t))}')
        return

    if not a.resume and not a.dirty_ok:
        dt = dirty()
        if dt:
            sys.exit('uncommitted changes under src/sidecar (commit the last binary first, or --dirty-ok):\n  '
                     + '\n  '.join(dt[:20]))
    os.makedirs(run_dir, exist_ok=True)
    open(os.path.join(run_dir, 'binary'), 'w').write(binary)
    start_path = os.path.join(run_dir, 'sidecar_start.json')
    if not os.path.exists(start_path):
        shutil.copy(SIDECAR, start_path)
    start_sc = json.load(open(start_path))
    start_names = name_map(start_sc)
    rec_start = records_of(start_sc)
    hdr_path = os.path.join(run_dir, 'headers_start.json')
    if not os.path.exists(hdr_path):
        json.dump(snapshot_headers(), open(hdr_path, 'w'))
        json.dump(lint_records(start_sc), open(os.path.join(run_dir, 'records_baseline.json'), 'w'))
    hdr_start = json.load(open(hdr_path))
    rec_base = [tuple(x) for x in json.load(open(os.path.join(run_dir, 'records_baseline.json')))]

    signal.signal(signal.SIGINT, stop_all)
    signal.signal(signal.SIGTERM, stop_all)
    watchdog = Watchdog(a.lock_warn)
    watchdog.start()
    batch = Batch(a, binary, jobs, deps, run_dir, watchdog)
    ORPHANS0.update(batch.orphans0)
    results = {}
    if a.resume:
        for j in order:
            r = read(os.path.join(run_dir, j, 'result.json'))
            if r:
                r = json.loads(r)
                if r.get('status') in ('done', 'review'):
                    batch.state[j] = r['status']
                    results[j] = r
    # a resumed run also covers labels already renamed by a finished job
    running = {}
    with cf.ThreadPoolExecutor(a.j) as ex:
        while True:
            if batch.healthy.is_set():
                for j in order:
                    if batch.state[j] == 'pending' and len(running) < a.j and \
                            all(batch.state[x] not in ('pending', 'running') for x in deps[j]):
                        batch.state[j] = 'running'
                        running[ex.submit(batch.run_job, j)] = j
            if not running:
                if any(s == 'pending' for s in batch.state.values()):
                    time.sleep(30)
                    continue
                break
            done, _ = cf.wait(running, timeout=60, return_when=cf.FIRST_COMPLETED)
            for f in done:
                results[running.pop(f)] = f.result()
    watchdog.stop.set()

    ordered = [results[j] for j in order if j in results]
    if not a.no_final_review:
        final_review(a, run_dir, binary, ordered, start_names, hdr_start, rec_start)
    synced = sync_records(rec_base)
    if synced:
        log('mirrored new header fields into sidecar records:\n  ' + '\n  '.join(synced))
    log('final: make build + full make rebuild')
    bld = sh(['make', 'build', PROJECT], check=False)
    rb = sh(['make', 'rebuild'], check=False)
    ok = bld.returncode == 0 and rb.returncode == 0
    out = (bld.stdout + bld.stderr)[-1000:] + (rb.stdout + rb.stderr)[-2000:]
    json.dump(ordered, open(os.path.join(run_dir, 'summary.json'), 'w'), indent=1)
    made = [os.path.join(SRC, binary, r['name'] + '.c') for r in ordered if r.get('name')]
    path = write_report(run_dir, binary, ordered, start_names, ok, out, watchdog.events,
                        sweep(binary, [p for p in made if os.path.exists(p)]), synced)
    log(f'final rebuild: {"OK" if ok else "FAILED"}; report: {rel(path)}')
    for r in ordered:
        print(f"  {r['label']:36} {str(r.get('status')):10} {str(r.get('verdict', '-')):6} {r.get('name', '')}")
    left = next_binary()
    print(f'\nReview {rel(path)} and `git diff`, commit, then run the next binary'
          + (f' (--next = {left}).' if left else '.'))
    if not ok:
        sys.exit(1)


if __name__ == '__main__':
    main()
