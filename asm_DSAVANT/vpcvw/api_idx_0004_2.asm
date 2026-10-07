api_idx_0004_2:
    mov ax, 0xfffc                   ; 0x09a1
    call ds_dispatch_f40b            ; 0x09a4
    cmp word [data_940e], byte 0xff  ; 0x09a7
    jne short @..api_idx_0004_2.l1   ; 0x09ac
    ret                              ; 0x09ae
