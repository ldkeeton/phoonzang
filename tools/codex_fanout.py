#!/usr/bin/env python3
"""Fan out C reversal of one binary's routines to parallel Codex agents (v4).

Codex agents stop early whatever the prompt says, so the driver never trusts
what they report.  It checks three gates itself, and until all three pass it
resumes the same session with one line: "Not done: <what>. Continue."

  1. the C exists:   src_DSAVANT/<bin>/<name>.c defines <name>(
  2. byte-exact:     make rebuild DSAVANT <bin> <name> passes
  3. no generated names: not in the routine's name, not in make refs, not in
     any identifier of the .c (loc_, api_idx_, dseg_, f_XXXX ...)

A job ends when the gates pass, or after --max-resumes resumes or --job-minutes.

Routines are independent: every bare routine is eligible immediately, and -j
only caps how many agents run at once.  Agents share this working tree; every
make waits on .cache/build.lock.  The driver never writes to git: review
`git diff` and commit yourself.

  python3 tools/codex_fanout.py --next -n        # dry run of the smallest binary left
  python3 tools/codex_fanout.py vmext -j 4
  python3 tools/codex_fanout.py vmext --only show_fountain_result -j 1
  python3 tools/codex_fanout.py --gates vpops    # check the gates of every C routine
"""
import argparse, concurrent.futures as cf, glob, json, os, re, shutil, signal, subprocess, sys, threading, time

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
FANOUT_DIR = os.path.join(ROOT, '.cache', 'fanout')
PROJECT = 'DSAVANT'
SRC = os.path.join(ROOT, f'src_{PROJECT}')
SIDECAR_REL = f'disassembler/sidecar/{PROJECT}.json'
SIDECAR = os.path.join(ROOT, SIDECAR_REL)
SKIP_DIRS = {'include', 'build_out'}

#: A name the disassembler made up rather than a person or agent.
GENERATED = re.compile(
    r'^(api_idx_[0-9a-f]{4}_[A-Z]{4}'
    r'|(\w+_)?loc_(?:[A-Z]{4}|[0-9a-f]{4,})'
    r'|sub_[0-9a-f]+|jumptable_[0-9a-f]+'
    r'|(dseg|bss|cseg|word|byte|dword)_[0-9a-f]+'
    r'|f_[0-9a-f]{2,}'
    r'|(var|arg|local)_?[0-9a-f]+)$')

_lock = threading.Lock()


def log(*a):
    with _lock:
        print(time.strftime('%H:%M:%S'), *a, flush=True)


def sh(cmd, check=False, **kw):
    r = subprocess.run(cmd, cwd=ROOT, text=True, capture_output=True, **kw)
    if check and r.returncode:
        raise RuntimeError(f'{cmd} failed ({r.returncode}):\n{r.stdout}\n{r.stderr}')
    return r


def make_json(*args):
    r = sh(['make', *args], env={**os.environ, 'JSON': '1'})
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
    """(C routines that are still only .asm, other bare .asm)."""
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


def dirty():
    r = sh(['git', 'status', '--porcelain', '--', f'src_{PROJECT}', SIDECAR_REL])
    return [l for l in r.stdout.splitlines() if l.strip()]


def orphans():
    """Hand .c/.s files with no companion .asm (their C is no longer built)."""
    out = set()
    for path in glob.glob(os.path.join(SRC, '**', '*.[cs]'), recursive=True):
        if os.path.relpath(path, SRC).split(os.sep)[0] in SKIP_DIRS:
            continue
        if not os.path.exists(path[:-2] + '.asm'):
            out.add(rel(path))
    return out


def cc_flags(binary):
    sc = json.load(open(SIDECAR))
    own = sc['binaries'][binary].get('compiler_flags', {})
    return ' '.join(own.get('default') or sc['compiler_flags']['default'])


def examples(binary, n=2):
    own = sorted(glob.glob(os.path.join(SRC, binary, '*.c')), key=os.path.getmtime, reverse=True)
    shared = sorted(glob.glob(os.path.join(SRC, 'shared', 'ovr', '*.c')), key=os.path.getmtime, reverse=True)
    return ' '.join(rel(p) for p in (own + shared)[:n]) or 'none yet'


