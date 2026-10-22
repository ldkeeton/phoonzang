; auto-generated
play_sound:
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
    jb short @..play_sound.l1
    jmp near @..play_sound.l3
@..play_sound.l1:
    shl ax, 1
    shl ax, 1
    mov bx, sound_slots - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:bx + 0x2]
    mov word [bp - 0x0002], ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short @..play_sound.l2
    jmp near @..play_sound.l3
@..play_sound.l2:
    dec ax
    mov word [bp - 0x0004], ax
    push word [bp + 0x12]
    push word [bp + 0x10]
    push word [bp + 0xe]
    mov ax, word [bp - 0x0002]
    push ax
    xor ax, ax
    push ax
    mov bx, maze_blocks - IMAGE_BASE
    mov ax, word [bp - 0x0004]
    shl ax, 1
    shl ax, 1
    add bx, ax
    mov ax, word [cs:bx]
    add ax, word [cs:maze_mem_seg - IMAGE_BASE]
    push ax
    xor ax, ax
    push ax
    call far [cs:sound_play_far - IMAGE_BASE]
    add sp, byte 0x0e
@..play_sound.l3:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
