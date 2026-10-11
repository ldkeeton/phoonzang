leaf_loc_188f:
    mov ax, 0xa                      ; 0x188f
    cmp word [bp + 0x6], byte 0      ; 0x1892
    jne short @..leaf_loc_188f.l1    ; 0x1896
    mov ax, 0x20                     ; 0x1898
@..leaf_loc_188f.l1:
    ret                              ; 0x189b
