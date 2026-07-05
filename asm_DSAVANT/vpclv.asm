%include "structs/structs.inc"
%include "structs/vpclv.inc"
org 0
bits 16
%include "labels/vpclv_foreign_labels.inc"

    db 0xf2, 0x00, 0x55, 0x50, 0xa2, 0x54, 0x98, 0x90 ; header (8 bytes)

data_0002 equ 0x0002
data_001e equ 0x001e
data_0038 equ 0x0038
data_003c equ 0x003c
data_0040 equ 0x0040
data_0042 equ 0x0042
data_0044 equ 0x0044
data_010c equ 0x010c
data_07b8 equ 0x07b8
data_0e32 equ 0x0e32
data_1fe9 equ 0x1fe9
data_3a87 equ 0x3a87
data_59fc equ 0x59fc
data_5b3e equ 0x5b3e
data_69c8 equ 0x69c8
data_7096 equ 0x7096
data_82ee equ 0x82ee
data_830a equ 0x830a
data_844c equ 0x844c
data_844e equ 0x844e
data_8450 equ 0x8450
data_8f20 equ 0x8f20
data_904e equ 0x904e
data_9050 equ 0x9050
data_905a equ 0x905a
data_905e equ 0x905e
data_908a equ 0x908a
data_908c equ 0x908c
data_908e equ 0x908e
data_9090 equ 0x9090
data_9092 equ 0x9092
data_9094 equ 0x9094
data_9096 equ 0x9096
data_9416 equ 0x9416
data_9418 equ 0x9418
data_941a equ 0x941a
data_941c equ 0x941c
data_941e equ 0x941e
data_9420 equ 0x9420
data_9422 equ 0x9422
data_9424 equ 0x9424
data_9426 equ 0x9426
data_9428 equ 0x9428
data_942a equ 0x942a
data_942c equ 0x942c
data_9432 equ 0x9432
data_9434 equ 0x9434
data_9436 equ 0x9436
data_9438 equ 0x9438
data_943a equ 0x943a
data_948c equ 0x948c
data_948e equ 0x948e
data_9490 equ 0x9490
data_9492 equ 0x9492
data_95d0 equ 0x95d0
data_95f4 equ 0x95f4
data_9704 equ 0x9704

    db 0x70, 0x03, 0xa4, 0x03, 0xb9, 0xa4
loc_000e:
    mov ax, 0
    call 0xf40b
    cmp word [data_830a], byte 0x16
    jne short @..local.l1
    call api_idx_000c_3
@..local.l1:
    mov ax, 0
    ret
api_idx_0002:
    mov ax, 0xfffe
    db 0xe8, 0xe3, 0xf3 ; call 0xf40b
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
api_idx_0012:
    mov ax, 0xffee
    db 0xe8, 0x7f, 0xf3 ; call 0xf40b
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
    mov word [bp - 0x0008], 2
@..api_idx_0012.l11:
    cmp word [bp - 0x0006], byte 2
    jle short @..api_idx_0012.l12
    mov word [bp - 0x0006], 2
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
    mov di, 0x9408
    mov cx, ds
    mov es, cx
    mov cx, 7
    rep movsw
    mov ax, 0x9408
    ret
api_idx_000c:
    mov ax, 0xfff4
    db 0xe8, 0x03, 0xf2 ; call 0xf40b
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
    db 0xe8, 0x84, 0xf1 ; call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [data_942c]
    push word [data_942a]
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
api_idx_0002_2:
    mov ax, 0xfffe
    db 0xe8, 0xd4, 0xf0 ; call 0xf40b
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
    db 0xe8, 0x79, 0xf0 ; call 0xf40b
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
    call 0xb7c2
    add sp, byte 6
    ret
api_idx_0010:
    mov ax, 0xfff0
    db 0xe8, 0x38, 0xf0 ; call 0xf40b
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
    db 0xe8, 0x93, 0xe4 ; call 0xe8f4
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
    db 0xe8, 0x77, 0xe4 ; call 0xe8f4
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
    db 0xe8, 0x4f, 0xe4 ; call 0xe8f4
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
    db 0xe8, 0x3b, 0xef ; call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [data_9434]
    push word [data_9432]
    db 0xe8, 0x62, 0xe4 ; call 0xe942
    add sp, byte 8
    cmp word [data_9436], byte 0
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
    sub ax, word [data_9436]
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
    db 0xe8, 0xaf, 0xea ; call 0xefd1
    add sp, byte 0x16
@..api_idx_000a.l1:
    mov ax, 5
    cmp word [data_9438], byte 0
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
    sub ax, word [data_9436]
    add ax, strict word 0x19
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0xf
    push ax
    db 0xe8, 0x63, 0xea ; call 0xefd1
    add sp, byte 0x16
    ret
api_idx_007c:
    mov ax, 0xff84
    db 0xe8, 0x93, 0xee ; call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [data_9418]
    push word [data_9416]
    db 0xe8, 0xba, 0xe3 ; call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    push word [data_941c]
    push word [data_941a]
    db 0xe8, 0xa7, 0xe3 ; call 0xe942
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
    db 0xe8, 0x6c, 0xe2 ; call 0xe823
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
    db 0xe8, 0x27, 0xe2 ; call 0xe809
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
    db 0xe8, 0x1f, 0xe2 ; call 0xe823
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0x5a
    push ax
    db 0xe8, 0xf7, 0xe1 ; call 0xe809
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
    db 0xe8, 0xe4, 0xe1 ; call 0xe830
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
    db 0xe8, 0xd3, 0xae ; call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    db 0xe8, 0xd8, 0xe1 ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x84
    push ax
    db 0xe8, 0x9f, 0xe1 ; call 0xe823
    add sp, byte 4
    mov ax, 0xc
    push ax
    mov ax, 0x5a
    push ax
    db 0xe8, 0x77, 0xe1 ; call 0xe809
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
    db 0xe8, 0x8d, 0xae ; call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    db 0xe8, 0x92, 0xe1 ; call 0xe84e
    add sp, byte 4
    mov ax, 0x12
    push ax
    mov ax, 0x5a
    push ax
    db 0xe8, 0x3f, 0xe1 ; call 0xe809
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xc8
    push ax
    db 0xe8, 0x63, 0xae ; call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    db 0xe8, 0x68, 0xe1 ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c18]
    db 0xe8, 0xe7, 0xab ; call 0xb2e7
    add sp, byte 6
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5bfc]
    mov dx, word [bx + 0x5bfe]
    mov cx, 0x16d
    mov bx, 0
    db 0xe8, 0x83, 0xf2 ; call 0xf99f
    add ax, strict word 0xffee
    adc dx, byte 0xff
    mov cx, 4
    mov bx, 0
    db 0xe8, 0x74, 0xf2 ; call 0xf99f
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
    db 0xe8, 0x13, 0xf2 ; call 0xf99f
    mov word [data_9436], ax
    mov ax, 0x14
    push ax
    mov ax, 0
    push ax
    push word [data_9436]
    db 0xe8, 0x24, 0xb0 ; call 0xb7c2
    add sp, byte 6
    mov word [data_9436], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jae short @..local.l2
    mov ax, 0
    jmp short @..local.l3
@..local.l2:
    mov ax, 1
@..local.l3:
    mov word [data_9438], ax
    mov word [data_943a], 0
    push word [data_943a]
    call api_idx_000a
    pop cx
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    db 0xe8, 0x4c, 0xe0 ; call 0xe823
    add sp, byte 4
    mov word [bp - 0x0002], 0
@..local.l4:
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x23
    push ax
    mov ax, 0x73
    push ax
    db 0xe8, 0x19, 0xe0 ; call 0xe809
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xcc
    push ax
    db 0xe8, 0x3a, 0xad ; call 0xb53b
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    db 0xe8, 0x3f, 0xe0 ; call 0xe84e
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
    db 0xe8, 0xb8, 0xaa ; call 0xb2e7
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short @..local.l4
    mov ax, 0
    push ax
    mov ax, 0xfd
    push ax
    db 0xe8, 0xdb, 0xdf ; call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xc9
    push ax
    db 0xe8, 0xe5, 0xac ; call 0xb53b
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0xe4
    push ax
    db 0xe8, 0xa5, 0xdf ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    db 0xe8, 0xdc, 0xdf ; call 0xe84e
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
    db 0xe8, 0x9c, 0xac ; call 0xb53b
    add sp, byte 4
    mov ax, 6
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    db 0xe8, 0xe3, 0xf1 ; call 0xfa90
    pop cx
    mov cx, 0x34
    sub cx, ax
    mov ax, 6
    imul cx
    push ax
    db 0xe8, 0x4d, 0xdf ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    db 0xe8, 0x84, 0xdf ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x47
    push ax
    db 0xe8, 0x4b, 0xdf ; call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xca
    push ax
    db 0xe8, 0x55, 0xac ; call 0xb53b
    add sp, byte 4
    mov ax, 0xc
    push ax
    mov ax, 0xe4
    push ax
    db 0xe8, 0x15, 0xdf ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    db 0xe8, 0x4c, 0xdf ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    db 0xe8, 0x20, 0xdf ; call 0xe830
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
    db 0xe8, 0xff, 0xab ; call 0xb53b
    add sp, byte 4
    mov ax, 0x12
    push ax
    mov ax, 0xe4
    push ax
    db 0xe8, 0xbf, 0xde ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    db 0xe8, 0xf6, 0xde ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    db 0xe8, 0xca, 0xde ; call 0xe830
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
    db 0xe8, 0x0f, 0xa9 ; call 0xb293
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x1d
    push ax
    db 0xe8, 0x91, 0xde ; call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xd4
    push ax
    db 0xe8, 0x9b, 0xab ; call 0xb53b
    add sp, byte 4
    mov ax, 0x5d
    push ax
    mov ax, 6
    push ax
    db 0xe8, 0x5b, 0xde ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    db 0xe8, 0x92, 0xde ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    db 0xe8, 0x66, 0xde ; call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    db 0xe8, 0x4b, 0xde ; call 0xe823
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
    db 0xe8, 0x52, 0xde ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2f
    push ax
    db 0xe8, 0x26, 0xde ; call 0xe830
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c0e]
    db 0xe8, 0x5d, 0xa8 ; call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    db 0xe8, 0x20, 0xde ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1d
    push ax
    db 0xe8, 0xe7, 0xdd ; call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xd5
    push ax
    db 0xe8, 0xf1, 0xaa ; call 0xb53b
    add sp, byte 4
    mov ax, 0x63
    push ax
    mov ax, 6
    push ax
    db 0xe8, 0xb1, 0xdd ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    db 0xe8, 0xe8, 0xdd ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    db 0xe8, 0xbc, 0xdd ; call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    db 0xe8, 0xa1, 0xdd ; call 0xe823
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
    jge short @..local.l5
    cmp word [bx + 0x5c10], byte 0
    jle short @..local.l5
    mov ax, 1
    jmp short @..local.l6
@..local.l5:
    mov ax, word [bp - 0x0008]
@..local.l6:
    mov word [bp - 0x0008], ax
    lea ax, word [bp - 0x0058]
    push ax
    push word [bp - 0x0008]
    db 0xe8, 0xbc, 0xa7 ; call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    db 0xe8, 0x7f, 0xdd ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x9098
    push ax
    db 0xe8, 0x71, 0xdd ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1d
    push ax
    db 0xe8, 0x38, 0xdd ; call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x28
    push ax
    db 0xe8, 0x37, 0xdd ; call 0xe830
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c12]
    db 0xe8, 0x6e, 0xa7 ; call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    db 0xe8, 0x31, 0xdd ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x29
    push ax
    db 0xe8, 0x05, 0xdd ; call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xc4
    push ax
    db 0xe8, 0xea, 0xdc ; call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xd6
    push ax
    db 0xe8, 0xf4, 0xa9 ; call 0xb53b
    add sp, byte 4
    mov ax, 0x5d
    push ax
    mov ax, 0x5b
    push ax
    db 0xe8, 0xb4, 0xdc ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    db 0xe8, 0xeb, 0xdc ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    db 0xe8, 0xbf, 0xdc ; call 0xe830
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
    db 0xe8, 0xb5, 0xdc ; call 0xe84e
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
    db 0xe8, 0x50, 0xdc ; call 0xe823
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xd7
    push ax
    db 0xe8, 0x5a, 0xa9 ; call 0xb53b
    add sp, byte 4
    mov ax, 0x63
    push ax
    mov ax, 0x5b
    push ax
    db 0xe8, 0x1a, 0xdc ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    db 0xe8, 0x51, 0xdc ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    db 0xe8, 0x25, 0xdc ; call 0xe830
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
    db 0xe8, 0x55, 0xa6 ; call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    db 0xe8, 0x18, 0xdc ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2f
    push ax
    db 0xe8, 0xec, 0xdb ; call 0xe830
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
    db 0xe8, 0x1c, 0xa6 ; call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    db 0xe8, 0xdf, 0xdb ; call 0xe84e
    add sp, byte 4
    push word [bp + 0x4]
    call api_idx_0004
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
    jne short @..local.l7
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d5c], 0
    jbe short @..local.l7
    mov ax, 0
    jmp short @..local.l8
@..local.l7:
    mov ax, word [bp - 0x0006]
@..local.l8:
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jg short @..local.l9
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d5d], 0
    jbe short @..local.l9
    mov ax, 1
    jmp short @..local.l10
@..local.l9:
    mov ax, word [bp - 0x0006]
@..local.l10:
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    je short @..local.l11
    mov ax, 0x2d
    push ax
    mov ax, 0x51
    push ax
    db 0xe8, 0x24, 0xdb ; call 0xe809
    add sp, byte 4
    mov ax, 6
    push ax
    mov al, byte [bp - 0x0006]
    sub ah, ah
    push ax
    db 0xe8, 0x3b, 0xdb ; call 0xe830
    add sp, byte 4
    inc word [bp - 0x0004]
@..local.l11:
    mov word [bp - 0x006e], 6
    mov word [bp - 0x006c], 7
    mov word [bp - 0x006a], 5
    mov word [bp - 0x0068], 4
    mov word [bp - 0x0066], 8
    mov word [bp - 0x0064], 9
    mov word [bp - 0x0062], 1
    mov word [bp - 0x0006], 0xffff
    mov word [bp - 0x0002], 0
@..local.l12:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x006e]
    mov word [bp - 0x0008], ax
    cmp word [bp - 0x0004], byte 6
    jge short @..local.l13
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x92c]
    cmp ax, word [bp - 0x0006]
    je short @..local.l13
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0008]
    mov bx, ax
    cmp byte [bx + 0x5d5a], 0
    jbe short @..local.l13
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
    db 0xe8, 0x84, 0xda ; call 0xe809
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, word [bp - 0x0008]
    shl ax, 1
    mov bx, ax
    mov al, byte [bx + 0x92c]
    sub ah, ah
    push ax
    db 0xe8, 0x93, 0xda ; call 0xe830
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x92c]
    mov word [bp - 0x0006], ax
    inc word [bp - 0x0004]
