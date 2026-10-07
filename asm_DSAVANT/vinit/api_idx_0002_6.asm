api_idx_0002_6:
    mov ax, 0xfffe                   ; 0x094a
    call ds_dispatch_f40b            ; 0x094d
    cmp word [data_91b8], byte 0xff  ; 0x0950
    jne short @..api_idx_0002_6.l1   ; 0x0955
    mov ax, 0                        ; 0x0957
    ret                              ; 0x095a
