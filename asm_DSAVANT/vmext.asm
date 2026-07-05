%include "structs/structs.inc"
%include "structs/vmext.inc"
org 0
bits 16
%include "labels/vmext_foreign_labels.inc"

    db 0xf2, 0x00, 0x55, 0x50, 0x4b, 0x52, 0x98, 0x90 ; header (8 bytes)

data_008e equ 0x008e
data_0136 equ 0x0136
data_03ae equ 0x03ae
data_03dc equ 0x03dc
data_0674 equ 0x0674
data_0e0e equ 0x0e0e
data_0e12 equ 0x0e12
data_0e14 equ 0x0e14
data_1476 equ 0x1476
data_3446 equ 0x3446
data_3c7d equ 0x3c7d
data_5910 equ 0x5910
data_5b55 equ 0x5b55
data_5b6e equ 0x5b6e
data_5b70 equ 0x5b70
data_7abe equ 0x7abe
data_7b05 equ 0x7b05
data_7d3c equ 0x7d3c
data_82e8 equ 0x82e8
data_82ea equ 0x82ea
data_82ee equ 0x82ee
data_830a equ 0x830a
data_830c equ 0x830c
data_8456 equ 0x8456
data_8af0 equ 0x8af0
data_8d12 equ 0x8d12
data_8f1c equ 0x8f1c
data_8f1e equ 0x8f1e
data_8f20 equ 0x8f20
data_8f22 equ 0x8f22
data_8f28 equ 0x8f28
data_8f2a equ 0x8f2a
data_8f2c equ 0x8f2c
data_8f2e equ 0x8f2e
data_8f30 equ 0x8f30
data_8f32 equ 0x8f32
data_8f34 equ 0x8f34
data_8f36 equ 0x8f36
data_8f38 equ 0x8f38
data_8f3a equ 0x8f3a
data_8f3c equ 0x8f3c
data_8f3e equ 0x8f3e
data_8f40 equ 0x8f40
data_8f42 equ 0x8f42
data_8f44 equ 0x8f44
data_8f46 equ 0x8f46
data_8f48 equ 0x8f48
data_905a equ 0x905a
data_905e equ 0x905e
data_9068 equ 0x9068
data_906a equ 0x906a
data_908a equ 0x908a
data_908c equ 0x908c
data_9180 equ 0x9180
data_9188 equ 0x9188
data_918a equ 0x918a
data_91a4 equ 0x91a4
data_91a6 equ 0x91a6
data_91a8 equ 0x91a8
data_91aa equ 0x91aa
data_91b8 equ 0x91b8
data_92f2 equ 0x92f2
data_9aec equ 0x9aec
data_9b08 equ 0x9b08
data_9b0a equ 0x9b0a
data_9b0c equ 0x9b0c
data_9b0e equ 0x9b0e
data_9b10 equ 0x9b10
data_9b12 equ 0x9b12
data_9b14 equ 0x9b14
data_9b16 equ 0x9b16
data_9b18 equ 0x9b18
data_9b1a equ 0x9b1a

    call 0x9c0b
    or word [bp + si - 0x005e], sp
api_idx_0002:
    mov ax, 0xfffe
    call 0xf40b
    mov word [data_8f22], 0
    mov word [data_9180], 5
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    mov word [bp - 0x0002], 0
@..api_idx_0002.l1:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6e7e], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 3
    jl short @..api_idx_0002.l1
    cmp word [data_906a], byte 0
    je short @..api_idx_0002.l2
    mov ax, 1
    push ax
    push word [data_9068]
    call 0xc459
    add sp, byte 4
    mov word [data_906a], 0
@..api_idx_0002.l2:
    cmp word [data_830a], byte 0x17
    jne short @..api_idx_0002.l3
    call api_idx_0002_4
    mov ax, 0xa
    push ax
    call 0xb7a9
    pop cx
    add ax, strict word 4
    push ax
    call api_idx_008a
    pop cx
@..api_idx_0002.l3:
    cmp word [data_830a], byte 0x1b
    jne short @..api_idx_0002.l4
    call api_idx_0012
@..api_idx_0002.l4:
    cmp word [data_830a], byte 0x1e
    jne short @..api_idx_0002.l5
    push word [data_8af0]
    call api_idx_0008_2
    pop cx
@..api_idx_0002.l5:
    cmp word [data_830a], byte 0x1f
    jne short @..api_idx_0002.l6
    push word [data_8af0]
    call math_loc_15af
    pop cx
@..api_idx_0002.l6:
    mov word [data_830a], 5
    mov ax, 0
    ret
math_loc_00b6:
    mov ax, 0
    db 0xe8, 0x4f, 0xf3 ; call 0xf40b
    mov bx, word [data_0e14]
    mov si, word [bp + 0x4]
    mov al, byte [bx + si + 0x490]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jg short @..local.l2
    add ax, strict word 7
    cmp ax, word [bp + 0x6]
    jl short @..local.l2
    mov al, byte [bx + si + 0x4a0]
    sub ah, ah
    cmp ax, word [bp + 0x8]
    jg short @..local.l2
    add ax, strict word 7
    cmp ax, word [bp + 0x8]
    jl short @..local.l2
    mov ax, si
    ret
@..local.l2:
    mov ax, 0xffff
    ret
api_idx_0004:
    mov ax, 0xfffc
    db 0xe8, 0x15, 0xf3 ; call 0xf40b
    push word [bp + 0xc]
    push word [bp + 0xa]
    mov bx, word [bp + 0x8]
    push word [bx]
    call math_loc_00b6
    add sp, byte 6
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short @..local.l4
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [data_8f48]
    call math_loc_00b6
    add sp, byte 6
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short @..local.l4
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
    call math_loc_00b6
    add sp, byte 6
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short @..local.l4
    mov ax, word [bp - 0x0002]
    inc ax
    mov cx, 0x10
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    mov bx, word [bp + 0x8]
    cmp dx, word [bx]
    jne short @..local.l3
    mov ax, 1
    ret
@..local.l3:
    jmp short @..api_idx_0004.l1
@..local.l4:
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
api_idx_0002_2:
    mov ax, 0xfffe
    db 0xe8, 0x59, 0xf2 ; call 0xf40b
    mov ax, word [bp + 0xa]
    mov word [bp - 0x0002], ax
    jmp short @..local.l7
@..api_idx_0002_2.l1:
    mov bx, word [data_0e12]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si + 0x870]
    sub ah, ah
    cmp ax, word [bp + 0x8]
    je short @..local.l5
    mov ax, 0xffff
    ret
@..local.l5:
    mov al, byte [bx + si + 0x690]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jne short @..local.l6
    mov al, byte [bx + si + 0x780]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jne short @..local.l6
    cmp byte [bx + si + 0x5a0], 0
    jbe short @..local.l6
    mov al, byte [bx + si + 0x960]
    sub ah, ah
    push ax
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    jne short @..local.l6
    mov ax, word [bp - 0x0002]
    ret
@..local.l6:
    inc word [bp - 0x0002]
@..local.l7:
    cmp word [bp - 0x0002], strict word 0xf0
    jl short @..api_idx_0002_2.l1
    mov ax, 0xffff
    ret
api_idx_0002_3:
    mov ax, 0xfffe
    db 0xe8, 0xe9, 0xf1 ; call 0xf40b
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
    jne short @..api_idx_0002_3.l1
    mov ax, 0x1b
    push ax
    call 0xb171
    pop cx
@..api_idx_0002_3.l1:
    mov ax, 0
    push ax
    push word [bp + 0x6]
    push word [bp - 0x0002]
    call 0xf012
    add sp, byte 6
    push word [bp - 0x0002]
    call 0xfda5
    pop cx
    ret
api_idx_0002_4:
    mov ax, 0xfffe
    db 0xe8, 0xa3, 0xf1 ; call 0xf40b
    mov word [data_9188], 0
    mov ax, word [data_830c]
    jmp short @..local.l8
    mov word [bp - 0x0002], 1
    jmp short @..local.l9
    mov word [bp - 0x0002], 2
    jmp short @..local.l9
    mov word [bp - 0x0002], 3
    jmp short @..local.l9
    mov word [data_9188], 1
    mov word [bp - 0x0002], 4
    jmp short @..local.l9
    mov word [bp - 0x0002], 5
    jmp short @..local.l9
    mov word [bp - 0x0002], 6
    jmp short @..local.l9
    rcl word [bp + si - 0x003f], 0x52
    rcl word [bp + si - 0x003f], 0x52
    rcl word [bp + si - 0x003f], 0x52
    rcl word [bp + si - 0x002b], 0x52
    jcxz 0x307
    jcxz @..local.l12
    jcxz 0x30b
    jcxz 0x30d
    jcxz 0x30f
    rcl word [bp + si - 0x0038], 0x52
    mov dx, 0xc852
    push dx
    mov dx, 0xc852
    push dx
    enter 0xc852, 0x52
    enter 0xdc52, 0x52
    mov dx, 0xba52
    push dx
    db 0xdc, 0x52, 0xba ; fcom [bp + si - 0x0046]
    push dx
    iret
    db 0x52, 0xdc, 0x52, 0xba, 0x52, 0xba, 0x52, 0xc8, 0x52
@..local.l8:
    cmp ax, strict word 0x20
    jae short @..local.l9
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x52ea]
@..local.l9:
    cmp word [data_5b70], byte 0
    je short @..local.l10
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_5b6e]
    jne short @..local.l10
    jmp near @..math_loc_054f.l1
@..local.l10:
    call 0xc145
    mov ax, word [bp - 0x0002]
@..local.l12:
    mov word [data_5b6e], ax
    jmp near @..local.l16

    db 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x98, 0x90, 0x50, 0xe8, 0x02, 0xff, 0x83, 0xc4, 0x04, 0xb8, 0x05
    db 0x00, 0x50, 0xb8, 0xa5, 0x90, 0x50, 0xe8, 0xf4, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x05, 0x00, 0x50
    db 0xb8, 0x06, 0x00, 0x50, 0xe8, 0xe6, 0xd2, 0x83, 0xc4, 0x04, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x0f
    db 0x00, 0x50, 0xe8, 0xd8, 0xd2, 0x83, 0xc4, 0x04, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50
    db 0xe8, 0xca, 0xd2, 0x83, 0xc4, 0x04, 0xb8, 0x0d, 0x00, 0x50, 0xb8, 0x39, 0x00, 0x50, 0xe8, 0xbc
    db 0xd2, 0x83, 0xc4, 0x04, 0xc7, 0x06, 0x6c, 0x5b, 0x00, 0x00, 0xe9, 0xdc, 0x01, 0xb8, 0x01, 0x00
    db 0x50, 0xb8, 0xb2, 0x90, 0x50, 0xe8, 0xa5, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x04, 0x00, 0x50, 0xb8
    db 0xbf, 0x90, 0x50, 0xe8, 0x97, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0xcc, 0x90
    db 0x50, 0xe8, 0x89, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x0d, 0x00, 0x50, 0xb8, 0x3a, 0x00, 0x50, 0xe8
    db 0x7b, 0xd2, 0x83, 0xc4, 0x04, 0xc7, 0x06, 0x6c, 0x5b, 0x01, 0x00, 0xe9, 0x9b, 0x01, 0xb8, 0x02
    db 0x00, 0x50, 0xb8, 0xd9, 0x90, 0x50, 0xe8, 0x64, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x04, 0x00, 0x50
    db 0xb8, 0xe6, 0x90, 0x50, 0xe8, 0x56, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0xf3
    db 0x90, 0x50, 0xe8, 0x48, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x00, 0x91, 0x50
    db 0xe8, 0x3a, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0xe8, 0x2c
    db 0xd2, 0x83, 0xc4, 0x04, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0xe8, 0x1e, 0xd2, 0x83
    db 0xc4, 0x04, 0xb8, 0x0b, 0x00, 0x50, 0xb8, 0x11, 0x00, 0x50, 0xe8, 0x10, 0xd2, 0x83, 0xc4, 0x04
    db 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x3b, 0x00, 0x50, 0xe8, 0x02, 0xd2, 0x83, 0xc4, 0x04, 0xc7, 0x06
    db 0x6c, 0x5b, 0x02, 0x00, 0xe9, 0x22, 0x01, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0d, 0x91, 0x50, 0xe8
    db 0xeb, 0xfd, 0x83, 0xc4, 0x04, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x1a, 0x91, 0x50, 0xe8, 0xdd, 0xfd
    db 0x83, 0xc4, 0x04, 0xb8, 0x0d, 0x00, 0x50, 0xb8, 0x3a, 0x00, 0x50, 0xe8, 0xcf, 0xd1, 0x83, 0xc4
    db 0x04, 0xc7, 0x06, 0x6c, 0x5b, 0x01, 0x00, 0xe9, 0xef, 0x00, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x27
    db 0x91, 0x50, 0xe8, 0xb8, 0xfd, 0x83, 0xc4, 0x04, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x34, 0x91, 0x50
    db 0xe8, 0xaa, 0xfd, 0x83, 0xc4, 0x04, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x41, 0x91, 0x50, 0xe8, 0x9c
    db 0xfd, 0x83, 0xc4, 0x04, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0xe8, 0x8e, 0xd1, 0x83
    db 0xc4, 0x04, 0xb8, 0x0b, 0x00, 0x50, 0xb8, 0x36, 0x00, 0x50, 0xe8, 0x80, 0xd1, 0x83, 0xc4, 0x04
    db 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x3b, 0x00, 0x50, 0xe8, 0x72, 0xd1, 0x83, 0xc4, 0x04, 0xb8, 0x09
    db 0x00, 0x50, 0xb8, 0x53, 0x00, 0x50, 0xe8, 0x64, 0xd1, 0x83, 0xc4, 0x04, 0xb8, 0x0d, 0x00, 0x50
    db 0xb8, 0x38, 0x00, 0x50, 0xe8, 0x56, 0xd1, 0x83, 0xc4, 0x04, 0xc7, 0x06, 0x6c, 0x5b, 0x02, 0x00
    db 0xeb, 0x77, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x4e, 0x91, 0x50, 0xe8, 0x40, 0xfd, 0x83, 0xc4, 0x04
    db 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x5b, 0x91, 0x50, 0xe8, 0x32, 0xfd, 0x83, 0xc4, 0x04, 0xb8, 0x05
    db 0x00, 0x50, 0xb8, 0x68, 0x91, 0x50, 0xe8, 0x24, 0xfd, 0x83, 0xc4, 0x04, 0xb8, 0x0c, 0x00, 0x50
    db 0xb8, 0x3b, 0x00, 0x50, 0xe8, 0x16, 0xd1, 0x83, 0xc4, 0x04, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x53
    db 0x00, 0x50, 0xe8, 0x08, 0xd1, 0x83, 0xc4, 0x04, 0xb8, 0x0d, 0x00, 0x50, 0xb8, 0x3a, 0x00, 0x50
    db 0xe8, 0xfa, 0xd0, 0x83, 0xc4, 0x04, 0xc7, 0x06, 0x6c, 0x5b, 0x01, 0x00, 0xeb, 0x1b, 0x8f, 0x55
    db 0x56, 0x53, 0xb3, 0x53, 0xf4, 0x53, 0x6d, 0x54, 0xa0, 0x54, 0x18, 0x55

@..local.l16:
    cmp ax, strict word 7
    jae short @..math_loc_054f.l1
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x5574]
@..math_loc_054f.l1:
    mov word [data_5b70], 1
    ret
math_loc_054f:
    mov ax, 0
    db 0xe8, 0xb6, 0xee ; call 0xf40b
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    sub ax, word [data_908a]
    sbb dx, word [data_908c]
    push ax
    push dx
    mov ax, word [data_9180]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    cmp dx, bx
    jl short @..local.l17
    jne short @..local.l18
    cmp ax, cx
    jae short @..local.l18
@..local.l17:
    jmp short @..local.l19
@..local.l18:
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    mov ax, 1
    ret
@..local.l19:
    mov ax, 0
    ret
math_loc_059a:
    mov ax, 0
    db 0xe8, 0x6b, 0xee ; call 0xf40b
    call math_loc_054f
    test ax, ax
    je short @..local.l20
    mov ax, word [data_82e8]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [data_82e8], dx
    call loc_51fb
    mov ax, 1
    ret
@..local.l20:
    mov ax, 0
    ret
loc_05c0:
    mov ax, 0
    db 0xe8, 0x45, 0xee ; call 0xf40b
    mov ax, 0x50
    push ax
    db 0xe8, 0xdc, 0xb1 ; call 0xb7a9
    pop cx
    cmp ax, strict word 0
    jle short @..local.l21
    mov ax, 0xa
    push ax
    call 0xe489
    pop cx
    jmp short @..local.l22
@..local.l21:
    mov ax, 0xa
    push ax
    db 0xe8, 0xa5, 0xde ; call 0xe489
    pop cx
@..local.l22:
    ret
api_idx_0004_2:
    mov ax, 0xfffc
    db 0xe8, 0x1f, 0xee ; call 0xf40b
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
@..api_idx_0004_2.l1:
    les bx, word [0x0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    cmp dx, word [bp - 0x0002]
    jg short @..api_idx_0004_2.l2
    jne short @..api_idx_0004_2.l3
    cmp ax, word [bp - 0x0004]
    jb short @..api_idx_0004_2.l3
@..api_idx_0004_2.l2:
    jmp short @..local.l25
@..api_idx_0004_2.l3:
    call 0xbaef
    test ax, ax
    je short @..local.l23
    ret
@..local.l23:
    call math_loc_059a
    test ax, ax
    jne short @..local.l24
    call loc_05c0
@..local.l24:
    jmp short @..api_idx_0004_2.l1
@..local.l25:
    ret
loc_0636:
    mov ax, 0
    db 0xe8, 0xcf, 0xed ; call 0xf40b
    mov ax, 0
    push ax
    mov ax, 8
    push ax
    mov ax, 0x8cfe
    push ax
    call 0xf306
    add sp, byte 6
    mov word [data_82ea], 0
    mov ax, word [bp + 0x4]
    jmp short @..local.l30
@..local.l26:
    mov ax, word [bp + 0x6]
    add word [data_8f44], ax
    jmp short @..local.l31
@..local.l27:
    mov ax, word [bp + 0x6]
    add word [data_8f46], ax
    jmp short @..local.l31
@..local.l28:
    mov ax, word [bp + 0x6]
    sub word [data_8f44], ax
    jmp short @..local.l31
@..local.l29:
    mov ax, word [bp + 0x6]
    sub word [data_8f46], ax
    jmp short @..local.l31
@..local.l30:
    cmp ax, strict word 0
    je short @..local.l26
    cmp ax, strict word 1
    je short @..local.l27
    cmp ax, strict word 2
    je short @..local.l28
    cmp ax, strict word 3
    je short @..local.l29
@..local.l31:
    ret
loc_0692:
    mov ax, 0
    db 0xe8, 0x73, 0xed ; call 0xf40b
    mov ax, word [data_8f46]
    mov word [data_8f3a], ax
    mov ax, word [data_8f44]
    mov word [data_8f38], ax
    mov ax, word [data_8f42]
    mov word [data_8f36], ax
    mov ax, word [data_8f40]
    mov word [data_8f34], ax
    mov ax, word [data_8f3e]
    mov word [data_8f32], ax
    mov ax, word [data_830c]
    mov word [data_8f3c], ax
    mov ax, word [data_82ee]
    mov word [data_8f30], ax
    ret
loc_06c3:
    mov ax, 0
    db 0xe8, 0x42, 0xed ; call 0xf40b
    mov ax, word [bp + 0x4]
    jmp short @..local.l36
@..local.l32:
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
    call 0xecf6
    add sp, byte 6
    ret
@..local.l33:
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
    db 0xe8, 0xda, 0xe5 ; call 0xecf6
    add sp, byte 6
    ret
@..local.l34:
    push word [bp + 0x6]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0xe]
    push word [bp + 0xc]
    call math_loc_1823
    add sp, byte 0x0a
    ret
@..local.l35:
    push word [bp + 0x6]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0xe]
    push word [bp + 0xc]
    call math_loc_189b
    add sp, byte 0x0a
    ret
@..local.l36:
    cmp ax, strict word 0
    jne short @..local.l37
    jmp near @..local.l32
@..local.l37:
    cmp ax, strict word 1
    je short @..local.l33
    cmp ax, strict word 2
    je short @..local.l34
    cmp ax, strict word 3
    je short @..local.l35
    ret
api_idx_0008:
    mov ax, 0xfff8
    db 0xe8, 0xa1, 0xec ; call 0xf40b
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
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
    db 0xe8, 0xee, 0xf2 ; call 0xfa90
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
    mov ax, 0x92
    push ax
    push word [bp - 0x0002]
    call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call 0xe84e
    add sp, byte 4
    mov ax, 0x98
    push ax
    push word [bp - 0x0004]
    mov ax, 0x92
    push ax
    push word [bp - 0x0002]
    db 0xe8, 0xd7, 0xe0 ; call 0xe8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0008]
    call 0xe94f
    add sp, byte 6
    db 0xe8, 0xfe, 0xe3 ; call 0xec17
    ret
api_idx_0050:
    mov ax, 0xffb0
    db 0xe8, 0xeb, 0xeb ; call 0xf40b
    lea ax, word [bp - 0x0050]
    push ax
    push word [bp + 0x4]
    call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0050]
    push ax
    call api_idx_0008
    pop cx
    ret
loc_0836:
    mov ax, 0
    db 0xe8, 0xcf, 0xeb ; call 0xf40b
    mov ax, word [bp + 0x4]
    mov word [data_8f46], ax
    mov ax, word [bp + 0x6]
    mov word [data_8f44], ax
    push ax
    push word [data_8f46]
    mov ax, 0x8f3e
    push ax
    mov ax, 0x8f40
    push ax
    mov ax, 0x8f42
    push ax
    call api_idx_0004
    add sp, byte 0x0a
    ret
loc_0860:
    mov ax, 0
    db 0xe8, 0xa5, 0xeb ; call 0xf40b
    mov word [data_918a], 0
    mov ax, word [data_830c]
    cmp ax, word [data_8f28]
    jne short @..local.l38
    mov ax, word [data_8f3e]
    cmp ax, word [data_8f2a]
    jne short @..local.l38
    mov ax, word [data_8f42]
    cmp ax, word [data_8f2e]
    jne short @..local.l38
    mov ax, word [data_8f40]
    cmp ax, word [data_8f2c]
    jne short @..local.l38
    mov word [data_918a], 1
@..local.l38:
    ret
