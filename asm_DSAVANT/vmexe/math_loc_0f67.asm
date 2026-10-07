math_loc_0f67:
    mov ax, 0xfee2                   ; 0x0f67
    call ds_dispatch_f40b            ; 0x0f6a
    cmp word [bp + 0x4], byte 0      ; 0x0f6d
    jne short @..math_loc_0f67.l1    ; 0x0f71
    mov ax, 0x2c                     ; 0x0f73
    imul word [bp + 0x6]             ; 0x0f76
    mov si, ax                       ; 0x0f79
    mov ax, word [bp + 0x4]          ; 0x0f7b
    shl ax, 1                        ; 0x0f7e
    mov bx, ax                       ; 0x0f80
    mov bx, word [bx - 0x7b7e]       ; 0x0f82
    cmp byte [bx + si + 0x1f], 0     ; 0x0f86
    jne short @..math_loc_0f67.l1    ; 0x0f8a
    ret                              ; 0x0f8c