@..local.l13:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jge short @..local.l14
    jmp near @..local.l12
@..local.l14:
    ret
loc_0dc0:
    mov ax, 0
    db 0xe8, 0x45, 0xe6 ; call 0xf40b
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
    db 0xe8, 0x04, 0xdb ; call 0xe901
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
    db 0xe8, 0xe7, 0xda ; call 0xe901
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
    db 0xe8, 0xca, 0xda ; call 0xe901
    add sp, byte 0x0a
    ret
api_idx_0004_2:
    mov ax, 0xfffc
    db 0xe8, 0xca, 0xe5 ; call 0xf40b
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
    db 0xe8, 0xb2, 0xa6 ; call 0xb53b
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6bc4], ax
    inc word [bp - 0x0004]
@..api_idx_0004_2.l2:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x66
    jl short @..api_idx_0004_2.l1
    mov ax, word [bp - 0x0004]
    ret
api_idx_000a_2:
    mov ax, 0xfff6
    db 0xe8, 0x59, 0xe5 ; call 0xf40b
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
    db 0xe8, 0xeb, 0xe0 ; call 0xefd1
    add sp, byte 0x16
    ret
math_loc_0eea:
    mov ax, 0
    db 0xe8, 0x1b, 0xe5 ; call 0xf40b
    push word [bp + 0x6]
    mov ax, 0xa
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    dec ax
    push ax
    db 0xe8, 0x08, 0xd9 ; call 0xe809
    add sp, byte 4
    mov ax, 7
    push ax
    mov ax, 0
    cmp word [bp + 0xa], byte 0
    je short @..math_loc_0eea.l1
    mov ax, 1
@..math_loc_0eea.l1:
    add ax, strict word 0x10
    sub ah, ah
    push ax
    db 0xe8, 0x13, 0xd9 ; call 0xe830
    add sp, byte 4
    push word [bp + 0x6]
    mov ax, 0xa
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    push ax
    db 0xe8, 0xd9, 0xd8 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    db 0xe8, 0xe8, 0xd8 ; call 0xe823
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, word [bp + 0x8]
    inc ax
    sub ah, ah
    push ax
    db 0xe8, 0xe4, 0xd8 ; call 0xe830
    add sp, byte 4
    cmp word [bp + 0x8], byte 0
    jne short @..math_loc_0eea.l2
    cmp word [bp + 0xa], byte 0
    jne short @..math_loc_0eea.l2
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
    db 0xe8, 0x8f, 0xd9 ; call 0xe901
    add sp, byte 0x0a
@..math_loc_0eea.l2:
    ret
loc_0f76:
    mov ax, 0
    db 0xe8, 0x8f, 0xe4 ; call 0xf40b
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
    db 0xe8, 0x47, 0xd9 ; call 0xe901
    add sp, byte 0x0a
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    db 0xe8, 0x3e, 0xd8 ; call 0xe809
    add sp, byte 4
    cmp word [bp + 0xa], byte 0
    jle short @..local.l15
    mov ax, word [bp + 0xa]
    cmp ax, word [bp + 0xc]
    jg short @..local.l15
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0x3c, 0xd8 ; call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    push word [bp + 0xa]
    db 0xe8, 0xef, 0xa2 ; call 0xb2e7
    add sp, byte 6
    jmp short @..local.l16
@..local.l15:
    mov ax, 0
    push ax
    push ax
    db 0xe8, 0x1e, 0xd8 ; call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x909b
    push ax
    db 0xe8, 0x3b, 0xd8 ; call 0xe84e
    add sp, byte 4
@..local.l16:
    ret
api_idx_000c_2:
    mov ax, 0xfff4
    db 0xe8, 0xee, 0xe3 ; call 0xf40b
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
    db 0xe8, 0x3f, 0xa2 ; call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    db 0xe8, 0xce, 0xd7 ; call 0xe823
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx + 0x18e]
    lea ax, word [bp - 0x000c]
    push ax
    db 0xe8, 0x24, 0xea ; call 0xfa90
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
    db 0xe8, 0x79, 0xd7 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x000c]
    push ax
    db 0xe8, 0xb0, 0xd7 ; call 0xe84e
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jge short @..api_idx_000c_2.l2
    jmp near @..api_idx_000c_2.l1
@..api_idx_000c_2.l2:
    ret
loc_10b0:
    mov ax, 0
    db 0xe8, 0x55, 0xe3 ; call 0xf40b
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
    mov ax, word [data_948c]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [data_9092]
    mov dx, word [data_9094]
    cmp bx, dx
    jg short @..local.l17
    jne short @..local.l18
    cmp cx, ax
    jbe short @..local.l18
@..local.l17:
    jmp short @..local.l19
@..local.l18:
    mov ax, word [data_908e]
    mov dx, word [data_9090]
    mov word [data_908c], dx
    mov word [data_908a], ax
    call api_idx_000a_2
    push word [bp + 0x4]
    call api_idx_000c_2
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
    db 0xe8, 0x9d, 0xd7 ; call 0xe8da
    add sp, byte 8
@..local.l19:
    ret
api_idx_0050:
    mov ax, 0xffb0
    db 0xe8, 0xc4, 0xe2 ; call 0xf40b
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
    mov ax, 0x909f
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
    db 0xe8, 0xbf, 0xaa ; call 0xbc9a
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
    db 0xe8, 0x37, 0xa3 ; call 0xb53b
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
    db 0xe8, 0x05, 0xa3 ; call 0xb53b
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
    db 0xe8, 0x6a, 0xae ; call 0xc0c1
    add sp, byte 0x0c
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x48
    push ax
    db 0xe8, 0x9e, 0xd5 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xcd
    push ax
    db 0xe8, 0xaa, 0xd5 ; call 0xe823
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, 0xa
    push ax
    db 0xe8, 0xa9, 0xd5 ; call 0xe830
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
    call math_loc_0eea
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
    call loc_0f76
    add sp, byte 0x0a
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call api_idx_0004_2
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
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0xed, 0xa6 ; call 0xbaa6
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
    db 0xe8, 0xbf, 0xa6 ; call 0xbaa6
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
    db 0xe8, 0x91, 0xa6 ; call 0xbaa6
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
    db 0xe8, 0x63, 0xa6 ; call 0xbaa6
    add sp, byte 0x0e
    mov word [bp - 0x0002], 0
@..local.l20:
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
    db 0xe8, 0x1d, 0xa6 ; call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short @..local.l20
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
    db 0xe8, 0xf0, 0xa5 ; call 0xbaa6
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
    db 0xe8, 0xce, 0xa5 ; call 0xbaa6
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
    db 0xe8, 0xac, 0xa5 ; call 0xbaa6
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
    db 0xe8, 0x8a, 0xa5 ; call 0xbaa6
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
    db 0xe8, 0x68, 0xa5 ; call 0xbaa6
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
    db 0xe8, 0x46, 0xa5 ; call 0xbaa6
    add sp, byte 0x0e
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short @..local.l21
    mov ax, word [bp - 0x0044]
@..local.l21:
    mov word [bp - 0x0020], ax
    mov word [bp - 0x0002], 0
@..local.l22:
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
    db 0xe8, 0xf8, 0xa4 ; call 0xbaa6
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short @..local.l22
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
    db 0xe8, 0xd7, 0xa4 ; call 0xbaa6
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
    db 0xe8, 0xf1, 0xd2 ; call 0xe8da
    add sp, byte 8
    mov word [data_948c], 7
    les bx, word [data_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [data_908c], dx
    mov word [data_908a], ax
    mov word [bp - 0x001c], 1
@..local.l23:
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call loc_10b0
    add sp, byte 4
    mov ax, 0x59fe
    push ax
    call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x001a], ax
    cmp word [data_59fc], byte 0
    je short @..local.l27
    mov ax, word [bp - 0x0022]
    cmp ax, word [bp - 0x0018]
    jl short @..local.l24
    inc word [bp - 0x0022]
@..local.l24:
    mov ax, word [bp - 0x0022]
    cmp ax, strict word 0xffff
    je short @..local.l25
    cmp ax, word [bp - 0x0018]
    jl short @..local.l25
    mov ax, word [bp - 0x0018]
    add ax, word [bp - 0x0020]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp - 0x0022]
    cmp cx, ax
    jge short @..local.l26
@..local.l25:
    mov ax, word [bp - 0x0018]
    mov word [bp - 0x0022], ax
@..local.l26:
    mov word [data_5b3e], 1
    mov ax, word [bp - 0x0022]
    sub ax, word [bp - 0x0018]
    add ax, strict word 0x12
    mov word [bp - 0x001a], ax
@..local.l27:
    cmp word [data_5b3e], byte 1
    je short @..local.l28
    jmp near @..local.l52
@..local.l28:
    mov ax, word [bp - 0x001a]
    jmp near @..local.l50

    db 0x8d, 0x46, 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0xce, 0xd9, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xee, 0x83
    db 0xc1, 0x2a, 0x2b, 0xc1, 0x50, 0xe8, 0x20, 0xa1, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xea, 0x8d, 0x46
    db 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0xa0, 0xd9, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe2, 0xff
    db 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x2a, 0x2b
    db 0xc1, 0x2b, 0x46, 0xea, 0x50, 0xe8, 0xf0, 0xa0, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xee, 0x83, 0x7e
    db 0xbc, 0x07, 0x7e, 0x20, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xec, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xfa, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7
    db 0xf9, 0x89, 0x46, 0xe8, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x77, 0xa8, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x99, 0xa8, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0x36, 0xa3, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x48, 0xd1, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe2, 0x00, 0x74
    db 0x03, 0xe9, 0x0a, 0xff, 0xe9, 0x13, 0x06, 0x83, 0x7e, 0xe6, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x28, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0xee, 0xa6
    db 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xe8, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xe8, 0xeb, 0x34, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x46, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0xbd
    db 0xa6, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xbc, 0x05, 0xf9, 0xff, 0x3b, 0x46, 0xe8, 0x7e, 0x03, 0xff
    db 0x46, 0xe8, 0x83, 0x7e, 0xbc, 0x07, 0x7e, 0x2c, 0xff, 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x64, 0x00, 0xf7, 0x6e, 0xec, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xf9, 0x99, 0xf7
    db 0xf9, 0xf7, 0x6e, 0xe8, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0x8a, 0x9f, 0x83, 0xc4
    db 0x06, 0x89, 0x46, 0xee, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x37, 0xa7, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x59, 0xa7, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xf6, 0xa1, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x08, 0xd0, 0x83, 0xc4, 0x08, 0xe9, 0xdc, 0x04, 0x83, 0x7e
    db 0x08, 0x00, 0x75, 0x03, 0xe9, 0xa1, 0x00, 0x83, 0x7e, 0xc4, 0x00, 0x7d, 0x03, 0xe9, 0x8a, 0x00
    db 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x3c, 0x8b, 0x46, 0xc2, 0x3b, 0x46, 0xc0, 0x7e, 0x03, 0xe9, 0x79
    db 0x00, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xc4, 0x8b, 0xd8, 0x8a, 0x87, 0x22, 0x06, 0x2a, 0xe4, 0x8b
    db 0x4e, 0xc2, 0x41, 0xf7, 0xe9, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8b, 0x56
    db 0xbe, 0xd1, 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x8b, 0x8f, 0x1c, 0x5c, 0x58, 0x3b, 0xc1
    db 0x7f, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x19, 0xa5, 0x83, 0xc4, 0x0a, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xf9, 0xa4, 0x83, 0xc4, 0x0a, 0xc7
    db 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x08
    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x5f, 0x9e, 0x59, 0xe9, 0x2f, 0x04, 0xb8, 0x01, 0x00, 0x50, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0xc0, 0xa4, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0xa0, 0xa4, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46
    db 0xe4, 0x00, 0x00, 0xe9, 0xe4, 0x03

@..local.l29:
    cmp word [bp - 0x001a], byte 5
    jge short @..local.l30
    jmp near @..local.l38
@..local.l30:
    cmp word [bp - 0x001a], byte 0x0b
    jle short @..local.l31
    jmp near @..local.l38
@..local.l31:
    mov ax, 0
    push ax
    push word [bp - 0x003e]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    call math_loc_0eea
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
    call math_loc_0eea
    add sp, byte 8
    cmp word [bp - 0x003c], byte 0
    jge short @..local.l32
    jmp near @..local.l36
@..local.l32:
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
    db 0xe8, 0x6c, 0x9d ; call 0xb7c2
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
    jne short @..local.l33
    mov ax, 0x3e7
    jmp short @..local.l35
@..local.l33:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short @..local.l34
    jmp short @..local.l35
@..local.l34:
    mov ax, word [bp - 0x0002]
@..local.l35:
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
    call loc_0f76
    add sp, byte 0x0a
    jmp short @..local.l37
@..local.l36:
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
    call loc_0f76
    add sp, byte 0x0a
@..local.l37:
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
    db 0xe8, 0xd3, 0xcd ; call 0xe8da
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
    db 0xe8, 0xb1, 0xcd ; call 0xe8da
    add sp, byte 8
    jmp near @..local.l49
@..local.l38:
    cmp word [bp - 0x001a], byte 0x0c
    jge short @..local.l39
    jmp near @..local.l43
@..local.l39:
    cmp word [bp - 0x001a], byte 0x11
    jle short @..local.l40
    jmp near @..local.l43
@..local.l40:
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
    jge short @..local.l41
    mov ax, word [bp - 0x0044]
@..local.l41:
    mov word [bp - 0x0024], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short @..local.l42
    mov ax, word [bp - 0x0044]
@..local.l42:
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
    db 0xe8, 0xf1, 0xa3 ; call 0xbf97
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
    db 0xe8, 0x0e, 0xa4 ; call 0xbfd8
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
    db 0xe8, 0xab, 0x9e ; call 0xbaa6
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
    call loc_0f76
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
    db 0xe8, 0xa1, 0xcc ; call 0xe8da
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
    db 0xe8, 0x7f, 0xcc ; call 0xe8da
    add sp, byte 8
    jmp near @..local.l49
@..local.l43:
    cmp word [bp - 0x001a], byte 0x12
    jge short @..local.l44
    jmp near @..local.l49
@..local.l44:
    mov ax, word [bp - 0x0020]
    add ax, strict word 0x12
    cmp ax, word [bp - 0x001a]
    jg short @..local.l45
    jmp near @..local.l49
@..local.l45:
    mov ax, word [bp - 0x0018]
    add ax, word [bp - 0x001a]
    add ax, strict word 0xffee
    mov word [bp - 0x0022], ax
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6bc4]
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
    db 0xe8, 0xe6, 0xa2 ; call 0xbf97
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
    db 0xe8, 0xe2, 0x9a ; call 0xb7c2
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
    jne short @..local.l46
    mov ax, 0x3e7
    jmp short @..local.l48
@..local.l46:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5c1c]
    cmp ax, word [bp - 0x0002]
    jge short @..local.l47
    jmp short @..local.l48
@..local.l47:
    mov ax, word [bp - 0x0002]
