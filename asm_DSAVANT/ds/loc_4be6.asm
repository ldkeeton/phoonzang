loc_4be6:
    push di                          ; 0x4be6
    sub di, di                       ; 0x4be7
    test dx, dx                      ; 0x4be9
    jns short @..loc_4be6.l1         ; 0x4beb
    neg dx                           ; 0x4bed
    neg ax                           ; 0x4bef
    sbb dx, byte 0                   ; 0x4bf1
    inc di                           ; 0x4bf4
@..loc_4be6.l1:
    test bx, bx                      ; 0x4bf5
    jns short @..loc_4be6.l2         ; 0x4bf7
    neg bx                           ; 0x4bf9
    neg cx                           ; 0x4bfb
    sbb bx, byte 0                   ; 0x4bfd
    xor di, 1                        ; 0x4c00
@..loc_4be6.l2:
    call aztec_lud                   ; 0x4c04
loc_4c07:
    test di, di                      ; 0x4c07
    je short loc_4c12                ; 0x4c09
    neg dx                           ; 0x4c0b
    neg ax                           ; 0x4c0d
    sbb dx, byte 0                   ; 0x4c0f
loc_4c12:
    pop di                           ; 0x4c12
    ret                              ; 0x4c13
