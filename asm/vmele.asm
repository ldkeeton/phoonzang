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

org 0
bits 16

    db 0xf2, 0x00, 0x55, 0x50, 0x65, 0x37, 0x98, 0x90 ; header (8 bytes)

    push ds
    add byte [bp + si], bl
    add byte [bx - 0x0079], dl
    mov ax, 0
    call 0xf40b
    mov word [0x90b6], 5
    mov word [0x90b8], 0
    mov word [0x90ba], 0
    mov word [0x90bc], 0
    cmp word [0x830a], byte 0x0a
    jne short 0x36
    call 0x33df
    cmp word [0x830a], byte 0x0e
    jne short 0x40
    call api_idx_0056
    cmp word [0x830a], byte 0x0b
    jne short 0x4a
    call api_idx_0002_2
    mov ax, 0
    ret
api_idx_0008:
    mov ax, 0xfff8
    call 0xf40b
    push word [bp + 0x4]
    call 0xca85
    pop cx
    test ax, ax
    jne short 0x62
    jmp near 0xf5
    mov ax, 0x2c
    imul word [bp + 0x4]
    mov si, ax
    mov bx, word [0x8482]
    cmp byte [bx + si + 0x2b], 1
    je short 0x7d
    cmp byte [bx + si + 0x2b], 3
    je short 0x7d
    jmp near 0xf5
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0xcb3a
    add sp, byte 4
    mov ax, word [bp + 0x4]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xfc
    imul cx
    add ax, strict word 5
    mov word [bp - 0x0006], ax
    mov ax, word [bp + 0x4]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 0x2d
    imul cx
    add ax, strict word 0x12
    mov word [bp - 0x0008], ax
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1c
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0xb
    push ax
    call 0xe830
    add sp, byte 4
    cmp word [bp + 0x6], byte 0
    je short 0xf3
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2b
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    call 0xe8da
    add sp, byte 8
    jmp short 0x101
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0xcb3a
    add sp, byte 4
    ret
api_idx_0004:
    mov ax, 0xfffc
    call 0xf40b
    call 0xec17
    mov ax, word [bp + 0x4]
    cwd
    les bx, word [0x0002]
    mov cx, word [es:bx]
    mov bx, word [es:bx + 0x2]
    add ax, cx
    adc dx, bx
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    cmp dx, word [bp - 0x0002]
    jg short 0x13b
    jne short 0x13d
    cmp ax, word [bp - 0x0004]
    jb short 0x13d
    jmp short 0x163
    call 0xbaef
    test ax, ax
    je short 0x145
    ret
    mov ax, 1
    push ax
    call 0xea50
    pop cx
    test ax, ax
    je short 0x15e
    mov ax, 1
    push ax
    call 0xeb32
    pop cx
    cmp al, 0xd
    jne short 0x15e
    ret
    call api_idx_0006_2
    jmp short 0x124
    ret
api_idx_0008_2:
    mov ax, 0xfff8
    call 0xf40b
    mov ax, 6
    imul word [bp + 0x6]
    add ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 6
    imul word [bp + 0x6]
    add ax, 0x92
    push ax
    mov ax, 0
    push ax
    call 0xe8da
    add sp, byte 8
    push word [bp + 0x4]
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa1
    sub ax, cx
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, ax
    mov ax, word [bp - 0x0002]
    add cx, ax
    mov word [bp - 0x0004], cx
    mov ax, 6
    imul word [bp + 0x6]
    add ax, 0x98
    push ax
    push cx
    mov ax, 6
    imul word [bp + 0x6]
    add ax, 0x92
    push ax
    push word [bp - 0x0002]
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x0006], dx
    mov word [bp - 0x0008], ax
    mov ax, 0
    push ax
    mov ax, 0x16
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 6
    imul word [bp + 0x6]
    add ax, 0x92
    push ax
    push word [bp - 0x0002]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0xe84e
    add sp, byte 4
    mov ax, 6
    imul word [bp + 0x6]
    add ax, 0x98
    push ax
    push word [bp - 0x0004]
    mov ax, 6
    imul word [bp + 0x6]
    add ax, 0x92
    push ax
    push word [bp - 0x0002]
    call 0xe8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0008]
    call 0xe94f
    add sp, byte 6
    call 0xec17
    ret
api_idx_000a:
    mov ax, 0xfff6
    call 0xf40b
    mov ax, 0
    push ax
    push word [0x8d10]
    push word [0x8d0e]
    call 0xe94f
    add sp, byte 6
    mov ax, 0
    push ax
    push word [0x8d0c]
    push word [0x8d0a]
    call 0xe94f
    add sp, byte 6
    mov byte [bp - 0x000a], 1
    mov byte [bp - 0x0009], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    mov ax, 0
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    mov ax, 0x9a
    push ax
    mov ax, 0x37
    push ax
    mov ax, 0xe
    push ax
    call 0xefd1
    add sp, byte 0x16
    cmp word [bp + 0x4], byte 0
    je short 0x2c1
    mov ax, 0xc2
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0x93
    push ax
    mov ax, 8
    push ax
    call 0xe8da
    add sp, byte 8
    ret
api_idx_0004_2:
    mov ax, 0xfffc
    call 0xf40b
    mov word [bp - 0x0004], 0x20
    mov word [bp - 0x0002], 0
    jmp short 0x2fd
    cmp word [bp - 0x0004], byte 0x20
    je short 0x2ed
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x41
    jb short 0x2ed
    cmp byte [bx + si], 0x5a
    ja short 0x2ed
    add byte [bx + si], 0x20
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si]
    sub ah, ah
    mov word [bp - 0x0004], ax
    inc word [bp - 0x0002]
    push word [bp + 0x4]
    call 0xfa90
    pop cx
    cmp ax, word [bp - 0x0002]
    jg short 0x2d4
    ret
api_idx_000c:
    mov ax, 0xfff4
    call 0xf40b
    mov ax, 1
    push ax
    call api_idx_000a
    pop cx
    mov ax, 2
    push ax
    push word [bp + 0x4]
    call 0xe883
    add sp, byte 4
    mov word [bp - 0x0006], ax
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    mov word [bp - 0x0002], ax
    add ax, word [bp - 0x0006]
    mov word [bp - 0x0004], ax
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0xa4
    push ax
    push word [bp - 0x0002]
    call 0xe809
    add sp, byte 4
    mov ax, 2
    push ax
    push word [bp + 0x4]
    call 0xe84e
    add sp, byte 4
    mov ax, word [0x598e]
    mov word [bp - 0x000c], ax
    push word [bp + 0x6]
    call 0xd7aa
    pop cx
    mov ax, 0xb0
    push ax
    push word [bp - 0x0004]
    mov ax, 0xa4
    push ax
    push word [bp - 0x0002]
    call 0xe8da
    add sp, byte 8
    mov ax, 0x10
    push ax
    call 0xb7e0
    pop cx
    cmp word [bp - 0x000c], byte 0xff
    je short 0x39f
    push word [bp - 0x000c]
    call 0xd7aa
    pop cx
    jmp short 0x3ad
    mov ax, 0x10
    push ax
    call 0xd6c6
    pop cx
    mov word [0x598e], 0xffff
    mov ax, 0
    push ax
    call api_idx_000a
    pop cx
    call 0xec17
    ret
api_idx_0004_3:
    mov ax, 0xfffc
    call 0xf40b
    mov word [bp - 0x0004], 0xffff
    mov word [bp - 0x0002], 0xf
    mov bx, word [bp - 0x0002]
    mov al, byte [bx + 0x5b48]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jne short 0x3df
    mov byte [bx + 0x5b5a], 1
    mov ax, bx
    ret
    cmp byte [bx + 0x5b5a], 0
    jne short 0x3e9
    mov word [bp - 0x0004], bx
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x12
    jl short 0x3c9
    cmp word [bp - 0x0004], byte 0xff
    je short 0x419
    mov bx, word [bp - 0x0004]
    mov al, byte [bx + 0x5b48]
    sub ah, ah
    cmp ax, 0xff
    je short 0x40d
    push bx
    call 0xc12a
    pop cx
    push word [bp - 0x0004]
    push word [bp + 0x4]
    call 0xd61c
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    ret
api_idx_00a8:
    mov ax, 0xff58
    call 0xf40b
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    cmp byte [bx + 0xe5], 2
    jge short 0x439
    mov ax, 0xffff
    ret
    mov al, byte [bx + 0xe5]
    cbw
    mov word [bp - 0x000a], ax
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    mov ax, 0xc
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    add ax, cx
    mov bx, ax
    add bx, bp
    mov word [bx - 0x009c], 0xffff
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 6
    jl short 0x44b
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xc
    jl short 0x446
    mov word [bp - 0x0090], 0xffff
    mov word [bp - 0x008e], 0x5e
    mov word [bp - 0x008c], 0x5e
    mov word [bp - 0x008a], 0x5f
    mov word [bp - 0x0088], 0x60
    mov word [bp - 0x0086], 0x60
    mov word [bp - 0x0084], 0x3c
    mov word [bp - 0x0082], 0x3d
    mov word [bp - 0x0080], 0x3d
    mov word [bp - 0x007e], 0x3e
    mov word [bp - 0x007c], 0x3f
    mov word [bp - 0x007a], 0x40
    mov word [bp - 0x0078], 0x42
    mov word [bp - 0x0076], 0x42
    mov word [bp - 0x0074], 0x43
    mov word [bp - 0x0072], 0x44
    mov word [bp - 0x0070], 0x45
    mov word [bp - 0x006e], 0x46
    mov word [bp - 0x006c], 0x4d
    mov word [bp - 0x006a], 0x4d
    mov word [bp - 0x0068], 0x4e
    mov word [bp - 0x0066], 0x4f
    mov word [bp - 0x0064], 0x50
    mov word [bp - 0x0062], 0x50
    mov word [bp - 0x0060], 0xffff
    mov word [bp - 0x005e], 0x48
    mov word [bp - 0x005c], 0x49
    mov word [bp - 0x005a], 0x4a
    mov word [bp - 0x0058], 0x4b
    mov word [bp - 0x0056], 0x4b
    mov word [bp - 0x0054], 0x52
    mov word [bp - 0x0052], 0x53
    mov word [bp - 0x0050], 0x54
    mov word [bp - 0x004e], 0x56
    mov word [bp - 0x004c], 0x55
    mov word [bp - 0x004a], 0x57
    mov word [bp - 0x0048], 0x58
    mov word [bp - 0x0046], 0x59
    mov word [bp - 0x0044], 0x5a
    mov word [bp - 0x0042], 0x5b
    mov word [bp - 0x0040], 0x5c
    mov word [bp - 0x003e], 0x69
    mov ax, word [0x5b6e]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    jne short 0x57f
    mov word [bp - 0x003c], 0xffff
    mov word [bp - 0x003a], 0x62
    mov word [bp - 0x0038], 0x63
    mov word [bp - 0x0036], 0x63
    mov word [bp - 0x0034], 0x64
    mov word [bp - 0x0032], 0x64
    mov word [bp - 0x0002], 0
    mov ax, 0xc
    imul word [bp - 0x000a]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    add ax, cx
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x009c]
    cmp ax, word [bp + 0x6]
    je short 0x5a1
    jmp near 0x637
    mov ax, 0
    push ax
    mov ax, 0xc
    push ax
    lea ax, word [bp - 0x00a8]
    push ax
    call 0xf306
    add sp, byte 6
    mov bx, word [bp - 0x000a]
    add bx, bp
    mov byte [bx - 0x00a8], 1
    mov ax, 5
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    dec ax
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov word [bp - 0x0006], 0
    mov ax, 8
    push ax
    call 0xb7a9
    pop cx
    inc ax
    mov word [bp - 0x000c], ax
    mov bx, word [bp - 0x000c]
    add bx, bp
    cmp byte [bx - 0x00a8], 0
    jne short 0x5d9
    mov bx, word [bp - 0x000c]
    add bx, bp
    mov byte [bx - 0x00a8], 1
    inc word [bp - 0x0006]
    mov ax, 0xc
    imul word [bp - 0x000a]
    add ax, word [bp - 0x000c]
    mov bx, ax
    cmp byte [bx - 0x7622], 0x23
    jle short 0x62d
    mov ax, 0xc
    imul word [bp - 0x000c]
    mov cx, word [bp - 0x0008]
    shl cx, 1
    add ax, cx
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x009c], byte 0xff
    je short 0x62d
    mov ax, word [bx - 0x009c]
    ret
    cmp word [bp - 0x0006], byte 3
    jl short 0x5d9
    mov ax, 0xffff
    ret
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jge short 0x645
    jmp near 0x584
    mov ax, 0xffff
    ret
