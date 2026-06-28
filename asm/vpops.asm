; ── auto-discovered structs ─────────────────────────────────────

; @struct s_bx_0000 size=38 reg=bx disp=0x0000
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=2 name=f_04
; @field offset=6 size=2 name=f_06
; @field offset=8 size=2 name=f_08
; @field offset=10 size=2 name=f_0a
; @field offset=12 size=2 name=f_0c
; @field offset=14 size=1 name=f_0e
; @field offset=15 size=1 name=f_0f
; @field offset=16 size=1 name=f_10
; @field offset=17 size=1 name=f_11
; @field offset=18 size=2 name=f_12
; @field offset=20 size=1 name=f_14
; @field offset=21 size=1 name=f_15
; @field offset=22 size=1 name=f_16
; @field offset=23 size=1 name=f_17
; @field offset=24 size=1 name=f_18
; @field offset=25 size=1 name=f_19
; @field offset=26 size=1 name=f_1a
; @field offset=27 size=1 name=f_1b
; @field offset=28 size=1 name=f_1c
; @field offset=29 size=1 name=f_1d
; @field offset=30 size=1 name=f_1e
; @field offset=31 size=1 name=f_1f
; @field offset=32 size=1 name=f_20
; @field offset=33 size=1 name=f_21
; @field offset=34 size=1 name=f_22
; @field offset=35 size=1 name=f_23
; @field offset=36 size=1 name=f_24
; @field offset=37 size=1 name=f_25
struc s_bx_0000
    .f_00: resb 2
    .f_02: resb 2
    .f_04: resb 2
    .f_06: resb 2
    .gap_8: resb 2
    .f_0a: resb 2
    .f_0c: resb 2
    .gap_e: resb 1
    .f_0f: resb 1
    .f_10: resb 1
    .f_11: resb 1
    .gap_12: resb 2
    .f_14: resb 1
    .f_15: resb 1
    .f_16: resb 1
    .f_17: resb 1
    .f_18: resb 1
    .f_19: resb 1
    .gap_1a: resb 1
    .f_1b: resb 1
    .f_1c: resb 1
    .f_1d: resb 1
    .f_1e: resb 1
    .f_1f: resb 1
    .f_20: resb 1
    .f_21: resb 1
    .f_22: resb 1
    .gap_23: resb 1
    .f_24: resb 1
    .f_25: resb 1
endstruc

; @struct s_bx_00ae size=5 reg=bx disp=0x00ae
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
; @field offset=4 size=1 name=f_04
struc s_bx_00ae
    .f_00: resb 1
    .gap_1: resb 1
    .f_02: resb 1
    .gap_3: resb 1
    .f_04: resb 1
endstruc

; @struct s_bx_00d6 size=13 reg=bx disp=0x00d6
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
; @field offset=4 size=1 name=f_04
; @field offset=5 size=1 name=f_05
; @field offset=6 size=2 name=f_06
; @field offset=8 size=1 name=f_08
; @field offset=9 size=3 name=f_09
; @field offset=12 size=1 name=f_0c
struc s_bx_00d6
    .f_00: resb 1
    .f_01: resb 1
    .gap_2: resb 1
    .f_03: resb 1
    .gap_4: resb 1
    .f_05: resb 1
    .gap_6: resb 2
    .f_08: resb 1
    .gap_9: resb 3
    .f_0c: resb 1
endstruc

; @struct s_bx_019e size=5 reg=bx disp=0x019e
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
; @field offset=4 size=1 name=f_04
struc s_bx_019e
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .f_03: resb 1
    .f_04: resb 1
endstruc

; @struct s_bx_0621 size=4 reg=bx disp=0x0621
; @field offset=0 size=1 name=f_00
; @field offset=1 size=2 name=f_01
; @field offset=3 size=1 name=f_03
struc s_bx_0621
    .f_00: resb 1
    .gap_1: resb 2
    .f_03: resb 1
endstruc

; @struct s_bx_5c0c size=6 reg=bx disp=0x5c0c
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=2 name=f_04
struc s_bx_5c0c
    .f_00: resb 2
    .gap_2: resb 2
    .f_04: resb 2
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
    .f_05: resb 1
    .gap_6: resb 1
    .f_07: resb 1
endstruc

; @struct s_bx_5d43 size=7 reg=bx disp=0x5d43
; @field offset=0 size=1 name=f_00
; @field offset=1 size=4 name=f_01
; @field offset=5 size=1 name=f_05
; @field offset=6 size=1 name=f_06
struc s_bx_5d43
    .f_00: resb 1
    .gap_1: resb 4
    .f_05: resb 1
    .f_06: resb 1
endstruc

; @struct s_bx_5d5c size=2 reg=bx disp=0x5d5c
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
struc s_bx_5d5c
    .f_00: resb 1
    .f_01: resb 1
endstruc

; @struct s_bx_5e2b size=15 reg=bx disp=0x5e2b
; @field offset=0 size=1 name=f_00
; @field offset=1 size=1 name=f_01
; @field offset=2 size=1 name=f_02
; @field offset=3 size=1 name=f_03
; @field offset=4 size=1 name=f_04
; @field offset=5 size=8 name=f_05
; @field offset=13 size=1 name=f_0d
; @field offset=14 size=1 name=f_0e
struc s_bx_5e2b
    .f_00: resb 1
    .f_01: resb 1
    .f_02: resb 1
    .gap_3: resb 1
    .f_04: resb 1
    .gap_5: resb 8
    .f_0d: resb 1
    .f_0e: resb 1
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

; @struct s_bx_9060 size=4 reg=bx disp=0x9060
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_9060
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_90cf size=10 reg=bx disp=0x90cf
; @field offset=0 size=1 name=f_00
; @field offset=1 size=8 name=f_01
; @field offset=9 size=1 name=f_09
struc s_bx_90cf
    .f_00: resb 1
    .gap_1: resb 8
    .f_09: resb 1
endstruc

; @struct s_bx_ff3e size=4 reg=bx disp=0xff3e
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_ff3e
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_ffd2 size=8 reg=bx disp=0xffd2
; @field offset=0 size=2 name=f_00
; @field offset=2 size=4 name=f_02
; @field offset=6 size=2 name=f_06
struc s_bx_ffd2
    .f_00: resb 2
    .gap_2: resb 4
    .f_06: resb 2
endstruc

org 0
bits 16

    db 0xf2, 0x00, 0x55, 0x50, 0xcd, 0x4e, 0x98, 0x90 ; header (8 bytes)

    add byte [ds:bx + si - 0x1bfe], bh
    sahf
    mov ax, 0
    call 0xf40b
    cmp word [0x830a], byte 0x0c
    jne short 0x1e
    call api_idx_0004_3
    mov ax, 0
    ret
    mov ax, 0xffd6
    call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0x28
    push ax
    lea ax, word [bp - 0x002a]
    push ax
    call 0xf306
    add sp, byte 6
    push word [bp + 0x4]
    lea ax, word [bp - 0x002a]
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, 0x2f
    push ax
    lea ax, word [bp - 0x002a]
    push ax
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x68
    lea ax, word [bp - 0x002a]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x0002], byte 0x0a
    jle short 0x73
    mov word [bp - 0x0002], 0xa
    mov bx, word [bp - 0x0002]
    add bx, bp
    mov byte [bx - 0x002a], 0
    mov byte [bx - 0x001f], 0
    mov ax, 0
    push ax
    push word [bp + 0xa]
    call 0xe823
    add sp, byte 4
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x002a]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 6
    push ax
    push word [bp + 0x6]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    lea cx, word [bp - 0x0029]
    add ax, cx
    push ax
    call 0xe84e
    add sp, byte 4
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
    je short 0x148
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
loc_0149:
    mov ax, 0
    call 0xf40b
    mov ax, 0
    push ax
    push word [bp + 0xa]
    call 0xe823
    add sp, byte 4
    push word [bp + 0x8]
    push word [bp + 0x4]
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp + 0x6]
    sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0xe84e
    add sp, byte 4
    ret
api_idx_0006:
    mov ax, 0xfffa
    call 0xf40b
    mov ax, word [bp + 0x4]
    jmp near 0x294
    mov ax, 0x9098
    push ax
    mov ax, 0xc2
    push ax
    mov ax, 0xe0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x62
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0002], ax
    mov ax, 0
    push ax
    call api_idx_000a
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call 0xc459
    add sp, byte 4
    jmp near 0x2ae
    mov ax, 0x909f
    push ax
    mov ax, 0xc2
    push ax
    mov ax, 0x60
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 8
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0002], ax
    mov ax, 0x90a6
    push ax
    mov ax, 0xc2
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 0xe7
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    mov ax, 0x90ad
    push ax
    mov ax, 0x9f
    push ax
    mov ax, 0xcd
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0x73
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0006], ax
    mov ax, 0
    push ax
    call api_idx_000a
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    call 0xc459
    add sp, byte 4
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    call 0xc459
    add sp, byte 4
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call 0xc459
    add sp, byte 4
    jmp short 0x2ae
    mov ax, 0x90b4
    push ax
    mov ax, 0xc2
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 8
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0002], ax
    mov ax, 0
    push ax
    call api_idx_000a
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call 0xc459
    add sp, byte 4
    jmp short 0x2ae
    mov ax, 0
    push ax
    call api_idx_000a
    pop cx
    jmp short 0x2ae
    cmp ax, strict word 0
    jne short 0x29c
    jmp near 0x199
    cmp ax, strict word 1
    jne short 0x2a4
    jmp near 0x1ce
    cmp ax, strict word 2
    je short 0x256
    cmp ax, strict word 3
    je short 0x28a
    ret
loc_02af:
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x4]
    jmp near 0x347
    mov ax, 0x9f
    push ax
    mov ax, 0xcd
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0x73
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0xc2
    push ax
    mov ax, 0x60
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 8
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0xc2
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 0xe7
    push ax
    call 0xe8da
    add sp, byte 8
    jmp short 0x35e
    mov ax, 0xc2
    push ax
    mov ax, 0xe0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x62
    push ax
    call 0xe8da
    add sp, byte 8
    jmp short 0x35e
    mov ax, 0x9f
    push ax
    mov ax, 0xcd
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0x73
    push ax
    call 0xe8da
    add sp, byte 8
    jmp short 0x35e
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
    jmp short 0x35e
    cmp ax, strict word 0
    jne short 0x34f
    jmp near 0x2bb
    cmp ax, strict word 1
    je short 0x2ff
    cmp ax, strict word 2
    je short 0x317
    cmp ax, strict word 3
    je short 0x32f
    ret
api_idx_0054:
    mov ax, 0xffac
    call 0xf40b
    mov ax, 1
    push ax
    call api_idx_0006
    pop cx
    mov word [bp - 0x0002], 1
    jmp near 0x4f7
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + 0x1a2], 0
    mov word [bp - 0x0004], 0
    jmp short 0x3b8
    mov ax, 0x2c
    imul word [bp - 0x0004]
    mov si, ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + si + 0x22], 2
    jae short 0x3b5
    cmp byte [bx + si + 0x11], 0
    jne short 0x3b5
    cmp byte [bx + si + 0x10], 0
    jne short 0x3b5
    inc byte [bx + 0x1a2]
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0004]
    jg short 0x38c
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x4]
    jne short 0x40c
    mov ax, 0x5f
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, 0xa2
    push ax
    mov ax, 0xdd
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, 0x9e
    push ax
    mov ax, 0x62
    push ax
    call 0xe901
    add sp, byte 0x0a
    mov ax, 0x5f
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    jmp short 0x41a
    mov ax, 0
    push ax
    mov ax, 0x5f
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, 0x9e
    push ax
    mov ax, 0x63
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    push ax
    call 0xb2e7
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x1a1], 1
    jne short 0x477
    mov ax, 0
    jmp short 0x47a
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
    call 0xe84e
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, 0x9e
    push ax
    mov ax, 0xce
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x28
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a2]
    sub ah, ah
    push ax
    call 0xb2e7
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x29
    push ax
    call 0xe830
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x8466]
    jg short 0x503
    jmp near 0x375
    ret
api_idx_000a_2:
    mov ax, 0xfff6
    call 0xf40b
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x19f], 0xff
    jne short 0x51d
    ret
    mov al, byte [bx + 0x19f]
    cbw
    mov word [bp - 0x0002], ax
    mov word [bp - 0x000a], 0
    cmp word [bp + 0xa], byte 0xff
    jne short 0x54c
    mov word [bp + 0xa], 0
    mov cx, 0x15e
    imul cx
    mov bx, ax
    mov al, byte [bx + 0x6b75]
    sub ah, ah
    cmp ax, 0xfe
    je short 0x54c
    mov word [bp - 0x000a], 1
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + 0x6a1a]
    sub ah, ah
    mov word [bp - 0x0004], ax
    jmp near 0x6de
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x6a22]
    sub ah, ah
    mov word [bp - 0x0006], ax
    cmp word [bp + 0xa], byte 0
    jne short 0x5cf
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x6b75], 0
    jbe short 0x5cf
    mov al, byte [bx + 0x6b75]
    sub ah, ah
    cmp ax, 0xfe
    jge short 0x5cf
    cmp ax, 0xfd
    jne short 0x5a8
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0008], 0
    jmp short 0x5cd
    mov word [bp - 0x0008], ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    cmp byte [bx + 0xd7], 0x47
    jne short 0x5cd
    cmp word [bp - 0x000a], byte 0
    jne short 0x5cd
    mov word [bp - 0x0006], 1
    mov word [bp - 0x0008], 0xb
    jmp short 0x610
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
    je short 0x610
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
    jle short 0x703
    jmp near 0x563
    ret
api_idx_000e:
    mov ax, 0xfff2
    call 0xf40b
    mov bx, word [bp + 0xe]
    mov byte [bx], 0
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x19f], 0xff
    jne short 0x723
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
    jmp near 0x9e4
    mov ax, 0x2c
    imul word [bp + 0x6]
    mov si, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + si + 0x22], 2
    je short 0x77f
    cmp byte [bx + si + 0x11], 0
    ja short 0x77f
    cmp byte [bx + si + 0x10], 0
    jbe short 0x7c3
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
    jmp near 0x976
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
    je short 0x7fe
    dec word [bp - 0x000a]
    cmp word [bp - 0x000a], byte 0
    jle short 0x807
    jmp near 0x94f
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
    jl short 0x83d
    jmp near 0x8ec
    mov ax, 3
    imul word [bp + 0x8]
    add ax, word [bp + 0xa]
    mov bx, ax
    cmp byte [bx - 0x7bd0], 0
    je short 0x881
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
    call api_idx_000e
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
    je short 0x9b0
    mov al, byte [bx + 0x19e]
    sub ah, ah
    cmp ax, 0x8d
    jne short 0x9d3
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
    je short 0x9e1
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
    jle short 0xa1d
    jmp near 0x75a
    mov bx, word [bp + 0xe]
    mov si, word [bp - 0x000e]
    mov byte [bx + si], 0
    ret