api_idx_0004_3:
    mov ax, 0xfffc
    db 0xe8, 0x6e, 0xeb ; call 0xf40b
    mov ax, word [data_8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [data_8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [data_8f42]
    mov word [bp - 0x0002], ax
    mov word [bp - 0x0004], 0
    push ax
    mov ax, word [data_0e14]
    add ax, 0x9b0
    push ax
    db 0xe8, 0xac, 0xe3 ; call 0xec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0004_3.l3
    mov ax, word [data_830c]
    jmp short @..api_idx_0004_3.l2
    cmp word [data_8f3e], byte 0x0c
    jle short @..api_idx_0004_3.l1
    mov word [bp - 0x0004], 1
@..api_idx_0004_3.l1:
    jmp short @..api_idx_0004_3.l3
    mov word [bp - 0x0004], 1
    jmp short @..api_idx_0004_3.l3
    sub word [bx + di + 0x60], bx
    pop cx
    sub word [bx + di + 0x60], bx
    pop cx
    pushaw
    pop cx
    pushaw
    pop cx
    pushaw
    pop cx
    sub word [bx + di + 0x29], bx
    pop cx
    sub word [bx + di + 0x29], bx
    pop cx
    sub word [bx + di + 0x60], bx
    pop cx
    pushaw
    pop cx
    sbb bx, word [bx + di + 0x29]
    pop cx
@..api_idx_0004_3.l2:
    sub ax, strict word 0xf
    cmp ax, strict word 0x10
    jae short @..api_idx_0004_3.l3
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x5930]
@..api_idx_0004_3.l3:
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x8b0
    push ax
    db 0xe8, 0x4e, 0xe3 ; call 0xec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0004_3.l7
    mov ax, word [data_830c]
    jmp short @..api_idx_0004_3.l6
@..api_idx_0004_3.l4:
    mov word [bp - 0x0004], 1
    jmp short @..api_idx_0004_3.l7
@..api_idx_0004_3.l5:
    mov word [bp - 0x0004], 2
    jmp short @..api_idx_0004_3.l7
@..api_idx_0004_3.l6:
    cmp ax, strict word 8
    je short @..api_idx_0004_3.l4
    cmp ax, strict word 9
    je short @..api_idx_0004_3.l4
    cmp ax, strict word 0xa
    je short @..api_idx_0004_3.l4
    cmp ax, strict word 0xb
    je short @..api_idx_0004_3.l4
    cmp ax, strict word 0xc
    je short @..api_idx_0004_3.l4
    cmp ax, strict word 0x1b
    je short @..api_idx_0004_3.l5
@..api_idx_0004_3.l7:
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x930
    push ax
    db 0xe8, 0x09, 0xe3 ; call 0xec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0004_3.l14
    mov ax, word [data_830c]
    jmp short @..api_idx_0004_3.l13
@..api_idx_0004_3.l8:
    mov word [bp - 0x0004], 3
    jmp short @..api_idx_0004_3.l14
@..api_idx_0004_3.l9:
    jmp short @..api_idx_0004_3.l14
@..api_idx_0004_3.l10:
    mov word [bp - 0x0004], 1
    jmp short @..api_idx_0004_3.l14
@..api_idx_0004_3.l11:
    mov word [bp - 0x0004], 2
    jmp short @..api_idx_0004_3.l14
@..api_idx_0004_3.l12:
    mov word [bp - 0x0004], 4
    jmp short @..api_idx_0004_3.l14
@..api_idx_0004_3.l13:
    cmp ax, strict word 0
    je short @..api_idx_0004_3.l8
    cmp ax, strict word 0xa
    je short @..api_idx_0004_3.l9
    cmp ax, strict word 0xe
    je short @..api_idx_0004_3.l10
    cmp ax, strict word 0x13
    je short @..api_idx_0004_3.l10
    cmp ax, strict word 0x17
    je short @..api_idx_0004_3.l11
    cmp ax, strict word 0x19
    je short @..api_idx_0004_3.l9
    cmp ax, strict word 0x1f
    je short @..api_idx_0004_3.l10
    jmp short @..api_idx_0004_3.l12
@..api_idx_0004_3.l14:
    mov ax, word [bp - 0x0004]
    ret
api_idx_000c:
    mov ax, 0xfff4
    db 0xe8, 0x47, 0xea ; call 0xf40b
    call loc_0860
    mov ax, word [data_8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [data_8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [data_8f42]
    mov word [bp - 0x0002], ax
    mov ax, 6
    push ax
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x4b0
    push ax
    db 0xe8, 0x03, 0xe3 ; call 0xecf6
    add sp, byte 6
    mov word [bp - 0x0008], ax
    cmp ax, strict word 1
    je short @..api_idx_000c.l1
    cmp ax, strict word 2
    jne short @..local.l39
@..api_idx_000c.l1:
    mov ax, 2
    push ax
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x7b0
    push ax
    db 0xe8, 0xe2, 0xe2 ; call 0xecf6
    add sp, byte 6
    cmp ax, word [bp + 0x4]
    jne short @..local.l39
    mov ax, 1
    ret
@..local.l39:
    mov ax, word [data_8f46]
    mov word [bp - 0x000a], ax
    mov ax, word [data_8f44]
    mov word [bp - 0x000c], ax
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call loc_0636
    add sp, byte 4
    push word [data_8f44]
    push word [data_8f46]
    mov ax, 0x8f3e
    push ax
    mov ax, 0x8f40
    push ax
    mov ax, 0x8f42
    push ax
    call api_idx_0004
    add sp, byte 0x0a
    test ax, ax
    je short @..local.l40
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call loc_0836
    add sp, byte 4
    mov ax, 1
    ret
@..local.l40:
    mov ax, word [data_8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [data_8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [data_8f42]
    mov word [bp - 0x0002], ax
    push ax
    push word [bp + 0x6]
    db 0xe8, 0xeb, 0xe1 ; call 0xec74
    add sp, byte 4
    cmp ax, strict word 1
    je short @..local.l41
    push word [bp - 0x0002]
    mov ax, 0x8b7e
    push ax
    db 0xe8, 0xd9, 0xe1 ; call 0xec74
    add sp, byte 4
    cmp ax, strict word 1
    jne short @..local.l42
@..local.l41:
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call loc_0836
    add sp, byte 4
    mov ax, 1
    ret
@..local.l42:
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x8b0
    push ax
    db 0xe8, 0xb4, 0xe1 ; call 0xec74
    add sp, byte 4
    mov word [bp - 0x0004], ax
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x930
    push ax
    db 0xe8, 0xa1, 0xe1 ; call 0xec74
    add sp, byte 4
    mov word [bp - 0x0006], ax
    cmp word [data_918a], byte 0
    jne short @..local.l43
    call loc_0860
@..local.l43:
    cmp word [data_918a], byte 0
    jne short @..local.l44
    call api_idx_0004_3
    test ax, ax
    je short @..local.l45
@..local.l44:
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call loc_0836
    add sp, byte 4
    mov ax, 1
    ret
@..local.l45:
    mov si, word [data_8f3e]
    mov bx, word [data_0e12]
    mov al, byte [bx + si + 0xb40]
    sub ah, ah
    push ax
    push si
    push word [data_8f40]
    push word [data_8f42]
    call api_idx_0002_2
    add sp, byte 8
    cmp ax, strict word 0xffff
    je short @..local.l46
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call loc_0836
    add sp, byte 4
    mov ax, 1
    ret
@..local.l46:
    mov bx, word [data_0e12]
    mov si, word [data_8f3e]
    mov al, byte [bx + si + 0xb40]
    sub ah, ah
    mov word [data_8d12], ax
    mov ax, 0
    ret
api_idx_0002_5:
    mov ax, 0xfffe
    db 0xe8, 0xbc, 0xe8 ; call 0xf40b
    push word [data_8f44]
    push word [data_8f46]
    push word [data_8f40]
    push word [data_8f42]
    push word [data_8f3e]
    push word [data_82ee]
    call loc_06c3
    add sp, byte 0x0c
    mov word [bp - 0x0002], ax
    cmp ax, strict word 2
    jl short @..api_idx_0002_5.l1
    cmp ax, strict word 5
    jne short @..local.l47
@..api_idx_0002_5.l1:
    push word [bp + 0x4]
    push word [data_82ee]
    call api_idx_000c
    add sp, byte 4
    ret
@..local.l47:
    mov ax, 1
    ret
api_idx_000a:
    mov ax, 0xfff6
    db 0xe8, 0x79, 0xe8 ; call 0xf40b
    mov ax, word [data_8f46]
    mov word [bp - 0x0002], ax
    mov ax, word [data_8f44]
    mov word [bp - 0x0004], ax
    mov ax, word [data_8f42]
    mov word [bp - 0x0006], ax
    mov ax, word [data_8f40]
    mov word [bp - 0x0008], ax
    mov ax, word [data_8f3e]
    mov word [bp - 0x000a], ax
    mov ax, word [data_8f3a]
    mov word [data_8f46], ax
    mov ax, word [data_8f38]
    mov word [data_8f44], ax
    mov ax, word [data_8f36]
    mov word [data_8f42], ax
    mov ax, word [data_8f34]
    mov word [data_8f40], ax
    mov ax, word [data_8f32]
    mov word [data_8f3e], ax
    call math_loc_054f
    test ax, ax
    je short @..api_idx_000a.l1
    mov ax, word [data_82e8]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [data_82e8], dx
@..api_idx_000a.l1:
    call loc_51fb
    mov ax, 2
    push ax
    call 0xb75e
    pop cx
    mov ax, word [bp - 0x0002]
    mov word [data_8f46], ax
    mov ax, word [bp - 0x0004]
    mov word [data_8f44], ax
    mov ax, word [bp - 0x0006]
    mov word [data_8f42], ax
    mov ax, word [bp - 0x0008]
    mov word [data_8f40], ax
    mov ax, word [bp - 0x000a]
    mov word [data_8f3e], ax
    ret
loc_0c0d:
    mov ax, 0
    db 0xe8, 0xf8, 0xe7 ; call 0xf40b
    mov ax, 0x7f9
    push ax
    call api_idx_0050
    pop cx
    mov ax, 1
    ret
api_idx_008a:
    mov ax, 0xff76
    db 0xe8, 0xe6, 0xe7 ; call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0x80
    push ax
    lea ax, word [bp - 0x008a]
    push ax
    db 0xe8, 0xd1, 0xe6 ; call 0xf306
    add sp, byte 6
    mov word [data_905e], 0x17
    mov word [data_830a], 5
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    db 0xe8, 0x83, 0xdc ; call 0xe8da
    add sp, byte 8
    mov word [bp - 0x0006], 0
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
    lea ax, word [bp - 0x008a]
    push ax
    call 0xec41
    add sp, byte 6
    mov ax, word [data_82ee]
    mov word [bp - 0x0002], ax
    mov ax, word [data_830c]
    cmp ax, word [data_8f3c]
    jne short @..api_idx_008a.l1
    mov ax, word [data_8f30]
    inc ax
    inc ax
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
@..api_idx_008a.l1:
    mov ax, word [data_82ee]
    inc ax
    inc ax
    inc ax
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    cmp ax, word [bp - 0x0002]
    jne short @..api_idx_008a.l2
    mov ax, 3
    jmp short @..api_idx_008a.l3
@..api_idx_008a.l2:
    mov ax, 1
@..api_idx_008a.l3:
    mov word [bp - 0x0004], ax
@..api_idx_008a.l4:
    mov ax, word [data_82ee]
    cmp ax, word [bp - 0x0002]
    je short @..api_idx_008a.l7
    add ax, word [bp - 0x0004]
    mov cx, 4
    cwd
    idiv cx
    mov word [data_82ee], dx
    call math_loc_054f
    test ax, ax
    je short @..api_idx_008a.l5
    mov ax, word [data_82e8]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [data_82e8], dx
@..api_idx_008a.l5:
    call loc_51fb
    cmp word [bp - 0x0006], byte 0
    jne short @..api_idx_008a.l6
    call loc_0c0d
    mov word [bp - 0x0006], ax
@..api_idx_008a.l6:
    mov ax, 2
    push ax
    db 0xe8, 0x5c, 0xaa ; call 0xb75e
    pop cx
    jmp short @..api_idx_008a.l4
@..api_idx_008a.l7:
    mov word [bp - 0x0008], 0xffff
@..api_idx_008a.l8:
    mov word [bp - 0x000a], 0
    call loc_0692
    cmp word [bp - 0x0008], byte 0xff
    jne short @..api_idx_008a.l9
    jmp near @..api_idx_008a.l14
@..api_idx_008a.l9:
    mov ax, 4
    push ax
    db 0xe8, 0x87, 0xaa ; call 0xb7a9
    pop cx
    test ax, ax
    jne short @..api_idx_008a.l14
    mov ax, word [data_82ee]
    add ax, word [bp - 0x0008]
    mov cx, 4
    cwd
    idiv cx
    mov word [data_82ee], dx
    lea ax, word [bp - 0x008a]
    push ax
    call api_idx_0002_5
    pop cx
    test ax, ax
    jne short @..api_idx_008a.l11
    cmp word [bp - 0x0006], byte 0
    jne short @..api_idx_008a.l10
    call loc_0c0d
    mov word [bp - 0x0006], ax
@..api_idx_008a.l10:
    call api_idx_000a
    mov word [bp - 0x000a], 1
    jmp short @..api_idx_008a.l14
@..api_idx_008a.l11:
    mov ax, word [data_82ee]
    inc ax
    inc ax
    mov cx, 4
    cwd
    idiv cx
    mov word [data_82ee], dx
    lea ax, word [bp - 0x008a]
    push ax
    call api_idx_0002_5
    pop cx
    test ax, ax
    jne short @..api_idx_008a.l13
    cmp word [bp - 0x0006], byte 0
    jne short @..api_idx_008a.l12
    call loc_0c0d
    mov word [bp - 0x0006], ax
@..api_idx_008a.l12:
    call api_idx_000a
    mov word [bp - 0x000a], 1
    jmp short @..api_idx_008a.l14
@..api_idx_008a.l13:
    mov ax, word [data_8f30]
    mov word [data_82ee], ax
@..api_idx_008a.l14:
    cmp word [bp - 0x000a], byte 0
    je short @..api_idx_008a.l15
    jmp near @..local.l48
@..api_idx_008a.l15:
    lea ax, word [bp - 0x008a]
    push ax
    call api_idx_0002_5
    pop cx
    cmp ax, strict word 1
    je short @..api_idx_008a.l16
    jmp near @..local.l48
@..api_idx_008a.l16:
    mov ax, 2
    push ax
    db 0xe8, 0xf6, 0xa9 ; call 0xb7a9
    pop cx
    test ax, ax
    jne short @..api_idx_008a.l17
    mov ax, 1
    jmp short @..api_idx_008a.l18
@..api_idx_008a.l17:
    mov ax, 3
@..api_idx_008a.l18:
    add ax, word [data_82ee]
    mov cx, 4
    cwd
    idiv cx
    mov word [data_82ee], dx
    lea ax, word [bp - 0x008a]
    push ax
    call api_idx_0002_5
    pop cx
    test ax, ax
    jne short @..api_idx_008a.l19
    call api_idx_000a
    jmp short @..local.l48
@..api_idx_008a.l19:
    mov ax, word [data_82ee]
    inc ax
    inc ax
    mov cx, 4
    cwd
    idiv cx
    mov word [data_82ee], dx
    lea ax, word [bp - 0x008a]
    push ax
    call api_idx_0002_5
    pop cx
    test ax, ax
    jne short @..api_idx_008a.l20
    call api_idx_000a
    jmp short @..local.l48
@..api_idx_008a.l20:
    mov ax, word [data_8f30]
    mov word [data_82ee], ax
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    db 0xe8, 0xc0, 0xda ; call 0xe8da
    add sp, byte 8
    ret
@..local.l48:
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
    lea ax, word [bp - 0x008a]
    push ax
    db 0xe8, 0xfe, 0xdd ; call 0xec41
    add sp, byte 6
    call math_loc_054f
    test ax, ax
    je short @..local.l49
    mov ax, word [data_82e8]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [data_82e8], dx
@..local.l49:
    call loc_51fb
    cmp word [bp - 0x0006], byte 0
    jne short @..local.l50
    call loc_0c0d
    mov word [bp - 0x0006], ax
@..local.l50:
    mov ax, 2
    push ax
    db 0xe8, 0xed, 0xa8 ; call 0xb75e
    pop cx
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    db 0xe8, 0x55, 0xda ; call 0xe8da
    add sp, byte 8
    mov ax, 2
    push ax
    db 0xe8, 0x1a, 0xa9 ; call 0xb7a9
    pop cx
    test ax, ax
    je short @..local.l51
    mov ax, 1
    jmp short @..local.l52
@..local.l51:
    mov ax, 3
@..local.l52:
    mov word [bp - 0x0008], ax
    dec word [bp + 0x4]
    cmp word [bp + 0x4], byte 0
    jle short @..local.l53
    jmp near @..api_idx_008a.l8
@..local.l53:
    ret
math_loc_0eac:
    mov ax, 0
    db 0xe8, 0x59, 0xe5 ; call 0xf40b
    push word [bp + 0x4]
    call api_idx_0050
    pop cx
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
    push word [data_905a]
    call api_idx_0004_2
    pop cx
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    db 0xe8, 0xfe, 0xd9 ; call 0xe8da
    add sp, byte 8
    ret
api_idx_0012:
    mov ax, 0xffee
    db 0xe8, 0x25, 0xe5 ; call 0xf40b
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0008], ax
    mov ax, word [bx + si + 0x1e0]
    mov cx, 0x10
    cwd
    idiv cx
    mov word [bp - 0x000a], ax
    mov ax, word [bx + si + 0x1e0]
    cwd
    idiv cx
    mov word [bp - 0x000c], dx
@..api_idx_0012.l1:
    call 0xceb1
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0012.l2
    jmp near @..local.l57
@..api_idx_0012.l2:
    mov word [bp - 0x0010], 0
    mov word [bp - 0x0012], 0
    mov cx, 0x248
    imul cx
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jb short @..api_idx_0012.l3
    mov ax, 1
    push ax
    mov ax, 7
    push ax
    push word [bp - 0x0008]
    call 0xed3a
    add sp, byte 6
    test ax, ax
    jne short @..api_idx_0012.l3
    jmp near @..local.l56
@..api_idx_0012.l3:
    push word [bp - 0x000a]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
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
    mov word [bp - 0x000e], ax
    mov word [bp - 0x0002], 0
@..api_idx_0012.l4:
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    push word [bp - 0x0008]
    db 0xe8, 0xb2, 0xdd ; call 0xed3a
    add sp, byte 6
    cmp ax, strict word 1
    je short @..api_idx_0012.l5
    jmp near @..local.l55
@..api_idx_0012.l5:
    cmp word [bp - 0x0002], byte 7
    jge short @..api_idx_0012.l6
    mov word [bp - 0x0010], 1
@..api_idx_0012.l6:
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jle short @..api_idx_0012.l7
    cmp ax, strict word 0xf
    jge short @..api_idx_0012.l7
    mov word [bp - 0x0012], 2
@..api_idx_0012.l7:
    jmp near @..local.l54
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    push word [bx + 0x5c12]
    mov ax, 0
    push ax
    mov ax, word [bx + 0x5c10]
    add ax, word [bp - 0x000e]
    push ax
    call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    pop ax
    mov word [bx + 0x5c10], ax
    jmp near @..local.l55
    mov word [bp - 0x0004], 0
@..api_idx_0012.l8:
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x5c1e]
    mov ax, 0
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    db 0xe8, 0xde, 0xc0 ; call 0xd0ea
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
    db 0xe8, 0x9b, 0xc0 ; call 0xd0be
    add sp, byte 4
    push ax
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov cx, ax
    mov dx, word [bp - 0x0004]
    shl dx, 1
    shl dx, 1
    add ax, dx
    mov bx, ax
    pop ax
    add ax, word [bx + 0x5c1c]
    push ax
    db 0xe8, 0x7f, 0xa7 ; call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov cx, ax
    mov dx, word [bp - 0x0004]
    shl dx, 1
    shl dx, 1
    add ax, dx
    mov bx, ax
    pop ax
    mov word [bx + 0x5c1c], ax
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 6
    jge short @..api_idx_0012.l9
    jmp near @..api_idx_0012.l8
@..api_idx_0012.l9:
    jmp near @..local.l55
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    push word [bx + 0x5c0e]
    mov ax, 0
    push ax
    mov ax, word [bx + 0x5c0c]
    add ax, word [bp - 0x000e]
    push ax
    db 0xe8, 0x37, 0xa7 ; call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    pop ax
    mov word [bx + 0x5c0c], ax
    jmp near @..local.l55
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    mov byte [bx + 0x5e32], 0
    mov byte [bx + 0x5d5f], 0
    jmp near @..local.l55
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    mov byte [bx + 0x5d5d], 0
    jmp near @..local.l55
    mov ax, 0x248
    imul word [bp - 0x0006]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 2
    jne short @..api_idx_0012.l10
    mov byte [bx + 0x5e2f], 0
@..api_idx_0012.l10:
    mov byte [bx + 0x5d60], 0
    jmp near @..local.l55

    db 0xc7, 0x46, 0xfc, 0x01, 0x00, 0x8b, 0x46, 0xfc, 0x3d, 0x01, 0x00, 0x74, 0x14, 0x3d, 0x02, 0x00
    db 0x74, 0x0f, 0x3d, 0x04, 0x00, 0x74, 0x0a, 0x3d, 0x08, 0x00, 0x74, 0x05, 0x3d, 0x09, 0x00, 0x75
    db 0x14, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x8b, 0xc8, 0x8b, 0x46, 0xfc, 0x03, 0xc8, 0x8b, 0xd9
    db 0xc6, 0x87, 0x5a, 0x5d, 0x00, 0xff, 0x46, 0xfc, 0x8b, 0x46, 0xfc, 0x3d, 0x09, 0x00, 0x7e, 0xc5
    db 0xe9, 0x02, 0x02, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x8b, 0xd8, 0xc6, 0x87, 0x2f, 0x5e, 0x00
    db 0x8b, 0x87, 0x0e, 0x5c, 0x89, 0x87, 0x0c, 0x5c, 0x8b, 0x87, 0x12, 0x5c, 0x89, 0x87, 0x10, 0x5c
    db 0xe9, 0xe2, 0x01, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x8b, 0xd8, 0xff, 0xb7, 0x12, 0x5c, 0xb8
    db 0x00, 0x00, 0x50, 0x8b, 0x87, 0x10, 0x5c, 0x2b, 0x46, 0xf2, 0x50, 0xe8, 0x64, 0xa6, 0x83, 0xc4
    db 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x8b, 0xd8, 0x58, 0x89, 0x87, 0x10, 0x5c, 0x3d
    db 0x00, 0x00, 0x7f, 0x25, 0x8a, 0x87, 0x5c, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8, 0x51, 0xb8, 0x06, 0x00
    db 0x50, 0xe8, 0x25, 0xa6, 0x59, 0x59, 0x03, 0xc1, 0x05, 0x06, 0x00, 0x50, 0xb8, 0x48, 0x02, 0xf7
    db 0x6e, 0xfa, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x5c, 0x5d, 0xe9, 0x89, 0x01, 0xc7, 0x46, 0xfc, 0x00
    db 0x00, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x8b, 0x4e, 0xfc, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1
    db 0x8b, 0xd8, 0xff, 0xb7, 0x1e, 0x5c, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf4
    db 0xff, 0x76, 0xf6, 0xe8, 0x24, 0xbf, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4
    db 0x8c, 0xd2, 0x8e, 0xc2, 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0xe1, 0xbe, 0x83, 0xc4, 0x04
    db 0x8b, 0xc8, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x8b, 0x56, 0xfc, 0xd1, 0xe2, 0xd1, 0xe2, 0x03
    db 0xc2, 0x8b, 0xd8, 0x8b, 0x87, 0x1c, 0x5c, 0x2b, 0xc1, 0x50, 0xe8, 0xc5, 0xa5, 0x83, 0xc4, 0x06
    db 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x8b, 0xc8, 0x8b, 0x56, 0xfc, 0xd1, 0xe2, 0xd1, 0xe2
    db 0x03, 0xc2, 0x8b, 0xd8, 0x58, 0x89, 0x87, 0x1c, 0x5c, 0xff, 0x46, 0xfc, 0x8b, 0x46, 0xfc, 0x3d
    db 0x06, 0x00, 0x7d, 0x03, 0xe9, 0x7a, 0xff, 0xe9, 0xfb, 0x00, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa
    db 0x8b, 0xd8, 0xff, 0xb7, 0x0e, 0x5c, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x87, 0x0c, 0x5c, 0x2b, 0x46
    db 0xf2, 0x50, 0xe8, 0x7d, 0xa5, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x8b
    db 0xd8, 0x58, 0x89, 0x87, 0x0c, 0x5c, 0x3d, 0x00, 0x00, 0x7f, 0x1f, 0xc6, 0x87, 0x2f, 0x5e, 0x03
    db 0xc7, 0x87, 0x0c, 0x5c, 0x00, 0x00, 0xc7, 0x87, 0x10, 0x5c, 0x00, 0x00, 0x8a, 0x87, 0x2c, 0x5e
    db 0x2a, 0xe4, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x67, 0xa5, 0x59, 0xe9, 0xa8, 0x00, 0xb8, 0x48, 0x02
    db 0xf7, 0x6e, 0xfa, 0x8b, 0xd8, 0x8a, 0x87, 0x32, 0x5e, 0x2a, 0xe4, 0x3b, 0x46, 0xf6, 0x7d, 0x07
    db 0x8a, 0x46, 0xf6, 0x88, 0x87, 0x32, 0x5e, 0x8a, 0x87, 0x5f, 0x5d, 0x2a, 0xe4, 0x3b, 0x46, 0xf2
    db 0x7d, 0x07, 0x8a, 0x46, 0xf2, 0x88, 0x87, 0x5f, 0x5d, 0xe9, 0x79, 0x00, 0xb8, 0x48, 0x02, 0xf7
    db 0x6e, 0xfa, 0x8b, 0xd8, 0x8a, 0x87, 0x5d, 0x5d, 0x2a, 0xe4, 0x3b, 0x46, 0xf2, 0x7d, 0x07, 0x8a
    db 0x46, 0xf2, 0x88, 0x87, 0x5d, 0x5d, 0xeb, 0x5d, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x8b, 0xd8
    db 0x80, 0xbf, 0x2f, 0x5e, 0x02, 0x73, 0x05, 0xc6, 0x87, 0x2f, 0x5e, 0x02, 0xeb, 0x47, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0xfa, 0x8b, 0xd8, 0x8a, 0x87, 0x5c, 0x5d, 0x2a, 0xe4, 0x3b, 0x46, 0xf2, 0x7d
    db 0x07, 0x8a, 0x46, 0xf2, 0x88, 0x87, 0x5c, 0x5d, 0xeb, 0x2b, 0xfa, 0x5f, 0x29, 0x60, 0xb7, 0x60
    db 0xe6, 0x60, 0xfb, 0x60, 0x0b
    db "a'aja"
    db 0x8a, 0x61, 0xe3, 0x61, 0x71, 0x62, 0xc4, 0x62, 0xf3, 0x62, 0x0f, 0x63, 0x25, 0x63

@..local.l54:
    cmp ax, strict word 0xf
    jae short @..local.l55
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6341]
@..local.l55:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x10
    jge short @..local.l56
    jmp near @..api_idx_0012.l4
@..local.l56:
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    call 0xcb3a
    add sp, byte 4
    mov ax, word [bp - 0x0010]
    add ax, word [bp - 0x0012]
    add ax, 0x800
    push ax
    call math_loc_0eac
    pop cx
    jmp near @..api_idx_0012.l1
@..local.l57:
    inc word [data_8d12]
    ret
api_idx_004c:
    mov ax, 0xffb4
    db 0xe8, 0xaf, 0xe0 ; call 0xf40b
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
    db 0xe8, 0x1d, 0xbd ; call 0xd0be
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
api_idx_0004_4:
    mov ax, 0xfffc
    db 0xe8, 0x9a, 0xdf ; call 0xf40b
    mov word [bp - 0x0002], 0
@..api_idx_0004_4.l1:
    mov word [bp - 0x0004], 0
@..api_idx_0004_4.l2:
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
    jne short @..local.l58
    mov ax, word [bp - 0x0002]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x0004]
    ret
@..local.l58:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0xa
    jl short @..api_idx_0004_4.l2
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 2
    jl short @..api_idx_0004_4.l1
    mov ax, 0xffff
    ret
api_idx_0006:
    mov ax, 0xfffa
    db 0xe8, 0x3e, 0xdf ; call 0xf40b
    mov ax, word [data_0e0e]
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0002], 0
    jmp short @..local.l60