api_idx_005e:
    mov ax, 0xffa2
    call 0xf40b
    mov word [bp - 0x0002], 0xf
    mov bx, word [bp - 0x0002]
    mov al, byte [bx + 0x5b48]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jne short 0x666
    mov ax, 0
    ret
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x12
    jl short 0x654
    mov ax, 0x9098
    push ax
    lea ax, word [bp - 0x005e]
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, word [bp + 0x4]
    mov cx, 0xa
    cwd
    idiv cx
    add ax, strict word 0x30
    mov byte [bp - 0x005b], al
    add dx, byte 0x30
    mov ax, dx
    mov byte [bp - 0x005a], al
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    lea ax, word [bp - 0x005e]
    push ax
    call 0xd161
    add sp, byte 4
    push ax
    call 0xf909
    add sp, byte 4
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short 0x6bb
    mov ax, 0xffff
    ret
    mov ax, 2
    push ax
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    push word [bp - 0x0004]
    call 0xfdbd
    add sp, byte 8
    mov word [bp - 0x0006], dx
    mov word [bp - 0x0008], ax
    push word [bp - 0x0004]
    call 0xfda5
    pop cx
    mov word [bp - 0x000a], 0
    mov word [bp - 0x000c], 0x2800
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    call 0xe91b
    add sp, byte 4
    mov cx, word [bp - 0x0008]
    mov bx, word [bp - 0x0006]
    add cx, word [bp - 0x000c]
    adc bx, word [bp - 0x000a]
    cmp dx, bx
    jl short 0x70b
    jne short 0x70d
    cmp ax, cx
    ja short 0x70d
    jmp short 0x711
    mov ax, 0
    ret
    cmp byte [0x5962], 1
    jne short 0x740
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xe91b
    add sp, byte 4
    cmp dx, word [bp - 0x000a]
    jl short 0x732
    jne short 0x734
    cmp ax, word [bp - 0x000c]
    ja short 0x734
    jmp short 0x740
    mov word [bp - 0x000a], 0
    mov word [bp - 0x000c], 0
    jmp short 0x77f
    cmp byte [0x5963], 1
    jne short 0x77f
    mov al, byte [0x5964]
    sub ah, ah
    add ax, strict word 0xffc0
    mov word [bp - 0x000e], ax
    cmp ax, strict word 1
    jl short 0x77f
    cmp ax, strict word 0x1a
    jg short 0x77f
    push ax
    mov ax, 3
    push ax
    call 0xe91b
    add sp, byte 4
    cmp dx, word [bp - 0x000a]
    jl short 0x773
    jne short 0x775
    cmp ax, word [bp - 0x000c]
    ja short 0x775
    jmp short 0x77f
    mov word [bp - 0x000a], 0
    mov word [bp - 0x000c], 0
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    call 0xe91b
    add sp, byte 4
    mov cx, word [bp - 0x0008]
    mov bx, word [bp - 0x0006]
    add cx, word [bp - 0x000c]
    adc bx, word [bp - 0x000a]
    cmp dx, bx
    jl short 0x7a3
    jne short 0x7a5
    cmp ax, cx
    ja short 0x7a5
    jmp short 0x7a9
    mov ax, 0
    ret
    mov ax, 0xffff
    ret
api_idx_0008_3:
    mov ax, 0xfff8
    call 0xf40b
    mov ax, 0
    push ax
    push word [bp + 0x4]
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x7b70]
    mov ax, 4
    push ax
    call 0xb63c
    add sp, byte 8
    cmp word [bp + 0x6], byte 1
    jle short 0x7f1
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov al, byte [bx + 0xd7]
    sub ah, ah
    push ax
    call api_idx_005e
    pop cx
    cmp ax, strict word 0xffff
    jne short 0x7f1
    ret
    inc word [0x8466]
    mov al, byte [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + 0x19e], al
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov al, byte [bx + 0xd7]
    sub ah, ah
    push ax
    call api_idx_0004_3
    pop cx
    mov cx, word [bp + 0x6]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + 0x19f], al
    cmp word [bp + 0x6], byte 1
    jne short 0x84f
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    cmp byte [bx + 0xd8], 0
    jbe short 0x84f
    mov al, byte [bx + 0xd8]
    sub ah, ah
    push ax
    call 0xd7aa
    pop cx
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov al, byte [bx + 0xe2]
    sub ah, ah
    test ax, 1
    jne short 0x89c
    mov al, byte [0x5988]
    sub ah, ah
    jmp short 0x892
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    cmp word [bx + 0x7a], byte 0
    jle short 0x880
    dec word [bx + 0x7a]
    jmp short 0x89c
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    inc word [bx + 0x7a]
    jmp short 0x89c
    cmp ax, strict word 1
    je short 0x86c
    cmp ax, strict word 2
    je short 0x882
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov cx, word [bx - 0x7b70]
    add cx, byte 0x7a
    sub sp, byte 4
    mov ax, sp
    mov dx, ss
    mov es, dx
    mov si, cx
    mov di, ax
    movsw
    movsw
    call 0xd0be
    add sp, byte 4
    mov cx, word [bp + 0x6]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + 0x1a1], al
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x1a1], 1
    jae short 0x8e5
    mov byte [bx + 0x1a1], 1
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x1a1], 9
    jbe short 0x8fc
    mov byte [bx + 0x1a1], 9
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + 0x1a0], 1
    mov word [bp - 0x0002], 0
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov si, word [bp - 0x0002]
    mov byte [bx + si + 0x18c], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x911
    mov word [bp - 0x0002], 0
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov si, word [bp - 0x0002]
    mov byte [bx + si + 0x192], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x934
    cmp byte [0x5988], 2
    jne short 0x968
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    inc byte [bx + 0x80]
    mov word [bp - 0x0002], 0
    jmp near 0xafe
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov al, byte [bx + 0x80]
    sub ah, ah
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    pop ax
    mov word [bx + si], ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov cx, word [bx - 0x7b70]
    add cx, byte 0x7e
    sub sp, byte 4
    mov ax, sp
    mov dx, ss
    mov es, dx
    mov si, cx
    mov di, ax
    movsw
    movsw
    call 0xd0be
    add sp, byte 4
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    pop ax
    mov word [bx + si + 0x4], ax
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov ax, word [bx + si + 0x4]
    mov word [bx + si + 0x2], ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov cx, word [bx - 0x7b70]
    add cx, strict word 0x82
    sub sp, byte 4
    mov ax, sp
    mov dx, ss
    mov es, dx
    mov si, cx
    mov di, ax
    movsw
    movsw
    call 0xd0be
    add sp, byte 4
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    pop ax
    mov word [bx + si + 0x8], ax
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov ax, word [bx + si + 0x8]
    mov word [bx + si + 0x6], ax
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + si + 0x2a], 0xff
    mov al, byte [0x5988]
    sub ah, ah
    jmp near 0xaee
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + si + 0x26], 2
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + si + 0x27], 2
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + si + 0x29], 0xfb
    jmp short 0xafb
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + si + 0x26], 0xfe
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + si + 0x27], 0xfe
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + si + 0x29], 5
    jmp short 0xafb
    cmp ax, strict word 1
    jne short 0xaf6
    jmp near 0xa60
    cmp ax, strict word 2
    je short 0xaa7
    inc word [bp - 0x0002]
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0002]
    jle short 0xb17
    jmp near 0x970
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0002], 0
    jmp short 0xb35
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    add word [bp - 0x0006], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0xb23
    mov ax, word [bp - 0x0006]
    cwd
    idiv word [0x69c8]
    inc ax
    mov cx, 3
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    cmp word [0x8452], byte 0
    jle short 0xb5a
    inc word [bp - 0x0006]
    mov ax, 5
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0006], ax
    mov ax, 0x96
    cmp byte [0x5988], 1
    je short 0xb85
    mov ax, 0x64
    cmp byte [0x5988], 2
    jne short 0xb85
    mov ax, 0x4b
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0008], 1
    mov ax, word [bp + 0x6]
    cmp ax, word [bp - 0x0006]
    jl short 0xb98
    jmp near 0xc66
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    cmp ax, strict word 0x19
    jle short 0xbdb
    push word [bp + 0x4]
    push word [bp - 0x0008]
    call api_idx_00a8
    add sp, byte 4
    mov word [bp + 0x4], ax
    push word [bp - 0x0004]
    call 0xb7a9
    pop cx
    push ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov al, byte [bx + 0xac]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jle short 0xbd9
    mov word [bp + 0x4], 0xffff
    jmp short 0xbe0
    mov word [bp + 0x4], 0xffff
    mov word [bp - 0x0002], 0
    cmp word [bp + 0x4], byte 0xff
    jne short 0xc49
    mov ax, word [bp - 0x0008]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si + 0xac], 0
    jbe short 0xc49
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    cmp byte [bx + si + 0xac], 0
    jbe short 0xc49
    push word [bp - 0x0004]
    call 0xb7a9
    pop cx
    push ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si + 0xac]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short 0xc49
    mov ax, word [bp - 0x0008]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov al, byte [bx + si + 0xaa]
    sub ah, ah
    mov word [bp + 0x4], ax
    inc word [bp - 0x0002]
    cmp word [bp - 0x0002], byte 2
    jl short 0xbe5
    cmp word [bp + 0x4], byte 0xff
    je short 0xc66
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    push word [bp + 0x4]
    call api_idx_0008_3
    add sp, byte 4
    ret
api_idx_0004_4:
    mov ax, 0xfffc
    call 0xf40b
    mov word [bp - 0x0004], 0
    mov al, byte [0x69c8]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + 0x1a1], al
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov si, word [bp - 0x0002]
    mov byte [bx + si + 0x18c], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0xc89
    cmp word [0x82fa], byte 0
    jle short 0xcc0
    mov al, byte [0x82fc]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + 0x190], al
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov si, word [bp - 0x0002]
    mov byte [bx + si + 0x192], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0xcc5
    mov word [bp - 0x0002], 0
    jmp near 0xf88
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    pop ax
    mov word [bx + si], ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx + 0x5c0e]
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    pop ax
    mov word [bx + si + 0x4], ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx + 0x5c0c]
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    pop ax
    mov word [bx + si + 0x2], ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx + 0x5c12]
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    pop ax
    mov word [bx + si + 0x8], ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx + 0x5c10]
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    pop ax
    mov word [bx + si + 0x6], ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5e2f]
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    pop ax
    mov byte [bx + si + 0x22], al
    mov ax, 0xa
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov cx, ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x7b7e]
    add ax, cx
    add ax, strict word 0xe
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    add ax, 0x5d5a
    push ax
    call 0xfedc
    add sp, byte 6
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5e32]
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    pop ax
    mov byte [bx + si + 0x23], al
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + si + 0x2a], 0xff
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + si + 0x1f], 1
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d82], 0
    jbe short 0xe91
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + si + 0x28]
    cbw
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d82]
    sub ah, ah
    mov cx, 0xa
    cwd
    idiv cx
    mov cx, ax
    pop ax
    add ax, cx
    inc ax
    inc ax
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + si + 0x28], al
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d7f], 0
    jbe short 0xee3
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + si + 0x26]
    cbw
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d7f]
    sub ah, ah
    mov cx, 0xf
    cwd
    idiv cx
    mov cx, ax
    inc ax
    inc ax
    mov cx, ax
    pop ax
    sub ax, cx
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + si + 0x26], al
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d81], 0
    jbe short 0xf35
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + si + 0x27]
    cbw
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d81]
    sub ah, ah
    mov cx, 0xf
    cwd
    idiv cx
    mov cx, ax
    inc ax
    inc ax
    mov cx, ax
    pop ax
    sub ax, cx
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + si + 0x27], al
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d80], 0
    jbe short 0xf85
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + si + 0x29]
    cbw
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d80]
    sub ah, ah
    mov cx, 0xa
    cwd
    idiv cx
    mov cx, ax
    pop ax
    add ax, cx
    inc ax
    inc ax
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + si + 0x29], al
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jge short 0xf94
    jmp near 0xceb
    ret
