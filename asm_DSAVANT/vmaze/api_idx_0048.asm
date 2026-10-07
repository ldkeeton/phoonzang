api_idx_0048:
    mov ax, 0xffb8                   ; 0x9029
    call ds_dispatch_f40b            ; 0x902c
    push word [bp + 0x6]             ; 0x902f
    push word [bp + 0x4]             ; 0x9032
    call api_idx_0002_21             ; 0x9035
    add sp, byte 4                   ; 0x9038
    test ax, ax                      ; 0x903b
    je short @..api_idx_0048.l1      ; 0x903d
    mov ax, 1                        ; 0x903f
    ret                              ; 0x9042
