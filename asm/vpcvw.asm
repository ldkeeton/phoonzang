%include "structs/structs.inc"
%include "structs/vpcvw.inc"
org 0
bits 16

    db 0xf2, 0x00, 0x55, 0x50, 0x36, 0x98, 0x98, 0x90 ; header (8 bytes)

    dec ax
    add dx, word [bx + si]
    add si, word [di]
    call 0xc8
    add al, ch
    div bx
    cmp word [0x830a], byte 0x11
    jne short 0x23
    push word [0x8af0]
    call api_idx_0014
    pop cx
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
    jne short 0x5d
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
    je short 0x8a
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
api_idx_000e:
    mov ax, 0xfff2
    call 0xf40b
    cmp word [0x8f20], byte 0
    jg short 0x9b
    jmp near 0x14a
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
    jmp short 0xf0
    mov byte [bp - 0x000e], 1
    mov byte [bp - 0x000d], 2
    mov ax, 5
    cmp word [bp - 0x0002], byte 0
    jne short 0xc9
    mov ax, 4
    mov byte [bp - 0x000c], al
    mov byte [bp - 0x000b], 0
    mov word [bp - 0x0004], 0
    jmp short 0x104
    mov byte [bp - 0x000e], 3
    mov byte [bp - 0x000d], 0
    mov ax, 0
    cmp word [bp - 0x0002], byte 3
    jne short 0xeb
    mov ax, 1
    mov word [bp - 0x0004], ax
    jmp short 0x104
    cmp ax, strict word 0
    je short 0xb5
    cmp ax, strict word 1
    je short 0xd7
    cmp ax, strict word 2
    je short 0xb5
    cmp ax, strict word 3
    je short 0xd7
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x000e]
    push ax
    push word [bp - 0x0004]
    mov ax, 0x8f
    push ax
    mov ax, 0x21
    push ax
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
    call 0xefd1
    add sp, byte 0x16
    ret
api_idx_0012:
    mov ax, 0xffee
    call 0xf40b
    mov word [bp - 0x000e], 0
    mov word [bp - 0x000c], 0
    mov word [bp - 0x000a], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e37]
    sub ah, ah
    mov word [bp - 0x0008], ax
    mov al, byte [bx + 0x5e38]
    sub ah, ah
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 9
    mov ax, word [bx + 0x5c14]
    mov bx, 0x64
    imul bx
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c16]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    call 0xf99f
    mov word [bp - 0x0010], dx
    mov word [bp - 0x0012], ax
    cmp dx, byte 0
    jg short 0x1b7
    jne short 0x1b9
    cmp ax, strict word 0x32
    jbe short 0x1b9
    jmp short 0x1bc
    jmp near 0x2b4
    cmp dx, byte 0
    jg short 0x1c8
    jne short 0x1ca
    cmp ax, strict word 0x42
    jbe short 0x1ca
    jmp short 0x1ed
    mov word [bp - 0x000c], 5
    mov word [bp - 0x000a], 0xa
    cmp word [bp - 0x0008], byte 3
    jle short 0x1df
    mov word [bp - 0x0008], 3
    cmp word [bp - 0x0006], byte 3
    jle short 0x1ea
    mov word [bp - 0x0006], 3
    jmp near 0x2b4
    cmp dx, byte 0
    jg short 0x1f9
    jne short 0x1fb
    cmp ax, strict word 0x4b
    jbe short 0x1fb
    jmp short 0x23c
    mov word [bp - 0x000e], 1
    mov word [bp - 0x000c], 0xa
    mov word [bp - 0x000a], 0x14
    cmp word [bp - 0x0008], byte 2
    jle short 0x215
    mov word [bp - 0x0008], 2
    cmp word [bp - 0x0006], byte 2
    jle short 0x220
    mov word [bp - 0x0006], 2
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c12]
    mov cx, 0x64
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0x83
    jmp short 0x2b4
    cmp word [bp - 0x0010], byte 0
    jg short 0x24a
    jne short 0x24c
    cmp word [bp - 0x0012], byte 0x5a
    jbe short 0x24c
    jmp short 0x281
    mov word [bp - 0x000e], 2
    mov word [bp - 0x000c], 0x14
    mov word [bp - 0x000a], 0x28
    mov word [bp - 0x0008], 1
    mov word [bp - 0x0006], 1
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c12]
    mov cx, 0x32
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0x54
    jmp short 0x2b4
    mov word [bp - 0x000e], 4
    mov word [bp - 0x000c], 0x28
    mov word [bp - 0x000a], 0x50
    mov word [bp - 0x0008], 1
    mov word [bp - 0x0006], 1
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c12]
    mov cx, 0x19
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0x16
    lea si, word [bp - 0x000e]
    mov di, 0x93e0
    mov cx, ds
    mov es, cx
    mov cx, 7
    rep movsw
    mov ax, 0x93e0
    ret
api_idx_0004:
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
    jle short 0x34c
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
math_loc_0374:
    call 0xe8da
    add sp, byte 8
    ret
api_idx_000c:
    mov ax, 0xfff4
    call 0xf40b
    mov ax, word [bp + 0x4]
    mov cx, 3
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x32
    imul cx
    add ax, strict word 4
    mov word [bp - 0x0006], ax
    mov ax, word [bp + 0x4]
    mov cx, 3
    cwd
    idiv cx
    mov cx, 0x27
    imul cx
    add ax, strict word 0x70
    mov word [bp - 0x0008], ax
    push ax
    push word [bp - 0x0006]
    call 0xe809
    add sp, byte 4
    mov ax, 5
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov al, byte [bx + 0x69bc]
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    cmp word [bp + 0x8], byte 0
    je short 0x40b
    mov ax, 0x18
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x24
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    add ax, word [bp - 0x0006]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x20
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 4
    push ax
    call 0xe901
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x20
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 4
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
    mov ax, 0x1b
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c0e]
    push word [bx + 0x5c0c]
    mov ax, 0x16
    push ax
    mov ax, 3
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    call 0xcab1
    add sp, byte 0x0e
    mov ax, 0x56
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c12]
    push word [bx + 0x5c10]
    mov ax, 0x16
    push ax
    mov ax, 3
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x26
    push ax
    call 0xcab1
    add sp, byte 0x0e
    mov word [bp - 0x000a], 0
    mov word [bp - 0x000c], 0
    mov word [bp - 0x0002], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    add word [bp - 0x000a], ax
    mov ax, word [bx + 0x5c1e]
    add word [bp - 0x000c], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x4b0
    mov ax, 0x98
    push ax
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    mov ax, 0x16
    push ax
    mov ax, 3
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2a
    push ax
    call 0xcab1
    add sp, byte 0x0e
    cmp word [bp + 0x6], byte 0
    je short 0x520
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2e
    push ax
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    call 0xe8da
    add sp, byte 8
    ret
    mov ax, 0xffee
    call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [0x93f8]
    push word [0x93f6]
    call 0xe942
    add sp, byte 8
    mov word [bp - 0x0002], 0
    jmp short 0x5a5
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0002]
    call api_idx_000c
    add sp, byte 6
    mov ax, word [bp - 0x0002]
    mov cx, 3
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x32
    imul cx
    add ax, strict word 4
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0002]
    mov cx, 3
    cwd
    idiv cx
    mov cx, 0x27
    imul cx
    add ax, strict word 0x70
    mov word [bp - 0x000c], ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x31
    cbw
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x2e
    push ax
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    push word [bp - 0x0002]
    call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x541
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    push word [0x69c8]
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0xbb
    push ax
    mov ax, 0xab
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    call 0xe8da
    add sp, byte 8
    cmp word [0x0e32], byte 0
    je short 0x5e4
    jmp near 0x6dc
loc_05e4:
    mov ax, 0xa3
    push ax
    mov ax, 0xb1
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x9a
    push ax
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x0010], dx
    mov word [bp - 0x0012], ax
    mov ax, 0x90
    push ax
    mov ax, 0x9a
    push ax
    call 0xe809
    add sp, byte 4
loc_060e:
    mov ax, 7
    push ax
    mov ax, 0x12
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0x9c
    push ax
    mov ax, 0x9a
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 7
    push ax
    mov ax, 0x13
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0x9c
    push ax
    mov ax, 0xa6
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 7
    push ax
    mov ax, 0x14
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0xa3
    push ax
    mov ax, 0xb1
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x9a
    push ax
    call 0xe8da
    add sp, byte 8
    mov word [bp - 0x0004], 0xfffe
    cmp word [bp - 0x0004], byte 0xfe
    jne short 0x6b2
    mov ax, 1
    push ax
    call 0xeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0x1b
    jne short 0x68c
    mov word [bp - 0x0004], 0xffff
    cmp ax, strict word 0x31
    jl short 0x6b0
    mov cx, word [0x69c8]
    add cx, byte 0x31
    cmp cx, ax
    jle short 0x6b0
    add ax, strict word 0xffcf
    mov word [bp - 0x0004], ax
    mov ax, 1
    push ax
    push ax
    push word [bp - 0x0004]
    call api_idx_000c
    add sp, byte 6
    jmp short 0x66f
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x0012]
    call 0xe94f
    add sp, byte 6
    mov ax, 0xa3
    push ax
    mov ax, 0xb1
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x9a
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0004]
    ret
    push word [0x0e30]
    push word [0x0e2e]
    call 0xb8af
    add sp, byte 4
    mov word [bp - 0x0008], 0
    lea ax, word [bp - 0x000c]
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    call 0xf053
    add sp, byte 4
    mov word [bp - 0x0006], ax
    mov ax, 0
    cmp word [bp - 0x0006], byte 0
    jne short 0x70c
    mov ax, 1
    or word [bp - 0x0008], ax
    mov ax, 0x14
    push ax
    call 0xe489
    pop cx
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x0004], ax
    cmp word [0x59fa], byte 0
    je short 0x73c
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    call 0xb8af
    add sp, byte 4
    mov ax, 0xffff
    ret
    cmp word [0x5b3e], byte 1
    jne short 0x763
    mov ax, 1
    push ax
    push ax
    push word [bp - 0x0004]
    call api_idx_000c
    add sp, byte 6
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    call 0xb8af
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    ret
    cmp word [bp - 0x0006], byte 0
    je short 0x6ef
    cmp word [bp - 0x0008], byte 0
    je short 0x6ef
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    call 0xb8af
    add sp, byte 4
    mov ax, 0xffff
    ret
    mov ax, 0xffee
    call 0xf40b
    cmp word [0x0e32], byte 0
    je short 0x791
    jmp near 0x87b
    mov ax, 0xa3
    push ax
    mov ax, 0xb1
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x9a
    push ax
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x0010], dx
    mov word [bp - 0x0012], ax
    mov ax, 0x90
    push ax
    mov ax, 0x9a
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 7
    push ax
    mov ax, 0x12
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0x9c
    push ax
    mov ax, 0x9a
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 7
    push ax
    mov ax, 0x15
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0x9c
    push ax
    mov ax, 0xa6
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 7
    push ax
    mov ax, 0x16
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0xa3
    push ax
    mov ax, 0xb1
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x9a
    push ax
    call 0xe8da
    add sp, byte 8
    mov word [bp - 0x0004], 0xfffe
    cmp word [bp - 0x0004], byte 0xfe
    jne short 0x851
    mov ax, 1
    push ax
    call 0xeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0x1b
    jne short 0x839
    mov word [bp - 0x0004], 0xffff
    cmp ax, strict word 0x30
    jl short 0x84f
    cmp ax, strict word 0x39
    jg short 0x84f
    add ax, strict word 0xffd9
    mov cx, 0xa
    cwd
    idiv cx
    mov word [bp - 0x0004], dx
    jmp short 0x81c
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x0012]
    call 0xe94f
    add sp, byte 6
    mov ax, 0xa3
    push ax
    mov ax, 0xb1
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x9a
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0004]
    ret
    push word [0x0e28]
    push word [0x0e26]
    call 0xb8af
    add sp, byte 4
    mov word [bp - 0x0002], 0
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    inc ax
    mov cx, 0xa
    cwd
    idiv cx
    mov ax, dx
    add ax, strict word 0x30
    cbw
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 5
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xe
    imul cx
    add ax, strict word 0x7d
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 5
    cwd
    idiv cx
    mov cx, 0x4f
    imul cx
    add ax, strict word 0x4e
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 5
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xe
    imul cx
    add ax, strict word 0x71
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 5
    cwd
    idiv cx
    mov cx, 0x4f
    imul cx
    inc ax
    inc ax
    push ax
    push word [bp - 0x0002]
    call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jl short 0x88e
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0xa
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov word [bp - 0x0008], 0
    lea ax, word [bp - 0x000c]
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    call 0xf053
    add sp, byte 4
    mov word [bp - 0x0006], ax
    mov ax, 0
    cmp word [bp - 0x0006], byte 0
    jne short 0x93a
    mov ax, 1
    or word [bp - 0x0008], ax
    mov ax, 0x14
    push ax
    call 0xe489
    pop cx
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x0004], ax
    cmp word [0x59fa], byte 0
    je short 0x96a
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    call 0xb8af
    add sp, byte 4
    mov ax, 0xffff
    ret
    cmp word [0x5b3e], byte 1
    jne short 0x983
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    call 0xb8af
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    ret
    cmp word [bp - 0x0006], byte 0
    je short 0x91d
    cmp word [bp - 0x0008], byte 0
    je short 0x91d
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    call 0xb8af
    add sp, byte 4
    mov ax, 0xffff
    ret
api_idx_0004_2:
    mov ax, 0xfffc
    call 0xf40b
    cmp word [0x940e], byte 0xff
    jne short 0x9af
    ret
    mov ax, word [0x940e]
    mov cx, 5
    cwd
    idiv cx
    mov cx, 0xd
    imul cx
    mov cx, 6
    imul cx
    push ax
    mov ax, word [0x940e]
    mov cx, 5
    cwd
    idiv cx
    mov cx, ax
    pop ax
    add ax, cx
    add ax, strict word 6
    mov word [bp - 0x0002], ax
    shl dx, 1
    mov ax, dx
    mov cx, 6
    imul cx
    push ax
    mov ax, word [0x940e]
    mov cx, 5
    cwd
    idiv cx
    mov cx, dx
    shl cx, 1
    pop ax
    add ax, cx
    add ax, strict word 0x74
    mov word [bp - 0x0004], ax
    push ax
    push word [bp - 0x0002]
    call 0xe809
    add sp, byte 4
    mov ax, 4
    push ax
    mov al, byte [0x9410]
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    push word [0x9412]
    push word [bp - 0x0004]
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xe
    push ax
    mov ax, 0x9414
    push ax
    call api_idx_002a
    add sp, byte 8
    mov bx, word [0x942a]
    cmp byte [bx + 0x60e], 1
    jne short 0xa68
    mov ax, word [bp - 0x0004]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x38
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    push word [0x942c]
    call 0xb2e7
    add sp, byte 6
    mov ax, 0xff
    push ax
    mov ax, 0x15
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    mov ax, word [bp - 0x0002]
    dec ax
    dec ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    call 0xe830
    add sp, byte 4
    ret
api_idx_0012_2:
    mov ax, 0xffee
    call 0xf40b
    mov word [0x940e], 0xffff
    mov ax, word [bp + 0x6]
    push ax
    cmp ax, strict word 0
    pop ax
    jge short 0xab6
    push ax
    cmp ax, strict word 0
    pop ax
    jge short 0xab5
    neg ax
    dec ax
    mov word [bp - 0x0002], ax
    mov cx, 5
    cwd
    idiv cx
    mov cx, 0xd
    imul cx
    mov cx, 6
    imul cx
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 5
    cwd
    idiv cx
    mov cx, ax
    pop ax
    add ax, cx
    inc ax
    inc ax
    mov word [bp - 0x0008], ax
    shl dx, 1
    mov ax, dx
    mov cx, 6
    imul cx
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 5
    cwd
    idiv cx
    mov cx, dx
    shl cx, 1
    pop ax
    add ax, cx
    add ax, strict word 0x71
    mov word [bp - 0x000a], ax
    cmp word [0x0e32], byte 0
    jne short 0xb07
    jmp near 0xc7a
    cmp word [bp + 0x6], byte 0
    jge short 0xb42
    lea ax, word [bp - 0x0006]
    push ax
    lea ax, word [bp - 0x0004]
    push ax
    call 0xf053
    add sp, byte 4
    mov ax, word [bp - 0x0006]
    add ax, word [bp + 0x10]
    push ax
    mov ax, word [bp - 0x0004]
    add ax, word [bp + 0xe]
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    call 0xf060
    add sp, byte 0x0c
    call 0xec17
    jmp near 0xc78
    mov ax, word [bp - 0x000a]
    add ax, strict word 0xc
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x4b
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x000c], dx
    mov word [bp - 0x000e], ax
    mov ax, 0xff
    push ax
    mov ax, word [bp - 0x000a]
    add ax, strict word 0xc
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x4b
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    call 0xe901
    add sp, byte 0x0a
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_0004_7
    add sp, byte 0x0a
    mov ax, 0xff
    push ax
    mov ax, 0x15
    push ax
    call 0xe823
    add sp, byte 4
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, word [bp - 0x000a]
    add ax, strict word 0xc
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x4b
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x0010], dx
    mov word [bp - 0x0012], ax
    mov ax, 0x3dc
    push ax
    push word [0x0e20]
    push word [0x0e1e]
    mov ax, word [bp - 0x0012]
    add ax, strict word 0xc
    push dx
    push ax
    call 0xafcc
    add sp, byte 0x0a
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x0012]
    call 0xe94f
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp - 0x000c]
    push word [bp - 0x000e]
    call 0xe94f
    add sp, byte 6
    lea ax, word [bp - 0x0006]
    push ax
    lea ax, word [bp - 0x0004]
    push ax
    call 0xf053
    add sp, byte 4
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0004]
    add ax, word [bp + 0xe]
    add ax, strict word 0xffdc
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0004], ax
    mov ax, 0xc7
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp + 0x10]
    add ax, strict word 0xfffa
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0006], ax
    push ax
    push word [bp - 0x0004]
    mov ax, 0xd
    push ax
    mov ax, 0x4c
    push ax
    push word [0x0e20]
    push word [0x0e1e]
    call 0xf060
    add sp, byte 0x0c
    call 0xec17
    jmp short 0xcbf
    cmp word [bp + 0x6], byte 0
    jge short 0xc88
    mov word [0x940e], 0xffff
    jmp short 0xcbf
    mov ax, word [bp - 0x0002]
    mov word [0x940e], ax
    push word [bp + 0xa]
    mov ax, 0x9414
    push ax
    call 0xf364
    add sp, byte 4
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x5]
    sub ah, ah
    mov word [0x9410], ax
    mov al, byte [bx + 0x4]
    sub ah, ah
    mov word [0x942a], ax
    mov al, byte [bx + 0x6]
    sub ah, ah
    mov word [0x942c], ax
    mov word [0x9412], 1
    call api_idx_0004_2
    mov ax, 0xb6
    push ax
    mov ax, 0xab
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    call 0xe8da
    add sp, byte 8
    ret
api_idx_000c_2:
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
    jl short 0xce1
    ret
api_idx_0004_3:
    mov ax, 0xfffc
    call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [0x9404]
    push word [0x9402]
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
    jl short 0xd78
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jge short 0xdf8
    jmp near 0xd73
    mov ax, 0
    push ax
    push ax
    push ax
    call api_idx_000c_2
    add sp, byte 6
    ret
api_idx_0002_2:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    cmp word [bp + 0x4], byte 0
    jl short 0xe1e
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x4]
    jne short 0xe29
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
    jne short 0xe54
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x7cf2], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0xe10
    ret
api_idx_0002_3:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x4a, 0x00 ; mov ax, word ptr [bx + 0x4a]
    cmp ax, word [bp + 0x4]
    jge short 0xe82
    inc word [bp - 0x0002]
    jmp short 0xe6b
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
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x69bc]
    mov ax, 5
    push ax
    call 0xe7af
    add sp, byte 8
    mov word [bp - 0x0006], dx
    mov word [bp - 0x0008], ax
    mov ax, word [bp - 0x000a]
    mov word [bp - 0x000e], ax
    mov word [bp - 0x0004], 0
    jmp near 0xf90
    mov word [bp - 0x0002], 0
    jmp near 0xf82
    les bx, word [bp - 0x0008]
    mov si, word [bp - 0x000e]
    mov al, byte [es:bx + si]
    sub ah, ah
    mov word [bp - 0x0010], ax
    cmp ax, 0xff
    jne short 0xef6
    jmp near 0xf7c
    mov ax, 0xffff
    push ax
    push word [bp - 0x0010]
    call api_idx_0002_3
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
    call api_idx_0002_3
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
    jge short 0xf8d
    jmp near 0xee0
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x000c]
    dec ax
    dec ax
    cmp ax, word [bp - 0x0004]
    jle short 0xf9d
    jmp near 0xed8
    ret
api_idx_000a:
    mov ax, 0xfff6
    call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [0x940c]
    push word [0x940a]
    call 0xe942
    add sp, byte 8
    cmp word [0x942e], byte 0
    jle short 0xff9
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
    sub ax, word [0x942e]
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
    cmp word [0x9430], byte 0
    jne short 0x1008
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
    sub ax, word [0x942e]
    add ax, strict word 0x19
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0xf
    push ax
    call 0xefd1
    add sp, byte 0x16
    ret
api_idx_007c:
    mov ax, 0xff84
    call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [0x93f0]
    push word [0x93ee]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    push word [0x93f4]
    push word [0x93f2]
    call 0xe942
    add sp, byte 8
    mov ax, 0x12
    push ax
    mov ax, 0xe
    push ax
    push word [bp + 0x4]
    call api_idx_0010
    add sp, byte 6
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
    lea ax, word [bp - 0x0058]
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
    mov al, byte [bp - 0x0058]
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
    lea ax, word [bp - 0x0058]
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
    lea ax, word [bp - 0x0058]
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
    lea ax, word [bp - 0x0058]
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
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0x12
    push ax
    mov ax, 0x5a
    push ax
    call 0xe809
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xc8
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
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
    mov word [0x942e], ax
    mov ax, 0x14
    push ax
    mov ax, 0
    push ax
    push word [0x942e]
    call 0xb7c2
    add sp, byte 6
    mov word [0x942e], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jae short 0x128c
    mov ax, 0
    jmp short 0x128f
    mov ax, 1
    mov word [0x9430], ax
    mov word [0x9432], 0
    push word [0x9432]
    call api_idx_000a
    pop cx
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
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xcc
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
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
    jl short 0x12b3
    mov ax, 0
    push ax
    mov ax, 0xfd
    push ax
    call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
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
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    lea ax, word [bp - 0x0058]
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
    lea ax, word [bp - 0x0058]
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
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x47
    push ax
    call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
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
    lea ax, word [bp - 0x0058]
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
    lea ax, word [bp - 0x0058]
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
    lea ax, word [bp - 0x0058]
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
    lea ax, word [bp - 0x0058]
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
    lea ax, word [bp - 0x0058]
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
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c0c]
    call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2f
    push ax
    call 0xe830
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c0e]
    call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1d
    push ax
    call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
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
    lea ax, word [bp - 0x0058]
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
    mov word [bp - 0x0008], ax
    cmp ax, strict word 1
    jge short 0x1585
    cmp word [bx + 0x5c10], byte 0
    jle short 0x1585
    mov ax, 1
    jmp short 0x1588
    mov ax, word [bp - 0x0008]
    mov word [bp - 0x0008], ax
    lea ax, word [bp - 0x0058]
    push ax
    push word [bp - 0x0008]
    call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x9098
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
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c12]
    call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x29
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xc4
    push ax
    call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xd6
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x5d
    push ax
    mov ax, 0x5b
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call 0xe830
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c0a]
    push word [bx + 0x5c08]
    call 0xb1db
    add sp, byte 6
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    push word [bp + 0x4]
    call 0xc58f
    pop cx
    push word [bp + 0x4]
    call api_idx_0012
    pop cx
    mov si, ax
    lea di, word [bp - 0x007c]
    mov cx, ds
    mov es, cx
    mov cx, 7
    rep movsw
    mov al, byte [bp - 0x0072]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5e33], al
    mov ax, 0
    push ax
    push word [bp - 0x0070]
    call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xd7
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x63
    push ax
    mov ax, 0x5b
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call 0xe830
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c14]
    mov cx, 0xa
    cwd
    idiv cx
    push ax
    call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2f
    push ax
    call 0xe830
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c16]
    mov cx, 0xa
    cwd
    idiv cx
    push ax
    call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call 0xe84e
    add sp, byte 4
    push word [bp + 0x4]
    call api_idx_0004_3
    pop cx
    mov word [bp - 0x0004], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2f]
    sub ah, ah
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x920]
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    jne short 0x1784
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d5c], 0
    jbe short 0x1784
    mov ax, 0
    jmp short 0x1787
    mov ax, word [bp - 0x0006]
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jg short 0x17a3
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d5d], 0
    jbe short 0x17a3
    mov ax, 1
    jmp short 0x17a6
    mov ax, word [bp - 0x0006]
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    je short 0x17cf
    mov ax, 0x2d
    push ax
    mov ax, 0x51
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 6
    push ax
    mov al, byte [bp - 0x0006]
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    inc word [bp - 0x0004]
    mov word [bp - 0x006e], 6
    mov word [bp - 0x006c], 7
    mov word [bp - 0x006a], 5
    mov word [bp - 0x0068], 4
    mov word [bp - 0x0066], 8
    mov word [bp - 0x0064], 9
    mov word [bp - 0x0062], 1
    mov word [bp - 0x0006], 0xffff
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x006e]
    mov word [bp - 0x0008], ax
    cmp word [bp - 0x0004], byte 6
    jge short 0x1885
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x92c]
    cmp ax, word [bp - 0x0006]
    je short 0x1885
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0008]
    mov bx, ax
    cmp byte [bx + 0x5d5a], 0
    jbe short 0x1885
    mov ax, word [bp - 0x0004]
    mov cx, 3
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xb
    imul cx
    add ax, strict word 0x2d
    push ax
    mov ax, word [bp - 0x0004]
    mov cx, 3
    cwd
    idiv cx
    mov cx, 0x17
    imul cx
    add ax, strict word 0x51
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, word [bp - 0x0008]
    shl ax, 1
    mov bx, ax
    mov al, byte [bx + 0x92c]
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x92c]
    mov word [bp - 0x0006], ax
    inc word [bp - 0x0004]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jge short 0x1893
    jmp near 0x17fc
    ret
    mov ax, 0xff62
    call 0xf40b
    mov word [bp - 0x0004], 0
    cmp word [0x0e32], byte 0
    je short 0x18b7
    lea ax, word [bp - 0x0008]
    push ax
    lea ax, word [bp - 0x0006]
    push ax
    call 0xf053
    add sp, byte 4
    mov word [bp - 0x0004], ax
    mov ax, 0
    push ax
    push ax
    push word [0x93f0]
    push word [0x93ee]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    push ax
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, 0
    push ax
    call 0xb63c
    add sp, byte 8
    lea ax, word [bp - 0x009e]
    push ax
    mov ax, 0xd9
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
    mov ax, 0x36
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x009e]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x34
    push ax
    call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x009e]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5bfc]
    mov dx, word [bx + 0x5bfe]
    mov cx, 0x16d
    mov bx, 0
    call 0xf99f
    push ax
    call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x009e]
    push ax
    call 0xe84e
    add sp, byte 4
    lea ax, word [bp - 0x009e]
    push ax
    mov ax, 0xda
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
    mov ax, 0x58
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x009e]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x009e]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c1a]
    call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x009e]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp word [bx + 0x5c18], byte 0x10
    jge short 0x19fe
    mov ax, word [bx + 0x5c18]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0050]
    mov dx, word [bx - 0x004e]
    mov word [bp - 0x000a], dx
    mov word [bp - 0x000c], ax
    jmp short 0x1a44
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    add ax, strict word 0xfff0
    mov word [bp - 0x004e], ax
    mov ax, word [bp - 0x0010]
    mov dx, word [bp - 0x000e]
    sub ax, word [bp - 0x0014]
    sbb dx, word [bp - 0x0012]
    push ax
    push dx
    mov ax, word [bp - 0x004e]
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
    add ax, word [bp - 0x0010]
    adc dx, word [bp - 0x000e]
    mov word [bp - 0x000a], dx
    mov word [bp - 0x000c], ax
    lea ax, word [bp - 0x009e]
    push ax
    mov ax, 0xdb
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x5d
    push ax
    mov ax, 0x5b
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x87
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x009e]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0x63
    push ax
    mov ax, 0x5b
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x85
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 8
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov cx, word [bx + 0x5c00]
    mov bx, word [bx + 0x5c02]
    mov ax, word [bp - 0x000c]
    mov dx, word [bp - 0x000a]
    sub ax, cx
    sbb dx, bx
    push dx
    push ax
    call 0xb293
    add sp, byte 8
    mov ax, 0x69
    push ax
    mov ax, 0x97
    push ax
    mov ax, 0x5d
    push ax
    mov ax, 6
    push ax
    call 0xe8da
    add sp, byte 8
    cmp word [0x0e32], byte 0
    je short 0x1afd
    cmp word [bp - 0x0004], byte 0
    je short 0x1afb
    lea ax, word [bp - 0x0008]
    push ax
    lea ax, word [bp - 0x0006]
    push ax
    call 0xf053
    add sp, byte 4
    test ax, ax
    je short 0x1afb
    jmp short 0x1ae1
    db 0xeb
