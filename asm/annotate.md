# Improving regenerated ASM with persistent annotations

## Goal

The generated ASM is an output of the disassembly pipeline, not the source of truth.
The goal is to improve the upstream heuristics and regenerate more useful ASM—not
to preserve edits made directly to generated files.

The workflow should make it easier to understand game code, identify Borland
runtime code, navigate by meaningful labels, and add notes that survive
regeneration.

## Principles

- Treat generated labels and routine boundaries as heuristic results, not verified
  facts. Record the evidence and confidence behind classifications.
- Keep human annotations and observations as durable inputs to regeneration.
- Anchor annotations to the input binary and address/offset, not generated ASM line
  numbers. Source lines can move between generations.
- Make annotations without requiring manual JSON editing.
- Preserve uncertainty. For example, `loc_2dd5` may be the original game main
  function; record that as a hypothesis until verified.
- Prefer symbolic labels for GDB breakpoints so navigation survives changes to
  generated source lines.

## Annotation workflow

Start with a project-local GDB Python command loaded through the VS Code debug
configuration. While paused, invoke a command in the Debug Console to record a name,
classification, confidence, and note at the current address. The command should
capture the paused PC and write the annotation through project code, not require
editing JSON.

Initially this may be a GDB command rather than a popup. If that interaction is
too cumbersome, a small workspace-specific VS Code extension can provide a
Command Palette action and form that captures the paused address.

Example annotation:

- Address: `DSAVANT/ds + 0x2dd5`
- Name: `game_main`
- Classification: game logic
- Confidence: hypothesis
- Note: likely the original main function

The annotation store should associate records with the input binary's identity and
address, and distinguish human notes from heuristic results and future runtime
observations. Runtime traces and other recorded evidence can be added later without
blocking the first annotation workflow.

## Improving regeneration

Generate a routine index from the pipeline's candidates and evidence to support
analysis. It should expose estimated boundaries, callers/callees, classification,
and provenance, while making uncertain results visible.

Use confirmed annotations and repeated patterns across DSAVANT binaries and overlays
to improve routine discovery and Borland-runtime identification. Feed accepted
names and notes into ASM generation so regenerated output has better labels and
comments.

Once runtime identification is sufficiently supported, generate separate ASM
include files for Borland runtime code. Include them from the master assembly in
original address order so the DOS image layout remains unchanged.

## Acceptance checks

- An annotation can be recorded while debugging without hand-editing JSON.
- Regeneration emits the annotation as the intended label/comment.
- GDB can set a symbolic breakpoint using that label after regeneration.
- Reassembly still reproduces the original binary bytes.
- A binary identity mismatch is surfaced rather than silently applying stale
  address-based annotations.

## Existing project support

The current sidecar already includes binary fingerprints, function names, forced
code/data ranges, and immediate labels. `known_funcs.json` stores reusable byte
patterns. Extend these mechanisms as appropriate; do not treat their inferred names
as ground truth.

Ghidra-related sidecar fields exist, but using Ghidra as the annotation interface is
optional and is not a project requirement.
