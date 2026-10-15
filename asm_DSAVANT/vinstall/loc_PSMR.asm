; auto-generated
loc_PSMR:
    mov ax, word [bp - 0x019c]       ; 0x1b79
    mov word [bp - 0x019e], ax       ; 0x1b7d
    shl ax, 1                        ; 0x1b81
    mov bx, ax                       ; 0x1b83
    mov ax, word [bx + 0x1dd]        ; 0x1b85
    mov word [bp - 0x019c], ax       ; 0x1b89
    jmp near @..loc_VRUR.l49         ; 0x1b8d
