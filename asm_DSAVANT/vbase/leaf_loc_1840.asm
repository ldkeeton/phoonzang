leaf_loc_1840:
    mov ax, 8                        ; 0x1840
    cmp word [bp + 0x6], byte 0      ; 0x1843
    jne short @..leaf_loc_1840.l1    ; 0x1847
    mov ax, 3                        ; 0x1849
@..leaf_loc_1840.l1:
    ret                              ; 0x184c
