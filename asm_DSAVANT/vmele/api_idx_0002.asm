api_idx_0002:
    mov ax, 0xfffe                   ; 0x28fc
    call ds_dispatch_f40b            ; 0x28ff
    mov ax, word [bp + 0x4]          ; 0x2902
    cmp ax, word [data_8466]         ; 0x2905
    jle short @..api_idx_0002.l1     ; 0x2909
    mov ax, 0xffff                   ; 0x290b
    ret                              ; 0x290e
