; auto-generated
leaf_loc_JRKU:
    push ax
    mov bx, sound_slots - IMAGE_BASE
    mov cx, 0x14
@..leaf_loc_JRKU.l1:
    cmp ax, word [cs:bx]
    jae short @..leaf_loc_JRKU.l2
    dec word [cs:bx]
@..leaf_loc_JRKU.l2:
    add bx, byte 4
    loop @..leaf_loc_JRKU.l1
    pop ax
    ret
