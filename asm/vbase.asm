; ── auto-discovered structs ─────────────────────────────────────

; @struct s_bx_0000 size=8 reg=bx disp=0x0000
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
; @field offset=4 size=3 name=f_04
; @field offset=7 size=1 name=f_07
struc s_bx_0000
    .f_00: resb 2
    .f_02: resb 2
    .gap_4: resb 3
    .f_07: resb 1
endstruc

; @struct s_bx_5d4b size=15 reg=bx disp=0x5d4b
; @field offset=0 size=2 name=f_00
; @field offset=2 size=7 name=f_02
; @field offset=9 size=1 name=f_09
; @field offset=10 size=1 name=f_0a
; @field offset=11 size=1 name=f_0b
; @field offset=12 size=1 name=f_0c
; @field offset=13 size=1 name=f_0d
; @field offset=14 size=1 name=f_0e
struc s_bx_5d4b
    .f_00: resb 2
    .gap_2: resb 7
    .f_09: resb 1
    .f_0a: resb 1
    .f_0b: resb 1
    .f_0c: resb 1
    .f_0d: resb 1
    .f_0e: resb 1
endstruc

; @struct s_bx_69a4 size=4 reg=bx disp=0x69a4
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_69a4
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

; @struct s_bx_9a32 size=4 reg=bx disp=0x9a32
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_9a32
    .f_00: resb 2
    .f_02: resb 2
endstruc

; @struct s_bx_a5da size=4 reg=bx disp=0xa5da
; @field offset=0 size=2 name=f_00
; @field offset=2 size=2 name=f_02
struc s_bx_a5da
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

org 0
bits 16

    db 0xf2, 0x00, 0x55, 0x50, 0xdf, 0x93, 0x98, 0x90 ; header (8 bytes)

    add word [cs:si], di
    adc al, 0x77
    jcxz 0xffc7
    add byte [bx + si], al
    call 0xf40b
    cmp word [0x830a], byte 7
    jne short 0x1e
    call api_idx_0002
    cmp word [0x830a], byte 4
    jne short 0x28
    call api_idx_004a_2
    cmp word [0x830a], byte 0x18
    jne short 0x32
    call api_idx_004a
    mov ax, 0
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0
    push ax
    call 0xef14
    pop cx
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    mov ax, 0x9098
    push ax
    call 0xd161
    add sp, byte 4
    push ax
    call 0xf909
    add sp, byte 4
    mov word [bp - 0x0002], ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0x6]
    imul word [0x906e]
    cwd
    add ax, word [0x9072]
    adc dx, word [0x9074]
    push dx
    push ax
    push word [bp - 0x0002]
    call 0xfdbd
    add sp, byte 8
    cmp word [bp + 0x8], byte 0
    jne short 0x97
    push word [0x906e]
    push word [bp + 0x4]
    push word [bp - 0x0002]
    call 0xfd6f
    add sp, byte 6
    jmp short 0xad
    cmp word [bp + 0x8], byte 1
    jne short 0xad
    push word [0x906e]
    push word [bp + 0x4]
    push word [bp - 0x0002]
    call 0xfd76
    add sp, byte 6
    push word [bp - 0x0002]
    call 0xfda5
    pop cx
    ret
api_idx_0004:
    mov ax, 0xfffc
@..api_idx_0004.l1:
    call 0xf40b
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, strict word 0x10
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 9
    push ax
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 7
@..api_idx_0004.l3:
    push ax
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0x6]
@..api_idx_0004.l4:
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, strict word 0xf
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 8
    push ax
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, strict word 7
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 8
    push ax
    call 0xbce3
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    push word [bp + 0x10]
    call 0xe823
    add sp, byte 4
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, strict word 9
    push ax
    push word [bp + 0x4]
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
    add ax, strict word 9
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0xe84e
    add sp, byte 4
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, strict word 0x10
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 9
    push ax
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 7
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    push word [bp - 0x0004]
    call 0xe94f
    add sp, byte 6
    ret
loc_01bf:
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
loc_023a:
    mov ax, 0xfeaa
    call 0xf40b
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    add ax, strict word 0x10
    mov word [bp - 0x0006], ax
    mov ax, word [bp + 0xc]
    imul word [bp + 0xe]
    add ax, word [bp + 0x8]
    add ax, strict word 0x10
    mov word [bp - 0x0008], ax
    mov ax, 0x90a3
    push ax
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp + 0x8]
    dec ax
    push ax
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0154], ax
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x12]
    cmp word [bx + si], byte 0xff
    jne short 0x29c
    jmp near 0x3ab
    cmp word [bx + si], byte 1
    je short 0x2a4
    jmp near 0x3a5
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x0152]
    add ax, cx
    push ax
    mov ax, word [bp + 0x4]
    add ax, word [bp - 0x0004]
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 0xf
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    mov ax, word [bp - 0x0002]
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 7
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    call 0xbce3
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    push word [bp + 0x10]
    call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 9
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x0152]
    add ax, cx
    push ax
    call 0xfa90
    pop cx
    mov cx, ax
    mov ax, word [bp + 0xa]
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp + 0x6]
    add ax, strict word 9
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x0152]
    add ax, cx
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0002]
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 0xf
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    mov ax, word [bp - 0x0002]
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 7
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    push word [bp - 0x0002]
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x0004]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x0026], ax
    inc word [bp - 0x0002]
    inc word [bp - 0x0004]
    jmp near 0x28a
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
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp + 0x8]
    dec ax
    push ax
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    cmp word [0x0e32], byte 0
    je short 0x3f6
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    mov word [bp - 0x0004], ax
    cmp word [0x5b3e], byte 0
    je short 0x3e1
    jmp near 0x4f1
    mov word [bp - 0x0004], 0
    mov ax, 0x16
    push ax
    mov ax, word [bp - 0x0004]
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 0xf
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    mov ax, word [bp - 0x0004]
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 7
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    call 0x1bf
    add sp, byte 0x0a
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
loc_043d:
    mov ax, word [bp + 0x8]
    dec ax
    push ax
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0004]
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 0xf
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    mov ax, word [bp - 0x0004]
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 7
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    call 0x1bf
    add sp, byte 0x0a
    mov ax, 1
    push ax
    call 0xea50
    pop cx
    test ax, ax
    jne short 0x493
    jmp short 0x485
    mov ax, 1
    push ax
    call 0xeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x0156], ax
    jmp short 0x4c0
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x0002]
    dec ax
    cwd
    idiv word [bp - 0x0002]
    mov word [bp - 0x0004], dx
    jmp short 0x4ca
    mov ax, word [bp - 0x0004]
    inc ax
    cwd
    idiv word [bp - 0x0002]
    mov word [bp - 0x0004], dx
    jmp short 0x4ca
    cmp ax, strict word 9
    je short 0x4a3
    cmp ax, strict word 0xb
    je short 0x4b3
    cmp word [bp - 0x0156], byte 0x0d
    je short 0x4d4
    jmp near 0x3fb
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp + 0x8]
    dec ax
    push ax
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    dec word [bp - 0x0004]
    mov ax, 1
    push ax
    push ax
    push word [bp + 0xa]
    mov ax, word [bp - 0x0004]
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 7
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp + 0xa]
    mov ax, word [bp - 0x0004]
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, strict word 7
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 1
    push ax
    push word [bp - 0x0154]
    call 0xc459
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    mov word [0x9052], ax
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0026]
    ret
    mov ax, 0xffea
    call 0xf40b
    mov ax, 0x90a9
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, 0
    push ax
    call 0xef14
    pop cx
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    call 0xd161
    add sp, byte 4
    push ax
    call 0xf909
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x59b
    mov ax, 0x13
    push ax
    call 0xb171
    pop cx
    push word [bp + 0x6]
    push word [bp + 0x4]
    mov ax, 5
    push ax
    push word [bp - 0x0002]
    call 0xe743
    add sp, byte 8
    push word [bp - 0x0002]
    call 0xfda5
    pop cx
    ret
    mov ax, 0xfffa
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0004], 0
    jmp short 0x5e5
    mov ax, word [bp - 0x0004]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx + 0x69bc]
    cmp ax, word [bp - 0x0002]
    jne short 0x5e2
    mov word [bp - 0x0006], 1
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp + 0x4]
    jl short 0x5cd
    cmp word [bp - 0x0006], byte 0
    jne short 0x5f7
    mov ax, word [bp - 0x0002]
    ret
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x5c1
    mov ax, 0
    ret
    mov ax, 0xffc8
    call 0xf40b
    mov word [0x904e], 0xffff
    mov word [bp - 0x0004], 0x37
    mov word [bp - 0x0006], 0x8f
    mov word [bp - 0x0008], 0x108
    mov word [bp - 0x000a], 0xc5
    mov word [bp - 0x0012], 0x16
    mov ax, 7
    cmp word [bp + 0xc], byte 7
    jge short 0x637
    mov ax, word [bp + 0xc]
    mov word [bp - 0x0022], ax
    mov ax, 0x90b6
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
    lea ax, word [bp - 0x0036]
    push ax
    push word [bp + 0x4]
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0036]
    push ax
loc_067e:
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
    call 0xbf97
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
    mov ax, 0
    push ax
    mov ax, 0xd
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
loc_0846:
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
    mov ax, 7
    cmp word [bp + 0xc], byte 7
    jge short 0x875
    mov ax, word [bp + 0xc]
    mov word [bp - 0x001e], ax
    mov word [bp - 0x0002], 0
    jmp short 0x8bc
    mov ax, 0
    push ax
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0xc
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xb9
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 6
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
    jl short 0x87f
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
    mov word [bp - 0x001a], 1
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x0018], ax
    cmp word [0x59fc], byte 0
    je short 0x951
    mov ax, word [bp - 0x0020]
    cmp ax, word [bp - 0x0016]
    jl short 0x91a
    inc word [bp - 0x0020]
    mov ax, word [bp - 0x0020]
    cmp ax, strict word 0xffff
    je short 0x939
    cmp ax, word [bp - 0x0016]
    jl short 0x939
    mov ax, word [bp - 0x0016]
    add ax, word [bp - 0x001e]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp - 0x0020]
    cmp cx, ax
    jge short 0x93f
    mov ax, word [bp - 0x0016]
    mov word [bp - 0x0020], ax
    mov word [0x5b3e], 1
    mov ax, word [bp - 0x0020]
    sub ax, word [bp - 0x0016]
    add ax, strict word 6
    mov word [bp - 0x0018], ax
    cmp word [0x5b3e], byte 1
    je short 0x95b
    jmp near 0xd1f
    mov ax, word [bp - 0x0018]
    jmp near 0xd10
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
    db 0x2b, 0xc1 ; sub ax, cx
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
    db 0x2b, 0xc1 ; sub ax, cx
    sub ax, word [bp - 0x0014]
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0010], ax
    cmp word [bp + 0xc], byte 7
    jle short 0x9e5
    mov cx, 0x64
    imul cx
    push ax
    mov ax, word [bp - 0x0012]
    imul cx
    add ax, strict word 0x64
    mov cx, word [bp + 0xc]
    add cx, byte 0xfa
    cwd
    idiv cx
    db 0x8b, 0xc8 ; mov cx, ax
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
    call 0xbf97
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
    je short 0xa85
    jmp near 0x98f
    jmp near 0xd1f
    cmp word [bp - 0x0018], byte 1
    jne short 0xabf
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
    jle short 0xabd
    dec word [bp - 0x0016]
    jmp short 0xaf3
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
    add ax, strict word 0xfff9
    cmp ax, word [bp - 0x0016]
    jle short 0xaf3
    inc word [bp - 0x0016]
    cmp word [bp + 0xc], byte 7
    jle short 0xb25
    push word [bp - 0x0012]
    mov ax, 0
    push ax
    mov ax, 0x64
    imul word [bp - 0x0012]
    add ax, strict word 0x64
    mov cx, word [bp + 0xc]
    add cx, byte 0xf9
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
    call 0xbf97
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
    jmp near 0xd1f
    cmp word [bp + 0x6], byte 0
    je short 0xc0d
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
    jmp near 0xd1f
    cmp word [bp + 0x8], byte 0
    je short 0xc5e
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
    jmp near 0xd1f
    cmp word [bp + 0xa], byte 0
    je short 0xcaf
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
    jmp short 0xd1f
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
    call 0xbf97
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
    jmp short 0xd1f
    test al, 0x59
    iret
    pop dx
    iret
    pop dx
    push es
    pop sp
    push di
    pop sp
    test al, 0x5c
    cmp ax, strict word 6
    jae short 0xd1d
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x5d4b]
    jmp short 0xcb1
    cmp word [bp - 0x001a], byte 0
    je short 0xd28
    jmp near 0x8fc
    mov ax, 1
    push ax
    push word [bp - 0x0038]
    call 0xc459
    add sp, byte 4
    mov ax, word [bp - 0x0020]
    mov word [0x904e], ax
    mov ax, word [0x9050]
    ret
    mov ax, 0xfff8
    call 0xf40b
    push word [bp + 0xe]
    push word [bp + 0xc]
    call 0xe823
    add sp, byte 4
    push word [bp + 0x4]
    call 0xfa90
    pop cx
    mov word [bp - 0x0004], ax
    mov cx, 6
    imul cx
    add word [bp + 0x6], ax
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0008], 0
    mov ax, 1
    push ax
    call 0xea50
loc_0d74:
    pop cx
    test ax, ax
    je short 0xd7c
    jmp near 0xdfb
    cmp word [bp - 0x0008], byte 0
    jne short 0xded
    push word [bp + 0xe]
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe901
    add sp, byte 0x0a
    cmp word [bp - 0x0006], byte 0
    je short 0xdbf
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0006]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x0006], dx
    mov word [bp - 0x0008], 0xa
    jmp short 0xdf8
    mov ax, 0xa
    push ax
    call 0xe489
    pop cx
    dec word [bp - 0x0008]
    jmp near 0xd6d
    mov ax, 1
    push ax
    call 0xeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x0002], ax
    push word [bp + 0xe]
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe901
    add sp, byte 0x0a
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
loc_0e32:
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe8da
    add sp, byte 8
    cmp word [bp - 0x0002], byte 0x0d
    jne short 0xe52
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], 0
    call 0xec17
    ret
    cmp word [bp - 0x0002], byte 8
    jne short 0xe72
    cmp word [bp - 0x0004], byte 0
    jle short 0xe67
    dec word [bp - 0x0004]
    add word [bp + 0x6], byte 0xfa
    jmp short 0xe6f
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp near 0xef3
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp + 0xa]
    jl short 0xe85
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp near 0xef3
    cmp word [bp + 0x10], byte 0
    jne short 0xe98
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x20
    jl short 0xe98
    cmp ax, strict word 0x7f
    jle short 0xeab
    cmp word [bp + 0x10], byte 1
    jne short 0xef3
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x30
    jl short 0xef3
    cmp ax, strict word 0x39
    jg short 0xef3
    mov al, byte [bp - 0x0002]
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], al
    inc word [bp - 0x0004]
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov al, byte [bp - 0x0002]
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe8da
    add sp, byte 8
    add word [bp + 0x6], byte 6
    jmp near 0xd63
    ret
    mov ax, 0xffd8
    call 0xf40b
    mov word [0x904e], 0xffff
    mov word [bp - 0x0028], 0xffff
    mov word [bp - 0x0002], 0x37
    mov word [bp - 0x0004], 0x8f
    mov word [bp - 0x0006], 0x108
    mov word [bp - 0x0008], 0xc5
    mov ax, 0x90bc
    push ax
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    mov ax, word [bp - 0x0002]
    dec ax
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0026], ax
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    call 0xbc9a
    add sp, byte 8
    lea ax, word [bp - 0x0024]
    push ax
    push word [bp + 0x4]
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0024]
    push ax
    push word [bp + 0x6]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 8
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0024]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0024]
    push ax
    push word [bp + 0x8]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 8
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0024]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0024]
    push ax
    push word [bp + 0xa]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 8
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0024]
    push ax
    mov ax, 0x5aa
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 0x9b
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    add ax, strict word 6
    push ax
    lea ax, word [bp - 0x0024]
    push ax
    call 0xfa90
    pop cx
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0x11
    db 0x2b, 0xc1 ; sub ax, cx
    mov cx, 6
    imul cx
    inc ax
    inc ax
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0024]
    push ax
    call 0xe84e
    add sp, byte 4
    push word [bp + 0xc]
    mov ax, 0xe38
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x11
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0xf
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    call 0xbf97
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x44
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xc5
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0xf
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    mov ax, 0
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    lea ax, word [bp - 0x0024]
    push ax
    mov ax, 0x5ab
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 0x9b
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x1e
    push ax
    lea ax, word [bp - 0x0024]
    push ax
    call 0xfa90
    pop cx
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0x11
    db 0x2b, 0xc1 ; sub ax, cx
    mov cx, 6
    imul cx
    inc ax
    inc ax
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0024]
    push ax
    call 0xe84e
    add sp, byte 4
    push word [bp + 0xe]
    mov ax, 0xe4c
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0x11
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    call 0xbf97
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x46
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x2d
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xc5
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    mov ax, 1
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0xf
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 8
    push ax
    mov ax, 2
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0xd
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 8
    push ax
    mov ax, 3
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x2f
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 8
    push ax
    mov ax, 4
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 5
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    mov ax, word [bp - 0x0002]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov word [bp - 0x0010], 1
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x000e], ax
    cmp word [0x59fc], byte 0
    je short 0x1246
    inc word [bp - 0x0028]
    mov ax, word [bp - 0x0028]
    cmp ax, strict word 1
    jle short 0x123a
    mov word [bp - 0x0028], 0
    mov word [0x5b3e], 1
    mov ax, word [bp - 0x0028]
    mov word [bp - 0x000e], ax
    cmp word [0x5b3e], byte 1
    je short 0x1250
    jmp near 0x14ed
    mov ax, word [bp - 0x000e]
    jmp near 0x14e0
    call 0xec17
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 1
    push ax
    mov ax, 0x11
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0xf
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    call 0xbf97
    add sp, byte 0x0e
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x16
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xc5
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0xf
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 0x10
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x10
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5f
    push ax
    mov ax, 0xe38
    push ax
    call 0xd3f
    add sp, byte 0x0e
    mov ax, 0xe38
    push ax
    push word [bp + 0xc]
    call 0xf364
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x11
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0xf
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    call 0xbf97
    add sp, byte 0x0e
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x16
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xc5
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0xf
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    call 0xe8da
    add sp, byte 8
    jmp near 0x14ed
    call 0xec17
    mov ax, 1
    push ax
    push ax
    push ax
    push ax
    mov ax, 0x11
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    call 0xbf97
    add sp, byte 0x0e
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x2e
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xc5
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 0x10
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5f
    push ax
    mov ax, 0xe4c
    push ax
    call 0xd3f
    add sp, byte 0x0e
    mov ax, 0xe4c
    push ax
    push word [bp + 0xe]
    call 0xf364
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0x11
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    call 0xbf97
    add sp, byte 0x0e
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x2e
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xc5
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    call 0xe8da
    add sp, byte 8
    jmp near 0x14ed
    cmp word [bp + 0x6], byte 0
    je short 0x1433
    mov ax, 1
    push ax
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0002]
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
    mov ax, word [bp - 0x0004]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 8
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov word [0x9050], 0
    mov word [bp - 0x0010], 0
    jmp near 0x14ed
    cmp word [bp + 0x8], byte 0
    je short 0x1484
    mov ax, 1
    push ax
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 0x0002]
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
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 8
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov word [0x9050], 1
    mov word [bp - 0x0010], 0
    jmp short 0x14ed
    cmp word [bp + 0xa], byte 0
    je short 0x14d4
    mov ax, 1
    push ax
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0002]
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
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 8
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov word [0x9050], 2
    mov word [bp - 0x0010], 0
    jmp short 0x14ed
    popf
    bound bp, dword [bx + di + 0x63]
    sub al, 0x64
    jge short 0x1542
    int 0x64
    cmp ax, strict word 5
    jae short 0x14ed
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x651d]
    cmp word [bp - 0x0010], byte 0
    je short 0x14f6
    jmp near 0x1217
    mov ax, 1
    push ax
    push word [bp - 0x0026]
    call 0xc459
    add sp, byte 4
    mov word [0x904e], 0xffff
    mov ax, word [0x9050]
    ret
loc_150d:
    mov ax, 0
    call 0xf40b
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0x1a
    push ax
    mov ax, 0xd
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0x61
    push ax
    mov ax, 3
    push ax
    push word [bp + 0x4]
    call api_idx_0004
    add sp, byte 0x0e
    call 0xec17
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    mov ax, 0x28
    push ax
    call 0xb75e
    pop cx
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    ret
    mov ax, 0xffb4
    call 0xf40b
    mov ax, 0
    push ax
    push word [bp + 0x6]
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, 1
    push ax
    call 0xb63c
    add sp, byte 8
    cmp word [bp + 0xa], byte 0xfe
    jne short 0x15aa
    mov al, byte [bp - 0x0030]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    mov al, byte [bp - 0x002f]
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    imul cx
    add ax, word [bp - 0x0032]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x6], al
    jmp short 0x15cd
    cmp word [bp + 0xa], byte 0xff
    jne short 0x15c4
    push word [bp - 0x0030]
    push word [bp - 0x0032]
    call 0xd0be
    add sp, byte 4
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x6], al
    jmp short 0x15cd
    mov al, byte [bp + 0xa]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x6], al
    mov ax, word [bp + 0x6]
    mov bx, word [bp + 0x8]
    mov word [bx], ax
    mov al, byte [bp - 0x0014]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x4], al
    mov al, byte [bp - 0x0013]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x5], al
    mov ax, word [bp - 0x0028]
    mov bx, word [bp + 0x8]
    mov word [bx + 0x2], ax
    mov al, byte [bp - 0x0024]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x8], al
    mov al, byte [bp - 0x0023]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x9], al
    mov al, byte [bp - 0x0010]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0xa], al
    mov al, byte [bp - 0x000c]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0xb], al
    mov ax, 0
    cmp word [bp + 0xc], byte 0
    je short 0x1620
    mov ax, 0x80
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x7], al
    mov al, byte [bp - 0x0015]
    db 0x2a, 0xe4 ; sub ah, ah
    test ax, 8
    je short 0x1637
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 4
    mov al, byte [bp - 0x0015]
    db 0x2a, 0xe4 ; sub ah, ah
    test ax, 4
    je short 0x1648
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 8
    mov al, byte [bp - 0x0015]
    db 0x2a, 0xe4 ; sub ah, ah
    test ax, 0x10
    je short 0x1659
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 0x10
    mov al, byte [bp - 0x0015]
    db 0x2a, 0xe4 ; sub ah, ah
    test ax, 0x20
    je short 0x166a
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 0x20
    mov al, byte [bp - 0x0015]
    db 0x2a, 0xe4 ; sub ah, ah
    test ax, 2
    je short 0x167b
loc_1674:
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 0x40
    push word [bp + 0x4]
    call 0xc58f
    pop cx
    ret

; ==========================================
; Jump table: 3 entries (offsets 0x1683 - 0x18e8)
; ==========================================
    db 0xb8, 0x00, 0x00, 0xe8, 0x82, 0xdd, 0x8b, 0x46, 0x04, 0xeb, 0x04, 0xb8, 0x00, 0x00, 0xc3, 0xb9
    db 0x26, 0x00, 0xe8, 0xd6, 0x7c, 0x1c, 0x00, 0x26, 0x00, 0x36, 0x00, 0x38, 0x00, 0x39, 0x00, 0x3d
    db 0x00, 0x42, 0x00, 0x43, 0x00, 0x46, 0x00, 0x47, 0x00, 0x48, 0x00, 0x49, 0x00, 0x4a, 0x00, 0x4e
    db 0x00, 0x4f, 0x00, 0x52, 0x00, 0x54, 0x00, 0x5a, 0x00, 0x5c, 0x00, 0x62, 0x00, 0x64, 0x00, 0x65
    db 0x00, 0x75, 0x00, 0x76, 0x00, 0x77, 0x00, 0x97, 0x00, 0xae, 0x00, 0xb2, 0x00, 0xb5, 0x00, 0xbd
    db 0x00, 0xc2, 0x00, 0xc5, 0x00, 0xca, 0x00, 0xcb, 0x00, 0xd2, 0x00, 0xd3, 0x00, 0x4b, 0x01, 0xd5
    db 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5
    db 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5
    db 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5
    db 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5
    db 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5, 0x66, 0xd5, 0x66, 0x75, 0x67, 0x83, 0x7e, 0x04, 0x3c, 0x7c
    db 0x0d, 0x83, 0x7e, 0x04, 0x78, 0x7d, 0x07, 0xb8, 0x00, 0x00, 0x2b, 0x46, 0x04, 0xc3, 0x81, 0x7e
    db 0x04, 0xb8, 0x00, 0x7c, 0x0e, 0x81, 0x7e, 0x04, 0xe3, 0x00, 0x7d, 0x07, 0xb8, 0x00, 0x00, 0x2b
    db 0x46, 0x04, 0xc3, 0x81, 0x7e, 0x04, 0xe3, 0x00, 0x7d, 0x04, 0x8b, 0x46, 0x04, 0xc3, 0x81, 0x7e
    db 0x04, 0x45, 0x01, 0x75, 0x04, 0xb8, 0x3a, 0x01, 0xc3, 0x81, 0x7e, 0x04, 0x46, 0x01, 0x75, 0x04
    db 0xb8, 0x4b, 0x01, 0xc3, 0x81, 0x7e, 0x04, 0x3c, 0x01, 0x7c, 0x0b, 0x81, 0x7e, 0x04, 0x4c, 0x01
    db 0x7f, 0x04, 0x8b, 0x46, 0x04, 0xc3, 0x81, 0x7e, 0x04, 0xab, 0x01, 0x75, 0x04, 0xb8, 0xae, 0xff
    db 0xc3, 0x81, 0x7e, 0x04, 0xd8, 0x01, 0x75, 0x04, 0xb8, 0xf5, 0x00, 0xc3, 0x81, 0x7e, 0x04, 0xd9
    db 0x01, 0x75, 0x04, 0xb8, 0xf4, 0x00, 0xc3, 0x8b, 0x46, 0x04, 0xeb, 0x19, 0x81, 0x7e, 0x04, 0xe3
    db 0x00, 0x7c, 0x0e, 0x81, 0x7e, 0x04, 0xfe, 0x00, 0x7d, 0x07, 0xb8, 0x00, 0x00, 0x2b, 0x46, 0x04
    db 0xc3, 0x8b, 0x46, 0x04, 0xc3, 0xb9, 0x14, 0x00, 0xe8, 0xa0, 0x7b, 0xea, 0x00, 0xec, 0x00, 0xf1
    db 0x00, 0xf5, 0x00, 0xfc, 0x00, 0xfd, 0x00, 0x04, 0x01, 0x05, 0x01, 0x06, 0x01, 0x07, 0x01, 0x16
    db 0x01, 0x1c, 0x01, 0x2d, 0x01, 0x31, 0x01, 0x32, 0x01, 0x33, 0x01, 0x34, 0x01, 0x35, 0x01, 0x39
    db 0x01, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6
    db 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6
    db 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0x63, 0x68, 0xb8, 0x00, 0x00, 0xc3, 0xb8, 0x00, 0x00
    db 0xe8, 0xe5, 0xdb, 0x8b, 0x46, 0x04, 0xeb, 0x3f, 0xb8, 0x0c, 0x00, 0x83, 0x7e, 0x06, 0x00, 0x75
    db 0x03, 0xb8, 0x0d, 0x00, 0xc3, 0xb8, 0x1a, 0x00, 0xc3, 0xb8, 0x18, 0x00, 0xc3, 0xb8, 0x08, 0x00
    db 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03, 0xb8, 0x03, 0x00, 0xc3, 0xb8, 0x07, 0x00, 0x83, 0x7e, 0x06
    db 0x00, 0x75, 0x03, 0xb8, 0x05, 0x00, 0xc3, 0xb8, 0x16, 0x00, 0xc3, 0x72, 0x68, 0x7f, 0x68, 0x83
    db 0x68, 0x87, 0x68, 0x94, 0x68, 0xa1, 0x68, 0x2d, 0x05, 0x00, 0x3d, 0x06, 0x00, 0x73, 0x08, 0x93
    db 0xd1, 0xe3, 0x2e, 0xff, 0xa7, 0xa5, 0x68, 0x83, 0x7e, 0x08, 0x0d, 0x75, 0x04, 0xb8, 0x12, 0x00
    db 0xc3, 0x83, 0x7e, 0x04, 0x01, 0x75, 0x64, 0x8b, 0x46, 0x08, 0xeb, 0x52, 0xb8, 0x0a, 0x00, 0x83
    db 0x7e, 0x06, 0x00, 0x75, 0x03, 0xb8, 0x20, 0x00, 0xc3, 0xb8, 0x1f, 0x00, 0x83, 0x7e, 0x06, 0x00
    db 0x75, 0x03, 0xb8, 0x1c, 0x00, 0xc3, 0xb8, 0x01, 0x00, 0xc3, 0xb8, 0x1b, 0x00, 0x83, 0x7e, 0x06
    db 0x00, 0x75, 0x03, 0xb8, 0x06, 0x00, 0xc3, 0xb8, 0x0f, 0x00, 0x83, 0x7e, 0x06, 0x00, 0x75, 0x03
    db 0xb8, 0x1c, 0x00, 0xc3, 0xd6, 0x68, 0xe3, 0x68, 0xe3, 0x68, 0xf0, 0x68, 0xf0, 0x68, 0xe3, 0x68
    db 0xf0, 0x68, 0xe3, 0x68, 0xd6, 0x68, 0x01, 0x69, 0xd6, 0x68, 0xf4, 0x68, 0x01, 0x69, 0x3d, 0x0d
    db 0x00, 0x73, 0x08, 0x93, 0xd1, 0xe3

