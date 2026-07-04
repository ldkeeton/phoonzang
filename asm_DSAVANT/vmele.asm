%include "structs/structs.inc"
%include "structs/data_90bc.inc"
org 0
bits 16
    db 0xf2, 0x00, 0x55, 0x50, 0x65, 0x37, 0x98, 0x90 ; header (8 bytes)

data_0002 equ 0x0002
data_0e36 equ 0x0e36
data_5962 equ 0x5962
data_5963 equ 0x5963
data_5964 equ 0x5964
data_5988 equ 0x5988
data_598e equ 0x598e
data_5b6e equ 0x5b6e
data_69c8 equ 0x69c8
data_7abc equ 0x7abc
data_7b04 equ 0x7b04
data_82b6 equ 0x82b6
data_82e8 equ 0x82e8
data_82ee equ 0x82ee
data_82fa equ 0x82fa
data_82fc equ 0x82fc
data_830a equ 0x830a
data_830c equ 0x830c
data_8452 equ 0x8452
data_8454 equ 0x8454
data_8456 equ 0x8456
data_8458 equ 0x8458
data_845a equ 0x845a
data_845c equ 0x845c
data_845e equ 0x845e
data_8460 equ 0x8460
data_8466 equ 0x8466
data_8468 equ 0x8468
data_8482 equ 0x8482
data_8484 equ 0x8484
data_8492 equ 0x8492
data_849e equ 0x849e
data_84a0 equ 0x84a0
data_84a2 equ 0x84a2
data_84a4 equ 0x84a4
data_8d0a equ 0x8d0a
data_8d0c equ 0x8d0c
data_8d0e equ 0x8d0e
data_8d10 equ 0x8d10
data_8f20 equ 0x8f20
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
data_90b6 equ 0x90b6
data_90b8 equ 0x90b8
data_90ba equ 0x90ba
data_90bc equ 0x90bc

    db 0x1e, 0x00, 0x1a, 0x00, 0x57, 0x87
math_loc_000e:
    mov ax, 0
    call 0xf40b
    mov word [data_90b6], 5
    mov word [data_90b8], 0
    mov word [data_90ba], 0
    mov word [data_90bc], 0
    cmp word [data_830a], byte 0x0a
    jne short @..math_loc_000e.l1
    call loc_33df
@..math_loc_000e.l1:
    cmp word [data_830a], byte 0x0e
    jne short @..math_loc_000e.l2
    call api_idx_0056
@..math_loc_000e.l2:
    cmp word [data_830a], byte 0x0b
    jne short @..math_loc_000e.l3
    call api_idx_0002_2
@..math_loc_000e.l3:
    mov ax, 0
    ret
api_idx_0008:
    mov ax, 0xfff8
    db 0xe8, 0xb7, 0xf3 ; call 0xfffff40b
    push word [bp + 0x4]
    call 0xca85
    pop cx
    test ax, ax
    jne short @..api_idx_0008.l1
    jmp near @..api_idx_0008.l4
@..api_idx_0008.l1:
    mov ax, 0x2c
    imul word [bp + 0x4]
    mov si, ax
    mov bx, word [data_8482]
    cmp byte [bx + si + 0x2b], 1
    je short @..api_idx_0008.l2
    cmp byte [bx + si + 0x2b], 3
    je short @..api_idx_0008.l2
    jmp near @..api_idx_0008.l4
@..api_idx_0008.l2:
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
    je short @..api_idx_0008.l3
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
@..api_idx_0008.l3:
    jmp short @..api_idx_0008.l5
@..api_idx_0008.l4:
    push word [bp + 0x6]
    push word [bp + 0x4]
    db 0xe8, 0x3c, 0xca ; call 0xffffcb3a
    add sp, byte 4
@..api_idx_0008.l5:
    ret
api_idx_0004:
    mov ax, 0xfffc
    db 0xe8, 0x03, 0xf3 ; call 0xfffff40b
    call 0xec17
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
    jmp short @..local.l3
@..api_idx_0004.l3:
    call 0xbaef
    test ax, ax
    je short @..local.l1
    ret
@..local.l1:
    mov ax, 1
    push ax
    call 0xea50
    pop cx
    test ax, ax
    je short @..local.l2
    mov ax, 1
    push ax
    call 0xeb32
    pop cx
    cmp al, 0xd
    jne short @..local.l2
    ret
@..local.l2:
    call api_idx_0006_2
    jmp short @..api_idx_0004.l1
@..local.l3:
    ret
api_idx_0008_2:
    mov ax, 0xfff8
    db 0xe8, 0xa1, 0xf2 ; call 0xfffff40b
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
    db 0xe8, 0x51, 0xe7 ; call 0xffffe8da
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
    db 0xe8, 0xe2, 0xf8 ; call 0xfffffa90
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
    db 0xe8, 0x09, 0xe6 ; call 0xffffe809
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
    db 0xe8, 0xad, 0xe6 ; call 0xffffe8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0008]
    call 0xe94f
    add sp, byte 6
    db 0xe8, 0xd4, 0xe9 ; call 0xffffec17
    ret
api_idx_000a:
    mov ax, 0xfff6
    db 0xe8, 0xc1, 0xf1 ; call 0xfffff40b
    mov ax, 0
    push ax
    push word [data_8d10]
    push word [data_8d0e]
    db 0xe8, 0xf6, 0xe6 ; call 0xffffe94f
    add sp, byte 6
    mov ax, 0
    push ax
    push word [data_8d0c]
    push word [data_8d0a]
    db 0xe8, 0xe4, 0xe6 ; call 0xffffe94f
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
    db 0xe8, 0x1c, 0xe6 ; call 0xffffe8da
    add sp, byte 8
@..api_idx_000a.l1:
    ret
api_idx_0004_2:
    mov ax, 0xfffc
    db 0xe8, 0x43, 0xf1 ; call 0xfffff40b
    mov word [bp - 0x0004], 0x20
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0004_2.l3
@..api_idx_0004_2.l1:
    cmp word [bp - 0x0004], byte 0x20
    je short @..api_idx_0004_2.l2
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x41
    jb short @..api_idx_0004_2.l2
    cmp byte [bx + si], 0x5a
    ja short @..api_idx_0004_2.l2
    add byte [bx + si], 0x20
@..api_idx_0004_2.l2:
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si]
    sub ah, ah
    mov word [bp - 0x0004], ax
    inc word [bp - 0x0002]
@..api_idx_0004_2.l3:
    push word [bp + 0x4]
    db 0xe8, 0x8d, 0xf7 ; call 0xfffffa90
    pop cx
    cmp ax, word [bp - 0x0002]
    jg short @..api_idx_0004_2.l1
    ret
api_idx_000c:
    mov ax, 0xfff4
    db 0xe8, 0xfb, 0xf0 ; call 0xfffff40b
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
    db 0xe8, 0xd9, 0xe4 ; call 0xffffe823
    add sp, byte 4
    mov ax, 0xa4
    push ax
    push word [bp - 0x0002]
    db 0xe8, 0xb2, 0xe4 ; call 0xffffe809
    add sp, byte 4
    mov ax, 2
    push ax
    push word [bp + 0x4]
    db 0xe8, 0xea, 0xe4 ; call 0xffffe84e
    add sp, byte 4
    mov ax, word [data_598e]
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
    db 0xe8, 0x55, 0xe5 ; call 0xffffe8da
    add sp, byte 8
    mov ax, 0x10
    push ax
    call 0xb7e0
    pop cx
    cmp word [bp - 0x000c], byte 0xff
    je short @..api_idx_000c.l1
    push word [bp - 0x000c]
    db 0xe8, 0x0e, 0xd4 ; call 0xffffd7aa
    pop cx
    jmp short @..api_idx_000c.l2
@..api_idx_000c.l1:
    mov ax, 0x10
    push ax
    call 0xd6c6
    pop cx
    mov word [data_598e], 0xffff
@..api_idx_000c.l2:
    mov ax, 0
    push ax
    call api_idx_000a
    pop cx
    db 0xe8, 0x5f, 0xe8 ; call 0xffffec17
    ret
api_idx_0004_3:
    mov ax, 0xfffc
    db 0xe8, 0x4c, 0xf0 ; call 0xfffff40b
    mov word [bp - 0x0004], 0xffff
    mov word [bp - 0x0002], 0xf
@..api_idx_0004_3.l1:
    mov bx, word [bp - 0x0002]
    mov al, byte [bx + 0x5b48]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jne short @..local.l4
    mov byte [bx + 0x5b5a], 1
    mov ax, bx
    ret
@..local.l4:
    cmp byte [bx + 0x5b5a], 0
    jne short @..local.l5
    mov word [bp - 0x0004], bx
@..local.l5:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x12
    jl short @..api_idx_0004_3.l1
    cmp word [bp - 0x0004], byte 0xff
    je short @..local.l7
    mov bx, word [bp - 0x0004]
    mov al, byte [bx + 0x5b48]
    sub ah, ah
    cmp ax, 0xff
    je short @..local.l6
    push bx
    call 0xc12a
    pop cx
@..local.l6:
    push word [bp - 0x0004]
    push word [bp + 0x4]
    call 0xd61c
    add sp, byte 4
@..local.l7:
    mov ax, word [bp - 0x0004]
    ret
api_idx_00a8:
    mov ax, 0xff58
    db 0xe8, 0xe8, 0xef ; call 0xfffff40b
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    cmp byte [bx + 0xe5], 2
    jge short @..local.l8
    mov ax, 0xffff
    ret
@..local.l8:
    mov al, byte [bx + 0xe5]
    cbw
    mov word [bp - 0x000a], ax
    mov word [bp - 0x0002], 0
@..local.l9:
    mov word [bp - 0x0004], 0
@..local.l10:
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
    jl short @..local.l10
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xc
    jl short @..local.l9
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
    mov ax, word [data_5b6e]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    jne short @..local.l11
    mov word [bp - 0x003c], 0xffff
    mov word [bp - 0x003a], 0x62
    mov word [bp - 0x0038], 0x63
    mov word [bp - 0x0036], 0x63
    mov word [bp - 0x0034], 0x64
    mov word [bp - 0x0032], 0x64
@..local.l11:
    mov word [bp - 0x0002], 0
@..local.l12:
    mov ax, 0xc
    imul word [bp - 0x000a]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    add ax, cx
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x009c]
    cmp ax, word [bp + 0x6]
    je short @..local.l13
    jmp near @..local.l16
@..local.l13:
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
@..local.l14:
    mov ax, 8
    push ax
    call 0xb7a9
    pop cx
    inc ax
    mov word [bp - 0x000c], ax
    mov bx, word [bp - 0x000c]
    add bx, bp
    cmp byte [bx - 0x00a8], 0
    jne short @..local.l14
    mov bx, word [bp - 0x000c]
    add bx, bp
    mov byte [bx - 0x00a8], 1
    inc word [bp - 0x0006]
    mov ax, 0xc
    imul word [bp - 0x000a]
    add ax, word [bp - 0x000c]
    mov bx, ax
    cmp byte [bx - 0x7622], 0x23
    jle short @..local.l15
    mov ax, 0xc
    imul word [bp - 0x000c]
    mov cx, word [bp - 0x0008]
    shl cx, 1
    add ax, cx
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x009c], byte 0xff
    je short @..local.l15
    mov ax, word [bx - 0x009c]
    ret
