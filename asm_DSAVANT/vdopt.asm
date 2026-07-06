%include "structs/structs.inc"
%include "structs/vdopt.inc"
org 0
bits 16
%include "labels/vdopt_foreign_labels.inc"

    db 0xf2, 0x00, 0x55, 0x50, 0x21, 0x47, 0x98, 0x90 ; header (8 bytes)

data_0002 equ 0x0002
loc_000e equ 0x000e
data_002f equ 0x002f
loc_02b4 equ 0x02b4
data_0375 equ 0x0375
loc_0465 equ 0x0465
loc_04b7 equ 0x04b7
loc_08b9 equ 0x08b9
data_08c4 equ 0x08c4
data_0e0e equ 0x0e0e
data_0e10 equ 0x0e10
data_0e12 equ 0x0e12
data_0e14 equ 0x0e14
data_15b9 equ 0x15b9
loc_1ab5 equ 0x1ab5
loc_238c equ 0x238c
loc_27bd equ 0x27bd
loc_28f7 equ 0x28f7
data_35eb equ 0x35eb
loc_35f3 equ 0x35f3
data_590e equ 0x590e
data_5910 equ 0x5910
data_598c equ 0x598c
data_598e equ 0x598e
data_59fc equ 0x59fc
data_5b3e equ 0x5b3e
data_5b6e equ 0x5b6e
data_69c8 equ 0x69c8
data_82ee equ 0x82ee
data_82f2 equ 0x82f2
data_82f4 equ 0x82f4
data_82f6 equ 0x82f6
data_82f8 equ 0x82f8
data_82fa equ 0x82fa
data_82fc equ 0x82fc
data_82fe equ 0x82fe
data_8300 equ 0x8300
data_8302 equ 0x8302
data_8304 equ 0x8304
data_8306 equ 0x8306
data_830a equ 0x830a
data_830c equ 0x830c
data_8af0 equ 0x8af0
data_8d0e equ 0x8d0e
data_8d10 equ 0x8d10
data_8d12 equ 0x8d12
data_8f3e equ 0x8f3e
data_8f40 equ 0x8f40
data_8f42 equ 0x8f42
data_8f44 equ 0x8f44
data_8f46 equ 0x8f46
data_8f48 equ 0x8f48
data_904e equ 0x904e
data_9050 equ 0x9050
data_905a equ 0x905a
data_9068 equ 0x9068
data_906a equ 0x906a
data_908a equ 0x908a
data_908c equ 0x908c
data_908e equ 0x908e
data_9090 equ 0x9090
data_9092 equ 0x9092
data_9094 equ 0x9094
data_90b6 equ 0x90b6
data_90b8 equ 0x90b8
data_9342 equ 0x9342
data_9344 equ 0x9344
data_95ce equ 0x95ce
data_9858 equ 0x9858
data_9ae2 equ 0x9ae2
data_9ae4 equ 0x9ae4
data_9ae6 equ 0x9ae6
data_9ae8 equ 0x9ae8
data_9aea equ 0x9aea
data_9aec equ 0x9aec
data_9aee equ 0x9aee
data_9af0 equ 0x9af0
data_9af2 equ 0x9af2
data_9af4 equ 0x9af4
data_9af6 equ 0x9af6
data_9af8 equ 0x9af8
data_9afa equ 0x9afa
data_9afc equ 0x9afc
data_9afe equ 0x9afe
data_9b00 equ 0x9b00
data_9b02 equ 0x9b02
data_9b04 equ 0x9b04
data_9b06 equ 0x9b06
data_9b08 equ 0x9b08
data_9b0a equ 0x9b0a
data_9b0c equ 0x9b0c
data_9b5e equ 0x9b5e
data_9d90 equ 0x9d90

    db 0x1e, 0x00, 0xde, 0x0c, 0x20, 0x97
    mov ax, 0
    call ds_dispatch_f40b
    cmp word [data_906a], byte 0
    je short @..local.l1
    mov ax, 1
    push ax
    push word [data_9068]
    call ds_dispatch_c459
    add sp, byte 4
    mov word [data_906a], 0
@..local.l1:
    mov word [data_90b6], 0
    mov word [data_90b8], 0
    cmp word [data_830a], byte 0x13
    jne short @..local.l2
    mov ax, 0xe
    push ax
    call ds_dispatch_c12a
    pop cx
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, 3
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    push word [data_8af0]
    call api_idx_0004_7
    pop cx
    mov ax, 1
    push ax
    call ds_dispatch_c12a
    pop cx
    mov ax, 2
    push ax
    call ds_dispatch_c12a
    pop cx
    mov ax, 0xe
    push ax
    mov ax, 0
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
@..local.l2:
    cmp word [data_830a], byte 0x14
    jne short @..local.l3
    push word [data_8af0]
    call api_idx_0094
    pop cx
@..local.l3:
    mov word [data_830a], 5
    mov ax, 0
    ret
math_loc_00a5:
    mov ax, 0
    call ds_dispatch_f40b
    mov bx, word [data_0e14]
    mov si, word [bp + 0x4]
    mov al, byte [bx + si + 0x490]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jg short @..local.l4
    add ax, strict word 7
    cmp ax, word [bp + 0x6]
    jl short @..local.l4
    mov al, byte [bx + si + 0x4a0]
    sub ah, ah
    cmp ax, word [bp + 0x8]
    jg short @..local.l4
    add ax, strict word 7
    cmp ax, word [bp + 0x8]
    jl short @..local.l4
    mov ax, si
    ret
@..local.l4:
    mov ax, 0xffff
    ret
api_idx_0004:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    push word [bp + 0xc]
    push word [bp + 0xa]
    mov bx, word [bp + 0x8]
    push word [bx]
    call math_loc_00a5
    add sp, byte 6
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short @..local.l6
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [data_8f48]
    call math_loc_00a5
    add sp, byte 6
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short @..local.l6
    mov bx, word [bp + 0x8]
    mov ax, word [bx]
    inc ax
    mov cx, 0x10
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
@..api_idx_0004.l1:
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp - 0x0002]
    call math_loc_00a5
    add sp, byte 6
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short @..local.l6
    mov ax, word [bp - 0x0002]
    inc ax
    mov cx, 0x10
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    mov bx, word [bp + 0x8]
    cmp dx, word [bx]
    jne short @..local.l5
    mov ax, 1
    ret
@..local.l5:
    jmp short @..api_idx_0004.l1
@..local.l6:
    mov ax, word [bp + 0xa]
    push ax
    mov bx, word [data_0e14]
    mov si, word [bp - 0x0004]
    mov al, byte [bx + si + 0x490]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    mov bx, word [bp + 0x4]
    mov word [bx], ax
    mov ax, word [bp + 0xc]
    push ax
    mov bx, word [data_0e14]
    mov si, word [bp - 0x0004]
    mov al, byte [bx + si + 0x4a0]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    mov bx, word [bp + 0x6]
    mov word [bx], ax
    mov ax, word [bp - 0x0004]
    mov bx, word [bp + 0x8]
    mov word [bx], ax
    mov word [data_8f48], ax
    mov ax, 0
    ret
api_idx_0002:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, word [bp + 0xa]
    mov word [bp - 0x0002], ax
    jmp short @..local.l9
@..api_idx_0002.l1:
    mov bx, word [data_0e12]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si + 0x870]
    sub ah, ah
    cmp ax, word [bp + 0x8]
    je short @..local.l7
    mov ax, 0xffff
    ret
@..local.l7:
    mov al, byte [bx + si + 0x690]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jne short @..local.l8
    mov al, byte [bx + si + 0x780]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jne short @..local.l8
    cmp byte [bx + si + 0x5a0], 0
    jbe short @..local.l8
    mov al, byte [bx + si + 0x960]
    sub ah, ah
    push ax
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    jne short @..local.l8
    mov ax, word [bp - 0x0002]
    ret
@..local.l8:
    inc word [bp - 0x0002]
@..local.l9:
    cmp word [bp - 0x0002], strict word 0xf0
    jl short @..api_idx_0002.l1
    mov ax, 0xffff
    ret
api_idx_002a:
    mov ax, 0xffd6
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    mov ax, 0x28
    push ax
    lea ax, word [bp - 0x002a]
    push ax
    call ds_dispatch_f306
    add sp, byte 6
    push word [bp + 0x4]
    lea ax, word [bp - 0x002a]
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov ax, 0x2f
    push ax
    lea ax, word [bp - 0x002a]
    push ax
    call ds_dispatch_ee4a
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_002a.l1
    lea ax, word [bp - 0x002a]
    push ax
    call ds_dispatch_fa90
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
    call ds_dispatch_e823
    add sp, byte 4
    push word [bp + 0x8]
    push word [bp + 0x6]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x002a]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 6
    push ax
    push word [bp + 0x6]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    lea cx, word [bp - 0x0029]
    add ax, cx
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    ret
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0xa
    push ax
    call ds_dispatch_e489
    pop cx
    ret
api_idx_0004_2:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    call ds_dispatch_ec17
    mov ax, word [bp + 0x4]
    cwd
    les bx, word [data_0002]
    mov cx, word [es:bx]
    mov bx, word [es:bx + 0x2]
    add ax, cx
    adc dx, bx
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
@..api_idx_0004_2.l1:
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    cmp dx, word [bp - 0x0002]
    jg short @..api_idx_0004_2.l2
    jne short @..api_idx_0004_2.l3
    cmp ax, word [bp - 0x0004]
    jb short @..api_idx_0004_2.l3
@..api_idx_0004_2.l2:
    jmp short @..local.l11
@..api_idx_0004_2.l3:
    call ds_dispatch_baef
    test ax, ax
    je short @..local.l10
    ret
@..local.l10:
    call loc_02b4
    jmp short @..api_idx_0004_2.l1
@..local.l11:
    ret
api_idx_0006:
    mov ax, 0xfffa
    call ds_dispatch_f40b
    mov ax, word [bp + 0x8]
    xchg al, ah
    sub al, al
    mov dx, word [bp + 0xa]
    mov cx, 4
    shl dx, cl
    mov cx, dx
    add ax, cx
    add ax, word [bp + 0xc]
    mov word [bp - 0x0004], ax
    mov ax, word [data_0e10]
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0002], 0
    jmp short @..local.l15
@..api_idx_0006.l1:
    mov bx, word [bp - 0x0006]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jne short @..local.l14
    mov al, byte [bx + 0x1]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jne short @..local.l14
    cmp word [bp + 0x6], byte 6
    jne short @..local.l13
    mov ax, word [bx + 0x2]
    cmp ax, word [bp + 0x8]
    jne short @..local.l12
    mov ax, word [bp - 0x0002]
    ret
@..local.l12:
    jmp short @..local.l14
@..local.l13:
    mov ax, word [bx + 0x2]
    cmp ax, word [bp - 0x0004]
    jne short @..local.l14
    mov ax, word [bp - 0x0002]
    ret
@..local.l14:
    add word [bp - 0x0006], byte 6
    inc word [bp - 0x0002]
@..local.l15:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_590e]
    jl short @..api_idx_0006.l1
    mov ax, 0xffff
    ret
api_idx_0004_3:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0006
    add sp, byte 0x0a
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0004_3.l2
    mov ax, word [data_590e]
    mov word [bp - 0x0002], ax
    inc word [data_590e]
    mov ax, word [data_590e]
    cmp ax, 0x200
    jl short @..api_idx_0004_3.l2
@..api_idx_0004_3.l1:
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
    jmp short @..api_idx_0004_3.l1
@..api_idx_0004_3.l2:
    mov ax, 6
    imul word [bp - 0x0002]
    mov cx, ax
    mov ax, word [data_0e10]
    add ax, cx
    mov word [bp - 0x0004], ax
    mov al, byte [bp + 0x4]
    mov bx, word [bp - 0x0004]
    mov byte [bx], al
    mov al, byte [bp + 0x6]
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x1], al
    mov ax, word [bp + 0x8]
    xchg al, ah
    sub al, al
    mov dx, word [bp + 0xa]
    mov cx, 4
    shl dx, cl
    mov cx, dx
    add ax, cx
    add ax, word [bp + 0xc]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x2], ax
    mov ax, word [bp + 0x6]
    jmp short loc_0465
    mov ax, word [bp + 0xe]
    mov cx, 4
    shl ax, cl
    add ax, word [bp + 0x10]
    xchg al, ah
    sub al, al
    mov dx, word [bp + 0x12]
    shl dx, cl
    mov cx, dx
    add ax, cx
    add ax, word [bp + 0x14]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x4], ax
    jmp short @..api_idx_0004_3.l4
    mov ax, word [bp + 0xe]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x4], ax
    jmp short @..api_idx_0004_3.l4
    mov ax, word [bp + 0xe]
    xchg al, ah
    sub al, al
    add ax, word [bp + 0x10]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x4], ax
    jmp short @..api_idx_0004_3.l4
    mov ax, word [bp + 0x8]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x2], ax
    mov ax, word [bp + 0xe]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x4], ax
    jmp short @..api_idx_0004_3.l4
    dec dx
    push sp
    insw
    push sp
    insw
    push sp
    insw
    push sp
    insw
    push sp
    js short loc_04b7
    db 0x8a, 0x54, 0x3d
    pop es
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x549e]
@..api_idx_0004_3.l4:
    ret
api_idx_0002_2:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, word [bp + 0x6]
    mov word [bp - 0x0002], ax
    jmp short @..api_idx_0002_2.l2
@..api_idx_0002_2.l1:
    mov ax, word [bp - 0x0002]
    mov cx, 8
    cwd
    idiv cx
    mov si, ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + si]
    cbw
    push ax
    mov ax, word [bp - 0x0002]
    cwd
    idiv cx
    mov cx, dx
    mov dx, 1
    shl dx, cl
    mov cx, dx
    not cx
    pop ax
    and ax, cx
    mov byte [bx + si], al
    inc word [bp - 0x0002]
@..api_idx_0002_2.l2:
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    cmp ax, word [bp - 0x0002]
    jg short @..api_idx_0002_2.l1
    ret
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, word [data_82ee]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x7302], 0
    push ax
    mov cx, word [bp + 0x4]
    shl cx, 1
    mov ax, word [data_0e12]
    add ax, cx
    add ax, 0x3c0
    push ax
    call api_idx_0002_2
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    push word [bx + si + 0x3c0]
    mov ax, 0
    push ax
    push ax
    push word [bp + 0x4]
    mov ax, 6
    push ax
    push word [data_830c]
    call api_idx_0004_3
    add sp, byte 0x12
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    cmp word [bx + si], byte 0
    jle short @..local.l16
    mov ax, 0
    push ax
    push word [bx + si]
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    push word [bx + si]
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    mov ax, word [bp + 0x4]
    inc ax
    mov word [data_8d12], ax
@..local.l16:
    mov ax, 1
    push ax
    call ds_dispatch_b7e0
    pop cx
    ret
api_idx_0058:
    mov ax, 0xffa8
    call ds_dispatch_f40b
    lea ax, word [bp - 0x0058]
    push ax
    push word [bp + 0x4]
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_fa90
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
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, ax
    mov ax, word [bp - 0x0002]
    add cx, ax
    mov word [bp - 0x0004], cx
    mov ax, 0x98
    push ax
    push cx
    mov ax, 0x92
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_e928
    add sp, byte 8
    mov word [bp - 0x0006], dx
    mov word [bp - 0x0008], ax
    mov ax, 0
    push ax
    mov ax, 0x16
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0x92
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0x98
    push ax
    push word [bp - 0x0004]
    mov ax, 0x92
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_e8da
    add sp, byte 8
    cmp word [data_90b8], byte 0
    je short @..api_idx_0058.l1
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
@..api_idx_0058.l1:
    mov ax, word [data_905a]
    mov cx, 2
    cwd
    idiv cx
    push ax
    call api_idx_0004_2
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0008]
    call ds_dispatch_e94f
    add sp, byte 6
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    ret
api_idx_0002_3:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov bx, word [data_0e12]
    mov si, word [data_8f3e]
    mov al, byte [bx + si + 0xb40]
    sub ah, ah
    mov word [bp - 0x0002], ax
