; auto-generated
is_music_playing:
    push bp
    mov bp, sp
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    call far [cs:music_playing_far - IMAGE_BASE]
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
