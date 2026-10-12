# Plan: data pointers (F7) — telling pointers from numbers

Working plan, to be done **before** the F4/F7 implementation in `plan.md`
(Section 10).  It exists because this is the one part of the dynamic-address
work that is not mechanical: everything else is a known label/expression
rewrite, while this is a *guess* about the meaning of a word.

## 1. The problem

A 16-bit word sitting in a data block may be:

- a **code pointer** (a load-image offset — CS/`LOAD` space),
- a **data pointer** (an offset into the data segment — DS/`DATA` space),
- a **segment word** (fixed up by the MZ relocation table),
- or just a **number** (a count, a bitmask, a lookup value).

Only the first two should move when the image moves.  If we leave a real
pointer frozen, an edit silently breaks it.  If we promote a plain number into
a pointer expression, an edit silently breaks *it*.  Both are bugs; the second
is the one we can accidentally introduce.

### 1.1 Why `make verify` cannot guard this

`make verify` rebuilds the generated tree and compares it to the **original**
EXEs.  At the original layout, a correct promotion (`dw label - IMAGE_BASE`)
resolves to exactly the original number, so the rebuilt bytes are unchanged and
verify passes.  It passes just as happily for a *wrong* promotion, for the same
reason.

So a false pointer is **invisible to the 18/18 gate**.  It only shows up after
an edit, when the expression drifts but the number should have stayed put.
That is why this document's main job is to define *positive evidence* for
"this word is a pointer", rather than relying on the value looking plausible.

## 2. What already exists (reuse, don't rebuild)

| signal | where | what it gives |
|--------|-------|---------------|
| known addresses | `known_addrs` = `label_map` ∪ `code_targets` ∪ `local_labels` (`lib/compare/verify.py`) | the set of offsets we already believe are addresses |
| table heuristic | `_detect_jump_table` (`lib/compare/detect.py`) | ≥3 consecutive in-range known addresses ⇒ jump table |
| space resolution | `SegmentFlow.effective_segment`, `operand_space_counts` (`lib/segdataflow.py`) | CS/`LOAD` vs DS/`DATA` vs PSP for a memory operand |
| consumption proof | `immediate_pointer_spaces` (`lib/segdataflow.py`) | a `mov reg, imm` later used as a memory base — proves the imm is an address |
| dispatcher link | `_rewrite_jump_dispatchers` (`lib/compare/jumptables.py`) | binds an indirect `jmp/call` to its table |
| sidecar | `asm/sidecar/<project>.json` via `lib/sidecar` | `jump_tables`, `force_data`, `external_data`, `immediate_labels`, `dispatch_table` |
| relocation table | `_parse_mz_relocs` (`lib/compare/verify.py`) | the exact file offsets of segment words needing fix-up |
| cross-binary refs | `cross_ref.detect` (`lib/cross_ref.py`) | targets shared between binary images |
| re-encode check | `micro_assemble` (`lib/verify/assemble.py`) | round-trip a candidate line to its original bytes |

The jump-table path already does most of what F7 needs for the CS/`LOAD` case;
F7 is the *stray* word — a pointer that is not part of a recognised code table.

## 3. Evidence hierarchy

Confidence that a word is a pointer, strongest first:

- **E0 — assertion.** The sidecar says so (`data_pointers`, or a `jump_tables`
  entry whose geometry covers the word).  Ground truth; always promote.
- **E1 — consumption.** Code loads the word and uses the result as an address
  before redefining it.  This is `immediate_pointer_spaces` generalised from
  immediates to memory reads (`mov bx, [table+idx]` … `jmp cs:[bx]`).  The
  consumer fixes both the *space* (CS vs DS) and the fact that it is a pointer.