math_loc_1afc:
    db 0x19, 0xb8, 0x01, 0x00 ; sbb word ptr [bx + si + 1], di
    push ax
    call 0xeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x0002], byte 0x0d
    je short 0x1b16
    cmp word [bp - 0x0002], byte 0x1b
    jne short 0x1afd
    ret
api_idx_0008:
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
loc_1c25:
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
math_loc_1ca0:
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
    jne short 0x1ce6
    jmp near 0x1d88
    mov ax, 0x909b
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
    jmp short 0x1daa
    mov ax, 0x90a1
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
    jne short 0x1dc6
    jmp near 0x1ee8
    cmp word [bx + si], byte 1
    je short 0x1dce
    jmp near 0x1ee2
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
    jne short 0x1e45
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
    jmp near 0x1db4
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
    je short 0x1f2c
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    mov word [bp - 0x0004], ax
    cmp word [0x5b3e], byte 0
    je short 0x1f17
    jmp near 0x20ce
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
    call loc_1c25
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
    call loc_1c25
    add sp, byte 0x0a
    mov ax, 1
    push ax
    call 0xea50
    pop cx
    test ax, ax
    jne short 0x1fd3
    jmp short 0x1fc5
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
    jmp near 0x2085
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
    jmp near 0x209c
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
    jmp short 0x209c
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
    jmp short 0x209c
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
    jmp short 0x209c
    cmp ax, strict word 8
    je short 0x2038
    cmp ax, strict word 9
    jne short 0x2092
    jmp near 0x1ffe
    cmp ax, strict word 0xa
    je short 0x2060
    cmp ax, strict word 0xb
    je short 0x201d
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jl short 0x20a7
    jmp near 0x1ff7
    cmp word [bp - 0x01aa], byte 0x0d
    je short 0x20b1
    jmp near 0x1f31
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
    je short 0x2180
    cmp word [bp + 0x6], byte 0
    je short 0x2166
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
    jmp short 0x2180
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
    mov ax, 0
    call 0xf40b
    mov ax, 1
    push ax
    push ax
    push word [bp + 0x4]
    call api_idx_000c
    add sp, byte 6
    mov ax, 0x3e8
    push ax
    call 0xe489
    pop cx
    ret
    mov ax, 0
    call 0xf40b
    cmp word [bp + 0x8], byte 1
    jne short 0x21d7
    cmp word [bp + 0x6], byte 0
    jle short 0x21c7
    mov ax, word [bp + 0x4]
    sub word [bp + 0x6], ax
    jmp short 0x21d5
    mov ax, 0
    sub ax, word [bp + 0x4]
    cmp ax, word [bp + 0x6]
    jge short 0x21d5
    mov word [bp + 0x6], ax
    jmp short 0x21f9
    cmp word [bp + 0x8], byte 0
    jne short 0x21f9
    cmp word [bp + 0x6], byte 0
    jge short 0x21eb
    mov ax, word [bp + 0x4]
    add word [bp + 0x6], ax
    jmp short 0x21f9
    mov ax, word [bp + 0x6]
    cmp ax, word [bp + 0x4]
    jge short 0x21f9
    mov ax, word [bp + 0x4]
    mov word [bp + 0x6], ax
    mov ax, word [bp + 0x6]
    ret
    mov ax, 0xfff8
    call 0xf40b
    mov ax, word [bp + 0x6]
    jmp near 0x2919
    mov ax, 0x32
    imul word [bp + 0x8]
    add word [0x82fe], ax
    mov ax, 0
    push ax
    push word [0x8300]
    mov ax, 5
    imul word [bp + 0x8]
    add ax, strict word 0x46
    push ax
    call 0x21ad
    add sp, byte 6
    mov word [0x8300], ax
    jmp near 0x297d
    mov ax, 0x23
    imul word [bp + 0x8]
    add word [0x82f2], ax
    mov ax, 0
    push ax
    push word [0x82f4]
    mov ax, word [bp + 0x8]
    dec ax
    mov cx, 2
    cwd
    idiv cx
    inc ax
    push ax
    call 0x21ad
    add sp, byte 6
    mov word [0x82f4], ax
    jmp near 0x297d
    mov ax, 0x32
    imul word [bp + 0x8]
    add word [0x82f6], ax
    mov ax, 0
    push ax
    push word [0x82f8]
    mov ax, word [bp + 0x8]
    dec ax
    mov cx, 2
    cwd
    idiv cx
    inc ax
    push ax
    call 0x21ad
    add sp, byte 6
    mov word [0x82f8], ax
    jmp near 0x297d
    mov ax, 5
    imul word [bp + 0x8]
    add word [0x8306], ax
    jmp near 0x297d
    mov ax, 0x64
    imul word [bp + 0x8]
    add word [0x8302], ax
    jmp near 0x297d
    mov ax, 0x32
    imul word [bp + 0x8]
    add word [0x82fa], ax
    mov ax, 0
    push ax
    push word [0x82fc]
    mov ax, 5
    imul word [bp + 0x8]
    push ax
    call 0x21ad
    add sp, byte 6
    mov word [0x82fc], ax
    jmp near 0x297d
    mov ax, 0
    cmp word [bp + 0x6], byte 0x13
    je short 0x22d0
    mov ax, word [bp + 0xa]
    mov word [bp - 0x0002], ax
    mov ax, word [0x69c8]
    cmp word [bp + 0x6], byte 0x13
    je short 0x22e0
    mov ax, word [bp + 0xa]
    inc ax
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x8]
    cmp word [bp + 0x6], byte 0x13
    je short 0x22ee
    shl ax, 1
    mov word [bp - 0x0006], ax
    mov ax, 0
    cmp word [bp + 0x6], byte 0x13
    je short 0x22fd
    mov ax, word [bp + 0x8]
    mov word [bp - 0x0008], ax
    jmp short 0x236c
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    push word [bx + 0x5c12]
    mov ax, 0
    push ax
    push word [bp - 0x0008]
    mov ax, 8
    push ax
    push word [bp - 0x0006]
    call 0xd0ea
    add sp, byte 6
    mov cx, ax
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
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    pop ax
    add ax, word [bx + 0x5c10]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    pop ax
    mov word [bx + 0x5c10], ax
    cmp word [bp + 0x6], byte 0x13
    je short 0x2369
    push word [bp - 0x0002]
    call 0x2190
    pop cx
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x0004]
    jl short 0x2302
    jmp near 0x297d
    mov ax, 0x248
    imul word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + 0x5d5d]
    sub ah, ah
    push ax
    mov ax, 0x19
    imul word [bp + 0x8]
    mov cx, ax
    pop ax
    sub ax, cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0
    jge short 0x239e
    mov word [bp - 0x0002], 0
    mov al, byte [bp - 0x0002]
    mov byte [bx + 0x5d5d], al
    push word [bp + 0xa]
    call 0x2190
    pop cx
    jmp near 0x297d
    mov ax, 0x248
    imul word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + 0x5e32]
    sub ah, ah
    sub ax, word [bp + 0x8]
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0
    jg short 0x23d2
    mov word [bp - 0x0002], 0
    mov byte [bx + 0x5d5f], 0
    mov al, byte [bp - 0x0002]
    mov byte [bx + 0x5e32], al
    mov al, byte [bx + 0x5d5f]
    sub ah, ah
    push ax
    mov ax, 5
    imul word [bp + 0x8]
    mov cx, ax
    pop ax
    sub ax, cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0
    jg short 0x23fd
    mov word [bp - 0x0002], 0
    mov byte [bx + 0x5e32], 0
    mov al, byte [bp - 0x0002]
    mov byte [bx + 0x5d5f], al
    push word [bp + 0xa]
    call 0x2190
    pop cx
    jmp near 0x297d
    mov ax, 0x248
    imul word [bp + 0xa]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 2
    je short 0x2420
    jmp near 0x249a
    mov ax, 3
    imul word [bp + 0x8]
    push ax
    mov al, byte [bx + 0x5d67]
    sub ah, ah
    mov dx, ax
    mov cx, 0x15
    sub cx, ax
    pop ax
    cmp ax, cx
    jle short 0x249a
    dec byte [bx + 0x5d67]
    mov ax, 0xb7
    push ax
    call 0xb7a9
    pop cx
    add ax, 0xb7
    cwd
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 0xa]
    mov bx, ax
    pop dx
    pop ax
    add word [bx + 0x5bfc], ax
    adc word [bx + 0x5bfe], dx
    mov ax, 0x12
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + 0x5d67]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jle short 0x248e
    mov byte [bx + 0x5e2f], 3
    mov word [bx + 0x5c0c], 0
    mov word [bx + 0x5c10], 0
    jmp short 0x2493
    mov byte [bx + 0x5e2f], 0
    push word [bp + 0xa]
    call 0x2190
    pop cx
    jmp near 0x297d
    mov ax, 0x248
    imul word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + 0x5d61]
    sub ah, ah
    push ax
    mov ax, 0x19
    imul word [bp + 0x8]
    mov cx, ax
    pop ax
    sub ax, cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0
    jge short 0x24c4
    mov word [bp - 0x0002], 0
    mov al, byte [bp - 0x0002]
    mov byte [bx + 0x5d61], al
    push word [bp + 0xa]
    call 0x2190
    pop cx
    jmp near 0x297d
    mov ax, 3
    imul word [bp + 0x8]
    push ax
    mov ax, 0x248
    imul word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + 0x5d67]
    sub ah, ah
    mov dx, ax
    mov cx, 0x12
    sub cx, ax
    pop ax
    cmp ax, cx
    jle short 0x24fb
    mov byte [bx + 0x5d60], 0
    push word [bp + 0xa]
    call 0x2190
    pop cx
    jmp near 0x297d
    mov word [bp - 0x0002], 0
    jmp short 0x2548
    mov ax, 0x248
    imul word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + 0x5d5c]
    sub ah, ah
    push ax
    mov ax, word [bp + 0x8]
    imul ax
    mov cx, ax
    add ax, strict word 4
    mov cx, ax
    pop ax
    sub ax, cx
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0
    jge short 0x2537
    mov word [bp - 0x0004], 0
    mov al, byte [bp - 0x0004]
    mov byte [bx + 0x5d5c], al
    push word [bp - 0x0002]
    call 0x2190
    pop cx
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x69c8]
    jl short 0x250c
    jmp near 0x297d
    mov word [bp - 0x0004], 1
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 1
    je short 0x2575
    cmp ax, strict word 2
    je short 0x2575
    cmp ax, strict word 4
    je short 0x2575
    cmp ax, strict word 8
    je short 0x2575
    cmp ax, strict word 9
    jne short 0x25ae
    mov ax, 0x248
    imul word [bp + 0xa]
    mov cx, ax
    mov ax, word [bp - 0x0004]
    add cx, ax
    mov bx, cx
    mov al, byte [bx + 0x5d5a]
    sub ah, ah
    push ax
    mov ax, word [bp + 0x8]
    imul ax
    mov cx, ax
    add ax, strict word 4
    mov cx, ax
    pop ax
    sub ax, cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0
    jge short 0x25a7
    mov word [bp - 0x0002], 0
    mov al, byte [bp - 0x0002]
    mov byte [bx + 0x5d5a], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 9
    jle short 0x2559
    push word [bp + 0xa]
    call 0x2190
    pop cx
    jmp near 0x297d
    mov ax, 0
    cmp word [bp + 0x6], byte 0x58
    je short 0x25cf
    mov ax, word [bp + 0xa]
    mov word [bp - 0x0002], ax
    mov ax, word [0x69c8]
    cmp word [bp + 0x6], byte 0x58
    je short 0x25df
    mov ax, word [bp + 0xa]
    inc ax
    mov word [bp - 0x0004], ax
    mov ax, 4
    cmp word [bp + 0x6], byte 0x58
    je short 0x25ee
    mov ax, 7
    mov word [bp - 0x0006], ax
    mov ax, 0
    cmp word [bp + 0x6], byte 0x58
    je short 0x25fd
    mov ax, word [bp + 0x8]
    mov word [bp - 0x0008], ax
    jmp short 0x2675
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    push word [bx + 0x5c0e]
    mov ax, 0
    push ax
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp + 0x8]
    call 0xd0ea
    add sp, byte 6
    mov cx, ax
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
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    pop ax
    add ax, word [bx + 0x5c0c]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    pop ax
    mov word [bx + 0x5c0c], ax
    add word [bx + 0x5bfc], byte 1
    adc word [bx + 0x5bfe], byte 0
    cmp word [bp + 0x6], byte 0x58
    je short 0x2672
    push word [bp - 0x0002]
    call 0x2190
    pop cx
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x0004]
    jl short 0x2602
    jmp near 0x297d
    mov ax, 0x248
    imul word [bp + 0xa]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    je short 0x2692
    jmp near 0x2714
    mov ax, 3
    imul word [bp + 0x8]
    push ax
    mov al, byte [bx + 0x5d67]
    sub ah, ah
    mov dx, ax
    mov cx, 0x15
    sub cx, ax
    pop ax
    cmp ax, cx
    jle short 0x2714
    dec byte [bx + 0x5d67]
    mov byte [bx + 0x5e2f], 0
    push word [bx + 0x5c0e]
    mov ax, 1
    push ax
    mov ax, word [bx + 0x5c0e]
    mov cx, 3
    cwd
    idiv cx
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp + 0xa]
    mov bx, ax
    pop ax
    mov word [bx + 0x5c0c], ax
    mov ax, word [bx + 0x5c12]
    mov cx, 0xa
    cwd
    idiv cx
    mov word [bx + 0x5c10], ax
    inc word [bx + 0x5c1a]
    mov ax, 0xb7
    push ax
    call 0xb7a9
    pop cx
    add ax, 0x16d
    cwd
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 0xa]
    mov bx, ax
    pop dx
    pop ax
    add word [bx + 0x5bfc], ax
    adc word [bx + 0x5bfe], dx
    push word [bp + 0xa]
    call 0x2190
    pop cx
    jmp near 0x297d
    push word [bp + 0x8]
    mov ax, 8
    push ax
    push word [bp + 0x8]
    call 0xd0ea
    add sp, byte 6
    mov cx, ax
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
    mov word [bp - 0x0002], ax
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    add word [bx + 0x5c10], ax
    mov ax, word [bx + 0x5c10]
    cmp ax, word [bx + 0x5c12]
    jle short 0x2761
    mov ax, word [bx + 0x5c12]
    mov word [bx + 0x5c10], ax
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    push word [bp + 0x8]
    call 0xd0ea
    add sp, byte 6
    mov cx, ax
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
    mov word [bp - 0x0002], ax
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    add word [bx + 0x5c0c], ax
    mov ax, word [bx + 0x5c0c]
    cmp ax, word [bx + 0x5c0e]
    jle short 0x27ac
    mov ax, word [bx + 0x5c0e]
    mov word [bx + 0x5c0c], ax
    jmp near 0x297d
    mov word [bp - 0x0002], 0
    mov ax, 0
    push ax
    mov ax, 0xa
    push ax
    push word [bp + 0x8]
    call 0xd0ea
    add sp, byte 6
    mov cx, ax
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
    mov word [bp - 0x0004], ax
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov dx, word [bp - 0x0002]
    shl dx, 1
    shl dx, 1
    add ax, dx
    mov bx, ax
    pop ax
    add word [bx + 0x5c1c], ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bx + 0x5c1e]
    jle short 0x280a
    mov ax, word [bx + 0x5c1e]
    mov word [bx + 0x5c1c], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x27b4
    jmp near 0x297d
    call 0x781
    mov word [0x8aee], ax
    cmp ax, strict word 0xffff
    je short 0x286a
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [0x9434]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [0x8aee]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x5c34], byte 0
    jle short 0x286a
    push word [bp + 0x8]
    mov ax, 0x16
    imul word [0x8aee]
    add ax, 0x9436
    push ax
    add bx, strict word 0x5c34
    mov ax, bx
    push ax
    push word [bp + 0x4]
    call math_loc_70ca
    add sp, byte 8
    jmp near 0x297d
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov ax, 0xf
    imul word [bp + 0x8]
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short 0x28ba
    mov ax, 0x248
    imul word [bp + 0xa]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0004]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    and ax, strict word 0xfffd
    mov byte [bx + 0x5c3b], al
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jl short 0x2877
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 2
    jl short 0x2872
    jmp near 0x297d
    call 0x781
    mov word [0x8aee], ax
    cmp ax, strict word 0xffff
    je short 0x2917
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [0x9434]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [0x8aee]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x5c34], byte 0
    jle short 0x2917
    push word [bp + 0x8]
    add ax, 0x5c34
    push ax
    push word [bp + 0x4]
    call 0x6f62
    add sp, byte 6
    jmp short 0x297d
    mov cx, 0x18
    call 0x982c
    or al, 0
    adc word [bx + si], ax
    adc ax, word [bx + si]
    sbb word [bx + si], ax
    and word [bx + si], ax
    and ax, 0x2e00
    add byte [bx + di], dh
    add byte [bx + si], bh
    add byte [di], bh
    add byte [bx], bh
    db 0x00, 0x40, 0x00 ; add byte ptr [bx + si], al
    inc dx
    db 0x00, 0x45, 0x00 ; add byte ptr [di], al
    dec si
    db 0x00, 0x52, 0x00 ; add byte ptr [bp + si], dl
    push sp
    db 0x00, 0x57, 0x00 ; add byte ptr [bx], dl
    pop ax
    db 0x00, 0x5c, 0x00 ; add byte ptr [si], bl
    pop si
    db 0x00, 0x61, 0x00 ; add byte ptr [bx + di], ah
    bound ax, dword [bx + si]
    or si, word [bp + di - 0x0042]
    jae short 0x295d
    jae short 0x2970
    jne short 0x294c
    jae short 0x2924
    jb short 0x2933
    jb short 0x28fe
    jb short 0x29b3
    je short 0x28fb
    jne short 0x29b2
    jb short 0x29c3
    js short 0x29b2
    jne short 0x294c
    je short 0x2974
    jbe short 0x29e4
    jb short 0x2954
    jb short 0x2924
    js short 0x297c
    jbe short 0x298e
    jns short 0x293d
    jbe short 0x29d6
    ja short 0x2970
    ja short 0x2940
    jns short 0x2941
api_idx_0004_4:
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
    jne short 0x29e0
    push word [bp - 0x0002]
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short 0x29e0
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
    mov word [bx - 0x6aee], ax
    inc word [bp - 0x0004]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x66
    jl short 0x298e
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
math_loc_2a2d:
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
    je short 0x2a57
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
    jne short 0x2ab8
    cmp word [bp + 0xa], byte 0
    jne short 0x2ab8
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
loc_2ab9:
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
    jle short 0x2b40
    mov ax, word [bp + 0xa]
    cmp ax, word [bp + 0xc]
    jg short 0x2b40
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
    jmp short 0x2b59
    mov ax, 0
    push ax
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x90a7
    push ax
    call 0xe84e
    add sp, byte 4
    ret
api_idx_000c_3:
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
    jge short 0x2bf2
    jmp near 0x2b65
    ret
loc_2bf3:
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
    mov ax, word [0x9562]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [0x9092]
    mov dx, word [0x9094]
    cmp bx, dx
    jg short 0x2c3a
    jne short 0x2c3c
    cmp cx, ax
    jbe short 0x2c3c
    jmp short 0x2c83
    mov ax, word [0x908e]
    mov dx, word [0x9090]
    mov word [0x908c], dx
    mov word [0x908a], ax
    call api_idx_000a_2
    push word [bp + 0x4]
    call api_idx_000c_3
    pop cx
    push word [bp + 0x6]
    call api_idx_0002_2
    pop cx
    mov ax, 1
    push ax
    mov ax, 0x73
    push ax
    mov ax, 0x32
    push ax
    call api_idx_000c_2
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
    jl short 0x2c8f
    mov word [0x904e], 0xffff
    mov word [bp - 0x0004], 0x32
    mov word [bp - 0x0006], 0x73
    mov word [bp - 0x0008], 0x10d
    mov word [bp - 0x000a], 0xc5
    mov word [bp - 0x000c], 0x95
    mov word [bp - 0x0014], 0x16
    mov ax, 0x90ab
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
    call api_idx_000c_3
    pop cx
    mov ax, 1
    push ax
    mov ax, 0x73
    push ax
    mov ax, 0x32
    push ax
    call api_idx_000c_2
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
    jne short 0x2def
    mov ax, 1
    push ax
    push cx
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    call math_loc_2a2d
    add sp, byte 8
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short 0x2de1
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
    call loc_2ab9
    add sp, byte 0x0a
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call api_idx_0004_4
    add sp, byte 4
    mov word [bp - 0x0044], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short 0x2e4c
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
    db 0x8b, 0x46
