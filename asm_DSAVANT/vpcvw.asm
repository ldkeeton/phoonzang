%include "structs/structs.inc"
%include "structs/data_96d0.inc"
org 0
bits 16
%include "labels/vpcvw_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0x36, 0x98, 0x98, 0x90

data_0002 equ 0x0002
data_0024 equ 0x0024
data_0038 equ 0x0038
data_003c equ 0x003c
data_0040 equ 0x0040
data_0042 equ 0x0042
data_0044 equ 0x0044
data_005d equ 0x005d
data_008a equ 0x008a
data_0104 equ 0x0104
data_0110 equ 0x0110
data_05e4 equ 0x05e4
data_0e0e equ 0x0e0e
data_0e1e equ 0x0e1e
data_0e20 equ 0x0e20
data_0e26 equ 0x0e26
data_0e28 equ 0x0e28
data_0e2e equ 0x0e2e
data_0e30 equ 0x0e30
data_0e32 equ 0x0e32
data_0f00 equ 0x0f00
data_3300 equ 0x3300
data_3700 equ 0x3700
data_4941 equ 0x4941
data_5000 equ 0x5000
data_5216 equ 0x5216
data_5218 equ 0x5218
data_5910 equ 0x5910
data_5987 equ 0x5987
data_59fa equ 0x59fa
data_59fc equ 0x59fc
data_5b3e equ 0x5b3e
data_5c1a equ 0x5c1a
data_69c8 equ 0x69c8
data_7501 equ 0x7501
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
data_8306 equ 0x8306
data_830a equ 0x830a
data_830c equ 0x830c
data_833d equ 0x833d
data_8374 equ 0x8374
data_838d equ 0x838d
data_83fc equ 0x83fc
data_844c equ 0x844c
data_844e equ 0x844e
data_8450 equ 0x8450
data_8aee equ 0x8aee
data_8af0 equ 0x8af0
data_8f20 equ 0x8f20
data_8f3e equ 0x8f3e
data_8f40 equ 0x8f40
data_8f42 equ 0x8f42
data_904e equ 0x904e
data_9050 equ 0x9050
data_9052 equ 0x9052
data_905a equ 0x905a
data_905e equ 0x905e
data_908a equ 0x908a
data_908c equ 0x908c
data_908e equ 0x908e
data_9090 equ 0x9090
data_9092 equ 0x9092
data_9094 equ 0x9094
data_939c equ 0x939c
data_93ee equ 0x93ee
data_93f0 equ 0x93f0
data_93f2 equ 0x93f2
data_93f4 equ 0x93f4
data_93f6 equ 0x93f6
data_93f8 equ 0x93f8
data_93fa equ 0x93fa
data_93fc equ 0x93fc
data_93fe equ 0x93fe
data_9400 equ 0x9400
data_9402 equ 0x9402
data_9404 equ 0x9404
data_940a equ 0x940a
data_940c equ 0x940c
data_940e equ 0x940e
data_9410 equ 0x9410
data_9412 equ 0x9412
data_942a equ 0x942a
data_942c equ 0x942c
data_942e equ 0x942e
data_9430 equ 0x9430
data_9432 equ 0x9432
data_9562 equ 0x9562
data_9564 equ 0x9564
data_9566 equ 0x9566
data_9568 equ 0x9568
data_956a equ 0x956a
data_95ea equ 0x95ea
data_9614 equ 0x9614
data_967a equ 0x967a
data_96d0 equ 0x96d0

    db 0x48, 0x03, 0x10, 0x03, 0x35, 0xe8
loc_000e:
    mov ax, 0
    call ds_dispatch_f40b
    cmp word [data_830a], byte 0x11
    jne short @..local.l1
    push word [data_8af0]
    call api_idx_0014
    pop cx
@..local.l1:
    mov ax, 0
    ret
api_idx_0002:
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
    jne short @..api_idx_0002.l1
    mov ax, 0x1c
    push ax
    call ds_dispatch_b171
    pop cx
@..api_idx_0002.l1:
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_efde
    add sp, byte 4
    push word [bp - 0x0002]
    call ds_dispatch_fda5
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
    call ds_dispatch_e8da
    add sp, byte 8
@..api_idx_0002.l2:
    ret
api_idx_000e:
    mov ax, 0xfff2
    call ds_dispatch_f40b
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
    mov byte [bp - 0x000d], data_0002
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
    call ds_dispatch_efd1
    add sp, byte 0x16
@..api_idx_000e.l8:
    ret
api_idx_0012:
    mov ax, 0xffee
    call ds_dispatch_f40b
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
    call ds_dispatch_f99f
    mov word [bp - 0x0010], dx
    mov word [bp - 0x0012], ax
    cmp dx, byte 0
    jg short @..api_idx_0012.l1
    jne short @..api_idx_0012.l2
    cmp ax, strict word 0x32
    jbe short @..api_idx_0012.l2
@..api_idx_0012.l1:
    jmp short @..api_idx_0012.l3
@..api_idx_0012.l2:
    jmp near @..api_idx_0012.l17
@..api_idx_0012.l3:
    cmp dx, byte 0
    jg short @..api_idx_0012.l4
    jne short @..api_idx_0012.l5
    cmp ax, strict word 0x42
    jbe short @..api_idx_0012.l5
@..api_idx_0012.l4:
    jmp short @..api_idx_0012.l8
@..api_idx_0012.l5:
    mov word [bp - 0x000c], 5
    mov word [bp - 0x000a], 0xa
    cmp word [bp - 0x0008], byte 3
    jle short @..api_idx_0012.l6
    mov word [bp - 0x0008], 3
@..api_idx_0012.l6:
    cmp word [bp - 0x0006], byte 3
    jle short @..api_idx_0012.l7
    mov word [bp - 0x0006], 3
@..api_idx_0012.l7:
    jmp near @..api_idx_0012.l17
@..api_idx_0012.l8:
    cmp dx, byte 0
    jg short @..api_idx_0012.l9
    jne short @..api_idx_0012.l10
    cmp ax, strict word 0x4b
    jbe short @..api_idx_0012.l10
@..api_idx_0012.l9:
    jmp short @..api_idx_0012.l13
@..api_idx_0012.l10:
    mov word [bp - 0x000e], 1
    mov word [bp - 0x000c], 0xa
    mov word [bp - 0x000a], 0x14
    cmp word [bp - 0x0008], byte 2
    jle short @..api_idx_0012.l11
    mov word [bp - 0x0008], data_0002
@..api_idx_0012.l11:
    cmp word [bp - 0x0006], byte 2
    jle short @..api_idx_0012.l12
    mov word [bp - 0x0006], data_0002
@..api_idx_0012.l12:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c12]
    mov cx, 0x64
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0x83
    jmp short @..api_idx_0012.l17
@..api_idx_0012.l13:
    cmp word [bp - 0x0010], byte 0
    jg short @..api_idx_0012.l14
    jne short @..api_idx_0012.l15
    cmp word [bp - 0x0012], byte 0x5a
    jbe short @..api_idx_0012.l15
@..api_idx_0012.l14:
    jmp short @..api_idx_0012.l16
@..api_idx_0012.l15:
    mov word [bp - 0x000e], data_0002
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
    jmp short @..api_idx_0012.l17
@..api_idx_0012.l16:
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
@..api_idx_0012.l17:
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
    call ds_dispatch_f40b
    mov ax, 0xc2
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0
    push ax
    call ds_dispatch_e928
    add sp, byte 8
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
    mov ax, 0xbc
    push ax
    push word [bp + 0x4]
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, data_0002
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    cmp word [bp + 0x6], byte 0
    jle short @..api_idx_0004.l1
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
@..api_idx_0004.l1:
    push word [data_905a]
    call ds_dispatch_b75e
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    push word [bp - 0x0004]
    call ds_dispatch_e94f
    add sp, byte 6
    mov ax, 0xc2
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    ret
api_idx_000c:
    mov ax, 0xfff4
    call ds_dispatch_f40b
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
    mov cx, api_idx_0002
    imul cx
    add ax, strict word 0x70
    mov word [bp - 0x0008], ax
    push ax
    push word [bp - 0x0006]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 5
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov al, byte [bx + 0x69bc]
    sub ah, ah
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    cmp word [bp + 0x8], byte 0
    je short @..api_idx_000c.l1
    mov ax, 0x18
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x24
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    call ds_dispatch_fa90
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
    call ds_dispatch_e901
    add sp, byte 0x0a
@..api_idx_000c.l1:
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x20
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 4
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    call ds_dispatch_e84e
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
    call ds_dispatch_cab1
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
    call ds_dispatch_cab1
    add sp, byte 0x0e
    mov word [bp - 0x000a], 0
    mov word [bp - 0x000c], 0
    mov word [bp - 0x0002], 0
@..api_idx_000c.l2:
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
    jl short @..api_idx_000c.l2
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
    call ds_dispatch_cab1
    add sp, byte 0x0e
    cmp word [bp + 0x6], byte 0
    je short @..api_idx_000c.l3
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2e
    push ax
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    call ds_dispatch_e8da
    add sp, byte 8
@..api_idx_000c.l3:
    ret
api_idx_0012_2:
    mov ax, 0xffee
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    push ax
    push word [data_93f8]
    push word [data_93f6]
    call ds_dispatch_e942
    add sp, byte 8
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0012_2.l2
@..api_idx_0012_2.l1:
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
    mov cx, api_idx_0002
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
@..api_idx_0012_2.l2:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..api_idx_0012_2.l1
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    push word [data_69c8]
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0xbb
    push ax
    mov ax, 0xab
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    cmp word [data_0e32], byte 0
    je short @..api_idx_0012_2.l3
    jmp near @..local.l2
@..api_idx_0012_2.l3:
    mov ax, 0xa3
    push ax
    mov ax, 0xb1
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x9a
    push ax
    call ds_dispatch_e928
    add sp, byte 8
    mov word [bp - 0x0010], dx
    mov word [bp - 0x0012], ax
    mov ax, 0x90
    push ax
    mov ax, 0x9a
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 7
    push ax
    mov ax, 0x12
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    mov ax, 0x9c
    push ax
    mov ax, 0x9a
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 7
    push ax
    mov ax, 0x13
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    mov ax, 0x9c
    push ax
    mov ax, 0xa6
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 7
    push ax
    mov ax, 0x14
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    mov ax, 0xa3
    push ax
    mov ax, 0xb1
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x9a
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov word [bp - 0x0004], 0xfffe
@..api_idx_0012_2.l4:
    cmp word [bp - 0x0004], byte 0xfe
    jne short @..api_idx_0012_2.l7
    mov ax, 1
    push ax
    call ds_dispatch_eb32
    pop cx
    sub ah, ah
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0x1b
    jne short @..api_idx_0012_2.l5
    mov word [bp - 0x0004], 0xffff
@..api_idx_0012_2.l5:
    cmp ax, strict word 0x31
    jl short @..api_idx_0012_2.l6
    mov cx, word [data_69c8]
    add cx, byte 0x31
    cmp cx, ax
    jle short @..api_idx_0012_2.l6
    add ax, strict word 0xffcf
    mov word [bp - 0x0004], ax
    mov ax, 1
    push ax
    push ax
    push word [bp - 0x0004]
    call api_idx_000c
    add sp, byte 6
@..api_idx_0012_2.l6:
    jmp short @..api_idx_0012_2.l4
@..api_idx_0012_2.l7:
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x0012]
    call ds_dispatch_e94f
    add sp, byte 6
    mov ax, 0xa3
    push ax
    mov ax, 0xb1
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x9a
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, word [bp - 0x0004]
    ret
@..local.l2:
    push word [data_0e30]
    push word [data_0e2e]
    call ds_dispatch_b8af
    add sp, byte 4
    mov word [bp - 0x0008], 0
@..local.l3:
    lea ax, word [bp - 0x000c]
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    call ds_dispatch_f053
    add sp, byte 4
    mov word [bp - 0x0006], ax
    mov ax, 0
    cmp word [bp - 0x0006], byte 0
    jne short @..local.l4
    mov ax, 1
@..local.l4:
    or word [bp - 0x0008], ax
    mov ax, 0x14
    push ax
    call ds_dispatch_e489
    pop cx
    mov ax, 0x59fe
    push ax
    call ds_dispatch_b90d
    pop cx
    dec ax
    mov word [bp - 0x0004], ax
    cmp word [data_59fa], byte 0
    je short @..local.l5
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    call ds_dispatch_b8af
    add sp, byte 4
    mov ax, 0xffff
    ret
@..local.l5:
    cmp word [data_5b3e], byte 1
    jne short @..local.l6
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
    call ds_dispatch_b8af
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    ret
@..local.l6:
    cmp word [bp - 0x0006], byte 0
    je short @..local.l3
    cmp word [bp - 0x0008], byte 0
    je short @..local.l3
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    call ds_dispatch_b8af
    add sp, byte 4
    mov ax, 0xffff
    ret
api_idx_0012_3:
    mov ax, 0xffee
    call ds_dispatch_f40b
    cmp word [data_0e32], byte 0
    je short @..api_idx_0012_3.l1
    jmp near @..local.l7
@..api_idx_0012_3.l1:
    mov ax, 0xa3
    push ax
    mov ax, 0xb1
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x9a
    push ax
    call ds_dispatch_e928
    add sp, byte 8
    mov word [bp - 0x0010], dx
    mov word [bp - 0x0012], ax
    mov ax, 0x90
    push ax
    mov ax, 0x9a
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 7
    push ax
    mov ax, 0x12
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    mov ax, 0x9c
    push ax
    mov ax, 0x9a
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 7
    push ax
    mov ax, 0x15
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    mov ax, 0x9c
    push ax
    mov ax, 0xa6
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 7
    push ax
    mov ax, 0x16
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    mov ax, 0xa3
    push ax
    mov ax, 0xb1
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x9a
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov word [bp - 0x0004], 0xfffe
@..api_idx_0012_3.l2:
    cmp word [bp - 0x0004], byte 0xfe
    jne short @..api_idx_0012_3.l5
    mov ax, 1
    push ax
    call ds_dispatch_eb32
    pop cx
    sub ah, ah
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0x1b
    jne short @..api_idx_0012_3.l3
    mov word [bp - 0x0004], 0xffff
@..api_idx_0012_3.l3:
    cmp ax, strict word 0x30
    jl short @..api_idx_0012_3.l4
    cmp ax, strict word 0x39
    jg short @..api_idx_0012_3.l4
    add ax, strict word 0xffd9
    mov cx, 0xa
    cwd
    idiv cx
    mov word [bp - 0x0004], dx
@..api_idx_0012_3.l4:
    jmp short @..api_idx_0012_3.l2
@..api_idx_0012_3.l5:
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x0012]
    call ds_dispatch_e94f
    add sp, byte 6
    mov ax, 0xa3
    push ax
    mov ax, 0xb1
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x9a
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, word [bp - 0x0004]
    ret
@..local.l7:
    push word [data_0e28]
    push word [data_0e26]
    call ds_dispatch_b8af
    add sp, byte 4
    mov word [bp - 0x0002], 0
@..local.l8:
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jl short @..local.l8
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov word [bp - 0x0008], 0
@..local.l9:
    lea ax, word [bp - 0x000c]
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    call ds_dispatch_f053
    add sp, byte 4
    mov word [bp - 0x0006], ax
    mov ax, 0
    cmp word [bp - 0x0006], byte 0
    jne short @..local.l10
    mov ax, 1
@..local.l10:
    or word [bp - 0x0008], ax
    mov ax, 0x14
    push ax
    call ds_dispatch_e489
    pop cx
    mov ax, 0x59fe
    push ax
    call ds_dispatch_b90d
    pop cx
    dec ax
    mov word [bp - 0x0004], ax
    cmp word [data_59fa], byte 0
    je short @..local.l11
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    call ds_dispatch_b8af
    add sp, byte 4
    mov ax, 0xffff
    ret
@..local.l11:
    cmp word [data_5b3e], byte 1
    jne short @..local.l12
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    call ds_dispatch_b8af
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    ret
@..local.l12:
    cmp word [bp - 0x0006], byte 0
    je short @..local.l9
    cmp word [bp - 0x0008], byte 0
    je short @..local.l9
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    call ds_dispatch_b8af
    add sp, byte 4
    mov ax, 0xffff
    ret
api_idx_0004_2:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    cmp word [data_940e], byte 0xff
    jne short @..local.l13
    ret
@..local.l13:
    mov ax, word [data_940e]
    mov cx, 5
    cwd
    idiv cx
    mov cx, 0xd
    imul cx
    mov cx, 6
    imul cx
    push ax
    mov ax, word [data_940e]
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
    mov ax, word [data_940e]
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
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 4
    push ax
    mov al, byte [data_9410]
    sub ah, ah
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    push word [data_9412]
    push word [bp - 0x0004]
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xe
    push ax
    mov ax, 0x9414
    push ax
    call api_idx_002a
    add sp, byte 8
    mov bx, word [data_942a]
    cmp byte [bx + 0x60e], 1
    jne short @..local.l14
    mov ax, word [bp - 0x0004]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x38
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, data_0002
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    push word [data_942c]
    call ds_dispatch_b2e7
    add sp, byte 6
@..local.l14:
    mov ax, 0xff
    push ax
    mov ax, 0x15
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    mov ax, word [bp - 0x0002]
    dec ax
    dec ax
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    ret
api_idx_0012_4:
    mov ax, 0xffee
    call ds_dispatch_f40b
    mov word [data_940e], 0xffff
    mov ax, word [bp + 0x6]
    push ax
    cmp ax, strict word 0
    pop ax
    jge short @..api_idx_0012_4.l2
    push ax
    cmp ax, strict word 0
    pop ax
    jge short @..api_idx_0012_4.l1
    neg ax
@..api_idx_0012_4.l1:
    dec ax
@..api_idx_0012_4.l2:
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
    cmp word [data_0e32], byte 0
    jne short @..api_idx_0012_4.l3
    jmp near @..api_idx_0012_4.l6
@..api_idx_0012_4.l3:
    cmp word [bp + 0x6], byte 0
    jge short @..api_idx_0012_4.l4
    lea ax, word [bp - 0x0006]
    push ax
    lea ax, word [bp - 0x0004]
    push ax
    call ds_dispatch_f053
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
    call ds_dispatch_f060
    add sp, byte 0x0c
    call ds_dispatch_ec17
    jmp near @..api_idx_0012_4.l5
@..api_idx_0012_4.l4:
    mov ax, word [bp - 0x000a]
    add ax, strict word 0xc
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x4b
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    call ds_dispatch_e928
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
    call ds_dispatch_e901
    add sp, byte 0x0a
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_0004_10
    add sp, byte 0x0a
    mov ax, 0xff
    push ax
    mov ax, 0x15
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    mov ax, word [bp - 0x000a]
    add ax, strict word 0xc
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x4b
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    call ds_dispatch_e928
    add sp, byte 8
    mov word [bp - 0x0010], dx
    mov word [bp - 0x0012], ax
    mov ax, 0x3dc
    push ax
    push word [data_0e20]
    push word [data_0e1e]
    mov ax, word [bp - 0x0012]
    add ax, strict word 0xc
    push dx
    push ax
    call ds_dispatch_afcc
    add sp, byte 0x0a
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    push word [bp - 0x0012]
    call ds_dispatch_e94f
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp - 0x000c]
    push word [bp - 0x000e]
    call ds_dispatch_e94f
    add sp, byte 6
    lea ax, word [bp - 0x0006]
    push ax
    lea ax, word [bp - 0x0004]
    push ax
    call ds_dispatch_f053
    add sp, byte 4
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0004]
    add ax, word [bp + 0xe]
    add ax, strict word 0xffdc
    push ax
    call ds_dispatch_b7c2
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
    call ds_dispatch_b7c2
    add sp, byte 6
    mov word [bp - 0x0006], ax
    push ax
    push word [bp - 0x0004]
    mov ax, 0xd
    push ax
    mov ax, 0x4c
    push ax
    push word [data_0e20]
    push word [data_0e1e]
    call ds_dispatch_f060
    add sp, byte 0x0c
    call ds_dispatch_ec17
@..api_idx_0012_4.l5:
    jmp short @..local.l15
@..api_idx_0012_4.l6:
    cmp word [bp + 0x6], byte 0
    jge short @..api_idx_0012_4.l7
    mov word [data_940e], 0xffff
    jmp short @..local.l15
@..api_idx_0012_4.l7:
    mov ax, word [bp - 0x0002]
    mov word [data_940e], ax
    push word [bp + 0xa]
    mov ax, 0x9414
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x5]
    sub ah, ah
    mov word [data_9410], ax
    mov al, byte [bx + 0x4]
    sub ah, ah
    mov word [data_942a], ax
    mov al, byte [bx + 0x6]
    sub ah, ah
    mov word [data_942c], ax
    mov word [data_9412], 1
    call api_idx_0004_2
@..local.l15:
    mov ax, 0xb6
    push ax
    mov ax, 0xab
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
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
    mov ax, data_0002
    push ax
    call ds_dispatch_efd1
    add sp, byte 0x16
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_000c_2.l1
    ret
api_idx_0004_3:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    push ax
    push word [data_9404]
    push word [data_9402]
    call ds_dispatch_e942
    add sp, byte 8
    mov word [bp - 0x0002], 0
@..api_idx_0004_3.l1:
    mov word [bp - 0x0004], 0
@..api_idx_0004_3.l2:
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
    call ds_dispatch_e823
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
    call ds_dispatch_e809
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
    call ds_dispatch_b2e7
    add sp, byte 6
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 2
    jl short @..api_idx_0004_3.l2
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jge short @..api_idx_0004_3.l3
    jmp near @..api_idx_0004_3.l1
@..api_idx_0004_3.l3:
    mov ax, 0
    push ax
    push ax
    push ax
    call api_idx_000c_2
    add sp, byte 6
    ret
api_idx_0002_2:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov word [bp - 0x0002], 0
@..api_idx_0002_2.l1:
    cmp word [bp + 0x4], byte 0
    jl short @..api_idx_0002_2.l2
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x4]
    jne short @..api_idx_0002_2.l3
@..api_idx_0002_2.l2:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    inc word [bx - 0x7cf2]
@..api_idx_0002_2.l3:
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
    jne short @..api_idx_0002_2.l4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x7cf2], 0
@..api_idx_0002_2.l4:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_0002_2.l1
    ret
api_idx_0002_3:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov word [bp - 0x0002], 0
@..api_idx_0002_3.l1:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x4a, 0x00 ; mov ax, word [bx + 0x4a]
    cmp ax, word [bp + 0x4]
    jge short @..api_idx_0002_3.l2
    inc word [bp - 0x0002]
    jmp short @..api_idx_0002_3.l1
@..api_idx_0002_3.l2:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x4a, 0x00 ; push word [bx + 0x4a]
    db 0xff, 0xb7, 0x48, 0x00 ; push word [bx + 0x48]
    mov ax, word [bp + 0x4]
    add ax, word [bp + 0x6]
    push ax
    call ds_dispatch_b7c2
    add sp, byte 6
    ret
api_idx_0010:
    mov ax, 0xfff0
    call ds_dispatch_f40b
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
    call ds_dispatch_e7af
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
    call ds_dispatch_e8f4
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
    call ds_dispatch_e8f4
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
    call ds_dispatch_e8f4
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
    call ds_dispatch_e8f4
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
api_idx_000a:
    mov ax, 0xfff6
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    push ax
    push word [data_940c]
    push word [data_940a]
    call ds_dispatch_e942
    add sp, byte 8
    cmp word [data_942e], byte 0
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
    sub ax, word [data_942e]
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
    call ds_dispatch_efd1
    add sp, byte 0x16
@..api_idx_000a.l1:
    mov ax, 5
    cmp word [data_9430], byte 0
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
    sub ax, word [data_942e]
    add ax, strict word 0x19
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0xf
    push ax
    call ds_dispatch_efd1
    add sp, byte 0x16
    ret
api_idx_007c:
    mov ax, 0xff84
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    push ax
    push word [data_93f0]
    push word [data_93ee]
    call ds_dispatch_e942
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    push word [data_93f4]
    push word [data_93f2]
    call ds_dispatch_e942
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
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0x4c
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, data_0002
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x28
    sub ax, cx
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0x5a
    push ax
    call ds_dispatch_e809
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
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0
    push ax
    mov al, byte [bp - 0x0058]
    sub ah, ah
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2d
    push ax
    call ds_dispatch_e830
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
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x84
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0xc
    push ax
    mov ax, 0x5a
    push ax
    call ds_dispatch_e809
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
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0x12
    push ax
    mov ax, 0x5a
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xc8
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c18]
    call ds_dispatch_b2e7
    add sp, byte 6
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5bfc]
    mov dx, word [bx + 0x5bfe]
    mov cx, 0x16d
    mov bx, 0
    call ds_dispatch_f99f
    add ax, strict word 0xffee
    adc dx, byte 0xff
    mov cx, 4
    mov bx, 0
    call ds_dispatch_f99f
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
    call ds_dispatch_f99f
    mov word [data_942e], ax
    mov ax, 0x14
    push ax
    mov ax, 0
    push ax
    push word [data_942e]
    call ds_dispatch_b7c2
    add sp, byte 6
    mov word [data_942e], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jae short @..local.l16
    mov ax, 0
    jmp short @..local.l17
@..local.l16:
    mov ax, 1
@..local.l17:
    mov word [data_9430], ax
    mov word [data_9432], 0
    push word [data_9432]
    call api_idx_000a
    pop cx
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov word [bp - 0x0002], 0
@..local.l18:
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x23
    push ax
    mov ax, 0x73
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xcc
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_e84e
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
    call ds_dispatch_b2e7
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short @..local.l18
    mov ax, 0
    push ax
    mov ax, 0xfd
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xc9
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0xe4
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_e84e
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
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 6
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 0x34
    sub cx, ax
    mov ax, 6
    imul cx
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x47
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xca
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0xc
    push ax
    mov ax, 0xe4
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call ds_dispatch_e830
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
    call ds_dispatch_b293
    add sp, byte 8
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xcb
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0x12
    push ax
    mov ax, 0xe4
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call ds_dispatch_e830
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
    call ds_dispatch_b293
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x1d
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xd4
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, data_005d
    push ax
    mov ax, 6
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c0c]
    call ds_dispatch_b27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2f
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c0e]
    call ds_dispatch_b27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1d
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xd5
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0x63
    push ax
    mov ax, 6
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    call ds_dispatch_e823
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
    jge short @..local.l19
    cmp word [bx + 0x5c10], byte 0
    jle short @..local.l19
    mov ax, 1
    jmp short @..local.l20
