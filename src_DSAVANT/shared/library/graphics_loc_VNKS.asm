; auto-generated
graphics_loc_VNKS:
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
    mov ax, word [cs:cseg_0197 - IMAGE_BASE]
    mov cx, 0x140
    mul cx
    add ax, word [cs:cseg_0195 - IMAGE_BASE]
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
    add word [cs:cseg_0195 - IMAGE_BASE], ax
    mov word [bp - 0x000c], ax
    xor bx, bx
    mov al, byte [bx + 0x7]
    cbw
    add word [cs:cseg_0195 - IMAGE_BASE], ax
    mov al, byte [bx + 0x2]
    test al, 1
    je short @..graphics_loc_VNKS.l1
    jmp near @..graphics_loc_VNKS.l17
@..graphics_loc_VNKS.l1:
    mov ax, word [cs:cseg_0199 - IMAGE_BASE]
    or ax, ax
    jne short @..graphics_loc_VNKS.l2
    mov al, byte [bx + 0x6]
    test al, 2
    jne short @..graphics_loc_VNKS.l9
@..graphics_loc_VNKS.l2:
    xor ax, ax
    mov al, byte [bx + 0x3]
    mov bx, word [bp - 0x000c]
    add bx, byte 7
    mov cl, 3
    shr bx, cl
    sub ax, bx
    mov word [bp - 0x000a], ax
    mov bx, word [cs:cseg_0191 - IMAGE_BASE]
    mov dx, word [cs:cseg_0193 - IMAGE_BASE]
    mov dh, bl
    mov ax, word [cs:graphics_loc_VNKS.screen_buf_seg1 - IMAGE_BASE]
    mov es, ax
@..graphics_loc_VNKS.l3:
    mov cx, word [bp - 0x000c]
@..graphics_loc_VNKS.l4:
    mov word [bp - 0x0008], cx
    lodsb
    cmp cx, byte 9
    jb short @..graphics_loc_VNKS.l5
    mov cx, 8
@..graphics_loc_VNKS.l5:
    sub word [bp - 0x0008], cx
@..graphics_loc_VNKS.l6:
    shl al, 1
    jb short @..graphics_loc_VNKS.l7
    mov byte [es:di], dh
    inc di
    jmp short @..graphics_loc_VNKS.l8
@..graphics_loc_VNKS.l7:
    mov byte [es:di], dl
    inc di
@..graphics_loc_VNKS.l8:
    loop @..graphics_loc_VNKS.l6
    mov cx, word [bp - 0x0008]
    or cx, cx
    jne short @..graphics_loc_VNKS.l4
    add si, word [bp - 0x000a]
    add word [bp - 0x0006], strict word 0x140
    mov di, word [bp - 0x0006]
    dec word [bp - 0x0004]
    jne short @..graphics_loc_VNKS.l3
    jmp near @..graphics_loc_VNKS.l23
@..graphics_loc_VNKS.l9:
    mov ax, word [bp - 0x000a]
    mov cx, word [bx + 0xe]
    mul cx
    add ax, word [bx + 0xc]
    mov bx, ax
    mov ax, word [cs:cseg_0191 - IMAGE_BASE]
    mov dx, word [cs:cseg_0193 - IMAGE_BASE]
    mov dh, al
    mov ax, word [cs:graphics_loc_VNKS.screen_buf_seg1 - IMAGE_BASE]
    mov es, ax
@..graphics_loc_VNKS.l10:
    mov cx, word [bp - 0x0002]
@..graphics_loc_VNKS.l11:
    mov word [bp - 0x0008], cx
    lodsb
    mov ah, byte [bx]
    inc bx
    cmp cx, byte 9
    jb short @..graphics_loc_VNKS.l12
    mov cx, 8
@..graphics_loc_VNKS.l12:
    sub word [bp - 0x0008], cx
@..graphics_loc_VNKS.l13:
    shl ah, 1
    jae short @..graphics_loc_VNKS.l15
    shl al, 1
    jb short @..graphics_loc_VNKS.l14
    mov byte [es:di], dh
    inc di
    jmp short @..graphics_loc_VNKS.l16
@..graphics_loc_VNKS.l14:
    mov byte [es:di], dl
    inc di
    jmp short @..graphics_loc_VNKS.l16
@..graphics_loc_VNKS.l15:
    shl al, 1
    inc di
@..graphics_loc_VNKS.l16:
    loop @..graphics_loc_VNKS.l13
    mov cx, word [bp - 0x0008]
    or cx, cx
    jne short @..graphics_loc_VNKS.l11
    add word [bp - 0x0006], strict word 0x140
    mov di, word [bp - 0x0006]
    dec word [bp - 0x0004]
    jne short @..graphics_loc_VNKS.l10
    jmp near @..graphics_loc_VNKS.l23
@..graphics_loc_VNKS.l17:
    mov al, byte [bx + 0x6]
    test al, 2
    jne short @..graphics_loc_VNKS.l19
    mov ax, word [bp - 0x0002]
    sub ax, word [bp - 0x000c]
    mov word [bp - 0x000a], ax
    mov ax, word [cs:graphics_loc_VNKS.screen_buf_seg1 - IMAGE_BASE]
    mov es, ax
@..graphics_loc_VNKS.l18:
    mov cx, word [bp - 0x000c]
    rep movsb
    add si, word [bp - 0x000a]
    add word [bp - 0x0006], strict word 0x140
    mov di, word [bp - 0x0006]
    dec word [bp - 0x0004]
    jne short @..graphics_loc_VNKS.l18
    jmp near @..graphics_loc_VNKS.l23
@..graphics_loc_VNKS.l19:
    mov ax, word [bp - 0x0002]
    sub ax, word [bp - 0x000c]
    mov word [bp - 0x000a], ax
    mov ax, word [cs:graphics_loc_VNKS.screen_buf_seg1 - IMAGE_BASE]
    mov es, ax
@..graphics_loc_VNKS.l20:
    mov cx, word [bp - 0x000c]
@..graphics_loc_VNKS.l21:
    mov al, byte [si]
    cmp al, 0xff
    je short @..graphics_loc_VNKS.l22
    mov byte [es:di], al
@..graphics_loc_VNKS.l22:
    inc si
    inc di
    loop @..graphics_loc_VNKS.l21
    add si, word [bp - 0x000a]
    add word [bp - 0x0006], strict word 0x140
    mov di, word [bp - 0x0006]
    dec word [bp - 0x0004]
    jne short @..graphics_loc_VNKS.l20
@..graphics_loc_VNKS.l23:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