loc_2ee9:
    cli
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
    jl short 0x2f8e
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
    jge short 0x30b2
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
    jl short 0x30ba
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
    mov word [0x9562], 7
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    mov word [bp - 0x001c], 1
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call loc_2bf3
    add sp, byte 4
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x001a], ax
    cmp word [0x59fc], byte 0
    je short 0x31ad
    mov ax, word [bp - 0x0022]
    cmp ax, word [bp - 0x0018]
    jl short 0x3176
    inc word [bp - 0x0022]
    mov ax, word [bp - 0x0022]
    cmp ax, strict word 0xffff
    je short 0x3195
    cmp ax, word [bp - 0x0018]
    jl short 0x3195
    mov ax, word [bp - 0x0018]
    add ax, word [bp - 0x0020]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp - 0x0022]
    cmp cx, ax
    jge short 0x319b
    mov ax, word [bp - 0x0018]
    mov word [bp - 0x0022], ax
    mov word [0x5b3e], 1
    mov ax, word [bp - 0x0022]
    sub ax, word [bp - 0x0018]
    add ax, strict word 0x12
    mov word [bp - 0x001a], ax
    cmp word [0x5b3e], byte 1
    je short 0x31b7
    jmp near 0x38f7
    mov ax, word [bp - 0x001a]
    jmp near 0x38e7
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
    jle short 0x3241
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
    je short 0x32e1
    jmp near 0x31eb
    jmp near 0x38f7
    cmp word [bp - 0x001a], byte 1
    jne short 0x331b
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
    jle short 0x3319
    dec word [bp - 0x0018]
    jmp short 0x334f
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
    jle short 0x334f
    inc word [bp - 0x0018]
    cmp word [bp - 0x0044], byte 7
    jle short 0x3381
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
    jmp near 0x38f7
    cmp word [bp + 0x8], byte 0
    jne short 0x3424
    jmp near 0x34c5
    cmp word [bp - 0x003c], byte 0
    jge short 0x342d
    jmp near 0x34b7
    cmp word [bp + 0xa], byte 0
    je short 0x346f
    mov ax, word [bp - 0x003e]
    cmp ax, word [bp - 0x0040]
    jle short 0x343e
    jmp near 0x34b7
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
    jg short 0x34b7
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
    je short 0x34c5
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp near 0x38f7
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
    jmp near 0x38f7
    cmp word [bp - 0x001a], byte 5
    jge short 0x351c
    jmp near 0x3672
    cmp word [bp - 0x001a], byte 0x0b
    jle short 0x3525
    jmp near 0x3672
    mov ax, 0
    push ax
    push word [bp - 0x003e]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    call math_loc_2a2d
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
    call math_loc_2a2d
    add sp, byte 8
    cmp word [bp - 0x003c], byte 0
    jge short 0x356d
    jmp near 0x360f
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
    jne short 0x35c1
    mov ax, 0x3e7
    jmp short 0x35e0
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short 0x35dd
    jmp short 0x35e0
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
    call loc_2ab9
    add sp, byte 0x0a
    jmp short 0x362b
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
    call loc_2ab9
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
    jmp near 0x38db
    cmp word [bp - 0x001a], byte 0x0c
    jge short 0x367b
    jmp near 0x37a4
    cmp word [bp - 0x001a], byte 0x11
    jle short 0x3684
    jmp near 0x37a4
    mov ax, word [bp - 0x001a]
    add ax, strict word 0xfff4
    mov word [bp - 0x0042], ax
    mov word [bp - 0x003c], 0xffff
    push ax
    push word [bp + 0x4]
    call api_idx_0004_4
    add sp, byte 4
    mov word [bp - 0x0044], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short 0x36ab
    mov ax, word [bp - 0x0044]
    mov word [bp - 0x0024], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short 0x36ba
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
    call loc_2ab9
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
    jmp near 0x38db
    cmp word [bp - 0x001a], byte 0x12
    jge short 0x37ad
    jmp near 0x38db
    mov ax, word [bp - 0x0020]
    add ax, strict word 0x12
    cmp ax, word [bp - 0x001a]
    jg short 0x37bb
    jmp near 0x38db
    mov ax, word [bp - 0x0018]
    add ax, word [bp - 0x001a]
    add ax, strict word 0xffee
    mov word [bp - 0x0022], ax
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6aee]
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
    jne short 0x384b
    mov ax, 0x3e7
    jmp short 0x386a
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short 0x3867
    jmp short 0x386a
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
    call loc_2ab9
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
    jmp short 0x38f7
    add al, 0x82
    sub ax, word [bp + di - 0x7cd5]
    bound ax, dword [si - 0x7af1]
    cmp ax, strict word 5
    jae short 0x38f4
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x76dc]
    jmp near 0x3513
    cmp word [bp - 0x001c], byte 0
    je short 0x3900
    jmp near 0x314c
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
    jl short 0x392c
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
    mov ax, 0xfffc
    call 0xf40b
    push word [bp + 0x6]
    push word [bp + 0x6]
    mov ax, 0x7f1
    cmp word [bp + 0x6], byte 0
    je short 0x398c
    mov ax, 0x7ea
    push ax
    push word [bp + 0x4]
    call 0x2c84
    add sp, byte 8
    test ax, ax
    je short 0x399d
    jmp near 0x3a69
    mov ax, word [0x904e]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], dx
    mov ax, 6
    imul dx
    mov bx, ax
    cmp byte [bx + 0x624], 1
    jne short 0x39ca
    call 0x521
    mov word [0x9564], ax
    cmp ax, strict word 0xffff
    jne short 0x39ca
    mov word [bp - 0x0002], 0xffff
    cmp word [bp - 0x0002], byte 0
    jge short 0x39d3
    jmp near 0x3a69
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x622]
    sub ah, ah
    imul word [bp - 0x0004]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov al, byte [bx + 0x620]
    sub ah, ah
    mov dx, ax
    shl ax, 1
    shl ax, 1
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    sub word [bx + 0x5c1c], ax
    push word [bp - 0x0004]
    call 0xb7a9
    pop cx
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x621]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp - 0x0004]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    sub word [bx + 0x5c10], ax
    cmp word [bx + 0x5c10], byte 0
    jge short 0x3a56
    mov word [bx + 0x5c10], 0
    mov ax, 6
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5d5c], al
    push word [0x9564]
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call 0x21fd
    add sp, byte 8
    ret
    mov ax, 0
    call 0xf40b
    mov ax, 0xbb
    push ax
    mov ax, 0xab
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    call 0xe8da
    add sp, byte 8
    call 0xec17
    call 0xbaef
    test ax, ax
    jne short 0x3a92
    jmp short 0x3a89
    mov ax, 0
    push ax
    push ax
    push word [0x93f8]
    push word [0x93f6]
    call 0xe942
    add sp, byte 8
    mov word [0x9566], 0
    ret
    mov ax, 0xfffc
    call 0xf40b
    cmp word [0x9566], byte 5
    jle short 0x3abc
    call 0x3a6a
    mov bx, word [bp + 0x4]
    cmp byte [bx], 0
    jne short 0x3ac9
    inc word [0x9566]
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
    mov ax, 0x54
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
    jmp short 0x3b1c
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], 0
    mov word [bp - 0x0002], 4
    jmp short 0x3b26
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], 0
    mov ax, word [0x9568]
    mov word [bp - 0x0002], ax
    jmp short 0x3b26
    cmp ax, strict word 0x24
    je short 0x3afb
    cmp ax, strict word 0x5e
    je short 0x3b0b
    mov ax, 0xc
    imul word [0x9566]
    add ax, strict word 0x70
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
    mov word [0x9568], ax
    inc word [0x9566]
    ret
    mov ax, 0xff7c
    call 0xf40b
    mov bx, word [bp + 0x4]
    cmp byte [bx], 0x21
    jne short 0x3b81
    inc word [bp + 0x4]
    mov ax, 0x956a
    push ax
    call 0x3aac
    pop cx
    jmp short 0x3b97
    mov bx, word [bp + 0x4]
    cmp byte [bx], 0x40
    jne short 0x3b97
    inc word [bp + 0x4]
    mov ax, 0x956a
    push ax
    call 0x3aac
    pop cx
    call 0x3a6a
    cmp byte [0x956a], 0
    je short 0x3bcc
    mov ax, 0x956a
    push ax
    lea ax, word [bp - 0x0084]
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, 0x90b1
    push ax
    lea ax, word [bp - 0x0084]
    push ax
    call 0xf32d
    add sp, byte 4
    push word [bp + 0x4]
    lea ax, word [bp - 0x0084]
    push ax
    call 0xf32d
    add sp, byte 4
    jmp short 0x3bda
    push word [bp + 0x4]
    lea ax, word [bp - 0x0084]
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, 2
    push ax
    lea ax, word [bp - 0x0084]
    push ax
    call 0xe883
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, 0xa8
    jle short 0x3c08
    mov ax, 0x956a
    push ax
    call 0x3aac
    pop cx
    push word [bp + 0x4]
    mov ax, 0x956a
    push ax
    call 0xf364
    add sp, byte 4
    jmp short 0x3c17
    lea ax, word [bp - 0x0084]
    push ax
    mov ax, 0x956a
    push ax
    call 0xf364
    add sp, byte 4
    ret
    mov ax, 0xfffc
    call 0xf40b
    mov ax, 0x20
    push ax
    push word [bp + 0x4]
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short 0x3c6d
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
    je short 0x3c5a
    mov bx, word [bp + 0x4]
    mov si, ax
    mov byte [bx + si], 0x20
    jmp short 0x3c3b
    push word [bp + 0x4]
    call 0x3b66
    pop cx
    mov ax, word [bp - 0x0002]
    add word [bp + 0x4], ax
    add word [bp + 0x4], byte 1
    jmp short 0x3c1e
    mov bx, word [bp + 0x4]
    cmp byte [bx], 0
    je short 0x3c7a
    push bx
    call 0x3b66
    pop cx
    ret
    mov ax, 0xffaa
    call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [0x93f8]
    push word [0x93f6]
    call 0xe942
    add sp, byte 8
    mov word [0x9568], 4
    mov word [0x9566], 0
    mov byte [0x956a], 0
    lea ax, word [bp - 0x0056]
    push ax
    push word [bp + 0x4]
    call 0xb53b
    add sp, byte 4
    cmp word [0x5216], byte 0
    jne short 0x3cc4
    lea ax, word [bp - 0x0056]
    push ax
    call 0x3c18
    pop cx
    inc word [bp + 0x4]
    cmp word [0x5216], byte 0
    je short 0x3ca5
    cmp byte [0x956a], 0
    je short 0x3cda
    mov ax, 0x956a
    push ax
    call 0x3aac
    pop cx
    call 0x3a6a
    ret
    mov ax, 0
    call 0xf40b
    mov bx, word [bp + 0x4]
    cmp byte [bx + 0x6], 0
    jbe short 0x3cfd
    dec byte [bx + 0x6]
    mov bx, word [bp + 0x4]
    cmp byte [bx + 0x6], 0
    jne short 0x3cfd
    mov word [bx], 0
    ret
api_idx_009e:
    mov ax, 0xff62
    call 0xf40b
    mov ax, 0
    push ax
    mov bx, word [bp + 0x6]
    push word [bx]
    lea ax, word [bp - 0x004a]
    push ax
    mov ax, 1
    push ax
    call 0xb63c
    add sp, byte 8
    cmp byte [bp - 0x000b], 0
    ja short 0x3d24
    jmp near 0x3fbd
    mov al, byte [bp - 0x000b]
    sub ah, ah
    jmp near 0x3fae
    call 0x781
    mov word [0x8aee], ax
    cmp ax, strict word 0xffff
    je short 0x3d69
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [0x9434]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [0x8aee]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x5c34], strict word 0x1d7
    jne short 0x3d69
    mov ax, 0x4c18
    push ax
    call 0x3c7b
    pop cx
    jmp near 0x3fbb
    push word [bp - 0x0024]
    call 0x3c7b
    pop cx
    jmp near 0x3fbb
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    push ax
    lea ax, word [bp - 0x0018]
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    jne short 0x3d96
    jmp near 0x3e21
    mov ax, word [bp - 0x0028]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x004c], dx
    mov ax, 6
    imul dx
    mov bx, ax
    mov al, byte [bx + 0x621]
    sub ah, ah
    shl ax, 1
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov cx, word [bx + 0x5c18]
    pop ax
    cmp ax, cx
    jle short 0x3de3
    lea ax, word [bp - 0x009e]
    push ax
    mov ax, 0x2d1
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 1
    push ax
    lea ax, word [bp - 0x009e]
    push ax
    call api_idx_0004
    add sp, byte 4
    jmp short 0x3e1f
    mov ax, 1
    push ax
    push word [bp - 0x004c]
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    call 0xec41
    add sp, byte 6
    lea ax, word [bp - 0x009e]
    push ax
    mov ax, 0x2d0
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 1
    push ax
    lea ax, word [bp - 0x009e]
    push ax
    call api_idx_0004
    add sp, byte 4
    mov bx, word [bp + 0x6]
    mov word [bx], 0
    jmp short 0x3e3f
    lea ax, word [bp - 0x009e]
    push ax
    mov ax, 0x2d2
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 1
    push ax
    lea ax, word [bp - 0x009e]
    push ax
    call api_idx_0004
    add sp, byte 4
    jmp near 0x3fbb
    mov ax, word [0x830c]
    cmp ax, word [bp - 0x002c]
    jne short 0x3ec1
    mov ax, 0
    push ax
    mov al, byte [bp - 0x002a]
    sub ah, ah
    push ax
    mov ax, word [bp - 0x002c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, 0
    push ax
    mov al, byte [bp - 0x002a]
    sub ah, ah
    push ax
    mov ax, word [bp - 0x002c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, 1
    push ax
    mov al, byte [bp - 0x0029]
    sub ah, ah
    push ax
    mov ax, word [bp - 0x002c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, 1
    push ax
    mov al, byte [bp - 0x0029]
    sub ah, ah
    push ax
    mov ax, word [bp - 0x002c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call 0xec41
    add sp, byte 6
    push word [bp + 0x6]
    call 0x3cde
    pop cx
    jmp near 0x3fbb
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e32], 3
    jae short 0x3ed8
    mov byte [bx + 0x5e32], 3
    mov ax, 0xfa
    push ax
    mov ax, 0
    push ax
    mov al, byte [bx + 0x5d5f]
    sub ah, ah
    add ax, 0xc8
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5d5f], al
    mov ax, 0xfa
    push ax
    mov ax, 0
    push ax
    mov al, byte [bx + 0x5d62]
    sub ah, ah
    add ax, 0xc8
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5d62], al
    push word [bp + 0x6]
    call 0x3cde
    pop cx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2c]
    sub ah, ah
    add ax, strict word 8
    push ax
    call 0xb7e0
    pop cx
    jmp near 0x3fbb
    mov word [bp - 0x0002], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d6b], 0
    jbe short 0x3f6f
    cmp word [bp - 0x0002], byte 0
    jne short 0x3f6f
    dec byte [bx + 0x5d6b]
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    mov word [bp - 0x0002], ax
    jmp short 0x3f49
    push word [bp + 0x6]
    call 0x3cde
    pop cx
    jmp short 0x3fbb
    mov ax, 4
    push ax
    mov ax, 3
    push ax
    mov ax, 0x14
    push ax
    push word [bp + 0x4]
    call 0x5006
    add sp, byte 8
    push word [bp + 0x6]
    call 0x3cde
    pop cx
    jmp short 0x3fbb
    add dl, byte [bx + si - 0x728d]
    mov bl, 0x8d
    mov bp, 0x898d
    mov es, word [bp + si]
    nop
    or cx, word [bx - 0x6ffe]
    add dl, byte [bx + si - 0x6ffe]
    mov cx, word [bx - 0x7041]
    cmp ax, strict word 0xc
    jae short 0x3fbb
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7023]
    jmp short 0x4010
    cmp word [bp - 0x0028], byte 0
    je short 0x4008
    mov ax, word [bp - 0x0028]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x004e], ax
    mov word [bp - 0x004c], dx
    mov ax, 6
    imul dx
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x624], 1
    jne short 0x3fec
    call 0x521
    mov word [0x9564], ax
    cmp ax, strict word 0xffff
    jne short 0x3fec
    ret
    push word [0x9564]
    push word [bp - 0x004e]
    push word [bp - 0x004c]
    push word [bp + 0x4]
    call 0x21fd
    add sp, byte 8
    push word [bp + 0x6]
    call 0x3cde
    pop cx
    jmp short 0x4010
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    ret
math_loc_4011:
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
    mov ax, word [0x9562]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [0x9092]
    mov dx, word [0x9094]
    cmp bx, dx
    jg short 0x4058
    jne short 0x405a
    cmp cx, ax
    jbe short 0x405a
    jmp short 0x40b6
    mov ax, word [0x908e]
    mov dx, word [0x9090]
    mov word [0x908c], dx
    mov word [0x908a], ax
    mov ax, word [0x9432]
    inc ax
    mov cx, 3
    cwd
    idiv cx
    mov word [0x9432], dx
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
    call api_idx_0002_2
    pop cx
    push word [bp + 0x4]
    call api_idx_0004_3
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
math_loc_40b7:
    mov ax, 0
    call 0xf40b
    push word [bp + 0x4]
    call api_idx_007c
    pop cx
    push word [bp + 0x4]
    call api_idx_0080
    pop cx
    cmp word [bp + 0x6], byte 0
    jne short 0x40ee
    push word [bp + 0x4]
    call api_idx_004c
    pop cx
    call api_idx_0004_2
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
    mov ax, 0xff7c
    call 0xf40b
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0008], 0
    mov ax, word [0x0040]
    mov word [bp - 0x0002], ax
    jmp short 0x4121
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short 0x411e
    mov word [bp - 0x0008], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x0042]
    jle short 0x4107
    mov word [bp - 0x000a], 0
    mov word [bp - 0x000c], 0
    lea ax, word [bp - 0x0034]
    push ax
    push word [bp - 0x0004]
    push word [bp + 0x4]
    call 0x8421
    add sp, byte 6
    mov word [bp - 0x0006], ax
    lea ax, word [bp - 0x0034]
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    push word [bp + 0x4]
    call 0x8676
    add sp, byte 8
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0020], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jle short 0x415f
    mov ax, word [bp - 0x0008]
    mov word [bp - 0x001c], ax
    mov word [bp - 0x0016], 0xffff
    lea ax, word [bp - 0x0020]
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0004]
    mov ax, 1
    push ax
    mov ax, 5
    push ax
    mov ax, 1
    push ax
    mov ax, 9
    push ax
    mov ax, 0x3a
    push ax
    mov ax, 9
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 4
    push ax
    mov ax, 0
    push ax
    mov ax, 0x258
    push ax
    call math_loc_1ca0
    add sp, byte 0x1a
    mov word [bp - 0x0004], ax
    lea ax, word [bp - 0x0084]
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0x258
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 0x1a
    push ax
    mov ax, 1
    push ax
    mov ax, 9
    push ax
    mov ax, 0x3a
    push ax
    mov ax, 9
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 4
    push ax
    push word [0x9052]
    lea ax, word [bp - 0x0084]
    push ax
    call api_idx_0008
    add sp, byte 0x12
    mov ax, word [bp - 0x000a]
    cmp ax, word [bp - 0x0004]
    je short 0x423d
    lea ax, word [bp - 0x0084]
    push ax
    mov ax, word [bp - 0x000a]
    add ax, 0x258
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 1
    push ax
    push ax
    mov ax, 9
    push ax
    mov ax, 0x3a
    push ax
    mov ax, 9
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 4
    push ax
    push word [bp - 0x000c]
    lea ax, word [bp - 0x0084]
    push ax
    call api_idx_0008
    add sp, byte 0x12
    mov ax, word [bp - 0x0004]
    mov word [bp - 0x000a], ax
    mov ax, word [0x9052]
    mov word [bp - 0x000c], ax
    cmp word [bp - 0x0004], byte 4
    je short 0x4252
    jmp near 0x4134
    ret
api_idx_0048:
    mov ax, 0xffb8
    call 0xf40b
    mov ax, 0
    push ax
    push word [bp + 0x4]
    lea ax, word [bp - 0x0048]
    push ax
    mov ax, 1
    push ax
    call 0xb63c
    add sp, byte 8
    lea ax, word [bp - 0x0048]
    push ax
    push word [bp + 0xa]
    call 0xf364
    add sp, byte 4
    mov ax, word [bp + 0x4]
    mov bx, word [bp + 0x6]
    mov word [bx], ax
    mov al, byte [bp - 0x000f]
    mov bx, word [bp + 0x6]
    mov byte [bx + 0x5], al
    mov al, byte [bp - 0x0010]
    mov bx, word [bp + 0x6]
    mov byte [bx + 0x4], al
    mov ax, word [bp - 0x0024]
    mov bx, word [bp + 0x6]
    mov word [bx + 0x2], ax
    mov bx, word [bp + 0x6]
    mov byte [bx + 0x7], 0x80
    push word [bp - 0x002c]
    push word [bp - 0x002e]
    call 0xd0be
    add sp, byte 4
    mov bx, word [bp + 0x6]
    mov byte [bx + 0x6], al
    mov al, byte [bp - 0x0020]
    mov bx, word [bp + 0x6]
    mov byte [bx + 0x8], al
    mov al, byte [bp - 0x001f]
    mov bx, word [bp + 0x6]
    mov byte [bx + 0x9], al
    mov al, byte [bp - 0x000c]
    mov bx, word [bp + 0x6]
    mov byte [bx + 0xa], al
    mov al, byte [bp - 0x0008]
    mov bx, word [bp + 0x6]
    mov byte [bx + 0xb], al
    mov bx, word [bp + 0x8]
    mov word [bx], 0
    ret
api_idx_004e:
    mov ax, 0xffb2
    call 0xf40b
    mov ax, 0
    push ax
    mov bx, word [bp + 0x4]
    push word [bx]
    lea ax, word [bp - 0x004a]
    push ax
    mov ax, 1
    push ax
    call 0xb63c
    add sp, byte 8
    mov bx, word [bp + 0x6]
    mov al, byte [bx + 0x6]
    sub ah, ah
    push ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x6]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    cmp ax, word [bp - 0x0024]
    jge short 0x431d
    jmp short 0x4320
    mov ax, word [bp - 0x0024]
    mov word [bp - 0x004c], ax
    push ax
    mov al, byte [bx + 0x6]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    mov word [bp - 0x004e], ax
    mov al, byte [bx + 0x6]
    sub ah, ah
    mov cx, ax
    mov ax, word [bp - 0x004e]
    add cx, ax
    mov ax, cx
    mov byte [bx + 0x6], al
    mov bx, word [bp + 0x6]
    mov al, byte [bx + 0x6]
    sub ah, ah
    sub ax, word [bp - 0x004e]
    mov byte [bx + 0x6], al
    cmp byte [bx + 0x6], 0
    ja short 0x435a
    mov word [bx], 0
    ret
api_idx_0002_4:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx + 0xb1a]
    mov bx, word [bp + 0x4]
    mov cx, word [bx]
    cmp ax, cx
    jne short 0x4390
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx + 0xb1c]
    mov bx, word [bp + 0x6]
    mov cx, word [bx]
    cmp ax, cx
    je short 0x43ba
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx + 0xb1c]
    mov bx, word [bp + 0x4]
    mov cx, word [bx]
    cmp ax, cx
    jne short 0x440f
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx + 0xb1a]
    mov bx, word [bp + 0x6]
    mov cx, word [bx]
    cmp ax, cx
    jne short 0x440f
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x7]
    sub ah, ah
    test ax, 0x20
    je short 0x43d5
    push word [bp + 0x6]
    push bx
    call api_idx_004e
    add sp, byte 4
    mov ax, 1
    ret
    mov bx, word [bp + 0x6]
    mov al, byte [bx + 0x7]
    sub ah, ah
    test ax, 0x20
    je short 0x43f0
    push word [bp + 0x4]
    push bx
    call api_idx_004e
    add sp, byte 4
    mov ax, 1
    ret
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    push word [bx + 0xb1e]
    call api_idx_0048
    add sp, byte 8
    mov ax, 1
    ret
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xf
    jge short 0x441d
    jmp near 0x4366
    mov ax, 0
    ret
api_idx_0002_5:
    mov ax, 0xfffe
    call 0xf40b
    mov bx, word [bp + 0x4]
    mov ax, word [bx]
    mov bx, word [bp + 0x6]
    mov cx, word [bx]
    cmp ax, cx
    je short 0x4438
    jmp near 0x44e9
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x4]
    sub ah, ah
    mov bx, ax
    cmp byte [bx + 0x60e], 1
    je short 0x444c
    jmp near 0x44e9
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x6]
    sub ah, ah
    push ax
    mov bx, word [bp + 0x6]
    mov al, byte [bx + 0x6]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0002], ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x7]
    sub ah, ah
    test ax, 0x80
    je short 0x448c
    mov bx, word [bp + 0x6]
    mov al, byte [bx + 0x7]
    sub ah, ah
    or ax, 0x80
    mov byte [bx + 0x7], al
    push word [bp + 0x8]
    push word [bp + 0xa]
    call 0xf364
    add sp, byte 4
    mov bx, word [bp + 0x6]
    mov al, byte [bx + 0x7]
    sub ah, ah
    test ax, 0x80
    je short 0x44b3
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x7]
    sub ah, ah
    or ax, 0x80
    mov byte [bx + 0x7], al
    push word [bp + 0xa]
    push word [bp + 0x8]
    call 0xf364
    add sp, byte 4
    cmp word [bp - 0x0002], strict word 0xfa
    jg short 0x44cc
    mov al, byte [bp - 0x0002]
    mov bx, word [bp + 0x4]
    mov byte [bx + 0x6], al
    mov bx, word [bp + 0x6]
    mov word [bx], 0
    jmp short 0x44df
    mov bx, word [bp + 0x4]
    mov byte [bx + 0x6], 0xfa
    mov ax, word [bp - 0x0002]
    add ax, 0xff06
    mov bx, word [bp + 0x6]
    mov byte [bx + 0x6], al
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp short 0x4504
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0002_4
    add sp, byte 6
    test ax, ax
    je short 0x4504
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    ret
api_idx_000e_2:
    mov ax, 0xfff2
    call 0xf40b
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x4]
    sub ah, ah
    mov bx, ax
    cmp byte [bx + 0x60e], 1
    jne short 0x4572
    mov bx, word [bp + 0x4]
    cmp byte [bx + 0x6], 1
    jbe short 0x4572
    mov ax, 0xc
    push ax
    push word [bp + 0x6]
    push bx
    call 0xfedc
    add sp, byte 6
    push word [bp + 0x8]
    push word [bp + 0xa]
    call 0xf364
    add sp, byte 4
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x6]
    sub ah, ah
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x0002], ax
    mov al, byte [bx + 0x6]
    sub ah, ah
    mov cx, ax
    mov ax, word [bp - 0x0002]
    sub cx, ax
    mov ax, cx
    mov byte [bx + 0x6], al
    mov al, byte [bp - 0x0002]
    mov bx, word [bp + 0x6]
    mov byte [bx + 0x6], al
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    ret
api_idx_0002_6:
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0xffff
    mov bx, word [bp + 0x6]
    mov al, byte [bx + 0x38]
    sub ah, ah
    jmp near 0x4612
    mov word [bp - 0x0002], 0
    mov bx, word [bp + 0x6]
    mov al, byte [bx + 0x37]
    sub ah, ah
    test ax, 8
    je short 0x45a0
    mov word [bp - 0x0002], 0xfffe
    jmp near 0x461f
    mov word [bp - 0x0002], 1
    jmp near 0x461f
    mov word [bp - 0x0002], 2
    jmp short 0x461f
    mov word [bp - 0x0002], 3
    jmp short 0x461f
    mov word [bp - 0x0002], 4
    jmp short 0x461f
    mov word [bp - 0x0002], 5
    jmp short 0x461f
    mov word [bp - 0x0002], 6
    jmp short 0x461f
    mov word [bp - 0x0002], 7
    jmp short 0x461f
    mov word [bp - 0x0002], 1
    jmp short 0x461f
    mov bx, word [bp + 0x6]
    mov al, byte [bx + 0x37]
    sub ah, ah
    test ax, 8
    je short 0x45ee
    mov word [bp - 0x0002], 1
    jmp short 0x461f
    rcl byte [di - 0x6a30], 1
    rcl byte [di - 0x6a30], 1
    jmp far 0xf995:0xf295
    xchg bp, ax
    add byte [bp - 0x69f9], dl
    push cs
    xchg si, ax
    adc ax, 0x1c96
    xchg si, ax
    rcl byte [di - 0x69dd], 1
    and dx, word [bp - 0x69dd]
    rcl byte [di + 0x113d], 1
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x69c9]
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x32
    push ax
    call 0xec74
    add sp, byte 4
    cmp ax, strict word 1
    jne short 0x4682
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2b]
    sub ah, ah
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x34
    push ax
    call 0xec74
    add sp, byte 4
    cmp ax, strict word 1
    jne short 0x4682
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2c]
    sub ah, ah
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x36
    push ax
    call 0xec74
    add sp, byte 4
    cmp ax, strict word 1
    je short 0x4687
    mov word [bp - 0x0002], 0xffff
    mov ax, word [bp - 0x0002]
math_loc_468a:
    ret
api_idx_0056:
    mov ax, 0xffaa
    call 0xf40b
    lea ax, word [bp - 0x0056]
    push ax
    mov ax, 0x164
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0056]
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x10f
    sub ax, cx
    mov word [bp - 0x0002], ax
    mov ax, 0x3e
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x39
    push ax
    push word [bp - 0x0002]
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x0004], dx
    mov word [bp - 0x0006], ax
    mov ax, 0x39
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
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0056]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0x3e
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x39
    push ax
    push word [bp - 0x0002]
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    push word [0x905a]
    call 0xb75e
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    push word [bp - 0x0006]
    call 0xe94f
    add sp, byte 6
    mov ax, 0x3e
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x39
    push ax
    push word [bp - 0x0002]
    call 0xe8da
    add sp, byte 8
    ret
math_loc_474b:
    mov ax, 0
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    cmp ax, 0xff
    je short 0x478f
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    mov cx, 0xc
    imul cx
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 2
    je short 0x478f
    mov ax, 1
    ret
    mov ax, 0
    ret
