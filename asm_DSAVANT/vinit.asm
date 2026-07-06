%include "structs/structs.inc"
%include "structs/vinit.inc"
org 0
bits 16
%include "labels/vinit_foreign_labels.inc"

    db 0xf2, 0x00, 0x55, 0x50, 0x09, 0x16, 0x98, 0x90 ; header (8 bytes)

data_0002 equ 0x0002
loc_000e equ 0x000e
data_0041 equ 0x0041
loc_03a8 equ 0x03a8
loc_0a56 equ 0x0a56
data_0e0e equ 0x0e0e
data_0e10 equ 0x0e10
data_0e12 equ 0x0e12
data_0e14 equ 0x0e14
data_0e16 equ 0x0e16
data_0e18 equ 0x0e18
data_0e1a equ 0x0e1a
data_0e1c equ 0x0e1c
data_0e1e equ 0x0e1e
data_0e20 equ 0x0e20
data_0e22 equ 0x0e22
data_0e24 equ 0x0e24
data_0e26 equ 0x0e26
data_0e28 equ 0x0e28
data_0e2a equ 0x0e2a
data_0e2c equ 0x0e2c
data_0e2e equ 0x0e2e
data_0e30 equ 0x0e30
data_0e32 equ 0x0e32
data_0e34 equ 0x0e34
data_0e36 equ 0x0e36
data_1008 equ 0x1008
data_100a equ 0x100a
data_5212 equ 0x5212
data_5214 equ 0x5214
data_5216 equ 0x5216
data_5528 equ 0x5528
data_552a equ 0x552a
data_5978 equ 0x5978
data_5979 equ 0x5979
data_5980 equ 0x5980
data_5984 equ 0x5984
data_5986 equ 0x5986
data_5989 equ 0x5989
data_598a equ 0x598a
data_598e equ 0x598e
data_59f8 equ 0x59f8
data_5b3e equ 0x5b3e
data_5b6c equ 0x5b6c
data_5b6e equ 0x5b6e
data_5b70 equ 0x5b70
data_69c8 equ 0x69c8
data_82b6 equ 0x82b6
data_830a equ 0x830a
data_844c equ 0x844c
data_844e equ 0x844e
data_8450 equ 0x8450
data_8d06 equ 0x8d06
data_8d08 equ 0x8d08
data_904c equ 0x904c
data_9056 equ 0x9056
data_9058 equ 0x9058
data_905a equ 0x905a
data_905c equ 0x905c
data_9068 equ 0x9068
data_906a equ 0x906a
data_9088 equ 0x9088
data_91b8 equ 0x91b8

    db 0x20, 0x01, 0x02, 0x00, 0x20, 0x66
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, word [data_830a]
    jmp short @..local.l5
@..local.l1:
    call loc_03a8
    jmp short @..local.l6
@..local.l2:
    call api_idx_0068
    jmp short @..local.l6
@..local.l3:
    call api_idx_0002_7
    jmp short @..local.l6
@..local.l4:
    call api_idx_0008
    jmp short @..local.l6
@..local.l5:
    cmp ax, strict word 0
    je short @..local.l1
    cmp ax, strict word 1
    je short @..local.l2
    cmp ax, strict word 2
    je short @..local.l4
    cmp ax, strict word 8
    je short @..local.l3
@..local.l6:
    mov ax, 0
    ret
api_idx_0002:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    push ax
    push word [bp + 0x4]
    call ds_dispatch_d161
    add sp, byte 4
    push ax
    call ds_dispatch_f909
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0002.l1
    mov ax, 5
    push ax
    call ds_dispatch_b171
    pop cx
@..api_idx_0002.l1:
    push word [bp + 0x6]
    push word [bp - 0x0002]
    call ds_dispatch_e619
    add sp, byte 4
    push word [bp - 0x0002]
    call ds_dispatch_fda5
    pop cx
    ret
api_idx_0002_2:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call ds_dispatch_d161
    add sp, byte 4
    push ax
    call ds_dispatch_f909
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0002_2.l1
    mov ax, 7
    push ax
    call ds_dispatch_b171
    pop cx
@..api_idx_0002_2.l1:
    mov ax, 0
    push ax
    push word [bp + 0x6]
    push word [bp - 0x0002]
    call ds_dispatch_f012
    add sp, byte 6
    push word [bp - 0x0002]
    call ds_dispatch_fda5
    pop cx
    ret
api_idx_0002_3:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    push ax
    push word [bp + 0x4]
    call ds_dispatch_d161
    add sp, byte 4
    push ax
    call ds_dispatch_f909
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0002_3.l1
    mov ax, 8
    push ax
    call ds_dispatch_b171
    pop cx
@..api_idx_0002_3.l1:
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp - 0x0002]
    call ds_dispatch_fd6f
    add sp, byte 6
    push word [bp - 0x0002]
    call ds_dispatch_fda5
    pop cx
    ret
api_idx_0002_4:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    push ax
    push word [bp + 0x4]
    call ds_dispatch_d161
    add sp, byte 4
    push ax
    call ds_dispatch_f909
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0002_4.l1
    mov ax, 8
    push ax
    call ds_dispatch_b171
    pop cx
@..api_idx_0002_4.l1:
    push word [bp - 0x0002]
    call ds_dispatch_ed62
    pop cx
    push word [bp - 0x0002]
    call ds_dispatch_fda5
    pop cx
    ret
api_idx_000c:
    mov ax, 0xfff4
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    push ax
    push word [bp + 0x4]
    call ds_dispatch_d161
    add sp, byte 4
    push ax
    call ds_dispatch_f909
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_000c.l1
    mov ax, 6
    push ax
    call ds_dispatch_b171
    pop cx
@..api_idx_000c.l1:
    mov ax, 2
    push ax
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_fdbd
    add sp, byte 8
    mov word [bp - 0x0004], dx
    mov word [bp - 0x0006], ax
    push word [bp - 0x0004]
    push word [bp - 0x0006]
    call ds_dispatch_afb9
    add sp, byte 4
    mov word [bp - 0x0008], dx
    mov word [bp - 0x000a], ax
    push word [bp - 0x0006]
    call ds_dispatch_f4a3
    pop cx
    mov word [bp - 0x000c], ax
    cmp word [bp - 0x0008], byte 0
    jne short @..api_idx_000c.l2
    cmp word [bp - 0x000a], byte 0