@..api_idx_0002_3.l1:
    push word [bp - 0x0002]
    push word [data_8f3e]
    push word [data_8f40]
    push word [data_8f42]
    call api_idx_0002
    add sp, byte 8
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short @..local.l18
    mov bx, word [data_0e12]
    mov si, ax
    cmp byte [bx + si + 0x5a0], 7
    jne short @..local.l17
    mov ax, 2
    push ax
    mov ax, word [data_82ee]
    shl ax, 1
    push ax
    shl si, 1
    push word [bx + si + 0x3c0]
    call ds_dispatch_ed3a
    add sp, byte 6
    cmp ax, strict word 1
    je short @..api_idx_0002_3.l2
    mov ax, 2
    push ax
    mov ax, word [data_82ee]
    shl ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    push word [bx + si + 0x3c0]
    call ds_dispatch_ed3a
    add sp, byte 6
    cmp ax, strict word 2
    jne short @..local.l17
@..api_idx_0002_3.l2:
    mov ax, word [bp - 0x0002]
    ret
@..local.l17:
    inc word [bp - 0x0002]
    jmp short @..api_idx_0002_3.l1
@..local.l18:
    mov ax, 0xffff
    ret
api_idx_000e:
    mov ax, 0xfff2
    call ds_dispatch_f40b
    call api_idx_0002_3
    mov word [bp - 0x000e], ax
    cmp ax, strict word 0xffff
    jne short @..local.l19
    mov ax, 0xffff
    ret
@..local.l19:
    mov ax, word [bp - 0x000e]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x1e0]
    mov word [bp - 0x0006], ax
    mov si, word [bp - 0x000e]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    mov word [bp - 0x0002], ax
    mov ax, 5
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0004], ax
    mov word [bp - 0x000a], 0
    mov ax, word [bp - 0x000e]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0002], ax
    mov ax, 2
    push ax
    mov ax, word [data_82ee]
    shl ax, 1
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_ed3a
    add sp, byte 6
    cmp ax, strict word 2
    jne short @..local.l20
    cmp word [bp - 0x0004], byte 0
    jne short @..local.l20
    mov word [bp - 0x000a], 1
@..local.l20:
    mov word [bp - 0x000c], 0
    mov ax, word [bp + 0x4]
    shl ax, 1
    push ax
    call ds_dispatch_b7a9
    pop cx
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    inc ax
    inc ax
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x0008], ax
    cmp ax, word [bp - 0x0004]
    jge short @..local.l21
    mov word [bp - 0x000c], 1
@..local.l21:
    cmp word [bp - 0x000a], byte 0
    je short @..local.l22
    mov word [bp - 0x000c], 2
@..local.l22:
    cmp word [bp - 0x000c], byte 0
    jne short @..local.l23
    push word [bp - 0x000e]
    call loc_04b7
    pop cx
@..local.l23:
    mov ax, word [bp - 0x000c]
    add ax, 0x841
    mov word [data_90b6], ax
    mov ax, word [bp - 0x000c]
    mov word [data_90b8], ax
    mov ax, 0
    ret
math_loc_07d9:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    push word [bp + 0x4]
    lea ax, word [bp + 0xc]
    push ax
    lea ax, word [bp + 0xa]
    push ax
    lea ax, word [bp + 0x8]
    push ax
    call api_idx_0004
    add sp, byte 0x0a
    test ax, ax
    je short @..local.l24
    mov ax, word [data_5b6e]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short @..math_loc_07d9.l1
    mov ax, cx
    jmp short @..math_loc_07d9.l2
@..math_loc_07d9.l1:
    mov ax, 4
    mov cx, word [data_5b6e]
    cmp cx, byte 6
    jne short @..math_loc_07d9.l2
    mov ax, 0
@..math_loc_07d9.l2:
    ret
@..local.l24:
    mov ax, 4
    push ax
    mov ax, word [bp + 0xc]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xa]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0x8]
    push ax
    mov ax, word [data_0e14]
    add ax, 0x90
    push ax
    call ds_dispatch_ecf6
    add sp, byte 6
    ret
math_loc_0849:
    mov ax, 0
    call ds_dispatch_f40b
    push word [bp + 0x6]
    mov ax, word [bp + 0x4]
    dec ax
    push ax
    lea ax, word [bp + 0xc]
    push ax
    lea ax, word [bp + 0xa]
    push ax
    lea ax, word [bp + 0x8]
    push ax
    call api_idx_0004
    add sp, byte 0x0a
    test ax, ax
    je short @..local.l25
    mov ax, word [data_5b6e]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short @..math_loc_0849.l1
    mov ax, cx
    jmp short @..math_loc_0849.l2
@..math_loc_0849.l1:
    mov ax, 4
    mov cx, word [data_5b6e]
    cmp cx, byte 6
    jne short @..math_loc_0849.l2
    mov ax, 0
@..math_loc_0849.l2:
    ret
@..local.l25:
    mov ax, 4
    push ax
    mov ax, word [bp + 0xc]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xa]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0x8]
    push ax
    mov ax, word [data_0e14]
    add ax, 0x290
    push ax
    call ds_dispatch_ecf6
    add sp, byte 6
    ret
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, word [bp + 0x4]
    jmp short @..local.l30
@..local.l26:
    mov ax, 4
    push ax
    mov ax, word [bp + 0x6]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xa]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0x8]
    push ax
    mov ax, word [data_0e14]
    add ax, 0x90
    push ax
    call ds_dispatch_ecf6
    add sp, byte 6
    ret
@..local.l27:
    mov ax, 4
    push ax
    mov ax, word [bp + 0x6]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xa]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0x8]
    push ax
    mov ax, word [data_0e14]
    add ax, 0x290
    push ax
    call ds_dispatch_ecf6
    add sp, byte 6
    ret
@..local.l28:
    push word [bp + 0x6]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0xe]
    push word [bp + 0xc]
    call math_loc_07d9
    add sp, byte 0x0a
    ret
@..local.l29:
    push word [bp + 0x6]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0xe]
    push word [bp + 0xc]
    call math_loc_0849
    add sp, byte 0x0a
    ret
@..local.l30:
    cmp ax, strict word 0
    jne short @..local.l31
    jmp near @..local.l26
@..local.l31:
    cmp ax, strict word 1
    je short @..local.l27
    cmp ax, strict word 2
    je short @..local.l28
    cmp ax, strict word 3
    je short @..local.l29
    ret
math_loc_095a:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, word [bp + 0x4]
    jmp short @..math_loc_095a.l5
@..math_loc_095a.l1:
    dec word [bp + 0xa]
    jmp short @..math_loc_095a.l6
@..math_loc_095a.l2:
    inc word [bp + 0x8]
    jmp short @..math_loc_095a.l6
@..math_loc_095a.l3:
    inc word [bp + 0xa]
    jmp short @..math_loc_095a.l6
@..math_loc_095a.l4:
    dec word [bp + 0x8]
    jmp short @..math_loc_095a.l6
@..math_loc_095a.l5:
    cmp ax, strict word 0
    je short @..math_loc_095a.l1
    cmp ax, strict word 1
    je short @..math_loc_095a.l2
    cmp ax, strict word 2
    je short @..math_loc_095a.l3
    cmp ax, strict word 3
    je short @..math_loc_095a.l4
@..math_loc_095a.l6:
    cmp word [bp + 0x8], byte 0
    jl short @..math_loc_095a.l7
    cmp word [bp + 0x8], byte 0x11
    jge short @..math_loc_095a.l7
    cmp word [bp + 0xa], byte 0
    jl short @..math_loc_095a.l7
    cmp word [bp + 0xa], byte 0x11
    jge short @..math_loc_095a.l7
    mov ax, word [bp + 0x6]
    push ax
    mov ax, 0x24
    imul word [bp + 0x8]
    mov cx, ax
    mov dx, word [bp + 0xa]
    shl dx, 1
    add ax, dx
    mov bx, ax
    pop ax
    mov word [bx - 0x6f46], ax
@..math_loc_095a.l7:
    ret
api_idx_0014:
    mov ax, 0xffec
    call ds_dispatch_f40b
    mov word [bp - 0x000e], 0xffff
    mov ax, word [data_8f42]
    mov word [bp - 0x0008], ax
    mov ax, word [data_8f40]
    mov word [bp - 0x000a], ax
    mov ax, word [data_8f3e]
    mov word [bp - 0x000c], ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    lea ax, word [bp - 0x000c]
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    lea ax, word [bp - 0x0008]
    push ax
    call api_idx_0004
    add sp, byte 0x0a
    test ax, ax
    je short @..local.l32
    cmp word [bp + 0xc], byte 0
    jne short @..api_idx_0014.l1
    mov ax, 0x24
    imul word [bp + 0x8]
    mov cx, word [bp + 0xa]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov word [bx - 0x6f46], 0xffff
    jmp short @..api_idx_0014.l2
@..api_idx_0014.l1:
    mov ax, word [data_9342]
    push ax
    mov ax, 0x24
    imul word [bp + 0x8]
    mov cx, ax
    mov dx, word [bp + 0xa]
    shl dx, 1
    add ax, dx
    mov bx, ax
    pop ax
    mov word [bx - 0x6f46], ax
    mov ax, word [data_9344]
    mov word [bx - 0x6cba], ax
    mov ax, word [data_95ce]
    mov word [bx - 0x6a30], ax
@..api_idx_0014.l2:
    ret
@..local.l32:
    cmp word [data_9858], byte 0
    je short @..local.l37
    mov bx, word [data_0e12]
    mov si, word [bp - 0x000c]
    mov al, byte [bx + si + 0xb40]
    sub ah, ah
    mov word [bp - 0x0014], ax
@..local.l33:
    push word [bp - 0x0014]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    call api_idx_0002
    add sp, byte 8
    mov word [bp - 0x0014], ax
    cmp ax, strict word 0xffff
    je short @..local.l36
    mov bx, word [data_0e12]
    mov si, ax
    cmp byte [bx + si + 0x5a0], 3
    je short @..local.l34
    cmp byte [bx + si + 0x5a0], 8
    jne short @..local.l35
@..local.l34:
    mov ax, 0x24
    imul word [bp + 0x8]
    mov cx, word [bp + 0xa]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov word [bx - 0x67a6], 1
@..local.l35:
    inc word [bp - 0x0014]
    jmp short @..local.l33
@..local.l36:
    jmp short @..local.l38
@..local.l37:
    mov ax, 0x24
    imul word [bp + 0x8]
    mov cx, word [bp + 0xa]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov word [bx - 0x67a6], 0
@..local.l38:
    mov ax, word [bp - 0x000c]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp - 0x000a]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp - 0x0008]
    mov word [bp - 0x0002], ax
    cmp word [bp + 0xc], byte 0
    jne short @..local.l39
    push ax
    mov ax, 0x8afe
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    jne short @..local.l39
    mov ax, 0x24
    imul word [bp + 0x8]
    mov cx, word [bp + 0xa]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov word [bx - 0x6f46], 0xffff
    ret
@..local.l39:
    mov ax, 6
    push ax
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x4b0
    push ax
    call ds_dispatch_ecf6
    add sp, byte 6
    mov word [bp - 0x0004], ax
    mov ax, 2
    push ax
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x7b0
    push ax
    call ds_dispatch_ecf6
    add sp, byte 6
    mov word [bp - 0x0006], ax
    cmp word [bp - 0x0004], byte 1
    jne short @..local.l40
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [data_9ae2]
    push ax
    call math_loc_095a
    add sp, byte 8
@..local.l40:
    cmp word [bp - 0x0004], byte 2
    jne short @..local.l41
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [data_9ae4]
    push word [bp - 0x0006]
    call math_loc_095a
    add sp, byte 8
@..local.l41:
    cmp word [bp - 0x0004], byte 8
    jne short @..local.l42
    mov ax, word [data_9ae6]
    mov word [bp - 0x000e], ax
@..local.l42:
    cmp word [bp - 0x0004], byte 9
    jne short @..local.l43
    mov ax, word [data_9ae8]
    mov word [bp - 0x000e], ax
@..local.l43:
    cmp word [bp - 0x0004], byte 0x0d
    jne short @..local.l44
    mov ax, word [data_9aea]
    mov word [bp - 0x000e], ax
@..local.l44:
    cmp word [bp - 0x0004], byte 0x0e
    jne short @..local.l45
    mov ax, word [data_9aec]
    mov word [bp - 0x000e], ax
@..local.l45:
    cmp word [bp - 0x0004], byte 0x0f
    jne short @..local.l46
    mov ax, word [data_9aee]
    mov word [bp - 0x000e], ax
@..local.l46:
    cmp word [bp - 0x000e], byte 0xff
    je short @..local.l47
    mov ax, word [bp - 0x000e]
    cmp ax, word [data_9af0]
    jne short @..local.l48
@..local.l47:
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x8b0
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..local.l48
    mov ax, word [data_9af2]
    mov word [bp - 0x000e], ax
@..local.l48:
    mov ax, word [bp - 0x000e]
    cmp ax, strict word 0xffff
    je short @..local.l49
    cmp ax, word [data_9af0]
    je short @..local.l49
    cmp ax, word [data_9af2]
    jne short @..local.l50
@..local.l49:
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x9b0
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..local.l50
    mov ax, word [data_9af4]
    mov word [bp - 0x000e], ax
@..local.l50:
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x9b0
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..local.l52
    mov ax, word [data_830c]
    jmp short @..local.l51

    db 0xa1, 0xea, 0x9a, 0x89, 0x46, 0xf2, 0xeb, 0x30, 0x4a, 0x5c, 0x82, 0x5c, 0x4a, 0x5c, 0x82, 0x5c
    db 0x82, 0x5c, 0x82, 0x5c, 0x82
    db '\J\J\J\J\J\'
    db 0x82, 0x5c, 0x82
    db '\J\J\'

@..local.l51:
    sub ax, strict word 0xf
    cmp ax, strict word 0x10
    jae short @..local.l52
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x5c52]
@..local.l52:
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x930
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..local.l58
    mov ax, word [data_830c]
    jmp short @..local.l57
@..local.l53:
    jmp short @..local.l58
@..local.l54:
    mov ax, word [data_9aea]
    mov word [bp - 0x000e], ax
    jmp short @..local.l58
@..local.l55:
    mov word [bp - 0x000e], 6
    jmp short @..local.l58
@..local.l56:
    mov ax, word [data_9342]
    mov word [bp - 0x000e], ax
    jmp short @..local.l58
@..local.l57:
    cmp ax, strict word 0
    je short @..local.l53
    cmp ax, strict word 0xa
    je short @..local.l55
    cmp ax, strict word 0xe
    je short @..local.l54
    cmp ax, strict word 0x13
    je short @..local.l54
    cmp ax, strict word 0x19
    je short @..local.l55
    cmp ax, strict word 0x1f
    je short @..local.l54
    jmp short @..local.l56
@..local.l58:
    cmp word [bp - 0x000e], byte 0xff
    je short @..local.l59
    mov ax, word [bp - 0x000e]
    push ax
    mov ax, 0x24
    imul word [bp + 0x8]
    mov cx, ax
    mov dx, word [bp + 0xa]
    shl dx, 1
    add ax, dx
    mov bx, ax
    pop ax
    mov word [bx - 0x6f46], ax
