%include "structs/structs.inc"
%include "structs/data_95e4.inc"
org 0
bits 16
%include "labels/vtrea_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0x0d, 0x9a, 0x98, 0x90

data_0002 equ 0x0002
data_0050 equ 0x0050
data_0086 equ 0x0086
data_00a6 equ 0x00a6
data_0110 equ 0x0110
data_0112 equ 0x0112
data_06b9 equ 0x06b9
data_06c7 equ 0x06c7
data_0a7f equ 0x0a7f
data_0e0e equ 0x0e0e
data_0e10 equ 0x0e10
data_0e12 equ 0x0e12
data_0e2a equ 0x0e2a
data_0e2c equ 0x0e2c
data_0e32 equ 0x0e32
data_1205 equ 0x1205
data_148c equ 0x148c
data_22e8 equ 0x22e8
data_2b2a equ 0x2b2a
data_357f equ 0x357f
data_3f00 equ 0x3f00
api_idx_0092 equ 0x4bcc
api_idx_007a equ 0x4f0c
data_5216 equ 0x5216
data_590e equ 0x590e
data_5910 equ 0x5910
data_598c equ 0x598c
data_598e equ 0x598e
data_599d equ 0x599d
data_59fa equ 0x59fa
data_59fc equ 0x59fc
data_5b3e equ 0x5b3e
data_5b6e equ 0x5b6e
data_5c38 equ 0x5c38
data_5da7 equ 0x5da7
data_69c8 equ 0x69c8
data_7ae9 equ 0x7ae9
data_82e8 equ 0x82e8
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
data_844c equ 0x844c
data_844e equ 0x844e
data_8450 equ 0x8450
data_849e equ 0x849e
data_84a0 equ 0x84a0
data_84a2 equ 0x84a2
data_84a4 equ 0x84a4
data_86b8 equ 0x86b8
data_8d06 equ 0x8d06
data_8d08 equ 0x8d08
data_8d0a equ 0x8d0a
data_8d0c equ 0x8d0c
data_8d0e equ 0x8d0e
data_8d10 equ 0x8d10
data_8d12 equ 0x8d12
data_8f20 equ 0x8f20
data_8f3e equ 0x8f3e
data_8f40 equ 0x8f40
data_8f42 equ 0x8f42
data_8f44 equ 0x8f44
data_8f46 equ 0x8f46
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
data_9116 equ 0x9116
data_9118 equ 0x9118
data_911a equ 0x911a
data_911c equ 0x911c
data_911e equ 0x911e
data_9120 equ 0x9120
data_9122 equ 0x9122
data_9124 equ 0x9124
data_9126 equ 0x9126
data_9150 equ 0x9150
data_9152 equ 0x9152
data_9154 equ 0x9154
data_91d4 equ 0x91d4
data_91fe equ 0x91fe
data_9200 equ 0x9200
data_9250 equ 0x9250
data_95de equ 0x95de
data_95e0 equ 0x95e0
data_95e4 equ 0x95e4

    db 0x7c, 0x00, 0xa6, 0x05, 0x0c, 0xea
loc_000e:
    mov ax, 0
    call ds_dispatch_f40b
    mov word [data_9114], 0
    mov word [data_9116], 0xffff
    mov word [data_9118], 0
    mov word [data_911a], 0xffff
    cmp word [data_830a], byte 0x0f
    jne short @..local.l1
    mov word [data_830a], 0x16
    call api_idx_0050_2
    jmp short @..local.l6
@..local.l1:
    cmp word [data_830a], byte 0x15
    jne short @..local.l2
    mov word [data_830a], 0x16
    call loc_809e
    jmp short @..local.l6
@..local.l2:
    cmp word [data_830a], byte 0x1a
    jne short @..local.l3
    mov word [data_830a], 5
    call loc_811f
    jmp short @..local.l6
@..local.l3:
    cmp word [data_830a], byte 0x1c
    jne short @..local.l4
    mov word [data_830a], 5
    call loc_81b6
    jmp short @..local.l6
@..local.l4:
    cmp word [data_830a], byte 0x1d
    jne short @..local.l5
    mov word [data_830a], 5
    call loc_81db
    jmp short @..local.l6
@..local.l5:
    mov word [data_830a], 0x16
@..local.l6:
    mov ax, 0
    ret
api_idx_0010:
    mov ax, 0xfff0
    call ds_dispatch_f40b
    cmp word [bp + 0x4], byte 0
    jl short @..api_idx_0010.l1
    cmp word [bp + 0x4], byte 6
    jle short @..local.l7
@..api_idx_0010.l1:
    mov ax, 0xffff
    ret
@..local.l7:
    mov word [bp - 0x0002], 7
    mov ax, word [bp + 0x4]
    inc ax
    mov word [bp - 0x0004], ax
    mov al, byte [bp - 0x0004]
    mov byte [bp - 0x0010], al
    mov byte [bp - 0x000f], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0010]
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
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x6a9b]
    sub ah, ah
    add ax, strict word 0x20
    push ax
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6a52]
    sub ah, ah
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_efd1
    add sp, byte 0x16
    mov ax, word [bp + 0x4]
    ret
math_loc_0111:
    mov ax, 0xfee8
    call ds_dispatch_f40b
    mov word [bp - 0x00f6], 7
    mov ax, 6
    imul word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx + 0x889]
    sub ah, ah
    jmp short @..math_loc_0111.l4
@..math_loc_0111.l1:
    mov word [bp - 0x0010], 1
    mov word [bp - 0x00fa], 1
    jmp short @..math_loc_0111.l5
@..math_loc_0111.l2:
    mov word [bp - 0x0010], 1
    mov word [bp - 0x00fa], 1
    jmp short @..math_loc_0111.l5
@..math_loc_0111.l3:
    mov word [bp - 0x0010], 0
    mov word [bp - 0x00fa], 4
    jmp short @..math_loc_0111.l5
@..math_loc_0111.l4:
    cmp ax, strict word 0
    je short @..math_loc_0111.l1
    cmp ax, strict word 1
    je short @..math_loc_0111.l2
    cmp ax, strict word 2
    je short @..math_loc_0111.l3
@..math_loc_0111.l5:
    mov word [bp - 0x00fc], 6
    mov ax, 0xc
    cwd
    idiv word [bp - 0x00fa]
    mov word [bp - 0x00fe], ax
    mov ax, 6
    imul word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx + 0x888]
    sub ah, ah
    mov word [bp - 0x00f8], ax
    mov word [bp - 0x000c], 1
    mov ax, word [bp - 0x00fc]
    dec ax
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], 0
    mov word [bp - 0x000a], 0xffff
    mov al, byte [bx + 0x889]
    sub ah, ah
    jmp short @..math_loc_0111.l8
@..math_loc_0111.l6:
    inc word [bp + 0x6]
    inc word [bp - 0x00f8]
    jmp short @..math_loc_0111.l9
@..math_loc_0111.l7:
    add word [bp - 0x00f8], byte 3
    jmp short @..math_loc_0111.l9
@..math_loc_0111.l8:
    cmp ax, strict word 1
    je short @..math_loc_0111.l6
    cmp ax, strict word 2
    je short @..math_loc_0111.l7
@..math_loc_0111.l9:
    cmp word [bp + 0x4], byte 0xff
    je short @..math_loc_0111.l10
    mov ax, word [bp + 0x4]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    jne short @..math_loc_0111.l12
@..math_loc_0111.l10:
    mov word [bp - 0x000e], 0
    mov ax, 0
    cmp word [bp - 0x0010], byte 0
    je short @..math_loc_0111.l11
    mov ax, 1
@..math_loc_0111.l11:
    mov word [bp - 0x0104], ax
    jmp short @..math_loc_0111.l14
@..math_loc_0111.l12:
    mov word [bp - 0x000e], 1
    mov ax, 1
    cmp word [bp - 0x0010], byte 0
    je short @..math_loc_0111.l13
    mov ax, 0
@..math_loc_0111.l13:
    mov word [bp - 0x0104], ax
@..math_loc_0111.l14:
    mov ax, 6
    imul word [bp + 0x6]
    mov bx, ax
    mov ax, word [bx + 0x884]
    mov word [bp - 0x00ea], ax
    mov ax, word [bx + 0x886]
    mov word [bp - 0x00ec], ax
    mov word [bp - 0x00e8], 0
    mov word [bp - 0x00e6], 0
    mov word [bp - 0x00e4], 0
    mov word [bp - 0x00e2], 0
    mov word [bp - 0x00e0], 0
    mov word [bp - 0x00de], 0
    mov word [bp - 0x00dc], 0
    mov word [bp - 0x00da], 3
    mov word [bp - 0x00d8], 3
    mov word [bp - 0x00d6], 3
    mov word [bp - 0x00d4], 3
    mov word [bp - 0x00d2], 3
    mov word [bp - 0x00d0], 3
    mov word [bp - 0x00ce], 2
    mov word [bp - 0x00cc], 2
    mov word [bp - 0x00ca], 2
    mov word [bp - 0x00c8], 2
    mov word [bp - 0x00c6], 1
    mov word [bp - 0x00c4], 1
    mov word [bp - 0x00c2], 3
    mov word [bp - 0x00c0], 2
    mov word [bp - 0x00be], 2
    mov word [bp - 0x00bc], 2
    mov word [bp - 0x00ba], 3
    mov word [bp - 0x00b8], 2
    mov word [bp - 0x00b6], 2
    mov word [bp - 0x00b4], 2
    mov word [bp - 0x00b2], 4
    mov word [bp - 0x00b0], 3
    mov word [bp - 0x00ae], 3
    mov word [bp - 0x00ac], 3
    mov word [bp - 0x00aa], 1
    mov word [bp - 0x00a8], 1
    mov word [bp - 0x00a6], 1
    mov word [bp - 0x00a4], 1
    mov word [bp - 0x00a2], 3
    mov word [bp - 0x00a0], 3
    mov word [bp - 0x009e], 3
    mov word [bp - 0x009c], 3
    mov word [bp - 0x009a], 3
    mov word [bp - 0x0098], 5
    mov word [bp - 0x0096], 3
    mov word [bp - 0x0094], 5
    mov word [bp - 0x0092], 4
    mov word [bp - 0x0090], 3
    mov word [bp - 0x008e], 3
    mov word [bp - 0x008c], 4
    mov word [bp - 0x008a], 4
    mov word [bp - 0x0088], 3
    mov word [bp - 0x0086], 2
    mov word [bp - 0x0084], 6
    mov word [bp - 0x0082], 5
    mov word [bp - 0x0080], 4
    mov word [bp - 0x007e], 3
    mov word [bp - 0x007c], 2
    mov word [bp - 0x007a], 6
    mov word [bp - 0x0078], 5
    mov word [bp - 0x0076], 3
    mov word [bp - 0x0074], 3
    mov word [bp - 0x0040], 0x57
    mov word [bp - 0x0028], 0xe8
    mov word [bp - 0x003e], 0x62
    mov word [bp - 0x0026], 0xdd
    mov word [bp - 0x003c], 0x6c
    mov word [bp - 0x0024], 0xd3
    mov word [bp - 0x003a], 0x75
    mov word [bp - 0x0022], 0xca
    mov word [bp - 0x0038], 0x7d
    mov word [bp - 0x0020], 0xc2
    mov word [bp - 0x0036], 0x84
    mov word [bp - 0x001e], 0xbb
    mov word [bp - 0x0034], 0x8a
    mov word [bp - 0x001c], 0xb5
    mov word [bp - 0x0032], 0x8f
    mov word [bp - 0x001a], 0xb0
    mov word [bp - 0x0030], 0x93
    mov word [bp - 0x0018], 0xac
    mov word [bp - 0x002e], 0x96
    mov word [bp - 0x0016], 0xa9
    mov word [bp - 0x002c], 0x98
    mov word [bp - 0x0014], 0xa7
    mov word [bp - 0x002a], 0x99
    mov word [bp - 0x0012], 0xa6
    mov word [bp - 0x0058], 0x49
    mov word [bp - 0x0056], 0x47
    mov word [bp - 0x0054], 0x46
    mov word [bp - 0x0052], 0x45
    mov word [bp - 0x0050], 0x44
    mov word [bp - 0x004e], 0x43
    mov word [bp - 0x004c], 0x42
    mov word [bp - 0x004a], 0x42
    mov word [bp - 0x0048], 0x42
    mov word [bp - 0x0046], 0x41
    mov word [bp - 0x0044], 0x41
    mov word [bp - 0x0042], 0x41
    mov word [bp - 0x0070], 0x64
    mov word [bp - 0x006e], 0x5e
    mov word [bp - 0x006c], 0x58
    mov word [bp - 0x006a], 0x52
    mov word [bp - 0x0068], 0x4c
    mov word [bp - 0x0066], 0x46
    mov word [bp - 0x0064], 0x40
    mov word [bp - 0x0062], 0x3a
    mov word [bp - 0x0060], 0x34
    mov word [bp - 0x005e], 0x2e
    mov word [bp - 0x005c], 0x28
    mov word [bp - 0x005a], 0x22
    mov ax, 0
    cmp word [bp - 0x000c], byte 0
    je short @..local.l8
    mov ax, 5
    cmp byte [bx + 0x889], 2
    jne short @..local.l8
    mov ax, 3
@..local.l8:
    mov word [bp - 0x0102], ax
    mov word [bp - 0x0100], ax
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
    call ds_dispatch_e935
    add sp, byte 0x0c
    mov word [bp - 0x0116], dx
    mov word [bp - 0x0118], ax
    mov ax, 0
    push ax
    call api_idx_0010
    pop cx
    mov word [data_9116], ax
    push word [data_911c]
    mov ax, 0xf8
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 5
    push ax
    call ds_dispatch_b7e0
    pop cx
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0006]
    mov word [bp - 0x0002], ax
    jmp near @..local.l16
@..local.l9:
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [bp - 0x0112], dx
    mov word [bp - 0x0114], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0070]
    imul word [bp - 0x00ea]
    mov cx, 0x64
    cwd
    idiv cx
    mov word [bp - 0x00ee], ax
    cmp word [bp - 0x0104], byte 0
    je short @..local.l10
    mov cx, 0
    sub cx, ax
    mov ax, cx
    mov cx, word [bp - 0x00f8]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov cx, word [bx - 0x00ea]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    sub ax, cx
    mov word [bp - 0x00ee], ax
@..local.l10:
    mov ax, word [bp - 0x00ec]
    imul word [bp - 0x0064]
    mov cx, 0x64
    cwd
    idiv cx
    mov word [bp - 0x00f0], ax
    mov al, byte [bp - 0x00f8]
    mov byte [bp - 0x0110], al
    mov byte [bp - 0x010f], 0
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0116]
    push word [bp - 0x0118]
    call ds_dispatch_e942
    add sp, byte 8
    cmp word [data_9116], byte 0
    jl short @..local.l12
    mov ax, word [bp - 0x0004]
    mov cx, 3
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    jne short @..local.l11
    inc word [data_9116]
@..local.l11:
    push word [data_9116]
    call api_idx_0010
    pop cx
    mov word [data_9116], ax
@..local.l12:
    mov ax, 0x18
    imul word [bp - 0x000e]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    add ax, cx
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0040]
    add ax, word [bp - 0x00ee]
    mov word [bp - 0x00f2], ax
    mov bx, cx
    add bx, bp
    mov ax, word [bx - 0x0058]
    add ax, word [bp - 0x00f0]
    mov word [bp - 0x00f4], ax
    mov ax, word [bp - 0x0100]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov cx, word [bx - 0x0070]
    mov ax, 0x64
    sub ax, cx
    push ax
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0110]
    push ax
    push word [bp - 0x0104]
    mov ax, 0x8f
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, word [bp - 0x00f4]
    add ax, strict word 0x20
    push ax
    push word [bp - 0x00f2]
    push word [bp - 0x00f6]
    call ds_dispatch_efd1
    add sp, byte 0x16
    push word [data_911c]
    mov ax, 0xf8
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, word [bp - 0x000a]
    add word [bp - 0x0100], ax
    mov ax, word [bp - 0x0004]
    inc ax
    cwd
    idiv word [bp - 0x00fe]
    mov ax, dx
    test ax, ax
    jne short @..local.l13
    mov ax, word [bp - 0x000a]
    add word [bp - 0x00f8], ax
    mov ax, word [bp - 0x0102]
    mov word [bp - 0x0100], ax
@..local.l13:
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    cmp dx, word [bp - 0x0112]
    jne short @..local.l14
    cmp ax, word [bp - 0x0114]
@..local.l14:
    jne short @..local.l15
    jmp short @..local.l13
@..local.l15:
    mov ax, word [bp - 0x000a]
    add word [bp - 0x0002], ax
    inc word [bp - 0x0004]
@..local.l16:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x00fc]
    jge short @..local.l17
    jmp near @..local.l9
@..local.l17:
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x0116]
    push word [bp - 0x0118]
    call ds_dispatch_e942
    add sp, byte 8
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
api_idx_000a:
    mov ax, 0xfff6
    call ds_dispatch_f40b
    mov byte [bp - 0x000a], 1
    mov byte [bp - 0x0009], 4
    mov byte [bp - 0x0008], 0
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
    mov al, byte [bp - 0x000a]
    sub ah, ah
    mov bx, ax
    mov al, byte [bx + 0x6eb5]
    sub ah, ah
    inc ax
    push ax
    shl bx, 1
    mov al, byte [bx + 0x6e6c]
    sub ah, ah
    inc ax
    push ax
    mov ax, 3
    push ax
    call ds_dispatch_efd1
    add sp, byte 0x16
    mov byte [bp - 0x000a], 1
    mov ax, word [data_911e]
    inc ax
    inc ax
    mov byte [bp - 0x0009], al
    mov byte [bp - 0x0008], 0
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
    mov al, byte [bp - 0x000a]
    sub ah, ah
    mov bx, ax
    mov al, byte [bx + 0x7f1d]
    sub ah, ah
    inc ax
    push ax
    shl bx, 1
    mov al, byte [bx + 0x7ed4]
    sub ah, ah
    inc ax
    push ax
    mov ax, 0xf
    push ax
    call ds_dispatch_efd1
    add sp, byte 0x16
    ret
loc_07de:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    push ax
    mov ax, word [data_906c]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx - 0x6f9e]
    push word [bx - 0x6fa0]
    call ds_dispatch_e942
    add sp, byte 8
    cmp word [data_9114], byte 1
    jne short @..local.l18
    call api_idx_000a
    jmp short @..local.l19
@..local.l18:
    call api_idx_000e
@..local.l19:
    call ds_dispatch_da22
    cmp word [data_911a], byte 0
    jl short @..local.l20
    push word [data_9120]
    push word [data_9122]
    call math_loc_0111
    add sp, byte 4
    mov word [data_911a], 0xffff
@..local.l20:
    cmp word [data_9116], byte 0
    jl short @..local.l21
    push word [data_9116]
    call api_idx_0010
    pop cx
    mov word [data_9116], ax
@..local.l21:
    push word [data_911c]
    mov ax, 0xf7
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0x48
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    cmp word [data_9118], byte 0
    je short @..local.l22
    mov ax, 5
    push ax
    call ds_dispatch_b7e0
    pop cx
    mov word [data_9118], 0
@..local.l22:
    ret
math_loc_086b:
    mov ax, 0
    call ds_dispatch_f40b
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    sub ax, word [data_908a]
    sbb dx, word [data_908c]
    push ax
    push dx
    mov ax, word [data_9124]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    cmp dx, bx
    jl short @..math_loc_086b.l1
    jne short @..math_loc_086b.l2
    cmp ax, cx
    jae short @..math_loc_086b.l2
@..math_loc_086b.l1:
    jmp short @..local.l23
@..math_loc_086b.l2:
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
    mov ax, word [data_911e]
    inc ax
    mov cx, 3
    cwd
    idiv cx
    mov word [data_911e], dx
    cmp word [data_9116], byte 0
    jl short @..math_loc_086b.l3
    inc word [data_9116]
@..math_loc_086b.l3:
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    call loc_07de
    mov ax, 1
    ret
@..local.l23:
    mov ax, 0
    ret
api_idx_0004:
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
    jmp short @..local.l27
@..api_idx_0004.l3:
    call ds_dispatch_baef
    test ax, ax
    je short @..local.l24
    ret
@..local.l24:
    mov ax, 1
    push ax
    call ds_dispatch_ea50
    pop cx
    test ax, ax
    je short @..local.l25
    mov ax, 1
    push ax
    call ds_dispatch_eb32
    pop cx
    cmp al, 0xd
    jne short @..local.l25
    ret
@..local.l25:
    call math_loc_086b
    test ax, ax
    jne short @..local.l26
    call math_loc_82a9
@..local.l26:
    jmp short @..api_idx_0004.l1
@..local.l27:
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
    mov ax, 0
    push ax
    push word [data_8d0c]
    push word [data_8d0a]
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
    cmp word [data_9126], byte 0
    je short @..api_idx_000a_2.l1
    mov ax, 0x92
    push ax
    mov ax, 0x9128
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
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x17
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x9128
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
@..api_idx_000a_2.l1:
    cmp word [bp + 0x4], byte 0
    je short @..api_idx_000a_2.l2
    mov ax, 0xc6
    push ax
    mov ax, 0x127
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x19
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
@..api_idx_000a_2.l2:
    ret
loc_0a1a:
    mov ax, 0
    call ds_dispatch_f40b
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
    cmp word [bp + 0x4], byte 0
    je short @..local.l29
    mov ax, word [data_905a]
    cmp byte [data_598c], 0
    je short @..local.l28
    shl ax, 1
@..local.l28:
    push ax
    call api_idx_0004
    pop cx
    jmp short @..local.l30
@..local.l29:
    call ds_dispatch_baef
    test ax, ax
    jne short @..local.l30
    call math_loc_086b
    jmp short @..local.l29
@..local.l30:
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    mov word [data_9150], 0
    ret
api_idx_0004_2:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    cmp word [data_9150], byte 3
    jle short @..api_idx_0004_2.l1
    mov ax, 0
    push ax
    call loc_0a1a
    pop cx
@..api_idx_0004_2.l1:
    mov bx, word [bp + 0x4]
    cmp byte [bx], 0
    jne short @..local.l31
    inc word [data_9150]
    ret
@..local.l31:
    mov ax, 2
    push ax
    push bx
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
    push word [bp + 0x4]
    call ds_dispatch_fa90
    pop cx
    dec ax
    mov word [bp - 0x0004], ax
    mov bx, word [bp + 0x4]
    mov si, ax
    mov al, byte [bx + si]
    sub ah, ah
    jmp short @..local.l34
@..local.l32:
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], 0
    mov word [bp - 0x0002], 0x44
    jmp short @..local.l35
@..local.l33:
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], 0
    mov ax, word [data_9152]
    mov word [bp - 0x0002], ax
    jmp short @..local.l35
@..local.l34:
    cmp ax, strict word 0x24
    je short @..local.l32
    cmp ax, strict word 0x5e
    je short @..local.l33
@..local.l35:
    mov ax, 0xc
    imul word [data_9150]
    add ax, 0x92
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
    mov ax, 2
    push ax
    push word [bp + 0x4]
    call ds_dispatch_e84e
    add sp, byte 4
    mov bx, word [bp + 0x4]
    mov byte [bx], 0
    mov ax, word [bp - 0x0002]
    mov word [data_9152], ax
    inc word [data_9150]
    ret
api_idx_0090:
    mov ax, 0xff70
    call ds_dispatch_f40b
@..api_idx_0090.l1:
    mov bx, word [bp + 0x4]
    mov al, byte [bx]
    sub ah, ah
    push ax
    mov ax, 0x9098
    push ax
    call ds_dispatch_ee4a
    add sp, byte 4
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0
    jge short @..api_idx_0090.l2
    jmp near @..api_idx_0090.l9
@..api_idx_0090.l2:
    jmp near @..api_idx_0090.l7
    inc word [bp + 0x4]
    mov ax, 0x9154
    push ax
    call api_idx_0004_2
    pop cx
    jmp near @..api_idx_0090.l8
    inc word [bp + 0x4]
    mov ax, 0x9154
    push ax
    call api_idx_0004_2
    pop cx
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
    push word [data_905a]
    call api_idx_0004
    pop cx
    jmp near @..api_idx_0090.l8
    inc word [bp + 0x4]
    mov ax, 0x9154
    push ax
    call api_idx_0004_2
    pop cx
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
    jmp near @..api_idx_0090.l8
    inc word [bp + 0x4]
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    mov word [data_9150], 0
    jmp near @..api_idx_0090.l8
    inc word [bp + 0x4]
    mov ax, 0x9154
    push ax
    call api_idx_0004_2
    pop cx
    mov ax, 0
    push ax
    call loc_0a1a
    pop cx
    jmp near @..api_idx_0090.l8
    inc word [bp + 0x4]
    mov ax, 0x10
    push ax
    mov ax, 0xa
    push ax
    call ds_dispatch_d61c
    add sp, byte 4
    mov byte [bp - 0x0090], 1
    mov byte [bp - 0x008f], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0090]
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
    mov ax, 0x92
    push ax
    mov ax, 0x59
    push ax
    mov ax, 0x10
    push ax
    call ds_dispatch_efd1
    add sp, byte 0x16
    mov ax, 0x10
    push ax
    call ds_dispatch_c12a
    pop cx
    jmp near @..api_idx_0090.l8
    inc word [bp + 0x4]
    mov bx, word [bp + 0x4]
    mov al, byte [bx]
    sub ah, ah
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0x63
    jne short @..api_idx_0090.l3
    mov word [bp - 0x0006], 0x20
@..api_idx_0090.l3:
    cmp word [bp - 0x0006], byte 0
    jle short @..api_idx_0090.l6
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 5
    jl short @..api_idx_0090.l4
    cmp ax, strict word 8
    je short @..api_idx_0090.l4
    cmp ax, strict word 9
    jne short @..api_idx_0090.l5
@..api_idx_0090.l4:
    push ax
    call ds_dispatch_b7e0
    pop cx
    jmp short @..api_idx_0090.l6
@..api_idx_0090.l5:
    push word [bp - 0x0006]
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
@..api_idx_0090.l6:
    inc word [bp + 0x4]
    jmp short @..api_idx_0090.l8
    xchg si, ax
    pop bx
    movsb
    pop bx
    rcr byte [bp + di - 0x000c], 1
    pop bx
    or byte [si + 0x1e], bl
    pop sp
    je short @..api_idx_0090.l12
@..api_idx_0090.l7:
    cmp ax, strict word 7
    jae short @..api_idx_0090.l8
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x5ccc]
@..api_idx_0090.l8:
    jmp near @..api_idx_0090.l1
@..api_idx_0090.l9:
    cmp byte [data_9154], 0
    je short @..api_idx_0090.l10
    mov ax, 0x9154
    push ax
    lea ax, word [bp - 0x0086]
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov ax, 0x90a0
    push ax
    lea ax, word [bp - 0x0086]
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
    push word [bp + 0x4]
    lea ax, word [bp - 0x0086]
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
    jmp short @..api_idx_0090.l11
@..api_idx_0090.l10:
    push word [bp + 0x4]
    lea ax, word [bp - 0x0086]
    push ax
    call ds_dispatch_f364
    add sp, byte 4
@..api_idx_0090.l11:
    mov ax, 2
    push ax
    lea ax, word [bp - 0x0086]
    push ax
@..api_idx_0090.l12:
    call ds_dispatch_e883
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, 0xb8
    jle short @..api_idx_0090.l13
    mov ax, 0x9154
    push ax
    call api_idx_0004_2
    pop cx
    push word [bp + 0x4]
    mov ax, 0x9154
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    jmp short @..api_idx_0090.l14
@..api_idx_0090.l13:
    lea ax, word [bp - 0x0086]
    push ax
    mov ax, 0x9154
    push ax
    call ds_dispatch_f364
    add sp, byte 4
@..api_idx_0090.l14:
    ret
api_idx_0004_3:
    mov ax, 0xfffc
    call ds_dispatch_f40b
@..api_idx_0004_3.l1:
    mov ax, 0x20
    push ax
    push word [bp + 0x4]
    call ds_dispatch_ee4a
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short @..api_idx_0004_3.l4
    mov bx, word [bp + 0x4]
    mov si, ax
    mov byte [bx + si], 0
@..api_idx_0004_3.l2:
    mov ax, 0x5f
    push ax
    push word [bp + 0x4]
    call ds_dispatch_ee4a
    add sp, byte 4
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    je short @..api_idx_0004_3.l3
    mov bx, word [bp + 0x4]
    mov si, ax
    mov byte [bx + si], 0x20
    jmp short @..api_idx_0004_3.l2
@..api_idx_0004_3.l3:
    push word [bp + 0x4]
    call api_idx_0090
    pop cx
    mov ax, word [bp - 0x0002]
    add word [bp + 0x4], ax
    add word [bp + 0x4], byte 1
    jmp short @..api_idx_0004_3.l1
@..api_idx_0004_3.l4:
    mov bx, word [bp + 0x4]
    cmp byte [bx], 0
    je short @..api_idx_0004_3.l5
    push bx
    call api_idx_0090
    pop cx
@..api_idx_0004_3.l5:
    ret
loc_0d87:
    mov ax, 0xfefa
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    mov word [data_9152], 0x44
    mov word [data_9150], 0
    mov byte [data_9154], 0
@..local.l36:
    lea ax, word [bp - 0x0105]
    push ax
    push word [bp + 0x4]
    call ds_dispatch_b53b
    add sp, byte 4
    cmp word [data_5216], byte 0
    jne short @..local.l37
    lea ax, word [bp - 0x0105]
    push ax
    call api_idx_0004_3
    pop cx
    inc word [bp + 0x4]
@..local.l37:
    cmp word [data_5216], byte 0
    je short @..local.l36
    cmp byte [data_9154], 0
    je short @..local.l38
    mov ax, 0x9154
    push ax
    call api_idx_0004_2
    pop cx
@..local.l38:
    push word [bp + 0x6]
    call loc_0a1a
    pop cx
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
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
    ret
api_idx_0004_4:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    cmp word [bp + 0x4], byte 0
    jle short @..api_idx_0004_4.l1
    mov ax, 0x90a2
    push ax
    mov ax, 7
    imul word [bp + 0x4]
    add ax, 0x9b
    push ax
    mov ax, 0x127
    push ax
    mov ax, 0x9c
    push ax
    mov ax, 0x19
    push ax
    call ds_dispatch_c283
    add sp, byte 0x0a
    mov word [bp - 0x0002], ax
@..api_idx_0004_4.l1:
    cmp word [bp + 0x6], byte 4
    jge short @..api_idx_0004_4.l2
    mov ax, 0x90a9
    push ax
    mov ax, 0xc4
    push ax
    mov ax, 0x127
    push ax
    mov ax, 7
    imul word [bp + 0x6]
    add ax, 0xa2
    push ax
    mov ax, 0x19
    push ax
    call ds_dispatch_c283
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
@..api_idx_0004_4.l2:
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    cmp word [bp - 0x0004], byte 0
    je short @..api_idx_0004_4.l3
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    call ds_dispatch_c459
    add sp, byte 4
@..api_idx_0004_4.l3:
    cmp word [bp - 0x0002], byte 0
    je short @..api_idx_0004_4.l4
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_c459
    add sp, byte 4
@..api_idx_0004_4.l4:
    mov ax, 0xc2
    push ax
    mov ax, 0x127
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x19
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 1
    push ax
    call api_idx_0004
    pop cx
    ret
math_loc_0eb2:
    mov ax, 0
    call ds_dispatch_f40b
    push word [bp + 0x6]
    push word [bp + 0x6]
    call api_idx_0004_4
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0xa]
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 7
    imul word [bp + 0x6]
    add ax, 0x9c
    push ax
    push word [bp + 0x4]
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
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call ds_dispatch_e84e
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
    call ds_dispatch_e8da
    add sp, byte 8
    cmp word [bp + 0x8], byte 0
    jle short @..math_loc_0eb2.l1
    mov ax, word [bp + 0x8]
    dec ax
    push ax
    call ds_dispatch_b7e0
    pop cx
