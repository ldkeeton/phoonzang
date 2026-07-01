%include "structs/structs.inc"
%include "structs/vinstall.inc"
org 0
bits 16

    ; DOS MZ executable header
    db "MZ"         ; e_magic
    dw 0x0014  ; e_cblp
    dw 0x0031    ; e_cp
    dw 0x0001  ; e_crlc
    dw 0x0020 ; e_cparhdr
    dw 0x045d ; e_minalloc
    dw 0xffff ; e_maxalloc
    dw 0x038e   ; e_ss
    dw 0x6afe   ; e_sp
    dw 0x0000 ; e_csum
    dw 0x33d2   ; e_ip
    dw 0x0000   ; e_cs
    dw 0x0020 ; e_lfarlc
    dw 0x0000 ; e_ovno

    times 4 db 0
    db 0xd3, 0x33
    times 478 db 0

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
    jl short 0x263
    cmp ax, strict word 0x19
    jg short 0x263
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
    je short 0x261
    mov ax, 0xffff
    mov sp, bp
    pop bp
    ret
    jmp short 0x268
    mov ax, 0xffff
    jmp short 0x25d
    mov ax, 0
    jmp short 0x25d
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
    jmp short 0x2a7
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
    cmp di, word [bp - 0x0002]
    jl short 0x285
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
    jge short 0x2c6
    neg ax
    mov word [bp + 0x4], ax
    mov si, 0
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
    jg short 0x2c9
    cmp di, byte 0
    jge short 0x302
    mov ax, word [bp + 0x6]
    add ax, si
    mov bx, ax
    inc si
    mov byte [bx], 0x2d
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
    push bp
    db 0x8b, 0xec ; mov bp, sp
    add sp, byte 0xfc
    push di
    push si
    mov ax, word [bp + 0x4]
    mov dx, word [bp + 0x6]
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
    cmp dx, byte 0
    jg short 0x335
    jne short 0x337
    cmp ax, strict word 0
    jb short 0x337
    jmp short 0x344
    neg dx
    neg ax
    sbb dx, byte 0
    mov word [bp + 0x6], dx
    mov word [bp + 0x4], ax
    mov si, 0
    mov ax, word [bp + 0x4]
    mov dx, word [bp + 0x6]
    mov cx, 0xa
    mov bx, 0
    call 0x3445
    add ax, strict word 0x30
    adc dx, byte 0
    db 0x8b, 0xfe ; mov di, si
    inc si
    mov bx, word [bp + 0x8]
    mov byte [bx + di], al
    mov ax, word [bp + 0x4]
    mov dx, word [bp + 0x6]
    mov cx, 0xa
    mov bx, 0
    call 0x3417
    mov word [bp + 0x6], dx
    mov word [bp + 0x4], ax
    cmp dx, byte 0
    jg short 0x385
    jne short 0x387
    cmp ax, strict word 0
    jbe short 0x387
    jmp short 0x347
    cmp word [bp - 0x0002], byte 0
    jg short 0x395
    jne short 0x397
    cmp word [bp - 0x0004], byte 0
    jb short 0x397
    jmp short 0x3a0
    db 0x8b, 0xfe ; mov di, si
    inc si
    mov bx, word [bp + 0x8]
    mov byte [bx + di], 0x2d
    mov bx, word [bp + 0x8]
    mov byte [bx + si], 0
    push word [bp + 0x8]
    call math_loc_026d
    pop cx
    pop si
    pop di
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
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
    call 0x252e
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
    push bp
    db 0x8b, 0xec ; mov bp, sp
    add sp, byte 0xf6
    mov byte [bp - 0x0002], 0
    mov byte [bp - 0x0001], 0
    push word [bp + 0x6]
    push word [bp + 0x4]
    call bios_video_loc_2551
    add sp, byte 4
    mov word [bp - 0x0008], 0
    mov word [bp - 0x000a], 0
    mov word [bp - 0x0006], 0
    call bios_video_loc_2521
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xd
    jne short 0x4ae
    jmp near 0x570
    cmp ax, strict word 8
    jne short 0x4fe
    cmp word [bp - 0x000a], byte 0
    jle short 0x4f8
    dec word [bp - 0x000a]
    jne short 0x4c3
    mov word [bp - 0x0006], 0
    mov ax, word [bp - 0x0008]
    mov cx, 0xa
    cwd
    idiv cx
    mov word [bp - 0x0008], ax
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
    jmp short 0x4fb
    call math_loc_0452
    jmp near 0x56d
    mov ax, word [bp - 0x000a]
    cmp ax, word [bp + 0x8]
    jl short 0x50b
    call math_loc_0452
    jmp short 0x56d
    cmp word [bp - 0x000a], byte 0
    jne short 0x532
    cmp word [bp - 0x0004], byte 0x2d
    jne short 0x532
    inc word [bp - 0x000a]
    mov word [bp - 0x0006], 1
    mov al, byte [bp - 0x0004]
    mov byte [bp - 0x0002], al
    lea ax, word [bp - 0x0002]
    push ax
    call bios_video_loc_2621
    pop cx
    inc word [bp + 0x6]
    jmp short 0x56d
    cmp word [bp - 0x0004], byte 0x30
    jl short 0x56a
    cmp word [bp - 0x0004], byte 0x39
    jg short 0x56a
    inc word [bp - 0x000a]
    mov ax, word [bp - 0x0008]
    db 0x8b, 0xd0 ; mov dx, ax
    shl ax, 1
    shl ax, 1
    db 0x03, 0xc2 ; add ax, dx
    shl ax, 1
    add ax, word [bp - 0x0004]
    add ax, strict word 0xffd0
    mov word [bp - 0x0008], ax
    mov al, byte [bp - 0x0004]
    mov byte [bp - 0x0002], al
    lea ax, word [bp - 0x0002]
    push ax
    call bios_video_loc_2621
    pop cx
    inc word [bp + 0x6]
    jmp short 0x56d
    call math_loc_0452
    jmp near 0x4a0
    cmp word [bp - 0x0006], byte 1
    jne short 0x57f
    mov ax, word [bp - 0x0008]
    neg ax
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    mov ax, word [bp - 0x0008]
    jmp short 0x57b
loc_0584:
    push bp
    mov bp, sp
    add sp, byte 0xfc
    call bios_video_loc_2720
    mov word [bp - 0x0004], ax
    mov ax, 0x20
    cmp word [bp + 0x4], byte 1
    jne short 0x59c
    mov ax, 0x11
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
    call bios_video_loc_2521
    push ax
    call loc_06a6
    pop cx
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xd
    jne short 0x5f9
    jmp near 0x699
    mov ax, 0
    push ax
    call loc_0584
    pop cx
    cmp word [bp - 0x0004], byte 8
    je short 0x60d
    cmp word [bp - 0x0004], byte 8
    jne short 0x64d
    cmp word [bp - 0x0006], byte 0
    jle short 0x648
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
    jmp short 0x64b
    call math_loc_0452
    jmp short 0x68e
    mov ax, word [bp - 0x0006]
    cmp ax, word [bp + 0xa]
    jl short 0x65a
    call math_loc_0452
    jmp short 0x68e
    cmp word [bp - 0x0004], byte 0x20
    jl short 0x68e
    cmp word [bp - 0x0004], byte 0x7f
    jg short 0x68e
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
    mov ax, 1
    push ax
    call loc_0584
    pop cx
    jmp near 0x5e6
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
    jne short 0x6e6
    call bios_video_loc_2521
    mov word [bp - 0x0002], ax
    jmp short 0x6d0
    mov ax, 8
    mov sp, bp
    pop bp
    ret
    mov ax, 9
    jmp short 0x6bd
    mov ax, 0xa
    jmp short 0x6bd
    mov ax, 0xb
    jmp short 0x6bd
    cmp ax, strict word 0x48
    je short 0x6c1
    cmp ax, strict word 0x4b
    je short 0x6ba
    cmp ax, strict word 0x4d
    je short 0x6c6
    cmp ax, strict word 0x50
    je short 0x6cb
    jmp short 0x6ef
    push word [bp + 0x4]
    call loc_2bb2
    pop cx
    jmp short 0x6bd
    jmp short 0x6bd
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
    push bp
    db 0x8b, 0xec ; mov bp, sp
    add sp, strict word 0xfefc
    lea ax, word [bp - 0x00ff]
    push ax
    push word [bp + 0x4]
    call math_loc_02b2
    add sp, byte 4
    mov byte [bp - 0x0101], 0
    mov byte [bp - 0x0100], 0
    lea ax, word [bp - 0x00ff]
    push ax
    call strlen_3
    pop cx
    sub ax, word [bp + 0x6]
    jge short 0x74a
    mov ax, 0x1447
    push ax
    call bios_video_loc_2621
    pop cx
    dec word [bp + 0x6]
    jmp short 0x72f
    lea ax, word [bp - 0x00ff]
    push ax
    call strlen_3
    pop cx
    sub ax, word [bp + 0x6]
    mov word [bp - 0x0103], ax
    jmp short 0x777
    mov bx, word [bp - 0x0103]
    db 0x03, 0xdd ; add bx, bp
    mov al, byte [bx - 0x00ff]
    mov byte [bp - 0x0101], al
    lea ax, word [bp - 0x0101]
    push ax
    call bios_video_loc_2621
    pop cx
    inc word [bp - 0x0103]
    lea ax, word [bp - 0x00ff]
    push ax
    call strlen_3
    pop cx
    cmp ax, word [bp - 0x0103]
    jg short 0x75c
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    add sp, strict word 0xfefc
    lea ax, word [bp - 0x00ff]
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x315
    add sp, byte 6
    mov byte [bp - 0x0101], 0
    mov byte [bp - 0x0100], 0
    lea ax, word [bp - 0x00ff]
    push ax
    call strlen_3
    pop cx
    sub ax, word [bp + 0x8]
    jge short 0x7c7
    mov ax, 0x1449
    push ax
    call bios_video_loc_2621
    pop cx
    dec word [bp + 0x8]
    jmp short 0x7ac
    lea ax, word [bp - 0x00ff]
    push ax
    call strlen_3
    pop cx
    sub ax, word [bp + 0x8]
    mov word [bp - 0x0103], ax
    jmp short 0x7f4
    mov bx, word [bp - 0x0103]
    db 0x03, 0xdd ; add bx, bp
    mov al, byte [bx - 0x00ff]
    mov byte [bp - 0x0101], al
    lea ax, word [bp - 0x0101]
    push ax
    call bios_video_loc_2621
    pop cx
    inc word [bp - 0x0103]
    lea ax, word [bp - 0x00ff]
    push ax
    call strlen_3
    pop cx
    cmp ax, word [bp - 0x0103]
    jg short 0x7d9
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
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
    call 0x2877
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
    jl short 0x830
    cmp ax, word [bp + 0xc]
    jg short 0x830
    mov ax, word [bp - 0x0002]
    mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    add sp, strict word 0xfefc
    mov byte [bp - 0x0103], 0
    push word [bp + 0xa]
    push word [bp + 0x8]
    call bios_video_loc_2551
    add sp, byte 4
    push word [bp + 0xc]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x78a
    add sp, byte 6
    push word [bp + 0xc]
    lea ax, word [bp - 0x0103]
    push ax
    push word [bp + 0xa]
    push word [bp + 0x8]
    call loc_05b6
    add sp, byte 8
    cmp byte [bp - 0x0103], 0
    jne short 0x8df
    mov ax, word [bp + 0x4]
    mov dx, word [bp + 0x6]
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
    jmp short 0x8ee
    lea ax, word [bp - 0x0103]
    push ax
    call 0x815
    pop cx
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
    mov ax, word [bp - 0x0004]
    mov dx, word [bp - 0x0002]
    cmp dx, word [bp + 0x10]
    jg short 0x900
    jne short 0x902
    cmp ax, word [bp + 0xe]
    jbe short 0x902
    jmp short 0x89b
    push word [bp + 0xa]
    push word [bp + 0x8]
    call bios_video_loc_2551
    add sp, byte 4
    push word [bp + 0xc]
    push word [bp - 0x0002]
    push word [bp - 0x0004]
    call 0x78a
    add sp, byte 6
    mov ax, word [bp - 0x0004]
    mov dx, word [bp - 0x0002]
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    mov byte [0x2644], 0x1f
    mov byte [0x2645], 0x2e
    mov byte [0x2645], 0x70
    mov byte [0x2646], 0x4e
    mov byte [0x2647], 0x1f
    call 0x443
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call loc_040f
    add sp, byte 6
    mov ax, word [bp + 0xa]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x160]
    mov ax, 0x16
    push ax
    push word [bp + 0x4]
    call loc_040f
    add sp, byte 6
    push word [bp + 0xc]
    mov ax, 0x2e
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
    db 0x8b, 0xe5 ; mov sp, bp
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
    mov cx, 2
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
    call bios_video_loc_2521
    cmp ax, strict word 0xd
    je short 0x9d7
    jmp short 0x9cd
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
    mov cx, 2
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
    mov ax, 2
    push ax
    lea ax, word [bp - 0x0050]
    push ax
    call loc_3381
    add sp, byte 4
    mov word [0x2698], ax
    cmp ax, strict word 0xffff
    jne short 0xa84
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
    mov sp, bp
    pop bp
    ret
    mov ax, 0
    push ax
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    push word [0x2698]
    call dos_file_loc_3881
    add sp, byte 8
    mov ax, 0x34c
    push ax
    mov ax, 0x269a
    push ax
    push word [0x2698]
    call dos_file_loc_3833
    add sp, byte 6
    mov ax, word [bp + 0x1c]
    cmp ax, word [0x29d2]
    je short 0xaca
    mov ax, 0x152c
    push ax
    call math_loc_0992
    pop cx
    push word [0x2698]
    call dos_file_loc_3869
    pop cx
    mov ax, 1
    jmp short 0xa80
    mov ax, word [bp + 0x1c]
    mov word [0x29d2], ax
    mov al, byte [bp + 0xc]
    mov byte [0x29e2], al
    mov al, byte [bp + 0x12]
    mov byte [0x29ba], al
    mov al, byte [bp + 0x14]
    mov byte [0x29bb], al
    push word [bp + 0x16]
    mov ax, 0x29bc
    push ax
    call strlen_2
    add sp, byte 4
    mov al, byte [bp + 0x18]
    mov byte [0x29d0], al
    mov al, byte [bp + 0x1a]
    mov byte [0x29d1], al
    mov ax, 0xa
    cmp word [bp + 0xe], byte 7
    jne short 0xb07
    mov ax, 0
    mov byte [0x29d4], al
    mov ax, 0xa
    cmp word [bp + 0xe], byte 7
    jne short 0xb16
    mov ax, 0
    mov byte [0x29d5], al
    mov ax, 0xa
    cmp word [bp + 0xe], byte 7
    jne short 0xb25
    mov ax, 0
    mov byte [0x29d6], al
    mov ax, 0xa
    cmp word [bp + 0xe], byte 7
    jne short 0xb34
    mov ax, 0
    mov byte [0x29d7], al
    mov ax, word [bp + 0xe]
    mov cx, 7
    cwd
    idiv cx
    mov ax, dx
    mov word [bp + 0xe], ax
    mov al, byte [bp + 0xe]
    mov byte [0x29dc], al
    cmp word [bp + 0xe], byte 5
    jne short 0xb56
    mov byte [0x29dc], 0
    mov byte [0x29dd], al
    cmp word [bp + 0xe], byte 2
    je short 0xb65
    cmp word [bp + 0xe], byte 3
    jne short 0xb6a
    mov byte [0x29dd], 0
    mov word [0x29d8], 0
    mov word [0x29da], 0
    cmp word [bp + 0xe], byte 0
    jle short 0xb88
    mov word [0x29d8], 0x220
    mov word [0x29da], 0x220
    mov ax, 1
    cmp word [bp + 0x10], byte 0
    jne short 0xb94
    mov ax, 0
    mov byte [0x29e1], al
    mov al, byte [bp + 0xa]
    mov byte [0x29df], al
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
    jne short 0xbdd
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
    mov byte [0x29e3], 1
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
    push word [0x2698]
    call dos_file_loc_3881
    add sp, byte 8
    mov ax, 0x34c
    push ax
    mov ax, 0x269a
    push ax
    push word [0x2698]
    call dos_file_loc_383a
    add sp, byte 6
    push word [0x2698]
    call dos_file_loc_3869
    pop cx
    mov ax, 0
    jmp near 0xa80