@..local.l48:
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
    call loc_0f76
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
    db 0xe8, 0x67, 0xcb ; call 0xe8da
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
    db 0xe8, 0x45, 0xcb ; call 0xe8da
    add sp, byte 8
@..local.l49:
    jmp short @..local.l52
    shl word [bp - 0x0018], 0x67
    call 0x3d08
    db 0x69, 0xcc, 0x69
@..local.l50:
    cmp ax, strict word 5
    jae short @..local.l51
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x6de1]
@..local.l51:
    jmp near @..local.l29
@..local.l52:
    cmp word [bp - 0x001c], byte 0
    je short @..local.l53
    jmp near @..local.l23
@..local.l53:
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
    db 0xe8, 0xf9, 0xca ; call 0xe8da
    add sp, byte 8
    mov word [bp - 0x0002], 0
@..local.l54:
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
    jl short @..local.l54
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
api_idx_00ca:
    mov ax, 0xff36
    db 0xe8, 0xd4, 0xd5 ; call 0xf40b
    mov ax, word [bp + 0x6]
    jmp short @..api_idx_00ca.l5
@..api_idx_00ca.l1:
    mov word [bp - 0x000c], 8
    mov word [bp - 0x000e], 0x20
    jmp short @..api_idx_00ca.l6
@..api_idx_00ca.l2:
    mov word [bp - 0x000c], 4
    mov word [bp - 0x000e], 0x1e
    jmp short @..api_idx_00ca.l6
@..api_idx_00ca.l3:
    mov word [bp - 0x000c], 2
    mov word [bp - 0x000e], 0x1f
    jmp short @..api_idx_00ca.l6
@..api_idx_00ca.l4:
    mov word [bp - 0x000c], 1
    mov word [bp - 0x000e], 0x1d
    jmp short @..api_idx_00ca.l6
@..api_idx_00ca.l5:
    cmp ax, strict word 0
    je short @..api_idx_00ca.l1
    cmp ax, strict word 1
    je short @..api_idx_00ca.l2
    cmp ax, strict word 2
    je short @..api_idx_00ca.l4
    cmp ax, strict word 3
    je short @..api_idx_00ca.l3
@..api_idx_00ca.l6:
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
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x000e]
    mov bx, ax
    mov al, byte [bx + 0x5d6c]
    sub ah, ah
    mov cx, 0x12
    cwd
    idiv cx
    inc ax
    mov word [bp - 0x000a], ax
    cmp byte [bx + 0x5d6c], 0x62
    jb short @..api_idx_00ca.l7
    mov word [bp - 0x000a], 7
@..api_idx_00ca.l7:
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
@..api_idx_00ca.l8:
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x625]
    sub ah, ah
    test word [bp - 0x000c], ax
    je short @..api_idx_00ca.l9
    mov al, byte [bx + 0x621]
    sub ah, ah
    cmp ax, word [bp - 0x000a]
    jg short @..api_idx_00ca.l9
    push word [bp - 0x0002]
    lea ax, word [bp - 0x001e]
    push ax
    db 0xe8, 0x6b, 0xcd ; call 0xec74
    add sp, byte 4
    test ax, ax
    jne short @..api_idx_00ca.l9
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
@..api_idx_00ca.l9:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x66
    jl short @..api_idx_00ca.l8
    cmp word [bp - 0x0004], byte 0
    jne short @..local.l55
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    mov byte [bx + 0x5d50], 0
    mov ax, 0x10
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    lea ax, word [bp - 0x001e]
    push ax
    db 0xe8, 0x7c, 0xdf ; call 0xfedc
    add sp, byte 6
    ret
@..local.l55:
    lea ax, word [bp - 0x007a]
    push ax
    mov ax, 0x2be
    push ax
    db 0xe8, 0xcc, 0x95 ; call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x00ca]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    add ax, strict word 0x78
    push ax
    db 0xe8, 0xaf, 0x95 ; call 0xb53b
    add sp, byte 4
    mov ax, 0x24
    push ax
    lea ax, word [bp - 0x00ca]
    push ax
    lea ax, word [bp - 0x007a]
    push ax
    call 0xb300
    add sp, byte 6
    mov ax, 1
    push ax
    lea ax, word [bp - 0x007a]
    push ax
    call api_idx_0004_5
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
    db 0xe8, 0xff, 0xde ; call 0xfedc
    add sp, byte 6
    cmp word [bp - 0x0004], byte 0
    je short @..local.l56
    jmp near @..local.l58
@..local.l56:
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
    db 0xe8, 0x37, 0xcc ; call 0xec41
    add sp, byte 6
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x000e]
    mov bx, ax
    mov al, byte [bx + 0x5d6c]
    sub ah, ah
    mov cx, 0x14
    cwd
    idiv cx
    push ax
    call 0xb7a9
    pop cx
    push ax
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
    mov cx, ax
    pop ax
    add ax, cx
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
    jge short @..local.l57
    mov ax, 0x248
    imul word [bp + 0x4]
    mov dx, word [bp - 0x0004]
    shl dx, 1
    shl dx, 1
    add ax, dx
    mov bx, ax
    sub cx, word [bx + 0x5c1e]
    mov word [bp - 0x0002], cx
@..local.l57:
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
@..local.l58:
    ret
math_loc_20e3:
    mov ax, 0
    db 0xe8, 0x22, 0xd3 ; call 0xf40b
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
    mov ax, word [data_948c]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [data_9092]
    mov dx, word [data_9094]
    cmp bx, dx
    jg short @..math_loc_20e3.l1
    jne short @..math_loc_20e3.l2
    cmp cx, ax
    jbe short @..math_loc_20e3.l2
@..math_loc_20e3.l1:
    jmp short @..math_loc_20e3.l3
@..math_loc_20e3.l2:
    mov ax, word [data_908e]
    mov dx, word [data_9090]
    mov word [data_908c], dx
    mov word [data_908a], ax
    mov ax, word [data_943a]
    inc ax
    mov cx, 3
    cwd
    idiv cx
    mov word [data_943a], dx
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
    db 0xe8, 0x7a, 0xc7 ; call 0xe8da
    add sp, byte 8
    mov ax, 0xffff
    push ax
    call api_idx_0002_2
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
    db 0xe8, 0x55, 0xc7 ; call 0xe8da
    add sp, byte 8
@..math_loc_20e3.l3:
    ret
math_loc_2189:
    mov ax, 0
    db 0xe8, 0x7c, 0xd2 ; call 0xf40b
    push word [bp + 0x4]
    call api_idx_007c
    pop cx
    push word [bp + 0x4]
    call api_idx_0080
    pop cx
    cmp word [bp + 0x6], byte 0
    jne short @..math_loc_2189.l1
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
    db 0xe8, 0x20, 0xc7 ; call 0xe8da
    add sp, byte 8
@..math_loc_2189.l1:
    ret
api_idx_0004_3:
    mov ax, 0xfffc
    db 0xe8, 0x47, 0xd2 ; call 0xf40b
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
@..api_idx_0004_3.l1:
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
    jl short @..api_idx_0004_3.l1
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
    je short @..api_idx_0004_3.l2
    cmp byte [bx + 0x5e2d], 0xd
    jne short @..api_idx_0004_3.l3
@..api_idx_0004_3.l2:
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
    jmp short @..api_idx_0004_3.l4
@..api_idx_0004_3.l3:
    cmp word [bp - 0x0004], byte 0
    jle short @..api_idx_0004_3.l4
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
@..api_idx_0004_3.l4:
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
    jne short @..api_idx_0004_3.l6
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
    jne short @..api_idx_0004_3.l5
    mov bx, cx
    add byte [bx + 0x5d32], 0xf1
    mov al, byte [bx + 0x5d2e]
    sub ah, ah
    shl ax, 1
    mov byte [bx + 0x5d2e], al
@..api_idx_0004_3.l5:
    jmp near @..api_idx_0004_3.l12
@..api_idx_0004_3.l6:
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
    jne short @..api_idx_0004_3.l9
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d32]
    cbw
    mov cx, 0
    cmp byte [bx + 0x5d68], 0xf
    jbe short @..api_idx_0004_3.l7
    mov cx, 5
@..api_idx_0004_3.l7:
    sub ax, cx
    mov byte [bx + 0x5d32], al
    cbw
    mov cx, 0
    cmp byte [bx + 0x5d68], 0x11
    jbe short @..api_idx_0004_3.l8
    mov cx, 5
@..api_idx_0004_3.l8:
    sub ax, cx
    mov byte [bx + 0x5d32], al
    jmp short @..api_idx_0004_3.l11
@..api_idx_0004_3.l9:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d44]
    cbw
    mov cx, 0
    cmp byte [bx + 0x5d68], 0x11
    jbe short @..api_idx_0004_3.l10
    mov cx, 5
@..api_idx_0004_3.l10:
    sub ax, cx
    mov byte [bx + 0x5d44], al
@..api_idx_0004_3.l11:
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
@..api_idx_0004_3.l12:
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
    jne short @..local.l62
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d64], 0xf
    jbe short @..local.l59
    mov ax, 1
    jmp short @..local.l60
@..local.l59:
    mov ax, 0
@..local.l60:
    add word [bx + 0x5d24], ax
    mov ax, 0
    cmp byte [bx + 0x5d64], 0x11
    jbe short @..local.l61
    mov ax, 1
@..local.l61:
    add word [bx + 0x5d24], ax
@..local.l62:
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
api_idx_002a:
    mov ax, 0xffd6
    db 0xe8, 0xbe, 0xcf ; call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0x28
    push ax
    lea ax, word [bp - 0x002a]
    push ax
    db 0xe8, 0xaa, 0xce ; call 0xf306
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
    db 0xe8, 0x07, 0xd6 ; call 0xfa90
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
    db 0xe8, 0x74, 0xc3 ; call 0xe823
    add sp, byte 4
    push word [bp + 0x8]
    push word [bp + 0x6]
    db 0xe8, 0x4e, 0xc3 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x002a]
    push ax
    db 0xe8, 0x85, 0xc3 ; call 0xe84e
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 6
    push ax
    push word [bp + 0x6]
    db 0xe8, 0x30, 0xc3 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    lea cx, word [bp - 0x0029]
    add ax, cx
    push ax
    db 0xe8, 0x62, 0xc3 ; call 0xe84e
    add sp, byte 4
    ret
api_idx_0080:
    mov ax, 0xff80
    db 0xe8, 0x15, 0xcf ; call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [data_9424]
    push word [data_9422]
    db 0xe8, 0x3c, 0xc4 ; call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    push word [data_9428]
    push word [data_9426]
    db 0xe8, 0x29, 0xc4 ; call 0xe942
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
    db 0xe8, 0xd3, 0x8f ; call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    db 0xe8, 0x1e, 0xd5 ; call 0xfa90
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
    db 0xe8, 0xdb, 0x8c ; call 0xb27d
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    db 0xe8, 0xe4, 0xd4 ; call 0xfa90
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
    db 0xe8, 0x95, 0x8c ; call 0xb27d
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    db 0xe8, 0x9e, 0xd4 ; call 0xfa90
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
    db 0xe8, 0x0e, 0xc2 ; call 0xe823
    add sp, byte 4
    mov ax, 0x1e
    push ax
    lea ax, word [bp - 0x0068]
    push ax
    db 0xe8, 0x6d, 0xd4 ; call 0xfa90
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
    db 0xe8, 0xcf, 0xc1 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0068]
    push ax
    db 0xe8, 0x06, 0xc2 ; call 0xe84e
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
@..api_idx_0080.l3:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    push word [bx - 0x0080]
    mov bx, ax
    add bx, bp
    push word [bx - 0x0074]
    db 0xe8, 0x71, 0xc1 ; call 0xe809
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
    db 0xe8, 0x62, 0xc1 ; call 0xe823
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
    db 0xe8, 0x46, 0xc1 ; call 0xe830
    add sp, byte 4
@..api_idx_0080.l6:
    lea ax, word [bp - 0x0068]
    push ax
    push word [bp - 0x0006]
    db 0xe8, 0x86, 0x8b ; call 0xb27d
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0068]
    push ax
    db 0xe8, 0x49, 0xc1 ; call 0xe84e
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 5
    jge short @..local.l63
    jmp near @..api_idx_0080.l3
@..local.l63:
    ret
api_idx_0004_4:
    mov ax, 0xfffc
    db 0xe8, 0xee, 0xcc ; call 0xf40b
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
    db 0xe8, 0x9d, 0xc0 ; call 0xe809
    add sp, byte 4
    mov ax, 4
    push ax
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x5]
    sub ah, ah
    push ax
    db 0xe8, 0xb1, 0xc0 ; call 0xe830
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
    jne short @..api_idx_0004_4.l1
    mov ax, word [bp - 0x0004]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x38
    push ax
    db 0xe8, 0x4f, 0xc0 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    db 0xe8, 0x5b, 0xc0 ; call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x6]
    sub ah, ah
    push ax
    db 0xe8, 0x08, 0x8b ; call 0xb2e7
    add sp, byte 6
@..api_idx_0004_4.l1:
    ret
api_idx_004c:
    mov ax, 0xffb4
    db 0xe8, 0x22, 0xcc ; call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [data_9420]
    push word [data_941e]
    db 0xe8, 0x49, 0xc1 ; call 0xe942
    add sp, byte 8
    cmp word [data_948e], byte 0
    je short @..api_idx_004c.l1
    mov ax, 0xac
    push ax
    mov ax, 0xa0
    push ax
    db 0xe8, 0xfb, 0xbf ; call 0xe809
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 0x63
    push ax
    db 0xe8, 0x14, 0xc0 ; call 0xe830
    add sp, byte 4
@..api_idx_004c.l1:
    cmp word [data_9490], byte 0
    jne short @..api_idx_004c.l2
    cmp word [data_948e], byte 0
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
    db 0xe8, 0xac, 0xc0 ; call 0xe901
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
    db 0xe8, 0x7a, 0xc0 ; call 0xe901
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
    imul word [data_948e]
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
    jmp near @..local.l64
@..api_idx_004c.l7:
    cmp word [data_9492], byte 0
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
    call 0xb63c
    add sp, byte 8
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [data_948e]
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
    add ax, 0x9494
    push ax
    db 0xe8, 0x42, 0xca ; call 0xf364
    add sp, byte 4
    jmp short @..api_idx_004c.l10
@..api_idx_004c.l9:
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, 0x9494
    push ax
    mov al, byte [bp - 0x0013]
    sub ah, ah
    add ax, 0x1770
    push ax
    db 0xe8, 0xfe, 0x8b ; call 0xb53b
    add sp, byte 4
@..api_idx_004c.l10:
    mov al, byte [bp - 0x0012]
    sub ah, ah
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6a90], ax
@..api_idx_004c.l11:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6a7c], 0x69
    cmp word [data_948e], byte 0
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
    mov word [bx - 0x6a7c], ax
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
    imul word [data_948e]
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
    je short @..api_idx_004c.l15
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6a7c], 0x55
@..api_idx_004c.l15:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx - 0x6a7c]
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, 0x9494
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [data_948e]
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
    call api_idx_0004_4
    add sp, byte 0x0a