@..local.l59:
    cmp word [data_5b6e], byte 1
    jne short @..local.l60
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x8b0
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..local.l60
    mov ax, 0x24
    imul word [bp + 0x8]
    mov cx, word [bp + 0xa]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov word [bx - 0x6f46], 0xffff
@..local.l60:
    mov word [bp - 0x0010], 0xffff
    push word [bp + 0x6]
    push word [bp + 0x4]
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x000c]
    mov ax, 0
    push ax
    call loc_08b9
    add sp, byte 0x0c
    mov word [bp - 0x0012], ax
    jmp short @..local.l61

    db 0xa1, 0xf6, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x35, 0xa1, 0xf8, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x2d
    db 0xa1, 0xfa, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x25, 0xa1, 0xfc, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x1d
    db 0x84
    db ']G]O]W]_]'
    db 0x84
    db ']W]O]'

@..local.l61:
    cmp ax, strict word 8
    jae short @..local.l62
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x5d67]
@..local.l62:
    cmp word [bp - 0x0010], byte 0xff
    je short @..local.l63
    mov ax, word [bp - 0x0010]
    push ax
    mov ax, 0x24
    imul word [bp + 0x8]
    mov cx, ax
    mov dx, word [bp + 0xa]
    shl dx, 1
    add ax, dx
    mov bx, ax
    pop ax
    mov word [bx - 0x6cba], ax
@..local.l63:
    mov word [bp - 0x0010], 0xffff
    push word [bp + 0x6]
    push word [bp + 0x4]
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x000c]
    mov ax, 1
    push ax
    call loc_08b9
    add sp, byte 0x0c
    mov word [bp - 0x0012], ax
    jmp short @..local.l64

    db 0xa1, 0xfe, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x35, 0xa1, 0x00, 0x9b, 0x89, 0x46, 0xf0, 0xeb, 0x2d
    db 0xa1, 0x02, 0x9b, 0x89, 0x46, 0xf0, 0xeb, 0x25, 0xa1, 0x04, 0x9b, 0x89, 0x46, 0xf0, 0xeb, 0x1d
    db 0x04, 0x5e, 0xc7, 0x5d, 0xcf, 0x5d, 0xd7, 0x5d, 0xdf, 0x5d, 0x04, 0x5e, 0xd7, 0x5d, 0xcf, 0x5d

@..local.l64:
    cmp ax, strict word 8
    jae short @..local.l65
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x5de7]
@..local.l65:
    cmp word [bp - 0x0010], byte 0xff
    je short @..local.l66
    mov ax, word [bp - 0x0010]
    push ax
    mov ax, 0x24
    imul word [bp + 0x8]
    mov cx, ax
    mov dx, word [bp + 0xa]
    shl dx, 1
    add ax, dx
    mov bx, ax
    pop ax
    mov word [bx - 0x6a30], ax
@..local.l66:
    mov word [bp - 0x0010], 0xffff
    push word [bp + 0x6]
    push word [bp + 0x4]
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x000c]
    mov ax, 2
    push ax
    call loc_08b9
    add sp, byte 0x0c
    mov word [bp - 0x0012], ax
    jmp short @..local.l67

    db 0xa1, 0xf6, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x35, 0xa1, 0xf8, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x2d
    db 0xa1, 0xfa, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x25, 0xa1, 0xfc, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x1d
    db 0x84
    db '^G^O^W^_^'
    db 0x84
    db '^W^O^'

@..local.l67:
    cmp ax, strict word 8
    jae short @..local.l68
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x5e67]
@..local.l68:
    cmp word [bp - 0x0010], byte 0xff
    je short @..local.l69
    mov ax, word [bp - 0x0010]
    push ax
    mov ax, 0x24
    imul word [bp + 0x8]
    mov cx, ax
    mov dx, word [bp + 0xa]
    shl dx, 1
    add ax, dx
    mov bx, ax
    pop ax
    mov word [bx - 0x6cb8], ax
@..local.l69:
    mov word [bp - 0x0010], 0xffff
    push word [bp + 0x6]
    push word [bp + 0x4]
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x000c]
    mov ax, 3
    push ax
    call loc_08b9
    add sp, byte 0x0c
    mov word [bp - 0x0012], ax
    jmp short @..local.l70

    db 0xa1, 0xfe, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x35, 0xa1, 0x00, 0x9b, 0x89, 0x46, 0xf0, 0xeb, 0x2d
    db 0xa1, 0x02, 0x9b, 0x89, 0x46, 0xf0, 0xeb, 0x25, 0xa1, 0x04, 0x9b, 0x89, 0x46, 0xf0, 0xeb, 0x1d
    db 0x04, 0x5f, 0xc7, 0x5e, 0xcf, 0x5e, 0xd7, 0x5e, 0xdf, 0x5e, 0x04, 0x5f, 0xd7, 0x5e, 0xcf, 0x5e

@..local.l70:
    cmp ax, strict word 8
    jae short @..local.l71
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x5ee7]
@..local.l71:
    cmp word [bp - 0x0010], byte 0xff
    je short @..local.l72
    mov ax, word [bp - 0x0010]
    push ax
    mov ax, 0x24
    imul word [bp + 0x8]
    mov cx, ax
    mov dx, word [bp + 0xa]
    shl dx, 1
    add ax, dx
    mov bx, ax
    pop ax
    mov word [bx - 0x6a54], ax
@..local.l72:
    ret
math_loc_0ede:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0x24
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx - 0x6cba]
    cmp ax, word [data_9af8]
    jne short @..math_loc_0ede.l1
    mov ax, word [bx - 0x6a30]
    cmp ax, word [data_9b00]
    jne short @..math_loc_0ede.l1
    mov ax, word [bx - 0x6cb8]
    cmp ax, word [data_9af8]
    jne short @..math_loc_0ede.l1
    mov ax, word [bx - 0x6a54]
    cmp ax, word [data_9b00]
    jne short @..math_loc_0ede.l1
    mov ax, word [data_9b06]
    mov word [bx - 0x6f46], ax
@..math_loc_0ede.l1:
    mov ax, word [bx - 0x6cba]
    cmp ax, word [data_9afc]
    jne short @..math_loc_0ede.l2
    mov ax, word [bx - 0x6a30]
    cmp ax, word [data_9b04]
    jne short @..math_loc_0ede.l2
    mov ax, word [bx - 0x6cb8]
    cmp ax, word [data_9afc]
    jne short @..math_loc_0ede.l2
    mov ax, word [bx - 0x6a54]
    cmp ax, word [data_9b04]
    jne short @..math_loc_0ede.l2
    mov ax, word [data_9b08]
    mov word [bx - 0x6f46], ax
@..math_loc_0ede.l2:
    ret
math_loc_0f52:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0x55
    push ax
    mov ax, 7
    imul word [bp + 0x6]
    add ax, word [data_9b0a]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, 7
    imul word [bp + 0x4]
    add ax, word [data_9b0c]
    inc ax
    inc ax
    inc ax
    push ax
    call ds_dispatch_e8f4
    add sp, byte 6
    ret
api_idx_000a:
    mov ax, 0xfff6
    call ds_dispatch_f40b
    mov al, byte [bp + 0x8]
    mov byte [bp - 0x000a], al
    mov byte [bp - 0x0009], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    mov ax, 0
    push ax
    mov ax, 0x8f
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 7
    imul word [bp + 0x6]
    add ax, word [data_9b0a]
    add ax, word [bp + 0xc]
    push ax
    mov ax, 7
    imul word [bp + 0x4]
    add ax, word [data_9b0c]
    add ax, word [bp + 0xa]
    push ax
    mov ax, 0xf
    push ax
    call ds_dispatch_efd1
    add sp, byte 0x16
    ret
api_idx_0012:
    mov ax, 0xffee
    call ds_dispatch_f40b
    mov ax, word [bp + 0x8]
    mov word [data_9858], ax
    mov ax, 0xf
    push ax
    mov ax, 0xe
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    mov ax, 0xf
    cmp word [bp + 0x6], byte 0
    jne short @..api_idx_0012.l2
    cmp word [bp + 0x4], byte 4
    jle short @..api_idx_0012.l1
    mov ax, word [bp + 0x4]
    shl ax, 1
    add ax, strict word 0xfff9
    jmp short @..api_idx_0012.l2
@..api_idx_0012.l1:
    mov ax, word [bp + 0x4]
    shl ax, 1
    inc ax
    inc ax
    inc ax
@..api_idx_0012.l2:
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0xd
    jle short @..api_idx_0012.l3
    mov word [bp - 0x0008], 0xd
@..api_idx_0012.l3:
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0008]
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov ax, 7
    imul word [bp - 0x0006]
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    mov word [data_9b0c], ax
    mov ax, 7
    imul word [bp - 0x0008]
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x56
    sub ax, cx
    mov word [data_9b0a], ax
    cmp word [data_9858], byte 0
    je short @..api_idx_0012.l4
    mov word [bp + 0x4], 1
@..api_idx_0012.l4:
    mov ax, word [data_5b6e]
    jmp near @..local.l73
    mov ax, 0xffff
    cmp word [bp + 0x4], byte 1
    jle short @..api_idx_0012.l5
    mov ax, 0xa
@..api_idx_0012.l5:
    mov word [data_9af8], ax
    mov ax, 0xffff
    cmp word [bp + 0x4], byte 1
    jle short @..api_idx_0012.l6
    mov ax, 0xb
@..api_idx_0012.l6:
    mov word [data_9b00], ax
    mov ax, 0xc
    cmp word [bp + 0x4], byte 2
    jg short @..api_idx_0012.l7
    mov ax, 0xffff
    cmp word [bp + 0x4], byte 1
    jle short @..api_idx_0012.l7
    mov ax, 0xa
@..api_idx_0012.l7:
    mov word [data_9af6], ax
    mov ax, 0xd
    cmp word [bp + 0x4], byte 2
    jg short @..api_idx_0012.l8
    mov ax, 0xffff
    cmp word [bp + 0x4], byte 1
    jle short @..api_idx_0012.l8
    mov ax, 0xb
@..api_idx_0012.l8:
    mov word [data_9afe], ax
    mov ax, 0xe
    cmp word [bp + 0x4], byte 2
    jg short @..api_idx_0012.l9
    mov ax, 0xffff
    cmp word [bp + 0x4], byte 1
    jle short @..api_idx_0012.l9
    mov ax, 0xa
@..api_idx_0012.l9:
    mov word [data_9afa], ax
    mov ax, 0xf
    cmp word [bp + 0x4], byte 2
    jg short @..api_idx_0012.l10
    mov ax, 0xffff
    cmp word [bp + 0x4], byte 1
    jle short @..api_idx_0012.l10
    mov ax, 0xb
@..api_idx_0012.l10:
    mov word [data_9b02], ax
    mov word [data_9af0], 1
    mov word [data_9af4], 0xffff
    mov word [data_9af2], 0xffff
    mov word [data_9342], 6
    mov word [data_9b06], 6
    mov ax, 0xffff
    cmp word [bp + 0x4], byte 1
    jle short @..api_idx_0012.l11
    mov ax, 0xa
@..api_idx_0012.l11:
    mov word [data_9344], ax
    mov ax, 0xffff
    cmp word [bp + 0x4], byte 1
    jle short @..api_idx_0012.l12
    mov ax, 0xb
@..api_idx_0012.l12:
    mov word [data_95ce], ax
    jmp near @..local.l74
    mov ax, 0xffff
    cmp word [bp + 0x4], byte 1
    jle short @..api_idx_0012.l13
    mov ax, 0x10
@..api_idx_0012.l13:
    mov word [data_9af8], ax
    mov ax, 0xffff
    cmp word [bp + 0x4], byte 1
    jle short @..api_idx_0012.l14
    mov ax, 0x11
@..api_idx_0012.l14:
    mov word [data_9b00], ax
    mov ax, 0x12
    cmp word [bp + 0x4], byte 2
    jg short @..api_idx_0012.l15
    mov ax, 0xffff
    cmp word [bp + 0x4], byte 1
    jle short @..api_idx_0012.l15
    mov ax, 0x10
@..api_idx_0012.l15:
    mov word [data_9af6], ax
    mov ax, 0x13
    cmp word [bp + 0x4], byte 2
    jg short @..api_idx_0012.l16
    mov ax, 0xffff
    cmp word [bp + 0x4], byte 1
    jle short @..api_idx_0012.l16
    mov ax, 0x11
@..api_idx_0012.l16:
    mov word [data_9afe], ax
    mov ax, 0x14
    cmp word [bp + 0x4], byte 2
    jg short @..api_idx_0012.l17
    mov ax, 0xffff
    cmp word [bp + 0x4], byte 1
    jle short @..api_idx_0012.l17
    mov ax, 0x10
@..api_idx_0012.l17:
    mov word [data_9afa], ax
    mov ax, 0x15
    cmp word [bp + 0x4], byte 2
    jg short @..api_idx_0012.l18
    mov ax, 0xffff
    cmp word [bp + 0x4], byte 1
    jle short @..api_idx_0012.l18
    mov ax, 0x11
@..api_idx_0012.l18:
    mov word [data_9b02], ax
    mov word [data_9af0], 5
    mov word [data_9af4], 4
    mov word [data_9af2], 3
    mov word [data_9342], 8
    mov word [data_9b06], 7
    mov ax, 0xffff
    cmp word [bp + 0x4], byte 1
    jle short @..api_idx_0012.l19
    mov ax, 0x16
