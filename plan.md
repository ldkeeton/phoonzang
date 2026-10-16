# Plan: layout-independent `asm_DSAVANT`

**Goal.** The generated source tree must stay internally consistent no matter
where bytes are inserted or deleted: every value that shifts when code or data is
resized is emitted as an assembler expression over labels / `$` / `$$` / derived
`equ`s, so the image still assembles into a coherent, loadable program without
hand-editing a hex constant.

- A value is **dynamic** when the assembler resolves it from other symbols
  (`label`, `$`, `$$`, `equ` chains). A **frozen literal** is a bare hex/decimal
  standing in for a location, a size, or an offset.
- `make verify DSAVANT` (18/18, semantic) plus the unit suite is the standing
  check. Exact bytes is *not* the bar — the verifier already accepts the
  toolchain's equivalent re-encodings.
- `make verify` alone cannot catch a *wrong* promotion: at the original layout a
  correct expression and a wrong one both reproduce the original number, so the
  bytes match either way. The real bar is the **edit-property test** — insert or
  delete a byte and the image must still be coherent (Section "Acceptance").
- Every literal replaced by a formula keeps its original value in a leading
  comment, so the source stays readable (Appendix A).

---

## 1. Census

`count_frozen_addrs` (`asm/lib/compare/records.py`) classifies every emitted
literal into three gate classes:

| class | breaks when | target |
|-------|-------------|--------|
| `code_shift` | code before it resizes — F1/F2 sizes, F3, F5 | 0 |
| `data_shift` | the data segment resizes — F4, F7 | 0 |
| `inert` | never — fixed DOS/external offsets, deliberately-literal tables | excluded |

`total = code_shift + data_shift` is the metric of record; `inert` is reported,
not counted.

**Current tree** (a `make build` fixed point): **`code_shift` 97, `data_shift` 1,
`inert` 248, `total` 98.** Per-taxonomy: `f1=2 f2=13 f3=79 f4=1 f5=3 f6=241 f7=0`;
shared-geometry buckets `o_corg=0 o_corg_imm=0 o_dorg=0 ds_size_imm=0`.
`code_shift` decomposes as 79 F3 `equ`s + 13 overlay `o_bss` + 2 MZ `e_sp` +
3 overlay zero pads.

Two auxiliary counters, both in `BASELINE_TOTALS`:

- `names_used` **55** / `names_inert` **29** — of the *named* frozen addresses,
  how many the tree actually refers to (`count_name_use`). Converting an inert
  name to a label moves the census without making anything follow an edit.
- `hidden_flow` **87** — near call/jmp targets whose *target* the source shows as
  code but whose *site* is emitted as bytes, so no source line spells the
  reference (`count_hidden_flow`; a lower bound).

Where the 98 live, per emitted file: `vpcvw`/`vga` 16 each, `play` 14, `vbase` 9,
`vtrea` 7, `vpcmk` 6, `vmaze`/`vmexe` 5, `vinstall`/`vmnpc` 3, then 2s and 1s.
The single `data_shift` is a raw-driver DS reference (Appendix C).

---

## 2. Frozen-value taxonomy (F1–F10)