@..api_idx_000c.l2:
    je short @..api_idx_000c.l3
    cmp word [bp - 0x000c], byte 0
    jne short @..api_idx_000c.l4
@..api_idx_000c.l3:
    mov ax, 6
    push ax
    call ds_dispatch_b171
    pop cx
@..api_idx_000c.l4:
    mov ax, 0
    push ax
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_fdbd
    add sp, byte 8
    push word [bp - 0x0006]
    push word [bp - 0x000c]
    push word [bp - 0x0002]
    call ds_dispatch_fd6f
    add sp, byte 6
    push word [bp - 0x0002]
    call ds_dispatch_fda5
    pop cx
    push word [bp - 0x0006]
    push word [bp - 0x0008]
    push word [bp - 0x000a]
    mov ax, word [bp - 0x000c]
    mov dx, ds
    push dx
    push ax
    call ds_dispatch_afcc
    add sp, byte 0x0a
    push word [bp - 0x000c]
    call ds_dispatch_f5a1
    pop cx
    mov ax, word [bp - 0x000a]
    mov dx, word [bp - 0x0008]
    ret
math_loc_0211:
    mov ax, 0xfaf4
    call ds_dispatch_f40b
    mov word [bp - 0x0002], 0
@..math_loc_0211.l1:
    mov word [bp - 0x0004], 0
@..math_loc_0211.l2:
    mov ax, 0x3f
    push ax
    mov ax, 0
    push ax
    mov ax, 3
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov si, ax
    mov bx, word [bp + 0x8]
    mov al, byte [bx + si]
    sub ah, ah
    add ax, word [bp + 0x4]
    push ax
    call ds_dispatch_b7c2
    add sp, byte 6
    push ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov cx, ax
    add ax, word [bp - 0x0004]
    mov bx, ax
    add bx, bp
    pop ax
    mov byte [bx - 0x030c], al
    cmp al, 0x20
    jbe short @..math_loc_0211.l3
    sub ah, ah
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
    mov al, byte [bx - 0x030c]
    sub ah, ah
    add ax, word [bp - 0x0006]
    push ax
    call ds_dispatch_b7c2
    add sp, byte 6
    push ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov cx, ax
    add ax, word [bp - 0x0004]
    mov bx, ax
    add bx, bp
    pop ax
    mov byte [bx - 0x030c], al
    jmp short @..math_loc_0211.l4
@..math_loc_0211.l3:
    mov ax, 3
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov bx, ax
    add bx, bp
    cmp byte [bx - 0x030c], 0x20
    jae short @..math_loc_0211.l4
    mov al, byte [bx - 0x030c]
    sub ah, ah
    mov cx, ax
    mov ax, 0x20
    sub ax, cx
    imul word [bp + 0x6]
    mov cx, 0x20
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    mov ax, 0x3f
    push ax
    mov ax, 0
    push ax
    mov al, byte [bx - 0x030c]
    sub ah, ah
    sub ax, word [bp - 0x0006]
    push ax
    call ds_dispatch_b7c2
    add sp, byte 6
    push ax
    mov ax, 3
    imul word [bp - 0x0002]
    mov cx, ax
    add ax, word [bp - 0x0004]
    mov bx, ax
    add bx, bp
    pop ax
    mov byte [bx - 0x030c], al
@..math_loc_0211.l4:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jge short @..math_loc_0211.l5
    jmp near @..math_loc_0211.l2
@..math_loc_0211.l5:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, 0x100
    jge short @..math_loc_0211.l6
    jmp near @..math_loc_0211.l1
@..math_loc_0211.l6:
    mov ax, 0xff
    push ax
    mov ax, 0x200
    push ax
    lea ax, word [bp - 0x050c]
    push ax
    call ds_dispatch_f306
    add sp, byte 6
    mov word [bp - 0x0002], 0
@..math_loc_0211.l7:
    mov ax, 3
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    mov al, byte [bx - 0x030c]
    sub ah, ah
    mov cx, 8
    cwd
    idiv cx
    mov word [bp - 0x0008], ax
    mov al, byte [bx - 0x030b]
    sub ah, ah
    cwd
    idiv cx
    mov word [bp - 0x000a], ax
    mov al, byte [bx - 0x030a]
    sub ah, ah
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov al, byte [bp - 0x0002]
    mov dx, word [bp - 0x0008]
    mov cx, 6
    shl dx, cl
    mov cx, dx
    mov dx, word [bp - 0x000a]
    shl dx, 1
    shl dx, 1
    shl dx, 1
    add cx, dx
    add cx, word [bp - 0x000c]
    mov bx, cx
    add bx, bp
    mov byte [bx - 0x050c], al
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, 0x100
    jl short @..math_loc_0211.l7
    lea ax, word [bp - 0x050c]
    push ax
    lea ax, word [bp - 0x030c]
    push ax
    call ds_dispatch_f10b
    add sp, byte 4
    mov ax, 0xffff
    push ax
    push ax
    push ax
    call ds_dispatch_f0d7
    add sp, byte 6
    ret
    mov ax, 0xfce6
    call ds_dispatch_f40b
    mov word [data_905c], 0
    mov word [data_0e30], 0
    mov word [data_0e2e], 0
    mov word [data_0e2c], 0
    mov word [data_0e2a], 0
    mov word [data_0e28], 0
    mov word [data_0e26], 0
    mov ax, 0
    push ax
    mov ax, 0x9098
    push ax
    call ds_dispatch_f909
    add sp, byte 4
    mov word [data_9088], ax
    cmp ax, strict word 0xffff
    jne short @..local.l7
    mov ax, 1
    push ax
    call ds_dispatch_b171
    pop cx
@..local.l7:
    mov ax, 0x34c
    push ax
    mov ax, 0x5642
    push ax
    push word [data_9088]
    call ds_dispatch_fd6f
    add sp, byte 6
    push word [data_9088]
    call ds_dispatch_fda5
    pop cx
    mov word [data_905a], 0x36
    mov al, byte [data_5986]
    sub ah, ah
    mov word [data_9058], ax
    mov al, byte [data_598a]
    sub ah, ah
    jmp short @..local.l12
