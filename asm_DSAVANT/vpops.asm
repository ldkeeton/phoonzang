%include "structs/structs.inc"
%include "structs/vpops.inc"
org 0
bits 16

    db 0xf2, 0x00, 0x55, 0x50, 0xcd, 0x4e, 0x98, 0x90 ; header (8 bytes)

    db 0x3e, 0x00, 0xb8, 0x02, 0xe4, 0x9e
loc_000e:
    mov ax, 0
    call 0xf40b
    cmp word [0x830a], byte 0x0c
    jne short @..local.l1
    call api_idx_0004_5
@..local.l1:
    mov ax, 0
    ret
api_idx_002a:
    mov ax, 0xffd6
    db 0xe8, 0xe3, 0xf3 ; call 0xfffff40b
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
    jne short @..api_idx_002a.l1
    lea ax, word [bp - 0x002a]
    push ax
    call 0xfa90
    pop cx
    mov word [bp - 0x0002], ax
@..api_idx_002a.l1:
    cmp word [bp - 0x0002], byte 0x0a
    jle short @..api_idx_002a.l2
    mov word [bp - 0x0002], 0xa
@..api_idx_002a.l2:
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
    db 0xe8, 0x55, 0xe7 ; call 0xffffe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    lea cx, word [bp - 0x0029]
    add ax, cx
    push ax
    db 0xe8, 0x87, 0xe7 ; call 0xffffe84e
    add sp, byte 4
    ret
api_idx_000a:
    mov ax, 0xfff6
    db 0xe8, 0x3a, 0xf3 ; call 0xfffff40b
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
    db 0xe8, 0x5d, 0xe8 ; call 0xffffe94f
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
    je short @..api_idx_000a.l1
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
@..api_idx_000a.l1:
    ret
math_loc_0149:
    mov ax, 0
    db 0xe8, 0xbc, 0xf2 ; call 0xfffff40b
    mov ax, 0
    push ax
    push word [bp + 0xa]
    db 0xe8, 0xca, 0xe6 ; call 0xffffe823
    add sp, byte 4
    push word [bp + 0x8]
    push word [bp + 0x4]
    db 0xe8, 0x2b, 0xf9 ; call 0xfffffa90
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
    db 0xe8, 0x8d, 0xe6 ; call 0xffffe809
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    db 0xe8, 0xc5, 0xe6 ; call 0xffffe84e
    add sp, byte 4
    ret
api_idx_0006:
    mov ax, 0xfffa
    db 0xe8, 0x78, 0xf2 ; call 0xfffff40b
    mov ax, word [bp + 0x4]
    jmp near @..api_idx_0006.l5
@..api_idx_0006.l1:
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
    jmp near @..api_idx_0006.l8
@..api_idx_0006.l2:
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
    db 0xe8, 0x9e, 0xc0 ; call 0xffffc283
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
    db 0xe8, 0x81, 0xc0 ; call 0xffffc283
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
    db 0xe8, 0x64, 0xc0 ; call 0xffffc283
    add sp, byte 0x0a
    mov word [bp - 0x0006], ax
    mov ax, 0
    push ax
    call api_idx_000a
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    db 0xe8, 0x22, 0xc2 ; call 0xffffc459
    add sp, byte 4
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    db 0xe8, 0x15, 0xc2 ; call 0xffffc459
    add sp, byte 4
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    db 0xe8, 0x08, 0xc2 ; call 0xffffc459
    add sp, byte 4
    jmp short @..api_idx_0006.l8
@..api_idx_0006.l3:
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
    db 0xe8, 0x16, 0xc0 ; call 0xffffc283
    add sp, byte 0x0a
    mov word [bp - 0x0002], ax
    mov ax, 0
    push ax
    call api_idx_000a
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    db 0xe8, 0xd4, 0xc1 ; call 0xffffc459
    add sp, byte 4
    jmp short @..api_idx_0006.l8
@..api_idx_0006.l4:
    mov ax, 0
    push ax
    call api_idx_000a
    pop cx
    jmp short @..api_idx_0006.l8
@..api_idx_0006.l5:
    cmp ax, strict word 0
    jne short @..api_idx_0006.l6
    jmp near @..api_idx_0006.l1
@..api_idx_0006.l6:
    cmp ax, strict word 1
    jne short @..api_idx_0006.l7
    jmp near @..api_idx_0006.l2
@..api_idx_0006.l7:
    cmp ax, strict word 2
    je short @..api_idx_0006.l3
    cmp ax, strict word 3
    je short @..api_idx_0006.l4
@..api_idx_0006.l8:
    ret
loc_02af:
    mov ax, 0
    db 0xe8, 0x56, 0xf1 ; call 0xfffff40b
    mov ax, word [bp + 0x4]
    jmp near @..local.l6
@..local.l2:
    mov ax, 0x9f
    push ax
    mov ax, 0xcd
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0x73
    push ax
    db 0xe8, 0x0c, 0xe6 ; call 0xffffe8da
    add sp, byte 8
    mov ax, 0xc2
    push ax
    mov ax, 0x60
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 8
    push ax
    db 0xe8, 0xf6, 0xe5 ; call 0xffffe8da
    add sp, byte 8
    mov ax, 0xc2
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 0xe7
    push ax
    db 0xe8, 0xe0, 0xe5 ; call 0xffffe8da
    add sp, byte 8
    jmp short @..local.l8
@..local.l3:
    mov ax, 0xc2
    push ax
    mov ax, 0xe0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x62
    push ax
    db 0xe8, 0xc8, 0xe5 ; call 0xffffe8da
    add sp, byte 8
    jmp short @..local.l8
@..local.l4:
    mov ax, 0x9f
    push ax
    mov ax, 0xcd
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0x73
    push ax
    db 0xe8, 0xb0, 0xe5 ; call 0xffffe8da
    add sp, byte 8
    jmp short @..local.l8
@..local.l5:
    mov ax, 0xc2
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0x93
    push ax
    mov ax, 8
    push ax
    db 0xe8, 0x98, 0xe5 ; call 0xffffe8da
    add sp, byte 8
    jmp short @..local.l8
@..local.l6:
    cmp ax, strict word 0
    jne short @..local.l7
    jmp near @..local.l2
@..local.l7:
    cmp ax, strict word 1
    je short @..local.l3
    cmp ax, strict word 2
    je short @..local.l4
    cmp ax, strict word 3
    je short @..local.l5
@..local.l8:
    ret
api_idx_0054:
    mov ax, 0xffac
    db 0xe8, 0xa6, 0xf0 ; call 0xfffff40b
    mov ax, 1
    push ax
    call api_idx_0006
    pop cx
    mov word [bp - 0x0002], 1
    jmp near @..api_idx_0054.l9
@..api_idx_0054.l1:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + 0x1a2], 0
    mov word [bp - 0x0004], 0
    jmp short @..api_idx_0054.l4
@..api_idx_0054.l2:
    mov ax, 0x2c
    imul word [bp - 0x0004]
    mov si, ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + si + 0x22], 2
    jae short @..api_idx_0054.l3
    cmp byte [bx + si + 0x11], 0
    jne short @..api_idx_0054.l3
    cmp byte [bx + si + 0x10], 0
    jne short @..api_idx_0054.l3
    inc byte [bx + 0x1a2]
@..api_idx_0054.l3:
    inc word [bp - 0x0004]
@..api_idx_0054.l4:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0004]
    jg short @..api_idx_0054.l2
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x4]
    jne short @..api_idx_0054.l5
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
    db 0xe8, 0x1c, 0xe4 ; call 0xffffe823
    add sp, byte 4
    jmp short @..api_idx_0054.l6
@..api_idx_0054.l5:
    mov ax, 0
    push ax
    mov ax, 0x5f
    push ax
    db 0xe8, 0x0c, 0xe4 ; call 0xffffe823
    add sp, byte 4
@..api_idx_0054.l6:
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, 0x9e
    push ax
    mov ax, 0x63
    push ax
    db 0xe8, 0xde, 0xe3 ; call 0xffffe809
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
    jne short @..api_idx_0054.l7
    mov ax, 0
    jmp short @..api_idx_0054.l8
@..api_idx_0054.l7:
    mov ax, 1
@..api_idx_0054.l8:
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
    db 0xe8, 0xad, 0xe3 ; call 0xffffe84e
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, 0x9e
    push ax
    mov ax, 0xce
    push ax
    db 0xe8, 0x54, 0xe3 ; call 0xffffe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x28
    push ax
    db 0xe8, 0x6d, 0xe3 ; call 0xffffe830
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
    db 0xe8, 0x04, 0xae ; call 0xffffb2e7
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x29
    push ax
    db 0xe8, 0x3f, 0xe3 ; call 0xffffe830
    add sp, byte 4
    inc word [bp - 0x0002]
@..api_idx_0054.l9:
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x8466]
    jg short @..api_idx_0054.l10
    jmp near @..api_idx_0054.l1
@..api_idx_0054.l10:
    ret
api_idx_000a_2:
    mov ax, 0xfff6
    db 0xe8, 0x01, 0xef ; call 0xfffff40b
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x19f], 0xff
    jne short @..local.l9
    ret
@..local.l9:
    mov al, byte [bx + 0x19f]
    cbw
    mov word [bp - 0x0002], ax
    mov word [bp - 0x000a], 0
    cmp word [bp + 0xa], byte 0xff
    jne short @..local.l10
    mov word [bp + 0xa], 0
    mov cx, 0x15e
    imul cx
    mov bx, ax
    mov al, byte [bx + 0x6b75]
    sub ah, ah
    cmp ax, 0xfe
    je short @..local.l10
    mov word [bp - 0x000a], 1
@..local.l10:
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + 0x6a1a]
    sub ah, ah
    mov word [bp - 0x0004], ax
    jmp near @..local.l16
@..local.l11:
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x6a22]
    sub ah, ah
    mov word [bp - 0x0006], ax
    cmp word [bp + 0xa], byte 0
    jne short @..local.l14
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x6b75], 0
    jbe short @..local.l14
    mov al, byte [bx + 0x6b75]
    sub ah, ah
    cmp ax, 0xfe
    jge short @..local.l14
    cmp ax, 0xfd
    jne short @..local.l12
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0008], 0
    jmp short @..local.l13
@..local.l12:
    mov word [bp - 0x0008], ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    cmp byte [bx + 0xd7], 0x47
    jne short @..local.l13
    cmp word [bp - 0x000a], byte 0
    jne short @..local.l13
    mov word [bp - 0x0006], 1
    mov word [bp - 0x0008], 0xb
@..local.l13:
    jmp short @..local.l15
@..local.l14:
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
    je short @..local.l15
    mov al, byte [bx + 0x6a4a]
    sub ah, ah
    push ax
    db 0xe8, 0x9d, 0xb1 ; call 0xffffb7a9
    pop cx
    add word [bp - 0x0008], ax
@..local.l15:
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
    db 0xe8, 0xf6, 0xb0 ; call 0xffffb7a9
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
@..local.l16:
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
    jle short @..local.l17
    jmp near @..local.l11
@..local.l17:
    ret
api_idx_000e:
    mov ax, 0xfff2
    db 0xe8, 0x01, 0xed ; call 0xfffff40b
    mov bx, word [bp + 0xe]
    mov byte [bx], 0
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x19f], 0xff
    jne short @..local.l18
    ret
@..local.l18:
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
    jmp near @..local.l32
@..local.l19:
    mov ax, 0x2c
    imul word [bp + 0x6]
    mov si, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + si + 0x22], 2
    je short @..local.l20
    cmp byte [bx + si + 0x11], 0
    ja short @..local.l20
    cmp byte [bx + si + 0x10], 0
    jbe short @..local.l21
@..local.l20:
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
    jmp near @..local.l28
@..local.l21:
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
    je short @..local.l22
    dec word [bp - 0x000a]
@..local.l22:
    cmp word [bp - 0x000a], byte 0
    jle short @..local.l23
    jmp near @..local.l27
@..local.l23:
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
    jl short @..local.l24
    jmp near @..local.l26
@..local.l24:
    mov ax, 3
    imul word [bp + 0x8]
    add ax, word [bp + 0xa]
    mov bx, ax
    cmp byte [bx - 0x7bd0], 0
    je short @..local.l25
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
@..local.l25:
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x6a2c]
    sub ah, ah
    push ax
    db 0xe8, 0x13, 0xaf ; call 0xffffb7a9
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
@..local.l26:
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
    db 0xe8, 0x7b, 0xae ; call 0xffffb7a9
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
@..local.l27:
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
@..local.l28:
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
    je short @..local.l29
    mov al, byte [bx + 0x19e]
    sub ah, ah
    cmp ax, 0x8d
    jne short @..local.l30
@..local.l29:
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
@..local.l30:
    mov bx, word [bp + 0xe]
    mov si, word [bp - 0x000e]
    cmp byte [bx + si], 0
    je short @..local.l31
    inc word [bp - 0x000e]
@..local.l31:
    inc word [bp - 0x0004]
@..local.l32:
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
    jle short @..local.l33
    jmp near @..local.l19
@..local.l33:
    mov bx, word [bp + 0xe]
    mov si, word [bp - 0x000e]
    mov byte [bx + si], 0
    ret
