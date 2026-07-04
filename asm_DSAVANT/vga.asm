%include "structs/structs.inc"
%include "structs/vga.inc"
org 0
bits 16
data_0300 equ 0x0300
data_082e equ 0x082e
data_0e3b equ 0x0e3b
data_10ba equ 0x10ba
data_2041 equ 0x2041
data_21cd equ 0x21cd
data_2e2b equ 0x2e2b
data_2e2e equ 0x2e2e
data_2e53 equ 0x2e53
data_455a equ 0x455a

loc_0000:
    jmp near 3

    db 0xe8, 0xf2, 0x11, 0xcb, 0xe8, 0x62, 0x12, 0xcb, 0xe8, 0x09, 0x13, 0xcb, 0xe8, 0xf6, 0x12, 0xcb
    db 0xe8, 0xb3, 0x12, 0xcb, 0xe8, 0xb3, 0x21, 0xcb, 0xe8, 0x4e, 0x2d, 0xcb, 0xe8, 0xb0, 0x08, 0xcb
    db 0xe8, 0x88, 0x0b, 0xcb, 0xe8, 0x8d, 0x0f, 0xcb, 0xe8, 0x4f, 0x21, 0xcb, 0xe8, 0x61, 0x02, 0xcb
    db 0xe8, 0x11, 0x04, 0xcb, 0xe8, 0x22, 0x04, 0xcb, 0xe8, 0x39, 0x04, 0xcb, 0xe8, 0x54, 0x04, 0xcb
    db 0xe8, 0x6f, 0x04, 0xcb, 0xe8, 0x68, 0x06, 0xcb, 0xe8, 0x8b, 0x06, 0xcb, 0xe8, 0xd6, 0x06, 0xcb
    db 0xe8, 0x24, 0x07, 0xcb, 0xe8, 0xdc, 0x07, 0xcb, 0xe8, 0x27, 0x21, 0xcb, 0xe8, 0x38, 0x13, 0xcb
    db 0xe8, 0x63, 0x13, 0xcb, 0xe8, 0xcf, 0x03, 0xcb, 0xe8, 0x2e, 0x09, 0xcb, 0xe8, 0xb6, 0x24, 0xcb
    db 0xe8, 0x09, 0x27, 0xcb, 0xe8, 0x56, 0x27, 0xcb, 0xe8, 0x84, 0x27, 0xcb, 0xe8, 0x6e, 0x28, 0xcb
    db 0xe8, 0x70, 0x29, 0xcb, 0xe8, 0xe2, 0x2a, 0xcb, 0xe8, 0x80, 0x2b, 0xcb, 0xe8, 0xdd, 0x0e, 0xcb
    db 0xe8, 0x28, 0x2c, 0xcb, 0xe8, 0x6e, 0x2c, 0xcb, 0xe8, 0x31, 0x2a, 0xcb, 0xe8, 0xbd, 0x37, 0xcb
    db 0xe8, 0x5b, 0x2a, 0xcb, 0xe8, 0xfb, 0x3a, 0xcb, 0xe8, 0xc4, 0x3c, 0xcb, 0xe8, 0xc1, 0x3e, 0xcb
    db 0xe8, 0xa0, 0x40, 0xcb, 0xe8, 0xe0, 0x42, 0xcb, 0xe8, 0x69, 0x44, 0xcb, 0xe8, 0xd4, 0x44, 0xcb
    db 0xe8, 0xec, 0x44, 0xcb, 0xe8, 0x31, 0x45, 0xcb, 0xe8, 0xbc, 0x46, 0xcb, 0xe8, 0x4d, 0x47, 0xcb
    db 0xe8, 0x90, 0x47, 0xcb, 0xe8, 0xa4, 0x47, 0xcb, 0xe8, 0xb8, 0x47, 0xcb, 0x80, 0x41, 0x00, 0x00
    db 0x00, 0x10, 0x00, 0x00, 0x40, 0x01, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x30, 0x05, 0x00, 0x00
    db 0xd0, 0x01
    times 17 db 0
    db 0x03, 0x01, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x0b, 0x01, 0x00, 0x00, 0x0f, 0x01, 0x00, 0x00
    db 0x13, 0x01, 0x00, 0x00, 0x17, 0x01, 0x00, 0x00, 0x1b, 0x01, 0x00, 0x00, 0x1f, 0x01
    times 87 db 0
    db 0x04
    times 23 db 0
    db 0x01
    times 255 db 0

math_loc_0293:
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
    je short @..math_loc_0293.l1
    jmp near @..math_loc_0293.l17
@..math_loc_0293.l1:
    mov ax, word [cs:0x0299]
    or ax, ax
    jne short @..math_loc_0293.l2
    mov al, byte [bx + 0x6]
    test al, 2
    jne short @..math_loc_0293.l9
@..math_loc_0293.l2:
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
@..math_loc_0293.l3:
    mov cx, word [bp - 0x000c]
@..math_loc_0293.l4:
    mov word [bp - 0x0008], cx
    lodsb
    cmp cx, byte 9
    jb short @..math_loc_0293.l5
    mov cx, 8
@..math_loc_0293.l5:
    sub word [bp - 0x0008], cx
@..math_loc_0293.l6:
    shl al, 1
    jb short @..math_loc_0293.l7
    mov byte [es:di], dh
    inc di
    jmp short @..math_loc_0293.l8
@..math_loc_0293.l7:
    mov byte [es:di], dl
    inc di
@..math_loc_0293.l8:
    loop @..math_loc_0293.l6
    mov cx, word [bp - 0x0008]
    or cx, cx
    jne short @..math_loc_0293.l4
    add si, word [bp - 0x000a]
    add word [bp - 0x0006], strict word 0x140
    mov di, word [bp - 0x0006]
    dec word [bp - 0x0004]
    jne short @..math_loc_0293.l3
    jmp near @..math_loc_0293.l23
@..math_loc_0293.l9:
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
@..math_loc_0293.l10:
    mov cx, word [bp - 0x0002]
@..math_loc_0293.l11:
    mov word [bp - 0x0008], cx
    lodsb
    mov ah, byte [bx]
    inc bx
    cmp cx, byte 9
    jb short @..math_loc_0293.l12
    mov cx, 8
@..math_loc_0293.l12:
    sub word [bp - 0x0008], cx
@..math_loc_0293.l13:
    shl ah, 1
    jae short @..math_loc_0293.l15
    shl al, 1
    jb short @..math_loc_0293.l14
    mov byte [es:di], dh
    inc di
    jmp short @..math_loc_0293.l16
@..math_loc_0293.l14:
    mov byte [es:di], dl
    inc di
    jmp short @..math_loc_0293.l16
@..math_loc_0293.l15:
    shl al, 1
    inc di
@..math_loc_0293.l16:
    loop @..math_loc_0293.l13
    mov cx, word [bp - 0x0008]
    or cx, cx
    jne short @..math_loc_0293.l11
    add word [bp - 0x0006], strict word 0x140
    mov di, word [bp - 0x0006]
    dec word [bp - 0x0004]
    jne short @..math_loc_0293.l10
    jmp near @..math_loc_0293.l23
@..math_loc_0293.l17:
    mov al, byte [bx + 0x6]
    test al, 2
    jne short @..math_loc_0293.l19
    mov ax, word [bp - 0x0002]
    sub ax, word [bp - 0x000c]
    mov word [bp - 0x000a], ax
    mov ax, word [cs:0x01e5]
    mov es, ax
@..math_loc_0293.l18:
    mov cx, word [bp - 0x000c]
    rep movsb
    add si, word [bp - 0x000a]
    add word [bp - 0x0006], strict word 0x140
    mov di, word [bp - 0x0006]
    dec word [bp - 0x0004]
    jne short @..math_loc_0293.l18
    jmp near @..math_loc_0293.l23
@..math_loc_0293.l19:
    mov ax, word [bp - 0x0002]
    sub ax, word [bp - 0x000c]
    mov word [bp - 0x000a], ax
    mov ax, word [cs:0x01e5]
    mov es, ax
@..math_loc_0293.l20:
    mov cx, word [bp - 0x000c]
@..math_loc_0293.l21:
    mov al, byte [si]
    cmp al, 0xff
    je short @..math_loc_0293.l22
    mov byte [es:di], al
@..math_loc_0293.l22:
    inc si
    inc di
    loop @..math_loc_0293.l21
    add si, word [bp - 0x000a]
    add word [bp - 0x0006], strict word 0x140
    mov di, word [bp - 0x0006]
    dec word [bp - 0x0004]
    jne short @..math_loc_0293.l20
@..math_loc_0293.l23:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
leaf_loc_0439:
    push bp
    mov bp, sp
    mov ax, word [bp + 0xc]
    mov word [cs:0x0299], ax
    mov sp, bp
    pop bp
    ret
loc_0447:
    push bp
    mov bp, sp
    mov ax, word [bp + 0xc]
    mov word [cs:0x0293], ax
    mov ax, word [bp + 0xe]
    mov word [cs:0x0291], ax
    mov sp, bp
    pop bp
    ret
math_loc_045c:
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
math_loc_0477:
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
math_loc_0496:
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
math_loc_04b5:
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
@..math_loc_04b5.l1:
    mov di, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov si, di
    mov cx, word [bp - 0x0004]
    rep movsb
    dec dx
    jne short @..math_loc_04b5.l1
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
    jne short @..leaf_loc_0516.l1
    mov cx, word [cs:0x15ac]
    mov dx, word [cs:0x15ae]
    cmp word [bp + 0x10], cx
    jb short @..leaf_loc_0516.l1
    cmp word [bp + 0x12], dx
    jb short @..leaf_loc_0516.l1
    add cx, word [cs:0x15b8]
    dec cx
    add dx, word [cs:0x15ba]
    dec dx
    cmp cx, word [bp + 0xc]
    jb short @..leaf_loc_0516.l1
    cmp dx, word [bp + 0xe]
    jae short @..leaf_loc_0516.l2
@..leaf_loc_0516.l1:
    mov byte [cs:0x0615], 0
    jmp near @..leaf_loc_0516.l12
@..leaf_loc_0516.l2:
    mov byte [cs:0x0615], 1
    mov cx, word [cs:0x15ac]
    mov ax, cx
    cmp word [bp + 0xc], cx
    jb short @..leaf_loc_0516.l3
    mov ax, word [bp + 0xc]
@..leaf_loc_0516.l3:
    mov word [bp - 0x0006], ax
    mov dx, word [cs:0x15ae]
    mov bx, dx
    cmp word [bp + 0xe], dx
    jb short @..leaf_loc_0516.l4
    mov bx, word [bp + 0xe]
@..leaf_loc_0516.l4:
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
    jb short @..leaf_loc_0516.l5
    mov ax, word [bp + 0x10]
    sub ax, word [bp - 0x0006]
    inc ax
    mov word [bp - 0x000e], ax
@..leaf_loc_0516.l5:
    mov ax, word [bp - 0x0008]
    add ax, word [bp - 0x0010]
    dec ax
    cmp ax, word [bp + 0x12]
    jb short @..leaf_loc_0516.l6
    mov ax, word [bp + 0x12]
    sub ax, word [bp - 0x0008]
    inc ax
    mov word [bp - 0x0010], ax
@..leaf_loc_0516.l6:
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
@..leaf_loc_0516.l7:
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
    loop @..leaf_loc_0516.l7
    mov ax, cs
    mov es, ax
    mov ax, word [cs:0x01e5]
    mov ds, ax
    mov si, word [cs:0x15bc]
    mov di, word [cs:0x15b6]
    mov cx, word [cs:0x15ba]
@..leaf_loc_0516.l8:
    push cx
    push si
    mov cx, word [cs:0x15b8]
    rep movsb
    pop si
    add si, strict word 0x140
    pop cx
    loop @..leaf_loc_0516.l8
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov di, word [cs:0x15bc]
    mov ax, word [cs:0x1e66]
    mov ds, ax
    mov si, word [cs:0x1e64]
    mov cx, word [cs:0x15ba]
    mov ax, ds
    or ax, si
    jne short @..leaf_loc_0516.l9
    mov si, 0x1e69
    mov ax, cs
    mov ds, ax
@..leaf_loc_0516.l9:
    push cx
    push di
    push si
    mov cx, word [cs:0x15b8]
@..leaf_loc_0516.l10:
    mov al, byte [si]
    cmp al, 0xff
    je short @..leaf_loc_0516.l11
    mov byte [es:di], al
@..leaf_loc_0516.l11:
    inc si
    inc di
    loop @..leaf_loc_0516.l10
    pop si
    add si, word [cs:0x1e5c]
    pop di
    add di, strict word 0x140
    pop cx
    loop @..leaf_loc_0516.l9
@..leaf_loc_0516.l12:
    ret
math_loc_067f:
    cmp byte [cs:0x0615], 0
    je short @..math_loc_067f.l2
    mov ax, word [cs:0x01e5]
    mov es, ax
    mov ax, cs
    mov ds, ax
    mov di, word [cs:0x15bc]
    mov si, word [cs:0x15b6]
    mov cx, word [cs:0x15ba]
@..math_loc_067f.l1:
    push cx
    push di
    mov cx, word [cs:0x15b8]
    rep movsb
    pop di
    add di, strict word 0x140
    pop cx
    loop @..math_loc_067f.l1
@..math_loc_067f.l2:
    ret
math_loc_06b2:
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
math_loc_06d9:
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
@..math_loc_06d9.l1:
    mov di, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep stosb
    dec word [bp - 0x0004]
    jne short @..math_loc_06d9.l1
    pop di
    pop es
    mov sp, bp
    pop bp
    ret
string_loc_0728:
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
@..string_loc_0728.l1:
    mov di, word [bp - 0x0002]
    mov si, di
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
@..string_loc_0728.l2:
    lodsb
    not al
    stosb
    loop @..string_loc_0728.l2
    dec word [bp - 0x0004]
    jne short @..string_loc_0728.l1
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
dos_alloc_mem:
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
    int 0x21 ; DOS allocate memory
    jae short @..dos_alloc_mem.l1
    jmp near dos_con_loc_07fd
@..dos_alloc_mem.l1:
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
@..dos_alloc_mem.l2:
    mov si, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep movsb
    dec word [bp - 0x0004]
    jne short @..dos_alloc_mem.l2
    mov dx, es
    xor ax, ax
    jmp short @..dos_alloc_mem.l3
dos_con_loc_07fd:
    mov ax, cs
    mov ds, ax
    mov dx, 0x90d
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
    or ax, 0x70a

    db 'SAVEAREA out of memory.', 0

    or ah, byte [si]
    xor dx, dx
    mov ax, dx
