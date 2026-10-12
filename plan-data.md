# Plan: data pointers (F7) — telling pointers from numbers

Working plan, to be done **before** the F4/F7 implementation in `plan.md`
(Section 10).  It exists because this is the one part of the dynamic-address
work that is not mechanical: everything else is a known label/expression
rewrite, while this is a *judgement* about the meaning of a word.

The approach is not invented here.  It follows the way the field solves this
exactly (see §2) and adapts it to a 16-bit real-mode MZ image, which is a
*easier* setting than the binaries that prior art targets: no position-
independent code, no ASLR, and an authoritative relocation table.

## 1. The problem

A 16-bit word sitting in a data block may be:

- a **code pointer** (a load-image offset — CS/`LOAD` space),
- a **data pointer** (an offset into the data segment — DS/`DATA` space),
- the **offset half of a far pointer** (a `segment:offset` pair; the segment
  half is relocation-fixed, the offset half must move),
- a **segment word** (fixed up by the MZ relocation table — not an offset),
- or just a **number** (a count, a bitmask, a lookup value).

Only offsets that name a location should move when the image moves.  If we
leave a real pointer frozen, an edit silently breaks it.  If we promote a plain
number into a pointer expression, an edit silently breaks *it*.  Both are bugs;
the second is the one we can accidentally introduce.

### 1.1 Why `make verify` cannot guard this

`make verify` rebuilds the generated tree and compares it to the **original**
EXEs.  At the original layout, a correct promotion (`dw label - IMAGE_BASE`)
resolves to exactly the original number, so the rebuilt bytes are unchanged and
verify passes.  It passes just as happily for a *wrong* promotion, for the same
reason.

So a false pointer is **invisible to the 18/18 gate**.  It only shows up after
an edit, when the expression drifts but the number should have stayed put.
That is why this plan defines *positive evidence* for "this word is a pointer"
and validates it with an edit-property test (§11), not with `make verify`.

## 2. Prior art (what the field actually does)

Reference copies live in `asm/tools/reference/` (git-ignored; see its README).
None of it is a dependency.

- **ddisasm / Datalog Disassembly** (GrammaTech, USENIX Security 2020) —
  produces reassembleable assembly whose symbolic information enables
  "adjustment of code and data pointers to accommodate rewriting": the same
  goal as this project.  Its published Souffle rules are the concrete algorithm
  to follow (`symbolization.dl`, `pointer_reattribution.dl`,
  `data_access_analysis.dl`).
- **Ramblr** (NDSS 2017) and **Uroboros** — reassembleable disassembly for x86
  with explicit "pointer safety checks; the data types it recognizes are exactly
  these buckets: pointer arrays, sequences of integers, jump tables, strings.
- **Value Set Analysis (VSA)** — Balakrishnan & Reps, *Analyzing Memory
  Accesses in x86 Executables*, CC 2004.  The classical answer to
  "address or integer": track **address-valued and integer-valued quantities
  simultaneously** (strided intervals).  The theory behind the practical rules.
- **BinPointer** (CC 2022), **BinDSA** (2025), **Formally Verified Binary-level
  Pointer Analysis** (2025) — modern interprocedural binary pointer analysis;
  useful for the precision/soundness framing.

**The take-away that shapes this plan:** the field does *not* decide from the
value alone.  It collects **candidates** and **scores independent evidence**,
then accepts past a threshold.  ddisasm, for example, gives each candidate a
baseline of −2 and adds/subtracts weighted points, accepting at a total ≥ 0.
We adopt that model instead of hard yes/no tiers.

## 3. What already exists in this repo (reuse, don't rebuild)

| signal | where | what it gives |
|--------|-------|---------------|
| known addresses | `known_addrs` = `label_map` ∪ `code_targets` ∪ `local_labels` (`lib/compare/verify.py`) | offsets already believed to be addresses (`address_in_data` analogue) |
| table heuristic | `_detect_jump_table` (`lib/compare/detect.py`) | ≥3 consecutive in-range known addresses ⇒ jump table (the "pointer array" rule) |
| space resolution | `SegmentFlow.effective_segment`, `operand_space_counts` (`lib/segdataflow.py`) | CS/`LOAD` vs DS/`DATA` vs PSP for a memory operand |
| consumption proof | `immediate_pointer_spaces` (`lib/segdataflow.py`) | an imm later used as a memory base — proves it is an address |
| dispatcher link | `_rewrite_jump_dispatchers` (`lib/compare/jumptables.py`) | binds an indirect `jmp/call` to its table |
| struct/array recovery | `lib/struct_analysis.py` | infers `[reg+disp]` field/array layouts from code |
| sidecar | `asm/sidecar/<project>.json` via `lib/sidecar` | `jump_tables`, `force_data`, `external_data`, `immediate_labels`, `dispatch_table` |
| relocation table | `_parse_mz_relocs` (`lib/compare/verify.py`) | exact file offsets of segment words needing fix-up |
| cross-binary refs | `cross_ref.detect` (`lib/cross_ref.py`) | targets shared between binary images |
| re-encode check | `micro_assemble` (`lib/verify/assemble.py`) | round-trip a candidate line to its original bytes |

