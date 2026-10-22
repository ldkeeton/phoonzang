; auto-generated
table_entry_ptr:
    mov cl, 2                        ; 0x3a3a
    shl al, cl                       ; 0x3a3c
    mov bx, 2                        ; 0x3a3e
    add bx, ax                       ; 0x3a41
    mov ax, word [bx]                ; 0x3a43
    mov dx, word [bx + 0x2]          ; 0x3a45
    mov bx, ds                       ; 0x3a48
    add bx, dx                       ; 0x3a4a
    mov ds, bx                       ; 0x3a4c
    mov bx, ax                       ; 0x3a4e
    ret                              ; 0x3a50