api_idx_000a_2:
    mov ax, 0xfff6
    call 0xf40b
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x19f], 0xff
    jne short 0xfae
    ret
    mov al, byte [bx + 0x19f]
    cbw
    mov word [bp - 0x0002], ax
    mov word [bp - 0x000a], 0
    cmp word [bp + 0xa], byte 0xff
    jne short 0xfdd
    mov word [bp + 0xa], 0
    mov cx, 0x15e
    imul cx
    mov bx, ax
    mov al, byte [bx + 0x6b75]
    sub ah, ah
    cmp ax, 0xfe
    je short 0xfdd
    mov word [bp - 0x000a], 1
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + 0x6a1a]
    sub ah, ah
    mov word [bp - 0x0004], ax
    jmp near 0x118a
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x6a22]
    sub ah, ah
    mov word [bp - 0x0006], ax
    cmp word [bp + 0xa], byte 0
    je short 0x1011
    jmp near 0x107b
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x6b75], 0
    jbe short 0x107b
    mov al, byte [bx + 0x6b75]
    sub ah, ah
    cmp ax, 0xfe
    jge short 0x107b
    cmp ax, 0xfd
    jne short 0x103c
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0008], 0
    jmp short 0x1079
    mov word [bp - 0x0008], ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    cmp byte [bx + 0xd7], 0x47
    jne short 0x1079
    cmp word [0x90ba], byte 1
    jne short 0x1069
    mov ax, word [0x8460]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], dx
    jmp short 0x1079
    cmp word [bp - 0x000a], byte 0
    jne short 0x1079
    mov word [bp - 0x0006], 1
    mov word [bp - 0x0008], 0xb
    jmp short 0x10bc
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x6a2c]
    sub ah, ah
    push ax
    call 0xb7a9
    pop cx
    add word [bp - 0x0006], ax
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x6a40]
    sub ah, ah
    mov word [bp - 0x0008], ax
    cmp word [bp - 0x000a], byte 0
    je short 0x10bc
    mov al, byte [bx + 0x6a4a]
    sub ah, ah
    push ax
    call 0xb7a9
    pop cx
    add word [bp - 0x0008], ax
    mov al, byte [bp + 0xa]
    push ax
    mov ax, 3
    imul word [bp + 0x6]
    mov cx, ax
    add ax, word [bp + 0x8]
    mov bx, ax
    pop ax
    mov byte [bx - 0x7bd0], al
    mov al, byte [bp - 0x0006]
    push ax
    mov ax, 0x5a
    imul word [bp + 0x6]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 0x8]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 0x0004]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx - 0x7cde], al
    mov al, byte [bp - 0x0008]
    mov byte [bx - 0x7cdd], al
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0008]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6ac1]
    inc al
    push ax
    mov ax, 0x5a
    imul word [bp + 0x6]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 0x8]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 0x0004]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx - 0x7cdc], al
    mov al, byte [bx - 0x7cdc]
    sub ah, ah
    mov cx, ax
    push cx
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0008]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6ac2]
    sub ah, ah
    push ax
    call 0xb7a9
    pop cx
    pop cx
    add ax, cx
    push ax
    mov ax, 0x5a
    imul word [bp + 0x6]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 0x8]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 0x0004]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx - 0x7cdc], al
    inc word [bp - 0x0004]
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + 0x6a1a]
    sub ah, ah
    push ax
    mov al, byte [bx + 0x6a1e]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    cmp ax, word [bp - 0x0004]
    jle short 0x11af
    jmp near 0xff4
    ret
api_idx_000c_2:
    mov ax, 0xfff4
    call 0xf40b
    mov word [bp - 0x0002], 0
    jmp near 0x1287
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + si + 0x2a]
    cbw
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short 0x11e0
    jmp near 0x1284
    mov cx, 0xa
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], dx
    mov cx, 6
    imul cx
    mov cx, word [bp - 0x0008]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov word [bx - 0x7bc6], 0
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + si + 0x2a], 0xff
    mov ax, 6
    imul word [bp - 0x0006]
    mov cx, word [bp - 0x0008]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5ec]
    mov cx, 0xa
    cwd
    idiv cx
    mov word [bp - 0x000a], ax
    mov word [bp - 0x000c], dx
    mov cx, 6
    imul cx
    mov cx, word [bp - 0x000c]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx - 0x7bc6], byte 0
    jne short 0x1284
    mov ax, 0xa
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov word [bx - 0x7bc6], ax
    mov ax, 0xa
    imul word [bp - 0x000a]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    pop ax
    mov byte [bx + si + 0x2a], al
    mov ax, 0xffff
    push ax
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    push word [bp + 0x4]
    call api_idx_000a_2
    add sp, byte 8
    inc word [bp - 0x0002]
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0002]
    jle short 0x12a0
    jmp near 0x11be
    call 0x2cc7
    mov ax, 4
    push ax
    call api_idx_0004
    pop cx
    ret
api_idx_000e:
    mov ax, 0xfff2
    call 0xf40b
    mov ax, 0x2c
    imul word [bp + 0x6]
    mov cx, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x7b7e]
    add ax, cx
    mov word [bp - 0x0004], ax
    mov word [bp - 0x000a], 0
    mov bx, ax
    cmp byte [bx + 0x10], 0
    jbe short 0x130a
    mov ax, word [bx + 0x8]
    mov bx, 5
    imul bx
    mov cx, 0x64
    mov bx, 0
    call 0xf99f
    mov word [bp - 0x0002], ax
    push ax
    call 0xb7a9
    pop cx
    mov bx, word [bp - 0x0004]
    mov cx, word [bx + 0x6]
    add ax, cx
    inc ax
    mov word [bx + 0x6], ax
    mov ax, word [bx + 0x6]
    cmp ax, word [bx + 0x8]
    jle short 0x130a
    mov ax, word [bx + 0x8]
    mov word [bx + 0x6], ax
    mov bx, word [bp - 0x0004]
    cmp word [bx + 0x6], byte 0
    jg short 0x1329
    mov word [bx + 0x6], 0
    mov ax, 6
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 6
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x10], al
    mov ax, word [bp + 0x8]
    sub ax, word [bp + 0xa]
    push ax
    mov bx, word [bp - 0x0004]
    mov al, byte [bx + 0x23]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    mov word [bp - 0x0006], ax
    mov ax, word [bp - 0x0006]
    add word [bx + 0x2], ax
    mov bx, word [bp - 0x0004]
    mov ax, word [bx + 0x2]
    mov cx, word [bx + 0x4]
    cmp ax, cx
    jle short 0x1356
    mov word [bx + 0x2], cx
    mov bx, word [bp - 0x0004]
    cmp word [bx + 0x2], byte 0
    jle short 0x1362
    jmp near 0x1411
    mov word [bx + 0x2], 0
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x6], 0
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x22], 3
    mov word [bp - 0x000a], 1
    cmp word [bp + 0x4], byte 0
    jne short 0x1384
    jmp near 0x1411
    mov ax, word [bp + 0x4]
    cmp ax, strict word 1
    jl short 0x13aa
    cmp ax, strict word 5
    jg short 0x13aa
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov ax, word [bx + 0x40]
    mov dx, word [bx + 0x42]
    add word [0x84a2], ax
    adc word [0x84a4], dx
    mov bx, word [bp - 0x0004]
    cmp byte [bx + 0x2a], 0xff
    je short 0x13e6
    mov al, byte [bx + 0x2a]
    cbw
    mov cx, 0xa
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov al, byte [bx + 0x2a]
    cbw
    cwd
    idiv cx
    mov word [bp - 0x000e], dx
    mov ax, 6
    imul word [bp - 0x000c]
    mov cx, word [bp - 0x000e]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov word [bx - 0x7bc6], 0
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x2a], 0xff
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov al, byte [bx + 0xe2]
    sub ah, ah
    test ax, 1
    je short 0x1411
    mov ax, 1
    push ax
    mov al, byte [bx + 0xe0]
    sub ah, ah
    push ax
    mov ax, 0x5842
    push ax
    call 0xec41
    add sp, byte 6
    mov word [bp - 0x0008], 0
    mov bx, word [bp - 0x0004]
    mov si, word [bp - 0x0008]
    cmp byte [bx + si + 0xe], 0
    jbe short 0x142f
    mov al, byte [bx + si + 0xe]
    sub ah, ah
    cmp ax, 0xff
    je short 0x142f
    dec byte [bx + si + 0xe]
    inc word [bp - 0x0008]
    mov ax, word [bp - 0x0008]
    cmp ax, strict word 0xa
    jl short 0x1416
    mov bx, word [bp - 0x0004]
    cmp byte [bx + 0x13], 0
    jne short 0x1447
    mov byte [bx + 0x23], 0
    mov bx, word [bp - 0x0004]
    mov al, byte [bx + 0x29]
    cbw
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jge short 0x1459
    inc ax
    jmp short 0x1464
    mov ax, word [bp - 0x0008]
    push ax
    cmp ax, strict word 0
    pop ax
    jle short 0x1464
    dec ax
    mov byte [bx + 0x29], al
    cmp word [bp + 0x4], byte 0
    jne short 0x14a0
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d80], 0
    jbe short 0x14a0
    mov al, byte [bx + 0x5d80]
    sub ah, ah
    mov cx, 0xa
    cwd
    idiv cx
    inc ax
    inc ax
    mov word [bp - 0x0008], ax
    mov bx, word [bp - 0x0004]
    mov al, byte [bx + 0x29]
    cbw
    mov cx, ax
    mov ax, word [bp - 0x0008]
    cmp cx, ax
    jge short 0x14a0
    inc byte [bx + 0x29]
    mov bx, word [bp - 0x0004]
    cmp byte [bx + 0x24], 0
    jbe short 0x14ac
    dec byte [bx + 0x24]
    mov bx, word [bp - 0x0004]
    cmp byte [bx + 0x2b], 3
    jne short 0x14b9
    mov byte [bx + 0x2b], 0
    mov bx, word [bp - 0x0004]
    cmp byte [bx + 0x22], 3
    je short 0x14e2
    cmp word [bp + 0x4], byte 0
    je short 0x14e2
    cmp byte [bx + 0x2b], 2
    jne short 0x14e2
    mov word [bx + 0x2], 0
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x6], 0
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x22], 3
    mov ax, word [bp - 0x000a]
    ret