@..local.l8:
    mov ax, 2
    push ax
    call ds_dispatch_b171
    pop cx
    jmp short @..local.l13
@..local.l9:
    mov word [bp - 0x0002], 1
    jmp short @..local.l13
@..local.l10:
    mov word [bp - 0x0002], 2
    jmp short @..local.l13
@..local.l11:
    mov ax, 2
    push ax
    call ds_dispatch_b171
    pop cx
    jmp short @..local.l13
@..local.l12:
    cmp ax, strict word 1
    je short @..local.l9
    cmp ax, strict word 2
    je short @..local.l10
    cmp ax, 0xff
    je short @..local.l8
    jmp short @..local.l11
@..local.l13:
    push word [bp - 0x0002]
    call ds_dispatch_de20
    pop cx
    mov word [data_9056], ax
    test ax, 1
    jne short @..local.l14
    test ax, 2
    je short @..local.l15
@..local.l14:
    jmp short @..local.l16
@..local.l15:
    mov ax, 3
    push ax
    call ds_dispatch_b171
    pop cx
@..local.l16:
    mov word [data_0e34], 0x905c
    mov al, byte [data_5984]
    sub ah, ah
    mov word [bp - 0x000a], ax
    cmp ax, strict word 6
    jne short @..local.l17
    mov word [bp - 0x000a], 4
@..local.l17:
    mov ax, word [data_5980]
    cmp word [bp - 0x000a], byte 0
    jne short @..local.l18
    mov ax, 0
@..local.l18:
    mov word [bp - 0x000c], ax
    push word [bp - 0x000a]
    push ax
    call ds_dispatch_ef2e
    add sp, byte 4
    mov word [data_59f8], 0x905c
    mov word [data_0e32], 0
    mov word [data_5b3e], 0
    mov word [bp - 0x0006], 0
@..local.l19:
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov bx, word [bp - 0x0006]
    mov byte [bx + 0x5990], al
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 0x64
    jl short @..local.l19
    call ds_dispatch_b186
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e91b
    add sp, byte 4
    cmp dx, byte 1
    jg short @..local.l20
    jne short @..local.l21
    cmp ax, 0x6200
    jb short @..local.l21
@..local.l20:
    jmp short @..local.l22
@..local.l21:
    mov ax, 4
    push ax
    call ds_dispatch_b171
    pop cx
@..local.l22:
    mov ax, 0
    push ax
    mov ax, 0x90a5
    push ax
    call api_idx_0002
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 0x90b1
    push ax
    call api_idx_0002
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, 0x90bd
    push ax
    call api_idx_0002
    add sp, byte 4
    mov ax, 3
    push ax
    mov ax, 0x90c9
    push ax
    call api_idx_0002
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 0x90d5
    push ax
    call api_idx_0002
    add sp, byte 4
    mov ax, 5
    push ax
    mov ax, 0x90e1
    push ax
    call api_idx_0002
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0x90ed
    push ax
    call api_idx_0002
    add sp, byte 4
    mov ax, 7
    push ax
    mov ax, 0x90f9
    push ax
    call api_idx_0002
    add sp, byte 4
    call ds_dispatch_ca6a
    mov ax, 0x9105
    push ax
    call api_idx_000c
    pop cx
    mov word [data_0e30], dx
    mov word [data_0e2e], ax
    mov ax, 0x9111
    push ax
    call api_idx_000c
    pop cx
    mov word [data_0e2c], dx
    mov word [data_0e2a], ax
    mov ax, 0x911d
    push ax
    call api_idx_000c
    pop cx
    mov word [data_0e28], dx
    mov word [data_0e26], ax
    mov ax, 3
    push ax
    mov ax, 0x9129
    push ax
    call api_idx_0002_2
    add sp, byte 4
    mov word [data_1008], 0x905c
    mov ax, 0x52
    push ax
    mov ax, 0x5524
    push ax
    mov ax, 0x9136
    push ax
    call api_idx_0002_3
    add sp, byte 6
    mov ax, 0x30c
    push ax
    mov ax, 0x5218
    push ax
    mov ax, 0x9141
    push ax
    call api_idx_0002_3
    add sp, byte 6
    mov ax, 0x2dfe
    push ax
    mov ax, 0x100c
    push ax
    mov ax, 0x914a
    push ax
    call api_idx_0002_3
    add sp, byte 6
    mov ax, 0x18
    push ax
    mov ax, 0x906e
    push ax
    mov ax, 0x9152
    push ax
    call api_idx_0002_3
    add sp, byte 6
    mov ax, 0x915d
    push ax
    call api_idx_0002_4
    pop cx
    mov ax, 0
    push ax
    push ax
    mov ax, 0x9166
    push ax
    call ds_dispatch_d161
    add sp, byte 4
    push ax
    call ds_dispatch_f909
    add sp, byte 4
    mov word [data_0e24], ax
    cmp ax, strict word 0xffff
    jne short @..local.l23
    mov ax, 9
    push ax
    call ds_dispatch_b171
    pop cx
@..local.l23:
    mov word [data_5212], 0xffff
    mov word [data_5214], 0
@..local.l24:
    mov ax, word [data_5214]
    shl ax, 1
    mov bx, ax
    mov word [bx + 0x3e0a], 0xffff
    inc word [data_5214]
    mov ax, word [data_5214]
    cmp ax, strict word 4
    jl short @..local.l24
    mov word [data_5214], 0
    mov word [bp - 0x0006], 0
@..local.l25:
    mov ax, word [bp - 0x0006]
    shl ax, 1
    mov bx, ax
    mov word [bx + 0x5b72], 0xffff
    mov ax, 0x14
    imul word [bp - 0x0006]
    mov bx, ax
    mov byte [bx + 0x5b7c], 0
    mov ax, word [bp - 0x0006]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov word [bx + 0x5be2], 0
    mov word [bx + 0x5be0], 0
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 5
    jl short @..local.l25
    mov ax, 0
    push ax
    push ax
    mov ax, 0x916e
    push ax
    call ds_dispatch_d161
    add sp, byte 4
    push ax
    call ds_dispatch_f909
    add sp, byte 4
    mov word [data_0e22], ax
    cmp ax, strict word 0xffff
    jne short @..local.l26
    mov ax, 0xa
    push ax
    call ds_dispatch_b171
    pop cx
