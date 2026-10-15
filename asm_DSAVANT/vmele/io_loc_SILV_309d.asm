; auto-generated
io_loc_SILV_309d:
    mov ax, word [bp - 0x0008]       ; 0x309d
    mov cx, 0xa                      ; 0x30a0
    cwd                              ; 0x30a3
    idiv cx                          ; 0x30a4
    mov word [bp - 0x0006], ax       ; 0x30a6
    jmp short loc_KRJJ               ; 0x30a9
