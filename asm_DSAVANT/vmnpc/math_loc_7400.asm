math_loc_7400:
    mov ax, 0                        ; 0x7400
    db 0xe8, 0x05, 0x80 ; call 0xf40b
    mov word [data_9d6c], 3          ; 0x7406
    mov word [data_93d8], 0x8f       ; 0x740c
    mov word [data_9d62], 3          ; 0x7412
    call api_idx_001e                ; 0x7418
    call loc_6d9d                    ; 0x741b
    call api_idx_0086                ; 0x741e
    call loc_a441                    ; 0x7421
    call api_idx_0054                ; 0x7424
    call api_idx_009c                ; 0x7427
    call api_idx_0006_6              ; 0x742a
    ret                              ; 0x742d