api_idx_0004_5:
    mov ax, 0xfffc
    call 0xf40b
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x44]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + 0x5d31], al
    mov word [bp - 0x0004], 0
    mov bx, word [bp + 0x8]
    mov si, word [bp - 0x0004]
    mov al, byte [bx + si + 0x2a]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov dx, ax
    add cx, ax
    add cx, si
    mov bx, cx
    pop ax
    mov byte [bx + 0x5d28], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 8
    jl short 0x47be
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d8d]
    sub ah, ah
    mov cx, 5
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    cmp byte [bx + 0x5e2d], 0xc
    je short 0x4813
    cmp byte [bx + 0x5e2d], 0xd
    jne short 0x4833
    mov ax, 0x12
    imul word [bp + 0x6]
    add bx, ax
    mov al, byte [bx + 0x5d2e]
    sub ah, ah
    mov cx, ax
    mov ax, word [bp - 0x0004]
    add cx, ax
    mov ax, cx
    add ax, strict word 5
    mov byte [bx + 0x5d2e], al
    jmp short 0x485a
    cmp word [bp - 0x0004], byte 0
    jle short 0x485a
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5d2e]
    sub ah, ah
    add ax, word [bp - 0x0004]
    mov byte [bx + 0x5d2e], al
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x45]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + 0x5d30], al
    mov bx, word [bp + 0x8]
    cmp byte [bx + 0x38], 4
    jne short 0x48d2
    mov al, byte [bx + 0x41]
    cbw
    mov cx, 5
    imul cx
    mov cx, ax
    mov ax, 0
    sub ax, cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + 0x5d32], al
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2d], 4
    jne short 0x48cf
    mov bx, cx
    add byte [bx + 0x5d32], 0xf1
    mov al, byte [bx + 0x5d2e]
    sub ah, ah
    shl ax, 1
    mov byte [bx + 0x5d2e], al
    jmp near 0x498c
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov byte [bx + 0x5d32], 0
    cmp word [bp + 0x6], byte 0
    jne short 0x4927
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d32]
    cbw
    mov cx, 0
    cmp byte [bx + 0x5d68], 0xf
    jbe short 0x490b
    mov cx, 5
    sub ax, cx
    mov byte [bx + 0x5d32], al
    cbw
    mov cx, 0
    cmp byte [bx + 0x5d68], 0x11
    jbe short 0x491f
    mov cx, 5
    sub ax, cx
    mov byte [bx + 0x5d32], al
    jmp short 0x4947
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d44]
    cbw
    mov cx, 0
    cmp byte [bx + 0x5d68], 0x11
    jbe short 0x4941
    mov cx, 5
    sub ax, cx
    mov byte [bx + 0x5d44], al
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5d32]
    cbw
    push ax
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x41]
    cbw
    mov cx, 5
    imul cx
    mov cx, ax
    pop ax
    sub ax, cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + 0x5d32], al
    mov si, word [bp + 0x8]
    add si, byte 0x1e
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    mov di, ax
    add ax, 0x5d24
    mov di, ax
    mov cx, ds
    mov es, cx
    movsw
    movsw
    cmp word [bp + 0x6], byte 0
    jne short 0x49e3
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d64], 0xf
    jbe short 0x49cb
    mov ax, 1
    jmp short 0x49ce
    mov ax, 0
    add word [bx + 0x5d24], ax
    mov ax, 0
    cmp byte [bx + 0x5d64], 0x11
    jbe short 0x49df
    mov ax, 1
    add word [bx + 0x5d24], ax
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x46]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + 0x5d33], al
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x42]
    mov bx, cx
    mov byte [bx + 0x5d34], al
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x43]
    mov bx, cx
    mov byte [bx + 0x5d35], al
    ret
api_idx_0048_2:
    mov ax, 0xffb8
    call 0xf40b
    mov ax, 0
    push ax
    mov bx, word [bp + 0x6]
    push word [bx]
    lea ax, word [bp - 0x0048]
    push ax
    mov ax, 1
    push ax
    call 0xb63c
    add sp, byte 8
    mov al, byte [bp - 0x000a]
    sub ah, ah
    ret
api_idx_0072:
    mov ax, 0xff8e
    call 0xf40b
    mov word [0x95ea], 0
    mov word [bp - 0x000c], 0
    mov word [bp - 0x000e], 0
    cmp word [bp - 0x000c], byte 2
    jge short 0x4aab
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x000c]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x000e]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x5c34], byte 0
    jle short 0x4aab
    inc word [bp - 0x000e]
    mov ax, word [bp - 0x000e]
    cmp ax, strict word 0xa
    jne short 0x4aa9
    mov word [bp - 0x000e], 0
    inc word [bp - 0x000c]
    mov ax, word [bp - 0x000c]
    cmp ax, strict word 2
    jne short 0x4aa9
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    mov ax, 0xffff
    ret
    jmp short 0x4a55
    mov ax, 0
    push ax
    mov bx, word [bp + 0x6]
    push word [bx]
    lea ax, word [bp - 0x0066]
    push ax
    mov ax, 1
    push ax
    call 0xb63c
    add sp, byte 8
    lea ax, word [bp - 0x0066]
    push ax
    push word [bp + 0x4]
    call api_idx_0002_6
    add sp, byte 4
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    jne short 0x4ae3
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    mov ax, 0xffff
    ret
    cmp word [bp - 0x0006], byte 0xfe
    jne short 0x4b15
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_474b
    add sp, byte 4
    test ax, ax
    je short 0x4aff
    mov word [bp - 0x0006], 1
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call math_loc_474b
    add sp, byte 4
    test ax, ax
    je short 0x4b15
    mov word [bp - 0x0006], 0
    mov al, byte [bp - 0x002f]
    sub ah, ah
    test ax, 4
    je short 0x4b37
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call math_loc_474b
    add sp, byte 4
    test ax, ax
    je short 0x4b37
    call api_idx_0056
    mov ax, 0xffff
    ret
    push word [bp - 0x0006]
    push word [bp + 0x4]
    call math_loc_474b
    add sp, byte 4
    test ax, ax
    je short 0x4b4e
    call api_idx_0056
    mov ax, 0xffff
    ret
    cmp word [bp - 0x0006], byte 1
    jne short 0x4b91
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    cmp ax, 0xff
    je short 0x4b91
    mov cx, 0xc
    imul cx
    add bx, ax
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 8
    je short 0x4b91
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_474b
    add sp, byte 4
    test ax, ax
    je short 0x4b91
    call api_idx_0056
    mov ax, 0xffff
    ret
    cmp word [bp - 0x0006], byte 0xfe
    jne short 0x4bf9
    mov ax, 0xc6
    push ax
    mov ax, 0xbd
    push ax
    mov ax, 0xbb
    push ax
    mov ax, 3
    push ax
    call 0xe8da
    add sp, byte 8
    mov word [bp - 0x001e], 1
    mov word [bp - 0x001c], 1
    mov word [bp - 0x001a], 0xffff
    lea ax, word [bp - 0x001e]
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
    mov ax, 0x70
    push ax
    mov ax, 0x4a
    push ax
    mov ax, 0x15e
    push ax
    mov ax, 0x15f
    push ax
    call math_loc_1ca0
    add sp, byte 0x1a
    mov word [bp - 0x0006], ax
    cmp word [bp - 0x0006], byte 0
    jne short 0x4c2b
    mov al, byte [bp - 0x002f]
    sub ah, ah
    test ax, 4
    je short 0x4c29
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d49]
    sub ah, ah
    mov word [bp - 0x000a], ax
    cmp ax, 0xff
    je short 0x4c29
    push ax
    push word [bp + 0x4]
    call 0xc7dc
    add sp, byte 4
    jmp short 0x4c65
    cmp word [bp - 0x0006], byte 1
    jne short 0x4c65
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    mov word [bp - 0x000a], ax
    cmp ax, 0xff
    je short 0x4c65
    mov cx, 0xc
    imul cx
    add bx, ax
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 8
    je short 0x4c65
    push word [bp - 0x000a]
    push word [bp + 0x4]
    call 0xc7dc
    add sp, byte 4
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    mov word [bp - 0x000a], ax
    cmp ax, 0xff
    je short 0x4c88
    push ax
    push word [bp + 0x4]
    call 0xc7dc
    add sp, byte 4
    cmp word [bp - 0x000c], byte 0
    je short 0x4cd3
    mov ax, 0x248
    imul word [bp + 0x4]
    mov si, ax
    add ax, 0x5ca0
    mov si, ax
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x000c]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x000e]
    mov cx, ax
    pop ax
    add ax, cx
    mov di, ax
    add ax, 0x5c34
    mov di, ax
    mov cx, ds
    mov es, cx
    mov cx, 6
    rep movsw
    mov word [bp - 0x000c], 0
    mov word [bp - 0x000e], 9
    mov ax, word [bp - 0x000e]
    mov word [0x95ea], ax
    mov si, word [bp + 0x6]
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x000c]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x000e]
    mov cx, ax
    pop ax
    add ax, cx
    mov di, ax
    add ax, 0x5c34
    mov di, ax
    mov cx, ds
    mov es, cx
    mov cx, 6
    rep movsw
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x000c]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x000e]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    or byte [bx + 0x5c3b], 1
    mov al, byte [bp - 0x000e]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    add ax, word [bp - 0x0006]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5d48], al
    cmp byte [bp - 0x0029], 0
    jbe short 0x4d6b
    mov ax, 0x78
    imul word [bp - 0x000c]
    add cx, ax
    mov ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x000e]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    or byte [bx + 0x5c3b], 2
    call api_idx_0056
    mov word [bp - 0x0002], 0
    mov word [bp - 0x000a], 0
    cmp word [bp - 0x0002], byte 8
    jl short 0x4d7e
    jmp near 0x4e7f
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    mov word [bp - 0x000e], ax
    cmp ax, 0xff
    jne short 0x4d9a
    jmp near 0x4e79
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0xc
    imul word [bp - 0x000e]
    mov cx, ax
    pop ax
    add ax, cx
    mov si, ax
    add ax, 0x5c34
    mov si, ax
    lea di, word [bp - 0x0072]
    mov cx, ds
    mov es, cx
    mov cx, 6
    rep movsw
    mov ax, word [bp - 0x000e]
    cmp ax, word [bp - 0x000a]
    jle short 0x4e2d
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0xc
    imul word [bp - 0x000e]
    mov cx, ax
    pop ax
    add ax, cx
    mov si, ax
    add ax, 0x5c28
    mov si, ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, cx
    mov di, ax
    add ax, 0x5c34
    mov di, ax
    mov cx, ds
    mov es, cx
    mov cx, 6
    rep movsw
    mov word [bp - 0x0004], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    mov cx, word [bp - 0x000e]
    dec cx
    cmp ax, cx
    jne short 0x4e1d
    mov al, byte [bp - 0x000e]
    mov byte [bx + 0x5d48], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 8
    jl short 0x4dfd
    dec word [bp - 0x000e]
    jmp short 0x4dbf
    lea si, word [bp - 0x0072]
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0xc
    imul word [bp - 0x000a]
    mov cx, ax
    pop ax
    add ax, cx
    mov di, ax
    add ax, 0x5c34
    mov di, ax
    mov cx, ds
    mov es, cx
    mov cx, 6
    rep movsw
    mov al, byte [bp - 0x000a]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    add ax, word [bp - 0x0002]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5d48], al
    mov ax, word [bp - 0x0006]
    cmp ax, word [bp - 0x0002]
    jne short 0x4e76
    mov ax, word [bp - 0x000a]
    mov word [0x95ea], ax
    inc word [bp - 0x000a]
    inc word [bp - 0x0002]
    jmp near 0x4d75
    cmp word [bp - 0x0006], byte 0
    je short 0x4e8d
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 1
    jne short 0x4eb0
    mov al, byte [bp - 0x0026]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    sub byte [bx + 0x5dab], al
    lea ax, word [bp - 0x0066]
    push ax
    push word [bp - 0x0006]
    push word [bp + 0x4]
    call api_idx_0004_5
    add sp, byte 6
    jmp short 0x4ec6
    mov al, byte [bp - 0x0026]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    add ax, word [bp - 0x0006]
    mov bx, ax
    pop ax
    sub byte [bx + 0x5daa], al
    mov word [bp - 0x0002], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d8e]
    mov byte [bx + 0x5d9c], al
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xe
    jl short 0x4ecb
    mov word [bp - 0x0002], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    cmp ax, 0xff
    jne short 0x4f07
    jmp near 0x4ff2
    mov word [bp - 0x0010], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    mov cx, 0xc
    imul cx
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp - 0x0010]
    mov bx, ax
    mov al, byte [bx + 0x5c3c]
    sub ah, ah
    mov cx, 0x10
    cwd
    idiv cx
    mov word [bp - 0x0012], ax
    mov ax, 0xa
    imul dx
    mov word [bp - 0x0014], ax
    mov ax, 0x7d
    push ax
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0012]
    mov bx, ax
    mov al, byte [bx + 0x5d9c]
    sub ah, ah
    add ax, word [bp - 0x0014]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    add ax, word [bp - 0x0012]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5d9c], al
    inc word [bp - 0x0010]
    mov ax, word [bp - 0x0010]
    cmp ax, strict word 2
    jl short 0x4f0c
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    mov cx, 0xc
    imul cx
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3e]
    sub ah, ah
    mov cx, 0x10
    cwd
    idiv cx
    mov word [bp - 0x0012], ax
    mov word [bp - 0x0014], dx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e30]
    sub ah, ah
    mov dx, word [bp - 0x0014]
    cmp ax, dx
    jge short 0x4fce
    mov ax, dx
    jmp short 0x4fd4
    mov al, byte [bx + 0x5e30]
    sub ah, ah
    mov byte [bx + 0x5e30], al
    mov al, byte [bx + 0x5e31]
    sub ah, ah
    cmp ax, word [bp - 0x0012]
    jge short 0x4fe8
    mov ax, word [bp - 0x0012]
    jmp short 0x4fee
    mov al, byte [bx + 0x5e31]
    sub ah, ah
    mov byte [bx + 0x5e31], al
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jge short 0x5000
    jmp near 0x4eee
    mov al, byte [bp - 0x0028]
    sub ah, ah
    ret
    mov ax, 0xfffe
    call 0xf40b
    push word [bp + 0xa]
    call 0xb7a9
    pop cx
    add ax, word [bp + 0x8]
    mov word [bp - 0x0002], ax
    mov ax, 0x64
    push ax
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx + 0x5d6c]
    sub ah, ah
    add ax, word [bp - 0x0002]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    add ax, word [bp + 0x6]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5d6c], al
    ret
api_idx_0010_2:
    mov ax, 0xfff0
    call 0xf40b
    mov word [bp - 0x0010], 1
    mov word [bp - 0x000e], 1
    mov word [bp - 0x000c], 0xffff
    lea ax, word [bp - 0x0010]
    push ax
    mov ax, 1
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
    mov ax, 0x70
    push ax
    mov ax, 0x4a
    push ax
    mov ax, 0x161
    push ax
    mov ax, 0x162
    push ax
    call math_loc_1ca0
    add sp, byte 0x1a
    mov word [bp - 0x0006], ax
    cmp word [bp - 0x0006], byte 0
    je short 0x50ab
    jmp near 0x539d
    cmp word [bp + 0xa], byte 9
    jge short 0x50d5
    mov ax, word [bp + 0xa]
    dec ax
    mov word [bp - 0x0004], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, word [bp - 0x0004]
    add cx, ax
    mov bx, cx
    cmp byte [bx + 0x5d64], 0x14
    jae short 0x50d2
    inc byte [bx + 0x5d64]
    jmp near 0x538e
    mov ax, word [bp + 0xa]
    jmp near 0x537e
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e37], 4
    jae short 0x50ef
    mov byte [bx + 0x5e37], 4
    jmp near 0x538e
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e38], 4
math_loc_50ff:
    jae short 0x5106
    mov byte [bx + 0x5e38], 4
    jmp near 0x538e
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + 0x5e2f], 0
    mov word [bp - 0x0004], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov byte [bx + 0x5d5a], 0
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0xa
    jl short 0x511b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c0e]
    mov word [bx + 0x5c0c], ax
    mov ax, word [bx + 0x5c12]
    mov word [bx + 0x5c10], ax
    cmp word [bp + 0xa], byte 0x0b
    je short 0x51a1
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5bfc]
    mov dx, word [bx + 0x5bfe]
    mov cx, 0x16d
    mov bx, 0
    call 0xf99f
    cmp dx, byte 0
    jl short 0x5179
    jne short 0x517b
    cmp ax, strict word 0x12
    ja short 0x517b
    jmp short 0x518e
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    add word [bx + 0x5bfc], strict word 0xfe92
    adc word [bx + 0x5bfe], byte 0xff
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d67], 0x12
    jae short 0x51a1
    inc byte [bx + 0x5d67]
    jmp near 0x538e
    mov ax, 5
    push ax
    call 0xb7a9
    pop cx
    inc ax
    inc ax
    mov word [bp - 0x0004], ax
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    add word [bx + 0x5c0e], ax
    add word [bx + 0x5c0c], ax
    jmp near 0x538e
    mov word [bp - 0x0004], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1e]
    mov word [bx + 0x5c1c], ax
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 6
    jl short 0x51cb
    jmp near 0x538e
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d68], 0x12
    jae short 0x5206
    mov byte [bx + 0x5d68], 0x12
    cmp byte [bx + 0x5d69], 0x12
    jae short 0x5212
    mov byte [bx + 0x5d69], 0x12
    mov ax, 5
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x21
    push ax
    push word [bp + 0x4]
    call 0x5006
    add sp, byte 8
    jmp near 0x538e
    mov word [bp - 0x0002], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d6b], 0
    jbe short 0x5255
    cmp word [bp - 0x0002], byte 0
    jne short 0x5255
    dec byte [bx + 0x5d6b]
    mov ax, 3
    push ax
    call 0xb7a9
    pop cx
    mov word [bp - 0x0002], ax
    jmp short 0x522f
    jmp near 0x538e
    mov ax, 4
    push ax
    mov ax, 3
    push ax
    mov ax, 0x16
    push ax
    push word [bp + 0x4]
    call 0x5006
    add sp, byte 8
    jmp near 0x538e
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    mov ax, 0xa
    push ax
    push word [bp + 0x4]
    call 0x5006
    add sp, byte 8
    jmp near 0x538e
    mov ax, 4
    push ax
    mov ax, 3
    push ax
    mov ax, 0x13
    push ax
    push word [bp + 0x4]
    call 0x5006
    add sp, byte 8
    jmp near 0x538e
    mov ax, 3
    push ax
    mov ax, 2
    push ax
    mov ax, 0x18
    push ax
    push word [bp + 0x4]
    call 0x5006
    add sp, byte 8
    jmp near 0x538e
    mov ax, 4
    push ax
    mov ax, 3
    push ax
    mov ax, 0xf
    push ax
    push word [bp + 0x4]
    call 0x5006
    add sp, byte 8
    jmp near 0x538e
    mov ax, 4
    push ax
    mov ax, 3
    push ax
    mov ax, 0x10
    push ax
    push word [bp + 0x4]
    call 0x5006
    add sp, byte 8
    jmp near 0x538e
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    mov ax, 0xc
    push ax
    push word [bp + 0x4]
    call 0x5006
    add sp, byte 8
    jmp near 0x538e
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    mov ax, 0xb
    push ax
    push word [bp + 0x4]
    call 0x5006
    add sp, byte 8
    jmp short 0x538e
    mov ax, 4
    push ax
    mov ax, 3
    push ax
    mov ax, 0x15
    push ax
    push word [bp + 0x4]
    call 0x5006
    add sp, byte 8
    jmp short 0x538e
    and ah, byte [bx + di - 0x5ec7]
    push ax
    mov ax, word [0xa195]
    jmp short 0x52d9
    or ax, 0x39a2
    mov byte [0xa271], al
    push ax
    mov ax, word [0xa3d5]
    aad 0xa3
    aad 0xa3
    aad 0xa3
    aad 0xa3
    aad 0xa3
    aad 0xa3
    aad 0xa3
    aad 0xa3
    aad 0xa3
    aad 0xa3
    aad 0xa3
    aad 0xa3
    aad 0xa3
    aad 0xa3
    aad 0xa3
    aad 0xa3
    aad 0xa3
    aad 0xa3
    aad 0xa3
    aad 0xa3
    aad 0xa3
    lahf
    mov byte [0xa2b7], al
    iret
    mov byte [0xa2e7], al
    jmp [bp + si - 0x5ce9]
    das
    mov word [0xa347], ax
    pop si
    db 0xa3
    sub ax, strict word 9
    cmp ax, strict word 0x28
    jae short 0x538e
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x5c8b]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0xca27
    add sp, byte 6
    ret
api_idx_0008_2:
    mov ax, 0xfff8
    call 0xf40b
    mov word [bp - 0x0006], 0xffff
    mov word [bp - 0x0008], 0xffff
    mov ax, word [0x0e0e]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    jmp short 0x5409
    mov bx, word [bp - 0x0004]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, 0xff
    jne short 0x53cb
    mov ax, word [bp - 0x0002]
    ret
    mov al, byte [bx + 0x1]
    sub ah, ah
    test ax, 0x40
    jne short 0x5402
    cmp word [bp - 0x0006], byte 0xff
    je short 0x53e7
    mov ax, 7
    push ax
    call 0xb7a9
    pop cx
    test ax, ax
    jne short 0x5402
    mov bx, word [bp - 0x0004]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [0x830c]
    jne short 0x53fc
    mov ax, word [bp - 0x0002]
    mov word [bp - 0x0008], ax
    jmp short 0x5402
    mov ax, word [bp - 0x0002]
    mov word [bp - 0x0006], ax
    add word [bp - 0x0004], byte 8
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x5910]
    jl short 0x53bb
    cmp word [bp + 0x4], byte 0
    je short 0x5426
    cmp word [bp - 0x0006], byte 0xff
    jne short 0x5422
    mov ax, word [bp - 0x0008]
    ret
    mov ax, word [bp - 0x0006]
    ret
    mov ax, 0xffff
    ret
