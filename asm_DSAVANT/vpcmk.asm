%include "structs/structs.inc"
%include "structs/vpcmk.inc"
org 0
bits 16
%include "labels/vpcmk_foreign_labels.inc"

    db 0xf2, 0x00, 0x55, 0x50, 0x23, 0x70, 0x98, 0x90 ; header (8 bytes)

data_0002 equ 0x0002
data_0038 equ 0x0038
data_003c equ 0x003c
data_0040 equ 0x0040
data_0042 equ 0x0042
data_0044 equ 0x0044
data_00e6 equ 0x00e6
data_010e equ 0x010e
data_02b8 equ 0x02b8
data_048b equ 0x048b
data_0805 equ 0x0805
data_0e32 equ 0x0e32
data_2429 equ 0x2429
data_3231 equ 0x3231
data_487f equ 0x487f
data_4c4b equ 0x4c4b
data_59fc equ 0x59fc
data_5b3e equ 0x5b3e
data_5e2a equ 0x5e2a
data_6a05 equ 0x6a05
data_830a equ 0x830a
data_844c equ 0x844c
data_844e equ 0x844e
data_8450 equ 0x8450
data_904e equ 0x904e
data_9050 equ 0x9050
data_9052 equ 0x9052
data_905a equ 0x905a
data_906e equ 0x906e
data_9070 equ 0x9070
data_9072 equ 0x9072
data_9074 equ 0x9074
data_908a equ 0x908a
data_908c equ 0x908c
data_908e equ 0x908e
data_9090 equ 0x9090
data_9092 equ 0x9092
data_9094 equ 0x9094
data_9524 equ 0x9524
data_9526 equ 0x9526
data_9528 equ 0x9528
data_952a equ 0x952a
data_952c equ 0x952c
data_952e equ 0x952e
data_9530 equ 0x9530
data_9532 equ 0x9532
data_9534 equ 0x9534
data_9536 equ 0x9536
data_9538 equ 0x9538
data_953a equ 0x953a
data_953c equ 0x953c
data_953e equ 0x953e
data_9540 equ 0x9540
data_9542 equ 0x9542
data_9594 equ 0x9594
data_95aa equ 0x95aa
data_95ac equ 0x95ac
data_95ae equ 0x95ae
data_95e8 equ 0x95e8
data_960c equ 0x960c
data_976c equ 0x976c
data_978a equ 0x978a
data_a0f9 equ 0xa0f9
data_a10d equ 0xa10d
data_a16f equ 0xa16f
data_a195 equ 0xa195

    db 0x8c, 0x04, 0x68, 0x02, 0xd3, 0xbf
loc_000e:
    mov ax, 0
    call 0xf40b
    call api_idx_002c_2
    mov word [data_830a], 4
    mov ax, 0
    ret
api_idx_0002:
    mov ax, 0xfffe
    db 0xe8, 0xe4, 0xf3 ; call 0xf40b
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
    jne short @..api_idx_0002.l1
    mov ax, 0x1c
    push ax
    call 0xb171
    pop cx
@..api_idx_0002.l1:
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call 0xefde
    add sp, byte 4
    push word [bp - 0x0002]
    call 0xfda5
    pop cx
    cmp word [bp + 0x6], byte 0
    je short @..api_idx_0002.l2
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call 0xe8da
    add sp, byte 8
@..api_idx_0002.l2:
    ret
api_idx_0002_2:
    mov ax, 0xfffe
    db 0xe8, 0x80, 0xf3 ; call 0xf40b
    mov ax, 0
    push ax
    db 0xe8, 0x82, 0xee ; call 0xef14
    pop cx
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    mov ax, 0x9098
    push ax
    db 0xe8, 0xbf, 0xd0 ; call 0xd161
    add sp, byte 4
    push ax
    db 0xe8, 0x60, 0xf8 ; call 0xf909
    add sp, byte 4
    mov word [bp - 0x0002], ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0x6]
    imul word [data_906e]
    cwd
    add ax, word [data_9072]
    adc dx, word [data_9074]
    push dx
    push ax
    push word [bp - 0x0002]
    call 0xfdbd
    add sp, byte 8
    cmp word [bp + 0x8], byte 0
    jne short @..api_idx_0002_2.l1
    push word [data_906e]
    push word [bp + 0x4]
    push word [bp - 0x0002]
    call 0xfd6f
    add sp, byte 6
    jmp short @..api_idx_0002_2.l2
@..api_idx_0002_2.l1:
    cmp word [bp + 0x8], byte 1
    jne short @..api_idx_0002_2.l2
    push word [data_906e]
    push word [bp + 0x4]
    push word [bp - 0x0002]
    call 0xfd76
    add sp, byte 6
@..api_idx_0002_2.l2:
    push word [bp - 0x0002]
    db 0xe8, 0xa3, 0xfc ; call 0xfda5
    pop cx
    ret
api_idx_0008:
    mov ax, 0xfff8
    db 0xe8, 0x01, 0xf3 ; call 0xf40b
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
@..api_idx_0008.l1:
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0008], 0
@..api_idx_0008.l2:
    mov ax, 1
    push ax
    call 0xea50
    pop cx
    test ax, ax
    je short @..api_idx_0008.l3
    jmp near @..api_idx_0008.l7
@..api_idx_0008.l3:
    cmp word [bp - 0x0008], byte 0
    jne short @..api_idx_0008.l5
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
    je short @..api_idx_0008.l4
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
@..api_idx_0008.l4:
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    db 0xe8, 0x3f, 0xe7 ; call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0006]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x0006], dx
    mov word [bp - 0x0008], 0xa
    jmp short @..api_idx_0008.l6
@..api_idx_0008.l5:
    mov ax, 0xa
    push ax
    call 0xe489
    pop cx
    dec word [bp - 0x0008]
@..api_idx_0008.l6:
    jmp near @..api_idx_0008.l2
@..api_idx_0008.l7:
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
    db 0xe8, 0x1a, 0xe7 ; call 0xe901
    add sp, byte 0x0a
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    db 0xe8, 0xd9, 0xe6 ; call 0xe8da
    add sp, byte 8
    cmp word [bp - 0x0002], byte 0x0d
    jne short @..local.l1
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], 0
    call 0xec17
    ret
@..local.l1:
    cmp word [bp - 0x0002], byte 8
    jne short @..local.l4
    cmp word [bp - 0x0004], byte 0
    jle short @..local.l2
    dec word [bp - 0x0004]
    add word [bp + 0x6], byte 0xfa
    jmp short @..local.l3
@..local.l2:
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
@..local.l3:
    jmp near @..local.l8
@..local.l4:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp + 0xa]
    jl short @..local.l5
    mov ax, 0
    push ax
    db 0xe8, 0x9a, 0xb5 ; call 0xb7e0
    pop cx
    jmp near @..local.l8
@..local.l5:
    cmp word [bp + 0x10], byte 0
    jne short @..local.l6
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x20
    jl short @..local.l6
    cmp ax, strict word 0x7f
    jle short @..local.l7
@..local.l6:
    cmp word [bp + 0x10], byte 1
    jne short @..local.l8
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x30
    jl short @..local.l8
    cmp ax, strict word 0x39
    jg short @..local.l8
@..local.l7:
    mov al, byte [bp - 0x0002]
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], al
    inc word [bp - 0x0004]
    push word [bp + 0x8]
    push word [bp + 0x6]
    db 0xe8, 0x82, 0xe5 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov al, byte [bp - 0x0002]
    sub ah, ah
    push ax
    db 0xe8, 0x99, 0xe5 ; call 0xe830
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    db 0xe8, 0x29, 0xe6 ; call 0xe8da
    add sp, byte 8
    add word [bp + 0x6], byte 6
@..local.l8:
    jmp near @..api_idx_0008.l1
    db 0xc3
api_idx_0008_2:
    mov ax, 0xfff8
    db 0xe8, 0x49, 0xf1 ; call 0xf40b
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
    db 0xe8, 0xd8, 0xe4 ; call 0xe823
    add sp, byte 4
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push word [bp + 0x4]
    db 0xe8, 0x33, 0xf7 ; call 0xfa90
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
    db 0xe8, 0x8e, 0xe4 ; call 0xe809
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
    db 0xe8, 0x24, 0xe5 ; call 0xe8da
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
    db 0xe8, 0x3b, 0xf0 ; call 0xf40b
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
    db 0xe8, 0x17, 0xe5 ; call 0xe901
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
    db 0xe8, 0xfa, 0xe4 ; call 0xe901
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
    db 0xe8, 0xdd, 0xe4 ; call 0xe901
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
    db 0xe8, 0xc0, 0xe4 ; call 0xe901
    add sp, byte 0x0a
    ret
math_loc_0445:
    mov ax, 0xfe56
    db 0xe8, 0xc0, 0xef ; call 0xf40b
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
    jne short @..math_loc_0445.l1
    jmp near @..math_loc_0445.l2
@..math_loc_0445.l1:
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
    db 0xe8, 0x33, 0xe3 ; call 0xe823
    add sp, byte 4
    mov ax, word [bp + 0xa]
    add ax, strict word 0xfff3
    push ax
    lea ax, word [bp - 0x01a6]
    push ax
    db 0xe8, 0x8e, 0xf5 ; call 0xfa90
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
    db 0xe8, 0xf0, 0xe2 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x01a6]
    push ax
    db 0xe8, 0x26, 0xe3 ; call 0xe84e
    add sp, byte 4
    jmp short @..math_loc_0445.l3
@..math_loc_0445.l2:
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
    db 0xe8, 0x3b, 0xbd ; call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x01a8], ax
@..math_loc_0445.l3:
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
@..math_loc_0445.l4:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1c]
    cmp word [bx + si], byte 0xff
    jne short @..math_loc_0445.l5
    jmp near @..local.l10
@..math_loc_0445.l5:
    cmp word [bx + si], byte 1
    je short @..math_loc_0445.l6
    jmp near @..local.l9
@..math_loc_0445.l6:
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x0156]
    add ax, cx
    push ax
    mov ax, word [bp + 0x4]
    add ax, word [bp - 0x0004]
    push ax
    db 0xe8, 0xb1, 0xaf ; call 0xb53b
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
    db 0xe8, 0x0e, 0xb7 ; call 0xbce3
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    mov ax, word [bp + 0x16]
    mov cx, word [bp - 0x0004]
    cmp cx, word [bp + 0x18]
    jne short @..math_loc_0445.l7
    mov ax, 0x1a
@..math_loc_0445.l7:
    push ax
    db 0xe8, 0x35, 0xe2 ; call 0xe823
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
    db 0xe8, 0x86, 0xf4 ; call 0xfa90
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
    db 0xe8, 0xe1, 0xe1 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x0156]
    add ax, cx
    push ax
    db 0xe8, 0x0f, 0xe2 ; call 0xe84e
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
@..local.l9:
    inc word [bp - 0x0004]
    jmp near @..math_loc_0445.l4
@..local.l10:
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    push word [bp - 0x0002]
    db 0xe8, 0x07, 0xb4 ; call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    db 0xe8, 0x28, 0xe2 ; call 0xe8da
    add sp, byte 8
    cmp word [data_0e32], byte 0
    je short @..local.l12
@..local.l11:
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    mov word [bp - 0x0004], ax
    cmp word [data_5b3e], byte 0
    je short @..local.l11
    jmp near @..local.l26
@..local.l12:
    mov word [bp - 0x0004], 0
@..local.l13:
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
    db 0xe8, 0xa2, 0xe1 ; call 0xe8da
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
@..local.l14:
    mov ax, 1
    push ax
    db 0xe8, 0xdf, 0xe2 ; call 0xea50
    pop cx
    test ax, ax
    jne short @..local.l15
    jmp short @..local.l14
@..local.l15:
    mov ax, 1
    push ax
    db 0xe8, 0xb3, 0xe3 ; call 0xeb32
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
@..local.l16:
    mov ax, word [bp - 0x01aa]
    jmp near @..local.l21
@..local.l17:
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
    jmp near @..local.l23
@..local.l18:
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
    jmp short @..local.l23
@..local.l19:
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
    jmp short @..local.l23
@..local.l20:
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
    jmp short @..local.l23
@..local.l21:
    cmp ax, strict word 8
    je short @..local.l19
    cmp ax, strict word 9
    jne short @..local.l22
    jmp near @..local.l17
@..local.l22:
    cmp ax, strict word 0xa
    je short @..local.l20
    cmp ax, strict word 0xb
    je short @..local.l18
@..local.l23:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jl short @..local.l24
    jmp near @..local.l16
@..local.l24:
    cmp word [bp - 0x01aa], byte 0x0d
    je short @..local.l25
    jmp near @..local.l13
@..local.l25:
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
    db 0xe8, 0x6a, 0xe0 ; call 0xe8da
    add sp, byte 8
@..local.l26:
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
    db 0xe8, 0x95, 0xb5 ; call 0xbe5f
    add sp, byte 0x0a
    mov ax, 1
    push ax
    push word [bp - 0x01a8]
    call 0xc459
    add sp, byte 4
    cmp word [bp + 0x1a], byte 0
    je short @..local.l28
    cmp word [bp + 0x6], byte 0
    je short @..local.l27
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
    db 0xe8, 0xd4, 0xdf ; call 0xe8da
    add sp, byte 8
    jmp short @..local.l28
@..local.l27:
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
    db 0xe8, 0xb8, 0xdf ; call 0xe8da
    add sp, byte 8
@..local.l28:
    mov ax, word [bp - 0x0004]
    mov word [data_9052], ax
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x002a]
    ret
api_idx_0058:
    mov ax, 0xffa8
    db 0xe8, 0xd0, 0xea ; call 0xf40b
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
    db 0xe8, 0xb9, 0xdf ; call 0xe928
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
    db 0xe8, 0x03, 0xb3 ; call 0xbc9a
    add sp, byte 8
    lea ax, word [bp - 0x0054]
    push ax
    push word [bp + 0x4]
    db 0xe8, 0x97, 0xab ; call 0xb53b
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0x71, 0xde ; call 0xe823
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 0xfff3
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0xcd, 0xf0 ; call 0xfa90
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
    db 0xe8, 0x2f, 0xde ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0x66, 0xde ; call 0xe84e
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    push ax
    db 0xe8, 0x44, 0xab ; call 0xb53b
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
    db 0xe8, 0xcb, 0xb2 ; call 0xbce3
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    mov ax, 0x1a
    push ax
    db 0xe8, 0xfd, 0xdd ; call 0xe823
    add sp, byte 4
    mov ax, word [bp + 0x8]
    inc ax
    inc ax
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0x5a, 0xf0 ; call 0xfa90
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
    db 0xe8, 0xb8, 0xdd ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0xef, 0xdd ; call 0xe84e
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
    db 0xe8, 0x1f, 0xb0 ; call 0xbaa6
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
    db 0xe8, 0x08, 0xb0 ; call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    db 0xe8, 0x29, 0xde ; call 0xe8da
    add sp, byte 8
    mov ax, word [bp - 0x0058]
    mov dx, word [bp - 0x0056]
    ret
api_idx_0038:
    mov ax, 0xffc8
    db 0xe8, 0x4a, 0xe9 ; call 0xf40b
    mov word [data_904e], 0xffff
    mov word [bp - 0x0004], 0x37
    mov word [bp - 0x0006], 0x8f
    mov word [bp - 0x0008], 0x108
    mov word [bp - 0x000a], 0xc5
    mov word [bp - 0x0012], 0x16
    mov ax, 7
    cmp word [bp + 0xc], byte 7
    jge short @..api_idx_0038.l1
    mov ax, word [bp + 0xc]
@..api_idx_0038.l1:
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
    db 0xe8, 0x79, 0xb7 ; call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0038], ax
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    db 0xe8, 0x7b, 0xb1 ; call 0xbc9a
    add sp, byte 8
    lea ax, word [bp - 0x0036]
    push ax
    push word [bp + 0x4]
    db 0xe8, 0x0f, 0xaa ; call 0xb53b
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
    db 0xe8, 0xdd, 0xa9 ; call 0xb53b
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
    db 0xe8, 0x40, 0xb5 ; call 0xc0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0036]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    db 0xe8, 0xaa, 0xa9 ; call 0xb53b
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
    db 0xe8, 0x0d, 0xb5 ; call 0xc0c1
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
    db 0xe8, 0x6e, 0xae ; call 0xbaa6
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
    db 0xe8, 0x40, 0xae ; call 0xbaa6
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
    db 0xe8, 0x12, 0xae ; call 0xbaa6
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
    db 0xe8, 0xe7, 0xad ; call 0xbaa6
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
    db 0xe8, 0xb9, 0xad ; call 0xbaa6
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
    db 0xe8, 0x8b, 0xad ; call 0xbaa6
    add sp, byte 0x0e
    mov ax, 7
    cmp word [bp + 0xc], byte 7
    jge short @..local.l29
    mov ax, word [bp + 0xc]
@..local.l29:
    mov word [bp - 0x001e], ax
    mov word [bp - 0x0002], 0
    jmp short @..local.l31