math_loc_0c21:
    push bp
    mov bp, sp
    mov ax, word [bp + 0x4]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    inc ax
    mov word [bp + 0x4], ax
    cmp ax, strict word 1
    jne short 0xc42
    cmp word [0x29e6], byte 0
    jne short 0xc42
    inc word [bp + 0x4]
    cmp word [bp + 0x4], byte 2
    jne short 0xc52
    cmp word [0x29e8], byte 0
    jne short 0xc52
    inc word [bp + 0x4]
    cmp word [bp + 0x4], byte 3
    jne short 0xc62
    cmp word [0x29ea], byte 0
    jne short 0xc62
    inc word [bp + 0x4]
    cmp word [bp + 0x4], byte 4
    jne short 0xc74
    cmp word [0x29ec], byte 0
    jne short 0xc74
    mov word [bp + 0x4], 1
    cmp word [bp + 0x4], byte 1
    jne short 0xc84
    cmp word [0x29e6], byte 0
    jne short 0xc84
    inc word [bp + 0x4]
    cmp word [bp + 0x4], byte 2
    jne short 0xc94
    cmp word [0x29e8], byte 0
    jne short 0xc94
    inc word [bp + 0x4]
    cmp word [bp + 0x4], byte 3
    jne short 0xca4
    cmp word [0x29ea], byte 0
    jne short 0xca4
    inc word [bp + 0x4]
    cmp word [bp + 0x4], byte 4
    jne short 0xcb6
    cmp word [0x29ec], byte 0
    jne short 0xcb6
    mov word [bp + 0x4], 0
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x02, 0x00 ; push word ptr [bx + 2]
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
    mov ax, word [bp + 0x6]
    inc ax
    mov cx, 5
    cwd
    idiv cx
    mov word [bp + 0x6], dx
    mov bx, word [bp + 0x8]
    mov si, word [bp + 0x6]
    cmp byte [bx + si], 0x30
    je short 0xcda
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
    mov cx, 2
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
    jle short 0xd81
    mov ax, 0x4c
    jmp short 0xd88
    push word [bp + 0x4]
    call strlen_3
    pop cx
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
    mov cx, 2
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
    jge short 0xe10
    mov ax, 0x15cc
    push ax
    lea ax, word [bp - 0x00a2]
    push ax
    call strlen
    add sp, byte 4
    mov ax, 0
    sub ax, word [bp + 0x8]
    mov word [bp + 0x8], ax
    jmp short 0xe22
    mov ax, 0x15d8
    push ax
    lea ax, word [bp - 0x00a2]
    push ax
    call strlen
    add sp, byte 4
    call math_loc_0452
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
    jle short 0xecb
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
    je short 0xe9f
    push word [bp - 0x00a4]
    call dos_file_loc_3869
    pop cx
    jmp short 0xed4
    lea ax, word [bp - 0x00a2]
    push ax
    call math_loc_0992
    pop cx
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
    mov word [0x29ee], ax
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
    push word [0x29ee]
    mov ax, 0x163a
    push ax
    mov ax, 0x1636
    push ax
    call loc_2bfe
    add sp, byte 6
    mov word [0x29ee], ax
    cmp word [bp - 0x01c9], byte 0xff
    je short 0xfde
    cmp word [bp - 0x01cb], byte 0
    je short 0x1029
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
    mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    mov ax, 0x29f0
    push ax
    call strlen_3
    pop cx
    cmp ax, strict word 0x50
    jg short 0x1055
    mov ax, 0x29f0
    push ax
    call strlen_3
    pop cx
    cmp ax, strict word 0
    jle short 0x1078
    push word [bp + 0xa]
    call strlen_3
    pop cx
    test ax, ax
    jne short 0x1078
    mov ax, 0x29f0
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call loc_0ed8
    add sp, byte 8
    mov ax, 0x1669
    push ax
    mov ax, 0x29f0
    push ax
    call strlen_2
    add sp, byte 4
    jmp short 0x1093
    mov ax, 0x29f0
    push ax
    call strlen_3
    pop cx
    cmp ax, strict word 0
    jle short 0x1093
    mov ax, 0x166a
    push ax
    mov ax, 0x29f0
    push ax
    call strlen
    add sp, byte 4
    push word [bp + 0xa]
    mov ax, 0x29f0
    push ax
    call strlen
    add sp, byte 4
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
loc_10a4:
    push bp
    mov bp, sp
    mov ax, word [bp + 0x4]
    jmp near 0x1144
loc_10ad:
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
    jmp near 0x1151
string_loc_10ca:
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
    jmp short 0x1151
string_loc_10e6:
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
    jmp short 0x1151
string_loc_1102:
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
    jmp short 0x1151
string_loc_111e:
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
    jmp short 0x1151
    lodsw
    push cs
    retf 0xe60e
    push cs
    add cl, byte [bx]
    push ds
    db 0x0f
    cmp ax, strict word 5
    jae short 0x1151
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0xf3a]
    mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    add sp, strict word 0xff5e
    mov ax, word [bp + 0x4]
    db 0x8b, 0xd0 ; mov dx, ax
    shl ax, 1
    shl ax, 1
    db 0x03, 0xc2 ; add ax, dx
    shl ax, 1
    mov cx, word [bp + 0x6]
    shl cx, 1
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x2ad]
    lea ax, word [bp - 0x0052]
    push ax
    call strlen_2
    add sp, byte 4
    mov word [bp - 0x0002], 0
    jmp short 0x11a8
    mov bx, word [bp - 0x0002]
    db 0x03, 0xdd ; add bx, bp
    cmp byte [bx - 0x0052], 0x2a
    je short 0x119e
    mov al, byte [bx - 0x0052]
    cbw
    add ax, strict word 0xffbf
    cmp ax, word [bp + 0x8]
    jne short 0x11a5
    mov ax, 1
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    inc word [bp - 0x0002]
    lea ax, word [bp - 0x0052]
    push ax
    call strlen_3
    pop cx
    cmp ax, word [bp - 0x0002]
    jg short 0x1187
    mov ax, 0
    jmp short 0x11a1
loc_11ba:
    push bp
    mov bp, sp
    add sp, byte 0xae
    push word [bp + 0x4]
    call loc_0200
    pop cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x1208
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
    mov ax, 4
    push ax
    call dos_file_loc_380b
    pop cx
    push word [bp + 0x6]
    call leaf_loc_2a1c
    pop cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short 0x121a
    jmp near 0x12b1
    cmp word [bp + 0x8], byte 1
    jne short 0x1272
    push word [bp + 0x6]
    call dos_loc_29fe
    pop cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short 0x1268
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
    push word [bp + 0x6]
    call leaf_loc_2a1c
    pop cx
    mov word [bp - 0x0002], ax
    cmp word [bp - 0x0002], byte 0xff
    jne short 0x12b1
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
    mov ax, 2
    push ax
    call dos_file_loc_380b
    pop cx
    mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    add sp, strict word 0xfd28
    call 0x927
    mov word [bp - 0x01c8], 0x78
    call 0x443
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
    mov ax, 2
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
    mov ax, 4
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
    db 0x8b, 0xc2 ; mov ax, dx
    push ax
    call math_loc_02b2
    add sp, byte 4
    lea ax, word [bp - 0x02d6]
    push ax
    call strlen_3
    pop cx
    cmp ax, strict word 1
    jne short 0x137b
    mov al, byte [bp - 0x02d6]
    mov byte [bp - 0x02d5], al
    mov byte [bp - 0x02d6], 0x30
    mov byte [bp - 0x02d4], 0
    lea ax, word [bp - 0x02d6]
    push ax
    call bios_video_loc_2621
    pop cx
    mov ax, 0x183d
    push ax
    mov ax, 5
    push ax
    mov ax, 7
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x1882
    push ax
    mov ax, 5
    push ax
    mov ax, 8
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x18b2
    push ax
    mov ax, 5
    push ax
    mov ax, 0xa
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x18f6
    push ax
    mov ax, 5
    push ax
    mov ax, 0xb
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x1911
    push ax
    mov ax, 5
    push ax
    mov ax, 0xd
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x1957
    push ax
    mov ax, 5
    push ax
    mov ax, 0xe
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x199e
    push ax
    mov ax, 5
    push ax
    mov ax, 0xf
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x19e4
    push ax
    mov ax, 5
    push ax
    mov ax, 0x10
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x1a2b
    push ax
    mov ax, 5
    push ax
    mov ax, 0x11
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x1a72
    push ax
    mov ax, 5
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
    call 0x443
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
    mov ax, 2
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
    mov ax, 4
    push ax
    call loc_040f
    add sp, byte 6
    call 0x245e
    mov word [bp - 0x0006], ax
    mov word [0x29e6], 0
    mov word [0x29e8], 0
    mov word [0x29ea], 0
    mov word [0x2af0], 0
    mov word [0x29ec], 0
    mov word [0x2af2], 0
    mov word [0x2af4], 0
    mov word [0x2af6], 0
    mov word [0x2af8], 0
    mov word [0x2afa], 0
    test ax, 1
    je short 0x14f8
    mov word [0x29e6], 1
    test ax, 2
    je short 0x1503
    mov word [0x29e8], 1
    test ax, 0x1000
    je short 0x150e
    mov word [0x2afa], 1
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
    mov word [bp - 0x0010], 4
    lea ax, word [bp - 0x0054]
    push ax
    lea ax, word [bp - 0x003e]
    push ax
    push word [bp - 0x0010]
    call loc_10a4
    add sp, byte 6
    mov ax, 0x1bce
    push ax
    mov ax, 2
    push ax
    mov ax, 6
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x1c1b
    push ax
    mov ax, 2
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
    mov ax, 2
    push ax
    mov ax, 8
    push ax
    call 0x944
    add sp, byte 0x0c
    lea ax, word [bp - 0x0054]
    push ax
    lea ax, word [bp - 0x003e]
    push ax
    push word [bp - 0x0010]
    mov ax, 0x1c7b
    push ax
    mov ax, 2
    push ax
    mov ax, 9
    push ax
    call 0x944
    add sp, byte 0x0c
    mov word [bp - 0x01a0], 0
    mov word [bp - 0x01a2], 0
    mov byte [bp - 0x01b8], 0
    mov ax, 0x1c8e
    push ax
    mov ax, 2
    push ax
    mov ax, 0xb
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, word [bp - 0x01a0]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x154]
    mov ax, 0x1b
    push ax
    mov ax, 0xb
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, word [bp - 0x01a2]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
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
    mov ax, 2
    push ax
    mov ax, 0xd
    push ax
    call loc_040f
    add sp, byte 6
    mov ax, 0x1d0a
    push ax
    mov ax, 2
    push ax
    mov ax, 0xe
    push ax
    call loc_040f
    add sp, byte 6
    mov word [bp - 0x0196], 0
    mov word [bp - 0x01be], 0xf
    cmp word [0x29e6], byte 0
    je short 0x1660
    mov word [bp - 0x0196], 1
    push word [0x0004]
    mov ax, 0xa
    push ax
    push word [bp - 0x01be]
    call loc_040f
    add sp, byte 6
    inc word [bp - 0x01be]
    cmp word [0x29e8], byte 0
    je short 0x168a
    cmp word [bp - 0x0196], byte 0
    jne short 0x1674
    mov word [bp - 0x0196], 2
    push word [0x0006]
    mov ax, 0xa
    push ax
    push word [bp - 0x01be]
    call loc_040f
    add sp, byte 6
    inc word [bp - 0x01be]
    mov ax, word [bp - 0x0196]
    shl ax, 1
    db 0x8b, 0xd8 ; mov bx, ax
    db 0xff, 0xb7, 0x02, 0x00 ; push word ptr [bx + 2]
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
    mov ax, word [0x2afa]
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
    db 0x8b, 0xd8 ; mov bx, ax
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
    db 0x8b, 0xd8 ; mov bx, ax
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
    jne short 0x17a8
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
    mov word [bp - 0x019c], 0
    mov word [bp - 0x019e], 0xffff
    mov word [bp - 0x01c0], 0
    mov ax, 0x1e28
    push ax
    mov ax, 0x2648
    push ax
    call strlen_2
    add sp, byte 4
    mov ax, word [bp - 0x019e]
    jmp near 0x198d
loc_17cf:
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
    jmp near 0x199d
loc_17eb:
    lea ax, word [bp - 0x001c]
    push ax
    mov ax, 0x2e
    push ax
    mov ax, 8
    push ax
    call loc_040f
    add sp, byte 6
    jmp near 0x199d
loc_1800:
    lea ax, word [bp - 0x0032]
    push ax
    mov ax, 0x3a
    push ax
    mov ax, 8
    push ax
    call loc_040f
    add sp, byte 6
    jmp near 0x199d
loc_1815:
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
    jmp near 0x199d
loc_1831:
    lea ax, word [bp - 0x003e]
    push ax
    mov ax, 0x2e
    push ax
    mov ax, 9
    push ax
    call loc_040f
    add sp, byte 6
    jmp near 0x199d
loc_1846:
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0x3a
    push ax
    mov ax, 9
    push ax
    call loc_040f
    add sp, byte 6
    jmp near 0x199d
loc_185b:
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
    jmp near 0x199d
loc_1878:
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
    jmp near 0x199d
loc_1895:
    lea ax, word [bp - 0x01b8]
    push ax
    mov ax, 0x3a
    push ax
    mov ax, 0xb
    push ax
    call loc_040f
    add sp, byte 6
    jmp near 0x199d
