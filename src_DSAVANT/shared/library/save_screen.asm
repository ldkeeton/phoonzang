; auto-generated
save_screen:
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
    jne short @..save_screen.l1
    jmp near @..save_screen.l4
@..save_screen.l1:
    neg ax
    mov bx, screen_maze_slots - IMAGE_BASE
    shl ax, 1
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    je short @..save_screen.l2
    jmp near save_screen.dos_con_loc1
@..save_screen.l2:
    mov ax, word [cs:maze_block_count - IMAGE_BASE]
    inc ax
    mov word [cs:maze_block_count - IMAGE_BASE], ax
    mov word [cs:bx], ax
    mov cl, 2
    dec ax
    shl ax, cl
    mov bx, maze_blocks - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:maze_paras_used - IMAGE_BASE]
    mov word [cs:bx], ax
    mov cx, 0xfa0
    mov word [cs:bx + 2], cx
    mov dx, word [cs:maze_paras_used - IMAGE_BASE]
    add dx, cx
    mov word [cs:maze_paras_used - IMAGE_BASE], dx
    cmp dx, strict word 0x4180
    jb short @..save_screen.l3
    jmp near save_screen.dos_con_loc2
@..save_screen.l3:
    mov ax, word [bp + 0xc]
    neg ax
    shl ax, 1
    mov bx, screen_maze_slots - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:bx]
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, maze_blocks - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:bx]
    add ax, word [cs:maze_mem_seg - IMAGE_BASE]
    mov es, ax
    mov ax, word [cs:screen_buf_seg - IMAGE_BASE]
    mov ds, ax
    xor di, di
    xor si, si
    mov cx, 0xfa00
    rep movsb
    jmp short @..save_screen.l5
@..save_screen.l4:
    mov ax, word [cs:screen_buf_seg - IMAGE_BASE]
    mov ds, ax
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov cx, 0xfa00
    mov ah, 0x40
    int 0x21 ; DOS write file (handle)
@..save_screen.l5:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
