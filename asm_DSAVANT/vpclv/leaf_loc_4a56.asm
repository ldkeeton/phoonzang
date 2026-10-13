; auto-generated
leaf_loc_4a56:
    mov ax, word [bp - 0x0006]       ; 0x4a56
    add ax, word [bp - 0x0008]       ; 0x4a59
    mov cx, 2                        ; 0x4a5c
    cwd                              ; 0x4a5f
    idiv cx                          ; 0x4a60
    mov word [bp - 0x000c], ax       ; 0x4a62
    mov word [bp - 0x0014], 1        ; 0x4a65
    mov word [bp - 0x0016], 0x1e     ; 0x4a6a
    mov word [bp - 0x0018], 3        ; 0x4a6f
    jmp near loc_4b67                ; 0x4a74
