%include "structs/structs.inc"
%include "structs/vga.inc"
org 0
bits 16

    jmp near 3
    call 0x11f8
    retf
    call 0x126c
    retf
    call 0x1317
    retf
    call bios_mouse_loc_1308
    retf
    call bios_mouse_loc_12c9
    retf
    call 0x21cd
    retf
    call 0x2d6c
    retf
    call 0x8d2
    retf
    call 0xbae
    retf
    call 0xfb7
    retf
    call 0x217d
    retf
    call 0x293
    retf
    call 0x447
    retf
    call 0x45c
    retf
    call 0x477
    retf
    call 0x496
    retf
    call 0x4b5
    retf
    call 0x6b2
    retf
    call 0x6d9
    retf
    call 0x728
    retf
    call 0x77a
    retf
    call 0x836
    retf
    call 0x2185
    retf
    call 0x139a
    retf
    call 0x13c9
    retf
    call 0x439
    retf
    call 0x99c
    retf
    call 0x2528
    retf
    call 0x277f
    retf
    call 0x27d0
    retf
    call 0x2802
    retf
    call 0x28f0
    retf
    call 0x29f6
    retf
    call 0x2b6c
    retf
    call 0x2c0e
    retf
    call 0xf6f
    retf
    call 0x2cbe
    retf
    call 0x2d08
    retf
    call 0x2acf
    retf
    call 0x385f
    retf
    call 0x2b01
    retf
    call 0x3ba5
    retf
    call 0x3d72
    retf
    call 0x3f73
    retf
    call 0x4156
    retf
    call 0x439a
    retf
    call 0x4527
    retf
    call 0x4596
    retf
    call 0x45b2
    retf
    call 0x45fb
    retf
    call 0x478a
    retf
    call 0x481f
    retf
    call 0x4866
    retf
    call 0x487e
    retf
    call 0x4896
    retf

    db 0x80, 0x41, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x40, 0x01, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00
    db 0x30, 0x05, 0x00, 0x00, 0xd0, 0x01
    times 17 db 0
    db 0x03, 0x01, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x0b, 0x01, 0x00, 0x00, 0x0f, 0x01, 0x00, 0x00
    db 0x13, 0x01, 0x00, 0x00, 0x17, 0x01, 0x00, 0x00, 0x1b, 0x01, 0x00, 0x00, 0x1f, 0x01
    times 87 db 0
    db 0x04
    times 23 db 0
    db 0x01
    times 255 db 0

    push bp
    mov bp, sp
    sub sp, byte 0x0c
    push ds
    push es
    push si
    push di
    mov es, ax
    mov ds, ax
    xor bx, bx
    mov ax, word [cs:0x0297]
    mov cx, 0x140
    mul cx
    add ax, word [cs:0x0295]
    mov di, ax
    mov word [bp - 0x0006], ax
    xor ax, ax
    mov al, byte [bx]
    mov word [bp - 0x0002], ax
    mov al, byte [bx + 0x1]
    mov word [bp - 0x0004], ax
    mov cx, word [bx + 0xa]
    add bx, byte 0x10
    mov ax, word [bp + 0xc]
    shl ax, 1
    add bx, ax
    mov al, byte [bx]
    xor ah, ah
    mov word [bp - 0x000a], ax
    mul cx
    add ax, 0x110
    mov si, ax
    xor ah, ah
    mov al, byte [bx + 0x1]
    add word [cs:0x0295], ax
    mov word [bp - 0x000c], ax
    xor bx, bx
    mov al, byte [bx + 0x7]
    cbw
    add word [cs:0x0295], ax
    mov al, byte [bx + 0x2]
    test al, 1
    je short 0x300
    jmp near 0x3d4
    mov ax, word [cs:0x0299]
    or ax, ax
    jne short 0x30f
    mov al, byte [bx + 0x6]
    test al, 2
    jne short 0x371
    xor ax, ax
    mov al, byte [bx + 0x3]
    mov bx, word [bp - 0x000c]
    add bx, byte 7
    mov cl, 3
    shr bx, cl
    sub ax, bx
    mov word [bp - 0x000a], ax
    mov bx, word [cs:0x0291]
    mov dx, word [cs:0x0293]
    mov dh, bl
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov cx, word [bp - 0x000c]
    mov word [bp - 0x0008], cx
    lodsb
    cmp cx, byte 9
    jb short 0x344
    mov cx, 8
    sub word [bp - 0x0008], cx
    shl al, 1
    jb short 0x351
    mov byte [es:di], dh
    inc di
    jmp short 0x355
    mov byte [es:di], dl
    inc di
    loop 0x347
    mov cx, word [bp - 0x0008]
    or cx, cx
    jne short 0x338
    add si, word [bp - 0x000a]
    add word [bp - 0x0006], strict word 0x140
    mov di, word [bp - 0x0006]
    dec word [bp - 0x0004]
    jne short 0x335
    jmp near 0x431
    mov ax, word [bp - 0x000a]
    mov cx, word [bx + 0xe]
    mul cx
    add ax, word [bx + 0xc]
    mov bx, ax
    mov ax, word [cs:0x0291]
    mov dx, word [cs:0x0293]
    mov dh, al
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov cx, word [bp - 0x0002]
    mov word [bp - 0x0008], cx
    lodsb
    mov ah, byte [bx]
    inc bx
    cmp cx, byte 9
    jb short 0x3a1
    mov cx, 8
    sub word [bp - 0x0008], cx
    shl ah, 1
    jae short 0x3b8
    shl al, 1
    jb short 0x3b2
    mov byte [es:di], dh
    inc di
    jmp short 0x3bb
    mov byte [es:di], dl
    inc di
    jmp short 0x3bb
    shl al, 1
    inc di
    loop 0x3a4
    mov cx, word [bp - 0x0008]
    or cx, cx
    jne short 0x392
    add word [bp - 0x0006], strict word 0x140
    mov di, word [bp - 0x0006]
    dec word [bp - 0x0004]
    jne short 0x38f
    jmp near 0x431
    mov al, byte [bx + 0x6]
    test al, 2
    jne short 0x402
    mov ax, word [bp - 0x0002]
    sub ax, word [bp - 0x000c]
    mov word [bp - 0x000a], ax
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov cx, word [bp - 0x000c]
    rep movsb
    add si, word [bp - 0x000a]
    add word [bp - 0x0006], strict word 0x140
    mov di, word [bp - 0x0006]
    dec word [bp - 0x0004]
    jne short 0x3ea
    jmp near 0x431
    mov ax, word [bp - 0x0002]
    sub ax, word [bp - 0x000c]
    mov word [bp - 0x000a], ax
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov cx, word [bp - 0x000c]
    mov al, byte [si]
    cmp al, 0xff
    je short 0x41d
    mov byte [es:di], al
    inc si
    inc di
    loop 0x414
    add si, word [bp - 0x000a]
    add word [bp - 0x0006], strict word 0x140
    mov di, word [bp - 0x0006]
    dec word [bp - 0x0004]
    jne short 0x411
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    mov ax, word [bp + 0xc]
    mov word [cs:0x0299], ax
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    mov ax, word [bp + 0xc]
    mov word [cs:0x0293], ax
    mov ax, word [bp + 0xe]
    mov word [cs:0x0291], ax
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    push es
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    mov word [cs:0x0295], ax
    mov ax, word [bp + 0xe]
    mov word [cs:0x0297], ax
    pop es
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    push es
    mov ax, ds
    mov es, ax
    mov ax, word [cs:0x0295]
    mov bx, word [bp + 0xc]
    mov word [bx], ax
    mov ax, word [cs:0x0297]
    mov bx, word [bp + 0xe]
    mov word [bx], ax
    pop es
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    push es
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [cs:0x01e5]
    mov es, ax
    xor di, di
    mov ax, word [bp + 0xc]
    mov cx, 0xfa00
    rep stosb
    pop di
    pop es
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 0x10
    push ds
    push es
    push di
    push si
    mov ax, ds
    mov es, ax
    call bios_mouse_loc_1308
    call leaf_loc_0516
    mov ax, word [cs:0x01e5]
    mov ds, ax
    mov ax, 0xa000
    mov es, ax
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x10]
    sub ax, word [bp + 0xc]
    inc ax
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x12]
    sub ax, word [bp + 0xe]
    inc ax
    mov dx, ax
    mov di, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov si, di
    mov cx, word [bp - 0x0004]
    rep movsb
    dec dx
    jne short 0x4f5
    call math_loc_067f
    call bios_mouse_loc_12c9
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret

    db 0x00

leaf_loc_0516:
    cmp byte [cs:0x0228], 1
    jne short 0x548
    mov cx, word [cs:0x15ac]
    mov dx, word [cs:0x15ae]
    cmp word [bp + 0x10], cx
    jb short 0x548
    cmp word [bp + 0x12], dx
    jb short 0x548
    add cx, word [cs:0x15b8]
    dec cx
    add dx, word [cs:0x15ba]
    dec dx
    cmp cx, word [bp + 0xc]
    jb short 0x548
    cmp dx, word [bp + 0xe]
    jae short 0x551
    mov byte [cs:0x0615], 0
    jmp near 0x67e
    mov byte [cs:0x0615], 1
    mov cx, word [cs:0x15ac]
    mov ax, cx
    cmp word [bp + 0xc], cx
    jb short 0x566
    mov ax, word [bp + 0xc]
    mov word [bp - 0x0006], ax
    mov dx, word [cs:0x15ae]
    mov bx, dx
    cmp word [bp + 0xe], dx
    jb short 0x578
    mov bx, word [bp + 0xe]
    mov word [bp - 0x0008], bx
    sub ax, cx
    sub bx, dx
    mov word [bp - 0x000a], ax
    mov word [bp - 0x000c], bx
    mov cx, word [cs:0x15b8]
    mov dx, word [cs:0x15ba]
    sub cx, ax
    mov word [bp - 0x000e], cx
    sub dx, bx
    mov word [bp - 0x0010], dx
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000e]
    dec ax
    cmp ax, word [bp + 0x10]
    jb short 0x5af
    mov ax, word [bp + 0x10]
    sub ax, word [bp - 0x0006]
    inc ax
    mov word [bp - 0x000e], ax
    mov ax, word [bp - 0x0008]
    add ax, word [bp - 0x0010]
    dec ax
    cmp ax, word [bp + 0x12]
    jb short 0x5c5
    mov ax, word [bp + 0x12]
    sub ax, word [bp - 0x0008]
    inc ax
    mov word [bp - 0x0010], ax
    mov ax, word [bp - 0x0008]
    mov bx, 0x140
    mul bx
    add ax, word [bp - 0x0006]
    mov si, ax
    mov ax, word [bp - 0x000c]
    mov bx, word [cs:0x15b8]
    mul bx
    add ax, word [bp - 0x000a]
    add ax, word [cs:0x15b4]
    mov di, ax
    mov ax, word [cs:0x01e5]
    mov ds, ax
    mov ax, cs
    mov es, ax
    mov cx, word [bp - 0x0010]
    push cx
    push si
    push di
    mov cx, word [bp - 0x000e]
    rep movsb
    pop di
    add di, word [cs:0x15b8]
    pop si
    add si, strict word 0x140
    pop cx
    loop 0x5f3
    mov ax, cs
    mov es, ax
    mov ax, word [cs:0x01e5]
    mov ds, ax
    mov si, word [cs:0x15bc]
    mov di, word [cs:0x15b6]
    mov cx, word [cs:0x15ba]
    push cx
    push si
    mov cx, word [cs:0x15b8]
    rep movsb
    pop si
    add si, strict word 0x140
    pop cx
    loop 0x622
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov di, word [cs:0x15bc]
    mov ax, word [cs:0x1e66]
    mov ds, ax
    mov si, word [cs:0x1e64]
    mov cx, word [cs:0x15ba]
    mov ax, ds
    or ax, si
    jne short 0x65b
    mov si, 0x1e69
    mov ax, cs
    mov ds, ax
    push cx
    push di
    push si
    mov cx, word [cs:0x15b8]
    mov al, byte [si]
    cmp al, 0xff
    je short 0x66c
    mov byte [es:di], al
    inc si
    inc di
    loop 0x663
    pop si
    add si, word [cs:0x1e5c]
    pop di
    add di, strict word 0x140
    pop cx
    loop 0x65b
    ret