api_idx_0004:
    mov ax, 0xfffc
    db 0xe8, 0xde, 0xe9 ; call 0xfffff40b
    mov word [bp - 0x0002], 0
@..api_idx_0004.l1:
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x8468]
    jge short @..api_idx_0004.l2
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b96]
    mov al, byte [bx + 0x14]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jg short @..api_idx_0004.l2
    inc word [bp - 0x0002]
    jmp short @..api_idx_0004.l1
@..api_idx_0004.l2:
    mov ax, word [0x8468]
    mov word [bp - 0x0004], ax
    jmp short @..api_idx_0004.l4
@..api_idx_0004.l3:
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
@..api_idx_0004.l4:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jg short @..api_idx_0004.l3
    cmp word [bp - 0x0002], byte 0x0c
    jl short @..api_idx_0004.l6
@..api_idx_0004.l5:
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    jmp short @..api_idx_0004.l5
@..api_idx_0004.l6:
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
    db 0xe8, 0x3b, 0xe8 ; call 0xfffff364
    add sp, byte 4
    inc word [0x8468]
    ret
api_idx_001c:
    mov ax, 0xffe4
    db 0xe8, 0xd4, 0xe8 ; call 0xfffff40b
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
    jl short @..api_idx_001c.l1
    cmp ax, strict word 3
    jg short @..api_idx_001c.l1
    mov ax, word [bp + 0x4]
    cmp ax, word [0x8454]
    jle short @..local.l34
@..api_idx_001c.l1:
    ret
@..local.l34:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x19f], 0xff
    jne short @..local.l35
    ret
@..local.l35:
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
    jne short @..local.l36
    ret
@..local.l36:
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
    je short @..local.l37
    mov word [bp + 0x8], 0
@..local.l37:
    mov cx, word [bp - 0x000a]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6abf]
    sub ah, ah
    mov word [bp - 0x000c], ax
    cmp word [bp - 0x000c], byte 0
    jne short @..local.l38
    mov ax, 6
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5b6]
    sub ax, word [bp - 0x0002]
    mov word [bp - 0x000c], ax
    jmp short @..local.l40
@..local.l38:
    mov ax, 0x64
    push ax
    mov ax, 5
    push ax
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0
    cmp word [bp + 0x6], byte 0
    jne short @..local.l39
    mov ax, 5
@..local.l39:
    add cx, ax
    mov ax, word [bp - 0x000c]
    sub ax, cx
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x000c], ax
@..local.l40:
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
    db 0xe8, 0x46, 0xab ; call 0xffffb7c2
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
    jne short @..local.l41
    mov bx, word [0x8484]
    cmp byte [bx + 0x1a1], 1
    jne short @..local.l41
    cmp word [bp + 0x4], byte 0
    jne short @..local.l41
    mov word [bp + 0xa], 0
@..local.l41:
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
    je short @..local.l42
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
@..local.l42:
    mov ax, word [bp + 0xe]
    dec ax
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x000e]
    add ax, word [bp + 0x8]
    push ax
    db 0xe8, 0x86, 0xaa ; call 0xffffb7c2
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
    db 0xe8, 0x8e, 0xe6 ; call 0xfffff40b
    cmp word [0x8f20], byte 0
    jg short @..api_idx_000e_2.l1
    jmp near @..api_idx_000e_2.l8
@..api_idx_000e_2.l1:
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
    jmp short @..api_idx_000e_2.l6
@..api_idx_000e_2.l2:
    mov byte [bp - 0x000e], 1
    mov byte [bp - 0x000d], 2
    mov ax, 5
    cmp word [bp - 0x0002], byte 0
    jne short @..api_idx_000e_2.l3
    mov ax, 4
@..api_idx_000e_2.l3:
    mov byte [bp - 0x000c], al
    mov byte [bp - 0x000b], 0
    mov word [bp - 0x0004], 0
    jmp short @..api_idx_000e_2.l7
@..api_idx_000e_2.l4:
    mov byte [bp - 0x000e], 3
    mov byte [bp - 0x000d], 0
    mov ax, 0
    cmp word [bp - 0x0002], byte 3
    jne short @..api_idx_000e_2.l5
    mov ax, 1
@..api_idx_000e_2.l5:
    mov word [bp - 0x0004], ax
    jmp short @..api_idx_000e_2.l7
@..api_idx_000e_2.l6:
    cmp ax, strict word 0
    je short @..api_idx_000e_2.l2
    cmp ax, strict word 1
    je short @..api_idx_000e_2.l4
    cmp ax, strict word 2
    je short @..api_idx_000e_2.l2
    cmp ax, strict word 3
    je short @..api_idx_000e_2.l4
@..api_idx_000e_2.l7:
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
@..api_idx_000e_2.l8:
    cmp word [0x8f20], byte 0xff
    jne short @..api_idx_000e_2.l9
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
@..api_idx_000e_2.l9:
    ret
loc_0e6c:
    mov ax, 0
    db 0xe8, 0x99, 0xe5 ; call 0xfffff40b
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b96]
    mov al, byte [bx + 0x14]
    sub ah, ah
    cmp ax, 0xff
    je short @..local.l43
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
    db 0xe8, 0x0d, 0xe1 ; call 0xffffefd1
    add sp, byte 0x16
@..local.l43:
    ret
loc_0ec8:
    mov ax, 0
    db 0xe8, 0x3d, 0xe5 ; call 0xfffff40b
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
    jg short @..local.l44
    jne short @..local.l45
    cmp cx, ax
    jbe short @..local.l45
@..local.l44:
    jmp short @..local.l46
@..local.l45:
    mov ax, word [0x908e]
    mov dx, word [0x9090]
    mov word [0x908c], dx
    mov word [0x908a], ax
    mov ax, 1
    ret
@..local.l46:
    mov ax, 0
    ret
api_idx_0006_2:
    mov ax, 0xfffa
    db 0xe8, 0xde, 0xe4 ; call 0xfffff40b
    mov ax, word [0x845e]
    jmp near @..api_idx_0006_2.l12
@..api_idx_0006_2.l1:
    mov ax, 0x8f
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0x48
    push ax
    db 0xe8, 0x94, 0xd9 ; call 0xffffe8da
    add sp, byte 8
    jmp near @..api_idx_0006_2.l16
@..api_idx_0006_2.l2:
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
    jl short @..api_idx_0006_2.l3
    jne short @..api_idx_0006_2.l4
    cmp ax, cx
    jae short @..api_idx_0006_2.l4
@..api_idx_0006_2.l3:
    jmp short @..api_idx_0006_2.l5
@..api_idx_0006_2.l4:
    mov ax, word [0x906c]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [0x906c], dx
@..api_idx_0006_2.l5:
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
@..api_idx_0006_2.l6:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b96]
    mov byte [bx + 0x14], 0xff
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xc
    jl short @..api_idx_0006_2.l6
    mov word [0x8468], 0
    jmp near @..api_idx_0006_2.l16
@..api_idx_0006_2.l7:
    call loc_0ec8
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0002], 0
@..api_idx_0006_2.l8:
    mov word [bp - 0x0004], 0
@..api_idx_0006_2.l9:
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
    jl short @..api_idx_0006_2.l9
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 3
    jl short @..api_idx_0006_2.l8
    call api_idx_000e_2
    cmp word [bp - 0x0006], byte 0
    je short @..api_idx_0006_2.l10
    mov ax, word [0x82e8]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [0x82e8], dx
@..api_idx_0006_2.l10:
    call 0xda22
    jmp short @..api_idx_0006_2.l16
@..api_idx_0006_2.l11:
    push word [0x845e]
    call loc_0e6c
    pop cx
    jmp short @..api_idx_0006_2.l16
@..api_idx_0006_2.l12:
    cmp ax, strict word 0xfffd
    jne short @..api_idx_0006_2.l13
    jmp near @..api_idx_0006_2.l1
@..api_idx_0006_2.l13:
    cmp ax, strict word 0xfffe
    jne short @..api_idx_0006_2.l14
    jmp near @..api_idx_0006_2.l2
@..api_idx_0006_2.l14:
    cmp ax, strict word 0xffff
    jne short @..api_idx_0006_2.l15
    jmp near @..api_idx_0006_2.l7
@..api_idx_0006_2.l15:
    jmp short @..api_idx_0006_2.l11
@..api_idx_0006_2.l16:
    inc word [0x845e]
    mov ax, word [0x845e]
    cmp ax, strict word 0xc
    jne short @..api_idx_0006_2.l17
    mov word [0x845e], 0xfffd
@..api_idx_0006_2.l17:
    ret
loc_1076:
    mov ax, 0
    db 0xe8, 0x8f, 0xe3 ; call 0xfffff40b
    mov word [0x845e], 0xfffe
@..local.l47:
    call api_idx_0006_2
    cmp word [0x845e], byte 0xfe
    jne short @..local.l47
    ret
loc_108d:
    mov ax, 0
    db 0xe8, 0x78, 0xe3 ; call 0xfffff40b
@..local.l48:
    cmp word [0x845e], byte 0xfe
    je short @..local.l49
    call api_idx_0006_2
    jmp short @..local.l48
@..local.l49:
    ret
loc_10a0:
    mov ax, 0
    db 0xe8, 0x65, 0xe3 ; call 0xfffff40b
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
    db 0xe8, 0x41, 0xd8 ; call 0xffffe901
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
    db 0xe8, 0x24, 0xd8 ; call 0xffffe901
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
    db 0xe8, 0x07, 0xd8 ; call 0xffffe901
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
    db 0xe8, 0xea, 0xd7 ; call 0xffffe901
    add sp, byte 0x0a
    ret
math_loc_111b:
    mov ax, 0xfe32
    db 0xe8, 0xea, 0xe2 ; call 0xfffff40b
    mov word [0x9052], 0xffff
    mov ax, word [bp + 0x14]
    shl ax, 1
    mov word [bp - 0x0010], ax
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
@..math_loc_111b.l1:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 0xff
    jne short @..math_loc_111b.l2
    jmp near @..math_loc_111b.l7
@..math_loc_111b.l2:
    cmp word [bx + si], byte 1
    je short @..math_loc_111b.l3
    jmp near @..math_loc_111b.l6
@..math_loc_111b.l3:
    mov ax, word [bp - 0x0002]
    cmp word [bp + 0x16], byte 0
    je short @..math_loc_111b.l4
    mov ax, word [bp - 0x0004]
@..math_loc_111b.l4:
    mov word [bp - 0x0008], ax
    mov ax, word [bp + 0xa]
    mov cx, word [bp - 0x0008]
    cmp cx, word [bp - 0x0010]
    jge short @..math_loc_111b.l5
    mov ax, word [bp + 0x8]
@..math_loc_111b.l5:
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
    db 0xe8, 0x35, 0xd6 ; call 0xffffe823
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
    db 0xe8, 0x87, 0xe8 ; call 0xfffffa90
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
    db 0xe8, 0xe2, 0xd5 ; call 0xffffe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x015a]
    add ax, cx
    push ax
    db 0xe8, 0x10, 0xd6 ; call 0xffffe84e
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
@..math_loc_111b.l6:
    inc word [bp - 0x0004]
    jmp near @..math_loc_111b.l1
@..math_loc_111b.l7:
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
    db 0xe8, 0xf1, 0xa7 ; call 0xffffbaa6
    add sp, byte 0x0e
    cmp word [bp + 0x16], byte 1
    jne short @..local.l50
    mov word [bp - 0x000e], 0
    jmp short @..math_loc_111b.l9
@..math_loc_111b.l8:
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
    db 0xe8, 0xaf, 0xa7 ; call 0xffffbaa6
    add sp, byte 0x0e
    inc word [bp - 0x000e]
@..math_loc_111b.l9:
    mov ax, word [bp - 0x000e]
    cmp ax, word [0x8466]
    jl short @..math_loc_111b.l8
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
    db 0xe8, 0x89, 0xa7 ; call 0xffffbaa6
    add sp, byte 0x0e
@..local.l50:
    push word [bp + 0x6]
    call loc_02af
    pop cx
    cmp word [0x0e32], byte 0
    je short @..local.l52
@..local.l51:
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    mov word [bp - 0x0004], ax
    call api_idx_0006_2
    cmp word [0x5b3e], byte 0
    je short @..local.l51
    jmp near @..local.l86
@..local.l52:
    mov word [bp - 0x0004], 0
@..local.l53:
    cmp word [bp + 0x16], byte 0
    je short @..local.l54
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 1
    je short @..local.l54
    inc word [bp - 0x0004]
    jmp short @..local.l53
@..local.l54:
    mov ax, word [bp + 0xa]
    mov cx, word [bp - 0x0004]
    cmp cx, word [bp - 0x0010]
    jge short @..local.l55
    mov ax, word [bp + 0x8]
@..local.l55:
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
    call loc_10a0
    add sp, byte 0x0a
    push word [bp + 0x6]
    call loc_02af
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
    call loc_10a0
    add sp, byte 0x0a
@..local.l56:
    mov ax, 1
    push ax
    call 0xea50
    pop cx
    test ax, ax
    jne short @..local.l57
    call api_idx_0006_2
    jmp short @..local.l56
