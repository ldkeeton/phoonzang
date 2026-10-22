; auto-generated
free_maze:
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
    jb short @..free_maze.l1
    jmp near @..free_maze.l3
@..free_maze.l1:
    shl ax, 1
    mov word [bp - 0x0008], ax
    mov bx, maze_map_slots - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short @..free_maze.l2
    jmp near @..free_maze.l3
@..free_maze.l2:
    mov word [cs:bx], 0
    mov cx, word [cs:maze_block_count - IMAGE_BASE]
    dec cx
    mov word [cs:maze_block_count - IMAGE_BASE], cx
    call loc_PPJL
@..free_maze.l3:
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
