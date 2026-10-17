; auto-generated
aztec_creat:
    push bp
    mov bp, sp
    push word [bp + 0x6]
    mov ax, 0x301
    push ax
    push word [bp + 0x4]
    call aztec_open
    add sp, byte 6
    mov sp, bp
    pop bp
    ret
