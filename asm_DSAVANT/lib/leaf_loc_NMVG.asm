; auto-generated
leaf_loc_NMVG:
    cmp byte [cs:cseg_0228 - IMAGE_BASE], 1
    jne short @..leaf_loc_NMVG.l1
    mov byte [cs:cseg_0227 - IMAGE_BASE], 1
@..leaf_loc_NMVG.l1:
    ret
