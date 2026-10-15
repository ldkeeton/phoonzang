What stands out (missing, ranked)

1. There is no dynamic evidence anywhere.
- Your repo already depends on DOSBox-X, but only to run the Aztec compiler.
- Tracing which instructions actually execute is the accepted way to check static disassembly. TraceBin (https://arxiv.org/abs/2506.20109) uses the logic that any instruction executed during a run must be correct. Disa (https://arxiv.org/pdf/2507.07246) measures recall from runtime traces.
- A trace can't prove something is data, but it gives sound code evidence and real indirect-call targets. Those are the two things your sidecar currently declares by hand (12 dispatch_table entries, 6 force_code ranges).
- DOSBox-X's LOG command writes every executed instruction to a file, but the debugger needs core=normal. Under the dynamic core it logs only the first instruction of each block (issue #611 (https://github.com/joncampbell123/dosbox-x/issues/611)). I found no built-in coverage feature, so you'd parse that log yourself, and it only covers what you play.
- This would also give you the missing "is classification right?" signal, because executed bytes must be code.

2. There is no non-returning function analysis.
- Ghidra and IDA both infer which functions never return. Getting it wrong makes the tool decode junk after the call and sometimes lose real functions (SoK (https://arxiv.org/pdf/2007.14266), Ghidra's description (https://arxiv.org/pdf/2007.14266), IDA tip (https://hex-rays.com/blog/igors-tip-of-the-week-126-non-returning-functions)).
- Your code recognises only the DOS terminate pattern (is_dos_terminator). My grep for noreturn, no_return and non-return across lib and main found nothing.
- The known algorithm is small. A function counts as returning once a ret is reachable, and any unresolved cycle is non-returning (Parallel Binary Code Analysis (https://arxiv.org/pdf/2001.10621)). Ghidra's rule is three unsafe fall-throughs.
- Your prune_dead* and settle phases may be quietly compensating for this. I haven't tested that.

3. Invalid decodes aren't treated as evidence.
- Ddisasm (https://www.usenix.org/conference/usenixsecurity20/presentation/flores-montoya) marks an instruction invalid if it falls through, jumps or calls into something invalid, and propagates that backwards. Its slides show this as a Datalog rule.
- Your recursive.py does the weak form. When decoding hits bad bytes it silently drops the run, and it never uses that as evidence against the call or branch that led there.
- The same paper answers your original "patchwork" worry: it states the rules declaratively and runs them to a fixpoint, so there is no ordered pass chain to patch.
- I didn't confirm whether Ddisasm handles 16-bit code. I'd borrow the formulation, not the tool.

4. Indirect calls are ignored, and address-taken code isn't searched for.
- State of the art differs by tool. Ghidra tracks bounds along one path, angr slices, and academic work uses value-set analysis (SoK (https://arxiv.org/pdf/2007.14266), angr (https://docs.angr.io/en/latest/api/angr.analyses.cfg.indirect_jump_resolvers.jumptable.html)).
- B-Side (https://arxiv.org/pdf/2410.18053) takes the simple route. It treats every address-taken target as a candidate, then narrows to those reachable from the entry.
- Your pointer scorer already finds code pointers in data, but the result never feeds back into code discovery.

5. Validation invariants are discarded instead of reported.
- verify() silently deletes labels that land mid-instruction. That is a disassembly-error signal being thrown away.
- This matches the idea behind DSV (https://www.ssrg.ece.vt.edu/papers/nfm22.pdf) and TraceBin: check consistency and report violations.
- A near call whose target ends in retf (or the reverse) is another candidate check. That one is my own suggestion. I found no paper for it.

Parts that hold up

- Pointer vs number scoring corresponds to Uroboros, Ramblr and Ddisasm symbolization. Your sidecar corpus with precision and recall is more rigorous than most. Known failure modes are value collisions and constant folding hiding references (Uroboros slides (https://www.ndss-symposium.org/wp-content/uploads/2017/09/ndss2017_10-5-wang_slides.pdf)). The SoK (https://arxiv.org/pdf/2007.14266) also notes that the aligned and unaligned pointer heuristics conflict.
- The sidecar-heavy, hand-annotated style is normal for this niche. dis86 (https://github.com/xorvoid/dis86/blob/main/README.md), a 16-bit real-mode decompiler, says it prefers manual annotation tables over heuristics that can produce wrong code.
- Compile and compare against the original bytes is the established workflow. Ultima VI (https://ultimacodex.com/2022/03/ultima-6-has-been-decompiled) was rebuilt this way with Turbo C, and Ultima IV with Microsoft C 4.00. For Ultima IV the rebuilt binaries differ from the originals by roughly 10 bytes each.
- Vendor-source ground truth for the library (Manx runtime sources, as -l listings) is ahead of most projects. Pang et al. found that tracing the compiler is the best ground-truth method (paper (https://www.usenix.org/conference/usenixsecurity22/presentation/pang-chengbin)). You already do this for library code. You don't do it for application code, which has no source.

Weak or unconfirmed

- Prologue scanning. Your force_code 0x55 scan is a known weak technique in general. The SoK found a prologue heuristic recovered 17% more functions at 77.5% precision. Aztec's uniform prologue may do better, so test it.
- Capstone vs iced-x86. I found no evidence of 16-bit decode bugs in Capstone. Your NASM round trip already acts as an oracle, so I'd rank this low.
- Wizardry 7. I found no existing reverse-engineering project. That claim comes from a single search.
- Automated byte matching for the C overrides. decomp-permuter (https://smithery.ai/skills/itsgrimetime/decomp-permuter) automates tweaking C until it matches, but the examples I found are GameCube and Wii toolchains. I found nothing for Aztec or DOS, so I can't say it would apply.
- Vendor numbers. GrammaTech reports trace-seeded disassembly finding the payload in 62.3% of packed samples versus 6.0% for static alone. That is self-reported and in a different context, so discount it.