@..api_idx_0012.l19:
    mov word [data_9344], ax

    db 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x17, 0x00, 0xa3, 0xce, 0x95, 0xe9
    db 0xb4, 0x02, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x10, 0x00, 0xa3, 0xf8
    db 0x9a, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x11, 0x00, 0xa3, 0x00, 0x9b
    db 0xb8, 0x12, 0x00, 0x83, 0x7e, 0x04, 0x02, 0x7f, 0x0c, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01
    db 0x7e, 0x03, 0xb8, 0x10, 0x00, 0xa3, 0xf6, 0x9a, 0xb8, 0x13, 0x00, 0x83, 0x7e, 0x04, 0x02, 0x7f
    db 0x0c, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x11, 0x00, 0xa3, 0xfe, 0x9a
    db 0xb8, 0x14, 0x00, 0x83, 0x7e, 0x04, 0x02, 0x7f, 0x0c, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01
    db 0x7e, 0x03, 0xb8, 0x10, 0x00, 0xa3, 0xfa, 0x9a, 0xb8, 0x15, 0x00, 0x83, 0x7e, 0x04, 0x02, 0x7f
    db 0x0c, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x11, 0x00, 0xa3, 0x02, 0x9b
    db 0xc7, 0x06, 0xf0, 0x9a, 0x04, 0x00, 0xc7, 0x06, 0xf4, 0x9a, 0x03, 0x00, 0xc7, 0x06, 0xf2, 0x9a
    db 0xff, 0xff, 0xc7, 0x06, 0x42, 0x93, 0x07, 0x00, 0xc7, 0x06, 0x06, 0x9b, 0x07, 0x00, 0xb8, 0xff
    db 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x10, 0x00, 0xa3, 0x44, 0x93, 0xb8, 0xff, 0xff
    db 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x11, 0x00, 0xa3, 0xce, 0x95, 0xe9, 0xf7, 0x01, 0xb8
    db 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x18, 0x00, 0xa3, 0xf8, 0x9a, 0xb8, 0xff
    db 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x19, 0x00, 0xa3, 0x00, 0x9b, 0xb8, 0xff, 0xff
    db 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x18, 0x00, 0xa3, 0xf6, 0x9a, 0xb8, 0xff, 0xff, 0x83
    db 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x19, 0x00, 0xa3, 0xfe, 0x9a, 0xb8, 0xff, 0xff, 0x83, 0x7e
    db 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x18, 0x00, 0xa3, 0xfa, 0x9a, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04
    db 0x01, 0x7e, 0x03, 0xb8, 0x19, 0x00, 0xa3, 0x02, 0x9b, 0xc7, 0x06, 0xf0, 0x9a, 0x01, 0x00, 0xc7
    db 0x06, 0xf4, 0x9a, 0x04, 0x00, 0xc7, 0x06, 0xf2, 0x9a, 0xff, 0xff, 0xc7, 0x06, 0x42, 0x93, 0x08
    db 0x00, 0xc7, 0x06, 0x06, 0x9b, 0x09, 0x00, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03
    db 0xb8, 0x16, 0x00, 0xa3, 0x44, 0x93, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8
    db 0x17, 0x00, 0xa3, 0xce, 0x95, 0xe9, 0x5e, 0x01, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e
    db 0x03, 0xb8, 0x18, 0x00, 0xa3, 0xf8, 0x9a, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03
    db 0xb8, 0x19, 0x00, 0xa3, 0x00, 0x9b, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8
    db 0x18, 0x00, 0xa3, 0xf6, 0x9a, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x19
    db 0x00, 0xa3, 0xfe, 0x9a, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x18, 0x00
    db 0xa3, 0xfa, 0x9a, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x19, 0x00, 0xa3
    db 0x02, 0x9b, 0xc7, 0x06, 0xf0, 0x9a, 0x01, 0x00, 0xc7, 0x06, 0xf4, 0x9a, 0x04, 0x00, 0xc7, 0x06
    db 0xf2, 0x9a, 0xff, 0xff, 0xc7, 0x06, 0x42, 0x93, 0x09, 0x00, 0xc7, 0x06, 0x06, 0x9b, 0x09, 0x00
    db 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x18, 0x00, 0xa3, 0x44, 0x93, 0xb8
    db 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x19, 0x00, 0xa3, 0xce, 0x95, 0xe9, 0xc5
    db 0x00, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x10, 0x00, 0xa3, 0xf8, 0x9a
    db 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x11, 0x00, 0xa3, 0x00, 0x9b, 0xb8
    db 0x12, 0x00, 0x83, 0x7e, 0x04, 0x02, 0x7f, 0x0c, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e
    db 0x03, 0xb8, 0x10, 0x00, 0xa3, 0xf6, 0x9a, 0xb8, 0x13, 0x00, 0x83, 0x7e, 0x04, 0x02, 0x7f, 0x0c
    db 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x11, 0x00, 0xa3, 0xfe, 0x9a, 0xb8
    db 0x14, 0x00, 0x83, 0x7e, 0x04, 0x02, 0x7f, 0x0c, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e
    db 0x03, 0xb8, 0x10, 0x00, 0xa3, 0xfa, 0x9a, 0xb8, 0x15, 0x00, 0x83, 0x7e, 0x04, 0x02, 0x7f, 0x0c
    db 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x11, 0x00, 0xa3, 0x02, 0x9b, 0xc7
    db 0x06, 0xf0, 0x9a, 0x05, 0x00, 0xc7, 0x06, 0xf4, 0x9a, 0x04, 0x00, 0xc7, 0x06, 0xf2, 0x9a, 0x02
    db 0x00, 0xc7, 0x06, 0x42, 0x93, 0x07, 0x00, 0xc7, 0x06, 0x06, 0x9b, 0x07, 0x00, 0xc7, 0x06, 0x44
    db 0x93, 0xff, 0xff, 0xc7, 0x06, 0xce, 0x95, 0xff, 0xff, 0xeb, 0x1b, 0xe0, 0x64, 0xb2
    db '`oa,b'
    db 0xe9, 0x62, 0x82, 0x63, 0x1b, 0x64

@..local.l73:
    cmp ax, strict word 7
    jae short @..local.l74
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x64c5]
@..local.l74:
    mov word [data_9aea], 2
    mov word [data_9b08], 8
    mov ax, 0xffff
    cmp word [bp + 0x4], byte 1
    jle short @..local.l75
    mov ax, 0x16
@..local.l75:
    mov word [data_9afc], ax
    mov ax, 0xffff
    cmp word [bp + 0x4], byte 1
    jle short @..local.l76
    mov ax, 0x17
@..local.l76:
    mov word [data_9b04], ax
    mov ax, word [data_9af0]
    cmp word [bp + 0x4], byte 3
    jle short @..local.l77
    mov ax, 0x1a
@..local.l77:
    mov word [data_9ae2], ax
    mov ax, word [data_9af0]
    cmp word [bp + 0x4], byte 3
    jle short @..local.l78
    mov ax, 0x1b
@..local.l78:
    mov word [data_9ae4], ax
    mov ax, word [data_9af0]
    cmp word [bp + 0x4], byte 3
    jle short @..local.l79
    mov ax, 0x1c
@..local.l79:
    mov word [data_9aee], ax
    mov ax, word [data_9af0]
    cmp word [bp + 0x4], byte 3
    jle short @..local.l80
    mov ax, 0x1e
@..local.l80:
    mov word [data_9aec], ax
    mov ax, word [data_9af0]
    cmp word [bp + 0x4], byte 3
    jle short @..local.l81
    mov ax, 0x1d
@..local.l81:
    mov word [data_9ae8], ax
    mov ax, word [data_9af0]
    cmp word [bp + 0x4], byte 3
    jle short @..local.l82
    mov ax, 0x1f
@..local.l82:
    mov word [data_9ae6], ax
    mov word [bp - 0x0002], 0
    jmp short @..local.l86
@..local.l83:
    mov word [bp - 0x0004], 0
    jmp short @..local.l85
@..local.l84:
    mov ax, word [data_9af0]
    push ax
    mov ax, 0x24
    imul word [bp - 0x0002]
    mov cx, ax
    mov dx, word [bp - 0x0004]
    shl dx, 1
    add ax, dx
    mov bx, ax
    pop ax
    mov word [bx - 0x6f46], ax
    mov word [bx - 0x6cba], 0xffff
    mov word [bx - 0x6a30], 0xffff
    inc word [bp - 0x0004]
@..local.l85:
    mov ax, word [bp - 0x0008]
    inc ax
    cmp ax, word [bp - 0x0004]
    jge short @..local.l84
    inc word [bp - 0x0002]
@..local.l86:
    mov ax, word [bp - 0x0006]
    inc ax
    cmp ax, word [bp - 0x0002]
    jge short @..local.l83
    mov ax, 0
    push ax
    mov ax, 7
    imul word [bp - 0x0008]
    add ax, word [data_9b0a]
    dec ax
    push ax
    mov ax, 7
    imul word [bp - 0x0006]
    add ax, word [data_9b0c]
    dec ax
    push ax
    push word [data_9b0a]
    push word [data_9b0c]
    call ds_dispatch_e901
    add sp, byte 0x0a
    mov word [bp - 0x0004], 1
    jmp short @..local.l93
@..local.l87:
    mov word [bp - 0x0002], 1
    jmp short @..local.l92
@..local.l88:
    cmp word [data_9858], byte 0
    jne short @..local.l89
    cmp word [bp + 0x6], byte 0
    jne short @..local.l90
    cmp word [bp + 0x4], byte 4
    jle short @..local.l90
@..local.l89:
    mov ax, 1
    jmp short @..local.l91
@..local.l90:
    mov ax, 0
@..local.l91:
    push ax
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    mov ax, word [data_8f44]
    mov cx, word [bp - 0x0004]
    dec cx
    sub ax, cx
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [data_8f46]
    add ax, word [bp - 0x0002]
    dec ax
    sub ax, word [bp - 0x000a]
    push ax
    call api_idx_0014
    add sp, byte 0x0a
    inc word [bp - 0x0002]
@..local.l92:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x0006]
    jle short @..local.l88
    inc word [bp - 0x0004]
@..local.l93:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0008]
    jle short @..local.l87
    cmp word [bp + 0x4], byte 1
    jle short @..local.l98
    mov word [bp - 0x0004], 1
    jmp short @..local.l97
@..local.l94:
    mov word [bp - 0x0002], 1
    jmp short @..local.l96
@..local.l95:
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    call math_loc_0ede
    add sp, byte 4
    inc word [bp - 0x0002]
@..local.l96:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x0006]
    jle short @..local.l95
    inc word [bp - 0x0004]
@..local.l97:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0008]
    jle short @..local.l94
@..local.l98:
    mov word [bp - 0x0004], 1
    jmp short @..local.l103
@..local.l99:
    mov word [bp - 0x0002], 1
    jmp short @..local.l102
@..local.l100:
    mov ax, 0x24
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx - 0x6f46], byte 0xff
    je short @..local.l101
    mov ax, 0
    push ax
    push ax
    push word [bx - 0x6f46]
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    mov ax, word [bp - 0x0002]
    dec ax
    push ax
    call api_idx_000a
    add sp, byte 0x0a
@..local.l101:
    inc word [bp - 0x0002]
@..local.l102:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x0006]
    jle short @..local.l100
    inc word [bp - 0x0004]
@..local.l103:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0008]
    jle short @..local.l99
    mov word [bp - 0x0004], 0
    jmp short @..local.l109
@..local.l104:
    mov word [bp - 0x0002], 0
    jmp short @..local.l108
@..local.l105:
    mov ax, 0x24
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx - 0x6cba], byte 0xff
    je short @..local.l106
    mov ax, 0xffff
    push ax
    push ax
    push word [bx - 0x6cba]
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    mov ax, word [bp - 0x0002]
    dec ax
    push ax
    call api_idx_000a
    add sp, byte 0x0a
@..local.l106:
    mov ax, 0x24
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx - 0x6a30], byte 0xff
    je short @..local.l107
    mov ax, 0xffff
    push ax
    push ax
    push word [bx - 0x6a30]
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    mov ax, word [bp - 0x0002]
    dec ax
    push ax
    call api_idx_000a
    add sp, byte 0x0a
@..local.l107:
    inc word [bp - 0x0002]
@..local.l108:
    mov ax, word [bp - 0x0006]
    inc ax
    cmp ax, word [bp - 0x0002]
    jge short @..local.l105
    inc word [bp - 0x0004]
@..local.l109:
    mov ax, word [bp - 0x0008]
    inc ax
    cmp ax, word [bp - 0x0004]
    jge short @..local.l104
    cmp word [data_9858], byte 0
    je short @..local.l115
    mov word [bp - 0x0004], 0
    jmp short @..local.l114
@..local.l110:
    mov word [bp - 0x0002], 0
    jmp short @..local.l113
@..local.l111:
    mov ax, 0x24
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx - 0x67a6], byte 1
    jne short @..local.l112
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    mov ax, word [bp - 0x0002]
    dec ax
    push ax
    call math_loc_0f52
    add sp, byte 4
@..local.l112:
    inc word [bp - 0x0002]
@..local.l113:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x0006]
    jle short @..local.l111
    inc word [bp - 0x0004]
@..local.l114:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0008]
    jle short @..local.l110
@..local.l115:
    mov ax, 7
    imul word [bp - 0x0008]
    add ax, word [data_9b0a]
    dec ax
    push ax
    mov ax, 7
    imul word [bp - 0x0006]
    add ax, word [data_9b0c]
    dec ax
    push ax
    push word [data_9b0a]
    push word [data_9b0c]
    call 0xbbbc
    add sp, byte 8
    mov ax, 0x8d
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    call ds_dispatch_ec17
    mov ax, word [bp - 0x0008]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 7
    imul cx
    add ax, word [data_9b0a]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 7
    imul cx
    add ax, word [data_9b0c]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0008]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 7
    imul cx
    add ax, word [data_9b0a]
    push ax
    mov ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 7
    imul cx
    add ax, word [data_9b0c]
    push ax
    call ds_dispatch_e928
    add sp, byte 8
    mov word [bp - 0x0010], dx
    mov word [bp - 0x0012], ax
@..local.l116:
    call ds_dispatch_baef
    test ax, ax
    je short @..local.l117
    jmp near @..local.l118
@..local.l117:
    mov ax, 0
    push ax
    push ax
    mov ax, word [data_82ee]
    add ax, strict word 0x20
    push ax
    mov ax, word [bp - 0x0008]
    mov cx, 2
    cwd
    idiv cx
    push ax
    mov ax, word [bp - 0x0006]
    cwd
    idiv cx
    push ax
    call api_idx_000a
    add sp, byte 0x0a
    mov ax, word [bp - 0x0008]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 7
    imul cx
    add ax, word [data_9b0a]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 7
    imul cx
    add ax, word [data_9b0c]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0008]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 7
    imul cx
    add ax, word [data_9b0a]
    push ax
    mov ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 7
    imul cx
    add ax, word [data_9b0c]
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0x12c
    push ax
    call ds_dispatch_e489
    pop cx
    mov ax, 0
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x0012]
    call ds_dispatch_e94f
    add sp, byte 6
    mov ax, word [bp - 0x0008]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 7
    imul cx
    add ax, word [data_9b0a]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 7
    imul cx
    add ax, word [data_9b0c]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0008]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 7
    imul cx
    add ax, word [data_9b0a]
    push ax
    mov ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 7
    imul cx
    add ax, word [data_9b0c]
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0x12c
    push ax
    call ds_dispatch_e489
    pop cx
    jmp near @..local.l116
@..local.l118:
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x0012]
    call ds_dispatch_e94f
    add sp, byte 6
    mov ax, 0xf
    push ax
    call ds_dispatch_c12a
    pop cx
    ret
api_idx_000a_2:
    mov ax, 0xfff6
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    push word [data_8d10]
    push word [data_8d0e]
    call ds_dispatch_e94f
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
    call ds_dispatch_efd1
    add sp, byte 0x16
    ret
api_idx_0002_4:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 2
    push ax
    push word [bp + 0x4]
    call ds_dispatch_e883
    add sp, byte 4
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    mov word [bp - 0x0002], ax
    mov ax, 0x9e
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 2
    push ax
    push word [bp + 0x4]
    call ds_dispatch_e84e
    add sp, byte 4
    push word [bp + 0x6]
    call ds_dispatch_fa90
    pop cx
    cmp ax, strict word 0
    jg short @..api_idx_0002_4.l1
    jmp near @..api_idx_0002_4.l2
@..api_idx_0002_4.l1:
    mov ax, 2
    push ax
    push word [bp + 0x6]
    call ds_dispatch_e883
    add sp, byte 4
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    mov word [bp - 0x0002], ax
    mov ax, 0xaa
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 2
    push ax
    push word [bp + 0x6]
    call ds_dispatch_e84e
    add sp, byte 4
    push word [bp + 0x8]
    call ds_dispatch_fa90
    pop cx
    cmp ax, strict word 0
    jle short @..api_idx_0002_4.l2
    mov ax, 2
    push ax
    push word [bp + 0x8]
    call ds_dispatch_e883
    add sp, byte 4
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    mov word [bp - 0x0002], ax
    mov ax, 0xb6
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 2
    push ax
    push word [bp + 0x8]
    call ds_dispatch_e84e
    add sp, byte 4
@..api_idx_0002_4.l2:
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x37
    push ax
    call ds_dispatch_bb33
    add sp, byte 8
    mov ax, word [data_905a]
    cmp byte [data_598c], 0
    je short @..api_idx_0002_4.l3
    shl ax, 1
@..api_idx_0002_4.l3:
    push ax
    call api_idx_0004_2
    pop cx
    call api_idx_000a_2
    ret
