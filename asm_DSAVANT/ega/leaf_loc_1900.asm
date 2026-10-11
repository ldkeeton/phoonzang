leaf_loc_1900:
    cmp byte [cs:cseg_0228 - IMAGE_BASE], 1 ; 0x1900
    jne short @..leaf_loc_1900.l1    ; 0x1906
    mov byte [cs:cseg_0227 - IMAGE_BASE], 1 ; 0x1908
@..leaf_loc_1900.l1:
    ret                              ; 0x190e