| id | value | where emitted | status |
|----|-------|---------------|--------|
| F1 | MZ `e_cblp`/`e_cp`, `e_ss` | `_render_mz_header` | dynamic |
| F1 | MZ `e_sp` | `_render_mz_header` | literal (segment-relative) — counts as 2 |
| F2 | overlay `o_csize`/`o_entry`/`o_dsize` | `_render_ovr_header` | dynamic |
| F2 | overlay `o_bss` | `_render_ovr_header` | literal (runtime) — counts as 13 |
| F2 | overlay `o_corg` | `_render_ovr_header` | bound to host (`__zresident_end`) |
| F2 | overlay `o_dorg` | `_render_ovr_header` | bound — it *is* the host DS size |
| F3 | `cseg_`/`data_`/unreached `loc_`/`leaf_`/`io_`/`dos_`/`string_`/`api_` `equ` | `_build_source` | 79 overlay `equ` remain |
| F4 | `dseg_`/`bss_` `equ` | `_build_source` | dynamic (MZ) and via the host data map (overlays); 1 raw-driver left |
| F4 | `psp_` `equ` | `_build_source` | inert |
| F4 | host DS-size immediates | `_build_source` | bound to `__zdseg_end` |
| F5 | `times N db 0` gap to `data_origin` | `_render_data_block` | dynamic (MZ); 3 overlay pads remain |
| F6 | numeric `dw` in a `literal` table | `_inject_jump_tables` | inert (tagged `; literal`) |
| F7 | unrecognized pointer word in data | `_render_data_block` | done for the MZ images (`f7=0`) |
| F8 | MZ relocation-table offset word | `hdr[28:]` | in scope |
| F9 | unproven immediates (`_fmt_imm`) | `format.py` | waiver |
| F10 | `; 0x<F>` offset comments | `_render_records` | cosmetic |

A literal data table and an unresolved pointer word render identically
(`dw 0x…. ; 0x<slot>`); the trailing `; literal` tag tells the census which is
which. A numeric `dw` **with** the tag is `f6`/inert; **without** it is
`f7`/`data_shift`.

---

## 3. F7 — a data word can be a pointer or a number

A 16-bit word in a data block may be a code pointer (CS/`LOAD`), a data pointer
(DS/`DATA`), the offset half of a far pointer, a segment word (relocation-fixed),
or just a number. Only offsets that name a location should move when the image
moves; a wrong promotion is invisible to `make verify` and only surfaces after an
edit. So the plan defines *positive evidence* and validates with the edit-property
test.

**Candidate.** An aligned 16-bit word `W != 0` at data offset `P` whose value maps
into a loaded space: CS (`start_offset + W` inside the code image), DS
(`data_origin + W` inside data or BSS), or (stronger) into `known_addrs`.

**Score.** Every candidate starts at **−2**; accept at **≥ 0**, subject to the
anchor rule.

*Positive evidence*

| evidence | weight | source |
|----------|-------:|--------|
| relocation points here | +10 | `_parse_mz_relocs` (authoritative) |
| read by code at pointer size | +5 | `segdataflow` operand sizes |
| loaded, then used as an address | +5 | `_consumed_reads` |
| part of a ≥3 evenly-spaced run | +3 | `_detect_jump_table` |
| pointed to by such a run | +2 | as above |
| aligned | +2 | trivial |
| target is a known label / block start | +2 | `known_addrs` |

*Negative evidence*

| evidence | weight |
|----------|-------:|
| overlaps another candidate | −2 |
| bitmask (≥8 trailing zero bits) | −2 |
| sits inside a printable ASCII run | −2/−1 |
| points into an inert resource region | −1 |
| read by code at a size ≠ pointer size | large − |

**Anchor rule (precision guard).** Promotion requires at least one strong anchor —
relocation (+10), pointer-sized access (+5), a proven consumer (+5), or a ≥3 array
run (+3). The small +2 terms only break ties; alone they would accept on
coincidence in a 64 KB image full of labels. A backlog entry additionally requires
evidence about an *access*.

**Hard refusals** (classification errors, not weak evidence):

1. The word's *target* lands strictly inside a `string`/`resource` region — a
   pointer into the middle of a literal is not a data object (Section 5).
2. The word is an unrelocated absolute DS displacement in a fixed-slot range
   (e.g. the PSP saved-SS:SP slots `0x2e`/`0x30`) — inert, not `data_shift`.

**Structural cases a value test misses:** relative pointers (`label2 - label1`,
rendered as such), symbol + constant (`label + 4`), far pointers (offset half
moves, segment half is F8), relocation targets (never an offset pointer).

