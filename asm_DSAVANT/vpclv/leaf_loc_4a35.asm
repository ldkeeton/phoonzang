; auto-generated
leaf_loc_4a35:
    mov ax, word [bp - 0x0004]       ; 0x4a35
    add ax, word [bp - 0x0006]       ; 0x4a38
    mov cx, 2                        ; 0x4a3b
    cwd                              ; 0x4a3e
    idiv cx                          ; 0x4a3f
    mov word [bp - 0x000c], ax       ; 0x4a41
    mov word [bp - 0x0014], 3        ; 0x4a44
    mov word [bp - 0x0016], 0x1f     ; 0x4a49
    mov word [bp - 0x0018], 1        ; 0x4a4e
    jmp near loc_4b67                ; 0x4a53