@..math_loc_0eb2.l1:
    push word [data_905a]
    call api_idx_0004
    pop cx
    cmp word [bp + 0x8], byte 0xff
    je short @..math_loc_0eb2.l2
    push word [bp + 0x6]
    push word [bp + 0x6]
    call api_idx_0004_4
    add sp, byte 4
@..math_loc_0eb2.l2:
    ret
math_loc_0f54:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0x64
    jae short @..math_loc_0f54.l1
    mov al, byte [bx + 0x5d6c]
    sub ah, ah
    push ax
    call ds_dispatch_b7a9
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
    jg short @..math_loc_0f54.l1
    add bx, word [bp + 0x6]
    inc byte [bx + 0x5d6c]
@..math_loc_0f54.l1:
    ret
api_idx_0002:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 1
    push ax
    push ax
    call api_idx_0004_4
    add sp, byte 4
    mov bx, word [bp + 0x6]
    cmp byte [bx], 0
    je short @..api_idx_0002.l1
    mov ax, 1
    jmp short @..api_idx_0002.l2
@..api_idx_0002.l1:
    mov ax, 0
@..api_idx_0002.l2:
    mov bx, word [bp + 0x8]
    cmp byte [bx], 0
    je short @..api_idx_0002.l3
    mov cx, 1
    jmp short @..api_idx_0002.l4
@..api_idx_0002.l3:
    mov cx, 0
@..api_idx_0002.l4:
    add ax, cx
    mov bx, word [bp + 0xa]
    cmp byte [bx], 0
    je short @..api_idx_0002.l5
    mov cx, 1
    jmp short @..api_idx_0002.l6
@..api_idx_0002.l5:
    mov cx, 0
@..api_idx_0002.l6:
    add ax, cx
    mov word [bp - 0x0002], ax
    mov ax, 0xa3
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    call ds_dispatch_fa90
    pop cx
    push ax
    push word [bp + 0x6]
    call ds_dispatch_fa90
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    push word [bp + 0x8]
    call ds_dispatch_fa90
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    push word [bp + 0xa]
    call ds_dispatch_fa90
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp - 0x0002]
    mov cx, 6
    imul cx
    mov cx, 2
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
    push word [bp + 0xc]
    call ds_dispatch_e823
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
    mov ax, 0x20
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    mov bx, word [bp + 0x6]
    cmp byte [bx], 0
    je short @..api_idx_0002.l7
    mov ax, 0
    push ax
    push word [bp + 0xe]
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x6]
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call ds_dispatch_e830
    add sp, byte 4
@..api_idx_0002.l7:
    mov bx, word [bp + 0x8]
    cmp byte [bx], 0
    je short @..api_idx_0002.l8
    mov ax, 0
    push ax
    push word [bp + 0x10]
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x8]
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call ds_dispatch_e830
    add sp, byte 4
@..api_idx_0002.l8:
    mov bx, word [bp + 0xa]
    cmp byte [bx], 0
    je short @..api_idx_0002.l9
    mov ax, 0
    push ax
    push word [bp + 0x12]
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0xa]
    call ds_dispatch_e84e
    add sp, byte 4
@..api_idx_0002.l9:
    mov ax, 0xa9
    push ax
    mov ax, 0x127
    push ax
    mov ax, 0xa3
    push ax
    mov ax, 0x19
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    ret
api_idx_005a:
    mov ax, 0xffa6
    call ds_dispatch_f40b
    cmp word [bp + 0x8], byte 0
    je short @..api_idx_005a.l1
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp + 0x8]
    mov bx, ax
    mov al, byte [bx + 0x5d9c]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jg short @..api_idx_005a.l1
    jmp near @..api_idx_005a.l5
@..api_idx_005a.l1:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2f]
    sub ah, ah
    cmp ax, word [bp + 0xa]
    jl short @..api_idx_005a.l2
    jmp near @..api_idx_005a.l5
@..api_idx_005a.l2:
    mov al, byte [bp + 0xa]
    mov byte [bx + 0x5e2f], al
    cmp word [bp + 0xa], byte 3
    jl short @..api_idx_005a.l3
    mov word [bx + 0x5c0c], 0
    mov word [bx + 0x5c10], 0
@..api_idx_005a.l3:
    lea ax, word [bp - 0x0050]
    push ax
    push word [bp + 0x6]
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    mov ax, 0x41
    push ax
    mov ax, 1
    push ax
    mov ax, 0x90b1
    push ax
    mov ax, 0x90b0
    push ax
    lea ax, word [bp - 0x0050]
    push ax
    push word [bp + 0x4]
    call api_idx_0002
    add sp, byte 0x10
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jb short @..api_idx_005a.l4
    mov al, byte [bx + 0x5e2c]
    sub ah, ah
    add ax, strict word 8
    push ax
    call ds_dispatch_b7e0
    pop cx
@..api_idx_005a.l4:
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call ds_dispatch_cb3a
    add sp, byte 4
    push word [data_905a]
    call api_idx_0004
    pop cx
@..api_idx_005a.l5:
    ret
api_idx_003e:
    mov ax, 0xffc2
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
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
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x0002], byte 0
    je short @..api_idx_003e.l1
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jb short @..local.l39
@..api_idx_003e.l1:
    mov ax, 0
    ret
@..local.l39:
    lea ax, word [bp - 0x002a]
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_b27d
    add sp, byte 4
    lea ax, word [bp - 0x0016]
    push ax
    mov ax, 0x146f
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x003e]
    push ax
    mov ax, 0x1470
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c0c]
    cmp ax, word [bp - 0x0002]
    jge short @..local.l40
    mov word [bp - 0x0002], ax
@..local.l40:
    mov ax, word [bp - 0x0002]
    sub word [bx + 0x5c0c], ax
    mov ax, 0x43
    push ax
    mov ax, 0x41
    push ax
    mov ax, 0x43
    push ax
    mov ax, 1
    push ax
    lea ax, word [bp - 0x003e]
    push ax
    lea ax, word [bp - 0x002a]
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    push word [bp + 0x4]
    call api_idx_0002
    add sp, byte 0x10
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call ds_dispatch_cb3a
    add sp, byte 4
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp word [bx + 0x5c0c], byte 0
    jg short @..local.l41
    mov ax, 4
    push ax
    call api_idx_0004
    pop cx
    mov ax, 3
    push ax
    mov ax, 0
    push ax
    mov ax, 0x1490
    push ax
    push word [bp + 0x4]
    call api_idx_005a
    add sp, byte 8
    mov ax, 0
    ret
@..local.l41:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2c]
    sub ah, ah
    inc ax
    inc ax
    push ax
    call ds_dispatch_b7e0
    pop cx
    push word [data_905a]
    call api_idx_0004
    pop cx
    mov ax, 1
    ret
api_idx_0056:
    mov ax, 0xffaa
    call ds_dispatch_f40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 2
    jb short @..local.l42
    ret
@..local.l42:
    push word [bp + 0x10]
    push word [bp + 0xe]
    push word [bp + 0xc]
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
    mov word [bp - 0x0006], ax
    cmp word [bp + 0x8], byte 0
    je short @..local.l43
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp + 0x8]
    mov bx, ax
    mov al, byte [bx + 0x5d9c]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jg short @..local.l43
    jmp near @..local.l48
@..local.l43:
    cmp word [bp + 0x10], strict word 0xff
    jne short @..local.l44
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp + 0xa]
    mov bx, ax
    mov byte [bx + 0x5d5a], 0xff
    jmp short @..local.l46
@..local.l44:
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + 0x5d5a]
    sub ah, ah
    add ax, word [bp - 0x0006]
    cmp ax, 0xfa
    jle short @..local.l45
    mov al, byte [bx + 0x5d5a]
    sub ah, ah
    mov cx, ax
    mov ax, 0xfa
    sub ax, cx
    mov word [bp - 0x0006], ax
@..local.l45:
    mov al, byte [bx + 0x5d5a]
    sub ah, ah
    add ax, word [bp - 0x0006]
    mov byte [bx + 0x5d5a], al
@..local.l46:
    cmp word [bp + 0xa], byte 5
    jne short @..local.l47
    mov al, byte [bp + 0xc]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5e32], al
@..local.l47:
    lea ax, word [bp - 0x0056]
    push ax
    push word [bp + 0x6]
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    mov ax, 0x41
    push ax
    mov ax, 1
    push ax
    mov ax, 0x90b3
    push ax
    mov ax, 0x90b2
    push ax
    lea ax, word [bp - 0x0056]
    push ax
    push word [bp + 0x4]
    call api_idx_0002
    add sp, byte 0x10
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call ds_dispatch_cb3a
    add sp, byte 4
    push word [data_905a]
    call api_idx_0004
    pop cx
@..local.l48:
    ret
api_idx_0050:
    mov ax, 0xffb0
    call ds_dispatch_f40b
    cmp word [bp + 0x6], byte 0
    jl short @..api_idx_0050.l1
    mov word [data_911a], 1
    mov ax, word [bp + 0x4]
    mov word [data_9122], ax
    mov ax, word [bp + 0x6]
    mov word [data_9120], ax
    jmp short @..api_idx_0050.l2
@..api_idx_0050.l1:
    mov word [data_9116], 0
    mov word [data_9118], 1
@..api_idx_0050.l2:
    lea ax, word [bp - 0x0050]
    push ax
    mov ax, 0x146b
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [data_91d4]
    lea ax, word [bp - 0x0050]
    push ax
    call math_loc_0eb2
    add sp, byte 8
    mov ax, 0xb8
    push ax
    mov ax, 0
    push ax
    push word [data_91d4]
    mov ax, 0x91d6
    push ax
    call math_loc_0eb2
    add sp, byte 8
    ret
api_idx_0004_5:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov word [bp - 0x0004], 0
@..api_idx_0004_5.l1:
    push word [data_69c8]
    call ds_dispatch_b7a9
    pop cx
    mov word [bp - 0x0002], ax
    inc word [bp - 0x0004]
    cmp word [bp - 0x0004], byte 0x18
    jge short @..api_idx_0004_5.l2
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x4]
    cmp word [bx + si], byte 0
    jne short @..api_idx_0004_5.l1
@..api_idx_0004_5.l2:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x4]
    cmp word [bx + si], byte 0
    je short @..api_idx_0004_5.l3
    mov ax, 0xffff
    jmp short @..api_idx_0004_5.l4
@..api_idx_0004_5.l3:
    mov ax, word [bp - 0x0002]
@..api_idx_0004_5.l4:
    ret
api_idx_0006:
    mov ax, 0xfffa
    call ds_dispatch_f40b
    mov ax, word [bp + 0xc]
    inc ax
    push ax
    call ds_dispatch_b7a9
    pop cx
    add ax, word [bp + 0xa]
    mov word [bp - 0x0004], ax
    cmp ax, word [data_69c8]
    jle short @..api_idx_0006.l1
    mov ax, word [data_69c8]
    mov word [bp - 0x0004], ax
@..api_idx_0006.l1:
    mov ax, word [data_69c8]
    sub ax, word [bp - 0x0004]
    inc ax
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov word [bp - 0x0002], ax
    push word [bp - 0x0004]
    call ds_dispatch_b7a9
    pop cx
    mov cx, ax
    mov ax, word [bp - 0x0002]
    add cx, ax
    mov word [bp - 0x0006], cx
    mov ax, word [bp - 0x0002]
    mov bx, word [bp + 0x4]
    mov word [bx], ax
    mov ax, word [bp - 0x0004]
    mov bx, word [bp + 0x6]
    mov word [bx], ax
    mov ax, word [bp - 0x0006]
    mov bx, word [bp + 0x8]
    mov word [bx], ax
    ret
api_idx_00b8:
    mov ax, 0xff48
    call ds_dispatch_f40b
    mov ax, 1
    push ax
    call api_idx_000a_2
    pop cx
    cmp word [bp + 0x4], byte 0
    jne short @..local.l49
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 0x146c
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [data_91d4]
    lea ax, word [bp - 0x0068]
    push ax
    call math_loc_0eb2
    add sp, byte 8
    ret
@..local.l49:
    mov ax, 0
    push ax
    mov ax, 0xc
    push ax
    lea ax, word [bp - 0x0018]
    push ax
    call ds_dispatch_f306
    add sp, byte 6
    mov word [bp - 0x0002], 0
    jmp short @..local.l52
@..local.l50:
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jb short @..local.l51
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0018], 1
@..local.l51:
    inc word [bp - 0x0002]
@..local.l52:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..local.l50
    mov ax, word [bp + 0x4]
    jmp near @..local.l53

    db 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x6d, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x03
    db 0x00, 0x50, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0x8d, 0x46, 0xf6, 0x50, 0x8d, 0x46, 0xf8, 0x50, 0xe8
    db 0x03, 0xff, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xf8, 0x89, 0x46, 0xfe, 0xeb, 0x50, 0x8b, 0x46, 0xfe
    db 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0x83, 0x7f, 0xe8, 0x00, 0x75, 0x3e, 0xb8, 0x64, 0x00, 0x50
    db 0xe8, 0xfe, 0xa1, 0x59, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x8a, 0x87, 0x9d
    db 0x5d, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x3b, 0xc1, 0x7f, 0x08, 0x8b, 0x46, 0xfe, 0x3b, 0x46, 0xf4
    db 0x75, 0x18, 0xb8, 0x07, 0x00, 0x50, 0x8b, 0x46, 0x08, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x40
    db 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xdd, 0xfb, 0x83, 0xc4, 0x06, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xf8
    db 0x03, 0x46, 0xf6, 0x3b, 0x46, 0xfe, 0x7f, 0xa5, 0xe9, 0xe1, 0x09, 0xb8, 0x06, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xe2, 0xfd, 0x83, 0xc4, 0x04, 0xb8, 0x02, 0x00, 0x50, 0x50, 0x8d, 0x46
    db 0xf4, 0x50, 0x8d, 0x46, 0xf6, 0x50, 0x8d, 0x46, 0xf8, 0x50, 0xe8, 0x78, 0xfe, 0x83, 0xc4, 0x0a
    db 0x8b, 0x46, 0xf8, 0x89, 0x46, 0xfe, 0xe9, 0x75, 0x00, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8
    db 0x03, 0xdd, 0x83, 0x7f, 0xe8, 0x00, 0x75, 0x63, 0xb8, 0x64, 0x00, 0x50, 0xe8, 0x72, 0xa1, 0x59
    db 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x8a, 0x87, 0xa3, 0x5d, 0x2a, 0xe4, 0x8b
    db 0xc8, 0x58, 0x3b, 0xc1, 0x7f, 0x08, 0x8b, 0x46, 0xfe, 0x3b, 0x46, 0xf4, 0x75, 0x3d, 0xb8, 0x06
    db 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x58, 0xfb, 0x83, 0xc4, 0x06, 0x85
    db 0xc0, 0x74, 0x28, 0xb8, 0x32, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0x8b, 0x46, 0x08, 0xb9, 0x02
    db 0x00, 0x99, 0xf7, 0xf9, 0x40, 0x50, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x87
    db 0x14, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x3c, 0xfc, 0x83, 0xc4, 0x0e, 0xff, 0x46, 0xfe, 0x8b, 0x46
    db 0xf8, 0x03, 0x46, 0xf6, 0x3b, 0x46, 0xfe, 0x7f, 0x80, 0xe9, 0x30, 0x09, 0xb8, 0xff, 0xff, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x31, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0x1f, 0x09, 0x8d, 0x46, 0xe8
    db 0x50, 0xe8, 0x8b, 0xfd, 0x59, 0x89, 0x46, 0xfe, 0x3d, 0xff, 0xff, 0x75, 0x03, 0xe9, 0x4b, 0x01
    db 0xb8, 0x16, 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x0e, 0xfd, 0x83, 0xc4, 0x04, 0x8d, 0x46, 0x98
    db 0x50, 0xb8, 0x96, 0x14, 0x50, 0xe8, 0x5b, 0x9e, 0x83, 0xc4, 0x04, 0xb8, 0xb8, 0x00, 0x50, 0xb8
    db 0x01, 0x00, 0x50, 0xff, 0x36, 0xd4, 0x91, 0x8d, 0x46, 0x98, 0x50, 0xe8, 0xbc, 0xf7, 0x83, 0xc4
    db 0x08, 0x8d, 0x46, 0x98, 0x50, 0xb8, 0x97, 0x14, 0x50, 0xe8, 0x37, 0x9e, 0x83, 0xc4, 0x04, 0xb8
    db 0x00, 0x00, 0x50, 0x50, 0xb8, 0x41, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0xb5, 0x90, 0x50
    db 0xb8, 0xb4, 0x90, 0x50, 0x8d, 0x46, 0x98, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x70, 0xf8, 0x83, 0xc4
    db 0x10, 0xff, 0x36, 0x5a, 0x90, 0xe8, 0xbb, 0xf1, 0x59, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0x08
    db 0x40, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x7c, 0xfa, 0x83, 0xc4, 0x06, 0x85, 0xc0, 0x75, 0x03, 0xe9
    db 0xa5, 0x00, 0xb8, 0x15, 0x00, 0x50, 0xe8, 0x58, 0xa0, 0x59, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e
    db 0xfe, 0x8b, 0xd8, 0x8a, 0x87, 0x6b, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x3b, 0xc1, 0x7f, 0x03
    db 0xe9, 0x84, 0x00, 0x8d, 0x46, 0x98, 0x50, 0xb8, 0x98, 0x14, 0x50, 0xe8, 0xc5, 0x9d, 0x83, 0xc4
    db 0x04, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xb8, 0x41, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0xb7
    db 0x90, 0x50, 0xb8, 0xb6, 0x90, 0x50, 0x8d, 0x46, 0x98, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xfe, 0xf7
    db 0x83, 0xc4, 0x10, 0xff, 0x36, 0x5a, 0x90, 0xe8, 0x49, 0xf1, 0x59, 0xb8, 0x08, 0x00, 0x50, 0x8b
    db 0x46, 0x08, 0xd1, 0xe0, 0x40, 0x40, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x07, 0xfa, 0x83, 0xc4, 0x06
    db 0x85, 0xc0, 0x74, 0x33, 0xb8, 0x15, 0x00, 0x50, 0xe8, 0xe6, 0x9f, 0x59, 0x50, 0xb8, 0x48, 0x02
    db 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x8a, 0x87, 0x6b, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x3b, 0xc1
    db 0x7e, 0x15, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x0b, 0x00, 0x50, 0xb8, 0x99, 0x14, 0x50, 0xff, 0x76
    db 0xfe, 0xe8, 0x0f, 0xf9, 0x83, 0xc4, 0x08, 0x8d, 0x46, 0x98, 0x50, 0xb8, 0x9a, 0x14, 0x50, 0xe8
    db 0x41, 0x9d, 0x83, 0xc4, 0x04, 0xb8, 0xb8, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x36, 0xd4
    db 0x91, 0x8d, 0x46, 0x98, 0x50, 0xe8, 0xa2, 0xf6, 0x83, 0xc4, 0x08, 0xe9, 0xbe, 0x07, 0xb8, 0x00
    db 0x00, 0x50, 0x50, 0xe8, 0xc2, 0xfb, 0x83, 0xc4, 0x04, 0xb8, 0x03, 0x00, 0x50, 0x50, 0x8d, 0x46
    db 0xf4, 0x50, 0x8d, 0x46, 0xf6, 0x50, 0x8d, 0x46, 0xf8, 0x50, 0xe8, 0x58, 0xfc, 0x83, 0xc4, 0x0a
    db 0x8b, 0x46, 0xf8, 0x89, 0x46, 0xfe, 0xeb, 0x50, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03
    db 0xdd, 0x83, 0x7f, 0xe8, 0x00, 0x75, 0x3e, 0xb8, 0x64, 0x00, 0x50, 0xe8, 0x53, 0x9f, 0x59, 0x50
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x8a, 0x87, 0xa3, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8
    db 0x58, 0x3b, 0xc1, 0x7f, 0x08, 0x8b, 0x46, 0xfe, 0x3b, 0x46, 0xf4, 0x75, 0x18, 0xb8, 0x06, 0x00
    db 0x50, 0x8b, 0x46, 0x08, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x40, 0x50, 0xff, 0x76, 0xfe, 0xe8
    db 0x32, 0xf9, 0x83, 0xc4, 0x06, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xf8, 0x03, 0x46, 0xf6, 0x3b, 0x46
    db 0xfe, 0x7f, 0xa5, 0xe9, 0x36, 0x07, 0xb8, 0x17, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x37
    db 0xfb, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0x8d, 0x46, 0xf4, 0x50
    db 0x8d, 0x46, 0xf6, 0x50, 0x8d, 0x46, 0xf8, 0x50, 0xe8, 0xca, 0xfb, 0x83, 0xc4, 0x0a, 0x8b, 0x46
    db 0xf8, 0x89, 0x46, 0xfe, 0xeb, 0x72, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0x83
    db 0x7f, 0xe8, 0x00, 0x75, 0x60, 0xb8, 0x64, 0x00, 0x50, 0xe8, 0xc5, 0x9e, 0x59, 0x50, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x8a, 0x87, 0xa1, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x3b
    db 0xc1, 0x7f, 0x08, 0x8b, 0x46, 0xfe, 0x3b, 0x46, 0xf4, 0x75, 0x3a, 0xb8, 0x04, 0x00, 0x50, 0x8b
    db 0x46, 0x08, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x40, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xa4, 0xf8
    db 0x83, 0xc4, 0x06, 0x85, 0xc0, 0x74, 0x1e, 0xb8, 0x32, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x9b, 0x14, 0x50, 0xff, 0x76, 0xfe, 0xe8
    db 0x92, 0xf9, 0x83, 0xc4, 0x0e, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xf8, 0x03, 0x46, 0xf6, 0x3b, 0x46
    db 0xfe, 0x7f, 0x83, 0xe9, 0x86, 0x06, 0xb8, 0x0e, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x87
    db 0xfa, 0x83, 0xc4, 0x04, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0x8d, 0x46, 0xf4, 0x50
    db 0x8d, 0x46, 0xf6, 0x50, 0x8d, 0x46, 0xf8, 0x50, 0xe8, 0x1a, 0xfb, 0x83, 0xc4, 0x0a, 0x8b, 0x46
    db 0xf8, 0x89, 0x46, 0xfe, 0xeb, 0x72, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0x83
    db 0x7f, 0xe8, 0x00, 0x75, 0x60, 0xb8, 0x64, 0x00, 0x50, 0xe8, 0x15, 0x9e, 0x59, 0x50, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x8a, 0x87, 0xa6, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x3b
    db 0xc1, 0x7f, 0x08, 0x8b, 0x46, 0xfe, 0x3b, 0x46, 0xf4, 0x75, 0x3a, 0xb8, 0x07, 0x00, 0x50, 0x8b
    db 0x46, 0x08, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x40, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xf4, 0xf7
    db 0x83, 0xc4, 0x06, 0x85, 0xc0, 0x74, 0x1e, 0xb8, 0x32, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0x50
    db 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x89, 0x14, 0x50, 0xff, 0x76, 0xfe, 0xe8
    db 0xe2, 0xf8, 0x83, 0xc4, 0x0e, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xf8, 0x03, 0x46, 0xf6, 0x3b, 0x46
    db 0xfe, 0x7f, 0x83, 0xe9, 0xd6, 0x05, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xd7
    db 0xf9, 0x83, 0xc4, 0x04, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0x8d, 0x46, 0xf4, 0x50
    db 0x8d, 0x46, 0xf6, 0x50, 0x8d, 0x46, 0xf8, 0x50, 0xe8, 0x6a, 0xfa, 0x83, 0xc4, 0x0a, 0x8b, 0x46
    db 0xf8, 0x89, 0x46, 0xfe, 0xe9, 0x06, 0x01, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd
    db 0x83, 0x7f, 0xe8, 0x00, 0x74, 0x03, 0xe9, 0xf1, 0x00, 0xb8, 0x64, 0x00, 0x50, 0xe8, 0x61, 0x9d
    db 0x59, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x8a, 0x87, 0x9e, 0x5d, 0x2a, 0xe4
    db 0x8b, 0xc8, 0x58, 0x3b, 0xc1, 0x7f, 0x0b, 0x8b, 0x46, 0xfe, 0x3b, 0x46, 0xf4, 0x74, 0x03, 0xe9
    db 0xc8, 0x00, 0xb8, 0x06, 0x00, 0x50, 0xe8, 0x38, 0x9d, 0x59, 0xe9, 0xb0, 0x00, 0xb8, 0x18, 0x00
    db 0x50, 0x8b, 0x46, 0x08, 0x40, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x38, 0xf7, 0x83, 0xc4, 0x06, 0xe9
    db 0xa8, 0x00, 0xb8, 0x32, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x86, 0x14, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x27, 0xf8, 0x83, 0xc4, 0x0e
    db 0xe9, 0x87, 0x00, 0xb8, 0x32, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x84, 0x14, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x06, 0xf8, 0x83, 0xc4
    db 0x0e, 0xeb, 0x67, 0xb8, 0x32, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0x50, 0xb8, 0x03, 0x00, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x85, 0x14, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xe6, 0xf7, 0x83, 0xc4
    db 0x0e, 0xeb, 0x47, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x8c, 0x14, 0x50, 0xff
    db 0x76, 0xfe, 0xe8, 0xfe, 0xf5, 0x83, 0xc4, 0x08, 0xeb, 0x30, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0xb8, 0x8f, 0x14, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xe7, 0xf5, 0x83, 0xc4, 0x08, 0xeb
    db 0x19, 0xbc, 0x6a, 0xd1, 0x6a, 0xf2, 0x6a, 0x12
    db 'k2kIk='
    db 0x06, 0x00, 0x73, 0x08, 0x93, 0xd1, 0xe3, 0x2e, 0xff, 0xa7, 0x60, 0x6b, 0xff, 0x46, 0xfe, 0x8b
    db 0x46, 0xf8, 0x03, 0x46, 0xf6, 0x3b, 0x46, 0xfe, 0x7e, 0x03, 0xe9, 0xec, 0xfe, 0xe9, 0x8e, 0x04
    db 0xb8, 0x08, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x8f, 0xf8, 0x83, 0xc4, 0x04, 0xb8, 0x02
    db 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0x8d, 0x46, 0xf6, 0x50, 0x8d, 0x46
    db 0xf8, 0x50, 0xe8, 0x22, 0xf9, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xf8, 0x89, 0x46, 0xfe, 0xeb, 0x50
    db 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0x83, 0x7f, 0xe8, 0x00, 0x75, 0x3e, 0xb8
    db 0x64, 0x00, 0x50, 0xe8, 0x1d, 0x9c, 0x59, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8
    db 0x8a, 0x87, 0x9d, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x3b, 0xc1, 0x7f, 0x08, 0x8b, 0x46, 0xfe
    db 0x3b, 0x46, 0xf4, 0x75, 0x18, 0xb8, 0x0a, 0x00, 0x50, 0x8b, 0x46, 0x08, 0xb9, 0x02, 0x00, 0x99
    db 0xf7, 0xf9, 0x40, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xfc, 0xf5, 0x83, 0xc4, 0x06, 0xff, 0x46, 0xfe
    db 0x8b, 0x46, 0xf8, 0x03, 0x46, 0xf6, 0x3b, 0x46, 0xfe, 0x7f, 0xa5, 0xe9, 0x00, 0x04, 0xb8, 0x0e
    db 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x02, 0xf8, 0x83, 0xc4, 0x04, 0x8d, 0x46, 0xe8, 0x50, 0xe8
    db 0x5f, 0xf8, 0x59, 0x89, 0x46, 0xfe, 0x3d, 0xff, 0xff, 0x74, 0x15, 0xb8, 0x02, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x8f, 0x14, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xf8, 0xf4, 0x83, 0xc4, 0x08
    db 0xe9, 0xcb, 0x03, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xcc, 0xf7, 0x83, 0xc4
    db 0x04, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0x8d, 0x46, 0xf6
    db 0x50, 0x8d, 0x46, 0xf8, 0x50, 0xe8, 0x5f, 0xf8, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xf8, 0x89, 0x46
    db 0xfe, 0xeb, 0x39, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0x83, 0x7f, 0xe8, 0x00
    db 0x75, 0x27, 0xb8, 0x32, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xb8
    db 0x04, 0x00, 0x8b, 0x4e, 0xfe, 0x3b, 0x4e, 0xf4, 0x75, 0x03, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x85
    db 0x14, 0x50, 0x51, 0xe8, 0x60, 0xf6, 0x83, 0xc4, 0x0e, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xf8, 0x03
    db 0x46, 0xf6, 0x3b, 0x46, 0xfe, 0x7f, 0xbc, 0xe9, 0x54, 0x03, 0xb8, 0x16, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0xe8, 0x55, 0xf7, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50
    db 0x8d, 0x46, 0xf4, 0x50, 0x8d, 0x46, 0xf6, 0x50, 0x8d, 0x46, 0xf8, 0x50, 0xe8, 0xe8, 0xf7, 0x83
    db 0xc4, 0x0a, 0x8b, 0x46, 0xf8, 0x89, 0x46, 0xfe, 0xe9, 0x21, 0x01, 0x8b, 0x46, 0xfe, 0xd1, 0xe0
    db 0x8b, 0xd8, 0x03, 0xdd, 0x83, 0x7f, 0xe8, 0x00, 0x74, 0x03, 0xe9, 0x0c, 0x01, 0xb8, 0x64, 0x00
    db 0x50, 0xe8, 0xdf, 0x9a, 0x59, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x8a, 0x87
    db 0xa8, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x3b, 0xc1, 0x7f, 0x0b, 0x8b, 0x46, 0xfe, 0x3b, 0x46
    db 0xf4, 0x74, 0x03, 0xe9, 0xe3, 0x00, 0xc7, 0x46, 0xfc, 0x00, 0x00, 0xb8, 0x48, 0x02, 0xf7, 0x6e
    db 0xfe, 0x8b, 0x4e, 0xfc, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0xff, 0xb7, 0x1e, 0x5c
    db 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x08, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0x08, 0x40, 0x50
    db 0xe8, 0xd1, 0xb3, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4, 0x8c, 0xd2, 0x8e
    db 0xc2, 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0x8e, 0xb3, 0x83, 0xc4, 0x04, 0x8b, 0xc8, 0xb8
    db 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0x56, 0xfc, 0xd1, 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8
    db 0x8b, 0x87, 0x1c, 0x5c, 0x2b, 0xc1, 0x50, 0xe8, 0x72, 0x9a, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xc8, 0x8b, 0x56, 0xfc, 0xd1, 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b
    db 0xd8, 0x58, 0x89, 0x87, 0x1c, 0x5c, 0xff, 0x46, 0xfc, 0x8b, 0x46, 0xfc, 0x3d, 0x06, 0x00, 0x7d
    db 0x03, 0xe9, 0x77, 0xff, 0x8d, 0x46, 0x98, 0x50, 0xb8, 0x92, 0x14, 0x50, 0xe8, 0xb6, 0x97, 0x83
    db 0xc4, 0x04, 0x8d, 0x86, 0x48, 0xff, 0x50, 0xb8, 0x9c, 0x14, 0x50, 0xe8, 0xa7, 0x97, 0x83, 0xc4
    db 0x04, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0xb8, 0x00, 0x50, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0xb8
    db 0x90, 0x50, 0x8d, 0x86, 0x48, 0xff, 0x50, 0x8d, 0x46, 0x98, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xdf
    db 0xf1, 0x83, 0xc4, 0x10, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x76, 0xad, 0x83, 0xc4
    db 0x04, 0xff, 0x36, 0x5a, 0x90, 0xe8, 0x1d, 0xeb, 0x59, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xf8, 0x03
    db 0x46, 0xf6, 0x3b, 0x46, 0xfe, 0x7e, 0x03, 0xe9, 0xd1, 0xfe, 0xe9, 0xf1, 0x01, 0xb8, 0xff, 0xff
    db 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xf2, 0xf5, 0x83, 0xc4, 0x04, 0xe9, 0xe0, 0x01, 0xb8, 0x16
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xe1, 0xf5, 0x83, 0xc4, 0x04, 0xe9, 0xcf, 0x01, 0x8d
    db 0x46, 0xe8, 0x50, 0xe8, 0x3b, 0xf6, 0x59, 0x89, 0x46, 0xfe, 0x3d, 0xff, 0xff, 0x75, 0x03, 0xe9
    db 0x13, 0x01, 0xb8, 0x0c, 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xbe, 0xf5, 0x83, 0xc4, 0x04, 0xb8
    db 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0xff, 0xb7, 0x0e, 0x5c, 0xb8, 0x01, 0x00, 0x50, 0xb8
    db 0x04, 0x00, 0x50, 0xe8, 0x6d, 0x99, 0x59, 0x8b, 0xc8, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b
    db 0xd8, 0x8b, 0x87, 0x0e, 0x5c, 0x2b, 0xc1, 0x40, 0x50, 0xe8, 0x70, 0x99, 0x83, 0xc4, 0x06, 0x50
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x58, 0x89, 0x87, 0x0e, 0x5c, 0x3b, 0x87, 0x0c
    db 0x5c, 0x7d, 0x04, 0x89, 0x87, 0x0c, 0x5c, 0x8d, 0x46, 0x98, 0x50, 0xb8, 0x92, 0x14, 0x50, 0xe8
    db 0xc3, 0x96, 0x83, 0xc4, 0x04, 0x8d, 0x86, 0x48, 0xff, 0x50, 0xb8, 0x95, 0x14, 0x50, 0xe8, 0xb4
    db 0x96, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0xb8, 0x00, 0x50, 0x50, 0xb8, 0x01, 0x00
    db 0x50, 0xb8, 0xb9, 0x90, 0x50, 0x8d, 0x86, 0x48, 0xff, 0x50, 0x8d, 0x46, 0x98, 0x50, 0xff, 0x76
    db 0xfe, 0xe8, 0xec, 0xf0, 0x83, 0xc4, 0x10, 0xff, 0x36, 0x5a, 0x90, 0xe8, 0x37, 0xea, 0x59, 0xb8
    db 0x64, 0x00, 0x50, 0xe8, 0xed, 0x98, 0x59, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8
    db 0x8a, 0x87, 0xa7, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8, 0x05, 0x19, 0x00, 0x8b, 0xc8, 0x58, 0x3b, 0xc1
    db 0x7e, 0x53, 0x80, 0xbf, 0x67, 0x5d, 0x03, 0x76, 0x4c, 0xfe, 0x8f, 0x67, 0x5d, 0x8d, 0x46, 0x98
    db 0x50, 0xb8, 0x92, 0x14, 0x50, 0xe8, 0x4d, 0x96, 0x83, 0xc4, 0x04, 0x8d, 0x86, 0x48, 0xff, 0x50
    db 0xb8, 0x94, 0x14, 0x50, 0xe8, 0x3e, 0x96, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0xb8
    db 0x00, 0x50, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0xba, 0x90, 0x50, 0x8d, 0x86, 0x48, 0xff, 0x50
    db 0x8d, 0x46, 0x98, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x76, 0xf0, 0x83, 0xc4, 0x10, 0xff, 0x36, 0x5a
    db 0x90, 0xe8, 0xc1, 0xe9, 0x59, 0xe9, 0xa6, 0x00, 0xb8, 0x0f, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0xe8, 0xa7, 0xf4, 0x83, 0xc4, 0x04, 0xe9, 0x95, 0x00, 0xb8, 0x17, 0x00, 0x50, 0xb8, 0x00, 0x00
    db 0x50, 0xe8, 0x96, 0xf4, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0x8d
    db 0x46, 0xf4, 0x50, 0x8d, 0x46, 0xf6, 0x50, 0x8d, 0x46, 0xf8, 0x50, 0xe8, 0x29, 0xf5, 0x83, 0xc4
    db 0x0a, 0x8b, 0x46, 0xf8, 0x89, 0x46, 0xfe, 0xeb, 0x27, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8
    db 0x03, 0xdd, 0x83, 0x7f, 0xe8, 0x00, 0x75, 0x15, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x0b, 0x00, 0x50
    db 0xb8, 0x8c, 0x14, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x6b, 0xf1, 0x83, 0xc4, 0x08, 0xff, 0x46, 0xfe
    db 0x8b, 0x46, 0xf8, 0x03, 0x46, 0xf6, 0x3b, 0x46, 0xfe, 0x7f, 0xce, 0xeb, 0x31, 0x1b, 0x70, 0xaf
    db 0x65, 0x3a, 0x66, 0xeb, 0x66, 0xfc, 0x66, 0x5d, 0x68, 0xe5, 0x68, 0x95, 0x69, 0x45, 0x6a, 0x8d
    db 0x6b, 0x1b, 0x6c, 0x50, 0x6c, 0xc7
    db 'l*n;nLnuo'
    db 0x86, 0x6f