loc_18ab:
    mov ax, word [bp - 0x0196]
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x02, 0x00 ; push word ptr [bx + 2]
    mov ax, 0x10
    push ax
    mov ax, 0xd
    push ax
    call loc_040f
    add sp, byte 6
    jmp near 0x199d
loc_18c8:
    push word [bp - 0x01ba]
    mov ax, 0x3e
    push ax
    mov ax, 0xf
    push ax
    call loc_03b3
    add sp, byte 6
    jmp near 0x199d
loc_18dd:
    push word [bp - 0x01bc]
    mov ax, 0x3e
    push ax
    mov ax, 0x10
    push ax
    call loc_03b3
    add sp, byte 6
    jmp near 0x199d
loc_18f2:
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
    jmp near 0x199d
string_loc_190f:
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
    jmp short 0x199d
string_loc_192b:
    mov ax, 0x1e50
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x14
    push ax
    call loc_040f
    add sp, byte 6
    jmp short 0x199d
string_loc_193f:
    mov ax, 0x1e5d
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x14
    push ax
    call loc_040f
    add sp, byte 6
    jmp short 0x199d
string_loc_1953:
    mov ax, 0x1e69
    push ax
    mov ax, 0x30
    push ax
    mov ax, 0x14
    push ax
    call loc_040f
    add sp, byte 6
    jmp short 0x199d
string_loc_1967:
    jmp short 0x199d
    db 0x67, 0x17 ; pop ss
    iret
    adc ax, 0x15eb
    add byte [0x1615], dl
    xor word [0x1646], dx
    pop bx
    push ss
    js short 0x1991
    xchg bp, ax
    push ss
    stosw
    push ss
    enter 0xdd16, 0x16
    db 0xf2, 0x16 ; push ss
    movhps [bp + di], xmm5
    pop ss
    aas
    pop ss
    push bx
    pop ss
    sub ax, strict word 0xffff
    cmp ax, strict word 0x12
    jae short 0x199d
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x1769]
    mov ax, word [bp - 0x019c]
    jmp near 0x1b5e
loc_19a4:
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
    jmp near 0x1b6b
loc_19c0:
    lea ax, word [bp - 0x001c]
    push ax
    mov ax, 0x2e
    push ax
    mov ax, 8
    push ax
    call loc_0429
    add sp, byte 6
    jmp near 0x1b6b
loc_19d5:
    lea ax, word [bp - 0x0032]
    push ax
    mov ax, 0x3a
    push ax
    mov ax, 8
    push ax
    call loc_0429
    add sp, byte 6
    jmp near 0x1b6b
loc_19ea:
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
    jmp near 0x1b6b
loc_1a06:
    lea ax, word [bp - 0x003e]
    push ax
    mov ax, 0x2e
    push ax
    mov ax, 9
    push ax
    call loc_0429
    add sp, byte 6
    jmp near 0x1b6b
loc_1a1b:
    lea ax, word [bp - 0x0054]
    push ax
    mov ax, 0x3a
    push ax
    mov ax, 9
    push ax
    call loc_0429
    add sp, byte 6
    jmp near 0x1b6b
loc_1a30:
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
    jmp near 0x1b6b
loc_1a4d:
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
    jmp near 0x1b6b
loc_1a6a:
    lea ax, word [bp - 0x01b8]
    push ax
    mov ax, 0x3a
    push ax
    mov ax, 0xb
    push ax
    call loc_0429
    add sp, byte 6
    jmp near 0x1b6b
loc_1a80:
    mov ax, word [bp - 0x0196]
    shl ax, 1
    mov bx, ax
    db 0xff, 0xb7, 0x02, 0x00 ; push word ptr [bx + 2]
    mov ax, 0x10
    push ax
    mov ax, 0xd
    push ax
    call loc_0429
    add sp, byte 6
    jmp near 0x1b6b
loc_1a9d:
    push word [bp - 0x01ba]
    mov ax, 0x3e
    push ax
    mov ax, 0xf
    push ax
    call loc_03e1
    add sp, byte 6
    jmp near 0x1b6b
loc_1ab2:
    push word [bp - 0x01bc]
    mov ax, 0x3e
    push ax
    mov ax, 0x10
    push ax
    call loc_03e1
    add sp, byte 6
    jmp near 0x1b6b
string_loc_1ac7:
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
    jmp near 0x1b6b
string_loc_1ae4:
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
    jmp short 0x1b6b
string_loc_1b00:
    mov ax, 0x1e77
    push ax
    mov ax, 0x12
    push ax
    mov ax, 0x14
    push ax
    call loc_0429
    add sp, byte 6
    jmp short 0x1b6b
string_loc_1b14:
    mov ax, 0x1e84
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x14
    push ax
    call loc_0429
    add sp, byte 6
    jmp short 0x1b6b
string_loc_1b28:
    mov ax, 0x1e90
    push ax
    mov ax, 0x30
    push ax
    mov ax, 0x14
    push ax
    call loc_0429
    add sp, byte 6
    jmp short 0x1b6b
    movsb
    pop ss
    rcl byte [bx], 0xd5
    pop ss
    jmp far 0x1b18:0x617
    sbb byte [bx + si], dh
    sbb byte [di + 0x18], cl
    db 0x6a, 0x18 ; push 0x18
    sbb byte [bx + si], 0x9d
    sbb byte [bp + si - 0x38e8], dh
    sbb ah, ah
    sbb byte [bx + si], al
    sbb word [si], dx
    sbb word [bx + si], bp
    db 0x19
    cmp ax, strict word 0x11
    jae short 0x1b6b
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x193c]
    call bios_video_loc_2521
    push ax
    call loc_06a6
    pop cx
    mov word [bp - 0x0008], ax
    jmp near 0x1fbe
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
    jmp near 0x1fa3
loc_1be2:
    mov ax, 0x1e9e
    push ax
    push word [bp - 0x000e]
    mov ax, 8
    push ax
    call math_loc_0cd6
    add sp, byte 6
    mov word [bp - 0x000e], ax
    jmp near 0x1fb0
loc_1bf9:
    mov ax, 2
    push ax
    lea ax, word [bp - 0x001c]
    push ax
    mov ax, 0x2e
    push ax
    mov ax, 8
    push ax
    call loc_05b6
    add sp, byte 8
    cmp byte [bp - 0x001c], 0x41
    jl short 0x1c21
    cmp byte [bp - 0x001c], 0x5a
    jg short 0x1c21
    cmp byte [bp - 0x001b], 0x3a
    je short 0x1c26
    mov ax, 1
    jmp short 0x1c29
    mov ax, 0
    mov word [bp - 0x01c2], ax
    cmp ax, strict word 1
    jne short 0x1c3a
    mov ax, 0x1ea4
    push ax
    call math_loc_0992
    pop cx
    cmp word [bp - 0x01c2], byte 1
    je short 0x1bf9
    jmp near 0x1fb0
loc_1c44:
    mov ax, 0x1ecd
    push ax
    call math_loc_0992
    pop cx
    jmp near 0x1fb0
loc_1c4f:
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
    mov ax, 0x2e
    push ax
    mov ax, 9
    push ax
    call loc_040f
    add sp, byte 6
    lea ax, word [bp - 0x003e]
    push ax
    mov ax, 0x2e
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
    jmp near 0x1fb0
loc_1cad:
    mov ax, 2
    push ax
    lea ax, word [bp - 0x003e]
    push ax
    mov ax, 0x2e
    push ax
    mov ax, 9
    push ax
    call loc_05b6
    add sp, byte 8
    cmp byte [bp - 0x003e], 0x41
    jl short 0x1cd5
    cmp byte [bp - 0x003e], 0x5a
    jg short 0x1cd5
    cmp byte [bp - 0x003d], 0x3a
    je short 0x1cda
    mov ax, 1
    jmp short 0x1cdd
    mov ax, 0
    mov word [bp - 0x01c2], ax
    cmp ax, strict word 1
    jne short 0x1cf0
    mov ax, 0x1f1e
    push ax
    call math_loc_0992
    pop cx
    jmp short 0x1d00
    mov al, byte [bp - 0x003e]
    cmp al, byte [bp - 0x001c]
    jne short 0x1d00
    mov ax, 0x1f47
    push ax
    call math_loc_0992
    pop cx
    cmp word [bp - 0x01c2], byte 1
    je short 0x1cad
    jmp near 0x1fb0
loc_1d0a:
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
    jne short 0x1d60
    cmp byte [bp - 0x0054], 0x41
    jl short 0x1d45
    cmp byte [bp - 0x0054], 0x5a
    jg short 0x1d45
    cmp byte [bp - 0x0053], 0x3a
    jne short 0x1d45
    lea ax, word [bp - 0x0054]
    push ax
    call strlen_3
    pop cx
    cmp ax, strict word 2
    jle short 0x1d4a
    mov ax, 1
    jmp short 0x1d4d
    mov ax, 0
    mov word [bp - 0x01c2], ax
    cmp ax, strict word 1
    jne short 0x1d5e
    mov ax, 0x1f7c
    push ax
    call math_loc_0992
    pop cx
    jmp short 0x1d66
    mov word [bp - 0x01c2], 0
    cmp word [bp - 0x01c2], byte 1
    je short 0x1d0a
    jmp near 0x1fb0
loc_1d70:
    push word [bp - 0x01a0]
    mov ax, 0x1b
    push ax
    mov ax, 0xb
    push ax
    call math_loc_0d3f
    add sp, byte 6
    mov word [bp - 0x01a0], ax
    jmp near 0x1fb0
loc_1d89:
    push word [bp - 0x01a2]
    mov ax, 0x29
    push ax
    mov ax, 0xb
    push ax
    call math_loc_0d3f
    add sp, byte 6
    mov word [bp - 0x01a2], ax
    jmp near 0x1fb0
loc_1da2:
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
    jl short 0x1dd6
    mov bx, ax
    add bx, bp
    cmp byte [bx - 0x01b9], 0x3a
    je short 0x1ddb
    mov ax, 1
    jmp short 0x1dde
    mov ax, 0
    mov word [bp - 0x01c2], ax
    cmp ax, strict word 1
    jne short 0x1def
    mov ax, 0x1fa5
    push ax
    call math_loc_0992
    pop cx
    cmp word [bp - 0x01c2], byte 1
    je short 0x1da2
    jmp near 0x1fb0
loc_1df9:
    push word [bp - 0x0196]
    call math_loc_0c21
    pop cx
    mov word [bp - 0x0196], ax
    jmp near 0x1fb0
loc_1e08:
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
    jmp near 0x1fb0
loc_1e2d:
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
    jmp near 0x1fb0
loc_1e52:
    push word [bp - 0x019a]
    mov ax, 0x1b
    push ax
    mov ax, 0x12
    push ax
    call math_loc_0d3f
    add sp, byte 6
    mov word [bp - 0x019a], ax
    jmp near 0x1fb0
loc_1e6b:
    push word [bp - 0x0198]
    call math_loc_0d12
    pop cx
    mov word [bp - 0x0198], ax
    jmp near 0x1fb0
loc_1e7a:
    mov al, byte [bp - 0x001c]
    cmp al, byte [bp - 0x003e]
    jne short 0x1e95
    mov ax, 0x1fce
    push ax
    call math_loc_0992
    pop cx
    mov ax, 0x200a
    push ax
    call math_loc_0992
    pop cx
    jmp near 0x1f57
    mov ax, word [bp - 0x0010]
    jmp short 0x1ede
    mov ax, 0x204c
    push ax
    lea ax, word [bp - 0x0194]
    push ax
    call strlen_2
    add sp, byte 4
    jmp short 0x1ef2
    mov ax, 0x2062
    push ax
    lea ax, word [bp - 0x0194]
    push ax
    call strlen_2
    add sp, byte 4
    jmp short 0x1ef2
    mov ax, 0x207b
    push ax
    lea ax, word [bp - 0x0194]
    push ax
    call strlen_2
    add sp, byte 4
    jmp short 0x1ef2
    mov ax, 0x208f
    push ax
    lea ax, word [bp - 0x0194]
    push ax
    call strlen_2
    add sp, byte 4
    jmp short 0x1ef2
    cmp ax, strict word 0
    je short 0x1e9a
    cmp ax, strict word 1
    je short 0x1eab
    cmp ax, strict word 2
    je short 0x1ebc
    cmp ax, strict word 3
    je short 0x1ecd
    mov ax, 0x20a8
    push ax
    mov ax, 0x2648
    push ax
    call strlen_2
    add sp, byte 4
    cmp word [bp - 0x0010], byte 4
    je short 0x1f45
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
    mov word [bp - 0x01c6], 1
    mov word [bp - 0x01c0], 1
    mov word [bp - 0x01ca], 1
    jmp short 0x1fb0
leaf_loc_1f59:
    mov word [bp - 0x01c6], 1
    mov word [bp - 0x01c0], 1
    mov word [bp - 0x01ca], 0
    jmp short 0x1fb0
loc_1f6d:
    mov word [bp - 0x01c6], 0
    mov word [bp - 0x01c0], 1
    mov word [bp - 0x01ca], 0
    jmp short 0x1fb0
    loop 0x1f9c
    stc
    sbb word [si + 0x1a], ax
    dec di
    sbb ch, byte [di + 0xa1a]
    sbb si, word [bx + si + 0x1b]
    mov word [bp + di], bx
    mov byte [0xf91b], al
    sbb cx, word [bx + si]
    sbb al, 0x2d
    sbb al, 0x52
    sbb al, 0x6b
    sbb al, 0x7a
    sbb al, 0x59
    sbb ax, 0x1d6d
    cmp ax, strict word 0x11
    jae short 0x1fb0
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x1d81]
    jmp short loc_1fce
    jns short 0x1fcd
    nop
    sbb word [bx - 0x41e7], sp
    sbb si, cx
    sbb ax, 0x19d5
    sub ax, strict word 8
    cmp ax, strict word 6
    jae short 0x1fce
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x1db2]
loc_1fce:
    cmp word [bp - 0x01c0], byte 0
    jne short 0x1fd8
    jmp near 0x17ba
    cmp word [bp - 0x01c6], byte 0
    jne short 0x1fe2
    jmp near 0x244a
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
    jne short 0x2072
    cmp word [bp - 0x0010], byte 4
    jne short 0x2072
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
    jle short 0x2072
    mov ax, 0x2118
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    call strlen
    add sp, byte 4
    cmp word [bp - 0x01ca], byte 1
    je short 0x207c
    jmp near 0x238f
    cmp word [bp - 0x0010], byte 4
    je short 0x2085
    jmp near 0x238f
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
    jle short 0x20c3
    mov ax, 0x211a
    push ax
    lea ax, word [bp - 0x00f4]
    push ax
    call strlen
    add sp, byte 4
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
    je short 0x20fb
    jmp near 0x21ba
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
    mov ax, 2
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
    cmp word [bp - 0x000e], byte 2
    je short 0x21c3
    jmp near 0x22b0
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
    mov ax, 2
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
    mov ax, 4
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
    cmp word [bp - 0x000e], byte 1
    je short 0x22b9
    jmp near 0x238f
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
    mov ax, 2
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
    mov ax, word [bp - 0x0010]
    jmp short 0x23c6
