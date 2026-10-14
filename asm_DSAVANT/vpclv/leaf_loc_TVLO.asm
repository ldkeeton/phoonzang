; auto-generated
leaf_loc_TVLO:
    mov ax, word [bp - 0x0006]       ; 0x49b1
    add ax, word [bp - 0x0008]       ; 0x49b4
    mov cx, 2                        ; 0x49b7
    cwd                              ; 0x49ba
    idiv cx                          ; 0x49bb
    mov word [bp - 0x000c], ax       ; 0x49bd
    mov word [bp - 0x0014], 1        ; 0x49c0
    mov word [bp - 0x0016], 0x1e     ; 0x49c5
    mov word [bp - 0x0018], 1        ; 0x49ca
    jmp near loc_4b67                ; 0x49cf
