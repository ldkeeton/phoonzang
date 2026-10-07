leaf_loc_3c12:
    xor ax, ax                       ; 0x3c12
    mov word [bp - 0x003c], ax       ; 0x3c14
    mov dl, 0x80                     ; 0x3c17
    mov bx, word [bp - 0x0034]       ; 0x3c19
    mov cx, 8                        ; 0x3c1c
@..leaf_loc_3c12.l1:
    mov al, byte [cs:bx]             ; 0x3c1f
    and al, dl                       ; 0x3c22
    je short @..leaf_loc_3c12.l2     ; 0x3c24
    inc word [bp - 0x003c]           ; 0x3c26
@..leaf_loc_3c12.l2:
    ror dl, 1                        ; 0x3c29
    loop @..leaf_loc_3c12.l1         ; 0x3c2b
    ret                              ; 0x3c2d