@..local.l57:
    mov ax, 1
    push ax
    call 0xeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x01ae], ax
    cmp ax, strict word 0xd
    jne short @..local.l58
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x01ce]
    mov word [bp - 0x0004], ax
    jmp near @..local.l84
@..local.l58:
    cmp word [bp + 0x16], byte 1
    jne short @..local.l59
    cmp word [bp - 0x01ae], byte 0x31
    jl short @..local.l59
    mov ax, word [0x8466]
    add ax, strict word 0x30
    cmp ax, word [bp - 0x01ae]
    jl short @..local.l59
    mov ax, word [bp - 0x0002]
    add ax, word [bp - 0x01ae]
    add ax, strict word 0xffcf
    mov word [bp - 0x0004], ax
    mov word [bp - 0x01ae], 0xd
    jmp near @..local.l84
@..local.l59:
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
    jmp near @..local.l80
@..local.l60:
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
    je short @..local.l61
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 1
    jne short @..local.l60
@..local.l61:
    cmp word [bp + 0x16], byte 0
    jne short @..local.l62
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jge short @..local.l60
@..local.l62:
    jmp near @..local.l84
@..local.l63:
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
    je short @..local.l64
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 1
    jne short @..local.l63
@..local.l64:
    cmp word [bp + 0x16], byte 0
    jne short @..local.l65
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jge short @..local.l63
@..local.l65:
    jmp near @..local.l84
@..local.l66:
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
@..local.l67:
    mov ax, word [bp - 0x01b0]
    cmp ax, word [bp + 0x14]
    jge short @..local.l70
    cmp word [bp + 0x16], byte 0
    je short @..local.l68
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 1
    jne short @..local.l69
@..local.l68:
    cmp word [bp + 0x16], byte 0
    jne short @..local.l70
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jl short @..local.l70
@..local.l69:
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
    jmp short @..local.l67
@..local.l70:
    cmp word [bp + 0x16], byte 0
    je short @..local.l71
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 1
    je short @..local.l71
    jmp near @..local.l66
@..local.l71:
    cmp word [bp + 0x16], byte 0
    jne short @..local.l72
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jl short @..local.l72
    jmp near @..local.l66
@..local.l72:
    jmp near @..local.l84
@..local.l73:
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
@..local.l74:
    mov ax, word [bp - 0x01b0]
    cmp ax, word [bp + 0x14]
    jge short @..local.l77
    cmp word [bp + 0x16], byte 0
    je short @..local.l75
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 1
    jne short @..local.l76
@..local.l75:
    cmp word [bp + 0x16], byte 0
    jne short @..local.l77
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jl short @..local.l77
@..local.l76:
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
    jmp short @..local.l74
@..local.l77:
    cmp word [bp + 0x16], byte 0
    je short @..local.l78
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 1
    jne short @..local.l73
@..local.l78:
    cmp word [bp + 0x16], byte 0
    jne short @..local.l79
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jl short @..local.l79
    jmp near @..local.l73
@..local.l79:
    jmp short @..local.l84
@..local.l80:
    cmp ax, strict word 8
    jne short @..local.l81
    jmp near @..local.l66
@..local.l81:
    cmp ax, strict word 9
    jne short @..local.l82
    jmp near @..local.l60
@..local.l82:
    cmp ax, strict word 0xa
    jne short @..local.l83
    jmp near @..local.l73
@..local.l83:
    cmp ax, strict word 0xb
    jne short @..local.l84
    jmp near @..local.l63
@..local.l84:
    cmp word [bp - 0x01ae], byte 0x0d
    je short @..local.l85
    jmp near @..local.l54
@..local.l85:
    inc word [bp - 0x0004]
    push word [bp + 0x6]
    call loc_02af
    pop cx
@..local.l86:
    dec word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jl short @..local.l87
    mov ax, 0
    mov cx, word [bp - 0x0004]
    sub cx, word [bp - 0x0002]
    sub ax, cx
    dec ax
    ret
@..local.l87:
    mov ax, word [bp - 0x0004]
    cmp word [bp + 0x16], byte 0
    je short @..local.l88
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x002e]
@..local.l88:
    mov word [bp - 0x0008], ax
    mov ax, word [bp + 0xa]
    mov cx, word [bp - 0x0008]
    cmp cx, word [bp - 0x0010]
    jge short @..local.l89
    mov ax, word [bp + 0x8]
@..local.l89:
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
    db 0xe8, 0xc1, 0xd1 ; call 0xffffe8da
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
    db 0xe8, 0xc2, 0xd1 ; call 0xffffe90e
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
    db 0xe8, 0x63, 0xd1 ; call 0xffffe8da
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
    db 0xe8, 0x7b, 0xdc ; call 0xfffff40b
    mov word [bp - 0x000c], 1
    mov word [bp - 0x0006], 0
    jmp short @..api_idx_000c.l3
@..api_idx_000c.l1:
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + si + 0x2a], 0xff
    je short @..api_idx_000c.l2
    mov word [bp - 0x000c], 0
@..api_idx_000c.l2:
    inc word [bp - 0x0006]
@..api_idx_000c.l3:
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0006]
    jg short @..api_idx_000c.l1
    cmp word [bp - 0x000c], byte 1
    jne short @..local.l92
    mov word [bp - 0x000a], 0
@..api_idx_000c.l4:
    mov word [bp - 0x0006], 0
    jmp short @..local.l91
@..api_idx_000c.l5:
    mov ax, 9
    imul word [bp + 0x6]
    add ax, word [bp - 0x0006]
    mov bx, ax
    cmp byte [bx - 0x6f31], 0
    je short @..api_idx_000c.l6
    mov ax, word [bp - 0x000a]
    cmp ax, word [bp + 0x4]
    jne short @..local.l90
@..api_idx_000c.l6:
    mov byte [bx - 0x6f31], 1
    mov ax, word [bp - 0x0006]
    ret
@..local.l90:
    inc word [bp - 0x000a]
    inc word [bp - 0x0006]
@..local.l91:
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0006]
    jg short @..api_idx_000c.l5
    jmp short @..api_idx_000c.l4
@..local.l92:
    mov word [bp - 0x000a], 0
    mov word [bp - 0x000c], 0
@..local.l93:
    cmp word [bp - 0x000c], byte 0x0a
    jl short @..local.l94
    jmp near @..local.l100
@..local.l94:
    inc word [bp - 0x000c]
    mov word [bp - 0x0002], 0
@..local.l95:
    mov word [bp - 0x0004], 0
@..local.l96:
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
    jne short @..local.l99
    mov ax, 9
    imul word [bp + 0x6]
    mov dx, word [bp - 0x0006]
    add ax, dx
    mov bx, ax
    cmp byte [bx - 0x6f31], 0
    je short @..local.l97
    mov ax, word [bp - 0x000a]
    cmp ax, word [bp + 0x4]
    jne short @..local.l98
@..local.l97:
    mov byte [bx - 0x6f31], 1
    mov ax, dx
    ret
@..local.l98:
    inc word [bp - 0x000a]
@..local.l99:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jl short @..local.l96
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 3
    jl short @..local.l95
    jmp near @..local.l93
@..local.l100:
    mov ax, 0
    ret
api_idx_000c_2:
    mov ax, 0xfff4
    db 0xe8, 0x43, 0xdb ; call 0xfffff40b
    mov word [bp - 0x0002], 0
@..api_idx_000c_2.l1:
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
    db 0xe8, 0x9f, 0xd6 ; call 0xffffefd1
    add sp, byte 0x16
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_000c_2.l1
    ret
api_idx_0002:
    mov ax, 0xfffe
    db 0xe8, 0xc4, 0xda ; call 0xfffff40b
    mov word [bp - 0x0002], 0
@..api_idx_0002.l1:
    cmp word [bp + 0x4], byte 0
    jl short @..api_idx_0002.l2
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x4]
    jne short @..api_idx_0002.l3
@..api_idx_0002.l2:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    inc word [bx - 0x7cf2]
@..api_idx_0002.l3:
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
    jne short @..api_idx_0002.l4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x7cf2], 0
@..api_idx_0002.l4:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_0002.l1
    ret
api_idx_0004_2:
    mov ax, 0xfffc
    db 0xe8, 0x69, 0xda ; call 0xfffff40b
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
@..api_idx_0004_2.l1:
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x620]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jne short @..api_idx_0004_2.l2
    push word [bp - 0x0002]
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0004_2.l2
    mov ax, 0x14
    imul word [bp - 0x0004]
    add ax, 0xe38
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xfa0
    push ax
    db 0xe8, 0x51, 0x9b ; call 0xffffb53b
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6efa], ax
    inc word [bp - 0x0004]
@..api_idx_0004_2.l2:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x66
    jl short @..api_idx_0004_2.l1
    mov ax, word [bp - 0x0004]
    ret
api_idx_000a_3:
    mov ax, 0xfff6
    db 0xe8, 0xf8, 0xd9 ; call 0xfffff40b
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
    db 0xe8, 0x8a, 0xd5 ; call 0xffffefd1
    add sp, byte 0x16
    ret
math_loc_1a4b:
    mov ax, 0
    db 0xe8, 0xba, 0xd9 ; call 0xfffff40b
    push word [bp + 0x6]
    mov ax, 0xa
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    dec ax
    push ax
    db 0xe8, 0xa7, 0xcd ; call 0xffffe809
    add sp, byte 4
    mov ax, 7
    push ax
    mov ax, 0
    cmp word [bp + 0xa], byte 0
    je short @..math_loc_1a4b.l1
    mov ax, 1
@..math_loc_1a4b.l1:
    add ax, strict word 0x10
    sub ah, ah
    push ax
    db 0xe8, 0xb2, 0xcd ; call 0xffffe830
    add sp, byte 4
    push word [bp + 0x6]
    mov ax, 0xa
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    push ax
    db 0xe8, 0x78, 0xcd ; call 0xffffe809
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    db 0xe8, 0x87, 0xcd ; call 0xffffe823
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, word [bp + 0x8]
    inc ax
    sub ah, ah
    push ax
    db 0xe8, 0x83, 0xcd ; call 0xffffe830
    add sp, byte 4
    cmp word [bp + 0x8], byte 0
    jne short @..math_loc_1a4b.l2
    cmp word [bp + 0xa], byte 0
    jne short @..math_loc_1a4b.l2
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
    db 0xe8, 0x2e, 0xce ; call 0xffffe901
    add sp, byte 0x0a
@..math_loc_1a4b.l2:
    ret
loc_1ad7:
    mov ax, 0
    db 0xe8, 0x2e, 0xd9 ; call 0xfffff40b
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
    db 0xe8, 0xe6, 0xcd ; call 0xffffe901
    add sp, byte 0x0a
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    db 0xe8, 0xdd, 0xcc ; call 0xffffe809
    add sp, byte 4
    cmp word [bp + 0xa], byte 0
    jle short @..local.l101
    mov ax, word [bp + 0xa]
    cmp ax, word [bp + 0xc]
    jg short @..local.l101
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0xdb, 0xcc ; call 0xffffe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    push word [bp + 0xa]
    db 0xe8, 0x8e, 0x97 ; call 0xffffb2e7
    add sp, byte 6
    jmp short @..local.l102
@..local.l101:
    mov ax, 0
    push ax
    push ax
    db 0xe8, 0xbd, 0xcc ; call 0xffffe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x90bb
    push ax
    db 0xe8, 0xda, 0xcc ; call 0xffffe84e
    add sp, byte 4
@..local.l102:
    ret
api_idx_000c_3:
    mov ax, 0xfff4
    db 0xe8, 0x8d, 0xd8 ; call 0xfffff40b
    mov word [bp - 0x0002], 0
@..api_idx_000c_3.l1:
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
    db 0xe8, 0x6d, 0xcc ; call 0xffffe823
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx + 0x18e]
    lea ax, word [bp - 0x000c]
    push ax
    db 0xe8, 0xc3, 0xde ; call 0xfffffa90
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
    db 0xe8, 0x18, 0xcc ; call 0xffffe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x000c]
    push ax
    db 0xe8, 0x4f, 0xcc ; call 0xffffe84e
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jge short @..api_idx_000c_3.l2
    jmp near @..api_idx_000c_3.l1
@..api_idx_000c_3.l2:
    ret
loc_1c11:
    mov ax, 0
    db 0xe8, 0xf4, 0xd7 ; call 0xfffff40b
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
    jg short @..local.l103
    jne short @..local.l104
    cmp cx, ax
    jbe short @..local.l104
@..local.l103:
    jmp short @..local.l105
@..local.l104:
    mov ax, word [0x908e]
    mov dx, word [0x9090]
    mov word [0x908c], dx
    mov word [0x908a], ax
    call api_idx_000a_3
    push word [bp + 0x4]
    call api_idx_000c_3
    pop cx
    push word [bp + 0x6]
    call api_idx_0002
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
    db 0xe8, 0x3c, 0xcc ; call 0xffffe8da
    add sp, byte 8
@..local.l105:
    ret
api_idx_0044:
    mov ax, 0xffbc
    db 0xe8, 0x63, 0xd7 ; call 0xfffff40b
    mov word [bp - 0x0002], 0
