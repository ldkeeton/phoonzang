# Plan: layout-independent `asm_DSAVANT` (dynamic addresses + data pointers)

**This is the single plan.** It merges the former `plan-data.md` (F7 data-pointer
detection) into the original dynamic-address plan. It is written so a *fresh
context* can pick up at **D1** without re-deriving anything.

Plain-language goal: a user may add or remove bytes anywhere in the generated
assembler and it must **still assemble into a working EXE**. The only tolerated
differences are the semantically-equivalent encodings the verifier already
accepts.

---

## 0. Status at a glance (read this first)

- **Pass 1 — F1/F2/F3/F5: COMPLETE (2026-10-11).**
- **D0 — census classes + inert exclusion: COMPLETE (2026-10-12).**
- **Next: D1 — F4 `dseg_`/`bss_` data labels** (Section 17).
- **Gate, after every step:** `make verify DSAVANT` = **18/18**, unit suite green.

**Current census** on the committed (rebuilt) tree:

| class | value | meaning |
|-------|------:|---------|
| `code_shift` | 152 | breaks when code resizes — **must reach 0** |
| `data_shift` | 1401 | breaks when data resizes — **must reach 0** |
| `inert` | 248 | can never change — **excluded** |
| `total` (gated) | 1553 | `code_shift + data_shift` |

Per-taxonomy breakdown: `f1=2 f2=13 f3=134 f4=1401 f5=3 f6=241 f7=0`.

**Verification commands** (run from `asm/`):

```bash
python3 -m unittest discover -p 'test_*.py'
make build DSAVANT && make verify DSAVANT     # must print "DSAVANT: 18/18 passed"
```

The decrease guard lives in
`asm/lib/tests/test_dynamic_addrs.py::CommittedTreeBaselineTests`
(`BASELINE_TOTALS`); the census lives in `asm/lib/compare/records.py`
(`count_frozen_addrs`).

**Scope note:** start on `ds` (the main MZ image); overlays and raw drivers are
D7. `./debugger` (the home-made 16-bit debug TSR) is *not* used by any static
step; it may be extended only if the last-resort dynamic tier (Section 12) is
ever reached.

---

## 1. Goal

Turn the generated `asm_DSAVANT/**` into a **layout-independent** source tree:
every value that shifts when code/data is inserted, deleted, or resized is
emitted as an assembler expression over labels / `$` / `$$` / derived `equ`s,
so the image stays internally consistent **without hand-editing a single hex
constant** and still reassembles.

A generated value is **dynamic** when it is an expression the assembler resolves
from other symbols (`label`, `$`, `$$`, `equ` chains). A **frozen literal** is a
bare hex/decimal value standing in for a location, a size, or a file offset.

The target is **"nothing that moves under an edit is still hard-coded."** The
`frozen_addr` census is a *proxy*: it also counts values that can never need to
change (fixed DOS/external offsets, deliberately-literal data tables), so the
census is split into classes and the truly-constant ones are excluded from the
gate rather than waived (Sections 4–5).

The **real acceptance bar is behavioural**: arbitrary add/remove of bytes in the
generated source must still assemble into a coherent, loadable image — header
length/segment fields correct, the relocation word valid, and every reference
that should move moving with it. Section 15 defines the two safety nets.

Every literal that is replaced by a formula keeps its **original value as a
leading comment** (Appendix A), so the emitted source stays readable.

---

## 2. Settled decisions

- **Exact bytes is NOT a goal.** The gate is `make verify DSAVANT` 18/18
  **semantic** plus the unit suite. `EXTRA_FLAGS=--exact-bytes` is not a gate.
- **No growth restriction.** The data anchor and `e_ss` are dynamic; code may
  grow past the original code→data gap and data slides to the next paragraph
  boundary. If code shrinks, data stays pinned at the original origin.
- **No commits.** Changes are left in the working tree for review.
- **Inert means excluded, not waived.** `psp_*`, `external_data`, and the
  deliberately-literal data tables are removed from the gate and reported in a
  separate `inert` bucket (Section 5).
- **Edit robustness is the bar, not `frozen_addr == 0`.** The census is only a
  proxy for "how much is still hard-coded."
- **Acceptance requires a strong anchor** (Section 8): a candidate must have at
  least one of {relocation, pointer-sized access, ≥3 array run}; the small +2
  terms only break ties, they never promote on their own.
- **Backlog policy (this phase):** promote at 100% precision against the corpus;
  a small, explicitly-listed `unproven_data_words` backlog is accepted for now
  and driven down, rather than blocking on it.