@..local.l15:
    cmp word [bp - 0x0006], byte 3
    jl short @..local.l14
    mov ax, 0xffff
    ret
@..local.l16:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jge short @..local.l17
    jmp near @..local.l12
@..local.l17:
    mov ax, 0xffff
    ret
api_idx_005e:
    mov ax, 0xffa2
    db 0xe8, 0xbc, 0xed ; call 0xfffff40b
    mov word [bp - 0x0002], 0xf
@..api_idx_005e.l1:
    mov bx, word [bp - 0x0002]
    mov al, byte [bx + 0x5b48]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jne short @..local.l18
    mov ax, 0
    ret
@..local.l18:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x12
    jl short @..api_idx_005e.l1
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
    jne short @..local.l19
    mov ax, 0xffff
    ret
@..local.l19:
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
    jl short @..local.l20
    jne short @..local.l21
    cmp ax, cx
    ja short @..local.l21
@..local.l20:
    jmp short @..local.l22
@..local.l21:
    mov ax, 0
    ret
@..local.l22:
    cmp byte [data_5962], 1
    jne short @..local.l25
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0xf8, 0xe1 ; call 0xffffe91b
    add sp, byte 4
    cmp dx, word [bp - 0x000a]
    jl short @..local.l23
    jne short @..local.l24
    cmp ax, word [bp - 0x000c]
    ja short @..local.l24
@..local.l23:
    jmp short @..local.l25
@..local.l24:
    mov word [bp - 0x000a], 0
    mov word [bp - 0x000c], 0
    jmp short @..local.l28
@..local.l25:
    cmp byte [data_5963], 1
    jne short @..local.l28
    mov al, byte [data_5964]
    sub ah, ah
    add ax, strict word 0xffc0
    mov word [bp - 0x000e], ax
    cmp ax, strict word 1
    jl short @..local.l28
    cmp ax, strict word 0x1a
    jg short @..local.l28
    push ax
    mov ax, 3
    push ax
    db 0xe8, 0xb7, 0xe1 ; call 0xffffe91b
    add sp, byte 4
    cmp dx, word [bp - 0x000a]
    jl short @..local.l26
    jne short @..local.l27
    cmp ax, word [bp - 0x000c]
    ja short @..local.l27
@..local.l26:
    jmp short @..local.l28
@..local.l27:
    mov word [bp - 0x000a], 0
    mov word [bp - 0x000c], 0
@..local.l28:
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    db 0xe8, 0x91, 0xe1 ; call 0xffffe91b
    add sp, byte 4
    mov cx, word [bp - 0x0008]
    mov bx, word [bp - 0x0006]
    add cx, word [bp - 0x000c]
    adc bx, word [bp - 0x000a]
    cmp dx, bx
    jl short @..local.l29
    jne short @..local.l30
    cmp ax, cx
    ja short @..local.l30
@..local.l29:
    jmp short @..local.l31
@..local.l30:
    mov ax, 0
    ret
@..local.l31:
    mov ax, 0xffff
    ret
api_idx_0008_3:
    mov ax, 0xfff8
    db 0xe8, 0x58, 0xec ; call 0xfffff40b
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
    jle short @..local.l32
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
    jne short @..local.l32
    ret
@..local.l32:
    inc word [data_8466]
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
    jne short @..local.l33
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    cmp byte [bx + 0xd8], 0
    jbe short @..local.l33
    mov al, byte [bx + 0xd8]
    sub ah, ah
    push ax
    db 0xe8, 0x5c, 0xcf ; call 0xffffd7aa
    pop cx
@..local.l33:
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov al, byte [bx + 0xe2]
    sub ah, ah
    test ax, 1
    jne short @..local.l38
    mov al, byte [data_5988]
    sub ah, ah
    jmp short @..local.l37
@..local.l34:
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    cmp word [bx + 0x7a], byte 0
    jle short @..local.l35
    dec word [bx + 0x7a]
@..local.l35:
    jmp short @..local.l38
@..local.l36:
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    inc word [bx + 0x7a]
    jmp short @..local.l38
@..local.l37:
    cmp ax, strict word 1
    je short @..local.l34
    cmp ax, strict word 2
    je short @..local.l36
@..local.l38:
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
    jae short @..local.l39
    mov byte [bx + 0x1a1], 1
@..local.l39:
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x1a1], 9
    jbe short @..local.l40
    mov byte [bx + 0x1a1], 9
@..local.l40:
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + 0x1a0], 1
    mov word [bp - 0x0002], 0
@..local.l41:
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov si, word [bp - 0x0002]
    mov byte [bx + si + 0x18c], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..local.l41
    mov word [bp - 0x0002], 0
@..local.l42:
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov si, word [bp - 0x0002]
    mov byte [bx + si + 0x192], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..local.l42
    cmp byte [data_5988], 2
    jne short @..local.l43
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    inc byte [bx + 0x80]
@..local.l43:
    mov word [bp - 0x0002], 0
    jmp near @..local.l50
@..local.l44:
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
    db 0xe8, 0x06, 0xc7 ; call 0xffffd0be
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
    db 0xe8, 0xb1, 0xc6 ; call 0xffffd0be
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
    mov al, byte [data_5988]
    sub ah, ah
    jmp near @..local.l47
@..local.l45:
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
    jmp short @..local.l49
@..local.l46:
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
    jmp short @..local.l49
@..local.l47:
    cmp ax, strict word 1
    jne short @..local.l48
    jmp near @..local.l45
@..local.l48:
    cmp ax, strict word 2
    je short @..local.l46
@..local.l49:
    inc word [bp - 0x0002]
@..local.l50:
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0002]
    jle short @..local.l51
    jmp near @..local.l44
@..local.l51:
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0002], 0
    jmp short @..local.l53
@..local.l52:
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    add word [bp - 0x0006], ax
    inc word [bp - 0x0002]
@..local.l53:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..local.l52
    mov ax, word [bp - 0x0006]
    cwd
    idiv word [data_69c8]
    inc ax
    mov cx, 3
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    cmp word [data_8452], byte 0
    jle short @..local.l54
    inc word [bp - 0x0006]
@..local.l54:
    mov ax, 5
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    db 0xe8, 0x5a, 0xac ; call 0xffffb7c2
    add sp, byte 6
    mov word [bp - 0x0006], ax
    mov ax, 0x96
    cmp byte [data_5988], 1
    je short @..local.l55
    mov ax, 0x64
    cmp byte [data_5988], 2
    jne short @..local.l55
    mov ax, 0x4b
@..local.l55:
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0008], 1
    mov ax, word [bp + 0x6]
    cmp ax, word [bp - 0x0006]
    jl short @..local.l56
    jmp near @..local.l62
@..local.l56:
    mov ax, 0x64
    push ax
    db 0xe8, 0x0a, 0xac ; call 0xffffb7a9
    pop cx
    cmp ax, strict word 0x19
    jle short @..local.l58
    push word [bp + 0x4]
    push word [bp - 0x0008]
    call api_idx_00a8
    add sp, byte 4
    mov word [bp + 0x4], ax
    push word [bp - 0x0004]
    db 0xe8, 0xef, 0xab ; call 0xffffb7a9
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
    jle short @..local.l57
    mov word [bp + 0x4], 0xffff
@..local.l57:
    jmp short @..local.l59
@..local.l58:
    mov word [bp + 0x4], 0xffff
@..local.l59:
    mov word [bp - 0x0002], 0
@..local.l60:
    cmp word [bp + 0x4], byte 0xff
    jne short @..local.l61
    mov ax, word [bp - 0x0008]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si + 0xac], 0
    jbe short @..local.l61
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    cmp byte [bx + si + 0xac], 0
    jbe short @..local.l61
    push word [bp - 0x0004]
    db 0xe8, 0x91, 0xab ; call 0xffffb7a9
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
    jge short @..local.l61
    mov ax, word [bp - 0x0008]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov al, byte [bx + si + 0xaa]
    sub ah, ah
    mov word [bp + 0x4], ax
@..local.l61:
    inc word [bp - 0x0002]
    cmp word [bp - 0x0002], byte 2
    jl short @..local.l60
    cmp word [bp + 0x4], byte 0xff
    je short @..local.l62
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    push word [bp + 0x4]
    call api_idx_0008_3
    add sp, byte 4
@..local.l62:
    ret
api_idx_0004_4:
    mov ax, 0xfffc
    db 0xe8, 0x9e, 0xe7 ; call 0xfffff40b
    mov word [bp - 0x0004], 0
    mov al, byte [data_69c8]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + 0x1a1], al
    mov word [bp - 0x0002], 0
@..api_idx_0004_4.l1:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov si, word [bp - 0x0002]
    mov byte [bx + si + 0x18c], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_0004_4.l1
    cmp word [data_82fa], byte 0
    jle short @..api_idx_0004_4.l2
    mov al, byte [data_82fc]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + 0x190], al
@..api_idx_0004_4.l2:
    mov word [bp - 0x0002], 0
@..api_idx_0004_4.l3:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov si, word [bp - 0x0002]
    mov byte [bx + si + 0x192], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_0004_4.l3
    mov word [bp - 0x0002], 0
    jmp near @..local.l67
@..api_idx_0004_4.l4:
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
    jbe short @..local.l63
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
@..local.l63:
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d7f], 0
    jbe short @..local.l64
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
@..local.l64:
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d81], 0
    jbe short @..local.l65
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
@..local.l65:
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d80], 0
    jbe short @..local.l66
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
@..local.l66:
    inc word [bp - 0x0002]
@..local.l67:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jge short @..local.l68
    jmp near @..api_idx_0004_4.l4
@..local.l68:
    ret
api_idx_000a_2:
    mov ax, 0xfff6
    db 0xe8, 0x70, 0xe4 ; call 0xfffff40b
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x19f], 0xff
    jne short @..local.l69
    ret
@..local.l69:
    mov al, byte [bx + 0x19f]
    cbw
    mov word [bp - 0x0002], ax
    mov word [bp - 0x000a], 0
    cmp word [bp + 0xa], byte 0xff
    jne short @..local.l70
    mov word [bp + 0xa], 0
    mov cx, 0x15e
    imul cx
    mov bx, ax
    mov al, byte [bx + 0x6b75]
    sub ah, ah
    cmp ax, 0xfe
    je short @..local.l70
    mov word [bp - 0x000a], 1
@..local.l70:
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + 0x6a1a]
    sub ah, ah
    mov word [bp - 0x0004], ax
    jmp near @..local.l78
@..local.l71:
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x6a22]
    sub ah, ah
    mov word [bp - 0x0006], ax
    cmp word [bp + 0xa], byte 0
    je short @..local.l72
    jmp near @..local.l76
