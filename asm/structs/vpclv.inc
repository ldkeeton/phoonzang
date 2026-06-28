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

; @struct s_bx_0006 size=4 reg=bx disp=0x0006
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_0006
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_0030 size=9 reg=bx disp=0x0030
; @field offset=0 size=2 name=f_00
; @field offset=2 size=6 name=f_02
; @field offset=8 size=1 name=f_08
struc s_bx_0030
    .f_00: resb 2
    .gap_2: resb 6
    .f_08: resb 1
endstruc

; @struct s_bx_0038 size=20 reg=bx disp=0x0038
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=5 name=f_04
; @field offset=9 size=1 name=f_09
; @field offset=10 size=1 name=f_0a
; @field offset=11 size=1 name=f_0b
; @field offset=12 size=1 name=f_0c
; @field offset=13 size=1 name=f_0d
; @field offset=14 size=1 name=f_0e
; @field offset=15 size=1 name=f_0f
; @field offset=16 size=2 name=f_10
; @field offset=18 size=2 name=f_12
struc s_bx_0038
    .f_00: resb 2
    .f_02: resb 2
    .gap_4: resb 5
    .f_09: resb 1
    .f_0a: resb 1
    .f_0b: resb 1
    .f_0c: resb 1
    .f_0d: resb 1
    .f_0e: resb 1
    .gap_f: resb 1
    .f_10: resb 2
    .f_12: resb 2
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

; @struct s_bx_5c34 size=12 reg=bx disp=0x5c34
; @field offset=0 size=2 name=f_00
; @field offset=2 size=5 name=f_02
; @field offset=7 size=1 name=f_07
; @field offset=8 size=1 name=f_08
; @field offset=9 size=2 name=f_09
; @field offset=11 size=1 name=f_0b
struc s_bx_5c34
    .f_00: resb 2
    .gap_2: resb 5
    .f_07: resb 1
    .f_08: resb 1
    .gap_9: resb 2
    .f_0b: resb 1
endstruc

; @struct s_bx_5d24 size=18 reg=bx disp=0x5d24
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=1 name=f_04
; @field offset=5 size=5 name=f_05
; @field offset=10 size=1 name=f_0a
; @field offset=11 size=1 name=f_0b
; @field offset=12 size=1 name=f_0c
; @field offset=13 size=1 name=f_0d
; @field offset=14 size=1 name=f_0e
; @field offset=15 size=1 name=f_0f
; @field offset=16 size=1 name=f_10
; @field offset=17 size=1 name=f_11
struc s_bx_5d24
    .f_00: resb 2
    .gap_2: resb 2
    .f_04: resb 1
    .gap_5: resb 5
    .f_0a: resb 1
    .gap_b: resb 1
    .f_0c: resb 1
    .f_0d: resb 1
    .f_0e: resb 1
    .f_0f: resb 1
    .f_10: resb 1
    .f_11: resb 1
endstruc

; @struct s_bx_5d44 size=41 reg=bx disp=0x5d44
; @field offset=0 size=1 name=f_00
; @field offset=1 size=3 name=f_01
; @field offset=4 size=1 name=f_04
; @field offset=5 size=2 name=f_05
; @field offset=7 size=1 name=f_07
; @field offset=8 size=4 name=f_08
; @field offset=12 size=1 name=f_0c
; @field offset=13 size=3 name=f_0d
; @field offset=16 size=1 name=f_10
; @field offset=17 size=5 name=f_11
; @field offset=22 size=1 name=f_16
; @field offset=23 size=1 name=f_17
; @field offset=24 size=1 name=f_18
; @field offset=25 size=1 name=f_19
; @field offset=26 size=6 name=f_1a
; @field offset=32 size=1 name=f_20
; @field offset=33 size=1 name=f_21
; @field offset=34 size=1 name=f_22
; @field offset=35 size=1 name=f_23
; @field offset=36 size=1 name=f_24
; @field offset=37 size=1 name=f_25
; @field offset=38 size=1 name=f_26
; @field offset=39 size=1 name=f_27
; @field offset=40 size=1 name=f_28
struc s_bx_5d44
    .f_00: resb 1
    .gap_1: resb 3
    .f_04: resb 1
    .gap_5: resb 2
    .f_07: resb 1
    .gap_8: resb 4
    .f_0c: resb 1
    .gap_d: resb 3
    .f_10: resb 1
    .gap_11: resb 5
    .f_16: resb 1
    .gap_17: resb 1
    .f_18: resb 1
    .f_19: resb 1
    .gap_1a: resb 6
    .f_20: resb 1
    .f_21: resb 1
    .f_22: resb 1
    .f_23: resb 1
    .f_24: resb 1
    .f_25: resb 1
    .f_26: resb 1
    .gap_27: resb 1
    .f_28: resb 1
