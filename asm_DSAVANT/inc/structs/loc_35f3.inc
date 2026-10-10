; ── auto-discovered structs ─────────────────────────────────────

; @struct s_bx_0001 size=5 reg=bx disp=0x0001
; @field offset=0 size=1 name=f_00
; @field offset=1 size=2 name=f_01
; @field offset=3 size=2 name=f_03
struc s_bx_0001
    .f_00: resb 1
    .f_01: resb 2
    .f_03: resb 2
endstruc

; @struct s_bx_0005 size=2 reg=bx disp=0x0005
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_bx_0005
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_bx_0007 size=3 reg=bx disp=0x0007
; @field offset=0 size=1 name=f_00
; @field offset=1 size=2 name=f_01
struc s_bx_0007
    .f_00: resb 1
    .f_01: resb 2
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

; @struct s_bx_5c10 size=14 reg=bx disp=0x5c10
; @field offset=0 size=2 name=f_00
; @field offset=2 size=6 name=f_02
; @field offset=8 size=2 name=f_08
; @field offset=10 size=2 name=f_0a
; @field offset=12 size=2 name=f_0c
struc s_bx_5c10
    .f_00: resb 2
    .gap_2: resb 6
    .f_08: resb 2
    .gap_a: resb 2
    .f_0c: resb 2
endstruc

; @struct s_bx_5c34 size=8 reg=bx disp=0x5c34
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=1 name=f_04
; @field offset=5 size=1 name=f_05
; @field offset=6 size=1 name=f_06
; @field offset=7 size=1 name=f_07
struc s_bx_5c34
    .f_00: resb 2
    .gap_2: resb 2
    .f_04: resb 1
    .gap_5: resb 1
    .f_06: resb 1
    .f_07: resb 1
endstruc

; @struct s_bx_84ec size=2 reg=bx disp=0x84ec
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_bx_84ec
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_bx_9346 size=4 reg=bx disp=0x9346
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_9346
    .f_00: resb 2
    .f_02: resb 2
endstruc
