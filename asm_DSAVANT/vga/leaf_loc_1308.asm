; auto-generated
leaf_loc_1308:
    cmp byte [cs:cseg_0228 - IMAGE_BASE], 1 ; 0x1308
    jne short @..leaf_loc_1308.l1    ; 0x130e
    mov byte [cs:cseg_0227 - IMAGE_BASE], 1 ; 0x1310
@..leaf_loc_1308.l1:
    ret                              ; 0x1316
