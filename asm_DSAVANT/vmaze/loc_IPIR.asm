; auto-generated
loc_IPIR:
    mov ax, 0                        ; 0x0f68
    call aztec_csav                  ; 0x0f6b
    call loc_PTHI                    ; 0x0f6e
    test ax, ax                      ; 0x0f71
    je short @..loc_IPIR.l1          ; 0x0f73
    mov ax, word [bss_82e8]          ; 0x0f75
    inc ax                           ; 0x0f78
    mov cx, 2                        ; 0x0f79
    cwd                              ; 0x0f7c
    idiv cx                          ; 0x0f7d
    mov word [bss_82e8], dx          ; 0x0f7f
    call loc_JGLI                    ; 0x0f83
    mov ax, 1                        ; 0x0f86
    ret                              ; 0x0f89
@..loc_IPIR.l1:
    mov ax, 0                        ; 0x0f8a
    ret                              ; 0x0f8d