loc_18e9:
    jmp [cs:bx + 0x690e]
    mov ax, word [bp + 0x4]
    cmp ax, strict word 2
    je short 0x1903
    cmp ax, strict word 4
    je short 0x1903
    cmp ax, strict word 3
    je short 0x1903
    jmp near 0x1970
    mov ax, word [bp + 0x8]
    jmp short 0x1963
    mov ax, 0x1d
    cmp word [bp + 0x6], byte 0
    jne short 0x1914
    mov ax, 4
    ret
    mov ax, 0x11
    cmp word [bp + 0x6], byte 0
    jne short 0x1921
    mov ax, 0xb
    ret
    mov ax, 0xe
    cmp word [bp + 0x6], byte 0
    jne short 0x192e
    mov ax, 0x10
    ret
    mov ax, 0x1d
    cmp word [bp + 0x6], byte 0
    jne short 0x193b
    mov ax, 0x10
    ret
    mov ax, 0x1b
    cmp word [bp + 0x6], byte 0
    jne short 0x1948
    mov ax, 6
    ret
    dec di
    imul bx, word [si + 0x69], 0x695c
    jbe short 0x19ba
    jbe short 0x19bc
    pop sp
    imul bp, word [bx + di + 0x69], 0x695c
    dec di
    imul bx, word [si + 0x69], 0x694f
    sub word [bx + di + 0x76], byte 0x69
    cmp ax, strict word 0xd
    jae short 0x1970
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6990]
    mov ax, word [bp + 0x8]
    jmp near 0x19f8
    mov ax, 0
    cmp word [bp + 0x6], byte 0
    jne short 0x1982
    mov ax, 2
    ret
    mov ax, 0
    cmp word [bp + 0x6], byte 0
    jne short 0x198f
    mov ax, 0x1e
    ret
    mov ax, 0xe
    cmp word [bp + 0x6], byte 0
    jne short 0x199c
    mov ax, 0x15
    ret
    mov ax, 0x13
    cmp word [bp + 0x6], byte 0
    jne short 0x19a9
    mov ax, 9
    ret
    mov ax, 0xa
    cmp word [bp + 0x6], byte 0
    jne short 0x19b6
    mov ax, 0x14
    ret
    mov ax, 0xf
    cmp word [bp + 0x6], byte 0
    jne short 0x19c3
    mov ax, 0x19
    ret
    mov ax, 0x1b
    cmp word [bp + 0x6], byte 0
    jne short 0x19d0
    mov ax, 6
    ret
    mov ax, 0xf
    cmp word [bp + 0x6], byte 0
    jne short 0x19dd
    mov ax, 0x1e
    ret
    dec sp
    db 0x6a, 0xbd ; push -0x43
    imul cx, dx, 0xd769
    imul sp, sp, 0xbd69
    imul dx, di, 0xca69
    imul si, cx, 0xfe69
    imul si, cx, 0xb69
    db 0x6a, 0x18 ; push 0x18
    db 0x6a, 0x3d ; push 0x3d
    or ax, 0x7300
    or byte [bp + di - 0x1c2f], dl
    jmp [cs:bx + 0x6a25]
    mov ax, 0x13
    cmp word [bp + 0x6], byte 0
    jne short 0x1a11
    mov ax, 0x17
    ret
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x4]
    jmp near 0x1bf8
    mov ax, 0
    ret
    mov ax, 1
    ret
    mov ax, 3
    ret
    mov ax, 4
    ret
    mov ax, 6
    ret
    mov ax, 7
    ret
    mov ax, 8
    ret
    mov ax, 9
    ret
    mov ax, 0xa
    ret
    mov ax, 0xb
    ret
    mov ax, 0xc
    ret
    mov ax, 0xd
    ret
    mov ax, 0xe
    ret
    mov ax, 0xf
    ret
    mov ax, 0x10
    ret
    mov ax, 0x11
    ret
    mov ax, 0x12
    ret
    mov ax, 0x14
    ret
    mov ax, 0x15
    ret
    mov ax, 0x17
    ret
    mov ax, 0x1a
    ret
    mov ax, 0x1b
    ret
    mov ax, 0x1d
    ret
    mov ax, 0x1e
    ret
    mov ax, 0x1f
    ret
    mov ax, 0x20
    ret
    mov ax, 0x21
    ret
    mov ax, 0x22
    ret
    mov ax, 0x23
    ret
    mov ax, 0x24
    ret
    mov ax, 0x25
    ret
    mov ax, 0x26
    ret
    mov ax, 0x27
    ret
    mov ax, 0x28
    ret
    mov ax, 0x29
    ret
    mov ax, 0x2b
    ret
    mov ax, 0x2c
    ret
    mov ax, 0x2d
    ret
    mov ax, 0x2e
    ret
    mov ax, 0x2f
    ret
    mov ax, 0x30
    ret
    mov ax, 0x31
    ret
    mov ax, 0x32
    ret
    mov ax, 0x34
    ret
    mov ax, 0x35
    ret
    mov ax, 0x37
    ret
    mov ax, 0x38
    ret
    mov ax, 0x39
    ret
    mov ax, 0x3a
    ret
    mov ax, 0x3b
    ret
    mov ax, 0x3c
    ret
    mov ax, 0x3d
    ret
    mov ax, 0x3e
    ret
    mov ax, 0x3f
    ret
    mov ax, 0x40
    ret
    mov ax, 0x43
    ret
    mov ax, 0x44
    ret
    mov ax, 0x45
    ret
    mov ax, 0x46
    ret
    mov ax, 0x47
    ret
    mov ax, 0x48
    ret
    mov ax, 0x4a
    ret
    mov ax, 0x4b
    ret
    mov ax, 0x4c
    ret
    mov ax, 0x4e
    ret
    mov ax, 0x4f
    ret
    mov ax, 0x50
    ret
    mov ax, 0x51
    ret
    mov ax, 0x52
    ret
    mov ax, 0x53
    ret
    mov ax, 0x54
    ret
    mov ax, 0x55
    ret
    mov ax, 0x56
    ret
    mov ax, 0x57
    ret
    mov ax, 0x59
    ret
    mov ax, 0x5a
    ret
    mov ax, 0x5d
    ret
    mov ax, 0x5e
    ret
    mov ax, 0x5f
    ret
    db 0x65, 0x6a, 0x69 ; push 0x69
    db 0x6a, 0x6d ; push 0x6d
    db 0x6a, 0x71 ; push 0x71
    db 0x6a, 0x75 ; push 0x75
    db 0x6a, 0x79 ; push 0x79
    db 0x6a, 0x7d ; push 0x7d
    db 0x6a, 0x81 ; push -0x7f
    db 0x6a, 0x85 ; push -0x7b
    db 0x6a, 0x89 ; push -0x77
    db 0x6a, 0x8d ; push -0x73
    db 0x6a, 0x91 ; push -0x6f
    db 0x6a, 0x95 ; push -0x6b
    db 0x6a, 0x99 ; push -0x67
    db 0x6a, 0x9d ; push -0x63
    db 0x6a, 0xa1 ; push -0x5f
    db 0x6a, 0xa5 ; push -0x5b
    db 0x6a, 0xa9 ; push -0x57
    db 0x6a, 0xad ; push -0x53
    db 0x6a, 0xb1 ; push -0x4f
    db 0x6a, 0xb5 ; push -0x4b
    db 0x6a, 0xb9 ; push -0x47
    db 0x6a, 0xbd ; push -0x43
    db 0x6a, 0xc1 ; push -0x3f
    db 0x6a, 0xc5 ; push -0x3b
    db 0x6a, 0xc9 ; push -0x37
    db 0x6a, 0xcd ; push -0x33
    db 0x6a, 0xd1 ; push -0x2f
    db 0x6a, 0xd5 ; push -0x2b
    db 0x6a, 0xd9 ; push -0x27
    db 0x6a, 0xdd ; push -0x23
    db 0x6a, 0xe1 ; push -0x1f
    db 0x6a, 0xe5 ; push -0x1b
    db 0x6a, 0xe9 ; push -0x17
    db 0x6a, 0xed ; push -0x13
    db 0x6a, 0xf1 ; push -0xf
    db 0x6a, 0xf5 ; push -0xb
    db 0x6a, 0xf9 ; push -7
    db 0x6a, 0xfd ; push -3
    db 0x6a, 0x01 ; push 1
    db 0x6b, 0x05, 0x6b ; imul ax, word ptr [di], 0x6b
    or word [bp + di + 0xd], bp
    db 0x6b, 0x11, 0x6b ; imul dx, word ptr [bx + di], 0x6b
    adc ax, 0x196b
    db 0x6b, 0x1d, 0x6b ; imul bx, word ptr [di], 0x6b
    and word [bp + di + 0x25], bp
    db 0x6b, 0x29, 0x6b ; imul bp, word ptr [bx + di], 0x6b
    sub ax, 0x316b
    db 0x6b, 0x35, 0x6b ; imul si, word ptr [di], 0x6b
    cmp word [bp + di + 0x3d], bp
    db 0x6b, 0x41, 0x6b, 0x45 ; imul ax, word ptr [bx + di + 0x6b], 0x45
    db 0x6b, 0x49, 0x6b, 0x4d ; imul cx, word ptr [bx + di + 0x6b], 0x4d
    db 0x6b, 0x51, 0x6b, 0x55 ; imul dx, word ptr [bx + di + 0x6b], 0x55
    db 0x6b, 0x59, 0x6b, 0x5d ; imul bx, word ptr [bx + di + 0x6b], 0x5d
    db 0x6b, 0x61, 0x6b, 0x65 ; imul sp, word ptr [bx + di + 0x6b], 0x65
    db 0x6b, 0x69, 0x6b, 0x6d ; imul bp, word ptr [bx + di + 0x6b], 0x6d
    db 0x6b, 0x71, 0x6b, 0x75 ; imul si, word ptr [bx + di + 0x6b], 0x75
    db 0x6b, 0x79, 0x6b, 0x7d ; imul di, word ptr [bx + di + 0x6b], 0x7d
    db 0x6b, 0x81, 0x6b, 0x85, 0x6b ; imul ax, word ptr [bx + di - 0x7a95], 0x6b
    mov word [bp + di - 0x0073], bp
    db 0x6b, 0x91, 0x6b, 0x95, 0x6b ; imul dx, word ptr [bx + di - 0x6a95], 0x6b
    cwd
    db 0x6b, 0x9d, 0x6b, 0x3d, 0x4f ; imul bx, word ptr [di + 0x3d6b], 0x4f
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6ba1]
    mov ax, 0xffff
    ret
