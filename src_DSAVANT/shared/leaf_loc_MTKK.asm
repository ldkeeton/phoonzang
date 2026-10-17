; auto-generated
leaf_loc_MTKK:
    mov al, 0x80
    mov dl, al
    xor ax, ax
    mov word [bp - 0x003e], ax
    mov bx, word [bp - 0x0036]
    mov cx, 8
@..leaf_loc_MTKK.l1:
    mov al, byte [cs:bx]
    and al, dl
    je short @..leaf_loc_MTKK.l2
    add word [bp - 0x003e], strict word 0x140
@..leaf_loc_MTKK.l2:
    ror dl, 1
    loop @..leaf_loc_MTKK.l1
    ret