@..local.l64:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jge short @..local.l65
    jmp near @..api_idx_004c.l6
@..local.l65:
    mov word [data_9492], 1
    ret
math_loc_2a32:
    mov ax, 0
    db 0xe8, 0xd3, 0xc9 ; call 0xf40b
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
    db 0xe8, 0x5e, 0x8d ; call 0xb7c2
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
api_idx_0006:
    mov ax, 0xfffa
    db 0xe8, 0x80, 0xc9 ; call 0xf40b
    mov word [bp - 0x0002], 0
@..api_idx_0006.l1:
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
    jge short @..api_idx_0006.l2
    mov ax, cx
    jmp short @..api_idx_0006.l3
@..api_idx_0006.l2:
    mov ax, word [bx + 0x5c18]
@..api_idx_0006.l3:
    mov word [bp - 0x0006], ax
    mov ax, 0x10
    cmp word [bp - 0x0006], byte 0x10
    jg short @..api_idx_0006.l4
    mov ax, word [bp - 0x0006]
    dec ax
@..api_idx_0006.l4:
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
    call math_loc_2a32
    add sp, byte 8
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xe
    jge short @..api_idx_0006.l5
    jmp near @..api_idx_0006.l1
@..api_idx_0006.l5:
    ret
api_idx_0002_4:
    mov ax, 0xfffe
    db 0xe8, 0xeb, 0xc8 ; call 0xf40b
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
    jge short @..api_idx_0002_4.l1
    mov ax, cx
    jmp short @..api_idx_0002_4.l2
@..api_idx_0002_4.l1:
    mov ax, word [bx + 0x5c18]
@..api_idx_0002_4.l2:
    mov word [bp - 0x0002], ax
    push ax
    cmp ax, strict word 0x14
    pop ax
    jle short @..api_idx_0002_4.l3
    mov ax, 0x14
@..api_idx_0002_4.l3:
    mov word [bp - 0x0002], ax
    mov cx, 3
    cwd
    idiv cx
    inc ax
    push ax
    mov ax, 1
    push ax
    push word [bp + 0x6]
    db 0xe8, 0x5e, 0x8c ; call 0xb7c2
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
    db 0xe8, 0x1b, 0x8c ; call 0xb7c2
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
    db 0xe8, 0xd5, 0x8b ; call 0xb7c2
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
api_idx_0052:
    mov ax, 0xffae
    db 0xe8, 0xf9, 0xc7 ; call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp near 0x2d02
    mov ax, 0x90b4
    push ax
    mov ax, 0x90a5
    push ax
    push word [bp + 0x4]
    call api_idx_0006
    add sp, byte 6
    jmp near @..api_idx_0052.l12
    mov ax, 0x90d2
    push ax
    mov ax, 0x90c3
    push ax
    push word [bp + 0x4]
    call api_idx_0006
    add sp, byte 6
    jmp near @..api_idx_0052.l12
    mov ax, 0x90f0
    push ax
    mov ax, 0x90e1
    push ax
    push word [bp + 0x4]
    call api_idx_0006
    add sp, byte 6
    jmp near @..api_idx_0052.l12
    mov ax, 0x910e
    push ax
    mov ax, 0x90ff
    push ax
    push word [bp + 0x4]
    call api_idx_0006
    add sp, byte 6
    jmp near @..api_idx_0052.l12
    mov ax, 0x912c
    push ax
    mov ax, 0x911d
    push ax
    push word [bp + 0x4]
    call api_idx_0006
    add sp, byte 6
    jmp near @..api_idx_0052.l12
    mov ax, 0x914a
    push ax
    mov ax, 0x913b
    push ax
    push word [bp + 0x4]
    call api_idx_0006
    add sp, byte 6
    jmp short @..api_idx_0052.l12
    mov ax, 0x9168
    push ax
    mov ax, 0x9159
    push ax
    push word [bp + 0x4]
    call api_idx_0006
    add sp, byte 6
    jmp short @..api_idx_0052.l12
    mov ax, 0x9186
    push ax
    mov ax, 0x9177
    push ax
    push word [bp + 0x4]
    call api_idx_0006
@..api_idx_0052.l3:
    add sp, byte 6
    jmp short @..api_idx_0052.l12
    mov ax, 0x91a4
    push ax
    mov ax, 0x9195
    push ax
    push word [bp + 0x4]
    call api_idx_0006
    add sp, byte 6
    jmp short @..api_idx_0052.l12
    mov ax, 0x91c2
@..api_idx_0052.l5:
    push ax
    mov ax, 0x91b3
    push ax
    push word [bp + 0x4]
    call api_idx_0006
    add sp, byte 6
    jmp short @..api_idx_0052.l12
    db 0x6a, 0x7c ; push 0x7c
    into
    jl short 0x2cdf
    jl short @..api_idx_0052.l10
@..api_idx_0052.l7:
    jge short 0x2d6d
    jl short 0x2cbf
    jl short 0x2d0d
    jge short @..api_idx_0052.l5
    jl short 0x2d75
    jl short @..api_idx_0052.l7
    jl short 0x2c8d
    jl short 0x2ca3
    jl short 0x2d06
    jge short @..api_idx_0052.l3
    jl short @..api_idx_0052.l13
    push cs
    add byte [bp + di + 0x8], dh
@..api_idx_0052.l10:
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x7d2d]
@..api_idx_0052.l12:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2b]
    sub ah, ah
    jmp near @..local.l66
    mov ax, 0x14
    push ax
    mov ax, 0xb
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    jmp near @..local.l67
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
@..api_idx_0052.l13:
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
    call math_loc_2a32
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
    call math_loc_2a32
    add sp, byte 8
    jmp near @..local.l67
    mov ax, 0x14
    push ax
    mov ax, 9
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    jmp near @..local.l67
    mov ax, 0x19
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    mov ax, 0x19
    push ax
    mov ax, 4
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    mov ax, 0x19
    push ax
    mov ax, 7
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    mov ax, 0x19
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    mov ax, 0x19
    push ax
    mov ax, 0xb
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
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
    db 0xeb, 0x23, 0x67, 0x7d, 0xd2, 0x7d, 0x7f, 0x7d, 0xa7, 0x7d, 0x7f, 0x7d, 0xea
    db '}V~V~'
    db 0x98, 0x7e, 0xc2, 0x7e, 0xd9, 0x7e

@..local.l66:
    cmp ax, strict word 0xb
    jae short @..local.l67
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x7f05]
@..local.l67:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d67], 0xf
    jbe short @..local.l68
    mov ax, 5
    push ax
    mov ax, 6
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    mov ax, 5
    push ax
    mov ax, 0xb
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
@..local.l68:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d65], 0xf
    jbe short @..local.l69
    mov ax, 5
    push ax
    mov ax, 9
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
@..local.l69:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d69], 0xf
    jbe short @..local.l70
    mov ax, 5
    push ax
    mov ax, 7
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
@..local.l70:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d83], 0
    jbe short @..local.l71
    mov al, byte [bx + 0x5d83]
    sub ah, ah
    mov cx, 2
    cwd
    idiv cx
    push ax
    mov ax, 9
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d83]
    sub ah, ah
    mov cx, 3
    cwd
    idiv cx
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2a32
    add sp, byte 8
@..local.l71:
    mov word [bp - 0x0004], 0
@..local.l72:
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x5d8e]
    mov byte [bx + 0x5d9c], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0xe
    jl short @..local.l72
    mov word [bp - 0x0004], 0
@..local.l73:
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    cmp ax, 0xff
    jne short @..local.l74
    jmp near @..local.l76
@..local.l74:
    mov word [bp - 0x000a], 0
@..local.l75:
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    mov cx, 0xc
    imul cx
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp - 0x000a]
    mov bx, ax
    mov al, byte [bx + 0x5c3c]
    sub ah, ah
    mov cx, 0x10
    cwd
    idiv cx
    mov word [bp - 0x0006], ax
    mov ax, 0xa
    imul dx
    mov word [bp - 0x0008], ax
    mov ax, 0x7d
    push ax
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + 0x5d9c]
    sub ah, ah
    add ax, word [bp - 0x0008]
    push ax
    db 0xe8, 0x5a, 0x87 ; call 0xb7c2
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    add ax, word [bp - 0x0006]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5d9c], al
    inc word [bp - 0x000a]
    mov ax, word [bp - 0x000a]
    cmp ax, strict word 2
    jl short @..local.l75
@..local.l76:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 8
    jge short @..local.l77
    jmp near @..local.l73
@..local.l77:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp short @..local.l78

    db 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x04, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x59, 0xfa, 0x83, 0xc4, 0x0c, 0xeb, 0x61, 0xb8
    db 0x07, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xff, 0x76, 0x04
    db 0xe8, 0x40, 0xfa, 0x83, 0xc4, 0x0c, 0xeb, 0x48, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x21, 0xfa, 0x83, 0xc4, 0x0c, 0xeb, 0x29, 0xee, 0x80, 0x0d, 0x81, 0x26, 0x81, 0x26, 0x81, 0xee
    db 0x80, 0x0d, 0x81, 0x26, 0x81, 0x0d, 0x81, 0xee, 0x80, 0x0d, 0x81, 0xee, 0x80, 0xee, 0x80, 0xee
    db 0x80, 0xee, 0x80

@..local.l78:
    cmp ax, strict word 0xe
    jae short @..local.l79
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7ebb]
@..local.l79:
    mov word [bp - 0x0002], 0
@..local.l80:
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call 0xc608
    add sp, byte 4
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    cmp ax, 0xff
    je short @..local.l81
    mov ax, 0
    push ax
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
    push word [bx + 0x5c34]
    lea ax, word [bp - 0x0052]
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0xc2, 0x84 ; call 0xb63c
    add sp, byte 8
    lea ax, word [bp - 0x0052]
    push ax
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_0004_3
    add sp, byte 6
@..local.l81:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 2
    jl short @..local.l80
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + 0x5daa], 0xa
    mov al, byte [bx + 0x5daa]
    cbw
    mov cx, 0
    cmp byte [bx + 0x5d69], 0xf
    jbe short @..local.l82
    mov cx, 1
@..local.l82:
    sub ax, cx
    mov byte [bx + 0x5daa], al
    cbw
    mov cx, 0
    cmp byte [bx + 0x5d69], 0x11
    jbe short @..local.l83
    mov cx, 1
@..local.l83:
    sub ax, cx
    mov byte [bx + 0x5daa], al
    mov al, byte [bx + 0x5daa]
    cbw
    mov cx, 0
    cmp byte [bx + 0x5e2b], 5
    jne short @..local.l84
    mov cx, 2
@..local.l84:
    sub ax, cx
    mov byte [bx + 0x5daa], al
    cmp byte [bx + 0x5e2d], 0xd
    je short @..local.l85
    cmp byte [bx + 0x5e2d], 0xc
    jne short @..local.l87
@..local.l85:
    mov ax, 0xa
    cmp word [bx + 0x5c18], byte 0x14
    jg short @..local.l86
    mov ax, word [bx + 0x5c18]
    mov cx, 2
    cwd
    idiv cx
@..local.l86:
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
@..local.l87:
    mov word [bp - 0x0002], 3
@..local.l88:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5daa]
    add bx, word [bp - 0x0002]
    mov byte [bx + 0x5daa], al
    mov al, byte [bx + 0x5d48]
    sub ah, ah
    cmp ax, 0xff
    je short @..local.l89
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
    mov al, byte [bx + 0x5c3f]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    add ax, word [bp - 0x0002]
    mov bx, ax
    pop ax
    sub byte [bx + 0x5daa], al
@..local.l89:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short @..local.l88
    ret
api_idx_0004_5:
    mov ax, 0xfffc
    db 0xe8, 0x7d, 0xc1 ; call 0xf40b
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
    db 0xe8, 0xdc, 0xc7 ; call 0xfa90
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
    db 0xe8, 0x3e, 0xb5 ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    db 0xe8, 0x4a, 0xb5 ; call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    db 0xe8, 0x68, 0xb5 ; call 0xe84e
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0
    push ax
    db 0xe8, 0xde, 0xb5 ; call 0xe8da
    add sp, byte 8
    cmp word [bp + 0x6], byte 0
    jle short @..api_idx_0004_5.l1
    mov ax, 0
    push ax
    call 0xb7e0
    pop cx
@..api_idx_0004_5.l1:
    push word [data_905a]
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
    db 0xe8, 0xa2, 0xb5 ; call 0xe8da
    add sp, byte 8
    ret
api_idx_0020:
    mov ax, 0xffe0
    db 0xe8, 0xc9, 0xc0 ; call 0xf40b
    cmp word [bp + 0x4], byte 0
    je short @..api_idx_0020.l1
    jmp near @..api_idx_0020.l2
@..api_idx_0020.l1:
    lea ax, word [bp - 0x000c]
    push ax
    push word [bp + 0xe]
    db 0xe8, 0xe6, 0x81 ; call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x0016]
    push ax
    push word [bp + 0xa]
    db 0xe8, 0x1b, 0x7f ; call 0xb27d
    add sp, byte 4
    lea ax, word [bp - 0x0020]
    push ax
    push word [bp + 0xc]
    db 0xe8, 0x0e, 0x7f ; call 0xb27d
    add sp, byte 4
    lea ax, word [bp - 0x000c]
    push ax
    db 0xe8, 0x17, 0xc7 ; call 0xfa90
    pop cx
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    db 0xe8, 0x0e, 0xc7 ; call 0xfa90
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    push word [bp + 0x10]
    db 0xe8, 0x01, 0xc7 ; call 0xfa90
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    lea ax, word [bp - 0x0020]
    push ax
    db 0xe8, 0xf3, 0xc6 ; call 0xfa90
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    push word [bp + 0x12]
    db 0xe8, 0xe6, 0xc6 ; call 0xfa90
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    inc ax
    mov word [bp - 0x0002], ax
    push word [bp + 0x14]
    mov ax, word [bp + 0x8]
    add ax, strict word 4
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    dec ax
    dec ax
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    db 0xe8, 0x2e, 0xb5 ; call 0xe901
    add sp, byte 0x0a
    push word [bp + 0x8]
    push word [bp + 0x6]
    db 0xe8, 0x2a, 0xb4 ; call 0xe809
    add sp, byte 4
    push word [bp + 0x14]
    push word [bp + 0x16]
    db 0xe8, 0x38, 0xb4 ; call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x000c]
    push ax
    db 0xe8, 0x55, 0xb4 ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    db 0xe8, 0x29, 0xb4 ; call 0xe830
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    db 0xe8, 0x39, 0xb4 ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x10]
    db 0xe8, 0x2c, 0xb4 ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0020]
    push ax
    db 0xe8, 0x1e, 0xb4 ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x12]
    db 0xe8, 0x11, 0xb4 ; call 0xe84e
    add sp, byte 4
    jmp short @..api_idx_0020.l3