@..local.l53:
    cmp ax, strict word 0x12
    jae short @..local.l54
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6fea]
@..local.l54:
    ret
api_idx_0060:
    mov ax, 0xffa0
    call ds_dispatch_f40b
    mov word [data_91fe], 0
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    inc ax
    mov word [bp - 0x0002], ax
    mov word [bp - 0x0004], 0
@..api_idx_0060.l1:
    cmp word [bp - 0x0002], byte 0
    jle short @..api_idx_0060.l4
    cmp word [bp - 0x0004], byte 0x64
    jge short @..api_idx_0060.l4
    inc word [data_91fe]
    mov ax, word [data_91fe]
    cmp ax, strict word 0x12
    jl short @..api_idx_0060.l2
    mov word [data_91fe], 0
    inc word [bp - 0x0004]
@..api_idx_0060.l2:
    push word [data_91fe]
    mov ax, word [bp + 0x4]
    add ax, strict word 0x30
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0060.l3
    dec word [bp - 0x0002]
@..api_idx_0060.l3:
    jmp short @..api_idx_0060.l1
@..api_idx_0060.l4:
    mov ax, 0x91d6
    push ax
    mov ax, word [data_91fe]
    add ax, 0x14b4
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x30
    push ax
    mov ax, 0x9200
    push ax
    call ds_dispatch_f306
    add sp, byte 6
    mov ax, word [data_91fe]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6e00], 1
    mov ax, 0
    push ax
    mov ax, 0x10
    push ax
    mov ax, 0x9230
    push ax
    call ds_dispatch_f306
    add sp, byte 6
    mov word [bp - 0x002e], 0
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    lea ax, word [bp - 0x002c]
    push ax
    call ds_dispatch_f306
    add sp, byte 6
    mov word [bp - 0x0002], 0
@..api_idx_0060.l5:
    mov ax, word [data_91fe]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0002]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x99a], strict word 0xff
    je short @..api_idx_0060.l6
    mov ax, word [bx + 0x99a]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x002c], 1
    inc word [bp - 0x002e]
@..api_idx_0060.l6:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short @..api_idx_0060.l5
    mov word [bp - 0x000a], 0
@..api_idx_0060.l7:
    mov ax, 1
    cmp word [bp - 0x000a], byte 0
    jne short @..api_idx_0060.l8
    mov ax, word [data_91fe]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x96a]
@..api_idx_0060.l8:
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0002], ax
    jmp near @..api_idx_0060.l17
@..api_idx_0060.l9:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6e00], byte 0
    je short @..api_idx_0060.l10
    jmp near @..api_idx_0060.l16
@..api_idx_0060.l10:
    cmp word [bp - 0x000a], byte 2
    je short @..api_idx_0060.l11
    push word [bp - 0x0002]
    mov ax, word [bp + 0x4]
    add ax, strict word 0x30
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    jne short @..api_idx_0060.l11
    jmp near @..api_idx_0060.l16
@..api_idx_0060.l11:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x005e], 0
    mov word [bp - 0x0006], 0
@..api_idx_0060.l12:
    mov ax, word [bp - 0x0002]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0006]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x99a], strict word 0xff
    je short @..api_idx_0060.l13
    mov ax, word [bx + 0x99a]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x002c], byte 0
    jne short @..api_idx_0060.l13
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    inc word [bx - 0x005e]
@..api_idx_0060.l13:
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 8
    jl short @..api_idx_0060.l12
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x005e]
    add ax, word [bp - 0x002e]
    cmp ax, strict word 8
    jg short @..api_idx_0060.l16
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6e00], 1
    mov word [bp - 0x0006], 0
@..api_idx_0060.l14:
    mov ax, word [bp - 0x0002]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0006]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x99a], strict word 0xff
    je short @..api_idx_0060.l15
    mov ax, word [bx + 0x99a]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x002c], byte 0
    jne short @..api_idx_0060.l15
    mov word [bx - 0x002c], 1
    inc word [bp - 0x002e]
@..api_idx_0060.l15:
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 8
    jl short @..api_idx_0060.l14
@..api_idx_0060.l16:
    inc word [bp - 0x0002]
@..api_idx_0060.l17:
    cmp word [bp - 0x0002], byte 0x12
    jge short @..api_idx_0060.l18
    jmp near @..api_idx_0060.l9
@..api_idx_0060.l18:
    inc word [bp - 0x000a]
    mov ax, word [bp - 0x000a]
    cmp ax, strict word 3
    jge short @..local.l55
    jmp near @..api_idx_0060.l7
@..local.l55:
    cmp word [bp - 0x002e], byte 8
    jge short @..local.l58
    mov word [bp - 0x0002], 0
@..local.l56:
    cmp word [bp - 0x002e], byte 8
    jge short @..local.l58
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x002c], byte 0
    jne short @..local.l57
    mov word [bx - 0x002c], 1
    inc word [bp - 0x002e]
@..local.l57:
    inc word [bp - 0x0002]
    jmp short @..local.l56
@..local.l58:
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
@..local.l59:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x002c], byte 0
    je short @..local.l60
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6dc0], ax
    inc word [bp - 0x0004]
@..local.l60:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x10
    jl short @..local.l59
    mov word [bp - 0x0008], 0
    mov word [data_9200], 0
    mov word [data_9250], 0xffff
    mov word [bp - 0x0002], 1
@..local.l61:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6e00], byte 0
    jne short @..local.l62
    jmp near @..local.l68
@..local.l62:
    mov ax, 0x90bb
    push ax
    mov ax, 0xa
    imul word [bp - 0x0008]
    add ax, 0x9252
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov word [bp - 0x0004], 0
@..local.l63:
    mov ax, word [bp - 0x0002]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0004]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x99a], strict word 0xff
    je short @..local.l66
    mov word [bp - 0x0006], 0
@..local.l64:
    mov ax, word [bp - 0x0002]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0004]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x99a]
    mov cx, word [bp - 0x0006]
    shl cx, 1
    mov bx, cx
    mov cx, word [bx - 0x6dc0]
    cmp ax, cx
    jne short @..local.l65
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x31
    push ax
    mov ax, 0xa
    imul word [bp - 0x0008]
    mov cx, ax
    add ax, word [bp - 0x0006]
    mov bx, ax
    pop ax
    mov byte [bx - 0x6dae], al
@..local.l65:
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 8
    jl short @..local.l64
@..local.l66:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 8
    jl short @..local.l63
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0008]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6cbe], ax
    cmp ax, word [data_91fe]
    jne short @..local.l67
    mov ax, word [bp - 0x0008]
    mov word [data_9250], ax
@..local.l67:
    inc word [bp - 0x0008]
@..local.l68:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x12
    jge short @..local.l69
    jmp near @..local.l61
@..local.l69:
    mov word [bp - 0x0002], 0
    jmp near @..local.l80
@..local.l70:
    mov ax, 0x90c4
    push ax
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, 0x9372
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov word [bp - 0x0006], 0xfffb
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp short @..local.l73
@..local.l71:
    mov word [bp - 0x0006], 0x14
    jmp short @..local.l74
@..local.l72:
    mov word [bp - 0x0006], 0xf
    jmp short @..local.l74
@..local.l73:
    cmp ax, strict word 3
    je short @..local.l71
    cmp ax, strict word 4
    je short @..local.l72
    cmp ax, strict word 6
    je short @..local.l72
    cmp ax, strict word 0xd
    je short @..local.l72
@..local.l74:
    mov ax, 0x5a
    push ax
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d7c]
    sub ah, ah
    mov cx, 2
    cwd
    idiv cx
    mov cx, word [bx + 0x5c18]
    add ax, cx
    push ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x34]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    add ax, word [bp - 0x0006]
    push ax
    call ds_dispatch_b7c2
    add sp, byte 6
    mov word [bp - 0x0060], ax
    mov word [bp - 0x0004], 0
@..local.l75:
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    cmp ax, word [bp - 0x0060]
    jge short @..local.l79
    cmp word [data_91fe], byte 0
    jle short @..local.l78
    cmp word [data_9250], byte 0xff
    je short @..local.l78
    mov ax, 0xa
    imul word [data_9250]
    add ax, word [bp - 0x0004]
    mov bx, ax
    cmp byte [bx - 0x6dae], 0x2d
    jne short @..local.l76
    mov ax, 0x2d
    jmp short @..local.l77
@..local.l76:
    mov ax, 0x2a
@..local.l77:
    push ax
    mov ax, 0xa
    imul word [bp - 0x0002]
    mov cx, ax
    add ax, word [bp - 0x0004]
    mov bx, ax
    pop ax
    mov byte [bx - 0x6c8e], al
    jmp short @..local.l79
@..local.l78:
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov byte [bx - 0x6c8e], 0x2d
@..local.l79:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 8
    jl short @..local.l75
    inc word [bp - 0x0002]
@..local.l80:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jge short @..local.l81
    jmp near @..local.l70
@..local.l81:
    mov ax, word [bp - 0x0008]
    ret
loc_242c:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0xc0
    cmp word [bp + 0xc], byte 0
    je short @..local.l82
    mov ax, 0xc2
@..local.l82:
    push ax
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call ds_dispatch_e901
    add sp, byte 0x0a
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0xbbbc
    add sp, byte 8
    mov ax, 0xc5
    cmp word [bp + 0xc], byte 0
    je short @..local.l83
    mov ax, 0xc6
@..local.l83:
    push ax
    mov ax, 0xb0
    cmp word [bp + 0xc], byte 0
    je short @..local.l84
    mov ax, 0xc4
@..local.l84:
    push ax
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0xbc3b
    add sp, byte 0x0c
    mov ax, 0xb4
    push ax
    mov ax, 0xc5
    push ax
    mov ax, word [bp + 0xa]
    inc ax
    inc ax
    push ax
    mov ax, word [bp + 0x8]
    inc ax
    inc ax
    push ax
    mov ax, word [bp + 0x6]
    dec ax
    dec ax
    push ax
    mov ax, word [bp + 0x4]
    dec ax
    dec ax
    push ax
    db 0xe8, 0x89, 0x97 ; call 0xbc3b
    add sp, byte 0x0c
    mov ax, 0x51
    cmp word [bp + 0xc], byte 0
    je short @..local.l85
    mov ax, 0xc3
@..local.l85:
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call ds_dispatch_e8f4
    add sp, byte 6
    mov ax, 0xb6
    cmp word [bp + 0xc], byte 0
    je short @..local.l86
    mov ax, 0xc5
@..local.l86:
    push ax
    push word [bp + 0x6]
    push word [bp + 0x8]
    call ds_dispatch_e8f4
    add sp, byte 6
    mov ax, 0xb6
    cmp word [bp + 0xc], byte 0
    je short @..local.l87
    mov ax, 0xc5
@..local.l87:
    push ax
    push word [bp + 0xa]
    push word [bp + 0x4]
    call ds_dispatch_e8f4
    add sp, byte 6
    mov ax, 0xc6
    cmp word [bp + 0xc], byte 0
    je short @..local.l88
    mov ax, 0xc7
@..local.l88:
    push ax
    push word [bp + 0xa]
    push word [bp + 0x8]
    call ds_dispatch_e8f4
    add sp, byte 6
    ret
api_idx_0002_2:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, 0xc3
    push ax
    mov ax, 0xb4
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov word [bp - 0x0002], 0
@..api_idx_0002_2.l1:
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov cx, 6
    imul cx
    add ax, word [bp + 0x8]
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 6
    imul cx
    add ax, word [bp + 0x6]
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    cmp word [bp + 0xa], byte 0
    je short @..api_idx_0002_2.l2
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x6c8e]
    sub ah, ah
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    jmp short @..api_idx_0002_2.l3
@..api_idx_0002_2.l2:
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx - 0x6dae]
    sub ah, ah
    push ax
    call ds_dispatch_e830
    add sp, byte 4
@..api_idx_0002_2.l3:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short @..api_idx_0002_2.l1
    ret
api_idx_0084:
    mov ax, 0xff7c
    call ds_dispatch_f40b
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0084.l2
@..api_idx_0084.l1:
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0xe38
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6cbe]
    add ax, 0x14b4
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    inc word [bp - 0x0002]
@..api_idx_0084.l2:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xc]
    jl short @..api_idx_0084.l1
    mov word [data_911c], 0x8d
    mov word [bp - 0x0078], 0
    cmp word [data_9250], byte 0xff
    je short @..api_idx_0084.l5
    mov word [bp - 0x0004], 0
@..api_idx_0084.l3:
    mov ax, 0xa
    imul word [data_9250]
    add ax, word [bp - 0x0004]
    mov bx, ax
    cmp byte [bx - 0x6dae], 0x2d
    je short @..api_idx_0084.l4
    inc word [bp - 0x0078]
@..api_idx_0084.l4:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 8
    jl short @..api_idx_0084.l3
@..api_idx_0084.l5:
    mov word [data_904e], 0xffff
    mov word [bp - 0x0006], 0x37
    mov word [bp - 0x0008], 0x8f
    mov word [bp - 0x000a], 0x108
    mov word [bp - 0x000c], 0xc5
    mov word [bp - 0x0014], 0x16
    mov word [bp - 0x0024], 1
    mov ax, 0x90cd
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    call ds_dispatch_c283
    add sp, byte 0x0a
    mov word [bp - 0x0076], ax
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    call ds_dispatch_bc9a
    add sp, byte 8
    mov ax, 0xc2
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1b
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
    mov ax, 0x90d3
    push ax
    lea ax, word [bp - 0x0074]
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    lea ax, word [bp - 0x0073]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d7c]
    sub ah, ah
    push ax
    call ds_dispatch_b27d
    add sp, byte 4
    mov ax, 0x90d5
    push ax
    lea ax, word [bp - 0x0074]
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 0xc
    push ax
    lea ax, word [bp - 0x0074]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1b
    sub ax, cx
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0074]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x11
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x36
    push ax
    call ds_dispatch_bd98
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x38
    push ax
    mov ax, 0
    push ax
    call api_idx_0002_2
    add sp, byte 8
    lea ax, word [bp - 0x004c]
    push ax
    push word [bp + 0x6]
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x004c]
    push ax
    push word [bp + 0x8]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x18
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call ds_dispatch_c0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x0074]
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x0074]
    push ax
    push word [bp + 0xa]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call ds_dispatch_c0c1
    add sp, byte 0x0c
    mov ax, 0xc0
    push ax
    mov ax, 0
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov word [bp - 0x0002], 0
@..local.l89:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x6dd0]
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov cx, 5
    shl ax, cl
    add ax, word [bp - 0x0008]
    add ax, strict word 0x11
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x1a
    imul cx
    add ax, word [bp - 0x0006]
    add ax, strict word 0x6b
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov cx, 5
    shl ax, cl
    add ax, word [bp - 0x0008]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x1a
    imul cx
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5d
    push ax
    call loc_242c
    add sp, byte 0x0a
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov cx, 5
    shl ax, cl
    add ax, word [bp - 0x0008]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x1a
    imul cx
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5f
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov al, byte [bx - 0x6dc0]
    sub ah, ah
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jge short @..local.l90
    jmp near @..local.l89
@..local.l90:
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x1e
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x61
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x18
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x5d
    push ax
    call ds_dispatch_bd98
    add sp, byte 8
    mov word [bp - 0x0018], 0
    mov word [bp - 0x0022], 0xffff
    push word [bp - 0x0024]
    push word [bp - 0x0022]
    push word [bp - 0x0018]
    mov ax, 1
    push ax
    mov ax, 0xd
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x18
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x69
    push ax
    call ds_dispatch_bf97
    add sp, byte 0x0e
    mov word [bp - 0x0012], 0
    push word [bp - 0x0012]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0xc1
    push ax
    call ds_dispatch_bfd8
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0008]
    add ax, word [bp - 0x0012]
    add ax, strict word 0x12
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0008]
    add ax, word [bp - 0x0012]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 0x0006]
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
    mov ax, word [bp - 0x0008]
    add ax, strict word 0xc
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0006]
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
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2a
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0xc1
    push ax
    mov ax, 2
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0xd
    push ax
    mov ax, 0x49
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x20
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x18
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    mov ax, 3
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    mov ax, 4
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov word [bp - 0x0002], 0
@..local.l91:
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x31
    cbw
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov cx, 5
    shl ax, cl
    add ax, word [bp - 0x0008]
    add ax, strict word 0x11
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x1a
    imul cx
    add ax, word [bp - 0x0006]
    add ax, strict word 0x6b
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov cx, 5
    shl ax, cl
    add ax, word [bp - 0x0008]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 0x0002]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x1a
    imul cx
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5d
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 5
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short @..local.l91
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0xd
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov word [bp - 0x001c], 1
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d7c]
    sub ah, ah
    push ax
    mov ax, 5
    imul word [bp + 0xe]
    mov cx, ax
    pop ax
    sub ax, cx
    push ax
    mov al, byte [bx + 0x5d68]
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
    mov word [bp - 0x007c], ax
    mov word [bp - 0x007e], 0
    cmp byte [bx + 0x5e2d], 3
    jne short @..local.l92
    mov al, byte [bx + 0x5d68]
    sub ah, ah
    mov cx, 3
    imul cx
    add word [bp - 0x007c], ax
    mov word [bp - 0x007e], 3
    jmp short @..local.l94
@..local.l92:
    mov al, byte [bx + 0x5e2d]
    cmp al, 0xd
    je short @..local.l93
    cmp al, 4
    je short @..local.l93
    cmp al, 6
    jne short @..local.l94
@..local.l93:
    mov al, byte [bx + 0x5d68]
    sub ah, ah
    shl ax, 1
    add word [bp - 0x007c], ax
    mov word [bp - 0x007e], 2
@..local.l94:
    mov ax, 0x5a
    push ax
    mov ax, 5
    push ax
    push word [bp - 0x007c]
    call ds_dispatch_b7c2
    add sp, byte 6
    mov word [bp - 0x007c], ax
@..local.l95:
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov word [bp - 0x0084], ax
    mov ax, 0x64
    sub ax, word [bp - 0x007c]
    mov cx, 3
    cwd
    idiv cx
    mov cx, 0x64
    sub cx, ax
    mov ax, word [bp - 0x0084]
    cmp cx, ax
    jge short @..local.l96
    mov ax, 0
    jmp short @..local.l97
@..local.l96:
    mov ax, 1
@..local.l97:
    mov word [bp - 0x0080], ax
    mov ax, 0
    mov cx, word [bp - 0x0084]
    cmp cx, word [bp - 0x007c]
    jge short @..local.l98
    mov ax, 1
@..local.l98:
    mov word [bp - 0x0082], ax
    cmp word [bp - 0x0080], byte 0
    jne short @..local.l99
    mov ax, 0x1a
    jmp short @..local.l100
@..local.l99:
    mov ax, 0x56
    cmp word [bp - 0x0082], byte 0
    je short @..local.l100
    mov ax, 0x37
@..local.l100:
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x1e
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x61
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x18
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x5d
    push ax
    call ds_dispatch_e901
    add sp, byte 0x0a
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x1e
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x61
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x18
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x5d
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    call math_loc_086b
    test ax, ax
    jne short @..local.l101
    mov ax, 0x19
    push ax
    call ds_dispatch_e489
    pop cx
@..local.l101:
    mov ax, 0x59fe
    push ax
    call ds_dispatch_b90d
    pop cx
    dec ax
    mov word [bp - 0x001a], ax
    cmp word [data_5b3e], byte 1
    je short @..local.l102
    jmp near @..local.l104