@..dos_alloc_mem.l3:
    pop si
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
dos_free_mem:
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
    je short dos_con_loc_088f
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
@..dos_free_mem.l1:
    mov di, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep movsb
    dec word [bp - 0x0004]
    jne short @..dos_free_mem.l1
    mov ax, word [bp + 0x10]
    or ax, ax
    je short @..dos_free_mem.l2
    mov ax, ds
    or ax, ax
    je short @..dos_free_mem.l2
    mov es, ax
    mov ah, 0x49
    int 0x21 ; DOS free memory
    jmp short @..dos_free_mem.l2
dos_con_loc_088f:
    mov ax, cs
    mov ds, ax
    mov dx, 0x99f
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
    or ax, 0x70a

    db 'RESTOREAREA called with NULL pointer.', 0

    or ah, byte [si]
@..dos_free_mem.l2:
    pop si
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
dos_read_file:
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
    je short @..dos_read_file.l2
    cmp ax, strict word 1
    je short @..dos_read_file.l1
    jmp near @..dos_read_file.l4
@..dos_read_file.l1:
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
    jmp short @..dos_read_file.l5
@..dos_read_file.l2:
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
@..dos_read_file.l3:
    push cx
    mov cx, 0x4000
    rep movsb
    and si, strict word 0x3fff
    inc word [cs:0x3c8e]
    mov ax, word [cs:0x3c8e]
    call dos_file_loc_3b90
    pop cx
    loop @..dos_read_file.l3
    mov cx, 0x3a00
    rep movsb
    jmp short @..dos_read_file.l5
@..dos_read_file.l4:
    mov ax, word [cs:0x01e5]
    mov ds, ax
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov cx, 0xfa00
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
@..dos_read_file.l5:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
dos_write_file:
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
    jne short @..dos_write_file.l1
    jmp near @..dos_write_file.l4
@..dos_write_file.l1:
    neg ax
    mov bx, 0x251
    shl ax, 1
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    je short @..dos_write_file.l2
    jmp near dos_con_loc_0a4f
@..dos_write_file.l2:
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
    jb short @..dos_write_file.l3
    jmp near dos_con_loc_0a8d
@..dos_write_file.l3:
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
    jmp short @..dos_write_file.l5
@..dos_write_file.l4:
    mov ax, word [cs:0x01e5]
    mov ds, ax
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov cx, 0xfa00
    mov ah, 0x40
    int 0x21 ; DOS write file (handle)
@..dos_write_file.l5:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
dos_con_loc_0a4f:
    mov ax, cs
    mov ds, ax
    mov dx, 0xb5f
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'SAVE_SCREEN called with bad slot number.', 0
    db 0x0a, 0x24

dos_con_loc_0a8d:
    mov ax, cs

    db 0x8e, 0xd8, 0xba, 0x9d, 0x0b, 0xb4, 0x09, 0xcd, 0x21, 0xb8, 0x01, 0x4c, 0xcd, 0x21, 0x0d, 0x0a
    db 0x07
    db 'SAVE_SCREEN called with table full.', 0
    db 0x0a, 0x24
    times 232 db 0

dos_read_file_2:
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
    jb short @..dos_con_loc_0a4f.l1
    jmp near 0xcf0
@..dos_con_loc_0a4f.l1:
    shl ax, 1
    mov word [bp - 0x0008], ax
    mov bx, 0xbc6
    add bx, ax
    mov word [bp - 0x0002], bx
    mov ax, word [cs:bx]
    or ax, ax
    jne short @..dos_con_loc_0a4f.l2
    jmp near @..dos_con_loc_0a4f.l3
@..dos_con_loc_0a4f.l2:
    mov ax, cs
    mov ds, ax
    mov dx, 0xe3c
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
@..dos_con_loc_0a4f.l3:
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
    je short @..dos_con_loc_0a4f.l4
    jmp near @..dos_con_loc_0cf6.l2
@..dos_con_loc_0a4f.l4:
    cld
    mov cx, 0x1000
    mov bx, word [cs:0x01e1]
    add bx, word [cs:0x0cac]
    mov ds, bx
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
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
@..dos_read_file_2.l1:
    cmp word [bp - 0x0006], byte 0
    je short @..dos_read_file_2.l2
    dec word [bp - 0x0006]
    mov cx, 0x8000
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    mov ax, ds
    add ax, 0x800
    mov ds, ax
    mov cx, 0x8000
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    mov ax, ds
    add ax, 0x800
    mov ds, ax
    jmp short @..dos_read_file_2.l1
@..dos_read_file_2.l2:
    mov cx, word [bp - 0x0008]
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
@..dos_read_file_2.l3:
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    db 0x8c, 0xc8, 0x8e, 0xd8, 0xba, 0x10
dos_con_loc_0cf6:

    db 0x0e, 0xb4, 0x09, 0xcd, 0x21, 0xb8, 0x01, 0x4c, 0xcd, 0x21, 0x8c, 0xc8, 0x8e, 0xd8, 0xba, 0x6b

dos_con_loc_0d06:
    push cs
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'LOAD_MAZE called with bad slot number.', 0
    db 0x0a, 0x24, 0x0d, 0x0a, 0x07
    db 'LOAD_MAZE called with filled slot number.', 0
    db 0x0a, 0x24, 0x0d, 0x0a, 0x07
    db 'oops... LOAD_MAZE filled its memory area.', 0
    db 0x0a, 0x24

@..dos_con_loc_0cf6.l2:
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
@..local.l3:
    test si, 0xc000
    je short @..local.l4
    inc word [cs:0x3c8e]
    mov ax, word [cs:0x3c8e]
    call dos_file_loc_3b90
    sub si, strict word 0x4000
@..local.l4:
    xor di, di
    mov cx, 0x10
    rep movsb
    mov ax, es
    inc ax
    mov es, ax
    dec word [bp - 0x0004]
    jne short @..local.l3
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
    jmp near @..dos_read_file_2.l3
leaf_loc_0e34:
    push ax
    mov bx, 0x29b
    mov cx, 0x14
@..leaf_loc_0e34.l1:
    cmp ax, word [cs:bx]
    jae short @..leaf_loc_0e34.l2
    dec word [cs:bx]
@..leaf_loc_0e34.l2:
    inc bx
    inc bx
    loop @..leaf_loc_0e34.l1
    mov bx, 0x2c3
    mov cx, 0xa
@..leaf_loc_0e34.l3:
    cmp ax, word [cs:bx]
    jae short @..leaf_loc_0e34.l4
    dec word [cs:bx]
@..leaf_loc_0e34.l4:
    inc bx
    inc bx
    loop @..leaf_loc_0e34.l3
    mov bx, 0x2d7
    mov cx, 0xa
@..leaf_loc_0e34.l5:
    cmp ax, word [cs:bx]
    jae short @..leaf_loc_0e34.l6
    dec word [cs:bx]
@..leaf_loc_0e34.l6:
    inc bx
    inc bx
    loop @..leaf_loc_0e34.l5
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
@..local.l5:
    mov bx, word [bp - 0x0004]
    mov di, word [cs:bx]
    mov dx, word [cs:0x0203]
    mov es, dx
    mov ds, dx
    mov si, word [cs:bx + 0x4]
    add dx, word [cs:0x01e1]
    mov cx, word [cs:bx + 0x6]
    or cx, cx
    jne short @..local.l6
    jmp near @..local.l12
@..local.l6:
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
@..local.l7:
    push cx
    mov cx, 0x10
    rep movsb
    xor dx, dx
    cmp di, strict word 0x4000
    jne short @..local.l8
    inc word [cs:0x0f6f]
    inc dx
@..local.l8:
    cmp si, strict word 0x4000
    je short @..local.l9
    cmp si, strict word 0x8000
    jne short @..local.l10
@..local.l9:
    inc word [cs:0x0f6d]
    inc dx
@..local.l10:
    or dx, dx
    je short @..local.l11
    call loc_0f3b
@..local.l11:
    pop cx
    loop @..local.l7
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
    jmp near @..local.l5
@..local.l12:
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
    int 0x67 ; EMS (Expanded Memory)
    cmp bx, word [cs:0x0f6d]
    je short @..local.l13
    or si, strict word 0x4000
    mov ah, 0x44
    mov al, 1
    mov bx, word [cs:0x0f6d]
    mov dx, word [cs:0x0201]
    int 0x67 ; EMS (Expanded Memory)
@..local.l13:
    ret
dos_con_loc_0f6f:
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
    jb short @..dos_con_loc_0f6f.l1
    jmp near @..dos_con_loc_0f6f.l3
@..dos_con_loc_0f6f.l1:
    shl ax, 1
    mov word [bp - 0x0008], ax
    mov bx, 0xbc6
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short @..dos_con_loc_0f6f.l2
    jmp near @..dos_con_loc_0f6f.l3
@..dos_con_loc_0f6f.l2:
    mov word [cs:bx], 0
    mov cx, word [cs:0x0caa]
    dec cx
    mov word [cs:0x0caa], cx
    call loc_43e1
@..dos_con_loc_0f6f.l3:
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
dos_print_str:
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
dos_con_loc_0fda:
    mov ax, cs
    mov ds, ax
    mov dx, 0x10ea
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
    or ax, 0x70a
    dec bp
    inc cx
    pop dx
    inc bp
    and byte [bp + di + 0x45], dl
    push sp
    and byte [di + 0x52], al
    push dx
    dec di
    push dx
    add byte [cs:bp + si], cl
    and al, 0x4b
    mov cl, 2
    shl bx, cl
    add bx, strict word 0xbda
    mov ax, word [cs:bx]
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x12]
    cmp ax, strict word 0xffff
    je short @..dos_print_str.l2
    jmp near @..dos_print_str.l12
@..dos_print_str.l2:
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
    jne short @..dos_print_str.l3
    jmp near @..local.l16
@..dos_print_str.l3:
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
@..dos_print_str.l4:
    push cx
    mov cx, word [bp - 0x0004]
    push si
    push ax
    push di
    xchg si, ax
    xor ah, ah
    cmp word [bp + 0x10], byte 0
    je short @..dos_print_str.l10
    cmp word [bp + 0x10], byte 2
    je short @..dos_print_str.l8
    cmp word [bp + 0x10], byte 3
    je short @..dos_print_str.l6
@..dos_print_str.l5:
    lodsb
    or al, byte [es:di]
    stosb
    loop @..dos_print_str.l5
    jmp short @..dos_print_str.l11
@..dos_print_str.l6:
    lodsb
    cmp al, 0xff
    je short @..dos_print_str.l7
    mov byte [es:di], ah
@..dos_print_str.l7:
    inc di
    loop @..dos_print_str.l6
    jmp short @..dos_print_str.l11
@..dos_print_str.l8:
    lodsb
    cmp al, 0xff
    je short @..dos_print_str.l9
    mov byte [es:di], al
@..dos_print_str.l9:
    inc di
    loop @..dos_print_str.l8
    jmp short @..dos_print_str.l11
@..dos_print_str.l10:
    rep movsb
@..dos_print_str.l11:
    pop di
    add di, strict word 0x140
    pop ax
    mov dx, word [bp - 0x0006]
    add ax, dx
    pop si
    pop cx
    loop @..dos_print_str.l4
    jmp near @..local.l16
@..dos_print_str.l12:
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
    jne short @..dos_print_str.l13
    jmp near @..local.l16
@..dos_print_str.l13:
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
@..dos_print_str.l14:
    push cx
    mov cx, word [bp - 0x0004]
    push si
    push ax
    push di
    xchg si, ax
    xor ah, ah
    cmp word [bp + 0x10], byte 0
    je short @..local.l14
    cmp word [bp + 0x10], byte 2
    je short @..dos_con_loc_0fda.l3
    cmp word [bp + 0x10], byte 3
    je short @..dos_con_loc_0fda.l1
@..dos_print_str.l15:
    mov al, byte [si]
    dec si
    or al, byte [es:di]
    stosb
    loop @..dos_print_str.l15
    jmp short @..local.l15
@..dos_con_loc_0fda.l1:
    mov al, byte [si]
    dec si
    cmp al, 0xff
    je short @..dos_con_loc_0fda.l2
    mov byte [es:di], ah
@..dos_con_loc_0fda.l2:
    inc di
    loop @..dos_con_loc_0fda.l1
    jmp short @..local.l15
@..dos_con_loc_0fda.l3:
    mov al, byte [si]
    dec si
    cmp al, 0xff
    je short @..dos_con_loc_0fda.l4
    mov byte [es:di], al
@..dos_con_loc_0fda.l4:
    inc di
    loop @..dos_con_loc_0fda.l3
    jmp short @..local.l15
@..local.l14:
    mov al, byte [si]
    dec si
    stosb
    loop @..local.l14
@..local.l15:
    pop di
    add di, strict word 0x140
    pop ax
    mov dx, word [bp - 0x0006]
    add ax, dx
    pop si
    pop cx
    loop @..dos_print_str.l14
@..local.l16:
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
mouse_init:
    push bp
    mov bp, sp
    push es
    mov ax, ds
    mov es, ax
    cmp byte [cs:0x0205], 0
    je short @..mouse_init.l1
    mov ax, 0
    int 0x33 ; BIOS mouse
    push ds
    push es
    push di
    push si
    mov ax, 7
    xor cx, cx
    mov dx, 0x27f
    int 0x33 ; BIOS mouse
    mov ax, 8
    xor cx, cx
    mov dx, 0xc7
    int 0x33 ; BIOS mouse
    mov ax, 4
    xor cx, cx
    xor dx, dx
    int 0x33 ; BIOS mouse
    mov ax, 3
    int 0x33 ; BIOS mouse
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
    int 0x33 ; BIOS mouse
    pop es
@..mouse_init.l1:
    pop es
    mov sp, bp
    pop bp
    ret
mouse_init_2:
    push bp
    mov bp, sp
    push es
    mov ax, ds
    mov es, ax
    cmp byte [cs:0x0228], 0
    je short @..mouse_init_2.l2
    mov byte [cs:0x0228], 0
    mov ax, 0
    int 0x33 ; BIOS mouse
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
@..mouse_init_2.l1:
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
    loop @..mouse_init_2.l1
    pop si
    pop di
    pop es
    pop ds
@..mouse_init_2.l2:
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
    je short @..bios_mouse_loc_12c9.l1
    cmp byte [cs:0x0228], 1
    je short @..bios_mouse_loc_12c9.l2
@..bios_mouse_loc_12c9.l1:
    jmp near @..bios_mouse_loc_12c9.l4
@..bios_mouse_loc_12c9.l2:
    mov ax, 3
    int 0x33 ; BIOS mouse
    shr cx, 1
    cmp word [cs:0x15ac], cx
    jne short @..bios_mouse_loc_12c9.l3
    cmp word [cs:0x15ae], dx
    je short @..bios_mouse_loc_12c9.l4
@..bios_mouse_loc_12c9.l3:
    shl cx, 1
    mov ax, cs
    push ax
    call math_loc_1e1a
@..bios_mouse_loc_12c9.l4:
    mov byte [cs:0x0227], 0
    pop di
    pop si
    pop es
    pop ds
    ret
