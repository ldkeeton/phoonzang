api_idx_0002_7:
    mov ax, 0xfffe                   ; 0x0b66
    call ds_dispatch_f40b            ; 0x0b69
    mov ax, word [bp + 0x6]          ; 0x0b6c
    add ax, strict word 8            ; 0x0b6f
    mov cx, 8                        ; 0x0b72
    cwd                              ; 0x0b75
    idiv cx                          ; 0x0b76
    mov word [bp + 0x6], dx          ; 0x0b78
    mov ax, word [bp + 0x8]          ; 0x0b7b
    add ax, strict word 8            ; 0x0b7e
    cwd                              ; 0x0b81
    idiv cx                          ; 0x0b82
    mov word [bp + 0x8], dx          ; 0x0b84
    mov ax, word [bp + 0x4]          ; 0x0b87
    mov cx, 6                        ; 0x0b8a
    shl ax, cl                       ; 0x0b8d
    shl dx, 1                        ; 0x0b8f
    shl dx, 1                        ; 0x0b91
    shl dx, 1                        ; 0x0b93
    mov cx, dx                       ; 0x0b95
    add ax, cx                       ; 0x0b97
    add ax, word [bp + 0x6]          ; 0x0b99
    mov word [bp - 0x0002], ax       ; 0x0b9c
    push ax                          ; 0x0b9f
    mov ax, 0x8b7e                   ; 0x0ba0
    push ax                          ; 0x0ba3
    call ds_dispatch_ec74            ; 0x0ba4
    add sp, byte 4                   ; 0x0ba7
    cmp ax, word [bp + 0xa]          ; 0x0baa
    jne short @..api_idx_0002_7.l1   ; 0x0bad
    ret                              ; 0x0baf
