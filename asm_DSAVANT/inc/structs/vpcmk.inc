; ── auto-discovered structs ─────────────────────────────────────

; @struct s_bx_0000 size=7 reg=bx disp=0x0000
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=1 name=f_04
; @field offset=5 size=1 name=f_05
; @field offset=6 size=1 name=f_06
struc s_bx_0000
    .f_00: resb 2
    .f_02: resb 2
    .f_04: resb 1
    .f_05: resb 1
    .f_06: resb 1
endstruc

; @struct s_bx_0007 size=2 reg=bx disp=0x0007
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_bx_0007
    .f_00: resb 1
    .f_01: resb 1
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

; @struct s_bx_0030 size=12 reg=bx disp=0x0030
; @field offset=0 size=2 name=f_00
; @field offset=2 size=6 name=f_02
; @field offset=8 size=2 name=f_08
; @field offset=10 size=2 name=f_0a
struc s_bx_0030
    .f_00: resb 2
    .gap_2: resb 6
    .f_08: resb 2
    .f_0a: resb 2
endstruc

; @struct s_bx_0048 size=4 reg=bx disp=0x0048
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_0048
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_015c size=4 reg=bx disp=0x015c
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_015c
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_018c size=4 reg=bx disp=0x018c
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_018c
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_0620 size=6 reg=bx disp=0x0620
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=2 name=f_03
; @field offset=5 size=1 name=f_05
struc s_bx_0620
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .gap_3: resb 2
    .f_05: resb 1
endstruc

; @struct s_bx_0e42 size=6 reg=bx disp=0x0e42
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=2 name=f_03
; @field offset=5 size=1 name=f_05
struc s_bx_0e42
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .gap_3: resb 2
    .f_05: resb 1
endstruc

; @struct s_bx_5bfc size=36 reg=bx disp=0x5bfc
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=2 name=f_04
; @field offset=6 size=2 name=f_06
; @field offset=8 size=2 name=f_08
; @field offset=10 size=2 name=f_0a
; @field offset=12 size=4 name=f_0c
; @field offset=16 size=2 name=f_10
; @field offset=18 size=2 name=f_12
; @field offset=20 size=2 name=f_14
; @field offset=22 size=2 name=f_16
; @field offset=24 size=2 name=f_18
; @field offset=26 size=2 name=f_1a
; @field offset=28 size=2 name=f_1c
; @field offset=30 size=2 name=f_1e
; @field offset=32 size=2 name=f_20
; @field offset=34 size=2 name=f_22
struc s_bx_5bfc
    .f_00: resb 2
    .f_02: resb 2
    .f_04: resb 2
    .f_06: resb 2
    .f_08: resb 2
    .f_0a: resb 2
    .gap_c: resb 4
    .f_10: resb 2
    .f_12: resb 2
    .f_14: resb 2
    .f_16: resb 2
    .f_18: resb 2
    .f_1a: resb 2
    .f_1c: resb 2
    .f_1e: resb 2
    .f_20: resb 2
    .f_22: resb 2
endstruc

; @struct s_bx_5d48 size=18 reg=bx disp=0x5d48
; @field offset=0 size=1 name=f_00
; @field offset=1 size=7 name=f_01
; @field offset=8 size=1 name=f_08
; @field offset=9 size=1 name=f_09
; @field offset=10 size=1 name=f_0a
; @field offset=11 size=1 name=f_0b
; @field offset=12 size=1 name=f_0c
; @field offset=13 size=1 name=f_0d
; @field offset=14 size=1 name=f_0e
; @field offset=15 size=1 name=f_0f
; @field offset=16 size=1 name=f_10
; @field offset=17 size=1 name=f_11
struc s_bx_5d48
    .f_00: resb 1
    .gap_1: resb 7
    .f_08: resb 1
    .f_09: resb 1
    .f_0a: resb 1
    .f_0b: resb 1
    .f_0c: resb 1
    .f_0d: resb 1
    .f_0e: resb 1
    .f_0f: resb 1
    .f_10: resb 1
    .f_11: resb 1
endstruc

