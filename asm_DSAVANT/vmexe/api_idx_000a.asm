api_idx_000a:
    mov ax, 0xfff6                   ; 0x0456
    call ds_dispatch_f40b            ; 0x0459
    mov ax, word [bp + 0x4]          ; 0x045c
    shl ax, 1                        ; 0x045f
    mov bx, ax                       ; 0x0461
    mov bx, word [bx - 0x7b7e]       ; 0x0463
    cmp byte [bx + 0x19f], 0xff      ; 0x0467
    jne short @..api_idx_000a.l1     ; 0x046c
    ret                              ; 0x046e