# ------------------------------------------------------------------ gates

def c_identifiers(text):
    """Identifiers in C source, comments and string/char literals removed."""
    text = re.sub(r'/\*.*?\*/', ' ', text, flags=re.S)
    text = re.sub(r'"(?:\\.|[^"\\])*"|\'(?:\\.|[^\'\\])*\'', ' ', text)
    text = re.sub(r'^\s*#\s*include.*$', ' ', text, flags=re.M)
    return set(re.findall(r'\b[A-Za-z_]\w*\b', text))


def generated_in_c(path):
    return sorted(i for i in c_identifiers(read(path)) if GENERATED.match(i))


def first_error(out):
    """The most telling line of a failed make rebuild."""
    lines = [l.strip() for l in out.splitlines() if l.strip()]
    for pat in (r'ERROR \d+', r'\berror\b', r'\[DIFF\]|differ|mismatch|bytes', r'FAIL'):
        hit = next((l for l in lines if re.search(pat, l, re.I)), None)
        if hit:
            return hit[:300]
    return (lines[-1] if lines else 'make rebuild failed with no output')[:300]


def current_name(binary, span, label, start_asms):
    """The routine's name now: the label, or a .asm new since the job began,
    whichever still covers the routine's original span."""
    d = os.path.join(SRC, binary)
    now = {f[:-4] for f in os.listdir(d) if f.endswith('.asm')}
    for n in [label] + sorted(now - start_asms):
        if n in now:
            info = make_json('info', PROJECT, binary, n)
            if info and info.get('span') == span:
                return n
    return label


def gates(binary, name, reserved=()):
    """``(gate number, one-line problem, make rebuild output)`` for the first
    gate that fails, or ``(0, '', output)`` when all three pass."""
    c = os.path.join(SRC, binary, name + '.c')
    cr = rel(c)
    if os.path.exists(os.path.join(SRC, binary, name + '.s')):
        return 1, f'{rel(c)[:-2]}.s exists, but this routine is C: delete the .s and write {cr}', ''
    if not os.path.exists(c):
        return 1, f'{cr} does not exist yet', ''
    if not re.search(rf'^[\w \t*]*?\b{re.escape(name)}\s*\([^;]*$', read(c), re.M):
        return 1, f'{cr} does not define the function {name}(', ''
    r = sh(['make', 'rebuild', PROJECT, binary, name])
    out = r.stdout + r.stderr
    if r.returncode:
        return 2, f'make rebuild {PROJECT} {binary} {name} fails: {first_error(out)}', out
    left = []
    if GENERATED.match(name):
        left.append(name)
    left += [i for i in generated_in_c(c) if i not in reserved and i not in left]
    refs = make_json('refs', PROJECT, binary, name) or {}
    left += [x['symbol'] for x in refs.get('symbols', [])
             if x.get('symbol') not in reserved and x['symbol'] not in left]
    if left:
        return 3, 'generated names left: ' + ' '.join(left) + ' (give each a descriptive name with make name)', out
    return 0, '', out


def foreign_failure(binary, name, out):
    """True when a rebuild failure names other routines' files, not this one's."""
    mine = {f'{binary}/{name}.{e}' for e in ('c', 'asm', 's')}
    paths = {p for p in re.findall(r'(?:src_' + PROJECT + r'/)?([\w/]+\.(?:c|s|h|asm))\b', out) if '/' in p}
    return bool(paths - mine) and not (paths & mine)


# ------------------------------------------------------------------ prompt