math_loc_067f:
    cmp byte [cs:0x0615], 0
    je short 0x6b1
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov ax, cs
    mov ds, ax
    mov di, word [cs:0x15bc]
    mov si, word [cs:0x15b6]
    mov cx, word [cs:0x15ba]
    push cx
    push di
    mov cx, word [cs:0x15b8]
    rep movsb
    pop di
    add di, strict word 0x140
    pop cx
    loop 0x6a0
    ret
    push bp
    mov bp, sp
    push ds
    push es
    mov ax, ds
    mov es, ax
    mov ax, word [cs:0x01e5]
    mov ds, ax
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov bx, ax
    mov ax, word [bp + 0x10]
    mov byte [bx], al
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 8
    push es
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x12]
    sub ax, word [bp + 0xe]
    inc ax
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x10]
    sub ax, word [bp + 0xc]
    inc ax
    mov word [bp - 0x0006], ax
    mov ax, word [bp + 0x14]
    mov di, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep stosb
    dec word [bp - 0x0004]
    jne short 0x710
    pop di
    pop es
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 8
    push es
    push ds
    push di
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov ds, ax
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x12]
    sub ax, word [bp + 0xe]
    inc ax
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x10]
    sub ax, word [bp + 0xc]
    inc ax
    mov word [bp - 0x0006], ax
    mov di, word [bp - 0x0002]
    mov si, di
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    lodsb
    not al
    stosb
    loop 0x768
    dec word [bp - 0x0004]
    jne short 0x75b
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push es
    push ds
    push di
    push si
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0x10]
    sub ax, word [bp + 0xc]
    inc ax
    mov word [bp - 0x0006], ax
    mov bx, word [bp + 0x12]
    sub bx, word [bp + 0xe]
    inc bx
    mov word [bp - 0x0004], bx
    mul bx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x000a], dx
    add ax, strict word 0xc
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov bx, ax
    mov ah, 0x48
    int 0x21
    jae short 0x7b9
    jmp near 0x7fd
    mov es, ax
    xor di, di
    mov ax, word [cs:0x01e5]
    mov ds, ax
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov word [bp - 0x0002], ax
    stosw
    xor ax, ax
    stosw
    mov ax, word [bp - 0x0004]
    stosw
    mov ax, word [bp - 0x0006]
    stosw
    mov ax, word [bp - 0x0008]
    stosw
    mov ax, word [bp - 0x000a]
    stosw
    mov si, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep movsb
    dec word [bp - 0x0004]
    jne short 0x7e5
    mov dx, es
    xor ax, ax
    jmp short 0x82e
    mov ax, cs
    mov ds, ax
    mov dx, 0x90d
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    push bx
    inc cx
    push si
    inc bp
    inc cx
    push dx
    inc bp
    inc cx
    and byte [bx + 0x75], ch
    je short 0x83d
    outsw
    db 0x66, 0x20, 0x6d, 0x65 ; and byte ptr [di + 0x65], ch
    insw
    outsw
    jb short 0x89f
    add byte [cs:bp + si], cl
    and al, 0x33
    db 0xd2, 0x8b, 0xc2
    pop si
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 8
    push es
    push ds
    push di
    push si
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xe]
    mov ds, ax
    mov si, word [bp + 0xc]
    or ax, si
    je short 0x88f
    mov ax, word [cs:0x01e5]
    mov es, ax
    lodsw
    mov word [bp - 0x0002], ax
    add si, byte 2
    lodsw
    mov word [bp - 0x0004], ax
    lodsw
    mov word [bp - 0x0006], ax
    add si, byte 4
    mov di, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep movsb
    dec word [bp - 0x0004]
    jne short 0x868
    mov ax, word [bp + 0x10]
    or ax, ax
    je short 0x8ca
    mov ax, ds
    or ax, ax
    je short 0x8ca
    mov es, ax
    mov ah, 0x49
    int 0x21
    jmp short 0x8ca
    mov ax, cs
    mov ds, ax
    mov dx, 0x99f
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    push dx
    inc bp
    push bx
    push sp
    dec di
    push dx
    inc bp
    inc cx
    push dx
    inc bp
    inc cx
    and byte [bp + di + 0x61], ah
    insb
    insb
    db 0x65, 0x64, 0x20, 0x77, 0x69 ; and byte ptr fs:[bx + 0x69], dh
    je short 0x921
    and byte [bp + 0x55], cl
    dec sp
    dec sp
    and byte [bx + si + 0x6f], dh
    imul bp, word [bp + 0x74], 0x7265
    add byte [cs:bp + si], cl
    db 0x24
    pop si
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xe]
    cmp ax, strict word 2
    je short 0x921
    cmp ax, strict word 1
    je short 0x8ed
    jmp near 0x982
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov bx, 0x251
    add bx, ax
    mov ax, word [cs:bx]
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0xbda
    add bx, ax
    mov ax, word [cs:bx]
    mov bx, word [cs:0x01e1]
    add bx, ax
    mov ds, bx
    mov ax, word [cs:0x01e5]
    mov es, ax
    xor di, di
    xor si, si
    mov cx, 0xfa00
    rep movsb
    jmp short 0x994
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov bx, 0x2d7
    add bx, ax
    mov ax, word [cs:bx]
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x2eb
    add bx, ax
    mov si, word [cs:bx]
    mov ax, si
    mov cl, 0xa
    shr ax, cl
    mov word [cs:0x3c8e], ax
    call dos_file_loc_3b90
    and si, strict word 0x3ff
    mov cl, 4
    shl si, cl
    mov bx, word [cs:0x0203]
    mov ds, bx
    mov ax, word [cs:0x01e5]
    mov es, ax
    xor di, di
    mov cx, 3
    push cx
    mov cx, 0x4000
    rep movsb
    and si, strict word 0x3fff
    inc word [cs:0x3c8e]
    mov ax, word [cs:0x3c8e]
    call dos_file_loc_3b90
    pop cx
    loop 0x962
    mov cx, 0x3a00
    rep movsb
    jmp short 0x994
    mov ax, word [cs:0x01e5]
    mov ds, ax
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov cx, 0xfa00
    mov ah, 0x3f
    int 0x21
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 8
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    test ah, 0x80
    jne short 0x9b5
    jmp near 0xa35
    neg ax
    mov bx, 0x251
    shl ax, 1
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    je short 0x9c8
    jmp near 0xa4f
    mov ax, word [cs:0x0caa]
    inc ax
    mov word [cs:0x0caa], ax
    mov word [cs:bx], ax
    mov cl, 2
    dec ax
    shl ax, cl
    mov bx, 0xbda
    add bx, ax
    mov ax, word [cs:0x0cac]
    mov word [cs:bx], ax
    mov cx, 0xfa0
    mov word [cs:bx + 0x2], cx
    mov dx, word [cs:0x0cac]
    add dx, cx
    mov word [cs:0x0cac], dx
    cmp dx, strict word 0x4180
    jb short 0xa01
    jmp near 0xa8d
    mov ax, word [bp + 0xc]
    neg ax
    shl ax, 1
    mov bx, 0x251
    add bx, ax
    mov ax, word [cs:bx]
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0xbda
    add bx, ax
    mov ax, word [cs:bx]
    add ax, word [cs:0x01e1]
    mov es, ax
    mov ax, word [cs:0x01e5]
    mov ds, ax
    xor di, di
    xor si, si
    mov cx, 0xfa00
    rep movsb
    jmp short 0xa47
    mov ax, word [cs:0x01e5]
    mov ds, ax
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov cx, 0xfa00
    mov ah, 0x40
    int 0x21
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    mov ax, cs
    mov ds, ax
    mov dx, 0xb5f
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    push bx
    inc cx
    push si
    inc bp
    pop di
    push bx
    inc bx
    push dx
    inc bp
    inc bp
    dec si
    and byte [bp + di + 0x61], ah
    insb
    insb
    db 0x65, 0x64, 0x20, 0x77, 0x69 ; and byte ptr fs:[bx + 0x69], dh
    je short 0xae1
    and byte [bp + si + 0x61], ah
    and byte [fs:bp + di + 0x6c], dh
    outsw
    je short 0xaa3
    outsb
    jne short 0xaf3
    bound sp, dword [di + 0x72]
    add byte [cs:bp + si], cl
    db 0x24
    mov ax, cs
    mov ds, ax
    mov dx, 0xb9d
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    push bx
    inc cx
    push si
    inc bp
    pop di
    push bx
    inc bx
    push dx
    inc bp
    inc bp
    dec si
    and byte [bp + di + 0x61], ah
    insb
    insb
    db 0x65, 0x64, 0x20, 0x77, 0x69 ; and byte ptr fs:[bx + 0x69], dh
    je short 0xb1f
    and byte [si + 0x61], dh
    bound bp, dword [si + 0x65]
    and byte [bp + 0x75], ah
    insb
    insb
    add byte [cs:bp + si], cl
    and al, 0
    times 231 db 0
    push bp
    mov bp, sp
    sub sp, byte 0x14
    push ds
    push es
    push di
    push si
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xe]
    cmp ax, strict word 0xa
    jb short 0xbc7
    jmp near 0xcf0
    shl ax, 1
    mov word [bp - 0x0008], ax
    mov bx, 0xbc6
    add bx, ax
    mov word [bp - 0x0002], bx
    mov ax, word [cs:bx]
    or ax, ax
    jne short 0xbde
    jmp near 0xbee
    mov ax, cs
    mov ds, ax
    mov dx, 0xe3c
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    mov ax, word [cs:0x0caa]
    inc ax
    mov word [cs:0x0caa], ax
    mov bx, word [bp - 0x0002]
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0xbda
    add bx, ax
    mov word [bp - 0x0002], bx
    mov ax, word [cs:0x0cac]
    mov word [cs:bx], ax
    mov ax, word [bp + 0x10]
    or ax, ax
    je short 0xc1b
    jmp near 0xd9a
    cld
    mov cx, 0x1000
    mov bx, word [cs:0x01e1]
    add bx, word [cs:0x0cac]
    mov ds, bx
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21
    mov bx, 0
    mov ax, word [bx]
    mov cx, 6
    mul cx
    add ax, strict word 4
    mov bx, word [bp - 0x0008]
    add bx, strict word 0x27d
    mov word [cs:bx], ax
    mov bx, ax
    sub bx, byte 6
    mov cl, byte [bx + 0x5]
    mov al, byte [bx + 0x4]
    mul cl
    mov cl, 3
    shl ax, cl
    mov cx, word [bx + 0x2]
    add ax, cx
    push ax
    xor dx, dx
    mov ax, word [bx]
    mov cx, 0x10
    mul cx
    pop cx
    add ax, cx
    adc dx, byte 0
    push ax
    push dx
    sub ax, 0x1000
    sbb dx, byte 0
    mov word [bp - 0x0008], ax
    mov word [bp - 0x0006], dx
    pop dx
    pop ax
    add ax, strict word 0xf
    adc dx, byte 0
    mov bx, 0x10
    div bx
    mov bx, word [bp - 0x0002]
    mov word [cs:bx + 0x2], ax
    add word [cs:0x0cac], ax
    mov ax, word [cs:0x0cac]
    cmp ax, 0x4180
    jae short 0xd00
    mov ax, ds
    add ax, 0x100
    mov ds, ax
    mov dx, 0
    cmp word [bp - 0x0006], byte 0
    je short 0xcdc
    dec word [bp - 0x0006]
    mov cx, 0x8000
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21
    mov ax, ds
    add ax, 0x800
    mov ds, ax
    mov cx, 0x8000
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21
    mov ax, ds
    add ax, 0x800
    mov ds, ax
    jmp short 0xcab
    mov cx, word [bp - 0x0008]
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    mov ax, cs
    mov ds, ax
    mov dx, 0xe10
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    mov ax, cs
    mov ds, ax
    mov dx, 0xe6b
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    dec sp
    dec di
    inc cx
    inc sp
    pop di
    dec bp
    inc cx
    pop dx
    inc bp
    and byte [bp + di + 0x61], ah
    insb
    insb
    db 0x65, 0x64, 0x20, 0x77, 0x69 ; and byte ptr fs:[bx + 0x69], dh
    je short 0xd90
    and byte [bp + si + 0x61], ah
    and byte [fs:bp + di + 0x6c], dh
    outsw
    je short 0xd52
    outsb
    jne short 0xda2
    bound sp, dword [di + 0x72]
    add byte [cs:bp + si], cl
    and al, 0xd
    or al, byte [bx]
    dec sp
    dec di
    inc cx
    inc sp
    pop di
    dec bp
    inc cx
    pop dx
    inc bp
    and byte [bp + di + 0x61], ah
    insb
    insb
    db 0x65, 0x64, 0x20, 0x77, 0x69 ; and byte ptr fs:[bx + 0x69], dh
    je short 0xdbc
    and byte [bp + 0x69], ah
    insb
    insb
    db 0x65, 0x64, 0x20, 0x73, 0x6c ; and byte ptr fs:[bp + di + 0x6c], dh
    outsw
    je short 0xd81
    outsb
    jne short 0xdd1
    bound sp, dword [di + 0x72]
    add byte [cs:bp + si], cl
    and al, 0xd
    or al, byte [bx]
    outsw
    outsw
    jo short 0xde5
    db 0x2e, 0x2e, 0x2e, 0x20, 0x4c, 0x4f ; and byte ptr cs:[si + 0x4f], cl
    inc cx
    inc sp
    pop di
    dec bp
    inc cx
    pop dx
    inc bp
    and byte [bp + 0x69], ah
    insb
    insb
    db 0x65, 0x64, 0x20, 0x69, 0x74 ; and byte ptr fs:[bx + di + 0x74], ch
    jae short 0xdab
    insw
    db 0x65, 0x6d ; insw word ptr es:[di], dx
    outsw
    jb short 0xe0a
    and byte [bx + di + 0x72], ah
    db 0x65, 0x61 ; popaw 
    add byte [cs:bp + si], cl
    db 0x24
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov si, 0x2c3
    add si, ax
    mov ax, word [cs:si]
    dec ax
    mov cl, 2
    shl ax, cl
    mov di, 0x2eb
    add di, ax
    mov si, word [cs:di]
    mov ax, word [cs:di + 0x2]
    mov word [cs:bx + 0x2], ax
    mov word [bp - 0x0004], ax
    mov dx, word [cs:0x01e1]
    add dx, word [cs:0x0cac]
    mov word [bp - 0x000a], dx
    mov es, dx
    add word [cs:0x0cac], ax
    mov ax, word [cs:0x0203]
    mov ds, ax
    mov ax, si
    mov cl, 0xa
    shr ax, cl
    mov word [cs:0x3c8e], ax
    call dos_file_loc_3b90
    and si, strict word 0x3ff
    mov cl, 4
    shl si, cl
    test si, 0xc000
    je short 0xe04
    inc word [cs:0x3c8e]
    mov ax, word [cs:0x3c8e]
    call dos_file_loc_3b90
    sub si, strict word 0x4000
    xor di, di
    mov cx, 0x10
    rep movsb
    mov ax, es
    inc ax
    mov es, ax
    dec word [bp - 0x0004]
    jne short 0xdee
    mov ax, word [bp - 0x000a]
    mov ds, ax
    mov bx, 0
    mov ax, word [bx]
    mov cx, 6
    mul cx
    add ax, strict word 4
    mov bx, word [bp - 0x0008]
    add bx, strict word 0x27d
    mov word [cs:bx], ax
    jmp near 0xce8
leaf_loc_0e34:
    push ax
    mov bx, 0x29b
    mov cx, 0x14
    cmp ax, word [cs:bx]
    jae short 0xe43
    dec word [cs:bx]
    inc bx
    inc bx
    loop 0xe3b
    mov bx, 0x2c3
    mov cx, 0xa
    cmp ax, word [cs:bx]
    jae short 0xe55
    dec word [cs:bx]
    inc bx
    inc bx
    loop 0xe4d
    mov bx, 0x2d7
    mov cx, 0xa
    cmp ax, word [cs:bx]
    jae short 0xe67
    dec word [cs:bx]
    inc bx
    inc bx
    loop 0xe5f
    pop ax
    ret

    times 4 db 0

loc_0e71:
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x2eb
    add bx, ax
    mov word [bp - 0x0004], bx
    mov ax, word [cs:bx + 0x2]
    sub word [cs:0x0391], ax
    mov word [bp - 0x0006], ax
    mov bx, word [bp - 0x0004]
    mov di, word [cs:bx]
    mov dx, word [cs:0x0203]
    mov es, dx
    mov ds, dx
    mov si, word [cs:bx + 0x4]
    add dx, word [cs:0x01e1]
    mov cx, word [cs:bx + 0x6]
    or cx, cx
    jne short 0xead
    jmp near 0xf2e
    push cx
    mov ax, si
    mov cl, 0xa
    shr ax, cl
    mov word [cs:0x0f6d], ax
    and si, strict word 0x3ff
    mov cl, 4
    shl si, cl
    mov ax, di
    mov cl, 0xa
    shr ax, cl
    mov word [cs:0x0f6f], ax
    and di, strict word 0x3ff
    mov cl, 4
    shl di, cl
    call loc_0f3b
    pop cx
    push cx
    mov cx, 0x10
    rep movsb
    xor dx, dx
    cmp di, strict word 0x4000
    jne short 0xeea
    inc word [cs:0x0f6f]
    inc dx
    cmp si, strict word 0x4000
    je short 0xef6
    cmp si, strict word 0x8000
    jne short 0xefc
    inc word [cs:0x0f6d]
    inc dx
    or dx, dx
    je short 0xf03
    call loc_0f3b
    pop cx
    loop 0xed6
    mov bx, word [bp - 0x0004]
    mov cx, word [bp - 0x0006]
    mov ax, word [cs:bx + 0x4]
    sub ax, cx
    mov word [cs:bx], ax
    add ax, word [cs:bx + 0x6]
    mov word [cs:bx + 0x4], ax
    mov ax, word [cs:bx + 0x6]
    mov word [cs:bx + 0x2], ax
    add bx, byte 4
    mov word [bp - 0x0004], bx
    jmp near 0xe8a
    mov bx, word [bp - 0x0004]
    xor ax, ax
    mov word [cs:bx], ax
    mov word [cs:bx + 0x2], ax
    ret
loc_0f3b:
    and di, strict word 0x3fff
    and si, strict word 0x3fff
    mov ah, 0x44
    mov al, 0
    mov bx, word [cs:0x0f6f]
    mov dx, word [cs:0x0201]
    int 0x67
    cmp bx, word [cs:0x0f6d]
    je short 0xf6e
    or si, strict word 0x4000
    mov ah, 0x44
    mov al, 1
    mov bx, word [cs:0x0f6d]
    mov dx, word [cs:0x0201]
    int 0x67
    ret
    push bp
    mov bp, sp
    sub sp, byte 8
    push ds
    push es
    push di
    push si
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    cmp ax, strict word 0xa
    jb short 0xf88
    jmp near 0xfaf
    shl ax, 1
    mov word [bp - 0x0008], ax
    mov bx, 0xbc6
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short 0xf9c
    jmp near 0xfaf
    mov word [cs:bx], 0
    mov cx, word [cs:0x0caa]
    dec cx
    mov word [cs:0x0caa], cx
    call loc_43e1
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 0x0e
    push ds
    push es
    push di
    push si
    mov ax, ds
    mov es, ax
    cld
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov word [bp - 0x0004], ax
    mov bx, 0xbc6
    add bx, ax
    mov bx, word [cs:bx]
    or bx, bx
    jne short 0xfff
    mov ax, cs
    mov ds, ax
    mov dx, 0x10ea
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21

    db 0x0d, 0x0a, 0x07
    db 'MAZE SET ERROR.', 0
    db 0x0a, 0x24

    dec bx
    mov cl, 2
    shl bx, cl
    add bx, strict word 0xbda
    mov ax, word [cs:bx]
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x12]
    cmp ax, strict word 0xffff
    je short 0x1019
    jmp near 0x10f1
    mov bx, word [bp + 0xe]
    mov ax, 5
    mul bx
    mov bx, word [bp - 0x0004]
    add bx, strict word 0x27d
    add ax, word [cs:bx]
    mov si, ax
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov ax, word [cs:0x01e1]
    add ax, word [bp - 0x0002]
    mov ds, ax
    xor ah, ah
    mov al, byte [si + 0x4]
    or ax, ax
    jne short 0x1048
    jmp near 0x11f0
    mov cl, 3
    shl ax, cl
    mov word [bp - 0x0004], ax
    mov al, byte [si + 0x1]
    cbw
    mov bl, byte [si + 0x3]
    xor bh, bh
    add ax, bx
    mov cl, 3
    shl ax, cl
    mov di, ax
    mov al, byte [si + 0x2]
    mov cx, 0x140
    mul cx
    add di, ax
    mov al, byte [si]
    mov bl, 6
    mul bl
    add ax, word [cs:0x027b]
    mov bx, ax
    xor ax, ax
    mov al, byte [bx + 0x4]
    mov cl, 3
    shl ax, cl
    mov word [bp - 0x0006], ax
    mov ax, word [bx + 0x2]
    mov dl, byte [si + 0x3]
    xor dh, dh
    shl dx, 1
    shl dx, 1
    shl dx, 1
    add ax, dx
    xor cx, cx
    mov cl, byte [bx + 0x5]
    mov dx, ds
    add dx, word [bx]
    mov ds, dx
    push cx
    mov cx, word [bp - 0x0004]
    push si
    push ax
    push di
    xchg si, ax
    xor ah, ah
    cmp word [bp + 0x10], byte 0
    je short 0x10dd
    cmp word [bp + 0x10], byte 2
    je short 0x10d0
    cmp word [bp + 0x10], byte 3
    je short 0x10c3
    lodsb
    or al, byte [es:di]
    stosb
    loop 0x10ba
    jmp short 0x10df
    lodsb
    cmp al, 0xff
    je short 0x10cb
    mov byte [es:di], ah
    inc di
    loop 0x10c3
    jmp short 0x10df
    lodsb
    cmp al, 0xff
    je short 0x10d8
    mov byte [es:di], al
    inc di
    loop 0x10d0
    jmp short 0x10df
    rep movsb
    pop di
    add di, strict word 0x140
    pop ax
    mov dx, word [bp - 0x0006]
    add ax, dx
    pop si
    pop cx
    loop 0x109e
    jmp near 0x11f0
    mov bx, word [bp + 0xe]
    mov ax, 5
    mul bx
    mov bx, word [bp - 0x0004]
    add bx, strict word 0x27d
    add ax, word [cs:bx]
    mov si, ax
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov ax, word [cs:0x01e1]
    add ax, word [bp - 0x0002]
    mov ds, ax
    mov al, byte [si]
    mov bl, 6
    mul bl
    add ax, word [cs:0x027b]
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x12]
    mov bx, 5
    mul bx
    mov bx, word [bp - 0x0004]
    add bx, strict word 0x27d
    add ax, word [cs:bx]
    mov si, ax
    xor ah, ah
    mov al, byte [si + 0x4]
    or ax, ax
    jne short 0x1142
    jmp near 0x11f0
    mov cl, 3
    shl ax, cl
    mov word [bp - 0x0004], ax
    mov al, byte [si + 0x1]
    cbw
    mov bl, byte [si + 0x3]
    xor bh, bh
    add ax, bx
    mov cl, 3
    shl ax, cl
    mov di, ax
    mov al, byte [si + 0x2]
    mov cx, 0x140
    mul cx
    add di, ax
    mov bx, word [bp - 0x0002]
    xor ax, ax
    mov al, byte [bx + 0x4]
    mov cl, 3
    shl ax, cl
    mov word [bp - 0x0006], ax
    mov cl, 3
    mov ax, word [bx + 0x2]
    xor dh, dh
    mov dl, byte [bx + 0x4]
    shl dx, cl
    dec dx
    add ax, dx
    xor dx, dx
    mov dl, byte [si + 0x3]
    shl dx, cl
    sub ax, dx
    xor cx, cx
    mov cl, byte [bx + 0x5]
    mov dx, ds
    add dx, word [bx]
    mov ds, dx
    push cx
    mov cx, word [bp - 0x0004]
    push si
    push ax
    push di
    xchg si, ax
    xor ah, ah
    cmp word [bp + 0x10], byte 0
    je short 0x11db
    cmp word [bp + 0x10], byte 2
    je short 0x11cc
    cmp word [bp + 0x10], byte 3
    je short 0x11bd
    mov al, byte [si]
    dec si
    or al, byte [es:di]
    stosb
    loop 0x11b2
    jmp short 0x11e1
    mov al, byte [si]
    dec si
    cmp al, 0xff
    je short 0x11c7
    mov byte [es:di], ah
    inc di
    loop 0x11bd
    jmp short 0x11e1
    mov al, byte [si]
    dec si
    cmp al, 0xff
    je short 0x11d6
    mov byte [es:di], al
    inc di
    loop 0x11cc
    jmp short 0x11e1
    mov al, byte [si]
    dec si
    stosb
    loop 0x11db
    pop di
    add di, strict word 0x140
    pop ax
    mov dx, word [bp - 0x0006]
    add ax, dx
    pop si
    pop cx
    loop 0x1196
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    push es
    mov ax, ds
    mov es, ax
    cmp byte [cs:0x0205], 0
    je short 0x1267
    mov ax, 0
    int 0x33
    push ds
    push es
    push di
    push si
    mov ax, 7
    xor cx, cx
    mov dx, 0x27f
    int 0x33
    mov ax, 8
    xor cx, cx
    mov dx, 0xc7
    int 0x33
    mov ax, 4
    xor cx, cx
    xor dx, dx
    int 0x33
    mov ax, 3
    int 0x33
    shr cx, 1
    mov word [cs:0x15b0], cx
    mov word [cs:0x15b2], dx
    mov ax, cs
    push ax
    mov ax, 0xffff
    mov word [cs:0x15ae], ax
    call math_loc_1e35
    pop si
    pop di
    pop es
    pop ds
    mov byte [cs:0x0228], 1
    push es
    mov ax, 0x14
    mov bx, cs
    mov es, bx
    mov cx, 0xb
    mov dx, 0x1ed4
    int 0x33
    pop es
    pop es
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    push es
    mov ax, ds
    mov es, ax
    cmp byte [cs:0x0228], 0
    je short 0x12c4
    mov byte [cs:0x0228], 0
    mov ax, 0
    int 0x33
    push ds
    push es
    push di
    push si
    mov si, word [cs:0x15b4]
    mov ax, cs
    mov ds, ax
    mov ax, 0xa000
    mov es, ax
    mov di, word [cs:0x15bc]
    mov si, word [cs:0x15b4]
    mov cx, word [cs:0x15ba]
    push cx
    push si
    push di
    mov cx, word [cs:0x15b8]
    rep movsb
    pop di
    add di, strict word 0x140
    pop si
    add si, word [cs:0x1e5c]
    pop cx
    loop 0x12a8
    pop si
    pop di
    pop es
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
bios_mouse_loc_12c9:
    push ds
    push es
    push si
    push di
    cmp byte [cs:0x0226], 1
    je short 0x12dd
    cmp byte [cs:0x0228], 1
    je short 0x12e0
    jmp near 0x12fd
    mov ax, 3
    int 0x33
    shr cx, 1
    cmp word [cs:0x15ac], cx
    jne short 0x12f5
    cmp word [cs:0x15ae], dx
    je short 0x12fd
    shl cx, 1
    mov ax, cs
    push ax
    call math_loc_1e1a
    mov byte [cs:0x0227], 0
    pop di
    pop si
    pop es
    pop ds
    ret
