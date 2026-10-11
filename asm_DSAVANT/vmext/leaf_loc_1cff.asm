leaf_loc_1cff:
    cmp word [bss_91aa], byte 0      ; 0x1cff
    jne short @..leaf_loc_1cff.l1    ; 0x1d04
    mov word [bp - 0x0004], 0xd      ; 0x1d06
@..leaf_loc_1cff.l1:
    jmp near loc_1e16                ; 0x1d0b