@..api_idx_0006.l1:
    mov bx, word [bp - 0x0006]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [data_830c]
    jne short @..local.l59
    mov ax, word [data_8f3e]
    xchg al, ah
    sub al, al
    mov dx, word [data_8f42]
    mov cx, 4
    shl dx, cl
    mov cx, dx
    add ax, cx
    add ax, word [data_8f40]
    mov word [bp - 0x0004], ax
    cmp ax, word [bx + 0x2]
    jne short @..local.l59
    mov ax, bx
    ret
@..local.l59:
    add word [bp - 0x0006], byte 8
    inc word [bp - 0x0002]
@..local.l60:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_5910]
    jl short @..api_idx_0006.l1
    mov ax, 0
    ret
api_idx_0008_2:
    mov ax, 0xfff8
    db 0xe8, 0xe7, 0xde ; call 0xf40b
    push word [bp + 0x4]
    call api_idx_0004_4
    pop cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..local.l61
    mov ax, 0
    push ax
    db 0xe8, 0xa6, 0xa2 ; call 0xb7e0
    pop cx
    ret
@..local.l61:
    mov ax, word [bp - 0x0002]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0006], dx
    call api_idx_0006
    mov word [bp - 0x0008], ax
    test ax, ax
    je short @..local.l64
    mov bx, ax
    mov al, byte [bx + 0x1]
    sub ah, ah
    test ax, 0x80
    je short @..local.l62
    mov ax, 1
    jmp short @..local.l63
@..local.l62:
    mov ax, 0
@..local.l63:
    push ax
    mov al, byte [bx + 0x6]
    sub ah, ah
    push ax
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
    add ax, 0x5c34
    push ax
    push word [bx + 0x4]
    push word [bp + 0x4]
    call api_idx_004c
    add sp, byte 0x0a
    mov bx, word [bp - 0x0008]
    mov byte [bx], 0xff
    jmp short @..local.l65
@..local.l64:
    mov ax, 0
    push ax
    db 0xe8, 0x33, 0xa2 ; call 0xb7e0
    pop cx
@..local.l65:
    ret
math_loc_15af:
    mov ax, 0xfdae
    db 0xe8, 0x56, 0xde ; call 0xf40b
    mov ax, word [bp + 0x4]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xfc
    imul cx
    add ax, strict word 5
    mov word [bp - 0x0250], ax
    mov ax, word [bp + 0x4]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 0x2d
    imul cx
    add ax, strict word 0x12
    mov word [bp - 0x0252], ax
    mov ax, 0x17
    push ax
    mov ax, word [bp - 0x0252]
    add ax, strict word 0x24
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    db 0xe8, 0x96, 0xe4 ; call 0xfa90
    pop cx
    mov cx, 6
    imul cx
    add ax, word [bp - 0x0250]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0252]
    add ax, strict word 0x20
    push ax
    mov ax, word [bp - 0x0250]
    inc ax
    inc ax
    inc ax
    push ax
    call 0xe901
    add sp, byte 0x0a
    mov ax, 0x17
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0xfa, 0xd1 ; call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0252]
    add ax, strict word 0x20
    push ax
    mov ax, word [bp - 0x0250]
    add ax, strict word 4
    push ax
    db 0xe8, 0xca, 0xd1 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    db 0xe8, 0xfb, 0xd1 ; call 0xe84e
    add sp, byte 4
    mov ax, word [bp - 0x0252]
    add ax, strict word 0x24
    push ax
    mov ax, word [bp - 0x0250]
    add ax, strict word 0x2d
    push ax
    mov ax, word [bp - 0x0252]
    add ax, strict word 0x20
    push ax
    mov ax, word [bp - 0x0250]
    inc ax
    inc ax
    inc ax
    push ax
    db 0xe8, 0x61, 0xd2 ; call 0xe8da
    add sp, byte 8
    db 0xe8, 0x32, 0xb8 ; call 0xceb1
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short @..math_loc_15af.l1
    cmp ax, word [bp + 0x4]
    jne short @..local.l66
@..math_loc_15af.l1:
    mov ax, 1
    push ax
    push word [bp + 0x4]
    db 0xe8, 0xa4, 0xb4 ; call 0xcb3a
    add sp, byte 4
    ret
@..local.l66:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov si, ax
    add ax, 0x5bf4
    mov si, ax
    lea di, word [bp - 0x024a]
    mov cx, ds
    mov es, cx
    mov cx, 0x124
    rep movsw
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x750e]
    mov word [bp - 0x024c], ax
    mov ax, word [bx + 0x69bc]
    mov word [bp - 0x024e], ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov si, ax
    add ax, 0x5bf4
    mov si, ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov di, ax
    add ax, 0x5bf4
    mov di, ax
    mov cx, ds
    mov es, cx
    mov cx, 0x124
    rep movsw
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x750e]
    mov cx, word [bp + 0x4]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x750e], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x69bc]
    mov bx, cx
    mov word [bx + 0x69bc], ax
    lea si, word [bp - 0x024a]
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov di, ax
    add ax, 0x5bf4
    mov di, ax
    mov cx, ds
    mov es, cx
    mov cx, 0x124
    rep movsw
    mov ax, word [bp - 0x024c]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x750e], ax
    mov ax, word [bp - 0x024e]
    mov word [bx + 0x69bc], ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx + 0x69a6]
    push word [bx + 0x69a4]
    db 0xe8, 0xf1, 0xd1 ; call 0xe94f
    add sp, byte 6
    mov ax, word [bp + 0x4]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xfc
    imul cx
    add ax, strict word 5
    mov word [bp - 0x0250], ax
    mov ax, word [bp + 0x4]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 0x2d
    imul cx
    add ax, strict word 0x12
    mov word [bp - 0x0252], ax
    add ax, strict word 0x2b
    push ax
    mov ax, word [bp - 0x0250]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0252]
    push word [bp - 0x0250]
    db 0xe8, 0x36, 0xd1 ; call 0xe8da
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx + 0x69a6]
    push word [bx + 0x69a4]
    db 0xe8, 0x90, 0xd1 ; call 0xe94f
    add sp, byte 6
    mov ax, word [bp - 0x0002]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xfc
    imul cx
    add ax, strict word 5
    mov word [bp - 0x0250], ax
    mov ax, word [bp - 0x0002]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 0x2d
    imul cx
    add ax, strict word 0x12
    mov word [bp - 0x0252], ax
    add ax, strict word 0x2b
    push ax
    mov ax, word [bp - 0x0250]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0252]
    push word [bp - 0x0250]
    db 0xe8, 0xd5, 0xd0 ; call 0xe8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp + 0x4]
    db 0xe8, 0x28, 0xb3 ; call 0xcb3a
    add sp, byte 4
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    db 0xe8, 0x1b, 0xb3 ; call 0xcb3a
    add sp, byte 4
    ret
math_loc_1823:
    mov ax, 0
    db 0xe8, 0xe2, 0xdb ; call 0xf40b
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
    je short @..local.l67
    mov ax, word [data_5b6e]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short @..math_loc_1823.l1
    mov ax, cx
    jmp short @..math_loc_1823.l4
@..math_loc_1823.l1:
    mov ax, word [data_5b6e]
    cmp ax, strict word 6
    je short @..math_loc_1823.l2
    cmp word [data_9188], byte 0
    je short @..math_loc_1823.l3
@..math_loc_1823.l2:
    mov ax, 0
    jmp short @..math_loc_1823.l4
@..math_loc_1823.l3:
    mov ax, 4
@..math_loc_1823.l4:
    ret
@..local.l67:
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
    db 0xe8, 0x5f, 0xd4 ; call 0xecf6
    add sp, byte 6
    ret
math_loc_189b:
    mov ax, 0
    db 0xe8, 0x6a, 0xdb ; call 0xf40b
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
    je short @..local.l68
    mov ax, word [data_5b6e]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short @..math_loc_189b.l1
    mov ax, cx
    jmp short @..math_loc_189b.l4
@..math_loc_189b.l1:
    mov ax, word [data_5b6e]
    cmp ax, strict word 6
    je short @..math_loc_189b.l2
    cmp word [data_9188], byte 0
    je short @..math_loc_189b.l3
@..math_loc_189b.l2:
    mov ax, 0
    jmp short @..math_loc_189b.l4
@..math_loc_189b.l3:
    mov ax, 4
@..math_loc_189b.l4:
    ret
@..local.l68:
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
    db 0xe8, 0xe7, 0xd3 ; call 0xecf6
    add sp, byte 6
    ret
loc_1913:
    mov ax, 0
    db 0xe8, 0xf2, 0xda ; call 0xf40b
    mov ax, 0xffff
    cmp word [data_91a4], byte 0
    je short @..local.l69
    mov ax, word [bp + 0x4]
@..local.l69:
    ret
loc_1927:
    mov ax, 0
    db 0xe8, 0xde, 0xda ; call 0xf40b
    mov ax, word [bp + 0x4]
    cmp word [data_91a4], byte 0
    je short @..local.l70
    mov ax, word [bp + 0x6]
@..local.l70:
    ret
loc_193b:
    mov ax, 0
    db 0xe8, 0xca, 0xda ; call 0xf40b
    mov ax, 0xffff
    cmp word [data_91a6], byte 0
    je short @..local.l71
    mov ax, word [bp + 0x4]
@..local.l71:
    ret
loc_194f:
    mov ax, 0
    db 0xe8, 0xb6, 0xda ; call 0xf40b
    mov ax, word [bp + 0x4]
    cmp word [data_91a6], byte 0
    je short @..local.l72
    mov ax, word [bp + 0x6]
@..local.l72:
    ret
loc_1963:
    mov ax, 0
    db 0xe8, 0xa2, 0xda ; call 0xf40b
    mov ax, word [data_82ee]
    jmp short @..local.l77
@..local.l73:
    mov ax, word [bp + 0xe]
    mov bx, word [bp + 0x4]
    add word [bx], ax
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 0x6]
    add word [bx], ax
    jmp short @..local.l78
@..local.l74:
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 0x4]
    add word [bx], ax
    mov ax, word [bp + 0xe]
    mov bx, word [bp + 0x6]
    sub word [bx], ax
    jmp short @..local.l78
@..local.l75:
    mov ax, word [bp + 0xe]
    mov bx, word [bp + 0x4]
    sub word [bx], ax
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 0x6]
    sub word [bx], ax
    jmp short @..local.l78
@..local.l76:
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 0x4]
    sub word [bx], ax
    mov ax, word [bp + 0xe]
    mov bx, word [bp + 0x6]
    add word [bx], ax
    jmp short @..local.l78
@..local.l77:
    cmp ax, strict word 0
    je short @..local.l73
    cmp ax, strict word 1
    je short @..local.l74
    cmp ax, strict word 2
    je short @..local.l75
    cmp ax, strict word 3
    je short @..local.l76
@..local.l78:
    mov bx, word [bp + 0x6]
    push word [bx]
    mov bx, word [bp + 0x4]
    push word [bx]
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    call api_idx_0004
    add sp, byte 0x0a
    ret
loc_19e4:
    mov ax, 0
    db 0xe8, 0x21, 0xda ; call 0xf40b
    mov ax, 6
    push ax
    push word [bp + 0x4]
    mov ax, word [data_0e14]
    add ax, 0x4b0
    push ax
    db 0xe8, 0xfb, 0xd2 ; call 0xecf6
    add sp, byte 6
    mov bx, word [bp + 0x6]
    mov word [bx], ax
    mov ax, 2
    push ax
    push word [bp + 0x4]
    mov ax, word [data_0e14]
    add ax, 0x7b0
    push ax
    db 0xe8, 0xe2, 0xd2 ; call 0xecf6
    add sp, byte 6
    mov bx, word [bp + 0x8]
    mov word [bx], ax
    ret
api_idx_0008_3:
    mov ax, 0xfff8
    db 0xe8, 0xe8, 0xd9 ; call 0xf40b
    cmp word [bp + 0xe], byte 0
    jne short @..api_idx_0008_3.l1
    jmp near @..local.l80
@..api_idx_0008_3.l1:
    mov ax, 0
    push ax
    push word [bp + 0xe]
    lea ax, word [bp + 0xc]
    push ax
    lea ax, word [bp + 0xa]
    push ax
    lea ax, word [bp + 0x8]
    push ax
    lea ax, word [bp + 0x6]
    push ax
    lea ax, word [bp + 0x4]
    push ax
    call loc_1963
    add sp, byte 0x0e
    test ax, ax
    je short @..local.l80
    mov ax, word [data_91a8]
    jmp short @..local.l79
    mov ax, 2
    ret

    db 0x83, 0x3e, 0x88, 0x91, 0x00, 0x74, 0x04, 0xb8, 0x00, 0x00, 0xc3, 0xb8, 0x05, 0x00, 0xf7, 0x2e
    db 0xaa, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0xae, 0x91, 0x01, 0xb8, 0x04, 0x00, 0xc3
    db 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0xae, 0x91
    db 0x03, 0xb8, 0x00, 0x00, 0xc3, 0x9d, 0x6a, 0xac, 0x6a, 0x9d, 0x6a, 0xa1, 0x6a, 0x9d, 0x6a, 0xc1
    db 0x6a

@..local.l79:
    cmp ax, strict word 6
    jae short @..local.l80
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6ad6]
@..local.l80:
    mov ax, word [bp + 0xc]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xa]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0x8]
    mov word [bp - 0x0002], ax
    push ax
    mov ax, word [data_0e14]
    add ax, 0x9b0
    push ax
    db 0xe8, 0xa8, 0xd1 ; call 0xec74
    add sp, byte 4
    test ax, ax
    je short @..local.l82
    mov ax, word [data_91a8]
    jmp short @..local.l81

    db 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0xae, 0x91
    db 0x03, 0xeb, 0x3f, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6
    db 0x87, 0xae, 0x91, 0x01, 0xeb, 0x2c, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x03, 0x46, 0x0e
    db 0x8b, 0xd8, 0xc6, 0x87, 0xae, 0x91, 0x02, 0xeb, 0x19, 0x1f
    db 'k2kEk2k'
    db 0x1f, 0x6b, 0x32, 0x6b

@..local.l81:
    cmp ax, strict word 6
    jae short @..local.l82
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6b58]
@..local.l82:
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x8b0
    push ax
    db 0xe8, 0x3d, 0xd1 ; call 0xec74
    add sp, byte 4
    test ax, ax
    jne short @..local.l83
    jmp near @..local.l85
@..local.l83:
    mov ax, word [data_91a8]
    jmp short @..local.l84

    db 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0xae, 0x91
    db 0x02, 0xeb, 0x60, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6
    db 0x87, 0xc7, 0x91, 0x01, 0xeb, 0x4d, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x03, 0x46, 0x0e
    db 0x8b, 0xd8, 0xc6, 0x87, 0xae, 0x91, 0x03, 0xeb, 0x3a, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91
    db 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0xe0, 0x91, 0x01, 0x83, 0x3e, 0xaa, 0x91, 0x04, 0x7d
    db 0x05, 0xc6, 0x87, 0xe5, 0x91, 0x01, 0xb8, 0x00, 0x00, 0xc3, 0xc6, 0x6b, 0x8d, 0x6b, 0xa0, 0x6b
    db 0xc6, 0x6b, 0xa0, 0x6b, 0xb3, 0x6b

@..local.l84:
    cmp ax, strict word 6
    jae short @..local.l85
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6be7]
@..local.l85:
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x930
    push ax
    db 0xe8, 0xae, 0xd0 ; call 0xec74
    add sp, byte 4
    test ax, ax
    je short @..local.l90
    mov ax, word [data_830c]
    jmp short @..local.l89
@..local.l86:
    mov ax, 5
    imul word [data_91aa]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx - 0x6e52], 3
    jmp short @..local.l90
@..local.l87:
    mov ax, 5
    imul word [data_91aa]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx - 0x6e20], 2
    cmp word [data_91aa], byte 4
    jge short @..local.l88
    mov byte [bx - 0x6e1b], 2
@..local.l88:
    jmp short @..local.l90
@..local.l89:
    cmp ax, strict word 0xa
    je short @..local.l87
    cmp ax, strict word 0xe
    je short @..local.l86
    cmp ax, strict word 0x13
    je short @..local.l86
    cmp ax, strict word 0x19
    je short @..local.l87
    cmp ax, strict word 0x1f
    je short @..local.l86
@..local.l90:
    mov ax, word [data_82ee]
    jmp short @..local.l95
@..local.l91:
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x90
    push ax
    db 0xe8, 0xc3, 0xd0 ; call 0xecf6
    add sp, byte 6
    mov word [bp - 0x0004], ax
    jmp short @..local.l96
@..local.l92:
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x290
    push ax
    db 0xe8, 0xaa, 0xd0 ; call 0xecf6
    add sp, byte 6
    mov word [bp - 0x0004], ax
    jmp short @..local.l96
@..local.l93:
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call math_loc_1823
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    jmp short @..local.l96
@..local.l94:
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call math_loc_189b
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    jmp short @..local.l96
@..local.l95:
    cmp ax, strict word 0
    je short @..local.l91
    cmp ax, strict word 1
    je short @..local.l92
    cmp ax, strict word 2
    je short @..local.l93
    cmp ax, strict word 3
    je short @..local.l94
@..local.l96:
    lea ax, word [bp - 0x0008]
    push ax
    lea ax, word [bp - 0x0006]
    push ax
    push word [bp - 0x0002]
    call loc_19e4
    add sp, byte 6
    mov ax, word [data_82ee]
    cmp ax, word [bp - 0x0008]
    je short @..local.l98
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 7
    jl short @..local.l97
    cmp ax, strict word 9
    jle short @..local.l98
@..local.l97:
    cmp ax, strict word 0xb
    jg short @..local.l98
    jmp near @..local.l100
@..local.l98:
    mov ax, word [bp - 0x0006]
    jmp near @..local.l99

    db 0xc7, 0x46, 0xfc, 0x08, 0x00, 0xe9, 0x3e, 0x01, 0xc7, 0x46, 0xfc, 0x09, 0x00, 0xe9, 0x36, 0x01
    db 0xc7, 0x46, 0xfc, 0x0a, 0x00, 0xe9, 0x2e, 0x01, 0xc7, 0x46, 0xfc, 0x0b, 0x00, 0xe9, 0x26, 0x01
    db 0x83, 0x3e, 0xaa, 0x91, 0x00, 0x75, 0x05, 0xc7, 0x46, 0xfc, 0x0c, 0x00, 0xe9, 0x17, 0x01, 0x83
    db 0x3e, 0xaa, 0x91, 0x00, 0x75, 0x05, 0xc7, 0x46, 0xfc, 0x0d, 0x00, 0xe9, 0x08, 0x01, 0x8b, 0x46
    db 0xf8, 0x40, 0x50, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x8b, 0xc8, 0x03, 0x46, 0x0e, 0x8b
    db 0xd8, 0x58, 0x88, 0x87, 0xf9, 0x91, 0xe9, 0xed, 0x00, 0x8b, 0x46, 0xf8, 0x40, 0x50, 0xb8, 0x0a
    db 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x8b, 0xc8, 0x8b, 0x56, 0x0e, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8
    db 0x58, 0x89, 0x87, 0x14, 0x92, 0xe9, 0xce, 0x00, 0x8b, 0x46, 0xf8, 0x40, 0x50, 0xb8, 0x0a, 0x00
    db 0xf7, 0x2e, 0xaa, 0x91, 0x8b, 0xc8, 0x8b, 0x56, 0x0e, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x58
    db 0x89, 0x87, 0x46, 0x92, 0xe9, 0xaf, 0x00, 0xc7, 0x46, 0xfc, 0x0e, 0x00, 0xe9, 0xa7, 0x00, 0xc7
    db 0x46, 0xfc, 0x0f, 0x00, 0xe9, 0x9f, 0x00, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x03, 0x46
    db 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0x76, 0x92, 0x01, 0xe9, 0x8b, 0x00, 0xb8, 0x05, 0x00, 0xf7, 0x2e
    db 0xaa, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0xae, 0x91, 0x03, 0xeb, 0x78, 0xb8, 0x0a
    db 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x8b, 0x4e, 0x0e, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0xc7, 0x87
    db 0x92, 0x92, 0x01, 0x00, 0x83, 0x7e, 0xfa, 0x0e, 0x74, 0x16, 0xb8, 0x0a, 0x00, 0xf7, 0x2e, 0xaa
    db 0x91, 0x8b, 0x4e, 0x0e, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0xc7, 0x87, 0xc4, 0x92, 0x01, 0x00
    db 0xeb, 0x44, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87
    db 0x76, 0x92, 0x02, 0xeb, 0x31, 0x5d, 0x6e, 0x17, 0x6d, 0x1f
    db "m'm/m7mFmUmpm"
    db 0x8f, 0x6d, 0xae, 0x6d, 0xb6, 0x6d, 0xbe, 0x6d, 0xd2, 0x6d, 0xe5, 0x6d, 0xfb, 0x6d, 0x19, 0x6e
    db 0xe5, 0x6d

