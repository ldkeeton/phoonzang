; auto-generated
wait_sound:
    push bp
    mov bp, sp
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    push word [bp + 0xc]
    call far [cs:sound_wait_far - IMAGE_BASE]
    pop cx
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