api_idx_005c:
    mov ax, 0xffa4
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov word [bp - 0x000a], 0
    mov word [bp - 0x0004], 0
    jmp near 0x15d3
    mov ax, 0x2c
    imul word [bp - 0x0004]
    mov si, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + si + 0x22], 3
    jae short 0x1541
    mov ax, 0
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov al, byte [bx + 0xdd]
    sub ah, ah
    push ax
    push word [bp - 0x0004]
    push word [bp + 0x4]
    call api_idx_000e
    add sp, byte 8
    cmp ax, strict word 1
    jne short 0x1541
    inc word [bp - 0x000a]
    mov ax, 0x2c
    imul word [bp - 0x0004]
    mov si, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + si + 0x22], 3
    jae short 0x15d0
    add bx, si
    mov si, bx
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov cx, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x7b7e]
    add ax, cx
    mov di, ax
    mov cx, ds
    mov es, cx
    mov cx, 0x16
    rep movsw
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + si + 0x2a], 0xff
    je short 0x15cd
    mov al, byte [bx + si + 0x2a]
    cbw
    mov cx, 0xa
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    mov al, byte [bx + si + 0x2a]
    cbw
    cwd
    idiv cx
    mov word [bp - 0x0008], dx
    mov ax, word [bp + 0x4]
    imul cx
    add ax, word [bp - 0x0002]
    push ax
    mov ax, 6
    imul word [bp - 0x0006]
    mov cx, ax
    mov dx, word [bp - 0x0008]
    shl dx, 1
    add ax, dx
    mov bx, ax
    pop ax
    mov word [bx - 0x7bc6], ax
    inc word [bp - 0x0002]
    inc word [bp - 0x0004]
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0004]
    jle short 0x15ec
    jmp near 0x14fe
    cmp word [bp - 0x000a], byte 0
    jg short 0x15f5
    jmp near 0x16be
    mov ax, 1
    push ax
    call api_idx_000a
    pop cx
    mov ax, 1
    push ax
    call api_idx_0004
    pop cx
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x1a1], 1
    jne short 0x161d
    mov byte [bp - 0x005c], 0
    jmp short 0x1638
    lea ax, word [bp - 0x005c]
    push ax
    push word [bp - 0x000a]
    call 0xb27d
    add sp, byte 4
    mov ax, 0x90a2
    push ax
    lea ax, word [bp - 0x005c]
    push ax
    call 0xf32d
    add sp, byte 4
    mov ax, 1
    cmp word [bp - 0x000a], byte 1
    jne short 0x1644
    mov ax, 0
    mov cx, 4
    shl ax, cl
    mov cx, ax
    push cx
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a0]
    sub ah, ah
    mov cx, 5
    shl ax, cl
    pop cx
    add cx, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x7b70]
    add ax, cx
    push ax
    lea ax, word [bp - 0x005c]
    push ax
    call 0xf32d
    add sp, byte 4
    lea ax, word [bp - 0x005c]
    push ax
    call api_idx_0004_2
    pop cx
    lea ax, word [bp - 0x005c]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x000c], ax
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x005c], 0x20
    lea cx, word [bp - 0x005b]
    add ax, cx
    push ax
    mov ax, 0xdc4
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x11
    push ax
    lea ax, word [bp - 0x005c]
    push ax
    call api_idx_000c
    add sp, byte 4
    push word [0x905a]
    call api_idx_0004
    pop cx
    mov al, byte [bp - 0x0002]
    mov cx, word [bp + 0x4]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + 0x1a1], al
    ret
loc_16d1:
    mov ax, 0
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0x64
    jae short 0x1712
    mov al, byte [bx + 0x5d6c]
    sub ah, ah
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    imul word [bp + 0x8]
    mov cx, ax
    pop ax
    sub ax, cx
    jg short 0x1712
    add bx, word [bp + 0x6]
    inc byte [bx + 0x5d6c]
    ret
api_idx_0006:
    mov ax, 0xfffa
    call 0xf40b
    mov word [bp - 0x0002], 1
    jmp near 0x17a0
    mov word [bp - 0x0004], 0
    jmp short 0x1794
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    mov word [bp - 0x0006], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x1a0], 1
    jne short 0x1791
    mov ax, 0x248
    imul word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x5d85]
    sub ah, ah
    push ax
    mov ax, 3
    imul word [0x830c]
    mov cx, ax
    pop ax
    sub ax, cx
    cmp ax, word [bp - 0x0006]
    jg short 0x1770
    mov al, byte [bx + 0x5d65]
    sub ah, ah
    cmp ax, word [bp - 0x0006]
    jle short 0x1791
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + 0x1a0], 0
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    push word [bp - 0x0004]
    call 0x16d1
    add sp, byte 6
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, word [0x69c8]
    jl short 0x1728
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x8466]
    jg short 0x17ac
    jmp near 0x1721
    ret
api_idx_0004_5:
    mov ax, 0xfffc
    call 0xf40b
    mov word [bp - 0x0004], 0xf
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x5b5a], 0
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x12
    jl short 0x17b8
    mov word [bp - 0x0002], 1
    jmp short 0x17fa
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov al, byte [bx + 0xd7]
    sub ah, ah
    push ax
    call api_idx_0004_3
    pop cx
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + 0x19f], al
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x8466]
    jle short 0x17d2
    mov word [bp - 0x0004], 0xf
    mov bx, word [bp - 0x0004]
    mov al, byte [bx + 0x5b48]
    sub ah, ah
    cmp ax, 0xff
    je short 0x1822
    cmp byte [bx + 0x5b5a], 0
    jne short 0x1822
    push bx
    call 0xc12a
    pop cx
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x12
    jl short 0x1808
    mov bx, word [0x8492]
    cmp byte [bx + 0xd8], 0
    jbe short 0x1843
    mov al, byte [bx + 0xd8]
    sub ah, ah
    push ax
    call 0xd7aa
    pop cx
    ret
api_idx_0014:
    mov ax, 0xffec
    call 0xf40b
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0002], 1
    jmp near 0x19e3
    push word [bp - 0x0002]
    call api_idx_005c
    pop cx
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x1a1], 0
    ja short 0x1873
    jmp near 0x19e0
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, word [bp - 0x0002]
    jne short 0x1881
    jmp near 0x18fc
    mov si, bx
    shl ax, 1
    mov bx, ax
    mov di, word [bx - 0x7b7e]
    mov cx, ds
    mov es, cx
    mov cx, 0xd2
    rep movsw
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov si, word [bx - 0x7b70]
    mov ax, word [bp - 0x0006]
    shl ax, 1
    mov bx, ax
    mov di, word [bx - 0x7b70]
    mov cx, ds
    mov es, cx
    mov cx, 0x74
    rep movsw
    mov word [bp - 0x0012], 0
    jmp short 0x18d9
    mov ax, 0x2c
    imul word [bp - 0x0012]
    mov si, ax
    mov bx, word [0x8482]
    mov al, byte [bx + si + 0x1f]
    sub ah, ah
    cmp ax, word [bp - 0x0002]
    jne short 0x18d6
    mov al, byte [bp - 0x0006]
    mov byte [bx + si + 0x1f], al
    inc word [bp - 0x0012]
    mov ax, word [bp - 0x0012]
    cmp ax, word [0x69c8]
    jl short 0x18ba
    push word [bp - 0x0006]
    call api_idx_000c_2
    pop cx
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + 0x1a1], 0
    jmp near 0x19e0
    mov word [bp - 0x0004], 0
    jmp near 0x19c7
    mov ax, 0x2c
    imul word [bp - 0x0004]
    mov si, ax
    mov ax, word [bp - 0x0006]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + si + 0x2a]
    cbw
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0xffff
    jne short 0x1926
    jmp near 0x19c4
    mov cx, 0xa
    cwd
    idiv cx
    mov word [bp - 0x000a], ax
    mov word [bp - 0x000c], dx
    mov cx, 6
    imul cx
    mov cx, word [bp - 0x000c]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5ec]
    mov cx, 0xa
    cwd
    idiv cx
    mov word [bp - 0x000e], ax
    mov word [bp - 0x0010], dx
    mov cx, 6
    imul cx
    mov cx, word [bp - 0x0010]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx - 0x7bc6], byte 0
    jne short 0x19c4
    mov ax, 6
    imul word [bp - 0x000a]
    mov cx, word [bp - 0x000c]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov word [bx - 0x7bc6], 0
    mov ax, 0xa
    imul word [bp - 0x0006]
    add ax, word [bp - 0x0004]
    push ax
    mov ax, 6
    imul word [bp - 0x000e]
    mov cx, ax
    mov dx, word [bp - 0x0010]
    shl dx, 1
    add ax, dx
    mov bx, ax
    pop ax
    mov word [bx - 0x7bc6], ax
    mov ax, 0xa
    imul word [bp - 0x000e]
    add ax, word [bp - 0x0010]
    mov cx, word [bp - 0x0006]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + si + 0x2a], al
    mov ax, 0xffff
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x0006]
    call api_idx_000a_2
    add sp, byte 8
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0006]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0004]
    jle short 0x19e0
    jmp near 0x1904
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x8466]
    jg short 0x19ef
    jmp near 0x1857
    mov ax, word [bp - 0x0006]
    mov word [0x8466], ax
    cmp word [0x8466], byte 0
    jne short 0x1a0f
    cmp word [0x905e], byte 8
    je short 0x1a09
    mov word [0x905e], 0xf
    mov word [0x845c], 1
    call api_idx_0004_5
    call api_idx_0006
    ret
