api_idx_0004_5:
    mov ax, 0xfffc                   ; 0x4e3b
    call ds_aztec_csav               ; 0x4e3e
    mov word [bss_90d6], 5           ; 0x4e41
    mov word [bss_9386], 2           ; 0x4e47
    mov word [bss_9388], 2           ; 0x4e4d
    mov word [bss_938a], 3           ; 0x4e53
    mov word [bss_938c], 5           ; 0x4e59
    mov ax, 3                        ; 0x4e5f
    push ax                          ; 0x4e62
    call api_idx_0006                ; 0x4e63
    pop cx                           ; 0x4e66
    mov ax, 3                        ; 0x4e67
    push ax                          ; 0x4e6a
    call loc_02af                    ; 0x4e6b
    pop cx                           ; 0x4e6e
    call api_idx_00d4                ; 0x4e6f
    mov word [bp - 0x0004], ax       ; 0x4e72
    mov ax, 3                        ; 0x4e75
    push ax                          ; 0x4e78
    call api_idx_0006                ; 0x4e79
    pop cx                           ; 0x4e7c
    mov ax, 3                        ; 0x4e7d
    push ax                          ; 0x4e80
    call loc_02af                    ; 0x4e81
    pop cx                           ; 0x4e84
    cmp word [bp - 0x0004], byte 0   ; 0x4e85
    je short @..api_idx_0004_5.l1    ; 0x4e89
    mov word [bss_830a], 0xe         ; 0x4e8b
    jmp short @..api_idx_0004_5.l2   ; 0x4e91
@..api_idx_0004_5.l1:
    call api_idx_0002_3              ; 0x4e93
    mov word [bss_830a], 0xd         ; 0x4e96
@..api_idx_0004_5.l2:
    ret                              ; 0x4e9c
