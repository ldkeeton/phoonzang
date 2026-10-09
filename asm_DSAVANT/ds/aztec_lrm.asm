aztec_lrm:
    push di                          ; 0x4c14
    mov di, 0                        ; 0x4c15
    test dx, dx                      ; 0x4c18
    jns short @..aztec_lrm.l3        ; 0x4c1a
    neg dx                           ; 0x4c1c
    neg ax                           ; 0x4c1e
    sbb dx, byte 0                   ; 0x4c20
    inc di                           ; 0x4c23
@..aztec_lrm.l3:
    test bx, bx                      ; 0x4c24
    jns short @..aztec_lrm.l4        ; 0x4c26
    neg bx                           ; 0x4c28
    neg cx                           ; 0x4c2a
    sbb bx, byte 0                   ; 0x4c2c
@..aztec_lrm.l4:
    call aztec_lud                   ; 0x4c2f
    mov ax, cx                       ; 0x4c32
    mov dx, bx                       ; 0x4c34
    jmp short @..aztec_lrm.l1        ; 0x4c36