The jump-table path already does most of what F7 needs for CS/`LOAD` tables;
F7 is the *stray* word — a pointer that is not part of a recognised code table.

> **Static analysis first, and last.**  Everything in §4–§7 and §9–§10 is
> static; that is the whole plan.  A dynamic "run the code" confirmation tier
> exists only as a **last resort** for words the static pass cannot classify
> (§8), reached only if the backlog justifies it.  The home-made `./debugger`
> harness may be *extended* for that purpose if it is ever reached — but nothing
> here depends on it.

## 4. The model: candidates + weighted evidence

Replace the hard E0–E4 gates with ddisasm's model.

**Candidate.** A word `W` at data offset `P` (16-bit, aligned, `W != 0`) whose
value maps into a loaded space:

- CS/`LOAD`: file offset `start_offset + W` is inside the code image;
- DS/`DATA`: `data_origin + W` is inside the initialised data or BSS;
- and (stronger) the target is in `known_addrs` / already labelled.

Every candidate starts with a **baseline of −2** (ddisasm does this so weak
evidence alone cannot pass).  Evidence adds or subtracts points; accept at a
**total ≥ 0**.  This is exactly the precision-first policy of the old plan,
made explicit and tunable.

**Positive evidence**

| evidence | ~weight | source in this repo |
|----------|--------:|---------------------|
| relocation points here | +10 | `_parse_mz_relocs` (authoritative) |
| read by code at pointer size | +5 | `segdataflow` operand sizes / `data_access_analysis` analogue |
| part of a ≥3 evenly-spaced run | +3 | `_detect_jump_table` |
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
| points into an inert resource region | −1 | see §6 |
| read by code at a size ≠ pointer size | large − | "almost certainly not a pointer" |