@..local.l26:
    call ds_dispatch_b9c4
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_d6dc
    add sp, byte 6
    mov ax, 1
    push ax
    push ax
    push ax
    call ds_dispatch_d6dc
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    push ax
    call ds_dispatch_d6dc
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 3
    push ax
    push ax
    call ds_dispatch_d6dc
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 4
    push ax
    push ax
    call ds_dispatch_d6dc
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 8
    push ax
    push ax
    call ds_dispatch_d6dc
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 9
    push ax
    push ax
    call ds_dispatch_d6dc
    add sp, byte 6
    mov word [data_598e], 0xffff
    mov word [data_82b6], 0xffff
    mov word [data_100a], 0x905c
    mov word [data_0e20], 0
    mov word [data_0e1e], 0
    mov word [data_0e1c], 0
    mov word [data_0e1a], 0
    mov word [data_0e18], 0
    mov word [data_0e16], 0
    mov word [data_0e14], 0
    mov word [data_0e12], 0
    mov word [data_0e10], 0
    mov word [data_0e0e], 0
    mov ax, 0x400
    mov dx, 0
    push dx
    push ax
    call ds_dispatch_afb9
    add sp, byte 4
    mov word [data_0e20], dx
    mov word [data_0e1e], ax
    cmp word [data_0e20], byte 0
    jne short @..local.l27
    cmp word [data_0e1e], byte 0
@..local.l27:
    jne short @..local.l28
    mov ax, 0xd
    push ax
    call ds_dispatch_b171
    pop cx
@..local.l28:
    mov ax, 0x1000
    mov dx, 0
    push dx
    push ax
    call ds_dispatch_afb9
    add sp, byte 4
    mov word [data_0e1c], dx
    mov word [data_0e1a], ax
    cmp word [data_0e1c], byte 0
    jne short @..local.l29
    cmp word [data_0e1a], byte 0
@..local.l29:
    jne short @..local.l30
    mov ax, 0xd
    push ax
    call ds_dispatch_b171
    pop cx
@..local.l30:
    mov ax, 0x1000
    mov dx, 0
    push dx
    push ax
    call ds_dispatch_afb9
    add sp, byte 4
    mov word [data_0e18], dx
    mov word [data_0e16], ax
    cmp word [data_0e18], byte 0
    jne short @..local.l31
    cmp word [data_0e16], byte 0
@..local.l31:
    jne short @..local.l32
    mov ax, 0xd
    push ax
    call ds_dispatch_b171
    pop cx
@..local.l32:
    push word [data_5528]
    call ds_dispatch_f4a3
    pop cx
    mov word [data_0e14], ax
    cmp word [data_0e14], byte 0
    jne short @..local.l33
    mov ax, 0xd
    push ax
    call ds_dispatch_b171
    pop cx
@..local.l33:
    push word [data_552a]
    call ds_dispatch_f4a3
    pop cx
    mov word [data_0e12], ax
    cmp word [data_0e12], byte 0
    jne short @..local.l34
    mov ax, 0xd
    push ax
    call ds_dispatch_b171
    pop cx
@..local.l34:
    mov ax, 0xc00
    push ax
    call ds_dispatch_f4a3
    pop cx
    mov word [data_0e10], ax
    cmp word [data_0e10], byte 0
    jne short @..local.l35
    mov ax, 0xd
    push ax
    call ds_dispatch_b171
    pop cx
@..local.l35:
    mov ax, 0x400
    push ax
    call ds_dispatch_f4a3
    pop cx
    mov word [data_0e0e], ax
    cmp word [data_0e0e], byte 0
    jne short @..local.l36
    mov ax, 0xd
    push ax
    call ds_dispatch_b171
    pop cx
@..local.l36:
    mov word [data_904c], 0
    mov ax, 0
    push ax
    push ax
    mov ax, 0x917b
    push ax
    call ds_dispatch_d161
    add sp, byte 4
    push ax
    call ds_dispatch_f909
    add sp, byte 4
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short @..local.l37
    mov ax, 0xe
    push ax
    call ds_dispatch_b171
    pop cx
@..local.l37:
    mov ax, 0x300
    push ax
    lea ax, word [bp - 0x031a]
    push ax
    push word [bp - 0x0004]
    call ds_dispatch_fd6f
    add sp, byte 6
    push word [bp - 0x0004]
    call ds_dispatch_fda5
    pop cx
    lea ax, word [bp - 0x031a]
    push ax
    mov al, byte [data_5979]
    cbw
    push ax
    mov al, byte [data_5978]
    cbw
    push ax
    call math_loc_0211
    add sp, byte 6
    mov word [data_830a], 1
    ret
api_idx_0002_5:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    call ds_dispatch_ef14
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call ds_dispatch_d161
    add sp, byte 4
    push ax
    call ds_dispatch_f909
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0002_5.l1
    mov ax, 0xe
    push ax
    call ds_dispatch_b171
    pop cx
@..api_idx_0002_5.l1:
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_efde
    add sp, byte 4
    push word [bp - 0x0002]
    call ds_dispatch_fda5
    pop cx
    cmp word [bp + 0x6], byte 1
    jne short @..api_idx_0002_5.l2
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    jmp short @..api_idx_0002_5.l3
@..api_idx_0002_5.l2:
    cmp word [bp + 0x6], byte 2
    jne short @..api_idx_0002_5.l3
    mov ax, 0
    push ax
    push ax
    push ax
    call ds_dispatch_f0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0
    push ax
    call ds_dispatch_f0bd
    pop cx
@..api_idx_0002_5.l3:
    ret
api_idx_0002_6:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    cmp word [data_91b8], byte 0xff
    jne short @..local.l38
    mov ax, 0
    ret
@..local.l38:
    mov ax, 1
    push ax
    call ds_dispatch_ea50
    pop cx
    test ax, ax
    je short @..local.l40
    mov ax, 1
    push ax
    call ds_dispatch_eb32
    pop cx
    sub ah, ah
    mov word [bp - 0x0002], ax
    mov ax, 0
    cmp word [bp - 0x0002], byte 0x1b
    jne short @..local.l39
    mov ax, 1
@..local.l39:
    or word [data_91b8], ax
@..local.l40:
    mov ax, word [data_91b8]
    ret