@..local.l102:
    jmp near @..local.l103

    db 0x8d, 0x46, 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x32, 0xc4, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xf8, 0x03, 0x4e, 0xee, 0x83
    db 0xc1, 0x0e, 0x2b, 0xc1, 0x50, 0xe8, 0x84, 0x8b, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xea, 0x8d, 0x46
    db 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x04, 0xc4, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe2, 0xff
    db 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xf8, 0x83, 0xc1, 0x0e, 0x2b
    db 0xc1, 0x2b, 0x46, 0xea, 0x50, 0xe8, 0x54, 0x8b, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xee, 0x83, 0x7e
    db 0x0c, 0x01, 0x7e, 0x1b, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xec, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x99, 0xf7, 0x7e, 0x0c, 0x8b, 0xc8, 0x58, 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xe8, 0xff
    db 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0d, 0x00, 0x50
    db 0x8b, 0x46, 0xf8, 0x05, 0x18, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x69, 0x00, 0x50, 0xe8, 0xe0
    db 0x92, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xf8, 0x05, 0x11, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x50
    db 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x05, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x36, 0x00, 0x50
    db 0xe8, 0xbf, 0x90, 0x83, 0xc4, 0x08, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x06, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x38, 0x00, 0x50, 0xff, 0x76, 0xe8, 0xe8, 0x26, 0xf8, 0x83, 0xc4
    db 0x08, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05
    db 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0xc5, 0x92, 0x83, 0xc4, 0x0a
    db 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xf8, 0x03, 0x46, 0xee, 0x05, 0x12, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x03, 0x46, 0xee, 0x05, 0x0e, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0xc1, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x62, 0x8d, 0x83, 0xc4
    db 0x0e, 0x8b, 0x46, 0xf8, 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0xc9, 0x00, 0x50, 0x8b
    db 0x46, 0xf8, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x74, 0xbb
    db 0x83, 0xc4, 0x08, 0x8b, 0x46, 0xf8, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x50, 0x00
    db 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x05, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x36, 0x00, 0x50, 0xe8
    db 0x52, 0xbb, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe2, 0x00, 0x74, 0x03, 0xe9, 0xb0, 0xfe, 0xe9, 0x81
    db 0x07, 0x83, 0x7e, 0xe6, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x0c
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x06, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0xf8, 0x90, 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xe8
    db 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xe8, 0xeb, 0x32, 0xb8, 0x01, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05
    db 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x2a, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0xc7, 0x90, 0x83, 0xc4, 0x0a, 0x8b, 0x46
    db 0x0c, 0x48, 0x3b, 0x46, 0xe8, 0x7e, 0x03, 0xff, 0x46, 0xe8, 0x8b, 0x46, 0x0c, 0x3d, 0x01, 0x00
    db 0x7e, 0x2a, 0xff, 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x64, 0x00, 0xf7, 0x6e, 0xec, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x49, 0x99, 0xf7, 0xf9, 0xf7, 0x6e, 0xe8, 0xb9, 0x64, 0x00, 0x99
    db 0xf7, 0xf9, 0x50, 0xe8, 0x96, 0x89, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xee, 0xff, 0x76, 0xdc, 0xff
    db 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0d, 0x00, 0x50, 0x8b, 0x46, 0xf8
    db 0x05, 0x18, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x69, 0x00, 0x50, 0xe8, 0x43, 0x91, 0x83, 0xc4
    db 0x0e, 0x8b, 0x46, 0xf8, 0x05, 0x11, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x50, 0x00, 0x50, 0x8b
    db 0x46, 0xf8, 0x05, 0x05, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x36, 0x00, 0x50, 0xe8, 0x22, 0x8f
    db 0x83, 0xc4, 0x08, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x05, 0x38, 0x00, 0x50, 0xff, 0x76, 0xe8, 0xe8, 0x89, 0xf6, 0x83, 0xc4, 0x08, 0xff, 0x76
    db 0xee, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x06, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0x28, 0x91, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00
    db 0x50, 0x50, 0x8b, 0x46, 0xf8, 0x03, 0x46, 0xee, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05
    db 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x03, 0x46, 0xee, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfa
    db 0x05, 0xc1, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xc5, 0x8b, 0x83, 0xc4, 0x0e, 0x8b, 0x46
    db 0xf8, 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05
    db 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0xd7, 0xb9, 0x83, 0xc4, 0x08
    db 0x8b, 0x46, 0xf8, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x50, 0x00, 0x50, 0x8b, 0x46
    db 0xf8, 0x05, 0x05, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x36, 0x00, 0x50, 0xe8, 0xb5, 0xb9, 0x83
    db 0xc4, 0x08, 0xe9, 0xed, 0x05, 0x83, 0x7e, 0x08, 0x00, 0x75, 0x03, 0xe9, 0x4d, 0x02, 0x83, 0x7e
    db 0x80, 0x00, 0x75, 0x16, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x9f, 0x88, 0x59, 0xc7, 0x06, 0x50, 0x90
    db 0x01, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0xe9, 0x31, 0x02, 0xb8, 0x01, 0x00, 0x50, 0x8b, 0x46
    db 0xf8, 0x05, 0x20, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x50, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05
    db 0x18, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x08, 0x00, 0x50, 0xe8, 0xb9, 0xf4, 0x83, 0xc4, 0x0a
    db 0xb8, 0xc0, 0x00, 0x50, 0xb8, 0x1a, 0x00, 0x50, 0xe8, 0xa2, 0xb8, 0x83, 0xc4, 0x04, 0xb8, 0xd8
    db 0x90, 0x50, 0x8d, 0x46, 0x8c, 0x50, 0xe8, 0xd5, 0xc3, 0x83, 0xc4, 0x04, 0x8d, 0x46, 0xb4, 0x50
    db 0x8d, 0x46, 0x8c, 0x50, 0xe8, 0x90, 0xc3, 0x83, 0xc4, 0x04, 0xb8, 0xda, 0x90, 0x50, 0x8d, 0x46
    db 0x8c, 0x50, 0xe8, 0x82, 0xc3, 0x83, 0xc4, 0x04, 0x8b, 0x46, 0xf8, 0x05, 0x1a, 0x00, 0x50, 0x8d
    db 0x46, 0x8c, 0x50, 0xe8, 0xd4, 0xca, 0x59, 0x8b, 0xc8, 0xb8, 0x0c, 0x00, 0x2b, 0xc1, 0xb9, 0x06
    db 0x00, 0xf7, 0xe9, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x03, 0x46, 0xfa, 0x05, 0x09, 0x00, 0x50
    db 0xe8, 0x30, 0xb8, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0x8d, 0x46, 0x8c, 0x50, 0xe8, 0x67
    db 0xb8, 0x83, 0xc4, 0x04, 0x8b, 0x46, 0xf8, 0x05, 0x20, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x50
    db 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x18, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x08, 0x00, 0x50
    db 0xe8, 0xd1, 0xb8, 0x83, 0xc4, 0x08, 0x8b, 0x46, 0xf8, 0x05, 0x11, 0x00, 0x50, 0x8b, 0x46, 0xfa
    db 0x05, 0x50, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x05, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x36
    db 0x00, 0x50, 0xe8, 0x6d, 0x8d, 0x83, 0xc4, 0x08, 0xb8, 0x01, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05
    db 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x38, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xd4, 0xf4
    db 0x83, 0xc4, 0x08, 0x8b, 0x46, 0xf8, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x50, 0x00
    db 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x05, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x36, 0x00, 0x50, 0xe8
    db 0x72, 0xb8, 0x83, 0xc4, 0x08, 0x83, 0x3e, 0x32, 0x0e, 0x00, 0x74, 0x16, 0x8d, 0x46, 0xf0, 0x50
    db 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0xd6, 0xbf, 0x83, 0xc4, 0x04, 0x85, 0xc0, 0x74, 0x02, 0xeb, 0xec
    db 0xeb, 0x08, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0xa3, 0xba, 0x59, 0x8b, 0x46, 0xf8, 0x05, 0x11, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x50, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x05, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x36, 0x00, 0x50, 0xe8, 0xe9, 0x8c, 0x83, 0xc4, 0x08, 0xb8, 0x00, 0x00, 0x50
    db 0x8b, 0x46, 0xf8, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x38, 0x00, 0x50, 0xff, 0x76
    db 0xe8, 0xe8, 0x50, 0xf4, 0x83, 0xc4, 0x08, 0x8b, 0x46, 0xf8, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x05, 0x50, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x05, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05
    db 0x36, 0x00, 0x50, 0xe8, 0xee, 0xb7, 0x83, 0xc4, 0x08, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf8
    db 0x05, 0x20, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x50, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x18
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x1a, 0xf3, 0x83, 0xc4, 0x0a, 0xb8
    db 0xc0, 0x00, 0x50, 0xb8, 0x55, 0x00, 0x50, 0xe8, 0x03, 0xb7, 0x83, 0xc4, 0x04, 0x8b, 0x46, 0xf8
    db 0x05, 0x1a, 0x00, 0x50, 0x8d, 0x46, 0xb4, 0x50, 0xe8, 0x5f, 0xc9, 0x59, 0x8b, 0xc8, 0xb8, 0x0c
    db 0x00, 0x2b, 0xc1, 0xb9, 0x06, 0x00, 0xf7, 0xe9, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x03, 0x46
    db 0xfa, 0x05, 0x09, 0x00, 0x50, 0xe8, 0xbb, 0xb6, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0x8d
    db 0x46, 0xb4, 0x50, 0xe8, 0xf2, 0xb6, 0x83, 0xc4, 0x04, 0x8b, 0x46, 0xf8, 0x05, 0x20, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x50, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x18, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x5c, 0xb7, 0x83, 0xc4, 0x08, 0xe9, 0x94, 0x03, 0x83, 0x7e
    db 0x0a, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xf8
    db 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x08, 0x00, 0x50, 0xe8, 0xbb, 0x8c, 0x83, 0xc4
    db 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xf8
    db 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x9b, 0x8c, 0x83, 0xc4
    db 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x02, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0xe9, 0x43, 0x03, 0x8b
    db 0x46, 0xe6, 0x05, 0xfb, 0xff, 0x89, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x83, 0xbf, 0x30, 0x92
    db 0x00, 0x74, 0x03, 0xe9, 0x03, 0x03, 0xc7, 0x46, 0x86, 0x00, 0x00, 0xc7, 0x46, 0xfc, 0x00, 0x00
    db 0x8b, 0x46, 0xfc, 0xd1, 0xe0, 0x8b, 0xd8, 0x83, 0xbf, 0x30, 0x92, 0x00, 0x74, 0x03, 0xff, 0x46
    db 0x86, 0xff, 0x46, 0xfc, 0x8b, 0x46, 0xfc, 0x3d, 0x08, 0x00, 0x7c, 0xe4, 0x8b, 0x46, 0xfe, 0xd1
    db 0xe0, 0x8b, 0xd8, 0xc7, 0x87, 0x30, 0x92, 0x01, 0x00, 0xff, 0xb7, 0x30, 0x92, 0x8b, 0x46, 0xfe
    db 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0xb9, 0x05, 0x00, 0xd3, 0xe0, 0x03, 0x46, 0xf8, 0x05, 0x11
    db 0x00, 0x50, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xb9, 0x1a, 0x00
    db 0xf7, 0xe9, 0x03, 0x46, 0xfa, 0x05, 0x6b, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99
    db 0xf7, 0xf9, 0xb9, 0x05, 0x00, 0xd3, 0xe0, 0x03, 0x46, 0xf8, 0x05, 0x05, 0x00, 0x50, 0x8b, 0x46
    db 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xb9, 0x1a, 0x00, 0xf7, 0xe9, 0x03, 0x46
    db 0xfa, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0xae, 0xf1, 0x83, 0xc4, 0x0a, 0xb8, 0xc2, 0x00, 0x50, 0xb8
    db 0x01, 0x00, 0x50, 0xe8, 0x97, 0xb5, 0x83, 0xc4, 0x04, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99
    db 0xf7, 0xf9, 0xb9, 0x05, 0x00, 0xd3, 0xe0, 0x03, 0x46, 0xf8, 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46
    db 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xb9, 0x1a, 0x00, 0xf7, 0xe9, 0x03, 0x46
    db 0xfa, 0x05, 0x5f, 0x00, 0x50, 0xe8, 0x4b, 0xb5, 0x83, 0xc4, 0x04, 0xb8, 0x01, 0x00, 0x50, 0x8b
    db 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x8a, 0x87, 0x40, 0x92, 0x2a, 0xe4, 0x50, 0xe8, 0x5a, 0xb5
    db 0x83, 0xc4, 0x04, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0xb9, 0x05, 0x00, 0xd3
    db 0xe0, 0x03, 0x46, 0xf8, 0x05, 0x11, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7
    db 0xf9, 0x8b, 0xc2, 0xb9, 0x1a, 0x00, 0xf7, 0xe9, 0x03, 0x46, 0xfa, 0x05, 0x6b, 0x00, 0x50, 0x8b
    db 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0xb9, 0x05, 0x00, 0xd3, 0xe0, 0x03, 0x46, 0xf8
    db 0x05, 0x05, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xb9
    db 0x1a, 0x00, 0xf7, 0xe9, 0x03, 0x46, 0xfa, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0xa6, 0xb5, 0x83, 0xc4
    db 0x08, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0xa2, 0x84, 0x59, 0x83, 0x3e, 0x50, 0x92, 0xff, 0x75, 0x0e
    db 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0xe9, 0x9b, 0x01, 0x83, 0x7e
    db 0x80, 0x00, 0x74, 0x1c, 0xb8, 0x0a, 0x00, 0xf7, 0x2e, 0x50, 0x92, 0x03, 0x46, 0xfe, 0x8b, 0xd8
    db 0x8a, 0x87, 0x52, 0x92, 0x2a, 0xe4, 0x8b, 0x4e, 0x86, 0x83, 0xc1, 0x31, 0x3b, 0xc1, 0x74, 0x0e
    db 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0xe9, 0x6b, 0x01, 0x83, 0xbe
    db 0x7e, 0xff, 0x00, 0x74, 0x03, 0xe9, 0x37, 0x01, 0xb8, 0xc8, 0x00, 0x50, 0xe8, 0xf4, 0xb0, 0x59
    db 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0xc7, 0x87, 0x30, 0x92, 0x00, 0x00, 0xff, 0xb7, 0x30
    db 0x92, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0xb9, 0x05, 0x00, 0xd3, 0xe0, 0x03
    db 0x46, 0xf8, 0x05, 0x11, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0x8b
    db 0xc2, 0xb9, 0x1a, 0x00, 0xf7, 0xe9, 0x03, 0x46, 0xfa, 0x05, 0x6b, 0x00, 0x50, 0x8b, 0x46, 0xfe
    db 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0xb9, 0x05, 0x00, 0xd3, 0xe0, 0x03, 0x46, 0xf8, 0x05, 0x05
    db 0x00, 0x50, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xb9, 0x1a, 0x00
    db 0xf7, 0xe9, 0x03, 0x46, 0xfa, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x2a, 0xf0, 0x83, 0xc4, 0x0a, 0xb8
    db 0xc2, 0x00, 0x50, 0xb8, 0x1a, 0x00, 0x50, 0xe8, 0x13, 0xb4, 0x83, 0xc4, 0x04, 0x8b, 0x46, 0xfe
    db 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0xb9, 0x05, 0x00, 0xd3, 0xe0, 0x03, 0x46, 0xf8, 0x05, 0x07
    db 0x00, 0x50, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xb9, 0x1a, 0x00
    db 0xf7, 0xe9, 0x03, 0x46, 0xfa, 0x05, 0x5f, 0x00, 0x50, 0xe8, 0xc7, 0xb3, 0x83, 0xc4, 0x04, 0xb8
    db 0x01, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x8a, 0x87, 0x40, 0x92, 0x2a, 0xe4
    db 0x50, 0xe8, 0xd6, 0xb3, 0x83, 0xc4, 0x04, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9
    db 0xb9, 0x05, 0x00, 0xd3, 0xe0, 0x03, 0x46, 0xf8, 0x05, 0x11, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0xb9
    db 0x04, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xb9, 0x1a, 0x00, 0xf7, 0xe9, 0x03, 0x46, 0xfa, 0x05
    db 0x6b, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9, 0xb9, 0x05, 0x00, 0xd3
    db 0xe0, 0x03, 0x46, 0xf8, 0x05, 0x05, 0x00, 0x50, 0x8b, 0x46, 0xfe, 0xb9, 0x04, 0x00, 0x99, 0xf7
    db 0xf9, 0x8b, 0xc2, 0xb9, 0x1a, 0x00, 0xf7, 0xe9, 0x03, 0x46, 0xfa, 0x05, 0x5d, 0x00, 0x50, 0xe8
    db 0x22, 0xb4, 0x83, 0xc4, 0x08, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x1e, 0x83, 0x59, 0xeb, 0x2a, 0x8b
    db 0x46, 0x88, 0x48, 0x3b, 0x46, 0x86, 0x75, 0x21, 0x83, 0x7e, 0x82, 0x00, 0x74, 0x10, 0xff, 0x76
    db 0x82, 0xb8, 0x10, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x73, 0xda, 0x83, 0xc4, 0x06, 0xc7, 0x06
    db 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0xeb, 0x27, 0x5d, 0x7c, 0xde, 0x7d, 0xde
    db 0x7d, 0x72, 0x7f, 0xcb, 0x81, 0x1c, 0x82, 0x1c, 0x82, 0x1c, 0x82, 0x1c, 0x82, 0x1c, 0x82, 0x1c
    db 0x82, 0x1c, 0x82, 0x1c, 0x82

@..local.l103:
    cmp ax, strict word 0xd
    jae short @..local.l104
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7ac8]
@..local.l104:
    cmp word [bp - 0x001c], byte 0
    je short @..local.l105
    jmp near @..local.l95
@..local.l105:
    mov ax, 1
    push ax
    push word [bp - 0x0076]
    call ds_dispatch_c459
    add sp, byte 4
    mov word [data_911c], 0x8f
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, word [data_9050]
    ret
api_idx_0008:
    mov ax, 0xfff8
    call ds_dispatch_f40b
    mov word [bp - 0x0006], 0xffff
    mov word [bp - 0x0008], 0xffff
    mov ax, word [data_0e0e]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    jmp short @..local.l110
@..api_idx_0008.l1:
    mov bx, word [bp - 0x0004]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, 0xff
    jne short @..local.l106
    mov ax, word [bp - 0x0002]
    ret
@..local.l106:
    mov al, byte [bx + 0x1]
    sub ah, ah
    test ax, 0x40
    jne short @..local.l109
    cmp word [bp - 0x0006], byte 0xff
    je short @..local.l107
    mov ax, 7
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    jne short @..local.l109
@..local.l107:
    mov bx, word [bp - 0x0004]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [data_830c]
    jne short @..local.l108
    mov ax, word [bp - 0x0002]
    mov word [bp - 0x0008], ax
    jmp short @..local.l109
@..local.l108:
    mov ax, word [bp - 0x0002]
    mov word [bp - 0x0006], ax
@..local.l109:
    add word [bp - 0x0004], byte 8
    inc word [bp - 0x0002]
@..local.l110:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_5910]
    jl short @..api_idx_0008.l1
    cmp word [bp + 0x4], byte 0
    je short @..local.l112
    cmp word [bp - 0x0006], byte 0xff
    jne short @..local.l111
    mov ax, word [bp - 0x0008]
    ret
@..local.l111:
    mov ax, word [bp - 0x0006]
    ret
@..local.l112:
    mov ax, 0xffff
    ret
api_idx_0004_6:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    call api_idx_0008
    pop cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0004_6.l4
    cmp word [data_5910], byte 0x7f
    jl short @..api_idx_0004_6.l3
    mov ax, 1
    push ax
    call api_idx_0008
    pop cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0004_6.l2
@..api_idx_0004_6.l1:
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
    jmp short @..api_idx_0004_6.l1
@..api_idx_0004_6.l2:
    jmp short @..api_idx_0004_6.l4
@..api_idx_0004_6.l3:
    mov ax, word [data_5910]
    mov word [bp - 0x0002], ax
    inc word [data_5910]
@..api_idx_0004_6.l4:
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
api_idx_0006_2:
    mov ax, 0xfffa
    call ds_dispatch_f40b
    mov ax, word [data_0e0e]
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0002], 0
    jmp short @..local.l114
@..api_idx_0006_2.l1:
    mov bx, word [bp - 0x0006]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [data_830c]
    jne short @..local.l113
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
    jne short @..local.l113
    mov ax, bx
    ret
@..local.l113:
    add word [bp - 0x0006], byte 8
    inc word [bp - 0x0002]
@..local.l114:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_5910]
    jl short @..api_idx_0006_2.l1
    mov ax, 0
    ret
api_idx_0006_3:
    mov ax, 0xfffa
    call ds_dispatch_f40b
    call api_idx_0006_2
    mov word [bp - 0x0002], ax
    test ax, ax
    je short @..local.l115
    mov ax, 0
    push ax
    push word [data_8d08]
    push word [data_8d06]
    call ds_dispatch_e94f
    add sp, byte 6
    mov ax, 0xb9
    push ax
    mov ax, 0x131
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 4
    push ax
    mov bx, word [bp - 0x0002]
    mov al, byte [bx + 0x7]
    sub ah, ah
    push ax
    call ds_dispatch_e830
    add sp, byte 4
    mov ax, 0xc4
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0xb9
    push ax
    mov ax, 0x131
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 1
    ret
@..local.l115:
    mov ax, 0
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
    mov ax, 0
    push ax
    push word [data_8d08]
    push word [data_8d06]
    call ds_dispatch_e94f
    add sp, byte 6
    mov ax, 0xc4
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0xb9
    push ax
    mov ax, 0x131
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0
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
api_idx_0004_7:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov word [bp - 0x0002], 0
    jmp near @..api_idx_0004_7.l8
@..api_idx_0004_7.l1:
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xe]
    jne short @..api_idx_0004_7.l2
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
    jmp short @..api_idx_0004_7.l3
@..api_idx_0004_7.l2:
    mov word [bp - 0x0004], 0xb4
@..api_idx_0004_7.l3:
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
    cmp word [bx - 0x6c52], byte 0
    je short @..api_idx_0004_7.l4
    mov ax, 4
    push ax
    mov ax, 0x63
    push ax
    call ds_dispatch_e830
    add sp, byte 4
@..api_idx_0004_7.l4:
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
    mov al, byte [bx - 0x6c2a]
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
    add ax, 0x93fe
    push ax
    call api_idx_002a
    add sp, byte 8
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6a4a], byte 0
    jle short @..api_idx_0004_7.l7
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
    jne short @..api_idx_0004_7.l5
    mov ax, word [bp - 0x0004]
    jmp short @..api_idx_0004_7.l6
@..api_idx_0004_7.l5:
    mov ax, 2
@..api_idx_0004_7.l6:
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
    push word [bx - 0x6a4a]
    call ds_dispatch_b2e7
    add sp, byte 6
@..api_idx_0004_7.l7:
    inc word [bp - 0x0002]
@..api_idx_0004_7.l8:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xa]
    jge short @..api_idx_0004_7.l9
    jmp near @..api_idx_0004_7.l1
@..api_idx_0004_7.l9:
    ret
math_loc_3a15:
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
    call api_idx_0004_7
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
    mov word [data_911c], 0x8d
    mov word [bp - 0x0012], 0x16
    mov ax, 3
    cmp word [bp + 0xc], byte 3
    jge short @..api_idx_0038.l1
    mov ax, word [bp + 0xc]
@..api_idx_0038.l1:
    mov word [bp - 0x0022], ax
    mov ax, 0x90dc
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
    call math_loc_3a15
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
    cmp word [bp + 0x6], byte 0
    jne short @..local.l116
    jmp near @..local.l117
@..local.l116:
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
    jmp near @..local.l118
@..local.l117:
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
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0xd
    push ax
    mov ax, 0x54
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
    mov ax, 0x1b
    push ax
    mov ax, 0x4c
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
@..local.l118:
    mov ax, 3
    cmp word [bp + 0xc], byte 3
    jge short @..local.l119
    mov ax, word [bp + 0xc]
@..local.l119:
    mov word [bp - 0x001e], ax
    mov word [bp - 0x0002], 0
    jmp short @..local.l121
@..local.l120:
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
@..local.l121:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x001e]
    jl short @..local.l120
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
    mov word [data_9124], 5
@..local.l122:
    cmp word [bp + 0x6], byte 0
    jne short @..local.l123
    call math_loc_086b
@..local.l123:
    mov ax, 0x59fe
    push ax
    call ds_dispatch_b90d
    pop cx
    dec ax
    mov word [bp - 0x0018], ax
    cmp word [data_59fc], byte 0
    je short @..local.l127
    mov ax, word [bp - 0x0020]
    cmp ax, word [bp - 0x0016]
    jl short @..local.l124
    inc word [bp - 0x0020]
@..local.l124:
    mov ax, word [bp - 0x0020]
    cmp ax, strict word 0xffff
    je short @..local.l125
    cmp ax, word [bp - 0x0016]
    jl short @..local.l125
    mov ax, word [bp - 0x0016]
    add ax, word [bp - 0x001e]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp - 0x0020]
    cmp cx, ax
    jge short @..local.l126
@..local.l125:
    mov ax, word [bp - 0x0016]
    mov word [bp - 0x0020], ax
@..local.l126:
    mov word [data_5b3e], 1
    mov ax, word [bp - 0x0020]
    sub ax, word [bp - 0x0016]
    add ax, strict word 6
    mov word [bp - 0x0018], ax
@..local.l127:
    cmp word [data_5b3e], byte 1
    je short @..local.l128
    jmp near @..local.l132
@..local.l128:
    mov ax, word [bp - 0x0018]
    jmp near @..local.l130

    db 0x8d, 0x46, 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0xd7, 0xb1, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xf0, 0x83
    db 0xc1, 0x0e, 0x2b, 0xc1, 0x50, 0xe8, 0x29, 0x79, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xec, 0x8d, 0x46
    db 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0xa9, 0xb1, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe4, 0xff
    db 0x76, 0xee, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x0e, 0x2b
    db 0xc1, 0x2b, 0x46, 0xec, 0x50, 0xe8, 0xf9, 0x78, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0x83, 0x7e
    db 0x0c, 0x03, 0x7e, 0x1f, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xee, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x49, 0x49, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7, 0xf9
    db 0x89, 0x46, 0xea, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76, 0xea, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x5d
    db 0x00, 0x50, 0xe8, 0xff, 0xfa, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0, 0xb8, 0x07, 0x00, 0x50, 0xb8
    db 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00
    db 0x50, 0xe8, 0xa3, 0x80, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa, 0x03
    db 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0xe8, 0x40, 0x7b, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b
    db 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc
    db 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x52, 0xa9, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x03
    db 0xe9, 0x0b, 0xff, 0xe9, 0x97, 0x02, 0x83, 0x7e, 0xe8, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0xf8, 0x7e, 0x83
    db 0xc4, 0x0a, 0x83, 0x7e, 0xea, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xea, 0xeb, 0x34, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0xc7, 0x7e
    db 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0x0c
    db 'HHH;F'
    db 0xea, 0x7e, 0x03, 0xff, 0x46, 0xea, 0x83, 0x7e, 0x0c, 0x03, 0x7e, 0x2c, 0xff, 0x76, 0xee, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x64, 0x00, 0xf7, 0x6e, 0xee, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x49
    db 0x49, 0x49, 0x99, 0xf7, 0xf9, 0xf7, 0x6e, 0xea, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8
    db 0x94, 0x77, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76
    db 0xea, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50
    db 0x8b, 0x46, 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0xbf, 0xf9, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0
    db 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b
    db 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0x63, 0x7f, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50
    db 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0xc1, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x00, 0x7a, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa
    db 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x12, 0xa8, 0x83, 0xc4, 0x08, 0xe9
    db 0x60, 0x01, 0x83, 0x7e, 0x06, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8
    db 0x71, 0x7d, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8
    db 0x51, 0x7d, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe6, 0x00, 0x00
    db 0xe9, 0x0f, 0x01, 0x83, 0x7e, 0x08, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50
    db 0xe8, 0x20, 0x7d, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50
    db 0xe8, 0x00, 0x7d, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46, 0xe6, 0x00
    db 0x00, 0xe9, 0xbe, 0x00, 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8
    db 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00
    db 0x50, 0xe8, 0xcf, 0x7c, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8
    db 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00
    db 0x50, 0xe8, 0xaf, 0x7c, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x02, 0x00, 0xc7, 0x46, 0xe6
    db 0x00, 0x00, 0xeb, 0x6e

@..local.l129:
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
    call math_loc_3a15
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
    jmp short @..local.l132
    db 0xb8, 0x8e, 0xde, 0x8f, 0xde, 0x8f, 0x15, 0x91, 0x66, 0x91, 0xb7, 0x91
@..local.l130:
    cmp ax, strict word 6
    jae short @..local.l131
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6da6]
@..local.l131:
    jmp short @..local.l129
@..local.l132:
    cmp word [bp - 0x001a], byte 0
    je short @..local.l133
    jmp near @..local.l122
@..local.l133:
    mov ax, 1
    push ax
    push word [bp - 0x0038]
    call ds_dispatch_c459
    add sp, byte 4
    mov word [data_911c], 0x8f
    mov ax, word [bp - 0x0020]
    mov word [data_904e], ax
    mov ax, word [data_9050]
    ret
api_idx_0054:
    mov ax, 0xffac
    call ds_dispatch_f40b
    mov ax, 0xa
    imul word [bp + 0x6]
    add ax, strict word 0x32
    push ax
    mov ax, 5
    imul word [data_95de]
    mov cx, ax
    pop ax
    sub ax, cx
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0x5f
    jle short @..api_idx_0054.l1
    mov word [bp - 0x0004], 0x5f
@..api_idx_0054.l1:
    cmp word [bp - 0x0004], byte 5
    jge short @..api_idx_0054.l2
    mov word [bp - 0x0004], 5
@..api_idx_0054.l2:
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov word [bp - 0x0002], ax
    cmp ax, word [bp - 0x0004]
    jge short @..api_idx_0054.l3
    mov word [data_91fe], 0
    mov word [data_95e0], 1
    mov word [data_9114], 1
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0x1472
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    push word [data_91d4]
    lea ax, word [bp - 0x0054]
    push ax
    call math_loc_0eb2
    add sp, byte 8
    jmp short @..api_idx_0054.l5
@..api_idx_0054.l3:
    mov ax, 0x64
    sub ax, word [bp - 0x0004]
    mov cx, 3
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x64
    sub ax, cx
    cmp ax, word [bp - 0x0002]
    jge short @..api_idx_0054.l4
    mov word [data_95e0], 0xffff
    jmp short @..api_idx_0054.l5
@..api_idx_0054.l4:
    mov word [data_95e0], 0
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0x1473
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 1
    push ax
    push ax
    push word [data_91d4]
    lea ax, word [bp - 0x0054]
    push ax
    call math_loc_0eb2
    add sp, byte 8
@..api_idx_0054.l5:
    ret
math_loc_4318:
    mov ax, 0
    call ds_dispatch_f40b
    cmp word [bp + 0x8], byte 1
    jne short @..math_loc_4318.l3
    cmp word [bp + 0x6], byte 0
    jle short @..math_loc_4318.l1
    mov ax, word [bp + 0x4]
    sub word [bp + 0x6], ax
    jmp short @..math_loc_4318.l2
@..math_loc_4318.l1:
    mov ax, 0
    sub ax, word [bp + 0x4]
    cmp ax, word [bp + 0x6]
    jge short @..math_loc_4318.l2
    mov word [bp + 0x6], ax
@..math_loc_4318.l2:
    jmp short @..math_loc_4318.l5
@..math_loc_4318.l3:
    cmp word [bp + 0x8], byte 0
    jne short @..math_loc_4318.l5
    cmp word [bp + 0x6], byte 0
    jge short @..math_loc_4318.l4
    mov ax, word [bp + 0x4]
    add word [bp + 0x6], ax
    jmp short @..math_loc_4318.l5
@..math_loc_4318.l4:
    mov ax, word [bp + 0x6]
    cmp ax, word [bp + 0x4]
    jge short @..math_loc_4318.l5
    mov ax, word [bp + 0x4]
    mov word [bp + 0x6], ax
@..math_loc_4318.l5:
    mov ax, word [bp + 0x6]
    ret
api_idx_0008_2:
    mov ax, 0xfff8
    call ds_dispatch_f40b
    mov ax, word [bp + 0x6]
    jmp near @..local.l139
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
    call math_loc_4318
    add sp, byte 6
    mov word [data_8300], ax
    jmp near 0x4ad7
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
    call math_loc_4318
    add sp, byte 6
    mov word [data_82f4], ax
    db 0xe9, 0x11, 0x07 ; jmp near 0x4ad7
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
    call math_loc_4318
    add sp, byte 6
    mov word [data_82f8], ax
    db 0xe9, 0xe7, 0x06 ; jmp near 0x4ad7
    mov ax, 5
    imul word [bp + 0x8]
    add word [data_8306], ax
    db 0xe9, 0xda, 0x06 ; jmp near 0x4ad7
    mov ax, 0x64
    imul word [bp + 0x8]
    add word [data_8302], ax
    db 0xe9, 0xcd, 0x06 ; jmp near 0x4ad7
    mov ax, 0x32
    imul word [bp + 0x8]
    add word [data_82fa], ax
    mov ax, 0
    push ax
    push word [data_82fc]
    mov ax, 5
    imul word [bp + 0x8]
    push ax
    call math_loc_4318
    add sp, byte 6
    mov word [data_82fc], ax
    db 0xe9, 0xa8, 0x06 ; jmp near 0x4ad7
    push word [bp + 0x8]
    push word [bp + 0x4]
    call api_idx_0054
    add sp, byte 4
    db 0xe9, 0x99, 0x06 ; jmp near 0x4ad7
    mov word [bp - 0x0006], 0
@..api_idx_0008_2.l1:
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    push ax
    mov ax, 0xa
    imul word [bp + 0x8]
    mov cx, ax
    add ax, strict word 0x23
    mov cx, ax
    mov dx, word [data_95de]
    shl dx, 1
    sub ax, dx
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short @..api_idx_0008_2.l8
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0008_2.l7
@..api_idx_0008_2.l2:
    cmp word [data_91fe], byte 0
    jle short @..api_idx_0008_2.l5
    cmp word [data_9250], byte 0xff
    je short @..api_idx_0008_2.l5
    mov ax, 0xa
    imul word [data_9250]
    add ax, word [bp - 0x0006]
    mov bx, ax
    cmp byte [bx - 0x6dae], 0x2d
    jne short @..api_idx_0008_2.l3
    mov ax, 0x2d
    jmp short @..api_idx_0008_2.l4
@..api_idx_0008_2.l3:
    mov ax, 0x2a
@..api_idx_0008_2.l4:
    push ax
    mov ax, 0xa
    imul word [bp - 0x0002]
    mov cx, ax
    add ax, word [bp - 0x0006]
    mov bx, ax
    pop ax
    mov byte [bx - 0x6c8e], al
    jmp short @..api_idx_0008_2.l6
@..api_idx_0008_2.l5:
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    mov bx, ax
    mov byte [bx - 0x6c8e], 0x2d
@..api_idx_0008_2.l6:
    inc word [bp - 0x0002]
@..api_idx_0008_2.l7:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..api_idx_0008_2.l2
@..api_idx_0008_2.l8:
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 8
    jge short @..api_idx_0008_2.l9
    jmp near @..api_idx_0008_2.l1
@..api_idx_0008_2.l9:
    db 0xe9, 0xfd, 0x05 ; jmp near 0x4ad7
    mov ax, 0
    cmp word [bp + 0x6], byte 0x13
    je short @..api_idx_0008_2.l10
    mov ax, word [bp + 0xa]
@..api_idx_0008_2.l10:
    mov word [bp - 0x0002], ax
    mov ax, word [data_69c8]
    cmp word [bp + 0x6], byte 0x13
    je short @..api_idx_0008_2.l11
    mov ax, word [bp + 0xa]
    inc ax
@..api_idx_0008_2.l11:
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x8]
    cmp word [bp + 0x6], byte 0x13
    je short @..api_idx_0008_2.l12
    shl ax, 1
@..api_idx_0008_2.l12:
    mov word [bp - 0x0006], ax
    mov ax, 0
    cmp word [bp + 0x6], byte 0x13
    je short @..api_idx_0008_2.l13
    mov ax, word [bp + 0x8]
