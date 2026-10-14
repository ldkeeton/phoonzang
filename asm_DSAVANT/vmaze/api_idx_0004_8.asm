; auto-generated
api_idx_0004_8:
    mov ax, 0xfffc                   ; 0x6c0a
    call aztec_csav                  ; 0x6c0d
    cmp word [bss_9b4c], byte 3      ; 0x6c10
    jle short @..api_idx_0004_8.l1   ; 0x6c15
    mov ax, 0                        ; 0x6c17
    push ax                          ; 0x6c1a
    call loc_6b5a                    ; 0x6c1b
    pop cx                           ; 0x6c1e
@..api_idx_0004_8.l1:
    mov bx, word [bp + 0x4]          ; 0x6c1f
    cmp byte [bx], 0                 ; 0x6c22
    jne short @..api_idx_0004_8.l2   ; 0x6c25
    inc word [bss_9b4c]              ; 0x6c27
    ret                              ; 0x6c2b
@..api_idx_0004_8.l2:
    mov ax, 2                        ; 0x6c2c
    push ax                          ; 0x6c2f
    push bx                          ; 0x6c30
    call ds_loc_3aca                 ; 0x6c31
    add sp, byte 4                   ; 0x6c34
    inc ax                           ; 0x6c37
    mov cx, 2                        ; 0x6c38
    cwd                              ; 0x6c3b
    idiv cx                          ; 0x6c3c
    mov cx, ax                       ; 0x6c3e
    mov ax, 0xa0                     ; 0x6c40
    sub ax, cx                       ; 0x6c43
    mov word [bp - 0x0002], ax       ; 0x6c45
    push word [bp + 0x4]             ; 0x6c48
    call aztec_strlen                ; 0x6c4b
    pop cx                           ; 0x6c4e
    dec ax                           ; 0x6c4f
    mov word [bp - 0x0004], ax       ; 0x6c50
    mov bx, word [bp + 0x4]          ; 0x6c53
    mov si, ax                       ; 0x6c56
    mov al, byte [bx + si]           ; 0x6c58
    sub ah, ah                       ; 0x6c5a
    jmp short @..api_idx_0004_8.l5   ; 0x6c5c
@..api_idx_0004_8.l3:
    mov bx, word [bp + 0x4]          ; 0x6c5e
    mov si, word [bp - 0x0004]       ; 0x6c61
    mov byte [bx + si], 0            ; 0x6c64
    mov word [bp - 0x0002], 0x44     ; 0x6c67
    jmp short @..api_idx_0004_8.l6   ; 0x6c6c
@..api_idx_0004_8.l4:
    mov bx, word [bp + 0x4]          ; 0x6c6e
    mov si, word [bp - 0x0004]       ; 0x6c71
    mov byte [bx + si], 0            ; 0x6c74
    mov ax, word [bss_9b4e]          ; 0x6c77
    mov word [bp - 0x0002], ax       ; 0x6c7a
    jmp short @..api_idx_0004_8.l6   ; 0x6c7d
@..api_idx_0004_8.l5:
    cmp ax, strict word 0x24         ; 0x6c7f
    je short @..api_idx_0004_8.l3    ; 0x6c82
    cmp ax, strict word 0x5e         ; 0x6c84
    je short @..api_idx_0004_8.l4    ; 0x6c87
@..api_idx_0004_8.l6:
    mov ax, 0xc                      ; 0x6c89
    imul word [bss_9b4c]             ; 0x6c8c
    add ax, 0x92                     ; 0x6c90
    push ax                          ; 0x6c93
    push word [bp - 0x0002]          ; 0x6c94
    call thunk                       ; 0x6c97
    add sp, byte 4                   ; 0x6c9a
    mov ax, 0                        ; 0x6c9d
    push ax                          ; 0x6ca0
    mov ax, 0x55                     ; 0x6ca1
    push ax                          ; 0x6ca4
    call thunk_3                     ; 0x6ca5
    add sp, byte 4                   ; 0x6ca8
    mov ax, 2                        ; 0x6cab
    push ax                          ; 0x6cae
    push word [bp + 0x4]             ; 0x6caf
    call ds_string_loc_3a95          ; 0x6cb2
    add sp, byte 4                   ; 0x6cb5
    mov bx, word [bp + 0x4]          ; 0x6cb8
    mov byte [bx], 0                 ; 0x6cbb
    mov ax, word [bp - 0x0002]       ; 0x6cbe
    mov word [bss_9b4e], ax          ; 0x6cc1
    inc word [bss_9b4c]              ; 0x6cc4
    ret                              ; 0x6cc8