@..local.l30:
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
    db 0xe8, 0x3b, 0xad ; call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
@..local.l31:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x001e]
    jl short @..local.l30
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
    db 0xe8, 0x17, 0xad ; call 0xbaa6
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
    db 0xe8, 0x31, 0xdb ; call 0xe8da
    add sp, byte 8
    mov word [bp - 0x001a], 1
@..local.l32:
    mov ax, 0x59fe
    push ax
    db 0xe8, 0x55, 0xab ; call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x0018], ax
    cmp word [data_59fc], byte 0
    je short @..local.l36
    mov ax, word [bp - 0x0020]
    cmp ax, word [bp - 0x0016]
    jl short @..local.l33
    inc word [bp - 0x0020]
@..local.l33:
    mov ax, word [bp - 0x0020]
    cmp ax, strict word 0xffff
    je short @..local.l34
    cmp ax, word [bp - 0x0016]
    jl short @..local.l34
    mov ax, word [bp - 0x0016]
    add ax, word [bp - 0x001e]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp - 0x0020]
    cmp cx, ax
    jge short @..local.l35
@..local.l34:
    mov ax, word [bp - 0x0016]
    mov word [bp - 0x0020], ax
@..local.l35:
    mov word [data_5b3e], 1
    mov ax, word [bp - 0x0020]
    sub ax, word [bp - 0x0016]
    add ax, strict word 6
    mov word [bp - 0x0018], ax
@..local.l36:
    cmp word [data_5b3e], byte 1
    je short @..local.l37
    jmp near @..local.l41
@..local.l37:
    mov ax, word [bp - 0x0018]
    jmp near @..local.l39

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

@..local.l38:
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
    db 0xe8, 0x05, 0xae ; call 0xbf97
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
    db 0xe8, 0x26, 0xd7 ; call 0xe8da
    add sp, byte 8
    jmp short @..local.l41
    db 0x5d, 0x5e, 0x84, 0x5f, 0x84, 0x5f, 0xbb, 0x60, 0x0c, 0x61, 0x5d, 0x61
@..local.l39:
    cmp ax, strict word 6
    jae short @..local.l40
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6200]
@..local.l40:
    jmp short @..local.l38
@..local.l41:
    cmp word [bp - 0x001a], byte 0
    je short @..local.l42
    jmp near @..local.l32
@..local.l42:
    mov ax, 1
    push ax
    push word [bp - 0x0038]
    db 0xe8, 0x72, 0xb2 ; call 0xc459
    add sp, byte 4
    mov ax, word [bp - 0x0020]
    mov word [data_904e], ax
    mov ax, word [data_9050]
    ret
api_idx_0026:
    mov ax, 0xffda
    db 0xe8, 0x11, 0xe2 ; call 0xf40b
    mov word [data_904e], 0xffff
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
    db 0xe8, 0x54, 0xb0 ; call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x0026], ax
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    db 0xe8, 0x56, 0xaa ; call 0xbc9a
    add sp, byte 8
    lea ax, word [bp - 0x0024]
    push ax
    push word [bp + 0x4]
    db 0xe8, 0xea, 0xa2 ; call 0xb53b
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
    db 0xe8, 0x4d, 0xae ; call 0xc0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0024]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    push ax
    db 0xe8, 0xb8, 0xa2 ; call 0xb53b
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
    db 0xe8, 0x1b, 0xae ; call 0xc0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0024]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    db 0xe8, 0x85, 0xa2 ; call 0xb53b
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
    db 0xe8, 0xe8, 0xad ; call 0xc0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0024]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    inc ax
    push ax
    db 0xe8, 0x51, 0xa2 ; call 0xb53b
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 0x9b
    push ax
    db 0xe8, 0x2b, 0xd5 ; call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x16
    push ax
    lea ax, word [bp - 0x0024]
    push ax
    db 0xe8, 0x87, 0xe7 ; call 0xfa90
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
    db 0xe8, 0xe1, 0xd4 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0024]
    push ax
    db 0xe8, 0x18, 0xd5 ; call 0xe84e
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
    db 0xe8, 0x2f, 0xac ; call 0xbf97
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
    db 0xe8, 0x10, 0xa7 ; call 0xbaa6
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
    db 0xe8, 0xe5, 0xa6 ; call 0xbaa6
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
    db 0xe8, 0xb7, 0xa6 ; call 0xbaa6
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
    db 0xe8, 0x89, 0xa6 ; call 0xbaa6
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
    db 0xe8, 0x73, 0xa6 ; call 0xbaa6
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
    db 0xe8, 0x8d, 0xd4 ; call 0xe8da
    add sp, byte 8
    db 0xe8, 0xc4, 0xd7 ; call 0xec17
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
    db 0xe8, 0xdf, 0xde ; call 0xf364
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
    db 0xe8, 0xea, 0xaa ; call 0xbf97
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
    db 0xe8, 0x0b, 0xd4 ; call 0xe8da
    add sp, byte 8
    mov word [bp - 0x0010], 1
@..local.l43:
    mov ax, 0x59fe
    push ax
    db 0xe8, 0x2f, 0xa4 ; call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x000e], ax
    cmp word [data_5b3e], byte 1
    je short @..local.l44
    jmp near @..local.l56
@..local.l44:
    jmp near @..local.l52
@..local.l45:
    db 0xe8, 0x24, 0xd7 ; call 0xec17
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
    db 0xe8, 0x82, 0xaa ; call 0xbf97
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
    db 0xe8, 0xa3, 0xd3 ; call 0xe8da
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
    db 0xe8, 0xf8, 0xdd ; call 0xf364
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
    db 0xe8, 0x03, 0xaa ; call 0xbf97
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
    db 0xe8, 0x24, 0xd3 ; call 0xe8da
    add sp, byte 8
    jmp near @..local.l56
@..local.l46:
    cmp word [bp + 0x6], byte 0
    je short @..local.l47
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
    db 0xe8, 0x83, 0xa8 ; call 0xbe5f
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
    db 0xe8, 0x63, 0xa8 ; call 0xbe5f
    add sp, byte 0x0a
    mov word [data_9050], 0
    mov word [bp - 0x0010], 0
@..local.l47:
    jmp near @..local.l56
@..local.l48:
    cmp word [bp + 0x8], byte 0
    je short @..local.l49
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
    db 0xe8, 0x32, 0xa8 ; call 0xbe5f
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
    db 0xe8, 0x12, 0xa8 ; call 0xbe5f
    add sp, byte 0x0a
    mov word [data_9050], 1
    mov word [bp - 0x0010], 0
@..local.l49:
    jmp short @..local.l56
@..local.l50:
    cmp word [bp + 0xa], byte 0
    je short @..local.l51
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
    db 0xe8, 0xe2, 0xa7 ; call 0xbe5f
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
    db 0xe8, 0xc2, 0xa7 ; call 0xbe5f
    add sp, byte 0x0a
    mov word [data_9050], 2
    mov word [bp - 0x0010], 0
@..local.l51:
    jmp short @..local.l56
@..local.l52:
    cmp ax, strict word 0
    jne short @..local.l53
    jmp near @..local.l45
@..local.l53:
    cmp ax, strict word 1
    jne short @..local.l54
    jmp near @..local.l46
@..local.l54:
    cmp ax, strict word 2
    jne short @..local.l55
    jmp near @..local.l48
@..local.l55:
    cmp ax, strict word 3
    je short @..local.l50
@..local.l56:
    cmp word [bp - 0x0010], byte 0
    je short @..local.l57
    jmp near @..local.l43
@..local.l57:
    mov ax, 1
    push ax
    push word [bp - 0x0026]
    db 0xe8, 0x7c, 0xad ; call 0xc459
    add sp, byte 4
    mov word [data_904e], 0xffff
    mov ax, word [data_9050]
    ret
api_idx_000c:
    mov ax, 0xfff4
    db 0xe8, 0x1b, 0xdd ; call 0xf40b
    mov word [bp - 0x0002], 0
@..api_idx_000c.l1:
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
    jl short @..api_idx_000c.l1
    ret
api_idx_0004:
    mov ax, 0xfffc
    db 0xe8, 0x9c, 0xdc ; call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [data_953a]
    push word [data_9538]
    call 0xe942
    add sp, byte 8
    mov word [bp - 0x0002], 0
@..api_idx_0004.l1:
    mov word [bp - 0x0004], 0
@..api_idx_0004.l2:
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov cx, word [bp - 0x0004]
    shl cx, 1
    add ax, cx
    mov bx, ax
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    db 0xe8, 0x7c, 0xd0 ; call 0xe823
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
    db 0xe8, 0x40, 0xd0 ; call 0xe809
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
    jl short @..api_idx_0004.l2
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jge short @..api_idx_0004.l3
    jmp near @..api_idx_0004.l1
@..api_idx_0004.l3:
    mov ax, 0
    push ax
    push ax
    push ax
    call api_idx_000c
    add sp, byte 6
    ret
api_idx_0002_3:
    mov ax, 0xfffe
    db 0xe8, 0xec, 0xdb ; call 0xf40b
    mov word [bp - 0x0002], 0
@..api_idx_0002_3.l1:
    cmp word [bp + 0x4], byte 0
    jl short @..api_idx_0002_3.l2
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x4]
    jne short @..api_idx_0002_3.l3
@..api_idx_0002_3.l2:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    inc word [bx - 0x7cf2]
@..api_idx_0002_3.l3:
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
    jne short @..api_idx_0002_3.l4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x7cf2], 0
@..api_idx_0002_3.l4:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_0002_3.l1
    ret
api_idx_0002_4:
    mov ax, 0xfffe
    db 0xe8, 0x91, 0xdb ; call 0xf40b
    mov word [bp - 0x0002], 0
@..api_idx_0002_4.l1:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x4a, 0x00 ; mov ax, word [bx + 0x4a]
    cmp ax, word [bp + 0x4]
    jge short @..api_idx_0002_4.l2
    inc word [bp - 0x0002]
    jmp short @..api_idx_0002_4.l1
@..api_idx_0002_4.l2:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x4a, 0x00 ; push word [bx + 0x4a]
    db 0xff, 0xb7, 0x48, 0x00 ; push word [bx + 0x48]
    mov ax, word [bp + 0x4]
    add ax, word [bp + 0x6]
    push ax
    call 0xb7c2
    add sp, byte 6
    ret
api_idx_0010:
    mov ax, 0xfff0
    db 0xe8, 0x50, 0xdb ; call 0xf40b
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
    jmp near @..api_idx_0010.l7
@..api_idx_0010.l1:
    mov word [bp - 0x0002], 0
    jmp near @..api_idx_0010.l5
@..api_idx_0010.l2:
    les bx, word [bp - 0x0008]
    mov si, word [bp - 0x000e]
    mov al, byte [es:bx + si]
    sub ah, ah
    mov word [bp - 0x0010], ax
    cmp ax, 0xff
    jne short @..api_idx_0010.l3
    jmp near @..api_idx_0010.l4
@..api_idx_0010.l3:
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
    db 0xe8, 0xb2, 0xcf ; call 0xe8f4
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
    db 0xe8, 0x96, 0xcf ; call 0xe8f4
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
    db 0xe8, 0x6e, 0xcf ; call 0xe8f4
    add sp, byte 6
@..api_idx_0010.l4:
    inc word [bp - 0x000e]
    inc word [bp - 0x0002]
@..api_idx_0010.l5:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x000a]
    jge short @..api_idx_0010.l6
    jmp near @..api_idx_0010.l2
@..api_idx_0010.l6:
    inc word [bp - 0x0004]
@..api_idx_0010.l7:
    mov ax, word [bp - 0x000c]
    dec ax
    dec ax
    cmp ax, word [bp - 0x0004]
    jle short @..api_idx_0010.l8
    jmp near @..api_idx_0010.l1
@..api_idx_0010.l8:
    ret
api_idx_0002_5:
    mov ax, 0xfffe
    db 0xe8, 0x5a, 0xda ; call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [data_953e]
    push word [data_953c]
    db 0xe8, 0x81, 0xcf ; call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    db 0xe8, 0x54, 0xce ; call 0xe823
    add sp, byte 4
    mov word [bp - 0x0002], 0
@..api_idx_0002_5.l1:
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x23
    push ax
    mov ax, 0x73
    push ax
    db 0xe8, 0x21, 0xce ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, 0x9544
    push ax
    db 0xe8, 0x52, 0xce ; call 0xe84e
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
    db 0xe8, 0xcb, 0x98 ; call 0xb2e7
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short @..api_idx_0002_5.l1
    cmp word [data_9594], byte 0
    jl short @..api_idx_0002_5.l2
    mov ax, 0
    push ax
    mov ax, 0x16
    push ax
    db 0xe8, 0xe7, 0xcd ; call 0xe823
    add sp, byte 4
    mov ax, 0x59
    push ax
    mov ax, 0x67
    push ax
    db 0xe8, 0xbf, 0xcd ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x9596
    push ax
    db 0xe8, 0xf6, 0xcd ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0xbd, 0xcd ; call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    push word [data_9594]
    db 0xe8, 0x6f, 0x98 ; call 0xb2e7
    add sp, byte 6
@..api_idx_0002_5.l2:
    cmp word [bp + 0x6], byte 0
    je short @..api_idx_0002_5.l3
    mov ax, 0x60
    push ax
    mov ax, 0xa8
    push ax
    mov ax, 0x23
    push ax
    mov ax, 0x66
    push ax
    db 0xe8, 0x46, 0xce ; call 0xe8da
    add sp, byte 8
@..api_idx_0002_5.l3:
    ret
api_idx_000a:
    mov ax, 0xfff6
    db 0xe8, 0x6d, 0xd9 ; call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [data_9542]
    push word [data_9540]
    db 0xe8, 0x94, 0xce ; call 0xe942
    add sp, byte 8
    cmp word [data_95aa], byte 0
    jle short @..api_idx_000a.l1
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
    sub ax, word [data_95aa]
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
    db 0xe8, 0xe1, 0xd4 ; call 0xefd1
    add sp, byte 0x16
@..api_idx_000a.l1:
    mov ax, 5
    cmp word [data_95ac], byte 0
    jne short @..api_idx_000a.l2
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
@..api_idx_000a.l2:
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
    sub ax, word [data_95aa]
    add ax, strict word 0x19
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0xf
    push ax
    db 0xe8, 0x95, 0xd4 ; call 0xefd1
    add sp, byte 0x16
    ret
api_idx_0054:
    mov ax, 0xffac
    db 0xe8, 0xc5, 0xd8 ; call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [data_9526]
    push word [data_9524]
    db 0xe8, 0xec, 0xcd ; call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    push word [data_952a]
    push word [data_9528]
    db 0xe8, 0xd9, 0xcd ; call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    db 0xe8, 0xaf, 0xcc ; call 0xe823
    add sp, byte 4
    mov ax, 0x4c
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    db 0xe8, 0x08, 0xdf ; call 0xfa90
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
    db 0xe8, 0x6a, 0xcc ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    db 0xe8, 0x9b, 0xcc ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0x62, 0xcc ; call 0xe823
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0x5a
    push ax
    db 0xe8, 0x3a, 0xcc ; call 0xe809
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
    db 0xe8, 0x50, 0x99 ; call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    mov al, byte [bp - 0x0054]
    sub ah, ah
    push ax
    db 0xe8, 0x35, 0xcc ; call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2d
    push ax
    db 0xe8, 0x27, 0xcc ; call 0xe830
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
    db 0xe8, 0x16, 0x99 ; call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0x1b, 0xcc ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x84
    push ax
    db 0xe8, 0xe2, 0xcb ; call 0xe823
    add sp, byte 4
    mov ax, 0xc
    push ax
    mov ax, 0x5a
    push ax
    db 0xe8, 0xba, 0xcb ; call 0xe809
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
    db 0xe8, 0xd0, 0x98 ; call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0xd5, 0xcb ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x84
    push ax
    db 0xe8, 0x9c, 0xcb ; call 0xe823
    add sp, byte 4
    mov ax, 0x12
    push ax
    mov ax, 0x5a
    push ax
    db 0xe8, 0x74, 0xcb ; call 0xe809
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0xc8
    push ax
    db 0xe8, 0x98, 0x98 ; call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0x9d, 0xcb ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c18]
    db 0xe8, 0x1c, 0x96 ; call 0xb2e7
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
    db 0xe8, 0xa9, 0xdc ; call 0xf99f
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
    db 0xe8, 0x48, 0xdc ; call 0xf99f
    mov word [data_95aa], ax
    mov ax, 0x14
    push ax
    mov ax, 0
    push ax
    push word [data_95aa]
    db 0xe8, 0x59, 0x9a ; call 0xb7c2
    add sp, byte 6
    mov word [data_95aa], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jae short @..local.l58
    mov ax, 0
    jmp short @..local.l59
@..local.l58:
    mov ax, 1
