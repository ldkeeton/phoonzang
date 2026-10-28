; auto-generated
leaf_loc_KSJN:
    xor ax, ax
    mov word [bp - 0x3c], ax
    mov dl, 0x80
    mov bx, word [bp - 0x34]
    mov cx, 8
.back1:
    mov al, byte [cs:bx]
    and al, dl
    je short .forward1
    inc word [bp - 0x3c]
.forward1:
    ror dl, 1
    loop .back1
    ret