- **Ground-truth corpus:** derive candidate `data_pointers` by inspection and
  have the user review; include explicit `not_pointers` negatives.
- **First-pass scope:** `ds` only; overlays/drivers later (D7).

---

## 3. The problem: a word can be a pointer or a number (F7)

A 16-bit word sitting in a data block may be:

- a **code pointer** (a load-image offset — CS/`LOAD` space),
- a **data pointer** (an offset into the data segment — DS/`DATA` space),
- the **offset half of a far pointer** (a `segment:offset` pair; the segment
  half is relocation-fixed, the offset half must move),
- a **segment word** (fixed up by the MZ relocation table — not an offset),
- or just a **number** (a count, a bitmask, a lookup value).

Only offsets that name a location should move when the image moves. Leave a real
pointer frozen and an edit silently breaks it; promote a plain number into a
pointer expression and an edit silently breaks *it*. Both are bugs — the second
is the one we can accidentally introduce.

### 3.1 Why `make verify` cannot guard this

`make verify` rebuilds the generated tree and compares it to the **original**
EXEs. At the original layout, a correct promotion (`dw label - IMAGE_BASE`)
resolves to exactly the original number, so the rebuilt bytes are unchanged and
verify passes. It passes just as happily for a *wrong* promotion, for the same
reason.

So a false pointer is **invisible to the 18/18 gate**. It only shows up after an
edit, when the expression drifts but the number should have stayed put. That is
why this plan defines *positive evidence* for "this word is a pointer" and
validates it with an edit-property test (Section 15), not with `make verify`.

---

## 4. Frozen-value taxonomy (F1–F10)

| id | value | where emitted | status |
|----|-------|---------------|--------|
| F1 | MZ `e_cblp`, `e_cp` (file size); `e_ss` (data segment) | `_render_mz_header` | **dynamic ✅** |
| F1 | MZ `e_sp` | `_render_mz_header` | literal (waiver) |
| F2 | overlay `o_csize`, `o_entry` | `_render_ovr_header` | **dynamic ✅** |
| F2 | overlay `o_dsize`, `o_bss` | `_render_ovr_header` | literal (host/runtime) |
| F3 | `cseg_<f>` / `data_<f>` / unreached `loc_*`/`leaf_*`/`io_*`/`dos_*`/`string_*`/`api_*` `equ` | `_build_source` | **dynamic ✅** (label in place) |
| F4 | `dseg_<o>`, `bss_<o>` `equ` | `_build_source` | **next phase (D1)** |
| F4 | `psp_<o>` `equ` | `_build_source` | **inert ✅** (D0) |
| F5 | `times <N> db 0` gap to `data_origin` | `_render_data_block` | **dynamic ✅** |
| F5 | trailing pads | `_render_data_block` | literal (unless an anchor exists) |
| F6 | numeric `dw 0x<value>` inside a `literal` table | `_inject_jump_tables` | **inert ✅** (D0; tagged) |
| F7 | unrecognized pointer words in data (numeric `dw` without the `literal` tag) | `_render_data_block` / `_inject_jump_tables` | **next phase (D4–D5)**; currently `f7=0` |
| F8 | MZ relocation-table offset word | `hdr[28:]` | **in scope** |
| F9 | unproven immediates (`_fmt_imm`) | `format.py` | waiver |
| F10 | `; 0x<F>` offset comments | `_render_records` | waiver (cosmetic) |

F3 and F5 are what actually break under the `nop` probe; F1/F2 must be fixed for
the resulting file to be loadable. F6 is inert; F8 is in scope; F4 + F7 are the
next phase.

---

## 5. Census classes and the inert set  ✅ DONE (D0, 2026-10-12)

`count_frozen_addrs` (`asm/lib/compare/records.py`) returns the per-taxonomy
counts (`f1`..`f7`) plus three gate classes:

| class | meaning | gate |
|-------|---------|------|
| `code_shift` | breaks when code (before it) resizes — F1/F2 sizes, F3, F5 | **must reach 0** |
| `data_shift` | breaks when the data segment resizes — F4 `dseg_`/`bss_`, F7 | **must reach 0** |
| `inert` | can never change — `psp_*`, `external_data`, literal data tables (F6) | **excluded** |

`total` is the **gated** sum (`code_shift + data_shift`); `inert` is reported but
not counted against the goal.

**The F6 marker.** A literal data table and an unresolved pointer word render
identically (`dw 0x…. ; 0x<slot>`). Deliberate literal data now carries a
trailing `; literal` tag so the text census can tell them apart:

