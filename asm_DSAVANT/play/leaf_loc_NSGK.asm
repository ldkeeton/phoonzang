; auto-generated
leaf_loc_NSGK:
    push bp                          ; 0x0183
    mov bp, sp                       ; 0x0184
    cmp word [bp + 0x8], byte 0      ; 0x0186
    je short @..leaf_loc_NSGK.l3     ; 0x018a
@..leaf_loc_NSGK.l1:
    cmp byte [cs:cseg_0a94 - IMAGE_BASE], 0 ; 0x018c
    je short @..leaf_loc_NSGK.l1     ; 0x0192
@..leaf_loc_NSGK.l2:
    cmp byte [cs:cseg_0a9a - IMAGE_BASE], 0 ; 0x0194
    jne short @..leaf_loc_NSGK.l2    ; 0x019a
    pop bp                           ; 0x019c
    ret                              ; 0x019d
@..leaf_loc_NSGK.l3:
    cmp byte [cs:cseg_0a7d - IMAGE_BASE], 0 ; 0x019e
    jne short @..leaf_loc_NSGK.l5    ; 0x01a4
@..leaf_loc_NSGK.l4:
    cmp byte [cs:cseg_0a94 - IMAGE_BASE], 0 ; 0x01a6
    je short @..leaf_loc_NSGK.l4     ; 0x01ac
@..leaf_loc_NSGK.l5:
    pop bp                           ; 0x01ae
    ret                              ; 0x01af
