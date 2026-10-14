# Plan: layout-independent `asm_DSAVANT` (dynamic addresses + data pointers)

**This is the single plan.** It merges the former `plan-data.md` (F7 data-pointer
detection) into the original dynamic-address plan. It is written so a *fresh
context* can pick up at **D7.2c-2** (Pass 1 + D0–D5 + D7.0a–e + D7.1 + D7.5 +
D7.2a/b + D7.2c/2a–2e + E + E2 + the C workstream done; §17 has each step's
measurements and outcome) without re-deriving anything.

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
| D7.0b — bind the DS-size immediates | 7 immediates → `__zdseg_end`; 2 `equ` lines per MZ image | **−7** |
| D7.0c — pre-NASM link step | 13 `o_dorg` → `__zdseg_end`; 13 overlays `%include` the `.cache` values file; `inc/labels` + `inc/spans` → `.cache` | **−13** |
| D7.0e — one shared host-call table | 13 per-overlay `*_foreign_labels.inc` → one `.cache` `host_calls.inc` (322 entries); dead `ds_labels.inc` deleted; 121 bogus `dispatch_` entries dropped | **0** |
| D7.1 — host-owned shared DS name map | 13 overlays: ~1230 `dseg_`/`bss_` `equ`s → one `%include "labels/host_data.inc"`; `ds.asm` declares one recipe per offset (689 names); the link step re-probes all three tables; the code-handle table moves onto the link step too | **−1230** (`data_shift` 1231 → 1) |
| D7.5 — `vstart` + host include (supersedes the D7.0c/D7.0e/D7.1 tables) | generated source assembles at its runtime address (`section .text vstart=VBASE`); overlays include the host source in a `nobits` section for its symbols; `host_calls.inc`, `host_values.inc`, `host_data.inc` and the link step deleted; the host's address-derived labels carry a `ds_` prefix | **0** (bytes identical) |
| D7.2a — count the `o_corg` family | **none** (emit-time tags only) | **+27** (one-time re-baseline ‡) |
| D7.2b — bind the overlay load origin | 13 overlays: the `o_corg` field, `VBASE` and the `o_entry` addend → the host's `__zresident_end`; the host's own loader check bound to it | **−40** |
| E — the ELF build owns the origin | `-DVBASE=0` dropped; the ELF prep rewrites the image's own `VBASE equ` line to 0, so the 9-line `VBASE` save/restore in each overlay master goes away | **0** (bytes identical) |
| E2 — the host block is emitted once | the 13 identical host-frame blocks move to a generated `inc/host_symbols.inc`; each overlay master keeps only its own `VBASE`/`vstart`/`IMAGE_BASE` around a one-line include | **0** (bytes identical) |
| E3 — symbolic C references | a C-compiled routine's calls, data references and branches are resolved against the asm labels instead of copied from the original image; the 22 recovered `.c` seeds now name asm labels (`aztec_open`, `dseg_0c72`); 7 fragments swap frozen literals for symbols (`0xd02` → `bss_0d02`, `[si + 0xcdc]` → `[si + dseg_0cdc]`) | **0** (bytes identical; the literals were invisible to the census) |
| D7.2c — a named byte gets a label, not an `equ` | every `label_map` name goes through `_ensure_global_label`; 26 of the 134 names now sit on their byte as a label (the other 70 are refused by construction, `mem_equ`/`immediate_labels` untouched) | **−26** (`code_shift` 152 → 126, `total` 153 → 127) |
| D7.2c-2a — the census says what it *means* | two counters: `names_used`/`names_inert` (which frozen names the tree actually refers to) and `hidden_flow` (call/jmp targets the source emits as bytes; the scan walks only the bytes between the source's instruction offsets, so an operand byte cannot be mistaken for a site) | **0** (measurement only) |
| A — the driver dispatch tables are declared | `dispatch_table` for `play` (8 entries), `ega` (55) and `vga` (**55** — the declaration said 48, seven entries short); the forced-region variants are *not* byte-neutral (measured) and move to the decode step | **0** (bytes identical) |
| D7.2c-2b — the driver-entry ABI is pinned | the `DRV` probe: `DS.EXE` loads `play.drv` and a mode-chosen display driver to `segment:0x100` and calls entry *k* through a far pointer `seg:0x100 + 3 + 4k`; the host's two ladders (8 and 56 slots) are the references, so the entries are a declared ABI, not inert names; pinned by `DriverDispatchAbiTests` | **0** (measurement only) |
| D7.2c-2c — vga decoded to ega's depth | VGA's dispatch `force_data` tripped `DispatchTablePhase`'s `hard_data` guard, so 48 handler targets were never seeded (VGA 452 offsets vs EGA's 5830, same construct). Dropped it, declared the data *after* the table (`00df..0292`), and made the declared table seed its **entries** too — `call handler; retf`, play's form. VGA → 79 fragments / 5462 offsets; `hidden_flow` **161 → 98** (ega and vga both → 0); `names_used` 61 → **84** | **+6 census, re-baselined once** — six revealed `cseg_` globals, the class of item (ii); only VGA.DRV re-encodes (to ega's fidelity) |
| D7.2c-2d — a declared handler owns its fragment and its name | The entry seeding left play's handlers without the `direct_call` that chose their categorization, so they fell to a raw 128-byte window that reads the following data: `leaf_loc_0154` → bare `loc_0154` (hence `strlen.asm` swallowed it), `io_loc_016e`/`io_loc_0183`/`io_loc_0294` borrowed names from bytes 100 on. `ctx.dispatch_handlers` now drives both the body walk and the split roots, so a declared handler is its own file under a name from its own body — bare `loc_` if its body genuinely claims no category | **0** (binaries byte-identical, census unchanged); buried handlers 43 → **0**, fragment-unsupported names 11 → **2** |
| C — hand-written C replaces routines | 27 `.c` sources (ds 12, vinstall 13, `lib/` 2) compiled by the Aztec toolchain and checked byte-for-byte against the original (`lib/compare/cgate.py`); a covered routine is rendered from the compiled bytes, not the disassembly, and a `.c` is shared with its fragment where every copy is identical (`lib/shared.py`). A routine the code generator can never reproduce (port I/O, `int`, far return/call…) is stamped `; asm only` and filed under `<binary>/asm_only/` (`lib/asm_only.py`: 383 fragments) | `hidden_flow` **98 → 87** (`vinstall` 38 → 26), `names_used` 84 → **83**, `names_inert` 32 → **33** |
| N — a name tags content, not an address | a generic routine's name is `<category>_loc_<TAG>`, the tag a four-letter digest of the routine's own decoded body (`lib/names.py:content_tag`); two binaries never collide and adding a routine shifts nothing. Fragments byte-identical across binaries collapse into `asm_DSAVANT/lib/` (60 files), each master `%include`ing them | **0** (bytes identical) |
| D7.2c-2e — a C override defines every label it names | the override renderer derives its own branch targets from the bytes it emits (`_override_local_labels`, `lib/compare/coverrides.py`) instead of borrowing the disassembly's table; before, a short forward branch the Aztec compiler had resolved itself carried a relocation but *no* label record, so the text named a label the override never defined and NASM failed the whole binary (1153-error cascade) | **0** (bytes identical) |

† D7.0a did not *create* 33 new problems — it made 33 already-frozen values
**visible**. A host EXE and its overlays share one data segment: every overlay's
`o_dorg` field **is** the host's DS size, and the host's CRT startup and overlay
loader hard-code that same size as a plain immediate. The census counted none of
them (`_FROZEN_OVR_FIELD_RE` matched only `o_csize`/`o_dsize`/`o_bss`/`o_entry`),
so the previous 1383 was an under-count, not a target. See §0.2 and Section 17.

‡ D7.2a did not *create* 27 new problems either — the overlay load origin `o_corg`
was written **three** ways per overlay (the header field, the `VBASE` `vstart`
macro, and the addend inside `o_entry`) plus **once** in the host's own loader
(`cmp …, strict word 0x5055`). Only the first was counted, so the class read as
13 when it was 40. Like †, this is a correction, not a regression.

D1 is the step that moved the metric before D7; **D7.0b is the first D7 step to
lower it**. D5's 25 words are real correctness work — they are `db` bytes that
drift when the data segment resizes — but `count_frozen_addrs` cannot see them,
so the count does not move (Section 18). The detail of each step is in Section
17.

### 0.2 Remaining — all of it is D7

**Current census** on the regenerated tree (a `make build` fixed point):

| class | value | meaning |
|-------|------:|---------|
| `code_shift` | 132 | breaks when code resizes — **must reach 0** (15 of them are reclassified `inert`, D7.3) |
| `data_shift` | 1 | breaks when data resizes — **must reach 0** (one raw-driver residual; see §17 D7.1) |
| `inert` | 248 | can never change — **excluded** |
| `total` (gated) | 133 | `code_shift + data_shift` |

