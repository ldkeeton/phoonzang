; ── auto-discovered structs ─────────────────────────────────────

; @struct s_bx_0000 size=7 reg=bx disp=0x0000
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=2 name=f_04
; @field offset=6 size=1 name=f_06
struc s_bx_0000
    .f_00: resb 2
    .f_02: resb 2
    .f_04: resb 2
    .f_06: resb 1
endstruc

; @struct s_bx_0007 size=9 reg=bx disp=0x0007
; @field offset=0 size=1 name=f_00
; @field offset=1 size=2 name=f_01
; @field offset=3 size=2 name=f_03
; @field offset=5 size=2 name=f_05
; @field offset=7 size=2 name=f_07
struc s_bx_0007
    .f_00: resb 1
    .f_01: resb 2
    .f_03: resb 2
    .f_05: resb 2
    .f_07: resb 2
endstruc

; @struct s_si_0000 size=4 reg=si disp=0x0000
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_si_0000
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_si_0004 size=9 reg=si disp=0x0004
; @field offset=0 size=2 name=f_00
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
; @field offset=4 size=1 name=f_04
; @field offset=5 size=2 name=f_05
; @field offset=7 size=2 name=f_07
struc s_si_0004
    .f_00: resb 2
    .f_02: resb 1
    .f_03: resb 1
    .gap_4: resb 1
    .f_05: resb 2
    .f_07: resb 2
endstruc

; @struct s_di_0001 size=3 reg=di disp=0x0001
; @field offset=0 size=1 name=f_00
; @field offset=1 size=2 name=f_01
struc s_di_0001
    .f_00: resb 1
    .f_01: resb 2
endstruc