@..local.l99:
    cmp ax, strict word 0x12
    jae short @..local.l100
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6e2c]
@..local.l100:
    mov ax, word [data_830c]
    cmp ax, word [data_8f28]
    jne short @..local.l101
    mov ax, word [bp + 0xc]
    cmp ax, word [data_8f2a]
    jne short @..local.l101
    mov ax, word [bp + 0x8]
    cmp ax, word [data_8f2e]
    jne short @..local.l101
    mov ax, word [bp + 0xa]
    cmp ax, word [data_8f2c]
    jne short @..local.l101
    mov ax, 5
    imul word [data_91aa]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx - 0x6d8a], 3
@..local.l101:
    mov ax, word [bp - 0x0004]
    ret
api_idx_0008_4:
    mov ax, 0xfff8
    db 0xe8, 0xb6, 0xd5 ; call 0xf40b
    cmp word [bp + 0x10], byte 0
    je short @..local.l103
    mov ax, 0
    push ax
    push word [bp + 0x10]
    lea ax, word [bp + 0xe]
    push ax
    lea ax, word [bp + 0xc]
    push ax
    lea ax, word [bp + 0xa]
    push ax
    lea ax, word [bp + 0x8]
    push ax
    lea ax, word [bp + 0x6]
    push ax
    call loc_1963
    add sp, byte 0x0e
    test ax, ax
    je short @..local.l103
    mov ax, word [data_91a8]
    jmp short @..local.l102
    mov ax, 2
    ret
    cmp word [data_9188], byte 0
    je short 0x1e94
    mov ax, 0
    ret
    mov ax, 4
    ret
    mov ax, 0
    ret
    int3
    outsb
    db 0xdb, 0x6e, 0xcc ; fld [bp - 0x0034]
    outsb
    shr byte [bp - 0x0034], 1
    outsb
    db 0xdf, 0x6e
@..local.l102:
    cmp ax, strict word 6
    jae short @..local.l103
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6ee3]
@..local.l103:
    mov ax, word [bp + 0xe]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xc]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0xa]
    mov word [bp - 0x0002], ax
    push ax
    mov ax, word [data_0e14]
    add ax, 0x8b0
    push ax
    db 0xe8, 0x9b, 0xcd ; call 0xec74
    add sp, byte 4
    test ax, ax
    je short @..local.l106
    mov ax, word [data_91a8]
    jmp short @..local.l105
@..local.l104:
    mov ax, 0
    ret
@..local.l105:
    cmp ax, strict word 0
    je short @..local.l104
    cmp ax, strict word 3
    je short @..local.l104
@..local.l106:
    mov ax, word [data_82ee]
    add ax, word [bp + 0x4]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    jmp short @..local.l111
@..local.l107:
    push word [bp + 0xe]
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    call math_loc_189b
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    jmp short @..local.l112
@..local.l108:
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x90
    push ax
    db 0xe8, 0xc8, 0xcd ; call 0xecf6
    add sp, byte 6
    mov word [bp - 0x0004], ax
    jmp short @..local.l112
@..local.l109:
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [data_0e14]
    add ax, 0x290
    push ax
    db 0xe8, 0xaf, 0xcd ; call 0xecf6
    add sp, byte 6
    mov word [bp - 0x0004], ax
    jmp short @..local.l112
@..local.l110:
    push word [bp + 0xe]
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    call math_loc_1823
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    jmp short @..local.l112
@..local.l111:
    cmp ax, strict word 0
    je short @..local.l107
    cmp ax, strict word 1
    je short @..local.l108
    cmp ax, strict word 2
    je short @..local.l109
    cmp ax, strict word 3
    je short @..local.l110
@..local.l112:
    lea ax, word [bp - 0x0008]
    push ax
    lea ax, word [bp - 0x0006]
    push ax
    push word [bp - 0x0002]
    call loc_19e4
    add sp, byte 6
    mov ax, word [bp - 0x0008]
    add ax, word [bp + 0x4]
    inc ax
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0008], dx
    cmp dx, word [data_82ee]
    je short @..local.l113
    jmp near @..local.l115
@..local.l113:
    mov ax, word [bp - 0x0006]
    jmp short @..local.l114

    db 0xc7, 0x46, 0xfc, 0x08, 0x00, 0xeb, 0x64, 0xc7, 0x46, 0xfc, 0x09, 0x00, 0xeb, 0x5d, 0xc7, 0x46
    db 0xfc, 0x0a, 0x00, 0xeb, 0x56, 0xc7, 0x46, 0xfc, 0x0b, 0x00, 0xeb, 0x4f, 0x83, 0x3e, 0xaa, 0x91
    db 0x00, 0x75, 0x05, 0xc7, 0x46, 0xfc, 0x0c, 0x00, 0xeb, 0x41, 0x83, 0x3e, 0xaa, 0x91, 0x00, 0x75
    db 0x05, 0xc7, 0x46, 0xfc, 0x0d, 0x00, 0xeb, 0x33, 0xc7, 0x46, 0xfc, 0x0e, 0x00, 0xeb, 0x2c, 0xc7
    db 0x46, 0xfc, 0x0f, 0x00, 0xeb, 0x25, 0x5e, 0x70, 0xf3, 0x6f, 0xfa, 0x6f, 0x01, 0x70, 0x08, 0x70
    db 0x0f, 0x70, 0x1d
    db 'p^p^p^p+p2p'

@..local.l114:
    cmp ax, strict word 0xc
    jae short @..local.l115
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x7039]
@..local.l115:
    mov ax, word [bp - 0x0004]
    ret
api_idx_0004_5:
    mov ax, 0xfffc
    db 0xe8, 0xea, 0xd3 ; call 0xf40b
    mov al, byte [bp + 0x4]
    push ax
    mov ax, 0x11
    imul word [data_92f2]
    mov bx, ax
    pop ax
    mov byte [bx - 0x6d00], al
    mov al, byte [bp + 0x18]
    mov byte [bx - 0x6cfe], al
    cmp word [bp + 0x4], strict word 0xfa
    jl short @..api_idx_0004_5.l1
    jmp near @..api_idx_0004_5.l13
@..api_idx_0004_5.l1:
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov cx, word [bp + 0xa]
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0x1a]
    mov bx, ax
    mov al, byte [bx + 0x6a52]
    sub ah, ah
    mov word [bp - 0x0002], ax
    mov ax, 0x15e
    imul word [bp + 0x4]
    add ax, word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + 0x6a9b]
    sub ah, ah
    mov word [bp - 0x0004], ax
    cmp word [bp + 0x18], byte 0
    jg short @..api_idx_0004_5.l2
    jmp near @..api_idx_0004_5.l11
@..api_idx_0004_5.l2:
    cmp word [bp + 0x1e], byte 0
    jg short @..api_idx_0004_5.l3
    jmp near @..api_idx_0004_5.l11
@..api_idx_0004_5.l3:
    mov ax, 0x64
    sub ax, word [bp + 0x18]
    mov cx, 0x64
    cwd
    idiv cx
    mov ax, dx
    push ax
    mov ax, 0x11
    imul word [data_92f2]
    mov bx, ax
    pop ax
    mov byte [bx - 0x6cfe], al
    cmp word [bp + 0x1e], byte 1
    je short @..api_idx_0004_5.l4
    jmp near @..api_idx_0004_5.l6
@..api_idx_0004_5.l4:
    mov ax, word [data_03ae]
    sub ax, word [bp - 0x0002]
    imul word [bp + 0x18]
    add ax, strict word 0xffce
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp + 0x6]
    sub ax, cx
    mov word [bx - 0x6d0c], ax
    cmp word [bp + 0x1a], byte 0
    je short @..api_idx_0004_5.l5
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov cx, word [bp + 0xa]
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0x1a]
    mov bx, ax
    mov al, byte [bx + 0x6a52]
    sub ah, ah
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    shl ax, 1
    push ax
    mov ax, 0x11
    imul word [data_92f2]
    mov bx, ax
    mov al, byte [bx - 0x6cfe]
    sub ah, ah
    mov cx, ax
    pop ax
    imul cx
    mov cx, 0x64
    cwd
    idiv cx
    sub word [bx - 0x6d0c], ax
@..api_idx_0004_5.l5:
    mov ax, word [data_03dc]
    sub ax, word [bp - 0x0004]
    imul word [bp + 0x18]
    add ax, strict word 0xffce
    mov cx, 0x64
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp + 0x8]
    sub ax, cx
    push ax
    mov ax, 0x11
    imul word [data_92f2]
    mov bx, ax
    pop ax
    mov word [bx - 0x6d0a], ax
    jmp near @..api_idx_0004_5.l10
@..api_idx_0004_5.l6:
    cmp word [bp + 0x1e], byte 2
    je short @..api_idx_0004_5.l7
    jmp near @..api_idx_0004_5.l9
@..api_idx_0004_5.l7:
    mov ax, 0x11
    imul word [data_92f2]
    mov bx, ax
    mov al, byte [bx - 0x6cfe]
    sub ah, ah
    mov cx, 0xa0
    sub cx, word [bp - 0x0002]
    imul cx
    mov cx, 0x64
    cwd
    idiv cx
    add ax, word [bp - 0x0002]
    add ax, word [bp + 0x6]
    mov word [bx - 0x6d0c], ax
    cmp word [bp + 0x1a], byte 0
    je short @..api_idx_0004_5.l8
    mov ax, 0x15e
    imul word [bp + 0x4]
    mov cx, word [bp + 0xa]
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0x1a]
    mov bx, ax
    mov al, byte [bx + 0x6a52]
    sub ah, ah
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    shl ax, 1
    push ax
    mov ax, 0x11
    imul word [data_92f2]
    mov bx, ax
    mov al, byte [bx - 0x6cfe]
    sub ah, ah
    mov cx, ax
    pop ax
    imul cx
    mov cx, 0x64
    cwd
    idiv cx
    sub word [bx - 0x6d0c], ax
@..api_idx_0004_5.l8:
    mov ax, 0x11
    imul word [data_92f2]
    mov bx, ax
    mov al, byte [bx - 0x6cfe]
    sub ah, ah
    mov cx, 0x42
    sub cx, word [bp - 0x0004]
    imul cx
    mov cx, 0x64
    cwd
    idiv cx
    add ax, word [bp - 0x0004]
    add ax, word [bp + 0x8]
    mov word [bx - 0x6d0a], ax
    jmp short @..api_idx_0004_5.l10
@..api_idx_0004_5.l9:
    cmp word [bp + 0x1e], byte 3
    jne short @..api_idx_0004_5.l10
    mov ax, word [bp + 0x6]
    push ax
    mov ax, 0x11
    imul word [data_92f2]
    mov bx, ax
    pop ax
    mov word [bx - 0x6d0c], ax
    mov ax, word [bp + 0x8]
    mov word [bx - 0x6d0a], ax
@..api_idx_0004_5.l10:
    jmp short @..api_idx_0004_5.l12
@..api_idx_0004_5.l11:
    mov ax, word [bp - 0x0002]
    add ax, word [bp + 0x6]
    push ax
    mov ax, 0x11
    imul word [data_92f2]
    mov bx, ax
    pop ax
    mov word [bx - 0x6d0c], ax
    mov ax, word [bp - 0x0004]
    add ax, word [bp + 0x8]
    mov word [bx - 0x6d0a], ax
@..api_idx_0004_5.l12:
    jmp short @..local.l116
@..api_idx_0004_5.l13:
    mov ax, word [bp + 0x6]
    push ax
    mov ax, 0x11
    imul word [data_92f2]
    mov bx, ax
    pop ax
    mov word [bx - 0x6d0c], ax
    mov ax, word [bp + 0x8]
    mov word [bx - 0x6d0a], ax
@..local.l116:
    mov al, byte [bp + 0xa]
    push ax
    mov ax, 0x11
    imul word [data_92f2]
    mov bx, ax
    pop ax
    mov byte [bx - 0x6d04], al
    mov al, byte [bp + 0xc]
    mov byte [bx - 0x6d03], al
    mov al, byte [bp + 0xe]
    mov byte [bx - 0x6d02], al
    mov al, byte [bp + 0x10]
    mov byte [bx - 0x6d01], al
    mov ax, word [bp + 0x12]
    mov word [bx - 0x6d08], ax
    mov ax, word [bp + 0x14]
    mov word [bx - 0x6d06], ax
    mov al, byte [bp + 0x16]
    mov byte [bx - 0x6cff], al
    mov al, byte [bp + 0x1a]
    mov byte [bx - 0x6cfd], al
    mov al, byte [bp + 0x1c]
    mov byte [bx - 0x6cfc], al
    inc word [data_92f2]
    mov ax, word [data_92f2]
    cmp ax, strict word 0x78
    jl short @..local.l118
@..local.l117:
    mov ax, 0
    push ax
    db 0xe8, 0x53, 0x95 ; call 0xb7e0
    pop cx
    jmp short @..local.l117
@..local.l118:
    ret
api_idx_0010:
    mov ax, 0xfff0
    db 0xe8, 0x74, 0xd1 ; call 0xf40b
    mov ax, 4
    cmp word [data_91a8], byte 0
    jne short @..api_idx_0010.l1
    mov ax, 3
@..api_idx_0010.l1:
    mov word [bp - 0x000a], ax
    mov word [bp - 0x0002], 0xffff
    mov word [bp - 0x0004], 0xffff
    cmp word [data_91a8], byte 0
    jg short @..api_idx_0010.l2
    jmp near @..api_idx_0010.l11
@..api_idx_0010.l2:
    cmp word [bp + 0x4], byte 3
    je short @..api_idx_0010.l3
    jmp near @..api_idx_0010.l11
@..api_idx_0010.l3:
    mov ax, word [data_91a8]
    cmp ax, strict word 3
    jl short @..api_idx_0010.l4
    cmp ax, strict word 5
    jne short @..api_idx_0010.l5
@..api_idx_0010.l4:
    mov ax, 0x15
    jmp short @..api_idx_0010.l6
@..api_idx_0010.l5:
    mov ax, 0x14
@..api_idx_0010.l6:
    mov word [bp - 0x000c], ax
    cmp word [data_91a8], byte 3
    jl short @..api_idx_0010.l7
    cmp word [data_91a8], byte 5
    jne short @..api_idx_0010.l8
@..api_idx_0010.l7:
    mov ax, 0x16
    jmp short @..api_idx_0010.l9
@..api_idx_0010.l8:
    mov ax, 0x15
@..api_idx_0010.l9:
    mov word [bp - 0x000e], ax
    cmp word [bp + 0x8], byte 0
    jne short @..api_idx_0010.l10
    push ax
    push word [bp - 0x000c]
    call loc_1927
    add sp, byte 4
    mov word [bp - 0x0002], ax
    push word [bp - 0x000c]
    call loc_1913
    pop cx
    mov word [bp - 0x0004], ax
    jmp short @..api_idx_0010.l11
@..api_idx_0010.l10:
    cmp word [bp + 0x8], byte 4
    jne short @..api_idx_0010.l11
    push word [bp - 0x000c]
    push word [bp - 0x000e]
    call loc_1927
    add sp, byte 4
    mov word [bp - 0x0002], ax
    push word [bp - 0x000e]
    call loc_1913
    pop cx
    mov word [bp - 0x0004], ax
@..api_idx_0010.l11:
    mov ax, word [bp + 0x6]
    jmp near @..local.l120
    cmp word [bp - 0x0002], byte 0xff
    je short @..api_idx_0010.l13
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0x10]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    push word [bp - 0x0004]
    mov ax, 0
    push ax
    push ax
    push ax
    cmp word [bp + 0x4], byte 1
    jne short @..api_idx_0010.l12
    mov ax, 2
@..api_idx_0010.l12:
    push ax
    mov ax, 0xffff
    push ax
    push word [bp - 0x0002]
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
@..api_idx_0010.l13:
    jmp near @..local.l121
    cmp word [bp - 0x0002], byte 0xff
    je short @..api_idx_0010.l14
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0x14]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    push word [bp - 0x0004]
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    push word [bp - 0x0002]
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
@..api_idx_0010.l14:
    jmp near @..local.l121
    cmp word [data_91a8], byte 0
    jne short @..api_idx_0010.l17
    cmp word [bp + 0x4], byte 3
    jge short @..api_idx_0010.l16
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xa]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x16]
    add ax, word [bp + 0x4]
    push ax
    call loc_1913
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov cx, word [bp + 0x4]
    cmp cx, byte 1
    jne short @..api_idx_0010.l15
    mov ax, 2
@..api_idx_0010.l15:
    push ax
    mov ax, 0xffff
    push ax
    add cx, word [bp + 0x18]
    mov ax, cx
    push ax
    mov ax, word [bp + 0x16]
    add ax, word [bp + 0x4]
    push ax
    call loc_1927
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
@..api_idx_0010.l16:
    jmp near 0x24be
@..api_idx_0010.l17:
    cmp word [data_91a8], byte 3
    jl short @..api_idx_0010.l18
    cmp word [data_91a8], byte 5
    jne short @..api_idx_0010.l20
@..api_idx_0010.l18:
    cmp word [bp + 0x4], byte 4
    jge short @..api_idx_0010.l19
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0x10]
    push word [bp + 0x4]
    push word [bp - 0x0004]
    mov ax, word [bp + 0x32]
    add ax, word [bp + 0x4]
    push ax
    call loc_1913
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 0x0002]
    mov ax, word [bp + 0x34]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x32]
    add ax, word [bp + 0x4]
    push ax
    call loc_1927
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
@..api_idx_0010.l19:
    jmp short 0x24be
@..api_idx_0010.l20:
    cmp word [data_91a8], byte 5
    jge short 0x24be
    cmp word [bp + 0x4], byte 4
    db 0x7d, 0x47 ; jge short 0x24be
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0x14]
    push word [bp + 0x4]
    push word [bp - 0x0004]
    mov ax, word [bp + 0x46]
    add ax, word [bp + 0x4]
    push ax
    call loc_1913
    pop cx

    db 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0x50, 0xff, 0x76, 0xfe, 0x8b, 0x46
    db 0x48, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x46, 0x03, 0x46, 0x04, 0x50, 0xe8, 0x77, 0xf4, 0x83
    db 0xc4, 0x04, 0x50, 0xb8, 0xff, 0x00, 0x50, 0xe8, 0x60, 0xfb, 0x83, 0xc4, 0x1c, 0xe9, 0x81, 0x00
    db 0xa1, 0xa8, 0x91, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0x3d, 0x01, 0x00, 0x75, 0x42
    db 0x83, 0x7e, 0x04, 0x04, 0x7d, 0x3c, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xff, 0x76, 0x0c, 0xff
    db 0x76, 0x04, 0xb8, 0xff, 0xff, 0x50, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0x51, 0xb8, 0xff
    db 0xff, 0x50, 0x83, 0x3e, 0xec, 0x9a, 0x00, 0x74, 0x08, 0x8b, 0x46, 0x1c, 0x03, 0x46, 0x04, 0xeb
    db 0x06, 0x8b, 0x46, 0x1a, 0x03, 0x46, 0x04, 0x50, 0xb8, 0xfc, 0x00, 0x50, 0xe8, 0x0b, 0xfb, 0x83
    db 0xc4, 0x1c, 0xeb, 0x2d, 0x89, 0x75, 0x80, 0x73, 0xf4, 0x73, 0x80, 0x73, 0x08, 0x75, 0xbd, 0x73
    db 0x80, 0x73, 0x80, 0x73, 0x89, 0x75, 0x89, 0x75, 0xf4, 0x73, 0xf4, 0x73, 0xf4, 0x73, 0xf4, 0x73
    db 0xf4, 0x73, 0xf4, 0x73

@..local.l120:
    cmp ax, strict word 0x10
    jae short @..local.l121
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x755c]
@..local.l121:
    mov word [bp - 0x0002], 0xffff
    mov word [bp - 0x0004], 0xffff
    mov ax, word [bp + 0x4]
    cmp ax, word [bp - 0x000a]
    jl short @..local.l122
    jmp near @..local.l125
