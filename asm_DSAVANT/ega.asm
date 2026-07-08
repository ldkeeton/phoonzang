%include "structs/structs.inc"
%include "structs/data_4907.inc"
org 0
bits 16
data_01e1 equ 0x01e1
data_01e5 equ 0x01e5
data_01e9 equ 0x01e9
data_01f7 equ 0x01f7
data_01fb equ 0x01fb
data_01ff equ 0x01ff
data_0201 equ 0x0201
data_0203 equ 0x0203
data_0205 equ 0x0205
data_0206 equ 0x0206
data_020e equ 0x020e
data_0212 equ 0x0212
data_0216 equ 0x0216
data_021a equ 0x021a
data_021e equ 0x021e
data_0222 equ 0x0222
data_0226 equ 0x0226
data_0227 equ 0x0227
data_0228 equ 0x0228
data_027b equ 0x027b
data_0291 equ 0x0291
data_0295 equ 0x0295
data_0297 equ 0x0297
data_0299 equ 0x0299
data_0300 equ 0x0300
data_038f equ 0x038f
data_0391 equ 0x0391
data_03bb equ 0x03bb
data_0a48 equ 0x0a48
dos_con_loc_0f70 equ 0x0f70
data_11cb equ 0x11cb
data_11cd equ 0x11cd
dos_con_loc_1226 equ 0x1226
data_148e equ 0x148e
dos_con_loc_1a9f equ 0x1a9f
data_1bd5 equ 0x1bd5
data_1bd7 equ 0x1bd7
data_1bd9 equ 0x1bd9
data_1bdb equ 0x1bdb
data_1bdd equ 0x1bdd
data_1be1 equ 0x1be1
data_1be3 equ 0x1be3
data_1be5 equ 0x1be5
data_1beb equ 0x1beb
data_1bed equ 0x1bed
data_1bef equ 0x1bef
data_1bf1 equ 0x1bf1
data_1bf3 equ 0x1bf3
data_1bf5 equ 0x1bf5
data_1bf7 equ 0x1bf7
data_1bf9 equ 0x1bf9
data_1bfb equ 0x1bfb
data_258d equ 0x258d
data_258f equ 0x258f
data_2591 equ 0x2591
data_2599 equ 0x2599
data_259b equ 0x259b
data_259d equ 0x259d
data_2b02 equ 0x2b02
data_2b04 equ 0x2b04
data_2b06 equ 0x2b06
data_2b08 equ 0x2b08
data_2e2e equ 0x2e2e
data_3296 equ 0x3296
data_3297 equ 0x3297
data_36dd equ 0x36dd
data_3705 equ 0x3705
data_3a3a equ 0x3a3a
data_3b21 equ 0x3b21
data_3b22 equ 0x3b22
data_3b34 equ 0x3b34
data_3b35 equ 0x3b35
dos_con_loc_4413 equ 0x4413
data_4540 equ 0x4540
data_4907 equ 0x4907
dos_con_loc_4fca equ 0x4fca
dos_con_loc_5006 equ 0x5006

loc_0000:
    jmp near 3

    db 0xe8, 0x13, 0x17, 0xcb, 0xe8, 0x06, 0x18, 0xcb, 0xe8, 0x01, 0x19, 0xcb, 0xe8, 0xee, 0x18, 0xcb
    db 0xe8, 0xab, 0x18, 0xcb, 0xe8, 0x6b, 0x30, 0xcb, 0xe8, 0x00, 0x36, 0xcb, 0xe8, 0xd1, 0x0d, 0xcb
    db 0xe8, 0xa9, 0x10, 0xcb, 0xe8, 0xae, 0x14, 0xcb, 0xe8, 0x07, 0x30, 0xcb, 0xe8, 0x61, 0x02, 0xcb
    db 0xe8, 0x11, 0x04, 0xcb, 0xe8, 0x28, 0x04, 0xcb, 0xe8, 0x3f, 0x04, 0xcb, 0xe8, 0x54, 0x04, 0xcb
    db 0xe8, 0x6b, 0x04, 0xcb, 0xe8, 0x85, 0x0b, 0xcb, 0xe8, 0xa8, 0x0b, 0xcb, 0xe8, 0xf3, 0x0b, 0xcb
    db 0xe8, 0x45, 0x0c, 0xcb, 0xe8, 0xfd, 0x0c, 0xcb, 0xe8, 0xdf, 0x2f, 0xcb, 0xe8, 0x30, 0x19, 0xcb
    db 0xe8, 0x5b, 0x19, 0xcb, 0xe8, 0xcf, 0x03, 0xcb, 0xe8, 0x4f, 0x0e, 0xcb, 0xe8, 0x6d, 0x31, 0xcb
    db 0xe8, 0x7e, 0x31, 0xcb, 0xe8, 0xc6, 0x31, 0xcb, 0xe8, 0xc3, 0x31, 0xcb, 0xe8, 0xc0, 0x31, 0xcb
    db 0xe8, 0xbd, 0x31, 0xcb, 0xe8, 0x94, 0x33, 0xcb, 0xe8, 0x32, 0x34, 0xcb, 0xe8, 0xfe, 0x13, 0xcb
    db 0xe8, 0xda, 0x34, 0xcb, 0xe8, 0x20, 0x35, 0xcb, 0xe8, 0xa6, 0x31, 0xcb, 0xe8, 0x6f, 0x40, 0xcb
    db 0xe8, 0x0d, 0x33, 0xcb, 0xe8, 0xad, 0x43, 0xcb, 0xe8, 0x76, 0x45, 0xcb, 0xe8, 0x73, 0x47, 0xcb
    db 0xe8, 0x52, 0x49, 0xcb, 0xe8, 0x92, 0x4b, 0xcb, 0xe8, 0x1b, 0x4d, 0xcb, 0xe8, 0x86, 0x4d, 0xcb
    db 0xe8, 0x9e, 0x4d, 0xcb, 0xe8, 0xe3, 0x4d, 0xcb, 0xe8, 0x6e, 0x4f, 0xcb, 0xe8, 0xff, 0x4f, 0xcb
    db 0xe8, 0x42, 0x50, 0xcb, 0xe8, 0x56, 0x50, 0xcb, 0xe8, 0x6a, 0x50, 0xcb, 0x80, 0x41, 0x00, 0x00
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
    mov ax, word [cs:data_0297]
    mov cx, 0x140
    mul cx
    add ax, word [cs:data_0295]
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
    add word [cs:data_0295], ax
    mov word [bp - 0x000c], ax
    xor bx, bx
    mov al, byte [bx + 0x7]
    cbw
    add word [cs:data_0295], ax
    mov al, byte [bx + 0x2]
    test al, 1
    je short @..math_loc_0293.l1
    jmp near @..math_loc_0293.l17
@..math_loc_0293.l1:
    mov ax, word [cs:data_0299]
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
    mov bx, word [cs:data_0291]
    mov dx, word [cs:math_loc_0293]
    mov dh, bl
    mov ax, word [cs:data_01e5]
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
    mov ax, word [cs:data_0291]
    mov dx, word [cs:math_loc_0293]
    mov dh, al
    mov ax, word [cs:data_01e5]
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
    mov ax, word [cs:data_01e5]
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
    mov ax, word [cs:data_01e5]
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
    mov word [cs:data_0299], ax
    mov sp, bp
    pop bp
    ret
leaf_loc_0447:
    push bp
    mov bp, sp
    push es
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    mov word [cs:math_loc_0293], ax
    mov ax, word [bp + 0xe]
    mov word [cs:data_0291], ax
    pop es
    mov sp, bp
    pop bp
    ret
loc_0462:
    push bp
    mov bp, sp
    push es
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    mov word [cs:data_0295], ax
    mov ax, word [bp + 0xe]
    mov word [cs:data_0297], ax
    pop es
    mov sp, bp
    pop bp
    ret
math_loc_047d:
    push bp
    mov bp, sp
    mov ax, word [cs:data_0295]
    mov bx, word [bp + 0xc]
    mov word [bx], ax
    mov ax, word [cs:data_0297]
    mov bx, word [bp + 0xe]
    mov word [bx], ax
    mov sp, bp
    pop bp
    ret
math_loc_0496:
    push bp
    mov bp, sp
    push es
    push di
    mov ax, word [cs:data_01e5]
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
math_loc_04b1:
    push bp
    mov bp, sp
    sub sp, byte 0x36
    push ds
    push es
    push di
    push si
    xor ax, ax
    mov word [bp - 0x002e], ax
    mov word [bp - 0x002a], ax
    mov word [bp - 0x0036], ax
    mov ax, ds
    mov es, ax
    call bios_mouse_loc_1900
    call leaf_loc_0949
    mov ax, word [cs:data_01e5]
    mov ds, ax
    mov ax, 0xa000
    mov es, ax
    mov ax, word [bp + 0xe]
    mov bx, 0x50
    mul bx
    mov bx, word [bp + 0xc]
    mov cl, 2
    shr bx, cl
    add ax, bx
    mov word [bp - 0x0002], ax
    mov cx, word [bp + 0xc]
    and cl, 3
    shl cl, 1
    mov al, 0x80
    shr al, cl
    mov byte [bp - 0x0014], al
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov word [bp - 0x0012], ax
    mov ax, word [bp + 0x10]
    sub ax, word [bp + 0xc]
    inc ax
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x12]
    sub ax, word [bp + 0xe]
    inc ax
    mov word [bp - 0x0016], ax
    xor ax, ax
    mov word [bp - 0x0026], ax
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 0xc]
    mov dx, bx
    sub ax, bx
    inc ax
    and dx, 3
    je short @..math_loc_04b1.l1
    inc word [bp - 0x0026]
@..math_loc_04b1.l1:
    mov bx, 4
    sub bx, dx
    and bl, 3
    mov dx, bx
    mov word [bp - 0x0028], dx
    sub ax, dx
    jae short @..math_loc_04b1.l2
    add ax, dx
    mov word [bp - 0x0028], ax
    mov byte [bp - 0x0036], 1
    jmp near @..math_loc_04b1.l4
@..math_loc_04b1.l2:
    mov dx, ax
    shr ax, 1
    shr ax, 1
    add word [bp - 0x0026], ax
    mov word [bp - 0x002e], ax
    and dx, 3
    je short @..math_loc_04b1.l3
    inc word [bp - 0x0026]
@..math_loc_04b1.l3:
    shl dx, 1
    mov word [bp - 0x002a], dx
@..math_loc_04b1.l4:
    mov ax, word [bp - 0x0016]
    mov bx, word [bp - 0x0026]
    mul bx
    mov word [bp - 0x0024], ax
    shl ax, 1
    mov word [bp - 0x0032], ax
    add ax, word [bp - 0x0024]
    mov word [bp - 0x0034], ax
    add ax, word [bp - 0x0024]
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    add ax, word [cs:data_11cd]
    cmp ax, 0x4180
    jae short @..math_loc_04b1.l5
    cmp byte [bp - 0x0036], 0
    jne short @..math_loc_04b1.l5
    jmp near @..local.l2
@..math_loc_04b1.l5:
    jmp near @..math_loc_04b1.l6
@..math_loc_04b1.l6:
    shl word [bp - 0x0004], 1
    mov dx, 0x3ce
    mov al, 5
    out dx, al
    inc dx
    mov al, 2
    out dx, al
    mov dx, 0x3ce
    mov al, 8
    out dx, al
    inc dx
@..math_loc_04b1.l7:
    mov di, word [bp - 0x0002]
    mov si, word [bp - 0x0012]
    mov bx, 0x33b3
    mov cl, 4
    test byte [bp - 0x0014], 0xaa
    jne short @..math_loc_04b1.l8
    xor cl, cl
    inc word [bp - 0x0012]
@..math_loc_04b1.l8:
    mov dx, 0x3cf
    mov al, byte [bp - 0x0014]
    out dx, al
    ror byte [bp - 0x0014], 1
    cmp byte [bp - 0x0014], 0x80
    jne short @..math_loc_04b1.l9
    inc word [bp - 0x0002]
@..math_loc_04b1.l9:
    mov dx, word [bp - 0x0016]
@..math_loc_04b1.l10:
    lodsb
    add si, strict word 0x13f
    cs xlatb
    shr al, cl
    mov ch, byte [es:di]
    mov byte [es:di], al
    add di, byte 0x50
    dec dx
    jne short @..math_loc_04b1.l10
    dec word [bp - 0x0004]
    jne short @..math_loc_04b1.l7
    mov al, 0xff
    mov dx, 0x3cf
    out dx, al
    mov dx, 0x3ce
    mov al, 5
    out dx, al
    inc dx
    mov al, 0
    out dx, al
    call math_loc_0b91
    call bios_mouse_loc_18c1
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
@..local.l2:
    mov ax, word [cs:data_11cd]
    add ax, word [cs:data_01e1]
    mov es, ax
    mov ax, 0xa000
    mov ds, ax
    xor di, di
    mov cx, word [bp - 0x0032]
    xor ax, ax
    rep stosw
    mov dx, 0x3ce
    mov al, 5
    out dx, al
    inc dx
    mov al, 0
    out dx, al
    mov cx, word [bp - 0x0028]
    or cx, cx
    jne short @..local.l3
    jmp near @..local.l8
@..local.l3:
    shl cx, 1
    mov dx, 0x3ce
    mov al, 4
    out dx, al
    inc dx
    mov al, 0
    out dx, al
    xor di, di
    mov si, word [bp - 0x0002]
    mov bx, word [bp - 0x0016]
@..local.l4:
    mov al, byte [si]
    shr al, cl
    mov byte [es:di], al
    add si, byte 0x50
    add di, word [bp - 0x0026]
    dec bx
    jne short @..local.l4
    mov dx, 0x3ce
    mov al, 4
    out dx, al
    inc dx
    mov al, 1
    out dx, al
    mov di, word [bp - 0x0024]
    mov si, word [bp - 0x0002]
    mov bx, word [bp - 0x0016]
@..local.l5:
    mov al, byte [si]
    shr al, cl
    mov byte [es:di], al
    add si, byte 0x50
    add di, word [bp - 0x0026]
    dec bx
    jne short @..local.l5
    mov dx, 0x3ce
    mov al, 4
    out dx, al
    inc dx
    mov al, 2
    out dx, al
    mov di, word [bp - 0x0032]
    mov si, word [bp - 0x0002]
    mov bx, word [bp - 0x0016]
@..local.l6:
    mov al, byte [si]
    shr al, cl
    mov byte [es:di], al
    add si, byte 0x50
    add di, word [bp - 0x0026]
    dec bx
    jne short @..local.l6
    mov dx, 0x3ce
    mov al, 4
    out dx, al
    inc dx
    mov al, 3
    out dx, al
    mov di, word [bp - 0x0034]
    mov si, word [bp - 0x0002]
    mov bx, word [bp - 0x0016]
@..local.l7:
    mov al, byte [si]
    shr al, cl
    mov byte [es:di], al
    add si, byte 0x50
    add di, word [bp - 0x0026]
    dec bx
    jne short @..local.l7
@..local.l8:
    mov cx, word [bp - 0x002a]
    or cx, cx
    jne short @..local.l9
    jmp near @..local.l14
@..local.l9:
    mov di, word [bp - 0x0026]
    dec di
    mov si, word [bp - 0x0002]
    add si, di
    push si
    mov dx, 0x3ce
    mov al, 4
    out dx, al
    inc dx
    mov al, 0
    out dx, al
    pop si
    push si
    mov bx, word [bp - 0x0016]
@..local.l10:
    mov al, byte [si]
    shl al, cl
    mov byte [es:di], al
    add si, byte 0x50
    add di, word [bp - 0x0026]
    dec bx
    jne short @..local.l10
    mov dx, 0x3ce
    mov al, 4
    out dx, al
    inc dx
    mov al, 1
    out dx, al
    mov di, word [bp - 0x0026]
    dec di
    add di, word [bp - 0x0024]
    pop si
    push si
    mov bx, word [bp - 0x0016]
@..local.l11:
    mov al, byte [si]
    shl al, cl
    mov byte [es:di], al
    add si, byte 0x50
    add di, word [bp - 0x0026]
    dec bx
    jne short @..local.l11
    mov dx, 0x3ce
    mov al, 4
    out dx, al
    inc dx
    mov al, 2
    out dx, al
    mov di, word [bp - 0x0026]
    dec di
    add di, word [bp - 0x0032]
    pop si
    push si
    mov bx, word [bp - 0x0016]
@..local.l12:
    mov al, byte [si]
    shl al, cl
    mov byte [es:di], al
    add si, byte 0x50
    add di, word [bp - 0x0026]
    dec bx
    jne short @..local.l12
    mov dx, 0x3ce
    mov al, 4
    out dx, al
    inc dx
    mov al, 3
    out dx, al
    mov di, word [bp - 0x0026]
    dec di
    add di, word [bp - 0x0034]
    pop si
    mov bx, word [bp - 0x0016]
@..local.l13:
    mov al, byte [si]
    shl al, cl
    mov byte [es:di], al
    add si, byte 0x50
    add di, word [bp - 0x0026]
    dec bx
    jne short @..local.l13
@..local.l14:
    mov ax, word [cs:data_01e5]
    mov ds, ax
    xor di, di
    mov cx, word [bp - 0x0016]
@..local.l15:
    push cx
    mov si, word [bp - 0x0012]
    add word [bp - 0x0012], strict word 0x140
    mov cx, word [bp - 0x0028]
    or cx, cx
    je short @..local.l17
    mov byte [bp - 0x002c], cl
    mov cl, byte [es:di]
    mov bx, word [bp - 0x0024]
    mov ch, byte [es:bx + di]
    add bx, word [bp - 0x0024]
    mov dl, byte [es:bx + di]
    add bx, word [bp - 0x0024]
    mov dh, byte [es:bx + di]
