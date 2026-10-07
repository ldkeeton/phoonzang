; ── auto-discovered structs ─────────────────────────────────────

; @struct s_di_0001 size=2 reg=di disp=0x0001
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_di_0001
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_si_0001 size=4 reg=si disp=0x0001
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
struc s_si_0001
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .f_03: resb 1
endstruc

; @struct s_bx_0000 size=5 reg=bx disp=0x0000
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=1 name=f_04
struc s_bx_0000
    .f_00: resb 2
    .f_02: resb 2
    .f_04: resb 1
endstruc

; @struct s_bx_0005 size=3 reg=bx disp=0x0005
; @field offset=0 size=1 name=f_00
; @field offset=1 size=2 name=f_01
struc s_bx_0005
    .f_00: resb 1
    .f_01: resb 2
endstruc
