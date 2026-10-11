leaf_loc_2f3c:
    mov word [bp - 0x000c], 9        ; 0x2f3c
    mov ax, word [bp + 0x4]          ; 0x2f41
    mov cx, 4                        ; 0x2f44
    shl ax, cl                       ; 0x2f47
    mov cx, word [bp - 0x0012]       ; 0x2f49
    shl cx, 1                        ; 0x2f4c
    shl cx, 1                        ; 0x2f4e
    shl cx, 1                        ; 0x2f50
    add ax, cx                       ; 0x2f52
    mov cx, word [bp - 0x0006]       ; 0x2f54
    shl cx, 1                        ; 0x2f57
    shl cx, 1                        ; 0x2f59
    add ax, cx                       ; 0x2f5b
    mov bx, ax                       ; 0x2f5d
    mov ax, word [bx + 0x436]        ; 0x2f5f
    mov word [bp - 0x000e], ax       ; 0x2f63
    mov ax, word [bx + 0x438]        ; 0x2f66
    mov word [bp - 0x0010], ax       ; 0x2f6a
    mov word [bp - 0x0008], 9        ; 0x2f6d
    mov ax, 0                        ; 0x2f72
    cmp word [bss_82e8], byte 0      ; 0x2f75
    je short @..leaf_loc_2f3c.l1     ; 0x2f7a
    mov ax, 0xa                      ; 0x2f7c
@..leaf_loc_2f3c.l1:
    mov word [bp - 0x000a], ax       ; 0x2f7f
    jmp near loc_30b2                ; 0x2f82