api_idx_0004:
    mov ax, 0xfffc
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x8468]
    jge short 0xa52
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b96]
    mov al, byte [bx + 0x14]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jg short 0xa52
    inc word [bp - 0x0002]
    jmp short 0xa32
    mov ax, word [0x8468]
    mov word [bp - 0x0004], ax
    jmp short 0xa75
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
    jg short 0xa5a
    cmp word [bp - 0x0002], byte 0x0c
    jl short 0xa8d
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp short 0xa83
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
    jl short 0xb6d
    cmp ax, strict word 3
    jg short 0xb6d
    mov ax, word [bp + 0x4]
    cmp ax, word [0x8454]
    jle short 0xb6e
    ret
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x19f], 0xff
    jne short 0xb81
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
    call api_idx_000e
    add sp, byte 0x0c
    cmp byte [bp - 0x001c], 0
    jne short 0xba7
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
    je short 0xbcf
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
    jne short 0xc04
    mov ax, 6
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5b6]
    sub ax, word [bp - 0x0002]
    mov word [bp - 0x000c], ax
    jmp short 0xc31
    mov ax, 0x64
    push ax
    mov ax, 5
    push ax
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0
    cmp word [bp + 0x6], byte 0
    jne short 0xc20
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
    jne short 0xccd
    mov bx, word [0x8484]
    cmp byte [bx + 0x1a1], 1
    jne short 0xccd
    cmp word [bp + 0x4], byte 0
    jne short 0xccd
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
    je short 0xd29
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
    call api_idx_0004
    add sp, byte 0x12
    ret
api_idx_000e_2:
    mov ax, 0xfff2
    call 0xf40b
    cmp word [0x8f20], byte 0
    jg short 0xd87
    jmp near 0xe31
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
    jmp short 0xddc
    mov byte [bp - 0x000e], 1
    mov byte [bp - 0x000d], 2
    mov ax, 5
    cmp word [bp - 0x0002], byte 0
    jne short 0xdb5
    mov ax, 4
    mov byte [bp - 0x000c], al
    mov byte [bp - 0x000b], 0
    mov word [bp - 0x0004], 0
    jmp short 0xdf0
    mov byte [bp - 0x000e], 3
    mov byte [bp - 0x000d], 0
    mov ax, 0
    cmp word [bp - 0x0002], byte 3
    jne short 0xdd7
    mov ax, 1
    mov word [bp - 0x0004], ax
    jmp short 0xdf0
    cmp ax, strict word 0
    je short 0xda1
    cmp ax, strict word 1
    je short 0xdc3
    cmp ax, strict word 2
    je short 0xda1
    cmp ax, strict word 3
    je short 0xdc3
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
    call api_idx_0004
    add sp, byte 0x12
    cmp word [0x8f20], byte 0xff
    jne short 0xe6b
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
    call api_idx_0004
    add sp, byte 0x12
    ret
loc_0e6c:
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b96]
    mov al, byte [bx + 0x14]
    sub ah, ah
    cmp ax, 0xff
    je short 0xec7
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
loc_0ec8:
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
    mov ax, word [0x90d6]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [0x9092]
    mov dx, word [0x9094]
    cmp bx, dx
    jg short 0xf0f
    jne short 0xf11
    cmp cx, ax
    jbe short 0xf11
    jmp short 0xf23
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
    jmp near 0x1049
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
    jmp near 0x1063
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    sub ax, word [0x908a]
    sbb dx, word [0x908c]
    push ax
    push dx
    mov ax, word [0x90d6]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    cmp dx, bx
    jl short 0xf75
    jne short 0xf77
    cmp ax, cx
    jae short 0xf77
    jmp short 0xf85
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
    jl short 0xfa6
    mov word [0x8468], 0
    jmp near 0x1063
    call 0xec8
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
    jl short 0xfd9
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 3
    jl short 0xfd4
    call api_idx_000e_2
    cmp word [bp - 0x0006], byte 0
    je short 0x103a
    mov ax, word [0x82e8]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [0x82e8], dx
    call 0xda22
    jmp short 0x1063
    push word [0x845e]
    call 0xe6c
    pop cx
    jmp short 0x1063
    cmp ax, strict word 0xfffd
    jne short 0x1051
    jmp near 0xf33
    cmp ax, strict word 0xfffe
    jne short 0x1059
    jmp near 0xf4c
    cmp ax, strict word 0xffff
    jne short 0x1061
    jmp near 0xfc9
    jmp short 0x103f
    inc word [0x845e]
    mov ax, word [0x845e]
    cmp ax, strict word 0xc
    jne short 0x1075
    mov word [0x845e], 0xfffd
    ret
    mov ax, 0
    call 0xf40b
    mov word [0x845e], 0xfffe
    call api_idx_0006_2
    cmp word [0x845e], byte 0xfe
    jne short 0x1082
    ret
    mov ax, 0
    call 0xf40b
    cmp word [0x845e], byte 0xfe
    je short 0x109f
    call api_idx_0006_2
    jmp short 0x1093
    ret
loc_10a0:
    mov ax, 0
    call 0xf40b
    push word [bp + 0xc]
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    mov ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    mov ax, word [bp + 0x4]
    dec ax
    push ax
    call 0xe901
    add sp, byte 0x0a
    push word [bp + 0xc]
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    mov ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    mov ax, word [bp + 0x8]
    inc ax
    push ax
    call 0xe901
    add sp, byte 0x0a
    push word [bp + 0xc]
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    mov ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    dec ax
    push ax
    call 0xe901
    add sp, byte 0x0a
    push word [bp + 0xc]
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    dec ax
    push ax
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    mov ax, word [bp + 0x4]
    dec ax
    push ax
    call 0xe901
    add sp, byte 0x0a
    ret
loc_111b:
    mov ax, 0xfe32
    call 0xf40b
    mov word [0x9052], 0xffff
    mov ax, word [bp + 0x14]
    shl ax, 1
    mov word [bp - 0x0010], ax
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 0xff
    jne short 0x114b
    jmp near 0x129c
    cmp word [bx + si], byte 1
    je short 0x1153
    jmp near 0x1296
    mov ax, word [bp - 0x0002]
    cmp word [bp + 0x16], byte 0
    je short 0x115f
    mov ax, word [bp - 0x0004]
    mov word [bp - 0x0008], ax
    mov ax, word [bp + 0xa]
    mov cx, word [bp - 0x0008]
    cmp cx, word [bp - 0x0010]
    jge short 0x1170
    mov ax, word [bp + 0x8]
    mov word [bp - 0x0006], ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x015a]
    add ax, cx
    push ax
    mov ax, word [bp + 0x4]
    add ax, word [bp - 0x0004]
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    cwd
    idiv word [bp - 0x0010]
    mov ax, dx
    cwd
    idiv word [bp + 0x14]
    imul word [bp + 0x10]
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0008]
    cwd
    idiv word [bp - 0x0010]
    mov ax, dx
    cwd
    idiv word [bp + 0x14]
    mov ax, dx
    imul word [bp + 0x12]
    mov word [bp - 0x000c], ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    call 0xbce3
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push word [bp + 0x18]
    call 0xe823
    add sp, byte 4
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x015a]
    add ax, cx
    push ax
    call 0xfa90
    pop cx
    mov cx, ax
    mov ax, word [bp + 0xe]
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    inc ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x015a]
    add ax, cx
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    push word [bp - 0x0002]
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x0004]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x002e], ax
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0008]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x01ce], ax
    inc word [bp - 0x0002]
    inc word [bp - 0x0004]
    jmp near 0x1139
    mov ax, word [bp - 0x0004]
    mov word [bp - 0x01ac], ax
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    push word [bp - 0x0002]
    call 0xbaa6
    add sp, byte 0x0e
    cmp word [bp + 0x16], byte 1
    jne short 0x1320
    mov word [bp - 0x000e], 0
    jmp short 0x12fd
    mov ax, 0
    push ax
    mov ax, word [bp - 0x000e]
    add ax, strict word 0x31
    cbw
    push ax
    mov ax, 6
    imul word [bp - 0x000e]
    add ax, 0xa8
    push ax
    mov ax, 0xdd
    push ax
    mov ax, 6
    imul word [bp - 0x000e]
    add ax, 0xa4
    push ax
    mov ax, 0x62
    push ax
    mov ax, word [bp - 0x0002]
    add ax, word [bp - 0x000e]
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x000e]
    mov ax, word [bp - 0x000e]
    cmp ax, word [0x8466]
    jl short 0x12c5
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp - 0x0002]
    add ax, word [0x8466]
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    push word [bp + 0x6]
    call 0x2af
    pop cx
    cmp word [0x0e32], byte 0
    je short 0x1346
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    mov word [bp - 0x0004], ax
    call api_idx_0006_2
    cmp word [0x5b3e], byte 0
    je short 0x132e
    jmp near 0x1665
    mov word [bp - 0x0004], 0
    cmp word [bp + 0x16], byte 0
    je short 0x1365
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 1
    je short 0x1365
    inc word [bp - 0x0004]
    jmp short 0x134b
    mov ax, word [bp + 0xa]
    mov cx, word [bp - 0x0004]
    cmp cx, word [bp - 0x0010]
    jge short 0x1373
    mov ax, word [bp + 0x8]
    mov word [bp - 0x0006], ax
    mov ax, cx
    cwd
    idiv word [bp - 0x0010]
    mov ax, dx
    cwd
    idiv word [bp + 0x14]
    imul word [bp + 0x10]
    mov word [bp - 0x000a], ax
    mov ax, cx
    cwd
    idiv word [bp - 0x0010]
    mov ax, dx
    cwd
    idiv word [bp + 0x14]
    mov ax, dx
    imul word [bp + 0x12]
    mov word [bp - 0x000c], ax
    mov ax, 0x16
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    call 0x10a0
    add sp, byte 0x0a
    push word [bp + 0x6]
    call 0x2af
    pop cx
    mov ax, 0
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    call 0x10a0
    add sp, byte 0x0a
    mov ax, 1
    push ax
    call 0xea50
    pop cx
    test ax, ax
    jne short 0x1412
    call api_idx_0006_2
    jmp short 0x1401
    mov ax, 1
    push ax
    call 0xeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x01ae], ax
    cmp ax, strict word 0xd
    jne short 0x1438
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x01ce]
    mov word [bp - 0x0004], ax
    jmp near 0x1651
    cmp word [bp + 0x16], byte 1
    jne short 0x1467
    cmp word [bp - 0x01ae], byte 0x31
    jl short 0x1467
    mov ax, word [0x8466]
    add ax, strict word 0x30
    cmp ax, word [bp - 0x01ae]
    jl short 0x1467
    mov ax, word [bp - 0x0002]
    add ax, word [bp - 0x01ae]
    add ax, strict word 0xffcf
    mov word [bp - 0x0004], ax
    mov word [bp - 0x01ae], 0xd
    jmp near 0x1651
    mov ax, word [bp - 0x0004]
    cwd
    idiv word [bp + 0x14]
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x01ac]
    dec ax
    cwd
    idiv word [bp + 0x14]
    inc ax
    imul word [bp + 0x14]
    mov word [bp - 0x000c], ax
    mov ax, word [bp - 0x01ae]
    jmp near 0x1631
    mov ax, word [bp - 0x0004]
    add ax, word [bp + 0x14]
    dec ax
    cwd
    idiv word [bp + 0x14]
    mov ax, dx
    push ax
    mov ax, word [bp - 0x000a]
    imul word [bp + 0x14]
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0004], ax
    cmp word [bp + 0x16], byte 0
    je short 0x14b9
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 1
    jne short 0x1488
    cmp word [bp + 0x16], byte 0
    jne short 0x14c7
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jge short 0x1488
    jmp near 0x1651
    mov ax, word [bp - 0x0004]
    inc ax
    cwd
    idiv word [bp + 0x14]
    mov ax, dx
    push ax
    mov ax, word [bp - 0x000a]
    imul word [bp + 0x14]
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0004], ax
    cmp word [bp + 0x16], byte 0
    je short 0x14f8
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 1
    jne short 0x14ca
    cmp word [bp + 0x16], byte 0
    jne short 0x1506
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jge short 0x14ca
    jmp near 0x1651
    mov ax, word [bp - 0x0004]
    sub ax, word [bp + 0x14]
    add ax, word [bp - 0x000c]
    cwd
    idiv word [bp - 0x000c]
    mov word [bp - 0x0004], dx
    mov ax, dx
    cwd
    idiv word [bp + 0x14]
    mov word [bp - 0x000a], ax
    mov word [bp - 0x01b0], 0
    mov ax, word [bp - 0x01b0]
    cmp ax, word [bp + 0x14]
    jge short 0x1576
    cmp word [bp + 0x16], byte 0
    je short 0x1546
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 1
    jne short 0x1554
    cmp word [bp + 0x16], byte 0
    jne short 0x1576
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jl short 0x1576
    mov ax, word [bp - 0x0004]
    add ax, word [bp + 0x14]
    dec ax
    cwd
    idiv word [bp + 0x14]
    mov ax, dx
    push ax
    mov ax, word [bp - 0x000a]
    imul word [bp + 0x14]
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0004], ax
    inc word [bp - 0x01b0]
    jmp short 0x1528
    cmp word [bp + 0x16], byte 0
    je short 0x158e
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 1
    je short 0x158e
    jmp near 0x1509
    cmp word [bp + 0x16], byte 0
    jne short 0x159f
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jl short 0x159f
    jmp near 0x1509
    jmp near 0x1651
    mov ax, word [bp - 0x0004]
    add ax, word [bp + 0x14]
    cwd
    idiv word [bp - 0x000c]
    mov word [bp - 0x0004], dx
    mov ax, dx
    cwd
    idiv word [bp + 0x14]
    mov word [bp - 0x000a], ax
    mov word [bp - 0x01b0], 0
    mov ax, word [bp - 0x01b0]
    cmp ax, word [bp + 0x14]
    jge short 0x1609
    cmp word [bp + 0x16], byte 0
    je short 0x15dc
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 1
    jne short 0x15ea
    cmp word [bp + 0x16], byte 0
    jne short 0x1609
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jl short 0x1609
    mov ax, word [bp - 0x0004]
    inc ax
    cwd
    idiv word [bp + 0x14]
    mov ax, dx
    push ax
    mov ax, word [bp - 0x000a]
    imul word [bp + 0x14]
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0004], ax
    inc word [bp - 0x01b0]
    jmp short 0x15be
    cmp word [bp + 0x16], byte 0
    je short 0x161e
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 1
    jne short 0x15a2
    cmp word [bp + 0x16], byte 0
    jne short 0x162f
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jl short 0x162f
    jmp near 0x15a2
    jmp short 0x1651
    cmp ax, strict word 8
    jne short 0x1639
    jmp near 0x1509
    cmp ax, strict word 9
    jne short 0x1641
    jmp near 0x1488
    cmp ax, strict word 0xa
    jne short 0x1649
    jmp near 0x15a2
    cmp ax, strict word 0xb
    jne short 0x1651
    jmp near 0x14ca
    cmp word [bp - 0x01ae], byte 0x0d
    je short 0x165b
    jmp near 0x1365
    inc word [bp - 0x0004]
    push word [bp + 0x6]
    call 0x2af
    pop cx
    dec word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jl short 0x167d
    mov ax, 0
    mov cx, word [bp - 0x0004]
    sub cx, word [bp - 0x0002]
    sub ax, cx
    dec ax
    ret
    mov ax, word [bp - 0x0004]
    cmp word [bp + 0x16], byte 0
    je short 0x168f
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x002e]
    mov word [bp - 0x0008], ax
    mov ax, word [bp + 0xa]
    mov cx, word [bp - 0x0008]
    cmp cx, word [bp - 0x0010]
    jge short 0x16a0
    mov ax, word [bp + 0x8]
    mov word [bp - 0x0006], ax
    mov ax, cx
    cwd
    idiv word [bp - 0x0010]
    mov ax, dx
    cwd
    idiv word [bp + 0x14]
    imul word [bp + 0x10]
    mov word [bp - 0x000a], ax
    mov ax, cx
    cwd
    idiv word [bp - 0x0010]
    mov ax, dx
    cwd
    idiv word [bp + 0x14]
    mov ax, dx
    imul word [bp + 0x12]
    mov word [bp - 0x000c], ax
    add ax, word [bp + 0xc]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp - 0x000c]
    add ax, word [bp + 0xc]
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    call 0xe90e
    add sp, byte 8
    mov ax, word [bp - 0x000c]
    add ax, word [bp + 0xc]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp - 0x000c]
    add ax, word [bp + 0xc]
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0x19
    push ax
    call 0xe489
    pop cx
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    call 0xe90e
    add sp, byte 8
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0004]
    mov word [0x9052], ax
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x002e]
    ret
