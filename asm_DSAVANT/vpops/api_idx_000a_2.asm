api_idx_000a_2:
    mov ax, 0xfff6                   ; 0x0504
    call ds_dispatch_f40b            ; 0x0507
    mov ax, word [bp + 0x4]          ; 0x050a
    shl ax, 1                        ; 0x050d
    mov bx, ax                       ; 0x050f
    mov bx, word [bx - 0x7b7e]       ; 0x0511
    cmp byte [bx + 0x19f], 0xff      ; 0x0515
    jne short @..api_idx_000a_2.l1   ; 0x051a
    ret                              ; 0x051c
