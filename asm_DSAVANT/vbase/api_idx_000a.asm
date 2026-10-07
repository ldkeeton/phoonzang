api_idx_000a:
    mov ax, 0xfff6                   ; 0x7340
    call ds_dispatch_f40b            ; 0x7343
    mov al, byte [bp + 0x6]          ; 0x7346
    mov byte [bp - 0x000a], al       ; 0x7349
    mov byte [bp - 0x0009], 0        ; 0x734c
    mov ax, 0                        ; 0x7350
    push ax                          ; 0x7353
    push ax                          ; 0x7354
    lea ax, word [bp - 0x000a]       ; 0x7355
    push ax                          ; 0x7358
    mov ax, 0                        ; 0x7359
    push ax                          ; 0x735c
    mov ax, 0x91                     ; 0x735d
    push ax                          ; 0x7360
    mov ax, 0                        ; 0x7361
    push ax                          ; 0x7364
    mov ax, 0x140                    ; 0x7365
    push ax                          ; 0x7368
    mov ax, 0                        ; 0x7369
    push ax                          ; 0x736c
    push word [bp + 0xa]             ; 0x736d
    push word [bp + 0x8]             ; 0x7370
    push word [bp + 0x4]             ; 0x7373
    call ds_dispatch_efd1            ; 0x7376
    add sp, byte 0x16                ; 0x7379
    ret                              ; 0x737c
