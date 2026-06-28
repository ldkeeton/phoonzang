Here is a comprehensive summary synthesizing findings from the USENIX Security papers (Andriesse et al. 2016, Flores-Montoya et al. 2020), the IEEE S&P SoK (Pang et al. 2021), the Quarkslab OLLVM deobfuscation article, the ddisasm project documentation, the Ghidra project, and general disassembly literature.
1. Techniques for Distinguishing Code vs. Data in Disassembly
Linear Sweep
- How it works: Disassembles from a starting address sequentially, decoding one instruction after another, proceeding linearly through the binary without regard for control flow.
- Pros: Simple, fast, covers every byte in a section.
- Cons: Extremely fragile on variable-length ISAs (x86). A single embedded data byte can cause cascading "snowball" misalignment -- the disassembler falls out of sync and everything downstream decodes incorrectly as garbage instructions.
- Typical tools: objdump, Windows DEBUG, early disassemblers.
Recursive Descent / Recursive Traversal
- How it works: Starts at known entry points, follows control-flow edges (call, jmp, conditional branches) to discover reachable code. Only disassembles bytes reachable via these edges. When an indirect jump/call is encountered (e.g., jmp eax), the trail goes cold unless the target can be resolved.
- Pros: Much more robust than linear sweep. Avoids disassembling unreachable data. Handles alignment problems by only decoding code that is reached via explicit control flow.
- Cons: Misses code reachable only through indirect control flow (callbacks, virtual function tables, jump tables). May fail to discover interrupt handlers, constructors, or code reachable only via data in read-only sections. Requires iterative refinement.
- Tools: IDA Pro's primary mode, Ghidra's initial pass, Binary Ninja.
Heuristics for Jump Tables
- Approaches:
1. Pattern matching: Recognize common compiler idioms for switch statements (e.g., cmp reg, X; ja default; jmp [table + reg*4]). The base address of the table and the index register are identified to recover targets.
2. Value range analysis: After symbolic execution of the comparison and bounds check, the possible range of the index variable is limited; every entry in the table within that range is assumed to be a code address.
3. Data-flow backtracking: From an indirect jump, propagate backward to find the instruction that computes the table base. The table's extent and alignment are inferred.
4. Trial disassembly: Read candidate table entries, decode them as instructions, and check if they form plausible code (e.g., valid opcodes, alignment sanity, leading to known function prologues).
- Pros: Recovers targets that purely recursive traversal misses. Essential for switch statements.
- Cons: Fragile; small changes in compiler optimization can break patterns. False positives if random data happens to look like a table.
Data-in-Code Heuristics
Andriesse et al. (2016) found that prior work vastly overstated the prevalence of inline data in real compiler-generated binaries. Their study of 981 real-world binaries showed:
- Alignment padding: Compilers insert 0x90 (NOP) or multi-byte NOPs for alignment. These are trivially detectable.
- Jump tables / switch tables: Stored in .rodata or at the end of functions. Detected by jump target analysis.
- PC-relative data: On x86-64, LEA with RIP-relative addressing can reference data in the code section. A disassembler must track these references.
- Function tail merging: Compilers may overlap code (e.g., two functions ending with the same epilogue sharing bytes). This creates bytes that are both data (for one function) and code (for another).
Common heuristics for spotting embedded data:
- Byte sequences that decode to privileged instructions unlikely in user code.
- Bytes that, when decoded as instructions, produce illegal opcodes or instructions with unusual prefixes.
- Instructions that would cross section boundaries.
- Instructions that would land in the middle of known instructions (conflict detection).
2. How Ghidra, IDA Pro, and Binary Ninja Handle Code/Data Boundary Detection
Ghidra (NSA)
- Architecture: Uses a multi-pass, iterative SLEIGH-based specification system.
- Initial pass: Recursive descent from entry points, exports, and named functions. Disassembles into "listing" with code units.
- Phase weaving / iterative refinement: Ghidra's decompiler is not downstream -- it feeds back. The decompiler performs data-flow analysis, type propagation, and constant propagation. If the decompiler determines a register holds a constant that is used as an address, it can add a code reference, triggering re-disassembly at that address. This is the key "phase coupling" mechanism.
- Non-returning functions analysis: Ghidra detects functions that never return (e.g., exit, longjmp) to avoid incorrectly decoding data after a call-to-nonreturn as code.
- Call-fixup: User-defined models for calling conventions help resolve indirect calls.
- Action-based architecture: Analysis is broken into "actions" (e.g., DisassembleAction, DecompilerAction) that execute in phases and can be re-triggered -- later actions can mark bytes as data, and the disassembly action re-evaluates.
IDA Pro (Hex-Rays)
- Initial pass: Recursive descent from entry points. User can mark bytes as code or data manually.
- Flirt signatures: Applied post-disassembly to identify library functions, improving function boundary detection.
- Decompiler feedback: The Hex-Rays decompiler performs type propagation, which can resolve indirect calls. Resolved targets are fed back to the disassembler kernel.
- Phase model: IDA has a well-known "analysis phase" system: Phase 0 (startup), Phase 1 (initial disassembly), Phase 2 (tail call / jump table analysis), Phase 3 (function analysis / stack variables). Each phase can add new code addresses and trigger re-analysis.
- Jump table analysis: IDA uses the jpt (jump table) mechanism -- it recognizes switch idioms and adds the table entries as code targets.
- User interaction: IDA is fundamentally interactive -- the user can force code/data decisions that cascade through re-analysis.
Binary Ninja (Vector 35)
- Architecture: Built from the ground up with a "linear IL" pipeline: bytes -> LLIL (Low-Level IL) -> MLIL (Medium-Level IL) -> HLIL (High-Level IL).
- Phase-coupled design: Analysis is designed as a series of passes that each produce increasingly abstract IL. The key insight is that MLIL data-flow analysis can identify constants that are code pointers, which then feeds back to the LLIL disassembly to enqueue new addresses for disassembly.
- Graph-based analysis: Functions are analyzed as control-flow graphs. The CFG refines function boundaries. If a call target lands inside an existing function, the function may be split or merged.
- Auto-analysis queue: Changes (user marking bytes as code/data) enqueue new analysis jobs that propagate through the IL pipeline.
Common Pattern: Iterative Refinement
All three tools share a fundamental pattern:
1. Gather: Collect all known entry points (entry, exports, imports, user-specified).
2. Disassemble: Recursive descent from known points.
3. Analyze: Build CFGs -> identify functions -> data-flow analysis -> type propagation.
4. Resolve: Indirect call targets identified by data-flow analysis are added as new entry points.
5. Repeat (iterate) until fixpoint.
This is the "phase weaving" or "iterative refinement" approach -- later, more sophisticated analysis feeds back to refine earlier, simpler classification decisions.
3. Graph-Based Disassembly and Phase-Coupled Decomposition
The Concept
Traditional disassembly pipelines are linear:
Bytes -> Decode -> Instructions -> Control Flow Graph -> Functions -> Decompilation
This has a fundamental problem: each stage depends on correct decisions by the previous stage. If the disassembler misclassifies code as data (or vice versa), all downstream analysis is wrong.
Graph-based disassembly (or phase-coupled decomposition) structures the pipeline as a graph of interacting phases:
           +--------+ 
           | Bytes  |
           +--------+
               |
         +-----v------+
         | Decoder    |<---------+
         +-----+------+          |
               |                 |
         +-----v------+         |
         | CFG Builder|<--------+ (re-disassemble at new targets)
         +-----+------+         |
               |                |
         +-----v------+        |
         | Data-Flow  |--------+ (resolve indirect targets)
         +-----+------+
               |
         +-----v------+
         | Type Prop  |--------+ (mark bytes as data/code)
         +-----+------+
               |
         +-----v------+
         | Decompiler |
         +------------+