@..local.l19:
    mov ax, word [bp - 0x0008]
@..local.l20:
    mov word [bp - 0x0008], ax
    lea ax, word [bp - 0x0058]
    push ax
    push word [bp - 0x0008]
    call ds_dispatch_b27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x9098
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1d
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x28
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c12]
    call ds_dispatch_b27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x29
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xc4
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xd6
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, data_005d
    push ax
    mov ax, 0x5b
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c0a]
    push word [bx + 0x5c08]
    call ds_dispatch_b1db
    add sp, byte 6
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    push word [bp + 0x4]
    call ds_dispatch_c58f
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
    call ds_dispatch_e823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xd7
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0x63
    push ax
    mov ax, 0x5b
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call ds_dispatch_e830
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
    call ds_dispatch_b27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2f
    push ax
    call ds_dispatch_e830
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
    call ds_dispatch_b27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_e84e
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
    jne short @..local.l21
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d5c], 0
    jbe short @..local.l21
    mov ax, 0
    jmp short @..local.l22
@..local.l21:
    mov ax, word [bp - 0x0006]
@..local.l22:
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jg short @..local.l23
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d5d], 0
    jbe short @..local.l23
    mov ax, 1
    jmp short @..local.l24
@..local.l23:
    mov ax, word [bp - 0x0006]
@..local.l24:
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    je short @..local.l25
    mov ax, 0x2d
    push ax
    mov ax, 0x51
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 6
    push ax
    mov al, byte [bp - 0x0006]
    sub ah, ah
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    inc word [bp - 0x0004]
@..local.l25:
    mov word [bp - 0x006e], 6
    mov word [bp - 0x006c], 7
    mov word [bp - 0x006a], 5
    mov word [bp - 0x0068], 4
    mov word [bp - 0x0066], 8
    mov word [bp - 0x0064], 9
    mov word [bp - 0x0062], 1
    mov word [bp - 0x0006], 0xffff
    mov word [bp - 0x0002], 0
@..local.l26:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x006e]
    mov word [bp - 0x0008], ax
    cmp word [bp - 0x0004], byte 6
    jge short @..local.l27
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x92c]
    cmp ax, word [bp - 0x0006]
    je short @..local.l27
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0008]
    mov bx, ax
    cmp byte [bx + 0x5d5a], 0
    jbe short @..local.l27
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
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, word [bp - 0x0008]
    shl ax, 1
    mov bx, ax
    mov al, byte [bx + 0x92c]
    sub ah, ah
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x92c]
    mov word [bp - 0x0006], ax
    inc word [bp - 0x0004]
@..local.l27:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jge short @..local.l28
    jmp near @..local.l26
@..local.l28:
    ret
api_idx_009e:
    mov ax, 0xff62
    call ds_dispatch_f40b
    mov word [bp - 0x0004], 0
    cmp word [data_0e32], byte 0
    je short @..api_idx_009e.l1
    lea ax, word [bp - 0x0008]
    push ax
    lea ax, word [bp - 0x0006]
    push ax
    call ds_dispatch_f053
    add sp, byte 4
    mov word [bp - 0x0004], ax
@..api_idx_009e.l1:
    mov ax, 0
    push ax
    push ax
    push word [data_93f0]
    push word [data_93ee]
    call ds_dispatch_e942
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
    call ds_dispatch_b63c
    add sp, byte 8
    lea ax, word [bp - 0x009e]
    push ax
    mov ax, 0xd9
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, data_005d
    push ax
    mov ax, 6
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x36
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x009e]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x34
    push ax
    call ds_dispatch_e823
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
    call ds_dispatch_f99f
    push ax
    call ds_dispatch_b27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x009e]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    lea ax, word [bp - 0x009e]
    push ax
    mov ax, 0xda
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0x63
    push ax
    mov ax, 6
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x58
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x009e]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    lea ax, word [bp - 0x009e]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c1a]
    call ds_dispatch_b27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x009e]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp word [bx + 0x5c18], byte 0x10
    jge short @..api_idx_009e.l2
    mov ax, word [bx + 0x5c18]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0050]
    mov dx, word [bx - 0x004e]
    mov word [bp - 0x000a], dx
    mov word [bp - 0x000c], ax
    jmp short @..api_idx_009e.l3
@..api_idx_009e.l2:
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
@..api_idx_009e.l3:
    lea ax, word [bp - 0x009e]
    push ax
    mov ax, 0xdb
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, data_005d
    push ax
    mov ax, 0x5b
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x87
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x009e]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0x63
    push ax
    mov ax, 0x5b
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x85
    push ax
    call ds_dispatch_e823
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
    call ds_dispatch_b293
    add sp, byte 8
    mov ax, 0x69
    push ax
    mov ax, 0x97
    push ax
    mov ax, data_005d
    push ax
    mov ax, 6
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    cmp word [data_0e32], byte 0
    je short @..local.l31
@..local.l29:
    cmp word [bp - 0x0004], byte 0
    je short @..local.l30
    lea ax, word [bp - 0x0008]
    push ax
    lea ax, word [bp - 0x0006]
    push ax
    call ds_dispatch_f053
    add sp, byte 4
    test ax, ax
    je short @..local.l30
    jmp short @..local.l29
@..local.l30:
    jmp short @..local.l32
@..local.l31:
    mov ax, 1
    push ax
    call ds_dispatch_eb32
    pop cx
    sub ah, ah
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x0002], byte 0x0d
    je short @..local.l32
    cmp word [bp - 0x0002], byte 0x1b
    jne short @..local.l31
@..local.l32:
    ret
api_idx_0008:
    mov ax, 0xfff8
    call ds_dispatch_f40b
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
    call ds_dispatch_e928
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
    call ds_dispatch_bce3
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    push word [bp + 0x14]
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push word [bp + 0x4]
    call ds_dispatch_fa90
    pop cx
    mov cx, ax
    mov ax, word [bp + 0xc]
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, data_0002
    cwd
    idiv cx
    add ax, word [bp + 0x8]
    add ax, word [bp - 0x0002]
    inc ax
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call ds_dispatch_e84e
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
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0008]
    call ds_dispatch_e94f
    add sp, byte 6
    ret
loc_1c25:
    mov ax, 0
    call ds_dispatch_f40b
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
    call ds_dispatch_e901
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
    call ds_dispatch_e901
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
    call ds_dispatch_e901
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
    call ds_dispatch_e901
    add sp, byte 0x0a
    ret
math_loc_1ca0:
    mov ax, 0xfe56
    call ds_dispatch_f40b
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
    jne short @..math_loc_1ca0.l1
    jmp near @..math_loc_1ca0.l2
@..math_loc_1ca0.l1:
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
    call ds_dispatch_c283
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
    call ds_dispatch_bc9a
    add sp, byte 8
    lea ax, word [bp - 0x01a6]
    push ax
    push word [bp + 0x6]
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, word [bp + 0xa]
    add ax, strict word 0xfff3
    push ax
    lea ax, word [bp - 0x01a6]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, data_0002
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x01a6]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    jmp short @..math_loc_1ca0.l3
@..math_loc_1ca0.l2:
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
    call ds_dispatch_c283
    add sp, byte 0x0a
    mov word [bp - 0x01a8], ax
@..math_loc_1ca0.l3:
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
@..math_loc_1ca0.l4:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1c]
    cmp word [bx + si], byte 0xff
    jne short @..math_loc_1ca0.l5
    jmp near @..local.l34
@..math_loc_1ca0.l5:
    cmp word [bx + si], byte 1
    je short @..math_loc_1ca0.l6
    jmp near @..local.l33
@..math_loc_1ca0.l6:
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x0156]
    add ax, cx
    push ax
    mov ax, word [bp + 0x4]
    add ax, word [bp - 0x0004]
    push ax
    call ds_dispatch_b53b
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
    call ds_dispatch_bce3
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    mov ax, word [bp + 0x16]
    mov cx, word [bp - 0x0004]
    cmp cx, word [bp + 0x18]
    jne short @..math_loc_1ca0.l7
    mov ax, 0x1a
@..math_loc_1ca0.l7:
    push ax
    call ds_dispatch_e823
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
    call ds_dispatch_fa90
    pop cx
    mov cx, ax
    mov ax, word [bp + 0xc]
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, data_0002
    cwd
    idiv cx
    add ax, word [bp + 0x8]
    add ax, word [bp - 0x000a]
    inc ax
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x0156]
    add ax, cx
    push ax
    call ds_dispatch_e84e
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x0004]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x002a], ax
    inc word [bp - 0x0002]
@..local.l33:
    inc word [bp - 0x0004]
    jmp near @..math_loc_1ca0.l4
@..local.l34:
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    cmp word [data_0e32], byte 0
    je short @..local.l36
@..local.l35:
    mov ax, 0x59fe
    push ax
    call ds_dispatch_b90d
    pop cx
    mov word [bp - 0x0004], ax
    cmp word [data_5b3e], byte 0
    je short @..local.l35
    jmp near @..local.l50
@..local.l36:
    mov word [bp - 0x0004], 0
@..local.l37:
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
    call ds_dispatch_e8da
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
@..local.l38:
    mov ax, 1
    push ax
    call ds_dispatch_ea50
    pop cx
    test ax, ax
    jne short @..local.l39
    jmp short @..local.l38
@..local.l39:
    mov ax, 1
    push ax
    call ds_dispatch_eb32
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
@..local.l40:
    mov ax, word [bp - 0x01aa]
    jmp near @..local.l45
@..local.l41:
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
    jmp near @..local.l47
@..local.l42:
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
    jmp short @..local.l47
@..local.l43:
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
    jmp short @..local.l47
@..local.l44:
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
    jmp short @..local.l47
@..local.l45:
    cmp ax, strict word 8
    je short @..local.l43
    cmp ax, strict word 9
    jne short @..local.l46
    jmp near @..local.l41
@..local.l46:
    cmp ax, strict word 0xa
    je short @..local.l44
    cmp ax, strict word 0xb
    je short @..local.l42
@..local.l47:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jl short @..local.l48
    jmp near @..local.l40
@..local.l48:
    cmp word [bp - 0x01aa], byte 0x0d
    je short @..local.l49
    jmp near @..local.l37
@..local.l49:
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
    call ds_dispatch_e8da
    add sp, byte 8
@..local.l50:
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
    call ds_dispatch_be5f
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
    call ds_dispatch_be5f
    add sp, byte 0x0a
    mov ax, 1
    push ax
    push word [bp - 0x01a8]
    call ds_dispatch_c459
    add sp, byte 4
    cmp word [bp + 0x1a], byte 0
    je short @..local.l52
    cmp word [bp + 0x6], byte 0
    je short @..local.l51
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
    call ds_dispatch_e8da
    add sp, byte 8
    jmp short @..local.l52
@..local.l51:
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
    call ds_dispatch_e8da
    add sp, byte 8
@..local.l52:
    mov ax, word [bp - 0x0004]
    mov word [data_9052], ax
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x002a]
    ret
math_loc_2190:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 1
    push ax
    push ax
    push word [bp + 0x4]
    call api_idx_000c
    add sp, byte 6
    mov ax, 0x3e8
    push ax
    call ds_dispatch_e489
    pop cx
    ret
math_loc_21ad:
    mov ax, 0
    call ds_dispatch_f40b
    cmp word [bp + 0x8], byte 1
    jne short @..math_loc_21ad.l3
    cmp word [bp + 0x6], byte 0
    jle short @..math_loc_21ad.l1
    mov ax, word [bp + 0x4]
    sub word [bp + 0x6], ax
    jmp short @..math_loc_21ad.l2
@..math_loc_21ad.l1:
    mov ax, 0
    sub ax, word [bp + 0x4]
    cmp ax, word [bp + 0x6]
    jge short @..math_loc_21ad.l2
    mov word [bp + 0x6], ax
@..math_loc_21ad.l2:
    jmp short @..math_loc_21ad.l5
@..math_loc_21ad.l3:
    cmp word [bp + 0x8], byte 0
    jne short @..math_loc_21ad.l5
    cmp word [bp + 0x6], byte 0
    jge short @..math_loc_21ad.l4
    mov ax, word [bp + 0x4]
    add word [bp + 0x6], ax
    jmp short @..math_loc_21ad.l5
@..math_loc_21ad.l4:
    mov ax, word [bp + 0x6]
    cmp ax, word [bp + 0x4]
    jge short @..math_loc_21ad.l5
    mov ax, word [bp + 0x4]
    mov word [bp + 0x6], ax
@..math_loc_21ad.l5:
    mov ax, word [bp + 0x6]
    ret
api_idx_0008_2:
    mov ax, 0xfff8
    call ds_dispatch_f40b
    mov ax, word [bp + 0x6]
    jmp near @..local.l57
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
    call math_loc_21ad
    add sp, byte 6
    mov word [data_8300], ax
    jmp near 0x297d
    mov ax, 0x23
    imul word [bp + 0x8]
    add word [data_82f2], ax
    mov ax, 0
    push ax
    push word [data_82f4]
    mov ax, word [bp + 0x8]
    dec ax
    mov cx, data_0002
    cwd
    idiv cx
    inc ax
    push ax
    call math_loc_21ad
    add sp, byte 6
    mov word [data_82f4], ax
    db 0xe9, 0x22, 0x07 ; jmp near 0x297d
    mov ax, 0x32
    imul word [bp + 0x8]
    add word [data_82f6], ax
    mov ax, 0
    push ax
    push word [data_82f8]
    mov ax, word [bp + 0x8]
    dec ax
    mov cx, data_0002
    cwd
    idiv cx
    inc ax
    push ax
    call math_loc_21ad
    add sp, byte 6
    mov word [data_82f8], ax
    db 0xe9, 0xf8, 0x06 ; jmp near 0x297d
    mov ax, 5
    imul word [bp + 0x8]
    add word [data_8306], ax
    db 0xe9, 0xeb, 0x06 ; jmp near 0x297d
    mov ax, 0x64
    imul word [bp + 0x8]
    add word [data_8302], ax
    db 0xe9, 0xde, 0x06 ; jmp near 0x297d
    mov ax, 0x32
    imul word [bp + 0x8]
    add word [data_82fa], ax
    mov ax, 0
    push ax
    push word [data_82fc]
    mov ax, 5
    imul word [bp + 0x8]
    push ax
    call math_loc_21ad
    add sp, byte 6
    mov word [data_82fc], ax
    db 0xe9, 0xb9, 0x06 ; jmp near 0x297d
    mov ax, 0
    cmp word [bp + 0x6], byte 0x13
    je short @..api_idx_0008_2.l1
    mov ax, word [bp + 0xa]
@..api_idx_0008_2.l1:
    mov word [bp - 0x0002], ax
    mov ax, word [data_69c8]
    cmp word [bp + 0x6], byte 0x13
    je short @..api_idx_0008_2.l2
    mov ax, word [bp + 0xa]
    inc ax
@..api_idx_0008_2.l2:
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x8]
    cmp word [bp + 0x6], byte 0x13
    je short @..api_idx_0008_2.l3
    shl ax, 1
@..api_idx_0008_2.l3:
    mov word [bp - 0x0006], ax
    mov ax, 0
    cmp word [bp + 0x6], byte 0x13
    je short @..api_idx_0008_2.l4
    mov ax, word [bp + 0x8]
@..api_idx_0008_2.l4:
    mov word [bp - 0x0008], ax
    jmp short @..api_idx_0008_2.l7
@..api_idx_0008_2.l5:
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
    cmp word [bp + 0x6], byte 0x13
    je short @..api_idx_0008_2.l6
    push word [bp - 0x0002]
    call math_loc_2190
    pop cx
@..api_idx_0008_2.l6:
    inc word [bp - 0x0002]
@..api_idx_0008_2.l7:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x0004]
    jl short @..api_idx_0008_2.l5
    db 0xe9, 0x06, 0x06 ; jmp near 0x297d
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
    jge short @..api_idx_0008_2.l8
    mov word [bp - 0x0002], 0
@..api_idx_0008_2.l8:
    mov al, byte [bp - 0x0002]
    mov byte [bx + 0x5d5d], al
    push word [bp + 0xa]
    call math_loc_2190
    pop cx
    db 0xe9, 0xce, 0x05 ; jmp near 0x297d
    mov ax, 0x248
    imul word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + 0x5e32]
    sub ah, ah
    sub ax, word [bp + 0x8]
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0
    jg short @..api_idx_0008_2.l9
    mov word [bp - 0x0002], 0
    mov byte [bx + 0x5d5f], 0
@..api_idx_0008_2.l9:
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

    db 0x8a, 0x46, 0xfe, 0x88, 0x87, 0x5f, 0x5d, 0xff, 0x76, 0x0a, 0xe8, 0x86, 0xfd, 0x59, 0xe9, 0x6f
    db 0x05, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x80, 0xbf, 0x2f, 0x5e, 0x02, 0x74, 0x03
    db 0xe9, 0x7a, 0x00, 0xb8, 0x03, 0x00, 0xf7, 0x6e, 0x08, 0x50, 0x8a, 0x87, 0x67, 0x5d, 0x2a, 0xe4
    db 0x8b, 0xd0, 0xb9, 0x15, 0x00, 0x2b, 0xc8, 0x58, 0x3b, 0xc1, 0x7e, 0x61, 0xfe, 0x8f, 0x67, 0x5d
    db 0xb8, 0xb7, 0x00, 0x50, 0xe8, 0x65, 0x93, 0x59, 0x05, 0xb7, 0x00, 0x99, 0x50, 0x52, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x5a, 0x58, 0x01, 0x87, 0xfc, 0x5b, 0x11, 0x97, 0xfe, 0x5b
    db 0xb8, 0x12, 0x00, 0x50, 0xe8, 0x45, 0x93, 0x59, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b
    db 0xd8, 0x8a, 0x87, 0x67, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x3b, 0xc1, 0x7e, 0x13, 0xc6, 0x87
    db 0x2f, 0x5e, 0x03, 0xc7, 0x87, 0x0c, 0x5c, 0x00, 0x00, 0xc7, 0x87, 0x10, 0x5c, 0x00, 0x00, 0xeb
    db 0x05, 0xc6, 0x87, 0x2f, 0x5e, 0x00, 0xff, 0x76, 0x0a, 0xe8, 0xf7, 0xfc, 0x59, 0xe9, 0xe0, 0x04
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x61, 0x5d, 0x2a, 0xe4, 0x50, 0xb8
    db 0x19, 0x00, 0xf7, 0x6e, 0x08, 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfe, 0x3d, 0x00, 0x00
    db 0x7d, 0x05, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0x8a, 0x46, 0xfe, 0x88, 0x87, 0x61, 0x5d, 0xff, 0x76
    db 0x0a, 0xe8, 0xbf, 0xfc, 0x59, 0xe9, 0xa8, 0x04, 0xb8, 0x03, 0x00, 0xf7, 0x6e, 0x08, 0x50, 0xb8
    db 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x67, 0x5d, 0x2a, 0xe4, 0x8b, 0xd0, 0xb9
    db 0x12, 0x00, 0x2b, 0xc8, 0x58, 0x3b, 0xc1, 0x7e, 0x05, 0xc6, 0x87, 0x60, 0x5d, 0x00, 0xff, 0x76
    db 0x0a, 0xe8, 0x8f, 0xfc, 0x59, 0xe9, 0x78, 0x04, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xeb, 0x3c, 0xb8
    db 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x5c, 0x5d, 0x2a, 0xe4, 0x50, 0x8b, 0x46
    db 0x08, 0xf7, 0xe8, 0x8b, 0xc8, 0x05, 0x04, 0x00, 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfc
    db 0x3d, 0x00, 0x00, 0x7d, 0x05, 0xc7, 0x46, 0xfc, 0x00, 0x00, 0x8a, 0x46, 0xfc, 0x88, 0x87, 0x5c
    db 0x5d, 0xff, 0x76, 0xfe, 0xe8, 0x4c, 0xfc, 0x59, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3b, 0x06
    db 0xc8, 0x69, 0x7c, 0xbb, 0xe9, 0x29, 0x04, 0xc7, 0x46, 0xfc, 0x01, 0x00, 0x8b, 0x46, 0xfc, 0x3d
    db 0x01, 0x00, 0x74, 0x14, 0x3d, 0x02, 0x00, 0x74, 0x0f, 0x3d, 0x04, 0x00, 0x74, 0x0a, 0x3d, 0x08
    db 0x00, 0x74, 0x05, 0x3d, 0x09, 0x00, 0x75, 0x39, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xc8
    db 0x8b, 0x46, 0xfc, 0x03, 0xc8, 0x8b, 0xd9, 0x8a, 0x87, 0x5a, 0x5d, 0x2a, 0xe4, 0x50, 0x8b, 0x46
    db 0x08, 0xf7, 0xe8, 0x8b, 0xc8, 0x05, 0x04, 0x00, 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfe
    db 0x3d, 0x00, 0x00, 0x7d, 0x05, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0x8a, 0x46, 0xfe, 0x88, 0x87, 0x5a
    db 0x5d, 0xff, 0x46, 0xfc, 0x8b, 0x46, 0xfc, 0x3d, 0x09, 0x00, 0x7e, 0xa0, 0xff, 0x76, 0x0a, 0xe8
    db 0xd1, 0xfb, 0x59, 0xe9, 0xba, 0x03, 0xb8, 0x00, 0x00, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x03, 0x8b
    db 0x46, 0x0a, 0x89, 0x46, 0xfe, 0xa1, 0xc8, 0x69, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x04, 0x8b, 0x46
    db 0x0a, 0x40, 0x89, 0x46, 0xfc, 0xb8, 0x04, 0x00, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x03, 0xb8, 0x07
    db 0x00, 0x89, 0x46, 0xfa, 0xb8, 0x00, 0x00, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x03, 0x8b, 0x46, 0x08
    db 0x89, 0x46, 0xf8, 0xeb, 0x73, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0xff, 0xb7, 0x0e
    db 0x5c, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf8, 0xff, 0x76, 0xfa, 0xff, 0x76, 0x08, 0xe8, 0xcc
    db 0xaa, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4, 0x8c, 0xd2, 0x8e, 0xc2, 0x8b
    db 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0x89, 0xaa, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x48, 0x02, 0xf7
    db 0x6e, 0xfe, 0x8b, 0xd8, 0x58, 0x03, 0x87, 0x0c, 0x5c, 0x50, 0xe8, 0x78, 0x91, 0x83, 0xc4, 0x06
    db 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x58, 0x89, 0x87, 0x0c, 0x5c, 0x83, 0x87
    db 0xfc, 0x5b, 0x01, 0x83, 0x97, 0xfe, 0x5b, 0x00, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x07, 0xff, 0x76
    db 0xfe, 0xe8, 0x1f, 0xfb, 0x59, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3b, 0x46, 0xfc, 0x7c, 0x85
    db 0xe9, 0xfd, 0x02, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x80, 0xbf, 0x2f, 0x5e, 0x03
    db 0x74, 0x03, 0xe9, 0x82, 0x00, 0xb8, 0x03, 0x00, 0xf7, 0x6e, 0x08, 0x50, 0x8a, 0x87, 0x67, 0x5d
    db 0x2a, 0xe4, 0x8b, 0xd0, 0xb9, 0x15, 0x00, 0x2b, 0xc8, 0x58, 0x3b, 0xc1, 0x7e, 0x69, 0xfe, 0x8f
    db 0x67, 0x5d, 0xc6, 0x87, 0x2f, 0x5e, 0x00, 0xff, 0xb7, 0x0e, 0x5c, 0xb8, 0x01, 0x00, 0x50, 0x8b
    db 0x87, 0x0e, 0x5c, 0xb9, 0x03, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0xf8, 0x90, 0x83, 0xc4, 0x06
    db 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x58, 0x89, 0x87, 0x0c, 0x5c, 0x8b, 0x87
    db 0x12, 0x5c, 0xb9, 0x0a, 0x00, 0x99, 0xf7, 0xf9, 0x89, 0x87, 0x10, 0x5c, 0xff, 0x87, 0x1a, 0x5c
    db 0xb8, 0xb7, 0x00, 0x50, 0xe8, 0xb5, 0x90, 0x59, 0x05, 0x6d, 0x01, 0x99, 0x50, 0x52, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x5a, 0x58, 0x01, 0x87, 0xfc, 0x5b, 0x11, 0x97, 0xfe, 0x5b
    db 0xff, 0x76, 0x0a, 0xe8, 0x7d, 0xfa, 0x59, 0xe9, 0x66, 0x02, 0xff, 0x76, 0x08, 0xb8, 0x08, 0x00
    db 0x50, 0xff, 0x76, 0x08, 0xe8, 0xc6, 0xa9, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b
    db 0xc4, 0x8c, 0xd2, 0x8e, 0xc2, 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0x83, 0xa9, 0x83, 0xc4
    db 0x04, 0x89, 0x46, 0xfe, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x01, 0x87
    db 0x10, 0x5c, 0x8b, 0x87, 0x10, 0x5c, 0x3b, 0x87, 0x12, 0x5c, 0x7e, 0x08, 0x8b, 0x87, 0x12, 0x5c
    db 0x89, 0x87, 0x10, 0x5c, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xff, 0x76, 0x08, 0xe8
    db 0x7b, 0xa9, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4, 0x8c, 0xd2, 0x8e, 0xc2
    db 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0x38, 0xa9, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xfe, 0x50
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x01, 0x87, 0x0c, 0x5c, 0x8b, 0x87, 0x0c
    db 0x5c, 0x3b, 0x87, 0x0e, 0x5c, 0x7e, 0x08, 0x8b, 0x87, 0x0e, 0x5c, 0x89, 0x87, 0x0c, 0x5c, 0xe9
    db 0xce, 0x01, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xff
    db 0x76, 0x08, 0xe8, 0x28, 0xa9, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4, 0x8c
    db 0xd2, 0x8e, 0xc2, 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0xe5, 0xa8, 0x83, 0xc4, 0x04, 0x89
    db 0x46, 0xfc, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8b, 0x56, 0xfe, 0xd1, 0xe2
    db 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x58, 0x01, 0x87, 0x1c, 0x5c, 0x8b, 0x87, 0x1c, 0x5c, 0x3b
    db 0x87, 0x1e, 0x5c, 0x7e, 0x08, 0x8b, 0x87, 0x1e, 0x5c, 0x89, 0x87, 0x1c, 0x5c, 0xff, 0x46, 0xfe
    db 0x8b, 0x46, 0xfe, 0x3d, 0x06, 0x00, 0x7c, 0x9f, 0xe9, 0x65, 0x01, 0xe8, 0x66, 0xdf, 0xa3, 0xee
    db 0x8a, 0x3d, 0xff, 0xff, 0x74, 0x47, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x50, 0xb8, 0x78, 0x00
    db 0xf7, 0x2e, 0x34, 0x94, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x2e, 0xee
    db 0x8a, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x8b, 0xd8, 0x83, 0xbf, 0x34, 0x5c, 0x00, 0x7e, 0x1e, 0xff
    db 0x76, 0x08, 0xb8, 0x16, 0x00, 0xf7, 0x2e, 0xee, 0x8a, 0x05, 0x36, 0x94, 0x50, 0x81, 0xc3, 0x34
    db 0x5c, 0x8b, 0xc3, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x63, 0x48, 0x83, 0xc4, 0x08, 0xe9, 0x10, 0x01
    db 0xc7, 0x46, 0xfc, 0x00, 0x00, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xb8, 0x64, 0x00, 0x50, 0xe8, 0x2b
    db 0x8f, 0x59, 0x50, 0xb8, 0x0f, 0x00, 0xf7, 0x6e, 0x08, 0x8b, 0xc8, 0x58, 0x3b, 0xc1, 0x7d, 0x2d
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x50, 0xb8, 0x78, 0x00, 0xf7, 0x6e, 0xfc, 0x8b, 0xc8, 0x58
    db 0x03, 0xc1, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x6e, 0xfe, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x8b, 0xd8
    db 0x8a, 0x87, 0x3b, 0x5c, 0x2a, 0xe4, 0x25, 0xfd, 0xff, 0x88, 0x87, 0x3b, 0x5c, 0xff, 0x46, 0xfe
    db 0x8b, 0x46, 0xfe, 0x3d, 0x0a, 0x00, 0x7c, 0xb2, 0xff, 0x46, 0xfc, 0x8b, 0x46, 0xfc, 0x3d, 0x02
    db 0x00, 0x7c, 0xa2, 0xe9, 0xaa, 0x00, 0xe8, 0xab, 0xde, 0xa3, 0xee, 0x8a, 0x3d, 0xff, 0xff, 0x74
    db 0x39, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x50, 0xb8, 0x78, 0x00, 0xf7, 0x2e, 0x34, 0x94, 0x8b
    db 0xc8, 0x58, 0x03, 0xc1, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x2e, 0xee, 0x8a, 0x8b, 0xc8