bios_mouse_loc_1308:
    cmp byte [cs:0x0228], 1
    jne short @..bios_mouse_loc_1308.l1
    mov byte [cs:0x0227], 1
@..bios_mouse_loc_1308.l1:
    ret
bios_mouse_loc_1317:
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
    je short @..bios_mouse_loc_1317.l6
    mov bx, word [cs:0x1ecd]
    or bx, bx
    je short @..bios_mouse_loc_1317.l1
    mov word [cs:0x1ecd], 0
    mov word [bp - 0x0002], bx
    mov cx, word [cs:0x1ecf]
    mov dx, word [cs:0x1ed1]
    jmp short @..bios_mouse_loc_1317.l2
@..bios_mouse_loc_1317.l1:
    mov ax, 3
    int 0x33 ; BIOS mouse
    xor bx, bx
    mov word [bp - 0x0002], bx
    shr cx, 1
@..bios_mouse_loc_1317.l2:
    mov bx, cx
    mov si, word [bp + 0xc]
@..bios_mouse_loc_1317.l3:
    cmp word [si], byte 0xff
    je short @..bios_mouse_loc_1317.l5
    cmp bx, word [si]
    jb short @..bios_mouse_loc_1317.l4
    cmp dx, word [si + 0x2]
    jb short @..bios_mouse_loc_1317.l4
    cmp word [si + 0x4], bx
    jb short @..bios_mouse_loc_1317.l4
    cmp word [si + 0x6], dx
    jb short @..bios_mouse_loc_1317.l4
    mov ax, word [bp - 0x0004]
    mov bx, word [bp - 0x0002]
    or bx, bx
    je short @..bios_mouse_loc_1317.l6
    neg ax
    jmp short @..bios_mouse_loc_1317.l6
@..bios_mouse_loc_1317.l4:
    add si, byte 8
    inc word [bp - 0x0004]
    jmp short @..bios_mouse_loc_1317.l3
@..bios_mouse_loc_1317.l5:
    xor ax, ax
@..bios_mouse_loc_1317.l6:
    pop es
    pop si
    pop ds
    mov sp, bp
    pop bp
    ret
bios_mouse_loc_139a:
    push bp
    mov bp, sp
    sub sp, byte 6
    push es
    mov ax, ds
    mov es, ax
    cmp byte [cs:0x0228], 0
    je short @..bios_mouse_loc_139a.l1
    mov ax, 3
    int 0x33 ; BIOS mouse
    mov word [bp - 0x0002], bx
    mov bx, word [bp + 0xc]
    shr cx, 1
    mov word [bx], cx
    mov bx, word [bp + 0xe]
    mov word [bx], dx
    mov ax, word [bp - 0x0002]
@..bios_mouse_loc_139a.l1:
    pop es
    mov sp, bp
    pop bp
    ret
mouse_set_pos:
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
    jb short @..mouse_set_pos.l2
@..mouse_set_pos.l1:
    jmp near @..local.l17
@..mouse_set_pos.l2:
    mov bx, word [bp + 0x12]
    mul bx
    or dx, dx
    jne short @..mouse_set_pos.l1
    cmp ax, 0x401
    jae short @..mouse_set_pos.l1
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
    jne short @..mouse_set_pos.l3
    mov ax, cs
    mov ds, ax
    mov es, ax
    mov si, 0x1e60
    mov di, 0x1e5c
    mov cx, 4
    rep movsb
@..mouse_set_pos.l3:
    cmp byte [cs:0x0228], 0
    je short @..mouse_set_pos.l7
    mov cx, word [bp + 0x14]
    cmp cx, byte 0xff
    je short @..mouse_set_pos.l5
    mov dx, word [bp + 0x16]
    cmp dx, byte 0xff
    je short @..mouse_set_pos.l5
    shl cx, 1
    mov ax, 4
    int 0x33 ; BIOS mouse
@..mouse_set_pos.l4:
    mov ax, 3
    int 0x33 ; BIOS mouse
    jmp short @..mouse_set_pos.l6
@..mouse_set_pos.l5:
    cmp byte [cs:0x0226], 0
    je short @..mouse_set_pos.l4
    mov cx, word [cs:0x15ac]
    shl cx, 1
    mov dx, word [cs:0x15ae]
@..mouse_set_pos.l6:
    mov ax, cs
    push ax
    call math_loc_1e1a
    mov byte [cs:0x0227], 0
@..mouse_set_pos.l7:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
@..local.l17:
    mov ax, cs
    mov ds, ax
    mov dx, 0x1586
dos_con_loc_147d:
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

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
    je short @..local.l18
    retf
@..local.l18:
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
    jb short @..math_loc_1e35.l1
    mov bx, word [cs:0x1e5e]
@..math_loc_1e35.l1:
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
    jb short @..math_loc_1e35.l2
    mov cx, word [cs:0x1e5c]
@..math_loc_1e35.l2:
    mov word [cs:0x15be], cx
    mov di, word [cs:0x15b6]
    mov ax, cs
    mov es, ax
    mov ax, 0xa000
    mov ds, ax
    mov cx, word [cs:0x15c0]
@..math_loc_1e35.l3:
    push cx
    push si
    mov cx, word [cs:0x15be]
    rep movsb
    pop si
    add si, strict word 0x140
    pop cx
    loop @..math_loc_1e35.l3
    mov ax, word [cs:0x15ae]
    cmp ax, strict word 0xffff
    jne short @..math_loc_1e35.l4
    jmp near @..math_loc_1e35.l12
@..math_loc_1e35.l4:
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
    jb short @..math_loc_1e35.l5
    cmp word [bp - 0x0002], dx
    jb short @..math_loc_1e35.l5
    add cx, word [cs:0x15be]
    dec cx
    add dx, word [cs:0x15c0]
    dec dx
    cmp cx, word [cs:0x15ac]
    jb short @..math_loc_1e35.l5
    cmp dx, word [cs:0x15ae]
    jae short @..math_loc_1e35.l6
@..math_loc_1e35.l5:
    mov byte [cs:0x1e68], 0
    jmp near @..math_loc_1e35.l12
@..math_loc_1e35.l6:
    mov byte [cs:0x1e68], 1
    mov cx, word [cs:0x15b0]
    mov ax, cx
    cmp word [cs:0x15ac], cx
    jb short @..math_loc_1e35.l7
    mov ax, word [cs:0x15ac]
@..math_loc_1e35.l7:
    mov word [bp - 0x0006], ax
    mov dx, word [cs:0x15b2]
    mov bx, dx
    cmp word [cs:0x15ae], dx
    jb short @..math_loc_1e35.l8
    mov bx, word [cs:0x15ae]
@..math_loc_1e35.l8:
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
    jb short @..math_loc_1e35.l9
    mov ax, word [bp - 0x0004]
    sub ax, word [bp - 0x0006]
    inc ax
    mov word [bp - 0x000e], ax
@..math_loc_1e35.l9:
    mov ax, word [bp - 0x0008]
    add ax, word [bp - 0x0010]
    dec ax
    cmp ax, word [bp - 0x0002]
    jb short @..math_loc_1e35.l10
    mov ax, word [bp - 0x0002]
    sub ax, word [bp - 0x0008]
    inc ax
    mov word [bp - 0x0010], ax
@..math_loc_1e35.l10:
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
@..math_loc_1e35.l11:
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
    loop @..math_loc_1e35.l11
@..math_loc_1e35.l12:
    mov ax, 0xa000
    mov es, ax
    mov di, word [cs:0x15c2]
    mov ax, word [cs:0x1e66]
    mov ds, ax
    mov si, word [cs:0x1e64]
    mov cx, word [cs:0x15c0]
    mov ax, ds
    or ax, si
    jne short @..math_loc_1e35.l13
    mov si, 0x1e69
    mov ax, cs
    mov ds, ax
@..math_loc_1e35.l13:
    push di
    push si
@..math_loc_1e35.l14:
    push cx
    push di
    push si
    mov cx, word [cs:0x15be]
@..math_loc_1e35.l15:
    mov al, byte [si]
    cmp al, 0xff
    je short @..math_loc_1e35.l16
    mov byte [es:di], al
@..math_loc_1e35.l16:
    inc si
    inc di
    loop @..math_loc_1e35.l15
    pop si
    add si, word [cs:0x1e5c]
    pop di
    add di, strict word 0x140
    pop cx
    loop @..math_loc_1e35.l14
    pop bx
    pop di
    mov ax, word [cs:0x15ae]
    cmp ax, strict word 0xffff
    jne short @..math_loc_1e35.l17
    jmp near @..local.l32
@..math_loc_1e35.l17:
    mov si, word [cs:0x15b6]
    mov cx, word [cs:0x15c0]
@..math_loc_1e35.l18:
    push cx
    push di
    push si
    push bx
    mov cx, word [cs:0x15be]
@..local.l19:
    mov al, byte [bx]
    inc bx
    cmp al, 0xff
    jne short @..local.l20
    mov dl, byte [cs:si]
    mov byte [es:di], dl
@..local.l20:
    inc si
    inc di
    loop @..local.l19
    pop bx
    add bx, word [cs:0x1e5c]
    pop si
    add si, word [cs:0x15be]
    pop di
    add di, strict word 0x140
    pop cx
    loop @..math_loc_1e35.l18
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
    je short @..local.l27
    mov ax, word [bp - 0x0008]
    sub ax, word [cs:0x15ae]
    mov bx, word [bp - 0x0002]
    mul bx
    mov di, ax
    add di, strict word 0x1dc4
    mov ax, word [bp - 0x0006]
    sub ax, word [cs:0x15ac]
    mov bx, 0x1e4c
@..local.l21:
    cmp ax, strict word 8
    jb short @..local.l22
    sub ax, strict word 8
    inc di
    jmp short @..local.l21
@..local.l22:
    mov cx, ax
    mov ah, 0xff
    shr ah, cl
    mov dx, word [bp - 0x000e]
    add dx, cx
@..local.l23:
    cmp dx, byte 8
    jb short @..local.l24
    not ah
    mov byte [bx], ah
    inc bx
    mov ah, 0xff
    sub dx, byte 8
    je short @..local.l25
    jmp short @..local.l23
@..local.l24:
    mov al, 0xff
    mov cx, 8
    sub cx, dx
    shl al, cl
    and ah, al
    not ah
    mov byte [bx], ah
    inc bx
@..local.l25:
    sub bx, strict word 0x1e4c
    mov word [bp - 0x0004], bx
    mov cx, word [bp - 0x0010]
@..local.l26:
    push cx
    push di
    mov si, 0x1e4c
    mov cx, word [bp - 0x0004]
    rep movsb
    pop di
    add di, word [bp - 0x0002]
    pop cx
    loop @..local.l26
@..local.l27:
    mov bx, 0x1dc4
    mov si, word [cs:0x15b4]
    mov di, word [cs:0x15bc]
    mov ax, 0xa000
    mov es, ax
    mov cx, word [cs:0x15ba]
@..local.l28:
    push cx
    push si
    push bx
    push di
    mov cx, word [cs:0x15b8]
@..local.l29:
    mov ah, byte [bx]
    inc bx
    mov al, 9
@..local.l30:
    dec al
    je short @..local.l29
    shl ah, 1
    jae short @..local.l31
    mov dl, byte [si]
    mov byte [es:di], dl
@..local.l31:
    inc di
    inc si
    loop @..local.l30
    pop di
    add di, strict word 0x140
    pop bx
    add bx, word [bp - 0x0002]
    pop si
    add si, word [cs:0x15b8]
    pop cx
    loop @..local.l28
@..local.l32:
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
loc_217d:
    mov word [cs:0x1ecd], 0
    ret
loc_2185:
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
    jb short @..local.l33
    jmp near @..local.l35
@..local.l33:
    shl ax, 1
    mov word [bp - 0x0008], ax
    mov bx, 0x229
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short @..local.l34
    jmp near @..local.l35
@..local.l34:
    mov word [cs:bx], 0
    mov cx, word [cs:0x0caa]
    dec cx
    mov word [cs:0x0caa], cx
    call loc_43e1
@..local.l35:
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
dos_read_file_3:
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
    je short @..dos_read_file_3.l1
    jmp near 0x22ac
@..dos_read_file_3.l1:
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
    int 0x21 ; DOS read file (handle)
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
    jb short @..dos_read_file_3.l2
    jmp near dos_con_loc_22ee
@..dos_read_file_3.l2:
    mov bx, word [bp - 0x0002]
    mov ax, word [cs:bx]
    add ax, word [cs:0x01e1]
    mov ds, ax
@..dos_read_file_3.l3:
    mov cx, word [bp - 0x0004]
    mov dx, word [bp - 0x0006]
    mov bx, cx
    or bx, dx
    je short @..dos_read_file_3.l6
    or dx, dx
    jne short @..dos_read_file_3.l4
    cmp cx, strict word 0x1000
    jae short @..dos_read_file_3.l4
    sub word [bp - 0x0004], cx
    jmp short @..dos_read_file_3.l5
@..dos_read_file_3.l4:
    sub cx, strict word 0x1000
    sbb dx, byte 0
    mov word [bp - 0x0004], cx
    mov word [bp - 0x0006], dx
    mov cx, 0x1000
@..dos_read_file_3.l5:
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    mov ax, ds
    add ax, 0x100
    mov ds, ax
    jmp short @..dos_read_file_3.l3
@..dos_read_file_3.l6:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret

    db 0x8b, 0x46, 0x0e, 0xbb, 0x0a, 0x00, 0xf7, 0xf3, 0x2e, 0x08, 0x06, 0xde, 0x23, 0x2e, 0x08, 0x16
    db 0xdf, 0x23

dos_con_loc_22be:
    mov ax, cs
    mov ds, ax
    mov dx, 0x23ce
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Picture slot 00 not freed.', 0
    db 0x0a, 0x24

dos_con_loc_22ee:
    mov ax, cs

    db 0x8e, 0xd8, 0xba, 0xfe, 0x23, 0xb4, 0x09, 0xcd, 0x21, 0xb8, 0x01, 0x4c, 0xcd, 0x21, 0x0d, 0x0a
    db 0x07
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

math_loc_2528:
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
@..math_loc_2528.l1:
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
@..math_loc_2528.l2:
    mov cx, word [bp - 0x0004]
@..math_loc_2528.l3:
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
    jne short @..math_loc_2528.l4
    jmp near @..local.l37
@..math_loc_2528.l4:
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
@..math_loc_2528.l5:
    mov ax, word [bp - 0x000e]
    sub ax, word [bp - 0x0008]
    jne short @..math_loc_2528.l6
    mov word [bp - 0x001c], ax
    mov word [bp - 0x0016], ax
    mov ax, word [bp - 0x0010]
    sub ax, word [bp - 0x000a]
    jne short @..math_loc_2528.l8
    mov word [bp - 0x001e], ax
    mov word [bp - 0x0018], ax
    mov ax, word [bp - 0x0012]
    sub ax, word [bp - 0x000c]
    jne short @..math_loc_2528.l10
    mov ax, word [bp - 0x0014]
    mov byte [si], al
    inc word [bp - 0x0022]
    jmp near @..local.l37