@..local.l122:
    mov word [bp - 0x0010], 0xffff
    mov ax, word [bp + 0x6]
    jmp near @..local.l123

    db 0x8b, 0x46, 0x2e, 0x83, 0x7e, 0x06, 0x08, 0x75, 0x03, 0x8b, 0x46, 0x2a, 0x89, 0x46, 0xfa, 0x8b
    db 0x46, 0x30, 0x83, 0x7e, 0x06, 0x08, 0x75, 0x03, 0x8b, 0x46, 0x2c, 0x89, 0x46, 0xf8, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0x04, 0x40, 0x40, 0x40, 0x89, 0x46, 0xfe, 0xc7, 0x46, 0xfc, 0xff, 0xff, 0x83
    db 0x7e, 0x06, 0x07, 0x75, 0x25, 0x8b, 0x46, 0x44, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x42, 0x03
    db 0x46, 0x04, 0x50, 0xe8, 0x7f, 0xf3, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xfe, 0x8b, 0x46, 0x42, 0x03
    db 0x46, 0x04, 0x50, 0xe8, 0x5b, 0xf3, 0x59, 0x89, 0x46, 0xfc, 0x83, 0x3e, 0xa8, 0x91, 0x00, 0x75
    db 0x49, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xff, 0x76, 0x0a, 0xff, 0x76, 0x04, 0xff, 0x76, 0xfc
    db 0x8b, 0x46, 0x1e, 0x03, 0x46, 0x04, 0x50, 0xe8, 0x37, 0xf3, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0x50, 0xb8, 0x02, 0x00, 0x50, 0x50, 0xff, 0x76, 0xfe, 0x8b, 0x46, 0x20, 0x03, 0x46, 0x04, 0x50
    db 0x8b, 0x46, 0x1e, 0x03, 0x46, 0x04, 0x50, 0xe8, 0x2b, 0xf3, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0xff
    db 0x00, 0x50, 0xe8, 0x14, 0xfa, 0x83, 0xc4, 0x1c, 0xeb, 0x4e, 0x83, 0x3e, 0xa8, 0x91, 0x02, 0x75
    db 0x47, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xff, 0x76, 0x0e, 0xff, 0x76, 0x04, 0xff, 0x76, 0xfc
    db 0x8b, 0x46, 0x36, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xe7, 0xf2, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0x50, 0xb8, 0x02, 0x00, 0x50, 0x50, 0xff, 0x76, 0xfe, 0x8b, 0x46, 0x38, 0x03, 0x46, 0x04, 0x50
    db 0x8b, 0x46, 0x36, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xdb, 0xf2, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0xff
    db 0x00, 0x50, 0xe8, 0xc4, 0xf9, 0x83, 0xc4, 0x1c, 0x83, 0x7e, 0x06, 0x03, 0x74, 0x03, 0xe9, 0xe2
    db 0x00, 0x83, 0x3e, 0x1a, 0x83, 0x00, 0x74, 0x4f, 0x83, 0x7e, 0x04, 0x00, 0x75, 0x49, 0x83, 0x7e
    db 0x08, 0x02, 0x75, 0x43, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0x50, 0xff, 0x76, 0x04, 0xb8, 0xf8
    db 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xa1, 0x1a, 0x83, 0x05
    db 0x0c, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0xf7, 0x6e, 0x04, 0x8b, 0x4e, 0x08
    db 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0xff, 0xb7, 0x6e, 0x03, 0xb8, 0x05, 0x00, 0x50, 0xe8, 0x68
    db 0xf9, 0x83, 0xc4, 0x1c, 0xe9, 0x8a, 0x00, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xff, 0x36, 0xa4, 0x91
    db 0x50, 0xff, 0x76, 0x04, 0xb8, 0xf8, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0x50, 0x50, 0x8b, 0x46, 0x04, 0xd1, 0xe0, 0x03, 0x06, 0xa4, 0x91, 0x05, 0x05, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0xf7, 0x6e, 0x04, 0x8b, 0x4e, 0x08, 0xd1, 0xe1, 0x03, 0xc1
    db 0x8b, 0xd8, 0xff, 0xb7, 0x6e, 0x03, 0xb8, 0x05, 0x00, 0x50, 0xe8, 0x1c, 0xf9, 0x83, 0xc4, 0x1c
    db 0xb8, 0x00, 0x00, 0x50, 0x50, 0xff, 0x36, 0xa4, 0x91, 0x50, 0xff, 0x76, 0x04, 0xb8, 0xf8, 0x00
    db 0x50, 0xb8, 0x48, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0x8b, 0x46, 0x04, 0x40, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0xf7, 0x6e, 0x04, 0x8b, 0x4e, 0x08, 0xd1, 0xe1, 0x03
    db 0xc1, 0x8b, 0xd8, 0xff, 0xb7, 0x6e, 0x03, 0xb8, 0x05, 0x00, 0x50, 0xe8, 0xdb, 0xf8, 0x83, 0xc4
    db 0x1c, 0xeb, 0x47, 0x83, 0x7e, 0x06, 0x06, 0x75, 0x41, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xff, 0x36
    db 0xa4, 0x91, 0x50, 0xff, 0x76, 0x04, 0xb8, 0xf8, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0x50, 0x50, 0x8b, 0x46, 0x04, 0x40, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0a, 0x00
    db 0xf7, 0x6e, 0x04, 0x8b, 0x4e, 0x08, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0xff, 0xb7, 0x6e, 0x03
    db 0xb8, 0x05, 0x00, 0x50, 0xe8, 0x92, 0xf8, 0x83, 0xc4, 0x1c, 0x83, 0x3e, 0xa8, 0x91, 0x00, 0x75
    db 0x64, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xff, 0x76, 0x0a, 0xff, 0x76, 0x04, 0x8b, 0x46, 0x26
    db 0x03, 0x46, 0x04, 0x50, 0xe8, 0x6a, 0xf1, 0x59, 0x50, 0x8b, 0x46, 0x22, 0x03, 0x46, 0x04, 0x50
    db 0xe8, 0x5e, 0xf1, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0x50, 0x8b
    db 0x46, 0x28, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x26, 0x03, 0x46, 0x04, 0x50, 0xe8, 0x55, 0xf1
    db 0x83, 0xc4, 0x04, 0x50, 0x8b, 0x46, 0x24, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x22, 0x03, 0x46
    db 0x04, 0x50, 0xe8, 0x40, 0xf1, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0xff, 0x00, 0x50, 0xe8, 0x29, 0xf8
    db 0x83, 0xc4, 0x1c, 0xeb, 0x69, 0x83, 0x3e, 0xa8, 0x91, 0x02, 0x75, 0x62, 0xb8, 0x00, 0x00, 0x50
    db 0x50, 0x50, 0xff, 0x76, 0x0e, 0xff, 0x76, 0x04, 0x8b, 0x46, 0x3e, 0x03, 0x46, 0x04, 0x50, 0xe8
    db 0xff, 0xf0, 0x59, 0x50, 0x8b, 0x46, 0x3a, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xf3, 0xf0, 0x59, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0x50, 0x8b, 0x46, 0x40, 0x03, 0x46, 0x04
    db 0x50, 0x8b, 0x46, 0x3e, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xea, 0xf0, 0x83, 0xc4, 0x04, 0x50, 0x8b
    db 0x46, 0x3c, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x3a, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xd5, 0xf0
    db 0x83, 0xc4, 0x04, 0x50, 0xb8, 0xff, 0x00, 0x50, 0xe8, 0xbe, 0xf7, 0x83, 0xc4, 0x1c, 0x83, 0x7e
    db 0x06, 0x08, 0x74, 0x06, 0x83, 0x7e, 0x06, 0x09, 0x75, 0x30, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50
    db 0xff, 0x76, 0x0a, 0xff, 0x76, 0x04, 0xb8, 0xff, 0xff, 0x50, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50
    db 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0xff, 0xff, 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0x04, 0x50
    db 0xb8, 0xff, 0x00, 0x50, 0xe8, 0x82, 0xf7, 0x83, 0xc4, 0x1c, 0xe9, 0xf5, 0x00, 0x83, 0x7e, 0x04
    db 0x04, 0x7d, 0x49, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xff, 0x76, 0x12, 0xff, 0x76, 0x04, 0xb8
    db 0xff, 0xff, 0x50, 0x8b, 0x46, 0x4a, 0x03, 0x46, 0x04, 0x50, 0xe8, 0x54, 0xf0, 0x59, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0xff, 0xff, 0x50, 0x8b, 0x46, 0x4c
    db 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x4a, 0x03, 0x46, 0x04, 0x50, 0xe8, 0x47, 0xf0, 0x83, 0xc4
    db 0x04, 0x50, 0xb8, 0xff, 0x00, 0x50, 0xe8, 0x30, 0xf7, 0x83, 0xc4, 0x1c, 0xe9, 0xa3, 0x00, 0xc7
    db 0x46, 0xf0, 0x09, 0x00, 0xc7, 0x46, 0xf4, 0x01, 0x00, 0xa1, 0xe8, 0x82, 0x40, 0x40, 0x89, 0x46
    db 0xf2, 0xe9, 0x8e, 0x00, 0xc7, 0x46, 0xf0, 0x09, 0x00, 0xc7, 0x46, 0xf4, 0x07, 0x00, 0xb8, 0x00
    db 0x00, 0x83, 0x3e, 0xe8, 0x82, 0x00, 0x74, 0x03, 0xb8, 0x08, 0x00, 0x89, 0x46, 0xf2, 0xeb, 0x72
    db 0xc7, 0x46, 0xf0, 0x0a, 0x00, 0xb8, 0x05, 0x00, 0x83, 0x3e, 0xa8, 0x91, 0x00, 0x75, 0x03, 0xb8
    db 0x01, 0x00, 0xb9, 0x00, 0x00, 0x83, 0x7e, 0x06, 0x0d, 0x75, 0x03, 0xb9, 0x01, 0x00, 0x03, 0xc1
    db 0x89, 0x46, 0xf4, 0xc7, 0x46, 0xf2, 0x00, 0x00, 0xeb, 0x48, 0xc7, 0x46, 0xf0, 0x0a, 0x00, 0xc7
    db 0x46, 0xf4, 0x09, 0x00, 0xb8, 0x0b, 0x00, 0x83, 0x7e, 0x06, 0x0e, 0x75, 0x03, 0xb8, 0x0a, 0x00
    db 0x89, 0x46, 0xf2, 0xeb, 0x2d, 0xdb, 0x79, 0x03, 0x76, 0xdb, 0x79, 0x03, 0x76, 0xdb, 0x79, 0xe6
    db 0x78, 0x03, 0x76, 0xd8, 0x75, 0xa9, 0x75, 0xa9
    db 'u8yMyiyiy'
    db 0x93, 0x79, 0x93, 0x79

@..local.l123:
    cmp ax, strict word 0x10
    jae short @..local.l124
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x79ae]
@..local.l124:
    cmp word [bp - 0x0010], byte 0xff
    je short @..local.l125
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    push word [data_91a4]
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x576]
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push ax
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x8]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x36e]
    push word [bp - 0x0010]
    call api_idx_0004_5
    add sp, byte 0x1c
@..local.l125:
    ret
api_idx_0012_2:
    mov ax, 0xffee
    db 0xe8, 0x20, 0xca ; call 0xf40b
    mov word [bp - 0x0004], 0xffff
    mov word [bp - 0x0006], 0xffff
    mov ax, word [bp + 0x6]
    jmp near @..local.l127
    cmp word [bp + 0x26], byte 0xff
    jne short @..api_idx_0012_2.l1
    jmp near @..api_idx_0012_2.l11
@..api_idx_0012_2.l1:
    cmp word [bp + 0x4], byte 0
    je short @..api_idx_0012_2.l2
    jmp near @..api_idx_0012_2.l11
@..api_idx_0012_2.l2:
    cmp word [bp + 0x6], byte 8
    jne short @..api_idx_0012_2.l3
    mov ax, word [bp + 0x26]
    inc ax
    jmp short @..api_idx_0012_2.l4
@..api_idx_0012_2.l3:
    mov ax, word [bp + 0x26]
    inc ax
    inc ax
    inc ax
@..api_idx_0012_2.l4:
    mov word [bp - 0x0002], ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 0x4]
    mov ax, 0xffff
    cmp word [bp + 0x8], byte 2
    jge short @..api_idx_0012_2.l5
    mov ax, word [bp - 0x0002]
    inc ax
@..api_idx_0012_2.l5:
    push ax
    mov ax, 0xffff
    cmp word [bp + 0x8], byte 2
    jge short @..api_idx_0012_2.l6
    mov ax, word [bp - 0x0002]
@..api_idx_0012_2.l6:
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    cmp word [bp + 0x6], byte 8
    jne short @..api_idx_0012_2.l7
    cmp word [bp + 0x8], byte 2
    jg short @..api_idx_0012_2.l8
@..api_idx_0012_2.l7:
    cmp word [bp + 0x6], byte 9
    jne short @..api_idx_0012_2.l9
    cmp word [bp + 0x8], byte 2
    jge short @..api_idx_0012_2.l9
@..api_idx_0012_2.l8:
    mov ax, word [bp - 0x0002]
    inc ax
    jmp short @..api_idx_0012_2.l10
@..api_idx_0012_2.l9:
    mov ax, 0xffff
@..api_idx_0012_2.l10:
    push ax
    push word [bp - 0x0002]
    mov ax, 0xfd
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
@..api_idx_0012_2.l11:
    cmp word [bp + 0x6], byte 3
    je short @..api_idx_0012_2.l12
    jmp near @..api_idx_0012_2.l15
@..api_idx_0012_2.l12:
    cmp word [bp + 0x4], byte 4
    jl short @..api_idx_0012_2.l13
    jmp near @..api_idx_0012_2.l15
@..api_idx_0012_2.l13:
    cmp word [bp + 0x34], byte 0xff
    je short @..api_idx_0012_2.l14
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xe]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x34]
    add ax, word [bp + 0x4]
    push ax
    call loc_193b
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x36]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x34]
    add ax, word [bp + 0x4]
    push ax
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
@..api_idx_0012_2.l14:
    mov ax, word [bp + 0x32]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x30]
    add ax, word [bp + 0x4]
    push ax
    call loc_194f
    add sp, byte 4
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x30]
    add ax, word [bp + 0x4]
    push ax
    call loc_193b
    pop cx
    mov word [bp - 0x0006], ax
@..api_idx_0012_2.l15:
    cmp word [bp + 0x6], byte 6
    jne short @..api_idx_0012_2.l16
    cmp word [bp + 0x4], byte 4
    jge short @..api_idx_0012_2.l16
    mov ax, word [bp + 0x24]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 0x4]
    push ax
    call loc_194f
    add sp, byte 4
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 0x4]
    push ax
    call loc_193b
    pop cx
    mov word [bp - 0x0006], ax
@..api_idx_0012_2.l16:
    cmp word [data_91a8], byte 0
    jne short @..api_idx_0012_2.l18
    cmp word [bp + 0x4], byte 4
    jge short @..api_idx_0012_2.l17
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 0x4]
    push word [bp - 0x0006]
    mov ax, word [bp + 0x1e]
    add ax, word [bp + 0x4]
    push ax
    call loc_193b
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 0x0004]
    mov ax, word [bp + 0x20]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x1e]
    add ax, word [bp + 0x4]
    push ax
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
@..api_idx_0012_2.l17:
    jmp short 0x2bfb
@..api_idx_0012_2.l18:
    cmp word [data_91a8], byte 2
    jne short 0x2bfb
    cmp word [bp + 0x4], byte 5
    jge short 0x2bfb
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xe]
    push word [bp + 0x4]
    push word [bp - 0x0006]
    mov ax, word [bp + 0x2c]
    add ax, word [bp + 0x4]
    push ax
    call loc_193b
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 0x0004]
    mov ax, word [bp + 0x2e]
    add ax, word [bp + 0x4]
    push ax

    db 0x8b, 0x46, 0x2c, 0x03, 0x46, 0x04, 0x50, 0xe8, 0x62, 0xed, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0xfd
    db 0x00, 0x50, 0xe8, 0x23, 0xf4, 0x83, 0xc4, 0x1c, 0x83, 0x7e, 0x26, 0xff, 0x74, 0x4d, 0x83, 0x7e
    db 0x04, 0x00, 0x75, 0x47, 0x83, 0x7e, 0x06, 0x08, 0x74, 0x06, 0x83, 0x7e, 0x06, 0x09, 0x75, 0x3b
    db 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x0a, 0xff
    db 0x76, 0x04, 0xb8, 0xff, 0xff, 0x50, 0x83, 0x7e, 0x08, 0x02, 0x7d, 0x03, 0x8b, 0x46, 0x26, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0xff, 0xff, 0x50, 0xff, 0x76
    db 0x26, 0xb8, 0xfd, 0x00, 0x50, 0xe8, 0xd0, 0xf3, 0x83, 0xc4, 0x1c, 0xe9, 0x6f, 0x02, 0x83, 0x7e
    db 0x04, 0x04, 0x7d, 0x25, 0x8b, 0x46, 0x3a, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x38, 0x03, 0x46
    db 0x04, 0x50, 0xe8, 0xe7, 0xec, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xfc, 0x8b, 0x46, 0x38, 0x03, 0x46
    db 0x04, 0x50, 0xe8, 0xc3, 0xec, 0x59, 0x89, 0x46, 0xfa, 0x83, 0x3e, 0xa8, 0x91, 0x00, 0x75, 0x56
    db 0x83, 0x7e, 0x04, 0x04, 0x7d, 0x4d, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0xff, 0x76, 0x0a, 0xff, 0x76, 0x04, 0xff, 0x76, 0xfa, 0x8b, 0x46, 0x16, 0x03, 0x46
    db 0x04, 0x50, 0xe8, 0x93, 0xec, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50
    db 0x50, 0xff, 0x76, 0xfc, 0x8b, 0x46, 0x18, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x16, 0x03, 0x46
    db 0x04, 0x50, 0xe8, 0x87, 0xec, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0xfd, 0x00, 0x50, 0xe8, 0x48, 0xf3
    db 0x83, 0xc4, 0x1c, 0xe9, 0x08, 0x01, 0x83, 0x3e, 0xa8, 0x91, 0x03, 0x7c, 0x0a, 0x83, 0x3e, 0xa8
    db 0x91, 0x05, 0x74, 0x03, 0xe9, 0x9b, 0x00, 0x83, 0x7e, 0x04, 0x05, 0x7c, 0x03, 0xe9, 0x90, 0x00
    db 0x83, 0x3e, 0xa8, 0x91, 0x02, 0x75, 0x3a, 0x83, 0x7e, 0xfc, 0xff, 0x74, 0x34, 0xb8, 0x00, 0x00
    db 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x0e, 0xff, 0x76, 0x04, 0xb8
    db 0xff, 0xff, 0x50, 0xff, 0x76, 0xfa, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50
    db 0xb8, 0xff, 0xff, 0x50, 0xff, 0x76, 0xfc, 0xb8, 0xfd, 0x00, 0x50, 0xe8, 0xea, 0xf2, 0x83, 0xc4
    db 0x1c, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x10
    db 0xff, 0x76, 0x04, 0xb8, 0xff, 0xff, 0x50, 0x8b, 0x46, 0x28, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xe7
    db 0xeb, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0xff, 0xff
    db 0x50, 0x8b, 0x46, 0x2a, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x28, 0x03, 0x46, 0x04, 0x50, 0xe8
    db 0xda, 0xeb, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0xfd, 0x00, 0x50, 0xe8, 0x9b, 0xf2, 0x83, 0xc4, 0x1c
    db 0xeb, 0x5c, 0x83, 0x3e, 0xa8, 0x91, 0x05, 0x7d, 0x55, 0x83, 0x7e, 0x04, 0x04, 0x7d, 0x4f, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x14, 0xff, 0x76
    db 0x04, 0xb8, 0xff, 0xff, 0x50, 0x8b, 0x46, 0x3c, 0x03, 0x46, 0x04, 0x50, 0xe8, 0x89, 0xeb, 0x59
    db 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0xff, 0xff, 0x50, 0x8b
    db 0x46, 0x3e, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x3c, 0x03, 0x46, 0x04, 0x50, 0xe8, 0x7c, 0xeb
    db 0x83, 0xc4, 0x04, 0x50, 0xb8, 0xfd, 0x00, 0x50, 0xe8, 0x3d, 0xf2, 0x83, 0xc4, 0x1c, 0xe9, 0xdc
    db 0x00, 0x83, 0x7e, 0x04, 0x04, 0x7d, 0x4f, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xff, 0x76, 0x0c, 0xff, 0x76, 0x04, 0xb8, 0xff, 0xff, 0x50, 0x8b, 0x46, 0x1a
    db 0x03, 0x46, 0x04, 0x50, 0xe8, 0x09, 0xeb, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xb8
    db 0x02, 0x00, 0x50, 0xb8, 0xff, 0xff, 0x50, 0x8b, 0x46, 0x1c, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46
    db 0x1a, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xfc, 0xea, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0xfb, 0x00, 0x50
    db 0xe8, 0xe5, 0xf1, 0x83, 0xc4, 0x1c, 0xe9, 0x84, 0x00, 0x83, 0x7e, 0x04, 0x04, 0x7d, 0x4f, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x12, 0xff, 0x76
    db 0x04, 0xb8, 0xff, 0xff, 0x50, 0x8b, 0x46, 0x40, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xd9, 0xea, 0x59
    db 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0xff, 0xff, 0x50, 0x8b
    db 0x46, 0x42, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x40, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xcc, 0xea
    db 0x83, 0xc4, 0x04, 0x50, 0xb8, 0xfd, 0x00, 0x50, 0xe8, 0x8d, 0xf1, 0x83, 0xc4, 0x1c, 0xeb, 0x2d
    db 0x07, 0x7f, 0x8c, 0x7b, 0xc3, 0x7c, 0xcf, 0x7a, 0x2b, 0x7e, 0x83, 0x7e, 0xcf, 0x7a, 0x98
    db '|BzBz'
    db 0xc3, 0x7c, 0xc3, 0x7c, 0xc3, 0x7c, 0xc3, 0x7c, 0xc3, 0x7c, 0xc3, 0x7c

@..local.l127:
    cmp ax, strict word 0x10
    jae short @..local.l128
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x7eda]
@..local.l128:
    cmp word [bp + 0x4], byte 4
    jl short @..local.l129
    jmp near @..local.l136
@..local.l129:
    cmp word [bp + 0x8], byte 1
    je short @..local.l130
    cmp word [bp + 0x8], byte 3
    jne short @..local.l131
@..local.l130:
    mov ax, 0
    jmp short @..local.l132
@..local.l131:
    mov ax, 1
@..local.l132:
    mov word [bp - 0x0012], ax
    mov ax, 0
    cmp word [bp + 0x8], byte 2
    jle short @..local.l133
    mov ax, 1
@..local.l133:
    mov word [bp - 0x0006], ax
    mov word [bp - 0x000c], 0xffff
    mov ax, word [bp + 0x6]
    jmp near @..local.l134

    db 0xc7, 0x46, 0xf4, 0x09, 0x00, 0x8b, 0x46, 0x04, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x8b, 0x4e, 0xee
    db 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e, 0xfa, 0xd1, 0xe1, 0xd1, 0xe1, 0x03
    db 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0xe6, 0x03, 0x89, 0x46, 0xf2, 0x8b, 0x87, 0xe8, 0x03, 0x89, 0x46
    db 0xf0, 0xc7, 0x46, 0xf8, 0x04, 0x00, 0xa1, 0xe8, 0x82, 0x05, 0x05, 0x00, 0x89, 0x46, 0xf6, 0xe9
    db 0x76, 0x01, 0xc7, 0x46, 0xf4, 0x09, 0x00, 0x8b, 0x46, 0x04, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x8b
    db 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e, 0xfa, 0xd1, 0xe1, 0xd1
    db 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0x36, 0x04, 0x89, 0x46, 0xf2, 0x8b, 0x87, 0x38, 0x04
    db 0x89, 0x46, 0xf0, 0xc7, 0x46, 0xf8, 0x09, 0x00, 0xb8, 0x00, 0x00, 0x83, 0x3e, 0xe8, 0x82, 0x00
    db 0x74, 0x03, 0xb8, 0x0a, 0x00, 0x89, 0x46, 0xf6, 0xe9, 0x2d, 0x01, 0xc7, 0x46, 0xf4, 0x0a, 0x00
    db 0x83, 0x3e, 0xa8, 0x91, 0x00, 0x75, 0x24, 0x8b, 0x46, 0x04, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x8b
    db 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e, 0xfa, 0xd1, 0xe1, 0xd1
    db 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0x86, 0x04, 0xeb, 0x22, 0x8b, 0x46, 0x04, 0xb9, 0x04
    db 0x00, 0xd3, 0xe0, 0x8b, 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e
    db 0xfa, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0xd6, 0x04, 0x89, 0x46, 0xf2
    db 0x83, 0x3e, 0xa8, 0x91, 0x00, 0x75, 0x24, 0x8b, 0x46, 0x04, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x8b
    db 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e, 0xfa, 0xd1, 0xe1, 0xd1
    db 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0x88, 0x04, 0xeb, 0x22, 0x8b, 0x46, 0x04, 0xb9, 0x04
    db 0x00, 0xd3, 0xe0, 0x8b, 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e
    db 0xfa, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0xd8, 0x04, 0x89, 0x46, 0xf0
    db 0xb8, 0x07, 0x00, 0x83, 0x3e, 0xa8, 0x91, 0x00, 0x75, 0x03, 0xb8, 0x03, 0x00, 0xb9, 0x00, 0x00
    db 0x83, 0x7e, 0x06, 0x0d, 0x75, 0x03, 0xb9, 0x01, 0x00, 0x03, 0xc1, 0x89, 0x46, 0xf8, 0xc7, 0x46
    db 0xf6, 0x00, 0x00, 0xeb, 0x63, 0xc7, 0x46, 0xf4, 0x0a, 0x00, 0x8b, 0x46, 0x04, 0xb9, 0x04, 0x00
    db 0xd3, 0xe0, 0x8b, 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e, 0xfa
    db 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0x26, 0x05, 0x89, 0x46, 0xf2, 0x8b
    db 0x87, 0x28, 0x05, 0x89, 0x46, 0xf0, 0xc7, 0x46, 0xf8, 0x0c, 0x00, 0xb8, 0x0e, 0x00, 0x83, 0x7e
    db 0x06, 0x0e, 0x75, 0x03, 0xb8, 0x0d, 0x00, 0x89, 0x46, 0xf6, 0xeb, 0x1c, 0x41, 0x7f, 0x83, 0x7f
    db 0xcc, 0x7f, 0xcc, 0x7f, 0x96, 0x80, 0x96, 0x80