```nasm
jumptable_1698:
    dw 0x001c                                  ; 0x1698 ; literal
```

A numeric `dw` line **with** the tag is `f6`/`inert`; a numeric `dw` line
**without** it is `f7`/`data_shift` (an unresolved pointer word). Today `f7=0`
because every current table word is a deliberate literal table.

**What D0 changed (files):**

- `asm/lib/compare/records.py` — three-class `count_frozen_addrs`;
  `_FROZEN_LITERAL_WORD_RE`; split of `dseg_`/`bss_` (data) vs `psp_` (inert);
  `bios_data_*`/`external_*` (inert).
- `asm/lib/compare/jumptables.py` — `_jump_table_record` now carries the
  `literal` flag through to rendering.
- `asm/lib/compare/render.py` — literal jump-table words are tagged `; literal`.
- `asm/lib/report.py` — summary now exposes `code_shift`/`data_shift`/`inert`;
  `code_shift`/`data_shift` added to `GOOD_DOWN`.
- `asm/lib/tests/test_dynamic_addrs.py` — new `BASELINE_TOTALS` schema and a
  literal-vs-pointer classification test. (`f4` is now `dseg_`+`bss_` only;
  `psp_` moved to `inert`.)
- Tree regenerated: 241 literal words tagged.

**Residual waivers still inside `code_shift`** (deliberately, per the plan's
explicit inert list): `e_sp` ×2, `o_bss` ×13, and the ega/vga code pads (F5).
These are the reason `code_shift` is 152 rather than 0; resolving them is out of
D0's scope and tracked here for later.

---

## 6. Prior art (what the field actually does)

Reference copies live in `asm/tools/reference/` (git-ignored; see its README).
None of it is a dependency.

- **ddisasm / Datalog Disassembly** (GrammaTech, USENIX Security 2020) —
  reassembleable assembly whose symbolic information enables "adjustment of code
  and data pointers to accommodate rewriting": the same goal as this project.
  Its published Souffle rules are the concrete algorithm to follow
  (`symbolization.dl`, `pointer_reattribution.dl`, `data_access_analysis.dl`).
- **Ramblr** (NDSS 2017) and **Uroboros** — reassembleable x86 disassembly; its
  recognized data types are pointer arrays, integer sequences, jump tables,
  strings.
- **Value Set Analysis (VSA)** — Balakrishnan & Reps, *Analyzing Memory Accesses
  in x86 Executables*, CC 2004. The classical "address or integer" answer: track
  address-valued and integer-valued quantities simultaneously (strided
  intervals).
- **BinPointer** (CC 2022), **BinDSA** (2025), **Formally Verified Binary-level
  Pointer Analysis** (2025) — modern interprocedural binary pointer analysis.

**The take-away that shapes this plan:** the field does *not* decide from the
value alone. It collects **candidates** and **scores independent evidence**,
then accepts past a threshold. ddisasm gives each candidate a baseline of −2 and
adds/subtracts weighted points, accepting at a total ≥ 0. We adopt that model.

---

## 7. What already exists in this repo (reuse, don't rebuild)

| signal | where | what it gives |
|--------|-------|---------------|
| known addresses | `known_addrs` = `label_map` ∪ `code_targets` ∪ `local_labels` (`lib/compare/verify.py`) | offsets already believed to be addresses |
| table heuristic | `_detect_jump_table` (`lib/compare/detect.py`) | ≥3 consecutive in-range known addresses ⇒ jump table |
| space resolution | `SegmentFlow.effective_segment`, `operand_space_counts` (`lib/segdataflow.py`) | CS/`LOAD` vs DS/`DATA` vs PSP for a memory operand |
| consumption proof | `immediate_pointer_spaces` (`lib/segdataflow.py`) | an imm later used as a memory base — proves it is an address |
| dispatcher link | `_rewrite_jump_dispatchers` (`lib/compare/jumptables.py`) | binds an indirect `jmp/call` to its table |
| struct/array recovery | `lib/struct_analysis.py` | infers `[reg+disp]` field/array layouts from code |
| sidecar | `asm/sidecar/<project>.json` via `lib/sidecar` | `jump_tables`, `force_data`, `external_data`, `immediate_labels`, `dispatch_table` |
| relocation table | `_parse_mz_relocs` (`lib/compare/verify.py`) | exact file offsets of segment words needing fix-up |
| cross-binary refs | `cross_ref.detect` (`lib/cross_ref.py`) | targets shared between binary images |
| re-encode check | `micro_assemble` (`lib/verify/assemble.py`) | round-trip a candidate line to its original bytes |
| data anchors | `__zdataseg_start` / `__zimage_end` / `__zdataseg_para` (`lib/compare/render.py`) | the labels DS-offset expressions will hang off (D1) |

