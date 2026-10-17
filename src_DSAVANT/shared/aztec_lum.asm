; auto-generated
; asm only
aztec_lum:
    call aztec_lud ; unsigned long remainder	(primary = primary%secondary)
    mov ax, cx
    mov dx, bx
    ret