bios_mouse_loc_1308:
    cmp byte [cs:0x0228], 1
    jne short 0x1316
    mov byte [cs:0x0227], 1
    ret
    push bp
    mov bp, sp
    sub sp, byte 4
    push ds
    push si
    push es
    mov ax, ds
    mov es, ax
    mov word [bp - 0x0004], 1
    xor ax, ax
    cmp byte [cs:0x0228], 0
    je short 0x1393
    mov bx, word [cs:0x1ecd]
    or bx, bx
    je short 0x1352
    mov word [cs:0x1ecd], 0
    mov word [bp - 0x0002], bx
    mov cx, word [cs:0x1ecf]
    mov dx, word [cs:0x1ed1]
    jmp short 0x135e
    mov ax, 3
    int 0x33
    xor bx, bx
    mov word [bp - 0x0002], bx
    shr cx, 1
    mov bx, cx
    mov si, word [bp + 0xc]
    cmp word [si], byte 0xff
    je short 0x1391
    cmp bx, word [si]
    jb short 0x1389
    cmp dx, word [si + 0x2]
    jb short 0x1389
    cmp word [si + 0x4], bx
    jb short 0x1389
    cmp word [si + 0x6], dx
    jb short 0x1389
    mov ax, word [bp - 0x0004]
    mov bx, word [bp - 0x0002]
    or bx, bx
    je short 0x1393
    neg ax
    jmp short 0x1393
    add si, byte 8
    inc word [bp - 0x0004]
    jmp short 0x1363
    xor ax, ax
    pop es
    pop si
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 6
    push es
    mov ax, ds
    mov es, ax
    cmp byte [cs:0x0228], 0
    je short 0x13c4
    mov ax, 3
    int 0x33
    mov word [bp - 0x0002], bx
    mov bx, word [bp + 0xc]
    shr cx, 1
    mov word [bx], cx
    mov bx, word [bp + 0xe]
    mov word [bx], dx
    mov ax, word [bp - 0x0002]
    pop es
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0x10]
    cmp ax, strict word 0x51
    jb short 0x13df
    jmp near 0x1476
    mov bx, word [bp + 0x12]
    mul bx
    or dx, dx
    jne short 0x13dc
    cmp ax, 0x401
    jae short 0x13dc
    call bios_mouse_loc_1308
    mov ax, word [bp + 0xc]
    mov word [cs:0x1e64], ax
    mov ax, word [bp + 0xe]
    mov word [cs:0x1e66], ax
    mov ax, word [bp + 0x10]
    mov word [cs:0x1e5c], ax
    mov ax, word [bp + 0x12]
    mov word [cs:0x1e5e], ax
    mov ax, word [cs:0x1e64]
    or ax, word [cs:0x1e66]
    jne short 0x1428
    mov ax, cs
    mov ds, ax
    mov es, ax
    mov si, 0x1e60
    mov di, 0x1e5c
    mov cx, 4
    rep movsb
    cmp byte [cs:0x0228], 0
    je short 0x146e
    mov cx, word [bp + 0x14]
    cmp cx, byte 0xff
    je short 0x144e
    mov dx, word [bp + 0x16]
    cmp dx, byte 0xff
    je short 0x144e
    shl cx, 1
    mov ax, 4
    int 0x33
    mov ax, 3
    int 0x33
    jmp short 0x1462
    cmp byte [cs:0x0226], 0
    je short 0x1447
    mov cx, word [cs:0x15ac]
    shl cx, 1
    mov dx, word [cs:0x15ae]
    mov ax, cs
    push ax
    call math_loc_1e1a
    mov byte [cs:0x0227], 0
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    mov ax, cs
    mov ds, ax
    mov dx, 0x1586
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21

    db 0x0d, 0x0a, 0x07
    db 'Mouse pointer size out of range.', 0
    db 0x0a, 0x24
    times 8 db 0
    db 0xc4, 0x15, 0xc4, 0x19
    times 2212 db 0
    db 0x0a, 0x00, 0x0a, 0x00, 0x0a, 0x00, 0x0a
    times 13 db 0
    db 0xff, 0xff, 0xff, 0x00, 0xb3, 0xb6, 0xb6, 0xb6, 0xb6, 0x00, 0xff, 0xff, 0xff, 0x00, 0xb3, 0x13
    db 0x15, 0xb6, 0x00, 0xff, 0xff, 0xff, 0xff, 0x00, 0xb3, 0x15, 0x16, 0xb6, 0x00, 0xff, 0xff, 0xff
    db 0xff, 0x00, 0xb3, 0xb6, 0xb3, 0xb6, 0xc1, 0x00, 0xff, 0xff, 0xff, 0x00, 0xb3, 0x00, 0x00, 0xb3
    db 0xb6, 0xc1, 0x00, 0xff, 0xff, 0x00, 0x00, 0xff, 0xff, 0x00, 0xb3, 0xb6, 0xc1, 0x00, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0x00, 0xb3, 0xb6, 0xc1, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00
    db 0xb3, 0xc3, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0xff
    times 7 db 0
    db 0xfc, 0x25, 0x0a, 0x00, 0x74, 0x34, 0x2e, 0x80, 0x3e, 0xd3, 0x1e, 0x00, 0x75, 0x29, 0x2e, 0xa2
    db 0xd3, 0x1e, 0x2e, 0x89, 0x1e, 0xcd, 0x1e, 0xd1, 0xe9, 0x2e, 0x89, 0x0e, 0xcf, 0x1e, 0x2e, 0x89
    db 0x16, 0xd1, 0x1e, 0x32, 0xc0, 0x2e, 0xa2, 0xd3, 0x1e, 0x2e, 0x3b, 0x0e, 0xac, 0x15, 0x75, 0x08
    db 0x2e, 0x3b, 0x16, 0xae, 0x15, 0x75, 0x01, 0xcb, 0xd1, 0xe1, 0x2e, 0xa0, 0x27, 0x02, 0x2e, 0x0a
    db 0x06, 0x26, 0x02, 0x74, 0x01, 0xcb

math_loc_1e1a:
    cmp byte [cs:0x1ed3], 0
    je short 0x1e23
    retf
    mov al, 0xff
    mov byte [cs:0x1ed3], al
    shr cx, 1
    mov word [cs:0x15b0], cx
    mov word [cs:0x15b2], dx
