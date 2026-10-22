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
make refs  PROJECT BIN ROUTINE    # symbols: value, space, width, canonical name
make data  PROJECT DS OFFSET      # bytes/BSS state at a DS object
# write src_PROJECT/BIN/ROUTINE.c (or .s), first routine only
make probe PROJECT BIN ROUTINE    # compile one source, no gate
make build PROJECT                # after a split or rename changes the asm tree
make rebuild PROJECT BIN ROUTINE
make refs  PROJECT BIN ROUTINE    # final list to name
make name  PROJECT BIN ROUTINE=NAME:'note' SYMBOL=NAME:'note' ...
make rebuild PROJECT              # full check before calling it done
```

`JSON=1` makes `info`, `refs`, `data` and `probe` machine-readable. `LEN=n`
sets how many bytes `data` prints.

## Tools

* `info` reports the fragment span, co-tenants, callers, source, and the
  `cc`/`as` flags. It also lists every naming surface for the routine and
  marks the one the build applies last.
* `refs` lists referenced symbols with value, space, use width, canonical name,
  and definition. Unlabelled absolute operands show the name the source must
  use (`bss_6eb5`).
* `data` reports whether a DS offset is file-backed or BSS and dumps bytes when
  present. It accepts an offset or build name.
* `probe` compiles one candidate with the routine's tool and flags and prints
  length, members, fixups and instructions. Use it for codegen questions
  instead of a full rebuild.
* `name` updates every surface naming the routine: `function_names`, its
  `dispatch_table` slot, and hand-source files/references. Names owned by
  another binary's API are rejected with the owner named. A failed build rolls
  the rename back. `DRY_RUN=1 make name ...` prints the plan without writing.

## C rules that matter

* Locals use the compiler frame: `char buf[10]` becomes `mov ax, 0xfff6;
  call aztec_csav`; no locals still calls `aztec_csav` with 0.
* Spell an unlabelled DS object by its canonical name (`bss_6eb5`,
  `dseg_6eb5`). A wrong `bss_`/`dseg_` prefix is an error, not a fallback.
* Arguments evaluate right-to-left, matching the push order.
* Do not put a routine body in `#asm`; use a `.s` when the fragment is not
  compiler output. `#asm` is only for a few instructions inside real C.
