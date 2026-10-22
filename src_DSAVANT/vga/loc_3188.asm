; auto-generated
loc_3188:
    mov cl, 2                        ; 0x3188
    shl al, cl                       ; 0x318a
    mov bx, 2                        ; 0x318c
    add bx, ax                       ; 0x318f
    mov ax, word [bx]                ; 0x3191
    mov dx, word [bx + 0x2]          ; 0x3193
    mov bx, ds                       ; 0x3196
    add bx, dx                       ; 0x3198
    mov ds, bx                       ; 0x319a
    mov bx, ax                       ; 0x319c
    ret                              ; 0x319e