api_idx_0004_6:
    mov ax, 0xfffc
    call 0xf40b
    mov ax, 0
    push ax
    call api_idx_0008_2
    pop cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x546d
    cmp word [0x5910], byte 0x7f
    jl short 0x5463
    mov ax, 1
    push ax
    call api_idx_0008_2
    pop cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x5461
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp short 0x5457
    jmp short 0x546d
    mov ax, word [0x5910]
    mov word [bp - 0x0002], ax
    inc word [0x5910]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    mov ax, word [0x0e0e]
    add ax, cx
    mov word [bp - 0x0004], ax
    mov al, byte [0x830c]
    mov bx, word [bp - 0x0004]
    mov byte [bx], al
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x7]
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x1], al
    mov ax, word [0x8f3e]
    xchg al, ah
    sub al, al
    mov dx, word [0x8f42]
    mov cx, 4
    shl dx, cl
    mov cx, dx
    add ax, cx
    add ax, word [0x8f40]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x2], ax
    mov bx, word [bp + 0x4]
    mov ax, word [bx]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x4], ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x5]
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x7], al
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x6]
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x6], al
    mov ax, 1
    push ax
    mov ax, word [0x8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [0x8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [0x8f42]
    push ax
    mov ax, 0x8bfe
    push ax
    call 0xec41
    add sp, byte 6
    ret
api_idx_00c2:
    mov ax, 0xff3e
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [0x9434]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 2
    je short 0x5577
    call api_idx_0056
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [0x9434]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    add ax, 0x5c34
    push ax
    push word [bp + 0x4]
    call api_idx_0048_2
    add sp, byte 4
    mov word [bp - 0x0014], ax
    cmp word [bp - 0x0014], byte 0
    je short 0x5576
    push ax
    push word [bp + 0x6]
    push word [0x9434]
    push word [bp + 0x4]
    call api_idx_0010_2
    add sp, byte 8
    ret
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [0x9434]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    and ax, strict word 0xfffe
    mov byte [bx + 0x5c3b], al
    add bx, strict word 0x5c34
    mov si, bx
    lea di, word [bp - 0x002c]
    mov cx, ds
    mov es, cx
    mov cx, 6
    rep movsw
    mov ax, 0x16
    imul word [bp + 0x6]
    add ax, 0x9436
    push ax
    lea ax, word [bp - 0x004e]
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6a14]
    mov word [bp - 0x0066], ax
    mov ax, word [bx - 0x6a00]
    mov word [bp - 0x006a], ax
    push word [bp + 0x6]
    push word [0x9434]
    push word [bp + 0x4]
    call 0xc9e8
    add sp, byte 6
    mov word [0x9614], 1
    push word [bp + 0x4]
    call api_idx_004c
    pop cx
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0066]
    lea ax, word [bp - 0x004e]
    push ax
    lea ax, word [bp - 0x002c]
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0012_2
    add sp, byte 0x0e
    mov word [bp - 0x000a], 4
    mov word [bp - 0x000c], 0xbc
    mov word [bp - 0x000e], 7
    mov ax, 6
    imul word [bp - 0x000e]
    add ax, strict word 4
    mov word [bp - 0x0010], ax
    mov word [bp - 0x0012], 4
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xa
    push ax
    mov ax, word [bp - 0x0010]
    imul word [bp - 0x0012]
    add ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x000c]
    dec ax
    push ax
    mov ax, word [bp - 0x000a]
    dec ax
    push ax
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x001e], dx
    mov word [bp - 0x0020], ax
    mov word [bp - 0x001a], 1
    mov word [bp - 0x001c], 0
    mov word [bp - 0x0002], 0
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    inc ax
    mov cx, 0xa
    cwd
    idiv cx
    mov ax, dx
    add ax, strict word 0x30
    cbw
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 5
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xe
    imul cx
    add ax, strict word 0x7d
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 5
    cwd
    idiv cx
    mov cx, 0x4f
    imul cx
    add ax, strict word 0x4e
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 5
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xe
    imul cx
    add ax, strict word 0x71
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 5
    cwd
    idiv cx
    mov cx, 0x4f
    imul cx
    inc ax
    inc ax
    push ax
    push word [bp - 0x0002]
    call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jl short 0x5670
    mov ax, 0
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
    mov ax, 0xa
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
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
    mov ax, 0xb
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x42
    push ax
    mov ax, 0x6e
    push ax
    mov ax, 0xf2
    push ax
    mov ax, 0x53
    push ax
    mov ax, 0xdb
    push ax
    mov ax, 0xc
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x45
    push ax
    mov ax, 0x7e
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0x29
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0xd
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x006a]
    mov word [bp - 0x0016], ax
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0098], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short 0x5777
    cmp word [0x905e], byte 4
    je short 0x579f
    cmp word [0x905e], byte 0x0d
    jne short 0x57ab
    mov word [bp - 0x0098], 0
    mov word [bp - 0x0092], 0
    push word [bp + 0x4]
    call 0xca85
    pop cx
    test ax, ax
    jne short 0x57c2
    mov word [bp - 0x0098], 0
    mov word [bp - 0x0096], 0
    mov word [bp - 0x0090], 0xffff
    mov ax, 0
    push ax
    push word [bp - 0x001e]
    push word [bp - 0x0020]
    call 0xe94f
    add sp, byte 6
    mov word [bp - 0x0070], 0
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0098], byte 0xff
    jne short 0x57f5
    jmp near 0x58f6
    cmp word [bx - 0x0098], byte 1
    je short 0x57ff
    jmp near 0x58f0
    mov ax, word [bp - 0x0002]
    cmp word [bp - 0x0002], byte 0
    jne short 0x580b
    mov ax, word [bp - 0x0016]
    mov word [bp - 0x0018], ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 8
    push ax
    mov ax, word [bp - 0x0010]
    imul word [bp - 0x0070]
    push ax
    mov ax, 6
    imul word [bp - 0x000e]
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp - 0x000a]
    push ax
    push word [bp - 0x000c]
    mov ax, word [bp - 0x0010]
    imul word [bp - 0x0070]
    add ax, word [bp - 0x000a]
    push ax
    call 0xbce3
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x000c]
    inc ax
    inc ax
    push ax
    mov ax, 0xa
    imul word [bp - 0x0018]
    add ax, 0x9616
    push ax
    call 0xfa90
    pop cx
    mov cx, ax
    mov ax, word [bp - 0x000e]
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    push ax
    mov ax, word [bp - 0x0010]
    imul word [bp - 0x0070]
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp - 0x000a]
    inc ax
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp - 0x0018]
    add ax, 0x9616
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 8
    push ax
    mov ax, word [bp - 0x0010]
    imul word [bp - 0x0070]
    push ax
    mov ax, 6
    imul word [bp - 0x000e]
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp - 0x000a]
    push ax
    push word [bp - 0x000c]
    mov ax, word [bp - 0x0010]
    imul word [bp - 0x0070]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp - 0x0070]
    add ax, strict word 0xe
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0070]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x0084], ax
    inc word [bp - 0x0070]
    inc word [bp - 0x0002]
    jmp near 0x57e2
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp - 0x0070]
    add ax, strict word 0xe
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xa
    push ax
    mov ax, word [bp - 0x0010]
    imul word [bp - 0x0012]
    add ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x000c]
    dec ax
    push ax
    mov ax, word [bp - 0x000a]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov word [bp - 0x001a], 1
    mov word [bp - 0x001c], 0
    cmp word [0x0e32], byte 0
    je short 0x5958
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x0004], ax
    cmp word [0x5b3e], byte 0
    je short 0x5942
    jmp near 0x5b27
    cmp word [bp - 0x001c], byte 0
    je short 0x5961
    jmp near 0x5ac6
    mov word [bp - 0x0004], 0xffff
    mov word [bp - 0x0002], 0
    mov ax, 0x16
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 8
    push ax
    mov ax, word [bp - 0x0010]
    imul word [bp - 0x0002]
    push ax
    mov ax, 6
    imul word [bp - 0x000e]
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp - 0x000a]
    push ax
    push word [bp - 0x000c]
    mov ax, word [bp - 0x0010]
    imul word [bp - 0x0002]
    add ax, word [bp - 0x000a]
    push ax
    call loc_1c25
    add sp, byte 0x0a
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xa
    push ax
    mov ax, word [bp - 0x0010]
    imul word [bp - 0x0012]
    add ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x000c]
    dec ax
    push ax
    mov ax, word [bp - 0x000a]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 8
    push ax
    mov ax, word [bp - 0x0010]
    imul word [bp - 0x0002]
    push ax
    mov ax, 6
    imul word [bp - 0x000e]
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp - 0x000a]
    push ax
    push word [bp - 0x000c]
    mov ax, word [bp - 0x0010]
    imul word [bp - 0x0002]
    add ax, word [bp - 0x000a]
    push ax
    call loc_1c25
    add sp, byte 0x0a
    mov ax, 1
    push ax
    call 0xea50
    pop cx
    test ax, ax
    jne short 0x5a03
    jmp short 0x59f5
    mov ax, 1
    push ax
    call 0xeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x009a], ax
    cmp ax, strict word 0x30
    jl short 0x5a2c
    cmp ax, strict word 0x39
    jg short 0x5a2c
    add ax, strict word 0xffcf
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0
    jge short 0x5a2a
    add word [bp - 0x0004], byte 0x0a
    jmp short 0x5a99
    mov ax, word [bp - 0x009a]
    jmp short 0x5a76
    mov word [bp - 0x0004], 0xa
    jmp short 0x5a99
    mov word [bp - 0x0004], 0xb
    jmp short 0x5a99
    mov word [bp - 0x0004], 0xc
    jmp short 0x5a99
    mov word [bp - 0x0004], 0xd
    jmp short 0x5a99
    mov ax, word [bp - 0x0002]
    add ax, word [bp - 0x0070]
    dec ax
    cwd
    idiv word [bp - 0x0070]
    mov word [bp - 0x0002], dx
    jmp short 0x5a99
    mov ax, word [bp - 0x0002]
    inc ax
    cwd
    idiv word [bp - 0x0070]
    mov word [bp - 0x0002], dx
    jmp short 0x5a99
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xe
    mov word [bp - 0x0004], ax
    jmp short 0x5a99
    cmp ax, strict word 8
    je short 0x5a4e
    cmp ax, strict word 9
    je short 0x5a39
    cmp ax, strict word 0xa
    je short 0x5a5e
    cmp ax, strict word 0xb
    je short 0x5a32
    cmp ax, strict word 0xd
    je short 0x5a6b
    cmp ax, strict word 0x42
    je short 0x5a40
    cmp ax, strict word 0x45
    je short 0x5a47
    cmp word [bp - 0x0004], byte 0xff
    jne short 0x5aa2
    jmp near 0x596b
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xa
    push ax
    mov ax, word [bp - 0x0010]
    imul word [bp - 0x0012]
    add ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x000c]
    dec ax
    push ax
    mov ax, word [bp - 0x000a]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    jmp short 0x5b27
    mov word [bp - 0x0004], 0xffff
    mov ax, 1
    push ax
    call 0xea50
    pop cx
    test ax, ax
    jne short 0x5ad9
    jmp short 0x5acb
    mov ax, 1
    push ax
    call 0xeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x009a], ax
    cmp ax, strict word 0x30
    jl short 0x5b00
    cmp ax, strict word 0x39
    jg short 0x5b00
    add ax, strict word 0xffcf
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0
    jge short 0x5b00
    add word [bp - 0x0004], byte 0x0a
    cmp word [bp - 0x009a], byte 0x0d
    je short 0x5b0e
    cmp word [bp - 0x009a], byte 0x1b
    jne short 0x5b13
    mov word [bp - 0x001c], 0
    cmp word [bp - 0x009a], byte 0x0d
    je short 0x5b27
    cmp word [bp - 0x009a], byte 0x1b
    je short 0x5b27
    cmp word [bp - 0x0004], byte 0xff
    je short 0x5acb
    cmp word [bp - 0x0004], byte 0
    jge short 0x5b30
    jmp near 0x5d35
    cmp word [bp - 0x0004], byte 0x0a
    jl short 0x5b39
    jmp near 0x5d35
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [0x9434]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0004]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x5c34], byte 0
    jle short 0x5b77
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 2
    je short 0x5b77
    call api_idx_0056
    mov word [bp - 0x001a], 2
    jmp near 0x5d32
    mov ax, word [bp - 0x0004]
    mov word [bp + 0x6], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [0x9434]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    and ax, strict word 0xfffe
    mov byte [bx + 0x5c3b], al
    add bx, strict word 0x5c34
    mov si, bx
    lea di, word [bp - 0x0038]
    mov cx, ds
    mov es, cx
    mov cx, 6
    rep movsw
    mov ax, 0x16
    imul word [bp + 0x6]
    add ax, 0x9436
    push ax
    lea ax, word [bp - 0x0064]
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6a14]
    mov word [bp - 0x0068], ax
    mov ax, word [bx - 0x6a00]
    mov word [bp - 0x006c], ax
    push word [bp + 0x6]
    push word [0x9434]
    push word [bp + 0x4]
    call 0xc9e8
    add sp, byte 6
    cmp word [bp - 0x001c], byte 0
    je short 0x5c41
    cmp word [bp - 0x0038], byte 0
    jle short 0x5c1a
    lea ax, word [bp - 0x0064]
    push ax
    lea ax, word [bp - 0x004e]
    push ax
    lea ax, word [bp - 0x0038]
    push ax
    lea ax, word [bp - 0x002c]
    push ax
    call api_idx_0002_5
    add sp, byte 8
    jmp short 0x5c3c
    lea ax, word [bp - 0x0064]
    push ax
    lea ax, word [bp - 0x004e]
    push ax
    lea ax, word [bp - 0x0038]
    push ax
    lea ax, word [bp - 0x002c]
    push ax
    call api_idx_000e_2
    add sp, byte 8
    mov ax, word [bp - 0x0066]
    mov word [bp - 0x0068], ax
    mov ax, word [bp - 0x006a]
    mov word [bp - 0x006c], ax
    mov word [bp - 0x001c], 0
    lea si, word [bp - 0x002c]
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [0x9434]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    mov di, ax
    add ax, 0x5c34
    mov di, ax
    mov cx, ds
    mov es, cx
    mov cx, 6
    rep movsw
    lea ax, word [bp - 0x004e]
    push ax
    mov ax, 0x16
    imul word [bp + 0x6]
    add ax, 0x9436
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, word [bp - 0x0066]
    mov cx, word [bp + 0x6]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6a14], ax
    mov ax, word [bp - 0x006a]
    mov word [bx - 0x6a00], ax
    lea si, word [bp - 0x0038]
    lea di, word [bp - 0x002c]
    mov cx, ds
    mov es, cx
    mov cx, 6
    rep movsw
    lea ax, word [bp - 0x0064]
    push ax
    lea ax, word [bp - 0x004e]
    push ax
    call 0xf364
    add sp, byte 4
    mov ax, word [bp - 0x0068]
    mov word [bp - 0x0066], ax
    mov ax, word [bp - 0x006c]
    mov word [bp - 0x006a], ax
    cmp word [bp - 0x0038], byte 0
    jne short 0x5d01
    mov word [0x9614], 0
    push word [bp + 0x4]
    call api_idx_004c
    pop cx
    mov ax, 6
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 0
    sub ax, word [bp + 0x6]
    dec ax
    push ax
    push word [bp + 0x4]
    call api_idx_0012_2
    add sp, byte 0x0e
    mov word [bp - 0x001a], 0
    jmp short 0x5d32
    mov word [0x9614], 1
    push word [bp + 0x4]
    call api_idx_004c
    pop cx
    mov ax, 6
    push ax
    mov ax, 0x24
    push ax
    push word [bp - 0x0066]
    lea ax, word [bp - 0x004e]
    push ax
    lea ax, word [bp - 0x002c]
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0012_2
    add sp, byte 0x0e
    mov word [bp - 0x001a], 2
    jmp near 0x6127
    cmp word [bp - 0x0004], byte 0x0e
    jge short 0x5d3e
    jmp near 0x5fb0
    mov ax, word [bp - 0x0070]
    add ax, strict word 0xe
    cmp ax, word [bp - 0x0004]
    jg short 0x5d4c
    jmp near 0x5fb0
    mov word [bp - 0x001c], 0
    add word [bp - 0x0004], byte 0xf2
    mov ax, 1
    push ax
    push ax
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    mov ax, word [bp - 0x0004]
    imul word [bp - 0x0010]
    add ax, word [bp - 0x000a]
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    mov ax, word [bp - 0x0004]
    imul word [bp - 0x0010]
    add ax, word [bp - 0x000a]
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0084], byte 0
    jne short 0x5da3
    mov ax, word [bp - 0x0016]
    jmp short 0x5da7
    mov ax, word [bx - 0x0084]
    mov word [bp - 0x0018], ax
    mov ax, 0x1a
    push ax
    mov ax, 1
    push ax
    mov ax, 9
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    push word [bp - 0x0004]
    mov ax, 0xa
    imul word [bp - 0x0018]
    add ax, 0x9616
    push ax
    call api_idx_0008
    add sp, byte 0x12
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0084]
    jmp near 0x5f93
    mov ax, 0x12c
    push ax
    call 0xe489
    pop cx
    mov ax, 0
    push ax
    push word [bp - 0x001e]
    push word [bp - 0x0020]
    call 0xe94f
    add sp, byte 6
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xa
    push ax
    mov ax, word [bp - 0x0010]
    imul word [bp - 0x0012]
    add ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x000c]
    dec ax
    push ax
    mov ax, word [bp - 0x000a]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    lea ax, word [bp - 0x002c]
    push ax
    push word [bp + 0x4]
    call api_idx_009e
    add sp, byte 4
    push word [bp + 0x4]
    call api_idx_004c
    pop cx
    cmp word [bp - 0x002c], byte 0
    jne short 0x5e68
    mov word [0x9614], 0
    mov ax, 6
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 0
    sub ax, word [bp + 0x6]
    dec ax
    push ax
    push word [bp + 0x4]
    call api_idx_0012_2
    add sp, byte 0x0e
    mov word [bp - 0x001a], 0
    jmp short 0x5e8c
    mov ax, 6
    push ax
    mov ax, 0x24
    push ax
    push word [bp - 0x0066]
    lea ax, word [bp - 0x004e]
    push ax
    lea ax, word [bp - 0x002c]
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0012_2
    add sp, byte 0x0e
    mov word [bp - 0x001a], 2
    mov ax, 0xbb
    push ax
    mov ax, 0xab
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    call 0xe8da
    add sp, byte 8
    jmp near 0x5fad
    mov ax, 0
    push ax
    lea ax, word [bp - 0x004e]
    push ax
    lea ax, word [bp - 0x002c]
    push ax
    push word [bp + 0x4]
    call math_loc_70ca
    add sp, byte 8
    cmp ax, strict word 0xffff
    jne short 0x5f17
    mov ax, 0x12c
    push ax
    call 0xe489
    pop cx
    mov ax, 0
    push ax
    push word [bp - 0x001e]
    push word [bp - 0x0020]
    call 0xe94f
    add sp, byte 6
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xa
    push ax
    mov ax, word [bp - 0x0010]
    imul word [bp - 0x0012]
    add ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x000c]
    dec ax
    push ax
    mov ax, word [bp - 0x000a]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    lea ax, word [bp - 0x00c2]
    push ax
    mov ax, 0x1d1
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 1
    push ax
    lea ax, word [bp - 0x00c2]
    push ax
    call api_idx_0004
    add sp, byte 4
    push word [bp + 0x4]
    call api_idx_004c
    pop cx
    mov ax, 6
    push ax
    mov ax, 0x24
    push ax
    push word [bp - 0x0066]
    lea ax, word [bp - 0x004e]
    push ax
    lea ax, word [bp - 0x002c]
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0012_2
    add sp, byte 0x0e
    mov word [bp - 0x001a], 2
    jmp short 0x5fad
    mov word [bp - 0x001c], 1
    jmp short 0x5fad
    cmp word [bp - 0x002c], strict word 0x229
    jne short 0x5f5c
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp short 0x5f91
    lea ax, word [bp - 0x002c]
    push ax
    call api_idx_0004_6
    pop cx
    mov word [0x9614], 0
    mov ax, 6
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 0
    sub ax, word [bp + 0x6]
    dec ax
    push ax
    push word [bp + 0x4]
    call api_idx_0012_2
    add sp, byte 0x0e
    mov word [bp - 0x001a], 0
    jmp short 0x5fad
    cmp ax, strict word 0
    jne short 0x5f9b
    jmp near 0x5de5
    cmp ax, strict word 1
    jne short 0x5fa3
    jmp near 0x5ea5
    cmp ax, strict word 2
    je short 0x5f44
    cmp ax, strict word 3
    je short 0x5f4b
    jmp near 0x6127
    mov word [bp - 0x001c], 0
    mov ax, word [bp - 0x0004]
    jmp near 0x6107
    cmp word [0x905e], byte 0x0d
    je short 0x5ff3
    cmp word [0x905e], byte 4
    je short 0x5ff3
    mov ax, word [bp + 0x4]
    add ax, word [0x69c8]
    dec ax
    cwd
    idiv word [0x69c8]
    mov word [0x8af0], dx
    mov word [bp + 0x4], dx
    mov word [0x967a], 0
    mov ax, 0
    push ax
    push dx
    call math_loc_40b7
    add sp, byte 4
    mov word [bp - 0x001a], 2
    jmp near 0x6127
    cmp word [0x905e], byte 0x0d
    je short 0x602a
    cmp word [0x905e], byte 4
    je short 0x602a
    mov ax, word [bp + 0x4]
    inc ax
    cwd
    idiv word [0x69c8]
    mov word [0x8af0], dx
    mov word [bp + 0x4], dx
    mov word [0x967a], 0
    mov ax, 0
    push ax
    push dx
    call math_loc_40b7
    add sp, byte 4
    mov word [bp - 0x001a], 2
    jmp near 0x6127
    mov ax, word [0x9434]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [0x9434], dx
    mov word [0x967a], 0
    push word [bp + 0x4]
    call api_idx_004c
    pop cx
    call api_idx_0004_2
    mov ax, 0xb6
    push ax
    mov ax, 0xab
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    call 0xe8da
    add sp, byte 8
    jmp near 0x6127
    mov ax, 0
    push ax
    push word [bp - 0x001e]
    push word [bp - 0x0020]
    call 0xe94f
    add sp, byte 6
    lea ax, word [bp - 0x002c]
    push ax
    push word [bp + 0x4]
    call api_idx_0072
    add sp, byte 4
    mov word [bp - 0x0014], ax
    cmp ax, strict word 0xffff
    je short 0x6100
    mov word [0x9434], 0
    mov word [0x967a], 0
    mov word [0x9614], 0
    push word [bp + 0x4]
    call api_idx_0080
    pop cx
    push word [bp + 0x4]
    call api_idx_004c
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
    mov ax, 6
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 0
    sub ax, word [0x95ea]
    dec ax
    push ax
    push word [bp + 0x4]
    call api_idx_0012_2
    add sp, byte 0x0e
    mov word [bp - 0x001a], 0
    cmp word [bp - 0x0014], byte 0
    jle short 0x60fe
    push word [bp - 0x0014]
    push word [0x95ea]
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call api_idx_0010_2
    add sp, byte 8
    jmp short 0x6105
    mov word [bp - 0x001a], 2
    jmp short 0x6127
    cmp ax, strict word 0xa
    jne short 0x610f
    jmp near 0x5fbb
    cmp ax, strict word 0xb
    jne short 0x6117
    jmp near 0x5ff6
    cmp ax, strict word 0xc
    jne short 0x611f
    jmp near 0x602d
    cmp ax, strict word 0xd
    jne short 0x6127
    jmp near 0x6064
    cmp word [bp - 0x001a], byte 1
    jne short 0x6130
    jmp near 0x593b
    cmp word [bp - 0x001a], byte 2
    jne short 0x6139
    jmp near 0x566b
    mov ax, 1
    push ax
    push word [bp - 0x001e]
    push word [bp - 0x0020]
    call 0xe94f
    add sp, byte 6
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xa
    push ax
    mov ax, word [bp - 0x0010]
    imul word [bp - 0x0012]
    add ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x000c]
    dec ax
    push ax
    mov ax, word [bp - 0x000a]
    dec ax
    push ax
    call 0xe8da
    add sp, byte 8
    ret
api_idx_0014:
    mov ax, 0xffec
    call 0xf40b
    mov ax, word [0x905e]
    mov word [0x830a], ax
    mov word [0x942e], 0x14
    mov word [0x9430], 0
    mov word [0x9432], 0
    mov word [0x940e], 0xffff
    cmp ax, strict word 0xd
    je short 0x61b6
    call 0xc145
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
    jmp short 0x6202
    mov word [bp - 0x0002], 0xf
    mov bx, word [bp - 0x0002]
    mov al, byte [bx + 0x5b48]
    sub ah, ah
    shl bx, 1
    add bx, bp
    mov word [bx - 0x002a], ax
    cmp ax, 0xff
    je short 0x61d7
    push word [bp - 0x0002]
    call 0xc12a
    pop cx
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x12
    jl short 0x61bb
    mov ax, 7
    push ax
    call 0xc12a
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
    mov word [bp - 0x0012], dx
    mov word [bp - 0x0014], ax
    mov ax, 0
    push ax
    mov ax, 0x90b3
    push ax
    call api_idx_0002
    add sp, byte 4
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
    mov word [0x93f0], dx
    mov word [0x93ee], ax
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
    mov word [0x93f4], dx
    mov word [0x93f2], ax
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0xbb
    push ax
    mov ax, 0xab
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    call 0xe935
    add sp, byte 0x0c
    mov word [0x93f8], dx
    mov word [0x93f6], ax
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
    mov word [0x93fc], dx
    mov word [0x93fa], ax
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
    mov word [0x9400], dx
    mov word [0x93fe], ax
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
    mov word [0x9404], dx
    mov word [0x9402], ax
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
    mov word [0x940c], dx
    mov word [0x940a], ax
    mov ax, 0xf
    push ax
    mov ax, 0xb
    push ax
    call 0xd61c
    add sp, byte 4
    call 0xd9a6
    mov word [0x8450], ax
    test ax, ax
    je short 0x6372
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    call 0xd7e7
    add sp, byte 4
    mov ax, word [0x0110]
    mov word [0x844e], ax
    mov ax, 1
    push ax
    push word [0x844e]
    mov ax, 0
    push ax
    call 0xd964
    add sp, byte 6
    mov word [0x844c], ax
    mov word [0x967a], 0
    mov word [0x9614], 0
    mov word [0x9434], 0
    mov word [bp - 0x0002], 0
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, 0x9616
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0x12c
    push ax
    call 0xb53b
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 9
    jl short 0x6389
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x7cf2], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x63b0
    mov word [0x9562], 7
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    cmp word [0x905e], byte 4
    je short 0x63ee
    cmp word [0x905e], byte 0x0d
    jne short 0x63f3
    mov ax, 0
    jmp short 0x63f6
    mov ax, 1
    mov word [bp - 0x0006], ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_40b7
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x45
    push ax
    mov ax, 0x53
    push ax
    mov ax, 0x3d
    push ax
    mov ax, 0x4d
    push ax
    mov ax, 0x13
    push ax
    mov ax, 0
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
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
    mov ax, 1
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
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
    mov ax, 2
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x43
    push ax
    mov ax, 0x4b
    push ax
    mov ax, 0x66
    push ax
    mov ax, 0x1f
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 3
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, 0x62
    push ax
    mov ax, 0x96
    push ax
    mov ax, 0x5c
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 4
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, 0x6e
    push ax
    mov ax, 0xd9
    push ax
    mov ax, 0x55
    push ax
    mov ax, 0xb3
    push ax
    mov ax, 5
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x42
    push ax
    mov ax, 0x6e
    push ax
    mov ax, 0xf2
    push ax
    mov ax, 0x53
    push ax
    mov ax, 0xdb
    push ax
    mov ax, 6
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x53
    push ax
    mov ax, 0x2f
    push ax
    mov ax, 0xd5
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0xaf
    push ax
    mov ax, 7
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, 0x23
    push ax
    mov ax, 0x138
    push ax
    mov ax, 0x1d
    push ax
    mov ax, 0xef
    push ax
    mov ax, 8
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, 0x39
    push ax
    mov ax, 0x116
    push ax
    mov ax, 0x29
    push ax
    mov ax, 0x106
    push ax
    mov ax, 9
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, 0x4e
    push ax
    mov ax, 0x11b
    push ax
    mov ax, 0x3a
    push ax
    mov ax, 0x102
    push ax
    mov ax, 0xa
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, 0x69
    push ax
    mov ax, 0x118
    push ax
    mov ax, 0x4f
    push ax
    mov ax, 0x104
    push ax
    mov ax, 0xb
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, 0x4f
    push ax
    mov ax, 0x12d
    push ax
    mov ax, 0x41
    push ax
    mov ax, 0x11e
    push ax
    mov ax, 0xc
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, 0x7e
    push ax
    mov ax, 0x11f
    push ax
    mov ax, 0x6a
    push ax
    mov ax, 0x104
    push ax
    mov ax, 0xd
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0x2b
    push ax
    mov ax, 0x12e
    push ax
    mov ax, 0xe
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov word [bp - 0x0002], 0
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    inc ax
    mov cx, 0xa
    cwd
    idiv cx
    mov ax, dx
    add ax, strict word 0x30
    cbw
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 5
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xe
    imul cx
    add ax, strict word 0x7d
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 5
    cwd
    idiv cx
    mov cx, 0x4f
    imul cx
    add ax, strict word 0x4e
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 5
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xe
    imul cx
    add ax, strict word 0x71
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 5
    cwd
    idiv cx
    mov cx, 0x4f
    imul cx
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xf
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jl short 0x65ee
    mov ax, 0
    push ax
    mov ax, 0x4d
    push ax
    mov ax, 0xc2
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x83
    push ax
    mov ax, 0xb6
    push ax
    mov ax, 0x19
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0x1b
    push ax
    mov ax, 0x58
    push ax
    mov ax, 0x78
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x1e
    push ax
    mov ax, 0x13b
    push ax
    mov ax, 0x1a
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
    mov ax, 0x1b
    push ax
    call 0xbaa6
    add sp, byte 0x0e
    push word [bp + 0x4]
    call math_loc_4011
    pop cx
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x0004], ax
    cmp word [0x5b3e], byte 0
    je short 0x66c0
    cmp word [bp - 0x0004], byte 0x0f
    jl short 0x6727
    cmp word [bp - 0x0004], byte 0x19
    jge short 0x6727
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [0x9434]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0004]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x5b80], byte 0
    jle short 0x6724
    mov ax, word [bp - 0x0004]
    add ax, strict word 0xfff1
    push ax
    push word [bp + 0x4]
    call api_idx_00c2
    add sp, byte 4
    mov ax, word [0x8af0]
    mov word [bp + 0x4], ax
    jmp near 0x6804
    mov ax, word [bp - 0x0004]
    jmp near 0x67f7
    push word [bp + 0x4]
    call 0x9740
    pop cx
    jmp near 0x6804
    cmp word [bp - 0x0006], byte 0
    je short 0x6757
    mov ax, word [bp + 0x4]
    add ax, word [0x69c8]
    dec ax
    cwd
    idiv word [0x69c8]
    mov word [0x8af0], dx
    mov word [bp + 0x4], dx
    mov word [0x967a], 0
    jmp near 0x6804
    cmp word [bp - 0x0006], byte 0
    je short 0x6776
    mov ax, word [bp + 0x4]
    inc ax
    cwd
    idiv word [0x69c8]
    mov word [0x8af0], dx
    mov word [bp + 0x4], dx
    mov word [0x967a], 0
    jmp near 0x6804
    push word [bp + 0x4]
    call 0x1894
    pop cx
    jmp near 0x6804
    jmp near 0x6804
    jmp near 0x6804
    mov ax, word [0x9434]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [0x9434], dx
    mov word [0x967a], 0
    jmp short 0x6804
    push word [bp + 0x4]
    call 0x40ef
    pop cx
    jmp short 0x6804
    jmp short 0x6804
    push word [bp + 0x4]
    call 0xca85
    pop cx
    test ax, ax
    je short 0x67c1
    push word [bp - 0x0006]
    push word [bp + 0x4]
    call 0x3974
    add sp, byte 4
    jmp short 0x6804
    je short 0x677c
    jle short 0x677e
    mov ax, word [0xc0b7]
    mov bh, 0xca
    mov bh, 0xcd
    mov bh, 0xd0
    mov bh, 0xe6
    mov bh, 0xef
    mov bh, 0xef
    mov bh, 0xef
    mov bh, 0xef
    mov bh, 0xef
    mov bh, 0xef
    mov bh, 0xef
    mov bh, 0x4b
    mov ax, 0xb84b
    dec bx
    mov ax, 0xb84b
    dec bx
    mov ax, 0xb84b
    dec bx
    mov ax, 0xb84b
    dec bx
    mov ax, 0xb84b
    int1
    db 0xb7
    cmp ax, strict word 0x1a
    jae short 0x6804
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x47f6]
    cmp word [bp - 0x0004], byte 0x1a
    je short 0x680d
    jmp near 0x63f9
    cmp word [0x8450], byte 0
    je short 0x682a
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
    push word [0x940c]
    push word [0x940a]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x9404]
    push word [0x9402]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x9400]
    push word [0x93fe]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x93fc]
    push word [0x93fa]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x93f8]
    push word [0x93f6]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x93f4]
    push word [0x93f2]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [0x93f0]
    push word [0x93ee]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0014]
    call 0xe942
    add sp, byte 8
    call api_idx_000e
    cmp word [0x905e], byte 0x0d
    jne short 0x6953
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
    mov word [bp - 0x0002], 0xf
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x002a], strict word 0xff
    je short 0x6946
    push word [bp - 0x0002]
    push word [bx - 0x002a]
    call 0xd61c
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x12
    jl short 0x692a
    jmp short 0x6963
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
api_idx_002a:
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
    jne short 0x69bd
    lea ax, word [bp - 0x002a]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x0002], byte 0x0a
    jle short 0x69c8
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
api_idx_0080:
    mov ax, 0xff80
    call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [0x93fc]
    push word [0x93fa]
    call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    push word [0x9400]
    push word [0x93fe]
    call 0xe942
    add sp, byte 8
    push word [bp + 0x4]
    call api_idx_0012
    pop cx
    mov si, ax
    lea di, word [bp - 0x0018]
    mov cx, ds
    mov es, cx
    mov cx, 7
    rep movsw
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5dab]
    cbw
    add ax, word [bp - 0x0018]
    mov word [bp - 0x000a], ax
    mov al, byte [bx + 0x5dac]
    cbw
    mov cx, ax
    mov ax, word [bp - 0x000a]
    add cx, ax
    mov word [bp - 0x0008], cx
    mov al, byte [bx + 0x5daa]
    cbw
    add ax, cx
    mov word [bp - 0x0006], ax
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 0xd8
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x0004], ax
    mov bx, ax
    inc word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x0068], 0x20
    cmp word [bp - 0x0006], byte 0
    jle short 0x6ac3
    mov bx, word [bp - 0x0004]
    inc word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x0068], 0x2b
    mov ax, word [bp - 0x0004]
    lea cx, word [bp - 0x0068]
    add ax, cx
    push ax
    push word [bp - 0x0006]
    call 0xb27d
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x0004], ax
    mov bx, ax
    inc word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x0068], 0x20
    mov bx, word [bp - 0x0004]
    inc word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x0068], 0x28
    cmp word [bp - 0x0008], byte 0
    jl short 0x6b09
    mov bx, word [bp - 0x0004]
    inc word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x0068], 0x2b
    mov ax, word [bp - 0x0004]
    lea cx, word [bp - 0x0068]
    add ax, cx
    push ax
    push word [bp - 0x0008]
    call 0xb27d
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x0004], ax
    mov bx, ax
    inc word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x0068], 0x29
    mov bx, word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x0068], 0
    mov ax, 0
    push ax
    mov ax, 0xeb
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0x1e
    push ax
    lea ax, word [bp - 0x0068]
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x10e
    sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0068]
    push ax
    call 0xe84e
    add sp, byte 4
    mov word [bp - 0x0074], 0x114
    mov word [bp - 0x0080], 0x2e
    mov word [bp - 0x0072], 0x114
    mov word [bp - 0x007e], 0x44
    mov word [bp - 0x0070], 0x114
    mov word [bp - 0x007c], 0x5a
    mov word [bp - 0x006e], 0x126
    mov word [bp - 0x007a], 0x4f
    mov word [bp - 0x006c], 0x114
    mov word [bp - 0x0078], 0x70
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    push word [bx - 0x0080]
    mov bx, ax
    add bx, bp
    push word [bx - 0x0074]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d4b]
    sub ah, ah
    cmp ax, 0xff
    je short 0x6bea
    mov ax, 0x5f
    jmp short 0x6bed
    mov ax, 0xeb
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5dad]
    cbw
    add ax, word [bp - 0x0008]
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jl short 0x6c1d
    mov ax, 0
    push ax
    mov ax, 0x2b
    push ax
    call 0xe830
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    push word [bp - 0x0006]
    call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0068]
    push ax
    call 0xe84e
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 5
    jge short 0x6c46
    jmp near 0x6bb2
    ret