@..local.l16:
    mov bx, 0x33b3
    lodsb
    cs xlatb
    rcl al, 1
    rcl dh, 1
    rcl al, 1
    rcl dl, 1
    rcl al, 1
    rcl ch, 1
    rcl al, 1
    rcl cl, 1
    rcl al, 1
    rcl dh, 1
    rcl al, 1
    rcl dl, 1
    rcl al, 1
    rcl ch, 1
    rcl al, 1
    rcl cl, 1
    dec byte [bp - 0x002c]
    jne short @..local.l16
    mov byte [es:di], cl
    mov bx, word [bp - 0x0024]
    mov byte [es:bx + di], ch
    add bx, word [bp - 0x0024]
    mov byte [es:bx + di], dl
    add bx, word [bp - 0x0024]
    mov byte [es:bx + di], dh
    inc di
@..local.l17:
    mov ax, word [bp - 0x002e]
    or ax, ax
    je short @..local.l20
    mov word [bp - 0x002c], ax
@..local.l18:
    xor cx, cx
    xor dx, dx
    mov byte [bp - 0x0030], 4
@..local.l19:
    mov bx, 0x33b3
    lodsb
    cs xlatb
    rcl al, 1
    rcl dh, 1
    rcl al, 1
    rcl dl, 1
    rcl al, 1
    rcl ch, 1
    rcl al, 1
    rcl cl, 1
    rcl al, 1
    rcl dh, 1
    rcl al, 1
    rcl dl, 1
    rcl al, 1
    rcl ch, 1
    rcl al, 1
    rcl cl, 1
    dec byte [bp - 0x0030]
    jne short @..local.l19
    mov byte [es:di], cl
    mov bx, word [bp - 0x0024]
    mov byte [es:bx + di], ch
    add bx, word [bp - 0x0024]
    mov byte [es:bx + di], dl
    add bx, word [bp - 0x0024]
    mov byte [es:bx + di], dh
    inc di
    dec word [bp - 0x002c]
    jne short @..local.l18
@..local.l20:
    mov ax, word [bp - 0x002a]
    mov byte [bp - 0x002c], al
    or al, al
    je short @..local.l22
    xor ah, ah
    shr ax, 1
    dec ax
    add si, ax
    mov cl, byte [es:di]
    mov bx, word [bp - 0x0024]
    mov ch, byte [es:bx + di]
    add bx, word [bp - 0x0024]
    mov dl, byte [es:bx + di]
    add bx, word [bp - 0x0024]
    mov dh, byte [es:bx + di]
@..local.l21:
    mov bx, 0x33b3
    mov al, byte [si]
    dec si
    cs xlatb
    rcr al, 1
    rcr cl, 1
    rcr al, 1
    rcr ch, 1
    rcr al, 1
    rcr dl, 1
    rcr al, 1
    rcr dh, 1
    rcr al, 1
    rcr cl, 1
    rcr al, 1
    rcr ch, 1
    rcr al, 1
    rcr dl, 1
    rcr al, 1
    rcr dh, 1
    sub byte [bp - 0x002c], 2
    jne short @..local.l21
    mov byte [es:di], cl
    mov bx, word [bp - 0x0024]
    mov byte [es:bx + di], ch
    add bx, word [bp - 0x0024]
    mov byte [es:bx + di], dl
    add bx, word [bp - 0x0024]
    mov byte [es:bx + di], dh
    inc di
@..local.l22:
    pop cx
    dec cx
    je short @..local.l23
    jmp near @..local.l15
@..local.l23:
    mov ax, 0xa000
    mov es, ax
    mov ax, word [cs:data_01e1]
    add ax, word [cs:data_11cd]
    mov ds, ax
    xor si, si
    mov di, word [bp - 0x0002]
    mov cx, word [bp - 0x0016]
@..local.l24:
    push cx
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 1
    out dx, al
    push si
    push di
    mov cx, word [bp - 0x0026]
    rep movsb
    pop di
    pop si
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 2
    out dx, al
    push si
    push di
    add si, word [bp - 0x0024]
    mov cx, word [bp - 0x0026]
    rep movsb
    pop di
    pop si
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 4
    out dx, al
    push si
    push di
    add si, word [bp - 0x0032]
    mov cx, word [bp - 0x0026]
    rep movsb
    pop di
    pop si
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 8
    out dx, al
    push si
    push di
    add si, word [bp - 0x0034]
    mov cx, word [bp - 0x0026]
    rep movsb
    pop di
    pop si
    add di, byte 0x50
    add si, word [bp - 0x0026]
    pop cx
    loop @..local.l24
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 0xf
    out dx, al
    call math_loc_0b91
    call bios_mouse_loc_18c1
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    db 0x00
leaf_loc_0949:
    cmp byte [cs:data_0228], 1
    jne short @..leaf_loc_0949.l1
    mov cx, word [cs:data_1bd9]
    and cx, strict word 0xfffc
    mov dx, word [cs:data_1bdb]
    cmp word [bp + 0x10], cx
    jb short @..leaf_loc_0949.l1
    cmp word [bp + 0x12], dx
    jb short @..leaf_loc_0949.l1
    add cx, word [cs:data_1be1]
    add cx, word [cs:data_1be1]
    add cx, word [cs:data_1be1]
    add cx, word [cs:data_1be1]
    dec cx
    add dx, word [cs:data_1be3]
    dec dx
    cmp cx, word [bp + 0xc]
    jb short @..leaf_loc_0949.l1
    cmp dx, word [bp + 0xe]
    jae short @..leaf_loc_0949.l2
@..leaf_loc_0949.l1:
    mov byte [cs:data_0a48], 0
    jmp near @..local.l28
@..leaf_loc_0949.l2:
    mov byte [cs:data_0a48], 1
    mov cx, word [cs:data_1bd9]
    and cx, strict word 0xfffc
    mov ax, cx
    cmp word [bp + 0xc], cx
    jb short @..leaf_loc_0949.l3
    mov ax, word [bp + 0xc]
@..leaf_loc_0949.l3:
    mov word [bp - 0x0006], ax
    mov dx, word [cs:data_1bdb]
    mov bx, dx
    cmp word [bp + 0xe], dx
    jb short @..leaf_loc_0949.l4
    mov bx, word [bp + 0xe]
@..leaf_loc_0949.l4:
    mov word [bp - 0x0008], bx
    sub ax, cx
    sub bx, dx
    mov word [bp - 0x000a], ax
    mov word [bp - 0x000c], bx
    mov cx, word [cs:data_1be1]
    shl cx, 1
    shl cx, 1
    mov dx, word [cs:data_1be3]
    sub cx, ax
    mov word [bp - 0x000e], cx
    sub dx, bx
    mov word [bp - 0x0010], dx
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000e]
    dec ax
    cmp ax, word [bp + 0x10]
    jb short @..leaf_loc_0949.l5
    mov ax, word [bp + 0x10]
    sub ax, word [bp - 0x0006]
    inc ax
    mov word [bp - 0x000e], ax
@..leaf_loc_0949.l5:
    mov ax, word [bp - 0x0008]
    add ax, word [bp - 0x0010]
    dec ax
    cmp ax, word [bp + 0x12]
    jb short @..leaf_loc_0949.l6
    mov ax, word [bp + 0x12]
    sub ax, word [bp - 0x0008]
    inc ax
    mov word [bp - 0x0010], ax
@..leaf_loc_0949.l6:
    mov ax, word [bp - 0x0008]
    mov bx, 0x140
    mul bx
    add ax, word [bp - 0x0006]
    mov si, ax
    mov ax, word [bp - 0x000c]
    mov bx, word [cs:data_1be1]
    mul bx
    mov bx, word [bp - 0x000a]
    shr bx, 1
    shr bx, 1
    add ax, bx
    add ax, word [cs:data_1bd5]
    mov di, ax
    mov bx, word [bp - 0x000a]
    and bx, 3
    shl bx, 1
    mov cx, 6
    sub cx, bx
    mov word [bp - 0x0020], cx
    mov dx, 3
    shl dx, cl
    not dl
    mov byte [bp - 0x0022], dl
    mov ax, word [cs:data_01e5]
    mov ds, ax
    mov ax, cs
    mov es, ax
    mov cx, word [bp - 0x0010]
@..leaf_loc_0949.l7:
    push cx
    push si
    push di
    mov ax, word [bp - 0x0020]
    mov word [bp - 0x001c], ax
    mov ax, word [bp - 0x0022]
    mov word [bp - 0x001e], ax
    mov cx, word [bp - 0x000e]
@..leaf_loc_0949.l8:
    push cx
    mov bx, 0x33b3
    mov ah, byte [bp - 0x001c]
    lodsb
    call leaf_loc_3252
    mov bl, byte [bp - 0x001e]
    and byte [es:di], bl
    or byte [es:di], dl
    and byte [es:di + 0x120], bl
    or byte [es:di + 0x120], dh
    and byte [es:di + 0x240], bl
    or byte [es:di + 0x240], al
    and byte [es:di + 0x360], bl
    or byte [es:di + 0x360], ah
    shr byte [bp - 0x001e], 1
    shr byte [bp - 0x001e], 1
    or byte [bp - 0x001e], 0xc0
    sub byte [bp - 0x001c], 2
    jae short @..leaf_loc_0949.l9
    inc di
    mov byte [bp - 0x001c], 6
    mov byte [bp - 0x001e], 0x3f
@..leaf_loc_0949.l9:
    pop cx
    loop @..leaf_loc_0949.l8
    pop di
    add di, word [cs:data_1be1]
    pop si
    add si, strict word 0x140
    pop cx
    loop @..leaf_loc_0949.l7
    mov cx, word [cs:data_1bd9]
    mov ax, cx
    cmp word [bp + 0xc], cx
    jb short @..leaf_loc_0949.l10
    mov ax, word [bp + 0xc]
@..leaf_loc_0949.l10:
    mov word [bp - 0x0006], ax
    mov ax, word [bp - 0x000a]
    mov cx, word [cs:data_1bdd]
    sub cx, ax
    mov word [bp - 0x000e], cx
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000e]
    dec ax
    cmp ax, word [bp + 0x10]
    jb short @..leaf_loc_0949.l11
    mov ax, word [bp + 0x10]
    sub ax, word [bp - 0x0006]
    inc ax
    mov word [bp - 0x000e], ax
@..leaf_loc_0949.l11:
    mov ax, cs
    mov es, ax
    mov ax, word [cs:data_01e5]
    mov ds, ax
    mov ax, word [cs:data_1bdb]
    mov bx, 0x140
    mul bx
    add ax, word [cs:data_1bd9]
    mov si, ax
    mov di, word [cs:data_1bd7]
    mov cx, word [cs:data_1be3]
@..leaf_loc_0949.l12:
    push cx
    push si
    mov cx, word [cs:data_1bdd]
    rep movsb
    pop si
    add si, strict word 0x140
    pop cx
    loop @..leaf_loc_0949.l12
    mov ax, word [cs:data_01e5]
    mov es, ax
    mov ax, word [cs:data_1bdb]
    mov bx, 0x140
    mul bx
    add ax, word [cs:data_1bd9]
    mov di, ax
    mov ax, word [cs:data_259b]
    mov ds, ax
    mov si, word [cs:data_2599]
    mov cx, word [cs:data_1be3]
    mov ax, ds
    or ax, si
    jne short @..local.l25
    mov si, 0x259e
    mov ax, cs
    mov ds, ax
@..local.l25:
    push cx
    push di
    push si
    mov cx, word [cs:data_1bdd]
@..local.l26:
    mov al, byte [si]
    cmp al, 0xff
    je short @..local.l27
    mov byte [es:di], al
@..local.l27:
    inc si
    inc di
    loop @..local.l26
    pop si
    add si, word [cs:data_258d]
    pop di
    add di, strict word 0x140
    pop cx
    loop @..local.l25
@..local.l28:
    ret
math_loc_0b91:
    cmp byte [cs:data_0a48], 0
    je short @..math_loc_0b91.l2
    mov ax, word [cs:data_01e5]
    mov es, ax
    mov ax, cs
    mov ds, ax
    mov ax, word [cs:data_1bdb]
    mov bx, 0x140
    mul bx
    add ax, word [cs:data_1bd9]
    mov di, ax
    mov si, word [cs:data_1bd7]
    mov cx, word [cs:data_1be3]
@..math_loc_0b91.l1:
    push cx
    push di
    mov cx, word [cs:data_1bdd]
    rep movsb
    pop di
    add di, strict word 0x140
    pop cx
    loop @..math_loc_0b91.l1
@..math_loc_0b91.l2:
    ret
math_loc_0bcf:
    push bp
    mov bp, sp
    push ds
    push es
    mov ax, ds
    mov es, ax
    mov ax, word [cs:data_01e5]
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
math_loc_0bf6:
    push bp
    mov bp, sp
    sub sp, byte 8
    push es
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [cs:data_01e5]
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
@..math_loc_0bf6.l1:
    mov di, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep stosb
    dec word [bp - 0x0004]
    jne short @..math_loc_0bf6.l1
    pop di
    pop es
    mov sp, bp
    pop bp
    ret
string_loc_0c45:
    push bp
    mov bp, sp
    sub sp, byte 8
    push es
    push ds
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [cs:data_01e5]
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
@..string_loc_0c45.l1:
    mov di, word [bp - 0x0002]
    mov si, di
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
@..string_loc_0c45.l2:
    lodsb
    not al
    stosb
    loop @..string_loc_0c45.l2
    dec word [bp - 0x0004]
    jne short @..string_loc_0c45.l1
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
    jmp near @..dos_alloc_mem.l3
@..dos_alloc_mem.l1:
    mov es, ax
    xor di, di
    mov ax, word [cs:data_01e5]
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
    jmp short @..dos_alloc_mem.l4
@..dos_alloc_mem.l3:
    mov ax, cs
    mov ds, ax
    mov dx, 0xe2e
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
    or ax, 0x70a

    db 'SAVEAREA out of memory.', 0

    or ah, byte [si]
    xor dx, dx
    mov ax, dx
@..dos_alloc_mem.l4:
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
    je short @..dos_free_mem.l2
    mov ax, word [cs:data_01e5]
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
    je short @..dos_free_mem.l3
    mov ax, ds
    or ax, ax
    je short @..dos_free_mem.l3
    mov es, ax
    mov ah, 0x49
    int 0x21 ; DOS free memory
    jmp short @..dos_free_mem.l3
@..dos_free_mem.l2:
    mov ax, cs
    mov ds, ax
    mov dx, 0xec0
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
    or ax, 0x70a

    db 'RESTOREAREA called with NULL pointer.', 0

    or ah, byte [si]
@..dos_free_mem.l3:
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
    mov bx, 0x10fb
    add bx, ax
    mov ax, word [cs:bx]
    mov bx, word [cs:data_01e1]
    add bx, ax
    mov ds, bx
    mov ax, word [cs:data_01e5]
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
    mov word [cs:data_4540], ax
    call dos_file_loc_4442
    and si, strict word 0x3ff
    mov cl, 4
    shl si, cl
    mov bx, word [cs:data_0203]
    mov ds, bx
    mov ax, word [cs:data_01e5]
    mov es, ax
    xor di, di
    mov cx, 3
@..dos_read_file.l3:
    push cx
    mov cx, 0x4000
    rep movsb
    and si, strict word 0x3fff
    inc word [cs:data_4540]
    mov ax, word [cs:data_4540]
    call dos_file_loc_4442
    pop cx
    loop @..dos_read_file.l3
    mov cx, 0x3a00
    rep movsb
    jmp short @..dos_read_file.l5
@..dos_read_file.l4:
    mov ax, word [cs:data_01e5]
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
    jmp near dos_con_loc_0f70
@..dos_write_file.l2:
    mov ax, word [cs:data_11cb]
    inc ax
    mov word [cs:data_11cb], ax
    mov word [cs:bx], ax
    mov cl, 2
    dec ax
    shl ax, cl
    mov bx, 0x10fb
    add bx, ax
    mov ax, word [cs:data_11cd]
    mov word [cs:bx], ax
    mov cx, 0xfa0
    mov word [cs:bx + 0x2], cx
    mov dx, word [cs:data_11cd]
    add dx, cx
    mov word [cs:data_11cd], dx
    cmp dx, strict word 0x4180
    jb short @..dos_write_file.l3
    jmp near dos_con_loc_0fae
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
    mov bx, 0x10fb
    add bx, ax
    mov ax, word [cs:bx]
    add ax, word [cs:data_01e1]
    mov es, ax
    mov ax, word [cs:data_01e5]
    mov ds, ax
    xor di, di
    xor si, si
    mov cx, 0xfa00
    rep movsb
    jmp short @..dos_write_file.l5
@..dos_write_file.l4:
    mov ax, word [cs:data_01e5]
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
    mov ax, cs
    mov ds, ax
    mov dx, 0x1080
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'SAVE_SCREEN called with bad slot number.', 0
    db 0x0a, 0x24

dos_con_loc_0fae:
    mov ax, cs

    db 0x8e, 0xd8, 0xba, 0xbe, 0x10, 0xb4, 0x09, 0xcd, 0x21, 0xb8, 0x01, 0x4c, 0xcd, 0x21, 0x0d, 0x0a
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
    jb short @..dos_con_loc_0f70.l1
    jmp near @..local.l29
@..dos_con_loc_0f70.l1:
    shl ax, 1
    mov word [bp - 0x0008], ax
    mov bx, 0x10e7
    add bx, ax
    mov word [bp - 0x0002], bx
    mov ax, word [cs:bx]
    or ax, ax
    jne short dos_con_loc_10ff
    jmp near @..dos_con_loc_0f70.l2
dos_con_loc_10ff:
    mov ax, cs
    mov ds, ax
    mov dx, 0x135d
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
@..dos_con_loc_0f70.l2:
    mov ax, word [cs:data_11cb]
    inc ax
    mov word [cs:data_11cb], ax
    mov bx, word [bp - 0x0002]
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x10fb
    add bx, ax
    mov word [bp - 0x0002], bx
    mov ax, word [cs:data_11cd]
    mov word [cs:bx], ax
    mov ax, word [bp + 0x10]
    or ax, ax
    je short @..dos_con_loc_0f70.l3
    jmp near @..dos_con_loc_1218.l2
