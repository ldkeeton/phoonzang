; ── auto-discovered structs ─────────────────────────────────────

; @struct s_bx_0000 size=44 reg=bx disp=0x0000
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=2 name=f_04
; @field offset=6 size=2 name=f_06
; @field offset=8 size=2 name=f_08
; @field offset=10 size=2 name=f_0a
; @field offset=12 size=2 name=f_0c
; @field offset=14 size=1 name=f_0e
; @field offset=15 size=1 name=f_0f
; @field offset=16 size=1 name=f_10
; @field offset=17 size=1 name=f_11
; @field offset=18 size=1 name=f_12
; @field offset=19 size=1 name=f_13
; @field offset=20 size=1 name=f_14
; @field offset=21 size=1 name=f_15
; @field offset=22 size=1 name=f_16
; @field offset=23 size=1 name=f_17
; @field offset=24 size=1 name=f_18
; @field offset=25 size=1 name=f_19
; @field offset=26 size=2 name=f_1a
; @field offset=28 size=1 name=f_1c
; @field offset=29 size=1 name=f_1d
; @field offset=30 size=1 name=f_1e
; @field offset=31 size=1 name=f_1f
; @field offset=32 size=1 name=f_20
; @field offset=33 size=1 name=f_21
; @field offset=34 size=1 name=f_22
; @field offset=35 size=1 name=f_23
; @field offset=36 size=1 name=f_24
; @field offset=37 size=1 name=f_25
; @field offset=38 size=1 name=f_26
; @field offset=39 size=1 name=f_27
; @field offset=40 size=1 name=f_28
; @field offset=41 size=1 name=f_29
; @field offset=42 size=1 name=f_2a
; @field offset=43 size=1 name=f_2b
struc s_bx_0000
    .f_00: resb 2
    .f_02: resb 2
    .f_04: resb 2
    .f_06: resb 2
    .f_08: resb 2
    .f_0a: resb 2
    .f_0c: resb 2
    .f_0e: resb 1
    .f_0f: resb 1
    .f_10: resb 1
    .f_11: resb 1
    .f_12: resb 1
    .gap_13: resb 1
    .f_14: resb 1
    .f_15: resb 1
    .f_16: resb 1
    .f_17: resb 1
    .f_18: resb 1
    .f_19: resb 1
    .gap_1a: resb 2
    .f_1c: resb 1
    .gap_1d: resb 1
    .f_1e: resb 1
    .f_1f: resb 1
    .f_20: resb 1
    .f_21: resb 1
    .f_22: resb 1
    .gap_23: resb 1
    .f_24: resb 1
    .f_25: resb 1
    .gap_26: resb 1
    .f_27: resb 1
    .f_28: resb 1
    .gap_29: resb 1
    .f_2a: resb 1
    .f_2b: resb 1
endstruc

; @struct s_bx_0040 size=4 reg=bx disp=0x0040
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_0040
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_007d size=4 reg=bx disp=0x007d
; @field offset=0 size=1 name=f_00
; @field offset=1 size=2 name=f_01
; @field offset=3 size=1 name=f_03
struc s_bx_007d
    .f_00: resb 1
    .gap_1: resb 2
    .f_03: resb 1
endstruc

; @struct s_bx_008c size=4 reg=bx disp=0x008c
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
struc s_bx_008c
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .f_03: resb 1
endstruc

; @struct s_bx_009c size=10 reg=bx disp=0x009c
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=7 name=f_02
; @field offset=9 size=1 name=f_09
struc s_bx_009c
    .f_00: resb 1
    .f_01: resb 1
    .gap_2: resb 7
    .f_09: resb 1
endstruc

; @struct s_bx_00c4 size=3 reg=bx disp=0x00c4
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
struc s_bx_00c4
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
endstruc

; @struct s_bx_00d6 size=15 reg=bx disp=0x00d6
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
; @field offset=4 size=1 name=f_04
; @field offset=5 size=1 name=f_05
; @field offset=6 size=1 name=f_06
; @field offset=7 size=3 name=f_07
; @field offset=10 size=1 name=f_0a
; @field offset=11 size=1 name=f_0b
; @field offset=12 size=1 name=f_0c
; @field offset=13 size=1 name=f_0d
; @field offset=14 size=1 name=f_0e
struc s_bx_00d6
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .f_03: resb 1
    .f_04: resb 1
    .f_05: resb 1
    .f_06: resb 1
    .gap_7: resb 3
    .f_0a: resb 1
    .gap_b: resb 1
    .f_0c: resb 1
    .gap_d: resb 1
    .f_0e: resb 1
endstruc

; @struct s_bx_018e size=4 reg=bx disp=0x018e
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
struc s_bx_018e
    .f_00: resb 1
    .f_01: resb 1
    .gap_2: resb 1
    .f_03: resb 1
endstruc

; @struct s_bx_019e size=4 reg=bx disp=0x019e
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
struc s_bx_019e
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .f_03: resb 1
endstruc

; @struct s_bx_0576 size=12 reg=bx disp=0x0576
; @field offset=0 size=2 name=f_00
; @field offset=2 size=8 name=f_02
; @field offset=10 size=2 name=f_0a
struc s_bx_0576
    .f_00: resb 2
    .gap_2: resb 8
    .f_0a: resb 2
endstruc

