; ── auto-discovered structs ─────────────────────────────────────

; @struct s_bx_0000 size=4 reg=bx disp=0x0000
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_0000
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_ffd4 size=4 reg=bx disp=0xffd4
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_ffd4
    .f_00: resb 2
    .f_02: resb 2
endstruc
