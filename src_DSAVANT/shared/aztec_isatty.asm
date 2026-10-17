; auto-generated
; asm only
aztec_isatty:
    push bp
    mov bp, sp
    mov bx, word [bp + 0x4] ; isatty(fd)
    mov ax, 0x4400
    int 0x21 ; DOS function dispatcher
    jb short @..aztec_isatty.not_tty ; error, then not a tty
    test dl, 0x80 ; is the channel a device?
    je short @..aztec_isatty.not_tty ; no, ...
    test dl, 3 ; is it console input or output
    je short @..aztec_isatty.not_tty ; no, ...
    mov ax, 1 ; yes, the channel is a tty
    pop bp
    ret
@..aztec_isatty.not_tty:
    sub ax, ax
    pop bp
    ret