PROMPT = """\
Reverse one Wizardry 7 routine to byte-exact K&R C (Manx Aztec C86 4.2b, cc flags {flags}).

Routine: {label} in {binary}. Its assembly: {asm}
Write the C in your draft file: {draft}
Check it with: make probe {project} {binary} {label} FILE={draft} LINKED=1
Repeat until the probe prints "link ... [OK]". Then copy the draft to {c} and run make rebuild {project} {binary} {label}.
Give the routine and every symbol it uses a descriptive name: make name {project} {binary} OLD=new:'short note' ...
No generated names may remain (loc_, api_idx_, dseg_, bss_, f_XXXX). make refs {project} {binary} <routine> lists them.
Examples of finished C: {examples}. Shared structs: src_{project}/include/structs/*.h.
Do not rename these (other agents own them): {reserved}
Never run git, make clean, make data, or make build/rebuild without a routine.

Compiler notes (Aztec C 4.2b codegen):
- **Locals:** placed downward from `bp-2` in declaration order; arrays occupy `[base, base+size)`. A fake frame struct can become plain locals declared in reverse field order. Filler/"reserved" words are usually the tail of a real array (`int opts[11]; int marker; int r1, r2, r3;` was really `int opts[15]`) or genuinely unused locals.
- **`for`** compiles to `jmp test; body; step; test: if cond → body`. The pattern `goto test; body: ...; test: if (c) goto body;` is just a `for`. When the first test is known to be true (`for (i = 0; i < 3; ...)`), the initial jump is omitted.
- **`while`** tests at the top and `jmp`s back from the bottom.
- **`do/while`:** the condition is a label, and the compiler forgets cached register values at labels. If the original reloads a variable where the C reuses `ax`, it's a `do/while`, not `volatile`.
- **`continue`** in `while` jumps straight to the top test; in `for (;;)` it jumps to the loop's bottom `jmp top`. A `for (;;) {{ if (!cond) break; ... }}` is the shape when `continue`s land on the bottom jump.
- **Early `return` in a `csav` routine** is an inline `ret` (1 byte). A `jmp` to the shared exit means the rest of the body is wrapped in `if` blocks, not returned from early.
- **`switch`** puts the dispatch (compare chain or table) after the case bodies (`mov ax, key; jmp dispatch`). A goto chain plus a trailing `case 8: goto move_left;` is one switch with inline case bodies.
- **`if/else`** emits the then-branch first. `[test → jump to B] [A] [jmp end] [B]` is `if (c) A; else B;`.
- **Comma in a `for` step** comes out in reverse order: `left++, right--` emits `dec right; inc left`.
- **Arguments** are pushed right-to-left: the first push is the last argument.
- **Register cache is type-keyed:** after `x = expr;` the compiler reuses `ax` for a later read of `x` only if the destination has the same type. A reload of an `int` into an `unsigned` field (e.g. `regs.dx = drive_index`) means the field is `unsigned`, not that the source is `volatile`.
- **`jcc short; jmp near`** (inverted test over a near jump) is just a branch out of short range; read it as one conditional jump. Chains of these are ordinary `&&`/`||`.
- **Empty then-branch is real:** `test; jne A; test; je B; A: jmp end; B: else-body` is `if (a || b) {{ }} else ...`; `if (!(a || b))` compiles 2 bytes shorter.
- **Unused frame bytes** can match a struct the routine works on: `party_screen`'s 652 bytes are `sizeof(member_rec) + sizeof(member_ext)`, the swap temporaries.
- **`(unsigned)65535`** in `==`/`!=` produces the same bytes as `-1`.
"""


def make_prompt(binary, label, draft, reserved):
    return PROMPT.format(flags=cc_flags(binary), label=label, binary=binary, project=PROJECT,
                         asm=f'src_{PROJECT}/{binary}/{label}.asm', c=f'src_{PROJECT}/{binary}/{label}.c',
                         draft=draft, examples=examples(binary), reserved=' '.join(sorted(reserved)) or '(none)')


def resume_text(problem, draft, binary, name):
    msg = f'Not done: {problem}.'
    if problem.endswith('does not exist yet') and os.path.exists(draft):
        msg += (f' Your draft is {draft}: probe it with LINKED=1 until "[OK]", then copy it to '
                f'src_{PROJECT}/{binary}/{name}.c.')
    return msg + ' Continue.'


# ------------------------------------------------------------------ codex

_children = set()


def codex_env():
    return {k: v for k, v in os.environ.items()
            if not re.search(r'PROXY|proxy|npm_config|YARN|BUNDLE|CARGO', k)}


def descendants(pid):
    kids = {}
    for line in sh(['ps', '-e', '-o', 'pid=,ppid=']).stdout.splitlines():
        c, pp = map(int, line.split())
        kids.setdefault(pp, []).append(c)
    out, todo = [], [pid]
    while todo:
        for c in kids.get(todo.pop(), []):
            out.append(c)
            todo.append(c)
    return out