@..api_idx_0020.l2:
    lea ax, word [bp - 0x000c]
    push ax
    push word [bp + 0xe]
    db 0xe8, 0xef, 0x80 ; call 0xb53b
    add sp, byte 4
    mov word [bp - 0x0002], 6
    push word [bp + 0x14]
    mov ax, word [bp + 0x8]
    add ax, strict word 4
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    dec ax
    dec ax
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    db 0xe8, 0x8e, 0xb4 ; call 0xe901
    add sp, byte 0x0a
    push word [bp + 0x8]
    push word [bp + 0x6]
    db 0xe8, 0x8a, 0xb3 ; call 0xe809
    add sp, byte 4
    push word [bp + 0x14]
    push word [bp + 0x16]
    db 0xe8, 0x98, 0xb3 ; call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x000c]
    push ax
    db 0xe8, 0xb5, 0xb3 ; call 0xe84e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    push word [bp + 0xa]
    db 0xe8, 0x3d, 0x7e ; call 0xb2e7
    add sp, byte 6
@..api_idx_0020.l3:
    mov ax, word [bp + 0x8]
    add ax, strict word 4
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    dec ax
    dec ax
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    db 0xe8, 0x11, 0xb4 ; call 0xe8da
    add sp, byte 8
    ret
api_idx_0004_6:
    mov ax, 0xfffc
    db 0xe8, 0x38, 0xbf ; call 0xf40b
    mov ax, word [data_0038]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
@..api_idx_0004_6.l1:
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short @..api_idx_0004_6.l2
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    add ax, si
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short @..api_idx_0004_6.l3
@..api_idx_0004_6.l2:
    mov ax, 1
    jmp short @..api_idx_0004_6.l4
@..api_idx_0004_6.l3:
    mov ax, 0
@..api_idx_0004_6.l4:
    add si, word [bp - 0x0004]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6a68], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jl short @..api_idx_0004_6.l1
    mov ax, word [data_003c]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
@..api_idx_0004_6.l5:
    mov bx, word [bp + 0x8]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short @..api_idx_0004_6.l6
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    add ax, si
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short @..api_idx_0004_6.l7
@..api_idx_0004_6.l6:
    mov ax, 1
    jmp short @..api_idx_0004_6.l8
@..api_idx_0004_6.l7:
    mov ax, 0
@..api_idx_0004_6.l8:
    add si, word [bp - 0x0004]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6a68], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short @..api_idx_0004_6.l5
    mov ax, word [data_0040]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
@..api_idx_0004_6.l9:
    mov bx, word [bp + 0xa]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short @..api_idx_0004_6.l10
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    add ax, si
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short @..api_idx_0004_6.l11
@..api_idx_0004_6.l10:
    mov ax, 1
    jmp short @..api_idx_0004_6.l12
@..api_idx_0004_6.l11:
    mov ax, 0
@..api_idx_0004_6.l12:
    add si, word [bp - 0x0004]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6a68], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_0004_6.l9
    mov ax, word [data_0044]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
@..api_idx_0004_6.l13:
    mov bx, word [bp + 0xc]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short @..api_idx_0004_6.l14
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    add ax, si
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short @..api_idx_0004_6.l15
@..api_idx_0004_6.l14:
    mov ax, 1
    jmp short @..api_idx_0004_6.l16
@..api_idx_0004_6.l15:
    mov ax, 0
@..api_idx_0004_6.l16:
    add si, word [bp - 0x0004]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6a68], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jl short @..api_idx_0004_6.l13
    ret
api_idx_0004_7:
    mov ax, 0xfffc
    db 0xe8, 0x09, 0xbe ; call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp near @..local.l90
    mov ax, 0x91ec
    push ax
    mov ax, 0x91e5
    push ax
    mov ax, 0x91dc
    push ax
    mov ax, 0x91d1
    push ax
    push word [bp + 0x4]
    call api_idx_0004_6
    add sp, byte 0x0a
    jmp near @..local.l91
    mov ax, 0x9212
    push ax
    mov ax, 0x920b
    push ax
    mov ax, 0x9202
    push ax
    mov ax, 0x91f7
    push ax
    push word [bp + 0x4]
    call api_idx_0004_6
    add sp, byte 0x0a
    jmp near @..local.l91
    mov ax, 0x9238
    push ax
    mov ax, 0x9231
    push ax
    mov ax, 0x9228
    push ax
    mov ax, 0x921d
    push ax
    push word [bp + 0x4]
    call api_idx_0004_6
    add sp, byte 0x0a
    jmp near @..local.l91
    mov ax, 0x925e
    push ax
    mov ax, 0x9257
    push ax
    mov ax, 0x924e
    push ax
    mov ax, 0x9243
    push ax
    push word [bp + 0x4]
    call api_idx_0004_6
    add sp, byte 0x0a
    jmp near @..local.l91
    mov ax, 0x9284
    push ax
    mov ax, 0x927d
    push ax
    mov ax, 0x9274
    push ax
    mov ax, 0x9269
    push ax
    push word [bp + 0x4]
    call api_idx_0004_6
    add sp, byte 0x0a
    jmp near @..local.l91
    mov ax, 0x92aa
    push ax
    mov ax, 0x92a3
    push ax
    mov ax, 0x929a
    push ax
    mov ax, 0x928f
    push ax
    push word [bp + 0x4]
    call api_idx_0004_6
    add sp, byte 0x0a
    jmp near @..local.l91
    mov ax, 0x92d0
    push ax
    mov ax, 0x92c9
    push ax
    mov ax, 0x92c0
    push ax
    mov ax, 0x92b5
    push ax
    push word [bp + 0x4]
    call api_idx_0004_6
    add sp, byte 0x0a
    jmp near @..local.l91
    mov ax, 0x92f6
    push ax
    mov ax, 0x92ef
    push ax
    mov ax, 0x92e6
    push ax
    mov ax, 0x92db
    push ax
    push word [bp + 0x4]
    call api_idx_0004_6
    add sp, byte 0x0a
    jmp near @..local.l91
    mov ax, 0x931c
    push ax
    mov ax, 0x9315
    push ax
    mov ax, 0x930c
    push ax
    mov ax, 0x9301
    push ax
    push word [bp + 0x4]
    call api_idx_0004_6
    add sp, byte 0x0a
    jmp near @..local.l91
    mov ax, 0x9342
    push ax
    mov ax, 0x933b
    push ax
    mov ax, 0x9332
    push ax
    mov ax, 0x9327
    push ax
    push word [bp + 0x4]
    call api_idx_0004_6
    add sp, byte 0x0a
    jmp near @..local.l91
    mov ax, 0x9368
    push ax
    mov ax, 0x9361
    push ax
    mov ax, 0x9358
    push ax
    mov ax, 0x934d
    push ax
    push word [bp + 0x4]
    call api_idx_0004_6
    add sp, byte 0x0a
    jmp short @..local.l91
    mov ax, 0x938e
    push ax
    mov ax, 0x9387
    push ax
    mov ax, 0x937e
    push ax
    mov ax, 0x9373
    push ax
    push word [bp + 0x4]
    call api_idx_0004_6
    add sp, byte 0x0a
    jmp short @..local.l91
    mov ax, 0x93b4
    push ax
    mov ax, 0x93ad
    push ax
    mov ax, 0x93a4
    push ax
    mov ax, 0x9399
    push ax
    push word [bp + 0x4]
    call api_idx_0004_6
    add sp, byte 0x0a
    jmp short @..local.l91
    mov ax, 0x93da
    push ax
    mov ax, 0x93d3
    push ax
    mov ax, 0x93ca
    push ax
    mov ax, 0x93bf
    push ax
    push word [bp + 0x4]
    call api_idx_0004_6
    add sp, byte 0x0a
    jmp short @..local.l91
    pop dx
    xchg byte [bp - 0x007a], dh
    xchg dx, ax
    xchg byte [bp - 0x357a], ch
    xchg dh, ah
    xchg byte [bp + si], al
    xchg word [data_3a87], bx
    xchg word [bp - 0x0079], dx
    jb short 0x3734
    lea ax, word [bx - 0x7858]
    ret
    db 0x87
@..local.l90:
    cmp ax, strict word 0xe
    jae short @..local.l91
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x7822]
@..local.l91:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d65], 0xd
    jbe short @..local.l92
    cmp byte [bx + 0x5d6a], 0xd
    jbe short @..local.l92
    mov word [data_95d0], 1
@..local.l92:
    mov word [bp - 0x0004], 0
    mov ax, word [bp + 0x6]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x38, 0x00 ; mov ax, word [bx + 0x38]
    mov word [bp - 0x0002], ax
    jmp short @..local.l95
@..local.l93:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6a68], byte 1
    jne short @..local.l94
    mov ax, 0x14
    imul word [bp - 0x0004]
    add ax, 0xe38
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0x157c
    push ax
    db 0xe8, 0x26, 0x7d ; call 0xb53b
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov si, cx
    mov bx, word [bp + 0x8]
    mov word [bx + si], ax
    inc word [bp - 0x0004]
@..local.l94:
    inc word [bp - 0x0002]
@..local.l95:
    mov ax, word [bp + 0x6]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x3a, 0x00 ; mov ax, word [bx + 0x3a]
    cmp ax, word [bp - 0x0002]
    jge short @..local.l93
    mov ax, 0x95dc
    push ax
    mov ax, 0x159e
    push ax
    db 0xe8, 0xf1, 0x7c ; call 0xb53b
    add sp, byte 4
    mov ax, word [bp - 0x0004]
    ret
api_idx_0002_5:
    mov ax, 0xfffe
    db 0xe8, 0xb4, 0xbb ; call 0xf40b
    mov ax, 0
    push ax
    push ax
    push word [data_9420]
    push word [data_941e]
    db 0xe8, 0xdb, 0xb0 ; call 0xe942
    add sp, byte 8
    mov word [bp - 0x0002], 0
    jmp near @..api_idx_0002_5.l2
@..api_idx_0002_5.l1:
    mov ax, 0
    push ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x30, 0x00 ; push word [bx + 0x30]
    db 0xe8, 0x9f, 0xaf ; call 0xe823
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x72
    push ax
    mov ax, 6
    push ax
    db 0xe8, 0x71, 0xaf ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0xe38
    push ax
    db 0xe8, 0xa2, 0xaf ; call 0xe84e
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x72
    push ax
    mov ax, 0x85
    push ax
    db 0xe8, 0x49, 0xaf ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0x55, 0xaf ; call 0xe823
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
    db 0xe8, 0xee, 0x79 ; call 0xb2e7
    add sp, byte 6
    inc word [bp - 0x0002]
@..api_idx_0002_5.l2:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x8]
    jge short @..api_idx_0002_5.l3
    jmp near @..api_idx_0002_5.l1
@..api_idx_0002_5.l3:
    ret
api_idx_002e:
    mov ax, 0xffd2
    db 0xe8, 0xfa, 0xba ; call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0x16
    push ax
    db 0xe8, 0x07, 0xaf ; call 0xe823
    add sp, byte 4
    mov ax, 0xae
    push ax
    mov ax, 6
    push ax
    db 0xe8, 0xdf, 0xae ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x95dc
    push ax
    db 0xe8, 0x16, 0xaf ; call 0xe84e
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
    cmp word [bx - 0x6a10], byte 0
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
    push word [bx - 0x6a10]
    db 0xe8, 0xee, 0x78 ; call 0xb27d
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
    db 0xe8, 0xc2, 0x78 ; call 0xb27d
    add sp, byte 4
    mov word [bp - 0x0006], 1
@..api_idx_002e.l6:
    mov ax, 0xa
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x002e]
    add ax, cx
    push ax
    db 0xe8, 0xbe, 0xc0 ; call 0xfa90
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
    db 0xe8, 0x0f, 0xae ; call 0xe809
    add sp, byte 4
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0002], 0
@..api_idx_002e.l8:
    mov ax, 0xa
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x002e]
    add ax, cx
    push ax
    db 0xe8, 0x7a, 0xc0 ; call 0xfa90
    pop cx
    cmp ax, strict word 0
    jle short @..api_idx_002e.l10
    cmp word [bp - 0x0006], byte 0
    je short @..api_idx_002e.l9
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0xf6, 0xad ; call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2f
    push ax
    db 0xe8, 0xf5, 0xad ; call 0xe830
    add sp, byte 4
@..api_idx_002e.l9:
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x30, 0x00 ; push word [bx + 0x30]
    db 0xe8, 0xd3, 0xad ; call 0xe823
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x002e]
    add ax, cx
    push ax
    db 0xe8, 0xe8, 0xad ; call 0xe84e
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
    db 0xe8, 0x8b, 0xb9 ; call 0xf40b
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6a10]
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
    db 0xe8, 0x7d, 0xae ; call 0xe928
    add sp, byte 8
    mov word [bp - 0x002c], dx
    mov word [bp - 0x002e], ax
@..api_idx_0032.l1:
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0002_5
    add sp, byte 8
    push word [bp - 0x000c]
    push word [bp + 0x6]
    call api_idx_002e
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0x46, 0xad ; call 0xe823
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x000a]
    add ax, strict word 0x72
    push ax
    mov ax, 0x7f
    push ax
    db 0xe8, 0x18, 0xad ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 5
    push ax
    db 0xe8, 0x31, 0xad ; call 0xe830
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x000a]
    add ax, strict word 0x72
    push ax
    mov ax, 0x97
    push ax
    db 0xe8, 0xf6, 0xac ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 6
    push ax
    db 0xe8, 0x0f, 0xad ; call 0xe830
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
    db 0xe8, 0x48, 0x7f ; call 0xbaa6
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
    db 0xe8, 0x1b, 0x7f ; call 0xbaa6
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
    db 0xe8, 0xd9, 0x7e ; call 0xbaa6
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
    db 0xe8, 0x64, 0xad ; call 0xe94f
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
    mov ax, word [bx - 0x6a10]
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
    jmp near @..local.l98
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
    call 0xbce3
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    mov ax, 1
    mov cx, word [bp - 0x0002]
    cmp cx, word [bp + 0x6]
    jne short @..local.l96
    mov ax, 0x1a
@..local.l96:
    push ax
    db 0xe8, 0xa0, 0xab ; call 0xe823
    add sp, byte 4
    mov ax, 0xbe
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0x95f8
    push ax
    db 0xe8, 0xf9, 0xbd ; call 0xfa90
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
    db 0xe8, 0x57, 0xab ; call 0xe809
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0x95f8
    push ax
    db 0xe8, 0x88, 0xab ; call 0xe84e
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
    db 0xe8, 0xbb, 0x7d ; call 0xbaa6
    add sp, byte 0x0e
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x000e]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x0026], ax
    cmp ax, word [bp + 0x6]
    jne short @..local.l97
    mov ax, word [bp - 0x000e]
    mov word [bp - 0x0032], ax
    cmp word [data_0e32], byte 0
    jne short @..local.l97
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
    call loc_0dc0
    add sp, byte 0x0a
@..local.l97:
    inc word [bp - 0x000e]
@..local.l98:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jg short @..local.l99
    jmp near @..api_idx_0032.l12
