; auto-generated
loc_HIUG:
    mov ax, 0                        ; 0x6c5c
    call aztec_csav                  ; 0x6c5f
    cmp word [bss_a4a4], byte 0      ; 0x6c62
    jle short @..loc_HIUG.l1         ; 0x6c67
    call loc_MUTS                    ; 0x6c69
    test ax, ax                      ; 0x6c6c
    je short @..loc_HIUG.l1          ; 0x6c6e
    call api_idx_000a_KPKK           ; 0x6c70
    mov ax, 0x91                     ; 0x6c73
    push ax                          ; 0x6c76
    mov ax, 0x13f                    ; 0x6c77
    push ax                          ; 0x6c7a
    mov ax, 0                        ; 0x6c7b
    push ax                          ; 0x6c7e
    push ax                          ; 0x6c7f
    call thunk_4                     ; 0x6c80
    add sp, byte 8                   ; 0x6c83
@..loc_HIUG.l1:
    ret                              ; 0x6c86
