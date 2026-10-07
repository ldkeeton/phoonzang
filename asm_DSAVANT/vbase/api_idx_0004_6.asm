api_idx_0004_6:
    mov ax, 0xfffc                   ; 0x6d1f
    call ds_dispatch_f40b            ; 0x6d22
    cmp word [data_a4a6], byte 3     ; 0x6d25
    jle short @..api_idx_0004_6.l1   ; 0x6d2a
    call api_idx_0004_5              ; 0x6d2c
@..api_idx_0004_6.l1:
    mov bx, word [bp + 0x4]          ; 0x6d2f
    cmp byte [bx], 0                 ; 0x6d32
    jne short @..api_idx_0004_6.l2   ; 0x6d35
    inc word [data_a4a6]             ; 0x6d37
    ret                              ; 0x6d3b
