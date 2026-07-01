; ── auto-discovered structs ─────────────────────────────────────

; @struct s_bx_0000 size=4 reg=bx disp=0x0000
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
struc s_bx_0000
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .f_03: resb 1
endstruc

; @struct s_bx_5c34 size=8 reg=bx disp=0x5c34
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=1 name=f_04
; @field offset=5 size=1 name=f_05
; @field offset=6 size=1 name=f_06
; @field offset=7 size=1 name=f_07
struc s_bx_5c34
    .f_00: resb 2
    .gap_2: resb 2
    .f_04: resb 1
    .gap_5: resb 1
    .f_06: resb 1
    .f_07: resb 1
endstruc

; @struct s_bx_6a1a size=9 reg=bx disp=0x6a1a
; @field offset=0 size=1 name=f_00
; @field offset=1 size=3 name=f_01
; @field offset=4 size=1 name=f_04
; @field offset=5 size=3 name=f_05
; @field offset=8 size=1 name=f_08
struc s_bx_6a1a
    .f_00: resb 1
    .gap_1: resb 3
    .f_04: resb 1
    .gap_5: resb 3
    .f_08: resb 1
endstruc

; @struct s_bx_6ac0 size=3 reg=bx disp=0x6ac0
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
struc s_bx_6ac0
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
endstruc

; @struct s_bx_6b75 size=2 reg=bx disp=0x6b75
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_bx_6b75
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_bx_8322 size=3 reg=bx disp=0x8322
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
struc s_bx_8322
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
endstruc