**Resolution.** When candidates overlap, keep the higher total and discard the
rest (ddisasm's `discarded_data_object`).  Weights are starting values; the
sidecar corpus (§10) is the calibration set, and only the **sign of the total**
is load-bearing.

Mapping the old tiers onto this: E0 assertion and E1 consumption become the
+10/+5 terms; E2 array is +3; E3 value-membership/aligned are the small +2s;
E4 range alone (baseline −2) never passes.  Nothing is promoted on weak
evidence, but a strong single signal (relocation, or pointer-sized access) can.

## 5. Structural cases a pure value test misses

These must be handled explicitly; the value-in-range test sees none of them.

- **Relative pointers** — tables of `(Symbol2 − Symbol1)·Scale + Offset`
  (self-relative jump tables and PIC-style references).  Their values are small
  differences, not in-range addresses.  Model separately, exactly as
  `relative_jump_tables.dl` does, and render as `label2 - label1` expressions.
- **Symbol + constant** ("pointer reattribution") — a word may be
  `label + 4`, not `label`.  Detect when the value lands in the *middle* of a
  known symbol/pointer and emit `label + offset`.  See
  `pointer_reattribution.dl`.
- **Far pointers** — a `segment:offset` pair in data.  The offset half moves
  (treat as a normal DS/CS pointer); the segment half is relocation-fixed and
  belongs to F8/`external_data`, never to F7.
- **Relocation targets are not offsets** — the MZ table patches segment words.
  Never classify a relocation target as an offset pointer; it is the "+10"
  evidence for a *nearby* structure at most.

## 6. Evidence sources (in implementation order)

Cheap and certain first; expensive and fuzzy last.

1. **Value + range + alignment membership** (§4 candidate) — pure data, no code
   analysis.  Gives the candidate pool.
2. **Array/geometry** — the existing `_detect_jump_table` "≥3 evenly spaced"
   rule, extended to data-space runs.
3. **Static data-access size** — the strongest automatic signal (E1).  Walk the
   decoded instructions, compute each memory operand's effective address and
   access size (`segdataflow` already resolves segments); a data location read
   at pointer size scores +5, read at another size scores a large negative.  This
   is ddisasm's `preferred_data_access`, restricted to what we can resolve.
4. **Resource/header carving pre-pass** (§7) — classify large regions as inert
   before spending analysis on their words; also supplies the "inside a string/
   resource" negative.
5. **Sidecar assertions** (§10) — ground-truth corpus to calibrate weights and to
   pin the negative direction.
6. **Dynamic confirmation** (§8) — *last resort only.*  Everything above is
   static; reach for this only if the static pass leaves a painful backlog.

## 7. Resource / data-header carving (pre-pass, not a decision)

Idea: before analysing words, identify embedded resources and structured data
so their words can be deprioritised (or at least flagged), shrinking the
unknown set.  This is binwalk's model — magic-signature scan plus entropy — but
we implement a small scanner with the standard library rather than adding
binwalk.

- Signature scan the known formats this game uses (`.VGA` palettes/bitmaps,
  `.PIC`, `.DBA`, `.HDR`, DBF-style tables, the structured data tail).
- Windowed **entropy**: high-entropy regions (compressed/encrypted) are very
  unlikely to hold pointers.
- `lib/struct_analysis.py` already infers struct/array layout from code; combine
  with the region map to label "typed data" versus "raw resource".

Caveat from the prior art: a resource region **can still contain a pointer**
(e.g. an offset table into a string pool).  Carving therefore yields
"deprioritise / add a small negative", **not** "inert, skip".  It is a
scheduling tool for the real analysis, and a candidate region label for review.

## 8. Synthetic execution ("run the code") — last resort, only if needed

**Do all of §4–§7 and §9 first.**  This section is a *possibility*, not a step.
It is reached only when the static pass leaves a backlog of
`unproven_data_words` (§9) worth shrinking.  If the static backlog is small,
skip this entirely.

The definitive form of the E1 signal is dynamic: run the program and observe
whether the word is ever used as an address.  Ordered by cost:

1. **Static data-access** (§6.3) — cheapest; gets most of the benefit.  Already
   in the plan; do it before considering anything dynamic.
2. **Targeted emulation of one accessor** — take a specific table, find the
   function that reads it (§6.3), and emulate just that function (e.g. Unicorn)
   instead of the whole program.  Narrow but precise.
3. **Instrumented whole-program run** — run the game under an emulator and log
   which data addresses are touched, and at what size.
4. **Symbolic/concolic** — ask a solver "is there a path that dereferences this
   word?"  Expensive, per-word; rarely worth it here.

### 8.1 Design so it happens once and never repeats

Capture **once**, replay offline.  What we need is not a chronological log (that
is gigabytes, and forces re-running) but the **set** of `(data-offset,
access-size, read/write)` observed.  That set is bounded by the data-segment
size and is tiny:

```json
{ "binary": "ds", "region": "data",
  "accessed": [ {"off":"4822","size":2,"rw":"r"},
                {"off":"4a10","size":1,"rw":"r"} ] }
```

Consequences:

- One run, one small artifact; all analysis is done against the recording.
- Because it is a **set**, running longer only ever *adds* rows — there is no
  reason to repeat a session, by construction.  Default is **one** guided
  session; a second (e.g. loading a savegame) is strictly opt-in and only to
  close a specific, named gap.
- A short walk through the start screens / menus already exercises the most
  table-heavy code (fonts, palettes, option/menu tables), so a few minutes,
  once, is the right amount — no playthrough, no repetition.

Mapping and filtering: runtime `seg:off` → file offset via the known load bases
(CS: `start_offset`, DS: `data_origin`), filtered to the file-backed range below
the BSS boundary, so runtime state and variables do not pollute the set.

### 8.2 Where it would plug in

If reached, dynamic evidence feeds the same scorer (§4): a candidate read at
pointer size gains the +5 term, one read at a non-pointer size takes the large
negative, and a word written at runtime is treated as a variable, not a
constant table.  The mechanism — extending `./debugger`, or an emulator's
native memory-access tracing — needs a short feasibility spike before
commitment; the plan's shape does not depend on which one wins.

### 8.3 Limits

A dynamic pass is a **lower bound**: a pointer never dereferenced on the paths
you walk stays invisible, so the `unproven_data_words` backlog (§9) remains the
honest measure of coverage.  This is the same limit as §6.3, just gathered by
execution instead of by reading the disassembly.

## 9. Decision procedure (final)

For each aligned 16-bit word `W` at data offset `P`, with image length `N`:

1. If the sidecar asserts a pointer at `P` → promote with the declared
   space/target (E0).
2. Else if the word is a **relative** entry (§5) → promote as `label2 − label1`.
3. Else if a **proven consumer** (§6.3) reaches `P` and uses it as an address →
   promote with the consumer's space.
4. Else if `P` is in a declared/detected table and `W` resolves in-space →
   promote (current `_inject_jump_tables` behaviour).
5. Else score the candidate (§4).  Promote if **total ≥ 0**; otherwise keep it
   raw and, if it was a candidate, record it in **`unproven_data_words`** with
   its evidence and the targets it collided with.

Guards on every promotion: word alignment, `W != 0`, target in range, and a
`micro_assemble` round-trip that reproduces the original two bytes before the
line replaces the raw `dw`.

**`unproven_data_words` is a backlog, not a gate failure.**  The gate is that
nothing in `code_shift`/`data_shift` is left frozen *by accident*; the backlog is
the honest count of real pointers we chose not to promote.

## 10. Ground truth: sidecar `data_pointers`

Add a per-binary `data_pointers` list (unknown keys are already tolerated by
`lib/sidecar`; validation is easy to extend):

```json
"data_pointers": [
  { "offset": "4822", "space": "ds", "target": "dseg_0c6c",
    "note": "array of pointers at 0x4822, read by app_20f8" }
]
```

- `offset` — where the word *lives* (file offset of the word).
- `space` — `ds`, `cs`, or `es` (external).
- `target` — optional symbolic target, for review only.

This gives a small, hand-checked corpus to **calibrate and measure** the scorer:
precision = promoted ∩ asserted / promoted; recall = asserted ∩ promoted /
asserted.  It also pins the negative direction — words the sidecar marks as
*not* pointers must stay literal.

## 11. Validation

Every step:

1. `make build && make verify DSAVANT` stays **18/18** (bytes unchanged at the
   original layout) — necessary, not sufficient (§1.1).
2. Unit test: every promoted word assembles back to its original two bytes
   (`micro_assemble` round-trip).
3. Unit test: words the sidecar marks non-pointer remain literal.
4. Edit property test (the real gate, from `plan.md` §10.4): after an
   insert/delete,
   - promoted pointers follow (target byte-content preserved), and
   - non-pointers do **not** drift (their values are unchanged).
5. Report `promoted_pointers` and `unproven_data_words`.  A promotion is
   accepted only when it is **100% precise** against the corpus, even at the
   cost of recall.

## 12. Dependencies

- **None new for the static plan (steps D0–D5).**  All of it uses stdlib Python
  plus Capstone, already present.
- The prior-art files in `asm/tools/reference/` are read-only documents and are
  **not** dependencies (git-ignored).
- Optional, only if a later phase is pursued: **`unicorn`** (Python) for fast
  headless emulation, and/or **`binwalk`** for its signature database (we plan
  to avoid binwalk by writing a small scanner, §7).  If either is ever added it
  becomes a real dependency and must be recorded here first.
- The `./debugger` harness is **not required** by this plan.  If the optional
  last-resort dynamic tier (§8) is ever pursued, extending it is permitted; it
  is not a dependency of any static step.

## 13. Sequencing

```
D0  census classes + inert exclusion            (plan.md §10.2)
D1  F4: data labels for dseg_/bss_              (plan.md §6 Phase 1/3, revised)
D2  region carving pre-pass (signatures+entropy + struct_analysis)   (§7)
D3  sidecar data_pointers schema + seed corpus   (§10)
D4  static candidate scorer: value/range/align + array + data-access-size
    + relocation, weighted, threshold ≥ 0        (§4, §6.1–6.3)
D5  promote accepted; backlog the rest; wire round-trip + edit-property tests
                                                 (§9, §11)
D6  (LAST RESORT, only if the static backlog justifies it)
    dynamic confirmation (one capture, offline replay)              (§8)
D7  extend to overlays and raw drivers
```

`D0` and `D2`/`D3` can start immediately.  `D1` must land before DS pointers can
be *rendered* as expressions (§5); candidate scoring (`D4`) does not depend on
`D1`.  Keep `make build && make verify` at 18/18 after every step.

## 14. Open questions

- **E1 without full decompilation.**  How far can `segdataflow` reach for a
  *table* load?  May need to extend `immediate_pointer_spaces` to follow a
  memory read into an indirect `jmp/call` (the dispatcher link already exists
  for recognised tables).
- **Overlay DATA.**  Overlay data offsets resolve against the *host* model, so a
  promoted DS word in an overlay must use the host's `__zdataseg_start`.  Confirm
  the host anchor is in scope in every overlay source file.
- **Weight calibration.**  ddisasm's weights are empirical.  Treat ours as
  defaults and let the corpus set them; only the total's sign matters.
- **Alignment.**  Tables may be byte-aligned; decide how to handle an odd word
  offset without misreading neighbouring bytes.
- **Recall cost.**  Every real pointer left in `unproven_data_words` still fails
  the "arbitrary edits" bar — the bucket is the measure of that gap; do not hide
  it by promoting on weak evidence.

## 15. Definition of done (F7)

- `code_shift` and `data_shift` pointer words are either promoted or explicitly
  listed in `unproven_data_words`; none are promoted on weak evidence alone
  (score < 0).
- `make build && make verify DSAVANT` is 18/18, and the unit suite is green.
- The edit property test (code *and* data) passes, including the no-drift check
  for non-pointers.
- The sidecar corpus round-trips: precision 100%, and recall is recorded (not
  gated) as the remaining backlog.

## 16. References

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
