api_idx_0002_5:
    mov ax, 0xfffe                   ; 0x0b49
    call ds_dispatch_f40b            ; 0x0b4c
    push word [data_8f44]            ; 0x0b4f
    push word [data_8f46]            ; 0x0b53
    push word [data_8f40]            ; 0x0b57
    push word [data_8f42]            ; 0x0b5b
    push word [data_8f3e]            ; 0x0b5f
    push word [data_82ee]            ; 0x0b63
    call loc_06c3                    ; 0x0b67
    add sp, byte 0x0c                ; 0x0b6a
    mov word [bp - 0x0002], ax       ; 0x0b6d
    cmp ax, strict word 2            ; 0x0b70
    jl short @..api_idx_0002_5.l1    ; 0x0b73
    cmp ax, strict word 5            ; 0x0b75
    jne short @..api_idx_0002_5.l2   ; 0x0b78
@..api_idx_0002_5.l1:
    push word [bp + 0x4]             ; 0x0b7a
    push word [data_82ee]            ; 0x0b7d
    call api_idx_000c                ; 0x0b81
    add sp, byte 4                   ; 0x0b84
    ret                              ; 0x0b87