loc_1c09:
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x6]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short 0x1c1c
    mov ax, 1
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5d54], al
    mov ax, word [bp + 0x8]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short 0x1c37
    mov ax, 1
    mov byte [bx + 0x5d55], al
    mov ax, word [bp + 0xa]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short 0x1c48
    mov ax, 1
    mov byte [bx + 0x5d56], al
    mov ax, word [bp + 0xc]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short 0x1c59
    mov ax, 1
    mov byte [bx + 0x5d57], al
    mov ax, word [bp + 0xe]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short 0x1c6a
    mov ax, 1
    mov byte [bx + 0x5d58], al
    mov ax, word [bp + 0x10]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short 0x1c7b
    mov ax, 1
    mov byte [bx + 0x5d59], al
    ret
    mov ax, 0xfffc
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d67]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    mov al, byte [bx + 0x5d66]
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xc8 ; mov cx, ax
    shl ax, 1
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    mov cx, 3
    cwd
    idiv cx
    mov word [bp - 0x0002], ax
    mov word [bp - 0x0004], 0
    cmp ax, strict word 0xd
    jle short 0x1cba
    inc word [bp - 0x0004]
    cmp ax, strict word 0x10
    jle short 0x1cc2
    inc word [bp - 0x0004]
    cmp byte [bx + 0x5e2b], 5
    jne short 0x1ccc
    inc word [bp - 0x0004]
    cmp byte [bx + 0x5e2b], 6
    jne short 0x1cd6
    dec word [bp - 0x0004]
    mov al, byte [bx + 0x5e2d]
    db 0x2a, 0xe4 ; sub ah, ah
    jmp near 0x1f00
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push ax
    push ax
    push ax
    push ax
    push ax
    push word [bp + 0x4]
    call 0x1c09
    add sp, byte 0x0e
    jmp near 0x1f0d
    mov ax, 0x248
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5d50], 2
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    push ax
    push word [bp + 0x4]
    call 0x1c09
    add sp, byte 0x0e
    jmp near 0x1f0d
    mov ax, 0x248
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5d51], 2
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push word [bp + 0x4]
    call 0x1c09
    add sp, byte 0x0e
    jmp near 0x1f0d
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push ax
    push word [bp + 0x4]
    call 0x1c09
    add sp, byte 0x0e
    jmp near 0x1f0d
    mov ax, 0x248
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5d52], 2
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    push word [bp + 0x4]
    call 0x1c09
    add sp, byte 0x0e
    jmp near 0x1f0d
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
loc_1db8:
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    push word [bp + 0x4]
    call 0x1c09
    add sp, byte 0x0e
    jmp near 0x1f0d
    mov ax, 0x248
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5d53], 2
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 4
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    push word [bp + 0x4]
    call 0x1c09
    add sp, byte 0x0e
    jmp near 0x1f0d
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push word [bp + 0x4]
    call 0x1c09
    add sp, byte 0x0e
    jmp near 0x1f0d
    mov ax, 0x248
    imul word [bp + 0x4]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5d50], 1
    mov byte [bx + 0x5d51], 1
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    push ax
    push ax
    push ax
    push word [bp + 0x4]
    call 0x1c09
    add sp, byte 0x0e
    jmp near 0x1f0d
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push word [bp + 0x4]
    call 0x1c09
    add sp, byte 0x0e
    jmp near 0x1f0d
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    push word [bp + 0x4]
    call 0x1c09
    add sp, byte 0x0e
    jmp short 0x1f0d
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push word [bp + 0x4]
    call 0x1c09
    add sp, byte 0x0e
    jmp short 0x1f0d
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push word [bp + 0x4]
    call 0x1c09
    add sp, byte 0x0e
    jmp short 0x1f0d
    db 0x26, 0x6d ; insw word ptr es:[di], dx
    cmp al, 0x6d
    insb
    insw
    db 0x26, 0x6d ; insw word ptr es:[di], dx
    mov ax, word [0xc06d]
    insw
    cmc
    insw
    sbb word [bp + 0x4e], bp
    outsb
    jb short 0x1f66
    mov ax, word [0xc56e]
    outsb
    in al, 0x6e
    or byte [bx + 0x3d], ch
    push cs
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6f2b]
    ret
    mov ax, 0
    call 0xf40b
    mov al, byte [bp + 0x4]
    mov byte [0x89df], al
    mov byte [0x89ea], al
    mov al, byte [bp + 0x6]
    mov byte [0x89e0], al
    mov byte [0x89f6], al
    mov al, byte [bp + 0x8]
    mov byte [0x89e1], al
    mov byte [0x8a02], al
    mov al, byte [bp + 0xa]
    mov byte [0x89e2], al
    mov byte [0x8a0e], al
    mov al, byte [bp + 0xc]
    mov byte [0x89e3], al
    mov byte [0x8a1a], al
    mov al, byte [bp + 0xe]
    mov byte [0x89e4], al
    mov byte [0x8a26], al
    mov al, byte [bp + 0x10]
    mov byte [0x89e5], al
    mov byte [0x8a32], al
    mov al, byte [bp + 0x12]
    mov byte [0x89e6], al
    mov byte [0x8a3e], al
    mov al, byte [bp + 0x14]
    mov byte [0x89e7], al
    mov byte [0x8a4a], al
    mov al, byte [bp + 0x16]
    mov byte [0x89e8], al
    mov byte [0x8a56], al
    ret
    mov ax, 0xffc0
    call 0xf40b
    mov ax, 0
    push ax
    push word [bp + 0x4]
    lea ax, word [bp - 0x0040]
    push ax
    mov ax, 0
    push ax
    call 0xb63c
    add sp, byte 8
    cmp word [bp + 0x6], byte 1
    jle short 0x1fa8
    cmp word [bp + 0x6], byte 0x10
    jge short 0x1fa8
    mov ax, word [bp + 0x6]
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    db 0x03, 0xdd ; add bx, bp
    mov ax, word [bx - 0x0048]
    mov dx, word [bx - 0x0046]
    ret
    mov ax, 0
    mov dx, 0
    ret
    mov ax, 0xff8e
    call 0xf40b
    mov word [bp - 0x000e], 0
    mov ax, word [0x5218]
    mov word [bp - 0x0010], ax
    cmp byte [0x5987], 5
    jne short 0x1fd0
    cmp ax, strict word 0
    jle short 0x1fd0
    inc ax
    inc ax
    jmp short 0x1fd3
    mov ax, word [bp - 0x0010]
    mov word [bp - 0x0010], ax
    mov ax, 0
    push ax
    call 0xef14
    pop cx
    lea ax, word [bp - 0x005e]
    push ax
    mov ax, 0x58c
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0072]
    push ax
    mov ax, 0x58d
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x90c2
    push ax
    lea ax, word [bp - 0x0036]
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, 0x593a
    push ax
    lea ax, word [bp - 0x004a]
    push ax
    call 0xf364
    add sp, byte 4
    mov word [bp - 0x0012], 1
    lea ax, word [bp - 0x0036]
    push ax
    lea ax, word [bp - 0x004a]
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x587
    push ax
    call 0xef7
    add sp, byte 0x0c
    cmp ax, strict word 2
    jne short 0x203f
    mov ax, 0xffff
    ret
    mov ax, 0x3a
    push ax
    mov ax, 0x5912
    push ax
    mov ax, 0x91c6
    push ax
    call 0xd112
    add sp, byte 6
    mov ax, 0x3a
    push ax
    lea ax, word [bp - 0x004a]
    push ax
    mov ax, 0x91da
    push ax
    call 0xd112
    add sp, byte 6
    lea ax, word [bp - 0x004a]
    push ax
    mov ax, 0x91ee
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, 0x91ee
    push ax
    call 0xfa90
    pop cx
    cmp ax, strict word 0
    jle short 0x209d
    mov ax, 0x91ee
    push ax
    call 0xfa90
    pop cx
    dec ax
    mov word [bp - 0x0002], ax
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x6e12], 0x5c
    je short 0x209d
    mov byte [bx - 0x6e11], 0x5c
    mov byte [bx - 0x6e10], 0
    lea ax, word [bp - 0x0036]
    push ax
    mov ax, 0x91ee
    push ax
    call 0xf32d
    add sp, byte 4
    cmp byte [0x5987], 1
    jne short 0x20c7
    mov ax, 0x91da
    push ax
    mov ax, 0x91c6
    push ax
    call 0x9386
    add sp, byte 4
    test ax, ax
    jne short 0x20c7
    jmp near 0x2148
    mov ax, 0x91da
    push ax
    call 0xfa90
    pop cx
    cmp ax, strict word 0
    jle short 0x2118
    mov ax, 0x91da
    push ax
    mov ax, 0x91c6
    push ax
    call 0x9386
    add sp, byte 4
    test ax, ax
    je short 0x20ed
    cmp byte [0x5987], 5
    jne short 0x20f2
    mov word [bp - 0x000e], 1
    mov ax, 0
    push ax
    push word [bp - 0x000e]
    mov ax, 0xffff
    push ax
    mov ax, 0x91da
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 1
    cmp word [bp - 0x000e], byte 0
    je short 0x2113
    mov ax, 0
    mov word [bp - 0x0012], ax
    jmp short 0x2148
    cmp byte [0x5987], 1
    jbe short 0x2148
    mov word [bp - 0x000e], 1
    mov ax, 0
    push ax
    push word [bp - 0x000e]
    mov ax, 0xffff
    push ax
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 1
    cmp word [bp - 0x000e], byte 0
    je short 0x2145
    mov ax, 0
    mov word [bp - 0x0012], ax
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 1
    push ax
    mov ax, 0xd
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0x61
    push ax
    mov ax, 3
    push ax
    lea ax, word [bp - 0x0072]
    push ax
    call api_idx_0004
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x91ee
    push ax
    call 0xf909
    add sp, byte 4
    mov word [bp - 0x000a], ax
    cmp ax, strict word 0xffff
    jne short 0x21b9
    lea ax, word [bp - 0x005e]
    push ax
    call 0x150d
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short 0x21b5
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    mov ax, 0
    push ax
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    push word [bp - 0x000a]
    call 0xfdbd
    add sp, byte 8
    mov ax, 0x19e
    push ax
    mov ax, 0x9220
    push ax
    push word [bp - 0x000a]
    call 0xfd6f
    add sp, byte 6
    mov word [bp - 0x000c], ax
    cmp ax, strict word 0
    jg short 0x2214
    lea ax, word [bp - 0x005e]
    push ax
    call 0x150d
    pop cx
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short 0x2210
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    mov ax, 0x6d6
    push ax
    call 0xf4a3
    pop cx
    mov word [0x93be], ax
    cmp word [0x93be], byte 0
    jne short 0x222e
    mov ax, 0x1d
    push ax
    call 0xb171
    pop cx
    mov word [bp - 0x0008], 0
    mov ax, 0x542
    push ax
    push word [0x93be]
    push word [bp - 0x000a]
    call 0xfd6f
    add sp, byte 6
    mov word [bp - 0x000c], ax
    cmp ax, strict word 0
    jg short 0x2281
    push word [0x93be]
    call 0xf5a1
    pop cx
    lea ax, word [bp - 0x005e]
    push ax
    call 0x150d
    pop cx
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short 0x227d
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    mov ax, 0x6cc
    push ax
    push word [0x93be]
    push word [bp - 0x000a]
    call 0xfd6f
    add sp, byte 6
    mov word [bp - 0x000c], ax
    cmp ax, strict word 0
    jg short 0x22cf
    push word [0x93be]
    call 0xf5a1
    pop cx
    lea ax, word [bp - 0x005e]
    push ax
    call 0x150d
    pop cx
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short 0x22cb
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    inc word [bp - 0x0008]
    mov ax, word [bp - 0x0008]
    cmp ax, strict word 0x10
    jge short 0x22dd
    jmp near 0x2233
    push word [0x93be]
    call 0xf5a1
    pop cx
    mov ax, 0x42
    push ax
    mov ax, 0x93c0
    push ax
    push word [bp - 0x000a]
    call 0xfd6f
    add sp, byte 6
    mov word [bp - 0x000c], ax
    cmp ax, strict word 0
    jg short 0x232b
    lea ax, word [bp - 0x005e]
    push ax
    call 0x150d
    pop cx
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short 0x2327
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    mov word [0x69c8], 0
    mov word [bp - 0x0002], 0
    jmp near 0x2db5
    mov ax, 0x1b0
    push ax
    mov ax, 0x9402
    push ax
    push word [bp - 0x000a]
    call 0xfd6f
    add sp, byte 6
    mov word [bp - 0x000c], ax
    cmp ax, strict word 0
    jg short 0x237f
    lea ax, word [bp - 0x005e]
    push ax
    call 0x150d
    pop cx
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short 0x237b
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    push word [0x69c8]
    call 0x5b6
    pop cx
    mov cx, word [0x69c8]
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    mov word [bx + 0x69bc], ax
    mov ax, 0x248
    imul word [0x69c8]
    add ax, 0x5bf4
    mov word [bp - 0x0014], ax
    mov ax, word [0x9426]
    push ax
    cmp ax, strict word 5
    pop ax
    jle short 0x23ad
    mov ax, 5
    mov bx, word [bp - 0x0014]
    mov word [bx + 0x24], ax
    mov ax, 0x9402
    push ax
    push word [bp - 0x0014]
    call 0xf364
    add sp, byte 4
    mov ax, word [0x940a]
    mov dx, word [0x940c]
    mov bx, word [bp - 0x0014]
    mov word [bx + 0xa], dx
    mov word [bx + 0x8], ax
    mov bx, word [bp - 0x0014]
    mov word [bx + 0x12], 0
    mov word [bx + 0x10], 0
    mov bx, word [bp - 0x0014]
    mov word [bx + 0x16], 0
    mov word [bx + 0x14], 0
    mov word [bp - 0x0004], 0
    mov bx, word [bp - 0x0004]
    mov al, byte [bx - 0x6ad2]
    db 0x8b, 0xf3 ; mov si, bx
    mov bx, word [bp - 0x0014]
    mov byte [bx + si + 0x170], al
    cmp word [0x9426], byte 5
    jle short 0x2431
    mov bx, word [bp - 0x0014]
    mov si, word [bp - 0x0004]
    cmp byte [bx + si + 0x170], 0xe
    jbe short 0x2431
    mov al, byte [bx + si + 0x170]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x2b, 0xc1 ; sub ax, cx
    mov bx, word [bp - 0x0014]
    mov si, word [bp - 0x0004]
    mov byte [bx + si + 0x170], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 8
    jl short 0x23ef
    mov ax, word [0x941c]
    cwd
    idiv word [0x9426]
    mov bx, word [bp - 0x0014]
    mov cx, word [bx + 0x24]
    imul cx
    mov word [bx + 0x1a], ax
    mov bx, word [bp - 0x0014]
    cmp word [bx + 0x1a], byte 7
    jge short 0x245d
    mov word [bx + 0x1a], 7
    mov bx, word [bp - 0x0014]
    mov ax, word [bx + 0x24]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    add ax, strict word 8
    mov cx, word [bx + 0x1a]
    db 0x3b, 0xc1 ; cmp ax, cx
    jge short 0x248c
    mov ax, 8
    push ax
    call 0xb7a9
    pop cx
    mov bx, word [bp - 0x0014]
    mov cx, word [bx + 0x24]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    mov word [bx + 0x1a], ax
    mov bx, word [bp - 0x0014]
    mov ax, word [bx + 0x1a]
    mov word [bx + 0x18], ax
    mov bx, word [bp - 0x0014]
    mov al, byte [bx + 0x170]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x001a], ax
    mov al, byte [bx + 0x173]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x001c], ax
    shl ax, 1
    add ax, word [bp - 0x001a]
    mov cx, 3
    imul cx
    mov word [bp - 0x001e], ax
    mov ax, word [bp - 0x001a]
    shl ax, 1
    add ax, word [bp - 0x001c]
    imul cx
    mov word [bp - 0x0020], ax
    cmp word [bp - 0x001c], byte 0x0f
    jle short 0x24d0
    mov ax, word [bp - 0x001c]
    add word [bp - 0x001e], ax
    cmp word [bp - 0x001c], byte 0x11
    jle short 0x24dc
    mov ax, word [bp - 0x001c]
    add word [bp - 0x001e], ax
    cmp word [bp - 0x001a], byte 0x0f
    jle short 0x24e8
    mov ax, word [bp - 0x001a]
    add word [bp - 0x0020], ax
    cmp word [bp - 0x001a], byte 0x11
    jle short 0x24f4
    mov ax, word [bp - 0x001a]
    add word [bp - 0x0020], ax
    mov ax, 5
    imul word [bx + 0x24]
    add word [bp - 0x001e], ax
    mov ax, word [bp - 0x001e]
    mov word [bx + 0x1c], ax
    mov ax, word [bp - 0x001e]
    mov bx, word [bp - 0x0014]
    mov word [bx + 0x1e], ax
    mov bx, word [bp - 0x0014]
    mov word [bx + 0x20], 0
    mov ax, 0xf
    imul word [bp - 0x0020]
    mov bx, word [bp - 0x0014]
    mov word [bx + 0x22], ax
    mov bx, word [bp - 0x0014]
    cmp byte [bx + 0x237], 5
    jne short 0x2535
    mov ax, word [bx + 0x22]
    shl ax, 1
    cwd
    idiv cx
    mov word [bx + 0x22], ax
    mov ax, word [0x9428]
    mov bx, word [bp - 0x0014]
    mov word [bx + 0x26], ax
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx - 0x6bd4]
    cwd
    idiv word [0x9426]
    mov bx, word [bp - 0x0014]
    mov cx, word [bx + 0x24]
    imul cx
    mov cx, word [bp - 0x0004]
    shl cx, 1
    shl cx, 1
    db 0x8b, 0xf1 ; mov si, cx
    mov word [bx + si + 0x2a], ax
    mov bx, word [bp - 0x0014]
    mov ax, word [bx + 0x24]
    mov cx, 7
    imul cx
    add ax, strict word 7
    mov cx, word [bp - 0x0004]
    shl cx, 1
    shl cx, 1
    db 0x8b, 0xf1 ; mov si, cx
    mov cx, word [bx + si + 0x2a]
    db 0x3b, 0xc1 ; cmp ax, cx
    jge short 0x25ac
    mov ax, 7
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov bx, word [bp - 0x0014]
    mov ax, word [bx + 0x24]
    mov cx, 7
    imul cx
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    mov cx, word [bp - 0x0004]
    shl cx, 1
    shl cx, 1
    db 0x8b, 0xf1 ; mov si, cx
    mov word [bx + si + 0x2a], ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xf0 ; mov si, ax
    mov bx, word [bp - 0x0014]
    mov ax, word [bx + si + 0x2a]
    mov word [bx + si + 0x28], ax
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 6
    jge short 0x25cc
    jmp near 0x2543
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0004]
    mov word [bp - 0x001a], ax
    jmp near 0x268e
    mov word [bp - 0x001a], 0xc
    jmp near 0x269e
    mov word [bp - 0x001a], 0xd
    jmp near 0x269e
    mov word [bp - 0x001a], 0xe
    jmp near 0x269e
    mov word [bp - 0x001a], 0xf
    jmp near 0x269e
    mov word [bp - 0x001a], 0x10
    jmp near 0x269e
    mov word [bp - 0x001a], 0x11
    jmp near 0x269e
    mov word [bp - 0x001a], 0xffff
    jmp near 0x269e
    mov word [bp - 0x001a], 0xffff
    jmp near 0x269e
    mov word [bp - 0x001a], 0xffff
    jmp near 0x269e
    mov word [bp - 0x001a], 0xffff
    jmp short 0x269e
    mov word [bp - 0x001a], 0xffff
    jmp short 0x269e
    mov word [bp - 0x001a], 0x18
    jmp short 0x269e
    mov word [bp - 0x001a], 0xffff
    jmp short 0x269e
    mov word [bp - 0x001a], 0x1b
    jmp short 0x269e
    mov word [bp - 0x001a], 0x1d
    jmp short 0x269e
    mov word [bp - 0x001a], 0x1e
    jmp short 0x269e
    mov word [bp - 0x001a], 0x1f
    jmp short 0x269e
    mov word [bp - 0x001a], 0x20
    jmp short 0x269e
    mov word [bp - 0x001a], 0x21
    jmp short 0x269e
    and word [bp + 0x29], si
    jbe short 0x269e
    jbe short 0x26a8
    jbe short 0x26b2
    jbe short 0x26bc
    jbe short 0x26c6
    jbe short 0x26d0
    jbe short 0x26da
    jbe short 0x26e4
    jbe short 0x26ed
    jbe short 0x26f6
    jbe short 0x26ff
    jbe short 0x2608
    jbe short 0x2611
    jbe short 0x261a
    jbe short 0x2623
    jbe short 0x262c
    jbe short 0x2635
    jbe short 0x26bc
    or ax, word [bx + si]
    cmp ax, strict word 0x13
    jae short 0x269e
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x76af]
    cmp word [bp - 0x001a], byte 0
    jl short 0x270c
    mov ax, word [0x9426]
    mov word [bp - 0x001c], ax
    cmp ax, strict word 0x12
    jle short 0x26b4
    mov word [bp - 0x001c], 0x12
    cmp word [bp - 0x001c], byte 0
    jle short 0x26f3
    mov bx, word [bp - 0x0004]
    mov cl, byte [bx - 0x6aca]
    mov bx, word [bp - 0x0014]
    mov si, word [bp - 0x001a]
    mov al, byte [bx + si + 0x178]
    db 0x3a, 0xc1 ; cmp al, cl
    jae short 0x26f3
    mov al, byte [bx + si + 0x178]
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xc8 ; mov cx, ax
    push cx
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    pop cx
    db 0x03, 0xc1 ; add ax, cx
    inc ax
    mov bx, word [bp - 0x0014]
    mov si, word [bp - 0x001a]
    mov byte [bx + si + 0x178], al
    dec word [bp - 0x001c]
    jmp short 0x26b4
    mov bx, word [bp - 0x0004]
    mov cl, byte [bx - 0x6aca]
    mov bx, word [bp - 0x0014]
    mov si, word [bp - 0x001a]
    mov al, byte [bx + si + 0x178]
    db 0x3a, 0xc1 ; cmp al, cl
    jbe short 0x270c
    mov byte [bx + si + 0x178], cl
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x1e
    jge short 0x271a
    jmp near 0x25d1
    mov word [bp - 0x0004], 0
    mov bx, word [bp - 0x0004]
    mov al, byte [bx - 0x6aac]
    db 0x2a, 0xe4 ; sub ah, ah
    cwd
    idiv word [0x9426]
    mov bx, word [bp - 0x0014]
    mov cx, word [bx + 0x24]
    imul cx
    mov si, word [bp - 0x0004]
    mov byte [bx + si + 0x1a8], al
    mov bx, word [bp - 0x0014]
    mov si, word [bp - 0x0004]
    mov al, byte [bx + si + 0x1a8]
    mov byte [bx + si + 0x19a], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0xe
    jl short 0x271f
    mov word [bp - 0x0004], 0
    push word [bp - 0x0004]
    mov ax, 0x958a
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x27b7
    push word [bp - 0x0004]
    call 0x1a12
    pop cx
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jl short 0x27b7
    mov cx, 6
    imul cx
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x621], 4
    jae short 0x27b7
    push cx
    call 0xb7a9
    pop cx
    push ax
    mov ax, 6
    imul word [bp - 0x0006]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x621]
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x3b, 0xc1 ; cmp ax, cx
    jl short 0x27b7
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    mov ax, word [bp - 0x0014]
    add ax, 0x21e
    push ax
    call 0xec41
    add sp, byte 6
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x4f
    jl short 0x275a
    mov word [bp - 0x0004], 0
    mov bx, word [bp - 0x0004]
    mov al, byte [bx - 0x6a6a]
    db 0x8b, 0xf3 ; mov si, bx
    mov bx, word [bp - 0x0014]
    mov byte [bx + si + 0x22e], al
    mov bx, word [bp - 0x0004]
    mov al, byte [bx - 0x6a66]
    db 0x8b, 0xf3 ; mov si, bx
    mov bx, word [bp - 0x0014]
    mov byte [bx + si + 0x232], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 4
    jl short 0x27c7
    mov al, byte [0x959f]
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x237], al
    mov al, byte [0x95a0]
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x238], al
    mov al, byte [0x95a1]
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x239], al
    mov bx, word [bp - 0x0014]
    push word [bx + 0x24]
    mov al, byte [bx + 0x239]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    call 0x1f6f
    add sp, byte 4
    mov bx, word [bp - 0x0014]
    mov word [bx + 0xe], dx
    mov word [bx + 0xc], ax
    mov bx, word [bp - 0x0014]
    mov al, byte [bx + 0x239]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    mov al, byte [bx + 0x238]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    mov al, byte [bx + 0x237]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    call 0x1820
    add sp, byte 6
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x236], al
    mov al, byte [0x95a2]
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x23a], al
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x23b], 0
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x23f], 0
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x240], 1
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x241], 0xa
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x243], 1
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x244], 1
    mov bx, word [bp - 0x0014]
    mov al, byte [bx + 0x175]
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, word [bx + 0x24]
    db 0x03, 0xc1 ; add ax, cx
    mov byte [bx + 0x245], al
    mov ax, 3
    imul word [0x9426]
    push ax
    mov al, byte [0x95b0]
    db 0x98 ; cwde 
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    push ax
    mov bx, word [bp - 0x0014]
    mov ax, word [bx + 0x24]
    mov cx, 3
    imul cx
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x2b, 0xc1 ; sub ax, cx
    mov word [bp - 0x0004], ax
    mov cx, 0x64
    mov ax, word [bx + 0x24]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    db 0x2b, 0xc8 ; sub cx, ax
    mov ax, word [bp - 0x0004]
    db 0x3b, 0xc8 ; cmp cx, ax
    jle short 0x28f5
    mov ax, 5
    push ax
    call 0xb7a9
    pop cx
    mov cx, 0x64
    mov bx, word [bp - 0x0014]
    mov dx, word [bx + 0x24]
    shl dx, 1
    shl dx, 1
    shl dx, 1
    db 0x2b, 0xca ; sub cx, dx
    db 0x03, 0xc1 ; add ax, cx
    mov word [bp - 0x0004], ax
    cmp word [bp - 0x0004], byte 0x64
    jle short 0x2900
    mov word [bp - 0x0004], 0x64
    mov al, byte [bp - 0x0004]
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x246], al
    mov word [bp - 0x0004], 0
    push word [bp - 0x0004]
    push word [0x69c8]
    call 0xc608
    add sp, byte 4
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 2
    jl short 0x290f
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x1b6], 0xa
    mov bx, word [bp - 0x0014]
    cmp byte [bx + 0x175], 0xf
    jbe short 0x293e
    mov cx, 1
    jmp short 0x2941
    mov cx, 0
    mov al, byte [bx + 0x1b6]
    db 0x98 ; cwde 
    db 0x2b, 0xc1 ; sub ax, cx
    mov byte [bx + 0x1b6], al
    db 0x98 ; cwde 
    mov cx, 0
    cmp byte [bx + 0x175], 0x11
    jbe short 0x295a
    mov cx, 1
    db 0x2b, 0xc1 ; sub ax, cx
    mov byte [bx + 0x1b6], al
    mov al, byte [bx + 0x1b6]
    db 0x98 ; cwde 
    mov cx, 0
    cmp byte [bx + 0x237], 5
    jne short 0x2972
    mov cx, 2
    db 0x2b, 0xc1 ; sub ax, cx
    mov byte [bx + 0x1b6], al
    cmp byte [bx + 0x239], 0xd
    je short 0x2986
    cmp byte [bx + 0x239], 0xc
    jne short 0x29a1
    mov al, byte [bx + 0x1b6]
    db 0x98 ; cwde 
    push ax
    mov al, byte [bx + 0x189]
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, 0xa
    cwd
    idiv cx
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    db 0x2b, 0xc1 ; sub ax, cx
    mov byte [bx + 0x1b6], al
    mov byte [bx + 0x1b7], 0
    mov bx, word [bp - 0x0014]
    mov byte [bx + 0x1b8], 0
    mov word [bp - 0x0004], 3
    mov bx, word [bp - 0x0014]
    mov al, byte [bx + 0x1b6]
    mov si, word [bp - 0x0004]
    mov byte [bx + si + 0x1b6], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 8
    jl short 0x29b3
    mov word [bp - 0x0004], 0
    mov bx, word [bp - 0x0014]
    mov al, byte [bx + 0x177]
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, strict word 0xfff7
    jge short 0x29e5
    neg ax
    db 0x8b, 0xc8 ; mov cx, ax
    jmp short 0x29f2
    mov al, byte [bx + 0x177]
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xc8 ; mov cx, ax
    add ax, strict word 0xfff7
    db 0x8b, 0xc8 ; mov cx, ax
    shl cx, 1
    shl cx, 1
    mov ax, 0x28
    db 0x2b, 0xc1 ; sub ax, cx
    mov si, word [bp - 0x0004]
    mov byte [bx + si + 0x1be], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x60
    jl short 0x29d1
    mov word [bp - 0x0004], 0
    mov bx, word [bp - 0x0014]
    mov si, word [bp - 0x0004]
    mov byte [bx + si + 0x154], 0xff
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 8
    jl short 0x2a12
    push word [0x69c8]
    call 0x1c80
    pop cx
    mov word [bp - 0x0016], 0
    mov word [bp - 0x0018], 0
    cmp word [0x69c8], byte 0
    jne short 0x2a73
    mov ax, 1
    push ax
    mov ax, 0xfffe
    push ax
    mov ax, 0x78
    imul word [bp - 0x0016]
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0xc
    imul word [bp - 0x0018]
    db 0x03, 0xc8 ; add cx, ax
    mov ax, word [bp - 0x0014]
    db 0x03, 0xc1 ; add ax, cx
    add ax, strict word 0x40
    push ax
    mov ax, 0x19b
    push ax
    push word [0x69c8]
    call 0x156e
    add sp, byte 0x0a
    inc word [bp - 0x0018]
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0006], 0
    mov al, byte [0x95a1]
    db 0x2a, 0xe4 ; sub ah, ah
    jmp near 0x2b11
    mov word [bp - 0x0004], 8
    jmp near 0x2b1e
    mov word [bp - 0x0004], 0x12
    jmp near 0x2b1e
    mov word [bp - 0x0004], 0x18
    jmp near 0x2b1e
    mov word [bp - 0x0004], 6
    jmp near 0x2b1e
    mov word [bp - 0x0004], 0x1f
    mov word [bp - 0x0006], 0x21
    jmp short 0x2b1e
    mov word [bp - 0x0004], 0x12
    jmp short 0x2b1e
    mov word [bp - 0x0004], 0x1d
    mov word [bp - 0x0006], 0x1e
    jmp short 0x2b1e
    mov word [bp - 0x0004], 1
    jmp short 0x2b1e
    mov word [bp - 0x0004], 0x16
    jmp short 0x2b1e
    mov word [bp - 0x0004], 0x18
    jmp short 0x2b1e
    mov word [bp - 0x0004], 9
    jmp short 0x2b1e
    mov word [bp - 0x0004], 0xa
    jmp short 0x2b1e
    mov word [bp - 0x0004], 0x19
    jmp short 0x2b1e
    mov word [bp - 0x0004], 0x2f
    jmp short 0x2b1e
    int3
    jp short 0x2acc
    jp short 0x2ad6
    jp short 0x2ae0
    jp short 0x2aea
    jp short 0x2af8
    jp short 0x2b01
    jp short 0x2b0f
    jnp short 0x2b18
    jnp short 0x2b21
    jnp short 0x2b2a
    jnp short 0x2b33
    jnp short 0x2b3c
    jnp short 0x2b45
    jnp short 0x2b4f
    push cs
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x7b3c]
    cmp byte [0x959f], 5
    jne short 0x2b2f
    mov word [bp - 0x0004], 0x18d
    mov word [bp - 0x0006], 0
    cmp word [bp - 0x0004], byte 0
    jle short 0x2b66
    mov ax, 1
    push ax
    mov ax, 0xfffe
    push ax
    mov ax, 0x78
    imul word [bp - 0x0016]
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0xc
    imul word [bp - 0x0018]
    db 0x03, 0xc8 ; add cx, ax
    mov ax, word [bp - 0x0014]
    db 0x03, 0xc1 ; add ax, cx
    add ax, strict word 0x40
    push ax
    push word [bp - 0x0004]
    push word [0x69c8]
    call 0x156e
    add sp, byte 0x0a
    inc word [bp - 0x0018]
    cmp word [bp - 0x0006], byte 0
    jle short 0x2b9d
    mov ax, 1
    push ax
    mov ax, 0xfffe
    push ax
    mov ax, 0x78
    imul word [bp - 0x0016]
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0xc
    imul word [bp - 0x0018]
    db 0x03, 0xc8 ; add cx, ax
    mov ax, word [bp - 0x0014]
    db 0x03, 0xc1 ; add ax, cx
    add ax, strict word 0x40
    push ax
    push word [bp - 0x0006]
    push word [0x69c8]
    call 0x156e
    add sp, byte 0x0a
    inc word [bp - 0x0018]
    mov word [bp - 0x0022], 0xffff
    mov word [bp - 0x0004], 0
    jmp near 0x2c5f
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx - 0x6bbe]
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jg short 0x2bc4
    jmp near 0x2c5c
    push ax
    call 0x1683
    pop cx
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jge short 0x2c01
    cmp word [bp - 0x0022], byte 0xff
    je short 0x2be3
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0x2bff
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x6bb7]
    db 0x2a, 0xe4 ; sub ah, ah
    test ax, 1
    je short 0x2bff
    mov ax, word [bp - 0x0004]
    mov word [bp - 0x0022], ax
    jmp short 0x2c5c
    cmp word [bp - 0x0006], byte 0
    jle short 0x2c5c
    cmp word [bp - 0x0016], byte 2
    jge short 0x2c5c
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x6bb8]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    mov ax, 0x78
    imul word [bp - 0x0016]
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0xc
    imul word [bp - 0x0018]
    db 0x03, 0xc8 ; add cx, ax
    mov ax, word [bp - 0x0014]
    db 0x03, 0xc1 ; add ax, cx
    add ax, strict word 0x40
    push ax
    push word [bp - 0x0006]
    push word [0x69c8]
    call 0x156e
    add sp, byte 0x0a
    inc word [bp - 0x0018]
    mov ax, word [bp - 0x0018]
    cmp ax, strict word 0xa
    jl short 0x2c5c
    mov word [bp - 0x0018], 0
    inc word [bp - 0x0016]
    inc word [bp - 0x0004]
    mov al, byte [0x95ae]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp - 0x0004]
    jle short 0x2c6c
    jmp near 0x2baa
    mov word [bp - 0x0004], 0
    jmp near 0x2d2c
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx - 0x6b6e]
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jg short 0x2c8e
    jmp near 0x2d29
    push ax
    call 0x1683
    pop cx
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jge short 0x2cce
    cmp word [bp - 0x0022], byte 0xff
    je short 0x2cad
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0x2ccc
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x6b67]
    db 0x2a, 0xe4 ; sub ah, ah
    test ax, 1
    je short 0x2ccc
    mov ax, word [bp - 0x0004]
    add ax, strict word 0xa
    mov word [bp - 0x0022], ax
    jmp short 0x2d29
    cmp word [bp - 0x0006], byte 0
    jle short 0x2d29
    cmp word [bp - 0x0016], byte 2
    jge short 0x2d29
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x6b68]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    mov ax, 0x78
    imul word [bp - 0x0016]
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0xc
    imul word [bp - 0x0018]
    db 0x03, 0xc8 ; add cx, ax
    mov ax, word [bp - 0x0014]
    db 0x03, 0xc1 ; add ax, cx
    add ax, strict word 0x40
    push ax
    push word [bp - 0x0006]
    push word [0x69c8]
    call 0x156e
    add sp, byte 0x0a
    inc word [bp - 0x0018]
    mov ax, word [bp - 0x0018]
    cmp ax, strict word 0xa
    jl short 0x2d29
    mov word [bp - 0x0018], 0
    inc word [bp - 0x0016]
    inc word [bp - 0x0004]
    mov al, byte [0x95af]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp - 0x0004]
    jle short 0x2d39
    jmp near 0x2c74
    cmp word [bp - 0x0022], byte 0xff
    je short 0x2dae
    cmp word [bp - 0x0016], byte 2
    jge short 0x2dae
    mov ax, word [bp - 0x0022]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx - 0x6bbe]
    call 0x1683
    pop cx
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jge short 0x2d6c
    push ax
    cmp ax, strict word 0
    pop ax
    jge short 0x2d69
    neg ax
    mov word [bp - 0x0006], ax
    cmp word [bp - 0x0006], byte 0
    jle short 0x2dae
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0022]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x6bb8]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    mov ax, 0x78
    imul word [bp - 0x0016]
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0xc
    imul word [bp - 0x0018]
    db 0x03, 0xc8 ; add cx, ax
    mov ax, word [bp - 0x0014]
    db 0x03, 0xc1 ; add ax, cx
    add ax, strict word 0x40
    push ax
    push word [bp - 0x0006]
    push word [0x69c8]
    call 0x156e
    add sp, byte 0x0a
    inc word [0x69c8]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x9400]
    jge short 0x2dc1
    jmp near 0x2339
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    mov word [bp - 0x001a], 0xffff
    mov word [bp - 0x0004], 0
    jmp short 0x2e04
    mov word [bp - 0x0006], 0
    push word [bp - 0x0006]
    mov ax, 0x248
    imul word [bp - 0x0004]
    add ax, 0x5e26
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x2df6
    mov ax, word [bp - 0x0006]
    mov word [bp - 0x001a], ax
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 3
    jl short 0x2dd9
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, word [0x69c8]
    jl short 0x2dd4
    mov ax, word [bp - 0x001a]
    jmp near 0x2f49
    mov word [0x8f46], 0x5c
    mov word [0x8f44], 0x4f
    mov word [0x8f42], 4
    mov word [0x8f40], 7
    mov word [0x8f3e], 3
    mov word [0x82ee], 2
    mov word [0x830c], 0
    mov word [0x5c0a], 0
    mov word [0x5c08], 0x1388
    mov ax, 0
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0xffec
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 0xa
    push ax
    push ax
    mov ax, 0xffec
    push ax
    mov ax, 0xffa6
    push ax
    call 0x1f0e
    add sp, byte 0x14
    mov word [0x95b2], 1
    jmp near 0x2f63
    mov word [0x8f46], 0x8c
    mov word [0x8f44], 0x7d
    mov word [0x8f42], 4
    mov word [0x8f40], 5
    mov word [0x8f3e], 0xb
    mov word [0x82ee], 3
    mov word [0x830c], 6
    mov word [0x5c0a], 0
    mov word [0x5c08], 0x2710
    mov ax, 0x5a
    push ax
    mov ax, 0
    push ax
    mov ax, 0xa
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0xffd8
    push ax
    mov ax, 0x28
    push ax
    mov ax, 0xffa6
    push ax
    mov ax, 0xffce
    push ax
    call 0x1f0e
    add sp, byte 0x14
    mov word [0x95b2], 2
    jmp near 0x2f63
    mov word [0x8f46], 0x6e
    mov word [0x8f44], 0x8e
    mov word [0x8f42], 6
    mov word [0x8f40], 6
    mov word [0x8f3e], 1
    mov word [0x82ee], 2
    mov word [0x830c], 2
    mov ax, 0xffa6
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0xffec
    push ax
    mov ax, 0xffce
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0xffa1
    push ax
    mov ax, 0x23
    push ax
    mov ax, 0
    push ax
    call 0x1f0e
    add sp, byte 0x14
    mov word [0x95b2], 3
    jmp short 0x2f63
    mov word [0x95b2], 4
    jmp short 0x2f63
    cmp ax, strict word 0xffff
    je short 0x2f41
    cmp ax, strict word 0
    jne short 0x2f56
    jmp near 0x2e13
    cmp ax, strict word 1
    jne short 0x2f5e
    jmp near 0x2e7a
    cmp ax, strict word 2
    je short 0x2ee4
    cmp word [bp - 0x001a], byte 0xff
    jne short 0x2f6c
    jmp near 0x2feb
    mov ax, 1
    push ax
    push ax
    mov ax, 0x5642
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    mov ax, 0x5642
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x14
    push ax
    mov ax, word [0x830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x15
    push ax
    mov ax, word [0x830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, word [0x8f46]
    mov word [0x8f3a], ax
    mov ax, word [0x8f44]
    mov word [0x8f38], ax
    mov ax, word [0x8f42]
    mov word [0x8f36], ax
    mov ax, word [0x8f40]
    mov word [0x8f34], ax
    mov ax, word [0x8f3e]
    mov word [0x8f32], ax
    mov ax, word [0x82ee]
    mov word [0x8f30], ax
    mov ax, word [0x830c]
    mov word [0x8f3c], ax
    mov ax, 0
    ret
    mov ax, 0xffc8
    call 0xf40b
    mov word [bp - 0x000c], 0
    mov ax, word [0x5218]
    mov word [bp - 0x000e], ax
    cmp byte [0x5987], 5
    jne short 0x3010
    cmp ax, strict word 0
    jle short 0x3010
    inc ax
    inc ax
    jmp short 0x3013
    mov ax, word [bp - 0x000e]
    mov word [bp - 0x000e], ax
    mov ax, 0
    push ax
    call 0xef14
    pop cx
    lea ax, word [bp - 0x0024]
    push ax
    mov ax, 0x58c
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0038]
    push ax
    mov ax, 0x58d
    push ax
    call 0xb53b
    add sp, byte 4
    mov word [bp - 0x0010], 1
    cmp word [bp + 0x4], byte 0
    je short 0x304d
    mov ax, word [bp + 0x4]
    cmp ax, strict word 2
    jne short 0x306f
    mov word [0x95b2], 4
    mov ax, 1
    push ax
    mov ax, 0x90cf
    push ax
    call 0xd161
    add sp, byte 4
    push ax
    mov ax, 0x91ee
    push ax
    call 0xf364
    add sp, byte 4
    jmp near 0x31a2
    mov word [0x95b2], 0
    mov ax, 0x594e
    push ax
    mov ax, 0x593a
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x578
    push ax
    call 0xef7
    add sp, byte 0x0c
    cmp ax, strict word 2
    jne short 0x3099
    mov ax, 0xffff
    ret
    mov ax, 0x3a
    push ax
    mov ax, 0x5912
    push ax
    mov ax, 0x91c6
    push ax
    call 0xd112
    add sp, byte 6
    mov ax, 0x3a
    push ax
    mov ax, 0x593a
    push ax
    mov ax, 0x91da
    push ax
    call 0xd112
    add sp, byte 6
    mov ax, 0x593a
    push ax
    mov ax, 0x91ee
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, 0x91ee
    push ax
    call 0xfa90
    pop cx
    cmp ax, strict word 0
    jle short 0x30f7
    mov ax, 0x91ee
    push ax
    call 0xfa90
    pop cx
    dec ax
    mov word [bp - 0x0002], ax
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x6e12], 0x5c
    je short 0x30f7
    mov byte [bx - 0x6e11], 0x5c
    mov byte [bx - 0x6e10], 0
    mov ax, 0x594e
    push ax
    mov ax, 0x91ee
    push ax
    call 0xf32d
    add sp, byte 4
    cmp byte [0x5987], 1
    jne short 0x3121
    mov ax, 0x91da
    push ax
    mov ax, 0x91c6
    push ax
    call 0x9386
    add sp, byte 4
    test ax, ax
    jne short 0x3121
    jmp near 0x31a2
    mov ax, 0x91da
    push ax
    call 0xfa90
    pop cx
    cmp ax, strict word 0
    jle short 0x3172
    mov ax, 0x91da
    push ax
    mov ax, 0x91c6
    push ax
    call 0x9386
    add sp, byte 4
    test ax, ax
    je short 0x3147
    cmp byte [0x5987], 5
    jne short 0x314c
    mov word [bp - 0x000c], 1
    mov ax, 0
    push ax
    push word [bp - 0x000c]
    mov ax, 0xffff
    push ax
    mov ax, 0x91da
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 1
    cmp word [bp - 0x000c], byte 0
    je short 0x316d
    mov ax, 0
    mov word [bp - 0x0010], ax
    jmp short 0x31a2
    cmp byte [0x5987], 1
    jbe short 0x31a2
    mov word [bp - 0x000c], 1
    mov ax, 0
    push ax
    push word [bp - 0x000c]
    mov ax, 0xffff
    push ax
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 1
    cmp word [bp - 0x000c], byte 0
    je short 0x319f
    mov ax, 0
    mov word [bp - 0x0010], ax
    cmp word [bp + 0x4], byte 2
    je short 0x31bb
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x91ee
    push ax
    call 0xf909
    add sp, byte 4
    mov word [bp - 0x000a], ax
    cmp ax, strict word 0xffff
    jne short 0x31f7
    lea ax, word [bp - 0x0024]
    push ax
    call 0x150d
    pop cx
    cmp word [bp - 0x000c], byte 0
    je short 0x31f3
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    cmp word [bp + 0x4], byte 0
    je short 0x3205
    mov ax, word [bp + 0x4]
    cmp ax, strict word 2
    jne short 0x3207
    jmp short 0x323c
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 1
    push ax
    mov ax, 0xd
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0x61
    push ax
    mov ax, 3
    push ax
    lea ax, word [bp - 0x0038]
    push ax
    call api_idx_0004
    add sp, byte 0x0e
    mov si, 0x5642
    mov di, 0x95b4
    mov cx, ds
    mov es, cx
    mov cx, 0x1a6
    db 0xf3, 0xa5 ; rep movsw word ptr es:[di], word ptr [si]
    mov ax, 0
    push ax
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    push word [bp - 0x000a]
    call 0xfdbd
    add sp, byte 8
    mov ax, 0x34c
    push ax
    mov ax, 0x5642
    push ax
    push word [bp - 0x000a]
    call 0xfd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short 0x32a6
    lea ax, word [bp - 0x0024]
    push ax
    call 0x150d
    pop cx
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000c], byte 0
    je short 0x32a2
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    mov word [bp - 0x0002], 0
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0x9884
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0x5912
    push ax
    call 0xf364
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short 0x32ab
    mov al, byte [0x98d4]
    mov byte [0x5962], al
    mov al, byte [0x98d5]
    mov byte [0x5963], al
    mov ax, 0x98d6
    push ax
    mov ax, 0x5964
    push ax
    call 0xf364
    add sp, byte 4
    mov al, byte [0x98ea]
    mov byte [0x5978], al
    mov al, byte [0x98eb]
    mov byte [0x5979], al
    mov word [bp - 0x0002], 0
    mov bx, word [bp - 0x0002]
    mov al, byte [bx - 0x6712]
    mov byte [bx + 0x597c], al
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short 0x32fb
    mov al, byte [0x98f6]
    mov byte [0x5984], al
    mov al, byte [0x98f7]
    mov byte [0x5985], al
    mov ax, word [0x98f2]
    mov word [0x5980], ax
    mov ax, word [0x98f4]
    mov word [0x5982], ax
    mov al, byte [0x98f8]
    mov byte [0x5986], al
    mov al, byte [0x98f9]
    mov byte [0x5987], al
    mov al, byte [0x98fa]
    mov byte [0x5988], al
    mov al, byte [0x98fb]
    mov byte [0x5989], al
    mov al, byte [0x98fc]
    mov byte [0x598a], al
    mov al, byte [0x98fd]
    mov byte [0x598b], al
    mov al, byte [0x98fe]
    mov byte [0x598c], al
    mov al, byte [0x5986]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [0x9058], ax
    mov ax, 6
    imul word [0x590e]
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jle short 0x33ad
    push ax
    push word [0x0e10]
    push word [bp - 0x000a]
    call 0xfd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short 0x33ad
    lea ax, word [bp - 0x0024]
    push ax
    call 0x150d
    pop cx
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000c], byte 0
    je short 0x33a9
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    mov ax, word [0x5910]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jle short 0x3401
    push ax
    push word [0x0e0e]
    push word [bp - 0x000a]
    call 0xfd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short 0x3401
    lea ax, word [bp - 0x0024]
    push ax
    call 0x150d
    pop cx
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000c], byte 0
    je short 0x33fd
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    mov word [bp - 0x0004], 0
    mov ax, 0x80
    push ax
    mov ax, 0x9900
    push ax
    push word [bp - 0x000a]
    call 0xfd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short 0x344c
    lea ax, word [bp - 0x0024]
    push ax
    call 0x150d
    pop cx
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000c], byte 0
    je short 0x3448
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    mov ax, 0x80
    push ax
    mov ax, 0x9980
    push ax
    push word [bp - 0x000a]
    call 0xfd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short 0x3492
    lea ax, word [bp - 0x0024]
    push ax
    call 0x150d
    pop cx
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000c], byte 0
    je short 0x348e
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    mov ax, 0x80
    push ax
    mov ax, word [bp - 0x0004]
    mov cx, 7
    shl ax, cl
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, word [0x0e1a]
    mov dx, word [0x0e1c]
    db 0x03, 0xc1 ; add ax, cx
    push dx
    push ax
    push ds
    mov ax, 0x9900
    push ax
    call 0xafcc
    add sp, byte 0x0a
    mov ax, 0x80
    push ax
    mov ax, word [bp - 0x0004]
    mov cx, 7
    shl ax, cl
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, word [0x0e16]
    mov dx, word [0x0e18]
    db 0x03, 0xc1 ; add ax, cx
    push dx
    push ax
    push ds
    mov ax, 0x9980
    push ax
    call 0xafcc
    add sp, byte 0x0a
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x20
    jge short 0x34e8
    jmp near 0x3406
    mov ax, 0x4c
    push ax
    mov ax, 0x9a00
    push ax
    push word [bp - 0x000a]
    call 0xfd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short 0x352e
    lea ax, word [bp - 0x0024]
    push ax
    call 0x150d
    pop cx
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000c], byte 0
    je short 0x352a
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    cmp word [0x9a00], byte 0xff
    jne short 0x3562
    lea ax, word [bp - 0x0024]
    push ax
    call 0x150d
    pop cx
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000c], byte 0
    je short 0x355e
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    mov ax, word [0x9a02]
    mov word [0x8f46], ax
    mov ax, word [0x9a04]
    mov word [0x8f44], ax
    mov ax, word [0x9a06]
    mov word [0x8f42], ax
    mov ax, word [0x9a08]
    mov word [0x8f40], ax
    mov ax, word [0x9a0a]
    mov word [0x8f3e], ax
    mov ax, word [0x9a0c]
    mov word [0x82ee], ax
    mov ax, word [0x9a00]
    mov word [0x830c], ax
    mov ax, word [0x9a10]
    mov word [0x8f3a], ax
    mov ax, word [0x9a12]
    mov word [0x8f38], ax
    mov ax, word [0x9a14]
    mov word [0x8f36], ax
    mov ax, word [0x9a16]
    mov word [0x8f34], ax
    mov ax, word [0x9a18]
    mov word [0x8f32], ax
    mov ax, word [0x9a1a]
    mov word [0x8f30], ax
    mov ax, word [0x9a0e]
    mov word [0x8f3c], ax
    mov ax, word [0x9a1c]
    mov word [0x8f2e], ax
    mov ax, word [0x9a1e]
    mov word [0x8f2c], ax
    mov ax, word [0x9a20]
    mov word [0x8f2a], ax
    mov ax, word [0x9a22]
    mov word [0x8f28], ax
    mov ax, word [0x9a24]
    mov word [0x8f26], ax
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx - 0x65ce]
    mov word [bx - 0x7d0e], ax
    mov ax, word [bx - 0x65cc]
    mov word [bx - 0x7d0c], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x35d9
    mov ax, word [0x9a26]
    mov dx, word [0x9a28]
    mov word [0x8f1e], dx
    mov word [0x8f1c], ax
    mov ax, word [0x9a2a]
    mov dx, word [0x9a2c]
    mov word [0x8f1a], dx
    mov word [0x8f18], ax
    mov ax, word [0x9a2e]
    mov dx, word [0x9a30]
    mov word [0x8f16], dx
    mov word [0x8f14], ax
    mov ax, 0x80
    push ax
    mov ax, 0x8a6e
    push ax
    push word [bp - 0x000a]
    call 0xfd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 0x90
    push ax
    mov ax, 0x89de
    push ax
    push word [bp - 0x000a]
    call 0xfd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 0x68
    push ax
    mov ax, 0x8976
    push ax
    push word [bp - 0x000a]
    call 0xfd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 0x14a
    push ax
    mov ax, 0x882c
    push ax
    push word [bp - 0x000a]
    call 0xfd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 0x344
    push ax
    mov ax, 0x84e8
    push ax
    push word [bp - 0x000a]
    call 0xfd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 0x42
    push ax
    mov ax, 0x84a6
    push ax
    push word [bp - 0x000a]
    call 0xfd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short 0x36d1
    lea ax, word [bp - 0x0024]
    push ax
    call 0x150d
    pop cx
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000c], byte 0
    je short 0x36cd
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    mov word [bp - 0x0002], 0
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    mov bx, word [bp - 0x0002]
    mov byte [bx + 0x5990], al
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x64
    jl short 0x36d6
    cmp word [bp + 0x4], byte 1
    je short 0x36f9
    jmp near 0x37d4
    mov ax, 0x64
    push ax
    mov ax, 0x5990
    push ax
    push word [bp - 0x000a]
    call 0xfd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short 0x373f
    lea ax, word [bp - 0x0024]
    push ax
    call 0x150d
    pop cx
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000c], byte 0
    je short 0x373b
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    mov word [0x69c8], 0
    mov word [bp - 0x0002], 0
    jmp near 0x37c8
    mov ax, 0x248
    push ax
    mov ax, 0x9a4c
    push ax
    push word [bp - 0x000a]
    call 0xfd6f
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short 0x3793
    lea ax, word [bp - 0x0024]
    push ax
    call 0x150d
    pop cx
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000c], byte 0
    je short 0x378f
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    push word [0x69c8]
    call 0x5b6
    pop cx
    mov cx, word [0x69c8]
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    mov word [bx + 0x69bc], ax
    mov si, 0x9a4c
    mov ax, 0x248
    imul word [0x69c8]
    db 0x8b, 0xf8 ; mov di, ax
    add ax, 0x5bf4
    db 0x8b, 0xf8 ; mov di, ax
    mov cx, ds
    mov es, cx
    mov cx, 0x124
    db 0xf3, 0xa5 ; rep movsw word ptr es:[di], word ptr [si]
    inc word [0x69c8]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x9a4a]
    jge short 0x37d4
    jmp near 0x374d
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000c], byte 0
    je short 0x37f5
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    cmp word [bp + 0x4], byte 2
    jne short 0x382f
    mov word [bp - 0x0002], 0
    mov ax, 0
    push ax
    mov ax, 0x248
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    add ax, 0x5bf4
    push ax
    call 0xf306
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x3800
    call 0x1faf
    cmp ax, strict word 0xffff
    jne short 0x382f
    mov ax, 0xffff
    ret
    mov word [bp - 0x0002], 0
    jmp short 0x386c
    mov ax, word [bp - 0x0002]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x69bc]
    mov ax, 0x248
    imul word [bp - 0x0002]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5e2a]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    call 0x559
    add sp, byte 4
    cmp word [bp + 0x4], byte 2
    je short 0x3869
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call 0xcb3a
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x3836
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    ret
    mov ax, 0xffb2
    call 0xf40b
    mov word [bp - 0x000e], 0
    mov ax, word [0x5218]
    mov word [bp - 0x0010], ax
    cmp byte [0x5987], 5
    jne short 0x38ad
    cmp ax, strict word 0
    jle short 0x38ad
    inc ax
    inc ax
    jmp short 0x38b0
    mov ax, word [bp - 0x0010]
    mov word [bp - 0x0010], ax
    mov ax, 0
    push ax
    call 0xef14
    pop cx
    lea ax, word [bp - 0x003a]
    push ax
    mov ax, 0x58c
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x004e]
    push ax
    mov ax, 0x58e
    push ax
    call 0xb53b
    add sp, byte 4
    mov word [bp - 0x0012], 1
    cmp word [bp + 0x4], byte 1
    jne short 0x38f7
    mov ax, 0x90db
    push ax
    lea ax, word [bp - 0x0026]
    push ax
    call 0xf364
    add sp, byte 4
    mov word [bp - 0x000c], 0x591
    jmp short 0x390a
    mov ax, 0x594e
    push ax
    lea ax, word [bp - 0x0026]
    push ax
    call 0xf364
    add sp, byte 4
    mov word [bp - 0x000c], 0x582
    lea ax, word [bp - 0x0026]
    push ax
    mov ax, 0x593a
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x000c]
    call 0xef7
    add sp, byte 0x0c
    cmp ax, strict word 2
    jne short 0x392d
    mov ax, 0xffff
    ret
    cmp word [bp + 0x4], byte 0
    jne short 0x3941
    lea ax, word [bp - 0x0026]
    push ax
    mov ax, 0x594e
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, 0x3a
    push ax
    mov ax, 0x5912
    push ax
    mov ax, 0x91c6
    push ax
    call 0xd112
    add sp, byte 6
    mov ax, 0x3a
    push ax
    mov ax, 0x593a
    push ax
    mov ax, 0x91da
    push ax
    call 0xd112
    add sp, byte 6
    mov ax, 0x593a
    push ax
    mov ax, 0x91ee
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, 0x91ee
    push ax
    call 0xfa90
    pop cx
    cmp ax, strict word 0
    jle short 0x399f
    mov ax, 0x91ee
    push ax
    call 0xfa90
    pop cx
    dec ax
    mov word [bp - 0x0002], ax
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x6e12], 0x5c
    je short 0x399f
    mov byte [bx - 0x6e11], 0x5c
    mov byte [bx - 0x6e10], 0
    lea ax, word [bp - 0x0026]
    push ax
    mov ax, 0x91ee
    push ax
    call 0xf32d
    add sp, byte 4
    cmp byte [0x5987], 1
    jne short 0x39c9
    mov ax, 0x91da
    push ax
    mov ax, 0x91c6
    push ax
    call 0x9386
    add sp, byte 4
    test ax, ax
    jne short 0x39c9
    jmp near 0x3a4a
    mov ax, 0x91da
    push ax
    call 0xfa90
    pop cx
    cmp ax, strict word 0
    jle short 0x3a1a
    mov ax, 0x91da
    push ax
    mov ax, 0x91c6
    push ax
    call 0x9386
    add sp, byte 4
    test ax, ax
    je short 0x39ef
    cmp byte [0x5987], 5
    jne short 0x39f4
    mov word [bp - 0x000e], 1
    mov ax, 0
    push ax
    push word [bp - 0x000e]
    mov ax, 0xffff
    push ax
    mov ax, 0x91da
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 1
    cmp word [bp - 0x000e], byte 0
    je short 0x3a15
    mov ax, 0
    mov word [bp - 0x0012], ax
    jmp short 0x3a4a
    cmp byte [0x5987], 1
    jbe short 0x3a4a
    mov word [bp - 0x000e], 1
    mov ax, 0
    push ax
    push word [bp - 0x000e]
    mov ax, 0xffff
    push ax
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 1
    cmp word [bp - 0x000e], byte 0
    je short 0x3a47
    mov ax, 0
    mov word [bp - 0x0012], ax
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0x301
    push ax
    mov ax, 0x91ee
    push ax
    call 0xf909
    add sp, byte 4
    mov word [bp - 0x000a], ax
    cmp ax, strict word 0xffff
    jne short 0x3a99
    lea ax, word [bp - 0x003a]
    push ax
    call 0x150d
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short 0x3a95
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    cmp word [0x830c], byte 0
    jge short 0x3aa3
    jmp near 0x3b2c
    mov ax, 1
    push ax
    mov ax, 0xd
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0x61
    push ax
    mov ax, 3
    push ax
    lea ax, word [bp - 0x004e]
    push ax
    call api_idx_0004
    add sp, byte 0x0e
    mov ax, 0x80
    push ax
    mov ax, word [0x830c]
    mov cx, 7
    shl ax, cl
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, word [0x0e1a]
    mov dx, word [0x0e1c]
    db 0x03, 0xc1 ; add ax, cx
    push dx
    push ax
    push ds
    mov ax, 0x8b7e
    push ax
    call 0xafcc
    add sp, byte 0x0a
    mov ax, 0x80
    push ax
    mov ax, word [0x830c]
    mov cx, 7
    shl ax, cl
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, word [0x0e16]
    mov dx, word [0x0e18]
    db 0x03, 0xc1 ; add ax, cx
    push dx
    push ax
    push ds
    mov ax, 0x8afe
    push ax
    call 0xafcc
    add sp, byte 0x0a
    mov ax, 0x10
    push ax
    mov ax, word [0x830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    mov ax, word [0x830c]
    shl ax, cl
    add ax, 0x8d14
    push ax
    call 0xfedc
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    push word [bp - 0x000a]
    call 0xfdbd
    add sp, byte 8
    mov ax, 0x34c
    push ax
    mov ax, 0x5642
    push ax
    push word [bp - 0x000a]
    call 0xfd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short 0x3b87
    lea ax, word [bp - 0x003a]
    push ax
    call 0x150d
    pop cx
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short 0x3b83
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    mov ax, 6
    imul word [0x590e]
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jle short 0x3bd9
    push ax
    push word [0x0e10]
    push word [bp - 0x000a]
    call 0xfd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short 0x3bd9
    lea ax, word [bp - 0x003a]
    push ax
    call 0x150d
    pop cx
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short 0x3bd5
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    mov ax, word [0x5910]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jle short 0x3c2d
    push ax
    push word [0x0e0e]
    push word [bp - 0x000a]
    call 0xfd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short 0x3c2d
    lea ax, word [bp - 0x003a]
    push ax
    call 0x150d
    pop cx
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short 0x3c29
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    mov word [bp - 0x0004], 0
    mov ax, 0x80
    push ax
    push ds
    mov ax, 0x9900
    push ax
    mov ax, word [bp - 0x0004]
    mov cx, 7
    shl ax, cl
    mov cx, ax
    mov ax, word [0x0e1a]
    mov dx, word [0x0e1c]
    add ax, cx
    push dx
    push ax
    call 0xafcc
    add sp, byte 0x0a
    mov ax, 0x80
    push ax
    push ds
    mov ax, 0x9980
    push ax
    mov ax, word [bp - 0x0004]
    mov cx, 7
    shl ax, cl
    mov cx, ax
    mov ax, word [0x0e16]
    mov dx, word [0x0e18]
    add ax, cx
    push dx
    push ax
    call 0xafcc
    add sp, byte 0x0a
    mov ax, 0x80
    push ax
    mov ax, 0x9900
    push ax
    push word [bp - 0x000a]
    call 0xfd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short 0x3cc0
    lea ax, word [bp - 0x003a]
    push ax
    call 0x150d
    pop cx
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short 0x3cbc
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    mov ax, 0x80
    push ax
    mov ax, 0x9980
    push ax
    push word [bp - 0x000a]
    call 0xfd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short 0x3d06
    lea ax, word [bp - 0x003a]
    push ax
    call 0x150d
    pop cx
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short 0x3d02
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x20
    jge short 0x3d14
    jmp near 0x3c32
    mov ax, word [0x8f46]
    mov word [0x9a02], ax
    mov ax, word [0x8f44]
    mov word [0x9a04], ax
    mov ax, word [0x8f42]
    mov word [0x9a06], ax
    mov ax, word [0x8f40]
    mov word [0x9a08], ax
    mov ax, word [0x8f3e]
    mov word [0x9a0a], ax
    mov ax, word [0x82ee]
    mov word [0x9a0c], ax
    mov ax, word [0x830c]
    mov word [0x9a00], ax
    mov ax, word [0x8f3a]
    mov word [0x9a10], ax
    mov ax, word [0x8f38]
    mov word [0x9a12], ax
    mov ax, word [0x8f36]
    mov word [0x9a14], ax
    mov ax, word [0x8f34]
    mov word [0x9a16], ax
    mov ax, word [0x8f32]
    mov word [0x9a18], ax
    mov ax, word [0x8f30]
    mov word [0x9a1a], ax
    mov ax, word [0x8f3c]
    mov word [0x9a0e], ax
    mov ax, word [0x8f2e]
    mov word [0x9a1c], ax
    mov ax, word [0x8f2c]
    mov word [0x9a1e], ax
    mov ax, word [0x8f2a]
    mov word [0x9a20], ax
    mov ax, word [0x8f28]
    mov word [0x9a22], ax
    mov ax, word [0x8f26]
    mov word [0x9a24], ax
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x7d0e]
    mov word [bx - 0x65ce], ax
    mov ax, word [bx - 0x7d0c]
    mov word [bx - 0x65cc], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x3d8b
    mov ax, word [0x8f1c]
    mov dx, word [0x8f1e]
    mov word [0x9a28], dx
    mov word [0x9a26], ax
    mov ax, word [0x8f18]
    mov dx, word [0x8f1a]
    mov word [0x9a2c], dx
    mov word [0x9a2a], ax
    mov ax, word [0x8f14]
    mov dx, word [0x8f16]
    mov word [0x9a30], dx
    mov word [0x9a2e], ax
    mov ax, word [0x69c8]
    mov word [0x9a4a], ax
    mov ax, 0x4c
    push ax
    mov ax, 0x9a00
    push ax
    push word [bp - 0x000a]
    call 0xfd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short 0x3e25
    lea ax, word [bp - 0x003a]
    push ax
    call 0x150d
    pop cx
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short 0x3e21
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    mov ax, 0x80
    push ax
    mov ax, 0x8a6e
    push ax
    push word [bp - 0x000a]
    call 0xfd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 0x90
    push ax
    mov ax, 0x89de
    push ax
    push word [bp - 0x000a]
    call 0xfd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 0x68
    push ax
    mov ax, 0x8976
    push ax
    push word [bp - 0x000a]
    call 0xfd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 0x14a
    push ax
    mov ax, 0x882c
    push ax
    push word [bp - 0x000a]
    call 0xfd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 0x344
    push ax
    mov ax, 0x84e8
    push ax
    push word [bp - 0x000a]
    call 0xfd76
