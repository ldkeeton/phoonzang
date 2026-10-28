; auto-generated
stop_sound:
    push bp
    mov bp, sp
    sub sp, byte 0xa
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
    call far [cs:sound_play_far - IMAGE_BASE]
    add sp, byte 0xe
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