@..local.l134:
    sub ax, strict word 0xa
    cmp ax, strict word 6
    jae short @..local.l135
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7f23]
@..local.l135:
    cmp word [bp - 0x000c], byte 0xff
    je short @..local.l136
    mov ax, 3
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x576]
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    call api_idx_0004_5
    add sp, byte 0x1c
@..local.l136:
    ret
api_idx_0012_3:
    mov ax, 0xffee
    db 0xe8, 0x11, 0xc3 ; call 0xf40b
    cmp word [bp + 0x4], byte 4
    jge short @..api_idx_0012_3.l1
    cmp word [bp + 0x6], byte 0
    jle short @..api_idx_0012_3.l1
    cmp word [bp + 0x6], byte 4
    jge short @..api_idx_0012_3.l1
    mov ax, 1
    jmp short @..api_idx_0012_3.l2
@..api_idx_0012_3.l1:
    mov ax, 0
@..api_idx_0012_3.l2:
    mov word [bp - 0x0012], ax
    cmp word [bp - 0x0012], byte 0
    jne short @..api_idx_0012_3.l3
    jmp near @..api_idx_0012_3.l20
@..api_idx_0012_3.l3:
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx - 0x6dbe], byte 0
    jne short @..api_idx_0012_3.l4
    cmp word [bx - 0x6d40], byte 0
    jne short @..api_idx_0012_3.l4
    jmp near @..api_idx_0012_3.l20
@..api_idx_0012_3.l4:
    cmp word [bp + 0x6], byte 2
    jne short @..api_idx_0012_3.l5
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 3
    push ax
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x20]
    add ax, word [bp + 0x4]
    push ax
    call loc_193b
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x20]
    add ax, word [bp + 0x4]
    push ax
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp short @..api_idx_0012_3.l9
@..api_idx_0012_3.l5:
    cmp word [bp + 0x4], byte 0
    jle short @..api_idx_0012_3.l9
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 3
    push ax
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    cmp word [bp + 0x6], byte 3
    jne short @..api_idx_0012_3.l6
    mov ax, word [bp + 0x2a]
    add ax, word [bp + 0x4]
@..api_idx_0012_3.l6:
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    cmp word [bp + 0x6], byte 3
    jne short @..api_idx_0012_3.l7
    mov ax, word [bp + 0x2a]
    add ax, word [bp + 0x4]
    jmp short @..api_idx_0012_3.l8
@..api_idx_0012_3.l7:
    mov ax, word [bp + 0x28]
    add ax, word [bp + 0x4]
@..api_idx_0012_3.l8:
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
@..api_idx_0012_3.l9:
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx - 0x6dbe], byte 0
    jne short @..api_idx_0012_3.l10
    jmp near @..api_idx_0012_3.l20
@..api_idx_0012_3.l10:
    mov cx, word [bx - 0x6dbe]
    dec cx
    mov ax, word [data_82ee]
    sub ax, cx
    add ax, strict word 6
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], 0
    mov ax, dx
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    jne short @..api_idx_0012_3.l11
    cmp word [bp + 0x4], byte 0
    jg short @..api_idx_0012_3.l12
@..api_idx_0012_3.l11:
    cmp word [bp + 0x6], byte 2
    jne short @..api_idx_0012_3.l15
@..api_idx_0012_3.l12:
    test ax, ax
    je short @..api_idx_0012_3.l13
    mov ax, 3
    jmp short @..api_idx_0012_3.l14
@..api_idx_0012_3.l13:
    mov ax, 0
@..api_idx_0012_3.l14:
    mov cx, word [bp + 0x4]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    inc ax
    inc ax
    inc ax
    mov word [bp - 0x0004], ax
    mov ax, word [data_91a4]
    mov word [bp - 0x0006], ax
    mov ax, word [bx + 0x260]
    mov word [bp - 0x0008], ax
    jmp short @..api_idx_0012_3.l17
@..api_idx_0012_3.l15:
    cmp word [bp + 0x4], byte 0
    jle short @..api_idx_0012_3.l17
    mov ax, word [bp + 0x4]
    add ax, strict word 0x20
    mov word [bp - 0x0004], ax
    mov ax, 0
    cmp word [bp + 0x6], byte 3
    jne short @..api_idx_0012_3.l16
    mov ax, 1
@..api_idx_0012_3.l16:
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], 0
@..api_idx_0012_3.l17:
    cmp word [bp - 0x0004], byte 0
    je short @..api_idx_0012_3.l20
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0006]
    push ax
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    push word [bp + 0x6]
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    je short @..api_idx_0012_3.l18
    cmp dx, byte 1
    jne short @..api_idx_0012_3.l18
    mov ax, 1
    jmp short @..api_idx_0012_3.l19
@..api_idx_0012_3.l18:
    mov ax, 0
@..api_idx_0012_3.l19:
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    mov ax, 0
    push ax
    push word [bp - 0x0008]
    mov ax, 4
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
@..api_idx_0012_3.l20:
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx - 0x6e3b]
    sub ah, ah
    jmp near @..local.l150
@..api_idx_0012_3.l21:
    cmp word [data_91a8], byte 2
    je short @..api_idx_0012_3.l22
    jmp near @..local.l146
@..api_idx_0012_3.l22:
    cmp word [bp + 0x4], byte 5
    jl short @..local.l137
    jmp near @..local.l145
@..local.l137:
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xc]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x18]
    add ax, word [bp + 0x4]
    push ax
    call loc_193b
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x1a]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x18]
    add ax, word [bp + 0x4]
    push ax
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    mov word [bp - 0x000e], 0xffff
    mov word [bp - 0x000a], 0xffff
    mov word [bp - 0x0010], 0xffff
    mov word [bp - 0x000c], 0xffff
    cmp word [bp + 0x40], byte 0xff
    je short @..local.l138
    mov ax, word [bp + 0x42]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x40]
    add ax, word [bp + 0x4]
    push ax
    call loc_194f
    add sp, byte 4
    mov word [bp - 0x000e], ax
    mov ax, word [bp + 0x40]
    add ax, word [bp + 0x4]
    push ax
    call loc_193b
    pop cx
    mov word [bp - 0x0010], ax
@..local.l138:
    cmp word [bp + 0x4], byte 0
    jle short @..local.l139
    mov ax, word [bp + 0x3e]
    add ax, word [bp + 0x4]
    dec ax
    push ax
    mov ax, word [bp + 0x3c]
    add ax, word [bp + 0x4]
    dec ax
    push ax
    call loc_1927
    add sp, byte 4
    mov word [bp - 0x000a], ax
    mov ax, word [bp + 0x3c]
    add ax, word [bp + 0x4]
    dec ax
    push ax
    call loc_1913
    pop cx
    mov word [bp - 0x000c], ax
@..local.l139:
    cmp word [bp - 0x000a], byte 0xff
    jne short @..local.l140
    cmp word [bp - 0x000e], byte 0xff
    jne short @..local.l140
    jmp near @..local.l145
@..local.l140:
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xc]
    push word [bp + 0x4]
    push word [bp - 0x000c]
    push word [bp - 0x0010]
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x000e]
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    cmp word [bp - 0x000a], byte 0xff
    jne short @..local.l141
    jmp near @..local.l145
@..local.l141:
    cmp word [data_91a8], byte 0
    jne short @..local.l142
    jmp near @..local.l145
@..local.l142:
    mov ax, word [bp + 0x4]
    cmp ax, strict word 4
    je short @..local.l143
    jmp near @..local.l145
@..local.l143:
    cmp word [bp + 0x6], byte 0
    jne short @..local.l144
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xc]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, 0xc2
    push ax
    call loc_1913
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0xc3
    push ax
    mov ax, 0xc2
    push ax
    call loc_1927
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp short @..local.l145
@..local.l144:
    cmp word [bp + 0x6], byte 4
    jne short @..local.l145
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xc]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, 0xc3
    push ax
    call loc_1913
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0xc2
    push ax
    mov ax, 0xc3
    push ax
    call loc_1927
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
@..local.l145:
    jmp near @..local.l149
@..local.l146:
    cmp word [data_91a8], byte 4
    je short @..local.l147
    jmp near @..local.l149
@..local.l147:
    cmp word [bp + 0x4], byte 4
    jl short @..local.l148
    jmp near @..local.l149
@..local.l148:
    mov ax, word [bp + 0x38]
    add ax, word [bp + 0x4]
    push ax
    call loc_193b
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, word [bp + 0x3a]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x38]
    add ax, word [bp + 0x4]
    push ax
    call loc_194f
    add sp, byte 4
    push ax
    push word [bp + 0x10]
    call 0xf01f
    add sp, byte 8
    mov ax, word [bp + 0x4]
    cmp ax, strict word 2
    jge short @..local.l149
    cmp word [bp + 0x6], byte 2
    jne short @..local.l149
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x10]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x19
    push ax
    call loc_193b
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x19
    push ax
    push ax
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 0xfe
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
@..local.l149:
    jmp short @..local.l151
@..local.l150:
    cmp ax, strict word 1
    jne short @..local.l151
    jmp near @..api_idx_0012_3.l21
@..local.l151:
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx - 0x6e54]
    sub ah, ah
    jmp near @..local.l152

    db 0x83, 0x7e, 0x04, 0x05, 0x7d, 0x2e, 0x8b, 0x46, 0x1c, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xe6, 0xe3
    db 0x59, 0x50, 0xb8, 0x02, 0x00, 0x50, 0x8b, 0x46, 0x1e, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x1c
    db 0x03, 0x46, 0x04, 0x50, 0xe8, 0xe3, 0xe3, 0x83, 0xc4, 0x04, 0x50, 0xff, 0x76, 0x0a, 0xe8, 0xa9
    db 0xba, 0x83, 0xc4, 0x08, 0xe9, 0x95, 0x00, 0x83, 0x7e, 0x04, 0x05, 0x7d, 0x2e, 0x8b, 0x46, 0x30
    db 0x03, 0x46, 0x04, 0x50, 0xe8, 0xaf, 0xe3, 0x59, 0x50, 0xb8, 0x02, 0x00, 0x50, 0x8b, 0x46, 0x32
    db 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x30, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xac, 0xe3, 0x83, 0xc4
    db 0x04, 0x50, 0xff, 0x76, 0x16, 0xe8, 0x72, 0xba, 0x83, 0xc4, 0x08, 0xeb, 0x5f, 0x83, 0x7e, 0x04
    db 0x05, 0x7d, 0x3c, 0xa1, 0xa6, 0x91, 0x03, 0x06, 0xe8, 0x82, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9
    db 0x8b, 0xc2, 0x85, 0xc0, 0x74, 0x08, 0x8b, 0x46, 0x34, 0x03, 0x46, 0x04, 0xeb, 0x03, 0xb8, 0xff
    db 0xff, 0x50, 0x51, 0x85, 0xd2, 0x74, 0x08, 0x8b, 0x46, 0x36, 0x03, 0x46, 0x04, 0xeb, 0x06, 0x8b
    db 0x46, 0x34, 0x03, 0x46, 0x04, 0x50, 0xff, 0x76, 0x14, 0xe8, 0x2e, 0xba, 0x83, 0xc4, 0x08, 0xeb
    db 0x1b, 0xeb, 0x19, 0xeb, 0x17, 0x3f, 0x86, 0x8c, 0x85, 0xc3, 0x85, 0xf9, 0x85, 0x3d, 0x86

@..local.l152:
    cmp ax, strict word 5
    jae short @..local.l153
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x79bf]
@..local.l153:
    cmp word [bp - 0x0012], byte 0
    jne short @..local.l154
    jmp near @..local.l167
@..local.l154:
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx - 0x6df0], byte 0
    jne short @..local.l155
    cmp word [bx - 0x6d72], byte 0
    jne short @..local.l155
    jmp near @..local.l167
@..local.l155:
    cmp word [bp + 0x6], byte 2
    jne short @..local.l156
    mov ax, word [bp + 0x24]
    add ax, word [bp + 0x4]
    push ax
    call loc_193b
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, word [bp + 0x26]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x24]
    add ax, word [bp + 0x4]
    push ax
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 3
    push ax
    db 0xe8, 0xb3, 0xb9 ; call 0xf01f
    add sp, byte 8
    jmp short @..local.l160
@..local.l156:
    cmp word [bp + 0x4], byte 0
    jle short @..local.l160
    mov ax, 0xffff
    cmp word [bp + 0x6], byte 3
    jne short @..local.l157
    mov ax, word [bp + 0x2e]
    add ax, word [bp + 0x4]
@..local.l157:
    push ax
    mov ax, 2
    push ax
    cmp word [bp + 0x6], byte 3
    jne short @..local.l158
    mov ax, word [bp + 0x2e]
    add ax, word [bp + 0x4]
    jmp short @..local.l159
@..local.l158:
    mov ax, word [bp + 0x2c]
    add ax, word [bp + 0x4]
@..local.l159:
    push ax
    mov ax, 3
    push ax
    db 0xe8, 0x78, 0xb9 ; call 0xf01f
    add sp, byte 8
@..local.l160:
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx - 0x6df0], byte 0
    jne short @..local.l161
    jmp near @..local.l167
@..local.l161:
    mov cx, word [bx - 0x6df0]
    dec cx
    mov ax, word [data_82ee]
    sub ax, cx
    add ax, strict word 6
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], 0
    mov ax, dx
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    jne short @..local.l162
    cmp word [bp + 0x4], byte 0
    jg short @..local.l163
@..local.l162:
    cmp word [bp + 0x6], byte 2
    jne short @..local.l164
@..local.l163:
    mov cx, word [bp + 0x4]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    inc ax
    mov word [bp - 0x0004], ax
    mov ax, word [data_91a4]
    mov word [bp - 0x0006], ax
    mov ax, word [bx + 0x260]
    mov word [bp - 0x0008], ax
    jmp short @..local.l166
@..local.l164:
    cmp word [bp + 0x4], byte 0
    jle short @..local.l166
    mov ax, word [bp + 0x4]
    add ax, strict word 0x20
    mov word [bp - 0x0004], ax
    mov ax, 0
    cmp word [bp + 0x6], byte 3
    jne short @..local.l165
    mov ax, 1
@..local.l165:
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], 0
@..local.l166:
    cmp word [bp - 0x0004], byte 0
    je short @..local.l167
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0006]
    push ax
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp - 0x0004]
    push ax
    push word [bp - 0x0008]
    mov ax, 4
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
@..local.l167:
    cmp word [bp + 0x4], byte 4
    jl short @..local.l168
    jmp near @..local.l189
@..local.l168:
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    cmp byte [bx - 0x6d8c], 3
    je short @..local.l169
    jmp near @..local.l175
@..local.l169:
    mov ax, word [bp + 0x4]
    cmp ax, strict word 0
    jg short @..local.l170
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    je short @..local.l170
    jmp near @..local.l175
@..local.l170:
    cmp word [bp + 0x4], byte 0
    jne short @..local.l171
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    jne short @..local.l171
    cmp word [data_8f22], byte 0
    je short @..local.l171
    mov word [data_8f20], 0xffff
@..local.l171:
    cmp word [bp + 0x4], byte 0
    jne short @..local.l172
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    jne short @..local.l172
    mov ax, 2
    jmp short @..local.l173
@..local.l172:
    mov ax, 1
@..local.l173:
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x4]
    cmp word [bp - 0x0004], byte 2
    je short @..local.l174
    dec ax
@..local.l174:
    mov word [bp - 0x0008], ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0008]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x576]
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp - 0x0004]
    push word [bx + 0x3dc]
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x3aa]
    mov ax, 0xc
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
@..local.l175:
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    cmp byte [bx - 0x6d8c], 1
    je short @..local.l176
    cmp byte [bx - 0x6d8c], 2
    jne short @..local.l178
@..local.l176:
    mov ax, word [bp + 0x4]
    cmp ax, strict word 0
    jg short @..local.l177
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    jne short @..local.l178
@..local.l177:
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x576]
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx - 0x6d8c]
    sub ah, ah
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x3dc]
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x3aa]
    mov ax, 0xb
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
@..local.l178:
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    cmp byte [bx - 0x6e09], 0
    jne short @..local.l179
    jmp near @..local.l189
@..local.l179:
    cmp word [bp + 0x4], byte 0
    jne short @..local.l180
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    jne short @..local.l180
    cmp word [data_8f22], byte 0
    je short @..local.l180
    mov al, byte [bx - 0x6e09]
    sub ah, ah
    mov word [data_8f20], ax
    jmp near @..local.l189
@..local.l180:
    mov ax, word [bp + 0x4]
    cmp ax, strict word 0
    jg short @..local.l181
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    je short @..local.l181
    jmp near @..local.l189
@..local.l181:
    mov al, byte [bx - 0x6e09]
    sub ah, ah
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [data_82ee]
    sub ax, cx
    add ax, strict word 6
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    mov ax, dx
    jmp near @..local.l186
@..local.l182:
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x576]
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    mov ax, 5
    cmp word [bp - 0x0002], byte 0
    jne short @..local.l183
    mov ax, 4
@..local.l183:
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    push word [bx + 0x3dc]
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x3aa]
    mov ax, 3
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp short @..local.l189
@..local.l184:
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    cmp word [bp - 0x0002], byte 3
    jne short @..local.l185
    mov ax, 1
@..local.l185:
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x576]
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 3
    push ax
    push word [bx + 0x3dc]
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x3aa]
    mov ax, 3
    push ax
    call api_idx_0004_5
    add sp, byte 0x1c
    jmp short @..local.l189
@..local.l186:
    cmp ax, strict word 0
    jne short @..local.l187
    jmp near @..local.l182
@..local.l187:
    cmp ax, strict word 1
    je short @..local.l184
    cmp ax, strict word 2
    jne short @..local.l188
    jmp near @..local.l182
@..local.l188:
    cmp ax, strict word 3
    je short @..local.l184
@..local.l189:
    ret
api_idx_0016:
    mov ax, 0xffea
    db 0xe8, 0x23, 0xba ; call 0xf40b
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xb]
    sub ah, ah
    mov word [bp - 0x000c], ax
    cmp byte [bx + 0xa], 0
    je short @..api_idx_0016.l1
    jmp near @..api_idx_0016.l10
@..api_idx_0016.l1:
    mov al, byte [bx + 0x8]
    sub ah, ah
    mov word [bp - 0x0002], ax
    jmp near @..api_idx_0016.l8
@..api_idx_0016.l2:
    mov word [bp - 0x000a], 0
    mov al, byte [bp - 0x0002]
    mov byte [bp - 0x0016], al
    mov byte [bp - 0x0015], 0
    mov word [bp - 0x0006], 0
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x8]
    sub ah, ah
    inc ax
    cmp ax, word [bp - 0x0002]
    jne short @..api_idx_0016.l3
    mov ax, 3
    jmp short @..api_idx_0016.l4
@..api_idx_0016.l3:
    mov ax, 1
@..api_idx_0016.l4:
    mov word [bp - 0x0008], ax
    mov ax, word [bp - 0x0006]
    mov word [bp - 0x0004], ax
    jmp near @..api_idx_0016.l6
@..api_idx_0016.l5:
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xf]
    sub ah, ah
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    push word [bx + 0x6]
    push word [bx + 0x4]
    mov bx, word [bp - 0x0002]
    mov al, byte [bx + 0x7013]
    sub ah, ah
    add ax, word [bp - 0x000a]
    push ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xd]
    sub ah, ah
    mov cx, 0xa
    imul cx
    mov cx, word [bp - 0x000c]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x260]
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    push ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xf]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6fca]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xc]
    sub ah, ah
    push ax
    call 0xefd1
    add sp, byte 0x16
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xd]
    sub ah, ah
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x29c]
    add word [bp - 0x000a], ax
    inc word [bp - 0x0004]
@..api_idx_0016.l6:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0008]
    jge short @..api_idx_0016.l7
    jmp near @..api_idx_0016.l5
@..api_idx_0016.l7:
    inc word [bp - 0x0002]
@..api_idx_0016.l8:
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x8]
    sub ah, ah
    inc ax
    inc ax
    inc ax
    cmp ax, word [bp - 0x0002]
    jle short @..api_idx_0016.l9
    jmp near @..api_idx_0016.l2
@..api_idx_0016.l9:
    jmp near @..api_idx_0016.l12
@..api_idx_0016.l10:
    mov word [bp - 0x000a], 0
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x8]
    mov byte [bp - 0x0016], al
    mov byte [bp - 0x0015], 0
    mov word [bp - 0x0004], 0
@..api_idx_0016.l11:
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xf]
    sub ah, ah
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    push word [bx + 0x6]
    push word [bx + 0x4]
    mov al, byte [bx + 0xd]
    sub ah, ah
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x292]
    add ax, word [bp - 0x000a]
    push ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x8]
    sub ah, ah
    shl ax, 1
    push ax
    mov al, byte [bx + 0xf]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6fca]
    sub ah, ah
    push ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xc]
    sub ah, ah
    push ax
    db 0xe8, 0x70, 0xb4 ; call 0xefd1
    add sp, byte 0x16
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xd]
    sub ah, ah
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x29c]
    add word [bp - 0x000a], ax
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jl short @..api_idx_0016.l11
@..api_idx_0016.l12:
    ret
api_idx_0024:
    mov ax, 0xffdc
    db 0xe8, 0x82, 0xb8 ; call 0xf40b
    mov ax, word [data_8f1c]
    mov dx, word [data_8f1e]
    mov cx, 0x5a0
    mov bx, 0
    call 0xf99f
    add ax, strict word 1
    adc dx, byte 0
    mov word [bp - 0x0004], ax
    add ax, strict word 0x12
    mov cx, 0x18
    cwd
    idiv cx
    mov word [bp - 0x0006], dx
    mov ax, word [data_8f1c]
    mov dx, word [data_8f1e]
    mov cx, 0x5a0
    mov bx, 0
    call 0xf9cd
    mov cx, 0x3c
    mov bx, 0
    db 0xe8, 0xd8, 0xbd ; call 0xf99f
    cmp dx, byte 0
    jg short @..api_idx_0024.l1
    jne short @..api_idx_0024.l2
    cmp ax, strict word 0xc
    jb short @..api_idx_0024.l2
@..api_idx_0024.l1:
    jmp short @..api_idx_0024.l3
@..api_idx_0024.l2:
    cmp word [bp - 0x0006], byte 0x0c
    jle short @..api_idx_0024.l3
    dec word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x12
    mov cx, 0x18
    cwd
    idiv cx
    mov word [bp - 0x0006], dx
@..api_idx_0024.l3:
    mov ax, 0x3c
    imul word [bp - 0x0006]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [data_8f1c]
    mov dx, word [data_8f1e]
    sub ax, cx
    sbb dx, bx
    mov cx, 0x5a0
    mov bx, 0
    db 0xe8, 0xc1, 0xbd ; call 0xf9cd
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jl short @..api_idx_0024.l4
    cmp ax, 0x1e0
    jl short @..local.l190
@..api_idx_0024.l4:
    ret
@..local.l190:
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000a], ax
    mov word [bp - 0x0002], 0
