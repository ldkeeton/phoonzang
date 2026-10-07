api_idx_0004_11:
    mov ax, 0xfffc                   ; 0x744e
    call ds_dispatch_f40b            ; 0x7451
    mov ax, word [data_8d12]         ; 0x7454
    shl ax, 1                        ; 0x7457
    mov si, ax                       ; 0x7459
    mov bx, word [data_0e12]         ; 0x745b
    mov ax, word [bx + si + 0x3c0]   ; 0x745f
    mov word [bp - 0x0002], ax       ; 0x7463
    mov ax, 1                        ; 0x7466
    push ax                          ; 0x7469
    mov ax, api_idx_0002             ; 0x746a
    push ax                          ; 0x746d
    push word [bp - 0x0002]          ; 0x746e
    call ds_dispatch_ed3a            ; 0x7471
    add sp, byte 6                   ; 0x7474
    cmp ax, strict word 1            ; 0x7477
    jne short @..api_idx_0004_11.l1  ; 0x747a
    mov ax, 2                        ; 0x747c
    push ax                          ; 0x747f
    mov ax, 0xc                      ; 0x7480
    push ax                          ; 0x7483
    push word [bp - 0x0002]          ; 0x7484
    call ds_dispatch_ed3a            ; 0x7487
    add sp, byte 6                   ; 0x748a
    mov word [data_8f24], ax         ; 0x748d
    cmp ax, word [data_82ee]         ; 0x7490
    je short @..api_idx_0004_11.l1   ; 0x7494
    ret                              ; 0x7496
