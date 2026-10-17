; auto-generated
io_loc_PONH_30ab:
    mov ax, word [bp - 0x0008]       ; 0x30ab
    mov cx, 0xa                      ; 0x30ae
    cwd                              ; 0x30b1
    idiv cx                          ; 0x30b2
    mov word [bp - 0x0006], ax       ; 0x30b4
    jmp short loc_SHRQ               ; 0x30b7