loc_3e83:
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 0x42
    push ax
    mov ax, 0x84a6
    push ax
    push word [bp - 0x000a]
    call 0xfd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short 0x3ecf
    lea ax, word [bp - 0x003a]
    push ax
    call 0x150d
    pop cx
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short 0x3ecb
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    mov ax, 0x64
    push ax
    mov ax, 0x5990
    push ax
    push word [bp - 0x000a]
    call 0xfd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short 0x3f15
    lea ax, word [bp - 0x003a]
    push ax
    call 0x150d
    pop cx
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short 0x3f11
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    mov word [bp - 0x0002], 0
    jmp short 0x3f7e
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov si, ax
    add ax, 0x5bf4
    mov si, ax
    mov di, 0x9a4c
    mov cx, ds
    mov es, cx
    mov cx, 0x124
    db 0xf3, 0xa5 ; rep movsw word ptr es:[di], word ptr [si]
    mov ax, 0x248
    push ax
    mov ax, 0x9a4c
    push ax
    push word [bp - 0x000a]
    call 0xfd76
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short 0x3f7b
    lea ax, word [bp - 0x003a]
    push ax
    call 0x150d
    pop cx
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short 0x3f77
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0xffff
    ret
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x3f1c
    push word [bp - 0x000a]
    call 0xfda5
    pop cx
    cmp word [bp - 0x000e], byte 0
    je short 0x3fa8
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    mov ax, 0x91c6
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    mov ax, 0x90e8
    push ax
    call 0xd161
    add sp, byte 4
    push ax
    call 0xf909
    add sp, byte 4
    mov word [0x9088], ax
    cmp ax, strict word 0xffff
    jne short 0x3fdb
    mov ax, 0x14
    push ax
    call 0xb171
    pop cx
    mov ax, 0
    push ax
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    push word [0x9088]
    call 0xfdbd
    add sp, byte 8
    mov ax, 0x34c
    push ax
    mov ax, 0x5642
    push ax
    push word [0x9088]
    call 0xfd76
    add sp, byte 6
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x4013
    mov ax, 0x14
    push ax
    call 0xb171
    pop cx
    push word [0x9088]
    call 0xfda5
    pop cx
    mov al, byte [0x5986]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [0x9058], ax
    mov ax, 1
    push ax
    call 0xef14
    pop cx
    test word [0x9056], 0x1000
    je short 0x404c
    cmp byte [0x5989], 1
    jne short 0x404c
    cmp word [0x0e32], byte 0
    jne short 0x4044
    call 0xf02c
    mov word [0x0e32], 1
    jmp short 0x405c
    cmp word [0x0e32], byte 1
    jne short 0x4056
    call 0xf039
    mov word [0x0e32], 0
    call 0xec17
    ret
    mov ax, 0xfff4
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    mov ax, 0x3f
    push ax
    mov ax, 0
    push ax
    mov ax, 3
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x636c]
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, word [bp + 0x4]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 3
    imul word [bp - 0x0002]
    db 0x8b, 0xc8 ; mov cx, ax
    add ax, word [bp - 0x0004]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx - 0x606c], al
    cmp al, 0x20
    jbe short 0x40e8
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, strict word 0xffe0
    imul word [bp + 0x6]
    mov cx, 0x20
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    mov ax, 0x3f
    push ax
    mov ax, 0
    push ax
    mov al, byte [bx - 0x606c]
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, word [bp - 0x0006]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 3
    imul word [bp - 0x0002]
    db 0x8b, 0xc8 ; mov cx, ax
    add ax, word [bp - 0x0004]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx - 0x606c], al
    jmp short 0x413e
    mov ax, 3
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x606c], 0x20
    jae short 0x413e
    mov al, byte [bx - 0x606c]
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0x20
    db 0x2b, 0xc1 ; sub ax, cx
    imul word [bp + 0x6]
    mov cx, 0x20
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    mov ax, 0x3f
    push ax
    mov ax, 0
    push ax
    mov al, byte [bx - 0x606c]
    db 0x2a, 0xe4 ; sub ah, ah
    sub ax, word [bp - 0x0006]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 3
    imul word [bp - 0x0002]
    db 0x8b, 0xc8 ; mov cx, ax
    add ax, word [bp - 0x0004]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx - 0x606c], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jge short 0x414c
    jmp near 0x4070
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, 0x100
    jge short 0x415a
    jmp near 0x406b
    mov ax, 0xff
    push ax
    mov ax, 0x200
    push ax
    mov ax, 0xa294
    push ax
    call 0xf306
    add sp, byte 6
    mov word [bp - 0x0002], 0
    mov ax, 3
    imul word [bp - 0x0002]
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x606c]
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, 8
    cwd
    idiv cx
    mov word [bp - 0x0008], ax
    mov al, byte [bx - 0x606b]
    db 0x2a, 0xe4 ; sub ah, ah
    cwd
    idiv cx
    mov word [bp - 0x000a], ax
    mov al, byte [bx - 0x606a]
    db 0x2a, 0xe4 ; sub ah, ah
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov al, byte [bp - 0x0002]
    mov dx, word [bp - 0x0008]
    mov cx, 6
    shl dx, cl
    db 0x8b, 0xca ; mov cx, dx
    mov dx, word [bp - 0x000a]
    shl dx, 1
    shl dx, 1
    shl dx, 1
    db 0x03, 0xca ; add cx, dx
    add cx, word [bp - 0x000c]
    db 0x8b, 0xd9 ; mov bx, cx
    mov byte [bx - 0x5d6c], al
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, 0x100
    jl short 0x4171
    mov ax, 0xa294
    push ax
    mov ax, 0x9f94
    push ax
    call 0xf10b
    add sp, byte 4
    mov ax, 0xffff
    push ax
    push ax
    push ax
    call 0xf0d7
    add sp, byte 6
    ret
api_idx_0050:
    mov ax, 0xffb0
    call 0xf40b
    lea ax, word [bp - 0x0050]
    push ax
    push word [bp + 0x4]
    call 0xb53b
    add sp, byte 4
    mov ax, 0xc2
    push ax
    push word [bp + 0xa]
    call 0xe823
    add sp, byte 4
    cmp word [bp + 0x6], byte 0
    jge short 0x422a
    lea ax, word [bp - 0x0050]
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    mov word [bp + 0x6], ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0050]
    push ax
    call 0xe84e
    add sp, byte 4
    ret
loc_4245:
    mov ax, 0
    call 0xf40b
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 5
    push ax
    call 0xe830
    add sp, byte 4
    push word [bp + 0x6]
    mov ax, word [bp + 0x4]
    add ax, word [bp + 0x8]
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 6
    push ax
    call 0xe830
    add sp, byte 4
    ret
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x8]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0xe
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xbd98
    add sp, byte 8
    mov ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0xc3
    push ax
    mov ax, 0xb4
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    push word [bp + 0x4]
    call 0xb2e7
    add sp, byte 6
    ret
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x8]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xbd98
    add sp, byte 8
    mov ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0xc3
    push ax
    mov ax, 0xb4
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0xe84e
    add sp, byte 4
    ret
api_idx_0052:
    mov ax, 0xffae
    call 0xf40b
    mov ax, word [bp + 0x4]
    jmp near 0x46aa
    lea ax, word [bp - 0x0052]
    push ax
    mov al, byte [0x5989]
    sub ah, ah
    add ax, 0x92e
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0052]
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x19
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x5c
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    jmp near 0x46b7
    mov ax, word [bp + 0x8]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x39
    push ax
    mov al, byte [0x5986]
    sub ah, ah
    push ax
    call 0x4292
    add sp, byte 6
    jmp near 0x46b7
    mov ax, 0x12
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x38
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x27
    push ax
    mov ax, 0x593a
    push ax
    call 0x42e3
    add sp, byte 8
    jmp near 0x46b7
    mov ax, 0x12
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x44
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x27
    push ax
    mov ax, 0x594e
    push ax
    call 0x42e3
    add sp, byte 8
    jmp near 0x46b7
    lea ax, word [bp - 0x0052]
    push ax
    mov al, byte [0x5984]
    sub ah, ah
    add ax, 0x931
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0xe
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x56
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x3f
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call 0x42e3
    add sp, byte 8
    jmp near 0x46b7
    mov ax, word [bp + 0x8]
    add ax, strict word 0x74
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x77
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x62
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x69
    push ax
    call 0xbd98
    add sp, byte 8
    mov ax, 0xc3
    push ax
    mov ax, 0xb4
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 0x63
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x6b
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov al, byte [0x597c]
    sub ah, ah
    push ax
    call 0xb2e7
    add sp, byte 6
    mov ax, word [bp + 0x8]
    add ax, strict word 0x69
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x6b
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov al, byte [0x597d]
    sub ah, ah
    push ax
    call 0xb2e7
    add sp, byte 6
    mov ax, word [bp + 0x8]
    add ax, strict word 0x6f
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x6b
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov al, byte [0x597e]
    sub ah, ah
    push ax
    call 0xb2e7
    add sp, byte 6
    jmp near 0x46b7
    lea ax, word [bp - 0x0052]
    push ax
    mov al, byte [0x5985]
    sub ah, ah
    add ax, 0x946
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0xe
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x7a
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x3f
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call 0x42e3
    add sp, byte 8
    jmp near 0x46b7
    mov ax, word [bp + 0x8]
    add ax, 0x86
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x69
    push ax
    mov al, byte [0x597f]
    sub ah, ah
    push ax
    call 0x4292
    add sp, byte 6
    jmp near 0x46b7
    lea ax, word [bp - 0x0052]
    push ax
    mov al, byte [0x5988]
    sub ah, ah
    add ax, 0x938
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0052]
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 6
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x19
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xe6
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    jmp near 0x46b7
    lea ax, word [bp - 0x0052]
    push ax
    mov al, byte [0x598c]
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, 0x93b
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0052]
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 3
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x25
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xc2
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    jmp near 0x46b7
    mov ax, 1
    cmp byte [0x5962], 1
    je short 0x4584
    mov ax, 0
    cmp byte [0x5963], 1
    jne short 0x4584
    mov ax, 2
    mov word [bp - 0x0002], ax
    lea ax, word [bp - 0x0052]
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0x93d
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0xa
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x38
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xd5
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call 0x42e3
    add sp, byte 8
    jmp near 0x46b7
    mov ax, 0xa
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x44
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xd5
    push ax
    mov ax, 0x5964
    push ax
    call 0x42e3
    add sp, byte 8
    jmp near 0x46b7
    lea ax, word [bp - 0x0052]
    push ax
    mov al, byte [0x598a]
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, 0x93f
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0xa
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x56
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xd5
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call 0x42e3
    add sp, byte 8
    jmp near 0x46b7
    mov ax, word [bp + 0x8]
    add ax, strict word 0x6e
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xfb
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x62
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xe7
    push ax
    call 0xbd98
    add sp, byte 8
    mov ax, 0xc3
    push ax
    mov ax, 0xb4
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 0x63
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xe9
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov al, byte [0x5978]
    db 0x98 ; cwde 
    push ax
    call 0xb2e7
    add sp, byte 6
    mov ax, word [bp + 0x8]
    add ax, strict word 0x69
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xe9
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov al, byte [0x5979]
    db 0x98 ; cwde 
    push ax
    call 0xb2e7
    add sp, byte 6
    jmp short 0x46b7

    db 0x88, 0x93, 0xbf

loc_468b:
    xchg bx, ax
    db 0xdc, 0x93, 0xfb, 0x93 ; fcom qword ptr [bp + di - 0x6c05]
    sbb dl, byte [si - 0x6bb4]
    dec sp
    xchg sp, ax
    dec sp
    xchg sp, ax
    not word [si - 0x6ad7]
    inc si
    xchg bp, ax
    jge short 0x4635

    db 0xb4, 0x95, 0xfe, 0x95, 0x1d, 0x96, 0x4f, 0x96, 0x4f, 0x96

    cmp ax, strict word 0x11
    jae short 0x46b7
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6931]
    ret
    mov ax, 0
    call 0xf40b
    mov ax, 1
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0xe
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe901
    add sp, byte 0x0a
    mov ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    push word [bp + 0x4]
    call 0xb2e7
    add sp, byte 6
    mov ax, word [bp + 0x8]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0xe
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe8da
    add sp, byte 8
    ret
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x8]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xbd98
    add sp, byte 8
    mov ax, 1
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe901
    add sp, byte 0x0a
    mov ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0xe84e
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe8da
    add sp, byte 8
    ret
    mov ax, 0
    call 0xf40b
    mov ax, 0x16
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x1bf
    add sp, byte 0x0a
    mov ax, word [bp + 0x6]
    add ax, strict word 9
    push ax
    mov ax, 6
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    mov ax, word [bp + 0x4]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x1bf
    add sp, byte 0x0a
    ret