loc_1a16:
    mov ax, 0xfd08
    call 0xf40b
    mov word [bp - 0x0002], 1
    jmp near 0x1c26
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x001c], 0
    mov word [bp - 0x0004], 0
    jmp near 0x1ada
    mov ax, 0x2c
    imul word [bp - 0x0004]
    mov si, ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + si + 0x22], 0
    je short 0x1a56
    jmp near 0x1ad7
    cmp byte [bx + si + 0x10], 0
    je short 0x1a5f
    jmp near 0x1ad7
    cmp byte [bx + si + 0x11], 0
    jne short 0x1ad7
    mov word [bp - 0x000c], 0
    mov word [bp - 0x000a], 0
    mov ax, 0x2c
    imul word [bp - 0x0004]
    add ax, word [bp - 0x000a]
    mov si, ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + si + 0xe], 0
    jbe short 0x1a9f
    mov ax, 0x2c
    imul word [bp - 0x0004]
    mov si, ax
    mov ax, word [bx + si + 0x2]
    mov cx, 4
    cwd
    idiv cx
    add word [bp - 0x000c], ax
    inc word [bp - 0x000a]
    mov ax, word [bp - 0x000a]
    cmp ax, strict word 0xa
    jl short 0x1a6f
    mov ax, 0x2c
    imul word [bp - 0x0004]
    mov si, ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov ax, word [bx + si + 0x2]
    cmp ax, word [bp - 0x000c]
    jle short 0x1ad7
    mov ax, word [bx + si + 0x2]
    sub ax, word [bp - 0x000c]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    add bx, bp
    add word [bx - 0x001c], ax
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0004]
    jle short 0x1af3
    jmp near 0x1a3a
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    cmp byte [bx + 0xae], 0
    jbe short 0x1b30
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x001c]
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov si, ax
    mov si, word [si - 0x7b70]
    mov al, byte [si + 0xae]
    sub ah, ah
    mov cx, 0xa
    cwd
    idiv cx
    mov cx, ax
    inc ax
    mov cx, ax
    pop ax
    cwd
    idiv cx
    mov word [bx - 0x001c], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    cmp byte [bx + 0xb0], 0
    jbe short 0x1b90
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x001c]
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov al, byte [bx + 0xb0]
    sub ah, ah
    mov cx, ax
    pop ax
    mov bx, cx
    imul bx
    mov cx, 0x64
    mov bx, 0
    call 0xf99f
    push ax
    push dx
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x001c]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    add ax, cx
    adc dx, bx
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x001c], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    cmp byte [bx + 0xb1], 0
    jbe short 0x1bf0
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x001c]
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov al, byte [bx + 0xb1]
    sub ah, ah
    mov cx, ax
    pop ax
    mov bx, cx
    imul bx
    mov cx, 0x64
    mov bx, 0
    call 0xf99f
    push ax
    push dx
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x001c]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    add ax, cx
    adc dx, bx
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x001c], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x19f], 0xff
    je short 0x1c23
    mov al, byte [bx + 0x19f]
    cbw
    mov cx, 0x15e
    imul cx
    mov bx, ax
    cmp byte [bx + 0x6b75], 0
    je short 0x1c23
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x001c], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x8466]
    jg short 0x1c32
    jmp near 0x1a24
    mov ax, word [0x8466]
    mov word [bp - 0x0002], ax
    jmp near 0x1eaa
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    push word [bx - 0x001c]
    call 0xb7a9
    pop cx
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    push word [bx - 0x001e]
    call 0xb7a9
    pop cx
    mov cx, ax
    pop ax
    cmp ax, cx
    jg short 0x1c66
    jmp near 0x1ea7
    mov ax, 1
    push ax
    call api_idx_000a
    pop cx
    mov ax, 1
    push ax
    call api_idx_0004
    pop cx
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x1a1], 1
    jne short 0x1c8d
    mov ax, 0
    jmp short 0x1c90
    mov ax, 1
    mov cx, 4
    shl ax, cl
    mov cx, ax
    push cx
    mov al, byte [bx + 0x1a0]
    sub ah, ah
    mov cx, 5
    shl ax, cl
    pop cx
    add cx, ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x7b70]
    add ax, cx
    push ax
    lea ax, word [bp - 0x006c]
    push ax
    call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x006c]
    push ax
    call api_idx_0004_2
    pop cx
    lea ax, word [bp - 0x006c]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x000a], ax
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x006c], 0x20
    lea cx, word [bp - 0x006b]
    add ax, cx
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x1a1], 1
    jne short 0x1cf6
    mov ax, 0xdb6
    jmp short 0x1cf9
    mov ax, 0xdb7
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x11
    push ax
    lea ax, word [bp - 0x006c]
    push ax
    call api_idx_000c
    add sp, byte 4
    mov word [bp - 0x0004], 0
    jmp short 0x1d5d
    mov ax, 0x2c
    imul word [bp - 0x0004]
    mov si, ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b80]
    cmp byte [bx + si + 0x2a], 0xff
    je short 0x1d5a
    mov al, byte [bx + si + 0x2a]
    cbw
    mov cx, 0xa
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    mov al, byte [bx + si + 0x2a]
    cbw
    cwd
    idiv cx
    mov word [bp - 0x0008], dx
    mov ax, 6
    imul word [bp - 0x0006]
    mov cx, word [bp - 0x0008]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov word [bx - 0x6f42], 1
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b80]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0004]
    jg short 0x1d15
    mov ax, 1
    push ax
    call api_idx_005a
    pop cx
    mov word [bp - 0x0004], 0
    jmp short 0x1dd9
    mov ax, 0x2c
    imul word [bp - 0x0004]
    mov si, ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b80]
    cmp byte [bx + si + 0x2a], 0xff
    je short 0x1dd6
    mov al, byte [bx + si + 0x2a]
    cbw
    mov cx, 0xa
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    mov al, byte [bx + si + 0x2a]
    cbw
    cwd
    idiv cx
    mov word [bp - 0x0008], dx
    mov ax, 6
    imul word [bp - 0x0006]
    mov cx, word [bp - 0x0008]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov word [bx - 0x7bc6], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b80]
    mov byte [bx + si + 0x2a], 0xff
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b80]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0004]
    jg short 0x1d82
    call 0x2cc7
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x001c]
    mov word [bp - 0x0006], ax
    mov ax, word [bx - 0x001e]
    mov word [bx - 0x001c], ax
    mov ax, word [bp - 0x0006]
    mov word [bx - 0x001e], ax
    mov ax, 0x1a4
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x7b80]
    push word [bx - 0x7b7e]
    call 0x374e
    add sp, byte 6
    mov ax, 0xe8
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x7b72]
    push word [bx - 0x7b70]
    call 0x374e
    add sp, byte 6
    mov word [bp - 0x000e], 0
    jmp short 0x1e87
    mov ax, 0x2c
    imul word [bp - 0x000e]
    mov si, ax
    mov bx, word [0x8482]
    mov al, byte [bx + si + 0x1f]
    sub ah, ah
    cmp ax, word [bp - 0x0002]
    jne short 0x1e65
    mov ax, word [bp - 0x0002]
    dec ax
    mov byte [bx + si + 0x1f], al
    jmp short 0x1e84
    mov ax, 0x2c
    imul word [bp - 0x000e]
    mov si, ax
    mov bx, word [0x8482]
    mov al, byte [bx + si + 0x1f]
    sub ah, ah
    mov cx, word [bp - 0x0002]
    dec cx
    cmp ax, cx
    jne short 0x1e84
    mov al, byte [bp - 0x0002]
    mov byte [bx + si + 0x1f], al
    inc word [bp - 0x000e]
    mov ax, word [bp - 0x000e]
    cmp ax, word [0x69c8]
    jl short 0x1e46
    call api_idx_0004_5
    mov ax, word [bp - 0x0002]
    dec ax
    push ax
    call api_idx_000c_2
    pop cx
    call api_idx_000c_3
    mov ax, 0
    push ax
    call api_idx_005a
    pop cx
    dec word [bp - 0x0002]
    cmp word [bp - 0x0002], byte 2
    jl short 0x1eb3
    jmp near 0x1c3b
    ret
loc_1eb4:
    mov ax, 0
    call 0xf40b
    mov ax, 0x2c
    imul word [bp + 0x4]
    mov si, ax
    mov bx, word [0x8482]
    mov ax, word [bx + si + 0x2]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov word [bx + 0x5c0c], ax
    mov bx, word [0x8482]
    mov ax, word [bx + si + 0x6]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov word [bx + 0x5c10], ax
    mov bx, word [0x8482]
    mov al, byte [bx + si + 0x22]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5e2f], al
    mov ax, 0xa
    push ax
    add bx, strict word 0x5d5a
    mov ax, bx
    push ax
    mov ax, word [0x8482]
    add ax, si
    add ax, strict word 0xe
    push ax
    call 0xfedc
    add sp, byte 6
    mov ax, 0x2c
    imul word [bp + 0x4]
    mov si, ax
    mov bx, word [0x8482]
    mov al, byte [bx + si + 0x23]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5e32], al
    ret
loc_1f39:
    mov ax, 0xfd84
    call 0xf40b
    mov word [bp - 0x0002], 0
    jmp short 0x1fad
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov bx, word [0x8482]
    cmp byte [bx + si + 0x22], 3
    jae short 0x1faa
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5e31]
    sub ah, ah
    push ax
    mov al, byte [bx + 0x5e30]
    sub ah, ah
    push ax
    push word [bp - 0x0002]
    mov ax, 0
    push ax
    call api_idx_000e
    add sp, byte 8
    cmp ax, strict word 1
    jne short 0x1faa
    push word [bp - 0x0002]
    call 0x1eb4
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call 0xcb3a
    add sp, byte 4
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5e2c]
    sub ah, ah
    add ax, strict word 8
    push ax
    call 0xb7e0
    pop cx
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x1f46
    mov word [bp - 0x0002], 0
    jmp short 0x1fc7
    push word [bp - 0x0002]
    call 0x1eb4
    pop cx
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x1fbd
    mov word [bp - 0x0002], 0
    jmp near 0x20b9
    mov ax, word [bp - 0x0002]
    inc ax
    mov word [bp - 0x0004], ax
    jmp near 0x20aa
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5e2f]
    push ax
    mov ax, 0x248
    imul word [bp - 0x0004]
    mov bx, ax
    mov cl, byte [bx + 0x5e2f]
    pop ax
    cmp al, cl
    ja short 0x2003
    jmp near 0x20a7
    mov ax, 0x248
    push ax
    add bx, strict word 0x5bf4
    mov ax, bx
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    add ax, 0x5bf4
    push ax
    call 0x374e
    add sp, byte 6
    mov ax, 0x2c
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0004]
    mov cx, ax
    mov ax, word [0x8482]
    add ax, cx
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov cx, ax
    mov ax, word [0x8482]
    add ax, cx
    push ax
    call 0x374e
    add sp, byte 6
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x750e]
    mov word [bp - 0x027a], ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x750e]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x750e], ax
    mov ax, word [bp - 0x027a]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x750e], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x69bc]
    mov word [bp - 0x027a], ax
    mov bx, cx
    mov ax, word [bx + 0x69bc]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx + 0x69bc], ax
    mov ax, word [bp - 0x027a]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    mov word [bx + 0x69bc], ax
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, word [0x69c8]
    jge short 0x20b6
    jmp near 0x1fe2
    inc word [bp - 0x0002]
    mov ax, word [0x69c8]
    dec ax
    cmp ax, word [bp - 0x0002]
    jle short 0x20c5
    jmp near 0x1fd8
    mov word [bp - 0x0004], 0
    mov word [bp - 0x027c], 0
    mov word [bp - 0x0002], 0
    jmp short 0x2104
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 2
    jb short 0x20e9
    inc word [bp - 0x0004]
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov bx, word [0x8482]
    cmp byte [bx + si + 0x2b], 2
    jne short 0x2101
    mov word [bp - 0x027c], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x20d7
    mov ax, word [bp - 0x0004]
    cmp ax, word [0x69c8]
    jne short 0x2124
    mov word [0x905e], 8
    mov word [0x845c], 1
    jmp short 0x2137
    cmp word [bp - 0x027c], byte 0
    jle short 0x2137
    mov word [0x905e], 0x17
    mov word [0x845c], 1
    ret
api_idx_000e_2:
    mov ax, 0xfff2
    call 0xf40b
    mov bx, word [bp + 0xe]
    mov byte [bx], 0
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x19f], 0xff
    jne short 0x2157
    ret
    mov al, byte [bx + 0x19f]
    cbw
    mov word [bp - 0x0002], ax
    mov word [bp - 0x000e], 0
    mov cx, 0x15e
    imul cx
    push ax
    mov ax, 3
    imul word [bp + 0x8]
    add ax, word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx - 0x7bd0]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6a1a]
    sub ah, ah
    mov word [bp - 0x0004], ax
    jmp near 0x2418
    mov ax, 0x2c
    imul word [bp + 0x6]
    mov si, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + si + 0x22], 2
    je short 0x21b3
    cmp byte [bx + si + 0x11], 0
    ja short 0x21b3
    cmp byte [bx + si + 0x10], 0
    jbe short 0x21f7
    mov ax, 0x5a
    imul word [bp + 0x8]
    push ax
    mov ax, 0x1e
    imul word [bp + 0xa]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 3
    imul word [bp - 0x0004]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx - 0x7cde]
    sub ah, ah
    mov word [bp - 0x0006], ax
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov cx, ax
    mov ax, word [bp - 0x0006]
    add cx, ax
    mov bx, cx
    mov al, byte [bx + 0x6a40]
    sub ah, ah
    mov word [bp - 0x0008], ax
    jmp near 0x23aa
    mov ax, 0x5a
    imul word [bp + 0x8]
    push ax
    mov ax, 0x1e
    imul word [bp + 0xa]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 3
    imul word [bp - 0x0004]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx - 0x7cdd]
    sub ah, ah
    mov word [bp - 0x0008], ax
    mov al, byte [bx - 0x7cdc]
    sub ah, ah
    mov word [bp - 0x000a], ax
    cmp word [bp + 0xc], byte 0
    je short 0x2232
    dec word [bp - 0x000a]
    cmp word [bp - 0x000a], byte 0
    jle short 0x223b
    jmp near 0x2383
    mov al, byte [bx - 0x7cde]
    sub ah, ah
    mov word [bp - 0x0006], ax
    inc word [bp - 0x0008]
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov cx, ax
    mov ax, word [bp - 0x0006]
    add cx, ax
    mov bx, cx
    mov al, byte [bx + 0x6a40]
    sub ah, ah
    push ax
    mov al, byte [bx + 0x6a4a]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    dec ax
    cmp ax, word [bp - 0x0008]
    jl short 0x2271
    jmp near 0x2320
    mov ax, 3
    imul word [bp + 0x8]
    add ax, word [bp + 0xa]
    mov bx, ax
    cmp byte [bx - 0x7bd0], 0
    je short 0x22b5
    mov byte [bx - 0x7bd0], 0
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x4]
    call api_idx_000a_2
    add sp, byte 8
    push word [bp + 0xe]
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_000e_2
    add sp, byte 0x0c
    ret
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x6a2c]
    sub ah, ah
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x6a22]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0006], ax
    mov al, byte [bp - 0x0006]
    push ax
    mov ax, 0x5a
    imul word [bp + 0x8]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 0xa]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 0x0004]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx - 0x7cde], al
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x6a40]
    sub ah, ah
    mov word [bp - 0x0008], ax
    mov al, byte [bp - 0x0008]
    push ax
    mov ax, 0x5a
    imul word [bp + 0x8]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 0xa]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 0x0004]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx - 0x7cdd], al
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0008]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6ac2]
    sub ah, ah
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0008]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6ac1]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x000a], ax
    mov al, byte [bp - 0x000a]
    push ax
    mov ax, 0x5a
    imul word [bp + 0x8]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 0xa]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 0x0004]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx - 0x7cdc], al
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0008]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6ac0]
    mov bx, word [bp + 0xe]
    mov si, word [bp - 0x000e]
    mov byte [bx + si], al
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x19e], 0x79
    je short 0x23e4
    mov al, byte [bx + 0x19e]
    sub ah, ah
    cmp ax, 0x8d
    jne short 0x2407
    inc word [bp - 0x000e]
    mov bx, word [bp + 0xe]
    mov si, word [bp - 0x000e]
    mov al, byte [bx + si - 0x0001]
    mov byte [bx + si], al
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x6b76]
    mov bx, word [bp + 0xe]
    mov si, word [bp - 0x000e]
    mov byte [bx + si - 0x0001], al
    mov bx, word [bp + 0xe]
    mov si, word [bp - 0x000e]
    cmp byte [bx + si], 0
    je short 0x2415
    inc word [bp - 0x000e]
    inc word [bp - 0x0004]
    mov ax, 0x15e
    imul word [bp - 0x0002]
    push ax
    mov ax, 3
    imul word [bp + 0x8]
    add ax, word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx - 0x7bd0]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6a1a]
    sub ah, ah
    push ax
    mov al, byte [bx + 0x6a1e]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    cmp ax, word [bp - 0x0004]
    jle short 0x2451
    jmp near 0x218e
    mov bx, word [bp + 0xe]
    mov si, word [bp - 0x000e]
    mov byte [bx + si], 0
    ret