endstruc

; @struct s_bx_5d7d size=7 reg=bx disp=0x5d7d
; @field offset=0 size=1 name=f_00
; @field offset=1 size=5 name=f_01
; @field offset=6 size=1 name=f_06
struc s_bx_5d7d
    .f_00: resb 1
    .gap_1: resb 5
    .f_06: resb 1
endstruc

; @struct s_bx_5d8d size=2 reg=bx disp=0x5d8d
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_bx_5d8d
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_bx_5daa size=4 reg=bx disp=0x5daa
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
struc s_bx_5daa
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .f_03: resb 1
endstruc

; @struct s_bx_5e2b size=17 reg=bx disp=0x5e2b
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
; @field offset=4 size=1 name=f_04
; @field offset=5 size=3 name=f_05
; @field offset=8 size=1 name=f_08
; @field offset=9 size=3 name=f_09
; @field offset=12 size=1 name=f_0c
; @field offset=13 size=1 name=f_0d
; @field offset=14 size=1 name=f_0e
; @field offset=15 size=1 name=f_0f
; @field offset=16 size=1 name=f_10
struc s_bx_5e2b
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .f_03: resb 1
    .f_04: resb 1
    .gap_5: resb 3
    .f_08: resb 1
    .gap_9: resb 3
    .f_0c: resb 1
    .f_0d: resb 1
    .gap_e: resb 1
    .f_0f: resb 1
    .f_10: resb 1
endstruc

; @struct s_bx_ff8c size=13 reg=bx disp=0xff8c
; @field offset=0 size=2 name=f_00
; @field offset=2 size=4 name=f_02
; @field offset=6 size=2 name=f_06
; @field offset=8 size=4 name=f_08
; @field offset=12 size=1 name=f_0c
struc s_bx_ff8c
    .f_00: resb 2
    .gap_2: resb 4
    .f_06: resb 2
    .gap_8: resb 4
    .f_0c: resb 1
endstruc

; @struct s_bx_ffb0 size=12 reg=bx disp=0xffb0
; @field offset=0 size=2 name=f_00
; @field offset=2 size=6 name=f_02
; @field offset=8 size=2 name=f_08
; @field offset=10 size=2 name=f_0a
struc s_bx_ffb0
    .f_00: resb 2
    .gap_2: resb 6
    .f_08: resb 2
    .f_0a: resb 2
endstruc

; @struct s_bx_ffc8 size=26 reg=bx disp=0xffc8
; @field offset=0 size=2 name=f_00
; @field offset=2 size=8 name=f_02
; @field offset=10 size=1 name=f_0a
; @field offset=11 size=3 name=f_0b
; @field offset=14 size=1 name=f_0e
; @field offset=15 size=3 name=f_0f
; @field offset=18 size=2 name=f_12
; @field offset=20 size=4 name=f_14
; @field offset=24 size=2 name=f_18
struc s_bx_ffc8
    .f_00: resb 2
    .gap_2: resb 8
    .f_0a: resb 1
    .gap_b: resb 3
    .f_0e: resb 1
    .gap_f: resb 3
    .f_12: resb 2
    .gap_14: resb 4
    .f_18: resb 2
endstruc