math_loc_1e35:
    push bp
    mov bp, sp
    sub sp, byte 0x10
    mov ax, word [cs:0x15b2]
    mov bx, 0xc8
    sub bx, ax
    cmp bx, word [cs:0x1e5e]
    jb short 0x1e50
    mov bx, word [cs:0x1e5e]
    mov word [cs:0x15c0], bx
    mov bx, 0x140
    mul bx
    mov bx, word [cs:0x15b0]
    add ax, bx
    mov si, ax
    mov word [cs:0x15c2], ax
    mov cx, 0x140
    sub cx, bx
    cmp cx, word [cs:0x1e5c]
    jb short 0x1e78
    mov cx, word [cs:0x1e5c]
    mov word [cs:0x15be], cx
    mov di, word [cs:0x15b6]
    mov ax, cs
    mov es, ax
    mov ax, 0xa000
    mov ds, ax
    mov cx, word [cs:0x15c0]
    push cx
    push si
    mov cx, word [cs:0x15be]
    rep movsb
    pop si
    add si, strict word 0x140
    pop cx
    loop 0x1e90
    mov ax, word [cs:0x15ae]
    cmp ax, strict word 0xffff
    jne short 0x1ead
    jmp near 0x1fc7
    add ax, word [cs:0x15ba]
    dec ax
    mov word [bp - 0x0002], ax
    mov ax, word [cs:0x15ac]
    add ax, word [cs:0x15b8]
    dec ax
    mov word [bp - 0x0004], ax
    mov cx, word [cs:0x15b0]
    mov dx, word [cs:0x15b2]
    cmp word [bp - 0x0004], cx
    jb short 0x1ef1
    cmp word [bp - 0x0002], dx
    jb short 0x1ef1
    add cx, word [cs:0x15be]
    dec cx
    add dx, word [cs:0x15c0]
    dec dx
    cmp cx, word [cs:0x15ac]
    jb short 0x1ef1
    cmp dx, word [cs:0x15ae]
    jae short 0x1efa
    mov byte [cs:0x1e68], 0
    jmp near 0x1fc7
    mov byte [cs:0x1e68], 1
    mov cx, word [cs:0x15b0]
    mov ax, cx
    cmp word [cs:0x15ac], cx
    jb short 0x1f12
    mov ax, word [cs:0x15ac]
    mov word [bp - 0x0006], ax
    mov dx, word [cs:0x15b2]
    mov bx, dx
    cmp word [cs:0x15ae], dx
    jb short 0x1f28
    mov bx, word [cs:0x15ae]
    mov word [bp - 0x0008], bx
    sub ax, cx
    sub bx, dx
    mov word [bp - 0x000a], ax
    mov word [bp - 0x000c], bx
    mov cx, word [cs:0x15be]
    mov dx, word [cs:0x15c0]
    sub cx, ax
    mov word [bp - 0x000e], cx
    sub dx, bx
    mov word [bp - 0x0010], dx
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000e]
    dec ax
    cmp ax, word [bp - 0x0004]
    jb short 0x1f5f
    mov ax, word [bp - 0x0004]
    sub ax, word [bp - 0x0006]
    inc ax
    mov word [bp - 0x000e], ax
    mov ax, word [bp - 0x0008]
    add ax, word [bp - 0x0010]
    dec ax
    cmp ax, word [bp - 0x0002]
    jb short 0x1f75
    mov ax, word [bp - 0x0002]
    sub ax, word [bp - 0x0008]
    inc ax
    mov word [bp - 0x0010], ax
    mov ax, word [bp - 0x0008]
    sub ax, word [cs:0x15ae]
    mov bx, word [cs:0x15b8]
    mul bx
    add ax, word [bp - 0x0006]
    sub ax, word [cs:0x15ac]
    add ax, word [cs:0x15b4]
    mov si, ax
    mov ax, word [bp - 0x000c]
    mov bx, word [cs:0x15be]
    mul bx
    add ax, word [bp - 0x000a]
    add ax, word [cs:0x15b6]
    mov di, ax
    mov ax, cs
    mov ds, ax
    mov es, ax
    mov cx, word [bp - 0x0010]
    push cx
    push si
    push di
    mov cx, word [bp - 0x000e]
    rep movsb
    pop di
    add di, word [cs:0x15be]
    pop si
    add si, word [cs:0x15b8]
    pop cx
    loop 0x1fb0
    mov ax, 0xa000
    mov es, ax
    mov di, word [cs:0x15c2]
    mov ax, word [cs:0x1e66]
    mov ds, ax
    mov si, word [cs:0x1e64]
    mov cx, word [cs:0x15c0]
    mov ax, ds
    or ax, si
    jne short 0x1fee
    mov si, 0x1e69
    mov ax, cs
    mov ds, ax
    push di
    push si
    push cx
    push di
    push si
    mov cx, word [cs:0x15be]
    mov al, byte [si]
    cmp al, 0xff
    je short 0x2001
    mov byte [es:di], al
    inc si
    inc di
    loop 0x1ff8
    pop si
    add si, word [cs:0x1e5c]
    pop di
    add di, strict word 0x140
    pop cx
    loop 0x1ff0
    pop bx
    pop di
    mov ax, word [cs:0x15ae]
    cmp ax, strict word 0xffff
    jne short 0x2021
    jmp near 0x2139
    mov si, word [cs:0x15b6]
    mov cx, word [cs:0x15c0]
    push cx
    push di
    push si
    push bx
    mov cx, word [cs:0x15be]
    mov al, byte [bx]
    inc bx
    cmp al, 0xff
    jne short 0x2041
    mov dl, byte [cs:si]
    mov byte [es:di], dl
    inc si
    inc di
    loop 0x2034
    pop bx
    add bx, word [cs:0x1e5c]
    pop si
    add si, word [cs:0x15be]
    pop di
    add di, strict word 0x140
    pop cx
    loop 0x202b
    mov ax, cs
    mov es, ax
    mov ds, ax
    mov di, 0x1dc4
    mov cx, 0x88
    mov al, 0xff
    rep stosb
    mov ax, word [cs:0x15b8]
    add ax, strict word 7
    mov cl, 3
    shr ax, cl
    mov word [bp - 0x0002], ax
    cmp byte [cs:0x1e68], 0
    je short 0x20f1
    mov ax, word [bp - 0x0008]
    sub ax, word [cs:0x15ae]
    mov bx, word [bp - 0x0002]
    mul bx
    mov di, ax
    add di, strict word 0x1dc4
    mov ax, word [bp - 0x0006]
    sub ax, word [cs:0x15ac]
    mov bx, 0x1e4c
    cmp ax, strict word 8
    jb short 0x20a8
    sub ax, strict word 8
    inc di
    jmp short 0x209d
    mov cx, ax
    mov ah, 0xff
    shr ah, cl
    mov dx, word [bp - 0x000e]
    add dx, cx
    cmp dx, byte 8
    jb short 0x20c6
    not ah
    mov byte [bx], ah
    inc bx
    mov ah, 0xff
    sub dx, byte 8
    je short 0x20d6
    jmp short 0x20b3
    mov al, 0xff
    mov cx, 8
    sub cx, dx
    shl al, cl
    and ah, al
    not ah
    mov byte [bx], ah
    inc bx
    sub bx, strict word 0x1e4c
    mov word [bp - 0x0004], bx
    mov cx, word [bp - 0x0010]
    push cx
    push di
    mov si, 0x1e4c
    mov cx, word [bp - 0x0004]
    rep movsb
    pop di
    add di, word [bp - 0x0002]
    pop cx
    loop 0x20e0
    mov bx, 0x1dc4
    mov si, word [cs:0x15b4]
    mov di, word [cs:0x15bc]
    mov ax, 0xa000
    mov es, ax
    mov cx, word [cs:0x15ba]
    push cx
    push si
    push bx
    push di
    mov cx, word [cs:0x15b8]
    mov ah, byte [bx]
    inc bx
    mov al, 9
    dec al
    je short 0x2111
    shl ah, 1
    jae short 0x2123
    mov dl, byte [si]
    mov byte [es:di], dl
    inc di
    inc si
    loop 0x2116
    pop di
    add di, strict word 0x140
    pop bx
    add bx, word [bp - 0x0002]
    pop si
    add si, word [cs:0x15b8]
    pop cx
    loop 0x2108
    mov ax, word [cs:0x15b4]
    mov bx, word [cs:0x15b6]
    mov word [cs:0x15b6], ax
    mov word [cs:0x15b4], bx
    mov ax, word [cs:0x15b0]
    mov word [cs:0x15ac], ax
    mov ax, word [cs:0x15b2]
    mov word [cs:0x15ae], ax
    mov ax, word [cs:0x15c0]
    mov word [cs:0x15ba], ax
    mov ax, word [cs:0x15be]
    mov word [cs:0x15b8], ax
    mov ax, word [cs:0x15c2]
    mov word [cs:0x15bc], ax
    mov sp, bp
    pop bp
    xor al, al
    mov byte [cs:0x1ed3], al
    retf
    mov word [cs:0x1ecd], 0
    ret
    push bp
    mov bp, sp
    sub sp, byte 8
    push ds
    push es
    push di
    push si
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    cmp ax, strict word 0x14
    jb short 0x219e
    jmp near 0x21c5
    shl ax, 1
    mov word [bp - 0x0008], ax
    mov bx, 0x229
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short 0x21b2
    jmp near 0x21c5
    mov word [cs:bx], 0
    mov cx, word [cs:0x0caa]
    dec cx
    mov word [cs:0x0caa], cx
    call loc_43e1
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 8
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, 0x229
    add bx, ax
    mov word [bp - 0x0002], bx
    mov ax, word [cs:bx]
    or ax, ax
    je short 0x21f2
    jmp near 0x22ac
    mov ax, word [cs:0x0caa]
    inc ax
    mov word [cs:0x0caa], ax
    mov bx, word [bp - 0x0002]
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0xbda
    add bx, ax
    mov word [bp - 0x0002], bx
    mov ax, word [cs:0x0cac]
    mov word [cs:bx], ax
    mov ax, word [cs:0x01e9]
    mov ds, ax
    xor dx, dx
    mov cx, 4
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21
    xor bx, bx
    mov ax, word [bx]
    mov dx, word [bx + 0x2]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0006], dx
    mov cl, 4
    add ax, strict word 0xf
    adc dx, byte 0
    shr ax, cl
    shl dl, cl
    or ah, dl
    add word [cs:0x0cac], ax
    mov bx, word [bp - 0x0002]
    mov word [cs:bx + 0x2], ax
    mov ax, word [cs:0x0cac]
    cmp ax, 0x4180
    jb short 0x225a
    jmp near 0x22ee
    mov bx, word [bp - 0x0002]
    mov ax, word [cs:bx]
    add ax, word [cs:0x01e1]
    mov ds, ax
    mov cx, word [bp - 0x0004]
    mov dx, word [bp - 0x0006]
    mov bx, cx
    or bx, dx
    je short 0x22a4
    or dx, dx
    jne short 0x2282
    cmp cx, strict word 0x1000
    jae short 0x2282
    sub word [bp - 0x0004], cx
    jmp short 0x2292
    sub cx, strict word 0x1000
    sbb dx, byte 0
    mov word [bp - 0x0004], cx
    mov word [bp - 0x0006], dx
    mov cx, 0x1000
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21
    mov ax, ds
    add ax, 0x100
    mov ds, ax
    jmp short 0x2267
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    mov ax, word [bp + 0xe]
    mov bx, 0xa
    div bx
    or byte [cs:0x23de], al
    or byte [cs:0x23df], dl
    mov ax, cs
    mov ds, ax
    mov dx, 0x23ce
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    push ax
    imul sp, word [bp + di + 0x74], 0x7275
    and byte [gs:bp + di + 0x6c], dh
    outsw
    je short 0x22fe
    xor byte [bx + si], dh
    and byte [bp + 0x6f], ch
    je short 0x2305
    db 0x66, 0x72, 0x65 ; jb 0x234d
    db 0x65, 0x64, 0x2e, 0x00, 0x0a ; add byte ptr cs:[bp + si], cl
    db 0x24
    mov ax, cs
    mov ds, ax
    mov dx, 0x23fe
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21

    db 0x0d, 0x0a, 0x07
    db 'Memory unavailable loading picture.', 0
    db 0x0a, 0x24, 0xef, 0x9f, 0x9d, 0x9c, 0x9b, 0xff, 0x9a, 0x99, 0x48, 0x8e, 0x8d, 0x8c, 0xff, 0xff
    db 0xff, 0xff, 0x38, 0xff, 0x4f, 0xff, 0x8b, 0xff, 0xff, 0xff, 0x37, 0xff, 0xff, 0x4e, 0xff, 0x89
    db 0x88, 0xff, 0x36, 0xff, 0xff, 0x4d, 0xff, 0xff, 0xff, 0x87, 0x35, 0xff, 0xff, 0xff, 0x4c, 0xff
    db 0xff, 0x86, 0x34, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x33, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xee, 0xaf, 0xfe, 0xfd, 0xff, 0xff, 0xff, 0xff, 0x5c, 0x7e, 0x7d, 0xff, 0xbf, 0xff
    db 0xff, 0xff, 0x46, 0xff, 0x7b, 0xff, 0xbe, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0x85, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x4b, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xcb, 0xff, 0xae, 0xff, 0xfc, 0xfb, 0xff, 0xff, 0xed, 0xec, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0x5b, 0xe1, 0x70, 0x7a, 0xff, 0xbd, 0xff, 0x98, 0x45, 0xff, 0xff, 0x78, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0x84, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xf5, 0xff, 0xff, 0xad, 0xff, 0xff, 0xfa, 0xf9, 0xc8, 0xa2, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xc7, 0xeb, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x6d, 0xff, 0xbc
    db 0xff, 0x97, 0x44, 0xff, 0xff, 0xff, 0xff, 0xff, 0xbb, 0xff, 0x43, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x83, 0xff, 0xff, 0xff, 0x31, 0xff, 0xff
    db 0xff, 0xff, 0x1c, 0xff, 0xa6, 0xff, 0xac, 0xff, 0xff, 0xf8, 0xff, 0xf3, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xc6, 0xea, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xc5, 0xd5, 0xe6, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x6a, 0x67, 0xba, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xb9, 0xff, 0x42, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x82, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0x1a, 0xff, 0xff, 0xff, 0xff, 0xab, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0x29, 0xff, 0xf2, 0xff, 0xff, 0xff, 0xff, 0xff, 0x3c, 0xd4, 0xe8, 0xff, 0xff, 0xff
    db 0xff, 0xf7, 0xc3, 0xff, 0xe5, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x66
    db 0x64, 0xb8, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x81, 0x41, 0xff, 0xff, 0xff, 0xff, 0x30
    db 0xff, 0x80, 0x19, 0xff, 0xff, 0xa5, 0xff, 0xff, 0xaa, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0xf1, 0xff, 0xff, 0xff, 0xff, 0xff, 0x28, 0xff, 0xff, 0xf0, 0xff, 0xff
    db 0xff, 0xff, 0x2f, 0xff, 0xdf, 0xff, 0xff, 0xff, 0xff, 0xff, 0xc0, 0xff, 0xd1, 0xe4, 0xff, 0xff
    db 0xff, 0xf6, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x62, 0x60, 0xff, 0xff, 0xff, 0x40, 0xff, 0xff
    db 0xff, 0xff, 0x17, 0xff, 0xff, 0xff, 0xa4, 0xff, 0xff, 0xa9, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0x15, 0xff, 0xff, 0x96, 0xff, 0xff, 0x27, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xa8, 0xff, 0x26, 0xff, 0xde, 0x13, 0xff, 0x95, 0xff, 0xb6, 0x2d, 0x25, 0xdc, 0xda, 0x12
    db 0x94, 0xa7, 0x56, 0xb5, 0xb2, 0xff, 0xe3, 0xd7, 0x11, 0xff, 0x55, 0xff, 0xb1, 0xb0, 0xff, 0x52
    db 0x50, 0x10, 0x00

    push bp
    mov bp, sp
    sub sp, byte 0x24
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    call bios_mouse_loc_1308
    call leaf_loc_0516
    xor ax, ax
    mov word [bp - 0x0022], ax
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x10]
    sub ax, word [bp + 0xc]
    inc ax
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x12]
    sub ax, word [bp + 0xe]
    inc ax
    mov word [bp - 0x0006], ax
    mov si, word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    push cx
    les di, word [cs:0x01f7]
    mov cl, 3
    mov dx, word [cs:0x01e5]
    mov ds, dx
    xor ax, ax
    mov al, byte [si]
    mov word [bp - 0x0014], ax
    mov bx, ax
    shl ax, 1
    add bx, ax
    xor ax, ax
    mov al, byte [es:bx + di]
    shr ax, cl
    mov word [bp - 0x0008], ax
    mov al, byte [es:bx + di + 0x1]
    shr ax, cl
    mov word [bp - 0x000a], ax
    mov al, byte [es:bx + di + 0x2]
    shr ax, cl
    mov word [bp - 0x000c], ax
    mov dx, 0xa000
    mov ds, dx
    mov al, byte [si]
    mov word [bp - 0x0024], ax
    cmp ax, word [bp - 0x0014]
    jne short 0x25b3
    jmp near 0x273d
    mov bx, ax
    shl ax, 1
    add bx, ax
    xor ax, ax
    mov al, byte [es:bx + di]
    shr ax, cl
    mov word [bp - 0x000e], ax
    mov al, byte [es:bx + di + 0x1]
    shr ax, cl
    mov word [bp - 0x0010], ax
    mov al, byte [es:bx + di + 0x2]
    shr ax, cl
    mov word [bp - 0x0012], ax
    mov ax, word [bp - 0x000e]
    sub ax, word [bp - 0x0008]
    jne short 0x2604
    mov word [bp - 0x001c], ax
    mov word [bp - 0x0016], ax
    mov ax, word [bp - 0x0010]
    sub ax, word [bp - 0x000a]
    jne short 0x2616
    mov word [bp - 0x001e], ax
    mov word [bp - 0x0018], ax
    mov ax, word [bp - 0x0012]
    sub ax, word [bp - 0x000c]
    jne short 0x2628
    mov ax, word [bp - 0x0014]
    mov byte [si], al
    inc word [bp - 0x0022]
    jmp near 0x273d
    mov word [bp - 0x001c], ax
    or ax, ax
    jns short 0x260d
    neg ax
    mov word [bp - 0x0016], ax
    mov ax, word [bp - 0x0010]
    sub ax, word [bp - 0x000a]
    mov word [bp - 0x001e], ax
    or ax, ax
    jns short 0x261f
    neg ax
    mov word [bp - 0x0018], ax
    mov ax, word [bp - 0x0012]
    sub ax, word [bp - 0x000c]
    mov word [bp - 0x0020], ax
    or ax, ax
    jns short 0x2631
    neg ax
    mov word [bp - 0x001a], ax
    mov ax, word [bp - 0x001a]
    cmp ax, word [bp - 0x0018]
    jae short 0x263f
    jmp near 0x26cf
    cmp ax, word [bp - 0x0016]
    jb short 0x268b
    mov bx, 0xffff
    mov ax, word [bp - 0x0020]
    or ax, ax
    jns short 0x2650
    neg bx
    add word [bp - 0x0012], bx
    mov bx, 0xffff
    mov ax, word [bp - 0x0016]
    shl ax, 1
    cmp ax, word [bp - 0x001a]
    jb short 0x266c
    mov ax, word [bp - 0x001c]
    or ax, ax
    jns short 0x2669
    neg bx
    add word [bp - 0x000e], bx
    mov bx, 0xffff
    mov ax, word [bp - 0x0018]
    shl ax, 1
    cmp ax, word [bp - 0x001a]
    jb short 0x2688
    mov bx, 0xffff
    mov ax, word [bp - 0x001e]
    or ax, ax
    jns short 0x2685
    neg bx
    add word [bp - 0x0010], bx
    jmp near 0x271a
    mov bx, 0xffff
    mov ax, word [bp - 0x001c]
    or ax, ax
    jns short 0x2697
    neg bx
    add word [bp - 0x000e], bx
    mov bx, 0xffff
    mov ax, word [bp - 0x001a]
    shl ax, 1
    cmp ax, word [bp - 0x0016]
    jb short 0x26b3
    mov ax, word [bp - 0x0020]
    or ax, ax
    jns short 0x26b0
    neg bx
    add word [bp - 0x0012], bx
    mov bx, 0xffff
    mov ax, word [bp - 0x0018]
    shl ax, 1
    cmp ax, word [bp - 0x0016]
    jb short 0x26cc
    mov ax, word [bp - 0x001e]
    or ax, ax
    jns short 0x26c9
    neg bx
    add word [bp - 0x0010], bx
    jmp near 0x271a
    mov ax, word [bp - 0x0016]
    cmp ax, word [bp - 0x0018]
    jb short 0x26d9
    jmp short 0x268b
    mov bx, 0xffff
    mov ax, word [bp - 0x001e]
    or ax, ax
    jns short 0x26e5
    neg bx
    add word [bp - 0x0010], bx
    mov bx, 0xffff
    mov ax, word [bp - 0x001a]
    shl ax, 1
    cmp ax, word [bp - 0x0018]
    jb short 0x2701
    mov ax, word [bp - 0x0020]
    or ax, ax
    jns short 0x26fe
    neg bx
    add word [bp - 0x0012], bx
    mov bx, 0xffff
    mov ax, word [bp - 0x0016]
    shl ax, 1
    cmp ax, word [bp - 0x0018]
    jb short 0x271a
    mov ax, word [bp - 0x001c]
    or ax, ax
    jns short 0x2717
    neg bx
    add word [bp - 0x000e], bx
    mov bx, word [bp - 0x000e]
    mov cl, 6
    shl bx, cl
    mov ax, word [bp - 0x0010]
    mov cl, 3
    shl ax, cl
    add bx, ax
    add bx, word [bp - 0x0012]
    add bx, strict word 0x2427
    mov al, byte [cs:bx]
    cmp al, 0xff
    je short 0x2754
    mov byte [si], al
    inc word [bp - 0x0022]
    inc si
    pop cx
    loop 0x2751
    add word [bp - 0x0002], strict word 0x140
    mov si, word [bp - 0x0002]
    dec word [bp - 0x0006]
    je short 0x2757
    jmp near 0x2566
    jmp near 0x2569
    jmp near 0x25d5
    mov ax, word [bp - 0x0022]
    or ax, ax
    je short 0x2771
    mov ax, word [bp + 0x14]
    or ax, ax
    je short 0x276e
    push word [bp + 0x14]
    call far [cs:0x01fb]
    pop ax
    jmp near 0x253c
    call math_loc_067f
    call bios_mouse_loc_12c9
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xe]
    cmp ax, strict word 0xffff
    jne short 0x27b3
    les di, word [cs:0x01f7]
    mov ax, word [bp + 0xc]
    mov bx, ax
    shl ax, 1
    add bx, ax
    mov al, byte [es:bx + di]
    mov dh, al
    mov al, byte [es:bx + di + 0x1]
    mov ch, al
    mov al, byte [es:bx + di + 0x2]
    mov cl, al
    jmp short 0x27c0
    mov cx, word [bp + 0x12]
    mov bx, word [bp + 0x10]
    mov ch, bl
    mov bx, word [bp + 0xe]
    mov dh, bl
    mov bx, word [bp + 0xc]
    mov ax, 0x1010
    int 0x10
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov bx, word [bp + 0xc]
    mov ax, 0x1015
    int 0x10
    mov bx, word [bp + 0xe]
    xor ah, ah
    mov al, dh
    mov word [bx], ax
    mov al, ch
    mov bx, word [bp + 0x10]
    mov word [bx], ax
    mov al, cl
    mov bx, word [bp + 0x12]
    mov word [bx], ax
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ah, 0x48
    mov bx, 0x30
    int 0x21
    jae short 0x281c
    jmp near 0x28ba
    mov word [bp - 0x0002], ax
    mov ax, 0x1017
    xor bx, bx
    mov cx, 0x100
    mov dx, word [bp - 0x0002]
    mov es, dx
    xor dx, dx
    int 0x10
    mov ax, word [bp - 0x0002]
    mov ds, ax
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0002]
    mov ds, ax
    xor si, si
    les di, word [cs:0x01f7]
    mov cx, 0x100
    push cx
    mov cx, 3
    mov al, byte [si]
    cmp al, byte [es:di]
    je short 0x2864
    mov word [bp - 0x0004], 1
    cmp al, byte [es:di]
    jb short 0x2862
    dec byte [si]
    jmp short 0x2864
    inc byte [si]
    inc si
    inc di
    loop 0x284d
    pop cx
    loop 0x2849
    mov ax, word [bp - 0x0004]
    or ax, ax
    je short 0x28a9
    mov ax, word [bp - 0x0002]
    mov ds, ax
    xor si, si
    mov cx, 0x300
    mov dx, 0x3c8
    mov al, 0
    out dx, al
    mov dx, 0x3da
    in al, dx
    test al, 1
    jne short 0x2882
    mov dx, 0x3da
    in al, dx
    test al, 1
    je short 0x288a
    lodsb
    mov dx, 0x3c9
    out dx, al
    loop 0x2882
    mov ax, word [bp + 0xc]
    or ax, ax
    je short 0x28a7
    push ax
    call far [cs:0x01fb]
    pop ax
    jmp short 0x2835
    mov bx, word [bp - 0x0002]
    mov es, bx
    mov ah, 0x49
    int 0x21
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    mov ax, cs
    mov ds, ax
    mov dx, 0x29ca
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    dec bp
    db 0x65, 0x6d ; insw word ptr es:[di], dx
    outsw
    jb short 0x294c
    and byte [di + 0x6e], dh
    popaw
    jbe short 0x293a
    imul bp, word [si + 0x61], 0x6c62
    and byte [gs:bx + di + 0x6e], ch
    and byte [bp + 0x61], ah
    db 0x64, 0x65, 0x5f ; pop di
    imul bp, word [bp + 0x28], 0x2e29
    add byte [bp + si], cl
    db 0x24
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    lea di, word [bp - 0x000a]
    mov ax, word [bp + 0xc]
    mov word [ss:di], ax
    add di, byte 2
    mov ax, word [bp + 0xe]
    mov word [ss:di], ax
    add di, byte 2
    mov ax, word [bp + 0x10]
    mov word [ss:di], ax
    mov ah, 0x48
    mov bx, 0x30
    int 0x21
    jae short 0x2925
    jmp near 0x29bf
    mov word [bp - 0x0002], ax
    mov ax, 0x1017
    xor bx, bx
    mov cx, 0x100
    mov dx, word [bp - 0x0002]
    mov es, dx
    xor dx, dx
    int 0x10
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0002]
    mov ds, ax
    xor si, si
    mov cx, 0x100
    push cx
    mov cx, 3
    lea di, word [bp - 0x000a]
    xor ax, ax
    mov al, byte [si]
    cmp ax, word [ss:di]
    je short 0x2968
    mov word [bp - 0x0004], 1
    cmp ax, word [ss:di]
    jb short 0x2966
    dec byte [si]
    jmp short 0x2968
    inc byte [si]
    inc di
    inc di
    inc si
    loop 0x294f
    pop cx
    loop 0x2948
    mov ax, word [bp - 0x0004]
    or ax, ax
    je short 0x29ae
    mov ax, word [bp - 0x0002]
    mov ds, ax
    xor si, si
    mov cx, 0x300
    mov dx, 0x3c8
    mov al, 0
    out dx, al
    mov dx, 0x3da
    in al, dx
    test al, 1
    jne short 0x2987
    mov dx, 0x3da
    in al, dx
    test al, 1
    je short 0x298f
    lodsb
    mov dx, 0x3c9
    out dx, al
    loop 0x2987
    mov ax, word [bp + 0x12]
    or ax, ax
    je short 0x2939
    push ax
    call far [cs:0x01fb]
    pop ax
    jmp short 0x2939
    mov bx, word [bp - 0x0002]
    mov es, bx
    mov ah, 0x49
    int 0x21
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    mov ax, cs
    mov ds, ax
    mov dx, 0x2acf
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    dec bp
    db 0x65, 0x6d ; insw word ptr es:[di], dx
    outsw
    jb short 0x2a51
    and byte [di + 0x6e], dh
    popaw
    jbe short 0x2a3f
    imul bp, word [si + 0x61], 0x6c62
    and byte [gs:bx + di + 0x6e], ch
    and byte [bp + 0x61], ah
    db 0x64, 0x65, 0x5f ; pop di
    outsw
    jne short 0x2a64
    sub byte [bx + di], ch
    add byte [cs:bp + si], cl
    db 0x24
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    cmp ax, strict word 0xffff
    jne short 0x2a33
    lds si, word [cs:0x01f7]
    mov cx, 0x300
    mov dx, 0x3c8
    mov al, 0
    out dx, al
    mov dx, 0x3da
    in al, dx
    test al, 1
    jne short 0x2a1a
    mov dx, 0x3da
    in al, dx
    test al, 1
    je short 0x2a22
    lodsb
    mov dx, 0x3c9
    out dx, al
    loop 0x2a1a
    jmp short 0x2a8f
    mov ah, 0x48
    mov bx, 0x30
    int 0x21
    jae short 0x2a3f
    jmp near 0x2a97
    mov word [bp - 0x0002], ax
    mov ds, ax
    xor di, di
    mov ax, word [bp + 0xc]
    mov bx, word [bp + 0xe]
    mov dx, word [bp + 0x10]
    mov cx, 0x100
    mov byte [di], al
    mov byte [di + 0x1], bl
    mov byte [di + 0x2], dl
    add di, byte 3
    loop 0x2a52
    mov ax, word [bp - 0x0002]
    mov ds, ax
    xor si, si
    mov cx, 0x300
    mov dx, 0x3c8
    mov al, 0
    out dx, al
    mov dx, 0x3da
    in al, dx
    test al, 1
    jne short 0x2a6f
    mov dx, 0x3da
    in al, dx
    test al, 1
    je short 0x2a77
    lodsb
    mov dx, 0x3c9
    out dx, al
    loop 0x2a6f
    mov bx, word [bp - 0x0002]
    mov es, bx
    mov ah, 0x49
    int 0x21
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    mov ax, cs
    mov ds, ax
    mov dx, 0x2ba7
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    dec bp
    db 0x65, 0x6d ; insw word ptr es:[di], dx
    outsw
    jb short 0x2b29
    and byte [di + 0x6e], dh
    popaw
    jbe short 0x2b17
    imul bp, word [si + 0x61], 0x6c62
    and byte [gs:bx + di + 0x6e], ch
    and byte [bp + si + 0x45], dl
    push bx
    inc bp
    push sp
    pop di
    push dx
    inc di
    inc dx
    sub byte [bx + di], ch
    add byte [cs:bp + si], cl
    db 0x24
    push bp
    mov bp, sp
    sub sp, byte 8
    push ds
    push es
    push di
    push si
    mov ax, ds
    mov es, ax
    les di, word [cs:0x01f7]
    mov si, word [bp + 0xc]
    mov cx, 0x300
    rep movsb
    mov ax, cs
    mov es, ax
    mov di, 0x2427
    mov si, word [bp + 0xe]
    mov cx, 0x200
    rep movsb
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    cmp word [bp + 0xc], byte 0
    je short 0x2b48
    cmp word [bp + 0xc], byte 1
    je short 0x2b56
    cmp word [bp + 0xc], byte 3
    je short 0x2b30
    mov ax, 0x4180
    sub ax, word [cs:0x0cac]
    mov bx, 0x10
    mul bx
    jmp short 0x2b64
    mov ah, 0x36
    mov dx, word [bp + 0xe]
    int 0x21
    cmp ax, strict word 0xffff
    jne short 0x2b42
    xor ax, ax
    xor dx, dx
    jmp short 0x2b64
    mul cx
    mul bx
    jmp short 0x2b64
    mov ah, 0x48
    mov bx, 0xffff
    int 0x21
    mov ax, 0x10
    mul bx
    jmp short 0x2b64
    mov ax, word [cs:0x01ff]
    sub ax, word [cs:0x0391]
    mov bx, 0x10
    mul bx
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    cmp byte [cs:0x0228], 1
    je short 0x2b85
    jmp near 0x2c06
    mov byte [cs:0x0226], 1
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0xe]
    mov word [bp - 0x0004], ax
    mov ax, 3
    int 0x33
    and cx, strict word 0xfffe
    mov word [bp - 0x0006], cx
    mov word [bp - 0x0008], dx
    mov cx, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    cmp cx, word [bp - 0x0002]
    jne short 0x2bba
    cmp dx, word [bp - 0x0004]
    jne short 0x2bba
    jmp short 0x2c06
    cmp cx, word [bp - 0x0002]
    je short 0x2bcb
    js short 0x2bc7
    sub word [bp - 0x0006], byte 2
    jmp short 0x2bcb
    add word [bp - 0x0006], byte 2
    mov cx, word [bp - 0x0006]
    cmp dx, word [bp - 0x0004]
    je short 0x2bdf
    js short 0x2bdb
    sub word [bp - 0x0008], byte 1
    jmp short 0x2bdf
    add word [bp - 0x0008], byte 1
    mov dx, word [bp - 0x0008]
    mov ax, cs
    push ax
    mov ax, 0
    call math_loc_1e1a
    mov cx, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    mov ax, 4
    int 0x33
    mov ax, word [bp + 0x10]
    or ax, ax
    je short 0x2ba8
    push ax
    call far [cs:0x01fb]
    pop ax
    jmp short 0x2ba8
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    cmp byte [cs:0x0228], 1
    je short 0x2c27
    jmp near 0x2cb6
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0xe]
    mov word [bp - 0x0004], ax
    mov cx, word [cs:0x15ac]
    shl cx, 1
    mov dx, word [cs:0x15ae]
    mov word [bp - 0x0006], cx
    mov word [bp - 0x0008], dx
    mov cx, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    cmp cx, word [bp - 0x0002]
    jne short 0x2c59
    cmp dx, word [bp - 0x0004]
    jne short 0x2c59
    jmp short 0x2ca5
    cmp cx, word [bp - 0x0002]
    je short 0x2c6a
    js short 0x2c66
    sub word [bp - 0x0006], byte 2
    jmp short 0x2c6a
    add word [bp - 0x0006], byte 2
    mov cx, word [bp - 0x0006]
    cmp dx, word [bp - 0x0004]
    je short 0x2c7e
    js short 0x2c7a
    sub word [bp - 0x0008], byte 1
    jmp short 0x2c7e
    add word [bp - 0x0008], byte 1
    mov dx, word [bp - 0x0008]
    mov ax, cs
    push ax
    mov ax, 0
    call math_loc_1e1a
    mov cx, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    mov ax, 4
    int 0x33
    mov ax, word [bp + 0x10]
    or ax, ax
    je short 0x2c47
    push ax
    call far [cs:0x01fb]
    pop ax
    jmp short 0x2c47
    mov cx, word [bp - 0x0002]
    mov dx, word [bp - 0x0004]
    mov ax, 4
    int 0x33
    mov byte [cs:0x0226], 0
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 8
    push ds
    push es
    push di
    push si
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    neg ax
    cmp ax, strict word 5
    jb short 0x2cd9
    jmp near 0x2d00
    shl ax, 1
    mov word [bp - 0x0008], ax
    mov bx, 0x251
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short 0x2ced
    jmp near 0x2d00
    mov word [cs:bx], 0
    mov cx, word [cs:0x0caa]
    dec cx
    mov word [cs:0x0caa], cx
    call loc_43e1
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 8
    push ds
    push es
    push di
    push si
    mov ax, ds
    mov es, ax
    lds si, word [cs:0x01f7]
    mov di, word [bp + 0xc]
    mov cx, 0x300
    rep movsb
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret

    times 65 db 0

    push bp
    mov bp, sp
    sub sp, byte 0x40
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0x14]
    sub ax, word [bp + 0x12]
    jb short 0x2deb
    mov ax, word [bp + 0x18]
    sub ax, word [bp + 0x16]
    jb short 0x2deb
    mov ax, word [bp + 0x10]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xe]
    mov word [bp - 0x0006], ax
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov bx, 0x229
    add bx, ax
    mov ax, word [cs:bx]
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0xbda
    add bx, ax
    mov ax, word [cs:bx]
    add ax, word [cs:0x01e1]
    mov word [bp - 0x0008], ax
    mov ds, ax
    xor bx, bx
    mov ax, word [bx]
    mov word [bp - 0x0012], ax
    mov si, word [bp + 0x1c]
    mov bx, word [bp - 0x0008]
    mov ds, bx
    xor ah, ah
    mov al, byte [ss:si]
    or al, al
    je short 0x2deb
    call dos_con_loc_3131
    xor ah, ah
    mov al, byte [bx + 0x2]
    mov word [bp - 0x0002], ax
    mov cx, ax
    mov al, byte [bx + 0x3]
    mov word [bp - 0x0004], ax
    or ax, cx
    jne short 0x2dee
    jmp near 0x3129
    mov word [bp - 0x003a], bx
    mov ax, es
    mov word [bp - 0x0038], ax
    mov ax, cs
    mov es, ax
    lea di, word [0x2e2b]
    xor ax, ax
    mov cx, 0x14
    rep stosw
    lea di, word [0x2e53]
    mov cx, 0x19
    rep stosb
    mov bx, word [bp + 0x20]
    or bx, bx
    jne short 0x2e18
    jmp near 0x2e9b
    cmp bx, byte 0x64
    jae short 0x2deb
    mov ax, word [bp - 0x0002]
    mov cl, 3
    shl ax, cl
    mov cx, ax
    mov bx, word [bp + 0x20]
    mul bx
    mov bx, 0x64
    div bx
    cmp dx, byte 0x32
    jb short 0x2e36
    inc ax
    or ax, ax
    je short 0x2e5c
    xor dx, dx
    mov bx, ax
    mov word [bp - 0x0034], ax
    mov ax, cx
    div bx
    mov di, 0x2e2b
    mov bx, word [bp - 0x0034]
    shr bx, 1
    mov word [bp - 0x003c], bx
    mov si, ax
    dec si
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0032], cx
    call leaf_loc_319f
    mov ax, word [bp - 0x0004]
    mov cl, 3
    shl ax, cl
    mov cx, ax
    mov bx, word [bp + 0x20]
    mul bx
    mov bx, 0x64
    div bx
    cmp dx, byte 0x32
    jb short 0x2e75
    inc ax
    or ax, ax
    je short 0x2e9b
    xor dx, dx
    mov bx, ax
    mov word [bp - 0x0034], ax
    mov ax, cx
    div bx
    mov di, 0x2e53
    mov bx, word [bp - 0x0034]
    shr bx, 1
    mov word [bp - 0x003c], bx
    mov si, ax
    dec si
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0032], cx
    call leaf_loc_319f
    mov bx, word [bp - 0x003a]
    mov ax, word [bp - 0x0038]
    mov es, ax
    mov ax, word [bp + 0x12]
    sub ax, word [bp + 0xe]
    jge short 0x2ead
    xor ax, ax
    mov word [bp - 0x0028], ax
    mov ax, word [bp + 0xe]
    mov bx, word [bp - 0x0002]
    mov cl, 3
    shl bx, cl
    mov cx, bx
    dec bx
    mov word [bp - 0x001e], bx
    add ax, bx
    inc ax
    sub ax, word [bp + 0x14]
    jge short 0x2eca
    xor ax, ax
    mov word [bp - 0x002a], ax
    add ax, word [bp - 0x0028]
    sub cx, ax
    ja short 0x2ed7
    jmp near 0x3129
    mov word [bp - 0x0026], cx
    mov ax, word [bp + 0x16]
    sub ax, word [bp + 0x10]
    jge short 0x2ee4
    xor ax, ax
    mov word [bp - 0x0024], ax
    mov ax, word [bp + 0x10]
    mov bx, word [bp - 0x0004]
    mov cl, 3
    shl bx, cl
    mov cx, bx
    dec bx
    add ax, bx
    sub ax, word [bp + 0x18]
    jge short 0x2efd
    xor ax, ax
    mov word [bp - 0x002c], ax
    add ax, word [bp - 0x0024]
    sub cx, ax
    ja short 0x2f0a
    jmp near 0x3129
    mov ax, word [bp + 0x18]
    inc ax
    mov cx, 0x140
    mul cx
    mov word [bp - 0x0022], ax
    mov ax, word [bp + 0x16]
    mov cx, 0x140
    mul cx
    mov word [bp - 0x002e], ax
    mov ax, word [bp + 0x1a]
    and al, 1
    je short 0x2f2b
    jmp near 0x2fd1
    mov bx, word [bp - 0x001e]
    inc bx
    mov word [bp - 0x003e], bx
    mov bx, 0x2e2b
    mov dl, 0x80
    xor ax, ax
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0040], ax
    mov cx, word [bp - 0x0028]
    or cx, cx
    je short 0x2f60
    mov al, byte [cs:bx]
    and al, dl
    jne short 0x2f52
    or byte [cs:bx], dl
    jmp short 0x2f56
    inc word [bp - 0x0030]
    inc cx
    ror dl, 1
    cmp dl, 0x80
    jne short 0x2f5e
    inc bx
    loop 0x2f46
    mov word [bp - 0x0032], bx
    mov ax, word [bp - 0x0030]
    mov word [bp - 0x0040], ax
    add ax, word [bp - 0x0028]
    mov bx, word [bp - 0x003e]
    cmp bx, ax
    ja short 0x2f76
    jmp near 0x3129
    sub bx, ax
    xor ax, ax
    mov word [bp - 0x0030], ax
    sub bx, word [bp - 0x0026]
    jbe short 0x2fce
    mov word [bp - 0x0034], bx
    mov cx, word [bp - 0x0026]
    mov bx, word [bp - 0x0032]
    mov al, byte [cs:bx]
    and al, dl
    je short 0x2f9e
    inc word [bp - 0x0030]
    mov ax, word [bp - 0x0030]
    cmp ax, word [bp - 0x0034]
    je short 0x2fa8
    inc cx
    ror dl, 1
    cmp dl, 0x80
    jne short 0x2fa6
    inc bx
    loop 0x2f8b
    mov word [bp - 0x0032], bx
    mov ax, word [bp - 0x0030]
    add ax, word [bp - 0x0040]
    add ax, word [bp - 0x0028]
    add ax, word [bp - 0x0026]
    mov cx, word [bp - 0x003e]
    sub cx, ax
    jbe short 0x2fce
    mov bx, word [bp - 0x0032]
    or byte [cs:bx], dl
    ror dl, 1
    cmp dl, 0x80
    jne short 0x2fcc
    inc bx
    loop 0x2fc1
    jmp near 0x3074
    mov bx, word [bp - 0x001e]
    inc bx
    mov word [bp - 0x003e], bx
    mov bx, 0x2e2b
    mov dl, 0x80
    xor ax, ax
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0040], ax
    mov cx, word [bp - 0x002a]
    or cx, cx
    je short 0x3006
    mov al, byte [cs:bx]
    and al, dl
    jne short 0x2ff8
    or byte [cs:bx], dl
    jmp short 0x2ffc
    inc word [bp - 0x0030]
    inc cx
    ror dl, 1
    cmp dl, 0x80
    jne short 0x3004
    inc bx
    loop 0x2fec
    mov word [bp - 0x0032], bx
    mov ax, word [bp - 0x0030]
    mov word [bp - 0x0040], ax
    add ax, word [bp - 0x002a]
    mov bx, word [bp - 0x003e]
    cmp bx, ax
    ja short 0x301c
    jmp near 0x3129
    sub bx, ax
    xor ax, ax
    mov word [bp - 0x0030], ax
    sub bx, word [bp - 0x0026]
    jbe short 0x3074
    mov word [bp - 0x0034], bx
    mov cx, word [bp - 0x0026]
    mov bx, word [bp - 0x0032]
    mov al, byte [cs:bx]
    and al, dl
    je short 0x3044
    inc word [bp - 0x0030]
    mov ax, word [bp - 0x0030]
    cmp ax, word [bp - 0x0034]
    je short 0x304e
    inc cx
    ror dl, 1
    cmp dl, 0x80
    jne short 0x304c
    inc bx
    loop 0x3031
    mov word [bp - 0x0032], bx
    mov ax, word [bp - 0x0030]
    add ax, word [bp - 0x0040]
    add ax, word [bp - 0x002a]
    add ax, word [bp - 0x0026]
    mov cx, word [bp - 0x003e]
    sub cx, ax
    jbe short 0x3074
    mov bx, word [bp - 0x0032]
    or byte [cs:bx], dl
    ror dl, 1
    cmp dl, 0x80
    jne short 0x3072
    inc bx
    loop 0x3067
    mov ax, word [bp + 0x1a]
    and al, 2
    jne short 0x30c2
    mov bx, 0x2e53
    mov dl, 0x80
    xor ax, ax
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0040], ax
    mov cx, word [bp - 0x0024]
    or cx, cx
    je short 0x30a9
    mov al, byte [cs:bx]
    and al, dl
    jne short 0x309b
    or byte [cs:bx], dl
    jmp short 0x309f
    inc word [bp - 0x0030]
    inc cx
    ror dl, 1
    cmp dl, 0x80
    jne short 0x30a7
    inc bx
    loop 0x308f
    mov ax, word [bp - 0x0030]
    mov word [bp - 0x0040], ax
    add ax, word [bp - 0x0024]
    mov bx, word [bp - 0x0004]
    mov cl, 3
    shl bx, cl
    cmp bx, ax
    ja short 0x30c0
    jmp near 0x3129
    jmp short 0x3101
    mov bx, 0x2e53
    mov dl, 0x80
    xor ax, ax
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0040], ax
    mov cx, word [bp - 0x002c]
    or cx, cx
    je short 0x30f0
    mov al, byte [cs:bx]
    and al, dl
    jne short 0x30e2
    or byte [cs:bx], dl
    jmp short 0x30e6
    inc word [bp - 0x0030]
    inc cx
    ror dl, 1
    cmp dl, 0x80
    jne short 0x30ee
    inc bx
    loop 0x30d6
    mov ax, word [bp - 0x0030]
    add ax, word [bp - 0x002c]
    mov bx, word [bp - 0x0004]
    mov cl, 3
    shl bx, cl
    cmp bx, ax
    jbe short 0x3129
    mov ax, word [bp + 0x20]
    mov bl, 0xc
    div bl
    xor ah, ah
    mov word [bp - 0x0030], ax
    mov si, word [bp + 0x1c]
    mov bx, word [bp - 0x0008]
    mov ds, bx
    xor ah, ah
    mov al, byte [ss:si]
    or al, al
    je short 0x3129
    call dos_con_loc_3131
    call math_loc_31d9
    inc word [bp + 0x1c]
    jmp short 0x310d
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
dos_con_loc_3131:
    dec ax
    cmp ax, word [bp - 0x0012]
    jb short 0x3188
    mov bl, 0xa
    div bl
    or byte [cs:0x326f], al
    or byte [cs:0x3270], dl
    mov ax, word [bp + 0xc]
    mov bl, 0xa
    div bl
    or byte [cs:0x3282], al
    or byte [cs:0x3283], dl
    mov bx, cs
    mov ds, bx
    mov dx, 0x3266
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    inc si
    jb short 0x31cd
    insw
    and byte [gs:bx + si], dh
    xor byte [bx + si], ah
    je short 0x31e3
    outsw
    and byte [bp + si + 0x69], ah
    and byte [ecx + 0x6e], ch
    and byte [bp + di + 0x6c], dh
    outsw
    je short 0x31a2
    xor byte [bx + si], dh
    add byte [cs:bp + si], cl
    db 0x24
    mov cl, 2
    shl al, cl
    mov bx, 2
    add bx, ax
    mov ax, word [bx]
    mov dx, word [bx + 0x2]
    mov bx, ds
    add bx, dx
    mov ds, bx
    mov bx, ax
    ret
