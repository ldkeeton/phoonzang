; ── auto-discovered structs ─────────────────────────────────────

; @struct s_bx_0001 size=7 reg=bx disp=0x0001
; @field offset=0 size=1 name=f_00
; @field offset=1 size=2 name=f_01
; @field offset=3 size=2 name=f_03
; @field offset=5 size=2 name=f_05
struc s_bx_0001
    .f_00: resb 1
    .f_01: resb 2
    .f_03: resb 2
    .f_05: resb 2
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

; @struct s_bx_0120 size=8 reg=bx disp=0x0120
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=2 name=f_04
; @field offset=6 size=2 name=f_06
struc s_bx_0120
    .f_00: resb 2
    .f_02: resb 2
    .f_04: resb 2
    .f_06: resb 2
endstruc

; @struct s_bx_0150 size=7 reg=bx disp=0x0150
; @field offset=0 size=1 name=f_00
; @field offset=1 size=5 name=f_01
; @field offset=6 size=1 name=f_06
struc s_bx_0150
    .f_00: resb 1
    .gap_1: resb 5
    .f_06: resb 1
endstruc

; @struct s_bx_024c size=22 reg=bx disp=0x024c
; @field offset=0 size=2 name=f_00
; @field offset=2 size=8 name=f_02
; @field offset=10 size=2 name=f_0a
; @field offset=12 size=8 name=f_0c
; @field offset=20 size=2 name=f_14
struc s_bx_024c
    .f_00: resb 2
    .gap_2: resb 8
    .f_0a: resb 2
    .gap_c: resb 8
    .f_14: resb 2
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

; @struct s_bx_5bfc size=4 reg=bx disp=0x5bfc
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_5bfc
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_5c0c size=20 reg=bx disp=0x5c0c
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=2 name=f_04
; @field offset=6 size=2 name=f_06
; @field offset=8 size=4 name=f_08
; @field offset=12 size=2 name=f_0c
; @field offset=14 size=2 name=f_0e
; @field offset=16 size=2 name=f_10
; @field offset=18 size=2 name=f_12
struc s_bx_5c0c
    .f_00: resb 2
    .f_02: resb 2
    .f_04: resb 2
    .f_06: resb 2
    .gap_8: resb 4
    .f_0c: resb 2
    .gap_e: resb 2
    .f_10: resb 2
    .f_12: resb 2
endstruc

; @struct s_bx_5c34 size=8 reg=bx disp=0x5c34
; @field offset=0 size=2 name=f_00
; @field offset=2 size=5 name=f_02
; @field offset=7 size=1 name=f_07
struc s_bx_5c34
    .f_00: resb 2
    .gap_2: resb 5
    .f_07: resb 1
endstruc

; @struct s_bx_5d54 size=25 reg=bx disp=0x5d54
; @field offset=0 size=1 name=f_00
; @field offset=1 size=5 name=f_01
; @field offset=6 size=1 name=f_06
; @field offset=7 size=1 name=f_07
; @field offset=8 size=1 name=f_08
; @field offset=9 size=1 name=f_09
; @field offset=10 size=1 name=f_0a
; @field offset=11 size=1 name=f_0b
; @field offset=12 size=1 name=f_0c
; @field offset=13 size=3 name=f_0d
; @field offset=16 size=1 name=f_10
; @field offset=17 size=3 name=f_11
; @field offset=20 size=1 name=f_14
; @field offset=21 size=3 name=f_15
; @field offset=24 size=1 name=f_18
struc s_bx_5d54
    .f_00: resb 1
    .gap_1: resb 5
    .f_06: resb 1
    .gap_7: resb 1
    .f_08: resb 1
    .f_09: resb 1
    .gap_a: resb 1
    .f_0b: resb 1
    .f_0c: resb 1
    .gap_d: resb 3
    .f_10: resb 1
    .gap_11: resb 3
    .f_14: resb 1
    .gap_15: resb 3
    .f_18: resb 1
endstruc

; @struct s_bx_5d76 size=14 reg=bx disp=0x5d76
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=5 name=f_03
; @field offset=8 size=1 name=f_08
; @field offset=9 size=4 name=f_09
; @field offset=13 size=1 name=f_0d
struc s_bx_5d76
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .gap_3: resb 5
    .f_08: resb 1
    .gap_9: resb 4
    .f_0d: resb 1
endstruc

