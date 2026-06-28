; ── auto-discovered structs ─────────────────────────────────────

; @struct s_bx_0000 size=8 reg=bx disp=0x0000
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=3 name=f_04
; @field offset=7 size=1 name=f_07
struc s_bx_0000
    .f_00: resb 2
    .f_02: resb 2
    .gap_4: resb 3
    .f_07: resb 1
endstruc

; @struct s_bx_5d4b size=15 reg=bx disp=0x5d4b
; @field offset=0 size=2 name=f_00
; @field offset=2 size=7 name=f_02
; @field offset=9 size=1 name=f_09
; @field offset=10 size=1 name=f_0a
; @field offset=11 size=1 name=f_0b
; @field offset=12 size=1 name=f_0c
; @field offset=13 size=1 name=f_0d
; @field offset=14 size=1 name=f_0e
struc s_bx_5d4b
    .f_00: resb 2
    .gap_2: resb 7
    .f_09: resb 1
    .f_0a: resb 1
    .f_0b: resb 1
    .f_0c: resb 1
    .f_0d: resb 1
    .f_0e: resb 1
endstruc

; @struct s_bx_69a4 size=4 reg=bx disp=0x69a4
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_69a4
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_82f2 size=4 reg=bx disp=0x82f2
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_82f2
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_9a32 size=4 reg=bx disp=0x9a32
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_9a32
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_a5da size=4 reg=bx disp=0xa5da
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_a5da
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_ffda size=6 reg=bx disp=0xffda
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=2 name=f_04
struc s_bx_ffda
    .f_00: resb 2
    .gap_2: resb 2
    .f_04: resb 2
endstruc