@..local.l59:
    mov word [data_95ac], ax
    mov word [data_95ae], 0
    push word [data_95ae]
    call api_idx_000a
    pop cx
    mov ax, 0
    push ax
    mov ax, 0xfd
    push ax
    db 0xe8, 0x81, 0xca ; call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0xc9
    push ax
    db 0xe8, 0x8b, 0x97 ; call 0xb53b
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0xe4
    push ax
    db 0xe8, 0x4b, 0xca ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0x82, 0xca ; call 0xe84e
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
    db 0xe8, 0x42, 0x97 ; call 0xb53b
    add sp, byte 4
    mov ax, 6
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0x89, 0xdc ; call 0xfa90
    pop cx
    mov cx, 0x34
    sub cx, ax
    mov ax, 6
    imul cx
    push ax
    db 0xe8, 0xf3, 0xc9 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0x2a, 0xca ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x47
    push ax
    db 0xe8, 0xf1, 0xc9 ; call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0xca
    push ax
    db 0xe8, 0xfb, 0x96 ; call 0xb53b
    add sp, byte 4
    mov ax, 0xc
    push ax
    mov ax, 0xe4
    push ax
    db 0xe8, 0xbb, 0xc9 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0xf2, 0xc9 ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    db 0xe8, 0xc6, 0xc9 ; call 0xe830
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
    db 0xe8, 0xa5, 0x96 ; call 0xb53b
    add sp, byte 4
    mov ax, 0x12
    push ax
    mov ax, 0xe4
    push ax
    db 0xe8, 0x65, 0xc9 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0x9c, 0xc9 ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    db 0xe8, 0x70, 0xc9 ; call 0xe830
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
    db 0xe8, 0xb5, 0x93 ; call 0xb293
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x1d
    push ax
    db 0xe8, 0x37, 0xc9 ; call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0xd4
    push ax
    db 0xe8, 0x41, 0x96 ; call 0xb53b
    add sp, byte 4
    mov ax, 0x5d
    push ax
    mov ax, 6
    push ax
    db 0xe8, 0x01, 0xc9 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0x38, 0xc9 ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    db 0xe8, 0x0c, 0xc9 ; call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    db 0xe8, 0xf1, 0xc8 ; call 0xe823
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
    db 0xe8, 0xf8, 0xc8 ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2f
    push ax
    db 0xe8, 0xcc, 0xc8 ; call 0xe830
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c0e]
    db 0xe8, 0x03, 0x93 ; call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0xc6, 0xc8 ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1d
    push ax
    db 0xe8, 0x8d, 0xc8 ; call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0xd5
    push ax
    db 0xe8, 0x97, 0x95 ; call 0xb53b
    add sp, byte 4
    mov ax, 0x63
    push ax
    mov ax, 6
    push ax
    db 0xe8, 0x57, 0xc8 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0x8e, 0xc8 ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    db 0xe8, 0x62, 0xc8 ; call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    db 0xe8, 0x47, 0xc8 ; call 0xe823
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
    jge short @..local.l60
    cmp word [bx + 0x5c10], byte 0
    jle short @..local.l60
    mov ax, 1
    jmp short @..local.l61
@..local.l60:
    mov ax, word [bp - 0x0004]
@..local.l61:
    mov word [bp - 0x0004], ax
    lea ax, word [bp - 0x0054]
    push ax
    push word [bp - 0x0004]
    db 0xe8, 0x62, 0x92 ; call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0x25, 0xc8 ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x90bb
    push ax
    db 0xe8, 0x17, 0xc8 ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1d
    push ax
    db 0xe8, 0xde, 0xc7 ; call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x28
    push ax
    db 0xe8, 0xdd, 0xc7 ; call 0xe830
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c12]
    db 0xe8, 0x14, 0x92 ; call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0xd7, 0xc7 ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x29
    push ax
    db 0xe8, 0xab, 0xc7 ; call 0xe830
    add sp, byte 4
    push word [bp + 0x4]
    call api_idx_0004
    pop cx
    ret
api_idx_0004_2:
    mov ax, 0xfffc
    db 0xe8, 0x75, 0xd3 ; call 0xf40b
    mov ax, 0xc2
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0
    push ax
    db 0xe8, 0x7f, 0xc8 ; call 0xe928
    add sp, byte 8
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
    mov ax, 0xbc
    push ax
    push word [bp + 0x4]
    db 0xe8, 0xd4, 0xd9 ; call 0xfa90
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
    db 0xe8, 0x36, 0xc7 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    db 0xe8, 0x42, 0xc7 ; call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    db 0xe8, 0x60, 0xc7 ; call 0xe84e
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0
    push ax
    db 0xe8, 0xd6, 0xc7 ; call 0xe8da
    add sp, byte 8
    cmp word [bp + 0x6], byte 0
    jle short @..api_idx_0004_2.l1
    mov ax, 0
    push ax
    db 0xe8, 0xcc, 0x96 ; call 0xb7e0
    pop cx
@..api_idx_0004_2.l1:
    push word [data_905a]
    call 0xb75e
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    push word [bp - 0x0004]
    db 0xe8, 0x25, 0xc8 ; call 0xe94f
    add sp, byte 6
    mov ax, 0xc2
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0
    push ax
    db 0xe8, 0x9a, 0xc7 ; call 0xe8da
    add sp, byte 8
    ret
api_idx_0004_3:
    mov ax, 0xfffc
    db 0xe8, 0xc1, 0xd2 ; call 0xf40b
    mov ax, word [data_0038]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
@..api_idx_0004_3.l1:
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short @..api_idx_0004_3.l2
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    add ax, si
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short @..api_idx_0004_3.l3
@..api_idx_0004_3.l2:
    mov ax, 1
    jmp short @..api_idx_0004_3.l4
@..api_idx_0004_3.l3:
    mov ax, 0
@..api_idx_0004_3.l4:
    add si, word [bp - 0x0004]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6a50], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jl short @..api_idx_0004_3.l1
    mov ax, word [data_003c]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
@..api_idx_0004_3.l5:
    mov bx, word [bp + 0x8]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short @..api_idx_0004_3.l6
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    add ax, si
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short @..api_idx_0004_3.l7
@..api_idx_0004_3.l6:
    mov ax, 1
    jmp short @..api_idx_0004_3.l8
@..api_idx_0004_3.l7:
    mov ax, 0
@..api_idx_0004_3.l8:
    add si, word [bp - 0x0004]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6a50], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short @..api_idx_0004_3.l5
    mov ax, word [data_0040]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
@..api_idx_0004_3.l9:
    mov bx, word [bp + 0xa]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short @..api_idx_0004_3.l10
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    add ax, si
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short @..api_idx_0004_3.l11
@..api_idx_0004_3.l10:
    mov ax, 1
    jmp short @..api_idx_0004_3.l12
@..api_idx_0004_3.l11:
    mov ax, 0
@..api_idx_0004_3.l12:
    add si, word [bp - 0x0004]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6a50], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_0004_3.l9
    mov ax, word [data_0044]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
@..api_idx_0004_3.l13:
    mov bx, word [bp + 0xc]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short @..api_idx_0004_3.l14
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    add ax, si
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short @..api_idx_0004_3.l15
@..api_idx_0004_3.l14:
    mov ax, 1
    jmp short @..api_idx_0004_3.l16
@..api_idx_0004_3.l15:
    mov ax, 0
@..api_idx_0004_3.l16:
    add si, word [bp - 0x0004]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6a50], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jl short @..api_idx_0004_3.l13
    ret
api_idx_0004_4:
    mov ax, 0xfffc
    db 0xe8, 0x92, 0xd1 ; call 0xf40b
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
    jmp near @..api_idx_0004_4.l8
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
    jmp near @..api_idx_0004_4.l8
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
    jmp near @..api_idx_0004_4.l8
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
    jmp near @..api_idx_0004_4.l8
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
    jmp near @..api_idx_0004_4.l8
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
    jmp near @..api_idx_0004_4.l8
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
    jmp near @..api_idx_0004_4.l8
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
    jmp near @..api_idx_0004_4.l8
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
    jmp near @..api_idx_0004_4.l8
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
    jmp near @..api_idx_0004_4.l8
    mov ax, 0x9255
    push ax
    mov ax, 0x924e
    push ax
    mov ax, 0x9245
    push ax
    mov ax, 0x923a
    push ax
@..api_idx_0004_4.l1:
    push word [bp + 0x4]
    call api_idx_0004_3
    add sp, byte 0x0a
    jmp short @..api_idx_0004_4.l8
    mov ax, 0x927b
    push ax
    mov ax, 0x9274
    push ax
    mov ax, 0x926b
    push ax
    mov ax, 0x9260
    push ax
    push word [bp + 0x4]
@..api_idx_0004_4.l2:
    call api_idx_0004_3
    add sp, byte 0x0a
    jmp short @..api_idx_0004_4.l8
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
@..api_idx_0004_4.l3:
    add sp, byte 0x0a
    jmp short @..api_idx_0004_4.l8
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
@..api_idx_0004_4.l4:
    jmp short @..api_idx_0004_4.l8
    db 0xd1, 0x72, 0xed ; sal word [bp + si - 0x0013], 1
    jb short 0x241c
    jae short @..api_idx_0004_4.l9
    jae short @..api_idx_0004_4.l12
    jae short @..local.l62
    jae short 0x2494
    jae short @..api_idx_0004_4.l1
    jae short @..api_idx_0004_4.l2
    jae short @..api_idx_0004_4.l3
    jae short @..api_idx_0004_4.l4
    jae short @..api_idx_0004_4.l6
    je short @..api_idx_0004_4.l10
    je short 0x2463
@..api_idx_0004_4.l6:
    je short @..api_idx_0004_4.l14
    push cs
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x7455]
@..api_idx_0004_4.l8:
    mov ax, 0x248
@..api_idx_0004_4.l9:
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d65], 0xd
    jbe short @..api_idx_0004_4.l11
@..api_idx_0004_4.l10:
    cmp byte [bx + 0x5d6a], 0xd
    jbe short @..api_idx_0004_4.l11
    mov word [data_95e8], 1
@..api_idx_0004_4.l11:
    mov word [bp - 0x0004], 0
@..api_idx_0004_4.l12:
    mov ax, word [bp + 0x6]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x38, 0x00 ; mov ax, word [bx + 0x38]
    mov word [bp - 0x0002], ax
@..api_idx_0004_4.l14:
    jmp short @..local.l65
@..api_idx_0004_4.l15:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6a50], byte 1
@..local.l62:
    jne short @..local.l64
    mov ax, 0x14
    imul word [bp - 0x0004]
    add ax, 0xe38
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0x157c
    push ax
    db 0xe8, 0xaf, 0x90 ; call 0xb53b
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov si, cx
    mov bx, word [bp + 0x8]
    mov word [bx + si], ax
    inc word [bp - 0x0004]
@..local.l64:
    inc word [bp - 0x0002]
@..local.l65:
    mov ax, word [bp + 0x6]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x3a, 0x00 ; mov ax, word [bx + 0x3a]
    cmp ax, word [bp - 0x0002]
    jge short @..api_idx_0004_4.l15
    mov ax, 0x95f4
    push ax
    mov ax, 0x159e
    push ax
    db 0xe8, 0x7a, 0x90 ; call 0xb53b
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    ret
api_idx_0002_6:
    mov ax, 0xfffe
    db 0xe8, 0x3d, 0xcf ; call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [data_952e]
    push word [data_952c]
    db 0xe8, 0x64, 0xc4 ; call 0xe942
    add sp, byte 8
    mov word [bp - 0x0002], 0
    jmp near @..api_idx_0002_6.l2
@..api_idx_0002_6.l1:
    mov ax, 0
    push ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x30, 0x00 ; push word [bx + 0x30]
    db 0xe8, 0x28, 0xc3 ; call 0xe823
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x72
    push ax
    mov ax, 6
    push ax
    db 0xe8, 0xfa, 0xc2 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0xe38
    push ax
    db 0xe8, 0x2b, 0xc3 ; call 0xe84e
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x72
    push ax
    mov ax, 0x85
    push ax
    db 0xe8, 0xd2, 0xc2 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0xde, 0xc2 ; call 0xe823
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
    db 0xe8, 0x77, 0x8d ; call 0xb2e7
    add sp, byte 6
    inc word [bp - 0x0002]
@..api_idx_0002_6.l2:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x8]
    jge short @..api_idx_0002_6.l3
    jmp near @..api_idx_0002_6.l1
@..api_idx_0002_6.l3:
    ret
api_idx_002e:
    mov ax, 0xffd2
    db 0xe8, 0x83, 0xce ; call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0x16
    push ax
    db 0xe8, 0x90, 0xc2 ; call 0xe823
    add sp, byte 4
    mov ax, 0xae
    push ax
    mov ax, 6
    push ax
    db 0xe8, 0x68, 0xc2 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x95f4
    push ax
    db 0xe8, 0x9f, 0xc2 ; call 0xe84e
    add sp, byte 4
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0002], 0
@..api_idx_002e.l1:
    mov ax, 0xa
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x002e], 0
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x4]
    je short @..api_idx_002e.l4
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x69f8], byte 0
    jg short @..api_idx_002e.l2
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 2
    je short @..api_idx_002e.l4
@..api_idx_002e.l2:
    cmp word [bp - 0x0006], byte 0
    je short @..api_idx_002e.l3
    inc word [bp - 0x0004]
@..api_idx_002e.l3:
    mov ax, 0xa
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x002e]
    add ax, cx
    push ax
    push word [bx - 0x69f8]
    db 0xe8, 0x77, 0x8c ; call 0xb27d
    add sp, byte 4
    mov word [bp - 0x0006], 1
    jmp short @..api_idx_002e.l6
@..api_idx_002e.l4:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x4]
    jne short @..api_idx_002e.l6
    cmp word [bp - 0x0006], byte 0
    je short @..api_idx_002e.l5
    inc word [bp - 0x0004]
@..api_idx_002e.l5:
    mov cx, 0xa
    imul cx
    lea cx, word [bp - 0x002e]
    add ax, cx
    push ax
    push word [bp + 0x6]
    db 0xe8, 0x4b, 0x8c ; call 0xb27d
    add sp, byte 4
    mov word [bp - 0x0006], 1
@..api_idx_002e.l6:
    mov ax, 0xa
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x002e]
    add ax, cx
    push ax
    db 0xe8, 0x47, 0xd4 ; call 0xfa90
    pop cx
    add word [bp - 0x0004], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jge short @..api_idx_002e.l7
    jmp near @..api_idx_002e.l1
@..api_idx_002e.l7:
    mov ax, 0xae
    push ax
    mov ax, 0x1a
    sub ax, word [bp - 0x0004]
    mov cx, 6
    imul cx
    add ax, strict word 0xfffb
    push ax
    db 0xe8, 0x98, 0xc1 ; call 0xe809
    add sp, byte 4
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0002], 0
@..api_idx_002e.l8:
    mov ax, 0xa
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x002e]
    add ax, cx
    push ax
    db 0xe8, 0x03, 0xd4 ; call 0xfa90
    pop cx
    cmp ax, strict word 0
    jle short @..api_idx_002e.l10
    cmp word [bp - 0x0006], byte 0
    je short @..api_idx_002e.l9
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0x7f, 0xc1 ; call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2f
    push ax
    db 0xe8, 0x7e, 0xc1 ; call 0xe830
    add sp, byte 4
@..api_idx_002e.l9:
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x30, 0x00 ; push word [bx + 0x30]
    db 0xe8, 0x5c, 0xc1 ; call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x002e]
    add ax, cx
    push ax
    db 0xe8, 0x71, 0xc1 ; call 0xe84e
    add sp, byte 4
    mov word [bp - 0x0006], 1
@..api_idx_002e.l10:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short @..api_idx_002e.l8
    ret
api_idx_0032:
    mov ax, 0xffce
    db 0xe8, 0x14, 0xcd ; call 0xf40b
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
    db 0xe8, 0x06, 0xc2 ; call 0xe928
    add sp, byte 8
    mov word [bp - 0x002c], dx
    mov word [bp - 0x002e], ax
@..api_idx_0032.l1:
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
    db 0xe8, 0xcf, 0xc0 ; call 0xe823
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x000a]
    add ax, strict word 0x72
    push ax
    mov ax, 0x7f
    push ax
    db 0xe8, 0xa1, 0xc0 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 5
    push ax
    db 0xe8, 0xba, 0xc0 ; call 0xe830
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x000a]
    add ax, strict word 0x72
    push ax
    mov ax, 0x97
    push ax
    db 0xe8, 0x7f, 0xc0 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 6
    push ax
    db 0xe8, 0x98, 0xc0 ; call 0xe830
    add sp, byte 4
    mov word [bp - 0x0002], 0
    jmp near @..api_idx_0032.l7
@..api_idx_0032.l2:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x000a]
    jne short @..api_idx_0032.l3
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
    db 0xe8, 0xd1, 0x92 ; call 0xbaa6
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
    db 0xe8, 0xa4, 0x92 ; call 0xbaa6
    add sp, byte 0x0e
    jmp short @..api_idx_0032.l6
@..api_idx_0032.l3:
    mov ax, 0
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    cwd
    idiv word [bp + 0x8]
    mov ax, dx
    cmp ax, word [bp - 0x0002]
    jne short @..api_idx_0032.l4
    mov al, 0x20
    jmp short @..api_idx_0032.l5
