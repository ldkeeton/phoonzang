; auto-generated
aztec_rsvstk:
    push bp
    mov bp, sp
    mov ax, sp
    sub ax, word [bp + 4]
    mov word [_STKRED], ax
    pop bp
    ret
