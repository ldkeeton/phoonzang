; auto-generated
stop_sound:
    push bp
    mov bp, sp
    sub sp, byte 0x0a
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
    call far [cs:cseg_011a - IMAGE_BASE]
    add sp, byte 0x0e
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
