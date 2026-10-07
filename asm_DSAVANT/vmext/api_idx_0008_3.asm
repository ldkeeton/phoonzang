api_idx_0008_3:
    mov ax, 0xfff8                   ; 0x1a1d
    call ds_dispatch_f40b            ; 0x1a20
    cmp word [bp + 0xe], byte 0      ; 0x1a23
    jne short @..api_idx_0008_3.l1   ; 0x1a27
    jmp near @..api_idx_0008_3.l3    ; 0x1a29
@..api_idx_0008_3.l1:
    mov ax, 0                        ; 0x1a2c
    push ax                          ; 0x1a2f
    push word [bp + 0xe]             ; 0x1a30
    lea ax, word [bp + 0xc]          ; 0x1a33
    push ax                          ; 0x1a36
    lea ax, word [bp + 0xa]          ; 0x1a37
    push ax                          ; 0x1a3a
    lea ax, word [bp + 0x8]          ; 0x1a3b
    push ax                          ; 0x1a3e
    lea ax, word [bp + 0x6]          ; 0x1a3f
    push ax                          ; 0x1a42
    lea ax, word [bp + 0x4]          ; 0x1a43
    push ax                          ; 0x1a46
    call loc_1963                    ; 0x1a47
    add sp, byte 0x0e                ; 0x1a4a
    test ax, ax                      ; 0x1a4d
    je short @..api_idx_0008_3.l3    ; 0x1a4f
    mov ax, word [data_91a8]         ; 0x1a51
    jmp short @..api_idx_0008_3.l2   ; 0x1a54
    mov ax, 2                        ; 0x1a56
    ret                              ; 0x1a59
