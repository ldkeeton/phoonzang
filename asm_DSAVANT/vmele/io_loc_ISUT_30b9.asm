; auto-generated
io_loc_ISUT_30b9:
    mov ax, word [bp - 0x0008]       ; 0x30b9
    mov cx, 0xc                      ; 0x30bc
    cwd                              ; 0x30bf
    idiv cx                          ; 0x30c0
    mov word [bp - 0x0006], ax       ; 0x30c2
    jmp short loc_SHRQ               ; 0x30c5