@..api_idx_0044.l1:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x7cf2], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_0044.l1
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
    db 0xe8, 0x7f, 0xa5 ; call 0xffffc283
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
    db 0xe8, 0x6e, 0x9f ; call 0xffffbc9a
    add sp, byte 8
    call api_idx_000a_3
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
    db 0xe8, 0xe6, 0x97 ; call 0xffffb53b
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
    db 0xe8, 0xb4, 0x97 ; call 0xffffb53b
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
    db 0xe8, 0x19, 0xa3 ; call 0xffffc0c1
    add sp, byte 0x0c
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x48
    push ax
    db 0xe8, 0x4d, 0xca ; call 0xffffe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xcd
    push ax
    db 0xe8, 0x59, 0xca ; call 0xffffe823
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, 0xa
    push ax
    db 0xe8, 0x58, 0xca ; call 0xffffe830
    add sp, byte 4
    mov word [bp - 0x003c], 0xffff
    mov word [bp - 0x003e], 0
    mov word [bp - 0x0040], 0
    mov word [bp - 0x0002], 0
@..api_idx_0044.l2:
    mov ax, 0
    mov cx, word [bp - 0x0002]
    cmp cx, word [bp - 0x003e]
    jne short @..api_idx_0044.l3
    mov ax, 1
@..api_idx_0044.l3:
    push ax
    push cx
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    call math_loc_1a4b
    add sp, byte 8
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short @..api_idx_0044.l2
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
    call loc_1ad7
    add sp, byte 0x0a
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call api_idx_0004_2
    add sp, byte 4
    mov word [bp - 0x0044], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short @..api_idx_0044.l4
    mov ax, word [bp - 0x0044]
@..api_idx_0044.l4:
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
    db 0xe8, 0xca, 0x9b ; call 0xffffbaa6
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
    db 0xe8, 0x9c, 0x9b ; call 0xffffbaa6
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
    db 0xe8, 0x6e, 0x9b ; call 0xffffbaa6
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
    db 0xe8, 0x40, 0x9b ; call 0xffffbaa6
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
    db 0xe8, 0x12, 0x9b ; call 0xffffbaa6
    add sp, byte 0x0e
    mov word [bp - 0x0002], 0
@..local.l106:
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
    db 0xe8, 0xcc, 0x9a ; call 0xffffbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short @..local.l106
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
    db 0xe8, 0x9f, 0x9a ; call 0xffffbaa6
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
    db 0xe8, 0x7d, 0x9a ; call 0xffffbaa6
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
    db 0xe8, 0x5b, 0x9a ; call 0xffffbaa6
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
    db 0xe8, 0x39, 0x9a ; call 0xffffbaa6
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
    db 0xe8, 0x17, 0x9a ; call 0xffffbaa6
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
    db 0xe8, 0xf5, 0x99 ; call 0xffffbaa6
    add sp, byte 0x0e
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short @..local.l107
    mov ax, word [bp - 0x0044]
@..local.l107:
    mov word [bp - 0x0020], ax
    mov word [bp - 0x0002], 0
@..local.l108:
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
    db 0xe8, 0xa7, 0x99 ; call 0xffffbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short @..local.l108
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
    db 0xe8, 0x86, 0x99 ; call 0xffffbaa6
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
    db 0xe8, 0xa2, 0xc7 ; call 0xffffe8da
    add sp, byte 8
    mov word [0x90d6], 5
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [0x908c], dx
    mov word [0x908a], ax
    mov word [bp - 0x001c], 1
@..local.l109:
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call loc_1c11
    add sp, byte 4
    mov ax, 0x59fe
    push ax
    db 0xe8, 0xa2, 0x97 ; call 0xffffb90d
    pop cx
    dec ax
    mov word [bp - 0x001a], ax
    cmp word [0x59fc], byte 0
    je short @..local.l113
    mov ax, word [bp - 0x0022]
    cmp ax, word [bp - 0x0018]
    jl short @..local.l110
    inc word [bp - 0x0022]
@..local.l110:
    mov ax, word [bp - 0x0022]
    cmp ax, strict word 0xffff
    je short @..local.l111
    cmp ax, word [bp - 0x0018]
    jl short @..local.l111
    mov ax, word [bp - 0x0018]
    add ax, word [bp - 0x0020]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp - 0x0022]
    cmp cx, ax
    jge short @..local.l112
@..local.l111:
    mov ax, word [bp - 0x0018]
    mov word [bp - 0x0022], ax
@..local.l112:
    mov word [0x5b3e], 1
    mov ax, word [bp - 0x0022]
    sub ax, word [bp - 0x0018]
    add ax, strict word 0x12
    mov word [bp - 0x001a], ax
@..local.l113:
    cmp word [0x5b3e], byte 1
    je short @..local.l114
    jmp near @..local.l138
@..local.l114:
    mov ax, word [bp - 0x001a]
    jmp near @..local.l136

    db 0x8d, 0x46, 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x7f, 0xce, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xee, 0x83
    db 0xc1, 0x2a, 0x2b, 0xc1, 0x50, 0xe8, 0xd1, 0x95, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xea, 0x8d, 0x46
    db 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x51, 0xce, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe2, 0xff
    db 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x2a, 0x2b
    db 0xc1, 0x2b, 0x46, 0xea, 0x50, 0xe8, 0xa1, 0x95, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xee, 0x83, 0x7e
    db 0xbc, 0x07, 0x7e, 0x20, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xec, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xfa, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7
    db 0xf9, 0x89, 0x46, 0xe8, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x28, 0x9d, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x4a, 0x9d, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xe7, 0x97, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xf9, 0xc5, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe2, 0x00, 0x74
    db 0x03, 0xe9, 0x0a, 0xff, 0xe9, 0x13, 0x06, 0x83, 0x7e, 0xe6, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x28, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0x9f, 0x9b
    db 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xe8, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xe8, 0xeb, 0x34, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x46, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0x6e
    db 0x9b, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xbc, 0x05, 0xf9, 0xff, 0x3b, 0x46, 0xe8, 0x7e, 0x03, 0xff
    db 0x46, 0xe8, 0x83, 0x7e, 0xbc, 0x07, 0x7e, 0x2c, 0xff, 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x64, 0x00, 0xf7, 0x6e, 0xec, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xf9, 0x99, 0xf7
    db 0xf9, 0xf7, 0x6e, 0xe8, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0x3b, 0x94, 0x83, 0xc4
    db 0x06, 0x89, 0x46, 0xee, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0xe8, 0x9b, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x0a, 0x9c, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xa7, 0x96, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xb9, 0xc4, 0x83, 0xc4, 0x08, 0xe9, 0xdc, 0x04, 0x83, 0x7e
    db 0x08, 0x00, 0x75, 0x03, 0xe9, 0xa1, 0x00, 0x83, 0x7e, 0xc4, 0x00, 0x7d, 0x03, 0xe9, 0x8a, 0x00
    db 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x3c, 0x8b, 0x46, 0xc2, 0x3b, 0x46, 0xc0, 0x7e, 0x03, 0xe9, 0x79
    db 0x00, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xc4, 0x8b, 0xd8, 0x8a, 0x87, 0x22, 0x06, 0x2a, 0xe4, 0x8b
    db 0x4e, 0xc2, 0x41, 0xf7, 0xe9, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8b, 0x56
    db 0xbe, 0xd1, 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x8b, 0x8f, 0x1c, 0x5c, 0x58, 0x3b, 0xc1
    db 0x7f, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xca, 0x99, 0x83, 0xc4, 0x0a, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xaa, 0x99, 0x83, 0xc4, 0x0a, 0xc7
    db 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x08
    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x10, 0x93, 0x59, 0xe9, 0x2f, 0x04, 0xb8, 0x01, 0x00, 0x50, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x71, 0x99, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x51, 0x99, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46
    db 0xe4, 0x00, 0x00, 0xe9, 0xe4, 0x03

@..local.l115:
    cmp word [bp - 0x001a], byte 5
    jge short @..local.l116
    jmp near @..local.l124
@..local.l116:
    cmp word [bp - 0x001a], byte 0x0b
    jle short @..local.l117
    jmp near @..local.l124
@..local.l117:
    mov ax, 0
    push ax
    push word [bp - 0x003e]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    call math_loc_1a4b
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
    call math_loc_1a4b
    add sp, byte 8
    cmp word [bp - 0x003c], byte 0
    jge short @..local.l118
    jmp near @..local.l122
@..local.l118:
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
    db 0xe8, 0x1d, 0x92 ; call 0xffffb7c2
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
    jne short @..local.l119
    mov ax, 0x3e7
    jmp short @..local.l121
@..local.l119:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short @..local.l120
    jmp short @..local.l121
@..local.l120:
    mov ax, word [bp - 0x0002]
@..local.l121:
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
    call loc_1ad7
    add sp, byte 0x0a
    jmp short @..local.l123
@..local.l122:
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
    call loc_1ad7
    add sp, byte 0x0a
@..local.l123:
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
    db 0xe8, 0x84, 0xc2 ; call 0xffffe8da
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
    db 0xe8, 0x62, 0xc2 ; call 0xffffe8da
    add sp, byte 8
    jmp near @..local.l135
@..local.l124:
    cmp word [bp - 0x001a], byte 0x0c
    jge short @..local.l125
    jmp near @..local.l129
@..local.l125:
    cmp word [bp - 0x001a], byte 0x11
    jle short @..local.l126
    jmp near @..local.l129
@..local.l126:
    mov ax, word [bp - 0x001a]
    add ax, strict word 0xfff4
    mov word [bp - 0x0042], ax
    mov word [bp - 0x003c], 0xffff
    push ax
    push word [bp + 0x4]
    call api_idx_0004_2
    add sp, byte 4
    mov word [bp - 0x0044], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short @..local.l127
    mov ax, word [bp - 0x0044]
@..local.l127:
    mov word [bp - 0x0024], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short @..local.l128
    mov ax, word [bp - 0x0044]
@..local.l128:
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
    db 0xe8, 0xa2, 0x98 ; call 0xffffbf97
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
    db 0xe8, 0xbf, 0x98 ; call 0xffffbfd8
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
    db 0xe8, 0x5c, 0x93 ; call 0xffffbaa6
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
    call loc_1ad7
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
    db 0xe8, 0x52, 0xc1 ; call 0xffffe8da
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
    db 0xe8, 0x30, 0xc1 ; call 0xffffe8da
    add sp, byte 8
    jmp near @..local.l135
@..local.l129:
    cmp word [bp - 0x001a], byte 0x12
    jge short @..local.l130
    jmp near @..local.l135
@..local.l130:
    mov ax, word [bp - 0x0020]
    add ax, strict word 0x12
    cmp ax, word [bp - 0x001a]
    jg short @..local.l131
    jmp near @..local.l135
@..local.l131:
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
    db 0xe8, 0x97, 0x97 ; call 0xffffbf97
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
    db 0xe8, 0x93, 0x8f ; call 0xffffb7c2
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
    jne short @..local.l132
    mov ax, 0x3e7
    jmp short @..local.l134
@..local.l132:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short @..local.l133
    jmp short @..local.l134
@..local.l133:
    mov ax, word [bp - 0x0002]
@..local.l134:
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
    call loc_1ad7
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
    db 0xe8, 0x18, 0xc0 ; call 0xffffe8da
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
    db 0xe8, 0xf6, 0xbf ; call 0xffffe8da
    add sp, byte 8
@..local.l135:
    jmp short @..local.l138
    adc byte [bp + si + 0x37], dh
    jae short 0x2925
    jae short 0x295e
    je short 0x290d
    db 0x75
@..local.l136:
    cmp ax, strict word 5
    jae short @..local.l137
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x7930]
@..local.l137:
    jmp near @..local.l115
@..local.l138:
    cmp word [bp - 0x001c], byte 0
    je short @..local.l139
    jmp near @..local.l109
@..local.l139:
    mov ax, 1
    push ax
    push word [bp - 0x003a]
    db 0xe8, 0x43, 0x9b ; call 0xffffc459
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
    db 0xe8, 0xaa, 0xbf ; call 0xffffe8da
    add sp, byte 8
    mov ax, word [bp - 0x003e]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x003c]
    add ax, 0x100
    mov word [0x904e], ax
    mov ax, word [0x9050]
    ret
api_idx_000a_4:
    mov ax, 0xfff6
    db 0xe8, 0xbe, 0xca ; call 0xfffff40b
    call loc_108d
    mov ax, 1
    push ax
    push ax
    mov ax, 0x7ea
    push ax
    push word [bp + 0x4]
    call api_idx_0044
    add sp, byte 8
    mov word [bp - 0x0004], ax
    mov ax, word [0x904e]
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x0004], byte 1
    jne short @..local.l140
    mov ax, 0xffff
    ret
@..local.l140:
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
    jne short @..local.l142
    call 0xceb1
    mov word [bp - 0x000a], ax
    cmp ax, strict word 0xffff
    jne short @..local.l141
    mov ax, 0xffff
    ret
@..local.l141:
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
@..local.l142:
    mov ax, word [bp - 0x0008]
    cmp ax, strict word 0x13
    je short @..local.l143
    cmp ax, strict word 0x58
    je short @..local.l143
    cmp ax, strict word 0x42
    jne short @..local.l144