api_idx_000c:
    mov ax, 0xfff4
    call 0xf40b
    mov word [bp - 0x000c], 1
    mov word [bp - 0x0006], 0
    jmp short 0x17bd
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + si + 0x2a], 0xff
    je short 0x17ba
    mov word [bp - 0x000c], 0
    inc word [bp - 0x0006]
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0006]
    jg short 0x179c
    cmp word [bp - 0x000c], byte 1
    jne short 0x1826
    mov word [bp - 0x000a], 0
    mov word [bp - 0x0006], 0
    jmp short 0x180e
    mov ax, 9
    imul word [bp + 0x6]
    add ax, word [bp - 0x0006]
    mov bx, ax
    cmp byte [bx - 0x6f31], 0
    je short 0x17ff
    mov ax, word [bp - 0x000a]
    cmp ax, word [bp + 0x4]
    jne short 0x1808
    mov byte [bx - 0x6f31], 1
    mov ax, word [bp - 0x0006]
    ret
    inc word [bp - 0x000a]
    inc word [bp - 0x0006]
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0006]
    jg short 0x17e5
    jmp short 0x17de
    mov word [bp - 0x000a], 0
    mov word [bp - 0x000c], 0
    cmp word [bp - 0x000c], byte 0x0a
    jl short 0x1839
    jmp near 0x18be
    inc word [bp - 0x000c]
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    mov ax, 6
    imul word [bp - 0x0002]
    push ax
    mov ax, 6
    imul word [bp + 0x4]
    mov cx, ax
    mov dx, word [bp - 0x0004]
    shl dx, 1
    add ax, dx
    mov bx, ax
    mov cx, word [bx + 0x592]
    shl cx, 1
    pop ax
    add ax, cx
    mov bx, ax
    mov ax, word [bx - 0x7bc6]
    mov cx, 0xa
    cwd
    idiv cx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x0006], dx
    cmp ax, word [bp + 0x6]
    jne short 0x18a5
    mov ax, 9
    imul word [bp + 0x6]
    mov dx, word [bp - 0x0006]
    add ax, dx
    mov bx, ax
    cmp byte [bx - 0x6f31], 0
    je short 0x189a
    mov ax, word [bp - 0x000a]
    cmp ax, word [bp + 0x4]
    jne short 0x18a2
    mov byte [bx - 0x6f31], 1
    mov ax, dx
    ret
    inc word [bp - 0x000a]
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jl short 0x1846
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 3
    jl short 0x1841
    jmp near 0x1830
    mov ax, 0
    ret
    mov ax, 0xfff4
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, 0x14
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov cx, word [bx - 0x7cf2]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x1d4]
    mov byte [bp - 0x000c], al
    mov byte [bp - 0x000b], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x000c]
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
    mov ax, 0xc
    imul word [bp + 0x8]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x1bc]
    add ax, word [bp + 0x6]
    push ax
    mov ax, word [bx + 0x1a4]
    add ax, word [bp + 0x4]
    push ax
    mov ax, 2
    push ax
    call 0xefd1
    add sp, byte 0x16
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x18cd
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    cmp word [bp + 0x4], byte 0
    jl short 0x195a
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x4]
    jne short 0x1965
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    inc word [bx - 0x7cf2]
    mov ax, 0x14
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov cx, word [bx - 0x7cf2]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x1d4], byte 0xff
    jne short 0x1990
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x7cf2], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x194c
    ret
    mov ax, 0xfffc
    call 0xf40b
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x620]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jne short 0x19fe
    push word [bp - 0x0002]
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x19fe
    mov ax, 0x14
    imul word [bp - 0x0004]
    add ax, 0xe38
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xfa0
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6efa], ax
    inc word [bp - 0x0004]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x66
    jl short 0x19ac
    mov ax, word [bp - 0x0004]
    ret
    mov ax, 0xfff6
    call 0xf40b
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
    mov ax, 0x73
    push ax
    mov ax, 0x32
    push ax
    mov ax, 1
    push ax
    call 0xefd1
    add sp, byte 0x16
    ret
    mov ax, 0
    call 0xf40b
    push word [bp + 0x6]
    mov ax, 0xa
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    dec ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 7
    push ax
    mov ax, 0
    cmp word [bp + 0xa], byte 0
    je short 0x1a75
    mov ax, 1
    add ax, strict word 0x10
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    push word [bp + 0x6]
    mov ax, 0xa
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, word [bp + 0x8]
    inc ax
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    cmp word [bp + 0x8], byte 0
    jne short 0x1ad6
    cmp word [bp + 0xa], byte 0
    jne short 0x1ad6
    mov ax, 0xc2
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    mov ax, word [bp + 0x4]
    dec ax
    push ax
    push word [bp + 0x6]
    push ax
    call 0xe901
    add sp, byte 0x0a
    ret
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x6]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x14
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0xbd98
    add sp, byte 8
    mov ax, word [bp + 0x8]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x08, 0x00 ; push word ptr [bx + 8]
    mov ax, word [bp + 0x6]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x14
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0xe901
    add sp, byte 0x0a
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    call 0xe809
    add sp, byte 4
    cmp word [bp + 0xa], byte 0
    jle short 0x1b5e
    mov ax, word [bp + 0xa]
    cmp ax, word [bp + 0xc]
    jg short 0x1b5e
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    push word [bp + 0xa]
    call 0xb2e7
    add sp, byte 6
    jmp short 0x1b77
    mov ax, 0
    push ax
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x90bb
    push ax
    call 0xe84e
    add sp, byte 4
    ret
    mov ax, 0xfff4
    call 0xf40b
    mov word [bp - 0x0002], 0
    lea ax, word [bp - 0x000c]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x5c1c]
    call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x06, 0x00 ; push word ptr [bx + 6]
    call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx + 0x18e]
    lea ax, word [bp - 0x000c]
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x18c]
    add ax, strict word 9
    sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x000c]
    push ax
    call 0xe84e
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jge short 0x1c10
    jmp near 0x1b83
    ret
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
    mov ax, word [0x90d6]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [0x9092]
    mov dx, word [0x9094]
    cmp bx, dx
    jg short 0x1c58
    jne short 0x1c5a
    cmp cx, ax
    jbe short 0x1c5a
    jmp short 0x1ca1
    mov ax, word [0x908e]
    mov dx, word [0x9090]
    mov word [0x908c], dx
    mov word [0x908a], ax
    call 0x1a0d
    push word [bp + 0x4]
    call 0x1b78
    pop cx
    push word [bp + 0x6]
    call 0x1941
    pop cx
    mov ax, 1
    push ax
    mov ax, 0x73
    push ax
    mov ax, 0x32
    push ax
    call 0x18c2
    add sp, byte 6
    mov ax, 0xc5
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0x73
    push ax
    mov ax, 0x32
    push ax
    call 0xe8da
    add sp, byte 8
    ret
    mov ax, 0xffbc
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x7cf2], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x1cad
    mov word [0x904e], 0xffff
    mov word [bp - 0x0004], 0x32
    mov word [bp - 0x0006], 0x73
    mov word [bp - 0x0008], 0x10d
    mov word [bp - 0x000a], 0xc5
    mov word [bp - 0x000c], 0x95
    mov word [bp - 0x0014], 0x16
    mov ax, 0x90bf
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x003a], ax
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    call 0xbc9a
    add sp, byte 8
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    mov ax, 0x95
    push ax
    call 0xbc9a
    add sp, byte 8
    call 0x1a0d
    push word [bp + 0x4]
    call 0x1b78
    pop cx
    mov ax, 1
    push ax
    mov ax, 0x73
    push ax
    mov ax, 0x32
    push ax
    call 0x18c2
    add sp, byte 6
    lea ax, word [bp - 0x0038]
    push ax
    push word [bp + 0x6]
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0038]
    push ax
    push word [bp + 0x8]
    mov ax, 1
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0038]
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0038]
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x42
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x48
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xcd
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, 0xa
    push ax
    call 0xe830
    add sp, byte 4
    mov word [bp - 0x003c], 0xffff
    mov word [bp - 0x003e], 0
    mov word [bp - 0x0040], 0
    mov word [bp - 0x0002], 0
    mov ax, 0
    mov cx, word [bp - 0x0002]
    cmp cx, word [bp - 0x003e]
    jne short 0x1dfd
    mov ax, 1
    push ax
    push cx
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    call 0x1a4b
    add sp, byte 8
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short 0x1def
    mov word [bp - 0x0042], 0
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0042]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x5e
    push ax
    call 0x1ad7
    add sp, byte 0x0a
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call 0x199c
    add sp, byte 4
    mov word [bp - 0x0044], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short 0x1e5a
    mov ax, word [bp - 0x0044]
    mov word [bp - 0x0024], ax
    mov word [bp - 0x0018], 0
    mov word [bp - 0x0022], 0xffff
    push ax
    push word [bp - 0x0022]
    push word [bp - 0x0018]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call 0xbf97
    add sp, byte 0x0e
    mov word [bp - 0x0012], 0
    push word [bp - 0x0012]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    call 0xbfd8
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0012]
    add ax, strict word 0x2e
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0012]
    add ax, strict word 0x2a
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    mov ax, 0
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    mov ax, 1
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0xb
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x4c
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x46
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    mov ax, 2
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0xd
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x36
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    mov ax, 3
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x42
    push ax
    mov ax, 4
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov word [bp - 0x0002], 0
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x31
    cbw
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1b
    push ax
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, word [bp - 0x000c]
    add ax, strict word 0x13
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 5
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short 0x1f9c
    mov ax, 0
    push ax
    mov ax, 0x46
    push ax
    mov ax, 0x87
    push ax
    mov ax, 0x52
    push ax
    mov ax, 0x74
    push ax
    mov ax, 0x46
    push ax
    mov ax, 0xc
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x57
    push ax
    mov ax, 0x9d
    push ax
    mov ax, 0x4b
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x32
    push ax
    mov ax, 0xd
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x41
    push ax
    mov ax, 0xbb
    push ax
    mov ax, 0x5f
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 0x43
    push ax
    mov ax, 0xe
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x45
    push ax
    mov ax, 0x89
    push ax
    mov ax, 0x87
    push ax
    mov ax, 0x77
    push ax
    mov ax, 0x6c
    push ax
    mov ax, 0xf
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x4d
    push ax
    mov ax, 0x9c
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0x7f
    push ax
    mov ax, 0x10
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x44
    push ax
    mov ax, 0xb9
    push ax
    mov ax, 0x81
    push ax
    mov ax, 0xa6
    push ax
    mov ax, 0x71
    push ax
    mov ax, 0x11
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short 0x20c0
    mov ax, word [bp - 0x0044]
    mov word [bp - 0x0020], ax
    mov word [bp - 0x0002], 0
    mov ax, 0
    push ax
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x62
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x12
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short 0x20c8
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0x19
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, 0x139
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    mov ax, 9
    push ax
    call 0xe8da
    add sp, byte 8
    mov word [0x90d6], 5
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    mov word [bp - 0x001c], 1
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call 0x1c11
    add sp, byte 4
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x001a], ax
    cmp word [0x59fc], byte 0
    je short 0x21b9
    mov ax, word [bp - 0x0022]
    cmp ax, word [bp - 0x0018]
    jl short 0x2182
    inc word [bp - 0x0022]
    mov ax, word [bp - 0x0022]
    cmp ax, strict word 0xffff
    je short 0x21a1
    cmp ax, word [bp - 0x0018]
    jl short 0x21a1
    mov ax, word [bp - 0x0018]
    add ax, word [bp - 0x0020]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp - 0x0022]
    cmp cx, ax
    jge short 0x21a7
    mov ax, word [bp - 0x0018]
    mov word [bp - 0x0022], ax
    mov word [0x5b3e], 1
    mov ax, word [bp - 0x0022]
    sub ax, word [bp - 0x0018]
    add ax, strict word 0x12
    mov word [bp - 0x001a], ax
    cmp word [0x5b3e], byte 1
    je short 0x21c3
    jmp near 0x2903
    mov ax, word [bp - 0x001a]
    jmp near 0x28f3
    lea ax, word [bp - 0x0010]
    push ax
    lea ax, word [bp - 0x000e]
    push ax
    call 0xf053
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0010]
    mov cx, word [bp - 0x0006]
    add cx, word [bp - 0x0012]
    add cx, byte 0x2a
    sub ax, cx
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0016], ax
    lea ax, word [bp - 0x0010]
    push ax
    lea ax, word [bp - 0x000e]
    push ax
    call 0xf053
    add sp, byte 4
    mov word [bp - 0x001e], ax
    push word [bp - 0x0014]
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0010]
    mov cx, word [bp - 0x0006]
    add cx, byte 0x2a
    sub ax, cx
    sub ax, word [bp - 0x0016]
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0012], ax
    cmp word [bp - 0x0044], byte 7
    jle short 0x224d
    mov cx, 0x64
    imul cx
    push ax
    mov ax, word [bp - 0x0014]
    imul cx
    add ax, strict word 0x64
    mov cx, word [bp - 0x0044]
    add cx, byte 0xfa
    cwd
    idiv cx
    mov cx, ax
    pop ax
    cwd
    idiv cx
    mov word [bp - 0x0018], ax
    push word [bp - 0x0024]
    push word [bp - 0x0022]
    push word [bp - 0x0018]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call 0xbf97
    add sp, byte 0x0e
    push word [bp - 0x0012]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    call 0xbfd8
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0012]
    add ax, strict word 0x2e
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0012]
    add ax, strict word 0x2a
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    mov ax, 0
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x4c
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call 0xe8da
    add sp, byte 8
    cmp word [bp - 0x001e], byte 0
    je short 0x22ed
    jmp near 0x21f7
    jmp near 0x2903
    cmp word [bp - 0x001a], byte 1
    jne short 0x2327
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    call 0xbeb8
    add sp, byte 0x0a
    cmp word [bp - 0x0018], byte 0
    jle short 0x2325
    dec word [bp - 0x0018]
    jmp short 0x235b
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x4c
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x46
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    call 0xbeb8
    add sp, byte 0x0a
    mov ax, word [bp - 0x0044]
    add ax, strict word 0xfff9
    cmp ax, word [bp - 0x0018]
    jle short 0x235b
    inc word [bp - 0x0018]
    cmp word [bp - 0x0044], byte 7
    jle short 0x238d
    push word [bp - 0x0014]
    mov ax, 0
    push ax
    mov ax, 0x64
    imul word [bp - 0x0014]
    add ax, strict word 0x64
    mov cx, word [bp - 0x0044]
    add cx, byte 0xf9
    cwd
    idiv cx
    imul word [bp - 0x0018]
    mov cx, 0x64
    cwd
    idiv cx
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0012], ax
    push word [bp - 0x0024]
    push word [bp - 0x0022]
    push word [bp - 0x0018]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call 0xbf97
    add sp, byte 0x0e
    push word [bp - 0x0012]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    call 0xbfd8
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0012]
    add ax, strict word 0x2e
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0012]
    add ax, strict word 0x2a
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    mov ax, 0
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x4c
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call 0xe8da
    add sp, byte 8
    jmp near 0x2903
    cmp word [bp + 0x8], byte 0
    jne short 0x2430
    jmp near 0x24d1
    cmp word [bp - 0x003c], byte 0
    jge short 0x2439
    jmp near 0x24c3
    cmp word [bp + 0xa], byte 0
    je short 0x247b
    mov ax, word [bp - 0x003e]
    cmp ax, word [bp - 0x0040]
    jle short 0x244a
    jmp near 0x24c3
    mov ax, 6
    imul word [bp - 0x003c]
    mov bx, ax
    mov al, byte [bx + 0x622]
    sub ah, ah
    mov cx, word [bp - 0x003e]
    inc cx
    imul cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov dx, word [bp - 0x0042]
    shl dx, 1
    shl dx, 1
    add ax, dx
    mov bx, ax
    mov cx, word [bx + 0x5c1c]
    pop ax
    cmp ax, cx
    jg short 0x24c3
    mov ax, 1
    push ax
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov word [0x9050], 0
    mov word [bp - 0x001c], 0
    cmp word [bp - 0x001c], byte 0
    je short 0x24d1
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp near 0x2903
    mov ax, 1
    push ax
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x42
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x42
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov word [0x9050], 1
    mov word [bp - 0x001c], 0
    jmp near 0x2903
    cmp word [bp - 0x001a], byte 5
    jge short 0x2528
    jmp near 0x267e
    cmp word [bp - 0x001a], byte 0x0b
    jle short 0x2531
    jmp near 0x267e
    mov ax, 0
    push ax
    push word [bp - 0x003e]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    call 0x1a4b
    add sp, byte 8
    mov ax, word [bp - 0x001a]
    add ax, strict word 0xfffb
    mov word [bp - 0x003e], ax
    mov ax, 1
    push ax
    push word [bp - 0x003e]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    call 0x1a4b
    add sp, byte 8
    cmp word [bp - 0x003c], byte 0
    jge short 0x2579
    jmp near 0x261b
    mov ax, 6
    push ax
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    push ax
    mov ax, 6
    imul word [bp - 0x003c]
    mov bx, ax
    mov al, byte [bx + 0x621]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0040], ax
    mov ax, 6
    imul word [bp - 0x003c]
    mov bx, ax
    mov al, byte [bx + 0x622]
    sub ah, ah
    mov cx, word [bp - 0x0040]
    inc cx
    imul cx
    mov word [bp - 0x0002], ax
    cmp word [bp + 0xa], byte 0
    jne short 0x25cd
    mov ax, 0x3e7
    jmp short 0x25ec
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short 0x25e9
    jmp short 0x25ec
    mov ax, word [bp - 0x0002]
    push ax
    mov ax, 6
    imul word [bp - 0x003c]
    mov bx, ax
    mov al, byte [bx + 0x622]
    sub ah, ah
    mov cx, word [bp - 0x003e]
    inc cx
    imul cx
    push ax
    push word [bp - 0x0042]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x5e
    push ax
    call 0x1ad7
    add sp, byte 0x0a
    jmp short 0x2637
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0042]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x5e
    push ax
    call 0x1ad7
    add sp, byte 0x0a
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1c
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x56
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xb
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1b
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x5e
    push ax
    call 0xe8da
    add sp, byte 8
    jmp near 0x28e7
    cmp word [bp - 0x001a], byte 0x0c
    jge short 0x2687
    jmp near 0x27b0
    cmp word [bp - 0x001a], byte 0x11
    jle short 0x2690
    jmp near 0x27b0
    mov ax, word [bp - 0x001a]
    add ax, strict word 0xfff4
    mov word [bp - 0x0042], ax
    mov word [bp - 0x003c], 0xffff
    push ax
    push word [bp + 0x4]
    call 0x199c
    add sp, byte 4
    mov word [bp - 0x0044], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short 0x26b7
    mov ax, word [bp - 0x0044]
    mov word [bp - 0x0024], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short 0x26c6
    mov ax, word [bp - 0x0044]
    mov word [bp - 0x0020], ax
    mov word [bp - 0x0018], 0
    mov word [bp - 0x0022], 0xffff
    push word [bp - 0x0024]
    push word [bp - 0x0022]
    push word [bp - 0x0018]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call 0xbf97
    add sp, byte 0x0e
    mov word [bp - 0x0012], 0
    push word [bp - 0x0012]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    call 0xbfd8
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0012]
    add ax, strict word 0x2e
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0012]
    add ax, strict word 0x2a
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    mov ax, 0
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0042]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x5e
    push ax
    call 0x1ad7
    add sp, byte 0x0a
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x4c
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1b
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x5e
    push ax
    call 0xe8da
    add sp, byte 8
    jmp near 0x28e7
    cmp word [bp - 0x001a], byte 0x12
    jge short 0x27b9
    jmp near 0x28e7
    mov ax, word [bp - 0x0020]
    add ax, strict word 0x12
    cmp ax, word [bp - 0x001a]
    jg short 0x27c7
    jmp near 0x28e7
    mov ax, word [bp - 0x0018]
    add ax, word [bp - 0x001a]
    add ax, strict word 0xffee
    mov word [bp - 0x0022], ax
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6efa]
    mov word [bp - 0x003c], ax
    push word [bp - 0x0024]
    push word [bp - 0x0022]
    push word [bp - 0x0018]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call 0xbf97
    add sp, byte 0x0e
    mov ax, 6
    push ax
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    push ax
    mov ax, 6
    imul word [bp - 0x003c]
    mov bx, ax
    mov al, byte [bx + 0x621]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0040], ax
    mov ax, 6
    imul word [bp - 0x003c]
    mov bx, ax
    mov al, byte [bx + 0x622]
    sub ah, ah
    mov cx, word [bp - 0x0040]
    inc cx
    imul cx
    mov word [bp - 0x0002], ax
    cmp word [bp + 0xa], byte 0
    jne short 0x2857
    mov ax, 0x3e7
    jmp short 0x2876
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short 0x2873
    jmp short 0x2876
    mov ax, word [bp - 0x0002]
    push ax
    mov ax, 6
    imul word [bp - 0x003c]
    mov bx, ax
    mov al, byte [bx + 0x622]
    sub ah, ah
    mov cx, word [bp - 0x003e]
    inc cx
    imul cx
    push ax
    push word [bp - 0x0042]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x5e
    push ax
    call 0x1ad7
    add sp, byte 0x0a
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x4c
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1b
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x5e
    push ax
    call 0xe8da
    add sp, byte 8
    jmp short 0x2903
    adc byte [bp + si + 0x37], dh
    jae short 0x2925
    jae short 0x295e
    je short 0x290d
    jne short 0x2931
    add ax, 0x7300
    or byte [bp + di - 0x1c2f], dl
    jmp [cs:bx + 0x7930]
    jmp near 0x251f
    cmp word [bp - 0x001c], byte 0
    je short 0x290c
    jmp near 0x2158
    mov ax, 1
    push ax
    push word [bp - 0x003a]
    call 0xc459
    add sp, byte 4
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x003e]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x003c]
    add ax, 0x100
    mov word [0x904e], ax
    mov ax, word [0x9050]
    ret
    mov ax, 0xfff6
    call 0xf40b
    call 0x108d
    mov ax, 1
    push ax
    push ax
    mov ax, 0x7ea
    push ax
    push word [bp + 0x4]
    call 0x1ca2
    add sp, byte 8
    mov word [bp - 0x0004], ax
    mov ax, word [0x904e]
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x0004], byte 1
    jne short 0x2975
    mov ax, 0xffff
    ret
    mov ax, word [bp - 0x0002]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], dx
    mov ax, 6
    imul dx
    mov bx, ax
    cmp byte [bx + 0x624], 1
    jne short 0x29c5
    call 0xceb1
    mov word [bp - 0x000a], ax
    cmp ax, strict word 0xffff
    jne short 0x29a1
    mov ax, 0xffff
    ret
    mov ax, 0x2c
    imul word [bp + 0x4]
    mov si, ax
    mov bx, word [0x8482]
    mov byte [bx + si + 0x1f], 0
    mov al, byte [bp - 0x000a]
    push ax
    mov ax, 0x2c
    imul word [bp + 0x4]
    mov si, ax
    mov bx, word [0x8482]
    pop ax
    mov byte [bx + si + 0x20], al
    mov ax, word [bp - 0x0008]
    cmp ax, strict word 0x13
    je short 0x29d7
    cmp ax, strict word 0x58
    je short 0x29d7
    cmp ax, strict word 0x42
    jne short 0x29e7
    mov ax, 0x2c
    imul word [bp + 0x4]
    mov si, ax
    mov bx, word [0x8482]
    mov byte [bx + si + 0x1f], 0
    mov ax, word [bp - 0x0006]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x0008]
    ret
    mov ax, 0xffe8
    call 0xf40b
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, strict word 0xb
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    dec ax
    push ax
    mov ax, word [bp + 0x8]
    dec ax
    push ax
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x0016], dx
    mov word [bp - 0x0018], ax
    lea ax, word [bp - 0x0014]
    push ax
    push word [bp + 0x4]
    call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    push ax
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    push ax
    push word [bp + 0x8]
    call 0xbce3
    add sp, byte 0x0a
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    inc ax
    inc ax
    push ax
    lea ax, word [bp - 0x0014]
    push ax
    call 0xfa90
    pop cx
    mov cx, ax
    mov ax, word [bp + 0xc]
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp + 0x8]
    inc ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0xc0
    push ax
    mov ax, 0x1a
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0014]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    push ax
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    push ax
    push word [bp + 0x8]
    call 0xe8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 0x0016]
    push word [bp - 0x0018]
    call 0xe94f
    add sp, byte 6
    ret
    mov ax, 0xfffc
    call 0xf40b
    mov word [bp - 0x0002], 0
    jmp near 0x2c45
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xe]
    jne short 0x2b44
    mov ax, 1
    push ax
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    add ax, strict word 0xd
    push ax
    mov ax, 6
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x1c
    push ax
    call 0xe901
    add sp, byte 0x0a
    mov word [bp - 0x0004], 0
    jmp short 0x2b49
    mov word [bp - 0x0004], 0xb4
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6eaa], byte 0
    je short 0x2b7f
    mov ax, 4
    push ax
    mov ax, 0x63
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0xf
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x6e82]
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    push word [bp - 0x0004]
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x1d
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    mov cx, 0x16
    imul cx
    add ax, 0x91a6
    push ax
    call 0x22
    add sp, byte 8
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6ca2], byte 0
    jle short 0x2c42
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x47
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xe]
    jne short 0x2c1c
    mov ax, word [bp - 0x0004]
    jmp short 0x2c1f
    mov ax, 2
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x6ca2]
    call 0xb2e7
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xa]
    jge short 0x2c50
    jmp near 0x2afd
    ret
    mov ax, 0
    call 0xf40b
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    push ax
    mov ax, 6
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0xbd98
    add sp, byte 8
    push word [bp + 0xe]
    push word [bp + 0xc]
    push word [bp + 0x10]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x2aef
    add sp, byte 0x0c
    ret
    mov ax, 0xffc8
    call 0xf40b
    mov word [0x904e], 0xffff
    mov word [bp - 0x0004], 0x37
    mov word [bp - 0x0006], 0x8f
    mov word [bp - 0x0008], 0x108
    mov word [bp - 0x000a], 0xc5
    mov word [bp - 0x0012], 0x16
    mov ax, 3
    cmp word [bp + 0xc], byte 3
    jge short 0x2cc3
    mov ax, word [bp + 0xc]
    mov word [bp - 0x0022], ax
    mov ax, 0x90c5
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0038], ax
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    call 0xbc9a
    add sp, byte 8
    cmp word [bp + 0x6], byte 0
    je short 0x2d0e
    lea ax, word [bp - 0x0036]
    push ax
    push word [bp + 0x4]
    call 0xb53b
    add sp, byte 4
    jmp short 0x2d1b
    push word [bp + 0xe]
    lea ax, word [bp - 0x0036]
    push ax
    call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x0036]
    push ax
    push word [bp + 0x6]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0036]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0036]
    push ax
    push word [bp + 0x8]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0036]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0036]
    push ax
    push word [bp + 0xa]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    mov word [bp - 0x0016], 0
    mov word [bp - 0x0020], 0xffff
    push word [bp - 0x0022]
    push word [bp - 0x0020]
    push word [bp - 0x0016]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x5d
    push ax
    call 0x2c51
    add sp, byte 0x0e
    mov word [bp - 0x0010], 0
    push word [bp - 0x0010]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc1
    push ax
    call 0xbfd8
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0010]
    add ax, strict word 0x12
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0010]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc1
    push ax
    mov ax, 0
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0xc
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc1
    push ax
    mov ax, 1
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0xb
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2a
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc1
    push ax
    mov ax, 2
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0xf
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    mov ax, 3
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0xd
    push ax
    mov ax, 0x55
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    mov ax, 4
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2f
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    mov ax, 5
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 3
    cmp word [bp + 0xc], byte 3
    jge short 0x2f16
    mov ax, word [bp + 0xc]
    mov word [bp - 0x001e], ax
    mov word [bp - 0x0002], 0
    jmp short 0x2f5d
    mov ax, 0
    push ax
    push ax
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x13
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xb9
    push ax
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x5d
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 6
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x001e]
    jl short 0x2f20
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp - 0x001e]
    add ax, strict word 6
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0xc6
    push ax
    mov ax, 0x139
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 9
    push ax
    call 0xe8da
    add sp, byte 8
    mov word [bp - 0x001a], 1
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x0018], ax
    cmp word [0x59fc], byte 0
    je short 0x2fee
    mov ax, word [bp - 0x0020]
    cmp ax, word [bp - 0x0016]
    jl short 0x2fb7
    inc word [bp - 0x0020]
    mov ax, word [bp - 0x0020]
    cmp ax, strict word 0xffff
    je short 0x2fd6
    cmp ax, word [bp - 0x0016]
    jl short 0x2fd6
    mov ax, word [bp - 0x0016]
    add ax, word [bp - 0x001e]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp - 0x0020]
    cmp cx, ax
    jge short 0x2fdc
    mov ax, word [bp - 0x0016]
    mov word [bp - 0x0020], ax
    mov word [0x5b3e], 1
    mov ax, word [bp - 0x0020]
    sub ax, word [bp - 0x0016]
    add ax, strict word 6
    mov word [bp - 0x0018], ax
    cmp word [0x5b3e], byte 1
    je short 0x2ff8
    jmp near 0x33bb
    mov ax, word [bp - 0x0018]
    jmp near 0x33ac
    lea ax, word [bp - 0x000e]
    push ax
    lea ax, word [bp - 0x000c]
    push ax
    call 0xf053
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x000e]
    mov cx, word [bp - 0x0006]
    add cx, word [bp - 0x0010]
    add cx, byte 0x0e
    sub ax, cx
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0014], ax
    lea ax, word [bp - 0x000e]
    push ax
    lea ax, word [bp - 0x000c]
    push ax
    call 0xf053
    add sp, byte 4
    mov word [bp - 0x001c], ax
    push word [bp - 0x0012]
    mov ax, 0
    push ax
    mov ax, word [bp - 0x000e]
    mov cx, word [bp - 0x0006]
    add cx, byte 0x0e
    sub ax, cx
    sub ax, word [bp - 0x0014]
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0010], ax
    cmp word [bp + 0xc], byte 3
    jle short 0x3081
    mov cx, 0x64
    imul cx
    push ax
    mov ax, word [bp - 0x0012]
    imul cx
    add ax, strict word 0x64
    mov cx, word [bp + 0xc]
    dec cx
    dec cx
    cwd
    idiv cx
    mov cx, ax
    pop ax
    cwd
    idiv cx
    mov word [bp - 0x0016], ax
    push word [bp - 0x0022]
    push word [bp - 0x0020]
    push word [bp - 0x0016]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x5d
    push ax
    call 0x2c51
    add sp, byte 0x0e
    push word [bp - 0x0010]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc1
    push ax
    call 0xbfd8
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0010]
    add ax, strict word 0x12
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0010]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc1
    push ax
    mov ax, 0
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x5d
    push ax
    call 0xe8da
    add sp, byte 8
    cmp word [bp - 0x001c], byte 0
    je short 0x3121
    jmp near 0x302c
    jmp near 0x33bb
    cmp word [bp - 0x0018], byte 1
    jne short 0x315b
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0xc
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc1
    push ax
    call 0xbeb8
    add sp, byte 0x0a
    cmp word [bp - 0x0016], byte 0
    jle short 0x3159
    dec word [bp - 0x0016]
    jmp short 0x318f
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2a
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc1
    push ax
    call 0xbeb8
    add sp, byte 0x0a
    mov ax, word [bp + 0xc]
    dec ax
    dec ax
    dec ax
    cmp ax, word [bp - 0x0016]
    jle short 0x318f
    inc word [bp - 0x0016]
    cmp word [bp + 0xc], byte 3
    jle short 0x31c1
    push word [bp - 0x0012]
    mov ax, 0
    push ax
    mov ax, 0x64
    imul word [bp - 0x0012]
    add ax, strict word 0x64
    mov cx, word [bp + 0xc]
    dec cx
    dec cx
    dec cx
    cwd
    idiv cx
    imul word [bp - 0x0016]
    mov cx, 0x64
    cwd
    idiv cx
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0010], ax
    push word [bp - 0x0022]
    push word [bp - 0x0020]
    push word [bp - 0x0016]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x5d
    push ax
    call 0x2c51
    add sp, byte 0x0e
    push word [bp - 0x0010]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc1
    push ax
    call 0xbfd8
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0010]
    add ax, strict word 0x12
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0010]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc1
    push ax
    mov ax, 0
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x5d
    push ax
    call 0xe8da
    add sp, byte 8
    jmp near 0x33bb
    cmp word [bp + 0x6], byte 0
    je short 0x32a9
    mov ax, 1
    push ax
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov word [0x9050], 0
    mov word [bp - 0x001a], 0
    jmp near 0x33bb
    cmp word [bp + 0x8], byte 0
    je short 0x32fa
    mov ax, 1
    push ax
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov word [0x9050], 1
    mov word [bp - 0x001a], 0
    jmp near 0x33bb
    cmp word [bp + 0xa], byte 0
    je short 0x334b
    mov ax, 1
    push ax
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov word [0x9050], 2
    mov word [bp - 0x001a], 0
    jmp short 0x33bb
    mov ax, word [bp - 0x0016]
    add ax, word [bp - 0x0018]
    add ax, strict word 0xfffa
    mov word [bp - 0x0020], ax
    push word [bp - 0x0022]
    push ax
    push word [bp - 0x0016]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x5d
    push ax
    call 0x2c51
    add sp, byte 0x0e
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xb9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x5d
    push ax
    call 0xe8da
    add sp, byte 8
    jmp short 0x33bb
    inc bp
    sub byte [bp + di - 0x007f], 0x6b
    and word [bp + si - 0x0c7e], strict word 0x4482
    cmp word [di], byte 6
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7c19]
    jmp short 0x334d
    cmp word [bp - 0x001a], byte 0
    je short 0x33c4
    jmp near 0x2f99
    mov ax, 1
    push ax
    push word [bp - 0x0038]
    call 0xc459
    add sp, byte 4
    mov ax, word [bp - 0x0020]
    mov word [0x904e], ax
    mov ax, word [0x9050]
    ret
    mov ax, 0xff6c
    call 0xf40b
    mov word [bp - 0x006a], 0
    mov word [bp - 0x004e], 0
    mov word [bp - 0x0050], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x004e]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0050]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x5c34], byte 0
    jg short 0x341a
    jmp near 0x354b
    mov ax, 0
    push ax
    push word [bx + 0x5c34]
    lea ax, word [bp - 0x004a]
    push ax
    mov ax, 1
    push ax
    call 0xb63c
    add sp, byte 8
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x004e]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0050]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 0x80
    je short 0x3471
    lea ax, word [bp - 0x004a]
    push ax
    mov ax, 0x16
    imul word [bp - 0x006a]
    add ax, 0x91a6
    push ax
    call 0xf364
    add sp, byte 4
    jmp short 0x34ab
    mov ax, 0x16
    imul word [bp - 0x006a]
    add ax, 0x91a6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x004e]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0050]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c39]
    sub ah, ah
    add ax, 0x1770
    push ax
    call 0xb53b
    add sp, byte 4
    mov al, byte [bp - 0x0011]
    sub ah, ah
    mov cx, word [bp - 0x006a]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6e82], ax
    mov ax, word [bp - 0x004e]
    mov word [bx - 0x6eaa], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x004e]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0050]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c38]
    sub ah, ah
    mov bx, ax
    cmp byte [bx + 0x60e], 1
    jne short 0x3524
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x004e]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0050]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3a]
    sub ah, ah
    mov cx, word [bp - 0x006a]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6ca2], ax
    jmp short 0x3531
    mov ax, word [bp - 0x006a]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6ca2], 0
    mov ax, word [bp - 0x004e]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x0050]
    mov cx, word [bp - 0x006a]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x0092], ax
    inc word [bp - 0x006a]
    inc word [bp - 0x0050]
    mov ax, word [bp - 0x0050]
    cmp ax, strict word 0xa
    jge short 0x3559
    jmp near 0x33f0
    inc word [bp - 0x004e]
    mov ax, word [bp - 0x004e]
    cmp ax, strict word 2
    jge short 0x3567
    jmp near 0x33eb
    cmp word [bp - 0x006a], byte 0
    jne short 0x3571
    mov ax, 0xffff
    ret
    call 0x108d
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    push word [bp - 0x006a]
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0xbd6
    push ax
    call 0x2c92
    add sp, byte 0x0c
    mov word [bp - 0x004c], ax
    mov ax, word [0x904e]
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x004c], byte 1
    jne short 0x35a8
    cmp ax, strict word 0xffff
    jne short 0x35c2
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0xffff
    ret
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0092]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x004e], ax
    mov word [bp - 0x0050], dx
    mov ax, 0x10
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0x96
    push ax
    mov ax, 0x3f
    push ax
    push word [bp - 0x004c]
    mov ax, word [bp - 0x004c]
    add ax, 0xbd6
    push ax
    call 0x29f2
    add sp, byte 0x0c
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x004e]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0050]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    push word [bx + 0x5c34]
    lea ax, word [bp - 0x004a]
    push ax
    mov ax, 1
    push ax
    call 0xb63c
    add sp, byte 8
    cmp word [bp - 0x0028], byte 0
    je short 0x369f
    mov ax, word [bp - 0x0028]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x0054], ax
    mov word [bp - 0x0052], dx
    mov ax, 6
    imul dx
    mov bx, ax
    cmp byte [bx + 0x624], 1
    jne short 0x369f
    call 0xceb1
    mov word [bp - 0x0094], ax
    cmp ax, strict word 0xffff
    jne short 0x367a
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0xffff
    ret
    mov ax, 0x2c
    imul word [bp + 0x4]
    mov si, ax
    mov bx, word [0x8482]
    mov byte [bx + si + 0x1f], 0
    mov al, byte [bp - 0x0094]
    push ax
    mov ax, 0x2c
    imul word [bp + 0x4]
    mov si, ax
    mov bx, word [0x8482]
    pop ax
    mov byte [bx + si + 0x20], al
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x004e]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x0050]
    ret
