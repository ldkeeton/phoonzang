; ── auto-discovered structs ─────────────────────────────────────

; @struct s_si_0000 size=3 reg=si disp=0x0000
; @field offset=0 size=2 name=f_00
; @field offset=2 size=1 name=f_02
struc s_si_0000
    .f_00: resb 2
    .f_02: resb 1
endstruc

; @struct s_si_0002 size=7 reg=si disp=0x0002
; @field offset=0 size=2 name=f_00
; @field offset=2 size=4 name=f_02
; @field offset=6 size=1 name=f_06
struc s_si_0002
    .f_00: resb 2
    .gap_2: resb 4
    .f_06: resb 1
endstruc

; @struct s_si_0061 size=18 reg=si disp=0x0061
; @field offset=0 size=1 name=f_00
; @field offset=1 size=3 name=f_01
; @field offset=4 size=4 name=f_04
; @field offset=8 size=1 name=f_08
; @field offset=9 size=5 name=f_09
; @field offset=14 size=1 name=f_0e
; @field offset=15 size=2 name=f_0f
; @field offset=17 size=1 name=f_11
struc s_si_0061
    .f_00: resb 1
    .gap_1: resb 3
    .f_04: resb 4
    .f_08: resb 1
    .gap_9: resb 5
    .f_0e: resb 1
    .gap_f: resb 2
    .f_11: resb 1
endstruc

; @struct s_bx_0002 size=6 reg=bx disp=0x0002
; @field offset=0 size=2 name=f_00
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
; @field offset=4 size=1 name=f_04
; @field offset=5 size=1 name=f_05
struc s_bx_0002
    .f_00: resb 2
    .f_02: resb 1
    .f_03: resb 1
    .gap_4: resb 1
    .f_05: resb 1
endstruc

; @struct s_bx_001d size=8 reg=bx disp=0x001d
; @field offset=0 size=1 name=f_00
; @field offset=1 size=6 name=f_01
; @field offset=7 size=1 name=f_07
struc s_bx_001d
    .f_00: resb 1
    .gap_1: resb 6
    .f_07: resb 1
endstruc

; @struct s_bx_3e0a size=9 reg=bx disp=0x3e0a
; @field offset=0 size=2 name=f_00
; @field offset=2 size=6 name=f_02
; @field offset=8 size=1 name=f_08
struc s_bx_3e0a
    .f_00: resb 2
    .gap_2: resb 6
    .f_08: resb 1
endstruc

; @struct s_bx_521c size=4 reg=bx disp=0x521c
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_521c
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_5576 size=12 reg=bx disp=0x5576
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=2 name=f_04
; @field offset=6 size=2 name=f_06
; @field offset=8 size=2 name=f_08
; @field offset=10 size=1 name=f_0a
; @field offset=11 size=1 name=f_0b
struc s_bx_5576
    .f_00: resb 2
    .gap_2: resb 2
    .f_04: resb 2
    .gap_6: resb 2
    .f_08: resb 2
    .f_0a: resb 1
    .f_0b: resb 1
endstruc

; @struct s_bx_59fe size=8 reg=bx disp=0x59fe
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=2 name=f_04
; @field offset=6 size=2 name=f_06
struc s_bx_59fe
    .f_00: resb 2
    .f_02: resb 2
    .f_04: resb 2
    .f_06: resb 2
endstruc

; @struct s_bx_5afe size=2 reg=bx disp=0x5afe
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_bx_5afe
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_bx_5b72 size=14 reg=bx disp=0x5b72
; @field offset=0 size=2 name=f_00
; @field offset=2 size=8 name=f_02
; @field offset=10 size=1 name=f_0a
; @field offset=11 size=1 name=f_0b
; @field offset=12 size=1 name=f_0c
; @field offset=13 size=1 name=f_0d
struc s_bx_5b72
    .f_00: resb 2
    .gap_2: resb 8
    .f_0a: resb 1
    .f_0b: resb 1
    .f_0c: resb 1
    .f_0d: resb 1
endstruc