leaf_loc_319f:
    jmp short 0x31a4
    add si, word [bp - 0x0030]
    add word [bp - 0x003c], dx
    mov bx, word [bp - 0x003c]
    cmp bx, word [bp - 0x0034]
    jb short 0x31b6
    sub bx, word [bp - 0x0034]
    mov word [bp - 0x003c], bx
    inc si
    cmp si, word [bp - 0x0032]
    jb short 0x31bc
    ret
    test si, 0x8000
    jne short 0x31bb
    mov cl, 3
    mov ax, si
    shr ax, cl
    mov bx, ax
    mov ax, si
    and al, 7
    mov cl, al
    mov al, 0x80
    shr al, cl
    or byte [cs:bx + di], al
    jmp short 0x31a1
math_loc_31d9:
    push es
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov ax, 0x2e53
    mov word [bp - 0x0036], ax
    xor ax, ax
    mov word [bp - 0x003c], ax
    mov word [bp - 0x003e], ax
    mov ax, word [bp + 0x1a]
    cmp al, 2
    jne short 0x31f8
    jmp near 0x3498
    cmp al, 3
    jne short 0x31ff
    jmp near 0x35d8
    mov ax, word [bp - 0x0006]
    mov word [bp - 0x000e], ax
    mov si, word [bx]
    add si, bx
    mov word [bp - 0x000a], 1
    lea ax, word [bx + 0x4]
    mov word [bp - 0x000c], ax
    mov cx, word [bp - 0x0004]
    mov byte [bp - 0x003a], 0x80
    mov ax, word [bp + 0x1a]
    cmp al, 1
    jne short 0x3225
    jmp near 0x337c
    mov ax, word [bp - 0x0028]
    add word [bp - 0x000e], ax
    mov ax, word [bp - 0x0024]
    mov bx, 0x140
    mul bx
    add word [bp - 0x000e], ax
    mov ax, word [bp - 0x0022]
    mov di, word [bp - 0x000e]
    cmp di, ax
    jb short 0x3243
    jmp near 0x3338
    push cx
    call math_loc_3340
    mov ax, 0x2e2b
    mov word [bp - 0x0034], ax
    mov cx, word [bp - 0x0002]
    push cx
    call math_loc_3360
    mov bx, word [bp - 0x000c]
    mov al, byte [bx]
    and al, byte [bp - 0x000a]
    jne short 0x3261
    jmp near 0x330b
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    cmp al, 0xff
    jne short 0x3271
    add si, byte 0x40
    jmp near 0x330b
    push di
    push si
    mov al, 0x80
    mov byte [bp - 0x0038], al
    mov cx, 8
    cmp di, word [bp - 0x0022]
    jb short 0x3283
    jmp near 0x3306
    mov bx, word [bp - 0x0036]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0038]
    je short 0x3291
    jmp near 0x3301
    push cx
    push di
    mov al, 0x80
    mov byte [bp - 0x0032], al
    mov cx, 8
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0032]
    jne short 0x32f9
    xor ah, ah
    mov al, byte [si]
    cmp al, 0xff
    je short 0x32e5
    cmp byte [bp + 0x1e], 2
    jne short 0x32ca
    mov al, byte [es:di]
    mov bx, 0x381b
    add bx, ax
    add al, byte [si]
    jb short 0x32c5
    cmp al, byte [cs:bx]
    jb short 0x32e2
    mov al, byte [cs:bx]
    jmp short 0x32e2
    cmp byte [bp - 0x0030], 0
    je short 0x32e2
    mov bx, 0x381b
    add bx, ax
    add al, byte [bp - 0x0030]
    jb short 0x32df
    cmp al, byte [cs:bx]
    jb short 0x32e2
    mov al, byte [cs:bx]
    mov byte [es:di], al
    inc si
    inc di
    ror byte [bp - 0x0032], 1
    loop 0x329b
    pop di
    pop cx
    add di, strict word 0x140
    ror byte [bp - 0x0038], 1
    loop 0x327b
    jmp short 0x3306
    inc si
    ror byte [bp - 0x0032], 1
    loop 0x329b
    jmp short 0x32ec
    add si, byte 8
    jmp short 0x32f2
    pop si
    add si, byte 0x40
    pop di
    add di, byte 8
    sub di, word [bp - 0x003c]
    rol byte [bp - 0x000a], 1
    cmp byte [bp - 0x000a], 1
    jne short 0x331d
    inc word [bp - 0x000c]
    inc word [bp - 0x0034]
    pop cx
    loop 0x333a
    pop cx
    add word [bp - 0x000e], strict word 0xa00
    mov ax, word [bp - 0x003e]
    sub word [bp - 0x000e], ax
    inc word [bp - 0x0036]
    mov byte [bp - 0x003a], 0x80
    loop 0x333d
    pop es
    ret
    jmp near 0x3250
    jmp near 0x3236
