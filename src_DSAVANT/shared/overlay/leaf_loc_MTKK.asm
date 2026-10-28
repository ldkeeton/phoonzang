; auto-generated
leaf_loc_MTKK:
    mov al, 0x80
    mov dl, al
    xor ax, ax
    mov word [bp - 0x3e], ax
    mov bx, word [bp - 0x36]
    mov cx, 8
.back1:
    mov al, byte [cs:bx]
    and al, dl
    je short .forward1
    add word [bp - 0x3e], strict word 0x140
.forward1:
    ror dl, 1
    loop .back1
    ret
