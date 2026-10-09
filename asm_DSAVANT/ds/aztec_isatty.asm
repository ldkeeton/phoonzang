aztec_isatty:
    push bp                          ; 0x5168
    mov bp, sp                       ; 0x5169
    mov bx, word [bp + 0x4]          ; 0x516b
    mov ax, 0x4400                   ; 0x516e
    int 0x21 ; DOS function dispatcher
    jb short @..aztec_isatty.l1      ; 0x5173
    test dl, data_0080               ; 0x5175
    je short @..aztec_isatty.l1      ; 0x5178
    test dl, 3                       ; 0x517a
    je short @..aztec_isatty.l1      ; 0x517d
    mov ax, 1                        ; 0x517f
    pop bp                           ; 0x5182
    ret                              ; 0x5183
@..aztec_isatty.l1:
    sub ax, ax                       ; 0x5184
    pop bp                           ; 0x5186
    ret                              ; 0x5187
