api_idx_0006_7:
    mov ax, 0xfffa                   ; 0x8b52
    call ds_dispatch_f40b            ; 0x8b55
    mov ax, word [bp + 0x4]          ; 0x8b58
    shl ax, 1                        ; 0x8b5b
    mov si, ax                       ; 0x8b5d
    mov bx, word [data_0e12]         ; 0x8b5f
    mov ax, word [bx + si + 0x3c0]   ; 0x8b63
    mov word [bp - 0x0002], ax       ; 0x8b67
    mov ax, 1                        ; 0x8b6a
    push ax                          ; 0x8b6d
    mov ax, api_idx_0002             ; 0x8b6e
    push ax                          ; 0x8b71
    push word [bp - 0x0002]          ; 0x8b72
    call ds_dispatch_ed3a            ; 0x8b75
    add sp, byte 6                   ; 0x8b78
    cmp ax, strict word 1            ; 0x8b7b
    jne short @..api_idx_0006_7.l1   ; 0x8b7e
    mov ax, 2                        ; 0x8b80
    push ax                          ; 0x8b83
    mov ax, 0xc                      ; 0x8b84
    push ax                          ; 0x8b87
    push word [bp - 0x0002]          ; 0x8b88
    call ds_dispatch_ed3a            ; 0x8b8b
    add sp, byte 6                   ; 0x8b8e
    cmp ax, word [data_82ee]         ; 0x8b91
    je short @..api_idx_0006_7.l1    ; 0x8b95
    mov ax, 0                        ; 0x8b97
    ret                              ; 0x8b9a
