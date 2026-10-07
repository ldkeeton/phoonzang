math_loc_0f68:
    mov ax, 0                        ; 0x0f68
    call ds_dispatch_f40b            ; 0x0f6b
    call math_loc_0f1d               ; 0x0f6e
    test ax, ax                      ; 0x0f71
    je short @..math_loc_0f68.l1     ; 0x0f73
    mov ax, word [data_82e8]         ; 0x0f75
    inc ax                           ; 0x0f78
    mov cx, 2                        ; 0x0f79
    cwd                              ; 0x0f7c
    idiv cx                          ; 0x0f7d
    mov word [data_82e8], dx         ; 0x0f7f
    call loc_676c                    ; 0x0f83
    mov ax, 1                        ; 0x0f86
    ret                              ; 0x0f89