@..local.l143:
    mov ax, 0x2c
    imul word [bp + 0x4]
    mov si, ax
    mov bx, word [0x8482]
    mov byte [bx + si + 0x1f], 0
@..local.l144:
    mov ax, word [bp - 0x0006]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x0008]
    ret
api_idx_0018:
    mov ax, 0xffe8
    db 0xe8, 0x13, 0xca ; call 0xfffff40b
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
    db 0xe8, 0x05, 0x8b ; call 0xffffb53b
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
    db 0xe8, 0x7f, 0x92 ; call 0xffffbce3
    add sp, byte 0x0a
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    inc ax
    inc ax
    push ax
    lea ax, word [bp - 0x0014]
    push ax
    db 0xe8, 0x16, 0xd0 ; call 0xfffffa90
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
    db 0xe8, 0x74, 0xbd ; call 0xffffe809
    add sp, byte 4
    mov ax, 0xc0
    push ax
    mov ax, 0x1a
    push ax
    db 0xe8, 0x80, 0xbd ; call 0xffffe823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0014]
    push ax
    db 0xe8, 0x9d, 0xbd ; call 0xffffe84e
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
    db 0xe8, 0xff, 0xbd ; call 0xffffe8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 0x0016]
    push word [bp - 0x0018]
    db 0xe8, 0x64, 0xbe ; call 0xffffe94f
    add sp, byte 6
    ret
api_idx_0004_3:
    mov ax, 0xfffc
    db 0xe8, 0x16, 0xc9 ; call 0xfffff40b
    mov word [bp - 0x0002], 0
    jmp near @..api_idx_0004_3.l8
@..api_idx_0004_3.l1:
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xe]
    jne short @..api_idx_0004_3.l2
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
    db 0xe8, 0xc7, 0xbd ; call 0xffffe901
    add sp, byte 0x0a
    mov word [bp - 0x0004], 0
    jmp short @..api_idx_0004_3.l3
@..api_idx_0004_3.l2:
    mov word [bp - 0x0004], 0xb4
@..api_idx_0004_3.l3:
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    db 0xe8, 0xac, 0xbc ; call 0xffffe809
    add sp, byte 4
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6eaa], byte 0
    je short @..api_idx_0004_3.l4
    mov ax, 4
    push ax
    mov ax, 0x63
    push ax
    db 0xe8, 0xb4, 0xbc ; call 0xffffe830
    add sp, byte 4
@..api_idx_0004_3.l4:
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0xf
    push ax
    db 0xe8, 0x75, 0xbc ; call 0xffffe809
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
    db 0xe8, 0x81, 0xbc ; call 0xffffe830
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
    call api_idx_002a
    add sp, byte 8
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6ca2], byte 0
    jle short @..api_idx_0004_3.l7
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x47
    push ax
    db 0xe8, 0x04, 0xbc ; call 0xffffe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xe]
    jne short @..api_idx_0004_3.l5
    mov ax, word [bp - 0x0004]
    jmp short @..api_idx_0004_3.l6
@..api_idx_0004_3.l5:
    mov ax, 2
@..api_idx_0004_3.l6:
    push ax
    db 0xe8, 0x00, 0xbc ; call 0xffffe823
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
    db 0xe8, 0xa8, 0x86 ; call 0xffffb2e7
    add sp, byte 6
@..api_idx_0004_3.l7:
    inc word [bp - 0x0002]
@..api_idx_0004_3.l8:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xa]
    jge short @..api_idx_0004_3.l9
    jmp near @..api_idx_0004_3.l1
@..api_idx_0004_3.l9:
    ret
math_loc_2c51:
    mov ax, 0
    db 0xe8, 0xb4, 0xc7 ; call 0xfffff40b
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
    db 0xe8, 0x22, 0x91 ; call 0xffffbd98
    add sp, byte 8
    push word [bp + 0xe]
    push word [bp + 0xc]
    push word [bp + 0x10]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0004_3
    add sp, byte 0x0c
    ret
api_idx_0038:
    mov ax, 0xffc8
    db 0xe8, 0x73, 0xc7 ; call 0xfffff40b
    mov word [0x904e], 0xffff
    mov word [bp - 0x0004], 0x37
    mov word [bp - 0x0006], 0x8f
    mov word [bp - 0x0008], 0x108
    mov word [bp - 0x000a], 0xc5
    mov word [bp - 0x0012], 0x16
    mov ax, 3
    cmp word [bp + 0xc], byte 3
    jge short @..api_idx_0038.l1
    mov ax, word [bp + 0xc]
@..api_idx_0038.l1:
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
    db 0xe8, 0xa2, 0x95 ; call 0xffffc283
    add sp, byte 0x0a
    mov word [bp - 0x0038], ax
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    db 0xe8, 0xa4, 0x8f ; call 0xffffbc9a
    add sp, byte 8
    cmp word [bp + 0x6], byte 0
    je short @..api_idx_0038.l2
    lea ax, word [bp - 0x0036]
    push ax
    push word [bp + 0x4]
    db 0xe8, 0x32, 0x88 ; call 0xffffb53b
    add sp, byte 4
    jmp short @..api_idx_0038.l3
@..api_idx_0038.l2:
    push word [bp + 0xe]
    lea ax, word [bp - 0x0036]
    push ax
    db 0xe8, 0x4c, 0xc6 ; call 0xfffff364
    add sp, byte 4
@..api_idx_0038.l3:
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
    db 0xe8, 0x86, 0x93 ; call 0xffffc0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0036]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    push ax
    db 0xe8, 0xf1, 0x87 ; call 0xffffb53b
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
    db 0xe8, 0x54, 0x93 ; call 0xffffc0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0036]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    db 0xe8, 0xbe, 0x87 ; call 0xffffb53b
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
    db 0xe8, 0x21, 0x93 ; call 0xffffc0c1
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
    call math_loc_2c51
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
    db 0xe8, 0xe5, 0x91 ; call 0xffffbfd8
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
    db 0xe8, 0x82, 0x8c ; call 0xffffbaa6
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
    db 0xe8, 0x54, 0x8c ; call 0xffffbaa6
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
    db 0xe8, 0x26, 0x8c ; call 0xffffbaa6
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
    db 0xe8, 0xfb, 0x8b ; call 0xffffbaa6
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
    db 0xe8, 0xcd, 0x8b ; call 0xffffbaa6
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
    db 0xe8, 0x9f, 0x8b ; call 0xffffbaa6
    add sp, byte 0x0e
    mov ax, 3
    cmp word [bp + 0xc], byte 3
    jge short @..local.l145
    mov ax, word [bp + 0xc]
@..local.l145:
    mov word [bp - 0x001e], ax
    mov word [bp - 0x0002], 0
    jmp short @..local.l147
@..local.l146:
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
    db 0xe8, 0x4f, 0x8b ; call 0xffffbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
@..local.l147:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x001e]
    jl short @..local.l146
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
    db 0xe8, 0x2b, 0x8b ; call 0xffffbaa6
    add sp, byte 0x0e
    mov ax, 0xc6
    push ax
    mov ax, 0x139
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 9
    push ax
    db 0xe8, 0x49, 0xb9 ; call 0xffffe8da
    add sp, byte 8
    mov word [bp - 0x001a], 1
@..local.l148:
    mov ax, 0x59fe
    push ax
    db 0xe8, 0x6d, 0x89 ; call 0xffffb90d
    pop cx
    dec ax
    mov word [bp - 0x0018], ax
    cmp word [0x59fc], byte 0
    je short @..local.l152
    mov ax, word [bp - 0x0020]
    cmp ax, word [bp - 0x0016]
    jl short @..local.l149
    inc word [bp - 0x0020]
@..local.l149:
    mov ax, word [bp - 0x0020]
    cmp ax, strict word 0xffff
    je short @..local.l150
    cmp ax, word [bp - 0x0016]
    jl short @..local.l150
    mov ax, word [bp - 0x0016]
    add ax, word [bp - 0x001e]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp - 0x0020]
    cmp cx, ax
    jge short @..local.l151
@..local.l150:
    mov ax, word [bp - 0x0016]
    mov word [bp - 0x0020], ax
@..local.l151:
    mov word [0x5b3e], 1
    mov ax, word [bp - 0x0020]
    sub ax, word [bp - 0x0016]
    add ax, strict word 6
    mov word [bp - 0x0018], ax
@..local.l152:
    cmp word [0x5b3e], byte 1
    je short @..local.l153
    jmp near @..local.l157
@..local.l153:
    mov ax, word [bp - 0x0018]
    jmp near @..local.l155

    db 0x8d, 0x46, 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0x4a, 0xc0, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xf0, 0x83
    db 0xc1, 0x0e, 0x2b, 0xc1, 0x50, 0xe8, 0x9c, 0x87, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xec, 0x8d, 0x46
    db 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0x1c, 0xc0, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe4, 0xff
    db 0x76, 0xee, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x0e, 0x2b
    db 0xc1, 0x2b, 0x46, 0xec, 0x50, 0xe8, 0x6c, 0x87, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0x83, 0x7e
    db 0x0c, 0x03, 0x7e, 0x1f, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xee, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x49, 0x49, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7, 0xf9
    db 0x89, 0x46, 0xea, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76, 0xea, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x5d
    db 0x00, 0x50, 0xe8, 0xae, 0xfb, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0, 0xb8, 0x07, 0x00, 0x50, 0xb8
    db 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00
    db 0x50, 0xe8, 0x16, 0x8f, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa, 0x03
    db 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0xe8, 0xb3, 0x89, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b
    db 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc
    db 0x05, 0x5d, 0x00, 0x50, 0xe8, 0xc5, 0xb7, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x03
    db 0xe9, 0x0b, 0xff, 0xe9, 0x97, 0x02, 0x83, 0x7e, 0xe8, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0x6b, 0x8d, 0x83
    db 0xc4, 0x0a, 0x83, 0x7e, 0xea, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xea, 0xeb, 0x34, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0x3a, 0x8d
    db 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0x0c
    db 'HHH;F'
    db 0xea, 0x7e, 0x03, 0xff, 0x46, 0xea, 0x83, 0x7e, 0x0c, 0x03, 0x7e, 0x2c, 0xff, 0x76, 0xee, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x64, 0x00, 0xf7, 0x6e, 0xee, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x49
    db 0x49, 0x49, 0x99, 0xf7, 0xf9, 0xf7, 0x6e, 0xea, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8
    db 0x07, 0x86, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76
    db 0xea, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50
    db 0x8b, 0x46, 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x6e, 0xfa, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0
    db 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b
    db 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0xd6, 0x8d, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50
    db 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0xc1, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x73, 0x88, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa
    db 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x85, 0xb6, 0x83, 0xc4, 0x08, 0xe9
    db 0x60, 0x01, 0x83, 0x7e, 0x06, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8
    db 0xe4, 0x8b, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8
    db 0xc4, 0x8b, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe6, 0x00, 0x00
    db 0xe9, 0x0f, 0x01, 0x83, 0x7e, 0x08, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50
    db 0xe8, 0x93, 0x8b, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50
    db 0xe8, 0x73, 0x8b, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46, 0xe6, 0x00
    db 0x00, 0xe9, 0xbe, 0x00, 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8
    db 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00
    db 0x50, 0xe8, 0x42, 0x8b, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8
    db 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00
    db 0x50, 0xe8, 0x22, 0x8b, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x02, 0x00, 0xc7, 0x46, 0xe6
    db 0x00, 0x00, 0xeb, 0x6e

@..local.l154:
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
    call math_loc_2c51
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
    db 0xe8, 0x3f, 0xb5 ; call 0xffffe8da
    add sp, byte 8
    jmp short @..local.l157
    db 0x45, 0x80, 0x6b, 0x81, 0x6b, 0x81, 0xa2, 0x82, 0xf3, 0x82, 0x44, 0x83
@..local.l155:
    cmp ax, strict word 6
    jae short @..local.l156
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7c19]
@..local.l156:
    jmp short @..local.l154
@..local.l157:
    cmp word [bp - 0x001a], byte 0
    je short @..local.l158
    jmp near @..local.l148
@..local.l158:
    mov ax, 1
    push ax
    push word [bp - 0x0038]
    db 0xe8, 0x8b, 0x90 ; call 0xffffc459
    add sp, byte 4
    mov ax, word [bp - 0x0020]
    mov word [0x904e], ax
    mov ax, word [0x9050]
    ret
api_idx_0094:
    mov ax, 0xff6c
    db 0xe8, 0x2a, 0xc0 ; call 0xfffff40b
    mov word [bp - 0x006a], 0
    mov word [bp - 0x004e], 0
@..api_idx_0094.l1:
    mov word [bp - 0x0050], 0
@..api_idx_0094.l2:
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
    jg short @..api_idx_0094.l3
    jmp near @..api_idx_0094.l8
@..api_idx_0094.l3:
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
    je short @..api_idx_0094.l4
    lea ax, word [bp - 0x004a]
    push ax
    mov ax, 0x16
    imul word [bp - 0x006a]
    add ax, 0x91a6
    push ax
    db 0xe8, 0xf8, 0xbe ; call 0xfffff364
    add sp, byte 4
    jmp short @..api_idx_0094.l5
