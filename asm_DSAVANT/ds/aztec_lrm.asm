aztec_lrm:
    push di ; long remainder	(primary = primary%secondary) ; 0x4c14
    mov di, 0 ; mark result as positive ; 0x4c15
    test dx, dx                      ; 0x4c18
    jns short @..aztec_lrm.rprim_ok  ; 0x4c1a
    neg dx                           ; 0x4c1c
    neg ax                           ; 0x4c1e
    sbb dx, byte 0                   ; 0x4c20
    inc di ; mark as negative ; 0x4c23
@..aztec_lrm.rprim_ok:
    test bx, bx                      ; 0x4c24
    jns short @..aztec_lrm.rsec_ok   ; 0x4c26
    neg bx                           ; 0x4c28
    neg cx                           ; 0x4c2a
    sbb bx, byte 0                   ; 0x4c2c
@..aztec_lrm.rsec_ok:
    call aztec_lud                   ; 0x4c2f
    mov ax, cx                       ; 0x4c32
    mov dx, bx                       ; 0x4c34
    jmp short ds_loc_4c07            ; 0x4c36