@..local.l54:
    pop ax
    add ax, cx
@..local.l55:
    mov bx, ax
    cmp word [bx + 0x5c34], byte 0
    jle short @..local.l56
    push word [bp + 0x8]
    add ax, 0x5c34
    push ax
    push word [bp + 0x4]
    call api_idx_009a
    add sp, byte 6
@..local.l56:
    jmp short 0x297d
@..local.l57:
    mov cx, 0x18
    call leaf_loc_982c
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
    db 0x00, 0x40, 0x00 ; add byte [bx + si], al
    inc dx
    db 0x00, 0x45, 0x00 ; add byte [di], al
    dec si
    db 0x00, 0x52, 0x00 ; add byte [bp + si], dl
    push sp
@..local.l61:
    db 0x00, 0x57, 0x00 ; add byte [bx], dl
    pop ax
    db 0x00, 0x5c, 0x00 ; add byte [si], bl
    pop si
    db 0x00, 0x61, 0x00 ; add byte [bx + di], ah
    bound ax, dword [bx + si]
    or si, word [bp + di - 0x0042]
    jae short 0x295d
    jae short @..local.l66
@..local.l64:
    jne short 0x294c
    jae short 0x2924
    jb short 0x2933
    jb short @..local.l55
    jb short 0x29b3
    je short @..local.l54
    jne short 0x29b2
    jb short 0x29c3
    js short 0x29b2
    db 0x75, 0xe4 ; jne short 0x294c
    je short @..local.l67
    jbe short 0x29e4
    jb short @..local.l64
    jb short 0x2924
@..local.l66:
    js short @..local.l68
    jbe short @..api_idx_0004_4.l1
@..local.l67:
    jns short 0x293d
    jbe short 0x29d6
    ja short @..local.l66
    ja short @..local.l61
@..local.l68:
    jns short 0x2941
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
    jne short @..api_idx_0004_4.l6
    push word [bp - 0x0002]
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0004_4.l6
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
    mov word [bx - 0x6aee], ax
    inc word [bp - 0x0004]
@..api_idx_0004_4.l6:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x66
    jl short @..api_idx_0004_4.l1
    mov ax, word [bp - 0x0004]
    ret
api_idx_000a_2:
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
math_loc_2a2d:
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
    je short @..math_loc_2a2d.l1
    mov ax, 1
@..math_loc_2a2d.l1:
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
    mov ax, data_0002
    push ax
    mov ax, word [bp + 0x8]
    inc ax
    sub ah, ah
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    cmp word [bp + 0x8], byte 0
    jne short @..math_loc_2a2d.l2
    cmp word [bp + 0xa], byte 0
    jne short @..math_loc_2a2d.l2
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
@..math_loc_2a2d.l2:
    ret
loc_2ab9:
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
    jle short @..local.l70
    mov ax, word [bp + 0xa]
    cmp ax, word [bp + 0xc]
    jg short @..local.l70
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
    jmp short @..local.l71
@..local.l70:
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x90a7
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
@..local.l71:
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
    mov cx, data_0002
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
loc_2bf3:
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
    mov ax, word [data_9562]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [data_9092]
    mov dx, word [data_9094]
    cmp bx, dx
    jg short @..local.l72
    jne short @..local.l73
    cmp cx, ax
    jbe short @..local.l73
@..local.l72:
    jmp short @..local.l74
@..local.l73:
    mov ax, word [data_908e]
    mov dx, word [data_9090]
    mov word [data_908c], dx
    mov word [data_908a], ax
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
    call ds_dispatch_e8da
    add sp, byte 8
@..local.l74:
    ret
api_idx_0050:
    mov ax, 0xffb0
    call ds_dispatch_f40b
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
    mov ax, data_0002
    push ax
    mov ax, 0xa
    push ax
    call ds_dispatch_e830
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
    call math_loc_2a2d
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
    call loc_2ab9
    add sp, byte 0x0a
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call api_idx_0004_4
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
    mov ax, data_0002
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
@..local.l75:
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
    jl short @..local.l75
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
    mov ax, data_0044
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
    jge short @..local.l76
    mov ax, word [bp - 0x0044]
@..local.l76:
    mov word [bp - 0x0020], ax
    mov word [bp - 0x0002], 0
@..local.l77:
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
    jl short @..local.l77
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
    mov word [data_9562], 7
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    mov word [bp - 0x001c], 1
@..local.l78:
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call loc_2bf3
    add sp, byte 4
    mov ax, 0x59fe
    push ax
    call ds_dispatch_b90d
    pop cx
    dec ax
    mov word [bp - 0x001a], ax
    cmp word [data_59fc], byte 0
    je short @..local.l82
    mov ax, word [bp - 0x0022]
    cmp ax, word [bp - 0x0018]
    jl short @..local.l79
    inc word [bp - 0x0022]
@..local.l79:
    mov ax, word [bp - 0x0022]
    cmp ax, strict word 0xffff
    je short @..local.l80
    cmp ax, word [bp - 0x0018]
    jl short @..local.l80
    mov ax, word [bp - 0x0018]
    add ax, word [bp - 0x0020]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp - 0x0022]
    cmp cx, ax
    jge short @..local.l81
@..local.l80:
    mov ax, word [bp - 0x0018]
    mov word [bp - 0x0022], ax
@..local.l81:
    mov word [data_5b3e], 1
    mov ax, word [bp - 0x0022]
    sub ax, word [bp - 0x0018]
    add ax, strict word 0x12
    mov word [bp - 0x001a], ax
@..local.l82:
    cmp word [data_5b3e], byte 1
    je short @..local.l83
    jmp near @..local.l107
@..local.l83:
    mov ax, word [bp - 0x001a]
    jmp near @..local.l105

    db 0x8d, 0x46, 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x8b, 0xbe, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xee, 0x83
    db 0xc1, 0x2a, 0x2b, 0xc1, 0x50, 0xe8, 0xdd, 0x85, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xea, 0x8d, 0x46
    db 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x5d, 0xbe, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe2, 0xff
    db 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x2a, 0x2b
    db 0xc1, 0x2b, 0x46, 0xea, 0x50, 0xe8, 0xad, 0x85, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xee, 0x83, 0x7e
    db 0xbc, 0x07, 0x7e, 0x20, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xec, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xfa, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7
    db 0xf9, 0x89, 0x46, 0xe8, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x34, 0x8d, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x56, 0x8d, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xf3, 0x87, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x05, 0xb6, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe2, 0x00, 0x74
    db 0x03, 0xe9, 0x0a, 0xff, 0xe9, 0x13, 0x06, 0x83, 0x7e, 0xe6, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x28, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0xab, 0x8b
    db 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xe8, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xe8, 0xeb, 0x34, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x46, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0x7a
    db 0x8b, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xbc, 0x05, 0xf9, 0xff, 0x3b, 0x46, 0xe8, 0x7e, 0x03, 0xff
    db 0x46, 0xe8, 0x83, 0x7e, 0xbc, 0x07, 0x7e, 0x2c, 0xff, 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x64, 0x00, 0xf7, 0x6e, 0xec, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xf9, 0x99, 0xf7
    db 0xf9, 0xf7, 0x6e, 0xe8, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0x47, 0x84, 0x83, 0xc4
    db 0x06, 0x89, 0x46, 0xee, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0xf4, 0x8b, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x16, 0x8c, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xb3, 0x86, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xc5, 0xb4, 0x83, 0xc4, 0x08, 0xe9, 0xdc, 0x04, 0x83, 0x7e
    db 0x08, 0x00, 0x75, 0x03, 0xe9, 0xa1, 0x00, 0x83, 0x7e, 0xc4, 0x00, 0x7d, 0x03, 0xe9, 0x8a, 0x00
    db 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x3c, 0x8b, 0x46, 0xc2, 0x3b, 0x46, 0xc0, 0x7e, 0x03, 0xe9, 0x79
    db 0x00, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xc4, 0x8b, 0xd8, 0x8a, 0x87, 0x22, 0x06, 0x2a, 0xe4, 0x8b
    db 0x4e, 0xc2, 0x41, 0xf7, 0xe9, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8b, 0x56
    db 0xbe, 0xd1, 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x8b, 0x8f, 0x1c, 0x5c, 0x58, 0x3b, 0xc1
    db 0x7f, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xd6, 0x89, 0x83, 0xc4, 0x0a, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xb6, 0x89, 0x83, 0xc4, 0x0a, 0xc7
    db 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x08
    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x1c, 0x83, 0x59, 0xe9, 0x2f, 0x04, 0xb8, 0x01, 0x00, 0x50, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x7d, 0x89, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x5d, 0x89, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46
    db 0xe4, 0x00, 0x00, 0xe9, 0xe4, 0x03

@..local.l84:
    cmp word [bp - 0x001a], byte 5
    jge short @..local.l85
    jmp near @..local.l93
@..local.l85:
    cmp word [bp - 0x001a], byte 0x0b
    jle short @..local.l86
    jmp near @..local.l93
@..local.l86:
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
    jge short @..local.l87
    jmp near @..local.l91
@..local.l87:
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
    jne short @..local.l88
    mov ax, 0x3e7
    jmp short @..local.l90
@..local.l88:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short @..local.l89
    jmp short @..local.l90
@..local.l89:
    mov ax, word [bp - 0x0002]
@..local.l90:
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
    jmp short @..local.l92
@..local.l91:
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
@..local.l92:
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
    jmp near @..local.l104
@..local.l93:
    cmp word [bp - 0x001a], byte 0x0c
    jge short @..local.l94
    jmp near @..local.l98
@..local.l94:
    cmp word [bp - 0x001a], byte 0x11
    jle short @..local.l95
    jmp near @..local.l98
@..local.l95:
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
    jge short @..local.l96
    mov ax, word [bp - 0x0044]
@..local.l96:
    mov word [bp - 0x0024], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short @..local.l97
    mov ax, word [bp - 0x0044]
@..local.l97:
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
    jmp near @..local.l104
@..local.l98:
    cmp word [bp - 0x001a], byte 0x12
    jge short @..local.l99
    jmp near @..local.l104
@..local.l99:
    mov ax, word [bp - 0x0020]
    add ax, strict word 0x12
    cmp ax, word [bp - 0x001a]
    jg short @..local.l100
    jmp near @..local.l104
@..local.l100:
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
    jne short @..local.l101
    mov ax, 0x3e7
    jmp short @..local.l103
@..local.l101:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short @..local.l102
    jmp short @..local.l103
@..local.l102:
    mov ax, word [bp - 0x0002]
@..local.l103:
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
@..local.l104:
    jmp short @..local.l107
    db 0x04, 0x82, 0x2b, 0x83, 0x2b, 0x83, 0x62, 0x84, 0x0f, 0x85
@..local.l105:
    cmp ax, strict word 5
    jae short @..local.l106
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x76dc]
@..local.l106:
    jmp near @..local.l84
@..local.l107:
    cmp word [bp - 0x001c], byte 0
    je short @..local.l108
    jmp near @..local.l78
@..local.l108:
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
    mov word [bp - 0x0002], 0
@..local.l109:
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
    jl short @..local.l109
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
api_idx_0004_5:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    push word [bp + 0x6]
    push word [bp + 0x6]
    mov ax, 0x7f1
    cmp word [bp + 0x6], byte 0
    je short @..api_idx_0004_5.l1
    mov ax, 0x7ea
@..api_idx_0004_5.l1:
    push ax
    push word [bp + 0x4]
    call api_idx_0050
    add sp, byte 8
    test ax, ax
    je short @..api_idx_0004_5.l2
    jmp near @..api_idx_0004_5.l6
@..api_idx_0004_5.l2:
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
    jne short @..api_idx_0004_5.l3
    call api_idx_0012_2
    mov word [data_9564], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0004_5.l3
    mov word [bp - 0x0002], 0xffff
@..api_idx_0004_5.l3:
    cmp word [bp - 0x0002], byte 0
    jge short @..api_idx_0004_5.l4
    jmp near @..api_idx_0004_5.l6
@..api_idx_0004_5.l4:
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
    jge short @..api_idx_0004_5.l5
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
@..api_idx_0004_5.l5:
    push word [data_9564]
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_0008_2
    add sp, byte 8
@..api_idx_0004_5.l6:
    ret
math_loc_3a6a:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0xbb
    push ax
    mov ax, 0xab
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    call ds_dispatch_ec17
@..math_loc_3a6a.l1:
    call ds_dispatch_baef
    test ax, ax
    jne short @..math_loc_3a6a.l2
    jmp short @..math_loc_3a6a.l1
@..math_loc_3a6a.l2:
    mov ax, 0
    push ax
    push ax
    push word [data_93f8]
    push word [data_93f6]
    call ds_dispatch_e942
    add sp, byte 8
    mov word [data_9566], 0
    ret
api_idx_0004_6:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    cmp word [data_9566], byte 5
    jle short @..api_idx_0004_6.l1
    call math_loc_3a6a
@..api_idx_0004_6.l1:
    mov bx, word [bp + 0x4]
    cmp byte [bx], 0
    jne short @..local.l110
    inc word [data_9566]
    ret
@..local.l110:
    mov ax, data_0002
    push ax
    push bx
    call ds_dispatch_e883
    add sp, byte 4
    inc ax
    mov cx, data_0002
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x54
    sub ax, cx
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call ds_dispatch_fa90
    pop cx
    dec ax
    mov word [bp - 0x0004], ax
    mov bx, word [bp + 0x4]
    mov si, ax
    mov al, byte [bx + si]
    sub ah, ah
    jmp short @..local.l113
@..local.l111:
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], 0
    mov word [bp - 0x0002], 4
    jmp short @..local.l114
@..local.l112:
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], 0
    mov ax, word [data_9568]
    mov word [bp - 0x0002], ax
    jmp short @..local.l114
@..local.l113:
    cmp ax, strict word 0x24
    je short @..local.l111
    cmp ax, strict word 0x5e
    je short @..local.l112
@..local.l114:
    mov ax, 0xc
    imul word [data_9566]
    add ax, strict word 0x70
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, data_0002
    push ax
    push word [bp + 0x4]
    call ds_dispatch_e84e
    add sp, byte 4
    mov bx, word [bp + 0x4]
    mov byte [bx], 0
    mov ax, word [bp - 0x0002]
    mov word [data_9568], ax
    inc word [data_9566]
    ret
api_idx_0084:
    mov ax, 0xff7c
    call ds_dispatch_f40b
    mov bx, word [bp + 0x4]
    cmp byte [bx], 0x21
    jne short @..api_idx_0084.l1
    inc word [bp + 0x4]
    mov ax, data_956a
    push ax
    call api_idx_0004_6
    pop cx
    jmp short @..api_idx_0084.l2
@..api_idx_0084.l1:
    mov bx, word [bp + 0x4]
    cmp byte [bx], data_0040
    jne short @..api_idx_0084.l2
    inc word [bp + 0x4]
    mov ax, data_956a
    push ax
    call api_idx_0004_6
    pop cx
    call math_loc_3a6a
@..api_idx_0084.l2:
    cmp byte [data_956a], 0
    je short @..api_idx_0084.l3
    mov ax, data_956a
    push ax
    lea ax, word [bp - 0x0084]
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov ax, 0x90b1
    push ax
    lea ax, word [bp - 0x0084]
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
    push word [bp + 0x4]
    lea ax, word [bp - 0x0084]
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
    jmp short @..api_idx_0084.l4
@..api_idx_0084.l3:
    push word [bp + 0x4]
    lea ax, word [bp - 0x0084]
    push ax
    call ds_dispatch_f364
    add sp, byte 4
@..api_idx_0084.l4:
    mov ax, data_0002
    push ax
    lea ax, word [bp - 0x0084]
    push ax
    call ds_dispatch_e883
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, 0xa8
    jle short @..api_idx_0084.l5
    mov ax, data_956a
    push ax
    call api_idx_0004_6
    pop cx
    push word [bp + 0x4]
    mov ax, data_956a
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    jmp short @..api_idx_0084.l6
@..api_idx_0084.l5:
    lea ax, word [bp - 0x0084]
    push ax
    mov ax, data_956a
    push ax
    call ds_dispatch_f364
    add sp, byte 4
@..api_idx_0084.l6:
    ret
api_idx_0004_7:
    mov ax, 0xfffc
    call ds_dispatch_f40b
@..api_idx_0004_7.l1:
    mov ax, 0x20
    push ax
    push word [bp + 0x4]
    call ds_dispatch_ee4a
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short @..api_idx_0004_7.l4
    mov bx, word [bp + 0x4]
    mov si, ax
    mov byte [bx + si], 0
@..api_idx_0004_7.l2:
    mov ax, 0x5f
    push ax
    push word [bp + 0x4]
    call ds_dispatch_ee4a
    add sp, byte 4
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    je short @..api_idx_0004_7.l3
    mov bx, word [bp + 0x4]
    mov si, ax
    mov byte [bx + si], 0x20
    jmp short @..api_idx_0004_7.l2
@..api_idx_0004_7.l3:
    push word [bp + 0x4]
    call api_idx_0084
    pop cx
    mov ax, word [bp - 0x0002]
    add word [bp + 0x4], ax
    add word [bp + 0x4], byte 1
    jmp short @..api_idx_0004_7.l1
@..api_idx_0004_7.l4:
    mov bx, word [bp + 0x4]
    cmp byte [bx], 0
    je short @..api_idx_0004_7.l5
    push bx
    call api_idx_0084
    pop cx
@..api_idx_0004_7.l5:
    ret
api_idx_0056:
    mov ax, 0xffaa
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    push ax
    push word [data_93f8]
    push word [data_93f6]
    call ds_dispatch_e942
    add sp, byte 8
    mov word [data_9568], 4
    mov word [data_9566], 0
    mov byte [data_956a], 0
@..api_idx_0056.l1:
    lea ax, word [bp - 0x0056]
    push ax
    push word [bp + 0x4]
    call ds_dispatch_b53b
    add sp, byte 4
    cmp word [data_5216], byte 0
    jne short @..api_idx_0056.l2
    lea ax, word [bp - 0x0056]
    push ax
    call api_idx_0004_7
    pop cx
    inc word [bp + 0x4]
@..api_idx_0056.l2:
    cmp word [data_5216], byte 0
    je short @..api_idx_0056.l1
    cmp byte [data_956a], 0
    je short @..api_idx_0056.l3
    mov ax, data_956a
    push ax
    call api_idx_0004_6
    pop cx
@..api_idx_0056.l3:
    call math_loc_3a6a
    ret
math_loc_3cde:
    mov ax, 0
    call ds_dispatch_f40b
    mov bx, word [bp + 0x4]
    cmp byte [bx + 0x6], 0
    jbe short @..math_loc_3cde.l1
    dec byte [bx + 0x6]
    mov bx, word [bp + 0x4]
    cmp byte [bx + 0x6], 0
    jne short @..math_loc_3cde.l1
    mov word [bx], 0
@..math_loc_3cde.l1:
    ret
api_idx_009e_2:
    mov ax, 0xff62
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    mov bx, word [bp + 0x6]
    push word [bx]
    lea ax, word [bp - 0x004a]
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_b63c
    add sp, byte 8
    cmp byte [bp - 0x000b], 0
    ja short @..api_idx_009e_2.l1
    jmp near @..local.l117
@..api_idx_009e_2.l1:
    mov al, byte [bp - 0x000b]
    sub ah, ah
    jmp near @..local.l115
    call api_idx_0012_3
    mov word [data_8aee], ax
    cmp ax, strict word 0xffff
    je short @..api_idx_009e_2.l2
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [api_idx_0016]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [data_8aee]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x5c34], strict word 0x1d7
    jne short @..api_idx_009e_2.l2
    mov ax, 0x4c18
    push ax
    call api_idx_0056
    pop cx
@..api_idx_009e_2.l2:
    jmp near @..local.l116
    push word [bp - 0x0024]
    call api_idx_0056
    pop cx
    jmp near @..local.l116
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    push ax
    lea ax, word [bp - 0x0018]
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    jne short @..api_idx_009e_2.l3
    jmp near @..api_idx_009e_2.l6
@..api_idx_009e_2.l3:
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
    jle short @..api_idx_009e_2.l4
    lea ax, word [bp - 0x009e]
    push ax
    mov ax, 0x2d1
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 1
    push ax
    lea ax, word [bp - 0x009e]
    push ax
    call api_idx_0004
    add sp, byte 4
    jmp short @..api_idx_009e_2.l5
@..api_idx_009e_2.l4:
    mov ax, 1
    push ax
    push word [bp - 0x004c]
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    lea ax, word [bp - 0x009e]
    push ax
    mov ax, 0x2d0
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 1
    push ax
    lea ax, word [bp - 0x009e]
    push ax
    call api_idx_0004
    add sp, byte 4
    mov bx, word [bp + 0x6]
    mov word [bx], 0
@..api_idx_009e_2.l5:
    jmp short @..api_idx_009e_2.l7
@..api_idx_009e_2.l6:
    lea ax, word [bp - 0x009e]
    push ax
    mov ax, 0x2d2
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 1
    push ax
    lea ax, word [bp - 0x009e]
    push ax
    call api_idx_0004
    add sp, byte 4
@..api_idx_009e_2.l7:
    jmp near @..local.l116
    mov ax, word [data_830c]
    cmp ax, word [bp - 0x002c]
    jne short @..api_idx_009e_2.l8
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
    call ds_dispatch_ec41
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
    call ds_dispatch_ec41
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
    call ds_dispatch_ec41
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
    call ds_dispatch_ec41
    add sp, byte 6
    push word [bp + 0x6]
    call math_loc_3cde
    pop cx
@..api_idx_009e_2.l8:
    jmp near @..local.l116
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e32], 3
    jae short @..api_idx_009e_2.l9
    mov byte [bx + 0x5e32], 3
@..api_idx_009e_2.l9:
    mov ax, 0xfa
    push ax
    mov ax, 0
    push ax
    mov al, byte [bx + 0x5d5f]
    sub ah, ah
    add ax, 0xc8
    push ax
    call ds_dispatch_b7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5d5f], al

    db 0xb8, 0xfa, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8a, 0x87, 0x62, 0x5d, 0x2a, 0xe4, 0x05, 0xc8
    db 0x00, 0x50, 0xe8, 0xaf, 0x78, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b
    db 0xd8, 0x58, 0x88, 0x87, 0x62, 0x5d, 0xff, 0x76, 0x06, 0xe8, 0xb4, 0xfd, 0x59, 0xb8, 0x48, 0x02
    db 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x8a, 0x87, 0x2c, 0x5e, 0x2a, 0xe4, 0x05, 0x08, 0x00, 0x50, 0xe8
    db 0xa0, 0x78, 0x59, 0xe9, 0x77, 0x00, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xb8, 0x48, 0x02, 0xf7, 0x6e
    db 0x04, 0x8b, 0xd8, 0x80, 0xbf, 0x6b, 0x5d, 0x00, 0x76, 0x17, 0x83, 0x7e, 0xfe, 0x00, 0x75, 0x11
    db 0xfe, 0x8f, 0x6b, 0x5d, 0xb8, 0x03, 0x00, 0x50, 0xe8, 0x40, 0x78, 0x59, 0x89, 0x46, 0xfe, 0xeb
    db 0xda, 0xff, 0x76, 0x06, 0xe8, 0x69, 0xfd, 0x59, 0xeb, 0x43, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x03
    db 0x00, 0x50, 0xb8, 0x14, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x7c, 0x10, 0x83, 0xc4, 0x08, 0xff
    db 0x76, 0x06, 0xe8, 0x4b, 0xfd, 0x59, 0xeb, 0x25, 0x02, 0x90, 0x73, 0x8d, 0xb3, 0x8d, 0xbd, 0x8d
    db 0x89, 0x8e, 0x02, 0x90, 0x0b, 0x8f, 0x02, 0x90, 0x02, 0x90, 0x02, 0x90, 0x8b, 0x8f, 0xbf, 0x8f