@..math_loc_2528.l6:
    mov word [bp - 0x001c], ax
    or ax, ax
    jns short @..math_loc_2528.l7
    neg ax
@..math_loc_2528.l7:
    mov word [bp - 0x0016], ax
    mov ax, word [bp - 0x0010]
    sub ax, word [bp - 0x000a]
@..math_loc_2528.l8:
    mov word [bp - 0x001e], ax
    or ax, ax
    jns short @..math_loc_2528.l9
    neg ax
@..math_loc_2528.l9:
    mov word [bp - 0x0018], ax
    mov ax, word [bp - 0x0012]
    sub ax, word [bp - 0x000c]
@..math_loc_2528.l10:
    mov word [bp - 0x0020], ax
    or ax, ax
    jns short @..math_loc_2528.l11
    neg ax
@..math_loc_2528.l11:
    mov word [bp - 0x001a], ax
    mov ax, word [bp - 0x001a]
    cmp ax, word [bp - 0x0018]
    jae short @..math_loc_2528.l12
    jmp near @..math_loc_2528.l24
@..math_loc_2528.l12:
    cmp ax, word [bp - 0x0016]
    jb short @..math_loc_2528.l18
    mov bx, 0xffff
    mov ax, word [bp - 0x0020]
    or ax, ax
    jns short @..math_loc_2528.l13
    neg bx
@..math_loc_2528.l13:
    add word [bp - 0x0012], bx
    mov bx, 0xffff
    mov ax, word [bp - 0x0016]
    shl ax, 1
    cmp ax, word [bp - 0x001a]
    jb short @..math_loc_2528.l15
    mov ax, word [bp - 0x001c]
    or ax, ax
    jns short @..math_loc_2528.l14
    neg bx
@..math_loc_2528.l14:
    add word [bp - 0x000e], bx
@..math_loc_2528.l15:
    mov bx, 0xffff
    mov ax, word [bp - 0x0018]
    shl ax, 1
    cmp ax, word [bp - 0x001a]
    jb short @..math_loc_2528.l17
    mov bx, 0xffff
    mov ax, word [bp - 0x001e]
    or ax, ax
    jns short @..math_loc_2528.l16
    neg bx
@..math_loc_2528.l16:
    add word [bp - 0x0010], bx
@..math_loc_2528.l17:
    jmp near @..math_loc_2528.l30
@..math_loc_2528.l18:
    mov bx, 0xffff
    mov ax, word [bp - 0x001c]
    or ax, ax
    jns short @..math_loc_2528.l19
    neg bx
@..math_loc_2528.l19:
    add word [bp - 0x000e], bx
    mov bx, 0xffff
    mov ax, word [bp - 0x001a]
    shl ax, 1
    cmp ax, word [bp - 0x0016]
    jb short @..math_loc_2528.l21
    mov ax, word [bp - 0x0020]
    or ax, ax
    jns short @..math_loc_2528.l20
    neg bx
@..math_loc_2528.l20:
    add word [bp - 0x0012], bx
@..math_loc_2528.l21:
    mov bx, 0xffff
    mov ax, word [bp - 0x0018]
    shl ax, 1
    cmp ax, word [bp - 0x0016]
    jb short @..math_loc_2528.l23
    mov ax, word [bp - 0x001e]
    or ax, ax
    jns short @..math_loc_2528.l22
    neg bx
@..math_loc_2528.l22:
    add word [bp - 0x0010], bx
@..math_loc_2528.l23:
    jmp near @..math_loc_2528.l30
@..math_loc_2528.l24:
    mov ax, word [bp - 0x0016]
    cmp ax, word [bp - 0x0018]
    jb short @..math_loc_2528.l25
    jmp short @..math_loc_2528.l18
@..math_loc_2528.l25:
    mov bx, 0xffff
    mov ax, word [bp - 0x001e]
    or ax, ax
    jns short @..math_loc_2528.l26
    neg bx
@..math_loc_2528.l26:
    add word [bp - 0x0010], bx
    mov bx, 0xffff
    mov ax, word [bp - 0x001a]
    shl ax, 1
    cmp ax, word [bp - 0x0018]
    jb short @..math_loc_2528.l28
    mov ax, word [bp - 0x0020]
    or ax, ax
    jns short @..math_loc_2528.l27
    neg bx
@..math_loc_2528.l27:
    add word [bp - 0x0012], bx
@..math_loc_2528.l28:
    mov bx, 0xffff
    mov ax, word [bp - 0x0016]
    shl ax, 1
    cmp ax, word [bp - 0x0018]
    jb short @..math_loc_2528.l30
    mov ax, word [bp - 0x001c]
    or ax, ax
    jns short @..math_loc_2528.l29
    neg bx
@..math_loc_2528.l29:
    add word [bp - 0x000e], bx
@..math_loc_2528.l30:
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
    je short @..local.l39
    mov byte [si], al
    inc word [bp - 0x0022]
@..local.l37:
    inc si
    pop cx
    loop @..local.l38
    add word [bp - 0x0002], strict word 0x140
    mov si, word [bp - 0x0002]
    dec word [bp - 0x0006]
    je short @..local.l40
    jmp near @..math_loc_2528.l2
@..local.l38:
    jmp near @..math_loc_2528.l3
@..local.l39:
    jmp near @..math_loc_2528.l5
@..local.l40:
    mov ax, word [bp - 0x0022]
    or ax, ax
    je short @..local.l42
    mov ax, word [bp + 0x14]
    or ax, ax
    je short @..local.l41
    push word [bp + 0x14]
    call far [cs:0x01fb]
    pop ax
@..local.l41:
    jmp near @..math_loc_2528.l1
@..local.l42:
    call math_loc_067f
    call bios_mouse_loc_12c9
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
bios_video_loc_277f:
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
    jne short @..bios_video_loc_277f.l1
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
    jmp short @..bios_video_loc_277f.l2
@..bios_video_loc_277f.l1:
    mov cx, word [bp + 0x12]
    mov bx, word [bp + 0x10]
    mov ch, bl
    mov bx, word [bp + 0xe]
    mov dh, bl
@..bios_video_loc_277f.l2:
    mov bx, word [bp + 0xc]
    mov ax, 0x1010
    int 0x10 ; BIOS video
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
bios_video_loc_27d0:
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
    int 0x10 ; BIOS video
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
dos_free_mem_2:
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
    int 0x21 ; DOS allocate memory
    jae short @..dos_free_mem_2.l1
    jmp near bios_video_loc_28ba
@..dos_free_mem_2.l1:
    mov word [bp - 0x0002], ax
    mov ax, 0x1017
    xor bx, bx
    mov cx, 0x100
    mov dx, word [bp - 0x0002]
    mov es, dx
    xor dx, dx
    int 0x10 ; BIOS video
    mov ax, word [bp - 0x0002]
    mov ds, ax
@..dos_free_mem_2.l2:
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0002]
    mov ds, ax
    xor si, si
    les di, word [cs:0x01f7]
    mov cx, 0x100
@..dos_free_mem_2.l3:
    push cx
    mov cx, 3
@..dos_free_mem_2.l4:
    mov al, byte [si]
    cmp al, byte [es:di]
    je short @..dos_free_mem_2.l6
    mov word [bp - 0x0004], 1
    cmp al, byte [es:di]
    jb short @..dos_free_mem_2.l5
    dec byte [si]
    jmp short @..dos_free_mem_2.l6
@..dos_free_mem_2.l5:
    inc byte [si]
@..dos_free_mem_2.l6:
    inc si
    inc di
    loop @..dos_free_mem_2.l4
    pop cx
    loop @..dos_free_mem_2.l3
    mov ax, word [bp - 0x0004]
    or ax, ax
    je short @..dos_free_mem_2.l10
    mov ax, word [bp - 0x0002]
    mov ds, ax
    xor si, si
    mov cx, 0x300
    mov dx, 0x3c8
    mov al, 0
    out dx, al
@..dos_free_mem_2.l7:
    mov dx, 0x3da
    in al, dx
    test al, 1
    jne short @..dos_free_mem_2.l7
@..dos_free_mem_2.l8:
    mov dx, 0x3da
    in al, dx
    test al, 1
    je short @..dos_free_mem_2.l8
    lodsb
    mov dx, 0x3c9
    out dx, al
    loop @..dos_free_mem_2.l7
    mov ax, word [bp + 0xc]
    or ax, ax
    je short @..dos_free_mem_2.l9
    push ax
    call far [cs:0x01fb]
    pop ax
@..dos_free_mem_2.l9:
    jmp short @..dos_free_mem_2.l2
@..dos_free_mem_2.l10:
    mov bx, word [bp - 0x0002]
    mov es, bx
    mov ah, 0x49
    int 0x21 ; DOS free memory
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
bios_video_loc_28ba:
    mov ax, cs
    mov ds, ax
    mov dx, 0x29ca
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Memory unavailable in fade_in().', 0
    db 0x0a, 0x24

dos_free_mem_3:
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
    int 0x21 ; DOS allocate memory
    jae short @..bios_video_loc_28ba.l1
    jmp near dos_mem_loc_29bf
@..bios_video_loc_28ba.l1:
    mov word [bp - 0x0002], ax
    mov ax, 0x1017
    xor bx, bx
    mov cx, 0x100
    mov dx, word [bp - 0x0002]
    mov es, dx
    xor dx, dx
    int 0x10 ; BIOS video
@..bios_video_loc_28ba.l2:
    mov word [bp - 0x0004], 0
    mov ax, word [bp - 0x0002]
    mov ds, ax
    xor si, si
    mov cx, 0x100
@..bios_video_loc_28ba.l3:
    push cx
    mov cx, 3
    lea di, word [bp - 0x000a]
@..bios_video_loc_28ba.l4:
    xor ax, ax
    mov al, byte [si]
    cmp ax, word [ss:di]
    je short @..bios_video_loc_28ba.l6
    mov word [bp - 0x0004], 1
    cmp ax, word [ss:di]
    jb short @..bios_video_loc_28ba.l5
    dec byte [si]
    jmp short @..bios_video_loc_28ba.l6
@..bios_video_loc_28ba.l5:
    inc byte [si]
@..bios_video_loc_28ba.l6:
    inc di
    inc di
    inc si
    loop @..bios_video_loc_28ba.l4
    pop cx
    loop @..bios_video_loc_28ba.l3
    mov ax, word [bp - 0x0004]
    or ax, ax
    je short @..bios_video_loc_28ba.l9
    mov ax, word [bp - 0x0002]
    mov ds, ax
    xor si, si
    mov cx, 0x300
    mov dx, 0x3c8
    mov al, 0
    out dx, al
@..bios_video_loc_28ba.l7:
    mov dx, 0x3da
    in al, dx
    test al, 1
    jne short @..bios_video_loc_28ba.l7
@..bios_video_loc_28ba.l8:
    mov dx, 0x3da
    in al, dx
    test al, 1
    je short @..bios_video_loc_28ba.l8
    lodsb
    mov dx, 0x3c9
    out dx, al
    loop @..bios_video_loc_28ba.l7
    mov ax, word [bp + 0x12]
    or ax, ax
    je short @..bios_video_loc_28ba.l2
    push ax
    call far [cs:0x01fb]
    pop ax
    jmp short @..bios_video_loc_28ba.l2
@..bios_video_loc_28ba.l9:
    mov bx, word [bp - 0x0002]
    mov es, bx
    mov ah, 0x49
    int 0x21 ; DOS free memory
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
dos_mem_loc_29bf:
    mov ax, cs
    mov ds, ax
    mov dx, 0x2acf
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Memory unavailable in fade_out().', 0
    db 0x0a, 0x24

dos_free_mem_4:
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
    jne short @..dos_mem_loc_29bf.l3
    lds si, word [cs:0x01f7]
    mov cx, 0x300
    mov dx, 0x3c8
    mov al, 0
    out dx, al
@..dos_mem_loc_29bf.l1:
    mov dx, 0x3da
    in al, dx
    test al, 1
    jne short @..dos_mem_loc_29bf.l1
@..dos_mem_loc_29bf.l2:
    mov dx, 0x3da
    in al, dx
    test al, 1
    je short @..dos_mem_loc_29bf.l2
    lodsb
    mov dx, 0x3c9
    out dx, al
    loop @..dos_mem_loc_29bf.l1
    jmp short @..dos_mem_loc_29bf.l8
@..dos_mem_loc_29bf.l3:
    mov ah, 0x48
    mov bx, 0x30
    int 0x21 ; DOS allocate memory
    jae short @..dos_mem_loc_29bf.l4
    jmp near dos_con_loc_2a97
@..dos_mem_loc_29bf.l4:
    mov word [bp - 0x0002], ax
    mov ds, ax
    xor di, di
    mov ax, word [bp + 0xc]
    mov bx, word [bp + 0xe]
    mov dx, word [bp + 0x10]
    mov cx, 0x100
@..dos_mem_loc_29bf.l5:
    mov byte [di], al
    mov byte [di + 0x1], bl
    mov byte [di + 0x2], dl
    add di, byte 3
    loop @..dos_mem_loc_29bf.l5
    mov ax, word [bp - 0x0002]
    mov ds, ax
    xor si, si
    mov cx, 0x300
    mov dx, 0x3c8
    mov al, 0
    out dx, al
@..dos_mem_loc_29bf.l6:
    mov dx, 0x3da
    in al, dx
    test al, 1
    jne short @..dos_mem_loc_29bf.l6
@..dos_mem_loc_29bf.l7:
    mov dx, 0x3da
    in al, dx
    test al, 1
    je short @..dos_mem_loc_29bf.l7
    lodsb
    mov dx, 0x3c9
    out dx, al
    loop @..dos_mem_loc_29bf.l6
    mov bx, word [bp - 0x0002]
    mov es, bx
    mov ah, 0x49
    int 0x21 ; DOS free memory
@..dos_mem_loc_29bf.l8:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
dos_con_loc_2a97:
    mov ax, cs
    mov ds, ax
    mov dx, 0x2ba7
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Memory unavailable in RESET_RGB().', 0
    db 0x0a, 0x24

dos_mem_loc_2acf:
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
dos_mem_loc_2b01:
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
    je short @..dos_mem_loc_2b01.l3
    cmp word [bp + 0xc], byte 1
    je short @..dos_mem_loc_2b01.l4
    cmp word [bp + 0xc], byte 3
    je short @..dos_mem_loc_2b01.l1
    mov ax, 0x4180
    sub ax, word [cs:0x0cac]
    mov bx, 0x10
    mul bx
    jmp short @..dos_mem_loc_2b01.l5