@..local.l72:
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x6b75], 0
    jbe short @..local.l76
    mov al, byte [bx + 0x6b75]
    sub ah, ah
    cmp ax, 0xfe
    jge short @..local.l76
    cmp ax, 0xfd
    jne short @..local.l73
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0008], 0
    jmp short @..local.l75
@..local.l73:
    mov word [bp - 0x0008], ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    cmp byte [bx + 0xd7], 0x47
    jne short @..local.l75
    cmp word [data_90ba], byte 1
    jne short @..local.l74
    mov ax, word [data_8460]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], dx
    jmp short @..local.l75
@..local.l74:
    cmp word [bp - 0x000a], byte 0
    jne short @..local.l75
    mov word [bp - 0x0006], 1
    mov word [bp - 0x0008], 0xb
@..local.l75:
    jmp short @..local.l77
@..local.l76:
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x6a2c]
    sub ah, ah
    push ax
    db 0xe8, 0x19, 0xa7 ; call 0xffffb7a9
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
    je short @..local.l77
    mov al, byte [bx + 0x6a4a]
    sub ah, ah
    push ax
    db 0xe8, 0xf1, 0xa6 ; call 0xffffb7a9
    pop cx
    add word [bp - 0x0008], ax
@..local.l77:
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
    db 0xe8, 0x4a, 0xa6 ; call 0xffffb7a9
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
@..local.l78:
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
    jle short @..local.l79
    jmp near @..local.l71
@..local.l79:
    ret
api_idx_000c_2:
    mov ax, 0xfff4
    db 0xe8, 0x55, 0xe2 ; call 0xfffff40b
    mov word [bp - 0x0002], 0
    jmp near @..api_idx_000c_2.l4
@..api_idx_000c_2.l1:
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
    jne short @..api_idx_000c_2.l2
    jmp near @..api_idx_000c_2.l3
@..api_idx_000c_2.l2:
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
    jne short @..api_idx_000c_2.l3
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
@..api_idx_000c_2.l3:
    inc word [bp - 0x0002]
@..api_idx_000c_2.l4:
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0002]
    jle short @..api_idx_000c_2.l5
    jmp near @..api_idx_000c_2.l1
@..api_idx_000c_2.l5:
    call loc_2cc7
    mov ax, 4
    push ax
    call api_idx_0004
    pop cx
    ret
api_idx_000e:
    mov ax, 0xfff2
    db 0xe8, 0x59, 0xe1 ; call 0xfffff40b
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
    jbe short @..api_idx_000e.l1
    mov ax, word [bx + 0x8]
    mov bx, 5
    imul bx
    mov cx, 0x64
    mov bx, 0
    call 0xf99f
    mov word [bp - 0x0002], ax
    push ax
    db 0xe8, 0xba, 0xa4 ; call 0xffffb7a9
    pop cx
    mov bx, word [bp - 0x0004]
    mov cx, word [bx + 0x6]
    add ax, cx
    inc ax
    mov word [bx + 0x6], ax
    mov ax, word [bx + 0x6]
    cmp ax, word [bx + 0x8]
    jle short @..api_idx_000e.l1
    mov ax, word [bx + 0x8]
    mov word [bx + 0x6], ax
@..api_idx_000e.l1:
    mov bx, word [bp - 0x0004]
    cmp word [bx + 0x6], byte 0
    jg short @..api_idx_000e.l2
    mov word [bx + 0x6], 0
    mov ax, 6
    push ax
    db 0xe8, 0x8a, 0xa4 ; call 0xffffb7a9
    pop cx
    add ax, strict word 6
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x10], al
@..api_idx_000e.l2:
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
    jle short @..api_idx_000e.l3
    mov word [bx + 0x2], cx
@..api_idx_000e.l3:
    mov bx, word [bp - 0x0004]
    cmp word [bx + 0x2], byte 0
    jle short @..api_idx_000e.l4
    jmp near @..api_idx_000e.l8
@..api_idx_000e.l4:
    mov word [bx + 0x2], 0
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x6], 0
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x22], 3
    mov word [bp - 0x000a], 1
    cmp word [bp + 0x4], byte 0
    jne short @..api_idx_000e.l5
    jmp near @..api_idx_000e.l8
@..api_idx_000e.l5:
    mov ax, word [bp + 0x4]
    cmp ax, strict word 1
    jl short @..api_idx_000e.l6
    cmp ax, strict word 5
    jg short @..api_idx_000e.l6
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov ax, word [bx + 0x40]
    mov dx, word [bx + 0x42]
    add word [data_84a2], ax
    adc word [data_84a4], dx
@..api_idx_000e.l6:
    mov bx, word [bp - 0x0004]
    cmp byte [bx + 0x2a], 0xff
    je short @..api_idx_000e.l7
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
@..api_idx_000e.l7:
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    mov al, byte [bx + 0xe2]
    sub ah, ah
    test ax, 1
    je short @..api_idx_000e.l8
    mov ax, 1
    push ax
    mov al, byte [bx + 0xe0]
    sub ah, ah
    push ax
    mov ax, 0x5842
    push ax
    call 0xec41
    add sp, byte 6
@..api_idx_000e.l8:
    mov word [bp - 0x0008], 0
@..api_idx_000e.l9:
    mov bx, word [bp - 0x0004]
    mov si, word [bp - 0x0008]
    cmp byte [bx + si + 0xe], 0
    jbe short @..api_idx_000e.l10
    mov al, byte [bx + si + 0xe]
    sub ah, ah
    cmp ax, 0xff
    je short @..api_idx_000e.l10
    dec byte [bx + si + 0xe]
@..api_idx_000e.l10:
    inc word [bp - 0x0008]
    mov ax, word [bp - 0x0008]
    cmp ax, strict word 0xa
    jl short @..api_idx_000e.l9
    mov bx, word [bp - 0x0004]
    cmp byte [bx + 0x13], 0
    jne short @..api_idx_000e.l11
    mov byte [bx + 0x23], 0
@..api_idx_000e.l11:
    mov bx, word [bp - 0x0004]
    mov al, byte [bx + 0x29]
    cbw
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jge short @..api_idx_000e.l12
    inc ax
    jmp short @..api_idx_000e.l13
@..api_idx_000e.l12:
    mov ax, word [bp - 0x0008]
    push ax
    cmp ax, strict word 0
    pop ax
    jle short @..api_idx_000e.l13
    dec ax
@..api_idx_000e.l13:
    mov byte [bx + 0x29], al
    cmp word [bp + 0x4], byte 0
    jne short @..api_idx_000e.l14
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d80], 0
    jbe short @..api_idx_000e.l14
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
    jge short @..api_idx_000e.l14
    inc byte [bx + 0x29]
@..api_idx_000e.l14:
    mov bx, word [bp - 0x0004]
    cmp byte [bx + 0x24], 0
    jbe short @..local.l80
    dec byte [bx + 0x24]
@..local.l80:
    mov bx, word [bp - 0x0004]
    cmp byte [bx + 0x2b], 3
    jne short @..local.l81
    mov byte [bx + 0x2b], 0
@..local.l81:
    mov bx, word [bp - 0x0004]
    cmp byte [bx + 0x22], 3
    je short @..local.l82
    cmp word [bp + 0x4], byte 0
    je short @..local.l82
    cmp byte [bx + 0x2b], 2
    jne short @..local.l82
    mov word [bx + 0x2], 0
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x6], 0
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x22], 3
@..local.l82:
    mov ax, word [bp - 0x000a]
    ret
api_idx_005c:
    mov ax, 0xffa4
    db 0xe8, 0x1f, 0xdf ; call 0xfffff40b
    mov word [bp - 0x0002], 0
    mov word [bp - 0x000a], 0
    mov word [bp - 0x0004], 0
    jmp near @..api_idx_005c.l5
@..api_idx_005c.l1:
    mov ax, 0x2c
    imul word [bp - 0x0004]
    mov si, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + si + 0x22], 3
    jae short @..api_idx_005c.l2
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
    jne short @..api_idx_005c.l2
    inc word [bp - 0x000a]
@..api_idx_005c.l2:
    mov ax, 0x2c
    imul word [bp - 0x0004]
    mov si, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + si + 0x22], 3
    jae short @..api_idx_005c.l4
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
    je short @..api_idx_005c.l3
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
@..api_idx_005c.l3:
    inc word [bp - 0x0002]
@..api_idx_005c.l4:
    inc word [bp - 0x0004]
@..api_idx_005c.l5:
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0004]
    jle short @..api_idx_005c.l6
    jmp near @..api_idx_005c.l1
@..api_idx_005c.l6:
    cmp word [bp - 0x000a], byte 0
    jg short @..api_idx_005c.l7
    jmp near @..api_idx_005c.l11
@..api_idx_005c.l7:
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
    jne short @..api_idx_005c.l8
    mov byte [bp - 0x005c], 0
    jmp short @..api_idx_005c.l9
@..api_idx_005c.l8:
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
@..api_idx_005c.l9:
    mov ax, 1
    cmp word [bp - 0x000a], byte 1
    jne short @..api_idx_005c.l10
    mov ax, 0
@..api_idx_005c.l10:
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
    db 0xe8, 0xb3, 0xdc ; call 0xfffff32d
    add sp, byte 4
    lea ax, word [bp - 0x005c]
    push ax
    call api_idx_0004_2
    pop cx
    lea ax, word [bp - 0x005c]
    push ax
    db 0xe8, 0x04, 0xe4 ; call 0xfffffa90
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
    push word [data_905a]
    call api_idx_0004
    pop cx
@..api_idx_005c.l11:
    mov al, byte [bp - 0x0002]
    mov cx, word [bp + 0x4]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + 0x1a1], al
    ret
math_loc_16d1:
    mov ax, 0
    db 0xe8, 0x34, 0xdd ; call 0xfffff40b
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0x64
    jae short @..math_loc_16d1.l1
    mov al, byte [bx + 0x5d6c]
    sub ah, ah
    push ax
    db 0xe8, 0xb6, 0xa0 ; call 0xffffb7a9
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
    jg short @..math_loc_16d1.l1
    add bx, word [bp + 0x6]
    inc byte [bx + 0x5d6c]
@..math_loc_16d1.l1:
    ret
api_idx_0006:
    mov ax, 0xfffa
    db 0xe8, 0xf2, 0xdc ; call 0xfffff40b
    mov word [bp - 0x0002], 1
    jmp near @..api_idx_0006.l6
@..api_idx_0006.l1:
    mov word [bp - 0x0004], 0
    jmp short @..api_idx_0006.l5
@..api_idx_0006.l2:
    mov ax, 0x64
    push ax
    db 0xe8, 0x7a, 0xa0 ; call 0xffffb7a9
    pop cx
    mov word [bp - 0x0006], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x1a0], 1
    jne short @..api_idx_0006.l4
    mov ax, 0x248
    imul word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x5d85]
    sub ah, ah
    push ax
    mov ax, 3
    imul word [data_830c]
    mov cx, ax
    pop ax
    sub ax, cx
    cmp ax, word [bp - 0x0006]
    jg short @..api_idx_0006.l3
    mov al, byte [bx + 0x5d65]
    sub ah, ah
    cmp ax, word [bp - 0x0006]
    jle short @..api_idx_0006.l4