api_idx_0004_6:
    mov ax, 0xfffc
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x8468]
    jge short 0x2486
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b96]
    mov al, byte [bx + 0x14]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jg short 0x2486
    inc word [bp - 0x0002]
    jmp short 0x2466
    mov ax, word [0x8468]
    mov word [bp - 0x0004], ax
    jmp short 0x24a9
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov si, word [bx - 0x7b98]
    mov di, word [bx - 0x7b96]
    mov cx, ds
    mov es, cx
    mov cx, 0xc
    rep movsw
    dec word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jg short 0x248e
    cmp word [bp - 0x0002], byte 0x0c
    jl short 0x24c1
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp short 0x24b7
    mov al, byte [bp + 0x4]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b96]
    mov byte [bx + 0x14], al
    mov al, byte [bp + 0x6]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b96]
    mov byte [bx + 0x15], al
    mov ax, word [bp + 0x8]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b96]
    mov word [bx], ax
    mov ax, word [bp + 0xa]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b96]
    mov word [bx + 0x2], ax
    mov ax, word [bp + 0xc]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b96]
    mov word [bx + 0x4], ax
    mov ax, word [bp + 0xe]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b96]
    mov word [bx + 0x6], ax
    mov al, byte [bp + 0x10]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b96]
    mov byte [bx + 0x16], al
    mov al, byte [bp + 0x12]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b96]
    mov byte [bx + 0x17], al
    push word [bp + 0x14]
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x7b96]
    add ax, strict word 8
    push ax
    call 0xf364
    add sp, byte 4
    inc word [0x8468]
    ret
api_idx_001c:
    mov ax, 0xffe4
    call 0xf40b
    mov byte [bp - 0x001c], 0
    mov ax, 6
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx - 0x7bc6]
    mov cx, 0xa
    cwd
    idiv cx
    mov word [bp - 0x0002], ax
    mov word [bp - 0x0004], dx
    cmp ax, strict word 1
    jl short 0x25a1
    cmp ax, strict word 3
    jg short 0x25a1
    mov ax, word [bp + 0x4]
    cmp ax, word [0x8454]
    jle short 0x25a2
    ret
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x19f], 0xff
    jne short 0x25b5
    ret
    mov al, byte [bx + 0x19f]
    cbw
    mov word [bp - 0x0006], ax
    lea ax, word [bp - 0x001c]
    push ax
    push word [bp + 0x10]
    push word [bp + 0x6]
    push word [bp + 0x4]
    push dx
    push word [bp - 0x0002]
    call api_idx_000e_2
    add sp, byte 0x0c
    cmp byte [bp - 0x001c], 0
    jne short 0x25db
    ret
    mov ax, word [bp + 0x6]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x0008], dx
    mov al, byte [bp - 0x001c]
    sub ah, ah
    mov word [bp - 0x000a], ax
    mov ax, 0x15e
    imul word [bp - 0x0006]
    mov bx, ax
    cmp byte [bx + 0x6b75], 0
    je short 0x2603
    mov word [bp + 0x8], 0
    mov cx, word [bp - 0x000a]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6abf]
    sub ah, ah
    mov word [bp - 0x000c], ax
    cmp word [bp - 0x000c], byte 0
    jne short 0x2638
    mov ax, 6
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5b6]
    sub ax, word [bp - 0x0002]
    mov word [bp - 0x000c], ax
    jmp short 0x2665
    mov ax, 0x64
    push ax
    mov ax, 5
    push ax
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0
    cmp word [bp + 0x6], byte 0
    jne short 0x2654
    mov ax, 5
    add cx, ax
    mov ax, word [bp - 0x000c]
    sub ax, cx
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x000c], ax
    mov ax, word [bp + 0xe]
    dec ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x15e
    imul word [bp - 0x0006]
    push ax
    mov ax, word [bp - 0x0008]
    mov cx, 2
    cwd
    idiv cx
    mov cx, dx
    pop ax
    add ax, cx
    mov cx, word [bp - 0x000a]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6a52]
    sub ah, ah
    push ax
    mov ax, 0x15e
    imul word [bp - 0x0006]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6b60]
    cbw
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x000e], ax
    mov ax, 0x15e
    imul word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    mov bx, ax
    mov al, byte [bx + 0x6a9b]
    sub ah, ah
    push ax
    mov ax, 0x15e
    imul word [bp - 0x0006]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6b61]
    cbw
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0010], ax
    cmp word [0x8466], byte 1
    jne short 0x2701
    mov bx, word [0x8484]
    cmp byte [bx + 0x1a1], 1
    jne short 0x2701
    cmp word [bp + 0x4], byte 0
    jne short 0x2701
    mov word [bp + 0xa], 0
    mov ax, 0xa0
    sub ax, word [bp - 0x000e]
    imul word [bp + 0xa]
    mov cx, 0x64
    cwd
    idiv cx
    add word [bp - 0x000e], ax
    mov ax, word [bp - 0x0008]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short 0x275d
    mov ax, 0x15e
    imul word [bp - 0x0006]
    mov cx, ax
    mov ax, word [bp - 0x0008]
    mov bx, 2
    cwd
    idiv bx
    mov ax, dx
    add cx, ax
    mov ax, cx
    mov cx, word [bp - 0x000a]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6a52]
    sub ah, ah
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    shl ax, 1
    imul word [bp + 0xa]
    mov cx, 0x64
    cwd
    idiv cx
    sub word [bp - 0x000e], ax
    mov ax, word [bp + 0xe]
    dec ax
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x000e]
    add ax, word [bp + 0x8]
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x000e], ax
    mov ax, 0x3d
    sub ax, word [bp - 0x0010]
    imul word [bp + 0xa]
    mov cx, 0x64
    cwd
    idiv cx
    add word [bp - 0x0010], ax
    lea ax, word [bp - 0x001c]
    push ax
    push word [bp + 0xa]
    push word [bp - 0x0008]
    push word [bp + 0xe]
    push word [bp + 0xc]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x0006]
    push word [bp - 0x000c]
    call api_idx_0004_6
    add sp, byte 0x12
    ret
api_idx_000e_3:
    mov ax, 0xfff2
    call 0xf40b
    cmp word [0x8f20], byte 0
    jg short 0x27bb
    jmp near 0x2865
    mov ax, word [0x82ee]
    mov cx, word [0x8f20]
    dec cx
    sub ax, cx
    add ax, strict word 6
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    mov ax, dx
    jmp short 0x2810
    mov byte [bp - 0x000e], 1
    mov byte [bp - 0x000d], 2
    mov ax, 5
    cmp word [bp - 0x0002], byte 0
    jne short 0x27e9
    mov ax, 4
    mov byte [bp - 0x000c], al
    mov byte [bp - 0x000b], 0
    mov word [bp - 0x0004], 0
    jmp short 0x2824
    mov byte [bp - 0x000e], 3
    mov byte [bp - 0x000d], 0
    mov ax, 0
    cmp word [bp - 0x0002], byte 3
    jne short 0x280b
    mov ax, 1
    mov word [bp - 0x0004], ax
    jmp short 0x2824
    cmp ax, strict word 0
    je short 0x27d5
    cmp ax, strict word 1
    je short 0x27f7
    cmp ax, strict word 2
    je short 0x27d5
    cmp ax, strict word 3
    je short 0x27f7
    lea ax, word [bp - 0x000e]
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0004]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov al, byte [bp - 0x000e]
    sub ah, ah
    mov bx, ax
    mov al, byte [bx + 0x6eb5]
    sub ah, ah
    inc ax
    push ax
    shl bx, 1
    mov ax, bx
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x6e6c]
    sub ah, ah
    inc ax
    push ax
    mov ax, 3
    push ax
    mov ax, 0x1b
    push ax
    call api_idx_0004_6
    add sp, byte 0x12
    cmp word [0x8f20], byte 0xff
    jne short 0x289f
    mov byte [bp - 0x000e], 1
    mov byte [bp - 0x000d], 0
    lea ax, word [bp - 0x000e]
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov al, byte [0x7b04]
    sub ah, ah
    push ax
    mov al, byte [0x7abc]
    sub ah, ah
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0x1c
    push ax
    call api_idx_0004_6
    add sp, byte 0x12
    ret
loc_28a0:
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b96]
    mov al, byte [bx + 0x14]
    sub ah, ah
    cmp ax, 0xff
    je short 0x28fb
    mov al, byte [bx + 0x17]
    sub ah, ah
    push ax
    mov ax, 0
    push ax
    add bx, byte 8
    mov ax, bx
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b96]
    mov al, byte [bx + 0x16]
    sub ah, ah
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x21
    push ax
    push word [bx + 0x6]
    push word [bx + 0x4]
    push word [bx + 0x2]
    push word [bx]
    mov al, byte [bx + 0x15]
    sub ah, ah
    push ax
    call 0xefd1
    add sp, byte 0x16
    ret
api_idx_0002:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, word [bp + 0x4]
    cmp ax, word [0x8466]
    jle short 0x290f
    mov ax, 0xffff
    ret
    mov word [bp - 0x0002], 0
    jmp short 0x2982
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + si + 0x2a], 0xff
    jne short 0x297f
    mov ax, 6
    imul word [bp + 0x6]
    mov cx, word [bp + 0x8]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov word [bx - 0x6f42], 1
    mov ax, 0xa
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov word [bx - 0x7bc6], ax
    mov ax, 0xa
    imul word [bp + 0x6]
    add ax, word [bp + 0x8]
    mov cx, word [bp + 0x4]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + si + 0x2a], al
    mov ax, 0xffff
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_000a_2
    add sp, byte 8
    mov ax, 0
    ret
    inc word [bp - 0x0002]
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0002]
    jle short 0x299b
    jmp near 0x2916
    mov ax, 0xffff
    ret
