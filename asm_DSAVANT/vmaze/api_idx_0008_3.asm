api_idx_0008_3:
    mov ax, 0xfff8                   ; 0x2f8e
    call ds_dispatch_f40b            ; 0x2f91
    cmp word [bp + 0xe], byte 0      ; 0x2f94
    jne short @..api_idx_0008_3.l1   ; 0x2f98
    jmp near @..api_idx_0008_3.l3    ; 0x2f9a
@..api_idx_0008_3.l1:
    mov ax, 0                        ; 0x2f9d
    push ax                          ; 0x2fa0
    push word [bp + 0xe]             ; 0x2fa1
    lea ax, word [bp + 0xc]          ; 0x2fa4
    push ax                          ; 0x2fa7
    lea ax, word [bp + 0xa]          ; 0x2fa8
    push ax                          ; 0x2fab
    lea ax, word [bp + 0x8]          ; 0x2fac
    push ax                          ; 0x2faf
    lea ax, word [bp + 0x6]          ; 0x2fb0
    push ax                          ; 0x2fb3
    lea ax, word [bp + 0x4]          ; 0x2fb4
    push ax                          ; 0x2fb7
    call loc_2ed4                    ; 0x2fb8
    add sp, byte 0x0e                ; 0x2fbb
    test ax, ax                      ; 0x2fbe
    je short @..api_idx_0008_3.l3    ; 0x2fc0
    mov ax, word [data_91d4]         ; 0x2fc2
    jmp short @..api_idx_0008_3.l2   ; 0x2fc5
    mov ax, 2                        ; 0x2fc7
    ret                              ; 0x2fca
