; ── auto-discovered structs ─────────────────────────────────────

; @struct s_bx_0000 size=10 reg=bx disp=0x0000
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=2 name=f_04
; @field offset=6 size=2 name=f_06
; @field offset=8 size=2 name=f_08
struc s_bx_0000
    .f_00: resb 2
    .f_02: resb 2
    .gap_4: resb 2
    .f_06: resb 2
    .f_08: resb 2
endstruc

; @struct s_bx_018c size=4 reg=bx disp=0x018c
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_018c
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_0620 size=3 reg=bx disp=0x0620
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
struc s_bx_0620
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
endstruc

; @struct s_bx_5c18 size=6 reg=bx disp=0x5c18
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=2 name=f_04
struc s_bx_5c18
    .f_00: resb 2
    .gap_2: resb 2
    .f_04: resb 2
endstruc

; @struct s_bx_5d64 size=8 reg=bx disp=0x5d64
; @field offset=0 size=1 name=f_00
; @field offset=1 size=5 name=f_01
; @field offset=6 size=1 name=f_06
; @field offset=7 size=1 name=f_07
struc s_bx_5d64
    .f_00: resb 1
    .gap_1: resb 5
    .f_06: resb 1
    .f_07: resb 1
endstruc

; @struct s_bx_ffd4 size=4 reg=bx disp=0xffd4
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_ffd4
    .f_00: resb 2
    .f_02: resb 2
endstruc