@..api_idx_0008_2.l13:
    mov word [bp - 0x0008], ax
    jmp short 0x4582
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

    db 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x58, 0x89, 0x87, 0x10, 0x5c, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76
    db 0xfe, 0xe8, 0xbe, 0x85, 0x83, 0xc4, 0x04, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3b, 0x46, 0xfc
    db 0x7c, 0x8e, 0xe9, 0x4a, 0x05, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x5d
    db 0x5d, 0x2a, 0xe4, 0x50, 0xb8, 0x19, 0x00, 0xf7, 0x6e, 0x08, 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89
    db 0x46, 0xfe, 0x3d, 0x00, 0x00, 0x7d, 0x05, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0x8a, 0x46, 0xfe, 0x88
    db 0x87, 0x5d, 0x5d, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x0a, 0xe8, 0x75, 0x85, 0x83, 0xc4, 0x04
    db 0xe9, 0x0c, 0x05, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x32, 0x5e, 0x2a
    db 0xe4, 0x2b, 0x46, 0x08, 0x89, 0x46, 0xfe, 0x3d, 0x00, 0x00, 0x7f, 0x0a, 0xc7, 0x46, 0xfe, 0x00
    db 0x00, 0xc6, 0x87, 0x5f, 0x5d, 0x00, 0x8a, 0x46, 0xfe, 0x88, 0x87, 0x32, 0x5e, 0x8a, 0x87, 0x5f
    db 0x5d, 0x2a, 0xe4, 0x50, 0xb8, 0x05, 0x00, 0xf7, 0x6e, 0x08, 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89
    db 0x46, 0xfe, 0x3d, 0x00, 0x00, 0x7f, 0x0a, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xc6, 0x87, 0x32, 0x5e
    db 0x00, 0x8a, 0x46, 0xfe, 0x88, 0x87, 0x5f, 0x5d, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x0a, 0xe8
    db 0x10, 0x85, 0x83, 0xc4, 0x04, 0xe9, 0xa7, 0x04, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8
    db 0x80, 0xbf, 0x2f, 0x5e, 0x02, 0x74, 0x03, 0xe9, 0x80, 0x00, 0xb8, 0x03, 0x00, 0xf7, 0x6e, 0x08
    db 0x50, 0x8a, 0x87, 0x67, 0x5d, 0x2a, 0xe4, 0x8b, 0xd0, 0xb9, 0x15, 0x00, 0x2b, 0xc8, 0x58, 0x3b
    db 0xc1, 0x7e, 0x67, 0xfe, 0x8f, 0x67, 0x5d, 0xb8, 0xb7, 0x00, 0x50, 0xe8, 0x43, 0x71, 0x59, 0x05
    db 0xb7, 0x00, 0x99, 0x50, 0x52, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x5a, 0x58, 0x01
    db 0x87, 0xfc, 0x5b, 0x11, 0x97, 0xfe, 0x5b, 0xb8, 0x12, 0x00, 0x50, 0xe8, 0x23, 0x71, 0x59, 0x50
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x67, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8
    db 0x58, 0x3b, 0xc1, 0x7e, 0x13, 0xc6, 0x87, 0x2f, 0x5e, 0x03, 0xc7, 0x87, 0x0c, 0x5c, 0x00, 0x00
    db 0xc7, 0x87, 0x10, 0x5c, 0x00, 0x00, 0xeb, 0x05, 0xc6, 0x87, 0x2f, 0x5e, 0x00, 0xb8, 0x01, 0x00
    db 0x50, 0xff, 0x76, 0x0a, 0xe8, 0x7b, 0x84, 0x83, 0xc4, 0x04, 0xe9, 0x12, 0x04, 0xb8, 0x48, 0x02
    db 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x61, 0x5d, 0x2a, 0xe4, 0x50, 0xb8, 0x19, 0x00, 0xf7
    db 0x6e, 0x08, 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfe, 0x3d, 0x00, 0x00, 0x7d, 0x05, 0xc7
    db 0x46, 0xfe, 0x00, 0x00, 0x8a, 0x46, 0xfe, 0x88, 0x87, 0x61, 0x5d, 0xb8, 0x01, 0x00, 0x50, 0xff
    db 0x76, 0x0a, 0xe8, 0x3d, 0x84, 0x83, 0xc4, 0x04, 0xe9, 0xd4, 0x03, 0xb8, 0x03, 0x00, 0xf7, 0x6e
    db 0x08, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x67, 0x5d, 0x2a, 0xe4
    db 0x8b, 0xd0, 0xb9, 0x12, 0x00, 0x2b, 0xc8, 0x58, 0x3b, 0xc1, 0x7e, 0x05, 0xc6, 0x87, 0x60, 0x5d
    db 0x00, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x0a, 0xe8, 0x07, 0x84, 0x83, 0xc4, 0x04, 0xe9, 0x9e
    db 0x03, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xeb, 0x42, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8
    db 0x8a, 0x87, 0x5c, 0x5d, 0x2a, 0xe4, 0x50, 0x8b, 0x46, 0x08, 0xf7, 0xe8, 0x8b, 0xc8, 0x05, 0x04
    db 0x00, 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfc, 0x3d, 0x00, 0x00, 0x7d, 0x05, 0xc7, 0x46
    db 0xfc, 0x00, 0x00, 0x8a, 0x46, 0xfc, 0x88, 0x87, 0x5c, 0x5d, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76
    db 0xfe, 0xe8, 0xbe, 0x83, 0x83, 0xc4, 0x04, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3b, 0x06, 0xc8
    db 0x69, 0x7c, 0xb5, 0xe9, 0x49, 0x03, 0xc7, 0x46, 0xfc, 0x01, 0x00, 0x8b, 0x46, 0xfc, 0x3d, 0x01
    db 0x00, 0x74, 0x14, 0x3d, 0x02, 0x00, 0x74, 0x0f, 0x3d, 0x04, 0x00, 0x74, 0x0a, 0x3d, 0x08, 0x00
    db 0x74, 0x05, 0x3d, 0x09, 0x00, 0x75, 0x39, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xc8, 0x8b
    db 0x46, 0xfc, 0x03, 0xc8, 0x8b, 0xd9, 0x8a, 0x87, 0x5a, 0x5d, 0x2a, 0xe4, 0x50, 0x8b, 0x46, 0x08
    db 0xf7, 0xe8, 0x8b, 0xc8, 0x05, 0x04, 0x00, 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfe, 0x3d
    db 0x00, 0x00, 0x7d, 0x05, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0x8a, 0x46, 0xfe, 0x88, 0x87, 0x5a, 0x5d
    db 0xff, 0x46, 0xfc, 0x8b, 0x46, 0xfc, 0x3d, 0x09, 0x00, 0x7e, 0xa0, 0xb8, 0x01, 0x00, 0x50, 0xff
    db 0x76, 0x0a, 0xe8, 0x3d, 0x83, 0x83, 0xc4, 0x04, 0xe9, 0xd4, 0x02, 0xb8, 0x00, 0x00, 0x83, 0x7e
    db 0x06, 0x58, 0x74, 0x03, 0x8b, 0x46, 0x0a, 0x89, 0x46, 0xfe, 0xa1, 0xc8, 0x69, 0x83, 0x7e, 0x06
    db 0x58, 0x74, 0x04, 0x8b, 0x46, 0x0a, 0x40, 0x89, 0x46, 0xfc, 0xb8, 0x04, 0x00, 0x83, 0x7e, 0x06
    db 0x58, 0x74, 0x03, 0xb8, 0x07, 0x00, 0x89, 0x46, 0xfa, 0xb8, 0x00, 0x00, 0x83, 0x7e, 0x06, 0x58
    db 0x74, 0x03, 0x8b, 0x46, 0x08, 0x89, 0x46, 0xf8, 0xeb, 0x73, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe
    db 0x8b, 0xd8, 0xff, 0xb7, 0x0e, 0x5c, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf8, 0xff, 0x76, 0xfa
    db 0xff, 0x76, 0x08, 0xe8, 0x8c, 0x88, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4
    db 0x8c, 0xd2, 0x8e, 0xc2, 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0x49, 0x88, 0x83, 0xc4, 0x04
    db 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x58, 0x03, 0x87, 0x0c, 0x5c, 0x50, 0xe8
    db 0x38, 0x6f, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x58, 0x89
    db 0x87, 0x0c, 0x5c, 0x83, 0x87, 0xfc, 0x5b, 0x01, 0x83, 0x97, 0xfe, 0x5b, 0x00, 0xb8, 0x01, 0x00
    db 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x8b, 0x82, 0x83, 0xc4, 0x04, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe
    db 0x3b, 0x46, 0xfc, 0x7c, 0x85, 0xe9, 0x17, 0x02, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8
    db 0x80, 0xbf, 0x2f, 0x5e, 0x03, 0x74, 0x03, 0xe9, 0x88, 0x00, 0xb8, 0x03, 0x00, 0xf7, 0x6e, 0x08
    db 0x50, 0x8a, 0x87, 0x67, 0x5d, 0x2a, 0xe4, 0x8b, 0xd0, 0xb9, 0x15, 0x00, 0x2b, 0xc8, 0x58, 0x3b
    db 0xc1, 0x7e, 0x6f, 0xfe, 0x8f, 0x67, 0x5d, 0xc6, 0x87, 0x2f, 0x5e, 0x00, 0xff, 0xb7, 0x0e, 0x5c
    db 0xb8, 0x01, 0x00, 0x50, 0x8b, 0x87, 0x0e, 0x5c, 0xb9, 0x03, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8
    db 0xb8, 0x6e, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x58, 0x89
    db 0x87, 0x0c, 0x5c, 0x8b, 0x87, 0x12, 0x5c, 0xb9, 0x0a, 0x00, 0x99, 0xf7, 0xf9, 0x89, 0x87, 0x10
    db 0x5c, 0xff, 0x87, 0x1a, 0x5c, 0xb8, 0xb7, 0x00, 0x50, 0xe8, 0x75, 0x6e, 0x59, 0x05, 0x6d, 0x01
    db 0x99, 0x50, 0x52, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x5a, 0x58, 0x01, 0x87, 0xfc
    db 0x5b, 0x11, 0x97, 0xfe, 0x5b, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x0a, 0xe8, 0xe3, 0x81, 0x83
    db 0xc4, 0x04, 0xe9, 0x7a, 0x01, 0xff, 0x76, 0x08, 0xb8, 0x08, 0x00, 0x50, 0xff, 0x76, 0x08, 0xe8
    db 0x80, 0x87, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4, 0x8c, 0xd2, 0x8e, 0xc2
    db 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0x3d, 0x87, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xfe, 0x50
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x01, 0x87, 0x10, 0x5c, 0x8b, 0x87, 0x10
    db 0x5c, 0x3b, 0x87, 0x12, 0x5c, 0x7e, 0x08, 0x8b, 0x87, 0x12, 0x5c, 0x89, 0x87, 0x10, 0x5c, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xff, 0x76, 0x08, 0xe8, 0x35, 0x87, 0x83, 0xc4, 0x06
    db 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4, 0x8c, 0xd2, 0x8e, 0xc2, 0x8b, 0xf1, 0x8b, 0xf8, 0xa5
    db 0xa5, 0xe8, 0xf2, 0x86, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xfe, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e
    db 0x04, 0x8b, 0xd8, 0x58, 0x01, 0x87, 0x0c, 0x5c, 0x8b, 0x87, 0x0c, 0x5c, 0x3b, 0x87, 0x0e, 0x5c
    db 0x7e, 0x08, 0x8b, 0x87, 0x0e, 0x5c, 0x89, 0x87, 0x0c, 0x5c, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76
    db 0x04, 0xe8, 0x3e, 0x81, 0x83, 0xc4, 0x04, 0xe9, 0xd5, 0x00, 0xc7, 0x46, 0xfe, 0x00, 0x00

@..local.l135:
    mov ax, 0
    push ax
    mov ax, 0xa
    push ax
    push word [bp + 0x8]
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
    jle short @..local.l137
    mov ax, word [bx + 0x5c1e]
    mov word [bx + 0x5c1c], ax
@..local.l137:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..local.l135
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call ds_dispatch_cb3a
    add sp, byte 4
    jmp short 0x4ad7
@..local.l139:
    mov cx, 0x17
    call leaf_loc_9a03
    or al, 0
    adc word [bx + si], ax
    adc ax, word [bx + si]
    sbb word [bx + si], ax
    and word [bx + si], ax
    and ax, 0x2e00
    add byte [bx], ch
    add byte [bx + di], dh
    add byte [bx + si], bh
    add byte [di], bh
    add byte [data_3f00], bh
    db 0x00, 0x42, 0x00 ; add byte [bp + si], al
    inc bp
    add byte [bp], cl
    push dx
    db 0x00, 0x54, 0x00 ; add byte [si], dl
    pop ax
    add byte [bp], bl
    popaw
    db 0x00, 0x62, 0x00 ; add byte [bp + si], ah
    and word [di - 0x6a2c], dx
    and word [di - 0x68b6], dx
    adc dl, byte [bp - 0x6bc9]
    inc sp
    xchg sp, ax
    jbe short 0x4a4d
    or ax, 0x7794
    xchg si, ax
    aad 0x97
    test word [si - 0x6c45], dx
    adc byte [bx - 0x68f4], 0x4a
    cbw
    jcxz 0x4a5e
    push cx
    xchg sp, ax
    dec dx
    cbw
    pop es
    cwd
    movsb
    cwd
    dec cx
    call far 0xb8c3:0x9b1e
    cld

    db 0xff, 0xe8, 0x2d, 0xa9, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0xea, 0x07, 0x50, 0xff, 0x76, 0x04
    db 0xe8, 0x31, 0x42, 0x83, 0xc4, 0x08, 0x85, 0xc0, 0x74, 0x03, 0xe9, 0xd4, 0x00, 0xa1, 0x4e, 0x90
    db 0xb9, 0x00, 0x01, 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xfc, 0x89, 0x56, 0xfe, 0xb8, 0x06, 0x00, 0xf7
    db 0xea, 0x8b, 0xd8, 0x80, 0xbf, 0x24, 0x06, 0x01, 0x75, 0x0b, 0xe8, 0x9a, 0x83, 0xa3, 0xe2, 0x95
    db 0x3d, 0xff, 0xff, 0x75, 0x00, 0x83, 0x7e, 0xfe, 0x00, 0x7d, 0x03, 0xe9, 0xa3, 0x00, 0xb8, 0x06
    db 0x00, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x8a, 0x87, 0x22, 0x06, 0x2a, 0xe4, 0xf7, 0x6e, 0xfc, 0x50
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8a, 0x87, 0x20, 0x06, 0x2a, 0xe4, 0x8b, 0xd0
    db 0xd1, 0xe0, 0xd1, 0xe0, 0x8b, 0xd0, 0x03, 0xc8, 0x8b, 0xd9, 0x58, 0x29, 0x87, 0x1c, 0x5c, 0xff
    db 0x36, 0xe2, 0x95, 0xff, 0x76, 0xfc, 0xff, 0x76, 0xfe, 0xff, 0x76, 0x04, 0xe8, 0xff, 0xf7, 0x83
    db 0xc4, 0x08, 0xff, 0x76, 0xfc, 0xe8, 0x37, 0x6c, 0x59, 0x50, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xfe
    db 0x8b, 0xd8, 0x8a, 0x87, 0x21, 0x06, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x03, 0x46, 0xfc
    db 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x29, 0x87, 0x10, 0x5c, 0x83, 0xbf
    db 0x10, 0x5c, 0x00, 0x7d, 0x1f, 0xc7, 0x87, 0x10, 0x5c, 0x00, 0x00, 0xb8, 0x06, 0x00, 0x50, 0xe8
    db 0xfd, 0x6b, 0x59, 0x05, 0x06, 0x00, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58
    db 0x88, 0x87, 0x5c, 0x5d, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x72, 0x7f, 0x83, 0xc4
    db 0x04, 0xc3, 0xb8, 0x6e, 0xff, 0xe8, 0x39, 0xa8, 0xc7, 0x86, 0x6e, 0xff, 0x00, 0x00, 0xc7, 0x46
    db 0xb2, 0x00, 0x00, 0xc7, 0x46, 0xb0, 0x00, 0x00, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x50, 0xb8
    db 0x78, 0x00, 0xf7, 0x6e, 0xb2, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x6e
    db 0xb0, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x8b, 0xd8, 0x83, 0xbf, 0x34, 0x5c, 0x00, 0x7f, 0x03, 0xe9
    db 0x17, 0x01, 0xb8, 0x00, 0x00, 0x50, 0xff, 0xb7, 0x34, 0x5c, 0x8d, 0x46, 0xb6, 0x50, 0xb8, 0x01
    db 0x00, 0x50, 0xe8, 0x1d, 0x6a, 0x83, 0xc4, 0x08, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x50, 0xb8
    db 0x78, 0x00, 0xf7, 0x6e, 0xb2, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x6e
    db 0xb0, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x8b, 0xd8, 0x8a, 0x87, 0x3b, 0x5c, 0x2a, 0xe4, 0xa9, 0x80
    db 0x00, 0x74, 0x17, 0x8d, 0x46, 0xb6, 0x50, 0xb8, 0x16, 0x00, 0xf7, 0xae, 0x6e, 0xff, 0x05, 0xfe
    db 0x93, 0x50, 0xe8, 0x05, 0xa7, 0x83, 0xc4, 0x04, 0xeb, 0x1a, 0xb8, 0x16, 0x00, 0xf7, 0xae, 0x6e
    db 0xff, 0x05, 0xfe, 0x93, 0x50, 0x8a, 0x46, 0xef, 0x2a, 0xe4, 0x05, 0x70, 0x17, 0x50, 0xe8, 0xc0
    db 0x68, 0x83, 0xc4, 0x04, 0x8a, 0x46, 0xef, 0x2a, 0xe4, 0x8b, 0x8e, 0x6e, 0xff, 0xd1, 0xe1, 0x8b
    db 0xd9, 0x89, 0x87, 0xd6, 0x93, 0x8b, 0x46, 0xb2, 0x89, 0x87, 0xae, 0x93, 0xb8, 0x48, 0x02, 0xf7
    db 0x6e, 0x04, 0x50, 0xb8, 0x78, 0x00, 0xf7, 0x6e, 0xb2, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x50, 0xb8
    db 0x0c, 0x00, 0xf7, 0x6e, 0xb0, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x8b, 0xd8, 0x8a, 0x87, 0x38, 0x5c
    db 0x2a, 0xe4, 0x8b, 0xd8, 0x80, 0xbf, 0x0e, 0x06, 0x01, 0x75, 0x34, 0xb8, 0x48, 0x02, 0xf7, 0x6e
    db 0x04, 0x50, 0xb8, 0x78, 0x00, 0xf7, 0x6e, 0xb2, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x50, 0xb8, 0x0c
    db 0x00, 0xf7, 0x6e, 0xb0, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x8b, 0xd8, 0x8a, 0x87, 0x3a, 0x5c, 0x2a
    db 0xe4, 0x8b, 0x8e, 0x6e, 0xff, 0xd1, 0xe1, 0x8b, 0xd9, 0x89, 0x87, 0xb6, 0x95, 0xeb, 0x0e, 0x8b
    db 0x86, 0x6e, 0xff, 0xd1, 0xe0, 0x8b, 0xd8, 0xc7, 0x87, 0xb6, 0x95, 0x00, 0x00, 0x8b, 0x46, 0xb2
    db 0x86, 0xe0, 0x2a, 0xc0, 0x03, 0x46, 0xb0, 0x8b, 0x8e, 0x6e, 0xff, 0xd1, 0xe1, 0x8b, 0xd9, 0x03
    db 0xdd, 0x89, 0x87, 0x70, 0xff, 0xff, 0x86, 0x6e, 0xff, 0xff, 0x46, 0xb0, 0x8b, 0x46, 0xb0, 0x3d
    db 0x0a, 0x00, 0x7d, 0x03, 0xe9, 0xb1, 0xfe, 0xff, 0x46, 0xb2, 0x8b, 0x46, 0xb2, 0x3d, 0x02, 0x00
    db 0x7d, 0x03, 0xe9, 0x9e, 0xfe, 0x83, 0xbe, 0x6e, 0xff, 0x00, 0x75, 0x01, 0xc3, 0xb8, 0xe2, 0x90
    db 0x50, 0xff, 0xb6, 0x6e, 0xff, 0xb8, 0x01, 0x00, 0x50, 0x50, 0x50, 0xb8, 0xee, 0x07, 0x50, 0xe8
    db 0xfa, 0xec, 0x83, 0xc4, 0x0c, 0x89, 0x46, 0xb4, 0xa1, 0x4e, 0x90, 0x89, 0x46, 0xfe, 0x83, 0x7e
    db 0xb4, 0x02, 0x74, 0x05, 0x3d, 0xff, 0xff, 0x75, 0x17, 0xb8, 0xc6, 0x00, 0x50, 0xb8, 0x09, 0x01
    db 0x50, 0xb8, 0x8e, 0x00, 0x50, 0xb8, 0x36, 0x00, 0x50, 0xe8, 0x54, 0x9b, 0x83, 0xc4, 0x08, 0xc3
    db 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0x8b, 0x87, 0x70, 0xff, 0xb9, 0x00, 0x01
    db 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xb2, 0x89, 0x56, 0xb0, 0xb8, 0x10, 0x00, 0x50, 0xb8, 0x0c, 0x00
    db 0x50, 0xb8, 0x96, 0x00, 0x50, 0xb8, 0x3f, 0x00, 0x50, 0xff, 0x76, 0xb4, 0x8b, 0x46, 0xb4, 0x05
    db 0xee, 0x07, 0x50, 0xe8, 0xf6, 0xe9, 0x83, 0xc4, 0x0c, 0x83, 0x7e, 0xb4, 0x00, 0x74, 0x03, 0xe9
    db 0xa9, 0x00, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x50, 0xb8, 0x78, 0x00
    db 0xf7, 0x6e, 0xb2, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x6e, 0xb0, 0x8b
    db 0xc8, 0x58, 0x03, 0xc1, 0x8b, 0xd8, 0xff, 0xb7, 0x34, 0x5c, 0x8d, 0x46, 0xb6, 0x50, 0xb8, 0x01
    db 0x00, 0x50, 0xe8, 0x3d, 0x68, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xd8, 0x00, 0x74, 0x6b, 0x8b, 0x46
    db 0xd8, 0xb9, 0x00, 0x01, 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xac, 0x89, 0x56, 0xae, 0xb8, 0x06, 0x00
    db 0xf7, 0xea, 0x8b, 0xd8, 0x80, 0xbf, 0x24, 0x06, 0x01, 0x75, 0x10, 0xe8, 0x89, 0x80, 0xa3, 0xe2
    db 0x95, 0x3d, 0xff, 0xff, 0x75, 0x05, 0xc7, 0x46, 0xae, 0xff, 0xff, 0xb8, 0xc6, 0x00, 0x50, 0xb8
    db 0x09, 0x01, 0x50, 0xb8, 0x8e, 0x00, 0x50, 0xb8, 0x36, 0x00, 0x50, 0xe8, 0x92, 0x9a, 0x83, 0xc4
    db 0x08, 0x83, 0x7e, 0xae, 0xff, 0x74, 0x22, 0xff, 0x76, 0xb0, 0xff, 0x76, 0xb2, 0xff, 0x76, 0x04
    db 0xe8, 0xca, 0x7b, 0x83, 0xc4, 0x06, 0xff, 0x36, 0xe2, 0x95, 0xff, 0x76, 0xac, 0xff, 0x76, 0xae
    db 0xff, 0x76, 0x04, 0xe8, 0xf8, 0xf4, 0x83, 0xc4, 0x08, 0xeb, 0x70, 0x83, 0x7e, 0xb4, 0x01, 0x75
    db 0x6a, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x50, 0xb8, 0x78, 0x00, 0xf7, 0x6e, 0xb2, 0x8b, 0xc8
    db 0x58, 0x03, 0xc1, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x6e, 0xb0, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x8b
    db 0xd8, 0x8a, 0x87, 0x3b, 0x5c, 0x2a, 0xe4, 0xa9, 0x02, 0x00, 0x74, 0x0a, 0xb8, 0x00, 0x00, 0x50
    db 0xe8, 0x33, 0x69, 0x59, 0xeb, 0x35, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x50, 0xb8, 0x78, 0x00
    db 0xf7, 0x6e, 0xb2, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x6e, 0xb0, 0x8b
    db 0xc8, 0x58, 0x03, 0xc1, 0x05, 0x34, 0x5c, 0x50, 0xe8, 0x09, 0xe7, 0x59, 0xff, 0x76, 0xb0, 0xff
    db 0x76, 0xb2, 0xff, 0x76, 0x04, 0xe8, 0x06, 0x7b, 0x83, 0xc4, 0x06, 0xb8, 0xc6, 0x00, 0x50, 0xb8
    db 0x09, 0x01, 0x50, 0xb8, 0x8e, 0x00, 0x50, 0xb8, 0x36, 0x00, 0x50, 0xe8, 0xe2, 0x99, 0x83, 0xc4
    db 0x08, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x35, 0x7c, 0x83, 0xc4, 0x04, 0xe8, 0xfb
    db 0xe7, 0xc3, 0xb8, 0x86, 0xff, 0xe8, 0xf9, 0xa4, 0xc7, 0x06, 0x1e, 0x91, 0x00, 0x00, 0xff, 0x76
    db 0x04, 0xe8, 0xb7, 0xd0, 0x59, 0x89, 0x46, 0x86, 0x8b, 0x5e, 0x04, 0x80, 0x7f, 0x35, 0x02, 0x75
    db 0x3e, 0xff, 0x36, 0xc8, 0x69, 0xe8, 0x77, 0x68, 0x59, 0x89, 0x46, 0xfa, 0xff, 0x76, 0xfa, 0xe8
    db 0x49, 0x7b, 0x59, 0x85, 0xc0, 0x74, 0xea, 0xc7, 0x06, 0x14, 0x91, 0x01, 0x00, 0xb8, 0x01, 0x00
    db 0x50, 0xe8, 0x92, 0x68, 0x59, 0x8b, 0x5e, 0x04, 0x8a, 0x47, 0x34, 0x2a, 0xe4, 0x50, 0xff, 0x76
    db 0xfa, 0xff, 0x36, 0xfe, 0x91, 0xe8, 0x85, 0xc5, 0x83, 0xc4, 0x06, 0xb8, 0x00, 0x00, 0xc3, 0xc7
    db 0x46, 0xfe, 0x00, 0x00, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0xc7, 0x47, 0xe4
    db 0x01, 0x00, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3d, 0x05, 0x00, 0x7e, 0xe7, 0xc7, 0x46, 0xee
    db 0xff, 0xff, 0xc7, 0x06, 0x26, 0x91, 0x01, 0x00, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xbb, 0xb9, 0x59
    db 0xc7, 0x06, 0x26, 0x91, 0x00, 0x00, 0x8d, 0x46, 0xe4, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0xff
    db 0xff, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x0c
    db 0x00, 0x50, 0xb8, 0x34, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0xb8, 0x9c, 0x00, 0x50, 0xb8, 0x52
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x50, 0x14, 0x50, 0xe8, 0x6a, 0x34, 0x83, 0xc4, 0x1a
    db 0x89, 0x46, 0xf8, 0x8d, 0x46, 0x88, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x50, 0x14, 0x50, 0xe8, 0x50
    db 0x65, 0x83, 0xc4, 0x04, 0xb8, 0x1a, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50
    db 0xb8, 0x34, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0xb8, 0x9c, 0x00, 0x50, 0xb8, 0x52, 0x00, 0x50
    db 0xff, 0x36, 0x52, 0x90, 0x8d, 0x46, 0x88, 0x50, 0xe8, 0xa3, 0x32, 0x83, 0xc4, 0x12, 0x8b, 0x46
    db 0xf8, 0xe9, 0xa8, 0x01, 0x83, 0x3e, 0x32, 0x0e, 0x00, 0x75, 0x08, 0xb8, 0x01, 0x00, 0x50, 0xe8
    db 0x28, 0xb9, 0x59, 0xe8, 0x81, 0x7e, 0x89, 0x46, 0xfa, 0x3d, 0xff, 0xff, 0x74, 0x31, 0x50, 0xe8
    db 0x49, 0x7a, 0x59, 0x85, 0xc0, 0x74, 0x28, 0xc7, 0x06, 0x14, 0x91, 0x01, 0x00, 0xb8, 0x01, 0x00
    db 0x50, 0xe8, 0x92, 0x67, 0x59, 0x8b, 0x5e, 0x04, 0x8a, 0x47, 0x34, 0x2a, 0xe4, 0x50, 0xff, 0x76
    db 0xfa, 0xff, 0x36, 0xfe, 0x91, 0xe8, 0x85, 0xc4, 0x83, 0xc4, 0x06, 0xb8, 0x00, 0x00, 0xc3, 0xe9
    db 0x67, 0x01, 0x83, 0x3e, 0x32, 0x0e, 0x00, 0x75, 0x08, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0xda, 0xb8
    db 0x59, 0xe8, 0x33, 0x7e, 0x89, 0x46, 0xfa, 0x3d, 0xff, 0xff, 0x75, 0x03, 0xe9, 0x97, 0x00, 0x50
    db 0xe8, 0xf8, 0x79, 0x59, 0x85, 0xc0, 0x75, 0x03, 0xe9, 0x8b, 0x00, 0xb8, 0x00, 0x00, 0x50, 0xe8
    db 0xb8, 0xb8, 0x59, 0x8b, 0x5e, 0x04, 0x8a, 0x47, 0x34, 0x2a, 0xe4, 0x50, 0xff, 0x76, 0x86, 0xb8
    db 0x01, 0x00, 0x50, 0x50, 0xb8, 0x5a, 0x14, 0x50, 0xff, 0x76, 0xfa, 0xe8, 0xf3, 0xd4, 0x83, 0xc4
    db 0x0c, 0x89, 0x46, 0xfe, 0x83, 0x7e, 0xfe, 0x00, 0x75, 0x2e, 0xc7, 0x06, 0x14, 0x91, 0x01, 0x00
    db 0x8d, 0x46, 0x88, 0x50, 0xb8, 0x6d, 0x14, 0x50, 0xe8, 0x66, 0x64, 0x83, 0xc4, 0x04, 0xb8, 0x01
    db 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xff, 0x36, 0xd4, 0x91, 0x8d, 0x46, 0x88, 0x50, 0xe8, 0xc7
    db 0xbd, 0x83, 0xc4, 0x08, 0xb8, 0x00, 0x00, 0xc3, 0x83, 0x7e, 0xfe, 0x01, 0x75, 0x28, 0xc7, 0x06
    db 0x14, 0x91, 0x01, 0x00, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0xdb, 0x66, 0x59, 0x8b, 0x5e, 0x04, 0x8a
    db 0x47, 0x34, 0x2a, 0xe4, 0x50, 0xff, 0x76, 0xfa, 0xff, 0x36, 0xfe, 0x91, 0xe8, 0xce, 0xc3, 0x83
    db 0xc4, 0x06, 0xb8, 0x00, 0x00, 0xc3, 0xe9, 0xb0, 0x00, 0x83, 0x3e, 0x32, 0x0e, 0x00, 0x75, 0x08
    db 0xb8, 0x01, 0x00, 0x50, 0xe8, 0x23, 0xb8, 0x59, 0xe8, 0x7c, 0x7d, 0x89, 0x46, 0xfa, 0x3d, 0xff
    db 0xff, 0x75, 0x03, 0xe9, 0x76, 0x00, 0x50, 0xe8, 0x41, 0x79, 0x59, 0x85, 0xc0, 0x74, 0x6d, 0xc7
    db 0x06, 0xe0, 0x95, 0x00, 0x00, 0x8b, 0x5e, 0x04, 0x8a, 0x47, 0x34, 0x2a, 0xe4, 0xa3, 0xde, 0x95
    db 0x83, 0x7e, 0xf8, 0x02, 0x75, 0x09, 0xff, 0x76, 0xfa, 0xe8, 0x72, 0xf9, 0x59, 0xeb, 0x0d, 0x83
    db 0x7e, 0xf8, 0x03, 0x75, 0x07, 0xff, 0x76, 0xfa, 0xe8, 0x57, 0xfa, 0x59, 0x83, 0x3e, 0xe0, 0x95
    db 0x01, 0x75, 0x0a, 0xc7, 0x06, 0x14, 0x91, 0x01, 0x00, 0xb8, 0x00, 0x00, 0xc3, 0x83, 0x3e, 0xe0
    db 0x95, 0xff, 0x75, 0x28, 0xc7, 0x06, 0x14, 0x91, 0x01, 0x00, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0x45
    db 0x66, 0x59, 0x8b, 0x5e, 0x04, 0x8a, 0x47, 0x34, 0x2a, 0xe4, 0x50, 0xff, 0x76, 0xfa, 0xff, 0x36
    db 0xfe, 0x91, 0xe8, 0x38, 0xc3, 0x83, 0xc4, 0x06, 0xb8, 0x00, 0x00, 0xc3, 0xeb, 0x1b, 0xb8, 0xff
    db 0xff, 0xc3, 0xb3, 0xa0, 0x65, 0xa0, 0x6a, 0xa1, 0x6a, 0xa1, 0xff, 0xa1

    cmp ax, strict word 5
    jae short @..local.l142
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x5dfd]
@..local.l142:
    jmp near 0x4f8c
    db 0xc3
api_idx_004c:
    mov ax, 0xffb4
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    push word [bp + 0x6]
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_b63c
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
    call ds_dispatch_d0be
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
    call ds_dispatch_c58f
    pop cx
    ret
api_idx_0004_9:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov word [bp - 0x0002], 0
@..api_idx_0004_9.l1:
    mov word [bp - 0x0004], 0
@..api_idx_0004_9.l2:
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
    jne short @..local.l143
    mov ax, word [bp - 0x0002]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x0004]
    ret
@..local.l143:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0xa
    jl short @..api_idx_0004_9.l2
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 2
    jl short @..api_idx_0004_9.l1
    mov ax, 0xffff
    ret
api_idx_0040:
    mov ax, 0xffc0
    call ds_dispatch_f40b
    lea ax, word [bp - 0x0034]
    push ax
    mov ax, 0x13ec
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
@..api_idx_0040.l1:
    lea ax, word [bp - 0x0034]
    push ax
    push word [data_95e4]
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x13ec
    push ax
    call api_idx_0038
    add sp, byte 0x0c
    mov word [bp - 0x0006], ax
    mov ax, word [data_904e]
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x0002], byte 0xff
    je short @..api_idx_0040.l1
    mov ax, 0x10
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0x96
    push ax
    mov ax, 0x3f
    push ax
    push word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    add ax, 0x13ec
    push ax
    call api_idx_0018
    add sp, byte 0x0c
    mov ax, word [bp - 0x0006]
    cmp word [bp - 0x0006], byte 1
    je short @..api_idx_0040.l2
    jmp near @..api_idx_0040.l8
@..api_idx_0040.l2:
    cmp word [data_0e32], byte 0
    jne short @..api_idx_0040.l3
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
@..api_idx_0040.l3:
    call ds_dispatch_ceb1
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0xffff
    je short @..api_idx_0040.l6
    push ax
    call api_idx_0004_9
    pop cx
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0040.l4
    mov word [bp - 0x0002], 0xffff
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
    jmp short @..api_idx_0040.l5
@..api_idx_0040.l4:
    mov ax, word [bp - 0x0004]
    mov cx, 0x100
    cwd
    idiv cx
    mov word [bp - 0x000a], ax
    mov word [bp - 0x000c], dx
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x6a1a]
    push word [bx - 0x6a4a]
    mov ax, 0x248
    imul word [bp - 0x0008]
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
    add ax, 0x5c34
    push ax
    push word [bx - 0x69f2]
    push word [bp - 0x0008]
    call api_idx_004c
    add sp, byte 0x0a
@..api_idx_0040.l5:
    jmp short @..api_idx_0040.l7
@..api_idx_0040.l6:
    mov word [bp - 0x0002], 0xffff
@..api_idx_0040.l7:
    jmp short @..api_idx_0040.l9