@..local.l115:
    cmp ax, strict word 0xc
    jae short @..local.l116
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7023]
@..local.l116:
    jmp short @..local.l120
@..local.l117:
    cmp word [bp - 0x0028], byte 0
    je short @..local.l119
    mov ax, word [bp - 0x0028]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x004e], ax
    mov word [bp - 0x004c], dx
    mov ax, 6
    imul dx
    mov bx, ax
    cmp byte [bx + 0x624], 1
    jne short @..local.l118
    call api_idx_0012_2
    mov word [data_9564], ax
    cmp ax, strict word 0xffff
    jne short @..local.l118
    ret
@..local.l118:
    push word [data_9564]
    push word [bp - 0x004e]
    push word [bp - 0x004c]
    push word [bp + 0x4]
    call api_idx_0008_2
    add sp, byte 8
    push word [bp + 0x6]
    call math_loc_3cde
    pop cx
    jmp short @..local.l120
@..local.l119:
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
@..local.l120:
    ret
math_loc_4011:
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
    mov ax, word [data_9562]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [data_9092]
    mov dx, word [data_9094]
    cmp bx, dx
    jg short @..math_loc_4011.l1
    jne short @..math_loc_4011.l2
    cmp cx, ax
    jbe short @..math_loc_4011.l2
@..math_loc_4011.l1:
    jmp short @..math_loc_4011.l3
@..math_loc_4011.l2:
    mov ax, word [data_908e]
    mov dx, word [data_9090]
    mov word [data_908c], dx
    mov word [data_908a], ax
    mov ax, word [data_9432]
    inc ax
    mov cx, 3
    cwd
    idiv cx
    mov word [data_9432], dx
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
    call ds_dispatch_e8da
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
    call ds_dispatch_e8da
    add sp, byte 8
@..math_loc_4011.l3:
    ret
math_loc_40b7:
    mov ax, 0
    call ds_dispatch_f40b
    push word [bp + 0x4]
    call api_idx_007c
    pop cx
    push word [bp + 0x4]
    call api_idx_0080
    pop cx
    cmp word [bp + 0x6], byte 0
    jne short @..math_loc_40b7.l1
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
    call ds_dispatch_e8da
    add sp, byte 8
@..math_loc_40b7.l1:
    ret
api_idx_0084_2:
    mov ax, 0xff7c
    call ds_dispatch_f40b
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0008], 0
    mov ax, word [data_0040]
    mov word [bp - 0x0002], ax
    jmp short @..api_idx_0084_2.l3
@..api_idx_0084_2.l1:
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short @..api_idx_0084_2.l2
    mov word [bp - 0x0008], 1
@..api_idx_0084_2.l2:
    inc word [bp - 0x0002]
@..api_idx_0084_2.l3:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_0042]
    jle short @..api_idx_0084_2.l1
    mov word [bp - 0x000a], 0
    mov word [bp - 0x000c], 0
@..api_idx_0084_2.l4:
    lea ax, word [bp - 0x0034]
    push ax
    push word [bp - 0x0004]
    push word [bp + 0x4]
    call api_idx_0004_12
    add sp, byte 6
    mov word [bp - 0x0006], ax
    lea ax, word [bp - 0x0034]
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    push word [bp + 0x4]
    call api_idx_0002_8
    add sp, byte 8
    mov word [bp - 0x0002], 0
@..api_idx_0084_2.l5:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0020], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jle short @..api_idx_0084_2.l5
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
    call ds_dispatch_b53b
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
    push word [data_9052]
    lea ax, word [bp - 0x0084]
    push ax
    call api_idx_0008
    add sp, byte 0x12
    mov ax, word [bp - 0x000a]
    cmp ax, word [bp - 0x0004]
    je short @..api_idx_0084_2.l6
    lea ax, word [bp - 0x0084]
    push ax
    mov ax, word [bp - 0x000a]
    add ax, 0x258
    push ax
    call ds_dispatch_b53b
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
@..api_idx_0084_2.l6:
    mov ax, word [bp - 0x0004]
    mov word [bp - 0x000a], ax
    mov ax, word [data_9052]
    mov word [bp - 0x000c], ax
    cmp word [bp - 0x0004], byte 4
    je short @..api_idx_0084_2.l7
    jmp near @..api_idx_0084_2.l4
@..api_idx_0084_2.l7:
    ret
api_idx_0048:
    mov ax, 0xffb8
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    push word [bp + 0x4]
    lea ax, word [bp - 0x0048]
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_b63c
    add sp, byte 8
    lea ax, word [bp - 0x0048]
    push ax
    push word [bp + 0xa]
    call ds_dispatch_f364
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
    call ds_dispatch_d0be
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
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    mov bx, word [bp + 0x4]
    push word [bx]
    lea ax, word [bp - 0x004a]
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_b63c
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
    jge short @..api_idx_004e.l1
    jmp short @..api_idx_004e.l2
@..api_idx_004e.l1:
    mov ax, word [bp - 0x0024]
@..api_idx_004e.l2:
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
    ja short @..api_idx_004e.l3
    mov word [bx], 0
@..api_idx_004e.l3:
    ret
api_idx_0002_4:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov word [bp - 0x0002], 0
@..api_idx_0002_4.l1:
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx + 0xb1a]
    mov bx, word [bp + 0x4]
    mov cx, word [bx]
    cmp ax, cx
    jne short @..api_idx_0002_4.l2
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx + 0xb1c]
    mov bx, word [bp + 0x6]
    mov cx, word [bx]
    cmp ax, cx
    je short @..api_idx_0002_4.l3
@..api_idx_0002_4.l2:
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx + 0xb1c]
    mov bx, word [bp + 0x4]
    mov cx, word [bx]
    cmp ax, cx
    jne short @..local.l123
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx + 0xb1a]
    mov bx, word [bp + 0x6]
    mov cx, word [bx]
    cmp ax, cx
    jne short @..local.l123
@..api_idx_0002_4.l3:
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x7]
    sub ah, ah
    test ax, 0x20
    je short @..local.l121
    push word [bp + 0x6]
    push bx
    call api_idx_004e
    add sp, byte 4
    mov ax, 1
    ret
@..local.l121:
    mov bx, word [bp + 0x6]
    mov al, byte [bx + 0x7]
    sub ah, ah
    test ax, 0x20
    je short @..local.l122
    push word [bp + 0x4]
    push bx
    call api_idx_004e
    add sp, byte 4
    mov ax, 1
    ret
@..local.l122:
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
@..local.l123:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xf
    jge short @..local.l124
    jmp near @..api_idx_0002_4.l1
@..local.l124:
    mov ax, 0
    ret
api_idx_0002_5:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov bx, word [bp + 0x4]
    mov ax, word [bx]
    mov bx, word [bp + 0x6]
    mov cx, word [bx]
    cmp ax, cx
    je short @..api_idx_0002_5.l1
    jmp near @..api_idx_0002_5.l7
@..api_idx_0002_5.l1:
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x4]
    sub ah, ah
    mov bx, ax
    cmp byte [bx + 0x60e], 1
    je short @..api_idx_0002_5.l2
    jmp near @..api_idx_0002_5.l7
@..api_idx_0002_5.l2:
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
    je short @..api_idx_0002_5.l3
    mov bx, word [bp + 0x6]
    mov al, byte [bx + 0x7]
    sub ah, ah
    or ax, 0x80
    mov byte [bx + 0x7], al
    push word [bp + 0x8]
    push word [bp + 0xa]
    call ds_dispatch_f364
    add sp, byte 4
@..api_idx_0002_5.l3:
    mov bx, word [bp + 0x6]
    mov al, byte [bx + 0x7]
    sub ah, ah
    test ax, 0x80
    je short @..api_idx_0002_5.l4
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x7]
    sub ah, ah
    or ax, 0x80
    mov byte [bx + 0x7], al
    push word [bp + 0xa]
    push word [bp + 0x8]
    call ds_dispatch_f364
    add sp, byte 4
@..api_idx_0002_5.l4:
    cmp word [bp - 0x0002], strict word 0xfa
    jg short @..api_idx_0002_5.l5
    mov al, byte [bp - 0x0002]
    mov bx, word [bp + 0x4]
    mov byte [bx + 0x6], al
    mov bx, word [bp + 0x6]
    mov word [bx], 0
    jmp short @..api_idx_0002_5.l6
@..api_idx_0002_5.l5:
    mov bx, word [bp + 0x4]
    mov byte [bx + 0x6], 0xfa
    mov ax, word [bp - 0x0002]
    add ax, 0xff06
    mov bx, word [bp + 0x6]
    mov byte [bx + 0x6], al
@..api_idx_0002_5.l6:
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
    jmp short @..api_idx_0002_5.l8
@..api_idx_0002_5.l7:
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0002_4
    add sp, byte 6
    test ax, ax
    je short @..api_idx_0002_5.l8
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
@..api_idx_0002_5.l8:
    ret
api_idx_000e_2:
    mov ax, 0xfff2
    call ds_dispatch_f40b
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x4]
    sub ah, ah
    mov bx, ax
    cmp byte [bx + 0x60e], 1
    jne short @..api_idx_000e_2.l1
    mov bx, word [bp + 0x4]
    cmp byte [bx + 0x6], 1
    jbe short @..api_idx_000e_2.l1
    mov ax, 0xc
    push ax
    push word [bp + 0x6]
    push bx
    call ds_dispatch_fedc
    add sp, byte 6
    push word [bp + 0x8]
    push word [bp + 0xa]
    call ds_dispatch_f364
    add sp, byte 4
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x6]
    sub ah, ah
    mov cx, data_0002
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
    call ds_dispatch_b7e0
    pop cx
@..api_idx_000e_2.l1:
    ret
api_idx_0002_6:
    mov ax, 0xfffe
    call ds_dispatch_f40b
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
    je short @..api_idx_0002_6.l1
    mov word [bp - 0x0002], 0xfffe
@..api_idx_0002_6.l1:
    jmp near @..api_idx_0002_6.l4
    mov word [bp - 0x0002], 1
    jmp near @..api_idx_0002_6.l4
    mov word [bp - 0x0002], data_0002
    jmp short @..api_idx_0002_6.l4
    mov word [bp - 0x0002], 3
    jmp short @..api_idx_0002_6.l4
    mov word [bp - 0x0002], 4
    jmp short @..api_idx_0002_6.l4
    mov word [bp - 0x0002], 5
    jmp short @..api_idx_0002_6.l4
    mov word [bp - 0x0002], 6
    jmp short @..api_idx_0002_6.l4
    mov word [bp - 0x0002], 7
    jmp short @..api_idx_0002_6.l4
    mov word [bp - 0x0002], 1
    jmp short @..api_idx_0002_6.l4
    mov bx, word [bp + 0x6]
    mov al, byte [bx + 0x37]
    sub ah, ah
    test ax, 8
    je short @..api_idx_0002_6.l2
    mov word [bp - 0x0002], 1
@..api_idx_0002_6.l2:
    jmp short @..api_idx_0002_6.l4
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
@..api_idx_0002_6.l4:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x32
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    cmp ax, strict word 1
    jne short @..api_idx_0002_6.l5
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2b]
    sub ah, ah
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x34
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    cmp ax, strict word 1
    jne short @..api_idx_0002_6.l5
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2c]
    sub ah, ah
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 0x36
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    cmp ax, strict word 1
    je short @..api_idx_0002_6.l6
@..api_idx_0002_6.l5:
    mov word [bp - 0x0002], 0xffff
@..api_idx_0002_6.l6:
    mov ax, word [bp - 0x0002]
    ret
api_idx_0056_2:
    mov ax, 0xffaa
    call ds_dispatch_f40b
    lea ax, word [bp - 0x0056]
    push ax
    mov ax, 0x164
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x0056]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, data_0002
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
    call ds_dispatch_e928
    add sp, byte 8
    mov word [bp - 0x0004], dx
    mov word [bp - 0x0006], ax
    mov ax, 0x39
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0056]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0x3e
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x39
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
    push word [data_905a]
    call ds_dispatch_b75e
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    push word [bp - 0x0006]
    call ds_dispatch_e94f
    add sp, byte 6
    mov ax, 0x3e
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x39
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_e8da
    add sp, byte 8
    ret
math_loc_474b:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    cmp ax, 0xff
    je short @..local.l125
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
    test ax, data_0002
    je short @..local.l125
    mov ax, 1
    ret
@..local.l125:
    mov ax, 0
    ret
api_idx_0004_8:
    mov ax, 0xfffc
    call ds_dispatch_f40b
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
@..api_idx_0004_8.l1:
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
    jl short @..api_idx_0004_8.l1
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
    je short @..api_idx_0004_8.l2
    cmp byte [bx + 0x5e2d], 0xd
    jne short @..api_idx_0004_8.l3
@..api_idx_0004_8.l2:
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
    jmp short @..api_idx_0004_8.l4
@..api_idx_0004_8.l3:
    cmp word [bp - 0x0004], byte 0
    jle short @..api_idx_0004_8.l4
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
@..api_idx_0004_8.l4:
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
    jne short @..api_idx_0004_8.l6
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
    jne short @..api_idx_0004_8.l5
    mov bx, cx
    add byte [bx + 0x5d32], 0xf1
    mov al, byte [bx + 0x5d2e]
    sub ah, ah
    shl ax, 1
    mov byte [bx + 0x5d2e], al
@..api_idx_0004_8.l5:
    jmp near @..api_idx_0004_8.l12
@..api_idx_0004_8.l6:
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
    jne short @..api_idx_0004_8.l9
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d32]
    cbw
    mov cx, 0
    cmp byte [bx + 0x5d68], 0xf
    jbe short @..api_idx_0004_8.l7
    mov cx, 5
@..api_idx_0004_8.l7:
    sub ax, cx
    mov byte [bx + 0x5d32], al
    cbw
    mov cx, 0
    cmp byte [bx + 0x5d68], 0x11
    jbe short @..api_idx_0004_8.l8
    mov cx, 5
@..api_idx_0004_8.l8:
    sub ax, cx
    mov byte [bx + 0x5d32], al
    jmp short @..api_idx_0004_8.l11
@..api_idx_0004_8.l9:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d44]
    cbw
    mov cx, 0
    cmp byte [bx + 0x5d68], 0x11
    jbe short @..api_idx_0004_8.l10
    mov cx, 5
@..api_idx_0004_8.l10:
    sub ax, cx
    mov byte [bx + 0x5d44], al
@..api_idx_0004_8.l11:
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
@..api_idx_0004_8.l12:
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
    jne short @..local.l129
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d64], 0xf
    jbe short @..local.l126
    mov ax, 1
    jmp short @..local.l127
@..local.l126:
    mov ax, 0
@..local.l127:
    add word [bx + 0x5d24], ax
    mov ax, 0
    cmp byte [bx + 0x5d64], 0x11
    jbe short @..local.l128
    mov ax, 1
@..local.l128:
    add word [bx + 0x5d24], ax
@..local.l129:
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
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    mov bx, word [bp + 0x6]
    push word [bx]
    lea ax, word [bp - 0x0048]
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_b63c
    add sp, byte 8
    mov al, byte [bp - 0x000a]
    sub ah, ah
    ret
api_idx_0072:
    mov ax, 0xff8e
    call ds_dispatch_f40b
    mov word [data_95ea], 0
    mov word [bp - 0x000c], 0
    mov word [bp - 0x000e], 0
@..api_idx_0072.l1:
    cmp word [bp - 0x000c], byte 2
    jge short @..local.l131
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
    jle short @..local.l131
    inc word [bp - 0x000e]
    mov ax, word [bp - 0x000e]
    cmp ax, strict word 0xa
    jne short @..local.l130
    mov word [bp - 0x000e], 0
    inc word [bp - 0x000c]
    mov ax, word [bp - 0x000c]
    cmp ax, strict word 2
    jne short @..local.l130
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
    mov ax, 0xffff
    ret
@..local.l130:
    jmp short @..api_idx_0072.l1
@..local.l131:
    mov ax, 0
    push ax
    mov bx, word [bp + 0x6]
    push word [bx]
    lea ax, word [bp - 0x0066]
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_b63c
    add sp, byte 8
    lea ax, word [bp - 0x0066]
    push ax
    push word [bp + 0x4]
    call api_idx_0002_6
    add sp, byte 4
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    jne short @..local.l132
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
    mov ax, 0xffff
    ret
@..local.l132:
    cmp word [bp - 0x0006], byte 0xfe
    jne short @..local.l134
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_474b
    add sp, byte 4
    test ax, ax
    je short @..local.l133
    mov word [bp - 0x0006], 1
@..local.l133:
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call math_loc_474b
    add sp, byte 4
    test ax, ax
    je short @..local.l134
    mov word [bp - 0x0006], 0
@..local.l134:
    mov al, byte [bp - 0x002f]
    sub ah, ah
    test ax, 4
    je short @..local.l135
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call math_loc_474b
    add sp, byte 4
    test ax, ax
    je short @..local.l135
    call api_idx_0056_2
    mov ax, 0xffff
    ret
@..local.l135:
    push word [bp - 0x0006]
    push word [bp + 0x4]
    call math_loc_474b
    add sp, byte 4
    test ax, ax
    je short @..local.l136
    call api_idx_0056_2
    mov ax, 0xffff
    ret
@..local.l136:
    cmp word [bp - 0x0006], byte 1
    jne short @..local.l137
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    cmp ax, 0xff
    je short @..local.l137
    mov cx, 0xc
    imul cx
    add bx, ax
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 8
    je short @..local.l137
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_474b
    add sp, byte 4
    test ax, ax
    je short @..local.l137
    call api_idx_0056_2
    mov ax, 0xffff
    ret
@..local.l137:
    cmp word [bp - 0x0006], byte 0xfe
    jne short @..local.l138
    mov ax, 0xc6
    push ax
    mov ax, 0xbd
    push ax
    mov ax, 0xbb
    push ax
    mov ax, 3
    push ax
    call ds_dispatch_e8da
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
    mov ax, data_0002
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
@..local.l138:
    cmp word [bp - 0x0006], byte 0
    jne short @..local.l140
    mov al, byte [bp - 0x002f]
    sub ah, ah
    test ax, 4
    je short @..local.l139
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d49]
    sub ah, ah
    mov word [bp - 0x000a], ax
    cmp ax, 0xff
    je short @..local.l139
    push ax
    push word [bp + 0x4]
    call ds_dispatch_c7dc
    add sp, byte 4
@..local.l139:
    jmp short @..local.l141
@..local.l140:
    cmp word [bp - 0x0006], byte 1
    jne short @..local.l141
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    mov word [bp - 0x000a], ax
    cmp ax, 0xff
    je short @..local.l141
    mov cx, 0xc
    imul cx
    add bx, ax
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, 8
    je short @..local.l141
    push word [bp - 0x000a]
    push word [bp + 0x4]
    call ds_dispatch_c7dc
    add sp, byte 4
@..local.l141:
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    mov word [bp - 0x000a], ax
    cmp ax, 0xff
    je short @..local.l142
    push ax
    push word [bp + 0x4]
    call ds_dispatch_c7dc
    add sp, byte 4
@..local.l142:
    cmp word [bp - 0x000c], byte 0
    je short @..local.l143
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
@..local.l143:
    mov ax, word [bp - 0x000e]
    mov word [data_95ea], ax
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
    jbe short @..local.l144
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
    or byte [bx + 0x5c3b], data_0002
    call api_idx_0056_2
@..local.l144:
    mov word [bp - 0x0002], 0
    mov word [bp - 0x000a], 0
@..local.l145:
    cmp word [bp - 0x0002], byte 8
    jl short @..local.l146
    jmp near @..local.l154
@..local.l146:
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    mov word [bp - 0x000e], ax
    cmp ax, 0xff
    jne short @..local.l147
    jmp near @..local.l153
@..local.l147:
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
@..local.l148:
    mov ax, word [bp - 0x000e]
    cmp ax, word [bp - 0x000a]
    jle short @..local.l151
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
@..local.l149:
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    mov cx, word [bp - 0x000e]
    dec cx
    cmp ax, cx
    jne short @..local.l150
    mov al, byte [bp - 0x000e]
    mov byte [bx + 0x5d48], al
@..local.l150:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 8
    jl short @..local.l149
    dec word [bp - 0x000e]
    jmp short @..local.l148
@..local.l151:
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
    jne short @..local.l152
    mov ax, word [bp - 0x000a]
    mov word [data_95ea], ax
@..local.l152:
    inc word [bp - 0x000a]
@..local.l153:
    inc word [bp - 0x0002]
    jmp near @..local.l145
@..local.l154:
    cmp word [bp - 0x0006], byte 0
    je short @..local.l155
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 1
    jne short @..local.l156
@..local.l155:
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
    call api_idx_0004_8
    add sp, byte 6
    jmp short @..local.l157
@..local.l156:
    mov al, byte [bp - 0x0026]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    add ax, word [bp - 0x0006]
    mov bx, ax
    pop ax
    sub byte [bx + 0x5daa], al
@..local.l157:
    mov word [bp - 0x0002], 0
@..local.l158:
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d8e]
    mov byte [bx + 0x5d9c], al
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xe
    jl short @..local.l158
    mov word [bp - 0x0002], 0
@..local.l159:
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    cmp ax, 0xff
    jne short @..local.l160
    jmp near @..local.l166
@..local.l160:
    mov word [bp - 0x0010], 0
@..local.l161:
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
    call ds_dispatch_b7c2
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
    jl short @..local.l161
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
    jge short @..local.l162
    mov ax, dx
    jmp short @..local.l163
@..local.l162:
    mov al, byte [bx + 0x5e30]
    sub ah, ah
@..local.l163:
    mov byte [bx + 0x5e30], al
    mov al, byte [bx + 0x5e31]
    sub ah, ah
    cmp ax, word [bp - 0x0012]
    jge short @..local.l164
    mov ax, word [bp - 0x0012]
    jmp short @..local.l165
@..local.l164:
    mov al, byte [bx + 0x5e31]
    sub ah, ah
@..local.l165:
    mov byte [bx + 0x5e31], al
@..local.l166:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jge short @..local.l167
    jmp near @..local.l159
@..local.l167:
    mov al, byte [bp - 0x0028]
    sub ah, ah
    ret
api_idx_0002_7:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    push word [bp + 0xa]
    call ds_dispatch_b7a9
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
    call ds_dispatch_b7c2
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
    call ds_dispatch_f40b
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
    mov ax, data_0002
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
    je short @..api_idx_0010_2.l1
    jmp near @..local.l171
@..api_idx_0010_2.l1:
    cmp word [bp + 0xa], byte 9
    jge short @..api_idx_0010_2.l3
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
    jae short @..api_idx_0010_2.l2
    inc byte [bx + 0x5d64]
@..api_idx_0010_2.l2:
    jmp near @..local.l170
@..api_idx_0010_2.l3:
    mov ax, word [bp + 0xa]
    jmp near @..local.l169
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e37], 4
    jae short @..api_idx_0010_2.l4
    mov byte [bx + 0x5e37], 4
@..api_idx_0010_2.l4:
    jmp near @..local.l170
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e38], 4
    jae short @..api_idx_0010_2.l5
    mov byte [bx + 0x5e38], 4
@..api_idx_0010_2.l5:
    jmp near @..local.l170
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + 0x5e2f], 0
    mov word [bp - 0x0004], 0
@..api_idx_0010_2.l6:
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov byte [bx + 0x5d5a], 0
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0xa
    jl short @..api_idx_0010_2.l6
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c0e]
    mov word [bx + 0x5c0c], ax
    mov ax, word [bx + 0x5c12]
    mov word [bx + 0x5c10], ax
    cmp word [bp + 0xa], byte 0x0b
    je short @..api_idx_0010_2.l10
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5bfc]
    mov dx, word [bx + 0x5bfe]
    mov cx, 0x16d
    mov bx, 0
    call ds_dispatch_f99f
    cmp dx, byte 0
    jl short @..api_idx_0010_2.l7
    jne short @..api_idx_0010_2.l8
    cmp ax, strict word 0x12
    ja short @..api_idx_0010_2.l8
@..api_idx_0010_2.l7:
    jmp short @..api_idx_0010_2.l9
@..api_idx_0010_2.l8:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    add word [bx + 0x5bfc], strict word 0xfe92
    adc word [bx + 0x5bfe], byte 0xff
@..api_idx_0010_2.l9:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d67], 0x12
    jae short @..api_idx_0010_2.l10
    inc byte [bx + 0x5d67]
@..api_idx_0010_2.l10:
    jmp near @..local.l170
    mov ax, 5
    push ax
    call ds_dispatch_b7a9
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
    jmp near @..local.l170
    mov word [bp - 0x0004], 0
@..api_idx_0010_2.l11:
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
    jl short @..api_idx_0010_2.l11
    jmp near @..local.l170
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d68], 0x12
    jae short @..api_idx_0010_2.l12
    mov byte [bx + 0x5d68], 0x12
@..api_idx_0010_2.l12:
    cmp byte [bx + 0x5d69], 0x12
    jae short @..api_idx_0010_2.l13
    mov byte [bx + 0x5d69], 0x12