The jump-table path already does most of what F7 needs for CS/`LOAD` tables; F7
is the *stray* word — a pointer that is not part of a recognised code table.

> **Static analysis first, and last.** Everything in Sections 8–11 and 13–14 is
> static; that is the whole plan. A dynamic "run the code" confirmation tier
> exists only as a **last resort** (Section 12), reached only if the backlog
> justifies it.

---

## 8. The model: candidates + weighted evidence

**Candidate.** A word `W` at data offset `P` (16-bit, aligned, `W != 0`) whose
value maps into a loaded space:

- CS/`LOAD`: file offset `start_offset + W` is inside the code image;
- DS/`DATA`: `data_origin + W` is inside the initialised data or BSS;
- and (stronger) the target is in `known_addrs` / already labelled.

Every candidate starts with a **baseline of −2**. Evidence adds or subtracts
points; accept at a **total ≥ 0** — *subject to the anchor rule below*.

### 8.1 Anchor rule (precision guard)

The small +2 terms can otherwise sum to acceptance on coincidence (baseline −2,
`aligned +2`, `target is a known label +2` ⇒ +2 ≥ 0), which floods false
positives in a 64 KB image full of labels. Therefore:

> **Promotion requires at least one strong anchor** — relocation (+10),
> pointer-sized access (+5), or a ≥3 array run (+3). The small terms (+2/+2/+4)
> only break ties; they never promote by themselves.

### 8.2 Weights

**Positive evidence**

| evidence | ~weight | source in this repo |
|----------|--------:|---------------------|
| relocation points here | +10 (strong) | `_parse_mz_relocs` (authoritative) |
| read by code at pointer size | +5 (strong) | `segdataflow` operand sizes / `data_access_analysis` analogue |
| part of a ≥3 evenly-spaced run | +3 (strong) | `_detect_jump_table` |
| pointed to by such a run | +2 | as above |
| aligned | +2 | trivial |
| target is a known label / block start | +2 | `known_addrs` |
| target is a symbol/array boundary | +4 | `struct_analysis` |

**Negative evidence**

| evidence | ~weight | why |
|----------|--------:|-----|
| overlapping another candidate | −2 | resolve by score (keep the higher) |
| value is a bitmask (≥20 trailing zero bits) | −2 | ddisasm's empirical cut |
| sits inside a run of printable ASCII | −2/−1 | string, not pointers |
| points into an inert resource region | −1 | see Section 11 |
| read by code at a size ≠ pointer size | large − | "almost certainly not a pointer" |