@..api_idx_0032.l4:
    mov al, 0
@..api_idx_0032.l5:
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
    db 0xe8, 0x62, 0x92 ; call 0xbaa6
    add sp, byte 0x0e
@..api_idx_0032.l6:
    inc word [bp - 0x0002]
@..api_idx_0032.l7:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x8]
    jge short @..api_idx_0032.l8
    jmp near @..api_idx_0032.l2
@..api_idx_0032.l8:
    mov ax, 0
    push ax
    push word [bp - 0x002c]
    push word [bp - 0x002e]
    db 0xe8, 0xed, 0xc0 ; call 0xe94f
    add sp, byte 6
    mov ax, word [bp - 0x000c]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
@..api_idx_0032.l9:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x6]
    je short @..api_idx_0032.l10
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x69f8]
    add word [bp - 0x0004], ax
@..api_idx_0032.l10:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short @..api_idx_0032.l9
    mov ax, 1
    cmp word [bp - 0x0004], byte 0
    jle short @..api_idx_0032.l11
    mov ax, 0
@..api_idx_0032.l11:
    mov bx, word [bp + 0xc]
    mov word [bx + 0x8], ax
    mov word [bp - 0x000e], 0
    mov word [bp - 0x0002], 0
@..api_idx_0032.l12:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0xc]
    cmp word [bx + si], byte 0
    jne short @..api_idx_0032.l13
    jmp near @..local.l68
@..api_idx_0032.l13:
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
    db 0xe8, 0x02, 0x94 ; call 0xbce3
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    mov ax, 1
    mov cx, word [bp - 0x0002]
    cmp cx, word [bp + 0x6]
    jne short @..local.l66
    mov ax, 0x1a
@..local.l66:
    push ax
    db 0xe8, 0x29, 0xbf ; call 0xe823
    add sp, byte 4
    mov ax, 0xbe
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0x9610
    push ax
    db 0xe8, 0x82, 0xd1 ; call 0xfa90
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
    db 0xe8, 0xe0, 0xbe ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0x9610
    push ax
    db 0xe8, 0x11, 0xbf ; call 0xe84e
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
    db 0xe8, 0x44, 0x91 ; call 0xbaa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x000e]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x0026], ax
    cmp ax, word [bp + 0x6]
    jne short @..local.l67
    mov ax, word [bp - 0x000e]
    mov word [bp - 0x0032], ax
    cmp word [data_0e32], byte 0
    jne short @..local.l67
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
@..local.l67:
    inc word [bp - 0x000e]
@..local.l68:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jg short @..local.l69
    jmp near @..api_idx_0032.l12
@..local.l69:
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
    db 0xe8, 0xdc, 0x90 ; call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0xc6
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0xfa, 0xbe ; call 0xe8da
    add sp, byte 8
    cmp word [data_0e32], byte 0
    je short @..local.l71
@..local.l70:
    mov ax, 0x59fe
    push ax
    db 0xe8, 0x1c, 0x8f ; call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x0008], ax
    cmp word [data_5b3e], byte 0
    je short @..local.l70
    jmp near @..local.l83
@..local.l71:
    mov word [bp - 0x0008], 0xffff
    mov ax, word [bp - 0x0032]
    mov word [bp - 0x0002], ax
@..local.l72:
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
    db 0xe8, 0x94, 0xbe ; call 0xe8da
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
@..local.l73:
    mov ax, 1
    push ax
    db 0xe8, 0xe4, 0xbf ; call 0xea50
    pop cx
    test ax, ax
    jne short @..local.l74
    jmp short @..local.l73
@..local.l74:
    mov ax, 1
    push ax
    db 0xe8, 0xb8, 0xc0 ; call 0xeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x0030], ax
    jmp short @..local.l81
@..local.l75:
    mov ax, word [bp - 0x0002]
    add ax, word [bp - 0x000e]
    dec ax
    cwd
    idiv word [bp - 0x000e]
    mov word [bp - 0x0002], dx
    jmp short @..local.l82
@..local.l76:
    mov ax, word [bp - 0x0002]
    inc ax
    cwd
    idiv word [bp - 0x000e]
    mov word [bp - 0x0002], dx
    jmp short @..local.l82
@..local.l77:
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x0002]
    inc ax
    mov word [bp - 0x0008], ax
    jmp short @..local.l82
@..local.l78:
    mov ax, word [bp - 0x000a]
    mov word [bp - 0x0008], ax
    jmp short @..local.l82
@..local.l79:
    mov ax, word [bp + 0x8]
    mov word [bp - 0x0008], ax
    jmp short @..local.l82
@..local.l80:
    mov ax, word [bp - 0x000a]
    inc ax
    cwd
    idiv word [bp + 0x8]
    mov word [bp - 0x0008], dx
    jmp short @..local.l82
@..local.l81:
    cmp ax, strict word 8
    je short @..local.l75
    cmp ax, strict word 0xa
    je short @..local.l76
    cmp ax, strict word 0xd
    je short @..local.l77
    cmp ax, strict word 0x20
    je short @..local.l80
    cmp ax, strict word 0x2b
    je short @..local.l79
    cmp ax, strict word 0x2d
    je short @..local.l78
    cmp ax, strict word 0x3d
    je short @..local.l79
@..local.l82:
    cmp word [bp - 0x0008], byte 0xff
    jne short @..local.l83
    jmp near @..local.l72
@..local.l83:
    mov ax, word [bp - 0x0008]
    cmp ax, word [bp + 0x8]
    jge short @..local.l84
    cmp ax, word [bp - 0x000a]
    je short @..local.l84
    mov word [bp - 0x000a], ax
    jmp near @..local.l91
@..local.l84:
    mov ax, word [bp - 0x0008]
    cmp ax, word [bp - 0x000a]
    jne short @..local.l87
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
    jle short @..local.l85
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, word [bp + 0xa]
    mov cx, word [bx + si]
    add ax, cx
    mov bx, ax
    dec byte [bx + 0x5d6c]
    inc word [bp - 0x000c]
    jmp short @..local.l86
@..local.l85:
    mov ax, 0
    push ax
    db 0xe8, 0x8a, 0x8c ; call 0xb7e0
    pop cx
@..local.l86:
    jmp short @..local.l91
@..local.l87:
    mov ax, word [bp - 0x0008]
    cmp ax, word [bp + 0x8]
    jne short @..local.l90
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
    jae short @..local.l88
    cmp word [bp - 0x000c], byte 0
    jle short @..local.l88
    inc byte [bx + 0x5d6c]
    dec word [bp - 0x000c]
    jmp short @..local.l89
@..local.l88:
    mov ax, 0
    push ax
    db 0xe8, 0x4c, 0x8c ; call 0xb7e0
    pop cx
@..local.l89:
    jmp short @..local.l91
@..local.l90:
    mov ax, word [bp - 0x0008]
    sub ax, word [bp + 0x8]
    dec ax
    mov word [bp - 0x0028], ax
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0026]
    mov word [bp - 0x002a], ax
@..local.l91:
    cmp word [bp - 0x0028], byte 0xff
    jne short @..local.l92
    jmp near @..api_idx_0032.l1
@..local.l92:
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
    db 0xe8, 0x81, 0x92 ; call 0xbe5f
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
    db 0xe8, 0x61, 0x92 ; call 0xbe5f
    add sp, byte 0x0a
    mov ax, 1
    push ax
    push word [bp - 0x002c]
    push word [bp - 0x002e]
    db 0xe8, 0x41, 0xbd ; call 0xe94f
    add sp, byte 6
    mov ax, word [bp - 0x002a]
    ret
api_idx_0088:
    mov ax, 0xff78
    db 0xe8, 0xf0, 0xc7 ; call 0xf40b
    mov word [bp - 0x0002], 0
@..api_idx_0088.l1:
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
    jl short @..api_idx_0088.l1
    mov word [bp - 0x0002], 0
@..api_idx_0088.l2:
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0x9610
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0x258
    push ax
    db 0xe8, 0xdb, 0x88 ; call 0xb53b
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jle short @..api_idx_0088.l2
    lea ax, word [bp - 0x0088]
    push ax
    push word [bp + 0x6]
    db 0xe8, 0xc2, 0x88 ; call 0xb53b
    add sp, byte 4
    mov ax, 1
    push ax
    lea ax, word [bp - 0x0088]
    push ax
    call api_idx_0004_2
    add sp, byte 4
    mov word [bp - 0x0006], 0
@..api_idx_0088.l3:
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
@..api_idx_0088.l4:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0038], 0
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x38, 0x00 ; mov ax, word [bx + 0x38]
    mov word [bp - 0x0002], ax
    jmp short @..api_idx_0088.l8
@..api_idx_0088.l5:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6a50], byte 0
    jne short @..api_idx_0088.l6
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short @..api_idx_0088.l7
@..api_idx_0088.l6:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0038], 1
@..api_idx_0088.l7:
    inc word [bp - 0x0002]
@..api_idx_0088.l8:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x3a, 0x00 ; mov ax, word [bx + 0x3a]
    cmp ax, word [bp - 0x0002]
    jge short @..api_idx_0088.l5
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 4
    jl short @..api_idx_0088.l4
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
    je short @..api_idx_0088.l9
    jmp near @..api_idx_0088.l3
@..api_idx_0088.l9:
    mov ax, 0xc6
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0x7b, 0xbb ; call 0xe8da
    add sp, byte 8
    ret
api_idx_0004_5:
    mov ax, 0xfffc
    db 0xe8, 0xa2, 0xc6 ; call 0xf40b
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
@..api_idx_0004_5.l1:
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x620]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jne short @..api_idx_0004_5.l2
    push word [bp - 0x0002]
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    call 0xec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0004_5.l2
    mov ax, 0x14
    imul word [bp - 0x0004]
    add ax, 0xe38
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xfa0
    push ax
    db 0xe8, 0x8a, 0x87 ; call 0xb53b
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x68e4], ax
    inc word [bp - 0x0004]
@..api_idx_0004_5.l2:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x66
    jl short @..api_idx_0004_5.l1
    mov ax, word [bp - 0x0004]
    ret
api_idx_000a_2:
    mov ax, 0xfff6
    db 0xe8, 0x31, 0xc6 ; call 0xf40b
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
    db 0xe8, 0xc3, 0xc1 ; call 0xefd1
    add sp, byte 0x16
    ret
math_loc_2e12:
    mov ax, 0
    db 0xe8, 0xf3, 0xc5 ; call 0xf40b
    push word [bp + 0x6]
    mov ax, 0xa
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    dec ax
    push ax
    db 0xe8, 0xe0, 0xb9 ; call 0xe809
    add sp, byte 4
    mov ax, 7
    push ax
    mov ax, 0
    cmp word [bp + 0xa], byte 0
    je short @..math_loc_2e12.l1
    mov ax, 1
@..math_loc_2e12.l1:
    add ax, strict word 0x10
    sub ah, ah
    push ax
    db 0xe8, 0xeb, 0xb9 ; call 0xe830
    add sp, byte 4
    push word [bp + 0x6]
    mov ax, 0xa
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    push ax
    db 0xe8, 0xb1, 0xb9 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    db 0xe8, 0xc0, 0xb9 ; call 0xe823
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, word [bp + 0x8]
    inc ax
    sub ah, ah
    push ax
    db 0xe8, 0xbc, 0xb9 ; call 0xe830
    add sp, byte 4
    cmp word [bp + 0x8], byte 0
    jne short @..math_loc_2e12.l2
    cmp word [bp + 0xa], byte 0
    jne short @..math_loc_2e12.l2
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
    db 0xe8, 0x67, 0xba ; call 0xe901
    add sp, byte 0x0a
@..math_loc_2e12.l2:
    ret
loc_2e9e:
    mov ax, 0
    db 0xe8, 0x67, 0xc5 ; call 0xf40b
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
    db 0xff, 0xb7, 0x08, 0x00 ; push word [bx + 0x8]
    mov ax, word [bp + 0x6]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x14
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    db 0xe8, 0x1f, 0xba ; call 0xe901
    add sp, byte 0x0a
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    db 0xe8, 0x16, 0xb9 ; call 0xe809
    add sp, byte 4
    cmp word [bp + 0xa], byte 0
    jle short @..local.l93
    mov ax, word [bp + 0xa]
    cmp ax, word [bp + 0xc]
    jg short @..local.l93
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0x14, 0xb9 ; call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    push word [bp + 0xa]
    db 0xe8, 0xc7, 0x83 ; call 0xb2e7
    add sp, byte 6
    jmp short @..local.l94
@..local.l93:
    mov ax, 0
    push ax
    push ax
    db 0xe8, 0xf6, 0xb8 ; call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x92d2
    push ax
    db 0xe8, 0x13, 0xb9 ; call 0xe84e
    add sp, byte 4
@..local.l94:
    ret
api_idx_000c_2:
    mov ax, 0xfff4
    db 0xe8, 0xc6, 0xc4 ; call 0xf40b
    mov word [bp - 0x0002], 0
@..api_idx_000c_2.l1:
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
    db 0xe8, 0x17, 0x83 ; call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    db 0xe8, 0xa6, 0xb8 ; call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx + 0x18e]
    lea ax, word [bp - 0x000c]
    push ax
    db 0xe8, 0xfc, 0xca ; call 0xfa90
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
    db 0xe8, 0x51, 0xb8 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x000c]
    push ax
    db 0xe8, 0x88, 0xb8 ; call 0xe84e
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jge short @..api_idx_000c_2.l2
    jmp near @..api_idx_000c_2.l1
@..api_idx_000c_2.l2:
    ret
loc_2fd8:
    mov ax, 0
    db 0xe8, 0x2d, 0xc4 ; call 0xf40b
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
    mov ax, word [data_976c]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [data_9092]
    mov dx, word [data_9094]
    cmp bx, dx
    jg short @..local.l95
    jne short @..local.l96
    cmp cx, ax
    jbe short @..local.l96
@..local.l95:
    jmp short @..local.l97
@..local.l96:
    mov ax, word [data_908e]
    mov dx, word [data_9090]
    mov word [data_908c], dx
    mov word [data_908a], ax
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
    db 0xe8, 0x75, 0xb8 ; call 0xe8da
    add sp, byte 8
@..local.l97:
    ret
api_idx_0050:
    mov ax, 0xffb0
    db 0xe8, 0x9c, 0xc3 ; call 0xf40b
    mov word [bp - 0x0002], 0
@..api_idx_0050.l1:
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
    jl short @..api_idx_0050.l1
    mov word [data_904e], 0xffff
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
    db 0xe8, 0xa8, 0x91 ; call 0xc283
    add sp, byte 0x0a
    mov word [bp - 0x003a], ax
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    db 0xe8, 0xaa, 0x8b ; call 0xbc9a
    add sp, byte 8
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    mov ax, 0x95
    push ax
    db 0xe8, 0x97, 0x8b ; call 0xbc9a
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
    db 0xe8, 0x0f, 0x84 ; call 0xb53b
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
    db 0xe8, 0x72, 0x8f ; call 0xc0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0038]
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    db 0xe8, 0xdd, 0x83 ; call 0xb53b
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
    db 0xe8, 0x42, 0x8f ; call 0xc0c1
    add sp, byte 0x0c
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x48
    push ax
    db 0xe8, 0x76, 0xb6 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xcd
    push ax
    db 0xe8, 0x82, 0xb6 ; call 0xe823
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, 0xa
    push ax
    db 0xe8, 0x81, 0xb6 ; call 0xe830
    add sp, byte 4
    mov word [bp - 0x003c], 0xffff
    mov word [bp - 0x003e], 0
    mov word [bp - 0x0040], 0
    mov word [bp - 0x0002], 0
@..api_idx_0050.l2:
    mov ax, 0
    mov cx, word [bp - 0x0002]
    cmp cx, word [bp - 0x003e]
    jne short @..api_idx_0050.l3
    mov ax, 1
@..api_idx_0050.l3:
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
    jl short @..api_idx_0050.l2
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
    jge short @..api_idx_0050.l4
    mov ax, word [bp - 0x0044]
@..api_idx_0050.l4:
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
    db 0xe8, 0x39, 0x8d ; call 0xbf97
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
    db 0xe8, 0x56, 0x8d ; call 0xbfd8
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
    db 0xe8, 0xf3, 0x87 ; call 0xbaa6
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
    db 0xe8, 0xc5, 0x87 ; call 0xbaa6
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
    db 0xe8, 0x97, 0x87 ; call 0xbaa6
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
    db 0xe8, 0x69, 0x87 ; call 0xbaa6
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
    db 0xe8, 0x3b, 0x87 ; call 0xbaa6
    add sp, byte 0x0e
    mov word [bp - 0x0002], 0