Datalog Disassembly (ddisasm) -- A Concrete Example
GrammaTech's ddisasm uses Souffle Datalog to implement exactly this approach:
- Facts: Initial facts are extracted from the binary (section headers, symbols, relocation entries, byte values).
- Rules: Datalog rules encode disassembly heuristics:
- code(Addr) if at entry point, export, or reachable via control flow.
- instruction(Addr, Bytes) if bytes decode to a valid instruction at a code address.
- Conflict rules: if two instructions would decode at overlapping addresses, only the one reachable via control flow is kept.
- Function boundary inference: a function starts at targets of calls, at entry points, and at addresses not preceded by fall-through.
- Stratified negation / fixpoint: Datalog's fixpoint semantics naturally provide iterative refinement. The program reaches a minimal model -- the set of all logically deducible code locations.
- Weighted Interval Scheduling (WIS): The most recent ddisasm work (Flores-Montoya et al., IEEE S&P 2025) treats disassembly as a weighted interval scheduling problem. Each possible instruction decoding is an "interval" with a weight (confidence learned via ML). The optimal set of non-overlapping intervals maximizes total weight. This elegantly handles conflicting decodings.
Benefits of Phase-Coupled Decomposition
- Feedback loops: Later stages correct earlier mistakes.
- Declarative: Rules describe what code/data is, not how to find it (ddisasm).
- Soundness vs. completeness trade-offs: Can be tuned to prefer false positives (accept questionable instructions) or false negatives (only accept provable code).
- Parallelism: Independent phases can run in parallel; constraints synchronize them.
Drawbacks
- Complexity: Harder to implement and debug than linear pipeline.
- Performance: Iteration to fixpoint can be expensive.
- False positives from unresolvable indirect jumps: Without dynamic analysis, some code may never be discovered.
4. Detecting Instructions That Look Valid but Are Actually Data
Common Patterns of Embedded Data in Code Sections
1. Alignment padding: Compilers pad with NOPs (0x90), multi-byte NOPs (e.g., 0x0F 0x1F 0x00), or 0xCC (INT3). These decode to valid instructions but are never executed as the main path.
2. Jump tables: Arrays of 4- or 8-byte offsets placed after a conditional branch. Each entry, when decoded as instructions, yields valid but nonsensical sequences. Detection:
- Look for a jmp [reg*4 + base] pattern, then read the table.
- In ddisasm: rules declare that jump table targets are code, and the table entries themselves are data.
- In Ghidra/IDA: plugin heuristics search for dense arrays of pointers following switch idioms.
3. C string constants: ASCII strings embedded in .text (common in embedded/MCU code). Detection:
- Strings decode to instructions like ADD, OR, CMP with ASCII operands, which often produce unusual register combinations (e.g., ADD AL, 0x65).
- A heuristic: scan for runs of printable ASCII; if found, check if nearby code jumps over them.
4. Lookup tables (e.g., sine tables for demos): Arrays of precomputed values used by algorithms. Detection:
- If a PC-relative LEA loads an address, and subsequent code loads values from that range but never executes from it, the range is data.
- Statistical analysis: data tables have high entropy; code has low entropy with opcode patterns.
5. Overlaid code (function tail merging): Two functions share trailing bytes. The shared bytes are "data" for the caller of the first function (which jumps over them) and "code" for the second. Detection:
- Compute the CFG. If an address is a branch target and also fall-through from a preceding instruction, check if the preceding instruction's function is the same. If not, it is a tail-merged region.
- Ghidra and IDA handle this by allowing overlapping code blocks.
Concrete Detection Algorithms
Algorithm: Conflict Resolution (used in ddisasm)
For every pair of overlapping instruction decodings (A at addr, B at addr+delta):
  - If A is definitely code (reachable via CFG) and B is not, keep A, discard B.
  - If A and B are both reachable, keep both but mark overlap for user review.
  - If neither is reachable, discard both (or keep based on heuristic score).
