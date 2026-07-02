%include "structs/structs.inc"
%include "structs/vpcmk.inc"
org 0
bits 16

    db 0xf2, 0x00, 0x55, 0x50, 0x23, 0x70, 0x98, 0x90 ; header (8 bytes)

math_loc_0008:
    db 0x8c, 0x04, 0x68, 0x02, 0xd3, 0xbf
loc_000e:
    mov ax, 0
    call 0xf40b
    call api_idx_002c_2
    mov word [0x830a], 4
    mov ax, 0
    ret
api_idx_0002:
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
    jne short 0x57
    mov ax, 0x1c
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
    cmp word [bp + 0x6], byte 0
    je short 0x84
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
api_idx_0002_2:
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
    jne short 0xe6
    push word [0x906e]
    push word [bp + 0x4]
    push word [bp - 0x0002]
    call 0xfd6f
    add sp, byte 6
    jmp short 0xfc
    cmp word [bp + 0x8], byte 1
    jne short 0xfc
    push word [0x906e]
    push word [bp + 0x4]
    push word [bp - 0x0002]
    call 0xfd76
    add sp, byte 6
    push word [bp - 0x0002]
    call 0xfda5
    pop cx
    ret
api_idx_0008:
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
    pop cx
    test ax, ax
    je short 0x141
    jmp near 0x1c0
    cmp word [bp - 0x0008], byte 0
    jne short 0x1b2
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
    je short 0x184
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
    jmp short 0x1bd
    mov ax, 0xa
    push ax
    call 0xe489
    pop cx
    dec word [bp - 0x0008]
    jmp near 0x132
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
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe8da
    add sp, byte 8
    cmp word [bp - 0x0002], byte 0x0d
    jne short 0x217
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], 0
    call 0xec17
    ret
    cmp word [bp - 0x0002], byte 8
    jne short 0x237
    cmp word [bp - 0x0004], byte 0
    jle short 0x22c
    dec word [bp - 0x0004]
    add word [bp + 0x6], byte 0xfa
    jmp short 0x234
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp near 0x2b8
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp + 0xa]
    jl short 0x24a
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp near 0x2b8
    cmp word [bp + 0x10], byte 0
    jne short 0x25d
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x20
    jl short 0x25d
    cmp ax, strict word 0x7f
    jle short 0x270
    cmp word [bp + 0x10], byte 1
    jne short 0x2b8
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x30
    jl short 0x2b8
    cmp ax, strict word 0x39
    jg short 0x2b8
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
    jmp near 0x128
    db 0xc3
api_idx_0008_2:
    mov ax, 0xfff8
    call 0xf40b
    mov ax, word [bp + 0x6]
    cwd
    idiv word [bp + 0x12]
    imul word [bp + 0xe]
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x6]
    cwd
    idiv word [bp + 0x12]
    mov ax, dx
    imul word [bp + 0x10]
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x0004]
    add ax, strict word 9
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, word [bp - 0x0002]
    inc ax
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x0004]
    dec ax
    push ax
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x0002]
    dec ax
    push ax
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x0006], dx
    mov word [bp - 0x0008], ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, word [bp - 0x0002]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x0004]
    push ax
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x0002]
    push ax
    call 0xbce3
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    push word [bp + 0x14]
    call 0xe823
    add sp, byte 4
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x0004]
    inc ax
    inc ax
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
    add ax, word [bp - 0x0002]
    inc ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0xe84e
    add sp, byte 4
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x0004]
    add ax, strict word 9
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, word [bp - 0x0002]
    inc ax
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x0004]
    dec ax
    push ax
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x0002]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0008]
    call 0xe94f
    add sp, byte 6
    ret
loc_03ca:
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
math_loc_0445:
    mov ax, 0xfe56
    call 0xf40b
    mov ax, word [bp + 0x14]
    dec ax
    cwd
    idiv word [bp + 0x12]
    inc ax
    imul word [bp + 0xe]
    add ax, word [bp + 0x8]
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    mov dx, ax
    mov cx, word [bp + 0xe]
    sub cx, ax
    pop ax
    sub ax, cx
    mov word [bp - 0x0006], ax
    mov ax, word [bp + 0x10]
    imul word [bp + 0x12]
    add ax, word [bp + 0xa]
    mov cx, word [bp + 0x10]
    add cx, byte 0xf7
    sub ax, cx
    mov word [bp - 0x0008], ax
    cmp word [bp + 0x6], byte 0
    jne short 0x48b
    jmp near 0x52d
    mov ax, 0x90a3
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0xa]
    add ax, strict word 0xffeb
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0xfffa
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x01a8], ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0xa]
    add ax, strict word 0xffec
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0xfffb
    push ax
    call 0xbc9a
    add sp, byte 8
    lea ax, word [bp - 0x01a6]
    push ax
    push word [bp + 0x6]
    call 0xb53b
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp + 0xa]
    add ax, strict word 0xfff3
    push ax
    lea ax, word [bp - 0x01a6]
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
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x01a6]
    push ax
    call 0xe84e
    add sp, byte 4
    jmp short 0x54f
    mov ax, 0x90a9
    push ax
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp + 0xa]
    dec ax
    push ax
    mov ax, word [bp + 0x8]
    dec ax
    push ax
    call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x01a8], ax
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1c]
    cmp word [bx + si], byte 0xff
    jne short 0x56b
    jmp near 0x68d
    cmp word [bx + si], byte 1
    je short 0x573
    jmp near 0x687
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x0156]
    add ax, cx
    push ax
    mov ax, word [bp + 0x4]
    add ax, word [bp - 0x0004]
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    cwd
    idiv word [bp + 0x12]
    imul word [bp + 0xe]
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0002]
    cwd
    idiv word [bp + 0x12]
    mov ax, dx
    imul word [bp + 0x10]
    mov word [bp - 0x000c], ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000c]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x000a]
    push ax
    call 0xbce3
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    mov ax, word [bp + 0x16]
    mov cx, word [bp - 0x0004]
    cmp cx, word [bp + 0x18]
    jne short 0x5ea
    mov ax, 0x1a
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000c]
    inc ax
    inc ax
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x0156]
    add ax, cx
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
    add ax, word [bp - 0x000a]
    inc ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x0156]
    add ax, cx
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000c]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp + 0x8]
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
    mov word [bx - 0x002a], ax
    inc word [bp - 0x0002]
    inc word [bp - 0x0004]
    jmp near 0x559
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
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    cmp word [0x0e32], byte 0
    je short 0x6d1
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    mov word [bp - 0x0004], ax
    cmp word [0x5b3e], byte 0
    je short 0x6bc
    jmp near 0x873
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0004]
    cwd
    idiv word [bp + 0x12]
    imul word [bp + 0xe]
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0004]
    cwd
    idiv word [bp + 0x12]
    mov ax, dx
    imul word [bp + 0x10]
    mov word [bp - 0x000c], ax
    mov ax, 0x16
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000c]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x000a]
    push ax
    call loc_03ca
    add sp, byte 0x0a
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp + 0xa]
    dec ax
    push ax
    mov ax, word [bp + 0x8]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000c]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x000a]
    push ax
    call loc_03ca
    add sp, byte 0x0a
    mov ax, 1
    push ax
    call 0xea50
    pop cx
    test ax, ax
    jne short 0x778
    jmp short 0x76a
    mov ax, 1
    push ax
    call 0xeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x01aa], ax
    mov ax, word [bp - 0x0004]
    cwd
    idiv word [bp + 0x12]
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0002]
    dec ax
    cwd
    idiv word [bp + 0x12]
    inc ax
    mov word [bp - 0x000c], ax
    mov ax, word [bp - 0x01aa]
    jmp near 0x82a
    mov ax, word [bp - 0x0004]
    add ax, word [bp + 0x12]
    dec ax
    cwd
    idiv word [bp + 0x12]
    mov ax, dx
    push ax
    mov ax, word [bp - 0x000a]
    imul word [bp + 0x12]
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0004], ax
    jmp near 0x841
    mov ax, word [bp - 0x0004]
    inc ax
    cwd
    idiv word [bp + 0x12]
    mov ax, dx
    push ax
    mov ax, word [bp - 0x000a]
    imul word [bp + 0x12]
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0004], ax
    jmp short 0x841
    mov ax, word [bp - 0x000a]
    add ax, word [bp - 0x000c]
    dec ax
    cwd
    idiv word [bp - 0x000c]
    mov word [bp - 0x000a], dx
    mov ax, word [bp - 0x0004]
    cwd
    idiv word [bp + 0x12]
    mov ax, dx
    push ax
    mov ax, word [bp - 0x000a]
    imul word [bp + 0x12]
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0004], ax
    jmp short 0x841
    mov ax, word [bp - 0x000a]
    inc ax
    cwd
    idiv word [bp - 0x000c]
    mov word [bp - 0x000a], dx
    mov ax, word [bp - 0x0004]
    cwd
    idiv word [bp + 0x12]
    mov ax, dx
    push ax
    mov ax, word [bp - 0x000a]
    imul word [bp + 0x12]
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0004], ax
    jmp short 0x841
    cmp ax, strict word 8
    je short 0x7dd
    cmp ax, strict word 9
    jne short 0x837
    jmp near 0x7a3
    cmp ax, strict word 0xa
    je short 0x805
    cmp ax, strict word 0xb
    je short 0x7c2
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jl short 0x84c
    jmp near 0x79c
    cmp word [bp - 0x01aa], byte 0x0d
    je short 0x856
    jmp near 0x6d6
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp + 0xa]
    dec ax
    push ax
    mov ax, word [bp + 0x8]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    dec word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cwd
    idiv word [bp + 0x12]
    imul word [bp + 0xe]
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0004]
    cwd
    idiv word [bp + 0x12]
    mov ax, dx
    imul word [bp + 0x10]
    mov word [bp - 0x000c], ax
    mov ax, 1
    push ax
    push ax
    push word [bp + 0xc]
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x000a]
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp + 0xc]
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x000a]
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 1
    push ax
    push word [bp - 0x01a8]
    call 0xc459
    add sp, byte 4
    cmp word [bp + 0x1a], byte 0
    je short 0x925
    cmp word [bp + 0x6], byte 0
    je short 0x90b
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0xa]
    add ax, strict word 0xffeb
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0xfffa
    push ax
    call 0xe8da
    add sp, byte 8
    jmp short 0x925
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp + 0xa]
    dec ax
    push ax
    mov ax, word [bp + 0x8]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0004]
    mov word [0x9052], ax
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x002a]
    ret
api_idx_0058:
    mov ax, 0xffa8
    call 0xf40b
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x8]
    add ax, strict word 9
    mov word [bp - 0x0004], ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x19
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0xffeb
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0xffe7
    push ax
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x0056], dx
    mov word [bp - 0x0058], ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x18
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 0xffec
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0xffe8
    push ax
    call 0xbc9a
    add sp, byte 8
    lea ax, word [bp - 0x0054]
    push ax
    push word [bp + 0x4]
    call 0xb53b
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 0xfff3
    push ax
    lea ax, word [bp - 0x0054]
    push ax
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
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call 0xe84e
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xbce3
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    mov ax, 0x1a
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp + 0x8]
    inc ax
    inc ax
    push ax
    lea ax, word [bp - 0x0054]
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
    inc ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xd
    push ax
    mov ax, word [bp + 0x8]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0xe]
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
    mov ax, word [bp + 0xe]
    inc ax
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0058]
    mov dx, word [bp - 0x0056]
    ret
api_idx_0038:
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
    jge short 0xaec
    mov ax, word [bp + 0xc]
    mov word [bp - 0x0022], ax
    mov ax, 0x90af
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
    jge short 0xd2a
    mov ax, word [bp + 0xc]
    mov word [bp - 0x001e], ax
    mov word [bp - 0x0002], 0
    jmp short 0xd71
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
    jl short 0xd34
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
    je short 0xe06
    mov ax, word [bp - 0x0020]
    cmp ax, word [bp - 0x0016]
    jl short 0xdcf
    inc word [bp - 0x0020]
    mov ax, word [bp - 0x0020]
    cmp ax, strict word 0xffff
    je short 0xdee
    cmp ax, word [bp - 0x0016]
    jl short 0xdee
    mov ax, word [bp - 0x0016]
    add ax, word [bp - 0x001e]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp - 0x0020]
    cmp cx, ax
    jge short 0xdf4
    mov ax, word [bp - 0x0016]
    mov word [bp - 0x0020], ax
    mov word [0x5b3e], 1
    mov ax, word [bp - 0x0020]
    sub ax, word [bp - 0x0016]
    add ax, strict word 6
    mov word [bp - 0x0018], ax
    cmp word [0x5b3e], byte 1
    je short 0xe10
    jmp near 0x11d4
    mov ax, word [bp - 0x0018]
    jmp near 0x11c5

    db 0x8d, 0x46, 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0x32, 0xe2, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xf0, 0x83
    db 0xc1, 0x0e, 0x2b, 0xc1, 0x50, 0xe8, 0x84, 0xa9, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xec, 0x8d, 0x46
    db 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0x04, 0xe2, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe4, 0xff
    db 0x76, 0xee, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x0e, 0x2b
    db 0xc1, 0x2b, 0x46, 0xec, 0x50, 0xe8, 0x54, 0xa9, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0x83, 0x7e
    db 0x0c, 0x07, 0x7e, 0x20, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xee, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x83, 0xc1, 0xfa, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7
    db 0xf9, 0x89, 0x46, 0xea, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76, 0xea, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0x5d, 0x00, 0x50, 0xe8, 0xdb, 0xb0, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1
    db 0x00, 0x50, 0xe8, 0xfd, 0xb0, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0x9a, 0xab, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50
    db 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46
    db 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0xac, 0xd9, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe4, 0x00, 0x74
    db 0x03, 0xe9, 0x0a, 0xff, 0xe9, 0x97, 0x02, 0x83, 0x7e, 0xe8, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0x52, 0xaf
    db 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xea, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xea, 0xeb, 0x34, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0x21
    db 0xaf, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0x0c, 0x05, 0xf9, 0xff, 0x3b, 0x46, 0xea, 0x7e, 0x03, 0xff
    db 0x46, 0xea, 0x83, 0x7e, 0x0c, 0x07, 0x7e, 0x2c, 0xff, 0x76, 0xee, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x64, 0x00, 0xf7, 0x6e, 0xee, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x83, 0xc1, 0xf9, 0x99, 0xf7
    db 0xf9, 0xf7, 0x6e, 0xea, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0xee, 0xa7, 0x83, 0xc4
    db 0x06, 0x89, 0x46, 0xf0, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76, 0xea, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0x5d, 0x00, 0x50, 0xe8, 0x9b, 0xaf, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1
    db 0x00, 0x50, 0xe8, 0xbd, 0xaf, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0x5a, 0xaa, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50
    db 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46
    db 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x6c, 0xd8, 0x83, 0xc4, 0x08, 0xe9, 0x60, 0x01, 0x83, 0x7e
    db 0x06, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa
    db 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0xcb, 0xad, 0x83, 0xc4
    db 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa
    db 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0xab, 0xad, 0x83, 0xc4
    db 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe6, 0x00, 0x00, 0xe9, 0x0f, 0x01, 0x83
    db 0x7e, 0x08, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x7a, 0xad, 0x83
    db 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x5a, 0xad, 0x83
    db 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46, 0xe6, 0x00, 0x00, 0xe9, 0xbe, 0x00
    db 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x29, 0xad
    db 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x09, 0xad
    db 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x02, 0x00, 0xc7, 0x46, 0xe6, 0x00, 0x00, 0xeb, 0x6e

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
    jmp short 0x11d4
    db 0x5d, 0x5e, 0x84, 0x5f, 0x84, 0x5f, 0xbb, 0x60, 0x0c, 0x61, 0x5d, 0x61
    cmp ax, strict word 6
    jae short 0x11d2
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6200]
    jmp short 0x1166
    cmp word [bp - 0x001a], byte 0
    je short 0x11dd
    jmp near 0xdb1
    mov ax, 1
    push ax
    push word [bp - 0x0038]
    call 0xc459
    add sp, byte 4
    mov ax, word [bp - 0x0020]
    mov word [0x904e], ax
    mov ax, word [0x9050]
    ret
api_idx_0026:
    mov ax, 0xffda
    call 0xf40b
    mov word [0x904e], 0xffff
    mov word [bp - 0x0002], 0x37
    mov word [bp - 0x0004], 0x8f
    mov word [bp - 0x0006], 0x108
    mov word [bp - 0x0008], 0xc5
    mov ax, 0x90b5
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
    mov ax, 0x20
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
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    inc ax
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
    add ax, strict word 0x16
    push ax
    lea ax, word [bp - 0x0024]
    push ax
    call 0xfa90
    pop cx
    mov cx, ax
    mov ax, 0x11
    sub ax, cx
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
    mov ax, 0
    push ax
    push ax
    mov ax, 1
    push ax
    mov ax, 0x11
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    call 0xbf97
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x25
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xc5
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    mov ax, 0
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
    mov ax, 1
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
    mov ax, 2
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
    mov ax, 3
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
    mov ax, 4
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
    call 0xec17
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 7
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x20
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5f
    push ax
    mov ax, 0xe38
    push ax
    call api_idx_0008
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
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    call 0xbf97
    add sp, byte 0x0e
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xc5
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5d
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
    cmp word [0x5b3e], byte 1
    je short 0x14ed
    jmp near 0x16ca
    jmp near 0x16ad
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
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    call 0xbf97
    add sp, byte 0x0e
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xc5
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x1f
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
    mov ax, 7
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x20
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5f
    push ax
    mov ax, 0xe38
    push ax
    call api_idx_0008
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
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    call 0xbf97
    add sp, byte 0x0e
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xc5
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    call 0xe8da
    add sp, byte 8
    jmp near 0x16ca
    cmp word [bp + 0x6], byte 0
    je short 0x160a
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
    jmp near 0x16ca
    cmp word [bp + 0x8], byte 0
    je short 0x165b
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
    jmp short 0x16ca
    cmp word [bp + 0xa], byte 0
    je short 0x16ab
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
    jmp short 0x16ca
    cmp ax, strict word 0
    jne short 0x16b5
    jmp near 0x14f0
    cmp ax, strict word 1
    jne short 0x16bd
    jmp near 0x15bc
    cmp ax, strict word 2
    jne short 0x16c5
    jmp near 0x160d
    cmp ax, strict word 3
    je short 0x165d
    cmp word [bp - 0x0010], byte 0
    je short 0x16d3
    jmp near 0x14d7
    mov ax, 1
    push ax
    push word [bp - 0x0026]
    call 0xc459
    add sp, byte 4
    mov word [0x904e], 0xffff
    mov ax, word [0x9050]
    ret
