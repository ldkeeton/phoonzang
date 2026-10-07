dos_ioctl:
    push bp
    mov bp, sp
    mov bx, word [bp + 0x4]
    mov ax, 0x4400
    int 0x21 ; DOS function dispatcher
    jb short @..local.l193
    test dl, data_0080
    je short @..local.l193
    test dl, 3
    je short @..local.l193
    mov ax, 1
    pop bp
    ret