@..local.l99:
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
    db 0xe8, 0x53, 0x7d ; call 0xbaa6
    add sp, byte 0x0e
    mov ax, 0xc6
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0x71, 0xab ; call 0xe8da
    add sp, byte 8
    cmp word [data_0e32], byte 0
    je short @..local.l101
@..local.l100:
    mov ax, 0x59fe
    push ax
    db 0xe8, 0x93, 0x7b ; call 0xb90d
    pop cx
    dec ax
    mov word [bp - 0x0008], ax
    cmp word [data_5b3e], byte 0
    je short @..local.l100
    jmp near @..local.l113
@..local.l101:
    mov word [bp - 0x0008], 0xffff
    mov ax, word [bp - 0x0032]
    mov word [bp - 0x0002], ax
@..local.l102:
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
    call loc_0dc0
    add sp, byte 0x0a
    mov ax, 0xc7
    push ax
    mov ax, 0x13d
    push ax
    mov ax, 0xbb
    push ax
    mov ax, 3
    push ax
    db 0xe8, 0x0b, 0xab ; call 0xe8da
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
    call loc_0dc0
    add sp, byte 0x0a
@..local.l103:
    mov ax, 1
    push ax
    call 0xea50
    pop cx
    test ax, ax
    jne short @..local.l104
    jmp short @..local.l103
@..local.l104:
    mov ax, 1
    push ax
    call 0xeb32
    pop cx
    sub ah, ah
    mov word [bp - 0x0030], ax
    jmp short @..local.l111
@..local.l105:
    mov ax, word [bp - 0x0002]
    add ax, word [bp - 0x000e]
    dec ax
    cwd
    idiv word [bp - 0x000e]
    mov word [bp - 0x0002], dx
    jmp short @..local.l112
@..local.l106:
    mov ax, word [bp - 0x0002]
    inc ax
    cwd
    idiv word [bp - 0x000e]
    mov word [bp - 0x0002], dx
    jmp short @..local.l112
@..local.l107:
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x0002]
    inc ax
    mov word [bp - 0x0008], ax
    jmp short @..local.l112
@..local.l108:
    mov ax, word [bp - 0x000a]
    mov word [bp - 0x0008], ax
    jmp short @..local.l112
@..local.l109:
    mov ax, word [bp + 0x8]
    mov word [bp - 0x0008], ax
    jmp short @..local.l112
@..local.l110:
    mov ax, word [bp - 0x000a]
    inc ax
    cwd
    idiv word [bp + 0x8]
    mov word [bp - 0x0008], dx
    jmp short @..local.l112
@..local.l111:
    cmp ax, strict word 8
    je short @..local.l105
    cmp ax, strict word 0xa
    je short @..local.l106
    cmp ax, strict word 0xd
    je short @..local.l107
    cmp ax, strict word 0x20
    je short @..local.l110
    cmp ax, strict word 0x2b
    je short @..local.l109
    cmp ax, strict word 0x2d
    je short @..local.l108
    cmp ax, strict word 0x3d
    je short @..local.l109
@..local.l112:
    cmp word [bp - 0x0008], byte 0xff
    jne short @..local.l113
    jmp near @..local.l102
@..local.l113:
    mov ax, word [bp - 0x0008]
    cmp ax, word [bp + 0x8]
    jge short @..local.l114
    cmp ax, word [bp - 0x000a]
    je short @..local.l114
    mov word [bp - 0x000a], ax
    jmp near @..local.l121
@..local.l114:
    mov ax, word [bp - 0x0008]
    cmp ax, word [bp - 0x000a]
    jne short @..local.l117
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
    mov cx, word [bx - 0x6940]
    cmp ax, cx
    jle short @..local.l115
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, word [bp + 0xa]
    mov cx, word [bx + si]
    add ax, cx
    mov bx, ax
    dec byte [bx + 0x5d6c]
    inc word [bp - 0x000c]
    jmp short @..local.l116
@..local.l115:
    mov ax, 0
    push ax
    db 0xe8, 0x01, 0x79 ; call 0xb7e0
    pop cx
@..local.l116:
    jmp short @..local.l121
@..local.l117:
    mov ax, word [bp - 0x0008]
    cmp ax, word [bp + 0x8]
    jne short @..local.l120
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
    jae short @..local.l118
    cmp word [bp - 0x000c], byte 0
    jle short @..local.l118
    inc byte [bx + 0x5d6c]
    dec word [bp - 0x000c]
    jmp short @..local.l119
@..local.l118:
    mov ax, 0
    push ax
    db 0xe8, 0xc3, 0x78 ; call 0xb7e0
    pop cx
@..local.l119:
    jmp short @..local.l121
@..local.l120:
    mov ax, word [bp - 0x0008]
    sub ax, word [bp + 0x8]
    dec ax
    mov word [bp - 0x0028], ax
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0026]
    mov word [bp - 0x002a], ax
@..local.l121:
    cmp word [bp - 0x0028], byte 0xff
    jne short @..local.l122
    jmp near @..api_idx_0032.l1
@..local.l122:
    mov ax, word [bp - 0x000c]
    mov cx, word [bp + 0x6]
    shl cx, 1
    mov bx, cx
    mov word [bx - 0x6a10], ax
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
    call 0xbe5f
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
    db 0xe8, 0xd8, 0x7e ; call 0xbe5f
    add sp, byte 0x0a
    mov ax, 1
    push ax
    push word [bp - 0x002c]
    push word [bp - 0x002e]
    db 0xe8, 0xb8, 0xa9 ; call 0xe94f
    add sp, byte 6
    mov ax, word [bp - 0x002a]
    ret
api_idx_0088:
    mov ax, 0xff78
    db 0xe8, 0x67, 0xb4 ; call 0xf40b
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
    mov word [bx - 0x6940], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x22
    jl short @..api_idx_0088.l1
    mov word [bp - 0x0002], 0
@..api_idx_0088.l2:
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, 0x95f8
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0x258
    push ax
    db 0xe8, 0x52, 0x75 ; call 0xb53b
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jle short @..api_idx_0088.l2
    lea ax, word [bp - 0x0088]
    push ax
    push word [bp + 0x6]
    db 0xe8, 0x39, 0x75 ; call 0xb53b
    add sp, byte 4
    mov ax, 1
    push ax
    lea ax, word [bp - 0x0088]
    push ax
    call api_idx_0004_5
    add sp, byte 4
    mov word [bp - 0x0006], 0
@..api_idx_0088.l3:
    lea ax, word [bp - 0x0020]
    push ax
    push word [bp - 0x0006]
    push word [bp + 0x4]
    call api_idx_0004_7
    add sp, byte 6
    mov word [bp - 0x0008], ax
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    jmp short @..api_idx_0088.l5
@..api_idx_0088.l4:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov cx, word [bx - 0x0020]
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5d6c]
    sub ah, ah
    mov cx, ax
    mov ax, 0x64
    sub ax, cx
    add word [bp - 0x0002], ax
    inc word [bp - 0x0004]
@..api_idx_0088.l5:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0008]
    jl short @..api_idx_0088.l4
    mov ax, word [bp - 0x0006]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6a10]
    cmp ax, word [bp - 0x0002]
    jle short @..api_idx_0088.l6
    mov ax, word [bp - 0x0002]
    mov word [bx - 0x6a10], ax
@..api_idx_0088.l6:
    lea ax, word [bp - 0x0020]
    push ax
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp + 0x4]
    call api_idx_0002_5
    add sp, byte 8
    mov word [bp - 0x0004], 0
@..api_idx_0088.l7:
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
    jmp short @..api_idx_0088.l11
@..api_idx_0088.l8:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx - 0x6a68], byte 0
    jne short @..api_idx_0088.l9
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short @..api_idx_0088.l10
@..api_idx_0088.l9:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0038], 1
@..api_idx_0088.l10:
    inc word [bp - 0x0002]
@..api_idx_0088.l11:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    db 0x8b, 0x87, 0x3a, 0x00 ; mov ax, word [bx + 0x3a]
    cmp ax, word [bp - 0x0002]
    jge short @..api_idx_0088.l8
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 4
    jl short @..api_idx_0088.l7
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
    je short @..api_idx_0088.l12
    jmp near @..api_idx_0088.l3
@..api_idx_0088.l12:
    mov ax, 0xc6
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    db 0xe8, 0x9e, 0xa7 ; call 0xe8da
    add sp, byte 8
    ret
api_idx_001c:
    mov ax, 0xffe4
    db 0xe8, 0xc5, 0xb2 ; call 0xf40b
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
    db 0xe8, 0x97, 0x75 ; call 0xb7a9
    pop cx
    mov cx, ax
    mov ax, word [bp - 0x0004]
    add cx, ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x6a10], cx
@..api_idx_001c.l4:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jge short @..api_idx_001c.l5
    jmp near @..api_idx_001c.l1
@..api_idx_001c.l5:
    mov word [data_95f4], 0
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
    db 0xe8, 0x4f, 0x75 ; call 0xb7a9
    pop cx
    add ax, word [data_95f4]
    inc ax
    mov word [data_95f4], ax
@..api_idx_001c.l7:
    inc word [bp - 0x0002]
@..api_idx_001c.l8:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_0042]
    jle short @..api_idx_001c.l6
    ret
api_idx_0002_6:
    mov ax, 0xfffe
    db 0xe8, 0x95, 0xb1 ; call 0xf40b
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6a10]
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
    add bx, word [bp + 0xa]
    mov al, byte [bx + 0x5d6c]
    sub ah, ah
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov cx, word [bx + 0x5c18]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    pop ax
    cmp ax, cx
    jle short @..api_idx_0002_6.l1
    mov word [bp - 0x0002], 0
@..api_idx_0002_6.l1:
    add ax, word [bp - 0x0002]
    cmp ax, strict word 0x64
    jle short @..api_idx_0002_6.l2
    mov word [bp - 0x0002], 0
@..api_idx_0002_6.l2:
    cmp word [bp - 0x0002], byte 0
    jge short @..api_idx_0002_6.l3
    mov word [bp - 0x0002], 0
@..api_idx_0002_6.l3:
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6a10]
    cmp ax, word [bp - 0x0002]
    jge short @..api_idx_0002_6.l4
    mov word [bp - 0x0002], ax
@..api_idx_0002_6.l4:
    mov ax, word [bp - 0x0002]
    sub word [bx - 0x6a10], ax
    mov al, byte [bp - 0x0002]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    add ax, word [bp + 0xa]
    mov bx, ax
    pop ax
    add byte [bx + 0x5d6c], al
    ret
math_loc_4310:
    mov ax, 0
    db 0xe8, 0xf5, 0xb0 ; call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp near @..local.l123

    db 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x07, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0xa0, 0x02, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50
    db 0x50, 0xff, 0x76, 0x04, 0xe8, 0xf2, 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x20, 0x00, 0x50, 0xb8, 0x02
    db 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x0d, 0xff, 0x83, 0xc4, 0x08, 0xe9
    db 0x76, 0x02, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xc8
    db 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x1e, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50
    db 0xff, 0x76, 0x04, 0xe8, 0xe3, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0x4c, 0x02, 0xb8, 0x04, 0x00, 0x50
    db 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x9b, 0xfd, 0x83, 0xc4
    db 0x08, 0xb8, 0x10, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04
    db 0xe8, 0xb6, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0x1f, 0x02, 0xb8, 0x05, 0x00, 0x50, 0x50, 0xb8, 0x06
    db 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x71, 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x07, 0x00, 0x50, 0xb8
    db 0x03, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x8c, 0xfe, 0x83, 0xc4, 0x08
    db 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x77, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0xe0, 0x01, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50
    db 0xb8, 0x04, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x2f, 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x0d, 0x00
    db 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x4a, 0xfe, 0x83
    db 0xc4, 0x08, 0xe9, 0xb3, 0x01, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0x50, 0xff, 0x76
    db 0x04, 0xe8, 0x05, 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x1d, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8
    db 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x20, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0x89, 0x01, 0xb8
    db 0x09, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xdb, 0xfc, 0x83, 0xc4
    db 0x08, 0xb8, 0x1f, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04
    db 0xe8, 0xf6, 0xfd, 0x83, 0xc4, 0x08, 0xe9, 0x5f, 0x01, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x02, 0x00
    db 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xb1, 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x20, 0x00, 0x50, 0xb8
    db 0x03, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xcf, 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x1e, 0x00
    db 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xba, 0xfd, 0x83
    db 0xc4, 0x08, 0xe9, 0x23, 0x01, 0xb8, 0x05, 0x00, 0x50, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xff, 0x76
    db 0x04, 0xe8, 0x75, 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x90, 0xfd, 0x83, 0xc4, 0x08, 0xe9, 0xf9, 0x00, 0xb8
    db 0x05, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x48
    db 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x1c, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04
    db 0xe8, 0x66, 0xfd, 0x83, 0xc4, 0x08, 0xe9, 0xcf, 0x00, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x04, 0x00
    db 0x50, 0xb8, 0x07, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x1e, 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x01
    db 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x39, 0xfd
    db 0x83, 0xc4, 0x08, 0xe9, 0xa2, 0x00, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x05, 0x00, 0x50, 0x50, 0xff
    db 0x76, 0x04, 0xe8, 0xf4, 0xfb, 0x83, 0xc4, 0x08, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x0f, 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x1f, 0x00
    db 0x50, 0xb8, 0x03, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xfd, 0xfc, 0x83, 0xc4, 0x08, 0xeb
    db 0x67, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xb9, 0xfb
    db 0x83, 0xc4, 0x08, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff
    db 0x76, 0x04, 0xe8, 0xd4, 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x11, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50
    db 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xbf, 0xfc, 0x83, 0xc4, 0x08, 0xeb, 0x29, 0x6e
    db 0x93, 0x86, 0x93, 0xb0, 0x93, 0xda, 0x93, 0x07, 0x94, 0x73, 0x94, 0x46, 0x94, 0x9d, 0x94, 0x03
    db 0x95, 0xc7, 0x94, 0x2d, 0x95, 0x57, 0x95, 0x84, 0x95, 0xbf, 0x95

@..local.l123:
    cmp ax, strict word 0xe
    jae short @..local.l124
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6a03]
@..local.l124:
    ret
