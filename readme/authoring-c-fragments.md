# Reversing one fragment

A generated `<routine>.asm` is a fragment, not necessarily one routine. It ends
at the next named routine, so a bare `loc_` callee can be glued after the root.

## Splitting

The source owns only the bytes it compiles to. Write the first routine; do not
pad it or merge in the co-tenant. `make build PROJECT` caps the fragment at the
compiled length and cuts the tail into `<tail>.asm`. Write and name that tail as
its own fragment.

`make info` shows the root and co-tenant spans. Before the cut, `make probe`
reports `[DIFF]` against the whole fragment; compare the compiled length with
the **root** size, not the old fragment size.

## Loop

```sh
make info  PROJECT BIN ROUTINE    # span, co-tenants, callers, source, tool/flags, names
make refs  PROJECT BIN ROUTINE    # symbols still needing names: value, space, width
make data  PROJECT DS OFFSET      # bytes/BSS state at a DS object
# write src_PROJECT/BIN/ROUTINE.c (or .s), first routine only
make probe PROJECT BIN ROUTINE    # compile one source, no gate
make build PROJECT                # after a split or rename changes the asm tree
make rebuild PROJECT BIN ROUTINE
make refs  PROJECT BIN ROUTINE    # final list to name
make name  PROJECT BIN ROUTINE=NAME:'note' SYMBOL=NAME:'note' ...
make rebuild PROJECT              # full check before calling it done
```

A routine kept in `src_<project>/shared/` is selected through any binary that
contains it; `make rebuild PROJECT ROUTINE` (no binary) gates it against every
such binary.

`JSON=1` makes `info`, `refs`, `data` and `probe` machine-readable. `LEN=n`
sets how many bytes `data` prints.

The name `info` marks effective is the one to rename. A routine can be named
only by the project-wide `routines` block, keyed by its content tag (for
example `dos_file_loc_IRLV`). `make name` updates that surface too; you can
also name the tag itself, `make name PROJECT BIN dos_file_loc_IRLV=...`.
Sources are renamed only after the sidecar validates; a failed build restores
both sources and the sidecar, and drops label exports the failed build wrote.

## Shared fragments

A routine in `src_<project>/shared/` has no label/span sidecar of its own; use
any binary that contains it for `info`/`refs`, or `make rebuild PROJECT
ROUTINE` to gate it against all of them.

A shared copy that differs only in its data names or call targets spells each
by a dotted common alias (`stem.bss1`, `stem.api_idx1`), which C cannot use.
`make refs` lists those aliases with every donor's own name. In C, spell any
one donor's name (`api_idx_0004_ONRQ`): each binary links it to its own copy,
so the source builds before anything is named. `make name PROJECT BIN
stem.api_idx1=NAME` writes all donors' entries at once (the alias itself
selects the donors) and rewrites the C to match.

Donors share a name only when their code matches: a routine with a shared
hand source is the source of every routine of that name, so `make name`
rejects giving a different copy that name. Give that copy its own name (from
its binary: `make name PROJECT vmele api_idx_000a_PKVL=NAME_alt`); the C keeps
calling the other donors' name and still links to it.

## Tools

* `info` reports the fragment span, co-tenants, callers, source, and the
  `cc`/`as` flags. It also lists every naming surface for the routine and
  marks the one the build applies last.
* `refs` lists the referenced symbols that still need names, with value, space,
  use width, canonical name, and definition. Already-named callees are omitted,
  so an empty list means nothing is left to name. Unlabelled absolute operands
  show the name the source must use (`bss_6eb5`).
* `data` reports whether a DS offset is file-backed or BSS and dumps bytes when
  present. It accepts an offset or build name.
* `probe` compiles one candidate with the routine's tool and flags and prints
  length, members, fixups and instructions. Use it for codegen questions
  instead of a full rebuild.
* `name` updates every surface naming the routine: its `function_names` entry,
  the project-wide `routines` entry keyed by its content tag, its
  `dispatch_table` slot, and hand-source files/references. Names owned by
  another binary's API are rejected with the owner named. A failed build rolls
  the rename back. `DRY_RUN=1 make name ...` (or `--dry-run`) prints the plan
  without writing, including the source references it would rewrite and any
  source file it would rename.

## C rules that matter

* Locals use the compiler frame: `char buf[10]` becomes `mov ax, 0xfff6;
  call aztec_csav`; no locals still calls `aztec_csav` with 0.
* Spell an unlabelled DS object by its canonical name (`bss_6eb5`,
  `dseg_6eb5`). A wrong `bss_`/`dseg_` prefix is an error, not a fallback.
* Arguments evaluate right-to-left, matching the push order.
* Do not put a routine body in `#asm`; use a `.s` when the fragment is not
  compiler output. `#asm` is only for a few instructions inside real C.
