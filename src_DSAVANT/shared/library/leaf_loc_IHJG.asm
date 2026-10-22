; auto-generated
leaf_loc_IHJG:
    push ax
    mov bx, picture_slots - IMAGE_BASE
    mov cx, 0x14
@..leaf_loc_IHJG.l1:
    cmp ax, word [cs:bx]
    jae short @..leaf_loc_IHJG.l2
    dec word [cs:bx]
@..leaf_loc_IHJG.l2:
    inc bx
    inc bx
    loop @..leaf_loc_IHJG.l1
    pop ax
    ret
