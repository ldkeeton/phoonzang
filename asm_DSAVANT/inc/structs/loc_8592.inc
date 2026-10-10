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

; @struct s_bx_0620 size=5 reg=bx disp=0x0620
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
; @field offset=4 size=1 name=f_04
struc s_bx_0620
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .gap_3: resb 1
    .f_04: resb 1
endstruc

; @struct s_bx_0b1a size=6 reg=bx disp=0x0b1a
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=2 name=f_04
struc s_bx_0b1a
    .f_00: resb 2
    .f_02: resb 2
    .f_04: resb 2
endstruc

; @struct s_bx_5c18 size=8 reg=bx disp=0x5c18
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=2 name=f_04
; @field offset=6 size=2 name=f_06
struc s_bx_5c18
    .f_00: resb 2
    .f_02: resb 2
    .f_04: resb 2
    .f_06: resb 2
endstruc

; @struct s_bx_5c34 size=11 reg=bx disp=0x5c34
; @field offset=0 size=2 name=f_00
; @field offset=2 size=5 name=f_02
; @field offset=7 size=1 name=f_07
; @field offset=8 size=1 name=f_08
; @field offset=9 size=1 name=f_09
; @field offset=10 size=1 name=f_0a
struc s_bx_5c34
    .f_00: resb 2
    .gap_2: resb 5
    .f_07: resb 1
    .f_08: resb 1
    .gap_9: resb 1
    .f_0a: resb 1
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

; @struct s_bx_5d44 size=8 reg=bx disp=0x5d44
; @field offset=0 size=1 name=f_00
; @field offset=1 size=3 name=f_01
; @field offset=4 size=1 name=f_04
; @field offset=5 size=1 name=f_05
; @field offset=6 size=1 name=f_06
; @field offset=7 size=1 name=f_07
struc s_bx_5d44
    .f_00: resb 1
    .gap_1: resb 3
    .f_04: resb 1
    .f_05: resb 1
    .gap_6: resb 1
    .f_07: resb 1
endstruc

; @struct s_bx_5d5a size=19 reg=bx disp=0x5d5a
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
; @field offset=4 size=6 name=f_04
; @field offset=10 size=1 name=f_0a
; @field offset=11 size=1 name=f_0b
; @field offset=12 size=1 name=f_0c
; @field offset=13 size=1 name=f_0d
; @field offset=14 size=1 name=f_0e
; @field offset=15 size=1 name=f_0f
; @field offset=16 size=1 name=f_10
; @field offset=17 size=1 name=f_11
; @field offset=18 size=1 name=f_12
struc s_bx_5d5a
    .f_00: resb 1
    .gap_1: resb 1
    .f_02: resb 1
    .f_03: resb 1
    .gap_4: resb 6
    .f_0a: resb 1
    .f_0b: resb 1
    .gap_c: resb 1
    .f_0d: resb 1
    .f_0e: resb 1
    .gap_f: resb 1
    .f_10: resb 1
    .gap_11: resb 1
    .f_12: resb 1
endstruc

; @struct s_bx_5d84 size=11 reg=bx disp=0x5d84
; @field offset=0 size=1 name=f_00
; @field offset=1 size=8 name=f_01
; @field offset=9 size=1 name=f_09
; @field offset=10 size=1 name=f_0a
struc s_bx_5d84
    .f_00: resb 1
    .gap_1: resb 8
    .f_09: resb 1
    .f_0a: resb 1
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
; @field offset=10 size=3 name=f_0a
; @field offset=13 size=1 name=f_0d
; @field offset=14 size=1 name=f_0e
; @field offset=15 size=2 name=f_0f
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
    .gap_a: resb 3
    .f_0d: resb 1
    .f_0e: resb 1
    .gap_f: resb 2
    .f_11: resb 1
endstruc

; @struct s_bx_ff0d size=2 reg=bx disp=0xff0d
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_bx_ff0d
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_bx_ff7c size=6 reg=bx disp=0xff7c
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=2 name=f_04
struc s_bx_ff7c
    .f_00: resb 2
    .gap_2: resb 2
    .f_04: resb 2
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

; @struct s_bx_ffae size=3 reg=bx disp=0xffae
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
struc s_bx_ffae
    .f_00: resb 1
    .gap_1: resb 1
    .f_02: resb 1
endstruc

; @struct s_bx_ffb0 size=4 reg=bx disp=0xffb0
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_ffb0
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_ffd0 size=7 reg=bx disp=0xffd0
; @field offset=0 size=2 name=f_00
; @field offset=2 size=4 name=f_02
; @field offset=6 size=1 name=f_06
struc s_bx_ffd0
    .f_00: resb 2
    .gap_2: resb 4
    .f_06: resb 1
endstruc

; @struct s_bx_ffd6 size=12 reg=bx disp=0xffd6
; @field offset=0 size=2 name=f_00
; @field offset=2 size=8 name=f_02
; @field offset=10 size=2 name=f_0a
struc s_bx_ffd6
    .f_00: resb 2
    .gap_2: resb 8
    .f_0a: resb 2
endstruc

; @struct s_bx_ffe1 size=9 reg=bx disp=0xffe1
; @field offset=0 size=1 name=f_00
; @field offset=1 size=4 name=f_01
; @field offset=5 size=1 name=f_05
; @field offset=6 size=1 name=f_06
; @field offset=7 size=2 name=f_07
struc s_bx_ffe1
    .f_00: resb 1
    .gap_1: resb 4
    .f_05: resb 1
    .gap_6: resb 1
    .f_07: resb 2
endstruc
