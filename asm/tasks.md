# iterative data-code boundary fix for ds.exe

## overview

data incorrectly classified as code → disassembled to mnemonics → reassembles to wrong bytes.
goal: iteratively find and fix each misclassified block until the rebuilt game matches original behavior.

## high-level workflow

1. build → run in dosbox-x → observe crash/hang state via gdb stub
2. identify the misclassified region (crash eip vs original eip)
3. fix the classification (add `db` / `times` / jump table annotation in ds.asm)
4. rebuild → verify crash is resolved or moves to the next problem
5. repeat until game runs cleanly

## task list

### setup: dosbox-x + gdb stub watchdog

- [ ] add gdbsrv.com to the debugger build (if not already built)
- [ ] create a dosbox-x config for make check that:
  - maps serial1 as `nullmodem server port:1234`
  - mounts BUILD as C:
  - loads gdbsrv.com before DS.EXE
- [ ] write check.py watchdog that:
  - launches dosbox-x with above config
  - waits for port 1234 (gdb stub ready)
  - connects to stub, sends `?` (halt reason)
  - polls periodically: read registers via `g` command
  - on timeout (5s): forces stub to halt, dumps EIP/CS, kills dosbox-x
  - on early exit: dumps final register state from stub
  - reports PASS only if game progressed past known initialization

### narrow down first incorrect block

- [ ] run `python3 main.py ds --verify` to list any semantic mismatches in ds
- [ ] compare `build_out/DS.EXE` vs `DSAVANT/DS.EXE` with `diff` / hexdump at suspected ranges
- [ ] from crash EIP captured by watchdog, map to source line in ds.asm
- [ ] check if EIP falls in a data region mistakenly classified as code (look for `add byte [bx+si], al` etc.)
- [ ] verify against the original binary: is that range data or code? (check bitmaps from classify)

### fix a misclassification

- [ ] annotate the block correctly in ds.asm:
  - if it's a jump table: add comment + `db` entries (16-bit little-endian)
  - if it's padding: use `times N db 0` or `times N db 0x90`
  - if it's data: change disassembly to `db` / `dw` / raw hex
- [ ] rebuild: `make rebuild MODULE=ds`
- [ ] re-run watchdog test to confirm crash moves or resolves
- [ ] check `make verify` still passes (semantic equivalence for code regions)

### iterate

- [ ] repeat for each successive incorrect block until:
  - game runs without crash under dosbox-x
  - `make verify --exact-bytes` passes for ds (if desired)
  - or at minimum, the game boots to the title screen

### tools & diagnostics

- `python3 main.py ds` — regenerate ds.asm from original
- `make rebuild MODULE=ds` — rebuild just ds.asm → DS.EXE
- `make verify` — semantic byte verification against original
- `make verify-exact` — strict byte verification (debug helper)
- `diff <(xxd build_out/DS.EXE) <(xxd DSAVANT/DS.EXE)` — hex diff
- `debugger/interact.py` — manual gdb stub interaction
- `debugger/tsr_ready.py` — poll stub until ready
