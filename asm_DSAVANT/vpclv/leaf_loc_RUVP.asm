; auto-generated
leaf_loc_RUVP:
    mov ax, word [bp - 0x0004]       ; 0x49d2
    add ax, word [bp - 0x0006]       ; 0x49d5
    mov cx, 2                        ; 0x49d8
    cwd                              ; 0x49db
    idiv cx                          ; 0x49dc
    mov word [bp - 0x000c], ax       ; 0x49de
    mov word [bp - 0x0014], 2        ; 0x49e1
    mov word [bp - 0x0016], 0x1d     ; 0x49e6
    mov word [bp - 0x0018], 3        ; 0x49eb
    jmp near loc_KMTR                ; 0x49f0
