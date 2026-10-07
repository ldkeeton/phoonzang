api_idx_0006_8:
    mov ax, 0xfffa                   ; 0x9e5d
    call ds_dispatch_f40b            ; 0x9e60
    mov ax, word [bp + 0x4]          ; 0x9e63
    cmp ax, word [bp + 0x6]          ; 0x9e66
    jne short @..api_idx_0006_8.l1   ; 0x9e69
    ret                              ; 0x9e6b