@..api_idx_0094.l4:
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
    db 0xe8, 0x93, 0x80 ; call 0xffffb53b
    add sp, byte 4
@..api_idx_0094.l5:
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
    jne short @..api_idx_0094.l6
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
    jmp short @..api_idx_0094.l7
@..api_idx_0094.l6:
    mov ax, word [bp - 0x006a]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6ca2], 0
@..api_idx_0094.l7:
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
@..api_idx_0094.l8:
    inc word [bp - 0x0050]
    mov ax, word [bp - 0x0050]
    cmp ax, strict word 0xa
    jge short @..api_idx_0094.l9
    jmp near @..api_idx_0094.l2
@..api_idx_0094.l9:
    inc word [bp - 0x004e]
    mov ax, word [bp - 0x004e]
    cmp ax, strict word 2
    jge short @..api_idx_0094.l10
    jmp near @..api_idx_0094.l1
@..api_idx_0094.l10:
    cmp word [bp - 0x006a], byte 0
    jne short @..local.l159
    mov ax, 0xffff
    ret
@..local.l159:
    call loc_108d
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
    call api_idx_0038
    add sp, byte 0x0c
    mov word [bp - 0x004c], ax
    mov ax, word [0x904e]
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x004c], byte 1
    jne short @..local.l160
    cmp ax, strict word 0xffff
    jne short @..local.l161
@..local.l160:
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    db 0xe8, 0x1f, 0xb3 ; call 0xffffe8da
    add sp, byte 8
    mov ax, 0xffff
    ret
@..local.l161:
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
    call api_idx_0018
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
    db 0xe8, 0x0e, 0x80 ; call 0xffffb63c
    add sp, byte 8
    cmp word [bp - 0x0028], byte 0
    je short @..local.l163
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
    jne short @..local.l163
    db 0xe8, 0x5a, 0x98 ; call 0xffffceb1
    mov word [bp - 0x0094], ax
    cmp ax, strict word 0xffff
    jne short @..local.l162
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    db 0xe8, 0x67, 0xb2 ; call 0xffffe8da
    add sp, byte 8
    mov ax, 0xffff
    ret
@..local.l162:
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
@..local.l163:
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    db 0xe8, 0x28, 0xb2 ; call 0xffffe8da
    add sp, byte 8
    mov ax, word [bp - 0x004e]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x0050]
    ret
api_idx_0006_3:
    mov ax, 0xfffa
    db 0xe8, 0x45, 0xbd ; call 0xfffff40b
    mov word [bp - 0x0002], 0xffff
    mov word [bp - 0x0006], 0
    mov ax, 8
    push ax
    db 0xe8, 0xd2, 0x80 ; call 0xffffb7a9
    pop cx
    inc ax
    mov word [bp - 0x0004], ax
@..api_idx_0006_3.l1:
    mov ax, word [bp - 0x0002]
    inc ax
    mov cx, 8
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    push dx
    push word [bp + 0x4]
    db 0xe8, 0x84, 0xb5 ; call 0xffffec74
    add sp, byte 4
    cmp ax, strict word 1
    jne short @..api_idx_0006_3.l2
    dec word [bp - 0x0004]
    jmp short @..api_idx_0006_3.l3
@..api_idx_0006_3.l2:
    inc word [bp - 0x0006]
@..api_idx_0006_3.l3:
    cmp word [bp - 0x0004], byte 0
    jle short @..api_idx_0006_3.l4
    cmp word [bp - 0x0006], byte 0x64
    jl short @..api_idx_0006_3.l1
@..api_idx_0006_3.l4:
    mov ax, word [bp - 0x0002]
    ret
api_idx_00d4:
    mov ax, 0xff2c
    db 0xe8, 0xf5, 0xbc ; call 0xfffff40b
    lea ax, word [bp - 0x00d4]
    push ax
    mov ax, 0xdaf
    push ax
    db 0xe8, 0x19, 0x7e ; call 0xb53b
    add sp, byte 4
    mov word [bp - 0x0006], 0
    jmp near @..api_idx_00d4.l11
@..api_idx_00d4.l1:
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov cx, ax
    mov ax, word [0x8482]
    add ax, cx
    mov word [bp - 0x00aa], ax
    mov ax, 0xa
    push ax
    db 0xe8, 0x64, 0x80 ; call 0xffffb7a9
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
    jge short @..api_idx_00d4.l2
    mov word [bp - 0x00a4], 1
@..api_idx_00d4.l2:
    cmp word [bp - 0x00a4], byte 0x64
    jle short @..api_idx_00d4.l3
    mov word [bp - 0x00a4], 0x64
@..api_idx_00d4.l3:
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
    jbe short @..api_idx_00d4.l4
    mov ax, word [bp - 0x00a4]
    mov cx, 2
    cwd
    idiv cx
    push ax
    db 0xe8, 0xea, 0x7f ; call 0xb7a9
    pop cx
    push ax
    mov ax, 0x14
    push ax
    db 0xe8, 0xe1, 0x7f ; call 0xb7a9
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
@..api_idx_00d4.l4:
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
    jge short @..api_idx_00d4.l5
    mov word [bp - 0x00a8], 1
@..api_idx_00d4.l5:
    cmp word [bp - 0x00a8], byte 4
    jle short @..api_idx_00d4.l6
    mov word [bp - 0x00a8], 4
@..api_idx_00d4.l6:
    mov word [bp - 0x00a2], 0
@..api_idx_00d4.l7:
    mov ax, word [bp - 0x00a2]
    cmp ax, word [bp - 0x00a8]
    jge short @..api_idx_00d4.l8
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 2
    jae short @..api_idx_00d4.l8
    cmp byte [bx + 0x5d5d], 0
    ja short @..api_idx_00d4.l8
    cmp byte [bx + 0x5d5c], 0
    jbe short @..api_idx_00d4.l9
@..api_idx_00d4.l8:
    mov bx, word [bp - 0x00aa]
    mov si, word [bp - 0x00a2]
    mov byte [bx + si + 0x18], 0
    jmp short @..api_idx_00d4.l10
@..api_idx_00d4.l9:
    mov al, byte [bp - 0x00a4]
    mov bx, word [bp - 0x00aa]
    mov si, word [bp - 0x00a2]
    mov byte [bx + si + 0x18], al
    mov ax, word [bp - 0x00a6]
    sub word [bp - 0x00a4], ax
@..api_idx_00d4.l10:
    inc word [bp - 0x00a2]
    mov ax, word [bp - 0x00a2]
    cmp ax, strict word 4
    jl short @..api_idx_00d4.l7
    inc word [bp - 0x0006]
@..api_idx_00d4.l11:
    mov ax, word [bp - 0x0006]
    cmp ax, word [0x69c8]
    jge short @..api_idx_00d4.l12
    jmp near @..api_idx_00d4.l1
@..api_idx_00d4.l12:
    mov ax, 0
    push ax
    mov ax, 0x2d
    push ax
    mov ax, 0x90d8
    push ax
    db 0xe8, 0x46, 0xba ; call 0xfffff306
    add sp, byte 6
    mov word [bp - 0x00b4], 0
    call 0xec17
    mov word [bp - 0x0006], 0
@..api_idx_00d4.l13:
    mov ax, word [bp - 0x0006]
    cmp ax, word [0x69c8]
    jl short @..api_idx_00d4.l14
    jmp near @..local.l221
@..api_idx_00d4.l14:
    push ax
    call 0xca85
    pop cx
    test ax, ax
    jne short @..api_idx_00d4.l15
    jmp near @..local.l207
@..api_idx_00d4.l15:
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
@..local.l164:
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    cmp byte [bx + si + 0x1f], 1
    jb short @..local.l165
    mov al, byte [bx + si + 0x1f]
    sub ah, ah
    cmp ax, word [0x8466]
    jle short @..local.l166
@..local.l165:
    mov byte [bx + si + 0x1f], 1
@..local.l166:
    mov word [bp - 0x0002], 0
@..local.l167:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0028], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xb
    jl short @..local.l167
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    cmp byte [bx + 0x5e2b], 7
    je short @..local.l168
    mov word [bp - 0x001e], 0
@..local.l168:
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    cmp byte [bx + si + 0x2b], 0
    jne short @..local.l169
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    cmp al, 3
    je short @..local.l170
    cmp al, 0xd
    je short @..local.l170
    cmp al, 4
    je short @..local.l170
    cmp al, 6
    je short @..local.l170
    cmp al, 0xc
    je short @..local.l170
    cmp byte [bx + 0x5d7d], 0
    jne short @..local.l170
@..local.l169:
    mov word [bp - 0x0024], 0
@..local.l170:
    mov word [bp - 0x0020], 0
    mov word [bp - 0x00ae], 0
@..local.l171:
    mov word [bp - 0x00ac], 0
@..local.l172:
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
    jle short @..local.l173
    mov word [bp - 0x0020], 1
@..local.l173:
    inc word [bp - 0x00ac]
    mov ax, word [bp - 0x00ac]
    cmp ax, strict word 0xa
    jl short @..local.l172
    inc word [bp - 0x00ae]
    mov ax, word [bp - 0x00ae]
    cmp ax, strict word 2
    jl short @..local.l171
    cmp word [bp - 0x00b4], byte 2
    jge short @..local.l174
    mov word [bp - 0x0016], 0
    mov word [bp - 0x0014], 0
@..local.l174:
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    mov word [bp - 0x00ac], ax
    cmp ax, 0xff
    jne short @..local.l175
    jmp near @..local.l185
@..local.l175:
    mov cx, 0xc
    imul cx
    add bx, ax
    cmp byte [bx + 0x5c38], 3
    je short @..local.l176
    jmp near @..local.l185
@..local.l176:
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 0x20
    je short @..local.l177
    jmp near @..local.l185
@..local.l177:
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x5d49]
    sub ah, ah
    mov word [bp - 0x00ae], ax
    cmp ax, 0xff
    jne short @..local.l178
    jmp near @..local.l184
@..local.l178:
    imul cx
    add bx, ax
    cmp byte [bx + 0x5c38], 4
    je short @..local.l179
    mov word [bp - 0x0028], 0
    jmp near @..local.l183
@..local.l179:
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
    jne short @..local.l180
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
    je short @..local.l180
    jmp near @..local.l182
@..local.l180:
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
    jne short @..local.l181
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
    jne short @..local.l182
@..local.l181:
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
    jne short @..local.l183
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
    je short @..local.l183
@..local.l182:
    mov word [bp - 0x0028], 0
@..local.l183:
    jmp short @..local.l185
@..local.l184:
    mov word [bp - 0x0028], 0
@..local.l185:
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
    jle short @..local.l186
    mov word [bp - 0x0028], 0
@..local.l186:
    cmp word [bp - 0x0006], byte 3
    jl short @..local.l187
    cmp word [bp - 0x00b2], byte 0
    jne short @..local.l187
    mov bx, word [0x8482]
    cmp byte [bx + si + 0x2b], 1
    je short @..local.l187
    mov word [bp - 0x0028], 0
@..local.l187:
    mov bx, word [0x8482]
    mov al, byte [bx + si + 0x1f]
    sub ah, ah
    cmp ax, word [0x9388]
    jle short @..local.l188
    mov word [bp - 0x001e], 0
@..local.l188:
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
    call math_loc_0149
    add sp, byte 8
    mov ax, 0x16
    push ax
    mov ax, 0x9a
    push ax
    mov ax, 0xa0
    push ax
    lea ax, word [bp - 0x00d4]
    push ax
    call math_loc_0149
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
    call math_loc_111b
    add sp, byte 0x18
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jge short @..local.l190
    mov word [bp - 0x009e], 1
    push ax
    cmp ax, strict word 0
    pop ax
    jge short @..local.l189
    neg ax
@..local.l189:
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
    jmp near @..local.l192
@..local.l190:
    mov ax, word [bp - 0x0008]
    jmp near @..local.l191

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

@..local.l191:
    cmp ax, strict word 0xb
    jae short @..local.l192
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6f61]
@..local.l192:
    cmp word [bp - 0x009e], byte 1
    jne short @..local.l193
    jmp near @..local.l164
@..local.l193:
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
    call math_loc_0149
    add sp, byte 8
    mov ax, 0
    push ax
    call loc_02af
    pop cx
    mov ax, 0x32
    push ax
    db 0xe8, 0xd6, 0xa3 ; call 0xffffe489
    pop cx
    cmp word [bp - 0x00a0], byte 0
    je short @..local.l194
    jmp near @..local.l207
@..local.l194:
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
    jl short @..local.l195
    cmp ax, strict word 5
    jg short @..local.l195
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
@..local.l195:
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x5d49]
    sub ah, ah
    mov word [bp - 0x00ac], ax
    cmp word [bp - 0x0008], byte 0
    je short @..local.l196
    jmp near @..local.l207
@..local.l196:
    cmp ax, 0xff
    jne short @..local.l198
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    cmp ax, 0xff
    jne short @..local.l198
    add bx, strict word 0x5d33
    mov ax, bx
    push ax
    call api_idx_0006_3
    pop cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short @..local.l197
    mov ax, word [bp - 0x0002]
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    pop ax
    mov word [bx + si + 0xc], ax
