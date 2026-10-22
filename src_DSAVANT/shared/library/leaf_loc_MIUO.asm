; auto-generated
leaf_loc_MIUO:
    push ax
    mov bx, ems_slots - IMAGE_BASE
    mov cx, 0x14
@..leaf_loc_MIUO.l1:
    cmp ax, word [cs:bx]
    jae short @..leaf_loc_MIUO.l2
    dec word [cs:bx]
@..leaf_loc_MIUO.l2:
    inc bx
    inc bx
    loop @..leaf_loc_MIUO.l1
    mov bx, cseg_01c3 - IMAGE_BASE
    mov cx, 0xa
@..leaf_loc_MIUO.l3:
    cmp ax, word [cs:bx]
    jae short @..leaf_loc_MIUO.l4
    dec word [cs:bx]
@..leaf_loc_MIUO.l4:
    inc bx
    inc bx
    loop @..leaf_loc_MIUO.l3
    mov bx, screen_ems_slots - IMAGE_BASE
    mov cx, 0xa
@..leaf_loc_MIUO.l5:
    cmp ax, word [cs:bx]
    jae short @..leaf_loc_MIUO.l6
    dec word [cs:bx]
@..leaf_loc_MIUO.l6:
    inc bx
    inc bx
    loop @..leaf_loc_MIUO.l5
    pop ax
    ret
