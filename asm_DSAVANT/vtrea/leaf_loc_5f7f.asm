leaf_loc_5f7f:
    mov ax, word [bp + 0xe]          ; 0x5f7f
    mov cx, 4                        ; 0x5f82
    shl ax, cl                       ; 0x5f85
    add ax, word [bp + 0x10]         ; 0x5f87
    xchg al, ah                      ; 0x5f8a
    sub al, al                       ; 0x5f8c
    mov dx, word [bp + 0x12]         ; 0x5f8e
    shl dx, cl                       ; 0x5f91
    mov cx, dx                       ; 0x5f93
    add ax, cx                       ; 0x5f95
    add ax, word [bp + 0x14]         ; 0x5f97
    mov bx, word [bp - 0x0004]       ; 0x5f9a
    mov word [bx + 0x4], ax          ; 0x5f9d
    jmp short loc_5fee               ; 0x5fa0