api_idx_0004:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov ax, word [bp + 0x4]
    cwd
    les bx, word [data_0002]
    mov cx, word [es:bx]
    mov bx, word [es:bx + 0x2]
    add ax, cx
    adc dx, bx
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
@..api_idx_0004.l1:
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    cmp dx, word [bp - 0x0002]
    jg short @..api_idx_0004.l2
    jne short @..api_idx_0004.l3
    cmp ax, word [bp - 0x0004]
    jb short @..api_idx_0004.l3
@..api_idx_0004.l2:
    jmp short @..local.l42
@..api_idx_0004.l3:
    call api_idx_0002_6
    test ax, ax
    je short @..local.l41
    ret
@..local.l41:
    mov ax, 0xa
    push ax
    call ds_dispatch_e489
    pop cx
    jmp short @..api_idx_0004.l1
@..local.l42:
    ret
api_idx_000e:
    mov ax, 0xfff2
    call ds_dispatch_f40b
    mov al, byte [bp + 0x4]
    mov byte [bp - 0x000e], al
    mov byte [bp - 0x000d], 0
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov al, byte [bx + 0x7ed4]
    sub ah, ah
    mov word [bp - 0x0002], ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x7f1d]
    sub ah, ah
    mov word [bp - 0x0004], ax
    cmp word [bp + 0x6], byte 0
    je short @..api_idx_000e.l1
    mov ax, 0xa0
    sub ax, word [bp - 0x0002]
    imul word [bp + 0x6]
    mov cx, 0x64
    cwd
    idiv cx
    add word [bp - 0x0002], ax
    mov ax, 0x31
    sub ax, word [bp - 0x0004]
    imul word [bp + 0x6]
    cwd
    idiv cx
    add word [bp - 0x0004], ax
@..api_idx_000e.l1:
    push word [bp + 0x6]
    mov ax, 0
    push ax
    lea ax, word [bp - 0x000e]
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
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    mov ax, 0xf
    push ax
    call ds_dispatch_efd1
    add sp, byte 0x16
    ret
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e901
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call api_idx_000e
    add sp, byte 4
    cmp word [bp + 0x6], byte 0
    je short @..local.l43
    mov ax, 0
    push ax
    push word [bp + 0x6]
    call api_idx_000e
    add sp, byte 4
@..local.l43:
    cmp word [bp + 0x8], byte 0
    je short @..local.l44
    mov ax, 0
    push ax
    push word [bp + 0x8]
    call api_idx_000e
    add sp, byte 4
@..local.l44:
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    cmp word [bp + 0xa], byte 0
    je short @..local.l45
    push word [bp + 0xa]
    call api_idx_0004
    pop cx
@..local.l45:
    ret
api_idx_0068:
    mov ax, 0xff98
    call ds_dispatch_f40b
    call ds_dispatch_d9a6
    mov word [data_8450], ax
    test ax, ax
    je short @..api_idx_0068.l1
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_d7e7
    add sp, byte 4
    mov ax, word [api_idx_0002_4]
    mov word [data_844e], ax
@..api_idx_0068.l1:
    mov word [bp - 0x0008], 0
@..api_idx_0068.l2:
    mov bx, word [bp - 0x0008]
    mov byte [bx + 0x5b48], 0xff
    mov byte [bx + 0x5b5a], 0
    inc word [bp - 0x0008]
    mov ax, word [bp - 0x0008]
    cmp ax, strict word 0x12
    jl short @..api_idx_0068.l2
    mov ax, 0xf
    push ax
    mov ax, 0x3c
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e901
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call api_idx_000e
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    push ax
    call ds_dispatch_f0d7
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0
    push ax
    call ds_dispatch_f0bd
    pop cx
    mov word [data_91b8], 0
    call api_idx_0002_6
    test ax, ax
    jne short @..api_idx_0068.l4
    cmp word [data_8450], byte 0
    je short @..api_idx_0068.l3
    mov ax, 0
    push ax
    push word [data_844e]
    push ax
    call ds_dispatch_d964
    add sp, byte 6
    mov word [data_844c], ax
@..api_idx_0068.l3:
    mov ax, 0xb4
    push ax
    call api_idx_0004
    pop cx
@..api_idx_0068.l4:
    call api_idx_0002_6
    test ax, ax
    jne short @..api_idx_0068.l5
    mov ax, 0xa
    push ax
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov ax, 2
    push ax
    call loc_0a56
    add sp, byte 8
@..api_idx_0068.l5:
    call api_idx_0002_6
    test ax, ax
    jne short @..api_idx_0068.l6
    mov ax, 0xa
    push ax
    mov ax, 0
    push ax
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    call loc_0a56
    add sp, byte 8
@..api_idx_0068.l6:
    call api_idx_0002_6
    test ax, ax
    jne short @..api_idx_0068.l7
    mov ax, 0xa
    push ax
    mov ax, 0
    push ax
    mov ax, 7
    push ax
    mov ax, 6
    push ax
    call loc_0a56
    add sp, byte 8
@..api_idx_0068.l7:
    call api_idx_0002_6
    test ax, ax
    jne short @..api_idx_0068.l8
    mov ax, 0xa
    push ax
    push ax
    mov ax, 9
    push ax
    mov ax, 8
    push ax
    call loc_0a56
    add sp, byte 8
@..api_idx_0068.l8:
    call api_idx_0002_6
    test ax, ax
    jne short @..api_idx_0068.l9
    mov ax, 0xa
    push ax
    mov ax, 0xd
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0xb
    push ax
    call loc_0a56
    add sp, byte 8
@..api_idx_0068.l9:
    call api_idx_0002_6
    test ax, ax
    jne short @..api_idx_0068.l10
    mov ax, 0xa
    push ax
    mov ax, 0
    push ax
    mov ax, 0xf
    push ax
    mov ax, 0xe
    push ax
    call loc_0a56
    add sp, byte 8
@..api_idx_0068.l10:
    call api_idx_0002_6
    test ax, ax
    jne short @..api_idx_0068.l11
    mov ax, 0
    push ax
    push ax
    mov ax, 0x11
    push ax
    mov ax, 0x10
    push ax
    call loc_0a56
    add sp, byte 8
@..api_idx_0068.l11:
    mov ax, 0xf
    push ax
    call ds_dispatch_c12a
    pop cx
    call api_idx_0002_6
    test ax, ax
    je short @..api_idx_0068.l12
    jmp near @..local.l50
