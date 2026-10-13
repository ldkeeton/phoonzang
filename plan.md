# Plan: layout-independent `asm_DSAVANT` (dynamic addresses + data pointers)

**This is the single plan.** It merges the former `plan-data.md` (F7 data-pointer
detection) into the original dynamic-address plan. It is written so a *fresh
context* can pick up at **D7.0d** (D7.0a–c done) without re-deriving anything.

Plain-language goal: a user may add or remove bytes anywhere in the generated
assembler and it must **still assemble into a working EXE**. The only tolerated
differences are the semantically-equivalent encodings the verifier already
accepts.

---

## 0. Status at a glance (read this first)

### 0.1 Done — and what it actually changed

Every step since the census baseline, with its *emitted-source* and *census*
impact. This is the honest ledger (Section 21): most of the campaign's churn
lives in `asm/lib`, not in the generated assembly.

| step | emitted source | census delta |
|------|----------------|-------------:|
| Pass 1 — F1/F2/F3/F5 | MZ headers + gap + `equ` → label | (defines the baseline) |
| D0 — census classes + inert | **none** (classification only) | 0 |
| D1 — F4 `dseg_`/`bss_` labels (MZ) | ~195 `equ` lines in `ds.asm`/`vinstall.asm` | **−170** |
| D2 — region carving | **none** (pure pre-pass) | 0 |
| D3 — sidecar corpus | **none** (corpus only) | 0 |
| D4 — static scorer | **none** (pure analysis) | 0 |
| D5 — promotion | 25 data words in the same two files | 0 (invisible to the census) |
| D7.0a — shared-geometry counters | **7 `; dssize` tags** in 3 files | **+33** (one-time re-baseline †) |
| D7.0b — bind the DS-size immediates | 7 immediates → `__zdataseg_end`; 2 `equ` lines per MZ image | **−7** |
| D7.0c — pre-NASM link step | 13 `o_dorg` → `__zdataseg_end`; 13 overlays `%include` the `.cache` values file; `inc/labels` + `inc/spans` → `.cache` | **−13** |

† D7.0a did not *create* 33 new problems — it made 33 already-frozen values
**visible**. A host EXE and its overlays share one data segment: every overlay's
`o_dorg` field **is** the host's DS size, and the host's CRT startup and overlay
loader hard-code that same size as a plain immediate. The census counted none of
them (`_FROZEN_OVR_FIELD_RE` matched only `o_csize`/`o_dsize`/`o_bss`/`o_entry`),
so the previous 1383 was an under-count, not a target. See §0.2 and Section 17.

D1 is the step that moved the metric before D7; **D7.0b is the first D7 step to
lower it**. D5's 25 words are real correctness work — they are `db` bytes that
drift when the data segment resizes — but `count_frozen_addrs` cannot see them,
so the count does not move (Section 18). The detail of each step is in Section
17.

### 0.2 Remaining — all of it is D7

**Current census** on the regenerated tree (a `make build` fixed point):

| class | value | meaning |
|-------|------:|---------|
| `code_shift` | 165 | breaks when code resizes — **must reach 0** (15 of them are reclassified `inert`, D7.3) |
| `data_shift` | 1231 | breaks when data resizes — **must reach 0** |
| `inert` | 248 | can never change — **excluded** |
| `total` (gated) | 1396 | `code_shift + data_shift` |

Per-taxonomy breakdown: `f1=2 f2=13 f3=134 f4=1231 f5=3 f6=241 f7=0`, plus the
shared-geometry buckets: `o_corg=13 o_dorg=0 ds_size_imm=0` (D7.0b bound the 7
DS-size immediates and D7.0c bound the 13 `o_dorg`, so both buckets are empty).

Where the 1396 live, per emitted file:

| binary | gated | of which F4 (`dseg_`/`bss_` `equ`) |
|--------|------:|-----------------------------------:|
| `ds.asm` | 2 | 0 |
| `vinstall.asm` | 3 | 0 |
| `vbase` | 228 | 218 |
| `vmnpc` | 164 | 160 |
| `vmaze` | 142 | 136 |
| `vpcvw` | 114 | 97 |
| `vtrea` | 103 | 95 |
| `vdopt` | 86 | 83 |
| `vmexe` | 85 | 79 |
| `vmext` | 78 | 75 |
| `vinit` | 67 | 65 |
| `vmele` | 66 | 64 |
| `vpcmk` / `vpclv` / `vpops` | 65 / 60 / 45 | 58 / 57 / 43 |
| `vga` / `play` / `ega` (+ subfiles) | 35 / 34 / 19 | 0 / 0 / 1 |

**1391 of the 1396 are in the overlays and drivers**; the two MZ images that
D1–D5 worked on contribute 5. `data_shift` is now exactly the 13 overlays' F4
`equ` lines (1231) — the 13 `o_dorg` fields are bound (D7.0c), so they no longer
count. `code_shift` decomposes as overlay F3 `equ` (134) + overlay `o_bss` (13) +
MZ `e_sp` (2) + overlay zero pads (3) + overlay `o_corg` (13) = 165; the host
DS-size immediates are now bound (D7.0b), and the 15 `o_bss`/`e_sp` values are
declared waivers (Appendix C) that are nevertheless *counted* today — D7.3
reconciles that. Two of the `vinstall` "data" words (`0x2e`/`0x30`) are still
inert PSP slots mis-bound as `dseg_` (Section 5d); that is a naming bug that
does not move the census.

