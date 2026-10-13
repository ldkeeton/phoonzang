; auto-generated
aztec_ldv:
    push di ; long divide	(primary = primary/secondary) ; 0x4be6
    sub di, di ; mark result as positive ; 0x4be7
    test dx, dx                      ; 0x4be9
    jns short @..aztec_ldv.prim_ok   ; 0x4beb
    neg dx                           ; 0x4bed
    neg ax                           ; 0x4bef
    sbb dx, byte 0                   ; 0x4bf1
    inc di ; mark as negative ; 0x4bf4
@..aztec_ldv.prim_ok:
    test bx, bx                      ; 0x4bf5
    jns short @..aztec_ldv.sec_ok    ; 0x4bf7
    neg bx                           ; 0x4bf9
    neg cx                           ; 0x4bfb
    sbb bx, byte 0                   ; 0x4bfd
    xor di, 1 ; flip sign of result ; 0x4c00
@..aztec_ldv.sec_ok:
    call aztec_lud                   ; 0x4c04
ds_loc_4c07:
    test di, di                      ; 0x4c07
    je short ds_loc_4c12             ; 0x4c09
    neg dx                           ; 0x4c0b
    neg ax                           ; 0x4c0d
    sbb dx, byte 0                   ; 0x4c0f
ds_loc_4c12:
    pop di                           ; 0x4c12
    ret                              ; 0x4c13
