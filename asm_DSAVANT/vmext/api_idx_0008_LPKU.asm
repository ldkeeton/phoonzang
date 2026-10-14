; auto-generated
api_idx_0008_LPKU:
    mov ax, 0xfff8                   ; 0x1e4f
    call aztec_csav                  ; 0x1e52
    cmp word [bp + 0x10], byte 0     ; 0x1e55
    je short @..api_idx_0008_LPKU.l2 ; 0x1e59
    mov ax, 0                        ; 0x1e5b
    push ax                          ; 0x1e5e
    push word [bp + 0x10]            ; 0x1e5f
    lea ax, word [bp + 0xe]          ; 0x1e62
    push ax                          ; 0x1e65
    lea ax, word [bp + 0xc]          ; 0x1e66
    push ax                          ; 0x1e69
    lea ax, word [bp + 0xa]          ; 0x1e6a
    push ax                          ; 0x1e6d
    lea ax, word [bp + 0x8]          ; 0x1e6e
    push ax                          ; 0x1e71
    lea ax, word [bp + 0x6]          ; 0x1e72
    push ax                          ; 0x1e75
    call loc_1963                    ; 0x1e76
    add sp, byte 0x0e                ; 0x1e79
    test ax, ax                      ; 0x1e7c
    je short @..api_idx_0008_LPKU.l2 ; 0x1e7e
    mov ax, word [bss_91a8]          ; 0x1e80
    jmp short @..api_idx_0008_LPKU.l1 ; 0x1e83
