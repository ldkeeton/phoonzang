api_idx_0004_2:
    mov ax, 0xfffc                   ; 0x0a6a
    call ds_dispatch_f40b            ; 0x0a6d
    cmp word [data_9150], byte 3     ; 0x0a70
    jle short @..api_idx_0004_2.l1   ; 0x0a75
    mov ax, 0                        ; 0x0a77
    push ax                          ; 0x0a7a
    call loc_0a1a                    ; 0x0a7b
    pop cx                           ; 0x0a7e
@..api_idx_0004_2.l1:
    mov bx, word [bp + 0x4]          ; 0x0a7f
    cmp byte [bx], 0                 ; 0x0a82
    jne short @..api_idx_0004_2.l2   ; 0x0a85
    inc word [data_9150]             ; 0x0a87
    ret                              ; 0x0a8b