@..api_idx_0006.l3:
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
    call math_loc_16d1
    add sp, byte 6
@..api_idx_0006.l4:
    inc word [bp - 0x0004]
@..api_idx_0006.l5:
    mov ax, word [bp - 0x0004]
    cmp ax, word [data_69c8]
    jl short @..api_idx_0006.l2
    inc word [bp - 0x0002]
@..api_idx_0006.l6:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_8466]
    jg short @..api_idx_0006.l7
    jmp near @..api_idx_0006.l1
@..api_idx_0006.l7:
    ret
api_idx_0004_5:
    mov ax, 0xfffc
    db 0xe8, 0x58, 0xdc ; call 0xfffff40b
    mov word [bp - 0x0004], 0xf
@..api_idx_0004_5.l1:
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x5b5a], 0
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x12
    jl short @..api_idx_0004_5.l1
    mov word [bp - 0x0002], 1
    jmp short @..api_idx_0004_5.l3
@..api_idx_0004_5.l2:
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
@..api_idx_0004_5.l3:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_8466]
    jle short @..api_idx_0004_5.l2
    mov word [bp - 0x0004], 0xf
@..api_idx_0004_5.l4:
    mov bx, word [bp - 0x0004]
    mov al, byte [bx + 0x5b48]
    sub ah, ah
    cmp ax, 0xff
    je short @..api_idx_0004_5.l5
    cmp byte [bx + 0x5b5a], 0
    jne short @..api_idx_0004_5.l5
    push bx
    db 0xe8, 0x09, 0xa9 ; call 0xffffc12a
    pop cx
@..api_idx_0004_5.l5:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x12
    jl short @..api_idx_0004_5.l4
    mov bx, word [data_8492]
    cmp byte [bx + 0xd8], 0
    jbe short @..api_idx_0004_5.l6
    mov al, byte [bx + 0xd8]
    sub ah, ah
    push ax
    db 0xe8, 0x68, 0xbf ; call 0xffffd7aa
    pop cx
@..api_idx_0004_5.l6:
    ret
api_idx_0014:
    mov ax, 0xffec
    db 0xe8, 0xc1, 0xdb ; call 0xfffff40b
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0002], 1
    jmp near @..api_idx_0014.l13
@..api_idx_0014.l1:
    push word [bp - 0x0002]
    call api_idx_005c
    pop cx
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x1a1], 0
    ja short @..api_idx_0014.l2
    jmp near @..api_idx_0014.l12
@..api_idx_0014.l2:
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, word [bp - 0x0002]
    jne short @..api_idx_0014.l3
    jmp near @..api_idx_0014.l7
@..api_idx_0014.l3:
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
    jmp short @..api_idx_0014.l6
@..api_idx_0014.l4:
    mov ax, 0x2c
    imul word [bp - 0x0012]
    mov si, ax
    mov bx, word [data_8482]
    mov al, byte [bx + si + 0x1f]
    sub ah, ah
    cmp ax, word [bp - 0x0002]
    jne short @..api_idx_0014.l5
    mov al, byte [bp - 0x0006]
    mov byte [bx + si + 0x1f], al
@..api_idx_0014.l5:
    inc word [bp - 0x0012]
@..api_idx_0014.l6:
    mov ax, word [bp - 0x0012]
    cmp ax, word [data_69c8]
    jl short @..api_idx_0014.l4
    push word [bp - 0x0006]
    call api_idx_000c_2
    pop cx
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + 0x1a1], 0
    jmp near @..api_idx_0014.l12
@..api_idx_0014.l7:
    mov word [bp - 0x0004], 0
    jmp near @..api_idx_0014.l11
@..api_idx_0014.l8:
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
    jne short @..api_idx_0014.l9
    jmp near @..api_idx_0014.l10
@..api_idx_0014.l9:
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
    jne short @..api_idx_0014.l10
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
@..api_idx_0014.l10:
    inc word [bp - 0x0004]
@..api_idx_0014.l11:
    mov ax, word [bp - 0x0006]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0004]
    jle short @..api_idx_0014.l12
    jmp near @..api_idx_0014.l8
@..api_idx_0014.l12:
    inc word [bp - 0x0002]
@..api_idx_0014.l13:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_8466]
    jg short @..api_idx_0014.l14
    jmp near @..api_idx_0014.l1
@..api_idx_0014.l14:
    mov ax, word [bp - 0x0006]
    mov word [data_8466], ax
    cmp word [data_8466], byte 0
    jne short @..api_idx_0014.l16
    cmp word [data_905e], byte 8
    je short @..api_idx_0014.l15
    mov word [data_905e], 0xf
@..api_idx_0014.l15:
    mov word [data_845c], 1
@..api_idx_0014.l16:
    call api_idx_0004_5
    call api_idx_0006
    ret
math_loc_1a16:
    mov ax, 0xfd08
    db 0xe8, 0xef, 0xd9 ; call 0xfffff40b
    mov word [bp - 0x0002], 1
    jmp near @..local.l84
@..math_loc_1a16.l1:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x001c], 0
    mov word [bp - 0x0004], 0
    jmp near @..math_loc_1a16.l8
@..math_loc_1a16.l2:
    mov ax, 0x2c
    imul word [bp - 0x0004]
    mov si, ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + si + 0x22], 0
    je short @..math_loc_1a16.l3
    jmp near @..math_loc_1a16.l7
@..math_loc_1a16.l3:
    cmp byte [bx + si + 0x10], 0
    je short @..math_loc_1a16.l4
    jmp near @..math_loc_1a16.l7
@..math_loc_1a16.l4:
    cmp byte [bx + si + 0x11], 0
    jne short @..math_loc_1a16.l7
    mov word [bp - 0x000c], 0
    mov word [bp - 0x000a], 0
@..math_loc_1a16.l5:
    mov ax, 0x2c
    imul word [bp - 0x0004]
    add ax, word [bp - 0x000a]
    mov si, ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + si + 0xe], 0
    jbe short @..math_loc_1a16.l6
    mov ax, 0x2c
    imul word [bp - 0x0004]
    mov si, ax
    mov ax, word [bx + si + 0x2]
    mov cx, 4
    cwd
    idiv cx
    add word [bp - 0x000c], ax
@..math_loc_1a16.l6:
    inc word [bp - 0x000a]
    mov ax, word [bp - 0x000a]
    cmp ax, strict word 0xa
    jl short @..math_loc_1a16.l5
    mov ax, 0x2c
    imul word [bp - 0x0004]
    mov si, ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov ax, word [bx + si + 0x2]
    cmp ax, word [bp - 0x000c]
    jle short @..math_loc_1a16.l7
    mov ax, word [bx + si + 0x2]
    sub ax, word [bp - 0x000c]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    add bx, bp
    add word [bx - 0x001c], ax
@..math_loc_1a16.l7:
    inc word [bp - 0x0004]
@..math_loc_1a16.l8:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0004]
    jle short @..math_loc_1a16.l9
    jmp near @..math_loc_1a16.l2
@..math_loc_1a16.l9:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    cmp byte [bx + 0xae], 0
    jbe short @..math_loc_1a16.l10
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
@..math_loc_1a16.l10:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    cmp byte [bx + 0xb0], 0
    jbe short @..math_loc_1a16.l11
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
    db 0xe8, 0x34, 0xde ; call 0xfffff99f
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
@..math_loc_1a16.l11:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b70]
    cmp byte [bx + 0xb1], 0
    jbe short @..math_loc_1a16.l12
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
    db 0xe8, 0xd4, 0xdd ; call 0xfffff99f
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
@..math_loc_1a16.l12:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x19f], 0xff
    je short @..local.l83
    mov al, byte [bx + 0x19f]
    cbw
    mov cx, 0x15e
    imul cx
    mov bx, ax
    cmp byte [bx + 0x6b75], 0
    je short @..local.l83
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x001c], 0
@..local.l83:
    inc word [bp - 0x0002]
@..local.l84:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_8466]
    jg short @..local.l85
    jmp near @..math_loc_1a16.l1
@..local.l85:
    mov ax, word [data_8466]
    mov word [bp - 0x0002], ax
    jmp near @..local.l103
@..local.l86:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    push word [bx - 0x001c]
    db 0xe8, 0x5f, 0x9b ; call 0xffffb7a9
    pop cx
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    push word [bx - 0x001e]
    db 0xe8, 0x4e, 0x9b ; call 0xffffb7a9
    pop cx
    mov cx, ax
    pop ax
    cmp ax, cx
    jg short @..local.l87
    jmp near @..local.l102
@..local.l87:
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
    jne short @..local.l88
    mov ax, 0
    jmp short @..local.l89
@..local.l88:
    mov ax, 1
@..local.l89:
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
    db 0xe8, 0xa9, 0xd6 ; call 0xfffff364
    add sp, byte 4
    lea ax, word [bp - 0x006c]
    push ax
    call api_idx_0004_2
    pop cx
    lea ax, word [bp - 0x006c]
    push ax
    db 0xe8, 0xc3, 0xdd ; call 0xfffffa90
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
    jne short @..local.l90
    mov ax, 0xdb6
    jmp short @..local.l91
@..local.l90:
    mov ax, 0xdb7
@..local.l91:
    push ax
    db 0xe8, 0x3e, 0x98 ; call 0xffffb53b
    add sp, byte 4
    mov ax, 0x11
    push ax
    lea ax, word [bp - 0x006c]
    push ax
    call api_idx_000c
    add sp, byte 4
    mov word [bp - 0x0004], 0
    jmp short @..local.l94
@..local.l92:
    mov ax, 0x2c
    imul word [bp - 0x0004]
    mov si, ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b80]
    cmp byte [bx + si + 0x2a], 0xff
    je short @..local.l93
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
@..local.l93:
    inc word [bp - 0x0004]
@..local.l94:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b80]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0004]
    jg short @..local.l92
    mov ax, 1
    push ax
    call api_idx_005a
    pop cx
    mov word [bp - 0x0004], 0
    jmp short @..local.l97
@..local.l95:
    mov ax, 0x2c
    imul word [bp - 0x0004]
    mov si, ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b80]
    cmp byte [bx + si + 0x2a], 0xff
    je short @..local.l96
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
@..local.l96:
    inc word [bp - 0x0004]
@..local.l97:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b80]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0004]
    jg short @..local.l95
    call loc_2cc7
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
    call string_loc_374e
    add sp, byte 6
    mov ax, 0xe8
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x7b72]
    push word [bx - 0x7b70]
    call string_loc_374e
    add sp, byte 6
    mov word [bp - 0x000e], 0
    jmp short @..local.l101
@..local.l98:
    mov ax, 0x2c
    imul word [bp - 0x000e]
    mov si, ax
    mov bx, word [data_8482]
    mov al, byte [bx + si + 0x1f]
    sub ah, ah
    cmp ax, word [bp - 0x0002]
    jne short @..local.l99
    mov ax, word [bp - 0x0002]
    dec ax
    mov byte [bx + si + 0x1f], al
    jmp short @..local.l100