@..api_idx_0040.l8:
    cmp word [bp - 0x0006], byte 2
    jne short @..api_idx_0040.l9
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x6a1a]
    push word [bx - 0x6a4a]
    lea ax, word [bp - 0x0040]
    push ax
    push word [bx - 0x69f2]
    mov ax, 0
    push ax
    call api_idx_004c
    add sp, byte 0x0a
    lea ax, word [bp - 0x0040]
    push ax
    call api_idx_0004_6
    pop cx
    call api_idx_0006_3
@..api_idx_0040.l9:
    cmp word [bp - 0x0002], byte 0xff
    je short @..api_idx_0040.l12
    dec word [data_95e4]
    mov ax, word [bp - 0x0002]
    mov word [bp - 0x0004], ax
    jmp short @..api_idx_0040.l11
@..api_idx_0040.l10:
    mov ax, 0x16
    imul word [bp - 0x0004]
    add ax, 0x9414
    push ax
    mov ax, 0x16
    imul word [bp - 0x0004]
    add ax, 0x93fe
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x69f0]
    mov word [bx - 0x69f2], ax
    mov ax, word [bx - 0x6a48]
    mov word [bx - 0x6a4a], ax
    mov ax, word [bx - 0x6c50]
    mov word [bx - 0x6c52], ax
    mov ax, word [bx - 0x6c28]
    mov word [bx - 0x6c2a], ax
    mov ax, word [bx - 0x69c8]
    mov word [bx - 0x69ca], ax
    mov ax, word [bx - 0x6a18]
    mov word [bx - 0x6a1a], ax
    inc word [bp - 0x0004]
@..api_idx_0040.l11:
    mov ax, word [bp - 0x0004]
    cmp ax, word [data_95e4]
    jl short @..api_idx_0040.l10
@..api_idx_0040.l12:
    cmp word [data_95e4], byte 0
    jle short @..api_idx_0040.l13
    jmp near @..api_idx_0040.l1
@..api_idx_0040.l13:
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
api_idx_0006_4:
    mov ax, 0xfffa
    call ds_dispatch_f40b
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0004], ax
    cmp word [bx + si + 0x1e0], byte 0
    jle short @..api_idx_0006_4.l1
    mov ax, 0
    push ax
    push word [bx + si + 0x1e0]
    call loc_0d87
    add sp, byte 4
@..api_idx_0006_4.l1:
    cmp word [data_830c], byte 0x0e
    je short @..api_idx_0006_4.l2
    jmp near @..api_idx_0006_4.l7
@..api_idx_0006_4.l2:
    cmp word [data_8f3e], byte 8
    je short @..api_idx_0006_4.l3
    jmp near @..api_idx_0006_4.l7
@..api_idx_0006_4.l3:
    cmp word [data_8f42], byte 7
    jne short @..api_idx_0006_4.l7
    cmp word [data_8f40], byte 2
    jne short @..api_idx_0006_4.l7
    mov ax, 1
    push ax
    call api_idx_000a_2
    pop cx
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0006_4.l6
@..api_idx_0006_4.l4:
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jae short @..api_idx_0006_4.l5
    mov ax, 0xc8
    push ax
    call ds_dispatch_b7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5da1]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jle short @..api_idx_0006_4.l5
    mov ax, 0x32
    push ax
    mov ax, 0xa
    push ax
    push ax
    mov ax, 8
    push ax
    mov ax, 5
    push ax
    mov ax, 0x149b
    push ax
    push word [bp - 0x0002]
    call api_idx_0056
    add sp, byte 0x0e
@..api_idx_0006_4.l5:
    inc word [bp - 0x0002]
@..api_idx_0006_4.l6:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..api_idx_0006_4.l4
@..api_idx_0006_4.l7:
    mov ax, 8
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0004]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0006], ax
    mov ax, 0
    push ax
    push word [bp - 0x0006]
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 0xb
    push ax
    push word [bp - 0x0004]
    call ds_dispatch_ed3a
    add sp, byte 6
    cmp ax, strict word 1
    jne short @..api_idx_0006_4.l8
    mov ax, 0
    push ax
    push word [bp - 0x0006]
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..api_idx_0006_4.l8:
    mov ax, 2
    push ax
    mov ax, 9
    push ax
    push word [bp - 0x0004]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jle short @..api_idx_0006_4.l9
    mov ax, 1
    push ax
    mov bx, word [data_0e12]
    mov si, word [data_8d12]
    mov al, byte [bx + si + 0x960]
    sub ah, ah
    push ax
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    cmp word [bp - 0x0006], byte 1
    jle short @..api_idx_0006_4.l9
    mov ax, 1
    push ax
    mov bx, word [data_0e12]
    mov si, word [data_8d12]
    mov al, byte [bx + si + 0x960]
    sub ah, ah
    push ax
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..api_idx_0006_4.l9:
    ret
api_idx_0002_3:
    mov ax, 0xfffe
    call ds_dispatch_f40b
@..api_idx_0002_3.l1:
    mov ax, 0x2f
    push ax
    push word [bp + 0x4]
    call ds_dispatch_ee4a
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short @..api_idx_0002_3.l2
    mov bx, word [bp + 0x4]
    mov si, ax
    mov byte [bx + si], 0x20
    jmp short @..api_idx_0002_3.l1
@..api_idx_0002_3.l2:
    ret
math_loc_56af:
    mov ax, 0
    call ds_dispatch_f40b
    cmp word [bp + 0x4], strict word 0x190
    jl short @..math_loc_56af.l1
    cmp word [bp + 0x4], strict word 0x19b
    jge short @..math_loc_56af.l1
    mov ax, 1
    jmp short @..math_loc_56af.l2
@..math_loc_56af.l1:
    mov ax, 0
@..math_loc_56af.l2:
    ret
api_idx_0002_4:
    mov ax, 0xfffe
    call ds_dispatch_f40b
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
    call ds_dispatch_ec41
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x850a
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    mov word [bp - 0x0002], 0
@..api_idx_0002_4.l1:
    mov ax, 0
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp - 0x0002]
    add ax, 0x8504
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x16
    jl short @..api_idx_0002_4.l1
    mov ax, 1
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, 0x8504
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    cmp word [bp + 0x6], byte 0xff
    je short @..api_idx_0002_4.l2
    mov ax, 0
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x8502
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, 0x8504
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..api_idx_0002_4.l2:
    ret
loc_5789:
    mov ax, 0xfe5c
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    push word [data_84a0]
    lea ax, word [bp - 0x003a]
    push ax
    mov ax, 7
    push ax
    call ds_dispatch_b63c
    add sp, byte 8
    mov word [data_84a0], 0xffff
    cmp byte [bp - 0x0005], 0
    jbe short @..local.l145
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x37
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    lea ax, word [bp - 0x003a]
    push ax
    call api_idx_007a
    pop cx
    cmp ax, strict word 0xffff
    jne short @..local.l144
    mov ax, 1
    push ax
    call api_idx_000a_2
    pop cx
    ret
@..local.l144:
    mov ax, 1
    push ax
    call api_idx_000a_2
    pop cx
@..local.l145:
    cmp word [data_905e], byte 0x15
    jne short @..local.l146
    call api_idx_0006_4
@..local.l146:
    mov ax, 1
    push ax
    call api_idx_000a_2
    pop cx
    mov word [bp - 0x0086], 0
    mov word [bp - 0x0088], 0
    mov word [bp - 0x008a], 0
    mov word [bp - 0x008c], 0
    mov word [data_95e4], 0
    cmp word [data_849e], byte 0xff
    jne short @..local.l147
    jmp near @..local.l152
@..local.l147:
    mov ax, 0x26
    imul word [data_849e]
    mov bx, ax
    cmp byte [bx - 0x7b00], 0
    jle short @..local.l148
    jmp near @..local.l152
@..local.l148:
    mov word [bp - 0x0002], 0
@..local.l149:
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [data_849e]
    add ax, 0x8502
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..local.l150
    push word [bp - 0x0002]
    push word [data_849e]
    mov ax, 0x15
    push ax
    call api_idx_0002_4
    add sp, byte 6
    mov ax, word [bp - 0x0002]
    add ax, 0x190
    mov cx, word [data_95e4]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x69f2], ax
    inc word [data_95e4]
@..local.l150:
    push word [bp - 0x0002]
    mov ax, 0x26
    imul word [data_849e]
    add ax, 0x8504
    push ax
    call ds_dispatch_ec74
    add sp, byte 4
    test ax, ax
    je short @..local.l151
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    mov ax, 0x8822
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..local.l151:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xb
    jl short @..local.l149
@..local.l152:
    mov word [bp - 0x0002], 0
@..local.l153:
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    mov al, byte [bx - 0x0035]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jl short @..local.l154
    jmp near @..local.l162
@..local.l154:
    mov al, byte [bx - 0x0036]
    sub ah, ah
    jmp near @..local.l160
@..local.l155:
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x003a]
    mov cx, word [bx - 0x0038]
    sub ax, cx
    push ax
    call ds_dispatch_b7a9
    pop cx
    cwd
    push ax
    push dx
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0038]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    add ax, cx
    adc dx, bx
    add word [bp - 0x0088], ax
    adc word [bp - 0x0086], dx
    jmp near @..local.l162
@..local.l156:
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x003a]
    mov cx, word [bx - 0x0038]
    mov bx, cx
    imul bx
    add word [bp - 0x008c], ax
    adc word [bp - 0x008a], dx
    jmp near @..local.l162
@..local.l157:
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    push word [bx - 0x0038]
    call ds_dispatch_b7a9
    pop cx
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    mov cx, word [bx - 0x003a]
    pop ax
    add ax, cx
    mov cx, word [data_95e4]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x69f2], ax
    push ax
    call math_loc_56af
    pop cx
    test ax, ax
    je short @..local.l158
    mov ax, word [data_95e4]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x69f2]
    add ax, 0xfe70
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0x15
    push ax
    call api_idx_0002_4
    add sp, byte 6
@..local.l158:
    mov ax, word [data_95e4]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x69f2], byte 0
    jle short @..local.l159
    inc word [data_95e4]
@..local.l159:
    jmp short @..local.l162
@..local.l160:
    cmp ax, strict word 1
    jne short @..local.l161
    jmp near @..local.l155
@..local.l161:
    cmp ax, strict word 2
    je short @..local.l157
    cmp ax, strict word 4
    jne short @..local.l162
    jmp near @..local.l156
@..local.l162:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jge short @..local.l163
    jmp near @..local.l153
@..local.l163:
    mov word [bp - 0x0084], 0
    mov word [bp - 0x0002], 0
    jmp short @..local.l166
@..local.l164:
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 0
    jne short @..local.l165
    inc word [bp - 0x0084]
@..local.l165:
    inc word [bp - 0x0002]
@..local.l166:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..local.l164
    cmp word [bp - 0x0084], byte 0
    jne short @..local.l167
    mov word [data_830a], 8
    ret
@..local.l167:
    mov ax, word [bp - 0x0088]
    mov dx, word [bp - 0x0086]
    push ax
    push dx
    mov ax, word [bp - 0x0084]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    call ds_dispatch_f99f
    mov word [bp - 0x0086], dx
    mov word [bp - 0x0088], ax
    push word [data_0e2c]
    push word [data_0e2a]
    call ds_dispatch_b8af
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x12e
    push ax
    call ds_dispatch_f0e4
    add sp, byte 6
    lea ax, word [bp - 0x00b4]
    push ax
    mov ax, 0x138d
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov word [bp - 0x0002], 0
    jmp near @..local.l187
@..local.l168:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x69f2], byte 0
    jg short @..local.l169
    jmp near @..local.l186
@..local.l169:
    mov ax, 0
    push ax
    push word [bx - 0x69f2]
    lea ax, word [bp - 0x0082]
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_b63c
    add sp, byte 8
    mov al, byte [bp - 0x004b]
    sub ah, ah
    test ax, 1
    je short @..local.l170
    lea ax, word [bp - 0x0082]
    push ax
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, 0x93fe
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    jmp short @..local.l171
@..local.l170:
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, 0x93fe
    push ax
    mov al, byte [bp - 0x0049]
    sub ah, ah
    add ax, 0x1770
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
@..local.l171:
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, 0x93fe
    push ax
    lea ax, word [bp - 0x01a4]
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    lea ax, word [bp - 0x01a4]
    push ax
    call api_idx_0002_3
    pop cx
    mov al, byte [bp - 0x004a]
    sub ah, ah
    mov bx, ax
    cmp byte [bx + 0x60e], 1
    jne short @..local.l172
    push word [bp - 0x0066]
    push word [bp - 0x0068]
    call ds_dispatch_d0be
    add sp, byte 4
    sub ah, ah
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6a4a], ax
    jmp short @..local.l173
@..local.l172:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6a4a], 0xffff
@..local.l173:
    mov al, byte [bp - 0x0049]
    sub ah, ah
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6c2a], ax
    mov word [bx - 0x6c52], 0
    mov al, byte [bp - 0x004b]
    sub ah, ah
    test ax, 2
    je short @..local.l174
    mov ax, 1
    jmp short @..local.l175
@..local.l174:
    mov ax, 0
@..local.l175:
    mov word [bx - 0x69ca], ax
    mov al, byte [bp - 0x004b]
    sub ah, ah
    test ax, 1
    je short @..local.l176
    mov ax, 1
    jmp short @..local.l177
@..local.l176:
    mov ax, 0
@..local.l177:
    mov word [bx - 0x6a1a], ax
    lea ax, word [bp - 0x00b4]
    push ax
    lea ax, word [bp - 0x0104]
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    lea ax, word [bp - 0x0154]
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6a4a], byte 0
    jle short @..local.l178
    mov ax, word [bx - 0x6a4a]
    jmp short @..local.l179
@..local.l178:
    mov ax, 1
@..local.l179:
    push ax
    call ds_dispatch_b27d
    add sp, byte 4
    mov ax, 0x25
    push ax
    lea ax, word [bp - 0x0154]
    push ax
    lea ax, word [bp - 0x0104]
    push ax
    call ds_dispatch_b300
    add sp, byte 6
    mov ax, 0x24
    push ax
    mov ax, 0
    cmp byte [bp - 0x01a4], 0x3f
    jne short @..local.l180
    mov ax, 1
@..local.l180:
    lea cx, word [bp - 0x01a4]
    add ax, cx
    push ax
    lea ax, word [bp - 0x0104]
    push ax
    call ds_dispatch_b300
    add sp, byte 6
    mov al, byte [bp - 0x004b]
    sub ah, ah
    test ax, 1
    je short @..local.l185
    lea ax, word [bp - 0x0104]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov word [bp - 0x0004], ax
    mov al, byte [bp - 0x004a]
    sub ah, ah
    jmp short @..local.l184
@..local.l181:
    mov ax, word [bp - 0x0004]
    lea cx, word [bp - 0x0104]
    add ax, cx
    push ax
    mov ax, 0x1398
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    jmp short @..local.l185
@..local.l182:
    mov ax, word [bp - 0x0004]
    lea cx, word [bp - 0x0104]
    add ax, cx
    push ax
    mov ax, 0x1399
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    jmp short @..local.l185
@..local.l183:
    mov ax, word [bp - 0x0004]
    lea cx, word [bp - 0x0104]
    add ax, cx
    push ax
    mov ax, 0x139a
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    jmp short @..local.l185
@..local.l184:
    cmp ax, strict word 0xc
    je short @..local.l181
    cmp ax, strict word 0xd
    je short @..local.l182
    cmp ax, strict word 0x10
    je short @..local.l183
@..local.l185:
    mov ax, 1
    push ax
    push ax
    push word [data_91d4]
    lea ax, word [bp - 0x0104]
    push ax
    call math_loc_0eb2
    add sp, byte 8
@..local.l186:
    inc word [bp - 0x0002]
@..local.l187:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_95e4]
    jge short @..local.l188
    jmp near @..local.l168
@..local.l188:
    cmp word [bp - 0x0086], byte 0
    jl short @..local.l189
    jne short @..local.l190
    cmp word [bp - 0x0088], byte 0
    ja short @..local.l190
@..local.l189:
    jmp short @..local.l191
@..local.l190:
    lea ax, word [bp - 0x0104]
    push ax
    mov ax, 0x138a
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x0154]
    push ax
    push word [bp - 0x0086]
    push word [bp - 0x0088]
    call ds_dispatch_b1db
    add sp, byte 6
    mov ax, 0x24
    push ax
    lea ax, word [bp - 0x0154]
    push ax
    lea ax, word [bp - 0x0104]
    push ax
    call ds_dispatch_b300
    add sp, byte 6
    mov ax, 0x55
    push ax
    mov ax, 0
    push ax
    push word [data_91d4]
    lea ax, word [bp - 0x0104]
    push ax
    call math_loc_0eb2
    add sp, byte 8
@..local.l191:
    cmp word [bp - 0x008a], byte 0
    jl short @..local.l192
    jne short @..local.l193
    cmp word [bp - 0x008c], byte 0
    ja short @..local.l193
@..local.l192:
    jmp short @..local.l194
@..local.l193:
    lea ax, word [bp - 0x0104]
    push ax
    mov ax, 0x138b
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x0154]
    push ax
    push word [bp - 0x008a]
    push word [bp - 0x008c]
    call ds_dispatch_b1db
    add sp, byte 6
    mov ax, 0x24
    push ax
    lea ax, word [bp - 0x0154]
    push ax
    lea ax, word [bp - 0x0104]
    push ax
    call ds_dispatch_b300
    add sp, byte 6
    mov ax, 0x41
    push ax
    mov ax, 1
    push ax
    push word [data_91d4]
    lea ax, word [bp - 0x0104]
    push ax
    call math_loc_0eb2
    add sp, byte 8
@..local.l194:
    mov ax, 0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x12e
    push ax
    call ds_dispatch_f0f1
    add sp, byte 6
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    call ds_dispatch_b8af
    add sp, byte 4
    mov word [bp - 0x0002], 0
    jmp short @..local.l197
@..local.l195:
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 0
    jne short @..local.l196
    mov ax, word [bp - 0x008c]
    mov dx, word [bp - 0x008a]
    add word [bx + 0x5c00], ax
    adc word [bx + 0x5c02], dx
    mov ax, word [bp - 0x0088]
    mov dx, word [bp - 0x0086]
    add word [bx + 0x5c08], ax
    adc word [bx + 0x5c0a], dx
@..local.l196:
    inc word [bp - 0x0002]
@..local.l197:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..local.l195
    cmp word [data_95e4], byte 0
    jle short @..local.l198
    call api_idx_0040
@..local.l198:
    mov word [data_9114], 0
    call loc_07de
    mov ax, 2
    push ax
    call api_idx_0004
    pop cx
    ret
api_idx_00a8:
    mov ax, 0xff58
    call ds_dispatch_f40b
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_00a8.l3
@..api_idx_00a8.l1:
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 0
    jne short @..api_idx_00a8.l2
    inc word [bp - 0x0004]
@..api_idx_00a8.l2:
    inc word [bp - 0x0002]
@..api_idx_00a8.l3:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..api_idx_00a8.l1
    mov ax, word [data_84a2]
    mov dx, word [data_84a4]
    mov cx, 0x14
    mov bx, 0
    call ds_dispatch_f99f
    push ax
    push dx
    mov ax, word [data_69c8]
    sub ax, word [bp - 0x0004]
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
    mov word [bp - 0x0006], dx
    mov word [bp - 0x0008], ax
    mov ax, word [bp - 0x0008]
    mov dx, word [bp - 0x0006]
    add word [data_84a2], ax
    adc word [data_84a4], dx
    mov ax, word [data_84a2]
    mov dx, word [data_84a4]
    push ax
    push dx
    mov ax, word [bp - 0x0004]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    call ds_dispatch_f99f
    mov word [bp - 0x0006], dx
    mov word [bp - 0x0008], ax
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x1389
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x00a8]
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0008]
    call ds_dispatch_b1db
    add sp, byte 6
    mov ax, 0x24
    push ax
    lea ax, word [bp - 0x00a8]
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call ds_dispatch_b300
    add sp, byte 6
    mov ax, 0x41
    push ax
    mov ax, 0
    push ax
    push word [data_91d4]
    lea ax, word [bp - 0x0058]
    push ax
    call math_loc_0eb2
    add sp, byte 8
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_00a8.l6
@..api_idx_00a8.l4:
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 0
    jne short @..api_idx_00a8.l5
    mov ax, word [bp - 0x0008]
    mov dx, word [bp - 0x0006]
    add word [bx + 0x5c00], ax
    adc word [bx + 0x5c02], dx
@..api_idx_00a8.l5:
    inc word [bp - 0x0002]
@..api_idx_00a8.l6:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..api_idx_00a8.l4
    ret
api_idx_0006_5:
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
    jmp short @..local.l202
@..api_idx_0006_5.l1:
    mov bx, word [bp - 0x0006]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jne short @..local.l201
    mov al, byte [bx + 0x1]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jne short @..local.l201
    cmp word [bp + 0x6], byte 6
    jne short @..local.l200
    mov ax, word [bx + 0x2]
    cmp ax, word [bp + 0x8]
    jne short @..local.l199
    mov ax, word [bp - 0x0002]
    ret
@..local.l199:
    jmp short @..local.l201
@..local.l200:
    mov ax, word [bx + 0x2]
    cmp ax, word [bp - 0x0004]
    jne short @..local.l201
    mov ax, word [bp - 0x0002]
    ret
@..local.l201:
    add word [bp - 0x0006], byte 6
    inc word [bp - 0x0002]
@..local.l202:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_590e]
    jl short @..api_idx_0006_5.l1
    mov ax, 0xffff
    ret
api_idx_0004_10:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0006_5
    add sp, byte 0x0a
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0004_10.l2
    mov ax, word [data_590e]
    mov word [bp - 0x0002], ax
    inc word [data_590e]
    mov ax, word [data_590e]
    cmp ax, 0x200
    jl short @..api_idx_0004_10.l2
@..api_idx_0004_10.l1:
    mov ax, 0
    push ax
    call ds_dispatch_b7e0
    pop cx
    jmp short @..api_idx_0004_10.l1
@..api_idx_0004_10.l2:
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
    jmp short @..local.l203
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
    jmp short @..local.l204
    mov ax, word [bp + 0xe]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x4], ax
    jmp short @..local.l204
    mov ax, word [bp + 0xe]
    xchg al, ah
    sub al, al
    add ax, word [bp + 0x10]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x4], ax
    jmp short @..local.l204
    mov ax, word [bp + 0x8]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x2], ax
    mov ax, word [bp + 0xe]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x4], ax
    jmp short @..local.l204
    db 0xc6, 0xaf, 0xe9, 0xaf, 0xe9, 0xaf, 0xe9, 0xaf, 0xe9, 0xaf, 0xf4, 0xaf, 0x06, 0xb0
@..local.l203:
    cmp ax, strict word 7
    jae short @..local.l204
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x4fe6]
@..local.l204:
    ret
api_idx_006a:
    mov ax, 0xff96
    call ds_dispatch_f40b
    mov word [data_911c], 0x8d
    mov word [data_904e], 0xffff
    mov word [bp - 0x0006], 0x37
    mov word [bp - 0x0008], 0x8f
    mov word [bp - 0x000a], 0x108
    mov word [bp - 0x000c], 0xc5
    mov ax, 0x90e3
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    call ds_dispatch_c283
    add sp, byte 0x0a
    mov word [bp - 0x0018], ax
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    call ds_dispatch_bc9a
    add sp, byte 8
    lea ax, word [bp - 0x006a]
    push ax
    push word [bp + 0x6]
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 0x1c
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 9
    push ax
    lea ax, word [bp - 0x006a]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, ax
    mov ax, 0xc
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x0006]
    add ax, strict word 9
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x006a]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x15
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2d
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
    mov ax, 0x90e9
    push ax
    lea ax, word [bp - 0x006a]
    push ax
    call ds_dispatch_f364
    add sp, byte 4
    lea ax, word [bp - 0x0069]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d7c]
    sub ah, ah
    push ax
    call ds_dispatch_b27d
    add sp, byte 4
    mov ax, 0x90eb
    push ax
    lea ax, word [bp - 0x006a]
    push ax
    call ds_dispatch_f32d
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x1b
    push ax
    lea ax, word [bp - 0x006a]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2d
    sub ax, cx
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x006a]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    lea ax, word [bp - 0x006a]
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x006a]
    push ax
    push word [bp + 0x8]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call ds_dispatch_c0c1
    add sp, byte 0x0c
    mov word [bp - 0x0002], 0
@..api_idx_006a.l1:
    mov ax, word [bp - 0x0008]
    add ax, strict word 0xe
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x67
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 8
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x59
    push ax
    call ds_dispatch_bd98
    add sp, byte 8
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x1d
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x62
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x17
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5e
    push ax
    call ds_dispatch_bd98
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2e
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x67
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x59
    push ax
    call loc_242c
    add sp, byte 0x0a
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jge short @..local.l205
    jmp near @..api_idx_006a.l1
@..local.l205:
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2e
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    mov ax, 0
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov word [bp - 0x0002], 0
    jmp short @..local.l207
@..local.l206:
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x31
    cbw
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2e
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x67
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x59
    push ax
    mov ax, word [bp - 0x0002]
    inc ax
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
@..local.l207:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xa]
    jl short @..local.l206
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov word [bp - 0x0016], 1
    mov word [bp - 0x001c], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d7c]
    sub ah, ah
    push ax
    mov ax, 3
    imul word [bp + 0xe]
    mov cx, ax
    pop ax
    sub ax, cx
    mov cx, word [bx + 0x5c18]
    add ax, cx
    mov word [bp - 0x001a], ax
    cmp byte [bx + 0x5e2d], 3
    jne short @..local.l208
    mov al, byte [bx + 0x5d68]
    sub ah, ah
    add word [bp - 0x001a], ax
    mov word [bp - 0x001c], 2
    jmp short @..local.l210
@..local.l208:
    mov al, byte [bx + 0x5e2d]
    cmp al, 0xd
    je short @..local.l209
    cmp al, 4
    je short @..local.l209
    cmp al, 6
    jne short @..local.l210
@..local.l209:
    mov al, byte [bx + 0x5d68]
    sub ah, ah
    mov cx, 2
    cwd
    idiv cx
    add word [bp - 0x001a], ax
    mov word [bp - 0x001c], 1
@..local.l210:
    mov ax, 0x5f
    push ax
    mov ax, 2
    push ax
    push word [bp - 0x001a]
    call ds_dispatch_b7c2
    add sp, byte 6
    mov word [bp - 0x001a], ax
    mov ax, word [bp + 0xa]
    mov word [bp - 0x001e], ax
    mov ax, 0
    push ax
    mov ax, 0xc
    push ax
    lea ax, word [bp - 0x002a]
    push ax
    call ds_dispatch_f306
    add sp, byte 6
@..local.l211:
    mov word [bp - 0x0002], 0
    jmp near @..local.l222
@..local.l212:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x002a], byte 0
    je short @..local.l213
    jmp near @..local.l221
@..local.l213:
    push word [bp - 0x001a]
    call ds_dispatch_b7a9
    pop cx
    mov word [bp - 0x0014], ax
    mov ax, 1
    push ax
    call ds_dispatch_f096
    pop cx
    mov ax, 0xc3
    push ax
    mov ax, 0xb4
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 9
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5b
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    push word [bp - 0x0014]
    call ds_dispatch_b2e7
    add sp, byte 6
    mov ax, 0
    push ax
    call ds_dispatch_f096
    pop cx
    mov ax, word [bp - 0x001a]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov cx, word [bx - 0x69a2]
    sub ax, cx
    mov cx, 3
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bx - 0x69a2]
    sub ax, cx
    cmp ax, word [bp - 0x0014]
    jge short @..local.l214
    mov ax, 1
    jmp short @..local.l215
@..local.l214:
    mov ax, 0
@..local.l215:
    add bx, bp
    mov word [bx - 0x0036], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x69a2]
    cmp ax, word [bp - 0x0014]
    jge short @..local.l216
    mov ax, 1
    jmp short @..local.l217
@..local.l216:
    mov ax, 0
@..local.l217:
    add bx, bp
    mov word [bx - 0x0042], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0036], byte 0
    jne short @..local.l218
    mov ax, 0x1a
    jmp short @..local.l220
@..local.l218:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0042], byte 0
    je short @..local.l219
    mov ax, 0x37
    jmp short @..local.l220
@..local.l219:
    mov ax, 0x56
@..local.l220:
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x1d
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x62
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x17
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5e
    push ax
    call ds_dispatch_e901
    add sp, byte 0x0a
@..local.l221:
    inc word [bp - 0x0002]
@..local.l222:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xa]
    jge short @..local.l223
    jmp near @..local.l212
@..local.l223:
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0xd1
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x59
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    call math_loc_086b
    test ax, ax
    jne short @..local.l224
    mov ax, 0x19
    push ax
    call ds_dispatch_e489
    pop cx
@..local.l224:
    mov ax, 0x59fe
    push ax
    call ds_dispatch_b90d
    pop cx
    dec ax
    mov word [bp - 0x0012], ax
    cmp word [data_5b3e], byte 1
    je short @..local.l225
    jmp near @..local.l238
@..local.l225:
    jmp near @..local.l236
@..local.l226:
    cmp word [bp + 0x8], byte 0
    je short @..local.l227
    mov ax, 1
    push ax
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0006]
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
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call ds_dispatch_be5f
    add sp, byte 0x0a
    mov word [data_9050], 0xffff
    mov word [bp - 0x0016], 0
@..local.l227:
    jmp near @..local.l238
@..local.l228:
    mov ax, word [bp - 0x0012]
    dec ax
    mov word [bp - 0x0002], ax
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x002a], byte 0
    je short @..local.l229
    jmp near @..local.l235
@..local.l229:
    mov word [bx - 0x002a], 1
    push word [bx - 0x002a]
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2e
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x67
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x59
    push ax
    call loc_242c
    add sp, byte 0x0a
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2e
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x67
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x59
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 4
    push ax
    call ds_dispatch_b7e0
    pop cx
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0036], byte 0
    jne short @..local.l231
    mov ax, 3
    push ax
    call ds_dispatch_b7a9
    pop cx
    test ax, ax
    jne short @..local.l230
    mov word [bp + 0xc], 1
@..local.l230:
    mov ax, word [bp + 0xc]
    inc ax
    mov word [data_9050], ax
    mov word [bp - 0x0016], 0
    jmp near @..local.l235
@..local.l231:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0042], byte 0
    je short @..local.l232
    jmp near @..local.l233
@..local.l232:
    mov ax, 0xc8
    push ax
    call ds_dispatch_e489
    pop cx
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x002a], 0
    push word [bx - 0x002a]
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2e
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x67
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x59
    push ax
    call loc_242c
    add sp, byte 0x0a
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2e
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x67
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x59
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 4
    push ax
    call ds_dispatch_b7e0
    pop cx
    jmp short @..local.l235
@..local.l233:
    dec word [bp - 0x001e]
    jne short @..local.l235
    cmp word [bp - 0x001c], byte 0
    je short @..local.l234
    push word [bp - 0x001c]
    mov ax, 0x10
    push ax
    push word [bp + 0x4]
    call math_loc_0f54
    add sp, byte 6
@..local.l234:
    mov word [data_9050], 0
    mov word [bp - 0x0016], 0
@..local.l235:
    jmp short @..local.l238
@..local.l236:
    cmp ax, strict word 0
    jne short @..local.l237
    jmp near @..local.l226
@..local.l237:
    jmp near @..local.l228
@..local.l238:
    cmp word [bp - 0x0016], byte 0
    je short @..local.l239
    jmp near @..local.l211
@..local.l239:
    push word [data_905a]
    call api_idx_0004
    pop cx
    mov word [data_911c], 0x8f
    mov ax, 1
    push ax
    push word [bp - 0x0018]
    call ds_dispatch_c459
    add sp, byte 4
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, word [data_9050]
    ret