@..dos_con_loc_0f70.l3:
    cld
    mov cx, 0x1000
    mov bx, word [cs:data_01e1]
    add bx, word [cs:data_11cd]
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
    add word [cs:data_11cd], ax
    mov ax, word [cs:data_11cd]
    cmp ax, 0x4180
    jae short 0x1221
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
@..local.l29:
    mov ax, cs
    mov ds, ax
    mov dx, 0x1331
dos_con_loc_1218:
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
    mov ax, cs
    mov ds, ax
    mov dx, 0x138c
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

@..dos_con_loc_1218.l2:
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
    mov dx, word [cs:data_01e1]
    add dx, word [cs:data_11cd]
    mov word [bp - 0x000a], dx
    mov es, dx
    add word [cs:data_11cd], ax
    mov ax, word [cs:data_0203]
    mov ds, ax
    mov ax, si
    mov cl, 0xa
    shr ax, cl
    mov word [cs:data_4540], ax
    call dos_file_loc_4442
    and si, strict word 0x3ff
    mov cl, 4
    shl si, cl
@..local.l30:
    test si, 0xc000
    je short @..local.l31
    inc word [cs:data_4540]
    mov ax, word [cs:data_4540]
    call dos_file_loc_4442
    sub si, strict word 0x4000
@..local.l31:
    xor di, di
    mov cx, 0x10
    rep movsb
    mov ax, es
    inc ax
    mov es, ax
    dec word [bp - 0x0004]
    jne short @..local.l30
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
leaf_loc_1355:
    push ax
    mov bx, 0x29b
    mov cx, 0x14
@..leaf_loc_1355.l1:
    cmp ax, word [cs:bx]
    jae short @..leaf_loc_1355.l2
    dec word [cs:bx]
@..leaf_loc_1355.l2:
    inc bx
    inc bx
    loop @..leaf_loc_1355.l1
    mov bx, 0x2c3
    mov cx, 0xa
@..leaf_loc_1355.l3:
    cmp ax, word [cs:bx]
    jae short @..leaf_loc_1355.l4
    dec word [cs:bx]
@..leaf_loc_1355.l4:
    inc bx
    inc bx
    loop @..leaf_loc_1355.l3
    mov bx, 0x2d7
    mov cx, 0xa
@..leaf_loc_1355.l5:
    cmp ax, word [cs:bx]
    jae short @..leaf_loc_1355.l6
    dec word [cs:bx]
@..leaf_loc_1355.l6:
    inc bx
    inc bx
    loop @..leaf_loc_1355.l5
    pop ax
    ret
    times 4 db 0
loc_1392:
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x2eb
    add bx, ax
    mov word [bp - 0x0004], bx
    mov ax, word [cs:bx + 0x2]
    sub word [cs:data_0391], ax
    mov word [bp - 0x0006], ax
@..local.l32:
    mov bx, word [bp - 0x0004]
    mov di, word [cs:bx]
    mov dx, word [cs:data_0203]
    mov es, dx
    mov ds, dx
    mov si, word [cs:bx + 0x4]
    add dx, word [cs:data_01e1]
    mov cx, word [cs:bx + 0x6]
    or cx, cx
    jne short @..local.l33
    jmp near @..local.l39
@..local.l33:
    push cx
    mov ax, si
    mov cl, 0xa
    shr ax, cl
    mov word [cs:data_148e], ax
    and si, strict word 0x3ff
    mov cl, 4
    shl si, cl
    mov ax, di
    mov cl, 0xa
    shr ax, cl
    mov word [cs:dos_con_loc_1490], ax
    and di, strict word 0x3ff
    mov cl, 4
    shl di, cl
    call loc_145c
    pop cx
@..local.l34:
    push cx
    mov cx, 0x10
    rep movsb
    xor dx, dx
    cmp di, strict word 0x4000
    jne short @..local.l35
    inc word [cs:dos_con_loc_1490]
    inc dx
@..local.l35:
    cmp si, strict word 0x4000
    je short @..local.l36
    cmp si, strict word 0x8000
    jne short @..local.l37
@..local.l36:
    inc word [cs:data_148e]
    inc dx
@..local.l37:
    or dx, dx
    je short @..local.l38
    call loc_145c
@..local.l38:
    pop cx
    loop @..local.l34
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
    jmp near @..local.l32
@..local.l39:
    mov bx, word [bp - 0x0004]
    xor ax, ax
    mov word [cs:bx], ax
    mov word [cs:bx + 0x2], ax
    ret
loc_145c:
    and di, strict word 0x3fff
    and si, strict word 0x3fff
    mov ah, 0x44
    mov al, 0
    mov bx, word [cs:dos_con_loc_1490]
    mov dx, word [cs:data_0201]
    int 0x67 ; EMS (Expanded Memory)
    cmp bx, word [cs:data_148e]
    je short @..local.l40
    or si, strict word 0x4000
    mov ah, 0x44
    mov al, 1
    mov bx, word [cs:data_148e]
    mov dx, word [cs:data_0201]
    int 0x67 ; EMS (Expanded Memory)
@..local.l40:
    ret
dos_con_loc_1490:
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
    jb short @..dos_con_loc_1490.l1
    jmp near @..dos_con_loc_1490.l3
@..dos_con_loc_1490.l1:
    shl ax, 1
    mov word [bp - 0x0008], ax
    mov bx, 0x10e7
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short @..dos_con_loc_1490.l2
    jmp near @..dos_con_loc_1490.l3
@..dos_con_loc_1490.l2:
    mov word [cs:bx], 0
    mov cx, word [cs:data_11cb]
    dec cx
    mov word [cs:data_11cb], cx
    call loc_4c93
@..dos_con_loc_1490.l3:
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
    mov bx, 0x10e7
    add bx, ax
    mov bx, word [cs:bx]
    or bx, bx
    jne short 0x1520
    mov ax, cs
    mov ds, ax
    mov dx, 0x160b
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
    add bx, strict word 0x10fb
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
    mov ax, word [cs:data_01e5]
    mov es, ax
    mov ax, word [cs:data_01e1]
    add ax, word [bp - 0x0002]
    mov ds, ax
    xor ah, ah
    mov al, byte [si + 0x4]
    or ax, ax
    jne short @..dos_print_str.l3
    jmp near @..local.l42
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
    add ax, word [cs:data_027b]
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
    jmp near @..local.l42
@..dos_print_str.l12:
    mov bx, word [bp + 0xe]
    mov ax, 5
    mul bx
    mov bx, word [bp - 0x0004]
    add bx, strict word 0x27d
    add ax, word [cs:bx]
    mov si, ax
    mov ax, word [cs:data_01e5]
    mov es, ax
    mov ax, word [cs:data_01e1]
    add ax, word [bp - 0x0002]
    mov ds, ax
    mov al, byte [si]
    mov bl, 6
    mul bl
    add ax, word [cs:data_027b]
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
    jmp near @..local.l42
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
    je short @..dos_con_loc_1501.l5
    cmp word [bp + 0x10], byte 2
    je short @..dos_con_loc_1501.l3
    cmp word [bp + 0x10], byte 3
    je short @..dos_con_loc_1501.l1
@..dos_print_str.l15:
    mov al, byte [si]
    dec si
    or al, byte [es:di]
    stosb
    loop @..dos_print_str.l15
    jmp short @..local.l41
@..dos_con_loc_1501.l1:
    mov al, byte [si]
    dec si
    cmp al, 0xff
    je short @..dos_con_loc_1501.l2
    mov byte [es:di], ah
@..dos_con_loc_1501.l2:
    inc di
    loop @..dos_con_loc_1501.l1
    jmp short @..local.l41
@..dos_con_loc_1501.l3:
    mov al, byte [si]
    dec si
    cmp al, 0xff
    je short @..dos_con_loc_1501.l4
    mov byte [es:di], al
@..dos_con_loc_1501.l4:
    inc di
    loop @..dos_con_loc_1501.l3
    jmp short @..local.l41
@..dos_con_loc_1501.l5:
    mov al, byte [si]
    dec si
    stosb
    loop @..dos_con_loc_1501.l5
@..local.l41:
    pop di
    add di, strict word 0x140
    pop ax
    mov dx, word [bp - 0x0006]
    add ax, dx
    pop si
    pop cx
    loop @..dos_print_str.l14
@..local.l42:
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
    sub sp, byte 4
    push es
    mov ax, ds
    mov es, ax
    cmp byte [cs:data_0205], 0
    jne short @..mouse_init.l1
    jmp near @..mouse_init.l2
@..mouse_init.l1:
    push ds
    push si
    mov si, 0x259e
    mov ax, cs
    mov ds, ax
    call string_loc_17a1
    pop si
    pop ds
    mov ax, 0
    int 0x33 ; BIOS mouse
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
    mov word [cs:data_1beb], cx
    mov word [cs:data_1bed], dx
    push ds
    push es
    push di
    push si
    mov ax, cs
    push ax
    mov ax, 0xffff
    mov word [cs:data_1bdb], ax
    call math_loc_2a6a
    pop si
    pop di
    pop es
    pop ds
    mov byte [cs:data_0228], 1
    push es
    mov ax, 0x14
    mov bx, cs
    mov es, bx
    mov cx, 0xb
    mov dx, 0x2b09
    int 0x33 ; BIOS mouse
    pop es
@..mouse_init.l2:
    pop es
    mov sp, bp
    pop bp
    ret
string_loc_17a1:
    push es
    push di
    mov ax, cs
    mov es, ax
    mov cx, 0x100
    mov di, 0x2a02
    xor al, al
    rep stosb
    mov cx, 0x400
    mov di, 0x2602
    xor al, al
    rep stosb
    xor di, di
    mov bx, 0x33b3
    mov cx, word [cs:data_2591]
@..string_loc_17a1.l1:
    push cx
    mov cx, word [cs:data_258d]
    mov word [bp - 0x0002], cx
    mov al, 6
    mov byte [bp - 0x0004], al
@..string_loc_17a1.l2:
    lodsb
    mov ah, byte [bp - 0x0004]
    call leaf_loc_3245
    or byte [cs:di + 0x2a02], ch
    or byte [cs:di + 0x2602], dl
    or byte [cs:di + 0x2702], dh
    or byte [cs:di + 0x2802], al
    or byte [cs:di + 0x2902], ah
    sub byte [bp - 0x0004], 2
    jae short @..string_loc_17a1.l3
    inc di
    mov byte [bp - 0x0004], 6
@..string_loc_17a1.l3:
    dec word [bp - 0x0002]
    jne short @..string_loc_17a1.l2
    cmp byte [bp - 0x0004], 6
    je short @..string_loc_17a1.l4
    inc di
@..string_loc_17a1.l4:
    pop cx
    loop @..string_loc_17a1.l1
    pop di
    pop es
    ret
mouse_init_2:
    push bp
    mov bp, sp
    push es
    mov ax, ds
    mov es, ax
    cmp byte [cs:data_0228], 0
    je short @..mouse_init_2.l1
    mov byte [cs:data_0228], 0
    mov ax, 0
    int 0x33 ; BIOS mouse
    push ds
    push es
    push di
    push si
    mov ax, cs
    mov ds, ax
    mov ax, 0xa000
    mov es, ax
    mov si, word [cs:data_1bd5]
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 1
    out dx, al
    call bios_mouse_loc_189f
    mov si, word [cs:data_1bd5]
    add si, strict word 0x120
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 2
    out dx, al
    call bios_mouse_loc_189f
    mov si, word [cs:data_1bd5]
    add si, strict word 0x240
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 4
    out dx, al
    call bios_mouse_loc_189f
    mov si, word [cs:data_1bd5]
    add si, strict word 0x360
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 8
    out dx, al
    call bios_mouse_loc_189f
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 0xf
    out dx, al
    pop si
    pop di
    pop es
    pop ds
@..mouse_init_2.l1:
    pop es
    mov sp, bp
    pop bp
    ret
bios_mouse_loc_189f:
    mov di, word [cs:data_1be5]
    mov cx, word [cs:data_1be3]
@..bios_mouse_loc_189f.l1:
    push cx
    push si
    push di
    mov cx, word [cs:data_1be1]
    rep movsb
    pop di
    add di, byte 0x50
    pop si
    add si, word [cs:data_1be1]
    pop cx
    loop @..bios_mouse_loc_189f.l1
    ret
bios_mouse_loc_18c1:
    push ds
    push es
    push si
    push di
    cmp byte [cs:data_0226], 1
    je short @..bios_mouse_loc_18c1.l1
    cmp byte [cs:data_0228], 1
    je short @..bios_mouse_loc_18c1.l2
@..bios_mouse_loc_18c1.l1:
    jmp near @..bios_mouse_loc_18c1.l4
@..bios_mouse_loc_18c1.l2:
    mov ax, 3
    int 0x33 ; BIOS mouse
    shr cx, 1
    cmp word [cs:data_1bd9], cx
    jne short @..bios_mouse_loc_18c1.l3
    cmp word [cs:data_1bdb], dx
    je short @..bios_mouse_loc_18c1.l4
@..bios_mouse_loc_18c1.l3:
    shl cx, 1
    mov ax, cs
    push ax
    call math_loc_2a4f
@..bios_mouse_loc_18c1.l4:
    mov byte [cs:data_0227], 0
    pop di
    pop si
    pop es
    pop ds
    ret
bios_mouse_loc_1900:
    cmp byte [cs:data_0228], 1
    jne short @..bios_mouse_loc_1900.l1
    mov byte [cs:data_0227], 1
@..bios_mouse_loc_1900.l1:
    ret
bios_mouse_loc_190f:
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
    cmp byte [cs:data_0228], 0
    je short @..bios_mouse_loc_190f.l6
    mov bx, word [cs:data_2b02]
    or bx, bx
    je short @..bios_mouse_loc_190f.l1
    mov word [cs:data_2b02], 0
    mov word [bp - 0x0002], bx
    mov cx, word [cs:data_2b04]
    mov dx, word [cs:data_2b06]
    jmp short @..bios_mouse_loc_190f.l2
@..bios_mouse_loc_190f.l1:
    mov ax, 3
    int 0x33 ; BIOS mouse
    xor bx, bx
    mov word [bp - 0x0002], bx
    shr cx, 1
@..bios_mouse_loc_190f.l2:
    mov bx, cx
    mov si, word [bp + 0xc]
@..bios_mouse_loc_190f.l3:
    cmp word [si], byte 0xff
    je short @..bios_mouse_loc_190f.l5
    cmp bx, word [si]
    jb short @..bios_mouse_loc_190f.l4
    cmp dx, word [si + 0x2]
    jb short @..bios_mouse_loc_190f.l4
    cmp word [si + 0x4], bx
    jb short @..bios_mouse_loc_190f.l4
    cmp word [si + 0x6], dx
    jb short @..bios_mouse_loc_190f.l4
    mov ax, word [bp - 0x0004]
    mov bx, word [bp - 0x0002]
    or bx, bx
    je short @..bios_mouse_loc_190f.l6
    neg ax
    jmp short @..bios_mouse_loc_190f.l6
@..bios_mouse_loc_190f.l4:
    add si, byte 8
    inc word [bp - 0x0004]
    jmp short @..bios_mouse_loc_190f.l3
@..bios_mouse_loc_190f.l5:
    xor ax, ax
@..bios_mouse_loc_190f.l6:
    pop es
    pop si
    pop ds
    mov sp, bp
    pop bp
    ret
bios_mouse_loc_1992:
    push bp
    mov bp, sp
    sub sp, byte 6
    push es
    mov ax, ds
    mov es, ax
    cmp byte [cs:data_0228], 0
    je short @..bios_mouse_loc_1992.l1
    mov ax, 3
    int 0x33 ; BIOS mouse
    mov word [bp - 0x0002], bx
    mov bx, word [bp + 0xc]
    shr cx, 1
    mov word [bx], cx
    mov bx, word [bp + 0xe]
    mov word [bx], dx
    mov ax, word [bp - 0x0002]
@..bios_mouse_loc_1992.l1:
    pop es
    mov sp, bp
    pop bp
    ret
mouse_set_pos:
    push bp
    mov bp, sp
    sub sp, byte 4
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
    jmp near dos_con_loc_1a9f
@..mouse_set_pos.l2:
    mov bx, word [bp + 0x12]
    mul bx
    or dx, dx
    jne short @..mouse_set_pos.l1
    cmp ax, 0x401
    jae short @..mouse_set_pos.l1
    call bios_mouse_loc_1900
    mov ax, word [bp + 0xc]
    mov word [cs:data_2599], ax
    mov ax, word [bp + 0xe]
    mov word [cs:data_259b], ax
    mov ax, word [bp + 0x10]
    mov word [cs:data_258d], ax
    mov ax, word [bp + 0x12]
    mov word [cs:data_2591], ax
    mov ax, word [cs:data_2599]
    or ax, word [cs:data_259b]
    jne short @..mouse_set_pos.l3
    mov ax, cs
    mov ds, ax
    mov es, ax
    mov si, 0x2593
    mov di, 0x258d
    mov cx, 6
    rep movsb
    push ds
    push si
    mov si, 0x259e
    mov ax, cs
    mov ds, ax
    call string_loc_17a1
    pop si
    pop ds
    jmp short @..mouse_set_pos.l4
@..mouse_set_pos.l3:
    mov ax, word [cs:data_258d]
    add ax, strict word 3
    mov cl, 2
    shr ax, cl
    mov word [cs:data_258f], ax
    push ds
    push si
    mov si, word [bp + 0xc]
    mov ax, word [bp + 0xe]
    mov ds, ax
    call string_loc_17a1
    pop si
    pop ds
@..mouse_set_pos.l4:
    cmp byte [cs:data_0228], 0
    je short @..mouse_set_pos.l8
    mov cx, word [bp + 0x14]
    cmp cx, byte 0xff
    je short @..mouse_set_pos.l6
    mov dx, word [bp + 0x16]
    cmp dx, byte 0xff
    je short @..mouse_set_pos.l6
    shl cx, 1
    mov ax, 4
    int 0x33 ; BIOS mouse