api_idx_0006_3:
    mov ax, 0xfffa
    call 0xf40b
    mov word [bp - 0x0002], 0xffff
    mov word [bp - 0x0006], 0
    mov ax, 8
    push ax
    call 0xb7a9
    pop cx
    inc ax
    mov word [bp - 0x0004], ax
    mov ax, word [bp - 0x0002]
    inc ax
    mov cx, 8
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    push dx
    push word [bp + 0x4]
    call 0xec74
    add sp, byte 4
    cmp ax, strict word 1
    jne short 0x36fd
    dec word [bp - 0x0004]
    jmp short 0x3700
    inc word [bp - 0x0006]
    cmp word [bp - 0x0004], byte 0
    jle short 0x370c
    cmp word [bp - 0x0006], byte 0x64
    jl short 0x36dc
    mov ax, word [bp - 0x0002]
    ret
api_idx_00d4:
    mov ax, 0xff2c
    call 0xf40b
    lea ax, word [bp - 0x00d4]
    push ax
    mov ax, 0xdaf
    push ax
    call 0xb53b
    add sp, byte 4
    mov word [bp - 0x0006], 0
    jmp near 0x38a5
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov cx, ax
    mov ax, word [0x8482]
    add ax, cx
    mov word [bp - 0x00aa], ax
    mov ax, 0xa
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x5e39]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    mov al, byte [bx + si + 0x29]
    cbw
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x00a4], ax
    cmp ax, strict word 1
    jge short 0x377f
    mov word [bp - 0x00a4], 1
    cmp word [bp - 0x00a4], byte 0x64
    jle short 0x378c
    mov word [bp - 0x00a4], 0x64
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x5e38]
    sub ah, ah
    mov cx, ax
    mov ax, word [bp - 0x00a4]
    cwd
    idiv cx
    mov word [bp - 0x00a6], ax
    mov bx, word [bp - 0x00aa]
    cmp byte [bx + 0x24], 0
    jbe short 0x37e5
    mov ax, word [bp - 0x00a4]
    mov cx, 2
    cwd
    idiv cx
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x14
    push ax
    call 0xb7a9
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, word [bp - 0x00a4]
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, word [bp - 0x00aa]
    mov byte [bx + 0x25], al
    mov bx, word [bp - 0x00aa]
    mov byte [bx + 0x21], 0
    mov bx, word [bp - 0x00aa]
    mov byte [bx + 0x1c], 0
    mov bx, word [bp - 0x00aa]
    mov byte [bx + 0x1d], 1
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x5e38]
    sub ah, ah
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    mov al, byte [bx + si + 0x29]
    cbw
    mov cx, 0xa
    cwd
    idiv cx
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x00a8], ax
    cmp ax, strict word 1
    jge short 0x3836
    mov word [bp - 0x00a8], 1
    cmp word [bp - 0x00a8], byte 4
    jle short 0x3843
    mov word [bp - 0x00a8], 4
    mov word [bp - 0x00a2], 0
    mov ax, word [bp - 0x00a2]
    cmp ax, word [bp - 0x00a8]
    jge short 0x3870
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 2
    jae short 0x3870
    cmp byte [bx + 0x5d5d], 0
    ja short 0x3870
    cmp byte [bx + 0x5d5c], 0
    jbe short 0x387e
    mov bx, word [bp - 0x00aa]
    mov si, word [bp - 0x00a2]
    mov byte [bx + si + 0x18], 0
    jmp short 0x3895
    mov al, byte [bp - 0x00a4]
    mov bx, word [bp - 0x00aa]
    mov si, word [bp - 0x00a2]
    mov byte [bx + si + 0x18], al
    mov ax, word [bp - 0x00a6]
    sub word [bp - 0x00a4], ax
    inc word [bp - 0x00a2]
    mov ax, word [bp - 0x00a2]
    cmp ax, strict word 4
    jl short 0x3849
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, word [0x69c8]
    jge short 0x38b1
    jmp near 0x372d
    mov ax, 0
    push ax
    mov ax, 0x2d
    push ax
    mov ax, 0x90d8
    push ax
    call 0xf306
    add sp, byte 6
    mov word [bp - 0x00b4], 0
    call 0xec17
    mov word [bp - 0x0006], 0
    mov ax, word [bp - 0x0006]
    cmp ax, word [0x69c8]
    jl short 0x38dd
    jmp near 0x445b
    push ax
    call 0xca85
    pop cx
    test ax, ax
    jne short 0x38e9
    jmp near 0x428e
    mov ax, word [bp - 0x0006]
    mov cx, word [bp - 0x00b4]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x00c0], ax
    inc word [bp - 0x00b4]
    mov cx, 0x2c
    imul cx
    mov cx, ax
    mov ax, word [0x8482]
    add ax, cx
    mov word [bp - 0x00aa], ax
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    cmp byte [bx + si + 0x1f], 1
    jb short 0x392b
    mov al, byte [bx + si + 0x1f]
    sub ah, ah
    cmp ax, word [0x8466]
    jle short 0x392f
    mov byte [bx + si + 0x1f], 1
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0028], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xb
    jl short 0x3934
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    cmp byte [bx + 0x5e2b], 7
    je short 0x3961
    mov word [bp - 0x001e], 0
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    cmp byte [bx + si + 0x2b], 0
    jne short 0x399a
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    cmp al, 3
    je short 0x399f
    cmp al, 0xd
    je short 0x399f
    cmp al, 4
    je short 0x399f
    cmp al, 6
    je short 0x399f
    cmp al, 0xc
    je short 0x399f
    cmp byte [bx + 0x5d7d], 0
    jne short 0x399f
    mov word [bp - 0x0024], 0
    mov word [bp - 0x0020], 0
    mov word [bp - 0x00ae], 0
    mov word [bp - 0x00ac], 0
    mov ax, 0x248
    imul word [bp - 0x0006]
    push ax
    mov ax, 0x78
    imul word [bp - 0x00ae]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x00ac]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x5c34], byte 0
    jle short 0x39de
    mov word [bp - 0x0020], 1
    inc word [bp - 0x00ac]
    mov ax, word [bp - 0x00ac]
    cmp ax, strict word 0xa
    jl short 0x39b0
    inc word [bp - 0x00ae]
    mov ax, word [bp - 0x00ae]
    cmp ax, strict word 2
    jl short 0x39aa
    cmp word [bp - 0x00b4], byte 2
    jge short 0x3a09
    mov word [bp - 0x0016], 0
    mov word [bp - 0x0014], 0
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    mov word [bp - 0x00ac], ax
    cmp ax, 0xff
    jne short 0x3a23
    jmp near 0x3b2b
    mov cx, 0xc
    imul cx
    add bx, ax
    cmp byte [bx + 0x5c38], 3
    je short 0x3a34
    jmp near 0x3b2b
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 0x20
    je short 0x3a42
    jmp near 0x3b2b
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x5d49]
    sub ah, ah
    mov word [bp - 0x00ae], ax
    cmp ax, 0xff
    jne short 0x3a5c
    jmp near 0x3b26
    imul cx
    add bx, ax
    cmp byte [bx + 0x5c38], 4
    je short 0x3a6f
    mov word [bp - 0x0028], 0
    jmp near 0x3b24
    mov ax, 0x248
    imul word [bp - 0x0006]
    push ax
    mov ax, word [bp - 0x00ac]
    imul cx
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c39]
    cmp al, 0xb
    jne short 0x3aab
    mov ax, 0x248
    imul word [bp - 0x0006]
    push ax
    mov ax, 0xc
    imul word [bp - 0x00ae]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c39]
    cmp al, 0x16
    je short 0x3aab
    jmp near 0x3b1f
    mov ax, 0x248
    imul word [bp - 0x0006]
    push ax
    mov ax, 0xc
    imul word [bp - 0x00ac]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c39]
    cmp al, 0xd
    jne short 0x3ae5
    mov ax, 0x248
    imul word [bp - 0x0006]
    push ax
    mov ax, 0xc
    imul word [bp - 0x00ae]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c39]
    cmp al, 0x17
    jne short 0x3b1f
    mov ax, 0x248
    imul word [bp - 0x0006]
    push ax
    mov ax, 0xc
    imul word [bp - 0x00ac]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c39]
    cmp al, 0xc
    jne short 0x3b24
    mov ax, 0x248
    imul word [bp - 0x0006]
    push ax
    mov ax, 0xc
    imul word [bp - 0x00ae]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c39]
    cmp al, 0x53
    je short 0x3b24
    mov word [bp - 0x0028], 0
    jmp short 0x3b2b
    mov word [bp - 0x0028], 0
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x5d31]
    sub ah, ah
    mov word [bp - 0x00b2], ax
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    mov al, byte [bx + si + 0x1f]
    sub ah, ah
    mov cx, word [bp - 0x00b2]
    shl cx, 1
    mov bx, cx
    mov cx, word [bx - 0x6c7a]
    cmp ax, cx
    jle short 0x3b63
    mov word [bp - 0x0028], 0
    cmp word [bp - 0x0006], byte 3
    jl short 0x3b7f
    cmp word [bp - 0x00b2], byte 0
    jne short 0x3b7f
    mov bx, word [0x8482]
    cmp byte [bx + si + 0x2b], 1
    je short 0x3b7f
    mov word [bp - 0x0028], 0
    mov bx, word [0x8482]
    mov al, byte [bx + si + 0x1f]
    sub ah, ah
    cmp ax, word [0x9388]
    jle short 0x3b93
    mov word [bp - 0x001e], 0
    mov word [bp - 0x0012], 0xffff
    mov word [bp - 0x0098], 0xffff
    mov byte [bx + si + 0x20], 0
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    mov al, byte [bx + si + 0x1f]
    sub ah, ah
    push ax
    call api_idx_0054
    pop cx
    mov ax, 1
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0xa0
    push ax
    mov ax, 0x248
    imul word [bp - 0x0006]
    add ax, 0x5bf4
    push ax
    call 0x149
    add sp, byte 8
    mov ax, 0x16
    push ax
    mov ax, 0x9a
    push ax
    mov ax, 0xa0
    push ax
    lea ax, word [bp - 0x00d4]
    push ax
    call 0x149
    add sp, byte 8
    mov word [bp - 0x009e], 0
    mov word [bp - 0x00a0], 0
    lea ax, word [bp - 0x0028]
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 3
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x2a
    push ax
    mov ax, 6
    push ax
    mov ax, 0xa6
    push ax
    mov ax, 0xe7
    push ax
    mov ax, 9
    push ax
    mov ax, 3
    push ax
    mov ax, 0xbb8
    push ax
    call 0x111b
    add sp, byte 0x18
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jge short 0x3c65
    mov word [bp - 0x009e], 1
    push ax
    cmp ax, strict word 0
    pop ax
    jge short 0x3c49
    neg ax
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    pop ax
    mov byte [bx + si + 0x1f], al
    mov ax, 0
    push ax
    call api_idx_0054
    pop cx
    jmp near 0x407b
    mov ax, word [bp - 0x0008]
    jmp near 0x406e

    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x1b, 0xc5, 0x59, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x93, 0x00, 0x50
    db 0xb8, 0xa0, 0x00, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x05, 0xf4, 0x5b, 0x50, 0xe8, 0xbd
    db 0xc4, 0x83, 0xc4, 0x08, 0xb8, 0x16, 0x00, 0x50, 0xb8, 0x9a, 0x00, 0x50, 0xb8, 0xa0, 0x00, 0x50
    db 0x8d, 0x86, 0x2c, 0xff, 0x50, 0xe8, 0xa6, 0xc4, 0x83, 0xc4, 0x08, 0xb8, 0x48, 0x02, 0xf7, 0x6e
    db 0xfa, 0x8b, 0xd8, 0x8a, 0x87, 0x48, 0x5d, 0x2a, 0xe4, 0x89, 0x86, 0x54, 0xff, 0x3d, 0xff, 0x00
    db 0x74, 0x1a, 0xb9, 0x0c, 0x00, 0xf7, 0xe9, 0x03, 0xd8, 0x80, 0xbf, 0x38, 0x5c, 0x03, 0x75, 0x0c
    db 0xc7, 0x86, 0x50, 0xff, 0x01, 0x00, 0xc7, 0x86, 0x68, 0xff, 0x08, 0x00, 0x83, 0xbe, 0x68, 0xff
    db 0xff, 0x74, 0x03, 0xe9, 0x97, 0x00, 0xc7, 0x86, 0x50, 0xff, 0x00, 0x00, 0xc7, 0x46, 0xfe, 0x00
    db 0x00, 0xff, 0x76, 0xfe, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x05, 0x33, 0x5d, 0x50, 0xe8, 0x78
    db 0xaf, 0x83, 0xc4, 0x04, 0x8b, 0x4e, 0xfe, 0xd1, 0xe1, 0x8b, 0xd9, 0x03, 0xdd, 0x89, 0x47, 0xba
    db 0x8b, 0x46, 0xfe, 0x3d, 0x04, 0x00, 0x74, 0x38, 0x83, 0x7e, 0xfa, 0x03, 0x7c, 0x32, 0x81, 0xbe
    db 0x54, 0xff, 0xff, 0x00, 0x74, 0x2a, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x50, 0xb8, 0x0c, 0x00
    db 0xf7, 0xae, 0x54, 0xff, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x8b, 0xd8, 0x80, 0xbf, 0x38, 0x5c, 0x02
    db 0x75, 0x0e, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0xc7, 0x47, 0xba, 0x00, 0x00
    db 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0x83, 0x7f, 0xba, 0x01, 0x75, 0x0b, 0xff
    db 0x86, 0x50, 0xff, 0x8b, 0x46, 0xfe, 0x89, 0x86, 0x68, 0xff, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe
    db 0x3d, 0x08, 0x00, 0x7d, 0x03, 0xe9, 0x79, 0xff, 0xc7, 0x46, 0xca, 0xff, 0xff, 0x83, 0xbe, 0x50
    db 0xff, 0x01, 0x7e, 0x3a, 0x8d, 0x46, 0xba, 0x50, 0xb8, 0x1b, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x2a, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50
    db 0xb8, 0xa6, 0x00, 0x50, 0xb8, 0xe7, 0x00, 0x50, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0xb8, 0xea, 0x0b, 0x50, 0xe8, 0x69, 0xd3, 0x83, 0xc4, 0x18, 0x89, 0x86, 0x68, 0xff, 0x83, 0xbe
    db 0x68, 0xff, 0xff, 0x75, 0x03, 0xe9, 0x82, 0x00, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x8b, 0xd8
    db 0x8a, 0x87, 0x31, 0x5d, 0x2a, 0xe4, 0x89, 0x86, 0x4e, 0xff, 0x3d, 0x02, 0x00, 0x75, 0x0d, 0x83
    db 0xbe, 0x68, 0xff, 0x04, 0x74, 0x06, 0xc7, 0x86, 0x4e, 0xff, 0x00, 0x00, 0xb8, 0x2c, 0x00, 0xf7
    db 0x6e, 0xfa, 0x8b, 0xf0, 0x8b, 0x1e, 0x82, 0x84, 0x8a, 0x40, 0x1f, 0x2a, 0xe4, 0x8b, 0x8e, 0x4e
    db 0xff, 0xd1, 0xe1, 0x8b, 0xd9, 0x8b, 0x8f, 0x86, 0x93, 0x3b, 0xc1, 0x7e, 0x0e, 0xb8, 0x00, 0x00
    db 0x50, 0xe8, 0xd1, 0x79, 0x59, 0xc7, 0x86, 0x62, 0xff, 0x01, 0x00, 0x83, 0xbe, 0x4e, 0xff, 0x00
    db 0x75, 0x26, 0x83, 0x7e, 0xfa, 0x03, 0x7c, 0x20, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xfa, 0x8b, 0xf0
    db 0x8b, 0x1e, 0x82, 0x84, 0x80, 0x78, 0x2b, 0x01, 0x74, 0x0e, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xa4
    db 0x79, 0x59, 0xc7, 0x86, 0x62, 0xff, 0x01, 0x00, 0xeb, 0x06, 0xc7, 0x86, 0x62, 0xff, 0x01, 0x00
    db 0xe9, 0x2d, 0x02, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x38, 0xc3, 0x59, 0xb8, 0x01, 0x00, 0x50, 0xb8
    db 0x93, 0x00, 0x50, 0xb8, 0xa0, 0x00, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x05, 0xf4, 0x5b
    db 0x50, 0xe8, 0xda, 0xc2, 0x83, 0xc4, 0x08, 0xb8, 0x16, 0x00, 0x50, 0xb8, 0x9a, 0x00, 0x50, 0xb8
    db 0xa0, 0x00, 0x50, 0x8d, 0x86, 0x2c, 0xff, 0x50, 0xe8, 0xc3, 0xc2, 0x83, 0xc4, 0x08, 0xc7, 0x46
    db 0xfe, 0x00, 0x00, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0xc7, 0x47, 0xd8, 0x01
    db 0x00, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3d, 0x04, 0x00, 0x7c, 0xe7, 0xc7, 0x46, 0xd8, 0x00
    db 0x00, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x8b, 0xd8, 0x8a, 0x87, 0x49, 0x5d, 0x2a, 0xe4, 0x89
    db 0x86, 0x54, 0xff, 0x3d, 0xff, 0x00, 0x74, 0x13, 0xb9, 0x0c, 0x00, 0xf7, 0xe9, 0x03, 0xd8, 0x80
    db 0xbf, 0x38, 0x5c, 0x0b, 0x75, 0x05, 0xc7, 0x46, 0xd8, 0x01, 0x00, 0xc7, 0x46, 0xe0, 0xff, 0xff
    db 0x8d, 0x46, 0xd8, 0x50, 0xb8, 0x1b, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50
    db 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x2a, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0xa6, 0x00, 0x50
    db 0xb8, 0xe7, 0x00, 0x50, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x1c, 0x0c, 0x50
    db 0xe8, 0x0d, 0xd2, 0x83, 0xc4, 0x18, 0x89, 0x86, 0x68, 0xff, 0x3d, 0xff, 0xff, 0x75, 0x06, 0xc7
    db 0x86, 0x62, 0xff, 0x01, 0x00, 0xe9, 0x58, 0x01, 0xe9, 0x55, 0x01, 0xb8, 0x00, 0x00, 0x50, 0xe8
    db 0x60, 0xc2, 0x59, 0xb8, 0x16, 0x00, 0x50, 0xb8, 0x9a, 0x00, 0x50, 0xb8, 0xa0, 0x00, 0x50, 0x8d
    db 0x86, 0x2c, 0xff, 0x50, 0xe8, 0x07, 0xc2, 0x83, 0xc4, 0x08, 0xff, 0x76, 0xfa, 0xe8, 0xfc, 0xe9
    db 0x59, 0x89, 0x86, 0x68, 0xff, 0x3d, 0xff, 0xff, 0x75, 0x06, 0xc7, 0x86, 0x62, 0xff, 0x01, 0x00
    db 0xe9, 0x1d, 0x01, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x28, 0xc2, 0x59, 0xb8, 0x16, 0x00, 0x50, 0xb8
    db 0x9a, 0x00, 0x50, 0xb8, 0xa0, 0x00, 0x50, 0x8d, 0x86, 0x2c, 0xff, 0x50, 0xe8, 0xcf, 0xc1, 0x83
    db 0xc4, 0x08, 0xff, 0x76, 0xfa, 0xe8, 0x58, 0xf4, 0x59, 0x89, 0x86, 0x68, 0xff, 0x3d, 0xff, 0xff
    db 0x75, 0x06, 0xc7, 0x86, 0x62, 0xff, 0x01, 0x00, 0xe9, 0xe5, 0x00, 0xe8, 0x18, 0x8f, 0x89, 0x86
    db 0x68, 0xff, 0x3d, 0xff, 0xff, 0x75, 0x06, 0xc7, 0x86, 0x62, 0xff, 0x01, 0x00, 0xe9, 0xd0, 0x00
    db 0xe9, 0xcd, 0x00, 0xc7, 0x86, 0x68, 0xff, 0x08, 0x00, 0xe9, 0xc4, 0x00, 0xe9, 0xc1, 0x00, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x2d, 0x00, 0x50, 0xb8, 0xd8, 0x90, 0x50, 0xe8, 0x3d, 0xb3, 0x83, 0xc4
    db 0x06, 0xc7, 0x86, 0x66, 0xff, 0x00, 0x00, 0xeb, 0x33, 0xb8, 0x2c, 0x00, 0xf7, 0xae, 0x66, 0xff
    db 0x8b, 0xf0, 0x8b, 0x1e, 0x82, 0x84, 0x80, 0x78, 0x1f, 0x00, 0x76, 0x1c, 0x8a, 0x40, 0x1f, 0x2a
    db 0xe4, 0xb9, 0x09, 0x00, 0xf7, 0xe9, 0x50, 0x8a, 0x40, 0x20, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x03
    db 0xc1, 0x8b, 0xd8, 0xc6, 0x87, 0xd8, 0x90, 0x01, 0xff, 0x86, 0x66, 0xff, 0x8b, 0x46, 0xfa, 0x48
    db 0x3b, 0x86, 0x66, 0xff, 0x7f, 0xc3, 0x8b, 0x86, 0x4c, 0xff, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd
    db 0x8b, 0x87, 0x3c, 0xff, 0x48, 0x89, 0x46, 0xfa, 0xff, 0x8e, 0x4c, 0xff, 0xff, 0x8e, 0x4c, 0xff
    db 0xc7, 0x86, 0x60, 0xff, 0x01, 0x00, 0xeb, 0x48, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x2d, 0x00, 0x50
    db 0xb8, 0xd8, 0x90, 0x50, 0xe8, 0xc4, 0xb2, 0x83, 0xc4, 0x06, 0xc7, 0x46, 0xfa, 0xff, 0xff, 0xc7
    db 0x86, 0x60, 0xff, 0x01, 0x00, 0xc7, 0x86, 0x4c, 0xff, 0x00, 0x00, 0xeb, 0x23, 0xb2, 0x8c, 0x95
    db 0x8e, 0xf2, 0x8f, 0x6d, 0x8f, 0xa5, 0x8f, 0xf5, 0x8f, 0xfe, 0x8f, 0xdd, 0x8f, 0x6a, 0x8f, 0x01
    db 0x90, 0x7a, 0x90

    cmp ax, strict word 0xb
    jae short 0x407b
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6f61]
    cmp word [bp - 0x009e], byte 1
    jne short 0x4085
    jmp near 0x390e
    mov ax, 0
    push ax
    call api_idx_0006
    pop cx
    mov ax, 0x16
    push ax
    mov ax, 0x9a
    push ax
    mov ax, 0xa0
    push ax
    lea ax, word [bp - 0x00d4]
    push ax
    call 0x149
    add sp, byte 8
    mov ax, 0
    push ax
    call 0x2af
    pop cx
    mov ax, 0x32
    push ax
    call 0xe489
    pop cx
    cmp word [bp - 0x00a0], byte 0
    je short 0x40be
    jmp near 0x428e
    mov ax, word [bp - 0x0098]
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    pop ax
    mov word [bx + si + 0xa], ax
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    mov word [bx + si + 0xc], 0xffff
    mov al, byte [bp - 0x0008]
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    pop ax
    mov byte [bx + si + 0x1e], al
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    mov al, byte [bx + si + 0x1f]
    sub ah, ah
    mov word [bp - 0x009a], ax
    cmp ax, strict word 1
    jl short 0x4138
    cmp ax, strict word 5
    jg short 0x4138
    mov al, byte [bp - 0x009a]
    sub ah, ah
    push ax
    push word [bp - 0x0006]
    call api_idx_000c
    add sp, byte 4
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    pop ax
    mov byte [bx + si + 0x20], al
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x5d49]
    sub ah, ah
    mov word [bp - 0x00ac], ax
    cmp word [bp - 0x0008], byte 0
    je short 0x4153
    jmp near 0x428e
    cmp ax, 0xff
    jne short 0x418d
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    cmp ax, 0xff
    jne short 0x418d
    add bx, strict word 0x5d33
    mov ax, bx
    push ax
    call api_idx_0006_3
    pop cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short 0x418a
    mov ax, word [bp - 0x0002]
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    pop ax
    mov word [bx + si + 0xc], ax
    jmp near 0x428e
    cmp word [bp - 0x00ac], strict word 0xff
    jne short 0x4198
    jmp near 0x428e
    mov ax, 0x248
    imul word [bp - 0x0006]
    push ax
    mov ax, 0xc
    imul word [bp - 0x00ac]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    cmp byte [bx + 0x5c38], 3
    jne short 0x41d3
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 0x20
    je short 0x41d3
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    mov word [bx + si + 0xc], 8
    jmp near 0x428e
    mov ax, 0x248
    imul word [bp - 0x0006]
    push ax
    mov ax, 0xc
    imul word [bp - 0x00ac]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c38]
    cmp al, 2
    je short 0x41f8
    cmp al, 0xc
    je short 0x41f8
    cmp al, 0x10
    jne short 0x420c
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    mov word [bx + si + 0xc], 4
    jmp near 0x428e
    mov ax, 0x248
    imul word [bp - 0x0006]
    push ax
    mov ax, 0xc
    imul word [bp - 0x00ac]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    cmp byte [bx + 0x5c38], 2
    jae short 0x428e
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    cmp byte [bx + 0x5d43], 1
    je short 0x4244
    cmp word [bp - 0x0006], byte 3
    jge short 0x428e
    cmp word [bp - 0x009a], byte 3
    jge short 0x428e
    mov word [bp - 0x000a], 0
    mov ax, 0x248
    imul word [bp - 0x0006]
    add ax, 0x5d45
    push ax
    call api_idx_0006_3
    pop cx
    mov word [bp - 0x0002], ax
    inc word [bp - 0x000a]
    cmp word [bp - 0x0002], byte 4
    jne short 0x4269
    cmp word [bp - 0x000a], byte 0x0a
    jl short 0x4249
    cmp word [bp - 0x0002], byte 4
    jne short 0x4274
    mov word [bp - 0x0002], 0xffff
    cmp word [bp - 0x0002], byte 0xff
    je short 0x428e
    mov ax, word [bp - 0x0002]
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    pop ax
    mov word [bx + si + 0xc], ax
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, word [0x69c8]
    je short 0x429d
    jmp near 0x4458
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    lea ax, word [bp - 0x0096]
    push ax
    mov ax, 0xdb2
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 0x99
    push ax
    mov ax, 0xa0
    push ax
    lea ax, word [bp - 0x0096]
    push ax
    call 0x149
    add sp, byte 8
    mov ax, 3
    push ax
    call 0x2af
    pop cx
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0028], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 3
    jl short 0x42d8
    cmp word [bp - 0x00b4], byte 0
    jne short 0x42fd
    mov word [bp - 0x0026], 0
    mov word [bp - 0x0022], 0xffff
    call 0xec17
    lea ax, word [bp - 0x0028]
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x78
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0xa6
    push ax
    mov ax, 0x69
    push ax
    push ax
    mov ax, 1
    push ax
    mov ax, 0xdb3
    push ax
    call 0x111b
    add sp, byte 0x18
    mov word [bp - 0x0002], ax
    cmp ax, strict word 2
    je short 0x4343
    jmp near 0x43e6
    mov ax, 5
    push ax
    call 0xb75e
    pop cx
    mov word [bp - 0x0006], 0
    jmp near 0x43d6
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    cmp byte [bx + si + 0x22], 3
    je short 0x43d3
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    mov word [bx + 0x5c0c], 0
    mov word [bx + 0x5c10], 0
    mov byte [bx + 0x5e2f], 3
    mov bx, word [0x8482]
    mov word [bx + si + 0x2], 0
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    mov word [bx + si + 0x6], 0
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    mov byte [bx + si + 0x22], 3
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x5e2c]
    sub ah, ah
    add ax, strict word 8
    push ax
    call 0xb7e0
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    call 0xcb3a
    add sp, byte 4
    mov ax, 8
    push ax
    call 0xb75e
    pop cx
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, word [0x69c8]
    jge short 0x43e2
    jmp near 0x4353
    mov ax, 1
    ret
    cmp word [bp - 0x0002], byte 1
    jne short 0x4458
    mov ax, 0
    push ax
    mov ax, 0x2d
    push ax
    mov ax, 0x90d8
    push ax
    call 0xf306
    add sp, byte 6
    mov word [bp - 0x009a], 0
    jmp short 0x4439
    mov ax, 0x2c
    imul word [bp - 0x009a]
    mov si, ax
    mov bx, word [0x8482]
    cmp byte [bx + si + 0x1f], 0
    jbe short 0x4435
    mov al, byte [bx + si + 0x1f]
    sub ah, ah
    mov cx, 9
    imul cx
    push ax
    mov al, byte [bx + si + 0x20]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov byte [bx - 0x6f28], 1
    inc word [bp - 0x009a]
    mov ax, word [0x69c8]
    dec ax
    cmp ax, word [bp - 0x009a]
    jg short 0x4406
    mov ax, word [bp - 0x00b4]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x00c2]
    mov word [bp - 0x0006], ax
    dec word [bp - 0x00b4]
    jmp near 0x38d1
    mov word [bp - 0x0006], 0
    jmp near 0x4518
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    cmp byte [bx + si + 0xf], 0
    jbe short 0x44a8
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x5d6a]
    sub ah, ah
    mov cx, ax
    add ax, strict word 0x50
    mov cx, ax
    pop ax
    cmp ax, cx
    jle short 0x44a8
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    mov byte [bx + si + 0x1e], 6
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    cmp byte [bx + si + 0x1e], 1
    je short 0x44c0
    cmp byte [bx + si + 0x1e], 7
    jne short 0x44c4
    mov byte [bx + si + 0x18], 1
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    cmp byte [bx + si + 0x1e], 0
    jne short 0x44f2
    cmp word [bx + si + 0xc], byte 0xff
    jne short 0x44f0
    mov byte [bx + si + 0x19], 0
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    mov byte [bx + si + 0x1b], 0
    jmp short 0x4515
    mov word [bp - 0x0002], 1
    mov ax, 0x2c
    imul word [bp - 0x0006]
    add ax, word [bp - 0x0002]
    mov si, ax
    mov bx, word [0x8482]
    mov byte [bx + si + 0x18], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short 0x44f7
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, word [0x69c8]
    jge short 0x4524
    jmp near 0x4463
    mov ax, 0
    ret
