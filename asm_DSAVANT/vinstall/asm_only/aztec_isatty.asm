; auto-generated
; asm only
aztec_isatty:
    push bp                          ; 0x39e5
    mov bp, sp                       ; 0x39e6
    mov bx, word [bp + 0x4] ; isatty(fd) ; 0x39e8
    mov ax, 0x4400                   ; 0x39eb
    int 0x21 ; DOS function dispatcher
    jb short @..aztec_isatty.not_tty ; error, then not a tty ; 0x39f0
    test dl, 0x80 ; is the channel a device? ; 0x39f2
    je short @..aztec_isatty.not_tty ; no, ... ; 0x39f5
    test dl, 3 ; is it console input or output ; 0x39f7
    je short @..aztec_isatty.not_tty ; no, ... ; 0x39fa
    mov ax, 1 ; yes, the channel is a tty ; 0x39fc
    pop bp                           ; 0x39ff
    ret                              ; 0x3a00
@..aztec_isatty.not_tty:
    sub ax, ax                       ; 0x3a01
    pop bp                           ; 0x3a03
    ret                              ; 0x3a04