@..dos_mem_loc_2b01.l1:
    mov ah, 0x36
    mov dx, word [bp + 0xe]
    int 0x21 ; DOS get disk free space
    cmp ax, strict word 0xffff
    jne short @..dos_mem_loc_2b01.l2
    xor ax, ax
    xor dx, dx
    jmp short @..dos_mem_loc_2b01.l5
@..dos_mem_loc_2b01.l2:
    mul cx
    mul bx
    jmp short @..dos_mem_loc_2b01.l5
@..dos_mem_loc_2b01.l3:
    mov ah, 0x48
    mov bx, 0xffff
    int 0x21 ; DOS allocate memory
    mov ax, 0x10
    mul bx
    jmp short @..dos_mem_loc_2b01.l5
@..dos_mem_loc_2b01.l4:
    mov ax, word [cs:0x01ff]
    sub ax, word [cs:0x0391]
    mov bx, 0x10
    mul bx
@..dos_mem_loc_2b01.l5:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
mouse_set_pos_2:
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
    je short @..mouse_set_pos_2.l1
    jmp near @..mouse_set_pos_2.l8
@..mouse_set_pos_2.l1:
    mov byte [cs:0x0226], 1
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0xe]
    mov word [bp - 0x0004], ax
    mov ax, 3
    int 0x33 ; BIOS mouse
    and cx, strict word 0xfffe
    mov word [bp - 0x0006], cx
    mov word [bp - 0x0008], dx
@..mouse_set_pos_2.l2:
    mov cx, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    cmp cx, word [bp - 0x0002]
    jne short @..mouse_set_pos_2.l3
    cmp dx, word [bp - 0x0004]
    jne short @..mouse_set_pos_2.l3
    jmp short @..mouse_set_pos_2.l8
@..mouse_set_pos_2.l3:
    cmp cx, word [bp - 0x0002]
    je short @..mouse_set_pos_2.l5
    js short @..mouse_set_pos_2.l4
    sub word [bp - 0x0006], byte 2
    jmp short @..mouse_set_pos_2.l5
@..mouse_set_pos_2.l4:
    add word [bp - 0x0006], byte 2
@..mouse_set_pos_2.l5:
    mov cx, word [bp - 0x0006]
    cmp dx, word [bp - 0x0004]
    je short @..mouse_set_pos_2.l7
    js short @..mouse_set_pos_2.l6
    sub word [bp - 0x0008], byte 1
    jmp short @..mouse_set_pos_2.l7
@..mouse_set_pos_2.l6:
    add word [bp - 0x0008], byte 1
@..mouse_set_pos_2.l7:
    mov dx, word [bp - 0x0008]
    mov ax, cs
    push ax
    mov ax, 0
    call math_loc_1e1a
    mov cx, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    mov ax, 4
    int 0x33 ; BIOS mouse
    mov ax, word [bp + 0x10]
    or ax, ax
    je short @..mouse_set_pos_2.l2
    push ax
    call far [cs:0x01fb]
    pop ax
    jmp short @..mouse_set_pos_2.l2
@..mouse_set_pos_2.l8:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
mouse_set_pos_3:
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
    je short @..mouse_set_pos_3.l1
    jmp near @..mouse_set_pos_3.l9
@..mouse_set_pos_3.l1:
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
@..mouse_set_pos_3.l2:
    mov cx, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    cmp cx, word [bp - 0x0002]
    jne short @..mouse_set_pos_3.l3
    cmp dx, word [bp - 0x0004]
    jne short @..mouse_set_pos_3.l3
    jmp short @..mouse_set_pos_3.l8
@..mouse_set_pos_3.l3:
    cmp cx, word [bp - 0x0002]
    je short @..mouse_set_pos_3.l5
    js short @..mouse_set_pos_3.l4
    sub word [bp - 0x0006], byte 2
    jmp short @..mouse_set_pos_3.l5
@..mouse_set_pos_3.l4:
    add word [bp - 0x0006], byte 2
@..mouse_set_pos_3.l5:
    mov cx, word [bp - 0x0006]
    cmp dx, word [bp - 0x0004]
    je short @..mouse_set_pos_3.l7
    js short @..mouse_set_pos_3.l6
    sub word [bp - 0x0008], byte 1
    jmp short @..mouse_set_pos_3.l7
@..mouse_set_pos_3.l6:
    add word [bp - 0x0008], byte 1
@..mouse_set_pos_3.l7:
    mov dx, word [bp - 0x0008]
    mov ax, cs
    push ax
    mov ax, 0
    call math_loc_1e1a
    mov cx, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    mov ax, 4
    int 0x33 ; BIOS mouse
    mov ax, word [bp + 0x10]
    or ax, ax
    je short @..mouse_set_pos_3.l2
    push ax
    call far [cs:0x01fb]
    pop ax
    jmp short @..mouse_set_pos_3.l2
@..mouse_set_pos_3.l8:
    mov cx, word [bp - 0x0002]
    mov dx, word [bp - 0x0004]
    mov ax, 4
    int 0x33 ; BIOS mouse
    mov byte [cs:0x0226], 0
@..mouse_set_pos_3.l9:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
loc_2cbe:
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
    jb short @..local.l43
    jmp near @..local.l45
@..local.l43:
    shl ax, 1
    mov word [bp - 0x0008], ax
    mov bx, 0x251
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short @..local.l44
    jmp near @..local.l45
@..local.l44:
    mov word [cs:bx], 0
    mov cx, word [cs:0x0caa]
    dec cx
    mov word [cs:0x0caa], cx
    call loc_43e1
@..local.l45:
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
io_loc_2d08:
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

math_loc_2d6c:
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
    jb short @..math_loc_2d6c.l1
    mov ax, word [bp + 0x18]
    sub ax, word [bp + 0x16]
    jb short @..math_loc_2d6c.l1
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
    je short @..math_loc_2d6c.l1
    call dos_con_loc_3131
    xor ah, ah
    mov al, byte [bx + 0x2]
    mov word [bp - 0x0002], ax
    mov cx, ax
    mov al, byte [bx + 0x3]
    mov word [bp - 0x0004], ax
    or ax, cx
    jne short @..math_loc_2d6c.l2
@..math_loc_2d6c.l1:
    jmp near @..local.l82
@..math_loc_2d6c.l2:
    mov word [bp - 0x003a], bx
    mov ax, es
    mov word [bp - 0x0038], ax
    mov ax, cs
    mov es, ax
    lea di, word [data_2e2b]
    xor ax, ax
    mov cx, 0x14
    rep stosw
    lea di, word [data_2e53]
    mov cx, 0x19
    rep stosb
    mov bx, word [bp + 0x20]
    or bx, bx
    jne short @..math_loc_2d6c.l3
    jmp near @..math_loc_2d6c.l7
@..math_loc_2d6c.l3:
    cmp bx, byte 0x64
    jae short @..math_loc_2d6c.l1
    mov ax, word [bp - 0x0002]
    mov cl, 3
    shl ax, cl
    mov cx, ax
    mov bx, word [bp + 0x20]
    mul bx
    mov bx, 0x64
    div bx
    cmp dx, byte 0x32
    jb short @..math_loc_2d6c.l4
    inc ax
@..math_loc_2d6c.l4:
    or ax, ax
    je short @..math_loc_2d6c.l5
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
@..math_loc_2d6c.l5:
    mov ax, word [bp - 0x0004]
    mov cl, 3
    shl ax, cl
    mov cx, ax
    mov bx, word [bp + 0x20]
    mul bx
    mov bx, 0x64
    div bx
    cmp dx, byte 0x32
    jb short @..math_loc_2d6c.l6
    inc ax
@..math_loc_2d6c.l6:
    or ax, ax
    je short @..math_loc_2d6c.l7
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
@..math_loc_2d6c.l7:
    mov bx, word [bp - 0x003a]
    mov ax, word [bp - 0x0038]
    mov es, ax
    mov ax, word [bp + 0x12]
    sub ax, word [bp + 0xe]
    jge short @..math_loc_2d6c.l8
    xor ax, ax
@..math_loc_2d6c.l8:
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
    jge short @..math_loc_2d6c.l9
    xor ax, ax
@..math_loc_2d6c.l9:
    mov word [bp - 0x002a], ax
    add ax, word [bp - 0x0028]
    sub cx, ax
    ja short @..math_loc_2d6c.l10
    jmp near @..local.l82
@..math_loc_2d6c.l10:
    mov word [bp - 0x0026], cx
    mov ax, word [bp + 0x16]
    sub ax, word [bp + 0x10]
    jge short @..math_loc_2d6c.l11
    xor ax, ax
@..math_loc_2d6c.l11:
    mov word [bp - 0x0024], ax
    mov ax, word [bp + 0x10]
    mov bx, word [bp - 0x0004]
    mov cl, 3
    shl bx, cl
    mov cx, bx
    dec bx
    add ax, bx
    sub ax, word [bp + 0x18]
    jge short @..math_loc_2d6c.l12
    xor ax, ax
@..math_loc_2d6c.l12:
    mov word [bp - 0x002c], ax
    add ax, word [bp - 0x0024]
    sub cx, ax
    ja short @..math_loc_2d6c.l13
    jmp near @..local.l82
@..math_loc_2d6c.l13:
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
    je short @..math_loc_2d6c.l14
    jmp near @..local.l54
@..math_loc_2d6c.l14:
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
    je short @..math_loc_2d6c.l19
@..math_loc_2d6c.l15:
    mov al, byte [cs:bx]
    and al, dl
    jne short @..math_loc_2d6c.l16
    or byte [cs:bx], dl
    jmp short @..math_loc_2d6c.l17
@..math_loc_2d6c.l16:
    inc word [bp - 0x0030]
    inc cx
@..math_loc_2d6c.l17:
    ror dl, 1
    cmp dl, 0x80
    jne short @..math_loc_2d6c.l18
    inc bx
@..math_loc_2d6c.l18:
    loop @..math_loc_2d6c.l15
@..math_loc_2d6c.l19:
    mov word [bp - 0x0032], bx
    mov ax, word [bp - 0x0030]
    mov word [bp - 0x0040], ax
    add ax, word [bp - 0x0028]
    mov bx, word [bp - 0x003e]
    cmp bx, ax
    ja short @..local.l46
    jmp near @..local.l82
@..local.l46:
    sub bx, ax
    xor ax, ax
    mov word [bp - 0x0030], ax
    sub bx, word [bp - 0x0026]
    jbe short @..local.l53
    mov word [bp - 0x0034], bx
    mov cx, word [bp - 0x0026]
    mov bx, word [bp - 0x0032]
@..local.l47:
    mov al, byte [cs:bx]
    and al, dl
    je short @..local.l48
    inc word [bp - 0x0030]
    mov ax, word [bp - 0x0030]
    cmp ax, word [bp - 0x0034]
    je short @..local.l50
    inc cx
@..local.l48:
    ror dl, 1
    cmp dl, 0x80
    jne short @..local.l49
    inc bx
@..local.l49:
    loop @..local.l47
@..local.l50:
    mov word [bp - 0x0032], bx
    mov ax, word [bp - 0x0030]
    add ax, word [bp - 0x0040]
    add ax, word [bp - 0x0028]
    add ax, word [bp - 0x0026]
    mov cx, word [bp - 0x003e]
    sub cx, ax
    jbe short @..local.l53
    mov bx, word [bp - 0x0032]
@..local.l51:
    or byte [cs:bx], dl
    ror dl, 1
    cmp dl, 0x80
    jne short @..local.l52
    inc bx
@..local.l52:
    loop @..local.l51
@..local.l53:
    jmp near @..local.l67
@..local.l54:
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
    je short @..local.l59
@..local.l55:
    mov al, byte [cs:bx]
    and al, dl
    jne short @..local.l56
    or byte [cs:bx], dl
    jmp short @..local.l57
@..local.l56:
    inc word [bp - 0x0030]
    inc cx
@..local.l57:
    ror dl, 1
    cmp dl, 0x80
    jne short @..local.l58
    inc bx
@..local.l58:
    loop @..local.l55
@..local.l59:
    mov word [bp - 0x0032], bx
    mov ax, word [bp - 0x0030]
    mov word [bp - 0x0040], ax
    add ax, word [bp - 0x002a]
    mov bx, word [bp - 0x003e]
    cmp bx, ax
    ja short @..local.l60
    jmp near @..local.l82
@..local.l60:
    sub bx, ax
    xor ax, ax
    mov word [bp - 0x0030], ax
    sub bx, word [bp - 0x0026]
    jbe short @..local.l67
    mov word [bp - 0x0034], bx
    mov cx, word [bp - 0x0026]
    mov bx, word [bp - 0x0032]
@..local.l61:
    mov al, byte [cs:bx]
    and al, dl
    je short @..local.l62
    inc word [bp - 0x0030]
    mov ax, word [bp - 0x0030]
    cmp ax, word [bp - 0x0034]
    je short @..local.l64
    inc cx
@..local.l62:
    ror dl, 1
    cmp dl, 0x80
    jne short @..local.l63
    inc bx
@..local.l63:
    loop @..local.l61
@..local.l64:
    mov word [bp - 0x0032], bx
    mov ax, word [bp - 0x0030]
    add ax, word [bp - 0x0040]
    add ax, word [bp - 0x002a]
    add ax, word [bp - 0x0026]
    mov cx, word [bp - 0x003e]
    sub cx, ax
    jbe short @..local.l67
    mov bx, word [bp - 0x0032]
@..local.l65:
    or byte [cs:bx], dl
    ror dl, 1
    cmp dl, 0x80
    jne short @..local.l66
    inc bx
@..local.l66:
    loop @..local.l65
@..local.l67:
    mov ax, word [bp + 0x1a]
    and al, 2
    jne short @..local.l74
    mov bx, 0x2e53
    mov dl, 0x80
    xor ax, ax
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0040], ax
    mov cx, word [bp - 0x0024]
    or cx, cx
    je short @..local.l72
@..local.l68:
    mov al, byte [cs:bx]
    and al, dl
    jne short @..local.l69
    or byte [cs:bx], dl
    jmp short @..local.l70
@..local.l69:
    inc word [bp - 0x0030]
    inc cx
@..local.l70:
    ror dl, 1
    cmp dl, 0x80
    jne short @..local.l71
    inc bx
@..local.l71:
    loop @..local.l68
@..local.l72:
    mov ax, word [bp - 0x0030]
    mov word [bp - 0x0040], ax
    add ax, word [bp - 0x0024]
    mov bx, word [bp - 0x0004]
    mov cl, 3
    shl bx, cl
    cmp bx, ax
    ja short @..local.l73
    jmp near @..local.l82
@..local.l73:
    jmp short @..local.l80
@..local.l74:
    mov bx, 0x2e53
    mov dl, 0x80
    xor ax, ax
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0040], ax
    mov cx, word [bp - 0x002c]
    or cx, cx
    je short @..local.l79
