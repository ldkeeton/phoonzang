; auto-generated
leaf_loc_18ad:
    mov ax, 0x1b                     ; 0x18ad
    cmp word [bp + 0x6], byte 0      ; 0x18b0
    jne short @..leaf_loc_18ad.l1    ; 0x18b4
    mov ax, 6                        ; 0x18b6
@..leaf_loc_18ad.l1:
    ret                              ; 0x18b9