@..local.l98:
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
    db 0xe8, 0xf5, 0x86 ; call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short @..local.l98
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
    db 0xe8, 0xc8, 0x86 ; call 0xbaa6
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
    db 0xe8, 0xa6, 0x86 ; call 0xbaa6
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
    db 0xe8, 0x84, 0x86 ; call 0xbaa6
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
    db 0xe8, 0x62, 0x86 ; call 0xbaa6
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
    db 0xe8, 0x40, 0x86 ; call 0xbaa6
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
    db 0xe8, 0x1e, 0x86 ; call 0xbaa6
    add sp, byte 0x0e
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short @..local.l99
    mov ax, word [bp - 0x0044]
@..local.l99:
    mov word [bp - 0x0020], ax
    mov word [bp - 0x0002], 0
@..local.l100:
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
    db 0xe8, 0xd0, 0x85 ; call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short @..local.l100
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
    db 0xe8, 0xaf, 0x85 ; call 0xbaa6
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
    db 0xe8, 0xc9, 0xb3 ; call 0xe8da
    add sp, byte 8
    mov word [data_976c], 7
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    mov word [bp - 0x001c], 1
@..local.l101:
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call loc_2fd8
    add sp, byte 4
    mov ax, 0x59fe
    push ax
    db 0xe8, 0xc9, 0x83 ; call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x001a], ax
    cmp word [data_59fc], byte 0
    je short @..local.l105
    mov ax, word [bp - 0x0022]
    cmp ax, word [bp - 0x0018]
    jl short @..local.l102
    inc word [bp - 0x0022]
@..local.l102:
    mov ax, word [bp - 0x0022]
    cmp ax, strict word 0xffff
    je short @..local.l103
    cmp ax, word [bp - 0x0018]
    jl short @..local.l103
    mov ax, word [bp - 0x0018]
    add ax, word [bp - 0x0020]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp - 0x0022]
    cmp cx, ax
    jge short @..local.l104
@..local.l103:
    mov ax, word [bp - 0x0018]
    mov word [bp - 0x0022], ax
@..local.l104:
    mov word [data_5b3e], 1
    mov ax, word [bp - 0x0022]
    sub ax, word [bp - 0x0018]
    add ax, strict word 0x12
    mov word [bp - 0x001a], ax
@..local.l105:
    cmp word [data_5b3e], byte 1
    je short @..local.l106
    jmp near @..local.l130
@..local.l106:
    mov ax, word [bp - 0x001a]
    jmp near @..local.l128

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

@..local.l107:
    cmp word [bp - 0x001a], byte 5
    jge short @..local.l108
    jmp near @..local.l116
@..local.l108:
    cmp word [bp - 0x001a], byte 0x0b
    jle short @..local.l109
    jmp near @..local.l116
@..local.l109:
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
    jge short @..local.l110
    jmp near @..local.l114
@..local.l110:
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
    db 0xe8, 0x44, 0x7e ; call 0xb7c2
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
    jne short @..local.l111
    mov ax, 0x3e7
    jmp short @..local.l113
@..local.l111:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short @..local.l112
    jmp short @..local.l113
@..local.l112:
    mov ax, word [bp - 0x0002]
@..local.l113:
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
    jmp short @..local.l115
@..local.l114:
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
@..local.l115:
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
    db 0xe8, 0xab, 0xae ; call 0xe8da
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
    db 0xe8, 0x89, 0xae ; call 0xe8da
    add sp, byte 8
    jmp near @..local.l127
@..local.l116:
    cmp word [bp - 0x001a], byte 0x0c
    jge short @..local.l117
    jmp near @..local.l121
@..local.l117:
    cmp word [bp - 0x001a], byte 0x11
    jle short @..local.l118
    jmp near @..local.l121
@..local.l118:
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
    jge short @..local.l119
    mov ax, word [bp - 0x0044]
@..local.l119:
    mov word [bp - 0x0024], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short @..local.l120
    mov ax, word [bp - 0x0044]
@..local.l120:
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
    db 0xe8, 0xc9, 0x84 ; call 0xbf97
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
    db 0xe8, 0xe6, 0x84 ; call 0xbfd8
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
    db 0xe8, 0x83, 0x7f ; call 0xbaa6
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
    db 0xe8, 0x79, 0xad ; call 0xe8da
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
    db 0xe8, 0x57, 0xad ; call 0xe8da
    add sp, byte 8
    jmp near @..local.l127
@..local.l121:
    cmp word [bp - 0x001a], byte 0x12
    jge short @..local.l122
    jmp near @..local.l127
@..local.l122:
    mov ax, word [bp - 0x0020]
    add ax, strict word 0x12
    cmp ax, word [bp - 0x001a]
    jg short @..local.l123
    jmp near @..local.l127
@..local.l123:
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
    db 0xe8, 0xbe, 0x83 ; call 0xbf97
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
    db 0xe8, 0xba, 0x7b ; call 0xb7c2
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
    jne short @..local.l124
    mov ax, 0x3e7
    jmp short @..local.l126
@..local.l124:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short @..local.l125
    jmp short @..local.l126
@..local.l125:
    mov ax, word [bp - 0x0002]
@..local.l126:
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
    db 0xe8, 0x3f, 0xac ; call 0xe8da
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
    db 0xe8, 0x1d, 0xac ; call 0xe8da
    add sp, byte 8
@..local.l127:
    jmp short @..local.l130
    jmp near 0x4d4a
    xchg word [bx + si], dx
    xchg word [bx - 0x0078], ax
    hlt
    db 0x88
@..local.l128:
    cmp ax, strict word 5
    jae short @..local.l129
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x72f7]
@..local.l129:
    jmp near @..local.l107
@..local.l130:
    cmp word [bp - 0x001c], byte 0
    je short @..local.l131
    jmp near @..local.l101
@..local.l131:
    mov ax, 1
    push ax
    push word [bp - 0x003a]
    db 0xe8, 0x6a, 0x87 ; call 0xc459
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
    db 0xe8, 0xd1, 0xab ; call 0xe8da
    add sp, byte 8
    mov word [bp - 0x0002], 0
@..local.l132:
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
    jl short @..local.l132
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    mov ax, word [bp - 0x003e]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x003c]
    add ax, 0x100
    mov word [data_904e], ax
    mov ax, word [data_9050]
    ret
api_idx_006e:
    mov ax, 0xff92
    db 0xe8, 0xac, 0xb6 ; call 0xf40b
    mov ax, word [bp + 0x6]
    jmp short @..api_idx_006e.l5
@..api_idx_006e.l1:
    mov word [bp - 0x000c], 8
    mov word [bp - 0x000e], 0x20
    jmp short @..api_idx_006e.l6
@..api_idx_006e.l2:
    mov word [bp - 0x000c], 4
    mov word [bp - 0x000e], 0x1e
    jmp short @..api_idx_006e.l6
@..api_idx_006e.l3:
    mov word [bp - 0x000c], 2
    mov word [bp - 0x000e], 0x1f
    jmp short @..api_idx_006e.l6
@..api_idx_006e.l4:
    mov word [bp - 0x000c], 1
    mov word [bp - 0x000e], 0x1d
    jmp short @..api_idx_006e.l6
@..api_idx_006e.l5:
    cmp ax, strict word 0
    je short @..api_idx_006e.l1
    cmp ax, strict word 1
    je short @..api_idx_006e.l2
    cmp ax, strict word 2
    je short @..api_idx_006e.l4
    cmp ax, strict word 3
    je short @..api_idx_006e.l3
@..api_idx_006e.l6:
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
@..api_idx_006e.l7:
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x625]
    sub ah, ah
    test word [bp - 0x000c], ax
    je short @..api_idx_006e.l8
    mov al, byte [bx + 0x621]
    sub ah, ah
    cmp ax, word [bp - 0x000a]
    jg short @..api_idx_006e.l8
    push word [bp - 0x0002]
    lea ax, word [bp - 0x001e]
    push ax
    db 0xe8, 0x65, 0xae ; call 0xec74
    add sp, byte 4
    test ax, ax
    jne short @..api_idx_006e.l8
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
@..api_idx_006e.l8:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x66
    jl short @..api_idx_006e.l7
    cmp word [bp - 0x0004], byte 0
    jne short @..local.l133
    mov ax, 0x10
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    lea ax, word [bp - 0x001e]
    push ax
    db 0xe8, 0x86, 0xc0 ; call 0xfedc
    add sp, byte 6
    ret
@..local.l133:
    lea ax, word [bp - 0x006e]
    push ax
    mov ax, 0x2bf
    push ax
    db 0xe8, 0xd6, 0x76 ; call 0xb53b
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
    db 0xe8, 0x39, 0xc0 ; call 0xfedc
    add sp, byte 6
    cmp word [bp - 0x0004], byte 0
    je short @..local.l134
    jmp near @..local.l136
@..local.l134:
    mov ax, word [data_904e]
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
    db 0xe8, 0x71, 0xad ; call 0xec41
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
    jge short @..local.l135
    mov ax, 0x248
    imul word [bp + 0x4]
    mov dx, word [bp - 0x0004]
    shl dx, 1
    shl dx, 1
    add ax, dx
    mov bx, ax
    sub cx, word [bx + 0x5c1e]
    mov word [bp - 0x0002], cx
@..local.l135:
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
@..local.l136:
    ret
math_loc_3f87:
    mov ax, 0
    db 0xe8, 0x7e, 0xb4 ; call 0xf40b
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
    mov ax, word [data_976c]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [data_9092]
    mov dx, word [data_9094]
    cmp bx, dx
    jg short @..math_loc_3f87.l1
    jne short @..math_loc_3f87.l2
    cmp cx, ax
    jbe short @..math_loc_3f87.l2
@..math_loc_3f87.l1:
    jmp short @..math_loc_3f87.l3
@..math_loc_3f87.l2:
    mov ax, word [data_908e]
    mov dx, word [data_9090]
    mov word [data_908c], dx
    mov word [data_908a], ax
    mov ax, word [data_95ae]
    inc ax
    mov cx, 3
    cwd
    idiv cx
    mov word [data_95ae], dx
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
    db 0xe8, 0xd6, 0xa8 ; call 0xe8da
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
    db 0xe8, 0xb1, 0xa8 ; call 0xe8da
    add sp, byte 8
@..math_loc_3f87.l3:
    ret
api_idx_0002_7:
    mov ax, 0xfffe
    db 0xe8, 0xd8, 0xb3 ; call 0xf40b
    mov word [bp - 0x0002], 0
@..api_idx_0002_7.l1:
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
    jge short @..api_idx_0002_7.l2
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
@..api_idx_0002_7.l2:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short @..api_idx_0002_7.l1
    ret
api_idx_0006:
    mov ax, 0xfffa
    db 0xe8, 0x84, 0xb3 ; call 0xf40b
    mov ax, word [data_9594]
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0002], 0
@..api_idx_0006.l1:
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d64]
    sub ah, ah
    mov word [bp - 0x0004], ax
@..api_idx_0006.l2:
    mov bx, word [bp + 0x8]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si]
    cbw
    add ax, strict word 0xffbf
    cmp ax, word [bp - 0x0004]
    jle short @..api_idx_0006.l4
    inc word [bp - 0x0004]
    dec word [bp - 0x0006]
    cmp word [bp + 0xa], byte 1
    jne short @..api_idx_0006.l3
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, si
    mov bx, ax
    inc byte [bx + 0x5d64]
    dec word [data_9594]
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call api_idx_0002_5
    add sp, byte 4
@..api_idx_0006.l3:
    jmp short @..api_idx_0006.l2
@..api_idx_0006.l4:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short @..api_idx_0006.l1
    mov ax, 0
    cmp word [bp - 0x0006], byte 0
    jl short @..api_idx_0006.l5
    mov ax, 1
@..api_idx_0006.l5:
    mov cx, word [bp + 0x6]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6892], ax
    ret
loc_4107:
    mov ax, 0
    db 0xe8, 0xfe, 0xb2 ; call 0xf40b
    mov ax, word [bp + 0x6]
    jmp near @..local.l137

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

@..local.l137:
    cmp ax, strict word 0xe
    jae short @..local.l138
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6d52]
@..local.l138:
    ret
api_idx_0002_8:
    mov ax, 0xfffe
    db 0xe8, 0x74, 0xb1 ; call 0xf40b
    mov word [bp - 0x0002], 0
@..api_idx_0002_8.l1:
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call loc_4107
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xd
    jle short @..api_idx_0002_8.l1
    ret
loc_42b8:
    mov ax, 0
    db 0xe8, 0x4d, 0xb1 ; call 0xf40b
    mov ax, word [bp + 0x6]
    jmp near @..local.l139

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
    jmp short @..local.l140

    db 0xb8, 0xab, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xd3, 0xfc, 0x83, 0xc4, 0x04, 0xeb, 0x32, 0xb8
    db 0xb4, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xc4, 0xfc, 0x83, 0xc4, 0x04, 0xeb, 0x23, 0x0b, 0x93
    db 0x1b, 0x93, 0x2b, 0x93, 0x3b, 0x93, 0x4b, 0x93, 0x5b, 0x93, 0x6a, 0x93, 0x79, 0x93, 0x88, 0x93
    db 0x97, 0x93, 0xa6, 0x93

@..local.l139:
    cmp ax, strict word 0xb
    jae short @..local.l140
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6c4b]
@..local.l140:
    ret
math_loc_4392:
    mov ax, 0
    db 0xe8, 0x73, 0xb0 ; call 0xf40b
    cmp word [bp + 0x6], byte 1
    jne short @..math_loc_4392.l1
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
@..math_loc_4392.l1:
    ret
api_idx_007a:
    mov ax, 0xff86
    db 0xe8, 0x4a, 0xb0 ; call 0xf40b
    mov word [bp - 0x0002], 0
@..api_idx_007a.l1:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x007a], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jle short @..api_idx_007a.l1
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
    db 0xe8, 0xec, 0xa3 ; call 0xe823
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0x66
    push ax
    db 0xe8, 0xc4, 0xa3 ; call 0xe809
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
    db 0xe8, 0xda, 0x70 ; call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    db 0xe8, 0xdf, 0xa3 ; call 0xe84e
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
    db 0xe8, 0x6d, 0xaf ; call 0xf40b
    mov word [bp - 0x0002], 0
@..api_idx_007a_2.l1:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x007a], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 1
    jle short @..api_idx_007a_2.l1
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
    db 0xe8, 0x0f, 0xa3 ; call 0xe823
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0x5a
    push ax
    db 0xe8, 0xe7, 0xa2 ; call 0xe809
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
    db 0xe8, 0xfd, 0x6f ; call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    mov al, byte [bp - 0x0052]
    sub ah, ah
    push ax
    db 0xe8, 0xe2, 0xa2 ; call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2d
    push ax
    db 0xe8, 0xd4, 0xa2 ; call 0xe830
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
    db 0xe8, 0x80, 0xae ; call 0xf40b
    push word [bp + 0x4]
    call api_idx_0002_8
    pop cx
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
@..api_idx_007c.l1:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6892], byte 1
    jne short @..api_idx_007c.l2
    mov ax, 1
    jmp short @..api_idx_007c.l3
@..api_idx_007c.l2:
    mov ax, 0
@..api_idx_007c.l3:
    add bx, bp
    mov word [bx - 0x007c], ax
    cmp word [bx - 0x007c], byte 0
    je short @..api_idx_007c.l4
    inc word [bp - 0x0004]
@..api_idx_007c.l4:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xd
    jle short @..api_idx_007c.l1
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
    db 0xe8, 0xf1, 0xa1 ; call 0xe823
    add sp, byte 4
    mov ax, 0xc
    push ax
    mov ax, 0x5a
    push ax
    db 0xe8, 0xc9, 0xa1 ; call 0xe809
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
    db 0xe8, 0xdf, 0x6e ; call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0xe4, 0xa1 ; call 0xe84e
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
    db 0xe8, 0x6e, 0xad ; call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0x10
    push ax
    lea ax, word [bp - 0x0018]
    push ax
    db 0xe8, 0x5a, 0xac ; call 0xf306
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
    db 0xe8, 0x3c, 0xa5 ; call 0xec17
@..api_idx_006c.l1:
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call api_idx_0002_5
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0x30, 0xa1 ; call 0xe823
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x0006]
    add ax, strict word 0x23
    push ax
    mov ax, 0x85
    push ax
    db 0xe8, 0x02, 0xa1 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 5
    push ax
    db 0xe8, 0x1b, 0xa1 ; call 0xe830
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x0006]
    add ax, strict word 0x23
    push ax
    mov ax, 0x97
    push ax
    db 0xe8, 0xe0, 0xa0 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 6
    push ax
    db 0xe8, 0xf9, 0xa0 ; call 0xe830
    add sp, byte 4
    mov word [bp - 0x0002], 0
@..api_idx_006c.l2:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x0006]
    jne short @..api_idx_006c.l3
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
    db 0xe8, 0x35, 0x73 ; call 0xbaa6
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
    db 0xe8, 0x07, 0x73 ; call 0xbaa6
    add sp, byte 0x0e
    jmp short @..api_idx_006c.l6
@..api_idx_006c.l3:
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0006]
    inc ax
    mov cx, 7
    cwd
    idiv cx
    mov ax, dx
    cmp ax, word [bp - 0x0002]
    jne short @..api_idx_006c.l4
    mov al, 0x20
    jmp short @..api_idx_006c.l5