; @struct s_bx_5be0 size=4 reg=bx disp=0x5be0
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_5be0
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_5c0c size=20 reg=bx disp=0x5c0c
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=2 name=f_04
; @field offset=6 size=2 name=f_06
; @field offset=8 size=2 name=f_08
; @field offset=10 size=6 name=f_0a
; @field offset=16 size=2 name=f_10
; @field offset=18 size=2 name=f_12
struc s_bx_5c0c
    .f_00: resb 2
    .f_02: resb 2
    .f_04: resb 2
    .f_06: resb 2
    .f_08: resb 2
    .gap_a: resb 6
    .f_10: resb 2
    .f_12: resb 2
endstruc

; @struct s_bx_5c34 size=12 reg=bx disp=0x5c34
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=1 name=f_04
; @field offset=5 size=1 name=f_05
; @field offset=6 size=1 name=f_06
; @field offset=7 size=1 name=f_07
; @field offset=8 size=1 name=f_08
; @field offset=9 size=1 name=f_09
; @field offset=10 size=1 name=f_0a
; @field offset=11 size=1 name=f_0b
struc s_bx_5c34
    .f_00: resb 2
    .f_02: resb 2
    .f_04: resb 1
    .f_05: resb 1
    .f_06: resb 1
    .f_07: resb 1
    .f_08: resb 1
    .gap_9: resb 1
    .f_0a: resb 1
    .f_0b: resb 1
endstruc

; @struct s_bx_5d24 size=16 reg=bx disp=0x5d24
; @field offset=0 size=2 name=f_00
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
; @field offset=4 size=6 name=f_04
; @field offset=10 size=1 name=f_0a
; @field offset=11 size=3 name=f_0b
; @field offset=14 size=1 name=f_0e
; @field offset=15 size=1 name=f_0f
struc s_bx_5d24
    .f_00: resb 2
    .f_02: resb 1
    .f_03: resb 1
    .gap_4: resb 6
    .f_0a: resb 1
    .gap_b: resb 3
    .f_0e: resb 1
    .f_0f: resb 1
endstruc

; @struct s_bx_5d44 size=5 reg=bx disp=0x5d44
; @field offset=0 size=1 name=f_00
; @field offset=1 size=3 name=f_01
; @field offset=4 size=1 name=f_04
struc s_bx_5d44
    .f_00: resb 1
    .gap_1: resb 3
    .f_04: resb 1
endstruc

; @struct s_bx_5d5a size=15 reg=bx disp=0x5d5a
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
; @field offset=4 size=6 name=f_04
; @field offset=10 size=1 name=f_0a
; @field offset=11 size=3 name=f_0b
; @field offset=14 size=1 name=f_0e
struc s_bx_5d5a
    .f_00: resb 1
    .gap_1: resb 1
    .f_02: resb 1
    .f_03: resb 1
    .gap_4: resb 6
    .f_0a: resb 1
    .gap_b: resb 3
    .f_0e: resb 1
endstruc

; @struct s_bx_5d8d size=2 reg=bx disp=0x5d8d
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_bx_5d8d
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_bx_5daa size=3 reg=bx disp=0x5daa
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
struc s_bx_5daa
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
endstruc

; @struct s_bx_5e2a size=8 reg=bx disp=0x5e2a
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
; @field offset=4 size=1 name=f_04
; @field offset=5 size=1 name=f_05
; @field offset=6 size=1 name=f_06
; @field offset=7 size=1 name=f_07
struc s_bx_5e2a
    .f_00: resb 1
    .f_01: resb 1
    .gap_2: resb 1
    .f_03: resb 1
    .gap_4: resb 1
    .f_05: resb 1
    .f_06: resb 1
    .f_07: resb 1
endstruc

; @struct s_bx_69a4 size=4 reg=bx disp=0x69a4
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_69a4
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_82d0 size=4 reg=bx disp=0x82d0
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_82d0
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_fef7 size=5 reg=bx disp=0xfef7
; @field offset=0 size=1 name=f_00
; @field offset=1 size=3 name=f_01
; @field offset=4 size=1 name=f_04
struc s_bx_fef7
    .f_00: resb 1
    .gap_1: resb 3
    .f_04: resb 1
endstruc

; @struct s_di_0061 size=7 reg=di disp=0x0061
; @field offset=0 size=1 name=f_00
; @field offset=1 size=5 name=f_01
; @field offset=6 size=1 name=f_06
struc s_di_0061
    .f_00: resb 1
    .gap_1: resb 5
    .f_06: resb 1
endstruc