api_idx_0052_2:
    mov ax, 0xffae
    call 0xf40b
    mov ax, word [bp + 0x4]
    jmp near 0x4b1b
    mov ax, 8
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x19
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x5c
    push ax
    call 0x47bb
    add sp, byte 6
    jmp near 0x4b28
    mov ax, word [bp + 0x8]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x39
    push ax
    mov al, byte [0x5986]
    sub ah, ah
    push ax
    call 0x46b8
    add sp, byte 6
    jmp near 0x4b28
    mov ax, 0x12
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x38
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x27
    push ax
    mov ax, 0x593a
    push ax
    call 0x4727
    add sp, byte 8
    jmp near 0x4b28
    mov ax, 0x12
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x44
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x27
    push ax
    mov ax, 0x594e
    push ax
    call 0x4727
    add sp, byte 8
    jmp near 0x4b28
    mov ax, 7
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x55
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    call 0x47bb
    add sp, byte 6
    jmp near 0x4b28
    mov ax, word [bp + 0x8]
    add ax, strict word 0x62
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x69
    push ax
    mov al, byte [0x597c]
    sub ah, ah
    push ax
    call 0x46b8
    add sp, byte 6
    jmp near 0x4b28
    mov ax, word [bp + 0x8]
    add ax, strict word 0x68
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x69
    push ax
    mov al, byte [0x597d]
    sub ah, ah
    push ax
    call 0x46b8
    add sp, byte 6
    jmp near 0x4b28
    mov ax, word [bp + 0x8]
    add ax, strict word 0x6e
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x69
    push ax
    mov al, byte [0x597e]
    sub ah, ah
    push ax
    call 0x46b8
    add sp, byte 6
    jmp near 0x4b28
    mov ax, 7
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x79
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    call 0x47bb
    add sp, byte 6
    jmp near 0x4b28
    mov ax, word [bp + 0x8]
    add ax, 0x86
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x69
    push ax
    mov al, byte [0x597f]
    sub ah, ah
    push ax
    call 0x46b8
    add sp, byte 6
    jmp near 0x4b28
    mov ax, 6
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x19
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xe6
    push ax
    call 0x47bb
    add sp, byte 6
    jmp near 0x4b28
    mov ax, 3
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x25
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xc2
    push ax
    call 0x47bb
    add sp, byte 6
    jmp near 0x4b28
    mov ax, 6
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x37
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xa1
    push ax
    call 0x47bb
    add sp, byte 6
    jmp near 0x4b28
    mov ax, 0xa
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x44
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xd5
    push ax
    mov ax, 0x5964
    push ax
    call 0x4727
    add sp, byte 8
    jmp near 0x4b28
    mov ax, 1
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x68
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xfb
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x62
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xe7
    push ax
    call 0xe901
    add sp, byte 0x0a
    mov ax, word [bp + 0x8]
    add ax, strict word 0x63
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xe9
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov al, byte [0x5978]
    db 0x98 ; cwde 
    push ax
    call 0xb2e7
    add sp, byte 6
    mov ax, word [bp + 0x8]
    add ax, strict word 0x68
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xfb
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x62
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xe7
    push ax
    call 0xe8da
    add sp, byte 8
    jmp near 0x4b28
    mov ax, 1
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x6e
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xfb
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x68
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xe7
    push ax
    call 0xe901
    add sp, byte 0x0a
    mov ax, word [bp + 0x8]
    add ax, strict word 0x69
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xe9
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov al, byte [0x5979]
    db 0x98 ; cwde 
    push ax
    call 0xb2e7
    add sp, byte 6
    mov ax, word [bp + 0x8]
    add ax, strict word 0x6e
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xfb
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x68
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xe7
    push ax
    call 0xe8da
    add sp, byte 8
    jmp short 0x4b28
    mov ax, 6
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x7f
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xb2
    push ax
    call 0x47bb
    add sp, byte 6
    jmp short 0x4b28
    mov ax, 6
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0x7f
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0xe6
    push ax
    call 0x47bb
    add sp, byte 6
    jmp short 0x4b28
    jns short 0x4a8f
    xchg sp, ax
    db 0x98 ; cwde 
    mov cl, 0x98
    rcr byte [bx + si - 0x6711], 1
    or bl, byte [bx + di - 0x66d9]
    inc sp
    cwd
    popaw
    cwd
    jl short 0x4aa2
    cwd
    cwd
    mov ah, 0x99
    iret
    cwd
    jmp far 0x99b:0x6f99
    call far 0x9b08:0x9a89
    db 0x22, 0x9b
    cmp ax, strict word 0x13
    jae short 0x4b28
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x64c4]
    ret
    mov ax, 0
    call 0xf40b
    cmp word [bp + 0x6], byte 0
    jge short 0x4b45
    mov bx, word [bp + 0x4]
    cmp byte [bx + 0x597c], 0
    jbe short 0x4b43
    dec byte [bx + 0x597c]
    jmp short 0x4b5d
    cmp word [bp + 0x6], byte 0
    jle short 0x4b5d
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x597c]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp + 0x8]
    jge short 0x4b5d
    inc byte [bx + 0x597c]
    ret
    mov ax, 0
    call 0xf40b
    cmp word [bp + 0x6], byte 0
    jge short 0x4b7d
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x5978]
    db 0x98 ; cwde 
    cmp ax, word [bp + 0x8]
    jle short 0x4b7b
    dec byte [bx + 0x5978]
    jmp short 0x4b94
    cmp word [bp + 0x6], byte 0
    jle short 0x4b94
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x5978]
    db 0x98 ; cwde 
    cmp ax, word [bp + 0x8]
    jge short 0x4b94
    inc byte [bx + 0x5978]
    ret
    mov ax, 0xff9e
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0062], 0
    lea ax, word [bp - 0x005e]
    push ax
    mov ax, word [bp + 0x4]
    add ax, word [bp - 0x0002]
    push ax
    call 0xb53b
    add sp, byte 4
    cmp word [0x5216], byte 0
    jne short 0x4bda
    lea ax, word [bp - 0x005e]
    push ax
    call 0xfa90
    pop cx
    dec ax
    cmp ax, word [bp - 0x0062]
    jle short 0x4bd7
    lea ax, word [bp - 0x005e]
    push ax
    call 0xfa90
    pop cx
    dec ax
    mov word [bp - 0x0062], ax
    inc word [bp - 0x0002]
    cmp word [0x5216], byte 0
    je short 0x4ba5
    mov ax, 6
    imul word [bp - 0x0062]
    add ax, strict word 0xc
    mov word [bp - 0x0004], ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0xc
    mov word [bp - 0x0006], ax
    mov ax, word [bp - 0x0004]
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0xa0
    db 0x2b, 0xc1 ; sub ax, cx
    mov word [bp - 0x0008], ax
    mov ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0x64
    db 0x2b, 0xc1 ; sub ax, cx
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0008]
    add ax, word [bp - 0x0004]
    dec ax
    mov word [bp - 0x000c], ax
    mov ax, word [bp - 0x000a]
    add ax, word [bp - 0x0006]
    dec ax
    mov word [bp - 0x000e], ax
    mov ax, 0x90f5
    push ax
    mov ax, word [bp - 0x000e]
    inc ax
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    dec ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0060], ax
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    call 0xbc9a
    add sp, byte 8
    mov word [bp - 0x0002], 0
    lea ax, word [bp - 0x005e]
    push ax
    mov ax, word [bp + 0x4]
    add ax, word [bp - 0x0002]
    push ax
    call 0xb53b
    add sp, byte 4
    cmp word [0x5216], byte 0
    jne short 0x4cd5
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, word [bp - 0x000a]
    add ax, strict word 6
    push ax
    lea ax, word [bp - 0x005e]
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    add ax, strict word 0xfffa
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0xa0
    db 0x2b, 0xc1 ; sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov al, byte [bp - 0x005e]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x005d]
    push ax
    call 0xe84e
    add sp, byte 4
    inc word [bp - 0x0002]
    cmp word [0x5216], byte 0
    je short 0x4c6b
    mov ax, word [bp - 0x000e]
    inc ax
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    dec ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [0x905a]
    shl ax, 1
    push ax
    call 0xb75e
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0060]
    call 0xc459
    add sp, byte 4
    ret
    mov ax, 0xfc4a
    call 0xf40b
    mov si, 0x5642
    lea di, word [bp - 0x03b6]
    mov cx, ds
    mov es, cx
    mov cx, 0x1a6
    db 0xf3, 0xa5 ; rep movsw word ptr es:[di], word ptr [si]
    mov ax, 0
    push ax
    push ax
    mov ax, 0x90fb
    push ax
    call 0xd161
    add sp, byte 4
    push ax
    call 0xf909
    add sp, byte 4
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    jne short 0x4d4a
    mov ax, 0x1a
    push ax
    call 0xb171
    pop cx
    mov ax, 0x300
    push ax
    mov ax, 0x9c94
    push ax
    push word [bp - 0x0006]
    call 0xfd6f
    add sp, byte 6
    push word [bp - 0x0006]
    call 0xfda5
    pop cx
    mov word [bp - 0x0008], 0x12
    mov word [bp - 0x000a], 0x2b
    mov ax, word [bp - 0x0008]
    add ax, 0x11b
    mov word [bp - 0x000c], ax
    mov ax, word [bp - 0x000a]
    add ax, 0x93
    mov word [bp - 0x000e], ax
    mov word [0x9050], 0xffff
    mov ax, 0x9107
    push ax
    mov ax, word [bp - 0x000e]
    inc ax
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    dec ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x006a], ax
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    call 0xbc9a
    add sp, byte 8
    mov ax, 0x1c
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 5
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0x8fc
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xf5
    push ax
    mov ax, 0x8fd
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, word [0x597a]
    mov cx, 0x64
    cwd
    idiv cx
    push ax
    call 0xb2e7
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x2e
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, word [0x597a]
    mov cx, 0x64
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    cmp dx, byte 0x0a
    jge short 0x4e44
    mov ax, 0
    push ax
    mov ax, 0x30
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call 0xb2e7
    add sp, byte 6
    jmp short 0x4e55
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    push word [bp - 0x0002]
    call 0xb2e7
    add sp, byte 6
    mov ax, 0x5f
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0xe
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0x8fe
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x1b
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0xb
    push ax
    mov ax, 0x8ff
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0xb
    push ax
    mov ax, 0x900
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 0x1e
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2f
    push ax
    call 0x4245
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x39
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0xb
    push ax
    mov ax, 0x901
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x45
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0xb
    push ax
    mov ax, 0x902
    push ax
    call api_idx_0050
    add sp, byte 8
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 0x903
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 7
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x55
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 8
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x63
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x11
    push ax
    mov ax, 0x904
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 0x1e
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x63
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x5f
    push ax
    call 0x4245
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x69
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x11
    push ax
    mov ax, 0x905
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 0x1e
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x69
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x5f
    push ax
    call 0x4245
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x6f
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x11
    push ax
    mov ax, 0x906
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 0x1e
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x6f
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x5f
    push ax
    call 0x4245
    add sp, byte 6
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 0x907
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 7
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x79
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 8
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, 0x87
    push ax
    mov ax, word [bp - 0x0008]
    db 0x05, 0x1d
loc_5000:
    add byte [bx + si - 0x0048], dl
    or byte [bx + di], cl
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 0x1e
    push ax
    mov ax, word [bp - 0x000a]
    add ax, 0x87
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x5f
    push ax
    call 0x4245
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x1b
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xa1
    push ax
    mov ax, 0x909
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xa1
    push ax
    mov ax, 0x90a
    push ax
    call api_idx_0050
    add sp, byte 8
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 0x90b
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 6
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x37
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xa1
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x45
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xa1
    push ax
    mov ax, 0x90c
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x57
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xa1
    push ax
    mov ax, 0x90d
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x63
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xa1
    push ax
    mov ax, 0x90e
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 0x24
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x63
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xdd
    push ax
    call 0x4245
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x69
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xa1
    push ax
    mov ax, 0x90f
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 0x24
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x69
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xdd
    push ax
    call 0x4245
    add sp, byte 6
    mov ax, word [bp - 0x000a]
    add ax, 0x8c
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x113
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x7a
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xa9
    push ax
    call 0xbd98
    add sp, byte 8
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 0x910
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 6
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x7f
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xb2
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 0x911
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 6
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x7f
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xe6
    push ax
    call 0xc0c1
    add sp, byte 0x0c
    mov word [bp - 0x0002], 0
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0002]
    call api_idx_0052
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x11
    jl short 0x51b0
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x21
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x92
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x19
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x5c
    push ax
    mov ax, 0
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x2c
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x34
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2f
    push ax
    mov ax, 1
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x2c
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x52
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x4d
    push ax
    mov ax, 2
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x3e
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x95
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x38
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x27
    push ax
    mov ax, 3
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x4a
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x95
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x44
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x27
    push ax
    mov ax, 4
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x5d
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x38
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x55
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 8
    push ax
    mov ax, 5
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x68
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x64
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x63
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x5f
    push ax
    mov ax, 6
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x68
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x82
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x63
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x7d
    push ax
    mov ax, 7
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x6e
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x64
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x69
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x5f
    push ax
    mov ax, 8
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x6e
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x82
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x69
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x7d
    push ax
    mov ax, 9
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x74
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x64
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x6f
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x5f
    push ax
    mov ax, 0xa
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x74
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x82
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x6f
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x7d
    push ax
    mov ax, 0xb
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, 0x81
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x38
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x79
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 8
    push ax
    mov ax, 0xc
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, 0x8c
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x64
    push ax
    mov ax, word [bp - 0x000a]
    add ax, 0x87
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x5f
    push ax
    mov ax, 0xd
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, 0x8c
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x82
    push ax
    mov ax, word [bp - 0x000a]
    add ax, 0x87
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x7d
    push ax
    mov ax, 0xe
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x21
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x110
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x19
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xe6
    push ax
    mov ax, 0xf
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x2d
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xda
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x25
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xc2
    push ax
    mov ax, 0x10
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x3f
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xcb
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x37
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xa1
    push ax
    mov ax, 0x11
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x4a
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x113
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x44
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xd5
    push ax
    mov ax, 0x12
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x68
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xe2
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x63
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xdd
    push ax
    mov ax, 0x13
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x68
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x106
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x63
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x101
    push ax
    mov ax, 0x14
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x6e
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xe2
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x69
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xdd
    push ax
    mov ax, 0x15
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x6e
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x106
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x69
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x101
    push ax
    mov ax, 0x16
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000a]
    add ax, 0x87
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xdc
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x7f
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xb2
    push ax
    mov ax, 0x17
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    mov ax, word [bp - 0x000a]
    add ax, 0x87
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x110
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x7f
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0xe6
    push ax
    mov ax, 0x18
    push ax
    call 0xbaa6
    add sp, byte 0x0e
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
    mov ax, word [bp - 0x000e]
    inc ax
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    dec ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov word [bp - 0x0018], 1
    mov word [bp - 0x0016], 0
    cmp word [0x0e32], byte 0
    je short 0x5650
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x0014], ax
    jmp near 0x58d6
    mov word [0x5b3e], 0
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0016]
    call api_idx_0052_2
    add sp, byte 6
    mov ax, 1
    push ax
    call 0xeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x0004], ax
    jmp near 0x5891
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0016]
    call api_idx_0052
    add sp, byte 6
    mov ax, word [bp - 0x0016]
    add ax, strict word 0x12
    mov cx, 0x13
    cwd
    idiv cx
    mov word [bp - 0x0016], dx
    cmp dx, byte 0x0e
    jne short 0x569b
    dec word [bp - 0x0016]
    mov ax, word [bp - 0x000e]
    inc ax
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    dec ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    jmp near 0x58d6
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0016]
    call api_idx_0052
    add sp, byte 6
    mov ax, word [bp - 0x0016]
    inc ax
    mov cx, 0x13
    cwd
    idiv cx
    mov word [bp - 0x0016], dx
    cmp dx, byte 0x0e
    jne short 0x56dc
    inc word [bp - 0x0016]
    mov ax, word [bp - 0x000e]
    inc ax
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    dec ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    jmp near 0x58d6
    mov word [bp - 0x0014], 0xffff
    mov ax, word [bp - 0x0016]
    jmp short 0x5777
    mov word [bp - 0x0014], 0
    jmp near 0x5784
    mov word [bp - 0x0014], 3
    jmp short 0x5784
    mov word [bp - 0x0014], 4
    jmp short 0x5784
    mov word [bp - 0x0014], 5
    jmp short 0x5784
    mov word [bp - 0x0014], 0xc
    jmp short 0x5784
    mov word [bp - 0x0014], 0xf
    jmp short 0x5784
    mov word [bp - 0x0014], 0x10
    jmp short 0x5784
    mov word [bp - 0x0014], 0x11
    jmp short 0x5784
    mov word [bp - 0x0014], 0x12
    jmp short 0x5784
    mov word [bp - 0x0014], 0x17
    jmp short 0x5784
    mov word [bp - 0x0014], 0x18
    jmp short 0x5784
    dec dx
    cmpsw
    retf
    cmpsw
    push dx
    cmpsw
    pop cx
    cmpsw
    pushaw
    cmpsw
    retf
    cmpsw
    retf
    cmpsw
    retf
    cmpsw
    db 0x67, 0xa7 ; cmpsw word ptr [esi], word ptr es:[edi]
    retf
    cmpsw
    outsb
    cmpsw
    jne short 0x5710
    jl short 0x5712
    and word [bx - 0x5835], byte 0xcb
    cmpsw
    retf
    cmpsw
    mov ah, byte [bx - 0x586f]
    cmp ax, strict word 0x13
    jae short 0x5784
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x5868]
    cmp word [bp - 0x0014], byte 0xff
    je short 0x5790
    mov word [0x5b3e], 1
    jmp near 0x58d6
    mov word [bp - 0x0014], 0xffff
    mov ax, word [bp - 0x0016]
    jmp short 0x57f0
    mov word [bp - 0x0014], 2
    jmp short 0x57fd
    mov word [bp - 0x0014], 7
    jmp short 0x57fd
    mov word [bp - 0x0014], 9
    jmp short 0x57fd
    mov word [bp - 0x0014], 0xb
    jmp short 0x57fd
    mov word [bp - 0x0014], 0xe
    jmp short 0x57fd
    mov word [bp - 0x0014], 0x14
    jmp short 0x57fd
    mov word [bp - 0x0014], 0x16
    jmp short 0x57fd
    inc sp
    test al, 0xe4
    cmpsw
    inc sp
    test al, 0x44
    test al, 0x44
    test al, 0xeb
    cmpsw
    db 0xf2, 0xa7 ; repne cmpsw word ptr [si], word ptr es:[di]
    stc
    cmpsw
    inc sp
    test al, 0
    test al, 0x44
    test al, 0x44
    test al, 0x44
    test al, 0x44
    test al, 0x44
    test al, 7
    test al, 0xe
    db 0xa8
    cmp ax, strict word 0x11
    jae short 0x57fd
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x57eb]
    cmp word [bp - 0x0014], byte 0xff
    je short 0x5809
    mov word [0x5b3e], 1
    jmp near 0x58d6
    mov word [bp - 0x0014], 0xffff
    mov ax, word [bp - 0x0016]
    jmp short 0x5869
    mov word [bp - 0x0014], 1
    jmp short 0x5876
    mov word [bp - 0x0014], 6
    jmp short 0x5876
    mov word [bp - 0x0014], 8
    jmp short 0x5876
    mov word [bp - 0x0014], 0xa
    jmp short 0x5876
    mov word [bp - 0x0014], 0xd
    jmp short 0x5876
    mov word [bp - 0x0014], 0x13
    jmp short 0x5876
    mov word [bp - 0x0014], 0x15
    jmp short 0x5876
    mov bp, 0x5da8
    test al, 0xbd
    test al, 0xbd
    test al, 0xbd
    test al, 0x64
    test al, 0x6b
    test al, 0x72
    test al, 0xbd
    test al, 0x79
    test al, 0xbd
    test al, 0xbd
    test al, 0xbd
    test al, 0xbd
    test al, 0xbd
    test al, 0x80
    test al, 0x87
    db 0xa8
    cmp ax, strict word 0x11
    jae short 0x5876
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x5772]
    cmp word [bp - 0x0014], byte 0xff
    je short 0x5882
    mov word [0x5b3e], 1
    jmp short 0x58d6
    mov word [bp - 0x0014], 0x18
    mov word [0x5b3e], 1
    jmp short 0x58d6
    cmp ax, strict word 8
    jne short 0x5899
    jmp near 0x580c
    cmp ax, strict word 9
    jne short 0x58a1
    jmp near 0x5675
    cmp ax, strict word 0xa
    jne short 0x58a9
    jmp near 0x5793
    cmp ax, strict word 0xb
    jne short 0x58b1
    jmp near 0x56b8
    cmp ax, strict word 0xd
    jne short 0x58b9
    jmp near 0x56f9
    cmp ax, strict word 0x1b
    je short 0x5884
    cmp ax, strict word 0x2b
    jne short 0x58c6
    jmp near 0x5793
    cmp ax, strict word 0x2d
    jne short 0x58ce
    jmp near 0x580c
    cmp ax, strict word 0x3d
    jne short 0x58d6
    jmp near 0x5793
    cmp word [0x5b3e], byte 1
    je short 0x58e0
    jmp near 0x5ef4
    mov ax, word [bp - 0x0014]
    jmp near 0x5eb1
    mov al, byte [0x5989]
    db 0x2a, 0xe4 ; sub ah, ah
    inc ax
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    mov byte [0x5989], al
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    mov ax, 0
    push ax
    call api_idx_0052
    add sp, byte 6
    jmp near 0x5ebe
    cmp byte [0x5986], 0
    jbe short 0x5925
    dec byte [0x5986]
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    mov ax, 1
    push ax
    call api_idx_0052
    add sp, byte 6
    jmp near 0x5ebe
    cmp byte [0x5986], 0x63
    jae short 0x5943
    inc byte [0x5986]
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    mov ax, 1
    push ax
    call api_idx_0052
    add sp, byte 6
    jmp near 0x5ebe
    call 0xec17
    mov ax, 0x12
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x38
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x27
    push ax
    mov ax, 0x593a
    push ax
    call 0x4727
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 0x10
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x39
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x29
    push ax
    mov ax, 0x593a
    push ax
    call 0xd3f
    add sp, byte 0x0e
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    mov ax, 2
    push ax
    call api_idx_0052
    add sp, byte 6
    jmp near 0x5ebe
    call 0xec17
    mov ax, 0x12
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x44
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x27
    push ax
    mov ax, 0x594e
    push ax
    call 0x4727
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 0x10
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x45
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x29
    push ax
    mov ax, 0x594e
    push ax
    call 0xd3f
    add sp, byte 0x0e
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    mov ax, 3
    push ax
    call api_idx_0052
    add sp, byte 6
    jmp near 0x5ebe
    cmp word [bp + 0x4], byte 0
    jne short 0x5a28
    mov al, byte [0x5984]
    db 0x2a, 0xe4 ; sub ah, ah
    inc ax
    mov cx, 7
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    mov byte [0x5984], al
    cmp byte [0x5984], 5
    je short 0x5a00
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    mov ax, 4
    push ax
    call api_idx_0052
    add sp, byte 6
    cmp byte [0x5984], 0
    jbe short 0x5a37
    mov word [0x5980], 0x220
    jmp short 0x5a3d
    mov word [0x5980], 0
    jmp near 0x5ebe
    mov ax, 0xa
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0
    push ax
    call 0x4b29
    add sp, byte 6
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    mov ax, 5
    push ax
    call api_idx_0052
    add sp, byte 6
    jmp near 0x5ebe
    mov ax, 0xa
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    call 0x4b29
    add sp, byte 6
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    mov ax, 5
    push ax
    call api_idx_0052
    add sp, byte 6
    jmp near 0x5ebe
    mov ax, 0xa
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 1
    push ax
    call 0x4b29
    add sp, byte 6
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    mov ax, 6
    push ax
    call api_idx_0052
    add sp, byte 6
    jmp near 0x5ebe
    mov ax, 0xa
    push ax
    mov ax, 1
    push ax
    push ax
    call 0x4b29
    add sp, byte 6
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    mov ax, 6
    push ax
    call api_idx_0052
    add sp, byte 6
    jmp near 0x5ebe
    mov ax, 0xa
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 2
    push ax
    call 0x4b29
    add sp, byte 6
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    mov ax, 7
    push ax
    call api_idx_0052
    add sp, byte 6
    jmp near 0x5ebe
    mov ax, 0xa
    push ax
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    call 0x4b29
    add sp, byte 6
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    mov ax, 7
    push ax
    call api_idx_0052
    add sp, byte 6
    jmp near 0x5ebe
    cmp word [bp + 0x4], byte 0
    jne short 0x5b50
    mov al, byte [0x5985]
    db 0x2a, 0xe4 ; sub ah, ah
    inc ax
    mov cx, 7
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    mov byte [0x5985], al
    cmp byte [0x5985], 2
    je short 0x5b21
    cmp byte [0x5985], 3
    je short 0x5b21
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    mov ax, 8
    push ax
    call api_idx_0052
    add sp, byte 6
    cmp byte [0x5985], 0
    jbe short 0x5b5f
    mov word [0x5982], 0x220
    jmp short 0x5b65
    mov word [0x5982], 0
    jmp near 0x5ebe
    mov ax, 0xa
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 3
    push ax
    call 0x4b29
    add sp, byte 6
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    mov ax, 9
    push ax
    call api_idx_0052
    add sp, byte 6
    jmp near 0x5ebe
    mov ax, 0xa
    push ax
    mov ax, 1
    push ax
    mov ax, 3
    push ax
    call 0x4b29
    add sp, byte 6
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    mov ax, 9
    push ax
    call api_idx_0052
    add sp, byte 6
    jmp near 0x5ebe
    mov al, byte [0x5988]
    db 0x2a, 0xe4 ; sub ah, ah
    inc ax
    mov cx, 3
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    mov byte [0x5988], al
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    mov ax, 0xa
    push ax
    call api_idx_0052
    add sp, byte 6
    jmp near 0x5ebe
    mov al, byte [0x598c]
    db 0x2a, 0xe4 ; sub ah, ah
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    mov byte [0x598c], al
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    mov ax, 0xb
    push ax
    call api_idx_0052
    add sp, byte 6
    jmp near 0x5ebe