api_idx_0004_7:
    mov ax, 0xfffc
    call 0xf40b
    mov ax, word [bp + 0x6]
    mov cx, 5
    cwd
    idiv cx
    mov cx, 0xd
    imul cx
    mov cx, 6
    imul cx
    push ax
    mov ax, word [bp + 0x6]
    mov cx, 5
    cwd
    idiv cx
    mov cx, ax
    pop ax
    add ax, cx
    add ax, strict word 4
    mov word [bp - 0x0002], ax
    shl dx, 1
    mov ax, dx
    mov cx, 6
    imul cx
    push ax
    mov ax, word [bp + 0x6]
    mov cx, 5
    cwd
    idiv cx
    mov cx, dx
    shl cx, 1
    pop ax
    add ax, cx
    add ax, strict word 0x72
    mov word [bp - 0x0004], ax
    push ax
    push word [bp - 0x0002]
    call 0xe809
    add sp, byte 4
    mov ax, 4
    push ax
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x5]
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    push word [bp + 0xc]
    push word [bp - 0x0004]
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xe
    push ax
    push word [bp + 0xa]
    call api_idx_002a
    add sp, byte 8
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x4]
    sub ah, ah
    mov bx, ax
    cmp byte [bx + 0x60e], 1
    jne short 0x6d12
    mov ax, word [bp - 0x0004]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x38
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x6]
    sub ah, ah
    push ax
    call 0xb2e7
    add sp, byte 6
    ret
api_idx_004c:
    mov ax, 0xffb4
    call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [0x93f8]
    push word [0x93f6]
    call 0xe942
    add sp, byte 8
    cmp word [0x9434], byte 0
    je short 0x6d4f
    mov ax, 0xac
    push ax
    mov ax, 0xa0
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 0x63
    push ax
    call 0xe830
    add sp, byte 4
    cmp word [0x9614], byte 0
    jne short 0x6d5d
    cmp word [0x9434], byte 0
    je short 0x6dc5
    mov word [bp - 0x0002], 0
    mov ax, 0x18
    push ax
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, strict word 0x70
    push ax
    mov ax, 0x9f
    push ax
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, strict word 0x70
    push ax
    mov ax, 1
    push ax
    call 0xe901
    add sp, byte 0x0a
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short 0x6d62
    mov word [bp - 0x0002], 0
    mov ax, 0x18
    push ax
    mov ax, 0xb6
    push ax
    mov ax, 0x4f
    imul word [bp - 0x0002]
    inc ax
    push ax
    mov ax, 0x70
    push ax
    mov ax, 0x4f
    imul word [bp - 0x0002]
    inc ax
    push ax
    call 0xe901
    add sp, byte 0x0a
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 3
    jl short 0x6d98
    mov word [bp - 0x0002], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [0x9434]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x5c34], byte 0
    jg short 0x6df5
    jmp near 0x6f4d
    cmp word [0x967a], byte 0
    je short 0x6dff
    jmp near 0x6e80
    mov ax, 0
    push ax
    push word [bx + 0x5c34]
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, 1
    push ax
    call 0xb63c
    add sp, byte 8
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [0x9434]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 0x80
    je short 0x6e57
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, 0x9436
    push ax
    call 0xf364
    add sp, byte 4
    jmp short 0x6e70
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, 0x9436
    push ax
    mov al, byte [bp - 0x0013]
    sub ah, ah
    add ax, 0x1770
    push ax
    call 0xb53b
    add sp, byte 4
    mov al, byte [bp - 0x0012]
    sub ah, ah
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6a00], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6a14], 0x69
    cmp word [0x9434], byte 0
    jne short 0x6ed0
    mov word [bp - 0x0004], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    cmp ax, word [bp - 0x0002]
    jne short 0x6ec5
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x1e, 0x00 ; mov ax, word ptr [bx + 0x1e]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6a14], ax
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 8
    jl short 0x6e99
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [0x9434]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 2
    je short 0x6f09
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6a14], 0x55
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x6a14]
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, 0x9436
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [0x9434]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    add ax, 0x5c34
    push ax
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_0004_7
    add sp, byte 0x0a
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jge short 0x6f5b
    jmp near 0x6dca
    mov word [0x967a], 1
    ret
    mov ax, 0xff66
    call 0xf40b
    mov ax, 0
    push ax
    mov bx, word [bp + 0x6]
    push word [bx]
    lea ax, word [bp - 0x004a]
    push ax
    mov ax, 1
    push ax
    call 0xb63c
    add sp, byte 8
    mov bx, word [bp + 0x6]
    cmp byte [bx + 0x6], 0
    je short 0x6fd1
    mov al, byte [bx + 0x6]
    cmp al, 0x63
    ja short 0x6fd1
    mov ax, word [bp + 0x8]
    shl ax, 1
    push ax
    mov al, byte [bp - 0x000f]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jl short 0x6fd1
    cmp word [bp - 0x0028], byte 0
    je short 0x6fd1
    cmp byte [bp - 0x000c], 0
    jne short 0x6fd1
    cmp byte [bp - 0x000b], 0
    jne short 0x6fd1
    mov al, byte [bp - 0x0013]
    sub ah, ah
    test ax, 2
    jne short 0x6fd1
    mov al, byte [bp - 0x0012]
    sub ah, ah
    mov bx, ax
    cmp byte [bx + 0x60e], 1
    je short 0x6fd1
    cmp byte [bp - 0x0012], 0xd
    jne short 0x6ff0
    lea ax, word [bp - 0x009a]
    push ax
    mov ax, 0x1d1
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 1
    push ax
    lea ax, word [bp - 0x009a]
    push ax
    call api_idx_0004
    add sp, byte 4
    ret
    mov ax, word [bp + 0x8]
    shl ax, 1
    push ax
    mov al, byte [bp - 0x000f]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    push ax
    call 0xb7a9
    pop cx
    inc ax
    mov word [bp - 0x0002], ax
    mov bx, word [bp + 0x6]
    mov al, byte [bx + 0x6]
    sub ah, ah
    mov cx, ax
    mov ax, word [bp - 0x0002]
    add cx, ax
    mov ax, cx
    cmp ax, strict word 0x64
    jge short 0x702c
    mov al, byte [bx + 0x6]
    sub ah, ah
    add ax, word [bp - 0x0002]
    mov byte [bx + 0x6], al
    jmp short 0x7030
    mov byte [bx + 0x6], 0x63
    mov ax, 0x64
    push ax
    call 0xb7a9
    pop cx
    push ax
    mov al, byte [bp - 0x000f]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short 0x706b
    mov bx, word [bp + 0x6]
    mov word [bx], 0
    lea ax, word [bp - 0x009a]
    push ax
    mov ax, 0x1d1
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 1
    push ax
    lea ax, word [bp - 0x009a]
    push ax
    call api_idx_0004
    add sp, byte 4
    ret
    ret
    mov ax, 0xffe6
    call 0xf40b
    lea ax, word [bp - 0x001a]
    push ax
    mov ax, 0x1d7
    push ax
    call 0xb53b
    add sp, byte 4
    mov word [bp - 0x0002], 0
    mov ax, word [bp + 0x6]
    mov cx, 0xa
    cwd
    idiv cx
    mov word [bp - 0x0004], dx
    mov word [bp + 0x6], ax
    add word [bp - 0x0006], dx
    mov ax, word [bp - 0x0002]
    imul word [bp - 0x0006]
    mov dx, word [bp - 0x0004]
    add ax, dx
    cwd
    idiv cx
    mov word [bp - 0x0004], dx
    mov bx, dx
    add bx, bp
    mov al, byte [bx - 0x001a]
    mov si, word [bp - 0x0002]
    mov bx, word [bp + 0x4]
    mov byte [bx + si], al
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short 0x7085
    mov bx, word [bp + 0x4]
    mov byte [bx + 0x4], 0
    ret
math_loc_70ca:
    mov ax, 0xfe6c
    call 0xf40b
    mov word [bp - 0x0194], 0
    cmp word [0x0e32], byte 0
    je short 0x70ef
    lea ax, word [bp - 0x000c]
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    call 0xf053
    add sp, byte 4
    mov word [bp - 0x0194], ax
    mov ax, 0
    push ax
    mov bx, word [bp + 0x6]
    push word [bx]
    lea ax, word [bp - 0x007a]
    push ax
    mov ax, 1
    push ax
    call 0xb63c
    add sp, byte 8
    cmp word [bp + 0xa], byte 0
    je short 0x7153
    mov ax, 3
    imul word [bp + 0xa]
    push ax
    mov al, byte [bp - 0x003f]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jl short 0x712f
    mov bx, word [bp + 0x6]
    mov al, byte [bx + 0x7]
    sub ah, ah
    or ax, 0x80
    mov byte [bx + 0x7], al
    jmp short 0x7151
    lea ax, word [bp - 0x00f2]
    push ax
    mov ax, 0x1d1
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, 1
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call api_idx_0004
    add sp, byte 4
    mov ax, 0
    ret
    jmp short 0x7182
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d84]
    sub ah, ah
    mov cx, 5
    cwd
    idiv cx
    push ax
    mov al, byte [bp - 0x003f]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jl short 0x7182
    mov bx, word [bp + 0x6]
    mov al, byte [bx + 0x7]
    sub ah, ah
    or ax, 0x80
    mov byte [bx + 0x7], al
    mov bx, word [bp + 0x6]
    mov al, byte [bx + 0x7]
    sub ah, ah
    test ax, 0x80
    jne short 0x7193
    mov ax, 0xffff
    ret
    lea ax, word [bp - 0x007a]
    push ax
    push word [bp + 0x8]
    call 0xf364
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    push word [0x93f8]
    push word [0x93f6]
    call 0xe942
    add sp, byte 8
    mov word [bp - 0x000c], 0x72
    mov word [bp - 0x000a], 0x1a
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call 0xe809
    add sp, byte 4
    mov ax, 4
    push ax
    mov al, byte [bp - 0x0041]
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    add word [bp - 0x000a], byte 0x60
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call 0xe809
    add sp, byte 4
    mov ax, 4
    push ax
    mov al, byte [bp - 0x0041]
    sub ah, ah
    push ax
    call 0xe830
    add sp, byte 4
    mov word [bp - 0x000a], 0x50
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x28
    push ax
    lea ax, word [bp - 0x00a2]
    push ax
    call 0xf306
    add sp, byte 6
    lea ax, word [bp - 0x007a]
    push ax
    lea ax, word [bp - 0x00a2]
    push ax
    call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x00a2]
    push ax
    call 0xfa90
    pop cx
    dec ax
    mov word [bp - 0x0004], ax
    mov ax, 0x2f
    push ax
    lea ax, word [bp - 0x00a2]
    push ax
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    jne short 0x725e
    lea ax, word [bp - 0x00a2]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x0006], ax
    cmp word [bp - 0x0006], byte 0x0a
    jle short 0x7269
    mov word [bp - 0x0006], 0xa
    mov bx, word [bp - 0x0006]
    add bx, bp
    mov byte [bx - 0x00a2], 0
    mov byte [bx - 0x0097], 0
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0006]
    jle short 0x7290
    mov bx, ax
    add bx, bp
    cmp byte [bx - 0x00a2], 0x20
    jne short 0x7290
    dec word [bp - 0x0004]
    jmp short 0x7278
    mov ax, word [bp - 0x0006]
    sub word [bp - 0x0004], ax
    push word [bp - 0x000c]
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp - 0x000a]
    sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00a2]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp - 0x0004]
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp - 0x000a]
    sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0006]
    lea cx, word [bp - 0x00a1]
    add ax, cx
    push ax
    call 0xe84e
    add sp, byte 4
    add word [bp - 0x000c], byte 0x12
    mov word [bp - 0x0010], 0
    mov word [bp - 0x0012], 0
    mov word [bp - 0x0014], 0
    mov word [bp - 0x0016], 0
    mov word [bp - 0x0018], 0
    mov word [bp - 0x001a], 0
    mov word [bp - 0x001c], 0
    mov word [bp - 0x001e], 0
    mov word [bp - 0x0020], 0
    mov word [bp - 0x0026], 0
    mov word [bp - 0x002a], 0
    mov word [bp - 0x0028], 0
    mov word [bp - 0x0022], 1
    mov ax, word [0x0024]
    mov word [bp - 0x0024], ax
    mov al, byte [bp - 0x0042]
    sub ah, ah
    jmp near 0x744d
    mov word [bp - 0x0010], 1
    mov word [bp - 0x0016], 1
    mov word [bp - 0x001a], 1
    mov word [bp - 0x001c], 1
    mov word [bp - 0x0026], 1
    mov word [bp - 0x002a], 1
    mov word [bp - 0x0028], 1
    mov ax, word [0x001e]
    mov word [bp - 0x0032], ax
    jmp near 0x745a
    mov word [bp - 0x0012], 1
    mov word [bp - 0x0026], 1
    mov word [bp - 0x002a], 1
    mov ax, word [0x001e]
    mov word [bp - 0x0032], ax
    jmp near 0x745a
    mov word [bp - 0x0014], 1
    mov ax, word [0x0022]
    mov word [bp - 0x0024], ax
    mov word [bp - 0x001e], 1
    mov word [bp - 0x0028], 1
    mov word [bp - 0x0032], ax
    jmp near 0x745a
    mov word [bp - 0x0014], 1
    mov word [bp - 0x0018], 1
    mov word [bp - 0x001e], 1
    mov word [bp - 0x0028], 1
    mov ax, word [0x0024]
    mov word [bp - 0x0032], ax
    jmp near 0x745a
    mov word [bp - 0x0014], 1
    mov word [bp - 0x001e], 1
    mov word [bp - 0x0028], 1
    mov ax, word [0x0024]
    mov word [bp - 0x0032], ax
    jmp near 0x745a
    mov word [bp - 0x0022], 0
    mov word [bp - 0x0010], 1
    mov word [bp - 0x0020], 1
    mov word [bp - 0x001c], 1
    mov ax, word [0x0022]
    mov word [bp - 0x0032], ax
    jmp short 0x745a
    mov word [bp - 0x0022], 0
    mov word [bp - 0x0012], 1
    mov word [bp - 0x0020], 1
    mov ax, word [0x0022]
    mov word [bp - 0x0032], ax
    jmp short 0x745a
    mov word [bp - 0x001e], 1
    mov word [bp - 0x0012], 1
    mov word [bp - 0x001c], 1
    mov word [bp - 0x0028], 1
    mov word [bp - 0x0032], 0xc0
    jmp short 0x745a
    nop
    ret
    nop
    ret
    nop
    ret
    nop
    ret
    mov sp, 0xd4c3
    ret
    out dx, ax
    ret
    out dx, ax
    ret
    out dx, ax
    ret
    out dx, ax
    ret
    out dx, ax
    ret
    or al, 0xc4
    and al, 0xc4
    inc ax
    les dx, word [bx - 0x003c]
    pop sp
    les sp, word [si]
    db 0xc4
    cmp ax, strict word 0x11
    jae short 0x745a
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x3b8e]
    cmp word [bp + 0xa], byte 0
    je short 0x7463
    jmp near 0x7b91
    lea ax, word [bp - 0x00f2]
    push ax
    mov al, byte [bp - 0x0042]
    sub ah, ah
    add ax, 0x60e

