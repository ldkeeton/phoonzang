; auto-generated
table_entry_ptr:
    mov cl, 2
    shl al, cl
    mov bx, 2
    add bx, ax
    mov ax, word [bx]
    mov dx, word [bx + 2]
    mov bx, ds
    add bx, dx
    mov ds, bx
    mov bx, ax
    ret