@..local.l191:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0016], 0xff01
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short @..local.l191
    cmp word [bp - 0x000a], byte 0x3e
    jge short @..local.l192
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x72
    mov word [bp - 0x0014], ax
@..local.l192:
    cmp word [bp - 0x000a], byte 0x10
    jl short @..local.l193
    cmp word [bp - 0x000a], strict word 0xd0
    jg short @..local.l193
    mov ax, word [bp - 0x000a]
    add ax, strict word 0xffe0
    mov word [bp - 0x0012], ax
@..local.l193:
    cmp word [bp - 0x000a], strict word 0xa2
    jl short @..local.l194
    cmp word [bp - 0x000a], strict word 0xf0
    jg short @..local.l194
    mov ax, word [bp - 0x000a]
    add ax, 0xff4e
    mov word [bp - 0x0010], ax
@..local.l194:
    mov ax, word [data_82ee]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0016], strict word 0xff01
    jne short @..local.l195
    ret
@..local.l195:
    mov ax, word [bp - 0x0008]
    mov cx, 0xf0
    cwd
    idiv cx
    mov ax, dx
    mov cx, 7
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov ax, word [bp - 0x0008]
    mov cx, 0xf0
    cwd
    idiv cx
    test ax, ax
    je short @..local.l196
    mov ax, 0x22
    sub ax, word [bp - 0x000c]
    jmp short @..local.l197
@..local.l196:
    mov ax, word [bp - 0x000c]
@..local.l197:
    mov word [bp - 0x000e], ax
    mov ax, word [bp - 0x0004]
    mov cx, 3
    cwd
    idiv cx
    mov cx, 8
    cwd
    idiv cx
    mov word [bp - 0x0018], dx
    mov ax, 1
    cmp dx, byte 5
    jge short @..local.l198
    mov ax, 0
@..local.l198:
    mov word [bp - 0x001a], ax
    cmp dx, byte 5
    jge short @..local.l199
    inc dx
    mov ax, dx
    jmp short @..local.l200
@..local.l199:
    sub cx, word [bp - 0x0018]
    mov ax, cx
    inc ax
@..local.l200:
    mov byte [bp - 0x0024], al
    mov byte [bp - 0x0023], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0024]
    push ax
    push word [bp - 0x001a]
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0x44
    sub ax, word [bp - 0x000e]
    push ax
    mov ax, word [bx - 0x0016]
    add ax, strict word 0x48
    push ax
    mov ax, 6
    push ax
    db 0xe8, 0xac, 0xb2 ; call 0xefd1
    add sp, byte 0x16
    ret
api_idx_001e:
    mov ax, 0xffe2
    db 0xe8, 0xdc, 0xb6 ; call 0xf40b
    mov word [bp - 0x0004], 0x14a
    mov ax, word [data_8f1c]
    mov dx, word [data_8f1e]
    push ax
    push dx
    mov ax, word [bp - 0x0004]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    sub ax, cx
    sbb dx, bx
    mov cx, 0x5a0
    mov bx, 0
    db 0xe8, 0x79, 0xbc ; call 0xf9cd
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jl short @..api_idx_001e.l1
    cmp ax, 0x36c
    jl short @..local.l201
@..api_idx_001e.l1:
    ret
@..local.l201:
    mov cx, 3
    cwd
    idiv cx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x0002], 0
@..local.l202:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0014], 0xff01
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short @..local.l202
    cmp word [bp - 0x0008], byte 0x68
    jg short @..local.l203
    mov ax, 0x58
    sub ax, word [bp - 0x0008]
    mov word [bp - 0x0012], ax
@..local.l203:
    cmp word [bp - 0x0008], byte 0x3a
    jl short @..local.l204
    cmp word [bp - 0x0008], strict word 0xfa
    jg short @..local.l204
    mov ax, 0xb0
    mov cx, word [bp - 0x0008]
    add cx, byte 0xc6
    sub ax, cx
    mov word [bp - 0x0014], ax
@..local.l204:
    cmp word [bp - 0x0008], strict word 0xcc
    jl short @..local.l205
    cmp word [bp - 0x0008], strict word 0x124
    jg short @..local.l205
    mov ax, 0xb0
    mov cx, word [bp - 0x0008]
    add cx, strict word 0xff34
    sub ax, cx
    mov word [bp - 0x000e], ax
@..local.l205:
    mov ax, word [data_82ee]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0014], strict word 0xff01
    jne short @..local.l206
    ret
@..local.l206:
    cmp word [bp - 0x0006], strict word 0x10e
    jge short @..local.l207
    mov ax, word [bp - 0x0006]
    mov cx, 0xa
    cwd
    idiv cx
    add ax, strict word 5
    mov word [bp - 0x000c], ax
    jmp short @..local.l211
@..local.l207:
    mov ax, word [bp - 0x0006]
    cmp ax, 0x276
    jl short @..local.l208
    add ax, 0xfd8a
    mov cx, 9
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x20
    sub ax, cx
    mov word [bp - 0x000c], ax
    jmp short @..local.l211
@..local.l208:
    mov ax, word [bp - 0x0006]
    add ax, 0xfef2
    mov cx, 0xb4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x24
    cwd
    idiv cx
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0006]
    add ax, 0xfef2
    mov cx, 0xb4
    cwd
    idiv cx
    test ax, ax
    je short @..local.l209
    mov ax, 0x24
    sub ax, word [bp - 0x000a]
    jmp short @..local.l210
@..local.l209:
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x20
@..local.l210:
    mov word [bp - 0x000c], ax
@..local.l211:
    mov byte [bp - 0x001e], 6
    mov byte [bp - 0x001d], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x001e]
    push ax
    mov ax, 0
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0x46
    sub ax, word [bp - 0x000c]
    push ax
    mov ax, word [bx - 0x0014]
    add ax, strict word 0x48
    push ax
    mov ax, 6
    push ax
    db 0xe8, 0x49, 0xb1 ; call 0xefd1
    add sp, byte 0x16
    ret
api_idx_0030:
    mov ax, 0xffd0
    db 0xe8, 0x79, 0xb5 ; call 0xf40b
    mov word [bp - 0x0024], 0
    mov word [bp - 0x0022], 4
    mov word [bp - 0x0020], 1
    mov word [bp - 0x001e], 3
    mov word [bp - 0x001c], 2
    mov word [data_8f20], 0
    mov ax, word [data_8f46]
    mov word [bp - 0x000a], ax
    mov ax, word [data_8f44]
    mov word [bp - 0x000c], ax
    mov ax, word [data_8f42]
    mov word [bp - 0x000e], ax
    mov ax, word [data_8f40]
    mov word [bp - 0x0010], ax
    mov ax, word [data_8f3e]
    mov word [bp - 0x0012], ax
    mov word [data_8f48], 0
    mov word [data_8456], 0
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
    db 0xe8, 0x0f, 0xaa ; call 0xe901
    add sp, byte 0x0a
    mov ax, word [bp - 0x0012]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp - 0x0010]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp - 0x000e]
    mov word [bp - 0x0008], ax
    cmp word [data_830c], byte 0x0a
    je short @..api_idx_0030.l1
    cmp word [data_830c], byte 0x19
    je short @..api_idx_0030.l1
    jmp near @..local.l212
@..api_idx_0030.l1:
    push ax
    mov ax, word [data_0e14]
    add ax, 0x930
    push ax
    db 0xe8, 0x4a, 0xad ; call 0xec74
    add sp, byte 4
    test ax, ax
    jne short @..api_idx_0030.l2
    jmp near @..local.l212
@..api_idx_0030.l2:
    mov ax, 0x63
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    db 0xe8, 0xb6, 0xa9 ; call 0xe901
    add sp, byte 0x0a
    mov ax, word [data_830c]
    cmp ax, word [data_8f28]
    jne short @..api_idx_0030.l4
    mov ax, word [bp - 0x0012]
    cmp ax, word [data_8f2a]
    jne short @..api_idx_0030.l4
    mov ax, word [bp - 0x000e]
    cmp ax, word [data_8f2e]
    jne short @..api_idx_0030.l4
    mov ax, word [bp - 0x0010]
    cmp ax, word [data_8f2c]
    jne short @..api_idx_0030.l4
    cmp word [data_8f22], byte 0
    je short @..api_idx_0030.l3
    mov word [data_8f20], 0xffff
@..api_idx_0030.l3:
    mov byte [bp - 0x0030], 2
    mov byte [bp - 0x002f], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0030]
    push ax
    mov ax, 0
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov al, byte [data_7b05]
    sub ah, ah
    inc ax
    push ax
    mov al, byte [data_7abe]
    sub ah, ah
    inc ax
    push ax
    mov ax, 0xc
    push ax
    db 0xe8, 0x18, 0xb0 ; call 0xefd1
    add sp, byte 0x16
@..api_idx_0030.l4:
    call 0xda22
    ret
@..local.l212:
    cmp word [data_5b6e], byte 1
    je short @..local.l213
    cmp word [data_9188], byte 0
    je short @..local.l215
@..local.l213:
    push word [bp - 0x0008]
    mov ax, word [data_0e14]
    add ax, 0x8b0
    push ax
    db 0xe8, 0x99, 0xac ; call 0xec74
    add sp, byte 4
    test ax, ax
    je short @..local.l215
    cmp word [data_9188], byte 0
    je short @..local.l214
    mov ax, 0xff
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    db 0xe8, 0x01, 0xa9 ; call 0xe901
    add sp, byte 0x0a
    call api_idx_001e
    call api_idx_0024
@..local.l214:
    db 0xe8, 0x16, 0x9a ; call 0xda22
    ret
@..local.l215:
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x91de
    push ax
    db 0xe8, 0xea, 0xb2 ; call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x91c5
    push ax
    db 0xe8, 0xd8, 0xb2 ; call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x91ac
    push ax
    db 0xe8, 0xc6, 0xb2 ; call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x9aee
    push ax
    db 0xe8, 0xb4, 0xb2 ; call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x91f7
    push ax
    db 0xe8, 0xa2, 0xb2 ; call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, 0x928e
    push ax
    db 0xe8, 0x90, 0xb2 ; call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x9274
    push ax
    db 0xe8, 0x7e, 0xb2 ; call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, 0x9210
    push ax
    db 0xe8, 0x6c, 0xb2 ; call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, 0x92c0
    push ax
    db 0xe8, 0x5a, 0xb2 ; call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, 0x9242
    push ax
    db 0xe8, 0x48, 0xb2 ; call 0xf306
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x7f8
    push ax
    mov ax, 0x92f4
    push ax
    db 0xe8, 0x36, 0xb2 ; call 0xf306
    add sp, byte 6
    mov word [data_92f2], 0
    mov ax, word [bp - 0x0012]
    mov word [bp - 0x0014], ax
    mov ax, 0xffff
    push ax
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0014]
    push ax
    lea ax, word [bp - 0x0010]
    push ax
    lea ax, word [bp - 0x000e]
    push ax
    lea ax, word [bp - 0x000c]
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    call loc_1963
    add sp, byte 0x0e
    mov word [data_9b08], 5
    mov ax, word [data_8f46]
    add ax, word [data_8f44]
    add ax, word [data_82ee]
    mov cx, 2
    cwd
    idiv cx
    mov word [data_91a6], dx
    mov word [data_91a8], 0
    mov ax, word [data_5b6e]
    jmp near @..local.l216

    db 0xc7, 0x06, 0xa8, 0x91, 0x00, 0x00, 0x83, 0x3e, 0x0c, 0x83, 0x1e, 0x75, 0x09, 0x83, 0x3e, 0x3e
    db 0x8f, 0x08, 0x75, 0x02, 0xeb, 0x23, 0xb8, 0x1f, 0x00, 0x50, 0xe8, 0xf6, 0xd7, 0x59, 0x50, 0xb8
    db 0x00, 0x00, 0x50

    mov ax, 0x1f
    push ax
    push ax
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 0
    push ax
    db 0xe8, 0xc1, 0xae ; call 0xf01f
    add sp, byte 8
    mov ax, 0x20
    push ax
    call loc_193b
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    push ax
    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 0
    push ax
    db 0xe8, 0x9e, 0xae ; call 0xf01f
    add sp, byte 8
    jmp near @..local.l217

    db 0xc7, 0x06, 0xa8, 0x91, 0x01, 0x00, 0xb8, 0xff, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xb8, 0xf7
    db 0x00, 0x50, 0xb8, 0x21, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xe8, 0x5d, 0xa7, 0x83, 0xc4, 0x0a
    db 0xe8, 0x7f, 0xfb, 0xe8, 0xd6, 0xf9, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x87, 0xd7, 0x59, 0x50, 0xb8
    db 0x02, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0x50, 0xe8, 0x8d, 0xd7, 0x83, 0xc4, 0x04, 0x50, 0xb8
    db 0x01, 0x00, 0x50, 0xe8, 0x52, 0xae, 0x83, 0xc4, 0x08, 0xb8, 0x3e, 0x00, 0x50, 0xe8, 0x64, 0xd7
    db 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x3e, 0x00, 0x50, 0x50, 0xe8, 0x6a, 0xd7, 0x83, 0xc4
    db 0x04, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0x2f, 0xae, 0x83, 0xc4, 0x08, 0xe9, 0x96, 0x02, 0xc7
    db 0x06, 0xa8, 0x91, 0x02, 0x00, 0xb8, 0xff, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xb8, 0xf7, 0x00
    db 0x50, 0xb8, 0x21, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xe8, 0xee, 0xa6, 0x83, 0xc4, 0x0a, 0xe8
    db 0x10, 0xfb, 0xe8, 0x67, 0xf9, 0x83, 0x3e, 0x0c, 0x83, 0x0e, 0x75, 0x3d, 0x83, 0x3e, 0x3e, 0x8f
    db 0x09, 0x7e, 0x36, 0x83, 0x3e, 0x3e, 0x8f, 0x0a, 0x7f, 0x16, 0xa1, 0xee, 0x82, 0x3d, 0x02, 0x00
    db 0x74, 0x0e, 0x83, 0x3e, 0xee, 0x82, 0x00, 0x74, 0x20, 0x83, 0x3e, 0x40, 0x8f, 0x05, 0x7d, 0x19
    db 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x50, 0x00, 0x50, 0xb8, 0xf7, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50
    db 0x50, 0xe8, 0xa6, 0xa6, 0x83, 0xc4, 0x0a, 0xeb, 0x46, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0xd4, 0xd6
    db 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0x50, 0xe8, 0xda, 0xd6, 0x83, 0xc4
    db 0x04, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x9f, 0xad, 0x83, 0xc4, 0x08, 0xb8, 0xad, 0x00, 0x50
    db 0xe8, 0xb1, 0xd6, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0xad, 0x00, 0x50, 0x50, 0xe8, 0xb7
    db 0xd6, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xe8, 0x7c, 0xad, 0x83, 0xc4, 0x08, 0xe9
    db 0xe3, 0x01, 0xc7, 0x06, 0xa8, 0x91, 0x03, 0x00, 0xb8, 0xff, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x83
    db 0x3e, 0x88, 0x91, 0x00, 0x74, 0x03, 0xb8, 0x8e, 0x00, 0x50, 0xb8, 0xf7, 0x00, 0x50, 0xb8, 0x21
    db 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xe8, 0x31, 0xa6, 0x83, 0xc4, 0x0a, 0xe8, 0x53, 0xfa, 0xe8
    db 0xaa, 0xf8, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x5b, 0xd6, 0x59, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8
    db 0x04, 0x00, 0x50, 0x50, 0xe8, 0x61, 0xd6, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xe8
    db 0x26, 0xad, 0x83, 0xc4, 0x08, 0x83, 0x3e, 0x88, 0x91, 0x00, 0x75, 0x23, 0xb8, 0x2a, 0x00, 0x50
    db 0xe8, 0x31, 0xd6, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x2a, 0x00, 0x50, 0x50, 0xe8, 0x37
    db 0xd6, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0xfc, 0xac, 0x83, 0xc4, 0x08, 0xe9
    db 0x63, 0x01, 0xc7, 0x06, 0xa8, 0x91, 0x04, 0x00, 0xb8, 0xff, 0x00, 0x50, 0xb8, 0x38, 0x00, 0x50
    db 0xb8, 0xf7, 0x00, 0x50, 0xb8, 0x21, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xe8, 0xbb, 0xa5, 0x83
    db 0xc4, 0x0a, 0xe8, 0xdd, 0xf9, 0xe8, 0x34, 0xf8, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x50, 0x00, 0x50
    db 0xb8, 0xf7, 0x00, 0x50, 0xb8, 0x39, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xe8, 0x9b, 0xa5, 0x83
    db 0xc4, 0x0a, 0xb8, 0x2a, 0x00, 0x50, 0xe8, 0xcb, 0xd5, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x2a, 0x00, 0x50, 0x50, 0xe8, 0xd1, 0xd5, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xe8
    db 0x96, 0xac, 0x83, 0xc4, 0x08, 0xe9, 0xfd, 0x00, 0xc7, 0x06, 0xa8, 0x91, 0x05, 0x00, 0xb8, 0xff
    db 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xb8, 0xf7, 0x00, 0x50, 0xb8, 0x21, 0x00, 0x50, 0xb8, 0x48
    db 0x00, 0x50, 0xe8, 0x55, 0xa5, 0x83, 0xc4, 0x0a, 0xe8, 0x77, 0xf9, 0xe8, 0xce, 0xf7, 0xb8, 0x3e
    db 0x00, 0x50, 0xe8, 0x7f, 0xd5, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x3e, 0x00, 0x50, 0x50
    db 0xe8, 0x85, 0xd5, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0x4a, 0xac, 0x83, 0xc4
    db 0x08, 0x83, 0x3e, 0x0c, 0x83, 0x08, 0x75, 0x3a, 0x83, 0x3e, 0x3e, 0x8f, 0x06, 0x75, 0x33, 0x83
    db 0x3e, 0x40, 0x8f, 0x04, 0x75, 0x2c, 0xa1, 0x42, 0x8f, 0x3d, 0x02, 0x00, 0x74, 0x05, 0x3d, 0x01
    db 0x00, 0x75, 0x08, 0xa1, 0xee, 0x82, 0x3d, 0x01, 0x00, 0x74, 0x15, 0xa1, 0x42, 0x8f, 0x3d, 0x05
    db 0x00, 0x74, 0x05, 0x3d, 0x06, 0x00, 0x75, 0x0a, 0xa1, 0xee, 0x82, 0x3d, 0x03, 0x00, 0x75, 0x02
    db 0xeb, 0x17, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x50, 0x00, 0x50, 0xb8, 0xf7, 0x00, 0x50, 0xb8, 0x48
    db 0x00, 0x50, 0x50, 0xe8, 0xd4, 0xa4, 0x83, 0xc4, 0x0a, 0x83, 0x3e, 0x0c, 0x83, 0x08, 0x74, 0x15
    db 0x83, 0x3e, 0x0c, 0x83, 0x0b, 0x75, 0x31, 0x83, 0x3e, 0x3e, 0x8f, 0x06, 0x75, 0x2a, 0x83, 0x3e
    db 0x40, 0x8f, 0x03, 0x7e, 0x23, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0xe8, 0xd4, 0x59, 0x50, 0xb8, 0x02
    db 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0x50

    call loc_194f
    add sp, byte 4
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0xb3, 0xab ; call 0xf01f
    add sp, byte 8
    jmp short @..local.l217
    rcl word [si - 0x6e91], cl
    into
    xchg cx, ax
    cmp ax, 0xf092
    xchg dx, ax
    jo short 0x4410
    salc
    xchg bx, ax
@..local.l216:
    cmp ax, strict word 7
    jae short @..local.l217
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6b48]
@..local.l217:
    mov word [data_91aa], 0
@..local.l218:
    mov ax, word [data_91aa]
    cmp ax, word [data_9b08]
    jl short @..local.l219
    jmp near @..local.l231
@..local.l219:
    mov ax, word [data_8f46]
    add ax, word [data_8f44]
    add ax, word [data_82ee]
    mov cx, ax
    mov ax, word [data_91aa]
    add cx, ax
    mov ax, cx
    mov cx, 2
    cwd
    idiv cx
    mov word [data_91a4], dx
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0012]
    push ax
    lea ax, word [bp - 0x0010]
    push ax
    lea ax, word [bp - 0x000e]
    push ax
    lea ax, word [bp - 0x000c]
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    call loc_1963
    add sp, byte 0x0e
    test ax, ax
    je short @..local.l226
    mov ax, word [data_91a8]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    cmp ax, strict word 1
    jne short @..local.l224
    mov ax, word [data_91a8]
    cmp ax, strict word 5
    je short @..local.l222
    cmp word [data_9188], byte 0
    je short @..local.l220
    mov word [data_9b0a], 0
    jmp short @..local.l221
@..local.l220:
    mov ax, 5
    imul word [data_91aa]
    mov bx, ax
    mov byte [bx - 0x6e52], 1
    mov word [data_9b0a], 4
@..local.l221:
    jmp short @..local.l223
@..local.l222:
    mov ax, 5
    imul word [data_91aa]
    mov bx, ax
    mov byte [bx - 0x6e52], 3
    mov word [data_9b0a], 0
@..local.l223:
    jmp short @..local.l225
@..local.l224:
    mov word [data_9b0a], 2
@..local.l225:
    mov ax, word [data_9b0a]
    mov word [data_9b0c], ax
    mov word [data_9b0e], ax
    jmp short @..local.l227
@..local.l226:
    mov ax, 0
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call api_idx_0008_3
    add sp, byte 0x0c
    mov word [data_9b0a], ax
    mov ax, 0
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    push ax
    call api_idx_0008_4
    add sp, byte 0x0e
    mov word [data_9b0c], ax
    mov ax, 0
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    mov ax, 2
    push ax
    call api_idx_0008_4
    add sp, byte 0x0e
    mov word [data_9b0e], ax
@..local.l227:
    mov ax, 0xffff
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call api_idx_0008_3
    add sp, byte 0x0c
    mov word [data_9b10], ax
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call api_idx_0008_3
    add sp, byte 0x0c
    mov word [data_9b12], ax
    cmp word [data_91aa], byte 1
    jle short @..local.l228
    mov ax, 0xfffe
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call api_idx_0008_3
    add sp, byte 0x0c
    mov word [data_9b14], ax
    mov ax, 2
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call api_idx_0008_3
    add sp, byte 0x0c
    mov word [data_9b16], ax
    mov ax, 0xffff
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    mov ax, 0
    push ax
    call api_idx_0008_4
    add sp, byte 0x0e
    mov word [data_9b18], ax
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    mov ax, 2
    push ax
    call api_idx_0008_4
    add sp, byte 0x0e
    mov word [data_9b1a], ax
    jmp short @..local.l229
@..local.l228:
    mov word [data_9b14], 0
    mov word [data_9b16], 0
    mov word [data_9b18], 0
    mov word [data_9b1a], 0
@..local.l229:
    cmp word [data_9b0a], byte 0
    jne short @..local.l230
    mov ax, word [data_8456]
    cmp ax, word [data_91aa]
    jne short @..local.l230
    inc word [data_8456]