@..local.l75:
    mov al, byte [cs:bx]
    and al, dl
    jne short @..local.l76
    or byte [cs:bx], dl
    jmp short @..local.l77
@..local.l76:
    inc word [bp - 0x0030]
    inc cx
@..local.l77:
    ror dl, 1
    cmp dl, 0x80
    jne short @..local.l78
    inc bx
@..local.l78:
    loop @..local.l75
@..local.l79:
    mov ax, word [bp - 0x0030]
    add ax, word [bp - 0x002c]
    mov bx, word [bp - 0x0004]
    mov cl, 3
    shl bx, cl
    cmp bx, ax
    jbe short @..local.l82
@..local.l80:
    mov ax, word [bp + 0x20]
    mov bl, 0xc
    div bl
    xor ah, ah
    mov word [bp - 0x0030], ax
@..local.l81:
    mov si, word [bp + 0x1c]
    mov bx, word [bp - 0x0008]
    mov ds, bx
    xor ah, ah
    mov al, byte [ss:si]
    or al, al
    je short @..local.l82
    call dos_con_loc_3131
    call math_loc_31d9
    inc word [bp + 0x1c]
    jmp short @..local.l81
@..local.l82:
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
    jb short @..dos_con_loc_3131.l1

    db 0xb3, 0x0a, 0xf6, 0xf3, 0x2e, 0x08, 0x06, 0x6f, 0x32, 0x2e, 0x08, 0x16, 0x70, 0x32, 0x8b, 0x46
    db 0x0c, 0xb3, 0x0a, 0xf6, 0xf3, 0x2e, 0x08, 0x06, 0x82, 0x32, 0x2e, 0x08

dos_con_loc_3153:
    push ss
    xor word [bp + si], byte 0x8c
    retf
    mov ds, bx
    mov dx, 0x3266
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Frame 00 too big in slot 00.', 0
    db 0x0a, 0x24

@..dos_con_loc_3131.l1:
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
    jmp short @..leaf_loc_319f.l2
@..leaf_loc_319f.l1:
    add si, word [bp - 0x0030]
@..leaf_loc_319f.l2:
    add word [bp - 0x003c], dx
    mov bx, word [bp - 0x003c]
    cmp bx, word [bp - 0x0034]
    jb short @..leaf_loc_319f.l3
    sub bx, word [bp - 0x0034]
    mov word [bp - 0x003c], bx
    inc si
@..leaf_loc_319f.l3:
    cmp si, word [bp - 0x0032]
    jb short @..local.l83
@..leaf_loc_319f.l4:
    ret
@..local.l83:
    test si, 0x8000
    jne short @..leaf_loc_319f.l4
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
    jmp short @..leaf_loc_319f.l1
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
    jne short @..math_loc_31d9.l1
    jmp near @..local.l111
@..math_loc_31d9.l1:
    cmp al, 3
    jne short @..math_loc_31d9.l2
    jmp near @..local.l136
@..math_loc_31d9.l2:
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
    jne short @..math_loc_31d9.l3
    jmp near @..local.l86
@..math_loc_31d9.l3:
    mov ax, word [bp - 0x0028]
    add word [bp - 0x000e], ax
    mov ax, word [bp - 0x0024]
    mov bx, 0x140
    mul bx
    add word [bp - 0x000e], ax
@..math_loc_31d9.l4:
    mov ax, word [bp - 0x0022]
    mov di, word [bp - 0x000e]
    cmp di, ax
    jb short @..math_loc_31d9.l5
    jmp near @..math_loc_31d9.l25
@..math_loc_31d9.l5:
    push cx
    call math_loc_3340
    mov ax, 0x2e2b
    mov word [bp - 0x0034], ax
    mov cx, word [bp - 0x0002]
@..math_loc_31d9.l6:
    push cx
    call math_loc_3360
    mov bx, word [bp - 0x000c]
    mov al, byte [bx]
    and al, byte [bp - 0x000a]
    jne short @..math_loc_31d9.l7
    jmp near @..math_loc_31d9.l23
@..math_loc_31d9.l7:
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    cmp al, 0xff
    jne short @..math_loc_31d9.l8
    add si, byte 0x40
    jmp near @..math_loc_31d9.l23
@..math_loc_31d9.l8:
    push di
    push si
    mov al, 0x80
    mov byte [bp - 0x0038], al
    mov cx, 8
@..math_loc_31d9.l9:
    cmp di, word [bp - 0x0022]
    jb short @..math_loc_31d9.l10
    jmp near @..math_loc_31d9.l22
@..math_loc_31d9.l10:
    mov bx, word [bp - 0x0036]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0038]
    je short @..math_loc_31d9.l11
    jmp near @..math_loc_31d9.l21
@..math_loc_31d9.l11:
    push cx
    push di
    mov al, 0x80
    mov byte [bp - 0x0032], al
    mov cx, 8
@..math_loc_31d9.l12:
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0032]
    jne short @..math_loc_31d9.l20
    xor ah, ah
    mov al, byte [si]
    cmp al, 0xff
    je short @..math_loc_31d9.l17
    cmp byte [bp + 0x1e], 2
    jne short @..math_loc_31d9.l14
    mov al, byte [es:di]
    mov bx, 0x381b
    add bx, ax
    add al, byte [si]
    jb short @..math_loc_31d9.l13
    cmp al, byte [cs:bx]
    jb short @..math_loc_31d9.l16
@..math_loc_31d9.l13:
    mov al, byte [cs:bx]
    jmp short @..math_loc_31d9.l16
@..math_loc_31d9.l14:
    cmp byte [bp - 0x0030], 0
    je short @..math_loc_31d9.l16
    mov bx, 0x381b
    add bx, ax
    add al, byte [bp - 0x0030]
    jb short @..math_loc_31d9.l15
    cmp al, byte [cs:bx]
    jb short @..math_loc_31d9.l16
@..math_loc_31d9.l15:
    mov al, byte [cs:bx]
@..math_loc_31d9.l16:
    mov byte [es:di], al
@..math_loc_31d9.l17:
    inc si
    inc di
    ror byte [bp - 0x0032], 1
    loop @..math_loc_31d9.l12
@..math_loc_31d9.l18:
    pop di
    pop cx
    add di, strict word 0x140
@..math_loc_31d9.l19:
    ror byte [bp - 0x0038], 1
    loop @..math_loc_31d9.l9
    jmp short @..math_loc_31d9.l22
@..math_loc_31d9.l20:
    inc si
    ror byte [bp - 0x0032], 1
    loop @..math_loc_31d9.l12
    jmp short @..math_loc_31d9.l18
@..math_loc_31d9.l21:
    add si, byte 8
    jmp short @..math_loc_31d9.l19
@..math_loc_31d9.l22:
    pop si
    add si, byte 0x40
    pop di
@..math_loc_31d9.l23:
    add di, byte 8
    sub di, word [bp - 0x003c]
    rol byte [bp - 0x000a], 1
    cmp byte [bp - 0x000a], 1
    jne short @..math_loc_31d9.l24
    inc word [bp - 0x000c]
@..math_loc_31d9.l24:
    inc word [bp - 0x0034]
    pop cx
    loop @..local.l84
    pop cx
    add word [bp - 0x000e], strict word 0xa00
    mov ax, word [bp - 0x003e]
    sub word [bp - 0x000e], ax
    inc word [bp - 0x0036]
    mov byte [bp - 0x003a], 0x80
    loop @..local.l85
@..math_loc_31d9.l25:
    pop es
    ret
@..local.l84:
    jmp near @..math_loc_31d9.l6
@..local.l85:
    jmp near @..math_loc_31d9.l4
math_loc_3340:
    mov al, 0x80
    mov dl, al
    xor ax, ax
    mov word [bp - 0x003e], ax
    mov bx, word [bp - 0x0036]
    mov cx, 8
@..math_loc_3340.l1:
    mov al, byte [cs:bx]
    and al, dl
    je short @..math_loc_3340.l2
    add word [bp - 0x003e], strict word 0x140
@..math_loc_3340.l2:
    ror dl, 1
    loop @..math_loc_3340.l1
    ret
math_loc_3360:
    xor ax, ax
    mov word [bp - 0x003c], ax
    mov dl, 0x80
    mov bx, word [bp - 0x0034]
    mov cx, 8
@..math_loc_3360.l1:
    mov al, byte [cs:bx]
    and al, dl
    je short @..math_loc_3360.l2
    inc word [bp - 0x003c]
@..math_loc_3360.l2:
    ror dl, 1
    loop @..math_loc_3360.l1
    ret
@..local.l86:
    mov ax, word [bp - 0x002a]
    sub word [bp - 0x000e], ax
    mov ax, word [bp - 0x0024]
    mov bx, 0x140
    mul bx
    add word [bp - 0x000e], ax
@..local.l87:
    mov ax, word [bp - 0x0022]
    mov di, word [bp - 0x000e]
    add di, word [bp - 0x001e]
    cmp di, ax
    jb short @..local.l88
    jmp near @..local.l108
@..local.l88:
    push cx
    call math_loc_3340
    mov ax, 0x2e2b
    mov word [bp - 0x0034], ax
    mov cx, word [bp - 0x0002]
@..local.l89:
    push cx
    call math_loc_3360
    mov bx, word [bp - 0x000c]
    mov al, byte [bx]
    and al, byte [bp - 0x000a]
    jne short @..local.l90
    jmp near @..local.l106
@..local.l90:
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    cmp al, 0xff
    jne short @..local.l91
    add si, byte 0x40
    jmp near @..local.l106
@..local.l91:
    push di
    push si
    mov al, 0x80
    mov byte [bp - 0x0038], al
    mov cx, 8
@..local.l92:
    cmp di, word [bp - 0x0022]
    jb short @..local.l93
    jmp near @..local.l105
@..local.l93:
    mov bx, word [bp - 0x0036]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0038]
    je short @..local.l94
    jmp near @..local.l104
@..local.l94:
    push cx
    push di
    mov al, 0x80
    mov byte [bp - 0x0032], al
    mov cx, 8
@..local.l95:
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0032]
    jne short @..local.l103
    mov al, byte [si]
    cmp al, 0xff
    je short @..local.l100
    cmp byte [bp + 0x1e], 2
    jne short @..local.l97
    mov al, byte [es:di]
    mov bx, 0x381b
    add bx, ax
    add al, byte [si]
    jb short @..local.l96
    cmp al, byte [cs:bx]
    jb short @..local.l99
@..local.l96:
    mov al, byte [cs:bx]
    jmp short @..local.l99
@..local.l97:
    cmp byte [bp - 0x0030], 0
    je short @..local.l99
    mov bx, 0x381b
    add bx, ax
    add al, byte [bp - 0x0030]
    jb short @..local.l98
    cmp al, byte [cs:bx]
    jb short @..local.l99
@..local.l98:
    mov al, byte [cs:bx]
@..local.l99:
    mov byte [es:di], al
@..local.l100:
    inc si
    dec di
    ror byte [bp - 0x0032], 1
    loop @..local.l95
@..local.l101:
    pop di
    pop cx
    add di, strict word 0x140
@..local.l102:
    ror byte [bp - 0x0038], 1
    loop @..local.l92
    jmp short @..local.l105
@..local.l103:
    inc si
    ror byte [bp - 0x0032], 1
    loop @..local.l95
    jmp short @..local.l101
@..local.l104:
    add si, byte 8
    jmp short @..local.l102
@..local.l105:
    pop si
    add si, byte 0x40
    pop di
@..local.l106:
    sub di, byte 8
    add di, word [bp - 0x003c]
    rol byte [bp - 0x000a], 1
    cmp byte [bp - 0x000a], 1
    jne short @..local.l107
    inc word [bp - 0x000c]
@..local.l107:
    inc word [bp - 0x0034]
    pop cx
    loop @..local.l109
    pop cx
    add word [bp - 0x000e], strict word 0xa00
    mov ax, word [bp - 0x003e]
    sub word [bp - 0x000e], ax
    inc word [bp - 0x0036]
    mov byte [bp - 0x003a], 0x80
    loop @..local.l110
@..local.l108:
    pop es
    ret
@..local.l109:
    jmp near @..local.l89
@..local.l110:
    jmp near @..local.l87
@..local.l111:
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
@..local.l112:
    mov ax, word [bp - 0x002e]
    mov di, word [bp - 0x000e]
    cmp ax, di
    jbe short @..local.l113
    jmp near @..local.l133
@..local.l113:
    push cx
    call math_loc_3340
    mov ax, 0x2e2b
    mov word [bp - 0x0034], ax
    mov cx, word [bp - 0x0002]
@..local.l114:
    push cx
    call math_loc_3360
    mov bx, word [bp - 0x000c]
    mov al, byte [bx]
    and al, byte [bp - 0x000a]
    jne short @..local.l115
    jmp near @..local.l131
@..local.l115:
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    cmp al, 0xff
    jne short @..local.l116
    add si, byte 0x40
    jmp near @..local.l131
@..local.l116:
    push di
    push si
    mov al, 0x80
    mov byte [bp - 0x0038], al
    mov cx, 8
@..local.l117:
    cmp word [bp - 0x002e], di
    jbe short @..local.l118
    jmp near @..local.l130
@..local.l118:
    mov bx, word [bp - 0x0036]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0038]
    je short @..local.l119
    jmp near @..local.l129
@..local.l119:
    push cx
    push di
    mov al, 0x80
    mov byte [bp - 0x0032], al
    mov cx, 8
@..local.l120:
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0032]
    jne short @..local.l128
    mov al, byte [si]
    cmp al, 0xff
    je short @..local.l125
    cmp byte [bp + 0x1e], 2
    jne short @..local.l122
    mov al, byte [es:di]
    mov bx, 0x381b
    add bx, ax
    add al, byte [si]
    jb short @..local.l121
    cmp al, byte [cs:bx]
    jb short @..local.l124
@..local.l121:
    mov al, byte [cs:bx]
    jmp short @..local.l124
@..local.l122:
    cmp byte [bp - 0x0030], 0
    je short @..local.l124
    mov bx, 0x381b
    add bx, ax
    add al, byte [bp - 0x0030]
    jb short @..local.l123
    cmp al, byte [cs:bx]
    jb short @..local.l124
@..local.l123:
    mov al, byte [cs:bx]
@..local.l124:
    mov byte [es:di], al
@..local.l125:
    inc si
    inc di
    ror byte [bp - 0x0032], 1
    loop @..local.l120
@..local.l126:
    pop di
    sub di, strict word 0x140
    pop cx
@..local.l127:
    ror byte [bp - 0x0038], 1
    loop @..local.l117
    jmp short @..local.l130
@..local.l128:
    inc si
    ror byte [bp - 0x0032], 1
    loop @..local.l120
    jmp short @..local.l126
@..local.l129:
    add si, byte 8
    jmp short @..local.l127