api_idx_000c:
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
    jl short 0x16f5
    ret
api_idx_0004:
    mov ax, 0xfffc
    call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [0x953a]
    push word [0x9538]
    call 0xe942
    add sp, byte 8
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov cx, word [bp - 0x0004]
    shl cx, 1
    add ax, cx
    mov bx, ax
    db 0xff, 0xb7, 0x06, 0x00 ; push word ptr [bx + 6]
    call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov cx, word [bp - 0x0004]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x15e]
    push word [bx + 0x15c]
    call 0xe809
    add sp, byte 4
    mov ax, 3
    push ax
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 0x0004]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x5c1c]
    call 0xb2e7
    add sp, byte 6
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 2
    jl short 0x178c
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jge short 0x180c
    jmp near 0x1787
    mov ax, 0
    push ax
    push ax
    push ax
    call api_idx_000c
    add sp, byte 6
    ret
api_idx_0002_3:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    cmp word [bp + 0x4], byte 0
    jl short 0x1832
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x4]
    jne short 0x183d
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
    jne short 0x1868
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x7cf2], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x1824
    ret
api_idx_0002_4:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x4a, 0x00 ; mov ax, word ptr [bx + 0x4a]
    cmp ax, word [bp + 0x4]
    jge short 0x1896
    inc word [bp - 0x0002]
    jmp short 0x187f
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x4a, 0x00 ; push word ptr [bx + 0x4a]
    db 0xff, 0xb7, 0x48, 0x00 ; push word ptr [bx + 0x48]
    mov ax, word [bp + 0x4]
    add ax, word [bp + 0x6]
    push ax
    call 0xb7c2
    add sp, byte 6
    ret
api_idx_0010:
    mov ax, 0xfff0
    call 0xf40b
    lea ax, word [bp - 0x000c]
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    mov ax, 0
    push ax
    mov ax, 5
    push ax
    call 0xe7af
    add sp, byte 8
    mov word [bp - 0x0006], dx
    mov word [bp - 0x0008], ax
    mov ax, word [bp - 0x000a]
    mov word [bp - 0x000e], ax
    mov word [bp - 0x0004], 0
    jmp near 0x199d
    mov word [bp - 0x0002], 0
    jmp near 0x198f
    les bx, word [bp - 0x0008]
    mov si, word [bp - 0x000e]
    mov al, byte [es:bx + si]
    sub ah, ah
    mov word [bp - 0x0010], ax
    cmp ax, 0xff
    jne short 0x1903
    jmp near 0x1989
    mov ax, 0xffff
    push ax
    push word [bp - 0x0010]
    call api_idx_0002_4
    add sp, byte 4
    push ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    add ax, word [bp + 0x8]
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    add ax, word [bp + 0x6]
    push ax
    call 0xe8f4
    add sp, byte 6
    push word [bp - 0x0010]
    mov ax, word [bp - 0x0004]
    shl ax, 1
    add ax, word [bp + 0x8]
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    add ax, word [bp + 0x6]
    inc ax
    push ax
    call 0xe8f4
    add sp, byte 6
    push word [bp - 0x0010]
    mov ax, word [bp - 0x0004]
    shl ax, 1
    add ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    add ax, word [bp + 0x6]
    push ax
    call 0xe8f4
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    call api_idx_0002_4
    add sp, byte 4
    push ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    add ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    add ax, word [bp + 0x6]
    inc ax
    push ax
    call 0xe8f4
    add sp, byte 6
    inc word [bp - 0x000e]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x000a]
    jge short 0x199a
    jmp near 0x18ed
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x000c]
    dec ax
    dec ax
    cmp ax, word [bp - 0x0004]
    jle short 0x19aa
    jmp near 0x18e5
    ret
api_idx_0002_5:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [0x953e]
    push word [0x953c]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    call 0xe823
    add sp, byte 4
    mov word [bp - 0x0002], 0
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x23
    push ax
    mov ax, 0x73
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, 0x9544
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d64]
    sub ah, ah
    push ax
    call 0xb2e7
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short 0x19d7
    cmp word [0x9594], byte 0
    jl short 0x1a7b
    mov ax, 0
    push ax
    mov ax, 0x16
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0x59
    push ax
    mov ax, 0x67
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x9596
    push ax
    call 0xe84e
    add sp, byte 4
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
    push word [0x9594]
    call 0xb2e7
    add sp, byte 6
    cmp word [bp + 0x6], byte 0
    je short 0x1a97
    mov ax, 0x60
    push ax
    mov ax, 0xa8
    push ax
    mov ax, 0x23
    push ax
    mov ax, 0x66
    push ax
    call 0xe8da
    add sp, byte 8
    ret
api_idx_000a:
    mov ax, 0xfff6
    call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [0x9542]
    push word [0x9540]
    call 0xe942
    add sp, byte 8
    cmp word [0x95aa], byte 0
    jle short 0x1af3
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
    mov ax, 0x41
    sub ax, word [0x95aa]
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    mov ax, 0x2d
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0xf
    push ax
    call 0xefd1
    add sp, byte 0x16
    mov ax, 5
    cmp word [0x95ac], byte 0
    jne short 0x1b02
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    mov byte [bp - 0x000a], al
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
    mov ax, 0x14
    sub ax, word [0x95aa]
    add ax, strict word 0x19
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0xf
    push ax
    call 0xefd1
    add sp, byte 0x16
    ret
api_idx_0054:
    mov ax, 0xffac
    call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [0x9526]
    push word [0x9524]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    push word [0x952a]
    push word [0x9528]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0x4c
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x28
    sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0x5a
    push ax
    call 0xe809
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2c]
    sub ah, ah
    add ax, 0x8c
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    mov al, byte [bp - 0x0054]
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2d
    push ax
    call 0xe830
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2b]
    sub ah, ah
    add ax, strict word 0x64
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x84
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0xc
    push ax
    mov ax, 0x5a
    push ax
    call 0xe809
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    add ax, strict word 0x78
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x84
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0x12
    push ax
    mov ax, 0x5a
    push ax
    call 0xe809
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0xc8
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c18]
    call 0xb2e7
    add sp, byte 6
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5bfc]
    mov dx, word [bx + 0x5bfe]
    mov cx, 0x16d
    mov bx, 0
    call 0xf99f
    add ax, strict word 0xffee
    adc dx, byte 0xff
    mov cx, 4
    mov bx, 0
    call 0xf99f
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c1a]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    add ax, cx
    adc dx, bx
    mov cx, ax
    mov bx, dx
    add ax, strict word 0xffff
    adc dx, byte 0xff
    mov cx, ax
    mov bx, dx
    mov ax, 0x14
    mov dx, 0
    sub ax, cx
    sbb dx, bx
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d67]
    sub ah, ah
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    push ax
    push dx
    mul bx
    mov bx, ax
    pop ax
    mul cx
    add bx, ax
    pop ax
    mul cx
    add dx, bx
    mov cx, 0x12
    mov bx, 0
    call 0xf99f
    mov word [0x95aa], ax
    mov ax, 0x14
    push ax
    mov ax, 0
    push ax
    push word [0x95aa]
    call 0xb7c2
    add sp, byte 6
    mov word [0x95aa], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jae short 0x1d83
    mov ax, 0
    jmp short 0x1d86
    mov ax, 1
    mov word [0x95ac], ax
    mov word [0x95ae], 0
    push word [0x95ae]
    call api_idx_000a
    pop cx
    mov ax, 0
    push ax
    mov ax, 0xfd
    push ax
    call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0xc9
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0xe4
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call 0xe84e
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    mov cx, 0xa
    imul cx
    push ax
    mov al, byte [bx + 0x5e2e]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    add ax, 0x320
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 6
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call 0xfa90
    pop cx
    mov cx, 0x34
    sub cx, ax
    mov ax, 6
    imul cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x47
    push ax
    call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0xca
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0xc
    push ax
    mov ax, 0xe4
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c02]
    push word [bx + 0x5c00]
    call 0xb293
    add sp, byte 8
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0xcb
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x12
    push ax
    mov ax, 0xe4
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c06]
    push word [bx + 0x5c04]
    call 0xb293
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x1d
    push ax
    call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0xd4
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x5d
    push ax
    mov ax, 6
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c0c]
    call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2f
    push ax
    call 0xe830
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c0e]
    call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1d
    push ax
    call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0xd5
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x63
    push ax
    mov ax, 6
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c10]
    mov cx, 0x64
    imul cx
    mov cx, word [bx + 0x5c12]
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    cmp ax, strict word 1
    jge short 0x200b
    cmp word [bx + 0x5c10], byte 0
    jle short 0x200b
    mov ax, 1
    jmp short 0x200e
    mov ax, word [bp - 0x0004]
    mov word [bp - 0x0004], ax
    lea ax, word [bp - 0x0054]
    push ax
    push word [bp - 0x0004]
    call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x90bb
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1d
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x28
    push ax
    call 0xe830
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c12]
    call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x29
    push ax
    call 0xe830
    add sp, byte 4
    push word [bp + 0x4]
    call api_idx_0004
    pop cx
    ret
api_idx_0004_2:
    mov ax, 0xfffc
    call 0xf40b
    mov ax, 0xc2
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0
    push ax
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
    mov ax, 0xbc
    push ax
    push word [bp + 0x4]
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
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0xe84e
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0
    push ax
    call 0xe8da
    add sp, byte 8
    cmp word [bp + 0x6], byte 0
    jle short 0x2115
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    push word [0x905a]
    call 0xb75e
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    push word [bp - 0x0004]
    call 0xe94f
    add sp, byte 6
    mov ax, 0xc2
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0
    push ax
    call 0xe8da
    add sp, byte 8
    ret
api_idx_0004_3:
    mov ax, 0xfffc
    call 0xf40b
    mov ax, word [0x0038]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short 0x2174
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    add ax, si
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short 0x2179
    mov ax, 1
    jmp short 0x217c
    mov ax, 0
    add si, word [bp - 0x0004]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6a50], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jl short 0x2155
    mov ax, word [0x003c]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    mov bx, word [bp + 0x8]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short 0x21be
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    add ax, si
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short 0x21c3
    mov ax, 1
    jmp short 0x21c6
    mov ax, 0
    add si, word [bp - 0x0004]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6a50], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short 0x219f
    mov ax, word [0x0040]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    mov bx, word [bp + 0xa]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short 0x2208
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    add ax, si
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short 0x220d
    mov ax, 1
    jmp short 0x2210
    mov ax, 0
    add si, word [bp - 0x0004]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6a50], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x21e9
    mov ax, word [0x0044]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    mov bx, word [bp + 0xc]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short 0x2252
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    add ax, si
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short 0x2257
    mov ax, 1
    jmp short 0x225a
    mov ax, 0
    add si, word [bp - 0x0004]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6a50], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jl short 0x2233
    ret
api_idx_0004_4:
    mov ax, 0xfffc
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp near 0x242a
    mov ax, 0x90d9
    push ax
    mov ax, 0x90d2
    push ax
    mov ax, 0x90c9
    push ax
    mov ax, 0x90be
    push ax
    push word [bp + 0x4]
    call api_idx_0004_3
    add sp, byte 0x0a
    jmp near 0x2437
    mov ax, 0x90ff
    push ax
    mov ax, 0x90f8
    push ax
    mov ax, 0x90ef
    push ax
    mov ax, 0x90e4
    push ax
    push word [bp + 0x4]
    call api_idx_0004_3
    add sp, byte 0x0a
    jmp near 0x2437
    mov ax, 0x9125
    push ax
    mov ax, 0x911e
    push ax
    mov ax, 0x9115
    push ax
    mov ax, 0x910a
    push ax
    push word [bp + 0x4]
    call api_idx_0004_3
    add sp, byte 0x0a
    jmp near 0x2437
    mov ax, 0x914b
    push ax
    mov ax, 0x9144
    push ax
    mov ax, 0x913b
    push ax
    mov ax, 0x9130
    push ax
    push word [bp + 0x4]
    call api_idx_0004_3
    add sp, byte 0x0a
    jmp near 0x2437
    mov ax, 0x9171
    push ax
    mov ax, 0x916a
    push ax
    mov ax, 0x9161
    push ax
    mov ax, 0x9156
    push ax
    push word [bp + 0x4]
    call api_idx_0004_3
    add sp, byte 0x0a
    jmp near 0x2437
    mov ax, 0x9197
    push ax
    mov ax, 0x9190
    push ax
    mov ax, 0x9187
    push ax
    mov ax, 0x917c
    push ax
    push word [bp + 0x4]
    call api_idx_0004_3
    add sp, byte 0x0a
    jmp near 0x2437
    mov ax, 0x91bd
    push ax
    mov ax, 0x91b6
    push ax
    mov ax, 0x91ad
    push ax
    mov ax, 0x91a2
    push ax
    push word [bp + 0x4]
    call api_idx_0004_3
    add sp, byte 0x0a
    jmp near 0x2437
    mov ax, 0x91e3
    push ax
    mov ax, 0x91dc
    push ax
    mov ax, 0x91d3
    push ax
    mov ax, 0x91c8
    push ax
    push word [bp + 0x4]
    call api_idx_0004_3
    add sp, byte 0x0a
    jmp near 0x2437
    mov ax, 0x9209
    push ax
    mov ax, 0x9202
    push ax
    mov ax, 0x91f9
    push ax
    mov ax, 0x91ee
    push ax
    push word [bp + 0x4]
    call api_idx_0004_3
    add sp, byte 0x0a
    jmp near 0x2437
    mov ax, 0x922f
    push ax
    mov ax, 0x9228
    push ax
    mov ax, 0x921f
    push ax
    mov ax, 0x9214
    push ax
    push word [bp + 0x4]
    call api_idx_0004_3
    add sp, byte 0x0a
    jmp near 0x2437
    mov ax, 0x9255
    push ax
    mov ax, 0x924e
    push ax
    mov ax, 0x9245
    push ax
    mov ax, 0x923a
    push ax
    push word [bp + 0x4]
    call api_idx_0004_3
    add sp, byte 0x0a
    jmp short 0x2437
    mov ax, 0x927b
    push ax
    mov ax, 0x9274
    push ax
    mov ax, 0x926b
    push ax
    mov ax, 0x9260
    push ax
    push word [bp + 0x4]
    call api_idx_0004_3
    add sp, byte 0x0a
    jmp short 0x2437
    mov ax, 0x92a1
    push ax
    mov ax, 0x929a
    push ax
    mov ax, 0x9291
    push ax
    mov ax, 0x9286
    push ax
    push word [bp + 0x4]
    call api_idx_0004_3
    add sp, byte 0x0a
    jmp short 0x2437
    mov ax, 0x92c7
    push ax
    mov ax, 0x92c0
    push ax
    mov ax, 0x92b7
    push ax
    mov ax, 0x92ac
    push ax
    push word [bp + 0x4]
    call api_idx_0004_3
    add sp, byte 0x0a
    jmp short 0x2437
    db 0xd1, 0x72, 0xed ; sal word ptr [bp + si - 0x13], 1
    jb short 0x241c
    jae short 0x243a
    jae short 0x2458
    jae short 0x2476
    jae short 0x2494
    jae short 0x23b2
    jae short 0x23d0
    jae short 0x23ee
    jae short 0x240c
    jae short 0x2429
    je short 0x2446
    je short 0x2463
    je short 0x2468
    push cs
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x7455]
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d65], 0xd
    jbe short 0x2453
    cmp byte [bx + 0x5d6a], 0xd
    jbe short 0x2453
    mov word [0x95e8], 1
    mov word [bp - 0x0004], 0
    mov ax, word [bp + 0x6]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x38, 0x00 ; mov ax, word ptr [bx + 0x38]
    mov word [bp - 0x0002], ax
    jmp short 0x24a4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6a50], byte 1
    jne short 0x24a1
    mov ax, 0x14
    imul word [bp - 0x0004]
    add ax, 0xe38
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0x157c
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov si, cx
    mov bx, word [bp + 0x8]
    mov word [bx + si], ax
    inc word [bp - 0x0004]
    inc word [bp - 0x0002]
    mov ax, word [bp + 0x6]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x3a, 0x00 ; mov ax, word ptr [bx + 0x3a]
    cmp ax, word [bp - 0x0002]
    jge short 0x246a
    mov ax, 0x95f4
    push ax
    mov ax, 0x159e
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    ret
api_idx_0002_6:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [0x952e]
    push word [0x952c]
    call 0xe942
    add sp, byte 8
    mov word [bp - 0x0002], 0
    jmp near 0x2576
    mov ax, 0
    push ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x30, 0x00 ; push word ptr [bx + 0x30]
    call 0xe823
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x72
    push ax
    mov ax, 6
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0xe38
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x72
    push ax
    mov ax, 0x85
    push ax
    call 0xe809
    add sp, byte 4
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
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov si, cx
    mov bx, word [bp + 0xa]
    mov cx, word [bx + si]
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5d6c]
    sub ah, ah
    push ax
    call 0xb2e7
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x8]
    jge short 0x2581
    jmp near 0x24e9
    ret