api_idx_00ac:
    mov ax, 0xff54
    db 0xe8, 0x25, 0xae ; call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d64]
    sub ah, ah
    mov word [bp - 0x0006], ax
    mov al, byte [bx + 0x5d67]
    sub ah, ah
    mov word [bp - 0x0008], ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp near @..api_idx_00ac.l2
    mov ax, 5
    push ax
    db 0xe8, 0x99, 0x71 ; call 0xb7a9
    pop cx
    add ax, strict word 6
    mov word [bp - 0x0002], ax
    jmp near @..api_idx_00ac.l3
    mov ax, 3
    push ax
    db 0xe8, 0x88, 0x71 ; call 0xb7a9
    pop cx
    inc ax
    inc ax
    mov word [bp - 0x0002], ax
    jmp short @..api_idx_00ac.l3
    mov ax, 4
    push ax
    db 0xe8, 0x79, 0x71 ; call 0xb7a9
    pop cx
    add ax, strict word 4
    mov word [bp - 0x0002], ax
    jmp short @..api_idx_00ac.l3
    mov ax, 4
    push ax
    db 0xe8, 0x69, 0x71 ; call 0xb7a9
    pop cx
    inc ax
    inc ax
    inc ax
    mov word [bp - 0x0002], ax
    jmp short @..api_idx_00ac.l3
    mov ax, 3
    push ax
    db 0xe8, 0x59, 0x71 ; call 0xb7a9
    pop cx
    inc ax
    inc ax
    inc ax
    mov word [bp - 0x0002], ax
    jmp short @..api_idx_00ac.l3
    mov ax, 5
    push ax
    db 0xe8, 0x49, 0x71 ; call 0xb7a9
    pop cx
    add ax, strict word 5
    mov word [bp - 0x0002], ax
    jmp short @..api_idx_00ac.l3
    mov ax, 5
    push ax
    db 0xe8, 0x39, 0x71 ; call 0xb7a9
    pop cx
    add ax, strict word 4
    mov word [bp - 0x0002], ax
    jmp short @..api_idx_00ac.l3
    push ax
    xchg si, ax
    popaw
    xchg si, ax
    jo short 0x4615
    adc byte [bp - 0x69b0], 0x70
    xchg si, ax
    nop
    xchg si, ax
    nop
    xchg si, ax
    mov al, byte [data_9096]
    xchg si, ax
    push ax
    xchg si, ax
    mov al, byte [data_7096]
    xchg si, ax
    mov al, 0x96
@..api_idx_00ac.l2:
    cmp ax, strict word 0xe
    jae short @..api_idx_00ac.l3
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6940]
@..api_idx_00ac.l3:
    mov ax, 4
    push ax
    db 0xe8, 0x00, 0x71 ; call 0xb7a9
    pop cx
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0008]
    mov cx, 6
    cwd
    idiv cx
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0004], ax
    mov ax, word [bp - 0x0006]
    shl ax, 1
    add ax, word [bp - 0x0008]
    mov cx, 3
    imul cx
    mov word [bp - 0x000c], ax
    mov ax, word [bp - 0x0008]
    cmp ax, strict word 8
    jge short @..api_idx_00ac.l4
    dec word [bp - 0x0002]
@..api_idx_00ac.l4:
    cmp ax, strict word 0xf
    jle short @..api_idx_00ac.l5
    inc word [bp - 0x0002]
@..api_idx_00ac.l5:
    cmp ax, strict word 0x11
    jle short @..api_idx_00ac.l6
    inc word [bp - 0x0002]
@..api_idx_00ac.l6:
    cmp word [bp - 0x0006], byte 0x0f
    jle short @..api_idx_00ac.l7
    mov ax, word [bp - 0x0006]
    add word [bp - 0x000c], ax
@..api_idx_00ac.l7:
    cmp word [bp - 0x0006], byte 0x11
    jle short @..api_idx_00ac.l8
    mov ax, word [bp - 0x0006]
    add word [bp - 0x000c], ax
@..api_idx_00ac.l8:
    cmp word [bp - 0x0002], byte 1
    jge short @..api_idx_00ac.l9
    mov word [bp - 0x0002], 1
@..api_idx_00ac.l9:
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
    jge short @..api_idx_00ac.l10
    mov word [bp - 0x0002], 1
    mov word [bp - 0x0004], 1
@..api_idx_00ac.l10:
    mov ax, word [bp - 0x0002]
    add word [bx + 0x5c0c], ax
    add word [bx + 0x5c0e], ax
    mov ax, word [bp - 0x0004]
    add word [bx + 0x5c10], ax
    add word [bx + 0x5c12], ax
    mov ax, 0xf
    imul word [bp - 0x000c]
    mov word [bx + 0x5c16], ax
    cmp byte [bx + 0x5e2b], 5
    jne short @..api_idx_00ac.l11
    shl ax, 1
    mov cx, 3
    cwd
    idiv cx
    mov word [bx + 0x5c16], ax
@..api_idx_00ac.l11:
    mov ax, 0x64
    imul word [bx + 0x5c10]
    cwd
    idiv word [bx + 0x5c12]
    mov word [bp - 0x000a], ax
    cmp ax, strict word 1
    jge short @..api_idx_00ac.l12
    cmp word [bx + 0x5c10], byte 0
    jle short @..api_idx_00ac.l12
    mov ax, 1
    jmp short @..api_idx_00ac.l13
@..api_idx_00ac.l12:
    mov ax, word [bp - 0x000a]
@..api_idx_00ac.l13:
    mov word [bp - 0x000a], ax
    mov ax, 1
    push ax
    mov ax, 0x18
    push ax
    mov ax, 0x93e9
    push ax
    mov ax, 0x93e5
    push ax
    mov ax, 0xd5
    push ax
    push word [bx + 0x5c12]
    push word [bp - 0x000a]
    mov ax, 0x63
    push ax
    mov ax, 6
    push ax
    mov ax, 0
    push ax
    call api_idx_0020
    add sp, byte 0x14
    lea ax, word [bp - 0x005c]
    push ax
    mov ax, 0x1395
    push ax
    db 0xe8, 0x79, 0x6d ; call 0xb53b
    add sp, byte 4
    mov ax, 1
    push ax
    lea ax, word [bp - 0x005c]
    push ax
    call api_idx_0004_5
    add sp, byte 4
    push word [bp + 0x4]
    call api_idx_007c
    pop cx
    mov ax, 0x67
    push ax
    mov ax, 0xa2
    push ax
    mov ax, 6
    push ax
    push ax
    db 0xe8, 0xf0, 0xa0 ; call 0xe8da
    add sp, byte 8
    mov ax, 1
    push ax
    mov ax, 0x18
    push ax
    mov ax, 0x93ed
    push ax
    mov ax, 0x93eb
    push ax
    mov ax, 0xd4
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c0e]
    push word [bx + 0x5c0c]
    mov ax, 0x5d
    push ax
    mov ax, 6
    push ax
    mov ax, 0
    push ax
    call api_idx_0020
    add sp, byte 0x14
    lea ax, word [bp - 0x005c]
    push ax
    mov ax, 0x1394
    cmp word [bp - 0x0002], byte 1
    jne short @..local.l125
    mov ax, 0x1393
@..local.l125:
    push ax
    db 0xe8, 0x04, 0x6d ; call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x00ac]
    push ax
    push word [bp - 0x0002]
    db 0xe8, 0x38, 0x6a ; call 0xb27d
    add sp, byte 4
    mov ax, 0x24
    push ax
    lea ax, word [bp - 0x00ac]
    push ax
    lea ax, word [bp - 0x005c]
    push ax
    db 0xe8, 0xa8, 0x6a ; call 0xb300
    add sp, byte 6
    mov ax, 1
    push ax
    lea ax, word [bp - 0x005c]
    push ax
    call api_idx_0004_5
    add sp, byte 4
    push word [bp + 0x4]
    call api_idx_007c
    pop cx
    mov ax, 0x67
    push ax
    mov ax, 0xa2
    push ax
    mov ax, 6
    push ax
    push ax
    db 0xe8, 0x5a, 0xa0 ; call 0xe8da
    add sp, byte 8
    ret
api_idx_0004_8:
    mov ax, 0xfffc
    db 0xe8, 0x81, 0xab ; call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp word [bx + 0x5c18], byte 0x14
    jle short @..local.l126
    ret
@..local.l126:
    mov al, byte [bx + 0x5d68]
    sub ah, ah
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp short @..local.l127

    db 0xb8, 0x04, 0x00, 0x50, 0xe8, 0xf2, 0x6e, 0x59, 0x40, 0x40, 0x89, 0x46, 0xfe, 0xeb, 0x55, 0xb8
    db 0x03, 0x00, 0x50, 0xe8, 0xe3, 0x6e, 0x59, 0x40, 0x89, 0x46, 0xfe, 0xeb, 0x47, 0xb8, 0x04, 0x00
    db 0x50, 0xe8, 0xd5, 0x6e, 0x59, 0x40, 0x89, 0x46, 0xfe, 0xeb, 0x39, 0xb8, 0x04, 0x00, 0x50, 0xe8
    db 0xc7
    db 'nY@@@'
    db 0x89, 0x46, 0xfe, 0xeb, 0x29, 0xf7, 0x98, 0x06, 0x99, 0x14, 0x99, 0x14, 0x99, 0xf7, 0x98, 0x06
    db 0x99, 0x14, 0x99, 0x06, 0x99, 0xf7, 0x98, 0x06, 0x99, 0xf7, 0x98, 0x22, 0x99, 0xf7, 0x98, 0x22
    db 0x99

@..local.l127:
    cmp ax, strict word 0xe
    jae short @..local.l128
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x66ce]
@..local.l128:
    cmp word [bp - 0x0004], byte 8
    jge short @..local.l129
    dec word [bp - 0x0002]
@..local.l129:
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
    jge short @..local.l130
    mov word [bp - 0x0002], 0
@..local.l130:
    mov al, byte [bx + 0x5e3a]
    cbw
    sub ax, word [bp - 0x0002]
    mov byte [bx + 0x5e3a], al
    cmp byte [bx + 0x5e3a], 0
    jge short @..local.l131
    mov byte [bx + 0x5e3a], 0
@..local.l131:
    ret
api_idx_0018:
    mov ax, 0xffe8
    db 0xe8, 0xb0, 0xaa ; call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d65]
    sub ah, ah
    mov word [bp - 0x0004], ax
    mov al, byte [bx + 0x5d66]
    sub ah, ah
    mov word [bp - 0x0006], ax
    mov al, byte [bx + 0x5d67]
    sub ah, ah
    mov word [bp - 0x0008], ax
    mov al, byte [bx + 0x5d6a]
    sub ah, ah
    mov word [bp - 0x000a], ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    jmp near @..local.l132
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0014], 0
    mov word [bp - 0x0016], 0x20
    mov word [bp - 0x0018], 1
    jmp near @..local.l134
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0008]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0014], 1
    mov word [bp - 0x0016], 0x1e
    mov word [bp - 0x0018], 1
    jmp near @..local.l134
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0014], 2
    mov word [bp - 0x0016], 0x1d
    mov word [bp - 0x0018], 3
    jmp near @..local.l134
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0014], 2
    mov word [bp - 0x0016], 0x1d
    mov word [bp - 0x0018], 1
    jmp near @..local.l134
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0014], 0
    mov word [bp - 0x0016], 0x20
    mov word [bp - 0x0018], 3
    jmp near @..local.l134
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0014], 3
    mov word [bp - 0x0016], 0x1f
    mov word [bp - 0x0018], 1
    jmp near @..local.l134
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0008]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0014], 1
    mov word [bp - 0x0016], 0x1e
    mov word [bp - 0x0018], 3
    jmp near @..local.l134
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    cwd
    idiv cx
    mov word [bp - 0x0014], dx
    mov ax, 0x1e
    cmp word [bp - 0x0014], byte 0
    jne short @..api_idx_0018.l1
    mov ax, 0x20
    mov word [bp - 0x0016], 0x20
@..api_idx_0018.l1:
    mov word [bp - 0x0016], ax
    mov word [bp - 0x0018], 1
    jmp near @..local.l134
    mov ax, word [bp - 0x000a]
    add ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0014], 1
    mov word [bp - 0x0016], 0x1e
    mov word [bp - 0x0018], 3
    jmp near @..local.l134
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x0006]
    mov cx, 2
    cwd
@..api_idx_0018.l3:
    idiv cx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0014], 0
    mov word [bp - 0x0016], 0x20
    mov word [bp - 0x0018], 3
    jmp short @..local.l134
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0014], 3
    mov word [bp - 0x0016], 0x1f
    mov word [bp - 0x0018], 3
    jmp short @..local.l134
    mov ax, word [bp - 0x0004]
    add ax, word [bp - 0x0006]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov word [bp - 0x0014], 2
    mov word [bp - 0x0016], 0x1d
    mov word [bp - 0x0018], 5
    jmp short @..local.l134
@..api_idx_0018.l4:
    mov word [bp - 0x0018], 0
    jmp short @..local.l134
    jl short 0x4ad9
    xlatb
    cwd
    clc
    cwd
    jl short @..api_idx_0018.l3
    sbb word [bp + si - 0x65c6], bx
    pop bx
    call far 0x9a9d:0x9a7c
    mov si, 0xfb9a
    call far 0x9b3c:0x9b1c
    pop sp
    wait
@..local.l132:
    cmp ax, strict word 0xe
    jae short @..local.l133
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x647d]
@..local.l133:
    jmp short @..api_idx_0018.l4
@..local.l134:
    cmp word [bp - 0x0018], byte 0
    jne short @..local.l135
    ret
@..local.l135:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    cmp ax, word [bp - 0x0018]
    jge short @..local.l136
    jmp near @..local.l147
@..local.l136:
    add bx, word [bp - 0x0014]
    inc byte [bx + 0x5d50]
    mov word [bp - 0x0002], 0
@..local.l137:
    mov word [bp - 0x0012], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x5c1e], byte 0
    jle short @..local.l140
    mov word [bp - 0x0004], 0
@..local.l138:
    mov ax, 6
    imul word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x620]
    sub ah, ah
    cmp ax, word [bp - 0x0002]
    jne short @..local.l139
    push word [bp - 0x0004]
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5e12
    push ax
    db 0xe8, 0xa1, 0xa0 ; call 0xec74
    add sp, byte 4
    cmp ax, strict word 1
    jne short @..local.l139
    inc word [bp - 0x0012]
@..local.l139:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0x66
    jl short @..local.l138
@..local.l140:
    cmp word [bp - 0x0012], byte 0
    jg short @..local.l141
    jmp near @..local.l146
@..local.l141:
    mov word [bp - 0x000e], 0
    cmp word [bp - 0x000c], byte 0x0d
    jle short @..local.l142
    inc word [bp - 0x000e]
@..local.l142:
    cmp word [bp - 0x000c], byte 0x10
    jle short @..local.l143
    inc word [bp - 0x000e]
@..local.l143:
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
    jge short @..local.l144
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    add bx, ax
    inc word [bx + 0x5c1e]
    jmp near @..local.l146
@..local.l144:
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d54]
    sub ah, ah
    push ax
    db 0xe8, 0x61, 0x6b ; call 0xb7a9
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0016]
    mov bx, ax
    mov al, byte [bx + 0x5d6c]
    sub ah, ah
    mov cx, 0x14
    cwd
    idiv cx
    push ax
    db 0xe8, 0x44, 0x6b ; call 0xb7a9
    pop cx
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d66]
    sub ah, ah
    mov cx, 6
    cwd
    idiv cx
    imul word [bp - 0x0012]
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp - 0x000e]
    mov word [bp - 0x0010], ax
    cmp ax, strict word 0xf
    jle short @..local.l145
    mov word [bp - 0x0010], 0xf
