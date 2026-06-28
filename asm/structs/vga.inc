; ── auto-discovered structs ─────────────────────────────────────

; @struct s_di_0001 size=2 reg=di disp=0x0001
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_di_0001
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_di_004d size=6 reg=di disp=0x004d
; @field offset=0 size=1 name=f_00
; @field offset=1 size=4 name=f_01
; @field offset=5 size=1 name=f_05
struc s_di_004d
    .f_00: resb 1
    .gap_1: resb 4
    .f_05: resb 1
endstruc

; @struct s_di_0065 size=17 reg=di disp=0x0065
; @field offset=0 size=1 name=f_00
; @field offset=1 size=8 name=f_01
; @field offset=9 size=1 name=f_09
; @field offset=10 size=3 name=f_0a
; @field offset=13 size=4 name=f_0d
struc s_di_0065
    .f_00: resb 1
    .gap_1: resb 8
    .f_09: resb 1
    .gap_a: resb 3
    .f_0d: resb 4
endstruc

; @struct s_bx_0001 size=2 reg=bx disp=0x0001
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_bx_0001
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_bx_0003 size=2 reg=bx disp=0x0003
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_bx_0003
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_bx_0005 size=2 reg=bx disp=0x0005
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_bx_0005
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_bx_0007 size=9 reg=bx disp=0x0007
; @field offset=0 size=1 name=f_00
; @field offset=1 size=2 name=f_01
; @field offset=3 size=2 name=f_03
; @field offset=5 size=2 name=f_05
; @field offset=7 size=2 name=f_07
struc s_bx_0007
    .f_00: resb 1
    .gap_1: resb 2
    .f_03: resb 2
    .f_05: resb 2
    .f_07: resb 2
endstruc

; @struct s_bx_0069 size=10 reg=bx disp=0x0069
; @field offset=0 size=1 name=f_00
; @field offset=1 size=8 name=f_01
; @field offset=9 size=1 name=f_09
struc s_bx_0069
    .f_00: resb 1
    .gap_1: resb 8
    .f_09: resb 1
endstruc

; @struct s_bx_0072 size=4 reg=bx disp=0x0072
; @field offset=0 size=2 name=f_00
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
struc s_bx_0072
    .f_00: resb 2
    .gap_2: resb 1
    .f_03: resb 1
endstruc

; @struct s_si_0001 size=2 reg=si disp=0x0001
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_si_0001
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_si_0003 size=2 reg=si disp=0x0003
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_si_0003
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_si_0004 size=4 reg=si disp=0x0004
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_si_0004
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_si_0061 size=9 reg=si disp=0x0061
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=4 name=f_04
; @field offset=8 size=1 name=f_08
struc s_si_0061
    .f_00: resb 2
    .gap_2: resb 2
    .f_04: resb 4
    .f_08: resb 1
endstruc

; @struct s_si_0069 size=7 reg=si disp=0x0069
; @field offset=0 size=2 name=f_00
; @field offset=2 size=4 name=f_02
; @field offset=6 size=1 name=f_06
struc s_si_0069
    .f_00: resb 2
    .gap_2: resb 4
    .f_06: resb 1
endstruc