api_idx_00fa:
    mov ax, 0xff06
    call ds_dispatch_f40b
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0008], 0
    mov ax, word [bp + 0x4]
    jmp short loc_1ab5
    add word [bp - 0x0008], byte 0x19
    add word [bp - 0x0008], byte 0x19
    add word [bp - 0x0006], byte 0x19
    add word [bp - 0x0008], byte 0x19
    add word [bp - 0x0006], byte 0x19
    add word [bp - 0x0008], byte 0x19
    add word [bp - 0x0004], byte 0x19
    add word [bp - 0x0006], byte 0x19
    add word [bp - 0x0004], byte 0x19
    add word [bp - 0x0006], byte 0x19
    add word [bp - 0x0004], byte 0x32
    jmp short @..api_idx_00fa.l2
    or word [bp + di - 0x001a], bp
    db 0x6a, 0xde ; push 0xffde
    db 0x6a, 0xd6 ; push 0xffd6
    db 0x6a, 0xce ; push 0xffce
    db 0x6a, 0xc6 ; push 0xffc6
    db 0x6a, 0xc2 ; push 0xffc2
    db 0x6a, 0xbe ; push 0xffbe
    db 0x6a, 0x3d
    or byte [bx + si], al
    jae short @..api_idx_00fa.l2
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6aec]
@..api_idx_00fa.l2:
    mov ax, 2
    push ax
    call ds_dispatch_c12a
    pop cx
    mov ax, 0xe
    push ax
    mov ax, 0
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x37
    push ax
    call ds_dispatch_e928
    add sp, byte 8
    mov word [data_8d10], dx
    mov word [data_8d0e], ax
    call api_idx_000a_2
    mov word [bp - 0x000a], 0
    mov word [bp - 0x0002], 0
@..api_idx_00fa.l3:
    mov ax, 0x26
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx - 0x7b14], 0x19
    jb short @..api_idx_00fa.l4
    jmp near @..api_idx_00fa.l11
@..api_idx_00fa.l4:
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    cmp ax, word [bp - 0x0008]
    jl short @..api_idx_00fa.l7
    mov ax, 0x26
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x7b14]
    sub ah, ah
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x7687]
    cbw
    cmp ax, word [data_830c]
    jne short @..api_idx_00fa.l5
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    cmp ax, word [bp - 0x0006]
    jl short @..api_idx_00fa.l7
@..api_idx_00fa.l5:
    mov ax, 0x26
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x7b13]
    sub ah, ah
    cmp ax, word [data_8f3e]
    je short @..api_idx_00fa.l6
    jmp near @..api_idx_00fa.l11
@..api_idx_00fa.l6:
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    cmp ax, word [bp - 0x0004]
    jl short @..api_idx_00fa.l7
    jmp near @..api_idx_00fa.l11
@..api_idx_00fa.l7:
    mov word [bp - 0x000a], 1
    lea ax, word [bp - 0x005a]
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0x6a4
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov byte [bp - 0x00aa], 0
    mov byte [bp - 0x00fa], 0
    mov ax, 0x26
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx - 0x7b00], 0
    je short @..api_idx_00fa.l8
    cmp word [bp - 0x0002], byte 4
    jne short @..api_idx_00fa.l9
    mov ax, 0x40
    push ax
    mov ax, 0x8e64
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_00fa.l9
@..api_idx_00fa.l8:
    lea ax, word [bp - 0x00aa]
    push ax
    mov ax, 0x1e7
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    jmp short @..api_idx_00fa.l10
@..api_idx_00fa.l9:
    lea ax, word [bp - 0x00aa]
    push ax
    mov ax, 0x1e5
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x00fa]
    push ax
    mov ax, 0x26
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x7b14]
    sub ah, ah
    add ax, 0x6ea
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
@..api_idx_00fa.l10:
    lea ax, word [bp - 0x00fa]
    push ax
    lea ax, word [bp - 0x00aa]
    push ax
    lea ax, word [bp - 0x005a]
    push ax
    call api_idx_0002_4
    add sp, byte 6
@..api_idx_00fa.l11:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x14
    jge short @..api_idx_00fa.l12
    jmp near @..api_idx_00fa.l3
@..api_idx_00fa.l12:
    cmp word [bp - 0x000a], byte 0
    jne short @..api_idx_00fa.l13
    lea ax, word [bp - 0x005a]
    push ax
    mov ax, 0x1e6
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0x9099
    push ax
    mov ax, 0x9098
    push ax
    lea ax, word [bp - 0x005a]
    push ax
    call api_idx_0002_4
    add sp, byte 6
@..api_idx_00fa.l13:
    mov ax, 1
    push ax
    push word [data_8d10]
    push word [data_8d0e]
    call ds_dispatch_e94f
    add sp, byte 6
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x37
    push ax
    call ds_dispatch_bb33
    add sp, byte 8
    mov ax, 0xe
    push ax
    call ds_dispatch_c12a
    pop cx
    mov ax, 2
    push ax
    mov ax, 3
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    ret
math_loc_1c7f:
    mov ax, 0
    call ds_dispatch_f40b
    cmp word [bp + 0x8], byte 1
    jne short @..math_loc_1c7f.l3
    cmp word [bp + 0x6], byte 0
    jle short @..math_loc_1c7f.l1
    mov ax, word [bp + 0x4]
    sub word [bp + 0x6], ax
    jmp short @..math_loc_1c7f.l2
@..math_loc_1c7f.l1:
    mov ax, 0
    sub ax, word [bp + 0x4]
    cmp ax, word [bp + 0x6]
    jge short @..math_loc_1c7f.l2
    mov word [bp + 0x6], ax
@..math_loc_1c7f.l2:
    jmp short @..math_loc_1c7f.l5
@..math_loc_1c7f.l3:
    cmp word [bp + 0x8], byte 0
    jne short @..math_loc_1c7f.l5
    cmp word [bp + 0x6], byte 0
    jge short @..math_loc_1c7f.l4
    mov ax, word [bp + 0x4]
    add word [bp + 0x6], ax
    jmp short @..math_loc_1c7f.l5
@..math_loc_1c7f.l4:
    mov ax, word [bp + 0x6]
    cmp ax, word [bp + 0x4]
    jge short @..math_loc_1c7f.l5
    mov ax, word [bp + 0x4]
    mov word [bp + 0x6], ax
@..math_loc_1c7f.l5:
    mov ax, word [bp + 0x6]
    ret
api_idx_0008:
    mov ax, 0xfff8
    call ds_dispatch_f40b
    mov ax, word [bp + 0x6]
    jmp near @..local.l119
    mov ax, 0x32
    imul word [bp + 0x8]
    add word [data_82fe], ax
    mov ax, 0
    push ax
    push word [data_8300]
    mov ax, 5
    imul word [bp + 0x8]
    add ax, strict word 0x46
    push ax
    call math_loc_1c7f
    add sp, byte 6
    mov word [data_8300], ax
    jmp near loc_238c
    mov ax, 0x23
    imul word [bp + 0x8]
    add word [data_82f2], ax
    mov ax, 0
    push ax
    push word [data_82f4]
    mov ax, word [bp + 0x8]
    dec ax
    mov cx, 2
    cwd
    idiv cx
    inc ax
    push ax
    call math_loc_1c7f
    add sp, byte 6
    mov word [data_82f4], ax
    jmp near loc_238c
    mov ax, 0x32
    imul word [bp + 0x8]
    add word [data_82f6], ax
    mov ax, 0
    push ax
    push word [data_82f8]
    mov ax, word [bp + 0x8]
    dec ax
    mov cx, 2
    cwd
    idiv cx
    inc ax
    push ax
    call math_loc_1c7f
    add sp, byte 6
    mov word [data_82f8], ax
    jmp near loc_238c
    mov ax, 5
    imul word [bp + 0x8]
    add word [data_8306], ax
    jmp near loc_238c
    mov ax, 0x64
    imul word [bp + 0x8]
    add word [data_8302], ax
    jmp near loc_238c
    mov ax, 0x32
    imul word [bp + 0x8]
    add word [data_82fa], ax
    mov ax, 0
    push ax
    push word [data_82fc]
    mov ax, 5
    imul word [bp + 0x8]
    push ax
    call math_loc_1c7f
    add sp, byte 6
    mov word [data_82fc], ax
    jmp near loc_238c
    mov ax, 0
    cmp word [bp + 0x6], byte 0x13
    je short @..api_idx_0008.l1
    mov ax, word [bp + 0xa]
@..api_idx_0008.l1:
    mov word [bp - 0x0002], ax
    mov ax, word [data_69c8]
    cmp word [bp + 0x6], byte 0x13
    je short @..api_idx_0008.l2
    mov ax, word [bp + 0xa]
    inc ax
@..api_idx_0008.l2:
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x8]
    cmp word [bp + 0x6], byte 0x13
    je short @..api_idx_0008.l3
    shl ax, 1
@..api_idx_0008.l3:
    mov word [bp - 0x0006], ax
    mov ax, 0
    cmp word [bp + 0x6], byte 0x13
    je short @..api_idx_0008.l4
    mov ax, word [bp + 0x8]
@..api_idx_0008.l4:
    mov word [bp - 0x0008], ax
    jmp short @..api_idx_0008.l6
@..api_idx_0008.l5:
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
    call ds_dispatch_d0ea
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
    call ds_dispatch_d0be
    add sp, byte 4
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    pop ax
    add ax, word [bx + 0x5c10]
    push ax
    call ds_dispatch_b7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    pop ax
    mov word [bx + 0x5c10], ax
    inc word [bp - 0x0002]
@..api_idx_0008.l6:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x0004]
    jl short @..api_idx_0008.l5
    jmp near loc_238c
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
    jge short @..api_idx_0008.l7
    mov word [bp - 0x0002], 0
@..api_idx_0008.l7:
    mov al, byte [bp - 0x0002]
    mov byte [bx + 0x5d5d], al
    jmp near loc_238c
    mov ax, 0x248
    imul word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + 0x5e32]
    sub ah, ah
    sub ax, word [bp + 0x8]
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0
    jg short @..api_idx_0008.l8
    mov word [bp - 0x0002], 0
    mov byte [bx + 0x5d5f], 0
@..api_idx_0008.l8:
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
    jg short @..api_idx_0008.l9
    mov word [bp - 0x0002], 0
    mov byte [bx + 0x5e32], 0
