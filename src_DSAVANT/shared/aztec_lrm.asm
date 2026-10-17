; auto-generated
; asm only
aztec_lrm:
    push di ; long remainder	(primary = primary%secondary)
    mov di, 0 ; mark result as positive
    test dx, dx
    jns short @..aztec_lrm.rprim_ok
    neg dx
    neg ax
    sbb dx, byte 0
    inc di ; mark as negative
@..aztec_lrm.rprim_ok:
    test bx, bx
    jns short @..aztec_lrm.rsec_ok
    neg bx
    neg cx
    sbb bx, byte 0
@..aztec_lrm.rsec_ok:
    call aztec_lud
    mov ax, cx
    mov dx, bx
    jmp short @..aztec_ldv.chksign
