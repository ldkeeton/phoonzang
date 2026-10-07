api_idx_0004_9:
    mov ax, 0xfffc                   ; 0x33e2
    call ds_dispatch_f40b            ; 0x33e5
    cmp word [data_91d8], byte 1     ; 0x33e8
    jne short @..api_idx_0004_9.l1   ; 0x33ed
    ret                              ; 0x33ef