; ==========================================
; Jump table: 5 entries (offsets 0x7470 - 0x7e82)
; ==========================================
    db 0x50, 0xe8, 0xc7, 0x40, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xce, 0xe8, 0xa2
    db 0x73, 0x83, 0xc4, 0x04, 0xff, 0x76, 0xf4, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0x01, 0x86, 0x59
    db 0xb9, 0x06, 0x00, 0xf7, 0xe9, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0xb8, 0x50, 0x00
    db 0x2b, 0xc1, 0x50, 0xe8, 0x63, 0x73, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0x8d, 0x86, 0x0e
    db 0xff, 0x50, 0xe8, 0x99, 0x73, 0x83, 0xc4, 0x04, 0x83, 0x46, 0xf4, 0x06, 0x83, 0x7e, 0xde, 0x00
    db 0x75, 0x03, 0xe9, 0x3f, 0x01, 0xff, 0x76, 0xf4, 0xb8, 0x26, 0x00, 0x50, 0xe8, 0x3a, 0x73, 0x83
    db 0xc4, 0x04, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xb8, 0xc6, 0x01, 0x50, 0xe8, 0x5d, 0x40, 0x83, 0xc4
    db 0x04, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xfe, 0x8d, 0x46, 0xba
    db 0x50, 0xe8, 0x80, 0x77, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75, 0x05, 0xb8, 0xa9, 0x00, 0xeb
    db 0x03, 0xb8, 0xad, 0x00, 0x50, 0xe8, 0x1b, 0x73, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0x8b
    db 0x5e, 0xfe, 0x03, 0xdd, 0x8a, 0x87, 0x0e, 0xff, 0x2a, 0xe4, 0x50, 0xe8, 0x12, 0x73, 0x83, 0xc4
    db 0x04, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3d, 0x0b, 0x00, 0x7c, 0xba, 0xff, 0x76, 0xf4, 0xb8
    db 0x6e, 0x00, 0x50, 0xe8, 0xd3, 0x72, 0x83, 0xc4, 0x04, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xb8, 0xc7
    db 0x01, 0x50, 0xe8, 0xf6, 0x3f, 0x83, 0xc4, 0x04, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xb8, 0x00, 0x00
    db 0x50, 0xff, 0x76, 0xfe, 0x8d, 0x46, 0xbc, 0x50, 0xe8, 0x19, 0x77, 0x83, 0xc4, 0x04, 0x3d, 0x01
    db 0x00, 0x75, 0x05, 0xb8, 0xa9, 0x00, 0xeb, 0x03, 0xb8, 0xad, 0x00, 0x50, 0xe8, 0xb4, 0x72, 0x83
    db 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x5e, 0xfe, 0x03, 0xdd, 0x8a, 0x87, 0x0e, 0xff, 0x2a
    db 0xe4, 0x50, 0xe8, 0xab, 0x72, 0x83, 0xc4, 0x04, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3d, 0x02
    db 0x00, 0x7c, 0xba, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xb8, 0x26, 0x00, 0x50, 0xe8, 0x68
    db 0x72, 0x83, 0xc4, 0x04, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xb8, 0xc8, 0x01, 0x50, 0xe8, 0x8b, 0x3f
    db 0x83, 0xc4, 0x04, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xfe, 0x8d
    db 0x46, 0xb8, 0x50, 0xe8, 0xae, 0x76, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75, 0x05, 0xb8, 0xa9
    db 0x00, 0xeb, 0x03, 0xb8, 0xad, 0x00, 0x50, 0xe8, 0x49, 0x72, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00
    db 0x50, 0x8b, 0x5e, 0xfe, 0x03, 0xdd, 0x8a, 0x87, 0x0e, 0xff, 0x2a, 0xe4, 0x50, 0xe8, 0x40, 0x72
    db 0x83, 0xc4, 0x04, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3d, 0x0e, 0x00, 0x7c, 0xba, 0x83, 0x46
    db 0xf4, 0x0c, 0xeb, 0x70, 0x83, 0x7e, 0xe0, 0x00, 0x74, 0x6a, 0x83, 0x7e, 0xa8, 0x00, 0x74, 0x64
    db 0x8b, 0x46, 0xa8, 0xb9, 0x00, 0x01, 0x99, 0xf7, 0xf9, 0x89, 0x56, 0xd2, 0x8d, 0x86, 0x0e, 0xff
    db 0x50, 0x81, 0xc2, 0xa0, 0x0f, 0x8b, 0xc2, 0x50, 0xe8, 0x10, 0x3f, 0x83, 0xc4, 0x04, 0xff, 0x76
    db 0xf4, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0x57, 0x84, 0x59, 0xb9, 0x06, 0x00, 0xf7, 0xe9, 0xb9
    db 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0xb8, 0x50, 0x00, 0x2b, 0xc1, 0x50, 0xe8, 0xb9, 0x71
    db 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x16, 0x00, 0x50, 0xe8, 0xc5, 0x71, 0x83, 0xc4
    db 0x04, 0xb8, 0x00, 0x00, 0x50, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0xe1, 0x71, 0x83, 0xc4, 0x04
    db 0x83, 0x46, 0xf4, 0x06, 0x83, 0x7e, 0xe6, 0x00, 0x75, 0x03, 0xe9, 0x03, 0x02, 0x8a, 0x46, 0xbf
    db 0x2a, 0xe4, 0xeb, 0x58, 0xc7, 0x46, 0xd4, 0x00, 0x00, 0xe9, 0x04, 0x01, 0xc7, 0x46, 0xd4, 0x01
    db 0x00, 0xe9, 0xfc, 0x00, 0xc7, 0x46, 0xd4, 0x02, 0x00, 0xe9, 0xf4, 0x00, 0xc7, 0x46, 0xd4, 0x03
    db 0x00, 0xe9, 0xec, 0x00, 0xc7, 0x46, 0xd4, 0x04, 0x00, 0xe9, 0xe4, 0x00, 0xc7, 0x46, 0xd4, 0x07
    db 0x00, 0xe9, 0xdc, 0x00, 0xc7, 0x46, 0xd4, 0x06, 0x00, 0xe9, 0xd4, 0x00, 0xc7, 0x46, 0xd4, 0x08
    db 0x00, 0xe9, 0xcc, 0x00, 0xc7, 0x46, 0xd4, 0x12, 0x00, 0xe9, 0xc4, 0x00, 0xc7, 0x46, 0xd4, 0x05
    db 0x00, 0xe9, 0xbc, 0x00, 0xc7, 0x46, 0xd4, 0x09, 0x00, 0xe9, 0xb4, 0x00, 0xb9, 0x2c, 0x00, 0xe8
    db 0x4a, 0x21, 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x03, 0x00, 0x04, 0x00, 0x05, 0x00, 0x06, 0x00
    db 0x07, 0x00, 0x08, 0x00, 0x09, 0x00, 0x0a, 0x00, 0x0b, 0x00, 0x0c, 0x00, 0x0d, 0x00, 0x0e, 0x00
    db 0x0f, 0x00, 0x10, 0x00, 0x11, 0x00, 0x12, 0x00, 0x13, 0x00, 0x14, 0x00, 0x15, 0x00, 0x18, 0x00
    db 0x25, 0x00, 0x26, 0x00, 0x33, 0x00, 0x34, 0x00, 0x35, 0x00, 0x36, 0x00, 0x37, 0x00, 0x38, 0x00
    db 0x39, 0x00, 0x3a, 0x00, 0x3b, 0x00, 0x58, 0x00, 0x5a, 0x00, 0x68, 0x00, 0x69, 0x00, 0x6a, 0x00
    db 0x6c, 0x00, 0x6e, 0x00, 0x70, 0x00, 0x72, 0x00, 0xcb, 0xc6, 0xd3, 0xc6, 0xdb, 0xc6, 0xdb, 0xc6
    db 0xe3, 0xc6, 0xe3, 0xc6, 0xe3, 0xc6, 0xeb, 0xc6, 0xeb, 0xc6, 0xeb, 0xc6, 0xeb, 0xc6, 0xf3, 0xc6
    db 0xf3, 0xc6, 0xfb, 0xc6, 0xd3, 0xc6, 0xd3, 0xc6, 0xd3, 0xc6, 0xeb, 0xc6, 0xcb, 0xc6, 0xeb, 0xc6
    db 0xdb, 0xc6, 0x13, 0xc7, 0x03, 0xc7, 0xf3, 0xc6, 0x03, 0xc7, 0xd3, 0xc6, 0xe3, 0xc6, 0xd3, 0xc6
    db 0xe3, 0xc6, 0xd3, 0xc6, 0xe3, 0xc6, 0xeb, 0xc6, 0xd3, 0xc6, 0xd3, 0xc6, 0xcb, 0xc6, 0xeb, 0xc6
    db 0x0b, 0xc7, 0xeb, 0xc6, 0xeb, 0xc6, 0xd3, 0xc6, 0x0b, 0xc7, 0x13, 0xc7, 0x0b, 0xc7, 0x1b, 0xc7
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x8a, 0x87, 0x2b, 0x5e, 0x2a, 0xe4, 0x50, 0x8d
    db 0x46, 0xba, 0x50, 0xe8, 0xce, 0x74, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75, 0x3c, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x8a, 0x87, 0x2d, 0x5e, 0x2a, 0xe4, 0x50, 0x8d, 0x46, 0xb8
    db 0x50, 0xe8, 0xb0, 0x74, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75, 0x1e, 0xb8, 0x48, 0x02, 0xf7
    db 0x6e, 0x04, 0x8b, 0xd8, 0x8a, 0x87, 0x2c, 0x5e, 0x2a, 0xe4, 0x50, 0x8d, 0x46, 0xbc, 0x50, 0xe8
    db 0x92, 0x74, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x74, 0x1f, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xb8
    db 0x1f, 0x06, 0x50, 0xe8, 0x45, 0x3d, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x69, 0x00
    db 0x50, 0xe8, 0x1f, 0x70, 0x83, 0xc4, 0x04, 0xeb, 0x3f, 0x8d, 0x86, 0x5e, 0xff, 0x50, 0xb8, 0xc2
    db 0x01, 0x50, 0xe8, 0x26, 0x3d, 0x83, 0xc4, 0x04, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0x8b, 0x46, 0xd4
    db 0x05, 0x7c, 0x15, 0x50, 0xe8, 0x14, 0x3d, 0x83, 0xc4, 0x04, 0x8d, 0x86, 0x5e, 0xff, 0x50, 0x8d
    db 0x86, 0x0e, 0xff, 0x50, 0xe8, 0xf6, 0x7a, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x36
    db 0x30, 0x00, 0xe8, 0xde, 0x6f, 0x83, 0xc4, 0x04, 0xff, 0x76, 0xf4, 0x8d, 0x86, 0x0e, 0xff, 0x50
    db 0xe8, 0x3d, 0x82, 0x59, 0xb9, 0x06, 0x00, 0xf7, 0xe9, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x8b
    db 0xc8, 0xb8, 0x50, 0x00, 0x2b, 0xc1, 0x50, 0xe8, 0x9f, 0x6f, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00
    db 0x50, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0xd5, 0x6f, 0x83, 0xc4, 0x04, 0x83, 0x46, 0xf4, 0x06
    db 0xc7, 0x46, 0xf4, 0xa2, 0x00, 0x83, 0x7e, 0xe4, 0x00, 0x75, 0x03, 0xe9, 0xb8, 0x00, 0xb8, 0x00
    db 0x00, 0x50, 0xb8, 0x55, 0x00, 0x50, 0xe8, 0x8a, 0x6f, 0x83, 0xc4, 0x04, 0x80, 0x7e, 0xbe, 0x03
    db 0x75, 0x2d, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xb8, 0xf2, 0x0b, 0x50, 0xe8, 0x8d, 0x3c, 0x83, 0xc4
    db 0x04, 0xff, 0x76, 0xf4, 0xb8, 0x0e, 0x00, 0x50, 0xe8, 0x4e, 0x6f, 0x83, 0xc4, 0x04, 0xb8, 0x00
    db 0x00, 0x50, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0x84, 0x6f, 0x83, 0xc4, 0x04, 0xeb, 0x77, 0xc7
    db 0x46, 0xf8, 0x00, 0x00, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xff, 0x76, 0xfe, 0x8d, 0x46, 0xcc, 0x50
    db 0xe8, 0x91, 0x73, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75, 0x50, 0x8b, 0x46, 0xf8, 0xb9, 0x03
    db 0x00, 0x99, 0xf7, 0xf9, 0xb9, 0x06, 0x00, 0xf7, 0xe9, 0x03, 0x46, 0xf4, 0x50, 0x8b, 0x46, 0xf8
    db 0xb9, 0x03, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xb9, 0x30, 0x00, 0xf7, 0xe9, 0x05, 0x0e, 0x00
    db 0x50, 0xe8, 0xf5, 0x6e, 0x83, 0xc4, 0x04, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0x8b, 0x46, 0xfe, 0x05
    db 0xea, 0x0b, 0x50, 0xe8, 0x15, 0x3c, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0x8d, 0x86, 0x0e
    db 0xff, 0x50, 0xe8, 0x19, 0x6f, 0x83, 0xc4, 0x04, 0xff, 0x46, 0xf8, 0xff, 0x46, 0xfe, 0x8b, 0x46
    db 0xfe, 0x3d, 0x08, 0x00, 0x7c, 0x93, 0xc7, 0x46, 0xf4, 0xae, 0x00, 0xff, 0x76, 0xf4, 0xb8, 0x0e
    db 0x00, 0x50, 0xe8, 0xb4, 0x6e, 0x83, 0xc4, 0x04, 0x83, 0x7e, 0xf0, 0x00, 0x75, 0x09, 0x83, 0x7e
    db 0xee, 0x00, 0x75, 0x03, 0xe9, 0x83, 0x00, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xb8, 0xc3, 0x01, 0x50
    db 0xe8, 0xc8, 0x3b, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x37, 0x00, 0x83, 0x7e, 0xf0
    db 0x00, 0x74, 0x03, 0xb8, 0x33, 0x00, 0x50, 0xe8, 0x99, 0x6e, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00
    db 0x50, 0x8a, 0x86, 0x0e, 0xff, 0x2a, 0xe4, 0x50, 0xe8, 0x95, 0x6e, 0x83, 0xc4, 0x04, 0xb8, 0x00
    db 0x00, 0x50, 0xb8, 0x37, 0x00, 0x50, 0xe8, 0x7a, 0x6e, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50
    db 0xb8, 0x2f, 0x00, 0x50, 0xe8, 0x79, 0x6e, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0x8a, 0x46
    db 0xbd, 0x2a, 0xe4, 0xa9, 0x08, 0x00, 0x74, 0x05, 0xb8, 0x33, 0x00, 0xeb, 0x03, 0xb8, 0x37, 0x00
    db 0x50, 0xe8, 0x4f, 0x6e, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0x8a, 0x86, 0x0f, 0xff, 0x2a
    db 0xe4, 0x50, 0xe8, 0x4b, 0x6e, 0x83, 0xc4, 0x04, 0xeb, 0x67, 0x83, 0x7e, 0xec, 0x00, 0x74, 0x61
    db 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xb8, 0xc4, 0x01, 0x50, 0xe8, 0x3f, 0x3b, 0x83, 0xc4, 0x04, 0xb8
    db 0x00, 0x00, 0x50, 0xff, 0x76, 0xdc, 0xe8, 0x1a, 0x6e, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50
    db 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0x36, 0x6e, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x20, 0x00, 0x50, 0xe8, 0x0a, 0x6e, 0x83, 0xc4, 0x04, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0x8a, 0x46, 0xc6, 0x98, 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x50, 0xe8, 0x3e, 0x38, 0x83
    db 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0x00, 0x6e, 0x83, 0xc4
    db 0x04, 0x83, 0x7e, 0xea, 0x00, 0x74, 0x62, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0x8a, 0x46, 0xbd, 0x2a
    db 0xe4, 0xa9, 0x04, 0x00, 0x74, 0x05, 0xb8, 0xca, 0x01, 0xeb, 0x03, 0xb8, 0xc9, 0x01, 0x50, 0xe8
    db 0xc9, 0x3a, 0x83, 0xc4, 0x04, 0xff, 0x76, 0xf4, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0x10, 0x80
    db 0x59, 0xb9, 0x06, 0x00, 0xf7, 0xe9, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0xb8, 0x50
    db 0x00, 0x2b, 0xc1, 0x50, 0xe8, 0x72, 0x6d, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x16
    db 0x00, 0x50, 0xe8, 0x7e, 0x6d, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0x8d, 0x86, 0x0e, 0xff
    db 0x50, 0xe8, 0x9a, 0x6d, 0x83, 0xc4, 0x04, 0xeb, 0x5c, 0x83, 0x7e, 0xe8, 0x00, 0x74, 0x56, 0x8d
    db 0x86, 0x0e, 0xff, 0x50, 0x8a, 0x46, 0xbe, 0x2a, 0xe4, 0x05, 0xc6, 0x01, 0x50, 0xe8, 0x6b, 0x3a
    db 0x83, 0xc4, 0x04, 0xff, 0x76, 0xf4, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0xb2, 0x7f, 0x59, 0xb9
    db 0x06, 0x00, 0xf7, 0xe9, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0xb8, 0x50, 0x00, 0x2b
    db 0xc1, 0x50, 0xe8, 0x14, 0x6d, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x16, 0x00, 0x50
    db 0xe8, 0x20, 0x6d, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8
    db 0x3c, 0x6d, 0x83, 0xc4, 0x04, 0xff, 0x76, 0xf4, 0xb8, 0x68, 0x00, 0x50, 0xe8, 0xea, 0x6c, 0x83
    db 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x09, 0x00, 0x50, 0xe8, 0xf6, 0x6c, 0x83, 0xc4, 0x04
    db 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0x8b, 0x46, 0xaa, 0xb9, 0x0a, 0x00, 0x99, 0xf7
    db 0xf9, 0x50, 0xe8, 0xa2, 0x37, 0x83, 0xc4, 0x06, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x2e, 0x00, 0x50
    db 0xe8, 0xdd, 0x6c, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0x8b, 0x46
    db 0xaa, 0xb9, 0x0a, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0x50, 0xe8, 0x7a, 0x37, 0x83, 0xc4, 0x06
    db 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xb8, 0xc5, 0x01, 0x50, 0xe8, 0xbf, 0x39, 0x83, 0xc4, 0x04, 0xb8
    db 0x00, 0x00, 0x50, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0xc3, 0x6c, 0x83, 0xc4, 0x04, 0xe9, 0xde
    db 0x06, 0x83, 0x7e, 0xda, 0x00, 0x75, 0x03, 0xe9, 0x3c, 0x01, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x33
    db 0x00, 0x50, 0xe8, 0x7e, 0x6c, 0x83, 0xc4, 0x04, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xb8, 0xd2, 0x01
    db 0x50, 0xe8, 0x87, 0x39, 0x83, 0xc4, 0x04, 0x8d, 0x86, 0xbe, 0xfe, 0x50, 0x8a, 0x46, 0xa6, 0x2a
    db 0xe4, 0x03, 0x46, 0xa4, 0x50, 0xe8, 0xb5, 0x36, 0x83, 0xc4, 0x04, 0x8d, 0x86, 0x6e, 0xfe, 0x50
    db 0x8a, 0x46, 0xa6, 0x2a, 0xe4, 0x50, 0x8a, 0x46, 0xa7, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0xf7, 0xe9
    db 0x03, 0x46, 0xa4, 0x50, 0xe8, 0x96, 0x36, 0x83, 0xc4, 0x04, 0x8d, 0x86, 0xbe, 0xfe, 0x50, 0x8d
    db 0x86, 0x0e, 0xff, 0x50, 0xe8, 0x36, 0x77, 0x83, 0xc4, 0x04, 0x8d, 0x86, 0xbe, 0xfe, 0x50, 0xb8
    db 0xd3, 0x01, 0x50, 0xe8, 0x35, 0x39, 0x83, 0xc4, 0x04, 0x8d, 0x86, 0xbe, 0xfe, 0x50, 0x8d, 0x86
    db 0x0e, 0xff, 0x50, 0xe8, 0x17, 0x77, 0x83, 0xc4, 0x04, 0x8d, 0x86, 0x6e, 0xfe, 0x50, 0x8d, 0x86
    db 0x0e, 0xff, 0x50, 0xe8, 0x07, 0x77, 0x83, 0xc4, 0x04, 0xff, 0x76, 0xf4, 0xb8, 0x0e, 0x00, 0x50
    db 0xe8, 0xd6, 0x6b, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8
    db 0x0c, 0x6c, 0x83, 0xc4, 0x04, 0x80, 0x7e, 0xc7, 0x00, 0x75, 0x03, 0xe9, 0x84, 0x00, 0xb8, 0xc0
    db 0x90, 0x50, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0x0a, 0x77, 0x83, 0xc4, 0x04, 0x80, 0x7e, 0xc7
    db 0x00, 0x7c, 0x0f, 0xb8, 0xc2, 0x90, 0x50, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0xbe, 0x76, 0x83
    db 0xc4, 0x04, 0x8d, 0x86, 0xbe, 0xfe, 0x50, 0x8a, 0x46, 0xc7, 0x98, 0x50, 0xe8, 0xfe, 0x35, 0x83
    db 0xc4, 0x04, 0x8d, 0x86, 0xbe, 0xfe, 0x50, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0x9e, 0x76, 0x83
    db 0xc4, 0x04, 0xb8, 0xc4, 0x90, 0x50, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0x8f, 0x76, 0x83, 0xc4
    db 0x04, 0xff, 0x76, 0xf4, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0xe4, 0x7d, 0x59, 0x8b, 0xc8, 0xb8
    db 0x16, 0x00, 0x2b, 0xc1, 0xb9, 0x06, 0x00, 0xf7, 0xe9, 0x05, 0x0e, 0x00, 0x50, 0xe8, 0x49, 0x6b
    db 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0x7f, 0x6b, 0x83
    db 0xc4, 0x04, 0x83, 0x46, 0xf4, 0x06, 0x8a, 0x46, 0xc2, 0x2a, 0xe4, 0xb9, 0x10, 0x00, 0x99, 0xf7
    db 0xf9, 0x89, 0x56, 0xf8, 0x89, 0x46, 0xfc, 0x83, 0x7e, 0xd8, 0x00, 0x75, 0x03, 0xe9, 0x78, 0x00
    db 0x2b, 0xd0, 0x8b, 0xc2, 0x74, 0x72, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x5e, 0x00, 0x50, 0xe8, 0x22
    db 0x6b, 0x83, 0xc4, 0x04, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xb8, 0xd4, 0x01, 0x50, 0xe8, 0x2b, 0x38
    db 0x83, 0xc4, 0x04, 0x8b, 0x46, 0xf8, 0x2b, 0x46, 0xfc, 0x7e, 0x0f, 0xb8, 0xc6, 0x90, 0x50, 0x8d
    db 0x86, 0x0e, 0xff, 0x50, 0xe8, 0x06, 0x76, 0x83, 0xc4, 0x04, 0x8d, 0x86, 0xbe, 0xfe, 0x50, 0x8b
    db 0x46, 0xf8, 0x2b, 0x46, 0xfc, 0x50, 0xe8, 0x44, 0x35, 0x83, 0xc4, 0x04, 0x8d, 0x86, 0xbe, 0xfe
    db 0x50, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0xe4, 0x75, 0x83, 0xc4, 0x04, 0xff, 0x76, 0xf4, 0xb8
    db 0x0e, 0x00, 0x50, 0xe8, 0xb3, 0x6a, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0x8d, 0x86, 0x0e
    db 0xff, 0x50, 0xe8, 0xe9, 0x6a, 0x83, 0xc4, 0x04, 0x80, 0x7e, 0xc3, 0x00, 0x74, 0x39, 0xb8, 0x00
    db 0x00, 0x50, 0xb8, 0x55, 0x00, 0x50, 0xe8, 0xaa, 0x6a, 0x83, 0xc4, 0x04, 0x8d, 0x86, 0x0e, 0xff
    db 0x50, 0xb8, 0xd5, 0x01, 0x50, 0xe8, 0xb3, 0x37, 0x83, 0xc4, 0x04, 0xff, 0x76, 0xf4, 0xb8, 0x6e
    db 0x00, 0x50, 0xe8, 0x74, 0x6a, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0x8d, 0x86, 0x0e, 0xff
    db 0x50, 0xe8, 0xaa, 0x6a, 0x83, 0xc4, 0x04, 0x83, 0x46, 0xf4, 0x06, 0x80, 0x7e, 0xc4, 0x00, 0x74
    db 0x5e, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0xa4, 0x00, 0x50, 0xe8, 0x67, 0x6a, 0x83, 0xc4, 0x04, 0x8d
    db 0x86, 0x0e, 0xff, 0x50, 0xb8, 0xd6, 0x01, 0x50, 0xe8, 0x70, 0x37, 0x83, 0xc4, 0x04, 0x8a, 0x46
    db 0xc4, 0x2a, 0xe4, 0x50, 0x8d, 0x86, 0xbe, 0xfe, 0x50, 0xe8, 0x90, 0xf2, 0x83, 0xc4, 0x04, 0x8d
    db 0x86, 0xbe, 0xfe, 0x50, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0x41, 0x75, 0x83, 0xc4, 0x04, 0xff
    db 0x76, 0xf4, 0xb8, 0x0e, 0x00, 0x50, 0xe8, 0x10, 0x6a, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50
    db 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0x46, 0x6a, 0x83, 0xc4, 0x04, 0x83, 0x46, 0xf4, 0x06, 0x83
    db 0x7e, 0xa8, 0x00, 0x75, 0x03, 0xe9, 0xe9, 0x00, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x16, 0x00, 0x50
    db 0xe8, 0x00, 0x6a, 0x83, 0xc4, 0x04, 0x8b, 0x46, 0xa8, 0xb9, 0x00, 0x01, 0x99, 0xf7, 0xf9, 0x89
    db 0x46, 0xd0, 0x89, 0x56, 0xd2, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0x81, 0xc2, 0xa0, 0x0f, 0x8b, 0xc2
    db 0x50, 0xe8, 0xf7, 0x36, 0x83, 0xc4, 0x04, 0xff, 0x76, 0xf4, 0xb8, 0x0e, 0x00, 0x50, 0xe8, 0xb8
    db 0x69, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0xee, 0x69
    db 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0xb5, 0x69, 0x83, 0xc4
    db 0x04, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xff, 0x76, 0xd0, 0xe8, 0x01, 0x34, 0x83, 0xc4, 0x04, 0xb8
    db 0xc8, 0x90, 0x50

