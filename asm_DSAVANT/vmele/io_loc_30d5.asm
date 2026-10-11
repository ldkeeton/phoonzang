io_loc_30d5:
    mov ax, word [bp - 0x0008]       ; 0x30d5
    mov cx, 0x14                     ; 0x30d8
    cwd                              ; 0x30db
    idiv cx                          ; 0x30dc
    mov word [bp - 0x0006], ax       ; 0x30de
    jmp short loc_3103               ; 0x30e1
