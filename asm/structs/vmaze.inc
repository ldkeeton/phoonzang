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

; @struct s_bx_0007 size=9 reg=bx disp=0x0007
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=3 name=f_02
; @field offset=5 size=1 name=f_05
; @field offset=6 size=1 name=f_06
; @field offset=7 size=1 name=f_07
; @field offset=8 size=1 name=f_08
struc s_bx_0007
    .f_00: resb 1
    .f_01: resb 1
    .gap_2: resb 3
    .f_05: resb 1
    .f_06: resb 1
    .gap_7: resb 1
    .f_08: resb 1
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

; @struct s_bx_0292 size=12 reg=bx disp=0x0292
; @field offset=0 size=2 name=f_00
; @field offset=2 size=8 name=f_02
; @field offset=10 size=2 name=f_0a
struc s_bx_0292
    .f_00: resb 2
    .gap_2: resb 8
    .f_0a: resb 2
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

; @struct s_bx_5d54 size=17 reg=bx disp=0x5d54
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

; @struct s_bx_84ea size=4 reg=bx disp=0x84ea
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
struc s_bx_84ea
    .f_00: resb 1
    .gap_1: resb 1
    .f_02: resb 1
    .f_03: resb 1
endstruc

; @struct s_bx_84fe size=3 reg=bx disp=0x84fe
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
struc s_bx_84fe
    .f_00: resb 1
    .gap_1: resb 1
    .f_02: resb 1
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

; @struct s_bx_ffea size=4 reg=bx disp=0xffea
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_ffea
    .f_00: resb 2
    .f_02: resb 2
endstruc