*(The per-step "Outcome" figures below D1/D5, e.g. `total 1383`, predate D7.0a
and describe the state at that step, not today's.)*

*(**D7.0c done:** the 13 `o_dorg` origins are **link-resolved**.  The pre-NASM
link step probes the freshly assembled host and writes `__zdataseg_end` to
`.cache/<project>/labels/host_values.inc`, which every overlay now `%include` by
name.  The 769 host-resident overlay `equ`s move the same way in D7.1.)*

### 0.3 Not measured by any metric

- **F4 code immediates.** A DS address emitted as a bare number — e.g.
  `vinstall/leaf_loc_10a4.asm` does `mov ax, 0x1806` then `call loc_040f`. This
  is the same "moves under an edit" class as F7, and the census cannot see it
  at all. **D7.0a gave the host DS-size slice of this class a counter**
  (`ds_size_imm`), and **D7.0b bound those 7 immediates to `__zdataseg_end`**;
  the general DS-address immediate still has neither a counter nor a binding.
- **Odd-aligned pointer tables.** The scorer collects even offsets only.

**Rule:** no work starts on a class that has no counter (Section 21). F7
(§0.1) is the cautionary tale — correct work that the gate could not show.

### 0.4 Dropped / deferred

- **D6 — dynamic confirmation (one capture, offline replay): DROPPED.** It can
  only help F7, and F7's backlog is empty (100% precision, no real miss). It
  stays documented (Section 12) as the escape hatch if a future class needs it.
- **D7 — overlays and raw drivers: NEXT.** The only step that moves the gate.
  **D7.0c (the pre-NASM link step) is DONE**; **D7.0d (ELF/DWARF for overlays) is
  next**, then D7.1/D7.1b/D7.2 (the overlay F4/F3/`o_corg` bindings) move the
  gate.

**Gate, after every step:** `make verify DSAVANT` = **18/18**, unit suite green.

**Verification commands** (run from `asm/`):

```bash
python3 -m unittest discover -p 'test_*.py'
make build DSAVANT && make verify DSAVANT     # must print "DSAVANT: 18/18 passed"
```

The decrease guard lives in
`asm/lib/tests/test_dynamic_addrs.py::CommittedTreeBaselineTests`
(`BASELINE_TOTALS`); the census lives in `asm/lib/compare/records.py`
(`count_frozen_addrs`).

**Scope note:** the MZ images (`ds`, `vinstall`) are done (Pass 1 + D1 + D5, plus
the D7.0b DS-size binding). Overlays and raw drivers are D7 and own the entire
remaining census. `./debugger`
(the home-made 16-bit debug TSR) is *not* used by any static step; it may be
extended only if a future class needs the dynamic tier (Section 12).

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
- **Edit robustness is the real bar; the census is its proxy.** At the end both
  must hold: the census reaches **0** (§0.2, after D7.3) *and* the edit-property
  test passes (Section 15). The census alone is only a proxy for "how much is
  still hard-coded", and it cannot see the F4-immediate class at all (§0.3).
- **Every step declares its gate impact.** A step with impact 0 is allowed but
  must be labelled (§0.1, Sections 17 and 21); no work starts on a class with no
  counter (§0.3).
- **Acceptance requires a strong anchor** (Section 8): a candidate must have at
  least one of {relocation, pointer-sized access, consumption, ≥3 array run};
  the small +2 terms only break ties, they never promote on their own.
- **Backlog policy (this phase):** promote at 100% precision against the corpus;
  a small, explicitly-listed `unproven_data_words` backlog is accepted for now
  and driven down, rather than blocking on it.
- **Ground-truth corpus:** derive candidate `data_pointers` by inspection and
  have the user review; include explicit `not_pointers` negatives.
- **Scope order:** the two MZ images (`ds`, `vinstall`) are done; overlays and
  raw drivers are **D7, the next step** (§0.2). D6 (dynamic tier) is dropped
  (§0.4).

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
| F1 | MZ `e_sp` | `_render_mz_header` | literal (waiver) — **still counted in `code_shift` (f1=2); reclassified `inert` in D7.3** |
| F2 | overlay `o_csize`, `o_entry` | `_render_ovr_header` | **dynamic ✅** |
| F2 | overlay `o_dsize` | `_render_ovr_header` | **dynamic ✅** |
| F2 | overlay `o_bss` | `_render_ovr_header` | literal (host/runtime) — **still counted in `code_shift` (f2=13); reclassified `inert` in D7.3** |
| F2 | overlay `o_corg` | `_render_ovr_header` | literal (host code origin) — **counted as `o_corg` → `code_shift` since D7.0a; bind in D7.2** |
| F2 | overlay `o_dorg` | `_render_ovr_header` | literal — **it *is* the host DS size** — **counted as `o_dorg` → `data_shift` since D7.0a; bind in D7.1b** |
| F3 | `cseg_<f>` / `data_<f>` / unreached `loc_*`/`leaf_*`/`io_*`/`dos_*`/`string_*`/`api_*` `equ` | `_build_source` | **dynamic ✅** for the MZ images; **134 overlay `equ` lines remain (D7.2)** |
| F4 | `dseg_<o>`, `bss_<o>` `equ` (MZ images) | `_build_source` | **dynamic ✅** (D1; `f4=0`) |
| F4 | `dseg_<o>`, `bss_<o>` `equ` (overlays) | `_build_source` | **next phase (D7.1); 1231 lines** |
| F4 | `psp_<o>` `equ` | `_build_source` | **inert ✅** (D0) |
| F4 | host DS-size immediate (`0x9098` in `ds`, `0x2afe` in `vinstall`) | `_build_source` | **dynamic ✅ (D7.0b):** rewritten to `__zdataseg_end` (`ds_size_imm` 7 → 0); the `; dssize` tag remains the regression guard |
| F5 | `times <N> db 0` gap to `data_origin` | `_render_data_block` | **dynamic ✅** (MZ images); 3 overlay pads remain (D7.3) |
| F5 | trailing pads | `_render_data_block` | literal (unless an anchor exists) |
| F6 | numeric `dw 0x<value>` inside a `literal` table | `_inject_jump_tables` | **inert ✅** (D0; tagged) |
| F7 | unrecognized pointer words in data (numeric `dw` without the `literal` tag) | `_render_data_block` / `_inject_jump_tables` | **DONE for the MZ images (D4–D5); `f7=0`.** The remaining "moves under an edit" work is the *code-immediate* class — unmeasured (§0.3) |
| F8 | MZ relocation-table offset word | `hdr[28:]` | **in scope** |
| F9 | unproven immediates (`_fmt_imm`) | `format.py` | waiver |
| F10 | `; 0x<F>` offset comments | `_render_records` | waiver (cosmetic) |

F3 and F5 are what actually break under the `nop` probe; F1/F2 must be fixed for
the resulting file to be loadable. F6 is inert; F8 is in scope. F4 is done for
the MZ images (D1), and **D7.1** is the remaining 1231; F3 for the overlays is
**D7.2**. F7 is done for the MZ images; its only open extension is the
code-immediate class — D7.0b bound the host DS-size slice of it
(`__zdataseg_end`), while the general F4-immediate class still has no counter and
therefore no scheduled work (§0.3).

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

**Link-resolved values (D7.0c, done).** A number computed by the pre-NASM link
step from the *edited host* is not a hand-typed constant, so the gate does not
count it — it is **reported separately** (informational only).  The values live
in `.cache/<project>/labels/host_values.inc`; the sources carry only *names*
(e.g. the 13 overlay headers emit `dw __zdataseg_end`, whose value
`.cache/<project>/labels/host_values.inc` supplies).  This is how the 13
`o_dorg` origins left the gate honestly; the 769 host-resident `equ`s follow the
same route in D7.1 (§17 D7.0c).

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
These are the reason `code_shift` is not 0 (172 after D7.0a, of which 15 are
these waivers); resolving them is out of D0's scope. **Scheduled as D7.3**
(§17), which moves `e_sp`/`o_bss` to `inert` and settles the pads, so
`code_shift` can reach 0.

---

## 5b. Data-label binding  ✅ DONE (D1, 2026-10-12)

Both MZ images (`ds`, `vinstall`) now bind their data-segment operands to the
bytes they name instead of freezing the offset. `_build_source` (`render.py`)
splits the target `data_block` with `_ensure_global_label` and emits:

```nasm
dseg_0c6c equ __zdseg_0c6c - __zdataseg_start
bss_0cf6 equ (__zimage_end - __zdataseg_start)
bss_830c equ (__zimage_end - __zdataseg_start) + 0x7616
```

- `dseg_<o>` — a label `__zdseg_<o>` sits at file offset `data_origin + o`, so
  the symbol is the byte's DS offset relative to `__zdataseg_start`. It follows
  the byte when data is inserted before it (and stays put when only code grows).
- `bss_<o>` — BSS is not file-backed, so there is no byte to label. The symbol is
  the (dynamic) file-backed data size `__zimage_end - __zdataseg_start` plus its
  offset into BSS. This tracks both code growth (no change) and data growth
  (same variable, further into the segment).
- `psp_<o>`/`cseg_<o>` are untouched (PSP is fixed; code symbols are already
  labels or load offsets). Only the MZ branch anchors, so overlays are unaffected
  (D7).
- The operand text is unchanged (`mov ax, [dseg_0c6c]`); only the `equ` value is
  an expression, so `micro_assemble` still round-trips from its own literal
  prelude.
- **String anchor.** A reference that lands *strictly inside* a printable run is
  not treated as a data symbol: the label goes at the run's start and the symbol
  becomes `run_start - __zdataseg_start + delta`, so the literal stays whole
  instead of being sliced into hex fragments. This is a **rendering fix only** —
  such a reference is not really a data object (root cause in Section 5d). Only
  two references need it in the whole corpus (`vinstall` `push/pop word
  [0x2e]`/`[0x30]`, the Aztec `fexec` PSP saved-stack idiom, which sit inside
  `'1-VGA/MCGA (256 Color)'`):

  ```nasm
  dseg_002e equ __zstr_0025 - __zdataseg_start + 0x0009
  dseg_0030 equ __zstr_0025 - __zdataseg_start + 0x000b
  __zstr_0025:
      db '1-VGA/MCGA (256 Color)', 0
  ```

  (The run is bounded by NUL and Aztec `'$'` terminators, so a variable that
  merely *follows* a string — e.g. `dseg_2500`, the `call [dseg_2500]` thunk
  pointer — still gets an exact label.)

**Outcome:** `data_shift` 1401 → **1231**; `total` 1553 → **1383**. Every
`dseg_`/`bss_` in both MZ images converted (170 of 170; `ds` 97, `vinstall` 73),
zero fallbacks. The remaining 1231 are the overlays' host-data references (D7).
`make verify DSAVANT` **18/18**; unit suite green.

**Files:** `asm/lib/compare/render.py` (mem_equ emission + label binding),
`asm/lib/compare/regions.py` (the `string_run` helper shared with D2),
`asm/lib/tests/test_dynamic_addrs.py` (`DataSegmentLabelBindingTests`,
`DataStringAnchorTests`, `BASELINE_TOTALS`), regenerated `asm_DSAVANT/ds.asm`
and `asm_DSAVANT/vinstall.asm`.

---

## 5c. Region carving pre-pass  ✅ DONE (D2, 2026-10-12)

New module `asm/lib/compare/regions.py` carves a binary into gap-free,
non-overlapping `Region(start, end, kind, note)` tuples in **file-offset**
space. Detectors, highest precedence first: `code` → `typed` → `resource` →
`pointer_table` → `string` → `entropy` → `zero` → `data` (fallback). Overlaps
resolve by precedence; claims only *deprioritise* a word, never make it inert.

- `resource` — multi-byte `_FILE_FORMATS` magics (short signatures can't fire by
  chance); the marker extends to the next hit but `code` outranks it.
- `string` — printable runs (NUL/`'$'` terminated); also the D1 anchor source.
- `zero` — zero padding (≥8 bytes).
- `entropy` — windowed Shannon entropy ≥ 7.0 bit/byte (compressed/encrypted).
- `pointer_table` — runs of in-space words (predicate supplied by the caller;
  reserved for D4).
- `typed` — struct/array regions supplied by `struct_analysis`.
- `code` — bytes already classified as code by the pipeline (`emit_class`).

Wiring: `verify()` runs `carve` over the image (code ranges from `emit_class`)
and returns `regions`, `region_counts`, `region_deprioritised_bytes` in its
stats; `main/runner.py` surfaces them under `report['verify']`, and
`summarize()` exposes `region_deprioritised_bytes` as a KPI. Nothing in the
emitted source changes.

On `DS.EXE` the map is 131 regions — 22959 `data`, 45513 `zero` (the big
code→data gap), 734 `string` (menu/message text), no entropy or resources (the
game's `.VGA`/`.PIC`/`.HDR` assets are external files, not embedded).

**Files:** `asm/lib/compare/regions.py`, `asm/lib/tests/test_regions.py`
(13 tests), `asm/lib/compare/verify.py`, `asm/main/runner.py`,
`asm/lib/report.py`.

---

## 5d. Mid-string data references — root cause & handling  (finding, 2026-10-12)

D1 surfaced a real classification problem: `dseg_002e`/`dseg_0030` (`vinstall`)
are the only data operands in the corpus that land *strictly inside* a string,
and they are **not** data objects.

**Where they come from.** The Aztec C86 v5.2a runtime routine `fexec` (a named
signature in `lib/aztec_funcs.json`) does:

```nasm
push word ds:[0x30]        ; ff 36 30 00   (no segment override)
push word ds:[0x2e]        ; ff 36 2e 00
push ds
push es
mov word [cs:0x2a23], ss   ; save SS
mov word [cs:0x2a25], sp   ; save SP
...
int 0x21                   ; ah=4Bh EXEC (spawn)
...
pop  word ds:[0x2e]
pop  word ds:[0x30]
```

`0x2E`/`0x30` are the **PSP saved-SS:SP slots** — the offset `segments.py`
already names `psp_saved_stack`. Two independent facts show the operands are not
symbols:

1. **No relocation.** Parsing `asm/tools/aztec/obj/c/FEXEC.OBJ` (OMF): the
   module has one `FIXUPP` with 13 fixups, at data-record offsets `0x17 … 0x64`
   (the `[cs:…]` and `[dseg_230e …]` absolutes). The `push/pop [0x2e]/[0x30]`
   sit at `0x0a … 0x0e`, *before the first fixup* — the assembler wrote
   `0x2e`/`0x30` as **hardcoded absolute displacements**, not symbol references.
2. **Used nowhere else.** Those two words are only pushed and popped back (a net
   no-op); nothing else in the program touches them.

At runtime DS = DGROUP (`aztec_begin`: `mov bp,0x38e; mov ss,bp; …; mov ds,bp`),
so `ds:[0x2e]` is DGROUP:0x2e — byte 9 of the menu string
`'1-VGA/MCGA (256 Color)'`. The runtime *intends* the PSP pair; the numbers
coincide with string bytes, which is why D1 sliced the literal.

**Conclusion.** A memory operand only encodes `segment:disp`; treating `disp` as
a "data object" is an inference that fails when (a) the effective segment is not
the data segment (PSP/SS alias), (b) the displacement is a hardcoded absolute
rather than a relocatable symbol, or (c) it lands on printable bytes by
coincidence (~37% of byte values are printable). This is (a) + (b).

**Consequences for the plan**

- The D1 **string anchor is cosmetic** — it keeps the literal readable but still
  binds a symbol to a non-object. Keep it for rendering; do not read it as a
  correctness claim.
- **D4 negative (new):** a candidate whose *target* lands in a `string`/`resource`
  region is refused promotion (the automatic form of the rule above).
- **Fixed-DS displacement ⇒ inert (new):** an unrelocated absolute DS
  displacement that lands in a fixed-slot range (notably `0x2E`/`0x30`) is an
  inert PSP/fixed value, not `data_shift`. Today those 2 words are mis-bound and
  inflate `data_shift`; reclassifying them is a D4/D7 follow-up.
- **Open:** the `segdataflow` gap that lets a default-DS operand be named
  `dseg_` when its displacement carries no relocation (Section 18).

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
> pointer-sized access (+5), a proven consumer (+5), or a ≥3 array run (+3).
> The small terms (+2/+2) only break ties; they never promote by themselves.
> A **backlog entry** additionally requires evidence about an *access* (one of
> the anchors, or a word/table read): a target-shape hint alone is not listed,
> because in a 16-bit image an address is a small number (Section 8.2,
> "Omitted").

### 8.2 Weights

**Positive evidence**

| evidence | ~weight | source in this repo |
|----------|--------:|---------------------|
| relocation points here | +10 (strong) | `_parse_mz_relocs` (authoritative) |
| read by code at pointer size | +5 (strong) | `segdataflow` operand sizes / `data_access_analysis` analogue |
| loaded, then used as an address (E1) | +5 (strong) | `_consumed_reads` (D4) |
| part of a ≥3 evenly-spaced run | +3 (strong) | `_detect_jump_table` |
| pointed to by such a run | +2 | as above |
| aligned | +2 | trivial |
| target is a known label / block start | +2 | `known_addrs` |

**Negative evidence**

| evidence | ~weight | why |
|----------|--------:|-----|
| overlapping another candidate | −2 | resolve by score (keep the higher) |
| value is a bitmask (≥20 trailing zero bits) | −2 | ddisasm's empirical cut |
| sits inside a run of printable ASCII | −2/−1 | string, not pointers |
| points into an inert resource region | −1 | see Section 11 |
| read by code at a size ≠ pointer size | large − | "almost certainly not a pointer" |

> **Omitted: ddisasm's `point-to-boundary-sym` (+4).** In
> `tools/reference/ddisasm/symbolization.dl` this term fires only when the
> target is a **section boundary** (`loaded_section(Dest,_,_)` *and*
> `loaded_section(_,Dest,_)`) *and* a structural reason holds — a loop counting
> down, a loop-bound compare, a loop counter compared against the last section,
> or the end of a ≥3 pointer array (`pointer_reattribution.dl:587-680`).  A
> 16-bit MZ image has no fine sections and no such code analysis, so the cheap
> approximation "the target is the start of a carved region" fires on
> coincidence: the 902-byte unclassified blob at `vinstall 0x401b..0x43a1`
> produced **224** candidates and **10** region-start hits, nine of them the
> same repeated value `0x050d` (already a corpus negative) and the tenth
> `0x4374`.  We omit the term rather than weaken it; a pointer that really
> points at an object start is proven by an *access* anchor anyway.

> **Hard refusals (not just weights).** Two cases are *refused* regardless of
> score, because they are classification errors, not weak evidence (Section 5d):
>
> 1. **The word's *target* lands in a `string`/`resource` region** (D2 map) —
>    a pointer into the middle of a string literal is not a data object.
> 2. **The word itself is an unrelocated absolute DS displacement in a fixed-slot
>    range** (e.g. `0x2E`/`0x30`, the PSP saved-SS:SP slots) — it is inert, not
>    `data_shift`.
>
> Refused words go to `unproven_data_words` (or the inert set), never promoted.

**Implemented (D4)** in `asm/lib/compare/pointers.py`. Two weights are applied
narrower than the table above, forced by the corpus (details in Section 17,
D4): `pointer_access` becomes an anchor only for a **table** read
(`[bx+disp]`), not an absolute single-word read; and DATA space is bounded to
the file-backed segment (`value < bss_boundary`). The E1 **consumption** anchor
is the one exception to that bound: when the loaded word is *used as an
address* the consuming use proves the space, so a heap-base pointer past
`bss_boundary` is still promotable. The 16-bit "bitmask" cut is `>=8` trailing
zero bits. The `point-to-boundary-sym` term is **omitted** (Section 8.2), and a
candidate is only listed in the backlog when its evidence is about an *access*
(`_STRONG_HINTS`) or it is corpus-asserted (`_WEAK_HINTS` still score).

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

**Implemented (D2)** in `asm/lib/compare/regions.py` — see Section 5c for the
detectors, precedence and wiring. (The `.VGA`/`.PIC`/`.HDR` assets in this game
are external files loaded at runtime, so the signature scan finds nothing
embedded; the `zero`/`string` detectors carry the pruning here.)

---

## 12. Synthetic execution ("run the code") — D6, DROPPED  ❌

**Status: D6 is dropped (see §0.4).** Its only consumer was the F7 backlog,
which is empty (100% precision, no real miss), so the dynamic tier is not
scheduled. The design is kept below as the escape hatch if a future class (for
example the unmeasured F4-immediate class, §0.3) turns out to need it.

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

0. **Refuse first (Section 5d).** If the word's *target* lands **strictly
   inside** (not at the start of) a `string`/`resource` region, or the word is
   an unrelocated absolute DS displacement in a fixed-slot range → inert /
   `unproven_data_words`, never promoted. (A target that *is* the start of a
   string is a perfectly good pointer — every `char *` array points at one.)
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

**Implemented (D4/D5).** Step 0 and the scoring half of step 5 live in
`pointers.score_candidates`; steps 1–4 are the existing jump-table/immediate
paths; the emission half of step 5 is `promote.promote_data_pointers`, which
splices a symbolic ``dw`` for every accepted word -- and, via E0, for every
asserted one. The D4 report still classifies *every* candidate, so the backlog
and the precision/recall record survive as the coverage account (Section 15.5).

---

## 14. Ground truth: sidecar `data_pointers`  ✅ DONE (D3, 2026-10-12)

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
direction: a word marked `not_pointers` must never be emitted as a **data**
pointer (a `dseg_`/`bss_` symbol). It need not stay *literal* -- the three
reclassified jump-table words are emitted as `label - IMAGE_BASE` *code*
pointers by the jump-table path, which is correct. **Authorship:** the agent
derives candidates by inspection (cross-referencing the known jump tables,
`force_data` regions, and accessors); every entry is a hypothesis to be
re-verified against the bytes, not a fact.

**Implemented (D3).** The schema lives in `asm/lib/sidecar/__init__.py`
(`_validate_pointer_assertions`, `_pointer_assertions`, `_validate_corpus`;
`per_binary` exposes `data_pointers`/`not_pointers` with integer offsets). The
seed corpus is in `asm/sidecar/DSAVANT.json`; the derivation and review notes
are in Section 17 (D3). Tests:
`test_hard_classification.py::SidecarDataPointerCorpusTests` (schema) and
`test_dynamic_addrs.py::DataPointerCorpusTests` (each `target` is the word
actually stored at its `offset`; offsets lie in the **loaded image**, not only
the DS segment).

**Review pass (2026-10-12, after D4).** The 40-word backlog was reviewed case
by case against the byte neighbourhood, the target, the region map, and the
reading instruction. `data_pointers` grew to **27** (`vinstall`) and **1**
(`ds`); `not_pointers` to **26** (`vinstall`) and **12** (`ds`).

**Correction (2026-10-12, during D5).** Three of those positives were wrong and
are now **negatives** (Section 17, D5): `vinstall 0x113c`, `0x1b44`, `0x1b52`
are entries of the **jump tables** at `0x113a`/`0x1b3c`, not DS string pointers.
The dispatch is `cmp ax, N; jae; xchg bx, ax; shl bx, 1; jmp word [cs:bx+disp]`,
so the word is a CS code offset; each target is a case body that ends at the
dispatch's `jae` join. Their DS readings (`MON36.PIC`, `********`, `All Logos…`)
are numeric coincidences. The corpus is now `vinstall` **24 positives + 29
negatives**, `ds` **1 positive + 12 negatives`.

The remaining positives are all genuine DS `char *` arrays:

- `vinstall 0x3ae2` (graphics boards), `0x3b84` (sound cards), `0x3c34`
  (`NO`/`YES`), `0x3c40` (disk types) -- each read as a pointer
  (`push word [bx+0xa4]`, `push word [dseg_0004]`, …).
- `vinstall 0x3b78` (`ON`/`OFF`) -- the same construct as `0x3c34`, but no
  static reader was found; it is promoted by the corpus override only.
- `vinstall 0x5fb4`, `ds 0x10dd0` -- the Aztec **heap-base pointer**
  (`dseg_24d4` / `dseg_0c70`): read into `di` then `stosb es:[di]`, and advanced
  by the malloc/brk routines. The target (`0x2afe` / `0xb198`) lies past
  `bss_boundary`, so only the E1 consumption anchor reaches it (Section 18).

**Not asserted (deliberately).** `vinstall 0x4374` (`0x0914` -> DS `0x914` =
`WPCVW.OVR`) sits in an undecoded table whose neighbouring words are not
filename pointers, and none of the other overlay names in that pool is
referenced by a stored word; it stays a number rather than a positive. (It was
first surfaced only because a *region-start* target shape scored +4; that term
is now omitted — Section 8.2 — so it is no longer backlog material either.)

**Metric caveat (unchanged).** The strict precision/recall of this section is
now the **coverage** account of the scorer, not the acceptance gate: E0 promotes
every asserted word, so `promoted_pointers` (scorer) reports how much of the
corpus the *evidence* reaches, while `promoted_data_words` (emitted) is what
actually lands in the source. §15.5's hard gate is "no `not_pointers` word is
emitted as a data pointer, and every emitted word is inside the asserted set".

---

## 15. Validation & acceptance bar

1. `make build && make verify DSAVANT` stays **18/18** (bytes unchanged at the
   original layout) — necessary, not sufficient (Section 3.1). This is also the
   round-trip proof for every promotion.
2. Unit test: every promoted word assembles back to its original two bytes
   (`test_promote.py`; the synthetic image round-trips through `_build_source`
   and `nasm`).
3. Unit test: no word the sidecar marks `not_pointers` is emitted as a data
   pointer (`test_promote.py::CorpusPromotionPipelineTests`).
4. Edit property test (the real gate): `InsertBytePropertyTests` covers both
   dimensions -- insert in **code** (data relocates) and insert/delete in
   **data** (`vinstall`, where the promoted `char *` array must keep naming the
   same string bytes). Synthetic cases cover the word-behind-the-edit and the
   BSS-target cases.
5. Report `promoted_pointers` and `unproven_data_words`. A promotion is accepted
   only when it is **100% precise** against the corpus, even at the cost of
   recall. Recall is *recorded*, not gated (the accepted backlog policy).

**Acceptance bar decision:** precision 100% + a small, explicitly-listed
backlog, **plus** `data_shift == 0` as the final gate. The dynamic tier (Section
12) is **not** required for that: the whole remaining `data_shift` is overlay
`equ` lines (D7). D6 is dropped (§0.4).

**Where we stand (2026-10-12).** Met **for the two MZ images** (`ds`,
`vinstall`): 100% precision, a two-word backlog, both edit-property tests green,
and every hard-coded DS size now bound (D7.0b).
**Not met for the whole tree** — the 1404 remaining gated values are
overlays/drivers (D7), which have no bindings and no edit-property test. The
overall goal ("nothing that moves under an edit is still hard-coded") is
therefore **open**, and the gap is exactly D7 (§0.2).

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

Pass 1 and D0–D5 are complete, and D7 is under way (D7.0a–c done; D7.0d next).
**D7 is the only step that moves the census** (1391 of the 1396 gated values are
overlays/drivers). **D6 is dropped** (§0.4).

| step | meaning | status | gate impact |
|------|---------|--------|------------:|
| D0 | census classes + inert exclusion | ✅ DONE (2026-10-12) | 0 |
| D1 | F4: data labels for `dseg_`/`bss_` (MZ images) | ✅ DONE (2026-10-12) | **−170** |
| D2 | region carving pre-pass (signatures + entropy + `struct_analysis`) | ✅ DONE (2026-10-12) | 0 |
| D3 | sidecar `data_pointers`/`not_pointers` schema + corpus | ✅ DONE (2026-10-12) | 0 |
| D4 | static candidate scorer (weights + strong-anchor rule + 5d refusals) | ✅ DONE (2026-10-12) | 0 |
| D5 | promote accepted; backlog the rest; round-trip + edit-property tests | ✅ DONE (2026-10-12) | 0 |
| D6 | dynamic confirmation (one capture, offline replay) | ❌ **DROPPED** (§0.4) | (F7 only) |
| D7.0a | shared host/overlay geometry counters (`o_corg`/`o_dorg`/`ds_size_imm`) | ✅ DONE (2026-10-12) | **+33** (re-baseline) |
| D7.0b | bind the 7 DS-size immediates to `__zdataseg_end` | ✅ DONE (2026-10-12) | **−7** |
| D7.0c | pre-NASM link step: host values → `.cache`; `elf-rebuild` = full rebuild | ✅ DONE (2026-10-12) | **−13** (`o_dorg`) |
| D7.0d | ELF/DWARF for overlays + drivers (debug tooling) | ▶️ **NEXT** | 0 |
| D7 | overlays and raw drivers (incl. overlay `dseg_`/`bss_` + F3) | ▶️ after D7.0d | **−1396 (→ 0)** |

`gate impact` is the change in `code_shift + data_shift`; it is deliberately a
separate column so effort and effect cannot be confused (§0.1, Section 21).

### D1 — F4 `dseg_`/`bss_` data labels  ✅ DONE (2026-10-12)

**What it did.** `_build_source` (`render.py`) now binds every MZ data-segment
operand to the byte it names (details in Section 5b). `dseg_<o>` becomes
`__zdseg_<o> - __zdataseg_start` with a label placed at file offset
`data_origin + o`; `bss_<o>` becomes
`(__zimage_end - __zdataseg_start) + (o - bss_boundary)`. Only the MZ branch
(`is_mz and gap is not None`) anchors, so overlays are untouched until D7.

**Outcome.** `data_shift` 1401 → 1231, `total` → 1383; `ds` and `vinstall`
fully bound (170/170, no fallbacks); `make verify DSAVANT` 18/18; unit suite
green. Mid-string references are anchored to the string start (Section 5b), so
literals stay readable.

### D2 — region carving pre-pass  ✅ DONE (2026-10-12)

**What it did.** Added `asm/lib/compare/regions.py`: a pure pre-pass that
classifies a binary into gap-free regions (`code`, `typed`, `resource`,
`pointer_table`, `string`, `entropy`, `zero`, `data`) with a priority-ordered
overlap resolution. `verify()` runs it over the image and reports `regions`,
`region_counts`, `region_deprioritised_bytes`. See Section 5c.

**Outcome.** `DS.EXE` → 131 regions (22959 data / 45513 zero / 734 string);
no embedded resources (assets are external files). Emitted source unchanged;
`make verify DSAVANT` 18/18; unit suite 186 OK (13 new region tests).

### D3 — sidecar `data_pointers` corpus  ✅ DONE (2026-10-12)

**What it did.** Added the `data_pointers` / `not_pointers` schema to
`asm/lib/sidecar/__init__.py` (validated, normalized to integer offsets, and
exposed through `per_binary`; project-level entries are inherited per binary
like `force_data`). An offset asserted in *both* lists is rejected. Seeded
`asm/sidecar/DSAVANT.json` with the calibration corpus (Section 14).

**Outcome (current).** Corpus: `vinstall` **24 positives + 29 negatives**,
`ds` **1 positive + 12 negatives**. No emitted-source change; census unchanged
(`data_shift` 1231, `total` 1383); `make verify DSAVANT` 18/18.

*History.* D3 seeded `vinstall` 23+3 / `ds` 0+3; the post-D4 review of the
40-word backlog (byte neighbourhood + target + region kind + reading
instruction) grew it to 27+26 / 1+12; the D5 re-audit (Section 17, D5) moved
three jump-table words to `not_pointers`, giving today's 24+29 / 1+12. Every
entry is a hypothesis to be re-verified against the bytes, and the backlog is
now the recall account (asserted-but-unpromoted words) rather than noise.
`test_corpus_offsets_lie_in_the_loaded_image` replaces the old
data-segment-only bounds check.

**Notes for review (the seed is the ground truth to spot-check).**

- The `vinstall` positives are five `char *` tables, each a run of ascending
  near pointers immediately followed by the equal-length strings they name,
  and each confirmed read as a pointer (`push word [dseg_0004]`, or
  `push word [bx+0xa4]` / `[bx+0x154]` / `[bx+0x160]` into the print routine
  `loc_040f` in `vinstall/leaf_loc_10a4.asm`).
- The `ds` data segment has **no** pointer tables: it is numeric game tables
  (coordinates, indices, frame data) plus a string/filename pool referenced by
  *immediates* (`dseg_0b76` …), not by stored pointers. Its one pointer-like
  word — `les bx, word [dseg_0002]`, a far pointer to absolute `0000:046c`
  (the BIOS timer tick) — is recorded as a **negative** because its target is
  an external absolute that must not move (Section 9).
- Two negatives exercise the Section 5d rules directly: a mid-string word in
  `vinstall` (in-range but text) and the external far-pointer offset in `ds`.

**Ordering:** D4 follows (Section 17, D4); keep `make build && make verify` at
18/18 after every step.

### D4 — static candidate scorer  ✅ DONE (2026-10-12)

**What it did.** Added `asm/lib/compare/pointers.py`: `collect_candidates`
(aligned in-space words in non-code spans), `_access_evidence` (pointer-sized
reads from the decoded stream via `segdataflow`), `_table_read_offsets` (a
`[bx+disp]` word read proves the whole word array), `_consumed_reads` (E1: a
word loaded into a register and then *used as an address* — a sole memory base,
a string-op offset register, or an indirect `call`/`jmp`), `_array_run_offsets`
(the `_detect_jump_table` "≥3 known addresses" rule applied to data), and
`score_candidates`, which applies the Section 8.2 weights, the Section 8.1
anchor gate, and the Section 5d hard refusals. `verify()` runs it as a pure
pre-pass (like `carve`) and returns `promoted_pointers`, `unproven_data_words`,
`pointer_counts`, `pointer_precision`, `pointer_recall`; `runner.py` surfaces
them under `report['verify']` and `report.summarize()` adds
`promoted_pointers`/`unproven_data_words` KPIs. **No emitted source changes.**

**Outcome (after the corpus review, the consumption anchor, and the D5 corpus
correction).** `vinstall` — 4164 candidates, **22 promoted** (all corpus), 2
backlog, 1256 refused; precision **1.0**, recall **0.917** (22/24 asserted).
`ds` — 2321 candidates, **1 promoted** (the corpus positive), 0 backlog, 20
refused; precision **1.0**, recall **1.0**. Unit suite **242 OK** (28 scorer
tests), `make verify DSAVANT` **18/18**. The backlog is now exactly the two
asserted-but-unread `vinstall` words (`0x3b78`/`0x3b7a`, the `ON`/`OFF` pair).

**Calibration notes (deviations from the literal Section 8.2 weights, each
forced by the corpus):**

- **`pointer_access` is granted only by a *table* read** (`[bx+disp]` word
  access), never by an absolute single-word read. The corpus showed absolute
  reads of code-embedded data islands promote round numbers and segment words
  (`ds` 0x10dd0=0xb198, 0x10dde=0xffff, 0x10e38=0x100), while every asserted
  table is walked through a register-relative operand. Absolute word reads keep
  the +5 *points* (they help a candidate that already has an anchor) but are not
  an anchor. This is ddisasm's `preferred_data_access` restricted to what the
  recovered code actually proves.
- **The `consumption` anchor (E1) proves the *space*, not the value bound.**
  `mov di, word [mem]; stosb es:[di]` (and the `lodsb`/`movsb`/`les` variants,
  plus an indirect `call`/`jmp` through the register) shows the loaded word is
  *used as an address*. This is the only anchor that reaches the Aztec
  heap-base pointers, whose targets (`0xb198`, `0x2afe`) lie outside both the
  file-backed data and the CRT zero-fill range. A register used as an **index**
  beside another base (`[bx+ax]`) is **not** consumption: a number is routinely
  used as an index. The scan is a bounded forward walk that stops at a
  redefinition of the register or at any `call`/`jmp`/`ret`, so an unproven word
  stays unproven.
- **DATA space is bounded to the file-backed segment** (`value < bss_boundary`).
  A BSS-offset pointer is real, but BSS size is not statically bounded, so
  accepting `value < 0x10000` makes every small number a candidate. The escape
  hatch is not a wider bound but the `consumption` anchor, which proves the
  space directly.
- **The 16-bit form of the "bitmask" negative** is `>=8 trailing zero bits`
  (ddisasm cuts 32-bit values at 20), so round sizes/offsets such as 0x0100
  take −2.
- **`unproven_data_words` is a filtered backlog** — candidates whose evidence
  is about an *access* (an anchor, a word/table read, a consumption, an array
  run) or that the corpus asserts — rather than every in-space number (which
  would be ~2900 rows of noise). A **target-shape** hint alone (a known label,
  a run target, a region start) scores but does not list a candidate: in a
  16-bit image an address is a small number, so target shape is nearly free
  (Section 8.2, "Omitted"). Corpus-asserted positives are always listed, so a
  missed asserted word (the `vinstall` ON/OFF pair) shows up in the backlog.
- **Fixed-DS slots (`0x2E`/`0x30`).** An *unrelocated* absolute DS displacement
  in that range is the PSP saved-SS:SP pair, not a data object, so D4 gives it
  no access evidence (Section 5d). The **rendering** half — emitting `[0x2e]`
  instead of `dseg_002e`/`dseg_0030` — is still open (Section 18); it would not
  move the census, because those MZ `dseg_` equ lines are not counted.

**Metric caveat.** Section 14's strict precision (`promoted ∩ asserted /
promoted`) is only 1.0 once the corpus is exhaustive for the promoted set. The
corpus now has positives for both binaries, so the hard gate is "**no
`not_pointers` is promoted, and every promotion is inside the asserted set**";
precision/recall are reported per binary, `None` where vacuous. Growing the
corpus by review of the backlog is the calibration loop.

**Ordering:** D5 followed; keep `make build && make verify` at 18/18 after every
step.

### D5 — promotion  ✅ DONE (2026-10-12)

**What it did.** Added `asm/lib/compare/promote.py`. `merge_promotions` unions
the D4 accepted set with the sidecar `data_pointers` (Section 13 step 1, "E0"):
the corpus is the reviewed authority, so an asserted word is promoted even when
the scorer found no anchor, and the corpus wins on `space`.
`promote_data_pointers` then splices a `data_ptr` record over each accepted
word's two bytes -- splitting the owning `data_block` (or two adjacent one-byte
`db` records) and emitting `dw <expr>`:

* DS below `bss_boundary` -> `dseg_<off>` (its label is placed by the existing
  `mem_equ` machinery, so a mid-string target anchors to the string start);
* DS at/above `bss_boundary` -> `bss_<off>` =
  `(__zimage_end - __zdataseg_start) + delta` (the heap-base pointers);
* CS -> `<label> - IMAGE_BASE`;
* `es`/external -> skipped (those are corpus negatives; Section 9).

A word whose bytes a mnemonic or a jump-table record already owns is **left
alone** -- which is exactly why the three reclassified jump-table words must be
corpus negatives, not positives. `render.py` gained `mz_data_gap` (shared with
`_build_source`) and the `data_ptr` render branch; `verify()` runs the pass
after the scorer and returns `promoted_data_words` / `promotion_skipped`;
`runner.py` surfaces them and `report.summarize()` adds a `promoted_data_words`
KPI.

**Outcome.** `vinstall`: **24 emitted** (= the 24 asserted; 22 from evidence, 2
from the override), 0 skipped. `ds`: **1 emitted** (`dw bss_b198`). Scorer
coverage after the corpus correction: `vinstall` precision **1.0**, recall
**0.917** (22/24); `ds` **1.0/1.0**. Backlog: `vinstall 0x3b78`/`0x3b7a` (the
`ON`/`OFF` pair, no static reader) only -- `0x4374` was removed by the
corroboration rule below. Census is
unchanged (`data_shift` 1231, `total` 1383) -- deliberately: the promoted words
were `db` bytes, and `count_frozen_addrs` only sees `dw 0x…`/`equ 0x…`, so the
*census is not the measure of this step*; the edit-property tests are (Section
15.4). Unit suite **245 OK** (23 new promotion/scorer tests, 2 new data-edit
tests); `make verify DSAVANT` **18/18**.

**Corpus correction this step forced.** Re-auditing every positive (not trusting
the earlier review) found `vinstall 0x113c`/`0x1b44`/`0x1b52` were
jump-table entries, not DS pointers (Section 14). They moved to `not_pointers`;
the `not_pointers` invariant was widened from "stays literal" to "never emitted
as a `dseg_`/`bss_` symbol", because those three are legitimately emitted as
*code* pointers by the jump-table path.

**Not done here.** Deletion in the *code* dimension (the code-insert case
already forces the data to relocate, which exercises the same paths), and a
promotion for `es`/external pointers (they must not move).

### D5 cross-reference with ddisasm  (2026-10-12)

Read against `asm/tools/reference/ddisasm/*.dl`. The scorer was already a port
of ddisasm's weighted-evidence design; the review confirmed which parts match,
which we deviate from deliberately, and one thing we should adopt later.

**Matches.** `data_object_point(EA,Size,Type,Points,Why)` +
`data_object_total_points` + `data_object(…):- Points >= 0` is the same shape as
`score_candidates`. Baseline `-2 "data object bias"` is identical. Candidate
space is the same ("an aligned pointer-sized word whose value lands in the data
segment"): ddisasm's `data_object_candidate(EA,Pt_size,"symbol")` requires
`address_in_data_refined(EA,Dest)`, ours requires an in-space value.
`relocation +10` and `preferred_data_access +5` match `has relocation` and
`data access`; `+2 "aligned"`, `-2 "potentially bitmask"`, `-2 "multiple
conflict"`, `-2 "printerable address"/-1 "overlaps string"` (our `in-text`),
`-1 "point-to-special-section"` (our `inert-target`) and the
`discarded_data_object` tie-break (our `_apply_overlap_penalty`) all have
counterparts.

**Deliberate deviations.**
1. **No anchor in ddisasm; a strong anchor for us.** ddisasm accepts at
   `Points >= 0`. It can afford that because in a PE/ELF binary an address is a
   large, sparse number. In a real-mode 64 KB image *every* value below
   `bss_boundary` is a plausible address, so points-only acceptance is not
   discriminating. ddisasm's own safety net here is `-10 "has no relocation"`,
   which it **disables for `EXEC`** (`!binary_type("EXEC")`) — i.e. it has no
   negative pressure in exactly our case. The anchor gate is our substitute.
2. **`pointer_access` needs a *table* read** (`[bx+disp]`) rather than any
   pointer-sized read. ddisasm counts the plain absolute read
   (`simple_data_access_pattern`, `data_access(EA,…,"NONE","NONE","NONE",…)`).
   Corpus-forced: absolute reads of code-embedded islands promoted round
   numbers/segment words (`ds 0x10dd0=0xb198`, `0x10dde=0xffff`, `0x10e38=0x100`).
3. **`point-to-boundary-sym` (+4) omitted.** Its condition is a *section*
   boundary plus a structural reason; the region-start approximation is a
   coincidence magnet (measured above). Removed in this step.
4. **Backlog entries require access evidence.** Consequence of (2)+(3): a
   target-shape hint alone no longer lists a candidate.

**Adopt later.** ddisasm's `discarded_data_object` is stronger than our
overlap penalty: overlapping candidates *compete* and every loser is dropped,
not merely penalised. In a dense blob (the 902-byte one produced 224
overlapping candidates) that culls far more than a listing filter. Our version
keeps every candidate and only adjusts points, then lists survivors. Revisit if
a large unclassified blob ever produces a real miss.

**Evidence of the payoff.** After the change the `vinstall` backlog is exactly
the two asserted-but-unread words (`0x3b78`/`0x3b7a`); `0x4374` is gone and no
promotion changed (all 22 keep their `pointer_access`/`consumption` anchors).

**Scope of this cross-reference.** It informs **D4/D5 only** — pointer-vs-number
classification. D7 has no ddisasm counterpart: ddisasm has no overlays, and our
problem there is host/overlay segment coupling, not candidate scoring. The
"adopt later" item above is therefore **not on the critical path** — F7's
backlog is empty.

### D7 — overlays and raw drivers  ▶️ NEXT

Ordered. Keep `make build && make verify DSAVANT` at 18/18 after each sub-step
and lower `BASELINE_TOTALS` as counts fall. The shared-DS model — every overlay's
data offsets are the *host's* DS offsets, and each overlay's `o_dorg` **is** the
host DS size — is established in §0.1/§0.2 and Section 18.

- **D7.0 — make the shared geometry visible, then choose the anchor.**
  - **D7.0a — counters.** ✅ DONE (2026-10-12). `count_frozen_addrs` now counts
    the 13 overlay `o_corg` (`code_shift`), the 13 overlay `o_dorg`
    (`data_shift` — each *is* the host DS size), and the 7 host code immediates
    equal to the DS size (`ds_size_imm` → `code_shift`; tagged `; dssize` at
    emit time, driven by the new `SegmentModel.ds_size`, recovered from the CRT
    BSS zero-fill idiom via `find_crt_bss_zero_range`). Baseline re-based
    1383 → **1416**; `make verify DSAVANT` 18/18; unit suite 247 OK.
  - **D7.0b — bind the 7 DS-size immediates.** ✅ DONE (2026-10-12).
    `ds.asm`/`vinstall.asm` now emit `__zbss_size equ <reserved BSS size>` and
    `__zdataseg_end equ (__zimage_end - __zdataseg_start) + __zbss_size`
    (the total data-segment size: file-backed data + reserved BSS), and
    `_render_records` rewrites any code immediate equal to the DS size to
    `__zdataseg_end` (the `; dssize` tag stays only as the regression guard, so
    the bucket can rise again if a future image lacks the anchor). `ds_size_imm`
    7 → 0; `code_shift` 172 → 165; `total` 1416 → 1409; `make verify DSAVANT`
    18/18; unit suite 250 OK; a data byte now grows every stored size by one
    (`test_ds_data_insert_moves_the_ds_size_immediates`). Scope: this binds the
    immediates *within each MZ image*; the cross-binary overlay `o_dorg` export
    is D7.1b, resolved by the D7.0c link step below.
- **D7.0c — the pre-NASM link step.** ✅ DONE (2026-10-12).  The decision that
  unblocks D7.1/D7.1b/D7.2 and closes the cross-module gap: host-derived
  *numbers* leave the source tree and move to `.cache`; the sources keep only
  *names*.  This is ddisasm's relocation model
  made real — the host is the single source of truth, a link step resolves it,
  and a host edit *does* propagate.  (Previously the overlays could only hold a
  frozen copy, because a separate assembly cannot see the host's labels.)

  **The split, as implemented.**
  - `asm_<project>/` — **source**, hand-editable, **names only**.  The 13
    overlay headers now emit `dw __zdataseg_end`; the symbol is a name, not a
    number.
  - `.cache/<project>/labels/host_values.inc` — `; AUTO-GENERATED`, **numbers
    only**: `__zdataseg_end equ 0x9098`.  Every overlay `%include`s it by name
    (`%include "labels/host_values.inc"`, through the `.cache` include root —
    `lib/link.py::include_args`).

  So `asm_DSAVANT` = source (names + logic, editable) and `.cache` = numbers
  (addresses we believe in, regenerated).  **Corollary, and a diagnostic:** a
  *non-address* that turns up in `.cache` means the classifier is wrong — fix it
  with a `not_pointers` sidecar, never by hand-editing an address.
  *(The plan first sketched an `asm_DSAVANT/inc/hostrefs/<binary>.inc` alias
  layer; the geometry symbol needs no per-binary alias, so D7.0c ships one
  project-wide values file.  D7.1 adds per-name entries to the same file.)*

  **The link step (`lib/link.py`, driven by `make/link.py`; runs before nasm on
  every build/rebuild/elf-rebuild).**
  1. Assemble the *edited* host and read its symbol values.  `probe_symbols`
     writes a throwaway probe (`%include "ds.asm"` + a tail of `dw <symbol>`
     stamps), assembles it with the tree root on the include path, and reads the
     tail words little-endian — fully tool-independent (NASM only; no listing
     parser).  Verified: `__zdataseg_end` = `0x9098`.
  2. Write `.cache/<project>/labels/host_values.inc`; then assemble all
     binaries, which resolve the symbols from it.  A probe failure is a hard
     `SystemExit` — the build must not fall through to NASM with a missing or
     stale values file.

  **Why this is honest, not census-gaming.**  The value is computed from the
  edited host at build time, exactly as a linker resolves a relocation, so it is
  no longer a *hand-typed* number.  The gate counts hand-typed numbers, so it
  drops it; the link step's resolved values are **reported separately, not
  scored** (§5).  This took `o_dorg` 13 → 0; the 769 host-resident overlay
  `equ`s follow in D7.1.

  **The `elf-rebuild` hole, closed.**  `cmd_elf_rebuild(app, binary=None)` now
  recompiles the edited C seeds, runs the link step, and assembles **every**
  binary from the current sources (host edits reach the overlays through the
  values file), then emits DWARF for the selected binary.  `binary` omitted ⇒
  resplice all C seeds, assemble all, ELF for the MZ host; an overlay target
  reports *"(no ELF yet: D7.0d)"*.  It does *not* regenerate `asm_<project>` from
  the original binaries — that would discard edits.

  **`inc/` cleanup (done).**  `asm_<project>/inc/` now holds only
  `inc/structs/` (the hand-written `struc` files — **real source**).  The derived
  `inc/labels/` phone books and `inc/spans/` sidecars moved to
  `.cache/<project>/labels/` and `.cache/<project>/spans/`, and were deleted from
  the tree; the write/read sites (`main/runner.py`, `lib/compare/verify.py`,
  `make/common.py`, `make/elf.py`) use `lib.cachedirs`, and `nasm` gets the
  `.cache` root as a second `-I`.

  **Volume (for D7.1).**  **828** host-code names (the phone books,
  `ds_*`-prefixed) + **769** host-resident data names (still
  `bss_5218 equ 0x5218` in the overlay masters) + **462** overlay-own data names
  (become `o_dorg + delta`, no host needed).  Dropping the `ds_` prefix would
  collide in exactly **1** place (`vpcvw`: `ds_loc_3a6a` vs its own `loc_3a6a`),
  so the friendly aliases stay.

  **Outcome.**  `o_dorg` 13 → 0; `data_shift` 1244 → 1231; `total` 1409 → **1396**;
  `make verify DSAVANT` **18/18**; unit suite **268 OK**.  The acceptance property
  is tested end-to-end: inserting one byte into the host's data makes the link
  step write `__zdataseg_end equ 0x9099` and the rebuilt `VBASE.OVR` carry
  `o_dorg = 0x9099`
  (`LinkStepTests::test_overlay_o_dorg_follows_a_host_data_edit`).  `make build`
  stays a fixed point, and `make elf-rebuild` reproduces the tree byte-for-byte
  (no drift).

- **D7.0d — ELF/DWARF for overlays and drivers.** ▶️ **NEXT.**  After D7.0c.
  `_elf_source_text` is MZ-shaped and raises for the others (verified:
  `vbase.asm` → *"MZ header block is too short for 820 ELF symbols"*;
  `vga.asm` → *"expected generated MZ header and org 0"*).  Three bounded
  changes in `asm/make/elf.py`:
  1. blank the load-header lines **1:1** and append the `global` list at the
     **end** of the file — keeps DWARF line numbers aligned and frees the
     symbols from having to fit inside the header block;
  2. detect the header from the known `start_offset` (`0x200` / `14` / `0`)
     instead of "the first `equ` after the `header (` comment" (`.DRV` has no
     header at all — just drop `org 0`);
  3. a per-type load base — `EXE → 0`, `OVR → o_corg` (read from the built
     `.OVR`, since D7.2 may move it), `DRV → TBD` (where the game loads a driver
     is still unknown, so `.DRV` stays "TBD").

- **D7.1 — bind F4 for the overlays.** `data_shift` 1231 → 0: the same
  `dseg_<o> → __zdseg_<o> - __zdataseg_start` / `bss_<o> → … + delta` transform
  as D1, for the 13 overlays, against the D7.0c anchor (names stay in the
  overlay masters, values in `.cache/<project>/labels/host_values.inc`).  Splits
  at the host DS boundary `0x9098`: the 229 offsets `< 0x9098` are host-resident
  (**D7.1a**; 212 are host BSS, expressible as `host_data_size + (o - 0xcf6)`
  with no label, and only 17 are file-backed host bytes needing a real label) and
  the 400 offsets `≥ 0x9098` are the overlay's own data/BSS (**D7.1b**).
- **D7.1b — the 13 `o_dorg` fields.** ✅ DONE (via D7.0c): each *is* the host DS
  size, so the overlay header emits `dw __zdataseg_end`, resolved by the link
  step into `.cache`.  (`dw` → a *name*; the value left the tree.)
- **D7.2 — bind F3 and `o_corg` for the overlays.** The 134 remaining
  `cseg_`/`loc_`/`leaf_`/`string_`/`api_` `equ` lines → in-place labels — the
  Pass 1 Phase 3 transform, which was applied to the MZ images only — and the 13
  `o_corg` fields once the host code-region origin is pinned (see Section 18,
  "Overlay DATA"; the base is still unproven).
- **D7.3 — reclassify the declared waivers and the pads.** Overlay `o_bss` (13)
  and MZ `e_sp` (2) are permanent per Appendix C but are currently counted in
  `code_shift`; move them to `inert`. Resolve the 3 overlay zero pads (or
  declare them). After this the gated total can reach **0**.
- **D7.4 — extend the edit-property test to an overlay** (only `ds`/`vinstall`
  are exercised today) and lower `BASELINE_TOTALS` to the new floor (`total` → 0
  as each class lands).

---

## 18. Open questions

Each item is tagged **[D7]** (on the critical path), **[OPEN]**, **[DEFERRED]**
(no measured demand) or **[DONE]**, and says whether it moves the gate.

- **[D7] Overlay DATA — the anchor (D7.0).** Overlay data offsets resolve
  against the *host* model, so a bound `dseg_<o>` (or a promoted DS word) in an
  overlay must use the host's `__zdataseg_start` — and every overlay's `o_dorg`
  **is** the host DS size. D7.0a answered the *measurement* half: both are now
  counted (13 `o_dorg` + 13 `o_corg`). **Still open:** whether `o_corg` is the
  host CS offset at which overlay code is linked — `segments.host_code_offset()`
  implies it, yet host routines the overlays call sit at CS `0xafcc`+ (above
  `0x5055`). D7.0b/D7.1 need only the *data* anchor, so they are unblocked;
  **D7.2 waits on this.** **Moves the gate: yes — the whole overlay `data_shift`
  plus the 13 `o_corg`.**
  **Resolved (2026-10-12):** the anchor *mechanism* is the **D7.0c pre-NASM
  link step** — the host is the single source of truth; overlay host-references
  become *names* in `asm_DSAVANT` whose values the link step writes to
  `.cache`.  So the *data* anchor is no longer open (`o_dorg` →
  `__zdataseg_end`).  The **`o_corg` question above remains open** and still
  gates D7.2.
- **[D7] The census did not count data-block words or code immediates.**
  `count_frozen_addrs` matches only MZ/OVR header `dw`, `equ 0x` lines,
  `times N db 0`, and `dw 0x… ; 0x…` data words. Two classes were invisible: a
  stored pointer word rendered as a raw `db` pair *before* D5 promotion, and raw
  immediates that are DS addresses — e.g. `vinstall/leaf_loc_10a4.asm` does
  `mov ax, 0x1806` then `call loc_040f`, a DS string pointer emitted as a bare
  number. D7.0a closed the *geometry* slice of the second class — the 7 host
  DS-size immediates became tagged and counted — and D7.0b *bound* them to
  `__zdataseg_end`, so they now move with a resized data segment. The general
  DS-address immediate (and the pre-promotion `db` pair) is still invisible, so
  D5's effect is still **not** visible in the census (it did not move: 1244) and
  the acceptance gate remains the edit-property test (Section 3.1) plus
  `promoted_data_words`, not the census. **Moves the gate: it hides work — the
  general F4-immediate class still needs a counter before it can be scheduled
  (§0.3).**
- **[OPEN] Unrelocated absolute DS displacements (Section 5d).** `segdataflow`
  names a default-DS operand `dseg_` even when its displacement carries no
  relocation and is a hardcoded fixed address (e.g. `0x2E`/`0x30`). Decide a
  rule that marks these inert (PSP/fixed) rather than `data_shift` — the FEXEC
  operands prove the case exists. Needs relocation-set access at naming time.
  **Partly addressed (D4):** the scorer no longer counts a fixed-slot DS access
  as pointer evidence; the *naming/emission* fix (render `[0x2e]`, not
  `dseg_002e`) is still open. **Moves the gate: no (`f4=0` in both MZ images).**
- **[OPEN] Recall cost.** Every real pointer left in `unproven_data_words` still
  fails the "arbitrary edits" bar — the bucket is the measure of that gap; do
  not hide it by promoting on weak evidence.
- **[DEFERRED] E1 without full decompilation.** Partly done: `_consumed_reads`
  covers a *single* load consumed as an address (including an indirect
  `jmp`/`call`, so the entries of an anonymous dispatch table are reached).
  Deferred: a table base built by `pop` (the Aztec `mov cx, N; call helper`
  trampoline) and a value used as an argument to a callee that treats a register
  as a pointer — both need stack or interprocedural tracking, and with F7 at
  100% precision and an empty backlog there is no measured demand.
- **[DEFERRED] Alignment.** Tables may be byte-aligned; decide how to handle an
  odd word offset without misreading neighbouring bytes. Unmeasured, so
  unscheduled (§0.3).
- **[DEFERRED] Weight calibration.** ddisasm's weights are empirical. Treat ours
  as defaults and let the corpus set them; only the total's sign matters.
- **[DONE] D1 DS-base expression.** `dseg_<o>` is
  `__zdseg_<o> - __zdataseg_start` (label at file offset `data_origin + o`);
  `bss_<o>` is `(__zimage_end - __zdataseg_start) + (o - bss_boundary)`. Both
  reproduce the original bytes at the original layout (Section 5b).
- **[DONE] BSS-offset pointers + consumption anchor (D4/E1).** The Aztec
  **heap-base pointers** (`vinstall 0x5fb4` = `dseg_24d4`, `ds 0x10dd0` =
  `dseg_0c70`) hold targets past `bss_boundary` (`0x2afe`, `0xb198`). Both are
  read with `mov di, word [mem]` and then used by `stosb es:[di]`, so the E1
  `consumption` anchor proves they are DS pointers with no value bound. The
  value stays out of `collect_candidates`' DATA test; consumption *adds* the
  space. Verified: `ds` precision/recall **1.0/1.0**, `vinstall` precision
  **1.0** with no unasserted promotion.
- **[DONE] String-pointer arrays in the code segment — it was a misreading
  (D5).** `vinstall 0x113c`/`0x1b44`/`0x1b52` are not DS string tables at all:
  they are entries of the **jump tables** at `0x113a`/`0x1b3c`, dispatched by
  `jmp word [cs:bx+disp]` (each case body ends at the dispatch's `jae` join).
  The "consecutive string" reading was a numeric coincidence, and the words are
  already emitted correctly as `label - IMAGE_BASE` code pointers. They are now
  corpus negatives. The only genuine coverage gap is the `ON`/`OFF` pair
  (`0x3b78`/`0x3b7a`, a 2-entry array with no static reader).
- **[DONE] Corpus exhaustiveness (D4).** After the 2026-10-12 re-audit the
  backlog is the recalled-but-unpromoted set (`vinstall` 2 words, `ds` 0).
  `0x4374` no longer appears: the corroboration rule of D5 removed
  target-shape-only entries (Section 17, D5). Continue growing the corpus as new
  promotions are proposed.

---

## 19. Definition of done

- **D0:** census split into `code_shift`/`data_shift`/`inert`; literal tables
  tagged; `make verify` 18/18; unit suite green. ✅
- **D1:** MZ `dseg_`/`bss_` operands bound to their bytes; `data_shift` 1401 →
  1231; `ds`+`vinstall` 170/170; `make verify` 18/18; unit suite green. ✅
- **D2:** region carving pre-pass (`regions.py`) wired through `verify()` and the
  report; source unchanged; `make verify` 18/18; 13 region tests. ✅
- **D3 review:** the D4 backlog reviewed case by case; corpus at 27+1 positives /
  26+12 negatives; the backlog is now only the recalled-but-unpromoted words;
  `make verify` 18/18; unit suite green. ✅
  *(Corrected in D5: three of those positives were jump-table entries; the
  corpus is now 24+1 positives / 29+12 negatives. Every entry is a hypothesis,
  to be re-verified against the bytes.)*
- **D4:** candidate scorer (`pointers.py`) wired through `verify()` and the
  report; the accepted set is inside the asserted corpus (precision 1.0 on
  `vinstall`), no `not_pointers` promoted, Section 5d refusals hold; source
  unchanged; `make verify` 18/18; 25 scorer tests. ✅
- **D4/E1:** consumption anchor (`mov reg, [mem]` then `reg` used as an
  address) promotes both Aztec heap-base pointers whose targets lie outside the
  statically bounded data; `ds` precision/recall 1.0/1.0 and `vinstall`
  precision 1.0 with no unasserted promotion; source unchanged. ✅
- **D5:** `promote.py` emits a symbolic `dw` for every accepted word and, via
  E0, every asserted one (DS `dseg_`/`bss_`, CS `label - IMAGE_BASE`); a word
  already owned by a mnemonic/jump-table record is left alone. `vinstall` 24
  emitted / 0 skipped, `ds` 1 emitted; `make verify` 18/18; 20 promotion tests,
  data insert/delete edit-property tests, and the "no `not_pointers` word is
  emitted as a data pointer" pipeline test all pass. The step forced a corpus
  correction (three jump-table words). ✅
- **D5/ddisasm cross-reference:** the scorer was read back against
  `tools/reference/ddisasm/symbolization.dl` + `pointer_reattribution.dl`; the
  matches and the four deliberate deviations are recorded (Section 17, D5). The
  weak `point-to-boundary-sym` approximation was **removed** and a backlog entry
  now needs *access* evidence: `0x4374` (a font-data coincidence) is no longer
  reported, the backlog is exactly the two asserted-and-unread words, and no
  promotion changed. ✅
- **F7 (overall):**
  - Every word the D4 scorer accepts is promoted (emitted as a symbolic `dw`),
    and the rest of the pointer-shaped candidates are listed in
    `unproven_data_words`; none promoted on weak evidence (no strong anchor ⇒
    not promoted, except the reviewed corpus override).
  - Note the census blind spot: `data_shift` counts only `dw 0x…`/`equ 0x…`, so
    data-block pointer words and code immediates are invisible to it. The
    measure of F7 is `promoted_data_words` plus the edit-property test.
  - The Section 5d hard refusals hold: no promotion whose target lands
    *strictly inside* a `string`/`resource` region; no unrelocated fixed DS
    displacement counted as `data_shift`.
  - `make build && make verify DSAVANT` is 18/18, unit suite green.
  - The edit property test (code *and* data) passes, including the no-drift
    check for non-pointers.
  - The sidecar corpus round-trips: precision 100%; recall recorded (not gated)
    as the remaining backlog.
- **D7.0a:** the shared host/overlay geometry is countable —
  `count_frozen_addrs` now returns `o_corg` (13 → `code_shift`), `o_dorg`
  (13 → `data_shift`) and `ds_size_imm` (7 → `code_shift`); `SegmentModel.ds_size`
  (from the CRT BSS idiom) and the `; dssize` emit tag added; `BASELINE_TOTALS`
  re-based 1383 → **1416** as a documented one-time correction;
  `make verify DSAVANT` 18/18; unit suite 247 OK; regeneration is a fixed point
  (re-running `make build` changes nothing). ✅
- **D7.0b:** the 7 host DS-size immediates are bound — `ds.asm`/`vinstall.asm`
  emit `__zbss_size` + `__zdataseg_end` and `_render_records` rewrites any code
  immediate equal to the DS size; `ds_size_imm` 7 → 0, `code_shift` 172 → 165,
  `total` 1416 → 1409; `make verify DSAVANT` 18/18; unit suite 250 OK; a data
  insert moves every stored size (`test_ds_data_insert_moves_the_ds_size_immediates`);
  regeneration is a fixed point. ✅
- **D7.0c:** the pre-NASM link step — host-derived numbers move out of the
  sources into `.cache` (names stay in `asm_<project>`), the link step runs before
  every nasm, `elf-rebuild` is a genuine full rebuild (C resplice → link → all
  binaries → ELF), and `inc/labels`/`inc/spans` moved to `.cache`; `o_dorg`
  13 → 0 as link-resolved (reported, not scored) and `data_shift` 1244 → 1231,
  `total` 1409 → 1396; `make verify DSAVANT` 18/18 and the unit suite 268 OK;
  `make build` is a fixed point and `make elf-rebuild` reproduces the tree. ✅
- **D7.0d:** overlays get ELF/DWARF (drivers only if their load base is found),
  so `make elf-rebuild` yields a debuggable ELF for an overlay. ⏳
- **REMAINING — D7 (overlays and raw drivers).** The overall goal is **not**
  met. Exit criteria:
  - `data_shift` 1231 → 0 (overlay F4 bound; D7.1, on the D7.0c link) and
    overlay F3 `equ` 134 → 0 + `o_corg` 13 → 0 (D7.2); the 13 `o_dorg` are
    already bound to the host anchor `__zdataseg_end` (D7.0c/D7.1b).
  - overlay `o_bss` (13) + MZ `e_sp` (2) reclassified `inert`, overlay pads
    resolved (D7.3), so `code_shift + data_shift` → **0**.
  - an overlay is covered by the edit-property test (D7.4) and
    `BASELINE_TOTALS` is lowered to the new floor.
  - `make verify DSAVANT` 18/18, unit suite green, after every sub-step.
- **F7 leftovers (unmeasured — do not start without a counter, §0.3).**
  F4 code immediates (`mov ax, 0x1806`), odd-aligned tables.

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

## 21. Churn ledger and metric discipline

The campaign is large in `asm/lib` and small in the generated assembly. That is
expected for an analysis-heavy phase, but it means **effort is not evidence of
progress** — only the census is. Ledger as of 2026-10-12 (working tree vs
`HEAD`, `fix make all`, which already contains D0–D7.0b, so the delta below is
exactly D7.0c):

| area | change | note |
|------|-------:|------|
| overlay masters (`asm_DSAVANT/*.asm`) | **+52/−26 in 13 files** | D7.0c: each overlay gains `%include "labels/host_values.inc"` and emits `dw __zdataseg_end` for `o_dorg` |
| derived files deleted from the tree | **−1545 in 20 files** | `asm_DSAVANT/inc/labels/` + `inc/spans/` moved to `.cache` (git-ignored, regenerated) |
| `asm/lib` + `asm/main` | **+176/−37 in 8 files** | `link.py` (new), `cachedirs.py`, `render.py`, `compare/verify.py`, `runner.py`, `main/verify.py`, `projects.py`, tests |
| `asm/make` | **+90/−34 in 5 files** | `link.py` (new), `build.py`, `elf.py`, `common.py`, `clean.py`, `cli.py` |
| `plan.md` | **+115/−103** | this document |
| **census** | **1396** | campaign: 1553 → 1396 (D1 **−170**; D7.0a **+33** re-baseline; D7.0b **−7**; D7.0c **−13**) |

*(Not in this ledger: `asm/lib/aztec/build_db.py` + `asm/make/prebuild.py` — the
sidecar-driven binary list, a concurrent change on another channel.)*

Two disciplines follow, and they are the point of this section:

1. **Every step declares its gate impact** (Section 17's `gate impact` column).
   A zero-impact step is allowed — D2/D3/D4 were necessary foundations — but it
   must be *labelled* as such, so that five zero-impact steps in a row reads as
   a signal rather than a surprise.
2. **No work on an unmeasured class** (§0.3). If a class cannot be counted, the
   first deliverable is the counter, not the fix. F7 was correct work with no
   counter: it moved the generated assembly by 25 words and the census by 0.
   D7.0a is the same rule applied *prospectively* — the shared-geometry counter
   (and the one-time re-baseline it forced) landed before any binding. D7.0b is
   the pay-off: the counter existed, the binding removed exactly its 7 values,
   and the number moved by exactly −7. D7.0c is the same for the 13 `o_dorg`
   (13 → 0, `data_shift` 1244 → 1231) — but the mechanism differs: the value is
   now *resolved by the link step*, so it left the census by leaving the *tree*.

The metric of record is `code_shift + data_shift` (§0.2), guarded by
`BASELINE_TOTALS` in `asm/lib/tests/test_dynamic_addrs.py`; the *behavioural*
bar is the edit-property test (Section 15).

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

A waiver is a value that can never need to change. Per §1 they belong in
`inert` ("excluded, not waived"); the two that are still *counted* are flagged
here and reclassified in D7.3.

- `e_sp` — stack reserve size, segment-relative. **Currently still counted in
  `code_shift` (f1=2); reclassified `inert` in D7.3.**
- Overlay `o_bss` — uninitialized data size (host/runtime). **Currently still
  counted in `code_shift` (f2=13); reclassified `inert` in D7.3.**
- Overlay `o_corg`/`o_dorg` — code/data load origin. **Now counted (D7.0a):**
  `o_corg` → `code_shift`, `o_dorg` → `data_shift`. `o_dorg` **is** the host DS
  size, so it is bound in D7.1b; `o_corg` is bound in D7.2 once the host code
  base is pinned.
- `__zbss_size` (the MZ reserved-BSS size introduced by D7.0b) — a *size*, so it
  is invariant under every source edit (a data insert moves `__zdataseg_end`, not
  this); like `o_bss` it is legitimately inert and the census never sees it (its
  `equ` has a computed RHS and an unprefixed name).
- `bios_data_0410` and any `external_data` field — fixed external segment
  (now counted `inert`, Section 5).
- PSP fields not in `PSP_FIELDS` (now counted `inert`).
- Unproven immediates (F9).
- Raw-driver `data_*` (`ega`/`play`/`vga`) — DS established at run time.
- Pure data words in lookup tables that are not addresses.
- `; 0x<F>` comments (F10) — documentation only.
