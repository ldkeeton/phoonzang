api_idx_000a_2:
    mov ax, 0xfff6                   ; 0x0f95
    call ds_dispatch_f40b            ; 0x0f98
    mov ax, word [bp + 0x4]          ; 0x0f9b
    shl ax, 1                        ; 0x0f9e
    mov bx, ax                       ; 0x0fa0
    mov bx, word [bx - 0x7b7e]       ; 0x0fa2
    cmp byte [bx + 0x19f], 0xff      ; 0x0fa6
    jne short @..api_idx_000a_2.l1   ; 0x0fab
    ret                              ; 0x0fad
