leaf_loc_0183:
    push bp                          ; 0x0183
    mov bp, sp                       ; 0x0184
    cmp word [bp + 0x8], byte 0      ; 0x0186
    je short @..leaf_loc_0183.l3     ; 0x018a
@..leaf_loc_0183.l1:
    cmp byte [cs:data_0b94], 0       ; 0x018c
    je short @..leaf_loc_0183.l1     ; 0x0192
@..leaf_loc_0183.l2:
    cmp byte [cs:data_0b9a], 0       ; 0x0194
    jne short @..leaf_loc_0183.l2    ; 0x019a
    pop bp                           ; 0x019c
    ret                              ; 0x019d