loc_2394:
    mov word [bp - 0x022c], 5
    jmp short 0x23d3
loc_239c:
    mov word [bp - 0x022c], 2
    jmp short 0x23d3
loc_23a4:
    mov word [bp - 0x022c], 4
    jmp short 0x23d3
loc_23ac:
    mov word [bp - 0x022c], 2
    jmp short 0x23d3
loc_23b4:
    mov word [bp - 0x022c], 1
    jmp short 0x23d3
    db 0x94, 0x21, 0x9c, 0x21, 0xa4, 0x21, 0xac, 0x21, 0xb4, 0x21
    cmp ax, strict word 5
    jae short 0x23d3
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + 0x21bc]
    cmp word [bp - 0x0010], byte 4
    je short 0x23f0
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
    je short 0x243a
    mov ax, 0x227e
    push ax
    call math_loc_0992
    pop cx
    jmp short 0x244a
    mov ax, 0x22af
    push ax
    call math_loc_0992
    pop cx
    mov ax, 0x22e3
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
    mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    sub sp, byte 4
    push ds
    push es
    push si
    push di
    call 0x247a
    call 0x2501
    mov ax, word [bp - 0x0002]
    pop di
    pop si
    pop es
    pop ds
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    add byte [si - 0x32f1], dh
    adc byte [0x79a2], ch
    db 0x22, 0xb8, 0x00, 0x00 ; and bh, byte ptr [bx + si]
    push ds
    mov ds, ax
    mov bx, 0x487
    mov al, byte [bx]
    pop ds
    db 0x0a, 0xc0 ; or al, al
    je short 0x2495
    jmp near 0x24db
    cmp byte [cs:0x2279], 7
    jne short 0x24b5
    mov dx, 0x3d4
    mov al, 0xf
    out dx, al
    inc dx
    in al, dx
    db 0x86, 0xe0 ; xchg al, ah
    mov al, 0x64
    out dx, al
    nop
    nop
    nop
    in al, dx
    cmp al, 0x64
    jne short 0x24bb
    db 0x86, 0xe0 ; xchg al, ah
    out dx, al
    mov word [bp - 0x0002], 4
    ret
    mov dx, 0x3ba
    in al, dx
    and al, 0x80
    db 0x86, 0xe0 ; xchg al, ah
    mov cx, 0x1388
    in al, dx
    and al, 0x80
    db 0x3a, 0xc4 ; cmp al, ah
    jne short 0x24d5
    loop 0x24c6
    mov word [bp - 0x0002], 0
    ret
    mov word [bp - 0x0002], 8
    ret
    mov word [bp - 0x0002], 6
    db 0x33, 0xdb ; xor bx, bx
    mov ax, 0x1a00
    int 0x10
    cmp bl, 7
    je short 0x24fb
    cmp bh, 7
    je short 0x24fb
    cmp bl, 8
    je short 0x24fb
    cmp bh, 8
    jne short 0x2500
    or word [bp - 0x0002], 1
    ret
    mov ax, 0x3533
    int 0x21
    mov ax, es
    db 0x0b, 0xc3 ; or ax, bx
    je short 0x2520
    cmp byte [es:bx], 0xcf
    je short 0x2520
    mov ax, 0
    int 0x33
    db 0x0a, 0xc0 ; or al, al
    je short 0x2520
    or word [bp - 0x0002], strict word 0x1000
    ret
bios_video_loc_2521:
    push bp
    mov bp, sp
    mov ah, 7
    int 0x21
    mov ah, 0
    mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    push di
    push si
    mov ax, 0x600
    mov bh, byte [0x2647]
    db 0x33, 0xc9 ; xor cx, cx
    mov dx, 0x184f
    push bp
    int 0x10
    pop bp
    mov ah, 2
    db 0x33, 0xd2 ; xor dx, dx
    db 0x8b, 0xda ; mov bx, dx
    int 0x10
    pop si
    pop di
    db 0x8b, 0xe5 ; mov sp, bp
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
    mov ah, 2
    int 0x10
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    push di
    push si
    mov bx, word [bp + 0x4]
    mov dx, word [bp + 0x6]
    push bx
    push dx
    db 0x8a, 0xf3 ; mov dh, bl
    mov bh, 0
    mov ah, 2
    int 0x10
    mov ax, 0x50
    pop bx
    db 0x2b, 0xc3 ; sub ax, bx
    db 0x8b, 0xf0 ; mov si, ax
    mov ax, 0x18
    pop bx
    db 0x2b, 0xc3 ; sub ax, bx
    mov bl, 0x50
    imul bl
    db 0x03, 0xc6 ; add ax, si
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0x920
    mov bl, byte [0x2647]
    mov bh, 0
    int 0x10
    pop si
    pop di
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    push di
    push si
    mov bx, word [bp + 0x4]
    mov dx, word [bp + 0x6]
    push dx
    db 0x8a, 0xf3 ; mov dh, bl
    mov bh, 0
    mov ah, 2
    int 0x10
    mov ax, 0x50
    pop bx
    db 0x2b, 0xc3 ; sub ax, bx
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0x920
    mov bl, byte [0x2647]
    mov bh, 0
    int 0x10
    pop si
    pop di
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
bios_video_loc_25d3:
    push bp
    mov bp, sp
    push di
    push si
    mov bx, word [bp + 0x4]
    mov al, byte [bx]
    or al, al
    je short 0x261b
    push bx
    cmp al, 0xa
    jne short 0x25fa
    mov ah, 3
    mov bh, 0
    int 0x10
    mov dl, 0
    inc dh
    mov ah, 3
    mov bh, 0
    mov ah, 2
    int 0x10
    jmp short 0x2617
    mov ah, 9
    mov bl, byte [0x2645]
    mov bh, 0
    mov cx, 1
    int 0x10
    mov ah, 3
    mov bh, 0
    int 0x10
    inc dl
    mov ah, 3
    mov bh, 0
    mov ah, 2
    int 0x10
    pop bx
    inc bx
    jmp short 0x25db
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
    mov al, byte [bx]
    or al, al
    je short 0x2669
    push bx
    cmp al, 0xa
    jne short 0x2648
    mov ah, 3
    mov bh, 0
    int 0x10
    mov dl, 0
    inc dh
    mov ah, 3
    mov bh, 0
    mov ah, 2
    int 0x10
    jmp short 0x2665
    mov ah, 9
    mov bl, byte [0x2644]
    mov bh, 0
    mov cx, 1
    int 0x10
    mov ah, 3
    mov bh, 0
    int 0x10
    inc dl
    mov ah, 3
    mov bh, 0
    mov ah, 2
    int 0x10
    pop bx
    inc bx
    jmp short 0x2629
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    push di
    push si
    mov bx, word [bp + 0x4]
    mov al, byte [bx]
    db 0x0a, 0xc0 ; or al, al
    je short 0x26b7
    push bx
    cmp al, 0xa
    jne short 0x2696
    mov ah, 3
    mov bh, 0
    int 0x10
    mov dl, 0
    inc dh
    mov ah, 3
    mov bh, 0
    mov ah, 2
    int 0x10
    jmp short 0x26b3
    mov ah, 9
    mov bl, byte [0x2646]
    mov bh, 0
    mov cx, 1
    int 0x10
    mov ah, 3
    mov bh, 0
    int 0x10
    inc dl
    mov ah, 3
    mov bh, 0
    mov ah, 2
    int 0x10
    pop bx
    inc bx
    jmp short 0x2677
    pop si
    pop di
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    sub sp, byte 2
    push di
    push si
    mov si, word [bp + 0xa]
    mov di, word [bp + 0x8]
    mov ax, word [bp + 0x6]
    mov word [bp - 0x0002], ax
    mov ah, 0xc
    mov al, byte [bp + 0xc]
    db 0x33, 0xdb ; xor bx, bx
    mov cx, word [bp - 0x0002]
    mov dx, word [bp + 0x4]
    int 0x10
    inc word [bp - 0x0002]
    cmp si, word [bp - 0x0002]
    jae short 0x26d1
    inc word [bp + 0x4]
    cmp di, word [bp + 0x4]
    jae short 0x26cb
    pop si
    pop di
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    push di
    push si
    mov ax, word [bp + 0x4]
    mov dx, 1
    int 0x17
    pop si
    pop di
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    push di
    push si
    mov ah, 1
    int 0x16
    mov ax, 0
    je short 0x271a
    mov ax, 1
    pop si
    pop di
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
bios_video_loc_2720:
    push bp
    mov bp, sp
    push di
    push si
    mov bh, 0
    mov ah, 3
    int 0x10
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
    mov ah, 2
    int 0x10
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    push di
    push si
    mov bx, word [bp + 0xc]
    dec word [bp + 0x4]
    dec word [bp + 0x6]
    mov dx, word [bp + 0x6]
    mov ax, word [bp + 0x4]
    db 0x8a, 0xf0 ; mov dh, al
    push dx
    mov word [bp + 0x4], dx
    mov word [bx], dx
    add bx, byte 2
    mov cx, word [bp + 0xa]
    mov word [bx], cx
    add bx, byte 2
    mov cx, word [bp + 0x8]
    mov word [bx], cx
    add bx, byte 2
    push cx
    db 0x8b, 0xf1 ; mov si, cx
    db 0x8b, 0xfb ; mov di, bx
    mov dx, word [bp + 0x4]
    inc word [bp + 0x4]
    db 0x33, 0xdb ; xor bx, bx
    mov ah, 2
    int 0x10
    mov ah, 8
    int 0x10
    db 0x8b, 0xdf ; mov bx, di
    mov word [bx], ax
    add bx, byte 2
    db 0x8b, 0xce ; mov cx, si
    loop 0x2777
    pop cx
    pop dx
    inc dh
    dec word [bp + 0xa]
    je short 0x27a3
    push dx
    push cx
    jmp short 0x2777
    pop si
    pop di
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    sub sp, byte 2
    push di
    push si
    mov bx, word [bp + 0x4]
    mov dx, word [bx]
    push dx
    mov word [bp + 0x4], dx
    add bx, byte 2
    mov cx, word [bx]
    mov word [bp - 0x0002], cx
    add bx, byte 2
    mov cx, word [bx]
    add bx, byte 2
    push cx
    db 0x8b, 0xf1 ; mov si, cx
    db 0x8b, 0xfb ; mov di, bx
    mov dx, word [bp + 0x4]
    inc word [bp + 0x4]
    db 0x33, 0xdb ; xor bx, bx
    mov ah, 2
    int 0x10
    db 0x8b, 0xdf ; mov bx, di
    mov ax, word [bx]
    db 0x8a, 0xdc ; mov bl, ah
    mov bh, 0
    mov cx, 1
    mov ah, 9
    int 0x10
    db 0x8b, 0xdf ; mov bx, di
    add bx, byte 2
    db 0x8b, 0xce ; mov cx, si
    loop 0x27cb
    pop cx
    pop dx
    inc dh
    dec word [bp - 0x0002]
    je short 0x2800
    push dx
    push cx
    jmp short 0x27cb
    pop si
    pop di
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
leaf_loc_2806:
    push bp
    mov bp, sp
    add sp, byte 0xfe
    push di
    push si
    mov si, word [bp + 0x4]
    cmp byte [si], 0x20
    je short 0x281b
    cmp byte [si], 9
    jne short 0x281e
    inc si
    jmp short 0x2811
    mov word [bp - 0x0002], 0
    cmp byte [si], 0x2d
    jne short 0x2830
    mov word [bp - 0x0002], 1
    inc si
    jmp short 0x2836
    cmp byte [si], 0x2b
    jne short 0x2836
    inc si
    mov di, 0
    jmp short 0x2858
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
    mov al, byte [si]
    cbw
    mov bx, ax
    mov al, byte [bx + 0x2453]
    cbw
    test ax, 4
    jne short 0x283b
    mov ax, di
    cmp word [bp - 0x0002], byte 0
    je short 0x2871
    neg ax
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    add sp, byte 0xfc
    push di
    push si
    mov si, word [bp + 0x4]
    cmp byte [si], 0x20
    je short 0x288c
    cmp byte [si], 9
    jne short 0x288f
    inc si
    jmp short 0x2882
    mov di, 0
    cmp byte [si], 0x2d
    jne short 0x289d
    mov di, 1
    inc si
    jmp short 0x28a3
    cmp byte [si], 0x2b
    jne short 0x28a3
    inc si
    mov word [bp - 0x0002], 0
    mov word [bp - 0x0004], 0
    jmp short 0x28e2
    mov ax, word [bp - 0x0004]
    mov dx, word [bp - 0x0002]
    push ax
    xchg dx, ax
    mov bx, 0xa
    mul bx
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    mul bx
    db 0x03, 0xd1 ; add dx, cx
    push ax
    push dx
    db 0x8b, 0xde ; mov bx, si
    inc si
    mov al, byte [bx]
    cbw
    cwd
    db 0x8b, 0xc8 ; mov cx, ax
    db 0x8b, 0xda ; mov bx, dx
    pop dx
    pop ax
    db 0x03, 0xc1 ; add ax, cx
    db 0x13, 0xd3 ; adc dx, bx
    add ax, strict word 0xffd0
    adc dx, byte 0xff
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
    mov al, byte [si]
    cbw
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x2453]
    cbw
    test ax, 4
    jne short 0x28af
    mov ax, word [bp - 0x0004]
    mov dx, word [bp - 0x0002]
    test di, di
    je short 0x2902
    neg dx
    neg ax
    sbb dx, byte 0
    pop si
    pop di
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
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
    je short 0x29a8
    add word [bp + 0x6], byte 2
    mov bx, word [bp + 0x6]
    add word [bp + 0x6], byte 2
    mov di, word [bx]
    test di, di
    je short 0x29a8
    cmp word [bp - 0x0002], byte 1
    jne short 0x2979
    lea ax, word [bp - 0x0094]
    push ax
    push di
    call dos_loc_29d9
    add sp, byte 4
    jmp short 0x298b
    cmp word [bp - 0x0002], byte 2
    jne short 0x298b
    lea ax, word [bp - 0x00a4]
    push ax
    push di
    call dos_loc_29d9
    add sp, byte 4
    mov byte [si], 0x20
    inc si
    cmp byte [di], 0
    je short 0x29a3
    lea ax, word [bp - 0x0005]
    cmp ax, si
    jbe short 0x29a8
    mov al, byte [di]
    mov byte [si], al
    inc di
    inc si
    jmp short 0x298f
    inc word [bp - 0x0002]
    jmp short 0x2958
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
    int 0x21
    and ax, 0xff
    cmp byte [es:di + 0x1], 0x20
    jne short 0x29fa
    mov ax, 0xffff
    pop si
    pop di
    pop bp
    ret
dos_loc_29fe:
    push bp
    mov bp, sp
    mov ah, 0x39
    mov dx, word [bp + 0x4]
    int 0x21
    mov ax, 0
    jae short 0x2a13
    mov word [0x24d6], ax
    mov ax, 0xffff
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    mov ah, 0x3a
    jmp short 0x2a03