api_idx_002e:
    mov ax, 0xffd2
    call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0x16
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0xae
    push ax
    mov ax, 6
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x95f4
    push ax
    call 0xe84e
    add sp, byte 4
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0002], 0
    mov ax, 0xa
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x002e], 0
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x4]
    je short 0x2610
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x69f8], byte 0
    jg short 0x25ea
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 2
    je short 0x2610
    cmp word [bp - 0x0006], byte 0
    je short 0x25f3
    inc word [bp - 0x0004]
    mov ax, 0xa
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x002e]
    add ax, cx
    push ax
    push word [bx - 0x69f8]
    call 0xb27d
    add sp, byte 4
    mov word [bp - 0x0006], 1
    jmp short 0x263a
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x4]
    jne short 0x263a
    cmp word [bp - 0x0006], byte 0
    je short 0x2621
    inc word [bp - 0x0004]
    mov cx, 0xa
    imul cx
    lea cx, word [bp - 0x002e]
    add ax, cx
    push ax
    push word [bp + 0x6]
    call 0xb27d
    add sp, byte 4
    mov word [bp - 0x0006], 1
    mov ax, 0xa
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x002e]
    add ax, cx
    push ax
    call 0xfa90
    pop cx
    add word [bp - 0x0004], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jge short 0x265b
    jmp near 0x25c1
    mov ax, 0xae
    push ax
    mov ax, 0x1a
    sub ax, word [bp - 0x0004]
    mov cx, 6
    imul cx
    add ax, strict word 0xfffb
    push ax
    call 0xe809
    add sp, byte 4
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0002], 0
    mov ax, 0xa
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x002e]
    add ax, cx
    push ax
    call 0xfa90
    pop cx
    cmp ax, strict word 0
    jle short 0x26e5
    cmp word [bp - 0x0006], byte 0
    je short 0x26b5
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2f
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x30, 0x00 ; push word ptr [bx + 0x30]
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x002e]
    add ax, cx
    push ax
    call 0xe84e
    add sp, byte 4
    mov word [bp - 0x0006], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short 0x267e
    ret
api_idx_0032:
    mov ax, 0xffce
    call 0xf40b
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x69f8]
    mov word [bp - 0x000c], ax
    mov word [bp - 0x000a], 0
    mov word [bp - 0x0028], 0xffff
    mov ax, 0xc6
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0xbb
    push ax
    mov ax, 3
    push ax
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x002c], dx
    mov word [bp - 0x002e], ax
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0002_6
    add sp, byte 8
    push word [bp - 0x000c]
    push word [bp + 0x6]
    call api_idx_002e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x000a]
    add ax, strict word 0x72
    push ax
    mov ax, 0x7f
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 5
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x000a]
    add ax, strict word 0x72
    push ax
    mov ax, 0x97
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 6
    push ax
    call 0xe830
    add sp, byte 4
    mov word [bp - 0x0002], 0
    jmp near 0x284a
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x000a]
    jne short 0x2807
    mov ax, 0
    push ax
    mov ax, 0x2d
    push ax
    mov ax, 6
    imul word [bp - 0x000a]
    add ax, strict word 0x76
    push ax
    mov ax, 0x84
    push ax
    mov ax, 6
    imul word [bp - 0x000a]
    add ax, strict word 0x71
    push ax
    mov ax, 0x7f
    push ax
    push word [bp - 0x0002]
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0x3d
    push ax
    mov ax, 0x2b
    push ax
    mov ax, 6
    imul word [bp - 0x000a]
    add ax, strict word 0x76
    push ax
    mov ax, 0x9c
    push ax
    mov ax, 6
    imul word [bp - 0x000a]
    add ax, strict word 0x71
    push ax
    mov ax, 0x97
    push ax
    push word [bp + 0x8]
    call 0xbaa6
    add sp, byte 0x0e
    jmp short 0x2847
    mov ax, 0
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    cwd
    idiv word [bp + 0x8]
    mov ax, dx
    cmp ax, word [bp - 0x0002]
    jne short 0x281e
    mov al, 0x20
    jmp short 0x2820
    mov al, 0
    cbw
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x76
    push ax
    mov ax, 0x9c
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x71
    push ax
    mov ax, 6
    push ax
    push word [bp - 0x0002]
    call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x8]
    jge short 0x2855
    jmp near 0x27a3
    mov ax, 0
    push ax
    push word [bp - 0x002c]
    push word [bp - 0x002e]
    call 0xe94f
    add sp, byte 6
    mov ax, word [bp - 0x000c]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x6]
    je short 0x2883
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x69f8]
    add word [bp - 0x0004], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short 0x2870
    mov ax, 1
    cmp word [bp - 0x0004], byte 0
    jle short 0x289a
    mov ax, 0
    mov bx, word [bp + 0xc]
    mov word [bx + 0x8], ax
    mov word [bp - 0x000e], 0
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0xc]
    cmp word [bx + si], byte 0
    jne short 0x28bc
    jmp near 0x29a5
    mov ax, 0x3a
    imul word [bp - 0x000e]
    add ax, strict word 4
    mov word [bp - 0x0006], ax
    mov ax, 0
    push ax
    mov ax, 0xc4
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x36
    push ax
    mov ax, 0xbc
    push ax
    push word [bp - 0x0006]
    call 0xbce3
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    mov ax, 1
    mov cx, word [bp - 0x0002]
    cmp cx, word [bp + 0x6]
    jne short 0x28f6
    mov ax, 0x1a
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0xbe
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0x9610
    push ax
    call 0xfa90
    pop cx
    mov cx, ax
    mov ax, 9
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x0006]
    inc ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0x9610
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    mov ax, 0xc4
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x36
    push ax
    mov ax, 0xbc
    push ax
    push word [bp - 0x0006]
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x000e]
    inc ax
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x000e]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x0026], ax
    cmp ax, word [bp + 0x6]
    jne short 0x29a2
    mov ax, word [bp - 0x000e]
    mov word [bp - 0x0032], ax
    cmp word [0x0e32], byte 0
    jne short 0x29a2
    mov ax, 0x16
    push ax
    mov ax, 0xc4
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x36
    push ax
    mov ax, 0xbc
    push ax
    push word [bp - 0x0006]
    call loc_03ca
    add sp, byte 0x0a
    inc word [bp - 0x000e]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jg short 0x29b3
    jmp near 0x28aa
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x000e]
    inc ax
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0xc6
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    call 0xe8da
    add sp, byte 8
    cmp word [0x0e32], byte 0
    je short 0x2a00
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x0008], ax
    cmp word [0x5b3e], byte 0
    je short 0x29ea
    jmp near 0x2af4
    mov word [bp - 0x0008], 0xffff
    mov ax, word [bp - 0x0032]
    mov word [bp - 0x0002], ax
    mov ax, 0x3a
    imul word [bp - 0x0002]
    add ax, strict word 4
    mov word [bp - 0x0006], ax
    mov ax, 0x16
    push ax
    mov ax, 0xc4
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x36
    push ax
    mov ax, 0xbc
    push ax
    push word [bp - 0x0006]
    call loc_03ca
    add sp, byte 0x0a
    mov ax, 0xc7
    push ax
    mov ax, 0x13d
    push ax
    mov ax, 0xbb
    push ax
    mov ax, 3
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0xc4
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x36
    push ax
    mov ax, 0xbc
    push ax
    push word [bp - 0x0006]
    call loc_03ca
    add sp, byte 0x0a
    mov ax, 1
    push ax
    call 0xea50
    pop cx
    test ax, ax
    jne short 0x2a73
    jmp short 0x2a65
    mov ax, 1
    push ax
    call 0xeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x0030], ax
    jmp short 0x2ac8
    mov ax, word [bp - 0x0002]
    add ax, word [bp - 0x000e]
    dec ax
    cwd
    idiv word [bp - 0x000e]
    mov word [bp - 0x0002], dx
    jmp short 0x2aeb
    mov ax, word [bp - 0x0002]
    inc ax
    cwd
    idiv word [bp - 0x000e]
    mov word [bp - 0x0002], dx
    jmp short 0x2aeb
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x0002]
    inc ax
    mov word [bp - 0x0008], ax
    jmp short 0x2aeb
    mov ax, word [bp - 0x000a]
    mov word [bp - 0x0008], ax
    jmp short 0x2aeb
    mov ax, word [bp + 0x8]
    mov word [bp - 0x0008], ax
    jmp short 0x2aeb
    mov ax, word [bp - 0x000a]
    inc ax
    cwd
    idiv word [bp + 0x8]
    mov word [bp - 0x0008], dx
    jmp short 0x2aeb
    cmp ax, strict word 8
    je short 0x2a82
    cmp ax, strict word 0xa
    je short 0x2a92
    cmp ax, strict word 0xd
    je short 0x2a9f
    cmp ax, strict word 0x20
    je short 0x2abb
    cmp ax, strict word 0x2b
    je short 0x2ab3
    cmp ax, strict word 0x2d
    je short 0x2aab
    cmp ax, strict word 0x3d
    je short 0x2ab3
    cmp word [bp - 0x0008], byte 0xff
    jne short 0x2af4
    jmp near 0x2a0b
    mov ax, word [bp - 0x0008]
    cmp ax, word [bp + 0x8]
    jge short 0x2b07
    cmp ax, word [bp - 0x000a]
    je short 0x2b07
    mov word [bp - 0x000a], ax
    jmp near 0x2bad
    mov ax, word [bp - 0x0008]
    cmp ax, word [bp - 0x000a]
    jne short 0x2b59
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x000a]
    shl cx, 1
    mov si, cx
    mov bx, word [bp + 0xa]
    mov cx, word [bx + si]
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5d6c]
    sub ah, ah
    shl cx, 1
    mov bx, cx
    mov cx, word [bx - 0x6928]
    cmp ax, cx
    jle short 0x2b4f
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, word [bp + 0xa]
    mov cx, word [bx + si]
    add ax, cx
    mov bx, ax
    dec byte [bx + 0x5d6c]
    inc word [bp - 0x000c]
    jmp short 0x2b57
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp short 0x2bad
    mov ax, word [bp - 0x0008]
    cmp ax, word [bp + 0x8]
    jne short 0x2b97
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x000a]
    shl cx, 1
    mov si, cx
    mov bx, word [bp + 0xa]
    mov cx, word [bx + si]
    add ax, cx
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0x64
    jae short 0x2b8d
    cmp word [bp - 0x000c], byte 0
    jle short 0x2b8d
    inc byte [bx + 0x5d6c]
    dec word [bp - 0x000c]
    jmp short 0x2b95
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp short 0x2bad
    mov ax, word [bp - 0x0008]
    sub ax, word [bp + 0x8]
    dec ax
    mov word [bp - 0x0028], ax
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0026]
    mov word [bp - 0x002a], ax
    cmp word [bp - 0x0028], byte 0xff
    jne short 0x2bb6
    jmp near 0x272b
    mov ax, word [bp - 0x000c]
    mov cx, word [bp + 0x6]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x69f8], ax
    mov ax, 1
    push ax
    push ax
    mov ax, 9
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0x3a
    imul word [bp - 0x0028]
    add ax, strict word 4
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 9
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0x3a
    imul word [bp - 0x0028]
    add ax, strict word 4
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 1
    push ax
    push word [bp - 0x002c]
    push word [bp - 0x002e]
    call 0xe94f
    add sp, byte 6
    mov ax, word [bp - 0x002a]
    ret
api_idx_0088:
    mov ax, 0xff78
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d6c]
    sub ah, ah
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6928], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x22
    jl short 0x2c20
    mov word [bp - 0x0002], 0
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0x9610
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0x258
    push ax
    call 0xb53b
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jle short 0x2c4c
    lea ax, word [bp - 0x0088]
    push ax
    push word [bp + 0x6]
    call 0xb53b
    add sp, byte 4
    mov ax, 1
    push ax
    lea ax, word [bp - 0x0088]
    push ax
    call api_idx_0004_2
    add sp, byte 4
    mov word [bp - 0x0006], 0
    lea ax, word [bp - 0x0020]
    push ax
    push word [bp - 0x0006]
    push word [bp + 0x4]
    call api_idx_0004_4
    add sp, byte 6
    mov word [bp - 0x0008], ax
    lea ax, word [bp - 0x0020]
    push ax
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp + 0x4]
    call api_idx_0002_6
    add sp, byte 8
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0038], 0
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x38, 0x00 ; mov ax, word ptr [bx + 0x38]
    mov word [bp - 0x0002], ax
    jmp short 0x2d0c
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6a50], byte 0
    jne short 0x2cfb
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short 0x2d09
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0038], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x3a, 0x00 ; mov ax, word ptr [bx + 0x3a]
    cmp ax, word [bp - 0x0002]
    jge short 0x2cdb
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 4
    jl short 0x2cbb
    lea ax, word [bp - 0x0038]
    push ax
    lea ax, word [bp - 0x0020]
    push ax
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp + 0x4]
    call api_idx_0032
    add sp, byte 0x0a
    mov word [bp - 0x0006], ax
    cmp word [bp - 0x0006], byte 4
    je short 0x2d4c
    jmp near 0x2c90
    mov ax, 0xc6
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    call 0xe8da
    add sp, byte 8
    ret
api_idx_0004_5:
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
    jne short 0x2dc5
    push word [bp - 0x0002]
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x2dc5
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
    mov word [bx - 0x68e4], ax
    inc word [bp - 0x0004]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x66
    jl short 0x2d73
    mov ax, word [bp - 0x0004]
    ret
api_idx_000a_2:
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
math_loc_2e12:
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
    je short 0x2e3c
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
    jne short 0x2e9d
    cmp word [bp + 0xa], byte 0
    jne short 0x2e9d
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
loc_2e9e:
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
    jle short 0x2f25
    mov ax, word [bp + 0xa]
    cmp ax, word [bp + 0xc]
    jg short 0x2f25
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
    jmp short 0x2f3e
    mov ax, 0
    push ax
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x92d2
    push ax
    call 0xe84e
    add sp, byte 4
    ret
api_idx_000c_2:
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
    jge short 0x2fd7
    jmp near 0x2f4a
    ret
loc_2fd8:
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
    mov ax, word [0x976c]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [0x9092]
    mov dx, word [0x9094]
    cmp bx, dx
    jg short 0x301f
    jne short 0x3021
    cmp cx, ax
    jbe short 0x3021
    jmp short 0x3068
    mov ax, word [0x908e]
    mov dx, word [0x9090]
    mov word [0x908c], dx
    mov word [0x908a], ax
    call api_idx_000a_2
    push word [bp + 0x4]
    call api_idx_000c_2
    pop cx
    push word [bp + 0x6]
    call api_idx_0002_3
    pop cx
    mov ax, 1
    push ax
    mov ax, 0x73
    push ax
    mov ax, 0x32
    push ax
    call api_idx_000c
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
api_idx_0050:
    mov ax, 0xffb0
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x7cf2]
    add bx, bp
    mov word [bx - 0x0050], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x7cf2], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x3074
    mov word [0x904e], 0xffff
    mov word [bp - 0x0004], 0x32
    mov word [bp - 0x0006], 0x73
    mov word [bp - 0x0008], 0x10d
    mov word [bp - 0x000a], 0xc5
    mov word [bp - 0x000c], 0x95
    mov word [bp - 0x0014], 0x16
    mov ax, 0x92d6
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
    call api_idx_000a_2
    push word [bp + 0x4]
    call api_idx_000c_2
    pop cx
    mov ax, 1
    push ax
    mov ax, 0x73
    push ax
    mov ax, 0x32
    push ax
    call api_idx_000c
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
    jne short 0x31d4
    mov ax, 1
    push ax
    push cx
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    call math_loc_2e12
    add sp, byte 8
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short 0x31c6
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
    call loc_2e9e
    add sp, byte 0x0a
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call api_idx_0004_5
    add sp, byte 4
    mov word [bp - 0x0044], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short 0x3231
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
    jl short 0x3373
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
    jge short 0x3497
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
    jl short 0x349f
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
    mov word [0x976c], 7
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    mov word [bp - 0x001c], 1
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call loc_2fd8
    add sp, byte 4
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x001a], ax
    cmp word [0x59fc], byte 0
    je short 0x3592
    mov ax, word [bp - 0x0022]
    cmp ax, word [bp - 0x0018]
    jl short 0x355b
    inc word [bp - 0x0022]
    mov ax, word [bp - 0x0022]
    cmp ax, strict word 0xffff
    je short 0x357a
    cmp ax, word [bp - 0x0018]
    jl short 0x357a
    mov ax, word [bp - 0x0018]
    add ax, word [bp - 0x0020]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp - 0x0022]
    cmp cx, ax
    jge short 0x3580
    mov ax, word [bp - 0x0018]
    mov word [bp - 0x0022], ax
    mov word [0x5b3e], 1
    mov ax, word [bp - 0x0022]
    sub ax, word [bp - 0x0018]
    add ax, strict word 0x12
    mov word [bp - 0x001a], ax
    cmp word [0x5b3e], byte 1
    je short 0x359c
    jmp near 0x3cdc
    mov ax, word [bp - 0x001a]
    jmp near 0x3ccc

    db 0x8d, 0x46, 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0xa6, 0xba, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xee, 0x83
    db 0xc1, 0x2a, 0x2b, 0xc1, 0x50, 0xe8, 0xf8, 0x81, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xea, 0x8d, 0x46
    db 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x78, 0xba, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe2, 0xff
    db 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x2a, 0x2b
    db 0xc1, 0x2b, 0x46, 0xea, 0x50, 0xe8, 0xc8, 0x81, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xee, 0x83, 0x7e
    db 0xbc, 0x07, 0x7e, 0x20, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xec, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xfa, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7
    db 0xf9, 0x89, 0x46, 0xe8, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x4f, 0x89, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x71, 0x89, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0x0e, 0x84, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x20, 0xb2, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe2, 0x00, 0x74
    db 0x03, 0xe9, 0x0a, 0xff, 0xe9, 0x13, 0x06, 0x83, 0x7e, 0xe6, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x28, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0xc6, 0x87
    db 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xe8, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xe8, 0xeb, 0x34, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x46, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0x95
    db 0x87, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xbc, 0x05, 0xf9, 0xff, 0x3b, 0x46, 0xe8, 0x7e, 0x03, 0xff
    db 0x46, 0xe8, 0x83, 0x7e, 0xbc, 0x07, 0x7e, 0x2c, 0xff, 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x64, 0x00, 0xf7, 0x6e, 0xec, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xf9, 0x99, 0xf7
    db 0xf9, 0xf7, 0x6e, 0xe8, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0x62, 0x80, 0x83, 0xc4
    db 0x06, 0x89, 0x46, 0xee, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x0f, 0x88, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x31, 0x88, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xce, 0x82, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xe0, 0xb0, 0x83, 0xc4, 0x08, 0xe9, 0xdc, 0x04, 0x83, 0x7e
    db 0x08, 0x00, 0x75, 0x03, 0xe9, 0xa1, 0x00, 0x83, 0x7e, 0xc4, 0x00, 0x7d, 0x03, 0xe9, 0x8a, 0x00
    db 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x3c, 0x8b, 0x46, 0xc2, 0x3b, 0x46, 0xc0, 0x7e, 0x03, 0xe9, 0x79
    db 0x00, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xc4, 0x8b, 0xd8, 0x8a, 0x87, 0x22, 0x06, 0x2a, 0xe4, 0x8b
    db 0x4e, 0xc2, 0x41, 0xf7, 0xe9, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8b, 0x56
    db 0xbe, 0xd1, 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x8b, 0x8f, 0x1c, 0x5c, 0x58, 0x3b, 0xc1
    db 0x7f, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xf1, 0x85, 0x83, 0xc4, 0x0a, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xd1, 0x85, 0x83, 0xc4, 0x0a, 0xc7
    db 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x08
    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x37, 0x7f, 0x59, 0xe9, 0x2f, 0x04, 0xb8, 0x01, 0x00, 0x50, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x98, 0x85, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x78, 0x85, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46
    db 0xe4, 0x00, 0x00, 0xe9, 0xe4, 0x03

    cmp word [bp - 0x001a], byte 5
    jge short 0x3901
    jmp near 0x3a57
    cmp word [bp - 0x001a], byte 0x0b
    jle short 0x390a
    jmp near 0x3a57
    mov ax, 0
    push ax
    push word [bp - 0x003e]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    call math_loc_2e12
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
    call math_loc_2e12
    add sp, byte 8
    cmp word [bp - 0x003c], byte 0
    jge short 0x3952
    jmp near 0x39f4
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
    jne short 0x39a6
    mov ax, 0x3e7
    jmp short 0x39c5
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short 0x39c2
    jmp short 0x39c5
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
    call loc_2e9e
    add sp, byte 0x0a
    jmp short 0x3a10
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
    call loc_2e9e
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
    jmp near 0x3cc0
    cmp word [bp - 0x001a], byte 0x0c
    jge short 0x3a60
    jmp near 0x3b89
    cmp word [bp - 0x001a], byte 0x11
    jle short 0x3a69
    jmp near 0x3b89
    mov ax, word [bp - 0x001a]
    add ax, strict word 0xfff4
    mov word [bp - 0x0042], ax
    mov word [bp - 0x003c], 0xffff
    push ax
    push word [bp + 0x4]
    call api_idx_0004_5
    add sp, byte 4
    mov word [bp - 0x0044], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short 0x3a90
    mov ax, word [bp - 0x0044]
    mov word [bp - 0x0024], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short 0x3a9f
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
    call loc_2e9e
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
    jmp near 0x3cc0
    cmp word [bp - 0x001a], byte 0x12
    jge short 0x3b92
    jmp near 0x3cc0
    mov ax, word [bp - 0x0020]
    add ax, strict word 0x12
    cmp ax, word [bp - 0x001a]
    jg short 0x3ba0
    jmp near 0x3cc0
    mov ax, word [bp - 0x0018]
    add ax, word [bp - 0x001a]
    add ax, strict word 0xffee
    mov word [bp - 0x0022], ax
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x68e4]
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
    jne short 0x3c30
    mov ax, 0x3e7
    jmp short 0x3c4f
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short 0x3c4c
    jmp short 0x3c4f
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
    call loc_2e9e
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
    jmp short 0x3cdc
    jmp near 0x4d4a
    xchg word [bx + si], dx
    xchg word [bx - 0x0078], ax
    hlt
    db 0x88
    cmp ax, strict word 5
    jae short 0x3cd9
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x72f7]
    jmp near 0x38f8
    cmp word [bp - 0x001c], byte 0
    je short 0x3ce5
    jmp near 0x3531
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
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0050]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x7cf2], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x3d11
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    mov ax, word [bp - 0x003e]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x003c]
    add ax, 0x100
    mov word [0x904e], ax
    mov ax, word [0x9050]
    ret
