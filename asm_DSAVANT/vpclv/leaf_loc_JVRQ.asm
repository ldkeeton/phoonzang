; auto-generated
leaf_loc_JVRQ:
    mov ax, word [bp - 0x0004]       ; 0x4a14
    add ax, word [bp - 0x0006]       ; 0x4a17
    mov cx, 2                        ; 0x4a1a
    cwd                              ; 0x4a1d
    idiv cx                          ; 0x4a1e
    mov word [bp - 0x000c], ax       ; 0x4a20
    mov word [bp - 0x0014], 0        ; 0x4a23
    mov word [bp - 0x0016], 0x20     ; 0x4a28
    mov word [bp - 0x0018], 3        ; 0x4a2d
    jmp near loc_4b67                ; 0x4a32
