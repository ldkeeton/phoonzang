; auto-generated
leaf_loc_GRHS:
    mov ax, 0xa                      ; 0x188f
    cmp word [bp + 0x6], byte 0      ; 0x1892
    jne short @..leaf_loc_GRHS.l1    ; 0x1896
    mov ax, 0x20                     ; 0x1898
@..leaf_loc_GRHS.l1:
    ret                              ; 0x189b