@..api_idx_0010_2.l13:
    mov ax, 5
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x21
    push ax
    push word [bp + 0x4]
    call api_idx_0002_7
    add sp, byte 8
    jmp near @..local.l170
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
    call ds_dispatch_b7a9
    pop cx

    db 0x89, 0x46, 0xfe, 0xeb, 0xda, 0xe9, 0x36, 0x01, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50
    db 0xb8, 0x16, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x9c, 0xfd, 0x83, 0xc4, 0x08, 0xe9, 0x1e, 0x01
    db 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x84, 0xfd, 0x83, 0xc4, 0x08, 0xe9, 0x06, 0x01, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50
    db 0xb8, 0x13, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x6c, 0xfd, 0x83, 0xc4, 0x08, 0xe9, 0xee, 0x00
    db 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x18, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x54, 0xfd, 0x83, 0xc4, 0x08, 0xe9, 0xd6, 0x00, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50
    db 0xb8, 0x0f, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x3c, 0xfd, 0x83, 0xc4, 0x08, 0xe9, 0xbe, 0x00
    db 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x24, 0xfd, 0x83, 0xc4, 0x08, 0xe9, 0xa6, 0x00, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50
    db 0xb8, 0x0c, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x0c, 0xfd, 0x83, 0xc4, 0x08, 0xe9, 0x8e, 0x00
    db 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x0b, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0xf4, 0xfc, 0x83, 0xc4, 0x08, 0xeb, 0x77, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xb8
    db 0x15, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xdd, 0xfc, 0x83, 0xc4, 0x08, 0xeb, 0x60, 0x22, 0xa1
    db 0x39, 0xa1, 0x50, 0xa1, 0x95, 0xa1, 0xeb, 0xa1, 0x0d, 0xa2, 0x39, 0xa2, 0x71, 0xa2, 0x50, 0xa1
    db 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3
    db 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3
    db 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0xd5, 0xa3, 0x9f, 0xa2, 0xb7, 0xa2
    db 0xcf, 0xa2, 0xe7, 0xa2, 0xff, 0xa2, 0x17, 0xa3, 0x2f, 0xa3, 0x47, 0xa3, 0x5e, 0xa3

@..local.l169:
    sub ax, strict word 9
    cmp ax, strict word 0x28
    jae short @..local.l170
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x5c8b]
@..local.l170:
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call ds_dispatch_ca27
    add sp, byte 6
@..local.l171:
    ret
api_idx_0008_3:
    mov ax, 0xfff8
    call ds_dispatch_f40b
    mov word [bp - 0x0006], 0xffff
    mov word [bp - 0x0008], 0xffff
    mov ax, word [data_0e0e]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    jmp short @..local.l176
@..api_idx_0008_3.l1:
    mov bx, word [bp - 0x0004]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, 0xff
    jne short @..local.l172
    mov ax, word [bp - 0x0002]
    ret
@..local.l172:
    mov al, byte [bx + 0x1]
    sub ah, ah
    test ax, data_0040
    jne short @..local.l175
    cmp word [bp - 0x0006], byte 0xff
    je short @..local.l173
    mov ax, 7
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    jne short @..local.l175
@..local.l173:
    mov bx, word [bp - 0x0004]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [data_830c]
    jne short @..local.l174
    mov ax, word [bp - 0x0002]
    mov word [bp - 0x0008], ax
    jmp short @..local.l175
@..local.l174:
    mov ax, word [bp - 0x0002]
    mov word [bp - 0x0006], ax
@..local.l175:
    add word [bp - 0x0004], byte 8
    inc word [bp - 0x0002]
@..local.l176:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_5910]
    jl short @..api_idx_0008_3.l1
    cmp word [bp + 0x4], byte 0
    je short @..local.l178
    cmp word [bp - 0x0006], byte 0xff
    jne short @..local.l177
    mov ax, word [bp - 0x0008]
    ret
@..local.l177:
    mov ax, word [bp - 0x0006]
    ret
@..local.l178:
    mov ax, 0xffff
    ret
api_idx_0004_9:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    call api_idx_0008_3
    pop cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0004_9.l4
    cmp word [data_5910], byte 0x7f
    jl short @..api_idx_0004_9.l3
    mov ax, 1
    push ax
    call api_idx_0008_3
    pop cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0004_9.l2
@..api_idx_0004_9.l1:
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
    jmp short @..api_idx_0004_9.l1
@..api_idx_0004_9.l2:
    jmp short @..api_idx_0004_9.l4
@..api_idx_0004_9.l3:
    mov ax, word [data_5910]
    mov word [bp - 0x0002], ax
    inc word [data_5910]
@..api_idx_0004_9.l4:
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
api_idx_00c2:
    mov ax, 0xff3e
    call ds_dispatch_f40b
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [api_idx_0016]
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
    test ax, data_0002
    je short @..local.l179
    call api_idx_0056_2
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [api_idx_0016]
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
    je short @..api_idx_00c2.l1
    push ax
    push word [bp + 0x6]
    push word [api_idx_0016]
    push word [bp + 0x4]
    call api_idx_0010_2
    add sp, byte 8
@..api_idx_00c2.l1:
    ret
@..local.l179:
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [api_idx_0016]
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
    call ds_dispatch_f364
    add sp, byte 4
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6a14]
    mov word [bp - 0x0066], ax
    mov ax, word [bx - 0x6a00]
    mov word [bp - 0x006a], ax
    push word [bp + 0x6]
    push word [api_idx_0016]
    push word [bp + 0x4]
    call ds_dispatch_c9e8
    add sp, byte 6
    mov word [data_9614], 1
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
    call api_idx_0012_4
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
    call ds_dispatch_e928
    add sp, byte 8
    mov word [bp - 0x001e], dx
    mov word [bp - 0x0020], ax
    mov word [bp - 0x001a], 1
    mov word [bp - 0x001c], 0
@..local.l180:
    mov word [bp - 0x0002], 0
@..local.l181:
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jl short @..local.l181
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
    call ds_dispatch_baa6
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
    mov ax, api_idx_0002
    push ax
    mov ax, 0xb
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, data_0042
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x006a]
    mov word [bp - 0x0016], ax
    mov word [bp - 0x0002], 0
@..local.l182:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0098], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short @..local.l182
    cmp word [data_905e], byte 4
    je short @..local.l183
    cmp word [data_905e], byte 0x0d
    jne short @..local.l184
@..local.l183:
    mov word [bp - 0x0098], 0
    mov word [bp - 0x0092], 0
@..local.l184:
    push word [bp + 0x4]
    call ds_dispatch_ca85
    pop cx
    test ax, ax
    jne short @..local.l185
    mov word [bp - 0x0098], 0
    mov word [bp - 0x0096], 0
@..local.l185:
    mov word [bp - 0x0090], 0xffff
    mov ax, 0
    push ax
    push word [bp - 0x001e]
    push word [bp - 0x0020]
    call ds_dispatch_e94f
    add sp, byte 6
    mov word [bp - 0x0070], 0
    mov word [bp - 0x0002], 0
@..local.l186:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0098], byte 0xff
    jne short @..local.l187
    jmp near @..local.l191
@..local.l187:
    cmp word [bx - 0x0098], byte 1
    je short @..local.l188
    jmp near @..local.l190
@..local.l188:
    mov ax, word [bp - 0x0002]
    cmp word [bp - 0x0002], byte 0
    jne short @..local.l189
    mov ax, word [bp - 0x0016]
@..local.l189:
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
    call ds_dispatch_bce3
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, word [bp - 0x000c]
    inc ax
    inc ax
    push ax
    mov ax, 0xa
    imul word [bp - 0x0018]
    add ax, 0x9616
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, ax
    mov ax, word [bp - 0x000e]
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, data_0002
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
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp - 0x0018]
    add ax, 0x9616
    push ax
    call ds_dispatch_e84e
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0070]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x0084], ax
    inc word [bp - 0x0070]
@..local.l190:
    inc word [bp - 0x0002]
    jmp near @..local.l186
@..local.l191:
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
    call ds_dispatch_baa6
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
    call ds_dispatch_e8da
    add sp, byte 8
    mov word [bp - 0x001a], 1
    mov word [bp - 0x001c], 0
@..local.l192:
    cmp word [data_0e32], byte 0
    je short @..local.l194
@..local.l193:
    mov ax, 0x59fe
    push ax
    call ds_dispatch_b90d
    pop cx
    dec ax
    mov word [bp - 0x0004], ax
    cmp word [data_5b3e], byte 0
    je short @..local.l193
    jmp near @..local.l217
@..local.l194:
    cmp word [bp - 0x001c], byte 0
    je short @..local.l195
    jmp near @..local.l211
@..local.l195:
    mov word [bp - 0x0004], 0xffff
    mov word [bp - 0x0002], 0
@..local.l196:
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
    call ds_dispatch_e8da
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
@..local.l197:
    mov ax, 1
    push ax
    call ds_dispatch_ea50
    pop cx
    test ax, ax
    jne short @..local.l198
    jmp short @..local.l197
@..local.l198:
    mov ax, 1
    push ax
    call ds_dispatch_eb32
    pop cx
    sub ah, ah
    mov word [bp - 0x009a], ax
    cmp ax, strict word 0x30
    jl short @..local.l200
    cmp ax, strict word 0x39
    jg short @..local.l200
    add ax, strict word 0xffcf
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0
    jge short @..local.l199
    add word [bp - 0x0004], byte 0x0a
@..local.l199:
    jmp short @..local.l209
@..local.l200:
    mov ax, word [bp - 0x009a]
    jmp short @..local.l208
@..local.l201:
    mov word [bp - 0x0004], 0xa
    jmp short @..local.l209
@..local.l202:
    mov word [bp - 0x0004], 0xb
    jmp short @..local.l209
@..local.l203:
    mov word [bp - 0x0004], 0xc
    jmp short @..local.l209
@..local.l204:
    mov word [bp - 0x0004], 0xd
    jmp short @..local.l209
@..local.l205:
    mov ax, word [bp - 0x0002]
    add ax, word [bp - 0x0070]
    dec ax
    cwd
    idiv word [bp - 0x0070]
    mov word [bp - 0x0002], dx
    jmp short @..local.l209
@..local.l206:
    mov ax, word [bp - 0x0002]
    inc ax
    cwd
    idiv word [bp - 0x0070]
    mov word [bp - 0x0002], dx
    jmp short @..local.l209
@..local.l207:
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xe
    mov word [bp - 0x0004], ax
    jmp short @..local.l209
@..local.l208:
    cmp ax, strict word 8
    je short @..local.l205
    cmp ax, strict word 9
    je short @..local.l202
    cmp ax, strict word 0xa
    je short @..local.l206
    cmp ax, strict word 0xb
    je short @..local.l201
    cmp ax, strict word 0xd
    je short @..local.l207
    cmp ax, strict word 0x42
    je short @..local.l203
    cmp ax, strict word 0x45
    je short @..local.l204
@..local.l209:
    cmp word [bp - 0x0004], byte 0xff
    jne short @..local.l210
    jmp near @..local.l196
@..local.l210:
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
    call ds_dispatch_e8da
    add sp, byte 8
    jmp short @..local.l217
@..local.l211:
    mov word [bp - 0x0004], 0xffff
@..local.l212:
    mov ax, 1
    push ax
    call ds_dispatch_ea50
    pop cx
    test ax, ax
    jne short @..local.l213
    jmp short @..local.l212
@..local.l213:
    mov ax, 1
    push ax
    call ds_dispatch_eb32
    pop cx
    sub ah, ah
    mov word [bp - 0x009a], ax
    cmp ax, strict word 0x30
    jl short @..local.l214
    cmp ax, strict word 0x39
    jg short @..local.l214
    add ax, strict word 0xffcf
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0
    jge short @..local.l214
    add word [bp - 0x0004], byte 0x0a
@..local.l214:
    cmp word [bp - 0x009a], byte 0x0d
    je short @..local.l215
    cmp word [bp - 0x009a], byte 0x1b
    jne short @..local.l216
@..local.l215:
    mov word [bp - 0x001c], 0
@..local.l216:
    cmp word [bp - 0x009a], byte 0x0d
    je short @..local.l217
    cmp word [bp - 0x009a], byte 0x1b
    je short @..local.l217
    cmp word [bp - 0x0004], byte 0xff
    je short @..local.l212
@..local.l217:
    cmp word [bp - 0x0004], byte 0
    jge short @..local.l218
    jmp near @..local.l226
@..local.l218:
    cmp word [bp - 0x0004], byte 0x0a
    jl short @..local.l219
    jmp near @..local.l226
@..local.l219:
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [api_idx_0016]
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
    jle short @..local.l220
    mov al, byte [bx + 0x5c3b]
    sub ah, ah
    test ax, data_0002
    je short @..local.l220
    call api_idx_0056_2
    mov word [bp - 0x001a], data_0002
    jmp near @..local.l225
@..local.l220:
    mov ax, word [bp - 0x0004]
    mov word [bp + 0x6], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [api_idx_0016]
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
    call ds_dispatch_f364
    add sp, byte 4
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6a14]
    mov word [bp - 0x0068], ax
    mov ax, word [bx - 0x6a00]
    mov word [bp - 0x006c], ax
    push word [bp + 0x6]
    push word [api_idx_0016]
    push word [bp + 0x4]
    call ds_dispatch_c9e8
    add sp, byte 6
    cmp word [bp - 0x001c], byte 0
    je short @..local.l223
    cmp word [bp - 0x0038], byte 0
    jle short @..local.l221
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
    jmp short @..local.l222
@..local.l221:
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
@..local.l222:
    mov word [bp - 0x001c], 0
@..local.l223:
    lea si, word [bp - 0x002c]
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [api_idx_0016]
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
    call ds_dispatch_f364
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
    call ds_dispatch_f364
    add sp, byte 4
    mov ax, word [bp - 0x0068]
    mov word [bp - 0x0066], ax
    mov ax, word [bp - 0x006c]
    mov word [bp - 0x006a], ax
    cmp word [bp - 0x0038], byte 0
    jne short @..local.l224
    mov word [data_9614], 0
    push word [bp + 0x4]
    call api_idx_004c
    pop cx
    mov ax, 6
    push ax
    mov ax, data_0024
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
    call api_idx_0012_4
    add sp, byte 0x0e
    mov word [bp - 0x001a], 0
    jmp short @..local.l225
@..local.l224:
    mov word [data_9614], 1
    push word [bp + 0x4]
    call api_idx_004c
    pop cx
    mov ax, 6
    push ax
    mov ax, data_0024
    push ax
    push word [bp - 0x0066]
    lea ax, word [bp - 0x004e]
    push ax
    lea ax, word [bp - 0x002c]
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0012_4
    add sp, byte 0x0e
    mov word [bp - 0x001a], data_0002
@..local.l225:
    jmp near @..local.l258
@..local.l226:
    cmp word [bp - 0x0004], byte 0x0e
    jge short @..local.l227
    jmp near @..local.l244
@..local.l227:
    mov ax, word [bp - 0x0070]
    add ax, strict word 0xe
    cmp ax, word [bp - 0x0004]
    jg short @..local.l228
    jmp near @..local.l244
@..local.l228:
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
    call ds_dispatch_be5f
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
    call ds_dispatch_be5f
    add sp, byte 0x0a
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0084], byte 0
    jne short @..local.l229
    mov ax, word [bp - 0x0016]
    jmp short @..local.l230
@..local.l229:
    mov ax, word [bx - 0x0084]
@..local.l230:
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
    jmp near @..local.l240
@..local.l231:
    mov ax, 0x12c
    push ax
    call ds_dispatch_e489
    pop cx
    mov ax, 0
    push ax
    push word [bp - 0x001e]
    push word [bp - 0x0020]
    call ds_dispatch_e94f
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
    call ds_dispatch_e8da
    add sp, byte 8
    lea ax, word [bp - 0x002c]
    push ax
    push word [bp + 0x4]
    call api_idx_009e_2
    add sp, byte 4
    push word [bp + 0x4]
    call api_idx_004c
    pop cx
    cmp word [bp - 0x002c], byte 0
    jne short @..local.l232
    mov word [data_9614], 0
    mov ax, 6
    push ax
    mov ax, data_0024
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
    call api_idx_0012_4
    add sp, byte 0x0e
    mov word [bp - 0x001a], 0
    jmp short @..local.l233
@..local.l232:
    mov ax, 6
    push ax
    mov ax, data_0024
    push ax
    push word [bp - 0x0066]
    lea ax, word [bp - 0x004e]
    push ax
    lea ax, word [bp - 0x002c]
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0012_4
    add sp, byte 0x0e
    mov word [bp - 0x001a], data_0002
@..local.l233:
    mov ax, 0xbb
    push ax
    mov ax, 0xab
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    jmp near @..local.l243
@..local.l234:
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
    jne short @..local.l235
    mov ax, 0x12c
    push ax
    call ds_dispatch_e489
    pop cx
    mov ax, 0
    push ax
    push word [bp - 0x001e]
    push word [bp - 0x0020]
    call ds_dispatch_e94f
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
    call ds_dispatch_e8da
    add sp, byte 8
    lea ax, word [bp - 0x00c2]
    push ax
    mov ax, 0x1d1
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 1
    push ax
    lea ax, word [bp - 0x00c2]
    push ax
    call api_idx_0004
    add sp, byte 4
@..local.l235:
    push word [bp + 0x4]
    call api_idx_004c
    pop cx
    mov ax, 6
    push ax
    mov ax, data_0024
    push ax
    push word [bp - 0x0066]
    lea ax, word [bp - 0x004e]
    push ax
    lea ax, word [bp - 0x002c]
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0012_4
    add sp, byte 0x0e
    mov word [bp - 0x001a], data_0002
    jmp short @..local.l243
@..local.l236:
    mov word [bp - 0x001c], 1
    jmp short @..local.l243
@..local.l237:
    cmp word [bp - 0x002c], strict word 0x229
    jne short @..local.l238
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
    jmp short @..local.l239
@..local.l238:
    lea ax, word [bp - 0x002c]
    push ax
    call api_idx_0004_9
    pop cx
    mov word [data_9614], 0
    mov ax, 6
    push ax
    mov ax, data_0024
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
    call api_idx_0012_4
    add sp, byte 0x0e
    mov word [bp - 0x001a], 0
@..local.l239:
    jmp short @..local.l243
@..local.l240:
    cmp ax, strict word 0
    jne short @..local.l241
    jmp near @..local.l231
@..local.l241:
    cmp ax, strict word 1
    jne short @..local.l242
    jmp near @..local.l234
@..local.l242:
    cmp ax, strict word 2
    je short @..local.l236
    cmp ax, strict word 3
    je short @..local.l237
@..local.l243:
    jmp near @..local.l258
@..local.l244:
    mov word [bp - 0x001c], 0
    mov ax, word [bp - 0x0004]
    jmp near @..local.l254
@..local.l245:
    cmp word [data_905e], byte 0x0d
    je short @..local.l246
    cmp word [data_905e], byte 4
    je short @..local.l246
    mov ax, word [bp + 0x4]
    add ax, word [data_69c8]
    dec ax
    cwd
    idiv word [data_69c8]
    mov word [data_8af0], dx
    mov word [bp + 0x4], dx
    mov word [data_967a], 0
    mov ax, 0
    push ax
    push dx
    call math_loc_40b7
    add sp, byte 4
    mov word [bp - 0x001a], data_0002
@..local.l246:
    jmp near @..local.l258
@..local.l247:
    cmp word [data_905e], byte 0x0d
    je short @..local.l248
    cmp word [data_905e], byte 4
    je short @..local.l248
    mov ax, word [bp + 0x4]
    inc ax
    cwd
    idiv word [data_69c8]
    mov word [data_8af0], dx
    mov word [bp + 0x4], dx
    mov word [data_967a], 0
    mov ax, 0
    push ax
    push dx
    call math_loc_40b7
    add sp, byte 4
    mov word [bp - 0x001a], data_0002
@..local.l248:
    jmp near @..local.l258
@..local.l249:
    mov ax, word [api_idx_0016]
    inc ax
    mov cx, data_0002
    cwd
    idiv cx
    mov word [api_idx_0016], dx
    mov word [data_967a], 0
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
    call ds_dispatch_e8da
    add sp, byte 8
    jmp near @..local.l258
@..local.l250:
    mov ax, 0
    push ax
    push word [bp - 0x001e]
    push word [bp - 0x0020]
    call ds_dispatch_e94f
    add sp, byte 6
    lea ax, word [bp - 0x002c]
    push ax
    push word [bp + 0x4]
    call api_idx_0072
    add sp, byte 4
    mov word [bp - 0x0014], ax
    cmp ax, strict word 0xffff
    je short @..local.l252
    mov word [api_idx_0016], 0
    mov word [data_967a], 0
    mov word [data_9614], 0
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
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 6
    push ax
    mov ax, data_0024
    push ax
    mov ax, 0
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 0
    sub ax, word [data_95ea]
    dec ax
    push ax
    push word [bp + 0x4]
    call api_idx_0012_4
    add sp, byte 0x0e
    mov word [bp - 0x001a], 0
    cmp word [bp - 0x0014], byte 0
    jle short @..local.l251
    push word [bp - 0x0014]
    push word [data_95ea]
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call api_idx_0010_2
    add sp, byte 8
@..local.l251:
    jmp short @..local.l253
@..local.l252:
    mov word [bp - 0x001a], data_0002
@..local.l253:
    jmp short @..local.l258
@..local.l254:
    cmp ax, strict word 0xa
    jne short @..local.l255
    jmp near @..local.l245
@..local.l255:
    cmp ax, strict word 0xb
    jne short @..local.l256
    jmp near @..local.l247
@..local.l256:
    cmp ax, strict word 0xc
    jne short @..local.l257
    jmp near @..local.l249
@..local.l257:
    cmp ax, strict word 0xd
    jne short @..local.l258
    jmp near @..local.l250
@..local.l258:
    cmp word [bp - 0x001a], byte 1
    jne short @..local.l259
    jmp near @..local.l192
@..local.l259:
    cmp word [bp - 0x001a], byte 2
    jne short @..local.l260
    jmp near @..local.l180
@..local.l260:
    mov ax, 1
    push ax
    push word [bp - 0x001e]
    push word [bp - 0x0020]
    call ds_dispatch_e94f
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
    call ds_dispatch_e8da
    add sp, byte 8
    ret
api_idx_0014:
    mov ax, 0xffec
    call ds_dispatch_f40b
    mov ax, word [data_905e]
    mov word [data_830a], ax
    mov word [data_942e], 0x14
    mov word [data_9430], 0
    mov word [data_9432], 0
    mov word [data_940e], 0xffff
    cmp ax, strict word 0xd
    je short @..api_idx_0014.l1
    call ds_dispatch_c145
    mov ax, 1
    push ax
    mov ax, data_0002
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    mov ax, data_0002
    push ax
    mov ax, 3
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    jmp short @..api_idx_0014.l4
@..api_idx_0014.l1:
    mov word [bp - 0x0002], 0xf
@..api_idx_0014.l2:
    mov bx, word [bp - 0x0002]
    mov al, byte [bx + 0x5b48]
    sub ah, ah
    shl bx, 1
    add bx, bp
    mov word [bx - 0x002a], ax
    cmp ax, 0xff
    je short @..api_idx_0014.l3
    push word [bp - 0x0002]
    call ds_dispatch_c12a
    pop cx
@..api_idx_0014.l3:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x12
    jl short @..api_idx_0014.l2
    mov ax, 7
    push ax
    call ds_dispatch_c12a
    pop cx
    mov ax, 0xa
    push ax
    call ds_dispatch_d6c6
    pop cx
    mov ax, 0xb
    push ax
    call ds_dispatch_d6c6
    pop cx
    mov ax, 0xc
    push ax
    call ds_dispatch_d6c6
    pop cx
@..api_idx_0014.l4:
    mov ax, 0
    push ax
    mov ax, data_0002
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e935
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
    mov ax, data_0002
    push ax
    mov ax, 0x67
    push ax
    mov ax, 0xa2
    push ax
    mov ax, 6
    push ax
    push ax
    call ds_dispatch_e935
    add sp, byte 0x0c
    mov word [data_93f0], dx
    mov word [data_93ee], ax
    mov ax, 0
    push ax
    mov ax, data_0002
    push ax
    mov ax, 0x16
    push ax
    mov ax, 0x136
    push ax
    mov ax, 6
    push ax
    mov ax, 0xe4
    push ax
    call ds_dispatch_e935
    add sp, byte 0x0c
    mov word [data_93f4], dx
    mov word [data_93f2], ax
    mov ax, 0
    push ax
    mov ax, data_0002
    push ax
    mov ax, 0xbb
    push ax
    mov ax, 0xab
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_e935
    add sp, byte 0x0c
    mov word [data_93f8], dx
    mov word [data_93f6], ax
    mov ax, 0
    push ax
    mov ax, data_0002
    push ax
    mov ax, 0x23
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x1e
    push ax
    mov ax, 0xdc
    push ax
    call ds_dispatch_e935
    add sp, byte 0x0c
    mov word [data_93fc], dx
    mov word [data_93fa], ax
    mov ax, 0
    push ax
    mov ax, data_0002
    push ax
    mov ax, 0x74
    push ax
    mov ax, 0x136
    push ax
    mov ax, 0x2e
    push ax
    mov ax, 0x114
    push ax
    call ds_dispatch_e935
    add sp, byte 0x0c
    mov word [data_9400], dx
    mov word [data_93fe], ax
    mov ax, 0
    push ax
    mov ax, data_0002
    push ax
    mov ax, 0xbf
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x7e
    push ax
    mov ax, 0xb8
    push ax
    call ds_dispatch_e935
    add sp, byte 0x0c
    mov word [data_9404], dx
    mov word [data_9402], ax
    mov ax, 0
    push ax
    mov ax, data_0002
    push ax
    mov ax, 0x41
    push ax
    mov ax, 0x65
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x5a
    push ax
    call ds_dispatch_e935
    add sp, byte 0x0c
    mov word [data_940c], dx
    mov word [data_940a], ax
    mov ax, 0xf
    push ax
    mov ax, 0xb
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    call ds_dispatch_d9a6
    mov word [data_8450], ax
    test ax, ax
    je short @..local.l261
    mov ax, 0
    push ax
    mov ax, data_0002
    push ax
    call ds_dispatch_d7e7
    add sp, byte 4
    mov ax, word [data_0110]
    mov word [data_844e], ax
    mov ax, 1
    push ax
    push word [data_844e]
    mov ax, 0
    push ax
    call ds_dispatch_d964
    add sp, byte 6
    mov word [data_844c], ax
@..local.l261:
    mov word [data_967a], 0
    mov word [data_9614], 0
    mov word [api_idx_0016], 0
    mov word [bp - 0x0002], 0
@..local.l262:
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, 0x9616
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0x12c
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 9
    jl short @..local.l262
    mov word [bp - 0x0002], 0
@..local.l263:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x7cf2], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..local.l263
    mov word [data_9562], 7
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    cmp word [data_905e], byte 4
    je short @..local.l264
    cmp word [data_905e], byte 0x0d
    jne short @..local.l265
@..local.l264:
    mov ax, 0
    jmp short @..local.l266
@..local.l265:
    mov ax, 1
@..local.l266:
    mov word [bp - 0x0006], ax
