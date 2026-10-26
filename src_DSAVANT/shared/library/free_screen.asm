; auto-generated
free_screen:
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
    jb short @..free_screen.l1
    jmp near @..free_screen.l3
@..free_screen.l1:
    shl ax, 1
    mov word [bp - 8], ax
    mov bx, screen_maze_slots - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short @..free_screen.l2
    jmp near @..free_screen.l3
@..free_screen.l2:
    mov word [cs:bx], 0
    mov cx, word [cs:maze_block_count - IMAGE_BASE]
    dec cx
    mov word [cs:maze_block_count - IMAGE_BASE], cx
    call loc_PPJL
@..free_screen.l3:
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