@..local.l99:
    mov ax, 0x2c
    imul word [bp - 0x000e]
    mov si, ax
    mov bx, word [data_8482]
    mov al, byte [bx + si + 0x1f]
    sub ah, ah
    mov cx, word [bp - 0x0002]
    dec cx
    cmp ax, cx
    jne short @..local.l100
    mov al, byte [bp - 0x0002]
    mov byte [bx + si + 0x1f], al
@..local.l100:
    inc word [bp - 0x000e]
@..local.l101:
    mov ax, word [bp - 0x000e]
    cmp ax, word [data_69c8]
    jl short @..local.l98
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
@..local.l102:
    dec word [bp - 0x0002]
@..local.l103:
    cmp word [bp - 0x0002], byte 2
    jl short @..local.l104
    jmp near @..local.l86
@..local.l104:
    ret
math_loc_1eb4:
    mov ax, 0
    db 0xe8, 0x51, 0xd5 ; call 0xfffff40b
    mov ax, 0x2c
    imul word [bp + 0x4]
    mov si, ax
    mov bx, word [data_8482]
    mov ax, word [bx + si + 0x2]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov word [bx + 0x5c0c], ax
    mov bx, word [data_8482]
    mov ax, word [bx + si + 0x6]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov word [bx + 0x5c10], ax
    mov bx, word [data_8482]
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
    mov ax, word [data_8482]
    add ax, si
    add ax, strict word 0xe
    push ax
    db 0xe8, 0xc4, 0xdf ; call 0xfffffedc
    add sp, byte 6
    mov ax, 0x2c
    imul word [bp + 0x4]
    mov si, ax
    mov bx, word [data_8482]
    mov al, byte [bx + si + 0x23]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5e32], al
    ret
math_loc_1f39:
    mov ax, 0xfd84
    db 0xe8, 0xcc, 0xd4 ; call 0xfffff40b
    mov word [bp - 0x0002], 0
    jmp short @..math_loc_1f39.l3
@..math_loc_1f39.l1:
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov bx, word [data_8482]
    cmp byte [bx + si + 0x22], 3
    jae short @..math_loc_1f39.l2
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
    jne short @..math_loc_1f39.l2
    push word [bp - 0x0002]
    call math_loc_1eb4
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    db 0xe8, 0xa9, 0xab ; call 0xffffcb3a
    add sp, byte 4
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5e2c]
    sub ah, ah
    add ax, strict word 8
    push ax
    db 0xe8, 0x37, 0x98 ; call 0xffffb7e0
    pop cx
@..math_loc_1f39.l2:
    inc word [bp - 0x0002]
@..math_loc_1f39.l3:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..math_loc_1f39.l1
    mov word [bp - 0x0002], 0
    jmp short @..math_loc_1f39.l5
@..math_loc_1f39.l4:
    push word [bp - 0x0002]
    call math_loc_1eb4
    pop cx
    inc word [bp - 0x0002]
@..math_loc_1f39.l5:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..math_loc_1f39.l4
    mov word [bp - 0x0002], 0
    jmp near @..math_loc_1f39.l12
@..math_loc_1f39.l6:
    mov ax, word [bp - 0x0002]
    inc ax
    mov word [bp - 0x0004], ax
    jmp near @..math_loc_1f39.l10
@..math_loc_1f39.l7:
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
    ja short @..math_loc_1f39.l8
    jmp near @..math_loc_1f39.l9
@..math_loc_1f39.l8:
    mov ax, 0x248
    push ax
    add bx, strict word 0x5bf4
    mov ax, bx
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    add ax, 0x5bf4
    push ax
    call string_loc_374e
    add sp, byte 6
    mov ax, 0x2c
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0004]
    mov cx, ax
    mov ax, word [data_8482]
    add ax, cx
    push ax
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov cx, ax
    mov ax, word [data_8482]
    add ax, cx
    push ax
    call string_loc_374e
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
@..math_loc_1f39.l9:
    inc word [bp - 0x0004]
@..math_loc_1f39.l10:
    mov ax, word [bp - 0x0004]
    cmp ax, word [data_69c8]
    jge short @..math_loc_1f39.l11
    jmp near @..math_loc_1f39.l7
@..math_loc_1f39.l11:
    inc word [bp - 0x0002]
@..math_loc_1f39.l12:
    mov ax, word [data_69c8]
    dec ax
    cmp ax, word [bp - 0x0002]
    jle short @..math_loc_1f39.l13
    jmp near @..math_loc_1f39.l6
@..math_loc_1f39.l13:
    mov word [bp - 0x0004], 0
    mov word [bp - 0x027c], 0
    mov word [bp - 0x0002], 0
    jmp short @..math_loc_1f39.l17
@..math_loc_1f39.l14:
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 2
    jb short @..math_loc_1f39.l15
    inc word [bp - 0x0004]
@..math_loc_1f39.l15:
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov bx, word [data_8482]
    cmp byte [bx + si + 0x2b], 2
    jne short @..math_loc_1f39.l16
    mov word [bp - 0x027c], 1
@..math_loc_1f39.l16:
    inc word [bp - 0x0002]
@..math_loc_1f39.l17:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..math_loc_1f39.l14
    mov ax, word [bp - 0x0004]
    cmp ax, word [data_69c8]
    jne short @..math_loc_1f39.l18
    mov word [data_905e], 8
    mov word [data_845c], 1
    jmp short @..math_loc_1f39.l19
@..math_loc_1f39.l18:
    cmp word [bp - 0x027c], byte 0
    jle short @..math_loc_1f39.l19
    mov word [data_905e], 0x17
    mov word [data_845c], 1
@..math_loc_1f39.l19:
    ret
api_idx_000e_2:
    mov ax, 0xfff2
    db 0xe8, 0xcd, 0xd2 ; call 0xfffff40b
    mov bx, word [bp + 0xe]
    mov byte [bx], 0
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x19f], 0xff
    jne short @..local.l105
    ret
@..local.l105:
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
    jmp near @..local.l119
@..local.l106:
    mov ax, 0x2c
    imul word [bp + 0x6]
    mov si, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + si + 0x22], 2
    je short @..local.l107
    cmp byte [bx + si + 0x11], 0
    ja short @..local.l107
    cmp byte [bx + si + 0x10], 0
    jbe short @..local.l108
@..local.l107:
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
    jmp near @..local.l115
@..local.l108:
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
    je short @..local.l109
    dec word [bp - 0x000a]
@..local.l109:
    cmp word [bp - 0x000a], byte 0
    jle short @..local.l110
    jmp near @..local.l114
@..local.l110:
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
    jl short @..local.l111
    jmp near @..local.l113
@..local.l111:
    mov ax, 3
    imul word [bp + 0x8]
    add ax, word [bp + 0xa]
    mov bx, ax
    cmp byte [bx - 0x7bd0], 0
    je short @..local.l112
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
@..local.l112:
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x6a2c]
    sub ah, ah
    push ax
    db 0xe8, 0xdf, 0x94 ; call 0xffffb7a9
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
@..local.l113:
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
    db 0xe8, 0x47, 0x94 ; call 0xffffb7a9
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
@..local.l114:
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
@..local.l115:
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
    je short @..local.l116
    mov al, byte [bx + 0x19e]
    sub ah, ah
    cmp ax, 0x8d
    jne short @..local.l117
@..local.l116:
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
@..local.l117:
    mov bx, word [bp + 0xe]
    mov si, word [bp - 0x000e]
    cmp byte [bx + si], 0
    je short @..local.l118
    inc word [bp - 0x000e]
@..local.l118:
    inc word [bp - 0x0004]
@..local.l119:
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
    jle short @..local.l120
    jmp near @..local.l106
@..local.l120:
    mov bx, word [bp + 0xe]
    mov si, word [bp - 0x000e]
    mov byte [bx + si], 0
    ret
api_idx_0004_6:
    mov ax, 0xfffc
    db 0xe8, 0xaa, 0xcf ; call 0xfffff40b
    mov word [bp - 0x0002], 0
@..api_idx_0004_6.l1:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_8468]
    jge short @..api_idx_0004_6.l2
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b96]
    mov al, byte [bx + 0x14]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jg short @..api_idx_0004_6.l2
    inc word [bp - 0x0002]
    jmp short @..api_idx_0004_6.l1
@..api_idx_0004_6.l2:
    mov ax, word [data_8468]
    mov word [bp - 0x0004], ax
    jmp short @..api_idx_0004_6.l4
@..api_idx_0004_6.l3:
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
@..api_idx_0004_6.l4:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jg short @..api_idx_0004_6.l3
    cmp word [bp - 0x0002], byte 0x0c
    jl short @..api_idx_0004_6.l6
@..api_idx_0004_6.l5:
    mov ax, 0
    push ax
    db 0xe8, 0x22, 0x93 ; call 0xffffb7e0
    pop cx
    jmp short @..api_idx_0004_6.l5
@..api_idx_0004_6.l6:
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
    db 0xe8, 0x07, 0xce ; call 0xfffff364
    add sp, byte 4
    inc word [data_8468]
    ret
api_idx_001c:
    mov ax, 0xffe4
    db 0xe8, 0xa0, 0xce ; call 0xfffff40b
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
    cmp ax, word [data_8454]
    jle short @..local.l121
@..api_idx_001c.l1:
    ret
@..local.l121:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + 0x19f], 0xff
    jne short @..local.l122
    ret
@..local.l122:
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
    jne short @..local.l123
    ret
@..local.l123:
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
    je short @..local.l124
    mov word [bp + 0x8], 0
@..local.l124:
    mov cx, word [bp - 0x000a]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6abf]
    sub ah, ah
    mov word [bp - 0x000c], ax
    cmp word [bp - 0x000c], byte 0
    jne short @..local.l125
    mov ax, 6
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5b6]
    sub ax, word [bp - 0x0002]
    mov word [bp - 0x000c], ax
    jmp short @..local.l127
@..local.l125:
    mov ax, 0x64
    push ax
    mov ax, 5
    push ax
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0
    cmp word [bp + 0x6], byte 0
    jne short @..local.l126
    mov ax, 5
@..local.l126:
    add cx, ax
    mov ax, word [bp - 0x000c]
    sub ax, cx
    push ax
    db 0xe8, 0x63, 0x91 ; call 0xffffb7c2
    add sp, byte 6
    mov word [bp - 0x000c], ax
@..local.l127:
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
    db 0xe8, 0x12, 0x91 ; call 0xffffb7c2
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
    cmp word [data_8466], byte 1
    jne short @..local.l128
    mov bx, word [data_8484]
    cmp byte [bx + 0x1a1], 1
    jne short @..local.l128
    cmp word [bp + 0x4], byte 0
    jne short @..local.l128
    mov word [bp + 0xa], 0
@..local.l128:
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
    je short @..local.l129
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
@..local.l129:
    mov ax, word [bp + 0xe]
    dec ax
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x000e]
    add ax, word [bp + 0x8]
    push ax
    db 0xe8, 0x52, 0x90 ; call 0xffffb7c2
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
    db 0xe8, 0x5a, 0xcc ; call 0xfffff40b
    cmp word [data_8f20], byte 0
    jg short @..api_idx_000e_3.l1
    jmp near @..api_idx_000e_3.l8
