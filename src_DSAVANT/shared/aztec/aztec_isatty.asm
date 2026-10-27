; auto-generated
aztec_isatty:
    push bp
    mov bp, sp
    mov bx, word [bp + 4]
    mov ax, 0x4400
    int 0x21 ; DOS function dispatcher
    jb short .forward1
    test dl, 0x80
    je short .forward1
    test dl, 3
    je short .forward1
    mov ax, 1
    pop bp
    ret
.forward1:
    sub ax, ax
    pop bp
    ret
