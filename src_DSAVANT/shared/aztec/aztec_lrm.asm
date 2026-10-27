; auto-generated
aztec_lrm:
    push di
    mov di, 0
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
.forward2:
    call aztec_lud
    mov ax, cx
    mov dx, bx
    jmp short aztec_lrm.loc1
