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
    jne short .forward1
draw_maze_piece.loc1:
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

draw_maze_piece.forward1:
    dec bx
    mov cl, 2
    shl bx, cl
    add bx, maze_blocks - IMAGE_BASE
    mov ax, word [cs:bx]
    mov word [bp - 2], ax
    mov ax, word [bp + 0x12]
    cmp ax, strict word 0xffff
    je short draw_maze_piece.forward2
    jmp near draw_maze_piece.forward8
draw_maze_piece.forward2:
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
    jne short draw_maze_piece.forward3
    jmp near draw_maze_piece.forward13
draw_maze_piece.forward3:
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
draw_maze_piece.back1:
    push cx
    mov cx, word [bp - 4]
    push si
    push ax
    push di
    xchg si, ax
    xor ah, ah
    cmp word [bp + 0x10], byte 0
    je short draw_maze_piece.forward6
    cmp word [bp + 0x10], byte 2
    je short draw_maze_piece.back4
    cmp word [bp + 0x10], byte 3
    je short draw_maze_piece.back3
draw_maze_piece.back2:
    lodsb
    or al, byte [es:di]
    stosb
    loop draw_maze_piece.back2
    jmp short draw_maze_piece.forward7
draw_maze_piece.back3:
    lodsb
    cmp al, 0xff
    je short draw_maze_piece.forward4
    mov byte [es:di], ah
draw_maze_piece.forward4:
    inc di
    loop draw_maze_piece.back3
    jmp short draw_maze_piece.forward7
draw_maze_piece.back4:
    lodsb
    cmp al, 0xff
    je short draw_maze_piece.forward5
    mov byte [es:di], al
draw_maze_piece.forward5:
    inc di
    loop draw_maze_piece.back4
    jmp short draw_maze_piece.forward7
draw_maze_piece.forward6:
    rep movsb
draw_maze_piece.forward7:
    pop di
    add di, strict word 0x140
    pop ax
    mov dx, word [bp - 6]
    add ax, dx
    pop si
    pop cx
    loop draw_maze_piece.back1
    jmp near draw_maze_piece.forward13
draw_maze_piece.forward8:
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
    jne short draw_maze_piece.forward9
    jmp near draw_maze_piece.forward13
draw_maze_piece.forward9:
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
draw_maze_piece.back5:
    push cx
    mov cx, word [bp - 4]
    push si
    push ax
    push di
    xchg si, ax
    xor ah, ah
    cmp word [bp + 0x10], byte 0
    je short draw_maze_piece.back9
    cmp word [bp + 0x10], byte 2
    je short draw_maze_piece.back8
    cmp word [bp + 0x10], byte 3
    je short draw_maze_piece.back7
draw_maze_piece.back6:
    mov al, byte [si]
    dec si
    or al, byte [es:di]
    stosb
    loop draw_maze_piece.back6
    jmp short draw_maze_piece.forward12
draw_maze_piece.back7:
    mov al, byte [si]
    dec si
    cmp al, 0xff
    je short draw_maze_piece.forward10
    mov byte [es:di], ah
draw_maze_piece.forward10:
    inc di
    loop draw_maze_piece.back7
    jmp short draw_maze_piece.forward12
draw_maze_piece.back8:
    mov al, byte [si]
    dec si
    cmp al, 0xff
    je short draw_maze_piece.forward11
    mov byte [es:di], al
draw_maze_piece.forward11:
    inc di
    loop draw_maze_piece.back8
    jmp short draw_maze_piece.forward12
draw_maze_piece.back9:
    mov al, byte [si]
    dec si
    stosb
    loop draw_maze_piece.back9
draw_maze_piece.forward12:
    pop di
    add di, strict word 0x140
    pop ax
    mov dx, word [bp - 6]
    add ax, dx
    pop si
    pop cx
    loop draw_maze_piece.back5
draw_maze_piece.forward13:
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