@..local.l197:
    jmp near @..local.l207
@..local.l198:
    cmp word [bp - 0x00ac], strict word 0xff
    jne short @..local.l199
    jmp near @..local.l207
@..local.l199:
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
    jne short @..local.l200
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 0x20
    je short @..local.l200
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    mov word [bx + si + 0xc], 8
    jmp near @..local.l207
@..local.l200:
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
    je short @..local.l201
    cmp al, 0xc
    je short @..local.l201
    cmp al, 0x10
    jne short @..local.l202
@..local.l201:
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    mov word [bx + si + 0xc], 4
    jmp near @..local.l207
@..local.l202:
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
    jae short @..local.l207
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    cmp byte [bx + 0x5d43], 1
    je short @..local.l203
    cmp word [bp - 0x0006], byte 3
    jge short @..local.l207
    cmp word [bp - 0x009a], byte 3
    jge short @..local.l207
@..local.l203:
    mov word [bp - 0x000a], 0
@..local.l204:
    mov ax, 0x248
    imul word [bp - 0x0006]
    add ax, 0x5d45
    push ax
    call api_idx_0006_3
    pop cx
    mov word [bp - 0x0002], ax
    inc word [bp - 0x000a]
    cmp word [bp - 0x0002], byte 4
    jne short @..local.l205
    cmp word [bp - 0x000a], byte 0x0a
    jl short @..local.l204
@..local.l205:
    cmp word [bp - 0x0002], byte 4
    jne short @..local.l206
    mov word [bp - 0x0002], 0xffff
@..local.l206:
    cmp word [bp - 0x0002], byte 0xff
    je short @..local.l207
    mov ax, word [bp - 0x0002]
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    pop ax
    mov word [bx + si + 0xc], ax
@..local.l207:
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, word [0x69c8]
    je short @..local.l208
    jmp near @..local.l220
@..local.l208:
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    lea ax, word [bp - 0x0096]
    push ax
    mov ax, 0xdb2
    push ax
    db 0xe8, 0x8a, 0x72 ; call 0xb53b
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 0x99
    push ax
    mov ax, 0xa0
    push ax
    lea ax, word [bp - 0x0096]
    push ax
    call math_loc_0149
    add sp, byte 8
    mov ax, 3
    push ax
    call loc_02af
    pop cx
    mov word [bp - 0x0002], 0
@..local.l209:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0028], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 3
    jl short @..local.l209
    cmp word [bp - 0x00b4], byte 0
    jne short @..local.l210
    mov word [bp - 0x0026], 0
@..local.l210:
    mov word [bp - 0x0022], 0xffff
    db 0xe8, 0x12, 0xa9 ; call 0xffffec17
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
    call math_loc_111b
    add sp, byte 0x18
    mov word [bp - 0x0002], ax
    cmp ax, strict word 2
    je short @..local.l211
    jmp near @..local.l216
@..local.l211:
    mov ax, 5
    push ax
    call 0xb75e
    pop cx
    mov word [bp - 0x0006], 0
    jmp near @..local.l214
@..local.l212:
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    cmp byte [bx + si + 0x22], 3
    je short @..local.l213
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
    db 0xe8, 0x23, 0x74 ; call 0xb7e0
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    call 0xcb3a
    add sp, byte 4
    mov ax, 8
    push ax
    db 0xe8, 0x8c, 0x73 ; call 0xb75e
    pop cx
@..local.l213:
    inc word [bp - 0x0006]
@..local.l214:
    mov ax, word [bp - 0x0006]
    cmp ax, word [0x69c8]
    jge short @..local.l215
    jmp near @..local.l212
@..local.l215:
    mov ax, 1
    ret
@..local.l216:
    cmp word [bp - 0x0002], byte 1
    jne short @..local.l220
    mov ax, 0
    push ax
    mov ax, 0x2d
    push ax
    mov ax, 0x90d8
    push ax
    db 0xe8, 0x0b, 0xaf ; call 0xfffff306
    add sp, byte 6
    mov word [bp - 0x009a], 0
    jmp short @..local.l219
@..local.l217:
    mov ax, 0x2c
    imul word [bp - 0x009a]
    mov si, ax
    mov bx, word [0x8482]
    cmp byte [bx + si + 0x1f], 0
    jbe short @..local.l218
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
@..local.l218:
    inc word [bp - 0x009a]
@..local.l219:
    mov ax, word [0x69c8]
    dec ax
    cmp ax, word [bp - 0x009a]
    jg short @..local.l217
    mov ax, word [bp - 0x00b4]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x00c2]
    mov word [bp - 0x0006], ax
    dec word [bp - 0x00b4]
@..local.l220:
    jmp near @..api_idx_00d4.l13
@..local.l221:
    mov word [bp - 0x0006], 0
    jmp near @..local.l230
@..local.l222:
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    cmp byte [bx + si + 0xf], 0
    jbe short @..local.l223
    mov ax, 0x64
    push ax
    db 0xe8, 0x2d, 0x73 ; call 0xb7a9
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
    jle short @..local.l223
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    mov byte [bx + si + 0x1e], 6
@..local.l223:
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    cmp byte [bx + si + 0x1e], 1
    je short @..local.l224
    cmp byte [bx + si + 0x1e], 7
    jne short @..local.l225
@..local.l224:
    mov byte [bx + si + 0x18], 1
@..local.l225:
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    cmp byte [bx + si + 0x1e], 0
    jne short @..local.l227
    cmp word [bx + si + 0xc], byte 0xff
    jne short @..local.l226
    mov byte [bx + si + 0x19], 0
    mov ax, 0x2c
    imul word [bp - 0x0006]
    mov si, ax
    mov bx, word [0x8482]
    mov byte [bx + si + 0x1b], 0
@..local.l226:
    jmp short @..local.l229
@..local.l227:
    mov word [bp - 0x0002], 1
@..local.l228:
    mov ax, 0x2c
    imul word [bp - 0x0006]
    add ax, word [bp - 0x0002]
    mov si, ax
    mov bx, word [0x8482]
    mov byte [bx + si + 0x18], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short @..local.l228
@..local.l229:
    inc word [bp - 0x0006]
@..local.l230:
    mov ax, word [bp - 0x0006]
    cmp ax, word [0x69c8]
    jge short @..local.l231
    jmp near @..local.l222
@..local.l231:
    mov ax, 0
    ret
api_idx_0004_4:
    mov ax, 0xfffc
    db 0xe8, 0xdd, 0xae ; call 0xfffff40b
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0004_4.l3
@..api_idx_0004_4.l1:
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
    jle short @..api_idx_0004_4.l2
    mov ax, 2
    push ax
    db 0xe8, 0x48, 0x72 ; call 0xb7a9
    pop cx
    test ax, ax
    jne short @..api_idx_0004_4.l2
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
@..api_idx_0004_4.l2:
    inc word [bp - 0x0002]
@..api_idx_0004_4.l3:
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0002]
    jg short @..api_idx_0004_4.l1
    mov ax, word [bp - 0x0004]
    ret
api_idx_0002_2:
    mov ax, 0xfffe
    db 0xe8, 0x52, 0xae ; call 0xfffff40b
    mov word [bp - 0x0002], 0
@..api_idx_0002_2.l1:
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si + 0x86], 0
    je short @..api_idx_0002_2.l2
    mov ax, 2
    push ax
    db 0xe8, 0xcf, 0x71 ; call 0xb7a9
    pop cx
    cmp ax, strict word 1
    jne short @..api_idx_0002_2.l3
@..api_idx_0002_2.l2:
    mov ax, word [bp - 0x0002]
    inc ax
    mov cx, 3
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    jmp short @..api_idx_0002_2.l1
@..api_idx_0002_2.l3:
    mov ax, word [bp - 0x0002]
    ret
api_idx_0024:
    mov ax, 0xffdc
    db 0xe8, 0x12, 0xae ; call 0xfffff40b
    mov word [bp - 0x001e], 0
    mov word [bp - 0x0020], 0
    mov word [bp - 0x0022], 0
    mov word [bp - 0x0024], 0
    mov word [bp - 0x0004], 0
    jmp short @..api_idx_0024.l3
@..api_idx_0024.l1:
    push word [bp - 0x0004]
    db 0xe8, 0x6b, 0x84 ; call 0xffffca85
    pop cx
    test ax, ax
    je short @..api_idx_0024.l2
    mov ax, 0x2c
    imul word [bp - 0x0004]
    mov si, ax
    mov bx, word [0x8482]
    mov ax, word [bx + si + 0x2]
    cwd
    add word [bp - 0x0020], ax
    adc word [bp - 0x001e], dx
@..api_idx_0024.l2:
    inc word [bp - 0x0004]
@..api_idx_0024.l3:
    mov bx, word [0x8482]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0004]
    jg short @..api_idx_0024.l1
    mov word [bp - 0x0004], 0
    jmp short @..api_idx_0024.l5
@..api_idx_0024.l4:
    mov ax, 0x2c
    imul word [bp - 0x0004]
    mov si, ax
    mov bx, word [0x848e]
    mov ax, word [bx + si + 0x2]
    cwd
    add word [bp - 0x0020], ax
    adc word [bp - 0x001e], dx
    inc word [bp - 0x0004]
@..api_idx_0024.l5:
    mov bx, word [0x848e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0004]
    jg short @..api_idx_0024.l4
    mov word [bp - 0x0004], 1
    jmp short @..api_idx_0024.l9
@..api_idx_0024.l6:
    mov word [bp - 0x0006], 0
    jmp short @..api_idx_0024.l8
@..api_idx_0024.l7:
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
@..api_idx_0024.l8:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0006]
    jg short @..api_idx_0024.l7
    inc word [bp - 0x0004]
@..api_idx_0024.l9:
    mov ax, word [bp - 0x0004]
    cmp ax, word [0x8466]
    jle short @..api_idx_0024.l6
    cmp word [bp + 0x4], byte 6
    jne short @..api_idx_0024.l10
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
    db 0xe8, 0xad, 0xb2 ; call 0xfffff99f
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
    jmp short @..api_idx_0024.l11
@..api_idx_0024.l10:
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
    db 0xe8, 0x77, 0xb2 ; call 0xfffff99f
    mov cx, 0x19
    mov bx, 0
    db 0xe8, 0x6e, 0xb2 ; call 0xfffff99f
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
@..api_idx_0024.l11:
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov al, byte [bx + 0xe2]
    sub ah, ah
    test ax, 1
    je short @..api_idx_0024.l13
    cmp word [bp - 0x001c], byte 0
    jge short @..api_idx_0024.l12
    mov word [bp - 0x001c], 0
@..api_idx_0024.l12:
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
@..api_idx_0024.l13:
    mov word [bp - 0x0002], 0
    jmp near @..local.l288
@..api_idx_0024.l14:
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
    db 0xe8, 0xf4, 0x6f ; call 0xb7a9
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
    jge short @..local.l232
    mov word [bp - 0x000a], 1
@..local.l232:
    cmp word [bp - 0x000a], byte 0x64
    jle short @..local.l233
    mov word [bp - 0x000a], 0x64
@..local.l233:
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
    je short @..local.l234
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x24], 1
@..local.l234:
    mov bx, word [bp - 0x0008]
    cmp byte [bx + 0x24], 0
    jbe short @..local.l235
    mov ax, word [bp - 0x000a]
    mov cx, 2
    cwd
    idiv cx
    push ax
    db 0xe8, 0x6c, 0x6f ; call 0xb7a9
    pop cx
    push ax
    mov ax, 0x14
    push ax
    db 0xe8, 0x63, 0x6f ; call 0xb7a9
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
@..local.l235:
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x21], 0
    push word [bp + 0x4]
    call api_idx_0002_2
    pop cx
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x1c], al
    mov word [bp - 0x0016], 0
@..local.l236:
    push word [bp + 0x4]
    call api_idx_0002_2
    pop cx
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x1d], al
    inc word [bp - 0x0016]
    mov bx, word [bp - 0x0008]
    mov al, byte [bx + 0x1d]
    mov cl, byte [bx + 0x1c]
    cmp al, cl
    jne short @..local.l237
    cmp word [bp - 0x0016], byte 3
    jl short @..local.l236
@..local.l237:
    mov word [bp - 0x000e], 0
@..local.l238:
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov al, byte [bx + 0xdb]
    sub ah, ah
    cmp ax, word [bp - 0x000e]
    jle short @..local.l239
    mov bx, word [bp - 0x0008]
    cmp byte [bx + 0x22], 2
    jae short @..local.l239
    cmp byte [bx + 0x11], 0
    ja short @..local.l239
    cmp byte [bx + 0x10], 0
    jbe short @..local.l240
@..local.l239:
    mov bx, word [bp - 0x0008]
    mov si, word [bp - 0x000e]
    mov byte [bx + si + 0x18], 0
    jmp short @..local.l241
@..local.l240:
    mov al, byte [bp - 0x000a]
    mov bx, word [bp - 0x0008]
    mov si, word [bp - 0x000e]
    mov byte [bx + si + 0x18], al
    mov ax, word [bp - 0x000c]
    sub word [bp - 0x000a], ax
