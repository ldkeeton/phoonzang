; auto-generated
leaf_loc_GOTN:
    mov ax, word [bp - 0x0004]       ; 0x49f3
    add ax, word [bp - 0x0006]       ; 0x49f6
    mov cx, 2                        ; 0x49f9
    cwd                              ; 0x49fc
    idiv cx                          ; 0x49fd
    mov word [bp - 0x000c], ax       ; 0x49ff
    mov word [bp - 0x0014], 2        ; 0x4a02
    mov word [bp - 0x0016], 0x1d     ; 0x4a07
    mov word [bp - 0x0018], 1        ; 0x4a0c
    jmp near loc_4b67                ; 0x4a11