def kill_tree(p):
    """Kill a codex session and every command it started (the sandbox setsid()s them)."""
    tree = [p.pid] + descendants(p.pid)
    for sig in (signal.SIGTERM, signal.SIGKILL):
        for pid in reversed(tree):
            try:
                os.kill(pid, sig)
            except (ProcessLookupError, PermissionError):
                pass
        time.sleep(3)


def run_codex(cmd, text, logpath, timeout):
    with open(logpath, 'a') as lf:
        p = subprocess.Popen(cmd, cwd=ROOT, stdin=subprocess.PIPE, stdout=lf,
                             stderr=subprocess.STDOUT, text=True, env=codex_env())
        _children.add(p)
        try:
            p.communicate(text, timeout=max(60, timeout))
            return p.returncode
        except subprocess.TimeoutExpired:
            kill_tree(p)
            p.wait()
            lf.write(f'\n[driver] killed after {timeout:.0f}s\n')
            return 'timeout'
        finally:
            _children.discard(p)


def stop_all(signum=None, frame=None):
    log(f'stopping {len(_children)} agent(s) and their commands')
    for p in list(_children):
        kill_tree(p)
    os._exit(130)


def thread_id(logpath):
    tid = None
    try:
        for line in open(logpath):
            if '"thread.started"' in line:
                tid = json.loads(line).get('thread_id') or tid
    except (OSError, ValueError):
        pass
    return tid


# ------------------------------------------------------------------ jobs

class Batch:
    def __init__(self, a, binary, order, run_dir):
        self.a, self.binary, self.order, self.run_dir = a, binary, order, run_dir
        self.state = {l: 'pending' for l in order}
        self.healthy = threading.Event()
        self.healthy.set()
        self.orphans0 = orphans()

    def reserved(self, me):
        return {l for l in self.order if l != me and self.state[l] not in ('done',)}

    def codex_cmd(self):
        cmd = ['codex', 'exec', '-C', ROOT, '-s', 'workspace-write', '--skip-git-repo-check', '--json']
        return cmd + (['-m', self.a.model] if self.a.model else []) + ['-']

    def resume_cmd(self, tid):
        return ['codex', 'exec', 'resume', '--skip-git-repo-check', '--json', tid, '-']

    def park(self, label, name, draft):
        """Move a .c that fails its gate out of the tree, so other jobs keep a green build."""
        c = os.path.join(SRC, self.binary, name + '.c')
        if os.path.exists(c):
            if os.path.exists(draft):
                shutil.move(draft, draft + '.prev')
            shutil.move(c, draft)
            log(f'  {label}: parked failing {name}.c at {rel(draft)}')

    def wait_for_tree(self, label, name):
        """Someone else broke the build: hold new starts until it builds again."""
        self.healthy.clear()
        log(f'  {label}: the tree is broken by another routine; pausing new starts')
        for _ in range(48):  # up to 4 h
            time.sleep(300)
            r = sh(['make', 'rebuild', PROJECT, self.binary, name])
            if r.returncode == 0 or not foreign_failure(self.binary, name, r.stdout + r.stderr):
                break
        log(f'  {label}: tree builds again; resuming starts')
        self.healthy.set()

    def run_job(self, label):
        a, b = self.a, self.binary
        jd = os.path.join(self.run_dir, label)
        os.makedirs(jd, exist_ok=True)
        draft = os.path.join(jd, 'draft.c')
        logpath = os.path.join(jd, 'log.jsonl')
        res = dict(label=label, name=label, resumes=0, started=time.time())
        try:
            info = None
            for _ in range(60):  # the tree may be mid-rename
                info = make_json('info', PROJECT, b, label)
                if info and info.get('span'):
                    break
                time.sleep(30)
            span = info['span']
            start_asms = {f[:-4] for f in os.listdir(os.path.join(SRC, b)) if f.endswith('.asm')}
            deadline = time.time() + a.job_minutes * 60
            prompt = make_prompt(b, label, draft, self.reserved(label))
            open(os.path.join(jd, 'prompt.txt'), 'w').write(prompt)
            log(f'start {label}')
            run_codex(self.codex_cmd(), prompt, logpath, deadline - time.time())
            waited = False
            while True:
                name = current_name(b, span, label, start_asms)
                gate, problem, out = gates(b, name, self.reserved(label))
                if gate == 2 and not waited and foreign_failure(b, name, out):
                    waited = True
                    self.wait_for_tree(label, name)
                    continue
                res.update(name=name, gate=gate, problem=problem)
                if gate == 0:
                    res['status'] = 'done'
                    break
                if gate == 2:
                    self.park(label, name, draft)
                tid = thread_id(logpath)
                if res['resumes'] >= a.max_resumes or time.time() >= deadline or not tid:
                    res['status'] = 'unfinished'
                    if not tid:
                        res['problem'] += ' (no codex session to resume)'
                    break
                res['resumes'] += 1
                msg = resume_text(problem, draft, b, name)
                log(f'  {label}: resume {res["resumes"]} (gate {gate}): {problem[:120]}')
                run_codex(self.resume_cmd(tid), msg, logpath, deadline - time.time())
        except Exception as e:  # noqa
            res.update(status='error', problem=str(e)[-1500:])
        res['ended'] = time.time()
        self.state[label] = res['status']
        log(f'end   {label}: {res["status"]} name={res["name"]} resumes={res["resumes"]} '
            f'({int((res["ended"] - res["started"]) / 60)} min)'
            + (f' -- gate {res.get("gate")}: {res.get("problem", "")[:120]}' if res['status'] != 'done' else ''))
        json.dump(res, open(os.path.join(jd, 'result.json'), 'w'), indent=1)
        return res