@..mouse_set_pos.l5:
    mov ax, 3
    int 0x33 ; BIOS mouse
    jmp short @..mouse_set_pos.l7
@..mouse_set_pos.l6:
    cmp byte [cs:data_0226], 0
    je short @..mouse_set_pos.l5
    mov cx, word [cs:data_1bd9]
    shl cx, 1
    mov dx, word [cs:data_1bdb]
@..mouse_set_pos.l7:
    mov ax, cs
    push ax
    call math_loc_2a4f
    mov byte [cs:data_0227], 0
@..mouse_set_pos.l8:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    mov ax, cs
    mov ds, ax
    mov dx, 0x1baf
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Mouse pointer size out of range.', 0
    db 0x0a, 0x24, 0xfd, 0x1b, 0x7d, 0x20
    times 2484 db 0
    db 0x0a, 0x00, 0x03, 0x00, 0x0a, 0x00, 0x0a, 0x00, 0x03, 0x00, 0x0a
    times 13 db 0
    db 0xff, 0xff, 0xff, 0x00, 0xb3, 0xb6, 0xb6, 0xb6, 0xb6, 0x00, 0xff, 0xff, 0xff, 0x00, 0xb3, 0x13
    db 0x15, 0xb6, 0x00, 0xff, 0xff, 0xff, 0xff, 0x00, 0xb3, 0x15, 0x16, 0xb6, 0x00, 0xff, 0xff, 0xff
    db 0xff, 0x00, 0xb3, 0xb6, 0xb3, 0xb6, 0xc1, 0x00, 0xff, 0xff, 0xff, 0x00, 0xb3, 0x00, 0x00, 0xb3
    db 0xb6, 0xc1, 0x00, 0xff, 0xff, 0x00, 0x00, 0xff, 0xff, 0x00, 0xb3, 0xb6, 0xc1, 0x00, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0x00, 0xb3, 0xb6, 0xc1, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00
    db 0xb3, 0xc3, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0xff
    times 1287 db 0
    db 0xfc, 0x25, 0x0a, 0x00, 0x74, 0x34, 0x2e, 0x80, 0x3e, 0x08, 0x2b, 0x00, 0x75, 0x29, 0x2e, 0xa2
    db 0x08, 0x2b, 0x2e, 0x89, 0x1e, 0x02, 0x2b, 0xd1, 0xe9, 0x2e, 0x89, 0x0e, 0x04, 0x2b, 0x2e, 0x89
    db 0x16, 0x06, 0x2b, 0x32, 0xc0, 0x2e, 0xa2, 0x08, 0x2b, 0x2e, 0x3b, 0x0e, 0xd9, 0x1b, 0x75, 0x08
    db 0x2e, 0x3b, 0x16, 0xdb, 0x1b, 0x75, 0x01, 0xcb, 0xd1, 0xe1, 0x2e, 0xa0, 0x27, 0x02, 0x2e, 0x0a
    db 0x06, 0x26, 0x02, 0x74, 0x01, 0xcb

math_loc_2a4f:
    cmp byte [cs:data_2b08], 0
    je short @..local.l43
    retf
@..local.l43:
    mov al, 0xff
    mov byte [cs:data_2b08], al
    shr cx, 1
    mov word [cs:data_1beb], cx
    mov word [cs:data_1bed], dx
math_loc_2a6a:
    push bp
    mov bp, sp
    sub sp, byte 0x10
    mov ax, word [cs:data_1bed]
    mov bx, 0xc8
    sub bx, ax
    cmp bx, word [cs:data_2591]
    jb short @..math_loc_2a6a.l1
    mov bx, word [cs:data_2591]
@..math_loc_2a6a.l1:
    mov word [cs:data_1bf5], bx
    mov bx, 0x50
    mul bx
    mov bx, word [cs:data_1beb]
    mov cl, 2
    shr bx, cl
    add ax, bx
    mov word [cs:data_1bf7], ax
    mov ax, word [cs:data_1beb]
    and ax, strict word 3
    shl ax, 1
    mov word [cs:data_1bf9], ax
    mov ax, 0x140
    mov bx, word [cs:data_1beb]
    sub ax, bx
    cmp ax, word [cs:data_258d]
    jb short @..math_loc_2a6a.l2
    mov ax, word [cs:data_258d]
    mov word [cs:data_1bfb], 0
    jmp short @..math_loc_2a6a.l3
@..math_loc_2a6a.l2:
    mov word [cs:data_1bfb], 0xff
@..math_loc_2a6a.l3:
    mov word [cs:data_1bef], ax
    add ax, strict word 3
    mov cl, 2
    shr ax, cl
    mov word [cs:data_1bf1], ax
    db 0x2e, 0x83, 0x3e, 0xfb, 0x1b, 0x00 ; cmp word [cs:data_1bfb], 0
    jne short @..math_loc_2a6a.l4
    db 0x2e, 0x83, 0x3e, 0xf9, 0x1b, 0x00 ; cmp word [cs:data_1bf9], 0
    je short @..math_loc_2a6a.l4
    inc ax
@..math_loc_2a6a.l4:
    mov word [cs:data_1bf3], ax
    mov di, word [cs:data_1bd7]
    mov ax, cs
    mov es, ax
    mov ax, 0xa000
    mov ds, ax
    mov dx, 0x3ce
    mov al, 5
    out dx, al
    inc dx
    mov al, 0
    out dx, al
    mov ah, 0
    xor di, di
    call io_loc_2f46
    mov ah, 1
    mov di, 0x120
    call io_loc_2f46
    mov di, 0x240
    mov ah, 2
    call io_loc_2f46
    mov di, 0x360
    mov ah, 3
    call io_loc_2f46
    mov ax, word [cs:data_1bdb]
    cmp ax, strict word 0xffff
    jne short @..math_loc_2a6a.l5
    jmp near @..local.l44
@..math_loc_2a6a.l5:
    add ax, word [cs:data_1be3]
    dec ax
    mov word [bp - 0x0002], ax
    mov ax, word [cs:data_1bd9]
    mov cl, 2
    shr ax, cl
    add ax, word [cs:data_1be1]
    dec ax
    mov word [bp - 0x0004], ax
    mov cx, word [cs:data_1beb]
    shr cx, 1
    shr cx, 1
    mov dx, word [cs:data_1bed]
    cmp word [bp - 0x0004], cx
    jb short @..math_loc_2a6a.l6
    cmp word [bp - 0x0002], dx
    jb short @..math_loc_2a6a.l6
    add cx, word [cs:data_1bf3]
    dec cx
    add dx, word [cs:data_1bf5]
    dec dx
    mov ax, word [cs:data_1bd9]
    shr ax, 1
    shr ax, 1
    cmp cx, ax
    jb short @..math_loc_2a6a.l6
    cmp dx, word [cs:data_1bdb]
    jae short @..math_loc_2a6a.l7
@..math_loc_2a6a.l6:
    mov byte [cs:data_259d], 0
    jmp near @..local.l44
@..math_loc_2a6a.l7:
    mov byte [cs:data_259d], 1
    mov cx, word [cs:data_1beb]
    shr cx, 1
    shr cx, 1
    mov ax, cx
    mov bx, word [cs:data_1bd9]
    shr bx, 1
    shr bx, 1
    cmp bx, cx
    jb short @..math_loc_2a6a.l8
    mov ax, word [cs:data_1bd9]
    shr ax, 1
    shr ax, 1
@..math_loc_2a6a.l8:
    mov word [bp - 0x0006], ax
    mov dx, word [cs:data_1bed]
    mov bx, dx
    cmp word [cs:data_1bdb], dx
    jb short @..math_loc_2a6a.l9
    mov bx, word [cs:data_1bdb]
@..math_loc_2a6a.l9:
    mov word [bp - 0x0008], bx
    sub ax, cx
    sub bx, dx
    mov word [bp - 0x000a], ax
    mov word [bp - 0x000c], bx
    mov cx, word [cs:data_1bf3]
    mov dx, word [cs:data_1bf5]
    sub cx, ax
    mov word [bp - 0x000e], cx
    sub dx, bx
    mov word [bp - 0x0010], dx
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x000e]
    dec ax
    cmp ax, word [bp - 0x0004]
    jb short @..math_loc_2a6a.l10
    mov ax, word [bp - 0x0004]
    sub ax, word [bp - 0x0006]
    inc ax
    mov word [bp - 0x000e], ax
@..math_loc_2a6a.l10:
    mov ax, word [bp - 0x0008]
    add ax, word [bp - 0x0010]
    dec ax
    cmp ax, word [bp - 0x0002]
    jb short @..math_loc_2a6a.l11
    mov ax, word [bp - 0x0002]
    sub ax, word [bp - 0x0008]
    inc ax
    mov word [bp - 0x0010], ax
@..math_loc_2a6a.l11:
    mov ax, word [bp - 0x0008]
    sub ax, word [cs:data_1bdb]
    mov bx, word [cs:data_1be1]
    mul bx
    add ax, word [bp - 0x0006]
    mov bx, word [cs:data_1bd9]
    shr bx, 1
    shr bx, 1
    sub ax, bx
    add ax, word [cs:data_1bd5]
    mov si, ax
    mov ax, word [bp - 0x000c]
    mov bx, word [cs:data_1bf3]
    mul bx
    add ax, word [bp - 0x000a]
    add ax, word [cs:data_1bd7]
    mov di, ax
    mov ax, cs
    mov ds, ax
    mov es, ax
    mov cx, word [bp - 0x0010]
@..math_loc_2a6a.l12:
    push cx
    push si
    push di
    mov ax, si
    mov bx, di
    mov cx, word [bp - 0x000e]
    rep movsb
    add ax, 0x120
    add bx, strict word 0x120
    mov si, ax
    mov di, bx
    mov cx, word [bp - 0x000e]
    rep movsb
    add ax, 0x120
    add bx, strict word 0x120
    mov si, ax
    mov di, bx
    mov cx, word [bp - 0x000e]
    rep movsb
    add ax, 0x120
    add bx, strict word 0x120
    mov si, ax
    mov di, bx
    mov cx, word [bp - 0x000e]
    rep movsb
    pop di
    add di, word [cs:data_1bf3]
    pop si
    add si, word [cs:data_1be1]
    pop cx
    loop @..math_loc_2a6a.l12
@..local.l44:
    mov ax, 0xa000
    mov es, ax
    mov si, 0x2602
    mov ax, cs
    mov ds, ax
    xor si, si
    mov ah, 1
    call io_loc_2f70
    mov si, 0x100
    mov ah, 2
    call io_loc_2f70
    mov si, 0x200
    mov ah, 4
    call io_loc_2f70
    mov si, 0x300
    mov ah, 8
    call io_loc_2f70
    mov dx, 0x3ce
    mov al, 8
    out dx, al
    inc dx
    mov al, 0xff
    out dx, al
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 0xf
    out dx, al
    mov ax, word [cs:data_1bdb]
    cmp ax, strict word 0xffff
    jne short @..local.l45
    jmp near @..local.l54
@..local.l45:
    mov ah, 1
    xor si, si
    call io_loc_2e7d
    mov ah, 2
    mov si, 0x120
    call io_loc_2e7d
    mov ah, 4
    mov si, 0x240
    call io_loc_2e7d
    mov ah, 8
    mov si, 0x360
    call io_loc_2e7d
    mov dx, 0x3ce
    mov al, 8
    out dx, al
    inc dx
    mov al, 0xff
    out dx, al
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 0xf
    out dx, al
    mov ax, cs
    mov es, ax
    mov ds, ax
    mov di, 0x24fd
    mov cx, 0x80
    mov al, 0xff
    rep stosb
    mov ax, word [cs:data_1be1]
    add ax, strict word 7
    mov cl, 3
    shr ax, cl
    mov word [bp - 0x0002], ax
    cmp byte [cs:data_259d], 0
    jne short @..local.l46
    jmp near @..local.l53
@..local.l46:
    mov ax, word [bp - 0x0008]
    sub ax, word [cs:data_1bdb]
    mov bx, word [bp - 0x0002]
    mul bx
    mov di, ax
    add di, strict word 0x24fd
    mov ax, word [bp - 0x0006]
    mov bx, word [cs:data_1bd9]
    shr bx, 1
    shr bx, 1
    sub ax, bx
    mov bx, 0x257d
@..local.l47:
    cmp ax, strict word 8
    jb short @..local.l48
    sub ax, strict word 8
    inc di
    jmp short @..local.l47
@..local.l48:
    mov cx, ax
    mov ah, 0xff
    shr ah, cl
    mov dx, word [bp - 0x000e]
    add dx, cx
@..local.l49:
    cmp dx, byte 8
    jb short @..local.l50
    not ah
    mov byte [bx], ah
    inc bx
    mov ah, 0xff
    sub dx, byte 8
    je short @..local.l51
    jmp short @..local.l49
@..local.l50:
    mov al, 0xff
    mov cx, 8
    sub cx, dx
    shl al, cl
    and ah, al
    not ah
    mov byte [bx], ah
    inc bx
@..local.l51:
    sub bx, strict word 0x257d
    mov word [bp - 0x0004], bx
    mov cx, word [bp - 0x0010]
@..local.l52:
    push cx
    push di
    mov si, 0x257d
    mov cx, word [bp - 0x0004]
    rep movsb
    pop di
    add di, word [bp - 0x0002]
    pop cx
    loop @..local.l52
@..local.l53:
    mov ax, 0xa000
    mov es, ax
    mov si, word [cs:data_1bd5]
    mov ah, 1
    call io_loc_2e35
    mov si, word [cs:data_1bd5]
    add si, strict word 0x120
    mov ah, 2
    call io_loc_2e35
    mov si, word [cs:data_1bd5]
    add si, strict word 0x240
    mov ah, 4
    call io_loc_2e35
    mov si, word [cs:data_1bd5]
    add si, strict word 0x360
    mov ah, 8
    call io_loc_2e35
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, 0xf
    out dx, al
@..local.l54:
    mov ax, word [cs:data_1bd5]
    mov bx, word [cs:data_1bd7]
    mov word [cs:data_1bd7], ax
    mov word [cs:data_1bd5], bx
    mov ax, cs
    mov ds, ax
    mov es, ax
    mov si, 0x1beb
    mov di, 0x1bd9
    mov cx, 9
    rep movsw
    mov sp, bp
    pop bp
    xor al, al
    mov byte [cs:data_2b08], al
    retf
io_loc_2e35:
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, ah
    out dx, al
    mov bx, 0x24fd
    mov di, word [cs:data_1be5]
    mov cx, word [cs:data_1be3]
@..io_loc_2e35.l1:
    push cx
    push si
    push bx
    push di
    mov cx, word [cs:data_1be1]
@..io_loc_2e35.l2:
    mov ah, byte [bx]
    inc bx
    mov al, 9
@..io_loc_2e35.l3:
    dec al
    je short @..io_loc_2e35.l2
    shl ah, 1
    jae short @..io_loc_2e35.l4
    mov dl, byte [si]
    mov byte [es:di], dl
@..io_loc_2e35.l4:
    inc di
    inc si
    loop @..io_loc_2e35.l3
    pop di
    add di, byte 0x50
    pop bx
    add bx, word [bp - 0x0002]
    pop si
    add si, word [cs:data_1be1]
    pop cx
    loop @..io_loc_2e35.l1
    ret
io_loc_2e7d:
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, ah
    out dx, al
    add si, word [cs:data_1bd7]
    mov di, word [cs:data_1bf7]
    mov bx, 0x2a02
    mov cx, word [cs:data_1bf5]
    mov dx, 0x3ce
    mov al, 8
    out dx, al
    inc dx
    db 0x2e, 0x83, 0x3e, 0xf9, 0x1b, 0x00 ; cmp word [cs:data_1bf9], 0
    je short @..io_loc_2e7d.l1
    jmp short @..local.l55
@..io_loc_2e7d.l1:
    push cx
    push di
    push si
    push bx
    mov cx, word [cs:data_1bf1]
@..io_loc_2e7d.l2:
    mov al, byte [bx]
    not al
    out dx, al
    mov al, byte [cs:si]
    mov ah, byte [es:di]
    mov byte [es:di], al
    inc si
    inc bx
    inc di
    loop @..io_loc_2e7d.l2
    pop bx
    add bx, word [cs:data_258f]
    pop si
    add si, word [cs:data_1bf3]
    pop di
    add di, byte 0x50
    pop cx
    loop @..io_loc_2e7d.l1
    ret
@..local.l55:
    push cx
    push di
    push si
    push bx
    mov cx, word [cs:data_1bf9]
    mov al, byte [bx]
    not al
    mov ah, 0xff
    shr ax, cl
    out dx, al
    mov al, byte [si]
    mov ah, byte [es:di]
    mov byte [es:di], al
    inc di
    inc si
    mov ax, word [cs:data_1bf1]
    dec ax
    je short @..local.l57
@..local.l56:
    push ax
    mov ah, byte [bx]
    mov al, byte [bx + 0x1]
    not ax
    shr ax, cl
    out dx, al
    mov al, byte [cs:si]
    mov ah, byte [es:di]
    mov byte [es:di], al
    inc si
    inc bx
    inc di
    pop ax
    dec ax
    jne short @..local.l56
@..local.l57:
    db 0x2e, 0x83, 0x3e, 0xfb, 0x1b, 0x00 ; cmp word [cs:data_1bfb], 0
    jne short @..local.l58
    mov ah, byte [bx]
    xor al, al
    not ax
    shr ax, cl
    out dx, al
    mov al, byte [cs:si]
    mov ah, byte [es:di]
    mov byte [es:di], al
@..local.l58:
    pop bx
    add bx, word [cs:data_258f]
    pop si
    add si, word [cs:data_1bf3]
    pop di
    add di, byte 0x50
    pop cx
    loop @..local.l55
    ret
io_loc_2f46:
    mov si, word [cs:data_1bf7]
    add di, word [cs:data_1bd7]
    mov cx, word [cs:data_1bf5]
    mov dx, 0x3ce
    mov al, 4
    out dx, al
    inc dx
    mov al, ah
    out dx, al
