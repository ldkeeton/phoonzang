# Plan: layout-independent `src_DSAVANT`

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

`count_frozen_addrs` (`disassembler/lib/compare/records.py`) classifies every emitted
literal into three gate classes:

| class | breaks when | target |
|-------|-------------|--------|
| `code_shift` | code before it resizes — F1/F2 sizes, F3, F5 | 0 (reached) |
| `data_shift` | the data segment resizes — F4, F7 | 0 |
| `inert` | never — addresses *outside* the image (BIOS data area, PSP fields) | excluded |

`total = code_shift + data_shift` is the metric of record; `inert` is reported,
not counted. **There are no waivers:** a value is inert only when it names
something outside the image. Anything inside the image — a size, a stack pointer,
a table word assumed to be "just a number" — is work until it is derived or
proven. (The census still files the 224 `f6` `; literal` words under `inert`;
that is a classification to prove, not an exemption — see Section 5.)

**Current tree** (a `make build` fixed point, measured 2026-10-17): **`code_shift`
0, `data_shift` 0, `inert` 234, `total` 0.** Per-taxonomy:
`f1=0 f2=0 f3=0 f4=0 f5=0 f6=223 f7=0`; shared-geometry buckets
`o_corg=0 o_corg_imm=0 o_dorg=0 ds_size_imm=0`; indexed-table buckets
`cs_index=0 rebased=0`; BSS bucket `seg_delta=0`; `buffers=4` (inert: a zero
run that starts on a label is an object's body, its length the object's size —
the driver save buffers, Section 5). **`total` 0 is not the goal reached:** the
census only sees literals it has a pattern for. What it cannot see is Section 5's
remaining work — the 223 `f6` words to prove, the F9 immediates (a bare `mov
dx, 0x10ea` naming a driver string), and stored pointers still rendered as raw
`db` bytes (this step found 8). (`play`'s 18
self-modified/code-segment names are bound — Section 5, "`play`'s self-modified
operands"; every `[cs:reg + <table>]` is bound — Section 5, "Register-indexed
code-segment tables".)

Two auxiliary counters, both in `BASELINE_TOTALS`:

- `names_used` **7** / `names_inert` **24** — of the *named* frozen addresses,
  how many the tree actually refers to (`count_name_use`). Converting an inert
  name to a label moves the census without making anything follow an edit.
- `hidden_flow` **150** — near call/jmp targets whose *target* the source shows as
  code but whose *site* is emitted as bytes, so no source line spells the
  reference (`count_hidden_flow`; a lower bound — it rises mechanically as more
  fragments move into `shared/` and lose their `; 0x` anchors).

Every binary is at `code_shift` 0. `data_shift` is 0: `ega`'s two DS pointers
were code-segment addresses (Section 5, "Caller-inherited segments").

---

## 2. Frozen-value taxonomy (F1–F10)

| id | value | where emitted | status |
|----|-------|---------------|--------|
| F1 | MZ `e_cblp`/`e_cp`, `e_ss` | `_render_mz_header` | dynamic |
| F1 | MZ `e_sp`/`e_minalloc` | `_render_mz_header` | dynamic — the stack top, the last label of the BSS block |
| F2 | overlay `o_csize`/`o_entry`/`o_dsize` | `_render_ovr_header` | dynamic |
| F2 | overlay `o_bss` | `_render_ovr_header` | dynamic — the span of the overlay's BSS block |
| F2 | overlay `o_corg` | `_render_ovr_header` | bound to host (`__zresident_end`) |
| F2 | overlay `o_dorg` | `_render_ovr_header` | bound — it *is* the host DS size |
| F3 | `cseg_`/`data_`/unreached `loc_`/`leaf_`/`io_`/`dos_`/`string_`/`api_` `equ` | `_build_source` | done (`f3=0`): the last 24 were mis-minted names, fixed upstream |
| F4 | `dseg_`/`bss_` `equ` | `_build_source` | dynamic (MZ), declared on the overlay's own bytes (overlays); `ega`'s were CS (`f4=0`) |
| F4 | `psp_` `equ` | `_build_source` | inert |
| F4 | host DS-size immediates | `_build_source` | bound to `__zdseg_end` |
| F5 | `times N db 0` gap to `data_origin` | `_render_data_block` | dynamic (MZ); the driver "pads" were buffers (`f5=0`, `buffers=4`) |
| F6 | numeric `dw` in a `literal` table | `_inject_jump_tables` | unproven — filed inert today; each table must be shown to hold no address |
| F7 | unrecognized pointer word in data | `_render_data_block` | `f7=0` counts only jump-table words; a pointer left as raw `db` is uncounted (8 found and promoted 2026-10-17, Section 5) |
| F8 | MZ relocation-table offset word | `hdr[28:]` | in scope |
| F9 | unproven immediates (`_fmt_imm`) | `format.py` | open — needs the immediate-address rule (Section 5) |
| F10 | `; 0x<F>` offset comments | `_render_records` | comments, not values — assemble to nothing |

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

**Implemented** in `disassembler/lib/compare/pointers.py` (scoring) and
`promote.py` (emission). Two weights are narrower than the table, forced by the
corpus: `pointer_access` is an anchor only for a *table* read (`[bx+disp]`), and
DATA space is bounded to the file-backed segment (`value < bss_boundary`) — the
consumption anchor is the exception, since the consuming use proves the space.
The ddisasm `point-to-boundary-sym(+4)` term is **omitted**: a 16-bit MZ image
has no fine sections, so its cheap approximation (target = region start) fires on
coincidence.

**Corpus.** `disassembler/sidecar/DSAVANT.json` carries a per-binary `data_pointers` +
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
bss_0cf6 equ __zbss_0cf6 - __zdseg_start
bss_830c equ __zbss_830c - __zdseg_start
```

BSS is source: an `absolute __zimage_end` block after the image, whose labels
are the BSS objects and whose `resb` gaps are their sizes. The stack is its last
object (SS == DS), so the sizes are spans of it:

```nasm
__zbss_size equ __zbss_end - __zimage_end
    dw ((__zstack_top - __zimage_end) + 15) // 16 ; e_minalloc
    dw __zstack_top - __zdseg_start               ; e_sp
```

**Host DS-size immediates** are rewritten to `__zdseg_end`
(= file-backed data + reserved BSS).

**Overlays.** Every overlay's data offsets are the *host's* DS offsets and its
`o_dorg` **is** the host DS size, so the host owns the DS name map: the host
declares one recipe per offset (`dseg_X` → a placed label; host BSS → a label in
its BSS block) and the overlays `%include` it. This collapsed ~1230 literal
`equ`s (647 names redeclared in each overlay) into the host's map. A name at or
past `__zdseg_end` is an overlay's *own* data or BSS (loaded at `o_dorg`, different
in every overlay), so the overlay declares it on its own byte or BSS label:
`bss_9408 equ __zdseg_end + (__zobss_9408 - __zdata_start)`, and `o_bss` is
`__zobss_end - __zimage_end`.

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

`code_shift` and `data_shift` are both 0 and stay 0. What remains is the work the
census cannot count: the F6 tables, the F9 immediates and the stored pointers
still rendered as bytes (below), then the shuffle build.

- **D8 — inline switch tables (done, 2026-10-15).** A sparse `switch` compiles
  to `mov cx, N; call <helper>`; the helper pops the return address as the table
  base, `repne scasw`s the keys and jumps through `[es:bx+di-4]`, so it never
  returns and the call is followed by **N-1 keys then N case targets** (the last
  is the default). The decoder used to fall through the call and decode the
  target words as `jcc`s — each fake branch target became a frozen `loc_` `equ`
  (all of `vpcvw`'s `loc_29xx` cluster) — and 7E.4 tagged a wrong-length N+1
  words `literal`. 8 call sites in 5 overlays (4 byte-identical helper copies).
  - *Generic mechanism:* `RecursiveDescentPhase(inline_tables=…)` takes
    recognizers `(data, call, prev) -> (keys, targets) | None`;
    `_inline_call_table` stops the block at the call, carves the table, queues
    the targets as code roots, and refuses if any target leaves the image.
    `JumpTableInfo.keys` flows to the spec; `_inject_jump_tables` resolves only
    the target words and the renderer tags keys `; literal`; `verify.py` lets a
    keyed table supersede the 7E.4 N+1 guess.
  - *Toolchain part:* `lib/phases/aztec_switch.py` (`aztec_switch_layout`,
    matched on the helper's exact 24-byte body plus the adjacent `mov cx`),
    registered in `main/phases.py` — the decoder itself stays toolchain-agnostic.
  - *Effect:* `f3` 64 → 39, `code_shift` 82 → 57, `f6` 241 → 223, `hidden_flow`
    157 → 118, `names_used` 44 → 22; 18/18 byte-identical. Edit-property:
    `InlineSwitchEditTests` (a byte inserted before a `vpcvw` case arm moves
    exactly the targets at or past it; keys unchanged).
  - *Follow-up (done, 2026-10-17):* overlay table targets rendered as
    `label - IMAGE_BASE + 0x5055`, a frozen `o_corg` the census did not count.
    They now render `label - IMAGE_BASE + __zres_end` (1992 words), the same
    form as `o_entry`, which also stays right under the ELF prep's `VBASE equ 0`.
    18/18 byte-identical; `HostIncludeTests.test_overlay_corg_follows_a_host_code_edit`
    checks that a table word moves with a host code edit.
- **Raw-driver code tables + load origin (done, `61eba0bb`).** A driver runs at
  `CS:0x100`, so a stored code pointer is `file + load_offset`; the driver switch
  tables now resolve and inject their arms (`jumptable_XXXX_case_*`), and a
  branch target laid out inside another routine's fragment is rooted instead of
  being an `@..owner.lN` local. `play`'s INT 08h handler cluster decodes as code,
  exposing its self-modified `cseg_` operands: `f3` 39 → 44, `code_shift`
  57 → 62, `inert`/`f6` 230/223 → 231/224, `hidden_flow` 118 → 181 (most of that
  from the earlier `shared/` growth 146 → 202), `names_used`/`names_inert`
  22/25 → 26/26.
- **`play`'s self-modified operands (done, 2026-10-17).** All 18 names bind:
  - a name strictly inside a decoded instruction is `__zinsn_<start> + k` over a label
    on the instruction's first byte (`render._instruction_anchor`) — the INT 08h
    handler's patched immediates/displacements (`cseg_0848`…`cseg_1904`,
    `cseg_121b`, `loc_121d`);
  - the patched `call far 0000:0000` that chains the old INT 08h vector stays
    code when some `[cs:]` store writes its operand (`verify._cs_written_offsets`;
    the Aztec "direct far = data" rule is unchanged otherwise), so `cseg_0b10`/
    `cseg_0b12` hang off it; the zero placeholder renders `far 0x0:0x0`;
  - the four mode-dispatch tables at 115b/1178/1196/11b3 (indexed by the 0-5 mode
    byte `cseg_0a7c`) are sidecar `code_tables` + `jump_tables` with count 6, and a
    declared code table is hard data (`model.PhaseContext`). Their words had
    decoded as `test`/`jp`, minting the fake `loc_1190`/`loc_MUHV`; 11b3 had run
    three words into a byte table. 0x12af-0x1344 now decodes as code, not a `db`
    blob;
  - splitter: a tail label is a routine's own only when the piece it ends up in
    names it (`_split_off_foreign_objects`), so `cseg_1774` (used only by the
    promoted `loc_NQLH`) goes to the master. Co-tenancy 244/267/10 → 241/266/4.

  `f3` 44 → 25, `code_shift` 62 → 43, `names_used` 26 → 8, `hidden_flow` 181 →
  177; 18/18 byte-identical. Edit-property:
  `InsertBytePropertyTests.test_driver_self_modified_operands_follow_an_inserted_byte`.
- **Register-indexed code-segment tables (done, 2026-10-17).** `[cs:bx +
  0x1529]` and every overlay switch dispatcher `jmp [cs:bx + 0x5415]` spelled a
  table's CS address as a number the census did not count (about 183 sites).
  - `jumptables._bind_cs_table_operands` rewrites each operand whose
    displacement lands on a carved data object over that object's label:
    `jumptable_0495 + 0x10 - IMAGE_BASE`, `cseg_1429 - IMAGE_BASE`, and
    `jumptable_03ce - IMAGE_BASE + __zres_end` in an overlay. A displacement on
    code, below the image or 0 (`[cs:bx]`) stays; each line must assemble back.
  - Immediates: `segdataflow` proves `mov bx, <table>; cs xlatb` (no listed
    operand) and follows a forward `jmp`; three dead stores of a table address
    in `play` (`mov di, 0x1a3a` …) are sidecar `immediate_pointers`, checked
    against the bytes (`symbols._resolve_declared_immediates`).
  - Three undetected overlay switch tables (vmaze ab7d, vpclv 4679, vtrea
    0c85) are declared `code_tables` with their dispatcher (`jmp`), which keeps
    the arms in the dispatching function and survives re-validation
    (`JumpTableInfo.declared`); the fake `loc_ITNU`/`loc_LNJU`/`loc_NGSV` go.
  - A `jmp`-dispatched switch arm is a block of its dispatcher, not a root
    (`runner`): a generic category name used to cut the routine into one
    fragment per arm. `sprintf`, `ds_app_UPSN`, `ds_app_JKOJ` are whole again.
    Co-tenancy 241/266/4 → **202/137/4**.
  - The census gates the class at zero: `cs_index` (`[cs:reg ± 0x<3+ hex>]`) and
    `rebased` (`label - IMAGE_BASE + 0x<hex>`), both `code_shift`.

  `code_shift` 43 → 41, `f3` 25 → 24, `f5` 3 → 2, `hidden_flow` 177 → 150;
  18/18 byte-identical. `data_shift` 1 → 2: following the `jmp` proves `ega`'s
  `mov bx, 0x2a02` a DS pointer, so a bare number is now the visible
  `dseg_2a02` (settled below: "Caller-inherited segments"). Edit-property:
  `InsertBytePropertyTests.test_driver_indexed_tables_follow_an_inserted_byte`.
- **The 24 F3 `equ`s (done, 2026-10-17).** None was a rendering problem: each
  was a name the pipeline should never have minted, so the fix is upstream and
  the `equ` disappears with it.
  - **20 on a jump table's first byte.** `CascadeTargetPhase` admits a short
    DATA run right after CODE that decodes fully and contains a branch. A jump
    table after its dispatcher's `jmp` is exactly that shape: its words decode
    as instructions. The table start became a `verified_cascade` root, a second
    name beside `jumptable_XXXX`, and the decoded "branches" seeded two more
    (`vbase` `0x18c8`/`0x18ca`, from inside `jumptable_185e`). Cascade now skips
    a run that overlaps a known table (`ctx.jump_tables`).
  - **2 from `jmp [dseg_XXXX]` read in the wrong frame.** The recursive phase
    read an absolute `jmp [disp]` vector in the code frame. Without a `cs:`
    override the operand is DS, so it picked up an unrelated word and seeded a
    target in the middle of whatever sat there (`vinstall 0x5fe5`, `ds
    0x10108`). `_vector_off` resolves it in DS (the code frame stays for a raw
    driver, `DS = CS`).
  - **What that exposed.** The vectors Aztec's `write` jumps through
    (`dseg_252e`/`2530`, `dseg_0cf0`/`0cf2`: console read/write) and the exit
    hook (`call [dseg_2500]`/`[dseg_0c9c]`) are code pointers stored in DS, and
    were frozen as `db` bytes the census never counted. A near `jmp`/`call
    [disp]` is now a consumer in the scorer (it loads IP from the word), so all
    six are `dw <label> - IMAGE_BASE`; each is a reviewed corpus entry.
    `test_ds_insert_byte_property` now checks that they move with their code.
- **BSS as source (done, 2026-10-17).** Each image's BSS is an
  `absolute __zimage_end` block of labels and `resb` gaps. `__zbss_size`,
  `o_bss` (13) and the MZ `e_sp`/`e_minalloc` (2 + 2; `e_minalloc` was not
  counted before) are spans of it, the stack being its last object. The host
  BSS names (`(__zimage_end - __zdseg_start) + <distance>`) and the overlays'
  own data and BSS (`__zdseg_end + <distance>` in the host's shared frame — the
  D7.1 "known residual") were frozen distances the census never saw: **690**
  lines. Now the host's are labels in its block, and each overlay declares its
  own names on its own bytes and BSS labels; the new `seg_delta` bucket
  (`data_shift`) gates the form at 0. `code_shift` 41 → 26. Edit-property:
  `test_overlay_bss_follows_an_inserted_data_byte` (one byte at `vpclv`'s
  `__zdata_start` moves `dseg_9400`/`bss_9408`/`bss_9704` and keeps `o_bss`),
  `test_ds_stack_follows_an_inserted_data_byte` (`e_sp` 0xf198 → 0xf199).
- **F6 literal tables (224 words) and F9 immediates → proven.** "Not an address"
  is a claim, not a default. Each `; literal` table needs evidence (the scorer's
  negative evidence, a consumer that uses it arithmetically, or a sidecar entry
  verified against the bytes); the rest are candidates.
- **Driver zero pads (done, 2026-10-17).** They were not fill. `ega`'s 2306
  zero bytes are the word `cseg_1afb` plus two 0x480-byte save buffers (4 planes
  × 0x120), and `vga`'s 2050 are a word plus two 0x400-byte buffers. Pointers to
  the buffers sit just before them (`ega` `cseg_1ad5`/`1ad7` = CS 0x1bfd/0x207d,
  `vga` `cseg_14b4`/`14b6`), frozen as `db` bytes; the code loads them into `si`
  and swaps them as a double buffer. The scorer now runs on raw drivers, with
  proven consumers as its only candidates (no alignment rule, no shape terms; a
  driver's variables sit at any byte). It promotes three; `ega cseg_1ad5`'s
  consumer is across a call (`rep movsb` in `leaf_loc_PUST`), so that one is a
  reviewed corpus entry. Each pad is now one buffer from a pointer-named label
  (`__zcp_1afd:` / `times 1152 db 0`). That is an object's size, not a distance to
  a fixed origin, so the census files a zero run that starts on a label as
  `buffers` (inert, reported) rather than F5. Edit-property:
  `test_driver_buffer_pointers_follow_an_inserted_byte`.
- **Stored pointers left as raw bytes (open).** The 8 above were invisible:
  the census counts a numeric `dw` in a jump table (F7) and a `; literal` word
  (F6), but not a pointer still inside a `db` data block. The scorer's
  `unproven` backlog lists the MZ candidates with access evidence; it has to be
  worked to zero (prove each, or record it as a number with its evidence). In
  the drivers the remaining candidates are the bare immediates (F9).
- **Caller-inherited segments (done, 2026-10-17).** The dataflow used to re-seed
  every function root with the host convention (`DS = ES = DATA`), which only
  holds where the host enters. Now a root reached only by direct `call`/`jmp` in
  the image (not a seed, a declared handler or a switch arm) starts in the merged
  state its callers hand it. `ega`'s blitters `io_loc_SRLG`/`JGUP`/`QMLN` are
  called after `mov ax, cs; mov ds, ax`, so `dseg_24fd`/`dseg_2a02` became
  `cseg_23fd`/`cseg_2902 - IMAGE_BASE`: `data_shift` 2 → 0. `ds`'s
  `mov di, dseg_000a` (after `int 21h/35h`, which returns the EMS driver's `ES`)
  went back to `0xa`, a foreign-segment offset it always was. 18/18
  byte-identical.
- **Raw-driver absolute immediates.** A driver's *values* are CS offsets too
  (`mov dx, 0x29ca` names a string at file `0x28ca`). `ega`'s `io_loc_QMLN` is
  another: `add si, strict word 0x2602` rebases a caller's `si` onto a CS buffer
  that `[si]` then reads with `DS = CS`. The coordinate is known
  (`disp - 0x100`) and the *named* half is bound (D7.6b); what remains is the
  **unnamed** class (~45 real references, e.g. `mov dx, 0x10ea` naming the
  `MAZE SET ERROR.` string at file 0x0fea), which needs a rule that decides which
  bare immediates are addresses -- the immediate analogue of the pointer scorer.
- **The C data-reference contract.** A hand-written `.c` may name a DS offset the
  build has no symbol for; `lib/aztec/relink.py` takes it as written and emits a
  bare literal, so a wrong `dseg_`/`bss_` prefix is invisible (the tree names
  DS:0x8482 `bss_8482`, past `bss_boundary`). The C reference should resolve: the
  build declares the canonical name, or the fallback is a hard error. The
  `_RAW_DATA` fallback in `relink.py` is still there; the raw `dseg_`/`bss_`
  spellings now live in the hand-written `.c` under `ds/`, `vinstall/` and
  `shared/` (formerly `lib/`).
- **Coverage.** An overlay should be covered by the edit-property test. The host
  already is (`HostIncludeTests`: a host data edit moves `o_dorg` and every
  `dseg_` operand; a host code edit moves an overlay's call displacement).
- **ELF/DWARF for overlays** (`make elf-rebuild`): the prep is MZ-shaped and
  raises for overlays/drivers. Needs the kind-aware header handling, the
  `o_entry - o_corg + 14` entry mapping, and a per-type load base
  (`EXE → 0`, `OVR → o_corg`, `DRV → 0x100`). Still open (`make/elf.py` prints
  "no ELF yet: overlay/driver DWARF is D7.0d"). Done for MZ: checkout-independent
  DWARF paths (`lib/dwarf_paths.py`, mapped back in `launch.json`).

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
- Byte-identical fragments collapse into `src_DSAVANT/shared/` and each master
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
lib.compare.cotenancy src_DSAVANT`, and logged by `make build`): of 1364
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
split. Effect: fragments 1364 → 1723, glued files 361 → **211**, outside
co-tenants 734 → **250** (code 243, data 7), and shared `shared/` files 58 → 84.
`dos_con_loc_TUTH` and `leaf_loc_JKPU` — the two pairs D7.6 left un-shared — now
share from `shared/`. Byte-identical: 18/18, `code_shift`/`data_shift` unchanged.
D7.6b then took glued 214 → 211 and code-outside 247 → 243 by classifying the
renderer's `__z*` *aliases* as aliases (`cotenancy._ALIAS_PREFIX`): four
`__zdata_start` origins had been counted as *code* co-tenants, and three
fragments whose only extra label was one of them were reported as glued. A label
on a byte adds no bytes to a fragment, so it is not "the routine plus a
neighbour".

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
| census | `disassembler/lib/compare/records.py` (`count_frozen_addrs`, `count_name_use`, `count_hidden_flow`) |
| decoding / toolchain idioms | `disassembler/lib/phases/recursive.py` (generic); `aztec_overlay.py`, `aztec_switch.py` (Aztec-specific, wired in `disassembler/main/phases.py`) |
| pointer scoring / promotion | `disassembler/lib/compare/pointers.py`, `promote.py` |
| emission | `disassembler/lib/compare/render.py`, `symbols.py` |
| splitting / naming | `disassembler/lib/compare/splitting.py`, `lib/names.py`, `lib/asm_only.py`, `lib/shared.py` |
| regions | `disassembler/lib/compare/regions.py` |
| segments / origins | `disassembler/lib/segments.py` |
| sidecar | `disassembler/sidecar/DSAVANT.json`, `lib/sidecar` |
| edits / rebuild | `disassembler/main/runner.py`, `disassembler/make/*` |
| round-trip | `disassembler/lib/verify/assemble.py` (`micro_assemble`) |
| pipeline ledger | `disassembler/lib/stagelog.py` (checkpoints), `disassembler/flow/` (`--stages` report + diagrams, `--check`, `.cache/_flow/pipeline.lock`; opt-in via `make flow`) |

**Rule for new behaviour.** Every pipeline step is a `stagelog.step(...)` checkpoint. New behaviour either extends the step that produces the artifact, or is a declared `repair`/`recompute`/`cleanup` with `repairs=` and `why=`. Ledgers are opt-in (`WIZ_STAGELOG=1 make build <project>`); `make flow ARGS="--check"` and `disassembler/tests/test_pipeline_lock.py` fail on an unlisted stage or an undeclared rewrite. After an intended change: `make flow ARGS="--lock"`.

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

## Appendix B — Fixed external addresses (not waivers)

These are the only values kept literal, because they name memory *outside* the
image, which no source edit can move:

- `bios_data_*` and any `external_data` field — the BIOS data area (segment 0x40).
- `psp_*` fields — the DOS Program Segment Prefix layout.

Everything else that is literal today (the raw-driver `data_*`, F6 tables,
F9 immediates) is open work in Section 5.