leaf_loc_2a1c:
    push bp
    mov bp, sp
    mov ah, 0x3b
    jmp short 0x2a03
    times 4 db 0
dos_proc_loc_2a27:
    push bp
    mov bp, sp
    push si
    push di
    pushf
    push word [0x0030]
    push word [0x002e]
    push ds
    push es
    mov word [cs:0x2823], ss
    mov word [cs:0x2825], sp
    mov ax, word [bp + 0x6]
    mov word [0x230e], ax
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0x8]
    mov word [0x2310], ax
    mov word [0x2312], es
    mov ax, word [bp + 0xa]
    mov word [0x2314], ax
    mov word [0x2316], es
    mov ax, word [bp + 0xc]
    mov word [0x2318], ax
    mov word [0x231a], es
    mov ax, ds
    mov es, ax
    mov bx, 0x230e
    mov dx, word [bp + 0x4]
    mov ax, 0x4b00
    int 0x21
    mov ss, word [cs:0x2823]
    mov sp, word [cs:0x2825]
    pop es
    pop ds
    jae short 0x2a8e
    mov word [0x24d6], ax
    mov ax, 0xffff
    jmp short 0x2a90
    sub ax, ax
    pop word [0x002e]
    pop word [0x0030]
    popf
    pop di
    pop si
    pop bp
    ret
dos_proc_loc_2a9d:
    mov ah, 0x4d
    int 0x21
    jae short 0x2aa5
    neg ax
    ret
strlen:
    push bp
    mov bp, sp
    mov dx, 0x7fff
    jmp short 0x2ab4
    push bp
    mov bp, sp
    mov dx, word [bp + 0x8]
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
    lodsb
    stosb
    test al, al
    loopne 0x2acb
    je short 0x2ad6
    sub al, al
    stosb
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
    jcxz 0x2aff
    rep movsw
    jae short 0x2b02
    movsb
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
    jcxz 0x2b2a
    lodsb
    test al, al
    je short 0x2b28
    stosb
    loop 0x2b1e
    jmp short 0x2b2a
    rep stosb
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
    jl short 0x2bc4
    cmp al, 0x7a
    jg short 0x2bc4
    sub al, 0x20
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    mov al, byte [bp + 0x4]
    db 0x2a, 0xe4 ; sub ah, ah
    cmp al, 0x41
    jl short 0x2bd8
    cmp al, 0x5a
    jg short 0x2bd8
    add al, 0x20
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    push si
    call 0x2e45
    db 0x8b, 0xf0 ; mov si, ax
    test si, si
    jne short 0x2bef
    mov ax, 0
    pop si
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push si
    push word [bp + 0x6]
    push word [bp + 0x4]
    call loc_2bfe
    add sp, byte 6
    jmp short 0x2bea
loc_2bfe:
    push bp
    mov bp, sp
    push di
    push si
    push word [bp + 0x8]
    call loc_2d0b
    pop cx
    mov si, 0x231c
    cmp byte [si], 0
    jne short 0x2c21
    mov word [0x24d6], 1
    mov ax, 0
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
    push word [bp + 0x6]
    push si
    call string_loc_3508
    add sp, byte 4
    test ax, ax
    je short 0x2c34
    add si, byte 5
    jmp short 0x2c0d
    push word [si + 0x3]
    push word [bp + 0x4]
    call loc_3381
    add sp, byte 4
    mov di, ax
    mov ax, di
    cmp ax, strict word 0xffff
    jne short 0x2c4e
    mov ax, 0
    jmp short 0x2c1b
    mov ax, di
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x7], al
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x6], 1
    mov ax, word [bp + 0x8]
    jmp short 0x2c1b
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
    push bp
    db 0x8b, 0xec ; mov bp, sp
    mov ax, 0x2357
    push ax
    push word [bp + 0x4]
    call 0x2c8e
    add sp, byte 4
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    push di
    push si
    mov si, word [bp + 0x4]
    mov di, word [bp + 0x6]
    cmp si, byte 0x0a
    jne short 0x2cb7
    push di
    mov ax, 0xd
    push ax
    call 0x2cc1
    add sp, byte 4
    cmp ax, strict word 0xffff
    jne short 0x2cb7
    mov ax, 0xffff
    pop si
    pop di
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push di
    push si
    call 0x2cc1
    add sp, byte 4
    jmp short 0x2cb1
    push bp
    db 0x8b, 0xec ; mov bp, sp
    push si
    mov si, word [bp + 0x6]
    mov ax, word [si]
    cmp ax, word [si + 0x2]
    jb short 0x2ce2
    mov ax, word [bp + 0x4]
    and ax, 0xff
    push ax
    push si
    call loc_2d86
    add sp, byte 4
    pop si
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    mov al, byte [bp + 0x4]
    push ax
    mov ax, word [si]
    inc word [si]
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    mov byte [bx], al
    cbw
    and ax, 0xff
    jmp short 0x2cdd
    push si
    mov si, 0x234a
    db 0x8b, 0xc6 ; mov ax, si
    add si, byte 0x0d
    push ax
    call loc_2d0b
    pop cx
    cmp si, strict word 0x244e
    jb short 0x2cf9
    pop si
    ret
loc_2d0b:
    push bp
    mov bp, sp
    push di
    push si
    mov si, word [bp + 0x4]
    mov di, 0
    test si, si
    jne short 0x2d23
    mov ax, 0xffff
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
    cmp byte [si + 0x6], 0
    je short 0x2d71
    mov al, byte [si + 0x6]
    cbw
    test ax, 4
    je short 0x2d3f
    mov ax, 0xffff
    push ax
    push si
    call loc_2d86
    add sp, byte 4
    mov di, ax
    mov al, byte [si + 0x7]
    cbw
    push ax
    call dos_file_loc_3869
    pop cx
    or di, ax
    mov al, byte [si + 0x6]
    cbw
    test ax, 2
    je short 0x2d5a
    push word [si + 0x4]
    call math_loc_3019
    pop cx
    mov al, byte [si + 0x6]
    cbw
    test ax, 0x20
    je short 0x2d71
    push word [si + 0xb]
    call dos_file_loc_38a0
    pop cx
    push word [si + 0xb]
    call math_loc_3019
    pop cx
    mov ax, 0
    mov word [si], 0
    mov word [si + 0x2], ax
    mov word [si + 0x4], ax
    mov byte [si + 0x6], 0
    mov ax, di
    jmp short 0x2d1d
loc_2d86:
    push bp
    mov bp, sp
    push di
    push si
    mov si, word [bp + 0x4]
    mov word [0x2500], 0x2af5
    mov al, byte [si + 0x6]
    cbw
    test ax, 0x10
    je short 0x2da6
    mov ax, 0xffff
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
    mov al, byte [si + 0x6]
    cbw
    test ax, 4
    je short 0x2dda
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
    je short 0x2dda
    or byte [si + 0x6], 0x10
    mov ax, 0
    mov word [si], 0
    mov word [si + 0x2], ax
    mov ax, 0xffff
    jmp short 0x2da0
    cmp word [bp + 0x6], byte 0xff
    jne short 0x2df3
    and byte [si + 0x6], 0xfb
    mov ax, 0
    mov word [si], 0
    mov word [si + 0x2], ax
    mov ax, 0
    jmp short 0x2da0
    cmp word [si + 0x4], byte 0
    jne short 0x2dfe
    push si
    call loc_2e63
    pop cx
    cmp word [si + 0x9], byte 1
    jne short 0x2e22
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
    jne short 0x2dc7
    mov ax, word [bp + 0x6]
    jmp near 0x2da0
    mov ax, word [si + 0x4]
    mov word [si], ax
    add ax, word [si + 0x9]
    mov word [si + 0x2], ax
    or byte [si + 0x6], 4
    mov al, byte [bp + 0x6]
    push ax
    mov ax, word [si]
    inc word [si]
    mov bx, ax
    pop ax
    mov byte [bx], al
    cbw
    and ax, 0xff
    jmp near 0x2da0
    push si
    mov si, 0x234a
    cmp byte [si + 0x6], 0
    je short 0x2e5f
    add si, byte 0x0d
    cmp si, strict word 0x244e
    jb short 0x2e5d
    mov ax, 0
    pop si
    ret
    jmp short 0x2e49
    db 0x8b, 0xc6 ; mov ax, si
    jmp short 0x2e5b
loc_2e63:
    push bp
    mov bp, sp
    add sp, byte 0xfe
    push si
    mov si, word [bp + 0x4]
    mov al, byte [si + 0x7]
    cbw
    push ax
    call loc_39e5
    pop cx
    test ax, ax
    je short 0x2e8c
    mov word [si + 0x9], 1
    mov ax, si
    add ax, strict word 8
    mov word [si + 0x4], ax
    pop si
    mov sp, bp
    pop bp
    ret
    mov ax, 0x400
    push ax
    call loc_2f1b
    pop cx
    mov word [bp - 0x0002], ax
    test ax, ax
    je short 0x2e7a
    mov word [si + 0x9], 0x400
    or byte [si + 0x6], 2
    mov ax, word [bp - 0x0002]
    mov word [si + 0x4], ax
    jmp short 0x2e87
    push bp
    db 0x8b, 0xec ; mov bp, sp
    add sp, byte 0xfc
    push di
    push si
    mov si, word [bp + 0x4]
    mov ax, word [si - 0x0002]
    and ax, strict word 0xfffe
    mov word [bp - 0x0002], ax
    db 0x2b, 0xc6 ; sub ax, si
    mov word [bp - 0x0004], ax
    cmp ax, word [bp + 0x6]
    jbe short 0x2ed7
    mov ax, word [bp + 0x6]
    mov word [bp - 0x0004], ax
    db 0x8b, 0xce ; mov cx, si
    db 0x03, 0xc8 ; add cx, ax
    mov word [bp - 0x0002], cx
    push si
    call math_loc_3019
    pop cx
    push word [bp + 0x6]
    call loc_2f1b
    pop cx
    db 0x8b, 0xf8 ; mov di, ax
    test di, di
    je short 0x2f13
    db 0x3b, 0xfe ; cmp di, si
    je short 0x2f13
    push word [bp - 0x0004]
    push di
    push si
    call 0x39a0
    add sp, byte 6
    cmp si, word [0x2536]
    ja short 0x2f13
    mov ax, word [0x2536]
    cmp ax, word [bp - 0x0002]
    jae short 0x2f13
    mov ax, word [0x2534]
    mov cx, word [0x2536]
    db 0x2b, 0xce ; sub cx, si
    db 0x8b, 0xd9 ; mov bx, cx
    mov word [bx + di], ax
    db 0x8b, 0xc7 ; mov ax, di
    pop si
    pop di
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
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
    cmp word [0x2536], byte 0
    jne short 0x2f49
    mov word [0x2538], 0x2538
    or word [0x2538], 1
    mov word [0x2536], 0x2538
    mov word [bp - 0x0006], 0
    mov si, word [0x2536]
    mov word [bp - 0x0002], si
    cmp si, word [0x244e]
    jne short 0x2fbc
    inc word [bp - 0x0006]
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 1
    jle short 0x2fbc
    mov word [bp - 0x0004], 0x400
    push word [bp - 0x0004]
    call loc_3a05
    pop cx
    mov di, ax
    mov ax, di
    cmp ax, strict word 0xffff
    jne short 0x2f84
    mov ax, 0
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
    mov ax, si
    add ax, strict word 2
    cmp di, ax
    je short 0x2f9b
    mov word [si], di
    or word [si], 1
    dec word [bp - 0x0004]
    dec word [bp - 0x0004]
    mov si, di
    mov di, si
    add di, word [bp - 0x0004]
    mov word [si], di
    mov word [di], 0x2538
    or word [di], 1
    mov word [0x244e], di
    mov bx, word [bp - 0x0002]
    mov ax, word [bx]
    and ax, strict word 0xfffe
    cmp ax, si
    jne short 0x2fbc
    mov si, bx
    test word [si], 1
    jne short 0x300c
    mov word [bp - 0x0002], si
    mov ax, word [si]
    and ax, strict word 0xfffe
    mov di, ax
    mov bx, di
    test word [bx], 1
    jne short 0x2fda
    mov ax, word [di]
    mov word [si], ax
    jmp short 0x2fc5
    sub bx, si
    mov word [bp - 0x0004], bx
    cmp bx, word [bp + 0x4]
    jb short 0x300c
    cmp bx, word [bp + 0x4]
    jbe short 0x2ffb
    mov ax, si
    add ax, word [bp + 0x4]
    mov word [si], ax
    mov bx, ax
    mov ax, word [bx]
    mov word [0x2534], ax
    mov bx, word [si]
    mov word [bx], di
    mov ax, word [si]
    mov word [0x2536], ax
    or word [si], 1
    mov ax, si
    add ax, strict word 2
    jmp near 0x2f7e
    mov ax, word [si]
    and ax, strict word 0xfffe
    mov si, ax
    jmp near 0x2f55
    jmp near 0x2f7e
math_loc_3019:
    push bp
    mov bp, sp
    push si
    mov si, word [bp + 0x4]
    add si, byte 0xfe
    test word [si], 1
    jne short 0x3031
    mov ax, 0xffff
    pop si
    mov sp, bp
    pop bp
    ret
    and word [si], strict word 0xfffe
    mov word [0x2536], si
    mov ax, 0
    jmp short 0x302c

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
    mov byte [bp - 0x000b], 0
    lodsb
    cmp al, 0x25
    je short 0x30c5
string_loc_30b3:
    test al, al
    je short 0x30bc
    call string_loc_3301
    jmp short 0x30aa
    mov ax, word [bp - 0x0002]
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
    mov byte [bp - 0x000c], 0x20
    mov byte [bp - 0x000e], 0
    mov byte [bp - 0x000d], 0
    mov word [bp - 0x0006], 0xffff
    lodsb
    cmp al, 0x2d
    jne short 0x30e1
    or byte [bp - 0x000b], 8
    jmp short 0x30d6
    cmp al, 0x2b
    jne short 0x30eb
    mov byte [bp - 0x000e], 0x2b
    jmp short 0x30d6
    cmp al, 0x20
    jne short 0x30fb
    cmp byte [bp - 0x000e], 0
    jne short 0x30d6
    mov byte [bp - 0x000e], 0x20
    jmp short 0x30d6
    cmp al, 0x23
    jne short 0x3105
    or byte [bp - 0x000b], 0x10
    jmp short 0x30d6
    cmp al, 0x30
    jne short 0x310e
    mov byte [bp - 0x000c], 0x30
    lodsb
    call string_loc_3338
    test dx, dx
    jns short 0x311b
    neg dx
    or byte [bp - 0x000b], 8
    mov word [bp - 0x0004], dx
    cmp al, 0x2e
    jne short 0x3129
    lodsb
    call string_loc_3338
    mov word [bp - 0x0006], dx
    mov di, cs
    mov es, di
    mov di, 0x2e3e
    mov cx, 0x15
    repne scasb
    sub di, strict word 0x2e3f
    shl di, 1
    jmp [cs:di + 0x2e53]
