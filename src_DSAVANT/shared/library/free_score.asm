; auto-generated
free_score:
    push bp
    mov bp, sp
    sub sp, byte 0xa
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    cmp ax, strict word 5
    jb short @..free_score.l1
    jmp near @..free_score.l3
@..free_score.l1:
    shl ax, 1
    shl ax, 1
    mov bx, score_slots - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short @..free_score.l2
    jmp near @..free_score.l3
@..free_score.l2:
    mov word [cs:bx], 0
    mov cx, word [cs:maze_block_count - IMAGE_BASE]
    dec cx
    mov word [cs:maze_block_count - IMAGE_BASE], cx
    call loc_PPJL
@..free_score.l3:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