@..io_loc_2f46.l1:
    push cx
    push si
    mov cx, word [cs:data_1bf3]
    rep movsb
    pop si
    add si, byte 0x50
    pop cx
    loop @..io_loc_2f46.l1
    ret
io_loc_2f70:
    mov dx, 0x3c4
    mov al, 2
    out dx, al
    inc dx
    mov al, ah
    out dx, al
    add si, strict word 0x2602
    mov cx, word [cs:data_1bf5]
    mov di, word [cs:data_1bf7]
    mov bx, 0x2a02
    mov dx, 0x3ce
    mov al, 8
    out dx, al
    inc dx
    db 0x2e, 0x83, 0x3e, 0xf9, 0x1b, 0x00 ; cmp word [cs:data_1bf9], 0
    je short @..io_loc_2f70.l1
    jmp short @..local.l59
@..io_loc_2f70.l1:
    push cx
    push di
    push si
    push bx
    mov cx, word [cs:data_1bf1]
@..io_loc_2f70.l2:
    mov al, byte [bx]
    out dx, al
    mov al, byte [si]
    mov ah, byte [es:di]
    mov byte [es:di], al
    inc si
    inc bx
    inc di
    loop @..io_loc_2f70.l2
    pop bx
    add bx, word [cs:data_258f]
    pop si
    add si, word [cs:data_258f]
    pop di
    add di, byte 0x50
    pop cx
    loop @..io_loc_2f70.l1
    ret
@..local.l59:
    push cx
    push di
    push si
    push bx
    mov cx, word [cs:data_1bf9]
    mov al, byte [bx]
    shr al, cl
    out dx, al
    mov al, byte [si]
    shr al, cl
    mov ah, byte [es:di]
    mov byte [es:di], al
    inc di
    mov ax, word [cs:data_1bf1]
    dec ax
    je short @..local.l61
@..local.l60:
    push ax
    mov ah, byte [bx]
    mov al, byte [bx + 0x1]
    shr ax, cl
    out dx, al
    mov ah, byte [si]
    mov al, byte [si + 0x1]
    shr ax, cl
    mov ah, byte [es:di]
    mov byte [es:di], al
    inc si
    inc bx
    inc di
    pop ax
    dec ax
    jne short @..local.l60
@..local.l61:
    db 0x2e, 0x83, 0x3e, 0xfb, 0x1b, 0x00 ; cmp word [cs:data_1bfb], 0
    jne short @..local.l62
    mov ah, byte [bx]
    xor al, al
    shr ax, cl
    out dx, al
    mov ah, byte [si]
    xor al, al
    shr ax, cl
    mov ah, byte [es:di]
    mov byte [es:di], al
@..local.l62:
    pop bx
    add bx, word [cs:data_258f]
    pop si
    add si, word [cs:data_258f]
    pop di
    add di, byte 0x50
    pop cx
    loop @..local.l59
    ret
loc_3035:
    mov word [cs:data_2b02], 0
    ret
loc_303d:
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
    jb short @..local.l63
    jmp near @..local.l65
@..local.l63:
    shl ax, 1
    mov word [bp - 0x0008], ax
    mov bx, 0x229
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short @..local.l64
    jmp near @..local.l65
@..local.l64:
    mov word [cs:bx], 0
    mov cx, word [cs:data_11cb]
    dec cx
    mov word [cs:data_11cb], cx
    call loc_4c93
@..local.l65:
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
    jmp near @..local.l66
@..dos_read_file_3.l1:
    mov ax, word [cs:data_11cb]
    inc ax
    mov word [cs:data_11cb], ax
    mov bx, word [bp - 0x0002]
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x10fb
    add bx, ax
    mov word [bp - 0x0002], bx
    mov ax, word [cs:data_11cd]
    mov word [cs:bx], ax
    mov ax, word [cs:data_01e9]
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
    add word [cs:data_11cd], ax
    mov bx, word [bp - 0x0002]
    mov word [cs:bx + 0x2], ax
    mov ax, word [cs:data_11cd]
    cmp ax, 0x4180
    jb short @..dos_read_file_3.l2
    jmp near @..dos_con_loc_317d.l1
@..dos_read_file_3.l2:
    mov bx, word [bp - 0x0002]
    mov ax, word [cs:bx]
    add ax, word [cs:data_01e1]
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
@..local.l66:
    mov ax, word [bp + 0xe]
    mov bx, 0xa
    div bx
    or byte [cs:data_3296], al
    or byte [cs:data_3297], dl
    mov ax, cs
    mov ds, ax
    mov dx, 0x3286
dos_con_loc_317d:
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Picture slot 00 not freed.', 0
    db 0x0a, 0x24

@..dos_con_loc_317d.l1:
    mov ax, cs
    mov ds, ax
    mov dx, 0x32b6
dos_con_loc_31ad:
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Memory unavailable loading picture.', 0
    db 0x0a, 0x24

string_loc_31df:
    jmp near math_loc_04b1

    db 0x05, 0x00, 0x08, 0x0a, 0x0a, 0xaa, 0x11, 0x2a, 0x13, 0x22, 0x16, 0x2f, 0x19, 0xff, 0x1a, 0x7f
    db 0x1c, 0x77

leaf_loc_31f4:
    push bp
    mov bp, sp
    sub sp, byte 8
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov bx, 0x33b3
    add bx, word [bp + 0xc]
    mov ax, word [bp + 0xe]
    cmp ax, strict word 0xffff
    jne short @..string_loc_31df.l1
    mov word [cs:bx], 0xff
    jmp short @..string_loc_31df.l4
@..string_loc_31df.l1:
    mov si, 0x32e2
    mov ax, 8
    shl ax, 1
    add si, ax
    mov ax, word [bp + 0xe]
    mov cx, 8
@..string_loc_31df.l2:
    cmp byte [cs:si], al
    jbe short @..string_loc_31df.l3
    sub si, byte 2
    loop @..string_loc_31df.l2
@..string_loc_31df.l3:
    mov al, byte [cs:si + 0x1]
    mov byte [cs:bx], al
@..string_loc_31df.l4:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
leaf_loc_3240:
    ret
leaf_loc_3241:
    ret
leaf_loc_3242:
    ret
leaf_loc_3243:
    ret
leaf_loc_3244:
    ret
leaf_loc_3245:
    push bx
    cmp al, 0xff
    jne short @..leaf_loc_3252.l1
    xor cx, cx
    xor ax, ax
    xor dx, dx
    pop bx
    ret
leaf_loc_3252:
    push bx
@..leaf_loc_3252.l1:
    push ax
    cs xlatb
    mov ah, al
    and al, 1
    mov dl, al
    mov al, ah
    and al, 2
    shr al, 1
    mov dh, al
    mov al, ah
    and al, 4
    shr al, 1
    shr al, 1
    mov bl, al
    mov al, ah
    and al, 8
    mov cl, 3
    shr al, cl
    mov bh, al
    mov al, ah
    and al, 0x10
    mov cl, 3
    shr al, cl
    or dl, al
    mov al, ah
    and al, 0x20
    mov cl, 4
    shr al, cl
    or dh, al
    mov al, ah
    and al, 0x40
    mov cl, 5
    shr al, cl
    or bl, al
    mov al, ah
    and al, 0x80
    mov cl, 6
    shr al, cl
    or bh, al
    pop ax
    mov cl, ah
    mov ch, 3
    shl ch, cl
    shl dl, cl
    shl dh, cl
    shl bl, cl
    shl bh, cl
    mov ax, bx
    pop bx
    ret

    db 0x00, 0x11, 0x19, 0x19, 0x18, 0x18, 0x01, 0x01, 0x01, 0x09, 0x09, 0x09, 0x08, 0x08, 0x08, 0x00
    db 0x11, 0x19, 0x14, 0x14
    db 'DDDDLL'
    db 0xcc, 0xcc, 0x04, 0x04, 0x0c, 0x0c, 0x08, 0x08, 0x00, 0x00, 0x14, 0x45, 0x45, 0x44, 0x4d, 0xdd
    db 0xdd, 0x04, 0x45, 0x45, 0x5d, 0x5c, 0x16, 0x66, 0x66, 0x6e, 0x6e, 0xee, 0x06, 0x0e, 0x0e, 0x08
    db 0x08, 0x5c, 0x9d, 0x8d, 0x8d, 0xce, 0x59, 0x56, 0x5e, 0x6d, 0xde, 0xce, 0xce, 0x08, 0x08, 0x00
    db 0x00, 0x7f, 0xff, 0x07, 0x0f, 0x0f, 0x15, 0x15, 0x15
    db 'UUUY]F'
    db 0x05, 0xce, 0xce, 0x08, 0x08, 0x27, 0xaf, 0x19, 0x19, 0x19, 0x19, 0x18, 0x18, 0x18, 0x18, 0x18
    db 0x01, 0x01, 0x01, 0x01, 0x09, 0x09, 0x09, 0x09, 0x08, 0x08, 0x08, 0x08, 0x00, 0x00, 0x00, 0x01
    db 0x09, 0x09, 0x09, 0xad, 0x08, 0x08, 0x08, 0x17, 0x17, 0x1f
    db "''''//"
    db 0xaf, 0x2d, 0x02, 0x0f, 0xad, 0x08, 0x08, 0x1c, 0x1c, 0x48, 0x48, 0x14, 0x14
    db '4"""*'
    db 0x02, 0x0a, 0x0a, 0x08, 0x08, 0x8d, 0x04, 0x04, 0x0d, 0x34, 0x3c, 0xbc, 0x13, 0x33, 0x33, 0x3b
    db 0xbb, 0xbb, 0x03, 0x0b, 0x08
    db 'UUUYYY]]'
    db 0x12, 0x12, 0x1a, 0x1a, 0x28, 0x28, 0x28, 0x02, 0x5d, 0x5d, 0x9d, 0x9d, 0x9d, 0x8d, 0x8d, 0x8d
    db 0x0d, 0x0d, 0x0d, 0x0d, 0x08, 0x08, 0x08, 0x00, 0x1d, 0x5d, 0x5d, 0x9d, 0x9d, 0x05, 0x8d, 0x15
    db 0x14, 0x14, 0x14, 0x1d, 0x1d, 0x1d, 0x1c, 0x1c, 0x09, 0x09, 0x08, 0x59, 0x1d, 0x9d, 0x8d, 0x9d
    db 0x48, 0x8d, 0x8d, 0x8d, 0x0d, 0x0d, 0x08, 0x00, 0x1c, 0x48, 0x48, 0x04, 0x04, 0x0c, 0x12, 0x23
    db 0x23, 0x2b, 0xab, 0xab, 0x02, 0x0b, 0x08, 0x2d

dos_mem_loc_33b3:
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
    je short @..dos_mem_loc_33b3.l3
    cmp word [bp + 0xc], byte 1
    je short @..dos_mem_loc_33b3.l4
    cmp word [bp + 0xc], byte 3
    je short @..dos_mem_loc_33b3.l1
    mov ax, 0x4180
    sub ax, word [cs:data_11cd]
    mov bx, 0x10
    mul bx
    jmp short @..dos_mem_loc_33b3.l5
@..dos_mem_loc_33b3.l1:
    mov ah, 0x36
    mov dx, word [bp + 0xe]
    int 0x21 ; DOS get disk free space
    cmp ax, strict word 0xffff
    jne short @..dos_mem_loc_33b3.l2
    xor ax, ax
    xor dx, dx
    jmp short @..dos_mem_loc_33b3.l5
@..dos_mem_loc_33b3.l2:
    mul cx
    mul bx
    jmp short @..dos_mem_loc_33b3.l5
@..dos_mem_loc_33b3.l3:
    mov ah, 0x48
    mov bx, 0xffff
    int 0x21 ; DOS allocate memory
    mov ax, 0x10
    mul bx
    jmp short @..dos_mem_loc_33b3.l5
@..dos_mem_loc_33b3.l4:
    mov ax, word [cs:data_01ff]
    sub ax, word [cs:data_0391]
    mov bx, 0x10
    mul bx
@..dos_mem_loc_33b3.l5:
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
    cmp byte [cs:data_0228], 1
    je short @..mouse_set_pos_2.l1
    jmp near @..mouse_set_pos_2.l8
@..mouse_set_pos_2.l1:
    mov byte [cs:data_0226], 1
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
    call math_loc_2a4f
    mov cx, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    mov ax, 4
    int 0x33 ; BIOS mouse
    mov ax, word [bp + 0x10]
    or ax, ax
    je short @..mouse_set_pos_2.l2
    push ax
    call far [cs:data_01fb]
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
    cmp byte [cs:data_0228], 1
    je short @..mouse_set_pos_3.l1
    jmp near @..mouse_set_pos_3.l9
@..mouse_set_pos_3.l1:
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0xe]
    mov word [bp - 0x0004], ax
    mov cx, word [cs:data_1bd9]
    shl cx, 1
    mov dx, word [cs:data_1bdb]
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
    call math_loc_2a4f
    mov cx, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    mov ax, 4
    int 0x33 ; BIOS mouse
    mov ax, word [bp + 0x10]
    or ax, ax
    je short @..mouse_set_pos_3.l2
    push ax
    call far [cs:data_01fb]
    pop ax
    jmp short @..mouse_set_pos_3.l2
@..mouse_set_pos_3.l8:
    mov cx, word [bp - 0x0002]
    mov dx, word [bp - 0x0004]
    mov ax, 4
    int 0x33 ; BIOS mouse
    mov byte [cs:data_0226], 0
@..mouse_set_pos_3.l9:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
loc_3570:
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
    jb short @..local.l67
    jmp near @..local.l69
@..local.l67:
    shl ax, 1
    mov word [bp - 0x0008], ax
    mov bx, 0x251
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short @..local.l68
    jmp near @..local.l69
@..local.l68:
    mov word [cs:bx], 0
    mov cx, word [cs:data_11cb]
    dec cx
    mov word [cs:data_11cb], cx
    call loc_4c93
@..local.l69:
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
io_loc_35ba:
    push bp
    mov bp, sp
    sub sp, byte 8
    push ds
    push es
    push di
    push si
    mov ax, ds
    mov es, ax
    lds si, word [cs:data_01f7]
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

math_loc_361e:
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
    jb short @..math_loc_361e.l1
    mov ax, word [bp + 0x18]
    sub ax, word [bp + 0x16]
    jb short @..math_loc_361e.l1
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
    mov bx, 0x10fb
    add bx, ax
    mov ax, word [cs:bx]
    add ax, word [cs:data_01e1]
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
    je short @..math_loc_361e.l1
    call dos_con_loc_39e3
    xor ah, ah
    mov al, byte [bx + 0x2]
    mov word [bp - 0x0002], ax
    mov cx, ax
    mov al, byte [bx + 0x3]
    mov word [bp - 0x0004], ax
    or ax, cx
    jne short @..math_loc_361e.l2
@..math_loc_361e.l1:
    jmp near @..local.l106
@..math_loc_361e.l2:
    mov word [bp - 0x003a], bx
    mov ax, es
    mov word [bp - 0x0038], ax
    mov ax, cs
    mov es, ax
    lea di, word [data_36dd]
    xor ax, ax
    mov cx, 0x14
    rep stosw
    lea di, word [data_3705]
    mov cx, 0x19
    rep stosb
    mov bx, word [bp + 0x20]
    or bx, bx
    jne short @..math_loc_361e.l3
    jmp near @..math_loc_361e.l7
@..math_loc_361e.l3:
    cmp bx, byte 0x64
    jae short @..math_loc_361e.l1
    mov ax, word [bp - 0x0002]
    mov cl, 3
    shl ax, cl
    mov cx, ax
    mov bx, word [bp + 0x20]
    mul bx
    mov bx, 0x64
    div bx
    cmp dx, byte 0x32
    jb short @..math_loc_361e.l4
    inc ax
@..math_loc_361e.l4:
    or ax, ax
    je short @..math_loc_361e.l5
    xor dx, dx
    mov bx, ax
    mov word [bp - 0x0034], ax
    mov ax, cx
    div bx
    mov di, 0x36dd
    mov bx, word [bp - 0x0034]
    shr bx, 1
    mov word [bp - 0x003c], bx
    mov si, ax
    dec si
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0032], cx
    call leaf_loc_3a51
@..math_loc_361e.l5:
    mov ax, word [bp - 0x0004]
    mov cl, 3
    shl ax, cl
    mov cx, ax
    mov bx, word [bp + 0x20]
    mul bx
    mov bx, 0x64
    div bx
    cmp dx, byte 0x32
    jb short @..math_loc_361e.l6
    inc ax
@..math_loc_361e.l6:
    or ax, ax
    je short @..math_loc_361e.l7
    xor dx, dx
    mov bx, ax
    mov word [bp - 0x0034], ax
    mov ax, cx
    div bx
    mov di, 0x3705
    mov bx, word [bp - 0x0034]
    shr bx, 1
    mov word [bp - 0x003c], bx
    mov si, ax
    dec si
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0032], cx
    call leaf_loc_3a51
@..math_loc_361e.l7:
    mov bx, word [bp - 0x003a]
    mov ax, word [bp - 0x0038]
    mov es, ax
    mov ax, word [bp + 0x12]
    sub ax, word [bp + 0xe]
    jge short @..math_loc_361e.l8
    xor ax, ax
@..math_loc_361e.l8:
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
    jge short @..math_loc_361e.l9
    xor ax, ax
@..math_loc_361e.l9:
    mov word [bp - 0x002a], ax
    add ax, word [bp - 0x0028]
    sub cx, ax
    ja short @..math_loc_361e.l10
    jmp near @..local.l106
@..math_loc_361e.l10:
    mov word [bp - 0x0026], cx
    mov ax, word [bp + 0x16]
    sub ax, word [bp + 0x10]
    jge short @..math_loc_361e.l11
    xor ax, ax
@..math_loc_361e.l11:
    mov word [bp - 0x0024], ax
    mov ax, word [bp + 0x10]
    mov bx, word [bp - 0x0004]
    mov cl, 3
    shl bx, cl
    mov cx, bx
    dec bx
    add ax, bx
    sub ax, word [bp + 0x18]
    jge short @..math_loc_361e.l12
    xor ax, ax
