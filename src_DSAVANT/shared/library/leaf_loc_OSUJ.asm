; auto-generated
leaf_loc_OSUJ:
    push ax
    mov bx, maze_map_slots - IMAGE_BASE
    mov cx, 0xa
@..leaf_loc_OSUJ.l1:
    cmp ax, word [cs:bx]
    jae short @..leaf_loc_OSUJ.l2
    dec word [cs:bx]
@..leaf_loc_OSUJ.l2:
    inc bx
    inc bx
    loop @..leaf_loc_OSUJ.l1
    pop ax
    ret