api_idx_0074:
    mov ax, 0xff8c
    call ds_dispatch_f40b
    mov word [data_911c], 0x8d
    mov word [data_904e], 0xffff
    mov word [bp - 0x0006], 0x37
    mov word [bp - 0x0008], 0x8f
    mov word [bp - 0x000a], 0x108
    mov word [bp - 0x000c], 0xc5
    mov ax, 0x90ee
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    call ds_dispatch_c283
    add sp, byte 0x0a
    mov word [bp - 0x0024], ax
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    call ds_dispatch_bc9a
    add sp, byte 8
    lea ax, word [bp - 0x004c]
    push ax
    push word [bp + 0x6]
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 0x1c
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 9
    push ax
    lea ax, word [bp - 0x004c]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, ax
    mov ax, 0xc
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x0006]
    add ax, strict word 9
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x004c]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    lea ax, word [bp - 0x0074]
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x0074]
    push ax
    push word [bp + 0x8]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x16
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call ds_dispatch_c0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x004c]
    push ax
    push word [bp + 0xa]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call ds_dispatch_c0c1
    add sp, byte 0x0c
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    inc ax
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 1
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 6
    push ax
    lea ax, word [bp - 0x004c]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp - 0x0006]
    add ax, 0x93
    sub ax, cx
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x004c]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 4
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 0x9b
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x1e
    push ax
    lea ax, word [bp - 0x004c]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp - 0x0006]
    add ax, 0x93
    sub ax, cx
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x004c]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov word [bp - 0x0002], 0
@..api_idx_0074.l1:
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    add ax, word [bp - 0x0006]
    add ax, strict word 0x60
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0xf
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5c
    push ax
    call ds_dispatch_bd98
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    add ax, word [bp - 0x0006]
    add ax, strict word 0x60
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0xf
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5c
    push ax
    call ds_dispatch_e901
    add sp, byte 0x0a
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2d
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    add ax, word [bp - 0x0006]
    add ax, strict word 0x60
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5c
    push ax
    call ds_dispatch_bd98
    add sp, byte 8
    mov ax, word [bp + 0xe]
    mov cx, 2
    cwd
    idiv cx
    add ax, strict word 4
    cmp ax, word [bp - 0x0002]
    jle short @..local.l240
    mov ax, 0x1a
    jmp short @..local.l241
@..local.l240:
    mov ax, 0
@..local.l241:
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2d
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    add ax, word [bp - 0x0006]
    add ax, strict word 0x60
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5c
    push ax
    call ds_dispatch_e901
    add sp, byte 0x0a
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xe
    jge short @..local.l242
    jmp near @..api_idx_0074.l1
@..local.l242:
    mov ax, 0xd
    push ax
    mov ax, 0x48
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x1e
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x16
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    mov ax, 0
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2e
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    mov ax, 1
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
    mov ax, 2
    push ax
    call ds_dispatch_baa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0x37
    cmp word [bp + 0xc], byte 0
    je short @..local.l243
    mov ax, 0x1a
@..local.l243:
    mov word [bp - 0x001e], ax
    mov word [bp - 0x0018], 1
    mov word [bp - 0x001c], 0
@..local.l244:
    mov word [bp - 0x0022], 0
    mov word [bp - 0x0002], 0
    jmp near @..local.l247
@..local.l245:
    push word [bp - 0x0002]
    call ds_dispatch_ca85
    pop cx
    test ax, ax
    je short @..local.l246
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx + 0x5c10]
    mov bx, 0x64
    imul bx
    push ax
    push dx
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx + 0x5c12]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    call ds_dispatch_f99f
    push ax
    push dx
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d64]
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
    mov cx, 0x64
    mov bx, 0
    call ds_dispatch_f99f
    mov word [bp - 0x0020], ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    mov cx, 3
    cwd
    idiv cx
    add ax, word [bp - 0x0022]
    mov cx, ax
    mov ax, word [bp - 0x0020]
    add cx, ax
    mov word [bp - 0x0022], cx
@..local.l246:
    inc word [bp - 0x0002]
@..local.l247:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jge short @..local.l248
    jmp near @..local.l245
@..local.l248:
    cmp word [bp - 0x0022], byte 0
    jg short @..local.l249
    mov ax, word [bp + 0xc]
    inc ax
    mov word [data_9050], ax
    mov word [bp - 0x0018], 0
@..local.l249:
    mov ax, word [bp - 0x001c]
    mov word [bp - 0x0002], ax
    push ax
    call ds_dispatch_ca85
    pop cx
    test ax, ax
    jne short @..local.l250
    jmp near @..local.l257
@..local.l250:
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    dec word [bx + 0x5c10]
    jg short @..local.l251
    mov ax, 6
    push ax
    call ds_dispatch_b7a9
    pop cx
    add ax, strict word 6
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5d5c], al
    mov word [bx + 0x5c10], 0
@..local.l251:
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call ds_dispatch_cb3a
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xfc
    imul cx
    add ax, strict word 5
    mov word [bp - 0x0012], ax
    mov ax, word [bp - 0x0002]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 0x2d
    imul cx
    add ax, strict word 0x12
    mov word [bp - 0x0014], ax
    mov ax, word [bp - 0x0002]
    jmp near @..local.l255
@..local.l252:
    mov ax, 0x8d
    push ax
    mov ax, word [bp - 0x0012]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0014]
    push word [bp - 0x0012]
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, word [bp - 0x0014]
    add ax, strict word 0x2b
    push ax
    mov ax, 0x35
    push ax
    push word [bp - 0x0014]
    push word [bp - 0x0012]
    call ds_dispatch_e8da
    add sp, byte 8
    jmp short @..local.l257
@..local.l253:
    mov ax, 0x8d
    push ax
    mov ax, word [bp - 0x0012]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0014]
    push word [bp - 0x0012]
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, word [bp - 0x0014]
    add ax, strict word 0x2b
    push ax
    mov ax, word [bp - 0x0012]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0014]
    mov ax, 0x10a
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    jmp short @..local.l257
@..local.l254:
    mov ax, word [bp - 0x0014]
    add ax, strict word 0x2b
    push ax
    mov ax, word [bp - 0x0012]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0014]
    push word [bp - 0x0012]
    call ds_dispatch_e8da
    add sp, byte 8
    jmp short @..local.l257
@..local.l255:
    cmp ax, strict word 4
    jne short @..local.l256
    jmp near @..local.l252
@..local.l256:
    cmp ax, strict word 5
    je short @..local.l253
    jmp short @..local.l254
@..local.l257:
    mov ax, word [bp - 0x001c]
    inc ax
    cwd
    idiv word [data_69c8]
    mov word [bp - 0x001c], dx
    push word [bp - 0x0022]
    call ds_dispatch_b7a9
    pop cx
    push ax
    push word [bp - 0x0022]
    call ds_dispatch_b7a9
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp - 0x0022]
    add ax, word [bp - 0x0022]
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x001a], ax
    mov word [bp - 0x0002], 0
@..local.l258:
    mov ax, word [bp - 0x001a]
    add ax, strict word 0xffe2
    mov cx, 6
    cwd
    idiv cx
    cmp ax, word [bp - 0x0002]
    jle short @..local.l259
    mov ax, word [bp - 0x001e]
    jmp short @..local.l260
@..local.l259:
    mov ax, 0
@..local.l260:
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    add ax, word [bp - 0x0006]
    add ax, strict word 0x60
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0xf
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    add ax, word [bp - 0x0006]
    add ax, strict word 0x5c
    push ax
    call ds_dispatch_e901
    add sp, byte 0x0a
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xe
    jl short @..local.l258
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x0006]
    add ax, 0xcc
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0xf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x5c
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    call math_loc_086b
    test ax, ax
    jne short @..local.l261
    mov ax, 0x19
    push ax
    call ds_dispatch_e489
    pop cx
@..local.l261:
    mov ax, 0x59fe
    push ax
    call ds_dispatch_b90d
    pop cx
    dec ax
    mov word [bp - 0x0016], ax
    cmp word [data_5b3e], byte 1
    je short @..local.l262
    jmp near @..local.l271
@..local.l262:
    jmp near @..local.l269
@..local.l263:
    cmp word [bp + 0x8], byte 0
    jne short @..local.l264
    jmp near @..local.l266
@..local.l264:
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x1e
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x16
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call loc_242c
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 0x1a
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x18
    push ax
    lea ax, word [bp - 0x0074]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, ax
    mov ax, 0xc
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 0x0006]
    add ax, strict word 9
    push ax
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0074]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x1e
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x16
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 4
    push ax
    call ds_dispatch_b7e0
    pop cx
    mov ax, word [bp + 0xe]
    mov cx, 2
    cwd
    idiv cx
    add ax, strict word 4
    push ax
    mov ax, word [bp - 0x001a]
    add ax, strict word 0xffe2
    mov cx, 6
    cwd
    idiv cx
    mov cx, ax
    pop ax
    cmp ax, cx
    jg short @..local.l265
    mov word [data_9050], 0
    mov word [bp - 0x0018], 0
    jmp short @..local.l266
@..local.l265:
    mov ax, word [bp + 0xc]
    inc ax
    mov word [data_9050], ax
    mov word [bp - 0x0018], 0
@..local.l266:
    jmp short @..local.l271
@..local.l267:
    cmp word [bp + 0xa], byte 0
    je short @..local.l268
    mov ax, 1
    push ax
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp - 0x0006]
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
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 8
    push ax
    call ds_dispatch_be5f
    add sp, byte 0x0a
    mov word [data_9050], 0xffff
    mov word [bp - 0x0018], 0
@..local.l268:
    jmp short @..local.l271
@..local.l269:
    cmp ax, strict word 0
    jne short @..local.l270
    jmp near @..local.l263
@..local.l270:
    cmp ax, strict word 1
    je short @..local.l267
@..local.l271:
    cmp word [bp - 0x0018], byte 0
    je short @..local.l272
    jmp near @..local.l244
@..local.l272:
    push word [data_905a]
    call api_idx_0004
    pop cx
    mov word [data_911c], 0x8f
    mov ax, 1
    push ax
    push word [bp - 0x0024]
    call ds_dispatch_c459
    add sp, byte 4
    mov ax, word [bp - 0x000c]
    inc ax
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    dec ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, word [data_9050]
    ret
api_idx_0002_5:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov ax, word [bp + 0x6]
    mov word [bp - 0x0002], ax
    jmp short @..api_idx_0002_5.l2
@..api_idx_0002_5.l1:
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
@..api_idx_0002_5.l2:
    mov ax, word [bp + 0x6]
    inc ax
    inc ax
    cmp ax, word [bp - 0x0002]
    jg short @..api_idx_0002_5.l1
    ret
api_idx_0004_11:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov cx, word [bp + 0x4]
    shl cx, 1
    mov ax, word [data_0e12]
    add ax, cx
    add ax, 0x3c0
    mov word [bp - 0x0004], ax
    mov ax, word [data_82ee]
    shl ax, 1
    mov word [bp - 0x0002], ax
    mov cx, 8
    cwd
    idiv cx
    mov si, ax
    mov bx, word [bp - 0x0004]
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
    mov ax, word [bp - 0x0002]
    inc ax
    mov cx, 8
    cwd
    idiv cx
    mov si, ax
    mov al, byte [bx + si]
    cbw
    push ax
    mov ax, word [bp - 0x0002]
    inc ax
    cwd
    idiv cx
    mov cx, dx
    mov dx, 1
    shl dx, cl
    mov cx, dx
    pop ax
    or ax, cx
    mov byte [bx + si], al
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
    call api_idx_0004_10
    add sp, byte 0x12
    ret
loc_6f41:
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
    call api_idx_0002_5
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
    call api_idx_0004_10
    add sp, byte 0x12
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    cmp word [bx + si], byte 0
    jle short @..local.l273
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
@..local.l273:
    cmp word [bp + 0x6], byte 0
    je short @..local.l274
    mov ax, 1
    push ax
    call ds_dispatch_b7e0
    pop cx
@..local.l274:
    ret
api_idx_0034:
    mov ax, 0xffcc
    call ds_dispatch_f40b
    call ds_dispatch_ec17
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x1e0]
    mov word [bp - 0x0006], ax
    mov si, word [bp + 0x6]
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
    mov cx, 3
    cwd
    idiv cx
    inc ax
    mov word [bp - 0x000a], ax
    cmp ax, strict word 6
    jle short @..api_idx_0034.l1
    mov word [bp - 0x000a], 6
@..api_idx_0034.l1:
    mov word [bp - 0x000c], 0
    mov ax, word [bp + 0x6]
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
    jne short @..api_idx_0034.l2
    mov ax, word [data_8f46]
    add ax, word [data_8f44]
    cwd
    idiv word [bp - 0x000a]
    mov ax, dx
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x69a2], 0x64
    mov word [bp - 0x000c], 1
@..api_idx_0034.l2:
    cmp word [bp + 0x8], byte 0
    jne short @..api_idx_0034.l3
    push word [bp - 0x0004]
    push word [bp - 0x000c]
    push word [bp - 0x000a]
    mov ax, 1
    push ax
    mov ax, 0x83c
    push ax
    push word [bp + 0x4]
    call api_idx_006a
    add sp, byte 0x0c
    mov word [bp - 0x0008], ax
    jmp short @..api_idx_0034.l6
@..api_idx_0034.l3:
    mov ax, word [bp - 0x0004]
    cmp word [bp - 0x000c], byte 0
    je short @..api_idx_0034.l4
    mov ax, 0x14
@..api_idx_0034.l4:
    push ax
    push word [bp - 0x000c]
    mov ax, 1
    push ax
    push ax
    mov ax, 0x837
    cmp word [data_5b6e], byte 1
    jne short @..api_idx_0034.l5
    mov ax, 0x844
@..api_idx_0034.l5:
    push ax
    push word [bp + 0x4]
    call api_idx_0074
    add sp, byte 0x0c
    mov word [bp - 0x0008], ax
@..api_idx_0034.l6:
    cmp word [bp - 0x0008], byte 0xff
    je short @..api_idx_0034.l10
    cmp word [bp - 0x0008], byte 0
    jne short @..api_idx_0034.l7
    mov ax, 1
    push ax
    push word [bp + 0x6]
    call loc_6f41
    add sp, byte 4
    jmp short @..api_idx_0034.l8
@..api_idx_0034.l7:
    cmp word [bp - 0x0008], byte 2
    jne short @..api_idx_0034.l8
    push word [bp + 0x6]
    call api_idx_0004_11
    pop cx
@..api_idx_0034.l8:
    lea ax, word [bp - 0x0034]
    push ax
    mov ax, word [bp - 0x0008]
    add ax, 0x841
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    cmp word [bp - 0x0008], byte 0
    jne short @..api_idx_0034.l9
    mov ax, 0x55
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    lea ax, word [bp - 0x0034]
    push ax
    call math_loc_0eb2
    add sp, byte 8
    jmp short @..api_idx_0034.l10
@..api_idx_0034.l9:
    mov ax, 0x16
    push ax
    mov ax, 1
    push ax
    push ax
    lea ax, word [bp - 0x0034]
    push ax
    call math_loc_0eb2
    add sp, byte 8
@..api_idx_0034.l10:
    mov ax, word [bp - 0x0008]
    ret
api_idx_0072:
    mov ax, 0xff8e
    call ds_dispatch_f40b
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x1e0]
    mov word [bp - 0x0022], ax
    mov si, word [bp + 0x4]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    mov word [bp - 0x001e], ax
    mov ax, 5
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x001e]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0020], ax
    mov word [bp - 0x0002], 0
@..api_idx_0072.l1:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x69a2], 2
    mov word [bp - 0x0004], 0
    jmp short @..api_idx_0072.l3
@..api_idx_0072.l2:
    mov ax, 5
    push ax
    call ds_dispatch_b7a9
    pop cx
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    add word [bx - 0x69a2], ax
    inc word [bp - 0x0004]
@..api_idx_0072.l3:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0020]
    jl short @..api_idx_0072.l2
    mov ax, 0x5f
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x69a2]
    call ds_dispatch_b7c2
    add sp, byte 6
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x69a2], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_0072.l1
    mov word [bp - 0x0002], 0
@..api_idx_0072.l4:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x001a], 1
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 2
    jle short @..api_idx_0072.l4
    mov word [bp - 0x0014], 0xffff
@..api_idx_0072.l5:
    mov word [data_9126], 1
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    mov word [data_9126], 0
    lea ax, word [bp - 0x001a]
    push ax
    mov ax, 0
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 1
    push ax
    mov ax, 3
    push ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0x34
    push ax
    mov ax, 8
    push ax
    mov ax, 0x9c
    push ax
    mov ax, 0x52
    push ax
    mov ax, 0
    push ax
    mov ax, 0x834
    push ax
    call math_loc_8441
    add sp, byte 0x1a
    mov word [bp - 0x001c], ax
    lea ax, word [bp - 0x0072]
    push ax
    mov ax, word [bp - 0x001c]
    add ax, 0x834
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0x1a
    push ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0x34
    push ax
    mov ax, 8
    push ax
    mov ax, 0x9c
    push ax
    mov ax, 0x52
    push ax
    push word [data_9052]
    lea ax, word [bp - 0x0072]
    push ax
    call api_idx_0008_3
    add sp, byte 0x12
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    mov ax, word [bp - 0x001c]
    jmp short @..api_idx_0072.l11
@..api_idx_0072.l6:
    cmp word [data_0e32], byte 0
    jne short @..api_idx_0072.l7
    mov ax, 1
    push ax
    call api_idx_000a_2
    pop cx
@..api_idx_0072.l7:
    call ds_dispatch_ceb1
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    je short @..api_idx_0072.l8
    push ax
    call ds_dispatch_ca85
    pop cx
    test ax, ax
    je short @..api_idx_0072.l8
    mov ax, 0
    push ax
    push word [bp + 0x4]
    push word [bp - 0x0006]
    call api_idx_0034
    add sp, byte 6
    test ax, ax
    jne short @..api_idx_0072.l8
    mov word [bp - 0x001c], 2
@..api_idx_0072.l8:
    jmp short @..api_idx_0072.l12
@..api_idx_0072.l9:
    mov ax, 1
    push ax
    push word [bp + 0x4]
    mov ax, 0
    push ax
    call api_idx_0034
    add sp, byte 6
    test ax, ax
    jne short @..api_idx_0072.l10
    mov word [bp - 0x001c], 2
@..api_idx_0072.l10:
    jmp short @..api_idx_0072.l12
@..api_idx_0072.l11:
    cmp ax, strict word 0
    je short @..api_idx_0072.l6
    cmp ax, strict word 1
    je short @..api_idx_0072.l9
@..api_idx_0072.l12:
    cmp word [bp - 0x001c], byte 2
    je short @..api_idx_0072.l13
    jmp near @..api_idx_0072.l5
@..api_idx_0072.l13:
    ret
api_idx_0004_12:
    mov ax, 0xfffc
    call ds_dispatch_f40b
    mov ax, word [bp + 0x6]
    cmp word [bp + 0x8], byte 0
    jne short @..api_idx_0004_12.l1
    mov ax, word [bp + 0x4]
@..api_idx_0004_12.l1:
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x4]
    cmp word [bp + 0x8], byte 0
    jne short @..api_idx_0004_12.l2
    mov ax, word [bp + 0x6]
@..api_idx_0004_12.l2:
    mov word [bp - 0x0004], ax
    cmp word [bp - 0x0002], byte 0
    je short @..api_idx_0004_12.l3
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..api_idx_0004_12.l3:
    cmp word [bp - 0x0004], byte 0
    je short @..api_idx_0004_12.l4
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..api_idx_0004_12.l4:
    ret
api_idx_00e6:
    mov ax, 0xff1a
    call ds_dispatch_f40b
    mov bx, word [data_0e12]
    mov si, word [data_8d12]
    cmp byte [bx + si + 0xa50], 0
    jbe short @..api_idx_00e6.l1
    mov ax, 0
    push ax
    shl si, 1
    mov ax, word [bx + si]
    push ax
    mov si, word [data_8d12]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    call loc_0d87
    add sp, byte 4
@..api_idx_00e6.l1:
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0008], ax
    mov ax, 4
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0008]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x000e], ax
    mov ax, 4
    push ax
    push ax
    push word [bp - 0x0008]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0010], ax
    mov ax, 1
    push ax
    mov ax, 8
    push ax
    push word [bp - 0x0008]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0014], ax
    mov ax, 1
    push ax
    mov ax, 9
    push ax
    push word [bp - 0x0008]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0016], ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    push word [bp - 0x0008]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0018], ax
    mov ax, 1
    push ax
    mov ax, 0xd
    push ax
    push word [bp - 0x0008]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x001a], ax
    mov ax, 1
    push ax
    mov ax, 0xe
    push ax
    push word [bp - 0x0008]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x001c], ax
    mov ax, 1
    push ax
    mov ax, 0xf
    push ax
    push word [bp - 0x0008]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0022], ax
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si]
    mov word [bp - 0x000a], ax
    cmp word [bp - 0x001a], byte 0
    jne short @..api_idx_00e6.l2
    mov ax, 0x9128
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_b53b
    add sp, byte 4
    inc word [bp - 0x000a]
@..api_idx_00e6.l2:
    lea ax, word [bp - 0x00c2]
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_b53b
    add sp, byte 4
    inc word [bp - 0x000a]
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_00e6.l4
@..api_idx_00e6.l3:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x00e2], 1
    inc word [bp - 0x0002]
@..api_idx_00e6.l4:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x000e]
    jl short @..api_idx_00e6.l3
    mov ax, word [bp - 0x000e]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x00e2], 0xffff
    mov word [data_9126], 1
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    cmp word [bp - 0x001a], byte 1
    je short @..api_idx_00e6.l5
    jmp near @..local.l276
@..api_idx_00e6.l5:
    lea ax, word [bp - 0x0072]
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x0072]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov word [bp - 0x000c], ax
    lea ax, word [bp - 0x00e2]
    push ax
    mov ax, 0
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x000e]
    mov ax, 3
    push ax
    mov ax, 0xc
    push ax
    mov ax, 6
    imul word [bp - 0x000c]
    add ax, strict word 4
    push ax
    push word [bp - 0x000c]
    mov ax, 0x9c
    push ax
    mov ax, 6
    imul word [bp - 0x000c]
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa1
    sub ax, cx
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x000a]
    call math_loc_8441
    add sp, byte 0x1a
    mov word [bp - 0x0006], ax
    lea ax, word [bp - 0x0072]
    push ax
    mov ax, word [bp - 0x000a]
    add ax, word [bp - 0x0006]
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0x1a
    push ax
    mov ax, 3
    push ax
    mov ax, 0xc
    push ax
    mov ax, 6
    imul word [bp - 0x000c]
    add ax, strict word 4
    push ax
    push word [bp - 0x000c]
    mov ax, 0x9c
    push ax
    mov ax, 6
    imul word [bp - 0x000c]
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa1
    sub ax, cx
    push ax
    push word [data_9052]
    lea ax, word [bp - 0x0072]
    push ax
    call api_idx_0008_3
    add sp, byte 0x12
    mov ax, word [data_905a]
    mov cx, 2
    cwd
    idiv cx
    push ax
    call api_idx_0004
    pop cx
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    mov ax, word [bp - 0x0006]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov al, byte [bx - 0x00c2]
    sub ah, ah
    mov cx, 0xa
    imul cx
    push ax
    mov al, byte [bx - 0x00c1]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    add ax, 0xfdf0
    mov word [bp - 0x0012], ax
    cmp ax, strict word 0
    jle short @..local.l275
    cmp ax, 0x80
    jge short @..local.l275
    mov ax, 0
    push ax
    push word [bp - 0x0012]
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..local.l275:
    jmp near @..local.l288
@..local.l276:
    mov word [bp - 0x001e], 0
    mov word [bp - 0x0020], 0
    mov word [bp - 0x0002], 0
    jmp near @..local.l286
@..local.l277:
    lea ax, word [bp - 0x0072]
    push ax
    push word [bp - 0x000a]
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x0072]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov word [bp - 0x000c], ax
    cmp word [bp - 0x000e], byte 6
    jle short @..local.l278
    mov cx, 6
    imul cx
    mov cx, 3
    imul cx
    add ax, strict word 0x3e
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa1
    sub ax, cx
    mov word [bp - 0x00e4], ax
    mov ax, word [bp - 0x000e]
    dec ax
    mov cx, 3
    cwd
    idiv cx
    inc ax
    mov word [bp - 0x00e6], ax
    jmp short @..local.l279
@..local.l278:
    mov ax, 6
    imul word [bp - 0x000c]
    shl ax, 1
    add ax, strict word 0x28
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa1
    sub ax, cx
    mov word [bp - 0x00e4], ax
    mov ax, word [bp - 0x000e]
    dec ax
    mov cx, 2
    cwd
    idiv cx
    inc ax
    mov word [bp - 0x00e6], ax
@..local.l279:
    lea ax, word [bp - 0x00e2]
    push ax
    mov ax, 0
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x000e]
    push word [bp - 0x00e6]
    mov ax, 0xc
    push ax
    mov ax, 6
    imul word [bp - 0x000c]
    add ax, strict word 0x16
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, 0x9c
    push ax
    push word [bp - 0x00e4]
    mov ax, 0
    push ax
    push word [bp - 0x000a]
    call math_loc_8441
    add sp, byte 0x1a
    mov word [bp - 0x0006], ax
    lea ax, word [bp - 0x0072]
    push ax
    mov ax, word [bp - 0x000a]
    add ax, word [bp - 0x0006]
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0x1a
    push ax
    push word [bp - 0x00e6]
    mov ax, 0xc
    push ax
    mov ax, 6
    imul word [bp - 0x000c]
    add ax, strict word 0x16
    push ax
    mov ax, word [bp - 0x000c]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, 0x9c
    push ax
    push word [bp - 0x00e4]
    push word [data_9052]
    lea ax, word [bp - 0x0072]
    push ax
    call api_idx_0008_3
    add sp, byte 0x12
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    cmp word [bp - 0x001c], byte 1
    jne short @..local.l280
    mov ax, word [bp - 0x0006]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x00e2], 0
@..local.l280:
    cmp word [bp - 0x0016], byte 0
    jne short @..local.l282
    mov ax, word [bp - 0x000e]
    dec ax
    cmp ax, word [bp - 0x0006]
    jne short @..local.l282
    mov ax, word [bp - 0x0010]
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x001e], byte 0
    jne short @..local.l281
    mov word [bp - 0x0020], 1
@..local.l281:
    jmp short @..local.l285
@..local.l282:
    cmp word [bp - 0x0014], byte 0
    je short @..local.l283
    mov ax, 4
    push ax
    call ds_dispatch_b7e0
    pop cx
@..local.l283:
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x30
    sub ah, ah
    push ax
    lea ax, word [bp - 0x00c2]
    push ax
    call ds_dispatch_ee4a
    add sp, byte 4
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    je short @..local.l284
    cmp word [bp - 0x0018], byte 0
    jne short @..local.l285
    mov bx, word [bp - 0x0002]
    add bx, bp
    mov al, byte [bx - 0x00c2]
    sub ah, ah
    add ax, strict word 0xffd0
    cmp ax, word [bp - 0x0006]
    je short @..local.l285
@..local.l284:
    mov word [bp - 0x001e], 1
    cmp word [bp - 0x0022], byte 1
    jne short @..local.l285
    mov ax, word [bp - 0x0010]
    mov word [bp - 0x0002], ax
@..local.l285:
    inc word [bp - 0x0002]
@..local.l286:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x0010]
    jge short @..local.l287
    jmp near @..local.l277
@..local.l287:
    cmp word [bp - 0x0020], byte 0
    jne short @..local.l288
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x1e0]
    mov word [bp - 0x0008], ax
    push word [bp - 0x001e]
    mov ax, 8
    push ax
    push ax
    push word [bp - 0x0008]
    call ds_dispatch_ed3a
    add sp, byte 6
    push ax
    mov ax, 8
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0008]
    call ds_dispatch_ed3a
    add sp, byte 6
    push ax
    call api_idx_0004_12
    add sp, byte 6
@..local.l288:
    mov word [data_9126], 0
    inc word [data_8d12]
    ret
math_loc_782b:
    mov ax, 0
    call ds_dispatch_f40b
    cmp word [bp + 0x4], byte 0
    jle short @..math_loc_782b.l1
    mov bx, word [data_0e12]
    mov si, word [data_8d12]
    cmp byte [bx + si + 0x960], 0
    jbe short @..math_loc_782b.l1
    mov ax, 1
    push ax
    mov al, byte [bx + si + 0x960]
    sub ah, ah
    push ax
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
    cmp word [bp + 0x4], byte 1
    jle short @..math_loc_782b.l1
    mov ax, 1
    push ax
    mov bx, word [data_0e12]
    mov si, word [data_8d12]
    mov al, byte [bx + si + 0x960]
    sub ah, ah
    push ax
    mov ax, word [data_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x5642
    push ax
    call ds_dispatch_ec41
    add sp, byte 6
@..math_loc_782b.l1:
    ret
math_loc_788f:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jae short @..math_loc_788f.l1
    mov al, byte [bx + 0x5e2c]
    sub ah, ah
    add ax, strict word 8
    push ax
    call ds_dispatch_b7e0
    pop cx
@..math_loc_788f.l1:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + 0x5e2f], 3
    mov word [bx + 0x5c0c], 0
    mov word [bx + 0x5c10], 0
    cmp word [bp + 0x6], byte 0
    jle short @..math_loc_788f.l2
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call ds_dispatch_cb3a
    add sp, byte 4
    cmp word [bp + 0x6], byte 1
    jle short @..math_loc_788f.l2
    mov ax, 8
    push ax
    call ds_dispatch_b75e
    pop cx
@..math_loc_788f.l2:
    ret
api_idx_0074_2:
    mov ax, 0xff8c
    call ds_dispatch_f40b
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x3c0]
    mov word [bp - 0x0006], ax
    mov ax, 4
    push ax
    mov ax, 8
    push ax
    push word [bp - 0x0006]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0004], ax
    mov ax, 4
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0006]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x000a], ax
    mov ax, 4
    push ax
    push ax
    push word [bp - 0x0006]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    push word [bp - 0x0006]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0018], ax
    mov word [bp - 0x0024], 0
    mov ax, 1
    push ax
    mov ax, 0xf
    push ax
    push word [bp - 0x0006]
    call ds_dispatch_ed3a
    add sp, byte 6
    mov word [bp - 0x0010], ax
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    cmp word [bx + si], byte 0
    jle short @..api_idx_0074_2.l1
    mov ax, 0
    push ax
    push word [bx + si]
    call loc_0d87
    add sp, byte 4
@..api_idx_0074_2.l1:
    mov ax, 1
    push ax
    call api_idx_000a_2
    pop cx
    cmp word [bp - 0x0004], byte 4
    jne short @..local.l289
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0074_2.l3
@..api_idx_0074_2.l2:
    mov ax, 2
    push ax
    push word [bp - 0x0002]
    call math_loc_788f
    add sp, byte 4
    inc word [bp - 0x0002]
@..api_idx_0074_2.l3:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..api_idx_0074_2.l2
    mov ax, word [data_905a]
    shl ax, 1
    push ax
    call api_idx_0004
    pop cx
    mov word [data_830a], 8
    ret
@..local.l289:
    cmp word [bp - 0x0018], byte 0
    jne short @..local.l290
    jmp near @..math_loc_7a1b.l1
@..local.l290:
    cmp word [data_8306], byte 0
    jg short @..local.l291
    jmp near @..math_loc_7a1b.l1
@..local.l291:
    mov word [bp - 0x0010], 1
    lea ax, word [bp - 0x0074]
    push ax
    mov ax, 0x808
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    lea ax, word [bp - 0x0074]
    push ax
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
    mov word [bp - 0x0020], ax
    mov ax, 0xa3
    push ax
    push word [bp - 0x0020]
    call ds_dispatch_e809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xb8
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0074]
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
    mov ax, 0xa9
    push ax
    lea ax, word [bp - 0x0074]
    push ax
    call ds_dispatch_fa90
    pop cx
    mov cx, 6
    imul cx
    add ax, word [bp - 0x0020]
    push ax
    mov ax, 0xa3
    push ax
    push word [bp - 0x0020]
    call ds_dispatch_e8da
    add sp, byte 8
    mov ax, 0x11
    push ax
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
    push word [data_905a]
    call api_idx_0004
    pop cx
