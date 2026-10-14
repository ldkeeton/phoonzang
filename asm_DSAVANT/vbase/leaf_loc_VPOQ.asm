; auto-generated
leaf_loc_VPOQ:
    mov ax, 7                        ; 0x184d
    cmp word [bp + 0x6], byte 0      ; 0x1850
    jne short @..leaf_loc_VPOQ.l1    ; 0x1854
    mov ax, 5                        ; 0x1856
@..leaf_loc_VPOQ.l1:
    ret                              ; 0x1859