@..api_idx_006c.l4:
    mov al, 0
@..api_idx_006c.l5:
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
    db 0xe8, 0xc3, 0x72 ; call 0xbaa6
    add sp, byte 0x0e
@..api_idx_006c.l6:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jge short @..api_idx_006c.l7
    jmp near @..api_idx_006c.l2
@..api_idx_006c.l7:
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
    db 0xe8, 0x9f, 0x72 ; call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0x60
    push ax
    mov ax, 0xa8
    push ax
    mov ax, 0x23
    push ax
    mov ax, 0x66
    push ax
    db 0xe8, 0xbd, 0xa0 ; call 0xe8da
    add sp, byte 8
@..api_idx_006c.l8:
    mov ax, 0x59fe
    push ax
    db 0xe8, 0xe6, 0x70 ; call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x0004], ax
    cmp word [data_5b3e], byte 0
    je short @..api_idx_006c.l8
    cmp word [bp - 0x0004], byte 7
    jge short @..api_idx_006c.l9
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0006]
    je short @..api_idx_006c.l9
    mov word [bp - 0x0006], ax
    jmp near @..local.l142
@..api_idx_006c.l9:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0006]
    jne short @..api_idx_006c.l12
    mov ax, word [bp - 0x0006]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0018], byte 0
    jle short @..api_idx_006c.l10
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
    inc word [data_9594]
    jmp short @..api_idx_006c.l11
@..api_idx_006c.l10:
    mov ax, 0
    push ax
    db 0xe8, 0x5a, 0x6f ; call 0xb7e0
    pop cx
@..api_idx_006c.l11:
    jmp short @..local.l142
@..api_idx_006c.l12:
    cmp word [bp - 0x0004], byte 7
    jne short @..local.l142
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0006]
    mov bx, ax
    cmp byte [bx + 0x5d64], 0x12
    jae short @..local.l141
    cmp word [data_9594], byte 0
    jle short @..local.l141
    inc byte [bx + 0x5d64]
    mov ax, word [bp - 0x0006]
    shl ax, 1
    mov bx, ax
    add bx, bp
    inc word [bx - 0x0018]
    dec word [data_9594]
    jmp short @..local.l142
@..local.l141:
    mov ax, 0
    push ax
    db 0xe8, 0x1b, 0x6f ; call 0xb7e0
    pop cx
@..local.l142:
    cmp word [bp - 0x0004], byte 8
    je short @..local.l143
    jmp near @..api_idx_006c.l1
@..local.l143:
    cmp word [data_9594], byte 0
    je short @..local.l144
    jmp near @..api_idx_006c.l1
@..local.l144:
    mov word [data_9594], 0xffff
    mov ax, 1
    push ax
    push ax
    mov ax, 0x18
    push ax
    mov ax, 0x97
    push ax
    mov ax, 0x58
    push ax
    db 0xe8, 0x6c, 0x75 ; call 0xbe5f
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
    db 0xe8, 0x52, 0x75 ; call 0xbe5f
    add sp, byte 0x0a
    mov ax, 1
    push ax
    push word [bp - 0x006a]
    push word [bp - 0x006c]
    db 0xe8, 0x32, 0xa0 ; call 0xe94f
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    db 0xe8, 0xaa, 0x9f ; call 0xe8da
    add sp, byte 8
    ret
api_idx_0008_3:
    mov ax, 0xfff8
    db 0xe8, 0xd1, 0xaa ; call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [data_953e]
    push word [data_953c]
    db 0xe8, 0xf8, 0x9f ; call 0xe942
    add sp, byte 8
    mov ax, 0x53
    push ax
    mov ax, 0x97
    push ax
    mov ax, 0x4d
    push ax
    mov ax, 0x8b
    push ax
    db 0xe8, 0xc8, 0x9f ; call 0xe928
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
    db 0xe8, 0x7a, 0xa2 ; call 0xec17
@..api_idx_0008_3.l1:
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
    jne short @..api_idx_0008_3.l2
    inc byte [bx + 0x5d6b]
@..api_idx_0008_3.l2:
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    push word [bp - 0x0004]
    db 0xe8, 0x84, 0x9f ; call 0xe94f
    add sp, byte 6
    mov ax, 0x4d
    push ax
    mov ax, 0x8b
    push ax
    db 0xe8, 0x30, 0x9e ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0x3c, 0x9e ; call 0xe823
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
    db 0xe8, 0xe3, 0x68 ; call 0xb2e7
    add sp, byte 6
    mov ax, 0x53
    push ax
    mov ax, 0x97
    push ax
    mov ax, 0x4d
    push ax
    mov ax, 0x8b
    push ax
    db 0xe8, 0xc0, 0x9e ; call 0xe8da
    add sp, byte 8
    mov ax, 0x59fe
    push ax
    db 0xe8, 0xe9, 0x6e ; call 0xb90d
    pop cx
    cmp word [data_5b3e], byte 0
    jne short @..api_idx_0008_3.l3
    jmp near @..api_idx_0008_3.l1
@..api_idx_0008_3.l3:
    mov ax, 1
    push ax
    push ax
    mov ax, 0x10
    push ax
    mov ax, 0x97
    push ax
    mov ax, 0x70
    push ax
    db 0xe8, 0x1c, 0x74 ; call 0xbe5f
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
    db 0xe8, 0x02, 0x74 ; call 0xbe5f
    add sp, byte 0x0a
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0008]
    db 0xe8, 0xe2, 0x9e ; call 0xe94f
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    push word [bp - 0x0004]
    db 0xe8, 0xd2, 0x9e ; call 0xe94f
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
    db 0xe8, 0x3d, 0x9e ; call 0xe8da
    add sp, byte 8
    ret
math_loc_4aa1:
    mov ax, 0
    db 0xe8, 0x64, 0xa9 ; call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d6b]
    sub ah, ah
    sub ax, word [bp + 0x8]
    jge short @..math_loc_4aa1.l1
    neg ax
    mov cx, ax
    jmp short @..math_loc_4aa1.l2
@..math_loc_4aa1.l1:
    mov al, byte [bx + 0x5d6b]
    sub ah, ah
    mov cx, ax
    sub ax, word [bp + 0x8]
    mov cx, ax
@..math_loc_4aa1.l2:
    shl cx, 1
    shl cx, 1
    mov ax, 0x28
    sub ax, cx
    add bx, word [bp + 0x6]
    mov byte [bx + 0x5db2], al
    ret
api_idx_0002_9:
    mov ax, 0xfffe
    db 0xe8, 0x27, 0xa9 ; call 0xf40b
    mov word [bp - 0x0002], 0
@..api_idx_0002_9.l1:
    mov ax, 9
    push ax
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call math_loc_4aa1
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x60
    jl short @..api_idx_0002_9.l1
    ret
api_idx_004e:
    mov ax, 0xffb2
    db 0xe8, 0x00, 0xa9 ; call 0xf40b
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
@..api_idx_004e.l1:
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
    jle short @..api_idx_004e.l2
    inc word [bp - 0x0002]
    jmp short @..api_idx_004e.l1
@..api_idx_004e.l2:
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
    je short @..api_idx_004e.l3
    mov bx, word [bp - 0x004e]
    or byte [bx + 0x7], 4
@..api_idx_004e.l3:
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 4
    je short @..api_idx_004e.l4
    mov bx, word [bp - 0x004e]
    or byte [bx + 0x7], 8
@..api_idx_004e.l4:
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 0x10
    je short @..api_idx_004e.l5
    mov bx, word [bp - 0x004e]
    or byte [bx + 0x7], 0x10
@..api_idx_004e.l5:
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 0x20
    je short @..api_idx_004e.l6
    mov bx, word [bp - 0x004e]
    or byte [bx + 0x7], 0x20
@..api_idx_004e.l6:
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 2
    je short @..api_idx_004e.l7
    mov bx, word [bp - 0x004e]
    or byte [bx + 0x7], 0x40
@..api_idx_004e.l7:
    push word [bp + 0x4]
    call 0xc58f
    pop cx
    ret
math_loc_4c21:
    mov ax, 0
    db 0xe8, 0xe4, 0xa7 ; call 0xf40b
    cmp word [bp + 0x6], byte 0
    je short @..math_loc_4c21.l1
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_004e
    add sp, byte 4
@..math_loc_4c21.l1:
    cmp word [bp + 0x8], byte 0
    je short @..math_loc_4c21.l2
    push word [bp + 0x8]
    push word [bp + 0x4]
    call api_idx_004e
    add sp, byte 4
@..math_loc_4c21.l2:
    cmp word [bp + 0xa], byte 0
    je short @..math_loc_4c21.l3
    push word [bp + 0xa]
    push word [bp + 0x4]
    call api_idx_004e
    add sp, byte 4
@..math_loc_4c21.l3:
    cmp word [bp + 0xc], byte 0
    je short @..math_loc_4c21.l4
    push word [bp + 0xc]
    push word [bp + 0x4]
    call api_idx_004e
    add sp, byte 4
@..math_loc_4c21.l4:
    cmp word [bp + 0xe], byte 0
    je short @..math_loc_4c21.l5
    push word [bp + 0xe]
    push word [bp + 0x4]
    call api_idx_004e
    add sp, byte 4
@..math_loc_4c21.l5:
    ret
math_loc_4c82:
    mov ax, 0
    db 0xe8, 0x83, 0xa7 ; call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2b], 5
    jne short @..local.l145
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
@..local.l145:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp near @..local.l146

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

@..local.l146:
    cmp ax, strict word 0xe
    jae short @..local.l147
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6136]
@..local.l147:
    ret
math_loc_4ead:
    mov ax, 0
    db 0xe8, 0x58, 0xa5 ; call 0xf40b
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
    db 0xe8, 0xe3, 0x68 ; call 0xb7c2
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
    db 0xe8, 0x05, 0xa5 ; call 0xf40b
    mov word [bp - 0x0002], 0
@..api_idx_0006_2.l1:
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
    jge short @..api_idx_0006_2.l2
    mov ax, cx
    jmp short @..api_idx_0006_2.l3
@..api_idx_0006_2.l2:
    mov ax, word [bx + 0x5c18]
@..api_idx_0006_2.l3:
    mov word [bp - 0x0006], ax
    mov ax, 0x10
    cmp word [bp - 0x0006], byte 0x10
    jg short @..api_idx_0006_2.l4
    mov ax, word [bp - 0x0006]
    dec ax
@..api_idx_0006_2.l4:
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
    jge short @..api_idx_0006_2.l5
    jmp near @..api_idx_0006_2.l1
@..api_idx_0006_2.l5:
    ret
api_idx_0002_10:
    mov ax, 0xfffe
    db 0xe8, 0x70, 0xa4 ; call 0xf40b
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
    jge short @..api_idx_0002_10.l1
    mov ax, cx
    jmp short @..api_idx_0002_10.l2
@..api_idx_0002_10.l1:
    mov ax, word [bx + 0x5c18]
@..api_idx_0002_10.l2:
    mov word [bp - 0x0002], ax
    push ax
    cmp ax, strict word 0x14
    pop ax
    jle short @..api_idx_0002_10.l3
    mov ax, 0x14
@..api_idx_0002_10.l3:
    mov word [bp - 0x0002], ax
    mov cx, 3
    cwd
    idiv cx
    inc ax
    push ax
    mov ax, 1
    push ax
    push word [bp + 0x6]
    db 0xe8, 0xe3, 0x67 ; call 0xb7c2
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
    db 0xe8, 0xa0, 0x67 ; call 0xb7c2
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
    db 0xe8, 0x5a, 0x67 ; call 0xb7c2
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
    db 0xe8, 0x7e, 0xa3 ; call 0xf40b
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
    jmp near @..api_idx_0004_6.l2
    mov ax, 0x93ea
    push ax
    mov ax, 0x93db
    push ax
    push word [bp + 0x4]
    call api_idx_0006_2
    add sp, byte 6
    jmp near @..api_idx_0004_6.l2
    mov ax, 0x9408
    push ax
    mov ax, 0x93f9
    push ax
    push word [bp + 0x4]
    call api_idx_0006_2
    add sp, byte 6
    jmp near @..api_idx_0004_6.l2
    mov ax, 0x9426
    push ax
    mov ax, 0x9417
    push ax
    push word [bp + 0x4]
    call api_idx_0006_2
    add sp, byte 6
    jmp near @..api_idx_0004_6.l2
    mov ax, 0x9444
    push ax
    mov ax, 0x9435
    push ax
    push word [bp + 0x4]
    call api_idx_0006_2
    add sp, byte 6
    jmp near @..api_idx_0004_6.l2
    mov ax, 0x9462
    push ax
    mov ax, 0x9453
    push ax
    push word [bp + 0x4]
    call api_idx_0006_2
    add sp, byte 6
    jmp short @..api_idx_0004_6.l2
    mov ax, 0x9480
    push ax
    mov ax, 0x9471
    push ax
    push word [bp + 0x4]
    call api_idx_0006_2
    add sp, byte 6
    jmp short @..api_idx_0004_6.l2
    mov ax, 0x949e
    push ax
    mov ax, 0x948f
    push ax
    push word [bp + 0x4]
    call api_idx_0006_2
    add sp, byte 6
    jmp short @..api_idx_0004_6.l2
    mov ax, 0x94bc
    push ax
    mov ax, 0x94ad
    push ax
    push word [bp + 0x4]
    call api_idx_0006_2
    add sp, byte 6
    jmp short @..api_idx_0004_6.l2
    mov ax, 0x94da
    push ax
    mov ax, 0x94cb
    push ax
    push word [bp + 0x4]
    call api_idx_0006_2
    add sp, byte 6
    jmp short @..api_idx_0004_6.l2
    in ax, 0xa0
    dec cx
    mov ax, word [data_a16f]
    xchg bp, ax
    mov ax, word [data_a0f9]
    dec cx
    mov ax, word [data_a195]
    pop sp
    mov ax, word [data_a0f9]
    outsw
    mov ax, word [data_a10d]
    and word [bx + di - 0x5e7e], sp
    xor ax, 0x3da1
    push cs
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x5e58]
@..api_idx_0004_6.l2:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2b]
    sub ah, ah
    jmp near @..local.l148
    mov ax, 0x14
    push ax
    mov ax, 0xb
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_4ead
    add sp, byte 8
    jmp near @..local.l149
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
    jmp near @..local.l149
    mov ax, 0x14
    push ax
    mov ax, 9
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_4ead
    add sp, byte 8
    jmp near @..local.l149
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

@..local.l148:
    cmp ax, strict word 0xb
    jae short @..local.l149
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x5c80]
@..local.l149:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d67], 0xf
    jbe short @..local.l150
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
@..local.l150:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d65], 0xf
    jbe short @..local.l151
    mov ax, 5
    push ax
    mov ax, 9
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_4ead
    add sp, byte 8
@..local.l151:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d69], 0xf
    jbe short @..local.l152
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
@..local.l152:
    mov word [bp - 0x0004], 0
@..local.l153:
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x5d8e]
    mov byte [bx + 0x5d9c], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0xe
    jl short @..local.l153
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp short @..local.l154

    db 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x04, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x56, 0xfb, 0x83, 0xc4, 0x0c, 0xeb, 0x61, 0xb8
    db 0x07, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xff, 0x76, 0x04
    db 0xe8, 0x3d, 0xfb, 0x83, 0xc4, 0x0c, 0xeb, 0x48, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x1e, 0xfb, 0x83, 0xc4, 0x0c, 0xeb, 0x29, 0x6c, 0xa4, 0x8b, 0xa4, 0xa4, 0xa4, 0xa4, 0xa4, 0x6c
    db 0xa4, 0x8b, 0xa4, 0xa4, 0xa4, 0x8b, 0xa4, 0x6c, 0xa4, 0x8b, 0xa4, 0x6c, 0xa4, 0x6c, 0xa4, 0x6c
    db 0xa4, 0x6c, 0xa4

@..local.l154:
    cmp ax, strict word 0xe
    jae short @..local.l155
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x5b3d]
@..local.l155:
    mov word [bp - 0x0002], 0
@..local.l156:
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call 0xc608
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 2
    jl short @..local.l156
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + 0x5daa], 0xa
    mov al, byte [bx + 0x5daa]
    cbw
    mov cx, 0
    cmp byte [bx + 0x5d69], 0xf
    jbe short @..local.l157
    mov cx, 1
@..local.l157:
    sub ax, cx
    mov byte [bx + 0x5daa], al
    cbw
    mov cx, 0
    cmp byte [bx + 0x5d69], 0x11
    jbe short @..local.l158
    mov cx, 1
@..local.l158:
    sub ax, cx
    mov byte [bx + 0x5daa], al
    mov al, byte [bx + 0x5daa]
    cbw
    mov cx, 0
    cmp byte [bx + 0x5e2b], 5
    jne short @..local.l159
    mov cx, 2