@..local.l267:
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    mov ax, api_idx_0002
    push ax
    mov ax, data_0002
    push ax
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, data_0042
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    mov ax, data_0104
    push ax
    mov ax, 0xb
    push ax
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    mov ax, data_0104
    push ax
    mov ax, 0xd
    push ax
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov word [bp - 0x0002], 0
@..local.l268:
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jl short @..local.l268
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
@..local.l269:
    push word [bp + 0x4]
    call math_loc_4011
    pop cx
    mov ax, 0x59fe
    push ax
    call ds_dispatch_b90d
    pop cx
    dec ax
    mov word [bp - 0x0004], ax
    cmp word [data_5b3e], byte 0
    je short @..local.l269
    cmp word [bp - 0x0004], byte 0x0f
    jl short @..local.l271
    cmp word [bp - 0x0004], byte 0x19
    jge short @..local.l271
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [api_idx_0016]
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
    jle short @..local.l270
    mov ax, word [bp - 0x0004]
    add ax, strict word 0xfff1
    push ax
    push word [bp + 0x4]
    call api_idx_00c2
    add sp, byte 4
    mov ax, word [data_8af0]
    mov word [bp + 0x4], ax
@..local.l270:
    jmp near @..local.l273
@..local.l271:
    mov ax, word [bp - 0x0004]
    jmp near @..local.l272

    db 0xff, 0x76, 0x04, 0xe8, 0x0d, 0x30, 0x59, 0xe9, 0xcd, 0x00, 0x83, 0x7e, 0xfa, 0x00, 0x74, 0x1a
    db 0x8b, 0x46, 0x04, 0x03, 0x06, 0xc8, 0x69, 0x48, 0x99, 0xf7, 0x3e, 0xc8, 0x69, 0x89, 0x16, 0xf0
    db 0x8a, 0x89, 0x56, 0x04, 0xc7, 0x06, 0x7a, 0x96, 0x00, 0x00, 0xe9, 0xaa, 0x00, 0x83, 0x7e, 0xfa
    db 0x00, 0x74, 0x16, 0x8b, 0x46, 0x04, 0x40, 0x99, 0xf7, 0x3e, 0xc8, 0x69, 0x89, 0x16, 0xf0, 0x8a
    db 0x89, 0x56, 0x04, 0xc7, 0x06, 0x7a, 0x96, 0x00, 0x00, 0xe9, 0x8b, 0x00, 0xff, 0x76, 0x04, 0xe8
    db 0x15, 0xb1, 0x59, 0xe9, 0x81, 0x00, 0xe9, 0x7e, 0x00, 0xe9, 0x7b, 0x00, 0xa1, 0x34, 0x94, 0x40
    db 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x89, 0x16, 0x34, 0x94, 0xc7, 0x06, 0x7a, 0x96, 0x00, 0x00
    db 0xeb, 0x65, 0xff, 0x76, 0x04, 0xe8, 0x4a, 0xd9, 0x59, 0xeb, 0x5c, 0xeb, 0x5a, 0xff, 0x76, 0x04
    db 0xe8, 0xd5, 0x62, 0x59, 0x85, 0xc0, 0x74, 0x0c, 0xff, 0x76, 0xfa, 0xff, 0x76, 0x04, 0xe8, 0xb6
    db 0xd1, 0x83, 0xc4, 0x04, 0xeb, 0x41, 0x74, 0xb7, 0x7e, 0xb7, 0xa1, 0xb7, 0xc0, 0xb7, 0xca, 0xb7
    db 0xcd, 0xb7, 0xd0, 0xb7, 0xe6, 0xb7, 0xef, 0xb7, 0xef, 0xb7, 0xef, 0xb7, 0xef, 0xb7, 0xef, 0xb7
    db 0xef, 0xb7, 0xef, 0xb7, 0x4b, 0xb8, 0x4b, 0xb8, 0x4b, 0xb8, 0x4b, 0xb8, 0x4b, 0xb8, 0x4b, 0xb8
    db 0x4b, 0xb8, 0x4b, 0xb8, 0x4b, 0xb8, 0x4b, 0xb8, 0xf1, 0xb7

@..local.l272:
    cmp ax, strict word 0x1a
    jae short @..local.l273
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x47f6]
@..local.l273:
    cmp word [bp - 0x0004], byte 0x1a
    je short @..local.l274
    jmp near @..local.l267
@..local.l274:
    cmp word [data_8450], byte 0
    je short @..local.l275
    push word [data_844c]
    push word [data_844e]
    call ds_dispatch_d91b
    add sp, byte 4
    mov ax, 0
    push ax
    call ds_dispatch_d907
    pop cx
@..local.l275:
    mov ax, 0xf
    push ax
    call ds_dispatch_c12a
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_940c]
    push word [data_940a]
    call ds_dispatch_e942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_9404]
    push word [data_9402]
    call ds_dispatch_e942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_9400]
    push word [data_93fe]
    call ds_dispatch_e942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_93fc]
    push word [data_93fa]
    call ds_dispatch_e942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_93f8]
    push word [data_93f6]
    call ds_dispatch_e942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_93f4]
    push word [data_93f2]
    call ds_dispatch_e942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_93f0]
    push word [data_93ee]
    call ds_dispatch_e942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x0012]
    push word [bp - 0x0014]
    call ds_dispatch_e942
    add sp, byte 8
    call api_idx_000e
    cmp word [data_905e], byte 0x0d
    jne short @..local.l278
    mov ax, 1
    push ax
    mov ax, 0xa
    push ax
    push ax
    call ds_dispatch_d6dc
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 0xb
    push ax
    push ax
    call ds_dispatch_d6dc
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    push ax
    call ds_dispatch_d6dc
    add sp, byte 6
    mov ax, 7
    push ax
    mov ax, 9
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    mov word [bp - 0x0002], 0xf
@..local.l276:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x002a], strict word 0xff
    je short @..local.l277
    push word [bp - 0x0002]
    push word [bx - 0x002a]
    call ds_dispatch_d61c
    add sp, byte 4
@..local.l277:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x12
    jl short @..local.l276
    jmp short @..local.l279
@..local.l278:
    mov ax, 1
    push ax
    call ds_dispatch_c12a
    pop cx
    mov ax, data_0002
    push ax
    call ds_dispatch_c12a
    pop cx
@..local.l279:
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
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
api_idx_0080:
    mov ax, 0xff80
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    push ax
    push word [data_93fc]
    push word [data_93fa]
    call ds_dispatch_e942
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    push word [data_9400]
    push word [data_93fe]
    call ds_dispatch_e942
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
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov word [bp - 0x0004], ax
    mov bx, ax
    inc word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x0068], 0x20
    cmp word [bp - 0x0006], byte 0
    jle short @..api_idx_0080.l1
    mov bx, word [bp - 0x0004]
    inc word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x0068], 0x2b
@..api_idx_0080.l1:
    mov ax, word [bp - 0x0004]
    lea cx, word [bp - 0x0068]
    add ax, cx
    push ax
    push word [bp - 0x0006]
    call ds_dispatch_b27d
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    call ds_dispatch_fa90
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
    jl short @..api_idx_0080.l2
    mov bx, word [bp - 0x0004]
    inc word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x0068], 0x2b
@..api_idx_0080.l2:
    mov ax, word [bp - 0x0004]
    lea cx, word [bp - 0x0068]
    add ax, cx
    push ax
    push word [bp - 0x0008]
    call ds_dispatch_b27d
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    call ds_dispatch_fa90
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
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0x1e
    push ax
    lea ax, word [bp - 0x0068]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, data_0002
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x10e
    sub ax, cx
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0068]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov word [bp - 0x0074], 0x114
    mov word [bp - 0x0080], 0x2e
    mov word [bp - 0x0072], 0x114
    mov word [bp - 0x007e], data_0044
    mov word [bp - 0x0070], 0x114
    mov word [bp - 0x007c], 0x5a
    mov word [bp - 0x006e], 0x126
    mov word [bp - 0x007a], 0x4f
    mov word [bp - 0x006c], 0x114
    mov word [bp - 0x0078], 0x70
    mov word [bp - 0x0002], 0
@..api_idx_0080.l3:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    push word [bx - 0x0080]
    mov bx, ax
    add bx, bp
    push word [bx - 0x0074]
    call ds_dispatch_e809
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
    je short @..api_idx_0080.l4
    mov ax, 0x5f
    jmp short @..api_idx_0080.l5
@..api_idx_0080.l4:
    mov ax, 0xeb
@..api_idx_0080.l5:
    push ax
    call ds_dispatch_e823
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
    jl short @..api_idx_0080.l6
    mov ax, 0
    push ax
    mov ax, 0x2b
    push ax
    call ds_dispatch_e830
    add sp, byte 4
@..api_idx_0080.l6:
    lea ax, word [bp - 0x0068]
    push ax
    push word [bp - 0x0006]
    call ds_dispatch_b27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0068]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 5
    jge short @..local.l280
    jmp near @..api_idx_0080.l3
@..local.l280:
    ret
api_idx_0004_10:
    mov ax, 0xfffc
    call ds_dispatch_f40b
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
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 4
    push ax
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x5]
    sub ah, ah
    push ax
    call ds_dispatch_e830
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
    jne short @..api_idx_0004_10.l1
    mov ax, word [bp - 0x0004]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x38
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, data_0002
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x6]
    sub ah, ah
    push ax
    call ds_dispatch_b2e7
    add sp, byte 6
@..api_idx_0004_10.l1:
    ret
api_idx_004c:
    mov ax, 0xffb4
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    push ax
    push word [data_93f8]
    push word [data_93f6]
    call ds_dispatch_e942
    add sp, byte 8
    cmp word [api_idx_0016], byte 0
    je short @..api_idx_004c.l1
    mov ax, 0xac
    push ax
    mov ax, 0xa0
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 0x63
    push ax
    call ds_dispatch_e830
    add sp, byte 4
@..api_idx_004c.l1:
    cmp word [data_9614], byte 0
    jne short @..api_idx_004c.l2
    cmp word [api_idx_0016], byte 0
    je short @..api_idx_004c.l5
@..api_idx_004c.l2:
    mov word [bp - 0x0002], 0
@..api_idx_004c.l3:
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
    call ds_dispatch_e901
    add sp, byte 0x0a
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_004c.l3
    mov word [bp - 0x0002], 0
@..api_idx_004c.l4:
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
    call ds_dispatch_e901
    add sp, byte 0x0a
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 3
    jl short @..api_idx_004c.l4
@..api_idx_004c.l5:
    mov word [bp - 0x0002], 0
@..api_idx_004c.l6:
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [api_idx_0016]
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
    jg short @..api_idx_004c.l7
    jmp near @..local.l281
@..api_idx_004c.l7:
    cmp word [data_967a], byte 0
    je short @..api_idx_004c.l8
    jmp near @..api_idx_004c.l11
@..api_idx_004c.l8:
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
    imul word [api_idx_0016]
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
    je short @..api_idx_004c.l9
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, 0x9436
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    jmp short @..api_idx_004c.l10
@..api_idx_004c.l9:
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, 0x9436
    push ax
    mov al, byte [bp - 0x0013]
    sub ah, ah
    add ax, 0x1770
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
@..api_idx_004c.l10:
    mov al, byte [bp - 0x0012]
    sub ah, ah
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6a00], ax
@..api_idx_004c.l11:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6a14], 0x69
    cmp word [api_idx_0016], byte 0
    jne short @..api_idx_004c.l14
    mov word [bp - 0x0004], 0
@..api_idx_004c.l12:
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    cmp ax, word [bp - 0x0002]
    jne short @..api_idx_004c.l13
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x1e, 0x00 ; mov ax, word [bx + 0x1e]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6a14], ax
@..api_idx_004c.l13:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 8
    jl short @..api_idx_004c.l12
@..api_idx_004c.l14:
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [api_idx_0016]
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
    test ax, data_0002
    je short @..api_idx_004c.l15
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6a14], 0x55
@..api_idx_004c.l15:
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
    imul word [api_idx_0016]
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
    call api_idx_0004_10
    add sp, byte 0x0a
@..local.l281:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jge short @..local.l282
    jmp near @..api_idx_004c.l6
@..local.l282:
    mov word [data_967a], 1
    ret
api_idx_009a:
    mov ax, 0xff66
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    mov bx, word [bp + 0x6]
    push word [bx]
    lea ax, word [bp - 0x004a]
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_b63c
    add sp, byte 8
    mov bx, word [bp + 0x6]
    cmp byte [bx + 0x6], 0
    je short @..api_idx_009a.l1
    mov al, byte [bx + 0x6]
    cmp al, 0x63
    ja short @..api_idx_009a.l1
    mov ax, word [bp + 0x8]
    shl ax, 1
    push ax
    mov al, byte [bp - 0x000f]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jl short @..api_idx_009a.l1
    cmp word [bp - 0x0028], byte 0
    je short @..api_idx_009a.l1
    cmp byte [bp - 0x000c], 0
    jne short @..api_idx_009a.l1
    cmp byte [bp - 0x000b], 0
    jne short @..api_idx_009a.l1
    mov al, byte [bp - 0x0013]
    sub ah, ah
    test ax, data_0002
    jne short @..api_idx_009a.l1
    mov al, byte [bp - 0x0012]
    sub ah, ah
    mov bx, ax
    cmp byte [bx + 0x60e], 1
    je short @..api_idx_009a.l1
    cmp byte [bp - 0x0012], 0xd
    jne short @..local.l283
@..api_idx_009a.l1:
    lea ax, word [bp - 0x009a]
    push ax
    mov ax, 0x1d1
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 1
    push ax
    lea ax, word [bp - 0x009a]
    push ax
    call api_idx_0004
    add sp, byte 4
    ret
@..local.l283:
    mov ax, word [bp + 0x8]
    shl ax, 1
    push ax
    mov al, byte [bp - 0x000f]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    push ax
    call ds_dispatch_b7a9
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
    jge short @..local.l284
    mov al, byte [bx + 0x6]
    sub ah, ah
    add ax, word [bp - 0x0002]
    mov byte [bx + 0x6], al
    jmp short @..local.l285
@..local.l284:
    mov byte [bx + 0x6], 0x63
@..local.l285:
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    push ax
    mov al, byte [bp - 0x000f]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short @..local.l286
    mov bx, word [bp + 0x6]
    mov word [bx], 0
    lea ax, word [bp - 0x009a]
    push ax
    mov ax, 0x1d1
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 1
    push ax
    lea ax, word [bp - 0x009a]
    push ax
    call api_idx_0004
    add sp, byte 4
    ret
@..local.l286:
    ret
api_idx_001a:
    mov ax, 0xffe6
    call ds_dispatch_f40b
    lea ax, word [bp - 0x001a]
    push ax
    mov ax, 0x1d7
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov word [bp - 0x0002], 0
@..api_idx_001a.l1:
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
    jl short @..api_idx_001a.l1
    mov bx, word [bp + 0x4]
    mov byte [bx + 0x4], 0
    ret
math_loc_70ca:
    mov ax, 0xfe6c
    call ds_dispatch_f40b
    mov word [bp - 0x0194], 0
    cmp word [data_0e32], byte 0
    je short @..math_loc_70ca.l1
    lea ax, word [bp - 0x000c]
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    call ds_dispatch_f053
    add sp, byte 4
    mov word [bp - 0x0194], ax
@..math_loc_70ca.l1:
    mov ax, 0
    push ax
    mov bx, word [bp + 0x6]
    push word [bx]
    lea ax, word [bp - 0x007a]
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_b63c
    add sp, byte 8
    cmp word [bp + 0xa], byte 0
    je short @..local.l288
    mov ax, 3
    imul word [bp + 0xa]
    push ax
    mov al, byte [bp - 0x003f]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jl short @..math_loc_70ca.l2
    mov bx, word [bp + 0x6]
    mov al, byte [bx + 0x7]
    sub ah, ah
    or ax, 0x80
    mov byte [bx + 0x7], al
    jmp short @..local.l287
@..math_loc_70ca.l2:
    lea ax, word [bp - 0x00f2]
    push ax
    mov ax, 0x1d1
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 1
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call api_idx_0004
    add sp, byte 4
    mov ax, 0
    ret
@..local.l287:
    jmp short @..local.l289
@..local.l288:
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
    jl short @..local.l289
    mov bx, word [bp + 0x6]
    mov al, byte [bx + 0x7]
    sub ah, ah
    or ax, 0x80
    mov byte [bx + 0x7], al
@..local.l289:
    mov bx, word [bp + 0x6]
    mov al, byte [bx + 0x7]
    sub ah, ah
    test ax, 0x80
    jne short @..local.l290
    mov ax, 0xffff
    ret
@..local.l290:
    lea ax, word [bp - 0x007a]
    push ax
    push word [bp + 0x8]
    call ds_dispatch_f364
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    push word [data_93f8]
    push word [data_93f6]
    call ds_dispatch_e942
    add sp, byte 8
    mov word [bp - 0x000c], 0x72
    mov word [bp - 0x000a], 0x1a
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 4
    push ax
    mov al, byte [bp - 0x0041]
    sub ah, ah
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    add word [bp - 0x000a], byte 0x60
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 4
    push ax
    mov al, byte [bp - 0x0041]
    sub ah, ah
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    mov word [bp - 0x000a], 0x50
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x28
    push ax
    lea ax, word [bp - 0x00a2]
    push ax
    call ds_dispatch_f306
    add sp, byte 6
    lea ax, word [bp - 0x007a]
    push ax
    lea ax, word [bp - 0x00a2]
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    lea ax, word [bp - 0x00a2]
    push ax
    call ds_dispatch_fa90
    pop cx
    dec ax
    mov word [bp - 0x0004], ax
    mov ax, 0x2f
    push ax
    lea ax, word [bp - 0x00a2]
    push ax
    call ds_dispatch_ee4a
    add sp, byte 4
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    jne short @..local.l291
    lea ax, word [bp - 0x00a2]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov word [bp - 0x0006], ax
@..local.l291:
    cmp word [bp - 0x0006], byte 0x0a
    jle short @..local.l292
    mov word [bp - 0x0006], 0xa
@..local.l292:
    mov bx, word [bp - 0x0006]
    add bx, bp
    mov byte [bx - 0x00a2], 0
    mov byte [bx - 0x0097], 0
@..local.l293:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0006]
    jle short @..local.l294
    mov bx, ax
    add bx, bp
    cmp byte [bx - 0x00a2], 0x20
    jne short @..local.l294
    dec word [bp - 0x0004]
    jmp short @..local.l293
@..local.l294:
    mov ax, word [bp - 0x0006]
    sub word [bp - 0x0004], ax
    push word [bp - 0x000c]
    mov cx, 6
    imul cx
    mov cx, data_0002
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp - 0x000a]
    sub ax, cx
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00a2]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    mov ax, 6
    imul word [bp - 0x0004]
    mov cx, data_0002
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp - 0x000a]
    sub ax, cx
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0006]
    lea cx, word [bp - 0x00a1]
    add ax, cx
    push ax
    call ds_dispatch_e84e
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
    mov ax, word [data_0024]
    mov word [bp - 0x0024], ax
    mov al, byte [bp - 0x0042]
    sub ah, ah
    jmp near @..local.l295

    db 0xc7, 0x46, 0xf0, 0x01, 0x00, 0xc7, 0x46, 0xea, 0x01, 0x00, 0xc7, 0x46, 0xe6, 0x01, 0x00, 0xc7
    db 0x46, 0xe4, 0x01, 0x00, 0xc7, 0x46, 0xda, 0x01, 0x00, 0xc7, 0x46, 0xd6, 0x01, 0x00, 0xc7, 0x46
    db 0xd8, 0x01, 0x00, 0xa1, 0x1e, 0x00, 0x89, 0x46, 0xce, 0xe9, 0xe5, 0x00, 0xc7, 0x46, 0xee, 0x01
    db 0x00, 0xc7, 0x46, 0xda, 0x01, 0x00, 0xc7, 0x46, 0xd6, 0x01, 0x00, 0xa1, 0x1e, 0x00, 0x89, 0x46
    db 0xce, 0xe9, 0xcd, 0x00, 0xc7, 0x46, 0xec, 0x01, 0x00, 0xa1, 0x22, 0x00, 0x89, 0x46, 0xdc, 0xc7
    db 0x46, 0xe2, 0x01, 0x00, 0xc7, 0x46, 0xd8, 0x01, 0x00, 0x89, 0x46, 0xce, 0xe9, 0xb2, 0x00, 0xc7
    db 0x46, 0xec, 0x01, 0x00, 0xc7, 0x46, 0xe8, 0x01, 0x00, 0xc7, 0x46, 0xe2, 0x01, 0x00, 0xc7, 0x46
    db 0xd8, 0x01, 0x00, 0xa1, 0x24, 0x00, 0x89, 0x46, 0xce, 0xe9, 0x95, 0x00, 0xc7, 0x46, 0xec, 0x01
    db 0x00, 0xc7, 0x46, 0xe2, 0x01, 0x00, 0xc7, 0x46, 0xd8, 0x01, 0x00, 0xa1, 0x24, 0x00, 0x89, 0x46
    db 0xce, 0xe9, 0x7d, 0x00, 0xc7, 0x46, 0xde, 0x00, 0x00, 0xc7, 0x46, 0xf0, 0x01, 0x00, 0xc7, 0x46
    db 0xe0, 0x01, 0x00, 0xc7, 0x46, 0xe4, 0x01, 0x00, 0xa1, 0x22, 0x00, 0x89, 0x46, 0xce, 0xeb, 0x61
    db 0xc7, 0x46, 0xde, 0x00, 0x00, 0xc7, 0x46, 0xee, 0x01, 0x00, 0xc7, 0x46, 0xe0, 0x01, 0x00, 0xa1
    db 0x22, 0x00, 0x89, 0x46, 0xce, 0xeb, 0x4a, 0xc7, 0x46, 0xe2, 0x01, 0x00, 0xc7, 0x46, 0xee, 0x01
    db 0x00, 0xc7, 0x46, 0xe4, 0x01, 0x00, 0xc7, 0x46, 0xd8, 0x01, 0x00, 0xc7, 0x46, 0xce, 0xc0, 0x00
    db 0xeb, 0x2f, 0x90, 0xc3, 0x90, 0xc3, 0x90, 0xc3, 0x90, 0xc3, 0xbc, 0xc3, 0xd4, 0xc3, 0xef, 0xc3
    db 0xef, 0xc3, 0xef, 0xc3, 0xef, 0xc3, 0xef, 0xc3, 0x0c, 0xc4, 0x24, 0xc4, 0x40, 0xc4, 0x57, 0xc4
    db 0x5c, 0xc4, 0x24, 0xc4

@..local.l295:
    cmp ax, strict word 0x11
    jae short @..local.l296
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x3b8e]
@..local.l296:
    cmp word [bp + 0xa], byte 0
    je short @..local.l297
    jmp near @..local.l330
@..local.l297:
    lea ax, word [bp - 0x00f2]
    push ax
    mov al, byte [bp - 0x0042]
    sub ah, ah
    add ax, 0x60e
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp - 0x0032]
    call ds_dispatch_e823
    add sp, byte 4
    push word [bp - 0x000c]
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, data_0002
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x50
    sub ax, cx
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    add word [bp - 0x000c], byte 6
    cmp word [bp - 0x0022], byte 0
    jne short @..local.l298
    jmp near @..local.l308
@..local.l298:
    push word [bp - 0x000c]
    mov ax, 0x26
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    lea ax, word [bp - 0x00f2]
    push ax
    mov ax, 0x1c6
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov word [bp - 0x0002], 0
@..local.l299:
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    lea ax, word [bp - 0x0046]
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    cmp ax, strict word 1
    jne short @..local.l300
    mov ax, 0xa9
    jmp short @..local.l301
@..local.l300:
    mov ax, 0xad
@..local.l301:
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    mov bx, word [bp - 0x0002]
    add bx, bp
    mov al, byte [bx - 0x00f2]
    sub ah, ah
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xb
    jl short @..local.l299
    push word [bp - 0x000c]
    mov ax, 0x6e
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    lea ax, word [bp - 0x00f2]
    push ax
    mov ax, 0x1c7
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov word [bp - 0x0002], 0
@..local.l302:
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    lea ax, word [bp - 0x0044]
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    cmp ax, strict word 1
    jne short @..local.l303
    mov ax, 0xa9
    jmp short @..local.l304
@..local.l303:
    mov ax, 0xad
@..local.l304:
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    mov bx, word [bp - 0x0002]
    add bx, bp
    mov al, byte [bx - 0x00f2]
    sub ah, ah
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 2
    jl short @..local.l302
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    mov ax, 0x26
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    lea ax, word [bp - 0x00f2]
    push ax
    mov ax, 0x1c8
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov word [bp - 0x0002], 0
@..local.l305:
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    lea ax, word [bp - 0x0048]
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    cmp ax, strict word 1
    jne short @..local.l306
    mov ax, 0xa9
    jmp short @..local.l307
@..local.l306:
    mov ax, 0xad
@..local.l307:
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    mov bx, word [bp - 0x0002]
    add bx, bp
    mov al, byte [bx - 0x00f2]
    sub ah, ah
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xe
    jl short @..local.l305
    add word [bp - 0x000c], byte 0x0c
    jmp short @..local.l309
@..local.l308:
    cmp word [bp - 0x0020], byte 0
    je short @..local.l309
    cmp word [bp - 0x0058], byte 0
    je short @..local.l309
    mov ax, word [bp - 0x0058]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x002e], dx
    lea ax, word [bp - 0x00f2]
    push ax
    add dx, strict word 0xfa0
    mov ax, dx
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    push word [bp - 0x000c]
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, data_0002
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x50
    sub ax, cx
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x16
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    add word [bp - 0x000c], byte 6
@..local.l309:
    cmp word [bp - 0x001a], byte 0
    jne short @..local.l310
    jmp near @..local.l314
