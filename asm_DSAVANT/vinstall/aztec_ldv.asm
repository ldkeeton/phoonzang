aztec_ldv:
    push di ; long divide	(primary = primary/secondary) ; 0x3417
    sub di, di ; mark result as positive ; 0x3418
    test dx, dx                      ; 0x341a
    jns short @..aztec_ldv.prim_ok   ; 0x341c
    neg dx                           ; 0x341e
    neg ax                           ; 0x3420
    sbb dx, byte 0                   ; 0x3422
    inc di ; mark as negative ; 0x3425
@..aztec_ldv.prim_ok:
    test bx, bx                      ; 0x3426
    jns short @..aztec_ldv.sec_ok    ; 0x3428
    neg bx                           ; 0x342a
    neg cx                           ; 0x342c
    sbb bx, byte 0                   ; 0x342e
    xor di, 1 ; flip sign of result ; 0x3431
@..aztec_ldv.sec_ok:
    call aztec_lud                   ; 0x3435
@..aztec_ldv.chksign:
    test di, di                      ; 0x3438
    je short @..aztec_ldv.posres     ; 0x343a
    neg dx                           ; 0x343c
    neg ax                           ; 0x343e
    sbb dx, byte 0                   ; 0x3440
@..aztec_ldv.posres:
    pop di                           ; 0x3443
    ret                              ; 0x3444
