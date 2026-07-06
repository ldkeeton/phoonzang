; ── auto-discovered structs ─────────────────────────────────────

; @struct s_bx_0000 size=24 reg=bx disp=0x0000
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=2 name=f_04
; @field offset=6 size=2 name=f_06
; @field offset=8 size=2 name=f_08
; @field offset=10 size=6 name=f_0a
; @field offset=16 size=1 name=f_10
; @field offset=17 size=2 name=f_11
; @field offset=19 size=1 name=f_13
; @field offset=20 size=1 name=f_14
; @field offset=21 size=1 name=f_15
; @field offset=22 size=1 name=f_16
; @field offset=23 size=1 name=f_17
struc s_bx_0000
    .f_00: resb 2
    .f_02: resb 2
    .f_04: resb 2
    .f_06: resb 2
    .f_08: resb 2
    .gap_a: resb 6
    .f_10: resb 1
    .gap_11: resb 2
    .f_13: resb 1
    .f_14: resb 1
    .f_15: resb 1
    .f_16: resb 1
    .f_17: resb 1
endstruc

; @struct s_bx_0022 size=10 reg=bx disp=0x0022
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=4 name=f_03
; @field offset=7 size=1 name=f_07
; @field offset=8 size=1 name=f_08
; @field offset=9 size=1 name=f_09
struc s_bx_0022
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .gap_3: resb 4
    .f_07: resb 1
    .f_08: resb 1
    .f_09: resb 1
endstruc

; @struct s_bx_0040 size=4 reg=bx disp=0x0040
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_0040
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_007a size=7 reg=bx disp=0x007a
; @field offset=0 size=2 name=f_00
; @field offset=2 size=4 name=f_02
; @field offset=6 size=1 name=f_06
struc s_bx_007a
    .f_00: resb 2
    .gap_2: resb 4
    .f_06: resb 1
endstruc

; @struct s_bx_00ac size=6 reg=bx disp=0x00ac
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
; @field offset=4 size=1 name=f_04
; @field offset=5 size=1 name=f_05
struc s_bx_00ac
    .f_00: resb 1
    .gap_1: resb 1
    .f_02: resb 1
    .gap_3: resb 1
    .f_04: resb 1
    .f_05: resb 1
endstruc

; @struct s_bx_00d7 size=15 reg=bx disp=0x00d7
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=4 name=f_02
; @field offset=6 size=1 name=f_06
; @field offset=7 size=2 name=f_07
; @field offset=9 size=1 name=f_09
; @field offset=10 size=1 name=f_0a
; @field offset=11 size=1 name=f_0b
; @field offset=12 size=2 name=f_0c
; @field offset=14 size=1 name=f_0e
struc s_bx_00d7
    .f_00: resb 1
    .f_01: resb 1
    .gap_2: resb 4
    .f_06: resb 1
    .gap_7: resb 2
    .f_09: resb 1
    .gap_a: resb 1
    .f_0b: resb 1
    .gap_c: resb 2
    .f_0e: resb 1
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

; @struct s_bx_5c0c size=14 reg=bx disp=0x5c0c
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=2 name=f_04
; @field offset=6 size=2 name=f_06
; @field offset=8 size=4 name=f_08
; @field offset=12 size=2 name=f_0c
struc s_bx_5c0c
    .f_00: resb 2
    .f_02: resb 2
    .f_04: resb 2
    .f_06: resb 2
    .gap_8: resb 4
    .f_0c: resb 2
endstruc

; @struct s_bx_5d65 size=8 reg=bx disp=0x5d65
; @field offset=0 size=1 name=f_00
; @field offset=1 size=6 name=f_01
; @field offset=7 size=1 name=f_07
struc s_bx_5d65
    .f_00: resb 1
    .gap_1: resb 6
    .f_07: resb 1
endstruc

; @struct s_bx_5d7f size=7 reg=bx disp=0x5d7f
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
; @field offset=4 size=2 name=f_04
; @field offset=6 size=1 name=f_06
struc s_bx_5d7f
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .f_03: resb 1
    .gap_4: resb 2
    .f_06: resb 1
endstruc

; @struct s_bx_5e2c size=7 reg=bx disp=0x5e2c
; @field offset=0 size=1 name=f_00
; @field offset=1 size=2 name=f_01
; @field offset=3 size=1 name=f_03
; @field offset=4 size=1 name=f_04
; @field offset=5 size=1 name=f_05
; @field offset=6 size=1 name=f_06
struc s_bx_5e2c
    .f_00: resb 1
    .gap_1: resb 2
    .f_03: resb 1
    .f_04: resb 1
    .f_05: resb 1
    .f_06: resb 1
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

; @struct s_bx_8480 size=4 reg=bx disp=0x8480
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_8480
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_848e size=4 reg=bx disp=0x848e
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_848e
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

; @struct s_bx_ffa4 size=7 reg=bx disp=0xffa4
; @field offset=0 size=1 name=f_00
; @field offset=1 size=5 name=f_01
; @field offset=6 size=1 name=f_06
struc s_bx_ffa4
    .f_00: resb 1
    .gap_1: resb 5
    .f_06: resb 1
endstruc

; @struct s_bx_ffe2 size=4 reg=bx disp=0xffe2
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_ffe2
    .f_00: resb 2
    .f_02: resb 2
endstruc