@..math_loc_361e.l12:
    mov word [bp - 0x002c], ax
    add ax, word [bp - 0x0024]
    sub cx, ax
    ja short @..math_loc_361e.l13
    jmp near @..local.l106
@..math_loc_361e.l13:
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
    je short @..math_loc_361e.l14
    jmp near @..local.l78
@..math_loc_361e.l14:
    mov bx, word [bp - 0x001e]
    inc bx
    mov word [bp - 0x003e], bx
    mov bx, 0x36dd
    mov dl, 0x80
    xor ax, ax
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0040], ax
    mov cx, word [bp - 0x0028]
    or cx, cx
    je short @..math_loc_361e.l19
@..math_loc_361e.l15:
    mov al, byte [cs:bx]
    and al, dl
    jne short @..math_loc_361e.l16
    or byte [cs:bx], dl
    jmp short @..math_loc_361e.l17
@..math_loc_361e.l16:
    inc word [bp - 0x0030]
    inc cx
@..math_loc_361e.l17:
    ror dl, 1
    cmp dl, 0x80
    jne short @..math_loc_361e.l18
    inc bx
@..math_loc_361e.l18:
    loop @..math_loc_361e.l15
@..math_loc_361e.l19:
    mov word [bp - 0x0032], bx
    mov ax, word [bp - 0x0030]
    mov word [bp - 0x0040], ax
    add ax, word [bp - 0x0028]
    mov bx, word [bp - 0x003e]
    cmp bx, ax
    ja short @..local.l70
    jmp near @..local.l106
@..local.l70:
    sub bx, ax
    xor ax, ax
    mov word [bp - 0x0030], ax
    sub bx, word [bp - 0x0026]
    jbe short @..local.l77
    mov word [bp - 0x0034], bx
    mov cx, word [bp - 0x0026]
    mov bx, word [bp - 0x0032]
@..local.l71:
    mov al, byte [cs:bx]
    and al, dl
    je short @..local.l72
    inc word [bp - 0x0030]
    mov ax, word [bp - 0x0030]
    cmp ax, word [bp - 0x0034]
    je short @..local.l74
    inc cx
@..local.l72:
    ror dl, 1
    cmp dl, 0x80
    jne short @..local.l73
    inc bx
@..local.l73:
    loop @..local.l71
@..local.l74:
    mov word [bp - 0x0032], bx
    mov ax, word [bp - 0x0030]
    add ax, word [bp - 0x0040]
    add ax, word [bp - 0x0028]
    add ax, word [bp - 0x0026]
    mov cx, word [bp - 0x003e]
    sub cx, ax
    jbe short @..local.l77
    mov bx, word [bp - 0x0032]
@..local.l75:
    or byte [cs:bx], dl
    ror dl, 1
    cmp dl, 0x80
    jne short @..local.l76
    inc bx
@..local.l76:
    loop @..local.l75
@..local.l77:
    jmp near @..local.l91
@..local.l78:
    mov bx, word [bp - 0x001e]
    inc bx
    mov word [bp - 0x003e], bx
    mov bx, 0x36dd
    mov dl, 0x80
    xor ax, ax
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0040], ax
    mov cx, word [bp - 0x002a]
    or cx, cx
    je short @..local.l83
@..local.l79:
    mov al, byte [cs:bx]
    and al, dl
    jne short @..local.l80
    or byte [cs:bx], dl
    jmp short @..local.l81
@..local.l80:
    inc word [bp - 0x0030]
    inc cx
@..local.l81:
    ror dl, 1
    cmp dl, 0x80
    jne short @..local.l82
    inc bx
@..local.l82:
    loop @..local.l79
@..local.l83:
    mov word [bp - 0x0032], bx
    mov ax, word [bp - 0x0030]
    mov word [bp - 0x0040], ax
    add ax, word [bp - 0x002a]
    mov bx, word [bp - 0x003e]
    cmp bx, ax
    ja short @..local.l84
    jmp near @..local.l106
@..local.l84:
    sub bx, ax
    xor ax, ax
    mov word [bp - 0x0030], ax
    sub bx, word [bp - 0x0026]
    jbe short @..local.l91
    mov word [bp - 0x0034], bx
    mov cx, word [bp - 0x0026]
    mov bx, word [bp - 0x0032]
@..local.l85:
    mov al, byte [cs:bx]
    and al, dl
    je short @..local.l86
    inc word [bp - 0x0030]
    mov ax, word [bp - 0x0030]
    cmp ax, word [bp - 0x0034]
    je short @..local.l88
    inc cx
@..local.l86:
    ror dl, 1
    cmp dl, 0x80
    jne short @..local.l87
    inc bx
@..local.l87:
    loop @..local.l85
@..local.l88:
    mov word [bp - 0x0032], bx
    mov ax, word [bp - 0x0030]
    add ax, word [bp - 0x0040]
    add ax, word [bp - 0x002a]
    add ax, word [bp - 0x0026]
    mov cx, word [bp - 0x003e]
    sub cx, ax
    jbe short @..local.l91
    mov bx, word [bp - 0x0032]
@..local.l89:
    or byte [cs:bx], dl
    ror dl, 1
    cmp dl, 0x80
    jne short @..local.l90
    inc bx
@..local.l90:
    loop @..local.l89
@..local.l91:
    mov ax, word [bp + 0x1a]
    and al, 2
    jne short @..local.l98
    mov bx, 0x3705
    mov dl, 0x80
    xor ax, ax
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0040], ax
    mov cx, word [bp - 0x0024]
    or cx, cx
    je short @..local.l96
@..local.l92:
    mov al, byte [cs:bx]
    and al, dl
    jne short @..local.l93
    or byte [cs:bx], dl
    jmp short @..local.l94
@..local.l93:
    inc word [bp - 0x0030]
    inc cx
@..local.l94:
    ror dl, 1
    cmp dl, 0x80
    jne short @..local.l95
    inc bx
@..local.l95:
    loop @..local.l92
@..local.l96:
    mov ax, word [bp - 0x0030]
    mov word [bp - 0x0040], ax
    add ax, word [bp - 0x0024]
    mov bx, word [bp - 0x0004]
    mov cl, 3
    shl bx, cl
    cmp bx, ax
    ja short @..local.l97
    jmp near @..local.l106
@..local.l97:
    jmp short @..local.l104
@..local.l98:
    mov bx, 0x3705
    mov dl, 0x80
    xor ax, ax
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0040], ax
    mov cx, word [bp - 0x002c]
    or cx, cx
    je short @..local.l103
@..local.l99:
    mov al, byte [cs:bx]
    and al, dl
    jne short @..local.l100
    or byte [cs:bx], dl
    jmp short @..local.l101
@..local.l100:
    inc word [bp - 0x0030]
    inc cx
@..local.l101:
    ror dl, 1
    cmp dl, 0x80
    jne short @..local.l102
    inc bx
@..local.l102:
    loop @..local.l99
@..local.l103:
    mov ax, word [bp - 0x0030]
    add ax, word [bp - 0x002c]
    mov bx, word [bp - 0x0004]
    mov cl, 3
    shl bx, cl
    cmp bx, ax
    jbe short @..local.l106
@..local.l104:
    mov ax, word [bp + 0x20]
    mov bl, 0xc
    div bl
    xor ah, ah
    mov word [bp - 0x0030], ax
@..local.l105:
    mov si, word [bp + 0x1c]
    mov bx, word [bp - 0x0008]
    mov ds, bx
    xor ah, ah
    mov al, byte [ss:si]
    or al, al
    je short @..local.l106
    call dos_con_loc_39e3
    call math_loc_3a8b
    inc word [bp + 0x1c]
    jmp short @..local.l105
@..local.l106:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
dos_con_loc_39e3:
    dec ax
    cmp ax, word [bp - 0x0012]
    jb short @..dos_con_loc_39e3.l1
    mov bl, 0xa
    div bl
    or byte [cs:data_3b21], al
    or byte [cs:data_3b22], dl
    mov ax, word [bp + 0xc]
    mov bl, 0xa
    div bl
    or byte [cs:data_3b34], al
    or byte [cs:data_3b35], dl
    mov bx, cs
    mov ds, bx
    mov dx, 0x3b18
dos_con_loc_3a0f:
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Frame 00 too big in slot 00.', 0
    db 0x0a, 0x24

@..dos_con_loc_39e3.l1:
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
leaf_loc_3a51:
    jmp short @..leaf_loc_3a51.l2
@..leaf_loc_3a51.l1:
    add si, word [bp - 0x0030]
@..leaf_loc_3a51.l2:
    add word [bp - 0x003c], dx
    mov bx, word [bp - 0x003c]
    cmp bx, word [bp - 0x0034]
    jb short @..leaf_loc_3a51.l3
    sub bx, word [bp - 0x0034]
    mov word [bp - 0x003c], bx
    inc si
@..leaf_loc_3a51.l3:
    cmp si, word [bp - 0x0032]
    jb short @..local.l107
@..leaf_loc_3a51.l4:
    ret
@..local.l107:
    test si, 0x8000
    jne short @..leaf_loc_3a51.l4
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
    jmp short @..leaf_loc_3a51.l1
math_loc_3a8b:
    push es
    mov ax, word [cs:data_01e5]
    mov es, ax
    mov ax, 0x3705
    mov word [bp - 0x0036], ax
    xor ax, ax
    mov word [bp - 0x003c], ax
    mov word [bp - 0x003e], ax
    mov ax, word [bp + 0x1a]
    cmp al, 2
    jne short @..math_loc_3a8b.l1
    jmp near @..local.l135
@..math_loc_3a8b.l1:
    cmp al, 3
    jne short @..math_loc_3a8b.l2
    jmp near @..local.l160
@..math_loc_3a8b.l2:
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
    jne short @..math_loc_3a8b.l3
    jmp near @..local.l110
@..math_loc_3a8b.l3:
    mov ax, word [bp - 0x0028]
    add word [bp - 0x000e], ax
    mov ax, word [bp - 0x0024]
    mov bx, 0x140
    mul bx
    add word [bp - 0x000e], ax
@..math_loc_3a8b.l4:
    mov ax, word [bp - 0x0022]
    mov di, word [bp - 0x000e]
    cmp di, ax
    jb short @..math_loc_3a8b.l5
    jmp near @..math_loc_3a8b.l25
@..math_loc_3a8b.l5:
    push cx
    call math_loc_3bf2
    mov ax, 0x36dd
    mov word [bp - 0x0034], ax
    mov cx, word [bp - 0x0002]
@..math_loc_3a8b.l6:
    push cx
    call math_loc_3c12
    mov bx, word [bp - 0x000c]
    mov al, byte [bx]
    and al, byte [bp - 0x000a]
    jne short @..math_loc_3a8b.l7
    jmp near @..math_loc_3a8b.l23
@..math_loc_3a8b.l7:
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    cmp al, 0xff
    jne short @..math_loc_3a8b.l8
    add si, byte 0x40
    jmp near @..math_loc_3a8b.l23
@..math_loc_3a8b.l8:
    push di
    push si
    mov al, 0x80
    mov byte [bp - 0x0038], al
    mov cx, 8
@..math_loc_3a8b.l9:
    cmp di, word [bp - 0x0022]
    jb short @..math_loc_3a8b.l10
    jmp near @..math_loc_3a8b.l22
@..math_loc_3a8b.l10:
    mov bx, word [bp - 0x0036]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0038]
    je short @..math_loc_3a8b.l11
    jmp near @..math_loc_3a8b.l21
@..math_loc_3a8b.l11:
    push cx
    push di
    mov al, 0x80
    mov byte [bp - 0x0032], al
    mov cx, 8
@..math_loc_3a8b.l12:
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0032]
    jne short @..math_loc_3a8b.l20
    xor ah, ah
    mov al, byte [si]
    cmp al, 0xff
    je short @..math_loc_3a8b.l17
    cmp byte [bp + 0x1e], 2
    jne short @..math_loc_3a8b.l14
    mov al, byte [es:di]
    mov bx, 0x40cd
    add bx, ax
    add al, byte [si]
    jb short @..math_loc_3a8b.l13
    cmp al, byte [cs:bx]
    jb short @..math_loc_3a8b.l16
@..math_loc_3a8b.l13:
    mov al, byte [cs:bx]
    jmp short @..math_loc_3a8b.l16
@..math_loc_3a8b.l14:
    cmp byte [bp - 0x0030], 0
    je short @..math_loc_3a8b.l16
    mov bx, 0x40cd
    add bx, ax
    add al, byte [bp - 0x0030]
    jb short @..math_loc_3a8b.l15
    cmp al, byte [cs:bx]
    jb short @..math_loc_3a8b.l16
@..math_loc_3a8b.l15:
    mov al, byte [cs:bx]
@..math_loc_3a8b.l16:
    mov byte [es:di], al
@..math_loc_3a8b.l17:
    inc si
    inc di
    ror byte [bp - 0x0032], 1
    loop @..math_loc_3a8b.l12
@..math_loc_3a8b.l18:
    pop di
    pop cx
    add di, strict word 0x140
@..math_loc_3a8b.l19:
    ror byte [bp - 0x0038], 1
    loop @..math_loc_3a8b.l9
    jmp short @..math_loc_3a8b.l22
@..math_loc_3a8b.l20:
    inc si
    ror byte [bp - 0x0032], 1
    loop @..math_loc_3a8b.l12
    jmp short @..math_loc_3a8b.l18
@..math_loc_3a8b.l21:
    add si, byte 8
    jmp short @..math_loc_3a8b.l19
@..math_loc_3a8b.l22:
    pop si
    add si, byte 0x40
    pop di
@..math_loc_3a8b.l23:
    add di, byte 8
    sub di, word [bp - 0x003c]
    rol byte [bp - 0x000a], 1
    cmp byte [bp - 0x000a], 1
    jne short @..math_loc_3a8b.l24
    inc word [bp - 0x000c]
@..math_loc_3a8b.l24:
    inc word [bp - 0x0034]
    pop cx
    loop @..local.l108
    pop cx
    add word [bp - 0x000e], strict word 0xa00
    mov ax, word [bp - 0x003e]
    sub word [bp - 0x000e], ax
    inc word [bp - 0x0036]
    mov byte [bp - 0x003a], 0x80
    loop @..local.l109
@..math_loc_3a8b.l25:
    pop es
    ret
@..local.l108:
    jmp near @..math_loc_3a8b.l6
@..local.l109:
    jmp near @..math_loc_3a8b.l4
math_loc_3bf2:
    mov al, 0x80
    mov dl, al
    xor ax, ax
    mov word [bp - 0x003e], ax
    mov bx, word [bp - 0x0036]
    mov cx, 8
@..math_loc_3bf2.l1:
    mov al, byte [cs:bx]
    and al, dl
    je short @..math_loc_3bf2.l2
    add word [bp - 0x003e], strict word 0x140
@..math_loc_3bf2.l2:
    ror dl, 1
    loop @..math_loc_3bf2.l1
    ret
math_loc_3c12:
    xor ax, ax
    mov word [bp - 0x003c], ax
    mov dl, 0x80
    mov bx, word [bp - 0x0034]
    mov cx, 8
@..math_loc_3c12.l1:
    mov al, byte [cs:bx]
    and al, dl
    je short @..math_loc_3c12.l2
    inc word [bp - 0x003c]
@..math_loc_3c12.l2:
    ror dl, 1
    loop @..math_loc_3c12.l1
    ret
@..local.l110:
    mov ax, word [bp - 0x002a]
    sub word [bp - 0x000e], ax
    mov ax, word [bp - 0x0024]
    mov bx, 0x140
    mul bx
    add word [bp - 0x000e], ax
@..local.l111:
    mov ax, word [bp - 0x0022]
    mov di, word [bp - 0x000e]
    add di, word [bp - 0x001e]
    cmp di, ax
    jb short @..local.l112
    jmp near @..local.l132
@..local.l112:
    push cx
    call math_loc_3bf2
    mov ax, 0x36dd
    mov word [bp - 0x0034], ax
    mov cx, word [bp - 0x0002]
@..local.l113:
    push cx
    call math_loc_3c12
    mov bx, word [bp - 0x000c]
    mov al, byte [bx]
    and al, byte [bp - 0x000a]
    jne short @..local.l114
    jmp near @..local.l130
@..local.l114:
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    cmp al, 0xff
    jne short @..local.l115
    add si, byte 0x40
    jmp near @..local.l130
@..local.l115:
    push di
    push si
    mov al, 0x80
    mov byte [bp - 0x0038], al
    mov cx, 8
@..local.l116:
    cmp di, word [bp - 0x0022]
    jb short @..local.l117
    jmp near @..local.l129
@..local.l117:
    mov bx, word [bp - 0x0036]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0038]
    je short @..local.l118
    jmp near @..local.l128
@..local.l118:
    push cx
    push di
    mov al, 0x80
    mov byte [bp - 0x0032], al
    mov cx, 8
@..local.l119:
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0032]
    jne short @..local.l127
    mov al, byte [si]
    cmp al, 0xff
    je short @..local.l124
    cmp byte [bp + 0x1e], 2
    jne short @..local.l121
    mov al, byte [es:di]
    mov bx, 0x40cd
    add bx, ax
    add al, byte [si]
    jb short @..local.l120
    cmp al, byte [cs:bx]
    jb short @..local.l123
@..local.l120:
    mov al, byte [cs:bx]
    jmp short @..local.l123
@..local.l121:
    cmp byte [bp - 0x0030], 0
    je short @..local.l123
    mov bx, 0x40cd
    add bx, ax
    add al, byte [bp - 0x0030]
    jb short @..local.l122
    cmp al, byte [cs:bx]
    jb short @..local.l123
@..local.l122:
    mov al, byte [cs:bx]
@..local.l123:
    mov byte [es:di], al
@..local.l124:
    inc si
    dec di
    ror byte [bp - 0x0032], 1
    loop @..local.l119
@..local.l125:
    pop di
    pop cx
    add di, strict word 0x140
