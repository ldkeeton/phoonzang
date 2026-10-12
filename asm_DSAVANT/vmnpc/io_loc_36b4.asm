io_loc_36b4:
    mov ax, 1                        ; 0x36b4
    push ax                          ; 0x36b7
    push word [bp - 0x0028]          ; 0x36b8
    mov ax, word [bp - 0x0026]       ; 0x36bb
    shl ax, 1                        ; 0x36be
    add ax, 0x584e                   ; 0x36c0
    push ax                          ; 0x36c3
    call ds_leaf_loc_3e88            ; 0x36c4
    add sp, byte 6                   ; 0x36c7
    jmp near loc_3769                ; 0x36ca
