api_idx_0004_8:
    mov ax, 0xfffc                   ; 0x6c0a
    call ds_dispatch_f40b            ; 0x6c0d
    cmp word [data_9b4c], byte 3     ; 0x6c10
    jle short @..api_idx_0004_8.l1   ; 0x6c15
    mov ax, 0                        ; 0x6c17
    push ax                          ; 0x6c1a
    call loc_6b5a                    ; 0x6c1b
    pop cx                           ; 0x6c1e
@..api_idx_0004_8.l1:
    mov bx, word [bp + 0x4]          ; 0x6c1f
    cmp byte [bx], 0                 ; 0x6c22
    jne short @..api_idx_0004_8.l2   ; 0x6c25
    inc word [data_9b4c]             ; 0x6c27
    ret                              ; 0x6c2b
