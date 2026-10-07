api_idx_0002_2:
    mov ax, 0xfffe                   ; 0x0106
    call ds_dispatch_f40b            ; 0x0109
    cmp word [data_830c], byte 0x17  ; 0x010c
    jne short @..api_idx_0002_2.l1   ; 0x0111
    cmp word [data_8f3e], byte 0x0f  ; 0x0113
    jne short @..api_idx_0002_2.l1   ; 0x0118
    ret                              ; 0x011a