@..local.l130:
    pop si
    add si, byte 0x40
    pop di
@..local.l131:
    add di, byte 8
    sub di, word [bp - 0x003c]
    rol byte [bp - 0x000a], 1
    cmp byte [bp - 0x000a], 1
    jne short @..local.l132
    inc word [bp - 0x000c]
@..local.l132:
    inc word [bp - 0x0034]
    pop cx
    loop @..local.l134
    pop cx
    sub word [bp - 0x000e], strict word 0xa00
    mov ax, word [bp - 0x003e]
    add word [bp - 0x000e], ax
    inc word [bp - 0x0036]
    mov byte [bp - 0x003a], 0x80
    loop @..local.l135
@..local.l133:
    pop es
    ret
@..local.l134:
    jmp near @..local.l114
@..local.l135:
    jmp near @..local.l112
@..local.l136:
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
@..local.l137:
    mov ax, word [bp - 0x002e]
    mov di, word [bp - 0x000e]
    add di, word [bp - 0x001e]
    cmp ax, di
    jb short @..local.l138
    jmp near @..local.l158
@..local.l138:
    push cx
    call math_loc_3340
    mov ax, 0x2e2b
    mov word [bp - 0x0034], ax
    mov cx, word [bp - 0x0002]
@..local.l139:
    push cx
    call math_loc_3360
    mov bx, word [bp - 0x000c]
    mov al, byte [bx]
    and al, byte [bp - 0x000a]
    jne short @..local.l140
    jmp near @..local.l156
@..local.l140:
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    cmp al, 0xff
    jne short @..local.l141
    add si, byte 0x40
    jmp near @..local.l156
@..local.l141:
    push di
    push si
    mov al, 0x80
    mov byte [bp - 0x0038], al
    mov cx, 8
@..local.l142:
    cmp word [bp - 0x002e], di
    jbe short @..local.l143
    jmp near @..local.l155
@..local.l143:
    mov bx, word [bp - 0x0036]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0038]
    je short @..local.l144
    jmp near @..local.l154
@..local.l144:
    push cx
    push di
    mov al, 0x80
    mov byte [bp - 0x0032], al
    mov cx, 8
@..local.l145:
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0032]
    jne short @..local.l153
    mov al, byte [si]
    cmp al, 0xff
    je short @..local.l150
    cmp byte [bp + 0x1e], 2
    jne short @..local.l147
    mov al, byte [es:di]
    mov bx, 0x381b
    add bx, ax
    add al, byte [si]
    jb short @..local.l146
    cmp al, byte [cs:bx]
    jb short @..local.l149
@..local.l146:
    mov al, byte [cs:bx]
    jmp short @..local.l149
@..local.l147:
    cmp byte [bp - 0x0030], 0
    je short @..local.l149
    mov bx, 0x381b
    add bx, ax
    add al, byte [bp - 0x0030]
    jb short @..local.l148
    cmp al, byte [cs:bx]
    jb short @..local.l149
@..local.l148:
    mov al, byte [cs:bx]
@..local.l149:
    mov byte [es:di], al
@..local.l150:
    inc si
    dec di
    ror byte [bp - 0x0032], 1
    loop @..local.l145
@..local.l151:
    pop di
    sub di, strict word 0x140
    pop cx
@..local.l152:
    ror byte [bp - 0x0038], 1
    loop @..local.l142
    jmp short @..local.l155
@..local.l153:
    inc si
    ror byte [bp - 0x0032], 1
    loop @..local.l145
    jmp short @..local.l151
@..local.l154:
    add si, byte 8
    jmp short @..local.l152
@..local.l155:
    pop si
    add si, byte 0x40
    pop di
@..local.l156:
    sub di, byte 8
    add di, word [bp - 0x003c]
    rol byte [bp - 0x000a], 1
    cmp byte [bp - 0x000a], 1
    jne short @..local.l157
    inc word [bp - 0x000c]
@..local.l157:
    inc word [bp - 0x0034]
    pop cx
    loop @..local.l159
    pop cx
    sub word [bp - 0x000e], strict word 0xa00
    mov ax, word [bp - 0x003e]
    add word [bp - 0x000e], ax
    inc word [bp - 0x0036]
    mov byte [bp - 0x003a], 0x80
    loop @..local.l160
@..local.l158:
    pop es
    ret
@..local.l159:
    jmp near @..local.l139
@..local.l160:
    jmp near @..local.l137

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

@..local.l161:
    mov ax, cs
    mov ds, ax
    mov dx, 0x392b
dos_con_loc_3822:
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Error occurred writing to disk in CACHEAREA().', 0
    db 0x0a, 0x24

dos_write_file_2:
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
    jne short @..dos_con_loc_3822.l5
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
    int 0x21 ; DOS write file (handle)
    jae short @..dos_con_loc_3822.l1
    jmp near @..local.l161
@..dos_con_loc_3822.l1:
    mov ax, word [cs:0x01e5]
    mov ds, ax
    mov cx, word [bp - 0x0004]
@..dos_con_loc_3822.l2:
    push cx
    mov dx, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    mov bx, word [bp + 0x16]
    mov ah, 0x40
    int 0x21 ; DOS write file (handle)
    jae short @..dos_con_loc_3822.l3
    jmp near @..local.l161
@..dos_con_loc_3822.l3:
    cmp ax, word [bp - 0x0006]
    je short @..dos_con_loc_3822.l4
    jmp near @..local.l161
@..dos_con_loc_3822.l4:
    pop cx
    loop @..dos_con_loc_3822.l2
    xor ax, ax
    mov dx, word [bp + 0x14]
    jmp near @..dos_con_loc_3ab7.l1
@..dos_con_loc_3822.l5:
    cmp word [bp + 0x14], byte 2
    je short @..dos_con_loc_3822.l6
    jmp near @..dos_con_loc_3822.l11
@..dos_con_loc_3822.l6:
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
    jbe short @..dos_con_loc_3822.l7
    jmp near dos_con_loc_3b1f
@..dos_con_loc_3822.l7:
    mov bx, word [cs:0x0cac]
    mov word [bp - 0x000e], bx
    mov word [cs:0x0cac], ax
    mov bx, 0x25b
    mov cx, 0x10
    xor dx, dx
@..dos_con_loc_3822.l8:
    mov ax, word [cs:bx]
    or ax, ax
    je short @..dos_con_loc_3822.l9
    inc dx
    add bx, byte 2
    loop @..dos_con_loc_3822.l8
    jmp near dos_con_loc_3b5c
@..dos_con_loc_3822.l9:
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
@..dos_con_loc_3822.l10:
    mov si, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep movsb
    dec word [bp - 0x0004]
    jne short @..dos_con_loc_3822.l10
    mov ax, word [bp - 0x000c]
    mov dx, word [bp + 0x14]
    jmp near @..dos_con_loc_3ab7.l1
@..dos_con_loc_3822.l11:
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
    jbe short @..dos_con_loc_3822.l12
    jmp near dos_con_loc_3ab7
@..dos_con_loc_3822.l12:
    mov bx, word [cs:0x0391]
    mov word [bp - 0x000e], bx
    mov word [cs:0x0391], ax
    mov bx, 0x29b
    mov cx, 0x14
    xor dx, dx
@..dos_con_loc_3822.l13:
    mov ax, word [cs:bx]
    or ax, ax
    je short @..dos_con_loc_3822.l14
    inc dx
    add bx, byte 2
    loop @..dos_con_loc_3822.l13
    jmp near dos_con_loc_3aee
@..dos_con_loc_3822.l14:
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
@..local.l162:
    mov si, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep movsb
    test di, 0xc000
    je short @..local.l163
    inc word [cs:0x3c8e]
    mov ax, word [cs:0x3c8e]
    call dos_file_loc_3b90
    and di, strict word 0x3fff
@..local.l163:
    dec word [bp - 0x0004]
    jne short @..local.l162
    mov ax, word [bp - 0x000c]
    mov dx, word [bp + 0x14]
    jmp near @..dos_con_loc_3ab7.l1
dos_con_loc_3ab7:
    mov ax, cs
    mov ds, ax
    mov dx, 0x3bc7
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of EMS.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2

@..dos_con_loc_3ab7.l1:
    pop si
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
dos_con_loc_3aee:
    mov ax, cs
    mov ds, ax
    mov dx, 0x3bfe
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of EMS slots.', 0
    db 0x0a, 0x24

dos_con_loc_3b1f:
    mov ax, cs

    db 0x8e, 0xd8, 0xba, 0x2f, 0x3c, 0xb4, 0x09, 0xcd, 0x21, 0xb8, 0x01, 0x4c, 0xcd, 0x21, 0x0d, 0x0a
    db 0x07
    db 'CACHEAREA out of MAZE/PIC memory.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2, 0xeb, 0x8a

dos_con_loc_3b5c:
    mov ax, cs
    mov ds, ax
    mov dx, 0x3c6c
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of MAZE slots.', 0
    db 0x0a, 0x24, 0x00, 0x00

dos_file_loc_3b90:
    push ax
    mov ah, 0x44
    mov al, 0
    pop bx
    mov dx, word [cs:0x0201]
    int 0x67 ; EMS (Expanded Memory)
    inc bx
    mov ah, 0x44
    mov al, 1
    int 0x67 ; EMS (Expanded Memory)
    ret
dos_read_file_4:
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
    jne short @..dos_read_file_4.l2
    lea bx, word [bp - 0x000a]
    mov dx, bx
    mov ax, ss
    mov ds, ax
    mov cx, 0xa
    mov bx, word [bp + 0x12]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    mov ax, word [cs:0x01e5]
    mov ds, ax
    mov cx, word [bp - 0x0004]
@..dos_read_file_4.l1:
    push cx
    mov dx, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    mov bx, word [bp + 0x12]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    pop cx
    loop @..dos_read_file_4.l1
    jmp near @..dos_read_file_4.l9
@..dos_read_file_4.l2:
    cmp word [bp + 0xe], byte 2
    je short @..dos_read_file_4.l3
    jmp near @..dos_read_file_4.l6
@..dos_read_file_4.l3:
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
@..dos_read_file_4.l4:
    mov di, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep movsb
    dec word [bp - 0x0004]
    jne short @..dos_read_file_4.l4
    cmp word [bp + 0x10], byte 0
    je short @..dos_read_file_4.l5
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov bx, 0x25b
    add bx, ax
    mov ax, word [cs:bx]
    mov word [cs:bx], 0
    dec word [cs:0x0caa]
    call loc_43e1
@..dos_read_file_4.l5:
    jmp near @..dos_read_file_4.l9
@..dos_read_file_4.l6:
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
@..dos_read_file_4.l7:
    mov di, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep movsb
    test si, 0xc000
    je short @..dos_read_file_4.l8
    inc word [cs:0x3c8e]
    mov ax, word [cs:0x3c8e]
    call dos_file_loc_3b90
    and si, strict word 0x3fff
@..dos_read_file_4.l8:
    dec word [bp - 0x0004]
    jne short @..dos_read_file_4.l7
    cmp word [bp + 0x10], byte 0
    je short @..dos_read_file_4.l9
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
@..dos_read_file_4.l9:
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
@..dos_file_loc_3d0b.l1:
    xor dx, dx
    mov cx, 0x1000
    mov bx, word [bp - 0x0002]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    or ax, ax
    je short @..dos_file_loc_3d0b.l2
    mov cx, ax
    push ax
    mov bx, word [bp - 0x0004]
    xor dx, dx
    mov ah, 0x40
    int 0x21 ; DOS write file (handle)
    jb short dos_con_loc_3d39
    pop cx
    cmp cx, ax
    je short @..dos_file_loc_3d0b.l1
dos_con_loc_3d39:
    mov ax, cs
    mov ds, ax
    mov dx, 0x3e49
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Error occurred writing to disk', 0
    db 0x0a, 0x24

@..dos_file_loc_3d0b.l2:
    pop di
    pop si
    pop es
    pop ds
    ret
dos_read_file_5:
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
    je short @..dos_read_file_5.l1
    dec word [cs:0x038f]
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, 0x2c3
    add bx, ax
    mov ax, word [cs:bx]
    mov word [cs:bx], 0
    call leaf_loc_0e34
    call loc_0e71
    jmp near @..dos_read_file_5.l8
@..dos_read_file_5.l1:
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x10]
    or ax, ax
    je short @..dos_read_file_5.l2
    mov ax, word [bp + 0xe]
    mov word [bp - 0x0004], ax
    call dos_file_loc_3d0b
    jmp near @..dos_read_file_5.l8
@..dos_read_file_5.l2:
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, 0x2c3
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    je short @..dos_read_file_5.l3
    jmp near 0x3ef6
@..dos_read_file_5.l3:
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
    int 0x21 ; DOS read file (handle)
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
    jbe short @..dos_read_file_5.l4
    jmp near @..dos_con_loc_3efb.l1
@..dos_read_file_5.l4:
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
@..dos_read_file_5.l5:
    mov dx, di
    test dx, 0xc000
    je short @..dos_read_file_5.l6
    sub di, strict word 0x4000
    inc word [cs:0x3c8e]
    mov ax, word [cs:0x3c8e]
    call dos_file_loc_3b90
@..dos_read_file_5.l6:
    mov ax, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    or ax, dx
    je short @..dos_read_file_5.l8
    mov cx, 0x1000
    mov ax, word [bp - 0x0006]
    or dx, dx
    jne short @..dos_read_file_5.l7
    cmp ax, cx
    jae short @..dos_read_file_5.l7
    mov cx, ax
@..dos_read_file_5.l7:
    sub ax, cx
    sbb dx, byte 0
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], dx
    mov dx, 0
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    push cx
    int 0x21 ; DOS read file (handle)
    pop cx
    mov si, 0
    rep movsb
    jmp short @..dos_read_file_5.l5
@..dos_read_file_5.l8:
    pop si
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
    db 0x8c, 0xc8, 0x8e, 0xd8, 0xba
dos_con_loc_3efb:
    push es
    inc ax
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEMAZE().  Requested slot already in use.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2, 0xeb, 0xb0

@..dos_con_loc_3efb.l1:
    mov ax, cs
    mov ds, ax
    mov dx, 0x404e
dos_con_loc_3f45:
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEMAZE().  Insufficient EMS.', 0
    db 0x0a, 0x24

loc_3f73:
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
    je short @..dos_con_loc_3efb.l2
    dec word [cs:0x038f]
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, 0x2d7
    add bx, ax
    mov ax, word [cs:bx]
    mov word [cs:bx], 0
    call leaf_loc_0e34
    call loc_0e71
    jmp near @..dos_con_loc_3efb.l9
@..dos_con_loc_3efb.l2:
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x10]
    or ax, ax
    je short @..dos_con_loc_3efb.l3
    mov ax, word [bp + 0xe]
    mov word [bp - 0x0004], ax
    call dos_file_loc_3d0b
    jmp near @..dos_con_loc_3efb.l9