api_idx_006e:
    mov ax, 0xff92
    call 0xf40b
    mov ax, word [bp + 0x6]
    jmp short 0x3d94
    mov word [bp - 0x000c], 8
    mov word [bp - 0x000e], 0x20
    jmp short 0x3da8
    mov word [bp - 0x000c], 4
    mov word [bp - 0x000e], 0x1e
    jmp short 0x3da8
    mov word [bp - 0x000c], 2
    mov word [bp - 0x000e], 0x1f
    jmp short 0x3da8
    mov word [bp - 0x000c], 1
    mov word [bp - 0x000e], 0x1d
    jmp short 0x3da8
    cmp ax, strict word 0
    je short 0x3d64
    cmp ax, strict word 1
    je short 0x3d70
    cmp ax, strict word 2
    je short 0x3d88
    cmp ax, strict word 3
    je short 0x3d7c
    mov ax, 0x10
    push ax
    lea ax, word [bp - 0x001e]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    call 0xfedc
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x10
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    call 0xf306
    add sp, byte 6
    mov word [bp - 0x000a], 1
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x625]
    sub ah, ah
    test word [bp - 0x000c], ax
    je short 0x3e30
    mov al, byte [bx + 0x621]
    sub ah, ah
    cmp ax, word [bp - 0x000a]
    jg short 0x3e30
    push word [bp - 0x0002]
    lea ax, word [bp - 0x001e]
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    jne short 0x3e30
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    call 0xec41
    add sp, byte 6
    inc word [bp - 0x0004]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x66
    jl short 0x3de7
    cmp word [bp - 0x0004], byte 0
    jne short 0x3e5a
    mov ax, 0x10
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    lea ax, word [bp - 0x001e]
    push ax
    call 0xfedc
    add sp, byte 6
    ret
    lea ax, word [bp - 0x006e]
    push ax
    mov ax, 0x2bf
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 1
    push ax
    lea ax, word [bp - 0x006e]
    push ax
    call api_idx_0004_2
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x7ec
    push ax
    push word [bp + 0x4]
    call api_idx_0050
    add sp, byte 8
    mov word [bp - 0x0004], ax
    mov ax, 0x10
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    lea ax, word [bp - 0x001e]
    push ax
    call 0xfedc
    add sp, byte 6
    cmp word [bp - 0x0004], byte 0
    je short 0x3eaf
    jmp near 0x3f86
    mov ax, word [0x904e]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x0006], dx
    mov ax, 1
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, 6
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x621]
    sub ah, ah
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d66]
    sub ah, ah
    mov cx, 6
    cwd
    idiv cx
    mov cx, ax
    pop ax
    imul cx
    inc ax
    mov word [bp - 0x0002], ax
    mov ax, 6
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x620]
    sub ah, ah
    mov word [bp - 0x0004], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1e]
    add ax, word [bp - 0x0002]
    push ax
    mov ax, 6
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x622]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short 0x3f56
    mov ax, 0x248
    imul word [bp + 0x4]
    mov dx, word [bp - 0x0004]
    shl dx, 1
    shl dx, 1
    add ax, dx
    mov bx, ax
    sub cx, word [bx + 0x5c1e]
    mov word [bp - 0x0002], cx
    mov ax, word [bp - 0x0002]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov dx, word [bp - 0x0004]
    shl dx, 1
    shl dx, 1
    add ax, dx
    mov bx, ax
    pop ax
    add word [bx + 0x5c1e], ax
    add word [bx + 0x5c1c], ax
    add cx, word [bp + 0x6]
    mov bx, cx
    dec byte [bx + 0x5d50]
    push word [bp + 0x4]
    call api_idx_0004
    pop cx
    ret
math_loc_3f87:
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
    mov ax, word [0x976c]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [0x9092]
    mov dx, word [0x9094]
    cmp bx, dx
    jg short 0x3fce
    jne short 0x3fd0
    cmp cx, ax
    jbe short 0x3fd0
    jmp short 0x402c
    mov ax, word [0x908e]
    mov dx, word [0x9090]
    mov word [0x908c], dx
    mov word [0x908a], ax
    mov ax, word [0x95ae]
    inc ax
    mov cx, 3
    cwd
    idiv cx
    mov word [0x95ae], dx
    push dx
    call api_idx_000a
    pop cx
    mov ax, 0x41
    push ax
    mov ax, 0x65
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x5a
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0xffff
    push ax
    call api_idx_0002_3
    pop cx
    push word [bp + 0x4]
    call api_idx_0004
    pop cx
    mov ax, 0xbf
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x7e
    push ax
    mov ax, 0xb8
    push ax
    call 0xe8da
    add sp, byte 8
    ret
api_idx_0002_7:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d64]
    sub ah, ah
    push ax
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si]
    cbw
    mov cx, ax
    add ax, strict word 0xffbf
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short 0x4075
    mov al, byte [bx + si]
    add al, 0xbf
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    add ax, si
    mov bx, ax
    pop ax
    mov byte [bx + 0x5d64], al
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short 0x4038
    ret
api_idx_0006:
    mov ax, 0xfffa
    call 0xf40b
    mov ax, word [0x9594]
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0002], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d64]
    sub ah, ah
    mov word [bp - 0x0004], ax
    mov bx, word [bp + 0x8]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si]
    cbw
    add ax, strict word 0xffbf
    cmp ax, word [bp - 0x0004]
    jle short 0x40e4
    inc word [bp - 0x0004]
    dec word [bp - 0x0006]
    cmp word [bp + 0xa], byte 1
    jne short 0x40e2
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, si
    mov bx, ax
    inc byte [bx + 0x5d64]
    dec word [0x9594]
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call api_idx_0002_5
    add sp, byte 4
    jmp short 0x40a6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short 0x4092
    mov ax, 0
    cmp word [bp - 0x0006], byte 0
    jl short 0x40fb
    mov ax, 1
    mov cx, word [bp + 0x6]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6892], ax
    ret
loc_4107:
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x6]
    jmp near 0x4283

    db 0xff, 0x76, 0x08, 0xb8, 0xdc, 0x92, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x5e, 0xff
    db 0x83, 0xc4, 0x08, 0xe9, 0x67, 0x01, 0xff, 0x76, 0x08, 0xb8, 0xe5, 0x92, 0x50, 0xff, 0x76, 0x06
    db 0xff, 0x76, 0x04, 0xe8, 0x48, 0xff, 0x83, 0xc4, 0x08, 0xe9, 0x51, 0x01, 0xff, 0x76, 0x08, 0xb8
    db 0xee, 0x92, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x32, 0xff, 0x83, 0xc4, 0x08, 0xe9
    db 0x3b, 0x01, 0xff, 0x76, 0x08, 0xb8, 0xf7, 0x92, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8
    db 0x1c, 0xff, 0x83, 0xc4, 0x08, 0xe9, 0x25, 0x01, 0xff, 0x76, 0x08, 0xb8, 0x00, 0x93, 0x50, 0xff
    db 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x06, 0xff, 0x83, 0xc4, 0x08, 0xe9, 0x0f, 0x01, 0xff, 0x76
    db 0x08, 0xb8, 0x09, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0xf0, 0xfe, 0x83, 0xc4
    db 0x08, 0xe9, 0xf9, 0x00, 0xff, 0x76, 0x08, 0xb8, 0x12, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76
    db 0x04, 0xe8, 0xda, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0xe3, 0x00, 0xff, 0x76, 0x08, 0xb8, 0x1b, 0x93
    db 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0xc4, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0xcd, 0x00
    db 0x83, 0x7e, 0x08, 0x00, 0x75, 0x0f, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x80, 0xbf
    db 0x2c, 0x5e, 0x01, 0x75, 0x15, 0xff, 0x76, 0x08, 0xb8, 0x24, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff
    db 0x76, 0x04, 0xe8, 0x99, 0xfe, 0x83, 0xc4, 0x08, 0xeb, 0x0d, 0x8b, 0x46, 0x06, 0xd1, 0xe0, 0x8b
    db 0xd8, 0xc7, 0x87, 0x6e, 0x97, 0x00, 0x00, 0xe9, 0x93, 0x00, 0xff, 0x76, 0x08, 0xb8, 0x2d, 0x93
    db 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x74, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0x7d, 0x00
    db 0xff, 0x76, 0x08, 0xb8, 0x36, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x5e, 0xfe
    db 0x83, 0xc4, 0x08, 0xeb, 0x68, 0xff, 0x76, 0x08, 0xb8, 0x3f, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff
    db 0x76, 0x04, 0xe8, 0x49, 0xfe, 0x83, 0xc4, 0x08, 0xeb, 0x53, 0xff, 0x76, 0x08, 0xb8, 0x48, 0x93
    db 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x34, 0xfe, 0x83, 0xc4, 0x08, 0xeb, 0x3e, 0xff
    db 0x76, 0x08, 0xb8, 0x51, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x1f, 0xfe, 0x83
    db 0xc4, 0x08, 0xeb, 0x29, 0x5a, 0x91, 0x70, 0x91, 0x86, 0x91, 0x9c, 0x91, 0xb2, 0x91, 0xc8, 0x91
    db 0xde, 0x91, 0xf4, 0x91, 0x0a, 0x92, 0x44, 0x92, 0x5a, 0x92, 0x6f, 0x92, 0x84, 0x92, 0x99, 0x92

    cmp ax, strict word 0xe
    jae short 0x4290
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6d52]
    ret
api_idx_0002_8:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call loc_4107
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xd
    jle short 0x429c
    ret
loc_42b8:
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x6]
    jmp near 0x4384

    db 0xb8, 0x5a, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x5f, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0xbd, 0x00
    db 0xb8, 0x63, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x4f, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0xad, 0x00
    db 0xb8, 0x6c, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x3f, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0x9d, 0x00
    db 0xb8, 0x75, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x2f, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0x8d, 0x00
    db 0xb8, 0x7e, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x1f, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0x7d, 0x00
    db 0xb8, 0x87, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x0f, 0xfd, 0x83, 0xc4, 0x04, 0xeb, 0x6e, 0xb8
    db 0x90, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x00, 0xfd, 0x83, 0xc4, 0x04, 0xeb, 0x5f, 0xb8, 0x99
    db 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xf1, 0xfc, 0x83, 0xc4, 0x04, 0xeb, 0x50, 0xb8, 0xa2, 0x93
    db 0x50, 0xff, 0x76, 0x04, 0xe8, 0xe2, 0xfc

    add sp, byte 4
    jmp short 0x4391

    db 0xb8, 0xab, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xd3, 0xfc, 0x83, 0xc4, 0x04, 0xeb, 0x32, 0xb8
    db 0xb4, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xc4, 0xfc, 0x83, 0xc4, 0x04, 0xeb, 0x23, 0x0b, 0x93
    db 0x1b, 0x93, 0x2b, 0x93, 0x3b, 0x93, 0x4b, 0x93, 0x5b, 0x93, 0x6a, 0x93, 0x79, 0x93, 0x88, 0x93
    db 0x97, 0x93, 0xa6, 0x93

    cmp ax, strict word 0xb
    jae short 0x4391
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6c4b]
    ret
math_loc_4392:
    mov ax, 0
    call 0xf40b
    cmp word [bp + 0x6], byte 1
    jne short 0x43ba
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d64]
    sub ah, ah
    dec ax
    dec ax
    mov byte [bx + 0x5d64], al
    inc byte [bx + 0x5d6a]
    inc byte [bx + 0x5d6b]
    ret
api_idx_007a:
    mov ax, 0xff86
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x007a], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jle short 0x43c6
    mov word [bp - 0x0064], 0xffff
    lea ax, word [bp - 0x007a]
    push ax
    mov ax, 0
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 1
    push ax
    mov ax, 0xb
    push ax
    mov ax, 4
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0x46
    push ax
    mov ax, 0xb
    push ax
    mov ax, 0x86
    push ax
    mov ax, 0x39
    push ax
    mov ax, 0x450
    push ax
    mov ax, 0x64
    push ax
    call math_loc_0445
    add sp, byte 0x1a
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5e2b], al
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0x66
    push ax
    call 0xe809
    add sp, byte 4
    lea ax, word [bp - 0x0052]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2b]
    sub ah, ah
    add ax, strict word 0x64
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2b]
    sub ah, ah
    push ax
    push word [bp + 0x4]
    call loc_42b8
    add sp, byte 4
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call api_idx_0002_5
    add sp, byte 4
    ret
api_idx_007a_2:
    mov ax, 0xff86
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x007a], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 1
    jle short 0x44a3
    mov word [bp - 0x0076], 0xffff
    lea ax, word [bp - 0x007a]
    push ax
    mov ax, 0
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0x6a
    push ax
    mov ax, 0xb
    push ax
    mov ax, 0x86
    push ax
    mov ax, 0x4a
    push ax
    mov ax, 0x451
    push ax
    mov ax, 0x8c
    push ax
    call math_loc_0445
    add sp, byte 0x1a
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5e2c], al
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0x5a
    push ax
    call 0xe809
    add sp, byte 4
    lea ax, word [bp - 0x0052]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2c]
    sub ah, ah
    add ax, 0x8c
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    mov al, byte [bp - 0x0052]
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2d
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2c]
    sub ah, ah
    push ax
    push word [bp + 0x4]
    call math_loc_4392
    add sp, byte 4
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call api_idx_0002_5
    add sp, byte 4
    ret
api_idx_007c:
    mov ax, 0xff84
    call 0xf40b
    push word [bp + 0x4]
    call api_idx_0002_8
    pop cx
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6892], byte 1
    jne short 0x45af
    mov ax, 1
    jmp short 0x45b2
    mov ax, 0
    add bx, bp
    mov word [bx - 0x007c], ax
    cmp word [bx - 0x007c], byte 0
    je short 0x45c0
    inc word [bp - 0x0004]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xd
    jle short 0x459c
    mov word [bp - 0x0060], 0xffff
    lea ax, word [bp - 0x007c]
    push ax
    mov ax, 0
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    mov cx, 3
    cwd
    idiv cx
    imul cx
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    cwd
    idiv cx
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0x46
    push ax
    mov ax, 0xb
    push ax
    mov ax, 0x86
    push ax
    mov ax, 0x39
    push ax
    mov ax, 0x452
    push ax
    mov ax, 0x78
    push ax
    call math_loc_0445
    add sp, byte 0x1a
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5e2d], al
    mov ax, 0
    push ax
    mov ax, 0x84
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0xc
    push ax
    mov ax, 0x5a
    push ax
    call 0xe809
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    add ax, strict word 0x78
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    push ax
    push word [bp + 0x4]
    call loc_4107
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call api_idx_0002_5
    add sp, byte 4
    ret