@..local.l145:
    mov ax, word [bp - 0x0010]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    add bx, cx
    add word [bx + 0x5c1e], ax
    cmp word [bx + 0x5c1e], strict word 0x3e7
    jle short @..local.l146
    mov word [bx + 0x5c1e], 0x3e7
@..local.l146:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jge short @..local.l147
    jmp near @..local.l137
@..local.l147:
    ret
api_idx_00b4:
    mov ax, 0xff4c
    db 0xe8, 0x40, 0xa7 ; call 0xf40b
    mov word [bp - 0x0002], 0
@..api_idx_00b4.l1:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0014], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short @..api_idx_00b4.l1
@..api_idx_00b4.l2:
    mov word [bp - 0x0004], 0
@..api_idx_00b4.l3:
    mov ax, 7
    push ax
    db 0xe8, 0xb4, 0x6a ; call 0xb7a9
    pop cx
    mov word [bp - 0x0002], ax
    inc word [bp - 0x0004]
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d64], 0x12
    jae short @..api_idx_00b4.l4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0014], byte 0
    je short @..api_idx_00b4.l5
@..api_idx_00b4.l4:
    cmp word [bp - 0x0004], byte 3
    jl short @..api_idx_00b4.l3
@..api_idx_00b4.l5:
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d64], 0x12
    jb short @..api_idx_00b4.l6
    jmp near @..api_idx_00b4.l10
@..api_idx_00b4.l6:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0014], byte 0
    je short @..api_idx_00b4.l7
    jmp near @..api_idx_00b4.l10
@..api_idx_00b4.l7:
    mov word [bx - 0x0014], 1
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    inc byte [bx + 0x5d64]
    mov ax, 1
    push ax
    mov ax, 0x18
    push ax
    mov ax, 0x93ef
    push ax
    mov ax, 0x93ee
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xcc
    push ax
    mov ax, 0
    push ax
    mov al, byte [bx + 0x5d64]
    sub ah, ah
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x23
    push ax
    mov ax, 0x73
    push ax
    mov ax, 1
    push ax
    call api_idx_0020
    add sp, byte 0x14
    lea ax, word [bp - 0x0064]
    push ax
    mov ax, 0x1396
    push ax
    db 0xe8, 0x98, 0x67 ; call 0xb53b
    add sp, byte 4
    lea ax, word [bp - 0x00b4]
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0x13ba
    push ax
    db 0xe8, 0x86, 0x67 ; call 0xb53b
    add sp, byte 4
    mov ax, 0x24
    push ax
    lea ax, word [bp - 0x00b4]
    push ax
    lea ax, word [bp - 0x0064]
    push ax
    db 0xe8, 0x38, 0x65 ; call 0xb300
    add sp, byte 6
    mov ax, 1
    push ax
    lea ax, word [bp - 0x0064]
    push ax
    call api_idx_0004_5
    add sp, byte 4
    push word [bp + 0x4]
    call api_idx_007c
    pop cx
    mov ax, 0x67
    push ax
    mov ax, 0xa2
    push ax
    mov ax, 6
    push ax
    push ax
    db 0xe8, 0xea, 0x9a ; call 0xe8da
    add sp, byte 8
@..api_idx_00b4.l10:
    mov ax, 2
    push ax
    db 0xe8, 0xaf, 0x69 ; call 0xb7a9
    pop cx
    test ax, ax
    je short @..api_idx_00b4.l11
    jmp near @..api_idx_00b4.l2
@..api_idx_00b4.l11:
    ret
api_idx_0006_2:
    mov ax, 0xfffa
    db 0xe8, 0x02, 0xa6 ; call 0xf40b
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
@..api_idx_0006_2.l1:
    mov ax, word [bp - 0x0002]
    jmp short 0x4e57
    mov word [bp - 0x0006], 2
    jmp short @..api_idx_0006_2.l3
    mov word [bp - 0x0006], 4
    jmp short @..api_idx_0006_2.l3
    mov word [bp - 0x0006], 7
    jmp short @..api_idx_0006_2.l3
    mov word [bp - 0x0006], 0xa
    jmp short @..api_idx_0006_2.l3
    mov word [bp - 0x0006], 0xe
    jmp short @..api_idx_0006_2.l3
    mov word [bp - 0x0006], 0x12
    jmp short @..api_idx_0006_2.l3
    mov word [bp - 0x0006], 0x18
    jmp short @..api_idx_0006_2.l3
    pop di
    sahf
    db 0x66, 0x9e ; sahf
    insw
    sahf
    je short 0x4def
    jnp short 0x4df1
    sbb byte [bp - 0x6177], 0x3d
    pop es
    add byte [bp + di + 0x8], dh
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx - 0x6170]
@..api_idx_0006_2.l3:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    cmp ax, word [bp - 0x0006]
    jl short @..api_idx_0006_2.l4
    inc word [bp - 0x0004]
@..api_idx_0006_2.l4:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short @..api_idx_0006_2.l1
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2e]
    sub ah, ah
    cmp ax, word [bp - 0x0004]
    jge short @..api_idx_0006_2.l5
    mov al, byte [bp - 0x0004]
    mov byte [bx + 0x5e2e], al
@..api_idx_0006_2.l5:
    ret
api_idx_00a4:
    mov ax, 0xff5c
    db 0xe8, 0x67, 0xa5 ; call 0xf40b
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    inc word [bx + 0x5c18]
    mov al, byte [bx + 0x5e3b]
    sub ah, ah
    cmp ax, word [bx + 0x5c18]
    jg short @..api_idx_00a4.l1
    mov byte [bx + 0x5e3b], 0
@..api_idx_00a4.l1:
    push word [bp + 0x4]
    call api_idx_0006_2
    pop cx
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call math_loc_2189
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0x1392
    push ax
    db 0xe8, 0x5b, 0x66 ; call 0xb53b
    add sp, byte 4
    mov ax, 0x5e
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, 0x5bf4
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0x08, 0x64 ; call 0xb300
    add sp, byte 6
    lea ax, word [bp - 0x00a4]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    add ax, strict word 0x78
    push ax
    db 0xe8, 0x26, 0x66 ; call 0xb53b
    add sp, byte 4
    mov ax, 0x24
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    db 0xe8, 0xd8, 0x63 ; call 0xb300
    add sp, byte 6
    mov ax, 1
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    call api_idx_0004_5
    add sp, byte 4
    push word [bp + 0x4]
    call api_idx_00b4
    pop cx
    push word [bp + 0x4]
    call api_idx_00ac
    pop cx
    push word [bp + 0x4]
    call api_idx_0004_8
    pop cx
    push word [bp + 0x4]
    call math_loc_4310
    pop cx
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
@..api_idx_00a4.l2:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x6a10]
    add word [bp - 0x0004], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short @..api_idx_00a4.l2
    cmp word [bp - 0x0004], byte 0
    jle short @..api_idx_00a4.l3
    mov ax, 0x25d
    push ax
    push word [bp + 0x4]
    call api_idx_0088
    add sp, byte 4
@..api_idx_00a4.l3:
    push word [bp + 0x4]
    call api_idx_0052
    pop cx
    push word [bp + 0x4]
    call api_idx_0018
    pop cx
    mov word [bp - 0x0002], 0
@..api_idx_00a4.l4:
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d50], 0
    jbe short @..api_idx_00a4.l5
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_00ca
    add sp, byte 4
    jmp short @..api_idx_00a4.l4
@..api_idx_00a4.l5:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short @..api_idx_00a4.l4
    ret
api_idx_0046:
    mov ax, 0xffba
    db 0xe8, 0x3b, 0xa4 ; call 0xf40b
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    push ax
    lea ax, word [bp - 0x0044]
    push ax
    mov ax, 0
    push ax
    db 0xe8, 0x4e, 0x66 ; call 0xb63c
    add sp, byte 8
    mov word [data_9492], 0
@..api_idx_0046.l1:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp word [bx + 0x5c18], byte 0x10
    jge short @..api_idx_0046.l2
    mov ax, word [bx + 0x5c18]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0048]
    mov dx, word [bx - 0x0046]
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
    jmp short @..api_idx_0046.l3
@..api_idx_0046.l2:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    add ax, strict word 0xfff0
    mov word [bp - 0x0046], ax
    mov ax, word [bp - 0x0008]
    mov dx, word [bp - 0x0006]
    sub ax, word [bp - 0x000c]
    sbb dx, word [bp - 0x000a]
    push ax
    push dx
    mov ax, word [bp - 0x0046]
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
    add ax, word [bp - 0x0008]
    adc dx, word [bp - 0x0006]
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
@..api_idx_0046.l3:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c00]
    mov dx, word [bx + 0x5c02]
    cmp dx, word [bp - 0x0002]
    jl short @..api_idx_0046.l4
    jne short @..api_idx_0046.l5
    cmp ax, word [bp - 0x0004]
    jae short @..api_idx_0046.l5
@..api_idx_0046.l4:
    jmp short @..local.l149
@..api_idx_0046.l5:
    cmp word [bp + 0x6], byte 0
    je short @..api_idx_0046.l6
    push word [bp + 0x4]
    call api_idx_00a4
    pop cx
    jmp short @..local.l148
@..api_idx_0046.l6:
    mov ax, 1
    ret
@..local.l148:
    jmp short @..local.l150
@..local.l149:
    mov ax, 0
    ret
@..local.l150:
    jmp near @..api_idx_0046.l1
    db 0xc3
api_idx_000e:
    mov ax, 0xfff2
    db 0xe8, 0x64, 0xa3 ; call 0xf40b
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
    db 0xe8, 0x74, 0x9e ; call 0xefd1
    add sp, byte 0x16
@..api_idx_000e.l8:
    ret
api_idx_000c_3:
    mov ax, 0xfff4
    db 0xe8, 0xa4, 0xa2 ; call 0xf40b
    mov word [data_905e], 5
    mov word [data_830a], 5
    mov word [data_9436], 0x14
    mov word [data_9438], 0
    mov word [data_943a], 0
    mov word [data_9704], 0xffff
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_000c_3.l2
@..api_idx_000c_3.l1:
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call api_idx_0046
    add sp, byte 4
    or word [bp - 0x0004], ax
    inc word [bp - 0x0002]
@..api_idx_000c_3.l2:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..api_idx_000c_3.l1
    cmp word [bp - 0x0004], byte 0
    jne short @..local.l151
    ret
@..local.l151:
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
    db 0xe8, 0x46, 0x84 ; call 0xd61c
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
    mov word [bp - 0x000a], dx
    mov word [bp - 0x000c], ax
    mov ax, 0
    push ax
    mov ax, 0x93f0
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
    db 0xe8, 0x15, 0x97 ; call 0xe935
    add sp, byte 0x0c
    mov word [data_9418], dx
    mov word [data_9416], ax
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
    db 0xe8, 0xf0, 0x96 ; call 0xe935
    add sp, byte 0x0c
    mov word [data_941c], dx
    mov word [data_941a], ax
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
    db 0xe8, 0xcb, 0x96 ; call 0xe935
    add sp, byte 0x0c
    mov word [data_9420], dx
    mov word [data_941e], ax
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
    db 0xe8, 0xa6, 0x96 ; call 0xe935
    add sp, byte 0x0c
    mov word [data_9424], dx
    mov word [data_9422], ax
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
    db 0xe8, 0x81, 0x96 ; call 0xe935
    add sp, byte 0x0c
    mov word [data_9428], dx
    mov word [data_9426], ax
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
    db 0xe8, 0x5c, 0x96 ; call 0xe935
    add sp, byte 0x0c
    mov word [data_942c], dx
    mov word [data_942a], ax
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
    db 0xe8, 0x37, 0x96 ; call 0xe935
    add sp, byte 0x0c
    mov word [data_9434], dx
    mov word [data_9432], ax
    mov ax, 0xf
    push ax
    mov ax, 0xb
    push ax
    db 0xe8, 0x09, 0x83 ; call 0xd61c
    add sp, byte 4
    call 0xd9a6
    mov word [data_8450], ax
    test ax, ax
    je short @..local.l152
    mov ax, 0
    push ax
    push ax
    call 0xd7e7
    add sp, byte 4
    mov ax, word [data_010c]
    mov word [data_844e], ax
    mov ax, 1
    push ax
    push word [data_844e]
    mov ax, 0
    push ax
    call 0xd964
    add sp, byte 6
    mov word [data_844c], ax
@..local.l152:
    mov word [data_9492], 0
    mov word [data_9490], 0
    mov word [data_948e], 0
    mov word [bp - 0x0002], 0
    jmp short @..local.l154
@..local.l153:
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call api_idx_0046
    add sp, byte 4
    inc word [bp - 0x0002]
@..local.l154:
    mov ax, word [bp - 0x0002]
    cmp ax, word [data_69c8]
    jl short @..local.l153
    cmp word [data_8450], byte 0
    je short @..local.l155
    push word [data_844c]
    push word [data_844e]
    call 0xd91b
    add sp, byte 4
    mov ax, 0
    push ax
    call 0xd907
    pop cx
@..local.l155:
    mov ax, 0xf
    push ax
    call 0xc12a
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_9434]
    push word [data_9432]
    db 0xe8, 0x92, 0x95 ; call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_942c]
    push word [data_942a]
    db 0xe8, 0x7c, 0x95 ; call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_9428]
    push word [data_9426]
    db 0xe8, 0x66, 0x95 ; call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_9424]
    push word [data_9422]
    db 0xe8, 0x50, 0x95 ; call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_9420]
    push word [data_941e]
    db 0xe8, 0x3a, 0x95 ; call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_941c]
    push word [data_941a]
    db 0xe8, 0x24, 0x95 ; call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [data_9418]
    push word [data_9416]
    db 0xe8, 0x0e, 0x95 ; call 0xe942
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x000c]
    db 0xe8, 0xfa, 0x94 ; call 0xe942
    add sp, byte 8
    mov ax, 1
    push ax
    db 0xe8, 0xd8, 0x6c ; call 0xc12a
    pop cx
    mov ax, 2
    push ax
    db 0xe8, 0xd0, 0x6c ; call 0xc12a
    pop cx
    call api_idx_000e
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    db 0xe8, 0x6c, 0x94 ; call 0xe8da
    add sp, byte 8
    ret

    db 0x8f, 0x06, 0x06, 0x94, 0x59, 0x89, 0x26, 0x02, 0x94, 0x89, 0x2e, 0x04, 0x94, 0x89, 0x36, 0xfe
    db 0x93, 0x89, 0x3e, 0x00, 0x94, 0xfc, 0xbf, 0x08, 0x94, 0xb9, 0xac, 0x97, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0x73, 0xab, 0x8b, 0x2e, 0x04, 0x94, 0x8b, 0x26, 0x02
    db 0x94, 0x8b, 0x36, 0xfe, 0x93, 0x8b, 0x3e, 0x00, 0x94, 0x51, 0xff, 0x26, 0x06, 0x94, 0x25, 0x20
    db 0x00, 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
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
    db 0x25, 0x20, 0x28, 0x00, 0x29, 0x00, 0x2f
    times 4 db 0
    db 'PCVWSCRN.VGA', 0
    times 11 db 0