@..api_idx_000e_3.l1:
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
    jmp short @..api_idx_000e_3.l6
@..api_idx_000e_3.l2:
    mov byte [bp - 0x000e], 1
    mov byte [bp - 0x000d], 2
    mov ax, 5
    cmp word [bp - 0x0002], byte 0
    jne short @..api_idx_000e_3.l3
    mov ax, 4
@..api_idx_000e_3.l3:
    mov byte [bp - 0x000c], al
    mov byte [bp - 0x000b], 0
    mov word [bp - 0x0004], 0
    jmp short @..api_idx_000e_3.l7
@..api_idx_000e_3.l4:
    mov byte [bp - 0x000e], 3
    mov byte [bp - 0x000d], 0
    mov ax, 0
    cmp word [bp - 0x0002], byte 3
    jne short @..api_idx_000e_3.l5
    mov ax, 1
@..api_idx_000e_3.l5:
    mov word [bp - 0x0004], ax
    jmp short @..api_idx_000e_3.l7
@..api_idx_000e_3.l6:
    cmp ax, strict word 0
    je short @..api_idx_000e_3.l2
    cmp ax, strict word 1
    je short @..api_idx_000e_3.l4
    cmp ax, strict word 2
    je short @..api_idx_000e_3.l2
    cmp ax, strict word 3
    je short @..api_idx_000e_3.l4
@..api_idx_000e_3.l7:
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
@..api_idx_000e_3.l8:
    cmp word [data_8f20], byte 0xff
    jne short @..api_idx_000e_3.l9
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
    call api_idx_0004_6
    add sp, byte 0x12
@..api_idx_000e_3.l9:
    ret
math_loc_28a0:
    mov ax, 0
    db 0xe8, 0x65, 0xcb ; call 0xfffff40b
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b96]
    mov al, byte [bx + 0x14]
    sub ah, ah
    cmp ax, 0xff
    je short @..math_loc_28a0.l1
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
    db 0xe8, 0xd9, 0xc6 ; call 0xffffefd1
    add sp, byte 0x16
@..math_loc_28a0.l1:
    ret
api_idx_0002:
    mov ax, 0xfffe
    db 0xe8, 0x09, 0xcb ; call 0xfffff40b
    mov ax, word [bp + 0x4]
    cmp ax, word [data_8466]
    jle short @..local.l130
    mov ax, 0xffff
    ret
@..local.l130:
    mov word [bp - 0x0002], 0
    jmp short @..local.l133
@..local.l131:
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    cmp byte [bx + si + 0x2a], 0xff
    jne short @..local.l132
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
@..local.l132:
    inc word [bp - 0x0002]
@..local.l133:
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov al, byte [bx + 0x1a1]
    sub ah, ah
    cmp ax, word [bp - 0x0002]
    jle short @..local.l134
    jmp near @..local.l131
@..local.l134:
    mov ax, 0xffff
    ret
math_loc_299f:
    mov ax, 0
    db 0xe8, 0x66, 0xca ; call 0xfffff40b
    jmp short @..local.l136
@..math_loc_299f.l1:
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0002
    add sp, byte 6
    test ax, ax
    jne short @..local.l135
    ret
@..local.l135:
    inc word [bp + 0x4]
@..local.l136:
    cmp word [bp + 0x4], byte 3
    jle short @..math_loc_299f.l1
    ret
api_idx_000c_3:
    mov ax, 0xfff4
    db 0xe8, 0x40, 0xca ; call 0xfffff40b
    mov word [bp - 0x0002], 0
    jmp near @..api_idx_000c_3.l19
@..api_idx_000c_3.l1:
    mov word [bp - 0x0006], 0
@..api_idx_000c_3.l2:
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
    jl short @..api_idx_000c_3.l2
    mov word [bp - 0x0006], 0
@..api_idx_000c_3.l3:
    mov ax, 3
    push ax
    db 0xe8, 0x9c, 0x8d ; call 0xffffb7a9
    pop cx
    mov word [bp - 0x0004], ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x000c], byte 1
    je short @..api_idx_000c_3.l3
    cmp word [bp - 0x000c], byte 0
    jne short @..api_idx_000c_3.l5
    cmp word [data_90ba], byte 1
    je short @..api_idx_000c_3.l4
    cmp word [bp - 0x0002], byte 0
    jne short @..api_idx_000c_3.l5
@..api_idx_000c_3.l4:
    mov word [bp - 0x0004], 0
@..api_idx_000c_3.l5:
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
    je short @..api_idx_000c_3.l6
    jmp near @..api_idx_000c_3.l17
@..api_idx_000c_3.l6:
    mov ax, word [bp - 0x0002]
    jmp near @..api_idx_000c_3.l15
@..api_idx_000c_3.l7:
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    mov ax, 1
    push ax
    call math_loc_299f
    add sp, byte 6
    jmp near @..api_idx_000c_3.l17
@..api_idx_000c_3.l8:
    cmp word [data_8466], byte 1
    jne short @..api_idx_000c_3.l9
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    mov ax, 1
    push ax
    call math_loc_299f
    add sp, byte 6
    jmp short @..api_idx_000c_3.l10
@..api_idx_000c_3.l9:
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    mov ax, 2
    push ax
    call math_loc_299f
    add sp, byte 6
@..api_idx_000c_3.l10:
    jmp short @..api_idx_000c_3.l17
@..api_idx_000c_3.l11:
    cmp word [data_8466], byte 1
    jne short @..api_idx_000c_3.l12
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    mov ax, 1
    push ax
    call math_loc_299f
    add sp, byte 6
    jmp short @..api_idx_000c_3.l14
@..api_idx_000c_3.l12:
    cmp word [data_8466], byte 2
    jne short @..api_idx_000c_3.l13
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    mov ax, 2
    push ax
    call math_loc_299f
    add sp, byte 6
    jmp short @..api_idx_000c_3.l14
@..api_idx_000c_3.l13:
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    mov ax, 3
    push ax
    call math_loc_299f
    add sp, byte 6
@..api_idx_000c_3.l14:
    jmp short @..api_idx_000c_3.l17
@..api_idx_000c_3.l15:
    cmp ax, strict word 0
    jne short @..api_idx_000c_3.l16
    jmp near @..api_idx_000c_3.l7
@..api_idx_000c_3.l16:
    cmp ax, strict word 1
    je short @..api_idx_000c_3.l8
    cmp ax, strict word 2
    je short @..api_idx_000c_3.l11
@..api_idx_000c_3.l17:
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 3
    jge short @..api_idx_000c_3.l18
    jmp near @..api_idx_000c_3.l3
@..api_idx_000c_3.l18:
    inc word [bp - 0x0002]
@..api_idx_000c_3.l19:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_8454]
    jg short @..api_idx_000c_3.l20
    jmp near @..api_idx_000c_3.l1
@..api_idx_000c_3.l20:
    ret
loc_2b19:
    mov ax, 0
    db 0xe8, 0xec, 0xc8 ; call 0xfffff40b
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
    mov ax, word [data_90b6]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [data_9092]
    mov dx, word [data_9094]
    cmp bx, dx
    jg short @..local.l137
    jne short @..local.l138
    cmp cx, ax
    jbe short @..local.l138
@..local.l137:
    jmp short @..local.l139
@..local.l138:
    mov ax, word [data_908e]
    mov dx, word [data_9090]
    mov word [data_908c], dx
    mov word [data_908a], ax
    mov ax, 1
    ret
@..local.l139:
    mov ax, 0
    ret
api_idx_0006_2:
    mov ax, 0xfffa
    db 0xe8, 0x8d, 0xc8 ; call 0xfffff40b
    mov ax, word [data_845e]
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
    db 0xe8, 0x43, 0xbd ; call 0xffffe8da
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
    mov ax, word [data_90b6]
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
    call loc_2b19
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
    call api_idx_000e_3
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
    call math_loc_28a0
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
loc_2cc7:
    mov ax, 0
    db 0xe8, 0x3e, 0xc7 ; call 0xfffff40b
    mov word [data_845e], 0xfffe
@..local.l140:
    call api_idx_0006_2
    cmp word [data_845e], byte 0xfe
    jne short @..local.l140
    ret
api_idx_005a:
    mov ax, 0xffa6
    db 0xe8, 0x27, 0xc7 ; call 0xfffff40b
    cmp word [data_90b8], byte 0
    je short @..api_idx_005a.l1
    lea ax, word [bp - 0x005a]
    push ax
    mov ax, 0x7e9
    push ax
    db 0xe8, 0x45, 0x88 ; call 0xffffb53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x005a]
    push ax
    call api_idx_0008_2
    add sp, byte 4
@..api_idx_005a.l1:
    mov word [bp - 0x000a], 0
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    mov word [bp - 0x0002], 0
@..api_idx_005a.l2:
    cmp word [bp + 0x4], byte 0
    jne short @..api_idx_005a.l3
    cmp word [bp - 0x0002], byte 1
    jne short @..api_idx_005a.l3
    mov bx, word [data_8492]
    cmp byte [bx + 0xd8], 0
    jbe short @..api_idx_005a.l3
    mov ax, 0x10
    push ax
    db 0xe8, 0x9f, 0x8a ; call 0xffffb7e0
    pop cx
@..api_idx_005a.l3:
    mov word [data_845e], 0xfffe
    call api_idx_0006_2
    mov word [bp - 0x0004], 0
@..api_idx_005a.l4:
    mov word [bp - 0x0006], 0
@..api_idx_005a.l5:
    mov ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    cmp ax, strict word 1
    je short @..api_idx_005a.l6
    cmp word [bp - 0x0006], byte 0
    jne short @..api_idx_005a.l7
@..api_idx_005a.l6:
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
    jmp short @..api_idx_005a.l8
@..api_idx_005a.l7:
    mov ax, word [bp + 0x4]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov cx, word [bp - 0x0002]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5fe]
@..api_idx_005a.l8:
    mov word [bp - 0x0008], ax
    cmp word [bp - 0x0004], byte 0
    jne short @..api_idx_005a.l9
    cmp word [bp - 0x0006], byte 0
    jne short @..api_idx_005a.l9
    cmp word [data_90ba], byte 1
    jne short @..api_idx_005a.l9
    mov word [bp - 0x0008], 0
@..api_idx_005a.l9:
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
    jne short @..api_idx_005a.l10
    mov ax, word [bp - 0x0008]
@..api_idx_005a.l10:
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    call api_idx_001c
    add sp, byte 0x0e
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 3
    jge short @..api_idx_005a.l11
    jmp near @..api_idx_005a.l5
@..api_idx_005a.l11:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jge short @..api_idx_005a.l12
    jmp near @..api_idx_005a.l4
@..api_idx_005a.l12:
    call api_idx_000e_3
    db 0xe8, 0x09, 0xac ; call 0xffffda22
    mov word [data_845e], 0