math_loc_3340:
    mov al, 0x80
    mov dl, al
    xor ax, ax
    mov word [bp - 0x003e], ax
    mov bx, word [bp - 0x0036]
    mov cx, 8
    mov al, byte [cs:bx]
    and al, dl
    je short 0x335b
    add word [bp - 0x003e], strict word 0x140
    ror dl, 1
    loop 0x334f
    ret
math_loc_3360:
    xor ax, ax
    mov word [bp - 0x003c], ax
    mov dl, 0x80
    mov bx, word [bp - 0x0034]
    mov cx, 8
    mov al, byte [cs:bx]
    and al, dl
    je short 0x3377
    inc word [bp - 0x003c]
    ror dl, 1
    loop 0x336d
    ret
    mov ax, word [bp - 0x002a]
    sub word [bp - 0x000e], ax
    mov ax, word [bp - 0x0024]
    mov bx, 0x140
    mul bx
    add word [bp - 0x000e], ax
    mov ax, word [bp - 0x0022]
    mov di, word [bp - 0x000e]
    add di, word [bp - 0x001e]
    cmp di, ax
    jb short 0x339d
    jmp near 0x3490
    push cx
    call math_loc_3340
    mov ax, 0x2e2b
    mov word [bp - 0x0034], ax
    mov cx, word [bp - 0x0002]
    push cx
    call math_loc_3360
    mov bx, word [bp - 0x000c]
    mov al, byte [bx]
    and al, byte [bp - 0x000a]
    jne short 0x33bb
    jmp near 0x3463
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    cmp al, 0xff
    jne short 0x33cb
    add si, byte 0x40
    jmp near 0x3463
    push di
    push si
    mov al, 0x80
    mov byte [bp - 0x0038], al
    mov cx, 8
    cmp di, word [bp - 0x0022]
    jb short 0x33dd
    jmp near 0x345e
    mov bx, word [bp - 0x0036]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0038]
    je short 0x33eb
    jmp near 0x3459
    push cx
    push di
    mov al, 0x80
    mov byte [bp - 0x0032], al
    mov cx, 8
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0032]
    jne short 0x3451
    mov al, byte [si]
    cmp al, 0xff
    je short 0x343d
    cmp byte [bp + 0x1e], 2
    jne short 0x3422
    mov al, byte [es:di]
    mov bx, 0x381b
    add bx, ax
    add al, byte [si]
    jb short 0x341d
    cmp al, byte [cs:bx]
    jb short 0x343a
    mov al, byte [cs:bx]
    jmp short 0x343a
    cmp byte [bp - 0x0030], 0
    je short 0x343a
    mov bx, 0x381b
    add bx, ax
    add al, byte [bp - 0x0030]
    jb short 0x3437
    cmp al, byte [cs:bx]
    jb short 0x343a
    mov al, byte [cs:bx]
    mov byte [es:di], al
    inc si
    dec di
    ror byte [bp - 0x0032], 1
    loop 0x33f5
    pop di
    pop cx
    add di, strict word 0x140
    ror byte [bp - 0x0038], 1
    loop 0x33d5
    jmp short 0x345e
    inc si
    ror byte [bp - 0x0032], 1
    loop 0x33f5
    jmp short 0x3444
    add si, byte 8
    jmp short 0x344a
    pop si
    add si, byte 0x40
    pop di
    sub di, byte 8
    add di, word [bp - 0x003c]
    rol byte [bp - 0x000a], 1
    cmp byte [bp - 0x000a], 1
    jne short 0x3475
    inc word [bp - 0x000c]
    inc word [bp - 0x0034]
    pop cx
    loop 0x3492
    pop cx
    add word [bp - 0x000e], strict word 0xa00
    mov ax, word [bp - 0x003e]
    sub word [bp - 0x000e], ax
    inc word [bp - 0x0036]
    mov byte [bp - 0x003a], 0x80
    loop 0x3495
    pop es
    ret
    jmp near 0x33aa
    jmp near 0x338d
    mov ax, word [bp - 0x0004]
    mov cx, 0xa00
    mul cx
    sub ax, 0x140
    add ax, word [bp - 0x0006]
    mov word [bp - 0x000e], ax
    mov si, word [bx]
    add si, bx
    mov word [bp - 0x000a], 1
    lea ax, word [bx + 0x4]
    mov word [bp - 0x000c], ax
    mov cx, word [bp - 0x0004]
    mov byte [bp - 0x003a], 0x80
    mov ax, word [bp - 0x0028]
    add word [bp - 0x000e], ax
    mov ax, word [bp - 0x002c]
    mov bx, 0x140
    mul bx
    sub word [bp - 0x000e], ax
    mov ax, word [bp - 0x002e]
    mov di, word [bp - 0x000e]
    cmp ax, di
    jbe short 0x34dd
    jmp near 0x35d0
    push cx
    call math_loc_3340
    mov ax, 0x2e2b
    mov word [bp - 0x0034], ax
    mov cx, word [bp - 0x0002]
    push cx
    call math_loc_3360
    mov bx, word [bp - 0x000c]
    mov al, byte [bx]
    and al, byte [bp - 0x000a]
    jne short 0x34fb
    jmp near 0x35a3
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    cmp al, 0xff
    jne short 0x350b
    add si, byte 0x40
    jmp near 0x35a3
    push di
    push si
    mov al, 0x80
    mov byte [bp - 0x0038], al
    mov cx, 8
    cmp word [bp - 0x002e], di
    jbe short 0x351d
    jmp near 0x359e
    mov bx, word [bp - 0x0036]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0038]
    je short 0x352b
    jmp near 0x3599
    push cx
    push di
    mov al, 0x80
    mov byte [bp - 0x0032], al
    mov cx, 8
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0032]
    jne short 0x3591
    mov al, byte [si]
    cmp al, 0xff
    je short 0x357d
    cmp byte [bp + 0x1e], 2
    jne short 0x3562
    mov al, byte [es:di]
    mov bx, 0x381b
    add bx, ax
    add al, byte [si]
    jb short 0x355d
    cmp al, byte [cs:bx]
    jb short 0x357a
    mov al, byte [cs:bx]
    jmp short 0x357a
    cmp byte [bp - 0x0030], 0
    je short 0x357a
    mov bx, 0x381b
    add bx, ax
    add al, byte [bp - 0x0030]
    jb short 0x3577
    cmp al, byte [cs:bx]
    jb short 0x357a
    mov al, byte [cs:bx]
    mov byte [es:di], al
    inc si
    inc di
    ror byte [bp - 0x0032], 1
    loop 0x3535
    pop di
    sub di, strict word 0x140
    pop cx
    ror byte [bp - 0x0038], 1
    loop 0x3515
    jmp short 0x359e
    inc si
    ror byte [bp - 0x0032], 1
    loop 0x3535
    jmp short 0x3584
    add si, byte 8
    jmp short 0x358a
    pop si
    add si, byte 0x40
    pop di
    add di, byte 8
    sub di, word [bp - 0x003c]
    rol byte [bp - 0x000a], 1
    cmp byte [bp - 0x000a], 1
    jne short 0x35b5
    inc word [bp - 0x000c]
    inc word [bp - 0x0034]
    pop cx
    loop 0x35d2
    pop cx
    sub word [bp - 0x000e], strict word 0xa00
    mov ax, word [bp - 0x003e]
    add word [bp - 0x000e], ax
    inc word [bp - 0x0036]
    mov byte [bp - 0x003a], 0x80
    loop 0x35d5
    pop es
    ret
    jmp near 0x34ea
    jmp near 0x34d0
    mov ax, word [bp - 0x0004]
    mov cx, 0xa00
    mul cx
    sub ax, 0x140
    add ax, word [bp - 0x0006]
    mov word [bp - 0x000e], ax
    mov si, word [bx]
    add si, bx
    mov word [bp - 0x000a], 1
    lea ax, word [bx + 0x4]
    mov word [bp - 0x000c], ax
    mov cx, word [bp - 0x0004]
    mov byte [bp - 0x003a], 0x80
    mov ax, word [bp - 0x002a]
    sub word [bp - 0x000e], ax
    mov ax, word [bp - 0x002c]
    mov bx, 0x140
    mul bx
    sub word [bp - 0x000e], ax
    mov ax, word [bp - 0x002e]
    mov di, word [bp - 0x000e]
    add di, word [bp - 0x001e]
    cmp ax, di
    jb short 0x3620
    jmp near 0x3713
    push cx
    call math_loc_3340
    mov ax, 0x2e2b
    mov word [bp - 0x0034], ax
    mov cx, word [bp - 0x0002]
    push cx
    call math_loc_3360
    mov bx, word [bp - 0x000c]
    mov al, byte [bx]
    and al, byte [bp - 0x000a]
    jne short 0x363e
    jmp near 0x36e6
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    cmp al, 0xff
    jne short 0x364e
    add si, byte 0x40
    jmp near 0x36e6
    push di
    push si
    mov al, 0x80
    mov byte [bp - 0x0038], al
    mov cx, 8
    cmp word [bp - 0x002e], di
    jbe short 0x3660
    jmp near 0x36e1
    mov bx, word [bp - 0x0036]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0038]
    je short 0x366e
    jmp near 0x36dc
    push cx
    push di
    mov al, 0x80
    mov byte [bp - 0x0032], al
    mov cx, 8
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0032]
    jne short 0x36d4
    mov al, byte [si]
    cmp al, 0xff
    je short 0x36c0
    cmp byte [bp + 0x1e], 2
    jne short 0x36a5
    mov al, byte [es:di]
    mov bx, 0x381b
    add bx, ax
    add al, byte [si]
    jb short 0x36a0
    cmp al, byte [cs:bx]
    jb short 0x36bd
    mov al, byte [cs:bx]
    jmp short 0x36bd
    cmp byte [bp - 0x0030], 0
    je short 0x36bd
    mov bx, 0x381b
    add bx, ax
    add al, byte [bp - 0x0030]
    jb short 0x36ba
    cmp al, byte [cs:bx]
    jb short 0x36bd
    mov al, byte [cs:bx]
    mov byte [es:di], al
    inc si
    dec di
    ror byte [bp - 0x0032], 1
    loop 0x3678
    pop di
    sub di, strict word 0x140
    pop cx
    ror byte [bp - 0x0038], 1
    loop 0x3658
    jmp short 0x36e1
    inc si
    ror byte [bp - 0x0032], 1
    loop 0x3678
    jmp short 0x36c7
    add si, byte 8
    jmp short 0x36cd
    pop si
    add si, byte 0x40
    pop di
    sub di, byte 8
    add di, word [bp - 0x003c]
    rol byte [bp - 0x000a], 1
    cmp byte [bp - 0x000a], 1
    jne short 0x36f8
    inc word [bp - 0x000c]
    inc word [bp - 0x0034]
    pop cx
    loop 0x3715
    pop cx
    sub word [bp - 0x000e], strict word 0xa00
    mov ax, word [bp - 0x003e]
    add word [bp - 0x000e], ax
    inc word [bp - 0x0036]
    mov byte [bp - 0x003a], 0x80
    loop 0x3718
    pop es
    ret
    jmp near 0x362d
    jmp near 0x3610

    db 0x00, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f
    db 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f
    db '####++++++++////:::::::::::?????JJJJJJJJJJJOOOOO]]]]]]]]]]]]]]__oooooooooooooooowwwwwwww'
    db 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f
    db 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x93, 0x93, 0x93, 0x93, 0x96, 0x96, 0x96, 0x9f
    db 0x9f, 0x9f, 0x9f, 0x9f, 0x9f, 0x9f, 0x9f, 0x9f, 0xa3, 0xa3, 0xa3, 0xa3, 0xa6, 0xa6, 0xa6, 0xaf
    db 0xaf, 0xaf, 0xaf, 0xaf, 0xaf, 0xaf, 0xaf, 0xaf, 0xb7, 0xb7, 0xb7, 0xb7, 0xb7, 0xb7, 0xb7, 0xb7
    db 0xbf, 0xbf, 0xbf, 0xbf, 0xbf, 0xbf, 0xbf, 0xbf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf
    db 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xd6, 0xd6, 0xd6, 0xd6, 0xd6, 0xd6, 0xd6, 0xdf
    db 0xdf, 0xdf, 0xdf, 0xdf, 0xdf, 0xdf, 0xdf, 0xdf, 0xe2, 0xe2, 0xe2, 0xe6, 0xe6, 0xe6, 0xe6, 0xef
    db 0xef, 0xef, 0xef, 0xef, 0xef, 0xef, 0xef, 0xef, 0xf5, 0xf5, 0xf5, 0xf5, 0xf5, 0xf5, 0xfe, 0xfe
    db 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xff

    mov ax, cs
    mov ds, ax
    mov dx, 0x392b
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    inc bp
    jb short 0x38a3
    outsw
    jb short 0x3854
    outsw
    arpl word [bp + di + 0x75], sp
    jb short 0x38ac
    db 0x65, 0x64, 0x20, 0x77, 0x72 ; and byte ptr fs:[bx + 0x72], dh
    imul si, word [si + 0x69], 0x676e
    and byte [si + 0x6f], dh
    and byte [si + 0x69], ah
    jae short 0x38b7
    and byte [bx + di + 0x6e], ch
    and byte [bp + di + 0x41], al
    inc bx
    dec ax
    inc bp
    inc cx
    push dx
    inc bp
    inc cx
    sub byte [bx + di], ch
    add byte [cs:bp + si], cl
    db 0x24
    push bp
    mov bp, sp
    sub sp, byte 0x0e
    push es
    push ds
    push di
    push si
    mov ax, ds
    mov es, ax
    cmp word [bp + 0x14], byte 3
    jne short 0x38e9
    mov ax, word [bp + 0x10]
    sub ax, word [bp + 0xc]
    inc ax
    mov word [bp - 0x0006], ax
    mov bx, word [bp + 0x12]
    sub bx, word [bp + 0xe]
    inc bx
    mov word [bp - 0x0004], bx
    mul bx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x000a], dx
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov word [bp - 0x0002], ax
    lea bx, word [bp - 0x000a]
    mov dx, bx
    mov ax, ss
    mov ds, ax
    mov cx, 0xa
    mov bx, word [bp + 0x16]
    mov ah, 0x40
    int 0x21
    jae short 0x38b5
    jmp near 0x381b
    mov ax, word [cs:0x01e5]
    mov ds, ax
    mov cx, word [bp - 0x0004]
    push cx
    mov dx, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    mov bx, word [bp + 0x16]
    mov ah, 0x40
    int 0x21
    jae short 0x38d6
    jmp near 0x381b
    cmp ax, word [bp - 0x0006]
    je short 0x38de
    jmp near 0x381b
    pop cx
    loop 0x38be
    xor ax, ax
    mov dx, word [bp + 0x14]
    jmp near 0x3ae6
    cmp word [bp + 0x14], byte 2
    je short 0x38f2
    jmp near 0x39be
    mov ax, word [bp + 0x10]
    sub ax, word [bp + 0xc]
    inc ax
    mov word [bp - 0x0006], ax
    mov bx, word [bp + 0x12]
    sub bx, word [bp + 0xe]
    inc bx
    mov word [bp - 0x0004], bx
    mul bx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x000a], dx
    add ax, strict word 0xc
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov word [bp - 0x0002], ax
    add ax, word [cs:0x0cac]
    cmp ax, 0x4180
    jbe short 0x3928
    jmp near 0x3b1f
    mov bx, word [cs:0x0cac]
    mov word [bp - 0x000e], bx
    mov word [cs:0x0cac], ax
    mov bx, 0x25b
    mov cx, 0x10
    xor dx, dx
    mov ax, word [cs:bx]
    or ax, ax
    je short 0x394c
    inc dx
    add bx, byte 2
    loop 0x393c
    jmp near 0x3b5c
    mov word [bp - 0x000c], dx
    mov ax, word [cs:0x0caa]
    inc ax
    mov word [cs:0x0caa], ax
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0xbda
    add bx, ax
    mov ax, word [bp - 0x000e]
    mov word [cs:bx], ax
    add ax, word [cs:0x01e1]
    mov es, ax
    mov ax, word [bp - 0x0002]
    mov word [cs:bx + 0x2], ax
    mov ax, word [cs:0x01e5]
    mov ds, ax
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov word [bp - 0x0002], ax
    xor di, di
    stosw
    xor ax, ax
    stosw
    mov ax, word [bp - 0x0004]
    stosw
    mov ax, word [bp - 0x0006]
    stosw
    mov ax, word [bp - 0x0008]
    stosw
    mov ax, word [bp - 0x000a]
    stosw
    mov si, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep movsb
    dec word [bp - 0x0004]
    jne short 0x39a3
    mov ax, word [bp - 0x000c]
    mov dx, word [bp + 0x14]
    jmp near 0x3ae6
    mov ax, word [bp + 0x10]
    sub ax, word [bp + 0xc]
    inc ax
    mov word [bp - 0x0006], ax
    mov bx, word [bp + 0x12]
    sub bx, word [bp + 0xe]
    inc bx
    mov word [bp - 0x0004], bx
    mul bx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x000a], dx
    add ax, strict word 0xc
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov word [bp - 0x0002], ax
    add ax, word [cs:0x0391]
    cmp ax, word [cs:0x01ff]
    jbe short 0x39f6
    jmp near 0x3ab7
    mov bx, word [cs:0x0391]
    mov word [bp - 0x000e], bx
    mov word [cs:0x0391], ax
    mov bx, 0x29b
    mov cx, 0x14
    xor dx, dx
    mov ax, word [cs:bx]
    or ax, ax
    je short 0x3a1a
    inc dx
    add bx, byte 2
    loop 0x3a0a
    jmp near 0x3aee
    mov word [bp - 0x000c], dx
    mov ax, word [cs:0x038f]
    inc ax
    mov word [cs:0x038f], ax
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x2eb
    add bx, ax
    mov ax, word [bp - 0x000e]
    mov word [cs:bx], ax
    mov ax, word [bp - 0x0002]
    mov word [cs:bx + 0x2], ax
    mov ax, word [cs:0x0203]
    mov es, ax
    mov ax, word [bp - 0x000e]
    mov di, ax
    and di, strict word 0x3ff
    mov cl, 4
    shl di, cl
    mov cl, 0xa
    shr ax, cl
    mov word [cs:0x3c8e], ax
    call dos_file_loc_3b90
    mov ax, word [cs:0x01e5]
    mov ds, ax
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov word [bp - 0x0002], ax
    stosw
    xor ax, ax
    stosw
    mov ax, word [bp - 0x0004]
    stosw
    mov ax, word [bp - 0x0006]
    stosw
    mov ax, word [bp - 0x0008]
    stosw
    mov ax, word [bp - 0x000a]
    stosw
    mov si, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep movsb
    test di, 0xc000
    je short 0x3aa9
    inc word [cs:0x3c8e]
    mov ax, word [cs:0x3c8e]
    call dos_file_loc_3b90
    and di, strict word 0x3fff
    dec word [bp - 0x0004]
    jne short 0x3a86
    mov ax, word [bp - 0x000c]
    mov dx, word [bp + 0x14]
    jmp near 0x3ae6
    mov ax, cs
    mov ds, ax
    mov dx, 0x3bc7
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    inc bx
    inc cx
    inc bx
    dec ax
    inc bp
    inc cx
    push dx
    inc bp
    inc cx
    and byte [bx + 0x75], ch
    je short 0x3af8
    outsw
    db 0x66, 0x20, 0x45, 0x4d ; and byte ptr [di + 0x4d], al
    push bx
    add byte [cs:bp + si], cl
    and al, 0x33
    db 0xd2, 0x8b, 0xc2
    pop si
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
    mov ax, cs
    mov ds, ax
    mov dx, 0x3bfe
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    inc bx
    inc cx
    inc bx
    dec ax
    inc bp
    inc cx
    push dx
    inc bp
    inc cx
    and byte [bx + 0x75], ch
    je short 0x3b2f
    outsw
    db 0x66, 0x20, 0x45, 0x4d ; and byte ptr [di + 0x4d], al
    push bx
    and byte [bp + di + 0x6c], dh
    outsw
    je short 0x3b8e
    add byte [cs:bp + si], cl
    db 0x24
    mov ax, cs
    mov ds, ax
    mov dx, 0x3c2f
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    inc bx
    inc cx
    inc bx
    dec ax
    inc bp
    inc cx
    push dx
    inc bp
    inc cx
    and byte [bx + 0x75], ch
    je short 0x3b60
    outsw
    db 0x66, 0x20, 0x4d, 0x41 ; and byte ptr [di + 0x41], cl
    pop dx
    inc bp
    das
    push ax
    dec cx
    inc bx
    and byte [di + 0x65], ch
    insw
    outsw
    jb short 0x3bcb
    add byte [cs:bp + si], cl
    and al, 0x33
    ror byte [bp + di - 0x143e], cl
    db 0x8a
    mov ax, cs
    mov ds, ax
    mov dx, 0x3c6c
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    inc bx
    inc cx
    inc bx
    dec ax
    inc bp
    inc cx
    push dx
    inc bp
    inc cx
    and byte [bx + 0x75], ch
    je short 0x3b9d
    outsw
    db 0x66, 0x20, 0x4d, 0x41 ; and byte ptr [di + 0x41], cl
    pop dx
    inc bp
    and byte [bp + di + 0x6c], dh
    outsw
    je short 0x3bfd
    add byte [cs:bp + si], cl
    and al, 0
    db 0x00
