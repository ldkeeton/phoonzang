; auto-generated
; asm only
aztec_rsvstk:
    push bp ; rsvstk(size):		set safety margin for stack / this will make sure that at least size / bytes of st...
    mov bp, sp
    mov ax, sp
    sub ax, word [bp + 0x4]
    mov word [_STKRED], ax
    pop bp
    ret