**Implemented** in `asm/lib/compare/pointers.py` (scoring) and
`promote.py` (emission). Two weights are narrower than the table, forced by the
corpus: `pointer_access` is an anchor only for a *table* read (`[bx+disp]`), and
DATA space is bounded to the file-backed segment (`value < bss_boundary`) — the
consumption anchor is the exception, since the consuming use proves the space.
The ddisasm `point-to-boundary-sym(+4)` term is **omitted**: a 16-bit MZ image
has no fine sections, so its cheap approximation (target = region start) fires on
coincidence.

**Corpus.** `asm/sidecar/DSAVANT.json` carries a per-binary `data_pointers` +
`not_pointers` list to calibrate the weights and pin the false-positive
direction: a `not_pointers` word must never be emitted as a *data* pointer (a
code pointer via the jump-table path is fine). Current: `vinstall` 24 positives /
29 negatives, `ds` 1 / 12. Every entry is a hypothesis to re-verify against the
bytes.

**D6 (dynamic execution) is dropped** — the static backlog is empty. The design
kept in reserve: capture *once* the set of `(data-offset, size, rw)` touched
during a short guided session, replay offline; a dynamic pass is a lower bound.

---

## 4. What is bound, and how

**MZ host (`ds`, `vinstall`).** The header's size fields come from
`__zimage_end`; `e_ss` comes from the data-segment paragraph anchor
`__zdataseg_para`, defined at the code→data gap where `$` is known:

```nasm
%if ($ - $$) > ORIG
    align 16, db 0
    __zdataseg_para equ ($ - $$ - HEADER) / 16
%else
    times (ORIG - ($ - $$)) db 0
    __zdataseg_para equ (ORIG - HEADER) / 16
%endif
__zdseg_start:
```

Data operands bind to bytes:

```nasm
dseg_0c6c equ __zdseg_0c6c - __zdseg_start
bss_0cf6 equ (__zimage_end - __zdseg_start)
bss_830c equ (__zimage_end - __zdseg_start) + 0x7616
```

`e_sp` needs no change (SS == DS).

**Host DS-size immediates** are rewritten to `__zdseg_end`
(= file-backed data + reserved BSS).

**Overlays.** Every overlay's data offsets are the *host's* DS offsets and its
`o_dorg` **is** the host DS size, so the host owns the DS name map: the host
declares one recipe per offset (`dseg_X` → a placed label; host BSS → the
file-backed size + delta; overlay-own → `__zdseg_end` + delta) and the overlays
`%include` it. This collapsed ~1230 literal `equ`s (647 names redeclared in each
overlay) into the host's map.

`o_corg` (the overlay load origin) is the host's resident-code end: the host's
last routine `aztec_rsvstk` ends at file `0x5255` (= CS `0x5055`, since
`cs_origin = 0x200`), exactly where the 44 KB code→data pad begins, and the
host's own loader enforces it (`cmp word [bp-0x10], strict word 0x5055`). The
host emits it as an absolute `equ` at the gap so an overlay can use it for
`vstart`:

```nasm
__zresident_end equ ($ - $$) + VBASE
```

**Assembly model (D7.5).** Each image assembles at its runtime address:
`section .text vstart=VBASE`, with `VBASE` = virtual address of file offset 0
(overlay `o_corg - 14`, MZ `-start_offset`, driver 0), and
`IMAGE_BASE equ start_offset + VBASE`. An overlay pulls the host source in under
`nobits` via `inc/host_symbols.inc`, so host routines, `__zdseg_end` and the
shared `dseg_`/`bss_` names resolve to the host's real labels. The host's
address-derived names are prefixed (`ds_loc_08f2`) so they cannot clash with an
overlay's own.