**Resolution.** When candidates overlap, keep the higher total and discard the
rest (ddisasm's `discarded_data_object`). Weights are starting values; the
sidecar corpus (Section 14) is the calibration set, and only the **sign of the
total** is load-bearing.

Mapping the old tiers: E0 assertion and E1 consumption become the +10/+5 terms;
E2 array is +3; E3 value-membership/aligned are the small +2s; E4 range alone
(baseline −2) never passes.

---

## 9. Structural cases a pure value test misses

- **Relative pointers** — tables of `(Symbol2 − Symbol1)·Scale + Offset`
  (self-relative jump tables and PIC-style references). Their values are small
  differences, not in-range addresses. Model separately, as
  `relative_jump_tables.dl` does, and render as `label2 - label1` expressions.
- **Symbol + constant** ("pointer reattribution") — a word may be `label + 4`,
  not `label`. Detect when the value lands in the *middle* of a known
  symbol/pointer and emit `label + offset`. See `pointer_reattribution.dl`.
- **Far pointers** — a `segment:offset` pair in data. The offset half moves
  (treat as a normal DS/CS pointer); the segment half is relocation-fixed and
  belongs to F8/`external_data`, never to F7.
- **Relocation targets are not offsets** — the MZ table patches segment words.
  Never classify a relocation target as an offset pointer; it is the "+10"
  evidence for a *nearby* structure at most.

---

## 10. Evidence sources (in implementation order)

Cheap and certain first; expensive and fuzzy last.

1. **Value + range + alignment membership** (Section 8 candidate) — pure data,
   no code analysis. Gives the candidate pool.
2. **Array/geometry** — the existing `_detect_jump_table` "≥3 evenly spaced"
   rule, extended to data-space runs.
3. **Static data-access size** — the strongest automatic signal (E1). Walk the
   decoded instructions, compute each memory operand's effective address and
   access size (`segdataflow` already resolves segments); a data location read
   at pointer size scores +5, read at another size scores a large negative. This
   is ddisasm's `preferred_data_access`, restricted to what we can resolve.
4. **Resource/header carving pre-pass** (Section 11) — classify large regions as
   inert before spending analysis on their words; also supplies the "inside a
   string/resource" negative.
5. **Sidecar assertions** (Section 14) — ground-truth corpus to calibrate weights
   and pin the negative direction.
6. **Dynamic confirmation** (Section 12) — *last resort only.*

---

## 11. Resource / data-header carving (pre-pass, not a decision)

Identify embedded resources and structured data so their words can be
deprioritised (or flagged), shrinking the unknown set. This is binwalk's model —
magic-signature scan plus entropy — but implemented with the standard library
rather than adding binwalk.

- Signature scan the known formats this game uses (`.VGA` palettes/bitmaps,
  `.PIC`, `.DBA`, `.HDR`, DBF-style tables, the structured data tail).
- Windowed **entropy**: high-entropy regions (compressed/encrypted) are very
  unlikely to hold pointers.
- `lib/struct_analysis.py` already infers struct/array layout from code; combine
  with the region map to label "typed data" versus "raw resource".

Caveat from the prior art: a resource region **can still contain a pointer**
(e.g. an offset table into a string pool). Carving therefore yields
"deprioritise / add a small negative", **not** "inert, skip". It is a scheduling
tool for the real analysis, and a candidate region label for review.

---

## 12. Synthetic execution ("run the code") — last resort, only if needed

**Do all of Sections 8–11 and 13–14 first.** This section is a *possibility*, not
a step. It is reached only when the static pass leaves a backlog of
`unproven_data_words` (Section 13) worth shrinking. If the static backlog is
small, skip this entirely.

Ordered by cost:

1. **Static data-access** (Section 10.3) — already in the plan; do it first.
2. **Targeted emulation of one accessor** — find the function that reads a table
   and emulate just that function (e.g. Unicorn), not the whole program.
3. **Instrumented whole-program run** — run the game under an emulator and log
   which data addresses are touched, and at what size.
4. **Symbolic/concolic** — ask a solver "is there a path that dereferences this
   word?" Expensive, per-word; rarely worth it here.

### 12.1 Design so it happens once and never repeats

Capture **once**, replay offline. What we need is not a chronological log (that
is gigabytes, and forces re-running) but the **set** of `(data-offset,
access-size, read/write)` observed. That set is bounded by the data-segment size
and is tiny:

```json
{ "binary": "ds", "region": "data",
  "accessed": [ {"off":"4822","size":2,"rw":"r"},
                {"off":"4a10","size":1,"rw":"r"} ] }
```

Consequences:

- One run, one small artifact; all analysis is done against the recording.
- Because it is a **set**, running longer only ever *adds* rows — there is no
  reason to repeat a session, by construction. Default is **one** guided
  session; a second (e.g. loading a savegame) is strictly opt-in and only to
  close a specific, named gap.
- A short walk through the start screens / menus already exercises the most
  table-heavy code (fonts, palettes, option/menu tables), so a few minutes,
  once, is the right amount — no playthrough, no repetition.

Mapping and filtering: runtime `seg:off` → file offset via the known load bases
(CS: `start_offset`, DS: `data_origin`), filtered to the file-backed range below
the BSS boundary, so runtime state and variables do not pollute the set.

### 12.2 Where it would plug in

Dynamic evidence feeds the same scorer (Section 8): a candidate read at pointer
size gains the +5 term, one read at a non-pointer size takes the large negative,
and a word written at runtime is treated as a variable, not a constant table.
The mechanism — extending `./debugger`, or an emulator's native memory-access
tracing — needs a short feasibility spike before commitment.

### 12.3 Limits

A dynamic pass is a **lower bound**: a pointer never dereferenced on the paths
you walk stays invisible, so the `unproven_data_words` backlog (Section 13)
remains the honest measure of coverage.

---

## 13. Decision procedure (final)

For each aligned 16-bit word `W` at data offset `P`, with image length `N`:

1. If the sidecar asserts a pointer at `P` → promote with the declared
   space/target (E0).
2. Else if the word is a **relative** entry (Section 9) → promote as
   `label2 − label1`.
3. Else if a **proven consumer** (Section 10.3) reaches `P` and uses it as an
   address → promote with the consumer's space.
4. Else if `P` is in a declared/detected table and `W` resolves in-space →
   promote (current `_inject_jump_tables` behaviour).
5. Else score the candidate (Section 8), requiring a strong anchor (8.1).
   Promote if accepted; otherwise keep it raw and, if it was a candidate, record
   it in **`unproven_data_words`** with its evidence and the targets it collided
   with.

Guards on every promotion: word alignment, `W != 0`, target in range, and a
`micro_assemble` round-trip that reproduces the original two bytes before the
line replaces the raw `dw`.

**`unproven_data_words` is a backlog, not a gate failure.** The gate is that
nothing in `code_shift`/`data_shift` is left frozen *by accident*; the backlog is
the honest count of real pointers we chose not to promote.

---

## 14. Ground truth: sidecar `data_pointers`

Add a per-binary `data_pointers` list plus an explicit negatives list (unknown
keys are already tolerated by `lib/sidecar`):

```json
"data_pointers": [
  { "offset": "4822", "space": "ds", "target": "dseg_0c6c",
    "note": "array of pointers at 0x4822, read by app_20f8" }
],
"not_pointers": [
  { "offset": "3140", "note": "palette data; value looks in-range but is a colour" }
]
```

- `offset` — where the word *lives* (file offset of the word).
- `space` — `ds`, `cs`, or `es` (external).
- `target` — optional symbolic target, for review only.

This is the calibration corpus. precision = promoted ∩ asserted / promoted;
recall = asserted ∩ promoted / asserted. The negatives pin the false-positive
direction: words marked `not_pointers` must stay literal. **Authorship:** the
agent derives candidates by inspection (cross-referencing the known jump tables,
`force_data` regions, and accessors); the user reviews.

---

## 15. Validation & acceptance bar

1. `make build && make verify DSAVANT` stays **18/18** (bytes unchanged at the
   original layout) — necessary, not sufficient (Section 3.1).
2. Unit test: every promoted word assembles back to its original two bytes
   (`micro_assemble` round-trip).
3. Unit test: words the sidecar marks `not_pointers` remain literal.
4. Edit property test (the real gate): extend `InsertBytePropertyTests` to two
   dimensions (insert/delete in code *and* data). After an edit,
   - promoted pointers follow (target byte-content preserved), and
   - non-pointers do **not** drift (their values are unchanged).
5. Report `promoted_pointers` and `unproven_data_words`. A promotion is accepted
   only when it is **100% precise** against the corpus, even at the cost of
   recall. Recall is *recorded*, not gated (the accepted backlog policy).

**Acceptance bar decision (this phase):** precision 100% + a small,
explicitly-listed backlog. The stricter alternative — `data_shift == 0` — is the
honest reading of the final goal and may require the dynamic tier (Section 12);
it is deferred, not dropped.

---

## 16. Dependencies

- **None new for the static plan (D1–D5).** All of it uses stdlib Python plus
  Capstone, already present.
- The prior-art files in `asm/tools/reference/` are read-only documents and are
  **not** dependencies (git-ignored).
- Optional, only if a later phase is pursued: **`unicorn`** (headless emulation)
  and/or **`binwalk`** (avoided by writing a small scanner, Section 11). If
  either is ever added it becomes a real dependency and must be recorded here.
- The `./debugger` harness is **not required**. If the last-resort dynamic tier
  (Section 12) is ever pursued, extending it is permitted; it is not a
  dependency of any static step.

---

## 17. Sequencing

```
D0  census classes + inert exclusion ................. ✅ DONE (2026-10-12)
D1  F4: data labels for dseg_/bss_ ................... ← NEXT
D2  region carving pre-pass (signatures + entropy + struct_analysis)
D3  sidecar data_pointers + not_pointers schema + seed corpus
D4  static candidate scorer (value/range/align + array + data-access-size
    + relocation), weighted, strong-anchor rule
D5  promote accepted; backlog the rest; wire round-trip + edit-property tests
D6  (LAST RESORT, only if the static backlog justifies it)
    dynamic confirmation (one capture, offline replay)
D7  extend to overlays and raw drivers
```

### D1 — F4 `dseg_`/`bss_` data labels (the next step)

**Why:** DS pointers cannot be *rendered* as expressions until the data symbols
move with the data segment. Today `dseg_<o>`/`bss_<o>` are frozen `equ 0x…`
values (the 1401-word `data_shift` bulk). D1 turns them into layout-independent
expressions. Candidate scoring (D4) does **not** depend on D1; only promotion
rendering does.

**What the names mean** (`lib/format.py`): `dseg_<o>` is a **file-backed
data-segment offset** (file offset `data_origin + o`); `bss_<o>` is a
data-segment offset **past the BSS boundary** (`bss_boundary`).

**Approach** (mirror Pass-1 Phase 3, which did this for code offsets):

- For each `dseg_<o>` `equ`, use `_ensure_global_label(records, binary_data,
  data_origin + o, name)` to place a label at the data byte (splitting a
  `data_block`), and drop the `equ`. Emit references so the **DS-relative value**
  is preserved under relocation, e.g. `label - __zdataseg_start` (the anchor
  already exists; overlays use the host's `__zdataseg_start`).
- For each `bss_<o>` `equ`, express it against the BSS boundary, e.g.
  `(__zimage_end - __zdataseg_start) + (o - bss_boundary)`; BSS is not
  file-backed, so no label can sit at the byte.
- `psp_<o>` stays a frozen `equ` — already classified `inert` (D0); do not touch.
- Guard each rewrite with `micro_assemble`; mid-instruction / unbound offsets
  fall back to the `equ` (waiver).
- **Confirm the exact DS-base expression** against `mem_symbols`/`format.py`
  before committing (open question, Section 18) — the operand must still
  assemble to the original bytes at the original layout.

**Definition of D1:** `data_shift` drops by the number of dseg_/bss_ words
converted; `make verify DSAVANT` 18/18; unit suite green; `BASELINE_TOTALS`
lowered accordingly.

**Ordering:** D2/D3 can run in parallel with D1. Keep `make build && make verify`
at 18/18 after every step.

---

## 18. Open questions

- **D1 DS-base expression.** Exactly how a `dseg_`/`bss_` reference must be
  written so it still assembles to the original bytes (starting point:
  `label - __zdataseg_start` for `dseg_`; BSS boundary expression for `bss_`).
- **E1 without full decompilation.** How far can `segdataflow` reach for a *table*
  load? May need to extend `immediate_pointer_spaces` to follow a memory read
  into an indirect `jmp/call` (the dispatcher link already exists for recognised
  tables).
- **Overlay DATA.** Overlay data offsets resolve against the *host* model, so a
  promoted DS word in an overlay must use the host's `__zdataseg_start`. Confirm
  the host anchor is in scope in every overlay source file.
- **Weight calibration.** ddisasm's weights are empirical. Treat ours as
  defaults and let the corpus set them; only the total's sign matters.
- **Alignment.** Tables may be byte-aligned; decide how to handle an odd word
  offset without misreading neighbouring bytes.
- **Recall cost.** Every real pointer left in `unproven_data_words` still fails
  the "arbitrary edits" bar — the bucket is the measure of that gap; do not hide
  it by promoting on weak evidence.

---

## 19. Definition of done

- **D0:** census split into `code_shift`/`data_shift`/`inert`; literal tables
  tagged; `make verify` 18/18; unit suite green. ✅
- **F7 (overall):**
  - `code_shift` and `data_shift` pointer words are either promoted or
    explicitly listed in `unproven_data_words`; none promoted on weak evidence
    (no strong anchor ⇒ not promoted).
  - `make build && make verify DSAVANT` is 18/18, unit suite green.
  - The edit property test (code *and* data) passes, including the no-drift
    check for non-pointers.
  - The sidecar corpus round-trips: precision 100%; recall recorded (not gated)
    as the remaining backlog.

---

## 20. References

Local copies (git-ignored, not dependencies): `asm/tools/reference/README.md`.

- ddisasm / Datalog Disassembly — <https://github.com/GrammaTech/ddisasm>
  (symbolization, pointer_reattribution, data_access_analysis, value_analysis,
  jump_tables, relative_jump_tables; AGPL-3.0, reference only).
- Ramblr, NDSS 2017 — <https://sefcom.asu.edu/publications/ramblr-making-reassembly-great-again-ndss2017.pdf>
- Balakrishnan & Reps, *Analyzing Memory Accesses in x86 Executables* (VSA),
  CC 2004 — <https://research.cs.wisc.edu/wpis/papers/cc04.pdf>
- BinDSA (2025) — <https://www.cs.ucr.edu/~heng/pubs/BinDSA.pdf>
- Formally Verified Binary-level Pointer Analysis, arXiv 2501.17766 —
  <https://arxiv.org/pdf/2501.17766>
- BinPointer, CCS 2022 (link only) —
  <https://www.cse.psu.edu/~gxt29/papers/BinPointerCC22.pdf>

---

## Appendix A — Comment convention

Whenever a literal is replaced by a formula, the original value is printed as a
**separate leading comment**, then the description, then the existing
`; 0x<offset>` comment (if the line has one) stays **last**:

```nasm
    dw (__zimage_end - $$) % 512 ; 0x0056 ; e_cblp: bytes in final 512-byte page (0 means full)
    dw ((__zimage_end - $$) + 511) // 512 ; 0x0088 ; e_cp: total 512-byte pages in the file
    dw __zdataseg_para           ; 0x0ff6 ; e_ss: initial stack segment, relative to load module
    times (__zdataseg_start - ($ - $$)) db 0 ; 0xaf0d
    dw (__zimage_end - __zcode_start) ; 0x93df ; o_csize: code size in bytes
```

Hex is fixed-width (`0x%04x`, bytes `0x%02x`) so the description column stays
aligned. F3 in-place labels carry no value comment — the label's address is the
include's `; 0x<offset>`. Literal data words carry a trailing `; literal` tag
(Section 5).

## Appendix B — Pass 1 design (F1/F2/F3/F5) — COMPLETE

The header's `e_ss` cannot divide a *forward* label (NASM: "division operator
may only be applied to scalar values"), so the paragraph value is defined at the
gap where `$` is known:

```nasm
; header, emitted at the top:
    dw (__zimage_end - $$) % 512 ; 0x0056 ; e_cblp: ...
    dw ((__zimage_end - $$) + 511) // 512 ; 0x0088 ; e_cp: ...
    dw __zdataseg_para           ; 0x0ff6 ; e_ss: ...
    dw 0xf198                    ; e_sp: ... (fixed)

; after the last code record:
%if ($ - $$) > ORIG                 ; ORIG = original data_origin
    align 16, db 0
    __zdataseg_para equ ($ - $$ - HEADER) / 16
%else
    times (ORIG - ($ - $$)) db 0
    __zdataseg_para equ (ORIG - HEADER) / 16
%endif
__zdataseg_start:
    ... data ...
__zimage_end:
```

Unchanged code reproduces the current bytes exactly; growth past `ORIG` slides
data to the next paragraph and tracks `e_ss`. `e_sp` needs no change because
SS == DS and data/BSS/stack are segment-relative.

**Phases (all done):**

- **Phase 0 — instrumentation:** `count_frozen_addrs` + baseline test. (Extended
  by D0 into the three-class census.)
- **Phase 1 — F5:** dynamic code→data anchor (`%if … __zdataseg_para … %endif`,
  `__zdataseg_start:`, `__zimage_end:`).
- **Phase 2 — F1:** MZ `e_cblp`/`e_cp` from `__zimage_end`; `e_ss` from
  `__zdataseg_para`; `e_sp` literal.
- **Phase 3 — F3:** generalize `_ensure_jump_case_label` into
  `_ensure_global_label`; for every `cseg_`/`data_`/unreached `loc_*`/… `equ`,
  place a label at the target offset and drop the `equ` (guarded by
  `micro_assemble`).
- **Phase 4 — F2:** `o_csize → (__zimage_end - __zcode_start)`; `o_entry` from the
  entry symbol; `o_dsize`/`o_bss` literal; `__zcode_start:` after the 14-byte
  header.

**Outcome (2026-10-11):** `make verify DSAVANT` 18/18; unit suite 154 OK
(168 after D0's added tests). Insert-byte property on real `ds`:

- `nop` within the gap → length, `e_cblp`, `e_cp`, `e_ss` correct; data
  byte-identical and unmoved.
- 45000-byte insert overflowing the gap → data relocates to an aligned origin,
  `e_ss` tracks it, header length fields agree, data byte-identical.

## Appendix C — Waivers (kept literal, enumerated by the metric)

- `e_sp` — stack reserve size, segment-relative.
- Overlay `o_dorg`/`o_bss` — host data origin / uninitialized size.
- `bios_data_0410` and any `external_data` field — fixed external segment
  (now counted `inert`, Section 5).
- PSP fields not in `PSP_FIELDS` (now counted `inert`).
- Unproven immediates (F9).
- Raw-driver `data_*` (`ega`/`play`/`vga`) — DS established at run time.
- Pure data words in lookup tables that are not addresses.
- `; 0x<F>` comments (F10) — documentation only.
