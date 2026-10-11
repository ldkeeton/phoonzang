leaf_loc_189c:
    mov ax, 0x1f                     ; 0x189c
    cmp word [bp + 0x6], byte 0      ; 0x189f
    jne short @..leaf_loc_189c.l1    ; 0x18a3
    mov ax, 0x1c                     ; 0x18a5
@..leaf_loc_189c.l1:
    ret                              ; 0x18a8
