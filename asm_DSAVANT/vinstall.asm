%include "structs/structs.inc"
%include "structs/loc_2e5b.inc"
org 0
bits 16
    ; header (512 bytes)
    db 0x4d, 0x5a, 0x14, 0x00, 0x31, 0x00, 0x01, 0x00, 0x20, 0x00, 0x5d, 0x04, 0xff, 0xff, 0x8e, 0x03
    db 0xfe, 0x6a, 0x00, 0x00, 0xd2, 0x33, 0x00, 0x00, 0x20
    times 7 db 0
    db 0xd3, 0x33
    times 478 db 0

data_0002 equ 0x0002
data_0004 equ 0x0004
data_0005 equ 0x0005
data_0006 equ 0x0006
data_002c equ 0x002c
data_002e equ 0x002e
data_0030 equ 0x0030
data_0080 equ 0x0080
data_0302 equ 0x0302
data_060e equ 0x060e
data_09cd equ 0x09cd
data_0a80 equ 0x0a80
data_0b34 equ 0x0b34
data_0e18 equ 0x0e18
data_0e1c equ 0x0e1c
data_0e2d equ 0x0e2d
data_0e8f equ 0x0e8f
data_0ec8 equ 0x0ec8
data_0ee4 equ 0x0ee4
data_1bf9 equ 0x1bf9
loc_1fcd equ 0x1fcd
data_2072 equ 0x2072
data_2279 equ 0x2279
data_230e equ 0x230e
data_2310 equ 0x2310
data_2312 equ 0x2312
data_2314 equ 0x2314
data_2316 equ 0x2316
data_2318 equ 0x2318
data_231a equ 0x231a
data_244e equ 0x244e
data_24d4 equ 0x24d4
data_24d6 equ 0x24d6
data_24d8 equ 0x24d8
data_24da equ 0x24da
data_24dc equ 0x24dc
data_24de equ 0x24de
data_24e0 equ 0x24e0
data_24e4 equ 0x24e4
data_2500 equ 0x2500
data_2512 equ 0x2512
data_2514 equ 0x2514
data_2516 equ 0x2516
data_2518 equ 0x2518
data_251a equ 0x251a
data_251b equ 0x251b
data_251c equ 0x251c
data_2530 equ 0x2530
data_2534 equ 0x2534
data_2536 equ 0x2536
data_2538 equ 0x2538
data_253a equ 0x253a
data_253c equ 0x253c
data_2644 equ 0x2644
data_2645 equ 0x2645
data_2646 equ 0x2646
data_2647 equ 0x2647
data_2698 equ 0x2698
data_2823 equ 0x2823
data_2825 equ 0x2825
loc_2877 equ 0x2877
data_29ba equ 0x29ba
data_29bb equ 0x29bb
data_29d0 equ 0x29d0
data_29d1 equ 0x29d1
data_29d2 equ 0x29d2
data_29d4 equ 0x29d4
data_29d5 equ 0x29d5
data_29d6 equ 0x29d6
data_29d7 equ 0x29d7
data_29d8 equ 0x29d8
data_29da equ 0x29da
data_29dc equ 0x29dc
data_29dd equ 0x29dd
data_29df equ 0x29df
data_29e1 equ 0x29e1
data_29e2 equ 0x29e2
data_29e3 equ 0x29e3
data_29e6 equ 0x29e6
data_29e8 equ 0x29e8
data_29ea equ 0x29ea
data_29ec equ 0x29ec
data_29ee equ 0x29ee
data_2af0 equ 0x2af0
data_2af2 equ 0x2af2
data_2af4 equ 0x2af4
data_2af6 equ 0x2af6
data_2af8 equ 0x2af8
data_2afa equ 0x2afa
data_2bc4 equ 0x2bc4
loc_2e49 equ 0x2e49
loc_2e5b equ 0x2e5b
loc_2e5d equ 0x2e5d
loc_2e5f equ 0x2e5f
data_3031 equ 0x3031
data_312d equ 0x312d
data_32e8 equ 0x32e8
data_33d0 equ 0x33d0
data_33eb equ 0x33eb
data_3632 equ 0x3632
data_380c equ 0x380c
leaf_loc_5fe5 equ 0x5fe5

loc_0200:
    push bp
    mov bp, sp
    add sp, byte 0xee
loc_0206:
    mov bx, word [bp + 0x4]
    mov al, byte [bx]
    cbw
    push ax
    call loc_2bb2
    pop cx
    add ax, strict word 0xffbf
    mov word [bp - 0x0012], ax
    cmp ax, strict word 0
    jl short @..local.l3
    cmp ax, strict word 0x19
    jg short @..local.l3
    mov ax, word [bp - 0x0012]
    mov word [bp - 0x000a], ax
    mov word [bp - 0x0010], 0xe00
    lea ax, word [bp - 0x0010]
    push ax
    push ax
    mov ax, 0x21
    push ax
    call loc_2b31
    add sp, byte 6
    mov word [bp - 0x0010], 0x1900
    lea ax, word [bp - 0x0010]
    push ax
    push ax
    mov ax, 0x21
    push ax
    call loc_2b31
    add sp, byte 6
    mov ax, word [bp - 0x0010]
    and ax, 0xff
    cmp ax, word [bp - 0x0012]
    je short @..local.l2
    mov ax, 0xffff
@..local.l1:
    mov sp, bp
    pop bp
    ret
@..local.l2:
    jmp short @..local.l4
@..local.l3:
    mov ax, 0xffff
    jmp short @..local.l1
@..local.l4:
    mov ax, 0
    jmp short @..local.l1
math_loc_026d:
    push bp
    mov bp, sp
    add sp, byte 0xfe
    push di
    push si
    mov di, 0
    push word [bp + 0x4]
    call strlen_3
    pop cx
    dec ax
    mov word [bp - 0x0002], ax
    jmp short @..math_loc_026d.l2
@..math_loc_026d.l1:
    mov bx, word [bp + 0x4]
    mov al, byte [bx + di]
    cbw
    mov si, ax
    add bx, word [bp - 0x0002]
    mov al, byte [bx]
    mov bx, word [bp + 0x4]
    mov byte [bx + di], al
    mov ax, si
    mov cx, word [bp + 0x4]
    add cx, word [bp - 0x0002]
    mov bx, cx
    mov byte [bx], al
    dec word [bp - 0x0002]
    inc di
@..math_loc_026d.l2:
    cmp di, word [bp - 0x0002]
    jl short @..math_loc_026d.l1
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
math_loc_02b2:
    push bp
    mov bp, sp
    push di
    push si
    mov di, word [bp + 0x4]
    mov ax, di
    cmp ax, strict word 0
    jge short @..math_loc_02b2.l1
    neg ax
    mov word [bp + 0x4], ax
@..math_loc_02b2.l1:
    mov si, 0
@..math_loc_02b2.l2:
    mov ax, word [bp + 0x4]
    mov cx, 0xa
    cwd
    idiv cx
    mov ax, dx
    add ax, strict word 0x30
    mov cx, word [bp + 0x6]
    add cx, si
    mov bx, cx
    inc si
    mov byte [bx], al
    mov ax, word [bp + 0x4]
    mov cx, 0xa
    cwd
    idiv cx
    mov word [bp + 0x4], ax
    cmp ax, strict word 0
    jg short @..math_loc_02b2.l2
    cmp di, byte 0
    jge short @..math_loc_02b2.l3
    mov ax, word [bp + 0x6]
    add ax, si
    mov bx, ax
    inc si
    mov byte [bx], 0x2d
@..math_loc_02b2.l3:
    mov bx, word [bp + 0x6]
    mov byte [bx + si], 0
    push word [bp + 0x6]
    call math_loc_026d
    pop cx
    pop si
    pop di
    mov sp, bp
    pop bp
    ret

    db 0x55, 0x8b, 0xec, 0x83, 0xc4, 0xfc, 0x57, 0x56, 0x8b, 0x46, 0x04, 0x8b, 0x56, 0x06, 0x89, 0x56
    db 0xfe, 0x89, 0x46, 0xfc, 0x83, 0xfa, 0x00, 0x7f, 0x07, 0x75, 0x07, 0x3d, 0x00, 0x00, 0x72, 0x02
    db 0xeb, 0x0d, 0xf7, 0xda, 0xf7, 0xd8, 0x83, 0xda, 0x00, 0x89, 0x56, 0x06, 0x89, 0x46, 0x04, 0xbe
    db 0x00, 0x00, 0x8b, 0x46, 0x04, 0x8b, 0x56, 0x06, 0xb9, 0x0a, 0x00, 0xbb, 0x00, 0x00, 0xe8, 0xef
    db 0x30, 0x05, 0x30, 0x00, 0x83, 0xd2, 0x00, 0x8b, 0xfe, 0x46, 0x8b, 0x5e, 0x08, 0x88, 0x01, 0x8b
    db 0x46, 0x04, 0x8b, 0x56, 0x06, 0xb9, 0x0a, 0x00, 0xbb, 0x00, 0x00, 0xe8, 0xa4, 0x30, 0x89, 0x56
    db 0x06, 0x89, 0x46, 0x04, 0x83, 0xfa, 0x00, 0x7f, 0x07, 0x75, 0x07, 0x3d, 0x00, 0x00, 0x76, 0x02
    db 0xeb, 0xc0, 0x83, 0x7e, 0xfe, 0x00, 0x7f, 0x08, 0x75

@..local.l5:

    db 0x08, 0x83, 0x7e, 0xfc, 0x00, 0x72, 0x02, 0xeb, 0x09, 0x8b, 0xfe, 0x46, 0x8b, 0x5e, 0x08, 0xc6
    db 0x01, 0x2d, 0x8b, 0x5e, 0x08, 0xc6, 0x00, 0x00, 0xff, 0x76, 0x08, 0xe8, 0xc1, 0xfe, 0x59, 0x5e
    db 0x5f, 0x8b, 0xe5, 0x5d, 0xc3

loc_03b3:
    push bp
    mov bp, sp
    add sp, strict word 0xff00
    push word [bp + 0x6]
    push word [bp + 0x4]
    call bios_video_loc_2551
    add sp, byte 4
    lea ax, word [bp - 0x00ff]
    push ax
    push word [bp + 0x8]
    call math_loc_02b2
    add sp, byte 4
    lea ax, word [bp - 0x00ff]
    push ax
    call bios_video_loc_2621
    pop cx
    mov sp, bp
    pop bp
    ret
loc_03e1:
    push bp
    mov bp, sp
    add sp, strict word 0xff00
    push word [bp + 0x6]
    push word [bp + 0x4]
    call bios_video_loc_2551
    add sp, byte 4
    lea ax, word [bp - 0x00ff]
    push ax
    push word [bp + 0x8]
    call math_loc_02b2
    add sp, byte 4
    lea ax, word [bp - 0x00ff]
    push ax
    call bios_video_loc_25d3
    pop cx
    mov sp, bp
    pop bp
    ret
loc_040f:
    push bp
    mov bp, sp
    push word [bp + 0x6]
    push word [bp + 0x4]
    call bios_video_loc_2551
    add sp, byte 4
    push word [bp + 0x8]
    call bios_video_loc_2621
    pop cx
    mov sp, bp
    pop bp
    ret
loc_0429:
    push bp
    mov bp, sp
    push word [bp + 0x6]
    push word [bp + 0x4]
    call bios_video_loc_2551
    add sp, byte 4
    push word [bp + 0x8]
    call bios_video_loc_25d3
    pop cx
    mov sp, bp
    pop bp
    ret
loc_0443:
    call bios_video_loc_252e
    mov ax, 0
    push ax
    push ax
    call bios_video_loc_2551
    add sp, byte 4
    ret
math_loc_0452:
    push bp
    mov bp, sp
    add sp, byte 0xfe
    call bios_video_loc_2720
    mov word [bp - 0x0002], ax
    mov ax, 7
    push ax
    mov ax, 0x1444
    push ax
    call loc_2c62
    add sp, byte 4
    push word [bp - 0x0002]
    call bios_video_loc_2733
    pop cx
    mov sp, bp
    pop bp
    ret

    db 0x55, 0x8b, 0xec, 0x83, 0xc4, 0xf6, 0xc6, 0x46, 0xfe, 0x00, 0xc6, 0x46, 0xff, 0x00, 0xff, 0x76
    db 0x06, 0xff, 0x76, 0x04, 0xe8, 0xc3, 0x20, 0x83, 0xc4, 0x04, 0xc7, 0x46, 0xf8, 0x00, 0x00, 0xc7
    db 0x46, 0xf6, 0x00, 0x00, 0xc7, 0x46, 0xfa, 0x00, 0x00, 0xe8, 0x7e, 0x20, 0x89, 0x46, 0xfc, 0x3d
    db 0x0d, 0x00, 0x75, 0x03, 0xe9, 0xc2, 0x00, 0x3d, 0x08, 0x00, 0x75, 0x4b, 0x83, 0x7e, 0xf6, 0x00
    db 0x7e, 0x3f, 0xff, 0x4e, 0xf6, 0x75, 0x05, 0xc7, 0x46, 0xfa, 0x00, 0x00, 0x8b, 0x46, 0xf8, 0xb9
    db 0x0a, 0x00, 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xf8, 0xff, 0x4e, 0x06, 0xff, 0x76, 0x06, 0xff, 0x76
    db 0x04, 0xe8, 0x76, 0x20, 0x83, 0xc4, 0x04, 0xc6, 0x46, 0xfe, 0x20, 0x8d, 0x46, 0xfe, 0x50, 0xe8
    db 0x38, 0x21, 0x59, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x5e, 0x20, 0x83, 0xc4, 0x04, 0xeb
    db 0x03, 0xe8, 0x57, 0xff, 0xe9, 0x6f, 0x00, 0x8b, 0x46, 0xf6, 0x3b, 0x46, 0x08, 0x7c, 0x05, 0xe8
    db 0x49, 0xff, 0xeb, 0x62, 0x83, 0x7e, 0xf6, 0x00, 0x75, 0x21, 0x83, 0x7e, 0xfc, 0x2d, 0x75, 0x1b
    db 0xff, 0x46, 0xf6, 0xc7, 0x46, 0xfa, 0x01, 0x00, 0x8a, 0x46, 0xfc, 0x88, 0x46, 0xfe, 0x8d, 0x46
    db 0xfe, 0x50, 0xe8, 0xf5, 0x20, 0x59, 0xff, 0x46, 0x06, 0xeb, 0x3b, 0x83, 0x7e, 0xfc, 0x30, 0x7c
    db 0x32, 0x83, 0x7e, 0xfc, 0x39, 0x7f, 0x2c, 0xff, 0x46, 0xf6, 0x8b, 0x46, 0xf8, 0x8b, 0xd0, 0xd1
    db 0xe0, 0xd1, 0xe0, 0x03, 0xc2, 0xd1, 0xe0, 0x03, 0x46, 0xfc, 0x05, 0xd0, 0xff, 0x89, 0x46, 0xf8
    db 0x8a, 0x46, 0xfc, 0x88, 0x46, 0xfe, 0x8d, 0x46, 0xfe, 0x50, 0xe8, 0xbd, 0x20, 0x59, 0xff, 0x46
    db 0x06, 0xeb, 0x03, 0xe8, 0xe5, 0xfe, 0xe9, 0x30, 0xff, 0x83, 0x7e, 0xfa, 0x01, 0x75, 0x09, 0x8b
    db 0x46, 0xf8, 0xf7, 0xd8, 0x8b, 0xe5, 0x5d, 0xc3, 0x8b, 0x46, 0xf8, 0xeb, 0xf7

loc_0584:
    push bp
    mov bp, sp
    add sp, byte 0xfc
    call bios_video_loc_2720
    mov word [bp - 0x0004], ax
    mov ax, 0x20
    cmp word [bp + 0x4], byte 1
    jne short @..local.l6
    mov ax, 0x11
@..local.l6:
    mov byte [bp - 0x0002], al
    mov byte [bp - 0x0001], 0
    lea ax, word [bp - 0x0002]
    push ax
    call bios_video_loc_2621
    pop cx
    push word [bp - 0x0004]
    call bios_video_loc_2733
    pop cx
    mov sp, bp
    pop bp
    ret
loc_05b6:
    push bp
    mov bp, sp
    add sp, byte 0xf6
    push si
    mov byte [bp - 0x0002], 0
    mov byte [bp - 0x0001], 0
    push word [bp + 0x8]
    call strlen_3
    pop cx
    mov word [bp - 0x0006], ax
    add word [bp + 0x6], ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call bios_video_loc_2551
    add sp, byte 4
    mov ax, 1
    push ax
    call loc_0584
    pop cx
@..local.l7:
    call dos_con_in_noecho
    push ax
    call loc_06a6
    pop cx
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xd
    jne short @..local.l8
    jmp near @..local.l15
@..local.l8:
    mov ax, 0
    push ax
    call loc_0584
    pop cx
    cmp word [bp - 0x0004], byte 8
    je short @..local.l9
    cmp word [bp - 0x0004], byte 8
    jne short @..local.l12
@..local.l9:
    cmp word [bp - 0x0006], byte 0
    jle short @..local.l10
    dec word [bp - 0x0006]
    mov bx, word [bp + 0x8]
    mov si, word [bp - 0x0006]
    mov byte [bx + si], 0
    dec word [bp + 0x6]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call bios_video_loc_2551
    add sp, byte 4
    mov byte [bp - 0x0002], 0x20
    lea ax, word [bp - 0x0002]
    push ax
    call bios_video_loc_2621
    pop cx
    push word [bp + 0x6]
    push word [bp + 0x4]
    call bios_video_loc_2551
    add sp, byte 4
    jmp short @..local.l11
@..local.l10:
    call math_loc_0452
@..local.l11:
    jmp short @..local.l14
@..local.l12:
    mov ax, word [bp - 0x0006]
    cmp ax, word [bp + 0xa]
    jl short @..local.l13
    call math_loc_0452
    jmp short @..local.l14
@..local.l13:
    cmp word [bp - 0x0004], byte 0x20
    jl short @..local.l14
    cmp word [bp - 0x0004], byte 0x7f
    jg short @..local.l14
    mov al, byte [bp - 0x0004]
    mov bx, word [bp + 0x8]
    mov si, word [bp - 0x0006]
    mov byte [bx + si], al
    inc word [bp - 0x0006]
    mov bx, word [bp + 0x8]
    mov si, word [bp - 0x0006]
    mov byte [bx + si], 0
    mov al, byte [bp - 0x0004]
    mov byte [bp - 0x0002], al
    lea ax, word [bp - 0x0002]
    push ax
    call bios_video_loc_2621
    pop cx
    inc word [bp + 0x6]
@..local.l14:
    mov ax, 1
    push ax
    call loc_0584
    pop cx
    jmp near @..local.l7
@..local.l15:
    mov ax, 0
    push ax
    call loc_0584
    pop cx
    pop si
    mov sp, bp
    pop bp
    ret
loc_06a6:
    push bp
    mov bp, sp
    add sp, byte 0xfe
    cmp word [bp + 0x4], byte 0
    jne short @..local.l22
    call dos_con_in_noecho
    mov word [bp - 0x0002], ax
    jmp short @..local.l21
@..local.l16:
    mov ax, 8
@..local.l17:
    mov sp, bp
    pop bp
    ret
@..local.l18:
    mov ax, 9
    jmp short @..local.l17
@..local.l19:
    mov ax, 0xa
    jmp short @..local.l17
@..local.l20:
    mov ax, 0xb
    jmp short @..local.l17
@..local.l21:
    cmp ax, strict word 0x48
    je short @..local.l18
    cmp ax, strict word 0x4b
    je short @..local.l16
    cmp ax, strict word 0x4d
    je short @..local.l19
    cmp ax, strict word 0x50
    je short @..local.l20
    jmp short @..local.l23
@..local.l22:
    push word [bp + 0x4]
    call loc_2bb2
    pop cx
    jmp short @..local.l17
@..local.l23:
    jmp short @..local.l17
loc_06f1:
    push bp
    mov bp, sp
    add sp, byte 0xf0
    mov ax, word [bp + 0x4]
    mov word [bp - 0x0010], ax
    lea ax, word [bp - 0x0010]
    push ax
    push ax
    mov ax, 0x10
    push ax
    call loc_2b31
    add sp, byte 6
    mov sp, bp
    pop bp
    ret

    db 0x55, 0x8b, 0xec, 0x81, 0xc4, 0xfc, 0xfe, 0x8d, 0x86, 0x01, 0xff, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x90, 0xfb, 0x83, 0xc4, 0x04, 0xc6, 0x86, 0xff, 0xfe, 0x00, 0xc6, 0x86, 0x00, 0xff, 0x00, 0x8d
    db 0x86, 0x01, 0xff, 0x50, 0xe8
    db '8.Y+F'
    db 0x06, 0x7d, 0x0d, 0xb8, 0x47, 0x14, 0x50, 0xe8, 0xdd, 0x1e, 0x59, 0xff, 0x4e, 0x06, 0xeb, 0xe5
    db 0x8d, 0x86, 0x01, 0xff, 0x50, 0xe8, 0x1d, 0x2e, 0x59, 0x2b, 0x46, 0x06, 0x89, 0x86, 0xfd, 0xfe
    db 0xeb, 0x1b, 0x8b, 0x9e, 0xfd, 0xfe, 0x03, 0xdd, 0x8a, 0x87, 0x01, 0xff, 0x88, 0x86, 0xff, 0xfe
    db 0x8d, 0x86, 0xff, 0xfe, 0x50, 0xe8, 0xaf, 0x1e, 0x59, 0xff, 0x86, 0xfd, 0xfe, 0x8d, 0x86, 0x01
    db 0xff, 0x50, 0xe8, 0xf0, 0x2d, 0x59, 0x3b, 0x86, 0xfd, 0xfe, 0x7f, 0xd6, 0x8b, 0xe5, 0x5d, 0xc3
    db 0x55, 0x8b, 0xec, 0x81, 0xc4, 0xfc, 0xfe, 0x8d, 0x86, 0x01, 0xff, 0x50, 0xff, 0x76, 0x06, 0xff
    db 0x76, 0x04, 0xe8, 0x76, 0xfb, 0x83, 0xc4, 0x06, 0xc6, 0x86, 0xff, 0xfe, 0x00, 0xc6, 0x86, 0x00
    db 0xff, 0x00, 0x8d, 0x86, 0x01, 0xff, 0x50, 0xe8, 0xbb, 0x2d, 0x59, 0x2b, 0x46, 0x08, 0x7d, 0x0d
    db 0xb8, 0x49, 0x14, 0x50, 0xe8, 0x60, 0x1e, 0x59, 0xff, 0x4e, 0x08, 0xeb, 0xe5, 0x8d, 0x86, 0x01
    db 0xff, 0x50, 0xe8, 0xa0, 0x2d, 0x59, 0x2b, 0x46, 0x08, 0x89, 0x86, 0xfd, 0xfe, 0xeb, 0x1b, 0x8b
    db 0x9e, 0xfd, 0xfe, 0x03, 0xdd, 0x8a, 0x87, 0x01, 0xff, 0x88, 0x86, 0xff, 0xfe, 0x8d, 0x86, 0xff
    db 0xfe, 0x50, 0xe8, 0x32, 0x1e, 0x59, 0xff, 0x86, 0xfd, 0xfe, 0x8d, 0x86, 0x01, 0xff, 0x50, 0xe8
    db 0x73, 0x2d, 0x59, 0x3b, 0x86, 0xfd, 0xfe, 0x7f, 0xd6, 0x8b, 0xe5, 0x5d, 0xc3

loc_0807:
    push bp
    mov bp, sp
    push word [bp + 0x4]
    call leaf_loc_2806
    pop cx
    mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    push word [bp + 0x4]
    call loc_2877
    pop cx
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
loc_0823:
    push bp
    mov bp, sp
    add sp, strict word 0xfefe
    mov ax, word [bp + 0x4]
    mov word [bp - 0x0002], ax
@..local.l24:
    push word [bp + 0x8]
    push word [bp + 0x6]
    call bios_video_loc_2551
    add sp, byte 4
    lea ax, word [bp - 0x0101]
    push ax
    push word [bp - 0x0002]
    call math_loc_02b2
    add sp, byte 4
    lea ax, word [bp - 0x0101]
    push ax
    call bios_video_loc_25d3
    pop cx
    mov ax, 0x144b
    push ax
    call bios_video_loc_2621
    pop cx
    push word [bp + 0xa]
    lea ax, word [bp - 0x0101]
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call loc_05b6
    add sp, byte 8
    lea ax, word [bp - 0x0101]
    push ax
    call loc_0807
    pop cx
    mov word [bp - 0x0002], ax
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xe]
    jl short @..local.l24
    cmp ax, word [bp + 0xc]
    jg short @..local.l24
    mov ax, word [bp - 0x0002]
    mov sp, bp
    pop bp
    ret

    db 0x55, 0x8b, 0xec, 0x81, 0xc4, 0xfc, 0xfe, 0xc6, 0x86, 0xfd, 0xfe, 0x00, 0xff, 0x76, 0x0a, 0xff
    db 0x76, 0x08, 0xe8, 0xad, 0x1c, 0x83, 0xc4, 0x04, 0xff, 0x76, 0x0c, 0xff, 0x76, 0x06, 0xff, 0x76
    db 0x04, 0xe8, 0xd7, 0xfe, 0x83, 0xc4, 0x06, 0xff, 0x76, 0x0c, 0x8d, 0x86, 0xfd, 0xfe, 0x50, 0xff
    db 0x76, 0x0a, 0xff, 0x76, 0x08, 0xe8, 0xef, 0xfc, 0x83, 0xc4, 0x08, 0x80, 0xbe, 0xfd, 0xfe, 0x00
    db 0x75, 0x0e, 0x8b, 0x46, 0x04, 0x8b, 0x56, 0x06, 0x89, 0x56, 0xfe, 0x89, 0x46, 0xfc, 0xeb, 0x0f
    db 0x8d, 0x86, 0xfd, 0xfe, 0x50, 0xe8, 0x2e, 0xff, 0x59, 0x89, 0x56, 0xfe, 0x89, 0x46, 0xfc, 0x8b
    db 0x46, 0xfc, 0x8b, 0x56, 0xfe, 0x3b, 0x56, 0x10, 0x7f, 0x07, 0x75, 0x07, 0x3b, 0x46, 0x0e, 0x76
    db 0x02, 0xeb, 0x99, 0xff, 0x76, 0x0a, 0xff, 0x76, 0x08, 0xe8, 0x46, 0x1c, 0x83, 0xc4, 0x04, 0xff
    db 0x76, 0x0c, 0xff, 0x76, 0xfe, 0xff, 0x76, 0xfc, 0xe8, 0x70, 0xfe, 0x83, 0xc4, 0x06, 0x8b, 0x46
    db 0xfc, 0x8b, 0x56, 0xfe, 0x8b, 0xe5, 0x5d, 0xc3