; @struct s_bx_0620 size=4 reg=bx disp=0x0620
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
struc s_bx_0620
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .f_03: resb 1
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

; @struct s_bx_5c04 size=26 reg=bx disp=0x5c04
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=4 name=f_04
; @field offset=8 size=2 name=f_08
; @field offset=10 size=2 name=f_0a
; @field offset=12 size=2 name=f_0c
; @field offset=14 size=2 name=f_0e
; @field offset=16 size=2 name=f_10
; @field offset=18 size=2 name=f_12
; @field offset=20 size=2 name=f_14
; @field offset=22 size=2 name=f_16
; @field offset=24 size=2 name=f_18
struc s_bx_5c04
    .f_00: resb 2
    .f_02: resb 2
    .gap_4: resb 4
    .f_08: resb 2
    .gap_a: resb 2
    .f_0c: resb 2
    .f_0e: resb 2
    .f_10: resb 2
    .f_12: resb 2
    .f_14: resb 2
    .gap_16: resb 2
    .f_18: resb 2
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
    .f_05: resb 1
    .f_06: resb 1
    .f_07: resb 1
endstruc

; @struct s_bx_5d24 size=4 reg=bx disp=0x5d24
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_5d24
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_5d32 size=8 reg=bx disp=0x5d32
; @field offset=0 size=1 name=f_00
; @field offset=1 size=3 name=f_01
; @field offset=4 size=2 name=f_04
; @field offset=6 size=2 name=f_06
struc s_bx_5d32
    .f_00: resb 1
    .gap_1: resb 3
    .f_04: resb 2
    .f_06: resb 2
endstruc

; @struct s_bx_5d44 size=6 reg=bx disp=0x5d44
; @field offset=0 size=1 name=f_00
; @field offset=1 size=3 name=f_01
; @field offset=4 size=1 name=f_04
; @field offset=5 size=1 name=f_05
struc s_bx_5d44
    .f_00: resb 1
    .gap_1: resb 3
    .f_04: resb 1
    .f_05: resb 1
endstruc

; @struct s_bx_5d64 size=38 reg=bx disp=0x5d64
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=2 name=f_02
; @field offset=4 size=1 name=f_04
; @field offset=5 size=1 name=f_05
; @field offset=6 size=1 name=f_06
; @field offset=7 size=1 name=f_07
; @field offset=8 size=1 name=f_08
; @field offset=9 size=7 name=f_09
; @field offset=16 size=1 name=f_10
; @field offset=17 size=1 name=f_11
; @field offset=18 size=3 name=f_12
; @field offset=21 size=1 name=f_15
; @field offset=22 size=1 name=f_16
; @field offset=23 size=2 name=f_17
; @field offset=25 size=1 name=f_19
; @field offset=26 size=1 name=f_1a
; @field offset=27 size=4 name=f_1b
; @field offset=31 size=1 name=f_1f
; @field offset=32 size=5 name=f_20
; @field offset=37 size=1 name=f_25
struc s_bx_5d64
    .f_00: resb 1
    .f_01: resb 1
    .gap_2: resb 2
    .f_04: resb 1
    .f_05: resb 1
    .gap_6: resb 1
    .f_07: resb 1
    .f_08: resb 1
    .gap_9: resb 7
    .f_10: resb 1
    .f_11: resb 1
    .gap_12: resb 3
    .f_15: resb 1
    .f_16: resb 1
    .gap_17: resb 2
    .f_19: resb 1
    .f_1a: resb 1
    .gap_1b: resb 4
    .f_1f: resb 1
    .gap_20: resb 5
    .f_25: resb 1
endstruc

; @struct s_bx_5e2c size=15 reg=bx disp=0x5e2c
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
; @field offset=4 size=2 name=f_04
; @field offset=6 size=1 name=f_06
; @field offset=7 size=1 name=f_07
; @field offset=8 size=3 name=f_08
; @field offset=11 size=1 name=f_0b
; @field offset=12 size=1 name=f_0c
; @field offset=13 size=1 name=f_0d
; @field offset=14 size=1 name=f_0e
struc s_bx_5e2c
    .f_00: resb 1
    .f_01: resb 1
    .gap_2: resb 1
    .f_03: resb 1
    .gap_4: resb 2
    .f_06: resb 1
    .f_07: resb 1
    .gap_8: resb 3
    .f_0b: resb 1
    .f_0c: resb 1
    .f_0d: resb 1
    .f_0e: resb 1
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

; @struct s_bx_6a4a size=9 reg=bx disp=0x6a4a
; @field offset=0 size=1 name=f_00
; @field offset=1 size=7 name=f_01
; @field offset=8 size=1 name=f_08
struc s_bx_6a4a
    .f_00: resb 1
    .gap_1: resb 7
    .f_08: resb 1
endstruc

; @struct s_bx_6abf size=4 reg=bx disp=0x6abf
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
struc s_bx_6abf
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .f_03: resb 1
endstruc

; @struct s_bx_6b60 size=2 reg=bx disp=0x6b60
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_bx_6b60
    .f_00: resb 1
    .f_01: resb 1
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

; @struct s_bx_8468 size=4 reg=bx disp=0x8468
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_8468
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_9060 size=4 reg=bx disp=0x9060
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_9060
    .f_00: resb 2
    .f_02: resb 2
endstruc