@..api_idx_0008.l9:
    mov al, byte [bp - 0x0002]
    mov byte [bx + 0x5d5f], al
    jmp near loc_238c
    mov ax, 0x248
    imul word [bp + 0xa]
    mov bx, ax

    db 0x80, 0xbf, 0x2f, 0x5e, 0x02, 0x75, 0x73, 0xb8, 0x03, 0x00, 0xf7, 0x6e, 0x08, 0x50, 0x8a, 0x87
    db 0x67, 0x5d, 0x2a, 0xe4, 0x8b, 0xd0, 0xb9, 0x15, 0x00, 0x2b, 0xc8, 0x58, 0x3b, 0xc1, 0x7e, 0x5a
    db 0xfe, 0x8f, 0x67, 0x5d, 0xb8, 0xb7, 0x00, 0x50, 0xe8, 0xb1, 0x98, 0x59, 0x05, 0xb7, 0x00, 0x99
    db 0x50, 0x52, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x5a, 0x58, 0x01, 0x87, 0xfc, 0x5b
    db 0x11, 0x97, 0xfe, 0x5b, 0xb8, 0x12, 0x00, 0x50, 0xe8, 0x91, 0x98, 0x59, 0x50, 0xb8, 0x48, 0x02
    db 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x67, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x3b, 0xc1
    db 0x7e, 0x13, 0xc6, 0x87, 0x2f, 0x5e, 0x03, 0xc7, 0x87, 0x0c, 0x5c, 0x00, 0x00, 0xc7, 0x87, 0x10
    db 0x5c, 0x00, 0x00, 0xeb, 0x05, 0xc6, 0x87, 0x2f, 0x5e, 0x00, 0xe9, 0x42, 0x04, 0xb8, 0x48, 0x02
    db 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x61, 0x5d, 0x2a, 0xe4, 0x50, 0xb8, 0x19, 0x00, 0xf7
    db 0x6e, 0x08, 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfe, 0x3d, 0x00, 0x00, 0x7d, 0x05, 0xc7
    db 0x46, 0xfe, 0x00, 0x00, 0x8a, 0x46, 0xfe, 0x88, 0x87, 0x61, 0x5d, 0xe9, 0x11, 0x04, 0xb8, 0x03
    db 0x00, 0xf7, 0x6e, 0x08, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x67
    db 0x5d, 0x2a, 0xe4, 0x8b, 0xd0, 0xb9, 0x12, 0x00, 0x2b, 0xc8, 0x58, 0x3b, 0xc1, 0x7e, 0x05, 0xc6
    db 0x87, 0x60, 0x5d, 0x00, 0xe9, 0xe8, 0x03, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xeb, 0x35, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x5c, 0x5d, 0x2a, 0xe4, 0x50, 0x8b, 0x46, 0x08
    db 0xf7, 0xe8, 0x8b, 0xc8, 0x05, 0x04, 0x00, 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfc, 0x3d
    db 0x00, 0x00, 0x7d, 0x05, 0xc7, 0x46, 0xfc, 0x00, 0x00, 0x8a, 0x46, 0xfc, 0x88, 0x87, 0x5c, 0x5d
    db 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3b, 0x06, 0xc8, 0x69, 0x7c, 0xc2, 0xe9, 0xa0, 0x03, 0xc7
    db 0x46, 0xfc, 0x01, 0x00, 0x8b, 0x46, 0xfc, 0x3d, 0x01, 0x00, 0x74, 0x14, 0x3d, 0x02, 0x00, 0x74
    db 0x0f, 0x3d, 0x04, 0x00, 0x74, 0x0a, 0x3d, 0x08, 0x00, 0x74, 0x05, 0x3d, 0x09, 0x00, 0x75, 0x39
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xc8, 0x8b, 0x46, 0xfc, 0x03, 0xc8, 0x8b, 0xd9, 0x8a
    db 0x87, 0x5a, 0x5d, 0x2a, 0xe4, 0x50, 0x8b, 0x46, 0x08, 0xf7, 0xe8, 0x8b, 0xc8, 0x05, 0x04, 0x00
    db 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfe, 0x3d, 0x00, 0x00, 0x7d, 0x05, 0xc7, 0x46, 0xfe
    db 0x00, 0x00, 0x8a, 0x46, 0xfe, 0x88, 0x87, 0x5a, 0x5d, 0xff, 0x46, 0xfc, 0x8b, 0x46, 0xfc, 0x3d
    db 0x09, 0x00, 0x7e, 0xa0, 0xe9, 0x38, 0x03, 0xb8, 0x00, 0x00, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x03
    db 0x8b, 0x46, 0x0a, 0x89, 0x46, 0xfe, 0xa1, 0xc8, 0x69, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x04, 0x8b
    db 0x46, 0x0a, 0x40, 0x89, 0x46, 0xfc, 0xb8, 0x04, 0x00, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x03, 0xb8
    db 0x07, 0x00, 0x89, 0x46, 0xfa, 0xb8, 0x00, 0x00, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x03, 0x8b, 0x46
    db 0x08, 0x89, 0x46, 0xf8, 0xeb, 0x66, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0xff, 0xb7
    db 0x0e, 0x5c, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf8, 0xff, 0x76, 0xfa, 0xff, 0x76, 0x08, 0xe8
    db 0x3b, 0xb0, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4, 0x8c, 0xd2, 0x8e, 0xc2
    db 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0xf8, 0xaf, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x48, 0x02
    db 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x58, 0x03, 0x87, 0x0c, 0x5c, 0x50, 0xe8, 0xe7, 0x96, 0x83, 0xc4
    db 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x58, 0x89, 0x87, 0x0c, 0x5c, 0x83
    db 0x87, 0xfc, 0x5b, 0x01, 0x83, 0x97, 0xfe, 0x5b, 0x00, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3b
    db 0x46, 0xfc, 0x7c, 0x92, 0xe9, 0x88, 0x02, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x80
    db 0xbf, 0x2f, 0x5e, 0x03, 0x74, 0x03, 0xe9, 0x7b, 0x00, 0xb8, 0x03, 0x00, 0xf7, 0x6e, 0x08, 0x50
    db 0x8a, 0x87, 0x67, 0x5d, 0x2a, 0xe4, 0x8b, 0xd0, 0xb9, 0x15, 0x00, 0x2b, 0xc8, 0x58, 0x3b, 0xc1
    db 0x7e, 0x62, 0xfe, 0x8f, 0x67, 0x5d, 0xc6, 0x87, 0x2f, 0x5e, 0x00, 0xff, 0xb7, 0x0e, 0x5c, 0xb8
    db 0x01, 0x00, 0x50, 0x8b, 0x87, 0x0e, 0x5c, 0xb9, 0x03, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0x74
    db 0x96, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x58, 0x89, 0x87
    db 0x0c, 0x5c, 0x8b, 0x87, 0x12, 0x5c, 0xb9, 0x0a, 0x00, 0x99, 0xf7, 0xf9, 0x89, 0x87, 0x10, 0x5c
    db 0xff, 0x87, 0x1a, 0x5c, 0xb8, 0xb7, 0x00, 0x50, 0xe8, 0x31, 0x96, 0x59, 0x05, 0x6d, 0x01, 0x99
    db 0x50, 0x52, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x5a, 0x58, 0x01, 0x87, 0xfc, 0x5b
    db 0x11, 0x97, 0xfe, 0x5b, 0xe9, 0xf8, 0x01, 0xff, 0x76, 0x08, 0xe8, 0x4e, 0xe5, 0x59, 0x3d, 0xff
    db 0xff, 0x75, 0x00, 0xe9, 0xe9, 0x01, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xff, 0x76, 0x08, 0xe8, 0x25
    db 0xee, 0x83, 0xc4, 0x06, 0xe9, 0xd8, 0x01, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff
    db 0x76, 0x08, 0xe8, 0x11, 0xee, 0x83, 0xc4, 0x06, 0xe9, 0xc4, 0x01, 0xff, 0x76, 0x08, 0xb8, 0x08
    db 0x00, 0x50, 0xff, 0x76, 0x08, 0xe8, 0x15, 0xaf, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04
    db 0x8b, 0xc4, 0x8c, 0xd2, 0x8e, 0xc2, 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0xd2, 0xae, 0x83
    db 0xc4, 0x04, 0x89, 0x46, 0xfe, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x01
    db 0x87, 0x10, 0x5c, 0x8b, 0x87, 0x10, 0x5c, 0x3b, 0x87, 0x12, 0x5c, 0x7e, 0x08, 0x8b, 0x87, 0x12
    db 0x5c, 0x89, 0x87, 0x10, 0x5c, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xff, 0x76, 0x08
    db 0xe8, 0xca, 0xae, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4, 0x8c, 0xd2, 0x8e
    db 0xc2, 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0x87, 0xae, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xfe
    db 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x01, 0x87, 0x0c, 0x5c, 0x8b, 0x87
    db 0x0c, 0x5c, 0x3b, 0x87, 0x0e, 0x5c, 0x7e, 0x08, 0x8b, 0x87, 0x0e, 0x5c, 0x89, 0x87, 0x0c, 0x5c
    db 0xe9, 0x2c, 0x01, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50
    db 0xff, 0x76, 0x08, 0xe8, 0x77, 0xae, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4
    db 0x8c, 0xd2, 0x8e, 0xc2, 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0x34, 0xae, 0x83, 0xc4, 0x04
    db 0x89, 0x46, 0xfc, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8b, 0x56, 0xfe, 0xd1
    db 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x58, 0x01, 0x87, 0x1c, 0x5c, 0x8b, 0x87, 0x1c, 0x5c
    db 0x3b, 0x87, 0x1e, 0x5c, 0x7e, 0x08, 0x8b, 0x87, 0x1e, 0x5c, 0x89, 0x87, 0x1c, 0x5c, 0xff, 0x46
    db 0xfe, 0x8b, 0x46, 0xfe, 0x3d, 0x06, 0x00, 0x7c, 0x9f, 0xe9, 0xc3, 0x00, 0xc7, 0x46, 0xfe, 0x01
    db 0x00, 0xc7, 0x46, 0xfa, 0x0a, 0x00, 0xc7, 0x46, 0xf8, 0x00, 0x00, 0xb8, 0x48, 0x02, 0xf7, 0x6e
    db 0x04, 0x8b, 0xd8, 0x8a, 0x87, 0x86, 0x5d, 0x2a, 0xe4, 0x3b, 0x46, 0xfa, 0x7c, 0x03, 0xff, 0x46
    db 0xfe, 0x8b, 0x46, 0xfa, 0xd1, 0xe0, 0x05, 0x0a, 0x00, 0x89, 0x46, 0xfa, 0xff, 0x46, 0xf8, 0x8b
    db 0x46, 0xf8, 0x3d, 0x03, 0x00, 0x7c, 0xd4, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff
    db 0x76, 0xfe, 0xe8, 0xc1, 0xec, 0x83, 0xc4, 0x06, 0xeb, 0x75, 0xff, 0x76, 0x08, 0xe8, 0x40, 0xf7
    db 0x59, 0xeb, 0x6c

@..local.l119:
    mov cx, 0x1a
    call leaf_loc_4717

    db 0x0c, 0x00, 0x11, 0x00, 0x13, 0x00, 0x19, 0x00, 0x21, 0x00, 0x25, 0x00, 0x2e, 0x00, 0x2f, 0x00
    db 0x31, 0x00, 0x38, 0x00, 0x3d, 0x00, 0x3f, 0x00, 0x42, 0x00, 0x45, 0x00, 0x48, 0x00, 0x4b, 0x00
    db 0x4d, 0x00, 0x4e, 0x00, 0x52, 0x00, 0x54, 0x00, 0x58, 0x00, 0x5e, 0x00, 0x61, 0x00, 0x62, 0x00
    db 0x63, 0x00, 0xdd, 0x6d, 0x83, 0x6e, 0xdd, 0x6d, 0xc2, 0x6f, 0xb4, 0x6e, 0x9e, 0x6d, 0xab, 0x6d
    db 0xdb, 0x71, 0x74, 0x6d, 0x0c
    db 'o3p"m'
    db 0xeb, 0x6f, 0x91, 0x6f, 0xea, 0x71, 0xfb, 0x71, 0x5e, 0x73, 0x9b, 0x70, 0x4a, 0x6d, 0xb8, 0x6d
    db 0x9b, 0x70, 0x4b, 0x71, 0x0f, 0x72, 0xa7, 0x72, 0x10, 0x73, 0xd3, 0x73

    db 0xc3
api_idx_000c:
    mov ax, 0xfff4
    call ds_dispatch_f40b
    mov bx, word [data_0e12]
    mov si, word [data_8f3e]
    mov al, byte [bx + si + 0xb40]
    sub ah, ah
    mov word [bp - 0x0008], ax
@..api_idx_000c.l1:
    push word [bp - 0x0008]
    push word [data_8f3e]
    push word [data_8f40]
    push word [data_8f42]
    call api_idx_0002
    add sp, byte 8
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_000c.l2
    jmp near @..local.l125
@..api_idx_000c.l2:
    mov bx, word [data_0e12]
    mov si, ax
    cmp byte [bx + si + 0x5a0], 0x13
    je short @..api_idx_000c.l3
    jmp near @..local.l121
@..api_idx_000c.l3:
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp + 0x8]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c34]
    shl si, 1
    mov bx, word [data_0e12]
    mov cx, word [bx + si]
    cmp ax, cx
    je short @..api_idx_000c.l4
    jmp near @..local.l121
@..api_idx_000c.l4:
    cmp word [bx + si + 0x1e0], byte 0
    je short @..api_idx_000c.l5
    mov ax, 1
    mov cx, word [data_82ee]
    shl ax, cl
    test word [bx + si + 0x1e0], ax
    jne short @..api_idx_000c.l5
    jmp near @..local.l121
@..api_idx_000c.l5:
    mov ax, 8
    push ax
    mov ax, 0
    push ax
    push word [bx + si + 0x3c0]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x000a], ax
    mov ax, 0
    push ax
    push word [bp - 0x000a]
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    mov ax, 8
    push ax
    push ax
    mov ax, word [bp - 0x0008]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    push word [bx + si + 0x3c0]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x000a], ax
    test ax, ax
    je short @..api_idx_000c.l6
    mov ax, 1
    push ax
    push word [bp - 0x000a]
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..api_idx_000c.l6:
    mov bx, word [data_0e12]
    mov si, word [bp - 0x0008]
    cmp byte [bx + si + 0xa50], 0
    jbe short @..api_idx_000c.l9
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov bx, word [data_0e12]
    mov si, word [bp - 0x0008]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    mov word [bp - 0x000c], ax
    cmp ax, strict word 5
    jl short @..api_idx_000c.l7
    cmp ax, strict word 8
    je short @..api_idx_000c.l7
    cmp ax, strict word 9
    jne short @..api_idx_000c.l8
@..api_idx_000c.l7:
    push ax
    call ds_dispatch_b7e0
    pop cx
    jmp short @..api_idx_000c.l9
@..api_idx_000c.l8:
    push word [bp - 0x000c]
    call ds_dispatch_d7aa
    pop cx
    mov ax, 0x10
    push ax
    call ds_dispatch_b7e0
    pop cx
    mov ax, 0x10
    push ax
    call ds_dispatch_d6c6
    pop cx
    mov word [data_598e], 0xffff
@..api_idx_000c.l9:
    mov ax, word [bp - 0x0008]
    inc ax
    mov word [data_8d12], ax
    mov ax, 1
    ret
@..local.l121:
    mov bx, word [data_0e12]
    mov si, word [bp - 0x0008]
    cmp byte [bx + si + 0x5a0], 7
    je short @..local.l122
    jmp near @..local.l124
@..local.l122:
    mov ax, 2
    push ax
    mov ax, word [data_82ee]
    shl ax, 1
    push ax
    shl si, 1
    push word [bx + si + 0x3c0]
    call ds_dispatch_ed3a
    add sp, byte 6
    cmp ax, strict word 1
    je short @..local.l123
    mov ax, 2
    push ax
    mov ax, word [data_82ee]
    shl ax, 1
    push ax
    mov ax, word [bp - 0x0008]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    push word [bx + si + 0x3c0]
    call ds_dispatch_ed3a
    add sp, byte 6
    cmp ax, strict word 2
    jne short @..local.l124
@..local.l123:
    mov ax, word [bp - 0x0008]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x1e0]
    mov word [bp - 0x0006], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp + 0x8]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov cx, word [bx + 0x5c34]
    mov ax, word [bp - 0x0006]
    cmp cx, ax
    jne short @..local.l124
    push word [bp - 0x0008]
    call loc_04b7
    pop cx
    mov word [data_90b6], 0x841
    mov word [data_90b8], 0
    mov ax, 1
    ret
@..local.l124:
    inc word [bp - 0x0008]
    jmp near @..api_idx_000c.l1
@..local.l125:
    mov ax, 0
    ret
api_idx_000c_2:
    mov ax, 0xfff4
    call ds_dispatch_f40b
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
    call ds_dispatch_efd1
    add sp, byte 0x16
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_000c_2.l1
    ret
api_idx_0002_5:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov word [bp - 0x0002], 0
@..api_idx_0002_5.l1:
    cmp word [bp + 0x4], byte 0
    jl short @..api_idx_0002_5.l2
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x4]
    jne short @..api_idx_0002_5.l3
@..api_idx_0002_5.l2:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    inc word [bx - 0x7cf2]
@..api_idx_0002_5.l3:
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
    jne short @..api_idx_0002_5.l4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x7cf2], 0
@..api_idx_0002_5.l4:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_0002_5.l1
    ret
api_idx_0004_4:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
@..api_idx_0004_4.l1:
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x620]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jne short @..api_idx_0004_4.l2
    push word [bp - 0x0002]
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0004_4.l2
    mov ax, 0x14
    imul word [bp - 0x0004]
    add ax, 0xe38
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xfa0
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x64f2], ax
    inc word [bp - 0x0004]
@..api_idx_0004_4.l2:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x66
    jl short @..api_idx_0004_4.l1
    mov ax, word [bp - 0x0004]
    ret
api_idx_000a_3:
    mov ax, 0xfff6
    call ds_dispatch_f40b
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
    call ds_dispatch_efd1
    add sp, byte 0x16
    ret
math_loc_2731:
    mov ax, 0
    call ds_dispatch_f40b
    push word [bp + 0x6]
    mov ax, 0xa
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    dec ax
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 7
    push ax
    mov ax, 0
    cmp word [bp + 0xa], byte 0
    je short @..math_loc_2731.l1
    mov ax, 1
@..math_loc_2731.l1:
    add ax, strict word 0x10
    sub ah, ah
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    push word [bp + 0x6]
    mov ax, 0xa
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, word [bp + 0x8]
    inc ax
    sub ah, ah
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    cmp word [bp + 0x8], byte 0
    jne short @..math_loc_2731.l2
    cmp word [bp + 0xa], byte 0
    jne short @..math_loc_2731.l2
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
    call ds_dispatch_e901
    add sp, byte 0x0a
@..math_loc_2731.l2:
    ret
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, word [bp + 0x6]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x14
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call ds_dispatch_bd98
    add sp, byte 8
    mov ax, word [bp + 0x8]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x08, 0x00 ; push word [bx + 0x8]
    mov ax, word [bp + 0x6]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x14
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call ds_dispatch_e901
    add sp, byte 0x0a
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    cmp word [bp + 0xa], byte 0
    jle short @..local.l126
    mov ax, word [bp + 0xa]
    cmp ax, word [bp + 0xc]
    jg short @..local.l126
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    push word [bp + 0xa]
    call ds_dispatch_b2e7
    add sp, byte 6
    jmp short @..local.l127
@..local.l126:
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x909a
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
@..local.l127:
    ret
api_idx_000c_3:
    mov ax, 0xfff4
    call ds_dispatch_f40b
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
    call ds_dispatch_b27d
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx + 0x18e]
    lea ax, word [bp - 0x000c]
    push ax
    call ds_dispatch_fa90
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
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x000c]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jge short @..api_idx_000c_3.l2
    jmp near @..api_idx_000c_3.l1
@..api_idx_000c_3.l2:
    ret
    mov ax, 0
    call ds_dispatch_f40b
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
    mov ax, word [data_9b5e]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [data_9092]
    mov dx, word [data_9094]
    cmp bx, dx
    jg short @..local.l128
    jne short @..local.l129
    cmp cx, ax
    jbe short @..local.l129
@..local.l128:
    jmp short @..local.l130
@..local.l129:
    mov ax, word [data_908e]
    mov dx, word [data_9090]
    mov word [data_908c], dx
    mov word [data_908a], ax
    call api_idx_000a_3
    push word [bp + 0x4]
    call api_idx_000c_3
    pop cx
    push word [bp + 0x6]
    call api_idx_0002_5
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
    call ds_dispatch_e8da
    add sp, byte 8
@..local.l130:
    ret