loc_0927:
    mov byte [data_2644], 0x1f
    mov byte [data_2645], data_002e
    mov byte [data_2645], 0x70
    mov byte [data_2646], 0x4e
    mov byte [data_2647], 0x1f
    call loc_0443
    ret
math_loc_0944:
    push bp
    mov bp, sp
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call loc_040f
    add sp, byte 6
    mov ax, word [bp + 0xa]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x160]
    mov ax, 0x16
    push ax
    push word [bp + 0x4]
    call loc_040f
    add sp, byte 6
    push word [bp + 0xc]
    mov ax, data_002e
    push ax
    push word [bp + 0x4]
    call loc_040f
    add sp, byte 6
    push word [bp + 0xe]
    mov ax, 0x3a
    push ax
    push word [bp + 0x4]
    call loc_040f
    add sp, byte 6
    mov sp, bp
    pop bp
    ret
math_loc_0992:
    push bp
    mov bp, sp
    mov ax, 0x144f
    push ax
    mov ax, 0
    push ax
    mov ax, 0x16
    push ax
    call loc_040f
    add sp, byte 6
    push word [bp + 0x4]
    push word [bp + 0x4]
    call strlen_3
    pop cx
    inc ax
    mov cx, data_0002
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x28
    sub ax, cx
    push ax
    mov ax, 0x16
    push ax
    call loc_040f
    add sp, byte 6
    call math_loc_0452
@..math_loc_0992.l1:
    call dos_con_in_noecho
    cmp ax, strict word 0xd
    je short @..math_loc_0992.l2
    jmp short @..math_loc_0992.l1
@..math_loc_0992.l2:
    mov ax, 0x149f
    push ax
    mov ax, 0
    push ax
    mov ax, 0x16
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x2648
    push ax
    push ax
    call strlen_3
    pop cx
    inc ax
    mov cx, data_0002
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x28
    sub ax, cx
    push ax
    mov ax, 0x16
    push ax
    call loc_040f
    add sp, byte 6
    mov sp, bp
    pop bp
    ret
loc_0a0f:
    push bp
    mov bp, sp
    add sp, strict word 0xff60
    push word [bp + 0x6]
    lea ax, word [bp - 0x0050]
    push ax
    call strlen_2
    add sp, byte 4
    mov ax, 0x14ef
    push ax
    lea ax, word [bp - 0x0050]
    push ax
    call strlen
    add sp, byte 4
    mov ax, data_0002
    push ax
    lea ax, word [bp - 0x0050]
    push ax
    call loc_3381
    add sp, byte 4
    mov word [data_2698], ax
    cmp ax, strict word 0xffff
    jne short @..local.l26
    mov ax, 0x14fc
    push ax
    lea ax, word [bp - 0x00a0]
    push ax
    call strlen_2
    add sp, byte 4
    lea ax, word [bp - 0x0050]
    push ax
    lea ax, word [bp - 0x00a0]
    push ax
    call strlen
    add sp, byte 4
    mov ax, 0x151a
    push ax
    lea ax, word [bp - 0x00a0]
    push ax
    call strlen
    add sp, byte 4
    lea ax, word [bp - 0x00a0]
    push ax
    call math_loc_0992
    pop cx
    mov ax, 1
@..local.l25:
    mov sp, bp
    pop bp
    ret
@..local.l26:
    mov ax, 0
    push ax
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    push word [data_2698]
    call dos_file_loc_3881
    add sp, byte 8
    mov ax, 0x34c
    push ax
    mov ax, 0x269a
    push ax
    push word [data_2698]
    call dos_file_loc_3833
    add sp, byte 6
    mov ax, word [bp + 0x1c]
    cmp ax, word [data_29d2]
    je short @..local.l27
    mov ax, 0x152c
    push ax
    call math_loc_0992
    pop cx
    push word [data_2698]
    call dos_file_loc_3869
    pop cx
    mov ax, 1
    jmp short @..local.l25
@..local.l27:
    mov ax, word [bp + 0x1c]
    mov word [data_29d2], ax
    mov al, byte [bp + 0xc]
    mov byte [data_29e2], al
    mov al, byte [bp + 0x12]
    mov byte [data_29ba], al
    mov al, byte [bp + 0x14]
    mov byte [data_29bb], al
    push word [bp + 0x16]
    mov ax, 0x29bc
    push ax
    call strlen_2
    add sp, byte 4
    mov al, byte [bp + 0x18]
    mov byte [data_29d0], al
    mov al, byte [bp + 0x1a]
    mov byte [data_29d1], al
    mov ax, 0xa
    cmp word [bp + 0xe], byte 7
    jne short @..local.l28
    mov ax, 0
@..local.l28:
    mov byte [data_29d4], al
    mov ax, 0xa
    cmp word [bp + 0xe], byte 7
    jne short @..local.l29
    mov ax, 0
@..local.l29:
    mov byte [data_29d5], al
    mov ax, 0xa
    cmp word [bp + 0xe], byte 7
    jne short @..local.l30
    mov ax, 0
@..local.l30:
    mov byte [data_29d6], al
    mov ax, 0xa
    cmp word [bp + 0xe], byte 7
    jne short @..local.l31
    mov ax, 0
@..local.l31:
    mov byte [data_29d7], al
    mov ax, word [bp + 0xe]
    mov cx, 7
    cwd
    idiv cx
    mov ax, dx
    mov word [bp + 0xe], ax
    mov al, byte [bp + 0xe]
    mov byte [data_29dc], al
    cmp word [bp + 0xe], byte 5
    jne short @..local.l32
    mov byte [data_29dc], 0
@..local.l32:
    mov byte [data_29dd], al
    cmp word [bp + 0xe], byte 2
    je short @..local.l33
    cmp word [bp + 0xe], byte 3
    jne short @..local.l34
@..local.l33:
    mov byte [data_29dd], 0
@..local.l34:
    mov word [data_29d8], 0
    mov word [data_29da], 0
    cmp word [bp + 0xe], byte 0
    jle short @..local.l35
    mov word [data_29d8], 0x220
    mov word [data_29da], 0x220
@..local.l35:
    mov ax, 1
    cmp word [bp + 0x10], byte 0
    jne short @..local.l36
    mov ax, 0
@..local.l36:
    mov byte [data_29e1], al
    mov al, byte [bp + 0xa]
    mov byte [data_29df], al
    push word [bp + 0x6]
    mov ax, 0x296a
    push ax
    call strlen_2
    add sp, byte 4
    push word [bp + 0x6]
    mov ax, 0x2992
    push ax
    call strlen_2
    add sp, byte 4
    cmp word [bp + 0xa], byte 5
    jne short @..local.l37
    push word [bp + 0x8]
    mov ax, 0x297e
    push ax
    call strlen_2
    add sp, byte 4
    mov ax, 0x155e
    push ax
    mov ax, 0x297e
    push ax
    call strlen
    add sp, byte 4
    mov byte [data_29e3], 1
@..local.l37:
    mov ax, 0x1560
    push ax
    mov ax, 0x29a6
    push ax
    call strlen_2
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    push word [data_2698]
    call dos_file_loc_3881
    add sp, byte 8
    mov ax, 0x34c
    push ax
    mov ax, 0x269a
    push ax
    push word [data_2698]
    call dos_file_loc_383a
    add sp, byte 6
    push word [data_2698]
    call dos_file_loc_3869
    pop cx
    mov ax, 0
    jmp near @..local.l25
math_loc_0c21:
    push bp
    mov bp, sp
    mov ax, word [bp + 0x4]
    mov cx, data_0004
    cwd
    idiv cx
    mov ax, dx
    inc ax
    mov word [bp + 0x4], ax
    cmp ax, strict word 1
    jne short @..math_loc_0c21.l1
    cmp word [data_29e6], byte 0
    jne short @..math_loc_0c21.l1
    inc word [bp + 0x4]
@..math_loc_0c21.l1:
    cmp word [bp + 0x4], byte 2
    jne short @..math_loc_0c21.l2
    cmp word [data_29e8], byte 0
    jne short @..math_loc_0c21.l2
    inc word [bp + 0x4]
@..math_loc_0c21.l2:
    cmp word [bp + 0x4], byte 3
    jne short @..math_loc_0c21.l3
    cmp word [data_29ea], byte 0
    jne short @..math_loc_0c21.l3
    inc word [bp + 0x4]
@..math_loc_0c21.l3:
    cmp word [bp + 0x4], byte 4
    jne short @..math_loc_0c21.l4
    cmp word [data_29ec], byte 0
    jne short @..math_loc_0c21.l4
    mov word [bp + 0x4], 1
@..math_loc_0c21.l4:
    cmp word [bp + 0x4], byte 1
    jne short @..math_loc_0c21.l5
    cmp word [data_29e6], byte 0
    jne short @..math_loc_0c21.l5
    inc word [bp + 0x4]
@..math_loc_0c21.l5:
    cmp word [bp + 0x4], byte 2
    jne short @..math_loc_0c21.l6
    cmp word [data_29e8], byte 0
    jne short @..math_loc_0c21.l6
    inc word [bp + 0x4]
@..math_loc_0c21.l6:
    cmp word [bp + 0x4], byte 3
    jne short @..math_loc_0c21.l7
    cmp word [data_29ea], byte 0
    jne short @..math_loc_0c21.l7
    inc word [bp + 0x4]
@..math_loc_0c21.l7:
    cmp word [bp + 0x4], byte 4
    jne short @..math_loc_0c21.l8
    cmp word [data_29ec], byte 0
    jne short @..math_loc_0c21.l8
    mov word [bp + 0x4], 0
@..math_loc_0c21.l8:
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x02, 0x00 ; push word [bx + 0x2]
    mov ax, 0x10
    push ax
    mov ax, 0xd
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, word [bp + 0x4]
    mov sp, bp
    pop bp
    ret
math_loc_0cd6:
    push bp
    mov bp, sp
    push si
@..math_loc_0cd6.l1:
    mov ax, word [bp + 0x6]
    inc ax
    mov cx, data_0005
    cwd
    idiv cx
    mov word [bp + 0x6], dx
    mov bx, word [bp + 0x8]
    mov si, word [bp + 0x6]
    cmp byte [bx + si], data_0030
    je short @..math_loc_0cd6.l1
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x160]
    mov ax, 0x16
    push ax
    push word [bp + 0x4]
    call loc_040f
    add sp, byte 6
    mov ax, word [bp + 0x6]
    pop si
    mov sp, bp
    pop bp
    ret
math_loc_0d12:
    push bp
    mov bp, sp
    mov ax, word [bp + 0x4]
    inc ax
    mov cx, 8
    cwd
    idiv cx
    mov word [bp + 0x4], dx
    shl dx, 1
    mov bx, dx
    push word [bx + 0xa4]
    mov ax, 0x29
    push ax
    mov ax, 0x12
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, word [bp + 0x4]
    mov sp, bp
    pop bp
    ret
math_loc_0d3f:
    push bp
    mov bp, sp
    mov ax, word [bp + 0x8]
    inc ax
    mov cx, data_0002
    cwd
    idiv cx
    mov word [bp + 0x8], dx
    shl dx, 1
    mov bx, dx
    push word [bx + 0x154]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call loc_040f
    add sp, byte 6
    mov ax, word [bp + 0x8]
    mov sp, bp
    pop bp
    ret
math_loc_0d6a:
    push bp
    mov bp, sp
    add sp, byte 0xae
    push word [bp + 0x4]
    call strlen_3
    pop cx
    cmp ax, strict word 0x4c
    jle short @..math_loc_0d6a.l1
    mov ax, 0x4c
    jmp short @..math_loc_0d6a.l2
@..math_loc_0d6a.l1:
    push word [bp + 0x4]
    call strlen_3
    pop cx
@..math_loc_0d6a.l2:
    mov word [bp - 0x0002], ax
    push ax
    push word [bp + 0x4]
    lea ax, word [bp - 0x0052]
    push ax
    call string_loc_2b09
    add sp, byte 6
    mov bx, word [bp - 0x0002]
    add bx, bp
    mov byte [bx - 0x0052], 0
    mov ax, 0x156d
    push ax
    mov ax, 0
    push ax
    mov ax, 0x16
    push ax
    call loc_040f
    add sp, byte 6
    lea ax, word [bp - 0x0052]
    push ax
    push ax
    call strlen_3
    pop cx
    inc ax
    mov cx, data_0002
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x28
    sub ax, cx
    push ax
    mov ax, 0x16
    push ax
    call loc_040f
    add sp, byte 6
    mov sp, bp
    pop bp
    ret
loc_0dda:
    push bp
    mov bp, sp
    add sp, strict word 0xff5c
    mov ax, 0x15bd
    push ax
    lea ax, word [bp - 0x00a2]
    push ax
    call strlen_2
    add sp, byte 4
    cmp word [bp + 0x8], byte 0
    jge short @..local.l38
    mov ax, 0x15cc
    push ax
    lea ax, word [bp - 0x00a2]
    push ax
    call strlen
    add sp, byte 4
    mov ax, 0
    sub ax, word [bp + 0x8]
    mov word [bp + 0x8], ax
    jmp short @..local.l39
@..local.l38:
    mov ax, 0x15d8
    push ax
    lea ax, word [bp - 0x00a2]
    push ax
    call strlen
    add sp, byte 4
    call math_loc_0452
@..local.l39:
    mov ax, 0x15e1
    push ax
    lea ax, word [bp - 0x00a2]
    push ax
    call strlen
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 0x40
    mov byte [bp - 0x0002], al
    mov byte [bp - 0x0001], 0
    lea ax, word [bp - 0x0002]
    push ax
    lea ax, word [bp - 0x00a2]
    push ax
    call strlen
    add sp, byte 4
    mov ax, 0x15e9
    push ax
    lea ax, word [bp - 0x00a2]
    push ax
    call strlen
    add sp, byte 4
    push word [bp + 0x4]
    lea ax, word [bp - 0x00a2]
    push ax
    call strlen
    add sp, byte 4
    mov ax, 0x15f7
    push ax
    lea ax, word [bp - 0x00a2]
    push ax
    call strlen
    add sp, byte 4
    push word [bp + 0xa]
    call strlen_3
    pop cx
    cmp ax, strict word 0
    jle short @..local.l41
    push word [bp + 0x6]
    lea ax, word [bp - 0x0052]
    push ax
    call strlen_2
    add sp, byte 4
    push word [bp + 0xa]
    lea ax, word [bp - 0x0052]
    push ax
    call strlen
    add sp, byte 4
@..local.l40:
    lea ax, word [bp - 0x00a2]
    push ax
    call math_loc_0992
    pop cx
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call loc_3381
    add sp, byte 4
    mov word [bp - 0x00a4], ax
    cmp word [bp - 0x00a4], byte 0xff
    je short @..local.l40
    push word [bp - 0x00a4]
    call dos_file_loc_3869
    pop cx
    jmp short @..local.l42
@..local.l41:
    lea ax, word [bp - 0x00a2]
    push ax
    call math_loc_0992
    pop cx
@..local.l42:
    mov sp, bp
    pop bp
    ret
loc_0ed8:
    push bp
    mov bp, sp
    add sp, strict word 0xfe34
    push word [bp + 0x4]
    lea ax, word [bp - 0x0028]
    push ax
    call strlen_2
    add sp, byte 4
    mov ax, 0x1609
    push ax
    lea ax, word [bp - 0x0028]
    push ax
    call strlen
    add sp, byte 4
    mov ax, 0x1615
    push ax
    lea ax, word [bp - 0x0050]
    push ax
    call strlen_2
    add sp, byte 4
    push word [bp + 0x4]
    lea ax, word [bp - 0x0078]
    push ax
    call strlen_2
    add sp, byte 4
    push word [bp + 0x8]
    lea ax, word [bp - 0x0078]
    push ax
    call strlen
    add sp, byte 4
    push word [bp + 0x4]
    lea ax, word [bp - 0x0177]
    push ax
    call strlen_2
    add sp, byte 4
    mov ax, 0x1621
    push ax
    lea ax, word [bp - 0x0177]
    push ax
    call strlen
    add sp, byte 4
    push word [bp + 0x4]
    lea ax, word [bp - 0x0177]
    push ax
    call strlen
    add sp, byte 4
    push word [bp + 0x8]
    lea ax, word [bp - 0x0177]
    push ax
    call strlen
    add sp, byte 4
    mov ax, 0x162e
    push ax
    lea ax, word [bp - 0x0177]
    push ax
    call strlen
    add sp, byte 4
    push word [bp + 0xa]
    lea ax, word [bp - 0x0177]
    push ax
    call strlen
    add sp, byte 4
    lea ax, word [bp - 0x0177]
    push ax
    call math_loc_0d6a
    pop cx
    mov ax, 0x2357
    push ax
    mov ax, 0x1634
    push ax
    mov ax, 0x1630
    push ax
    call loc_2bfe
    add sp, byte 6
    mov word [data_29ee], ax
    mov ax, 0
    push ax
    push ax
    push word [bp + 0xa]
    lea ax, word [bp - 0x0078]
    push ax
    lea ax, word [bp - 0x0050]
    push ax
    lea ax, word [bp - 0x0028]
    push ax
    call loc_2908
    add sp, byte 0x0c
    mov word [bp - 0x01c9], ax
    call dos_proc_loc_2a9d
    mov word [bp - 0x01cb], ax
    push word [data_29ee]
    mov ax, 0x163a
    push ax
    mov ax, 0x1636
    push ax
    call loc_2bfe
    add sp, byte 6
    mov word [data_29ee], ax
    cmp word [bp - 0x01c9], byte 0xff
    je short @..local.l43
    cmp word [bp - 0x01cb], byte 0
    je short @..local.l44
@..local.l43:
    mov ax, 0x163c
    push ax
    lea ax, word [bp - 0x01c7]
    push ax
    call strlen_2
    add sp, byte 4
    push word [bp + 0x4]
    lea ax, word [bp - 0x01c7]
    push ax
    call strlen
    add sp, byte 4
    push word [bp + 0x8]
    lea ax, word [bp - 0x01c7]
    push ax
    call strlen
    add sp, byte 4
    mov ax, 0x1657
    push ax
    lea ax, word [bp - 0x01c7]
    push ax
    call strlen
    add sp, byte 4
    lea ax, word [bp - 0x01c7]
    push ax
    call math_loc_0992
    pop cx
    mov ax, 3
    push ax
    call dos_file_loc_380b
    pop cx
@..local.l44:
    mov sp, bp
    pop bp
    ret

    db 0x55, 0x8b, 0xec, 0xb8, 0xf0, 0x29, 0x50, 0xe8
    db '8%Y=P', 0
    db 0x7f, 0x18, 0xb8, 0xf0, 0x29, 0x50, 0xe8, 0x2b, 0x25, 0x59, 0x3d, 0x00, 0x00, 0x7e, 0x2e, 0xff
    db 0x76, 0x0a, 0xe8, 0x1f, 0x25, 0x59, 0x85, 0xc0, 0x75, 0x23, 0xb8, 0xf0, 0x29, 0x50, 0xff, 0x76
    db 0x08, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x73, 0xfe, 0x83, 0xc4, 0x08, 0xb8, 0x69, 0x16
    db 0x50, 0xb8, 0xf0, 0x29, 0x50, 0xe8, 0x6a, 0x1a, 0x83, 0xc4, 0x04, 0xeb, 0x1b, 0xb8, 0xf0, 0x29
    db 0x50, 0xe8, 0xf0, 0x24, 0x59, 0x3d, 0x00, 0x00, 0x7e, 0x0e, 0xb8, 0x6a, 0x16, 0x50, 0xb8, 0xf0
    db 0x29, 0x50, 0xe8, 0x16, 0x1a, 0x83, 0xc4, 0x04, 0xff, 0x76, 0x0a, 0xb8, 0xf0, 0x29, 0x50, 0xe8
    db 0x09, 0x1a, 0x83, 0xc4, 0x04, 0x8b, 0xe5, 0x5d, 0xc3

loc_10a4:
    push bp
    mov bp, sp
    mov ax, word [bp + 0x4]
    jmp near @..local.l45
    mov ax, 0x166c
    push ax
    push word [bp + 0x6]
    call strlen_2
    add sp, byte 4
    mov ax, 0x166f
    push ax
    push word [bp + 0x8]
    call strlen_2
    add sp, byte 4
    jmp near @..local.l46
    mov ax, 0x1672
    push ax
    push word [bp + 0x6]
    call strlen_2
    add sp, byte 4
    mov ax, 0x1675
    push ax
    push word [bp + 0x8]
    call strlen_2
    add sp, byte 4
    jmp short @..local.l46
    mov ax, 0x1676
    push ax
    push word [bp + 0x6]
    call strlen_2
    add sp, byte 4
    mov ax, 0x1679
    push ax
    push word [bp + 0x8]
    call strlen_2
    add sp, byte 4
    jmp short @..local.l46
    mov ax, 0x167a
    push ax
    push word [bp + 0x6]
    call strlen_2
    add sp, byte 4
    mov ax, 0x167d
    push ax
    push word [bp + 0x8]
    call strlen_2
    add sp, byte 4
    jmp short @..local.l46
    mov ax, 0x167e
    push ax
    push word [bp + 0x6]
    call strlen_2
    add sp, byte 4
    mov ax, 0x1681
    push ax
    push word [bp + 0x8]
    call strlen_2
    add sp, byte 4
    jmp short @..local.l46
    lodsw
    push cs
    retf 0xe60e
    push cs
    add cl, byte [bx]
    push ds
    db 0x0f
@..local.l45:
    cmp ax, strict word 5
    jae short @..local.l46
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0xf3a]
@..local.l46:
    mov sp, bp
    pop bp
    ret

    db 0x55, 0x8b, 0xec, 0x81, 0xc4, 0x5e, 0xff, 0x8b, 0x46, 0x04, 0x8b, 0xd0, 0xd1, 0xe0, 0xd1, 0xe0
    db 0x03, 0xc2, 0xd1, 0xe0, 0x8b, 0x4e, 0x06, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0xff, 0xb7, 0xad
    db 0x02, 0x8d, 0x46, 0xae, 0x50, 0xe8, 0x60, 0x19, 0x83, 0xc4, 0x04, 0xc7, 0x46, 0xfe, 0x00, 0x00
    db 0xeb, 0x21, 0x8b, 0x5e, 0xfe, 0x03, 0xdd, 0x80, 0x7f, 0xae, 0x2a, 0x74, 0x0c, 0x8a, 0x47, 0xae
    db 0x98, 0x05, 0xbf, 0xff, 0x3b, 0x46, 0x08, 0x75, 0x07, 0xb8, 0x01, 0x00, 0x8b, 0xe5, 0x5d, 0xc3
    db 0xff, 0x46, 0xfe, 0x8d, 0x46, 0xae, 0x50, 0xe8, 0xc0, 0x23, 0x59, 0x3b, 0x46, 0xfe, 0x7f, 0xd2
    db 0xb8, 0x00, 0x00, 0xeb, 0xe7

loc_11ba:
    push bp
    mov bp, sp
    add sp, byte 0xae
    push word [bp + 0x4]
    call loc_0200
    pop cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..local.l47
    mov ax, 0x1689
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call strlen_2
    add sp, byte 4
    push word [bp + 0x4]
    lea ax, word [bp - 0x0052]
    push ax
    call strlen
    add sp, byte 4
    mov ax, 0x16af
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call strlen
    add sp, byte 4
    lea ax, word [bp - 0x0052]
    push ax
    call math_loc_0992
    pop cx
    mov ax, data_0004
    push ax
    call dos_file_loc_380b
    pop cx
@..local.l47:
    push word [bp + 0x6]
    call leaf_loc_2a1c
    pop cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short @..local.l48
    jmp near @..local.l51
@..local.l48:
    cmp word [bp + 0x8], byte 1
    jne short @..local.l50
    push word [bp + 0x6]
    call dos_loc_29fe
    pop cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..local.l49
    mov ax, 0x16c2
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call strlen_2
    add sp, byte 4
    push word [bp + 0x6]
    lea ax, word [bp - 0x0052]
    push ax
    call strlen
    add sp, byte 4
    mov ax, 0x16e8
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call strlen
    add sp, byte 4
    lea ax, word [bp - 0x0052]
    push ax
    call math_loc_0992
    pop cx
    mov ax, 1
    push ax
    call dos_file_loc_380b
    pop cx
@..local.l49:
    push word [bp + 0x6]
    call leaf_loc_2a1c
    pop cx
    mov word [bp - 0x0002], ax
@..local.l50:
    cmp word [bp - 0x0002], byte 0xff
    jne short @..local.l51
    mov ax, 0x16fa
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call strlen_2
    add sp, byte 4
    push word [bp + 0x6]
    lea ax, word [bp - 0x0052]
    push ax
    call strlen
    add sp, byte 4
    mov ax, 0x1720
    push ax
    lea ax, word [bp - 0x0052]
    push ax
    call strlen
    add sp, byte 4
    lea ax, word [bp - 0x0052]
    push ax
    call math_loc_0992
    pop cx
    mov ax, data_0002
    push ax
    call dos_file_loc_380b
    pop cx
@..local.l51:
    mov sp, bp
    pop bp
    ret
math_loc_12b5:
    push bp
    mov bp, sp
    add sp, strict word 0xfd28
    call loc_0927
    mov word [bp - 0x01c8], 0x78
    call loc_0443
    mov ax, 0x1732
    push ax
    mov ax, 0xe
    push ax
    mov ax, 0
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x1767
    push ax
    mov ax, 0xe
    push ax
    mov ax, 1
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x179c
    push ax
    mov ax, 0xe
    push ax
    mov ax, data_0002
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x17d1
    push ax
    mov ax, 0xe
    push ax
    mov ax, 3
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x1806
    push ax
    mov ax, 0xe
    push ax
    mov ax, data_0004
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, word [bp - 0x01c8]
    mov cx, 0x64
    cwd
    idiv cx
    push ax
    mov ax, 0x3b
    push ax
    mov ax, 3
    push ax
    call loc_03b3
    add sp, byte 6
    mov ax, 0x183b
    push ax
    call bios_video_loc_2621
    pop cx
    lea ax, word [bp - 0x02d6]
    push ax
    mov ax, word [bp - 0x01c8]
    mov cx, 0x64
    cwd
    idiv cx
    mov ax, dx
    push ax
    call math_loc_02b2
    add sp, byte 4
    lea ax, word [bp - 0x02d6]
    push ax
    call strlen_3
    pop cx
    cmp ax, strict word 1
    jne short @..math_loc_12b5.l1
    mov al, byte [bp - 0x02d6]
    mov byte [bp - 0x02d5], al
    mov byte [bp - 0x02d6], data_0030
    mov byte [bp - 0x02d4], 0
