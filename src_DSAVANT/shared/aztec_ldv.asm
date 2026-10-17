; auto-generated
; asm only
aztec_ldv:
    push di ; long divide	(primary = primary/secondary)
    sub di, di ; mark result as positive
    test dx, dx
    jns short @..aztec_ldv.prim_ok
    neg dx
    neg ax
    sbb dx, byte 0
    inc di ; mark as negative
@..aztec_ldv.prim_ok:
    test bx, bx
    jns short @..aztec_ldv.sec_ok
    neg bx
    neg cx
    sbb bx, byte 0
    xor di, 1 ; flip sign of result
@..aztec_ldv.sec_ok:
    call aztec_lud
@..aztec_ldv.chksign:
    test di, di
    je short @..aztec_ldv.posres
    neg dx
    neg ax
    sbb dx, byte 0
@..aztec_ldv.posres:
    pop di
    ret