**Raw drivers (`play`, `ega`, `vga`).** A driver is loaded to `segment:0x100` —
`DS.EXE` reads each module to `segment:0x100` and calls entry *k* through the far
pointer at `segment:0x100 + 3 + 4k` — so file offset `f` runs at `CS:0x100 + f`
and an absolute reference encodes `f + 0x100`. `SegmentModel.load_offset`
(0x100 for a driver, 0 otherwise) records it, LOAD-space resolution subtracts it,
and the driver master carries the bias as a negative `IMAGE_BASE equ -0x0100`,
which keeps every encoded displacement unchanged while the resolved `cseg_` names
land on the bytes they really name. A displacement below the load offset names no
byte and stays numeric. The driver's *data* segment is established at run time
(`mov ax, cs; mov ds, ax` in some routines, the host's DS in others), so
`data_`/`dseg_` names there need a per-site decision — see Section 5.

**Region carving (pre-pass).** `regions.py` carves an image into gap-free
`Region(start, end, kind, note)` tuples (code → typed → resource → pointer_table →
string → entropy → zero → data), used to deprioritise words and to supply the
"inside a string" refusal. Claims deprioritise, never make inert.

---

## 5. Remaining work

`code_shift` 97 → 0, `data_shift` 1 → 0.

- **The 79 F3 `equ`s (the largest block).** Overlay `loc_`/`string_`/`leaf_`/
  `fpu_`/`io_`/`bios_`/`api_idx_` names still refused a label, plus the `vga`
  `immediate_labels` (15 `data_`) and a handful of driver `cseg_`/`data_` names on
  data or mid-instruction bytes. Each refusal is a byte whose *kind* is
  undecided upstream, not a rendering trick away:
  - a `vga` decode gap — bytes the sidecar calls code that the arbiter calls
    data (the driver dispatch table followed by real code and strings);
  - the `mem_equ` `cseg_`/`data_` *operand* symbols (code-segment variables read
    as `[cs:cseg_XXXX - IMAGE_BASE]`) — data living in the code stream, which
    wants carving as data;
  - names strictly inside a decoded instruction;
  - names outside every record.
- **`o_bss` (13) + MZ `e_sp` (2) → `inert`.** Both are sizes that can never
  change under a source edit; they are counted today and belong in the inert set
  (Appendix C).
- **Overlay zero pads (3).** Settle whether they can carry an anchor.
- **The raw-driver DS half + the parked `ega dseg_24fd`.** Bind them where DS is
  the host's; reclassify where it is not.
- **Raw-driver absolute immediates** — a driver's *values* are CS offsets too
  (`mov dx, 0x29ca` names a string at file `0x28ca`). The coordinate is known
  (`disp - 0x100`); the class is uncounted (~45 real references).
- **The C data-reference contract.** A hand-written `.c` may name a DS offset the
  build has no symbol for; `lib/aztec/relink.py` takes it as written and emits a
  bare literal, so a wrong `dseg_`/`bss_` prefix is invisible (the tree names
  DS:0x8482 `bss_8482`, past `bss_boundary`). The C reference should resolve: the
  build declares the canonical name, or the fallback is a hard error. 16
  references today, all in `lib/` sources.
- **Coverage.** An overlay should be covered by the edit-property test. The host
  already is (`HostIncludeTests`: a host data edit moves `o_dorg` and every
  `dseg_` operand; a host code edit moves an overlay's call displacement).
- **ELF/DWARF for overlays** (`make elf-rebuild`): the prep is MZ-shaped and
  raises for overlays/drivers. Needs the kind-aware header handling, the
  `o_entry - o_corg + 14` entry mapping, and a per-type load base
  (`EXE → 0`, `OVR → o_corg`, `DRV → 0x100`).

## 6. Acceptance

1. `make build && make verify DSAVANT` 18/18 (bytes unchanged at the original
   layout) — necessary, not sufficient.
2. Unit suite green; every promoted word round-trips to its original bytes
   (`micro_assemble`).
3. **Edit-property test** (the real gate): inserting a byte in code and in data
   must leave a coherent image — header fields track, the relocation word is
   valid, and every reference that should move moves with it
   (`InsertBytePropertyTests`, `HostIncludeTests`).
4. No word the sidecar marks `not_pointers` is emitted as a data pointer.

---

## 7. Extraction structure (fragments, sharing, names)

The tree is split into one file per routine:

- `_select_split_ranges` (`lib/compare/splitting.py`) cuts at **named** routines
  (from the Aztec signature DB and the named function roots) and at **declared
  dispatch-table roots**. A bare `loc_<addr>` does not split unless it is a
  declared root — otherwise the ~1600 internal branch targets would each become a
  file.
- A routine the Aztec generator can never reproduce (port I/O, `int`,
  `cli`/`sti`, `rep`, far `ret`/`call`, …) is stamped `; asm only` and filed under
  `<binary>/asm_only/` (`lib/asm_only.py`); the rest are candidates for a
  hand-written `.c` compiled and byte-checked (`lib/compare/cgate.py`).
- Byte-identical fragments collapse into `asm_DSAVANT/shared/` and each master
  `%include`s them (`lib/shared.py`). Sharing compares the instructions with the
  per-binary `; 0x` comments removed; a fragment that embeds an address-derived
  symbol (`cseg_XXXX`, `loc_XXXX`) does not share, because a shared file can
  carry only one spelling.
- A generic routine's name is `<category>_loc_<TAG>`, the tag a four-letter digest
  of its own decoded body (`lib/names.py:content_tag`), so two binaries never
  collide and adding a routine shifts nothing.

**Fragments absorb trailing neighbours — fixed (2026-10-14).** Because a file only
cuts at a named routine, any unnamed object between two named routines was glued
onto the earlier one: a trailing data blob (`cseg_XXXX` + zeros) or a bare
`loc_<addr>` callee. Measured with `lib/compare/cotenancy.py` (`python3 -m
lib.compare.cotenancy asm_DSAVANT`, and logged by `make build`): of 1364
fragments, **361 defined a label other than their own root**; of the 2561
co-tenant labels **734 were referenced from outside** the file that defined them
— 524 code (469 bare `loc_` callees, 31 `ds_loc_`, 13 `jumptable_`) and 210 data
(193 `cseg_`, 17 `data_`).

`splitting._split_off_foreign_objects` now trims that tail after the records are
rendered: the labels past the last instruction the range's *own* root owns
(`owners`) are neighbours. A tail label the routine's own code never names is a
neighbour whether it is referenced from outside or **dead**; a *code* neighbour
becomes its own range and file (like any routine), a *data* neighbour is left for
the master (a data-only fragment would be neither a routine nor asm-only). A
label inside the routine's own code is untouched, so a real routine is never
split. Effect: fragments 1364 → 1723, glued files 361 → 214, outside co-tenants
734 → 254 (code 247, data 7), and shared `shared/` files 58 → 84. `dos_con_loc_TUTH`
and `leaf_loc_JKPU` — the two pairs D7.6 left un-shared — now share from `shared/`.
Byte-identical: 18/18, `code_shift`/`data_shift` unchanged.

**A promoted `loc_` root is named after its code.** `tag_generics` used to skip a
plain `loc_` name outright, because a plain `loc_` root was held to live inside
the body of the named routine before it. Once a fragment is cut at one, that is
no longer true: an address-derived file name (`loc_00b6.asm`) would rename the
file whenever bytes above it moved. A second pass now tags every generic `loc_`
label in `label_map` whose span runs to the next root of *any* kind — its own
code. Address-named roots: 32 → **0**; content-tagged 554 → **924**. The tag also
picks up the sharing those names were blocking (58 → 84 lib files), because a
shared file can carry only one root spelling.

Two residual tails stay glued, deliberately:

- **A cross-referenced label inside the routine's own control flow.** `ds_loc_4c07`
  in `aztec_ldv` is the fallthrough target of a `call`, so it is owned by
  `aztec_ldv`; another routine reaching it makes it "outside", but trimming would
  split the routine. 247 code co-tenants are of this kind.
- **The `__zdata_start`/`__zcode_start` anchors** when a range runs past the data
  origin (4 fragments). A geometry anchor belongs to the master.

**Non-referenced names go to the sidecar.** The trimmer keys off labels, and a
dead one acts as a cut marker, so dropping dead labels is not the win it looks
like (measured: it removed 2 of 148 dead labels and *cost* 2 shared files,
because the marker went with it). A byte nothing references has no evidence for
its name or its boundary — the sidecar is the right home. Concretely, `vga`'s
`cseg_4102` blob sits on an operand the sidecar's `immediate_labels` already
names `data_4202`; `_resolve_imm_symbols` mints `cseg_4102` anyway, it loses at
render time, and the F3 pass still stamps a dead label for it. The fix is either
to make the sidecar authoritative (do not mint a name an `immediate_labels` entry
already covers) or to declare the object itself (an `objects` list, honoured like
`declared_roots`) so the boundary is a fact rather than a leftover label.

---

## 8. Key modules

| area | module |
|------|--------|
| census | `asm/lib/compare/records.py` (`count_frozen_addrs`, `count_name_use`, `count_hidden_flow`) |
| pointer scoring / promotion | `asm/lib/compare/pointers.py`, `promote.py` |
| emission | `asm/lib/compare/render.py`, `symbols.py` |
| splitting / naming | `asm/lib/compare/splitting.py`, `lib/names.py`, `lib/asm_only.py`, `lib/shared.py` |
| regions | `asm/lib/compare/regions.py` |
| segments / origins | `asm/lib/segments.py` |
| sidecar | `asm/sidecar/DSAVANT.json`, `lib/sidecar` |
| edits / rebuild | `asm/main/runner.py`, `asm/make/*` |
| round-trip | `asm/lib/verify/assemble.py` (`micro_assemble`) |
| pipeline ledger | `asm/lib/stagelog.py` (checkpoints), `asm/flow/` (`--stages` report + diagrams, `--check`, `pipeline.lock`) |

**Rule for new behaviour.** Every pipeline step is a `stagelog.step(...)` checkpoint. New behaviour either extends the step that produces the artifact, or is a declared `repair`/`recompute`/`cleanup` with `repairs=` and `why=`. `make build` prints the ledger headline; `python3 -m flow.generate --check` and `lib/tests/test_pipeline_lock.py` fail on an unlisted stage or an undeclared rewrite. After an intended change: `python3 -m flow.generate --lock`.

---

## Appendix A — Comment convention

A literal replaced by a formula prints its original value as a **separate leading
comment**, then the description, and the existing `; 0x<offset>` comment stays
last:

```nasm
    dw (__zimage_end - $$) % 512 ; 0x0056 ; e_cblp: bytes in final 512-byte page
    dw __zdataseg_para           ; 0x0ff6 ; e_ss: initial stack segment
    times (__zdseg_start - ($ - $$)) db 0 ; 0xaf0d
    dw (__zimage_end - __zcode_start) ; 0x93df ; o_csize: code size in bytes
```

Hex is fixed-width (`0x%04x`, bytes `0x%02x`). An in-place label carries no value
comment (its address is the include's `; 0x<offset>`). Literal data words carry a
trailing `; literal` tag.

## Appendix B — Waivers (kept literal, counted today)

- `e_sp` — stack reserve size, segment-relative (2).
- Overlay `o_bss` — uninitialized data size, host/runtime (13).
- `__zbss_size` — an MZ size; invariant under any source edit (never counted).
- `bios_data_*` and any `external_data` field — fixed external segment (inert).
- PSP fields not in `PSP_FIELDS` (inert).
- Raw-driver `data_*` — the code origin is known (`CS:0x100`) but the data
  segment is established at run time; the parked `ega dseg_24fd` is this case.
- Pure data words in lookup tables that are not addresses (F6/F9).
- `; 0x<F>` comments (F10) — documentation only.