dos_file_loc_3b90:
    push ax
    mov ah, 0x44
    mov al, 0
    pop bx
    mov dx, word [cs:0x0201]
    int 0x67
    inc bx
    mov ah, 0x44
    mov al, 1
    int 0x67
    ret
    push bp
    mov bp, sp
    sub sp, byte 0x0e
    push es
    push ds
    push di
    push si
    mov ax, ds
    mov es, ax
    cmp word [bp + 0xe], byte 3
    jne short 0x3bee
    lea bx, word [bp - 0x000a]
    mov dx, bx
    mov ax, ss
    mov ds, ax
    mov cx, 0xa
    mov bx, word [bp + 0x12]
    mov ah, 0x3f
    int 0x21
    mov ax, word [cs:0x01e5]
    mov ds, ax
    mov cx, word [bp - 0x0004]
    push cx
    mov dx, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    mov bx, word [bp + 0x12]
    mov ah, 0x3f
    int 0x21
    pop cx
    loop 0x3bd5
    jmp near 0x3d03
    cmp word [bp + 0xe], byte 2
    je short 0x3bf7
    jmp near 0x3c64
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov bx, 0x25b
    add bx, ax
    mov ax, word [cs:bx]
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0xbda
    add bx, ax
    mov ax, word [cs:bx]
    add ax, word [cs:0x01e1]
    mov ds, ax
    mov ax, word [cs:0x01e5]
    mov es, ax
    xor si, si
    lodsw
    mov word [bp - 0x0002], ax
    lodsw
    lodsw
    mov word [bp - 0x0004], ax
    lodsw
    mov word [bp - 0x0006], ax
    lodsw
    lodsw
    mov di, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep movsb
    dec word [bp - 0x0004]
    jne short 0x3c2f
    cmp word [bp + 0x10], byte 0
    je short 0x3c61
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov bx, 0x25b
    add bx, ax
    mov ax, word [cs:bx]
    mov word [cs:bx], 0
    dec word [cs:0x0caa]
    call loc_43e1
    jmp near 0x3d03
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov bx, 0x29b
    add bx, ax
    mov ax, word [cs:bx]
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x2eb
    add bx, ax
    mov ax, word [cs:bx]
    mov word [bp - 0x0002], ax
    mov cl, 0xa
    shr ax, cl
    mov word [cs:0x3c8e], ax
    call dos_file_loc_3b90
    mov si, word [bp - 0x0002]
    and si, strict word 0x3ff
    mov cl, 4
    shl si, cl
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov ax, word [cs:0x0203]
    mov ds, ax
    lodsw
    mov word [bp - 0x0002], ax
    lodsw
    lodsw
    mov word [bp - 0x0004], ax
    lodsw
    mov word [bp - 0x0006], ax
    lodsw
    lodsw
    mov di, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep movsb
    test si, 0xc000
    je short 0x3cd5
    inc word [cs:0x3c8e]
    mov ax, word [cs:0x3c8e]
    call dos_file_loc_3b90
    and si, strict word 0x3fff
    dec word [bp - 0x0004]
    jne short 0x3cb2
    cmp word [bp + 0x10], byte 0
    je short 0x3d03
    mov cx, word [cs:0x038f]
    dec cx
    mov word [cs:0x038f], cx
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov bx, 0x29b
    add bx, ax
    mov ax, word [cs:bx]
    mov word [cs:bx], 0
    call leaf_loc_0e34
    call loc_0e71
    pop si
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
dos_file_loc_3d0b:
    push ds
    push es
    push si
    push di
    mov dx, word [cs:0x01e9]
    mov ds, dx
    xor dx, dx
    mov cx, 0x1000
    mov bx, word [bp - 0x0002]
    mov ah, 0x3f
    int 0x21
    or ax, ax
    je short 0x3d6d
    mov cx, ax
    push ax
    mov bx, word [bp - 0x0004]
    xor dx, dx
    mov ah, 0x40
    int 0x21
    jb short 0x3d39
    pop cx
    cmp cx, ax
    je short 0x3d16
    mov ax, cs
    mov ds, ax
    mov dx, 0x3e49
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    inc bp
    jb short 0x3dc1
    outsw
    jb short 0x3d72
    outsw
    arpl word [bp + di + 0x75], sp
    jb short 0x3dca
    db 0x65, 0x64, 0x20, 0x77, 0x72 ; and byte ptr fs:[bx + 0x72], dh
    imul si, word [si + 0x69], 0x676e
    and byte [si + 0x6f], dh
    and byte [si + 0x69], ah
    jae short 0x3dd5
    add byte [bp + si], cl
    db 0x24
    pop di
    pop si
    pop es
    pop ds
    ret
    push bp
    mov bp, sp
    sub sp, byte 0x14
    push es
    push ds
    push di
    push si
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    test ah, 0x80
    je short 0x3da8
    dec word [cs:0x038f]
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, 0x2c3
    add bx, ax
    mov ax, word [cs:bx]
    mov word [cs:bx], 0
    call leaf_loc_0e34
    call loc_0e71
    jmp near 0x3eee
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x10]
    or ax, ax
    je short 0x3dbe
    mov ax, word [bp + 0xe]
    mov word [bp - 0x0004], ax
    call dos_file_loc_3d0b
    jmp near 0x3eee
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, 0x2c3
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    je short 0x3dd2
    jmp near 0x3ef6
    inc word [cs:0x038f]
    mov ax, word [cs:0x038f]
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x2eb
    add bx, ax
    mov word [bp - 0x0002], bx
    mov ax, word [cs:0x0391]
    mov word [cs:bx], ax
    mov ax, word [cs:0x01e9]
    mov ds, ax
    xor dx, dx
    mov cx, 0x1000
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21
    mov bx, 0
    mov ax, word [bx]
    mov cx, 6
    mul cx
    add ax, strict word 4
    mov bx, ax
    sub bx, byte 6
    mov cl, byte [bx + 0x5]
    mov al, byte [bx + 0x4]
    mul cl
    mov cl, 3
    shl ax, cl
    mov cx, word [bx + 0x2]
    add ax, cx
    push ax
    xor dx, dx
    mov ax, word [bx]
    mov cx, 0x10
    mul cx
    pop cx
    add cx, byte 0x0f
    add ax, cx
    adc dx, byte 0
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], dx
    mov cx, 0x10
    div cx
    mov di, word [cs:0x0391]
    mov bx, word [bp - 0x0002]
    mov word [cs:bx + 0x2], ax
    add word [cs:0x0391], ax
    mov ax, word [cs:0x0391]
    cmp ax, word [cs:0x01ff]
    jbe short 0x3e64
    jmp near 0x3f3e
    mov ax, di
    mov cl, 0xa
    shr ax, cl
    mov word [cs:0x3c8e], ax
    call dos_file_loc_3b90
    and di, strict word 0x3ff
    mov cl, 4
    shl di, cl
    xor si, si
    mov ax, word [cs:0x01e9]
    mov ds, ax
    mov ax, word [cs:0x0203]
    mov es, ax
    mov cx, 0x1000
    rep movsb
    mov ax, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    sub ax, 0x1000
    sbb dx, byte 0
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], dx
    mov dx, di
    test dx, 0xc000
    je short 0x3eb6
    sub di, strict word 0x4000
    inc word [cs:0x3c8e]
    mov ax, word [cs:0x3c8e]
    call dos_file_loc_3b90
    mov ax, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    or ax, dx
    je short 0x3eee
    mov cx, 0x1000
    mov ax, word [bp - 0x0006]
    or dx, dx
    jne short 0x3ed0
    cmp ax, cx
    jae short 0x3ed0
    mov cx, ax
    sub ax, cx
    sbb dx, byte 0
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], dx
    mov dx, 0
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    push cx
    int 0x21
    pop cx
    mov si, 0
    rep movsb
    jmp short 0x3e9e
    pop si
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
    mov ax, cs
    mov ds, ax
    mov dx, 0x4006
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    inc bx
    inc cx
    inc bx
    dec ax
    inc bp
    dec bp
    inc cx
    pop dx
    inc bp
    sub byte [bx + di], ch
    and byte [cs:bx + si], ah
    push dx
    db 0x65, 0x71, 0x75 ; jno 0x3f90
    db 0x65, 0x73, 0x74 ; jae 0x3f92
    db 0x65, 0x64, 0x20, 0x73, 0x6c ; and byte ptr fs:[bp + di + 0x6c], dh
    outsw
    je short 0x3f46
    popaw
    insb
    jb short 0x3f8f
    popaw
    db 0x64, 0x79, 0x20 ; jns 0x3f4e
    imul bp, word [bp + 0x20], 0x7375
    db 0x65, 0x2e, 0x00, 0x0a ; add byte ptr cs:[bp + si], cl
    and al, 0x33
    ror byte [bp + di - 0x143e], cl
    db 0xb0
    mov ax, cs
    mov ds, ax
    mov dx, 0x404e
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    inc bx
    inc cx
    inc bx
    dec ax
    inc bp
    dec bp
    inc cx
    pop dx
    inc bp
    sub byte [bx + di], ch
    and byte [cs:bx + si], ah
    dec cx
    outsb
    jae short 0x3fd8
    db 0x66, 0x66, 0x69, 0x63, 0x69, 0x65, 0x6e, 0x74, 0x20 ; imul esp, dword ptr [bp + di + 0x69], 0x20746e65
    inc bp
    dec bp
    push bx
    add byte [cs:bp + si], cl
    db 0x24
    push bp
    mov bp, sp
    sub sp, byte 0x14
    push es
    push ds
    push di
    push si
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    test ah, 0x80
    je short 0x3fa9
    dec word [cs:0x038f]
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, 0x2d7
    add bx, ax
    mov ax, word [cs:bx]
    mov word [cs:bx], 0
    call leaf_loc_0e34
    call loc_0e71
    jmp near 0x4079
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x10]
    or ax, ax
    je short 0x3fbf
    mov ax, word [bp + 0xe]
    mov word [bp - 0x0004], ax
    call dos_file_loc_3d0b
    jmp near 0x4079
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, 0x2d7
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    je short 0x3fd3
    jmp near 0x4081
    inc word [cs:0x038f]
    mov ax, word [cs:0x038f]
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x2eb
    add bx, ax
    mov word [bp - 0x0002], bx
    mov ax, word [cs:0x0391]
    mov word [cs:bx], ax
    mov ax, 0xfa0
    mov word [cs:bx + 0x2], ax
    mov di, word [cs:0x0391]
    add word [cs:0x0391], ax
    mov ax, word [cs:0x0391]
    cmp ax, word [cs:0x01ff]
    jbe short 0x4012
    jmp near 0x40cb
    mov ax, 0xfa00
    mov word [bp - 0x0006], ax
    mov ax, di
    mov cl, 0xa
    shr ax, cl
    mov word [cs:0x3c8e], ax
    call dos_file_loc_3b90
    and di, strict word 0x3ff
    mov cl, 4
    shl di, cl
    mov dx, di
    test dx, 0xc000
    je short 0x4045
    sub di, strict word 0x4000
    inc word [cs:0x3c8e]
    mov ax, word [cs:0x3c8e]
    call dos_file_loc_3b90
    mov ax, word [bp - 0x0006]
    or ax, ax
    je short 0x4079
    mov cx, 0x1000
    cmp ax, cx
    jae short 0x4055
    mov cx, ax
    sub ax, cx
    mov word [bp - 0x0006], ax
    mov ax, word [cs:0x0203]
    mov es, ax
    mov ax, word [cs:0x01e9]
    mov ds, ax
    mov dx, 0
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    push cx
    int 0x21
    pop cx
    mov si, 0
    rep movsb
    jmp short 0x402d
    pop si
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
    mov ax, cs
    mov ds, ax
    mov dx, 0x4191
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    inc bx
    inc cx
    inc bx
    dec ax
    inc bp
    push bx
    inc bx
    push dx
    inc bp
    inc bp
    dec si
    sub byte [bx + di], ch
    and byte [cs:bx + si], ah
    push dx
    db 0x65, 0x71, 0x75 ; jno 0x411d
    db 0x65, 0x73, 0x74 ; jae 0x411f
    db 0x65, 0x64, 0x20, 0x73, 0x6c ; and byte ptr fs:[bp + di + 0x6c], dh
    outsw
    je short 0x40d3
    popaw
    insb
    jb short 0x411c
    popaw
    db 0x64, 0x79, 0x20 ; jns 0x40db
    imul bp, word [bp + 0x20], 0x7375
    db 0x65, 0x2e, 0x00, 0x0a ; add byte ptr cs:[bp + si], cl
    and al, 0x33
    ror byte [bp + di - 0x143e], cl
    scasb
    mov ax, cs
    mov ds, ax
    mov dx, 0x41db
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    inc bx
    inc cx
    inc bx
    dec ax
    inc bp
    push bx
    inc bx
    push dx
    inc bp
    inc bp
    dec si
    sub byte [bx + di], ch
    and byte [cs:bx + si], ah
    dec cx
    outsb
    jae short 0x4167
    db 0x66, 0x66, 0x69, 0x63, 0x69, 0x65, 0x6e, 0x74, 0x20 ; imul esp, dword ptr [bp + di + 0x69], 0x20746e65
    inc bp
    dec bp
    push bx
    add byte [cs:bp + si], cl
    and al, 0
    times 83 db 0
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov bx, word [bp + 0xe]
    shl bx, 1
    shl bx, 1
    add bx, strict word 0x4202
    mov word [bp - 0x0002], bx
    mov ax, word [cs:bx]
    or ax, ax
    je short 0x417c
    jmp near 0x4228
    mov ax, word [cs:0x0caa]
    inc ax
    mov word [cs:0x0caa], ax
    mov bx, word [bp - 0x0002]
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0xbda
    add bx, ax
    mov word [bp - 0x000a], bx
    mov ax, word [cs:0x0cac]
    mov word [cs:bx], ax
    mov ah, 0x42
    mov al, 2
    mov bx, word [bp + 0xc]
    xor cx, cx
    mov dx, cx
    int 0x21
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0006], dx
    mov ah, 0x42
    mov al, 0
    mov bx, word [bp + 0xc]
    xor cx, cx
    mov dx, cx
    int 0x21
    mov ax, word [cs:0x01e9]
    mov ds, ax
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov cx, 2
    mov ah, 0x3f
    int 0x21
    xor bx, bx
    mov ax, word [bx]
    or ax, ax
    je short 0x41dc
    jmp near 0x42a0
    mov bx, word [bp - 0x0002]
    mov ax, word [bp - 0x0004]
    sub ax, strict word 2
    mov word [cs:bx + 0x2], ax
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov bx, word [bp - 0x000a]
    mov word [cs:bx + 0x2], ax
    add ax, word [cs:0x0cac]
    cmp ax, 0x4180
    jae short 0x4264
    mov word [cs:0x0cac], ax
    mov ax, word [cs:bx]
    add ax, word [cs:0x01e1]
    mov ds, ax
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov cx, word [bp - 0x0004]
    sub cx, byte 2
    mov ah, 0x3f
    int 0x21
    xor ax, ax
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    mov ax, cs
    mov ds, ax
    mov dx, 0x4338
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    dec cx
    outsb
    and byte [si + 0x4f], cl
    inc cx
    inc sp
    pop di
    push bx
    dec di
    push bp
    dec si
    inc sp
    sub byte [bx + di], ch
    and byte [0x2e2e], ch
    and byte [bp + di + 0x6c], dh
    outsw
    je short 0x4274
    popaw
    insb
    jb short 0x42bd
    popaw
    db 0x64, 0x79, 0x20 ; jns 0x427c
    jne short 0x42d1
    db 0x65, 0x64, 0x2e, 0x00, 0x0a ; add byte ptr cs:[bp + si], cl
    db 0x24
    mov ax, cs
    mov ds, ax
    mov dx, 0x4374
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    dec cx
    outsb
    and byte [si + 0x4f], cl
    inc cx
    inc sp
    pop di
    push bx
    dec di
    push bp
    dec si
    inc sp
    sub byte [bx + di], ch
    and byte [0x2e2e], ch
    and byte [bp + 0x6f], ch
    je short 0x42af
    db 0x65, 0x6e ; outsb dx, byte ptr gs:[si]
    outsw
    jne short 0x42fb
    push 0x6d20
    db 0x65, 0x6d ; insw word ptr es:[di], dx
    outsw
    jb short 0x4315
    add byte [cs:bp + si], cl
    db 0x24
    mov cx, ax
    mov ax, word [cs:0x01e9]
    mov ds, ax
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21
    mov dx, 0x400
    mov bx, word [bp + 0xc]
    mov cx, 0x1000
    mov ah, 0x3f
    int 0x21
    mov si, 0x400
    mov di, 0
    lodsw
    mov word [bp - 0x0004], ax
    mov bx, word [bp - 0x0002]
    mov word [cs:bx + 0x2], ax
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov bx, word [bp - 0x000a]
    mov word [cs:bx + 0x2], ax
    add ax, word [cs:0x0cac]
    cmp ax, 0x4180
    jb short 0x42ea
    jmp near 0x4264
    mov word [cs:0x0cac], ax
    mov ax, word [cs:bx]
    add ax, word [cs:0x01e1]
    mov es, ax
    call dos_file_loc_4300
    xor ax, ax
    jmp near 0x4220