loc_299f:
    mov ax, 0
    call 0xf40b
    jmp short 0x29be
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0002
    add sp, byte 6
    test ax, ax
    jne short 0x29bb
    ret
    inc word [bp + 0x4]
    cmp word [bp + 0x4], byte 3
    jle short 0x29a7
    ret
api_idx_000c_3:
    mov ax, 0xfff4
    call 0xf40b
    mov word [bp - 0x0002], 0
    jmp near 0x2b0c
    mov word [bp - 0x0006], 0
    mov ax, 6
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0006]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov word [bx - 0x6f42], 0
    mov bx, cx
    add bx, bp
    mov word [bx - 0x000c], 0
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 3
    jl short 0x29d8
    mov word [bp - 0x0006], 0
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    mov word [bp - 0x0004], ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x000c], byte 1
    je short 0x2a06
    cmp word [bp - 0x000c], byte 0
    jne short 0x2a38
    cmp word [0x90ba], byte 1
    je short 0x2a33
    cmp word [bp - 0x0002], byte 0
    jne short 0x2a38
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x000c], 1
    mov ax, 6
    imul word [bp - 0x0002]
    mov cx, ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    add cx, ax
    mov bx, cx
    cmp word [bx - 0x7bc6], byte 0
    je short 0x2a61
    jmp near 0x2afb
    mov ax, word [bp - 0x0002]
    jmp near 0x2ae9
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    mov ax, 1
    push ax
    call 0x299f
    add sp, byte 6
    jmp near 0x2afb
    cmp word [0x8466], byte 1
    jne short 0x2a93
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    mov ax, 1
    push ax
    call 0x299f
    add sp, byte 6
    jmp short 0x2aa3
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    mov ax, 2
    push ax
    call 0x299f
    add sp, byte 6
    jmp short 0x2afb
    cmp word [0x8466], byte 1
    jne short 0x2abe
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    mov ax, 1
    push ax
    call 0x299f
    add sp, byte 6
    jmp short 0x2ae7
    cmp word [0x8466], byte 2
    jne short 0x2ad7
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    mov ax, 2
    push ax
    call 0x299f
    add sp, byte 6
    jmp short 0x2ae7
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    mov ax, 3
    push ax
    call 0x299f
    add sp, byte 6
    jmp short 0x2afb
    cmp ax, strict word 0
    jne short 0x2af1
    jmp near 0x2a67
    cmp ax, strict word 1
    je short 0x2a7a
    cmp ax, strict word 2
    je short 0x2aa5
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 3
    jge short 0x2b09
    jmp near 0x2a06
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x8454]
    jg short 0x2b18
    jmp near 0x29d3
    ret
loc_2b19:
    mov ax, 0
    call 0xf40b
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x9090], dx
    mov word [0x908e], ax
    mov ax, word [0x908e]
    mov dx, word [0x9090]
    sub ax, word [0x908a]
    sbb dx, word [0x908c]
    mov word [0x9094], dx
    mov word [0x9092], ax
    mov ax, word [0x90b6]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [0x9092]
    mov dx, word [0x9094]
    cmp bx, dx
    jg short 0x2b60
    jne short 0x2b62
    cmp cx, ax
    jbe short 0x2b62
    jmp short 0x2b74
    mov ax, word [0x908e]
    mov dx, word [0x9090]
    mov word [0x908c], dx
    mov word [0x908a], ax
    mov ax, 1
    ret
    mov ax, 0
    ret
api_idx_0006_2:
    mov ax, 0xfffa
    call 0xf40b
    mov ax, word [0x845e]
    jmp near 0x2c9a
    mov ax, 0x8f
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0x48
    push ax
    call 0xe8da
    add sp, byte 8
    jmp near 0x2cb4
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    sub ax, word [0x908a]
    sbb dx, word [0x908c]
    push ax
    push dx
    mov ax, word [0x90b6]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    cmp dx, bx
    jl short 0x2bc6
    jne short 0x2bc8
    cmp ax, cx
    jae short 0x2bc8
    jmp short 0x2bd6
    mov ax, word [0x906c]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [0x906c], dx
    mov ax, 0
    push ax
    push ax
    mov ax, word [0x906c]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx - 0x6f9e]
    push word [bx - 0x6fa0]
    call 0xe942
    add sp, byte 8
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b96]
    mov byte [bx + 0x14], 0xff
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xc
    jl short 0x2bf7
    mov word [0x8468], 0
    jmp near 0x2cb4
    call 0x2b19
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    push word [bp - 0x0006]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov cx, word [bx + 0x580]
    mov ax, 0x64
    sub ax, cx
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    call api_idx_001c
    add sp, byte 0x0e
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jl short 0x2c2a
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 3
    jl short 0x2c25
    call api_idx_000e_3
    cmp word [bp - 0x0006], byte 0
    je short 0x2c8b
    mov ax, word [0x82e8]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [0x82e8], dx
    call 0xda22
    jmp short 0x2cb4
    push word [0x845e]
    call 0x28a0
    pop cx
    jmp short 0x2cb4
    cmp ax, strict word 0xfffd
    jne short 0x2ca2
    jmp near 0x2b84
    cmp ax, strict word 0xfffe
    jne short 0x2caa
    jmp near 0x2b9d
    cmp ax, strict word 0xffff
    jne short 0x2cb2
    jmp near 0x2c1a
    jmp short 0x2c90
    inc word [0x845e]
    mov ax, word [0x845e]
    cmp ax, strict word 0xc
    jne short 0x2cc6
    mov word [0x845e], 0xfffd
    ret
loc_2cc7:
    mov ax, 0
    call 0xf40b
    mov word [0x845e], 0xfffe
    call api_idx_0006_2
    cmp word [0x845e], byte 0xfe
    jne short 0x2cd3
    ret
api_idx_005a:
    mov ax, 0xffa6
    call 0xf40b
    cmp word [0x90b8], byte 0
    je short 0x2d07
    lea ax, word [bp - 0x005a]
    push ax
    mov ax, 0x7e9
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x005a]
    push ax
    call api_idx_0008_2
    add sp, byte 4
    mov word [bp - 0x000a], 0
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    mov word [bp - 0x0002], 0
    cmp word [bp + 0x4], byte 0
    jne short 0x2d42
    cmp word [bp - 0x0002], byte 1
    jne short 0x2d42
    mov bx, word [0x8492]
    cmp byte [bx + 0xd8], 0
    jbe short 0x2d42
    mov ax, 0x10
    push ax
    call 0xb7e0
    pop cx
    mov word [0x845e], 0xfffe
    call api_idx_0006_2
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0006], 0
    mov ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    cmp ax, strict word 1
    je short 0x2d6b
    cmp word [bp - 0x0006], byte 0
    jne short 0x2d88
    mov ax, word [bp + 0x4]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov cx, word [bp - 0x0002]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov cx, word [bx + 0x5fe]
    mov ax, 0
    sub ax, cx
    jmp short 0x2d9e
    mov ax, word [bp + 0x4]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov cx, word [bp - 0x0002]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5fe]
    mov word [bp - 0x0008], ax
    cmp word [bp - 0x0004], byte 0
    jne short 0x2db9
    cmp word [bp - 0x0006], byte 0
    jne short 0x2db9
    cmp word [0x90ba], byte 1
    jne short 0x2db9
    mov word [bp - 0x0008], 0
    push word [bp - 0x000a]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 6
    imul word [bp - 0x0004]
    mov cx, word [bp - 0x0006]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov cx, word [bx + 0x580]
    mov ax, 0x64
    sub ax, cx
    push ax
    mov ax, 0
    cmp word [bx - 0x6f42], byte 1
    jne short 0x2dea
    mov ax, word [bp - 0x0008]
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    call api_idx_001c
    add sp, byte 0x0e
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 3
    jge short 0x2e05
    jmp near 0x2d55
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jge short 0x2e13
    jmp near 0x2d50
    call api_idx_000e_3
    call 0xda22
    mov word [0x845e], 0
    call api_idx_0006_2
    cmp word [0x845e], byte 0xfe
    jne short 0x2e1f
    call 0x2b19
    mov word [bp - 0x000a], ax
    cmp word [bp - 0x000a], byte 0
    je short 0x2e4e
    mov ax, word [0x906c]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [0x906c], dx
    mov ax, word [0x82e8]
    inc ax
    cwd
    idiv cx
    mov word [0x82e8], dx
    cmp word [bp - 0x000a], byte 0
    jne short 0x2e57
    jmp near 0x2d42
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jge short 0x2e65
    jmp near 0x2d23
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0006], 0
    mov ax, 6
    imul word [bp - 0x0004]
    mov cx, word [bp - 0x0006]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov word [bx - 0x6f42], 0
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 3
    jl short 0x2e6f
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jl short 0x2e6a
    mov word [0x90ba], 0
    cmp word [0x90b8], byte 0
    je short 0x2ec3
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x37
    push ax
    call 0xe8da
    add sp, byte 8
    mov word [0x90b8], 0
    ret
api_idx_0004_7:
    mov ax, 0xfffc
    call 0xf40b
    mov ax, 1
    push ax
    call 0xef14
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x9066]
    push word [0x9064]
    call 0xe942
    add sp, byte 8
    mov ax, 0x90a4
    push ax
    mov ax, 0x8f
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [0x9068], ax
    mov word [0x906a], 1
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x9062]
    push word [0x9060]
    call 0xe942
    add sp, byte 8
    mov ax, 0xc
    push ax
    call 0xc12a
    pop cx
    mov ax, 7
    push ax
    call 0xc12a
    pop cx
    mov ax, 5
    push ax
    call 0xd6c6
    pop cx
    mov ax, 6
    push ax
    call 0xd6c6
    pop cx
    mov ax, 7
    push ax
    call 0xd6c6
    pop cx
    mov ax, 0xa
    push ax
    call 0xd6c6
    pop cx
    mov ax, 0xb
    push ax
    call 0xd6c6
    pop cx
    mov ax, 0xc
    push ax
    call 0xd6c6
    pop cx
    cmp word [0x598e], byte 0xff
    je short 0x2f76
    mov ax, 0x10
    push ax
    call 0xd6c6
    pop cx
    mov word [0x598e], 0xffff
    mov ax, 0
    push ax
    call api_idx_000a
    pop cx
    mov ax, 1
    push ax
    call 0xc12a
    pop cx
    mov ax, 2
    push ax
    call 0xc12a
    pop cx
    mov ax, 1
    push ax
    push word [0x8d0c]
    push word [0x8d0a]
    call 0xe94f
    add sp, byte 6
    mov ax, 1
    push ax
    push word [0x8d10]
    push word [0x8d0e]
    call 0xe94f
    add sp, byte 6
    cmp word [0x905e], byte 0x17
    jne short 0x2fcf
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x37
    push ax
    call 0xbb33
    add sp, byte 8
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x7b70]
    call 0xf5a1
    pop cx
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x7b7e]
    call 0xf5a1
    pop cx
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short 0x2fd4
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x7b96]
    call 0xf5a1
    pop cx
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xc
    jl short 0x3002
    mov word [bp - 0x0004], 0xf
    mov bx, word [bp - 0x0004]
    mov al, byte [bx + 0x5b48]
    sub ah, ah
    cmp ax, 0xff
    je short 0x3034
    push bx
    call 0xc12a
    pop cx
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x12
    jl short 0x3021
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 5
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 7
    push ax
    call 0xd61c
    add sp, byte 4
    ret
