api_idx_0004_16:
    mov ax, 0xfffc                   ; 0x8f85
    db 0xe8, 0x80, 0x64 ; call 0xf40b
    mov ax, 7                        ; 0x8f8b
    push ax                          ; 0x8f8e
    mov ax, data_0002                ; 0x8f8f
    push ax                          ; 0x8f92
    push word [bp + 0x4]             ; 0x8f93
    call api_idx_0054_5              ; 0x8f96
    add sp, byte 6                   ; 0x8f99
    mov word [bp - 0x0002], ax       ; 0x8f9c
    cmp ax, strict word 0xffff       ; 0x8f9f
    je short @..api_idx_0004_16.l1   ; 0x8fa2
    mov ax, data_0002                ; 0x8fa4
    ret                              ; 0x8fa7
