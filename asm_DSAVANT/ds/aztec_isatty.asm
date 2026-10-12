aztec_isatty:
    push bp                          ; 0x5168
    mov bp, sp                       ; 0x5169
    mov bx, word [bp + 0x4] ; isatty(fd) ; 0x516b
    mov ax, 0x4400                   ; 0x516e
    int 0x21 ; DOS function dispatcher
    jb short @..aztec_isatty.not_tty ; error, then not a tty ; 0x5173
    test dl, 0x80 ; is the channel a device? ; 0x5175
    je short @..aztec_isatty.not_tty ; no, ... ; 0x5178
    test dl, 3 ; is it console input or output ; 0x517a
    je short @..aztec_isatty.not_tty ; no, ... ; 0x517d
    mov ax, 1 ; yes, the channel is a tty ; 0x517f
    pop bp                           ; 0x5182
    ret                              ; 0x5183
@..aztec_isatty.not_tty:
    sub ax, ax                       ; 0x5184
    pop bp                           ; 0x5186
    ret                              ; 0x5187
