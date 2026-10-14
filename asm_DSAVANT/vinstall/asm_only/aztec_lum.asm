; auto-generated
; asm only
aztec_lum:
    call aztec_lud ; unsigned long remainder	(primary = primary%secondary) ; 0x3469
    mov ax, cx                       ; 0x346c
    mov dx, bx                       ; 0x346e
    ret                              ; 0x3470