@..math_loc_12b5.l1:
    lea ax, word [bp - 0x02d6]
    push ax
    call bios_video_loc_2621
    pop cx
    mov ax, 0x183d
    push ax
    mov ax, data_0005
    push ax
    mov ax, 7
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x1882
    push ax
    mov ax, data_0005
    push ax
    mov ax, 8
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x18b2
    push ax
    mov ax, data_0005
    push ax
    mov ax, 0xa
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x18f6
    push ax
    mov ax, data_0005
    push ax
    mov ax, 0xb
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x1911
    push ax
    mov ax, data_0005
    push ax
    mov ax, 0xd
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x1957
    push ax
    mov ax, data_0005
    push ax
    mov ax, 0xe
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x199e
    push ax
    mov ax, data_0005
    push ax
    mov ax, 0xf
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x19e4
    push ax
    mov ax, data_0005
    push ax
    mov ax, 0x10
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x1a2b
    push ax
    mov ax, data_0005
    push ax
    mov ax, 0x11
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x1a72
    push ax
    mov ax, data_0005
    push ax
    mov ax, 0x12
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x1a91
    push ax
    mov ax, 0x2648
    push ax
    call strlen_2
    add sp, byte 4
    mov ax, 0x1a92
    push ax
    call math_loc_0992
    pop cx
    call loc_0443
    mov ax, 0x1ac1
    push ax
    mov ax, 0xe
    push ax
    mov ax, 0
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x1af6
    push ax
    mov ax, 0xe
    push ax
    mov ax, 1
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x1b2b
    push ax
    mov ax, 0xe
    push ax
    mov ax, data_0002
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x1b60
    push ax
    mov ax, 0xe
    push ax
    mov ax, 3
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x1b95
    push ax
    mov ax, 0xe
    push ax
    mov ax, data_0004
    push ax
    call loc_040f
    add sp, byte 6
    call io_loc_245e
    mov word [bp - 0x0006], ax
    mov word [data_29e6], 0
    mov word [data_29e8], 0
    mov word [data_29ea], 0
    mov word [data_2af0], 0
    mov word [data_29ec], 0
    mov word [data_2af2], 0
    mov word [data_2af4], 0
    mov word [data_2af6], 0
    mov word [data_2af8], 0
    mov word [data_2afa], 0
    test ax, 1
    je short @..local.l52
    mov word [data_29e6], 1
@..local.l52:
    test ax, data_0002
    je short @..local.l53
    mov word [data_29e8], 1
@..local.l53:
    test ax, 0x1000
    je short @..local.l54
    mov word [data_2afa], 1
@..local.l54:
    mov word [bp - 0x000e], 3
    mov ax, 0x1bca
    push ax
    lea ax, word [bp - 0x001c]
    push ax
    call strlen_2
    add sp, byte 4
    mov ax, 0x1bcd
    push ax
    lea ax, word [bp - 0x0032]
    push ax
    call strlen_2
    add sp, byte 4
    mov word [bp - 0x0010], data_0004
    lea ax, word [bp - 0x0054]
    push ax
    lea ax, word [bp - 0x003e]
    push ax
    push word [bp - 0x0010]
    call loc_10a4
    add sp, byte 6
    mov ax, 0x1bce
    push ax
    mov ax, data_0002
    push ax
    mov ax, data_0006
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x1c1b
    push ax
    mov ax, data_0002
    push ax
    mov ax, 7
    push ax
    call loc_040f
    add sp, byte 6
    lea ax, word [bp - 0x0032]
    push ax
    lea ax, word [bp - 0x001c]
    push ax
    push word [bp - 0x000e]
    mov ax, 0x1c68
    push ax
    mov ax, data_0002
    push ax
    mov ax, 8
    push ax
    call math_loc_0944
    add sp, byte 0x0c
    lea ax, word [bp - 0x0054]
    push ax
    lea ax, word [bp - 0x003e]
    push ax
    push word [bp - 0x0010]
    mov ax, 0x1c7b
    push ax
    mov ax, data_0002
    push ax
    mov ax, 9
    push ax
    call math_loc_0944
    add sp, byte 0x0c
    mov word [bp - 0x01a0], 0
    mov word [bp - 0x01a2], 0
    mov byte [bp - 0x01b8], 0
    mov ax, 0x1c8e
    push ax
    mov ax, data_0002
    push ax
    mov ax, 0xb
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, word [bp - 0x01a0]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x154]
    mov ax, 0x1b
    push ax
    mov ax, 0xb
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, word [bp - 0x01a2]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x154]
    mov ax, 0x29
    push ax
    mov ax, 0xb
    push ax
    call loc_040f
    add sp, byte 6
    lea ax, word [bp - 0x01b8]
    push ax
    mov ax, 0x3a
    push ax
    mov ax, 0xb
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x1cc7
    push ax
    mov ax, data_0002
    push ax
    mov ax, 0xd
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x1d0a
    push ax
    mov ax, data_0002
    push ax
    mov ax, 0xe
    push ax
    call loc_040f
    add sp, byte 6
    mov word [bp - 0x0196], 0
    mov word [bp - 0x01be], 0xf
    cmp word [data_29e6], byte 0
    je short @..local.l55
    mov word [bp - 0x0196], 1
    push word [data_0004]
    mov ax, 0xa
    push ax
    push word [bp - 0x01be]
    call loc_040f
    add sp, byte 6
    inc word [bp - 0x01be]
@..local.l55:
    cmp word [data_29e8], byte 0
    je short @..local.l57
    cmp word [bp - 0x0196], byte 0
    jne short @..local.l56
    mov word [bp - 0x0196], data_0002
@..local.l56:
    push word [data_0006]
    mov ax, 0xa
    push ax
    push word [bp - 0x01be]
    call loc_040f
    add sp, byte 6
    inc word [bp - 0x01be]
@..local.l57:
    mov ax, word [bp - 0x0196]
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x02, 0x00 ; push word [bx + 0x2]
    mov ax, 0x10
    push ax
    mov ax, 0xd
    push ax
    call loc_040f
    add sp, byte 6
    mov word [bp - 0x01ba], 0
    mov word [bp - 0x01bc], 0
    mov ax, 0x1d4d
    push ax
    mov ax, 0x34
    push ax
    mov ax, 0xf
    push ax
    call loc_040f
    add sp, byte 6
    push word [bp - 0x01ba]
    mov ax, 0x3e
    push ax
    mov ax, 0xf
    push ax
    call loc_03b3
    add sp, byte 6
    mov ax, 0x1d58
    push ax
    mov ax, 0x34
    push ax
    mov ax, 0x10
    push ax
    call loc_040f
    add sp, byte 6
    push word [bp - 0x01bc]
    mov ax, 0x3e
    push ax
    mov ax, 0x10
    push ax
    call loc_03b3
    add sp, byte 6
    mov ax, word [data_2afa]
    mov word [bp - 0x019a], ax
    mov ax, 0x1d63
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0x12
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, word [bp - 0x019a]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x154]
    mov ax, 0x1b
    push ax
    mov ax, 0x12
    push ax
    call loc_040f
    add sp, byte 6
    mov word [bp - 0x0198], 0
    mov ax, 0x1d6b
    push ax
    mov ax, 0x22
    push ax
    mov ax, 0x12
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, word [bp - 0x0198]
    shl ax, 1
    mov bx, ax
    push word [bx + 0xa4]
    mov ax, 0x29
    push ax
    mov ax, 0x12
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x1d73
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x14
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x1d9f
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0x16
    push ax
    call loc_040f
    add sp, byte 6
    cmp word [bp - 0x0196], byte 0
    jne short @..local.l58
    mov ax, 0x1dc7
    push ax
    call math_loc_0992
    pop cx
    mov ax, 0x1df7
    push ax
    call math_loc_0992
    pop cx
    mov ax, 3
    push ax
    call loc_06f1
    pop cx
    mov ax, 0
    push ax
    call dos_file_loc_380b
    pop cx
@..local.l58:
    mov word [bp - 0x019c], 0
    mov word [bp - 0x019e], 0xffff
    mov word [bp - 0x01c0], 0
@..local.l59:
    mov ax, 0x1e28
    push ax
    mov ax, 0x2648
    push ax
    call strlen_2
    add sp, byte 4
    mov ax, word [bp - 0x019e]
    jmp near @..local.l60
    mov ax, word [bp - 0x000e]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x160]
    mov ax, 0x16
    push ax
    mov ax, 8
    push ax
    call loc_040f
    add sp, byte 6
    jmp near @..local.l61
    lea ax, word [bp - 0x001c]
    push ax
    mov ax, data_002e
    push ax
    mov ax, 8
    push ax
    call loc_040f
    add sp, byte 6
    jmp near @..local.l61
    lea ax, word [bp - 0x0032]
    push ax
    mov ax, 0x3a
    push ax
    mov ax, 8
    push ax
    call loc_040f
    add sp, byte 6
    jmp near @..local.l61
    mov ax, word [bp - 0x0010]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x160]
    mov ax, 0x16
    push ax
    mov ax, 9
    push ax
    call loc_040f
    add sp, byte 6
    jmp near @..local.l61
    lea ax, word [bp - 0x003e]
    push ax
    mov ax, data_002e
    push ax
    mov ax, 9
    push ax
    call loc_040f
    add sp, byte 6
    jmp near @..local.l61
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0x3a
    push ax
    mov ax, 9
    push ax
    call loc_040f
    add sp, byte 6
    jmp near @..local.l61
    mov ax, word [bp - 0x01a0]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x154]
    mov ax, 0x1b
    push ax
    mov ax, 0xb
    push ax
    call loc_040f
    add sp, byte 6
    jmp near @..local.l61
    mov ax, word [bp - 0x01a2]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x154]
    mov ax, 0x29
    push ax
    mov ax, 0xb
    push ax
    call loc_040f
    add sp, byte 6
    jmp near @..local.l61
    lea ax, word [bp - 0x01b8]
    push ax
    mov ax, 0x3a
    push ax
    mov ax, 0xb
    push ax
    call loc_040f
    add sp, byte 6
    jmp near @..local.l61
    mov ax, word [bp - 0x0196]
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x02, 0x00 ; push word [bx + 0x2]
    mov ax, 0x10
    push ax
    mov ax, 0xd
    push ax
    call loc_040f
    add sp, byte 6
    jmp near @..local.l61
    push word [bp - 0x01ba]
    mov ax, 0x3e
    push ax
    mov ax, 0xf
    push ax
    call loc_03b3
    add sp, byte 6
    jmp near @..local.l61
    push word [bp - 0x01bc]
    mov ax, 0x3e
    push ax
    mov ax, 0x10
    push ax
    call loc_03b3
    add sp, byte 6
    jmp near @..local.l61
    mov ax, word [bp - 0x019a]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x154]
    mov ax, 0x1b
    push ax
    mov ax, 0x12
    push ax
    call loc_040f
    add sp, byte 6
    jmp near @..local.l61
    mov ax, word [bp - 0x0198]
    shl ax, 1
    mov bx, ax
    push word [bx + 0xa4]
    mov ax, 0x29
    push ax
    mov ax, 0x12
    push ax
    call loc_040f
    add sp, byte 6
    jmp short @..local.l61
    mov ax, 0x1e50
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x14
    push ax
    call loc_040f
    add sp, byte 6
    jmp short @..local.l61
    mov ax, 0x1e5d
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x14
    push ax
    call loc_040f
    add sp, byte 6
    jmp short @..local.l61
    mov ax, 0x1e69
    push ax
    mov ax, data_0030
    push ax
    mov ax, 0x14
    push ax
    call loc_040f
    add sp, byte 6
    jmp short @..local.l61
    jmp short @..local.l61

    db 0x67, 0x17, 0xcf, 0x15, 0xeb, 0x15, 0x00, 0x16, 0x15, 0x16, 0x31, 0x16, 0x46, 0x16, 0x5b, 0x16
    db 0x78, 0x16, 0x95, 0x16, 0xab, 0x16, 0xc8, 0x16, 0xdd, 0x16, 0xf2, 0x16, 0x0f, 0x17, 0x2b, 0x17
    db 0x3f, 0x17, 0x53, 0x17

@..local.l60:
    sub ax, strict word 0xffff
    cmp ax, strict word 0x12
    jae short @..local.l61
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x1769]
@..local.l61:
    mov ax, word [bp - 0x019c]
    jmp near @..local.l62
    mov ax, word [bp - 0x000e]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x160]
    mov ax, 0x16
    push ax
    mov ax, 8
    push ax
    call loc_0429
    add sp, byte 6
    jmp near @..local.l63
    lea ax, word [bp - 0x001c]
    push ax
    mov ax, data_002e
    push ax
    mov ax, 8
    push ax
    call loc_0429
    add sp, byte 6
    jmp near @..local.l63
    lea ax, word [bp - 0x0032]
    push ax
    mov ax, 0x3a
    push ax
    mov ax, 8
    push ax
    call loc_0429
    add sp, byte 6
    jmp near @..local.l63
    mov ax, word [bp - 0x0010]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x160]
    mov ax, 0x16
    push ax
    mov ax, 9
    push ax
    call loc_0429
    add sp, byte 6
    jmp near @..local.l63
    lea ax, word [bp - 0x003e]
    push ax
    mov ax, data_002e
    push ax
    mov ax, 9
    push ax
    call loc_0429
    add sp, byte 6
    jmp near @..local.l63
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0x3a
    push ax
    mov ax, 9
    push ax
    call loc_0429
    add sp, byte 6
    jmp near @..local.l63
    mov ax, word [bp - 0x01a0]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x154]
    mov ax, 0x1b
    push ax
    mov ax, 0xb
    push ax
    call loc_0429
    add sp, byte 6
    jmp near @..local.l63
    mov ax, word [bp - 0x01a2]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x154]
    mov ax, 0x29
    push ax
    mov ax, 0xb
    push ax
    call loc_0429
    add sp, byte 6
    jmp near @..local.l63
    lea ax, word [bp - 0x01b8]
    push ax
    mov ax, 0x3a
    push ax
    mov ax, 0xb
    push ax
    call loc_0429
    add sp, byte 6
    jmp near @..local.l63
    mov ax, word [bp - 0x0196]
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x02, 0x00 ; push word [bx + 0x2]
    mov ax, 0x10
    push ax
    mov ax, 0xd
    push ax
    call loc_0429
    add sp, byte 6
    jmp near @..local.l63
    push word [bp - 0x01ba]
    mov ax, 0x3e
    push ax
    mov ax, 0xf
    push ax
    call loc_03e1
    add sp, byte 6
    jmp near @..local.l63
    push word [bp - 0x01bc]
    mov ax, 0x3e
    push ax
    mov ax, 0x10
    push ax
    call loc_03e1
    add sp, byte 6
    jmp near @..local.l63
    mov ax, word [bp - 0x019a]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x154]
    mov ax, 0x1b
    push ax
    mov ax, 0x12
    push ax
    call loc_0429
    add sp, byte 6
    jmp near @..local.l63
    mov ax, word [bp - 0x0198]
    shl ax, 1
    mov bx, ax
    push word [bx + 0xa4]
    mov ax, 0x29
    push ax
    mov ax, 0x12
    push ax
    call loc_0429
    add sp, byte 6
    jmp short @..local.l63
    mov ax, 0x1e77
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x14
    push ax
    call loc_0429
    add sp, byte 6
    jmp short @..local.l63
    mov ax, 0x1e84
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x14
    push ax
    call loc_0429
    add sp, byte 6
    jmp short @..local.l63
    mov ax, 0x1e90
    push ax
    mov ax, data_0030
    push ax
    mov ax, 0x14
    push ax
    call loc_0429
    add sp, byte 6
    jmp short @..local.l63

    db 0xa4, 0x17, 0xc0, 0x17, 0xd5, 0x17, 0xea, 0x17, 0x06, 0x18, 0x1b, 0x18, 0x30, 0x18, 0x4d, 0x18
    db 0x6a, 0x18, 0x80, 0x18, 0x9d, 0x18, 0xb2, 0x18, 0xc7, 0x18, 0xe4, 0x18, 0x00, 0x19, 0x14, 0x19
    db 0x28, 0x19

@..local.l62:
    cmp ax, strict word 0x11
    jae short @..local.l63
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x193c]
@..local.l63:
    call dos_con_in_noecho
    push ax
    call loc_06a6
    pop cx
    mov word [bp - 0x0008], ax
    jmp near @..local.l98
loc_1b79:
    mov ax, word [bp - 0x019c]
    mov word [bp - 0x019e], ax
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x1dd]
    mov word [bp - 0x019c], ax
    jmp near loc_1fce
loc_1b90:
    mov ax, word [bp - 0x019c]
    mov word [bp - 0x019e], ax
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x221]
    mov word [bp - 0x019c], ax
    jmp near loc_1fce
loc_1ba7:
    mov ax, word [bp - 0x019c]
    mov word [bp - 0x019e], ax
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x1ff]
    mov word [bp - 0x019c], ax
    jmp near loc_1fce
loc_1bbe:
    mov ax, word [bp - 0x019c]
    mov word [bp - 0x019e], ax
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x243]
    mov word [bp - 0x019c], ax
    jmp near loc_1fce
loc_1bd5:
    mov word [bp - 0x019e], 0xffff
    mov ax, word [bp - 0x019c]
    jmp near @..local.l96
    mov ax, 0x1e9e
    push ax
    push word [bp - 0x000e]
    mov ax, 8
    push ax
    call math_loc_0cd6
    add sp, byte 6
    mov word [bp - 0x000e], ax
    jmp near @..local.l97
@..local.l64:
    mov ax, data_0002
    push ax
    lea ax, word [bp - 0x001c]
    push ax
    mov ax, data_002e
    push ax
    mov ax, 8
    push ax
    call loc_05b6
    add sp, byte 8
    cmp byte [bp - 0x001c], 0x41
    jl short @..local.l65
    cmp byte [bp - 0x001c], 0x5a
    jg short @..local.l65
    cmp byte [bp - 0x001b], 0x3a
    je short @..local.l66
@..local.l65:
    mov ax, 1
    jmp short @..local.l67
@..local.l66:
    mov ax, 0
@..local.l67:
    mov word [bp - 0x01c2], ax
    cmp ax, strict word 1
    jne short @..local.l68
    mov ax, 0x1ea4
    push ax
    call math_loc_0992
    pop cx
@..local.l68:
    cmp word [bp - 0x01c2], byte 1
    je short @..local.l64
    jmp near @..local.l97
    mov ax, 0x1ecd
    push ax
    call math_loc_0992
    pop cx
    jmp near @..local.l97
    mov ax, 0x1ef6
    push ax
    push word [bp - 0x0010]
    mov ax, 9
    push ax
    call math_loc_0cd6
    add sp, byte 6
    mov word [bp - 0x0010], ax
    lea ax, word [bp - 0x0054]
    push ax
    lea ax, word [bp - 0x003e]
    push ax
    push word [bp - 0x0010]
    call loc_10a4
    add sp, byte 6
    mov ax, 0x1efc
    push ax
    mov ax, data_002e
    push ax
    mov ax, 9
    push ax
    call loc_040f
    add sp, byte 6
    lea ax, word [bp - 0x003e]
    push ax
    mov ax, data_002e
    push ax
    mov ax, 9
    push ax
    call loc_040f
    add sp, byte 6
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0x3a
    push ax
    mov ax, 9
    push ax
    call loc_040f
    add sp, byte 6
    jmp near @..local.l97
@..local.l69:
    mov ax, data_0002
    push ax
    lea ax, word [bp - 0x003e]
    push ax
    mov ax, data_002e
    push ax
    mov ax, 9
    push ax
    call loc_05b6
    add sp, byte 8
    cmp byte [bp - 0x003e], 0x41
    jl short @..local.l70
    cmp byte [bp - 0x003e], 0x5a
    jg short @..local.l70
    cmp byte [bp - 0x003d], 0x3a
    je short @..local.l71
@..local.l70:
    mov ax, 1
    jmp short @..local.l72
@..local.l71:
    mov ax, 0
@..local.l72:
    mov word [bp - 0x01c2], ax
    cmp ax, strict word 1
    jne short @..local.l73
    mov ax, 0x1f1e
    push ax
    call math_loc_0992
    pop cx
    jmp short @..local.l74
@..local.l73:
    mov al, byte [bp - 0x003e]
    cmp al, byte [bp - 0x001c]
    jne short @..local.l74
    mov ax, 0x1f47
    push ax
    call math_loc_0992
    pop cx
@..local.l74:
    cmp word [bp - 0x01c2], byte 1
    je short @..local.l69
    jmp near @..local.l97
@..local.l75:
    mov ax, 0x14
    push ax
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0x3a
    push ax
    mov ax, 9
    push ax
    call loc_05b6
    add sp, byte 8
    cmp word [bp - 0x0010], byte 0
    jne short @..local.l80
    cmp byte [bp - 0x0054], 0x41
    jl short @..local.l76
    cmp byte [bp - 0x0054], 0x5a
    jg short @..local.l76
    cmp byte [bp - 0x0053], 0x3a
    jne short @..local.l76
    lea ax, word [bp - 0x0054]
    push ax
    call strlen_3
    pop cx
    cmp ax, strict word 2
    jle short @..local.l77
@..local.l76:
    mov ax, 1
    jmp short @..local.l78
@..local.l77:
    mov ax, 0
@..local.l78:
    mov word [bp - 0x01c2], ax
    cmp ax, strict word 1
    jne short @..local.l79
    mov ax, 0x1f7c
    push ax
    call math_loc_0992
    pop cx
@..local.l79:
    jmp short @..local.l81
@..local.l80:
    mov word [bp - 0x01c2], 0
@..local.l81:
    cmp word [bp - 0x01c2], byte 1
    je short @..local.l75
    jmp near @..local.l97
    push word [bp - 0x01a0]
    mov ax, 0x1b
    push ax
    mov ax, 0xb
    push ax
    call math_loc_0d3f
    add sp, byte 6
    mov word [bp - 0x01a0], ax
    jmp near @..local.l97
    push word [bp - 0x01a2]
    mov ax, 0x29
    push ax
    mov ax, 0xb
    push ax
    call math_loc_0d3f
    add sp, byte 6
    mov word [bp - 0x01a2], ax
    jmp near @..local.l97
@..local.l82:
    mov ax, 0x14
    push ax
    lea ax, word [bp - 0x01b8]
    push ax
    mov ax, 0x3a
    push ax
    mov ax, 0xb
    push ax
    call loc_05b6
    add sp, byte 8
    lea ax, word [bp - 0x01b8]
    push ax
    call strlen_3
    pop cx
    mov word [bp - 0x02d8], ax
    cmp ax, strict word 2
    jl short @..local.l83
    mov bx, ax
    add bx, bp
    cmp byte [bx - 0x01b9], 0x3a
    je short @..local.l84
@..local.l83:
    mov ax, 1
    jmp short @..local.l85
@..local.l84:
    mov ax, 0
@..local.l85:
    mov word [bp - 0x01c2], ax
    cmp ax, strict word 1
    jne short @..local.l86
    mov ax, 0x1fa5
    push ax
    call math_loc_0992
    pop cx
@..local.l86:
    cmp word [bp - 0x01c2], byte 1
    je short @..local.l82
    jmp near @..local.l97
    push word [bp - 0x0196]
    call math_loc_0c21
    pop cx
    mov word [bp - 0x0196], ax
    jmp near @..local.l97
    mov ax, 0xff9d
    push ax
    mov ax, 0x63
    push ax
    mov ax, 3
    push ax
    mov ax, 0x3e
    push ax
    mov ax, 0xf
    push ax
    push word [bp - 0x01ba]
    call loc_0823
    add sp, byte 0x0c
    mov word [bp - 0x01ba], ax
    jmp near @..local.l97
    mov ax, 0xff9d
    push ax
    mov ax, 0x63
    push ax
    mov ax, 3
    push ax
    mov ax, 0x3e
    push ax
    mov ax, 0x10
    push ax
    push word [bp - 0x01bc]
    call loc_0823
    add sp, byte 0x0c
    mov word [bp - 0x01bc], ax
    jmp near @..local.l97
    push word [bp - 0x019a]
    mov ax, 0x1b
    push ax
    mov ax, 0x12
    push ax
    call math_loc_0d3f
    add sp, byte 6
    mov word [bp - 0x019a], ax
    jmp near @..local.l97
    push word [bp - 0x0198]
    call math_loc_0d12
    pop cx
    mov word [bp - 0x0198], ax
    jmp near @..local.l97
    mov al, byte [bp - 0x001c]
    cmp al, byte [bp - 0x003e]
    jne short @..local.l87
    mov ax, 0x1fce
    push ax
    call math_loc_0992
    pop cx
    mov ax, 0x200a
    push ax
    call math_loc_0992
    pop cx
    jmp near @..local.l95
@..local.l87:
    mov ax, word [bp - 0x0010]
    jmp short @..local.l92
@..local.l88:
    mov ax, 0x204c
    push ax
    lea ax, word [bp - 0x0194]
    push ax
    call strlen_2
    add sp, byte 4
    jmp short @..local.l93
@..local.l89:
    mov ax, 0x2062
    push ax
    lea ax, word [bp - 0x0194]
    push ax
    call strlen_2
    add sp, byte 4
    jmp short @..local.l93
@..local.l90:
    mov ax, 0x207b
    push ax
    lea ax, word [bp - 0x0194]
    push ax
    call strlen_2
    add sp, byte 4
    jmp short @..local.l93
@..local.l91:
    mov ax, 0x208f
    push ax
    lea ax, word [bp - 0x0194]
    push ax
    call strlen_2
    add sp, byte 4
    jmp short @..local.l93
@..local.l92:
    cmp ax, strict word 0
    je short @..local.l88
    cmp ax, strict word 1
    je short @..local.l89
    cmp ax, strict word 2
    je short @..local.l90
    cmp ax, strict word 3
    je short @..local.l91
