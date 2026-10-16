; auto-generated
leaf_loc_NMVG:
    cmp byte [cs:cseg_0128 - IMAGE_BASE], 1
    jne short @..leaf_loc_NMVG.l1
    mov byte [cs:cseg_0127 - IMAGE_BASE], 1
@..leaf_loc_NMVG.l1:
    ret