Per-taxonomy breakdown: `f1=2 f2=13 f3=114 f4=1 f5=3 f6=241 f7=0`, plus the
shared-geometry buckets: `o_corg=0 o_corg_imm=0 o_dorg=0 ds_size_imm=0` (D7.0b
bound the 7 DS-size immediates, D7.0c bound the 13 `o_dorg`, **D7.2 bound the
whole 40-item `o_corg` family** — the overlay load origin — and **D7.2c gave 26 of
the 134 F3 names a label in place**; D7.2c-2c then *revealed* six more `cseg_`
globals when it decoded vga to ega's depth, so the floor is 133 — §17 D7.2). D7.1
bound the overlay `dseg_`/`bss_` family (`f4` 1231 → 1).

Where the 133 live, per emitted file:

| binary | gated | of which F4 (`dseg_`/`bss_` `equ`) |
|--------|------:|-----------------------------------:|
| `vga` | 40 | 0 |
| `ega` | 19 | **1** |
| `vpcvw` | 16 | 0 |
| `play` / `vbase` | 9 / 9 | 0 / 0 |
| `vtrea` | 7 | 0 |
| `vpcmk` | 6 | 0 |
| `vmaze` / `vmexe` | 5 / 5 | 0 / 0 |
| `vinstall` / `vmnpc` | 3 / 3 | 0 / 0 |
| `ds` / `vdopt` / `vmext` / `vpclv` | 2 / 2 / 2 / 2 | 0 |
| `vinit` / `vmele` / `vpops` | 1 / 1 / 1 | 0 |

**`data_shift` is now 1** — a single raw-driver (``ega``) DS reference whose
segment is established at run time (Appendix C); every other one of the former
1231 is host-resolved (§17 D7.1). `code_shift` decomposes as the remaining F3
`equ`s (114) + overlay `o_bss` (13) + MZ `e_sp` (2) + overlay zero pads (3) =
132; the host DS-size immediates and the whole `o_corg` family are bound
(D7.0b/D7.2), and the 15 `o_bss`/`e_sp` values are declared waivers (Appendix C)
that are nevertheless *counted* today — D7.3 reconciles that. The 114 F3 `equ`s
are themselves named and counted as D7.2c-2 (§17): 70 names refused a label
(55 on bytes that render as data, 15 mid-instruction, 2 outside every record) +
the 27 `mem_equ` operand symbols (21 before D7.2c-2c) + 17 `vga`
`immediate_labels`.  By prefix they are `cseg_` 44 + `loc_` 38 + `data_` 19 +
`leaf_` 5 + `string_` 4 + `fpu_` 2 + `io_` 1 + `api_idx` 1 = 114; the bare
`loc_` 38 are the declared drivers' handlers whose own bodies claim no category
(D7.2c-2d), and the `cseg_`/`data_` lines carry 60 distinct names (55 used,
5 inert).  Two of the `vinstall`
"data" words (`0x2e`/`0x30`) are still inert PSP slots mis-bound as `dseg_`
(Section 5d); that is a naming bug that does not move the census.

**Two counters keep the census honest** (D7.2c-2a): of the 116 *named* frozen
addresses, **83 are used** (the tree refers to them, so they must follow an edit)
and **33 are inert** — nothing refers to them at all (`loc_0007`,
`ds_leaf_loc_10108`, every one of `vga`'s 17 `immediate_labels`).  Converting an
inert name to a label moves the census without making anything follow an edit.
Separately, **`hidden_flow` = 87**: near call/jmp references whose *target* the
source shows as code while their *site* is emitted as bytes — real address
references no source line spells, so neither the census nor a label can reach them
(`vinstall` 26, `vmexe` 21, `play` 20, `vpcvw` 11, `vdopt` 5, then 1s; e.g. play's
`call 0x07f6` at 0x00e2, emitted `db 0xe8, 0x11, 0x07` on `play.asm:93`; `ega` and
`vga`, whose tables were the whole of it, are now **0**).  It is a *lower bound*
and it is gated, so it may only fall; decoding a region can *raise* it (more
targets become shown), which is why D7.2c-2c re-baselined it once, deliberately —
and it fell by 63.  It has since fallen again, to 87: the hand-written C (the C
workstream, §17) re-renders a covered routine from the compiler's bytes, so its
instructions carry offsets where the disassembly had emitted the same bytes as
`db` (`vinstall` 38 → 26).  Both baselines were lowered after measuring **HEAD's
own tree**, not the working tree.

**A third pair keeps the declared drivers honest** (D7.2c-2d): of the 118 handlers
the three declared dispatch tables name, **43 used to share a neighbour's
fragment** and **11 used to carry a category their own fragment evidences nothing
for** -- the label pass had fallen back to a raw 128-byte window that reads the
following bytes (`play`'s `leaf_loc_0154` became bare `loc_0154`, which is how
`strlen.asm` came to swallow it; `io_loc_016e`'s `out` lived 100 bytes away).
`ctx.dispatch_handlers` now drives both the body walk and the split roots, so the
pair reads **0 / 2**; it lives in `HANDLER_BASELINE` and is decrease-only like the
census.

*(The per-step "Outcome" figures below D1/D5, e.g. `total 1383`, predate D7.0a
and describe the state at that step, not today's.)*

*(**D7.0c done:** the 13 `o_dorg` origins are **link-resolved**.  The pre-NASM
link step probes the freshly assembled host and writes `__zdseg_end` to
`.cache/<project>/labels/host_values.inc`, which every overlay now `%include` by
name.  **D7.0e done:** the 13 per-overlay foreign-label files collapsed into the
single `.cache/<project>/labels/host_calls.inc`.  **D7.1 done:** the host-owned
shared DS name map (`host_data.inc`) and the code-handle table both move onto the
link step — seen §17.  **D7.2b done:** the overlay load origin is the host's own
`__zresident_end`.)*

*(**D7.5 supersedes the three `.cache` tables above:** overlays now see the host's
labels by including `ds.asm` in a section that emits no bytes, so nothing is
probed or generated; see §17 D7.5.)*

### 0.3 Not measured by any metric

- **F4 code immediates.** A DS address emitted as a bare number — e.g.
  `vinstall/leaf_loc_10a4.asm` does `mov ax, 0x1806` then `call loc_040f`. This
  is the same "moves under an edit" class as F7, and the census cannot see it
  at all. **D7.0a gave the host DS-size slice of this class a counter**
  (`ds_size_imm`), and **D7.0b bound those 7 immediates to `__zdseg_end`**;
  the general DS-address immediate still has neither a counter nor a binding.
- **Odd-aligned pointer tables.** The scorer collects even offsets only.
- **A C data reference that no symbol names** (found 2026-10-14). When a
  hand-written `.c` references `<dseg|bss>_<4 hex>` and the build has no such
  symbol, the linker parses the offset *out of the identifier*
  (`lib/aztec/relink.py:179`, `_RAW_DATA = r'dseg_[0-9a-f]{4}'`: `int(name[-4:], 16)`)
  and writes it as a bare literal. So the C compiles and the bytes must still
  match the original (the C gate compares them, `lib/compare/cgate.py`), but the
  emitted operand is a frozen number where the tree would have emitted a name —
  and a wrong *prefix* is invisible to every check, because the value is what
  matters: the tree names DS:0x8482 `bss_8482` (it is past `bss_boundary` 0xcf6)
  while the C writes `dseg_8482`, and both render the same bytes. Measured: 16
  such references (all in the hand-written `lib/` sources); the two whose offset
  *is* named (`dseg_8482`, `dseg_8490`) are also what makes the C arm print
  `+ 0x8482` where the disassembly arm prints capstone's signed `- 0x7b7e`.
  **No counter** — so, per the rule below, no renderer work starts on it yet.

**Rule:** no work starts on a class that has no counter (Section 21). F7
(§0.1) is the cautionary tale — correct work that the gate could not show.

### 0.4 Dropped / deferred

- **D6 — dynamic confirmation (one capture, offline replay): DROPPED.** It can
  only help F7, and F7's backlog is empty (100% precision, no real miss). It
  stays documented (Section 12) as the escape hatch if a future class needs it.
- **D7 — overlays and raw drivers: NEXT.** The only step that moves the gate.
  **D7.0c (the pre-NASM link step), D7.0e (one shared host-call table), D7.1 (the
  host-owned shared DS name map), D7.2b (the overlay load origin, `o_corg`,
  bound to the host's resident-code end), D7.2c (a named byte gets a label, not an
  `equ`: 26 of 134), E (the ELF build owns the origin), E2 (the host block is
  emitted once) and D7.2c-2a–2e (the census counters, the driver-entry ABI, vga
  decoded to ega's depth, a declared handler owning its fragment, a C override
  defining every label it names) are DONE**; what remains of D7.2 is **D7.2c-2**,
  the 70 refused names + the 27 `mem_equ` operand symbols (§17). Then D7.3/D7.4.
  D7.0d
  (ELF/DWARF for overlays) is tooling-only, is unblocked by E, and can slot in
  anywhere.

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
| F2 | overlay `o_dorg` | `_render_ovr_header` | literal — **it *is* the host DS size** — **counted as `o_dorg` → `data_shift` since D7.0a; bound in D7.0c (was labelled D7.1b)** |
| F3 | `cseg_<f>` / `data_<f>` / unreached `loc_*`/`leaf_*`/`io_*`/`dos_*`/`string_*`/`api_*` `equ` | `_build_source` | **dynamic ✅** for the MZ images; **134 overlay `equ` lines remain (D7.2)** |
| F4 | `dseg_<o>`, `bss_<o>` `equ` (MZ images) | `_build_source` | **dynamic ✅** (D1; `f4=0`) |
| F4 | `dseg_<o>`, `bss_<o>` `equ` (overlays) | `_build_source` | **dynamic ✅ (D7.1):** the 1231 lines / 647 names collapse into one `%include "labels/host_data.inc"`; the host declares one recipe per offset and the link step probes it (`f4` 1231 → 1). The lone residual is a raw-driver `dseg_` (Appendix C) |
| F4 | `psp_<o>` `equ` | `_build_source` | **inert ✅** (D0) |
| F4 | host DS-size immediate (`0x9098` in `ds`, `0x2afe` in `vinstall`) | `_build_source` | **dynamic ✅ (D7.0b):** rewritten to `__zdseg_end` (`ds_size_imm` 7 → 0); the `; dssize` tag remains the regression guard |
| F5 | `times <N> db 0` gap to `data_origin` | `_render_data_block` | **dynamic ✅** (MZ images); 3 overlay pads remain (D7.3) |
| F5 | trailing pads | `_render_data_block` | literal (unless an anchor exists) |
| F6 | numeric `dw 0x<value>` inside a `literal` table | `_inject_jump_tables` | **inert ✅** (D0; tagged) |
| F7 | unrecognized pointer words in data (numeric `dw` without the `literal` tag) | `_render_data_block` / `_inject_jump_tables` | **DONE for the MZ images (D4–D5); `f7=0`.** The remaining "moves under an edit" work is the *code-immediate* class — unmeasured (§0.3) |
| F8 | MZ relocation-table offset word | `hdr[28:]` | **in scope** |
| F9 | unproven immediates (`_fmt_imm`) | `format.py` | waiver |
| F10 | `; 0x<F>` offset comments | `_render_records` | waiver (cosmetic) |

F3 and F5 are what actually break under the `nop` probe; F1/F2 must be fixed for
the resulting file to be loadable. F6 is inert; F8 is in scope. F4 is done for
the MZ images (D1) **and for the overlays (D7.1 — the host-owned shared DS name
map, `f4` 1231 → 1)**; F3 for the overlays is **D7.2**. F7 is done for the MZ
images; its only open extension is the code-immediate class — D7.0b bound the
host DS-size slice of it (`__zdseg_end`), while the general F4-immediate class
still has no counter and therefore no scheduled work (§0.3).

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
(e.g. the 13 overlay headers emit `dw __zdseg_end`, whose value
`.cache/<project>/labels/host_values.inc` supplies).  This is how the 13
`o_dorg` origins left the gate honestly.  **D7.1 (done)** extends the same route
to the whole overlay data family: the host exports the shared DS name map
(`host_data.inc`, 689 names) and the link step probes it, and the code-handle
table (`host_calls.inc`) moves onto the same re-probed link step (§17 D7.1).

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
dseg_0c6c equ __zdseg_0c6c - __zdseg_start
bss_0cf6 equ (__zimage_end - __zdseg_start)
bss_830c equ (__zimage_end - __zdseg_start) + 0x7616
```

- `dseg_<o>` — a label `__zdseg_<o>` sits at file offset `data_origin + o`, so
  the symbol is the byte's DS offset relative to `__zdseg_start`. It follows
  the byte when data is inserted before it (and stays put when only code grows).
- `bss_<o>` — BSS is not file-backed, so there is no byte to label. The symbol is
  the (dynamic) file-backed data size `__zimage_end - __zdseg_start` plus its
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
  becomes `run_start - __zdseg_start + delta`, so the literal stays whole
  instead of being sliced into hex fragments. This is a **rendering fix only** —
  such a reference is not really a data object (root cause in Section 5d). Only
  two references need it in the whole corpus (`vinstall` `push/pop word
  [0x2e]`/`[0x30]`, the Aztec `fexec` PSP saved-stack idiom, which sit inside
  `'1-VGA/MCGA (256 Color)'`):

  ```nasm
  dseg_002e equ __zstr_0025 - __zdseg_start + 0x0009
  dseg_0030 equ __zstr_0025 - __zdseg_start + 0x000b
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
| data anchors | `__zdseg_start` / `__zimage_end` / `__zdataseg_para` (`lib/compare/render.py`) | the labels DS-offset expressions will hang off (D1) |

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

Pass 1 and D0–D5 are complete, and D7 is under way (D7.0a–e and **D7.1 done**;
**D7.2, below, is the next gate-moving step**). **D7 is the only step that moves
the census.** **D6 is dropped** (§0.4).

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
| D7.0b | bind the 7 DS-size immediates to `__zdseg_end` | ✅ DONE (2026-10-12) | **−7** |
| D7.0c | pre-NASM link step: host values → `.cache`; `elf-rebuild` = full rebuild | ✅ DONE (2026-10-12) | **−13** (`o_dorg`) |
| D7.0d | ELF/DWARF for overlays + drivers (debug tooling) | ▶️ **NEXT** | 0 |
| D7.0e | one shared host-call table (13 per-overlay copies → 1) | ✅ DONE (2026-10-12) | 0 |
| D7.1 | host-owned shared DS name map + code handles on the link step | ✅ DONE (2026-10-13) | **−1230** |
| D7 | overlays and raw drivers (incl. overlay F3 + `o_corg`) | ▶️ after D7.0d | **−166 (→ 0)** |

`gate impact` is the change in `code_shift + data_shift`; it is deliberately a
separate column so effort and effect cannot be confused (§0.1, Section 21).

### D1 — F4 `dseg_`/`bss_` data labels  ✅ DONE (2026-10-12)

**What it did.** `_build_source` (`render.py`) now binds every MZ data-segment
operand to the byte it names (details in Section 5b). `dseg_<o>` becomes
`__zdseg_<o> - __zdseg_start` with a label placed at file offset
`data_origin + o`; `bss_<o>` becomes
`(__zimage_end - __zdseg_start) + (o - bss_boundary)`. Only the MZ branch
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
  `(__zimage_end - __zdseg_start) + delta` (the heap-base pointers);
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
    `__zdseg_end equ (__zimage_end - __zdseg_start) + __zbss_size`
    (the total data-segment size: file-backed data + reserved BSS), and
    `_render_records` rewrites any code immediate equal to the DS size to
    `__zdseg_end` (the `; dssize` tag stays only as the regression guard, so
    the bucket can rise again if a future image lacks the anchor). `ds_size_imm`
    7 → 0; `code_shift` 172 → 165; `total` 1416 → 1409; `make verify DSAVANT`
    18/18; unit suite 250 OK; a data byte now grows every stored size by one
    (`test_ds_data_insert_moves_the_ds_size_immediates`). Scope: this binds the
    immediates *within each MZ image*; the cross-binary overlay `o_dorg` export
    was D7.1b, resolved by the D7.0c link step below.
- **D7.0c — the pre-NASM link step.** ✅ DONE (2026-10-12).  The decision that
  unblocks D7.1/D7.2 and closes the cross-module gap: host-derived
  *numbers* leave the source tree and move to `.cache`; the sources keep only
  *names*.  This is ddisasm's relocation model
  made real — the host is the single source of truth, a link step resolves it,
  and a host edit *does* propagate.  (Previously the overlays could only hold a
  frozen copy, because a separate assembly cannot see the host's labels.)

  **The split, as implemented.**
  - `asm_<project>/` — **source**, hand-editable, **names only**.  The 13
    overlay headers now emit `dw __zdseg_end`; the symbol is a name, not a
    number.
  - `.cache/<project>/labels/host_values.inc` — `; AUTO-GENERATED`, **numbers
    only**: `__zdseg_end equ 0x9098`.  Every overlay `%include`s it by name
    (`%include "labels/host_values.inc"`, through the `.cache` include root —
    `lib/link.py::include_args`).

  So `asm_DSAVANT` = source (names + logic, editable) and `.cache` = numbers
  (addresses we believe in, regenerated).  **Corollary, and a diagnostic:** a
  *non-address* that turns up in `.cache` means the classifier is wrong — fix it
  with a `not_pointers` sidecar, never by hand-editing an address.
  *(The plan first sketched an `asm_DSAVANT/inc/hostrefs/<binary>.inc` alias
  layer; the geometry symbol needs no per-binary alias, so D7.0c ships one
  project-wide values file.  D7.0e added the code-handle table beside it and D7.1
  adds the DS name table — the link step re-probes all three.)*

  **The link step (`lib/link.py`, driven by `make/link.py`; runs before nasm on
  every build/rebuild/elf-rebuild).**
  1. Assemble the *edited* host and read its symbol values.  `probe_symbols`
     writes a throwaway probe (`%include "ds.asm"` + a tail of `dw <symbol>`
     stamps), assembles it with the tree root on the include path, and reads the
     tail words little-endian — fully tool-independent (NASM only; no listing
     parser).  Verified: `__zdseg_end` = `0x9098`.
  2. Write `.cache/<project>/labels/host_values.inc`; then assemble all
     binaries, which resolve the symbols from it.  A probe failure is a hard
     `SystemExit` — the build must not fall through to NASM with a missing or
     stale values file.

  **Why this is honest, not census-gaming.**  The value is computed from the
  edited host at build time, exactly as a linker resolves a relocation, so it is
  no longer a *hand-typed* number.  The gate counts hand-typed numbers, so it
  drops it; the link step's resolved values are **reported separately, not
  scored** (§5).  This took `o_dorg` 13 → 0; the overlay's data `equ`s follow the
  same route in D7.1.

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

  **Volume (measured 2026-10-13).**  `total` 1396 = `code_shift` **165** (`f1` 2
  MZ header, `f2` 13 overlay size/entry fields, `f3` 134 code `equ`, `f5` 3 pads,
  `o_corg` 13) + `data_shift` **1231** (all of it `f4`) + `inert` 248.

  The `data_shift` 1231 are **647 unique names re-declared in every overlay that
  touches them** — `bss_*` 1120 + `dseg_*` 111 `equ 0x…` lines across the 13
  masters, the same duplication D7.0e removed for the code handles.  By region:
  **45** host file-backed data (`< 0x0cf6`), **723** host BSS (`0x0cf6 …
  0x9098`), **462** the overlay's own data (`≥ 0x9098` = `o_dorg`).

  **The host already derives this name family.**  `ds.asm:31` is
  `dseg_0002 equ __zdseg_0002 - __zdseg_start`, and `ds.asm:97` is
  `bss_5218 equ (__zimage_end - __zdseg_start) + 0x4522`.  Measured:
  `probe_symbols(asm_DSAVANT, ds.asm, [bss_5218])` → `0x5218`;
  `__zimage_end - __zdseg_start` = `0x0cf6`; `__zdseg_end` = `0x9098`.
  So the link step can already resolve this family — but the host declares only
  **98** of the 647 names (56 overlap with the overlays'), so the overlays invent
  the rest as literals.  Closing that gap is D7.1.

  **Outcome.**  `o_dorg` 13 → 0; `data_shift` 1244 → 1231; `total` 1409 → **1396**;
  `make verify DSAVANT` **18/18**; unit suite **268 OK**.  The acceptance property
  is tested end-to-end: inserting one byte into the host's data makes the link
  step write `__zdseg_end equ 0x9099` and the rebuilt `VBASE.OVR` carry
  `o_dorg = 0x9099`
  (`LinkStepTests::test_overlay_o_dorg_follows_a_host_data_edit`).  `make build`
  stays a fixed point, and `make elf-rebuild` reproduces the tree byte-for-byte
  (no drift).

- **D7.5 — assemble at the runtime address (`vstart`); overlays include the
  host.** ✅ DONE (2026-10-13).  Bytes unchanged (all 18 binaries `cmp`-identical
  to the pre-change build; `make verify` 18/18).  The generated source used
  `org 0`, so a label's value was its file offset and an overlay's near call to a
  host routine needed a coordinate-shifted fake value (`host_off - cs_origin -
  o_corg + 14`, mod 64K -- e.g. `ds_dos_con_in_noecho equ 0xea50` for a routine
  at CS `0x3a97`).  An overlay runs in the host's code segment from `o_corg`, so
  its file offset 0 is `o_corg - 14`.  Now:
  1. Each image has `VBASE` (virtual address of file offset 0: overlay `o_corg -
     14`, MZ `-start_offset`; drivers keep `org 0`) and starts with `section
     .text vstart=VBASE`.  `IMAGE_BASE equ start_offset + VBASE`, so every
     `label - IMAGE_BASE [+ o_corg]` is unchanged text.  Code-target `equ`s are
     `0x<off> + VBASE`.  `make elf-rebuild` blanks the section line and rewrites
     the image's own `VBASE equ` to 0 (ELF has no `vstart`; plan.md E).  Answers
     the §18 "`o_corg`" question:
     `o_corg` is the load address inside the host CS (verified: `VBASE.OVR`'s
     `call` at file 0xb8 lands exactly on `aztec_csav`, CS `0x4452`).
  2. An overlay pulls the host source in, under `nobits`, through the generated
     `inc/host_symbols.inc` (`%define HOST_SYMS_ONLY`, the host's own `VBASE`,
     `__zimage_end` renamed; plan.md E2), so host routines, `__zdseg_end` and
     the shared `dseg_`/`bss_` names resolve to
     the host's real labels.  The three `.cache` tables (`host_calls.inc`,
     `host_values.inc`, `host_data.inc`) and the pre-NASM link step are gone;
     `lib/link.py` keeps only the include args, `host_name` and the union of the
     DS offsets the overlays reference (the host still declares one recipe per
     offset).  NASM needs `-w-other` for the nobits include.
  3. The host's address-derived names (`loc_08f2`, `app_03b8`, ...) are
     prefixed with the host name (`ds_loc_08f2`) so they cannot clash with an
     overlay's own generic names (`lib/names.py`; applied by `main/runner.py`
     just before the host is emitted).  Named routines keep their names, so an
     overlay's `call dos_con_in_noecho` finds `dos_con_in_noecho:` in
     `ds/dos_con_in_noecho.asm`.
  Edit propagation is tested without any table: a host data edit moves
  `o_dorg` and every `dseg_` operand; a host code edit moves an overlay's call
  displacement (`lib/tests/test_dynamic_addrs.py::HostIncludeTests`).
  Supersedes D7.0c's "values live in `.cache`" for host geometry, D7.0e's table
  and D7.1's probed `host_data.inc`; D7.0d (ELF for overlays) can reuse `VBASE`.
- **D7.0e — one shared host-call table.** ✅ DONE (2026-10-12).  Closes a failed
  start: every overlay used to get its own `<overlay>_foreign_labels.inc`, and
  they were **subset copies of one table** (13 files, 131 names, **0** value
  conflicts) — while the dead `ds_labels.inc` was a 14th copy holding the *host
  offset* instead of the overlay handle (same name, different quantity, one
  `%include` away from a silently wrong encoding).

  **Why one table is enough.**  An overlay's handle for a host routine is
  `host_off → (host_off - host.cs_origin - o_corg + cs_origin) & 0xFFFF`
  (`SegmentModel.host_code_target`, the inverse of `host_code_offset`).  All 13
  overlays share `o_corg = 0x5055` and `cs_origin = 14`, so it is **one affine
  map** — measured: `handle - host_offset` is the single constant **`0xADB9`**
  across all 131 entries.

  **What changed.**  `make/common.py::_write_host_call_table` builds
  `.cache/<project>/labels/host_calls.inc` from the source's exported labels plus
  one overlay model, so the source is the single source of truth; every overlay
  `%include`s it.  `verify.py` prefers the shared table and keeps the
  per-consumer file only as a standalone-generation fallback.  The dead
  `ds_labels.inc` writer (`main/runner.py`) and `write_label_inc`'s `prefix`
  argument are gone, and so are the 121 bogus `dispatch_*` entries the old
  cross-ref injection wrote at *handle* offsets (the real fallback lives in
  `overlay_host_aliases`, so the injection was redundant).

  **Outcome.**  **0** census change (`code_shift` 165, `data_shift` 1231,
  `total` 1396) with `build_out` **byte-identical**; `make verify DSAVANT` 18/18;
  unit suite 275 OK; `make build` a fixed point.  The table's values are still
  frozen host offsets — **D7.1** makes them derived.

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

- **D7.1 — bind F4 for the overlays: the host-owned shared DS name map.**
  ✅ **DONE (2026-10-13).**  `data_shift` 1231 → **1**.  The data segment is
  shared and the *host* owns it, so the host exports the DS name map and the
  overlays `%include` it instead of re-declaring ~1230 literal `equ`s (13 subset
  copies of 647 names — exactly the D7.0e shape, one level down).  Measured
  2026-10-13:

  | region | occ. | names | before | host recipe |
  |---|---:|---:|---|---|
  | host file-backed data (`< 0x0cf6`) | 45 | 17 | `dseg_X equ 0xX` | `__zdseg_X - __zdseg_start` (a host label at `X`) |
  | host BSS (`0x0cf6 … 0x9098`) | 723 | 211 | `bss_X equ 0xX` | `(__zimage_end - __zdseg_start) + delta` |
  | overlay-own data (`≥ 0x9098`) | 462 | 419 | `bss_X equ 0xX` | `__zdseg_end + delta` |

  Both `delta`s are **stable under exactly the edits that matter**: grow the
  host's initialized data and `__zimage_end` / `__zdseg_end` move while the
  `delta` stays.  This is the same form `ds.asm` already uses for its own BSS
  names, so the overlays end up *exactly as derived as the host*.

  **Composition correction.** The 1231 was **1230 in the 13 masters + 1 in
  `ega.asm`** (the design note attributed all 1231 to the masters; the extra
  `dseg_` is a raw driver's).  The 45 / 723 / 462 split is the masters only.

  **Mechanism, as implemented (one deviation, measured).** The design's "pre-scan
  a sibling of `detect_cross_refs`" was **not** used: a capstone linear scan of
  the original overlays is not a superset of the classified data operands
  (measured: it misses 208/218 names on `vbase`, 78/160 on `vmnpc`), so it would
  under-declare and break the build.  Instead the union is collected from the
  overlay generation itself, which already computes the exact `mem_equ`:

  1. `verify()` (`lib/compare/verify.py`) marks an overlay with a host as
     host-owned: it emits `%include "labels/host_data.inc"` instead of the
     `dseg_`/`bss_` `equ`s, and returns their `{name: offset}` set in
     `stats['host_data_refs']`.  `main/runner.py` writes it to
     `.cache/<project>/labels/<overlay>_hostdata.json` (the data analogue of
     `--export-labels`).
  2. `make/build.py::asm_app` aggregates the per-overlay exports
     (`lib.link.collect_host_data`) and **regenerates the host in place** with
     `--host-data-offsets=<union>`; its code labels are unchanged, so the
     consumers' foreign maps stay valid.
  3. `render.py::_build_source` gives the host one recipe-based `equ` per offset
     (`dseg_X` → a placed label or string anchor; host BSS → the file-backed
     size + delta; overlay-own → `__zdseg_end` + delta).  The host declares
     **689** names = the 647 overlay-referenced ∪ its own 98 (56 overlap).
  4. The link step (`lib.link.write_link_values`) scans `ds.asm` for the
     `dseg_`/`bss_` declarations (`host_data_names`), probes them, and writes one
     `.cache/<project>/labels/host_data.inc` (689 numbers), re-probed on every
     build — the same move as `host_values.inc`.

  **All 45 file-backed offsets were bound** (the `dseg_X` recipe reuses the D1
  label/string-anchor machinery), so the required "45 → 0" target was met and
  exceeded.  The single residual is a **raw driver** whose DS is established at
  run time (Appendix C), not host-owned; it is the one parked `data_shift`
  occurrence:

  > **Parked backlog (1 occurrence / 1 name).** `asm_DSAVANT/ega.asm:16`
  > declares `dseg_24fd equ 0x24fd`, referenced once at
  > `asm_DSAVANT/ega/io_loc_2e35.asm:8` (`mov bx, dseg_24fd`).  `ega` is a raw
  > `.DRV` (type `raw_drv`), so its data segment is only known at run time; the
  > host-owned recipe cannot apply.  Reason: a non-host DS reference, not an
  > overlay name.  Candidate for the D7.3 `inert` reclassification.

  `data_shift` **1231 → 1** (not 0): `ega` is a different class from the overlay
  map, and moving its value to `.cache` without deriving it would be
  census-gaming.

  **Code handles folded onto the link step.**  `host_calls.inc` used to be baked
  at generation time from `ds_labels.json`; it is now re-derived by
  `lib.link.build_host_calls` (probe the host's code labels **by name** out of
  `ds.asm`, apply `SegmentModel.host_code_target`), so a host edit reaches the
  overlays on the `elf-rebuild` loop and all three tables refresh together.  The
  `_write_host_call_table` generation-time builder is gone and `verify.py` always
  names the one shared table.  The rebuilt table is **byte-identical** (322
  entries; the exported map is a superset and `probe_labels` keeps a recorded
  offset for names `ds.asm` no longer defines).

  **Acceptance and gate.**  `LinkStepTests::test_overlay_data_name_follows_a_host_data_edit`
  inserts one byte into the host's initialized data, re-links, and shows
  `dseg_0002` and all 14 encoded `les bx, [dseg_0002]` references in `vbase`
  move by one; `HostDataTableTests` proves every overlay `dseg_`/`bss_` name is
  defined by the one table and no master declares one;
  `HostCallsTableTests::test_table_is_reprobed_from_the_current_host_source`
  proves the handle table equals a fresh probe.  `make verify DSAVANT` **18/18**;
  unit suite **287 OK**; `build_out` **byte-identical**
  (`524a88fc…`); `make build` a fixed point; `make elf-rebuild` reproduces.
  `total` 1396 → **166**.

  **Known residual (unchanged).**  For overlay-own data the `delta` stays frozen,
  so a byte inserted into the *overlay's own* data block still will not move that
  name — the stronger label-at-each-offset variant (D7.2/D7.4 territory).

- **D7.1 (the 13 `o_dorg` fields)** — ✅ DONE (via D7.0c); *this half carried the
  label D7.1b before D7.1a/D7.1b were reassigned above.*  Each `o_dorg` *is* the
  host DS size, so the overlay header emits `dw __zdseg_end`, resolved by the
  link step into `.cache`.  (`dw` → a *name*; the value left the tree.)
- **D7.2 — bind F3 and `o_corg` for the overlays.**

  **D7.2a/D7.2b — the overlay load origin (`o_corg`): ✅ DONE (2026-10-13).**
  `code_shift` 165 → 152 (net −13; the family was 40 items, §0.1 ‡).

  **What `o_corg` actually is (measured).** The host's last resident routine is
  `aztec_rsvstk` (`ds.asm`, included at file offset 0x5248, 13 bytes), so the
  host's resident code ends at **file 0x5255**, and the 44 KB of zeros that
  follow (`times (0x10160 - ($ - $$)) db 0`, the pad that puts the data segment
  at `__zdseg_start`) begin exactly there: `0x10160 − 0x5255 = 0xaf0b`, the
  pad's own count.  In the host's coordinate frame (its labels are
  `file − cs_origin`, `cs_origin = 0x200`) that is **0x5055 — exactly the
  overlays' `o_corg`** and exactly what the host's own loader demands:
  `ds/aztec_ovloader.asm` does `cmp word [bp-0x10], strict word 0x5055` and
  rejects an overlay whose `o_corg` is below it.  So `o_corg` is not a magic
  number: it is the end of the host's resident code, and an overlay loads
  immediately after it.

  **The class was under-counted: 13, really 40.** `0x5055` was written **three**
  ways per overlay -- the header field (counted), the `VBASE` macro that feeds
  `section .text vstart=` (not counted: no `f*` prefix), and the addend inside
  `o_entry` (`dw <entry> - IMAGE_BASE + 0x5055`, not counted: the field rule
  wants a bare literal) -- plus once in the host's loader.  D7.2a therefore added
  the counter (and the `; ocorg` emit-time tag, the D7.0a pattern) *before*
  binding: the census rose 165 → 192 as a documented correction, and D7.2b
  removed all 40.

  **The binding.** The host emits its resident-code end at the gap as an
  **absolute** `equ`, so an overlay can use it where nasm demands a value known
  before layout:

  ```asm
  ; End of the host resident code (the overlay load
  ; address, o_corg in an overlay header).
  __zresident_end equ ($ - $$) + VBASE
  ```

  `$ - $$` is a section-local difference (absolute), which is why this works:
  a *label* there is section-relative and nasm rejects it as
  `section attribute value must be a critical expression` for `vstart`.  The
  overlays then read (each of the 13):

  ```asm
  %ifndef VBASE
  VBASE equ __zresident_end - 0x000e
  %endif
  section .text vstart=VBASE
  ...
      dw __zresident_end                                ; 0x5055 ; o_corg
      dw string_loc_9330 - IMAGE_BASE + __zresident_end ; 0xe377 ; o_entry
  ```

  and the host's loader becomes `cmp …, strict word __zresident_end`.  Because
  `vstart` needs the anchor *before* the section directive, the host include
  moved from the end of each overlay master to just after `bits 16`; the block
  shadows `VBASE` for its own duration and clears it, exactly like `IMAGE_BASE`
  (see **E** below for how `make elf-rebuild` then supplies its own origin).
  `__zresident_end` is emitted only for a **non-empty** code→data gap,
  so `vinstall` (gap length 0) is untouched.

  **Acceptance and gate.** `HostIncludeTests::test_overlay_corg_follows_a_host_code_edit`
  inserts one byte in the host before `aztec_csav` and shows the overlay's
  `o_corg` field move 0x5055 → 0x5056 and its `o_entry` follow, while the
  near-call displacement to the host routine stays put (the overlay's whole frame
  moved with the host -- so a host *code* edit changes the load origins and
  nothing else).  `make verify DSAVANT` **18/18**, unit suite green, all
  13 overlay headers byte-identical to the originals, `make elf-rebuild`
  reproduces.  `code_shift` 165 → **152**, `total` 166 → **153**.

  **D7.2c — the F3 `equ`s → in-place labels. ✅ DONE for the renderer half
  (2026-10-13); the residue is measured and named (D7.2c-2, below).**
  `code_shift` 152 → **126**, `f3` 134 → **108**, `total` 153 → **127**.

  **Mechanism.** A sidecar name names a *byte*, so the master should carry a label
  there -- and the value then follows an edit -- instead of an absolute `equ` that
  breaks the moment the code above it moves.  `render._place_label` routes every
  `label_map` name through `_ensure_global_label`, the splitter the D1 data anchors
  already use (its docstring names this rewrite), and falls back to the literal
  only where the byte cannot hold a label.  `immediate_labels` is deliberately
  *not* routed: its value is a raw offset immediate (`vga`'s
  `data_46d9 equ 0x46d9` under `org 0`), which a label (`VBASE + off`) would
  change for any `vstart` image -- 17 lines, kept on purpose.

  **Outcome, exactly.** 26 of the 134 names now sit on their byte as a label:
  `26 placed + 70 refused + 38 never routed = 134`.  The 38 are the 21
  `cseg_`/`data_` *operand* symbols the `mem_equ` block spells literally plus
  `vga`'s 17 `immediate_labels`.  The 70 refusals are structural:

  | reason | count |
  |---|---:|
  | the byte renders as **data** (a code label there would put code back into bytes the arbiter removed) | 55 |
  | strictly inside a decoded instruction | 15 |
  | outside every record | 2 |

  Of the 55, 31 are inside a `jump_table` record (the driver dispatch tables) and
  24 inside a data block.

  **Why the data rule.** `verify` already refuses to reintroduce code into bytes
  the arbiter ruled data -- `code_loss` counts exactly those names and
  `test_hard_classification.test_verify_respects_final_data_bitmap_for_stale_instructions`
  pins it (`loc_0010` must not appear as a label).  Placing the label regressed
  that test, which is how the rule was found; `_place_label` now refuses when the
  covering record renders as data *and* the name is not a raw data name
  (`data_`/`dseg_`/`bss_`/... may anchor data -- that is the D1 path).

  **Discovery — the `vga` decode gap.** 15 of the 70 refusals are `vga` names on
  bytes `0x0004`-`0xa8d`, which the renderer emits as raw `db`: the driver's
  dispatch table (a run of `e8 .. cb` = `call ...; retf` stubs) *followed by real
  code* (at `0x7fd`: `mov ax, cs` / `mov ds, ax` / `mov dx, "SAVEAREAS out of ..."`
  / `int 21h` / `int 21h`) and strings.  The sidecar calls those addresses
  `dos_con_loc_*` (code); the arbiter says data.  That disagreement is pre-existing
  and is the single biggest reason the residue is 108 rather than ~84 -- it is a
  *decoding* question, not a naming one, so it belongs to D7.2c-2.

  **What it buys.** A name that is a real code target now moves with an edit.
  `InsertBytePropertyTests.test_driver_branch_follows_an_inserted_byte` copies the
  tree, inserts one byte *between* `play`'s `jb` at `0x079a` and its `loc_07a2`
  target, and asserts the displacement grows by exactly one while the opcode stays
  put -- with the old `equ` the jump would have landed a byte short.  That is the
  acceptance bar ("insert a byte, still a coherent image") measured at a real site.

  **Verification.** All 19 built `.EXE`/`.OVR`/`.DRV` byte-identical to before the
  step; `make verify DSAVANT` **18/18**; unit suite **322 OK**; `make build` a fixed
  point; `make elf-rebuild DSAVANT` unchanged.  New unit tests:
  `test_dynamic_addrs.NamedAddressPlacementTests` (a named record start becomes a
  label; a code name inside a data block keeps its `equ`; a data name inside one is
  placed; a name inside an instruction keeps its `equ`).

  **D7.2c-2 — the residue (70 + 38), still open.** In the order the numbers
  suggest: (i) the `vga` decode gap above (15 names, a real decoding question);
  (ii) the 21 `mem_equ` `cseg_`/`data_` operand symbols -- code-segment *variables*
  read as `[cs:cseg_0295 - IMAGE_BASE]`, i.e. data living in the code stream, which
  wants carving as data rather than a label; (iii) the 15 mid-instruction names;
  (iv) the 2 outside every record.  None is a rendering trick away: each needs the
  byte's *kind* decided upstream.

  **D7.2c-2a — the counters, and what they say. ✅ (2026-10-13).** Census-neutral
  (127) and byte-identical, so the next step can be judged on *meaning*.  Of the
  113 named frozen addresses **61 are used, 52 inert**; **`hidden_flow` = 161**
  (per binary: `ega` 54, `vinstall` 38, `vmexe` 21, `play` 20, `vpcvw` 11, `vga` 9,
  `vdopt` 5, then 1s).  Both live in `BASELINE_TOTALS` and may only fall.  The
  library side is `records.count_name_use` (whole-tree, because a name declared in
  a master is used in a fragment; comments, `%` directives and `%include` paths are
  not references — a fragment is named after the label it defines) and
  `records.count_hidden_flow` (walks only the bytes between the source's
  instruction offsets, so a displacement inside a rendered instruction can never be
  a site; a lower bound, since the walk stops at the first byte that does not
  decode).

  **A — the driver dispatch tables are declared. ✅ (2026-10-13).** `play` (8
  entries), `ega` (55) and `vga` (**55** — the declaration said 48, seven entries
  short, so entries 48..54 were neither declared nor forced).  Byte-identical and
  census-neutral: it is a *declaration*; seeding the handler targets changes
  nothing, because those handlers are decoded anyway.  What it buys is the
  structure (entry *k* is at `3 + 4k`, with a count) that the entry naming and the
  `DRV` probe below need.

  **Measured, and deliberately *not* landed here: the forced-region variants are
  not neutral.**  Forcing `vga`'s table to code — or extending its `force_data` to
  the true 55-entry extent, or declaring `ega`'s — perturbs the decode *cascade*:
  ~1150 changed lines across 17 `vga` files; 824 bytes differ by
  semantically-equivalent encodings (`mov bp, sp` re-encodes as `89 e5`), which
  `make verify` accepts (still 18/18); and the counters move both ways — names
  *used* 61 → **84** and inert 52 → **32** (the goal's direction), but the census
  127 → **133** and `hidden_flow` 161 → **206**.  That is the `vga`/`ega` decode
  step (D7.2c-2's item (i)) arriving early, and it needs its own review of the
  newly decoded regions — not a side effect of a table declaration.

  **The `DRV` probe: answered — the host both loads the modules and references
  their entries.**  `DS.EXE` reads each module to `segment:0x100` and calls it:

  * `ds/ds_dos_file_loc_35f5` (0x35f5) opens **`play.drv`** (a hardcoded name
    pointer, image 0x33ec), reads 0x1d00 bytes to `[cs:cseg_2f56]:0x100`, closes,
    then writes the module's segment into **8** far-pointer slots at `cs:0x2d67`.
  * `ds/ds_dos_file_loc_3534` (0x3534) does the same for the **display driver**,
    whose name comes from the table at 0x3507 — `vga.drv`, `ega.drv`, `cga.drv`,
    `herc.drv`, `tandy.drv`, picked by BIOS video mode in `bios_get_video_mode`
    (0x30f7), with `ds/dos_con_loc_35b8` ("Unable to load display driver") as the
    failure path.  It reads 0x5300 bytes to `[cs:cseg_2f52]:0x100` and patches
    **55** segment words at `cs:0x2d87`.
  * The *offset* halves are pre-set in the host's image to `0x100 + 3 + 4k`:
    play's ladder is `0x103, 0x107, …, 0x11f` (8 slots), the display table
    `0x103 … 0x1df` (**56** — the drivers ship 55 entries and the loader patches
    55, so the last slot is a spare the host never calls).
  * And the host calls through them: `call far [cs:cseg_2f87 - IMAGE_BASE]` and
    friends.  The "far-call table" I had taken for cached BIOS/DOS vectors is, in
    this range, the **driver dispatch table** — that reading was wrong.

  So entry *k* of a loaded module sits at module offset `3 + 4k`, the host holds
  `seg:0x100 + 3 + 4k`, and the module is `org 0`: the entry offsets are
  **layout-derived only because the host pins them** — the module cannot derive
  them from anything inside itself.  That is exactly the "explicitly declared ABI"
  half of the criterion, so the honest end state for `loc_0007` (and the other
  inert entry names) is a *declared pin plus an assertion*, not a label.  The pin
  is now a test: `DriverDispatchAbiTests` compares each declared `dispatch_table`
  count with the thunks actually at `3 + 4k` — which is what the old `count: 48`
  failed — and checks the host's ladders carry the declared offsets.  The host is
  therefore a *consumer* of every driver (its two ladders are the symbols the entry
  naming would bind to), and the loader also copies a callback table into the
  module's segment, so the relation runs both ways.

  **D7.2c-2c — vga decoded to ega's depth: the dispatch `force_data` was
  self-defeating. ✅ (2026-10-13).**  The decode gap was not a decoder limitation
  but a sidecar/phase interaction.  VGA carried `force_data 0003..00c2` ("VGA API
  dispatch table (48 × E8 rel16 CB)"), and `DispatchTablePhase` skipped every entry
  whose bytes are `hard_data` (`lib/phases/dispatch.py:64`) — so the 48 entries it
  forced to data were exactly the 48 whose *handlers* it then never seeded.  EGA,
  with no `force_data`, decoded all 55 because its handler targets were seeded.
  Measured before: VGA 23 fragments / **452** instruction offsets, EGA 85 / **5830**
  — the same construct.

  **The change — three parts.**
  (1) Drop VGA's `force_data` over the table.
  (2) Declare the data *after* the table: `force_data 00df..0292` — the
      (value,size) pairs and the 8-entry host callback ladder up to the first
      routine at 0x0293 (both drivers are byte-identical there) — because once the
      entries are code the decoder runs past the last one into it (`80 41 00 00`
      decodes as `add byte [bx + di], 0`, which cannot be re-encoded; the
      renderer's guard caught it and refused to write the tree).
  (3) `DispatchTablePhase` now seeds the *entry* address as well as the handler it
      calls.  An entry is an executable `call handler; retf` thunk — play's table
      has always rendered that way — and the `rel16` is read from the image, so the
      encoding is unchanged.  The handler is seeded regardless of `force_data`,
      since it is code whatever the table bytes are rendered as.

  **Measured effect.**  VGA 23 fragments → **79**, 452 offsets → **5462**; EGA
  5830 → **5938** (+108 = 2 instructions per entry, the 54 entries).  `hidden_flow`
  **161 → 98**: ega 54 → **0** and vga 9 → **0** — the two tables' entries were the
  whole of it, at identical offsets — with the other 98 (`play` 20, `vinstall` 38,
  `vmexe` 21, `vpcvw` 11, `vdopt` 5, `vmaze`/`vpclv`/`vpcmk` 1) unchanged.
  `names_used` 61 → **84**, `names_inert` 52 → **32**.  Census **127 → 133**
  (`code_shift` 126 → 132, `f3` 108 → 114, `total` 133): the decoding *reveals* six
  `cseg_` code-segment globals that VGA code addresses (`cseg_0cac`, read at three
  sites) — the class EGA already carries and the class item (ii) exists to resolve.
  That is the one deliberate re-baseline: the census floor rises once, the classes
  below it only fall.

  **Verification.**  `make build DSAVANT` ×2, the second an exact fixed point (no
  file differs); `make verify DSAVANT` **18/18**; suite **332 OK**.  Only VGA.DRV's
  assembled bytes move (753 against the pre-change assembly), and its distance from
  the original becomes **824** — EGA.DRV's is 862.  The toolchain re-encodes
  `8b ec` → `89 e5` and friends everywhere (19 910 bytes across the tree, 1373 in
  DS.EXE alone), so this is VGA reaching its twin's accepted fidelity, not a new
  class of drift.

  **D7.2c-2d — a declared handler owns its fragment and its name. ✅
  (2026-10-13).**  Decoding the drivers exposed a *rendering* regression from
  D7.2c-2c and a pre-existing fragility behind it.  Two facts had to be true of
  every declared handler and neither was: (i) it owns its fragment, (ii) its name
  is the category of its own body.  Both are ABI facts -- the table says these
  addresses are entries -- so both are layout-derived, not heuristics.

  **What broke.**  In ``play``, D7.2c-2c's entry seeding turned the 32-byte entry
  block into known code, so ``CascadeTargetPhase`` no longer promoted it
  (``cascade.py:88-125``: a *DATA*-follows-*CODE* candidate) and
  ``RecursiveDescentPhase``'s worklist skips a dispatch seed that still looks like
  data (``recursive.py:372-378``: ``hard_path`` false, ``data_boundary`` low).
  The eight handlers therefore lost the ``direct_call`` attribution their
  categorization depended on -- ``bounded_targets`` is
  ``{reason == 'direct_call'}`` (``runner.py:202``) -- and fell to
  ``categorize_call_targets``'s fallback: a **raw 128-byte window**
  (``categorize.py:243-252``) that is bounded by neither code nor functions and
  reads straight into the following data.  Measured on the image, that window is
  what renames ``leaf_loc_0154`` → bare ``loc_0154`` (it sees calls past the
  ``ret``), ``leaf_loc_016e``/``leaf_loc_0183`` → ``io_loc_*`` (the stray
  ``out 0x43/0x40`` bytes live in ``io_loc_023f``, 100-odd bytes away) and
  ``bios_disk_loc_0294`` → ``io_loc_0294``.  A name-less handler is not a split
  root (``splitting.py:29``, ``analysis.py:16``), so ``strlen.asm`` swallowed
  ``loc_0154`` -- the user's report.  Only ``play`` changed (ega/vga fragments:
  **0** added, renamed or removed by D7.2c-2c), which is the fingerprint of the
  cascade path: only play's table region was ever promoted from data.

  **The fix, both halves declared.**  ``DispatchTablePhase`` now records the
  handler offsets it declares (``ctx.dispatch_handlers``, ``model.py``), and
  ``runner`` uses that one set twice: (i) as ``bounded_targets``, so a declared
  handler is categorized by **walking its own body** (``_function_instructions``,
  bounded by the classifier's code and the function roots) rather than by the
  window; (ii) as ``declared_roots`` threaded to ``_select_split_ranges``
  (``splitting.py``), so it is a split root **even when its label stays a bare
  ``loc_<addr>``**.  The gate stays on the name shape for *undeclared* roots: the
  tree holds ~1600 bare ``loc_`` branch targets, and one file each is not the
  point.

  **Measured.**  Declared handlers 118 (play 8, ega 55, vga 55):
  **buried 43 → 0**, **category unsupported by the fragment it names 11 → 2**.
  27 names changed, all toward their own body's evidence (play's four above;
  ``ega``/``vga`` 0x0293 ``leaf_loc_0293`` → ``graphics_loc_0293``, whose body the
  window had cut off; ``ega``'s ``dos_con_loc_1490`` → bare ``loc_1490``, an
  ``int 0x21`` it had borrowed from the routine after its ``ret``).  +54 / -11
  fragments (``play/loc_4527``'s ``vga`` siblings included).  **All 19 built
  binaries byte-identical**, census unchanged (132/114/133, ``names_used`` 84,
  ``names_inert`` 32, ``hidden_flow`` 98), ``make verify DSAVANT`` **18/18**, suite
  **336 OK**, and ``make build`` an exact fixed point.  The two counter baselines
  moved once, downward, inside the fix: ``HANDLER_BASELINE`` 43 → **0** and
  11 → **2** (the documented backlog: ``play``'s ``bios_disk_loc_0294`` reaches
  its ``int 0x13`` past the entry at 0x02b3, and ``ega``'s ``graphics_loc_31df``
  is a ``jmp`` thunk into handler 0x04b1).

- **D7.2c-2e — a C override defines every label it names. ✅ DONE (2026-10-14).**
  **Why.** A C override is rendered from the compiler's bytes, and its operands are
  resolved against the object's own label table (``relink``) *plus* the
  disassembly's ``local_labels`` -- a table that names bytes of the **original**
  routine, including targets this code does not branch to. The Aztec compiler
  resolves a short forward branch *itself*, so that target carries no relocation,
  while the emitted text still named a label from the disassembly's table.
  Measured: ``lib/api_idx_000a_JKVP.asm`` ended with
  ``jle short @..api_idx_000a_JKVP.l9`` and never defined ``.l9``; NASM then
  reported the one real line plus a **1152-error** ``label-redef-late`` cascade
  (one undefined symbol destabilizes every later offset). Because the fragment is
  *shared*, both consumers failed (vmexe 1153, vpops 514).
  **The fix.** ``_override_local_labels`` (``lib/compare/coverrides.py``) decodes
  the bytes being emitted and derives the branch targets from them: a target keeps
  the disassembly's name when the offset matches (so the file reads as it did
  before the override), then ``relink``'s derived names, then fresh
  ``@..<label>.lN`` numbered **ascending by target offset**; only relative branches
  need a name at all (an absolute operand is a value, and a bare number assembles
  correctly for it). Any target with no label record gets one defined.
  **Measured.** ``make build DSAVANT`` clean; ``make verify DSAVANT`` **18/18**;
  suite **392 OK**; the emitted fragment is byte-identical to the pre-fix output
  except that ``.l9`` is defined again. Tree-wide guard:
  ``EmittedTreeCoherenceTests::test_every_referenced_local_label_is_defined``
  (``lib/tests/test_dynamic_addrs.py``) checks every ``@..*.lN`` the tree
  references is defined in it (8727/8727), so the class cannot return silently:
  the pipeline's own checks do not assemble, so without it ``make build`` is where
  a dangling reference surfaces -- as the cascade above.

- **C — hand-written C replaces routines (the C workstream). ▶️ IN PROGRESS
  (2026-10-14).** Not a census step: the covered routines' bytes must be
  **identical**, so the census does not move (it moved only where a routine's
  instructions stop being emitted as ``db``; see below).

  **What it is.** ``asm_DSAVANT/**/*.c`` is *input* and the routine it names is
  rendered from the Aztec compiler's bytes instead of the disassembly. 27 sources
  today (ds 12, vinstall 13, ``lib/`` 2). The wiring is by convention, not by the
  sidecar: ``main/aztec.py:_aztec_c_overrides`` collects ``*.c`` whose stem is a
  label the binary has, ``c_path()`` prefers the shared ``lib/`` copy, and
  ``lib/compare/coverrides.py`` splices the compiled bytes over the routine's
  recorded span (a hand-written ``.c`` with no manifest entry takes its length
  from the spans sidecar -- vmexe ``[1110,1622]``). A compile failure and a C-gate
  failure are both hard errors; ``lib/compare/cgate.py`` compares the compiled
  bytes against the original instruction by instruction, so a mistyped offset
  cannot pass (it changes the bytes).

  **Splitting.** A routine the Aztec generator can never reproduce (port I/O,
  ``int``, ``cli``/``sti``, ``rep``, far ``ret``/``call``, ...) is stamped
  ``; asm only`` on line 2 and filed under ``<binary>/asm_only/``
  (``lib/asm_only.py:blockers``; 383 fragments); ``make readme`` reads the marker
  to leave those out of the C-coverage count.

  **Sharing.** Byte-identical routines collapse into ``asm_<project>/lib/`` and
  each master ``%include``s them (``lib/shared.py``; 60 shared fragments); a shared
  routine's ``.c`` is shared with it, and a C override **un-shares** its fragment
  as soon as the two binaries' renderings differ.

  **Names.** A generic routine's name is ``<category>_loc_<TAG>``, the tag a
  four-letter digest of its own decoded body (``lib/names.py:content_tag``) --
  address-independent, so adding a routine shifts nothing and two binaries never
  collide; only copies of the *same* code inside one binary keep an address
  suffix. ``rename_generics`` prefixes the *host's* generics (``ds_loc_...``) so
  an overlay's own names cannot collide with the host's.

  **Census effect.** ``hidden_flow`` 98 -> **87** (``vinstall`` 38 -> 26: a covered
  routine's instructions now carry ``; 0x`` offsets where the disassembly emitted
  the same bytes as ``db``, so they are no longer sites no source line spells),
  ``names_used`` 84 -> **83**, ``names_inert`` 32 -> **33**. Census itself
  unchanged (132 / 1 / 248 / 133).

  **Open — the resolution contract (see §0.3, §18).** A C reference to a
  ``dseg_``/``bss_`` offset that no symbol names is currently *taken as written*
  (``lib/aztec/relink.py:179``), so it renders as a frozen literal and a wrong
  *prefix* is invisible -- the tree names DS:0x8482 ``bss_8482`` (past
  ``bss_boundary`` 0xcf6) while the C spells it ``dseg_8482``. That is the one
  place the C path emits a bare number where the disassembly emits a name, and it
  is *also* why the same instruction reads ``+ 0x8482`` in the C arm and
  ``- 0x7b7e`` (capstone's signed spelling) in the disassembly arm. It has no
  counter yet, so no renderer work has started.

- **E — the ELF build owns the origin (`make elf-rebuild`; D7.2b/D7.5 follow-up).
  ✅ DONE (2026-10-13).** Tooling-only: **no census change, no binary change**
  (verified), and it removes the last part of D7.2b that existed only for a build
  tool's sake.

  **Why.** `make elf-rebuild` assembles with `-f elf32`, which has **no
  `vstart`** (measured: `unknown section attribute 'vstart' ignored`, and `start=`
  is not supported either), so the section is laid out from 0 and the image's own
  origin must be 0 for the `+ VBASE` equ values to agree with the
  section-relative labels.  D7.5 supplied that with `-DVBASE=0`; D7.2b then had
  to save and restore `VBASE` (`%xdefine`) around the host include, which needs
  its own `VBASE` -- 9 emitted lines in each of the 13 overlay masters.  The prep
  already rewrites the prepared *mirror* source (it blanks the `vstart` line), so
  it now rewrites the origin there too (`make/elf.py`):

  ```python
  _ORIGIN_EQU_RE = re.compile(r'^(\s*)VBASE\s+equ\b.*$')
  def _force_origin_zero(lines):
      return [_ORIGIN_EQU_RE.sub(r'\1VBASE equ 0', line) for line in lines]
  ```

  **Effect.** `-DVBASE=0` is gone from the nasm command line, and `VBASE` is now
  handled exactly like `IMAGE_BASE`: defined in the host block for the host's
  frame, `%undef`ed, then the overlay's own
  `VBASE equ __zresident_end - 0x000e` below takes effect.  The block's
  `%define VBASE (-0x0200)` is a different spelling and a different frame, and
  the regex leaves it alone -- nothing else needed saving.

  **Verification.** `make build DSAVANT` ×2 byte-identical and a fixed point; all
  19 built `.EXE`/`.OVR`/`.DRV` byte-identical to the pre-E build;
  `make verify DSAVANT` **18/18**; census unchanged (**152 / 1 / 248 / 153**);
  unit suite **293 OK**.  For the ELF path the two mechanisms were A/B'd on
  `ds.asm` (old: unrewritten origin + `-DVBASE=0`; new: rewritten origin, no
  `-D`): **identical symbol tables and identical decoded line tables** once the
  harness's artifact filename is normalised, with one extra local
  `NOTYPE ABS VBASE` symbol -- it is an `equ` now rather than a `-D` macro, and it
  stays unexported.  Symbol addresses confirm the frame: `aztec_csav` `0x4452`,
  `aztec_creat` `0x4939`, `aztec_begin` `0x4b3a`.  Tests:
  `test_vstart_origin.py::ElfSourceTest::test_origin_rewrite_leaves_the_host_includes_definition_alone`
  and `HostIncludeTests::test_overlay_origin_is_what_the_elf_prep_zeroes`.

  **Why it matters for D7.0d.** The overlay ELF needs exactly this -- origin 0
  with the 14-byte header dropped -- so an overlay's equ values and its
  section-relative labels agree.  E is the mechanism; D7.0d's remaining work is
  the kind-aware prep (header bound, symbol/address scoping, `-w-other`), the
  `o_entry - o_corg + _OVR_HEADER_SIZE` entry mapping, and the cross-section
  decision.  `make/elf.py` also holds C-fragment resplicing (`resplice_c`), so E
  lands **before** that rework rather than after.
- **E3 — a C routine's references are symbols, not bytes copied from the
  original. ✅ DONE (2026-10-13).** `make verify DSAVANT` 18/18; unit suite 315
  OK; `make build` is a fixed point and `make elf-rebuild` reproduces the tree.

  **Why.** `cc` produces an *object*: every call, data reference and branch is a
  placeholder plus a relocation record, and nothing links it. Both splice paths
  (`make/elf.py:resplice_c`, `lib/compare/coverrides.py:_apply_c_overrides`)
  copied the bytes at each relocation site from the original image, then let the
  disassembler re-derive the operand name from that value. So the C never
  controlled a reference: edit `creat` to call `close` and it still emitted
  `call aztec_open`; a new routine (`aztec_ovloader.c`) could only call what sat
  at the original displacement. This is the same *frozen address* class as the
  rest of this plan, just hidden inside the C path.

  **What now happens.** `lib/aztec/relink.py` is the linker step:
  - **externals** (`WREL`/`WABS` to a `GBLSYM`): the C identifier *is* the asm
    label (`aztec_open_` → `aztec_open`; Aztec appends exactly one `_`, and
    does not truncate long names). It is looked up in the build's own maps
    (`label_map`, `foreign_label_map`, `data_labels`, `mem_equ`); an unknown name
    is a hard error, never a zero fill. The operand is emitted as the symbol
    (`call aztec_open`, `[dseg_0cdc + 0x1]`) and verified by assembling its numeric
    form, so NASM remains the linker.
  - **local branches** (`BREL`/`WREL` to `.N`): the object's own local-label
    table (the trailing `02 80 lo hi` records of the `.O`, which OBD does not
    print; validated against all 134 branch sites of the current seeds) places
    the labels, so they follow the compiled code instead of the original offsets.
  - anything not modelled (module-local data/string `Expr`/`LCLSYM` references,
    `Long` far refs, a `WABS` to a code label) keeps the old original-bytes copy and
    is reported (`aztec link: … copied from the original image`).

  **Naming.** The asm labels are canonical; the C is rewritten to them
  (`lib/aztec/relabel.py`). A *pristine* seed is rewritten once per build, learning
  each name from the original image at the relocation (every external in the 22
  seeds mapped to exactly one label); a header-declared name (`Cbuffs` in
  `stdio.h`) gets a `#define old new` ahead of the includes instead. The rewritten
  seed must compile to the identical code and relocations. Hand-edited C is taken
  as written.

  **Parser fixes found on the way** (`lib/aztec/objread.py`): `BREL LCLSYM .0` was
  read as kind `LCLSYM` (width 2 instead of 1, so a copy overwrote the next
  opcode byte); `Expr ADD` operands (`tbl + 4`) were dropped; the object cache
  version was bumped.

  **Not done / still true.** The routine's byte span is still fixed (a longer
  compile is an error, a shorter one is NOP-padded); module-local data in a C
  routine still comes from the original image; and an overlay C routine calling a
  host label would use `foreign_label_map`, which no current seed exercises.

- **E2 — the host block is the host's, so it is emitted once. ✅ DONE
  (2026-10-13).** Rendering-only: **no census change, no binary change**
  (verified byte-identical).

  **Why.** Every one of the 13 overlays carried the same 12-line host-frame block
  (`%define HOST_SYMS_ONLY` … `%undef VBASE`) at the top of its master, byte for
  byte: `vstart=-0x0200` is the *host's* origin and `__zimage_end` is the
  *host's* symbol, so the block is a property of the host, not of the overlay.
  It now lives in one generated **`inc/host_symbols.inc`**, and the master carries
  a single line:

  ```asm
  bits 16
  %include "inc/host_symbols.inc"
  %ifndef VBASE
  VBASE equ __zresident_end - 0x000e
  %endif
  section .text vstart=VBASE
  %ifndef IMAGE_BASE
  IMAGE_BASE equ 0x000e + VBASE
  %endif
  ```

  The master's head drops 19 → 11 lines and the tree loses the 13 copies.

  **What deliberately stayed in the master.** The overlay's own origin
  (`VBASE equ __zresident_end - 0x000e`), `section .text vstart=VBASE` and
  `IMAGE_BASE` — because that is *this* overlay's frame (and the D7.2b result),
  and because E's `_force_origin_zero` rewrites `VBASE equ` **in the root file's
  lines only**: an origin moved into an include would silently give the overlay
  ELF (D7.0d) a non-zero origin, and fixing that would mean preparing a second
  copy of the include for the ELF build and ordering `-I` paths — undoing what E
  simplified.

  **Emission point.** `render._build_source` returns the block as a
  ``split_sources`` entry, so the ordinary tree writer (`main/runner.py`) writes
  it and the include line and the file can never drift apart; it is a pure
  function of `(host master, host vbase)`, so the overlays' identical writes
  agree.  NASM resolves the inc's own `%include "ds.asm"` through
  `-I<tree>/` (`lib.link.include_args`, passed by both `make build` and
  `make elf-rebuild`) — measured with a decoy `inc/ds.asm`, which NASM ignored:
  relative-to-the-including-file is *not* its rule, so the file may sit at any
  depth.

  **Gate.** The block counts **0** frozen addresses (`count_frozen_addrs` on it
  is empty), so E2 is census-neutral: **152 / 1 / 248 / 153** unchanged.  All 19
  built `.EXE`/`.OVR`/`.DRV` byte-identical; `make verify DSAVANT` **18/18**;
  unit suite **294 OK**; `make build` a fixed point; `DS.elf` identical
  (`ds.asm` is untouched by E2).

  **The one hazard, declared.** The census scans `*.asm` (`lib/tests/
  test_dynamic_addrs.py::_scan_tree`), and `inc` is already in `_SKIP_DIRS`, so
  the new include is outside the counter.  That is only safe because it carries
  no literal — asserted by `test_names.HostSymbolsBlockTests::
  test_host_block_carries_no_frozen_address`, so the blind spot is explicit
  rather than an accident of the glob.  `test_overlay_includes_the_host_without_a_table`
  now checks the master carries the include before `section .text` and that the
  block lives in `includes[HOST_SYMBOLS_INC]`.
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

- **[DONE] Overlay DATA — the anchor (D7.0/D7.2).** Overlay data offsets resolve
  against the *host* model, so a bound `dseg_<o>` (or a promoted DS word) in an
  overlay must use the host's `__zdseg_start` — and every overlay's `o_dorg`
  **is** the host DS size. D7.0a answered the *measurement* half; D7.0c bound the
  *data* anchor (`o_dorg` → `__zdseg_end`).
  **`o_corg` is now settled too (D7.2, 2026-10-13):** it is the host CS offset at
  which the host's *resident code* ends — file `0x5255`, frame `0x5055`, exactly
  where the 44 KB code→data zero pad begins — and the host's own loader enforces
  it (`cmp word [bp-0x10], strict word 0x5055` in `ds/aztec_ovloader.asm`).  The
  older note that "host routines the overlays call sit at CS `0xafcc`+ (above
  `0x5055`)" was an artifact of the pre-D7.5 `org 0` model: in the host frame the
  routines are `aztec_csav` at CS `0x4452` (file `0x4652`) and the Aztec library
  at CS `0x4d73`+, all *below* `0x5055` ✓.  The mechanism is to **include the
  host source** (D7.5) and read the absolute anchor `__zresident_end` the host
  emits at the gap; there is no `.cache` and no probe.  **Moves the gate: yes —
  it removed all 40 `o_corg`-family items (§17 D7.2).**
- **[D7] The census did not count data-block words or code immediates.**
  `count_frozen_addrs` matches only MZ/OVR header `dw`, `equ 0x` lines,
  `times N db 0`, and `dw 0x… ; 0x…` data words. Two classes were invisible: a
  stored pointer word rendered as a raw `db` pair *before* D5 promotion, and raw
  immediates that are DS addresses — e.g. `vinstall/leaf_loc_10a4.asm` does
  `mov ax, 0x1806` then `call loc_040f`, a DS string pointer emitted as a bare
  number. D7.0a closed the *geometry* slice of the second class — the 7 host
  DS-size immediates became tagged and counted — and D7.0b *bound* them to
  `__zdseg_end`, so they now move with a resized data segment. The general
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
- **[OPEN] The C data-reference contract (2026-10-14, §0.3).** A hand-written
  `.c` may name a DS offset the build has no symbol for (`dseg_<4 hex>`), and
  `lib/aztec/relink.py:179` takes it *as written* — `int(name[-4:], 16)` — and
  emits a bare literal. So a wrong `dseg_`/`bss_` prefix is invisible (the tree's
  name for DS:0x8482 is `bss_8482`, since it is past `bss_boundary` 0xcf6), and
  the C arm prints `+ 0x8482` where the disassembly arm prints capstone's signed
  `- 0x7b7e`. The intent is that a C reference must **resolve**: (a) make the
  fallback a hard error, so a name that is not a build symbol fails the build
  instead of silently becoming a number; (b) decide what a hand-written C does for
  an offset the tree never named — either the build *declares* the canonical name
  for an in-segment offset (a recipe in `host_data_offsets`, so the operand is
  symbolic and follows a resize), or the offset must be declared in the sidecar.
  Either way both arms must render one spelling. **Moves the gate: no** (the
  census cannot see it), but it is the C path's instance of the plan's own goal —
  a frozen literal that cannot follow an edit. 16 references today, all in the
  hand-written `lib/` sources. **No counter yet, so no work started.**
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
  `__zdseg_<o> - __zdseg_start` (label at file offset `data_origin + o`);
  `bss_<o>` is `(__zimage_end - __zdseg_start) + (o - bss_boundary)`. Both
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
  emit `__zbss_size` + `__zdseg_end` and `_render_records` rewrites any code
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
- **D7.0e:** one shared host-call table — the 13 per-overlay
  `*_foreign_labels.inc` subset copies collapse into one derived
  `.cache/<project>/labels/host_calls.inc` keyed by the source's exported labels
  (`handle = host_offset + 0xADB9`, one affine map because all overlays share
  `o_corg`/`cs_origin`); the dead `ds_labels.inc` and the redundant `dispatch_`
  injection are gone; output byte-identical, census unchanged. ✅
- **D7.1:** the host-owned shared DS name map — the 13 overlay masters' ~1230
  `dseg_`/`bss_` `equ`s collapse into one `%include "labels/host_data.inc"`; the
  host declares one recipe per offset (689 names = 647 overlay ∪ 98 host) and the
  link step re-probes them, and the code-handle table moves onto the same
  re-probed link step (`build_host_calls`).  `data_shift` 1231 → **1** (the 45
  file-backed offsets bound via a placed host label; the one residual is the
  raw-driver `ega` `dseg_`, Appendix C); `total` 1396 → **166**; `build_out`
  byte-identical, `make verify DSAVANT` 18/18, unit suite 287 OK, `make build` a
  fixed point, `make elf-rebuild` reproduces. ✅
- **D7.2:** the overlay load origin (`o_corg`) bound to the host's resident-code
  end.  The counter first (D7.2a): the family is **40** items, not 13 — the
  header field, the `VBASE` `vstart` macro and the `o_entry` addend per overlay,
  plus the host loader's own check — so `code_shift` rose 165 → 192 as a
  documented correction.  Then (D7.2b) the host emits `__zresident_end equ
  ($ - $$) + VBASE` at the code→data gap (absolute, so an overlay can use it for
  `vstart`), every overlay derives `VBASE`/`o_corg`/`o_entry` from it and the
  loader checks against it: all 40 gone, `code_shift` 192 → **152**, `total`
  **153**.  `make verify DSAVANT` 18/18; unit suite green; all 13 overlay
  headers byte-identical to the originals.  Acceptance:
  `HostIncludeTests::test_overlay_corg_follows_a_host_code_edit`. ✅
- **D7.2c:** a sidecar name now gets a label *on the byte it names* wherever that
  byte can hold one (`render._place_label` → `_ensure_global_label`, the D1
  splitter).  26 of the 134 F3 names converted, so `code_shift` 152 → **126**,
  `f3` 134 → **108**, `total` **127**.  The other 70 are refused by construction
  (55 on bytes that render as data — a code label there regressed
  `test_hard_classification`, so the guard mirrors `verify.code_loss`; 15
  mid-instruction; 2 outside every record), and `mem_equ`'s 21 operand symbols and
  `vga`'s 17 raw-offset `immediate_labels` are never routed.  All 19 binaries
  byte-identical, `make verify DSAVANT` 18/18, suite **322 OK**, fixed point. ✅
  **D7.2c-2 (the 70 + 21, and the `vga` decode gap the refusals exposed) remains.**
  **D7.2c-2a — the used/inert and `hidden_flow` counters — and A (the driver
  dispatch tables declared: `play` 8, `ega` 55, `vga` 48 → 55) are DONE and
  gate-neutral**: census 127, all 19 binaries byte-identical, `make verify
  DSAVANT` 18/18, suite **332 OK**.  The forced-region variants were measured *not*
  neutral and belong to the decode step.  **D7.2c-2b — the `DRV` probe — is also
  DONE**: the entries are referenced by the host's far-pointer ladders
  (`cs:0x2d67` for `play.drv`, `cs:0x2d87` for the display driver, offsets
  `0x100 + 3 + 4k`), and `DriverDispatchAbiTests` now pins both the declarations
  and the host ladders.  **D7.2c-2c — the decode gap — is DONE for the drivers**:
  VGA's `force_data` over its dispatch table made `DispatchTablePhase`'s
  `hard_data` guard skip all 48 of its entries, so their handlers were never
  seeded and vga sat at 452 instruction offsets against ega's 5830 for the same
  construct.  Dropping it, declaring the data *after* the table (`00df..0292`) and
  seeding the *entries* as well takes vga to **5462** offsets / 79 fragments and
  **`hidden_flow` 161 → 98** (ega 54 → 0, vga 9 → 0) with `names_used` 61 → **84**
  and `names_inert` 52 → **32**.  The census rose **once, deliberately**, 127 →
  **133**, for six `cseg_` globals the newly decoded code addresses.  So the driver
  halves of D7.2c-2 are **resolved as declared ABI** and item (i) is closed for
  them.  **D7.2c-2d — the declared handler's fragment and name — is DONE**: the
  entry seeding had cost play's handlers the `direct_call` that drove their
  categorization, so the 128-byte fallback window named them out of the
  neighbouring data (`leaf_loc_0154` → bare `loc_0154`, which is how `strlen.asm`
  came to swallow it; `io_loc_016e`/`io_loc_0183`/`io_loc_0294` borrowed an `out`
  and an `int 0x13` 100 bytes on).  `ctx.dispatch_handlers` now feeds both the
  body walk and the split roots: **buried handlers 43 → 0**, names unsupported by
  their own fragment **11 → 2**, 27 names corrected, +54/−11 fragments, all 19
  binaries byte-identical, census unchanged, `make verify DSAVANT` 18/18, suite
  **336 OK**, fixed point.  What remains open is item (ii) — the `mem_equ`
  `cseg_`/`data_` operand symbols, six more of them now — plus the 15
  mid-instruction names and the 2 outside every record.  ⏳
- **E:** the ELF build owns the image origin (the prep rewrites `VBASE equ` to 0
  instead of `-DVBASE=0`), so D7.2b's `VBASE` save/restore is gone. Tooling-only,
  gate-neutral: census **153**, all 19 built binaries byte-identical, unit suite
  **293 OK**, and an A/B on `ds.asm` gives identical ELF symbols and line tables.
  This is D7.0d's mechanism. ✅
- **E2:** the host block is the host's, not the overlay's — 13 byte-identical
  copies collapse to one generated `inc/host_symbols.inc` plus a one-line
  `%include` per master.  Rendering-only and census-neutral (the block counts
  **0**), so `total` stays **153**; all 19 built binaries byte-identical, suite
  **294 OK**, `make build` a fixed point.  The overlay's own origin/`vstart`/
  `IMAGE_BASE` stay in the master, so E's origin rewrite (D7.0d's mechanism)
  keeps working.  The include is outside the census — guarded by a test. ✅
- **D7.0d:** overlays get ELF/DWARF (drivers only if their load base is found),
  so `make elf-rebuild` yields a debuggable ELF for an overlay.  **Unblocked**:
  nasm already assembles an overlay as `elf32`/dwarf, and E supplies the origin;
  the remaining work is the kind-aware prep (the `o_*` header block, symbol and
  address-walk scoping, `-w-other`), the
  `o_entry - o_corg + _OVR_HEADER_SIZE` entry mapping, and the cross-section
  placement decision. ⏳
- **REMAINING — D7 (overlays and raw drivers).** The overall goal is **not**
  met. Exit criteria:
  - `data_shift` 1 → 0: reclassify the raw-driver `ega` `dseg_24fd` as `inert`
    (Appendix C) — the last non-host DS reference.
  - `code_shift` 126 → 0: **D7.2c-2** — the 70 names refused a label (55 on bytes
    that render as data — 31 inside a `jump_table`, 24 inside a data block — plus
    15 mid-instruction and 2 outside every record) and the 21 `mem_equ`
    `cseg_`/`data_` operand symbols.  D7.2c gave 26 of the original 134 a label in
    place; the whole overlay load-origin and data families are already bound
    (D7.0c/D7.1/D7.2b).
  - overlay `o_bss` (13) + MZ `e_sp` (2) reclassified `inert`, overlay pads
    resolved (D7.3), so `code_shift + data_shift` → **0**.
  - an overlay is covered by the edit-property test (D7.4 — partly done:
    `HostIncludeTests` now covers a host *code* edit and a host *data* edit) and
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
progress** — only the census is. Ledger as of 2026-10-13.  `2a72c3e5 clean up
make all` landed **D7.5** (which superseded the D7.0c/D7.0e/D7.1 `.cache`
tables with the host include); `5c2a1e84`/`8477b13a` added the shared
`inc/host_symbols.inc` (E2) and the C-symbolic references (E3); the working tree on
top of that lands **D7.2c** — a named byte gets a label, not an `equ` (§17).

Landed by the working tree (D7.2c):

| area | change | note |
|------|-------:|------|
| `asm/lib/compare/render.py` | +63/−1 | `_covering_record` + `_place_label` (the placement rule and its three refusals, including the data guard that mirrors `verify.code_loss`), `_DATA_RECORD_TYPES`; the `label_map` loop routes through it, `immediate_labels` is documented as deliberately *not* routed |
| `asm/lib/tests/test_dynamic_addrs.py` | +112/−4 | `NamedAddressPlacementTests` (4: record start → label; code name in data → `equ`; data name in data → label; inside an instruction → `equ`) and `InsertBytePropertyTests::test_driver_branch_follows_an_inserted_byte` (the insert-byte acceptance test); `BASELINE_TOTALS` `code_shift`/`f3`/`total` 152/134/153 → **126/108/127** |
| `asm_DSAVANT/play.asm` | +1/−25 | 24 `loc_*` `equ`s give way to labels in place |
| `asm_DSAVANT/play/{leaf_loc_077b,io_loc_02ba}.asm` | +23 / +1 | the labels land in the fragment that owns the byte |
| `asm_DSAVANT/vga.asm` / `vga/dos_free_mem_3.asm` | −1 / +1 | `dos_con_loc_2a97` likewise, into its own fragment |
| **census** | **127** | `code_shift` 152 → **126**, `f3` 134 → **108**; 26 placed, 70 refused, 38 never routed; **all 19 built binaries byte-identical** |
| *not this step* | 9 files | `asm_DSAVANT/ds/aztec_*.asm` lost their `; auto-generated` marker: `lib/compare/coverrides.py:166` writes the C-override fragment with a plain `open(...,'w')` while `main/runner.py` uses `autogen.write_text`.  A plain `make build` therefore drops what `239d21d7`'s migration had added — pre-existing, in the C-symbolic channel's writer, so left alone |

Landed on top (D7.2c-2a counters + A + the driver decode and handler rendering, D7.2c-2b/c/d):

| area | change | note |
|------|-------:|------|
| `asm/lib/compare/records.py` | +143 | `count_name_use` (whole-tree used/inert split of the census's named families) and `instruction_offsets` + `count_hidden_flow` (call/jmp targets the source emits as bytes, walked between the source's instruction offsets; a lower bound) |
| `asm/lib/compare/records.py` | +52 | `thunk_entry_count` + `far_entry_runs`: the dispatch-entry contract (module thunks at `3 + 4k`; the host's far-pointer ladders at `0x100 + 3 + 4k`) |
| `asm/lib/tests/test_dynamic_addrs.py` | +300/−11 | `CensusMeaningCounterTests` (6 unit tests), `DriverDispatchAbiTests` (4: the helper, the declared counts against the module bytes — what `count: 48` failed — and the host ladders), and the three new `BASELINE_TOTALS` keys; the D7.2c comment's stale "62 of the 134" corrected to the measured 26/70/38 |
| `asm/sidecar/DSAVANT.json` | +15/−3 | `dispatch_table` for `play` (8) and `ega` (55); `vga`'s `count` 48 → **55** (measured: the run is 55 entries, ending 0x00de) |
| **counters** | — | `names_used` **61** / `names_inert` **52** of 113 named addresses; `hidden_flow` **161** (lower bound) |
| **DRV probe** | — | `DS.EXE`'s loaders read each module to `segment:0x100` and call entry *k* at `0x100 + 3 + 4k` (ladders of 8 and 56 slots at `cs:0x2d67`/`cs:0x2d87`); entry *k* is at module offset `3 + 4k`, so the entries are a host-fixed ABI |
| **census / binaries** | **unchanged** | 127 and all 19 binaries byte-identical; `make verify DSAVANT` 18/18; suite **332 OK**; `make build` a fixed point |
| `asm/lib/phases/dispatch.py` | +39/−30 | `DispatchTablePhase` seeds the *entry* address as well as the handler it calls, and extracts the handler regardless of `force_data` (the guard skipped both, which is what left VGA at 452 offsets); docstring corrected — it claimed the table bytes are data, but an entry is an executable `call handler; retf` thunk |
| `asm/sidecar/DSAVANT.json` | vga −3 / +3, ega +3 | drop vga's `force_data 0003..00c2` (it suppressed 48 handler seeds); declare `force_data 00df..0292` for vga and ega — the (value,size) pairs and the host callback ladder after the table |
| `asm/lib/tests/test_dynamic_addrs.py` | re-baseline | `hidden_flow` 161 → **98**, `names_used` 61 → **84**, `names_inert` 52 → **32**, census **127 → 133** (one deliberate rise: six `cseg_` globals the decoding revealed); the `hidden_flow` docstring example moves from vga's now-decoded `0x2a3c` to play's `0x00e2` (`play.asm:93`) |
| **vga decode** | — | 23 fragments → **79**, 452 instruction offsets → **5462** (ega 5830 → 5938, +2 per entry × 54); `hidden_flow` ega 54 → 0 and vga 9 → 0 |
| **binary impact** | VGA.DRV only | 753 bytes against the pre-change assembly; its distance from the original becomes **824** vs EGA.DRV's 862 (the toolchain re-encodes `8b ec` → `89 e5` everywhere — 19 910 bytes across the tree); `make verify DSAVANT` 18/18, suite **332 OK**, `make build` an exact fixed point |
| `asm/lib/model.py` | +7 | `ctx.dispatch_handlers`: the handler offsets a declared table names, so the declaration is available to the label pass and the splitter, not only to the seeding phase |
| `asm/lib/phases/dispatch.py` | +5/−1 | `DispatchTablePhase` records each handler it decodes (and its contract declares the write) |
| `asm/main/runner.py` | +8/−2 | `bounded_targets = direct_call_targets | ctx.dispatch_handlers` (a declared handler is categorized from its own body, not the 128-byte window) and `declared_roots=ctx.dispatch_handlers` into `verify` |
| `asm/lib/compare/verify.py` | +3/−1 | `declared_roots` parameter, forwarded to `_select_split_ranges` |
| `asm/lib/compare/splitting.py` | +18/−9 | a declared root splits even when its label is a bare `loc_<addr>`; undeclared bare names still do not (~1600 internal branch targets) |
| `asm/lib/compare/records.py` | +20 | `dispatch_handlers(data, table)`: the handler each declared `e8 rel16 cb` names, shared by the test that has to check the tree independently |
| `asm/lib/tests/test_dynamic_addrs.py` | +120 | `HANDLER_BASELINE` + `_tree_labels`/`_fragment_instructions`/`_category_evidence`/`_scan_declared_handlers` and `DriverHandlerPlacementTests` (the declaration count, and the two decrease-only counters); `test_direct_flow_labels.py` +28 for the declared-root split rule |
| **handler rendering** | play +6/−3, ega +23/−4, vga +25/−4 | buried declared handlers **43 → 0**, names unsupported by their own fragment **11 → 2**, 27 names corrected; **all 19 built binaries byte-identical**, census unchanged (132/114/133), `make verify DSAVANT` 18/18, suite **336 OK**, fixed point |

History — landed by `8965d977` (D7.0e):

| area | change | note |
|------|-------:|------|
| overlay masters (`asm_DSAVANT/*.asm`) | +13/−13 in 13 files | each overlay's `%include` switches from its own `<name>_foreign_labels.inc` to the shared `labels/host_calls.inc` |
| `asm/lib` | +162/−15 in 6 files | `segments.py` (`host_code_target`), `cross_ref.py` (table + writer), `compare/verify.py`, 3 test files |
| `asm/main` | +1/−23 in 2 files | `runner.py` (dead `ds_labels.inc` writer gone), `projects.py` (redundant `dispatch_` injection gone) |
| `asm/make` | +64/−32 in 1 file | `common.py` (`_write_host_call_table`, injection gone) |
| **census** | **1396** | unchanged by D7.0e (plumbing only) |

*(Not in this ledger: `asm/lib/aztec/build_db.py`, `asm/make/prebuild.py` and
`asm/make/cli.py` — the sidecar-driven binary list, a concurrent change on
another channel.)*

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
    times (__zdseg_start - ($ - $$)) db 0 ; 0xaf0d
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
__zdseg_start:
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
  `__zdseg_start:`, `__zimage_end:`).
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
- Overlay `o_corg`/`o_dorg` — code/data load origin. **Both bound.**
  `o_dorg` **is** the host DS size (`__zdseg_end`, D7.0c); `o_corg` **is** the
  host's resident-code end (`__zresident_end`, D7.2) — and that is where the
  overlay loader loads the overlay, enforced by the host's own
  `cmp …, strict word __zresident_end`.
- `__zbss_size` (the MZ reserved-BSS size introduced by D7.0b) — a *size*, so it
  is invariant under every source edit (a data insert moves `__zdseg_end`, not
  this); like `o_bss` it is legitimately inert and the census never sees it (its
  `equ` has a computed RHS and an unprefixed name).
- `bios_data_0410` and any `external_data` field — fixed external segment
  (now counted `inert`, Section 5).
- PSP fields not in `PSP_FIELDS` (now counted `inert`).
- Unproven immediates (F9).
- Raw-driver `data_*` (`ega`/`play`/`vga`) — DS established at run time.
- Pure data words in lookup tables that are not addresses.
- `; 0x<F>` comments (F10) — documentation only.
