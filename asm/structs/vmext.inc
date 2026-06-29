; ── auto-discovered structs ─────────────────────────────────────

; @struct s_bx_0001 size=4 reg=bx disp=0x0001
; @field offset=0 size=1 name=f_00
; @field offset=1 size=2 name=f_01
; @field offset=3 size=1 name=f_03
struc s_bx_0001
    .f_00: resb 1
    .f_01: resb 2
    .f_03: resb 1
endstruc

; @struct s_bx_0005 size=2 reg=bx disp=0x0005
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_bx_0005
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_bx_0292 size=28 reg=bx disp=0x0292
; @field offset=0 size=2 name=f_00
; @field offset=2 size=8 name=f_02
; @field offset=10 size=2 name=f_0a
; @field offset=12 size=8 name=f_0c
; @field offset=20 size=2 name=f_14
; @field offset=22 size=2 name=f_16
; @field offset=24 size=2 name=f_18
; @field offset=26 size=2 name=f_1a
struc s_bx_0292
    .f_00: resb 2
    .gap_2: resb 8
    .f_0a: resb 2
    .gap_c: resb 8
    .f_14: resb 2
    .f_16: resb 2
    .f_18: resb 2
    .f_1a: resb 2
endstruc

; @struct s_bx_5c0c size=20 reg=bx disp=0x5c0c
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=2 name=f_04
; @field offset=6 size=2 name=f_06
; @field offset=8 size=8 name=f_08
; @field offset=16 size=2 name=f_10
; @field offset=18 size=2 name=f_12
struc s_bx_5c0c
    .f_00: resb 2
    .f_02: resb 2
    .f_04: resb 2
    .f_06: resb 2
    .gap_8: resb 8
    .f_10: resb 2
    .f_12: resb 2
endstruc

; @struct s_bx_5d5d size=4 reg=bx disp=0x5d5d
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
struc s_bx_5d5d
    .f_00: resb 1
    .gap_1: resb 1
    .f_02: resb 1
    .f_03: resb 1
endstruc

; @struct s_bx_5e2f size=4 reg=bx disp=0x5e2f
; @field offset=0 size=1 name=f_00
; @field offset=1 size=2 name=f_01
; @field offset=3 size=1 name=f_03
struc s_bx_5e2f
    .f_00: resb 1
    .gap_1: resb 2
    .f_03: resb 1
endstruc

; @struct s_bx_69a4 size=4 reg=bx disp=0x69a4
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_69a4
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_9182 size=30 reg=bx disp=0x9182
; @field offset=0 size=2 name=f_00
; @field offset=2 size=8 name=f_02
; @field offset=10 size=2 name=f_0a
; @field offset=12 size=4 name=f_0c
; @field offset=16 size=2 name=f_10
; @field offset=18 size=4 name=f_12
; @field offset=22 size=2 name=f_16
; @field offset=24 size=4 name=f_18
; @field offset=28 size=2 name=f_1c
struc s_bx_9182
    .f_00: resb 2
    .gap_2: resb 8
    .f_0a: resb 2
    .gap_c: resb 4
    .f_10: resb 2
    .gap_12: resb 4
    .f_16: resb 2
    .gap_18: resb 4
    .f_1c: resb 2
endstruc

; @struct s_bx_91ac size=3 reg=bx disp=0x91ac
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
struc s_bx_91ac
    .f_00: resb 1
    .gap_1: resb 1
    .f_02: resb 1
endstruc

; @struct s_bx_91de size=8 reg=bx disp=0x91de
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=4 name=f_03
; @field offset=7 size=1 name=f_07
struc s_bx_91de
    .f_00: resb 1
    .gap_1: resb 1
    .f_02: resb 1
    .gap_3: resb 4
    .f_07: resb 1
endstruc

; @struct s_bx_92f4 size=17 reg=bx disp=0x92f4
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=2 name=f_04
; @field offset=6 size=2 name=f_06
; @field offset=8 size=1 name=f_08
; @field offset=9 size=1 name=f_09
; @field offset=10 size=1 name=f_0a
; @field offset=11 size=1 name=f_0b
; @field offset=12 size=1 name=f_0c
; @field offset=13 size=1 name=f_0d
; @field offset=14 size=1 name=f_0e
; @field offset=15 size=1 name=f_0f
; @field offset=16 size=1 name=f_10
struc s_bx_92f4
    .f_00: resb 2
    .f_02: resb 2
    .f_04: resb 2
    .f_06: resb 2
    .f_08: resb 1
    .f_09: resb 1
    .f_0a: resb 1
    .f_0b: resb 1
    .f_0c: resb 1
    .f_0d: resb 1
    .f_0e: resb 1
    .f_0f: resb 1
    .f_10: resb 1
endstruc

; @struct s_bx_ffea size=4 reg=bx disp=0xffea
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_ffea
    .f_00: resb 2
    .f_02: resb 2
endstruc