api_idx_006c:
    mov ax, 0xff94
    call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0x10
    push ax
    lea ax, word [bp - 0x0018]
    push ax
    call 0xf306
    add sp, byte 6
    mov word [bp - 0x0006], 0
    mov ax, 8
    push ax
    mov ax, 1
    push ax
    mov ax, 0x18
    push ax
    mov ax, 0x97
    push ax
    mov ax, 0x58
    push ax
    mov ax, 0x44e
    push ax
    call api_idx_0058
    add sp, byte 0x0c
    mov word [bp - 0x006a], dx
    mov word [bp - 0x006c], ax
    call 0xec17
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call api_idx_0002_5
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x0006]
    add ax, strict word 0x23
    push ax
    mov ax, 0x85
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 5
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x0006]
    add ax, strict word 0x23
    push ax
    mov ax, 0x97
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 6
    push ax
    call 0xe830
    add sp, byte 4
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x0006]
    jne short 0x47a4
    mov ax, 0
    push ax
    mov ax, 0x2d
    push ax
    mov ax, 6
    imul word [bp - 0x0006]
    add ax, strict word 0x28
    push ax
    mov ax, 0x8a
    push ax
    mov ax, 6
    imul word [bp - 0x0006]
    add ax, strict word 0x23
    push ax
    mov ax, 0x85
    push ax
    push word [bp - 0x0002]
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0x3d
    push ax
    mov ax, 0x2b
    push ax
    mov ax, 6
    imul word [bp - 0x0006]
    add ax, strict word 0x28
    push ax
    mov ax, 0x9c
    push ax
    mov ax, 6
    imul word [bp - 0x0006]
    add ax, strict word 0x23
    push ax
    mov ax, 0x97
    push ax
    mov ax, 7
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    jmp short 0x47e6
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    mov cx, 7
    cwd
    idiv cx
    mov ax, dx
    cmp ax, word [bp - 0x0002]
    jne short 0x47bd
    mov al, 0x20
    jmp short 0x47bf
    mov al, 0
    cbw
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x28
    push ax
    mov ax, 0x9c
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x23
    push ax
    mov ax, 0x73
    push ax
    push word [bp - 0x0002]
    call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jge short 0x47f4
    jmp near 0x473f
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 9
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0x60
    push ax
    mov ax, 0xa8
    push ax
    mov ax, 0x23
    push ax
    mov ax, 0x66
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x0004], ax
    cmp word [0x5b3e], byte 0
    je short 0x4820
    cmp word [bp - 0x0004], byte 7
    jge short 0x4847
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0006]
    je short 0x4847
    mov word [bp - 0x0006], ax
    jmp near 0x48c6
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0006]
    jne short 0x4889
    mov ax, word [bp - 0x0006]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0018], byte 0
    jle short 0x487f
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0006]
    mov bx, ax
    dec byte [bx + 0x5d64]
    mov ax, word [bp - 0x0006]
    shl ax, 1
    mov bx, ax
    add bx, bp
    dec word [bx - 0x0018]
    inc word [0x9594]
    jmp short 0x4887
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp short 0x48c6
    cmp word [bp - 0x0004], byte 7
    jne short 0x48c6
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0006]
    mov bx, ax
    cmp byte [bx + 0x5d64], 0x12
    jae short 0x48be
    cmp word [0x9594], byte 0
    jle short 0x48be
    inc byte [bx + 0x5d64]
    mov ax, word [bp - 0x0006]
    shl ax, 1
    mov bx, ax
    add bx, bp
    inc word [bx - 0x0018]
    dec word [0x9594]
    jmp short 0x48c6
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    cmp word [bp - 0x0004], byte 8
    je short 0x48cf
    jmp near 0x46db
    cmp word [0x9594], byte 0
    je short 0x48d9
    jmp near 0x46db
    mov word [0x9594], 0xffff
    mov ax, 1
    push ax
    push ax
    mov ax, 0x18
    push ax
    mov ax, 0x97
    push ax
    mov ax, 0x58
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x18
    push ax
    mov ax, 0x97
    push ax
    mov ax, 0x58
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 1
    push ax
    push word [bp - 0x006a]
    push word [bp - 0x006c]
    call 0xe94f
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
    ret
api_idx_0008_3:
    mov ax, 0xfff8
    call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [0x953e]
    push word [0x953c]
    call 0xe942
    add sp, byte 8
    mov ax, 0x53
    push ax
    mov ax, 0x97
    push ax
    mov ax, 0x4d
    push ax
    mov ax, 0x8b
    push ax
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call api_idx_0002_5
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x10
    push ax
    mov ax, 0x97
    push ax
    mov ax, 0x70
    push ax
    mov ax, 0x44c
    push ax
    call api_idx_0058
    add sp, byte 0x0c
    mov word [bp - 0x0006], dx
    mov word [bp - 0x0008], ax
    call 0xec17
    mov ax, 0x13
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5d6b], al
    cmp byte [bx + 0x5e2c], 1
    jne short 0x49be
    inc byte [bx + 0x5d6b]
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    push word [bp - 0x0004]
    call 0xe94f
    add sp, byte 6
    mov ax, 0x4d
    push ax
    mov ax, 0x8b
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d6b]
    sub ah, ah
    push ax
    call 0xb2e7
    add sp, byte 6
    mov ax, 0x53
    push ax
    mov ax, 0x97
    push ax
    mov ax, 0x4d
    push ax
    mov ax, 0x8b
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    cmp word [0x5b3e], byte 0
    jne short 0x4a2f
    jmp near 0x499d
    mov ax, 1
    push ax
    push ax
    mov ax, 0x10
    push ax
    mov ax, 0x97
    push ax
    mov ax, 0x70
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x10
    push ax
    mov ax, 0x97
    push ax
    mov ax, 0x70
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0008]
    call 0xe94f
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    push word [bp - 0x0004]
    call 0xe94f
    add sp, byte 6
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call api_idx_0002_5
    add sp, byte 4
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
math_loc_4aa1:
    mov ax, 0
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d6b]
    sub ah, ah
    sub ax, word [bp + 0x8]
    jge short 0x4ac0
    neg ax
    mov cx, ax
    jmp short 0x4acd
    mov al, byte [bx + 0x5d6b]
    sub ah, ah
    mov cx, ax
    sub ax, word [bp + 0x8]
    mov cx, ax
    shl cx, 1
    shl cx, 1
    mov ax, 0x28
    sub ax, cx
    add bx, word [bp + 0x6]
    mov byte [bx + 0x5db2], al
    ret
api_idx_0002_9:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, 9
    push ax
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call math_loc_4aa1
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x60
    jl short 0x4ae9
    ret
api_idx_004e:
    mov ax, 0xffb2
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
    mov word [bp - 0x0002], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0xc
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x5c34], byte 0
    jle short 0x4b45
    inc word [bp - 0x0002]
    jmp short 0x4b25
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0xc
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    add ax, 0x5c34
    mov word [bp - 0x004e], ax
    mov al, byte [bp - 0x0030]
    sub ah, ah
    push ax
    mov al, byte [bp - 0x002f]
    sub ah, ah
    mov cx, ax
    pop ax
    imul cx
    add ax, word [bp - 0x0032]
    mov bx, word [bp - 0x004e]
    mov byte [bx + 0x6], al
    mov ax, word [bp + 0x6]
    mov bx, word [bp - 0x004e]
    mov word [bx], ax
    mov al, byte [bp - 0x0014]
    mov bx, word [bp - 0x004e]
    mov byte [bx + 0x4], al
    mov al, byte [bp - 0x0013]
    mov bx, word [bp - 0x004e]
    mov byte [bx + 0x5], al
    mov ax, word [bp - 0x0028]
    mov bx, word [bp - 0x004e]
    mov word [bx + 0x2], ax
    mov al, byte [bp - 0x0024]
    mov bx, word [bp - 0x004e]
    mov byte [bx + 0x8], al
    mov al, byte [bp - 0x0023]
    mov bx, word [bp - 0x004e]
    mov byte [bx + 0x9], al
    mov al, byte [bp - 0x0010]
    mov bx, word [bp - 0x004e]
    mov byte [bx + 0xa], al
    mov al, byte [bp - 0x000c]
    mov bx, word [bp - 0x004e]
    mov byte [bx + 0xb], al
    mov bx, word [bp - 0x004e]
    mov byte [bx + 0x7], 0x80
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 8
    je short 0x4bd5
    mov bx, word [bp - 0x004e]
    or byte [bx + 0x7], 4
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 4
    je short 0x4be6
    mov bx, word [bp - 0x004e]
    or byte [bx + 0x7], 8
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 0x10
    je short 0x4bf7
    mov bx, word [bp - 0x004e]
    or byte [bx + 0x7], 0x10
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 0x20
    je short 0x4c08
    mov bx, word [bp - 0x004e]
    or byte [bx + 0x7], 0x20
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 2
    je short 0x4c19
    mov bx, word [bp - 0x004e]
    or byte [bx + 0x7], 0x40
    push word [bp + 0x4]
    call 0xc58f
    pop cx
    ret
math_loc_4c21:
    mov ax, 0
    call 0xf40b
    cmp word [bp + 0x6], byte 0
    je short 0x4c39
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_004e
    add sp, byte 4
    cmp word [bp + 0x8], byte 0
    je short 0x4c4b
    push word [bp + 0x8]
    push word [bp + 0x4]
    call api_idx_004e
    add sp, byte 4
    cmp word [bp + 0xa], byte 0
    je short 0x4c5d
    push word [bp + 0xa]
    push word [bp + 0x4]
    call api_idx_004e
    add sp, byte 4
    cmp word [bp + 0xc], byte 0
    je short 0x4c6f
    push word [bp + 0xc]
    push word [bp + 0x4]
    call api_idx_004e
    add sp, byte 4
    cmp word [bp + 0xe], byte 0
    je short 0x4c81
    push word [bp + 0xe]
    push word [bp + 0x4]
    call api_idx_004e
    add sp, byte 4
    ret
math_loc_4c82:
    mov ax, 0
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2b], 5
    jne short 0x4cb5
    mov ax, 0x180
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0x18f
    push ax
    mov ax, 0x18e
    push ax
    mov ax, 0x18d
    push ax
    push word [bp + 0x4]
    call math_loc_4c21
    add sp, byte 0x0c
    ret
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp near 0x4e9f

    db 0xb8, 0x8d, 0x00, 0x50, 0xb8, 0x82, 0x00, 0x50, 0xb8, 0x84, 0x00, 0x50, 0xb8, 0x87, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x41, 0xff, 0x83, 0xc4, 0x0c, 0xe9, 0xc6, 0x01
    db 0xb8, 0x4f, 0x01, 0x50, 0xb8, 0x82, 0x00, 0x50, 0xb8, 0x7b, 0x00, 0x50, 0xb8, 0x7a, 0x00, 0x50
    db 0xb8, 0x12, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x21, 0xff, 0x83, 0xc4, 0x0c, 0xe9, 0xa6, 0x01
    db 0xb8, 0x3c, 0x01, 0x50, 0xb8, 0x82, 0x00, 0x50, 0xb8, 0x7b, 0x00, 0x50, 0xb8, 0x7a, 0x00, 0x50
    db 0xb8, 0x18, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x01, 0xff, 0x83, 0xc4, 0x0c, 0xe9, 0x86, 0x01
    db 0xb8, 0x1b, 0x00, 0x50, 0xb8, 0x83, 0x00, 0x50, 0xb8, 0x79, 0x00, 0x50, 0xb8, 0x78, 0x00, 0x50
    db 0xb8, 0x06, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xe1, 0xfe, 0x83, 0xc4, 0x0c, 0xe9, 0x66, 0x01
    db 0xb8, 0x83, 0x00, 0x50, 0xb8, 0x7f, 0x00, 0x50, 0xb8, 0x7e, 0x00, 0x50, 0xb8, 0x21, 0x00, 0x50
    db 0xb8, 0x1f, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xc1, 0xfe, 0x83, 0xc4, 0x0c, 0xe9, 0x46, 0x01
    db 0xb8, 0x47, 0x01, 0x50, 0xb8, 0x82, 0x00, 0x50, 0xb8, 0x7b, 0x00, 0x50, 0xb8, 0x7a, 0x00, 0x50
    db 0xb8, 0x12, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xa1, 0xfe, 0x83, 0xc4, 0x0c, 0xe9, 0x26, 0x01
    db 0xb8, 0x37, 0x00, 0x50, 0xb8, 0x79, 0x00, 0x50, 0xb8, 0x78, 0x00, 0x50, 0xb8, 0x1e, 0x00, 0x50
    db 0xb8, 0x1d, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x81, 0xfe, 0x83, 0xc4, 0x0c, 0xe9, 0x06, 0x01
    db 0xb8, 0xf1, 0x00, 0x50, 0xb8, 0x82, 0x00, 0x50, 0xb8, 0x7b, 0x00, 0x50, 0xb8, 0x7a, 0x00, 0x50
    db 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x61, 0xfe, 0x83, 0xc4, 0x0c, 0xe9, 0xe6, 0x00
    db 0xb8, 0x8a, 0x00, 0x50, 0xb8, 0x82, 0x00, 0x50, 0xb8, 0x7d, 0x00, 0x50, 0xb8, 0x7c, 0x00, 0x50
    db 0xb8, 0x16, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x41, 0xfe, 0x83, 0xc4, 0x0c, 0xe9, 0xc6, 0x00
    db 0xb8, 0xa3, 0x00, 0x50, 0xb8, 0x82, 0x00, 0x50, 0xb8, 0x7b, 0x00, 0x50, 0xb8, 0x7a, 0x00, 0x50
    db 0xb8, 0x18, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x21, 0xfe, 0x83, 0xc4, 0x0c, 0xe9, 0xa6, 0x00
    db 0xb8, 0x8f, 0x00, 0x50, 0xb8, 0x83, 0x00, 0x50, 0xb8, 0x86, 0x00, 0x50, 0xb8, 0x85, 0x00, 0x50
    db 0xb8, 0x09, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x01, 0xfe, 0x83, 0xc4, 0x0c, 0xe9, 0x86, 0x00
    db 0xb8, 0x82, 0x00, 0x50, 0xb8, 0x7b, 0x00, 0x50, 0xb8, 0x7a, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50
    db 0xb8, 0x0a, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xe1, 0xfd, 0x83, 0xc4, 0x0c, 0xeb, 0x67, 0xb8
    db 0x82, 0x00, 0x50, 0xb8, 0x7b, 0x00, 0x50, 0xb8, 0x7a, 0x00, 0x50, 0xb8, 0x2f, 0x00, 0x50, 0xb8
    db 0x19, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xc2, 0xfd, 0x83, 0xc4, 0x0c, 0xeb, 0x48, 0xb8, 0xa1
    db 0x00, 0x50, 0xb8, 0x9f, 0x00, 0x50, 0xb8, 0x9e, 0x00, 0x50, 0xb8, 0xa0, 0x00, 0x50, 0xb8, 0x2f
    db 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xa3, 0xfd, 0x83, 0xc4, 0x0c, 0xeb, 0x29, 0x0d, 0x9d, 0x2d
    db 0x9d, 0x4d, 0x9d, 0x6d, 0x9d, 0x8d, 0x9d, 0xad, 0x9d, 0xcd, 0x9d, 0xed, 0x9d, 0x0d, 0x9e, 0x2d
    db 0x9e, 0x4d, 0x9e, 0x6d, 0x9e, 0x8c, 0x9e, 0xab, 0x9e

    cmp ax, strict word 0xe
    jae short 0x4eac
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6136]
    ret
math_loc_4ead:
    mov ax, 0
    call 0xf40b
    mov ax, 0x7d
    push ax
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0xe
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp + 0x8]
    mov bx, ax
    mov al, byte [bx + 0x5d8e]
    sub ah, ah
    add ax, word [bp + 0xa]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0xe
    imul word [bp + 0x6]
    mov dx, ax
    add cx, ax
    add cx, word [bp + 0x8]
    mov bx, cx
    pop ax
    mov byte [bx + 0x5d8e], al
    ret
api_idx_0006_2:
    mov ax, 0xfffa
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov byte [bx + 0x5d8e], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    push ax
    mov al, byte [bx + 0x5e3b]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short 0x4f39
    mov ax, cx
    jmp short 0x4f3d
    mov ax, word [bx + 0x5c18]
    mov word [bp - 0x0006], ax
    mov ax, 0x10
    cmp word [bp - 0x0006], byte 0x10
    jg short 0x4f4d
    mov ax, word [bp - 0x0006]
    dec ax
    mov word [bp - 0x0006], ax
    mov bx, word [bp + 0x8]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si]
    cbw
    add ax, strict word 0xffd0
    imul word [bp - 0x0006]
    push ax
    mov bx, word [bp + 0x6]
    mov al, byte [bx + si]
    cbw
    mov cx, ax
    shl ax, 1
    shl ax, 1
    mov cx, ax
    pop ax
    add ax, cx
    add ax, 0xfefc
    mov word [bp - 0x0004], ax
    push ax
    push si
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_4ead
    add sp, byte 8
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xe
    jge short 0x4f94
    jmp near 0x4f0b
    ret
api_idx_0002_10:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    push ax
    mov al, byte [bx + 0x5e3b]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short 0x4fb9
    mov ax, cx
    jmp short 0x4fbd
    mov ax, word [bx + 0x5c18]
    mov word [bp - 0x0002], ax
    push ax
    cmp ax, strict word 0x14
    pop ax
    jle short 0x4fca
    mov ax, 0x14
    mov word [bp - 0x0002], ax
    mov cx, 3
    cwd
    idiv cx
    inc ax
    push ax
    mov ax, 1
    push ax
    push word [bp + 0x6]
    call 0xb7c2
    add sp, byte 6
    mov word [bp + 0x6], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d68]
    sub ah, ah
    mov cx, 6
    cwd
    idiv cx
    push ax
    mov ax, word [bp - 0x0002]
    add ax, word [bp + 0x8]
    sub ax, word [bp + 0xa]
    cwd
    idiv word [bp + 0x8]
    mov cx, ax
    pop ax
    add ax, cx
    dec ax
    mov byte [bx + 0x5e37], al
    push word [bp + 0x6]
    mov ax, 1
    push ax
    mov al, byte [bx + 0x5e37]
    sub ah, ah
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5e37], al
    mov al, byte [bx + 0x5d69]
    sub ah, ah
    mov cx, 6
    cwd
    idiv cx
    push ax
    mov ax, word [bp - 0x0002]
    add ax, word [bp + 0xc]
    sub ax, word [bp + 0xe]
    cwd
    idiv word [bp + 0xc]
    mov cx, ax
    pop ax
    add ax, cx
    dec ax
    mov byte [bx + 0x5e38], al
    push word [bp + 0x6]
    mov ax, 1
    push ax
    mov al, byte [bx + 0x5e38]
    sub ah, ah
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5e38], al
    mov al, byte [bx + 0x5d69]
    sub ah, ah
    add ax, word [bp - 0x0002]
    mov byte [bx + 0x5e39], al
    ret