@..local.l159:
    sub ax, cx
    mov byte [bx + 0x5daa], al
    cmp byte [bx + 0x5e2d], 0xd
    je short @..local.l160
    cmp byte [bx + 0x5e2d], 0xc
    jne short @..local.l162
@..local.l160:
    mov ax, 0xa
    cmp word [bx + 0x5c18], byte 0x14
    jg short @..local.l161
    mov ax, word [bx + 0x5c18]
    mov cx, 2
    cwd
    idiv cx
@..local.l161:
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
@..local.l162:
    mov byte [bx + 0x5dab], 0
    mov byte [bx + 0x5dac], 0
    mov word [bp - 0x0002], 3
@..local.l163:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5daa]
    add bx, word [bp - 0x0002]
    mov byte [bx + 0x5daa], al
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short @..local.l163
    ret
api_idx_001c:
    mov ax, 0xffe4
    db 0xe8, 0x85, 0x9e ; call 0xf40b
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
@..api_idx_001c.l1:
    cmp word [bp - 0x0002], byte 2
    jne short @..api_idx_001c.l2
    jmp near @..api_idx_001c.l4
@..api_idx_001c.l2:
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
    jge short @..api_idx_001c.l3
    mov word [bx - 0x000c], 1
@..api_idx_001c.l3:
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
    db 0xe8, 0x57, 0x61 ; call 0xb7a9
    pop cx
    mov cx, ax
    mov ax, word [bp - 0x0004]
    add cx, ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x69f8], cx
@..api_idx_001c.l4:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jge short @..api_idx_001c.l5
    jmp near @..api_idx_001c.l1
@..api_idx_001c.l5:
    mov word [data_960c], 0
    mov ax, word [data_0040]
    mov word [bp - 0x0002], ax
    jmp short @..api_idx_001c.l8
@..api_idx_001c.l6:
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short @..api_idx_001c.l7
    mov ax, 2
    push ax
    db 0xe8, 0x0f, 0x61 ; call 0xb7a9
    pop cx
    add ax, word [data_960c]
    inc ax
    mov word [data_960c], ax
@..api_idx_001c.l7:
    inc word [bp - 0x0002]
@..api_idx_001c.l8:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_0042]
    jle short @..api_idx_001c.l6
    ret
api_idx_0002_11:
    mov ax, 0xfffe
    db 0xe8, 0x55, 0x9d ; call 0xf40b
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
    jge short @..api_idx_0002_11.l1
    mov word [bp - 0x0002], 0
@..api_idx_0002_11.l1:
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x69f8]
    cmp ax, word [bp - 0x0002]
    jge short @..api_idx_0002_11.l2
    mov word [bp - 0x0002], ax
@..api_idx_0002_11.l2:
    mov ax, word [bp - 0x0002]
    sub word [bx - 0x69f8], ax
    ret
math_loc_5706:
    mov ax, 0
    db 0xe8, 0xff, 0x9c ; call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp near @..local.l164

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

@..local.l164:
    cmp ax, strict word 0xe
    jae short @..local.l165
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x5559]
@..local.l165:
    ret
api_idx_000a_3:
    mov ax, 0xfff6
    db 0xe8, 0x7b, 0x99 ; call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + 0x5e34], 1
    mov byte [bx + 0x5e35], 0xa
    mov ax, 0x3e8
    push ax
    db 0xe8, 0x00, 0x5d ; call 0xb7a9
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
    jmp near @..local.l166
    mov ax, 5
    push ax
    db 0xe8, 0xc5, 0x5c ; call 0xb7a9
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
    jmp near @..local.l167
    mov ax, 3
    push ax
    db 0xe8, 0xa0, 0x5c ; call 0xb7a9
    pop cx
    inc ax
    inc ax
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call math_loc_5706
    pop cx
    jmp near @..local.l167
    mov ax, 4
    push ax
    db 0xe8, 0x89, 0x5c ; call 0xb7a9
    pop cx
    add ax, strict word 4
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call math_loc_5706
    pop cx
    jmp near @..local.l167
    mov ax, 4
    push ax
    db 0xe8, 0x71, 0x5c ; call 0xb7a9
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
    jmp near @..local.l167
    mov ax, 4
    push ax
    db 0xe8, 0x4d, 0x5c ; call 0xb7a9
    pop cx
    push ax
    mov ax, 4
    push ax
    db 0xe8, 0x44, 0x5c ; call 0xb7a9
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
    jmp near @..local.l167
    mov ax, 4
    push ax
    db 0xe8, 0x17, 0x5c ; call 0xb7a9
    pop cx
    inc ax
    inc ax
    inc ax
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call math_loc_5706
    pop cx
    jmp near @..local.l167
    mov ax, 4
    push ax
    db 0xe8, 0xff, 0x5b ; call 0xb7a9
    pop cx
    inc ax
    inc ax
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call math_loc_5706
    pop cx
    jmp near @..local.l167
    mov ax, 3
    push ax
    db 0xe8, 0xe8, 0x5b ; call 0xb7a9
    pop cx
    inc ax
    inc ax
    inc ax
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call math_loc_5706
    pop cx
    jmp near @..local.l167
    mov ax, 5
    push ax
    db 0xe8, 0xd0, 0x5b ; call 0xb7a9
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
    jmp near @..local.l167
    mov ax, 4
    push ax
    db 0xe8, 0xab, 0x5b ; call 0xb7a9
    pop cx
    inc ax
    inc ax
    inc ax
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call math_loc_5706
    pop cx
    jmp near @..local.l167
    mov ax, 7
    push ax
    db 0xe8, 0x93, 0x5b ; call 0xb7a9
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
    jmp near @..local.l167
    mov ax, 4
    push ax
    db 0xe8, 0x6e, 0x5b ; call 0xb7a9
    pop cx
    push ax
    mov ax, 4
    push ax
    db 0xe8, 0x65, 0x5b ; call 0xb7a9
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
    jmp short @..local.l167
    mov ax, 4
    push ax
    db 0xe8, 0x3c, 0x5b ; call 0xb7a9
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

@..local.l166:
    cmp ax, strict word 0xe
    jae short @..local.l167
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x5305]
@..local.l167:
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
    jge short @..local.l168
    dec word [bp - 0x0002]
@..local.l168:
    cmp word [bp - 0x000a], byte 0x0f
    jle short @..local.l169
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x000a]
    add word [bp - 0x0004], ax
@..local.l169:
    cmp word [bp - 0x000a], byte 0x11
    jle short @..local.l170
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x000a]
    add word [bp - 0x0004], ax
@..local.l170:
    cmp word [bp - 0x0008], byte 0x0f
    jle short @..local.l171
    mov ax, word [bp - 0x0008]
    add word [bp - 0x0006], ax
@..local.l171:
    cmp word [bp - 0x0008], byte 0x11
    jle short @..local.l172
    mov ax, word [bp - 0x0008]
    add word [bp - 0x0006], ax
@..local.l172:
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
    jne short @..local.l173
    shl ax, 1
    cwd
    idiv cx
    mov word [bx + 0x5c16], ax
@..local.l173:
    ret
math_loc_5d7e:
    mov ax, 0
    db 0xe8, 0x87, 0x96 ; call 0xf40b
    mov ax, word [bp + 0x6]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short @..math_loc_5d7e.l1
    mov ax, 1
@..math_loc_5d7e.l1:
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
    jge short @..math_loc_5d7e.l2
    mov ax, 1
@..math_loc_5d7e.l2:
    mov byte [bx + 0x5d55], al
    mov ax, word [bp + 0xa]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short @..math_loc_5d7e.l3
    mov ax, 1
@..math_loc_5d7e.l3:
    mov byte [bx + 0x5d56], al
    mov ax, word [bp + 0xc]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short @..math_loc_5d7e.l4
    mov ax, 1
@..math_loc_5d7e.l4:
    mov byte [bx + 0x5d57], al
    mov ax, word [bp + 0xe]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short @..math_loc_5d7e.l5
    mov ax, 1
@..math_loc_5d7e.l5:
    mov byte [bx + 0x5d58], al
    mov ax, word [bp + 0x10]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short @..math_loc_5d7e.l6
    mov ax, 1
@..math_loc_5d7e.l6:
    mov byte [bx + 0x5d59], al
    ret
api_idx_0004_7:
    mov ax, 0xfffc
    db 0xe8, 0x10, 0x96 ; call 0xf40b
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
    jle short @..api_idx_0004_7.l1
    inc word [bp - 0x0004]
@..api_idx_0004_7.l1:
    cmp ax, strict word 0x10
    jle short @..api_idx_0004_7.l2
    inc word [bp - 0x0004]
@..api_idx_0004_7.l2:
    cmp byte [bx + 0x5e2b], 5
    jne short @..api_idx_0004_7.l3
    inc word [bp - 0x0004]
@..api_idx_0004_7.l3:
    cmp byte [bx + 0x5e2b], 6
    jne short @..api_idx_0004_7.l4
    dec word [bp - 0x0004]
@..api_idx_0004_7.l4:
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp near @..local.l174
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
    jmp near @..local.l175
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
    jmp near @..local.l175
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
    jmp near @..local.l175
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
    jmp near @..local.l175
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
    jmp near @..local.l175
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
    jmp near @..local.l175
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
    jmp near @..local.l175
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
    jmp near @..local.l175
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
    jmp near @..local.l175
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
    jmp near @..local.l175

    db 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x50, 0x50, 0x50, 0x8b, 0x46, 0xfc
    db 0x40, 0x40, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x71, 0xfd, 0x83, 0xc4, 0x0e, 0xeb, 0x70, 0x8b
    db 0x46, 0xfc, 0x40, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x40, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x50
    db 0x50, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x4d, 0xfd, 0x83, 0xc4
    db 0x0e, 0xeb, 0x4c, 0x8b, 0x46, 0xfc, 0x40, 0x50, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x50, 0x50
    db 0x8b, 0x46, 0xfc, 0x40, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x2a
    db 0xfd, 0x83, 0xc4, 0x0e, 0xeb, 0x29, 0x9b, 0xae, 0xb1, 0xae, 0xe1, 0xae, 0x9b, 0xae, 0x16, 0xaf
    db 0x35, 0xaf, 0x6a, 0xaf, 0x8e, 0xaf, 0xc3, 0xaf, 0xe7, 0xaf, 0x16, 0xb0, 0x3a, 0xb0, 0x59, 0xb0
    db 0x7d, 0xb0

@..local.l174:
    cmp ax, strict word 0xe
    jae short @..local.l175
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x4f60]
@..local.l175:
    ret
api_idx_0016:
    mov ax, 0xffea
    db 0xe8, 0x82, 0x93 ; call 0xf40b
    mov ax, 0x94e9
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    db 0xe8, 0xd0, 0x92 ; call 0xf364
    add sp, byte 4
    mov ax, 0
    push ax
    db 0xe8, 0x76, 0x8e ; call 0xef14
    pop cx
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    db 0xe8, 0xb6, 0x70 ; call 0xd161
    add sp, byte 4
    push ax
    db 0xe8, 0x57, 0x98 ; call 0xf909
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0016.l1
    mov ax, 0x13
    push ax
    db 0xe8, 0xad, 0x50 ; call 0xb171
    pop cx
@..api_idx_0016.l1:
    push word [bp + 0x6]
    push word [bp + 0x4]
    mov ax, 5
    push ax
    push word [bp - 0x0002]
    call 0xe743
    add sp, byte 8
    push word [bp - 0x0002]
    db 0xe8, 0xc7, 0x9c ; call 0xfda5
    pop cx
    ret
api_idx_0006_3:
    mov ax, 0xfffa
    db 0xe8, 0x25, 0x93 ; call 0xf40b
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
    db 0xe8, 0xa1, 0x59 ; call 0xbaa6
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
    db 0xe8, 0x7f, 0x59 ; call 0xbaa6
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
    db 0xe8, 0xc6, 0x8a ; call 0xec17
@..api_idx_0006_3.l1:
    mov ax, 0
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    db 0xe8, 0xf1, 0x87 ; call 0xe94f
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
    db 0xe8, 0x3c, 0x87 ; call 0xe8da
    add sp, byte 8
@..api_idx_0006_3.l2:
    mov ax, 0x59fe
    push ax
    db 0xe8, 0x65, 0x57 ; call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x0002], ax
    cmp word [data_5b3e], byte 0
    je short @..api_idx_0006_3.l2
    mov ax, word [bp - 0x0002]
    jmp short @..api_idx_0006_3.l5
@..api_idx_0006_3.l3:
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
    jmp short @..api_idx_0006_3.l6
@..api_idx_0006_3.l4:
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
    jmp short @..api_idx_0006_3.l6
@..api_idx_0006_3.l5:
    cmp ax, strict word 0
    je short @..api_idx_0006_3.l3
    cmp ax, strict word 1
    je short @..api_idx_0006_3.l4
@..api_idx_0006_3.l6:
    cmp word [bp - 0x0002], byte 2
    je short @..api_idx_0006_3.l7
    jmp near @..api_idx_0006_3.l1
@..api_idx_0006_3.l7:
    mov ax, 1
    push ax
    push ax
    mov ax, 0x18
    push ax
    mov ax, 0x97
    push ax
    mov ax, 0x58
    push ax
    db 0xe8, 0x43, 0x5c ; call 0xbe5f
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
    db 0xe8, 0x29, 0x5c ; call 0xbe5f
    add sp, byte 0x0a
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    push word [bp - 0x0006]
    db 0xe8, 0x09, 0x87 ; call 0xe94f
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
    db 0xe8, 0x70, 0x86 ; call 0xe8da
    add sp, byte 8
    ret
api_idx_0002_12:
    mov ax, 0xfffe
    db 0xe8, 0x97, 0x91 ; call 0xf40b
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
@..api_idx_0002_12.l1:
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov byte [bx + 0x5d48], 0xff
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short @..api_idx_0002_12.l1
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
    db 0xe8, 0x0a, 0x91 ; call 0xf40b
    mov word [bp - 0x0006], 0
    mov ax, 0
    push ax
    mov ax, 0x248
    push ax
    mov ax, 0x248
    imul word [bp - 0x0006]
    add ax, 0x5bf4
    push ax
    db 0xe8, 0xeb, 0x8f ; call 0xf306
    add sp, byte 6
    push word [bp + 0x4]
    mov ax, 0x248
    imul word [bp - 0x0006]
    add ax, 0x5bf4
    push ax
    db 0xe8, 0x36, 0x90 ; call 0xf364
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    db 0xe8, 0xea, 0x84 ; call 0xe823
    add sp, byte 4
    mov ax, 0x4c
    push ax
    mov ax, 0x248
    imul word [bp - 0x0006]
    add ax, 0x5bf4
    push ax
    db 0xe8, 0x43, 0x97 ; call 0xfa90
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
    db 0xe8, 0xa5, 0x84 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp - 0x0006]
    add ax, 0x5bf4
    push ax
    db 0xe8, 0xd6, 0x84 ; call 0xe84e
    add sp, byte 4
    mov word [data_9594], 0xffff
    push word [bp - 0x0006]
    call api_idx_007a
    pop cx
    push word [bp - 0x0006]
    call api_idx_007a_2
    pop cx
    mov ax, 6
    push ax
    db 0xe8, 0x13, 0x54 ; call 0xb7a9
    pop cx
    add ax, strict word 5
    mov word [data_9594], ax
    mov ax, 0x14
    push ax
    db 0xe8, 0x05, 0x54 ; call 0xb7a9
    pop cx
    test ax, ax
    jne short @..math_loc_62fb.l1
    add word [data_9594], byte 8
@..math_loc_62fb.l1:
    mov ax, 0x14
    push ax
    db 0xe8, 0xf4, 0x53 ; call 0xb7a9
    pop cx
    test ax, ax
    jne short @..math_loc_62fb.l2
    add word [data_9594], byte 8
@..math_loc_62fb.l2:
    cmp word [data_9594], byte 9
    jge short @..math_loc_62fb.l3
    mov ax, 4
    push ax
    db 0xe8, 0xdc, 0x53 ; call 0xb7a9
    pop cx
    add ax, strict word 8
    mov word [data_9594], ax
@..math_loc_62fb.l3:
    cmp word [data_978a], byte 1
    jne short @..math_loc_62fb.l4
    mov ax, 0xa
    push ax
    db 0xe8, 0xc7, 0x53 ; call 0xb7a9
    pop cx
    add ax, strict word 0x15
    mov word [data_9594], ax
@..math_loc_62fb.l4:
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
    db 0xe8, 0xa4, 0x84 ; call 0xe8da
    add sp, byte 8
    mov ax, 0x4a
    push ax
    mov ax, 0x42
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0xe
    push ax
    db 0xe8, 0xdc, 0x84 ; call 0xe928
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
    db 0xe8, 0xcb, 0x84 ; call 0xe94f
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
@..math_loc_62fb.l5:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x69f8]
    add word [bp - 0x0004], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short @..math_loc_62fb.l5
    cmp word [bp - 0x0004], byte 0
    jle short @..local.l176
    mov ax, 0x25e
    push ax
    push word [bp - 0x0006]
    call api_idx_0088
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    push word [data_952e]
    push word [data_952c]
    db 0xe8, 0x4b, 0x84 ; call 0xe942
    add sp, byte 8
    mov ax, 0xc6
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0xcd, 0x83 ; call 0xe8da
    add sp, byte 8