@..api_idx_005a.l13:
    call api_idx_0006_2
    cmp word [data_845e], byte 0xfe
    jne short @..api_idx_005a.l13
    call loc_2b19
    mov word [bp - 0x000a], ax
    cmp word [bp - 0x000a], byte 0
    je short @..api_idx_005a.l14
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
@..api_idx_005a.l14:
    cmp word [bp - 0x000a], byte 0
    jne short @..api_idx_005a.l15
    jmp near @..api_idx_005a.l3
@..api_idx_005a.l15:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jge short @..api_idx_005a.l16
    jmp near @..api_idx_005a.l2
@..api_idx_005a.l16:
    mov word [bp - 0x0004], 0
@..api_idx_005a.l17:
    mov word [bp - 0x0006], 0
@..api_idx_005a.l18:
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
    jl short @..api_idx_005a.l18
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jl short @..api_idx_005a.l17
    mov word [data_90ba], 0
    cmp word [data_90b8], byte 0
    je short @..api_idx_005a.l19
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x37
    push ax
    db 0xe8, 0x20, 0xba ; call 0xffffe8da
    add sp, byte 8
    mov word [data_90b8], 0
@..api_idx_005a.l19:
    ret
api_idx_0004_7:
    mov ax, 0xfffc
    db 0xe8, 0x41, 0xc5 ; call 0xfffff40b
    mov ax, 1
    push ax
    call 0xef14
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_9066]
    push word [data_9064]
    db 0xe8, 0x5d, 0xba ; call 0xffffe942
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
    mov word [data_9068], ax
    mov word [data_906a], 1
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_9062]
    push word [data_9060]
    db 0xe8, 0x24, 0xba ; call 0xffffe942
    add sp, byte 8
    mov ax, 0xc
    push ax
    db 0xe8, 0x02, 0x92 ; call 0xffffc12a
    pop cx
    mov ax, 7
    push ax
    db 0xe8, 0xfa, 0x91 ; call 0xffffc12a
    pop cx
    mov ax, 5
    push ax
    db 0xe8, 0x8e, 0xa7 ; call 0xffffd6c6
    pop cx
    mov ax, 6
    push ax
    db 0xe8, 0x86, 0xa7 ; call 0xffffd6c6
    pop cx
    mov ax, 7
    push ax
    db 0xe8, 0x7e, 0xa7 ; call 0xffffd6c6
    pop cx
    mov ax, 0xa
    push ax
    db 0xe8, 0x76, 0xa7 ; call 0xffffd6c6
    pop cx
    mov ax, 0xb
    push ax
    db 0xe8, 0x6e, 0xa7 ; call 0xffffd6c6
    pop cx
    mov ax, 0xc
    push ax
    db 0xe8, 0x66, 0xa7 ; call 0xffffd6c6
    pop cx
    cmp word [data_598e], byte 0xff
    je short @..api_idx_0004_7.l1
    mov ax, 0x10
    push ax
    db 0xe8, 0x57, 0xa7 ; call 0xffffd6c6
    pop cx
    mov word [data_598e], 0xffff
@..api_idx_0004_7.l1:
    mov ax, 0
    push ax
    call api_idx_000a
    pop cx
    mov ax, 1
    push ax
    db 0xe8, 0xa5, 0x91 ; call 0xffffc12a
    pop cx
    mov ax, 2
    push ax
    db 0xe8, 0x9d, 0x91 ; call 0xffffc12a
    pop cx
    mov ax, 1
    push ax
    push word [data_8d0c]
    push word [data_8d0a]
    db 0xe8, 0xb2, 0xb9 ; call 0xffffe94f
    add sp, byte 6
    mov ax, 1
    push ax
    push word [data_8d10]
    push word [data_8d0e]
    db 0xe8, 0xa0, 0xb9 ; call 0xffffe94f
    add sp, byte 6
    cmp word [data_905e], byte 0x17
    jne short @..api_idx_0004_7.l2
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
@..api_idx_0004_7.l2:
    mov word [bp - 0x0002], 0
@..api_idx_0004_7.l3:
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
    db 0xe8, 0xb0, 0xc5 ; call 0xfffff5a1
    pop cx
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short @..api_idx_0004_7.l3
    mov word [bp - 0x0002], 0
@..api_idx_0004_7.l4:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x7b96]
    db 0xe8, 0x91, 0xc5 ; call 0xfffff5a1
    pop cx
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xc
    jl short @..api_idx_0004_7.l4
    mov word [bp - 0x0004], 0xf
@..api_idx_0004_7.l5:
    mov bx, word [bp - 0x0004]
    mov al, byte [bx + 0x5b48]
    sub ah, ah
    cmp ax, 0xff
    je short @..api_idx_0004_7.l6
    push bx
    db 0xe8, 0xf7, 0x90 ; call 0xffffc12a
    pop cx
@..api_idx_0004_7.l6:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x12
    jl short @..api_idx_0004_7.l5
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0xd2, 0xa5 ; call 0xffffd61c
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 5
    push ax
    db 0xe8, 0xc4, 0xa5 ; call 0xffffd61c
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 7
    push ax
    db 0xe8, 0xb6, 0xa5 ; call 0xffffd61c
    add sp, byte 4
    ret
api_idx_0008_4:
    mov ax, 0xfff8
    db 0xe8, 0x9b, 0xc3 ; call 0xfffff40b
    mov word [bp - 0x0002], 0
@..api_idx_0008_4.l1:
    mov word [bp - 0x0004], 0
@..api_idx_0008_4.l2:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov si, word [bp - 0x0004]
    mov al, byte [bx + si + 0x18c]
    sub ah, ah
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jg short @..api_idx_0008_4.l3
    jmp near @..api_idx_0008_4.l8
@..api_idx_0008_4.l3:
    mov ax, si
    jmp short 0x30f6
    mov ax, word [bp - 0x0008]
    mov cx, 0xa
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    jmp short @..api_idx_0008_4.l5
    mov ax, word [bp - 0x0008]
    mov cx, 0xa
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    jmp short @..api_idx_0008_4.l5
    mov ax, word [bp - 0x0008]
    mov cx, 0xc
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    jmp short @..api_idx_0008_4.l5
    mov ax, word [bp - 0x0008]
    mov cx, 0xc
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    jmp short @..api_idx_0008_4.l5
    mov ax, word [bp - 0x0008]
    mov cx, 0x14
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    jmp short @..api_idx_0008_4.l5
    mov word [bp - 0x0006], 1
    jmp short @..api_idx_0008_4.l5
    in al, 0x80
    db 0xf2, 0x80, 0x00, 0x81 ; add byte ptr [bx + si], 0x81
    push cs
    sbb word [si], strict word 0x2a81
    cmp word [di], 6
    jae short @..api_idx_0008_4.l5
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7ecf]
@..api_idx_0008_4.l5:
    cmp word [bp - 0x0006], byte 1
    jge short @..api_idx_0008_4.l6
    mov word [bp - 0x0006], 1
@..api_idx_0008_4.l6:
    mov ax, word [bp - 0x0006]
    sub word [bp - 0x0008], ax
    cmp word [bp - 0x0008], byte 0
    jge short @..api_idx_0008_4.l7
    mov word [bp - 0x0008], 0
@..api_idx_0008_4.l7:
    mov al, byte [bp - 0x0008]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b7e]
    mov si, word [bp - 0x0004]
    mov byte [bx + si + 0x18c], al
@..api_idx_0008_4.l8:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 6
    jge short @..api_idx_0008_4.l9
    jmp near @..api_idx_0008_4.l2
@..api_idx_0008_4.l9:
    mov word [bp - 0x0004], 0
@..api_idx_0008_4.l10:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov si, word [bp - 0x0004]
    cmp byte [bx + si + 0x192], 0
    jbe short @..api_idx_0008_4.l11
    dec byte [bx + si + 0x192]
@..api_idx_0008_4.l11:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 6
    jl short @..api_idx_0008_4.l10
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jge short @..api_idx_0008_4.l12
    jmp near @..api_idx_0008_4.l1
@..api_idx_0008_4.l12:
    cmp word [data_82fa], byte 0
    jle short @..api_idx_0008_4.l13
    mov bx, word [data_8482]
    mov al, byte [bx + 0x190]
    sub ah, ah
    mov word [data_82fc], ax
@..api_idx_0008_4.l13:
    cmp word [data_82fc], byte 0
    jg short @..api_idx_0008_4.l14
    mov word [data_82fa], 0
    mov word [data_82fc], 0
@..api_idx_0008_4.l14:
    ret
api_idx_0056:
    mov ax, 0xffaa
    db 0xe8, 0x64, 0xc2 ; call 0xfffff40b
    call math_loc_1f39
    call api_idx_0014
    mov ax, 6
    push ax
    call api_idx_005c
    pop cx
    call api_idx_0008_4
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0056.l4
@..api_idx_0056.l1:
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov bx, word [data_8482]
    cmp byte [bx + si + 0x1f], 1
    jb short @..api_idx_0056.l2
    mov al, byte [bx + si + 0x1f]
    sub ah, ah
    cmp ax, word [data_8466]
    jle short @..api_idx_0056.l3
@..api_idx_0056.l2:
    mov byte [bx + si + 0x1f], 1
@..api_idx_0056.l3:
    inc word [bp - 0x0002]
@..api_idx_0056.l4:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..api_idx_0056.l1
    mov ax, 1
    push ax
    call api_idx_000a
    pop cx
    cmp word [data_845c], byte 1
    je short @..api_idx_0056.l5
    jmp near @..api_idx_0056.l15
@..api_idx_0056.l5:
    mov word [bp - 0x0002], 0
    jmp near @..api_idx_0056.l13
@..api_idx_0056.l6:
    cmp word [data_905e], byte 0x0f
    je short @..api_idx_0056.l7
    jmp near @..api_idx_0056.l11
@..api_idx_0056.l7:
    cmp word [data_8458], byte 1
    je short @..api_idx_0056.l8
    jmp near @..api_idx_0056.l11
@..api_idx_0056.l8:
    cmp word [data_0e36], strict word 0xe1
    je short @..api_idx_0056.l9
    jmp near @..api_idx_0056.l11
@..api_idx_0056.l9:
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov bx, word [data_8482]
    mov byte [bx + si + 0x22], 0
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov bx, word [data_8482]
    mov ax, word [bx + si + 0x8]
    mov word [bx + si + 0x6], ax
    mov ax, 0x2c
    imul word [bp - 0x0002]
    mov si, ax
    mov bx, word [data_8482]
    mov ax, word [bx + si + 0x4]
    mov word [bx + si + 0x2], ax
    mov word [bp - 0x0004], 0