@..local.l126:
    ror byte [bp - 0x0038], 1
    loop @..local.l116
    jmp short @..local.l129
@..local.l127:
    inc si
    ror byte [bp - 0x0032], 1
    loop @..local.l119
    jmp short @..local.l125
@..local.l128:
    add si, byte 8
    jmp short @..local.l126
@..local.l129:
    pop si
    add si, byte 0x40
    pop di
@..local.l130:
    sub di, byte 8
    add di, word [bp - 0x003c]
    rol byte [bp - 0x000a], 1
    cmp byte [bp - 0x000a], 1
    jne short @..local.l131
    inc word [bp - 0x000c]
@..local.l131:
    inc word [bp - 0x0034]
    pop cx
    loop @..local.l133
    pop cx
    add word [bp - 0x000e], strict word 0xa00
    mov ax, word [bp - 0x003e]
    sub word [bp - 0x000e], ax
    inc word [bp - 0x0036]
    mov byte [bp - 0x003a], 0x80
    loop @..local.l134
@..local.l132:
    pop es
    ret
@..local.l133:
    jmp near @..local.l113
@..local.l134:
    jmp near @..local.l111
@..local.l135:
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
@..local.l136:
    mov ax, word [bp - 0x002e]
    mov di, word [bp - 0x000e]
    cmp ax, di
    jbe short @..local.l137
    jmp near @..local.l157
@..local.l137:
    push cx
    call math_loc_3bf2
    mov ax, 0x36dd
    mov word [bp - 0x0034], ax
    mov cx, word [bp - 0x0002]
@..local.l138:
    push cx
    call math_loc_3c12
    mov bx, word [bp - 0x000c]
    mov al, byte [bx]
    and al, byte [bp - 0x000a]
    jne short @..local.l139
    jmp near @..local.l155
@..local.l139:
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    cmp al, 0xff
    jne short @..local.l140
    add si, byte 0x40
    jmp near @..local.l155
@..local.l140:
    push di
    push si
    mov al, 0x80
    mov byte [bp - 0x0038], al
    mov cx, 8
@..local.l141:
    cmp word [bp - 0x002e], di
    jbe short @..local.l142
    jmp near @..local.l154
@..local.l142:
    mov bx, word [bp - 0x0036]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0038]
    je short @..local.l143
    jmp near @..local.l153
@..local.l143:
    push cx
    push di
    mov al, 0x80
    mov byte [bp - 0x0032], al
    mov cx, 8
@..local.l144:
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0032]
    jne short @..local.l152
    mov al, byte [si]
    cmp al, 0xff
    je short @..local.l149
    cmp byte [bp + 0x1e], 2
    jne short @..local.l146
    mov al, byte [es:di]
    mov bx, 0x40cd
    add bx, ax
    add al, byte [si]
    jb short @..local.l145
    cmp al, byte [cs:bx]
    jb short @..local.l148
@..local.l145:
    mov al, byte [cs:bx]
    jmp short @..local.l148
@..local.l146:
    cmp byte [bp - 0x0030], 0
    je short @..local.l148
    mov bx, 0x40cd
    add bx, ax
    add al, byte [bp - 0x0030]
    jb short @..local.l147
    cmp al, byte [cs:bx]
    jb short @..local.l148
@..local.l147:
    mov al, byte [cs:bx]
@..local.l148:
    mov byte [es:di], al
@..local.l149:
    inc si
    inc di
    ror byte [bp - 0x0032], 1
    loop @..local.l144
@..local.l150:
    pop di
    sub di, strict word 0x140
    pop cx
@..local.l151:
    ror byte [bp - 0x0038], 1
    loop @..local.l141
    jmp short @..local.l154
@..local.l152:
    inc si
    ror byte [bp - 0x0032], 1
    loop @..local.l144
    jmp short @..local.l150
@..local.l153:
    add si, byte 8
    jmp short @..local.l151
@..local.l154:
    pop si
    add si, byte 0x40
    pop di
@..local.l155:
    add di, byte 8
    sub di, word [bp - 0x003c]
    rol byte [bp - 0x000a], 1
    cmp byte [bp - 0x000a], 1
    jne short @..local.l156
    inc word [bp - 0x000c]
@..local.l156:
    inc word [bp - 0x0034]
    pop cx
    loop @..local.l158
    pop cx
    sub word [bp - 0x000e], strict word 0xa00
    mov ax, word [bp - 0x003e]
    add word [bp - 0x000e], ax
    inc word [bp - 0x0036]
    mov byte [bp - 0x003a], 0x80
    loop @..local.l159
@..local.l157:
    pop es
    ret
@..local.l158:
    jmp near @..local.l138
@..local.l159:
    jmp near @..local.l136
@..local.l160:
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
@..local.l161:
    mov ax, word [bp - 0x002e]
    mov di, word [bp - 0x000e]
    add di, word [bp - 0x001e]
    cmp ax, di
    jb short @..local.l162
    jmp near @..local.l182
@..local.l162:
    push cx
    call math_loc_3bf2
    mov ax, 0x36dd
    mov word [bp - 0x0034], ax
    mov cx, word [bp - 0x0002]
@..local.l163:
    push cx
    call math_loc_3c12
    mov bx, word [bp - 0x000c]
    mov al, byte [bx]
    and al, byte [bp - 0x000a]
    jne short @..local.l164
    jmp near @..local.l180
@..local.l164:
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    cmp al, 0xff
    jne short @..local.l165
    add si, byte 0x40
    jmp near @..local.l180
@..local.l165:
    push di
    push si
    mov al, 0x80
    mov byte [bp - 0x0038], al
    mov cx, 8
@..local.l166:
    cmp word [bp - 0x002e], di
    jbe short @..local.l167
    jmp near @..local.l179
@..local.l167:
    mov bx, word [bp - 0x0036]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0038]
    je short @..local.l168
    jmp near @..local.l178
@..local.l168:
    push cx
    push di
    mov al, 0x80
    mov byte [bp - 0x0032], al
    mov cx, 8
@..local.l169:
    mov bx, word [bp - 0x0034]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x0032]
    jne short @..local.l177
    mov al, byte [si]
    cmp al, 0xff
    je short @..local.l174
    cmp byte [bp + 0x1e], 2
    jne short @..local.l171
    mov al, byte [es:di]
    mov bx, 0x40cd
    add bx, ax
    add al, byte [si]
    jb short @..local.l170
    cmp al, byte [cs:bx]
    jb short @..local.l173
@..local.l170:
    mov al, byte [cs:bx]
    jmp short @..local.l173
@..local.l171:
    cmp byte [bp - 0x0030], 0
    je short @..local.l173
    mov bx, 0x40cd
    add bx, ax
    add al, byte [bp - 0x0030]
    jb short @..local.l172
    cmp al, byte [cs:bx]
    jb short @..local.l173
@..local.l172:
    mov al, byte [cs:bx]
@..local.l173:
    mov byte [es:di], al
@..local.l174:
    inc si
    dec di
    ror byte [bp - 0x0032], 1
    loop @..local.l169
@..local.l175:
    pop di
    sub di, strict word 0x140
    pop cx
@..local.l176:
    ror byte [bp - 0x0038], 1
    loop @..local.l166
    jmp short @..local.l179
@..local.l177:
    inc si
    ror byte [bp - 0x0032], 1
    loop @..local.l169
    jmp short @..local.l175
@..local.l178:
    add si, byte 8
    jmp short @..local.l176
@..local.l179:
    pop si
    add si, byte 0x40
    pop di
@..local.l180:
    sub di, byte 8
    add di, word [bp - 0x003c]
    rol byte [bp - 0x000a], 1
    cmp byte [bp - 0x000a], 1
    jne short @..local.l181
    inc word [bp - 0x000c]
@..local.l181:
    inc word [bp - 0x0034]
    pop cx
    loop @..local.l183
    pop cx
    sub word [bp - 0x000e], strict word 0xa00
    mov ax, word [bp - 0x003e]
    add word [bp - 0x000e], ax
    inc word [bp - 0x0036]
    mov byte [bp - 0x003a], 0x80
    loop @..local.l184
@..local.l182:
    pop es
    ret
@..local.l183:
    jmp near @..local.l163
@..local.l184:
    jmp near @..local.l161

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

@..local.l185:
    mov ax, cs
    mov ds, ax
    mov dx, 0x41dd
dos_con_loc_40d4:
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
    jne short @..dos_con_loc_40d4.l5
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
    jae short @..dos_con_loc_40d4.l1
    jmp near @..local.l185
@..dos_con_loc_40d4.l1:
    mov ax, word [cs:data_01e5]
    mov ds, ax
    mov cx, word [bp - 0x0004]
@..dos_con_loc_40d4.l2:
    push cx
    mov dx, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    mov bx, word [bp + 0x16]
    mov ah, 0x40
    int 0x21 ; DOS write file (handle)
    jae short @..dos_con_loc_40d4.l3
    jmp near @..local.l185
@..dos_con_loc_40d4.l3:
    cmp ax, word [bp - 0x0006]
    je short @..dos_con_loc_40d4.l4
    jmp near @..local.l185
@..dos_con_loc_40d4.l4:
    pop cx
    loop @..dos_con_loc_40d4.l2
    xor ax, ax
    mov dx, word [bp + 0x14]
    jmp near @..dos_con_loc_4370.l1
@..dos_con_loc_40d4.l5:
    cmp word [bp + 0x14], byte 2
    je short @..dos_con_loc_40d4.l6
    jmp near @..dos_con_loc_40d4.l11
@..dos_con_loc_40d4.l6:
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
    add ax, word [cs:data_11cd]
    cmp ax, 0x4180
    jbe short @..dos_con_loc_40d4.l7
    jmp near @..dos_con_loc_43a7.l1
@..dos_con_loc_40d4.l7:
    mov bx, word [cs:data_11cd]
    mov word [bp - 0x000e], bx
    mov word [cs:data_11cd], ax
    mov bx, 0x25b
    mov cx, 0x10
    xor dx, dx
@..dos_con_loc_40d4.l8:
    mov ax, word [cs:bx]
    or ax, ax
    je short @..dos_con_loc_40d4.l9
    inc dx
    add bx, byte 2
    loop @..dos_con_loc_40d4.l8
    jmp near 0x440e
@..dos_con_loc_40d4.l9:
    mov word [bp - 0x000c], dx
    mov ax, word [cs:data_11cb]
    inc ax
    mov word [cs:data_11cb], ax
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x10fb
    add bx, ax
    mov ax, word [bp - 0x000e]
    mov word [cs:bx], ax
    add ax, word [cs:data_01e1]
    mov es, ax
    mov ax, word [bp - 0x0002]
    mov word [cs:bx + 0x2], ax
    mov ax, word [cs:data_01e5]
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
@..dos_con_loc_40d4.l10:
    mov si, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep movsb
    dec word [bp - 0x0004]
    jne short @..dos_con_loc_40d4.l10
    mov ax, word [bp - 0x000c]
    mov dx, word [bp + 0x14]
    jmp near @..dos_con_loc_4370.l1
@..dos_con_loc_40d4.l11:
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
    add ax, word [cs:data_0391]
    cmp ax, word [cs:data_01ff]
    jbe short @..dos_con_loc_40d4.l12
    jmp near @..local.l188
@..dos_con_loc_40d4.l12:
    mov bx, word [cs:data_0391]
    mov word [bp - 0x000e], bx
    mov word [cs:data_0391], ax
    mov bx, 0x29b
    mov cx, 0x14
    xor dx, dx
@..dos_con_loc_40d4.l13:
    mov ax, word [cs:bx]
    or ax, ax
    je short @..dos_con_loc_40d4.l14
    inc dx
    add bx, byte 2
    loop @..dos_con_loc_40d4.l13
    jmp near @..local.l189
@..dos_con_loc_40d4.l14:
    mov word [bp - 0x000c], dx
    mov ax, word [cs:data_038f]
    inc ax
    mov word [cs:data_038f], ax
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
    mov ax, word [cs:data_0203]
    mov es, ax
    mov ax, word [bp - 0x000e]
    mov di, ax
    and di, strict word 0x3ff
    mov cl, 4
    shl di, cl
    mov cl, 0xa
    shr ax, cl
    mov word [cs:data_4540], ax
    call dos_file_loc_4442
    mov ax, word [cs:data_01e5]
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
@..local.l186:
    mov si, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep movsb
    test di, 0xc000
    je short @..local.l187
    inc word [cs:data_4540]
    mov ax, word [cs:data_4540]
    call dos_file_loc_4442
    and di, strict word 0x3fff
@..local.l187:
    dec word [bp - 0x0004]
    jne short @..local.l186
    mov ax, word [bp - 0x000c]
    mov dx, word [bp + 0x14]
    jmp near @..dos_con_loc_4370.l1
@..local.l188:
    mov ax, cs
    mov ds, ax
    mov dx, 0x4479
dos_con_loc_4370:
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of EMS.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2

@..dos_con_loc_4370.l1:
    pop si
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
@..local.l189:
    mov ax, cs
    mov ds, ax
    mov dx, 0x44b0
dos_con_loc_43a7:
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of EMS slots.', 0
    db 0x0a, 0x24

@..dos_con_loc_43a7.l1:
    mov ax, cs
    mov ds, ax
    mov dx, 0x44e1
dos_con_loc_43d8:
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of MAZE/PIC memory.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2, 0xeb, 0x8a, 0x8c, 0xc8, 0x8e, 0xd8, 0xba, 0x1e, 0x45, 0xb4
    db 0x09, 0xcd, 0x21, 0xb8, 0x01, 0x4c, 0xcd, 0x21, 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of MAZE slots.', 0
    db 0x0a, 0x24, 0x00, 0x00

dos_file_loc_4442:
    push ax
    mov ah, 0x44
    mov al, 0
    pop bx
    mov dx, word [cs:data_0201]
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
    mov ax, word [cs:data_01e5]
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
    mov bx, 0x10fb
    add bx, ax
    mov ax, word [cs:bx]
    add ax, word [cs:data_01e1]
    mov ds, ax
    mov ax, word [cs:data_01e5]
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
    dec word [cs:data_11cb]
    call loc_4c93
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
    mov word [cs:data_4540], ax
    call dos_file_loc_4442
    mov si, word [bp - 0x0002]
    and si, strict word 0x3ff
    mov cl, 4
    shl si, cl
    mov ax, word [cs:data_01e5]
    mov es, ax
    mov ax, word [cs:data_0203]
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
    inc word [cs:data_4540]
    mov ax, word [cs:data_4540]
    call dos_file_loc_4442
    and si, strict word 0x3fff
@..dos_read_file_4.l8:
    dec word [bp - 0x0004]
    jne short @..dos_read_file_4.l7
    cmp word [bp + 0x10], byte 0
    je short @..dos_read_file_4.l9
    mov cx, word [cs:data_038f]
    dec cx
    mov word [cs:data_038f], cx
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov bx, 0x29b
    add bx, ax
    mov ax, word [cs:bx]
    mov word [cs:bx], 0
    call leaf_loc_1355
    call loc_1392
@..dos_read_file_4.l9:
    pop si
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
dos_file_loc_45bd:
    push ds
    push es
    push si
    push di
    mov dx, word [cs:data_01e9]
    mov ds, dx
@..dos_file_loc_45bd.l1:
    xor dx, dx
    mov cx, 0x1000
    mov bx, word [bp - 0x0002]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    or ax, ax
    je short @..dos_file_loc_45bd.l3
    mov cx, ax
    push ax
    mov bx, word [bp - 0x0004]
    xor dx, dx
    mov ah, 0x40
    int 0x21 ; DOS write file (handle)
    jb short @..dos_file_loc_45bd.l2
    pop cx
    cmp cx, ax
    je short @..dos_file_loc_45bd.l1
@..dos_file_loc_45bd.l2:
    mov ax, cs
    mov ds, ax
    mov dx, 0x46fb
dos_con_loc_45f2:
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Error occurred writing to disk', 0
    db 0x0a, 0x24

@..dos_file_loc_45bd.l3:
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
    dec word [cs:data_038f]
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, 0x2c3
    add bx, ax
    mov ax, word [cs:bx]
    mov word [cs:bx], 0
    call leaf_loc_1355
    call loc_1392
    jmp near @..dos_read_file_5.l8
@..dos_read_file_5.l1:
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x10]
    or ax, ax
    je short @..dos_read_file_5.l2
    mov ax, word [bp + 0xe]
    mov word [bp - 0x0004], ax
    call dos_file_loc_45bd
    jmp near @..dos_read_file_5.l8
@..dos_read_file_5.l2:
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, 0x2c3
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    je short @..dos_read_file_5.l3
    jmp near @..local.l190
@..dos_read_file_5.l3:
    inc word [cs:data_038f]
    mov ax, word [cs:data_038f]
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x2eb
    add bx, ax
    mov word [bp - 0x0002], bx
    mov ax, word [cs:data_0391]
    mov word [cs:bx], ax
    mov ax, word [cs:data_01e9]
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
    mov di, word [cs:data_0391]
    mov bx, word [bp - 0x0002]
    mov word [cs:bx + 0x2], ax
    add word [cs:data_0391], ax
    mov ax, word [cs:data_0391]
    cmp ax, word [cs:data_01ff]
    jbe short @..dos_read_file_5.l4
    jmp near @..dos_con_loc_47af.l1
@..dos_read_file_5.l4:
    mov ax, di
    mov cl, 0xa
    shr ax, cl
    mov word [cs:data_4540], ax
    call dos_file_loc_4442
    and di, strict word 0x3ff
    mov cl, 4
    shl di, cl
    xor si, si
    mov ax, word [cs:data_01e9]
    mov ds, ax
    mov ax, word [cs:data_0203]
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
    inc word [cs:data_4540]
    mov ax, word [cs:data_4540]
    call dos_file_loc_4442
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
@..local.l190:
    mov ax, cs
    mov ds, ax
    mov dx, 0x48b8
dos_con_loc_47af:
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEMAZE().  Requested slot already in use.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2, 0xeb, 0xb0

