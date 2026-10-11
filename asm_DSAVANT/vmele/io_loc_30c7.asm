io_loc_30c7:
    mov ax, word [bp - 0x0008]       ; 0x30c7
    mov cx, 0xc                      ; 0x30ca
    cwd                              ; 0x30cd
    idiv cx                          ; 0x30ce
    mov word [bp - 0x0006], ax       ; 0x30d0
    jmp short loc_3103               ; 0x30d3