@..local.l310:
    mov al, byte [bp - 0x0041]
    sub ah, ah
    jmp short @..local.l311

    db 0xc7, 0x46, 0xd4, 0x00, 0x00, 0xe9, 0x04, 0x01, 0xc7, 0x46, 0xd4, 0x01, 0x00, 0xe9, 0xfc, 0x00
    db 0xc7, 0x46, 0xd4, 0x02, 0x00, 0xe9, 0xf4, 0x00, 0xc7, 0x46, 0xd4, 0x03, 0x00, 0xe9, 0xec, 0x00
    db 0xc7, 0x46, 0xd4, 0x04, 0x00, 0xe9, 0xe4, 0x00, 0xc7, 0x46, 0xd4, 0x07, 0x00, 0xe9, 0xdc, 0x00
    db 0xc7, 0x46, 0xd4, 0x06, 0x00, 0xe9, 0xd4, 0x00, 0xc7, 0x46, 0xd4, 0x08, 0x00, 0xe9, 0xcc, 0x00
    db 0xc7, 0x46, 0xd4, 0x12, 0x00, 0xe9, 0xc4, 0x00, 0xc7, 0x46, 0xd4, 0x05, 0x00, 0xe9, 0xbc, 0x00
    db 0xc7, 0x46, 0xd4, 0x09, 0x00, 0xe9, 0xb4, 0x00

@..local.l311:
    mov cx, 0x2c
    call leaf_loc_982c
    add byte [bx + si], al
    add word [bx + si], ax
    add al, byte [bx + si]
    add ax, word [bx + si]
    add al, 0
    add ax, 0x600
    add byte [bx], al
    add byte [bx + si], cl
    add byte [bx + di], cl
    add byte [bp + si], cl
    add byte [bp + di], cl
    add byte [si], cl
    add byte [di], cl
    add byte [data_0f00], cl
    add byte [bx + si], dl
    add byte [bx + di], dl
    add byte [bp + si], dl
    add byte [bp + di], dl
    add byte [si], dl
    add byte [di], dl
    add byte [bx + si], bl
    add byte [di], ah
    add byte [data_3300], ah
    add byte [si], dh
    add byte [di], dh
    add byte [data_3700], dh
    add byte [bx + si], bh
    add byte [bx + di], bh
    add byte [bp + si], bh
    add byte [bp + di], bh
    db 0x00, 0x58, 0x00 ; add byte [bx + si], bl
    pop dx
    db 0x00, 0x68, 0x00 ; add byte [bx + si], ch
    imul ax, word [bx + si], 0x6a
    insb
    add byte [bp], ch
    jo short @..local.l312
@..local.l312:
    jb short @..local.l313
@..local.l313:
    retf

    db 0xc6, 0xd3, 0xc6, 0xdb, 0xc6, 0xdb, 0xc6, 0xe3, 0xc6, 0xe3, 0xc6, 0xe3, 0xc6, 0xeb, 0xc6, 0xeb
    db 0xc6, 0xeb, 0xc6, 0xeb, 0xc6, 0xf3, 0xc6, 0xf3, 0xc6, 0xfb, 0xc6, 0xd3, 0xc6, 0xd3, 0xc6, 0xd3
    db 0xc6, 0xeb, 0xc6, 0xcb, 0xc6, 0xeb, 0xc6, 0xdb, 0xc6, 0x13, 0xc7, 0x03, 0xc7, 0xf3, 0xc6, 0x03
    db 0xc7, 0xd3, 0xc6, 0xe3, 0xc6, 0xd3, 0xc6, 0xe3, 0xc6, 0xd3, 0xc6, 0xe3, 0xc6, 0xeb, 0xc6, 0xd3
    db 0xc6, 0xd3, 0xc6, 0xcb, 0xc6, 0xeb, 0xc6, 0x0b, 0xc7, 0xeb, 0xc6, 0xeb, 0xc6, 0xd3, 0xc6, 0x0b
    db 0xc7, 0x13, 0xc7, 0x0b, 0xc7, 0x1b, 0xc7, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x8a
    db 0x87, 0x2b, 0x5e, 0x2a, 0xe4, 0x50, 0x8d, 0x46, 0xba, 0x50, 0xe8, 0xce, 0x74, 0x83, 0xc4, 0x04
    db 0x3d, 0x01, 0x00, 0x75, 0x3c, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x8a, 0x87, 0x2d
    db 0x5e, 0x2a, 0xe4, 0x50, 0x8d, 0x46, 0xb8, 0x50, 0xe8, 0xb0, 0x74, 0x83, 0xc4, 0x04, 0x3d, 0x01
    db 0x00, 0x75, 0x1e, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x8a, 0x87, 0x2c, 0x5e, 0x2a
    db 0xe4, 0x50, 0x8d, 0x46, 0xbc, 0x50, 0xe8, 0x92, 0x74, 0x83, 0xc4, 0x04, 0x3d, 0x01, 0x00, 0x74
    db 0x1f, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xb8, 0x1f, 0x06, 0x50, 0xe8, 0x45, 0x3d, 0x83, 0xc4, 0x04
    db 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x69, 0x00, 0x50, 0xe8, 0x1f, 0x70, 0x83, 0xc4, 0x04, 0xeb, 0x3f
    db 0x8d, 0x86, 0x5e, 0xff, 0x50, 0xb8, 0xc2, 0x01, 0x50, 0xe8, 0x26, 0x3d, 0x83, 0xc4, 0x04, 0x8d
    db 0x86, 0x0e, 0xff, 0x50, 0x8b, 0x46, 0xd4, 0x05, 0x7c, 0x15, 0x50, 0xe8, 0x14, 0x3d, 0x83, 0xc4
    db 0x04, 0x8d, 0x86, 0x5e, 0xff, 0x50, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0xf6, 0x7a, 0x83, 0xc4
    db 0x04, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x36, 0x30, 0x00, 0xe8, 0xde, 0x6f, 0x83, 0xc4, 0x04, 0xff
    db 0x76, 0xf4, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0x3d, 0x82, 0x59, 0xb9, 0x06, 0x00, 0xf7, 0xe9
    db 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0xb8, 0x50, 0x00, 0x2b, 0xc1, 0x50, 0xe8, 0x9f
    db 0x6f, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0x8d, 0x86, 0x0e, 0xff, 0x50, 0xe8, 0xd5, 0x6f
    db 0x83, 0xc4, 0x04, 0x83, 0x46, 0xf4, 0x06

@..local.l314:
    mov word [bp - 0x000c], 0xa2
    cmp word [bp - 0x001c], byte 0
    jne short @..local.l315
    jmp near @..local.l319
@..local.l315:
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    cmp byte [bp - 0x0042], 3
    jne short @..local.l316
    lea ax, word [bp - 0x00f2]
    push ax
    mov ax, 0xbf2
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    push word [bp - 0x000c]
    mov ax, 0xe
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    jmp short @..local.l319
@..local.l316:
    mov word [bp - 0x0008], 0
    mov word [bp - 0x0002], 0
@..local.l317:
    push word [bp - 0x0002]
    lea ax, word [bp - 0x0034]
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    cmp ax, strict word 1
    jne short @..local.l318
    mov ax, word [bp - 0x0008]
    mov cx, 3
    cwd
    idiv cx
    mov cx, 6
    imul cx
    add ax, word [bp - 0x000c]
    push ax
    mov ax, word [bp - 0x0008]
    mov cx, 3
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x30
    imul cx
    add ax, strict word 0xe
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    lea ax, word [bp - 0x00f2]
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xbea
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    inc word [bp - 0x0008]
@..local.l318:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short @..local.l317
@..local.l319:
    mov word [bp - 0x000c], 0xae
    push word [bp - 0x000c]
    mov ax, 0xe
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    cmp word [bp - 0x0010], byte 0
    jne short @..local.l320
    cmp word [bp - 0x0012], byte 0
    jne short @..local.l320
    jmp near @..local.l324
@..local.l320:
    lea ax, word [bp - 0x00f2]
    push ax
    mov ax, 0x1c3
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x37
    cmp word [bp - 0x0010], byte 0
    je short @..local.l321
    mov ax, 0x33
@..local.l321:
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    mov al, byte [bp - 0x00f2]
    sub ah, ah
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x37
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2f
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    mov ax, 0
    push ax
    mov al, byte [bp - 0x0043]
    sub ah, ah
    test ax, 8
    je short @..local.l322
    mov ax, 0x33
    jmp short @..local.l323
@..local.l322:
    mov ax, 0x37
@..local.l323:
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    mov al, byte [bp - 0x00f1]
    sub ah, ah
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    jmp short @..local.l325
@..local.l324:
    cmp word [bp - 0x0014], byte 0
    je short @..local.l325
    lea ax, word [bp - 0x00f2]
    push ax
    mov ax, 0x1c4
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp - 0x0024]
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    lea ax, word [bp - 0x00f2]
    push ax
    mov ax, 0
    push ax
    mov al, byte [bp - 0x003a]
    cbw
    mov cx, ax
    pop ax
    sub ax, cx
    push ax
    call ds_dispatch_b27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
@..local.l325:
    cmp word [bp - 0x0016], byte 0
    je short @..local.l328
    lea ax, word [bp - 0x00f2]
    push ax
    mov al, byte [bp - 0x0043]
    sub ah, ah
    test ax, 4
    je short @..local.l326
    mov ax, 0x1ca
    jmp short @..local.l327
@..local.l326:
    mov ax, 0x1c9
@..local.l327:
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    push word [bp - 0x000c]
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, data_0002
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x50
    sub ax, cx
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x16
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    jmp short @..local.l329
@..local.l328:
    cmp word [bp - 0x0018], byte 0
    je short @..local.l329
    lea ax, word [bp - 0x00f2]
    push ax
    mov al, byte [bp - 0x0042]
    sub ah, ah
    add ax, 0x1c6
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    push word [bp - 0x000c]
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, data_0002
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x50
    sub ax, cx
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x16
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
@..local.l329:
    push word [bp - 0x000c]
    mov ax, 0x68
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 9
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov ax, word [bp - 0x0056]
    mov cx, 0xa
    cwd
    idiv cx
    push ax
    call ds_dispatch_b2e7
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x2e
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0056]
    mov cx, 0xa
    cwd
    idiv cx
    mov ax, dx
    push ax
    call ds_dispatch_b2e7
    add sp, byte 6
    lea ax, word [bp - 0x00f2]
    push ax
    mov ax, 0x1c5
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    jmp near @..local.l361
@..local.l330:
    cmp word [bp - 0x0026], byte 0
    jne short @..local.l331
    jmp near @..local.l335
@..local.l331:
    mov ax, 0
    push ax
    mov ax, 0x33
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    lea ax, word [bp - 0x00f2]
    push ax
    mov ax, 0x1d2
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x0142]
    push ax
    mov al, byte [bp - 0x005a]
    sub ah, ah
    add ax, word [bp - 0x005c]
    push ax
    call ds_dispatch_b27d
    add sp, byte 4
    lea ax, word [bp - 0x0192]
    push ax
    mov al, byte [bp - 0x005a]
    sub ah, ah
    push ax
    mov al, byte [bp - 0x0059]
    sub ah, ah
    mov cx, ax
    pop ax
    imul cx
    add ax, word [bp - 0x005c]
    push ax
    call ds_dispatch_b27d
    add sp, byte 4
    lea ax, word [bp - 0x0142]
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
    lea ax, word [bp - 0x0142]
    push ax
    mov ax, 0x1d3
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x0142]
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
    lea ax, word [bp - 0x0192]
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
    push word [bp - 0x000c]
    mov ax, 0xe
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    cmp byte [bp - 0x0039], 0
    jne short @..local.l332
    jmp near @..local.l334
@..local.l332:
    mov ax, 0x90c0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    cmp byte [bp - 0x0039], 0
    jl short @..local.l333
    mov ax, 0x90c2
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
@..local.l333:
    lea ax, word [bp - 0x0142]
    push ax
    mov al, byte [bp - 0x0039]
    cbw
    push ax
    call ds_dispatch_b27d
    add sp, byte 4
    lea ax, word [bp - 0x0142]
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
    mov ax, 0x90c4
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
    push word [bp - 0x000c]
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, ax
    mov ax, 0x16
    sub ax, cx
    mov cx, 6
    imul cx
    add ax, strict word 0xe
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
@..local.l334:
    add word [bp - 0x000c], byte 6
@..local.l335:
    mov al, byte [bp - 0x003e]
    sub ah, ah
    mov cx, 0x10
    cwd
    idiv cx
    mov word [bp - 0x0008], dx
    mov word [bp - 0x0004], ax
    cmp word [bp - 0x0028], byte 0
    jne short @..local.l336
    jmp near @..local.l338
@..local.l336:
    sub dx, ax
    mov ax, dx
    je short @..local.l338
    mov ax, 0
    push ax
    mov ax, 0x5e
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    lea ax, word [bp - 0x00f2]
    push ax
    mov ax, 0x1d4
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    sub ax, word [bp - 0x0004]
    jle short @..local.l337
    mov ax, 0x90c6
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
@..local.l337:
    lea ax, word [bp - 0x0142]
    push ax
    mov ax, word [bp - 0x0008]
    sub ax, word [bp - 0x0004]
    push ax
    call ds_dispatch_b27d
    add sp, byte 4
    lea ax, word [bp - 0x0142]
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
    push word [bp - 0x000c]
    mov ax, 0xe
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
@..local.l338:
    cmp byte [bp - 0x003d], 0
    je short @..local.l339
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    lea ax, word [bp - 0x00f2]
    push ax
    mov ax, 0x1d5
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    push word [bp - 0x000c]
    mov ax, 0x6e
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
@..local.l339:
    add word [bp - 0x000c], byte 6
    cmp byte [bp - 0x003c], 0
    je short @..local.l340
    mov ax, 0
    push ax
    mov ax, 0xa4
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    lea ax, word [bp - 0x00f2]
    push ax
    mov ax, 0x1d6
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov al, byte [bp - 0x003c]
    sub ah, ah
    push ax
    lea ax, word [bp - 0x0142]
    push ax
    call api_idx_001a
    add sp, byte 4
    lea ax, word [bp - 0x0142]
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
    push word [bp - 0x000c]
    mov ax, 0xe
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    add word [bp - 0x000c], byte 6
@..local.l340:
    cmp word [bp - 0x0058], byte 0
    jne short @..local.l341
    jmp near @..local.l344
@..local.l341:
    mov ax, 0
    push ax
    mov ax, 0x16
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, word [bp - 0x0058]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x0030], ax
    mov word [bp - 0x002e], dx
    lea ax, word [bp - 0x00f2]
    push ax
    add dx, strict word 0xfa0
    mov ax, dx
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    push word [bp - 0x000c]
    mov ax, 0xe
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    lea ax, word [bp - 0x00f2]
    push ax
    push word [bp - 0x0030]
    call ds_dispatch_b27d
    add sp, byte 4
    mov ax, 0x90c8
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
    mov bx, word [bp + 0x6]
    cmp byte [bx + 0x6], 0
    jne short @..local.l342
    lea ax, word [bp - 0x0142]
    push ax
    mov ax, 0x1da
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    jmp short @..local.l343
@..local.l342:
    lea ax, word [bp - 0x0142]
    push ax
    mov bx, word [bp + 0x6]
    mov al, byte [bx + 0x6]
    sub ah, ah
    push ax
    call ds_dispatch_b27d
    add sp, byte 4
@..local.l343:
    lea ax, word [bp - 0x0142]
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
    push word [bp - 0x000c]
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, ax
    mov ax, 0x16
    sub ax, cx
    mov cx, 6
    imul cx
    add ax, strict word 0xe
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    add word [bp - 0x000c], byte 6
@..local.l344:
    add word [bp - 0x000c], byte 6
    cmp word [bp - 0x002a], byte 0
    jne short @..local.l345
    jmp near @..local.l355
@..local.l345:
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    lea ax, word [bp - 0x00f2]
    push ax
    mov ax, 0x1d8
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    push word [bp - 0x000c]
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, data_0002
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x50
    sub ax, cx
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    add word [bp - 0x000c], byte 6
    mov ax, 0
    push ax
    mov ax, 0x2e
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    push word [bp - 0x000c]
    mov ax, 0xe
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov byte [bp - 0x00f2], 0
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0002], 0
@..local.l346:
    mov bx, word [bp - 0x0002]
    add bx, bp
    cmp byte [bx - 0x0050], 0
    ja short @..local.l347
    jmp near @..local.l349
@..local.l347:
    mov word [bp - 0x0006], 1
    lea ax, word [bp - 0x0142]
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0x1db
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_fa90
    pop cx
    push ax
    lea ax, word [bp - 0x0142]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    cmp ax, strict word 0x16
    jle short @..local.l348
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x00f3], 0
    push word [bp - 0x000c]
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, data_0002
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x50
    sub ax, cx
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov byte [bp - 0x00f2], 0
    add word [bp - 0x000c], byte 6
@..local.l348:
    lea ax, word [bp - 0x0142]
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
    mov ax, 0x90ca
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
@..local.l349:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jge short @..local.l350
    jmp near @..local.l346
@..local.l350:
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_fa90
    pop cx
    cmp ax, strict word 0
    jle short @..local.l351
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x00f3], 0
    push word [bp - 0x000c]
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, data_0002
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x50
    sub ax, cx
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
@..local.l351:
    cmp word [bp - 0x0006], byte 0
    jne short @..local.l354
    lea ax, word [bp - 0x00f2]
    push ax
    mov bx, word [bp + 0x6]
    cmp word [bx], strict word 0x1d5
    jne short @..local.l352
    mov ax, 0x1e4
    jmp short @..local.l353
@..local.l352:
    mov ax, 0x1e3
@..local.l353:
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    push word [bp - 0x000c]
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, data_0002
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x50
    sub ax, cx
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
@..local.l354:
    jmp near @..local.l361
@..local.l355:
    cmp word [bp - 0x001e], byte 0
    jne short @..local.l356
    jmp near @..local.l361
@..local.l356:
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    lea ax, word [bp - 0x00f2]
    push ax
    mov ax, 0x1d9
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    push word [bp - 0x000c]
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, data_0002
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x50
    sub ax, cx
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    add word [bp - 0x000c], byte 6
    mov ax, 0
    push ax
    mov ax, 0xa9
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0004], 0
@..local.l357:
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
    jg short @..local.l358
    jmp near @..local.l359
@..local.l358:
    mov word [bp - 0x0006], 1
    lea ax, word [bp - 0x00f2]
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0x190
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    push word [bp - 0x000c]
    mov ax, 0x26
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    lea ax, word [bp - 0x00f2]
    push ax
    push word [bp - 0x0008]
    call ds_dispatch_b27d
    add sp, byte 4
    mov ax, 0x90cc
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
    push word [bp - 0x000c]
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, ax
    mov ax, 0xe
    sub ax, cx
    mov cx, 6
    imul cx
    add ax, strict word 0x26
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    add word [bp - 0x000c], byte 6
@..local.l359:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 2
    jge short @..local.l360
    jmp near @..local.l357
@..local.l360:
    cmp word [bp - 0x0006], byte 0
    jne short @..local.l361
    lea ax, word [bp - 0x00f2]
    push ax
    mov ax, 0x1e3
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    push word [bp - 0x000c]
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, data_0002
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x50
    sub ax, cx
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x00f2]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
@..local.l361:
    mov ax, 0xb6
    push ax
    mov ax, 0xab
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    cmp word [data_0e32], byte 0
    je short @..local.l367
    cmp word [bp + 0xa], byte 0
    jne short @..local.l364
@..local.l362:
    cmp word [bp - 0x0194], byte 0
    je short @..local.l363
    lea ax, word [bp - 0x000c]
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    call ds_dispatch_f053
    add sp, byte 4
    test ax, ax
    je short @..local.l363
    jmp short @..local.l362
@..local.l363:
    jmp short @..local.l366
@..local.l364:
    call ds_dispatch_ec17
@..local.l365:
    call ds_dispatch_baef
    test ax, ax
    jne short @..local.l366
    jmp short @..local.l365
@..local.l366:
    jmp short @..local.l368
@..local.l367:
    mov ax, 1
    push ax
    call ds_dispatch_eb32
    pop cx
    sub ah, ah
    mov word [bp - 0x0008], ax
    cmp word [bp - 0x0008], byte 0x0d
    je short @..local.l368
    cmp word [bp - 0x0008], byte 0x1b
    jne short @..local.l367
@..local.l368:
    mov ax, 0
    ret
api_idx_0004_11:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov ax, word [data_0038]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0004_11.l5
@..api_idx_0004_11.l1:
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short @..api_idx_0004_11.l2
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    add ax, si
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short @..api_idx_0004_11.l3
@..api_idx_0004_11.l2:
    mov ax, 1
    jmp short @..api_idx_0004_11.l4
@..api_idx_0004_11.l3:
    mov ax, 0
@..api_idx_0004_11.l4:
    add si, word [bp - 0x0004]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6968], ax
    inc word [bp - 0x0002]
@..api_idx_0004_11.l5:
    push word [bp + 0x6]
    call ds_dispatch_fa90
    pop cx
    cmp ax, word [bp - 0x0002]
    jg short @..api_idx_0004_11.l1
    mov ax, word [data_003c]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0004_11.l10
@..api_idx_0004_11.l6:
    mov bx, word [bp + 0x8]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short @..api_idx_0004_11.l7
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    add ax, si
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short @..api_idx_0004_11.l8
@..api_idx_0004_11.l7:
    mov ax, 1
    jmp short @..api_idx_0004_11.l9
@..api_idx_0004_11.l8:
    mov ax, 0
@..api_idx_0004_11.l9:
    add si, word [bp - 0x0004]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6968], ax
    inc word [bp - 0x0002]
@..api_idx_0004_11.l10:
    push word [bp + 0x8]
    call ds_dispatch_fa90
    pop cx
    cmp ax, word [bp - 0x0002]
    jg short @..api_idx_0004_11.l6
    mov ax, word [data_0040]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0004_11.l15
@..api_idx_0004_11.l11:
    mov bx, word [bp + 0xa]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short @..api_idx_0004_11.l12
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    add ax, si
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short @..api_idx_0004_11.l13
@..api_idx_0004_11.l12:
    mov ax, 1
    jmp short @..api_idx_0004_11.l14
@..api_idx_0004_11.l13:
    mov ax, 0
@..api_idx_0004_11.l14:
    add si, word [bp - 0x0004]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6968], ax
    inc word [bp - 0x0002]
@..api_idx_0004_11.l15:
    push word [bp + 0xa]
    call ds_dispatch_fa90
    pop cx
    cmp ax, word [bp - 0x0002]
    jg short @..api_idx_0004_11.l11
    mov ax, word [data_0044]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0004_11.l20
@..api_idx_0004_11.l16:
    mov bx, word [bp + 0xc]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short @..api_idx_0004_11.l17
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    add ax, si
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short @..api_idx_0004_11.l18
@..api_idx_0004_11.l17:
    mov ax, 1
    jmp short @..api_idx_0004_11.l19
@..api_idx_0004_11.l18:
    mov ax, 0
@..api_idx_0004_11.l19:
    add si, word [bp - 0x0004]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6968], ax
    inc word [bp - 0x0002]
@..api_idx_0004_11.l20:
    push word [bp + 0xc]
    call ds_dispatch_fa90
    pop cx
    cmp ax, word [bp - 0x0002]
    jg short @..api_idx_0004_11.l16
    ret
api_idx_0004_12:
    mov ax, 0xfffc
    call ds_dispatch_f40b
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
    call api_idx_0004_11
    add sp, byte 0x0a
    jmp near @..api_idx_0004_12.l3
    mov ax, 0x910f
    push ax
    mov ax, 0x9108
    push ax
    mov ax, 0x90ff
    push ax
    mov ax, 0x90f4
    push ax
    push word [bp + 0x4]
    call api_idx_0004_11
    add sp, byte 0x0a
    jmp near @..api_idx_0004_12.l3
    mov ax, 0x9135
    push ax
    mov ax, 0x912e
    push ax
    mov ax, 0x9125
    push ax
    mov ax, 0x911a
    push ax
    push word [bp + 0x4]
    call api_idx_0004_11
    add sp, byte 0x0a
    jmp near @..api_idx_0004_12.l3
    mov ax, 0x915b
    push ax
    mov ax, 0x9154
    push ax
    mov ax, 0x914b
    push ax
    mov ax, 0x9140
    push ax
    push word [bp + 0x4]
    call api_idx_0004_11
    add sp, byte 0x0a
    jmp near @..api_idx_0004_12.l3
    mov ax, 0x9181
    push ax
    mov ax, 0x917a
    push ax
    mov ax, 0x9171
    push ax
    mov ax, 0x9166
    push ax
    push word [bp + 0x4]
    call api_idx_0004_11
    add sp, byte 0x0a
    jmp near @..api_idx_0004_12.l3
    mov ax, 0x91a7
    push ax
    mov ax, 0x91a0
    push ax
    mov ax, 0x9197
    push ax
    mov ax, 0x918c
    push ax
    push word [bp + 0x4]
    call api_idx_0004_11
    add sp, byte 0x0a
    jmp near @..api_idx_0004_12.l3
    mov ax, 0x91cd
    push ax
    mov ax, 0x91c6
    push ax
    mov ax, 0x91bd
    push ax
    mov ax, api_idx_0002_11
    push ax
    push word [bp + 0x4]
    call api_idx_0004_11
    add sp, byte 0x0a
    jmp near @..api_idx_0004_12.l3
    mov ax, 0x91f3
    push ax
    mov ax, 0x91ec
    push ax
    mov ax, 0x91e3
    push ax
    mov ax, 0x91d8
    push ax
    push word [bp + 0x4]
    call api_idx_0004_11
    add sp, byte 0x0a
    jmp near @..api_idx_0004_12.l3
    mov ax, 0x9219
    push ax
    mov ax, 0x9212
    push ax
    mov ax, 0x9209
    push ax
    mov ax, 0x91fe
    push ax
    push word [bp + 0x4]
    call api_idx_0004_11
    add sp, byte 0x0a
    jmp near @..api_idx_0004_12.l3
    mov ax, 0x923f
    push ax
    mov ax, 0x9238
    push ax
    mov ax, 0x922f
    push ax
    mov ax, 0x9224
    push ax
    push word [bp + 0x4]
    call api_idx_0004_11
    add sp, byte 0x0a
    jmp near @..api_idx_0004_12.l3
    mov ax, 0x9265
    push ax
    mov ax, 0x925e
    push ax
    mov ax, 0x9255
    push ax
    mov ax, 0x924a
    push ax
    push word [bp + 0x4]
    call api_idx_0004_11
    add sp, byte 0x0a
    jmp short @..api_idx_0004_12.l3
    mov ax, 0x928b
    push ax
    mov ax, 0x9284
    push ax
    mov ax, 0x927b
    push ax
    mov ax, 0x9270
    push ax
    push word [bp + 0x4]
    call api_idx_0004_11
    add sp, byte 0x0a
    jmp short @..api_idx_0004_12.l3
    mov ax, 0x92b1
    push ax
    mov ax, 0x92aa
    push ax
    mov ax, 0x92a1
    push ax