api_idx_0044:
    mov ax, 0xffbc
    call ds_dispatch_f40b
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
    mov ax, 0x909e
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
    call ds_dispatch_c283
    add sp, byte 0x0a
    mov word [bp - 0x003a], ax
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    call ds_dispatch_bc9a
    add sp, byte 8
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    mov ax, 0x95
    push ax
    call ds_dispatch_bc9a
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
    call ds_dispatch_b53b
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
    call ds_dispatch_c0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0038]
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    call ds_dispatch_b53b
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
    call ds_dispatch_c0c1
    add sp, byte 0x0c
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x48
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xcd
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, 0xa
    push ax
    call ds_dispatch_e830
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
    call math_loc_2731
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
    call loc_27bd
    add sp, byte 0x0a
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call api_idx_0004_4
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
    call ds_dispatch_bf97
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
    call ds_dispatch_bfd8
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov word [bp - 0x0002], 0
@..local.l131:
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short @..local.l131
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short @..local.l132
    mov ax, word [bp - 0x0044]
@..local.l132:
    mov word [bp - 0x0020], ax
    mov word [bp - 0x0002], 0
@..local.l133:
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short @..local.l133
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
    call ds_dispatch_baa6
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
    call ds_dispatch_e8da
    add sp, byte 8
    mov word [data_9b5e], 5
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    mov word [bp - 0x001c], 1
@..local.l134:
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call loc_28f7
    add sp, byte 4
    mov ax, 0x59fe
    push ax
    call ds_dispatch_b90d
    pop cx
    dec ax
    mov word [bp - 0x001a], ax
    cmp word [data_59fc], byte 0
    je short @..local.l138
    mov ax, word [bp - 0x0022]
    cmp ax, word [bp - 0x0018]
    jl short @..local.l135
    inc word [bp - 0x0022]
@..local.l135:
    mov ax, word [bp - 0x0022]
    cmp ax, strict word 0xffff
    je short @..local.l136
    cmp ax, word [bp - 0x0018]
    jl short @..local.l136
    mov ax, word [bp - 0x0018]
    add ax, word [bp - 0x0020]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp - 0x0022]
    cmp cx, ax
    jge short @..local.l137
@..local.l136:
    mov ax, word [bp - 0x0018]
    mov word [bp - 0x0022], ax
@..local.l137:
    mov word [data_5b3e], 1
    mov ax, word [bp - 0x0022]
    sub ax, word [bp - 0x0018]
    add ax, strict word 0x12
    mov word [bp - 0x001a], ax
@..local.l138:
    cmp word [data_5b3e], byte 1
    je short @..local.l139
    jmp near @..local.l163
@..local.l139:
    mov ax, word [bp - 0x001a]
    jmp near @..local.l161

    db 0x8d, 0x46, 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x97, 0xc1, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xee, 0x83
    db 0xc1, 0x2a, 0x2b, 0xc1, 0x50, 0xe8, 0xe9, 0x88, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xea, 0x8d, 0x46
    db 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x69, 0xc1, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe2, 0xff
    db 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x2a, 0x2b
    db 0xc1, 0x2b, 0x46, 0xea, 0x50, 0xe8, 0xb9, 0x88, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xee, 0x83, 0x7e
    db 0xbc, 0x07, 0x7e, 0x20, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xec, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xfa, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7
    db 0xf9, 0x89, 0x46, 0xe8, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x40, 0x90, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x62, 0x90, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xff, 0x8a, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x11, 0xb9, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe2, 0x00, 0x74
    db 0x03, 0xe9, 0x0a, 0xff, 0xe9, 0x13, 0x06, 0x83, 0x7e, 0xe6, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x28, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0xb7, 0x8e
    db 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xe8, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xe8, 0xeb, 0x34, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x46, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0x86
    db 0x8e, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xbc, 0x05, 0xf9, 0xff, 0x3b, 0x46, 0xe8, 0x7e, 0x03, 0xff
    db 0x46, 0xe8, 0x83, 0x7e, 0xbc, 0x07, 0x7e, 0x2c, 0xff, 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x64, 0x00, 0xf7, 0x6e, 0xec, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xf9, 0x99, 0xf7
    db 0xf9, 0xf7, 0x6e, 0xe8, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0x53, 0x87, 0x83, 0xc4
    db 0x06, 0x89, 0x46, 0xee, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x00, 0x8f, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x22, 0x8f, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xbf, 0x89, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xd1, 0xb7, 0x83, 0xc4, 0x08, 0xe9, 0xdc, 0x04, 0x83, 0x7e
    db 0x08, 0x00, 0x75, 0x03, 0xe9, 0xa1, 0x00, 0x83, 0x7e, 0xc4, 0x00, 0x7d, 0x03, 0xe9, 0x8a, 0x00
    db 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x3c, 0x8b, 0x46, 0xc2, 0x3b, 0x46, 0xc0, 0x7e, 0x03, 0xe9, 0x79
    db 0x00, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xc4, 0x8b, 0xd8, 0x8a, 0x87, 0x22, 0x06, 0x2a, 0xe4, 0x8b
    db 0x4e, 0xc2, 0x41, 0xf7, 0xe9, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8b, 0x56
    db 0xbe, 0xd1, 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x8b, 0x8f, 0x1c, 0x5c, 0x58, 0x3b, 0xc1
    db 0x7f, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xe2, 0x8c, 0x83, 0xc4, 0x0a, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xc2, 0x8c, 0x83, 0xc4, 0x0a, 0xc7
    db 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x08
    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x28, 0x86, 0x59, 0xe9, 0x2f, 0x04, 0xb8, 0x01, 0x00, 0x50, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x89, 0x8c, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x69, 0x8c, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46
    db 0xe4, 0x00, 0x00, 0xe9, 0xe4, 0x03

@..local.l140:
    cmp word [bp - 0x001a], byte 5
    jge short @..local.l141
    jmp near @..local.l149
@..local.l141:
    cmp word [bp - 0x001a], byte 0x0b
    jle short @..local.l142
    jmp near @..local.l149
@..local.l142:
    mov ax, 0
    push ax
    push word [bp - 0x003e]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    call math_loc_2731
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
    call math_loc_2731
    add sp, byte 8
    cmp word [bp - 0x003c], byte 0
    jge short @..local.l143
    jmp near @..local.l147
@..local.l143:
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
    call ds_dispatch_b7c2
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
    jne short @..local.l144
    mov ax, 0x3e7
    jmp short @..local.l146
@..local.l144:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short @..local.l145
    jmp short @..local.l146
@..local.l145:
    mov ax, word [bp - 0x0002]
@..local.l146:
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
    call loc_27bd
    add sp, byte 0x0a
    jmp short @..local.l148
@..local.l147:
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
    call loc_27bd
    add sp, byte 0x0a
@..local.l148:
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
    call ds_dispatch_e8da
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
    call ds_dispatch_e8da
    add sp, byte 8
    jmp near @..local.l160
@..local.l149:
    cmp word [bp - 0x001a], byte 0x0c
    jge short @..local.l150
    jmp near @..local.l154
@..local.l150:
    cmp word [bp - 0x001a], byte 0x11
    jle short @..local.l151
    jmp near @..local.l154
@..local.l151:
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
    jge short @..local.l152
    mov ax, word [bp - 0x0044]
@..local.l152:
    mov word [bp - 0x0024], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short @..local.l153
    mov ax, word [bp - 0x0044]
@..local.l153:
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
    call ds_dispatch_bf97
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
    call ds_dispatch_bfd8
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
    call ds_dispatch_baa6
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
    call loc_27bd
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
    call ds_dispatch_e8da
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
    call ds_dispatch_e8da
    add sp, byte 8
    jmp near @..local.l160
@..local.l154:
    cmp word [bp - 0x001a], byte 0x12
    jge short @..local.l155
    jmp near @..local.l160
@..local.l155:
    mov ax, word [bp - 0x0020]
    add ax, strict word 0x12
    cmp ax, word [bp - 0x001a]
    jg short @..local.l156
    jmp near @..local.l160
@..local.l156:
    mov ax, word [bp - 0x0018]
    add ax, word [bp - 0x001a]
    add ax, strict word 0xffee
    mov word [bp - 0x0022], ax
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x64f2]
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
    call ds_dispatch_bf97
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
    call ds_dispatch_b7c2
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
    jne short @..local.l157
    mov ax, 0x3e7
    jmp short @..local.l159
@..local.l157:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short @..local.l158
    jmp short @..local.l159
@..local.l158:
    mov ax, word [bp - 0x0002]
@..local.l159:
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
    call loc_27bd
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
    call ds_dispatch_e8da
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
    call ds_dispatch_e8da
    add sp, byte 8
@..local.l160:
    jmp short @..local.l163
    clc
    jle short loc_35f3
    sbb byte [bx], 0x80
    push si
    db 0x81, 0x03, 0x82
@..local.l161:
    cmp ax, strict word 5
    jae short @..local.l162
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x79e8]
@..local.l162:
    jmp near @..local.l140
@..local.l163:
    cmp word [bp - 0x001c], byte 0
    je short @..local.l164
    jmp near @..local.l134
@..local.l164:
    mov ax, 1
    push ax
    push word [bp - 0x003a]
    call ds_dispatch_c459
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
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, word [bp - 0x003e]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x003c]
    add ax, 0x100
    mov word [data_904e], ax
    mov ax, word [data_9050]
    ret
api_idx_0008_2:
    mov ax, 0xfff8
    call ds_dispatch_f40b
    mov word [bp - 0x0006], 0xffff
    mov word [bp - 0x0008], 0xffff
    mov ax, word [data_0e0e]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    jmp short @..local.l169
@..api_idx_0008_2.l1:
    mov bx, word [bp - 0x0004]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, 0xff
    jne short @..local.l165
    mov ax, word [bp - 0x0002]
    ret
@..local.l165:
    mov al, byte [bx + 0x1]
    sub ah, ah
    test ax, 0x40
    jne short @..local.l168
    cmp word [bp - 0x0006], byte 0xff
    je short @..local.l166
    mov ax, 7
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    jne short @..local.l168
@..local.l166:
    mov bx, word [bp - 0x0004]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [data_830c]
    jne short @..local.l167
    mov ax, word [bp - 0x0002]
    mov word [bp - 0x0008], ax
    jmp short @..local.l168
@..local.l167:
    mov ax, word [bp - 0x0002]
    mov word [bp - 0x0006], ax
@..local.l168:
    add word [bp - 0x0004], byte 8
    inc word [bp - 0x0002]
@..local.l169:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_5910]
    jl short @..api_idx_0008_2.l1
    cmp word [bp + 0x4], byte 0
    je short @..local.l171
    cmp word [bp - 0x0006], byte 0xff
    jne short @..local.l170
    mov ax, word [bp - 0x0008]
    ret
@..local.l170:
    mov ax, word [bp - 0x0006]
    ret
@..local.l171:
    mov ax, 0xffff
    ret
api_idx_0004_5:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    call api_idx_0008_2
    pop cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0004_5.l4
    cmp word [data_5910], byte 0x7f
    jl short @..api_idx_0004_5.l3
    mov ax, 1
    push ax
    call api_idx_0008_2
    pop cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0004_5.l2
@..api_idx_0004_5.l1:
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
    jmp short @..api_idx_0004_5.l1
@..api_idx_0004_5.l2:
    jmp short @..api_idx_0004_5.l4
@..api_idx_0004_5.l3:
    mov ax, word [data_5910]
    mov word [bp - 0x0002], ax
    inc word [data_5910]
@..api_idx_0004_5.l4:
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    mov ax, word [data_0e0e]
    add ax, cx
    mov word [bp - 0x0004], ax
    mov al, byte [data_830c]
    mov bx, word [bp - 0x0004]
    mov byte [bx], al
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x7]
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x1], al
    mov ax, word [data_8f3e]
    xchg al, ah
    sub al, al
    mov dx, word [data_8f42]
    mov cx, 4
    shl dx, cl
    mov cx, dx
    add ax, cx
    add ax, word [data_8f40]
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
    mov ax, word [data_8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [data_8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [data_8f42]
    push ax
    mov ax, 0x8bfe
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    ret
api_idx_0018:
    mov ax, 0xffe8
    call ds_dispatch_f40b
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
    call ds_dispatch_e928
    add sp, byte 8
    mov word [bp - 0x0016], dx
    mov word [bp - 0x0018], ax
    lea ax, word [bp - 0x0014]
    push ax
    push word [bp + 0x4]
    call ds_dispatch_b53b
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
    call ds_dispatch_bce3
    add sp, byte 0x0a
    mov ax, word [bp + 0x6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    inc ax
    inc ax
    push ax
    lea ax, word [bp - 0x0014]
    push ax
    call ds_dispatch_fa90
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
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0xc0
    push ax
    mov ax, 0x1a
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0014]
    push ax
    call ds_dispatch_e84e
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
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 0x0016]
    push word [bp - 0x0018]
    call ds_dispatch_e94f
    add sp, byte 6
    ret
api_idx_0004_6:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov word [bp - 0x0002], 0
    jmp near @..api_idx_0004_6.l8
@..api_idx_0004_6.l1:
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xe]
    jne short @..api_idx_0004_6.l2
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
    call ds_dispatch_e901
    add sp, byte 0x0a
    mov word [bp - 0x0004], 0
    jmp short @..api_idx_0004_6.l3
@..api_idx_0004_6.l2:
    mov word [bp - 0x0004], 0xb4
@..api_idx_0004_6.l3:
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x64a0], byte 0
    je short @..api_idx_0004_6.l4
    mov ax, 4
    push ax
    mov ax, 0x63
    push ax
    call ds_dispatch_e830
    add sp, byte 4
@..api_idx_0004_6.l4:
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0xf
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x6478]
    sub ah, ah
    push ax
    call ds_dispatch_e830
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
    add ax, 0x9bb0
    push ax
    call api_idx_002a
    add sp, byte 8
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6298], byte 0
    jle short @..api_idx_0004_6.l7
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x47
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xe]
    jne short @..api_idx_0004_6.l5
    mov ax, word [bp - 0x0004]
    jmp short @..api_idx_0004_6.l6
@..api_idx_0004_6.l5:
    mov ax, 2
@..api_idx_0004_6.l6:
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x6298]
    call ds_dispatch_b2e7
    add sp, byte 6
@..api_idx_0004_6.l7:
    inc word [bp - 0x0002]
@..api_idx_0004_6.l8:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xa]
    jge short @..api_idx_0004_6.l9
    jmp near @..api_idx_0004_6.l1
@..api_idx_0004_6.l9:
    ret
math_loc_39eb:
    mov ax, 0
    call ds_dispatch_f40b
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
    call ds_dispatch_bd98
    add sp, byte 8
    push word [bp + 0xe]
    push word [bp + 0xc]
    push word [bp + 0x10]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0004_6
    add sp, byte 0x0c
    ret
api_idx_0038:
    mov ax, 0xffc8
    call ds_dispatch_f40b
    mov word [data_904e], 0xffff
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
    mov ax, 0x90a4
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
    call ds_dispatch_c283
    add sp, byte 0x0a
    mov word [bp - 0x0038], ax
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    call ds_dispatch_bc9a
    add sp, byte 8
    cmp word [bp + 0x6], byte 0
    je short @..api_idx_0038.l2
    lea ax, word [bp - 0x0036]
    push ax
    push word [bp + 0x4]
    call ds_dispatch_b53b
    add sp, byte 4
    jmp short @..api_idx_0038.l3
