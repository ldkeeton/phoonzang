; auto-generated
; ── shared data layout primitives ───────────────────────────────

struc BytePair
    .a: resb 1
    .b: resb 1
endstruc

struc Tag_Hdr
    .tag: resb 1
    .id:  resb 2
endstruc

struc DblW
    .lo: resb 2
    .hi: resb 2
endstruc

struc QuadW
    .w0: resb 2
    .w1: resb 2
    .w2: resb 2
    .w3: resb 2
endstruc

struc SparsePair
    .a:   resb 1
    .gap: resb 3
    .b:   resb 1
endstruc
