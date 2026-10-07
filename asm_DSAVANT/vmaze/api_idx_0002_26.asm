api_idx_0002_26:
    mov ax, 0xfffe                   ; 0xa7b2
    call ds_dispatch_f40b            ; 0xa7b5
    mov ax, 0x26                     ; 0xa7b8
    imul word [bp + 0x4]             ; 0xa7bb
    mov bx, ax                       ; 0xa7be
    cmp byte [bx - 0x7b16], 3        ; 0xa7c0
    jne short @..api_idx_0002_26.l1  ; 0xa7c5
    mov ax, 3                        ; 0xa7c7
    push ax                          ; 0xa7ca
    mov ax, 2                        ; 0xa7cb
    push ax                          ; 0xa7ce
    push word [bp + 0x4]             ; 0xa7cf
    call api_idx_0002_25             ; 0xa7d2
    add sp, byte 6                   ; 0xa7d5
    test ax, ax                      ; 0xa7d8
    je short @..api_idx_0002_26.l1   ; 0xa7da
    ret                              ; 0xa7dc