api_idx_0004_6:
    mov ax, 0xfffc
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp near 0x517d
    mov ax, 0x93cc
    push ax
    mov ax, 0x93bd
    push ax
    push word [bp + 0x4]
    call api_idx_0006_2
    add sp, byte 6
    jmp near 0x518a
    mov ax, 0x93ea
    push ax
    mov ax, 0x93db
    push ax
    push word [bp + 0x4]
    call api_idx_0006_2
    add sp, byte 6
    jmp near 0x518a
    mov ax, 0x9408
    push ax
    mov ax, 0x93f9
    push ax
    push word [bp + 0x4]
    call api_idx_0006_2
    add sp, byte 6
    jmp near 0x518a
    mov ax, 0x9426
    push ax
    mov ax, 0x9417
    push ax
    push word [bp + 0x4]
    call api_idx_0006_2
    add sp, byte 6
    jmp near 0x518a
    mov ax, 0x9444
    push ax
    mov ax, 0x9435
    push ax
    push word [bp + 0x4]
    call api_idx_0006_2
    add sp, byte 6
    jmp near 0x518a
    mov ax, 0x9462
    push ax
    mov ax, 0x9453
    push ax
    push word [bp + 0x4]
    call api_idx_0006_2
    add sp, byte 6
    jmp short 0x518a
    mov ax, 0x9480
    push ax
    mov ax, 0x9471
    push ax
    push word [bp + 0x4]
    call api_idx_0006_2
    add sp, byte 6
    jmp short 0x518a
    mov ax, 0x949e
    push ax
    mov ax, 0x948f
    push ax
    push word [bp + 0x4]
    call api_idx_0006_2
    add sp, byte 6
    jmp short 0x518a
    mov ax, 0x94bc
    push ax
    mov ax, 0x94ad
    push ax
    push word [bp + 0x4]
    call api_idx_0006_2
    add sp, byte 6
    jmp short 0x518a
    mov ax, 0x94da
    push ax
    mov ax, 0x94cb
    push ax
    push word [bp + 0x4]
    call api_idx_0006_2
    add sp, byte 6
    jmp short 0x518a
    in ax, 0xa0
    dec cx
    mov ax, word [0xa16f]
    xchg bp, ax
    mov ax, word [0xa0f9]
    dec cx
    mov ax, word [0xa195]
    pop sp
    mov ax, word [0xa0f9]
    outsw
    mov ax, word [0xa10d]
    and word [bx + di - 0x5e7e], sp
    xor ax, 0x3da1
    push cs
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x5e58]
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2b]
    sub ah, ah
    jmp near 0x534f
    mov ax, 0x14
    push ax
    mov ax, 0xb
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_4ead
    add sp, byte 8
    jmp near 0x535c
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d67]
    sub ah, ah
    mov cx, 5
    cwd
    idiv cx
    imul cx
    push ax
    mov ax, 6
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_4ead
    add sp, byte 8
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d67]
    sub ah, ah
    mov cx, 5
    cwd
    idiv cx
    imul cx
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_4ead
    add sp, byte 8
    jmp near 0x535c
    mov ax, 0x14
    push ax
    mov ax, 9
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_4ead
    add sp, byte 8
    jmp near 0x535c
    mov ax, 0x19
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_4ead
    add sp, byte 8
    mov ax, 0x19
    push ax
    mov ax, 4
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_4ead
    add sp, byte 8
    mov ax, 0x19
    push ax
    mov ax, 7
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_4ead
    add sp, byte 8
    mov ax, 0x19
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_4ead
    add sp, byte 8
    mov ax, 0x19
    push ax
    mov ax, 0xb
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_4ead
    add sp, byte 8

    db 0xe9, 0xd2, 0x00, 0xb8, 0x19, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff
    db 0x76, 0x04, 0xe8, 0x11, 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xfc, 0xfb, 0x83, 0xc4, 0x08, 0xb8, 0xec, 0xff
    db 0x50, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xe7, 0xfb, 0x83
    db 0xc4, 0x08, 0xe9, 0x90, 0x00, 0xb8, 0x0f, 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x00, 0x00
    db 0x50, 0xff, 0x76, 0x04, 0xe8, 0xcf, 0xfb, 0x83, 0xc4, 0x08, 0xb8, 0x14, 0x00, 0x50, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xba, 0xfb, 0x83, 0xc4, 0x08, 0xb8
    db 0x14, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xa5
    db 0xfb, 0x83, 0xc4, 0x08, 0xeb, 0x4f, 0xb8, 0x19, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x8e, 0xfb, 0x83, 0xc4, 0x08, 0xb8, 0x0f, 0x00, 0x50, 0xb8
    db 0x03, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x79, 0xfb, 0x83, 0xc4, 0x08
    db 0xeb, 0x23, 0xe2, 0xa1, 0x4d, 0xa2, 0xfa, 0xa1, 0x22, 0xa2, 0xfa, 0xa1, 0x65, 0xa2, 0xd1, 0xa2
    db 0xd1, 0xa2, 0x13, 0xa3, 0x3d, 0xa3, 0x54, 0xa3

    cmp ax, strict word 0xb
    jae short 0x535c
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x5c80]
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d67], 0xf
    jbe short 0x5395
    mov ax, 5
    push ax
    mov ax, 6
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_4ead
    add sp, byte 8
    mov ax, 5
    push ax
    mov ax, 0xb
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_4ead
    add sp, byte 8
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d65], 0xf
    jbe short 0x53b9
    mov ax, 5
    push ax
    mov ax, 9
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_4ead
    add sp, byte 8
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d69], 0xf
    jbe short 0x53f2
    mov ax, 5
    push ax
    mov ax, 7
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_4ead
    add sp, byte 8
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_4ead
    add sp, byte 8
    mov word [bp - 0x0004], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x5d8e]
    mov byte [bx + 0x5d9c], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0xe
    jl short 0x53f7
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp short 0x5498

    db 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x04, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x56, 0xfb, 0x83, 0xc4, 0x0c, 0xeb, 0x61, 0xb8
    db 0x07, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xff, 0x76, 0x04
    db 0xe8, 0x3d, 0xfb, 0x83, 0xc4, 0x0c, 0xeb, 0x48, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x1e, 0xfb, 0x83, 0xc4, 0x0c, 0xeb, 0x29, 0x6c, 0xa4, 0x8b, 0xa4, 0xa4, 0xa4, 0xa4, 0xa4, 0x6c
    db 0xa4, 0x8b, 0xa4, 0xa4, 0xa4, 0x8b, 0xa4, 0x6c, 0xa4, 0x8b, 0xa4, 0x6c, 0xa4, 0x6c, 0xa4, 0x6c
    db 0xa4, 0x6c, 0xa4

    cmp ax, strict word 0xe
    jae short 0x54a5
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x5b3d]
    mov word [bp - 0x0002], 0
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call 0xc608
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 2
    jl short 0x54aa
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + 0x5daa], 0xa
    mov al, byte [bx + 0x5daa]
    cbw
    mov cx, 0
    cmp byte [bx + 0x5d69], 0xf
    jbe short 0x54e0
    mov cx, 1
    sub ax, cx
    mov byte [bx + 0x5daa], al
    cbw
    mov cx, 0
    cmp byte [bx + 0x5d69], 0x11
    jbe short 0x54f4
    mov cx, 1
    sub ax, cx
    mov byte [bx + 0x5daa], al
    mov al, byte [bx + 0x5daa]
    cbw
    mov cx, 0
    cmp byte [bx + 0x5e2b], 5
    jne short 0x550c
    mov cx, 2
    sub ax, cx
    mov byte [bx + 0x5daa], al
    cmp byte [bx + 0x5e2d], 0xd
    je short 0x5520
    cmp byte [bx + 0x5e2d], 0xc
    jne short 0x5552
    mov ax, 0xa
    cmp word [bx + 0x5c18], byte 0x14
    jg short 0x5534
    mov ax, word [bx + 0x5c18]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x0002], ax
    mov al, byte [bx + 0x5d7d]
    sub ah, ah
    mov cx, 0xa
    cwd
    idiv cx
    add word [bp - 0x0002], ax
    mov al, byte [bx + 0x5daa]
    cbw
    sub ax, word [bp - 0x0002]
    mov byte [bx + 0x5daa], al
    mov byte [bx + 0x5dab], 0
    mov byte [bx + 0x5dac], 0
    mov word [bp - 0x0002], 3
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5daa]
    add bx, word [bp - 0x0002]
    mov byte [bx + 0x5daa], al
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short 0x5561
    ret
api_idx_001c:
    mov ax, 0xffe4
    call 0xf40b
    mov ax, word [bp + 0x6]
    mov word [bp - 0x000c], ax
    mov ax, word [bp + 0x8]
    mov word [bp - 0x000a], ax
    mov word [bp - 0x0008], 0
    mov ax, word [bp + 0xa]
    mov word [bp - 0x0006], ax
    mov word [bp - 0x001c], 0
    mov word [bp - 0x001a], 5
    mov word [bp - 0x0018], 3
    mov word [bp - 0x0016], 4
    mov word [bp - 0x0014], 0
    mov word [bp - 0x0012], 0
    mov word [bp - 0x0010], 1
    mov word [bp - 0x000e], 2
    mov word [bp - 0x0002], 0
    cmp word [bp - 0x0002], byte 2
    jne short 0x55d3
    jmp near 0x5665
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov cx, word [bx - 0x001c]
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5d64]
    sub ah, ah
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov cx, word [bx - 0x001a]
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5d64]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov cx, 6
    cwd
    idiv cx
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov cx, word [bx - 0x000c]
    add ax, cx
    dec ax
    dec ax
    dec ax
    mov word [bx - 0x000c], ax
    cmp word [bx - 0x000c], byte 1
    jge short 0x563a
    mov word [bx - 0x000c], 1
    mov ax, word [bx - 0x000c]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    mov cx, word [bx - 0x000c]
    sub cx, ax
    mov ax, cx
    inc ax
    push ax
    call 0xb7a9
    pop cx
    mov cx, ax
    mov ax, word [bp - 0x0004]
    add cx, ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x69f8], cx
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jge short 0x5673
    jmp near 0x55ca
    mov word [0x960c], 0
    mov ax, word [0x0040]
    mov word [bp - 0x0002], ax
    jmp short 0x56a6
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short 0x56a3
    mov ax, 2
    push ax
    call 0xb7a9
    pop cx
    add ax, word [0x960c]
    inc ax
    mov word [0x960c], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x0042]
    jle short 0x5681
    ret
api_idx_0002_11:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x69f8]
    cwd
    idiv word [bp + 0x8]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    dec ax
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    pop ax
    sub ax, cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0
    jge short 0x56eb
    mov word [bp - 0x0002], 0
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x69f8]
    cmp ax, word [bp - 0x0002]
    jge short 0x56fe
    mov word [bp - 0x0002], ax
    mov ax, word [bp - 0x0002]
    sub word [bx - 0x69f8], ax
    ret
math_loc_5706:
    mov ax, 0
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp near 0x5a7c

    db 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x51, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0x54, 0x03, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50
    db 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x39, 0xfe, 0x83, 0xc4, 0x08, 0xb8, 0x02, 0x00
    db 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x58, 0xff, 0x83, 0xc4, 0x06, 0x50, 0xb8
    db 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x8c, 0x5d, 0xe9, 0x1d, 0x03, 0xb8
    db 0x0c, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x02
    db 0xfe, 0x83, 0xc4, 0x08, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x21, 0xff, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88
    db 0x87, 0x8a, 0x5d, 0xe9, 0xe6, 0x02, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x05
    db 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xcb, 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x02, 0x00, 0x50, 0xb8
    db 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xea, 0xfe, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02
    db 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x7c, 0x5d, 0xe9, 0xaf, 0x02, 0xb8, 0x05, 0x00
    db 0x50, 0xb8, 0x07, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x97, 0xfd, 0x83, 0xc4, 0x08, 0xb8
    db 0x03, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xb6, 0xfe, 0x83, 0xc4, 0x06
    db 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x73, 0x5d, 0xb8, 0x03
    db 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x97, 0xfe, 0x83, 0xc4, 0x06, 0x50
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x78, 0x5d, 0xe9, 0x5c, 0x02
    db 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x41, 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04
    db 0xe8, 0x60, 0xfe, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58
    db 0x88, 0x87, 0x79, 0x5d, 0xe9, 0x25, 0x02, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xb8
    db 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x0a, 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x02, 0x00, 0x50
    db 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x29, 0xfe, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x89, 0x5d, 0xe9, 0xee, 0x01, 0xb8, 0x0c
    db 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xd3, 0xfc
    db 0x83, 0xc4, 0x08, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xf2
    db 0xfd, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87
    db 0x8b, 0x5d, 0xe9, 0xb7, 0x01, 0xb8, 0x0d, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0x50, 0xff, 0x76
    db 0x04, 0xe8, 0x9f, 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x03, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0xc1, 0xfd, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88
    db 0x87, 0x8c, 0x5d, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xa2
    db 0xfd, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87
    db 0x8a, 0x5d, 0xe9, 0x67, 0x01, 0xb8, 0x05, 0x00, 0x50, 0x50, 0xb8, 0x09, 0x00, 0x50, 0xff, 0x76
    db 0x04, 0xe8, 0x4f, 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff
    db 0x76, 0x04, 0xe8, 0x6e, 0xfd, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b
    db 0xd8, 0x58, 0x88, 0x87, 0x70, 0x5d, 0xe9, 0x33, 0x01, 0xb8, 0x05, 0x00, 0x50, 0x50, 0xb8, 0x09
    db 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x1b, 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x03, 0x00, 0x50, 0x50
    db 0xff, 0x76, 0x04, 0xe8, 0x3d, 0xfd, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04
    db 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x88, 0x5d, 0xe9, 0x02, 0x01, 0xb8, 0x05, 0x00, 0x50, 0x50, 0xb8
    db 0x09, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xea, 0xfb, 0x83, 0xc4, 0x08, 0xb8, 0x02, 0x00, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x09, 0xfd, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x6d, 0x5d, 0xe9, 0xce, 0x00, 0xb8, 0x06
    db 0x00, 0x50, 0x50, 0xb8, 0x07, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xb6, 0xfb, 0x83, 0xc4, 0x08
    db 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xd5, 0xfc, 0x83, 0xc4
    db 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x75, 0x5d, 0xb8
    db 0x03, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xb9, 0xfc, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x8b, 0x5d, 0xe9, 0x7e, 0x00, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x63, 0xfb
    db 0x83, 0xc4, 0x08, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x82
    db 0xfc, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87
    db 0x75, 0x5d, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x63, 0xfc
    db 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x7d
    db 0x5d, 0xeb, 0x29, 0x64, 0xa7, 0x7c, 0xa7, 0xb3, 0xa7, 0xea, 0xa7, 0x21, 0xa8, 0xab, 0xa8, 0x74
    db 0xa8, 0xe2, 0xa8, 0x69, 0xa9, 0x19, 0xa9, 0x9d, 0xa9, 0xce, 0xa9, 0x02, 0xaa, 0x52, 0xaa

    cmp ax, strict word 0xe
    jae short 0x5a89
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x5559]
    ret