@..api_idx_0004_12.l1:
    mov ax, 0x9296
    push ax
    push word [bp + 0x4]
    call api_idx_0004_11
    add sp, byte 0x0a
    jmp short @..api_idx_0004_12.l3
    mov ax, 0x92d7
    push ax
    mov ax, 0x92d0
    push ax
    mov ax, 0x92c7
    push ax
    mov ax, 0x92bc
    push ax
    push word [bp + 0x4]
    call api_idx_0004_11
    add sp, byte 0x0a
    jmp short @..api_idx_0004_12.l3
    jg short @..api_idx_0004_12.l1
    wait
    aam 0xb7
    aam 0xd3
    aam 0xef
    aam 0xb
    aad api_idx_0002
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
@..api_idx_0004_12.l3:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d65], 0xd
    jbe short @..api_idx_0004_12.l4
    cmp byte [bx + 0x5d6a], 0xd
    jbe short @..api_idx_0004_12.l4
    mov word [data_96d0], 1
@..api_idx_0004_12.l4:
    mov word [bp - 0x0004], 0
    mov ax, word [bp + 0x6]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x38, 0x00 ; mov ax, word [bx + 0x38]
    mov word [bp - 0x0002], ax
    jmp short @..local.l370
@..api_idx_0004_12.l5:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6968], byte 1
    jne short @..local.l369
    mov ax, 0x14
    imul word [bp - 0x0004]
    add ax, 0xe38
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0x157c
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov si, cx
    mov bx, word [bp + 0x8]
    mov word [bx + si], ax
    inc word [bp - 0x0004]
@..local.l369:
    inc word [bp - 0x0002]
@..local.l370:
    mov ax, word [bp + 0x6]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x3a, 0x00 ; mov ax, word [bx + 0x3a]
    cmp ax, word [bp - 0x0002]
    jge short @..api_idx_0004_12.l5
    mov ax, 0x96dc
    push ax
    mov ax, 0x159e
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    ret
api_idx_0002_8:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    push ax
    push word [data_93f8]
    push word [data_93f6]
    call ds_dispatch_e942
    add sp, byte 8
    mov word [bp - 0x0002], 0
    jmp near @..api_idx_0002_8.l2
@..api_idx_0002_8.l1:
    mov ax, 0
    push ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x30, 0x00 ; push word [bx + 0x30]
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x72
    push ax
    mov ax, 6
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0xe38
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x72
    push ax
    mov ax, 0x85
    push ax
    call ds_dispatch_e809
    add sp, byte 4
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
    call ds_dispatch_b2e7
    add sp, byte 6
    inc word [bp - 0x0002]
@..api_idx_0002_8.l2:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x8]
    jge short @..api_idx_0002_8.l3
    jmp near @..api_idx_0002_8.l1
@..api_idx_0002_8.l3:
    ret
api_idx_0058:
    mov ax, 0xffa8
    call ds_dispatch_f40b
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
    call ds_dispatch_e928
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
    call ds_dispatch_bc9a
    add sp, byte 8
    lea ax, word [bp - 0x0054]
    push ax
    push word [bp + 0x4]
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 0xfff3
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, data_0002
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa1
    sub ax, cx
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    push ax
    call ds_dispatch_b53b
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
    call ds_dispatch_bce3
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    mov ax, 0x1a
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, word [bp + 0x8]
    inc ax
    inc ax
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, ax
    mov ax, word [bp + 0xa]
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, data_0002
    cwd
    idiv cx
    add ax, word [bp + 0x6]
    inc ax
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call ds_dispatch_e84e
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, word [bp - 0x0058]
    mov dx, word [bp - 0x0056]
    ret
api_idx_0008_4:
    mov ax, 0xfff8
    call ds_dispatch_f40b
    push word [bp + 0xe]
    push word [bp + 0xc]
    call ds_dispatch_e823
    add sp, byte 4
    push word [bp + 0x4]
    call ds_dispatch_fa90
    pop cx
    mov word [bp - 0x0004], ax
    mov cx, 6
    imul cx
    add word [bp + 0x6], ax
@..api_idx_0008_4.l1:
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0008], 0
@..api_idx_0008_4.l2:
    mov ax, 1
    push ax
    call ds_dispatch_ea50
    pop cx
    test ax, ax
    je short @..api_idx_0008_4.l3
    jmp near @..api_idx_0008_4.l7
@..api_idx_0008_4.l3:
    cmp word [bp - 0x0008], byte 0
    jne short @..api_idx_0008_4.l5
    push word [bp + 0xe]
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call ds_dispatch_e901
    add sp, byte 0x0a
    cmp word [bp - 0x0006], byte 0
    je short @..api_idx_0008_4.l4
    push word [bp + 0x8]
    push word [bp + 0x6]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    call ds_dispatch_e830
    add sp, byte 4
@..api_idx_0008_4.l4:
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, word [bp - 0x0006]
    inc ax
    mov cx, data_0002
    cwd
    idiv cx
    mov word [bp - 0x0006], dx
    mov word [bp - 0x0008], 0xa
    jmp short @..api_idx_0008_4.l6
@..api_idx_0008_4.l5:
    mov ax, 0xa
    push ax
    call ds_dispatch_e489
    pop cx
    dec word [bp - 0x0008]
@..api_idx_0008_4.l6:
    jmp near @..api_idx_0008_4.l2
@..api_idx_0008_4.l7:
    mov ax, 1
    push ax
    call ds_dispatch_eb32
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
    call ds_dispatch_e901
    add sp, byte 0x0a
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call ds_dispatch_e8da
    add sp, byte 8
    cmp word [bp - 0x0002], byte 0x0d
    jne short @..local.l371
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], 0
    call ds_dispatch_ec17
    ret
@..local.l371:
    cmp word [bp - 0x0002], byte 8
    jne short @..local.l374
    cmp word [bp - 0x0004], byte 0
    jle short @..local.l372
    dec word [bp - 0x0004]
    add word [bp + 0x6], byte 0xfa
    jmp short @..local.l373
@..local.l372:
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
@..local.l373:
    jmp near @..local.l378
@..local.l374:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp + 0xa]
    jl short @..local.l375
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
    jmp near @..local.l378
@..local.l375:
    cmp word [bp + 0x10], byte 0
    jne short @..local.l376
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x20
    jl short @..local.l376
    cmp ax, strict word 0x7f
    jle short @..local.l377
@..local.l376:
    cmp word [bp + 0x10], byte 1
    jne short @..local.l378
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x30
    jl short @..local.l378
    cmp ax, strict word 0x39
    jg short @..local.l378
@..local.l377:
    mov al, byte [bp - 0x0002]
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], al
    inc word [bp - 0x0004]
    push word [bp + 0x8]
    push word [bp + 0x6]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov al, byte [bp - 0x0002]
    sub ah, ah
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call ds_dispatch_e8da
    add sp, byte 8
    add word [bp + 0x6], byte 6
@..local.l378:
    jmp near @..api_idx_0008_4.l1
    db 0xc3
api_idx_0026:
    mov ax, 0xffda
    call ds_dispatch_f40b
    mov word [data_904e], 0xffff
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
    call ds_dispatch_c283
    add sp, byte 0x0a
    mov word [bp - 0x0026], ax
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    call ds_dispatch_bc9a
    add sp, byte 8
    lea ax, word [bp - 0x0024]
    push ax
    push word [bp + 0x4]
    call ds_dispatch_b53b
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
    call ds_dispatch_c0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0024]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    push ax
    call ds_dispatch_b53b
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
    call ds_dispatch_c0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0024]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    call ds_dispatch_b53b
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
    call ds_dispatch_c0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0024]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    inc ax
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 0x9b
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x16
    push ax
    lea ax, word [bp - 0x0024]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, ax
    mov ax, 0x11
    sub ax, cx
    mov cx, 6
    imul cx
    inc ax
    inc ax
    mov cx, data_0002
    cwd
    idiv cx
    add ax, word [bp - 0x0002]
    add ax, strict word 0x5d
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0024]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    push word [bp + 0xc]
    mov ax, 0xe38
    push ax
    call ds_dispatch_f364
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
    call ds_dispatch_bf97
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    mov ax, data_0002
    push ax
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    call ds_dispatch_baa6
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
    call ds_dispatch_e8da
    add sp, byte 8
    call ds_dispatch_ec17
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
    call api_idx_0008_4
    add sp, byte 0x0e
    mov ax, 0xe38
    push ax
    push word [bp + 0xc]
    call ds_dispatch_f364
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
    call ds_dispatch_bf97
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
    call ds_dispatch_e8da
    add sp, byte 8
    mov word [bp - 0x0010], 1
@..local.l379:
    mov ax, 0x59fe
    push ax
    call ds_dispatch_b90d
    pop cx
    dec ax
    mov word [bp - 0x000e], ax
    cmp word [data_5b3e], byte 1
    je short @..local.l380
    jmp near @..local.l392
@..local.l380:
    jmp near @..local.l388
@..local.l381:
    call ds_dispatch_ec17
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
    call ds_dispatch_bf97
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
    call ds_dispatch_e8da
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
    call api_idx_0008_4
    add sp, byte 0x0e
    mov ax, 0xe38
    push ax
    push word [bp + 0xc]
    call ds_dispatch_f364
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
    call ds_dispatch_bf97
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
    call ds_dispatch_e8da
    add sp, byte 8
    jmp near @..local.l392
@..local.l382:
    cmp word [bp + 0x6], byte 0
    je short @..local.l383
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
    call ds_dispatch_be5f
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
    call ds_dispatch_be5f
    add sp, byte 0x0a
    mov word [data_9050], 0
    mov word [bp - 0x0010], 0
@..local.l383:
    jmp near @..local.l392
@..local.l384:
    cmp word [bp + 0x8], byte 0
    je short @..local.l385
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
    call ds_dispatch_be5f
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
    call ds_dispatch_be5f
    add sp, byte 0x0a
    mov word [data_9050], 1
    mov word [bp - 0x0010], 0
@..local.l385:
    jmp short @..local.l392
@..local.l386:
    cmp word [bp + 0xa], byte 0
    je short @..local.l387
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
    call ds_dispatch_be5f
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
    call ds_dispatch_be5f
    add sp, byte 0x0a
    mov word [data_9050], data_0002
    mov word [bp - 0x0010], 0
@..local.l387:
    jmp short @..local.l392
@..local.l388:
    cmp ax, strict word 0
    jne short @..local.l389
    jmp near @..local.l381
@..local.l389:
    cmp ax, strict word 1
    jne short @..local.l390
    jmp near @..local.l382
@..local.l390:
    cmp ax, strict word 2
    jne short @..local.l391
    jmp near @..local.l384
@..local.l391:
    cmp ax, strict word 3
    je short @..local.l386
@..local.l392:
    cmp word [bp - 0x0010], byte 0
    je short @..local.l393
    jmp near @..local.l379
@..local.l393:
    mov ax, 1
    push ax
    push word [bp - 0x0026]
    call ds_dispatch_c459
    add sp, byte 4
    mov word [data_904e], 0xffff
    mov ax, word [data_9050]
    ret
api_idx_0002_9:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov word [bp - 0x0002], 0
@..api_idx_0002_9.l1:
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
    jle short @..api_idx_0002_9.l2
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
@..api_idx_0002_9.l2:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short @..api_idx_0002_9.l1
    ret
api_idx_0002_10:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6984], 1
    mov word [bp - 0x0002], 0
@..api_idx_0002_10.l1:
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
    jge short @..api_idx_0002_10.l3
    cmp word [bp + 0xa], byte 0
    je short @..api_idx_0002_10.l2
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
    jmp short @..api_idx_0002_10.l3
@..api_idx_0002_10.l2:
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6984], 0
@..api_idx_0002_10.l3:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short @..api_idx_0002_10.l1
    ret
loc_902e:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, word [bp + 0x6]
    jmp near @..local.l394

    db 0xff, 0x76, 0x08, 0xb8, 0xe8, 0x92, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x6e, 0xff
    db 0x83, 0xc4, 0x08, 0xe9, 0x61, 0x01, 0xff, 0x76, 0x08, 0xb8, 0xf1, 0x92, 0x50, 0xff, 0x76, 0x06
    db 0xff, 0x76, 0x04, 0xe8, 0x58, 0xff, 0x83, 0xc4, 0x08, 0xe9, 0x4b, 0x01, 0xff, 0x76, 0x08, 0xb8
    db 0xfa, 0x92, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x42, 0xff, 0x83, 0xc4, 0x08, 0xe9
    db 0x35, 0x01, 0xff, 0x76, 0x08, 0xb8, 0x03, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8
    db 0x2c, 0xff, 0x83, 0xc4, 0x08, 0xe9, 0x1f, 0x01, 0xff, 0x76, 0x08, 0xb8, 0x0c, 0x93, 0x50, 0xff
    db 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x16, 0xff, 0x83, 0xc4, 0x08, 0xe9, 0x09, 0x01, 0xff, 0x76
    db 0x08, 0xb8, 0x15, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x00, 0xff, 0x83, 0xc4
    db 0x08, 0xe9, 0xf3, 0x00, 0xff, 0x76, 0x08, 0xb8, 0x1e, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76
    db 0x04, 0xe8, 0xea, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0xdd, 0x00, 0xff, 0x76, 0x08, 0xb8, 0x27, 0x93
    db 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0xd4, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0xc7, 0x00
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x80, 0xbf, 0x2c, 0x5e, 0x01, 0x75, 0x15, 0xff
    db 0x76, 0x08, 0xb8, 0x30, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0xaf, 0xfe, 0x83
    db 0xc4, 0x08, 0xeb, 0x0d, 0x8b, 0x46, 0x06, 0xd1, 0xe0, 0x8b, 0xd8, 0xc7, 0x87, 0x7c, 0x96, 0x00
    db 0x00, 0xe9, 0x93, 0x00, 0xff, 0x76, 0x08, 0xb8, 0x39, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76
    db 0x04, 0xe8, 0x8a, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0x7d, 0x00, 0xff, 0x76, 0x08, 0xb8, 0x42, 0x93
    db 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x74, 0xfe, 0x83, 0xc4, 0x08, 0xeb, 0x68, 0xff
    db 0x76, 0x08, 0xb8, 0x4b, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x5f, 0xfe, 0x83
    db 0xc4, 0x08, 0xeb, 0x53, 0xff, 0x76, 0x08, 0xb8, 0x54, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76
    db 0x04, 0xe8, 0x4a, 0xfe, 0x83, 0xc4, 0x08, 0xeb, 0x3e, 0xff, 0x76, 0x08, 0xb8, 0x5d, 0x93, 0x50
    db 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x35, 0xfe, 0x83, 0xc4, 0x08, 0xeb, 0x29, 0x81, 0xe0
    db 0x97, 0xe0, 0xad, 0xe0, 0xc3, 0xe0, 0xd9, 0xe0, 0xef, 0xe0, 0x05, 0xe1, 0x1b, 0xe1, 0x31, 0xe1
    db 0x65, 0xe1, 0x7b, 0xe1, 0x90, 0xe1, 0xa5, 0xe1, 0xba, 0xe1

@..local.l394:
    cmp ax, strict word 0xe
    jae short @..local.l395
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x1e31]
@..local.l395:
    ret
api_idx_0002_11:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov word [bp - 0x0002], 0
@..api_idx_0002_11.l1:
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call loc_902e
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xd
    jle short @..api_idx_0002_11.l1
    ret
loc_91d9:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, word [bp + 0x6]
    jmp near @..local.l396

    db 0xb8, 0x66, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x75, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0xbd, 0x00
    db 0xb8, 0x6f, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x65, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0xad, 0x00
    db 0xb8, 0x78, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x55, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0x9d, 0x00
    db 0xb8, 0x81, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x45, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0x8d, 0x00
    db 0xb8, 0x8a, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x35, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0x7d, 0x00
    db 0xb8, 0x93, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x25, 0xfd, 0x83, 0xc4, 0x04, 0xeb, 0x6e, 0xb8
    db 0x9c, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x16, 0xfd, 0x83, 0xc4, 0x04, 0xeb, 0x5f, 0xb8, 0xa5
    db 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x07, 0xfd, 0x83, 0xc4, 0x04, 0xeb, 0x50, 0xb8, 0xae, 0x93
    db 0x50, 0xff, 0x76, 0x04, 0xe8, 0xf8, 0xfc, 0x83, 0xc4, 0x04, 0xeb, 0x41, 0xb8, 0xb7, 0x93, 0x50
    db 0xff, 0x76, 0x04, 0xe8, 0xe9, 0xfc, 0x83, 0xc4, 0x04, 0xeb, 0x32, 0xb8, 0xc0, 0x93, 0x50, 0xff
    db 0x76, 0x04, 0xe8, 0xda, 0xfc, 0x83, 0xc4, 0x04, 0xeb, 0x23, 0x2c, 0xe2, 0x3c, 0xe2, 0x4c, 0xe2
    db 0x5c, 0xe2, 0x6c, 0xe2, 0x7c, 0xe2, 0x8b, 0xe2, 0x9a, 0xe2, 0xa9, 0xe2, 0xb8, 0xe2, 0xc7, 0xe2

@..local.l396:
    cmp ax, strict word 0xb
    jae short @..local.l397
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x1d2a]
@..local.l397:
    ret
api_idx_0030:
    mov ax, 0xffd0
    call ds_dispatch_f40b
    push word [bp + 0x4]
    call api_idx_0002_11
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
@..api_idx_0030.l1:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6984], byte 1
    jne short @..api_idx_0030.l2
    mov ax, 1
    jmp short @..api_idx_0030.l3
@..api_idx_0030.l2:
    mov ax, 0
@..api_idx_0030.l3:
    add bx, bp
    mov word [bx - 0x0030], ax
    cmp word [bx - 0x0030], byte 0
    je short @..api_idx_0030.l4
    inc word [bp - 0x0006]
@..api_idx_0030.l4:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xd
    jle short @..api_idx_0030.l1
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
    jle short @..api_idx_0030.l5
    jmp near @..api_idx_0030.l11
@..api_idx_0030.l5:
    mov al, byte [bp - 0x0004]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5e2d], al
    cmp word [bx + 0x5c18], strict word 0xfa
    jge short @..api_idx_0030.l7
    mov al, byte [bx + 0x5e3b]
    sub ah, ah
    cmp ax, word [bx + 0x5c18]
    jge short @..api_idx_0030.l6
    mov al, byte [bx + 0x5c18]
    mov byte [bx + 0x5e3b], al
@..api_idx_0030.l6:
    jmp short @..api_idx_0030.l8
@..api_idx_0030.l7:
    mov byte [bx + 0x5e3b], 0
@..api_idx_0030.l8:
    mov word [bx + 0x5c18], 1
    mov byte [bx + 0x5e2e], 0
    mov word [bx + 0x5c02], 0
    mov word [bx + 0x5c00], 0
    mov al, byte [bx + 0x5e2b]
    sub ah, ah
    push ax
    push word [bp + 0x4]
    call loc_91d9
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
    call loc_902e
    add sp, byte 6
    mov word [bp - 0x0008], 0
@..api_idx_0030.l9:
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
    je short @..api_idx_0030.l10
    test ax, data_0002
    jne short @..api_idx_0030.l10
    push word [bp - 0x0008]
    push word [bp + 0x4]
    call ds_dispatch_c7dc
    add sp, byte 4
@..api_idx_0030.l10:
    inc word [bp - 0x0008]
    mov ax, word [bp - 0x0008]
    cmp ax, strict word 0xa
    jl short @..api_idx_0030.l9
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_40b7
    add sp, byte 4
@..api_idx_0030.l11:
    ret
api_idx_0016:
    mov ax, 0xffea
    call ds_dispatch_f40b
    mov ax, 0x93c9
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov ax, 0
    push ax
    call ds_dispatch_ef14
    pop cx
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    call ds_dispatch_d161
    add sp, byte 4
    push ax
    call ds_dispatch_f909
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0016.l1
    mov ax, 0x13
    push ax
    call ds_dispatch_b171
    pop cx
@..api_idx_0016.l1:
    push word [bp + 0x6]
    push word [bp + 0x4]
    mov ax, 5
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_e743
    add sp, byte 8
    push word [bp - 0x0002]
    call ds_dispatch_fda5
    pop cx
    ret
api_idx_0022:
    mov ax, 0xffde
    call ds_dispatch_f40b
    mov word [bp - 0x000c], 0
    mov ax, word [data_5218]
    mov word [bp - 0x000e], ax
    cmp byte [data_5987], 5
    jne short @..api_idx_0022.l1
    cmp ax, strict word 0
    jle short @..api_idx_0022.l1
    inc ax
    inc ax
    jmp short @..api_idx_0022.l2
@..api_idx_0022.l1:
    mov ax, word [bp - 0x000e]
@..api_idx_0022.l2:
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
    je short @..api_idx_0022.l3
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
@..api_idx_0022.l3:
    mov ax, 0
    push ax
    push ax
    push word [data_93f0]
    push word [data_93ee]
    call ds_dispatch_e942
    add sp, byte 8
    mov ax, 0x4a
    push ax
    mov ax, data_0042
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0xe
    push ax
    call ds_dispatch_e928
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
    call ds_dispatch_baa6
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
    mov ax, api_idx_0002
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, data_0002
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
    call ds_dispatch_ec17
@..api_idx_0022.l4:
    mov ax, 0
    push ax
    push word [bp - 0x0008]
    push word [bp - 0x000a]
    call ds_dispatch_e94f
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
    mov ax, data_0042
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0xe
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
@..api_idx_0022.l5:
    mov ax, 0x59fe
    push ax
    call ds_dispatch_b90d
    pop cx
    dec ax
    mov word [bp - 0x0002], ax
    cmp word [data_5b3e], byte 0
    je short @..api_idx_0022.l5
    mov ax, word [bp - 0x0002]
    jmp short @..api_idx_0022.l8
@..api_idx_0022.l6:
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
    jmp short @..api_idx_0022.l9
@..api_idx_0022.l7:
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
    jmp short @..api_idx_0022.l9
@..api_idx_0022.l8:
    cmp ax, strict word 0
    je short @..api_idx_0022.l6
    cmp ax, strict word 1
    je short @..api_idx_0022.l7
@..api_idx_0022.l9:
    cmp word [bp - 0x0002], byte 2
    je short @..api_idx_0022.l10
    jmp near @..api_idx_0022.l4
@..api_idx_0022.l10:
    mov ax, 1
    push ax
    push ax
    mov ax, 0x18
    push ax
    mov ax, 0x97
    push ax
    mov ax, 0x58
    push ax
    call ds_dispatch_be5f
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
    call ds_dispatch_be5f
    add sp, byte 0x0a
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    push word [bp - 0x0006]
    call ds_dispatch_e94f
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp - 0x0008]
    push word [bp - 0x000a]
    call ds_dispatch_e94f
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
    call ds_dispatch_e8da
    add sp, byte 8
    cmp word [bp - 0x000c], byte 1
    jne short @..local.l398
    mov ax, 1
    push ax
    push ax
    push word [bp - 0x000e]
    lea ax, word [bp - 0x0022]
    push ax
    db 0xe8, 0xd7, 0x3a ; call 0xd1a8
    add sp, byte 8
@..local.l398:
    ret
api_idx_000e_3:
    mov ax, 0xfff2
    call ds_dispatch_f40b
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    call ds_dispatch_f364
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
    call api_idx_0026
    add sp, byte 0x0a
    cmp ax, strict word 2
    jne short @..local.l399
    ret
@..local.l399:
    lea ax, word [bp - 0x000a]
    push ax
    call ds_dispatch_fa90
    pop cx
    test ax, ax
    je short @..local.l400
    lea ax, word [bp - 0x000a]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    call ds_dispatch_f364
    add sp, byte 4
@..local.l400:
    ret
api_idx_0018:
    mov ax, 0xffe8
    call ds_dispatch_f40b
@..api_idx_0018.l1:
    mov word [bp - 0x0002], 0
@..api_idx_0018.l2:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0018], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jle short @..api_idx_0018.l2
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
    jmp short @..api_idx_0018.l6
@..api_idx_0018.l3:
    push word [bp + 0x4]
    call api_idx_000e_3
    pop cx
    jmp short @..api_idx_0018.l7
@..api_idx_0018.l4:
    push word [bp + 0x4]
    call api_idx_0022
    pop cx
    jmp short @..api_idx_0018.l7
@..api_idx_0018.l5:
    push word [bp + 0x4]
    call api_idx_0030
    pop cx
    jmp short @..api_idx_0018.l7
@..api_idx_0018.l6:
    cmp ax, strict word 0
    je short @..api_idx_0018.l3
    cmp ax, strict word 1
    je short @..api_idx_0018.l4
    cmp ax, strict word 2
    je short @..api_idx_0018.l5
@..api_idx_0018.l7:
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_40b7
    add sp, byte 4
    cmp word [bp - 0x0004], byte 4
    je short @..api_idx_0018.l8
    jmp near @..api_idx_0018.l1
@..api_idx_0018.l8:
    ret

    db 0x8f, 0x06, 0xde, 0x93, 0x59, 0x89, 0x26, 0xda, 0x93, 0x89, 0x2e, 0xdc, 0x93, 0x89, 0x36, 0xd6
    db 0x93, 0x89, 0x3e, 0xd8, 0x93, 0xfc, 0xbf, 0xe0, 0x93, 0xb9, 0xf0, 0x96, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0xf7, 0x67, 0x8b, 0x2e, 0xdc, 0x93, 0x8b, 0x26, 0xda
    db 0x93, 0x8b, 0x36, 0xd6, 0x93, 0x8b, 0x3e, 0xd8, 0x93, 0x51, 0xff, 0x26, 0xde, 0x93

leaf_loc_982c:
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

    db 0x25, 0x20, 0x00
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    db 0x20, 0x00
    db 'PCVWSCRN.VGA', 0
    db 0x28, 0x00, 0x2b, 0x00, 0x29, 0x00, 0x2b, 0x00, 0x2f, 0x00, 0x20, 0x00, 0x25, 0x00
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
    db 'PORTDATA.VGA', 0
    times 10 db 0

