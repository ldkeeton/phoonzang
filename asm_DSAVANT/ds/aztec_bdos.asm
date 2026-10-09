aztec_bdos:
    push bp                          ; 0x4497
    mov bp, sp                       ; 0x4498
    push es                          ; 0x449a
    mov ax, word [bp + 0x4]          ; 0x449b
    test ah, ah                      ; 0x449e
    jne short @..aztec_bdos.l1       ; 0x44a0
    xchg al, ah                      ; 0x44a2
@..aztec_bdos.l1:
    mov dx, word [bp + 0x6]          ; 0x44a4
    mov cx, word [bp + 0x8]          ; 0x44a7
    int 0x21 ; DOS function dispatcher
    mov dx, es                       ; 0x44ac
    pop es                           ; 0x44ae
    and ax, 0xff                     ; 0x44af
    pop bp                           ; 0x44b2
    ret                              ; 0x44b3
