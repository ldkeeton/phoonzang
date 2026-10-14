; auto-generated
; asm only
aztec_lrm:
    push di ; long remainder	(primary = primary%secondary) ; 0x3445
    mov di, 0 ; mark result as positive ; 0x3446
    test dx, dx                      ; 0x3449
    jns short @..aztec_lrm.rprim_ok  ; 0x344b
    neg dx                           ; 0x344d
    neg ax                           ; 0x344f
    sbb dx, byte 0                   ; 0x3451
    inc di ; mark as negative ; 0x3454
@..aztec_lrm.rprim_ok:
    test bx, bx                      ; 0x3455
    jns short @..aztec_lrm.rsec_ok   ; 0x3457
    neg bx                           ; 0x3459
    neg cx                           ; 0x345b
    sbb bx, byte 0                   ; 0x345d
@..aztec_lrm.rsec_ok:
    call aztec_lud                   ; 0x3460
    mov ax, cx                       ; 0x3463
    mov dx, bx                       ; 0x3465
    jmp short @..aztec_ldv.chksign   ; 0x3467