@..local.l93:
    mov ax, 0x20a8
    push ax
    mov ax, 0x2648
    push ax
    call strlen_2
    add sp, byte 4
    cmp word [bp - 0x0010], byte 4
    je short @..local.l94
    mov ax, 0x20a9
    push ax
    lea ax, word [bp - 0x0144]
    push ax
    call strlen_2
    add sp, byte 4
    lea ax, word [bp - 0x0194]
    push ax
    lea ax, word [bp - 0x0144]
    push ax
    call strlen
    add sp, byte 4
    mov ax, 0x20c0
    push ax
    lea ax, word [bp - 0x0144]
    push ax
    call strlen
    add sp, byte 4
    lea ax, word [bp - 0x0144]
    push ax
    call math_loc_0992
    pop cx
    mov ax, 0x20d2
    push ax
    call math_loc_0992
    pop cx
@..local.l94:
    mov word [bp - 0x01c6], 1
    mov word [bp - 0x01c0], 1
    mov word [bp - 0x01ca], 1
@..local.l95:
    jmp short @..local.l97
    mov word [bp - 0x01c6], 1
    mov word [bp - 0x01c0], 1
    mov word [bp - 0x01ca], 0
    jmp short @..local.l97
    mov word [bp - 0x01c6], 0
    mov word [bp - 0x01c0], 1
    mov word [bp - 0x01ca], 0
    jmp short @..local.l97

    db 0xe2, 0x19, 0xf9, 0x19, 0x44, 0x1a, 0x4f, 0x1a, 0xad, 0x1a, 0x0a, 0x1b, 0x70, 0x1b, 0x89, 0x1b
    db 0xa2, 0x1b, 0xf9, 0x1b, 0x08, 0x1c, 0x2d, 0x1c, 0x52, 0x1c, 0x6b, 0x1c, 0x7a, 0x1c, 0x59, 0x1d
    db 0x6d, 0x1d

@..local.l96:
    cmp ax, strict word 0x11
    jae short @..local.l97
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x1d81]
@..local.l97:
    jmp short loc_1fce
    jns short loc_1fcd
    nop
    sbb word [bx - 0x41e7], sp
    sbb si, cx
    sbb ax, 0x19d5
@..local.l98:

    db 0x2d, 0x08, 0x00, 0x3d, 0x06, 0x00, 0x73, 0x08, 0x93, 0xd1, 0xe3, 0x2e, 0xff, 0xa7, 0xb2, 0x1d

loc_1fce:
    cmp word [bp - 0x01c0], byte 0
    jne short @..local.l99
    jmp near @..local.l59
@..local.l99:
    cmp word [bp - 0x01c6], byte 0
    jne short @..local.l100
    jmp near @..local.l115
@..local.l100:
    mov ax, 0x2112
    push ax
    mov ax, 0x29f0
    push ax
    call strlen_2
    add sp, byte 4
    mov ax, 0x2113
    push ax
    mov ax, 0x2648
    push ax
    call strlen_2
    add sp, byte 4
    lea ax, word [bp - 0x001c]
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    call strlen_2
    add sp, byte 4
    mov ax, 0x2114
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    call strlen
    add sp, byte 4
    lea ax, word [bp - 0x003e]
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    call strlen_2
    add sp, byte 4
    mov ax, 0x2116
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    call strlen
    add sp, byte 4
    cmp word [bp - 0x01ca], byte 0
    jne short @..local.l101
    cmp word [bp - 0x0010], byte 4
    jne short @..local.l101
    lea ax, word [bp - 0x0054]
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    call strlen
    add sp, byte 4
    lea ax, word [bp - 0x0054]
    push ax
    call strlen_3
    pop cx
    cmp ax, strict word 0
    jle short @..local.l101
    mov ax, 0x2118
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    call strlen
    add sp, byte 4
@..local.l101:
    cmp word [bp - 0x01ca], byte 1
    je short @..local.l102
    jmp near @..local.l110
@..local.l102:
    cmp word [bp - 0x0010], byte 4
    je short @..local.l103
    jmp near @..local.l110
@..local.l103:
    lea ax, word [bp - 0x0054]
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    call strlen
    add sp, byte 4
    mov ax, 1
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    lea ax, word [bp - 0x003e]
    push ax
    call loc_11ba
    add sp, byte 6
    lea ax, word [bp - 0x0054]
    push ax
    call strlen_3
    pop cx
    cmp ax, strict word 0
    jle short @..local.l104
    mov ax, 0x211a
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    call strlen
    add sp, byte 4
@..local.l104:
    mov ax, 0x211c
    push ax
    mov ax, 1
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    lea ax, word [bp - 0x001c]
    push ax
    call loc_0dda
    add sp, byte 8
    mov ax, 0x2132
    push ax
    mov ax, 0x2127
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    call loc_0ed8
    add sp, byte 8
    cmp word [bp - 0x000e], byte 3
    je short @..local.l105
    jmp near @..local.l106
@..local.l105:
    mov ax, 0x213e
    push ax
    mov ax, 0x2133
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    call loc_0ed8
    add sp, byte 8
    mov ax, 0x214a
    push ax
    mov ax, 0x213f
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    call loc_0ed8
    add sp, byte 8
    mov ax, 0x2156
    push ax
    mov ax, 0x214b
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    call loc_0ed8
    add sp, byte 8
    mov ax, 0x2157
    push ax
    mov ax, data_0002
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    lea ax, word [bp - 0x001c]
    push ax
    call loc_0dda
    add sp, byte 8
    mov ax, 0x216d
    push ax
    mov ax, 0x2162
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    call loc_0ed8
    add sp, byte 8
    mov ax, 0x2179
    push ax
    mov ax, 0x216e
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    call loc_0ed8
    add sp, byte 8
    mov ax, 0x2185
    push ax
    mov ax, 0x217a
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    call loc_0ed8
    add sp, byte 8
    mov ax, 0x2191
    push ax
    mov ax, 0x2186
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    call loc_0ed8
    add sp, byte 8
@..local.l106:
    cmp word [bp - 0x000e], byte 2
    je short @..local.l107
    jmp near @..local.l108
@..local.l107:
    mov ax, 0x219d
    push ax
    mov ax, 0x2192
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    call loc_0ed8
    add sp, byte 8
    mov ax, 0x219e
    push ax
    mov ax, data_0002
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    lea ax, word [bp - 0x001c]
    push ax
    call loc_0dda
    add sp, byte 8
    mov ax, 0x21b4
    push ax
    mov ax, 0x21a9
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    call loc_0ed8
    add sp, byte 8
    mov ax, 0x21c0
    push ax
    mov ax, 0x21b5
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    call loc_0ed8
    add sp, byte 8
    mov ax, 0x21cc
    push ax
    mov ax, 0x21c1
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    call loc_0ed8
    add sp, byte 8
    mov ax, 0x21cd
    push ax
    mov ax, 3
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    lea ax, word [bp - 0x001c]
    push ax
    call loc_0dda
    add sp, byte 8
    mov ax, 0x21e3
    push ax
    mov ax, 0x21d8
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    call loc_0ed8
    add sp, byte 8
    mov ax, 0x21ef
    push ax
    mov ax, 0x21e4
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    call loc_0ed8
    add sp, byte 8
    mov ax, 0x21f0
    push ax
    mov ax, data_0004
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    lea ax, word [bp - 0x001c]
    push ax
    call loc_0dda
    add sp, byte 8
    mov ax, 0x2206
    push ax
    mov ax, 0x21fb
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    call loc_0ed8
    add sp, byte 8
@..local.l108:
    cmp word [bp - 0x000e], byte 1
    je short @..local.l109
    jmp near @..local.l110
@..local.l109:
    mov ax, 0x2212
    push ax
    mov ax, 0x2207
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    call loc_0ed8
    add sp, byte 8
    mov ax, 0x221e
    push ax
    mov ax, 0x2213
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    call loc_0ed8
    add sp, byte 8
    mov ax, 0x221f
    push ax
    mov ax, data_0002
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    lea ax, word [bp - 0x001c]
    push ax
    call loc_0dda
    add sp, byte 8
    mov ax, 0x2235
    push ax
    mov ax, 0x222a
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    call loc_0ed8
    add sp, byte 8
    mov ax, 0x2241
    push ax
    mov ax, 0x2236
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    call loc_0ed8
    add sp, byte 8
    mov ax, 0x224d
    push ax
    mov ax, 0x2242
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    call loc_0ed8
    add sp, byte 8
    mov ax, 0x2259
    push ax
    mov ax, 0x224e
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    call loc_0ed8
    add sp, byte 8
    mov ax, 0x225a
    push ax
    mov ax, 3
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    lea ax, word [bp - 0x001c]
    push ax
    call loc_0dda
    add sp, byte 8
    mov ax, 0x2270
    push ax
    mov ax, 0x2265
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    lea ax, word [bp - 0x00a4]
    push ax
    call loc_0ed8
    add sp, byte 8
@..local.l110:
    mov ax, word [bp - 0x0010]
    jmp short @..local.l111
loc_2394:
    mov word [bp - 0x022c], data_0005
    jmp short @..local.l112
loc_239c:
    mov word [bp - 0x022c], data_0002
    jmp short @..local.l112
loc_23a4:
    mov word [bp - 0x022c], data_0004
    jmp short @..local.l112
loc_23ac:
    mov word [bp - 0x022c], data_0002
    jmp short @..local.l112
loc_23b4:
    mov word [bp - 0x022c], 1
    jmp short @..local.l112
    db 0x94, 0x21, 0x9c, 0x21, 0xa4, 0x21, 0xac, 0x21, 0xb4, 0x21
@..local.l111:
    cmp ax, strict word 5
    jae short @..local.l112
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x21bc]
@..local.l112:
    cmp word [bp - 0x0010], byte 4
    je short @..local.l113
    mov ax, 0x2271
    push ax
    mov ax, 0xffff
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    lea ax, word [bp - 0x003e]
    push ax
    call loc_0dda
    add sp, byte 8
@..local.l113:
    push word [bp - 0x01c8]
    push word [bp - 0x01bc]
    push word [bp - 0x01ba]
    lea ax, word [bp - 0x01b8]
    push ax
    push word [bp - 0x01a2]
    push word [bp - 0x01a0]
    push word [bp - 0x019a]
    push word [bp - 0x0198]
    push word [bp - 0x0196]
    push word [bp - 0x022c]
    lea ax, word [bp - 0x0054]
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    lea ax, word [bp - 0x003e]
    push ax
    call loc_0a0f
    add sp, byte 0x1a
    test ax, ax
    je short @..local.l114
    mov ax, 0x227e
    push ax
    call math_loc_0992
    pop cx
    jmp short @..local.l115
@..local.l114:
    mov ax, 0x22af
    push ax
    call math_loc_0992
    pop cx
    mov ax, 0x22e3
    push ax
    call math_loc_0992
    pop cx
@..local.l115:
    mov ax, 3
    push ax
    call loc_06f1
    pop cx
    mov ax, 0
    push ax
    call dos_file_loc_380b
    pop cx
    mov sp, bp
    pop bp
    ret
io_loc_245e:
    push bp
    mov bp, sp
    sub sp, byte 4
    push ds
    push es
    push si
    push di
    call bios_video_loc_247a
    call bios_video_loc_2501
    mov ax, word [bp - 0x0002]
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    db 0x00
bios_video_loc_247a:
    mov ah, 0xf
    int 0x10 ; BIOS video: get video mode
    mov byte [cs:data_2279], al
    mov ax, 0
    push ds
    mov ds, ax
    mov bx, 0x487
    mov al, byte [bx]
    pop ds
    or al, al
    je short @..bios_video_loc_247a.l1
    jmp near @..local.l119
@..bios_video_loc_247a.l1:
    cmp byte [cs:data_2279], 7
    jne short @..bios_video_loc_247a.l2
    mov dx, 0x3d4
    mov al, 0xf
    out dx, al
    inc dx
    in al, dx
    xchg al, ah
    mov al, 0x64
    out dx, al
    nop
    nop
    nop
    in al, dx
    cmp al, 0x64
    jne short @..local.l116
    xchg al, ah
    out dx, al
@..bios_video_loc_247a.l2:
    mov word [bp - 0x0002], data_0004
    ret
@..local.l116:
    mov dx, 0x3ba
    in al, dx
    and al, data_0080
    xchg al, ah
    mov cx, 0x1388
@..local.l117:
    in al, dx
    and al, data_0080
    cmp al, ah
    jne short @..local.l118
    loop @..local.l117
    mov word [bp - 0x0002], 0
    ret
@..local.l118:
    mov word [bp - 0x0002], 8
    ret
@..local.l119:
    mov word [bp - 0x0002], data_0006
    xor bx, bx
    mov ax, 0x1a00
    int 0x10 ; BIOS video
    cmp bl, 7
    je short @..local.l120
    cmp bh, 7
    je short @..local.l120
    cmp bl, 8
    je short @..local.l120
    cmp bh, 8
    jne short @..local.l121
@..local.l120:
    or word [bp - 0x0002], 1
@..local.l121:
    ret
bios_video_loc_2501:
    mov ax, 0x3533
    int 0x21 ; DOS function dispatcher
    mov ax, es
    or ax, bx
    je short @..bios_video_loc_2501.l1
    cmp byte [es:bx], 0xcf
    je short @..bios_video_loc_2501.l1
    mov ax, 0
    int 0x33 ; BIOS mouse
    or al, al
    je short @..bios_video_loc_2501.l1
    or word [bp - 0x0002], strict word 0x1000
@..bios_video_loc_2501.l1:
    ret
dos_con_in_noecho:
    push bp
    mov bp, sp
    mov ah, 7
    int 0x21 ; DOS keyboard input (no echo)
    mov ah, 0
    mov sp, bp
    pop bp
    ret
bios_video_loc_252e:
    push bp
    mov bp, sp
    push di
    push si
    mov ax, 0x600
    mov bh, byte [data_2647]
    xor cx, cx
    mov dx, 0x184f
    push bp
    int 0x10 ; BIOS video
    pop bp
    mov ah, data_0002
    xor dx, dx
    mov bx, dx
    int 0x10 ; BIOS video: set cursor position
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
bios_video_loc_2551:
    push bp
    mov bp, sp
    push di
    push si
    mov bx, word [bp + 0x4]
    mov dx, word [bp + 0x6]
    mov dh, bl
    mov bh, 0
    mov ah, data_0002
    int 0x10 ; BIOS video: set cursor position
    pop si
    pop di
    mov sp, bp
    pop bp
    ret

    db 0x55, 0x8b, 0xec, 0x57, 0x56, 0x8b, 0x5e, 0x04, 0x8b, 0x56, 0x06, 0x53, 0x52, 0x8a, 0xf3, 0xb7
    db 0x00, 0xb4, 0x02, 0xcd, 0x10, 0xb8, 0x50, 0x00, 0x5b, 0x2b, 0xc3, 0x8b, 0xf0, 0xb8, 0x18, 0x00
    db 0x5b, 0x2b, 0xc3, 0xb3, 0x50, 0xf6, 0xeb, 0x03, 0xc6, 0x8b, 0xc8, 0xb8, 0x20, 0x09, 0x8a, 0x1e
    db 0x47, 0x26, 0xb7, 0x00, 0xcd, 0x10, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d, 0xc3, 0x55, 0x8b, 0xec, 0x57
    db 0x56, 0x8b, 0x5e, 0x04, 0x8b, 0x56, 0x06, 0x52, 0x8a, 0xf3, 0xb7, 0x00, 0xb4, 0x02, 0xcd, 0x10
    db 0xb8, 0x50, 0x00, 0x5b, 0x2b, 0xc3, 0x8b, 0xc8, 0xb8, 0x20, 0x09, 0x8a, 0x1e, 0x47, 0x26, 0xb7
    db 0x00, 0xcd, 0x10, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d, 0xc3

bios_video_loc_25d3:
    push bp
    mov bp, sp
    push di
    push si
    mov bx, word [bp + 0x4]
@..bios_video_loc_25d3.l1:
    mov al, byte [bx]
    or al, al
    je short @..bios_video_loc_25d3.l4
    push bx
    cmp al, 0xa
    jne short @..bios_video_loc_25d3.l2
    mov ah, 3
    mov bh, 0
    int 0x10 ; BIOS video: get cursor position
    mov dl, 0
    inc dh
    mov ah, 3
    mov bh, 0
    mov ah, data_0002
    int 0x10 ; BIOS video: set cursor position
    jmp short @..bios_video_loc_25d3.l3
@..bios_video_loc_25d3.l2:
    mov ah, 9
    mov bl, byte [data_2645]
    mov bh, 0
    mov cx, 1
    int 0x10 ; BIOS video: write char/attribute
    mov ah, 3
    mov bh, 0
    int 0x10 ; BIOS video: get cursor position
    inc dl
    mov ah, 3
    mov bh, 0
    mov ah, data_0002
    int 0x10 ; BIOS video: set cursor position
@..bios_video_loc_25d3.l3:
    pop bx
    inc bx
    jmp short @..bios_video_loc_25d3.l1
@..bios_video_loc_25d3.l4:
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
bios_video_loc_2621:
    push bp
    mov bp, sp
    push di
    push si
    mov bx, word [bp + 0x4]
@..bios_video_loc_2621.l1:
    mov al, byte [bx]
    or al, al
    je short @..bios_video_loc_2621.l4
    push bx
    cmp al, 0xa
    jne short @..bios_video_loc_2621.l2
    mov ah, 3
    mov bh, 0
    int 0x10 ; BIOS video: get cursor position
    mov dl, 0
    inc dh
    mov ah, 3
    mov bh, 0
    mov ah, data_0002
    int 0x10 ; BIOS video: set cursor position
    jmp short @..bios_video_loc_2621.l3
@..bios_video_loc_2621.l2:
    mov ah, 9
    mov bl, byte [data_2644]
    mov bh, 0
    mov cx, 1
    int 0x10 ; BIOS video: write char/attribute
    mov ah, 3
    mov bh, 0
    int 0x10 ; BIOS video: get cursor position
    inc dl
    mov ah, 3
    mov bh, 0
    mov ah, data_0002
    int 0x10 ; BIOS video: set cursor position
@..bios_video_loc_2621.l3:
    pop bx
    inc bx
    jmp short @..bios_video_loc_2621.l1
@..bios_video_loc_2621.l4:
    pop si
    pop di
    mov sp, bp
    pop bp
    ret

    db 0x55, 0x8b, 0xec, 0x57, 0x56, 0x8b, 0x5e, 0x04, 0x8a, 0x07, 0x0a, 0xc0, 0x74, 0x3a, 0x53, 0x3c
    db 0x0a, 0x75, 0x14, 0xb4, 0x03, 0xb7, 0x00, 0xcd, 0x10, 0xb2, 0x00, 0xfe, 0xc6, 0xb4, 0x03, 0xb7
    db 0x00, 0xb4, 0x02, 0xcd, 0x10, 0xeb, 0x1d, 0xb4, 0x09, 0x8a, 0x1e, 0x46, 0x26, 0xb7, 0x00, 0xb9
    db 0x01, 0x00, 0xcd, 0x10, 0xb4, 0x03, 0xb7, 0x00, 0xcd, 0x10, 0xfe, 0xc2, 0xb4, 0x03, 0xb7, 0x00
    db 0xb4, 0x02, 0xcd, 0x10, 0x5b, 0x43, 0xeb, 0xc0, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d, 0xc3, 0x55, 0x8b
    db 0xec, 0x83, 0xec, 0x02, 0x57, 0x56, 0x8b, 0x76, 0x0a, 0x8b, 0x7e, 0x08, 0x8b, 0x46, 0x06, 0x89
    db 0x46, 0xfe, 0xb4, 0x0c, 0x8a, 0x46, 0x0c, 0x33, 0xdb, 0x8b, 0x4e, 0xfe, 0x8b, 0x56, 0x04, 0xcd
    db 0x10, 0xff, 0x46, 0xfe, 0x3b, 0x76, 0xfe, 0x73, 0xe9, 0xff, 0x46, 0x04, 0x3b, 0x7e, 0x04, 0x73
    db 0xdb, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d, 0xc3, 0x55, 0x8b, 0xec, 0x57, 0x56, 0x8b, 0x46, 0x04, 0xba
    db 0x01, 0x00, 0xcd, 0x17, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d, 0xc3

bios_kbd_check:
    push bp
    mov bp, sp
    push di
    push si
    mov ah, 1
    int 0x16 ; BIOS keyboard: check keystroke
    mov ax, 0
    je short @..bios_kbd_check.l1
    mov ax, 1
@..bios_kbd_check.l1:
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
bios_video_loc_2720:
    push bp
    mov bp, sp
    push di
    push si
    mov bh, 0
    mov ah, 3
    int 0x10 ; BIOS video: get cursor position
    mov ax, dx
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
bios_video_loc_2733:
    push bp
    mov bp, sp
    push di
    push si
    mov dx, word [bp + 0x4]
    mov bh, 0
    mov ah, data_0002
    int 0x10 ; BIOS video: set cursor position
    pop si
    pop di
    mov sp, bp
    pop bp
    ret

    db 0x55, 0x8b, 0xec, 0x57, 0x56, 0x8b, 0x5e, 0x0c, 0xff, 0x4e, 0x04, 0xff, 0x4e, 0x06, 0x8b, 0x56
    db 0x06, 0x8b, 0x46, 0x04, 0x8a, 0xf0, 0x52, 0x89, 0x56, 0x04, 0x89, 0x17, 0x83, 0xc3, 0x02, 0x8b
    db 0x4e, 0x0a, 0x89, 0x0f, 0x83, 0xc3, 0x02, 0x8b, 0x4e, 0x08, 0x89, 0x0f, 0x83, 0xc3, 0x02, 0x51
    db 0x8b, 0xf1, 0x8b, 0xfb, 0x8b, 0x56, 0x04, 0xff, 0x46, 0x04, 0x33, 0xdb, 0xb4, 0x02, 0xcd, 0x10
    db 0xb4, 0x08, 0xcd, 0x10, 0x8b, 0xdf, 0x89, 0x07, 0x83, 0xc3, 0x02, 0x8b, 0xce, 0xe2, 0xe1, 0x59
    db 0x5a, 0xfe, 0xc6, 0xff, 0x4e, 0x0a, 0x74, 0x04, 0x52, 0x51, 0xeb, 0xd4, 0x5e, 0x5f, 0x8b, 0xe5
    db 0x5d, 0xc3, 0x55, 0x8b, 0xec, 0x83, 0xec, 0x02, 0x57, 0x56, 0x8b, 0x5e, 0x04, 0x8b, 0x17, 0x52
    db 0x89, 0x56, 0x04, 0x83, 0xc3, 0x02, 0x8b, 0x0f, 0x89, 0x4e, 0xfe, 0x83, 0xc3, 0x02, 0x8b, 0x0f
    db 0x83, 0xc3, 0x02, 0x51, 0x8b, 0xf1, 0x8b, 0xfb, 0x8b, 0x56, 0x04, 0xff, 0x46, 0x04, 0x33, 0xdb
    db 0xb4, 0x02, 0xcd, 0x10, 0x8b, 0xdf, 0x8b, 0x07, 0x8a, 0xdc, 0xb7, 0x00, 0xb9, 0x01, 0x00, 0xb4
    db 0x09, 0xcd, 0x10, 0x8b, 0xdf, 0x83, 0xc3, 0x02, 0x8b, 0xce, 0xe2, 0xd8, 0x59, 0x5a, 0xfe, 0xc6
    db 0xff, 0x4e, 0xfe, 0x74, 0x04, 0x52, 0x51, 0xeb, 0xcb, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d, 0xc3

leaf_loc_2806:
    push bp
    mov bp, sp
    add sp, byte 0xfe
    push di
    push si
    mov si, word [bp + 0x4]
@..leaf_loc_2806.l1:
    cmp byte [si], 0x20
    je short @..leaf_loc_2806.l2
    cmp byte [si], 9
    jne short @..leaf_loc_2806.l3
@..leaf_loc_2806.l2:
    inc si
    jmp short @..leaf_loc_2806.l1
@..leaf_loc_2806.l3:
    mov word [bp - 0x0002], 0
    cmp byte [si], 0x2d
    jne short @..leaf_loc_2806.l4
    mov word [bp - 0x0002], 1
    inc si
    jmp short @..leaf_loc_2806.l5
@..leaf_loc_2806.l4:
    cmp byte [si], 0x2b
    jne short @..leaf_loc_2806.l5
    inc si
@..leaf_loc_2806.l5:
    mov di, 0
    jmp short @..leaf_loc_2806.l7
@..leaf_loc_2806.l6:
    mov ax, di
    mov dx, ax
    shl ax, 1
    shl ax, 1
    add ax, dx
    shl ax, 1
    push ax
    mov bx, si
    inc si
    mov al, byte [bx]
    cbw
    mov cx, ax
    pop ax
    add ax, cx
    add ax, strict word 0xffd0
    mov di, ax
@..leaf_loc_2806.l7:
    mov al, byte [si]
    cbw
    mov bx, ax
    mov al, byte [bx + 0x2453]
    cbw
    test ax, data_0004
    jne short @..leaf_loc_2806.l6
    mov ax, di
    cmp word [bp - 0x0002], byte 0
    je short @..leaf_loc_2806.l8
    neg ax
@..leaf_loc_2806.l8:
    pop si
    pop di
    mov sp, bp
    pop bp
    ret

    db 0x55, 0x8b, 0xec, 0x83, 0xc4, 0xfc, 0x57, 0x56, 0x8b, 0x76, 0x04, 0x80, 0x3c, 0x20, 0x74, 0x05
    db 0x80, 0x3c, 0x09, 0x75, 0x03, 0x46, 0xeb, 0xf3, 0xbf, 0x00, 0x00, 0x80, 0x3c, 0x2d, 0x75, 0x06
    db 0xbf, 0x01, 0x00, 0x46, 0xeb, 0x06, 0x80, 0x3c, 0x2b, 0x75, 0x01, 0x46, 0xc7, 0x46, 0xfe, 0x00
    db 0x00, 0xc7, 0x46, 0xfc, 0x00, 0x00, 0xeb, 0x33, 0x8b, 0x46, 0xfc, 0x8b, 0x56, 0xfe, 0x50, 0x92
    db 0xbb, 0x0a, 0x00, 0xf7, 0xe3, 0x8b, 0xc8, 0x58, 0xf7, 0xe3, 0x03, 0xd1, 0x50, 0x52, 0x8b, 0xde
    db 0x46, 0x8a, 0x07, 0x98, 0x99, 0x8b, 0xc8, 0x8b, 0xda, 0x5a, 0x58, 0x03, 0xc1, 0x13, 0xd3, 0x05
    db 0xd0, 0xff, 0x83, 0xd2, 0xff, 0x89, 0x56, 0xfe, 0x89, 0x46, 0xfc, 0x8a, 0x04, 0x98, 0x8b, 0xd8
    db 0x8a, 0x87, 0x53, 0x24, 0x98, 0xa9, 0x04, 0x00, 0x75, 0xbe, 0x8b, 0x46, 0xfc, 0x8b, 0x56, 0xfe
    db 0x85, 0xff, 0x74, 0x07, 0xf7, 0xda, 0xf7, 0xd8, 0x83, 0xda, 0x00, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d
    db 0xc3