; ==========================================
; Jump table: 3 entries (offsets 0x5bfa - 0x5eb0)
; ==========================================
    db 0xb8, 0x01, 0x00, 0x80, 0x3e, 0x62, 0x59, 0x01, 0x74, 0x0d, 0xb8, 0x00, 0x00, 0x80, 0x3e, 0x63
    db 0x59, 0x01, 0x75, 0x03, 0xb8, 0x02, 0x00, 0x89, 0x46, 0xfc, 0x40, 0xb9, 0x03, 0x00, 0x99, 0xf7
    db 0xf9, 0x89, 0x56, 0xfc, 0xc6, 0x06, 0x62, 0x59, 0x00, 0xc6, 0x06, 0x63, 0x59, 0x00, 0x8b, 0xc2
    db 0xeb, 0x0e, 0xc6, 0x06, 0x62, 0x59, 0x01, 0xeb, 0x11, 0xc6, 0x06, 0x63, 0x59, 0x01, 0xeb, 0x0a
    db 0x3d, 0x01, 0x00, 0x74, 0xed, 0x3d, 0x02, 0x00, 0x74, 0xef, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8
    db 0xb8, 0x0c, 0x00, 0x50, 0xe8, 0xe4, 0xe6, 0x83, 0xc4, 0x06, 0x8b, 0x46, 0xf2, 0x40, 0x50, 0x8b
    db 0x46, 0xf4, 0x40, 0x50, 0x8b, 0x46, 0xf6, 0x48, 0x50, 0x8b, 0x46, 0xf8, 0x48, 0x50, 0xe8, 0x6f
    db 0x8c, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xec, 0x12, 0x74, 0x13, 0x80, 0x3e, 0x63, 0x59, 0x01, 0x75
    db 0x63, 0xb8, 0x64, 0x59, 0x50, 0xe8, 0x0e, 0x9e, 0x59, 0x85, 0xc0, 0x75, 0x57, 0xe8, 0x8d, 0x8f
    db 0xb8, 0x0a, 0x00, 0x50, 0x8b, 0x46, 0xf6, 0x05, 0x44, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0xd5
    db 0x00, 0x50, 0xb8, 0x64, 0x59, 0x50, 0xe8, 0x84, 0xea, 0x83, 0xc4, 0x08, 0xb8, 0x00, 0x00, 0x50
    db 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0x8b, 0x46, 0xf6, 0x05
    db 0x45, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0xd7, 0x00, 0x50, 0xb8, 0x64, 0x59, 0x50, 0xe8, 0x74
    db 0xb0, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x0d, 0x00, 0x50, 0xe8, 0x5a
    db 0xe6, 0x83, 0xc4, 0x06, 0xe9, 0xdd, 0x01, 0xb8, 0x9d, 0xff, 0x50, 0xb8, 0xff, 0xff, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0x6e, 0xee, 0x83, 0xc4, 0x06, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8
    db 0x0f, 0x00, 0x50, 0xe8, 0x35, 0xe6, 0x83, 0xc4, 0x06, 0xa0, 0x79, 0x59, 0x98, 0x50, 0xa0, 0x78
    db 0x59, 0x98, 0x50, 0xe8, 0x50, 0xe3, 0x83, 0xc4, 0x04, 0xe9, 0xa8, 0x01, 0xb8, 0x63, 0x00, 0x50
    db 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x39, 0xee, 0x83, 0xc4, 0x06, 0xff, 0x76
    db 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x00, 0xe6, 0x83, 0xc4, 0x06, 0xa0, 0x79
    db 0x59, 0x98, 0x50, 0xa0, 0x78, 0x59, 0x98, 0x50, 0xe8, 0x1b, 0xe3, 0x83, 0xc4, 0x04, 0xe9, 0x73
    db 0x01, 0xb8, 0x9d, 0xff, 0x50, 0xb8, 0xff, 0xff, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0x04, 0xee
    db 0x83, 0xc4, 0x06, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x10, 0x00, 0x50, 0xe8, 0xcb, 0xe5
    db 0x83, 0xc4, 0x06, 0xa0, 0x79, 0x59, 0x98, 0x50, 0xa0, 0x78, 0x59, 0x98, 0x50, 0xe8, 0xe6, 0xe2
    db 0x83, 0xc4, 0x04, 0xe9, 0x3e, 0x01, 0xb8, 0x63, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xe8
    db 0xd2, 0xed, 0x83, 0xc4, 0x06, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x10, 0x00, 0x50, 0xe8
    db 0x99, 0xe5, 0x83, 0xc4, 0x06, 0xa0, 0x79, 0x59, 0x98, 0x50, 0xa0, 0x78, 0x59, 0x98, 0x50, 0xe8
    db 0xb4, 0xe2, 0x83, 0xc4, 0x04, 0xe9, 0x0c, 0x01, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x06, 0x00
    db 0x50, 0x8b, 0x46, 0xf6, 0x05, 0x7f, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0xb2, 0x00, 0x50, 0xe8
    db 0x93, 0x60, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x06, 0x00
    db 0x50, 0x8b, 0x46, 0xf6, 0x05, 0x7f, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0xb2, 0x00, 0x50, 0xe8
    db 0x73, 0x60, 0x83, 0xc4, 0x0a, 0xa0, 0x84, 0x59, 0x3a, 0x46, 0x8c, 0x75, 0x08, 0xa0, 0x85, 0x59
    db 0x3a, 0x46, 0x8d, 0x74, 0x05, 0xb8, 0x01, 0x00, 0xeb, 0x03, 0xb8, 0x00, 0x00, 0xa3, 0x50, 0x90
    db 0xc7, 0x46, 0xe8, 0x00, 0x00, 0xe8, 0x9a, 0xe1, 0xe9, 0xa9, 0x00, 0xb8, 0x01, 0x00, 0x50, 0x50
    db 0xb8, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf6, 0x05, 0x7f, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0xe6
    db 0x00, 0x50, 0xe8, 0x30, 0x60, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf6, 0x05, 0x7f, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0xe6
    db 0x00, 0x50, 0xe8, 0x10, 0x60, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46
    db 0xe8, 0x00, 0x00, 0x8d, 0xb6, 0x4a, 0xfc, 0xbf, 0x42, 0x56, 0x8c, 0xd9, 0x8e, 0xc1, 0xb9, 0xa6
    db 0x01, 0xf3, 0xa5, 0xa0, 0x79, 0x59, 0x98, 0x50, 0xa0, 0x78, 0x59, 0x98, 0x50, 0xe8, 0xe6, 0xe1
    db 0x83, 0xc4, 0x04, 0xeb, 0x3f, 0x2d, 0xa9, 0x51, 0xa9, 0x6f, 0xa9, 0x8d, 0xa9, 0xe7, 0xa9, 0x41
    db 0xaa, 0x87, 0xaa, 0xac, 0xaa, 0xd1, 0xaa, 0xf6, 0xaa, 0x18, 0xab, 0x3d, 0xab, 0x62, 0xab, 0xaf
    db 0xab, 0xd4, 0xab, 0xf9, 0xab, 0x1d, 0xac, 0x41, 0xac, 0xb5, 0xac, 0x28, 0xad, 0x5d, 0xad, 0x92
    db 0xad, 0xc7, 0xad, 0xf9, 0xad, 0x5c, 0xae

    cmp ax, strict word 0x19
    jae short 0x5ebe
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x513a]
    cmp word [bp - 0x0018], byte 0
    je short 0x5eda
    cmp word [0x0e32], byte 0
    jne short 0x5eda
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0016]
    call api_idx_0052_2
    add sp, byte 6
    mov ax, word [bp - 0x000e]
    inc ax
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    dec ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    cmp word [bp - 0x0018], byte 0
    je short 0x5efd
    jmp near 0x563a
    mov ax, 1
    push ax
    push word [bp - 0x006a]
    call 0xc459
    add sp, byte 4
    mov ax, word [bp - 0x000e]
    inc ax
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    dec ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [0x9050]
    ret
    mov ax, 0xfd40
    call 0xf40b
    mov word [bp - 0x0008], 0
    mov word [bp - 0x0002], 0
    jmp near 0x6027
    mov bx, word [bp - 0x0002]
    cmp byte [bx - 0x6f8a], 1
    je short 0x5f48
    jmp near 0x6024
    mov ax, 0
    push ax
    push bx
    lea ax, word [bp - 0x0250]
    push ax
    call 0x36
    add sp, byte 6
    lea ax, word [bp - 0x0250]
    push ax
    mov ax, 0x14
    imul word [bp - 0x0008]
    add ax, 0xe38
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, 0x14
    imul word [bp - 0x0008]
    add ax, 0xe38
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x0004], ax
    cmp word [bp - 0x0004], byte 0x0a
    jge short 0x5f99
    mov ax, 0x14
    imul word [bp - 0x0008]
    add ax, word [bp - 0x0004]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0xe38], 0x20
    inc word [bp - 0x0004]
    jmp short 0x5f7e
    lea ax, word [bp - 0x02a0]
    push ax
    mov al, byte [bp - 0x0018]
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, 0x8c
    push ax
    call 0xb53b
    add sp, byte 4
    mov al, byte [bp - 0x02a0]
    push ax
    mov ax, 0x14
    imul word [bp - 0x0008]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx + 0xe42], al
    mov byte [bx + 0xe43], 0x2d
    lea ax, word [bp - 0x02a0]
    push ax
    mov al, byte [bp - 0x0017]
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, strict word 0x78
    push ax
    call 0xb53b
    add sp, byte 4
    mov word [bp - 0x0004], 0
    mov bx, word [bp - 0x0004]
    db 0x03, 0xdd ; add bx, bp
    mov al, byte [bx - 0x02a0]
    push ax
    mov ax, 0x14
    imul word [bp - 0x0008]
    db 0x8b, 0xc8 ; mov cx, ax
    add ax, word [bp - 0x0004]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx + 0xe44], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jl short 0x5fdd
    mov ax, 0x14
    imul word [bp - 0x0008]
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0xe47], 0
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0008]
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    db 0x03, 0xdd ; add bx, bp
    mov word [bx - 0x02c0], ax
    inc word [bp - 0x0008]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x9070]
    jge short 0x6033
    jmp near 0x5f3b
    cmp word [bp - 0x0008], byte 0
    jle short 0x6069
    push word [bp - 0x0008]
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0x606
    add sp, byte 0x0a
    cmp ax, strict word 1
    jne short 0x6069
    mov ax, word [0x904e]
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    je short 0x6069
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    db 0x03, 0xdd ; add bx, bp
    mov ax, word [bx - 0x02c0]
    ret
    mov ax, 0xffff
    ret
    mov ax, 0xfdb2
    call 0xf40b
    cmp word [0x69c8], byte 6
    jl short 0x607d
    jmp near 0x61c4
    mov ax, 0x4b0
    push ax
    call 0x5f28
    pop cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x6090
    jmp near 0x61c4
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    lea ax, word [bp - 0x024e]
    push ax
    call 0x36
    add sp, byte 6
    mov bx, word [bp - 0x0002]
    mov byte [bx - 0x6f8a], 2
    mov si, word [0x69c8]
    shl si, 1
    mov word [si - 0x750e], bx
    push word [0x69c8]
    call 0x5b6
    pop cx
    mov cx, word [0x69c8]
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    mov word [bx + 0x69bc], ax
    push ax
    mov al, byte [bp - 0x0018]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    call 0x559
    add sp, byte 4
    lea si, word [bp - 0x024e]
    mov ax, 0x248
    imul word [0x69c8]
    db 0x8b, 0xf8 ; mov di, ax
    add ax, 0x5bf4
    db 0x8b, 0xf8 ; mov di, ax
    mov cx, ds
    mov es, cx
    mov cx, 0x124
    db 0xf3, 0xa5 ; rep movsw word ptr es:[di], word ptr [si]
    mov ax, 0
    push ax
    push word [0x69c8]
    call 0xcb3a
    add sp, byte 4
    mov ax, word [0x69c8]
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    mov cx, 0xfc
    imul cx
    add ax, strict word 5
    mov word [bp - 0x0004], ax
    mov ax, word [0x69c8]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 0x2d
    imul cx
    add ax, strict word 0x12
    mov word [bp - 0x0006], ax
    mov ax, word [0x69c8]
    jmp near 0x61ae
    mov ax, 0x8d
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2b
    push ax
    mov ax, 0x35
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    call 0xe8da
    add sp, byte 8
    jmp short 0x61bd
    mov ax, 0x8d
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2b
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0006]
    mov ax, 0x10a
    push ax
    call 0xe8da
    add sp, byte 8
    jmp short 0x61bd
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2b
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    call 0xe8da
    add sp, byte 8
    jmp short 0x61bd
    cmp ax, strict word 4
    jne short 0x61b6
    jmp near 0x612e
    cmp ax, strict word 5
    je short 0x615e
    jmp short 0x6192
    inc word [0x69c8]
    jmp near 0x6073
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
    ret
    mov ax, 0xfffa
    call 0xf40b
    mov ax, word [bp + 0x4]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov bx, word [bx - 0x750e]
    mov byte [bx - 0x6f8a], 1
    dec word [0x69c8]
    mov ax, word [bp + 0x4]
    mov word [bp - 0x0002], ax
    jmp short 0x623a
    mov ax, 0x248
    imul word [bp - 0x0002]
    db 0x8b, 0xf0 ; mov si, ax
    add ax, 0x5e3c
    db 0x8b, 0xf0 ; mov si, ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    db 0x8b, 0xf8 ; mov di, ax
    add ax, 0x5bf4
    db 0x8b, 0xf8 ; mov di, ax
    mov cx, ds
    mov es, cx
    mov cx, 0x124
    db 0xf3, 0xa5 ; rep movsw word ptr es:[di], word ptr [si]
    mov ax, word [bp - 0x0002]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx - 0x750c]
    mov word [bx - 0x750e], ax
    mov ax, word [bx + 0x69be]
    mov word [bx + 0x69bc], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x61fd
    mov word [bp - 0x0002], 0
    jmp short 0x625a
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call 0xcb3a
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x624a
    mov ax, 0
    push ax
    mov ax, word [0x69c8]
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x69a6]
    push word [bx + 0x69a4]
    call 0xe94f
    add sp, byte 6
    cmp word [bp + 0x6], byte 0
    je short 0x62c5
    mov ax, word [0x69c8]
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    mov cx, 0xfc
    imul cx
    add ax, strict word 5
    mov word [bp - 0x0004], ax
    mov ax, word [0x69c8]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 0x2d
    imul cx
    add ax, strict word 0x12
    mov word [bp - 0x0006], ax
    add ax, strict word 0x2b
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    call 0xe8da
    add sp, byte 8
    ret
    mov ax, 0
    call 0xf40b
    cmp word [0x69c8], byte 0
    jle short 0x62e4
    mov ax, 0
    push ax
    mov ax, word [0x69c8]
    dec ax
    push ax
    call 0x61db
    add sp, byte 4
    jmp short 0x62cc
    ret
    mov ax, 0xff56
    call 0xf40b
    mov word [bp - 0x0002], 0x37
    mov word [bp - 0x0004], 0x8f
    mov word [bp - 0x0006], 0x108
    mov word [bp - 0x0008], 0xc5
    mov ax, 0x910d
    push ax
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    mov ax, word [bp - 0x0002]
    dec ax
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x00aa], ax
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    call 0xbc9a
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x1c
    push ax
    call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x41a
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    add ax, strict word 5
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xfa90
    pop cx
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0x15
    db 0x2b, 0xc1 ; sub ax, cx
    mov cx, 6
    imul cx
    inc ax
    inc ax
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x0002]
    add ax, strict word 0x29
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x41b
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x00a8]
    push ax
    mov bx, word [0x5b40]
    mov al, byte [bx + 0x5990]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    call 0xb27d
    add sp, byte 4
    mov ax, 0x24
    push ax
    lea ax, word [bp - 0x00a8]
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xb300
    add sp, byte 6
    mov ax, word [bp - 0x0004]
    add ax, strict word 0xf
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xfa90
    pop cx
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0x15
    db 0x2b, 0xc1 ; sub ax, cx
    mov cx, 6
    imul cx
    inc ax
    inc ax
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x0002]
    add ax, strict word 0x29
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x41c
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x00a8]
    push ax
    mov bx, word [0x5b46]
    mov al, byte [bx + 0x5990]
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, 0x423
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x24
    push ax
    lea ax, word [bp - 0x00a8]
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xb300
    add sp, byte 6
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x15
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xfa90
    pop cx
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0x15
    db 0x2b, 0xc1 ; sub ax, cx
    mov cx, 6
    imul cx
    inc ax
    inc ax
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x0002]
    add ax, strict word 0x29
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x41d
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x00a8]
    push ax
    mov bx, word [0x5b42]
    mov al, byte [bx + 0x5990]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    call 0xb27d
    add sp, byte 4
    mov ax, 0x5e
    push ax
    lea ax, word [bp - 0x00a8]
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xb300
    add sp, byte 6
    lea ax, word [bp - 0x00a8]
    push ax
    mov bx, word [0x5b44]
    mov al, byte [bx + 0x5990]
    db 0x2a, 0xe4 ; sub ah, ah
    push ax
    call 0xb27d
    add sp, byte 4
    mov ax, 0x25
    push ax
    lea ax, word [bp - 0x00a8]
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xb300
    add sp, byte 6
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x1b
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xfa90
    pop cx
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0x15
    db 0x2b, 0xc1 ; sub ax, cx
    mov cx, 6
    imul cx
    inc ax
    inc ax
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x0002]
    add ax, strict word 0x29
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov byte [0x0e38], 0
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 1
    push ax
    mov ax, 0x15
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x29
    push ax
    call 0xbf97
    add sp, byte 0x0e
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    mov ax, word [bp - 0x0002]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    call 0xec17
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 1
    push ax
    mov ax, 0x15
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x29
    push ax
    call 0xbf97
    add sp, byte 0x0e
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x2f
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xa9
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x29
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 0x14
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x29
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x2b
    push ax
    mov ax, 0xe38
    push ax
    call 0xd3f
    add sp, byte 0x0e
    mov ax, 1
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x15
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x29
    push ax
    call 0xbf97
    add sp, byte 0x0e
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x2f
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xa9
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x29
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 0x00aa]
    call 0xc459
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    mov ax, word [bp - 0x0002]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0xe38
    push ax
    mov ax, 0x82b8
    push ax
    call 0xf364
    add sp, byte 4
    ret
    mov ax, 0xfffc
    call 0xf40b
    mov word [0x95b2], 0
    cmp word [0x904c], byte 0
    jne short 0x66a6
    call 0x62e5
    call 0xd9ca
    mov word [0xa494], ax
    test ax, ax
    jne short 0x668c
    mov word [bp - 0x0002], 0xffff
    jmp short 0x669e
    mov ax, 0xc
    push ax
    call 0xb75e
    pop cx
    push word [bp + 0x4]
    call 0x2fef
    pop cx
    mov word [bp - 0x0002], ax
    mov word [0x904c], 1
    jmp short 0x66b0
    push word [bp + 0x4]
    call 0x2fef
    pop cx
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x0002], byte 0xff
    jne short 0x66cd
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
    ret
    push word [0x830c]
    mov ax, 0
    push ax
    call 0xd5a2
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 8
    push ax
    mov ax, 0x8cfe
    push ax
    call 0xf306
    add sp, byte 6
    mov word [0x82ea], 0
    mov ax, word [0x82ee]
    shl ax, 1
    mov word [0x82f0], ax
    mov word [0x82ec], 0
    mov word [bp - 0x0004], 0xf
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x5b48], 0xff
    mov byte [bx + 0x5b5a], 0
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x12
    jl short 0x6706
    mov word [0x5b70], 0
    mov word [0x5b6e], 0
    mov word [0x5b6c], 0xffff
    cmp word [0x904c], byte 2
    je short 0x6740
    call 0xb389
    mov word [0x904c], 2
    cmp word [0x95b2], byte 0
    jle short 0x674f
    push word [0x95b2]
    call 0x8f74
    pop cx
    mov word [0x830a], 6
    ret
api_idx_0002:
    mov ax, 0xfffe
    call 0xf40b
    cmp word [0x906a], byte 0
    je short 0x6777
    mov ax, 1
    push ax
    push word [0x9068]
    call 0xc459
    add sp, byte 4
    mov word [0x906a], 0
    call 0xc145
    mov ax, 0
    push ax
    mov ax, 0x8f
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0x48
    push ax
    call 0xe901
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push word [0x8d08]
    push word [0x8d06]
    call 0xe94f
    add sp, byte 6
    mov word [bp - 0x0002], 0
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx + 0x69a6]
    push word [bx + 0x69a4]
    call 0xe94f
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x67ab
    cmp word [0x8460], byte 0
    jle short 0x67e0
    push word [0x8460]
    call api_idx_0002_3
    pop cx
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov word [0x69c8], 0
    mov word [0x830a], 4
    ret
    mov ax, 0xfffe
    call 0xf40b
    cmp word [0x906a], byte 0
    je short 0x6821
    mov ax, 1
    push ax
    push word [0x9068]
    call 0xc459
    add sp, byte 4
    mov word [0x906a], 0
    mov ax, 1
    push ax
    push word [0x8d08]
    push word [0x8d06]
    call 0xe94f
    add sp, byte 6
    mov word [bp - 0x0002], 0
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x69a6]
    push word [bx + 0x69a4]
    call 0xe94f
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x6838
    mov word [bp - 0x0002], 0
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx - 0x7d2e]
    push word [bx - 0x7d30]
    call 0xe94f
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x6863
    call 0xc145
    mov ax, 0
    push ax
    call 0xc12a
    pop cx
    mov ax, 3
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
    mov ax, 8
    push ax
    call 0xc12a
    pop cx
    mov ax, 0xe
    push ax
    call 0xc12a
    pop cx
    ret
api_idx_004a:
    mov ax, 0xffb6
    call 0xf40b
    mov word [0x830a], 0x19
    mov ax, 0
    push ax
    mov ax, 0x8f
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0x48
    push ax
    call 0xe901
    add sp, byte 0x0a
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
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0022], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 5
    jle short 0x68fe
    mov word [bp - 0x001e], 0
    mov word [bp - 0x0016], 0xffff
    mov word [bp - 0x0004], 1
    lea ax, word [bp - 0x0022]
    push ax
    mov ax, 1
    push ax
    mov ax, 6
    push ax
    mov ax, 0xd
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0x61
    push ax
    mov ax, 0x898
    push ax
    call 0x23a
    add sp, byte 0x10
    mov word [bp - 0x0002], ax
    lea ax, word [bp - 0x004a]
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0x898
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x1a
    push ax
    mov ax, 0xd
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0x61
    push ax
    push word [0x9052]
    lea ax, word [bp - 0x004a]
    push ax
    call api_idx_0004
    add sp, byte 0x0e
    mov ax, word [bp - 0x0002]
    jmp short 0x69f8
    mov word [bp - 0x0004], 0
    jmp near 0x6a05
    mov ax, 1
    push ax
    call 0x4d0e
    pop cx
    jmp short 0x6a05
    jmp short 0x6a05
    mov ax, 0
    push ax
    call 0x388c
    pop cx
    cmp ax, strict word 0xffff
    jne short 0x69c0
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
    jmp short 0x69d7
    cmp word [bp - 0x0002], byte 4
    jne short 0x69d2
    mov word [0x8460], 0
    mov word [0x830a], 7
    mov word [bp - 0x0004], 0
    jmp short 0x6a05
    mov word [0x8460], 0
    mov word [0x830a], 7
    mov word [bp - 0x0004], 0
    jmp short 0x6a05
    into
    mov cx, 0xb9d6
    loopne 0x69ab
    loop 0x69ad
    loop 0x69af
    and byte [bp + si + 0x63d], bh
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x45cd]
    cmp word [bp - 0x0004], byte 0
    je short 0x6a0e
    jmp near 0x6926
    ret
api_idx_004a_2:
    mov ax, 0xffb6
    call 0xf40b
    mov word [0x82e8], 0
    mov word [0x8af0], 0
    jmp short 0x6a35
    mov ax, 1
    push ax
    push word [0x8af0]
    call 0xcb3a
    add sp, byte 4
    inc word [0x8af0]
    mov ax, word [0x8af0]
    cmp ax, word [0x69c8]
    jl short 0x6a23
    mov word [0xa494], 0xffff
    mov word [0x830a], 0xffff
    cmp word [0x830a], byte 0
    jl short 0x6a54
    jmp near 0x6c1d
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0022], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 9
    jl short 0x6a59
    mov word [bp - 0x0010], 0xffff
    cmp word [0x69c8], byte 1
    jge short 0x6a8d
    mov word [bp - 0x001e], 0
    mov word [bp - 0x001c], 0
    mov word [bp - 0x001a], 0
    mov word [bp - 0x0020], 0
    mov word [bp - 0x0002], 0
    jmp short 0x6aab
    mov bx, word [bp - 0x0002]
    cmp byte [bx - 0x6f8a], 1
    jne short 0x6aa8
    mov word [bp - 0x0020], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x9070]
    jl short 0x6a99
    cmp word [0x69c8], byte 5
    jle short 0x6ac0
    mov word [bp - 0x0020], 0
    cmp word [0x69c8], byte 0
    jle short 0x6ad1
    mov word [bp - 0x0018], 0
    mov word [bp - 0x0014], 0
    cmp word [0xa494], byte 0
    jne short 0x6ae0
    mov ax, 0x15
    push ax
    call 0xb171
    pop cx
    lea ax, word [bp - 0x0022]
    push ax
    mov ax, 1
    push ax
    mov ax, 9
    push ax
    mov ax, 0xd
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0x61
    push ax
    mov ax, 0x3e8
    push ax
    call 0x23a
    add sp, byte 0x10
    mov word [bp - 0x0004], ax
    lea ax, word [bp - 0x004a]
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0x3e8
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x1a
    push ax
    mov ax, 0xd
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0x61
    push ax
    push word [0x9052]
    lea ax, word [bp - 0x004a]
    push ax
    call api_idx_0004
    add sp, byte 0x0e
    mov ax, word [bp - 0x0004]
    jmp near 0x6c0d
    call 0x606d
    jmp near 0x6c1a
    call 0xceb1
    mov word [0x8af0], ax
    cmp ax, strict word 0xffff
    je short 0x6b5f
    mov word [0x830a], 0x11
    mov word [0x905e], 4
    jmp near 0x6c1a
    call 0xceb1
    mov word [0x8af0], ax
    cmp ax, strict word 0xffff
    je short 0x6b7b
    mov ax, 1
    push ax
    push word [0x8af0]
    call 0x61db
    add sp, byte 4
    jmp near 0x6c1a
    call 0x62c6
    mov word [0x830a], 0x10
    jmp near 0x6c1a
    mov word [bp - 0x0002], 0
    jmp short 0x6ba4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x750e]
    mov byte [bx - 0x6f8a], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x6b91
    mov ax, 0
    push ax
    call 0x6665
    pop cx
    jmp short 0x6c1a
    mov ax, 1
    push ax
    call 0x6665
    pop cx
    jmp short 0x6c1a
    mov ax, 0
    push ax
    call 0x4d0e
    pop cx
    test ax, ax
    je short 0x6be1
    mov ax, 0x912
    push ax
    call 0x4b95
    pop cx
    call 0x62c6
    call 0x6800
    mov word [0x830a], 3
    jmp short 0x6c1a
    mov ax, 2
    push ax
    call 0x6665
    pop cx
    jmp short 0x6c1a
    call 0x62c6
    call 0x6800
    mov word [0x830a], 3
    jmp short 0x6c1a
    lds di, word [bp + di - 0x4477]

    db 0x8f, 0xbb, 0xa9, 0xbb, 0xd1, 0xbb, 0xfe, 0xbb, 0x08, 0xbc, 0x2a, 0xbc, 0x34, 0xbc

    cmp ax, strict word 9
    jae short 0x6c1a
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x43be]
    jmp near 0x6a4a
    ret
loc_6c1e:
    mov ax, 0
    call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0xc6
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    call 0xe901
    add sp, byte 0x0a
    ret
loc_6c3f:
    mov ax, 0
    call 0xf40b
    mov ax, 0xc6
    push ax
    mov ax, 0x13e
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0xc
    push ax
    call 0xbb33
    add sp, byte 8
    ret
loc_6c5c:
    mov ax, 0
    call 0xf40b
    cmp word [0xa4a4], byte 0
    jle short 0x6c86
    call 0x73bc
    test ax, ax
    je short 0x6c86
    call api_idx_000a_3
    mov ax, 0x91
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    ret
    mov ax, 0xfffc
    call 0xf40b
    call 0xec17
    mov ax, word [bp + 0x4]
    cwd
    les bx, word [0x0002]
    mov cx, word [es:bx]
    mov bx, word [es:bx + 0x2]
    db 0x03, 0xc1 ; add ax, cx
    db 0x13, 0xd3 ; adc dx, bx
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    cmp dx, word [bp - 0x0002]
    jg short 0x6cc0
    jne short 0x6cc2
    cmp ax, word [bp - 0x0004]
    jb short 0x6cc2
    jmp short 0x6ccf
    call 0xbaef
    test ax, ax
    je short 0x6cca
    ret
    call 0x6c5c
    jmp short 0x6ca9
    ret
api_idx_0004_2:
    mov ax, 0xfffc
    call 0xf40b
    call 0x6c3f
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    add ax, 0x10e
    adc dx, byte 0
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
    call 0xbaef
    test ax, ax
    jne short 0x6d15
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    cmp dx, word [bp - 0x0002]
    jg short 0x6d0e
    jne short 0x6d10
    cmp ax, word [bp - 0x0004]
    jb short 0x6d10
    jmp short 0x6d15
    call 0x6c5c
    jmp short 0x6cf0
    call 0x6c1e
    mov word [0xa4a6], 0
    ret
api_idx_0004_3:
    mov ax, 0xfffc
    call 0xf40b
    cmp word [0xa4a6], byte 3
    jle short 0x6d2f
    call api_idx_0004_2
    mov bx, word [bp + 0x4]
    cmp byte [bx], 0
    jne short 0x6d3c
    inc word [0xa4a6]
    ret
    mov ax, 2
    push ax
    push bx
    call 0xe883
    add sp, byte 4
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call 0xfa90
    pop cx
    dec ax
    mov word [bp - 0x0004], ax
    mov bx, word [bp + 0x4]
    mov si, ax
    mov al, byte [bx + si]
    sub ah, ah
    jmp short 0x6d8f
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], 0
    mov word [bp - 0x0002], 0xc
    jmp short 0x6d99
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], 0
    mov ax, word [0xa4a8]
    mov word [bp - 0x0002], ax
    jmp short 0x6d99
    cmp ax, strict word 0x24
    je short 0x6d6e
    cmp ax, strict word 0x5e
    je short 0x6d7e
    mov ax, 0xc
    imul word [0xa4a6]
    add ax, 0x92
    push ax
    push word [bp - 0x0002]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 2
    push ax
    push word [bp + 0x4]
    call 0xe84e
    add sp, byte 4
    mov bx, word [bp + 0x4]
    mov byte [bx], 0
    mov ax, word [bp - 0x0002]
    mov word [0xa4a8], ax
    inc word [0xa4a6]
    ret
loc_6dd9:
    mov ax, 0xfefa
    call 0xf40b
    mov bx, word [bp + 0x4]
    mov al, byte [bx]
    sub ah, ah
    push ax
    mov ax, 0x9114
    push ax
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0
    jge short 0x6dfc
    jmp near 0x6e95
    jmp near 0x6e85
    inc word [bp + 0x4]
    mov ax, 0xa4aa
    push ax
    call api_idx_0004_3
    pop cx
    jmp near 0x6e92
    inc word [bp + 0x4]
    mov bx, word [bp + 0x4]
    mov al, byte [bx]
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [bp - 0x0006], ax
    mov cx, 0x12
    imul cx
    push ax
    call 0x6c87
    pop cx
    inc word [bp + 0x4]
    jmp short 0x6e92
    inc word [bp + 0x4]
    mov ax, 0xa4aa
    push ax
    call api_idx_0004_3
    pop cx
    call 0x6c3f
    jmp short 0x6e92
    inc word [bp + 0x4]
    call 0x6c1e
    mov word [0xa4a6], 0
    jmp short 0x6e92
    inc word [bp + 0x4]
    mov ax, 0xa4aa
    push ax
    call api_idx_0004_3
    pop cx
    call api_idx_0004_2
    jmp short 0x6e92
    inc word [bp + 0x4]
    inc word [0xa5aa]
    jmp short 0x6e92
    inc word [bp + 0x4]
    mov word [0xa5ac], 1
    cmp word [0xa5ac], byte 0
    je short 0x6e75
    call 0x6c5c
    jmp short 0x6e69
    jmp short 0x6e92
    inc si
    mov si, 0xbe54
    jo short 0x6e3b
    cmp byte [bp - 0x4172], 0x9e
    mov si, 0xbea7
    cmp ax, strict word 7
    jae short 0x6e92
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x4142]
    jmp near 0x6ddf
    cmp byte [0xa4aa], 0
    je short 0x6eca
    mov ax, 0xa4aa
    push ax
    lea ax, word [bp - 0x0105]
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, 0x911c
    push ax
    lea ax, word [bp - 0x0105]
    push ax
    call 0xf32d
    add sp, byte 4
    push word [bp + 0x4]
    lea ax, word [bp - 0x0105]
    push ax
    call 0xf32d
    add sp, byte 4
    jmp short 0x6ed8
    push word [bp + 0x4]
    lea ax, word [bp - 0x0105]
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, 2
    push ax
    lea ax, word [bp - 0x0105]
    push ax
    call 0xe883
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, 0x127
    jle short 0x6f06
    mov ax, 0xa4aa
    push ax
    call api_idx_0004_3
    pop cx
    push word [bp + 0x4]
    mov ax, 0xa4aa
    push ax
    call 0xf364
    add sp, byte 4
    jmp short 0x6f15
    lea ax, word [bp - 0x0105]
    push ax
    mov ax, 0xa4aa
    push ax
    call 0xf364
    add sp, byte 4
    ret
api_idx_0004_4:
    mov ax, 0xfffc
    call 0xf40b
    mov ax, 0x20
    push ax
    push word [bp + 0x4]
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short 0x6f6b
    mov bx, word [bp + 0x4]
    mov si, ax
    mov byte [bx + si], 0
    mov ax, 0x5f
    push ax
    push word [bp + 0x4]
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    je short 0x6f58
    mov bx, word [bp + 0x4]
    mov si, ax
    mov byte [bx + si], 0x20
    jmp short 0x6f39
    push word [bp + 0x4]
    call 0x6dd9
    pop cx
    mov ax, word [bp - 0x0002]
    add word [bp + 0x4], ax
    add word [bp + 0x4], byte 1
    jmp short 0x6f1c
    mov bx, word [bp + 0x4]
    cmp byte [bx], 0
    je short 0x6f78
    push bx
    call 0x6dd9
    pop cx
    ret
loc_6f79:
    mov ax, 0xfefa
    call 0xf40b
    call 0x6c1e
    mov word [0xa5ac], 0
    mov word [0xa4a8], 0xc
    mov word [0xa4a6], 0
    mov byte [0xa4aa], 0
    lea ax, word [bp - 0x0105]
    push ax
    push word [bp + 0x4]
    call 0xb53b
    add sp, byte 4
    cmp word [0x5216], byte 0
    jne short 0x6fba
    lea ax, word [bp - 0x0105]
    push ax
    call api_idx_0004_4
    pop cx
    inc word [bp + 0x4]
    cmp word [0x5216], byte 0
    je short 0x6f99
    cmp byte [0xa4aa], 0
    je short 0x6fd0
    mov ax, 0xa4aa
    push ax
    call api_idx_0004_3
    pop cx
    cmp word [bp + 0x6], byte 0
    je short 0x6fd9
    call api_idx_0004_2
    ret
api_idx_0002_2:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0
    push ax
    call 0xef14
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call 0xd161
    add sp, byte 4
    push ax
    call 0xf909
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x7010
    mov ax, 0xe
    push ax
    call 0xb171
    pop cx
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call 0xefde
    add sp, byte 4
    push word [bp - 0x0002]
    call 0xfda5
    pop cx
    cmp word [bp + 0x6], byte 1
    jne short 0x703f
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    jmp short 0x706c
    cmp word [bp + 0x6], byte 2
    jne short 0x706c
    mov ax, 0
    push ax
    push ax
    push ax
    call 0xf0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    call 0xf0bd
    pop cx
    ret