api_idx_000a_3:
    mov ax, 0xfff6
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + 0x5e34], 1
    mov byte [bx + 0x5e35], 0xa
    mov ax, 0x3e8
    push ax
    call 0xb7a9
    pop cx
    add ax, 0x19aa
    cwd
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop dx
    pop ax
    mov word [bx + 0x5bfe], dx
    mov word [bx + 0x5bfc], ax
    mov al, byte [bx + 0x5d64]
    sub ah, ah
    mov word [bp - 0x0008], ax
    mov al, byte [bx + 0x5d67]
    sub ah, ah
    mov word [bp - 0x000a], ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp near 0x5cd0
    mov ax, 5
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 6
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call math_loc_5706
    pop cx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    add byte [bx + 0x5e3a], 0xfd
    jmp near 0x5cdd
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    inc ax
    inc ax
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call math_loc_5706
    pop cx
    jmp near 0x5cdd
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 4
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call math_loc_5706
    pop cx
    jmp near 0x5cdd
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    inc ax
    inc ax
    inc ax
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call math_loc_5706
    pop cx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    dec byte [bx + 0x5e3a]
    jmp near 0x5cdd
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    add ax, strict word 6
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call math_loc_5706
    pop cx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    dec byte [bx + 0x5e3a]
    dec byte [bx + 0x5e3a]
    jmp near 0x5cdd
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    inc ax
    inc ax
    inc ax
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call math_loc_5706
    pop cx
    jmp near 0x5cdd
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    inc ax
    inc ax
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call math_loc_5706
    pop cx
    jmp near 0x5cdd
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    inc ax
    inc ax
    inc ax
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call math_loc_5706
    pop cx
    jmp near 0x5cdd
    mov ax, 5
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 5
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call math_loc_5706
    pop cx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    add byte [bx + 0x5e3a], 0xfc
    jmp near 0x5cdd
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    inc ax
    inc ax
    inc ax
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call math_loc_5706
    pop cx
    jmp near 0x5cdd
    mov ax, 7
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 8
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call math_loc_5706
    pop cx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    add byte [bx + 0x5e3a], 0xfc
    jmp near 0x5cdd
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    add ax, strict word 6
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call math_loc_5706
    pop cx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    add byte [bx + 0x5e3a], 0xfb
    jmp short 0x5cdd
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 4
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call math_loc_5706
    pop cx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    dec byte [bx + 0x5e3a]

    db 0xfe, 0x8f, 0x3a, 0x5e, 0xeb, 0x50, 0xb8, 0x05, 0x00, 0x50, 0xe8, 0x15, 0x5b, 0x59, 0x05, 0x04
    db 0x00, 0x89, 0x46, 0xfe, 0xff, 0x76, 0x04, 0xe8, 0x65, 0xfa, 0x59, 0xb8, 0x48, 0x02, 0xf7, 0x6e
    db 0x04, 0x8b, 0xd8, 0xfe, 0x8f, 0x3a, 0x5e, 0xfe, 0x8f, 0x3a, 0x5e, 0xeb, 0x29, 0x24, 0xab, 0x49
    db 0xab, 0x60, 0xab, 0x78, 0xab, 0x9c, 0xab, 0xd2, 0xab, 0xea, 0xab, 0x01, 0xac, 0x19, 0xac, 0x3e
    db 0xac, 0x56, 0xac, 0x7b, 0xac, 0xad, 0xac, 0xd4, 0xac

    cmp ax, strict word 0xe
    jae short 0x5cdd
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x5305]
    mov ax, word [bp - 0x000a]
    shl ax, 1
    add ax, word [bp - 0x0008]
    mov cx, 3
    imul cx
    mov word [bp - 0x0004], ax
    mov ax, word [bp - 0x0008]
    shl ax, 1
    add ax, word [bp - 0x000a]
    imul cx
    mov word [bp - 0x0006], ax
    add word [bp - 0x0002], byte 4
    cmp word [bp - 0x000a], byte 8
    jge short 0x5d07
    dec word [bp - 0x0002]
    cmp word [bp - 0x000a], byte 0x0f
    jle short 0x5d16
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x000a]
    add word [bp - 0x0004], ax
    cmp word [bp - 0x000a], byte 0x11
    jle short 0x5d25
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x000a]
    add word [bp - 0x0004], ax
    cmp word [bp - 0x0008], byte 0x0f
    jle short 0x5d31
    mov ax, word [bp - 0x0008]
    add word [bp - 0x0006], ax
    cmp word [bp - 0x0008], byte 0x11
    jle short 0x5d3d
    mov ax, word [bp - 0x0008]
    add word [bp - 0x0006], ax
    mov ax, word [bp - 0x0002]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov word [bx + 0x5c0c], ax
    mov word [bx + 0x5c0e], ax
    mov ax, word [bp - 0x0004]
    mov word [bx + 0x5c10], ax
    mov word [bx + 0x5c12], ax
    mov word [bx + 0x5c14], 0
    mov ax, 0xf
    imul word [bp - 0x0006]
    mov word [bx + 0x5c16], ax
    cmp byte [bx + 0x5e2b], 5
    jne short 0x5d7d
    shl ax, 1
    cwd
    idiv cx
    mov word [bx + 0x5c16], ax
    ret
math_loc_5d7e:
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x6]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short 0x5d91
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
    jge short 0x5dac
    mov ax, 1
    mov byte [bx + 0x5d55], al
    mov ax, word [bp + 0xa]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short 0x5dbd
    mov ax, 1
    mov byte [bx + 0x5d56], al
    mov ax, word [bp + 0xc]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short 0x5dce
    mov ax, 1
    mov byte [bx + 0x5d57], al
    mov ax, word [bp + 0xe]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short 0x5ddf
    mov ax, 1
    mov byte [bx + 0x5d58], al
    mov ax, word [bp + 0x10]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short 0x5df0
    mov ax, 1
    mov byte [bx + 0x5d59], al
    ret
api_idx_0004_7:
    mov ax, 0xfffc
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d67]
    sub ah, ah
    push ax
    mov al, byte [bx + 0x5d66]
    sub ah, ah
    mov cx, ax
    shl ax, 1
    mov cx, ax
    pop ax
    add ax, cx
    mov cx, 3
    cwd
    idiv cx
    mov word [bp - 0x0002], ax
    mov word [bp - 0x0004], 0
    cmp ax, strict word 0xd
    jle short 0x5e2f
    inc word [bp - 0x0004]
    cmp ax, strict word 0x10
    jle short 0x5e37
    inc word [bp - 0x0004]
    cmp byte [bx + 0x5e2b], 5
    jne short 0x5e41
    inc word [bp - 0x0004]
    cmp byte [bx + 0x5e2b], 6
    jne short 0x5e4b
    dec word [bp - 0x0004]
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp near 0x6075
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push ax
    push ax
    push ax
    push ax
    push ax
    push word [bp + 0x4]
    call math_loc_5d7e
    add sp, byte 0x0e
    jmp near 0x6082
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
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
    call math_loc_5d7e
    add sp, byte 0x0e
    jmp near 0x6082
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
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
    call math_loc_5d7e
    add sp, byte 0x0e
    jmp near 0x6082
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
    call math_loc_5d7e
    add sp, byte 0x0e
    jmp near 0x6082
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
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
    call math_loc_5d7e
    add sp, byte 0x0e
    jmp near 0x6082
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
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
    push word [bp + 0x4]
    call math_loc_5d7e
    add sp, byte 0x0e
    jmp near 0x6082
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
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
    call math_loc_5d7e
    add sp, byte 0x0e
    jmp near 0x6082
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
    call math_loc_5d7e
    add sp, byte 0x0e
    jmp near 0x6082
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
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
    call math_loc_5d7e
    add sp, byte 0x0e
    jmp near 0x6082
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
    call math_loc_5d7e
    add sp, byte 0x0e
    jmp near 0x6082

    db 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x50, 0x50, 0x50, 0x8b, 0x46, 0xfc
    db 0x40, 0x40, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x71, 0xfd, 0x83, 0xc4, 0x0e, 0xeb, 0x70, 0x8b
    db 0x46, 0xfc, 0x40, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x40, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x50
    db 0x50, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x4d, 0xfd, 0x83, 0xc4
    db 0x0e, 0xeb, 0x4c, 0x8b, 0x46, 0xfc, 0x40, 0x50, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x50, 0x50
    db 0x8b, 0x46, 0xfc, 0x40, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x2a
    db 0xfd, 0x83, 0xc4, 0x0e, 0xeb, 0x29, 0x9b, 0xae, 0xb1, 0xae, 0xe1, 0xae, 0x9b, 0xae, 0x16, 0xaf
    db 0x35, 0xaf, 0x6a, 0xaf, 0x8e, 0xaf, 0xc3, 0xaf, 0xe7, 0xaf, 0x16, 0xb0, 0x3a, 0xb0, 0x59, 0xb0
    db 0x7d, 0xb0

    cmp ax, strict word 0xe
    jae short 0x6082
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x4f60]
    ret
api_idx_0016:
    mov ax, 0xffea
    call 0xf40b
    mov ax, 0x94e9
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
    jne short 0x60c5
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
api_idx_0006_3:
    mov ax, 0xfffa
    call 0xf40b
    mov ax, 8
    push ax
    mov ax, 0xb
    push ax
    mov ax, 0x4a
    push ax
    mov ax, 0x26
    push ax
    mov ax, 0x11
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0xa
    push ax
    mov ax, 9
    push ax
    mov ax, 0x4a
    push ax
    mov ax, 0x43
    push ax
    mov ax, 0x11
    push ax
    mov ax, 0x27
    push ax
    mov ax, 1
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0x18
    push ax
    mov ax, 0x97
    push ax
    mov ax, 0x58
    push ax
    mov ax, 0x454
    push ax
    call api_idx_0058
    add sp, byte 0x0c
    mov word [bp - 0x0004], dx
    mov word [bp - 0x0006], ax
    call 0xec17
    mov ax, 0
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call 0xe94f
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2a]
    sub ah, ah
    push ax
    call api_idx_0016
    add sp, byte 4
    mov ax, 0x12
    push ax
    mov ax, 0xe
    push ax
    push word [bp + 0x4]
    call api_idx_0010
    add sp, byte 6
    mov ax, 0x4a
    push ax
    mov ax, 0x42
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0xe
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x0002], ax
    cmp word [0x5b3e], byte 0
    je short 0x61a1
    mov ax, word [bp - 0x0002]
    jmp short 0x61f5
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2a]
    sub ah, ah
    add ax, strict word 0x20
    mov cx, 0x21
    cwd
    idiv cx
    mov ax, dx
    mov byte [bx + 0x5e2a], al
    jmp short 0x61ff
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2a]
    sub ah, ah
    inc ax
    mov cx, 0x21
    cwd
    idiv cx
    mov ax, dx
    mov byte [bx + 0x5e2a], al
    jmp short 0x61ff
    cmp ax, strict word 0
    je short 0x61b9
    cmp ax, strict word 1
    je short 0x61d8
    cmp word [bp - 0x0002], byte 2
    je short 0x6208
    jmp near 0x6151
    mov ax, 1
    push ax
    push ax
    mov ax, 0x18
    push ax
    mov ax, 0x97
    push ax
    mov ax, 0x58
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x18
    push ax
    mov ax, 0x97
    push ax
    mov ax, 0x58
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    push word [bp - 0x0006]
    call 0xe94f
    add sp, byte 6
    mov ax, 0x12
    push ax
    mov ax, 0xe
    push ax
    push word [bp + 0x4]
    call api_idx_0010
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
    ret
api_idx_0002_12:
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + 0x5e3a], 0x64
    push word [bp + 0x4]
    call api_idx_000a_3
    pop cx
    push word [bp + 0x4]
    call api_idx_0004_7
    pop cx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + 0x5e30], 0
    mov byte [bx + 0x5e31], 0
    mov byte [bx + 0x5e33], 0
    mov byte [bx + 0x5e2e], 0
    mov word [bx + 0x5c18], 1
    mov word [bx + 0x5c1a], 1
    mov word [bp - 0x0002], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov byte [bx + 0x5d48], 0xff
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short 0x62bc
    push word [bp + 0x4]
    call api_idx_0004_6
    pop cx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + 0x5e37], 1
    mov byte [bx + 0x5e38], 1
    mov al, byte [bx + 0x5d69]
    inc al
    mov byte [bx + 0x5e39], al
    ret
math_loc_62fb:
    mov ax, 0xfd84
    call 0xf40b
    mov word [bp - 0x0006], 0
    mov ax, 0
    push ax
    mov ax, 0x248
    push ax
    mov ax, 0x248
    imul word [bp - 0x0006]
    add ax, 0x5bf4
    push ax
    call 0xf306
    add sp, byte 6
    push word [bp + 0x4]
    mov ax, 0x248
    imul word [bp - 0x0006]
    add ax, 0x5bf4
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0x4c
    push ax
    mov ax, 0x248
    imul word [bp - 0x0006]
    add ax, 0x5bf4
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x28
    sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp - 0x0006]
    add ax, 0x5bf4
    push ax
    call 0xe84e
    add sp, byte 4
    mov word [0x9594], 0xffff
    push word [bp - 0x0006]
    call api_idx_007a
    pop cx
    push word [bp - 0x0006]
    call api_idx_007a_2
    pop cx
    mov ax, 6
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 5
    mov word [0x9594], ax
    mov ax, 0x14
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0x63ae
    add word [0x9594], byte 8
    mov ax, 0x14
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0x63bf
    add word [0x9594], byte 8
    cmp word [0x9594], byte 9
    jge short 0x63d4
    mov ax, 4
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 8
    mov word [0x9594], ax
    cmp word [0x978a], byte 1
    jne short 0x63e9
    mov ax, 0xa
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 0x15
    mov word [0x9594], ax
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    call api_idx_0002_5
    add sp, byte 4
    push word [bp - 0x0006]
    call api_idx_007c
    pop cx
    push word [bp - 0x0006]
    call api_idx_006c
    pop cx
    push word [bp - 0x0006]
    call api_idx_0002_12
    pop cx
    push word [bp - 0x0006]
    call math_loc_4c82
    pop cx
    push word [bp - 0x0006]
    call api_idx_0054
    pop cx
    mov ax, 0
    push ax
    push word [bp - 0x0006]
    call api_idx_0002_5
    add sp, byte 4
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0x4a
    push ax
    mov ax, 0x42
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0xe
    push ax
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x027a], dx
    mov word [bp - 0x027c], ax
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    mov byte [bx + 0x5e2a], 0
    push word [bp - 0x027a]
    push word [bp - 0x027c]
    push word [bp - 0x0006]
    call api_idx_0006_3
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp - 0x027a]
    push word [bp - 0x027c]
    call 0xe94f
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x5e2a]
    sub ah, ah
    push ax
    call api_idx_0016
    add sp, byte 4
    mov ax, 0x12
    push ax
    mov ax, 0xe
    push ax
    push word [bp - 0x0006]
    call api_idx_0010
    add sp, byte 6
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x69f8]
    add word [bp - 0x0004], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short 0x64bb
    cmp word [bp - 0x0004], byte 0
    jle short 0x6510
    mov ax, 0x25e
    push ax
    push word [bp - 0x0006]
    call api_idx_0088
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    push word [0x952e]
    push word [0x952c]
    call 0xe942
    add sp, byte 8
    mov ax, 0xc6
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    call 0xe8da
    add sp, byte 8
    mov word [bp - 0x0002], 0
    mov ax, 0x248
    imul word [bp - 0x0006]
    add ax, word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d50], 0
    jbe short 0x6535
    push word [bp - 0x0002]
    push word [bp - 0x0006]
    call api_idx_006e
    add sp, byte 4
    jmp short 0x6515
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short 0x6515
    push word [bp - 0x0006]
    call api_idx_0008_3
    pop cx
    push word [bp - 0x0006]
    call api_idx_0002_9
    pop cx
    mov word [bp - 0x0030], 1
    mov word [bp - 0x002e], 1
    mov word [bp - 0x002c], 0xffff
    lea ax, word [bp - 0x0030]
    push ax
    mov ax, 0
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0x6a
    push ax
    mov ax, 0xb
    push ax
    mov ax, 0xb4
    push ax
    mov ax, 0x4a
    push ax
    mov ax, 0x467
    push ax
    mov ax, 0x468
    push ax
    call math_loc_0445
    add sp, byte 0x1a
    mov word [bp - 0x0004], ax
    cmp word [bp - 0x0004], byte 0
    jne short 0x65fb
    mov ax, 1
    push ax
    push word [bp + 0x6]
    mov ax, 0x248
    imul word [bp - 0x0006]
    add ax, 0x5bf4
    push ax
    call api_idx_0002_2
    add sp, byte 6
    mov bx, word [bp + 0x6]
    mov byte [bx - 0x6f8a], 1
    mov ax, 0
    push ax
    call 0xef14
    pop cx
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    mov ax, 0x94f6
    push ax
    call 0xd161
    add sp, byte 4
    push ax
    call 0xf909
    add sp, byte 4
    mov word [bp - 0x0008], ax
    mov ax, 0x18
    push ax
    mov ax, 0x906e
    push ax
    push word [bp - 0x0008]
    call 0xfd76
    add sp, byte 6
    push word [bp - 0x0008]
    call 0xfda5
    pop cx
    ret
api_idx_0002_13:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    jmp short 0x6619
    mov bx, word [bp - 0x0002]
    cmp byte [bx - 0x6f8a], 0
    jne short 0x6616
    mov ax, bx
    ret
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x9070]
    jl short 0x6609
    mov ax, 0xffff
    ret
loc_6626:
    mov ax, 0xfdb6
    call 0xf40b
    mov word [bp - 0x0002], 0
    jmp short 0x6666
    mov bx, word [bp - 0x0002]
    cmp byte [bx - 0x6f8a], 0
    jbe short 0x6663
    mov ax, 0
    push ax
    push bx
    lea ax, word [bp - 0x024a]
    push ax
    call api_idx_0002_2
    add sp, byte 6
    lea ax, word [bp - 0x024a]
    push ax
    push word [bp + 0x4]
    call string_loc_6fca
    add sp, byte 4
    test ax, ax
    jne short 0x6663
    mov ax, 0xffff
    ret
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x9070]
    jl short 0x6633
    mov ax, 0
    ret
api_idx_0014:
    mov ax, 0xffec
    call 0xf40b
    mov byte [bp - 0x0014], 0
    lea ax, word [bp - 0x0014]
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x47e
    push ax
    call api_idx_0026
    add sp, byte 0x0a
    cmp ax, strict word 2
    jne short 0x669a
    ret
    mov word [0x978a], 0
    cmp byte [bp - 0x0014], 0
    je short 0x66c2
    lea ax, word [bp - 0x0014]
    push ax
    call loc_6626
    pop cx
    cmp ax, strict word 0xffff
    jne short 0x66b5
    jmp short 0x66c2
    push word [bp + 0x4]
    lea ax, word [bp - 0x0014]
    push ax
    call math_loc_62fb
    add sp, byte 4
    ret
math_loc_66c3:
    mov ax, 0
    call 0xf40b
    mov ax, 0
    push ax
    push word [bp + 0x6]
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    call api_idx_0002_2
    add sp, byte 6
    mov word [0x9594], 0xffff
    push word [bp + 0x4]
    call api_idx_0054
    pop cx
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2a]
    sub ah, ah
    push ax
    call api_idx_0016
    add sp, byte 4
    mov ax, 0x12
    push ax
    mov ax, 0xe
    push ax
    push word [bp + 0x4]
    call api_idx_0010
    add sp, byte 6
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call api_idx_0002_5
    add sp, byte 4
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
api_idx_002c:
    mov ax, 0xffd4
    call 0xf40b
    push word [bp + 0x4]
    mov ax, 0
    push ax
    call math_loc_66c3
    add sp, byte 4
    mov word [bp - 0x002c], 1
    mov word [bp - 0x002a], 1
    mov word [bp - 0x0028], 0xffff
    lea ax, word [bp - 0x002c]
    push ax
    mov ax, 0
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0x6a
    push ax
    mov ax, 0xb
    push ax
    mov ax, 0xb4
    push ax
    mov ax, 0x4a
    push ax
    mov ax, 0x464
    push ax
    mov ax, 0x465
    push ax
    call math_loc_0445
    add sp, byte 0x1a
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x0002], byte 0
    jne short 0x67e1
    mov bx, word [bp + 0x4]
    mov byte [bx - 0x6f8a], 0
    mov ax, 0
    push ax
    call 0xef14
    pop cx
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    mov ax, 0x9501
    push ax
    call 0xd161
    add sp, byte 4
    push ax
    call 0xf909
    add sp, byte 4
    mov word [bp - 0x0004], ax
    mov ax, 0x18
    push ax
    mov ax, 0x906e
    push ax
    push word [bp - 0x0004]
    call 0xfd76
    add sp, byte 6
    push word [bp - 0x0004]
    call 0xfda5
    pop cx
    ret