Algorithm: Data-Flow Backtracking for Jump Tables
For each indirect jump J:
  1. Collect all reaching definitions for the register/memory used by J.
  2. Identify the instruction that computes the table base (typically LEA or MOV + ADD).
  3. Identify the index variable and bounds check.
  4. If the index is bounded (via CMP/JA), the table has N entries.
  5. Read N entries from the table base; enqueue each as a code target.
Algorithm: Function Epilogue Detection (for alignment padding)
For each byte that is not a known branch target:
  - If it decodes to a valid single-byte instruction but is surrounded by known code boundaries, 
    mark as padding.
  - Pattern: CC (INT3), 90 (NOP), 0F 1F 00 (NOP DWORD), 66 90 (XCHG AX, AX).
5. 16-bit x86 Specific Challenges with Code/Data Separation
Challenges
1. Segmented memory model: Code can use far calls (CALL FAR), which change both CS and IP. The disassembler must track which segment register is active. Far indirect calls (e.g., CALL FAR [table]) are extremely difficult to resolve statically.
2. Variable instruction encoding (8086/286): The 16-bit x86 instruction set has even more ambiguous byte sequences than 32/64-bit because many opcodes change meaning depending on prefixes and operand size overrides (e.g., the 0x66 prefix in 16-bit mode selects 32-bit operands, and vice versa). A length disassembler must track the current mode.
3. Real mode vs. protected mode: 16-bit code can switch between real mode and protected mode at runtime. The disassembler needs to know the mode at each address, which typically requires dynamic analysis or expensive path-sensitive static analysis.
4. Intra-segment jumps vs. far jumps: Many compilers use JMP SHORT and JMP NEAR within a segment, but CALL FAR for cross-segment calls. The disassembler must correlate segment values, which are often computed at runtime (e.g., from a selector table).
5. Overlapping segments: Multiple segments can map to the same physical memory. Code reachable via one segment may appear as data or unreachable via another. Disassemblers need to model segments as separate address spaces and combine them.
6. COM files (flat binary, no headers): COM files are flat 64 KB images loaded at offset 0x100. There are no section headers, no symbol tables, no explicit code/data separation. The disassembler must start at 0x100 and use recursive descent. Any embedded data in the COM file that is reachable via fall-through breaks linear sweep.
7. Self-modifying code: Common in 16-bit DOS era (e.g., games with overlay managers, disk copy protection). Static disassembly alone cannot resolve this. Dynamic analysis or emulation is required.
8. IVT (Interrupt Vector Table) entries: In real mode, the IVT at 0x0000:0x0000 contains far pointers to interrupt handlers. These must be treated as code entry points.
9. Bios and firmware patterns: 16-bit BIOS code often has entry points at fixed addresses (0xF000:0xFFF0 for reset). The disassembler must know platform-specific entry points.
Algorithmic Approaches for 16-bit
- Segment-aware disassembly: Track each segment base separately. Compute physical addresses as segment * 16 + offset. Maintain a separate CFG per segment; merge address spaces at the end.
- Far call resolution: For CALL FAR seg:off, add both seg:off as a code entry point and assume fall-through to the next instruction. If seg is computed at runtime, try to propagate constant segment values.
- Mode tracking: Use a lattice: {Real16, Real32, Prot16, Prot32, Unknown}. Each instruction can change the mode (e.g., MOV CR0, ... switches to protected mode). Propagate mode as part of data-flow analysis.
- Hybrid static/dynamic: For COM files, use an emulator (e.g., Unicorn) to trace execution through self-modifying code, recording all executed addresses. Feed these as initial entry points to the static disassembler.
- Length disassembler (LDE): A critical component for 16-bit. Given a stream of bytes, the LDE returns the length of the first instruction. This is used to skip over data when the disassembler suspects embedded data.
Summary of Concrete Algorithmic Approaches Applicable to a Custom Disassembler
Technique	Description	Pros	Cons
Recursive descent + CFG	Only decode reachable code	Robust for most x86	Misses indirect targets
Jump table pattern matching	Match cmp; ja; jmp [table]	Recovers switch targets	Fragile across compilers
Data-flow for indirect calls	Propagate constants to find target addresses	Resolves virtual calls	Expensive; may not terminate
Conflict resolution (ddisasm WIS)	Weighted interval scheduling over candidate decodings	Principled, handles overlaps	Requires learned weights
Datalog / declarative rules	Express disassembly as logical inference	Fixpoint semantics, clean separation	Steep learning curve
Symbolic execution (Miasm style)	Emulate code to find opaque predicates	Breaks obfuscation	Path explosion on complex code
Segment-aware tracking	Track CS base and mode separately	Required for 16-bit	Increases state complexity
Phase-coupled iteration	Later phases (type prop, decomp) feed back to disassembler	Self-correcting	Harder to implement
Length disassembler (LDE)	Pre-decode lengths to skip data	Fast, simple	Only works if you know where code starts
Heuristic data detection	ASCII scans, entropy, NOP padding detection	Simple, catches common cases	False positives/negatives
Dynamic trace seeding	Execute in emulator, record addresses, feed to static disassembler	Handles self-modifying/indirect code	Incomplete coverage
Recommended Pipeline Structure for a Custom Disassembler
1. LDE pass: Scan sections for valid instruction boundaries.
2. Recursive descent: From known entry points, follow direct branches.
3. Heuristic jump table detection: Match switch idioms; add targets as code.
4. Data-flow analysis: Track reaching definitions for indirect calls/jumps; resolve constant operands; add targets.
5. Conflict resolution: For overlapping decodings, keep the one with reachable control flow; mark the other as data.
6. Function detection: Identify function starts (call targets, entry points, non-fall-through addresses).
7. Type propagation / decompilation: Higher-level analysis identifies more code (via resolved indirect calls, vtable references).
8. Iterate steps 2-7 until fixpoint.
9. User interaction: Allow manual override that triggers re-analysis.
This phase-coupled design is the key innovation of modern disassemblers (Ghidra, Binary Ninja, ddisasm) and is strongly recommended for any custom disassembler aiming for accuracy on real-world binaries, especially 16-bit x86 code.