; @struct s_bx_5e2c size=10 reg=bx disp=0x5e2c
; @field offset=0 size=1 name=f_00
; @field offset=1 size=2 name=f_01
; @field offset=3 size=1 name=f_03
; @field offset=4 size=1 name=f_04
; @field offset=5 size=1 name=f_05
; @field offset=6 size=1 name=f_06
; @field offset=7 size=1 name=f_07
; @field offset=8 size=1 name=f_08
; @field offset=9 size=1 name=f_09
struc s_bx_5e2c
    .f_00: resb 1
    .gap_1: resb 2
    .f_03: resb 1
    .f_04: resb 1
    .f_05: resb 1
    .f_06: resb 1
    .f_07: resb 1
    .f_08: resb 1
    .f_09: resb 1
endstruc

; @struct s_bx_82f2 size=4 reg=bx disp=0x82f2
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_82f2
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_84a6 size=5 reg=bx disp=0x84a6
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
; @field offset=4 size=1 name=f_04
struc s_bx_84a6
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .f_03: resb 1
    .f_04: resb 1
endstruc

; @struct s_bx_84e8 size=9 reg=bx disp=0x84e8
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
; @field offset=4 size=1 name=f_04
; @field offset=5 size=1 name=f_05
; @field offset=6 size=1 name=f_06
; @field offset=7 size=1 name=f_07
; @field offset=8 size=1 name=f_08
struc s_bx_84e8
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .f_03: resb 1
    .f_04: resb 1
    .f_05: resb 1
    .f_06: resb 1
    .f_07: resb 1
    .f_08: resb 1
endstruc

; @struct s_bx_84fe size=4 reg=bx disp=0x84fe
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
struc s_bx_84fe
    .f_00: resb 1
    .gap_1: resb 1
    .f_02: resb 1
    .f_03: resb 1
endstruc

; @struct s_bx_882c size=3 reg=bx disp=0x882c
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
struc s_bx_882c
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
endstruc

; @struct s_bx_8976 size=4 reg=bx disp=0x8976
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
struc s_bx_8976
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .f_03: resb 1
endstruc

; @struct s_bx_8a6e size=3 reg=bx disp=0x8a6e
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
struc s_bx_8a6e
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
endstruc

; @struct s_bx_91b6 size=20 reg=bx disp=0x91b6
; @field offset=0 size=2 name=f_00
; @field offset=2 size=4 name=f_02
; @field offset=6 size=2 name=f_06
; @field offset=8 size=4 name=f_08
; @field offset=12 size=2 name=f_0c
; @field offset=14 size=4 name=f_0e
; @field offset=18 size=2 name=f_12
struc s_bx_91b6
    .f_00: resb 2
    .gap_2: resb 4
    .f_06: resb 2
    .gap_8: resb 4
    .f_0c: resb 2
    .gap_e: resb 4
    .f_12: resb 2
endstruc

; @struct s_bx_91d8 size=3 reg=bx disp=0x91d8
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
struc s_bx_91d8
    .f_00: resb 1
    .gap_1: resb 1
    .f_02: resb 1
endstruc

; @struct s_bx_920a size=8 reg=bx disp=0x920a
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=4 name=f_03
; @field offset=7 size=1 name=f_07
struc s_bx_920a
    .f_00: resb 1
    .gap_1: resb 1
    .f_02: resb 1
    .gap_3: resb 4
    .f_07: resb 1
endstruc

; @struct s_bx_92a0 size=3 reg=bx disp=0x92a0
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
struc s_bx_92a0
    .f_00: resb 1
    .gap_1: resb 1
    .f_02: resb 1
endstruc

; @struct s_bx_9320 size=17 reg=bx disp=0x9320
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
struc s_bx_9320
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

; @struct s_bx_ffc6 size=11 reg=bx disp=0xffc6
; @field offset=0 size=2 name=f_00
; @field offset=2 size=6 name=f_02
; @field offset=8 size=2 name=f_08
; @field offset=10 size=1 name=f_0a
struc s_bx_ffc6
    .f_00: resb 2
    .gap_2: resb 6
    .f_08: resb 2
    .f_0a: resb 1
endstruc

; @struct s_bx_ffdc size=26 reg=bx disp=0xffdc
; @field offset=0 size=2 name=f_00
; @field offset=2 size=6 name=f_02
; @field offset=8 size=2 name=f_08
; @field offset=10 size=4 name=f_0a
; @field offset=14 size=2 name=f_0e
; @field offset=16 size=2 name=f_10
; @field offset=18 size=6 name=f_12
; @field offset=24 size=2 name=f_18
struc s_bx_ffdc
    .f_00: resb 2
    .gap_2: resb 6
    .f_08: resb 2
    .gap_a: resb 4
    .f_0e: resb 2
    .f_10: resb 2
    .gap_12: resb 6
    .f_18: resb 2
endstruc

; @struct s_si_8a6e size=4 reg=si disp=0x8a6e
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
struc s_si_8a6e
    .f_00: resb 1
    .f_01: resb 1
    .gap_2: resb 1
    .f_03: resb 1
endstruc
