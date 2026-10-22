; auto-generated
leaf_loc_LMQV:
    cmp byte [cs:mouse_present - IMAGE_BASE], 1
    jne short @..leaf_loc_LMQV.l1
    mov byte [cs:mouse_redraw_pending - IMAGE_BASE], 1
@..leaf_loc_LMQV.l1:
    ret
