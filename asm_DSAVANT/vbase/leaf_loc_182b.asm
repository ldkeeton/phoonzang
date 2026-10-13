; auto-generated
leaf_loc_182b:
    mov ax, 0xc                      ; 0x182b
    cmp word [bp + 0x6], byte 0      ; 0x182e
    jne short @..leaf_loc_182b.l1    ; 0x1832
    mov ax, 0xd                      ; 0x1834
@..leaf_loc_182b.l1:
    ret                              ; 0x1837
