; auto-generated
leaf_loc_USQQ:
    push ax
    mov bx, screen_maze_slots - IMAGE_BASE
    mov cx, 5
@..leaf_loc_USQQ.l1:
    cmp ax, word [cs:bx]
    jae short @..leaf_loc_USQQ.l2
    dec word [cs:bx]
@..leaf_loc_USQQ.l2:
    inc bx
    inc bx
    loop @..leaf_loc_USQQ.l1
    pop ax
    ret