@..api_idx_0038.l2:
    push word [bp + 0xe]
    lea ax, word [bp - 0x0036]
    push ax
    call ds_dispatch_f364
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
    call ds_dispatch_c0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0036]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    push ax
    call ds_dispatch_b53b
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
    call ds_dispatch_c0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0036]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    call ds_dispatch_b53b
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
    call ds_dispatch_c0c1
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
    call math_loc_39eb
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
    call ds_dispatch_bfd8
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0xd
    push ax
    mov ax, 0x55
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x44
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 3
    cmp word [bp + 0xc], byte 3
    jge short @..local.l172
    mov ax, word [bp + 0xc]
@..local.l172:
    mov word [bp - 0x001e], ax
    mov word [bp - 0x0002], 0
    jmp short @..local.l174
@..local.l173:
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
@..local.l174:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x001e]
    jl short @..local.l173
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
    call ds_dispatch_baa6
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
    call ds_dispatch_e8da
    add sp, byte 8
    mov word [bp - 0x001a], 1
@..local.l175:
    mov ax, 0x59fe
    push ax
    call ds_dispatch_b90d
    pop cx
    dec ax
    mov word [bp - 0x0018], ax
    cmp word [data_59fc], byte 0
    je short @..local.l179
    mov ax, word [bp - 0x0020]
    cmp ax, word [bp - 0x0016]
    jl short @..local.l176
    inc word [bp - 0x0020]
@..local.l176:
    mov ax, word [bp - 0x0020]
    cmp ax, strict word 0xffff
    je short @..local.l177
    cmp ax, word [bp - 0x0016]
    jl short @..local.l177
    mov ax, word [bp - 0x0016]
    add ax, word [bp - 0x001e]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp - 0x0020]
    cmp cx, ax
    jge short @..local.l178
@..local.l177:
    mov ax, word [bp - 0x0016]
    mov word [bp - 0x0020], ax
@..local.l178:
    mov word [data_5b3e], 1
    mov ax, word [bp - 0x0020]
    sub ax, word [bp - 0x0016]
    add ax, strict word 6
    mov word [bp - 0x0018], ax
@..local.l179:
    cmp word [data_5b3e], byte 1
    je short @..local.l180
    jmp near @..local.l184
@..local.l180:
    mov ax, word [bp - 0x0018]
    jmp near @..local.l182

    db 0x8d, 0x46, 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0xa9, 0xb2, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xf0, 0x83
    db 0xc1, 0x0e, 0x2b, 0xc1, 0x50, 0xe8, 0xfb, 0x79, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xec, 0x8d, 0x46
    db 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0x7b, 0xb2, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe4, 0xff
    db 0x76, 0xee, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x0e, 0x2b
    db 0xc1, 0x2b, 0x46, 0xec, 0x50, 0xe8, 0xcb, 0x79, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0x83, 0x7e
    db 0x0c, 0x03, 0x7e, 0x1f, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xee, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x49, 0x49, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7, 0xf9
    db 0x89, 0x46, 0xea, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76, 0xea, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x5d
    db 0x00, 0x50, 0xe8, 0xa7, 0xfb, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0, 0xb8, 0x07, 0x00, 0x50, 0xb8
    db 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00
    db 0x50, 0xe8, 0x75, 0x81, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa, 0x03
    db 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0xe8, 0x12, 0x7c, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b
    db 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc
    db 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x24, 0xaa, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x03
    db 0xe9, 0x0b, 0xff, 0xe9, 0x97, 0x02, 0x83, 0x7e, 0xe8, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0xca, 0x7f, 0x83
    db 0xc4, 0x0a, 0x83, 0x7e, 0xea, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xea, 0xeb, 0x34, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0x99, 0x7f
    db 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0x0c
    db 'HHH;F'
    db 0xea, 0x7e, 0x03, 0xff, 0x46, 0xea, 0x83, 0x7e, 0x0c, 0x03, 0x7e, 0x2c, 0xff, 0x76, 0xee, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x64, 0x00, 0xf7, 0x6e, 0xee, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x49
    db 0x49, 0x49, 0x99, 0xf7, 0xf9, 0xf7, 0x6e, 0xea, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8
    db 0x66, 0x78, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76
    db 0xea, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50
    db 0x8b, 0x46, 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x67, 0xfa, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0
    db 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b
    db 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0x35, 0x80, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50
    db 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0xc1, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xd2, 0x7a, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa
    db 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0xe4, 0xa8, 0x83, 0xc4, 0x08, 0xe9
    db 0x60, 0x01, 0x83, 0x7e, 0x06, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8
    db 0x43, 0x7e, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8
    db 0x23, 0x7e, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe6, 0x00, 0x00
    db 0xe9, 0x0f, 0x01, 0x83, 0x7e, 0x08, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50
    db 0xe8, 0xf2, 0x7d, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50
    db 0xe8, 0xd2, 0x7d, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46, 0xe6, 0x00
    db 0x00, 0xe9, 0xbe, 0x00, 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8
    db 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00
    db 0x50, 0xe8, 0xa1, 0x7d, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8
    db 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00
    db 0x50, 0xe8, 0x81, 0x7d, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x02, 0x00, 0xc7, 0x46, 0xe6
    db 0x00, 0x00, 0xeb, 0x6e

@..local.l181:
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
    call math_loc_39eb
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
    call ds_dispatch_e8da
    add sp, byte 8
    jmp short @..local.l184
    db 0xe6, 0x8d, 0x0c, 0x8f, 0x0c, 0x8f, 0x43, 0x90, 0x94, 0x90, 0xe5, 0x90
@..local.l182:
    cmp ax, strict word 6
    jae short @..local.l183
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6e78]
@..local.l183:
    jmp short @..local.l181
@..local.l184:
    cmp word [bp - 0x001a], byte 0
    je short @..local.l185
    jmp near @..local.l175
@..local.l185:
    mov ax, 1
    push ax
    push word [bp - 0x0038]
    call ds_dispatch_c459
    add sp, byte 4
    mov ax, word [bp - 0x0020]
    mov word [data_904e], ax
    mov ax, word [data_9050]
    ret
api_idx_0094:
    mov ax, 0xff6c
    call ds_dispatch_f40b
    mov word [data_9b5e], 5
    mov word [bp - 0x0094], 0
    mov word [bp - 0x0050], 0
@..api_idx_0094.l1:
    mov word [bp - 0x0052], 0
@..api_idx_0094.l2:
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0050]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0052]
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
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_b63c
    add sp, byte 8
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0050]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0052]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 0x80
    je short @..api_idx_0094.l4
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, 0x16
    imul word [bp - 0x0094]
    add ax, 0x9bb0
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    jmp short @..api_idx_0094.l5
@..api_idx_0094.l4:
    mov ax, 0x16
    imul word [bp - 0x0094]
    add ax, 0x9bb0
    push ax
    mov al, byte [bp - 0x0013]
    sub ah, ah
    add ax, 0x1770
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
@..api_idx_0094.l5:
    mov al, byte [bp - 0x0013]
    sub ah, ah
    mov cx, word [bp - 0x0094]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6478], ax
    mov ax, word [bp - 0x0050]
    mov word [bx - 0x64a0], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0050]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0052]
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
    imul word [bp - 0x0050]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0052]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3a]
    sub ah, ah
    mov cx, word [bp - 0x0094]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6298], ax
    jmp short @..api_idx_0094.l7
@..api_idx_0094.l6:
    mov ax, word [bp - 0x0094]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6298], 0
@..api_idx_0094.l7:
    mov ax, word [bp - 0x0050]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x0052]
    mov cx, word [bp - 0x0094]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x0092], ax
    inc word [bp - 0x0094]
@..api_idx_0094.l8:
    inc word [bp - 0x0052]
    mov ax, word [bp - 0x0052]
    cmp ax, strict word 0xa
    jge short @..api_idx_0094.l9
    jmp near @..api_idx_0094.l2
@..api_idx_0094.l9:
    inc word [bp - 0x0050]
    mov ax, word [bp - 0x0050]
    cmp ax, strict word 2
    jge short @..api_idx_0094.l10
    jmp near @..api_idx_0094.l1
@..api_idx_0094.l10:
    cmp word [bp - 0x0094], byte 0
    jne short @..local.l186
    ret
@..local.l186:
    mov ax, 0x90aa
    push ax
    push word [bp - 0x0094]
    mov ax, 1
    push ax
    push ax
    push ax
    mov ax, 0x7ee
    push ax
    call api_idx_0038
    add sp, byte 0x0c
    mov word [bp - 0x004e], ax
    mov ax, word [data_904e]
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x004e], byte 2
    je short @..local.l187
    cmp ax, strict word 0xffff
    jne short @..local.l188
@..local.l187:
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    ret
@..local.l188:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0092]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x0050], ax
    mov word [bp - 0x0052], dx
    mov ax, 0x10
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0x96
    push ax
    mov ax, 0x3f
    push ax
    push word [bp - 0x004e]
    mov ax, word [bp - 0x004e]
    add ax, 0x7ee
    push ax
    call api_idx_0018
    add sp, byte 0x0c
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0050]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0052]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c34]
    mov word [bp - 0x0004], ax
    cmp word [bp - 0x004e], byte 0
    je short @..local.l189
    jmp near @..local.l205
@..local.l189:
    push word [bp - 0x0052]
    push word [bp - 0x0050]
    push word [bp + 0x4]
    call api_idx_000c
    add sp, byte 6
    test ax, ax
    je short @..local.l190
    jmp near @..local.l203
@..local.l190:
    mov ax, 0
    push ax
    push word [bp - 0x0004]
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_b63c
    add sp, byte 8
    cmp word [bp - 0x002a], byte 0
    jne short @..local.l191
    jmp near @..local.l195
@..local.l191:
    mov ax, word [bp - 0x002a]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x0056], ax
    mov word [bp - 0x0054], dx
    mov ax, 6
    imul dx
    mov bx, ax
    cmp byte [bx + 0x624], 1
    jne short @..local.l192
    call ds_dispatch_ceb1
    mov word [data_9d90], ax
    cmp ax, strict word 0xffff
    jne short @..local.l192
    mov word [bp - 0x0054], 0xffff
@..local.l192:
    cmp word [bp - 0x0054], byte 0xff
    je short @..local.l194
    push word [bp - 0x0052]
    push word [bp - 0x0050]
    push word [bp + 0x4]
    call ds_dispatch_ca27
    add sp, byte 6
    cmp word [bp - 0x0054], byte 0x4d
    jne short @..local.l193
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
@..local.l193:
    push word [data_9d90]
    push word [bp - 0x0056]
    push word [bp - 0x0054]
    push word [bp + 0x4]
    call api_idx_0008
    add sp, byte 8
@..local.l194:
    jmp near @..local.l202
@..local.l195:
    cmp byte [bp - 0x000d], 4
    je short @..local.l196
    jmp near @..local.l198
@..local.l196:
    mov ax, word [data_830c]
    cmp ax, word [bp - 0x002e]
    je short @..local.l197
    jmp near @..local.l198
@..local.l197:
    mov ax, 0
    push ax
    mov al, byte [bp - 0x002c]
    sub ah, ah
    push ax
    mov ax, word [bp - 0x002e]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    mov ax, 0
    push ax
    mov al, byte [bp - 0x002c]
    sub ah, ah
    push ax
    mov ax, word [bp - 0x002e]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    mov ax, 1
    push ax
    mov al, byte [bp - 0x002b]
    sub ah, ah
    push ax
    mov ax, word [bp - 0x002e]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    mov ax, 1
    push ax
    mov al, byte [bp - 0x002b]
    sub ah, ah
    push ax
    mov ax, word [bp - 0x002e]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    push word [bp - 0x0052]
    push word [bp - 0x0050]
    push word [bp + 0x4]
    call ds_dispatch_ca27
    add sp, byte 6
    jmp short @..local.l202
@..local.l198:
    cmp byte [bp - 0x000d], 5
    jne short @..local.l201
    cmp word [data_830c], byte 8
    jne short @..local.l199
    mov word [data_8304], 1
    jmp short @..local.l200
@..local.l199:
    mov word [data_90b6], 0x807
    mov word [data_90b8], 1
@..local.l200:
    jmp short @..local.l202
@..local.l201:
    mov word [data_90b6], 0x7fe
    mov word [data_90b8], 1
@..local.l202:
    jmp short @..local.l204
@..local.l203:
    mov ax, word [bp - 0x0004]
    cmp ax, 0x108
    je short @..local.l204
    cmp ax, 0x109
    je short @..local.l204
    cmp ax, 0x101
    je short @..local.l204
    cmp ax, 0x103
    je short @..local.l204
    push word [bp - 0x0052]
    push word [bp - 0x0050]
    push word [bp + 0x4]
    call ds_dispatch_ca27
    add sp, byte 6
@..local.l204:
    jmp near @..local.l208
@..local.l205:
    cmp word [bp - 0x004e], byte 1
    jne short @..local.l208
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0050]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0052]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 2
    jne short @..local.l206
    cmp word [bp - 0x0004], strict word 0x229
    jne short @..local.l207
@..local.l206:
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
    jmp short @..local.l208
@..local.l207:
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0050]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0052]
    mov cx, ax
    pop ax
    add ax, cx
    add ax, 0x5c34
    push ax
    call api_idx_0004_5
    pop cx
    push word [bp - 0x0052]
    push word [bp - 0x0050]
    push word [bp + 0x4]
    call ds_dispatch_c9e8
    add sp, byte 6
@..local.l208:
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x36
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    cmp word [data_90b6], byte 0
    jle short @..local.l209
    push word [data_90b6]
    call api_idx_0058
    pop cx
@..local.l209:
    ret
api_idx_0004_7:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov word [data_9b5e], 5
    mov ax, 1
    push ax
    push ax
    mov ax, 0x7ea
    push ax
    push word [bp + 0x4]
    call api_idx_0044
    add sp, byte 8
    test ax, ax
    je short @..api_idx_0004_7.l1
    jmp near @..api_idx_0004_7.l4
@..api_idx_0004_7.l1:
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
    jne short @..api_idx_0004_7.l2
    call ds_dispatch_ceb1
    mov word [data_9d90], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0004_7.l2
@..api_idx_0004_7.l2:
    cmp word [bp - 0x0002], byte 0
    jge short @..api_idx_0004_7.l3
    jmp near @..api_idx_0004_7.l4
@..api_idx_0004_7.l3:
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
    push word [data_9d90]
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_0008
    add sp, byte 8
    push word [bp - 0x0004]
    call ds_dispatch_b7a9
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
    jge short @..api_idx_0004_7.l4
    mov word [bx + 0x5c10], 0
    mov ax, 6
    push ax
    call ds_dispatch_b7a9
    pop cx
    add ax, strict word 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5d5c], al
@..api_idx_0004_7.l4:
    cmp word [data_90b6], byte 0
    jle short @..api_idx_0004_7.l5
    push word [data_90b6]
    call api_idx_0058
    pop cx
@..api_idx_0004_7.l5:
    ret

    db 0x8f, 0x06, 0xb4, 0x90, 0x59, 0x89, 0x26, 0xb0, 0x90, 0x89, 0x2e, 0xb2, 0x90, 0x89, 0x36, 0xac
    db 0x90, 0x89, 0x3e, 0xae, 0x90, 0xfc, 0xbf, 0xb6, 0x90, 0xb9, 0x94, 0x9d, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0x0c, 0xb9, 0x8b, 0x2e, 0xb2, 0x90, 0x8b, 0x26, 0xb0
    db 0x90, 0x8b, 0x36, 0xac, 0x90, 0x8b, 0x3e, 0xae, 0x90, 0x51, 0xff, 0x26, 0xb4, 0x90

leaf_loc_4717:
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

    db 0x00, 0x00, 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    db 'V.$$$', 0
    times 12 db 0

