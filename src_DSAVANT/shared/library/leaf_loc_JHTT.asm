; auto-generated
leaf_loc_JHTT:
    cmp byte [cs:leaf_loc_JHTT.cseg1 - IMAGE_BASE], 0
    je short @..leaf_loc_JHTT.l1
    retf
@..leaf_loc_JHTT.l1:
    mov al, 0xff
    mov byte [cs:leaf_loc_JHTT.cseg1 - IMAGE_BASE], al
    shr cx, 1
    mov word [cs:leaf_loc_JHTT.cseg2 - IMAGE_BASE], cx
    mov word [cs:leaf_loc_JHTT.cseg3 - IMAGE_BASE], dx