# ------------------------------------------------------------------ report

def name_changes(before):
    """``[(binary, key, old, new)]`` for sidecar names that differ from *before*."""
    after = json.load(open(SIDECAR))
    out = []
    for b, data in after['binaries'].items():
        for block in ('function_names', 'data_names', 'code_data_names'):
            old = (before['binaries'].get(b, {}).get(block) or {})
            for key, e in (data.get(block) or {}).items():
                new = e.get('name') if isinstance(e, dict) else e
                was = old.get(key)
                was = was.get('name') if isinstance(was, dict) else was
                if new != was:
                    out.append((b, key, was or '(generated)', new))
    return sorted(out)


def write_report(run_dir, binary, results, before, final_ok, final_out):
    md = lambda s: (s or '').replace('|', '/').replace('\n', ' ')[:300]
    L = [f'# Fan-out run {os.path.basename(run_dir)} ({binary})', '',
         '| label | name | status | resumes | blocked at |', '|---|---|---|---|---|']
    for r in results:
        blocked = '' if r.get('status') == 'done' else f"gate {r.get('gate', '?')}: {md(r.get('problem'))}"
        L.append(f"| {r['label']} | {r.get('name')} | {r.get('status')} | {r.get('resumes', 0)} | {blocked} |")
    lost = sorted(orphans() - ORPHANS0)
    if lost:
        L += ['', '**Hand sources that lost their .asm (no longer built):** ' + ', '.join(lost)]
    L += ['', '## Name changes', '', '| where | old | new |', '|---|---|---|']
    L += [f'| {b} {k} | {o} | {n} |' for b, k, o, n in name_changes(before)] or ['(none)']
    L += ['', '## Final build', '', 'OK' if final_ok else 'FAILED', '', '```', final_out.strip()[-3000:], '```', '']
    path = os.path.join(run_dir, 'report.md')
    open(path, 'w').write('\n'.join(L))
    return path


ORPHANS0 = set()


# ------------------------------------------------------------------ main