api_idx_0002_3:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    call 0xf0ca
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe901
    add sp, byte 0x0a
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    cmp word [0x0e32], byte 1
    jne short 0x70b4
    call 0xf039
    mov word [0x0e32], 0
    call 0xd9a6
    mov word [0x8450], ax
    test ax, ax
    je short 0x70ed
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    call 0xd7e7
    add sp, byte 4
    mov ax, word [0x0114]
    mov word [0x844e], ax
    mov ax, 1
    push ax
    push word [0x844e]
    mov ax, 0
    push ax
    call 0xd964
    add sp, byte 6
    mov word [0x844c], ax
    cmp word [bp + 0x4], byte 4
    je short 0x7103
    mov ax, 2
    push ax
    mov ax, 0x911e
    push ax
    call api_idx_0002_2
    add sp, byte 4
    jmp short 0x712a
    mov ax, 0
    push ax
    push ax
    push ax
    call 0xf0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    call 0xf0bd
    pop cx
    mov word [0xa4a4], 0
    mov ax, word [bp + 0x4]
    jmp short 0x7191
    mov ax, 1
    push ax
    mov ax, 0x6e96
    push ax
    call 0x6f79
    add sp, byte 4
    jmp short 0x719e
    mov ax, 1
    push ax
    mov ax, 0x6fc2
    push ax
    call 0x6f79
    add sp, byte 4
    jmp short 0x719e
    mov ax, 1
    push ax
    mov ax, 0x6ffe
    push ax
    call 0x6f79
    add sp, byte 4
    jmp short 0x719e
    mov ax, 1
    push ax
    mov ax, 0x6e46
    push ax
    call 0x6f79
    add sp, byte 4
    jmp short 0x719e
    mov ax, 1
    push ax
    mov ax, 0x6f54
    push ax
    call 0x6f79
    add sp, byte 4
    jmp short 0x719e
    in ax, 0xc1
    jl short 0x714a
    mov cx, es
    pushf
    shr word [si - 0x433f], 0xc1
    cmp ax, strict word 6
    jae short 0x719e
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x3e34]
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    call 0xf0ca
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe901
    add sp, byte 0x0a
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    cmp word [0x8450], byte 0
    je short 0x71f2
    push word [0x844c]
    push word [0x844e]
    call 0xd91b
    add sp, byte 4
    mov ax, 0
    push ax
    call 0xd907
    pop cx
    test word [0x9056], 0x1000
    je short 0x7211
    cmp byte [0x5989], 1
    jne short 0x7211
    cmp word [0x0e32], byte 0
    jne short 0x720b
    call 0xf02c
    mov word [0x0e32], 1
    mov ax, 0
    push ax
    push ax
    push ax
    call 0xf0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    call 0xf0bd
    pop cx
    mov word [bp - 0x0002], 0
    jmp short 0x725d
    mov ax, 1
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    add ax, 0x5e26
    push ax
    call 0xec41
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x723f
    mov ax, 1
    push ax
    call 0x388c
    pop cx
    cmp ax, strict word 0xffff
    jne short 0x7289
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
    mov ax, 0
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe901
    add sp, byte 0x0a
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 2
    push ax
    mov ax, 0x912b
    push ax
    call api_idx_0002_2
    add sp, byte 4
    ret
loc_72c2:
    mov ax, 0
    call 0xf40b
    push word [bp + 0x4]
    call 0xefb7
    pop cx
    ret
    mov ax, 0xffea
    call 0xf40b
    mov ax, 0
    push ax
    call 0xef14
    pop cx
    mov ax, 0x9138
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, word [bp + 0x4]
    mov cx, 0xa
    cwd
    idiv cx
    add ax, strict word 0x30
    mov byte [bp - 0x0011], al
    add dx, byte 0x30
    db 0x8b, 0xc2 ; mov ax, dx
    mov byte [bp - 0x0010], al
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    call 0xd161
    add sp, byte 4
    push ax
    call 0xf909
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x732c
    mov ax, 0x12
    push ax
    call 0xb171
    pop cx
    push word [bp + 0x6]
    push word [bp - 0x0002]
    call 0xefaa
    add sp, byte 4
    push word [bp - 0x0002]
    call 0xfda5
    pop cx
    ret
api_idx_000a:
    mov ax, 0xfff6
    call 0xf40b
    mov al, byte [bp + 0x6]
    mov byte [bp - 0x000a], al
    mov byte [bp - 0x0009], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    mov ax, 0
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0
    push ax
    mov ax, 0x140
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x4]
    call 0xefd1
    add sp, byte 0x16
    ret
api_idx_000a_2:
    mov ax, 0xfff6
    call 0xf40b
    mov al, byte [bp + 0x6]
    mov byte [bp - 0x000a], al
    mov byte [bp - 0x0009], 0
    push word [bp + 0xc]
    mov ax, 0
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    mov ax, 0
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0
    push ax
    mov ax, 0x140
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x4]
    call 0xefd1
    add sp, byte 0x16
    ret
loc_73bc:
    mov ax, 0
    call 0xf40b
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    sub ax, word [0x908a]
    sbb dx, word [0x908c]
    push ax
    push dx
    mov ax, word [0xa5ae]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    cmp dx, bx
    jl short 0x73eb
    jne short 0x73ed
    cmp ax, cx
    jae short 0x73ed
    jmp short 0x7411
    mov ax, word [0xa5b0]
    inc ax
    mov cx, 0xc
    cwd
    idiv cx
    mov word [0xa5b0], dx
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    mov ax, 1
    ret
    mov ax, 0
    ret
api_idx_000a_3:
    mov ax, 0xfff6
    call 0xf40b
    mov ax, word [0xa4a4]
    jmp near 0x85e2
    mov ax, 0
    push ax
    push ax
    push word [0xa5b4]
    push word [0xa5b2]
    call 0xe942
    add sp, byte 8
    mov ax, word [0xa5bc]
    cmp ax, word [0xa5aa]
    jge short 0x7453
    mov ax, 0x4f
    push ax
    mov ax, 0xbd
    push ax
    mov ax, 6
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0x2b
    push ax
    mov ax, 0x74
    push ax
    mov ax, word [0xa5b0]
    mov cx, 3
    cwd
    idiv cx
    mov ax, dx
    inc ax
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0x3f
    push ax
    mov ax, 0xa4
    push ax
    mov ax, word [0xa5b0]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    add ax, strict word 4
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5b0]
    mov cx, 6
    cwd
    idiv cx
    mov bx, dx
    mov al, byte [bx - 0x5a3a]
    sub ah, ah
    add ax, strict word 0xffcf
    mov word [bp - 0x0006], ax
    push cx
    mov ax, 0xa1
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 7
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5b0]
    inc ax
    mov cx, 6
    cwd
    idiv cx
    mov bx, dx
    mov al, byte [bx - 0x5a3a]
    sub ah, ah
    add ax, strict word 0xffcf
    mov word [bp - 0x0006], ax
    mov ax, 0x1e
    push ax
    mov ax, 0xbf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0xb
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5b0]
    inc ax
    inc ax
    mov cx, 6
    cwd
    idiv cx
    mov bx, dx
    mov al, byte [bx - 0x5a3a]
    sub ah, ah
    add ax, strict word 0xffcf
    mov word [bp - 0x0006], ax
    mov ax, 0x35
    push ax
    mov ax, 0xd0
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0xf
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5b6]
    cmp ax, word [0xa5aa]
    jl short 0x752f
    jmp near 0x75aa
    mov ax, 0x67
    push ax
    mov ax, 0x85
    push ax
    mov ax, 1
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5b0]
    push ax
    cmp ax, strict word 6
    pop ax
    jl short 0x755c
    mov cx, 6
    cwd
    idiv cx
    mov cx, dx
    mov ax, 6
    sub ax, cx
    mov word [bp - 0x0008], ax
    mov ax, word [0xa5b0]
    inc ax
    inc ax
    inc ax
    mov cx, 0xc
    cwd
    idiv cx
    mov word [bp - 0x0006], dx
    cmp dx, byte 6
    jge short 0x757a
    mov ax, 6
    sub ax, dx
    jmp short 0x7584
    mov ax, dx
    mov cx, 6
    cwd
    idiv cx
    mov ax, dx
    mov word [bp - 0x000a], ax
    add ax, strict word 0x4c
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x9f
    push ax
    mov ax, word [0xa5b0]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    inc ax
    inc ax
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5b8]
    cmp ax, word [0xa5aa]
    jl short 0x75b6
    jmp near 0x76db
    cmp word [0xa5ce], byte 0x10
    jge short 0x75dd
    mov ax, 0x2f
    push ax
    mov ax, 0xbe
    push ax
    mov ax, word [0xa5ce]
    add ax, strict word 4
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    inc word [0xa5ce]
    jmp near 0x76db
    cmp word [0xa5ce], byte 0x14
    jge short 0x761a
    mov ax, 0x2f
    push ax
    mov ax, 0xbe
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0x2f
    push ax
    mov ax, 0xbe
    push ax
    mov ax, word [0xa5ce]
    add ax, strict word 5
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    inc word [0xa5ce]
    jmp near 0x76db
    mov word [0xa5ac], 0
    mov ax, 0x2f
    push ax
    mov ax, 0xbe
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0x2f
    push ax
    mov ax, 0xbe
    push ax
    mov ax, 0x18
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0x2f
    push ax
    mov ax, 0xbe
    push ax
    mov ax, word [0xa5b0]
    mov cx, 6
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    add ax, strict word 0x19
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5b0]
    cmp ax, strict word 9
    jge short 0x768b
    mov ax, 7
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    je short 0x7686
    mov ax, 0
    jmp short 0x7689
    mov ax, 1
    jmp short 0x7697
    mov ax, word [0xa5b0]
    mov cx, 3
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    inc ax
    mov word [bp - 0x0006], ax
    cmp ax, strict word 3
    jne short 0x76a4
    mov word [bp - 0x0006], 1
    mov ax, 0x2f
    push ax
    mov ax, 0xbe
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1f
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0x2f
    push ax
    mov ax, 0xbe
    push ax
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 0x22
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5ba]
    cmp ax, word [0xa5aa]
    jge short 0x773d
    mov ax, 0x15
    push ax
    mov ax, 0x28
    push ax
    mov ax, 1
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0x15
    push ax
    mov ax, 0x85
    push ax
    mov ax, 2
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5b0]
    cmp ax, strict word 4
    jl short 0x771d
    cmp ax, strict word 6
    jle short 0x7722
    mov ax, 3
    jmp short 0x7725
    mov ax, word [0xa5b0]
    mov word [bp - 0x0006], ax
    mov ax, 0x15
    push ax
    mov ax, 0x28
    push ax
    push word [bp - 0x0006]
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    jmp near 0x85ef
    mov ax, 6
    push ax
    push word [0xa5d0]
    mov ax, 1
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 6
    push ax
    push word [0xa5d2]
    mov ax, 2
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 6
    push ax
    push word [0xa5d4]
    mov ax, 3
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 6
    push ax
    push word [0xa5d6]
    mov ax, 4
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 6
    push ax
    push word [0xa5d8]
    mov ax, 5
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    add word [bx - 0x5a30], byte 0xf6
    cmp word [bx - 0x5a30], byte 0xb0
    jg short 0x77cc
    mov word [bx - 0x5a30], 0x140
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 5
    jl short 0x77b3
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    inc ax
    mov word [bp - 0x0004], ax
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx - 0x5a26], strict word 0x140
    jge short 0x783e
    push word [bx - 0x5a16]
    push word [bx - 0x5a26]
    mov ax, word [bp - 0x0002]
    add ax, strict word 6
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    cmp word [bp - 0x0002], byte 2
    jne short 0x781c
    mov ax, word [bp - 0x0004]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    add word [bx - 0x5a26], byte 0xf6
    jmp short 0x7828
    mov ax, word [bp - 0x0004]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    add word [bx - 0x5a26], byte 0xec
    mov ax, word [bp - 0x0004]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx - 0x5a26], byte 0xf0
    jge short 0x783c
    mov word [bx - 0x5a26], 0x140
    jmp short 0x786e
    mov ax, 0x28
    push ax
    call 0xb7a9
    pop cx
    cmp ax, word [bp - 0x0004]
    jne short 0x786e
    mov ax, word [bp - 0x0004]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov word [bx - 0x5a26], 0x13e
    mov ax, 0x3c
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 0x28
    mov cx, word [bp - 0x0004]
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    mov word [bx - 0x5a16], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 3
    jge short 0x787c
    jmp near 0x77dc
    mov ax, word [0xa5b6]
    cmp ax, word [0xa5aa]
    jge short 0x78bb
    cmp word [0xa5da], strict word 0x104
    jge short 0x7898
    cmp word [0xa5fa], byte 5
    jge short 0x7898
    inc word [0xa5fa]
    mov ax, 0x4b
    push ax
    push word [0xa5da]
    push word [0xa5fa]
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    cmp word [0xa5da], strict word 0xc8
    jle short 0x78bb
    add word [0xa5da], byte 0xfc
    mov ax, word [0xa5b8]
    cmp ax, word [0xa5aa]
    jge short 0x7903
    push word [0xa5f2]
    push word [0xa5e2]
    mov ax, 1
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    push word [0xa5f2]
    push word [0xa5e2]
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    inc ax
    inc ax
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    cmp word [0xa5e2], byte 0x50
    jge short 0x7903
    add word [0xa5e2], byte 6
    jmp near 0x85ef
    mov ax, 0
    push ax
    push ax
    push word [0xa5b4]
    push word [0xa5b2]
    call 0xe942
    add sp, byte 8
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    inc ax
    mov word [bp - 0x0004], ax
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx - 0x5a26], strict word 0x140
    jge short 0x7965
    push word [bx - 0x5a16]
    push word [bx - 0x5a26]
    mov ax, word [bp - 0x0002]
    add ax, strict word 6
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [bp - 0x0004]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    add word [bx - 0x5a26], byte 0xec
    cmp word [bx - 0x5a26], byte 0xf0
    jge short 0x7963
    mov word [bx - 0x5a26], 0x140
    jmp short 0x7995
    mov ax, 0x28
    push ax
    call 0xb7a9
    pop cx
    cmp ax, word [bp - 0x0004]
    jne short 0x7995
    mov ax, word [bp - 0x0004]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov word [bx - 0x5a26], 0x13e
    mov ax, 0x3c
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 0x28
    mov cx, word [bp - 0x0004]
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    mov word [bx - 0x5a16], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 2
    jge short 0x79a3
    jmp near 0x791e
    mov ax, word [0xa5b8]
    cmp ax, word [0xa5aa]
    jl short 0x79af
    jmp near 0x7c84
    push word [0xa5f2]
    push word [0xa5e2]
    mov ax, 1
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5f2]
    add ax, strict word 0xffd9
    push ax
    mov ax, word [0xa5e2]
    add ax, strict word 0x44
    push ax
    mov ax, 2
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5f2]
    add ax, strict word 0xffd5
    push ax
    mov ax, word [0xa5e2]
    add ax, 0x88
    push ax
    mov ax, 3
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5f2]
    add ax, strict word 0xffc5
    push ax
    mov ax, word [0xa5e2]
    add ax, 0xcc
    push ax
    mov ax, 4
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5bc]
    cmp ax, word [0xa5aa]
    jge short 0x7a2d
    cmp word [0xa5fc], byte 6
    jge short 0x7a2d
    inc word [0xa5fc]
    mov ax, word [0xa5f2]
    inc ax
    inc ax
    push ax
    push word [0xa5e2]
    mov ax, word [0xa5fc]
    add ax, strict word 5
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5be]
    cmp ax, word [0xa5aa]
    jl short 0x7a54
    jmp near 0x7ad5
    mov ax, word [0xa5e2]
    add ax, strict word 0xfffb
    cmp ax, word [0xa5e4]
    jle short 0x7a8b
    mov ax, word [0xa5f2]
    add ax, strict word 0x18
    push ax
    push word [0xa5e4]
    mov ax, 2
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 0x10
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    inc word [0xa5e4]
    inc word [0xa5e4]
    jmp short 0x7ad5
    mov ax, word [0xa5f2]
    add ax, strict word 0x18
    push ax
    mov ax, word [0xa5e2]
    add ax, strict word 0xfffb
    push ax
    mov ax, word [0xa5fe]
    add ax, strict word 0x12
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    cmp word [0xa5fe], byte 7
    jge short 0x7ab7
    inc word [0xa5fe]
    jmp short 0x7ad5
    mov word [0xa5ac], 0
    mov word [0xa5bc], 0x63
    mov word [0xa5be], 0x63
    mov word [0xa5fc], 0
    mov word [0xa5fe], 0
    mov ax, word [0xa5f2]
    add ax, strict word 0xffe4
    push ax
    mov ax, word [0xa5e2]
    add ax, 0xd9
    push ax
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 0xc
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5f2]
    add ax, strict word 9
    push ax
    mov ax, word [0xa5e2]
    add ax, 0xcc
    push ax
    mov ax, word [0xa5b0]
    mov cx, 6
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    add ax, strict word 0x1a
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5f2]
    add ax, strict word 0x12
    push ax
    mov ax, word [0xa5e2]
    add ax, 0x80
    push ax
    mov ax, word [0xa5b0]
    inc ax
    inc ax
    inc ax
    mov cx, 6
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    add ax, strict word 0x20
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5f2]
    add ax, strict word 0xffe2
    push ax
    mov ax, word [0xa5e2]
    add ax, 0x97
    push ax
    mov ax, word [0xa5b0]
    mov cx, 3
    cwd
    idiv cx
    add ax, strict word 0x26
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5f2]
    add ax, strict word 0xfff2
    push ax
    mov ax, word [0xa5e2]
    add ax, 0xa8
    push ax
    mov ax, word [0xa5b0]
    add ax, strict word 5
    mov cx, 0xc
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    mov cx, 3
    cwd
    idiv cx
    add ax, strict word 0x2a
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5f2]
    add ax, strict word 0x19
    push ax
    mov ax, word [0xa5e2]
    add ax, 0xae
    push ax
    mov ax, word [0xa5b0]
    mov cx, 4
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    add ax, strict word 0x2e
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5f2]
    add ax, strict word 0xffc2
    push ax
    mov ax, word [0xa5e2]
    add ax, 0xd4
    push ax
    mov ax, word [0xa5b0]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 4
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    add ax, strict word 0x32
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5f2]
    add ax, strict word 0xffd7
    push ax
    mov ax, word [0xa5e2]
    add ax, 0x82
    push ax
    mov ax, 0x36
    mov cx, word [0xa5b0]
    cmp cx, byte 4
    jge short 0x7c12
    add cx, byte 0x36
    db 0x8b, 0xc1 ; mov ax, cx
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5f2]
    add ax, strict word 0x22
    push ax
    mov ax, word [0xa5e2]
    add ax, strict word 0x6d
    push ax
    mov ax, word [0xa5b0]
    mov cx, 4
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    add ax, strict word 0x3a
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5f2]
    add ax, strict word 0xffe9
    push ax
    mov ax, word [0xa5e2]
    add ax, strict word 0x7a
    push ax
    mov ax, word [0xa5b0]
    mov cx, 6
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    inc ax
    push ax
    mov ax, 0x10
    push ax
    call api_idx_000a
    add sp, byte 8
    cmp word [0xa5e2], byte 0x3c
    jle short 0x7c75
    add word [0xa5e2], byte 0xfd
    mov ax, word [0xa5e2]
    add ax, strict word 0xfffb
    cmp ax, word [0xa5e4]
    jge short 0x7c84
    mov word [0xa5e4], ax
    jmp near 0x85ef
    mov ax, 0
    push ax
    push ax
    push word [0xa5b4]
    push word [0xa5b2]
    call 0xe942
    add sp, byte 8
    mov ax, 0x12
    push ax
    mov ax, 0x70
    push ax
    push word [0xa5ce]
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5b8]
    cmp ax, word [0xa5aa]
    jl short 0x7cbc
    jmp near 0x7d48
    cmp word [0xa600], byte 0x64
    jl short 0x7cc6
    jmp near 0x7d48
    push word [0xa600]
    push word [0xa5f2]
    push word [0xa5e2]
    mov ax, 6
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a_2
    add sp, byte 0x0a
    push word [0xa600]
    push word [0xa5f2]
    push word [0xa5e2]
    mov ax, 2
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 7
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a_2
    add sp, byte 0x0a
    cmp word [0xa5e2], byte 0x14
    jle short 0x7d1c
    inc word [0xa600]
    inc word [0xa600]
    cmp word [0xa5ce], byte 8
    jge short 0x7d1c
    inc word [0xa5ce]
    cmp word [0xa5e2], strict word 0xa0
    jge short 0x7d37
    mov ax, word [0xa600]
    mov cx, 0xa
    cwd
    idiv cx
    add ax, word [0xa5e2]
    add ax, strict word 5
    mov word [0xa5e2], ax
    cmp word [0xa5f2], byte 0x32
    jle short 0x7d48
    mov ax, word [0xa5f2]
    mov word [0xa5f2], ax
    dec word [0xa5f2]
    jmp near 0x85ef
    mov ax, 0
    push ax
    push ax
    push word [0xa5b4]
    push word [0xa5b2]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    push word [0xa5d0]
    mov ax, 3
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0
    push ax
    push word [0xa5d2]
    mov ax, 4
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0
    push ax
    push word [0xa5d4]
    mov ax, 3
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0
    push ax
    push word [0xa5d6]
    mov ax, 4
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    dec word [bx - 0x5a30]
    cmp word [bx - 0x5a30], strict word 0xff60
    jg short 0x7dd4
    mov word [bx - 0x5a30], 0x1e0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short 0x7dbb
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    inc ax
    mov word [bp - 0x0004], ax
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x5a26], strict word 0x140
    jge short 0x7e30
    push word [bx - 0x5a16]
    push word [bx - 0x5a26]
    mov ax, word [bp - 0x0002]
    add ax, strict word 5
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 3
    sub ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    sub word [bx - 0x5a26], ax
    cmp word [bx - 0x5a26], byte 0xb0
    jge short 0x7e2e
    mov word [bx - 0x5a26], 0x140
    jmp short 0x7e80
    mov ax, 0x1e
    push ax
    call 0xb7a9
    pop cx
    cmp ax, word [bp - 0x0004]
    jne short 0x7e80
    mov ax, word [bp - 0x0002]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x5a24], strict word 0x140
    je short 0x7e5d
    cmp word [bx - 0x5a24], strict word 0xf0
    jge short 0x7e80
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x5a26], 0x13e
    mov ax, 0x10
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 4
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x5a16], ax
    inc word [bp - 0x0002]
loc_7e83:
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 2
    jge short 0x7e8e
    jmp near 0x7de4
    mov ax, 0
    push ax
    push ax
    mov ax, 1
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0xa0
    push ax
    mov ax, 2
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5b8]
    cmp ax, word [0xa5aa]
    jl short 0x7ec3
    jmp near 0x7f44
    cmp word [0xa600], byte 0x64
    jl short 0x7ecd
    jmp near 0x7f44
    push word [0xa600]
    push word [0xa5f2]
    push word [0xa5e2]
    mov ax, 6
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a_2
    add sp, byte 0x0a
    push word [0xa600]
    push word [0xa5f2]
    push word [0xa5e2]
    mov ax, 2
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 7
    push ax
    mov ax, 0x11
    push ax
    call api_idx_000a_2
    add sp, byte 0x0a
    cmp word [0xa5e2], byte 0x0a
    jle short 0x7f18
    inc word [0xa600]
    inc word [0xa600]
    cmp word [0xa5e2], strict word 0xa0
    jge short 0x7f33
    mov ax, word [0xa600]
    mov cx, 0xa
    cwd
    idiv cx
    add ax, word [0xa5e2]
    add ax, strict word 5
    mov word [0xa5e2], ax
    cmp word [0xa5f2], byte 0x28
    jle short 0x7f44
    mov ax, word [0xa5f2]
    mov word [0xa5f2], ax
    dec word [0xa5f2]
    jmp near 0x85ef
    mov ax, 0
    push ax
    push ax
    push word [0xa5b4]
    push word [0xa5b2]
    call 0xe942
    add sp, byte 8
    mov ax, word [0xa5b6]
    cmp ax, word [0xa5aa]
    jl short 0x7f66
    jmp near 0x80a5
    mov ax, 1
    push ax
    mov ax, 0x4b
    push ax
    mov ax, 1
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0x42
    push ax
    mov ax, 0x93
    push ax
    mov ax, 2
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0x51
    push ax
    mov ax, 0x3d
    push ax
    mov ax, 3
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0x51
    push ax
    mov ax, 0x85
    push ax
    mov ax, 4
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0x5a
    push ax
    mov ax, 0xcd
    push ax
    mov ax, 5
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    cmp word [0xa5ce], byte 0
    jg short 0x7fee
    cmp word [0xa5fa], byte 0
    jne short 0x801c
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0x801c
    mov ax, 0x1d
    push ax
    mov ax, 0xab
    push ax
    mov ax, word [0xa5ce]
    add ax, strict word 6
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    inc word [0xa5ce]
    mov ax, word [0xa5ce]
    cmp ax, strict word 9
    jne short 0x8019
    mov word [0xa5ce], 0
    jmp near 0x80a5
    cmp word [0xa5fa], byte 0
    jg short 0x8036
    cmp word [0xa5ce], byte 0
    jne short 0x808f
    mov ax, 5
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0x808f
    mov ax, word [0xa5fa]
    mov cx, 6
    cwd
    idiv cx
    db 0x8b, 0xda ; mov bx, dx
    mov al, byte [bx - 0x5a3a]
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, strict word 0xffcf
    mov word [bp - 0x0006], ax
    mov ax, 0x1d
    push ax
    mov ax, 0xab
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0xe
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5b0]
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    test ax, ax
    jne short 0x807c
    cmp word [0xa5fa], byte 0
    jne short 0x8080
    inc word [0xa5fa]
    cmp word [0xa5fa], byte 6
    jne short 0x808d
    mov word [0xa5fa], 0
    jmp short 0x80a5
    mov ax, 0x1d
    push ax
    mov ax, 0xab
    push ax
    mov ax, 0xe
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    jmp near 0x85ef
    mov ax, 0
    push ax
    push ax
    push word [0xa5b4]
    push word [0xa5b2]
    call 0xe942
    add sp, byte 8
    mov ax, 3
    push ax
    mov ax, 7
    push ax
    mov ax, word [0xa5fc]
    inc ax
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 3
    push ax
    mov ax, 0x127
    push ax
    mov ax, word [0xa5fc]
    inc ax
    inc ax
    inc ax
    mov cx, 7
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    add ax, strict word 8
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5fc]
    inc ax
    mov cx, 7
    cwd
    idiv cx
    mov word [0xa5fc], dx
    mov ax, 0
    mov cx, word [0xa5b0]
    cmp cx, byte 6
    jge short 0x8118
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    mov word [bp - 0x0002], ax
    mov ax, 0x26
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xf
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0
    mov cx, word [0xa5b0]
    cmp cx, byte 5
    jle short 0x8148
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    mov word [bp - 0x0002], ax
    mov ax, 0x27
    push ax
    mov ax, 0x11e
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x13
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    je short 0x817b
    mov ax, word [0xa5b0]
    mov cx, 4
    cwd
    idiv cx
    jmp short 0x817e
    mov ax, 0
    mov word [bp - 0x0006], ax
    mov ax, 0x49
    push ax
    mov ax, 0xbb
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x17
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0x4f
    push ax
    mov ax, 0x95
    push ax
    mov ax, word [0xa5b0]
    mov cx, 4
    cwd
    idiv cx
    add ax, strict word 0x1a
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    cmp word [0xa5ce], byte 0
    jg short 0x81d3
    cmp word [0xa5fa], byte 0
    jne short 0x822a
    mov ax, 0xf
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0x822a
    mov ax, word [0xa5ce]
    mov cx, 6
    cwd
    idiv cx
    db 0x8b, 0xda ; mov bx, dx
    mov al, byte [bx - 0x5a3a]
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, strict word 0xffcf
    mov word [bp - 0x0006], ax
    push cx
    mov ax, 0x8a
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1d
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5b0]
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    test ax, ax
    jne short 0x8216
    cmp word [0xa5ce], byte 0
    jne short 0x821a
    inc word [0xa5ce]
    cmp word [0xa5ce], byte 6
    jne short 0x8227
    mov word [0xa5ce], 0
    jmp near 0x82c9
    cmp word [0xa5fa], byte 0
    jg short 0x8247
    cmp word [0xa5ce], byte 0
    je short 0x823b
    jmp near 0x82b3
    mov ax, 0xf
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0x82b3
    mov ax, word [0xa5fa]
    mov cx, 6
    cwd
    idiv cx
    db 0x8b, 0xda ; mov bx, dx
    mov al, byte [bx - 0x5a3a]
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, strict word 0xffcf
    mov word [bp - 0x0006], ax
    push cx
    mov ax, 0x8a
    push ax
    mov ax, 0x1d
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0x18
    push ax
    mov ax, 0x8d
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x21
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5b0]
    mov cx, 2
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    test ax, ax
    jne short 0x82a0
    cmp word [0xa5fa], byte 0
    jne short 0x82a4
    inc word [0xa5fa]
    cmp word [0xa5fa], byte 6
    jne short 0x82b1
    mov word [0xa5fa], 0
    jmp short 0x82c9
    mov ax, 6
    push ax
    mov ax, 0x8a
    push ax
    mov ax, 0x1d
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0x66
    push ax
    mov ax, 0xdb
    push ax
    mov ax, word [0xa5b0]
    mov cx, 2
    cwd
    idiv cx
    cwd
    idiv cx
    db 0x8b, 0xc2 ; mov ax, dx
    add ax, strict word 0x26
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0x66
    push ax
    mov ax, 0x54
    push ax
    mov ax, word [0xa5b0]
    mov cx, 2
    cwd
    idiv cx
    cwd
    db 0xf7
