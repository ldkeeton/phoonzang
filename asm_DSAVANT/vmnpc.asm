%include "structs/structs.inc"
%include "structs/data_b054.inc"
org 0
bits 16
    db 0xf2, 0x00, 0x55, 0x50, 0xcf, 0xae, 0x98, 0x90 ; header (8 bytes)

data_0002 equ 0x0002
data_01d1 equ 0x01d1
data_0290 equ 0x0290
data_0601 equ 0x0601
data_0660 equ 0x0660
data_0e2a equ 0x0e2a
data_0e2c equ 0x0e2c
data_0e32 equ 0x0e32
data_0e36 equ 0x0e36
data_0ee8 equ 0x0ee8
data_0f75 equ 0x0f75
data_1575 equ 0x1575
data_1e83 equ 0x1e83
data_1e8b equ 0x1e8b
data_237d equ 0x237d
data_3dc7 equ 0x3dc7
data_40c8 equ 0x40c8
data_417f equ 0x417f
data_5000 equ 0x5000
data_5216 equ 0x5216
data_55e9 equ 0x55e9
data_585a equ 0x585a
data_5987 equ 0x5987
data_598a equ 0x598a
data_598e equ 0x598e
data_59a7 equ 0x59a7
data_59fc equ 0x59fc
data_5b3e equ 0x5b3e
data_5d6a equ 0x5d6a
data_68e8 equ 0x68e8
data_69c8 equ 0x69c8
data_6c2a equ 0x6c2a
data_77e8 equ 0x77e8
data_7abc equ 0x7abc
data_7b04 equ 0x7b04
data_82b6 equ 0x82b6
data_82e8 equ 0x82e8
data_82ee equ 0x82ee
data_830a equ 0x830a
data_830c equ 0x830c
data_843a equ 0x843a
data_8452 equ 0x8452
data_845a equ 0x845a
data_845e equ 0x845e
data_8460 equ 0x8460
data_8468 equ 0x8468
data_8783 equ 0x8783
data_8be4 equ 0x8be4
data_8d0a equ 0x8d0a
data_8d0c equ 0x8d0c
data_8d0e equ 0x8d0e
data_8d10 equ 0x8d10
data_8f1c equ 0x8f1c
data_8f1e equ 0x8f1e
data_8f20 equ 0x8f20
data_904e equ 0x904e
data_9050 equ 0x9050
data_9052 equ 0x9052
data_905a equ 0x905a
data_905e equ 0x905e
data_9060 equ 0x9060
data_9062 equ 0x9062
data_9064 equ 0x9064
data_9066 equ 0x9066
data_9068 equ 0x9068
data_906a equ 0x906a
data_906c equ 0x906c
data_908a equ 0x908a
data_908c equ 0x908c
data_908e equ 0x908e
data_9090 equ 0x9090
data_9092 equ 0x9092
data_9094 equ 0x9094
data_9114 equ 0x9114
data_9134 equ 0x9134
data_9136 equ 0x9136
data_91a0 equ 0x91a0
data_91a2 equ 0x91a2
data_91a4 equ 0x91a4
data_91a6 equ 0x91a6
data_91a8 equ 0x91a8
data_91aa equ 0x91aa
data_91ac equ 0x91ac
data_91ae equ 0x91ae
data_91b6 equ 0x91b6
data_91b8 equ 0x91b8
data_91c2 equ 0x91c2
data_91c3 equ 0x91c3
data_91c5 equ 0x91c5
data_91c6 equ 0x91c6
data_91c7 equ 0x91c7
data_91c9 equ 0x91c9
data_91ca equ 0x91ca
data_91cb equ 0x91cb
data_934c equ 0x934c
data_93d2 equ 0x93d2
data_93d4 equ 0x93d4
data_93d6 equ 0x93d6
data_93d8 equ 0x93d8
data_93da equ 0x93da
data_93dc equ 0x93dc
data_93ee equ 0x93ee
data_93f0 equ 0x93f0
data_95a6 equ 0x95a6
data_95a8 equ 0x95a8
data_95fa equ 0x95fa
data_95fb equ 0x95fb
data_964a equ 0x964a
data_964c equ 0x964c
data_964e equ 0x964e
data_9650 equ 0x9650
data_98e9 equ 0x98e9
data_9ca6 equ 0x9ca6
data_9ca8 equ 0x9ca8
data_9cd2 equ 0x9cd2
data_9d60 equ 0x9d60
data_9d62 equ 0x9d62
data_9d64 equ 0x9d64
data_9d66 equ 0x9d66
data_9d68 equ 0x9d68
data_9d6a equ 0x9d6a
data_9d6c equ 0x9d6c
data_9e42 equ 0x9e42
data_9e44 equ 0x9e44
data_9e46 equ 0x9e46
data_9e48 equ 0x9e48
data_9e4a equ 0x9e4a
data_9e4c equ 0x9e4c
data_9e4e equ 0x9e4e
data_9e50 equ 0x9e50
data_9e52 equ 0x9e52
data_9e54 equ 0x9e54
data_9e56 equ 0x9e56
data_9e58 equ 0x9e58
data_9e5a equ 0x9e5a
data_9e5c equ 0x9e5c
data_9e5e equ 0x9e5e
data_9e60 equ 0x9e60
data_9e62 equ 0x9e62
data_9e64 equ 0x9e64
data_9e66 equ 0x9e66
data_9e68 equ 0x9e68
data_9e6a equ 0x9e6a
data_9e6c equ 0x9e6c
data_9e6e equ 0x9e6e
data_9e70 equ 0x9e70
data_9e72 equ 0x9e72
data_9e74 equ 0x9e74
data_9e76 equ 0x9e76
data_9e78 equ 0x9e78
data_9e7a equ 0x9e7a
data_9e7c equ 0x9e7c
data_9e7e equ 0x9e7e
data_9e80 equ 0x9e80
data_9e82 equ 0x9e82
data_9e84 equ 0x9e84
data_a376 equ 0xa376
data_a656 equ 0xa656
data_a8b8 equ 0xa8b8
data_b030 equ 0xb030
data_b046 equ 0xb046
data_b048 equ 0xb048
data_b04a equ 0xb04a
data_b04c equ 0xb04c
data_b04e equ 0xb04e
data_b050 equ 0xb050
data_b052 equ 0xb052
data_b054 equ 0xb054

    db 0x9c, 0x00, 0x22, 0x1f, 0x57, 0xfe
api_idx_0008:
    mov ax, 0xfff8
    call 0xf40b
    mov word [bp - 0x0008], 0
    cmp word [bp + 0xa], byte 0xff
    jne short @..api_idx_0008.l1
    mov word [bp + 0xa], 0
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x6b75]
    sub ah, ah
    cmp ax, 0xfe
    je short @..api_idx_0008.l1
    mov word [bp - 0x0008], 1
@..api_idx_0008.l1:
    mov ax, 0x15e
    imul word [bp + 0x4]
    add ax, word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + 0x6a1a]
    sub ah, ah
    mov word [bp - 0x0002], ax
    jmp near @..api_idx_0008.l7
@..api_idx_0008.l2:
    mov ax, 0x15e
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x6a22]
    sub ah, ah
    mov word [bp - 0x0004], ax
    cmp word [bp + 0xa], byte 0
    jne short @..api_idx_0008.l5
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x6b75], 0
    jbe short @..api_idx_0008.l5
    mov al, byte [bx + 0x6b75]
    sub ah, ah
    cmp ax, 0xfe
    jge short @..api_idx_0008.l5
    cmp ax, 0xfd
    jne short @..api_idx_0008.l3
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0006], 0
    jmp short @..api_idx_0008.l4
@..api_idx_0008.l3:
    mov word [bp - 0x0006], ax
@..api_idx_0008.l4:
    jmp short @..api_idx_0008.l6
@..api_idx_0008.l5:
    mov ax, 0x15e
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x6a2c]
    sub ah, ah
    push ax
    call 0xb7a9
    pop cx
    add word [bp - 0x0004], ax
    mov ax, 0x15e
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x6a40]
    sub ah, ah
    mov word [bp - 0x0006], ax
    cmp word [bp - 0x0008], byte 0
    je short @..api_idx_0008.l6
    mov al, byte [bx + 0x6a4a]
    sub ah, ah
    push ax
    db 0xe8, 0xcf, 0xb6 ; call 0xffffb7a9
    pop cx
    add word [bp - 0x0006], ax
@..api_idx_0008.l6:
    mov al, byte [bp + 0xa]
    push ax
    mov ax, 3
    imul word [bp + 0x6]
    mov cx, ax
    add ax, word [bp + 0x8]
    mov bx, ax
    pop ax
    mov byte [bx - 0x7bd0], al
    mov al, byte [bp - 0x0004]
    push ax
    mov ax, 0x5a
    imul word [bp + 0x6]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 0x8]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx - 0x7cde], al
    mov al, byte [bp - 0x0006]
    mov byte [bx - 0x7cdd], al
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0006]
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
    imul word [bp - 0x0002]
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
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6ac2]
    sub ah, ah
    push ax
    db 0xe8, 0x28, 0xb6 ; call 0xffffb7a9
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
    imul word [bp - 0x0002]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx - 0x7cdc], al
    inc word [bp - 0x0002]
@..api_idx_0008.l7:
    mov ax, 0x15e
    imul word [bp + 0x4]
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
    cmp ax, word [bp - 0x0002]
    jle short @..api_idx_0008.l8
    jmp near @..api_idx_0008.l2
@..api_idx_0008.l8:
    ret
api_idx_000c:
    mov ax, 0xfff4
    db 0xe8, 0x33, 0xf2 ; call 0xfffff40b
    mov word [bp - 0x000c], 0
    mov ax, 0x15e
    imul word [bp + 0x4]
    push ax
    mov ax, 3
    imul word [bp + 0x6]
    add ax, word [bp + 0x8]
    mov bx, ax
    mov al, byte [bx - 0x7bd0]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6a1a]
    sub ah, ah
    mov word [bp - 0x0002], ax
    jmp near @..math_loc_03c0.l6
@..api_idx_000c.l1:
    mov ax, 0x5a
    imul word [bp + 0x6]
    push ax
    mov ax, 0x1e
    imul word [bp + 0x8]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx - 0x7cdd]
    sub ah, ah
    mov word [bp - 0x0006], ax
    mov bx, word [bp + 0x4]
    cmp byte [bx + 0x5b48], 0x18
    jne short @..api_idx_000c.l2
    cmp word [data_9134], byte 1
    jne short @..api_idx_000c.l2
    mov ax, 0x15e
    imul bx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp byte [bx + 0x6ac0], 4
    jne short @..api_idx_000c.l2
    mov word [bp + 0xa], 0
@..api_idx_000c.l2:
    mov ax, 0x5a
    imul word [bp + 0x6]
    push ax
    mov ax, 0x1e
    imul word [bp + 0x8]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx - 0x7cdc]
    sub ah, ah
    mov word [bp - 0x0008], ax
    cmp word [bp + 0xa], byte 0
    je short @..api_idx_000c.l3
    dec word [bp - 0x0008]
@..api_idx_000c.l3:
    cmp word [bp - 0x0008], byte 0
    jle short @..api_idx_000c.l4
    jmp near @..math_loc_03c0.l1
@..api_idx_000c.l4:
    mov al, byte [bx - 0x7cde]
    sub ah, ah
    mov word [bp - 0x0004], ax
    inc word [bp - 0x0006]
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, word [bp - 0x0004]
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
    cmp ax, word [bp - 0x0006]
    jl short @..api_idx_000c.l5
    jmp near @..local.l2
@..api_idx_000c.l5:
    mov ax, 3
    imul word [bp + 0x6]
    add ax, word [bp + 0x8]
    mov bx, ax
    cmp byte [bx - 0x7bd0], 0
    je short @..local.l1
    mov byte [bx - 0x7bd0], 0
    mov ax, 0
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0008
    add sp, byte 8
    push word [bp + 0xc]
    mov ax, 0
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_000c
    add sp, byte 0x0a
    ret
@..local.l1:
    mov ax, 0x15e
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x6a2c]
    sub ah, ah
    push ax
    db 0xe8, 0x84, 0xb4 ; call 0xffffb7a9
    pop cx
    push ax
    mov ax, 0x15e
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x6a22]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0004], ax
    mov al, byte [bp - 0x0004]
    push ax
    mov ax, 0x5a
    imul word [bp + 0x6]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 0x8]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx - 0x7cde], al
    mov ax, 0x15e
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x6a40]
    sub ah, ah
    mov word [bp - 0x0006], ax
@..local.l2:
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
    imul word [bp - 0x0002]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx - 0x7cdd], al
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6ac2]
    sub ah, ah
    push ax
    db 0xe8, 0xec, 0xb3 ; call 0xffffb7a9
    pop cx
    push ax
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6ac1]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0008], ax
@..math_loc_03c0.l1:
    mov al, byte [bp - 0x0008]
    push ax
    mov ax, 0x5a
    imul word [bp + 0x6]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 0x8]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx - 0x7cdc], al
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6ac0]
    mov bx, word [bp + 0xc]
    mov si, word [bp - 0x000c]
    mov byte [bx + si], al
    mov bx, word [bp + 0x4]
    cmp byte [bx + 0x5b48], 0x47
    jne short @..math_loc_03c0.l2
    mov ax, 0x5a
    imul word [bp + 0x6]
    push ax
    mov ax, 0x1e
    imul word [bp + 0x8]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx - 0x7cde]
    sub ah, ah
    xchg al, ah
    sub al, al
    push ax
    mov al, byte [bx - 0x7cdd]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov word [data_8460], ax
@..math_loc_03c0.l2:
    cmp word [data_9136], byte 0x23
    je short @..math_loc_03c0.l3
    cmp word [data_9136], byte 0x0b
    jne short @..math_loc_03c0.l4
@..math_loc_03c0.l3:
    inc word [bp - 0x000c]
    mov bx, word [bp + 0xc]
    mov si, word [bp - 0x000c]
    mov al, byte [bx + si - 0x0001]
    mov byte [bx + si], al
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x6b76]
    mov bx, word [bp + 0xc]
    mov si, word [bp - 0x000c]
    mov byte [bx + si - 0x0001], al
@..math_loc_03c0.l4:
    mov bx, word [bp + 0xc]
    mov si, word [bp - 0x000c]
    cmp byte [bx + si], 0
    je short @..math_loc_03c0.l5
    inc word [bp - 0x000c]
@..math_loc_03c0.l5:
    inc word [bp - 0x0002]
@..math_loc_03c0.l6:
    mov ax, 0x15e
    imul word [bp + 0x4]
    push ax
    mov ax, 3
    imul word [bp + 0x6]
    add ax, word [bp + 0x8]
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
    cmp ax, word [bp - 0x0002]
    jle short @..math_loc_03c0.l7
    jmp near @..api_idx_000c.l1
@..math_loc_03c0.l7:
    cmp word [data_9136], byte 0x3c
    jge short @..math_loc_03c0.l8
    jmp near @..math_loc_03c0.l13
@..math_loc_03c0.l8:
    cmp word [data_9136], byte 0x3e
    jle short @..math_loc_03c0.l9
    jmp near @..math_loc_03c0.l13
@..math_loc_03c0.l9:
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov cx, word [data_9134]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6ac0]
    mov bx, word [bp + 0xc]
    mov byte [bx], al
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov cx, word [data_9134]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6ac1]
    mov bx, word [bp + 0xc]
    mov byte [bx + 0x1], al
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov cx, word [data_9134]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6ac2]
    mov bx, word [bp + 0xc]
    mov byte [bx + 0x2], al
    mov bx, word [bp + 0xc]
    mov byte [bx + 0x3], 0
    mov word [bp - 0x000c], 3
    mov ax, word [data_9134]
    jmp short @..math_loc_03c0.l12
@..math_loc_03c0.l10:
    mov bx, word [bp + 0xc]
    mov al, byte [bx]
    sub ah, ah
    add ax, word [data_82e8]
    mov byte [bx], al
    jmp short @..math_loc_03c0.l13
@..math_loc_03c0.l11:
    mov bx, word [bp + 0xc]
    mov al, byte [bx + 0x1]
    sub ah, ah
    add ax, word [data_82e8]
    mov byte [bx + 0x1], al
    jmp short @..math_loc_03c0.l13
@..math_loc_03c0.l12:
    cmp ax, strict word 1
    je short @..math_loc_03c0.l10
    cmp ax, strict word 2
    je short @..math_loc_03c0.l10
    cmp ax, strict word 0x14
    je short @..math_loc_03c0.l11
@..math_loc_03c0.l13:
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x5b48]
    sub ah, ah
    jmp short @..local.l8
@..math_loc_03c0.l14:
    cmp word [data_9134], byte 1
    jne short @..math_loc_03c0.l15
    mov word [bp - 0x000c], 1
@..math_loc_03c0.l15:
    jmp short @..local.l9
@..math_loc_03c0.l16:
    cmp word [data_9134], byte 1
    jne short @..math_loc_03c0.l17
    mov word [bp - 0x000c], 1
@..math_loc_03c0.l17:
    cmp word [data_9134], byte 2
    jne short @..local.l3
    mov ax, word [data_82e8]
    inc ax
    inc ax
    inc ax
    mov bx, word [bp + 0xc]
    mov byte [bx + 0x1], al
@..local.l3:
    jmp short @..local.l9
@..local.l4:
    cmp word [data_9134], byte 1
    jne short @..local.l5
    mov bx, word [bp + 0xc]
    mov byte [bx + 0x1], 2
@..local.l5:
    mov word [bp - 0x000c], 2
    jmp short @..local.l9
@..local.l6:
    cmp word [data_9134], byte 1
    jne short @..local.l7
    mov ax, word [data_82e8]
    inc ax
    mov bx, word [bp + 0xc]
    mov byte [bx], al
@..local.l7:
    mov word [bp - 0x000c], 1
    jmp short @..local.l9
@..local.l8:
    cmp ax, strict word 0x34
    je short @..math_loc_03c0.l14
    cmp ax, strict word 0x37
    je short @..math_loc_03c0.l16
    cmp ax, strict word 0x46
    je short @..local.l4
    cmp ax, strict word 0x49
    je short @..local.l6
@..local.l9:
    cmp word [data_9136], byte 0x2d
    je short @..local.l10
    cmp word [data_9136], byte 0x32
    jne short @..local.l11
@..local.l10:
    cmp word [data_9134], byte 0
    jle short @..local.l11
    mov al, byte [data_9134]
    mov bx, word [bp + 0xc]
    mov byte [bx], al
    mov word [bp - 0x000c], 1
@..local.l11:
    mov bx, word [bp + 0xc]
    mov si, word [bp - 0x000c]
    mov byte [bx + si], 0
    ret
api_idx_0004:
    mov ax, 0xfffc
    db 0xe8, 0xd8, 0xed ; call 0xfffff40b
    mov word [bp - 0x0002], 0
@..api_idx_0004.l1:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_8468]
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
    mov ax, word [data_8468]
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
    inc word [data_8468]
    ret
api_idx_0018:
    mov ax, 0xffe8
    db 0xe8, 0xde, 0xec ; call 0xfffff40b
    mov byte [bp - 0x0018], 0
    mov ax, 6
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx - 0x7bc6]
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x0002], byte 0
    jne short @..local.l12
    ret
@..local.l12:
    lea ax, word [bp - 0x0018]
    push ax
    push word [bp + 0x10]
    push word [bp + 0x6]
    push word [bp + 0x4]
    push word [bp - 0x0002]
    call api_idx_000c
    add sp, byte 0x0a
    cmp byte [bp - 0x0018], 0
    jne short @..local.l13
    ret
@..local.l13:
    cmp word [data_9136], byte 0x3e
    jne short @..local.l14
    cmp word [data_9134], byte 0x12
    jne short @..local.l14
    mov ax, 1
    jmp short @..local.l15
@..local.l14:
    mov ax, word [bp + 0x6]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
@..local.l15:
    mov word [bp - 0x0004], ax
    mov al, byte [bp - 0x0018]
    sub ah, ah
    mov word [bp - 0x0006], ax
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x6b75], 0
    je short @..local.l16
    mov word [bp + 0x8], 0
@..local.l16:
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6abf]
    sub ah, ah
    mov word [bp - 0x0008], ax
    cmp word [bp - 0x0008], byte 0
    jne short @..local.l17
    mov ax, 6
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5da]
    mov word [bp - 0x0008], ax
    jmp short @..local.l19
@..local.l17:
    mov ax, 0x64
    push ax
    mov ax, 5
    push ax
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0
    cmp word [bp + 0x6], byte 0
    je short @..local.l18
    mov ax, 5
@..local.l18:
    add cx, ax
    mov ax, word [bp - 0x0008]
    sub ax, cx
    push ax
    call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0008], ax
@..local.l19:
    mov ax, word [bp + 0xe]
    dec ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x15e
    imul word [bp - 0x0002]
    push ax
    mov ax, word [bp - 0x0004]
    mov cx, 2
    cwd
    idiv cx
    mov cx, dx
    pop ax
    add ax, cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6a52]
    sub ah, ah
    push ax
    mov ax, 0x15e
    imul word [bp - 0x0002]
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
    db 0xe8, 0x70, 0xaf ; call 0xffffb7c2
    add sp, byte 6
    mov word [bp - 0x000a], ax
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x6a9b]
    sub ah, ah
    push ax
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6b61]
    cbw
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x000c], ax
    mov bx, word [bp - 0x0002]
    cmp byte [bx + 0x5b48], 0x18
    jne short @..local.l20
    cmp word [data_9134], byte 1
    jne short @..local.l20
    cmp byte [bp - 0x0018], 4
    jne short @..local.l20
    mov ax, 3
    push ax
    db 0xe8, 0x05, 0xaf ; call 0xffffb7a9
    pop cx
    add ax, word [bp - 0x000a]
    dec ax
    mov word [bp - 0x000a], ax
    mov ax, 2
    push ax
    db 0xe8, 0xf6, 0xae ; call 0xffffb7a9
    pop cx
    add word [bp - 0x000c], ax
@..local.l20:
    mov ax, 0xa0
    sub ax, word [bp - 0x000a]
    imul word [bp + 0xa]
    mov cx, 0x64
    cwd
    idiv cx
    add word [bp - 0x000a], ax
    mov ax, word [bp - 0x0004]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short @..local.l21
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov cx, ax
    mov ax, word [bp - 0x0004]
    mov bx, 2
    cwd
    idiv bx
    mov ax, dx
    add cx, ax
    mov ax, cx
    mov cx, word [bp - 0x0006]
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
    sub word [bp - 0x000a], ax
@..local.l21:
    mov ax, word [bp + 0xe]
    dec ax
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x000a]
    add ax, word [bp + 0x8]
    push ax
    db 0xe8, 0x9c, 0xae ; call 0xffffb7c2
    add sp, byte 6
    mov word [bp - 0x000a], ax
    mov ax, 0x3d
    sub ax, word [bp - 0x000c]
    imul word [bp + 0xa]
    mov cx, 0x64
    cwd
    idiv cx
    add word [bp - 0x000c], ax
    lea ax, word [bp - 0x0018]
    push ax
    push word [bp + 0xa]
    push word [bp - 0x0004]
    push word [bp + 0xe]
    push word [bp + 0xc]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    push word [bp - 0x0002]
    push word [bp - 0x0008]
    call api_idx_0004
    add sp, byte 0x12
    ret
api_idx_000e:
    mov ax, 0xfff2
    db 0xe8, 0xa4, 0xea ; call 0xfffff40b
    cmp word [data_8f20], byte 0
    jg short @..api_idx_000e.l1
    jmp near @..api_idx_000e.l8
@..api_idx_000e.l1:
    mov ax, word [data_82ee]
    mov cx, word [data_8f20]
    dec cx
    sub ax, cx
    add ax, strict word 6
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    mov ax, dx
    jmp short @..api_idx_000e.l6
@..api_idx_000e.l2:
    mov byte [bp - 0x000e], 1
    mov byte [bp - 0x000d], 2
    mov ax, 5
    cmp word [bp - 0x0002], byte 0
    jne short @..api_idx_000e.l3
    mov ax, 4
@..api_idx_000e.l3:
    mov byte [bp - 0x000c], al
    mov byte [bp - 0x000b], 0
    mov word [bp - 0x0004], 0
    jmp short @..api_idx_000e.l7
@..api_idx_000e.l4:
    mov byte [bp - 0x000e], 3
    mov byte [bp - 0x000d], 0
    mov ax, 0
    cmp word [bp - 0x0002], byte 3
    jne short @..api_idx_000e.l5
    mov ax, 1
@..api_idx_000e.l5:
    mov word [bp - 0x0004], ax
    jmp short @..api_idx_000e.l7
@..api_idx_000e.l6:
    cmp ax, strict word 0
    je short @..api_idx_000e.l2
    cmp ax, strict word 1
    je short @..api_idx_000e.l4
    cmp ax, strict word 2
    je short @..api_idx_000e.l2
    cmp ax, strict word 3
    je short @..api_idx_000e.l4
@..api_idx_000e.l7:
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
@..api_idx_000e.l8:
    cmp word [data_8f20], byte 0xff
    jne short @..api_idx_000e.l9
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
    mov al, byte [data_7b04]
    sub ah, ah
    push ax
    mov al, byte [data_7abc]
    sub ah, ah
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0x1c
    push ax
    call api_idx_0004
    add sp, byte 0x12
@..api_idx_000e.l9:
    ret
loc_0a56:
    mov ax, 0
    db 0xe8, 0xaf, 0xe9 ; call 0xfffff40b
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b96]
    mov al, byte [bx + 0x14]
    sub ah, ah
    cmp ax, 0xff
    je short @..local.l22
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
@..local.l22:
    ret
api_idx_000a:
    mov ax, 0xfff6
    db 0xe8, 0x53, 0xe9 ; call 0xfffff40b
    mov ax, 0
    push ax
    push word [data_8d10]
    push word [data_8d0e]
    call 0xe94f
    add sp, byte 6
    mov ax, 0
    push ax
    push word [data_8d0c]
    push word [data_8d0a]
    db 0xe8, 0x76, 0xde ; call 0xffffe94f
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
    db 0xe8, 0xc1, 0xe4 ; call 0xffffefd1
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
math_loc_0b30:
    mov ax, 0
    db 0xe8, 0xd5, 0xe8 ; call 0xfffff40b
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
    db 0xe8, 0x91, 0xe8 ; call 0xfffff40b
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
    db 0xe8, 0xb7, 0xb6 ; call 0xffffc283
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
    db 0xe8, 0x9a, 0xb6 ; call 0xffffc283
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
    db 0xe8, 0x7d, 0xb6 ; call 0xffffc283
    add sp, byte 0x0a
    mov word [bp - 0x0006], ax
    mov ax, 0
    push ax
    call api_idx_000a
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    db 0xe8, 0x3b, 0xb8 ; call 0xffffc459
    add sp, byte 4
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    db 0xe8, 0x2e, 0xb8 ; call 0xffffc459
    add sp, byte 4
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    db 0xe8, 0x21, 0xb8 ; call 0xffffc459
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
    db 0xe8, 0x2f, 0xb6 ; call 0xffffc283
    add sp, byte 0x0a
    mov word [bp - 0x0002], ax
    mov ax, 0
    push ax
    call api_idx_000a
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    db 0xe8, 0xed, 0xb7 ; call 0xffffc459
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
loc_0c96:
    mov ax, 0
    db 0xe8, 0x6f, 0xe7 ; call 0xfffff40b
    mov ax, word [bp + 0x4]
    jmp near @..local.l27
@..local.l23:
    mov ax, 0x9f
    push ax
    mov ax, 0xcd
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0x73
    push ax
    db 0xe8, 0x25, 0xdc ; call 0xffffe8da
    add sp, byte 8
    mov ax, 0xc2
    push ax
    mov ax, 0x60
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 8
    push ax
    db 0xe8, 0x0f, 0xdc ; call 0xffffe8da
    add sp, byte 8
    mov ax, 0xc2
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 0xe7
    push ax
    db 0xe8, 0xf9, 0xdb ; call 0xffffe8da
    add sp, byte 8
    jmp short @..local.l29
@..local.l24:
    mov ax, 0xc2
    push ax
    mov ax, 0xe0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x62
    push ax
    db 0xe8, 0xe1, 0xdb ; call 0xffffe8da
    add sp, byte 8
    jmp short @..local.l29
@..local.l25:
    mov ax, 0x9f
    push ax
    mov ax, 0xcd
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0x73
    push ax
    db 0xe8, 0xc9, 0xdb ; call 0xffffe8da
    add sp, byte 8
    jmp short @..local.l29
@..local.l26:
    mov ax, 0xc2
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0x93
    push ax
    mov ax, 8
    push ax
    db 0xe8, 0xb1, 0xdb ; call 0xffffe8da
    add sp, byte 8
    jmp short @..local.l29
@..local.l27:
    cmp ax, strict word 0
    jne short @..local.l28
    jmp near @..local.l23
@..local.l28:
    cmp ax, strict word 1
    je short @..local.l24
    cmp ax, strict word 2
    je short @..local.l25
    cmp ax, strict word 3
    je short @..local.l26
@..local.l29:
    ret
api_idx_0054:
    mov ax, 0xffac
    db 0xe8, 0xbf, 0xe6 ; call 0xfffff40b
    mov ax, 1
    push ax
    call api_idx_0006
    pop cx
    mov ax, 0x5f
    push ax
    mov ax, 0xa8
    push ax
    mov ax, 0xdd
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x62
    push ax
    call 0xe901
    add sp, byte 0x0a
    mov ax, 0x5f
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0xaa, 0xda ; call 0xffffe823
    add sp, byte 4
    mov ax, 0xa4
    push ax
    mov ax, 0x63
    push ax
    db 0xe8, 0x82, 0xda ; call 0xffffe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x90bb
    push ax
    db 0xe8, 0xb9, 0xda ; call 0xffffe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x9138
    push ax
    db 0xe8, 0xab, 0xda ; call 0xffffe84e
    add sp, byte 4
    mov ax, 0xa4
    push ax
    mov ax, 0xce
    push ax
    db 0xe8, 0x58, 0xda ; call 0xffffe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x90be
    push ax
    db 0xe8, 0x8f, 0xda ; call 0xffffe84e
    add sp, byte 4
    ret
api_idx_0002:
    mov ax, 0xfffe
    db 0xe8, 0x42, 0xe6 ; call 0xfffff40b
    mov word [bp - 0x0002], 0
@..api_idx_0002.l1:
    mov ax, word [bp - 0x0002]
    mov cx, 7
    shl ax, cl
    add ax, 0x924c
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, cl
    add ax, 0x91cc
    push ax
    db 0xe8, 0x7e, 0xe5 ; call 0xfffff364
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6c32]
    mov word [bx - 0x6c34], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 3
    jl short @..api_idx_0002.l1
    mov byte [data_934c], 0
    mov word [data_93d2], 0
    mov word [data_93d4], 3
    ret
api_idx_0004_2:
    mov ax, 0xfffc
    db 0xe8, 0xf0, 0xe5 ; call 0xfffff40b
    cmp word [data_93d4], byte 2
    jle short @..api_idx_0004_2.l1
    call api_idx_0002
    jmp short @..api_idx_0004_2.l2
@..api_idx_0004_2.l1:
    inc word [data_93d4]
@..api_idx_0004_2.l2:
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    mov word [bp - 0x0004], 0
@..api_idx_0004_2.l3:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6c34], byte 0
    je short @..api_idx_0004_2.l4
    mov ax, 2
    push ax
    mov ax, word [bp - 0x0004]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
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
    jmp short @..api_idx_0004_2.l5
@..api_idx_0004_2.l4:
    mov word [bp - 0x0002], 0x44
@..api_idx_0004_2.l5:
    mov ax, 0xc
    imul word [bp - 0x0004]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    cmp word [bx - 0x6c34], byte 0
    je short @..api_idx_0004_2.l6
    mov cx, 0x92
    jmp short @..api_idx_0004_2.l7
@..api_idx_0004_2.l6:
    mov cx, 0x97
@..api_idx_0004_2.l7:
    add ax, cx
    push ax
    push word [bp - 0x0002]
    db 0xe8, 0x70, 0xd9 ; call 0xffffe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6c34], byte 0
    je short @..api_idx_0004_2.l8
    mov ax, 0x55
    jmp short @..api_idx_0004_2.l9
@..api_idx_0004_2.l8:
    mov ax, 1
@..api_idx_0004_2.l9:
    push ax
    db 0xe8, 0x69, 0xd9 ; call 0xffffe823
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x6c34]
    mov ax, word [bp - 0x0004]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    db 0xe8, 0x77, 0xd9 ; call 0xffffe84e
    add sp, byte 4
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 4
    jge short @..api_idx_0004_2.l10
    jmp near @..api_idx_0004_2.l3
@..api_idx_0004_2.l10:
    mov ax, 3
    push ax
    call loc_0c96
    pop cx
    ret
loc_0ef1:
    mov ax, 0
    db 0xe8, 0x14, 0xe5 ; call 0xfffff40b
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_9090], dx
    mov word [data_908e], ax
    mov ax, word [data_908e]
    mov dx, word [data_9090]
    sub ax, word [data_908a]
    sbb dx, word [data_908c]
    mov word [data_9094], dx
    mov word [data_9092], ax
    mov ax, word [data_93d6]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [data_9092]
    mov dx, word [data_9094]
    cmp bx, dx
    jg short @..local.l30
    jne short @..local.l31
    cmp cx, ax
    jbe short @..local.l31
@..local.l30:
    jmp short @..local.l32
@..local.l31:
    mov ax, word [data_908e]
    mov dx, word [data_9090]
    mov word [data_908c], dx
    mov word [data_908a], ax
    mov ax, 1
    ret
@..local.l32:
    mov ax, 0
    ret
api_idx_0006_2:
    mov ax, 0xfffa
    db 0xe8, 0xb5, 0xe4 ; call 0xfffff40b
    mov ax, word [data_845e]
    jmp near @..api_idx_0006_2.l12
@..api_idx_0006_2.l1:
    push word [data_93d8]
    mov ax, 0xf7
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0x48
    push ax
    db 0xe8, 0x6b, 0xd9 ; call 0xffffe8da
    add sp, byte 8
    jmp near @..api_idx_0006_2.l16
@..api_idx_0006_2.l2:
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    sub ax, word [data_908a]
    sbb dx, word [data_908c]
    push ax
    push dx
    mov ax, word [data_93d6]
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
    mov ax, word [data_906c]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [data_906c], dx
@..api_idx_0006_2.l5:
    mov ax, 0
    push ax
    push ax
    mov ax, word [data_906c]
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
    mov word [data_8468], 0
    jmp near @..api_idx_0006_2.l16
@..api_idx_0006_2.l7:
    call loc_0ef1
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
    mov cx, word [bx + 0x5c8]
    mov ax, 0x64
    sub ax, cx
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    call api_idx_0018
    add sp, byte 0x0e
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jl short @..api_idx_0006_2.l9
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 3
    jl short @..api_idx_0006_2.l8
    call api_idx_000e
    cmp word [bp - 0x0006], byte 0
    je short @..api_idx_0006_2.l10
    mov ax, word [data_82e8]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [data_82e8], dx
@..api_idx_0006_2.l10:
    call 0xda22
    jmp short @..api_idx_0006_2.l16
@..api_idx_0006_2.l11:
    push word [data_845e]
    call loc_0a56
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
    inc word [data_845e]
    mov ax, word [data_845e]
    cmp ax, strict word 0xc
    jne short @..api_idx_0006_2.l17
    mov word [data_845e], 0xfffd
@..api_idx_0006_2.l17:
    ret
loc_109f:
    mov ax, 0
    db 0xe8, 0x66, 0xe3 ; call 0xfffff40b
    mov word [data_845e], 0xfffe
@..local.l33:
    call api_idx_0006_2
    cmp word [data_845e], byte 0xfe
    jne short @..local.l33
    ret
loc_10b6:
    mov ax, 0
    db 0xe8, 0x4f, 0xe3 ; call 0xfffff40b
@..local.l34:
    cmp word [data_845e], byte 0xfe
    je short @..local.l35
    call api_idx_0006_2
    jmp short @..local.l34
@..local.l35:
    ret
api_idx_0004_3:
    mov ax, 0xfffc
    db 0xe8, 0x3c, 0xe3 ; call 0xfffff40b
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0xe928
    add sp, byte 8
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
    cmp word [bp + 0x14], byte 0xff
    je short @..api_idx_0004_3.l1
    push word [bp + 0x14]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    db 0xe8, 0x02, 0xd8 ; call 0xffffe901
    add sp, byte 0x0a
@..api_idx_0004_3.l1:
    push word [bp + 0x12]
    push word [bp + 0x10]
    db 0xe8, 0x18, 0xd7 ; call 0xffffe823
    add sp, byte 4
    push word [bp + 0xe]
    push word [bp + 0xc]
    db 0xe8, 0xf2, 0xd6 ; call 0xffffe809
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x16]
    db 0xe8, 0x2a, 0xd7 ; call 0xffffe84e
    add sp, byte 4
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    db 0xe8, 0xa4, 0xd7 ; call 0xffffe8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    push word [bp - 0x0004]
    db 0xe8, 0x09, 0xd8 ; call 0xffffe94f
    add sp, byte 6
    call 0xec17
    ret
api_idx_0004_4:
    mov ax, 0xfffc
    db 0xe8, 0xb8, 0xe2 ; call 0xfffff40b
    mov ax, 0x90c2
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0x1a
    push ax
    mov ax, 0xc1
    push ax
    mov ax, 2
    push ax
    mov ax, 0xc6
    push ax
    mov ax, 7
    push ax
    mov ax, 0xc0
    push ax
    mov ax, 1
    push ax
    call api_idx_0004_3
    add sp, byte 0x14
@..api_idx_0004_4.l1:
    call 0xbaef
    test ax, ax
    jne short @..api_idx_0004_4.l2
    jmp short @..api_idx_0004_4.l1
@..api_idx_0004_4.l2:
    mov ax, 0xc6
    push ax
    mov ax, 7
    push ax
    mov ax, 0xc0
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0x40, 0xd7 ; call 0xffffe8da
    add sp, byte 8
    ret
api_idx_0004_5:
    mov ax, 0xfffc
    db 0xe8, 0x67, 0xe2 ; call 0xfffff40b
    db 0xe8, 0x70, 0xda ; call 0xffffec17
    mov ax, word [bp + 0x4]
    cwd
    les bx, word [data_0002]
    mov cx, word [es:bx]
    mov bx, word [es:bx + 0x2]
    add ax, cx
    adc dx, bx
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
@..api_idx_0004_5.l1:
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    cmp dx, word [bp - 0x0002]
    jg short @..api_idx_0004_5.l2
    jne short @..api_idx_0004_5.l3
    cmp ax, word [bp - 0x0004]
    jb short @..api_idx_0004_5.l3
@..api_idx_0004_5.l2:
    jmp short @..local.l38
@..api_idx_0004_5.l3:
    db 0xe8, 0x13, 0xa9 ; call 0xffffbaef
    test ax, ax
    je short @..local.l36
    ret
@..local.l36:
    cmp word [bp + 0x6], byte 0
    je short @..local.l37
    cmp word [data_59fc], byte 0
    je short @..local.l37
    call api_idx_0004_4
    ret
@..local.l37:
    call api_idx_0006_2
    jmp short @..api_idx_0004_5.l1
@..local.l38:
    ret
api_idx_0004_6:
    mov ax, 0xfffc
    db 0xe8, 0x0d, 0xe2 ; call 0xfffff40b
    mov ax, word [bp + 0x6]
    add ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0x92
    push ax
    mov ax, 0
    push ax
    db 0xe8, 0xc3, 0xd6 ; call 0xffffe8da
    add sp, byte 8
    push word [bp + 0x4]
    db 0xe8, 0x70, 0xe8 ; call 0xfffffa90
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
    db 0xe8, 0x54, 0xe8 ; call 0xfffffa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, ax
    mov ax, word [bp - 0x0002]
    add cx, ax
    mov word [bp - 0x0004], cx
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, 0
    push ax
    mov ax, 0x16
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0x92
    push ax
    push word [bp - 0x0002]
    mov ax, word [bp + 0x6]
    add ax, 0x98
    push ax
    push cx
    mov ax, word [bp + 0x6]
    add ax, 0x92
    push ax
    push word [bp - 0x0002]
    call api_idx_0004_3
    add sp, byte 0x14
    cmp word [bp + 0x6], byte 0
    je short @..api_idx_0004_6.l1
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
@..api_idx_0004_6.l1:
    ret
api_idx_0054_2:
    mov ax, 0xffac
    db 0xe8, 0x79, 0xe1 ; call 0xfffff40b
    lea ax, word [bp - 0x0054]
    push ax
    push word [bp + 0x4]
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0xea, 0xe7 ; call 0xfffffa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp + 0x6]
    sub ax, cx
    mov word [bp - 0x0002], ax
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0xcd, 0xe7 ; call 0xfffffa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, ax
    mov ax, word [bp - 0x0002]
    add cx, ax
    mov word [bp - 0x0004], cx
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0xc2
    push ax
    push ax
    mov ax, 1
    push ax
    push word [bp + 0x8]
    push word [bp - 0x0002]
    mov ax, word [bp + 0x8]
    add ax, strict word 6
    push ax
    push cx
    push word [bp + 0x8]
    push word [bp - 0x0002]
    call api_idx_0004_3
    add sp, byte 0x14
    mov ax, 0
    push ax
    db 0xe8, 0xdf, 0xa4 ; call 0xffffb7e0
    pop cx
    push word [data_905a]
    call 0xb75e
    pop cx
    ret
math_loc_130b:
    mov ax, 0
    db 0xe8, 0xfa, 0xe0 ; call 0xfffff40b
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    mov ax, 3
    push ax
    call loc_0c96
    pop cx
    mov ax, 0
    push ax
    push word [bp + 0xa]
    db 0xe8, 0xf8, 0xd4 ; call 0xffffe823
    add sp, byte 4
    mov ax, 7
    imul word [bp + 0x6]
    add ax, 0x9c
    push ax
    push word [bp + 0x4]
    db 0xe8, 0x52, 0xe7 ; call 0xfffffa90
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
    db 0xe8, 0xb4, 0xd4 ; call 0xffffe809
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    db 0xe8, 0xec, 0xd4 ; call 0xffffe84e
    add sp, byte 4
    mov ax, 7
    imul word [bp + 0x6]
    add ax, 0xa2
    push ax
    mov ax, 0x127
    push ax
    mov ax, 7
    imul word [bp + 0x6]
    add ax, 0x9c
    push ax
    mov ax, 0x19
    push ax
    db 0xe8, 0x56, 0xd5 ; call 0xffffe8da
    add sp, byte 8
    cmp word [bp + 0x8], byte 0
    je short @..local.l39
    mov ax, 0
    push ax
    db 0xe8, 0x4c, 0xa4 ; call 0xffffb7e0
    pop cx
@..local.l39:
    mov ax, 0
    push ax
    push word [data_905a]
    call api_idx_0004_5
    add sp, byte 4
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    mov ax, 3
    push ax
    call loc_0c96
    pop cx
    ret
api_idx_0050:
    mov ax, 0xffb0
    db 0xe8, 0x51, 0xe0 ; call 0xfffff40b
    lea ax, word [bp - 0x0050]
    push ax
    push word [bp + 0x4]
    db 0xe8, 0x77, 0xa1 ; call 0xffffb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    mov ax, 0x9138
    push ax
    lea ax, word [bp - 0x0050]
    push ax
    call 0xb300
    add sp, byte 6
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    lea ax, word [bp - 0x0050]
    push ax
    call math_loc_130b
    add sp, byte 8
    ret
api_idx_005e:
    mov ax, 0xffa2
    db 0xe8, 0x18, 0xe0 ; call 0xfffff40b
    mov word [bp - 0x000e], 0
    mov word [bp - 0x0004], 0
@..api_idx_005e.l1:
    mov word [bp - 0x0006], 0
@..api_idx_005e.l2:
    mov ax, 6
    imul word [bp - 0x0004]
    mov cx, word [bp - 0x0006]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx - 0x7bc6], byte 0
    je short @..api_idx_005e.l3
    mov word [bp - 0x000e], 1
@..api_idx_005e.l3:
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 3
    jl short @..api_idx_005e.l2
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jl short @..api_idx_005e.l1
    cmp word [bp - 0x000e], byte 0
    jne short @..local.l40
    cmp word [bp + 0x6], byte 0
    je short @..api_idx_005e.l4
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x37
    push ax
    db 0xe8, 0x88, 0xd4 ; call 0xffffe8da
    add sp, byte 8
@..api_idx_005e.l4:
    call loc_109f
    ret
@..local.l40:
    cmp word [bp + 0x6], byte 0
    je short @..local.l41
    lea ax, word [bp - 0x005e]
    push ax
    mov ax, 0x7e9
    push ax
    db 0xe8, 0xd1, 0xa0 ; call 0xffffb53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x005e]
    push ax
    call api_idx_0004_6
    add sp, byte 4
@..local.l41:
    mov ax, 1
    cmp word [data_9136], byte 0
    je short @..local.l42
    mov ax, 0
    cmp byte [data_91c3], 0x18
    je short @..local.l42
    mov ax, 2
    push ax
    db 0xe8, 0x13, 0xa3 ; call 0xffffb7a9
    pop cx
@..local.l42:
    mov word [bp - 0x000a], ax
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    mov word [bp - 0x000c], 0
    mov word [bp - 0x0002], 0
@..local.l43:
    cmp word [bp + 0x6], byte 0
    je short @..local.l44
    cmp word [bp - 0x0002], byte 1
    jne short @..local.l44
    cmp word [data_93da], byte 0
    jle short @..local.l44
    push word [data_93da]
    db 0xe8, 0x10, 0xa3 ; call 0xffffb7e0
    pop cx
@..local.l44:
    mov word [data_845e], 0xfffe
    call api_idx_0006_2
    mov word [bp - 0x0004], 0
@..local.l45:
    mov word [bp - 0x0006], 0
@..local.l46:
    mov ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    cmp ax, strict word 1
    je short @..local.l47
    cmp word [bp - 0x0006], byte 0
    jne short @..local.l48
@..local.l47:
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
    jmp short @..local.l49
@..local.l48:
    mov ax, word [bp + 0x4]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov cx, word [bp - 0x0002]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5fe]
@..local.l49:
    mov word [bp - 0x0008], ax
    cmp word [bp - 0x0004], byte 0
    jne short @..local.l52
    cmp word [bp - 0x0006], byte 0
    jne short @..local.l52
    cmp word [bp - 0x000a], byte 0
    jne short @..local.l50
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
    jmp short @..local.l51
@..local.l50:
    mov ax, word [bp + 0x4]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov cx, word [bp - 0x0002]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5fe]
@..local.l51:
    mov word [bp - 0x0008], ax
@..local.l52:
    push word [bp - 0x000c]
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
    mov cx, word [bx + 0x5c8]
    mov ax, 0x64
    sub ax, cx
    push ax
    mov ax, 0
    cmp word [bx - 0x6c24], byte 1
    jne short @..local.l53
    mov ax, word [bp - 0x0008]
@..local.l53:
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    call api_idx_0018
    add sp, byte 0x0e
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 3
    jge short @..local.l54
    jmp near @..local.l46
@..local.l54:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jge short @..local.l55
    jmp near @..local.l45
@..local.l55:
    call api_idx_000e
    db 0xe8, 0x4a, 0xc4 ; call 0xffffda22
    mov word [data_845e], 0
@..local.l56:
    call api_idx_0006_2
    cmp word [data_845e], byte 0xfe
    jne short @..local.l56
    call loc_0ef1
    mov word [bp - 0x000c], ax
    cmp word [bp - 0x000c], byte 0
    je short @..local.l57
    mov ax, word [data_906c]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [data_906c], dx
    mov ax, word [data_82e8]
    inc ax
    cwd
    idiv cx
    mov word [data_82e8], dx
@..local.l57:
    cmp word [bp - 0x000c], byte 0
    jne short @..local.l58
    jmp near @..local.l44
@..local.l58:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jge short @..local.l59
    jmp near @..local.l43
@..local.l59:
    mov word [bp - 0x0004], 0
@..local.l60:
    mov word [bp - 0x0006], 0
@..local.l61:
    mov ax, 6
    imul word [bp - 0x0004]
    mov cx, word [bp - 0x0006]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov word [bx - 0x6c24], 0
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 3
    jl short @..local.l61
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jl short @..local.l60
    cmp word [bp + 0x6], byte 0
    je short @..local.l62
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x37
    push ax
    db 0xe8, 0x68, 0xd2 ; call 0xffffe8da
    add sp, byte 8
@..local.l62:
    ret
api_idx_000c_2:
    mov ax, 0xfff4
    db 0xe8, 0x8f, 0xdd ; call 0xfffff40b
    mov ax, word [bp + 0x14]
    shl ax, 1
    mov word [bp - 0x0008], ax
    mov ax, word [bp + 0xa]
    mov cx, word [bp + 0x6]
    cmp cx, word [bp - 0x0008]
    jge short @..api_idx_000c_2.l1
    mov ax, word [bp + 0x8]
@..api_idx_000c_2.l1:
    mov word [bp - 0x0006], ax
    mov ax, cx
    cwd
    idiv word [bp - 0x0008]
    mov ax, dx
    cwd
    idiv word [bp + 0x14]
    imul word [bp + 0x10]
    mov word [bp - 0x0002], ax
    mov ax, cx
    cwd
    idiv word [bp - 0x0008]
    mov ax, dx
    cwd
    idiv word [bp + 0x14]
    mov ax, dx
    imul word [bp + 0x12]
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0004]
    add ax, strict word 7
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp - 0x0006]
    add ax, word [bp - 0x0002]
    inc ax
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0004]
    dec ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0002]
    dec ax
    push ax
    db 0xe8, 0x42, 0xd2 ; call 0xffffe928
    add sp, byte 8
    mov word [bp - 0x000a], dx
    mov word [bp - 0x000c], ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0004]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp - 0x0006]
    add ax, word [bp - 0x0002]
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0004]
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0002]
    push ax
    call 0xbce3
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    push word [bp + 0x16]
    db 0xe8, 0xfb, 0xd0 ; call 0xffffe823
    add sp, byte 4
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0004]
    inc ax
    push ax
    push word [bp + 0x4]
    db 0xe8, 0x57, 0xe3 ; call 0xfffffa90
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
    add ax, word [bp - 0x0002]
    inc ax
    push ax
    db 0xe8, 0xb2, 0xd0 ; call 0xffffe809
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    db 0xe8, 0xea, 0xd0 ; call 0xffffe84e
    add sp, byte 4
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0004]
    add ax, strict word 7
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp - 0x0006]
    add ax, word [bp - 0x0002]
    inc ax
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0004]
    dec ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0002]
    dec ax
    push ax
    db 0xe8, 0x48, 0xd1 ; call 0xffffe8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x000c]
    db 0xe8, 0xad, 0xd1 ; call 0xffffe94f
    add sp, byte 6
    ret
loc_17a6:
    mov ax, 0
    db 0xe8, 0x5f, 0xdc ; call 0xfffff40b
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
    db 0xe8, 0x3b, 0xd1 ; call 0xffffe901
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
    db 0xe8, 0x1e, 0xd1 ; call 0xffffe901
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
    db 0xe8, 0x01, 0xd1 ; call 0xffffe901
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
    db 0xe8, 0xe4, 0xd0 ; call 0xffffe901
    add sp, byte 0x0a
    ret
math_loc_1821:
    mov ax, 0xfe30
    db 0xe8, 0xe4, 0xdb ; call 0xfffff40b
    mov word [data_9052], 0xffff
    mov ax, word [bp + 0x14]
    shl ax, 1
    mov word [bp - 0x0010], ax
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
@..math_loc_1821.l1:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 0xff
    jne short @..math_loc_1821.l2
    jmp near @..math_loc_1821.l7
@..math_loc_1821.l2:
    cmp word [bx + si], byte 1
    je short @..math_loc_1821.l3
    jmp near @..math_loc_1821.l6
@..math_loc_1821.l3:
    mov ax, word [bp - 0x0002]
    cmp word [bp + 0x16], byte 0
    je short @..math_loc_1821.l4
    mov ax, word [bp - 0x0004]
@..math_loc_1821.l4:
    mov word [bp - 0x0008], ax
    mov ax, word [bp + 0xa]
    mov cx, word [bp - 0x0008]
    cmp cx, word [bp - 0x0010]
    jge short @..math_loc_1821.l5
    mov ax, word [bp + 0x8]
@..math_loc_1821.l5:
    mov word [bp - 0x0006], ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x015a]
    add ax, cx
    push ax
    mov ax, word [bp + 0x4]
    add ax, word [bp - 0x0004]
    push ax
    db 0xe8, 0xab, 0x9c ; call 0xffffb53b
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
    db 0xe8, 0xfc, 0xa3 ; call 0xffffbce3
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push word [bp + 0x18]
    db 0xe8, 0x2f, 0xcf ; call 0xffffe823
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
    db 0xe8, 0x81, 0xe1 ; call 0xfffffa90
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
    db 0xe8, 0xdc, 0xce ; call 0xffffe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x015a]
    add ax, cx
    push ax
    db 0xe8, 0x0a, 0xcf ; call 0xffffe84e
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
@..math_loc_1821.l6:
    inc word [bp - 0x0004]
    jmp near @..math_loc_1821.l1
@..math_loc_1821.l7:
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
    db 0xe8, 0xeb, 0xa0 ; call 0xffffbaa6
    add sp, byte 0x0e
    push word [bp + 0x6]
    call loc_0c96
    pop cx
    cmp word [data_0e32], byte 0
    je short @..math_loc_1821.l9
@..math_loc_1821.l8:
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    mov word [bp - 0x0004], ax
    call api_idx_0006_2
    cmp word [data_5b3e], byte 0
    je short @..math_loc_1821.l8
    jmp near @..local.l85
@..math_loc_1821.l9:
    mov word [bp - 0x0004], 0
@..math_loc_1821.l10:
    cmp word [bp + 0x16], byte 0
    je short @..math_loc_1821.l11
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 1
    je short @..math_loc_1821.l11
    inc word [bp - 0x0004]
    jmp short @..math_loc_1821.l10
@..math_loc_1821.l11:
    mov ax, word [bp + 0xa]
    mov cx, word [bp - 0x0004]
    cmp cx, word [bp - 0x0010]
    jge short @..math_loc_1821.l12
    mov ax, word [bp + 0x8]
@..math_loc_1821.l12:
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
    call loc_17a6
    add sp, byte 0x0a
    push word [bp + 0x6]
    call loc_0c96
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
    call loc_17a6
    add sp, byte 0x0a
@..local.l63:
    mov ax, 1
    push ax
    call 0xea50
    pop cx
    test ax, ax
    jne short @..local.l64
    call api_idx_0006_2
    jmp short @..local.l63
@..local.l64:
    mov ax, 1
    push ax
    call 0xeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x01ae], ax
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
    jmp near @..local.l79
@..local.l65:
    mov ax, 1
    cmp word [bp - 0x01ae], byte 9
    jne short @..local.l66
    mov ax, 0xffff
@..local.l66:
    mov word [bp - 0x01d0], ax
@..local.l67:
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x01d0]
    add ax, word [bp + 0x14]
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
    je short @..local.l68
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 1
    jne short @..local.l67
@..local.l68:
    cmp word [bp + 0x16], byte 0
    jne short @..local.l69
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jge short @..local.l67
@..local.l69:
    jmp near @..local.l83
@..local.l70:
    mov ax, 1
    cmp word [bp - 0x01ae], byte 8
    jne short @..local.l71
    mov ax, 0xffff
@..local.l71:
    mov word [bp - 0x01d0], ax
@..local.l72:
    mov ax, word [bp + 0x14]
    imul word [bp - 0x01d0]
    add ax, word [bp - 0x0004]
    add ax, word [bp - 0x000c]
    cwd
    idiv word [bp - 0x000c]
    mov word [bp - 0x0004], dx
    mov ax, dx
    cwd
    idiv word [bp + 0x14]
    mov word [bp - 0x000a], ax
    mov word [bp - 0x01b0], 0
@..local.l73:
    mov ax, word [bp - 0x01b0]
    cmp ax, word [bp + 0x14]
    jge short @..local.l76
    cmp word [bp + 0x16], byte 0
    je short @..local.l74
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 1
    jne short @..local.l75
@..local.l74:
    cmp word [bp + 0x16], byte 0
    jne short @..local.l76
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jl short @..local.l76
@..local.l75:
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x01d0]
    add ax, word [bp + 0x14]
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
    jmp short @..local.l73
@..local.l76:
    cmp word [bp + 0x16], byte 0
    je short @..local.l77
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1a]
    cmp word [bx + si], byte 1
    je short @..local.l77
    jmp near @..local.l72
@..local.l77:
    cmp word [bp + 0x16], byte 0
    jne short @..local.l78
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jl short @..local.l78
    jmp near @..local.l72
@..local.l78:
    jmp short @..local.l83
@..local.l79:
    cmp ax, strict word 8
    jne short @..local.l80
    jmp near @..local.l70
@..local.l80:
    cmp ax, strict word 9
    jne short @..local.l81
    jmp near @..local.l65
@..local.l81:
    cmp ax, strict word 0xa
    jne short @..local.l82
    jmp near @..local.l70
@..local.l82:
    cmp ax, strict word 0xb
    jne short @..local.l83
    jmp near @..local.l65
@..local.l83:
    cmp word [bp - 0x01ae], byte 0x0d
    je short @..local.l84
    jmp near @..math_loc_1821.l11
@..local.l84:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x01ce]
    mov word [bp - 0x0004], ax
    inc word [bp - 0x0004]
    push word [bp + 0x6]
    call loc_0c96
    pop cx
@..local.l85:
    dec word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp word [bp + 0x16], byte 0
    je short @..local.l86
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x002e]
@..local.l86:
    mov word [bp - 0x0008], ax
    mov ax, word [bp + 0xa]
    mov cx, word [bp - 0x0008]
    cmp cx, word [bp - 0x0010]
    jge short @..local.l87
    mov ax, word [bp + 0x8]
@..local.l87:
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
    db 0xe8, 0x12, 0xcc ; call 0xffffe8da
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
    db 0xe8, 0x13, 0xcc ; call 0xffffe90e
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
    db 0xe8, 0xb4, 0xcb ; call 0xffffe8da
    add sp, byte 8
    mov ax, word [bp - 0x0004]
    mov word [data_9052], ax
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x002e]
    ret
math_loc_1d39:
    mov ax, 0xfea6
    db 0xe8, 0xcc, 0xd6 ; call 0xfffff40b
    mov ax, word [bp + 0x16]
    dec ax
    cwd
    idiv word [bp + 0x14]
    inc ax
    imul word [bp + 0x10]
    add ax, word [bp + 0xa]
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    mov dx, ax
    mov cx, word [bp + 0x10]
    sub cx, ax
    pop ax
    sub ax, cx
    mov word [bp - 0x0006], ax
    mov ax, word [bp + 0x12]
    imul word [bp + 0x14]
    add ax, word [bp + 0xc]
    mov cx, word [bp + 0x12]
    add cx, byte 0xf7
    sub ax, cx
    mov word [bp - 0x0008], ax
    mov bx, word [bp + 0x4]
    cmp byte [bx], 0
    jne short @..math_loc_1d39.l1
    jmp near @..math_loc_1d39.l2
@..math_loc_1d39.l1:
    mov ax, 0x90c4
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0xc]
    add ax, strict word 0xffeb
    push ax
    mov ax, word [bp + 0xa]
    add ax, strict word 0xfffa
    push ax
    db 0xe8, 0xdf, 0xa4 ; call 0xffffc283
    add sp, byte 0x0a
    mov word [bp - 0x0158], ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0xc]
    add ax, strict word 0xffec
    push ax
    mov ax, word [bp + 0xa]
    add ax, strict word 0xfffb
    push ax
    call 0xbc9a
    add sp, byte 8
    mov ax, 0xc2
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0x4b, 0xca ; call 0xffffe823
    add sp, byte 4
    mov ax, word [bp + 0xc]
    add ax, strict word 0xfff0
    push ax
    push word [bp + 0x4]
    db 0xe8, 0xa8, 0xdc ; call 0xfffffa90
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
    db 0xe8, 0x0a, 0xca ; call 0xffffe809
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    db 0xe8, 0x42, 0xca ; call 0xffffe84e
    add sp, byte 4
    mov ax, word [bp + 0xc]
    add ax, strict word 0xfff6
    push ax
    push word [bp + 0x6]
    db 0xe8, 0x74, 0xdc ; call 0xfffffa90
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
    db 0xe8, 0xd6, 0xc9 ; call 0xffffe809
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x6]
    db 0xe8, 0x0e, 0xca ; call 0xffffe84e
    add sp, byte 4
    jmp short @..math_loc_1d39.l3
@..math_loc_1d39.l2:
    mov ax, 0x90ca
    push ax
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp + 0xc]
    dec ax
    push ax
    mov ax, word [bp + 0xa]
    dec ax
    push ax
    db 0xe8, 0x23, 0xa4 ; call 0xffffc283
    add sp, byte 0x0a
    mov word [bp - 0x0158], ax
@..math_loc_1d39.l3:
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
@..math_loc_1d39.l4:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1e]
    cmp word [bx + si], byte 0xff
    jne short @..math_loc_1d39.l5
    jmp near @..local.l89
@..math_loc_1d39.l5:
    cmp word [bx + si], byte 1
    je short @..math_loc_1d39.l6
    jmp near @..local.l88
@..math_loc_1d39.l6:
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x0156]
    add ax, cx
    push ax
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x0004]
    push ax
    db 0xe8, 0x99, 0x96 ; call 0xffffb53b
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    cwd
    idiv word [bp + 0x14]
    imul word [bp + 0x10]
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0002]
    cwd
    idiv word [bp + 0x14]
    mov ax, dx
    imul word [bp + 0x12]
    mov word [bp - 0x000c], ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000a]
    push ax
    db 0xe8, 0xf6, 0x9d ; call 0xffffbce3
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    mov ax, word [bp + 0x18]
    mov cx, word [bp - 0x0004]
    cmp cx, word [bp + 0x1a]
    jne short @..math_loc_1d39.l7
    mov ax, 0x1a
@..math_loc_1d39.l7:
    push ax
    db 0xe8, 0x1d, 0xc9 ; call 0xffffe823
    add sp, byte 4
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    inc ax
    inc ax
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x0156]
    add ax, cx
    push ax
    db 0xe8, 0x6e, 0xdb ; call 0xfffffa90
    pop cx
    mov cx, ax
    mov ax, word [bp + 0xe]
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp + 0xa]
    add ax, word [bp - 0x000a]
    inc ax
    push ax
    db 0xe8, 0xc9, 0xc8 ; call 0xffffe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x0156]
    add ax, cx
    push ax
    db 0xe8, 0xf7, 0xc8 ; call 0xffffe84e
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000a]
    push ax
    push word [bp - 0x0002]
    db 0xe8, 0x1c, 0x9b ; call 0xffffbaa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x0004]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x002a], ax
    inc word [bp - 0x0002]
@..local.l88:
    inc word [bp - 0x0004]
    jmp near @..math_loc_1d39.l4
@..local.l89:
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    push word [bp - 0x0002]
    db 0xe8, 0xef, 0x9a ; call 0xffffbaa6
    add sp, byte 0x0e
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    db 0xe8, 0x0d, 0xc9 ; call 0xffffe8da
    add sp, byte 8
    cmp word [data_0e32], byte 0
    je short @..local.l91
@..local.l90:
    mov ax, 0x59fe
    push ax
    db 0xe8, 0x2f, 0x99 ; call 0xffffb90d
    pop cx
    mov word [bp - 0x0004], ax
    cmp word [data_5b3e], byte 0
    je short @..local.l90
    jmp near @..local.l100
@..local.l91:
    mov word [bp - 0x0004], 0
@..local.l92:
    mov ax, word [bp - 0x0004]
    cwd
    idiv word [bp + 0x14]
    imul word [bp + 0x10]
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0004]
    cwd
    idiv word [bp + 0x14]
    mov ax, dx
    imul word [bp + 0x12]
    mov word [bp - 0x000c], ax
    mov ax, 0x16
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000a]
    push ax
    call loc_17a6
    add sp, byte 0x0a
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp + 0xc]
    dec ax
    push ax
    mov ax, word [bp + 0xa]
    dec ax
    push ax
    db 0xe8, 0x87, 0xc8 ; call 0xffffe8da
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000a]
    push ax
    call loc_17a6
    add sp, byte 0x0a
@..local.l93:
    mov ax, 1
    push ax
    db 0xe8, 0xc4, 0xc9 ; call 0xffffea50
    pop cx
    test ax, ax
    jne short @..local.l94
    jmp short @..local.l93
@..local.l94:
    mov ax, 1
    push ax
    db 0xe8, 0x98, 0xca ; call 0xffffeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x015a], ax
    jmp short @..local.l97
@..local.l95:
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x0002]
    dec ax
    cwd
    idiv word [bp - 0x0002]
    mov word [bp - 0x0004], dx
    jmp short @..local.l98
@..local.l96:
    mov ax, word [bp - 0x0004]
    inc ax
    cwd
    idiv word [bp - 0x0002]
    mov word [bp - 0x0004], dx
    jmp short @..local.l98
@..local.l97:
    cmp ax, strict word 8
    je short @..local.l95
    cmp ax, strict word 9
    je short @..local.l96
    cmp ax, strict word 0xa
    je short @..local.l96
    cmp ax, strict word 0xb
    je short @..local.l95
@..local.l98:
    cmp word [bp - 0x015a], byte 0x0d
    je short @..local.l99
    jmp near @..local.l92
@..local.l99:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp + 0xc]
    dec ax
    push ax
    mov ax, word [bp + 0xa]
    dec ax
    push ax
    db 0xe8, 0xe2, 0xc7 ; call 0xffffe8da
    add sp, byte 8
@..local.l100:
    dec word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cwd
    idiv word [bp + 0x14]
    imul word [bp + 0x10]
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0004]
    cwd
    idiv word [bp + 0x14]
    mov ax, dx
    imul word [bp + 0x12]
    mov word [bp - 0x000c], ax
    mov ax, 1
    push ax
    push ax
    push word [bp + 0xe]
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000a]
    push ax
    call 0xbe5f
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp + 0xe]
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x000a]
    push ax
    db 0xe8, 0x0d, 0x9d ; call 0xffffbe5f
    add sp, byte 0x0a
    mov ax, 1
    push ax
    push word [bp - 0x0158]
    db 0xe8, 0xf9, 0xa2 ; call 0xffffc459
    add sp, byte 4
    cmp word [bp + 0x1c], byte 0
    je short @..local.l102
    mov bx, word [bp + 0x4]
    cmp byte [bx], 0
    je short @..local.l101
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0xc]
    add ax, strict word 0xffeb
    push ax
    mov ax, word [bp + 0xa]
    add ax, strict word 0xfffa
    push ax
    db 0xe8, 0x4a, 0xc7 ; call 0xffffe8da
    add sp, byte 8
    jmp short @..local.l102
@..local.l101:
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    push ax
    mov ax, word [bp + 0xc]
    dec ax
    push ax
    mov ax, word [bp + 0xa]
    dec ax
    push ax
    db 0xe8, 0x2e, 0xc7 ; call 0xffffe8da
    add sp, byte 8
@..local.l102:
    mov ax, word [bp - 0x0004]
    mov word [data_9052], ax
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x002a]
    ret
math_loc_21bf:
    mov ax, 0
    db 0xe8, 0x46, 0xd2 ; call 0xfffff40b
    mov ax, word [data_0e36]
    mov word [data_9136], ax
    call math_loc_7400
    mov ax, 0
    ret
api_idx_004c:
    mov ax, 0xffb4
    db 0xe8, 0x33, 0xd2 ; call 0xfffff40b
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
    jne short @..api_idx_004c.l1
    mov al, byte [bp - 0x0030]
    sub ah, ah
    push ax
    mov al, byte [bp - 0x002f]
    sub ah, ah
    mov cx, ax
    pop ax
    imul cx
    add ax, word [bp - 0x0032]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x6], al
    jmp short @..api_idx_004c.l3
@..api_idx_004c.l1:
    cmp word [bp + 0xa], byte 0xff
    jne short @..api_idx_004c.l2
    push word [bp - 0x0030]
    push word [bp - 0x0032]
    call 0xd0be
    add sp, byte 4
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x6], al
    jmp short @..api_idx_004c.l3
@..api_idx_004c.l2:
    mov al, byte [bp + 0xa]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x6], al
@..api_idx_004c.l3:
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
    je short @..api_idx_004c.l4
    mov ax, 0x80
@..api_idx_004c.l4:
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x7], al
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 8
    je short @..api_idx_004c.l5
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 4
@..api_idx_004c.l5:
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 4
    je short @..api_idx_004c.l6
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 8
@..api_idx_004c.l6:
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 0x10
    je short @..api_idx_004c.l7
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 0x10
@..api_idx_004c.l7:
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 0x20
    je short @..api_idx_004c.l8
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 0x20
@..api_idx_004c.l8:
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 2
    je short @..api_idx_004c.l9
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 0x40
@..api_idx_004c.l9:
    push word [bp + 0x4]
    call 0xc58f
    pop cx
    ret
api_idx_0004_7:
    mov ax, 0xfffc
    db 0xe8, 0x1e, 0xd1 ; call 0xfffff40b
    mov word [bp - 0x0002], 0
@..api_idx_0004_7.l1:
    mov word [bp - 0x0004], 0
@..api_idx_0004_7.l2:
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0002]
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
    jne short @..local.l103
    mov ax, word [bp - 0x0002]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x0004]
    ret
@..local.l103:
    cmp word [bp + 0x6], byte 0
    je short @..local.l106
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 1
    jne short @..local.l104
    test ax, 0x40
    jne short @..local.l104
    push word [bx + 0x5c34]
    call math_loc_5497
    pop cx
    test ax, ax
    je short @..local.l105
@..local.l104:
    jmp short @..local.l106
@..local.l105:
    mov ax, word [bp - 0x0002]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x0004]
    ret
@..local.l106:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0xa
    jl short @..api_idx_0004_7.l2
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 2
    jl short @..api_idx_0004_7.l1
    mov ax, 0xffff
    ret
api_idx_0004_8:
    mov ax, 0xfffc
    db 0xe8, 0x93, 0xd0 ; call 0xfffff40b
    mov word [bp - 0x0004], 0
@..api_idx_0004_8.l1:
    mov word [bp - 0x0002], 0
@..api_idx_0004_8.l2:
    mov ax, 0x248
    imul word [bp + 0x4]
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
    mov ax, word [bx + 0x5c34]
    cmp ax, word [bp + 0x6]
    jne short @..local.l107
    mov ax, word [bp - 0x0004]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x0002]
    ret
@..local.l107:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jl short @..api_idx_0004_8.l2
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 2
    jl short @..api_idx_0004_8.l1
    mov ax, 0xffff
    ret
loc_23d0:
    mov ax, 0
    db 0xe8, 0x35, 0xd0 ; call 0xfffff40b
    mov word [data_93d4], 0
@..local.l108:
    mov ax, word [data_93d4]
    mov cx, 7
    shl ax, cl
    mov bx, ax
    mov byte [bx - 0x6e34], 0
    mov ax, word [data_93d4]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6c34], 0
    inc word [data_93d4]
    mov ax, word [data_93d4]
    cmp ax, strict word 4
    jl short @..local.l108
    mov word [data_93d4], 0
    push word [data_0e2c]
    push word [data_0e2a]
    call 0xb8af
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x12e
    push ax
    call 0xf0e4
    add sp, byte 6
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    mov ax, 3
    push ax
    call loc_0c96
    pop cx
    ret
loc_243b:
    mov ax, 0
    db 0xe8, 0xca, 0xcf ; call 0xfffff40b
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    mov ax, 3
    push ax
    call loc_0c96
    pop cx
    mov ax, 0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x12e
    push ax
    call 0xf0f1
    add sp, byte 6
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    db 0xe8, 0x41, 0x94 ; call 0xffffb8af
    add sp, byte 4
    ret
math_loc_2472:
    mov ax, 0
    db 0xe8, 0x93, 0xcf ; call 0xfffff40b
    cmp word [data_93ee], byte 0
    je short @..math_loc_2472.l1
    call loc_23d0
@..math_loc_2472.l1:
    push word [bp + 0x4]
    call loc_9587
    pop cx
    call api_idx_000e_2
    call api_idx_0004_2
    cmp word [bp + 0x6], byte 0
    je short @..math_loc_2472.l2
    mov ax, 1
    push ax
    mov ax, 0x48
    push ax
    call api_idx_0004_5
    add sp, byte 4
@..math_loc_2472.l2:
    cmp word [data_93ee], byte 0
    je short @..math_loc_2472.l3
    call loc_243b
@..math_loc_2472.l3:
    ret
api_idx_0038:
    mov ax, 0xffc8
    db 0xe8, 0x57, 0xcf ; call 0xfffff40b
    mov ax, 0
    push ax
    mov ax, 0x2c
    push ax
    lea ax, word [bp - 0x0038]
    push ax
    call 0xf306
    add sp, byte 6
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
@..api_idx_0038.l1:
    mov ax, 0x26
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx - 0x7b00], 0
    jle short @..api_idx_0038.l3
    mov al, byte [bx - 0x7b18]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    je short @..api_idx_0038.l2
    cmp word [bp + 0x4], byte 0xff
    jne short @..api_idx_0038.l3
    mov al, byte [bx - 0x7b14]
    sub ah, ah
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x7687]
    cbw
    cmp ax, word [data_830c]
    je short @..api_idx_0038.l2
    mov ax, 0x26
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x7b18]
    cmp al, byte [data_91c7]
    jne short @..api_idx_0038.l3
@..api_idx_0038.l2:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0038], 1
    inc word [bp - 0x0004]
@..api_idx_0038.l3:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x15
    jl short @..api_idx_0038.l1
    mov byte [data_93f0], 0
@..api_idx_0038.l4:
    cmp word [bp - 0x0004], byte 0
    jg short @..api_idx_0038.l5
    jmp near @..local.l112
@..api_idx_0038.l5:
    cmp byte [data_93f0], 0
    je short @..api_idx_0038.l6
    jmp near @..local.l112
@..api_idx_0038.l6:
    mov ax, 0x16
    push ax
    db 0xe8, 0x55, 0x92 ; call 0xffffb7a9
    pop cx
    mov word [bp - 0x0002], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0038], byte 0
    je short @..api_idx_0038.l6
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0038], 0
    dec word [bp - 0x0004]
    mov ax, 5
    push ax
    db 0xe8, 0x2a, 0x92 ; call 0xffffb7a9
    pop cx
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], 0
@..api_idx_0038.l7:
    mov ax, 5
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    mov bx, ax
    cmp byte [bx - 0x6b10], 0
    jne short @..api_idx_0038.l8
    mov ax, 0xf
    imul word [bp - 0x0002]
    push ax
    mov ax, 3
    imul word [bp - 0x0006]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    cmp byte [bx - 0x77d4], 0xff
    jne short @..api_idx_0038.l9
@..api_idx_0038.l8:
    cmp word [bp - 0x0008], byte 5
    jge short @..api_idx_0038.l9
    mov ax, word [bp - 0x0006]
    inc ax
    mov cx, 5
    cwd
    idiv cx
    mov word [bp - 0x0006], dx
    inc word [bp - 0x0008]
    jmp short @..api_idx_0038.l7
@..api_idx_0038.l9:
    mov ax, 0xf
    imul word [bp - 0x0002]
    push ax
    mov ax, 3
    imul word [bp - 0x0006]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    cmp byte [bx - 0x77d4], 0xff
    jne short @..api_idx_0038.l10
    jmp near @..local.l111
@..api_idx_0038.l10:
    mov ax, 5
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    mov bx, ax
    cmp byte [bx - 0x6b10], 0
    je short @..api_idx_0038.l11
    jmp near @..local.l111
@..api_idx_0038.l11:
    mov byte [bx - 0x6b10], 1
    mov ax, 0x93f0
    push ax
    mov ax, 0xf
    imul word [bp - 0x0002]
    add ax, cx
    mov bx, ax
    mov al, byte [bx - 0x77d3]
    cbw
    add ax, 0x73a
    push ax
    db 0xe8, 0x1c, 0x8f ; call 0xffffb53b
    add sp, byte 4
    mov ax, 0x955e
    push ax
    mov al, byte [data_91c6]
    cbw
    cmp ax, word [bp - 0x0002]
    jne short @..api_idx_0038.l12
    mov ax, 0x66a
    jmp short @..api_idx_0038.l13
@..api_idx_0038.l12:
    mov ax, word [bp - 0x0002]
    add ax, 0x6a4
@..api_idx_0038.l13:
    push ax
    db 0xe8, 0xfd, 0x8e ; call 0xffffb53b
    add sp, byte 4
    mov ax, 0xf
    imul word [bp - 0x0002]
    push ax
    mov ax, 3
    imul word [bp - 0x0006]
    mov cx, ax
@..api_idx_0038.l16:
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx - 0x77d3]
    cbw
    jmp short 0x26a4
    mov word [bp - 0x000a], 0x6a4
    mov word [bp - 0x000c], 0x6ea
@..api_idx_0038.l19:
    jmp short @..local.l109
    mov word [bp - 0x000a], 0x708
    mov word [bp - 0x000c], 0x6a4
    jmp short @..local.l109
    mov word [bp - 0x000a], 0x708
    mov word [bp - 0x000c], 0x6ea
    jmp short @..local.l109
    mov word [bp - 0x000a], 0x6d6
    mov word [bp - 0x000c], 0x6ea
    jmp short @..local.l109
    mov word [data_a376], ax
    jbe short @..api_idx_0038.l12
    jbe short 0x2642
    jbe short @..api_idx_0038.l16
    jbe short @..api_idx_0038.l13
    jbe short 0x263c
    jbe short 0x2656
    jbe short 0x2664
    jbe short @..api_idx_0038.l19
    jbe short @..api_idx_0038.l16
    jbe short 0x266a
    jbe short @..local.l110
    or al, 0
    jae short @..local.l109
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x76d3]
@..local.l109:
    mov ax, 0x9576
    push ax
    mov ax, 0xf
    imul word [bp - 0x0002]
    push ax
    mov ax, 3
    imul word [bp - 0x0006]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx - 0x77d4]
    cbw
    add ax, word [bp - 0x000a]
    push ax
    db 0xe8, 0x66, 0x8e ; call 0xffffb53b
    add sp, byte 4
    mov ax, 0x958e
    push ax
    mov ax, 0xf
    imul word [bp - 0x0002]
@..local.l110:
    push ax
    mov ax, 3
    imul word [bp - 0x0006]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx - 0x77d2]
    cbw
    add ax, word [bp - 0x000c]
    push ax
    db 0xe8, 0x3f, 0x8e ; call 0xffffb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    mov ax, 0x955e
    push ax
    mov ax, 0x93f0
    push ax
    db 0xe8, 0xf2, 0x8b ; call 0xffffb300
    add sp, byte 6
    mov ax, 0x23
    push ax
    mov ax, 0x9576
    push ax
    mov ax, 0x93f0
    push ax
    db 0xe8, 0xe0, 0x8b ; call 0xffffb300
    add sp, byte 6
    mov ax, 0x24
    push ax
    mov ax, 0x958e
    push ax
    mov ax, 0x93f0
    push ax
    db 0xe8, 0xce, 0x8b ; call 0xffffb300
    add sp, byte 6
@..local.l111:
    jmp near @..api_idx_0038.l4
@..local.l112:
    cmp byte [data_93f0], 0
    jne short @..local.l114
    cmp word [bp + 0x8], byte 0
    je short @..local.l113
    mov ax, 0xffff
    ret
@..local.l113:
    mov ax, 0x93f0
    push ax
    mov ax, 0x669
    push ax
    db 0xe8, 0xe7, 0x8d ; call 0xffffb53b
    add sp, byte 4
@..local.l114:
    push word [bp + 0x6]
    mov ax, 0x93f0
    push ax
    call math_loc_2472
    add sp, byte 4
    mov ax, 0
    ret
api_idx_0002_2:
    mov ax, 0xfffe
    db 0xe8, 0x9d, 0xcc ; call 0xfffff40b
    mov ax, 0x9576
    push ax
    mov ax, word [bp + 0x4]
    add ax, 0x708
    push ax
    db 0xe8, 0xbf, 0x8d ; call 0xffffb53b
    add sp, byte 4
    mov ax, 6
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx - 0x7b59], 0
    je short @..api_idx_0002_2.l1
    jmp near @..api_idx_0002_2.l9
@..api_idx_0002_2.l1:
    mov al, byte [bx - 0x7b5a]
    sub ah, ah
    mov cx, 0x26
    imul cx
    mov bx, ax
    mov al, byte [bx - 0x7b18]
    cmp al, byte [data_91c7]
    jne short @..api_idx_0002_2.l2
    mov ax, 0
    jmp short @..api_idx_0002_2.l3
@..api_idx_0002_2.l2:
    mov ax, 1
@..api_idx_0002_2.l3:
    mov word [bp - 0x0002], ax
    mov ax, 0x93f0
    push ax
    mov ax, 6
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b5a]
    sub ah, ah
    push ax
    mov al, byte [data_91c6]
    cbw
    mov cx, ax
    pop ax
    cmp ax, cx
    jne short @..api_idx_0002_2.l4
    mov ax, 0x758
    jmp short @..api_idx_0002_2.l5
@..api_idx_0002_2.l4:
    mov ax, 0x759
    cmp word [bp - 0x0002], byte 0
    je short @..api_idx_0002_2.l5
    mov ax, 0x75a
@..api_idx_0002_2.l5:
    push ax
    db 0xe8, 0x55, 0x8d ; call 0xffffb53b
    add sp, byte 4
    mov ax, 0x958e
    push ax
    mov ax, 6
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b5a]
    sub ah, ah
    push ax
    mov al, byte [data_91c6]
    cbw
    mov cx, ax
    pop ax
    cmp ax, cx
    jne short @..api_idx_0002_2.l6
    mov ax, 0x66a
    jmp short @..api_idx_0002_2.l8
@..api_idx_0002_2.l6:
    cmp word [bp - 0x0002], byte 0
    je short @..api_idx_0002_2.l7
    mov al, byte [bx - 0x7b5a]
    sub ah, ah
    mov cx, 0x26
    imul cx
    mov bx, ax
    mov al, byte [bx - 0x7b18]
    sub ah, ah
    add ax, 0x6d6
    jmp short @..api_idx_0002_2.l8
@..api_idx_0002_2.l7:
    mov ax, 6
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b5a]
    sub ah, ah
    add ax, 0x6a4
@..api_idx_0002_2.l8:
    push ax
    db 0xe8, 0xfc, 0x8c ; call 0xffffb53b
    add sp, byte 4
    jmp short @..api_idx_0002_2.l10
@..api_idx_0002_2.l9:
    mov ax, 0x93f0
    push ax
    mov ax, 0x75b
    push ax
    db 0xe8, 0xec, 0x8c ; call 0xffffb53b
    add sp, byte 4
    mov ax, 0x958e
    push ax
    mov ax, 6
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7b5a]
    sub ah, ah
    add ax, 0x6ea
    push ax
    db 0xe8, 0xd0, 0x8c ; call 0xffffb53b
    add sp, byte 4
@..api_idx_0002_2.l10:
    mov ax, 0x23
    push ax
    mov ax, 0x9576
    push ax
    mov ax, 0x93f0
    push ax
    db 0xe8, 0x83, 0x8a ; call 0xffffb300
    add sp, byte 6
    mov ax, 0x24
    push ax
    mov ax, 0x958e
    push ax
    mov ax, 0x93f0
    push ax
    db 0xe8, 0x71, 0x8a ; call 0xffffb300
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 0x93f0
    push ax
    call math_loc_2472
    add sp, byte 4
    ret
api_idx_0004_9:
    mov ax, 0xfffc
    db 0xe8, 0x64, 0xcb ; call 0xfffff40b
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
@..api_idx_0004_9.l1:
    push word [bp - 0x0002]
    mov ax, 0x8822
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0004_9.l2
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    mov al, byte [data_91c6]
    cbw
    mov cx, 0x26
    imul cx
    add ax, 0x8504
    push ax
    call 0xec41
    add sp, byte 6
@..api_idx_0004_9.l2:
    push word [bp - 0x0002]
    mov al, byte [data_91c6]
    cbw
    mov cx, 0x26
    imul cx
    add ax, 0x8504
    push ax
    db 0xe8, 0x85, 0xc3 ; call 0xffffec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0004_9.l3
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    mov ax, 0x8822
    push ax
    db 0xe8, 0x3d, 0xc3 ; call 0xffffec41
    add sp, byte 6
@..api_idx_0004_9.l3:
    push word [bp - 0x0002]
    mov al, byte [data_91c6]
    cbw
    mov cx, 0x26
    imul cx
    add ax, 0x8504
    push ax
    db 0xe8, 0x5a, 0xc3 ; call 0xffffec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0004_9.l4
    push word [bp - 0x0002]
    call api_idx_0002_2
    pop cx
    mov word [bp - 0x0004], 1
@..api_idx_0004_9.l4:
    mov ax, 3
    push ax
    db 0xe8, 0x75, 0x8e ; call 0xffffb7a9
    pop cx
    test ax, ax
    jne short @..api_idx_0004_9.l5
    mov ax, 1
    push ax
    push ax
    mov ax, 0xffff
    push ax
    call api_idx_0038
    add sp, byte 6
    test ax, ax
    jne short @..api_idx_0004_9.l5
    mov word [bp - 0x0004], 1
@..api_idx_0004_9.l5:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xb
    jge short @..api_idx_0004_9.l6
    jmp near @..api_idx_0004_9.l1
@..api_idx_0004_9.l6:
    mov ax, word [bp - 0x0004]
    ret
loc_2963:
    mov ax, 0
    db 0xe8, 0xa2, 0xca ; call 0xfffff40b
    mov ax, 1
    push ax
    call 0xef14
    pop cx
    cmp word [bp + 0x4], byte 0
    je short @..local.l115
    mov ax, 0x55
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0x605
    push ax
    call api_idx_0050
    add sp, byte 8
@..local.l115:
    mov al, byte [data_91c2]
    sub ah, ah
    mov word [data_0e36], ax
    mov word [data_8452], 1
    mov word [data_845a], 0
    mov word [data_95a6], 0
    mov word [data_830a], 0xa
    mov word [data_905e], 0x12
    ret
api_idx_0008_2:
    mov ax, 0xfff8
    db 0xe8, 0x54, 0xca ; call 0xfffff40b
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call api_idx_0004_7
    add sp, byte 4
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x4]
    mov word [bp - 0x0008], ax
    mov word [bp - 0x0006], 0
    jmp short @..api_idx_0008_2.l2
@..api_idx_0008_2.l1:
    mov ax, 0
    push ax
    push word [bp - 0x0006]
    call api_idx_0004_7
    add sp, byte 4
    mov word [bp - 0x0002], ax
    mov ax, word [bp - 0x0006]
    mov word [bp - 0x0008], ax
    inc word [bp - 0x0006]
@..api_idx_0008_2.l2:
    mov ax, word [bp - 0x0006]
    cmp ax, word [data_69c8]
    jge short @..api_idx_0008_2.l3
    cmp word [bp - 0x0002], byte 0xff
    je short @..api_idx_0008_2.l1
@..api_idx_0008_2.l3:
    cmp word [bp - 0x0002], byte 0xff
    jne short @..api_idx_0008_2.l6
    mov word [bp - 0x0006], 0
    jmp short @..api_idx_0008_2.l5
@..api_idx_0008_2.l4:
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    call api_idx_0004_7
    add sp, byte 4
    mov word [bp - 0x0002], ax
    mov ax, word [bp - 0x0006]
    mov word [bp - 0x0008], ax
    inc word [bp - 0x0006]
@..api_idx_0008_2.l5:
    mov ax, word [bp - 0x0006]
    cmp ax, word [data_69c8]
    jge short @..api_idx_0008_2.l6
    cmp word [bp - 0x0002], byte 0xff
    je short @..api_idx_0008_2.l4
@..api_idx_0008_2.l6:
    cmp word [bp - 0x0002], byte 0xff
    jne short @..api_idx_0008_2.l9
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0008], 0
@..api_idx_0008_2.l7:
    mov ax, 0x78
    imul word [bp - 0x0006]
    push ax
    mov ax, 0xc
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    push word [bx + 0x5c34]
    call math_loc_5497
    pop cx
    test ax, ax
    je short @..api_idx_0008_2.l9
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jne short @..api_idx_0008_2.l8
    mov word [bp - 0x0002], 0
    inc word [bp - 0x0006]
@..api_idx_0008_2.l8:
    jmp short @..api_idx_0008_2.l7
@..api_idx_0008_2.l9:
    mov ax, word [bp - 0x0002]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0006], dx
    mov ax, 1
    push ax
    mov ax, 0xfffe
    push ax
    mov ax, 0x248
    imul word [bp - 0x0008]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0004]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0006]
    mov cx, ax
    pop ax
    add ax, cx
    add ax, 0x5c34
    push ax
    push word [bp + 0x6]
    push word [bp - 0x0008]
    call api_idx_004c
    add sp, byte 0x0a
    push word [bp + 0x6]
    call math_loc_5497
    pop cx
    test ax, ax
    je short @..api_idx_0008_2.l10
    mov ax, word [bp + 0x6]
    add ax, 0xfe70
    push ax
    mov al, byte [data_91c6]
    cbw
    push ax
    mov ax, 0x15
    push ax
    call api_idx_0002_5
    add sp, byte 6
@..api_idx_0008_2.l10:
    mov ax, 0x95a8
    push ax
    mov ax, 0x60b
    push ax
    db 0xe8, 0x4f, 0x8a ; call 0xffffb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    mov ax, 0x248
    imul word [bp - 0x0008]
    add ax, 0x5bf4
    push ax
    mov ax, 0x95a8
    push ax
    db 0xe8, 0xfc, 0x87 ; call 0xffffb300
    add sp, byte 6
    cmp word [bp + 0x8], byte 1
    jne short @..api_idx_0008_2.l11
    mov ax, 1
    push ax
    push ax
    push ax
    mov ax, 0x95a8
    push ax
    call math_loc_130b
    add sp, byte 8
    jmp short @..api_idx_0008_2.l12
@..api_idx_0008_2.l11:
    cmp word [bp + 0x8], byte 2
    jne short @..api_idx_0008_2.l12
    mov ax, word [data_93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    mov ax, 0x5e5
    push ax
    db 0xe8, 0x03, 0x8a ; call 0xffffb53b
    add sp, byte 4
    mov ax, 0x95a8
    push ax
    db 0xe8, 0x4e, 0xcf ; call 0xfffffa90
    pop cx
    mov cx, ax
    mov ax, 0x1e
    sub ax, cx
    mov cx, 2
    cwd
    idiv cx
    mov dx, word [data_93d4]
    mov cx, 7
    shl dx, cl
    mov cx, dx
    add ax, cx
    mov bx, ax
    mov byte [bx - 0x6e34], 0
    mov ax, 0x95a8
    push ax
    add cx, strict word 0x91cc
    mov ax, cx
    push ax
    call 0xf32d
    add sp, byte 4
    mov ax, word [data_93d4]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6c34], 0
    call api_idx_0004_2
    mov ax, 0
    push ax
    db 0xe8, 0x54, 0x8c ; call 0xffffb7e0
    pop cx
@..api_idx_0008_2.l12:
    ret
api_idx_0040:
    mov ax, 0xffc0
    db 0xe8, 0x77, 0xc8 ; call 0xfffff40b
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6e88]
    mov word [bp - 0x0004], ax
    mov ax, 0
    push ax
    push word [bp - 0x0004]
    lea ax, word [bp - 0x0024]
    push ax
    mov ax, 6
    push ax
    db 0xe8, 0x88, 0x8a ; call 0xffffb63c
    add sp, byte 8
    mov word [bp - 0x0002], 0
@..api_idx_0040.l1:
    cmp word [bp - 0x0002], byte 8
    jl short @..api_idx_0040.l2
    jmp near @..local.l118
@..api_idx_0040.l2:
    mov word [bp - 0x0040], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0024]
    mov word [bp - 0x0026], ax
    mov al, byte [bx - 0x0022]
    sub ah, ah
    mov word [bp - 0x0028], ax
    mov al, byte [bx - 0x0021]
    sub ah, ah
    jmp near @..local.l116
    mov ax, 0
    ret

    db 0x83, 0x3e, 0xee, 0x93, 0x00, 0x74, 0x03, 0xe8, 0xd7, 0xf7, 0xff, 0x76, 0xd8, 0xff, 0x76, 0xda
    db 0xe8, 0x46, 0x6b, 0x83, 0xc4, 0x04, 0x83, 0x3e, 0xee, 0x93, 0x00, 0x74, 0x03, 0xe8, 0x2c, 0xf8
    db 0xe9, 0x57, 0x0b, 0x83, 0x7e, 0xda, 0x00, 0x7e, 0x06, 0x8a, 0x46, 0xda, 0xa2, 0xc2, 0x91, 0xb8
    db 0x01, 0x00, 0x50, 0xe8, 0x3e, 0xfd, 0x59, 0xb8, 0x01, 0x00, 0xc3, 0x83, 0x7e, 0xd8, 0x00, 0x75
    db 0x16, 0xb8, 0x55, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x06, 0x06
    db 0x50, 0xe8, 0x71, 0xe7, 0x83, 0xc4, 0x08, 0xc7, 0x06, 0xa6, 0x95, 0x01, 0x00, 0xc7, 0x06, 0x0a
    db 0x83, 0x05, 0x00, 0xc7, 0x06, 0x5e, 0x90, 0x12, 0x00, 0xb8, 0x01, 0x00, 0xc3, 0xc7, 0x46, 0xc0
    db 0x01, 0x00, 0x8b, 0x46, 0xda, 0xb9, 0x00, 0x01, 0x99, 0xf7, 0xf9, 0x05, 0x0f, 0x00, 0x89, 0x46
    db 0xd4, 0x89, 0x56, 0xd0, 0x8b, 0xc2, 0xb9, 0x10, 0x00, 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xd2, 0x89
    db 0x56, 0xd0, 0x83, 0x7e, 0xd8, 0x00, 0x7f, 0x03, 0xe9, 0x81, 0x00, 0x8b, 0x5e, 0xd4, 0x8a, 0x87
    db 0x48, 0x5b, 0x2a, 0xe4, 0x3d, 0xff, 0x00, 0x74, 0x0f, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0x75, 0xc2
    db 0x59, 0xff, 0x76, 0xd4, 0xe8, 0x84, 0x94, 0x59, 0xff, 0x76, 0xd4, 0xff, 0x76, 0xd8, 0xe8, 0x6c
    db 0xa9, 0x83, 0xc4, 0x04, 0x8b, 0x46, 0xd4, 0x50, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xd2, 0x8b, 0xc8
    db 0x8b, 0x56, 0xd0, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x58, 0x89, 0x87, 0x3a, 0x84, 0xb8, 0xff
    db 0xff, 0x50, 0xff, 0x76, 0xd0, 0xff, 0x76, 0xd2, 0xff, 0x76, 0xd4, 0xe8, 0x31, 0xd3, 0x83, 0xc4
    db 0x08, 0x83, 0x7e, 0xc0, 0x00, 0x74, 0x20, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xd2, 0x8b, 0x4e, 0xd0
    db 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0xc7, 0x87, 0xdc, 0x93, 0x01, 0x00, 0xb8, 0x00, 0x00, 0x50
    db 0x50, 0xe8, 0xea, 0xe6, 0x83, 0xc4, 0x04, 0xe8, 0x96, 0xe3, 0xeb, 0x41, 0x83, 0x7e, 0xc0, 0x00
    db 0x74, 0x23, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xd2, 0x8b, 0x4e, 0xd0, 0xd1, 0xe1, 0x03, 0xc1, 0x8b
    db 0xd8, 0xc7, 0x87, 0xdc, 0x93, 0x01, 0x00, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xe8
    db 0xbc, 0xe6, 0x83, 0xc4, 0x04, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xd2, 0x8b, 0x4e, 0xd0, 0xd1, 0xe1
    db 0x03, 0xc1, 0x8b, 0xd8, 0xc7, 0x87, 0x3a, 0x84, 0x00, 0x00, 0xe8, 0x53, 0xe3, 0xe9, 0x1a, 0x0a
    db 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0xd8, 0xe8, 0x45, 0xe4, 0x83, 0xc4, 0x04, 0xe9, 0x0a, 0x0a
    db 0x83, 0x3e, 0xee, 0x93, 0x00, 0x74, 0x03, 0xe8, 0x67, 0xf6, 0xff, 0x76, 0xd8, 0xff, 0x76, 0xda
    db 0xff, 0x76, 0x04, 0xe8, 0x1e, 0x7d, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xce, 0x83, 0x3e, 0xee, 0x93
    db 0x00, 0x74, 0x03, 0xe8, 0xb6, 0xf6, 0x83, 0x7e, 0xce, 0x01, 0x7e, 0x17, 0xff, 0x76, 0xce, 0xff
    db 0x76, 0x04, 0xe8, 0xfa, 0xfd, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75, 0x04, 0xb8, 0x01, 0x00
    db 0xc3, 0xeb, 0x2a, 0xb8, 0xa8, 0x95, 0x50, 0x8b, 0x46, 0xda, 0x40, 0x50, 0xe8, 0x8d, 0x87, 0x83
    db 0xc4, 0x04, 0xb8, 0xa8, 0x95, 0x50, 0xe8, 0xd8, 0xcc, 0x59, 0x3d, 0x00, 0x00, 0x7e, 0x0e, 0xb8
    db 0x01, 0x00, 0x50, 0xb8, 0xa8, 0x95, 0x50, 0xe8, 0xa9, 0xf6, 0x83, 0xc4, 0x04, 0xe9, 0x9a, 0x09
    db 0xe8, 0x1d, 0x8d, 0x85, 0xc0, 0x75, 0x05, 0xe8, 0x77, 0xe1, 0xeb, 0xf4, 0xe9, 0x8b, 0x09, 0xa1
    db 0x0c, 0x83, 0x3b, 0x06, 0x3c, 0x8f, 0x75, 0x45, 0xa1, 0x36, 0x8f, 0xa3, 0x42, 0x8f, 0xa1, 0x34
    db 0x8f, 0xa3, 0x40, 0x8f, 0xa1, 0x32, 0x8f, 0xa3, 0x3e, 0x8f, 0xa1, 0x3a, 0x8f, 0xa3, 0x46, 0x8f
    db 0xa1, 0x38, 0x8f, 0xa3, 0x44, 0x8f, 0xa1, 0x30, 0x8f, 0xa3, 0xee, 0x82, 0x8b, 0x1e, 0x12, 0x0e
    db 0x8b, 0x36, 0x3e, 0x8f, 0x8a, 0x80, 0x40, 0x0b, 0x2a, 0xe4, 0xa3, 0x12, 0x8d, 0xc7, 0x06, 0x0a
    db 0x83, 0x05, 0x00, 0xc7, 0x06, 0x5e, 0x90, 0x12, 0x00, 0xb8, 0x01, 0x00, 0xc3, 0xe9, 0x3a, 0x09
    db 0xff, 0x76, 0xd8, 0xff, 0x76, 0xda, 0xff, 0x76, 0x04, 0xe8, 0x76, 0xfb, 0x83, 0xc4, 0x06, 0xe9
    db 0x28, 0x09, 0xc7, 0x46, 0xc6, 0xff, 0xff, 0x8b, 0x46, 0x04, 0x89, 0x46, 0xd0, 0xc7, 0x46, 0x04
    db 0x00, 0x00, 0xeb, 0x53, 0xff, 0x76, 0xda, 0xff, 0x76, 0x04, 0xe8, 0x16, 0xf5, 0x83, 0xc4, 0x04
    db 0x89, 0x46, 0xc6, 0x3d, 0xff, 0xff, 0x74, 0x3c, 0xb9, 0x00, 0x01, 0x99, 0xf7, 0xf9, 0x89, 0x46
    db 0xd6, 0x89, 0x56, 0xd4, 0xff, 0x76, 0xda, 0xe8, 0x1e, 0x26, 0x59, 0x85, 0xc0, 0x74, 0x16, 0x8b
    db 0x46, 0xda, 0x05, 0x70, 0xfe, 0x50, 0xb8, 0x15, 0x00, 0x50, 0xa0, 0xc6, 0x91, 0x98, 0x50, 0xe8
    db 0x23, 0x26, 0x83, 0xc4, 0x06, 0xff, 0x76, 0xd4, 0xff, 0x76, 0xd6, 0xff, 0x76, 0x04, 0xe8, 0x48
    db 0x9b, 0x83, 0xc4, 0x06, 0xff, 0x46, 0x04, 0x8b, 0x46, 0x04, 0x3b, 0x06, 0xc8, 0x69, 0x7d, 0x06
    db 0x83, 0x7e, 0xc6, 0xff, 0x74, 0x9e, 0x8b, 0x46, 0xd0, 0x89, 0x46, 0x04, 0xe9, 0xab, 0x08, 0x8b
    db 0x46, 0xda, 0x8b, 0x4e, 0xd8, 0x8b, 0xd9, 0xf7, 0xeb, 0x89, 0x56, 0xcc, 0x89, 0x46, 0xca, 0x8b
    db 0x46, 0xca, 0x8b, 0x56, 0xcc, 0x50, 0x52, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x5a
    db 0x58, 0x01, 0x87, 0x08, 0x5c, 0x11, 0x97, 0x0a, 0x5c, 0x8b, 0x46, 0xca, 0x8b, 0x56, 0xcc, 0x29
    db 0x06, 0xb6, 0x91, 0x19, 0x16, 0xb8, 0x91, 0x83, 0x3e, 0xb8, 0x91, 0x00, 0x7f, 0x09, 0x75, 0x09
    db 0x83, 0x3e, 0xb6, 0x91, 0x00, 0x72, 0x02, 0xeb, 0x0c, 0xc7, 0x06, 0xb8, 0x91, 0x00, 0x00, 0xc7
    db 0x06, 0xb6, 0x91, 0x00, 0x00, 0xe9, 0x52, 0x08, 0x8b, 0x46, 0xda, 0xbb, 0x0a, 0x00, 0xf7, 0xeb
    db 0x89, 0x56, 0xcc, 0x89, 0x46, 0xca, 0x83, 0x7e, 0xcc, 0x00, 0x75, 0x04, 0x83, 0x7e, 0xca, 0x00
    db 0x75, 0x6e, 0xc7, 0x46, 0xd4, 0x00, 0x00, 0xeb, 0x5e, 0x83, 0x7e, 0xd8, 0x00, 0x7e, 0x41, 0xb8
    db 0x48, 0x02, 0xf7, 0x6e, 0xd4, 0x8b, 0xd8, 0x8b, 0x87, 0x08, 0x5c, 0x8b, 0x97, 0x0a, 0x5c, 0x50
    db 0x52, 0x8b, 0x46, 0xd8, 0x99, 0x8b, 0xc8, 0x8b, 0xda, 0x5a, 0x58, 0xe8, 0x42, 0xca, 0x89, 0x56
    db 0xcc, 0x89, 0x46, 0xca, 0x8b, 0x46, 0xca, 0x8b, 0x56, 0xcc, 0x50, 0x52, 0xb8, 0x48, 0x02, 0xf7
    db 0x6e, 0xd4, 0x8b, 0xd8, 0x5a, 0x58, 0x29, 0x87, 0x08, 0x5c, 0x19, 0x97, 0x0a, 0x5c, 0xeb, 0x14
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xd4, 0x8b, 0xd8, 0xc7, 0x87, 0x0a, 0x5c, 0x00, 0x00, 0xc7, 0x87
    db 0x08, 0x5c, 0x00, 0x00, 0xff, 0x46, 0xd4, 0x8b, 0x46, 0xd4, 0x3b, 0x06, 0xc8, 0x69, 0x7c, 0x99
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x8b, 0x87, 0x08, 0x5c, 0x8b, 0x97, 0x0a, 0x5c
    db 0x3b, 0x56, 0xcc, 0x7f, 0x07, 0x75, 0x07, 0x3b, 0x46, 0xca, 0x72, 0x02, 0xeb, 0x44, 0xff, 0x76
    db 0x04, 0xe8, 0x2d, 0x55, 0x59, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x8b, 0x87, 0x08
    db 0x5c, 0x8b, 0x97, 0x0a, 0x5c, 0x3b, 0x56, 0xcc, 0x7f, 0x07, 0x75, 0x07, 0x3b, 0x46, 0xca, 0x72
    db 0x02, 0xeb, 0x1f, 0x83, 0x7e, 0xd8, 0x00, 0x7e, 0x19, 0xff, 0x76, 0xd8, 0xff, 0x76, 0x04, 0xe8
    db 0x9d, 0xfb, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75, 0x04, 0xb8, 0x01, 0x00, 0xc3, 0xb8, 0x00
    db 0x00, 0xc3, 0x8b, 0x46, 0xca, 0x8b, 0x56, 0xcc, 0x50, 0x52, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04
    db 0x8b, 0xd8, 0x5a, 0x58, 0x29, 0x87, 0x08, 0x5c, 0x19, 0x97, 0x0a, 0x5c, 0x8b, 0x46, 0xca, 0x8b
    db 0x56, 0xcc, 0x01, 0x06, 0xb6, 0x91, 0x11, 0x16, 0xb8, 0x91, 0xe9, 0x3d, 0x07, 0xc7, 0x46, 0xd4
    db 0x00, 0x00, 0xb8, 0x03, 0x00, 0x50, 0xe8, 0x71, 0x87, 0x59, 0x85, 0xc0, 0x75, 0x47, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0x04, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x6e, 0xd4, 0x8b, 0xc8, 0x58, 0x03, 0xc1
    db 0x8b, 0xd8, 0x83, 0xbf, 0xac, 0x5c, 0x00, 0x7e, 0x2c, 0x8a, 0x87, 0xb3, 0x5c, 0x2a, 0xe4, 0xa9
    db 0x40, 0x00, 0x75, 0x21, 0xff, 0x76, 0xd4, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x78
    db 0x99, 0x83, 0xc4, 0x06, 0xb8, 0x03, 0x00, 0x50, 0xe8, 0x2f, 0x87, 0x59, 0x85, 0xc0, 0x75, 0x05
    db 0xc7, 0x46, 0xd4, 0x0a, 0x00, 0xff, 0x46, 0xd4, 0x8b, 0x46, 0xd4, 0x3d, 0x0a, 0x00, 0x7c, 0xa2
    db 0xe9, 0xd7, 0x06, 0x8b, 0x46, 0xda, 0x3d, 0x00, 0x00, 0x7e, 0x1b, 0x3d, 0x7f, 0x00, 0x7d, 0x16
    db 0xff, 0x76, 0xd8, 0x50, 0xa1, 0x0c, 0x83, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x05, 0x14, 0x8d, 0x50
    db 0xe8, 0x8f, 0xbb, 0x83, 0xc4, 0x06, 0xe9, 0xb1, 0x06, 0x8b, 0x46, 0xda, 0x3d, 0x00, 0x00, 0x7e
    db 0x33, 0x3d, 0x7f, 0x00, 0x7d, 0x2e, 0xff, 0x76, 0xd8, 0x50, 0xa1, 0x0c, 0x83, 0xb9, 0x04, 0x00
    db 0xd3, 0xe0, 0x05, 0x14, 0x8d, 0x50, 0xe8, 0x69, 0xbb, 0x83, 0xc4, 0x06, 0xff, 0x76, 0xd8, 0xff
    db 0x76, 0xda, 0xa1, 0x0c, 0x83, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x05, 0x42, 0x56, 0x50, 0xe8, 0x51
    db 0xbb, 0x83, 0xc4, 0x06, 0xe9, 0x73, 0x06, 0x8b, 0x46, 0xda, 0x3d, 0x00, 0x00, 0x7e, 0x13, 0x3d
    db 0x0f, 0x00, 0x7d, 0x0e, 0xff, 0x76, 0xd8, 0x50, 0xb8, 0xf8, 0x95, 0x50, 0xe8, 0x33, 0xbb, 0x83
    db 0xc4, 0x06, 0xe9, 0x55, 0x06, 0x8b, 0x46, 0xda, 0x3d, 0x00, 0x00, 0x7e, 0x28, 0x3d, 0x0f, 0x00
    db 0x7d, 0x23, 0xff, 0x76, 0xd8, 0x50, 0xb8, 0xf8, 0x95, 0x50, 0xe8, 0x15, 0xbb, 0x83, 0xc4, 0x06
    db 0xff, 0x76, 0xd8, 0xff, 0x76, 0xda, 0xa1, 0x36, 0x91, 0xd1, 0xe0, 0x05, 0x4e, 0x58, 0x50, 0xe8
    db 0x00, 0xbb, 0x83, 0xc4, 0x06, 0xe9, 0x22, 0x06, 0xff, 0x76, 0xda, 0xa1, 0x0c, 0x83, 0xb9, 0x04
    db 0x00, 0xd3, 0xe0, 0x05, 0x14, 0x8d, 0x50, 0xe8, 0x1b, 0xbb, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00
    db 0x75, 0x04, 0xb8, 0x00, 0x00, 0xc3, 0xe9, 0x01, 0x06, 0xff, 0x76, 0xda, 0xa1, 0x0c, 0x83, 0xb9
    db 0x04, 0x00, 0xd3, 0xe0, 0x05, 0x14, 0x8d, 0x50, 0xe8, 0xfa, 0xba, 0x83, 0xc4, 0x04, 0x85, 0xc0
    db 0x75, 0x04, 0xb8, 0x00, 0x00, 0xc3, 0xe9, 0xe1, 0x05, 0xff, 0x76, 0xda, 0xb8, 0xf8, 0x95, 0x50
    db 0xe8, 0xe2, 0xba, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75, 0x04, 0xb8, 0x00, 0x00, 0xc3, 0xe9
    db 0xc8, 0x05, 0xff, 0x76, 0xda, 0xb8, 0xf8, 0x95, 0x50, 0xe8, 0xc9, 0xba, 0x83, 0xc4, 0x04, 0x85
    db 0xc0, 0x75, 0x04, 0xb8, 0x00, 0x00, 0xc3, 0xe9, 0xb0, 0x05, 0x83, 0x7e, 0xd8, 0x00, 0x75, 0x11
    db 0xff, 0x76, 0xda, 0xff, 0x76, 0x04, 0xe8, 0xaa, 0xf1, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xc6, 0xeb
    db 0x2d, 0xc7, 0x46, 0xc6, 0xff, 0xff, 0xc7, 0x46, 0xd4, 0x00, 0x00, 0xeb, 0x12, 0xff, 0x76, 0xda
    db 0xff, 0x76, 0xd4, 0xe8, 0x8d, 0xf1, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xc6, 0xff, 0x46, 0xd4, 0x8b
    db 0x46, 0xd4, 0x3b, 0x06, 0xc8, 0x69, 0x7d, 0x06, 0x83, 0x7e, 0xc6, 0xff, 0x74, 0xdf, 0x8b, 0x46
    db 0xfe, 0xd1, 0xe0, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0x80, 0x7f, 0xdf, 0x16, 0x75, 0x06, 0x83
    db 0x7e, 0xc6, 0xff, 0x74, 0x0c, 0x80, 0x7f, 0xdf, 0x17, 0x75, 0x0a, 0x83, 0x7e, 0xc6, 0xff, 0x74
    db 0x04, 0xb8, 0x00, 0x00, 0xc3, 0xe9, 0x42, 0x05, 0xb8, 0x64, 0x00, 0x50, 0xe8, 0x7b, 0x85, 0x59
    db 0x3b, 0x46, 0xda, 0x7e, 0x04, 0xb8, 0x00, 0x00, 0xc3, 0xe9, 0x2e, 0x05, 0xff, 0x76, 0xda, 0xa1
    db 0x0c, 0x83, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x05, 0x14, 0x8d, 0x50, 0xe8, 0x27, 0xba, 0x83, 0xc4
    db 0x04, 0x85, 0xc0, 0x75, 0x15, 0xff, 0x76, 0xd8, 0xff, 0x76, 0x04, 0xe8, 0x31, 0xf9, 0x83, 0xc4
    db 0x04, 0x3d, 0x01, 0x00, 0x75, 0x04, 0xb8, 0x01, 0x00, 0xc3, 0xe9, 0xfd, 0x04, 0xff, 0x76, 0xda
    db 0xa1, 0x0c, 0x83, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x05, 0x14, 0x8d, 0x50, 0xe8, 0xf6, 0xb9, 0x83
    db 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75, 0x15, 0xff, 0x76, 0xd8, 0xff, 0x76, 0x04, 0xe8, 0xff, 0xf8
    db 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75, 0x04, 0xb8, 0x01, 0x00, 0xc3, 0xe9, 0xcb, 0x04, 0xff
    db 0x76, 0xda, 0xb8, 0xf8, 0x95, 0x50, 0xe8, 0xcc, 0xb9, 0x83, 0xc4, 0x04, 0x85, 0xc0, 0x75, 0x15
    db 0xff, 0x76, 0xd8, 0xff, 0x76, 0x04, 0xe8, 0xd6, 0xf8, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75
    db 0x04, 0xb8, 0x01, 0x00, 0xc3, 0xe9, 0xa2, 0x04, 0xff, 0x76, 0xda, 0xb8, 0xf8, 0x95, 0x50, 0xe8
    db 0xa3, 0xb9, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75, 0x15, 0xff, 0x76, 0xd8, 0xff, 0x76, 0x04
    db 0xe8, 0xac, 0xf8, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75, 0x04, 0xb8, 0x01, 0x00, 0xc3, 0xe9
    db 0x78, 0x04, 0xb8, 0x64, 0x00, 0x50, 0xe8, 0xb1, 0x84, 0x59, 0x3b, 0x46, 0xda, 0x7d, 0x15, 0xff
    db 0x76, 0xd8, 0xff, 0x76, 0x04, 0xe8, 0x87, 0xf8, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75, 0x04
    db 0xb8, 0x01, 0x00, 0xc3, 0xe9, 0x53, 0x04, 0xb8, 0x26, 0x00, 0xf7, 0x6e, 0xda, 0x8b, 0xd8, 0x8a
    db 0x87, 0x01, 0x85, 0x88, 0x87, 0x00, 0x85, 0xc6, 0x87, 0xea, 0x84, 0x00, 0x8a, 0x46, 0xd8, 0x88
    db 0x87, 0xec, 0x84, 0x88, 0x87, 0xeb, 0x84, 0xe9, 0x30, 0x04, 0x8b, 0x46, 0xda, 0x89, 0x46, 0xc6
    db 0x3d, 0x00, 0x00, 0x7d, 0x1a, 0x50, 0x3d, 0x00, 0x00, 0x58, 0x7d, 0x02, 0xf7, 0xd8, 0x50, 0xe8
    db 0x58, 0x84, 0x59, 0x8b, 0xc8, 0xb8, 0x00, 0x00, 0x2b, 0xc1, 0x89, 0x46, 0xc6, 0xeb, 0x0a, 0xff
    db 0x76, 0xc6, 0xe8, 0x45, 0x84, 0x59, 0x89, 0x46, 0xc6, 0x8b, 0x46, 0xd8, 0x05, 0x9c, 0xff, 0x89
    db 0x46, 0xd4, 0xb8, 0x64, 0x00, 0x50, 0xff, 0x76, 0xd4, 0xa0, 0xc7, 0x91, 0x2a, 0xe4, 0x8b, 0xd8
    db 0x8a, 0x87, 0xde, 0x89, 0x98, 0x03, 0x46, 0xc6, 0x50, 0xe8, 0x37, 0x84, 0x83, 0xc4, 0x06, 0x50
    db 0xa0, 0xc7, 0x91, 0x2a, 0xe4, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0xde, 0x89, 0xe9, 0xcb, 0x03, 0xc7
    db 0x46, 0xd4, 0x00, 0x00, 0xe9, 0x8c, 0x00, 0x8b, 0x46, 0xda, 0x48, 0x89, 0x46, 0xc6, 0x3d, 0x07
    db 0x00, 0x7e, 0x0b, 0xb8, 0x08, 0x00, 0x50, 0xe8, 0xf0, 0x83, 0x59, 0x89, 0x46, 0xc6, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0xd4, 0x03, 0x46, 0xc6, 0x8b, 0xd8, 0x80, 0xbf, 0x64, 0x5d, 0x13, 0x73, 0x60
    db 0xfe, 0x87, 0x64, 0x5d, 0xb8, 0xa8, 0x95, 0x50, 0xb8, 0x97, 0x13, 0x50, 0xe8, 0x5d, 0x81, 0x83
    db 0xc4, 0x04, 0xb8, 0xfa, 0x95, 0x50, 0x8b, 0x46, 0xc6, 0x05, 0xba, 0x13, 0x50, 0xe8, 0x4c, 0x81
    db 0x83, 0xc4, 0x04, 0xb8, 0x5e, 0x00, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xd4, 0x05, 0xf4, 0x5b
    db 0x50, 0xb8, 0xa8, 0x95, 0x50, 0xe8, 0xf9, 0x7e, 0x83, 0xc4, 0x06, 0xb8, 0x24, 0x00, 0x50, 0xb8
    db 0xfa, 0x95, 0x50, 0xb8, 0xa8, 0x95, 0x50, 0xe8, 0xe7, 0x7e, 0x83, 0xc4, 0x06, 0xb8, 0x55, 0x00
    db 0x50, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0xa8, 0x95, 0x50, 0xe8, 0xdf, 0xde, 0x83, 0xc4, 0x08
    db 0xff, 0x46, 0xd4, 0x8b, 0x46, 0xd4, 0x3b, 0x06, 0xc8, 0x69, 0x7d, 0x03, 0xe9, 0x68, 0xff, 0xe9
    db 0x28, 0x03, 0x8b, 0x46, 0xda, 0xb9, 0x10, 0x00, 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xc2, 0x89, 0x56
    db 0xc4, 0x8b, 0x46, 0xd8, 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xd2, 0x89, 0x56, 0xd0, 0xb8, 0x06, 0x00
    db 0xf7, 0x6e, 0xc2, 0x8b, 0x4e, 0xc4, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0x3a, 0x84
    db 0x50, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xd2, 0x8b, 0xc8, 0x8b, 0x56, 0xd0, 0xd1, 0xe2, 0x03, 0xc2
    db 0x8b, 0xd8, 0x58, 0x89, 0x87, 0x3a, 0x84, 0xb8, 0xff, 0xff, 0x50, 0xff, 0x76, 0xd0, 0xff, 0x76
    db 0xd2, 0xff, 0xb7, 0x3a, 0x84, 0xe8, 0x77, 0xcb, 0x83, 0xc4, 0x08, 0xb8, 0x06, 0x00, 0xf7, 0x6e
    db 0xc2, 0x8b, 0x4e, 0xc4, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0xc7, 0x87, 0x3a, 0x84, 0x00, 0x00
    db 0xe9, 0xb7, 0x02, 0xff, 0x76, 0xd8, 0xff, 0x76, 0x04, 0xe8, 0xd3, 0xf6, 0x83, 0xc4, 0x04, 0x3d
    db 0x01, 0x00, 0x75, 0x04, 0xb8, 0x01, 0x00, 0xc3, 0xe9, 0x9f, 0x02, 0xff, 0x76, 0xda, 0xe8, 0x5e
    db 0x3f, 0x59, 0xe9, 0x95, 0x02, 0x80, 0x3e, 0xc6, 0x91, 0xff, 0x74, 0x3d, 0xc7, 0x46, 0xc6, 0x00
    db 0x00, 0xff, 0x76, 0xc6, 0xa0, 0xc6, 0x91, 0x98, 0xb9, 0x26, 0x00, 0xf7, 0xe9, 0x05, 0x02, 0x85
    db 0x50, 0xe8, 0x81, 0xb7, 0x83, 0xc4, 0x04, 0x85, 0xc0, 0x74, 0x13, 0xff, 0x76, 0xd8, 0x8b, 0x46
    db 0xc6, 0x05, 0x90, 0x01, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xa7, 0xf4, 0x83, 0xc4, 0x06, 0xff, 0x46
    db 0xc6, 0x8b, 0x46, 0xc6, 0x3d, 0x0b, 0x00, 0x7c, 0xc8, 0xe9, 0x4e, 0x02, 0xff, 0x76, 0x04, 0xe8
    db 0x64, 0x95, 0x59, 0x85, 0xc0, 0x75, 0x15, 0xff, 0x76, 0xd8, 0xff, 0x76, 0x04, 0xe8, 0x5f, 0xf6
    db 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75, 0x04, 0xb8, 0x01, 0x00, 0xc3, 0xe9, 0x2b, 0x02, 0xb8
    db 0x01, 0x00, 0xc3, 0xc7, 0x06, 0x46, 0x8f, 0x7b, 0x00, 0xc7, 0x06, 0x44, 0x8f, 0x80, 0x00, 0xc7
    db 0x06, 0x42, 0x8f, 0x03, 0x00, 0xc7, 0x06, 0x40, 0x8f, 0x00, 0x00, 0xc7, 0x06, 0x3e, 0x8f, 0x02
    db 0x00, 0xc7, 0x06, 0xee, 0x82, 0x00, 0x00, 0xc7, 0x06, 0x0c, 0x83, 0x13, 0x00, 0xc7, 0x06, 0x0a
    db 0x83, 0x06, 0x00, 0xc7, 0x06, 0x5e, 0x90, 0x12, 0x00, 0xb8, 0x01, 0x00, 0xc3, 0xa0, 0xc7, 0x91
    db 0x2a, 0xe4, 0x8b, 0xd8, 0x8a, 0x87, 0xde, 0x89, 0x98, 0x3b, 0x46, 0xda, 0x7d, 0x15, 0xff, 0x76
    db 0xd8, 0xff, 0x76, 0x04, 0xe8, 0xf8, 0xf5, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x75, 0x04, 0xb8
    db 0x01, 0x00, 0xc3, 0xe9, 0xc4, 0x01, 0xc7, 0x46, 0xc6, 0xff, 0xff, 0xc7, 0x46, 0xd0, 0x00, 0x00
    db 0xe9, 0x85, 0x00, 0xff, 0x76, 0xd8, 0xff, 0x76, 0xd0, 0xe8, 0xb7, 0xed, 0x83, 0xc4, 0x04, 0x89
    db 0x46, 0xc6, 0x3d, 0xff, 0xff, 0x74, 0x6e, 0xb9, 0x00, 0x01, 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xd6
    db 0x89, 0x56, 0xd4, 0x52, 0x50, 0xff, 0x76, 0xd0, 0xe8, 0x0e, 0x94, 0x83, 0xc4, 0x06, 0xb8, 0x01
    db 0x00, 0x50, 0xb8, 0xff, 0xff, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xd0, 0x50, 0xb8, 0x78, 0x00
    db 0xf7, 0x6e, 0xd6, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x6e, 0xd4, 0x8b
    db 0xc8, 0x58, 0x03, 0xc1, 0x05, 0x34, 0x5c, 0x50, 0xff, 0x76, 0xda, 0xff, 0x76, 0xd0, 0xe8, 0xc2
    db 0xeb, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0xda, 0xe8, 0x7e, 0x1e, 0x59, 0x85, 0xc0, 0x74, 0x16, 0x8b
    db 0x46, 0xda, 0x05, 0x70, 0xfe, 0x50, 0xa0, 0xc6, 0x91, 0x98, 0x50, 0xb8, 0x15, 0x00, 0x50, 0xe8
    db 0x83, 0x1e, 0x83, 0xc4, 0x06, 0xff, 0x46, 0xd0, 0x8b, 0x46, 0xd0, 0x3b, 0x06, 0xc8, 0x69, 0x7d
    db 0x09, 0x83, 0x7e, 0xc6, 0xff, 0x75, 0x03, 0xe9, 0x69, 0xff, 0xe9, 0x1d, 0x01, 0x8b, 0x46, 0xda
    db 0xb9, 0x00, 0x01, 0x99, 0xf7, 0xf9, 0x05, 0x0f, 0x00, 0x89, 0x46, 0xd4, 0x89, 0x56, 0xc6, 0x8b
    db 0xc2, 0xb9, 0x10, 0x00, 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xd2, 0x89, 0x56, 0xd0, 0xff, 0x76, 0xd8
    db 0x52, 0x50, 0xff, 0x76, 0xd4, 0xe8, 0x97, 0xc9, 0x83, 0xc4, 0x08, 0xe9, 0xec, 0x00, 0x8b, 0x46
    db 0xd8, 0xa3, 0x34, 0x91, 0xe9, 0xe3, 0x00, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xd8, 0xff, 0x76
    db 0xda, 0xe8, 0x1b, 0xee, 0x83, 0xc4, 0x06, 0xe9, 0xd0, 0x00, 0x8b, 0x46, 0xda, 0x8b, 0x4e, 0xd8
    db 0xd1, 0xe1, 0x8b, 0xd9, 0x89, 0x87, 0x78, 0x91, 0xe9, 0xbf, 0x00, 0x8b, 0x46, 0xda, 0x48, 0x89
    db 0x46, 0xfe, 0xe9, 0xb5, 0x00, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0xd8, 0x8b, 0x46, 0xda, 0xd1
    db 0xe0, 0x05, 0x4e, 0x58, 0x50, 0xe8, 0x7a, 0xb5, 0x83, 0xc4, 0x06, 0xe9, 0x9c, 0x00, 0xff, 0x76
    db 0xda, 0xb8, 0x42, 0x58, 0x50, 0xe8, 0x9d, 0xb5, 0x83, 0xc4, 0x04, 0x3b, 0x46, 0xd8, 0x75, 0x04
    db 0xb8, 0x00, 0x00, 0xc3, 0x8b, 0x46, 0xda, 0x3d, 0x0c, 0x00, 0x75, 0x0b, 0x80, 0x3e, 0xc8, 0x86
    db 0x00, 0x75, 0x04, 0xb8, 0x00, 0x00, 0xc3, 0xeb
    db 'q2|6|Y|q|'
    db 0xa8, 0x7c, 0x96, 0x7d, 0xa6, 0x7d, 0x16
    db '~%~v~'
    db 0x88, 0x7e, 0x05, 0x7f, 0x5e, 0x7f, 0x73, 0x80, 0xd9, 0x80, 0xff, 0x80, 0x3d, 0x81, 0x5b, 0x81
    db 0x8e, 0x81, 0xaf, 0x81, 0xcf, 0x81, 0xe8, 0x81, 0x00, 0x82, 0x00, 0x82, 0x6e, 0x82, 0x82, 0x82
    db 0xb3, 0x82, 0xe5, 0x82, 0x0e, 0x83, 0x38, 0x83, 0x5d, 0x83, 0x80, 0x83, 0xe5, 0x83, 0x88, 0x84
    db 0xf9, 0x84, 0x11, 0x85, 0xa3, 0x7c, 0x1b, 0x85, 0x62, 0x85, 0x85, 0x85, 0x89, 0x85, 0xc3, 0x85
    db 0xec, 0x85, 0x93, 0x86, 0xc4, 0x86, 0xcd, 0x86, 0xe0, 0x86, 0xf1, 0x86, 0xfb, 0x86, 0x14, 0x87

@..local.l116:
    cmp ax, strict word 0x32
    jae short @..local.l117
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x78c1]
@..local.l117:
    inc word [bp - 0x0002]
    jmp near @..api_idx_0040.l1
@..local.l118:
    mov ax, 0
    ret
api_idx_0006_3:
    mov ax, 0xfffa
    db 0xe8, 0x92, 0xbc ; call 0xfffff40b
    cmp byte [bp + 0x6], 2
    jne short @..api_idx_0006_3.l2
    mov ax, word [bp + 0x8]
    cwd
    mov cx, 8
@..api_idx_0006_3.l1:
    shl ax, 1
    rcl dx, 1
    loop @..api_idx_0006_3.l1
    push ax
    push dx
    mov al, byte [bp + 0xa]
    sub ah, ah
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    add ax, cx
    adc dx, bx
    mov word [bp - 0x0004], dx
    mov word [bp - 0x0006], ax
    mov ax, word [bp - 0x0006]
    mov dx, word [bp - 0x0004]
    add word [data_964a], ax
    adc word [data_964c], dx
@..api_idx_0006_3.l2:
    mov word [bp - 0x0002], 0
@..api_idx_0006_3.l3:
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x6eb4]
    cmp al, byte [bp + 0x6]
    je short @..api_idx_0006_3.l4
    jmp near @..local.l126
@..api_idx_0006_3.l4:
    cmp byte [bp + 0x6], 2
    jne short @..local.l120
    mov ax, word [bx - 0x6eb8]
    cwd
    mov cx, 8
@..api_idx_0006_3.l5:
    shl ax, 1
    rcl dx, 1
    loop @..api_idx_0006_3.l5
    push ax
    push dx
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x6eb6]
    sub ah, ah
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    add ax, cx
    adc dx, bx
    mov word [bp - 0x0004], dx
    mov word [bp - 0x0006], ax
    cmp dx, word [data_964c]
    jg short @..api_idx_0006_3.l6
    jne short @..api_idx_0006_3.l7
    cmp ax, word [data_964a]
    jbe short @..api_idx_0006_3.l7
@..api_idx_0006_3.l6:
    jmp short @..local.l119
@..api_idx_0006_3.l7:
    mov word [data_964c], 0
    mov word [data_964a], 0
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x6eb3]
    sub ah, ah
    push ax
    push word [bp + 0x4]
    call api_idx_0040
    add sp, byte 4
    mov word [bp + 0x8], ax
    ret
@..local.l119:
    jmp near @..local.l126
@..local.l120:
    cmp byte [bp + 0x6], 1
    jne short @..local.l121
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    cmp word [bx - 0x6eb8], byte 0
    jne short @..local.l121
    mov word [bp + 0x8], 0
@..local.l121:
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx - 0x6eb8]
    cmp ax, word [bp + 0x8]
    je short @..local.l122
    cmp word [bp + 0x8], byte 0
    jne short @..local.l126
@..local.l122:
    mov al, byte [bx - 0x6eb6]
    cmp al, byte [bp + 0xa]
    je short @..local.l123
    cmp byte [bp + 0xa], 0
    jne short @..local.l126
@..local.l123:
    mov al, byte [bx - 0x6eb5]
    cmp al, byte [bp + 0xc]
    je short @..local.l124
    cmp byte [bp + 0xc], 0
    jne short @..local.l126
@..local.l124:
    cmp byte [bp + 0x6], 4
    jne short @..local.l125
    call loc_47b9
@..local.l125:
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x6eb3]
    sub ah, ah
    push ax
    push word [bp + 0x4]
    call api_idx_0040
    add sp, byte 4
    mov word [bp + 0x8], ax
    ret
@..local.l126:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jge short @..local.l127
    jmp near @..api_idx_0006_3.l3
@..local.l127:
    mov ax, 0
    ret
api_idx_0002_3:
    mov ax, 0xfffe
    db 0xe8, 0x44, 0xbb ; call 0xfffff40b
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx + 0x5d5a]
    sub ah, ah
    sub ax, word [bp + 0x8]
    mov word [bp - 0x0002], ax
    push ax
    cmp ax, strict word 0
    pop ax
    jge short @..api_idx_0002_3.l1
    mov ax, 0
@..api_idx_0002_3.l1:
    mov byte [bx + 0x5d5a], al
    cmp word [bp + 0xa], byte 0
    je short @..api_idx_0002_3.l2
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call 0xcb3a
    add sp, byte 4
@..api_idx_0002_3.l2:
    ret
api_idx_0008_3:
    mov ax, 0xfff8
    db 0xe8, 0x05, 0xbb ; call 0xfffff40b
    mov ax, word [bp + 0x6]
    jmp near @..local.l130
@..api_idx_0008_3.l1:
    push word [bp + 0x8]
    mov ax, 1
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    push ax
    mov al, byte [data_91c5]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp + 0x8]
    push ax
    db 0xe8, 0x8b, 0x7e ; call 0xb7c2
    add sp, byte 6
    mov word [bp + 0x8], ax
    mov al, byte [data_91cb]
    sub ah, ah
    test ax, 4
    jne short @..api_idx_0008_3.l2
    mov ax, word [bp + 0x8]
    inc ax
    push ax
    db 0xe8, 0x5a, 0x7e ; call 0xb7a9
    pop cx
    test ax, ax
    jne short @..api_idx_0008_3.l3
@..api_idx_0008_3.l2:
    mov ax, 0x41
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x608
    push ax
    call api_idx_0050
    add sp, byte 8
    jmp short @..api_idx_0008_3.l4
@..api_idx_0008_3.l3:
    mov ax, 0x41
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x607
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, word [bp + 0x8]
    shl ax, 1
    push ax
    mov ax, 6
    push ax
    mov ax, word [bp + 0x8]
    shl ax, 1
    push ax
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
    db 0xe8, 0x12, 0x97 ; call 0xffffd0be
    add sp, byte 4
    add word [data_964e], ax
@..api_idx_0008_3.l4:
    jmp near @..local.l132
@..api_idx_0008_3.l5:
    mov al, byte [data_91cb]
    sub ah, ah
    test ax, 8
    jne short @..api_idx_0008_3.l6
    cmp word [data_91a8], byte 0
    je short @..api_idx_0008_3.l6
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    push ax
    mov ax, 3
    imul word [bp + 0x8]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    db 0xe8, 0xc6, 0x7d ; call 0xb7a9
    pop cx
    add ax, word [bp + 0x8]
    push ax
    mov al, byte [data_91c5]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short @..local.l128
@..api_idx_0008_3.l6:
    mov ax, 0x95fa
    push ax
    mov ax, 0x609
    push ax
    db 0xe8, 0x3c, 0x7b ; call 0xb53b
    add sp, byte 4
    mov ax, 0x41
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x95fa
    push ax
    call math_loc_130b
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x48
    push ax
    call api_idx_0004_5
    add sp, byte 4
    ret
@..local.l128:
    mov ax, 2
    push ax
    db 0xe8, 0x7b, 0x7d ; call 0xb7a9
    pop cx
    test ax, ax
    je short @..local.l129
    mov ax, 1
    push ax
    push ax
    mov ax, 0xffff
    push ax
    call api_idx_0038
    add sp, byte 6
    test ax, ax
    jne short @..local.l129
    ret
@..local.l129:
    mov ax, 1
    push ax
    mov ax, 0x95a8
    push ax
    call api_idx_0084
    add sp, byte 4
    mov ax, 0x95fa
    push ax
    mov ax, 0x60a
    push ax
    db 0xe8, 0xdb, 0x7a ; call 0xb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    mov ax, 0x95a8
    push ax
    mov ax, 0x95fa
    push ax
    db 0xe8, 0x8e, 0x78 ; call 0xb300
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 0x95fa
    push ax
    call math_loc_2472
    add sp, byte 4
    jmp short @..local.l132
@..local.l130:
    cmp ax, strict word 0x3c
    jne short @..local.l131
    jmp near @..api_idx_0008_3.l1
@..local.l131:
    cmp ax, strict word 0x44
    jne short @..local.l132
    jmp near @..api_idx_0008_3.l5
@..local.l132:
    ret
api_idx_0004_10:
    mov ax, 0xfffc
    db 0xe8, 0x6f, 0xb9 ; call 0xfffff40b
    mov ax, 0
    push ax
    call api_idx_0006
    pop cx
    call loc_10b6
    mov ax, 1
    push ax
    push ax
    mov ax, 0x7ea
    push ax
    push word [bp + 0x4]
    call api_idx_0044
    add sp, byte 8
    test ax, ax
    je short @..api_idx_0004_10.l1
    jmp near @..api_idx_0004_10.l5
@..api_idx_0004_10.l1:
    mov ax, word [data_904e]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], dx
    mov ax, 6
    imul dx
    mov bx, ax
    cmp byte [bx + 0x624], 1
    jne short @..api_idx_0004_10.l2
    call 0xceb1
    mov word [data_9650], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0004_10.l2
    mov word [bp - 0x0002], 0xffff
@..api_idx_0004_10.l2:
    cmp word [bp - 0x0002], byte 0
    jge short @..api_idx_0004_10.l3
    jmp near @..api_idx_0004_10.l5
@..api_idx_0004_10.l3:
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
    push word [data_9650]
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_0008_3
    add sp, byte 8
    push word [bp - 0x0004]
    db 0xe8, 0x69, 0x7c ; call 0xb7a9
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
    jge short @..api_idx_0004_10.l4
    mov word [bx + 0x5c10], 0
    mov ax, 6
    push ax
    db 0xe8, 0x2f, 0x7c ; call 0xb7a9
    pop cx
    add ax, strict word 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5d5c], al
@..api_idx_0004_10.l4:
    mov ax, 1
    push ax
    push word [bp + 0x4]
    db 0xe8, 0xa4, 0x8f ; call 0xffffcb3a
    add sp, byte 4
@..api_idx_0004_10.l5:
    ret
api_idx_0018_2:
    mov ax, 0xffe8
    db 0xe8, 0x6b, 0xb8 ; call 0xfffff40b
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
    db 0xe8, 0x5d, 0xad ; call 0xffffe928
    add sp, byte 8
    mov word [bp - 0x0016], dx
    mov word [bp - 0x0018], ax
    lea ax, word [bp - 0x0014]
    push ax
    push word [bp + 0x4]
    db 0xe8, 0x5d, 0x79 ; call 0xb53b
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
    db 0xe8, 0xd7, 0x80 ; call 0xffffbce3
    add sp, byte 0x0a
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    inc ax
    inc ax
    push ax
    lea ax, word [bp - 0x0014]
    push ax
    db 0xe8, 0x6e, 0xbe ; call 0xfffffa90
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
    db 0xe8, 0xcc, 0xab ; call 0xffffe809
    add sp, byte 4
    mov ax, 0xc0
    push ax
    mov ax, 0x1a
    push ax
    db 0xe8, 0xd8, 0xab ; call 0xffffe823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0014]
    push ax
    db 0xe8, 0xf5, 0xab ; call 0xffffe84e
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
    db 0xe8, 0x57, 0xac ; call 0xffffe8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 0x0016]
    push word [bp - 0x0018]
    db 0xe8, 0xbc, 0xac ; call 0xffffe94f
    add sp, byte 6
    ret
api_idx_0004_11:
    mov ax, 0xfffc
    db 0xe8, 0x6e, 0xb7 ; call 0xfffff40b
    mov word [bp - 0x0002], 0
    jmp near @..api_idx_0004_11.l8
@..api_idx_0004_11.l1:
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xe]
    jne short @..api_idx_0004_11.l2
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
    db 0xe8, 0x1f, 0xac ; call 0xffffe901
    add sp, byte 0x0a
    mov word [bp - 0x0004], 0
    jmp short @..api_idx_0004_11.l3
@..api_idx_0004_11.l2:
    mov word [bp - 0x0004], 0xb4
@..api_idx_0004_11.l3:
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    db 0xe8, 0x04, 0xab ; call 0xffffe809
    add sp, byte 4
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x69ae], byte 0
    je short @..api_idx_0004_11.l4
    mov ax, 4
    push ax
    mov ax, 0x63
    push ax
    call 0xe830
    add sp, byte 4
@..api_idx_0004_11.l4:
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0xf
    push ax
    db 0xe8, 0xcd, 0xaa ; call 0xffffe809
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x6986]
    sub ah, ah
    push ax
    db 0xe8, 0xd9, 0xaa ; call 0xffffe830
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
    add ax, 0x96a2
    push ax
    call api_idx_002a
    add sp, byte 8
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x67a6], byte 0
    jle short @..api_idx_0004_11.l7
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x47
    push ax
    db 0xe8, 0x5c, 0xaa ; call 0xffffe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xe]
    jne short @..api_idx_0004_11.l5
    mov ax, word [bp - 0x0004]
    jmp short @..api_idx_0004_11.l6
@..api_idx_0004_11.l5:
    mov ax, 2
@..api_idx_0004_11.l6:
    push ax
    db 0xe8, 0x58, 0xaa ; call 0xffffe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x67a6]
    call 0xb2e7
    add sp, byte 6
@..api_idx_0004_11.l7:
    inc word [bp - 0x0002]
@..api_idx_0004_11.l8:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xa]
    jge short @..api_idx_0004_11.l9
    jmp near @..api_idx_0004_11.l1
@..api_idx_0004_11.l9:
    ret
math_loc_3df9:
    mov ax, 0
    db 0xe8, 0x0c, 0xb6 ; call 0xfffff40b
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
    call api_idx_0004_11
    add sp, byte 0x0c
    ret
api_idx_0038_2:
    mov ax, 0xffc8
    db 0xe8, 0xcb, 0xb5 ; call 0xfffff40b
    mov word [data_904e], 0xffff
    mov word [bp - 0x0004], 0x37
    mov word [bp - 0x0006], 0x8f
    mov word [bp - 0x0008], 0x108
    mov word [bp - 0x000a], 0xc5
    mov word [bp - 0x0012], 0x16
    mov ax, 3
    cmp word [bp + 0xc], byte 3
    jge short @..api_idx_0038_2.l1
    mov ax, word [bp + 0xc]
@..api_idx_0038_2.l1:
    mov word [bp - 0x0022], ax
    mov ax, 0x90d0
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
    db 0xe8, 0xfa, 0x83 ; call 0xffffc283
    add sp, byte 0x0a
    mov word [bp - 0x0038], ax
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    db 0xe8, 0xfc, 0x7d ; call 0xbc9a
    add sp, byte 8
    cmp word [bp + 0x6], byte 0
    je short @..api_idx_0038_2.l2
    lea ax, word [bp - 0x0036]
    push ax
    push word [bp + 0x4]
    db 0xe8, 0x8a, 0x76 ; call 0xb53b
    add sp, byte 4
    jmp short @..api_idx_0038_2.l3
@..api_idx_0038_2.l2:
    push word [bp + 0xe]
    lea ax, word [bp - 0x0036]
    push ax
    db 0xe8, 0xa4, 0xb4 ; call 0xfffff364
    add sp, byte 4
@..api_idx_0038_2.l3:
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
    db 0xe8, 0x49, 0x76 ; call 0xb53b
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
    db 0xe8, 0xac, 0x81 ; call 0xffffc0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0036]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    db 0xe8, 0x16, 0x76 ; call 0xb53b
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
    db 0xe8, 0x79, 0x81 ; call 0xffffc0c1
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
    call math_loc_3df9
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
    db 0xe8, 0xda, 0x7a ; call 0xbaa6
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
    db 0xe8, 0xac, 0x7a ; call 0xbaa6
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
    db 0xe8, 0x7e, 0x7a ; call 0xbaa6
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
    db 0xe8, 0x53, 0x7a ; call 0xbaa6
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
    db 0xe8, 0x25, 0x7a ; call 0xbaa6
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
    db 0xe8, 0xf7, 0x79 ; call 0xbaa6
    add sp, byte 0x0e
    mov ax, 3
    cmp word [bp + 0xc], byte 3
    jge short @..local.l133
    mov ax, word [bp + 0xc]
@..local.l133:
    mov word [bp - 0x001e], ax
    mov word [bp - 0x0002], 0
    jmp short @..local.l135
@..local.l134:
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
    db 0xe8, 0xa7, 0x79 ; call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
@..local.l135:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x001e]
    jl short @..local.l134
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
    db 0xe8, 0x83, 0x79 ; call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0xc6
    push ax
    mov ax, 0x139
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 9
    push ax
    db 0xe8, 0xa1, 0xa7 ; call 0xffffe8da
    add sp, byte 8
    mov word [bp - 0x001a], 1
@..local.l136:
    mov ax, 0x59fe
    push ax
    db 0xe8, 0xc5, 0x77 ; call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x0018], ax
    cmp word [data_59fc], byte 0
    je short @..local.l137
    push word [bp - 0x001e]
    push word [bp - 0x0016]
    push word [bp - 0x0020]
    call loc_7832
    add sp, byte 6
    mov word [bp - 0x0020], ax
    mov word [data_5b3e], 1
    sub ax, word [bp - 0x0016]
    add ax, strict word 6
    mov word [bp - 0x0018], ax
@..local.l137:
    cmp word [data_5b3e], byte 1
    je short @..local.l138
    jmp near @..local.l142
@..local.l138:
    mov ax, word [bp - 0x0018]
    jmp near @..local.l140

    db 0x8d, 0x46, 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0xc3, 0xae, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xf0, 0x83
    db 0xc1, 0x0e, 0x2b, 0xc1, 0x50, 0xe8, 0x15, 0x76, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xec, 0x8d, 0x46
    db 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0x95, 0xae, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe4, 0xff
    db 0x76, 0xee, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x0e, 0x2b
    db 0xc1, 0x2b, 0x46, 0xec, 0x50, 0xe8, 0xe5, 0x75, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0x83, 0x7e
    db 0x0c, 0x03, 0x7e, 0x1f, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xee, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x49, 0x49, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7, 0xf9
    db 0x89, 0x46, 0xea, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76, 0xea, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x5d
    db 0x00, 0x50, 0xe8, 0xcf, 0xfb, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0, 0xb8, 0x07, 0x00, 0x50, 0xb8
    db 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00
    db 0x50, 0xe8, 0x8f, 0x7d, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa, 0x03
    db 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0xe8, 0x2c, 0x78, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b
    db 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc
    db 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x3e, 0xa6, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x03
    db 0xe9, 0x0b, 0xff, 0xe9, 0x49, 0x02, 0x83, 0x7e, 0xe8, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0xe4, 0x7b, 0x83
    db 0xc4, 0x0a, 0x83, 0x7e, 0xea, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xea, 0xeb, 0x34, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0xb3, 0x7b
    db 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0x0c
    db 'HHH;F'
    db 0xea, 0x7e, 0x03, 0xff, 0x46, 0xea, 0x83, 0x7e, 0x0c, 0x03, 0x7e, 0x2c, 0xff, 0x76, 0xee, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x64, 0x00, 0xf7, 0x6e, 0xee, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x49
    db 0x49, 0x49, 0x99, 0xf7, 0xf9, 0xf7, 0x6e, 0xea, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8
    db 0x80, 0x74, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76
    db 0xea, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50
    db 0x8b, 0x46, 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x8f, 0xfa, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0
    db 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b
    db 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0x4f, 0x7c, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50
    db 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0xc1, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xec, 0x76, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa
    db 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0xfe, 0xa4, 0x83, 0xc4, 0x08, 0xe9
    db 0x12, 0x01, 0xe9, 0x0f, 0x01, 0x83, 0x7e, 0x08, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50
    db 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08
    db 0x00, 0x50, 0xe8, 0x5a, 0x7a, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08
    db 0x00, 0x50, 0xe8, 0x3a, 0x7a, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46
    db 0xe6, 0x00, 0x00, 0xe9, 0xbe, 0x00, 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50
    db 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0x08, 0x00, 0x50, 0xe8, 0x09, 0x7a, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00
    db 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0x08, 0x00, 0x50, 0xe8, 0xe9, 0x79, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x02, 0x00, 0xc7
    db 0x46, 0xe6, 0x00, 0x00, 0xeb, 0x6e

@..local.l139:
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
    call math_loc_3df9
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
    db 0xe8, 0x06, 0xa4 ; call 0xffffe8da
    add sp, byte 8
    jmp short @..local.l142
    int3
    xchg cx, ax
    db 0xf2, 0x92 ; xchg dx, ax
    db 0xf2, 0x92 ; xchg dx, ax
    sub word [si - 0x6bd4], dx
    jge short 0x4479
@..local.l140:
    cmp ax, strict word 6
    jae short @..local.l141
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6ae0]
@..local.l141:
    jmp short @..local.l139
@..local.l142:
    cmp word [bp - 0x001a], byte 0
    je short @..local.l143
    jmp near @..local.l136
@..local.l143:
    mov ax, 1
    push ax
    push word [bp - 0x0038]
    db 0xe8, 0x52, 0x7f ; call 0xc459
    add sp, byte 4
    mov ax, word [bp - 0x0020]
    mov word [data_904e], ax
    mov ax, word [data_9050]
    ret
api_idx_0054_3:
    mov ax, 0xffac
    db 0xe8, 0xf1, 0xae ; call 0xfffff40b
    mov word [bp - 0x0002], 0
    jmp near @..local.l147
@..api_idx_0054_3.l1:
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    db 0xe8, 0xd3, 0xa2 ; call 0xffffe809
    add sp, byte 4
    mov ax, 0xc3
    push ax
    mov ax, 0x9b
    push ax
    db 0xe8, 0xdf, 0xa2 ; call 0xffffe823
    add sp, byte 4
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    push ax
    mov ax, word [bp + 0xe]
    add ax, word [bp - 0x0002]
    shl ax, 1
    add ax, 0x9882
    push ax
    db 0xe8, 0x0f, 0xa7 ; call 0xffffec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0054_3.l2
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2b]
    sub ah, ah
    push ax
    mov ax, word [bp + 0xe]
    add ax, word [bp - 0x0002]
    shl ax, 1
    add ax, 0x98be
    push ax
    db 0xe8, 0xea, 0xa6 ; call 0xffffec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0054_3.l2
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2c]
    sub ah, ah
    push ax
    mov ax, word [bp + 0xe]
    add ax, word [bp - 0x0002]
    add ax, 0x98fa
    push ax
    db 0xe8, 0xc7, 0xa6 ; call 0xffffec74
    add sp, byte 4
    test ax, ax
    jne short @..api_idx_0054_3.l3
@..api_idx_0054_3.l2:
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0x61f
    push ax
    db 0xe8, 0x7c, 0x6f ; call 0xb53b
    add sp, byte 4
    jmp short @..api_idx_0054_3.l4
@..api_idx_0054_3.l3:
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, word [bp + 0xe]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x66e8]
    sub ah, ah
    add ax, 0x60e
    push ax
    db 0xe8, 0x5e, 0x6f ; call 0xb53b
    add sp, byte 4
@..api_idx_0054_3.l4:
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0x63, 0xa2 ; call 0xffffe84e
    add sp, byte 4
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x8]
    add ax, strict word 7
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    db 0xe8, 0x05, 0xa2 ; call 0xffffe809
    add sp, byte 4
    mov ax, 0xc3
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0x11, 0xa2 ; call 0xffffe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp + 0xe]
    add ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx - 0x66c8]
    push word [bx - 0x66ca]
    call 0xb293
    add sp, byte 8
    mov ax, 0xc3
    push ax
    mov ax, 0x1b
    push ax
    db 0xe8, 0xe1, 0xa1 ; call 0xffffe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x99ae
    push ax
    db 0xe8, 0xfe, 0xa1 ; call 0xffffe84e
    add sp, byte 4
    mov ax, word [bp + 0xe]
    add ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x10]
    jne short @..api_idx_0054_3.l5
    mov ax, 1
    push ax
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x8]
    add ax, strict word 0xd
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x53
    push ax
    db 0xe8, 0x71, 0xa2 ; call 0xffffe901
    add sp, byte 0x0a
    mov word [bp - 0x0004], 0
    jmp short @..api_idx_0054_3.l6
@..api_idx_0054_3.l5:
    mov word [bp - 0x0004], 0xb4
@..api_idx_0054_3.l6:
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x46
    push ax
    db 0xe8, 0x55, 0xa1 ; call 0xffffe809
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, word [bp + 0xe]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x6648]
    sub ah, ah
    push ax
    db 0xe8, 0x63, 0xa1 ; call 0xffffe830
    add sp, byte 4
    push word [bp - 0x0004]
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x8]
    inc ax
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x54
    push ax
    mov ax, word [bp + 0xe]
    add ax, word [bp - 0x0002]
    mov cx, 0x16
    imul cx
    add ax, 0x99d6
    push ax
    call api_idx_002a
    add sp, byte 8
    mov ax, word [bp + 0xe]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x66e8]
    sub ah, ah
    mov bx, ax
    cmp byte [bx + 0x60e], 1
    jne short @..local.l146
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x8]
    add ax, strict word 8
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x7e
    push ax
    db 0xe8, 0xe0, 0xa0 ; call 0xffffe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp + 0xe]
    add ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x10]
    jne short @..local.l144
    mov ax, word [bp - 0x0004]
    jmp short @..local.l145
@..local.l144:
    mov ax, 2
@..local.l145:
    push ax
    db 0xe8, 0xdc, 0xa0 ; call 0xffffe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov ax, word [bp + 0xe]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x6396]
    db 0xe8, 0x84, 0x6b ; call 0xb2e7
    add sp, byte 6
@..local.l146:
    inc word [bp - 0x0002]
@..local.l147:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xc]
    jge short @..local.l148
    jmp near @..api_idx_0054_3.l1
@..local.l148:
    ret
math_loc_4775:
    mov ax, 0
    db 0xe8, 0x90, 0xac ; call 0xfffff40b
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 0x8]
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    db 0xe8, 0xfe, 0x75 ; call 0xbd98
    add sp, byte 8
    push word [bp + 0x10]
    push word [bp + 0xe]
    push word [bp + 0x12]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0054_3
    add sp, byte 0x0e
    ret
loc_47b9:
    mov ax, 0
    db 0xe8, 0x4c, 0xac ; call 0xfffff40b
    call loc_109f
    mov ax, 0xc6
    push ax
    mov ax, 0x11d
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x22
    push ax
    db 0xe8, 0x05, 0xa1 ; call 0xffffe8da
    add sp, byte 8
    ret
api_idx_0038_3:
    mov ax, 0xffc8
    db 0xe8, 0x2c, 0xac ; call 0xfffff40b
    mov ax, 0x99ae
    push ax
    mov ax, 0x5e4
    push ax
    db 0xe8, 0x51, 0x6d ; call 0xb53b
    add sp, byte 4
    mov word [data_904e], 0xffff
    mov word [data_93d8], 0x8d
    mov word [bp - 0x0004], 0x23
    mov word [bp - 0x0006], 0x8f
    mov word [bp - 0x0008], 0x11c
    mov word [bp - 0x000a], 0xc5
    mov word [bp - 0x0012], 0x16
    mov ax, 3
    cmp word [bp + 0xc], byte 3
    jge short @..api_idx_0038_3.l1
    mov ax, word [bp + 0xc]
@..api_idx_0038_3.l1:
    mov word [bp - 0x0022], ax
    mov ax, 0x90d6
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
    db 0xe8, 0x47, 0x7a ; call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0038], ax
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    db 0xe8, 0x49, 0x74 ; call 0xbc9a
    add sp, byte 8
    mov ax, 0xc2
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0xc4, 0x9f ; call 0xffffe823
    add sp, byte 4
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    db 0xe8, 0x1a, 0xb2 ; call 0xfffffa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x26
    sub ax, cx
    push ax
    db 0xe8, 0x79, 0x9f ; call 0xffffe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    db 0xe8, 0xaa, 0x9f ; call 0xffffe84e
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 0xb3
    push ax
    db 0xe8, 0x71, 0x9f ; call 0xffffe823
    add sp, byte 4
    lea ax, word [bp - 0x0036]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c0a]
    push word [bx + 0x5c08]
    call 0xb1db
    add sp, byte 6
    mov ax, word [bp - 0x0006]
    add ax, strict word 0xc
    push ax
    lea ax, word [bp - 0x0036]
    push ax
    db 0xe8, 0xb3, 0xb1 ; call 0xfffffa90
    pop cx
    mov cx, 6
    imul cx
    add ax, strict word 0x12
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x26
    sub ax, cx
    push ax
    db 0xe8, 0x0f, 0x9f ; call 0xffffe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0036]
    push ax
    db 0xe8, 0x46, 0x9f ; call 0xffffe84e
    add sp, byte 4
    lea ax, word [bp - 0x0036]
    push ax
    push word [bp + 0x6]
    db 0xe8, 0x26, 0x6c ; call 0xb53b
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 0x1a
    push ax
    db 0xe8, 0x00, 0x9f ; call 0xffffe823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0036]
    push ax
    db 0xe8, 0x1d, 0x9f ; call 0xffffe84e
    add sp, byte 4
    lea ax, word [bp - 0x0036]
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    db 0xe8, 0xfb, 0x6b ; call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0036]
    push ax
    push word [bp + 0x8]
    mov ax, 1
    push ax
    mov ax, 0xa
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    db 0xe8, 0x5e, 0x77 ; call 0xc0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0036]
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    db 0xe8, 0xc8, 0x6b ; call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0036]
    push ax
    push word [bp + 0xa]
    mov ax, 1
    push ax
    mov ax, 0xa
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    db 0xe8, 0x2b, 0x77 ; call 0xc0c1
    add sp, byte 0x0c
    mov ax, word [bp + 0xe]
    inc ax
    inc ax
    inc ax
    cmp ax, word [bp + 0xc]
    jle short @..api_idx_0038_3.l2
    mov ax, word [bp + 0xc]
    dec ax
    dec ax
    dec ax
    mov word [bp + 0xe], ax
@..api_idx_0038_3.l2:
    mov ax, 0
    cmp word [bp + 0xe], byte 0
    jle short @..api_idx_0038_3.l3
    mov ax, word [bp + 0xe]
@..api_idx_0038_3.l3:
    mov word [bp - 0x0016], ax
    mov word [bp - 0x0020], 0xffff
    mov word [data_9ca6], 0xffff
    push word [bp - 0x0022]
    push word [bp - 0x0020]
    push ax
    mov ax, 7
    push ax
    mov ax, 0x18
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x4e
    push ax
    push word [bp + 0x4]
    call math_loc_4775
    add sp, byte 0x10
    mov word [bp - 0x0010], 0
    cmp word [bp + 0xc], byte 3
    jle short @..local.l149
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
    db 0xe8, 0xa4, 0x6d ; call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0010], ax
@..local.l149:
    push word [bp - 0x0010]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xe8
    push ax
    db 0xe8, 0x98, 0x75 ; call 0xbfd8
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0010]
    add ax, strict word 0x12
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xf0
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0010]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xe8
    push ax
    mov ax, 0
    push ax
    db 0xe8, 0x35, 0x70 ; call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0xc
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xf0
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xe8
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0x07, 0x70 ; call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0xb
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xf0
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2a
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xe8
    push ax
    mov ax, 2
    push ax
    db 0xe8, 0xd9, 0x6f ; call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0xf
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x44
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    mov ax, 3
    push ax
    db 0xe8, 0xae, 0x6f ; call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0xd
    push ax
    mov ax, 0x42
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x44
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    mov ax, 4
    push ax
    db 0xe8, 0x80, 0x6f ; call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2f
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x44
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    mov ax, 5
    push ax
    db 0xe8, 0x52, 0x6f ; call 0xbaa6
    add sp, byte 0x0e
    mov ax, 3
    mov cx, word [bp + 0xc]
    cmp cx, byte 3
    jge short @..local.l150
    mov ax, cx
@..local.l150:
    mov word [bp - 0x001e], ax
    mov word [bp - 0x0002], 0
    jmp short @..local.l152
@..local.l151:
    mov ax, 0
    push ax
    push ax
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x13
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xe0
    push ax
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x4e
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 6
    push ax
    db 0xe8, 0x01, 0x6f ; call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
@..local.l152:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x001e]
    jl short @..local.l151
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
    db 0xe8, 0xdd, 0x6e ; call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0xc6
    push ax
    mov ax, 0x139
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 9
    push ax
    db 0xe8, 0xfb, 0x9c ; call 0xffffe8da
    add sp, byte 8
    mov word [bp - 0x001a], 1
@..local.l153:
    mov ax, 0x59fe
    push ax
    db 0xe8, 0x1f, 0x6d ; call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x0018], ax
    call api_idx_0006_2
    cmp word [data_59fc], byte 0
    je short @..local.l154
    push word [bp - 0x001e]
    push word [bp - 0x0016]
    push word [bp - 0x0020]
    call loc_7832
    add sp, byte 6
    mov word [bp - 0x0020], ax
    mov word [data_5b3e], 1
    sub ax, word [bp - 0x0016]
    add ax, strict word 6
    mov word [bp - 0x0018], ax
@..local.l154:
    cmp word [data_5b3e], byte 1
    je short @..local.l155
    jmp near @..local.l159
@..local.l155:
    mov ax, word [bp - 0x0018]
    jmp near @..local.l157

    db 0x8d, 0x46, 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0x1a, 0xa4, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xf0, 0x83
    db 0xc1, 0x0e, 0x2b, 0xc1, 0x50, 0xe8, 0x6c, 0x6b, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xec, 0x8d, 0x46
    db 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0xec, 0xa3, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe4, 0xff
    db 0x76, 0xee, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x0e, 0x2b
    db 0xc1, 0x2b, 0x46, 0xec, 0x50, 0xe8, 0x3c, 0x6b, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0x83, 0x7e
    db 0x0c, 0x03, 0x7e, 0x30, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0xc1, 0xf7, 0x6e, 0xee, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x49, 0x49, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7, 0xf9
    db 0x89, 0x46, 0xea, 0x8b, 0x46, 0xf0, 0x3b, 0x46, 0xee, 0x75, 0x09, 0x8b, 0x46, 0x0c, 0x48, 0x48
    db 0x48, 0x89, 0x46, 0xea, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76, 0xea, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x18, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0x4e, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x8e, 0xfa, 0x83, 0xc4, 0x10, 0xff, 0x76, 0xf0, 0xb8
    db 0x07, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46
    db 0xfc, 0x05, 0xe8, 0x00, 0x50, 0xe8, 0xd2, 0x72, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50
    db 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xf0, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xe8
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x6f, 0x6d, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05
    db 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xf0, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00
    db 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x4e, 0x00, 0x50, 0xe8, 0x81, 0x9b, 0x83, 0xc4, 0x08, 0x83, 0x7e
    db 0xe4, 0x00, 0x74, 0x03, 0xe9, 0xf7, 0xfe, 0xe9, 0x5c, 0x02, 0x83, 0x7e, 0xe8, 0x01, 0x75, 0x31
    db 0xb8, 0x01, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xf0
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xe8, 0x00, 0x50
    db 0xe8, 0x27, 0x71, 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xea, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xea, 0xeb
    db 0x34, 0xb8, 0x01, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0xf0, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xe8, 0x00
    db 0x50, 0xe8, 0xf6, 0x70, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0x0c
    db 'HHH;F'
    db 0xea, 0x7e, 0x03, 0xff, 0x46, 0xea, 0x8b, 0x46, 0x0c, 0x3d, 0x03, 0x00, 0x7e, 0x2c, 0xff, 0x76
    db 0xee, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x64, 0x00, 0xf7, 0x6e, 0xee, 0x05, 0x64, 0x00, 0x8b, 0x4e
    db 0x0c, 0x49, 0x49, 0x49, 0x99, 0xf7, 0xf9, 0xf7, 0x6e, 0xea, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9
    db 0x50, 0xe8, 0xc1, 0x69, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0
    db 0xff, 0x76, 0xea, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x18, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x4e, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x49, 0xf9, 0x83
    db 0xc4, 0x10, 0xff, 0x76, 0xf0, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa
    db 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xe8, 0x00, 0x50, 0xe8, 0x8d, 0x71, 0x83, 0xc4
    db 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50
    db 0x8b, 0x46, 0xfc, 0x05, 0xf0, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00
    db 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xe8, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x2a, 0x6c, 0x83
    db 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xf0, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x4e, 0x00, 0x50, 0xe8, 0x3c
    db 0x9a, 0x83, 0xc4, 0x08, 0xe9, 0x20, 0x01, 0xe9, 0x1d, 0x01, 0x83, 0x7e, 0x08, 0x00, 0x74, 0x48
    db 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x17, 0x00, 0x50
    db 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x98, 0x6f, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00
    db 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x17, 0x00, 0x50
    db 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x78, 0x6f, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50
    db 0x90, 0x01, 0x00, 0xc7, 0x46, 0xe6, 0x00, 0x00, 0xe9, 0xcc, 0x00, 0x83, 0x7e, 0x0a, 0x00, 0x74
    db 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x27, 0x00
    db 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x47, 0x6f, 0x83, 0xc4, 0x0a, 0xb8, 0x00
    db 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x27, 0x00
    db 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x27, 0x6f, 0x83, 0xc4, 0x0a, 0xc7, 0x06
    db 0x50, 0x90, 0x02, 0x00, 0xc7, 0x46, 0xe6, 0x00, 0x00, 0xeb, 0x7c

@..local.l156:
    mov ax, word [bp - 0x0016]
    add ax, word [bp - 0x0018]
    add ax, strict word 0xfffa
    mov word [bp - 0x0020], ax
    mov ax, word [bp - 0x0018]
    add ax, strict word 0xfffa
    mov word [data_9ca6], ax
    push word [bp - 0x0022]
    push word [bp - 0x0020]
    push word [bp - 0x0016]
    mov ax, 7
    push ax
    mov ax, 0x18
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x4e
    push ax
    push word [bp + 0x4]
    call math_loc_4775
    add sp, byte 0x10
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xe0
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x4e
    push ax
    db 0xe8, 0x36, 0x99 ; call 0xffffe8da
    add sp, byte 8
    jmp short @..local.l159
    jne short 0x4f47
    scasw
    popf
    scasw
    popf
    jmp short 0x4f4f
    out dx, al
    sahf
    aas
    lahf
@..local.l157:
    cmp ax, strict word 6
    jae short @..local.l158
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6010]
@..local.l158:
    jmp short @..local.l156
@..local.l159:
    cmp word [bp - 0x001a], byte 0
    je short @..local.l160
    jmp near @..local.l153
@..local.l160:
    mov ax, 1
    push ax
    push word [bp - 0x0038]
    db 0xe8, 0x82, 0x74 ; call 0xc459
    add sp, byte 4
    mov word [data_93d8], 0x8f
    mov ax, word [bp - 0x0020]
    mov word [data_904e], ax
    mov ax, word [data_9050]
    ret
api_idx_004c_2:
    mov ax, 0xffb4
    db 0xe8, 0x1b, 0xa4 ; call 0xfffff40b
    mov word [data_9ca8], 0
    mov word [bp - 0x0002], 0
@..api_idx_004c_2.l1:
    mov word [bp - 0x0004], 0
@..api_idx_004c_2.l2:
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0002]
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
    jg short @..api_idx_004c_2.l3
    jmp near @..api_idx_004c_2.l8
@..api_idx_004c_2.l3:
    mov ax, 0
    push ax
    push word [bx + 0x5c34]
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0xff, 0x65 ; call 0xb63c
    add sp, byte 8
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0002]
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
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 0x80
    je short @..api_idx_004c_2.l4
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, 0x16
    imul word [data_9ca8]
    add ax, 0x96a2
    push ax
    db 0xe8, 0xe7, 0xa2 ; call 0xfffff364
    add sp, byte 4
    jmp short @..api_idx_004c_2.l5
@..api_idx_004c_2.l4:
    mov ax, 0x16
    imul word [data_9ca8]
    add ax, 0x96a2
    push ax
    mov al, byte [bp - 0x0013]
    sub ah, ah
    add ax, 0x1770
    push ax
    db 0xe8, 0xa2, 0x64 ; call 0xb53b
    add sp, byte 4
@..api_idx_004c_2.l5:
    mov al, byte [bp - 0x0013]
    sub ah, ah
    mov cx, word [data_9ca8]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6986], ax
    mov ax, word [bp - 0x0002]
    mov word [bx - 0x69ae], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0002]
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
    mov al, byte [bx + 0x5c38]
    sub ah, ah
    mov bx, ax
    cmp byte [bx + 0x60e], 1
    jne short @..api_idx_004c_2.l6
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0002]
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
    mov al, byte [bx + 0x5c3a]
    sub ah, ah
    mov cx, word [data_9ca8]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x67a6], ax
    jmp short @..api_idx_004c_2.l7
@..api_idx_004c_2.l6:
    mov ax, word [data_9ca8]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x67a6], 0
@..api_idx_004c_2.l7:
    mov ax, word [bp - 0x0002]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x0004]
    mov cx, word [data_9ca8]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6356], ax
    inc word [data_9ca8]
@..api_idx_004c_2.l8:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0xa
    jge short @..api_idx_004c_2.l9
    jmp near @..api_idx_004c_2.l2
@..api_idx_004c_2.l9:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 2
    jge short @..api_idx_004c_2.l10
    jmp near @..api_idx_004c_2.l1
@..api_idx_004c_2.l10:
    ret
api_idx_0002_4:
    mov ax, 0xfffe
    db 0xe8, 0xaa, 0xa2 ; call 0xfffff40b
    dec word [data_9ca8]
    mov ax, word [bp + 0x4]
    mov word [bp - 0x0002], ax
    jmp short @..api_idx_0002_4.l2
@..api_idx_0002_4.l1:
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, 0x96b8
    push ax
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, 0x96a2
    push ax
    db 0xe8, 0xe0, 0xa1 ; call 0xfffff364
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6984]
    mov word [bx - 0x6986], ax
    mov ax, word [bx - 0x69ac]
    mov word [bx - 0x69ae], ax
    mov ax, word [bx - 0x67a4]
    mov word [bx - 0x67a6], ax
    mov ax, word [bx - 0x6354]
    mov word [bx - 0x6356], ax
    inc word [bp - 0x0002]
@..api_idx_0002_4.l2:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_9ca8]
    jl short @..api_idx_0002_4.l1
    ret
api_idx_0068:
    mov ax, 0xff98
    db 0xe8, 0x4a, 0xa2 ; call 0xfffff40b
    push word [bp + 0x4]
    call api_idx_004c_2
    pop cx
    cmp word [data_9ca8], byte 0
    jne short @..local.l161
    ret
@..local.l161:
    mov ax, 0
    push ax
    call api_idx_0006
    pop cx
    call loc_10b6
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    push word [data_9ca8]
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x5ea
    push ax
    call api_idx_0038_2
    add sp, byte 0x0c
    mov word [bp - 0x004c], ax
    mov ax, word [data_904e]
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x004c], byte 2
    je short @..local.l162
    cmp ax, strict word 0xffff
    jne short @..local.l163
@..local.l162:
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    db 0xe8, 0xb7, 0x96 ; call 0xffffe8da
    add sp, byte 8
    ret
@..local.l163:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6356]
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
    add ax, 0x5ea
    push ax
    call api_idx_0018_2
    add sp, byte 0x0c
    mov ax, word [bp - 0x004c]
    cmp word [bp - 0x004c], byte 1
    je short @..local.l164
    jmp near @..local.l166
@..local.l164:
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
    db 0xe8, 0x9f, 0x63 ; call 0xb63c
    add sp, byte 8
    cmp word [bp - 0x0028], byte 0
    je short @..local.l166
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
    jne short @..local.l165
    db 0xe8, 0xeb, 0x7b ; call 0xceb1
    mov word [data_9650], ax
    cmp ax, strict word 0xffff
    jne short @..local.l165
    mov word [bp - 0x0052], 0xffff
@..local.l165:
    cmp word [bp - 0x0052], byte 0xff
    je short @..local.l166
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    db 0xe8, 0xee, 0x95 ; call 0xffffe8da
    add sp, byte 8
    push word [bp - 0x0050]
    push word [bp - 0x004e]
    push word [bp + 0x4]
    call 0xca27
    add sp, byte 6
    push word [data_9650]
    push word [bp - 0x0054]
    push word [bp - 0x0052]
    push word [bp + 0x4]
    call api_idx_0008_3
    add sp, byte 8
@..local.l166:
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    db 0xe8, 0xb6, 0x95 ; call 0xffffe8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp + 0x4]
    db 0xe8, 0x09, 0x78 ; call 0xcb3a
    add sp, byte 4
    cmp word [bp - 0x004c], byte 1
    jne short @..local.l167
    mov ax, 0
    push ax
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
    mov ax, 9
    push ax
    push word [bp + 0x4]
    call api_idx_0006_3
    add sp, byte 0x0a
@..local.l167:
    ret
api_idx_0004_12:
    mov ax, 0xfffc
    db 0xe8, 0x94, 0xa0 ; call 0xfffff40b
    mov word [data_9cd2], 0
    mov word [bp - 0x0002], 0
@..api_idx_0004_12.l1:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x632c], byte 0
    jg short @..api_idx_0004_12.l2
    jmp near @..api_idx_0004_12.l4
@..api_idx_0004_12.l2:
    mov ax, word [bx - 0x632c]
    mov cx, word [data_9cd2]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x632c], ax
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, 0x99d6
    push ax
    mov ax, 0x16
    imul word [data_9cd2]
    add ax, 0x99d6
    push ax
    db 0xe8, 0xa9, 0x9f ; call 0xfffff364
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6396]
    mov cx, word [data_9cd2]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6396], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x66ca]
    mov dx, word [bx - 0x66c8]
    mov cx, word [data_9cd2]
    shl cx, 1
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x66c8], dx
    mov word [bx - 0x66ca], ax
    mov bx, word [bp - 0x0002]
    mov al, byte [bx - 0x66e8]
    mov bx, word [data_9cd2]
    mov byte [bx - 0x66e8], al
    mov bx, word [bp - 0x0002]
    mov al, byte [bx - 0x6648]
    mov bx, word [data_9cd2]
    mov byte [bx - 0x6648], al
    mov word [bp - 0x0004], 0
@..api_idx_0004_12.l3:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx - 0x677e]
    mov cx, word [data_9cd2]
    shl cx, 1
    add cx, word [bp - 0x0004]
    mov bx, cx
    mov byte [bx - 0x677e], al
    mov ax, word [bp - 0x0002]
    shl ax, 1
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx - 0x6742]
    mov bx, cx
    mov byte [bx - 0x6742], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 2
    jl short @..api_idx_0004_12.l3
    mov bx, word [bp - 0x0002]
    mov al, byte [bx - 0x6706]
    mov bx, word [data_9cd2]
    mov byte [bx - 0x6706], al
    inc word [data_9cd2]
@..api_idx_0004_12.l4:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x1e
    jge short @..api_idx_0004_12.l5
    jmp near @..api_idx_0004_12.l1
@..api_idx_0004_12.l5:
    mov ax, word [data_9cd2]
    mov word [bp - 0x0002], ax
    jmp short @..api_idx_0004_12.l7
@..api_idx_0004_12.l6:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x632c], 0
    inc word [bp - 0x0002]
@..api_idx_0004_12.l7:
    cmp word [bp - 0x0002], byte 0x1e
    jl short @..api_idx_0004_12.l6
    ret
math_loc_5497:
    mov ax, 0
    db 0xe8, 0x6e, 0x9f ; call 0xfffff40b
    cmp word [bp + 0x4], strict word 0x190
    jl short @..math_loc_5497.l1
    cmp word [bp + 0x4], strict word 0x19b
    jge short @..math_loc_5497.l1
    mov ax, 1
    jmp short @..math_loc_5497.l2
@..math_loc_5497.l1:
    mov ax, 0
@..math_loc_5497.l2:
    ret
api_idx_0002_5:
    mov ax, 0xfffe
    db 0xe8, 0x51, 0x9f ; call 0xfffff40b
    mov al, byte [bp + 0x4]
    push ax
    mov ax, 6
    imul word [bp + 0x8]
    mov bx, ax
    pop ax
    mov byte [bx - 0x7b5a], al
    mov byte [bx - 0x7b59], 0
    mov ax, 1
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8502
    push ax
    db 0xe8, 0x5d, 0x97 ; call 0xffffec41
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x850a
    push ax
    db 0xe8, 0x46, 0x97 ; call 0xffffec41
    add sp, byte 6
    mov word [bp - 0x0002], 0
@..api_idx_0002_5.l1:
    mov ax, 0
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp - 0x0002]
    add ax, 0x8504
    push ax
    db 0xe8, 0x2a, 0x97 ; call 0xffffec41
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x16
    jl short @..api_idx_0002_5.l1
    mov ax, 1
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8504
    push ax
    db 0xe8, 0x08, 0x97 ; call 0xffffec41
    add sp, byte 6
    cmp word [bp + 0x6], byte 0xff
    je short @..api_idx_0002_5.l2
    mov ax, 0
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x8502
    push ax
    db 0xe8, 0xeb, 0x96 ; call 0xffffec41
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x8504
    push ax
    db 0xe8, 0xd4, 0x96 ; call 0xffffec41
    add sp, byte 6
@..api_idx_0002_5.l2:
    ret
api_idx_0008_4:
    mov ax, 0xfff8
    db 0xe8, 0x94, 0x9e ; call 0xfffff40b
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x632c]
    mov word [bp - 0x0004], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    push ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    add ax, 0x9882
    push ax
    db 0xe8, 0xd4, 0x96 ; call 0xffffec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0008_4.l1
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2b]
    sub ah, ah
    push ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    add ax, 0x98be
    push ax
    db 0xe8, 0xb2, 0x96 ; call 0xffffec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0008_4.l1
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2c]
    sub ah, ah
    push ax
    mov ax, word [bp + 0x6]
    add ax, 0x98fa
    push ax
    db 0xe8, 0x92, 0x96 ; call 0xffffec74
    add sp, byte 4
    test ax, ax
    jne short @..local.l168
@..api_idx_0008_4.l1:
    mov ax, 0x9b
    push ax
    mov ax, 0x49
    push ax
    mov ax, 0x5e2
    push ax
    call api_idx_0054_2
    add sp, byte 6
    mov ax, 0
    ret
@..local.l168:
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call api_idx_0004_7
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..local.l169
    mov ax, 0x9b
    push ax
    mov ax, 0x49
    push ax
    mov ax, 0x5e1
    push ax
    call api_idx_0054_2
    add sp, byte 6
    mov ax, 0
    ret
@..local.l169:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c08]
    mov dx, word [bx + 0x5c0a]
    mov cx, word [bp + 0x6]
    shl cx, 1
    shl cx, 1
    mov bx, cx
    mov cx, word [bx - 0x66ca]
    mov bx, word [bx - 0x66c8]
    cmp dx, bx
    jg short @..local.l170
    jne short @..local.l171
    cmp ax, cx
    jb short @..local.l171
@..local.l170:
    jmp short @..local.l172
@..local.l171:
    mov ax, 0x9b
    push ax
    mov ax, 0x49
    push ax
    mov ax, 0x5df
    push ax
    call api_idx_0054_2
    add sp, byte 6
    mov ax, 0
    ret
@..local.l172:
    mov ax, 0x9b
    push ax
    mov ax, 0x49
    push ax
    mov ax, 0x5e3
    push ax
    call api_idx_0054_2
    add sp, byte 6
    push word [bp - 0x0004]
    call math_loc_5497
    pop cx
    test ax, ax
    je short @..local.l173
    mov ax, word [bp - 0x0004]
    add ax, 0xfe70
    push ax
    mov al, byte [data_91c6]
    cbw
    push ax
    mov ax, 0x15
    push ax
    call api_idx_0002_5
    add sp, byte 6
@..local.l173:
    mov ax, word [bp - 0x0002]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], dx
    mov ax, 1
    push ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x6396]
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0006]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0008]
    mov cx, ax
    pop ax
    add ax, cx
    add ax, 0x5c34
    push ax
    push word [bp - 0x0004]
    push word [bp + 0x4]
    call api_idx_004c
    add sp, byte 0x0a
    push word [bp + 0x4]
    call api_idx_004c_2
    pop cx
    mov ax, word [bp + 0x6]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x66ca]
    mov dx, word [bx - 0x66c8]
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop dx
    pop ax
    sub word [bx + 0x5c08], ax
    sbb word [bx + 0x5c0a], dx
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x632c], 0
    call api_idx_0004_12
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0004]
    mov ax, 4
    push ax
    push word [bp + 0x4]
    call api_idx_0006_3
    add sp, byte 0x0a
    ret
api_idx_0006_4:
    mov ax, 0xfffa
    db 0xe8, 0xc7, 0x9c ; call 0xfffff40b
    call loc_10b6
    mov word [bp - 0x0006], 0
@..api_idx_0006_4.l1:
    push word [bp - 0x0006]
    push word [data_9cd2]
    mov ax, 1
    push ax
    push ax
    mov ax, 0x629
    push ax
    push word [bp + 0x4]
    call api_idx_0038_3
    add sp, byte 0x0c
    mov word [bp - 0x0002], ax
    mov ax, word [data_904e]
    mov word [bp - 0x0004], ax
    cmp word [bp - 0x0002], byte 1
    jne short @..local.l175
    cmp ax, strict word 0xffff
    je short @..local.l175
    push ax
    push word [bp + 0x4]
    call api_idx_0008_4
    add sp, byte 4
    test ax, ax
    je short @..local.l174
    call loc_47b9
    mov ax, 1
    ret
@..local.l174:
    mov ax, word [bp - 0x0004]
    sub ax, word [data_9ca6]
    mov word [bp - 0x0006], ax
@..local.l175:
    mov word [data_93d8], 0x8d
    call loc_10b6
    mov word [data_93d8], 0x8f
    cmp word [bp - 0x0002], byte 2
    je short @..local.l176
    cmp word [data_9cd2], byte 0
    jg short @..api_idx_0006_4.l1
@..local.l176:
    call loc_47b9
    mov ax, 0
    ret
api_idx_0002_6:
    mov ax, 0xfffe
    db 0xe8, 0x4a, 0x9c ; call 0xfffff40b
@..api_idx_0002_6.l1:
    mov ax, 0x2f
    push ax
    push word [bp + 0x4]
    call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short @..api_idx_0002_6.l2
    mov bx, word [bp + 0x4]
    mov si, ax
    mov byte [bx + si], 0x20
    jmp short @..api_idx_0002_6.l1
@..api_idx_0002_6.l2:
    ret
api_idx_005e_2:
    mov ax, 0xffa2
    db 0xe8, 0x24, 0x9c ; call 0xfffff40b
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6356]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x000a], ax
    mov word [bp - 0x000c], dx
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x000a]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x000c]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c34]
    mov word [bp - 0x0008], ax
    mov ax, 0
    push ax
    push word [bp - 0x0008]
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0x05, 0x5e ; call 0xb63c
    add sp, byte 8
    mov al, byte [bp - 0x0038]
    sub ah, ah
    push ax
    mov al, byte [bp - 0x0037]
    sub ah, ah
    mov cx, ax
    pop ax
    imul cx
    add ax, word [bp - 0x003a]
    mov word [bp - 0x0004], ax
    cmp ax, strict word 1
    jge short @..api_idx_005e_2.l1
    mov word [bp - 0x0004], 1
@..api_idx_005e_2.l1:
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x000a]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x000c]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3a]
    sub ah, ah
    mov word [bp - 0x0006], ax
    cmp ax, strict word 1
    jge short @..api_idx_005e_2.l2
    mov word [bp - 0x0006], 1
@..api_idx_005e_2.l2:
    mov al, byte [bp - 0x001c]
    sub ah, ah
    mov bx, ax
    cmp byte [bx + 0x60e], 1
    jne short @..api_idx_005e_2.l3
    mov ax, word [bp - 0x0006]
    cwd
    push ax
    push dx
    mul word [bp - 0x003c]
    mov cx, ax
    pop ax
    mul word [bp - 0x003e]
    add cx, ax
    pop ax
    mul word [bp - 0x003e]
    add dx, cx
    mov word [bp - 0x003c], dx
    mov word [bp - 0x003e], ax
    jmp short @..api_idx_005e_2.l4
@..api_idx_005e_2.l3:
    mov ax, word [bp - 0x003e]
    mov dx, word [bp - 0x003c]
    push ax
    xchg dx, ax
    mov bx, 0x64
    mul bx
    mov cx, ax
    pop ax
    mul bx
    add dx, cx
    push ax
    push dx
    mov ax, word [bp - 0x0004]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    call 0xf99f
    push ax
    push dx
    mov ax, word [bp - 0x0006]
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
    mov cx, 0x64
    mov bx, 0
    db 0xe8, 0x9d, 0xa0 ; call 0xfffff99f
    mov word [bp - 0x003c], dx
    mov word [bp - 0x003e], ax
@..api_idx_005e_2.l4:
    push word [bp - 0x0008]
    call math_loc_5497
    pop cx
    test ax, ax
    je short @..api_idx_005e_2.l5
    mov ax, word [bp - 0x003e]
    mov dx, word [bp - 0x003c]
    jmp short @..api_idx_005e_2.l6
@..api_idx_005e_2.l5:
    mov ax, word [data_91ac]
    cwd
    push ax
    push dx
    mul word [bp - 0x003c]
    mov cx, ax
    pop ax
    mul word [bp - 0x003e]
    add cx, ax
    pop ax
    mul word [bp - 0x003e]
    add dx, cx
    mov cx, 0x64
    mov bx, 0
    db 0xe8, 0x64, 0xa0 ; call 0xfffff99f
@..api_idx_005e_2.l6:
    mov word [bp - 0x003c], dx
    mov word [bp - 0x003e], ax
    push word [bp - 0x0008]
    call math_loc_5497
    pop cx
    test ax, ax
    je short @..api_idx_005e_2.l7
    cmp byte [data_91c6], 0xff
    je short @..api_idx_005e_2.l8
@..api_idx_005e_2.l7:
    push word [bp - 0x0008]
    call math_loc_5497
    pop cx
    test ax, ax
    jne short @..local.l177
    mov al, byte [bp - 0x001d]
    sub ah, ah
    test ax, 2
    je short @..local.l177
    mov ax, word [bp - 0x0008]
    cmp ax, word [data_91ae]
    je short @..local.l177
@..api_idx_005e_2.l8:
    mov ax, 0x98
    push ax
    mov ax, 0x65
    push ax
    mov ax, 0x5dd
    push ax
    call api_idx_0054_2
    add sp, byte 6
    mov ax, 0
    ret
@..local.l177:
    cmp word [bp - 0x003c], byte 0
    jg short @..local.l178
    jne short @..local.l179
    cmp word [bp - 0x003e], byte 0
    jbe short @..local.l179
@..local.l178:
    jmp short @..local.l180
@..local.l179:
    mov ax, word [bp - 0x0008]
    cmp ax, word [data_91ae]
    jne short @..local.l181
@..local.l180:
    cmp word [bp - 0x0008], strict word 0x19a
    jne short @..local.l182
@..local.l181:
    mov ax, 0x98
    push ax
    mov ax, 0x65
    push ax
    mov ax, 0x5de
    push ax
    call api_idx_0054_2
    add sp, byte 6
    mov ax, 0
    ret
@..local.l182:
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x000a]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x000c]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 1
    je short @..local.l183
    mov ax, 0x98
    push ax
    mov ax, 0x65
    push ax
    mov ax, 0x5dc
    push ax
    call api_idx_0054_2
    add sp, byte 6
    mov ax, 0
    ret
@..local.l183:
    mov ax, 0x95a8
    push ax
    mov ax, 0x633
    push ax
    db 0xe8, 0x32, 0x5b ; call 0xb53b
    add sp, byte 4
    mov ax, 0x95fa
    push ax
    push word [bp - 0x003c]
    push word [bp - 0x003e]
    db 0xe8, 0xc2, 0x57 ; call 0xb1db
    add sp, byte 6
    mov ax, 0x24
    push ax
    mov ax, 0x95fa
    push ax
    mov ax, 0x95a8
    push ax
    db 0xe8, 0xd5, 0x58 ; call 0xb300
    add sp, byte 6
    mov ax, 0x95fa
    push ax
    mov ax, 0x634
    push ax
    db 0xe8, 0x02, 0x5b ; call 0xb53b
    add sp, byte 4
    mov ax, 0x16
    imul word [bp + 0x6]
    add ax, 0x96a2
    push ax
    mov ax, 0x9d10
    push ax
    db 0xe8, 0x17, 0x99 ; call 0xfffff364
    add sp, byte 4
    mov ax, 0x9d10
    push ax
    call api_idx_0002_6
    pop cx
    mov ax, 0x24
    push ax
    mov ax, 0x9d10
    push ax
    mov ax, 0x95fa
    push ax
    db 0xe8, 0x99, 0x58 ; call 0xb300
    add sp, byte 6
    mov word [bp - 0x0002], 0
@..local.l184:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x005e], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 1
    jle short @..local.l184
    mov word [bp - 0x005a], 0xffff
    lea ax, word [bp - 0x005e]
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
    mov ax, 0xb5
    push ax
    mov ax, 0x4a
    push ax
    mov ax, 0x635
    push ax
    mov ax, 0x95fa
    push ax
    mov ax, 0x95a8
    push ax
    call math_loc_1d39
    add sp, byte 0x1c
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x0002], byte 0
    je short @..local.l185
    jmp near @..local.l187
@..local.l185:
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x000a]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x000c]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c34]
    mov word [bp - 0x0008], ax
    push ax
    call math_loc_5497
    pop cx
    test ax, ax
    je short @..local.l186
    mov ax, word [bp - 0x0008]
    add ax, 0xfe70
    push ax
    mov ax, 0x15
    push ax
    mov al, byte [data_91c6]
    cbw
    push ax
    call api_idx_0002_5
    add sp, byte 6
@..local.l186:
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    push word [bp + 0x4]
    call 0xc9e8
    add sp, byte 6
    push word [bp + 0x6]
    call api_idx_0002_4
    pop cx
    mov ax, word [bp - 0x003e]
    mov dx, word [bp - 0x003c]
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop dx
    pop ax
    add word [bx + 0x5c08], ax
    adc word [bx + 0x5c0a], dx
    mov ax, 1
    push ax
    push word [bp + 0x4]
    db 0xe8, 0xe3, 0x6f ; call 0xcb3a
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0008]
    mov ax, 3
    push ax
    push word [bp + 0x4]
    call api_idx_0006_3
    add sp, byte 0x0a
    ret
@..local.l187:
    mov ax, 0
    ret
api_idx_004e:
    mov ax, 0xffb2
    db 0xe8, 0x91, 0x98 ; call 0xfffff40b
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6356]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0006], dx
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0004]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0006]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c34]
    mov word [bp - 0x0002], ax
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    lea ax, word [bp - 0x004e]
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0x72, 0x5a ; call 0xb63c
    add sp, byte 8
    push word [bp - 0x0002]
    call math_loc_5497
    pop cx
    test ax, ax
    je short @..api_idx_004e.l1
    cmp byte [data_91c6], 0xff
    je short @..api_idx_004e.l2
@..api_idx_004e.l1:
    push word [bp - 0x0002]
    call math_loc_5497
    pop cx
    test ax, ax
    jne short @..local.l188
    mov al, byte [bp - 0x0017]
    sub ah, ah
    test ax, 2
    je short @..local.l188
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_91ae]
    je short @..local.l188
@..api_idx_004e.l2:
    mov ax, 0x98
    push ax
    mov ax, 0x65
    push ax
    mov ax, 0x5dd
    push ax
    call api_idx_0054_2
    add sp, byte 6
    mov ax, 0
    ret
@..local.l188:
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0004]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0006]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 1
    je short @..local.l189
    mov ax, 0x98
    push ax
    mov ax, 0x65
    push ax
    mov ax, 0x5dc
    push ax
    call api_idx_0054_2
    add sp, byte 6
    mov ax, 0
    ret
@..local.l189:
    mov ax, 5
    push ax
    db 0xe8, 0x4e, 0x5b ; call 0xb7a9
    pop cx
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0038]
    mov dx, word [bp - 0x0036]
    mov cx, 0xa
    mov bx, 0
    db 0xe8, 0x30, 0x9d ; call 0xfffff99f
    push ax
    push dx
    mov al, byte [data_91c5]
    sub ah, ah
    inc ax
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    db 0xe8, 0x1e, 0x9d ; call 0xfffff99f
    push dx
    push ax
    push word [bp + 0x4]
    call math_loc_85f9
    add sp, byte 8
    push word [bp - 0x0002]
    call math_loc_5497
    pop cx
    test ax, ax
    je short @..local.l190
    mov ax, word [bp - 0x0002]
    add ax, 0xfe70
    push ax
    mov ax, 0x15
    push ax
    mov al, byte [data_91c6]
    cbw
    push ax
    call api_idx_0002_5
    add sp, byte 6
@..local.l190:
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    push word [bp + 0x4]
    db 0xe8, 0x2f, 0x6d ; call 0xc9e8
    add sp, byte 6
    push word [bp + 0x6]
    call api_idx_0002_4
    pop cx
    mov ax, 0x98
    push ax
    mov ax, 0x65
    push ax
    mov ax, 0x5e0
    push ax
    call api_idx_0054_2
    add sp, byte 6
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    db 0xe8, 0xf2, 0x8b ; call 0xffffe8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp + 0x4]
    db 0xe8, 0x45, 0x6e ; call 0xcb3a
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0002]
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call api_idx_0006_3
    add sp, byte 0x0a
    ret
api_idx_0006_5:
    mov ax, 0xfffa
    db 0xe8, 0xf7, 0x96 ; call 0xfffff40b
    call loc_10b6
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    push word [data_9ca8]
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x6]
    call api_idx_0038_2
    add sp, byte 0x0c
    mov word [bp - 0x0006], ax
    mov ax, word [data_904e]
    mov word [bp - 0x0002], ax
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0006]
    cmp ax, word [bp + 0x8]
    jne short @..api_idx_0006_5.l2
    cmp word [bp - 0x0002], byte 0xff
    je short @..api_idx_0006_5.l2
    cmp word [bp + 0xa], byte 0
    jne short @..api_idx_0006_5.l1
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_005e_2
    add sp, byte 4
    mov word [bp - 0x0004], ax
    jmp short @..api_idx_0006_5.l2
@..api_idx_0006_5.l1:
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_004e
    add sp, byte 4
    mov word [bp - 0x0004], ax
@..api_idx_0006_5.l2:
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    db 0xe8, 0x4e, 0x8b ; call 0xffffe8da
    add sp, byte 8
    mov ax, word [bp - 0x0004]
    ret
api_idx_0054_4:
    mov ax, 0xffac
    db 0xe8, 0x72, 0x96 ; call 0xfffff40b
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    call api_idx_0054
    mov ax, 1
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0xa0
    push ax
    push word [bp + 0x8]
    call math_loc_0b30
    add sp, byte 8
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c0a]
    push word [bx + 0x5c08]
    db 0xe8, 0x0b, 0x54 ; call 0xb1db
    add sp, byte 6
    push word [bp + 0xa]
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0x50, 0x95 ; call 0xfffff32d
    add sp, byte 4
    mov ax, 0xb3
    push ax
    mov ax, 0x9a
    push ax
    mov ax, 0xa0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call math_loc_0b30
    add sp, byte 8
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    jmp short @..api_idx_0054_4.l3
@..api_idx_0054_4.l1:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0xe]
    cmp word [bx + si], byte 0
    je short @..api_idx_0054_4.l2
    inc word [bp - 0x0002]
@..api_idx_0054_4.l2:
    inc word [bp - 0x0004]
@..api_idx_0054_4.l3:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp + 0xc]
    jle short @..api_idx_0054_4.l1
    push word [bp + 0xe]
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 3
    cmp word [bp - 0x0002], byte 5
    jge short @..api_idx_0054_4.l4
    mov ax, 2
@..api_idx_0054_4.l4:
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
    push word [bp + 0x6]
    call math_loc_1821
    add sp, byte 0x18
    mov word [bp - 0x0004], ax
    mov ax, 0
    push ax
    call api_idx_0006
    pop cx
    mov ax, 1
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0xa0
    push ax
    push word [bp + 0x8]
    call math_loc_0b30
    add sp, byte 8
    mov ax, 0xb3
    push ax
    mov ax, 0x9a
    push ax
    mov ax, 0xa0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call math_loc_0b30
    add sp, byte 8
    mov ax, word [bp - 0x0004]
    ret
api_idx_0072:
    mov ax, 0xff8e
    db 0xe8, 0x6f, 0x95 ; call 0xfffff40b
    mov word [bp - 0x0004], 0
@..api_idx_0072.l1:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0018], 1
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 4
    jle short @..api_idx_0072.l1
    mov al, byte [data_91cb]
    sub ah, ah
    test ax, 2
    je short @..api_idx_0072.l2
    mov word [bp - 0x0018], 0
    mov word [bp - 0x0016], 0
@..api_idx_0072.l2:
    mov word [bp - 0x000e], 0xffff
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x0068]
    push ax
    db 0xe8, 0x80, 0x94 ; call 0xfffff364
    add sp, byte 4
    lea ax, word [bp - 0x0072]
    push ax
    mov ax, 0x5e8
    push ax
    db 0xe8, 0x49, 0x56 ; call 0xb53b
    add sp, byte 4
    push word [bp + 0x4]
    call api_idx_004c_2
    pop cx
@..api_idx_0072.l3:
    cmp word [data_9cd2], byte 0
    jg short @..api_idx_0072.l4
    mov word [bp - 0x0018], 0
@..api_idx_0072.l4:
    cmp word [data_9ca8], byte 0
    jne short @..api_idx_0072.l5
    mov word [bp - 0x0016], 0
    mov word [bp - 0x0014], 0
@..api_idx_0072.l5:
    lea ax, word [bp - 0x0018]
    push ax
    mov ax, 4
    push ax
    lea ax, word [bp - 0x0072]
    push ax
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 0x5f0
    push ax
    push word [bp + 0x4]
    call api_idx_0054_4
    add sp, byte 0x0c
    mov word [bp - 0x0004], ax
    jmp near @..api_idx_0072.l12
@..api_idx_0072.l6:
    push word [bp + 0x4]
    call api_idx_0006_4
    pop cx
    jmp near @..api_idx_0072.l13
@..api_idx_0072.l7:
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x62c
    push ax
    push word [bp + 0x4]
    call api_idx_0006_5
    add sp, byte 8
    test ax, ax
    je short @..api_idx_0072.l8
    mov word [bp - 0x0004], 4
@..api_idx_0072.l8:
    jmp short @..api_idx_0072.l13
@..api_idx_0072.l9:
    mov ax, 1
    push ax
    push ax
    mov ax, 0x62f
    push ax
    push word [bp + 0x4]
    call api_idx_0006_5
    add sp, byte 8
    test ax, ax
    je short @..api_idx_0072.l10
    mov word [bp - 0x0004], 4
@..api_idx_0072.l10:
    jmp short @..api_idx_0072.l13
@..api_idx_0072.l11:
    push word [bp + 0x4]
    call api_idx_0006_7
    pop cx
    mov ax, 2
    push ax
    call api_idx_0006
    pop cx
    mov ax, 1
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0xa0
    push ax
    lea ax, word [bp - 0x0068]
    push ax
    call math_loc_0b30
    add sp, byte 8
    mov ax, 2
    push ax
    call loc_0c96
    pop cx
    jmp short @..api_idx_0072.l13
@..api_idx_0072.l12:
    cmp ax, strict word 0
    je short @..api_idx_0072.l6
    cmp ax, strict word 1
    je short @..api_idx_0072.l7
    cmp ax, strict word 2
    je short @..api_idx_0072.l9
    cmp ax, strict word 3
    je short @..api_idx_0072.l11
@..api_idx_0072.l13:
    cmp word [bp - 0x0004], byte 4
    je short @..api_idx_0072.l14
    jmp near @..api_idx_0072.l3
@..api_idx_0072.l14:
    ret
api_idx_005e_3:
    mov ax, 0xffa2
    db 0xe8, 0x35, 0x94 ; call 0xfffff40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    push ax
    mov al, byte [data_91c5]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    mov cx, 5
    imul cx
    push ax
    mov al, byte [bx + 0x5d7b]
    sub ah, ah
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0002], ax
    cmp byte [bx + 0x5e2d], 3
    jne short @..api_idx_005e_3.l1
    mov al, byte [bx + 0x5d68]
    sub ah, ah
    shl ax, 1
    add word [bp - 0x0002], ax
    jmp short @..api_idx_005e_3.l3
@..api_idx_005e_3.l1:
    mov al, byte [bx + 0x5e2d]
    cmp al, 4
    je short @..api_idx_005e_3.l2
    cmp al, 6
    je short @..api_idx_005e_3.l2
    cmp al, 0xd
    jne short @..api_idx_005e_3.l3
@..api_idx_005e_3.l2:
    mov al, byte [bx + 0x5d68]
    sub ah, ah
    add word [bp - 0x0002], ax
@..api_idx_005e_3.l3:
    mov al, byte [bx + 0x5d6a]
    sub ah, ah
    push ax
    add bx, word [data_9136]
    mov al, byte [bx + 0x5db2]
    cbw
    add ax, word [data_964e]
    mov cx, 4
    cwd
    idiv cx
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp - 0x0002]
    add ax, strict word 0xfff6
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0
    jl short @..api_idx_005e_3.l4
    cmp word [data_9136], byte 0x30
    jne short @..api_idx_005e_3.l5
@..api_idx_005e_3.l4:
    mov word [bp - 0x0002], 0
@..api_idx_005e_3.l5:
    cmp word [bp - 0x0002], byte 0x5f
    jle short @..api_idx_005e_3.l6
    mov word [bp - 0x0002], 0x5f
@..api_idx_005e_3.l6:
    mov ax, 0x64
    push ax
    db 0xe8, 0x2a, 0x57 ; call 0xb7a9
    pop cx
    add ax, word [data_9d60]
    mov word [bp - 0x0004], ax
    mov ax, 5
    push ax
    db 0xe8, 0x1b, 0x57 ; call 0xb7a9
    pop cx
    add ax, word [data_9d60]
    add ax, strict word 0xa
    mov word [data_9d60], ax
    lea ax, word [bp - 0x005e]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2c]
    sub ah, ah
    add ax, 0x622
    push ax
    db 0xe8, 0x89, 0x54 ; call 0xb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x005e]
    push ax
    db 0xe8, 0x36, 0x52 ; call 0xb300
    add sp, byte 6
    mov ax, 0x55
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    lea ax, word [bp - 0x005e]
    push ax
    call math_loc_130b
    add sp, byte 8
    mov word [bp - 0x000a], 0
@..api_idx_005e_3.l7:
    push word [data_9cd2]
    db 0xe8, 0xba, 0x56 ; call 0xb7a9
    pop cx
    cmp ax, word [bp - 0x000a]
    jle short @..api_idx_005e_3.l8
    inc word [bp - 0x000a]
    jmp short @..api_idx_005e_3.l7
@..api_idx_005e_3.l8:
    mov ax, 0x64
    push ax
    db 0xe8, 0xa8, 0x56 ; call 0xb7a9
    pop cx
    push ax
    mov al, byte [data_91c5]
    sub ah, ah
    mov cx, ax
    inc ax
    mov cx, ax
    pop ax
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    cwd
    cmp dx, word [data_91b8]
    jl short @..api_idx_005e_3.l9
    jne short @..api_idx_005e_3.l10
    cmp ax, word [data_91b6]
    ja short @..api_idx_005e_3.l10
@..api_idx_005e_3.l9:
    jmp short @..api_idx_005e_3.l11
@..api_idx_005e_3.l10:
    mov ax, word [data_91b6]
    mov word [bp - 0x0006], ax
@..api_idx_005e_3.l11:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jl short @..api_idx_005e_3.l12
    jmp near @..local.l194
@..api_idx_005e_3.l12:
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call api_idx_0004_7
    add sp, byte 4
    mov word [bp - 0x0008], ax
    call api_idx_0004_12
    mov ax, 3
    push ax
    mov ax, 0xf
    push ax
    push word [bp + 0x4]
    call math_loc_8662
    add sp, byte 6
    cmp word [bp - 0x0008], byte 0xff
    je short @..api_idx_005e_3.l13
    cmp word [data_9cd2], byte 0
    jle short @..api_idx_005e_3.l13
    mov ax, word [bp - 0x000a]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x632c]
    call math_loc_5497
    pop cx
    test ax, ax
    jne short @..api_idx_005e_3.l13
    mov ax, 0x64
    push ax
    db 0xe8, 0x23, 0x56 ; call 0xb7a9
    pop cx
    cmp ax, strict word 0x21
    jge short @..local.l192
@..api_idx_005e_3.l13:
    cmp word [bp - 0x0006], byte 0
    jg short @..api_idx_005e_3.l14
    lea ax, word [bp - 0x005e]
    push ax
    mov ax, 0x624
    push ax
    db 0xe8, 0x9e, 0x53 ; call 0xb53b
    add sp, byte 4
    jmp short @..local.l191
@..api_idx_005e_3.l14:
    mov ax, word [bp - 0x0006]
    cwd
    sub word [data_91b6], ax
    sbb word [data_91b8], dx
    mov ax, word [bp - 0x0006]
    cwd
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop dx
    pop ax
    add word [bx + 0x5c08], ax
    adc word [bx + 0x5c0a], dx
    lea ax, word [bp - 0x005e]
    push ax
    mov ax, 0x626
    push ax
    db 0xe8, 0x6a, 0x53 ; call 0xb53b
    add sp, byte 4
@..local.l191:
    jmp short @..local.l193
@..local.l192:
    mov ax, word [bp - 0x0008]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x000e], dx
    mov ax, 0
    push ax
    mov ax, word [bp - 0x000a]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x6396]
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
    add ax, 0x5c34
    push ax
    push word [bx - 0x632c]
    push word [bp + 0x4]
    call api_idx_004c
    add sp, byte 0x0a
    lea ax, word [bp - 0x005e]
    push ax
    mov ax, 0x625
    push ax
    db 0xe8, 0x0d, 0x53 ; call 0xb53b
    add sp, byte 4
    mov ax, word [bp - 0x000a]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x632c], 0
    call api_idx_0004_12
@..local.l193:
    jmp near @..local.l198
@..local.l194:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    cmp ax, word [bp - 0x0004]
    jl short @..local.l195
    cmp word [bp - 0x0004], byte 0x5f
    jge short @..local.l195
    jmp near @..local.l197
@..local.l195:
    lea ax, word [bp - 0x005e]
    push ax
    mov ax, 0x628
    push ax
    db 0xe8, 0xd9, 0x52 ; call 0xb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x005e]
    push ax
    db 0xe8, 0x86, 0x50 ; call 0xb300
    add sp, byte 6
    mov ax, 0x16
    push ax
    mov ax, 1
    push ax
    push ax
    lea ax, word [bp - 0x005e]
    push ax
    call math_loc_130b
    add sp, byte 8
    cmp word [data_9136], byte 0x30
    je short @..local.l196
    mov ax, 0xf
    push ax
    db 0xe8, 0x0b, 0x55 ; call 0xb7a9
    pop cx
    mov cx, ax
    add ax, strict word 0xf
    mov cx, ax
    mov ax, 0
    sub ax, cx
    push ax
    mov ax, 0x19
    push ax
    db 0xe8, 0xf6, 0x54 ; call 0xb7a9
    pop cx
    mov cx, ax
    add ax, strict word 0x19
    mov cx, ax
    mov ax, 0
    sub ax, cx
    push ax
    push word [bp + 0x4]
    call math_loc_85f9
    add sp, byte 6
@..local.l196:
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 0xa
    push ax
    push word [bp + 0x4]
    call api_idx_0006_3
    add sp, byte 0x0a
    mov ax, 0xffff
    ret
@..local.l197:
    lea ax, word [bp - 0x005e]
    push ax
    mov ax, 0x624
    push ax
    db 0xe8, 0x4f, 0x52 ; call 0xb53b
    add sp, byte 4
@..local.l198:
    mov ax, 0x5e
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x005e]
    push ax
    db 0xe8, 0xfc, 0x4f ; call 0xb300
    add sp, byte 6
    mov ax, 0x55
    push ax
    mov ax, 1
    push ax
    push ax
    lea ax, word [bp - 0x005e]
    push ax
    call math_loc_130b
    add sp, byte 8
    mov ax, 0
    ret
api_idx_00d2:
    mov ax, 0xff2e
    db 0xe8, 0xe7, 0x90 ; call 0xfffff40b
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x00c4]
    push ax
    db 0xe8, 0x2e, 0x90 ; call 0xfffff364
    add sp, byte 4
    lea ax, word [bp - 0x00ce]
    push ax
    mov ax, 0x5e8
    push ax
    db 0xe8, 0xf6, 0x51 ; call 0xb53b
    add sp, byte 4
    push word [bp + 0x4]
    call api_idx_004c_2
    pop cx
    mov word [bp - 0x0002], 0
    mov word [bp - 0x005c], 1
@..api_idx_00d2.l1:
    mov word [bp - 0x0060], 0
@..api_idx_00d2.l2:
    mov ax, word [bp - 0x0060]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0074], 1
    inc word [bp - 0x0060]
    mov ax, word [bp - 0x0060]
    cmp ax, strict word 5
    jle short @..api_idx_00d2.l2
    mov word [bp - 0x0068], 0xffff
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp word [bx + 0x5c0a], byte 0
    jne short @..api_idx_00d2.l3
    cmp word [bx + 0x5c08], byte 0
@..api_idx_00d2.l3:
    jne short @..api_idx_00d2.l4
    mov word [bp - 0x0072], 0
@..api_idx_00d2.l4:
    cmp word [data_9ca8], byte 0
    jne short @..api_idx_00d2.l5
    mov word [bp - 0x006e], 0
@..api_idx_00d2.l5:
    lea ax, word [bp - 0x0074]
    push ax
    mov ax, 5
    push ax
    lea ax, word [bp - 0x00ce]
    push ax
    lea ax, word [bp - 0x00c4]
    push ax
    mov ax, 0x5d2
    push ax
    push word [bp + 0x4]
    call api_idx_0054_4
    add sp, byte 0x0c
    mov word [bp - 0x0060], ax
    jmp near @..local.l200
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d6a]
    sub ah, ah
    push ax
    mov al, byte [bx + 0x5d88]
    sub ah, ah
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, word [bx + 0x5c18]
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    pop ax
    add ax, cx
    add word [bp - 0x0002], ax
    cmp byte [bx + 0x5e2d], 0xa
    je short @..api_idx_00d2.l6
    cmp byte [bx + 0x5e2d], 9
    jne short @..api_idx_00d2.l7
@..api_idx_00d2.l6:
    mov al, byte [bx + 0x5d6a]
    sub ah, ah
    add word [bp - 0x0002], ax
@..api_idx_00d2.l7:
    mov word [bp - 0x005c], 0
    jmp near @..local.l201
    mov word [data_9d62], 1
    mov word [bp - 0x005e], 0
    jmp short @..api_idx_00d2.l10
@..api_idx_00d2.l8:
    push word [bp - 0x005e]
    call 0xca85
    pop cx
    test ax, ax
    je short @..api_idx_00d2.l9
    mov ax, 0x248
    imul word [bp - 0x005e]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    add word [bp - 0x0002], ax
@..api_idx_00d2.l9:
    inc word [bp - 0x005e]
@..api_idx_00d2.l10:
    mov ax, word [bp - 0x005e]
    cmp ax, word [data_69c8]
    jl short @..api_idx_00d2.l8
    mov al, byte [data_91c5]
    sub ah, ah
    mov cx, 5
    imul cx
    sub word [bp - 0x0002], ax
    mov word [bp - 0x005c], 0
    jmp near @..local.l201
    mov ax, 1
    push ax
    push ax
    mov ax, 0x62f
    push ax
    push word [bp + 0x4]
    call api_idx_0006_5
    add sp, byte 8
    test ax, ax
    je short @..api_idx_00d2.l11
    mov word [bp - 0x0060], 5
    mov word [bp - 0x005c], 0
@..api_idx_00d2.l11:
    jmp near @..local.l201
    cmp word [bp - 0x0060], byte 4
    jne short @..api_idx_00d2.l12
    push word [bp + 0x4]
    call api_idx_0006_7
    pop cx
    jmp near 0x6569
@..api_idx_00d2.l12:
    mov word [data_9d62], 2
    mov ax, 4
    push ax
    db 0xe8, 0x07, 0x53 ; call 0xb7a9
    pop cx
    mov cx, 0xa
    imul cx
    add ax, strict word 0x14
    push ax
    mov al, byte [data_91c5]
    sub ah, ah
    mov cx, ax
    pop ax
    imul cx
    cwd
    mov word [bp - 0x00d0], dx
    mov word [bp - 0x00d2], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov cx, word [bx + 0x5c08]
    mov bx, word [bx + 0x5c0a]
    mov ax, word [bp - 0x00d2]
    mov dx, word [bp - 0x00d0]
    cmp bx, dx
    jg short @..api_idx_00d2.l13
    jne short @..api_idx_00d2.l14
    cmp cx, ax
    jb short @..api_idx_00d2.l14
@..api_idx_00d2.l13:
    jmp short @..api_idx_00d2.l15
@..api_idx_00d2.l14:
    mov word [bp - 0x00d0], bx
    mov word [bp - 0x00d2], cx
@..api_idx_00d2.l15:
    mov ax, word [bp - 0x00d2]
    mov dx, word [bp - 0x00d0]
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop dx
    pop ax
    sub word [bx + 0x5c08], ax
    sbb word [bx + 0x5c0a], dx
    mov cx, 0xa
    mov bx, 0
    db 0xe8, 0x8f, 0x94 ; call 0xfffff99f
    push ax
    push dx
    mov al, byte [data_91c5]
    sub ah, ah
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax

    db 0xe8, 0x7e, 0x94, 0x01, 0x46, 0xfe, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x86, 0x2e, 0xff, 0x8b, 0x96
    db 0x30, 0xff, 0xb9, 0x00, 0x01, 0xbb, 0x00, 0x00, 0xe8, 0x94, 0x94, 0x2a, 0xe4, 0x50, 0x8b, 0x86
    db 0x2e, 0xff, 0x8b, 0x96, 0x30, 0xff, 0xb9, 0x00, 0x01, 0xbb, 0x00, 0x00, 0xe8, 0x52, 0x94, 0x50
    db 0xb8, 0x02, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x1b, 0xd2, 0x83, 0xc4, 0x0a, 0x85, 0xc0, 0x74
    db 0x0a, 0xc7, 0x46, 0xa0, 0x05, 0x00, 0xc7, 0x46, 0xa4, 0x00, 0x00, 0xb8, 0x02, 0x00, 0x50, 0xe8
    db 0x04, 0xa6, 0x59, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x93, 0x00, 0x50, 0xb8, 0xa0, 0x00, 0x50, 0x8d
    db 0x86, 0x3c, 0xff, 0x50, 0xe8, 0xab, 0xa5, 0x83, 0xc4, 0x08, 0xb8, 0x02, 0x00, 0x50, 0xe8, 0x07
    db 0xa7, 0x59, 0xeb, 0x20, 0xc7, 0x46, 0xa4, 0x00, 0x00, 0xeb, 0x19, 0x0f, 0xb4, 0xcc, 0xb4, 0x61
    db 0xb4, 0xa9, 0xb4, 0xcc, 0xb4, 0xd9, 0xb5

@..local.l200:
    cmp ax, strict word 6
    jae short @..local.l201
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x4a20]
@..local.l201:
    cmp word [bp - 0x005c], byte 0
    je short @..local.l202
    jmp near @..api_idx_00d2.l1
@..local.l202:
    cmp word [bp - 0x0060], byte 5
    jne short @..local.l203
    mov ax, 0
    ret
@..local.l203:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d6b]
    sub ah, ah
    push ax
    add bx, word [data_9136]
    mov al, byte [bx + 0x5db2]
    cbw
    add ax, word [data_964e]
    mov cx, 3
    cwd
    idiv cx
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp - 0x0002]
    add ax, strict word 0xfff6
    mov word [bp - 0x0002], ax
    mov ax, 0x5f
    push ax
    mov ax, 0
    push ax
    mov al, byte [data_91c7]
    sub ah, ah
    mov bx, ax
    mov al, byte [bx - 0x7622]
    cbw
    add ax, word [data_964e]
    mov cx, 3
    cwd
    idiv cx
    add ax, word [bp - 0x0002]
    push ax
    db 0xe8, 0xa8, 0x51 ; call 0xb7c2
    add sp, byte 6
    mov word [bp - 0x0002], ax
    mov ax, 0x64
    push ax
    db 0xe8, 0x82, 0x51 ; call 0xb7a9
    pop cx
    add ax, word [data_9d64]
    mov word [bp - 0x0004], ax
    mov ax, 5
    push ax
    db 0xe8, 0x73, 0x51 ; call 0xb7a9
    pop cx
    add ax, word [data_9d64]
    add ax, strict word 0xa
    mov word [data_9d64], ax
    lea ax, word [bp - 0x005a]
    push ax
    mov ax, 0x637
    push ax
    db 0xe8, 0xef, 0x4e ; call 0xb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x005a]
    push ax
    db 0xe8, 0x9c, 0x4c ; call 0xb300
    add sp, byte 6
    mov ax, 0x55
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    lea ax, word [bp - 0x005a]
    push ax
    call math_loc_130b
    add sp, byte 8
    mov word [bp - 0x000a], 0
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jge short @..local.l205
    cmp word [data_9d62], byte 3
    jne short @..local.l204
    mov ax, 3
    push ax
    mov ax, 0x1c
    push ax
    push word [bp + 0x4]
    call math_loc_8662
    add sp, byte 6
@..local.l204:
    mov ax, 0x55
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0x638
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 0xa
    push ax
    db 0xe8, 0xed, 0x50 ; call 0xb7a9
    pop cx
    add ax, strict word 5
    mov word [bp - 0x0006], ax
    mov ax, 0xa
    push ax
    db 0xe8, 0xdf, 0x50 ; call 0xb7a9
    pop cx
    add ax, strict word 5
    mov word [bp - 0x0008], ax
    mov word [bp - 0x000a], 1
    jmp near @..local.l208
@..local.l205:
    mov ax, word [bp - 0x0002]
    imul word [data_9d62]
    cmp ax, word [bp - 0x0004]
    jl short @..local.l206
    cmp word [bp - 0x0004], byte 0x5f
    jl short @..local.l207
@..local.l206:
    mov ax, 0x16
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0x63a
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 0xa
    push ax
    db 0xe8, 0xa4, 0x50 ; call 0xb7a9
    pop cx
    mov cx, ax
    add ax, strict word 0xa
    mov cx, ax
    mov ax, 0
    sub ax, cx
    mov word [bp - 0x0006], ax
    mov ax, 0xa
    push ax
    db 0xe8, 0x8d, 0x50 ; call 0xb7a9
    pop cx
    mov cx, ax
    add ax, strict word 0xa
    mov cx, ax
    mov ax, 0
    sub ax, cx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x000a], 0xffff
    jmp short @..local.l208
@..local.l207:
    mov ax, 0x55
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0x639
    push ax
    call api_idx_0050
    add sp, byte 8
    mov ax, 0xa
    push ax
    db 0xe8, 0x5c, 0x50 ; call 0xb7a9
    pop cx
    add ax, strict word 0xfffb
    mov word [bp - 0x0006], ax
    mov ax, 0xa
    push ax
    db 0xe8, 0x4e, 0x50 ; call 0xb7a9
    pop cx
    add ax, strict word 0xfffb
    mov word [bp - 0x0008], ax
    mov word [bp - 0x000a], 0
@..local.l208:
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp + 0x4]
    call math_loc_85f9
    add sp, byte 6
    mov ax, word [bp - 0x000a]
    ret
api_idx_009c:
    mov ax, 0xff64
    db 0xe8, 0x8b, 0x8c ; call 0xfffff40b
    mov word [data_95a6], 0
    mov word [data_9d60], 0
    mov word [data_9d64], 0
    lea ax, word [bp - 0x0042]
    push ax
    mov ax, 0x5e6
    push ax
    db 0xe8, 0x9e, 0x4d ; call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, 0x5e7
    push ax
    db 0xe8, 0x90, 0x4d ; call 0xb53b
    add sp, byte 4
    cmp word [data_91a2], byte 0
    jle short @..api_idx_009c.l1
    call loc_23d0
    mov ax, 1
    push ax
    push word [data_91a2]
    call api_idx_0100
    add sp, byte 4
    call loc_243b
@..api_idx_009c.l1:
    mov word [bp - 0x000c], 0
@..api_idx_009c.l2:
    cmp word [data_93da], byte 0
    jle short @..api_idx_009c.l3
    cmp byte [data_91c3], 0
    jbe short @..api_idx_009c.l3
    mov ax, 3
    push ax
    db 0xe8, 0xc6, 0x4f ; call 0xb7a9
    pop cx
    test ax, ax
    jne short @..api_idx_009c.l3
    push word [data_93da]
    db 0xe8, 0xf1, 0x4f ; call 0xb7e0
    pop cx
@..api_idx_009c.l3:
    mov word [bp - 0x0002], 0
@..api_idx_009c.l4:
    mov bx, word [bp - 0x0002]
    cmp byte [bx - 0x6e46], 0
    jbe short @..local.l209
    mov al, byte [bx - 0x6e46]
    sub ah, ah
    push ax
    push word [bp - 0x000c]
    call api_idx_0040
    add sp, byte 4
    cmp ax, strict word 1
    jne short @..local.l209
    cmp word [data_95a6], byte 1
    jne short @..api_idx_009c.l5
    mov word [data_93dc], 1
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call api_idx_005e
    add sp, byte 4
    mov word [data_843a], 0
    call loc_109f
@..api_idx_009c.l5:
    ret
@..local.l209:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short @..api_idx_009c.l4
    mov word [bp - 0x0006], 0
@..local.l210:
    mov ax, word [bp - 0x0006]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x002e], 0
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 9
    jle short @..local.l210
    mov word [bp - 0x0020], 1
    mov al, byte [data_91c7]
    sub ah, ah
    mov bx, ax
    mov al, byte [bx - 0x7622]
    cbw
    mov word [bp - 0x000a], ax
    cmp byte [data_91c6], 0xff
    jne short @..local.l211
    add word [bp - 0x000a], byte 0x23
@..local.l211:
    cmp word [bp - 0x000a], byte 0xe7
    jge short @..local.l212
    mov word [bp - 0x0028], 1
    mov word [bp - 0x001c], 1
    jmp near @..local.l219
@..local.l212:
    cmp word [bp - 0x000a], byte 0x19
    jge short @..local.l213
    mov word [bp - 0x0028], 1
    mov word [bp - 0x0026], 1
    mov word [bp - 0x0024], 1
    mov word [bp - 0x0022], 1
    mov word [bp - 0x001e], 1
    jmp short @..local.l219
@..local.l213:
    cmp word [data_9136], byte 0x3c
    jl short @..local.l214
    cmp word [data_9136], byte 0x3e
    jg short @..local.l214
    mov word [bp - 0x0020], 0
    jmp short @..local.l218
@..local.l214:
    mov ax, word [data_9136]
    cmp ax, strict word 0x2d
    je short @..local.l215
    cmp ax, strict word 0x4d
    je short @..local.l215
    cmp ax, strict word 0x51
    je short @..local.l215
    cmp ax, strict word 0x53
    jne short @..local.l216
@..local.l215:
    mov word [bp - 0x0020], 0
    jmp short @..local.l217
@..local.l216:
    mov word [bp - 0x002c], 1
    mov word [bp - 0x002a], 1
    mov word [bp - 0x0026], 1
@..local.l217:
    mov word [bp - 0x002e], 1
    mov word [bp - 0x0024], 1
@..local.l218:
    mov word [bp - 0x0022], 1
    mov word [bp - 0x001e], 1
@..local.l219:
    mov word [bp - 0x001a], 0xffff
    mov word [bp - 0x000c], 0xffff
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    call api_idx_0054
    mov ax, 1
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0xa0
    push ax
    lea ax, word [bp - 0x0042]
    push ax
    call math_loc_0b30
    add sp, byte 8
    mov ax, 0x16
    push ax
    mov ax, 0x9a
    push ax
    mov ax, 0xa0
    push ax
    lea ax, word [bp - 0x004c]
    push ax
    call math_loc_0b30
    add sp, byte 8
    lea ax, word [bp - 0x002e]
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 2
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
    mov ax, 0x5fa
    push ax
    call math_loc_1821
    add sp, byte 0x18
    mov word [bp - 0x0006], ax
    lea ax, word [bp - 0x009c]
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0x5fa
    push ax
    db 0xe8, 0xa7, 0x4b ; call 0xb53b
    add sp, byte 4
    mov ax, 0x1a
    push ax
    mov ax, 2
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
    push word [data_9052]
    lea ax, word [bp - 0x009c]
    push ax
    call api_idx_000c_2
    add sp, byte 0x14
    mov ax, word [bp - 0x0006]
    jmp near @..local.l220

    db 0xe8, 0xe2, 0x64, 0x89, 0x46, 0xf4, 0x3d, 0x00, 0x00, 0x7d, 0x03, 0xe9, 0x89, 0x00, 0x50, 0xe8
    db 0xa7, 0x60, 0x59, 0x85, 0xc0, 0x75, 0x03, 0xe9, 0x7d, 0x00, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xf4
    db 0x03, 0x06, 0x36, 0x91, 0x8b, 0xd8, 0x8a, 0x87, 0xb2, 0x5d, 0x98, 0x50, 0xb8, 0x48, 0x02, 0xf7
    db 0x6e, 0xf4, 0x8b, 0xd8, 0x8a, 0x87, 0x6a, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x03
    db 0x06, 0x4e, 0x96, 0x7e, 0x1e, 0x83, 0x7e, 0xfa, 0x00, 0x75, 0x09, 0xff, 0x76, 0xf4, 0xe8, 0x70
    db 0x41, 0x59, 0xeb, 0x0d, 0x83, 0x7e, 0xfa, 0x02, 0x75, 0x07, 0xff, 0x76, 0xf4, 0xe8, 0x6a, 0xf4
    db 0x59, 0xeb, 0x34, 0x8d, 0x86, 0x64, 0xff, 0x50, 0xb8, 0x04, 0x06, 0x50, 0xe8, 0x00, 0x4b, 0x83
    db 0xc4, 0x04, 0xb8, 0x03, 0x00, 0x50, 0xe8, 0x2f, 0xa1, 0x59, 0xb8, 0x01, 0x00, 0x50, 0x8d, 0x86
    db 0x64, 0xff, 0x50, 0xe8, 0xa6, 0xa7, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x36, 0x5a
    db 0x90, 0xe8, 0x3e, 0xa7, 0x83, 0xc4, 0x04, 0xe9, 0xd1, 0x01, 0xe8, 0x48, 0x64, 0x89, 0x46, 0xf4
    db 0x3d, 0x00, 0x00, 0x7c, 0x62, 0x50, 0xe8, 0x10, 0x60, 0x59, 0x85, 0xc0, 0x74, 0x59, 0xc7, 0x46
    db 0xfe, 0x00, 0x00, 0x8b, 0x46, 0xfa, 0xeb, 0x2a, 0xff, 0x76, 0xf4, 0xe8, 0x0c, 0xd0, 0x59, 0xeb
    db 0x35, 0xff, 0x76, 0xf4, 0xe8, 0x28, 0xe7, 0x59, 0xeb, 0x2c, 0xff, 0x76, 0xf4, 0xe8, 0x34, 0xf5
    db 0x59, 0x89, 0x46, 0xfe, 0xeb, 0x20, 0xff, 0x76, 0xf4, 0xe8, 0x76, 0xf8, 0x59, 0x89, 0x46, 0xfe
    db 0xeb, 0x14, 0x3d, 0x03, 0x00, 0x74, 0xef, 0x3d, 0x04, 0x00, 0x74, 0xde, 0x3d, 0x05, 0x00, 0x74
    db 0xc7, 0x3d, 0x06, 0x00, 0x74, 0xcb, 0x83, 0x7e, 0xfe, 0xff, 0x75, 0x0b, 0xc7, 0x06, 0xa6, 0x95
    db 0x01, 0x00, 0xc7, 0x46, 0xfa, 0x08, 0x00, 0xe9, 0x61, 0x01, 0xb8, 0x00, 0x00, 0x83, 0x3e, 0x66
    db 0x9d, 0x01, 0x75, 0x03, 0xb8, 0xff, 0xff, 0x89, 0x46, 0xfe, 0x83, 0x3e, 0x66, 0x9d, 0xff, 0x75
    db 0x42, 0x80, 0x3e, 0xc6, 0x91, 0xff, 0x74, 0x08, 0xe8, 0xaa, 0xbd, 0x89, 0x46, 0xfe, 0xeb, 0x2d
    db 0xc7, 0x46, 0xf8, 0x00, 0x00, 0xff, 0x76, 0xf8, 0xb8, 0x22, 0x88, 0x50, 0xe8, 0x69, 0x81, 0x83
    db 0xc4, 0x04, 0x85, 0xc0, 0x74, 0x0c, 0xff, 0x76, 0xf8, 0xe8, 0x50, 0xbc, 0x59, 0xc7, 0x46, 0xfe
    db 0x01, 0x00, 0xff, 0x46, 0xf8, 0x8b, 0x46, 0xf8, 0x3d, 0x0b, 0x00, 0x7c, 0xd8, 0x8b, 0x46, 0xfe
    db 0xa3, 0x66, 0x9d, 0x83, 0x7e, 0xfe, 0x00, 0x7f, 0x25, 0xb8, 0xf0, 0x93, 0x50, 0xb8, 0x6d, 0x06
    db 0x83, 0x7e, 0xfe, 0x00, 0x75, 0x03, 0xb8, 0x69, 0x06, 0x50, 0xe8, 0xf2, 0x49, 0x83, 0xc4, 0x04
    db 0xb8, 0x01, 0x00, 0x50, 0xb8, 0xf0, 0x93, 0x50, 0xe8, 0x1b, 0xb9, 0x83, 0xc4, 0x04, 0xe9, 0xda
    db 0x00, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xeb, 0x47, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x03, 0x06
    db 0x36, 0x91, 0x8b, 0xd8, 0x80, 0xbf, 0xb2, 0x5d, 0x00, 0x7e, 0x0f, 0x8a, 0x87, 0xb2, 0x5d, 0x98
    db 0xb9, 0x05, 0x00, 0x99, 0xf7, 0xf9, 0x88, 0x87, 0xb2, 0x5d, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0f
    db 0x00, 0x50, 0xe8, 0x18, 0x4c, 0x59, 0x8b, 0xc8, 0x05, 0x0f, 0x00, 0x8b, 0xc8, 0xb8, 0x00, 0x00
    db 0x2b, 0xc1, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x54, 0x1a, 0x83, 0xc4, 0x06, 0xff, 0x46, 0xfe, 0x8b
    db 0x46, 0xfe, 0x3b, 0x06, 0xc8, 0x69, 0x7c, 0xb0, 0xa0, 0xc7, 0x91, 0x2a, 0xe4, 0x8b, 0xd8, 0x80
    db 0xbf, 0xde, 0x89, 0x00, 0x7e, 0x0f, 0x8a, 0x87, 0xde, 0x89, 0x98, 0xb9, 0x05, 0x00, 0x99, 0xf7
    db 0xf9, 0x88, 0x87, 0xde, 0x89, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0xd1, 0x4b, 0x59, 0x8b, 0xc8, 0x05
    db 0x0f, 0x00, 0x8b, 0xc8, 0xb8, 0x00, 0x00, 0x2b, 0xc1, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xe8
    db 0x0b, 0x1a, 0x83, 0xc4, 0x06, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x6b, 0xbd, 0x59, 0xc7, 0x46, 0xfa
    db 0x08, 0x00, 0xeb, 0x37, 0xc7, 0x06, 0xa6, 0x95, 0x01, 0x00, 0xeb, 0x2f, 0xc7, 0x06, 0xa6, 0x95
    db 0x00, 0x00, 0xc7, 0x06, 0x0a, 0x83, 0x17, 0x00, 0xeb, 0x21, 0x13, 0xba, 0x1d, 0xbb, 0x13, 0xba
    db 0xad, 0xba, 0xad, 0xba, 0xad, 0xba, 0xad, 0xba, 0xa4, 0xbb, 0x47, 0xbc, 0x4f, 0xbc

@..local.l220:
    cmp ax, strict word 0xa
    jae short @..local.l221
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x43a3]
@..local.l221:
    cmp word [bp - 0x000c], byte 0
    jl short @..local.l222
    mov ax, word [data_69c8]
    dec ax
    cmp ax, word [bp - 0x000c]
    jl short @..local.l222
    mov ax, 4
    push ax
    db 0xe8, 0x5c, 0x4b ; call 0xb7a9
    pop cx
    test ax, ax
    jne short @..local.l223
@..local.l222:
    push word [data_69c8]
    db 0xe8, 0x50, 0x4b ; call 0xb7a9
    pop cx
    mov word [bp - 0x000c], ax
@..local.l223:
    mov ax, 0x248
    imul word [bp - 0x000c]
    add ax, word [data_9136]
    mov bx, ax
    mov al, byte [bx + 0x5db2]
    cbw
    push ax
    mov ax, 0x248
    imul word [bp - 0x000c]
    mov bx, ax
    mov al, byte [bx + 0x5d6a]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [data_964e]
    mov word [bp - 0x000a], ax
    mov al, byte [data_91c7]
    sub ah, ah
    mov bx, ax
    mov al, byte [bx - 0x7622]
    cbw
    add ax, word [data_964e]
    mov word [bp - 0x0002], ax
    cmp word [data_830a], byte 0x0a
    je short @..local.l227
    cmp ax, strict word 0xfff6
    jl short @..local.l224
    cmp word [bp - 0x000a], byte 0xf6
    jge short @..local.l227
@..local.l224:
    mov ax, 0x64
    push ax
    db 0xe8, 0xf4, 0x4a ; call 0xb7a9
    pop cx
    add ax, strict word 0xff9c
    mov word [bp - 0x0008], ax
    cmp ax, word [bp - 0x0002]
    jl short @..local.l225
    cmp ax, word [bp - 0x000a]
    jge short @..local.l227
@..local.l225:
    mov ax, 2
    push ax
    db 0xe8, 0xdc, 0x4a ; call 0xb7a9
    pop cx
    cmp ax, strict word 1
    jne short @..local.l226
    mov ax, 1
    push ax
    call loc_2963
    pop cx
    mov word [bp - 0x0006], 8
    jmp short @..local.l227
@..local.l226:
    cmp word [data_830a], byte 0x17
    je short @..local.l227
    mov ax, 0x55
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x606
    push ax
    call api_idx_0050
    add sp, byte 8
    mov word [data_95a6], 1
    mov word [bp - 0x0006], 8
@..local.l227:
    cmp word [bp - 0x0006], byte 8
    je short @..local.l228
    cmp word [bp - 0x0006], byte 9
    je short @..local.l228
    jmp near @..api_idx_009c.l2
@..local.l228:
    cmp word [data_9d62], byte 1
    jne short @..local.l229
    mov ax, 5
    push ax
    db 0xe8, 0x82, 0x4a ; call 0xb7a9
    pop cx
    mov cx, ax
    add ax, strict word 5
    mov cx, ax
    mov ax, 0
    sub ax, cx
    push ax
    mov ax, 0
    push ax
    push ax
    call math_loc_85f9
    add sp, byte 6
@..local.l229:
    cmp word [data_830a], byte 0x0a
    jne short @..local.l230
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 6
    push ax
    mov ax, 0
    push ax
    call api_idx_0006_3
    add sp, byte 0x0a
    jmp short @..local.l231
@..local.l230:
    cmp word [data_830a], byte 0x17
    je short @..local.l231
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 7
    push ax
    mov ax, 0
    push ax
    call api_idx_0006_3
    add sp, byte 0x0a
@..local.l231:
    cmp word [data_95a6], byte 1
    jne short @..local.l232
    mov word [data_93dc], 1
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call api_idx_005e
    add sp, byte 4
    mov word [data_843a], 0
    call loc_109f
@..local.l232:
    ret
loc_6d9d:
    mov ax, 0
    db 0xe8, 0x68, 0x86 ; call 0xfffff40b
    mov word [data_93da], 0
    cmp byte [data_91ca], 0
    jle short @..local.l233
    mov al, byte [data_91ca]
    cbw
    push ax
    call 0xd7aa
    pop cx
    mov word [data_93da], 0x10
@..local.l233:
    cmp byte [data_91c3], 0
    je short @..local.l234
    mov ax, 0xf
    push ax
    mov al, byte [data_91c3]
    sub ah, ah
    push ax
    call 0xd61c
    add sp, byte 4
    mov word [data_843a], 0xf
    mov ax, 0xffff
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 0xf
    push ax
    call api_idx_0008
    add sp, byte 8
    jmp short @..local.l235
@..local.l234:
    mov word [data_843a], 0
@..local.l235:
    mov word [data_93dc], 1
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    call api_idx_005e
    add sp, byte 4
    call loc_109f
    ret
api_idx_0086:
    mov ax, 0xff7a
    db 0xe8, 0xf6, 0x85 ; call 0xfffff40b
    mov word [data_9cd2], 0
    mov ax, 0
    push ax
    mov ax, 0x3c
    push ax
    mov ax, 0x9cd4
    push ax
    db 0xe8, 0xdc, 0x84 ; call 0xfffff306
    add sp, byte 6
    cmp byte [data_91c6], 0xff
    je short @..api_idx_0086.l3
    mov word [bp - 0x0002], 0
@..api_idx_0086.l1:
    push word [bp - 0x0002]
    mov al, byte [data_91c6]
    cbw
    mov cx, 0x26
    imul cx
    add ax, 0x8502
    push ax
    db 0xe8, 0x28, 0x7e ; call 0xec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0086.l2
    mov ax, word [bp - 0x0002]
    add ax, 0x190
    mov cx, word [data_9cd2]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x632c], ax
    inc word [data_9cd2]
@..api_idx_0086.l2:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xb
    jl short @..api_idx_0086.l1
@..api_idx_0086.l3:
    cmp byte [data_91c9], 0
    ja short @..api_idx_0086.l4
    jmp near @..api_idx_0086.l13
@..api_idx_0086.l4:
    mov ax, 0
    push ax
    mov al, byte [data_91c9]
    sub ah, ah
    push ax
    lea ax, word [bp - 0x003e]
    push ax
    mov ax, 7
    push ax
    db 0xe8, 0xa9, 0x47 ; call 0xb63c
    add sp, byte 8
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0002], 0
@..api_idx_0086.l5:
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    cmp byte [bx - 0x003a], 2
    jne short @..api_idx_0086.l6
    mov al, byte [bx - 0x0039]
    sub ah, ah
    jmp short @..api_idx_0086.l7
@..api_idx_0086.l6:
    mov ax, 0
@..api_idx_0086.l7:
    mov word [bp - 0x0008], ax
    cmp byte [bx - 0x003a], 3
    jne short @..api_idx_0086.l8
    mov ax, word [data_8f1c]
    mov dx, word [data_8f1e]
    mov cx, 0x5a0
    mov bx, 0
    db 0xe8, 0xcc, 0x8a ; call 0xfffff99f
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    mov al, byte [bx - 0x0039]
    sub ah, ah
    mov cx, 5
    imul cx
    mov cx, ax
    pop ax
    sub ax, cx
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0x32
    jle short @..api_idx_0086.l8
    mov word [bp - 0x0008], 0x32
@..api_idx_0086.l8:
    cmp word [bp - 0x0008], byte 0
    jg short @..api_idx_0086.l9
    jmp near @..api_idx_0086.l12
@..api_idx_0086.l9:
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x003e], byte 0
    jle short @..api_idx_0086.l12
@..api_idx_0086.l10:
    cmp word [data_9cd2], byte 0x1e
    jge short @..api_idx_0086.l12
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x003c], byte 0
    jle short @..api_idx_0086.l12
    mov bx, word [bp - 0x0006]
    mov al, byte [bx + 0x5990]
    sub ah, ah
    cmp ax, word [bp - 0x0008]
    jge short @..api_idx_0086.l11
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x003e]
    mov cx, word [data_9cd2]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x632c], ax
    inc word [data_9cd2]
@..api_idx_0086.l11:
    mov ax, word [bp - 0x0006]
    inc ax
    mov cx, 0x64
    cwd
    idiv cx
    mov word [bp - 0x0006], dx
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    inc word [bx - 0x003e]
    dec word [bx - 0x003c]
    jmp short @..api_idx_0086.l10
@..api_idx_0086.l12:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jge short @..api_idx_0086.l13
    jmp near @..api_idx_0086.l5
@..api_idx_0086.l13:
    mov word [bp - 0x0002], 0
    jmp near @..local.l240
@..api_idx_0086.l14:
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x632c]
    lea ax, word [bp - 0x0086]
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0x97, 0x46 ; call 0xb63c
    add sp, byte 8
    lea ax, word [bp - 0x0086]
    push ax
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, 0x99d6
    push ax
    db 0xe8, 0xaa, 0x83 ; call 0xfffff364
    add sp, byte 4
    mov al, byte [bp - 0x004e]
    mov bx, word [bp - 0x0002]
    mov byte [bx - 0x66e8], al
    mov al, byte [bp - 0x006a]
    sub ah, ah
    push ax
    mov al, byte [bp - 0x0069]
    sub ah, ah
    mov cx, ax
    pop ax
    imul cx
    add ax, word [bp - 0x006c]
    shl bx, 1
    mov word [bx - 0x6396], ax
    mov al, byte [bp - 0x004e]
    sub ah, ah
    mov bx, ax
    cmp byte [bx + 0x60e], 1
    jne short @..local.l236
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6396]
    cwd
    push ax
    push dx
    mul word [bp - 0x006e]
    mov cx, ax
    pop ax
    mul word [bp - 0x0070]
    add cx, ax
    pop ax
    mul word [bp - 0x0070]
    add dx, cx
    mov word [bp - 0x006e], dx
    mov word [bp - 0x0070], ax
@..local.l236:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x632c]
    call math_loc_5497
    pop cx
    test ax, ax
    je short @..local.l237
    mov ax, word [bp - 0x0070]
    mov dx, word [bp - 0x006e]
    jmp short @..local.l238
@..local.l237:
    mov ax, word [data_91aa]
    cwd
    push ax
    push dx
    mul word [bp - 0x006e]
    mov cx, ax
    pop ax
    mul word [bp - 0x0070]
    add cx, ax
    pop ax
    mul word [bp - 0x0070]
    add dx, cx
    mov cx, 0x64
    mov bx, 0
    db 0xe8, 0x51, 0x89 ; call 0xfffff99f
@..local.l238:
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x66c8], dx
    mov word [bx - 0x66ca], ax
    mov al, byte [bp - 0x004d]
    mov bx, word [bp - 0x0002]
    mov byte [bx - 0x6648], al
    mov word [bp - 0x0004], 0
@..local.l239:
    mov bx, word [bp - 0x0004]
    add bx, bp
    mov al, byte [bx - 0x0054]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    add cx, word [bp - 0x0004]
    mov bx, cx
    mov byte [bx - 0x677e], al
    mov bx, word [bp - 0x0004]
    add bx, bp
    mov al, byte [bx - 0x0052]
    mov bx, cx
    mov byte [bx - 0x6742], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 2
    jl short @..local.l239
    mov al, byte [bp - 0x0050]
    mov bx, word [bp - 0x0002]
    mov byte [bx - 0x6706], al
    inc word [bp - 0x0002]
@..local.l240:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_9cd2]
    jge short @..local.l241
    jmp near @..api_idx_0086.l14
@..local.l241:
    ret
api_idx_001e:
    mov ax, 0xffe2
    db 0xe8, 0x4e, 0x83 ; call 0xfffff40b
    mov word [data_830a], 5
    cmp word [data_82b6], byte 0xff
    je short @..api_idx_001e.l3
@..api_idx_001e.l1:
    call 0xef83
    test ax, ax
    je short @..api_idx_001e.l2
    jmp short @..api_idx_001e.l1
@..api_idx_001e.l2:
    mov ax, 0
    push ax
    call 0xd907
    pop cx
@..api_idx_001e.l3:
    call 0xc145
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
    mov word [data_9062], dx
    mov word [data_9060], ax
    cmp word [data_906a], byte 0
    je short @..api_idx_001e.l4
    mov ax, 1
    push ax
    push word [data_9068]
    db 0xe8, 0x44, 0x53 ; call 0xc459
    add sp, byte 4
    mov word [data_906a], 0
@..api_idx_001e.l4:
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
    db 0xe8, 0xfc, 0x77 ; call 0xe935
    add sp, byte 0x0c
    mov word [data_9066], dx
    mov word [data_9064], ax
    mov word [bp - 0x0002], 0
@..api_idx_001e.l5:
    mov ax, 0x18
    push ax
    call 0xf4a3
    pop cx
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x7b96], ax
    cmp word [bx - 0x7b96], byte 0
    jne short @..api_idx_001e.l6
    mov ax, 0x1d
    push ax
    call 0xb171
    pop cx
@..api_idx_001e.l6:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b96]
    mov byte [bx + 0x14], 0xff
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xc
    jl short @..api_idx_001e.l5
    mov word [data_8468], 0
    mov word [data_845e], 0xfffe
    mov ax, 0
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x843a
    push ax
    db 0xe8, 0x67, 0x81 ; call 0xfffff306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x93dc
    push ax
    db 0xe8, 0x55, 0x81 ; call 0xfffff306
    add sp, byte 6
    mov word [bp - 0x0002], 0xf
@..api_idx_001e.l7:
    mov bx, word [bp - 0x0002]
    mov byte [bx + 0x5b48], 0xff
    mov byte [bx + 0x5b5a], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x12
    jl short @..api_idx_001e.l7
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    mov word [data_93d6], 5
    mov ax, 0xc6
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 8
    push ax
    db 0xe8, 0x2c, 0x77 ; call 0xe928
    add sp, byte 8
    mov word [data_8d10], dx
    mov word [data_8d0e], ax
    mov ax, 0xa4
    push ax
    mov ax, 0xff
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x41
    push ax
    db 0xe8, 0x0f, 0x77 ; call 0xe928
    add sp, byte 8
    mov word [data_8d0c], dx
    mov word [data_8d0a], ax
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    db 0xe8, 0xee, 0x63 ; call 0xd61c
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, 3
    push ax
    db 0xe8, 0xe0, 0x63 ; call 0xd61c
    add sp, byte 4
    mov ax, 0xc
    push ax
    mov ax, 0x52
    push ax
    db 0xe8, 0xd2, 0x63 ; call 0xd61c
    add sp, byte 4
    mov ax, 0
    push ax
    call api_idx_000a
    pop cx
    mov word [data_93ee], 1
    mov word [data_9134], 0
    mov word [data_9d68], 0
    mov word [data_9d6a], 0
    mov word [data_9d66], 0xffff
    mov ax, 0
    push ax
    push word [data_9136]
    mov ax, 0x9138
    push ax
    mov ax, 5
    push ax
    db 0xe8, 0xb6, 0x43 ; call 0xb63c
    add sp, byte 8
    mov ax, 2
    push ax
    mov ax, 0x95f8
    push ax
    mov ax, word [data_9136]
    shl ax, 1
    add ax, 0x584e
    push ax
    call 0xfedc
    add sp, byte 6
    mov word [data_964c], 0
    mov word [data_964a], 0
    mov ax, 0
    push ax
    mov ax, 0x6e
    push ax
    mov ax, 0x94f0
    push ax
    db 0xe8, 0x4b, 0x80 ; call 0xfffff306
    add sp, byte 6
    ret
api_idx_0006_6:
    mov ax, 0xfffa
    db 0xe8, 0x46, 0x81 ; call 0xfffff40b
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    cmp word [data_830a], byte 0x0a
    je short @..api_idx_0006_6.l1
    mov ax, 3
    push ax
    call loc_0c96
    pop cx
@..api_idx_0006_6.l1:
    mov ax, 1
    push ax
    call 0xc12a
    pop cx
    mov ax, 2
    push ax
    db 0xe8, 0x3f, 0x4e ; call 0xc12a
    pop cx
    mov ax, 0xc
    push ax
    db 0xe8, 0x37, 0x4e ; call 0xc12a
    pop cx
    mov ax, 1
    push ax
    push word [data_8d0c]
    push word [data_8d0a]
    db 0xe8, 0x4c, 0x76 ; call 0xe94f
    add sp, byte 6
    mov ax, 1
    push ax
    push word [data_8d10]
    push word [data_8d0e]
    db 0xe8, 0x3a, 0x76 ; call 0xe94f
    add sp, byte 6
    cmp word [data_830a], byte 0x0a
    je short @..api_idx_0006_6.l2
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
@..api_idx_0006_6.l2:
    mov word [bp - 0x0002], 0
@..api_idx_0006_6.l3:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x7b96]
    call 0xf5a1
    pop cx
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xc
    jl short @..api_idx_0006_6.l3
    mov word [bp - 0x0002], 0xf
@..api_idx_0006_6.l4:
    mov bx, word [bp - 0x0002]
    mov al, byte [bx + 0x5b48]
    sub ah, ah
    cmp ax, 0xff
    je short @..api_idx_0006_6.l5
    push bx
    db 0xe8, 0xbf, 0x4d ; call 0xc12a
    pop cx
@..api_idx_0006_6.l5:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x12
    jl short @..api_idx_0006_6.l4
    mov ax, 0
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x843a
    push ax
    db 0xe8, 0x80, 0x7f ; call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x93dc
    push ax
    db 0xe8, 0x6e, 0x7f ; call 0xf306
    add sp, byte 6
    cmp word [data_598e], byte 0xff
    je short @..api_idx_0006_6.l6
    mov ax, 0x10
    push ax
    call 0xd6c6
    pop cx
    mov word [data_598e], 0xffff
@..api_idx_0006_6.l6:
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_9066]
    push word [data_9064]
    db 0xe8, 0x7f, 0x75 ; call 0xe942
    add sp, byte 8
    mov ax, 0x90dc
    push ax
    mov ax, 0x8f
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    db 0xe8, 0xa6, 0x4e ; call 0xc283
    add sp, byte 0x0a
    mov word [data_9068], ax
    mov word [data_906a], 1
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_9062]
    push word [data_9060]
    db 0xe8, 0x46, 0x75 ; call 0xe942
    add sp, byte 8
    ret
math_loc_7400:
    mov ax, 0
    db 0xe8, 0x05, 0x80 ; call 0xfffff40b
    mov word [data_9d6c], 3
    mov word [data_93d8], 0x8f
    mov word [data_9d62], 3
    call api_idx_001e
    call loc_6d9d
    call api_idx_0086
    call loc_a441
    call api_idx_0054
    call api_idx_009c
    call api_idx_0006_6
    ret
math_loc_742e:
    mov ax, 0
    db 0xe8, 0xd7, 0x7f ; call 0xf40b
    mov ax, word [data_598e]
    cmp ax, word [bp + 0x4]
    je short @..math_loc_742e.l1
    push word [bp + 0x4]
    db 0xe8, 0x68, 0x63 ; call 0xd7aa
    pop cx
@..math_loc_742e.l1:
    mov word [data_93da], 0x10
    push word [data_93da]
    db 0xe8, 0x90, 0x43 ; call 0xb7e0
    pop cx
    ret
api_idx_000c_3:
    mov ax, 0xfff4
    db 0xe8, 0xb3, 0x7f ; call 0xf40b
    mov word [bp - 0x0002], 0
@..api_idx_000c_3.l1:
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
    db 0xe8, 0x0f, 0x7b ; call 0xefd1
    add sp, byte 0x16
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_000c_3.l1
    ret
api_idx_0002_7:
    mov ax, 0xfffe
    db 0xe8, 0x34, 0x7f ; call 0xf40b
    mov word [bp - 0x0002], 0
@..api_idx_0002_7.l1:
    cmp word [bp + 0x4], byte 0
    jl short @..api_idx_0002_7.l2
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x4]
    jne short @..api_idx_0002_7.l3
@..api_idx_0002_7.l2:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    inc word [bx - 0x7cf2]
@..api_idx_0002_7.l3:
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
    jne short @..api_idx_0002_7.l4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x7cf2], 0
@..api_idx_0002_7.l4:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_0002_7.l1
    ret
api_idx_0004_13:
    mov ax, 0xfffc
    db 0xe8, 0xd9, 0x7e ; call 0xf40b
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
@..api_idx_0004_13.l1:
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x620]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jne short @..api_idx_0004_13.l2
    push word [bp - 0x0002]
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    db 0xe8, 0x15, 0x77 ; call 0xec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0004_13.l2
    mov ax, 0x14
    imul word [bp - 0x0004]
    add ax, 0xe38
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xfa0
    push ax
    db 0xe8, 0xc1, 0x3f ; call 0xb53b
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x620e], ax
    inc word [bp - 0x0004]
@..api_idx_0004_13.l2:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x66
    jl short @..api_idx_0004_13.l1
    mov ax, word [bp - 0x0004]
    ret
api_idx_000a_2:
    mov ax, 0xfff6
    db 0xe8, 0x68, 0x7e ; call 0xf40b
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
    db 0xe8, 0xfa, 0x79 ; call 0xefd1
    add sp, byte 0x16
    ret
math_loc_75db:
    mov ax, 0
    db 0xe8, 0x2a, 0x7e ; call 0xf40b
    push word [bp + 0x6]
    mov ax, 0xa
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    dec ax
    push ax
    db 0xe8, 0x17, 0x72 ; call 0xe809
    add sp, byte 4
    mov ax, 7
    push ax
    mov ax, 0
    cmp word [bp + 0xa], byte 0
    je short @..math_loc_75db.l1
    mov ax, 1
@..math_loc_75db.l1:
    add ax, strict word 0x10
    sub ah, ah
    push ax
    db 0xe8, 0x22, 0x72 ; call 0xe830
    add sp, byte 4
    push word [bp + 0x6]
    mov ax, 0xa
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    push ax
    db 0xe8, 0xe8, 0x71 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    db 0xe8, 0xf7, 0x71 ; call 0xe823
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, word [bp + 0x8]
    inc ax
    sub ah, ah
    push ax
    db 0xe8, 0xf3, 0x71 ; call 0xe830
    add sp, byte 4
    cmp word [bp + 0x8], byte 0
    jne short @..math_loc_75db.l2
    cmp word [bp + 0xa], byte 0
    jne short @..math_loc_75db.l2
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
    db 0xe8, 0x9e, 0x72 ; call 0xe901
    add sp, byte 0x0a
@..math_loc_75db.l2:
    ret
loc_7667:
    mov ax, 0
    db 0xe8, 0x9e, 0x7d ; call 0xf40b
    mov ax, word [bp + 0x6]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x14
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    db 0xe8, 0x14, 0x47 ; call 0xbd98
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
    db 0xe8, 0x56, 0x72 ; call 0xe901
    add sp, byte 0x0a
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    db 0xe8, 0x4d, 0x71 ; call 0xe809
    add sp, byte 4
    cmp word [bp + 0xa], byte 0
    jle short @..local.l242
    mov ax, word [bp + 0xa]
    cmp ax, word [bp + 0xc]
    jg short @..local.l242
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0x4b, 0x71 ; call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    push word [bp + 0xa]
    db 0xe8, 0xfe, 0x3b ; call 0xb2e7
    add sp, byte 6
    jmp short math_loc_7707
@..local.l242:
    mov ax, 0
    push ax
    push ax
    db 0xe8, 0x2d, 0x71 ; call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x90e4
    push ax
    db 0xe8, 0x4a, 0x71 ; call 0xe84e
    add sp, byte 4
math_loc_7707:
    ret
api_idx_000c_4:
    mov ax, 0xfff4
    db 0xe8, 0xfd, 0x7c ; call 0xf40b
    mov word [bp - 0x0002], 0
@..api_idx_000c_4.l1:
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
    db 0xe8, 0xdd, 0x70 ; call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx + 0x18e]
    lea ax, word [bp - 0x000c]
    push ax
    db 0xe8, 0x33, 0x83 ; call 0xfffffa90
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
    db 0xe8, 0x88, 0x70 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x000c]
    push ax
    db 0xe8, 0xbf, 0x70 ; call 0xe84e
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jge short @..api_idx_000c_4.l2
    jmp near @..api_idx_000c_4.l1
@..api_idx_000c_4.l2:
    ret
loc_77a1:
    mov ax, 0
    db 0xe8, 0x64, 0x7c ; call 0xf40b
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_9090], dx
    mov word [data_908e], ax
    mov ax, word [data_908e]
    mov dx, word [data_9090]
    sub ax, word [data_908a]
    sbb dx, word [data_908c]
    mov word [data_9094], dx
    mov word [data_9092], ax
    mov ax, word [data_93d6]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [data_9092]
    mov dx, word [data_9094]
    cmp bx, dx
    jg short @..local.l243
    jne short @..local.l244
    cmp cx, ax
    jbe short @..local.l244
@..local.l243:
    jmp short @..local.l245
@..local.l244:
    mov ax, word [data_908e]
    mov dx, word [data_9090]
    mov word [data_908c], dx
    mov word [data_908a], ax
    call api_idx_000a_2
    push word [bp + 0x4]
    call api_idx_000c_4
    pop cx
    push word [bp + 0x6]
    call api_idx_0002_7
    pop cx
    mov ax, 1
    push ax
    mov ax, 0x73
    push ax
    mov ax, 0x32
    push ax
    call api_idx_000c_3
    add sp, byte 6
    mov ax, 0xc5
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0x73
    push ax
    mov ax, 0x32
    push ax
    db 0xe8, 0xac, 0x70 ; call 0xe8da
    add sp, byte 8
@..local.l245:
    ret
loc_7832:
    mov ax, 0
    db 0xe8, 0xd3, 0x7b ; call 0xf40b
    mov ax, word [bp + 0x4]
    cmp ax, word [bp + 0x6]
    jl short @..local.l246
    inc word [bp + 0x4]
@..local.l246:
    mov ax, word [bp + 0x4]
    cmp ax, strict word 0xffff
    je short @..local.l247
    cmp ax, word [bp + 0x6]
    jl short @..local.l247
    mov ax, word [bp + 0x6]
    add ax, word [bp + 0x8]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp + 0x4]
    cmp cx, ax
    jge short @..local.l248
@..local.l247:
    mov ax, word [bp + 0x6]
    mov word [bp + 0x4], ax
@..local.l248:
    mov ax, word [bp + 0x4]
    ret
api_idx_0044:
    mov ax, 0xffbc
    db 0xe8, 0x99, 0x7b ; call 0xf40b
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
    mov word [data_904e], 0xffff
    mov word [bp - 0x0004], 0x32
    mov word [bp - 0x0006], 0x73
    mov word [bp - 0x0008], 0x10d
    mov word [bp - 0x000a], 0xc5
    mov word [bp - 0x000c], 0x95
    mov word [bp - 0x0014], 0x16
    mov ax, 0x90e8
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
    db 0xe8, 0xb5, 0x49 ; call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x003a], ax
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    db 0xe8, 0xb7, 0x43 ; call 0xbc9a
    add sp, byte 8
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    mov ax, 0x95
    push ax
    db 0xe8, 0xa4, 0x43 ; call 0xbc9a
    add sp, byte 8
    call api_idx_000a_2
    push word [bp + 0x4]
    call api_idx_000c_4
    pop cx
    mov ax, 1
    push ax
    mov ax, 0x73
    push ax
    mov ax, 0x32
    push ax
    call api_idx_000c_3
    add sp, byte 6
    lea ax, word [bp - 0x0038]
    push ax
    push word [bp + 0x6]
    db 0xe8, 0x1c, 0x3c ; call 0xb53b
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
    db 0xe8, 0x7f, 0x47 ; call 0xc0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0038]
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    db 0xe8, 0xea, 0x3b ; call 0xb53b
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
    db 0xe8, 0x4f, 0x47 ; call 0xc0c1
    add sp, byte 0x0c
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x48
    push ax
    db 0xe8, 0x83, 0x6e ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xcd
    push ax
    db 0xe8, 0x8f, 0x6e ; call 0xe823
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, 0xa
    push ax
    db 0xe8, 0x8e, 0x6e ; call 0xe830
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
    call math_loc_75db
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
    call loc_7667
    add sp, byte 0x0a
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call api_idx_0004_13
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
    db 0xe8, 0x63, 0x45 ; call 0xbfd8
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
    db 0xe8, 0x00, 0x40 ; call 0xbaa6
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
    db 0xe8, 0xd2, 0x3f ; call 0xbaa6
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
    db 0xe8, 0xa4, 0x3f ; call 0xbaa6
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
    db 0xe8, 0x76, 0x3f ; call 0xbaa6
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
    db 0xe8, 0x48, 0x3f ; call 0xbaa6
    add sp, byte 0x0e
    mov word [bp - 0x0002], 0
@..local.l249:
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
    db 0xe8, 0x02, 0x3f ; call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short @..local.l249
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
    db 0xe8, 0xd5, 0x3e ; call 0xbaa6
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
    db 0xe8, 0xb3, 0x3e ; call 0xbaa6
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
    db 0xe8, 0x91, 0x3e ; call 0xbaa6
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
    db 0xe8, 0x6f, 0x3e ; call 0xbaa6
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
    db 0xe8, 0x4d, 0x3e ; call 0xbaa6
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
    db 0xe8, 0x2b, 0x3e ; call 0xbaa6
    add sp, byte 0x0e
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short @..local.l250
    mov ax, word [bp - 0x0044]
@..local.l250:
    mov word [bp - 0x0020], ax
    mov word [bp - 0x0002], 0
@..local.l251:
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
    db 0xe8, 0xdd, 0x3d ; call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short @..local.l251
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
    db 0xe8, 0xbc, 0x3d ; call 0xbaa6
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
    db 0xe8, 0xd8, 0x6b ; call 0xe8da
    add sp, byte 8
    mov word [data_93d6], 5
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    mov word [bp - 0x001c], 1
@..local.l252:
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call loc_77a1
    add sp, byte 4
    mov ax, 0x59fe
    push ax
    db 0xe8, 0xd8, 0x3b ; call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x001a], ax
    cmp word [data_59fc], byte 0
    je short @..local.l253
    push word [bp - 0x0020]
    push word [bp - 0x0018]
    push word [bp - 0x0022]
    call loc_7832
    add sp, byte 6
    mov word [bp - 0x0022], ax
    mov word [data_5b3e], 1
    sub ax, word [bp - 0x0018]
    add ax, strict word 0x12
    mov word [bp - 0x001a], ax
@..local.l253:
    cmp word [data_5b3e], byte 1
    je short @..local.l254
    jmp near @..local.l278
@..local.l254:
    mov ax, word [bp - 0x001a]
    jmp near @..local.l276

    db 0x8d, 0x46, 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0xd6, 0x72, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xee, 0x83
    db 0xc1, 0x2a, 0x2b, 0xc1, 0x50, 0xe8, 0x28, 0x3a, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xea, 0x8d, 0x46
    db 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0xa8, 0x72, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe2, 0xff
    db 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x2a, 0x2b
    db 0xc1, 0x2b, 0x46, 0xea, 0x50, 0xe8, 0xf8, 0x39, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xee, 0x83, 0x7e
    db 0xbc, 0x07, 0x7e, 0x20, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xec, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xfa, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7
    db 0xf9, 0x89, 0x46, 0xe8, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x7f, 0x41, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0xa1, 0x41, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0x3e, 0x3c, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x50, 0x6a, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe2, 0x00, 0x74
    db 0x03, 0xe9, 0x0a, 0xff, 0xe9, 0x13, 0x06, 0x83, 0x7e, 0xe6, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x28, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0xf6, 0x3f
    db 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xe8, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xe8, 0xeb, 0x34, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x46, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0xc5
    db 0x3f, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xbc, 0x05, 0xf9, 0xff, 0x3b, 0x46, 0xe8, 0x7e, 0x03, 0xff
    db 0x46, 0xe8, 0x83, 0x7e, 0xbc, 0x07, 0x7e, 0x2c, 0xff, 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x64, 0x00, 0xf7, 0x6e, 0xec, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xf9, 0x99, 0xf7
    db 0xf9, 0xf7, 0x6e, 0xe8, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0x92, 0x38, 0x83, 0xc4
    db 0x06, 0x89, 0x46, 0xee, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x3f, 0x40, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x61, 0x40, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xfe, 0x3a, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x10, 0x69, 0x83, 0xc4, 0x08, 0xe9, 0xdc, 0x04, 0x83, 0x7e
    db 0x08, 0x00, 0x75, 0x03, 0xe9, 0xa1, 0x00, 0x83, 0x7e, 0xc4, 0x00, 0x7d, 0x03, 0xe9, 0x8a, 0x00
    db 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x3c, 0x8b, 0x46, 0xc2, 0x3b, 0x46, 0xc0, 0x7e, 0x03, 0xe9, 0x79
    db 0x00, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xc4, 0x8b, 0xd8, 0x8a, 0x87, 0x22, 0x06, 0x2a, 0xe4, 0x8b
    db 0x4e, 0xc2, 0x41, 0xf7, 0xe9, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8b, 0x56
    db 0xbe, 0xd1, 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x8b, 0x8f, 0x1c, 0x5c, 0x58, 0x3b, 0xc1
    db 0x7f, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x21, 0x3e, 0x83, 0xc4, 0x0a, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x01, 0x3e, 0x83, 0xc4, 0x0a, 0xc7
    db 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x08
    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x67, 0x37, 0x59, 0xe9, 0x2f, 0x04, 0xb8, 0x01, 0x00, 0x50, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0xc8, 0x3d, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0xa8, 0x3d, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46
    db 0xe4, 0x00, 0x00, 0xe9, 0xe4, 0x03

@..local.l255:
    cmp word [bp - 0x001a], byte 5
    jge short @..local.l256
    jmp near @..local.l264
@..local.l256:
    cmp word [bp - 0x001a], byte 0x0b
    jle short @..local.l257
    jmp near @..local.l264
@..local.l257:
    mov ax, 0
    push ax
    push word [bp - 0x003e]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    call math_loc_75db
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
    call math_loc_75db
    add sp, byte 8
    cmp word [bp - 0x003c], byte 0
    jge short @..local.l258
    jmp near @..local.l262
@..local.l258:
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
    db 0xe8, 0x74, 0x36 ; call 0xb7c2
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
    jne short @..local.l259
    mov ax, 0x3e7
    jmp short @..local.l261
@..local.l259:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short @..local.l260
    jmp short @..local.l261
@..local.l260:
    mov ax, word [bp - 0x0002]
@..local.l261:
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
    call loc_7667
    add sp, byte 0x0a
    jmp short @..local.l263
@..local.l262:
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
    call loc_7667
    add sp, byte 0x0a
@..local.l263:
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
    db 0xe8, 0xdb, 0x66 ; call 0xe8da
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
    db 0xe8, 0xb9, 0x66 ; call 0xe8da
    add sp, byte 8
    jmp near @..local.l275
@..local.l264:
    cmp word [bp - 0x001a], byte 0x0c
    jge short @..local.l265
    jmp near @..local.l269
@..local.l265:
    cmp word [bp - 0x001a], byte 0x11
    jle short @..local.l266
    jmp near @..local.l269
@..local.l266:
    mov ax, word [bp - 0x001a]
    add ax, strict word 0xfff4
    mov word [bp - 0x0042], ax
    mov word [bp - 0x003c], 0xffff
    push ax
    push word [bp + 0x4]
    call api_idx_0004_13
    add sp, byte 4
    mov word [bp - 0x0044], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short @..local.l267
    mov ax, word [bp - 0x0044]
@..local.l267:
    mov word [bp - 0x0024], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short @..local.l268
    mov ax, word [bp - 0x0044]
@..local.l268:
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
    db 0xe8, 0xf9, 0x3c ; call 0xbf97
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
    db 0xe8, 0x16, 0x3d ; call 0xbfd8
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
    db 0xe8, 0xb3, 0x37 ; call 0xbaa6
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
    call loc_7667
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
    db 0xe8, 0xa9, 0x65 ; call 0xe8da
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
    db 0xe8, 0x87, 0x65 ; call 0xe8da
    add sp, byte 8
    jmp near @..local.l275
@..local.l269:
    cmp word [bp - 0x001a], byte 0x12
    jge short @..local.l270
    jmp near @..local.l275
@..local.l270:
    mov ax, word [bp - 0x0020]
    add ax, strict word 0x12
    cmp ax, word [bp - 0x001a]
    jg short @..local.l271
    jmp near @..local.l275
@..local.l271:
    mov ax, word [bp - 0x0018]
    add ax, word [bp - 0x001a]
    add ax, strict word 0xffee
    mov word [bp - 0x0022], ax
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x620e]
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
    db 0xe8, 0xee, 0x3b ; call 0xbf97
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
    db 0xe8, 0xea, 0x33 ; call 0xb7c2
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
    jne short @..local.l272
    mov ax, 0x3e7
    jmp short @..local.l274
@..local.l272:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short @..local.l273
    jmp short @..local.l274
@..local.l273:
    mov ax, word [bp - 0x0002]
@..local.l274:
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
    call loc_7667
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
    db 0xe8, 0x6f, 0x64 ; call 0xe8da
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
    db 0xe8, 0x4d, 0x64 ; call 0xe8da
    add sp, byte 8
@..local.l275:
    jmp short @..local.l278
    mov cx, 0xe0cd
    into
    loopne 0x8466
    pop ss
    rol ah, 1
    db 0xd0
@..local.l276:
    cmp ax, strict word 5
    jae short @..local.l277
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x2b27]
@..local.l277:
    jmp near @..local.l255
@..local.l278:
    cmp word [bp - 0x001c], byte 0
    je short @..local.l279
    jmp near @..local.l252
@..local.l279:
    mov ax, 1
    push ax
    push word [bp - 0x003a]
    db 0xe8, 0x9a, 0x3f ; call 0xc459
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
    db 0xe8, 0x01, 0x64 ; call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x003e]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x003c]
    add ax, 0x100
    mov word [data_904e], ax
    mov ax, word [data_9050]
    ret
api_idx_0006_7:
    mov ax, 0xfffa
    db 0xe8, 0x15, 0x6f ; call 0xf40b
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0006], 0
    jmp short @..api_idx_0006_7.l2
@..api_idx_0006_7.l1:
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    mov ax, word [bx + 0x5c08]
    mov dx, word [bx + 0x5c0a]
    add word [bp - 0x0004], ax
    adc word [bp - 0x0002], dx
    mov word [bx + 0x5c0a], 0
    mov word [bx + 0x5c08], 0
    inc word [bp - 0x0006]
@..api_idx_0006_7.l2:
    mov ax, word [bp - 0x0006]
    cmp ax, word [data_69c8]
    jl short @..api_idx_0006_7.l1
    mov ax, word [bp - 0x0004]
    mov dx, word [bp - 0x0002]
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop dx
    pop ax
    mov word [bx + 0x5c0a], dx
    mov word [bx + 0x5c08], ax
    ret
api_idx_002a:
    mov ax, 0xffd6
    db 0xe8, 0xb5, 0x6e ; call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0x28
    push ax
    lea ax, word [bp - 0x002a]
    push ax
    db 0xe8, 0xa1, 0x6d ; call 0xf306
    add sp, byte 6
    push word [bp + 0x4]
    lea ax, word [bp - 0x002a]
    push ax
    db 0xe8, 0xf2, 0x6d ; call 0xf364
    add sp, byte 4
    mov ax, 0x2f
    push ax
    lea ax, word [bp - 0x002a]
    push ax
    db 0xe8, 0xca, 0x68 ; call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_002a.l1
    lea ax, word [bp - 0x002a]
    push ax
    db 0xe8, 0xfe, 0x74 ; call 0xfa90
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
    db 0xe8, 0x6b, 0x62 ; call 0xe823
    add sp, byte 4
    push word [bp + 0x8]
    push word [bp + 0x6]
    db 0xe8, 0x45, 0x62 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x002a]
    push ax
    db 0xe8, 0x7c, 0x62 ; call 0xe84e
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 6
    push ax
    push word [bp + 0x6]
    db 0xe8, 0x27, 0x62 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    lea cx, word [bp - 0x0029]
    add ax, cx
    push ax
    db 0xe8, 0x59, 0x62 ; call 0xe84e
    add sp, byte 4
    ret
math_loc_85f9:
    mov ax, 0
    db 0xe8, 0x0c, 0x6e ; call 0xf40b
    mov ax, 0x64
    push ax
    mov ax, 0xff9c
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [data_9136]
    mov bx, ax
    mov al, byte [bx + 0x5db2]
    cbw
    add ax, word [bp + 0x6]
    push ax
    db 0xe8, 0xa3, 0x31 ; call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    add ax, word [data_9136]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5db2], al
    mov ax, 0x64
    push ax
    mov ax, 0xff9c
    push ax
    mov al, byte [data_91c7]
    sub ah, ah
    mov bx, ax
    mov al, byte [bx - 0x7622]
    cbw
    add ax, word [bp + 0x8]
    push ax
    db 0xe8, 0x71, 0x31 ; call 0xb7c2
    add sp, byte 6
    push ax
    mov al, byte [data_91c7]
    sub ah, ah
    mov bx, ax
    pop ax
    mov byte [bx - 0x7622], al
    ret
math_loc_8662:
    mov ax, 0
    db 0xe8, 0xa3, 0x6d ; call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0x64
    jae short @..math_loc_8662.l1
    mov al, byte [bx + 0x5d6c]
    sub ah, ah
    push ax
    db 0xe8, 0x25, 0x31 ; call 0xb7a9
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
    jg short @..math_loc_8662.l1
    add bx, word [bp + 0x6]
    inc byte [bx + 0x5d6c]
@..math_loc_8662.l1:
    ret
api_idx_0002_8:
    mov ax, 0xfffe
    db 0xe8, 0x61, 0x6d ; call 0xf40b
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0002_8.l2
@..api_idx_0002_8.l1:
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0002]
    mov byte [bx + si], 0x78
    inc word [bp - 0x0002]
@..api_idx_0002_8.l2:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x6]
    jl short @..api_idx_0002_8.l1
    ret
loc_86c6:
    mov ax, 0
    db 0xe8, 0x3f, 0x6d ; call 0xf40b
    mov word [data_9e62], 1
    mov ax, word [bp + 0x4]
    jmp short @..local.l280

    db 0xc7, 0x06, 0x62, 0x9e, 0x00, 0x00, 0xeb, 0x58, 0xc7, 0x06, 0x52, 0x9e, 0x01, 0x00, 0xeb, 0x50
    db 0xc7, 0x06, 0x54, 0x9e, 0x01, 0x00, 0xeb, 0x48, 0xc7, 0x06, 0x56, 0x9e, 0x01, 0x00, 0xeb, 0x40
    db 0xc7, 0x06, 0x58, 0x9e, 0x01, 0x00, 0xeb, 0x38, 0xc7, 0x06, 0x5a, 0x9e, 0x01, 0x00, 0xeb, 0x30
    db 0xc7, 0x06, 0x5c, 0x9e, 0x01, 0x00, 0xeb, 0x28, 0xc7, 0x06, 0x5e, 0x9e, 0x01, 0x00, 0xeb, 0x20
    db 0x1e, 0xd7, 0x26, 0xd7, 0x2e, 0xd7, 0x36, 0xd7, 0x3e, 0xd7, 0x46, 0xd7, 0x4e, 0xd7, 0x56, 0xd7

@..local.l280:
    sub ax, strict word 0xffff
    cmp ax, strict word 8
    jae short @..local.l281
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x28a2]
@..local.l281:
    ret
api_idx_0004_14:
    mov ax, 0xfffc
    db 0xe8, 0xcd, 0x6c ; call 0xf40b
    mov word [data_9e84], 0
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0004_14.l5
@..api_idx_0004_14.l1:
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si]
    sub ah, ah
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0x3f
    jne short @..api_idx_0004_14.l2
    mov word [data_9e84], 1
    mov byte [bx + si], 0x20
    jmp short @..api_idx_0004_14.l4
@..api_idx_0004_14.l2:
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x21
    je short @..api_idx_0004_14.l3
    cmp ax, strict word 0x2e
    je short @..api_idx_0004_14.l3
    cmp ax, strict word 0x2c
    jne short @..api_idx_0004_14.l4
@..api_idx_0004_14.l3:
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0002]
    mov byte [bx + si], 0x20
@..api_idx_0004_14.l4:
    inc word [bp - 0x0002]
@..api_idx_0004_14.l5:
    push word [bp + 0x4]
    db 0xe8, 0x04, 0x73 ; call 0xfa90
    pop cx
    cmp ax, word [bp - 0x0002]
    jg short @..api_idx_0004_14.l1
    ret
api_idx_0002_9:
    mov ax, 0xfffe
    db 0xe8, 0x72, 0x6c ; call 0xf40b
    mov ax, 0x25
    push ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    db 0xe8, 0xa0, 0x66 ; call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0
    jl short @..api_idx_0002_9.l1
    push ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    push word [bp + 0x6]
    call string_loc_ae4e
    add sp, byte 6
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0002]
    mov byte [bx + si], 0
    jmp short @..api_idx_0002_9.l3
@..api_idx_0002_9.l1:
    mov ax, 0x40
    push ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    db 0xe8, 0x65, 0x66 ; call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0
    jl short @..api_idx_0002_9.l2
    push ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    push word [bp + 0x6]
    call string_loc_ae4e
    add sp, byte 6
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0002]
    mov byte [bx + si], 0
    jmp short @..api_idx_0002_9.l3
@..api_idx_0002_9.l2:
    mov ax, 0x5e
    push ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    db 0xe8, 0x2a, 0x66 ; call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0
    jl short @..api_idx_0002_9.l3
    push ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    push word [bp + 0x6]
    call string_loc_ae4e
    add sp, byte 6
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0002]
    mov byte [bx + si], 0
@..api_idx_0002_9.l3:
    ret
api_idx_0006_8:
    mov ax, 0xfffa
    db 0xe8, 0xbc, 0x6b ; call 0xf40b
    mov ax, 0x25
    push ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    db 0xe8, 0xea, 0x65 ; call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jl short @..api_idx_0006_8.l1
    inc ax
    push ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    push word [bp + 0x6]
    call string_loc_ae4e
    add sp, byte 6
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0006]
    mov byte [bx + si], 0x53
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0006]
    mov byte [bx + si + 0x1], 0
    jmp near @..api_idx_0006_8.l6
@..api_idx_0006_8.l1:
    mov ax, 0x40
    push ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    db 0xe8, 0xa3, 0x65 ; call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jl short @..api_idx_0006_8.l2
    push ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    push word [bp + 0x6]
    call string_loc_ae4e
    add sp, byte 6
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0006]
    mov byte [bx + si], 0
    jmp near @..api_idx_0006_8.l6
@..api_idx_0006_8.l2:
    mov ax, 0x5e
    push ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    db 0xe8, 0x67, 0x65 ; call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jge short @..api_idx_0006_8.l3
    jmp near @..api_idx_0006_8.l6
@..api_idx_0006_8.l3:
    mov ax, 0x14
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, word [bp - 0x0006]
    add cx, ax
    mov bx, cx
    mov al, byte [bx - 0x6177]
    sub ah, ah
    add ax, strict word 0xffd0
    mov word [bp - 0x0004], ax
    mov cx, word [bp - 0x0006]
    sub cx, ax
    mov ax, cx
    push ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    push word [bp + 0x6]
    call string_loc_ae4e
    add sp, byte 6
    mov ax, word [bp - 0x0006]
    sub ax, word [bp - 0x0004]
    mov si, ax
    mov bx, word [bp + 0x6]
    mov byte [bx + si], 0
    mov ax, word [bp - 0x0006]
    inc ax
    inc ax
    mov word [bp - 0x0002], ax
    jmp short @..api_idx_0006_8.l5
@..api_idx_0006_8.l4:
    push word [bp + 0x6]
    db 0xe8, 0x4b, 0x71 ; call 0xfa90
    pop cx
    mov word [bp - 0x0004], ax
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x6178]
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], al
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0004]
    mov byte [bx + si + 0x1], 0
    inc word [bp - 0x0002]
@..api_idx_0006_8.l5:
    mov ax, 0x14
    imul word [bp + 0x4]
    add ax, 0x9e88
    push ax
    db 0xe8, 0x16, 0x71 ; call 0xfa90
    pop cx
    cmp ax, word [bp - 0x0002]
    jg short @..api_idx_0006_8.l4
@..api_idx_0006_8.l6:
    ret
loc_8981:
    mov ax, 0
    db 0xe8, 0x84, 0x6a ; call 0xf40b
    cmp word [bp + 0x6], byte 0
    jne short @..local.l282
    push word [bp + 0x8]
    push word [bp + 0x4]
    call api_idx_0002_9
    add sp, byte 4
    jmp short @..local.l283
@..local.l282:
    push word [bp + 0x8]
    push word [bp + 0x4]
    call api_idx_0006_8
    add sp, byte 4
@..local.l283:
    ret
api_idx_0058:
    mov ax, 0xffa8
    db 0xe8, 0x5d, 0x6a ; call 0xf40b
    mov word [bp - 0x0002], 0
    jmp near @..local.l286
@..api_idx_0058.l1:
    lea ax, word [bp - 0x002c]
    push ax
    push word [bp - 0x0002]
    call api_idx_0002_9
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    push word [bp - 0x0002]
    call api_idx_0006_8
    add sp, byte 4
    lea ax, word [bp - 0x002c]
    push ax
    db 0xe8, 0xb9, 0x70 ; call 0xfa90
    pop cx
    mov word [bp - 0x0058], ax
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x002c], 0x20
    mov byte [bx - 0x002b], 0
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0xa2, 0x70 ; call 0xfa90
    pop cx
    mov word [bp - 0x0058], ax
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x0054], 0x20
    mov byte [bx - 0x0053], 0
    lea ax, word [bp - 0x002c]
    push ax
    db 0xe8, 0x8b, 0x70 ; call 0xfa90
    pop cx
    push ax
    lea ax, word [bp - 0x002c]
    push ax
    push word [bp + 0x4]
    call string_loc_ae94
    add sp, byte 6
    test ax, ax
    jne short @..local.l284
    lea ax, word [bp - 0x002c]
    push ax
    db 0xe8, 0x71, 0x70 ; call 0xfa90
    pop cx
    dec ax
    push ax
    push word [bp + 0x4]
    call api_idx_0002_8
    add sp, byte 4
    mov bx, word [bp + 0x6]
    mov word [bx], 0
    mov ax, word [bp - 0x0002]
    ret
@..local.l284:
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0x53, 0x70 ; call 0xfa90
    pop cx
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    push word [bp + 0x4]
    call string_loc_ae94
    add sp, byte 6
    test ax, ax
    jne short @..local.l285
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0x39, 0x70 ; call 0xfa90
    pop cx
    dec ax
    push ax
    push word [bp + 0x4]
    call api_idx_0002_8
    add sp, byte 4
    mov bx, word [bp + 0x6]
    mov word [bx], 1
    mov ax, word [bp - 0x0002]
    ret
@..local.l285:
    inc word [bp - 0x0002]
@..local.l286:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_a656]
    jge short @..local.l287
    jmp near @..api_idx_0058.l1
@..local.l287:
    mov ax, 0xffff
    ret
api_idx_0054_5:
    mov ax, 0xffac
    db 0xe8, 0x84, 0x69 ; call 0xf40b
    mov word [bp - 0x0002], 0
    jmp near @..local.l291
@..api_idx_0054_5.l1:
    mov byte [bp - 0x0052], 0
    mov ax, word [bp + 0x6]
    jmp near @..local.l288
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, 0xa658
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    db 0xe8, 0xba, 0x68 ; call 0xf364
    add sp, byte 4
    jmp near @..local.l289
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, 0xa6bc
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    db 0xe8, 0xa3, 0x68 ; call 0xf364
    add sp, byte 4
    jmp near @..local.l289
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, 0xa702
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    db 0xe8, 0x8c, 0x68 ; call 0xf364
    add sp, byte 4
    jmp short @..local.l289
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, 0xa766
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    db 0xe8, 0x76, 0x68 ; call 0xf364
    add sp, byte 4
    jmp short @..local.l289
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0xa7ac
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    db 0xe8, 0x60, 0x68 ; call 0xf364
    add sp, byte 4
    jmp short @..local.l289
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, 0xa810
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    db 0xe8, 0x4a, 0x68 ; call 0xf364
    add sp, byte 4
    jmp short @..local.l289
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, 0xa856
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    db 0xe8, 0x34, 0x68 ; call 0xf364
    add sp, byte 4
    jmp short @..local.l289
    popf
    db 0xdb, 0xe0 ; feni8087_nop 

    db 0xda, 0xf7, 0xda, 0x0e, 0xdb, 0x24, 0xdb, 0x9d, 0xdb, 0x9d, 0xdb, 0x3a, 0xdb, 0x50, 0xdb, 0x66
    db 0xdb

@..local.l288:
    cmp ax, strict word 0xa
    jae short @..local.l289
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x2484]
@..local.l289:
    lea ax, word [bp - 0x0052]
    push ax
    db 0xe8, 0x33, 0x6f ; call 0xfa90
    pop cx
    mov word [bp - 0x0054], ax
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x0052], 0x20
    mov byte [bx - 0x0051], 0
    lea ax, word [bp - 0x0052]
    push ax
    db 0xe8, 0x1c, 0x6f ; call 0xfa90
    pop cx
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    push word [bp + 0x4]
    call string_loc_ae94
    add sp, byte 6
    test ax, ax
    jne short @..local.l290
    lea ax, word [bp - 0x0052]
    push ax
    db 0xe8, 0x02, 0x6f ; call 0xfa90
    pop cx
    dec ax
    push ax
    push word [bp + 0x4]
    call api_idx_0002_8
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    ret
@..local.l290:
    inc word [bp - 0x0002]
@..local.l291:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x8]
    jge short @..local.l292
    jmp near @..api_idx_0054_5.l1
@..local.l292:
    mov ax, 0xffff
    ret
api_idx_0002_10:
    mov ax, 0xfffe
    db 0xe8, 0x55, 0x68 ; call 0xf40b
    push word [bp + 0x6]
    db 0xe8, 0xd4, 0x6e ; call 0xfa90
    pop cx
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call string_loc_ae94
    add sp, byte 6
    test ax, ax
    jne short @..local.l293
    push word [bp + 0x6]
    db 0xe8, 0xbc, 0x6e ; call 0xfa90
    pop cx
    dec ax
    push ax
    push word [bp + 0x4]
    call api_idx_0002_8
    add sp, byte 4
    mov ax, 0
    ret
@..local.l293:
    mov ax, 0xffff
    ret
api_idx_0002_11:
    mov ax, 0xfffe
    db 0xe8, 0x1d, 0x68 ; call 0xf40b
    mov word [bp - 0x0002], 0
@..api_idx_0002_11.l1:
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0xa7ac
    push ax
    push word [bp + 0x4]
    call string_loc_ae76
    add sp, byte 4
    test ax, ax
    jne short @..local.l294
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0xa7b6
    push ax
    push word [bp + 0x4]
    db 0xe8, 0x4a, 0x67 ; call 0xf364
    add sp, byte 4
    ret
@..local.l294:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 5
    jl short @..api_idx_0002_11.l1
    ret
api_idx_0004_15:
    mov ax, 0xfffc
    db 0xe8, 0xdb, 0x67 ; call 0xf40b
    mov word [bp - 0x0004], 0x20
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0004_15.l3
@..api_idx_0004_15.l1:
    cmp word [bp - 0x0004], byte 0x20
    je short @..api_idx_0004_15.l2
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x41
    jb short @..api_idx_0004_15.l2
    cmp byte [bx + si], 0x5a
    ja short @..api_idx_0004_15.l2
    add byte [bx + si], 0x20
@..api_idx_0004_15.l2:
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si]
    sub ah, ah
    mov word [bp - 0x0004], ax
    inc word [bp - 0x0002]
@..api_idx_0004_15.l3:
    push word [bp + 0x4]
    db 0xe8, 0x25, 0x6e ; call 0xfa90
    pop cx
    cmp ax, word [bp - 0x0002]
    jg short @..api_idx_0004_15.l1
    ret
api_idx_0084:
    mov ax, 0xff7c
    db 0xe8, 0x93, 0x67 ; call 0xf40b
    lea ax, word [bp - 0x0050]
    push ax
    push word [data_91a8]
    db 0xe8, 0xb8, 0x28 ; call 0xb53b
    add sp, byte 4
    mov al, byte [bp - 0x0050]
    sub ah, ah
    mov word [bp - 0x0082], ax
    mov al, byte [bp - 0x004f]
    sub ah, ah
    dec ax
    mov word [bp - 0x0084], ax
    mov word [bp - 0x0054], 0
    mov word [bp - 0x0056], 2
@..api_idx_0084.l1:
    mov ax, 0x2f
    push ax
    mov ax, word [bp - 0x0056]
    lea cx, word [bp - 0x0050]
    add ax, cx
    push ax
    db 0xe8, 0x97, 0x61 ; call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0052], ax
    cmp ax, strict word 0xffff
    je short @..api_idx_0084.l2
    mov ax, word [bp - 0x0056]
    mov cx, word [bp - 0x0054]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x007e], ax
    add ax, word [bp - 0x0052]
    inc ax
    mov word [bp - 0x0056], ax
    inc word [bp - 0x0054]
    jmp short @..api_idx_0084.l1
@..api_idx_0084.l2:
    mov ax, word [bp - 0x0056]
    mov cx, word [bp - 0x0054]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x007e], ax
    cmp word [bp + 0x6], byte 0
    jne short @..api_idx_0084.l4
    mov ax, word [bp - 0x0054]
    cmp ax, word [bp - 0x0082]
    jle short @..api_idx_0084.l3
    mov ax, word [bp - 0x0082]
    mov word [bp - 0x0054], ax
@..api_idx_0084.l3:
    push word [bp - 0x0054]
    db 0xe8, 0xa5, 0x2a ; call 0xb7a9
    pop cx
    mov word [bp - 0x0080], ax
    jmp short @..api_idx_0084.l5
@..api_idx_0084.l4:
    mov ax, word [bp - 0x0084]
    sub word [bp - 0x0054], ax
    push word [bp - 0x0054]
    db 0xe8, 0x92, 0x2a ; call 0xb7a9
    pop cx
    mov cx, ax
    mov ax, word [bp - 0x0084]
    add cx, ax
    mov word [bp - 0x0080], cx
@..api_idx_0084.l5:
    mov ax, word [bp - 0x0080]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x007c]
    mov cx, word [bx - 0x007e]
    sub ax, cx
    mov word [bp - 0x0052], ax
    push ax
    mov ax, cx
    lea cx, word [bp - 0x0050]
    add ax, cx
    push ax
    push word [bp + 0x4]
    call string_loc_ae4e
    add sp, byte 6
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0052]
    mov byte [bx + si - 0x0001], 0
    push word [bp + 0x4]
    lea ax, word [bp - 0x0050]
    push ax
    db 0xe8, 0x07, 0x66 ; call 0xf364
    add sp, byte 4
    mov bx, word [bp - 0x0052]
    add bx, bp
    mov byte [bx - 0x0051], 0x20
    mov byte [bx - 0x0050], 0
    mov ax, 0x9e44
    push ax
    lea ax, word [bp - 0x0050]
    push ax
    call api_idx_0058
    add sp, byte 4
    mov word [data_9e42], ax
    push word [bp + 0x4]
    call api_idx_0004_15
    pop cx
    ret
api_idx_0002_12:
    mov ax, 0xfffe
    db 0xe8, 0x7f, 0x66 ; call 0xf40b
    mov word [bp - 0x0002], 0
@..api_idx_0002_12.l1:
    mov ax, word [bp - 0x0002]
    add ax, word [bp + 0x6]
    mov si, ax
    mov bx, word [bp + 0x4]
    cmp byte [bx + si], 0
    je short @..api_idx_0002_12.l2
    mov al, byte [bx + si]
    cmp al, 0x20
    je short @..api_idx_0002_12.l2
    inc word [bp - 0x0002]
    jmp short @..api_idx_0002_12.l1
@..api_idx_0002_12.l2:
    cmp word [bp - 0x0002], byte 0
    jne short @..local.l295
    mov ax, 0xffff
    ret
@..local.l295:
    mov ax, word [bp + 0x6]
    add ax, word [bp - 0x0002]
    ret
api_idx_00a6:
    mov ax, 0xff5a
    db 0xe8, 0x48, 0x66 ; call 0xf40b
    mov word [bp - 0x0002], 0
@..api_idx_00a6.l1:
    mov word [bp - 0x0004], 0
    mov ax, 0x2f
    push ax
    mov ax, 0x32
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    add ax, 0xa8c4
    push ax
    db 0xe8, 0x69, 0x60 ; call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0006], ax
    push ax
    mov ax, 0x32
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    add ax, 0xa8c4
    push ax
    lea ax, word [bp - 0x0056]
    push ax
    call string_loc_ae4e
    add sp, byte 6
    mov bx, word [bp - 0x0006]
    add bx, bp
    mov byte [bx - 0x0056], 0x20
    mov byte [bx - 0x0055], 0
    mov ax, word [bp - 0x0006]
    inc ax
    mov word [bp - 0x0004], ax
@..api_idx_00a6.l2:
    mov ax, 0x2f
    push ax
    mov ax, 0x32
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    add ax, 0xa8c4
    push ax
    db 0xe8, 0x23, 0x60 ; call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0006], ax
    push ax
    mov ax, 0x32
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    add ax, 0xa8c4
    push ax
    lea ax, word [bp - 0x00a6]
    push ax
    call string_loc_ae4e
    add sp, byte 6
    mov bx, word [bp - 0x0006]
    add bx, bp
    mov byte [bx - 0x00a6], 0x20
    mov byte [bx - 0x00a5], 0
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x0006]
    inc ax
    mov word [bp - 0x0004], ax
    lea ax, word [bp - 0x00a6]
    push ax
    db 0xe8, 0x29, 0x6c ; call 0xfa90
    pop cx
    push ax
    lea ax, word [bp - 0x00a6]
    push ax
    push word [bp + 0x4]
    call string_loc_ae94
    add sp, byte 6
    test ax, ax
    jne short @..local.l296
    lea ax, word [bp - 0x0056]
    push ax
    push word [bp + 0x4]
    db 0xe8, 0xdf, 0x64 ; call 0xf364
    add sp, byte 4
    ret
@..local.l296:
    mov ax, 0x32
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov bx, ax
    cmp byte [bx - 0x573c], 0
    je short @..local.l297
    jmp near @..api_idx_00a6.l2
@..local.l297:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x26
    jge short @..local.l298
    jmp near @..api_idx_00a6.l1
@..local.l298:
    ret
api_idx_00a8:
    mov ax, 0xff58
    db 0xe8, 0x58, 0x65 ; call 0xf40b
    push word [bp + 0x4]
    lea ax, word [bp - 0x0052]
    push ax
    db 0xe8, 0xa7, 0x64 ; call 0xf364
    add sp, byte 4
    mov word [bp - 0x00a8], 0
    mov word [bp - 0x00a4], 0
@..api_idx_00a8.l1:
    mov bx, word [bp - 0x00a4]
    add bx, bp
    cmp byte [bx - 0x0052], 0x20
    jne short @..api_idx_00a8.l2
    inc word [bp - 0x00a4]
    jmp short @..api_idx_00a8.l1
@..api_idx_00a8.l2:
    push word [bp - 0x00a4]
    lea ax, word [bp - 0x0052]
    push ax
    call api_idx_0002_12
    add sp, byte 4
    mov word [bp - 0x00a6], ax
    cmp ax, strict word 0xffff
    je short @..api_idx_00a8.l5
    sub ax, word [bp - 0x00a4]
    push ax
    mov ax, word [bp - 0x00a4]
    lea cx, word [bp - 0x0052]
    add ax, cx
    push ax
    lea ax, word [bp - 0x00a2]
    push ax
    call string_loc_ae4e
    add sp, byte 6
    mov ax, word [bp - 0x00a6]
    sub ax, word [bp - 0x00a4]
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x00a2], 0x20
    mov byte [bx - 0x00a1], 0
    lea ax, word [bp - 0x00a2]
    push ax
    call api_idx_00a6
    pop cx
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_00a8.l4
@..api_idx_00a8.l3:
    mov bx, word [bp - 0x0002]
    add bx, bp
    mov al, byte [bx - 0x00a2]
    mov cx, word [bp - 0x00a8]
    add cx, word [bp - 0x0002]
    mov si, cx
    mov bx, word [bp + 0x4]
    mov byte [bx + si], al
    inc word [bp - 0x0002]
@..api_idx_00a8.l4:
    lea ax, word [bp - 0x00a2]
    push ax
    db 0xe8, 0x39, 0x6b ; call 0xfa90
    pop cx
    cmp ax, word [bp - 0x0002]
    jg short @..api_idx_00a8.l3
    lea ax, word [bp - 0x00a2]
    push ax
    db 0xe8, 0x2b, 0x6b ; call 0xfa90
    pop cx
    add word [bp - 0x00a8], ax
@..api_idx_00a8.l5:
    mov ax, word [bp - 0x00a6]
    mov word [bp - 0x00a4], ax
    cmp ax, strict word 0xffff
    je short @..api_idx_00a8.l6
    jmp near @..api_idx_00a8.l1
@..api_idx_00a8.l6:
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x00a8]
    mov byte [bx + si], 0
    ret
api_idx_0004_16:
    mov ax, 0xfffc
    db 0xe8, 0x80, 0x64 ; call 0xf40b
    mov ax, 7
    push ax
    mov ax, 2
    push ax
    push word [bp + 0x4]
    call api_idx_0054_5
    add sp, byte 6
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short @..local.l299
    mov ax, 2
    ret
@..local.l299:
    mov ax, 0xa
    push ax
    mov ax, 3
    push ax
    push word [bp + 0x4]
    call api_idx_0054_5
    add sp, byte 6
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short @..local.l302
    mov word [data_9e48], ax
    jmp short @..local.l300

    db 0xc7, 0x06, 0x6e, 0x9e, 0x01, 0x00, 0xeb, 0x4b, 0xc7, 0x06, 0x70, 0x9e, 0x01, 0x00, 0xeb, 0x43
    db 0xc7, 0x06, 0x68, 0x9e, 0x01, 0x00, 0xeb, 0x3b, 0xc7, 0x06, 0x6a, 0x9e, 0x01, 0x00, 0xeb, 0x33
    db 0xc7, 0x06, 0x6c, 0x9e, 0x01, 0x00, 0xeb, 0x2b, 0xc7, 0x06, 0x74, 0x9e, 0x01, 0x00, 0xeb, 0x23
    db 0xc7, 0x06, 0x76, 0x9e, 0x01, 0x00, 0xeb, 0x1b, 0x0d, 0xe0, 0x15, 0xe0, 0x1d, 0xe0, 0x25, 0xe0
    db 0x2d, 0xe0, 0x35, 0xe0, 0x3d, 0xe0

@..local.l300:
    cmp ax, strict word 7
    jae short @..local.l301
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x1fbb]
@..local.l301:
    mov ax, 3
    ret
@..local.l302:
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    push word [bp + 0x4]
    call api_idx_0054_5
    add sp, byte 6
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short @..local.l303
    mov word [data_9e62], 1
    mov word [data_9e50], ax
    push ax
    call loc_86c6
    pop cx
    mov word [data_9e46], 0xffff
    mov word [data_9e82], 0xffff
    mov ax, 8
    ret
@..local.l303:
    mov ax, 7
    push ax
    mov ax, 4
    push ax
    push word [bp + 0x4]
    call api_idx_0054_5
    add sp, byte 6
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short @..local.l307
    cmp word [data_b030], byte 7
    je short @..local.l304
    cmp word [data_b030], byte 0
    jne short @..local.l305
@..local.l304:
    mov word [data_9e64], 1
    mov ax, word [data_9e7c]
    mov word [data_9e78], ax
@..local.l305:
    cmp word [bp - 0x0002], byte 0
    jne short @..local.l306
    mov word [data_9e60], 1
@..local.l306:
    mov ax, 4
    ret
@..local.l307:
    mov ax, 0xb032
    push ax
    push word [bp + 0x4]
    call api_idx_0002_10
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short @..local.l308
    mov word [data_9e66], 1
    mov ax, 5
    ret
@..local.l308:
    mov ax, 0xa
    push ax
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call api_idx_0054_5
    add sp, byte 6
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short @..local.l313
    cmp word [data_b030], byte 6
    jne short @..local.l309
    mov word [data_9e46], 0xffff
    mov ax, word [data_9e78]
    mov word [bp - 0x0004], ax
    mov ax, word [data_9e7a]
    mov word [data_9e78], ax
    mov ax, word [bp - 0x0004]
    mov word [data_9e7a], ax
@..local.l309:
    cmp word [data_9e46], byte 0xff
    je short @..local.l310
    mov ax, word [bp - 0x0002]
    mov word [data_9e82], ax
    jmp short @..local.l311
@..local.l310:
    mov ax, word [bp - 0x0002]
    mov word [data_9e46], ax
@..local.l311:
    cmp word [data_b030], byte 7
    jne short @..local.l312
    mov ax, word [data_9e7c]
    mov word [data_9e78], ax
@..local.l312:
    mov ax, 1
    ret
@..local.l313:
    mov ax, 0xb03c
    push ax
    push word [bp + 0x4]
    call api_idx_0002_10
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short @..local.l314
    mov ax, 6
    ret
@..local.l314:
    mov ax, 0xb
    push ax
    mov ax, 9
    push ax
    push word [bp + 0x4]
    call api_idx_0054_5
    add sp, byte 6
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short @..local.l318
    mov ax, word [data_9e42]
    cmp ax, strict word 0xffff
    je short @..local.l315
    cmp word [data_9e42], byte 0
    je short @..local.l315
    cmp ax, word [data_b046]
    jne short @..local.l316
@..local.l315:
    mov ax, word [data_9e4a]
    mov word [data_9e42], ax
    mov ax, word [data_9e4c]
    mov word [data_9e44], ax
    jmp short @..local.l317
@..local.l316:
    mov ax, word [data_9e4a]
    cmp ax, word [data_9e42]
    je short @..local.l317
    cmp word [data_9e4a], byte 0
    je short @..local.l317
    cmp ax, word [data_b046]
    je short @..local.l317
    mov word [data_9e7e], ax
    mov ax, word [data_9e4c]
    mov word [data_9e80], ax
@..local.l317:
    mov ax, 0
    ret
@..local.l318:
    mov word [data_b048], 0
    mov ax, 0xb048
    push ax
    push word [bp + 0x4]
    call api_idx_0058
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..local.l319
    jmp near @..local.l328
@..local.l319:
    cmp word [data_b030], byte 4
    jne short @..local.l321
    mov word [data_9e62], 1
    cmp word [bp - 0x0002], byte 0
    jne short @..local.l320
    mov word [data_9e78], 0
@..local.l320:
    jmp short @..local.l324
@..local.l321:
    cmp word [data_b030], byte 1
    jne short @..local.l323
    cmp word [bp - 0x0002], byte 0
    jne short @..local.l322
    mov word [data_9e7a], 0
@..local.l322:
    jmp short @..local.l324
@..local.l323:
    cmp word [data_b030], byte 6
    jne short @..local.l324
    cmp word [bp - 0x0002], byte 0
    jne short @..local.l324
    mov word [data_9e7a], 0
@..local.l324:
    cmp word [bp - 0x0002], byte 0
    jne short @..local.l325
    mov word [data_9e7c], ax
@..local.l325:
    mov ax, word [data_9e42]
    cmp ax, strict word 0xffff
    je short @..local.l326
    cmp word [data_9e42], byte 0
    je short @..local.l326
    cmp ax, word [data_b046]
    jne short @..local.l327
@..local.l326:
    mov ax, word [bp - 0x0002]
    mov word [data_9e42], ax
    mov ax, word [data_b048]
    mov word [data_9e44], ax
@..local.l327:
    mov ax, 0
    ret
@..local.l328:
    mov ax, 5
    push ax
    mov ax, 7
    push ax
    push word [bp + 0x4]
    call api_idx_0054_5
    add sp, byte 6
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short @..local.l332
    cmp word [data_b030], byte 4
    jne short @..local.l329
    mov word [data_9e62], 1
    mov word [data_9e78], ax
    jmp short @..local.l331
@..local.l329:
    cmp word [data_b030], byte 1
    jne short @..local.l330
    mov ax, word [bp - 0x0002]
    mov word [data_9e7a], ax
    jmp short @..local.l331
@..local.l330:
    cmp word [data_b030], byte 6
    jne short @..local.l331
    mov ax, word [bp - 0x0002]
    mov word [data_9e7a], ax
@..local.l331:
    mov ax, word [bp - 0x0002]
    mov word [data_9e7c], ax
    mov ax, 7
    ret
@..local.l332:
    cmp word [data_b030], byte 6
    jne short @..local.l333
    mov word [data_9e46], 0xffff
@..local.l333:
    mov ax, 0xa
    ret
api_idx_000e_2:
    mov ax, 0xfff2
    db 0xe8, 0x88, 0x61 ; call 0xf40b
    mov word [bp - 0x000c], 0
    mov word [bp - 0x0004], 0
@..api_idx_000e_2.l1:
    mov word [bp - 0x0002], 0
@..api_idx_000e_2.l2:
    mov ax, 6
    imul word [bp - 0x0004]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx - 0x7bc6], byte 0
    je short @..api_idx_000e_2.l3
    inc word [bp - 0x000c]
@..api_idx_000e_2.l3:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 3
    jl short @..api_idx_000e_2.l2
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jl short @..api_idx_000e_2.l1
    mov ax, 0xa
    mov cx, word [bp - 0x000c]
    shl cx, 1
    shl cx, 1
    sub ax, cx
    mov word [bp - 0x000e], ax
    mov ax, 2
    push ax
    mov ax, word [data_93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    db 0xe8, 0xa0, 0x55 ; call 0xe883
    add sp, byte 4
    mov word [bp - 0x0004], ax
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    mov word [bp - 0x0002], ax
    mov ax, 0xc
    imul word [data_93d4]
    mov cx, word [data_93d4]
    shl cx, 1
    mov bx, cx
    cmp word [bx - 0x6c34], byte 0
    je short @..api_idx_000e_2.l4
    mov cx, 0x92
    jmp short @..api_idx_000e_2.l5
@..api_idx_000e_2.l4:
    mov cx, 0x97
@..api_idx_000e_2.l5:
    add ax, cx
    push ax
    push word [bp - 0x0002]
    db 0xe8, 0xe8, 0x54 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [data_93d4]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6c34], byte 0
    je short @..api_idx_000e_2.l6
    mov ax, 0x55
    jmp short @..api_idx_000e_2.l7
@..api_idx_000e_2.l6:
    mov ax, 1
@..api_idx_000e_2.l7:
    push ax
    db 0xe8, 0xe1, 0x54 ; call 0xe823
    add sp, byte 4
    mov ax, word [data_93d4]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x6c34]
    mov ax, word [data_93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    db 0xe8, 0xef, 0x54 ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    cmp byte [data_598a], 2
    jne short @..api_idx_000e_2.l8
    mov ax, 1
@..api_idx_000e_2.l8:
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0002]
    mov word [bp - 0x0006], ax
    jmp short @..api_idx_000e_2.l12
@..api_idx_000e_2.l9:
    mov ax, 0xc
    imul word [data_93d4]
    add ax, 0x9e
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    push ax
    mov ax, 0xc
    imul word [data_93d4]
    add ax, 0x92
    push ax
    push word [bp - 0x0006]
    db 0xe8, 0x3d, 0x55 ; call 0xe8da
    add sp, byte 8
    call api_idx_0006_2
    mov ax, 1
    push ax
    db 0xe8, 0xa6, 0x56 ; call 0xea50
    pop cx
    test ax, ax
    je short @..api_idx_000e_2.l10
    mov ax, 1
    push ax
    db 0xe8, 0x7c, 0x57 ; call 0xeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0x20
    jne short @..api_idx_000e_2.l10
    call api_idx_0004_4
@..api_idx_000e_2.l10:
    cmp word [bp - 0x000e], byte 0
    jle short @..api_idx_000e_2.l11
    push word [bp - 0x000e]
    db 0xe8, 0xb9, 0x50 ; call 0xe489
    pop cx
@..api_idx_000e_2.l11:
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    inc ax
    mov word [bp - 0x0006], ax
@..api_idx_000e_2.l12:
    mov ax, word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0006]
    jg short @..api_idx_000e_2.l9
    ret
api_idx_000a_3:
    mov ax, 0xfff6
    db 0xe8, 0x1e, 0x60 ; call 0xf40b
    mov ax, word [bp + 0x4]
    mov word [bp - 0x000a], ax
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0004], 1
@..api_idx_000a_3.l1:
    cmp word [bp - 0x0004], byte 0
    jne short @..api_idx_000a_3.l2
    jmp near @..api_idx_000a_3.l22
@..api_idx_000a_3.l2:
    mov bx, word [bp - 0x000a]
    mov al, byte [bx]
    sub ah, ah
    jmp near @..api_idx_000a_3.l14
@..api_idx_000a_3.l3:
    mov ax, 0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x12e
    push ax
    db 0xe8, 0xd2, 0x5c ; call 0xf0f1
    add sp, byte 6
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    db 0xe8, 0x82, 0x24 ; call 0xb8af
    add sp, byte 4
@..api_idx_000a_3.l4:
    db 0xe8, 0xbc, 0x26 ; call 0xbaef
    test ax, ax
    jne short @..api_idx_000a_3.l5
    call api_idx_0006_2
    jmp short @..api_idx_000a_3.l4
@..api_idx_000a_3.l5:
    push word [data_0e2c]
    push word [data_0e2a]
    db 0xe8, 0x68, 0x24 ; call 0xb8af
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x12e
    push ax
    db 0xe8, 0x8b, 0x5c ; call 0xf0e4
    add sp, byte 6
    mov bx, word [bp - 0x000a]
    cmp byte [bx], 0x40
    jne short @..api_idx_000a_3.l6
    call api_idx_0004_2
    call api_idx_0004_2
    mov word [bp - 0x0006], 0
@..api_idx_000a_3.l6:
    inc word [bp - 0x000a]
    jmp near @..api_idx_000a_3.l21
@..api_idx_000a_3.l7:
    mov ax, 1
    push ax
    mov ax, 0x36
    push ax
    call api_idx_0004_5
    add sp, byte 4
    inc word [bp - 0x000a]
    jmp near @..api_idx_000a_3.l21
@..api_idx_000a_3.l8:
    call api_idx_0004_2
    mov word [bp - 0x0006], 0
    inc word [bp - 0x000a]
    jmp near @..api_idx_000a_3.l21
@..api_idx_000a_3.l9:
    push word [bp + 0x6]
    mov ax, word [data_93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    db 0xe8, 0xbb, 0x5e ; call 0xf364
    add sp, byte 4
    mov ax, word [data_93d4]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6c34], 2
    call api_idx_000e_2
    mov bx, word [bp + 0x6]
    mov byte [bx], 0
    mov word [bp - 0x0006], 1
    inc word [bp - 0x000a]
    jmp near @..api_idx_000a_3.l21
@..api_idx_000a_3.l10:
    mov word [bp - 0x0002], 0
@..api_idx_000a_3.l11:
    mov ax, word [bp - 0x0002]
    mov cx, 7
    shl ax, cl
    mov bx, ax
    mov byte [bx - 0x6e34], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6c34], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short @..api_idx_000a_3.l11
    mov word [data_93d4], 0
    mov word [bp - 0x0006], 0
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    mov ax, 3
    push ax
    call loc_0c96
    pop cx
    inc word [bp - 0x000a]
    jmp short @..api_idx_000a_3.l21
@..api_idx_000a_3.l12:
    inc word [bp - 0x000a]
    mov bx, word [bp - 0x000a]
    mov al, byte [bx]
    sub ah, ah
    mov word [bp - 0x0008], ax
    push ax
    call math_loc_742e
    pop cx
    inc word [bp - 0x000a]
    jmp short @..api_idx_000a_3.l21
@..api_idx_000a_3.l13:
    mov word [bp - 0x0004], 0
    jmp short @..api_idx_000a_3.l21
@..api_idx_000a_3.l14:
    cmp ax, strict word 0x21
    jne short @..api_idx_000a_3.l15
    jmp near @..api_idx_000a_3.l8
@..api_idx_000a_3.l15:
    cmp ax, strict word 0x25
    jne short @..api_idx_000a_3.l16
    jmp near @..api_idx_000a_3.l7
@..api_idx_000a_3.l16:
    cmp ax, strict word 0x26
    jne short @..api_idx_000a_3.l17
    jmp near @..api_idx_000a_3.l9
@..api_idx_000a_3.l17:
    cmp ax, strict word 0x40
    jne short @..api_idx_000a_3.l18
    jmp near @..api_idx_000a_3.l3
@..api_idx_000a_3.l18:
    cmp ax, strict word 0x5b
    jne short @..api_idx_000a_3.l19
    jmp near @..api_idx_000a_3.l3
@..api_idx_000a_3.l19:
    cmp ax, strict word 0x5d
    jne short @..api_idx_000a_3.l20
    jmp near @..api_idx_000a_3.l10
@..api_idx_000a_3.l20:
    cmp ax, strict word 0x7e
    je short @..api_idx_000a_3.l12
    jmp short @..api_idx_000a_3.l13
@..api_idx_000a_3.l21:
    jmp near @..api_idx_000a_3.l1
@..api_idx_000a_3.l22:
    cmp word [bp - 0x0006], byte 0
    je short @..api_idx_000a_3.l23
    call api_idx_0004_2
@..api_idx_000a_3.l23:
    push word [bp - 0x000a]
    push word [bp + 0x4]
    db 0xe8, 0xe1, 0x5d ; call 0xf364
    add sp, byte 4
    ret
loc_9587:
    mov ax, 0xfea8
    db 0xe8, 0x7e, 0x5e ; call 0xf40b
    mov ax, word [bp + 0x4]
    mov word [bp - 0x0008], ax
    push ax
    db 0xe8, 0xf9, 0x64 ; call 0xfa90
    pop cx
    mov word [bp - 0x0004], ax
    mov bx, word [bp + 0x4]
    mov si, ax
    mov byte [bx + si + 0x1], 0
    mov byte [bp - 0x0088], 0
@..local.l334:
    mov bx, word [bp - 0x0008]
    cmp byte [bx], 0
    jne short @..local.l335
    jmp near @..local.l340
@..local.l335:
    mov ax, 0x20
    push ax
    push bx
    db 0xe8, 0x8e, 0x58 ; call 0xee4a
    add sp, byte 4
    mov word [bp - 0x0002], ax
    push ax
    cmp ax, strict word 0
    pop ax
    jge short @..local.l336
    push word [bp - 0x0008]
    db 0xe8, 0xc1, 0x64 ; call 0xfa90
    pop cx
@..local.l336:
    mov word [bp - 0x0006], ax
    push ax
    push word [bp - 0x0008]
    lea ax, word [bp - 0x0158]
    push ax
    call string_loc_ae4e
    add sp, byte 6
    mov bx, word [bp - 0x0006]
    add bx, bp
    mov byte [bx - 0x0158], 0
    lea ax, word [bp - 0x0088]
    push ax
    lea ax, word [bp - 0x0158]
    push ax
    call api_idx_000a_3
    add sp, byte 4
    lea ax, word [bp - 0x0088]
    push ax
    lea ax, word [bp - 0x0108]
    push ax
    db 0xe8, 0x5b, 0x5d ; call 0xf364
    add sp, byte 4
    cmp byte [bp - 0x0088], 0
    je short @..local.l337
    mov ax, 0x90ee
    push ax
    lea ax, word [bp - 0x0108]
    push ax
    db 0xe8, 0x0e, 0x5d ; call 0xf32d
    add sp, byte 4
@..local.l337:
    lea ax, word [bp - 0x0158]
    push ax
    lea ax, word [bp - 0x0108]
    push ax
    db 0xe8, 0xfe, 0x5c ; call 0xf32d
    add sp, byte 4
    mov ax, 2
    push ax
    lea ax, word [bp - 0x0108]
    push ax
    db 0xe8, 0x45, 0x52 ; call 0xe883
    add sp, byte 4
    mov word [bp - 0x0004], ax
    cmp ax, 0xb8
    jle short @..local.l338
    lea ax, word [bp - 0x0088]
    push ax
    mov ax, word [data_93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    db 0xe8, 0x07, 0x5d ; call 0xf364
    add sp, byte 4
    mov ax, word [data_93d4]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6c34], 2
    call api_idx_000e_2
    call api_idx_0004_2
    lea ax, word [bp - 0x0158]
    push ax
    lea ax, word [bp - 0x0088]
    push ax
    db 0xe8, 0xe4, 0x5c ; call 0xf364
    add sp, byte 4
    jmp short @..local.l339
@..local.l338:
    lea ax, word [bp - 0x0108]
    push ax
    lea ax, word [bp - 0x0088]
    push ax
    db 0xe8, 0xd2, 0x5c ; call 0xf364
    add sp, byte 4
@..local.l339:
    mov ax, word [bp - 0x0006]
    add word [bp - 0x0008], ax
    add word [bp - 0x0008], byte 1
    jmp near @..local.l334
@..local.l340:
    lea ax, word [bp - 0x0088]
    push ax
    mov ax, word [data_93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    db 0xe8, 0xae, 0x5c ; call 0xf364
    add sp, byte 4
    mov ax, word [data_93d4]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6c34], 2
    ret
api_idx_0080:
    mov ax, 0xff80
    db 0xe8, 0x3e, 0x5d ; call 0xf40b
    lea ax, word [bp - 0x0080]
    push ax
    push word [bp + 0x4]
    db 0xe8, 0x64, 0x1e ; call 0xb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    push word [bp + 0x6]
    lea ax, word [bp - 0x0080]
    push ax
    db 0xe8, 0x18, 0x1c ; call 0xb300
    add sp, byte 6
    mov ax, word [data_93d4]
    mov cx, 7
    shl ax, cl
    mov bx, ax
    cmp byte [bx - 0x6e34], 0
    je short @..api_idx_0080.l1
    mov ax, 0x90f0
    push ax
    add bx, strict word 0x91cc
    mov ax, bx
    push ax
    db 0xe8, 0x23, 0x5c ; call 0xf32d
    add sp, byte 4
@..api_idx_0080.l1:
    lea ax, word [bp - 0x0080]
    push ax
    mov ax, word [data_93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    db 0xe8, 0x0d, 0x5c ; call 0xf32d
    add sp, byte 4
    mov ax, word [data_93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    lea ax, word [bp - 0x0080]
    push ax
    db 0xe8, 0x2e, 0x5c ; call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x0080]
    push ax
    call loc_9587
    pop cx
    call api_idx_000e_2
    call api_idx_0004_2
    ret
api_idx_0100:
    mov ax, 0xff00
    db 0xe8, 0xbd, 0x5c ; call 0xf40b
@..api_idx_0100.l1:
    lea ax, word [bp - 0x00ff]
    push ax
    push word [bp + 0x4]
    db 0xe8, 0xe2, 0x1d ; call 0xb53b
    add sp, byte 4
    cmp word [data_5216], byte 0
    jne short @..api_idx_0100.l3
    mov ax, word [data_93d4]
    mov cx, 7
    shl ax, cl
    mov bx, ax
    cmp byte [bx - 0x6e34], 0
    je short @..api_idx_0100.l2
    mov ax, 0x90f2
    push ax
    add bx, strict word 0x91cc
    mov ax, bx
    push ax
    db 0xe8, 0xab, 0x5b ; call 0xf32d
    add sp, byte 4
@..api_idx_0100.l2:
    lea ax, word [bp - 0x00ff]
    push ax
    mov ax, word [data_93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    db 0xe8, 0x94, 0x5b ; call 0xf32d
    add sp, byte 4
    mov ax, word [data_93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    lea ax, word [bp - 0x00ff]
    push ax
    db 0xe8, 0xb4, 0x5b ; call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x00ff]
    push ax
    call loc_9587
    pop cx
    inc word [bp + 0x4]
@..api_idx_0100.l3:
    cmp word [data_5216], byte 0
    je short @..api_idx_0100.l1
    call api_idx_000e_2
    mov ax, word [bp + 0x6]
    jmp short @..api_idx_0100.l9
@..api_idx_0100.l4:
    call api_idx_0004_2
    jmp short @..api_idx_0100.l10
@..api_idx_0100.l5:
    mov ax, 0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x12e
    push ax
    db 0xe8, 0x0f, 0x59 ; call 0xf0f1
    add sp, byte 6
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    db 0xe8, 0xbf, 0x20 ; call 0xb8af
    add sp, byte 4
@..api_idx_0100.l6:
    db 0xe8, 0xf9, 0x22 ; call 0xbaef
    test ax, ax
    jne short @..api_idx_0100.l7
    call api_idx_0006_2
    jmp short @..api_idx_0100.l6
@..api_idx_0100.l7:
    push word [data_0e2c]
    push word [data_0e2a]
    db 0xe8, 0xa5, 0x20 ; call 0xb8af
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x12e
    push ax
    db 0xe8, 0xc8, 0x58 ; call 0xf0e4
    add sp, byte 6
    jmp short @..api_idx_0100.l10
@..api_idx_0100.l8:
    mov ax, 1
    push ax
    mov ax, 0x36
    push ax
    call api_idx_0004_5
    add sp, byte 4
    call api_idx_0004_2
    jmp short @..api_idx_0100.l10
@..api_idx_0100.l9:
    cmp ax, strict word 0
    je short @..api_idx_0100.l4
    cmp ax, strict word 1
    je short @..api_idx_0100.l5
    cmp ax, strict word 2
    je short @..api_idx_0100.l8
@..api_idx_0100.l10:
    ret
api_idx_00a2:
    mov ax, 0xff5e
    db 0xe8, 0xc1, 0x5b ; call 0xf40b
    cmp word [data_9e46], byte 0xff
    jne short @..api_idx_00a2.l1
    cmp word [data_9e60], byte 1
    jne short @..api_idx_00a2.l1
    mov word [data_9e46], 1
@..api_idx_00a2.l1:
    cmp word [data_9e7e], byte 0xff
    jne short @..api_idx_00a2.l2
    jmp near @..local.l341
@..api_idx_00a2.l2:
    lea ax, word [bp - 0x0052]
    push ax
    push word [data_9e44]
    push word [data_9e42]
    call loc_8981
    add sp, byte 6
    lea ax, word [bp - 0x0052]
    push ax
    call api_idx_0002_11
    pop cx
    lea ax, word [bp - 0x0052]
    push ax
    call api_idx_0004_15
    pop cx
    lea ax, word [bp - 0x00a2]
    push ax
    mov ax, 0x640
    push ax
    db 0xe8, 0xa5, 0x1c ; call 0xb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    lea ax, word [bp - 0x00a2]
    push ax
    db 0xe8, 0x57, 0x1a ; call 0xb300
    add sp, byte 6
    lea ax, word [bp - 0x00a2]
    push ax
    call loc_9587
    pop cx
    lea ax, word [bp - 0x0052]
    push ax
    push word [data_9e80]
    push word [data_9e7e]
    call loc_8981
    add sp, byte 6
    lea ax, word [bp - 0x0052]
    push ax
    call api_idx_0002_11
    pop cx
    lea ax, word [bp - 0x0052]
    push ax
    call api_idx_0004_15
    pop cx
    lea ax, word [bp - 0x0052]
    push ax
    mov ax, 0x641
    push ax
    call api_idx_0080
    add sp, byte 4
    mov ax, 0xffff
    ret
@..local.l341:
    cmp word [data_9e48], byte 0xff
    jne short @..local.l345
    cmp word [data_9e42], byte 0xff
    jne short @..local.l345
    cmp word [data_9e46], byte 0xff
    je short @..local.l342
    mov ax, 0xa
    imul word [data_9e46]
    add ax, 0xa658
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    db 0xe8, 0x54, 0x5a ; call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x0052]
    push ax
    call api_idx_0004_15
    pop cx
    lea ax, word [bp - 0x0052]
    push ax
    mov ax, 0x642
    push ax
    call api_idx_0080
    add sp, byte 4
    jmp short @..local.l344
@..local.l342:
    mov ax, 2
    push ax
    db 0xe8, 0x77, 0x1e ; call 0xb7a9
    pop cx
    test ax, ax
    jne short @..local.l343
    mov ax, 0x90f4
    push ax
    mov ax, 0x643
    push ax
    call api_idx_0080
    add sp, byte 4
    jmp short @..local.l344
@..local.l343:
    mov ax, 0x90f5
    push ax
    mov ax, 0x644
    push ax
    call api_idx_0080
    add sp, byte 4
@..local.l344:
    mov ax, 0xffff
    ret
@..local.l345:
    cmp word [data_9e82], byte 0xff
    je short @..local.l348
    cmp word [data_9e42], byte 0xff
    je short @..local.l346
    lea ax, word [bp - 0x0052]
    push ax
    mov ax, 1
    push ax
    push word [data_9e42]
    call loc_8981
    add sp, byte 6
    lea ax, word [bp - 0x0052]
    push ax
    call api_idx_0002_11
    pop cx
    lea ax, word [bp - 0x0052]
    push ax
    call api_idx_0004_15
    pop cx
    lea ax, word [bp - 0x0052]
    push ax
    mov ax, 0x645
    push ax
    call api_idx_0080
    add sp, byte 4
    mov word [data_9e4e], 1
    mov ax, word [data_9e42]
    mov word [data_9e4a], ax
    mov ax, word [data_9e44]
    mov word [data_9e4c], ax
    mov word [data_9e50], 1
    jmp short @..local.l347
@..local.l346:
    mov ax, 0x90f6
    push ax
    mov ax, 0x646
    push ax
    call api_idx_0080
    add sp, byte 4
@..local.l347:
    mov ax, 0xffff
    ret
@..local.l348:
    cmp word [data_9e48], byte 0xff
    jne short @..local.l350
    cmp word [data_9e46], byte 0xff
    jne short @..local.l350
    cmp word [data_9e42], byte 0xff
    je short @..local.l349
    mov word [data_9e62], 1
    mov word [data_9e54], 1
    mov word [data_9e46], 1
    mov ax, 0
    ret
@..local.l349:
    mov ax, 0x90f7
    push ax
    mov ax, 0x647
    push ax
    call api_idx_0080
    add sp, byte 4
    mov ax, 0xffff
    ret
@..local.l350:
    mov ax, 0
    ret
loc_9a04:
    mov ax, 0
    db 0xe8, 0x01, 0x5a ; call 0xf40b
    mov word [data_9e46], 0xffff
    mov word [data_9e42], 0xffff
    mov word [data_9e44], 0
    mov ax, word [data_9e48]
    jmp near @..local.l351

    db 0xb8, 0xf8, 0x90, 0x50, 0xff, 0x36, 0x4a, 0xb0, 0xe8, 0x9a, 0xfc, 0x83, 0xc4, 0x04, 0xe9, 0x98
    db 0x01, 0x83, 0x3e, 0x4c, 0xb0, 0x00, 0x7e, 0x1c, 0xb8, 0xf9, 0x90, 0x50, 0xff, 0x36, 0x4c, 0xb0
    db 0xe8, 0x82, 0xfc, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x36, 0x5a, 0x90, 0xe8, 0x4b
    db 0x77, 0x83, 0xc4, 0x04, 0xe9, 0x72, 0x01, 0xb8, 0xfa, 0x90, 0x50, 0xb8, 0x48, 0x06, 0x50, 0xe8
    db 0x63, 0xfc, 0x83, 0xc4, 0x04, 0xa1, 0x4e, 0x9e, 0xa3, 0x46, 0x9e, 0xa1, 0x4a, 0x9e, 0xa3, 0x42
    db 0x9e, 0xa1, 0x4c, 0x9e, 0xa3, 0x44, 0x9e, 0xc7, 0x06, 0x62, 0x9e, 0x01, 0x00, 0xff, 0x36, 0x50
    db 0x9e, 0xe8, 0x40, 0xec, 0x59, 0xe9, 0x41, 0x01, 0xb8, 0xfb, 0x90, 0x50, 0xb8, 0x49, 0x06, 0x50
    db 0xe8, 0x32, 0xfc, 0x83, 0xc4, 0x04, 0xc7, 0x06, 0x50, 0x9e, 0xff, 0xff, 0xe9, 0x2a, 0x01, 0xb8
    db 0xfc, 0x90, 0x50, 0xb8, 0x4a, 0x06, 0x50, 0xe8, 0x1b, 0xfc, 0x83, 0xc4, 0x04, 0xe9, 0x19, 0x01
    db 0xb8, 0xfd, 0x90, 0x50, 0xb8, 0x4b, 0x06, 0x50, 0xe8, 0x0a, 0xfc, 0x83, 0xc4, 0x04, 0xe9, 0x08
    db 0x01, 0xb8, 0xfe, 0x90, 0x50, 0xb8, 0x4c, 0x06, 0x50, 0xe8, 0xf9, 0xfb, 0x83, 0xc4, 0x04, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x05, 0x00, 0x50, 0xe8, 0xcd, 0x1c, 0x59, 0x8b, 0xc8, 0x40, 0x8b, 0xc8
    db 0xb8, 0x00, 0x00, 0x2b, 0xc1, 0x50, 0xff, 0x36, 0x4e, 0xb0, 0xe8, 0x0a, 0xeb, 0x83, 0xc4, 0x06
    db 0xb8, 0x02, 0x00, 0x50, 0xe8, 0xb0, 0x1c, 0x59, 0x3d, 0x01, 0x00, 0x75, 0x06, 0xc7, 0x06, 0x70
    db 0x9e, 0x01, 0x00, 0xe9, 0xc3, 0x00, 0xb8, 0xff, 0x90, 0x50, 0xb8, 0x4d, 0x06, 0x50, 0xe8, 0xb4
    db 0xfb, 0x83, 0xc4, 0x04, 0xc7, 0x06, 0x42, 0x9e, 0xff, 0xff, 0xc7, 0x06, 0x44, 0x9e, 0x00, 0x00
    db 0xc7, 0x06, 0x46, 0x9e, 0xff, 0xff, 0xc7, 0x06, 0x4a, 0x9e, 0xff, 0xff, 0xc7, 0x06, 0x4c, 0x9e
    db 0x00, 0x00, 0xc7, 0x06, 0x4e, 0x9e, 0xff, 0xff, 0xc7, 0x06, 0x50, 0x9e, 0xff, 0xff, 0xe9, 0x88
    db 0x00, 0xb8, 0x00, 0x91, 0x50, 0xb8, 0x4e, 0x06, 0x50, 0xe8, 0x79, 0xfb, 0x83, 0xc4, 0x04, 0xe9
    db 0x77, 0x00, 0xb8, 0x01, 0x91, 0x50, 0xb8, 0x4f, 0x06, 0x50, 0xe8, 0x68, 0xfb, 0x83, 0xc4, 0x04
    db 0x83, 0x3e, 0x6a, 0x9d, 0x00, 0x75, 0x3f, 0xb8, 0x02, 0x00, 0x50, 0xe8, 0x39, 0x1c, 0x59, 0x3d
    db 0x01, 0x00, 0x75, 0x32, 0xb8, 0x48, 0x02, 0xf7, 0x2e, 0x4e, 0xb0, 0x03, 0x06, 0x36, 0x91, 0x8b
    db 0xd8, 0x80, 0xbf, 0xb2, 0x5d, 0x32, 0x7d, 0x1e, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50
    db 0xe8, 0x14, 0x1c, 0x59, 0x40, 0x50, 0xff, 0x36, 0x4e, 0xb0, 0xe8, 0x5a, 0xea, 0x83, 0xc4, 0x06
    db 0xc7, 0x06, 0x6a, 0x9d, 0x01, 0x00, 0xeb, 0x21, 0x69, 0xea, 0x7a, 0xea, 0xa0, 0xea, 0xd1, 0xea
    db 0xe8, 0xea, 0xf9, 0xea, 0x0a, 0xeb, 0x4f, 0xeb, 0x8a, 0xeb, 0x9b, 0xeb

@..local.l351:
    cmp ax, strict word 0xa
    jae short @..local.l352
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x140f]
@..local.l352:
    ret
api_idx_0002_13:
    mov ax, 0xfffe
    db 0xe8, 0x39, 0x58 ; call 0xf40b
    mov al, byte [data_91c7]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jne short @..api_idx_0002_13.l1
    mov ax, 0x95a8
    push ax
    mov ax, 0x790
    push ax
    db 0xe8, 0x54, 0x19 ; call 0xb53b
    add sp, byte 4
    jmp near @..api_idx_0002_13.l4
@..api_idx_0002_13.l1:
    mov al, byte [data_91c7]
    sub ah, ah
    mov cx, 0xc
    imul cx
    add ax, word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx - 0x7622]
    cbw
    mov word [bp - 0x0002], ax
    cmp word [bp + 0x4], byte 0
    jne short @..api_idx_0002_13.l2
    mov al, byte [data_91c7]
    sub ah, ah
    mov bx, ax
    mov al, byte [bx - 0x7622]
    cbw
    mov word [bp - 0x0002], ax
@..api_idx_0002_13.l2:
    mov ax, 0x95a8
    push ax
    mov al, byte [data_91c7]
    sub ah, ah
    mov cx, 3
    imul cx
    mov cx, 0
    cmp word [bp - 0x0002], byte 0xe7
    jl short @..api_idx_0002_13.l3
    mov cx, 2
    cmp word [bp - 0x0002], byte 0x19
    jge short @..api_idx_0002_13.l3
    mov cx, 1
@..api_idx_0002_13.l3:
    add ax, cx
    add ax, 0x76c
    push ax
    db 0xe8, 0xf6, 0x18 ; call 0xb53b
    add sp, byte 4
    mov ax, 0x9d10
    push ax
    mov ax, word [bp + 0x4]
    add ax, 0x79e
    push ax
    db 0xe8, 0xe5, 0x18 ; call 0xb53b
    add sp, byte 4
    mov ax, 0x24
    push ax
    mov ax, 0x9d10
    push ax
    mov ax, 0x95a8
    push ax
    db 0xe8, 0x98, 0x16 ; call 0xb300
    add sp, byte 6
@..api_idx_0002_13.l4:
    mov ax, 0x95a8
    push ax
    call loc_9587
    pop cx
    call api_idx_000e_2
    call api_idx_0004_2
    ret
loc_9c7a:
    mov ax, 0
    db 0xe8, 0x8b, 0x57 ; call 0xf40b
    mov ax, 0x95fa
    push ax
    push word [bp + 0x4]
    db 0xe8, 0xb1, 0x18 ; call 0xb53b
    add sp, byte 4
    mov ax, 0x9d10
    push ax
    push word [bp + 0x6]
    db 0xe8, 0xa4, 0x18 ; call 0xb53b
    add sp, byte 4
    cmp byte [data_95fa], 0
    jne short @..local.l353
    mov ax, 0x9d10
    push ax
    mov ax, 0x650
    push ax
    call api_idx_0080
    add sp, byte 4
    jmp short @..local.l358
@..local.l353:
    cmp byte [data_95fa], 0x24
    jne short @..local.l355
    mov al, byte [data_95fb]
    sub ah, ah
    push ax
    push word [data_b04e]
    call api_idx_0040
    add sp, byte 4
    cmp ax, strict word 1
    jne short @..local.l354
    mov word [data_9e70], 1
@..local.l354:
    jmp short @..local.l358
@..local.l355:
    cmp byte [data_95fa], 0x26
    jne short @..local.l356
    mov al, byte [data_95fb]
    sub ah, ah
    dec ax
    push ax
    call api_idx_0002_13
    pop cx
    jmp short @..local.l358
@..local.l356:
    cmp byte [data_95fa], 0x2d
    jne short @..local.l357
    mov al, byte [data_95fb]
    sub ah, ah
    sub word [bp + 0x4], ax
@..local.l357:
    mov ax, 0x9102
    push ax
    push word [bp + 0x4]
    call api_idx_0080
    add sp, byte 4
@..local.l358:
    ret
math_loc_9d06:
    mov ax, 0
    db 0xe8, 0xff, 0x56 ; call 0xf40b
    mov ax, word [bp + 0x4]
    cmp ax, word [data_b046]
    jge short @..local.l359
    mov cx, 5
    imul cx
    add ax, word [data_b050]
    ret
@..local.l359:
    mov ax, word [bp + 0x4]
    sub ax, word [data_b046]
    mov cx, 5
    imul cx
    add ax, word [data_b052]
    ret
api_idx_0054_6:
    mov ax, 0xffac
    db 0xe8, 0xd5, 0x56 ; call 0xf40b
    mov ax, word [data_9e42]
    mov word [bp - 0x0002], ax
    mov cx, 0x14
    imul cx
    mov bx, ax
    cmp word [bx - 0x617a], byte 0
    jge short @..api_idx_0054_6.l1
    mov ax, word [bx - 0x617a]
    add word [bp - 0x0002], ax
@..api_idx_0054_6.l1:
    push word [bp - 0x0002]
    call math_loc_9d06
    pop cx
    mov word [bp - 0x0004], ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    mov bx, ax
    cmp word [bx - 0x617a], byte 3
    jne short @..local.l360
    mov ax, 0x659
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    call loc_9c7a
    add sp, byte 4
    ret
@..local.l360:
    mov ax, word [data_9e46]
    jmp near @..local.l361

    db 0x83, 0x3e, 0x62, 0x9e, 0x01, 0x74, 0x03, 0xe9, 0xf0, 0x00, 0x83, 0x7e, 0xfe, 0x00, 0x74, 0x03
    db 0xe9, 0xe7, 0x00, 0x83, 0x3e, 0x52, 0x9e, 0x01, 0x74, 0x0a, 0x83, 0x3e, 0x54, 0x9e, 0x01, 0x74
    db 0x03, 0xe9, 0xd6, 0x00, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x9a, 0x06, 0x50, 0xff, 0x36, 0x4e, 0xb0
    db 0xe8, 0xde, 0x0c, 0x83, 0xc4, 0x06, 0x3d, 0x03, 0x00, 0x74, 0x03, 0xe9, 0xad, 0x00, 0xb8, 0x48
    db 0x02, 0xf7, 0x2e, 0x4e, 0xb0, 0x8b, 0xd8, 0x83, 0xbf, 0x0a, 0x5c, 0x00, 0x7f, 0x09, 0x75, 0x09
    db 0x83, 0xbf, 0x08, 0x5c, 0x32, 0x72, 0x02, 0xeb, 0x32, 0xff, 0x36, 0x4e, 0xb0, 0xe8, 0x0e, 0xe7
    db 0x59, 0xb8, 0x48, 0x02, 0xf7, 0x2e, 0x4e, 0xb0, 0x8b, 0xd8, 0x83, 0xbf, 0x0a, 0x5c, 0x00, 0x7f
    db 0x09, 0x75, 0x09, 0x83, 0xbf, 0x08, 0x5c, 0x32, 0x72, 0x02, 0xeb, 0x0f, 0xb8, 0x03, 0x91, 0x50
    db 0xb8, 0x6c, 0x06, 0x50, 0xe8, 0xbe, 0xf8, 0x83, 0xc4, 0x04, 0xc3, 0xb8, 0x48, 0x02, 0xf7, 0x2e
    db 0x4e, 0xb0, 0x8b, 0xd8, 0x83, 0x87, 0x08, 0x5c, 0xce, 0x83, 0x97, 0x0a, 0x5c, 0xff, 0x83, 0x06
    db 0xb6, 0x91, 0x32, 0x83, 0x16, 0xb8, 0x91, 0x00, 0x83, 0x3e, 0x68, 0x9d, 0x00, 0x75, 0x2b, 0x83
    db 0x3e, 0xa8, 0x91, 0x00, 0x7e, 0x24, 0xb8, 0x00, 0x00, 0x50, 0x8d, 0x46, 0xac, 0x50, 0xe8, 0x2f
    db 0xee, 0x83, 0xc4, 0x04, 0x8d, 0x46, 0xac, 0x50, 0xb8, 0x51, 0x06, 0x50, 0xe8, 0x76, 0xf8, 0x83
    db 0xc4, 0x04, 0xc7, 0x06, 0x68, 0x9d, 0x01, 0x00, 0xeb, 0x0f, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xb8
    db 0xff, 0xff, 0x50, 0xe8, 0x46, 0x86, 0x83, 0xc4, 0x06, 0xeb, 0x0e, 0xb8, 0x04, 0x91, 0x50, 0xb8
    db 0x49, 0x06, 0x50, 0xe8, 0x4f, 0xf8, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x62, 0x9e, 0x00, 0x75
    db 0x13, 0x83, 0x3e, 0x64, 0x9e, 0x00, 0x75, 0x0c, 0xc7, 0x06, 0x62, 0x9e, 0x01, 0x00, 0xc7, 0x06
    db 0x54, 0x9e, 0x01, 0x00, 0x83, 0x3e, 0x62, 0x9e, 0x01, 0x75, 0x31, 0x83, 0x3e, 0x5e, 0x9e, 0x01
    db 0x75, 0x12, 0xb8, 0x59, 0x06, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x40, 0x50, 0xe8, 0xc8, 0xfd
    db 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x54, 0x9e, 0x01, 0x75, 0x11, 0xb8, 0x54, 0x06, 0x50, 0x8b
    db 0x46, 0xfc, 0x40, 0x40, 0x50, 0xe8, 0xb0, 0xfd, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x62, 0x9e
    db 0x01, 0x74, 0x03, 0xe9, 0x20, 0x01, 0x83, 0x3e, 0x52, 0x9e, 0x00, 0x75, 0x30, 0x83, 0x3e, 0x54
    db 0x9e, 0x00, 0x75, 0x29, 0x83, 0x3e, 0x56, 0x9e, 0x00, 0x75, 0x22, 0x83, 0x3e, 0x58, 0x9e, 0x00
    db 0x75, 0x1b, 0x83, 0x3e, 0x5a, 0x9e, 0x00, 0x75, 0x14, 0x83, 0x3e, 0x5c, 0x9e, 0x00, 0x75, 0x0d
    db 0x83, 0x3e, 0x5e, 0x9e, 0x00, 0x75, 0x06, 0xc7, 0x06, 0x54, 0x9e, 0x01, 0x00, 0x83, 0x3e, 0x52
    db 0x9e, 0x01, 0x75, 0x40, 0xb8, 0x14, 0x00, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x83, 0xbf, 0x86, 0x9e
    db 0x00, 0x74, 0x21, 0x8d, 0x46, 0xac, 0x50, 0xff, 0x36, 0x44, 0x9e, 0xff, 0x36, 0x42, 0x9e, 0xe8
    db 0x4d, 0xea, 0x83, 0xc4, 0x06, 0x8d, 0x46, 0xac, 0x50, 0xb8, 0x52, 0x06, 0x50, 0xe8, 0x85, 0xf7
    db 0x83, 0xc4, 0x04, 0xc3, 0xb8, 0x53, 0x06, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x50, 0xe8, 0x28, 0xfd
    db 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x54, 0x9e, 0x01, 0x75, 0x11, 0xb8, 0x54, 0x06, 0x50, 0x8b
    db 0x46, 0xfc, 0x40, 0x40, 0x50, 0xe8, 0x10, 0xfd, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x56, 0x9e
    db 0x01, 0x75, 0x0f, 0xb8, 0x05, 0x91, 0x50, 0xb8, 0x55, 0x06, 0x50, 0xe8, 0x47, 0xf7, 0x83, 0xc4
    db 0x04, 0xc3, 0x83, 0x3e, 0x58, 0x9e, 0x01, 0x75, 0x12, 0xb8, 0x56, 0x06, 0x50, 0x8b, 0x46, 0xfc
    db 0x05, 0x04, 0x00, 0x50, 0xe8, 0xe1, 0xfc, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x5a, 0x9e, 0x01
    db 0x75, 0x0f, 0xb8, 0x06, 0x91, 0x50, 0xb8, 0x57, 0x06, 0x50, 0xe8, 0x18, 0xf7, 0x83, 0xc4, 0x04
    db 0xc3, 0x83, 0x3e, 0x5c, 0x9e, 0x01, 0x75, 0x11, 0xb8, 0x58, 0x06, 0x50, 0x8b, 0x46, 0xfc, 0x40
    db 0x40, 0x50, 0xe8, 0xb3, 0xfc, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x5e, 0x9e, 0x01, 0x75, 0x24
    db 0x83, 0x7e, 0xfe, 0x00, 0x75, 0x0f, 0xb8, 0x07, 0x91, 0x50, 0xb8, 0x5a, 0x06, 0x50, 0xe8, 0xe4
    db 0xf6, 0x83, 0xc4, 0x04, 0xc3, 0xb8, 0x08, 0x91, 0x50, 0xb8, 0x5b, 0x06, 0x50, 0xe8, 0xd5, 0xf6
    db 0x83, 0xc4, 0x04, 0xc3, 0xeb, 0x24, 0x83, 0x7e, 0xfe, 0x00, 0x75, 0x0f, 0xb8, 0x09, 0x91, 0x50
    db 0xb8, 0x5c, 0x06, 0x50, 0xe8, 0xbe, 0xf6, 0x83, 0xc4, 0x04, 0xc3, 0xb8, 0x0a, 0x91, 0x50, 0xb8
    db 0x63, 0x06, 0x50, 0xe8, 0xaf, 0xf6, 0x83, 0xc4, 0x04, 0xc3, 0xe9, 0x7f, 0x02, 0x83, 0x3e, 0x62
    db 0x9e, 0x01, 0x75, 0x61, 0x83, 0x3e, 0x78, 0x9e, 0x00, 0x75, 0x4b, 0x83, 0x3e, 0x54, 0x9e, 0x01
    db 0x75, 0x10, 0xb8, 0x0b, 0x91, 0x50, 0xb8, 0x67, 0x06, 0x50, 0xe8, 0x88, 0xf6, 0x83, 0xc4, 0x04
    db 0xeb, 0x33, 0x83, 0x3e, 0x58, 0x9e, 0x01, 0x74, 0x0e, 0x83, 0x3e, 0x5c, 0x9e, 0x01, 0x74, 0x07
    db 0x83, 0x3e, 0x5e, 0x9e, 0x01, 0x75, 0x10, 0xb8, 0x0c, 0x91, 0x50, 0xb8, 0x6b, 0x06, 0x50, 0xe8
    db 0x63, 0xf6, 0x83, 0xc4, 0x04, 0xeb, 0x0e, 0xb8, 0x0d, 0x91, 0x50, 0xb8, 0x5f, 0x06, 0x50, 0xe8
    db 0x53, 0xf6, 0x83, 0xc4, 0x04, 0xc3, 0xb8, 0x0e, 0x91, 0x50, 0xb8, 0x5b, 0x06, 0x50, 0xe8, 0x44
    db 0xf6, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x7e, 0xfe, 0x00, 0x75, 0x0f, 0xb8, 0x0f, 0x91, 0x50, 0xb8
    db 0x60, 0x06, 0x50, 0xe8, 0x2f, 0xf6, 0x83, 0xc4, 0x04, 0xc3, 0xb8, 0x10, 0x91, 0x50, 0xb8, 0x5b
    db 0x06, 0x50, 0xe8, 0x20, 0xf6, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x62, 0x9e, 0x01, 0x75, 0x3c
    db 0x83, 0x3e, 0x78, 0x9e, 0x00, 0x75, 0x26, 0x83, 0x3e, 0x54, 0x9e, 0x01, 0x75, 0x10, 0xb8, 0x11
    db 0x91, 0x50, 0xb8, 0x68, 0x06, 0x50, 0xe8, 0xfc, 0xf5, 0x83, 0xc4, 0x04, 0xeb, 0x0e, 0xb8, 0x12
    db 0x91, 0x50, 0xb8, 0x5f, 0x06, 0x50, 0xe8, 0xec, 0xf5, 0x83, 0xc4, 0x04, 0xc3, 0xb8, 0x13, 0x91
    db 0x50, 0xb8, 0x5b, 0x06, 0x50, 0xe8, 0xdd, 0xf5, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x78, 0x9e
    db 0x00, 0x7e, 0x12, 0xb8, 0x59, 0x06, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x40, 0x50, 0xe8, 0x77
    db 0xfb, 0x83, 0xc4, 0x04, 0xc3, 0xb8, 0x14, 0x91, 0x50, 0xb8, 0x64, 0x06, 0x50, 0xe8, 0xb5, 0xf5
    db 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x62, 0x9e, 0x01, 0x75, 0x26, 0x83, 0x3e, 0x54, 0x9e, 0x01
    db 0x75, 0x10, 0xb8, 0x15, 0x91, 0x50, 0xb8, 0x67, 0x06, 0x50, 0xe8, 0x98, 0xf5, 0x83, 0xc4, 0x04
    db 0xeb, 0x0e, 0xb8, 0x16, 0x91, 0x50, 0xb8, 0x5f, 0x06, 0x50, 0xe8, 0x88, 0xf5, 0x83, 0xc4, 0x04
    db 0xc3, 0xb8, 0x17, 0x91, 0x50, 0xb8, 0x65, 0x06, 0x50, 0xe8, 0x79, 0xf5, 0x83, 0xc4, 0x04, 0xc3
    db 0x83, 0x3e, 0x62, 0x9e, 0x01, 0x74, 0x03, 0xe9, 0x85, 0x00, 0x83, 0x3e, 0x52, 0x9e, 0x01, 0x75
    db 0x0f, 0xb8, 0x18, 0x91, 0x50, 0xb8, 0x5e, 0x06, 0x50, 0xe8, 0x59, 0xf5, 0x83, 0xc4, 0x04, 0xc3
    db 0x83, 0x3e, 0x54, 0x9e, 0x01, 0x75, 0x11, 0xb8, 0x54, 0x06, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x40
    db 0x50, 0xe8, 0xf4, 0xfa, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x58, 0x9e, 0x01, 0x75, 0x12, 0xb8
    db 0x56, 0x06, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x04, 0x00, 0x50, 0xe8, 0xdb, 0xfa, 0x83, 0xc4, 0x04
    db 0xc3, 0x83, 0x3e, 0x5a, 0x9e, 0x01, 0x75, 0x0f, 0xb8, 0x19, 0x91, 0x50, 0xb8, 0x57, 0x06, 0x50
    db 0xe8, 0x12, 0xf5, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x56, 0x9e, 0x01, 0x75, 0x0f, 0xb8, 0x1a
    db 0x91, 0x50, 0xb8, 0x55, 0x06, 0x50, 0xe8, 0xfc, 0xf4, 0x83, 0xc4, 0x04, 0xc3, 0xb8, 0x59, 0x06
    db 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x40, 0x50, 0xe8, 0x9d, 0xfa, 0x83, 0xc4, 0x04, 0xc3, 0xb8
    db 0x1b, 0x91, 0x50, 0xb8, 0x61, 0x06, 0x50, 0xe8, 0xdb, 0xf4, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e
    db 0x62, 0x9e, 0x01, 0x74, 0x03, 0xe9, 0x74, 0x00, 0x83, 0x3e, 0x52, 0x9e, 0x01, 0x74, 0x07, 0x83
    db 0x3e, 0x5a, 0x9e, 0x01, 0x75, 0x0f, 0xb8, 0x1c, 0x91, 0x50, 0xb8, 0x5e, 0x06, 0x50, 0xe8, 0xb4
    db 0xf4, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x54, 0x9e, 0x01, 0x75, 0x0f, 0xb8, 0x1d, 0x91, 0x50
    db 0xb8, 0x62, 0x06, 0x50, 0xe8, 0x9e, 0xf4, 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x58, 0x9e, 0x01
    db 0x75, 0x12, 0xb8, 0x56, 0x06, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x04, 0x00, 0x50, 0xe8, 0x38, 0xfa
    db 0x83, 0xc4, 0x04, 0xc3, 0x83, 0x3e, 0x56, 0x9e, 0x01, 0x75, 0x0f, 0xb8, 0x1e, 0x91, 0x50, 0xb8
    db 0x55, 0x06, 0x50, 0xe8, 0x6f, 0xf4, 0x83, 0xc4, 0x04, 0xc3, 0xb8, 0x59, 0x06, 0x50, 0x8b, 0x46
    db 0xfc, 0x40, 0x40, 0x40, 0x50, 0xe8, 0x10, 0xfa, 0x83, 0xc4, 0x04, 0xc3, 0xb8, 0x1f, 0x91, 0x50
    db 0xb8, 0x63, 0x06, 0x50, 0xe8, 0x4e, 0xf4, 0x83, 0xc4, 0x04, 0xc3, 0xc9, 0xed, 0x15, 0xef, 0x15
    db 0xef, 0x15, 0xef, 0x66, 0xf0, 0xf2, 0xf0, 0x5d, 0xf1, 0x5d, 0xf1, 0x99, 0xf1, 0x37, 0xf2

@..local.l361:
    cmp ax, strict word 0xa
    jae short @..local.l362
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x0d3c]
@..local.l362:
    ret
math_loc_a29f:
    mov ax, 0
    db 0xe8, 0x66, 0x51 ; call 0xf40b
    cmp word [data_9e48], byte 0xff
    je short @..math_loc_a29f.l2
    cmp word [data_9e46], byte 0xff
    je short @..math_loc_a29f.l1
    cmp word [data_9e42], byte 0xff
    jne short @..math_loc_a29f.l2
@..math_loc_a29f.l1:
    call loc_9a04
@..math_loc_a29f.l2:
    cmp word [data_9e46], byte 0xff
    je short @..math_loc_a29f.l3
    cmp word [data_9e42], byte 0xff
    je short @..math_loc_a29f.l3
    call api_idx_0054_6
    mov ax, word [data_9e42]
    mov word [data_9e4a], ax
    mov ax, word [data_9e44]
    mov word [data_9e4c], ax
    mov ax, word [data_9e46]
    mov word [data_9e4e], ax
    mov word [data_9e50], 0xffff
@..math_loc_a29f.l3:
    ret
api_idx_0002_14:
    mov ax, 0xfffe
    db 0xe8, 0x1e, 0x51 ; call 0xf40b
    mov word [bp - 0x0002], 0
@..api_idx_0002_14.l1:
    mov ax, 0x95a8
    push ax
    push word [bp + 0x4]
    db 0xe8, 0x3f, 0x12 ; call 0xb53b
    add sp, byte 4
    cmp word [data_5216], byte 0
    jne short @..api_idx_0002_14.l2
    mov al, byte [data_95a8]
    sub ah, ah
    add ax, strict word 0xffe0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    mov bx, ax
    pop ax
    mov word [bx - 0x617a], ax
    mov ax, 0x95a9
    push ax
    add bx, strict word 0x9e88
    mov ax, bx
    push ax
    db 0xe8, 0x3a, 0x50 ; call 0xf364
    add sp, byte 4
    add word [bp + 0x4], byte 5
    inc word [bp - 0x0002]
@..api_idx_0002_14.l2:
    cmp word [data_5216], byte 0
    je short @..api_idx_0002_14.l1
    mov ax, word [bp - 0x0002]
    mov word [data_b046], ax
@..api_idx_0002_14.l3:
    mov ax, 0x95a8
    push ax
    push word [bp + 0x6]
    db 0xe8, 0xf0, 0x11 ; call 0xb53b
    add sp, byte 4
    cmp word [data_5216], byte 0
    jne short @..api_idx_0002_14.l4
    mov al, byte [data_95a8]
    sub ah, ah
    add ax, strict word 0xffe0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    mov bx, ax
    pop ax
    mov word [bx - 0x617a], ax
    mov ax, 0x95a9
    push ax
    add bx, strict word 0x9e88
    mov ax, bx
    push ax
    db 0xe8, 0xeb, 0x4f ; call 0xf364
    add sp, byte 4
    add word [bp + 0x6], byte 5
    inc word [bp - 0x0002]
@..api_idx_0002_14.l4:
    cmp word [data_5216], byte 0
    je short @..api_idx_0002_14.l3
    mov ax, word [bp - 0x0002]
    mov word [data_a656], ax
    ret
api_idx_0002_15:
    mov ax, 0xfffe
    db 0xe8, 0x74, 0x50 ; call 0xf40b
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0002_15.l2
@..api_idx_0002_15.l1:
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0xa7ac
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    add ax, word [bp + 0x4]
    push ax
    db 0xe8, 0x87, 0x11 ; call 0xb53b
    add sp, byte 4
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0xa7b6
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    add ax, word [bp + 0x4]
    inc ax
    push ax
    db 0xe8, 0x6d, 0x11 ; call 0xb53b
    add sp, byte 4
    inc word [bp - 0x0002]
@..api_idx_0002_15.l2:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x6]
    jl short @..api_idx_0002_15.l1
    ret
api_idx_0002_16:
    mov ax, 0xfffe
    db 0xe8, 0x28, 0x50 ; call 0xf40b
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0002_16.l2
@..api_idx_0002_16.l1:
    mov ax, 0xa
    imul word [bp - 0x0002]
    mov cx, ax
    mov ax, word [bp + 0x8]
    add ax, cx
    push ax
    mov ax, word [bp + 0x4]
    add ax, word [bp - 0x0002]
    push ax
    db 0xe8, 0x39, 0x11 ; call 0xb53b
    add sp, byte 4
    inc word [bp - 0x0002]
@..api_idx_0002_16.l2:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x6]
    jl short @..api_idx_0002_16.l1
    ret
api_idx_0002_17:
    mov ax, 0xfffe
    db 0xe8, 0xf4, 0x4f ; call 0xf40b
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0002_17.l2
@..api_idx_0002_17.l1:
    mov ax, 0x32
    imul word [bp - 0x0002]
    add ax, 0xa8c4
    push ax
    mov ax, word [bp + 0x4]
    add ax, word [bp - 0x0002]
    push ax
    db 0xe8, 0x09, 0x11 ; call 0xb53b
    add sp, byte 4
    inc word [bp - 0x0002]
@..api_idx_0002_17.l2:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x6]
    jl short @..api_idx_0002_17.l1
    ret
loc_a441:
    mov ax, 0
    db 0xe8, 0xc4, 0x4f ; call 0xf40b
    mov word [data_93d4], 0
@..local.l363:
    mov ax, word [data_93d4]
    mov cx, 7
    shl ax, cl
    mov bx, ax
    mov byte [bx - 0x6e34], 0
    mov ax, word [data_93d4]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6c34], 0
    inc word [data_93d4]
    mov ax, word [data_93d4]
    cmp ax, strict word 4
    jl short @..local.l363
    mov word [data_93d4], 0
    mov word [data_b052], 0x1f40
    mov ax, word [data_91a0]
    mov word [data_b050], ax
    mov ax, word [data_91a4]
    mov word [data_b04a], ax
    mov ax, word [data_91a6]
    mov word [data_b04c], ax
    push word [data_b052]
    push word [data_b050]
    call api_idx_0002_14
    add sp, byte 4
    mov ax, 0xa658
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x1b58
    push ax
    call api_idx_0002_16
    add sp, byte 6
    mov ax, 0xa810
    push ax
    mov ax, 7
    push ax
    mov ax, 0x1b76
    push ax
    call api_idx_0002_16
    add sp, byte 6
    mov ax, 0xb032
    push ax
    mov ax, 0x1b80
    push ax
    db 0xe8, 0x6b, 0x10 ; call 0xb53b
    add sp, byte 4
    mov ax, 0xb03c
    push ax
    mov ax, 0x1b81
    push ax
    db 0xe8, 0x5d, 0x10 ; call 0xb53b
    add sp, byte 4
    mov ax, 0xa766
    push ax
    mov ax, 7
    push ax
    mov ax, 0x1b8a
    push ax
    call api_idx_0002_16
    add sp, byte 6
    mov ax, 5
    push ax
    mov ax, 0x1b9e
    push ax
    call api_idx_0002_15
    add sp, byte 4
    mov ax, 0xa856
    push ax
    mov ax, 0xb
    push ax
    mov ax, 0x1bb2
    push ax
    call api_idx_0002_16
    add sp, byte 6
    mov ax, 0xa702
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x1bd0
    push ax
    call api_idx_0002_16
    add sp, byte 6
    mov ax, 0xa6bc
    push ax
    mov ax, 7
    push ax
    mov ax, 0x1be4
    push ax
    call api_idx_0002_16
    add sp, byte 6
    mov ax, 0x26
    push ax
    mov ax, 0x1bf8
    push ax
    call api_idx_0002_17
    add sp, byte 4
    ret
api_idx_0016:
    mov ax, 0xffea
    db 0xe8, 0xbf, 0x4e ; call 0xf40b
    mov ax, word [bp + 0x6]
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    db 0xe8, 0xbc, 0x43 ; call 0xe928
    add sp, byte 8
    mov word [bp - 0x0010], dx
    mov word [bp - 0x0012], ax
    push word [bp + 0xe]
    push word [bp + 0xc]
    db 0xe8, 0xa5, 0x42 ; call 0xe823
    add sp, byte 4
    push word [bp + 0x8]
    push word [bp + 0x6]
    db 0xe8, 0x7f, 0x42 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    db 0xe8, 0xb7, 0x42 ; call 0xe84e
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 0x6]
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    db 0xe8, 0x26, 0x43 ; call 0xe8da
    add sp, byte 8
    push word [bp + 0x4]
    db 0xe8, 0xd3, 0x54 ; call 0xfa90
    pop cx
    mov word [bp - 0x0006], ax
    mov cx, 6
    imul cx
    add word [bp + 0x6], ax
@..api_idx_0016.l1:
    mov word [bp - 0x0008], 1
    mov word [bp - 0x000a], 0
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    db 0xe8, 0x3e, 0x43 ; call 0xe928
    add sp, byte 8
    mov word [bp - 0x0014], dx
    mov word [bp - 0x0016], ax
@..api_idx_0016.l2:
    mov ax, 1
    push ax
    db 0xe8, 0x56, 0x44 ; call 0xea50
    pop cx
    test ax, ax
    jne short @..api_idx_0016.l6
    cmp word [bp - 0x000a], byte 0
    jne short @..api_idx_0016.l4
    call loc_109f
    mov ax, 0
    push ax
    push word [bp - 0x0014]
    push word [bp - 0x0016]
    db 0xe8, 0x3a, 0x43 ; call 0xe94f
    add sp, byte 6
    cmp word [bp - 0x0008], byte 0
    je short @..api_idx_0016.l3
    push word [bp + 0x8]
    push word [bp + 0x6]
    db 0xe8, 0xe2, 0x41 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    db 0xe8, 0xfb, 0x41 ; call 0xe830
    add sp, byte 4
@..api_idx_0016.l3:
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    db 0xe8, 0x8b, 0x42 ; call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0008]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x0008], dx
    mov word [bp - 0x000a], 5
    jmp short @..api_idx_0016.l5
@..api_idx_0016.l4:
    mov ax, 0xa
    push ax
    db 0xe8, 0x1c, 0x3e ; call 0xe489
    pop cx
    dec word [bp - 0x000a]
@..api_idx_0016.l5:
    jmp short @..api_idx_0016.l2
@..api_idx_0016.l6:
    mov ax, 1
    push ax
    push word [bp - 0x0014]
    push word [bp - 0x0016]
    db 0xe8, 0xcf, 0x42 ; call 0xe94f
    add sp, byte 6
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    db 0xe8, 0x40, 0x42 ; call 0xe8da
    add sp, byte 8
    mov ax, 1
    push ax
    db 0xe8, 0x8e, 0x44 ; call 0xeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xd
    jne short @..local.l364
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0006]
    mov byte [bx + si], 0
    db 0xe8, 0x5c, 0x45 ; call 0xec17
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x0012]
    db 0xe8, 0x87, 0x42 ; call 0xe94f
    add sp, byte 6
    mov ax, 0
    ret
@..local.l364:
    cmp word [bp - 0x0002], byte 8
    je short @..local.l365
    jmp near @..local.l369
@..local.l365:
    cmp word [bp - 0x0006], byte 0
    jle short @..local.l366
    dec word [bp - 0x0006]
    add word [bp + 0x6], byte 0xfa
    mov ax, 0
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x0012]
    db 0xe8, 0x5d, 0x42 ; call 0xe94f
    add sp, byte 6
    push word [bp + 0x8]
    push word [bp - 0x0004]
    db 0xe8, 0x0b, 0x41 ; call 0xe809
    add sp, byte 4
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0006]
    mov byte [bx + si], 0
    mov ax, 0
    push ax
    push word [bp + 0x4]
    db 0xe8, 0x3a, 0x41 ; call 0xe84e
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp - 0x0004]
    push ax
    push word [bp + 0x8]
    push word [bp - 0x0004]
    db 0xe8, 0xa9, 0x41 ; call 0xe8da
    add sp, byte 8
    jmp short @..local.l368
@..local.l366:
    cmp word [bp + 0x12], byte 0
    je short @..local.l367
    mov bx, word [bp + 0x4]
    mov byte [bx], 0
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x0012]
    db 0xe8, 0x00, 0x42 ; call 0xe94f
    add sp, byte 6
    mov ax, 0xffff
    ret
@..local.l367:
    mov ax, 0
    push ax
    db 0xe8, 0x83, 0x10 ; call 0xb7e0
    pop cx
@..local.l368:
    jmp near @..local.l377
@..local.l369:
    mov ax, word [bp - 0x0006]
    cmp ax, word [bp + 0xa]
    jl short @..local.l374
    cmp word [bp + 0x12], byte 0
    je short @..local.l370
    mov ax, 0
    push ax
    db 0xe8, 0x6a, 0x10 ; call 0xb7e0
    pop cx
    jmp short @..local.l373
@..local.l370:
    cmp word [bp + 0x10], byte 0
    jne short @..local.l371
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x20
    jl short @..local.l371
    cmp ax, strict word 0x7f
    jle short @..local.l372
@..local.l371:
    cmp word [bp + 0x10], byte 1
    jne short @..local.l373
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x30
    jl short @..local.l373
    cmp ax, strict word 0x39
    jg short @..local.l373
@..local.l372:
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0006]
    mov byte [bx + si], 0
    mov ax, word [bp - 0x0002]
    mov word [data_b054], ax
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x0012]
    db 0xe8, 0x94, 0x41 ; call 0xe94f
    add sp, byte 6
    mov ax, 1
    ret
@..local.l373:
    jmp near @..local.l377
@..local.l374:
    cmp word [bp + 0x10], byte 0
    jne short @..local.l375
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x20
    jl short @..local.l375
    cmp ax, strict word 0x7f
    jle short @..local.l376
@..local.l375:
    cmp word [bp + 0x10], byte 1
    jne short @..local.l377
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x30
    jl short @..local.l377
    cmp ax, strict word 0x39
    jg short @..local.l377
@..local.l376:
    mov al, byte [bp - 0x0002]
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0006]
    mov byte [bx + si], al
    inc word [bp - 0x0006]
    push word [bp + 0x8]
    push word [bp + 0x6]
    db 0xe8, 0x07, 0x40 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov al, byte [bp - 0x0002]
    sub ah, ah
    push ax
    db 0xe8, 0x1e, 0x40 ; call 0xe830
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    db 0xe8, 0xae, 0x40 ; call 0xe8da
    add sp, byte 8
    add word [bp + 0x6], byte 6
@..local.l377:
    jmp near @..api_idx_0016.l1
    db 0xc3
api_idx_00b0:
    mov ax, 0xff50
    db 0xe8, 0xce, 0x4b ; call 0xf40b
    push word [bp + 0x6]
    db 0xe8, 0x4d, 0x52 ; call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, ax
    mov ax, 0xb8
    sub ax, cx
    mov cx, 6
    cwd
    idiv cx
    mov word [bp - 0x0010], ax
    mov word [bp - 0x000e], 0x1e
    push word [bp + 0x6]
    db 0xe8, 0x2c, 0x52 ; call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    add ax, strict word 0x44
    mov word [bp - 0x000c], ax
    mov word [bp - 0x000a], 0x44
    mov ax, 0xc
    imul word [data_93d4]
    add ax, 0x97
    push ax
    mov ax, 0x44
    push ax
    db 0xe8, 0x82, 0x3f ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0x8e, 0x3f ; call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x6]
    db 0xe8, 0xac, 0x3f ; call 0xe84e
    add sp, byte 4
    mov ax, 3
    push ax
    call loc_0c96
    pop cx
    mov word [bp - 0x0008], 0
    mov bx, word [bp + 0x4]
    mov byte [bx], 0
@..api_idx_00b0.l1:
    push word [bp - 0x0008]
    mov ax, 0
    push ax
    mov ax, 0x37
    push ax
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0008]
    shl ax, 1
    mov bx, ax
    add bx, bp
    push word [bx - 0x0010]
    mov ax, 0xc
    imul word [data_93d4]
    add ax, 0x97
    push ax
    mov ax, word [bp - 0x0008]
    shl ax, 1
    mov bx, ax
    add bx, bp
    push word [bx - 0x000c]
    push word [bp + 0x4]
    call api_idx_0016
    add sp, byte 0x10
    mov word [bp - 0x0002], ax
    cmp ax, strict word 1
    je short @..api_idx_00b0.l2
    jmp near @..api_idx_00b0.l7
@..api_idx_00b0.l2:
    cmp word [data_b054], byte 0x20
    je short @..api_idx_00b0.l5
    mov ax, 0x20
    push ax
    push word [bp + 0x4]
    db 0xe8, 0x3b, 0x45 ; call 0xee4a
    add sp, byte 4
    cmp ax, strict word 0xffff
    je short @..api_idx_00b0.l5
    push word [bp + 0x4]
    db 0xe8, 0x73, 0x51 ; call 0xfa90
    pop cx
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0006], ax
@..api_idx_00b0.l3:
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0006]
    cmp byte [bx + si - 0x0001], 0x20
    je short @..api_idx_00b0.l4
    dec word [bp - 0x0006]
    jmp short @..api_idx_00b0.l3
@..api_idx_00b0.l4:
    mov ax, word [bp - 0x0004]
    sub ax, word [bp - 0x0006]
    push ax
    add bx, word [bp - 0x0006]
    mov ax, bx
    push ax
    lea ax, word [bp - 0x00b0]
    push ax
    call string_loc_ae4e
    add sp, byte 6
    mov ax, word [bp - 0x0004]
    sub ax, word [bp - 0x0006]
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x00b0], 0
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0006]
    mov byte [bx + si], 0
    jmp short @..api_idx_00b0.l6
@..api_idx_00b0.l5:
    mov byte [bp - 0x00b0], 0
@..api_idx_00b0.l6:
    lea ax, word [bp - 0x00b0]
    push ax
    db 0xe8, 0x1c, 0x51 ; call 0xfa90
    pop cx
    mov word [bp - 0x0004], ax
    mov al, byte [data_b054]
    mov bx, word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x00b0], al
    mov byte [bx - 0x00af], 0
    push word [bp + 0x6]
    mov ax, word [data_93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    db 0xe8, 0xc9, 0x49 ; call 0xf364
    add sp, byte 4
    push word [bp + 0x4]
    mov ax, word [data_93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    db 0xe8, 0x7d, 0x49 ; call 0xf32d
    add sp, byte 4
    mov ax, word [data_93d4]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6c34], 0
    call api_idx_0004_2
    push word [bp + 0x4]
    lea ax, word [bp - 0x0060]
    push ax
    db 0xe8, 0x97, 0x49 ; call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x00b0]
    push ax
    push word [bp + 0x4]
    db 0xe8, 0x89, 0x49 ; call 0xf364
    add sp, byte 4
    mov word [bp - 0x0008], 1
    jmp short @..api_idx_00b0.l8
@..api_idx_00b0.l7:
    cmp word [bp - 0x0002], byte 0xff
    jne short @..api_idx_00b0.l8
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    dec word [data_93d4]
    lea ax, word [bp - 0x0060]
    push ax
    push word [bp + 0x4]
    db 0xe8, 0x63, 0x49 ; call 0xf364
    add sp, byte 4
    mov word [bp - 0x0008], 0
@..api_idx_00b0.l8:
    cmp word [bp - 0x0002], byte 0
    je short @..api_idx_00b0.l9
    jmp near @..api_idx_00b0.l1
@..api_idx_00b0.l9:
    cmp word [bp - 0x0008], byte 0
    jne short @..api_idx_00b0.l10
    push word [bp + 0x6]
    mov ax, word [data_93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    db 0xe8, 0x3a, 0x49 ; call 0xf364
    add sp, byte 4
    jmp short @..local.l378
@..api_idx_00b0.l10:
    mov ax, word [data_93d4]
    mov cx, 7
    shl ax, cl
    mov bx, ax
    mov byte [bx - 0x6e34], 0
@..local.l378:
    push word [bp + 0x4]
    mov ax, word [data_93d4]
    mov cx, 7
    shl ax, cl
    add ax, 0x91cc
    push ax
    db 0xe8, 0xdd, 0x48 ; call 0xf32d
    add sp, byte 4
    mov ax, word [data_93d4]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6c34], 0
    call api_idx_0004_2
    cmp word [bp - 0x0008], byte 0
    je short @..local.l379
    push word [bp + 0x4]
    lea ax, word [bp - 0x00b0]
    push ax
    db 0xe8, 0xf0, 0x48 ; call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x0060]
    push ax
    push word [bp + 0x4]
    db 0xe8, 0xe3, 0x48 ; call 0xf364
    add sp, byte 4
    lea ax, word [bp - 0x00b0]
    push ax
    push word [bp + 0x4]
    db 0xe8, 0x9e, 0x48 ; call 0xf32d
    add sp, byte 4
@..local.l379:
    ret
api_idx_00ba:
    mov ax, 0xff46
    db 0xe8, 0x72, 0x49 ; call 0xf40b
    lea ax, word [bp - 0x00b6]
    push ax
    push word [bp + 0x6]
    db 0xe8, 0x97, 0x0a ; call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0066]
    push ax
    mov ax, 0x5e9
    push ax
    db 0xe8, 0x89, 0x0a ; call 0xb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x0066]
    push ax
    db 0xe8, 0x36, 0x08 ; call 0xb300
    add sp, byte 6
@..api_idx_00ba.l1:
    mov ax, 0
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    call api_idx_0100
    add sp, byte 4
    lea ax, word [bp - 0x0066]
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call api_idx_00b0
    add sp, byte 4
    lea ax, word [bp - 0x0052]
    push ax
    db 0xe8, 0x9e, 0x4f ; call 0xfa90
    pop cx
    mov word [bp - 0x00b8], ax
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x0052], 0x20
    mov byte [bx - 0x0051], 0
    lea ax, word [bp - 0x0052]
    push ax
    call api_idx_00a8
    pop cx
    mov word [bp - 0x00b8], 0
@..api_idx_00ba.l2:
    mov ax, 0x2f
    push ax
    mov ax, word [bp - 0x00b8]
    lea cx, word [bp - 0x00b5]
    add ax, cx
    push ax
    db 0xe8, 0x27, 0x43 ; call 0xee4a
    add sp, byte 4
    mov word [bp - 0x00ba], ax
    lea ax, word [bp - 0x0052]
    mov word [bp - 0x0002], ax
@..api_idx_00ba.l3:
    mov bx, word [bp - 0x0002]
    cmp byte [bx], 0
    je short @..local.l381
    push word [bp - 0x00ba]
    mov ax, word [bp - 0x00b8]
    lea cx, word [bp - 0x00b5]
    add ax, cx
    push ax
    push bx
    call string_loc_ae94
    add sp, byte 6
    test ax, ax
    jne short @..local.l380
    mov bx, word [bp - 0x00b8]
    add bx, bp
    mov al, byte [bx - 0x00b6]
    sub ah, ah
    ret
@..local.l380:
    inc word [bp - 0x0002]
    jmp short @..api_idx_00ba.l3
@..local.l381:
    mov ax, word [bp - 0x00b8]
    add ax, word [bp - 0x00ba]
    inc ax
    inc ax
    mov word [bp - 0x00b8], ax
    mov bx, word [bp - 0x00b8]
    add bx, bp
    cmp byte [bx - 0x00b6], 0
    jne short @..api_idx_00ba.l2
    cmp word [bp + 0x8], byte 1
    jne short @..local.l382
    mov ax, 1
    ret
@..local.l382:
    jmp near @..api_idx_00ba.l1
    db 0xc3
api_idx_006a:
    mov ax, 0xff96
    db 0xe8, 0x78, 0x48 ; call 0xf40b
    mov ax, word [bp + 0x4]
    mov word [data_b04e], ax
    mov word [data_93ee], 0
    mov ax, 0
    push ax
    mov ax, 0x42
    push ax
    mov ax, 0x9e42
    push ax
    db 0xe8, 0x58, 0x47 ; call 0xf306
    add sp, byte 6
    mov word [data_9e4a], 0xffff
    mov word [data_9e4c], 0
    mov word [data_9e4e], 0xffff
    mov word [data_9e50], 0xffff
    mov word [data_93d4], 0
@..api_idx_006a.l1:
    mov ax, word [data_93d4]
    mov cx, 7
    shl ax, cl
    mov bx, ax
    mov byte [bx - 0x6e34], 0
    mov ax, word [data_93d4]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6c34], 0
    inc word [data_93d4]
    mov ax, word [data_93d4]
    cmp ax, strict word 4
    jl short @..api_idx_006a.l1
    mov word [data_93d4], 0
    lea ax, word [bp - 0x006a]
    push ax
    mov ax, 0x5e9
    push ax
    db 0xe8, 0x33, 0x09 ; call 0xb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x006a]
    push ax
    db 0xe8, 0xe0, 0x06 ; call 0xb300
    add sp, byte 6
    push word [data_0e2c]
    push word [data_0e2a]
    db 0xe8, 0x81, 0x0c ; call 0xb8af
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x12e
    push ax
    db 0xe8, 0xa4, 0x44 ; call 0xf0e4
    add sp, byte 6
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    mov ax, 3
    push ax
    call loc_0c96
    pop cx
@..api_idx_006a.l2:
    lea ax, word [bp - 0x006a]
    push ax
    lea ax, word [bp - 0x0056]
    push ax
    call api_idx_00b0
    add sp, byte 4
    lea ax, word [bp - 0x0056]
    push ax
    call api_idx_0004_14
    pop cx
    lea ax, word [bp - 0x0056]
    push ax
    db 0xe8, 0x20, 0x4e ; call 0xfa90
    pop cx
    mov word [bp - 0x0002], ax
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x0056], 0x20
    mov byte [bx - 0x0055], 0
    mov ax, 9
    push ax
    mov ax, 0x9120
    push ax
    lea ax, word [bp - 0x0056]
    push ax
    call string_loc_ae94
    add sp, byte 6
    test ax, ax
    je short @..api_idx_006a.l3
    mov ax, 0
    jmp short @..api_idx_006a.l4
@..api_idx_006a.l3:
    mov ax, 1
@..api_idx_006a.l4:
    mov word [bp - 0x0006], ax
    lea ax, word [bp - 0x0056]
    push ax
    call api_idx_00a8
    pop cx
    mov word [bp - 0x0002], 0
    mov word [data_9e42], 0xffff
    mov word [data_9e44], 0
    mov word [data_9e46], 0xffff
    mov word [data_9e48], 0xffff
    mov word [data_9e52], 0
    mov word [data_9e54], 0
    mov word [data_9e56], 0
    mov word [data_9e58], 0
    mov word [data_9e5a], 0
    mov word [data_9e5c], 0
    mov word [data_9e5e], 0
    mov word [data_9e60], 0
    mov ax, word [data_9e84]
    mov word [data_9e62], ax
    mov word [data_9e64], 0
    mov word [data_9e66], 0
    mov word [data_9e68], 0
    mov word [data_9e6a], 0
    mov word [data_9e6c], 0
    mov word [data_9e6e], 0
    mov word [data_9e70], 0
    mov word [data_9e72], 0
    mov word [data_9e74], 0
    mov word [data_9e76], 0
    mov word [data_9e78], 0
    mov word [data_9e7a], 1
    mov word [data_9e7c], 0xffff
    mov word [data_9e7e], 0xffff
    mov word [data_9e80], 0
    mov word [data_9e82], 0xffff
    mov word [data_b030], 0xa
@..api_idx_006a.l5:
    mov bx, word [bp - 0x0002]
    add bx, bp
    cmp byte [bx - 0x0056], 0x20
    jne short @..api_idx_006a.l6
    inc word [bp - 0x0002]
    jmp short @..api_idx_006a.l5
@..api_idx_006a.l6:
    mov ax, word [bp - 0x0002]
    lea cx, word [bp - 0x0056]
    add ax, cx
    push ax
    call api_idx_0004_16
    pop cx
    mov word [data_b030], ax
    push word [bp - 0x0002]
    lea ax, word [bp - 0x0056]
    push ax
    call api_idx_0002_12
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_006a.l5
    mov ax, word [data_9136]
    cmp ax, strict word 0x2d
    je short @..local.l383
    cmp ax, strict word 0x51
    je short @..local.l383
    cmp ax, strict word 0x53
    je short @..local.l383
    cmp ax, strict word 0x4d
    jne short @..local.l384
    cmp word [bp - 0x0006], byte 0
    jne short @..local.l384
@..local.l383:
    mov byte [bp - 0x0056], 0
@..local.l384:
    lea ax, word [bp - 0x0056]
    push ax
    db 0xe8, 0xd1, 0x4c ; call 0xfa90
    pop cx
    cmp ax, strict word 0
    jle short @..local.l385
    call api_idx_00a2
    test ax, ax
    jne short @..local.l385
    call math_loc_a29f
@..local.l385:
    cmp word [data_9e70], byte 1
    je short @..local.l386
    jmp near @..api_idx_006a.l2
@..local.l386:
    mov ax, 3
    push ax
    call api_idx_0006
    pop cx
    mov ax, 3
    push ax
    call loc_0c96
    pop cx
    mov ax, 0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x12e
    push ax
    db 0xe8, 0xf9, 0x42 ; call 0xf0f1
    add sp, byte 6
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    db 0xe8, 0xa9, 0x0a ; call 0xb8af
    add sp, byte 4
    mov word [data_93ee], 1
    ret

    db 0x8f, 0x06, 0x32, 0x91, 0x59, 0x89, 0x26, 0x2e, 0x91, 0x89, 0x2e, 0x30, 0x91, 0x89, 0x36, 0x2a
    db 0x91, 0x89, 0x3e, 0x2c, 0x91, 0xfc, 0xbf, 0x34, 0x91, 0xb9, 0x56, 0xb0, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0x86, 0x73, 0x8b, 0x2e, 0x30, 0x91, 0x8b, 0x26, 0x2e
    db 0x91, 0x8b, 0x36, 0x2a, 0x91, 0x8b, 0x3e, 0x2c, 0x91, 0x51, 0xff, 0x26, 0x32, 0x91

string_loc_ae4e:
    push bp
    mov bp, sp
    cld
    push si
    push di
    mov cx, word [bp + 0x8]
    mov di, ds
    mov es, di
    mov di, word [bp + 0x4]
    mov si, word [bp + 0x6]
    jcxz @..string_loc_ae4e.l3
@..string_loc_ae4e.l1:
    lodsb
    test al, al
    je short @..string_loc_ae4e.l2
    stosb
    loop @..string_loc_ae4e.l1
    jmp short @..string_loc_ae4e.l3
@..string_loc_ae4e.l2:
    rep stosb
@..string_loc_ae4e.l3:
    pop di
    pop si
    mov ax, word [bp + 0x4]
    pop bp
    ret
string_loc_ae76:
    push bp
    mov bp, sp
    cld
    push si
    push di
    mov si, word [bp + 0x4]
    mov di, ds
    mov es, di
    mov di, word [bp + 0x6]
@..string_loc_ae76.l1:
    lodsw
    scasw
    jne short @..local.l387
    test al, al
    je short @..string_loc_ae76.l4
    test ah, ah
    jne short @..string_loc_ae76.l1
    jmp short @..string_loc_ae76.l4
string_loc_ae94:
    push bp
    mov bp, sp
    mov cx, word [bp + 0x8]
    mov dx, cx
    shr cx, 1
    cld
    push si
    push di
    mov si, word [bp + 0x4]
    mov di, ds
    mov es, di
    mov di, word [bp + 0x6]
    jcxz @..string_loc_ae76.l3
@..string_loc_ae76.l2:
    lodsw
    scasw
    jne short @..local.l387
    test al, al
    je short @..string_loc_ae76.l4
    test ah, ah
    loopne @..string_loc_ae76.l2
    je short @..string_loc_ae76.l4
@..string_loc_ae76.l3:
    test dl, 1
    je short @..string_loc_ae76.l4
    cmpsb
    jne short @..local.l388
@..string_loc_ae76.l4:
    sub ax, ax
@..string_loc_ae76.l5:
    pop di
    pop si
    pop bp
    ret
@..local.l387:
    sub di, byte 2
    scasb
    jne short @..local.l388
    test al, al
    je short @..string_loc_ae76.l4
    mov al, ah
    scasb
@..local.l388:
    sbb ax, ax
    js short @..string_loc_ae76.l5
    inc ax
    jmp short @..string_loc_ae76.l5

    db 'V1.$$$', 0
    db 'V1.$$$', 0
    db 'V2.$$$', 0
    db 'V3.$$$', 0
    db 'V1.$$$', 0
    db 0x31, 0x20, 0x00, 0x28, 0x31, 0x29, 0x00, 0x50, 0x00
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'VM1.$$$', 0
    db 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    db 0x20, 0x00, 0x20, 0x00, 0x20
    times 45 db 0
    db 'PHOONZANG', 0
    times 10 db 0