@..api_idx_0068.l12:
    mov ax, 0xf
    push ax
    mov ax, 0x3d
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    mov ax, 0x98
    push ax
    call api_idx_0004
    pop cx
    call api_idx_0002_6
    test ax, ax
    jne short @..api_idx_0068.l13
    mov ax, 0xa
    push ax
    mov ax, 3
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    call loc_0a56
    add sp, byte 8
@..api_idx_0068.l13:
    call api_idx_0002_6
    test ax, ax
    jne short @..api_idx_0068.l14
    mov ax, 0xa
    push ax
    mov ax, 6
    push ax
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    call loc_0a56
    add sp, byte 8
@..api_idx_0068.l14:
    call api_idx_0002_6
    test ax, ax
    jne short @..local.l46
    mov ax, 0
    push ax
    push ax
    mov ax, 8
    push ax
    mov ax, 7
    push ax
    call loc_0a56
    add sp, byte 8
@..local.l46:
    mov ax, 0x90
    push ax
    call api_idx_0004
    pop cx
    call api_idx_0002_6
    test ax, ax
    jne short @..local.l47
    mov ax, 0xa
    push ax
    mov ax, 0xb
    push ax
    mov ax, 0xa
    push ax
    mov ax, 9
    push ax
    call loc_0a56
    add sp, byte 8
@..local.l47:
    call api_idx_0002_6
    test ax, ax
    jne short @..local.l48
    mov ax, 0xa
    push ax
    mov ax, 0xe
    push ax
    mov ax, 0xd
    push ax
    mov ax, 0xc
    push ax
    call loc_0a56
    add sp, byte 8
@..local.l48:
    call api_idx_0002_6
    test ax, ax
    jne short @..local.l49
    mov ax, 0
    push ax
    mov ax, 0x11
    push ax
    mov ax, 0x10
    push ax
    mov ax, 0xf
    push ax
    call loc_0a56
    add sp, byte 8
@..local.l49:
    mov ax, 5
    push ax
    call api_idx_0004
    pop cx
    mov ax, 0xf
    push ax
    call ds_dispatch_c12a
    pop cx
@..local.l50:
    call api_idx_0002_6
    test ax, ax
    je short @..local.l51
    jmp near @..local.l58
@..local.l51:
    mov ax, 0xf
    push ax
    mov ax, 0x3e
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    call api_idx_0002_6
    test ax, ax
    jne short @..local.l52
    mov ax, 0
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e901
    add sp, byte 0x0a
@..local.l52:
    call api_idx_0002_6
    test ax, ax
    jne short @..local.l53
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call api_idx_000e
    add sp, byte 4
@..local.l53:
    call api_idx_0002_6
    test ax, ax
    jne short @..local.l54
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    call api_idx_000e
    add sp, byte 4
@..local.l54:
    call api_idx_0002_6
    test ax, ax
    jne short @..local.l55
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    call api_idx_000e
    add sp, byte 4
@..local.l55:
    call api_idx_0002_6
    test ax, ax
    jne short @..local.l56
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    call api_idx_000e
    add sp, byte 4
@..local.l56:
    call api_idx_0002_6
    test ax, ax
    jne short @..local.l57
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
@..local.l57:
    mov ax, 5
    push ax
    call api_idx_0004
    pop cx
    mov ax, 0xf
    push ax
    call ds_dispatch_c12a
    pop cx
@..local.l58:
    call api_idx_0002_6
    test ax, ax
    jne short @..local.l59
    mov ax, 1
    push ax
    mov ax, 0x9187
    push ax
    call api_idx_0002_5
    add sp, byte 4
    mov ax, 5
    push ax
    call api_idx_0004
    pop cx
@..local.l59:
    mov ax, 0
    push ax
    mov ax, 0x9194
    push ax
    call api_idx_0002_5
    add sp, byte 4
    mov ax, 0xf
    push ax
    mov ax, 0x3f
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    call api_idx_0002_6
    test ax, ax
    je short @..local.l60
    jmp near @..local.l62
@..local.l60:
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0xc
    push ax
    call api_idx_0004
    pop cx
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0x62
    push ax
    mov ax, 0x110
    push ax
    mov ax, 0
    push ax
    mov ax, 0x37
    push ax
    call ds_dispatch_e935
    add sp, byte 0x0c
    mov word [bp - 0x000a], dx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0002], 0x5f
@..local.l61:
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x000c]
    call ds_dispatch_e942
    add sp, byte 8
    push word [bp - 0x0002]
    mov ax, 1
    push ax
    call api_idx_000e
    add sp, byte 4
    mov ax, 0x62
    push ax
    mov ax, 0x110
    push ax
    mov ax, 9
    push ax
    mov ax, 0x37
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    add word [bp - 0x0002], byte 0xfb
    cmp word [bp - 0x0002], byte 0
    jge short @..local.l61
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x000c]
    call ds_dispatch_e942
    add sp, byte 8
    jmp short @..local.l63
@..local.l62:
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call api_idx_000e
    add sp, byte 4
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
@..local.l63:
    mov ax, 0xf
    push ax
    call ds_dispatch_c12a
    pop cx
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    mov ax, 0xa2
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x66
    push ax
    mov ax, 0
    push ax
    call ds_dispatch_e935
    add sp, byte 0x0c
    mov word [bp - 0x000a], dx
    mov word [bp - 0x000c], ax
    call api_idx_0002_6
    mov ax, 0xb54
    cmp word [data_91b8], byte 0
    je short @..local.l64
    mov ax, 0xb69
@..local.l64:
    mov word [bp - 0x0060], ax
    lea ax, word [bp - 0x005c]
    push ax
    push word [bp - 0x0060]
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x005c]
    mov word [bp - 0x005e], ax
    mov word [bp - 0x0002], 0
@..local.l65:
    mov ax, word [bp - 0x0002]
    mov word [bp - 0x0066], ax
    mov bx, word [bp - 0x005e]
    mov al, byte [bx]
    sub ah, ah
    mov word [bp - 0x0002], ax
    inc word [bp - 0x005e]
    mov word [bp - 0x0004], 0
    jmp near @..local.l77