string_loc_3140:
    or byte [bp - 0x000b], 1
    lodsb
    jmp short 0x312d
string_loc_3147:
    or byte [bp - 0x000b], 2
string_loc_314b:
    lodsb
    jmp short 0x312d
string_loc_314e:
    or byte [bp - 0x000b], 4
    lodsb
    jmp short 0x312d
math_loc_3155:
    mov cx, 8
    jmp short 0x316b
math_loc_315a:
    or byte [bp - 0x000b], 0x20
math_loc_315e:
    mov cx, 0x10
    jmp short 0x316b
math_loc_3163:
    mov cx, 0xa
    jmp short 0x316b
math_loc_3168:
    mov cx, 0xff0a
    push ds
    pop es
    mov di, word [bp + 0x8]
    mov ax, word [es:di]
    add di, byte 2
    test byte [bp - 0x000b], 2
    je short 0x3184
    mov dx, word [es:di]
    add di, byte 2
    jmp short 0x318b
    sub dx, dx
    test ch, ch
    je short 0x31a4
    cwd
    test ch, ch
    je short 0x31a4
    mov ch, byte [bp - 0x000e]
    mov byte [bp - 0x000d], ch
    test dx, dx
    jns short 0x31a4
    mov byte [bp - 0x000d], 0x2d
    neg dx
    neg ax
    sbb dx, byte 0
    mov word [bp + 0x8], di
    cmp word [bp - 0x0006], byte 0
    jge short 0x31b2
    mov word [bp - 0x0006], 1
    mov ch, 0
    mov di, ss
    mov es, di
    lea di, word [bp - 0x0140]
    test dx, dx
    jne short 0x31c4
    test ax, ax
    je short 0x31e7
    sub bx, bx
    cmp cx, dx
    ja short 0x31d8
    push ax
    mov ax, dx
    sub dx, dx
    div cx
    mov bx, ax
    pop ax
    div cx
    jmp short 0x31da
    div cx
    xchg bx, dx
    mov bl, byte [cs:bx + 0x2e7d]
    dec di
    mov byte [es:di], bl
    jmp short 0x31bc
    test byte [bp - 0x000b], 0x10
    je short 0x3202
    cmp cl, 0xa
    je short 0x3202
    cmp cl, 0x10
    jne short 0x31fd
    mov byte [bp - 0x000d], 0x78
    jmp short 0x3202
    dec di
    mov byte [es:di], 0x30
    lea cx, word [bp - 0x0140]
    sub cx, di
    mov ax, word [bp - 0x0006]
    sub ax, cx
    mov word [bp - 0x0006], ax
    jle short 0x3215
    sub word [bp - 0x0004], ax
    mov word [bp - 0x0008], cx
    cmp byte [bp - 0x000d], 0
    je short 0x322a
    cmp byte [bp - 0x000d], 0x78
    jne short 0x3227
    dec word [bp - 0x0004]
    dec word [bp - 0x0004]
    sub word [bp - 0x0004], cx
    jle short 0x3249
    test byte [bp - 0x000b], 8
    jne short 0x3249
    cmp byte [bp - 0x000c], 0x30
    jne short 0x323e
    call string_loc_32eb
    mov al, byte [bp - 0x000c]
    call string_loc_3301
    dec word [bp - 0x0004]
    jg short 0x323e
    call string_loc_32eb
    dec word [bp - 0x0006]
    js short 0x3258
    mov al, 0x30
    call string_loc_3301
    jmp short 0x324c
    dec word [bp - 0x0008]
    js short 0x3266
    mov al, byte [es:di]
    inc di
    call string_loc_3301
    jmp short 0x3258
    dec word [bp - 0x0004]
    js short 0x3272
    mov al, 0x20
    call string_loc_3301
    jmp short 0x3266
    jmp near 0x30aa
loc_3275:
    or byte [bp - 0x000b], 0x20
    add al, 0x20
loc_327b:
    add word [bp + 0x8], byte 8
    mov ax, cs
    mov es, ax
    mov di, 0x2e8d
    sub word [bp - 0x0004], byte 0x0a
    jmp short 0x3258
loc_328c:
    call string_loc_331e
    push di
    mov al, 0
    mov cx, 0xffff
    repne scasb
    not cx
    dec cx
    cmp cx, word [bp - 0x0006]
    jbe short 0x32a2
    mov cx, word [bp - 0x0006]
    pop di
    mov word [bp - 0x0006], 0
    jmp near 0x3215
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
    jmp near 0x3215
string_loc_32d0:
    jmp near 0x30aa
string_loc_32d3:
    call string_loc_331e
    mov ax, word [bp - 0x0002]
    mov word [es:di], ax
    test byte [bp - 0x000b], 2
    je short 0x32e8
    mov word [es:di + 0x2], 0
    jmp near 0x30aa
string_loc_32eb:
    mov al, byte [bp - 0x000d]
    test al, al
    je short 0x331d
    cmp al, 0x78
    jne short 0x32fd
    mov al, 0x30
    call string_loc_3301
    mov al, 0x78
    mov byte [bp - 0x000d], 0
string_loc_3301:
    inc word [bp - 0x0002]
    test byte [bp - 0x000b], 0x20
    je short 0x3314
    cmp al, 0x61
    jb short 0x3314
    cmp al, 0x7a
    ja short 0x3314
    sub al, 0x20
    push es
    sub ah, ah
    push ax
    call [bp + 0x4]
    pop ax
    pop es
    ret
string_loc_331e:
    push ds
    pop es
    mov di, word [bp + 0x8]
    test byte [bp - 0x000b], 4
    jne short 0x3330
    mov di, word [di]
    add word [bp + 0x8], byte 2
    ret
string_loc_3330:
    les di, word [es:di]
    add word [bp + 0x8], byte 4
    ret
string_loc_3338:
    cmp al, 0x2a
    jne short 0x334c
    push ds
    pop es
    mov di, word [bp + 0x8]
    mov dx, word [es:di]
    add di, byte 2
    mov word [bp + 0x8], di
    lodsb
    ret
    sub dx, dx
    mov ah, 0
    cmp al, 0x30
    jb short 0x3369
    cmp al, 0x39
    ja short 0x3369
    sub al, 0x30
    shl dx, 1
    mov cx, dx
    shl dx, 1
    shl dx, 1
    add dx, cx
    add dx, ax
    lodsb
    jmp short 0x3350
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
    je short 0x339d
    mov di, 0x3c00
    mov ax, 0
    push ax
    push word [bp + 0x4]
    push di
    call dos_mem_loc_358c
    add sp, byte 6
    mov si, ax
    mov ax, si
    cmp ax, strict word 0xffff
    jne short 0x33d0
    test word [bp + 0x6], 0x100
    je short 0x33ce
    mov ax, 0
    push ax
    push word [bp + 0x4]
    mov ax, 0x3c
    push ax
    call dos_mem_loc_358c
    add sp, byte 6
    mov si, ax
    jmp short 0x33eb
    test word [bp + 0x6], 0x400
    je short 0x33eb
    push si
    call dos_file_loc_3869
    pop cx
    mov word [0x24d6], 0x13
    mov ax, 0xffff
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
    cmp si, byte 0
    jl short 0x3413
    test word [bp + 0x6], 0x800
    je short 0x340a
    mov ax, 2
    push ax
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    push si
    call dos_file_loc_3881
    add sp, byte 8
    push si
    call loc_39e5
    pop cx
    mov byte [si + 0x251a], al
    mov ax, si
    jmp short 0x33e5
    push di
    db 0x2b, 0xff ; sub di, di
    test dx, dx
    jns short 0x3426
    neg dx
    neg ax
    sbb dx, byte 0
    inc di
    test bx, bx
    jns short 0x3435
    neg bx
    neg cx
    sbb bx, byte 0
    xor di, 1
    call 0x3471
    test di, di
    je short 0x3443
    neg dx
    neg ax
    sbb dx, byte 0
    pop di
    ret
    push di
    mov di, 0
    test dx, dx
    jns short 0x3455
    neg dx
    neg ax
    sbb dx, byte 0
    inc di
    test bx, bx
    jns short 0x3460
    neg bx
    neg cx
    sbb bx, byte 0
    call 0x3471
    db 0x8b, 0xc1 ; mov ax, cx
    db 0x8b, 0xd3 ; mov dx, bx
    jmp short 0x3438
    call 0x3471
    db 0x8b, 0xc1 ; mov ax, cx
    db 0x8b, 0xd3 ; mov dx, bx
    ret
    test bx, bx
    jne short 0x3493
    db 0x3b, 0xca ; cmp cx, dx
    ja short 0x348c
    push ax
    db 0x8b, 0xc2 ; mov ax, dx
    db 0x2b, 0xd2 ; sub dx, dx
    div cx
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax
    div cx
    db 0x8b, 0xca ; mov cx, dx
    db 0x8b, 0xd3 ; mov dx, bx
    db 0x2b, 0xdb ; sub bx, bx
    ret
    div cx
    db 0x8b, 0xca ; mov cx, dx
    db 0x8b, 0xd3 ; mov dx, bx
    ret
    push di
    push si
    db 0x8b, 0xf1 ; mov si, cx
    db 0x8b, 0xfb ; mov di, bx
    push dx
    push ax
    test bh, bh
    je short 0x34ad
    db 0x8a, 0xcd ; mov cl, ch
    db 0x8a, 0xeb ; mov ch, bl
    db 0x8a, 0xdf ; mov bl, bh
    db 0x8a, 0xc4 ; mov al, ah
    db 0x8a, 0xe2 ; mov ah, dl
    db 0x8a, 0xd6 ; mov dl, dh
    db 0x2a, 0xf6 ; sub dh, dh
    shr dx, 1
    rcr ax, 1
    shr bl, 1
    rcr cx, 1
    test bl, bl
    jne short 0x34ad
    div cx
    db 0x8b, 0xc8 ; mov cx, ax
    mul si
    db 0x8b, 0xda ; mov bx, dx
    push ax
    db 0x8b, 0xc1 ; mov ax, cx
    mul di
    db 0x03, 0xd8 ; add bx, ax
    jae short 0x34f1
    dec cx
    pop ax
    db 0x8b, 0xc1 ; mov ax, cx
    mul di
    db 0x8b, 0xd8 ; mov bx, ax
    db 0x8b, 0xc1 ; mov ax, cx
    mul si
    db 0x03, 0xda ; add bx, dx
    mov es, cx
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax
    pop dx
    db 0x2b, 0xc8 ; sub cx, ax
    db 0x1b, 0xda ; sbb bx, dx
    not cx
    not bx
    add cx, byte 1
    adc bx, byte 0
    mov ax, es
    jmp near 0x3503
    db 0x8b, 0xd3 ; mov dx, bx
    db 0x8b, 0xc1 ; mov ax, cx
    pop bx
    pop cx
    db 0x2b, 0xcb ; sub cx, bx
    pop bx
    db 0x1b, 0xda ; sbb bx, dx
    jae short 0x3503
    db 0x03, 0xce ; add cx, si
    db 0x13, 0xdf ; adc bx, di
    dec ax
    db 0x2b, 0xd2 ; sub dx, dx
    pop si
    pop di
    ret
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
    lodsw
    scasw
    jne short 0x355b
    test al, al
    je short 0x3555
    test ah, ah
    jne short 0x3518
    jmp short 0x3555
    push bp
    db 0x8b, 0xec ; mov bp, sp
    mov cx, word [bp + 0x8]
    db 0x8b, 0xd1 ; mov dx, cx
    shr cx, 1
    cld
    push si
    push di
    mov si, word [bp + 0x4]
    mov di, ds
    mov es, di
    mov di, word [bp + 0x6]
    jcxz 0x354d
    lodsw
    scasw
    jne short 0x355b
    test al, al
    je short 0x3555
    test ah, ah
    loopne 0x353f
    je short 0x3555
    test dl, 1
    je short 0x3555
    cmpsb
    jne short 0x3568
    sub ax, ax
    pop di
    pop si
    pop bp
    ret
    sub di, byte 2
    scasb
    jne short 0x3568
    test al, al
    je short 0x3555
    mov al, ah
    scasb
    sbb ax, ax
    js short 0x3557
    inc ax
    jmp short 0x3557
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
    jne short 0x3598
    xchg al, ah
    cmp ah, 0xa
    jb short 0x35c4
    push si
    push es
    cmp ah, 0x47
    jne short 0x35ac
    mov dx, word [bp + 0x8]
    mov si, word [bp + 0x6]
    jmp short 0x35b2
    mov cx, word [bp + 0x8]
    mov dx, word [bp + 0x6]
    int 0x21
    mov dx, es
    pop es
    jae short 0x35c1
    mov word [0x24d6], ax
    mov ax, 0xffff
    mov dx, ax
    pop si
    pop bp
    ret
    mov dx, word [bp + 0x6]
    int 0x21
    and ax, 0xff
    pop bp
    ret
    times 4 db 0
    mov bp, 0x38e
    test bp, bp
    jne short 0x35db
    mov bp, ds
    mov word [cs:0x33d0], ds
    mov bx, word [0x0002]
    db 0x2b, 0xdd ; sub bx, bp
    cmp bx, strict word 0x1000
    jbe short 0x35fb
    lea bx, word [bp + 0x1000]
    mov ax, es
    db 0x2b, 0xd8 ; sub bx, ax
    mov ah, 0x4a
    int 0x21
    mov bx, 0x1000
    mov es, bp
    mov word [es:0x24e4], ds
    mov cl, 4
    shl bx, cl
    db 0x26, 0x83, 0x3e, 0x18, 0x25, 0x00 ; cmp word ptr es:[0x2518], 0
    je short 0x3625
    mov ax, word [es:0x2514]
    shl ax, 1
    mov bx, word [es:0x2512]
    shl bx, cl
    db 0x3b, 0xd8 ; cmp bx, ax
    ja short 0x3621
    db 0x8b, 0xd8 ; mov bx, ax
    add bx, strict word 0x2afe
    cli
    mov ss, bp
    db 0x8b, 0xe3 ; mov sp, bx
    sti
    test bx, bx
    jne short 0x3632
    mov bx, 0xffff
    mov word [es:0x24e0], bx
    db 0x26, 0x83, 0x3e, 0x18, 0x25, 0x00 ; cmp word ptr es:[0x2518], 0
    je short 0x3675
    mov si, word [es:0x2516]
    db 0x8b, 0xc3 ; mov ax, bx
    inc ax
    mov word [es:0x24d4], ax
    shl si, cl
    db 0x03, 0xde ; add bx, si
    jae short 0x3654
    mov bx, 0xffff
    mov word [es:0x24e0], bx
    add bx, byte 0x0f
    shr bx, cl
    mov ax, es
    db 0x03, 0xd8 ; add bx, ax
    mov ax, ds
    db 0x2b, 0xd8 ; sub bx, ax
    mov bp, es
    mov es, ax
    mov ah, 0x4a
    int 0x21
    jae short 0x3675
    mov al, 0xfe
    jmp near 0x3718
    mov es, bp
    cld
    mov di, 0x2534
    mov cx, 0x2afe
    db 0x2b, 0xcf ; sub cx, di
    inc cx
    shr cx, 1
    jcxz 0x3689
    db 0x2b, 0xc0 ; sub ax, ax
    rep stosw
    mov es, word [0x002c]
    db 0x2b, 0xff ; sub di, di
    mov cx, 0x7fff
    mov ah, byte [es:di]
    cmp ah, 0x3d
    je short 0x36b0
    test ah, ah
    je short 0x36a2
    repne scasb
    je short 0x3692
    mov cl, byte [0x0080]
    db 0x2a, 0xed ; sub ch, ch
    mov si, 0x81
    mov ax, 1
    jmp short 0x36b9
    db 0x2b, 0xc0 ; sub ax, ax
    stosb
    db 0x8b, 0xf7 ; mov si, di
    mov di, es
    mov ds, di
    push ax
    mov es, bp
    mov di, word [es:0x24d4]
    push di
    jcxz 0x36cc
    lodsb
    test al, al
    je short 0x36cc
    stosb
    loop 0x36c4
    db 0x2a, 0xc0 ; sub al, al
    stosb
    mov ds, bp
    inc di
    and di, strict word 0xfffe
    mov word [0x24d4], di
    mov word [0x24dc], di
    mov word [0x24de], 0x2afe
    cmp word [0x2518], byte 0
    jne short 0x36ef
    mov word [0x24de], di
    mov ax, word [0x24de]
    add ax, word [0x2514]
    mov word [0x24de], ax
    mov word [0x24d8], ds
    mov word [0x24da], cs
    call 0x381d
    jb short 0x370b
    call 0x373f
    jmp short 0x3718
    mov ah, 9
    mov dx, 0x24e6
    int 0x21
    mov al, 0xfd
    jmp short 0x3718
