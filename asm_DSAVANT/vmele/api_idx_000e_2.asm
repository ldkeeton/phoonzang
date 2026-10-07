api_idx_000e_2:
    mov ax, 0xfff2                   ; 0x2138
    call ds_dispatch_f40b            ; 0x213b
    mov bx, word [bp + 0xe]          ; 0x213e
    mov byte [bx], 0                 ; 0x2141
    mov ax, word [bp + 0x4]          ; 0x2144
    shl ax, 1                        ; 0x2147
    mov bx, ax                       ; 0x2149
    mov bx, word [bx - 0x7b7e]       ; 0x214b
    cmp byte [bx + 0x19f], 0xff      ; 0x214f
    jne short @..api_idx_000e_2.l1   ; 0x2154
    ret                              ; 0x2156