@..local.l230:
    mov ax, word [data_91a4]
    mov word [data_9aec], ax
    mov ax, 0x1e
    push ax
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 0x85
    push ax
    push ax
    mov ax, 0x1d
    push ax
    mov ax, 0x21
    push ax
    push ax
    mov ax, 0x1d
    push ax
    mov ax, 0x19
    push ax
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 0x8c
    push ax
    push ax
    mov ax, 0x6e
    push ax
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0x27
    push ax
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0x21
    push ax
    push ax
    mov ax, 0x3f
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    push word [data_9b0a]
    push word [data_91aa]
    call api_idx_0010
    add sp, byte 0x4a
    mov ax, 0xffff
    push ax
    push ax
    mov ax, 0xae
    push ax
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xc
    push ax
    mov ax, 8
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0x10
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 4
    push ax
    push ax
    mov ax, 0x25
    push ax
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 6
    push ax
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    push word [data_91aa]
    call api_idx_0012_3
    add sp, byte 0x40
    mov ax, 0x39
    push ax
    mov ax, 0x34
    push ax
    mov ax, 0x1b
    push ax
    mov ax, 0x16
    push ax
    mov ax, 0x9e
    push ax
    mov ax, 0x99
    push ax
    mov ax, 0x80
    push ax
    mov ax, 0x7b
    push ax
    mov ax, 0x6d
    push ax
    mov ax, 0x69
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0x55
    push ax
    mov ax, 0x1c
    push ax
    mov ax, 0x17
    push ax
    mov ax, 0xaa
    push ax
    mov ax, 0x62
    push ax
    mov ax, 0x5e
    push ax
    mov ax, 0x52
    push ax
    mov ax, 0x4e
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x15
    push ax
    mov ax, 0x13
    push ax
    mov ax, 0xf
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_9b0c]
    push word [data_91aa]
    call api_idx_0012_2
    add sp, byte 0x40
    mov ax, 0x34
    push ax
    mov ax, 0x39
    push ax
    mov ax, 0x16
    push ax
    mov ax, 0x1b
    push ax
    mov ax, 0x99
    push ax
    mov ax, 0x9e
    push ax
    mov ax, 0xffff
    push ax
    push ax
    mov ax, 0x69
    push ax
    mov ax, 0x6d
    push ax
    mov ax, 0x55
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0x17
    push ax
    mov ax, 0x1c
    push ax
    mov ax, 0xaf
    push ax
    mov ax, 0x5e
    push ax
    mov ax, 0x62
    push ax
    mov ax, 0x4e
    push ax
    mov ax, 0x52
    push ax
    mov ax, 0x15
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0xf
    push ax
    mov ax, 0x13
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    push word [data_9b0e]
    push word [data_91aa]
    call api_idx_0012_2
    add sp, byte 0x40
    mov ax, 0x43
    push ax
    mov ax, 0x3e
    push ax
    mov ax, 0x25
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0xa8
    push ax
    mov ax, 0xa3
    push ax
    mov ax, 0xffff
    push ax
    push ax
    mov ax, 0x76
    push ax
    mov ax, 0x71
    push ax
    mov ax, 0x64
    push ax
    mov ax, 0x5f
    push ax
    mov ax, 0x26
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0x6a
    push ax
    mov ax, 0x66
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0x56
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x1d
    push ax
    mov ax, 0x1b
    push ax
    mov ax, 0x17
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    push word [data_9b18]
    push word [data_91aa]
    call api_idx_0012_2
    add sp, byte 0x40
    mov ax, 0x3e
    push ax
    mov ax, 0x43
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0x25
    push ax
    mov ax, 0xa3
    push ax
    mov ax, 0xa8
    push ax
    mov ax, 0xffff
    push ax
    push ax
    mov ax, 0x71
    push ax
    mov ax, 0x76
    push ax
    mov ax, 0x5f
    push ax
    mov ax, 0x64
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x26
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0x66
    push ax
    mov ax, 0x6a
    push ax
    mov ax, 0x56
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0x1d
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x17
    push ax
    mov ax, 0x1b
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    push word [data_9b1a]
    push word [data_91aa]
    call api_idx_0012_2
    add sp, byte 0x40
    mov ax, word [data_91a4]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [data_9aec], dx
    mov ax, 0x22
    push ax
    push ax
    mov ax, 4
    push ax
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0x89
    push ax
    mov ax, 0x29
    push ax
    mov ax, 0x2d
    push ax
    push ax
    mov ax, 0x29
    push ax
    mov ax, 0x25
    push ax
    push ax
    mov ax, 5
    push ax
    push ax
    mov ax, 0x92
    push ax
    push ax
    mov ax, 0x74
    push ax
    push ax
    mov ax, 0x2d
    push ax
    mov ax, 0x30
    push ax
    push ax
    mov ax, 0x2d
    push ax
    mov ax, 0x2a
    push ax
    push ax
    mov ax, 0x43
    push ax
    mov ax, 5
    push ax
    mov ax, 3
    push ax
    push ax
    mov ax, 4
    push ax
    push cx
    push ax
    push cx
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_9b10]
    push word [data_91aa]
    call api_idx_0010
    add sp, byte 0x4a
    mov ax, 0xc9
    push ax
    mov ax, 0xc4
    push ax
    mov ax, 0xb2
    push ax
    push ax
    mov ax, 0xf
    push ax
    mov ax, 5
    push ax
    mov ax, 0xf
    push ax
    mov ax, 5
    push ax
    mov ax, 0xf
    push ax
    mov ax, 5
    push ax
    mov ax, 0xc
    push ax
    mov ax, 8
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0x10
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 4
    push ax
    push ax
    mov ax, 0x34
    push ax
    mov ax, 0x2a
    push ax
    mov ax, 0xf
    push ax
    mov ax, 5
    push ax
    mov ax, 6
    push ax
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_91aa]
    call api_idx_0012_3
    add sp, byte 0x40
    mov ax, word [data_91a4]
    mov word [data_9aec], ax
    mov ax, 0x26
    push ax
    push ax
    mov ax, 8
    push ax
    push ax
    mov ax, 0x95
    push ax
    mov ax, 0x8d
    push ax
    mov ax, 0x35
    push ax
    mov ax, 0x39
    push ax
    push ax
    mov ax, 0x35
    push ax
    mov ax, 0x31
    push ax
    push ax
    mov ax, 9
    push ax
    push ax
    mov ax, 0x98
    push ax
    push ax
    mov ax, 0x7a
    push ax
    push ax
    mov ax, 0x36
    push ax
    mov ax, 0x39
    push ax
    push ax
    mov ax, 0x36
    push ax
    mov ax, 0x33
    push ax
    push ax
    mov ax, 0x47
    push ax
    mov ax, 9
    push ax
    mov ax, 6
    push ax
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    push word [data_9b14]
    push word [data_91aa]
    call api_idx_0010
    add sp, byte 0x4a
    mov ax, 0xd3
    push ax
    mov ax, 0xce
    push ax
    mov ax, 0xb6
    push ax
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0xc
    push ax
    mov ax, 8
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0x10
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 4
    push ax
    push ax
    mov ax, 0x39
    push ax
    mov ax, 0x2f
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0xa
    push ax
    mov ax, 6
    push ax
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    push word [data_91aa]
    call api_idx_0012_3
    add sp, byte 0x40
    mov ax, word [data_91a4]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [data_9aec], dx
    mov ax, 0x2a
    push ax
    push ax
    mov ax, 0xc
    push ax
    push ax
    mov ax, 0x89
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0x41
    push ax
    mov ax, 0x45
    push ax
    push ax
    mov ax, 0x41
    push ax
    mov ax, 0x3d
    push ax
    push ax
    mov ax, 0xd
    push ax
    push ax
    mov ax, 0x9e
    push ax
    push ax
    mov ax, 0x80
    push ax
    push ax
    mov ax, 0x3f
    push ax
    mov ax, 0x42
    push ax
    push ax
    mov ax, 0x3f
    push ax
    mov ax, 0x3c
    push ax
    push ax
    mov ax, 0x4b
    push ax
    mov ax, 0xd
    push ax
    mov ax, 9
    push ax
    push ax
    mov ax, 4
    push ax
    push cx
    push ax
    push cx
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    push word [data_9b12]
    push word [data_91aa]
    call api_idx_0010
    add sp, byte 0x4a
    mov ax, 0xc4
    push ax
    mov ax, 0xc9
    push ax
    mov ax, 0xba
    push ax
    push ax
    mov ax, 5
    push ax
    mov ax, 0xf
    push ax
    mov ax, 5
    push ax
    mov ax, 0xf
    push ax
    mov ax, 5
    push ax
    mov ax, 0xf
    push ax
    mov ax, 0xc
    push ax
    mov ax, 8
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0x10
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 4
    push ax
    push ax
    mov ax, 0x2a
    push ax
    mov ax, 0x34
    push ax
    mov ax, 5
    push ax
    mov ax, 0xf
    push ax
    mov ax, 6
    push ax
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    push word [data_91aa]
    call api_idx_0012_3
    add sp, byte 0x40
    mov ax, word [data_91a4]
    mov word [data_9aec], ax
    mov ax, 0x2e
    push ax
    push ax
    mov ax, 0x10
    push ax
    push ax
    mov ax, 0x8d
    push ax
    mov ax, 0x95
    push ax
    mov ax, 0x4d
    push ax
    mov ax, 0x51
    push ax
    push ax
    mov ax, 0x4d
    push ax
    mov ax, 0x49
    push ax
    push ax
    mov ax, 0x11
    push ax
    push ax
    mov ax, 0xa4
    push ax
    push ax
    mov ax, 0x86
    push ax
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0x4b
    push ax
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0x45
    push ax
    push ax
    mov ax, 0x4f
    push ax
    mov ax, 0x11
    push ax
    mov ax, 0xc
    push ax
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    push word [data_9b16]
    push word [data_91aa]
    call api_idx_0010
    add sp, byte 0x4a
    mov ax, 0xce
    push ax
    mov ax, 0xd3
    push ax
    mov ax, 0xbe
    push ax
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0xc
    push ax
    mov ax, 8
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0x10
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 4
    push ax
    push ax
    mov ax, 0x2f
    push ax
    mov ax, 0x39
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x14
    push ax
    mov ax, 6
    push ax
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    push word [data_91aa]
    call api_idx_0012_3
    add sp, byte 0x40
    inc word [data_91aa]
    jmp near @..local.l218
@..local.l231:
    mov ax, word [data_9b08]
    dec ax
    mov word [data_91aa], ax
    jmp near @..local.l284
@..local.l232:
    mov word [bp - 0x0004], 0xff
@..local.l233:
    mov ax, word [data_92f2]
    dec ax
    mov word [bp - 0x0002], ax
    jmp short @..local.l237
@..local.l234:
    mov ax, 0x11
    imul word [bp - 0x0002]
    add ax, 0x92f4
    mov word [bp - 0x0026], ax
    mov bx, ax
    mov al, byte [bx + 0xd]
    sub ah, ah
    cmp ax, word [data_91aa]
    jne short @..local.l236
    mov al, byte [bx + 0xc]
    sub ah, ah
    cmp ax, word [bp - 0x0004]
    jne short @..local.l236
    cmp word [bx], byte 0xff
    je short @..local.l235
    push word [bx + 0x4]
    mov al, byte [bx + 0x8]
    sub ah, ah
    push ax
    push word [bx]
    mov al, byte [bx + 0xe]
    sub ah, ah
    push ax
    db 0xe8, 0x5f, 0xa2 ; call 0xf01f
    add sp, byte 8
@..local.l235:
    mov bx, word [bp - 0x0026]
    cmp word [bx + 0x2], byte 0xff
    je short @..local.l236
    push word [bx + 0x6]
    mov al, byte [bx + 0x9]
    sub ah, ah
    push ax
    push word [bx + 0x2]
    mov al, byte [bx + 0xe]
    sub ah, ah
    push ax
    db 0xe8, 0x3e, 0xa2 ; call 0xf01f
    add sp, byte 8
@..local.l236:
    dec word [bp - 0x0002]
@..local.l237:
    cmp word [bp - 0x0002], byte 0
    jge short @..local.l234
    mov ax, 0
    cmp word [bp - 0x0004], strict word 0xff
    je short @..local.l238
    mov ax, 0xffff
    cmp word [bp - 0x0004], strict word 0xfb
    jne short @..local.l238
    mov ax, 1
@..local.l238:
    mov word [bp - 0x0018], ax
    cmp ax, strict word 0xffff
    jne short @..local.l239
    jmp near @..local.l247
@..local.l239:
    mov ax, word [data_92f2]
    dec ax
    mov word [bp - 0x0002], ax
    jmp near @..local.l246
@..local.l240:
    mov ax, 0x11
    imul word [bp - 0x0002]
    add ax, 0x92f4
    mov word [bp - 0x0026], ax
    mov bx, ax
    mov al, byte [bx + 0xd]
    sub ah, ah
    cmp ax, word [data_91aa]
    je short @..local.l241
    jmp near @..local.l245
@..local.l241:
    mov al, byte [bx + 0xc]
    sub ah, ah
    cmp ax, 0xfa
    jl short @..local.l242
    jmp near @..local.l245
@..local.l242:
    mov al, byte [bx + 0x10]
    sub ah, ah
    cmp ax, word [bp - 0x0018]
    jne short @..local.l245
    cmp byte [bx + 0xc], 4
    jne short @..local.l243
    cmp byte [bx + 0x9], 1
    jne short @..local.l243
    push bx
    call api_idx_0016
    pop cx
    jmp short @..local.l245
@..local.l243:
    mov word [bp - 0x0006], 0
@..local.l244:
    mov bx, word [bp - 0x0026]
    mov si, word [bp - 0x0006]
    mov al, byte [bx + si + 0x8]
    mov bx, si
    add bx, bp
    mov byte [bx - 0x0030], al
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 4
    jl short @..local.l244
    mov byte [bp - 0x002c], 0
    mov bx, word [bp - 0x0026]
    mov al, byte [bx + 0xe]
    sub ah, ah
    push ax
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0030]
    push ax
    mov al, byte [bx + 0xf]
    sub ah, ah
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    push word [bx + 0x6]
    push word [bx + 0x4]
    push word [bx + 0x2]
    push word [bx]
    mov al, byte [bx + 0xc]
    sub ah, ah
    push ax
    db 0xe8, 0x1b, 0xa1 ; call 0xefd1
    add sp, byte 0x16
@..local.l245:
    dec word [bp - 0x0002]
@..local.l246:
    cmp word [bp - 0x0002], byte 0
    jl short @..local.l247
    jmp near @..local.l240
@..local.l247:
    dec word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, 0xfb
    jl short @..local.l248
    jmp near @..local.l233
@..local.l248:
    mov al, byte [data_5b55]
    sub ah, ah
    cmp ax, 0xff
    jne short @..local.l249
    jmp near @..local.l269
@..local.l249:
    cmp word [data_91aa], byte 0
    je short @..local.l250
    jmp near @..local.l269
@..local.l250:
    cmp word [data_91a8], byte 0
    jne short @..local.l251
    cmp byte [data_91b8], 3
    jne short @..local.l251
    jmp near @..local.l269
@..local.l251:
    mov ax, word [data_91a8]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    jne short @..local.l252
    cmp word [data_8456], byte 1
    jg short @..local.l252
    jmp near @..local.l269
@..local.l252:
    mov word [bp - 0x0006], 0
@..local.l253:
    mov ax, word [bp - 0x0006]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6e7e], byte 0
    jg short @..local.l254
    jmp near @..local.l258
@..local.l254:
    mov al, byte [bx - 0x6e7e]
    mov byte [bp - 0x0030], al
    mov byte [bp - 0x002f], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0030]
    push ax
    push word [bx - 0x6e62]
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov bx, word [bx - 0x6e7e]
    mov al, byte [bx + 0x7c61]
    sub ah, ah
    mov cx, word [bp - 0x0006]
    shl cx, 1
    mov bx, cx
    add ax, word [bx - 0x6e74]
    push ax
    mov ax, word [bx - 0x6e7e]
    shl ax, 1
    add ax, word [bx - 0x6e62]
    mov bx, ax
    mov al, byte [bx + 0x7c18]
    sub ah, ah
    mov bx, cx
    add ax, word [bx - 0x6e6e]
    push ax
    mov ax, 0xd
    push ax
    db 0xe8, 0x49, 0xa0 ; call 0xefd1
    add sp, byte 0x16
    mov ax, word [bp - 0x0006]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6e68], byte 0
    je short @..local.l255
    dec word [bx - 0x6e7e]
    jmp short @..local.l256
@..local.l255:
    inc word [bx - 0x6e7e]
@..local.l256:
    mov al, byte [data_7d3c]
    sub ah, ah
    cmp ax, word [bx - 0x6e7e]
    jge short @..local.l257
    mov word [bx - 0x6e7e], 0
@..local.l257:
    jmp near @..local.l268
@..local.l258:
    cmp word [data_8f22], byte 0
    je short @..local.l259
    jmp near @..local.l268
@..local.l259:
    mov ax, 0x64
    push ax
    db 0xe8, 0xe1, 0x67 ; call 0xb7a9
    pop cx
    cmp ax, word [bp - 0x0006]
    jle short @..local.l260
    jmp near @..local.l268
@..local.l260:
    mov ax, 2
    push ax
    db 0xe8, 0xd1, 0x67 ; call 0xb7a9
    pop cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6e62], ax
    mov ax, word [data_91a8]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short @..local.l261
    push cx
    db 0xe8, 0xb2, 0x67 ; call 0xb7a9
    pop cx
    jmp short @..local.l262
@..local.l261:
    mov ax, 0
@..local.l262:
    mov cx, word [bp - 0x0006]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6e68], ax
    mov ax, 1
    cmp word [bx - 0x6e68], byte 0
    je short @..local.l263
    mov al, byte [data_7d3c]
    sub ah, ah
@..local.l263:
    mov word [bx - 0x6e7e], ax
    mov ax, word [data_91a8]
    mov cx, 1
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short @..local.l264
    mov ax, 0x1e
    jmp short @..local.l265
@..local.l264:
    mov ax, 0xa
@..local.l265:
    mov word [bp - 0x0002], ax
    cmp word [bx - 0x6e62], byte 0
    je short @..local.l266
    push ax
    db 0xe8, 0x69, 0x67 ; call 0xb7a9
    pop cx
    jmp short @..local.l267
@..local.l266:
    push word [bp - 0x0002]
    db 0xe8, 0x60, 0x67 ; call 0xb7a9
    pop cx
    mov cx, ax
    mov ax, 0
    sub ax, cx
@..local.l267:
    mov cx, word [bp - 0x0006]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6e6e], ax
    mov ax, 5
    push ax
    db 0xe8, 0x46, 0x67 ; call 0xb7a9
    pop cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6e74], ax
@..local.l268:
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 3
    jge short @..local.l269
    jmp near @..local.l253
@..local.l269:
    cmp word [data_91a8], byte 0
    je short @..local.l270
    mov ax, word [data_91a8]
    cmp ax, strict word 2
    jg short @..local.l270
    jmp near @..local.l283
@..local.l270:
    mov word [bp - 0x0014], 0
@..local.l271:
    mov ax, word [bp - 0x0014]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0024]
    mov word [bp - 0x0002], ax
    mov ax, 5
    imul word [data_91aa]
    mov cx, ax
    mov ax, word [bp - 0x0002]
    add cx, ax
    mov bx, cx
    mov al, byte [bx - 0x6e22]
    sub ah, ah
    mov word [bp - 0x001a], ax
    test ax, ax
    jne short @..local.l272
    jmp near @..local.l282
@..local.l272:
    mov ax, 0x28
    imul word [data_91aa]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x2a6], byte 0
    jne short @..local.l273
    jmp near @..local.l282
@..local.l273:
    cmp word [bp - 0x001a], byte 1
    je short @..local.l274
    cmp word [data_9188], byte 0
    je short @..local.l276
@..local.l274:
    mov ax, 0
    cmp word [data_9188], byte 0
    je short @..local.l275
    mov ax, 0xff
@..local.l275:
    push ax
    push word [bx + 0x2ac]
    push word [bx + 0x2aa]
    push word [bx + 0x2a8]
    push word [bx + 0x2a6]
    db 0xe8, 0xf2, 0x97 ; call 0xe901
    add sp, byte 0x0a
    jmp near @..local.l281
@..local.l276:
    cmp word [data_91aa], byte 0
    jg short @..local.l277
    jmp near @..local.l281
@..local.l277:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    add ax, word [data_91aa]
    shl ax, 1
    mov bx, ax
    cmp byte [bx + 0x76a0], 0
    jne short @..local.l278
    jmp near @..local.l281
@..local.l278:
    mov ax, 2
    push ax
    db 0xe8, 0x6a, 0x66 ; call 0xb7a9
    pop cx
    add ax, word [data_8f46]
    add ax, word [data_8f44]
    add ax, word [data_82ee]
    add ax, word [data_91aa]
    mov cx, 2
    cwd
    idiv cx
    mov word [data_91a4], dx
    mov al, byte [data_91aa]
    mov byte [bp - 0x0030], al
    mov byte [bp - 0x002f], 0
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    add ax, word [data_91aa]
    shl ax, 1
    add ax, dx
    mov bx, ax
    mov al, byte [bx + 0x76a0]
    sub ah, ah
    mov word [bp - 0x0006], ax
    cmp ax, 0xff
    jne short @..local.l280
    mov ax, 0xffee
    cmp word [data_91a4], byte 0
    je short @..local.l279
    mov ax, 0xffea
@..local.l279:
    mov word [bp - 0x0006], ax
@..local.l280:
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0030]
    push ax
    push dx
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    add ax, word [data_91aa]
    mov bx, ax
    mov al, byte [bx + 0x76e9]
    sub ah, ah
    push ax
    push word [bp - 0x0006]
    mov ax, 9
    push ax
    db 0xe8, 0x06, 0x9e ; call 0xefd1
    add sp, byte 0x16
@..local.l281:
    cmp word [data_9188], byte 0
    je short @..local.l282
    call api_idx_001e
    call api_idx_0024
@..local.l282:
    inc word [bp - 0x0014]
    mov ax, word [bp - 0x0014]
    cmp ax, strict word 5
    jge short @..local.l283
    jmp near @..local.l271
@..local.l283:
    dec word [data_91aa]
@..local.l284:
    cmp word [data_91aa], byte 0
    jl short @..local.l285
    jmp near @..local.l232
@..local.l285:
    db 0xe8, 0x28, 0x88 ; call 0xda22
    ret
loc_51fb:
    mov ax, 0
    db 0xe8, 0x0a, 0xa2 ; call 0xf40b
    call api_idx_0030
    mov ax, 0x8f
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0x48
    push ax
    db 0xe8, 0xc3, 0x96 ; call 0xe8da
    add sp, byte 8
    ret

    db 0x8f, 0x06, 0x7e, 0x91, 0x59, 0x89, 0x26, 0x7a, 0x91, 0x89, 0x2e, 0x7c, 0x91, 0x89, 0x36, 0x76
    db 0x91, 0x89, 0x3e, 0x78, 0x91, 0xfc, 0xbf, 0x80, 0x91, 0xb9, 0x1c, 0x9b, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0xca, 0xad, 0x8b, 0x2e, 0x7c, 0x91, 0x8b, 0x26, 0x7a
    db 0x91, 0x8b, 0x36, 0x76, 0x91, 0x8b, 0x3e, 0x78, 0x91, 0x51, 0xff, 0x26, 0x7e, 0x91
    db 'MAZEDATA.VGA', 0
    db 'WATRDATA.VGA', 0
    db 'TREEDATA.VGA', 0
    db 'OTWNDATA.VGA', 0
    db 'TILEDATA.VGA', 0
    db 'TOWNDATA.VGA', 0
    db 'OTWNDATA.VGA', 0
    db 'WATRDATA.VGA', 0
    db 'TILEDATA.VGA', 0
    db 'TREEDATA.VGA', 0
    db 'OCAVDATA.VGA', 0
    db 'CAVEDATA.VGA', 0
    db 'OCAVDATA.VGA', 0
    db 'WATRDATA.VGA', 0
    db 'TREEDATA.VGA', 0
    db 'OTWNDATA.VGA', 0
    db 'WATRDATA.VGA', 0
    times 11 db 0

