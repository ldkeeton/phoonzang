; auto-generated
aztec_ldv:
    push di
    sub di, di
    test dx, dx
    jns short .forward1
    neg dx
    neg ax
    sbb dx, byte 0
    inc di
.forward1:
    test bx, bx
    jns short .forward2
    neg bx
    neg cx
    sbb bx, byte 0
    xor di, 1
.forward2:
    call aztec_lud
aztec_ldv.loc1:
    test di, di
    je short aztec_ldv.loc2
    neg dx
    neg ax
    sbb dx, byte 0
aztec_ldv.loc2:
    pop di
    ret
