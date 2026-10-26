; auto-generated
leaf_loc_KSJN:
    xor ax, ax
    mov word [bp - 0x3c], ax
    mov dl, 0x80
    mov bx, word [bp - 0x34]
    mov cx, 8
@..leaf_loc_KSJN.l1:
    mov al, byte [cs:bx]
    and al, dl
    je short @..leaf_loc_KSJN.l2
    inc word [bp - 0x3c]
@..leaf_loc_KSJN.l2:
    ror dl, 1
    loop @..leaf_loc_KSJN.l1
    ret