- **E2 — cluster/geometry.** A run of words that all resolve into one space
  (today's `_detect_jump_table`, needs ≥3).  Promote the resolving entries,
  leave the rest raw — the current `_inject_jump_tables` behaviour.
- **E3 — value membership.** The value maps to a known label/address, in range
  and word-aligned.  *Suggestive only*: a small integer collides by chance.
- **E4 — range only.** The value is within the image.  Not evidence.

### 3.1 Policy

Promote on **E0 and E1 only**.  E2 may promote when the table geometry is
declared (sidecar) or the run is long enough to essentially rule out chance; the
existing ≥3 rule is the floor and the count can be raised if precision demands.
**Never promote on E3/E4 alone.**

Words that look like pointers but reach neither E0/E1/E2 stay literal and are
recorded in a separate **`unproven_data_words`** bucket — a backlog to work
down, *not* a gate failure.  This keeps the "arbitrary edits still work" bar
honest: the metric is how few words sit in that bucket, and the gate is that
nothing in `code_shift`/`data_shift` is left there by accident.

## 4. Decision procedure (draft)

For each aligned 16-bit word `W` at data offset `P`, with image length `N`:

1. **E0** — sidecar `data_pointers[P]` (or covering `jump_tables`): promote with
   the declared space/target.
2. **E1** — a proven consumer's data-flow reaches `P` and uses it as an address:
   promote with the consumer's space.
3. **E2** — `P` is inside a declared/detected table and `W` resolves in-space:
   promote; else keep the word raw (current behaviour).
4. **otherwise** — keep raw.  If `W` is nonzero, in `[0, N)`, and E3 applies,
   record it as a candidate in `unproven_data_words` (with the collision
   targets) so the list can be reviewed.

Guards: word alignment, `W != 0`, target in range, and a `micro_assemble`
round-trip that reproduces the original two bytes before the line replaces the
raw `dw`.

## 5. Space → expression mapping

Once a word is proven a pointer, the expression follows the existing
conventions:

| space | file offset of target | rendered expression |
|-------|-----------------------|---------------------|
| CS / `LOAD`, MZ or driver | `start_offset + W` | `<label> - IMAGE_BASE` |
| CS / `LOAD`, overlay | `start_offset + (W - o_corg)` | `<label> - IMAGE_BASE + o_corg` |
| DS / `DATA` | `data_origin + W` | `<label> - __zdataseg_start` |

`<label>` must exist; reuse `_ensure_global_label` (`lib/compare/jumptables.py`)
to place it, splitting a data block if needed.  For **DS targets**, the label is
the same `__zdata_<off>` machinery F4 introduces — so F7's DS half depends on
F4.  The CS/`LOAD` half does not and can proceed in parallel.

## 6. Dependency and ordering with F4

```
D0  census classes + inert exclusion            (plan.md §10.2)
D1  F4: data labels for dseg_/bss_              (plan.md §6 Phase 1/3, revised)
D2  sidecar data_pointers schema + baseline corpus
D3  E1 consumption prototype on ds (one indirect dispatcher)
D4  promote E1+E2, backlog E3/E4, wire edit test
D5  extend to overlays and raw drivers
```

D1 must land before DS pointers can be promoted; D2/D3 can start immediately.

## 7. Ground truth: sidecar extension

Add a per-binary `data_pointers` list (unknown keys are already tolerated by
`lib/sidecar`, and validation is easy to extend):

```json
"data_pointers": [
  { "offset": "4822", "space": "ds", "target": "dseg_0c6c",
    "note": "array of pointers at 0x4822, read by app_20f8" }
]
```

- `offset` — where the word *lives* (file offset of the word).
- `space` — `ds`, `cs`, or `es` (external).
- `target` — optional symbolic target, for review only.

This gives us a small, hand-checked corpus to **measure** the heuristic
against: precision = promoted ∩ asserted / promoted; recall = asserted ∩
promoted / asserted.  It also lets us assert the negative direction — words the
sidecar marks as *not* pointers must stay literal.

## 8. Validation

Every step:

1. `make build && make verify DSAVANT` stays **18/18** (bytes unchanged at the
   original layout) — necessary, not sufficient.
2. Unit test: every promoted word assembles back to its original two bytes
   (`micro_assemble` round-trip).
3. Unit test: words the sidecar marks non-pointer remain literal.
4. Edit property test: after an insert/delete,
   - promoted pointers follow (target byte-content preserved), and
   - non-pointers do **not** drift (their values are unchanged).
5. Report `promoted_pointers` and `unproven_data_words`; a promotion is only
   accepted when it is 100% precise against the corpus, even at the cost of
   recall.

## 9. Open questions

- **E1 without decompilation.** How far can `segdataflow` reach for a *table*
  load without a full data-flow engine?  May need to extend
  `immediate_pointer_spaces` to follow a memory read into an indirect `jmp/call`
  (the dispatcher link already exists for recognised tables).
- **Overlay DATA.** Overlay data offsets resolve against the *host* model, so a
  promoted DS word in an overlay must use the host's `__zdataseg_start`.  Confirm
  the host anchor is in scope in every overlay source file.
- **Segment words vs offsets.** The MZ relocation table patches *segment* words,
  not offsets.  Make sure the F7 detector never treats a relocation target as a
  pointer (those are handled by F8 / `external_data`).
- **Alignment.** Tables may be byte-aligned; decide how to handle an odd word
  offset without misreading neighbouring bytes.
- **Recall cost.** Every real pointer left in `unproven_data_words` still fails
  the "arbitrary edits" bar.  The bucket is the honest measure of that gap — do
  not hide it by promoting on weak evidence.

## 10. Definition of done (F7)

- `code_shift` and `data_shift` pointer words are either promoted or explicitly
  listed in `unproven_data_words`; none are promoted on E3/E4 alone.
- `make build && make verify DSAVANT` is 18/18, and the unit suite is green.
- The edit property test (code *and* data) passes, including the no-drift check
  for non-pointers.
- The sidecar corpus round-trips: precision 100%, and recall is recorded (not
  gated) as the remaining backlog.
