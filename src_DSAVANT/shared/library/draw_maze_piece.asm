; auto-generated
draw_maze_piece:
    push bp
    mov bp, sp
    sub sp, byte 0xe
    push ds
    push es
    push di
    push si
    mov ax, ds
    mov es, ax
    cld
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov word [bp - 4], ax
    mov bx, maze_map_slots - IMAGE_BASE
    add bx, ax
    mov bx, word [cs:bx]
    or bx, bx
    jne short @..draw_maze_piece.l1
draw_maze_piece.dos_con_loc1:
    mov ax, cs
    mov ds, ax
    mov dx, draw_maze_piece.cseg1 - IMAGE_BASE
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
draw_maze_piece.cseg1:

    db 0x0d, 0x0a, 0x07
    db 'MAZE SET ERROR.', 0
    db 0x0a, 0x24

@..draw_maze_piece.l1:
    dec bx
    mov cl, 2
    shl bx, cl
    add bx, maze_blocks - IMAGE_BASE
    mov ax, word [cs:bx]
    mov word [bp - 2], ax
    mov ax, word [bp + 0x12]
    cmp ax, strict word 0xffff
    je short @..draw_maze_piece.l2
    jmp near @..draw_maze_piece.l12
@..draw_maze_piece.l2:
    mov bx, word [bp + 0xe]
    mov ax, 5
    mul bx
    mov bx, word [bp - 4]
    add bx, strict word 0x27d
    add ax, word [cs:bx]
    mov si, ax
    mov ax, word [cs:screen_buf_seg - IMAGE_BASE]
    mov es, ax
    mov ax, word [cs:maze_mem_seg - IMAGE_BASE]
    add ax, word [bp - 2]
    mov ds, ax
    xor ah, ah
    mov al, byte [si + 4]
    or ax, ax
    jne short @..draw_maze_piece.l3
    jmp near @..draw_maze_piece.l22
@..draw_maze_piece.l3:
    mov cl, 3
    shl ax, cl
    mov word [bp - 4], ax
    mov al, byte [si + 1]
    cbw
    mov bl, byte [si + 3]
    xor bh, bh
    add ax, bx
    mov cl, 3
    shl ax, cl
    mov di, ax
    mov al, byte [si + 2]
    mov cx, 0x140
    mul cx
    add di, ax
    mov al, byte [si]
    mov bl, 6
    mul bl
    add ax, word [cs:maze_piece_table - IMAGE_BASE]
    mov bx, ax
    xor ax, ax
    mov al, byte [bx + 4]
    mov cl, 3
    shl ax, cl
    mov word [bp - 6], ax
    mov ax, word [bx + 2]
    mov dl, byte [si + 3]
    xor dh, dh
    shl dx, 1
    shl dx, 1
    shl dx, 1
    add ax, dx
    xor cx, cx
    mov cl, byte [bx + 5]
    mov dx, ds
    add dx, word [bx]
    mov ds, dx
@..draw_maze_piece.l4:
    push cx
    mov cx, word [bp - 4]
    push si
    push ax
    push di
    xchg si, ax
    xor ah, ah
    cmp word [bp + 0x10], byte 0
    je short @..draw_maze_piece.l10
    cmp word [bp + 0x10], byte 2
    je short @..draw_maze_piece.l8
    cmp word [bp + 0x10], byte 3
    je short @..draw_maze_piece.l6
@..draw_maze_piece.l5:
    lodsb
    or al, byte [es:di]
    stosb
    loop @..draw_maze_piece.l5
    jmp short @..draw_maze_piece.l11
@..draw_maze_piece.l6:
    lodsb
    cmp al, 0xff
    je short @..draw_maze_piece.l7
    mov byte [es:di], ah
@..draw_maze_piece.l7:
    inc di
    loop @..draw_maze_piece.l6
    jmp short @..draw_maze_piece.l11
@..draw_maze_piece.l8:
    lodsb
    cmp al, 0xff
    je short @..draw_maze_piece.l9
    mov byte [es:di], al
@..draw_maze_piece.l9:
    inc di
    loop @..draw_maze_piece.l8
    jmp short @..draw_maze_piece.l11