@..local.l66:
    mov bx, word [bp - 0x005e]
    mov al, byte [bx]
    sub ah, ah
    mov word [bp - 0x0062], ax
    inc word [bp - 0x005e]
    cmp ax, strict word 2
    je short @..local.l67
    jmp near @..local.l68
@..local.l67:
    mov ax, 2
    push ax
    push word [bp - 0x005e]
    call ds_dispatch_e883
    add sp, byte 4
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    mov word [bp - 0x0064], ax
    mov ax, 0xc
    imul word [bp - 0x0004]
    add ax, strict word 0x66
    push ax
    mov ax, word [bp - 0x0064]
    dec ax
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xc
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 2
    push ax
    push word [bp - 0x005e]
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0xc
    imul word [bp - 0x0004]
    add ax, strict word 0x66
    push ax
    mov ax, word [bp - 0x0064]
    inc ax
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xc
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 2
    push ax
    push word [bp - 0x005e]
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0xc
    imul word [bp - 0x0004]
    add ax, strict word 0x67
    push ax
    push word [bp - 0x0064]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xc
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 2
    push ax
    push word [bp - 0x005e]
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0xc
    imul word [bp - 0x0004]
    add ax, strict word 0x65
    push ax
    push word [bp - 0x0064]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xc
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 2
    push ax
    push word [bp - 0x005e]
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0xc
    imul word [bp - 0x0004]
    add ax, strict word 0x66
    push ax
    push word [bp - 0x0064]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 2
    push ax
    push word [bp - 0x005e]
    call ds_dispatch_e84e
    add sp, byte 4
    jmp near @..local.l76
@..local.l68:
    cmp word [bp - 0x0062], byte 3
    jne short @..local.l69
    push word [bp - 0x005e]
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    mov word [bp - 0x0064], ax
    mov word [bp - 0x0068], 0
    jmp short @..local.l70
@..local.l69:
    mov ax, 2
    push ax
    push word [bp - 0x005e]
    call ds_dispatch_e883
    add sp, byte 4
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    mov word [bp - 0x0064], ax
    mov word [bp - 0x0068], 2
@..local.l70:
    mov ax, 0xc
    imul word [bp - 0x0004]
    add ax, strict word 0x66
    push ax
    mov ax, word [bp - 0x0064]
    dec ax
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    cmp word [bp - 0x0062], byte 1
    jne short @..local.l71
    mov ax, 0x22
@..local.l71:
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    push word [bp - 0x0068]
    push word [bp - 0x005e]
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0xc
    imul word [bp - 0x0004]
    add ax, strict word 0x66
    push ax
    mov ax, word [bp - 0x0064]
    inc ax
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    cmp word [bp - 0x0062], byte 1
    jne short @..local.l72
    mov ax, 0x22
@..local.l72:
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    push word [bp - 0x0068]
    push word [bp - 0x005e]
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0xc
    imul word [bp - 0x0004]
    add ax, strict word 0x67
    push ax
    push word [bp - 0x0064]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    cmp word [bp - 0x0062], byte 1
    jne short @..local.l73
    mov ax, 0x22
@..local.l73:
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    push word [bp - 0x0068]
    push word [bp - 0x005e]
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0xc
    imul word [bp - 0x0004]
    add ax, strict word 0x65
    push ax
    push word [bp - 0x0064]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    cmp word [bp - 0x0062], byte 1
    jne short @..local.l74
    mov ax, 0x22
@..local.l74:
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    push word [bp - 0x0068]
    push word [bp - 0x005e]
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0xc
    imul word [bp - 0x0004]
    add ax, strict word 0x66
    push ax
    push word [bp - 0x0064]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x55
    cmp word [bp - 0x0062], byte 1
    jne short @..local.l75
    mov ax, 0x16
@..local.l75:
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    push word [bp - 0x0068]
    push word [bp - 0x005e]
    call ds_dispatch_e84e
    add sp, byte 4
@..local.l76:
    inc word [bp - 0x0060]
    lea ax, word [bp - 0x005c]
    push ax
    push word [bp - 0x0060]
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x005c]
    mov word [bp - 0x005e], ax
    inc word [bp - 0x0004]
@..local.l77:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jge short @..local.l78
    jmp near @..local.l66
@..local.l78:
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x0066]
    jle short @..local.l79
    mov cx, 0xc
    imul cx
    jmp short @..local.l80
@..local.l79:
    mov ax, 0xc
    imul word [bp - 0x0066]
@..local.l80:
    add ax, strict word 0x66
    push ax
    mov ax, 0x10d
    push ax
    mov ax, 0x66
    push ax
    mov ax, 0x32
    push ax
    call ds_dispatch_f005
    add sp, byte 0x0a
    mov ax, 0x10
    push ax
    call api_idx_0004
    pop cx
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x000c]
    call ds_dispatch_e942
    add sp, byte 8
    call api_idx_0002_6
    test ax, ax
    je short @..local.l81
    cmp word [bp - 0x0060], strict word 0xb69
    jge short @..local.l81
    mov word [bp - 0x0060], 0xb69
    lea ax, word [bp - 0x005c]
    push ax
    push word [bp - 0x0060]
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x005c]
    mov word [bp - 0x005e], ax
@..local.l81:
    cmp word [data_5216], byte 0
    jne short @..local.l82
    jmp near @..local.l65
@..local.l82:
    call api_idx_0002_6
    test ax, ax
    je short @..local.l83
    mov word [data_91b8], 0xffff
@..local.l83:
    mov ax, 0x32
    push ax
    call api_idx_0004
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x000c]
    call ds_dispatch_e942
    add sp, byte 8
    cmp word [data_8450], byte 0
    je short @..local.l86
    cmp word [data_91b8], byte 0
    jne short @..local.l85
@..local.l84:
    call ds_dispatch_ef83
    test ax, ax
    je short @..local.l85
    jmp short @..local.l84
@..local.l85:
    push word [data_844c]
    push word [data_844e]
    call ds_dispatch_d91b
    add sp, byte 4
    mov ax, 0
    push ax
    call ds_dispatch_d907
    pop cx
    jmp short @..local.l87
@..local.l86:
    call ds_dispatch_baef
    test ax, ax
    jne short @..local.l87
    jmp short @..local.l86
