; auto-generated
set_music_tempo_volume:
    push bp
    mov bp, sp
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    push word [bp + 0xe]
    push word [bp + 0xc]
    call far [cs:music_config_far - IMAGE_BASE]
    add sp, byte 4
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