@..math_loc_7a1b.l1:
    mov bx, word [data_0e12]
    mov si, word [data_8d12]
    mov al, byte [bx + si + 0xa50]
    sub ah, ah
    mov word [bp - 0x0022], ax
    cmp ax, strict word 0
    jle short @..math_loc_7a1b.l4
    cmp ax, strict word 5
    jl short @..math_loc_7a1b.l2
    cmp ax, strict word 8
    je short @..math_loc_7a1b.l2
    cmp ax, strict word 9
    jne short @..math_loc_7a1b.l3
@..math_loc_7a1b.l2:
    push ax
    call ds_dispatch_b7e0
    pop cx
    jmp short @..math_loc_7a1b.l4
@..math_loc_7a1b.l3:
    push word [bp - 0x0022]
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
@..math_loc_7a1b.l4:
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    mov ax, word [bx + si + 0x1e0]
    mov word [bp - 0x000c], ax
    cmp ax, strict word 0xe
    jne short @..math_loc_7a1b.l5
    mov word [bp - 0x000c], 9
    mov word [bp - 0x0024], 1
@..math_loc_7a1b.l5:
    mov word [bp - 0x0014], 0
@..math_loc_7a1b.l6:
    mov ax, 0x248
    imul word [bp - 0x0014]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jb short @..math_loc_7a1b.l7
    inc word [bp - 0x0014]
    jmp short @..math_loc_7a1b.l6
@..math_loc_7a1b.l7:
    mov ax, word [data_69c8]
    cmp word [bp - 0x0004], byte 0x0c
    jne short @..math_loc_7a1b.l8
    mov ax, word [bp - 0x0014]
    inc ax
@..math_loc_7a1b.l8:
    mov word [bp - 0x0016], ax
    mov ax, word [data_69c8]
    push ax
    cmp ax, word [bp - 0x0016]
    pop ax
    jle short @..math_loc_7a1b.l9
    mov ax, word [bp - 0x0016]
@..math_loc_7a1b.l9:
    mov word [bp - 0x0016], ax
    cmp word [bp - 0x0004], byte 0x0c
    je short @..math_loc_7a1b.l10
    cmp word [bp - 0x0024], byte 1
    je short @..math_loc_7a1b.l10
    cmp word [bp - 0x000c], byte 0
    je short @..math_loc_7a1b.l10
    mov ax, word [bp - 0x000c]
    cmp ax, strict word 3
    je short @..math_loc_7a1b.l10
    cmp ax, strict word 0xd
    jne short @..math_loc_7a1b.l11
@..math_loc_7a1b.l10:
    mov ax, 1
    jmp short @..math_loc_7a1b.l12
@..math_loc_7a1b.l11:
    mov ax, 0
@..math_loc_7a1b.l12:
    mov word [bp - 0x0012], ax
    mov ax, word [bp - 0x0014]
    mov word [bp - 0x0002], ax
    jmp near @..local.l305
@..math_loc_7a1b.l13:
    mov ax, 0x36
    push ax
    call ds_dispatch_b7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d68]
    sub ah, ah
    mov cx, ax
    sub ax, word [bp - 0x0008]
    mov cx, ax
    pop ax
    cmp ax, cx
    jg short @..math_loc_7a1b.l14
    cmp word [bp - 0x0012], byte 0
    jne short @..math_loc_7a1b.l14
    jmp near @..local.l303
@..math_loc_7a1b.l14:
    mov ax, word [bp - 0x000c]
    cmp ax, strict word 0xd
    jne short @..math_loc_7a1b.l15
    mov al, byte [bx + 0x5d77]
    sub ah, ah
    sub ax, word [bp - 0x0008]
    jmp short @..math_loc_7a1b.l17
@..math_loc_7a1b.l15:
    mov ax, word [bp - 0x000c]
    cmp ax, strict word 3
    jne short @..math_loc_7a1b.l16
    mov al, byte [bx + 0x5d76]
    sub ah, ah
    sub ax, word [bp - 0x0008]
    jmp short @..math_loc_7a1b.l17
@..math_loc_7a1b.l16:
    add bx, word [bp - 0x000c]
    mov al, byte [bx + 0x5d9c]
    sub ah, ah
    push ax
    mov ax, 3
    imul word [bp - 0x0008]
    mov cx, ax
    pop ax
    sub ax, cx
@..math_loc_7a1b.l17:
    mov word [bp - 0x001e], ax
    mov ax, 1
    cmp word [bp - 0x000c], byte 0
    je short @..math_loc_7a1b.l19
    mov cx, word [bp - 0x000c]
    cmp cx, byte 0x0d
    je short @..math_loc_7a1b.l19
    cmp cx, byte 3
    je short @..math_loc_7a1b.l19
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    cmp ax, word [bp - 0x001e]
    jle short @..math_loc_7a1b.l18
    mov ax, 1
    jmp short @..math_loc_7a1b.l19
@..math_loc_7a1b.l18:
    mov ax, 0
@..math_loc_7a1b.l19:
    mov word [bp - 0x000e], ax
    mov ax, word [bp - 0x0008]
    mov word [bp - 0x001a], ax
    mov ax, word [bp - 0x000a]
    mov word [bp - 0x001c], ax
@..math_loc_7a1b.l20:
    cmp word [bp - 0x001c], byte 0
    jle short @..local.l293
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    cmp ax, word [bp - 0x001e]
    jge short @..local.l293
    dec word [bp - 0x001c]
    cmp word [bp - 0x001a], byte 0
    jle short @..local.l292
    mov ax, 0x64
    push ax
    call ds_dispatch_b7a9
    pop cx
    cmp ax, word [bp - 0x001e]
    jge short @..local.l292
    dec word [bp - 0x001a]
@..local.l292:
    jmp short @..math_loc_7a1b.l20
@..local.l293:
    cmp word [bp - 0x0010], byte 0
    je short @..local.l294
    jmp near @..local.l300
@..local.l294:
    cmp word [bp - 0x000e], byte 0
    jne short @..local.l295
    jmp near @..local.l300
@..local.l295:
    cmp word [bp - 0x001a], byte 0
    jg short @..local.l296
    jmp near @..local.l300
@..local.l296:
    cmp word [bp - 0x001c], byte 0
    jg short @..local.l297
    jmp near @..local.l300
@..local.l297:
    cmp word [bp - 0x000c], byte 3
    jne short @..local.l298
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp word [bx + 0x5c10], byte 0
    jle short @..local.l298
    push word [bx + 0x5c10]
    mov ax, 1
    push ax
    push word [bp - 0x001a]
    push word [bp - 0x001c]
    push word [bp - 0x001a]
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
    mov cx, ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    mov ax, word [bx + 0x5c10]
    sub ax, cx
    push ax
    call ds_dispatch_b7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    pop ax
    mov word [bx + 0x5c10], ax
@..local.l298:
    push word [bp - 0x001c]
    push word [bp - 0x001a]
    push word [bp - 0x0002]
    call api_idx_003e
    add sp, byte 6
    cmp word [bp - 0x000c], byte 3
    jne short @..local.l299
    mov ax, 2
    push ax
    mov ax, 0xa
    push ax
    push word [bp - 0x0002]
    call math_loc_0f54
    add sp, byte 6
@..local.l299:
    cmp word [bp - 0x000c], byte 0x0d
    jne short @..local.l300
    mov ax, 1
    push ax
    mov ax, 0xb
    push ax
    push word [bp - 0x0002]
    call math_loc_0f54
    add sp, byte 6
@..local.l300:
    cmp word [bp - 0x0004], byte 0
    jle short @..local.l303
    cmp word [bp - 0x0004], byte 6
    jge short @..local.l301
    push word [bp - 0x0004]
    push word [bp - 0x000c]
    mov ax, word [bp - 0x0004]
    add ax, 0x148d
    push ax
    push word [bp - 0x0002]
    call api_idx_005a
    add sp, byte 8
    jmp short @..local.l303
@..local.l301:
    mov ax, word [bp - 0x0008]
    mov cx, word [bp - 0x0004]
    cmp cx, byte 0x0c
    jne short @..local.l302
    mov ax, 0xff
@..local.l302:
    push ax
    mov ax, 0xa
    push ax
    push word [bp - 0x0008]
    add cx, byte 0xfa
    mov ax, cx
    push ax
    push word [bp - 0x000c]
    mov ax, word [bp - 0x0004]
    add ax, 0x147c
    push ax
    push word [bp - 0x0002]
    call api_idx_0056
    add sp, byte 0x0e
@..local.l303:
    cmp word [bp - 0x0024], byte 0
    je short @..local.l304
    mov ax, 0x248
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d5c], 0
    jne short @..local.l304
    mov ax, 2
    push ax
    mov ax, 0x17
    push ax
    push word [bp - 0x0002]
    call math_loc_0f54
    add sp, byte 6
@..local.l304:
    inc word [bp - 0x0002]
@..local.l305:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x0016]
    jge short @..local.l306
    jmp near @..math_loc_7a1b.l13
@..local.l306:
    mov ax, 2
    push ax
    mov ax, 0xd
    push ax
    mov ax, word [data_8d12]
    shl ax, 1
    mov si, ax
    mov bx, word [data_0e12]
    push word [bx + si + 0x3c0]
    call ds_dispatch_ed3a
    add sp, byte 6
    push ax
    call math_loc_782b
    pop cx
    inc word [data_8d12]
    ret
loc_7d99:
    mov ax, 0
    call ds_dispatch_f40b
    call ds_dispatch_c145
    mov ax, 1
    push ax
    mov ax, 5
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
    mov ax, 0xf
    push ax
    mov ax, 0xd
    push ax
    call ds_dispatch_d61c
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
    call ds_dispatch_e935
    add sp, byte 0x0c
    mov word [data_9062], dx
    mov word [data_9060], ax
    cmp word [data_906a], byte 0
    je short @..local.l307
    mov ax, 1
    push ax
    push word [data_9068]
    call ds_dispatch_c459
    add sp, byte 4
    mov word [data_906a], 0
@..local.l307:
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
    call ds_dispatch_e935
    add sp, byte 0x0c
    mov word [data_9066], dx
    mov word [data_9064], ax
    call api_idx_000e
    mov ax, 0xc6
    push ax
    mov ax, 0x127
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 0x19
    push ax
    call ds_dispatch_e928
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
    call ds_dispatch_e928
    add sp, byte 8
    mov word [data_8d0c], dx
    mov word [data_8d0a], ax
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
    mov word [data_91d4], 1
    mov word [data_9124], 5
    mov word [data_911c], 0x8f
    call ds_dispatch_ec17
    mov word [data_9126], 0
    cmp word [bp + 0x4], byte 0
    jle short @..local.l308
    mov ax, 0x9128
    push ax
    push word [bp + 0x4]
    call ds_dispatch_b53b
    add sp, byte 4
@..local.l308:
    ret
loc_7eba:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_9066]
    push word [data_9064]
    call ds_dispatch_e942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_9062]
    push word [data_9060]
    call ds_dispatch_e942
    add sp, byte 8
    call api_idx_000e
    mov ax, 0xf
    push ax
    call ds_dispatch_c12a
    pop cx
    mov ax, 7
    push ax
    call ds_dispatch_c12a
    pop cx
    mov ax, 5
    push ax
    call ds_dispatch_d6c6
    pop cx
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    mov ax, 1
    push ax
    call ds_dispatch_c12a
    pop cx
    mov ax, 2
    push ax
    call ds_dispatch_c12a
    pop cx
    mov ax, 1
    push ax
    push word [data_8d0c]
    push word [data_8d0a]
    call ds_dispatch_e94f
    add sp, byte 6
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
    ret
api_idx_0050_2:
    mov ax, 0xffb0
    call ds_dispatch_f40b
    mov ax, 0x138c
    push ax
    call loc_7d99
    pop cx
    mov ax, 1
    push ax
    call api_idx_000a_2
    pop cx
    push word [data_0e2c]
    push word [data_0e2a]
    call ds_dispatch_b8af
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x12e
    push ax
    call ds_dispatch_f0e4
    add sp, byte 6
    call ds_dispatch_d9a6
    mov word [data_8450], ax
    test ax, ax
    je short @..api_idx_0050_2.l1
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    call ds_dispatch_d7e7
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    call ds_dispatch_d7e7
    add sp, byte 4
    mov ax, word [data_0112]
    mov word [data_844e], ax
    mov ax, 0
    push ax
    push word [data_844e]
    push ax
    call ds_dispatch_d964
    add sp, byte 6
    mov word [data_844c], ax
@..api_idx_0050_2.l1:
    lea ax, word [bp - 0x0050]
    push ax
    mov ax, 0x1388
    push ax
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, 0xa9
    push ax
    mov ax, 0xffff
    push ax
    push word [data_91d4]
    lea ax, word [bp - 0x0050]
    push ax
    call math_loc_0eb2
    add sp, byte 8
    cmp word [data_8450], byte 0
    je short @..api_idx_0050_2.l4
@..api_idx_0050_2.l2:
    call ds_dispatch_ef83
    test ax, ax
    je short @..api_idx_0050_2.l3
    jmp short @..api_idx_0050_2.l2
@..api_idx_0050_2.l3:
    mov ax, 0x190
    push ax
    call ds_dispatch_e489
    pop cx
    push word [data_91d4]
    push word [data_91d4]
    call api_idx_0004_4
    add sp, byte 4
    mov ax, word [data_0110]
    mov word [data_844e], ax
    mov ax, 1
    push ax
    push word [data_844e]
    push ax
    call ds_dispatch_d964
    add sp, byte 6
    mov word [data_844c], ax
@..api_idx_0050_2.l4:
    cmp word [data_84a4], byte 0
    jl short @..api_idx_0050_2.l5
    jne short @..api_idx_0050_2.l6
    cmp word [data_84a2], byte 0
    ja short @..api_idx_0050_2.l6
@..api_idx_0050_2.l5:
    jmp short @..api_idx_0050_2.l7
@..api_idx_0050_2.l6:
    call api_idx_00a8
@..api_idx_0050_2.l7:
    mov ax, 0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x12e
    push ax
    call ds_dispatch_f0f1
    add sp, byte 6
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    call ds_dispatch_b8af
    add sp, byte 4
    cmp word [data_84a0], byte 0xff
    je short @..api_idx_0050_2.l8
    mov word [data_905e], 0xf
    call loc_5789
@..api_idx_0050_2.l8:
    cmp word [data_8450], byte 0
    je short @..api_idx_0050_2.l9
    push word [data_844c]
    push word [data_844e]
    call ds_dispatch_d91b
    add sp, byte 4
    mov ax, 1
    push ax
    call ds_dispatch_d907
    pop cx
    mov ax, 0
    push ax
    call ds_dispatch_d907
    pop cx
@..api_idx_0050_2.l9:
    call loc_7eba
    ret
loc_809e:
    mov ax, 0
    call ds_dispatch_f40b
    mov word [data_849e], 0xffff
    mov ax, 0x138c
    push ax
    call loc_7d99
    pop cx
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    cmp word [data_84a0], byte 0xff
    je short @..local.l310
    call ds_dispatch_d9a6
    mov word [data_8450], ax
    test ax, ax
    je short @..local.l309
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    call ds_dispatch_d7e7
    add sp, byte 4
    mov ax, word [data_0110]
    mov word [data_844e], ax
    mov ax, 1
    push ax
    push word [data_844e]
    push ax
    call ds_dispatch_d964
    add sp, byte 6
    mov word [data_844c], ax
@..local.l309:
    mov word [data_905e], 0x15
    call loc_5789
    cmp word [data_8450], byte 0
    je short @..local.l310
    push word [data_844c]
    push word [data_844e]
    call ds_dispatch_d91b
    add sp, byte 4
    mov ax, 1
    push ax
    call ds_dispatch_d907
    pop cx
@..local.l310:
    inc word [data_8d12]
    call loc_7eba
    ret
loc_811f:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0x138e
    cmp word [data_5b6e], byte 1
    jne short @..local.l311
    mov ax, 0x138f
@..local.l311:
    push ax
    call loc_7d99
    pop cx
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    mov ax, 0xc6
    push ax
    mov ax, 0x109
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0x37
    push ax
    call ds_dispatch_e8da
    add sp, byte 8
    call ds_dispatch_d9a6
    mov word [data_8450], ax
    test ax, ax
    je short @..local.l312
    mov ax, 1
    push ax
    mov ax, 2
    push ax
    call ds_dispatch_d7e7
    add sp, byte 4
    mov ax, word [data_0110]
    mov word [data_844e], ax
    mov ax, 1
    push ax
    push word [data_844e]
    push ax
    call ds_dispatch_d964
    add sp, byte 6
    mov word [data_844c], ax
@..local.l312:
    push word [data_84a0]
    call api_idx_0072
    pop cx
    mov ax, 1
    push ax
    call api_idx_000a_2
    pop cx
    cmp word [data_8450], byte 0
    je short @..local.l313
    push word [data_844c]
    push word [data_844e]
    call ds_dispatch_d91b
    add sp, byte 4
    mov ax, 1
    push ax
    call ds_dispatch_d907
    pop cx
@..local.l313:
    call loc_7eba
    ret
loc_81b6:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0x7f6
    push ax
    call loc_7d99
    pop cx
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    call api_idx_00e6
    mov ax, 1
    push ax
    call api_idx_000a_2
    pop cx
    call loc_7eba
    ret
loc_81db:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0
    push ax
    call loc_7d99
    pop cx
    mov ax, 0
    push ax
    call api_idx_000a_2
    pop cx
    call api_idx_0074_2
    mov ax, 1
    push ax
    call api_idx_000a_2
    pop cx
    call loc_7eba
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
math_loc_82a9:
    mov ax, 0
    call ds_dispatch_f40b
    mov ax, 0xa
    push ax
    call ds_dispatch_e489
    pop cx
    ret
api_idx_0008_3:
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
    mov cx, 2
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
loc_83c6:
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
math_loc_8441:
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
    jne short @..math_loc_8441.l1
    jmp near @..math_loc_8441.l2
@..math_loc_8441.l1:
    mov ax, 0x90f4
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
    mov cx, 2
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
    jmp short @..math_loc_8441.l3
@..math_loc_8441.l2:
    mov ax, 0x90fa
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
@..math_loc_8441.l3:
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
@..math_loc_8441.l4:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1c]
    cmp word [bx + si], byte 0xff
    jne short @..math_loc_8441.l5
    jmp near @..local.l315
@..math_loc_8441.l5:
    cmp word [bx + si], byte 1
    je short @..math_loc_8441.l6
    jmp near @..local.l314
@..math_loc_8441.l6:
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
    jne short @..math_loc_8441.l7
    mov ax, 0x1a
@..math_loc_8441.l7:
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
    mov cx, 2
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
@..local.l314:
    inc word [bp - 0x0004]
    jmp near @..math_loc_8441.l4
@..local.l315:
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
    je short @..local.l318
@..local.l316:
    mov ax, 0x59fe
    push ax
    call ds_dispatch_b90d
    pop cx
    mov word [bp - 0x0004], ax
    cmp word [data_5b3e], byte 0
    jne short @..local.l317
    call math_loc_086b
@..local.l317:
    cmp word [data_5b3e], byte 0
    je short @..local.l316
    jmp near @..local.l332
@..local.l318:
    mov word [bp - 0x0004], 0
@..local.l319:
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
    call loc_83c6
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
    call loc_83c6
    add sp, byte 0x0a
@..local.l320:
    mov ax, 1
    push ax
    call ds_dispatch_ea50
    pop cx
    test ax, ax
    jne short @..local.l321
    call math_loc_086b
    jmp short @..local.l320
@..local.l321:
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
@..local.l322:
    mov ax, word [bp - 0x01aa]
    jmp near @..local.l327
@..local.l323:
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
    jmp near @..local.l329
@..local.l324:
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
    jmp short @..local.l329
@..local.l325:
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
    jmp short @..local.l329
@..local.l326:
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
    jmp short @..local.l329
@..local.l327:
    cmp ax, strict word 8
    je short @..local.l325
    cmp ax, strict word 9
    jne short @..local.l328
    jmp near @..local.l323
@..local.l328:
    cmp ax, strict word 0xa
    je short @..local.l326
    cmp ax, strict word 0xb
    je short @..local.l324
@..local.l329:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jl short @..local.l330
    jmp near @..local.l322
@..local.l330:
    cmp word [bp - 0x01aa], byte 0x0d
    je short @..local.l331
    jmp near @..local.l319
@..local.l331:
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
@..local.l332:
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
    je short @..local.l334
    cmp word [bp + 0x6], byte 0
    je short @..local.l333
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
    jmp short @..local.l334
@..local.l333:
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
@..local.l334:
    mov ax, word [bp - 0x0004]
    mov word [data_9052], ax
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x002a]
    ret
api_idx_000c:
    mov ax, 0xfff4
    call ds_dispatch_f40b
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
    call ds_dispatch_efd1
    add sp, byte 0x16
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_000c.l1
    ret
api_idx_0002_6:
    mov ax, 0xfffe
    call ds_dispatch_f40b
    mov word [bp - 0x0002], 0
@..api_idx_0002_6.l1:
    cmp word [bp + 0x4], byte 0
    jl short @..api_idx_0002_6.l2
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x4]
    jne short @..api_idx_0002_6.l3
@..api_idx_0002_6.l2:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    inc word [bx - 0x7cf2]
@..api_idx_0002_6.l3:
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
    jne short @..api_idx_0002_6.l4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x7cf2], 0
@..api_idx_0002_6.l4:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_0002_6.l1
    ret
api_idx_0004_13:
    mov ax, 0xfffc
    call ds_dispatch_f40b
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
    call ds_dispatch_ec74
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
    call ds_dispatch_b53b
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6996], ax
    inc word [bp - 0x0004]
@..api_idx_0004_13.l2:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x66
    jl short @..api_idx_0004_13.l1
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
math_loc_8ac7:
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
    je short @..math_loc_8ac7.l1
    mov ax, 1
@..math_loc_8ac7.l1:
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
    jne short @..math_loc_8ac7.l2
    cmp word [bp + 0xa], byte 0
    jne short @..math_loc_8ac7.l2
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
@..math_loc_8ac7.l2:
    ret
loc_8b53:
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
    jle short @..local.l335
    mov ax, word [bp + 0xa]
    cmp ax, word [bp + 0xc]
    jg short @..local.l335
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
    jmp short @..local.l336
@..local.l335:
    mov ax, 0
    push ax
    push ax
    call ds_dispatch_e823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x9100
    push ax
    call ds_dispatch_e84e
    add sp, byte 4
@..local.l336:
    ret
api_idx_000c_2:
    mov ax, 0xfff4
    call ds_dispatch_f40b
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
    jge short @..api_idx_000c_2.l2
    jmp near @..api_idx_000c_2.l1
@..api_idx_000c_2.l2:
    ret
loc_8c8d:
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
    mov ax, word [data_9124]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [data_9092]
    mov dx, word [data_9094]
    cmp bx, dx
    jg short @..local.l337
    jne short @..local.l338
    cmp cx, ax
    jbe short @..local.l338
@..local.l337:
    jmp short @..local.l339
@..local.l338:
    mov ax, word [data_908e]
    mov dx, word [data_9090]
    mov word [data_908c], dx
    mov word [data_908a], ax
    call api_idx_000a_3
    push word [bp + 0x4]
    call api_idx_000c_2
    pop cx
    push word [bp + 0x6]
    call api_idx_0002_6
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
    call ds_dispatch_e8da
    add sp, byte 8
@..local.l339:
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
    mov ax, 0x9104
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
    call math_loc_8ac7
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
    call loc_8b53
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
@..local.l340:
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
    jl short @..local.l340
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
    jge short @..local.l341
    mov ax, word [bp - 0x0044]
@..local.l341:
    mov word [bp - 0x0020], ax
    mov word [bp - 0x0002], 0
@..local.l342:
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
    jl short @..local.l342
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
    mov word [data_9124], 5
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    mov word [bp - 0x001c], 1
@..local.l343:
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call loc_8c8d
    add sp, byte 4
    mov ax, 0x59fe
    push ax
    call ds_dispatch_b90d
    pop cx
    dec ax
    mov word [bp - 0x001a], ax
    cmp word [data_59fc], byte 0
    je short @..local.l347
    mov ax, word [bp - 0x0022]
    cmp ax, word [bp - 0x0018]
    jl short @..local.l344
    inc word [bp - 0x0022]
@..local.l344:
    mov ax, word [bp - 0x0022]
    cmp ax, strict word 0xffff
    je short @..local.l345
    cmp ax, word [bp - 0x0018]
    jl short @..local.l345
    mov ax, word [bp - 0x0018]
    add ax, word [bp - 0x0020]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp - 0x0022]
    cmp cx, ax
    jge short @..local.l346
@..local.l345:
    mov ax, word [bp - 0x0018]
    mov word [bp - 0x0022], ax
@..local.l346:
    mov word [data_5b3e], 1
    mov ax, word [bp - 0x0022]
    sub ax, word [bp - 0x0018]
    add ax, strict word 0x12
    mov word [bp - 0x001a], ax
@..local.l347:
    cmp word [data_5b3e], byte 1
    je short @..local.l348
    jmp near @..local.l372
@..local.l348:
    mov ax, word [bp - 0x001a]
    jmp near @..local.l370

    db 0x8d, 0x46, 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x01, 0x5e, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xee, 0x83
    db 0xc1, 0x2a, 0x2b, 0xc1, 0x50, 0xe8, 0x53, 0x25, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xea, 0x8d, 0x46
    db 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0xd3, 0x5d, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe2, 0xff
    db 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x2a, 0x2b
    db 0xc1, 0x2b, 0x46, 0xea, 0x50, 0xe8, 0x23, 0x25, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xee, 0x83, 0x7e
    db 0xbc, 0x07, 0x7e, 0x20, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xec, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xfa, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7
    db 0xf9, 0x89, 0x46, 0xe8, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0xaa, 0x2c, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0xcc, 0x2c, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0x69, 0x27, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x7b, 0x55, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe2, 0x00, 0x74
    db 0x03, 0xe9, 0x0a, 0xff, 0xe9, 0x13, 0x06, 0x83, 0x7e, 0xe6, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x28, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0x21, 0x2b
    db 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xe8, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xe8, 0xeb, 0x34, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x46, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0xf0
    db 0x2a, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xbc, 0x05, 0xf9, 0xff, 0x3b, 0x46, 0xe8, 0x7e, 0x03, 0xff
    db 0x46, 0xe8, 0x83, 0x7e, 0xbc, 0x07, 0x7e, 0x2c, 0xff, 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x64, 0x00, 0xf7, 0x6e, 0xec, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xf9, 0x99, 0xf7
    db 0xf9, 0xf7, 0x6e, 0xe8, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0xbd, 0x23, 0x83, 0xc4
    db 0x06, 0x89, 0x46, 0xee, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x6a, 0x2b, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x8c, 0x2b, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0x29, 0x26, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x3b, 0x54, 0x83, 0xc4, 0x08, 0xe9, 0xdc, 0x04, 0x83, 0x7e
    db 0x08, 0x00, 0x75, 0x03, 0xe9, 0xa1, 0x00, 0x83, 0x7e, 0xc4, 0x00, 0x7d, 0x03, 0xe9, 0x8a, 0x00
    db 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x3c, 0x8b, 0x46, 0xc2, 0x3b, 0x46, 0xc0, 0x7e, 0x03, 0xe9, 0x79
    db 0x00, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xc4, 0x8b, 0xd8, 0x8a, 0x87, 0x22, 0x06, 0x2a, 0xe4, 0x8b
    db 0x4e, 0xc2, 0x41, 0xf7, 0xe9, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8b, 0x56
    db 0xbe, 0xd1, 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x8b, 0x8f, 0x1c, 0x5c, 0x58, 0x3b, 0xc1
    db 0x7f, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x4c, 0x29, 0x83, 0xc4, 0x0a, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x2c, 0x29, 0x83, 0xc4, 0x0a, 0xc7
    db 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x08
    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x92, 0x22, 0x59, 0xe9, 0x2f, 0x04, 0xb8, 0x01, 0x00, 0x50, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0xf3, 0x28, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0xd3, 0x28, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46
    db 0xe4, 0x00, 0x00, 0xe9, 0xe4, 0x03

@..local.l349:
    cmp word [bp - 0x001a], byte 5
    jge short @..local.l350
    jmp near @..local.l358
@..local.l350:
    cmp word [bp - 0x001a], byte 0x0b
    jle short @..local.l351
    jmp near @..local.l358
@..local.l351:
    mov ax, 0
    push ax
    push word [bp - 0x003e]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    call math_loc_8ac7
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
    call math_loc_8ac7
    add sp, byte 8
    cmp word [bp - 0x003c], byte 0
    jge short @..local.l352
    jmp near @..local.l356
@..local.l352:
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
    jne short @..local.l353
    mov ax, 0x3e7
    jmp short @..local.l355
@..local.l353:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short @..local.l354
    jmp short @..local.l355
@..local.l354:
    mov ax, word [bp - 0x0002]
@..local.l355:
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
    call loc_8b53
    add sp, byte 0x0a
    jmp short @..local.l357
@..local.l356:
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
    call loc_8b53
    add sp, byte 0x0a
@..local.l357:
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
    jmp near @..local.l369
@..local.l358:
    cmp word [bp - 0x001a], byte 0x0c
    jge short @..local.l359
    jmp near @..local.l363
@..local.l359:
    cmp word [bp - 0x001a], byte 0x11
    jle short @..local.l360
    jmp near @..local.l363
@..local.l360:
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
    jge short @..local.l361
    mov ax, word [bp - 0x0044]
@..local.l361:
    mov word [bp - 0x0024], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short @..local.l362
    mov ax, word [bp - 0x0044]
@..local.l362:
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
    call loc_8b53
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
    jmp near @..local.l369
@..local.l363:
    cmp word [bp - 0x001a], byte 0x12
    jge short @..local.l364
    jmp near @..local.l369
@..local.l364:
    mov ax, word [bp - 0x0020]
    add ax, strict word 0x12
    cmp ax, word [bp - 0x001a]
    jg short @..local.l365
    jmp near @..local.l369
@..local.l365:
    mov ax, word [bp - 0x0018]
    add ax, word [bp - 0x001a]
    add ax, strict word 0xffee
    mov word [bp - 0x0022], ax
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6996]
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
    jne short @..local.l366
    mov ax, 0x3e7
    jmp short @..local.l368
@..local.l366:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short @..local.l367
    jmp short @..local.l368
@..local.l367:
    mov ax, word [bp - 0x0002]
@..local.l368:
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
    call loc_8b53
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
@..local.l369:
    jmp short @..local.l372
    db 0x8e, 0xe2, 0xb5, 0xe3, 0xb5, 0xe3, 0xec, 0xe4, 0x99, 0xe5
@..local.l370:
    cmp ax, strict word 5
    jae short @..local.l371
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x1652]
@..local.l371:
    jmp near @..local.l349
@..local.l372:
    cmp word [bp - 0x001c], byte 0
    je short @..local.l373
    jmp near @..local.l343
@..local.l373:
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

    db 0x8f, 0x06, 0x12, 0x91, 0x59, 0x89, 0x26, 0x0e, 0x91, 0x89, 0x2e, 0x10, 0x91, 0x89, 0x36, 0x0a
    db 0x91, 0x89, 0x3e, 0x0c, 0x91, 0xfc, 0xbf, 0x14, 0x91, 0xb9, 0xba, 0x96, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0x20, 0x66, 0x8b, 0x2e, 0x10, 0x91, 0x8b, 0x26, 0x0e
    db 0x91, 0x8b, 0x36, 0x0a, 0x91, 0x8b, 0x3e, 0x0c, 0x91, 0x51, 0xff, 0x26, 0x12, 0x91

leaf_loc_9a03:
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

    db '!%&]@#~', 0
    db 0x20, 0x00
    db 'V1.$$$', 0
    db 'V2.$$$', 0
    times 11 db 0
    db '--------', 0
    db '????????', 0
    db 'V.$$$', 0
    db 0x28, 0x00, 0x25, 0x29, 0x00, 0x28, 0x00, 0x29, 0x00
    db 'V.$$$', 0
    db 0x00
    db 'V.$$$', 0
    db 0x28, 0x00, 0x25, 0x29, 0x00
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    times 10 db 0

