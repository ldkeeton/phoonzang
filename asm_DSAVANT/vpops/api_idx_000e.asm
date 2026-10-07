api_idx_000e:
    mov ax, 0xfff2                   ; 0x0704
    call ds_dispatch_f40b            ; 0x0707
    mov bx, word [bp + 0xe]          ; 0x070a
    mov byte [bx], 0                 ; 0x070d
    mov ax, word [bp + 0x4]          ; 0x0710
    shl ax, 1                        ; 0x0713
    mov bx, ax                       ; 0x0715
    mov bx, word [bx - 0x7b7e]       ; 0x0717
    cmp byte [bx + 0x19f], 0xff      ; 0x071b
    jne short @..api_idx_000e.l1     ; 0x0720
    ret                              ; 0x0722
