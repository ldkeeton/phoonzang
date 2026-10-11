leaf_loc_109f:
    mov ax, 0x248                    ; 0x109f
    imul word [bp - 0x0006]          ; 0x10a2
    mov bx, ax                       ; 0x10a5
    mov byte [bx + 0x5e32], 0        ; 0x10a7
    mov byte [bx + 0x5d5f], 0        ; 0x10ac
    jmp near loc_1325                ; 0x10b1