@..dos_con_loc_47af.l1:
    mov ax, cs
    mov ds, ax
    mov dx, 0x4900
dos_con_loc_47f7:
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEMAZE().  Insufficient EMS.', 0
    db 0x0a, 0x24

loc_4825:
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
    je short @..dos_con_loc_47af.l2
    dec word [cs:data_038f]
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, 0x2d7
    add bx, ax
    mov ax, word [cs:bx]
    mov word [cs:bx], 0
    call leaf_loc_1355
    call loc_1392
    jmp near @..dos_con_loc_47af.l9
@..dos_con_loc_47af.l2:
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x10]
    or ax, ax
    je short @..dos_con_loc_47af.l3
    mov ax, word [bp + 0xe]
    mov word [bp - 0x0004], ax
    call dos_file_loc_45bd
    jmp near @..dos_con_loc_47af.l9
@..dos_con_loc_47af.l3:
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, 0x2d7
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    je short @..dos_con_loc_47af.l4
    jmp near @..local.l191
@..dos_con_loc_47af.l4:
    inc word [cs:data_038f]
    mov ax, word [cs:data_038f]
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x2eb
    add bx, ax
    mov word [bp - 0x0002], bx
    mov ax, word [cs:data_0391]
    mov word [cs:bx], ax
    mov ax, 0xfa0
    mov word [cs:bx + 0x2], ax
    mov di, word [cs:data_0391]
    add word [cs:data_0391], ax
    mov ax, word [cs:data_0391]
    cmp ax, word [cs:data_01ff]
    jbe short @..dos_con_loc_47af.l5
    jmp near @..dos_con_loc_493a.l1
@..dos_con_loc_47af.l5:
    mov ax, 0xfa00
    mov word [bp - 0x0006], ax
    mov ax, di
    mov cl, 0xa
    shr ax, cl
    mov word [cs:data_4540], ax
    call dos_file_loc_4442
    and di, strict word 0x3ff
    mov cl, 4
    shl di, cl
@..dos_con_loc_47af.l6:
    mov dx, di
    test dx, 0xc000
    je short @..dos_con_loc_47af.l7
    sub di, strict word 0x4000
    inc word [cs:data_4540]
    mov ax, word [cs:data_4540]
    call dos_file_loc_4442
@..dos_con_loc_47af.l7:
    mov ax, word [bp - 0x0006]
    or ax, ax
    je short @..dos_con_loc_47af.l9
    mov cx, 0x1000
    cmp ax, cx
    jae short @..dos_con_loc_47af.l8
    mov cx, ax
@..dos_con_loc_47af.l8:
    sub ax, cx
    mov word [bp - 0x0006], ax
    mov ax, word [cs:data_0203]
    mov es, ax
    mov ax, word [cs:data_01e9]
    mov ds, ax
    mov dx, 0
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    push cx
    int 0x21 ; DOS read file (handle)
    pop cx
    mov si, 0
    rep movsb
    jmp short @..dos_con_loc_47af.l6
@..dos_con_loc_47af.l9:
    pop si
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
@..local.l191:
    mov ax, cs
    mov ds, ax
    mov dx, 0x4a43
dos_con_loc_493a:
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHESCREEN().  Requested slot already in use.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2, 0xeb, 0xae

@..dos_con_loc_493a.l1:
    mov ax, cs
    mov ds, ax
    mov dx, 0x4a8d
dos_con_loc_4984:
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
    add bx, strict word 0x4ab4
    mov word [bp - 0x0002], bx
    mov ax, word [cs:bx]
    or ax, ax
    je short @..dos_con_loc_493a.l2
    jmp near @..local.l192
@..dos_con_loc_493a.l2:
    mov ax, word [cs:data_11cb]
    inc ax
    mov word [cs:data_11cb], ax
    mov bx, word [bp - 0x0002]
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x10fb
    add bx, ax
    mov word [bp - 0x000a], bx
    mov ax, word [cs:data_11cd]
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
    mov ax, word [cs:data_01e9]
    mov ds, ax
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov cx, 2
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    xor bx, bx
    mov ax, word [bx]
    or ax, ax
    je short @..dos_con_loc_493a.l3
    jmp near 0x4b52
@..dos_con_loc_493a.l3:
    mov bx, word [bp - 0x0002]
    mov ax, word [bp - 0x0004]
    sub ax, strict word 2
    mov word [cs:bx + 0x2], ax
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov bx, word [bp - 0x000a]
    mov word [cs:bx + 0x2], ax
    add ax, word [cs:data_11cd]
    cmp ax, 0x4180
    jae short 0x4b16
    mov word [cs:data_11cd], ax
    mov ax, word [cs:bx]
    add ax, word [cs:data_01e1]
    mov ds, ax
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov cx, word [bp - 0x0004]
    sub cx, byte 2
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    xor ax, ax
@..dos_con_loc_493a.l4:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
@..local.l192:
    mov ax, cs
    mov ds, ax
    mov dx, 0x4bea
dos_con_loc_4ae1:
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
    je short @..dos_con_loc_4ae1.l2
    popaw
    insb
    jb short 0x4b6f
    popaw
    db 0x64, 0x79, 0x20 ; jns @..dos_con_loc_4ae1.l3
    jne short 0x4b83
    db 0x65, 0x64, 0x2e, 0x00, 0x0a ; add byte [cs:bp + si], cl
    and al, 0x8c
    enter 0xd88e, 0xffba
    es dec sp
dos_con_loc_4b1d:
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
@..dos_con_loc_4ae1.l2:
    or ax, 0x70a
    dec cx
    outsb
    and byte [si + 0x4f], cl
@..dos_con_loc_4ae1.l3:
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
    je short @..dos_con_loc_4ae1.l5
    db 0x65, 0x6e ; outsb
    outsw
    jne short @..dos_con_loc_4ae1.l9
    push 0x6d20
    db 0x65, 0x6d ; insw
    outsw
    jb short 0x4bc7
    add byte [cs:bp + si], cl
    and al, 0x8b
    enter 0xa12e, 0xffe9
    add word [bp + 0x33d8], cx
    ror byte [bp + di + 0xc5e], cl
    mov ah, 0x3f
@..dos_con_loc_4ae1.l5:
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
    add ax, word [cs:data_11cd]
    cmp ax, 0x4180
    jb short @..dos_con_loc_4ae1.l8
    jmp near 0x4b16
@..dos_con_loc_4ae1.l8:
    mov word [cs:data_11cd], ax
    mov ax, word [cs:bx]
    add ax, word [cs:data_01e1]
    mov es, ax
    call dos_file_loc_4bb2
@..dos_con_loc_4ae1.l9:
    xor ax, ax
    jmp near @..dos_con_loc_493a.l4
dos_file_loc_4bb2:
    mov word [bp - 0x0002], 8
    lodsb
@..dos_con_loc_4ae1.l10:
    cmp word [bp - 0x0004], byte 0
    je short @..dos_con_loc_4ae1.l12
    call dos_file_loc_4bcb
    mov byte [es:di], bl
    inc di
    dec word [bp - 0x0004]
    jmp short @..dos_con_loc_4ae1.l10
@..dos_con_loc_4ae1.l12:
    ret
dos_file_loc_4bcb:
    mov cx, word [bp - 0x0002]
    xor bx, bx
@..dos_file_loc_4bcb.l1:
    shl al, 1
    jb short @..dos_file_loc_4bcb.l4
    test word [bx], 0x8000
    jne short @..dos_file_loc_4bcb.l2
    mov bx, word [bx]
    jmp short @..dos_file_loc_4bcb.l6
@..dos_file_loc_4bcb.l2:
    mov bx, word [bx]
    neg bx
    shl bx, 1
    shl bx, 1
@..dos_file_loc_4bcb.l3:
    loop @..dos_file_loc_4bcb.l1
    mov cx, 8
    lodsb
    cmp si, strict word 0x1400
    jb short @..dos_file_loc_4bcb.l1
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
    jmp short @..dos_file_loc_4bcb.l1
@..dos_file_loc_4bcb.l4:
    test word [bx + 0x2], 0x8000
    jne short @..dos_file_loc_4bcb.l5
    mov bx, word [bx + 0x2]
    jmp short @..dos_file_loc_4bcb.l6
@..dos_file_loc_4bcb.l5:
    mov bx, word [bx + 0x2]
    neg bx
    shl bx, 1
    shl bx, 1
    jmp short @..dos_file_loc_4bcb.l3
@..dos_file_loc_4bcb.l6:
    dec cx
    jne short @..dos_file_loc_4bcb.l7
    mov cx, 8
    lodsb
    cmp si, strict word 0x1400
    jb short @..dos_file_loc_4bcb.l7
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
@..dos_file_loc_4bcb.l7:
    mov word [bp - 0x0002], cx
    ret
loc_4c4c:
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
    jb short @..local.l193
    jmp near @..local.l195
@..local.l193:
    shl ax, 1
    shl ax, 1
    mov bx, 0x4ab4
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short @..local.l194
    jmp near @..local.l195
@..local.l194:
    mov word [cs:bx], 0
    mov cx, word [cs:data_11cb]
    dec cx
    mov word [cs:data_11cb], cx
    call loc_4c93
@..local.l195:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
loc_4c93:
    call leaf_loc_4ca9
    call dos_con_loc_4cbe
    call dos_con_loc_4ce8
    call dos_con_loc_4cd3
    call dos_con_loc_4cfd
    call dos_con_loc_4d13
    call leaf_loc_4d55
    ret
leaf_loc_4ca9:
    push ax
    mov bx, 0x10e7
    mov cx, 0xa
@..leaf_loc_4ca9.l1:
    cmp ax, word [cs:bx]
    jae short @..leaf_loc_4ca9.l2
    dec word [cs:bx]
@..leaf_loc_4ca9.l2:
    inc bx
    inc bx
    loop @..leaf_loc_4ca9.l1
    pop ax
    ret
dos_con_loc_4cbe:
    push ax
    mov bx, 0x229
    mov cx, 0x14
@..dos_con_loc_4cbe.l1:
    cmp ax, word [cs:bx]
    jae short @..dos_con_loc_4cbe.l2
    dec word [cs:bx]
@..dos_con_loc_4cbe.l2:
    inc bx
    inc bx
    loop @..dos_con_loc_4cbe.l1
    pop ax
    ret
dos_con_loc_4cd3:
    push ax
    mov bx, 0x25b
    mov cx, 0x10
@..dos_con_loc_4cd3.l1:
    cmp ax, word [cs:bx]
    jae short @..dos_con_loc_4cd3.l2
    dec word [cs:bx]
@..dos_con_loc_4cd3.l2:
    inc bx
    inc bx
    loop @..dos_con_loc_4cd3.l1
    pop ax
    ret
dos_con_loc_4ce8:
    push ax
    mov bx, 0x251
    mov cx, 5
@..dos_con_loc_4ce8.l1:
    cmp ax, word [cs:bx]
    jae short @..dos_con_loc_4ce8.l2
    dec word [cs:bx]
@..dos_con_loc_4ce8.l2:
    inc bx
    inc bx
    loop @..dos_con_loc_4ce8.l1
    pop ax
    ret
dos_con_loc_4cfd:
    push ax
    mov bx, 0x4ab4
    mov cx, 0x14
@..dos_con_loc_4cfd.l1:
    cmp ax, word [cs:bx]
    jae short @..dos_con_loc_4cfd.l2
    dec word [cs:bx]
@..dos_con_loc_4cfd.l2:
    add bx, byte 4
    loop @..dos_con_loc_4cfd.l1
    pop ax
    ret
dos_con_loc_4d13:
    push ax
    mov bx, 0x4f8b
    mov cx, 5
@..dos_con_loc_4d13.l1:
    cmp ax, word [cs:bx]
    jae short @..dos_con_loc_4d13.l2
    dec word [cs:bx]
    push ds
    push ax
    push bx
    push cx
    push dx
    mov ax, cs
    mov ds, ax
    mov dx, 0x4e3e
    mov ah, 9
    int 0x21 ; DOS string output
    pop dx
    pop cx
    pop bx
    pop ax
    pop ds
@..dos_con_loc_4d13.l2:
    add bx, byte 4
    loop @..dos_con_loc_4d13.l1
    pop ax
    ret

    db 0x0d, 0x0a, 0x07
    db 'Score slot moved.', 0
    db 0x0a, 0x24

leaf_loc_4d55:
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x10fb
    add bx, ax
    mov word [bp - 0x0004], bx
    mov ax, word [cs:bx + 0x2]
    sub word [cs:data_11cd], ax
    mov word [bp - 0x0006], ax
@..leaf_loc_4d55.l1:
    mov bx, word [bp - 0x0004]
    mov dx, word [cs:bx]
    add dx, word [cs:data_01e1]
    mov es, dx
    mov dx, word [cs:bx + 0x4]
    add dx, word [cs:data_01e1]
    mov ds, dx
    mov cx, word [cs:bx + 0x6]
    or cx, cx
    je short @..leaf_loc_4d55.l3
@..leaf_loc_4d55.l2:
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
    loop @..leaf_loc_4d55.l2
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
    jmp short @..leaf_loc_4d55.l1
@..leaf_loc_4d55.l3:
    mov bx, word [bp - 0x0004]
    xor ax, ax
    mov word [cs:bx], ax
    mov word [cs:bx + 0x2], ax
    ret
loc_4dd9:
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
    jb short @..local.l196
    jmp near @..local.l198
@..local.l196:
    shl ax, 1
    shl ax, 1
    mov bx, 0x4ab4
    add bx, ax
    mov ax, word [cs:bx + 0x2]
    mov word [bp - 0x0002], ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short @..local.l197
    jmp near @..local.l198
@..local.l197:
    dec ax
    mov word [bp - 0x0004], ax
    push word [bp + 0x12]
    push word [bp + 0x10]
    push word [bp + 0xe]
    mov ax, word [bp - 0x0002]
    push ax
    xor ax, ax
    push ax
    mov bx, 0x10fb
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    add bx, ax
    mov ax, word [cs:bx]
    add ax, word [cs:data_01e1]
    push ax
    xor ax, ax
    push ax
    call far [cs:data_021a]
    add sp, byte 0x0e
@..local.l198:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
loc_4e48:
    push bp
    mov bp, sp
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    push word [bp + 0xc]
    call far [cs:data_0222]
    pop cx
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
loc_4e64:
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
    call far [cs:data_021a]
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
    add bx, strict word 0x4f8b
    mov word [bp - 0x0002], bx
    mov ax, word [cs:bx]
    or ax, ax
    je short @..dos_read_file_8.l1
    jmp near 0x4fc4
@..dos_read_file_8.l1:
    mov bx, word [bp + 0x12]
    shl bx, 1
    add bx, strict word 0x4fa3
    mov ax, word [bp + 0x10]
    mov word [cs:bx], ax
    mov ax, word [cs:data_11cb]
    inc ax
    mov word [cs:data_11cb], ax
    mov bx, word [bp - 0x0002]
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x10fb
    add bx, ax
    mov word [bp - 0x000a], bx
    mov ax, word [cs:data_11cd]
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
    add ax, word [cs:data_11cd]
    cmp ax, 0x4180
    jb short @..dos_read_file_8.l3
    jmp near 0x5000
@..dos_read_file_8.l3:
    mov word [cs:data_11cd], ax
    mov ax, word [cs:bx]
    add ax, word [cs:data_01e1]
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
    mov ax, cs
    mov ds, ax
    mov dx, 0x50d4
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'In LOAD_SCORE() ... slot already used.', 0
    db 0x0a, 0x24, 0x8c, 0xc8, 0x8e, 0xd8, 0xba, 0x10, 0x51, 0xb4, 0x09, 0xcd, 0x21, 0xb8, 0x01, 0x4c
    db 0xcd, 0x21, 0x0d, 0x0a, 0x07
    db 'In LOAD_SCORE() ... not enough memory.', 0
    db 0x0a, 0x24

loc_503c:
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
    add bx, strict word 0x4fa3
    mov ax, word [cs:bx]
    mov word [bp - 0x0008], ax
    mov bx, word [bp + 0xc]
    shl bx, 1
    shl bx, 1
    add bx, strict word 0x4f8b
    mov word [bp - 0x0002], bx
    mov ax, word [cs:bx + 0x2]
    mov word [bp - 0x0006], ax
    mov ax, word [cs:bx]
    or ax, ax
    je short @..dos_con_loc_4fca.l3
    dec ax
    shl ax, 1
    shl ax, 1
    mov bx, 0x10fb
    add bx, ax
    mov word [bp - 0x0004], bx
    push word [bp - 0x0008]
    xor ax, ax
    cmp word [bp - 0x0006], byte 0
    je short @..dos_con_loc_4fca.l2
    mov ax, word [cs:bx]
    add ax, word [cs:data_01e1]
@..dos_con_loc_4fca.l2:
    push ax
    xor ax, ax
    push ax
    call far [cs:data_020e]
    add sp, byte 6
    push word [bp + 0x10]
    push word [bp + 0xe]
    call far [cs:data_0216]
    add sp, byte 4
    push word [bp + 0x12]
    mov bx, word [bp - 0x0004]
    mov ax, word [cs:bx]
    add ax, word [cs:data_01e1]
    push ax
    push word [bp - 0x0006]
    call far [cs:data_0206]
    add sp, byte 6
@..dos_con_loc_4fca.l3:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
loc_50d1:
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
    jb short @..local.l200
    jmp near @..local.l202
@..local.l200:
    shl ax, 1
    shl ax, 1
    mov bx, 0x4f8b
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short @..local.l201
    jmp near @..local.l202
@..local.l201:
    mov word [cs:bx], 0
    mov cx, word [cs:data_11cb]
    dec cx
    mov word [cs:data_11cb], cx
    call loc_4c93
@..local.l202:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
loc_5118:
    push bp
    mov bp, sp
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    call far [cs:data_021e]
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
loc_5130:
    push bp
    mov bp, sp
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    call far [cs:data_0212]
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
loc_5148:
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
    call far [cs:data_0216]
    add sp, byte 4
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
    db 0x00
