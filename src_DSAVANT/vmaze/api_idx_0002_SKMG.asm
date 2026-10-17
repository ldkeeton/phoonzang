; auto-generated
api_idx_0002_SKMG:
    mov ax, 0xfffe                   ; 0x8f1a
    call aztec_csav                  ; 0x8f1d
    mov bx, word [bss_0e12]          ; 0x8f20
    mov si, word [bss_8f3e]          ; 0x8f24
    mov al, byte [bx + si + 0xb40]   ; 0x8f28
    sub ah, ah                       ; 0x8f2c
    mov word [bp - 0x0002], ax       ; 0x8f2e
@..api_idx_0002_SKMG.l1:
    push word [bp - 0x0002]          ; 0x8f31
    push word [bss_8f3e]             ; 0x8f34
    push word [bss_8f40]             ; 0x8f38
    push word [bss_8f42]             ; 0x8f3c
    call api_idx_0002_GSOS           ; 0x8f40
    add sp, byte 8                   ; 0x8f43
    mov word [bp - 0x0002], ax       ; 0x8f46
    cmp ax, strict word 0xffff       ; 0x8f49
    je short @..api_idx_0002_SKMG.l5 ; 0x8f4c
    mov bx, word [bss_0e12]          ; 0x8f4e
    mov si, ax                       ; 0x8f52
    cmp byte [bx + si + 0x5a0], 0xf  ; 0x8f54
    jne short @..api_idx_0002_SKMG.l4 ; 0x8f59
    shl ax, 1                        ; 0x8f5b
    mov si, ax                       ; 0x8f5d
    cmp word [bx + si + 0x1e0], byte 2 ; 0x8f5f
    je short @..api_idx_0002_SKMG.l2 ; 0x8f64
    mov ax, word [bss_82ee]          ; 0x8f66
    mov cx, 2                        ; 0x8f69
    cwd                              ; 0x8f6c
    idiv cx                          ; 0x8f6d
    mov ax, dx                       ; 0x8f6f
    cmp ax, word [bx + si + 0x1e0]   ; 0x8f71
    jne short @..api_idx_0002_SKMG.l4 ; 0x8f75
@..api_idx_0002_SKMG.l2:
    cmp word [bx + si + 0x1e0], byte 2 ; 0x8f77
    jne short @..api_idx_0002_SKMG.l3 ; 0x8f7c
    mov ax, 8                        ; 0x8f7e
    push ax                          ; 0x8f81
    call ds_app_HKIJ                 ; 0x8f82
    pop cx                           ; 0x8f85
@..api_idx_0002_SKMG.l3:
    push word [bp - 0x0002]          ; 0x8f86
    call api_idx_0004_IPQQ           ; 0x8f89
    pop cx                           ; 0x8f8c
    ret                              ; 0x8f8d
@..api_idx_0002_SKMG.l4:
    inc word [bp - 0x0002]           ; 0x8f8e
    jmp short @..api_idx_0002_SKMG.l1 ; 0x8f91
@..api_idx_0002_SKMG.l5:
    ret                              ; 0x8f93