dos_proc_loc_3716:
    pop ax
    pop ax
    mov ah, 0x4c
    int 0x21
    jmp far [cs:0x33ce]
    times 4 db 0
    pop word [cs:0x3521]
    pop word [cs:0x3523]
    pop ds
    call 0x3738
    jmp far [cs:0x3521]
    push di
    push si
    retf
    mov ax, 0
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    push di
    push si
    mov si, word [bp + 0x4]
    mov ax, 0
    push ax
    call loc_39e5
    pop cx
    mov byte [0x251a], al
    mov ax, 1
    push ax
    call loc_39e5
    pop cx
    mov byte [0x251b], al
    mov ax, 2
    push ax
    call loc_39e5
    pop cx
    mov byte [0x251c], al
    mov ax, word [bp + 0x6]
    shl ax, 1
    inc ax
    inc ax
    push ax
    call loc_3a05
    pop cx
    mov word [0x253c], ax
    mov ax, 0x2502
    mov bx, word [0x253c]
    mov word [bx], 0x2502
    mov ax, word [bp + 0x6]
    mov word [0x253a], ax
    shl ax, 1
    mov di, word [0x253c]
    db 0x03, 0xf8 ; add di, ax
    cmp byte [si], 0x20
    je short 0x379a
    cmp byte [si], 9
    jne short 0x379d
    inc si
    jmp short 0x3790
    cmp byte [si], 0
    je short 0x37eb
    mov word [di], si
    inc di
    inc di
    inc word [0x253a]
    mov ax, 2
    push ax
    call loc_3a05
    pop cx
    cmp ax, strict word 0xffff
    jne short 0x37d1
    mov ax, 0xe
    push ax
    mov ax, 0x2503
    push ax
    mov ax, 2
    push ax
    call dos_file_loc_383a
    add sp, byte 6
    mov ax, 0xc8
    push ax
    call dos_proc_loc_3716
    pop cx
    inc si
    cmp byte [si], 0
    je short 0x37e9
    mov al, byte [si]
    cmp al, 0x20
    je short 0x37e1
    cmp al, 9
    jne short 0x37e7
    mov byte [si], 0
    inc si
    jmp short 0x37e9
    jmp short 0x37d1
    jmp short 0x3790
    mov word [di], 0
    push word [0x253c]
    push word [0x253a]
    call 0x12b5
    add sp, byte 4
    mov ax, 0
    push ax
    call dos_file_loc_380b
    pop cx
    pop si
    pop di
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
dos_file_loc_380b:
    push bp
    mov bp, sp
    call [0x2500]
    push word [bp + 0x4]
    call dos_proc_loc_3716
    pop cx
    mov sp, bp
    pop bp
    ret
    clc
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    mov ah, 0x3f
    mov bx, word [bp + 0x4]
    jmp short 0x3857
    push bp
    db 0x8b, 0xec ; mov bp, sp
    mov ah, 0x40
    mov bx, word [bp + 0x4]
    jmp short 0x3857
dos_file_loc_3833:
    push bp
    mov bp, sp
    mov ah, 0x3f
    jmp short 0x383f
dos_file_loc_383a:
    push bp
    mov bp, sp
    mov ah, 0x40
    mov bx, word [bp + 0x4]
    cmp byte [bx + 0x251a], 0
    je short 0x3857
    pop bp
    cmp ah, 0x3f
    je short 0x3853
    jmp [0x2530]
    jmp [0x252e]
    mov dx, word [bp + 0x6]
    mov cx, word [bp + 0x8]
    int 0x21
    jae short 0x3867
    mov word [0x24d6], ax
    mov ax, 0xffff
    pop bp
    ret
dos_file_loc_3869:
    push bp
    mov bp, sp
    mov ah, 0x3e
    mov bx, word [bp + 0x4]
    int 0x21
    jae short 0x387d
    mov word [0x24d6], ax
    mov ax, 0xffff
    pop bp
    ret
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
    int 0x21
    jae short 0x389e
    mov word [0x24d6], ax
    mov ax, 0xffff
    mov dx, ax
    pop bp
    ret
dos_file_loc_38a0:
    push bp
    mov bp, sp
    mov ah, 0x41
    mov dx, word [bp + 0x4]
    int 0x21
    jae short 0x38b4
    mov word [0x24d6], ax
    mov ax, 0xffff
    pop bp
    ret
    sub ax, ax
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    push di
    mov ah, 0x56
    mov dx, word [bp + 0x4]
    mov di, ds
    mov es, di
    mov di, word [bp + 0x6]
    int 0x21
    pop di
    jae short 0x38d5
    mov word [0x24d6], ax
    mov ax, 0xffff
    pop bp
    ret
    db 0x2b, 0xc0 ; sub ax, ax
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    push si
    mov si, word [0x2afc]
    test si, si
    jne short 0x3915
    mov ax, 0x104
    push ax
    mov ax, 0x253e
    push ax
    push word [bp + 0x4]
    call 0x381f
    add sp, byte 6
    db 0x8b, 0xf0 ; mov si, ax
    test si, si
    je short 0x390b
    cmp byte [si + 0x253d], 0xa
    jne short 0x390b
    dec si
    mov al, byte [0x2532]
    mov byte [si + 0x253d], al
    mov word [0x2642], 0x253e
    mov word [0x2afc], si
    cmp si, word [bp + 0x8]
    jle short 0x391d
    mov si, word [bp + 0x8]
    test si, si
    je short 0x392f
    push si
    push word [bp + 0x6]
    push word [0x2642]
    call 0x39a0
    add sp, byte 6
    add word [0x2642], si
    sub word [0x2afc], si
    db 0x8b, 0xc6 ; mov ax, si
    pop si
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    push di
    push si
    mov di, word [bp + 0x6]
    mov si, word [bp + 0x8]
    jmp short 0x3979
    db 0x8b, 0xdf ; mov bx, di
    inc di
    cmp byte [bx], 0xa
    jne short 0x3979
    db 0x8b, 0xc7 ; mov ax, di
    sub ax, word [bp + 0x6]
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x3829
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, 0x2533
    push ax
    push word [bp + 0x4]
    call 0x3829
    add sp, byte 6
    mov word [bp + 0x6], di
    db 0x8b, 0xc6 ; mov ax, si
    dec si
    test ax, ax
    jne short 0x394b
    cmp di, word [bp + 0x6]
    je short 0x3997
    db 0x8b, 0xc7 ; mov ax, di
    sub ax, word [bp + 0x6]
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call 0x3829
    add sp, byte 6
    mov ax, word [bp + 0x8]
    pop si
    pop di
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    pushf
    cld
    push si
    push di
    mov di, ds
    mov es, di
    mov si, word [bp + 0x4]
    mov di, word [bp + 0x6]
    mov cx, word [bp + 0x8]
    mov ax, es
    mov dx, ds
    db 0x3b, 0xc2 ; cmp ax, dx
    jne short 0x39d3
    db 0x3b, 0xfe ; cmp di, si
    je short 0x39df
    jb short 0x39d3
    std
    db 0x03, 0xf9 ; add di, cx
    db 0x03, 0xf1 ; add si, cx
    dec di
    dec si
    test cl, 1
    je short 0x39cf
    movsb
    dec di
    dec si
    jmp short 0x39d9
    test cl, 1
    je short 0x39d9
    movsb
    shr cx, 1
    je short 0x39df
    rep movsw
    cld
    pop di
    pop si
    popf
    pop bp
    ret
loc_39e5:
    push bp
    mov bp, sp
    mov bx, word [bp + 0x4]
    mov ax, 0x4400
    int 0x21
    jb short 0x3a01
    test dl, 0x80
    je short 0x3a01
    test dl, 3
    je short 0x3a01
    mov ax, 1
    pop bp
    ret
    sub ax, ax
    pop bp
    ret
loc_3a05:
    push bp
    mov bp, sp
    push di
    mov ax, word [bp + 0x4]
    mov di, word [0x24d4]
    test ax, ax
    jge short 0x3a1a
    sub di, ax
    jb short 0x3a2e
    jmp short 0x3a1e
    add ax, di
    jb short 0x3a2e
    push ax
    call dos_mem_loc_3a39
    pop cx
    test ax, ax
    jne short 0x3a29
    mov ax, di
    pop di
    test ax, ax
    pop bp
    ret
    mov word [0x24d6], 0xfff8
    mov ax, 0xffff
    jmp short 0x3a29