api_idx_0004_2:
    mov ax, 0xfffc
    call 0xf40b
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
    jmp short 0x4599
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov ax, word [bx + si + 0x4]
    mov cx, word [bx + si + 0x2]
    sub ax, cx
    cmp ax, word [bp - 0x0004]
    jle short 0x4596
    mov ax, 2
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0x4596
    mov al, byte [bp + 0x6]
    mov bx, word [bp + 0x4]
    mov byte [bx + 0x1f], al
    mov al, byte [bp - 0x0002]
    mov bx, word [bp + 0x4]
    mov byte [bx + 0x20], al
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov ax, word [bx + si + 0x4]
    mov cx, word [bx + si + 0x2]
    sub ax, cx
    mov word [bp - 0x0004], ax
    inc word [bp - 0x0002]
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0002]
    jg short 0x453a
    mov ax, word [bp - 0x0004]
    ret
api_idx_0002:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si + 0x86], 0
    je short 0x45e0
    mov ax, 2
    push ax
    call 0xb7a9
    pop cx
    cmp ax, strict word 1
    jne short 0x45ef
    mov ax, word [bp - 0x0002]
    inc ax
    mov cx, 3
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    jmp short 0x45be
    mov ax, word [bp - 0x0002]
    ret
api_idx_0024:
    mov ax, 0xffdc
    call 0xf40b
    mov word [bp - 0x001e], 0
    mov word [bp - 0x0020], 0
    mov word [bp - 0x0022], 0
    mov word [bp - 0x0024], 0
    mov word [bp - 0x0004], 0
    jmp short 0x4638
    push word [bp - 0x0004]
    call 0xca85
    pop cx
    test ax, ax
    je short 0x4635
    mov ax, 0x2c
    imul word [bp - 0x0004]
    mov si, ax
    mov bx, word [0x8482]
    mov ax, word [bx + si + 0x2]
    cwd
    add word [bp - 0x0020], ax
    adc word [bp - 0x001e], dx
    inc word [bp - 0x0004]
    mov bx, word [0x8482]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0004]
    jg short 0x4614
    mov word [bp - 0x0004], 0
    jmp short 0x4667
    mov ax, 0x2c
    imul word [bp - 0x0004]
    mov si, ax
    mov bx, word [0x848e]
    mov ax, word [bx + si + 0x2]
    cwd
    add word [bp - 0x0020], ax
    adc word [bp - 0x001e], dx
    inc word [bp - 0x0004]
    mov bx, word [0x848e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0004]
    jg short 0x464e
    mov word [bp - 0x0004], 1
    jmp short 0x46bd
    mov word [bp - 0x0006], 0
    jmp short 0x46a4
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov ax, word [bx + si + 0x2]
    cwd
    add word [bp - 0x0024], ax
    adc word [bp - 0x0022], dx
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0006]
    jg short 0x4684
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, word [0x8466]
    jle short 0x467d
    cmp word [bp + 0x4], byte 6
    jne short 0x470b
    mov ax, word [bp - 0x0024]
    mov dx, word [bp - 0x0022]
    push ax
    xchg dx, ax
    mov bx, 0x64
    mul bx
    mov cx, ax
    pop ax
    mul bx
    add dx, cx
    mov cx, word [bp - 0x0020]
    mov bx, word [bp - 0x001e]
    call 0xf99f
    mov cx, 0x19
    mov bx, 0
    call 0xf99f
    push ax
    xchg dx, ax
    mov bx, 5
    mul bx
    mov cx, ax
    pop ax
    mul bx
    add dx, cx
    add ax, strict word 0xffec
    adc dx, byte 0xff
    mov word [bp - 0x001c], ax
    jmp short 0x4748
    mov ax, word [bp - 0x0020]
    mov dx, word [bp - 0x001e]
    push ax
    xchg dx, ax
    mov bx, 0x64
    mul bx
    mov cx, ax
    pop ax
    mul bx
    add dx, cx
    mov cx, word [bp - 0x0024]
    mov bx, word [bp - 0x0022]
    call 0xf99f
    mov cx, 0x19
    mov bx, 0
    call 0xf99f
    push ax
    xchg dx, ax
    mov bx, 5
    mul bx
    mov cx, ax
    pop ax
    mul bx
    add dx, cx
    add ax, strict word 0xffec
    adc dx, byte 0xff
    mov word [bp - 0x001c], ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov al, byte [bx + 0xe2]
    sub ah, ah
    test ax, 1
    je short 0x478e
    cmp word [bp - 0x001c], byte 0
    jge short 0x4769
    mov word [bp - 0x001c], 0
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov ax, word [bx + 0x4]
    shl ax, 1
    mov cx, word [bx + 0x2]
    inc cx
    cwd
    idiv cx
    add word [bp - 0x001c], ax
    mov ax, word [bp - 0x001c]
    shl ax, 1
    add ax, strict word 0xa
    mov word [bp - 0x001c], ax
    mov word [bp - 0x0002], 0
    jmp near 0x4d77
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov cx, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x7b7e]
    add ax, cx
    mov word [bp - 0x0008], ax
    mov ax, 0xa
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + si + 0x29]
    cbw
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov al, byte [bx + 0xd9]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x000a], ax
    cmp ax, strict word 1
    jge short 0x47f7
    mov word [bp - 0x000a], 1
    cmp word [bp - 0x000a], byte 0x64
    jle short 0x4802
    mov word [bp - 0x000a], 0x64
    mov ax, word [bp - 0x000a]
    push ax
    mov al, byte [bx + 0xdb]
    sub ah, ah
    mov cx, ax
    pop ax
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov al, byte [bx + 0xe2]
    sub ah, ah
    test ax, 2
    je short 0x4827
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x24], 1
    mov bx, word [bp - 0x0008]
    cmp byte [bx + 0x24], 0
    jbe short 0x4861
    mov ax, word [bp - 0x000a]
    mov cx, 2
    cwd
    idiv cx
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x14
    push ax
    call 0xb7a9
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, word [bp - 0x000a]
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x25], al
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x21], 0
    push word [bp + 0x4]
    call api_idx_0002
    pop cx
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x1c], al
    mov word [bp - 0x0016], 0
    push word [bp + 0x4]
    call api_idx_0002
    pop cx
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x1d], al
    inc word [bp - 0x0016]
    mov bx, word [bp - 0x0008]
    mov al, byte [bx + 0x1d]
    mov cl, byte [bx + 0x1c]
    cmp al, cl
    jne short 0x489d
    cmp word [bp - 0x0016], byte 3
    jl short 0x487a
    mov word [bp - 0x000e], 0
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov al, byte [bx + 0xdb]
    sub ah, ah
    cmp ax, word [bp - 0x000e]
    jle short 0x48cd
    mov bx, word [bp - 0x0008]
    cmp byte [bx + 0x22], 2
    jae short 0x48cd
    cmp byte [bx + 0x11], 0
    ja short 0x48cd
    cmp byte [bx + 0x10], 0
    jbe short 0x48d9
    mov bx, word [bp - 0x0008]
    mov si, word [bp - 0x000e]
    mov byte [bx + si + 0x18], 0
    jmp short 0x48eb
    mov al, byte [bp - 0x000a]
    mov bx, word [bp - 0x0008]
    mov si, word [bp - 0x000e]
    mov byte [bx + si + 0x18], al
    mov ax, word [bp - 0x000c]
    sub word [bp - 0x000a], ax
    inc word [bp - 0x000e]
    mov ax, word [bp - 0x000e]
    cmp ax, strict word 4
    jl short 0x48a2
    mov word [bp - 0x0018], 0xffff
    mov al, byte [bp + 0x6]
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x1f], al
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    push ax
    call 0xb7a9
    pop cx
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x20], al
    mov bx, word [bp - 0x0008]
    mov al, byte [bx + 0x20]
    sub ah, ah
    mov cx, 0x2c
    imul cx
    mov si, ax
    mov al, byte [bx + 0x1f]
    sub ah, ah
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + si + 0x22], 3
    jae short 0x4904
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov al, byte [bx + 0xae]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jl short 0x4966
    jmp near 0x4aa5
    mov word [bp - 0x0018], 3
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x1e], 3
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    mov word [bp - 0x0012], ax
    mov word [bp - 0x0016], 5
    mov word [bp - 0x0010], 0
    mov word [bp - 0x001a], 0xffff
    mov ax, word [bp - 0x0012]
    cmp ax, word [bp - 0x0016]
    jge short 0x49ab
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov si, word [bp - 0x0010]
    mov al, byte [bx + si + 0x90]
    sub ah, ah
    mov word [bp - 0x001a], ax
    inc word [bp - 0x0010]
    cmp word [bp - 0x0016], byte 0x0f
    jge short 0x49ba
    add word [bp - 0x0016], byte 5
    jmp short 0x49ca
    cmp word [bp - 0x0016], byte 0x37
    jge short 0x49c6
    add word [bp - 0x0016], byte 0x0a
    jmp short 0x49ca
    add word [bp - 0x0016], byte 0x0f
    cmp word [bp - 0x001a], byte 0xff
    je short 0x498c
    mov ax, 6
    imul word [bp - 0x001a]
    mov bx, ax
    cmp byte [bx + 0x624], 1
    je short 0x49f1
    mov ax, word [bp - 0x001a]
    cmp ax, strict word 0x58
    je short 0x49f1
    cmp ax, strict word 0x13
    je short 0x49f1
    cmp ax, strict word 0x42
    jne short 0x4a4c
    cmp word [bp + 0x4], byte 6
    jne short 0x4a20
    mov ax, 0
    push ax
    push word [bp - 0x0008]
    call api_idx_0004_2
    add sp, byte 4
    test ax, ax
    jne short 0x4a1e
    mov ax, 6
    push ax
    push word [bp - 0x0008]
    call api_idx_0004_2
    add sp, byte 4
    test ax, ax
    jne short 0x4a1e
    mov word [bp - 0x0018], 0xffff
    jmp short 0x4a4c
    push word [bp + 0x4]
    push word [bp - 0x0008]
    call api_idx_0004_2
    add sp, byte 4
    test ax, ax
    jne short 0x4a4c
    push word [0x8466]
    call 0xb7a9
    pop cx
    inc ax
    push ax
    push word [bp - 0x0008]
    call api_idx_0004_2
    add sp, byte 4
    test ax, ax
    jne short 0x4a4c
    mov word [bp - 0x0018], 0xffff
    mov ax, 6
    imul word [bp - 0x001a]
    mov bx, ax
    mov al, byte [bx + 0x621]
    sub ah, ah
    mov cx, ax
    mov bx, word [bp - 0x0008]
    mov ax, word [bx]
    sub ax, cx
    inc ax
    mov word [bp - 0x0012], ax
    mov ax, 1
    mov cx, word [bp - 0x0012]
    cmp cx, byte 1
    jl short 0x4a7e
    mov ax, cx
    push ax
    cmp ax, strict word 6
    pop ax
    jle short 0x4a7e
    mov ax, 6
    mov word [bp - 0x0012], ax
    mov bx, word [bp - 0x0008]
    push word [bx]
    call 0xb7a9
    pop cx
    inc ax
    cmp ax, word [bp - 0x0012]
    jge short 0x4a95
    dec word [bp - 0x0012]
    jmp short 0x4a81
    mov ax, word [bp - 0x0012]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x001a]
    mov bx, word [bp - 0x0008]
    mov word [bx + 0xa], ax
    cmp word [bp - 0x0018], byte 0xff
    jne short 0x4aef
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov al, byte [bx + 0xb0]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short 0x4aef
    mov word [bp - 0x0018], 5
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x1e], 5
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov al, byte [bx + 0xde]
    sub ah, ah
    mov bx, word [bp - 0x0008]
    mov word [bx + 0xa], ax
    cmp word [bp - 0x0018], byte 0xff
    je short 0x4af8
    jmp near 0x4c64
    mov word [bp - 0x0012], 0
    mov bx, word [bp - 0x0008]
    cmp byte [bx + 0x22], 2
    jb short 0x4b09
    jmp near 0x4b7d
    cmp byte [bx + 0x11], 0
    je short 0x4b12
    jmp near 0x4b7d
    cmp byte [bx + 0x10], 0
    jne short 0x4b7d
    mov al, byte [bx + 0x1c]
    sub ah, ah
    mov word [bp - 0x0014], ax
    cmp word [bp + 0x4], byte 6
    jne short 0x4b2d
    mov word [bp - 0x0012], 9
    jmp short 0x4b7d
    cmp word [bp + 0x4], byte 3
    jl short 0x4b4b
    mov cx, 0x12
    imul cx
    mov si, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    cmp byte [bx + si + 0x51], 1
    jbe short 0x4b7d
    mov word [bp - 0x0012], 3
    mov ax, 0x12
    imul word [bp - 0x0014]
    mov si, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov al, byte [bx + si + 0x51]
    sub ah, ah
    mov cx, 2
    cmp word [bp + 0x4], byte 3
    jge short 0x4b74
    mov cx, 0
    cmp ax, cx
    jle short 0x4b7d
    mov word [bp - 0x0012], 6
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0012]
    jge short 0x4b96
    mov word [bp - 0x0012], ax
    mov word [bp - 0x0010], 0
    mov word [bp - 0x0016], 0
    jmp short 0x4bc1
    mov ax, 0x2c
    imul word [bp - 0x0016]
    mov si, ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + si + 0x22], 3
    jae short 0x4bbe
    inc word [bp - 0x0010]
    inc word [bp - 0x0016]
    mov ax, word [bp - 0x0016]
    cmp ax, word [bp - 0x0012]
    jl short 0x4ba2
    cmp word [bp - 0x0010], byte 0
    jg short 0x4bd2
    jmp near 0x4c5d
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x1e], 0
    mov al, byte [bp + 0x6]
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x1f], al
    push word [bp - 0x0010]
    call 0xb7a9
    pop cx
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x20], al
    mov bx, word [bp - 0x0008]
    mov al, byte [bx + 0x1c]
    sub ah, ah
    mov word [bp - 0x0014], ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov si, word [bp - 0x0014]
    cmp byte [bx + si + 0x86], 2
    jne short 0x4c19
    mov bx, word [bp - 0x0008]
    mov word [bx + 0xa], 4
    jmp short 0x4c5b
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov si, word [bp - 0x0014]
    cmp byte [bx + si + 0x86], 3
    jne short 0x4c38
    mov bx, word [bp - 0x0008]
    mov word [bx + 0xa], 8
    jmp short 0x4c5b
    mov ax, 0x12
    imul word [bp - 0x0014]
    mov cx, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x7b70]
    add ax, cx
    add ax, strict word 0x53
    push ax
    call api_idx_0006_3
    pop cx
    mov bx, word [bp - 0x0008]
    mov word [bx + 0xa], ax
    jmp short 0x4c64
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x18], 0
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    mov word [bp - 0x0006], ax
    mov bx, word [bp - 0x0008]
    cmp byte [bx + 0xf], 0
    jbe short 0x4c80
    mov cx, word [bp - 0x001c]
    add cx, byte 0x0a
    jmp short 0x4c83
    mov cx, word [bp - 0x001c]
    cmp cx, ax
    jle short 0x4cad
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov al, byte [bx + 0xb2]
    sub ah, ah
    mov cx, ax
    mov ax, word [bp - 0x0006]
    cmp cx, ax
    jle short 0x4cad
    mov word [bp - 0x0018], 6
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x1e], 6
    mov bx, word [bp - 0x0008]
    mov word [bx + 0xc], 0xffff
    mov bx, word [bp - 0x0008]
    cmp byte [bx + 0x1e], 0
    je short 0x4cc1
    jmp near 0x4d5a
    mov al, byte [bx + 0x1d]
    sub ah, ah
    mov word [bp - 0x0014], ax
    cmp word [bp + 0x4], byte 3
    jl short 0x4ce7
    mov cx, 0x12
    imul cx
    mov si, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    cmp byte [bx + si + 0x51], 1
    jbe short 0x4d4a
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov si, word [bp - 0x0014]
    cmp byte [bx + si + 0x86], 2
    jne short 0x4d06
    mov bx, word [bp - 0x0008]
    mov word [bx + 0xc], 4
    jmp short 0x4d48
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov si, word [bp - 0x0014]
    cmp byte [bx + si + 0x86], 3
    jne short 0x4d25
    mov bx, word [bp - 0x0008]
    mov word [bx + 0xc], 8
    jmp short 0x4d48
    mov ax, 0x12
    imul word [bp - 0x0014]
    mov cx, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x7b70]
    add ax, cx
    add ax, strict word 0x53
    push ax
    call api_idx_0006_3
    pop cx
    mov bx, word [bp - 0x0008]
    mov word [bx + 0xc], ax
    jmp short 0x4d58
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x19], 0
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x1b], 0
    jmp short 0x4d74
    mov word [bp - 0x0004], 1
    mov bx, word [bp - 0x0008]
    mov si, word [bp - 0x0004]
    mov byte [bx + si + 0x18], 0
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 4
    jl short 0x4d5f
    inc word [bp - 0x0002]
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0002]
    jle short 0x4d90
    jmp near 0x4796
    ret