def check_gates(binary):
    """--gates: the three gates for every C routine of *binary* (no agents)."""
    bad = 0
    for c in sorted(glob.glob(os.path.join(SRC, binary, '*.c'))):
        name = os.path.basename(c)[:-2]
        gate, problem, _ = gates(binary, name)
        print(f'{name:40} ' + ('OK' if not gate else f'gate {gate}: {problem}'))
        bad += bool(gate)
    for label in bare(binary)[0]:
        print(f'{label:40} gate 1: no .c yet')
    return bad


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('binary', nargs='?')
    ap.add_argument('--next', action='store_true', help='the binary with the fewest bare routines left')
    ap.add_argument('-j', type=int, default=12)
    ap.add_argument('-n', '--dry-run', action='store_true')
    ap.add_argument('--only', default='', help='comma list of label substrings to run')
    ap.add_argument('--skip', default='', help='comma list of label substrings to leave out')
    ap.add_argument('--limit', type=int, default=0, help='at most this many jobs')
    ap.add_argument('--model')
    ap.add_argument('--max-resumes', type=int, default=12, help='"Continue" resumes per routine')
    ap.add_argument('--job-minutes', type=int, default=120, help='wall-clock limit per routine')
    ap.add_argument('--dirty-ok', action='store_true', help='run although src/sidecar have uncommitted changes')
    ap.add_argument('--gates', action='store_true', help='only report the gates of BIN\'s C routines')
    a = ap.parse_args()

    binary = next_binary() if a.next else a.binary
    if not binary:
        sys.exit('name a binary or pass --next' if not a.next else 'no bare C routines left')
    if binary not in binaries():
        sys.exit(f'unknown binary {binary}')
    if a.gates:
        sys.exit(1 if check_gates(binary) else 0)

    only = [o for o in a.only.split(',') if o]
    labels, skipped = bare(binary)
    labels = [l for l in labels if (not only or any(o in l for o in only))
              and not any(x in l for x in a.skip.split(',') if x)]
    order = labels[:a.limit or None]
    run = time.strftime('%Y%m%d-%H%M%S')
    run_dir = os.path.join(FANOUT_DIR, run)

    if skipped:
        log(f'{binary}: not C (no aztec_csav), skipped: ' + ' '.join(skipped))
    log(f'run {run}: {binary}, {len(order)} job(s), -j {a.j}, '
        f'up to {a.max_resumes} resumes / {a.job_minutes} min per routine')
    for l in order:
        log(f'  {l}')
    if a.dry_run:
        if order:
            print(make_prompt(binary, order[0], os.path.join(run_dir, order[0], 'draft.c'), set(order[1:])))
            print('resume example:', resume_text(f'src_{PROJECT}/{binary}/{order[0]}.c does not exist yet',
                                                 '/no/draft', binary, order[0]))
        return
    if not a.dirty_ok and dirty():
        sys.exit('uncommitted changes under src/sidecar (commit first, or --dirty-ok):\n  '
                 + '\n  '.join(dirty()[:20]))

    os.makedirs(run_dir, exist_ok=True)
    before = json.load(open(SIDECAR))
    signal.signal(signal.SIGINT, stop_all)
    signal.signal(signal.SIGTERM, stop_all)
    batch = Batch(a, binary, order, run_dir)
    ORPHANS0.update(batch.orphans0)
    results, running = {}, {}
    with cf.ThreadPoolExecutor(a.j) as ex:
        while True:
            if batch.healthy.is_set():
                for l in order:
                    if len(running) >= a.j:
                        break
                    if batch.state[l] == 'pending':
                        batch.state[l] = 'running'
                        running[ex.submit(batch.run_job, l)] = l
            if not running:
                if any(s == 'pending' for s in batch.state.values()):
                    time.sleep(30)
                    continue
                break
            done, _ = cf.wait(running, timeout=60, return_when=cf.FIRST_COMPLETED)
            for f in done:
                results[running.pop(f)] = f.result()

    ordered = [results[l] for l in order if l in results]
    log('final: make build + full make rebuild')
    bld = sh(['make', 'build', PROJECT])
    rb = sh(['make', 'rebuild'])
    ok = bld.returncode == 0 and rb.returncode == 0
    out = (bld.stdout + bld.stderr)[-1000:] + (rb.stdout + rb.stderr)[-2000:]
    json.dump(ordered, open(os.path.join(run_dir, 'summary.json'), 'w'), indent=1)
    path = write_report(run_dir, binary, ordered, before, ok, out)
    log(f'final rebuild: {"OK" if ok else "FAILED"}; report: {rel(path)}')
    for r in ordered:
        print(f"  {r['label']:36} {r.get('status'):10} {r.get('name')}")
    print(f'\nReview {rel(path)} and `git diff`, commit, then run the next binary.')
    if not ok:
        sys.exit(1)


if __name__ == '__main__':
    main()