math_loc_7e83:
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xf32d
    add sp, byte 4
    mov bx, word [bp + 0x6]
    cmp byte [bx + 0x6], 0
    jne short 0x7ea8
    lea ax, word [bp - 0x0142]
    push ax
    mov ax, 0x1da
    push ax
    call 0xb53b
    add sp, byte 4
    jmp short 0x7ebc
    lea ax, word [bp - 0x0142]
    push ax
    mov bx, word [bp + 0x6]
    mov al, byte [bx + 0x6]
    sub ah, ah
    push ax
    call 0xb27d
    add sp, byte 4
    lea ax, word [bp - 0x0142]
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xf32d
    add sp, byte 4
    push word [bp - 0x000c]
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xfa90
    pop cx
    mov cx, ax
    mov ax, 0x16
    sub ax, cx
    mov cx, 6
    imul cx
    add ax, strict word 0xe
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xe84e
    add sp, byte 4
    add word [bp - 0x000c], byte 6
    add word [bp - 0x000c], byte 6
    cmp word [bp - 0x002a], byte 0
    jne short 0x7f0e
    jmp near 0x80f9
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x00f2]
    push ax
    mov ax, 0x1d8
    push ax
    call 0xb53b
    add sp, byte 4
    push word [bp - 0x000c]
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x50
    sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xe84e
    add sp, byte 4
    add word [bp - 0x000c], byte 6
    mov ax, 0
    push ax
    mov ax, 0x2e
    push ax
    call 0xe823
    add sp, byte 4
    push word [bp - 0x000c]
    mov ax, 0xe
    push ax
    call 0xe809
    add sp, byte 4
    mov byte [bp - 0x00f2], 0
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0002], 0
    mov bx, word [bp - 0x0002]
    add bx, bp
    cmp byte [bx - 0x0050], 0
    ja short 0x7f9b
    jmp near 0x803d
    mov word [bp - 0x0006], 1
    lea ax, word [bp - 0x0142]
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0x1db
    push ax
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xfa90
    pop cx
    push ax
    lea ax, word [bp - 0x0142]
    push ax
    call 0xfa90
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    cmp ax, strict word 0x16
    jle short 0x801e
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xfa90
    pop cx
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x00f3], 0
    push word [bp - 0x000c]
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x50
    sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xe84e
    add sp, byte 4
    mov byte [bp - 0x00f2], 0
    add word [bp - 0x000c], byte 6
    lea ax, word [bp - 0x0142]
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xf32d
    add sp, byte 4
    mov ax, 0x90ca
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xf32d
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jge short 0x804b
    jmp near 0x7f8d
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xfa90
    pop cx
    cmp ax, strict word 0
    jle short 0x809f
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xfa90
    pop cx
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x00f3], 0
    push word [bp - 0x000c]
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x50
    sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xe84e
    add sp, byte 4
    cmp word [bp - 0x0006], byte 0
    jne short 0x80f6
    lea ax, word [bp - 0x00f2]
    push ax
    mov bx, word [bp + 0x6]
    cmp word [bx], strict word 0x1d5
    jne short 0x80b8
    mov ax, 0x1e4
    jmp short 0x80bb
    mov ax, 0x1e3
    push ax
    call 0xb53b
    add sp, byte 4
    push word [bp - 0x000c]
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x50
    sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xe84e
    add sp, byte 4
    jmp near 0x826f
    cmp word [bp - 0x001e], byte 0
    jne short 0x8102
    jmp near 0x826f
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x00f2]
    push ax
    mov ax, 0x1d9
    push ax
    call 0xb53b
    add sp, byte 4
    push word [bp - 0x000c]
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x50
    sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xe84e
    add sp, byte 4
    add word [bp - 0x000c], byte 6
    mov ax, 0
    push ax
    mov ax, 0xa9
    push ax
    call 0xe823
    add sp, byte 4
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0004], 0
    mov bx, word [bp - 0x0004]
    add bx, bp
    mov al, byte [bx - 0x0052]
    sub ah, ah
    mov cx, 0x10
    cwd
    idiv cx
    mov word [bp - 0x0002], ax
    mov ax, 0xa
    imul dx
    mov word [bp - 0x0008], ax
    cmp word [bp - 0x0002], byte 0
    jg short 0x8193
    jmp near 0x8218
    mov word [bp - 0x0006], 1
    lea ax, word [bp - 0x00f2]
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0x190
    push ax
    call 0xb53b
    add sp, byte 4
    push word [bp - 0x000c]
    mov ax, 0x26
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xe84e
    add sp, byte 4
    lea ax, word [bp - 0x00f2]
    push ax
    push word [bp - 0x0008]
    call 0xb27d
    add sp, byte 4
    mov ax, 0x90cc
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xf32d
    add sp, byte 4
    push word [bp - 0x000c]
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xfa90
    pop cx
    mov cx, ax
    mov ax, 0xe
    sub ax, cx
    mov cx, 6
    imul cx
    add ax, strict word 0x26
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xe84e
    add sp, byte 4
    add word [bp - 0x000c], byte 6
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 2
    jge short 0x8226
    jmp near 0x816f
    cmp word [bp - 0x0006], byte 0
    jne short 0x826f
    lea ax, word [bp - 0x00f2]
    push ax
    mov ax, 0x1e3
    push ax
    call 0xb53b
    add sp, byte 4
    push word [bp - 0x000c]
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x50
    sub ax, cx
    push ax
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call 0xe84e
    add sp, byte 4
    mov ax, 0xb6
    push ax
    mov ax, 0xab
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    call 0xe8da
    add sp, byte 8
    cmp word [0x0e32], byte 0
    je short 0x82bd
    cmp word [bp + 0xa], byte 0
    jne short 0x82af
    cmp word [bp - 0x0194], byte 0
    je short 0x82ad
    lea ax, word [bp - 0x000c]
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    call 0xf053
    add sp, byte 4
    test ax, ax
    je short 0x82ad
    jmp short 0x8292
    jmp short 0x82bb
    call 0xec17
    call 0xbaef
    test ax, ax
    jne short 0x82bb
    jmp short 0x82b2
    jmp short 0x82d6
    mov ax, 1
    push ax
    call 0xeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x0008], ax
    cmp word [bp - 0x0008], byte 0x0d
    je short 0x82d6
    cmp word [bp - 0x0008], byte 0x1b
    jne short 0x82bd
    mov ax, 0
    ret
    mov ax, 0xfffc
    call 0xf40b
    mov ax, word [0x0038]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    jmp short 0x8324
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short 0x830c
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    add ax, si
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short 0x8311
    mov ax, 1
    jmp short 0x8314
    mov ax, 0
    add si, word [bp - 0x0004]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6968], ax
    inc word [bp - 0x0002]
    push word [bp + 0x6]
    call 0xfa90
    pop cx
    cmp ax, word [bp - 0x0002]
    jg short 0x82ed
    mov ax, word [0x003c]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    jmp short 0x8374
    mov bx, word [bp + 0x8]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short 0x835c
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    add ax, si
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short 0x8361
    mov ax, 1
    jmp short 0x8364
    mov ax, 0
    add si, word [bp - 0x0004]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6968], ax
    inc word [bp - 0x0002]
    push word [bp + 0x8]
    call 0xfa90
    pop cx
    cmp ax, word [bp - 0x0002]
    jg short 0x833d
    mov ax, word [0x0040]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    jmp short 0x83c4
    mov bx, word [bp + 0xa]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short 0x83ac
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    add ax, si
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short 0x83b1
    mov ax, 1
    jmp short 0x83b4
    mov ax, 0
    add si, word [bp - 0x0004]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6968], ax
    inc word [bp - 0x0002]
    push word [bp + 0xa]
    call 0xfa90
    pop cx
    cmp ax, word [bp - 0x0002]
    jg short 0x838d
    mov ax, word [0x0044]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    jmp short 0x8414
    mov bx, word [bp + 0xc]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short 0x83fc
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    add ax, si
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short 0x8401
    mov ax, 1
    jmp short 0x8404
    mov ax, 0
    add si, word [bp - 0x0004]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6968], ax
    inc word [bp - 0x0002]
    push word [bp + 0xc]
    call 0xfa90
    pop cx
    cmp ax, word [bp - 0x0002]
    jg short 0x83dd
    ret
    mov ax, 0xfffc
    call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp near 0x85d8
    mov ax, 0x90e9
    push ax
    mov ax, 0x90e2
    push ax
    mov ax, 0x90d9
    push ax
    mov ax, 0x90ce
    push ax
    push word [bp + 0x4]
    call 0x82da
    add sp, byte 0x0a
    jmp near 0x85e5
    mov ax, 0x910f
    push ax
    mov ax, 0x9108
    push ax
    mov ax, 0x90ff
    push ax
    mov ax, 0x90f4
    push ax
    push word [bp + 0x4]
    call 0x82da
    add sp, byte 0x0a
    jmp near 0x85e5
    mov ax, 0x9135
    push ax
    mov ax, 0x912e
    push ax
    mov ax, 0x9125
    push ax
    mov ax, 0x911a
    push ax
    push word [bp + 0x4]
    call 0x82da
    add sp, byte 0x0a
    jmp near 0x85e5
    mov ax, 0x915b
    push ax
    mov ax, 0x9154
    push ax
    mov ax, 0x914b
    push ax
    mov ax, 0x9140
    push ax
    push word [bp + 0x4]
    call 0x82da
    add sp, byte 0x0a
    jmp near 0x85e5
    mov ax, 0x9181
    push ax
    mov ax, 0x917a
    push ax
    mov ax, 0x9171
    push ax
    mov ax, 0x9166
    push ax
    push word [bp + 0x4]
    call 0x82da
    add sp, byte 0x0a
    jmp near 0x85e5
    mov ax, 0x91a7
    push ax
    mov ax, 0x91a0
    push ax
    mov ax, 0x9197
    push ax
    mov ax, 0x918c
    push ax
    push word [bp + 0x4]
    call 0x82da
    add sp, byte 0x0a
    jmp near 0x85e5
    mov ax, 0x91cd
    push ax
    mov ax, 0x91c6
    push ax
    mov ax, 0x91bd
    push ax
    mov ax, 0x91b2
    push ax
    push word [bp + 0x4]
    call 0x82da
    add sp, byte 0x0a
    jmp near 0x85e5
    mov ax, 0x91f3
    push ax
    mov ax, 0x91ec
    push ax
    mov ax, 0x91e3
    push ax
    mov ax, 0x91d8
    push ax
    push word [bp + 0x4]
    call 0x82da
    add sp, byte 0x0a
    jmp near 0x85e5
    mov ax, 0x9219
    push ax
    mov ax, 0x9212
    push ax
    mov ax, 0x9209
    push ax
    mov ax, 0x91fe
    push ax
    push word [bp + 0x4]
    call 0x82da
    add sp, byte 0x0a
    jmp near 0x85e5
    mov ax, 0x923f
    push ax
    mov ax, 0x9238
    push ax
    mov ax, 0x922f
    push ax
    mov ax, 0x9224
    push ax
    push word [bp + 0x4]
    call 0x82da
    add sp, byte 0x0a
    jmp near 0x85e5
    mov ax, 0x9265
    push ax
    mov ax, 0x925e
    push ax
    mov ax, 0x9255
    push ax
    mov ax, 0x924a
    push ax
    push word [bp + 0x4]
    call 0x82da
    add sp, byte 0x0a
    jmp short 0x85e5
    mov ax, 0x928b
    push ax
    mov ax, 0x9284
    push ax
    mov ax, 0x927b
    push ax
    mov ax, 0x9270
    push ax
    push word [bp + 0x4]
    call 0x82da
    add sp, byte 0x0a
    jmp short 0x85e5
    mov ax, 0x92b1
    push ax
    mov ax, 0x92aa
    push ax
    mov ax, 0x92a1
    push ax
    mov ax, 0x9296
    push ax
    push word [bp + 0x4]
    call 0x82da
    add sp, byte 0x0a
    jmp short 0x85e5
    mov ax, 0x92d7
    push ax
    mov ax, 0x92d0
    push ax
    mov ax, 0x92c7
    push ax
    mov ax, 0x92bc
    push ax
    push word [bp + 0x4]
    call 0x82da
    add sp, byte 0x0a
    jmp short 0x85e5
    jg short 0x8592
    wait
    aam 0xb7
    aam 0xd3
    aam 0xef
    aam 0xb
    aad 0x27
    aad 0x43
    aad 0x5f
    aad 0x7b
    aad 0x97
    aad 0xb2
    aad 0xcd
    aad 0xe8
    aad 0x3d
    push cs
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x29fd]
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d65], 0xd
    jbe short 0x8601
    cmp byte [bx + 0x5d6a], 0xd
    jbe short 0x8601
    mov word [0x96d0], 1
    mov word [bp - 0x0004], 0
    mov ax, word [bp + 0x6]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x38, 0x00 ; mov ax, word ptr [bx + 0x38]
    mov word [bp - 0x0002], ax
    jmp short 0x8652
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6968], byte 1
    jne short 0x864f
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
    jge short 0x8618
    mov ax, 0x96dc
    push ax
    mov ax, 0x159e
    push ax
    call 0xb53b
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [0x93f8]
    push word [0x93f6]
    call 0xe942
    add sp, byte 8
    mov word [bp - 0x0002], 0
    jmp near 0x8724
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
    jge short 0x872f
    jmp near 0x8697
    ret
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
    je short 0x88f3
    jmp near 0x8972
    cmp word [bp - 0x0008], byte 0
    jne short 0x8964
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
    je short 0x8936
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
    jmp short 0x896f
    mov ax, 0xa
    push ax
    call 0xe489
    pop cx
    dec word [bp - 0x0008]
    jmp near 0x88e4
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
    jne short 0x89c9
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], 0
    call 0xec17
    ret
    cmp word [bp - 0x0002], byte 8
    jne short 0x89e9
    cmp word [bp - 0x0004], byte 0
    jle short 0x89de
    dec word [bp - 0x0004]
    add word [bp + 0x6], byte 0xfa
    jmp short 0x89e6
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp near 0x8a6a
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp + 0xa]
    jl short 0x89fc
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp near 0x8a6a
    cmp word [bp + 0x10], byte 0
    jne short 0x8a0f
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x20
    jl short 0x8a0f
    cmp ax, strict word 0x7f
    jle short 0x8a22
    cmp word [bp + 0x10], byte 1
    jne short 0x8a6a
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x30
    jl short 0x8a6a
    cmp ax, strict word 0x39
    jg short 0x8a6a
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
    jmp near 0x88da
    ret
    mov ax, 0xffda
    call 0xf40b
    mov word [0x904e], 0xffff
    mov word [bp - 0x0002], 0x37
    mov word [bp - 0x0004], 0x8f
    mov word [bp - 0x0006], 0x108
    mov word [bp - 0x0008], 0xc5
    mov ax, 0x92e2
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
    call 0x88b6
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
    je short 0x8d67
    jmp near 0x8f44
    jmp near 0x8f27
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
    call 0x88b6
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
    jmp near 0x8f44
    cmp word [bp + 0x6], byte 0
    je short 0x8e84
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
    jmp near 0x8f44
    cmp word [bp + 0x8], byte 0
    je short 0x8ed5
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
    jmp short 0x8f44
    cmp word [bp + 0xa], byte 0
    je short 0x8f25
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
    jmp short 0x8f44
    cmp ax, strict word 0
    jne short 0x8f2f
    jmp near 0x8d6a
    cmp ax, strict word 1
    jne short 0x8f37
    jmp near 0x8e36
    cmp ax, strict word 2
    jne short 0x8f3f
    jmp near 0x8e87
    cmp ax, strict word 3
    je short 0x8ed7
    cmp word [bp - 0x0010], byte 0
    je short 0x8f4d
    jmp near 0x8d51
    mov ax, 1
    push ax
    push word [bp - 0x0026]
    call 0xc459
    add sp, byte 4
    mov word [0x904e], 0xffff
    mov ax, word [0x9050]
    ret
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
    jle short 0x8fac
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
    cmp ax, strict word 7
    jl short 0x8f6f
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6984], 1
    mov word [bp - 0x0002], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d64]
    sub ah, ah
    push ax
    mov bx, word [bp + 0x8]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si]
    cbw
    mov cx, ax
    add ax, strict word 0xffbf
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short 0x9022
    cmp word [bp + 0xa], byte 0
    je short 0x9015
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
    jmp short 0x9022
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6984], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short 0x8fd0
    ret
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x6]
    jmp near 0x91a4
    push word [bp + 0x8]
    mov ax, 0x92e8
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x8fb8
    add sp, byte 8
    jmp near 0x91b1
    push word [bp + 0x8]
    mov ax, 0x92f1
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x8fb8
    add sp, byte 8
    jmp near 0x91b1
    push word [bp + 0x8]
    mov ax, 0x92fa
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x8fb8
    add sp, byte 8
    jmp near 0x91b1
    push word [bp + 0x8]
    mov ax, 0x9303
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x8fb8
    add sp, byte 8
    jmp near 0x91b1
    push word [bp + 0x8]
    mov ax, 0x930c
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x8fb8
    add sp, byte 8
    jmp near 0x91b1
    push word [bp + 0x8]
    mov ax, 0x9315
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x8fb8
    add sp, byte 8
    jmp near 0x91b1
    push word [bp + 0x8]
    mov ax, 0x931e
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x8fb8
    add sp, byte 8
    jmp near 0x91b1
    push word [bp + 0x8]
    mov ax, 0x9327
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x8fb8
    add sp, byte 8
    jmp near 0x91b1
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2c], 1
    jne short 0x910e
    push word [bp + 0x8]
    mov ax, 0x9330
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x8fb8
    add sp, byte 8
    jmp short 0x911b
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6984], 0
    jmp near 0x91b1
    push word [bp + 0x8]
    mov ax, 0x9339
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x8fb8
    add sp, byte 8
    jmp near 0x91b1
    push word [bp + 0x8]
    mov ax, 0x9342
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x8fb8
    add sp, byte 8
    jmp short 0x91b1
    push word [bp + 0x8]
    mov ax, 0x934b
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x8fb8
    add sp, byte 8
    jmp short 0x91b1
    push word [bp + 0x8]
    mov ax, 0x9354
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x8fb8
    add sp, byte 8
    jmp short 0x91b1
    push word [bp + 0x8]
    mov ax, 0x935d
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x8fb8
    add sp, byte 8
    jmp short 0x91b1
    db 0x81, 0xe0, 0x97, 0xe0 ; and ax, 0xe097
    lodsw
    loopne 0x9152
    loopne 0x916a
    loopne 0x9182
    loopne 0x919a
    loope 0x91b2
    loope 0x91ca
    loope 0x9200
    loope 0x9218
    loope 0x912f
    loope 0x9146
    loope 0x915d
    loope 0x91e2
    push cs
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x1e31]
    ret
    mov ax, 0xfffe
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call 0x902e
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xd
    jle short 0x91bd
    ret
    mov ax, 0
    call 0xf40b
    mov ax, word [bp + 0x6]
    jmp near 0x92a5
    mov ax, 0x9366
    push ax
    push word [bp + 0x4]
    call 0x8f64
    add sp, byte 4
    jmp near 0x92b2
    mov ax, 0x936f
    push ax
    push word [bp + 0x4]
    call 0x8f64
    add sp, byte 4
    jmp near 0x92b2
    mov ax, 0x9378
    push ax
    push word [bp + 0x4]
    call 0x8f64
    add sp, byte 4
    jmp near 0x92b2
    mov ax, 0x9381
    push ax
    push word [bp + 0x4]
    call 0x8f64
    add sp, byte 4
    jmp near 0x92b2
    mov ax, 0x938a
    push ax
    push word [bp + 0x4]
    call 0x8f64
    add sp, byte 4
    jmp near 0x92b2
    mov ax, 0x9393
    push ax
    push word [bp + 0x4]
    call 0x8f64
    add sp, byte 4
    jmp short 0x92b2
    mov ax, 0x939c
    push ax
    push word [bp + 0x4]
    call 0x8f64
    add sp, byte 4
    jmp short 0x92b2
    mov ax, 0x93a5
    push ax
    push word [bp + 0x4]
    call 0x8f64
    add sp, byte 4
    jmp short 0x92b2
    mov ax, 0x93ae
    push ax
    push word [bp + 0x4]
    call 0x8f64
    add sp, byte 4
    jmp short 0x92b2
    mov ax, 0x93b7
    push ax
    push word [bp + 0x4]
    call 0x8f64
    add sp, byte 4
    jmp short 0x92b2
    mov ax, 0x93c0
    push ax
    push word [bp + 0x4]
    call 0x8f64
    add sp, byte 4
    jmp short 0x92b2
    sub al, 0xe2
    cmp al, 0xe2
    dec sp
    loop 0x92f2
    loop 0x9304
    loop 0x9316
    loop 0x9227
    loop 0x9238
    loop 0x9249
    loop 0x925a
    loop 0x926b
    loop 0x92e3
    or ax, word [bx + si]
    jae short 0x92b2
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x1d2a]
    ret
    mov ax, 0xffd0
    call 0xf40b
    push word [bp + 0x4]
    call 0x91b2
    pop cx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6984], 0
    mov word [bp - 0x0006], 1
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6984], byte 1
    jne short 0x92f5
    mov ax, 1
    jmp short 0x92f8
    mov ax, 0
    add bx, bp
    mov word [bx - 0x0030], ax
    cmp word [bx - 0x0030], byte 0
    je short 0x9306
    inc word [bp - 0x0006]
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xd
    jle short 0x92e2
    mov word [bp - 0x0014], 1
    mov word [bp - 0x0012], 0xffff
    lea ax, word [bp - 0x0030]
    push ax
    mov ax, 0
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    inc ax
    mov cx, 3
    cwd
    idiv cx
    imul cx
    push ax
    mov ax, word [bp - 0x0006]
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
    call math_loc_1ca0
    add sp, byte 0x1a
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xd
    jle short 0x936f
    jmp near 0x9433
    mov al, byte [bp - 0x0004]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5e2d], al
    cmp word [bx + 0x5c18], strict word 0xfa
    jge short 0x939e
    mov al, byte [bx + 0x5e3b]
    sub ah, ah
    cmp ax, word [bx + 0x5c18]
    jge short 0x939c
    mov al, byte [bx + 0x5c18]
    mov byte [bx + 0x5e3b], al
    jmp short 0x93a3
    mov byte [bx + 0x5e3b], 0
    mov word [bx + 0x5c18], 1
    mov byte [bx + 0x5e2e], 0
    mov word [bx + 0x5c02], 0
    mov word [bx + 0x5c00], 0
    mov al, byte [bx + 0x5e2b]
    sub ah, ah
    push ax
    push word [bp + 0x4]
    call 0x91d9
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
    call 0x902e
    add sp, byte 6
    mov word [bp - 0x0008], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0xc
    imul word [bp - 0x0008]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 1
    je short 0x941b
    test ax, 2
    jne short 0x941b
    push word [bp - 0x0008]
    push word [bp + 0x4]
    call 0xc7dc
    add sp, byte 4
    inc word [bp - 0x0008]
    mov ax, word [bp - 0x0008]
    cmp ax, strict word 0xa
    jl short 0x93eb
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_40b7
    add sp, byte 4
    ret
    mov ax, 0xffea
    call 0xf40b
    mov ax, 0x93c9
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
    jne short 0x9476
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
    mov ax, 0xffde
    call 0xf40b
    mov word [bp - 0x000c], 0
    mov ax, word [0x5218]
    mov word [bp - 0x000e], ax
    cmp byte [0x5987], 5
    jne short 0x94b2
    cmp ax, strict word 0
    jle short 0x94b2
    inc ax
    inc ax
    jmp short 0x94b5
    mov ax, word [bp - 0x000e]
    mov word [bp - 0x000e], ax
    mov ax, 0x3a
    push ax
    mov ax, 0x5912
    push ax
    lea ax, word [bp - 0x0022]
    push ax
    call 0xd112
    add sp, byte 6
    cmp word [bp - 0x000e], byte 0
    je short 0x94e8
    mov word [bp - 0x000c], 1
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0022]
    push ax
    call 0xd1a8
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    push word [0x93f0]
    push word [0x93ee]
    call 0xe942
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
    mov word [bp - 0x0008], dx
    mov word [bp - 0x000a], ax
    push word [bp + 0x4]
    call api_idx_007c
    pop cx
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
    call 0x8730
    add sp, byte 0x0c
    mov word [bp - 0x0004], dx
    mov word [bp - 0x0006], ax
    call 0xec17
    mov ax, 0
    push ax
    push word [bp - 0x0008]
    push word [bp - 0x000a]
    call 0xe94f
    add sp, byte 6
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x69bc]
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2a]
    sub ah, ah
    push ax
    call 0x9434
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
    je short 0x95e0
    mov ax, word [bp - 0x0002]
    jmp short 0x9634
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
    jmp short 0x963e
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
    jmp short 0x963e
    cmp ax, strict word 0
    je short 0x95f8
    cmp ax, strict word 1
    je short 0x9617
    cmp word [bp - 0x0002], byte 2
    je short 0x9647
    jmp near 0x9589
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
    mov ax, 1
    push ax
    push word [bp - 0x0008]
    push word [bp - 0x000a]
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
    cmp word [bp - 0x000c], byte 1
    jne short 0x96d4
    mov ax, 1
    push ax
    push ax
    push word [bp - 0x000e]
    lea ax, word [bp - 0x0022]
    push ax
    call 0xd1a8
    add sp, byte 8
    ret
    mov ax, 0xfff2
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
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x000a]
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x48e
    push ax
    call 0x8a6e
    add sp, byte 0x0a
    cmp ax, strict word 2
    jne short 0x971f
    ret
    lea ax, word [bp - 0x000a]
    push ax
    call 0xfa90
    pop cx
    test ax, ax
    je short 0x973f
    lea ax, word [bp - 0x000a]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    call 0xf364
    add sp, byte 4
    ret
    mov ax, 0xffe8
    call 0xf40b
    mov word [bp - 0x0002], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0018], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jle short 0x974b
    mov word [bp - 0x0012], 0
    mov word [bp - 0x000e], 0xffff
    lea ax, word [bp - 0x0018]
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
    mov ax, 0x46
    push ax
    mov ax, 0xb
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 4
    push ax
    mov ax, 0
    push ax
    mov ax, 0x474
    push ax
    call math_loc_1ca0
    add sp, byte 0x1a
    mov word [bp - 0x0004], ax
    jmp short 0x97c8
    push word [bp + 0x4]
    call 0x96d5
    pop cx
    jmp short 0x97d7
    push word [bp + 0x4]
    call 0x9491
    pop cx
    jmp short 0x97d7
    push word [bp + 0x4]
    call 0x92b3
    pop cx
    jmp short 0x97d7
    cmp ax, strict word 0
    je short 0x97ad
    cmp ax, strict word 1
    je short 0x97b6
    cmp ax, strict word 2
    je short 0x97bf
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_40b7
    add sp, byte 4
    cmp word [bp - 0x0004], byte 4
    je short 0x97ed
    jmp near 0x9746
    ret
    pop word [0x93de]
    pop cx
    mov word [0x93da], sp
    mov word [0x93dc], bp
    mov word [0x93d6], si
    mov word [0x93d8], di
    cld
    mov di, 0x93e0
    mov cx, 0x96f0
    sub cx, di
    shr cx, 1
    je short 0x9814
    sub ax, ax
    rep stosw
    call 0xe
    mov bp, word [0x93dc]
    mov sp, word [0x93da]
    mov si, word [0x93d6]
    mov di, word [0x93d8]
    push cx
    jmp [0x93de]
    pop bx
    push di
    push es
    mov di, cs
    mov es, di
    mov di, bx
    mov bx, cx
    shl bx, 1
    cld
    repne scasw
    mov cx, word [es:bx + di - 0x0004]
    pop es
    pop di
    jmp cx
    and ax, strict word 0x20
    push si
    cs and al, 0x24
    and al, 0
    push si
    cs and al, 0x24
    and al, 0
    sub ch, byte [bp + si]
    sub al, byte [bx + si]
    push si
    cs and al, 0x24
    and al, 0
    and byte [bx + si], al
    push ax
    inc bx
    push si
    push di
    push bx
    inc bx
    push dx
    dec si
    cs push si
    inc di
    inc cx
    add byte [bx + si], ch
    add byte [bp + di], ch
    add byte [bx + di], ch
    add byte [bp + di], ch
    add byte [bx], ch
    add byte [bx + si], ah
    add byte [di], ah
    add byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + si], si
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    add byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + di], si
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    add byte [bx + di], dh
    xor byte [bx + si], dh
    xor byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + si], si
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + si], si
    xor word [bx + si], si
    xor byte [bx + si], dh
    add byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + di], si
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor word [bx + si], si
    add byte [bx + si], dh
    xor byte [bx + si], dh
    xor word [bx + di], si
    xor byte [bx + di], dh
    xor byte [bx + di], dh
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + si], si
    xor word [bx + si], si
    xor byte [bx + si], dh
    add byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + si], si
    xor word [bx + si], si
    xor byte [bx + si], dh
    add byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + si], si
    xor word [bx + di], si
    xor word [bx + di], si
    add byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + di], si
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    add byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + si], si
    xor byte [bx + di], dh
    xor word [bx + di], si
    add byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + di], si
    xor byte [bx + di], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    add byte [bx + di], dh
    xor byte [bx + si], dh
    xor word [bx + di], si
    xor word [bx + si], si
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + si], si
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    add byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + di], si
    xor byte [bx + di], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    add byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    add byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + di], si
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor word [bx + si], si
    add byte [bx + di], dh
    xor byte [bx + si], dh
    xor word [bx + di], si
    xor word [bx + di], si
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + si], si
    xor word [bx + si], si
    xor byte [bx + si], dh
    add byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + di], si
    xor byte [bx + si], dh
    xor byte [bx + di], dh
    xor byte [bx + si], dh
    add byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + si], si
    xor word [bx + si], si
    xor byte [bx + si], dh
    add byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + di], si
    xor byte [bx + si], dh
    xor word [bx + si], si
    xor byte [bx + si], dh
    add byte [bx + si], dh
    xor byte [bx + si], dh
    xor word [bx + di], si
    xor byte [bx + di], dh
    xor byte [bx + di], dh
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + si], si
    xor word [bx + si], si
    xor byte [bx + si], dh
    add byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + si], si
    xor word [bx + si], si
    xor word [bx + si], si
    add byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + si], si
    xor word [bx + si], si
    xor byte [bx + si], dh
    add byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + si], si
    xor word [bx + si], si
    xor byte [bx + si], dh
    add byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + si], si
    xor word [bx + si], si
    xor byte [bx + si], dh
    add byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + di], si
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor word [bx + di], si
    add byte [bx + di], dh
    xor byte [bx + si], dh
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + si], si
    xor word [bx + si], ax
    xor word [bx + di], si
    xor word [bx + si], si
    xor word [bx + si], si
    xor byte [bx + di], dh
    add byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + di], si
    xor byte [bx + si], dh
    xor byte [bx + di], dh
    xor byte [bx + di], dh
    add byte [bx + di], dh
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + di], si
    xor word [bx + si], ax
    xor word [bx + di], si
    xor word [bx + si], si
    xor byte [bx + di], dh
    xor word [bx + di], si
    add byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], dh
    xor byte [bx + si], al
    xor word [bx + di], si
    xor word [bx + di], si
    xor byte [bx + di], dh
    xor byte [bx + si], dh
    xor byte [bx + di], dh
    add byte [bp + 0x2e], dl
    and al, 0x24
    and al, 0
    dec bp
    inc cx
    inc cx
    inc cx
    inc cx
    inc cx
    inc cx
    inc cx
    add byte [bx + di + 0x4d], al
    inc cx
    inc cx
    inc cx
    inc cx
    inc cx
    inc cx
    add byte [bx + di + 0x41], al
    dec bp
    inc cx
    inc cx
    inc cx
    dec cx
    inc cx
    add byte [bx + di + 0x41], al
    inc cx
    inc cx
    dec bp
    dec cx
    inc cx
    inc cx
    add byte [bp + di + 0x49], cl
    dec cx
    dec sp
    dec bx
    dec cx
    dec cx
    inc cx
    add byte [bx + di + 0x4e], al
    inc cx
    inc cx
    dec si
    inc cx
    inc cx
    inc cx
    add byte [bx + di + 0x4b], al
    inc cx
    inc cx
    dec bp
    dec cx
    dec bp
    inc cx
    add byte [bp + di + 0x4f], cl
    inc cx
    dec di
    inc cx
    inc cx
    dec bx
    inc cx
    add byte [bp + di + 0x41], cl
    dec sp
    dec sp
    dec bx
    dec sp
    dec cx
    inc cx
    add byte [bx + di + 0x50], al
    push ax
    inc cx
    inc cx
    inc cx
    dec cx
    inc cx
    add byte [di + 0x4a], cl
    dec bp
    dec bp
    dec dx
    dec dx
    dec di
    inc cx
    add byte [di + 0x4c], cl
    inc cx
    dec dx
    dec bp
    dec di
    dec cx
    inc cx
    add byte [bp + 0x49], cl
    dec si
    inc cx
    dec bx
    dec si
    dec cx
    inc cx
    add byte [di + 0x4b], cl
    dec bx
    dec bp
    dec bp
    dec bp
    inc cx
    inc cx
    add byte [bp + si + 0x49], cl
    dec cx
    dec dx
    dec dx
    dec cx
    dec cx
    inc cx
    add byte [bx + si + 0x4b], cl
    dec bx
    dec ax
    dec dx
    dec dx
    dec cx
    inc cx
    add byte [si + 0x47], cl
    dec bx
    dec bp
    dec ax
    dec ax
    dec ax
    inc cx
    add byte [bp + di + 0x48], cl
    dec si
    dec bx
    dec cx
    inc di
    inc di
    inc cx
    add byte [bx + di + 0x48], cl
    inc di
    dec dx
    dec bx
    dec ax
    dec si
    inc cx
    add byte [bp + 0x4c], al
    inc di
    inc di
    dec bx
    dec di
    dec bp
    inc cx
    add byte [di + 0x46], cl
    inc si
    dec di
    dec cx
    dec bx
    inc sp
    inc cx
    add byte [bp + di + 0x48], cl
    inc di
    dec bp
    dec bx
    dec cx
    inc di
    inc cx
    add byte [bx + si + 0x4b], cl
    dec ax
    dec ax
    dec bx
    dec bp
    dec bx
    inc cx
    add byte [bx + di + 0x47], cl
    dec bp
    dec bx
    dec cx
    dec cx
    dec bx
    inc cx
    add byte [bp + di + 0x4b], cl
    inc di
    dec bx
    dec ax
    dec ax
    dec dx
    inc cx
    add byte [bx + si + 0x4f], dl
    push dx
    push sp
    inc sp
    inc cx
    push sp
    inc cx
    cs push si
    inc di
    inc cx
    add byte [bx + si], al
    add byte [bx + si], al
    add byte [bx + si], al
    add byte [bx + si], al
    add byte [bx + si], al
    db 0x00
