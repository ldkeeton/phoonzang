; auto-generated
; asm only
leaf_loc_VKIM:
    pop bx
    push di
    push es
    mov di, cs
    mov es, di
    mov di, bx
    mov bx, cx
    shl bx, 1
    cld
    repne scasw
    mov cx, word [es:bx + di - 0x0004]
    pop es
    pop di
    jmp cx
