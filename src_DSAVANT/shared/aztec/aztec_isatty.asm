; auto-generated
aztec_isatty:
    push bp
    mov bp, sp
    mov bx, word [bp + 0x4]
    mov ax, 0x4400
    int 0x21 ; DOS function dispatcher
    jb short @..aztec_isatty.not_tty
    test dl, 0x80
    je short @..aztec_isatty.not_tty
    test dl, 3
    je short @..aztec_isatty.not_tty
    mov ax, 1
    pop bp
    ret
@..aztec_isatty.not_tty:
    sub ax, ax
    pop bp
    ret