dos_mem_loc_3a39:
    push bp
    mov bp, sp
    mov ax, word [bp + 0x4]
    inc ax
    and al, 0xfe
    cmp ax, word [0x24dc]
    jb short 0x3ab8
    cmp word [0x2518], byte 0
    jne short 0x3a67
    mov bx, sp
    sub bx, word [0x2514]
    cmp ax, bx
    jae short 0x3ab8
    mov word [0x24d4], ax
    add ax, word [0x2514]
    mov word [0x24de], ax
    sub ax, ax
    pop bp
    ret
    cmp ax, word [0x24e0]
    ja short 0x3a78
    cmp ax, word [0x24d4]
    jb short 0x3a78
    mov word [0x24d4], ax
    jmp short 0x3a63
    push ax
    mov bx, ax
    mov cx, 4
    shr bx, cl
    and bx, strict word 0xfff
    add bx, byte 0x41
    and bx, strict word 0xffc0
    push bx
    push es
    mov cx, ds
    add bx, cx
    mov es, word [0x24e4]
    sub bx, word [0x24e4]
    mov ah, 0x4a
    int 0x21
    pop es
    pop bx
    pop ax
    jb short 0x3ab8
    mov word [0x24d4], ax
    test bx, 0xe000
    jne short 0x3ab8
    mov cx, 4
    shl bx, cl
    mov word [0x24e0], bx
    sub ax, ax
    pop bp
    ret
    mov word [0x24d6], 0xfff8
    mov ax, 0xffff
    test ax, ax
    pop bp
    ret
    push bp
    db 0x8b, 0xec ; mov bp, sp
    db 0x8b, 0xc4 ; mov ax, sp
    sub ax, word [bp + 0x4]
    mov word [0x2514], ax
    pop bp
    ret
    times 16 db 0
    push cs
    add byte [di], ah
    add byte [si], bh
    db 0x00, 0x53, 0x00 ; add byte ptr [bp + di], dl
    db 0x6a, 0x00 ; push 0
    add word [bx + si], strict word 0x2d30
    dec si
    dec di
    and byte [bx + 0x52], al
    inc cx
    push ax
    dec ax
    dec cx
    inc bx
    push bx
    and byte [bp + si + 0x4f], al
    inc cx
    push dx
    inc sp
    and byte [bx + si], ah
    and byte [bx + si], al
    xor word [di], bp
    push si
    inc di
    inc cx
    das
    dec bp
    inc bx
    inc di
    inc cx
    and byte [bx + si], ch
    xor dh, byte [di]
    and byte [ss:bp + di + 0x6f], al
    insb
    outsw
    jb short 0x3b44
    add byte [bp + si], dh
    sub ax, 0x4745
    inc cx
    and byte [bx + si], ah
    and byte [bx + si], ah
    and byte [bx + si], ah
    sub byte [bx + di], dh
    and byte [ss:bp + di + 0x6f], al
    insb
    outsw
    jb short 0x3b5a
    and byte [bx + si], al
    xor bp, word [di]
    inc bx
    inc di
    inc cx
    and byte [bx + si], ah
    and byte [bx + si], ah
    and byte [bx + si], ah
    sub byte [si], dh
    and byte [bp + di + 0x6f], al
    insb
    outsw
    jb short 0x3b70
    and byte [bx + si], ah
    add byte [si], dh
    sub ax, 0x4548
    push dx
    inc bx
    push bp
    dec sp
    inc bp
    push bx
    and byte [bp + si + 0x2f], al
    push di
    and byte [di + 0x6f], cl
    outsb
    outsw
    and byte [bx + si], ah
    and byte [bx + si], al
    xor ax, 0x542d
    inc cx
    dec si
    inc sp
    pop cx
    and byte [bx + si], ah
    and byte [bx + si], ah
    sub byte [bx + di], dh
    and byte [ss:bp + di + 0x6f], al
    insb
    outsw
    jb short 0x3b9f
    and byte [bx + si], al
    pushf
    add byte [bx + si + 0x4f00], ah
    dec si
    and byte [bx + si], al
    dec di
    inc si
    inc si
    add byte [si - 0x3800], dh
    add ah, bl
    add al, dh
    add byte [si], al
    add word [bx + si], bx
    add word [si], bp
    add word [bx + si + 0x1], ax
    push ax
    inc bx
    and byte [bx + di + 0x4e], cl
    push sp
    inc bp
    push dx
    dec si
    inc cx
    dec sp
    and byte [bp + di + 0x50], dl
    inc bp
    inc cx
    dec bx
    inc bp
    push dx
    add byte [bx + di + 0x44], al
    and byte [si + 0x49], cl
    inc dx
    and byte [bp + si + 0x4f], al
    inc cx
    push dx
    inc sp
    and byte [bx + si], ah
    and byte [bx + si], ah
    and byte [bx + si], ah
    and byte [bx + si], al
    inc bx
    dec di
    push si
    dec di
    pop ax
    and byte [bp + di + 0x4f], dl
    push bp
    dec si
    inc sp
    dec bp
    inc cx
    push bx
    push sp
    inc bp
    push dx
    and byte [bx + si], ah
    add byte [bp + di + 0x4f], al
    push si
    dec di
    pop ax
    and byte [bp + 0x4f], dl
    dec cx
    inc bx
    inc bp
    dec bp
    inc cx
    push bx
    push sp
    inc bp
    push dx
    and byte [bx + si], ah
    add byte [bp + di + 0x4f], dl
    push bp
    dec si
    inc sp
    and byte [bp + si + 0x4c], al
    inc cx
    push bx
    push sp
    inc bp
    push dx
    and byte [bx + si], ah
    and byte [bx + si], ah
    and byte [bx + si], ah
    add byte [bp + si + 0x4f], dl
    dec sp
    inc cx
    dec si
    inc sp
    and byte [si + 0x41], cl
    push ax
    inc bx
    sub ax, 0x2f31
    dec bp
    push sp
    sub ax, 0x3233
    add byte [bp + di + 0x4f], al
    push si
    dec di
    pop ax
    and byte [bp + di + 0x4d], dl
    dec cx
    dec cx
    and byte [bx + si], ah
    and byte [bx + si], ah
    and byte [bx + si], ah
    and byte [bx + si], ah
    and byte [bx + si], al
    dec si
    dec di
    dec si
    inc bp
    and byte [bx + si], ah
    and byte [bx + si], ah
    and byte [bx + si], ah
    and byte [bx + si], ah
    and byte [bx + si], ah
    and byte [bx + si], ah
    and byte [bx + si], ah
    and byte [bx + si], al
    pop ax
    add word [si + 0x1], bx
    dec si
    dec di
    and byte [bx + si], al
    pop cx
    inc bp
    push bx
    add byte [bp + si + 0x1], ch
    add word [bx + di], strict word 0x198
    scasw
    add si, ax
    add word [bp + 0x6c], ax
    outsw
    jo short 0x3cbf
    jns short 0x3c71
    xor ax, 0x322e
    xor ax, 0x204c
    sub byte [bp + di], dh
    xor byte [ss:bp + di + 0x29], ch
    and byte [bx + si], ah
    and byte [bx + si], al
    inc si
    insb
    outsw
    jo short 0x3cd6
    jns short 0x3c88
    xor ax, 0x322e
    xor ax, 0x2048
    sub byte [bx + di], dh
    xor cl, byte [cs:di + 0x65]
    sub word [eax], sp
    add byte [bp + 0x6c], al
    outsw
    jo short 0x3ced
    jns short 0x3c9f
    xor bp, word [0x4c35]
    and byte [bx + si], ah
    sub byte [bx], dh
    xor dh, byte [bx + si]
    db 0x6b, 0x29, 0x20 ; imul bp, word ptr [bx + di], 0x20
    and byte [bx + si], ah
    add byte [bp + 0x6c], al
    outsw
    jo short 0x3d04
    jns short 0x3cb6
    xor bp, word [0x4835]
    and byte [bx + si], ah
    sub byte [bx + di], dh
    cs xor al, 0x34
    dec bp
    sub word [gs:eax], ax
    dec ax
    popaw
    jb short 0x3d0e
    and byte [bx + si], ch
    inc si
    imul di, word [bx + si + 0x65], 0x2964
    and byte [si + 0x72], al
    imul si, word [bp + 0x65], 0x2020
    and byte [bx + si], ah
    times 4 db 0
    add byte [bx + di], al
    add byte [bp + di], al
    add byte [bp + di], al
    add byte [si], al
    add byte [0x0600], al
    add byte [bx], al
    add byte [bx + di], cl
    add byte [bp + si], cl
    add byte [bp + di], cl
    add byte [si], cl
    add byte [si], cl
    add byte [0x0e00], cl
    add byte [bx], cl
    add byte [bx + di], al
    add byte [bp + si], al
    add byte [bp + si], al
    add byte [si], al
    add byte [di], al
    add byte [di], al
    add byte [bx], al
    add byte [bx + si], cl
    add byte [bx + si], cl
    add byte [bx + di], cl
    add byte [bp + si], cl
    add byte [bp + di], cl
    add byte [di], cl
    add byte [di], cl
    add byte [bx], cl
    add byte [bx + si], dl
    add byte [bx + si], dl
    db 0x00, 0x00
    add byte [bx + di], al
    add byte [bp + si], al
    times 6 db 0
    add byte [bp + di], al
    add byte [bp + di], al
    add byte [bp + di], al
    add byte [0x0900], al
    add byte [bp + si], cl
    add byte [bp + di], cl
    add byte [bp + di], cl
    add byte [si], cl
    add byte [si], cl
    add byte [si], cl
    add byte [bp + di], al
    add byte [bp + di], al
    add byte [bp + di], al
    add byte [0x0600], al
    add byte [0x0900], al
    add byte [bx + di], cl
    add byte [bx + di], cl
    add byte [bp + si], cl
    add byte [bp + di], cl
    add byte [si], cl
    add byte [0x0e00], cl
    add byte [0x0f00], cl
    add byte [bx + si], dl
    times 4 db 0
    add byte [bx + di], al
    add byte [bx + di], al
    add byte [bp + si], al
    add byte [bp + si], al
    add byte [bp + di], al
    add byte [bp + di], al
    add byte [bp + di], al
    add byte [si], al
    add byte [si], al
    add byte [si], al
    times 8 db 0
    add byte [bx + di], al
    add byte [bx + di], al
    add byte [bx + di], al
    add byte [bx + di], al
    db 0x00, 0x00
    add byte [bx + di], al
    add byte [bp + si], al
    add byte [bp + si], al
    add byte [bx + di], al
    add byte [bp + di], al
    add byte [di], al
    add byte [bx], al
    add byte [bp + si], cl
    add byte [bx + di], al
    add byte [di], al
    add byte [bp + di], cl
    times 4 db 0
    add byte [bx + di], al
    add cl, al
    or dh, cl
    or al, dl
    or dl, dl
    or byte [bx + di], al
    add ah, dl
    or dh, bl
    or al, ah
    or dl, ah
    or byte [bx + di], al
    add ah, ah
    or dh, ch
    or al, dh
    or dl, dh
    or byte [bx + di], al
    add ah, dh
    or dh, bh
    or byte [bx + si], al
    or word [bp + si], ax
    or word [bx + di], ax
    add byte [si], al
    or word [0x1009], cx
    or word [bp + si], dx
    or word [bx + di], ax
    add byte [si], dl
    or word [0x2109], bx
    or word [bp + di], sp
    or word [bx + di], ax
    add byte [di], ah
    or word [bx], bp
    or word [bx + di], si
    or word [bp + si], di
    or word [bx + di], ax
    add byte [di], bh
    or word [bx + 0x9], ax
    dec cx
    or word [bp + si + 0x9], dx
    add word [bx + si], ax
    push bp
    or word [bx + 0x9], bx
    popaw
    or word [bp + si + 0x9], bp
    add word [bx + si], ax
    insw
    or word [bx + 0x9], si
    jns short 0x3df4
    db 0x82, 0x09, 0x01 ; or byte ptr [bx + di], 1
    add byte [di - 0x70f7], al
    or word [bx + di - 0x65f7], dx
    or word [bx + di], ax
    add byte [di - 0x58f7], bl
    or word [bx + di - 0x4df7], bp
    or word [bx + di], ax
    add byte [di - 0x40f7], dh
    or cx, ax
    or dx, cx
    or word [bp + si], ax
    add ch, cl
    or dx, bx
    or sp, bx
    or si, bx
    or word [bp + si], ax
    add al, ah
    or ax, bp
    or dx, bp
    or sp, bp
    or word [bp + si], ax
    add dh, ch
    or cx, di
    or bx, di
    or bp, di
    or word [bp + si], ax
    add bh, bh
    or word [bx + si], cx
    or cl, byte [bp + si]
    or cl, byte [si]
    or al, byte [bp + si]
    add byte [0x190a], cl
    or bl, byte [bp + di]
    or bl, byte [di]
    or al, byte [bp + si]
    add byte [bx], bl
    or ah, byte [bx]
    or ch, byte [bp + si]
    or ch, byte [si]
    or al, byte [bp + si]
    add byte [0x3a0a], ch
    or bh, byte [si]
    or bh, byte [0x020a]
    add byte [bx + si + 0xa], al
    dec sp
    or cl, byte [bp + 0xa]
    push ax
    or al, byte [bp + di]
    add byte [bp + si + 0xa], dl
    pop dx
    or bl, byte [si + 0xa]
    pop si
    or al, byte [bp + di]
    add byte [bx + si + 0xa], ah
    db 0x6b, 0x0a, 0x6d ; imul cx, word ptr [bp + si], 0x6d
    or ch, byte [bx + 0xa]
    add ax, word [bx + si]
    jno short 0x3e7d
    jl short 0x3e7f
    jle short 0x3e81
    or byte [bp + si], 3
    add byte [bp + si - 0x72f6], al
    or cl, byte [bx - 0x6ef6]
    or al, byte [bp + di]
    add byte [bp + di - 0x61f6], dl
    or ah, byte [bx + si - 0x5df6]
    or al, byte [bp + di]
    add byte [si - 0x50f6], ah
    or dh, byte [bx + di - 0x4cf6]
    or al, byte [bp + di]
    add byte [di - 0x3ff6], dh
    db 0x0a, 0xc2 ; or al, dl
    db 0x0a, 0xc4 ; or al, ah
    or al, byte [bp + di]
    add dh, al
    db 0x0a, 0xd1 ; or dl, cl
    db 0x0a, 0xd3 ; or dl, bl
    db 0x0a, 0xd5 ; or dl, ch
    or al, byte [bp + di]
    add bh, dl
    db 0x0a, 0xe2 ; or ah, dl
    db 0x0a, 0xe4 ; or ah, ah
    db 0x0a, 0xe6 ; or ah, dh
    or al, byte [bp + di]
    add al, ch
    db 0x0a, 0xf5 ; or dh, ch
    db 0x0a, 0xf7 ; or dh, bh
    db 0x0a, 0xf9 ; or bh, cl
    or al, byte [bp + di]
    add bl, bh
    or cl, byte [bx + si]
    or cx, word [bp + si]
    or cx, word [si]
    or ax, word [bp + di]
    add byte [0x1b0b], cl
    or bx, word [di]
    or bx, word [bx]
    or ax, word [bp + di]
    add byte [bx + di], ah
    or bp, word [0x300b]
    or si, word [bp + si]
    or ax, word [si]
    add byte [si], dh
    or di, word [0x470b]
    or dx, word [bx + si + 0xb]
    add al, 0
    push bx
    or bx, word [di + 0xb]
    pop di
    or sp, word [bx + di + 0xb]
    add al, 0
    arpl word [bp + di], cx
    insw
    or bp, word [bx + 0xb]
    jno short 0x3f06
    add al, 0
    jae short 0x3f0a
    db 0x7d
leaf_loc_3f00:
    or di, word [bx + 0xb]
    or word [bp + di], 4
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
    or al, 5
    or al, 4
    add byte [bx], al
    or al, 0x11
    or al, 0x15
    or al, 0x19
    or al, 4
    add byte [bp + di], bl
    or al, 0x25
    or al, 0x28
    or al, 0x2b
    or al, 4
    add byte [0x380c], ch
    or al, 0x3c
    or al, 0x40
    or al, 4
    add byte [bp + si + 0xc], al
    dec sp
    or al, 0x4e
    or al, 0x50
    or al, 4
    add byte [bp + si + 0xc], dl
    pop sp
    or al, 0x5f
    or al, 0x62
    or al, 4
    add byte [si + 0xc], ah
    outsb
    or al, 0x72
    or al, 0x76
    or al, 4
    add byte [bx + di + 0xc], bh
    or word [si], byte 0x87
    or al, 0x8b
    or al, 4
    add byte [bp - 0x67f4], cl
    or al, 0x9e
    or al, 0xa4
    or al, 4
    add byte [bx - 0x4ef4], ah
    or al, 0xb4
    or al, 0xb7
    or al, 4
    add byte [bx + di - 0x3cf4], bh
    or al, 0xc6
    or al, 0xc9
    or al, 4
    add ah, cl
    or al, 0xd6
    or al, 0xd9
    or al, 0xdc
    or al, 4
    add dh, bl
    or al, 0xe8
    or al, 0xeb
    or al, 0xee
    or al, 4
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
    ds or ax, 4
    inc ax
    or ax, 0xd4a
    dec bp
    or ax, 0xd50
    add ax, 0x5300
    or ax, 0xd5b
    pop bp
    or ax, 0xd5f
    add ax, 0x6100
    or ax, 0xd6a
    insb
    or ax, 0xd6e
    add ax, 0x7000
    or ax, 0xd7b
    jge short 0x4028
    jg short 0x402a
    add ax, 0x8100
    or ax, 0xd8c
    mov cs, word [di]
    nop
    or ax, strict word 5
    xchg dx, ax
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
    jcxz 0x4064
    in ax, 0xd
    add ax, 0xe700
    or ax, 0xdf2
    hlt
    db 0x0d, 0xf6, 0x0d, 0x05
    add al, bh
    or ax, 0xe05
    pop es
    push cs
    or word [0x0005], cx
    or cx, word [0x0e18]
    sbb cl, byte [0x0e1c]
    add ax, 0x1e00
    push cs
    sub cx, word [0x0e2d]
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
    imul cx, word [0x0006], 0xe6c
    jbe short 0x40b3
    jp short 0x40b5
    jle short 0x40b7
    push es
    add byte [bx + di - 0x74f2], al
    push cs
    lea cx, word [0x0e8f]
    push es
    add byte [bx + di - 0x64f2], dl
    push cs
    lahf
    push cs
    mov word [0x060e], ax
    add byte [bp - 0x4ff2], ah
    push cs
    mov dl, 0xe
    mov ah, 0xe
    push es
    add byte [bp - 0x3ff2], dh
    push cs
    les cx, word [0x0ec8]
    push es
    add dl, cl
    push cs
    aam 0xe
    salc
    push cs
    fmul dword [0x0006]
    fimul dword [0x0ee4]
    out 0xe, ax
    jmp far 0xec00:0x60e

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
    db 0x0d, 0x0a, 0x24, 0x3b, 0x35, 0x00, 0x54, 0x6f

leaf_loc_5fe5:
    outsw
    and byte [di + 0x61], ch
    outsb
    jns short 0x600c
    popaw
    jb short 0x6056
    jae short 0x601f
    db 0x00, 0x00
    add word [bx + si], ax
    or byte [bx + si], al
    add word [bx + si], ax
    times 20 db 0
    add cl, bl
    db 0x36, 0x3e, 0x37 ; aaa 
    or cl, byte [di]