@..local.l176:
    mov word [bp - 0x0002], 0
@..local.l177:
    mov ax, 0x248
    imul word [bp - 0x0006]
    add ax, word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d50], 0
    jbe short @..local.l178
    push word [bp - 0x0002]
    push word [bp - 0x0006]
    call api_idx_006e
    add sp, byte 4
    jmp short @..local.l177
@..local.l178:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short @..local.l177
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
    jne short @..local.l179
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
    db 0xe8, 0x4e, 0x89 ; call 0xef14
    pop cx
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    mov ax, 0x94f6
    push ax
    db 0xe8, 0x8b, 0x6b ; call 0xd161
    add sp, byte 4
    push ax
    db 0xe8, 0x2c, 0x93 ; call 0xf909
    add sp, byte 4
    mov word [bp - 0x0008], ax
    mov ax, 0x18
    push ax
    mov ax, 0x906e
    push ax
    push word [bp - 0x0008]
    db 0xe8, 0x85, 0x97 ; call 0xfd76
    add sp, byte 6
    push word [bp - 0x0008]
    db 0xe8, 0xab, 0x97 ; call 0xfda5
    pop cx
@..local.l179:
    ret
api_idx_0002_13:
    mov ax, 0xfffe
    db 0xe8, 0x09, 0x8e ; call 0xf40b
    mov word [bp - 0x0002], 0
    jmp short @..local.l181
@..api_idx_0002_13.l1:
    mov bx, word [bp - 0x0002]
    cmp byte [bx - 0x6f8a], 0
    jne short @..local.l180
    mov ax, bx
    ret
@..local.l180:
    inc word [bp - 0x0002]
@..local.l181:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_9070]
    jl short @..api_idx_0002_13.l1
    mov ax, 0xffff
    ret
loc_6626:
    mov ax, 0xfdb6
    db 0xe8, 0xdf, 0x8d ; call 0xf40b
    mov word [bp - 0x0002], 0
    jmp short @..local.l184
@..local.l182:
    mov bx, word [bp - 0x0002]
    cmp byte [bx - 0x6f8a], 0
    jbe short @..local.l183
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
    jne short @..local.l183
    mov ax, 0xffff
    ret
@..local.l183:
    inc word [bp - 0x0002]
@..local.l184:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_9070]
    jl short @..local.l182
    mov ax, 0
    ret
api_idx_0014:
    mov ax, 0xffec
    db 0xe8, 0x92, 0x8d ; call 0xf40b
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
    jne short @..local.l185
    ret
@..local.l185:
    mov word [data_978a], 0
    cmp byte [bp - 0x0014], 0
    je short @..local.l187
    lea ax, word [bp - 0x0014]
    push ax
    call loc_6626
    pop cx
    cmp ax, strict word 0xffff
    jne short @..local.l186
    jmp short @..local.l187
@..local.l186:
    push word [bp + 0x4]
    lea ax, word [bp - 0x0014]
    push ax
    call math_loc_62fb
    add sp, byte 4
@..local.l187:
    ret
math_loc_66c3:
    mov ax, 0
    db 0xe8, 0x42, 0x8d ; call 0xf40b
    mov ax, 0
    push ax
    push word [bp + 0x6]
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    call api_idx_0002_2
    add sp, byte 6
    mov word [data_9594], 0xffff
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
    db 0xe8, 0xa6, 0x81 ; call 0xe8da
    add sp, byte 8
    ret
api_idx_002c:
    mov ax, 0xffd4
    db 0xe8, 0xcd, 0x8c ; call 0xf40b
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
    jne short @..api_idx_002c.l1
    mov bx, word [bp + 0x4]
    mov byte [bx - 0x6f8a], 0
    mov ax, 0
    push ax
    db 0xe8, 0x68, 0x87 ; call 0xef14
    pop cx
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    mov ax, 0x9501
    push ax
    db 0xe8, 0xa5, 0x69 ; call 0xd161
    add sp, byte 4
    push ax
    db 0xe8, 0x46, 0x91 ; call 0xf909
    add sp, byte 4
    mov word [bp - 0x0004], ax
    mov ax, 0x18
    push ax
    mov ax, 0x906e
    push ax
    push word [bp - 0x0004]
    db 0xe8, 0x9f, 0x95 ; call 0xfd76
    add sp, byte 6
    push word [bp - 0x0004]
    db 0xe8, 0xc5, 0x95 ; call 0xfda5
    pop cx
@..api_idx_002c.l1:
    ret
loc_67e2:
    mov ax, 0
    db 0xe8, 0x23, 0x8c ; call 0xf40b
    push word [bp + 0x4]
    mov ax, 0
    push ax
    call math_loc_66c3
    add sp, byte 4
@..local.l188:
    call 0xbaef
    test ax, ax
    jne short @..local.l189
    jmp short @..local.l188
@..local.l189:
    ret
api_idx_0018:
    mov ax, 0xffe8
    db 0xe8, 0x06, 0x8c ; call 0xf40b
    push word [bp + 0x4]
    mov ax, 0
    push ax
    call math_loc_66c3
    add sp, byte 4
    mov ax, 8
    push ax
    db 0xe8, 0x45, 0x4f ; call 0xb75e
    pop cx
    mov ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x0014]
    push ax
    db 0xe8, 0x3f, 0x8b ; call 0xf364
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
    jne short @..local.l190
    ret
@..local.l190:
    lea ax, word [bp - 0x0014]
    push ax
    db 0xe8, 0x44, 0x92 ; call 0xfa90
    pop cx
    test ax, ax
    je short @..local.l192
    lea ax, word [bp - 0x0014]
    push ax
    call loc_6626
    pop cx
    cmp ax, strict word 0xffff
    jne short @..local.l191
    jmp short @..local.l192
@..local.l191:
    lea ax, word [bp - 0x0014]
    push ax
    mov ax, 0x5bf4
    push ax
    db 0xe8, 0xf9, 0x8a ; call 0xf364
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
@..local.l192:
    ret
api_idx_0006_4:
    mov ax, 0xfffa
    db 0xe8, 0x7e, 0x8b ; call 0xf40b
    mov ax, 0x4a
    push ax
    mov ax, 0x42
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0xe
    push ax
    db 0xe8, 0x88, 0x80 ; call 0xe928
    add sp, byte 8
    mov word [bp - 0x0004], dx
    mov word [bp - 0x0006], ax
    push word [bp + 0x4]
    mov ax, 0
    push ax
    call math_loc_66c3
    add sp, byte 4
    mov al, byte [data_5e2a]
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
    db 0xe8, 0x74, 0x80 ; call 0xe94f
    add sp, byte 6
    mov al, byte [data_5e2a]
    sub ah, ah
    cmp ax, word [bp - 0x0002]
    je short @..api_idx_0006_4.l1
    mov ax, 1
    push ax
    push word [bp + 0x4]
    mov ax, 0x5bf4
    push ax
    call api_idx_0002_2
    add sp, byte 6
@..api_idx_0006_4.l1:
    ret
math_loc_68fa:
    mov ax, 0xfd40
    db 0xe8, 0x0b, 0x8b ; call 0xf40b
    mov word [bp - 0x0008], 0
    mov word [bp - 0x0002], 0
    jmp near @..math_loc_68fa.l7
@..math_loc_68fa.l1:
    mov bx, word [bp - 0x0002]
    cmp byte [bx - 0x6f8a], 1
    je short @..math_loc_68fa.l2
    jmp near @..math_loc_68fa.l6
@..math_loc_68fa.l2:
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
    db 0xe8, 0x28, 0x8a ; call 0xf364
    add sp, byte 4
    mov ax, 0x14
    imul word [bp - 0x0008]
    add ax, 0xe38
    push ax
    db 0xe8, 0x44, 0x91 ; call 0xfa90
    pop cx
    mov word [bp - 0x0004], ax
@..math_loc_68fa.l3:
    cmp word [bp - 0x0004], byte 0x0a
    jge short @..math_loc_68fa.l4
    mov ax, 0x14
    imul word [bp - 0x0008]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov byte [bx + 0xe38], 0x20
    inc word [bp - 0x0004]
    jmp short @..math_loc_68fa.l3
@..math_loc_68fa.l4:
    lea ax, word [bp - 0x02a0]
    push ax
    mov al, byte [bp - 0x0018]
    sub ah, ah
    add ax, 0x8c
    push ax
    db 0xe8, 0xbf, 0x4b ; call 0xb53b
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
    db 0xe8, 0x94, 0x4b ; call 0xb53b
    add sp, byte 4
    mov word [bp - 0x0004], 0
@..math_loc_68fa.l5:
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
    jl short @..math_loc_68fa.l5
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
@..math_loc_68fa.l6:
    inc word [bp - 0x0002]
@..math_loc_68fa.l7:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_9070]
    jge short @..math_loc_68fa.l8
    jmp near @..math_loc_68fa.l1
@..math_loc_68fa.l8:
    cmp word [bp - 0x0008], byte 0
    jle short @..local.l193
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
    jne short @..local.l193
    mov ax, word [data_904e]
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    je short @..local.l193
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x02c0]
    ret
@..local.l193:
    mov ax, 0xffff
    ret
api_idx_002c_2:
    mov ax, 0xffd4
    db 0xe8, 0xc6, 0x89 ; call 0xf40b
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
    db 0xe8, 0xbe, 0x6b ; call 0xd61c
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
    mov word [data_95aa], 0x14
    mov word [data_95ac], 0
    mov word [data_95ae], 0
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
    db 0xe8, 0x7b, 0x7e ; call 0xe935
    add sp, byte 0x0c
    mov word [data_9526], dx
    mov word [data_9524], ax
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
    db 0xe8, 0x56, 0x7e ; call 0xe935
    add sp, byte 0x0c
    mov word [data_952a], dx
    mov word [data_9528], ax
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
    db 0xe8, 0x31, 0x7e ; call 0xe935
    add sp, byte 0x0c
    mov word [data_952e], dx
    mov word [data_952c], ax
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
    db 0xe8, 0x0c, 0x7e ; call 0xe935
    add sp, byte 0x0c
    mov word [data_9532], dx
    mov word [data_9530], ax
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
    db 0xe8, 0xe7, 0x7d ; call 0xe935
    add sp, byte 0x0c
    mov word [data_9536], dx
    mov word [data_9534], ax
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
    db 0xe8, 0xc2, 0x7d ; call 0xe935
    add sp, byte 0x0c
    mov word [data_953a], dx
    mov word [data_9538], ax
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
    db 0xe8, 0x9d, 0x7d ; call 0xe935
    add sp, byte 0x0c
    mov word [data_953e], dx
    mov word [data_953c], ax
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
    db 0xe8, 0x78, 0x7d ; call 0xe935
    add sp, byte 0x0c
    mov word [data_9542], dx
    mov word [data_9540], ax
    mov ax, 0xf
    push ax
    mov ax, 0xb
    push ax
    db 0xe8, 0x4a, 0x6a ; call 0xd61c
    add sp, byte 4
    call 0xd9a6
    mov word [data_8450], ax
    test ax, ax
    je short @..api_idx_002c_2.l1
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call 0xd7e7
    add sp, byte 4
    mov ax, word [data_010e]
    mov word [data_844e], ax
    mov ax, 1
    push ax
    push word [data_844e]
    mov ax, 0
    push ax
    call 0xd964
    add sp, byte 6
    mov word [data_844c], ax
@..api_idx_002c_2.l1:
    mov word [bp - 0x0002], 0
@..api_idx_002c_2.l2:
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, 0x9544
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xcc
    push ax
    db 0xe8, 0x1a, 0x49 ; call 0xb53b
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short @..api_idx_002c_2.l2
    mov ax, 0x9596
    push ax
    mov ax, 0x453
    push ax
    db 0xe8, 0x01, 0x49 ; call 0xb53b
    add sp, byte 4
    mov word [bp - 0x0002], 0
@..local.l194:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x7cf2], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..local.l194
    mov word [data_976c], 7
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
@..local.l195:
    mov word [data_95aa], 0x14
    mov word [data_95ac], 0
    mov ax, 0
    push ax
    push ax
    push word [data_9526]
    push word [data_9524]
    db 0xe8, 0xb4, 0x7c ; call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    push word [data_952a]
    push word [data_9528]
    db 0xe8, 0xa1, 0x7c ; call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    push word [data_952e]
    push word [data_952c]
    db 0xe8, 0x8e, 0x7c ; call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    push word [data_9532]
    push word [data_9530]
    db 0xe8, 0x7b, 0x7c ; call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    push word [data_9536]
    push word [data_9534]
    db 0xe8, 0x68, 0x7c ; call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    push word [data_953a]
    push word [data_9538]
    db 0xe8, 0x55, 0x7c ; call 0xe942
    add sp, byte 8
    mov word [bp - 0x0002], 0
@..local.l196:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x002c], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 5
    jl short @..local.l196
    mov word [bp - 0x0022], 1
    mov word [bp - 0x0020], 0xffff
    call api_idx_0002_13
    mov word [bp - 0x000a], ax
    cmp ax, strict word 0xffff
    je short @..local.l197
    mov word [bp - 0x002c], 1
@..local.l197:
    mov word [bp - 0x0002], 0
    jmp short @..local.l200
@..local.l198:
    mov bx, word [bp - 0x0002]
    cmp byte [bx - 0x6f8a], 1
    jne short @..local.l199
    mov word [bp - 0x002a], 1
    mov word [bp - 0x0028], 1
    mov word [bp - 0x0026], 1
    mov word [bp - 0x0024], 1
@..local.l199:
    inc word [bp - 0x0002]
@..local.l200:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_9070]
    jl short @..local.l198
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
    jmp near @..local.l201

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

@..local.l201:
    cmp ax, strict word 5
    jae short @..local.l202
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x415a]
@..local.l202:
    cmp word [bp - 0x0006], byte 5
    je short @..local.l203
    jmp near @..local.l195
@..local.l203:
    cmp word [data_8450], byte 0
    je short @..local.l204
    push word [data_844c]
    push word [data_844e]
    call 0xd91b
    add sp, byte 4
    mov ax, 0
    push ax
    call 0xd907
    pop cx
@..local.l204:
    mov ax, 0xf
    push ax
    call 0xc12a
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_9542]
    push word [data_9540]
    db 0xe8, 0x8b, 0x7a ; call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_953e]
    push word [data_953c]
    db 0xe8, 0x75, 0x7a ; call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_953a]
    push word [data_9538]
    db 0xe8, 0x5f, 0x7a ; call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_9536]
    push word [data_9534]
    db 0xe8, 0x49, 0x7a ; call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_9532]
    push word [data_9530]
    db 0xe8, 0x33, 0x7a ; call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_952e]
    push word [data_952c]
    db 0xe8, 0x1d, 0x7a ; call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_952a]
    push word [data_9528]
    db 0xe8, 0x07, 0x7a ; call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_9526]
    push word [data_9524]
    db 0xe8, 0xf1, 0x79 ; call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x000c]
    push word [bp - 0x000e]
    db 0xe8, 0xdd, 0x79 ; call 0xe942
    add sp, byte 8
    mov ax, 1
    push ax
    db 0xe8, 0xbb, 0x51 ; call 0xc12a
    pop cx
    mov ax, 2
    push ax
    db 0xe8, 0xb3, 0x51 ; call 0xc12a
    pop cx
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    db 0xe8, 0x52, 0x79 ; call 0xe8da
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
@..string_loc_6fca.l1:
    lodsw
    scasw
    jne short @..local.l205
    test al, al
    je short @..string_loc_6fca.l2
    test ah, ah
    jne short @..string_loc_6fca.l1
    jmp short @..string_loc_6fca.l2

    db 0x55, 0x8b, 0xec, 0x8b, 0x4e, 0x08, 0x8b, 0xd1, 0xd1, 0xe9, 0xfc, 0x56, 0x57, 0x8b, 0x76, 0x04
    db 0x8c, 0xdf, 0x8e, 0xc7, 0x8b, 0x7e, 0x06, 0xe3, 0x0e, 0xad, 0xaf, 0x75, 0x18, 0x84, 0xc0, 0x74
    db 0x0e, 0x84, 0xe4, 0xe0, 0xf4, 0x74, 0x08, 0xf6, 0xc2, 0x01, 0x74, 0x03, 0xa6, 0x75, 0x13

@..string_loc_6fca.l2:
    sub ax, ax
@..string_loc_6fca.l3:
    pop di
    pop si
    pop bp
    ret
@..local.l205:
    sub di, byte 2
    scasb
    jne short @..local.l206
    test al, al
    je short @..string_loc_6fca.l2
    mov al, ah
    scasb
@..local.l206:
    sbb ax, ax
    js short @..string_loc_6fca.l3
    inc ax
    jmp short @..string_loc_6fca.l3

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