loc_2908:
    push bp
    mov bp, sp
    lea ax, word [bp + 0x6]
    push ax
    push word [bp + 0x4]
    call loc_291c
    add sp, byte 4
    mov sp, bp
    pop bp
    ret
loc_291c:
    push bp
    mov bp, sp
    add sp, strict word 0xff5c
    push di
    push si
    lea si, word [bp - 0x0083]
    mov word [bp - 0x0002], 1
    lea ax, word [bp - 0x0094]
    push ax
    mov ax, 0x230a
    push ax
    call dos_loc_29d9
    add sp, byte 4
    lea ax, word [bp - 0x00a4]
    push ax
    mov ax, 0x230c
    push ax
    call dos_loc_29d9
    add sp, byte 4
    mov bx, word [bp + 0x6]
    cmp word [bx], byte 0
    je short @..local.l127
    add word [bp + 0x6], byte 2
@..local.l122:
    mov bx, word [bp + 0x6]
    add word [bp + 0x6], byte 2
    mov di, word [bx]
    test di, di
    je short @..local.l127
    cmp word [bp - 0x0002], byte 1
    jne short @..local.l123
    lea ax, word [bp - 0x0094]
    push ax
    push di
    call dos_loc_29d9
    add sp, byte 4
    jmp short @..local.l124
@..local.l123:
    cmp word [bp - 0x0002], byte 2
    jne short @..local.l124
    lea ax, word [bp - 0x00a4]
    push ax
    push di
    call dos_loc_29d9
    add sp, byte 4
@..local.l124:
    mov byte [si], 0x20
    inc si
@..local.l125:
    cmp byte [di], 0
    je short @..local.l126
    lea ax, word [bp - 0x0005]
    cmp ax, si
    jbe short @..local.l127
    mov al, byte [di]
    mov byte [si], al
    inc di
    inc si
    jmp short @..local.l125
@..local.l126:
    inc word [bp - 0x0002]
    jmp short @..local.l122
@..local.l127:
    mov ax, si
    lea cx, word [bp - 0x0083]
    sub ax, cx
    mov byte [bp - 0x0084], al
    mov byte [si], 0xd
    lea ax, word [bp - 0x00a4]
    push ax
    lea ax, word [bp - 0x0094]
    push ax
    lea ax, word [bp - 0x0084]
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call dos_proc_loc_2a27
    add sp, byte 0x0a
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
dos_loc_29d9:
    push bp
    mov bp, sp
    push di
    push si
    mov di, ds
    mov es, di
    mov si, word [bp + 0x4]
    mov di, word [bp + 0x6]
    mov ax, 0x2900
    int 0x21 ; DOS function dispatcher
    and ax, 0xff
    cmp byte [es:di + 0x1], 0x20
    jne short @..dos_loc_29d9.l1
    mov ax, 0xffff
@..dos_loc_29d9.l1:
    pop si
    pop di
    pop bp
    ret
dos_loc_29fe:
    push bp
    mov bp, sp
    mov ah, 0x39
@..dos_loc_29fe.l1:
    mov dx, word [bp + 0x4]
    int 0x21 ; DOS create directory
    mov ax, 0
    jae short @..dos_loc_29fe.l2
    mov word [data_24d6], ax
    mov ax, 0xffff
@..dos_loc_29fe.l2:
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    mov ah, 0x3a
    jmp short @..dos_loc_29fe.l1
leaf_loc_2a1c:
    push bp
    mov bp, sp
    mov ah, 0x3b
    jmp short @..dos_loc_29fe.l1
    times 4 db 0
dos_proc_loc_2a27:
    push bp
    mov bp, sp
    push si
    push di
    pushf
    push word [data_0030]
    push word [data_002e]
    push ds
    push es
    mov word [cs:data_2823], ss
    mov word [cs:data_2825], sp
    mov ax, word [bp + 0x6]
    mov word [data_230e], ax
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0x8]
    mov word [data_2310], ax
    mov word [data_2312], es
    mov ax, word [bp + 0xa]
    mov word [data_2314], ax
    mov word [data_2316], es
    mov ax, word [bp + 0xc]
    mov word [data_2318], ax
    mov word [data_231a], es
    mov ax, ds
    mov es, ax
    mov bx, data_230e
    mov dx, word [bp + 0x4]
    mov ax, 0x4b00
    int 0x21 ; DOS function dispatcher
    mov ss, word [cs:data_2823]
    mov sp, word [cs:data_2825]
    pop es
    pop ds
    jae short @..leaf_loc_2a1c.l1
    mov word [data_24d6], ax
    mov ax, 0xffff
    jmp short @..leaf_loc_2a1c.l2
@..leaf_loc_2a1c.l1:
    sub ax, ax
@..leaf_loc_2a1c.l2:
    pop word [data_002e]
    pop word [data_0030]
    popf
    pop di
    pop si
    pop bp
    ret
dos_proc_loc_2a9d:
    mov ah, 0x4d
    int 0x21 ; DOS get return code
    jae short @..dos_proc_loc_2a9d.l1
    neg ax
@..dos_proc_loc_2a9d.l1:
    ret
strlen:
    push bp
    mov bp, sp
    mov dx, 0x7fff
    jmp short @..strlen.l1
    push bp
    mov bp, sp
    mov dx, word [bp + 0x8]
@..strlen.l1:
    cld
    push si
    push di
    mov di, ds
    mov es, di
    mov di, word [bp + 0x4]
    sub ax, ax
    mov cx, 0x7fff
    repne scasb
    dec di
    mov si, word [bp + 0x6]
    mov cx, dx
@..strlen.l2:
    lodsb
    stosb
    test al, al
    loopne @..strlen.l2
    je short @..strlen.l3
    sub al, al
    stosb
@..strlen.l3:
    pop di
    pop si
    mov ax, word [bp + 0x4]
    pop bp
    ret
strlen_2:
    push bp
    mov bp, sp
    cld
    push si
    push di
    mov di, ds
    mov es, di
    mov di, word [bp + 0x6]
    mov cx, 0xffff
    mov al, 0
    repne scasb
    not cx
    mov di, word [bp + 0x4]
    mov si, word [bp + 0x6]
    shr cx, 1
    jcxz @..strlen_2.l1
    rep movsw
@..strlen_2.l1:
    jae short @..strlen_2.l2
    movsb
@..strlen_2.l2:
    pop di
    pop si
    mov ax, word [bp + 0x4]
    pop bp
    ret
string_loc_2b09:
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
    jcxz @..string_loc_2b09.l3
@..string_loc_2b09.l1:
    lodsb
    test al, al
    je short @..string_loc_2b09.l2
    stosb
    loop @..string_loc_2b09.l1
    jmp short @..string_loc_2b09.l3
@..string_loc_2b09.l2:
    rep stosb
@..string_loc_2b09.l3:
    pop di
    pop si
    mov ax, word [bp + 0x4]
    pop bp
    ret
loc_2b31:
    push bp
    mov bp, sp
    sub sp, byte 0x0e
    push si
    push di
    push es
    push ds
    mov byte [bp - 0x000a], 0xcd
    mov al, byte [bp + 0x4]
    mov byte [bp - 0x0009], al
    mov word [bp - 0x0008], 0xcd8c
    mov word [bp - 0x0006], 0xd58e
    mov byte [bp - 0x0004], 0xbc
    mov ax, sp
    sub ax, strict word 6
    mov word [bp - 0x0003], ax
    mov byte [bp - 0x0001], 0xcb
    mov word [bp - 0x000c], ss
    lea ax, word [bp - 0x000a]
    mov word [bp - 0x000e], ax
    mov bx, word [bp + 0x6]
    mov ax, word [bx]
    push word [bx + 0x2]
    mov cx, word [bx + 0x4]
    mov dx, word [bx + 0x6]
    mov si, word [bx + 0x8]
    mov di, word [bx + 0xa]
    mov es, word [bx + 0xe]
    mov ds, word [bx + 0xc]
    pop bx
    push bp
    call far [bp - 0x000e]
    pop bp
    push ds
    push bx
    mov bx, word [bp + 0x8]
    mov word [ss:bx + 0xe], es
    pop word [ss:bx + 0x2]
    pop word [ss:bx + 0xc]
    pop ds
    mov word [bx], ax
    mov word [bx + 0x4], cx
    mov word [bx + 0x6], dx
    mov word [bx + 0x8], si
    mov word [bx + 0xa], di
    pop es
    pop di
    pop si
    pushf
    pop ax
    add sp, byte 0x0e
    pop bp
    ret
loc_2bb2:
    push bp
    mov bp, sp
    mov al, byte [bp + 0x4]
    sub ah, ah
    cmp al, 0x61
    jl short @..local.l128
    cmp al, 0x7a
    jg short @..local.l128
    sub al, 0x20
@..local.l128:
    pop bp
    ret

    db 0x55, 0x8b, 0xec, 0x8a, 0x46, 0x04, 0x2a, 0xe4, 0x3c, 0x41, 0x7c, 0x06, 0x3c, 0x5a, 0x7f, 0x02
    db 0x04, 0x20, 0x5d, 0xc3, 0x55, 0x8b, 0xec, 0x56, 0xe8, 0x64, 0x02, 0x8b, 0xf0, 0x85, 0xf6, 0x75
    db 0x08, 0xb8, 0x00, 0x00, 0x5e, 0x8b, 0xe5, 0x5d, 0xc3, 0x56, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04
    db 0xe8, 0x05, 0x00, 0x83, 0xc4, 0x06, 0xeb, 0xec

loc_2bfe:
    push bp
    mov bp, sp
    push di
    push si
    push word [bp + 0x8]
    call loc_2d0b
    pop cx
    mov si, 0x231c
@..local.l129:
    cmp byte [si], 0
    jne short @..local.l131
    mov word [data_24d6], 1
    mov ax, 0
@..local.l130:
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
@..local.l131:
    push word [bp + 0x6]
    push si
    call string_loc_3508
    add sp, byte 4
    test ax, ax
    je short @..local.l132
    add si, byte 5
    jmp short @..local.l129
@..local.l132:
    push word [si + 0x3]
    push word [bp + 0x4]
    call loc_3381
    add sp, byte 4
    mov di, ax
    mov ax, di
    cmp ax, strict word 0xffff
    jne short @..local.l133
    mov ax, 0
    jmp short @..local.l130
@..local.l133:
    mov ax, di
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x7], al
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x6], 1
    mov ax, word [bp + 0x8]
    jmp short @..local.l130
loc_2c62:
    push bp
    mov bp, sp
    lea ax, word [bp + 0x6]
    push ax
    push word [bp + 0x4]
    mov ax, 0x2a7a
    push ax
    call string_loc_3098
    add sp, byte 6
    mov sp, bp
    pop bp
    ret

    db 0x55, 0x8b, 0xec, 0xb8, 0x57, 0x23, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x07, 0x00, 0x83, 0xc4, 0x04
    db 0x8b, 0xe5, 0x5d, 0xc3, 0x55, 0x8b, 0xec, 0x57, 0x56, 0x8b, 0x76, 0x04, 0x8b, 0x7e, 0x06, 0x83
    db 0xfe, 0x0a, 0x75, 0x19, 0x57, 0xb8, 0x0d, 0x00, 0x50, 0xe8, 0x1b, 0x00, 0x83, 0xc4, 0x04, 0x3d
    db 0xff, 0xff, 0x75, 0x09, 0xb8, 0xff, 0xff, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d, 0xc3, 0x57, 0x56, 0xe8
    db 0x05, 0x00, 0x83, 0xc4, 0x04, 0xeb, 0xf0, 0x55, 0x8b, 0xec, 0x56, 0x8b, 0x76, 0x06, 0x8b, 0x04
    db 0x3b, 0x44, 0x02, 0x72, 0x13, 0x8b, 0x46, 0x04, 0x25, 0xff, 0x00, 0x50, 0x56, 0xe8, 0xac, 0x00
    db 0x83, 0xc4, 0x04, 0x5e, 0x8b, 0xe5, 0x5d, 0xc3, 0x8a, 0x46, 0x04, 0x50, 0x8b, 0x04, 0xff, 0x04
    db 0x8b, 0xd8, 0x58, 0x88, 0x07, 0x98, 0x25, 0xff, 0x00, 0xeb, 0xe8, 0x56, 0xbe, 0x4a, 0x23, 0x8b
    db 0xc6, 0x83, 0xc6, 0x0d, 0x50, 0xe8, 0x09, 0x00, 0x59, 0x81, 0xfe, 0x4e, 0x24, 0x72, 0xf0, 0x5e
    db 0xc3

loc_2d0b:
    push bp
    mov bp, sp
    push di
    push si
    mov si, word [bp + 0x4]
    mov di, 0
    test si, si
    jne short @..local.l135
    mov ax, 0xffff
@..local.l134:
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
@..local.l135:
    cmp byte [si + 0x6], 0
    je short @..local.l138
    mov al, byte [si + 0x6]
    cbw
    test ax, data_0004
    je short @..local.l136
    mov ax, 0xffff
    push ax
    push si
    call loc_2d86
    add sp, byte 4
    mov di, ax
@..local.l136:
    mov al, byte [si + 0x7]
    cbw
    push ax
    call dos_file_loc_3869
    pop cx
    or di, ax
    mov al, byte [si + 0x6]
    cbw
    test ax, data_0002
    je short @..local.l137
    push word [si + 0x4]
    call math_loc_3019
    pop cx
@..local.l137:
    mov al, byte [si + 0x6]
    cbw
    test ax, 0x20
    je short @..local.l138
    push word [si + 0xb]
    call dos_file_loc_38a0
    pop cx
    push word [si + 0xb]
    call math_loc_3019
    pop cx
@..local.l138:
    mov ax, 0
    mov word [si], 0
    mov word [si + 0x2], ax
    mov word [si + 0x4], ax
    mov byte [si + 0x6], 0
    mov ax, di
    jmp short @..local.l134
loc_2d86:
    push bp
    mov bp, sp
    push di
    push si
    mov si, word [bp + 0x4]
    mov word [data_2500], 0x2af5
    mov al, byte [si + 0x6]
    cbw
    test ax, 0x10
    je short @..local.l140
    mov ax, 0xffff
@..local.l139:
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
@..local.l140:
    mov al, byte [si + 0x6]
    cbw
    test ax, data_0004
    je short @..local.l142
    mov di, word [si]
    sub di, word [si + 0x4]
    push di
    push word [si + 0x4]
    mov al, byte [si + 0x7]
    cbw
    push ax
    call dos_file_loc_383a
    add sp, byte 6
    cmp ax, di
    je short @..local.l142
@..local.l141:
    or byte [si + 0x6], 0x10
    mov ax, 0
    mov word [si], 0
    mov word [si + 0x2], ax
    mov ax, 0xffff
    jmp short @..local.l139
@..local.l142:
    cmp word [bp + 0x6], byte 0xff
    jne short @..local.l143
    and byte [si + 0x6], 0xfb
    mov ax, 0
    mov word [si], 0
    mov word [si + 0x2], ax
    mov ax, 0
    jmp short @..local.l139
@..local.l143:
    cmp word [si + 0x4], byte 0
    jne short @..local.l144
    push si
    call loc_2e63
    pop cx
@..local.l144:
    cmp word [si + 0x9], byte 1
    jne short @..local.l145
    mov ax, 1
    push ax
    lea ax, word [bp + 0x6]
    push ax
    mov al, byte [si + 0x7]
    cbw
    push ax
    call dos_file_loc_383a
    add sp, byte 6
    cmp ax, strict word 1
    jne short @..local.l141
    mov ax, word [bp + 0x6]
    jmp near @..local.l139
@..local.l145:
    mov ax, word [si + 0x4]
    mov word [si], ax
    add ax, word [si + 0x9]
    mov word [si + 0x2], ax
    or byte [si + 0x6], data_0004
    mov al, byte [bp + 0x6]
    push ax
    mov ax, word [si]
    inc word [si]
    mov bx, ax
    pop ax
    mov byte [bx], al
    cbw
    and ax, 0xff
    jmp near @..local.l139
    push si
    mov si, 0x234a
    cmp byte [si + 0x6], 0
    je short loc_2e5f
    add si, byte 0x0d
    cmp si, data_244e
    jb short loc_2e5d
    mov ax, 0
    pop si
    ret
    jmp short loc_2e49
    db 0x8b, 0xc6 ; mov ax, si
    jmp short loc_2e5b
loc_2e63:
    push bp
    mov bp, sp
    add sp, byte 0xfe
    push si
    mov si, word [bp + 0x4]
    mov al, byte [si + 0x7]
    cbw
    push ax
    call dos_ioctl
    pop cx
    test ax, ax
    je short @..local.l148
@..local.l146:
    mov word [si + 0x9], 1
    mov ax, si
    add ax, strict word 8
    mov word [si + 0x4], ax
@..local.l147:
    pop si
    mov sp, bp
    pop bp
    ret
@..local.l148:
    mov ax, 0x400
    push ax
    call loc_2f1b
    pop cx
    mov word [bp - 0x0002], ax
    test ax, ax
    je short @..local.l146
    mov word [si + 0x9], 0x400
    or byte [si + 0x6], data_0002
    mov ax, word [bp - 0x0002]
    mov word [si + 0x4], ax
    jmp short @..local.l147

    db 0x55, 0x8b, 0xec, 0x83, 0xc4, 0xfc, 0x57, 0x56, 0x8b, 0x76, 0x04, 0x8b, 0x44, 0xfe, 0x25, 0xfe
    db 0xff, 0x89, 0x46, 0xfe, 0x2b, 0xc6, 0x89, 0x46, 0xfc, 0x3b, 0x46, 0x06, 0x76, 0x0d, 0x8b, 0x46
    db 0x06, 0x89, 0x46, 0xfc, 0x8b, 0xce, 0x03, 0xc8, 0x89, 0x4e, 0xfe, 0x56, 0xe8, 0x3e, 0x01, 0x59
    db 0xff, 0x76, 0x06, 0xe8, 0x39, 0x00, 0x59, 0x8b, 0xf8, 0x85, 0xff, 0x74, 0x2a, 0x3b, 0xfe, 0x74
    db 0x26, 0xff, 0x76, 0xfc, 0x57, 0x56, 0xe8, 0xab, 0x0a, 0x83, 0xc4, 0x06
    db ';66%w'
    db 0x15, 0xa1, 0x36, 0x25, 0x3b, 0x46, 0xfe, 0x73, 0x0d, 0xa1, 0x34, 0x25, 0x8b, 0x0e, 0x36, 0x25
    db 0x2b, 0xce, 0x8b, 0xd9, 0x89, 0x01, 0x8b, 0xc7, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d, 0xc3

loc_2f1b:
    push bp
    mov bp, sp
    add sp, byte 0xfa
    push di
    push si
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    inc ax
    shr ax, 1
    shl ax, 1
    mov word [bp + 0x4], ax
    cmp word [data_2536], byte 0
    jne short @..local.l149
    mov word [data_2538], data_2538
    or word [data_2538], 1
    mov word [data_2536], data_2538
@..local.l149:
    mov word [bp - 0x0006], 0
    mov si, word [data_2536]
    mov word [bp - 0x0002], si
@..local.l150:
    cmp si, word [data_244e]
    jne short @..local.l154
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 1
    jle short @..local.l154
    mov word [bp - 0x0004], 0x400
    push word [bp - 0x0004]
    call loc_3a05
    pop cx
    mov di, ax
    mov ax, di
    cmp ax, strict word 0xffff
    jne short @..local.l152
    mov ax, 0
@..local.l151:
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
@..local.l152:
    mov ax, si
    add ax, strict word 2
    cmp di, ax
    je short @..local.l153
    mov word [si], di
    or word [si], 1
    dec word [bp - 0x0004]
    dec word [bp - 0x0004]
    mov si, di
@..local.l153:
    mov di, si
    add di, word [bp - 0x0004]
    mov word [si], di
    mov word [di], data_2538
    or word [di], 1
    mov word [data_244e], di
    mov bx, word [bp - 0x0002]
    mov ax, word [bx]
    and ax, strict word 0xfffe
    cmp ax, si
    jne short @..local.l154
    mov si, bx
@..local.l154:
    test word [si], 1
    jne short @..local.l158
    mov word [bp - 0x0002], si
@..local.l155:
    mov ax, word [si]
    and ax, strict word 0xfffe
    mov di, ax
    mov bx, di
    test word [bx], 1
    jne short @..local.l156
    mov ax, word [di]
    mov word [si], ax
    jmp short @..local.l155
@..local.l156:
    sub bx, si
    mov word [bp - 0x0004], bx
    cmp bx, word [bp + 0x4]
    jb short @..local.l158
    cmp bx, word [bp + 0x4]
    jbe short @..local.l157
    mov ax, si
    add ax, word [bp + 0x4]
    mov word [si], ax
    mov bx, ax
    mov ax, word [bx]
    mov word [data_2534], ax
    mov bx, word [si]
    mov word [bx], di
@..local.l157:
    mov ax, word [si]
    mov word [data_2536], ax
    or word [si], 1
    mov ax, si
    add ax, strict word 2
    jmp near @..local.l151
@..local.l158:
    mov ax, word [si]
    and ax, strict word 0xfffe
    mov si, ax
    jmp near @..local.l150
    jmp near @..local.l151
math_loc_3019:
    push bp
    mov bp, sp
    push si
    mov si, word [bp + 0x4]
    add si, byte 0xfe
    test word [si], 1
    jne short @..local.l159
    mov ax, 0xffff
@..math_loc_3019.l1:
    pop si
    mov sp, bp
    pop bp
    ret
@..local.l159:
    and word [si], strict word 0xfffe
    mov word [data_2536], si
    mov ax, 0
    jmp short @..math_loc_3019.l1

    db 'LlhFNoxXudiscpneEfgG%@/G/K/N/K/U/^/Z/c/h/h/'
    db 0x8c, 0x30, 0xab, 0x30, 0xd0, 0x30, 0xd3
    db '0{0u0{0{0u0'
    db 0xb3
    db '.0123456789abcdef -lm first', 0

string_loc_3098:
    push bp
    mov bp, sp
    sub sp, strict word 0x154
    push di
    push si
    cld
    mov si, word [bp + 0x6]
    mov word [bp - 0x0002], 0
@..string_loc_3098.l1:
    mov byte [bp - 0x000b], 0
    lodsb
    cmp al, 0x25
    je short @..local.l160
string_loc_30b3:
    test al, al
    je short @..string_loc_3098.l2
    call string_loc_3301
    jmp short @..string_loc_3098.l1
@..string_loc_3098.l2:
    mov ax, word [bp - 0x0002]
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
@..local.l160:
    mov byte [bp - 0x000c], 0x20
    mov byte [bp - 0x000e], 0
    mov byte [bp - 0x000d], 0
    mov word [bp - 0x0006], 0xffff
@..local.l161:
    lodsb
    cmp al, 0x2d
    jne short @..local.l162
    or byte [bp - 0x000b], 8
    jmp short @..local.l161
@..local.l162:
    cmp al, 0x2b
    jne short @..local.l163
    mov byte [bp - 0x000e], 0x2b
    jmp short @..local.l161
@..local.l163:
    cmp al, 0x20
    jne short @..local.l164
    cmp byte [bp - 0x000e], 0
    jne short @..local.l161
    mov byte [bp - 0x000e], 0x20
    jmp short @..local.l161
@..local.l164:
    cmp al, 0x23
    jne short @..local.l165
    or byte [bp - 0x000b], 0x10
    jmp short @..local.l161
@..local.l165:
    cmp al, data_0030
    jne short @..local.l166
    mov byte [bp - 0x000c], data_0030
    lodsb
@..local.l166:
    call string_loc_3338
    test dx, dx
    jns short @..local.l167
    neg dx
    or byte [bp - 0x000b], 8
@..local.l167:
    mov word [bp - 0x0004], dx
    cmp al, data_002e
    jne short @..local.l168
    lodsb
    call string_loc_3338
    mov word [bp - 0x0006], dx
@..local.l168:
    mov di, cs
    mov es, di
@..local.l169:
    mov di, 0x2e3e
    mov cx, 0x15
    repne scasb
    sub di, strict word 0x2e3f
    shl di, 1
    jmp [cs:di + 0x2e53]
string_loc_3140:
    or byte [bp - 0x000b], 1
    lodsb
    jmp short @..local.l169
string_loc_3147:
    or byte [bp - 0x000b], data_0002
string_loc_314b:
    lodsb
    jmp short @..local.l169
string_loc_314e:
    or byte [bp - 0x000b], data_0004
    lodsb
    jmp short @..local.l169
math_loc_3155:
    mov cx, 8
    jmp short @..string_loc_3140.l1
math_loc_315a:
    or byte [bp - 0x000b], 0x20
math_loc_315e:
    mov cx, 0x10
    jmp short @..string_loc_3140.l1
math_loc_3163:
    mov cx, 0xa
    jmp short @..string_loc_3140.l1
math_loc_3168:
    mov cx, 0xff0a
@..string_loc_3140.l1:
    push ds
    pop es
    mov di, word [bp + 0x8]
    mov ax, word [es:di]
    add di, byte 2
    test byte [bp - 0x000b], data_0002
    je short @..string_loc_3140.l2
    mov dx, word [es:di]
    add di, byte 2
    jmp short @..string_loc_3140.l3
@..string_loc_3140.l2:
    sub dx, dx
    test ch, ch
    je short @..string_loc_3140.l4
    cwd
