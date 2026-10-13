; auto-generated
leaf_loc_4990:
    mov ax, word [bp - 0x0004]       ; 0x4990
    add ax, word [bp - 0x0006]       ; 0x4993
    mov cx, 2                        ; 0x4996
    cwd                              ; 0x4999
    idiv cx                          ; 0x499a
    mov word [bp - 0x000c], ax       ; 0x499c
    mov word [bp - 0x0014], 0        ; 0x499f
    mov word [bp - 0x0016], 0x20     ; 0x49a4
    mov word [bp - 0x0018], 1        ; 0x49a9
    jmp near loc_4b67                ; 0x49ae
