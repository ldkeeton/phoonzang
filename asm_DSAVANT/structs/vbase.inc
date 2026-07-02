; ── auto-discovered structs ─────────────────────────────────────

; @struct s_bx_0000 size=9 reg=bx disp=0x0000
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=1 name=f_04
; @field offset=5 size=1 name=f_05
; @field offset=6 size=1 name=f_06
; @field offset=7 size=1 name=f_07
; @field offset=8 size=1 name=f_08
struc s_bx_0000
    .f_00: resb 2
    .f_02: resb 2
    .f_04: resb 1
    .f_05: resb 1
    .f_06: resb 1
    .f_07: resb 1
    .f_08: resb 1
endstruc

; @struct s_bx_0009 size=2 reg=bx disp=0x0009
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_bx_0009
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_bx_000b size=29 reg=bx disp=0x000b
; @field offset=0 size=1 name=f_00
; @field offset=1 size=2 name=f_01
; @field offset=3 size=2 name=f_03
; @field offset=5 size=2 name=f_05
; @field offset=7 size=2 name=f_07
; @field offset=9 size=2 name=f_09
; @field offset=11 size=2 name=f_0b
; @field offset=13 size=2 name=f_0d
; @field offset=15 size=2 name=f_0f
; @field offset=17 size=2 name=f_11
; @field offset=19 size=2 name=f_13
; @field offset=21 size=2 name=f_15
; @field offset=23 size=2 name=f_17
; @field offset=25 size=2 name=f_19
; @field offset=27 size=2 name=f_1b
struc s_bx_000b
    .f_00: resb 1
    .f_01: resb 2
    .f_03: resb 2
    .f_05: resb 2
    .f_07: resb 2
    .f_09: resb 2
    .f_0b: resb 2
    .f_0d: resb 2
    .f_0f: resb 2
    .f_11: resb 2
    .f_13: resb 2
    .f_15: resb 2
    .f_17: resb 2
    .f_19: resb 2
    .f_1b: resb 2
endstruc

; @struct s_bx_0170 size=8 reg=bx disp=0x0170
; @field offset=0 size=1 name=f_00
; @field offset=1 size=2 name=f_01
; @field offset=3 size=1 name=f_03
; @field offset=4 size=1 name=f_04
; @field offset=5 size=1 name=f_05
; @field offset=6 size=1 name=f_06
; @field offset=7 size=1 name=f_07
struc s_bx_0170
    .f_00: resb 1
    .gap_1: resb 2
    .f_03: resb 1
    .gap_4: resb 1
    .f_05: resb 1
    .gap_6: resb 1
    .f_07: resb 1
endstruc

; @struct s_bx_01b6 size=3 reg=bx disp=0x01b6
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
struc s_bx_01b6
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
endstruc

; @struct s_bx_0236 size=17 reg=bx disp=0x0236
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
; @field offset=4 size=1 name=f_04
; @field offset=5 size=1 name=f_05
; @field offset=6 size=3 name=f_06
; @field offset=9 size=1 name=f_09
; @field offset=10 size=1 name=f_0a
; @field offset=11 size=1 name=f_0b
; @field offset=12 size=1 name=f_0c
; @field offset=13 size=1 name=f_0d
; @field offset=14 size=1 name=f_0e
; @field offset=15 size=1 name=f_0f
; @field offset=16 size=1 name=f_10
struc s_bx_0236
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .f_03: resb 1
    .f_04: resb 1
    .f_05: resb 1
    .gap_6: resb 3
    .f_09: resb 1
    .f_0a: resb 1
    .f_0b: resb 1
    .gap_c: resb 1
    .f_0d: resb 1
    .f_0e: resb 1
    .f_0f: resb 1
    .f_10: resb 1
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

; @struct s_bx_5978 size=5 reg=bx disp=0x5978
; @field offset=0 size=1 name=f_00
; @field offset=1 size=3 name=f_01
; @field offset=4 size=1 name=f_04
struc s_bx_5978
    .f_00: resb 1
    .gap_1: resb 3
    .f_04: resb 1
endstruc

; @struct s_bx_5d4b size=15 reg=bx disp=0x5d4b
; @field offset=0 size=2 name=f_00
; @field offset=2 size=3 name=f_02
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
struc s_bx_5d4b
    .f_00: resb 2
    .gap_2: resb 3
    .f_05: resb 1
    .f_06: resb 1
    .f_07: resb 1
    .f_08: resb 1
    .f_09: resb 1
    .f_0a: resb 1
    .f_0b: resb 1
    .f_0c: resb 1
    .f_0d: resb 1
    .f_0e: resb 1
endstruc

; @struct s_bx_5d66 size=2 reg=bx disp=0x5d66
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_bx_5d66
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_bx_5e2a size=4 reg=bx disp=0x5e2a
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
struc s_bx_5e2a
    .f_00: resb 1
    .f_01: resb 1
    .gap_2: resb 1
    .f_03: resb 1
endstruc

; @struct s_bx_69a4 size=4 reg=bx disp=0x69a4
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_69a4
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_69bc size=4 reg=bx disp=0x69bc
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_69bc
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

; @struct s_bx_82f2 size=4 reg=bx disp=0x82f2
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_82f2
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_8af2 size=4 reg=bx disp=0x8af2
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_8af2
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_91ee size=3 reg=bx disp=0x91ee
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
struc s_bx_91ee
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
endstruc

; @struct s_bx_9442 size=8 reg=bx disp=0x9442
; @field offset=0 size=2 name=f_00
; @field offset=2 size=4 name=f_02
; @field offset=6 size=1 name=f_06
; @field offset=7 size=1 name=f_07
struc s_bx_9442
    .f_00: resb 2
    .gap_2: resb 4
    .f_06: resb 1
    .f_07: resb 1
endstruc

; @struct s_bx_9492 size=8 reg=bx disp=0x9492
; @field offset=0 size=2 name=f_00
; @field offset=2 size=4 name=f_02
; @field offset=6 size=1 name=f_06
; @field offset=7 size=1 name=f_07
struc s_bx_9492
    .f_00: resb 2
    .gap_2: resb 4
    .f_06: resb 1
    .f_07: resb 1
endstruc

; @struct s_bx_952e size=9 reg=bx disp=0x952e
; @field offset=0 size=1 name=f_00
; @field offset=1 size=7 name=f_01
; @field offset=8 size=1 name=f_08
struc s_bx_952e
    .f_00: resb 1
    .gap_1: resb 7
    .f_08: resb 1
endstruc

; @struct s_bx_9596 size=5 reg=bx disp=0x9596
; @field offset=0 size=1 name=f_00
; @field offset=1 size=3 name=f_01
; @field offset=4 size=1 name=f_04
struc s_bx_9596
    .f_00: resb 1
    .gap_1: resb 3
    .f_04: resb 1
endstruc

; @struct s_bx_9a32 size=4 reg=bx disp=0x9a32
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_9a32
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_9f94 size=3 reg=bx disp=0x9f94
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
struc s_bx_9f94
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
endstruc

; @struct s_bx_a5d0 size=12 reg=bx disp=0xa5d0
; @field offset=0 size=2 name=f_00
; @field offset=2 size=8 name=f_02
; @field offset=10 size=2 name=f_0a
struc s_bx_a5d0
    .f_00: resb 2
    .gap_2: resb 8
    .f_0a: resb 2
endstruc

; @struct s_bx_ffb8 size=4 reg=bx disp=0xffb8
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_ffb8
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