api_idx_0008_4:
    mov ax, 0xfff8
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov si, word [bp - 0x0004]
    mov al, byte [bx + si + 0x18c]
    sub ah, ah
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short 0x3099
    jmp near 0x3134
    mov ax, si
    jmp short 0x30f6
    mov ax, word [bp - 0x0008]
    mov cx, 0xa
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    jmp short 0x3103
    mov ax, word [bp - 0x0008]
    mov cx, 0xa
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    jmp short 0x3103
    mov ax, word [bp - 0x0008]
    mov cx, 0xc
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    jmp short 0x3103
    mov ax, word [bp - 0x0008]
    mov cx, 0xc
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    jmp short 0x3103
    mov ax, word [bp - 0x0008]
    mov cx, 0x14
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    jmp short 0x3103
    mov word [bp - 0x0006], 1
    jmp short 0x3103
    in al, 0x80
    db 0xf2, 0x80, 0x00, 0x81 ; add byte ptr [bx + si], 0x81
    push cs
    sbb word [si], strict word 0x2a81
    cmp word [di], 6
    jae short 0x3103
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7ecf]
    cmp word [bp - 0x0006], byte 1
    jge short 0x310e
    mov word [bp - 0x0006], 1
    mov ax, word [bp - 0x0006]
    sub word [bp - 0x0008], ax
    cmp word [bp - 0x0008], byte 0
    jge short 0x311f
    mov word [bp - 0x0008], 0
    mov al, byte [bp - 0x0008]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b7e]
    mov si, word [bp - 0x0004]
    mov byte [bx + si + 0x18c], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 6
    jge short 0x3142
    jmp near 0x307a
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov si, word [bp - 0x0004]
    cmp byte [bx + si + 0x192], 0
    jbe short 0x3160
    dec byte [bx + si + 0x192]
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 6
    jl short 0x3147
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jge short 0x3179
    jmp near 0x3075
    cmp word [0x82fa], byte 0
    jle short 0x318d
    mov bx, word [0x8482]
    mov al, byte [bx + 0x190]
    sub ah, ah
    mov word [0x82fc], ax
    cmp word [0x82fc], byte 0
    jg short 0x31a0
    mov word [0x82fa], 0
    mov word [0x82fc], 0
    ret
api_idx_0056:
    mov ax, 0xffaa
    call 0xf40b
    call 0x1f39
    call api_idx_0014
    mov ax, 6
    push ax
    call api_idx_005c
    pop cx
    call api_idx_0008_4
    mov word [bp - 0x0002], 0
    jmp short 0x31e3
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov bx, word [0x8482]
    cmp byte [bx + si + 0x1f], 1
    jb short 0x31dc
    mov al, byte [bx + si + 0x1f]
    sub ah, ah
    cmp ax, word [0x8466]
    jle short 0x31e0
    mov byte [bx + si + 0x1f], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x31bf
    mov ax, 1
    push ax
    call api_idx_000a
    pop cx
    cmp word [0x845c], byte 1
    je short 0x31fe
    jmp near 0x3315
    mov word [bp - 0x0002], 0
    jmp near 0x32fe
    cmp word [0x905e], byte 0x0f
    je short 0x3210
    jmp near 0x32e7
    cmp word [0x8458], byte 1
    je short 0x321a
    jmp near 0x32e7
    cmp word [0x0e36], strict word 0xe1
    je short 0x3225
    jmp near 0x32e7
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov bx, word [0x8482]
    mov byte [bx + si + 0x22], 0
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov bx, word [0x8482]
    mov ax, word [bx + si + 0x8]
    mov word [bx + si + 0x6], ax
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov bx, word [0x8482]
    mov ax, word [bx + si + 0x4]
    mov word [bx + si + 0x2], ax
    mov word [bp - 0x0004], 0
    mov ax, 0x2c
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov si, ax
    mov bx, word [0x8482]
    mov byte [bx + si + 0xe], 0
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0xa
    jl short 0x325e
    mov ax, 0x248
    imul word [bp - 0x0002]
    add ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x0056]
    push ax
    call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x0056]
    push ax
    call api_idx_0004_2
    pop cx
    lea ax, word [bp - 0x0056]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x0006], ax
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x0056], 0x20
    lea cx, word [bp - 0x0055]
    add ax, cx
    push ax
    mov ax, 0xdc6
    push ax
    call 0xb53b
    add sp, byte 4
    push word [bp - 0x0002]
    call 0x1eb4
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call 0xcb3a
    add sp, byte 4
    mov ax, 0xa
    push ax
    lea ax, word [bp - 0x0056]
    push ax
    call api_idx_000c
    add sp, byte 4
    push word [0x905a]
    call api_idx_0004
    pop cx
    jmp short 0x32fb
    push word [bp - 0x0002]
    call 0x1eb4
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call 0xcb3a
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jge short 0x330a
    jmp near 0x3206
    call api_idx_0004_7
    mov ax, word [0x905e]
    mov word [0x830a], ax
    jmp short 0x331b
    mov word [0x830a], 0xb
    ret
loc_331c:
    mov ax, 0xfe5a
    call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x843a
    push ax
    call 0xf306
    add sp, byte 6
    mov word [bp - 0x0002], 0
    mov ax, 0
    push ax
    mov ax, 0x1a4
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x7b7e]
    call 0xf306
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short 0x3339
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + 0x1a1], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short 0x3362
    mov word [0x8466], 0
    mov word [0x845c], 0
    mov word [0x845e], 0xfffe
    ret
api_idx_0004_8:
    mov ax, 0xfffc
    call 0xf40b
    mov word [0x84a4], 0
    mov word [0x84a2], 0
    cmp word [0x0e36], strict word 0xe1
    jne short 0x33b0
    mov word [0x845a], 1
    call 0x331c
    mov ax, 1
    push ax
    push word [0x0e36]
    call api_idx_0008_3
    add sp, byte 4
    mov bx, word [0x8492]
    mov si, word [0x8452]
    mov al, byte [bx + si + 0xa8]
    sub ah, ah
    mov word [0x84a0], ax
    mov word [0x849e], 0xffff
    call api_idx_0006
    call api_idx_0004_4
    ret
loc_33df:
    mov ax, 0xfd06
    call 0xf40b
    mov word [0x90bc], 1
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    push word [0x8456]
    call 0xb7c2
    add sp, byte 6
    mov word [0x8454], ax
    mov word [0x8458], 0
    cmp word [0x82b6], byte 0xff
    je short 0x341e
    call 0xef83
    test ax, ax
    je short 0x3416
    jmp short 0x340d
    mov ax, 0
    push ax
    call 0xd907
    pop cx
    call 0xc145
    mov ax, 0
    push ax
    call 0xc12a
    pop cx
    mov ax, 4
    push ax
    call 0xc12a
    pop cx
    mov ax, 6
    push ax
    call 0xc12a
    pop cx
    mov ax, 1
    push ax
    mov ax, 5
    push ax
    push ax
    call 0xd6dc
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 6
    push ax
    push ax
    call 0xd6dc
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 7
    push ax
    push ax
    call 0xd6dc
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 0xa
    push ax
    push ax
    call 0xd6dc
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 0xb
    push ax
    push ax
    call 0xd6dc
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    push ax
    call 0xd6dc
    add sp, byte 6
    mov ax, 7
    push ax
    mov ax, 9
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 0xc
    push ax
    mov ax, 0x52
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x8f
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0x9062], dx
    mov word [0x9060], ax
    cmp word [0x906a], byte 0
    je short 0x34ef
    mov ax, 1
    push ax
    push word [0x9068]
    call 0xc459
    add sp, byte 4
    mov word [0x906a], 0
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x8f
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0x9066], dx
    mov word [0x9064], ax
    mov word [bp - 0x0002], 0
    mov ax, 0xe8
    push ax
    call 0xf4a3
    pop cx
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x7b70], ax
    mov ax, 0x1a4
    push ax
    call 0xf4a3
    pop cx
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x7b7e], ax
    cmp word [bx - 0x7b70], byte 0
    je short 0x354d
    cmp word [bx - 0x7b7e], byte 0
    jne short 0x3555
    mov ax, 0x1d
    push ax
    call 0xb171
    pop cx
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short 0x3519
    mov word [bp - 0x0002], 0
    mov ax, 0x18
    push ax
    call 0xf4a3
    pop cx
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x7b96], ax
    cmp word [bx - 0x7b96], byte 0
    jne short 0x3587
    mov ax, 0x1d
    push ax
    call 0xb171
    pop cx
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b96]
    mov byte [bx + 0x14], 0xff
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xc
    jl short 0x3565
    mov word [bp - 0x0002], 0xf
    mov bx, word [bp - 0x0002]
    mov byte [bx + 0x5b48], 0xff
    mov byte [bx + 0x5b5a], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x12
    jl short 0x35a6
    mov ax, 0xc6
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 8
    push ax
    call 0xe928
    add sp, byte 8
    mov word [0x8d10], dx
    mov word [0x8d0e], ax
    mov ax, 0xa4
    push ax
    mov ax, 0xff
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x41
    push ax
    call 0xe928
    add sp, byte 8
    mov word [0x8d0c], dx
    mov word [0x8d0a], ax
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, 3
    push ax
    call 0xd61c
    add sp, byte 4
    mov ax, 0
    push ax
    call api_idx_000a
    pop cx
    call api_idx_0004_8
    mov ax, 1
    cmp word [0x905e], byte 0x12
    jne short 0x362c
    mov ax, 0
    mov word [0x90b8], ax
    mov ax, 0
    cmp word [0x905e], byte 0x12
    jne short 0x363c
    mov ax, 1
    mov word [0x90ba], ax
    cmp word [0x905e], byte 0x12
    jne short 0x369c
    cmp word [0x8466], byte 1
    jle short 0x369c
    mov ax, 1
    push ax
    call api_idx_000a
    pop cx
    mov ax, 1
    push ax
    call 0xb75e
    pop cx
    push word [0x8492]
    lea ax, word [bp - 0x0056]
    push ax
    call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x0056]
    push ax
    call api_idx_0004_2
    pop cx
    lea ax, word [bp - 0x0056]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x0004], ax
    lea cx, word [bp - 0x0056]
    add ax, cx
    push ax
    mov ax, 0xdb8
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x11
    push ax
    lea ax, word [bp - 0x0056]
    push ax
    call api_idx_000c
    add sp, byte 4
    call 0x1f39
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    mov word [0x830a], 0xb
    ret
api_idx_0002_2:
    mov ax, 0xfffe
    call 0xf40b
    mov word [0x90b6], 5
    mov word [bp - 0x0002], 0
    jmp short 0x36e2
    push word [bp - 0x0002]
    call 0x1eb4
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call api_idx_0008
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x36cb
    call api_idx_000c_3
    mov ax, 0
    push ax
    call api_idx_005a
    pop cx
    call 0x2cc7
    cmp word [0x90bc], byte 0
    jne short 0x3703
    call 0x1a16
    mov word [0x90bc], 0
    mov word [0x830a], 0xc
    ret
    pop word [0x90b4]
    pop cx
    mov word [0x90b0], sp
    mov word [0x90b2], bp
    mov word [0x90ac], si
    mov word [0x90ae], di
    cld
    mov di, 0x90b6
    mov cx, 0x90d0
    sub cx, di
    shr cx, 1
    je short 0x3736
    sub ax, ax
    rep stosw
    call 0xe
    mov bp, word [0x90b2]
    mov sp, word [0x90b0]
    mov si, word [0x90ac]
    mov di, word [0x90ae]
    push cx
    jmp [0x90b4]
loc_374e:
    push bp
    mov bp, sp
    push si
    push di
    mov di, ds
    mov es, di
    mov si, word [bp + 0x4]
    mov di, word [bp + 0x6]
    mov cx, word [bp + 0x8]
    jcxz 0x376f
    cmp di, si
    je short 0x376f
    mov al, byte [es:di]
    xchg byte [si], al
    stosb
    inc si
    loop 0x3766
    pop di
    pop si
    pop bp
    ret

    db 'MON00.PIC', 0
    db 0x20, 0x00
    db 'VM1.$$$', 0
    times 10 db 0