dos_file_loc_4300:
    mov word [bp - 0x0002], 8
    lodsb
    cmp word [bp - 0x0004], byte 0
    je short 0x4318
    call dos_file_loc_4319
    mov byte [es:di], bl
    inc di
    dec word [bp - 0x0004]
    jmp short 0x4306
    ret
dos_file_loc_4319:
    mov cx, word [bp - 0x0002]
    xor bx, bx
    shl al, 1
    jb short 0x435a
    test word [bx], 0x8000
    jne short 0x432c
    mov bx, word [bx]
    jmp short 0x4371
    mov bx, word [bx]
    neg bx
    shl bx, 1
    shl bx, 1
    loop 0x431e
    mov cx, 8
    lodsb
    cmp si, strict word 0x1400
    jb short 0x431e
    push ax
    push di
    push bx
    push cx
    mov dx, 0x400
    mov bx, word [bp + 0xc]
    mov cx, 0x1000
    mov ah, 0x3f
    int 0x21
    mov si, 0x400
    pop cx
    pop bx
    pop di
    pop ax
    jmp short 0x431e
    test word [bx + 0x2], 0x8000
    jne short 0x4366
    mov bx, word [bx + 0x2]
    jmp short 0x4371
    mov bx, word [bx + 0x2]
    neg bx
    shl bx, 1
    shl bx, 1
    jmp short 0x4334
    dec cx
    jne short 0x4396
    mov cx, 8
    lodsb
    cmp si, strict word 0x1400
    jb short 0x4396
    push ax
    push di
    push bx
    push cx
    mov dx, 0x400
    mov bx, word [bp + 0xc]
    mov cx, 0x1000
    mov ah, 0x3f
    int 0x21
    mov si, 0x400
    pop cx
    pop bx
    pop di
    pop ax
    mov word [bp - 0x0002], cx
    ret
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    cmp ax, strict word 0x14
    jb short 0x43b3
    jmp near 0x43d9
    shl ax, 1
    shl ax, 1
    mov bx, 0x4202
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short 0x43c6
    jmp near 0x43d9
    mov word [cs:bx], 0
    mov cx, word [cs:0x0caa]
    dec cx
    mov word [cs:0x0caa], cx
    call loc_43e1
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
loc_43e1:
    call leaf_loc_43f7
    call dos_con_loc_440c
    call dos_con_loc_4436
    call dos_con_loc_4421
    call dos_con_loc_444b
    call dos_con_loc_4461
    call leaf_loc_44a3
    ret
leaf_loc_43f7:
    push ax
    mov bx, 0xbc6
    mov cx, 0xa
    cmp ax, word [cs:bx]
    jae short 0x4406
    dec word [cs:bx]
    inc bx
    inc bx
    loop 0x43fe
    pop ax
    ret
dos_con_loc_440c:
    push ax
    mov bx, 0x229
    mov cx, 0x14
    cmp ax, word [cs:bx]
    jae short 0x441b
    dec word [cs:bx]
    inc bx
    inc bx
    loop 0x4413
    pop ax
    ret
dos_con_loc_4421:
    push ax
    mov bx, 0x25b
    mov cx, 0x10
    cmp ax, word [cs:bx]
    jae short 0x4430
    dec word [cs:bx]
    inc bx
    inc bx
    loop 0x4428
    pop ax
    ret
dos_con_loc_4436:
    push ax
    mov bx, 0x251
    mov cx, 5
    cmp ax, word [cs:bx]
    jae short 0x4445
    dec word [cs:bx]
    inc bx
    inc bx
    loop 0x443d
    pop ax
    ret
dos_con_loc_444b:
    push ax
    mov bx, 0x4202
    mov cx, 0x14
    cmp ax, word [cs:bx]
    jae short 0x445a
    dec word [cs:bx]
    add bx, byte 4
    loop 0x4452
    pop ax
    ret
dos_con_loc_4461:
    push ax
    mov bx, 0x46d9
    mov cx, 5
    cmp ax, word [cs:bx]
    jae short 0x4485
    dec word [cs:bx]
    push ds
    push ax
    push bx
    push cx
    push dx
    mov ax, cs
    mov ds, ax
    mov dx, 0x458c
    mov ah, 9
    int 0x21
    pop dx
    pop cx
    pop bx
    pop ax
    pop ds
    add bx, byte 4
    loop 0x4468
    pop ax
    ret
    or ax, 0x70a
    push bx
    arpl word [bx + 0x72], bp
    and byte [gs:bp + di + 0x6c], dh
    outsw
    je short 0x44ba
    insw
    outsw
    jbe short 0x4503
    db 0x64, 0x2e, 0x00, 0x0a ; add byte ptr cs:[bp + si], cl
    db 0x24
leaf_loc_44a3:
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0xbda
    add bx, ax
    mov word [bp - 0x0004], bx
    mov ax, word [cs:bx + 0x2]
    sub word [cs:0x0cac], ax
    mov word [bp - 0x0006], ax
    mov bx, word [bp - 0x0004]
    mov dx, word [cs:bx]
    add dx, word [cs:0x01e1]
    mov es, dx
    mov dx, word [cs:bx + 0x4]
    add dx, word [cs:0x01e1]
    mov ds, dx
    mov cx, word [cs:bx + 0x6]
    or cx, cx
    je short 0x451a
    push cx
    mov cx, 0x10
    xor si, si
    xor di, di
    rep movsb
    mov cx, ds
    inc cx
    mov ds, cx
    mov cx, es
    inc cx
    mov es, cx
    pop cx
    loop 0x44dc
    mov bx, word [bp - 0x0004]
    mov cx, word [bp - 0x0006]
    mov ax, word [cs:bx + 0x4]
    sub ax, cx
    mov word [cs:bx], ax
    add ax, word [cs:bx + 0x6]
    mov word [cs:bx + 0x4], ax
    mov ax, word [cs:bx + 0x6]
    mov word [cs:bx + 0x2], ax
    add bx, byte 4
    mov word [bp - 0x0004], bx
    jmp short 0x44bc
    mov bx, word [bp - 0x0004]
    xor ax, ax
    mov word [cs:bx], ax
    mov word [cs:bx + 0x2], ax
    ret
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    cmp ax, strict word 0x14
    jb short 0x4540
    jmp near 0x458e
    shl ax, 1
    shl ax, 1
    mov bx, 0x4202
    add bx, ax
    mov ax, word [cs:bx + 0x2]
    mov word [bp - 0x0002], ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short 0x455a
    jmp near 0x458e
    dec ax
    mov word [bp - 0x0004], ax
    push word [bp + 0x12]
    push word [bp + 0x10]
    push word [bp + 0xe]
    mov ax, word [bp - 0x0002]
    push ax
    xor ax, ax
    push ax
    mov bx, 0xbda
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    add bx, ax
    mov ax, word [cs:bx]
    add ax, word [cs:0x01e1]
    push ax
    xor ax, ax
    push ax
    call far [cs:0x021a]
    add sp, byte 0x0e
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    push word [bp + 0xc]
    call far [cs:0x0222]
    pop cx
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    xor ax, ax
    push ax
    push ax
    push ax
    push ax
    push ax
    push ax
    push ax
    call far [cs:0x021a]
    add sp, byte 0x0e
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret

    times 34 db 0

    push bp
    mov bp, sp
    sub sp, byte 0x0e
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov bx, word [bp + 0x12]
    shl bx, 1
    shl bx, 1
    add bx, strict word 0x46d9
    mov word [bp - 0x0002], bx
    mov ax, word [cs:bx]
    or ax, ax
    je short 0x4621
    jmp near 0x4712
    mov bx, word [bp + 0x12]
    shl bx, 1
    add bx, strict word 0x46f1
    mov ax, word [bp + 0x10]
    mov word [cs:bx], ax
    mov ax, word [cs:0x0caa]
    inc ax
    mov word [cs:0x0caa], ax
    mov bx, word [bp - 0x0002]
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0xbda
    add bx, ax
    mov word [bp - 0x000a], bx
    mov ax, word [cs:0x0cac]
    mov word [cs:bx], ax
    xor ax, ax
    mov word [bp - 0x000c], ax
    mov word [bp - 0x000e], ax
    mov bx, word [bp - 0x0002]
    mov word [cs:bx + 0x2], ax
    mov bx, word [bp + 0xe]
    cmp bx, byte 0xff
    je short 0x4695
    mov ah, 0x42
    mov al, 2
    xor cx, cx
    mov dx, cx
    int 0x21
    mov word [bp - 0x000c], ax
    mov bx, word [bp - 0x0002]
    mov word [cs:bx + 0x2], ax
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov word [bp - 0x000e], ax
    mov ah, 0x42
    mov al, 0
    mov bx, word [bp + 0xe]
    xor cx, cx
    mov dx, cx
    int 0x21
    mov ah, 0x42
    mov al, 2
    mov bx, word [bp + 0xc]
    xor cx, cx
    mov dx, cx
    int 0x21
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0006], dx
    mov ah, 0x42
    mov al, 0
    mov bx, word [bp + 0xc]
    xor cx, cx
    mov dx, cx
    int 0x21
    mov ax, word [bp - 0x0004]
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov bx, word [bp - 0x000a]
    add ax, word [bp - 0x000e]
    mov word [cs:bx + 0x2], ax
    add ax, word [cs:0x0cac]
    cmp ax, 0x4180
    jb short 0x46d6
    jmp near 0x474e
    mov word [cs:0x0cac], ax
    mov ax, word [cs:bx]
    add ax, word [cs:0x01e1]
    mov ds, ax
    mov bx, word [bp + 0xe]
    cmp bx, byte 0xff
    je short 0x46f5
    xor dx, dx
    mov cx, word [bp - 0x000c]
    mov ah, 0x3f
    int 0x21
    mov bx, word [bp - 0x0002]
    mov bx, word [cs:bx + 0x2]
    mov dx, bx
    mov bx, word [bp + 0xc]
    mov cx, word [bp - 0x0004]
    mov ah, 0x3f
    int 0x21
    xor ax, ax
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    mov ax, cs
    mov ds, ax
    mov dx, 0x4822
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    dec cx
    outsb
    and byte [si + 0x4f], cl
    inc cx
    inc sp
    pop di
    push bx
    inc bx
    dec di
    push dx
    inc bp
    sub byte [bx + di], ch
    and byte [0x2e2e], ch
    and byte [bp + di + 0x6c], dh
    outsw
    je short 0x475e
    popaw
    insb
    jb short 0x47a7
    popaw
    db 0x64, 0x79, 0x20 ; jns 0x4766
    jne short 0x47bb
    db 0x65, 0x64, 0x2e, 0x00, 0x0a ; add byte ptr cs:[bp + si], cl
    db 0x24
    mov ax, cs
    mov ds, ax
    mov dx, 0x485e
    mov ah, 9
    int 0x21
    mov ax, 0x4c01
    int 0x21
    or ax, 0x70a
    dec cx
    outsb
    and byte [si + 0x4f], cl
    inc cx
    inc sp
    pop di
    push bx
    inc bx
    dec di
    push dx
    inc bp
    sub byte [bx + di], ch
    and byte [0x2e2e], ch
    and byte [bp + 0x6f], ch
    je short 0x4799
    db 0x65, 0x6e ; outsb dx, byte ptr gs:[si]
    outsw
    jne short 0x47e5
    push 0x6d20
    db 0x65, 0x6d ; insw word ptr es:[di], dx
    outsw
    jb short 0x47ff
    add byte [cs:bp + si], cl
    db 0x24
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov bx, word [bp + 0xc]
    shl bx, 1
    add bx, strict word 0x46f1
    mov ax, word [cs:bx]
    mov word [bp - 0x0008], ax
    mov bx, word [bp + 0xc]
    shl bx, 1
    shl bx, 1
    add bx, strict word 0x46d9
    mov word [bp - 0x0002], bx
    mov ax, word [cs:bx + 0x2]
    mov word [bp - 0x0006], ax
    mov ax, word [cs:bx]
    or ax, ax
    je short 0x4817
    dec ax
    shl ax, 1
    shl ax, 1
    mov bx, 0xbda
    add bx, ax
    mov word [bp - 0x0004], bx
    push word [bp - 0x0008]
    xor ax, ax
    cmp word [bp - 0x0006], byte 0
    je short 0x47e3
    mov ax, word [cs:bx]
    add ax, word [cs:0x01e1]
    push ax
    xor ax, ax
    push ax
    call far [cs:0x020e]
    add sp, byte 6
    push word [bp + 0x10]
    push word [bp + 0xe]
    call far [cs:0x0216]
    add sp, byte 4
    push word [bp + 0x12]
    mov bx, word [bp - 0x0004]
    mov ax, word [cs:bx]
    add ax, word [cs:0x01e1]
    push ax
    push word [bp - 0x0006]
    call far [cs:0x0206]
    add sp, byte 6
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    cmp ax, strict word 5
    jb short 0x4838
    jmp near 0x485e
    shl ax, 1
    shl ax, 1
    mov bx, 0x46d9
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short 0x484b
    jmp near 0x485e
    mov word [cs:bx], 0
    mov cx, word [cs:0x0caa]
    dec cx
    mov word [cs:0x0caa], cx
    call loc_43e1
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    call far [cs:0x021e]
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    call far [cs:0x0212]
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    push bp
    mov bp, sp
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    push word [bp + 0xe]
    push word [bp + 0xc]
    call far [cs:0x0216]
    add sp, byte 4
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret

    db 0x00