@..local.l87:
    call ds_dispatch_ec17
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    call ds_dispatch_f0ca
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
    call ds_dispatch_e901
    add sp, byte 0x0a
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 1
    push ax
    call ds_dispatch_ef14
    pop cx
    test word [data_9056], 0x1000
    je short @..local.l88
    cmp byte [data_5989], 1
    jne short @..local.l88
    call ds_dispatch_f02c
    mov word [data_0e32], 1
    jmp short @..local.l89
@..local.l88:
    mov word [data_0e32], 0
@..local.l89:
    mov word [data_5b3e], 0
    mov word [data_830a], 2
    ret
api_idx_0002_7:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    cmp word [data_906a], byte 0
    je short @..api_idx_0002_7.l1
    mov ax, 1
    push ax
    push word [data_9068]
    call ds_dispatch_c459
    add sp, byte 4
    mov word [data_906a], 0
@..api_idx_0002_7.l1:
    mov ax, 1
    push ax
    push word [data_8d08]
    push word [data_8d06]
    call ds_dispatch_e94f
    add sp, byte 6
    mov word [data_69c8], 0
    mov word [bp - 0x0002], 0
@..api_idx_0002_7.l2:
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx + 0x69a6]
    push word [bx + 0x69a4]
    call ds_dispatch_e94f
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_0002_7.l2
    mov word [bp - 0x0002], 0
@..api_idx_0002_7.l3:
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx - 0x7d2e]
    push word [bx - 0x7d30]
    call ds_dispatch_e94f
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_0002_7.l3
    call ds_dispatch_c145
    mov ax, 0
    push ax
    call ds_dispatch_c12a
    pop cx
    mov ax, 3
    push ax
    call ds_dispatch_c12a
    pop cx
    mov ax, 4
    push ax
    call ds_dispatch_c12a
    pop cx
    mov ax, 6
    push ax
    call ds_dispatch_c12a
    pop cx
    mov ax, 8
    push ax
    call ds_dispatch_c12a
    pop cx
    mov ax, 0xe
    push ax
    call ds_dispatch_c12a
    pop cx
    mov word [data_830a], 2
    call ds_dispatch_ec17
    ret
api_idx_0008:
    mov ax, 0xfff8
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    call ds_dispatch_f096
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov word [bp - 0x0004], 0
@..api_idx_0008.l1:
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x5b48], 0xff
    mov byte [bx + 0x5b5a], 0
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x12
    jl short @..api_idx_0008.l1
    mov word [data_906a], 0
    mov word [data_5b70], 0
    mov word [data_5b6e], 0
    mov word [data_5b6c], 0xffff
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    mov ax, 3
    push ax
    mov ax, 4
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 5
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 7
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    mov ax, 8
    push ax
    mov ax, 0xc
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    mov ax, 0xe
    push ax
    mov ax, 0
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    cmp word [data_904c], byte 0
    jne short @..api_idx_0008.l2
    call ds_dispatch_b890
@..api_idx_0008.l2:
    mov ax, 2
    push ax
    mov ax, 0x91a1
    push ax
    call api_idx_0002_5
    add sp, byte 4
    mov word [bp - 0x0002], 0
@..api_idx_0008.l3:
    mov ax, word [bp - 0x0002]
    mov cx, 3
    cwd
    idiv cx
    mov cx, 0x28
    imul cx
    push ax
    mov ax, 0x19
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    add ax, strict word 0x44
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], 6
    mov ax, word [bp - 0x0008]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x11
    push ax
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    call ds_dispatch_e928
    add sp, byte 8
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x7d2e], dx
    mov word [bx - 0x7d30], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_0008.l3
    mov word [data_5212], 0xffff
    mov word [data_69c8], 0
    mov word [bp - 0x0002], 0
@..api_idx_0008.l4:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x750e], 0xffff
    mov ax, word [bp - 0x0002]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xfc
    imul cx
    add ax, strict word 5
    mov word [bp - 0x0006], ax
    mov ax, word [bp - 0x0002]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 0x2d
    imul cx
    add ax, strict word 0x12
    mov word [bp - 0x0008], ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2b
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    call ds_dispatch_e928
    add sp, byte 8
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    mov bx, cx
    mov word [bx + 0x69a6], dx
    mov word [bx + 0x69a4], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_0008.l4
    mov ax, 0xc4
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0xb9
    push ax
    mov ax, 0x131
    push ax
    call ds_dispatch_e928
    add sp, byte 8
    mov word [data_8d08], dx
    mov word [data_8d06], ax
    mov word [data_0e36], 0
    mov word [data_830a], 4
    ret

    db 0x8f, 0x06, 0xb6, 0x91, 0x59, 0x89, 0x26, 0xb2, 0x91, 0x89, 0x2e, 0xb4, 0x91, 0x89, 0x36, 0xae
    db 0x91, 0x89, 0x3e, 0xb0, 0x91, 0xfc, 0xbf, 0xb8, 0x91, 0xb9, 0xba, 0x91, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0x0c, 0xea, 0x8b, 0x2e, 0xb4, 0x91, 0x8b, 0x26, 0xb2
    db 0x91, 0x8b, 0x36, 0xae, 0x91, 0x8b, 0x3e, 0xb0, 0x91, 0x51, 0xff, 0x26, 0xb6, 0x91
    db 'SCENARIO.HDR', 0
    db 'VBFONT0.VGA', 0
    db 'VBFONT1.VGA', 0
    db 'VBFONT2.VGA', 0
    db 'VBFONT3.VGA', 0
    db 'VCFONT1.VGA', 0
    db 'VCPORT0.VGA', 0
    db 'VCFONT2.VGA', 0
    db 'VCFONT3.VGA', 0
    db 'VMPNTR0.VGA', 0
    db 'VMPNTR1.VGA', 0
    db 'VMPNTR2.VGA', 0
    db 'BASEDATA.VGA', 0
    db 'MASTER.HDR', 0
    db 'DISK.HDR', 0
    db 'MSG.HDR', 0
    db 'PCFILE.DBS', 0
    db 'MISC.HDR', 0
    db 'MSG.DBS', 0
    db 'SCENARIO.DBS', 0
    db 'PALETTE.DEF', 0
    db 'TIT1SCRN.VGA', 0
    db 'TIT2SCRN.VGA', 0
    db 'MAINSCRN.VGA', 0
    times 10 db 0

