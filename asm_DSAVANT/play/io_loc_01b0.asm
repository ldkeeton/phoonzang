io_loc_01b0:
    push bx                          ; 0x01b0
    cmp byte [cs:data_0b9a], 0       ; 0x01b1
    je short @..io_loc_01b0.l2       ; 0x01b7
    mov byte [cs:data_0b9a], 0       ; 0x01b9
    cmp byte [cs:data_0b94], 0       ; 0x01bf
    je short @..io_loc_01b0.l1       ; 0x01c5
    call io_loc_0c97                 ; 0x01c7
@..io_loc_01b0.l1:
    mov bl, byte [cs:data_0b7c]      ; 0x01ca
    xor bh, bh                       ; 0x01cf
    shl bx, 1                        ; 0x01d1
    call [cs:bx + 0x2da]             ; 0x01d3
@..io_loc_01b0.l2:
    pop bx                           ; 0x01d8
    ret                              ; 0x01d9
