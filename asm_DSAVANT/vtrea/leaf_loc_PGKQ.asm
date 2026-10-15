; auto-generated
leaf_loc_PGKQ:
    mov ax, word [bp + 0xe]          ; 0x5fad
    xchg al, ah                      ; 0x5fb0
    sub al, al                       ; 0x5fb2
    add ax, word [bp + 0x10]         ; 0x5fb4
    mov bx, word [bp - 0x0004]       ; 0x5fb7
    mov word [bx + 0x4], ax          ; 0x5fba
    jmp short loc_NUGN               ; 0x5fbd