@..string_loc_3140.l3:
    test ch, ch
    je short @..string_loc_3140.l4
    mov ch, byte [bp - 0x000e]
    mov byte [bp - 0x000d], ch
    test dx, dx
    jns short @..string_loc_3140.l4
    mov byte [bp - 0x000d], 0x2d
    neg dx
    neg ax
    sbb dx, byte 0
@..string_loc_3140.l4:
    mov word [bp + 0x8], di
    cmp word [bp - 0x0006], byte 0
    jge short @..string_loc_3140.l5
    mov word [bp - 0x0006], 1
@..string_loc_3140.l5:
    mov ch, 0
    mov di, ss
    mov es, di
    lea di, word [bp - 0x0140]
@..string_loc_3140.l6:
    test dx, dx
    jne short @..string_loc_3140.l7
    test ax, ax
    je short @..string_loc_3140.l10
@..string_loc_3140.l7:
    sub bx, bx
    cmp cx, dx
    ja short @..string_loc_3140.l8
    push ax
    mov ax, dx
    sub dx, dx
    div cx
    mov bx, ax
    pop ax
    div cx
    jmp short @..string_loc_3140.l9
@..string_loc_3140.l8:
    div cx
@..string_loc_3140.l9:
    xchg bx, dx
    mov bl, byte [cs:bx + 0x2e7d]
    dec di
    mov byte [es:di], bl
    jmp short @..string_loc_3140.l6
@..string_loc_3140.l10:
    test byte [bp - 0x000b], 0x10
    je short @..string_loc_3140.l12
    cmp cl, 0xa
    je short @..string_loc_3140.l12
    cmp cl, 0x10
    jne short @..string_loc_3140.l11
    mov byte [bp - 0x000d], 0x78
    jmp short @..string_loc_3140.l12
@..string_loc_3140.l11:
    dec di
    mov byte [es:di], data_0030
@..string_loc_3140.l12:
    lea cx, word [bp - 0x0140]
    sub cx, di
    mov ax, word [bp - 0x0006]
    sub ax, cx
    mov word [bp - 0x0006], ax
    jle short @..string_loc_3140.l13
    sub word [bp - 0x0004], ax
@..string_loc_3140.l13:
    mov word [bp - 0x0008], cx
    cmp byte [bp - 0x000d], 0
    je short @..string_loc_3140.l15
    cmp byte [bp - 0x000d], 0x78
    jne short @..string_loc_3140.l14
    dec word [bp - 0x0004]
@..string_loc_3140.l14:
    dec word [bp - 0x0004]
@..string_loc_3140.l15:
    sub word [bp - 0x0004], cx
    jle short @..string_loc_3140.l17
    test byte [bp - 0x000b], 8
    jne short @..string_loc_3140.l17
    cmp byte [bp - 0x000c], data_0030
    jne short @..string_loc_3140.l16
    call string_loc_32eb
@..string_loc_3140.l16:
    mov al, byte [bp - 0x000c]
    call string_loc_3301
    dec word [bp - 0x0004]
    jg short @..string_loc_3140.l16
@..string_loc_3140.l17:
    call string_loc_32eb
@..string_loc_3140.l18:
    dec word [bp - 0x0006]
    js short @..string_loc_3140.l19
    mov al, data_0030
    call string_loc_3301
    jmp short @..string_loc_3140.l18
@..string_loc_3140.l19:
    dec word [bp - 0x0008]
    js short @..string_loc_3140.l20
    mov al, byte [es:di]
    inc di
    call string_loc_3301
    jmp short @..string_loc_3140.l19
@..string_loc_3140.l20:
    dec word [bp - 0x0004]
    js short @..string_loc_3140.l21
    mov al, 0x20
    call string_loc_3301
    jmp short @..string_loc_3140.l20
@..string_loc_3140.l21:
    jmp near @..string_loc_3098.l1
loc_3275:
    or byte [bp - 0x000b], 0x20
    add al, 0x20
loc_327b:
    add word [bp + 0x8], byte 8
    mov ax, cs
    mov es, ax
    mov di, 0x2e8d
    sub word [bp - 0x0004], byte 0x0a
    jmp short @..string_loc_3140.l19
loc_328c:
    call string_loc_331e
    push di
    mov al, 0
    mov cx, 0xffff
    repne scasb
    not cx
    dec cx
    cmp cx, word [bp - 0x0006]
    jbe short @..string_loc_3140.l22
    mov cx, word [bp - 0x0006]
@..string_loc_3140.l22:
    pop di
    mov word [bp - 0x0006], 0
    jmp near @..string_loc_3140.l13
loc_32ab:
    push ds
    pop es
    mov di, word [bp + 0x8]
    mov al, byte [es:di]
    add di, byte 2
    mov word [bp + 0x8], di
    mov byte [bp - 0x0154], al
    mov cx, 1
    mov ax, ss
    mov es, ax
    lea di, word [bp - 0x0154]
    mov word [bp - 0x0006], 0
    jmp near @..string_loc_3140.l13
string_loc_32d0:
    jmp near @..string_loc_3098.l1
string_loc_32d3:
    call string_loc_331e
    mov ax, word [bp - 0x0002]
    mov word [es:di], ax
    test byte [bp - 0x000b], data_0002
    je short @..string_loc_3140.l23
    mov word [es:di + 0x2], 0
@..string_loc_3140.l23:
    jmp near @..string_loc_3098.l1
string_loc_32eb:
    mov al, byte [bp - 0x000d]
    test al, al
    je short @..string_loc_3140.l26
    cmp al, 0x78
    jne short @..string_loc_3140.l24
    mov al, data_0030
    call string_loc_3301
    mov al, 0x78
@..string_loc_3140.l24:
    mov byte [bp - 0x000d], 0
string_loc_3301:
    inc word [bp - 0x0002]
    test byte [bp - 0x000b], 0x20
    je short @..string_loc_3140.l25
    cmp al, 0x61
    jb short @..string_loc_3140.l25
    cmp al, 0x7a
    ja short @..string_loc_3140.l25
    sub al, 0x20
@..string_loc_3140.l25:
    push es
    sub ah, ah
    push ax
    call [bp + 0x4]
    pop ax
    pop es
@..string_loc_3140.l26:
    ret
string_loc_331e:
    push ds
    pop es
    mov di, word [bp + 0x8]
    test byte [bp - 0x000b], data_0004
    jne short string_loc_3330
    mov di, word [di]
    add word [bp + 0x8], byte 2
    ret
string_loc_3330:
    les di, word [es:di]
    add word [bp + 0x8], byte 4
    ret
string_loc_3338:
    cmp al, 0x2a
    jne short @..local.l170
    push ds
    pop es
    mov di, word [bp + 0x8]
    mov dx, word [es:di]
    add di, byte 2
    mov word [bp + 0x8], di
    lodsb
    ret
@..local.l170:
    sub dx, dx
    mov ah, 0
@..local.l171:
    cmp al, data_0030
    jb short @..local.l172
    cmp al, 0x39
    ja short @..local.l172
    sub al, data_0030
    shl dx, 1
    mov cx, dx
    shl dx, 1
    shl dx, 1
    add dx, cx
    add dx, ax
    lodsb
    jmp short @..local.l171
@..local.l172:
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    push word [bp + 0x6]
    mov ax, 0x301
    push ax
    push word [bp + 0x4]
    call loc_3381
    add sp, byte 6
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
loc_3381:
    push bp
    mov bp, sp
    push di
    push si
    mov ax, word [bp + 0x6]
    and ax, 0xf3
    mov di, ax
    or ax, 0x3d00
    mov di, ax
    test word [bp + 0x6], 0x200
    je short @..local.l173
    mov di, 0x3c00
@..local.l173:
    mov ax, 0
    push ax
    push word [bp + 0x4]
    push di
    call dos_mem_loc_358c
    add sp, byte 6
    mov si, ax
    mov ax, si
    cmp ax, strict word 0xffff
    jne short @..local.l175
    test word [bp + 0x6], 0x100
    je short @..local.l174
    mov ax, 0
    push ax
    push word [bp + 0x4]
    mov ax, 0x3c
    push ax
    call dos_mem_loc_358c
    add sp, byte 6
    mov si, ax
@..local.l174:
    jmp short @..local.l177
@..local.l175:
    test word [bp + 0x6], 0x400
    je short @..local.l177
    push si
    call dos_file_loc_3869
    pop cx
    mov word [data_24d6], 0x13
    mov ax, 0xffff
@..local.l176:
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
@..local.l177:
    cmp si, byte 0
    jl short @..local.l179
    test word [bp + 0x6], 0x800
    je short @..local.l178
    mov ax, data_0002
    push ax
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    push si
    call dos_file_loc_3881
    add sp, byte 8
@..local.l178:
    push si
    call dos_ioctl
    pop cx
    mov byte [si + 0x251a], al
@..local.l179:
    mov ax, si
    jmp short @..local.l176

    db 0x57, 0x2b, 0xff, 0x85, 0xd2, 0x79, 0x08, 0xf7, 0xda, 0xf7, 0xd8, 0x83, 0xda, 0x00, 0x47, 0x85
    db 0xdb, 0x79, 0x0b, 0xf7, 0xdb, 0xf7, 0xd9, 0x83, 0xdb, 0x00, 0x81, 0xf7, 0x01, 0x00, 0xe8, 0x39
    db 0x00, 0x85, 0xff, 0x74, 0x07, 0xf7, 0xda, 0xf7, 0xd8, 0x83, 0xda, 0x00, 0x5f, 0xc3, 0x57, 0xbf
    db 0x00, 0x00, 0x85, 0xd2, 0x79, 0x08, 0xf7, 0xda, 0xf7, 0xd8, 0x83, 0xda, 0x00, 0x47, 0x85, 0xdb
    db 0x79, 0x07, 0xf7, 0xdb, 0xf7, 0xd9, 0x83, 0xdb, 0x00, 0xe8, 0x0e, 0x00, 0x8b, 0xc1, 0x8b, 0xd3
    db 0xeb, 0xcf, 0xe8, 0x05, 0x00, 0x8b, 0xc1, 0x8b, 0xd3, 0xc3, 0x85, 0xdb, 0x75, 0x1e, 0x3b, 0xca
    db 0x77, 0x13, 0x50, 0x8b, 0xc2, 0x2b, 0xd2, 0xf7, 0xf1, 0x8b, 0xd8, 0x58, 0xf7, 0xf1, 0x8b, 0xca
    db 0x8b, 0xd3, 0x2b, 0xdb, 0xc3, 0xf7, 0xf1, 0x8b, 0xca, 0x8b, 0xd3, 0xc3, 0x57, 0x56, 0x8b, 0xf1
    db 0x8b, 0xfb, 0x52, 0x50, 0x84, 0xff, 0x74, 0x0e, 0x8a, 0xcd, 0x8a, 0xeb, 0x8a, 0xdf, 0x8a, 0xc4
    db 0x8a, 0xe2, 0x8a, 0xd6, 0x2a, 0xf6, 0xd1, 0xea, 0xd1, 0xd8, 0xd0, 0xeb, 0xd1, 0xd9, 0x84, 0xdb
    db 0x75, 0xf4, 0xf7, 0xf1, 0x8b, 0xc8, 0xf7, 0xe6, 0x8b, 0xda, 0x50, 0x8b, 0xc1, 0xf7, 0xe7, 0x03
    db 0xd8, 0x73, 0x27, 0x49, 0x58, 0x8b, 0xc1, 0xf7, 0xe7, 0x8b, 0xd8, 0x8b, 0xc1, 0xf7, 0xe6, 0x03
    db 0xda, 0x8e, 0xc1, 0x8b, 0xc8, 0x58, 0x5a, 0x2b, 0xc8, 0x1b, 0xda, 0xf7, 0xd1, 0xf7, 0xd3, 0x83
    db 0xc1, 0x01, 0x83, 0xd3, 0x00, 0x8c, 0xc0, 0xe9, 0x12, 0x00, 0x8b, 0xd3, 0x8b, 0xc1, 0x5b, 0x59
    db 0x2b, 0xcb, 0x5b, 0x1b, 0xda, 0x73, 0x05, 0x03, 0xce, 0x13, 0xdf, 0x48, 0x2b, 0xd2, 0x5e, 0x5f
    db 0xc3

string_loc_3508:
    push bp
    mov bp, sp
    cld
    push si
    push di
    mov si, word [bp + 0x4]
    mov di, ds
    mov es, di
    mov di, word [bp + 0x6]
@..string_loc_3508.l1:
    lodsw
    scasw
    jne short @..local.l180
    test al, al
    je short @..string_loc_3508.l2
    test ah, ah
    jne short @..string_loc_3508.l1
    jmp short @..string_loc_3508.l2

    db 0x55, 0x8b, 0xec, 0x8b, 0x4e, 0x08, 0x8b, 0xd1, 0xd1, 0xe9, 0xfc, 0x56, 0x57, 0x8b, 0x76, 0x04
    db 0x8c, 0xdf, 0x8e, 0xc7, 0x8b, 0x7e, 0x06, 0xe3, 0x0e, 0xad, 0xaf, 0x75, 0x18, 0x84, 0xc0, 0x74
    db 0x0e, 0x84, 0xe4, 0xe0, 0xf4, 0x74, 0x08, 0xf6, 0xc2, 0x01, 0x74, 0x03, 0xa6, 0x75, 0x13

@..string_loc_3508.l2:
    sub ax, ax
@..string_loc_3508.l3:
    pop di
    pop si
    pop bp
    ret
@..local.l180:
    sub di, byte 2
    scasb
    jne short @..local.l181
    test al, al
    je short @..string_loc_3508.l2
    mov al, ah
    scasb
@..local.l181:
    sbb ax, ax
    js short @..string_loc_3508.l3
    inc ax
    jmp short @..string_loc_3508.l3
strlen_3:
    push bp
    mov bp, sp
    cld
    push di
    mov di, ds
    mov es, di
    mov di, word [bp + 0x4]
    mov bx, di
    sub ax, ax
    mov cx, 0x7fff
    repne scasb
    mov ax, di
    sub ax, bx
    dec ax
    pop di
    pop bp
    ret
dos_mem_loc_358c:
    push bp
    mov bp, sp
    mov ax, word [bp + 0x4]
    test ah, ah
    jne short @..dos_mem_loc_358c.l1
    xchg al, ah
@..dos_mem_loc_358c.l1:
    cmp ah, 0xa
    jb short @..local.l182
    push si
    push es
    cmp ah, 0x47
    jne short @..dos_mem_loc_358c.l2
    mov dx, word [bp + 0x8]
    mov si, word [bp + 0x6]
    jmp short @..dos_mem_loc_358c.l3
@..dos_mem_loc_358c.l2:
    mov cx, word [bp + 0x8]
    mov dx, word [bp + 0x6]
@..dos_mem_loc_358c.l3:
    int 0x21 ; DOS function dispatcher
    mov dx, es
    pop es
    jae short @..dos_mem_loc_358c.l4
    mov word [data_24d6], ax
    mov ax, 0xffff
    mov dx, ax
@..dos_mem_loc_358c.l4:
    pop si
    pop bp
    ret
@..local.l182:
    mov dx, word [bp + 0x6]
    int 0x21 ; DOS function dispatcher
    and ax, 0xff
    pop bp
    ret
    times 4 db 0
dos_mem_loc_35d2:
    mov bp, 0x38e
    test bp, bp
    jne short @..dos_mem_loc_35d2.l1
    mov bp, ds
@..dos_mem_loc_35d2.l1:
    mov word [cs:data_33d0], ds
    mov bx, word [data_0002]
    sub bx, bp
    cmp bx, strict word 0x1000
    jbe short @..dos_mem_loc_35d2.l2
    lea bx, word [bp + 0x1000]
    mov ax, es
    sub bx, ax
    mov ah, 0x4a
    int 0x21 ; DOS resize memory block
    mov bx, 0x1000
@..dos_mem_loc_35d2.l2:
    mov es, bp
    mov word [es:data_24e4], ds
    mov cl, data_0004
    shl bx, cl
    db 0x26, 0x83, 0x3e, 0x18, 0x25, 0x00 ; cmp word [es:data_2518], 0
    je short @..dos_mem_loc_35d2.l4
    mov ax, word [es:data_2514]
    shl ax, 1
    mov bx, word [es:data_2512]
    shl bx, cl
    cmp bx, ax
    ja short @..dos_mem_loc_35d2.l3
    mov bx, ax
@..dos_mem_loc_35d2.l3:
    add bx, strict word 0x2afe
@..dos_mem_loc_35d2.l4:
    cli
    mov ss, bp
    mov sp, bx
    sti
    test bx, bx
    jne short @..dos_mem_loc_35d2.l5
    mov bx, 0xffff
@..dos_mem_loc_35d2.l5:
    mov word [es:data_24e0], bx
    db 0x26, 0x83, 0x3e, 0x18, 0x25, 0x00 ; cmp word [es:data_2518], 0
    je short @..dos_mem_loc_35d2.l7
    mov si, word [es:data_2516]
    mov ax, bx
    inc ax
    mov word [es:data_24d4], ax
    shl si, cl
    add bx, si
    jae short @..dos_mem_loc_35d2.l6
    mov bx, 0xffff
@..dos_mem_loc_35d2.l6:
    mov word [es:data_24e0], bx
    add bx, byte 0x0f
    shr bx, cl
    mov ax, es
    add bx, ax
    mov ax, ds
    sub bx, ax
    mov bp, es
    mov es, ax
    mov ah, 0x4a
    int 0x21 ; DOS resize memory block
    jae short @..dos_mem_loc_35d2.l7
    mov al, 0xfe
    jmp near @..dos_mem_loc_35d2.l17
@..dos_mem_loc_35d2.l7:
    mov es, bp
    cld
    mov di, data_2534
    mov cx, 0x2afe
    sub cx, di
    inc cx
    shr cx, 1
    jcxz @..dos_mem_loc_35d2.l8
    sub ax, ax
    rep stosw
@..dos_mem_loc_35d2.l8:
    mov es, word [data_002c]
    sub di, di
    mov cx, 0x7fff
@..dos_mem_loc_35d2.l9:
    mov ah, byte [es:di]
    cmp ah, 0x3d
    je short @..dos_mem_loc_35d2.l11
    test ah, ah
    je short @..dos_mem_loc_35d2.l10
    repne scasb
    je short @..dos_mem_loc_35d2.l9
@..dos_mem_loc_35d2.l10:
    mov cl, byte [data_0080]
    sub ch, ch
    mov si, 0x81
    mov ax, 1
    jmp short @..dos_mem_loc_35d2.l12
@..dos_mem_loc_35d2.l11:
    sub ax, ax
    stosb
    mov si, di
    mov di, es
    mov ds, di
@..dos_mem_loc_35d2.l12:
    push ax
    mov es, bp
    mov di, word [es:data_24d4]
    push di
    jcxz @..dos_mem_loc_35d2.l14
@..dos_mem_loc_35d2.l13:
    lodsb
    test al, al
    je short @..dos_mem_loc_35d2.l14
    stosb
    loop @..dos_mem_loc_35d2.l13
@..dos_mem_loc_35d2.l14:
    sub al, al
    stosb
    mov ds, bp
    inc di
    and di, strict word 0xfffe
    mov word [data_24d4], di
    mov word [data_24dc], di
    mov word [data_24de], 0x2afe
    cmp word [data_2518], byte 0
    jne short @..dos_mem_loc_35d2.l15
    mov word [data_24de], di
@..dos_mem_loc_35d2.l15:
    mov ax, word [data_24de]
    add ax, word [data_2514]
    mov word [data_24de], ax
    mov word [data_24d8], ds
    mov word [data_24da], cs
    call dos_file_loc_381d
    jb short @..dos_mem_loc_35d2.l16
    call loc_373f
    jmp short @..dos_mem_loc_35d2.l17
@..dos_mem_loc_35d2.l16:
    mov ah, 9
    mov dx, 0x24e6
    int 0x21 ; DOS string output
    mov al, 0xfd
    jmp short @..dos_mem_loc_35d2.l17
dos_proc_loc_3716:
    pop ax
    pop ax
@..dos_mem_loc_35d2.l17:
    mov ah, 0x4c
    int 0x21 ; DOS exit with return code

    db 0x2e, 0xff, 0x2e, 0xce, 0x33
    times 4 db 0
    db 0x2e, 0x8f, 0x06, 0x21, 0x35, 0x2e, 0x8f, 0x06, 0x23, 0x35, 0x1f, 0xe8, 0x05, 0x00, 0x2e, 0xff
    db '.!5WV'
    db 0xcb, 0xb8, 0x00, 0x00, 0xc3

loc_373f:
    push bp
    mov bp, sp
    push di
    push si
    mov si, word [bp + 0x4]
    mov ax, 0
    push ax
    call dos_ioctl
    pop cx
    mov byte [data_251a], al
    mov ax, 1
    push ax
    call dos_ioctl
    pop cx
    mov byte [data_251b], al
    mov ax, data_0002
    push ax
    call dos_ioctl
    pop cx
    mov byte [data_251c], al
    mov ax, word [bp + 0x6]
    shl ax, 1
    inc ax
    inc ax
    push ax
    call loc_3a05
    pop cx
    mov word [data_253c], ax
    mov ax, 0x2502
    mov bx, word [data_253c]
    mov word [bx], 0x2502
    mov ax, word [bp + 0x6]
    mov word [data_253a], ax
    shl ax, 1
    mov di, word [data_253c]
    add di, ax
@..local.l183:
    cmp byte [si], 0x20
    je short @..local.l184
    cmp byte [si], 9
    jne short @..local.l185
@..local.l184:
    inc si
    jmp short @..local.l183
@..local.l185:
    cmp byte [si], 0
    je short @..local.l190
    mov word [di], si
    inc di
    inc di
    inc word [data_253a]
    mov ax, data_0002
    push ax
    call loc_3a05
    pop cx
    cmp ax, strict word 0xffff
    jne short @..local.l186
    mov ax, 0xe
    push ax
    mov ax, 0x2503
    push ax
    mov ax, data_0002
    push ax
    call dos_file_loc_383a
    add sp, byte 6
    mov ax, 0xc8
    push ax
    call dos_proc_loc_3716
    pop cx
@..local.l186:
    inc si
    cmp byte [si], 0
    je short @..local.l189
    mov al, byte [si]
    cmp al, 0x20
    je short @..local.l187
    cmp al, 9
    jne short @..local.l188
@..local.l187:
    mov byte [si], 0
    inc si
    jmp short @..local.l189
@..local.l188:
    jmp short @..local.l186
@..local.l189:
    jmp short @..local.l183
@..local.l190:
    mov word [di], 0
    push word [data_253c]
    push word [data_253a]
    call math_loc_12b5
    add sp, byte 4
    mov ax, 0
    push ax
    call dos_file_loc_380b
    pop cx
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
dos_file_loc_380b:
    push bp
    mov bp, sp
    call [data_2500]
    push word [bp + 0x4]
    call dos_proc_loc_3716
    pop cx
    mov sp, bp
    pop bp
    ret
dos_file_loc_381d:
    clc
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    mov ah, 0x3f
    mov bx, word [bp + 0x4]
    jmp short @..dos_file_loc_3833.l3
    push bp
    db 0x8b, 0xec ; mov bp, sp
    mov ah, 0x40
    mov bx, word [bp + 0x4]
    jmp short @..dos_file_loc_3833.l3
dos_file_loc_3833:
    push bp
    mov bp, sp
    mov ah, 0x3f
    jmp short @..dos_file_loc_3833.l1
dos_file_loc_383a:
    push bp
    mov bp, sp
    mov ah, 0x40
@..dos_file_loc_3833.l1:
    mov bx, word [bp + 0x4]
    cmp byte [bx + 0x251a], 0
    je short @..dos_file_loc_3833.l3
    pop bp
    cmp ah, 0x3f
    je short @..dos_file_loc_3833.l2
    jmp [data_2530]
@..dos_file_loc_3833.l2:
    jmp [bios_video_loc_252e]
@..dos_file_loc_3833.l3:
    mov dx, word [bp + 0x6]
    mov cx, word [bp + 0x8]
    int 0x21 ; DOS function dispatcher
    jae short @..dos_file_loc_3833.l4
    mov word [data_24d6], ax
    mov ax, 0xffff
@..dos_file_loc_3833.l4:
    pop bp
    ret
dos_file_loc_3869:
    push bp
    mov bp, sp
    mov ah, 0x3e
    mov bx, word [bp + 0x4]
    int 0x21 ; DOS close file handle
    jae short @..local.l191
    mov word [data_24d6], ax
    mov ax, 0xffff
    pop bp
    ret
@..local.l191:
    sub ax, ax
    pop bp
    ret
dos_file_loc_3881:
    push bp
    mov bp, sp
    mov ah, 0x42
    mov al, byte [bp + 0xa]
    mov dx, word [bp + 0x6]
    mov cx, word [bp + 0x8]
    mov bx, word [bp + 0x4]
    int 0x21 ; DOS seek file (lseek)
    jae short @..dos_file_loc_3881.l1
    mov word [data_24d6], ax
    mov ax, 0xffff
    mov dx, ax
@..dos_file_loc_3881.l1:
    pop bp
    ret
dos_file_loc_38a0:
    push bp
    mov bp, sp
    mov ah, 0x41
    mov dx, word [bp + 0x4]
    int 0x21 ; DOS delete file (handle)
    jae short @..local.l192
    mov word [data_24d6], ax
    mov ax, 0xffff
    pop bp
    ret