@..local.l241:
    inc word [bp - 0x000e]
    mov ax, word [bp - 0x000e]
    cmp ax, strict word 4
    jl short @..local.l238
    mov word [bp - 0x0018], 0xffff
    mov al, byte [bp + 0x6]
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x1f], al
@..local.l242:
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    push ax
    db 0xe8, 0x90, 0x6e ; call 0xb7a9
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
    jae short @..local.l242
    mov ax, 0x64
    push ax
    db 0xe8, 0x60, 0x6e ; call 0xb7a9
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
    jl short @..local.l243
    jmp near @..local.l256
@..local.l243:
    mov word [bp - 0x0018], 3
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x1e], 3
    mov ax, 0x64
    push ax
    db 0xe8, 0x30, 0x6e ; call 0xb7a9
    pop cx
    mov word [bp - 0x0012], ax
    mov word [bp - 0x0016], 5
    mov word [bp - 0x0010], 0
    mov word [bp - 0x001a], 0xffff
@..local.l244:
    mov ax, word [bp - 0x0012]
    cmp ax, word [bp - 0x0016]
    jge short @..local.l245
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov si, word [bp - 0x0010]
    mov al, byte [bx + si + 0x90]
    sub ah, ah
    mov word [bp - 0x001a], ax
@..local.l245:
    inc word [bp - 0x0010]
    cmp word [bp - 0x0016], byte 0x0f
    jge short @..local.l246
    add word [bp - 0x0016], byte 5
    jmp short @..local.l248
@..local.l246:
    cmp word [bp - 0x0016], byte 0x37
    jge short @..local.l247
    add word [bp - 0x0016], byte 0x0a
    jmp short @..local.l248
@..local.l247:
    add word [bp - 0x0016], byte 0x0f
@..local.l248:
    cmp word [bp - 0x001a], byte 0xff
    je short @..local.l244
    mov ax, 6
    imul word [bp - 0x001a]
    mov bx, ax
    cmp byte [bx + 0x624], 1
    je short @..local.l249
    mov ax, word [bp - 0x001a]
    cmp ax, strict word 0x58
    je short @..local.l249
    cmp ax, strict word 0x13
    je short @..local.l249
    cmp ax, strict word 0x42
    jne short @..local.l252
@..local.l249:
    cmp word [bp + 0x4], byte 6
    jne short @..local.l251
    mov ax, 0
    push ax
    push word [bp - 0x0008]
    call api_idx_0004_4
    add sp, byte 4
    test ax, ax
    jne short @..local.l250
    mov ax, 6
    push ax
    push word [bp - 0x0008]
    call api_idx_0004_4
    add sp, byte 4
    test ax, ax
    jne short @..local.l250
    mov word [bp - 0x0018], 0xffff
@..local.l250:
    jmp short @..local.l252
@..local.l251:
    push word [bp + 0x4]
    push word [bp - 0x0008]
    call api_idx_0004_4
    add sp, byte 4
    test ax, ax
    jne short @..local.l252
    push word [0x8466]
    db 0xe8, 0x72, 0x6d ; call 0xb7a9
    pop cx
    inc ax
    push ax
    push word [bp - 0x0008]
    call api_idx_0004_4
    add sp, byte 4
    test ax, ax
    jne short @..local.l252
    mov word [bp - 0x0018], 0xffff
@..local.l252:
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
    jl short @..local.l253
    mov ax, cx
    push ax
    cmp ax, strict word 6
    pop ax
    jle short @..local.l253
    mov ax, 6
@..local.l253:
    mov word [bp - 0x0012], ax
@..local.l254:
    mov bx, word [bp - 0x0008]
    push word [bx]
    db 0xe8, 0x20, 0x6d ; call 0xb7a9
    pop cx
    inc ax
    cmp ax, word [bp - 0x0012]
    jge short @..local.l255
    dec word [bp - 0x0012]
    jmp short @..local.l254
@..local.l255:
    mov ax, word [bp - 0x0012]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x001a]
    mov bx, word [bp - 0x0008]
    mov word [bx + 0xa], ax
@..local.l256:
    cmp word [bp - 0x0018], byte 0xff
    jne short @..local.l257
    mov ax, 0x64
    push ax
    db 0xe8, 0xf7, 0x6c ; call 0xb7a9
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
    jge short @..local.l257
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
@..local.l257:
    cmp word [bp - 0x0018], byte 0xff
    je short @..local.l258
    jmp near @..local.l274
@..local.l258:
    mov word [bp - 0x0012], 0
    mov bx, word [bp - 0x0008]
    cmp byte [bx + 0x22], 2
    jb short @..local.l259
    jmp near @..local.l264
@..local.l259:
    cmp byte [bx + 0x11], 0
    je short @..local.l260
    jmp near @..local.l264
@..local.l260:
    cmp byte [bx + 0x10], 0
    jne short @..local.l264
    mov al, byte [bx + 0x1c]
    sub ah, ah
    mov word [bp - 0x0014], ax
    cmp word [bp + 0x4], byte 6
    jne short @..local.l261
    mov word [bp - 0x0012], 9
    jmp short @..local.l264
@..local.l261:
    cmp word [bp + 0x4], byte 3
    jl short @..local.l262
    mov cx, 0x12
    imul cx
    mov si, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    cmp byte [bx + si + 0x51], 1
    jbe short @..local.l264
@..local.l262:
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
    jge short @..local.l263
    mov cx, 0
@..local.l263:
    cmp ax, cx
    jle short @..local.l264
    mov word [bp - 0x0012], 6
@..local.l264:
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0012]
    jge short @..local.l265
    mov word [bp - 0x0012], ax
@..local.l265:
    mov word [bp - 0x0010], 0
    mov word [bp - 0x0016], 0
    jmp short @..local.l268
@..local.l266:
    mov ax, 0x2c
    imul word [bp - 0x0016]
    mov si, ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + si + 0x22], 3
    jae short @..local.l267
    inc word [bp - 0x0010]
@..local.l267:
    inc word [bp - 0x0016]
@..local.l268:
    mov ax, word [bp - 0x0016]
    cmp ax, word [bp - 0x0012]
    jl short @..local.l266
    cmp word [bp - 0x0010], byte 0
    jg short @..local.l269
    jmp near @..local.l273
@..local.l269:
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x1e], 0
    mov al, byte [bp + 0x6]
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x1f], al
    push word [bp - 0x0010]
    db 0xe8, 0xc1, 0x6b ; call 0xb7a9
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
    jne short @..local.l270
    mov bx, word [bp - 0x0008]
    mov word [bx + 0xa], 4
    jmp short @..local.l272
@..local.l270:
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov si, word [bp - 0x0014]
    cmp byte [bx + si + 0x86], 3
    jne short @..local.l271
    mov bx, word [bp - 0x0008]
    mov word [bx + 0xa], 8
    jmp short @..local.l272
@..local.l271:
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
@..local.l272:
    jmp short @..local.l274
@..local.l273:
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x18], 0
@..local.l274:
    mov ax, 0x64
    push ax
    db 0xe8, 0x3e, 0x6b ; call 0xb7a9
    pop cx
    mov word [bp - 0x0006], ax
    mov bx, word [bp - 0x0008]
    cmp byte [bx + 0xf], 0
    jbe short @..local.l275
    mov cx, word [bp - 0x001c]
    add cx, byte 0x0a
    jmp short @..local.l276
@..local.l275:
    mov cx, word [bp - 0x001c]
@..local.l276:
    cmp cx, ax
    jle short @..local.l277
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov al, byte [bx + 0xb2]
    sub ah, ah
    mov cx, ax
    mov ax, word [bp - 0x0006]
    cmp cx, ax
    jle short @..local.l277
    mov word [bp - 0x0018], 6
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x1e], 6
@..local.l277:
    mov bx, word [bp - 0x0008]
    mov word [bx + 0xc], 0xffff
    mov bx, word [bp - 0x0008]
    cmp byte [bx + 0x1e], 0
    je short @..local.l278
    jmp near @..local.l285
@..local.l278:
    mov al, byte [bx + 0x1d]
    sub ah, ah
    mov word [bp - 0x0014], ax
    cmp word [bp + 0x4], byte 3
    jl short @..local.l279
    mov cx, 0x12
    imul cx
    mov si, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    cmp byte [bx + si + 0x51], 1
    jbe short @..local.l283
@..local.l279:
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov si, word [bp - 0x0014]
    cmp byte [bx + si + 0x86], 2
    jne short @..local.l280
    mov bx, word [bp - 0x0008]
    mov word [bx + 0xc], 4
    jmp short @..local.l282
@..local.l280:
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov si, word [bp - 0x0014]
    cmp byte [bx + si + 0x86], 3
    jne short @..local.l281
    mov bx, word [bp - 0x0008]
    mov word [bx + 0xc], 8
    jmp short @..local.l282
@..local.l281:
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
@..local.l282:
    jmp short @..local.l284
@..local.l283:
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x19], 0
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x1b], 0
@..local.l284:
    jmp short @..local.l287
@..local.l285:
    mov word [bp - 0x0004], 1
@..local.l286:
    mov bx, word [bp - 0x0008]
    mov si, word [bp - 0x0004]
    mov byte [bx + si + 0x18], 0
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 4
    jl short @..local.l286
@..local.l287:
    inc word [bp - 0x0002]
@..local.l288:
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0002]
    jle short @..local.l289
    jmp near @..api_idx_0024.l14
@..local.l289:
    ret
api_idx_0002_3:
    mov ax, 0xfffe
    db 0xe8, 0x74, 0xa6 ; call 0xfffff40b
    mov al, byte [0x69c8]
    mov bx, word [0x8482]
    mov byte [bx + 0x1a1], al
    mov word [bp - 0x0002], 1
    jmp short @..api_idx_0002_3.l5
@..api_idx_0002_3.l1:
    mov bx, word [0x848e]
    cmp byte [bx + 0x1a1], 0
    jbe short @..api_idx_0002_3.l2
    mov ax, 4
    push ax
    db 0xe8, 0xee, 0x69 ; call 0xb7a9
    pop cx
    cmp ax, strict word 1
    jne short @..api_idx_0002_3.l2
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    cmp byte [bx + 0xd6], 0x16
    je short @..api_idx_0002_3.l2
    cmp word [0x0e36], strict word 0xe1
    jne short @..api_idx_0002_3.l3
@..api_idx_0002_3.l2:
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call api_idx_0024
    add sp, byte 4
    jmp short @..api_idx_0002_3.l4
@..api_idx_0002_3.l3:
    mov ax, 6
    push ax
    push word [bp - 0x0002]
    call api_idx_0024
    add sp, byte 4
@..api_idx_0002_3.l4:
    inc word [bp - 0x0002]
@..api_idx_0002_3.l5:
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x8466]
    jle short @..api_idx_0002_3.l1
    mov bx, word [0x848e]
    cmp byte [bx + 0x1a1], 0
    jbe short @..api_idx_0002_3.l8
    mov word [bp - 0x0002], 1
@..api_idx_0002_3.l6:
    mov ax, word [bp - 0x0002]
    cmp ax, word [0x8466]
    jge short @..api_idx_0002_3.l7
    mov ax, 3
    push ax
    db 0xe8, 0x86, 0x69 ; call 0xb7a9
    pop cx
    test ax, ax
    jne short @..api_idx_0002_3.l7
    inc word [bp - 0x0002]
    jmp short @..api_idx_0002_3.l6
@..api_idx_0002_3.l7:
    push word [bp - 0x0002]
    mov ax, 6
    push ax
    call api_idx_0024
    add sp, byte 4
@..api_idx_0002_3.l8:
    ret
api_idx_0004_5:
    mov ax, 0xfffc
    db 0xe8, 0xca, 0xa5 ; call 0xfffff40b
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
    call loc_02af
    pop cx
    call api_idx_00d4
    mov word [bp - 0x0004], ax
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    mov ax, 3
    push ax
    call loc_02af
    pop cx
    cmp word [bp - 0x0004], byte 0
    je short @..api_idx_0004_5.l1
    mov word [0x830a], 0xe
    jmp short @..api_idx_0004_5.l2
@..api_idx_0004_5.l1:
    call api_idx_0002_3
    mov word [0x830a], 0xd
@..api_idx_0004_5.l2:
    ret

    db 0x8f, 0x06, 0xd4, 0x90, 0x59, 0x89, 0x26, 0xd0, 0x90, 0x89, 0x2e, 0xd2, 0x90, 0x89, 0x36, 0xcc
    db 0x90, 0x89, 0x3e, 0xce, 0x90, 0xfc, 0xbf, 0xd6, 0x90, 0xb9, 0x8e, 0x93, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0x48, 0xb1, 0x8b, 0x2e, 0xd2, 0x90, 0x8b, 0x26, 0xd0
    db 0x90, 0x8b, 0x36, 0xcc, 0x90, 0x8b, 0x3e, 0xce, 0x90, 0x51, 0xff, 0x26, 0xd4, 0x90
    db 'V1.$$$', 0
    db 'V1.$$$', 0
    db 'V2.$$$', 0
    db 'V3.$$$', 0
    db 'V1.$$$', 0
    db 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    db 'V.$$$', 0
    times 11 db 0

