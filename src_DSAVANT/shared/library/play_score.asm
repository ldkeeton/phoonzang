; auto-generated
play_score:
    push bp
    mov bp, sp
    sub sp, byte 0xa
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov bx, word [bp + 0xc]
    shl bx, 1
    add bx, score_info - IMAGE_BASE
    mov ax, word [cs:bx]
    mov word [bp - 8], ax
    mov bx, word [bp + 0xc]
    shl bx, 1
    shl bx, 1
    add bx, score_slots - IMAGE_BASE
    mov word [bp - 2], bx
    mov ax, word [cs:bx + 2]
    mov word [bp - 6], ax
    mov ax, word [cs:bx]
    or ax, ax
    je short @..play_score.l2
    dec ax
    shl ax, 1
    shl ax, 1
    mov bx, maze_blocks - IMAGE_BASE
    add bx, ax
    mov word [bp - 4], bx
    push word [bp - 8]
    xor ax, ax
    cmp word [bp - 6], byte 0
    je short @..play_score.l1
    mov ax, word [cs:bx]
    add ax, word [cs:maze_mem_seg - IMAGE_BASE]
@..play_score.l1:
    push ax
    xor ax, ax
    push ax
    call far [cs:music_load_far - IMAGE_BASE]
    add sp, byte 6
    push word [bp + 0x10]
    push word [bp + 0xe]
    call far [cs:music_config_far - IMAGE_BASE]
    add sp, byte 4
    push word [bp + 0x12]
    mov bx, word [bp - 4]
    mov ax, word [cs:bx]
    add ax, word [cs:maze_mem_seg - IMAGE_BASE]
    push ax
    push word [bp - 6]
    call far [cs:music_start_far - IMAGE_BASE]
    add sp, byte 6
@..play_score.l2:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