@..local.l192:
    sub ax, ax
    pop bp
    ret

    db 0x55, 0x8b, 0xec, 0x57, 0xb4, 0x56, 0x8b, 0x56, 0x04, 0x8c, 0xdf, 0x8e, 0xc7, 0x8b, 0x7e, 0x06
    db 0xcd, 0x21, 0x5f, 0x73, 0x08, 0xa3, 0xd6, 0x24, 0xb8, 0xff, 0xff, 0x5d, 0xc3, 0x2b, 0xc0, 0x5d
    db 0xc3, 0x55, 0x8b, 0xec, 0x56, 0x8b, 0x36, 0xfc, 0x2a, 0x85, 0xf6, 0x75, 0x30, 0xb8, 0x04, 0x01
    db 0x50, 0xb8, 0x3e, 0x25, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x2c, 0xff, 0x83, 0xc4, 0x06, 0x8b, 0xf0
    db 0x85, 0xf6, 0x74, 0x0f, 0x80, 0xbc, 0x3d, 0x25, 0x0a, 0x75, 0x08, 0x4e, 0xa0, 0x32, 0x25, 0x88
    db 0x84, 0x3d, 0x25, 0xc7, 0x06, 0x42, 0x26, 0x3e, 0x25, 0x89, 0x36, 0xfc, 0x2a, 0x3b, 0x76, 0x08
    db 0x7e, 0x03, 0x8b, 0x76, 0x08, 0x85, 0xf6, 0x74, 0x0e, 0x56, 0xff, 0x76, 0x06, 0xff, 0x36, 0x42
    db 0x26, 0xe8, 0x74, 0x00, 0x83, 0xc4, 0x06, 0x01
    db '6B&)6'
    db 0xfc, 0x2a, 0x8b, 0xc6, 0x5e, 0x8b, 0xe5, 0x5d, 0xc3, 0x55, 0x8b, 0xec, 0x57, 0x56, 0x8b, 0x7e
    db 0x06, 0x8b, 0x76, 0x08, 0xeb, 0x2e, 0x8b, 0xdf, 0x47, 0x80, 0x3f, 0x0a, 0x75, 0x26, 0x8b, 0xc7
    db 0x2b, 0x46, 0x06, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0xc7, 0xfe, 0x83, 0xc4, 0x06
    db 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x33, 0x25, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xb6, 0xfe, 0x83, 0xc4
    db 0x06, 0x89, 0x7e, 0x06, 0x8b, 0xc6, 0x4e, 0x85, 0xc0, 0x75, 0xcb, 0x3b, 0x7e, 0x06, 0x74, 0x12
    db 0x8b, 0xc7, 0x2b, 0x46, 0x06, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x95, 0xfe, 0x83
    db 0xc4, 0x06, 0x8b, 0x46, 0x08, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d, 0xc3, 0x55, 0x8b, 0xec, 0x9c, 0xfc
    db 0x56, 0x57, 0x8c, 0xdf, 0x8e, 0xc7, 0x8b, 0x76, 0x04, 0x8b, 0x7e, 0x06, 0x8b, 0x4e, 0x08, 0x8c
    db 0xc0, 0x8c, 0xda, 0x3b, 0xc2, 0x75, 0x17, 0x3b, 0xfe, 0x74, 0x1f, 0x72, 0x11, 0xfd, 0x03, 0xf9
    db 0x03, 0xf1, 0x4f, 0x4e, 0xf6, 0xc1, 0x01, 0x74, 0x01, 0xa4, 0x4f, 0x4e, 0xeb, 0x06, 0xf6, 0xc1
    db 0x01, 0x74, 0x01, 0xa4, 0xd1, 0xe9, 0x74, 0x02, 0xf3, 0xa5, 0xfc, 0x5f, 0x5e, 0x9d, 0x5d, 0xc3

dos_ioctl:
    push bp
    mov bp, sp
    mov bx, word [bp + 0x4]
    mov ax, 0x4400
    int 0x21 ; DOS function dispatcher
    jb short @..local.l193
    test dl, data_0080
    je short @..local.l193
    test dl, 3
    je short @..local.l193
    mov ax, 1
    pop bp
    ret
@..local.l193:
    sub ax, ax
    pop bp
    ret
loc_3a05:
    push bp
    mov bp, sp
    push di
    mov ax, word [bp + 0x4]
    mov di, word [data_24d4]
    test ax, ax
    jge short @..local.l194
    sub di, ax
    jb short @..local.l197
    jmp short @..local.l195
@..local.l194:
    add ax, di
    jb short @..local.l197
@..local.l195:
    push ax
    call dos_mem_loc_3a39
    pop cx
    test ax, ax
    jne short @..local.l196
    mov ax, di
@..local.l196:
    pop di
    test ax, ax
    pop bp
    ret
@..local.l197:
    mov word [data_24d6], 0xfff8
    mov ax, 0xffff
    jmp short @..local.l196
dos_mem_loc_3a39:
    push bp
    mov bp, sp
    mov ax, word [bp + 0x4]
    inc ax
    and al, 0xfe
    cmp ax, word [data_24dc]
    jb short @..local.l200
    cmp word [data_2518], byte 0
    jne short @..local.l198
    mov bx, sp
    sub bx, word [data_2514]
    cmp ax, bx
    jae short @..local.l200
    mov word [data_24d4], ax
    add ax, word [data_2514]
    mov word [data_24de], ax
@..dos_mem_loc_3a39.l1:
    sub ax, ax
    pop bp
    ret
@..local.l198:
    cmp ax, word [data_24e0]
    ja short @..local.l199
    cmp ax, word [data_24d4]
    jb short @..local.l199
    mov word [data_24d4], ax
    jmp short @..dos_mem_loc_3a39.l1
@..local.l199:
    push ax
    mov bx, ax
    mov cx, data_0004
    shr bx, cl
    and bx, strict word 0xfff
    add bx, byte 0x41
    and bx, strict word 0xffc0
    push bx
    push es
    mov cx, ds
    add bx, cx
    mov es, word [data_24e4]
    sub bx, word [data_24e4]
    mov ah, 0x4a
    int 0x21 ; DOS resize memory block
    pop es
    pop bx
    pop ax
    jb short @..local.l200
    mov word [data_24d4], ax
    test bx, 0xe000
    jne short @..local.l200
    mov cx, data_0004
    shl bx, cl
    mov word [data_24e0], bx
    sub ax, ax
    pop bp
    ret
@..local.l200:
    mov word [data_24d6], 0xfff8
    mov ax, 0xffff
    test ax, ax
    pop bp
    ret

    db 0x55, 0x8b, 0xec, 0x8b, 0xc4, 0x2b, 0x46, 0x04, 0xa3, 0x14, 0x25, 0x5d, 0xc3
    times 16 db 0
    db 0x0e, 0x00, 0x25, 0x00, 0x3c, 0x00, 0x53, 0x00, 0x6a, 0x00, 0x81, 0x00
    db '0-NO GRAPHICS BOARD   ', 0
    db '1-VGA/MCGA (256 Color)', 0
    db '2-EGA      (16 Color) ', 0
    db '3-CGA      (4 Color)  ', 0
    db '4-HERCULES B/W Mono   ', 0
    db '5-TANDY    (16 Color) ', 0
    db 0x9c, 0x00, 0xa0, 0x00, 0x4f, 0x4e, 0x20, 0x00, 0x4f, 0x46, 0x46, 0x00, 0xb4, 0x00, 0xc8, 0x00
    db 0xdc, 0x00, 0xf0, 0x00, 0x04, 0x01, 0x18, 0x01, 0x2c, 0x01, 0x40, 0x01
    db 'PC INTERNAL SPEAKER', 0
    db 'AD LIB BOARD       ', 0
    db 'COVOX SOUNDMASTER  ', 0
    db 'COVOX VOICEMASTER  ', 0
    db 'SOUND BLASTER      ', 0
    db 'ROLAND LAPC-1/MT-32', 0
    db 'COVOX SMII         ', 0
    db 'NONE               ', 0
    db 0x58, 0x01, 0x5c, 0x01, 0x4e, 0x4f, 0x20, 0x00, 0x59, 0x45, 0x53, 0x00, 0x6a, 0x01, 0x81, 0x01
    db 0x98, 0x01, 0xaf, 0x01, 0xc6, 0x01
    db 'Floppy 5.25L (360k)   ', 0
    db 'Floppy 5.25H (1.2Meg) ', 0
    db 'Floppy 3.5L  (720k)   ', 0
    db 'Floppy 3.5H  (1.44Meg)', 0
    db 'Hard (Fixed) Drive    ', 0
    times 4 db 0
    db 0x01, 0x00, 0x03, 0x00, 0x03, 0x00, 0x04, 0x00, 0x06, 0x00, 0x06, 0x00, 0x07, 0x00, 0x09, 0x00
    db 0x0a, 0x00, 0x0b, 0x00, 0x0c, 0x00, 0x0c, 0x00, 0x0e, 0x00, 0x0e, 0x00, 0x0f, 0x00, 0x01, 0x00
    db 0x02, 0x00, 0x02, 0x00, 0x04, 0x00, 0x05, 0x00, 0x05, 0x00, 0x07, 0x00, 0x08, 0x00, 0x08, 0x00
    db 0x09, 0x00, 0x0a, 0x00, 0x0b, 0x00, 0x0d, 0x00, 0x0d, 0x00, 0x0f, 0x00, 0x10, 0x00, 0x10, 0x00
    db 0x00, 0x00, 0x01, 0x00, 0x02
    times 7 db 0
    db 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x06, 0x00, 0x09, 0x00, 0x0a, 0x00, 0x0b, 0x00, 0x0b, 0x00
    db 0x0c, 0x00, 0x0c, 0x00, 0x0c, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x06, 0x00, 0x06, 0x00
    db 0x06, 0x00, 0x09, 0x00, 0x09, 0x00, 0x09, 0x00, 0x0a, 0x00, 0x0b, 0x00, 0x0c, 0x00, 0x0e, 0x00
    db 0x0e, 0x00, 0x0e, 0x00, 0x0f, 0x00, 0x10
    times 5 db 0
    db 0x01, 0x00, 0x01, 0x00, 0x02, 0x00, 0x02, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x04, 0x00
    db 0x04, 0x00, 0x04
    times 9 db 0
    db 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x02, 0x00
    db 0x01, 0x00, 0x03, 0x00, 0x05, 0x00, 0x07, 0x00, 0x0a, 0x00, 0x01, 0x00, 0x05, 0x00, 0x0b
    times 5 db 0
    db 0x01, 0x00, 0xc1, 0x08, 0xce, 0x08, 0xd0, 0x08, 0xd2, 0x08, 0x01, 0x00, 0xd4, 0x08, 0xde, 0x08
    db 0xe0, 0x08, 0xe2, 0x08, 0x01, 0x00, 0xe4, 0x08, 0xee, 0x08, 0xf0, 0x08, 0xf2, 0x08, 0x01, 0x00
    db 0xf4, 0x08, 0xfe, 0x08, 0x00, 0x09, 0x02, 0x09, 0x01, 0x00, 0x04, 0x09, 0x0e, 0x09, 0x10, 0x09
    db 0x12, 0x09, 0x01, 0x00, 0x14, 0x09, 0x1e, 0x09, 0x21, 0x09, 0x23, 0x09, 0x01, 0x00, 0x25, 0x09
    db 0x2f, 0x09, 0x31, 0x09, 0x3a, 0x09, 0x01, 0x00, 0x3d, 0x09, 0x47, 0x09, 0x49, 0x09, 0x52, 0x09
    db 0x01, 0x00, 0x55, 0x09, 0x5f, 0x09, 0x61, 0x09, 0x6a, 0x09, 0x01, 0x00, 0x6d, 0x09, 0x77, 0x09
    db 0x79, 0x09, 0x82, 0x09, 0x01, 0x00, 0x85, 0x09, 0x8f, 0x09, 0x91, 0x09, 0x9a, 0x09, 0x01, 0x00
    db 0x9d, 0x09, 0xa7, 0x09, 0xa9, 0x09, 0xb2, 0x09, 0x01, 0x00, 0xb5, 0x09, 0xbf, 0x09, 0xc1, 0x09
    db 0xca, 0x09, 0x02, 0x00, 0xcd, 0x09, 0xda, 0x09, 0xdc, 0x09, 0xde, 0x09, 0x02, 0x00, 0xe0, 0x09
    db 0xe8, 0x09, 0xea, 0x09, 0xec, 0x09, 0x02, 0x00, 0xee, 0x09, 0xf9, 0x09, 0xfb, 0x09, 0xfd, 0x09
    db 0x02, 0x00, 0xff, 0x09, 0x08, 0x0a, 0x0a, 0x0a, 0x0c, 0x0a, 0x02, 0x00, 0x0e, 0x0a, 0x19, 0x0a
    db 0x1b, 0x0a, 0x1d, 0x0a, 0x02, 0x00, 0x1f, 0x0a, 0x27, 0x0a, 0x2a, 0x0a, 0x2c, 0x0a, 0x02, 0x00
    db 0x2e, 0x0a, 0x3a, 0x0a, 0x3c, 0x0a, 0x3e, 0x0a, 0x02, 0x00, 0x40, 0x0a, 0x4c, 0x0a, 0x4e, 0x0a
    db 0x50, 0x0a, 0x03, 0x00, 0x52, 0x0a, 0x5a, 0x0a, 0x5c, 0x0a, 0x5e, 0x0a, 0x03, 0x00, 0x60, 0x0a
    db 0x6b, 0x0a, 0x6d, 0x0a, 0x6f, 0x0a, 0x03, 0x00, 0x71, 0x0a, 0x7c, 0x0a, 0x7e, 0x0a, 0x80, 0x0a
    db 0x03, 0x00, 0x82, 0x0a, 0x8d, 0x0a, 0x8f, 0x0a, 0x91, 0x0a, 0x03, 0x00, 0x93, 0x0a, 0x9e, 0x0a
    db 0xa0, 0x0a, 0xa2, 0x0a, 0x03, 0x00, 0xa4, 0x0a, 0xaf, 0x0a, 0xb1, 0x0a, 0xb3, 0x0a, 0x03, 0x00
    db 0xb5, 0x0a, 0xc0, 0x0a, 0xc2, 0x0a, 0xc4, 0x0a, 0x03, 0x00, 0xc6, 0x0a, 0xd1, 0x0a, 0xd3, 0x0a
    db 0xd5, 0x0a, 0x03, 0x00, 0xd7, 0x0a, 0xe2, 0x0a, 0xe4, 0x0a, 0xe6, 0x0a, 0x03, 0x00, 0xe8, 0x0a
    db 0xf5, 0x0a, 0xf7, 0x0a, 0xf9, 0x0a, 0x03, 0x00, 0xfb, 0x0a, 0x08, 0x0b, 0x0a, 0x0b, 0x0c, 0x0b
    db 0x03, 0x00, 0x0e, 0x0b, 0x1b, 0x0b, 0x1d, 0x0b, 0x1f, 0x0b, 0x03, 0x00, 0x21, 0x0b, 0x2e, 0x0b
    db 0x30, 0x0b, 0x32, 0x0b, 0x04, 0x00, 0x34, 0x0b, 0x3e, 0x0b, 0x47, 0x0b, 0x50, 0x0b, 0x04, 0x00
    db 0x53, 0x0b, 0x5d, 0x0b, 0x5f, 0x0b, 0x61, 0x0b, 0x04, 0x00, 0x63, 0x0b, 0x6d, 0x0b, 0x6f, 0x0b
    db 0x71, 0x0b, 0x04, 0x00, 0x73, 0x0b, 0x7d

leaf_loc_3f00:
    or di, word [bx + 0xb]
    or word [bp + di], data_0004
    or word [bp + di], byte 0x8d
    or cx, word [bx - 0x6ef5]
    or ax, word [si]
    add byte [bp + di - 0x62f5], dl
    or bx, word [bx - 0x5ef5]
    or ax, word [si]
    add byte [bp + di - 0x52f5], ah
    or bp, word [bx - 0x4ef5]
    or ax, word [si]
    add byte [bp + di - 0x42f5], dh
    or di, word [bx - 0x3ef5]
    or ax, word [si]
    add bl, al
    or cx, bp
    or cx, di
    or dx, cx
    or ax, word [si]
    add bl, dl
    or bx, bp
    or sp, cx
    or sp, bp
    or ax, word [si]
    add bh, ah
    or si, cx
    or si, bx
    or si, bp
    or ax, word [si]
    add bh, dh
    or ax, word [bx + di]
    or al, 3
    or al, data_0005
    or al, data_0004
    add byte [bx], al
    or al, 0x11
    or al, 0x15
    or al, 0x19
    or al, data_0004
    add byte [bp + di], bl
    or al, 0x25
    or al, 0x28
    or al, 0x2b
    or al, data_0004
    add byte [data_380c], ch
    or al, 0x3c
    or al, 0x40
    or al, data_0004
    add byte [bp + si + 0xc], al
    dec sp
    or al, 0x4e
    or al, 0x50
    or al, data_0004
    add byte [bp + si + 0xc], dl
    pop sp
    or al, 0x5f
    or al, 0x62
    or al, data_0004
    add byte [si + 0xc], ah
    outsb
    or al, 0x72
    or al, 0x76
    or al, data_0004
    add byte [bx + di + 0xc], bh
    or word [si], byte 0x87
    or al, 0x8b
    or al, data_0004
    add byte [bp - 0x67f4], cl
    or al, 0x9e
    or al, 0xa4
    or al, data_0004
    add byte [bx - 0x4ef4], ah
    or al, 0xb4
    or al, 0xb7
    or al, data_0004
    add byte [bx + di - 0x3cf4], bh
    or al, 0xc6
    or al, 0xc9
    or al, data_0004
    add ah, cl
    or al, 0xd6
    or al, 0xd9
    or al, 0xdc
    or al, data_0004
    add dh, bl
    or al, 0xe8
    or al, 0xeb
    or al, 0xee
    or al, data_0004
    add al, dh
    or al, 0xfa
    or al, 0xfd
    or al, 0
    or ax, strict word 4
    add cl, byte [di]
    or al, 0xd
    adc byte [di], cl
    adc al, 0xd
    add al, 0
    pop ss
    or ax, 0xd21
    daa
    or ax, 0xd2d
    add al, 0
    xor byte [di], cl
    cmp cl, byte [di]
    cmp al, 0xd
    ds or ax, data_0004
    inc ax
    or ax, 0xd4a
    dec bp
    or ax, 0xd50
    add ax, 0x5300
    or ax, 0xd5b
    pop bp
    or ax, 0xd5f
    add ax, 0x6100
    or ax, math_loc_0d6a
    insb
    or ax, 0xd6e
    add ax, 0x7000
    or ax, 0xd7b
    jge short @..leaf_loc_3f00.l1
    jg short @..leaf_loc_3f00.l2
    add ax, 0x8100
    or ax, 0xd8c
    mov cs, word [di]
    nop
    db 0x0d, 0x05
@..leaf_loc_3f00.l1:
    db 0x00
    xchg dx, ax
@..leaf_loc_3f00.l2:
    or ax, 0xd9d
    lahf
    or ax, 0xda1
    add ax, 0xa300
    or ax, 0xdae
    mov al, 0xd
    mov dl, 0xd
    add ax, 0xb400
    or ax, 0xdbf
    ror word [di], 0xc3
    or ax, strict word 5
    lds cx, word [di]
    ror byte [di], 1
    ror byte [di], cl
    aam 0xd
    add ax, 0xd600
    or ax, 0xde1
    jcxz @..local.l201
    in ax, 0xd
    add ax, 0xe700
    or ax, 0xdf2
    hlt
    db 0x0d, 0xf6, 0x0d, 0x05
@..local.l201:
    add al, bh
    or ax, 0xe05
    pop es
    push cs
    or word [data_0005], cx
    or cx, word [data_0e18]
    sbb cl, byte [data_0e1c]
    add ax, 0x1e00
    push cs
    sub cx, word [data_0e2d]
    das
    push cs
    add ax, 0x3100
    push cs
    ds push cs
    inc ax
    push cs
    inc dx
    push cs
    push es
    add byte [si + 0xe], al
    dec si
    push cs
    push cx
    push cs
    push sp
    push cs
    push es
    add byte [bx + 0xe], dl
    popaw
    push cs
    db 0x65, 0x0e ; push cs
    imul cx, word [data_0006], 0xe6c
    jbe short @..local.l202
    jp short @..local.l203
    jle short @..local.l204
    push es
    add byte [bx + di - 0x74f2], al
    push cs
    lea cx, word [data_0e8f]
@..local.l202:
    push es
    db 0x00
@..local.l203:
    db 0x91, 0x0e
