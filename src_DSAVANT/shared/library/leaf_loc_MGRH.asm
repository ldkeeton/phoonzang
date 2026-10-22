; auto-generated
leaf_loc_MGRH:
    push ax
    mov bx, maze_slots - IMAGE_BASE
    mov cx, 0x10
@..leaf_loc_MGRH.l1:
    cmp ax, word [cs:bx]
    jae short @..leaf_loc_MGRH.l2
    dec word [cs:bx]
@..leaf_loc_MGRH.l2:
    inc bx
    inc bx
    loop @..leaf_loc_MGRH.l1
    pop ax
    ret