loc_8300:
    stc
    mov ax, dx
    add ax, strict word 0x28
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, word [0xa5fe]
    mov cx, 6
    cwd
    idiv cx
    mov bx, dx
    mov al, byte [bx - 0x5a3a]
    sub ah, ah
    add ax, strict word 0xffcf
    mov word [bp - 0x0006], ax
    mov ax, 0x41
    push ax
    mov ax, 0x6f
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2a
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    cmp word [0xa5fe], byte 0
    jg short 0x8354
    mov ax, 0xa
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0x838a
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0x8364
    inc word [0xa5fe]
    cmp word [0xa5fe], byte 6
    jne short 0x8371
    mov word [0xa5fe], 0
    cmp word [0xa5fe], byte 4
    jne short 0x838a
    mov ax, 2
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    je short 0x838a
    mov word [0xa5fe], 0
    jmp near 0x85ef

    db 0xb8, 0x00, 0x00, 0x50, 0x50, 0xff, 0x36, 0xb4, 0xa5, 0xff, 0x36, 0xb2, 0xa5, 0xe8, 0xa5, 0x65
    db 0x83, 0xc4, 0x08, 0xa1, 0xb8, 0xa5, 0x3b, 0x06, 0xaa, 0xa5, 0x7c, 0x03, 0xe9, 0xde, 0x00, 0xb8
    db 0x17, 0x00, 0x50, 0xb8, 0x38, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8
    db 0x81, 0xef, 0x83, 0xc4, 0x08, 0xb8, 0x27, 0x00, 0x50, 0xb8, 0x93, 0x00, 0x50, 0xb8, 0x02, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x6b, 0xef, 0x83, 0xc4, 0x08, 0xb8, 0x55, 0x00, 0x50, 0xb8
    db 0x23, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x55, 0xef, 0x83, 0xc4
    db 0x08, 0xb8, 0x55, 0x00, 0x50, 0xb8, 0x93, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x0f, 0x00
    db 0x50, 0xe8, 0x3f, 0xef, 0x83, 0xc4, 0x08, 0x83, 0x3e, 0xfc, 0xa5, 0x00, 0x7f, 0x0c, 0xb8, 0x03
    db 0x00, 0x50, 0xe8, 0x97, 0x33, 0x59, 0x85, 0xc0, 0x75, 0x18, 0xb8, 0x02, 0x00, 0x50, 0xe8, 0x8b
    db 0x33, 0x59, 0x85, 0xc0, 0x74, 0x0c, 0xb8, 0x03, 0x00, 0x50, 0xe8, 0x7f, 0x33, 0x59, 0x40, 0xa3
    db 0xfc, 0xa5, 0xb8, 0x08, 0x00, 0x50, 0xe8, 0x73, 0x33, 0x59, 0x85, 0xc0, 0x75, 0x06, 0xc7, 0x06
    db 0xfc, 0xa5, 0x00, 0x00, 0xb8, 0x37, 0x00, 0x50, 0xb8, 0x4f, 0x00, 0x50, 0xa1, 0xfc, 0xa5, 0x05
    db 0x05, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0xe9, 0xee, 0x83, 0xc4, 0x08, 0xb8, 0x2a, 0x00
    db 0x50, 0xb8, 0x57, 0x00, 0x50, 0xa1, 0xfe, 0xa5, 0x05, 0x09, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50
    db 0xe8, 0xd0, 0xee, 0x83, 0xc4, 0x08, 0xb8, 0x02, 0x00, 0x50, 0xe8, 0x2f, 0x33, 0x59, 0x85, 0xc0
    db 0x74, 0x0b, 0xb8, 0x06, 0x00, 0x50, 0xe8, 0x23, 0x33, 0x59, 0xa3, 0xfe, 0xa5, 0xa1, 0xba, 0xa5
    db 0x3b, 0x06, 0xaa, 0xa5, 0x7c, 0x03, 0xe9, 0x38, 0x01, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x22, 0x00
    db 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0xe8, 0x97, 0xee, 0x83, 0xc4, 0x08, 0xb8
    db 0x2a, 0x00, 0x50, 0xb8, 0x72, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0xe8
    db 0x81, 0xee, 0x83, 0xc4, 0x08, 0xb8, 0x58, 0x00, 0x50, 0xb8, 0x37, 0x00, 0x50, 0xb8, 0x03, 0x00
    db 0x50, 0xb8, 0x10, 0x00, 0x50, 0xe8, 0x6b, 0xee, 0x83, 0xc4, 0x08, 0xb8, 0x55, 0x00, 0x50, 0xb8
    db 0x87, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0xe8, 0x55, 0xee, 0x83, 0xc4
    db 0x08, 0xb8, 0x49, 0x00, 0x50, 0xb8, 0xb2, 0x00, 0x50, 0xa1, 0xce, 0xa5, 0x05, 0x05, 0x00, 0x50
    db 0xb8, 0x10, 0x00, 0x50, 0xe8, 0x3c, 0xee, 0x83, 0xc4, 0x08, 0x83, 0x3e, 0xfa, 0xa5, 0x00, 0x7f
    db 0x03, 0xe9, 0x8b, 0x00, 0xa1, 0xfa, 0xa5, 0xeb, 0x60, 0xb8, 0x57, 0x00, 0x50, 0xb8, 0xd0, 0x00
    db 0x50, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0xe8, 0x17, 0xee, 0x83, 0xc4, 0x08, 0xeb
    db 0x5c, 0xb8, 0x4d, 0x00, 0x50, 0xb8, 0xe4, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x10, 0x00
    db 0x50, 0xe8, 0xff, 0xed, 0x83, 0xc4, 0x08, 0xeb, 0x44, 0xb8, 0x42, 0x00, 0x50, 0xb8, 0xfa, 0x00
    db 0x50, 0xb8, 0x0b, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0xe8, 0xe7, 0xed, 0x83, 0xc4, 0x08, 0xeb
    db 0x2c, 0xb8, 0x33, 0x00, 0x50, 0xb8, 0x18, 0x01, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x10, 0x00
    db 0x50, 0xe8, 0xcf, 0xed, 0x83, 0xc4, 0x08, 0xeb, 0x14, 0x3d, 0x01, 0x00, 0x74, 0x9b, 0x3d, 0x02
    db 0x00, 0x74, 0xae, 0x3d, 0x03, 0x00, 0x74, 0xc1, 0x3d, 0x04, 0x00, 0x74, 0xd4, 0xff, 0x06, 0xfa
    db 0xa5, 0xa1, 0xfa, 0xa5, 0x3d, 0x04, 0x00, 0x7e, 0x06, 0xc7, 0x06, 0xfa, 0xa5, 0x00, 0x00, 0x83
    db 0x3e, 0xce, 0xa5, 0x00, 0x7f, 0x0c, 0xb8, 0x0a, 0x00, 0x50, 0xe8, 0xff, 0x31, 0x59, 0x85, 0xc0
    db 0x75, 0x1f, 0xff, 0x06, 0xce, 0xa5, 0xa1, 0xce, 0xa5, 0x3d, 0x02, 0x00, 0x75, 0x06, 0xc7, 0x06
    db 0xfa, 0xa5, 0x01, 0x00, 0x83, 0x3e, 0xce, 0xa5, 0x03, 0x7e, 0x06, 0xc7, 0x06, 0xce, 0xa5, 0x00
    db 0x00, 0xeb, 0x1f, 0x36, 0xd6, 0x68, 0xc4, 0x87, 0xc7, 0x4d, 0xc9, 0xce, 0xcc, 0x92, 0xcd, 0x8e
    db 0xcf, 0xef, 0xd0, 0xd4, 0xd3

    cmp ax, strict word 9
    jae short 0x85ef
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x29e9]
    ret
loc_85f0:
    mov ax, 0
    call 0xf40b
    mov word [0xa5aa], 1
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    call 0xf0ca
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe901
    add sp, byte 0x0a
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    ret
    mov ax, 0
    call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0x9144
    push ax
    call api_idx_0002_2
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0xa5b4], dx
    mov word [0xa5b2], ax
    mov ax, 0xf
    push ax
    mov ax, 1
    push ax
    call 0x72d0
    add sp, byte 4
    mov ax, 0x10
    push ax
    mov ax, 2
    push ax
    call 0x72d0
    add sp, byte 4
    mov ax, 0x11
    push ax
    mov ax, 3
    push ax
    call 0x72d0
    add sp, byte 4
    mov ax, word [bp + 0x6]
    mov word [0xa5b6], ax
    mov ax, word [bp + 0x8]
    mov word [0xa5b8], ax
    mov ax, word [bp + 0xa]
    mov word [0xa5ba], ax
    mov ax, word [bp + 0xc]
    mov word [0xa5bc], ax
    mov word [0xa5b0], 0
    mov word [0xa4a4], 1
    mov ax, 0
    cmp word [bp + 0x8], byte 0
    jne short 0x86c4
    mov ax, 0x14
    mov word [0xa5ce], ax
    mov ax, 0x9151
    push ax
    mov ax, 0xa5c6
    push ax
    call 0xf364
    add sp, byte 4
    mov word [0xa5ae], 5
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    call api_idx_000a_3
    mov ax, 0
    push ax
    push ax
    push ax
    call 0xf0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    call 0xf0bd
    pop cx
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0x6f79
    add sp, byte 4
    mov ax, 0x11
    push ax
    call 0x72c2
    pop cx
    mov ax, 0x10
    push ax
    call 0x72c2
    pop cx
    mov ax, 0xf
    push ax
    call 0x72c2
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0xa5b4]
    push word [0xa5b2]
    call 0xe942
    add sp, byte 8
    call 0x85f0
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0xf
    push ax
    mov ax, 4
    push ax
    call 0x72d0
    add sp, byte 4
    mov ax, 0x10
    push ax
    mov ax, 5
    push ax
    call 0x72d0
    add sp, byte 4
    mov ax, 0x11
    push ax
    mov ax, 6
    push ax
    call 0x72d0
    add sp, byte 4
    mov ax, word [bp + 0x6]
    mov word [0xa5b6], ax
    mov ax, word [bp + 0x8]
    mov word [0xa5b8], ax
    mov ax, word [bp + 0xa]
    mov word [0xa5ba], ax
    mov word [bp - 0x0002], 0
    mov ax, 0x50
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    mov word [bx - 0x5a30], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 5
    jl short 0x879d
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov word [bx - 0x5a26], 0x140
    mov ax, 0x3c
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 0x28
    mov cx, word [bp - 0x0002]
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    mov word [bx - 0x5a16], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short 0x87be
    mov word [0xa5e0], 0x13e
    mov word [0xa5f0], 0x2a
    mov word [0xa5e2], 0xff50
    mov word [0xa5f2], 0x3c
    mov word [0xa5b0], 0
    mov word [0xa4a4], 2
    mov word [0xa5fa], 1
    mov word [0xa5ae], 3
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    call api_idx_000a_3
    mov ax, 0
    push ax
    push ax
    push ax
    call 0xf0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    call 0xf0bd
    pop cx
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0x6f79
    add sp, byte 4
    mov ax, 0x11
    push ax
    call 0x72c2
    pop cx
    mov ax, 0x10
    push ax
    call 0x72c2
    pop cx
    mov ax, 0xf
    push ax
    call 0x72c2
    pop cx
    call 0x85f0
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0xf
    push ax
    mov ax, 5
    push ax
    call 0x72d0
    add sp, byte 4
    mov word [bp - 0x0002], 0
    mov ax, 0x50
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    mov word [bx - 0x5a30], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 5
    jl short 0x889a
    mov ax, 6
    push ax
    push word [0xa5d0]
    mov ax, 1
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 6
    push ax
    push word [0xa5d2]
    mov ax, 2
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 6
    push ax
    push word [0xa5d4]
    mov ax, 3
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 6
    push ax
    push word [0xa5d6]
    mov ax, 4
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 6
    push ax
    push word [0xa5d8]
    mov ax, 5
    push ax
    mov ax, 0xf
    push ax
    call api_idx_000a
    add sp, byte 8
    mov ax, 0xf
    push ax
    call 0x72c2
    pop cx
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0xa5b4], dx
    mov word [0xa5b2], ax
    mov ax, 0xf
    push ax
    mov ax, 4
    push ax
    call 0x72d0
    add sp, byte 4
    mov ax, 0x10
    push ax
    mov ax, 8
    push ax
    call 0x72d0
    add sp, byte 4
    mov ax, 0x11
    push ax
    mov ax, 7
    push ax
    call 0x72d0
    add sp, byte 4
    mov ax, word [bp + 0x6]
    mov word [0xa5b8], ax
    mov ax, word [bp + 0x8]
    mov word [0xa5bc], ax
    mov ax, word [bp + 0xa]
    mov word [0xa5be], ax
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov word [bx - 0x5a26], 0x140
    mov ax, 0x3c
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 0x28
    mov cx, word [bp - 0x0002]
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    mov word [bx - 0x5a16], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short 0x898f
    mov word [0xa5e0], 0x13e
    mov word [0xa5f0], 0x2a
    mov word [0xa5e2], 0x140
    mov word [0xa5f2], 0x46
    mov word [0xa5e4], 0xffe2
    mov word [0xa5fc], 0
    mov word [0xa5fe], 0
    mov word [0xa5b0], 0
    mov word [0xa4a4], 3
    mov word [0xa5ae], 5
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    call api_idx_000a_3
    mov ax, 0
    push ax
    push ax
    push ax
    call 0xf0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    call 0xf0bd
    pop cx
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0x6f79
    add sp, byte 4
    mov ax, 0x11
    push ax
    call 0x72c2
    pop cx
    mov ax, 0x10
    push ax
    call 0x72c2
    pop cx
    mov ax, 0xf
    push ax
    call 0x72c2
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0xa5b4]
    push word [0xa5b2]
    call 0xe942
    add sp, byte 8
    call 0x85f0
    ret
    mov ax, 0
    call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0x9158
    push ax
    call api_idx_0002_2
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0xa5b4], dx
    mov word [0xa5b2], ax
    mov ax, 0xf
    push ax
    mov ax, 9
    push ax
    call 0x72d0
    add sp, byte 4
    mov ax, 0x11
    push ax
    mov ax, 6
    push ax
    call 0x72d0
    add sp, byte 4
    mov ax, word [bp + 0x6]
    mov word [0xa5b8], ax
    mov word [0xa5ce], 1
    mov word [0xa5b0], 0
    mov word [0xa4a4], 4
    mov word [0xa5e2], 0xff9c
    mov word [0xa5f2], 0x55
    mov word [0xa600], 0
    mov word [0xa5ae], 5
    les bx, word [0x0002]
    mov ax, word [es:bx]
    db 0x26, 0x8b, 0x57
loc_8b00:
    add cl, byte [bx + di - 0x73ea]
    nop
    mov word [0x908a], ax
    call api_idx_000a_3
    mov ax, 0
    push ax
    push ax
    push ax
    call 0xf0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    call 0xf0bd
    pop cx
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0x6f79
    add sp, byte 4
    mov ax, 0x11
    push ax
    call 0x72c2
    pop cx
    mov ax, 0xf
    push ax
    call 0x72c2
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0xa5b4]
    push word [0xa5b2]
    call 0xe942
    add sp, byte 8
    call 0x85f0
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0x9165
    push ax
    call api_idx_0002_2
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0xa5b4], dx
    mov word [0xa5b2], ax
    mov ax, 0xf
    push ax
    mov ax, 0xa
    push ax
    call 0x72d0
    add sp, byte 4
    mov ax, 0x11
    push ax
    mov ax, 6
    push ax
    call 0x72d0
    add sp, byte 4
    mov ax, word [bp + 0x6]
    mov word [0xa5b8], ax
    mov word [0xa5b0], 0
    mov word [0xa4a4], 5
    mov word [0xa5d0], 0
    mov word [0xa5d2], 0xa0
    mov word [0xa5d4], 0x140
    mov word [0xa5d6], 0x1e0
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    mov word [bx - 0x5a26], 0x140
    mov ax, 0x10
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 4
    mov cx, word [bp - 0x0002]
    shl cx, 1
    db 0x8b, 0xd9 ; mov bx, cx
    mov word [bx - 0x5a16], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short 0x8bea
    mov word [0xa5e2], 0xff9c
    mov word [0xa5f2], 0x6e
    mov word [0xa600], 0
    mov word [0xa5ae], 5
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    call api_idx_000a_3
    mov ax, 0
    push ax
    push ax
    push ax
    call 0xf0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    call 0xf0bd
    pop cx
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0x6f79
    add sp, byte 4
    mov ax, 0x11
    push ax
    call 0x72c2
    pop cx
    mov ax, 0xf
    push ax
    call 0x72c2
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0xa5b4]
    push word [0xa5b2]
    call 0xe942
    add sp, byte 8
    call 0x85f0
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0x9172
    push ax
    call api_idx_0002_2
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0xa5b4], dx
    mov word [0xa5b2], ax
    mov ax, 0xf
    push ax
    mov ax, 0xd
    push ax
    call 0x72d0
    add sp, byte 4
    mov ax, word [bp + 0x6]
    mov word [0xa5b6], ax
    mov ax, 0x917f
    push ax
    mov ax, 0xa5c6
    push ax
    call 0xf364
    add sp, byte 4
    mov word [0xa5ce], 0
    mov word [0xa5fa], 0
    mov word [0xa5b0], 0
    mov word [0xa4a4], 6
    mov word [0xa5ae], 5
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    call api_idx_000a_3
    mov ax, 0
    push ax
    push ax
    push ax
    call 0xf0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    call 0xf0bd
    pop cx
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0x6f79
    add sp, byte 4
    mov ax, 0xf
    push ax
    call 0x72c2
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0xa5b4]
    push word [0xa5b2]
    call 0xe942
    add sp, byte 8
    call 0x85f0
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0x9186
    push ax
    call api_idx_0002_2
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0xa5b4], dx
    mov word [0xa5b2], ax
    mov ax, 0xf
    push ax
    mov ax, 0xc
    push ax
    call 0x72d0
    add sp, byte 4
    mov ax, 0x9193
    push ax
    mov ax, 0xa5c6
    push ax
    call 0xf364
    add sp, byte 4
    mov word [0xa5fc], 0
    mov word [0xa5ce], 0
    mov word [0xa5fa], 0
    mov word [0xa5fe], 0
    mov word [0xa5b0], 0
    mov word [0xa4a4], 7
    mov word [0xa5ae], 5
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    call api_idx_000a_3
    mov ax, 0
    push ax
    push ax
    push ax
    call 0xf0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    call 0xf0bd
    pop cx
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0x6f79
    add sp, byte 4
    mov ax, 0xf
    push ax
    call 0x72c2
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0xa5b4]
    push word [0xa5b2]
    call 0xe942
    add sp, byte 8
    call 0x85f0
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0x919a
    push ax
    call api_idx_0002_2
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0xa5b4], dx
    mov word [0xa5b2], ax
    mov ax, 0xf
    push ax
    mov ax, 0xe
    push ax
    call 0x72d0
    add sp, byte 4
    mov ax, 0x10
    push ax
    mov ax, 0xf
    push ax
    call 0x72d0
    add sp, byte 4
    mov ax, word [bp + 0x6]
    mov word [0xa5b8], ax
    mov ax, word [bp + 0x8]
    mov word [0xa5ba], ax
    mov ax, 0x91a7
    push ax
    mov ax, 0xa5c6
    push ax
    call 0xf364
    add sp, byte 4
    mov word [0xa5ce], 0
    mov word [0xa5fa], 0
    mov word [0xa5fc], 0
    mov word [0xa5fe], 0
    mov word [0xa5b0], 0
    mov word [0xa4a4], 8
    mov word [0xa5ae], 5
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    call api_idx_000a_3
    mov ax, 0
    push ax
    push ax
    push ax
    call 0xf0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    call 0xf0bd
    pop cx
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0x6f79
    add sp, byte 4
    mov ax, 0xf
    push ax
    call 0x72c2
    pop cx
    mov ax, 0x10
    push ax
    call 0x72c2
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0xa5b4]
    push word [0xa5b2]
    call 0xe942
    add sp, byte 8
    call 0x85f0
    ret
    mov ax, 0xfffe
    call 0xf40b
    call 0x85f0
    cmp word [0x0e32], byte 1
    jne short 0x8f87
    call 0xf039
    mov word [0x0e32], 0
    call 0xd9a6
    mov word [0x8450], ax
    test ax, ax
    je short 0x8fc0
    mov ax, 0
    push ax
    mov ax, 5
    push ax
    call 0xd7e7
    add sp, byte 4
    mov ax, word [0x0116]
    mov word [0x844e], ax
    mov ax, 1
    push ax
    push word [0x844e]
    mov ax, 0
    push ax
    call 0xd964
    add sp, byte 6
    mov word [0x844c], ax
    mov ax, word [bp + 0x4]
    jmp near 0x927e
    cmp word [bp + 0x4], byte 4
    jne short 0x8fe5
    mov ax, 0x63
    push ax
    push ax
    mov ax, 1
    push ax
    mov ax, 0x63
    push ax
    mov ax, 0x7ba2
    push ax
    call 0x8634
    add sp, byte 0x0a
    jmp short 0x8ffc
    mov ax, 0x63
    push ax
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 0x7b0c
    push ax
    call 0x8634
    add sp, byte 0x0a
    mov ax, 0x63
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x7b20
    push ax
    call 0x8756
    add sp, byte 8
    mov ax, 0x63
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x7b2a
    push ax
    call 0x8881
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x7b2f
    push ax
    call 0x8d84
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x7b3e
    push ax
    call 0x8ca3
    add sp, byte 4
    mov ax, 0x63
    push ax
    mov ax, 0
    push ax
    mov ax, 0x7b48
    push ax
    call 0x8e6b
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x63
    push ax
    mov ax, 0x7b4d
    push ax
    call 0x8e6b
    add sp, byte 6
    mov ax, 0x63
    push ax
    push ax
    mov ax, 0
    push ax
    cmp word [bp + 0x4], byte 4
    jne short 0x9074
    mov ax, 0x63
    push ax
    mov ax, 0x7b52
    push ax
    call 0x8634
    add sp, byte 0x0a
    mov ax, 0x63
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x7b5c
    push ax
    call 0x8756
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x7b66
    push ax
    call 0x8a74
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x7b70
    push ax
    call 0x8b69
    add sp, byte 4
    jmp near 0x929e
    mov ax, 0
    push ax
    push ax
    mov ax, 0x63
    push ax
    push ax
    mov ax, 0x7bd4
    push ax
    call 0x8634
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 0x63
    push ax
    mov ax, 0x7be3
    push ax
    call 0x8e6b
    add sp, byte 6
    mov ax, 0x63
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x7be8
    push ax
    call 0x8756
    add sp, byte 8
    mov ax, 0x63
    push ax
    mov ax, 0
    push ax
    mov ax, 0x7bf2
    push ax
    call 0x8e6b
    add sp, byte 6
    mov ax, 0x63
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x7bf7
    push ax
    call 0x8881
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x7bfc
    push ax
    call 0x8d84
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x7c06
    push ax
    call 0x8ca3
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    mov ax, 0x63
    push ax
    push ax
    mov ax, 0x7c0b
    push ax
    call 0x8634
    add sp, byte 0x0a
    mov ax, 0x63
    push ax
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 0x7c10
    push ax
    call 0x8634
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    mov ax, 0x63
    push ax
    push ax
    mov ax, 0x7c1a
    push ax
    call 0x8634
    add sp, byte 0x0a
    mov ax, 0x63
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x7c24
    push ax
    call 0x8756
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x7c38
    push ax
    call 0x8a74
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x7c42
    push ax
    call 0x8b69
    add sp, byte 4
    jmp near 0x929e
    mov ax, 0
    push ax
    mov ax, 0x63
    push ax
    push ax
    push ax
    mov ax, 0x797c
    push ax
    call 0x8634
    add sp, byte 0x0a
    mov ax, 0x63
    push ax
    mov ax, 0
    push ax
    mov ax, 0x63
    push ax
    mov ax, 0x7986
    push ax
    call 0x8756
    add sp, byte 8
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x7990
    push ax
    call 0x8881
    add sp, byte 8
    mov ax, 0x63
    push ax
    mov ax, 0x799a
    push ax
    call 0x8ca3
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x79ae
    push ax
    call 0x8d84
    add sp, byte 4
    mov ax, 0x63
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x79b8
    push ax
    call 0x8756
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x79c2
    push ax
    call 0x8d84
    add sp, byte 4
    mov ax, 0x63
    push ax
    mov ax, 0
    push ax
    mov ax, 0x79d6
    push ax
    call 0x8e6b
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x79e0
    push ax
    call 0x8d84
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x79ea
    push ax
    call 0x8ca3
    add sp, byte 4
    mov ax, 0x63
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x79f4
    push ax
    call 0x8756
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x79fe
    push ax
    call 0x8a74
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x7a08
    push ax
    call 0x8b69
    add sp, byte 4
    jmp short 0x929e
    cmp ax, strict word 1
    jne short 0x9286
    jmp near 0x8fc6
    cmp ax, strict word 2
    jne short 0x928e
    jmp near 0x90b4
    cmp ax, strict word 3
    jne short 0x9296
    jmp near 0x91a2
    cmp ax, strict word 4
    jne short 0x929e
    jmp near 0x8fc6
    cmp word [0x8450], byte 0
    je short 0x92bb
    push word [0x844c]
    push word [0x844e]
    call 0xd91b
    add sp, byte 4
    mov ax, 0
    push ax
    call 0xd907
    pop cx
    test word [0x9056], 0x1000
    je short 0x92da
    cmp byte [0x5989], 1
    jne short 0x92da
    cmp word [0x0e32], byte 0
    jne short 0x92d4
    call 0xf02c
    mov word [0x0e32], 1
    mov ax, 0
    push ax
    mov ax, 0x91ae
    push ax
    call api_idx_0002_2
    add sp, byte 4
    db 0xc7, 0x46, 0xfe
loc_92eb:
    add byte [bx + si], al
    jmp short 0x92ff
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call 0xcb3a
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x92ef
    mov ax, 0
    push ax
    push ax
    push ax
    call 0xf0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    call 0xf0bd
    pop cx
    ret
    pop word [0x91c4]
    pop cx
    mov word [0x91c0], sp
    mov word [0x91c2], bp
    mov word [0x91bc], si
    mov word [0x91be], di
    cld
    mov di, 0x91c6
    mov cx, 0xa602
    db 0x2b, 0xcf ; sub cx, di
    shr cx, 1
    je short 0x9356
    db 0x2b, 0xc0 ; sub ax, ax
    db 0xf3, 0xab ; rep stosw word ptr es:[di], ax
    call 0xe
    mov bp, word [0x91c2]
    mov sp, word [0x91c0]
    mov si, word [0x91bc]
    mov di, word [0x91be]
    push cx
    jmp [0x91c4]
    pop bx
    push di
    push es
    mov di, cs
    mov es, di
    db 0x8b, 0xfb ; mov di, bx
    db 0x8b, 0xd9 ; mov bx, cx
    shl bx, 1
    cld
    db 0xf2, 0xaf ; repne scasw ax, word ptr es:[di]
    mov cx, word [es:bx + di - 0x0004]
    pop es
    pop di
    jmp cx
    push bp
    db 0x8b, 0xec ; mov bp, sp
    cld
    push si
    push di
    mov si, word [bp + 0x4]
    mov di, ds
    mov es, di
    mov di, word [bp + 0x6]
    lodsw
    scasw
    jne short 0x93d9
    test al, al
    je short 0x93d3
    test ah, ah
    jne short 0x9396
    jmp short 0x93d3
    push bp
    db 0x8b, 0xec ; mov bp, sp
    mov cx, word [bp + 0x8]
    db 0x8b, 0xd1 ; mov dx, cx
    shr cx, 1
    cld
    push si
    push di
    mov si, word [bp + 0x4]
    mov di, ds
    mov es, di
    mov di, word [bp + 0x6]
    jcxz 0x93cb
    lodsw
    scasw
    jne short 0x93d9
    test al, al
    je short 0x93d3
    test ah, ah
    loopne 0x93bd
    je short 0x93d3
    test dl, 1
    je short 0x93d3
    cmpsb
    jne short 0x93e6
    db 0x2b, 0xc0 ; sub ax, ax
    pop di
    pop si
    pop bp
    ret
    sub di, byte 2
    scasb
    jne short 0x93e6
    test al, al
    je short 0x93d3
    db 0x8a, 0xc4 ; mov al, ah
    scasb
    db 0x1b, 0xc0 ; sbb ax, ax
    js short 0x93d5
    inc ax
    jmp short 0x93d5
    push ax
    inc bx
    inc si
    dec cx
    dec sp
    inc bp
    cs inc sp
    inc dx
    push bx
    add byte [bp + 0x2e], dl
    and al, 0x24
    and al, 0
    push ax
    dec di
    push dx
    push sp
    inc sp
    inc cx
    push sp
    inc cx
    cs push si
    inc di
    inc cx
    add byte [bp + 0x2e], dl
    and al, 0x24
    and al, 0
    push si
    cs and al, 0x24
    and al, 0
    push bx
    inc cx
    push si
    inc bp
    inc di
    inc cx
    dec bp
    inc bp
    cs inc dx
    inc bx
    inc si
    add byte [bp + 0x45], cl
    push di
    inc di
    inc cx
    dec bp
    inc bp
    cs inc sp
    inc dx
    push bx
    add byte [bp + di + 0x52], al
    push bp
    push bx
    inc cx
    inc sp
    inc bp
    push dx
    cs inc bp
    dec si
    inc sp
    add byte [bp + di + 0x43], dl
    inc bp
    dec si
    inc cx
    push dx
    dec cx
    dec di
    cs dec ax
    inc sp
    push dx
    add byte [bp + 0x2e], dl
    and al, 0x24
    and al, 0
    push ax
    inc cx
    dec sp
    inc bp
    push sp
    push sp
    inc bp
    cs inc sp
    inc bp
    inc si
    add byte [bp + 0x2e], dl
    and al, 0x24
    and al, 0
    push si
    cs and al, 0x24
    and al, 0
    add byte [bx + di], ah
    and ax, 0x5d26
    inc ax
    db 0x23, 0x7c, 0x00 ; and di, word ptr [si]
    and byte [bx + si], al
    push bx
    push sp
    inc cx
    push dx
    push bx
    inc bx
    push dx
    dec si
    cs push si
    inc di
    inc cx
    add byte [di + 0x41], cl
    dec cx
    dec si
    push bx
    inc bx
    push dx
    dec si
    cs push si
    inc di
    inc cx
    add byte [bp + 0x49], dl
    inc sp
    inc bp
    dec di
    xor byte [bx + si], dh
    cs push ax
    dec cx
    inc bx
    add byte [bp + 0x49], dl
    inc sp
    push bx
    inc bx
    dec si
    xor byte [bx + di], dh
    cs push si
    inc di
    inc cx
    add byte [bx + di], dh
    xor dh, byte [bp + di]
    xor al, 0x33
    xor al, byte [bx + si]
    push bx
    push sp
    inc cx
    push dx
    push bx
    inc bx
    push dx
    dec si
    cs push si
    inc di
    inc cx
    add byte [bp + 0x49], dl
    inc sp
    push bx
    inc bx
    dec si
    xor byte [bp + si], dh
    cs push si
    inc di
    inc cx
    add byte [bp + 0x49], dl
    inc sp
    push bx
    inc bx
    dec si
    xor byte [bp + di], dh
    cs push si
    inc di
    inc cx
    add byte [bx + di], dh
    xor dh, byte [bp + di]
    xor al, 0x33
    xor al, byte [bx + si]
    push si
    dec cx
    inc sp
    push bx
    inc bx
    dec si
    xor byte [si], dh
    cs push si
    inc di
    inc cx
    add byte [bx + di], dh
    xor dh, byte [bp + di]
    xor al, 0x33
    xor al, byte [bx + si]
    push si
    dec cx
    inc sp
    push bx
    inc bx
    dec si
    xor byte [di], dh
    cs push si
    inc di
    inc cx
    add byte [bx + di], dh
    xor dh, byte [bp + di]
    xor al, 0x33
    xor al, byte [bx + si]
    dec bp
    inc cx
    dec cx
    dec si
    push bx
    inc bx
    push dx
    dec si
    cs push si
    inc di
    inc cx
    times 12 db 0