@..local.l204:
    db 0x9b
    push cs
    lahf
    push cs
    mov word [data_060e], ax
    add byte [bp - 0x4ff2], ah
    push cs
    mov dl, 0xe
    mov ah, 0xe
    push es
    add byte [bp - 0x3ff2], dh
    push cs
    les cx, word [data_0ec8]
    push es
    add dl, cl
    push cs
    aam 0xe
    salc
    push cs
    fmul dword [data_0006]
    fimul dword [data_0ee4]
    out 0xe, ax
    jmp far 0xec00:data_060e

    db 0x0e, 0xf6, 0x0e, 0xf8, 0x0e, 0xfa, 0x0e, 0x06, 0x00, 0xfc, 0x0e, 0x06, 0x0f, 0x08, 0x0f, 0x0a
    db 0x0f, 0x06, 0x00, 0x0c, 0x0f, 0x16, 0x0f, 0x18, 0x0f, 0x1a, 0x0f, 0x06, 0x00, 0x1c, 0x0f, 0x26
    db 0x0f, 0x2a, 0x0f, 0x2e, 0x0f, 0x06, 0x00, 0x30, 0x0f, 0x3a, 0x0f, 0x3d, 0x0f, 0x40, 0x0f, 0x06
    db 0x00, 0x42, 0x0f, 0x4c, 0x0f, 0x50, 0x0f, 0x54, 0x0f, 0x06, 0x00, 0x56, 0x0f, 0x60, 0x0f, 0x64
    db 0x0f, 0x68, 0x0f, 0x06, 0x00, 0x6a, 0x0f, 0x74, 0x0f, 0x77, 0x0f, 0x7a, 0x0f, 0x06, 0x00, 0x7c
    db 0x0f, 0x86, 0x0f, 0x8a, 0x0f, 0x8e, 0x0f, 0x06, 0x00, 0x90, 0x0f, 0x9a, 0x0f, 0x9c, 0x0f, 0x9e
    db 0x0f, 0x06, 0x00, 0xa0, 0x0f, 0xaa, 0x0f, 0xae, 0x0f, 0xb2, 0x0f, 0x06, 0x00, 0xb4, 0x0f, 0xbe
    db 0x0f, 0xc2, 0x0f, 0xc6, 0x0f, 0x06, 0x00, 0xc8, 0x0f, 0xd2, 0x0f, 0xd6, 0x0f, 0xda, 0x0f, 0x07
    db 0x00, 0xdc, 0x0f, 0xe6, 0x0f, 0xe8, 0x0f, 0xea, 0x0f, 0x07, 0x00, 0xec, 0x0f, 0xf7, 0x0f, 0xf9
    db 0x0f, 0xfb, 0x0f, 0x07, 0x00, 0xfd, 0x0f, 0x08, 0x10, 0x0a, 0x10, 0x0c, 0x10, 0x07, 0x00, 0x0e
    db 0x10, 0x19, 0x10, 0x1b, 0x10, 0x1d, 0x10, 0x07, 0x00, 0x1f, 0x10, 0x2a, 0x10, 0x2c, 0x10, 0x2e
    db 0x10, 0x07, 0x00, 0x30, 0x10, 0x3b, 0x10, 0x3d, 0x10, 0x3f, 0x10, 0x07, 0x00, 0x41, 0x10, 0x4c
    db 0x10, 0x4e, 0x10, 0x50, 0x10, 0x07, 0x00, 0x52, 0x10, 0x5d, 0x10, 0x5f, 0x10, 0x61, 0x10, 0x07
    db 0x00, 0x63, 0x10, 0x6e, 0x10, 0x70, 0x10, 0x72, 0x10, 0x07, 0x00, 0x74, 0x10, 0x81, 0x10, 0x83
    db 0x10, 0x85, 0x10, 0x07, 0x00, 0x87, 0x10, 0x94, 0x10, 0x96, 0x10, 0x98, 0x10, 0x07, 0x00, 0x9a
    db 0x10, 0xa7, 0x10, 0xa9, 0x10, 0xab, 0x10, 0x07, 0x00, 0xad, 0x10, 0xba, 0x10, 0xbc, 0x10, 0xbe
    db 0x10, 0x08, 0x00, 0xc0, 0x10, 0xcc, 0x10, 0xce, 0x10, 0xd0, 0x10, 0x08, 0x00, 0xd2, 0x10, 0xde
    db 0x10, 0xe0, 0x10, 0xe2, 0x10, 0x08, 0x00, 0xe4, 0x10, 0xf0, 0x10, 0xf2, 0x10, 0xf4, 0x10, 0x08
    db 0x00, 0xf6, 0x10, 0x02, 0x11, 0x04, 0x11, 0x06, 0x11, 0x08, 0x00, 0x08, 0x11, 0x14, 0x11, 0x16
    db 0x11, 0x18, 0x11, 0x08, 0x00, 0x1a, 0x11, 0x26, 0x11, 0x2d, 0x11, 0x34, 0x11, 0x08, 0x00, 0x38
    db 0x11, 0x44, 0x11, 0x47, 0x11, 0x4a, 0x11, 0x08, 0x00, 0x4d, 0x11, 0x59, 0x11, 0x5b, 0x11, 0x5d
    db 0x11, 0x08, 0x00, 0x5f, 0x11, 0x6b, 0x11, 0x6d, 0x11, 0x6f, 0x11, 0x08, 0x00, 0x71, 0x11, 0x7d
    db 0x11, 0x7f, 0x11, 0x81, 0x11, 0x08, 0x00, 0x83, 0x11, 0x8f, 0x11, 0x91, 0x11, 0x93, 0x11, 0x08
    db 0x00, 0x95, 0x11, 0xa1, 0x11, 0xa3, 0x11, 0xa5, 0x11, 0x08, 0x00, 0xa7, 0x11, 0xb3, 0x11, 0xb8
    db 0x11, 0xbd, 0x11, 0x08, 0x00, 0xc0, 0x11, 0xcc, 0x11, 0xd2, 0x11, 0xd8, 0x11, 0x08, 0x00, 0xdb
    db 0x11, 0xe7, 0x11, 0xed, 0x11, 0xf3, 0x11, 0x08, 0x00, 0xf6, 0x11, 0x02, 0x12, 0x06, 0x12, 0x0a
    db 0x12, 0x08, 0x00, 0x0d, 0x12, 0x19, 0x12, 0x1c, 0x12, 0x1f, 0x12, 0x08, 0x00, 0x21, 0x12, 0x2d
    db 0x12, 0x2f, 0x12, 0x31, 0x12, 0x08, 0x00, 0x33, 0x12, 0x3f, 0x12, 0x42, 0x12, 0x45, 0x12, 0x08
    db 0x00, 0x47, 0x12, 0x53, 0x12, 0x5b, 0x12, 0x63, 0x12, 0x08, 0x00, 0x66, 0x12, 0x72, 0x12, 0x79
    db 0x12, 0x80, 0x12, 0x08, 0x00, 0x83, 0x12, 0x8f, 0x12, 0x91, 0x12, 0x93, 0x12, 0x08, 0x00, 0x95
    db 0x12, 0xa1, 0x12, 0xa3, 0x12, 0xa5, 0x12, 0x08, 0x00, 0xa7, 0x12, 0xb3, 0x12, 0xb7, 0x12, 0xbb
    db 0x12, 0x08, 0x00, 0xbe, 0x12, 0xca, 0x12, 0xce, 0x12, 0xd2, 0x12, 0x08, 0x00, 0xd4, 0x12, 0xe0
    db 0x12, 0xe5, 0x12, 0xea, 0x12, 0x08, 0x00, 0xed, 0x12, 0xf9, 0x12, 0xfc, 0x12, 0xff, 0x12, 0x08
    db 0x00, 0x01, 0x13, 0x0d, 0x13, 0x0f, 0x13, 0x11, 0x13, 0x08, 0x00, 0x13, 0x13, 0x1f, 0x13, 0x23
    db 0x13, 0x27, 0x13, 0x08, 0x00, 0x2a, 0x13, 0x36, 0x13, 0x3b, 0x13, 0x40, 0x13, 0x08, 0x00, 0x43
    db 0x13, 0x4f, 0x13, 0x54, 0x13, 0x59, 0x13, 0x08, 0x00, 0x5c, 0x13, 0x68, 0x13, 0x6e, 0x13, 0x74
    db 0x13, 0x08, 0x00, 0x77, 0x13, 0x83, 0x13, 0x86, 0x13, 0x89, 0x13, 0x08, 0x00, 0x8c, 0x13, 0x98
    db 0x13, 0x9c, 0x13, 0xa0, 0x13, 0x08, 0x00, 0xa2, 0x13, 0xae, 0x13, 0xb2, 0x13, 0xb6, 0x13, 0x09
    db 0x00, 0xb8, 0x13, 0xc2, 0x13, 0xc4, 0x13, 0xc6, 0x13, 0x09, 0x00, 0xc8, 0x13, 0xd2, 0x13, 0xd6
    db 0x13, 0xda, 0x13, 0x09, 0x00, 0xdc, 0x13, 0xe6, 0x13, 0xe8, 0x13, 0xea, 0x13, 0x09, 0x00, 0xec
    db 0x13, 0xf6, 0x13, 0xf8, 0x13, 0xfa, 0x13, 0x0a, 0x00, 0xfc, 0x13, 0x06, 0x14, 0x09, 0x14, 0x0c
    db 0x14, 0x0a, 0x00, 0x0e, 0x14, 0x18, 0x14, 0x1a, 0x14, 0x1c, 0x14, 0x0a, 0x00, 0x1e, 0x14, 0x28
    db 0x14, 0x2a, 0x14, 0x2c, 0x14, 0x0a, 0x00, 0x2e, 0x14, 0x38, 0x14, 0x3b, 0x14, 0x3e, 0x14, 0xff
    db 0xff, 0x40, 0x14, 0x41, 0x14, 0x42, 0x14, 0x43, 0x14
    db 'PLAYBANE.BAT', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WROOT.EXE', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WINIT.OVR', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WBASE.OVR', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPCMK.OVR', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPCVW.OVR', 0
    db 0x41, 0x43, 0x00, 0x2a, 0x00, 0x2a, 0x00
    db 'WMAZE.OVR', 0
    db 0x43, 0x00
    db 'BCDEFGHI', 0
    db 0x42, 0x43, 0x00
    db 'WDOPT.OVR', 0
    db 0x43, 0x00
    db 'BCDEFGHI', 0
    db 0x42, 0x43, 0x00
    db 'WTREA.OVR', 0
    db 0x43, 0x00
    db 'BCDEFGHI', 0
    db 0x42, 0x43, 0x00
    db 'WMELE.OVR', 0
    db 0x43, 0x00
    db 'BCDEFGHI', 0
    db 0x42, 0x43, 0x00
    db 'WPOPS.OVR', 0
    db 0x43, 0x00
    db 'BCDEFGHI', 0
    db 0x42, 0x43, 0x00
    db 'WMEXE.OVR', 0
    db 0x43, 0x00
    db 'BCDEFGHI', 0
    db 0x42, 0x43, 0x00
    db 'WMNPC.OVR', 0
    db 0x43, 0x00
    db 'BCDEFGHI', 0
    db 0x42, 0x43, 0x00
    db 'SCENARIO.HDR', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MSG.HDR', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MASTER.HDR', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MISC.HDR', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'PCFILE.DBS', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MSG.DBS', 0
    db 0x41, 0x43, 0x00, 0x2a, 0x00, 0x2a, 0x00
    db 'NEWGAME.DBS', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'CREDITS.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'EGA.DRV', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT0.EGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT1.EGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT2.EGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT3.EGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT4.EGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT1.EGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT2.EGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT3.EGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'DRAGONSC.EGA', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'GRAVEYRD.EGA', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'TITLEPAG.EGA', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MAZEDATA.EGA', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON00.PIC', 0
    db 'DEFGHIJK', 0
    db 'BCDEFGHI', 0
    db 0x42, 0x43, 0x00
    db 'MON01.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON02.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON03.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON04.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON05.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON06.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON07.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON08.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON09.PIC', 0
    db 0x47, 0x49, 0x4a, 0x00, 0x45, 0x47, 0x48, 0x00, 0x43, 0x00
    db 'MON10.PIC', 0
    db 0x4a, 0x00, 0x48, 0x00, 0x43, 0x00
    db 'MON11.PIC', 0
    db 0x44, 0x00, 0x42, 0x00, 0x42, 0x00
    db 'MON12.PIC', 0
    db 0x46, 0x47, 0x4a, 0x00, 0x44, 0x45, 0x48, 0x00, 0x43, 0x00
    db 'MON13.PIC', 0
    db 0x45, 0x4a, 0x00, 0x43, 0x48, 0x00, 0x42, 0x43, 0x00
    db 'MON14.PIC', 0
    db 0x46, 0x47, 0x49, 0x00, 0x44, 0x45, 0x47, 0x00, 0x43, 0x00
    db 'MON15.PIC', 0
    db 0x45, 0x00, 0x43, 0x00, 0x42, 0x00
    db 'MON16.PIC', 0
    db 0x44, 0x45, 0x00, 0x42, 0x43, 0x00, 0x42, 0x00
    db 'MON17.PIC', 0
    db 0x44, 0x45, 0x46, 0x00, 0x42, 0x43, 0x44, 0x00, 0x42, 0x43, 0x00
    db 'MON18.PIC', 0
    db 0x44, 0x47, 0x4b, 0x00, 0x42, 0x45, 0x49, 0x00, 0x42, 0x43, 0x00
    db 'MON19.PIC', 0
    db 'DEGIK', 0
    db 'BCEGI', 0
    db 0x42, 0x43, 0x00
    db 'MON20.PIC', 0
    db 0x44, 0x45, 0x00, 0x42, 0x43, 0x00, 0x42, 0x00
    db 'MON21.PIC', 0
    db 0x44, 0x4b, 0x00, 0x42, 0x49, 0x00, 0x42, 0x43, 0x00
    db 'MON22.PIC', 0
    db 0x44, 0x45, 0x00, 0x42, 0x43, 0x00, 0x42, 0x00
    db 'MON23.PIC', 0
    db 0x44, 0x45, 0x00, 0x42, 0x43, 0x00, 0x42, 0x00
    db 'MON24.PIC', 0
    db 0x44, 0x45, 0x00, 0x42, 0x43, 0x00, 0x42, 0x00
    db 'MON25.PIC', 0
    db 0x44, 0x45, 0x47, 0x00, 0x42, 0x43, 0x45, 0x00, 0x42, 0x43, 0x00
    db 'MON26.PIC', 0
    db 'DEFIJ', 0
    db 'BCDGH', 0
    db 0x42, 0x43, 0x00
    db 'MON27.PIC', 0
    db 0x44, 0x00, 0x42, 0x00, 0x42, 0x00
    db 'MON28.PIC', 0
    db 0x45, 0x4a, 0x00, 0x43, 0x48, 0x00, 0x42, 0x43, 0x00
    db 'CGA.DRV', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'HERC.DRV', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT0.CGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT1.CGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT2.CGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT3.CGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT4.CGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT1.CGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT2.CGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT3.CGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'DRAGONSC.CGA', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'GRAVEYRD.CGA', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'TITLEPAG.CGA', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MAZEDATA.CGA', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON29.PIC', 0
    db 0x44, 0x4a, 0x00, 0x42, 0x48, 0x00, 0x42, 0x43, 0x00
    db 'MON30.PIC', 0
    db 0x45, 0x46, 0x47, 0x00, 0x43, 0x44, 0x45, 0x00, 0x42, 0x43, 0x00
    db 'MON31.PIC', 0
    db 0x44, 0x45, 0x46, 0x00, 0x42, 0x43, 0x44, 0x00, 0x42, 0x43, 0x00
    db 'MON32.PIC', 0
    db 0x45, 0x00, 0x43, 0x00, 0x42, 0x00
    db 'MON33.PIC', 0
    db 0x44, 0x46, 0x47, 0x00, 0x42, 0x44, 0x45, 0x00, 0x42, 0x43, 0x00
    db 'MON34.PIC', 0
    db 0x46, 0x00, 0x44, 0x00, 0x43, 0x00
    db 'MON35.PIC', 0
    db 0x46, 0x4a, 0x4b, 0x00, 0x44, 0x48, 0x49, 0x00, 0x43, 0x00
    db 'MON36.PIC', 0
    db 0x46, 0x00, 0x44, 0x00, 0x43, 0x00
    db 'MON37.PIC', 0
    db 0x46, 0x48, 0x00, 0x44, 0x46, 0x00, 0x43, 0x00
    db 'MON38.PIC', 0
    db 0x46, 0x00, 0x44, 0x00, 0x43, 0x00
    db 'MON39.PIC', 0
    db 0x46, 0x00, 0x44, 0x00, 0x43, 0x00
    db 'MON40.PIC', 0
    db 0x48, 0x00, 0x46, 0x00, 0x43, 0x00
    db 'MON41.PIC', 0
    db 0x47, 0x48, 0x49, 0x00, 0x45, 0x46, 0x47, 0x00, 0x43, 0x00
    db 'MON42.PIC', 0
    db 0x48, 0x49, 0x00, 0x46, 0x47, 0x00, 0x43, 0x00
    db 'MON43.PIC', 0
    db 0x47, 0x49, 0x4a, 0x00, 0x45, 0x47, 0x48, 0x00, 0x43, 0x00
    db 'MON44.PIC', 0
    db 0x47, 0x48, 0x49, 0x00, 0x45, 0x46, 0x47, 0x00, 0x43, 0x00
    db 'MON45.PIC', 0
    db 0x47, 0x4b, 0x00, 0x45, 0x49, 0x00, 0x43, 0x00
    db 'MON46.PIC', 0
    db 0x47, 0x49, 0x4b, 0x00, 0x45, 0x47, 0x49, 0x00, 0x43, 0x00
    db 'MON47.PIC', 0
    db 0x4a, 0x00, 0x48, 0x00, 0x43, 0x00
    db 'MON48.PIC', 0
    db 0x47, 0x49, 0x4a, 0x00, 0x45, 0x47, 0x48, 0x00, 0x43, 0x00
    db 'MON49.PIC', 0
    db 0x49, 0x4a, 0x4b, 0x00, 0x47, 0x48, 0x49, 0x00, 0x43, 0x00
    db 'MON50.PIC', 0
    db 0x49, 0x4a, 0x4b, 0x00, 0x47, 0x48, 0x49, 0x00, 0x43, 0x00
    db 'TANDY.DRV', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT0.T16', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT1.T16', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT2.T16', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT3.T16', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT4.T16', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT1.T16', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT2.T16', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT3.T16', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'DRAGONSC.T16', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'GRAVEYRD.T16', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'TITLEPAG.T16', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MAZEDATA.T16', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND00.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND02.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND03.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND04.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND05.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND06.SND', 0
    db 'BDGHIJ', 0
    db 'ABEFGH', 0
    db 0x41, 0x42, 0x43, 0x00
    db 'SOUND07.SND', 0
    db 0x42, 0x45, 0x00, 0x41, 0x43, 0x00, 0x41, 0x42, 0x00
    db 'SOUND08.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND10.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND11.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND12.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND13.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND14.SND', 0
    db 0x44, 0x45, 0x46, 0x48, 0x00, 0x42, 0x43, 0x44, 0x46, 0x00, 0x42, 0x43, 0x00
    db 'SOUND15.SND', 0
    db 'DFGJK', 0
    db 'BDEHI', 0
    db 0x42, 0x43, 0x00
    db 'SOUND16.SND', 0
    db 'DEFIK', 0
    db 'BCDGI', 0
    db 0x42, 0x43, 0x00
    db 'SOUND17.SND', 0
    db 0x44, 0x45, 0x4b, 0x00, 0x42, 0x43, 0x49, 0x00, 0x42, 0x43, 0x00
    db 'SOUND20.SND', 0
    db 0x48, 0x49, 0x00, 0x46, 0x47, 0x00, 0x43, 0x00
    db 'SOUND21.SND', 0
    db 0x44, 0x00, 0x42, 0x00, 0x42, 0x00
    db 'SOUND22.SND', 0
    db 0x44, 0x45, 0x00, 0x42, 0x43, 0x00, 0x42, 0x00
    db 'SOUND23.SND', 0
    db 'DEFGIJK', 0
    db 'BCDEGHI', 0
    db 0x42, 0x43, 0x00
    db 'SOUND24.SND', 0
    db 'DEFIJK', 0
    db 'BCDGHI', 0
    db 0x42, 0x43, 0x00
    db 'SOUND25.SND', 0
    db 0x44, 0x00, 0x42, 0x00, 0x42, 0x00
    db 'SOUND26.SND', 0
    db 0x46, 0x00, 0x44, 0x00, 0x43, 0x00
    db 'SOUND27.SND', 0
    db 0x44, 0x45, 0x47, 0x00, 0x42, 0x43, 0x45, 0x00, 0x42, 0x43, 0x00
    db 'SOUND28.SND', 0
    db 0x47, 0x4a, 0x4b, 0x00, 0x45, 0x48, 0x49, 0x00, 0x43, 0x00
    db 'SOUND29.SND', 0
    db 0x45, 0x46, 0x47, 0x4b, 0x00, 0x43, 0x44, 0x45, 0x49, 0x00, 0x42, 0x43, 0x00
    db 'SOUND30.SND', 0
    db 0x46, 0x48, 0x00, 0x44, 0x46, 0x00, 0x43, 0x00
    db 'SOUND31.SND', 0
    db 0x46, 0x00, 0x44, 0x00, 0x43, 0x00
    db 'SOUND32.SND', 0
    db 0x45, 0x46, 0x47, 0x00, 0x43, 0x44, 0x45, 0x00, 0x42, 0x43, 0x00
    db 'SOUND33.SND', 0
    db 0x44, 0x46, 0x47, 0x49, 0x00, 0x42, 0x44, 0x45, 0x47, 0x00, 0x42, 0x43, 0x00
    db 'SOUND34.SND', 0
    db 0x42, 0x47, 0x48, 0x49, 0x00, 0x41, 0x45, 0x46, 0x47, 0x00, 0x41, 0x43, 0x00
    db 'SOUND35.SND', 0
    db 'EGHIK', 0
    db 'CEFGI', 0
    db 0x42, 0x43, 0x00
    db 'SOUND36.SND', 0
    db 0x45, 0x4a, 0x00, 0x43, 0x48, 0x00, 0x42, 0x43, 0x00
    db 'SOUND37.SND', 0
    db 0x47, 0x49, 0x4a, 0x00, 0x45, 0x47, 0x48, 0x00, 0x43, 0x00
    db 'SOUND38.SND', 0
    db 0x48, 0x49, 0x4a, 0x00, 0x46, 0x47, 0x48, 0x00, 0x43, 0x00
    db 'MON52.PIC', 0
    db 0x49, 0x00, 0x47, 0x00, 0x43, 0x00
    db 'MON53.PIC', 0
    db 0x48, 0x49, 0x4a, 0x00, 0x46, 0x47, 0x48, 0x00, 0x43, 0x00
    db 'MON55.PIC', 0
    db 0x4b, 0x00, 0x49, 0x00, 0x43, 0x00
    db 'MON56.PIC', 0
    db 0x4b, 0x00, 0x49, 0x00, 0x43, 0x00
    db 'MON51.PIC', 0
    db 0x48, 0x49, 0x00, 0x46, 0x47, 0x00, 0x43, 0x00
    db 'MON54.PIC', 0
    db 0x4b, 0x00, 0x49, 0x00, 0x43, 0x00
    db 'MON57.PIC', 0
    db 0x4b, 0x00, 0x49, 0x00, 0x43, 0x00
    db 'MON58.PIC', 0
    db 0x47, 0x4b, 0x00, 0x45, 0x49, 0x00, 0x43
    times 5 db 0
    db 0x25, 0x63, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x20, 0x20, 0x00
    db '                                                                               ', 0
    db '                                                                               ', 0
    db 'SCENARIO.HDR', 0
    db 'SYSTEM ERROR: UNABLE TO OPEN ', 0
    db ' - Press <RETURN>', 0
    db '*ERROR* INSTALL VERSION MISMATCH - Press <RETURN>', 0
    db 0x5c, 0x00
    db 'SAVEGAME.DBS', 0
    db '                                                                               ', 0
    db 'Please Insert ', 0
    db 'DESTINATION', 0
    db '*SOURCE*', 0
    db ' Disk (', 0
    db ') Into Drive ', 0
    db ' - Press <RETURN>', 0
    db 'pkunzip.exe', 0
    db 'pkunzip.exe', 0
    db 'pkunzip.exe ', 0
    db 0x20, 0x00, 0x6e, 0x75, 0x6c, 0x00, 0x61, 0x00, 0x63, 0x6f, 0x6e, 0x00, 0x61, 0x00
    db 'ERROR: UNABLE TO UNZIP -> ', 0
    db ' - Press <RETURN>', 0
    db 0x00, 0x20, 0x00, 0x41, 0x3a, 0x00, 0x42, 0x3a, 0x00, 0x41, 0x3a, 0x00, 0x00, 0x41, 0x3a, 0x00
    db 0x00, 0x41, 0x3a, 0x00, 0x00, 0x43, 0x3a, 0x00
    db 'DSAVANT', 0
    db 'ERROR: INVALID DESTINATION DRIVE -> (', 0
    db ') - Press <RETURN>', 0
    db 'ERROR: UNABLE TO CREATE DIRECTORY -> ', 0
    db ' - Press <RETURN>', 0
    db 'ERROR: UNABLE TO LOCATE DIRECTORY -> ', 0
    db ' - Press <RETURN>', 0
    db '****************************************************', 0
    db '*                 W I Z A R D R Y                  *', 0
    db '*           CRUSADERS OF THE DARK SAVANT           *', 0
    db '*               INSTALLATION PROGRAM    Ver#       *', 0
    db '****************************************************', 0
    db 0x2e, 0x00
    db 'Crusaders of the Dark Savant Application Software Copyright (C) 1992', 0
    db 'by David W. Bradley and Sir-Tech Software, Inc.', 0
    db 'All Logos, Printed Materials and Graphic Designs Copyright (C) 1992', 0
    db 'by Sir-Tech Software, Inc.', 0
    db 'All Rights Reserved. No part of this software or printed material may', 0
    db 'be reproduced in any way, or transmitted, in any form or by any means,', 0
    db 'electronic, mechanical, photocopying, recording, or otherwise without', 0
    db 'prior permission in writing  from the publisher,  except by reviewers,', 0
    db 'who may quote brief written passages and/or screen images to be print-', 0
    db 'ed in a magazine or newspaper.', 0
    db 0x00
    db 'Press <RETURN> to begin INSTALLATION PROCEDURE', 0
    db '****************************************************', 0
    db '*                 W I Z A R D R Y                  *', 0
    db '*           CRUSADERS OF THE DARK SAVANT           *', 0
    db '*               INSTALLATION PROGRAM               *', 0
    db '****************************************************', 0
    db 0x41, 0x3a, 0x00, 0x00
    db '                       Disk Drive Type      Drive Name  Path or Drive #2    ', 0
    db '                    ----------------------  ----------  --------------------', 0
    db '     SOURCE DRIVE:', 0
    db 'DESTINATION DRIVE:', 0
    db ' MEMORY EXPANSION>  EMS:      RamDisk:        RAM Name: ', 0
    db 'GRAPHIC MODE:                                     VIDEO ADJUSTMENT', 0
    db '                                                  ================', 0
    db '  Bright: ', 0
    db 'Contrast: ', 0
    db 'MOUSE: ', 0
    db 'SOUND: ', 0
    db 'FULL INSTALL   CONFIG ONLY    ABORT INSTALL', 0
    db 'ARROW KEY TO FIELD - <RETURN> TO CHANGE', 0
    db '*ERROR* NO VIDEO CARD DETECTED - Press <RETURN>', 0
    db 'UNABLE TO COMPLETE INSTALLATION - Press <RETURN>', 0
    db 'ARROW KEY TO FIELD - <RETURN> TO CHANGE', 0
    db 'FULL INSTALL', 0
    db 'CONFIG ONLY', 0
    db 'ABORT INSTALL', 0
    db 'FULL INSTALL', 0
    db 'CONFIG ONLY', 0
    db 'ABORT INSTALL', 0
    db '01110', 0
    db 'BAD DRIVE SPECIFICATION - Press <RETURN>', 0
    db 'SOURCE PATH NOT ALLOWED - Press <RETURN>', 0
    db '00001', 0
    db '                                 ', 0
    db 'BAD DRIVE SPECIFICATION - Press <RETURN>', 0
    db 'WARNING! DRIVE CONFLICT WITH SOURCE - Press <RETURN>', 0
    db 'BAD DRIVE SPECIFICATION - Press <RETURN>', 0
    db 'BAD DRIVE SPECIFICATION - Press <RETURN>', 0
    db 'SOURCE AND DESTINATION DRIVE <MUST> DIFFER - Press <RETURN>', 0
    db 'Please specify a new SOURCE or DESTINATION Drive - Press <RETURN>', 0
    db '11 disks (5.25 @360k)', 0
    db '3 disks (5.25HD @1.2meg)', 0
    db '9 disks (3.5 @720k)', 0
    db '3 disks (3.5HD @1.44meg)', 0
    db 0x00
    db 'This Install requires ', 0
    db ' - Press <RETURN>', 0
    db 'Make sure you have NEWLY FORMATTED disks ready - Press <RETURN>', 0
    db 0x00, 0x00, 0x5c, 0x00, 0x5c, 0x00, 0x5c, 0x00, 0x5c, 0x00
    db 'CRUS01.ZIP', 0
    db 'CRUS01.ZIP', 0
    db 0x00
    db 'CRUS02.ZIP', 0
    db 0x00
    db 'CRUS04.ZIP', 0
    db 0x00
    db 'CRUS06.ZIP', 0
    db 0x00
    db 'CRUS03.ZIP', 0
    db 'CRUS03.ZIP', 0
    db 0x00
    db 'CRUS05.ZIP', 0
    db 0x00
    db 'CRUS07.ZIP', 0
    db 0x00
    db 'CRUS08.ZIP', 0
    db 0x00
    db 'CRUS07.ZIP', 0
    db 0x00
    db 'CRUS02.ZIP', 0
    db 'CRUS02.ZIP', 0
    db 0x00
    db 'CRUS04.ZIP', 0
    db 0x00
    db 'CRUS06.ZIP', 0
    db 0x00
    db 'CRUS03.ZIP', 0
    db 'CRUS03.ZIP', 0
    db 0x00
    db 'CRUS08.ZIP', 0
    db 0x00
    db 'CRUS05.ZIP', 0
    db 'CRUS05.ZIP', 0
    db 0x00
    db 'CRUS02.ZIP', 0
    db 0x00
    db 'CRUS06.ZIP', 0
    db 0x00
    db 'CRUS03.ZIP', 0
    db 'CRUS03.ZIP', 0
    db 0x00
    db 'CRUS04.ZIP', 0
    db 0x00
    db 'CRUS07.ZIP', 0
    db 0x00
    db 'CRUS08.ZIP', 0
    db 0x00
    db 'CRUS05.ZIP', 0
    db 'CRUS05.ZIP', 0
    db 0x00
    db 'SCENARIO.HDR', 0
    db 'UNABLE TO COMPLETE INSTALLATION - Press <RETURN>', 0
    db 'CRUSADERS OF THE DARK SAVANT INSTALLATION COMPLETE!', 0
    db 'To Play The Game, Type: WIZARDRY <cr>', 0
    db 0x00, 0x2e, 0x00, 0x2e
    times 15 db 0
    db 0x72
    times 4 db 0
    db 0x72, 0x2b, 0x00, 0x02, 0x00, 0x77, 0x00, 0x00, 0x01, 0x03, 0x77, 0x2b, 0x00, 0x02, 0x03, 0x61
    db 0x00, 0x00, 0x01, 0x09, 0x61, 0x2b, 0x00, 0x02, 0x09, 0x78, 0x00, 0x00, 0x01, 0x05, 0x78, 0x2b
    db 0x00, 0x02, 0x05
    times 12 db 0
    db 0x01, 0x00, 0x00, 0x01
    times 9 db 0
    db 0x01, 0x01, 0x00, 0x01
    times 9 db 0
    db 0x01, 0x02, 0x00, 0x01
    times 9 db 0
    db 0x01, 0x03, 0x00, 0x01
    times 9 db 0
    db 0x01, 0x04, 0x00, 0x01
    times 198 db 0
    db 0x38, 0x25, 0x38, 0x25, 0x00
    db '         00000                  '
    db 0x90
    db '@@@@@@@@@@@@@@@'
    db 0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c
    db '@@@@@@@'
    db 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01
    db 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01
    db '@@@@@@'
    db 0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02
    db 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02
    db '@@@@ ', 0
    db 0xfe, 0x2a
    times 12 db 0
    db 0xff, 0xff, 0x00, 0x00
    db '8087/80287 is required!'
    db 0x0d, 0x0a, 0x24, 0x3b, 0x35, 0x00
    db 'Too many args.', 0
    db 0x00, 0x01, 0x00, 0x08, 0x00, 0x01
    times 22 db 0
    db 0xd9, 0x36, 0x3e, 0x37, 0x0a, 0x0d

