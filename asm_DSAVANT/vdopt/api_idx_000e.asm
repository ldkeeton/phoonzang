api_idx_000e:
    mov ax, 0xfff2                   ; 0x06e8
    call ds_dispatch_f40b            ; 0x06eb
    call api_idx_0002_3              ; 0x06ee
    mov word [bp - 0x000e], ax       ; 0x06f1
    cmp ax, strict word 0xffff       ; 0x06f4
    jne short @..api_idx_000e.l1     ; 0x06f7
    mov ax, 0xffff                   ; 0x06f9
    ret                              ; 0x06fc