loc_67e2:
    mov ax, 0
    call 0xf40b
    push word [bp + 0x4]
    mov ax, 0
    push ax
    call math_loc_66c3
    add sp, byte 4
    call 0xbaef
    test ax, ax
    jne short 0x67fe
    jmp short 0x67f5
    ret
api_idx_0018:
    mov ax, 0xffe8
    call 0xf40b
    push word [bp + 0x4]
    mov ax, 0
    push ax
    call math_loc_66c3
    add sp, byte 4
    mov ax, 8
    push ax
    call 0xb75e
    pop cx
    mov ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x0014]
    push ax
    call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x0014]
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x48e
    push ax
    call api_idx_0026
    add sp, byte 0x0a
    cmp ax, strict word 2
    jne short 0x6845
    ret
    lea ax, word [bp - 0x0014]
    push ax
    call 0xfa90
    pop cx
    test ax, ax
    je short 0x6886
    lea ax, word [bp - 0x0014]
    push ax
    call loc_6626
    pop cx
    cmp ax, strict word 0xffff
    jne short 0x6860
    jmp short 0x6886
    lea ax, word [bp - 0x0014]
    push ax
    mov ax, 0x5bf4
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, 1
    push ax
    push word [bp + 0x4]
    mov ax, 0x5bf4
    push ax
    call api_idx_0002_2
    add sp, byte 6
    push word [bp + 0x4]
    call loc_67e2
    pop cx
    ret
api_idx_0006_4:
    mov ax, 0xfffa
    call 0xf40b
    mov ax, 0x4a
    push ax
    mov ax, 0x42
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0xe
    push ax
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x0004], dx
    mov word [bp - 0x0006], ax
    push word [bp + 0x4]
    mov ax, 0
    push ax
    call math_loc_66c3
    add sp, byte 4
    mov al, byte [0x5e2a]
    sub ah, ah
    mov word [bp - 0x0002], ax
    push word [bp - 0x0004]
    push word [bp - 0x0006]
    mov ax, 0
    push ax
    call api_idx_0006_3
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    push word [bp - 0x0006]
    call 0xe94f
    add sp, byte 6
    mov al, byte [0x5e2a]
    sub ah, ah
    cmp ax, word [bp - 0x0002]
    je short 0x68f9
    mov ax, 1
    push ax
    push word [bp + 0x4]
    mov ax, 0x5bf4
    push ax
    call api_idx_0002_2
    add sp, byte 6
    ret
math_loc_68fa:
    mov ax, 0xfd40
    call 0xf40b
    mov word [bp - 0x0008], 0
    mov word [bp - 0x0002], 0
    jmp near 0x69f9
    mov bx, word [bp - 0x0002]
    cmp byte [bx - 0x6f8a], 1
    je short 0x691a
    jmp near 0x69f6
    mov ax, 0
    push ax
    push bx
    lea ax, word [bp - 0x0250]
    push ax
    call api_idx_0002_2
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
    jge short 0x696b
    mov ax, 0x14
    imul word [bp - 0x0008]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov byte [bx + 0xe38], 0x20
    inc word [bp - 0x0004]
    jmp short 0x6950
    lea ax, word [bp - 0x02a0]
    push ax
    mov al, byte [bp - 0x0018]
    sub ah, ah
    add ax, 0x8c
    push ax
    call 0xb53b
    add sp, byte 4
    mov al, byte [bp - 0x02a0]
    push ax
    mov ax, 0x14
    imul word [bp - 0x0008]
    mov bx, ax
    pop ax
    mov byte [bx + 0xe42], al
    mov byte [bx + 0xe43], 0x2d
    lea ax, word [bp - 0x02a0]
    push ax
    mov al, byte [bp - 0x0017]
    sub ah, ah
    add ax, strict word 0x78
    push ax
    call 0xb53b
    add sp, byte 4
    mov word [bp - 0x0004], 0
    mov bx, word [bp - 0x0004]
    add bx, bp
    mov al, byte [bx - 0x02a0]
    push ax
    mov ax, 0x14
    imul word [bp - 0x0008]
    mov cx, ax
    add ax, word [bp - 0x0004]
    mov bx, ax
    pop ax
    mov byte [bx + 0xe44], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jl short 0x69af
    mov ax, 0x14
    imul word [bp - 0x0008]
    mov bx, ax
    mov byte [bx + 0xe47], 0
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0008]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x02c0], ax
    inc word [bp - 0x0008]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x9070]
    jge short 0x6a05
    jmp near 0x690d
    cmp word [bp - 0x0008], byte 0
    jle short 0x6a3b
    push word [bp - 0x0008]
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call api_idx_0038
    add sp, byte 0x0a
    cmp ax, strict word 1
    jne short 0x6a3b
    mov ax, word [0x904e]
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    je short 0x6a3b
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x02c0]
    ret
    mov ax, 0xffff
    ret
api_idx_002c_2:
    mov ax, 0xffd4
    call 0xf40b
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
    mov ax, 2
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [bp - 0x000c], dx
    mov word [bp - 0x000e], ax
    mov ax, 0
    push ax
    mov ax, 0x950c
    push ax
    call api_idx_0002
    add sp, byte 4
    mov word [0x95aa], 0x14
    mov word [0x95ac], 0
    mov word [0x95ae], 0
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x67
    push ax
    mov ax, 0xa2
    push ax
    mov ax, 6
    push ax
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0x9526], dx
    mov word [0x9524], ax
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x16
    push ax
    mov ax, 0x136
    push ax
    mov ax, 6
    push ax
    mov ax, 0xe4
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0x952a], dx
    mov word [0x9528], ax
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0xb6
    push ax
    mov ax, 0x9f
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0x952e], dx
    mov word [0x952c], ax
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x23
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x1e
    push ax
    mov ax, 0xdc
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0x9532], dx
    mov word [0x9530], ax
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x74
    push ax
    mov ax, 0x136
    push ax
    mov ax, 0x2e
    push ax
    mov ax, 0x114
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0x9536], dx
    mov word [0x9534], ax
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0xbf
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x7e
    push ax
    mov ax, 0xb8
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0x953a], dx
    mov word [0x9538], ax
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x60
    push ax
    mov ax, 0xa8
    push ax
    mov ax, 0x23
    push ax
    mov ax, 0x66
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0x953e], dx
    mov word [0x953c], ax
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x41
    push ax
    mov ax, 0x65
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x5a
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0x9542], dx
    mov word [0x9540], ax
    mov ax, 0xf
    push ax
    mov ax, 0xb
    push ax
    call 0xd61c
    add sp, byte 4
    call 0xd9a6
    mov word [0x8450], ax
    test ax, ax
    je short 0x6c08
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xd7e7
    add sp, byte 4
    mov ax, word [0x010e]
    mov word [0x844e], ax
    mov ax, 1
    push ax
    push word [0x844e]
    mov ax, 0
    push ax
    call 0xd964
    add sp, byte 6
    mov word [0x844c], ax
    mov word [bp - 0x0002], 0
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, 0x9544
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xcc
    push ax
    call 0xb53b
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short 0x6c0d
    mov ax, 0x9596
    push ax
    mov ax, 0x453
    push ax
    call 0xb53b
    add sp, byte 4
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x7cf2], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x6c42
    mov word [0x976c], 7
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    mov word [0x95aa], 0x14
    mov word [0x95ac], 0
    mov ax, 0
    push ax
    push ax
    push word [0x9526]
    push word [0x9524]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    push word [0x952a]
    push word [0x9528]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    push word [0x952e]
    push word [0x952c]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    push word [0x9532]
    push word [0x9530]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    push word [0x9536]
    push word [0x9534]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    push word [0x953a]
    push word [0x9538]
    call 0xe942
    add sp, byte 8
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x002c], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 5
    jl short 0x6cf5
    mov word [bp - 0x0022], 1
    mov word [bp - 0x0020], 0xffff
    call api_idx_0002_13
    mov word [bp - 0x000a], ax
    cmp ax, strict word 0xffff
    je short 0x6d28
    mov word [bp - 0x002c], 1
    mov word [bp - 0x0002], 0
    jmp short 0x6d50
    mov bx, word [bp - 0x0002]
    cmp byte [bx - 0x6f8a], 1
    jne short 0x6d4d
    mov word [bp - 0x002a], 1
    mov word [bp - 0x0028], 1
    mov word [bp - 0x0026], 1
    mov word [bp - 0x0024], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x9070]
    jl short 0x6d2f
    lea ax, word [bp - 0x002c]
    push ax
    mov ax, 0
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 1
    push ax
    mov ax, 6
    push ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0x34
    push ax
    mov ax, 8
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 4
    push ax
    mov ax, 0
    push ax
    mov ax, 0x46a
    push ax
    call math_loc_0445
    add sp, byte 0x1a
    mov word [bp - 0x0006], ax
    jmp near 0x6e69

    db 0xb8, 0xc7, 0x00, 0x50, 0xb8, 0x3f, 0x01, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xe8, 0x31, 0x7b
    db 0x83, 0xc4, 0x08, 0xff, 0x76, 0xf6, 0xe8, 0xc1, 0xf8, 0x59, 0xe9, 0xc0, 0x00, 0xb8, 0xc7, 0x00
    db 0x50, 0xb8, 0x3f, 0x01, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xe8, 0x14, 0x7b, 0x83, 0xc4, 0x08
    db 0xb8, 0x82, 0x04, 0x50, 0xe8, 0x2a, 0xfb, 0x59, 0x89, 0x46, 0xf8, 0x3d, 0xff, 0xff, 0x74, 0x05
    db 0x50, 0xe8, 0x5b, 0xf9, 0x59, 0xe9, 0x95, 0x00, 0xb8, 0xc7, 0x00, 0x50, 0xb8, 0x3f, 0x01, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0x50, 0xe8, 0xe9, 0x7a, 0x83, 0xc4, 0x08, 0xb8, 0x85, 0x04, 0x50, 0xe8
    db 0xff, 0xfa, 0x59, 0x89, 0x46, 0xf8, 0x3d, 0xff, 0xff, 0x74, 0x05, 0x50, 0xe8, 0xda, 0xf9, 0x59
    db 0xeb, 0x6b, 0xb8, 0xc7, 0x00, 0x50, 0xb8, 0x3f, 0x01, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xe8
    db 0xbf, 0x7a, 0x83, 0xc4, 0x08, 0xb8, 0x88, 0x04, 0x50, 0xe8, 0xd5, 0xfa, 0x59, 0x89, 0x46, 0xf8
    db 0x3d, 0xff, 0xff, 0x74, 0x05, 0x50, 0xe8, 0xcd, 0xf9, 0x59, 0xeb, 0x41, 0xb8, 0xc7, 0x00, 0x50
    db 0xb8, 0x3f, 0x01, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xe8, 0x95, 0x7a, 0x83, 0xc4, 0x08, 0xb8
    db 0x8b, 0x04, 0x50, 0xe8, 0xab, 0xfa, 0x59, 0x89, 0x46, 0xf8, 0x3d, 0xff, 0xff, 0x74, 0x05, 0x50
    db 0xe8, 0x2b, 0xfa, 0x59, 0xeb, 0x17, 0xe0, 0xbd, 0x28, 0xbe, 0xfd, 0xbd, 0x52, 0xbe, 0x7c, 0xbe

    cmp ax, strict word 5
    jae short 0x6e76
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x415a]
    cmp word [bp - 0x0006], byte 5
    je short 0x6e7f
    jmp near 0x6c72
    cmp word [0x8450], byte 0
    je short 0x6e9c
    push word [0x844c]
    push word [0x844e]
    call 0xd91b
    add sp, byte 4
    mov ax, 0
    push ax
    call 0xd907
    pop cx
    mov ax, 0xf
    push ax
    call 0xc12a
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x9542]
    push word [0x9540]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x953e]
    push word [0x953c]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x953a]
    push word [0x9538]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x9536]
    push word [0x9534]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x9532]
    push word [0x9530]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x952e]
    push word [0x952c]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x952a]
    push word [0x9528]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x9526]
    push word [0x9524]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x000c]
    push word [bp - 0x000e]
    call 0xe942
    add sp, byte 8
    mov ax, 1
    push ax
    call 0xc12a
    pop cx
    mov ax, 2
    push ax
    call 0xc12a
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

    db 0x8f, 0x06, 0x22, 0x95, 0x59, 0x89, 0x26, 0x1e, 0x95, 0x89, 0x2e, 0x20, 0x95, 0x89, 0x36, 0x1a
    db 0x95, 0x89, 0x3e, 0x1c, 0x95, 0xfc, 0xbf, 0x24, 0x95, 0xb9, 0x8c, 0x97, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0x59, 0x90, 0x8b, 0x2e, 0x20, 0x95, 0x8b, 0x26, 0x1e
    db 0x95, 0x8b, 0x36, 0x1a, 0x95, 0x8b, 0x3e, 0x1c, 0x95, 0x51, 0xff, 0x26, 0x22, 0x95

string_loc_6fca:
    push bp
    mov bp, sp
    cld
    push si
    push di
    mov si, word [bp + 0x4]
    mov di, ds
    mov es, di
    mov di, word [bp + 0x6]
    lodsw
    scasw
    jne short 0x701d
    test al, al
    je short 0x7017
    test ah, ah
    jne short 0x6fda
    jmp short 0x7017

    db 0x55, 0x8b, 0xec, 0x8b, 0x4e, 0x08, 0x8b, 0xd1, 0xd1, 0xe9, 0xfc, 0x56, 0x57, 0x8b, 0x76, 0x04
    db 0x8c, 0xdf, 0x8e, 0xc7, 0x8b, 0x7e, 0x06, 0xe3, 0x0e, 0xad, 0xaf, 0x75, 0x18, 0x84, 0xc0, 0x74
    db 0x0e, 0x84, 0xe4, 0xe0, 0xf4, 0x74, 0x08, 0xf6, 0xc2, 0x01, 0x74, 0x03, 0xa6, 0x75, 0x13

    sub ax, ax
    pop di
    pop si
    pop bp
    ret
    sub di, byte 2
    scasb
    jne short 0x702a
    test al, al
    je short 0x7017
    mov al, ah
    scasb
    sbb ax, ax
    js short 0x7019
    inc ax
    jmp short 0x7019

    db 'PCFILE.DBS', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 0x25, 0x20, 0x00
    db '1111111110', 0
    db '11100000', 0
    db '000000', 0
    db '1111000000', 0
    db '1000111100', 0
    db '11101000', 0
    db '000000', 0
    db '1111000010', 0
    db '0001101010', 0
    db '11101000', 0
    db '000000', 0
    db '1111101000', 0
    db '1111111110', 0
    db '11101111', 0
    db '000000', 0
    db '1111000000', 0
    db '1111111110', 0
    db '11100111', 0
    db '000000', 0
    db '1111010000', 0
    db '1001110000', 0
    db '11100000', 0
    db '000000', 0
    db '1111010000', 0
    db '1111111110', 0
    db '11111111', 0
    db '000000', 0
    db '1111000010', 0
    db '1001111000', 0
    db '11101000', 0
    db '000000', 0
    db '1111000100', 0
    db '1111111110', 0
    db '11101000', 0
    db '000000', 0
    db '1111001000', 0
    db '0001101010', 0
    db '11101000', 0
    db '000000', 0
    db '1111101010', 0
    db '1111111110', 0
    db '11101000', 0
    db '000000', 0
    db '1111101000', 0
    db '1111111110', 0
    db '11101000', 0
    db '000000', 0
    db '1111000011', 0
    db '1001111101', 0
    db '11101001', 0
    db '000000', 0
    db '1111000101', 0
    db '1111111111', 0
    db '11100111', 0
    db '000000', 0
    db '1111010001', 0
    db 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    db 'MAAAAAAA', 0
    db 'AMAAAAAA', 0
    db 'AAMAAAIA', 0
    db 'AAAAMIAA', 0
    db 'KIILKIIA', 0
    db 'ANAANAAA', 0
    db 'AKAAMIMA', 0
    db 'KOAOAAKA', 0
    db 'KALLKLIA', 0
    db 'APPAAAIA', 0
    db 'MJMMJJOA', 0
    db 'MLAJMOIA', 0
    db 'NINAKNIA', 0
    db 'MKKMMMAA', 0
    db 'JIIJJIIA', 0
    db 'HKKHJJIA', 0
    db 'LGKMHHHA', 0
    db 'KHNKIGGA', 0
    db 'IHGJKHNA', 0
    db 'FLGGKOMA', 0
    db 'MFFOIKDA', 0
    db 'KHGMKIGA', 0
    db 'HKHHKMKA', 0
    db 'IGMKIIKA', 0
    db 'KKGKHHJA', 0
    db 'ACBCBCCCCHCHBA', 0
    db '02222232112230', 0
    db 'ACCCCDCCCHHKDA', 0
    db '02222232123230', 0
    db 'ACCCCDCCCIFKEA', 0
    db '02222232121230', 0
    db 'ACHCHDCCCHFIDA', 0
    db '02323232111230', 0
    db 'ACKCHHGCCIECBA', 0
    db '02322322121220', 0
    db 'ACBCCDECCEEEGA', 0
    db '02121212111330', 0
    db 'ACICIBHCCFKFFA', 0
    db '02323112113330', 0
    db 'ACECCEGCCIFKFA', 0
    db '02222222122220', 0
    db 'ACKCGDHCCFKIDA', 0
    db '02322212112320', 0
    db 'ACHCHHGCCCECHA', 0
    db '02322322112230', 0
    db 'PORTDATA.VGA', 0
    db 'PCFILE.DBS', 0
    db 'PCFILE.DBS', 0
    db 'PCVWSCRN.VGA', 0
    times 11 db 0