@..dos_con_loc_3efb.l3:
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, 0x2d7
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    je short @..dos_con_loc_3efb.l4
    jmp near @..local.l165
@..dos_con_loc_3efb.l4:
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
    jbe short @..dos_con_loc_3efb.l5
    jmp near @..dos_con_loc_4088.l1
@..dos_con_loc_3efb.l5:
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
@..dos_con_loc_3efb.l6:
    mov dx, di
    test dx, 0xc000
    je short @..dos_con_loc_3efb.l7
    sub di, strict word 0x4000
    inc word [cs:0x3c8e]
    mov ax, word [cs:0x3c8e]
    call dos_file_loc_3b90
@..dos_con_loc_3efb.l7:
    mov ax, word [bp - 0x0006]
    or ax, ax
    je short @..dos_con_loc_3efb.l9
    mov cx, 0x1000
    cmp ax, cx
    jae short @..dos_con_loc_3efb.l8
    mov cx, ax
@..dos_con_loc_3efb.l8:
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
    int 0x21 ; DOS read file (handle)
    pop cx
    mov si, 0
    rep movsb
    jmp short @..dos_con_loc_3efb.l6
@..dos_con_loc_3efb.l9:
    pop si
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
@..local.l165:
    mov ax, cs
    mov ds, ax
    mov dx, 0x4191
dos_con_loc_4088:
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHESCREEN().  Requested slot already in use.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2, 0xeb, 0xae

@..dos_con_loc_4088.l1:
    mov ax, cs
    mov ds, ax
    mov dx, 0x41db
dos_con_loc_40d2:
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHESCREEN().  Insufficient EMS.', 0
    db 0x0a, 0x24
    times 84 db 0

dos_read_file_6:
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
    je short @..dos_con_loc_4088.l2
    jmp near @..local.l166
@..dos_con_loc_4088.l2:
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
    int 0x21 ; DOS seek file (lseek)
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0006], dx
    mov ah, 0x42
    mov al, 0
    mov bx, word [bp + 0xc]
    xor cx, cx
    mov dx, cx
    int 0x21 ; DOS seek file (lseek)
    mov ax, word [cs:0x01e9]
    mov ds, ax
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov cx, 2
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    xor bx, bx
    mov ax, word [bx]
    or ax, ax
    je short @..dos_con_loc_4088.l3
    jmp near 0x42a0
@..dos_con_loc_4088.l3:
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
    int 0x21 ; DOS read file (handle)
    xor ax, ax
@..dos_con_loc_4088.l4:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
@..local.l166:
    mov ax, cs
    mov ds, ax
    mov dx, 0x4338
dos_con_loc_422f:
    mov ah, 9

    db 0xcd, 0x21, 0xb8, 0x01, 0x4c, 0xcd, 0x21, 0x0d, 0x0a, 0x07
    db 'In LOAD_SO'

dos_read_file_7:
    push bp
    dec si
    inc sp
    sub byte [bx + di], ch
    and byte [data_2e2e], ch
    and byte [bp + di + 0x6c], dh
    outsw
    je short @..dos_con_loc_422f.l2
    popaw
    insb
    jb short 0x42bd
    popaw
    db 0x64, 0x79, 0x20 ; jns 0x427c
    jne short 0x42d1
    db 0x65, 0x64, 0x2e, 0x00, 0x0a ; add byte ptr cs:[bp + si], cl
    and al, 0x8c
    enter 0xd88e, 0xffba
    je short 0x42ae
dos_con_loc_426b:
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
@..dos_con_loc_422f.l2:
    or ax, 0x70a
    dec cx
    outsb
    and byte [si + 0x4f], cl
@..dos_con_loc_422f.l3:
    inc cx
    inc sp
    pop di
    push bx
    dec di
    push bp
    dec si
    inc sp
    sub byte [bx + di], ch
    and byte [data_2e2e], ch
    and byte [bp + 0x6f], ch
    je short @..dos_con_loc_422f.l6
    db 0x65, 0x6e ; outsb dx, byte ptr gs:[si]
    outsw
    jne short @..dos_con_loc_422f.l10
    push 0x6d20
    db 0x65, 0x6d ; insw word ptr es:[di], dx
    outsw
    jb short 0x4315
    add byte [cs:bp + si], cl
    and al, 0x8b
    enter 0xa12e, 0xffe9
    add word [bp + 0x33d8], cx
    ror byte [bp + di + 0xc5e], cl
    mov ah, 0x3f
@..dos_con_loc_422f.l6:
    int 0x21 ; DOS read file (handle)
    mov dx, 0x400
    mov bx, word [bp + 0xc]
    mov cx, 0x1000
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
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
    jb short @..dos_con_loc_422f.l9
    jmp near 0x4264
@..dos_con_loc_422f.l9:
    mov word [cs:0x0cac], ax
    mov ax, word [cs:bx]
    add ax, word [cs:0x01e1]
    mov es, ax
    call dos_file_loc_4300
@..dos_con_loc_422f.l10:
    xor ax, ax
    jmp near @..dos_con_loc_4088.l4
dos_file_loc_4300:
    mov word [bp - 0x0002], 8
    lodsb
@..dos_con_loc_422f.l11:
    cmp word [bp - 0x0004], byte 0
    je short @..dos_con_loc_422f.l13
    call dos_file_loc_4319
    mov byte [es:di], bl
    inc di
    dec word [bp - 0x0004]
    jmp short @..dos_con_loc_422f.l11
@..dos_con_loc_422f.l13:
    ret
dos_file_loc_4319:
    mov cx, word [bp - 0x0002]
    xor bx, bx
@..dos_file_loc_4319.l1:
    shl al, 1
    jb short @..dos_file_loc_4319.l4
    test word [bx], 0x8000
    jne short @..dos_file_loc_4319.l2
    mov bx, word [bx]
    jmp short @..dos_file_loc_4319.l6
@..dos_file_loc_4319.l2:
    mov bx, word [bx]
    neg bx
    shl bx, 1
    shl bx, 1
@..dos_file_loc_4319.l3:
    loop @..dos_file_loc_4319.l1
    mov cx, 8
    lodsb
    cmp si, strict word 0x1400
    jb short @..dos_file_loc_4319.l1
    push ax
    push di
    push bx
    push cx
    mov dx, 0x400
    mov bx, word [bp + 0xc]
    mov cx, 0x1000
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    mov si, 0x400
    pop cx
    pop bx
    pop di
    pop ax
    jmp short @..dos_file_loc_4319.l1
@..dos_file_loc_4319.l4:
    test word [bx + 0x2], 0x8000
    jne short @..dos_file_loc_4319.l5
    mov bx, word [bx + 0x2]
    jmp short @..dos_file_loc_4319.l6
@..dos_file_loc_4319.l5:
    mov bx, word [bx + 0x2]
    neg bx
    shl bx, 1
    shl bx, 1
    jmp short @..dos_file_loc_4319.l3
@..dos_file_loc_4319.l6:
    dec cx
    jne short @..dos_file_loc_4319.l7
    mov cx, 8
    lodsb
    cmp si, strict word 0x1400
    jb short @..dos_file_loc_4319.l7
    push ax
    push di
    push bx
    push cx
    mov dx, 0x400
    mov bx, word [bp + 0xc]
    mov cx, 0x1000
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    mov si, 0x400
    pop cx
    pop bx
    pop di
    pop ax
@..dos_file_loc_4319.l7:
    mov word [bp - 0x0002], cx
    ret
loc_439a:
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
    jb short @..local.l167
    jmp near @..local.l169
@..local.l167:
    shl ax, 1
    shl ax, 1
    mov bx, 0x4202
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short @..local.l168
    jmp near @..local.l169
@..local.l168:
    mov word [cs:bx], 0
    mov cx, word [cs:0x0caa]
    dec cx
    mov word [cs:0x0caa], cx
    call loc_43e1
@..local.l169:
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
@..leaf_loc_43f7.l1:
    cmp ax, word [cs:bx]
    jae short @..leaf_loc_43f7.l2
    dec word [cs:bx]
@..leaf_loc_43f7.l2:
    inc bx
    inc bx
    loop @..leaf_loc_43f7.l1
    pop ax
    ret
dos_con_loc_440c:
    push ax
    mov bx, 0x229
    mov cx, 0x14
@..dos_con_loc_440c.l1:
    cmp ax, word [cs:bx]
    jae short @..dos_con_loc_440c.l2
    dec word [cs:bx]
@..dos_con_loc_440c.l2:
    inc bx
    inc bx
    loop @..dos_con_loc_440c.l1
    pop ax
    ret
dos_con_loc_4421:
    push ax
    mov bx, 0x25b
    mov cx, 0x10
@..dos_con_loc_4421.l1:
    cmp ax, word [cs:bx]
    jae short @..dos_con_loc_4421.l2
    dec word [cs:bx]
@..dos_con_loc_4421.l2:
    inc bx
    inc bx
    loop @..dos_con_loc_4421.l1
    pop ax
    ret
dos_con_loc_4436:
    push ax
    mov bx, 0x251
    mov cx, 5
@..dos_con_loc_4436.l1:
    cmp ax, word [cs:bx]
    jae short @..dos_con_loc_4436.l2
    dec word [cs:bx]
@..dos_con_loc_4436.l2:
    inc bx
    inc bx
    loop @..dos_con_loc_4436.l1
    pop ax
    ret
dos_con_loc_444b:
    push ax
    mov bx, 0x4202
    mov cx, 0x14
@..dos_con_loc_444b.l1:
    cmp ax, word [cs:bx]
    jae short @..dos_con_loc_444b.l2
    dec word [cs:bx]
@..dos_con_loc_444b.l2:
    add bx, byte 4
    loop @..dos_con_loc_444b.l1
    pop ax
    ret
dos_con_loc_4461:
    push ax
    mov bx, 0x46d9
    mov cx, 5
@..dos_con_loc_4461.l1:
    cmp ax, word [cs:bx]
    jae short @..dos_con_loc_4461.l2
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
    int 0x21 ; DOS string output
    pop dx
    pop cx
    pop bx
    pop ax
    pop ds
@..dos_con_loc_4461.l2:
    add bx, byte 4
    loop @..dos_con_loc_4461.l1
    pop ax
    ret

    db 0x0d, 0x0a, 0x07
    db 'Score slot moved.', 0
    db 0x0a, 0x24

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
@..leaf_loc_44a3.l1:
    mov bx, word [bp - 0x0004]
    mov dx, word [cs:bx]
    add dx, word [cs:0x01e1]
    mov es, dx
    mov dx, word [cs:bx + 0x4]
    add dx, word [cs:0x01e1]
    mov ds, dx
    mov cx, word [cs:bx + 0x6]
    or cx, cx
    je short @..leaf_loc_44a3.l3
@..leaf_loc_44a3.l2:
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
    loop @..leaf_loc_44a3.l2
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
    jmp short @..leaf_loc_44a3.l1
@..leaf_loc_44a3.l3:
    mov bx, word [bp - 0x0004]
    xor ax, ax
    mov word [cs:bx], ax
    mov word [cs:bx + 0x2], ax
    ret
loc_4527:
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
    jb short @..local.l170
    jmp near @..local.l172
@..local.l170:
    shl ax, 1
    shl ax, 1
    mov bx, 0x4202
    add bx, ax
    mov ax, word [cs:bx + 0x2]
    mov word [bp - 0x0002], ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short @..local.l171
    jmp near @..local.l172
@..local.l171:
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
@..local.l172:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
loc_4596:
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
loc_45b2:
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

dos_read_file_8:
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
    je short @..dos_read_file_8.l1
    jmp near @..local.l173
@..dos_read_file_8.l1:
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
    je short @..dos_read_file_8.l2
    mov ah, 0x42
    mov al, 2
    xor cx, cx
    mov dx, cx
    int 0x21 ; DOS seek file (lseek)
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
    int 0x21 ; DOS seek file (lseek)
@..dos_read_file_8.l2:
    mov ah, 0x42
    mov al, 2
    mov bx, word [bp + 0xc]
    xor cx, cx
    mov dx, cx
    int 0x21 ; DOS seek file (lseek)
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0006], dx
    mov ah, 0x42
    mov al, 0
    mov bx, word [bp + 0xc]
    xor cx, cx
    mov dx, cx
    int 0x21 ; DOS seek file (lseek)
    mov ax, word [bp - 0x0004]
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov bx, word [bp - 0x000a]
    add ax, word [bp - 0x000e]
    mov word [cs:bx + 0x2], ax
    add ax, word [cs:0x0cac]
    cmp ax, 0x4180
    jb short @..dos_read_file_8.l3
    jmp near @..dos_con_loc_4719.l1
@..dos_read_file_8.l3:
    mov word [cs:0x0cac], ax
    mov ax, word [cs:bx]
    add ax, word [cs:0x01e1]
    mov ds, ax
    mov bx, word [bp + 0xe]
    cmp bx, byte 0xff
    je short @..dos_read_file_8.l4
    xor dx, dx
    mov cx, word [bp - 0x000c]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
@..dos_read_file_8.l4:
    mov bx, word [bp - 0x0002]
    mov bx, word [cs:bx + 0x2]
    mov dx, bx
    mov bx, word [bp + 0xc]
    mov cx, word [bp - 0x0004]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    xor ax, ax
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
@..local.l173:
    mov ax, cs
    mov ds, ax
    mov dx, 0x4822
dos_con_loc_4719:
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'In LOAD_SCORE() ... slot already used.', 0
    db 0x0a, 0x24

@..dos_con_loc_4719.l1:
    mov ax, cs
    mov ds, ax
    mov dx, 0x485e
dos_con_loc_4755:
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'In LOAD_SCORE() ... not enough memory.', 0
    db 0x0a, 0x24

loc_478a:
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
    je short @..dos_con_loc_4719.l3
    dec ax
    shl ax, 1
    shl ax, 1
    mov bx, 0xbda
    add bx, ax
    mov word [bp - 0x0004], bx
    push word [bp - 0x0008]
    xor ax, ax
    cmp word [bp - 0x0006], byte 0
    je short @..dos_con_loc_4719.l2
    mov ax, word [cs:bx]
    add ax, word [cs:0x01e1]
@..dos_con_loc_4719.l2:
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
@..dos_con_loc_4719.l3:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
loc_481f:
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
    jb short @..local.l174
    jmp near @..local.l176
@..local.l174:
    shl ax, 1
    shl ax, 1
    mov bx, 0x46d9
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short @..local.l175
    jmp near @..local.l176
@..local.l175:
    mov word [cs:bx], 0
    mov cx, word [cs:0x0caa]
    dec cx
    mov word [cs:0x0caa], cx
    call loc_43e1
@..local.l176:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
loc_4866:
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
loc_487e:
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
loc_4896:
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