api_idx_0002_2:
    mov ax, 0xfffe
    call 0xf40b
    mov al, byte [0x69c8]
    mov bx, word [0x8482]
    mov byte [bx + 0x1a1], al
    mov word [bp - 0x0002], 1
    jmp short 0x4dfa
    mov bx, word [0x848e]
    cmp byte [bx + 0x1a1], 0
    jbe short 0x4ddb
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    cmp ax, strict word 1
    jne short 0x4ddb
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    cmp byte [bx + 0xd6], 0x16
    je short 0x4ddb
    cmp word [0x0e36], strict word 0xe1
    jne short 0x4dea
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call api_idx_0024
    add sp, byte 4
    jmp short 0x4df7
    mov ax, 6
    push ax
    push word [bp - 0x0002]
    call api_idx_0024
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x8466]
    jle short 0x4da9
    mov bx, word [0x848e]
    cmp byte [bx + 0x1a1], 0
    jbe short 0x4e3a
    mov word [bp - 0x0002], 1
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x8466]
    jge short 0x4e2d
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0x4e2d
    inc word [bp - 0x0002]
    jmp short 0x4e13
    push word [bp - 0x0002]
    mov ax, 6
    push ax
    call api_idx_0024
    add sp, byte 4
    ret
api_idx_0004_3:
    mov ax, 0xfffc
    call 0xf40b
    mov word [0x90d6], 5
    mov word [0x9386], 2
    mov word [0x9388], 2
    mov word [0x938a], 3
    mov word [0x938c], 5
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    mov ax, 3
    push ax
    call 0x2af
    pop cx
    call api_idx_00d4
    mov word [bp - 0x0004], ax
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    mov ax, 3
    push ax
    call 0x2af
    pop cx
    cmp word [bp - 0x0004], byte 0
    je short 0x4e93
    mov word [0x830a], 0xe
    jmp short 0x4e9c
    call api_idx_0002_2
    mov word [0x830a], 0xd
    ret
    pop word [0x90d4]
    pop cx
    mov word [0x90d0], sp
    mov word [0x90d2], bp
    mov word [0x90cc], si
    mov word [0x90ce], di
    cld
    mov di, 0x90d6
    mov cx, 0x938e
    sub cx, di
    shr cx, 1
    je short 0x4ec3
    sub ax, ax
    rep stosw
    call 0xe
    mov bp, word [0x90d2]
    mov sp, word [0x90d0]
    mov si, word [0x90cc]
    mov di, word [0x90ce]
    push cx
    jmp [0x90d4]
    push si
    xor word [0x2424], bp
    and al, 0
    push si
    xor word [0x2424], bp
    and al, 0
    push si
    xor ch, byte [0x2424]
    and al, 0
    push si
    xor bp, word [0x2424]
    and al, 0
    push si
    xor word [0x2424], bp
    and al, 0
    sub ch, byte [bp + si]
    sub al, byte [bx + si]
    push si
    cs and al, 0x24
    and al, 0
    push si
    cs and al, 0x24
    and al, 0
    times 11 db 0