@..api_idx_0056.l10:
    mov ax, 0x2c
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov si, ax
    mov bx, word [data_8482]
    mov byte [bx + si + 0xe], 0
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0xa
    jl short @..api_idx_0056.l10
    mov ax, 0x248
    imul word [bp - 0x0002]
    add ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x0056]
    push ax
    db 0xe8, 0xd7, 0xc0 ; call 0xfffff364
    add sp, byte 4
    lea ax, word [bp - 0x0056]
    push ax
    call api_idx_0004_2
    pop cx
    lea ax, word [bp - 0x0056]
    push ax
    db 0xe8, 0xf1, 0xc7 ; call 0xfffffa90
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
    db 0xe8, 0x83, 0x82 ; call 0xffffb53b
    add sp, byte 4
    push word [bp - 0x0002]
    call math_loc_1eb4
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    db 0xe8, 0x6e, 0x98 ; call 0xffffcb3a
    add sp, byte 4
    mov ax, 0xa
    push ax
    lea ax, word [bp - 0x0056]
    push ax
    call api_idx_000c
    add sp, byte 4
    push word [data_905a]
    call api_idx_0004
    pop cx
    jmp short @..api_idx_0056.l12
@..api_idx_0056.l11:
    push word [bp - 0x0002]
    call math_loc_1eb4
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    db 0xe8, 0x42, 0x98 ; call 0xffffcb3a
    add sp, byte 4
@..api_idx_0056.l12:
    inc word [bp - 0x0002]
@..api_idx_0056.l13:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jge short @..api_idx_0056.l14
    jmp near @..api_idx_0056.l6
@..api_idx_0056.l14:
    call api_idx_0004_7
    mov ax, word [data_905e]
    mov word [data_830a], ax
    jmp short @..api_idx_0056.l16
@..api_idx_0056.l15:
    mov word [data_830a], 0xb
@..api_idx_0056.l16:
    ret
loc_331c:
    mov ax, 0xfe5a
    db 0xe8, 0xe9, 0xc0 ; call 0xfffff40b
    mov ax, 0
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x843a
    push ax
    db 0xe8, 0xd5, 0xbf ; call 0xfffff306
    add sp, byte 6
    mov word [bp - 0x0002], 0
@..local.l141:
    mov ax, 0
    push ax
    mov ax, 0x1a4
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x7b7e]
    db 0xe8, 0xb7, 0xbf ; call 0xfffff306
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short @..local.l141
    mov word [bp - 0x0002], 0
@..local.l142:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b7e]
    mov byte [bx + 0x1a1], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short @..local.l142
    mov word [data_8466], 0
    mov word [data_845c], 0
    mov word [data_845e], 0xfffe
    ret
api_idx_0004_8:
    mov ax, 0xfffc
    db 0xe8, 0x75, 0xc0 ; call 0xfffff40b
    mov word [data_84a4], 0
    mov word [data_84a2], 0
    cmp word [data_0e36], strict word 0xe1
    jne short @..api_idx_0004_8.l1
    mov word [data_845a], 1
@..api_idx_0004_8.l1:
    call loc_331c
    mov ax, 1
    push ax
    push word [data_0e36]
    call api_idx_0008_3
    add sp, byte 4
    mov bx, word [data_8492]
    mov si, word [data_8452]
    mov al, byte [bx + si + 0xa8]
    sub ah, ah
    mov word [data_84a0], ax
    mov word [data_849e], 0xffff
    call api_idx_0006
    call api_idx_0004_4
    ret
loc_33df:
    mov ax, 0xfd06
    db 0xe8, 0x26, 0xc0 ; call 0xfffff40b
    mov word [data_90bc], 1
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    push word [data_8456]
    db 0xe8, 0xc8, 0x83 ; call 0xffffb7c2
    add sp, byte 6
    mov word [data_8454], ax
    mov word [data_8458], 0
    cmp word [data_82b6], byte 0xff
    je short @..local.l145
@..local.l143:
    call 0xef83
    test ax, ax
    je short @..local.l144
    jmp short @..local.l143
@..local.l144:
    mov ax, 0
    push ax
    call 0xd907
    pop cx
@..local.l145:
    call 0xc145
    mov ax, 0
    push ax
    db 0xe8, 0x02, 0x8d ; call 0xffffc12a
    pop cx
    mov ax, 4
    push ax
    db 0xe8, 0xfa, 0x8c ; call 0xffffc12a
    pop cx
    mov ax, 6
    push ax
    db 0xe8, 0xf2, 0x8c ; call 0xffffc12a
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
    db 0xe8, 0x88, 0xa2 ; call 0xffffd6dc
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 7
    push ax
    push ax
    db 0xe8, 0x79, 0xa2 ; call 0xffffd6dc
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 0xa
    push ax
    push ax
    db 0xe8, 0x6a, 0xa2 ; call 0xffffd6dc
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 0xb
    push ax
    push ax
    db 0xe8, 0x5b, 0xa2 ; call 0xffffd6dc
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    push ax
    db 0xe8, 0x4c, 0xa2 ; call 0xffffd6dc
    add sp, byte 6
    mov ax, 7
    push ax
    mov ax, 9
    push ax
    db 0xe8, 0x7e, 0xa1 ; call 0xffffd61c
    add sp, byte 4
    mov ax, 0xc
    push ax
    mov ax, 0x52
    push ax
    db 0xe8, 0x70, 0xa1 ; call 0xffffd61c
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
    mov word [data_9062], dx
    mov word [data_9060], ax
    cmp word [data_906a], byte 0
    je short @..local.l146
    mov ax, 1
    push ax
    push word [data_9068]
    call 0xc459
    add sp, byte 4
    mov word [data_906a], 0
@..local.l146:
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
    db 0xe8, 0x2b, 0xb4 ; call 0xffffe935
    add sp, byte 0x0c
    mov word [data_9066], dx
    mov word [data_9064], ax
    mov word [bp - 0x0002], 0
@..local.l147:
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
    db 0xe8, 0x70, 0xbf ; call 0xfffff4a3
    pop cx
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x7b7e], ax
    cmp word [bx - 0x7b70], byte 0
    je short @..local.l148
    cmp word [bx - 0x7b7e], byte 0
    jne short @..local.l149
@..local.l148:
    mov ax, 0x1d
    push ax
    call 0xb171
    pop cx
@..local.l149:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short @..local.l147
    mov word [bp - 0x0002], 0
@..local.l150:
    mov ax, 0x18
    push ax
    db 0xe8, 0x37, 0xbf ; call 0xfffff4a3
    pop cx
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x7b96], ax
    cmp word [bx - 0x7b96], byte 0
    jne short @..local.l151
    mov ax, 0x1d
    push ax
    db 0xe8, 0xeb, 0x7b ; call 0xb171
    pop cx
@..local.l151:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b96]
    mov byte [bx + 0x14], 0xff
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xc
    jl short @..local.l150
    mov word [bp - 0x0002], 0xf
@..local.l152:
    mov bx, word [bp - 0x0002]
    mov byte [bx + 0x5b48], 0xff
    mov byte [bx + 0x5b5a], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x12
    jl short @..local.l152
    mov ax, 0xc6
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 8
    push ax
    db 0xe8, 0x57, 0xb3 ; call 0xffffe928
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
    db 0xe8, 0x3a, 0xb3 ; call 0xffffe928
    add sp, byte 8
    mov word [data_8d0c], dx
    mov word [data_8d0a], ax
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    db 0xe8, 0x19, 0xa0 ; call 0xffffd61c
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, 3
    push ax
    db 0xe8, 0x0b, 0xa0 ; call 0xffffd61c
    add sp, byte 4
    mov ax, 0
    push ax
    call api_idx_000a
    pop cx
    call api_idx_0004_8
    mov ax, 1
    cmp word [data_905e], byte 0x12
    jne short @..local.l153
    mov ax, 0
@..local.l153:
    mov word [data_90b8], ax
    mov ax, 0
    cmp word [data_905e], byte 0x12
    jne short @..local.l154
    mov ax, 1
@..local.l154:
    mov word [data_90ba], ax
    cmp word [data_905e], byte 0x12
    jne short @..local.l155
    cmp word [data_8466], byte 1
    jle short @..local.l155
    mov ax, 1
    push ax
    call api_idx_000a
    pop cx
    mov ax, 1
    push ax
    call 0xb75e
    pop cx
    push word [data_8492]
    lea ax, word [bp - 0x0056]
    push ax
    db 0xe8, 0xfc, 0xbc ; call 0xfffff364
    add sp, byte 4
    lea ax, word [bp - 0x0056]
    push ax
    call api_idx_0004_2
    pop cx
    lea ax, word [bp - 0x0056]
    push ax
    db 0xe8, 0x16, 0xc4 ; call 0xfffffa90
    pop cx
    mov word [bp - 0x0004], ax
    lea cx, word [bp - 0x0056]
    add ax, cx
    push ax
    mov ax, 0xdb8
    push ax
    db 0xe8, 0xb0, 0x7e ; call 0xb53b
    add sp, byte 4
    mov ax, 0x11
    push ax
    lea ax, word [bp - 0x0056]
    push ax
    call api_idx_000c
    add sp, byte 4
@..local.l155:
    call math_loc_1f39
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    mov word [data_830a], 0xb
    ret
api_idx_0002_2:
    mov ax, 0xfffe
    db 0xe8, 0x4d, 0xbd ; call 0xfffff40b
    mov word [data_90b6], 5
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0002_2.l2
@..api_idx_0002_2.l1:
    push word [bp - 0x0002]
    call math_loc_1eb4
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call api_idx_0008
    add sp, byte 4
    inc word [bp - 0x0002]
@..api_idx_0002_2.l2:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..api_idx_0002_2.l1
    call api_idx_000c_3
    mov ax, 0
    push ax
    call api_idx_005a
    pop cx
    call loc_2cc7
    cmp word [data_90bc], byte 0
    jne short @..api_idx_0002_2.l3
    call math_loc_1a16
@..api_idx_0002_2.l3:
    mov word [data_90bc], 0
    mov word [data_830a], 0xc
    ret

    db 0x8f, 0x06, 0xb4, 0x90, 0x59, 0x89, 0x26, 0xb0, 0x90, 0x89, 0x2e, 0xb2, 0x90, 0x89, 0x36, 0xac
    db 0x90, 0x89, 0x3e, 0xae, 0x90, 0xfc, 0xbf, 0xb6, 0x90, 0xb9, 0xd0, 0x90, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0xd5, 0xc8, 0x8b, 0x2e, 0xb2, 0x90, 0x8b, 0x26, 0xb0
    db 0x90, 0x8b, 0x36, 0xac, 0x90, 0x8b, 0x3e, 0xae, 0x90, 0x51, 0xff, 0x26, 0xb4, 0x90

string_loc_374e:
    push bp
    mov bp, sp
    push si
    push di
    mov di, ds
    mov es, di
    mov si, word [bp + 0x4]
    mov di, word [bp + 0x6]
    mov cx, word [bp + 0x8]
    jcxz @..string_loc_374e.l2
    cmp di, si
    je short @..string_loc_374e.l2
@..string_loc_374e.l1:
    mov al, byte [es:di]
    xchg byte [si], al
    stosb
    inc si
    loop @..string_loc_374e.l1
@..string_loc_374e.l2:
    pop di
    pop si
    pop bp
    ret

    db 'MON00.PIC', 0
    db 0x20, 0x00
    db 'VM1.$$$', 0
    times 10 db 0

