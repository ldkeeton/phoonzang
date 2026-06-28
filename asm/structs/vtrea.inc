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

; @struct s_bx_0005 size=4 reg=bx disp=0x0005
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
struc s_bx_0005
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .f_03: resb 1
endstruc

; @struct s_bx_0009 size=3 reg=bx disp=0x0009
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
struc s_bx_0009
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
endstruc

; @struct s_bx_0034 size=2 reg=bx disp=0x0034
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_bx_0034
    .f_00: resb 1
    .f_01: resb 1
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

; @struct s_bx_0884 size=6 reg=bx disp=0x0884
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=1 name=f_04
; @field offset=5 size=1 name=f_05
struc s_bx_0884
    .f_00: resb 2
    .f_02: resb 2
    .f_04: resb 1
    .f_05: resb 1
endstruc

; @struct s_bx_5c00 size=30 reg=bx disp=0x5c00
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=4 name=f_04
; @field offset=8 size=2 name=f_08
; @field offset=10 size=2 name=f_0a
; @field offset=12 size=2 name=f_0c
; @field offset=14 size=2 name=f_0e
; @field offset=16 size=2 name=f_10
; @field offset=18 size=2 name=f_12
; @field offset=20 size=4 name=f_14
; @field offset=24 size=2 name=f_18
; @field offset=26 size=2 name=f_1a
; @field offset=28 size=2 name=f_1c
struc s_bx_5c00
    .f_00: resb 2
    .f_02: resb 2
    .gap_4: resb 4
    .f_08: resb 2
    .f_0a: resb 2
    .f_0c: resb 2
    .gap_e: resb 2
    .f_10: resb 2
    .f_12: resb 2
    .gap_14: resb 4
    .f_18: resb 2
    .gap_1a: resb 2
    .f_1c: resb 2
endstruc

; @struct s_bx_5d5a size=19 reg=bx disp=0x5d5a
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=7 name=f_03
; @field offset=10 size=1 name=f_0a
; @field offset=11 size=3 name=f_0b
; @field offset=14 size=1 name=f_0e
; @field offset=15 size=3 name=f_0f
; @field offset=18 size=1 name=f_12
struc s_bx_5d5a
    .f_00: resb 1
    .gap_1: resb 1
    .f_02: resb 1
    .gap_3: resb 7
    .f_0a: resb 1
    .gap_b: resb 3
    .f_0e: resb 1
    .gap_f: resb 3
    .f_12: resb 1
endstruc

; @struct s_bx_5d76 size=7 reg=bx disp=0x5d76
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=4 name=f_02
; @field offset=6 size=1 name=f_06
struc s_bx_5d76
    .f_00: resb 1
    .f_01: resb 1
    .gap_2: resb 4
    .f_06: resb 1
endstruc

; @struct s_bx_5d9c size=6 reg=bx disp=0x5d9c
; @field offset=0 size=1 name=f_00
; @field offset=1 size=4 name=f_01
; @field offset=5 size=1 name=f_05
struc s_bx_5d9c
    .f_00: resb 1
    .gap_1: resb 4
    .f_05: resb 1
endstruc

; @struct s_bx_5e2c size=7 reg=bx disp=0x5e2c
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
; @field offset=4 size=2 name=f_04
; @field offset=6 size=1 name=f_06
struc s_bx_5e2c
    .f_00: resb 1
    .f_01: resb 1
    .gap_2: resb 1
    .f_03: resb 1
    .gap_4: resb 2
    .f_06: resb 1
endstruc

; @struct s_bx_84a6 size=2 reg=bx disp=0x84a6
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_bx_84a6
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_bx_9060 size=4 reg=bx disp=0x9060
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_9060
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_9252 size=10 reg=bx disp=0x9252
; @field offset=0 size=1 name=f_00
; @field offset=1 size=7 name=f_01
; @field offset=8 size=2 name=f_08
struc s_bx_9252
    .f_00: resb 1
    .gap_1: resb 7
    .f_08: resb 2
endstruc

; @struct s_bx_93ae size=4 reg=bx disp=0x93ae
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_93ae
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_93d6 size=4 reg=bx disp=0x93d6
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_93d6
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_95b6 size=4 reg=bx disp=0x95b6
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_95b6
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_95e6 size=4 reg=bx disp=0x95e6
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_95e6
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_960e size=4 reg=bx disp=0x960e
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_960e
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_9636 size=4 reg=bx disp=0x9636
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_9636
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_ff16 size=10 reg=bx disp=0xff16
; @field offset=0 size=2 name=f_00
; @field offset=2 size=6 name=f_02
; @field offset=8 size=2 name=f_08
struc s_bx_ff16
    .f_00: resb 2
    .gap_2: resb 6
    .f_08: resb 2
endstruc

; @struct s_bx_ff3e size=2 reg=bx disp=0xff3e
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_bx_ff3e
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_bx_ffa2 size=8 reg=bx disp=0xffa2
; @field offset=0 size=2 name=f_00
; @field offset=2 size=4 name=f_02
; @field offset=6 size=2 name=f_06
struc s_bx_ffa2
    .f_00: resb 2
    .gap_2: resb 4
    .f_06: resb 2
endstruc

; @struct s_bx_ffbe size=13 reg=bx disp=0xffbe
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=4 name=f_04
; @field offset=8 size=2 name=f_08
; @field offset=10 size=2 name=f_0a
; @field offset=12 size=1 name=f_0c
struc s_bx_ffbe
    .f_00: resb 2
    .f_02: resb 2
    .gap_4: resb 4
    .f_08: resb 2
    .f_0a: resb 2
    .f_0c: resb 1
endstruc

; @struct s_bx_ffcb size=12 reg=bx disp=0xffcb
; @field offset=0 size=1 name=f_00
; @field offset=1 size=8 name=f_01
; @field offset=9 size=2 name=f_09
; @field offset=11 size=1 name=f_0b
struc s_bx_ffcb
    .f_00: resb 1
    .gap_1: resb 8
    .f_09: resb 2
    .f_0b: resb 1
endstruc

; @struct s_bx_ffe1 size=9 reg=bx disp=0xffe1
; @field offset=0 size=1 name=f_00
; @field offset=1 size=2 name=f_01
; @field offset=3 size=2 name=f_03
; @field offset=5 size=2 name=f_05
; @field offset=7 size=2 name=f_07
struc s_bx_ffe1
    .f_00: resb 1
    .gap_1: resb 2
    .f_03: resb 2
    .f_05: resb 2
    .f_07: resb 2
endstruc
