# Reversing one fragment to C

A generated `<routine>.asm` is a **fragment**, not necessarily one routine.  It
is cut at the next *named* routine, so it can hold a following bare `loc_`
callee: `draw_animated_glyph_pair.asm` held `loc_SPML` until the split.

## Splitting is expected

A hand-written source owns exactly the bytes it compiles to.  If the routine
you are writing is shorter than the fragment, the build caps that fragment at
the compiled length and carves the tail into its own `<tail>.asm` on the next
`make build`.  This is intended behavior:

* write only the first routine in its source;
* do **not** pad the source or merge the following routine into it to fill the
  original fragment;
* let `make build PROJECT` cut the tail, then write and name the second source
  as its own fragment.

`make info` shows the root and any glued co-tenant with its span.  Before the
cut, `make probe` may report `[DIFF]` against the old whole-fragment span;
compare the compiled length with the **root's** size from `make info`, not with
the old fragment size.

Example:

```sh
make info DSAVANT vtrea draw_animated_glyph_pair
# root      draw_animated_glyph_pair 0x073b..0x07de (163 bytes)
# co-tenant loc_SPML                 0x07de..0x086b (141 bytes)

# write draw_animated_glyph_pair.c with only the first routine
make build DSAVANT          # cuts loc_SPML.asm out of the old fragment
# write loc_SPML.c with only the second routine
make rebuild DSAVANT vtrea loc_SPML
make name DSAVANT vtrea loc_SPML=update_treasure_frame:'note'
```

## Loop

```sh
make info  DSAVANT vtrea draw_animated_glyph_pair  # span, co-tenants, callers, tool/flags
make refs  DSAVANT vtrea draw_animated_glyph_pair  # values, spaces, widths, canonical names
make data  DSAVANT DS glyph_y_table                # bytes / BSS state at a DS object
# write src_DSAVANT/vtrea/draw_animated_glyph_pair.c (first routine only)
make probe DSAVANT vtrea draw_animated_glyph_pair  # compile one source, no gate
make build DSAVANT                                 # only when a split or rename changes the asm
make rebuild DSAVANT vtrea draw_animated_glyph_pair
make refs  ...                                     # final list to name
make name  DSAVANT vtrea draw_animated_glyph_pair=NAME:'note' SYMBOL=NAME:'note' ...
```

`JSON=1` makes `info`, `refs`, `data` and `probe` machine-readable.
`LEN=n` sets how many bytes `make data` prints.

## What the tools tell you

* `info` gives the fragment span from `.cache/<project>/spans/`, the root and
  any glued co-tenants with their callers, the hand source beside it, and the
  `cc`/`as` flags the build picks from `compiler_flags`.
* `refs` prints one row per referenced symbol: value, data space
  (`ds`/`bss`/`cseg`), use width (`byte`/`word`), the canonical build name and
  the asm file that spells it.  Raw absolute operands with no label
  (`[bx + 0x6eb5]`) are listed as `(unlabeled)` with the name the C must use.
* `data` reports whether a DS offset is file-backed or BSS, and dumps the
  bytes when they exist.  It accepts an offset or a build name.  An unlabeled
  BSS table is still `bss_6eb5` in C.
* `probe` compiles a candidate with the routine's exact tool and flags and
  prints its length, every member offset, and the instructions with their
  fixups.  Use it for codegen questions (does an array subscript fold to
  `[bx + 0x6eb5]`?) instead of a full rebuild.
* `rebuild PROJECT BIN ROUTINE` gates one source and then assembles the
  binary.  Run the full `make rebuild PROJECT` before calling the work done.

## C rules that matter here

* Locals use the compiler frame: `char buf[10]` becomes `mov ax, 0xfff6;
  call aztec_csav`; a routine with no locals still calls `aztec_csav` with 0.
* Name a DS object the build has not labelled by its canonical spelling
  (`bss_6eb5`, `dseg_6eb5`).  `lib/aztec/relink.py` mints it; a wrong
  `bss_`/`dseg_` prefix is an error, not a fallback.
* Arguments evaluate right-to-left, matching the push order in the asm.
* Do not put a routine body in `#asm`; use a `.s` when the fragment is not
  compiler output.  `#asm` is only for a few instructions inside real C.
