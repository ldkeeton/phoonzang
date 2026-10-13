; auto-generated
; ── auto-discovered structs ─────────────────────────────────────

; @struct s_bx_0001 size=4 reg=bx disp=0x0001
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=2 name=f_02
struc s_bx_0001
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 2
endstruc

; @struct s_bx_0595 size=26 reg=bx disp=0x0595
; @field offset=0 size=2 name=f_00
; @field offset=2 size=6 name=f_02
; @field offset=8 size=2 name=f_08
; @field offset=10 size=6 name=f_0a
; @field offset=16 size=2 name=f_10
; @field offset=18 size=6 name=f_12
; @field offset=24 size=2 name=f_18
struc s_bx_0595
    .f_00: resb 2
    .gap_2: resb 6
    .f_08: resb 2
    .gap_a: resb 6
    .f_10: resb 2
    .gap_12: resb 6
    .f_18: resb 2
endstruc

; @struct s_di_0000 size=4 reg=di disp=0x0000
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_di_0000
    .f_00: resb 2
    .f_02: resb 2
endstruc