; @struct s_bx_5d64 size=26 reg=bx disp=0x5d64
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
; @field offset=4 size=1 name=f_04
; @field offset=5 size=1 name=f_05
; @field offset=6 size=1 name=f_06
; @field offset=7 size=1 name=f_07
; @field offset=8 size=1 name=f_08
; @field offset=9 size=1 name=f_09
; @field offset=10 size=2 name=f_0a
; @field offset=12 size=1 name=f_0c
; @field offset=13 size=2 name=f_0d
; @field offset=15 size=1 name=f_0f
; @field offset=16 size=1 name=f_10
; @field offset=17 size=1 name=f_11
; @field offset=18 size=2 name=f_12
; @field offset=20 size=1 name=f_14
; @field offset=21 size=1 name=f_15
; @field offset=22 size=2 name=f_16
; @field offset=24 size=1 name=f_18
; @field offset=25 size=1 name=f_19
struc s_bx_5d64
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .f_03: resb 1
    .f_04: resb 1
    .f_05: resb 1
    .f_06: resb 1
    .f_07: resb 1
    .f_08: resb 1
    .f_09: resb 1
    .gap_a: resb 2
    .f_0c: resb 1
    .gap_d: resb 2
    .f_0f: resb 1
    .gap_10: resb 1
    .f_11: resb 1
    .gap_12: resb 2
    .f_14: resb 1
    .f_15: resb 1
    .gap_16: resb 2
    .f_18: resb 1
    .f_19: resb 1
endstruc

; @struct s_bx_5d88 size=7 reg=bx disp=0x5d88
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
; @field offset=4 size=1 name=f_04
; @field offset=5 size=1 name=f_05
; @field offset=6 size=1 name=f_06
struc s_bx_5d88
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .f_03: resb 1
    .f_04: resb 1
    .gap_5: resb 1
    .f_06: resb 1
endstruc

; @struct s_bx_5daa size=9 reg=bx disp=0x5daa
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=5 name=f_03
; @field offset=8 size=1 name=f_08
struc s_bx_5daa
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .gap_3: resb 5
    .f_08: resb 1
endstruc

; @struct s_bx_5e2a size=18 reg=bx disp=0x5e2a
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
; @field offset=4 size=1 name=f_04
; @field offset=5 size=1 name=f_05
; @field offset=6 size=1 name=f_06
; @field offset=7 size=1 name=f_07
; @field offset=8 size=1 name=f_08
; @field offset=9 size=1 name=f_09
; @field offset=10 size=1 name=f_0a
; @field offset=11 size=1 name=f_0b
; @field offset=12 size=1 name=f_0c
; @field offset=13 size=1 name=f_0d
; @field offset=14 size=1 name=f_0e
; @field offset=15 size=1 name=f_0f
; @field offset=16 size=1 name=f_10
; @field offset=17 size=1 name=f_11
struc s_bx_5e2a
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .f_03: resb 1
    .f_04: resb 1
    .f_05: resb 1
    .f_06: resb 1
    .f_07: resb 1
    .gap_8: resb 1
    .f_09: resb 1
    .f_0a: resb 1
    .f_0b: resb 1
    .gap_c: resb 1
    .f_0d: resb 1
    .f_0e: resb 1
    .f_0f: resb 1
    .f_10: resb 1
    .f_11: resb 1
endstruc

; @struct s_bx_ff84 size=4 reg=bx disp=0xff84
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_ff84
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_ffc8 size=34 reg=bx disp=0xffc8
; @field offset=0 size=2 name=f_00
; @field offset=2 size=8 name=f_02
; @field offset=10 size=1 name=f_0a
; @field offset=11 size=1 name=f_0b
; @field offset=12 size=2 name=f_0c
; @field offset=14 size=2 name=f_0e
; @field offset=16 size=2 name=f_10
; @field offset=18 size=2 name=f_12
; @field offset=20 size=8 name=f_14
; @field offset=28 size=2 name=f_1c
; @field offset=30 size=2 name=f_1e
; @field offset=32 size=2 name=f_20
struc s_bx_ffc8
    .f_00: resb 2
    .gap_2: resb 8
    .f_0a: resb 1
    .gap_b: resb 1
    .f_0c: resb 2
    .f_0e: resb 2
    .gap_10: resb 2
    .f_12: resb 2
    .gap_14: resb 8
    .f_1c: resb 2
    .f_1e: resb 2
    .f_20: resb 2
endstruc
