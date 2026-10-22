; auto-generated
leaf_loc_GLTQ:
    xor ax, ax
    mov word [bp - 0x003c], ax
    mov dl, 0x80
    mov bx, word [bp - 0x0034]
    mov cx, 8
@..leaf_loc_GLTQ.l1:
    mov al, byte [cs:bx]
    and al, dl
    je short @..leaf_loc_GLTQ.l2
    inc word [bp - 0x003c]
@..leaf_loc_GLTQ.l2:
    ror dl, 1
    loop @..leaf_loc_GLTQ.l1
    ret