@..draw_maze_piece.l10:
    rep movsb
@..draw_maze_piece.l11:
    pop di
    add di, strict word 0x140
    pop ax
    mov dx, word [bp - 6]
    add ax, dx
    pop si
    pop cx
    loop @..draw_maze_piece.l4
    jmp near @..draw_maze_piece.l22
@..draw_maze_piece.l12:
    mov bx, word [bp + 0xe]
    mov ax, 5
    mul bx
    mov bx, word [bp - 4]
    add bx, strict word 0x27d
    add ax, word [cs:bx]
    mov si, ax
    mov ax, word [cs:screen_buf_seg - IMAGE_BASE]
    mov es, ax
    mov ax, word [cs:maze_mem_seg - IMAGE_BASE]
    add ax, word [bp - 2]
    mov ds, ax
    mov al, byte [si]
    mov bl, 6
    mul bl
    add ax, word [cs:maze_piece_table - IMAGE_BASE]
    mov word [bp - 2], ax
    mov ax, word [bp + 0x12]
    mov bx, 5
    mul bx
    mov bx, word [bp - 4]
    add bx, strict word 0x27d
    add ax, word [cs:bx]
    mov si, ax
    xor ah, ah
    mov al, byte [si + 4]
    or ax, ax
    jne short @..draw_maze_piece.l13
    jmp near @..draw_maze_piece.l22
@..draw_maze_piece.l13:
    mov cl, 3
    shl ax, cl
    mov word [bp - 4], ax
    mov al, byte [si + 1]
    cbw
    mov bl, byte [si + 3]
    xor bh, bh
    add ax, bx
    mov cl, 3
    shl ax, cl
    mov di, ax
    mov al, byte [si + 2]
    mov cx, 0x140
    mul cx
    add di, ax
    mov bx, word [bp - 2]
    xor ax, ax
    mov al, byte [bx + 4]
    mov cl, 3
    shl ax, cl
    mov word [bp - 6], ax
    mov cl, 3
    mov ax, word [bx + 2]
    xor dh, dh
    mov dl, byte [bx + 4]
    shl dx, cl
    dec dx
    add ax, dx
    xor dx, dx
    mov dl, byte [si + 3]
    shl dx, cl
    sub ax, dx
    xor cx, cx
    mov cl, byte [bx + 5]
    mov dx, ds
    add dx, word [bx]
    mov ds, dx
@..draw_maze_piece.l14:
    push cx
    mov cx, word [bp - 4]
    push si
    push ax
    push di
    xchg si, ax
    xor ah, ah
    cmp word [bp + 0x10], byte 0
    je short @..draw_maze_piece.l20
    cmp word [bp + 0x10], byte 2
    je short @..draw_maze_piece.l18
    cmp word [bp + 0x10], byte 3
    je short @..draw_maze_piece.l16
@..draw_maze_piece.l15:
    mov al, byte [si]
    dec si
    or al, byte [es:di]
    stosb
    loop @..draw_maze_piece.l15
    jmp short @..draw_maze_piece.l21
@..draw_maze_piece.l16:
    mov al, byte [si]
    dec si
    cmp al, 0xff
    je short @..draw_maze_piece.l17
    mov byte [es:di], ah
@..draw_maze_piece.l17:
    inc di
    loop @..draw_maze_piece.l16
    jmp short @..draw_maze_piece.l21
@..draw_maze_piece.l18:
    mov al, byte [si]
    dec si
    cmp al, 0xff
    je short @..draw_maze_piece.l19
    mov byte [es:di], al
@..draw_maze_piece.l19:
    inc di
    loop @..draw_maze_piece.l18
    jmp short @..draw_maze_piece.l21
@..draw_maze_piece.l20:
    mov al, byte [si]
    dec si
    stosb
    loop @..draw_maze_piece.l20
@..draw_maze_piece.l21:
    pop di
    add di, strict word 0x140
    pop ax
    mov dx, word [bp - 6]
    add ax, dx
    pop si
    pop cx
    loop @..draw_maze_piece.l14
@..draw_maze_piece.l22:
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
