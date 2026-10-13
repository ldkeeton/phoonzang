api_idx_0004_15:
    mov ax, 0xfffc                   ; 0x8c2a
    call aztec_csav                  ; 0x8c2d
    mov word [bp - 0x0004], 0x20     ; 0x8c30
    mov word [bp - 0x0002], 0        ; 0x8c35
    jmp short @..api_idx_0004_15.l3  ; 0x8c3a
@..api_idx_0004_15.l1:
    cmp word [bp - 0x0004], byte 0x20 ; 0x8c3c
    je short @..api_idx_0004_15.l2   ; 0x8c40
    mov bx, word [bp + 0x4]          ; 0x8c42
    mov si, word [bp - 0x0002]       ; 0x8c45
    cmp byte [bx + si], 0x41         ; 0x8c48
    jb short @..api_idx_0004_15.l2   ; 0x8c4b
    cmp byte [bx + si], 0x5a         ; 0x8c4d
    ja short @..api_idx_0004_15.l2   ; 0x8c50
    add byte [bx + si], 0x20         ; 0x8c52
@..api_idx_0004_15.l2:
    mov bx, word [bp + 0x4]          ; 0x8c55
    mov si, word [bp - 0x0002]       ; 0x8c58
    mov al, byte [bx + si]           ; 0x8c5b
    sub ah, ah                       ; 0x8c5d
    mov word [bp - 0x0004], ax       ; 0x8c5f
    inc word [bp - 0x0002]           ; 0x8c62
@..api_idx_0004_15.l3:
    push word [bp + 0x4]             ; 0x8c65
    call aztec_strlen                ; 0x8c68
    pop cx                           ; 0x8c6b
    cmp ax, word [bp - 0x0002]       ; 0x8c6c
    jg short @..api_idx_0004_15.l1   ; 0x8c6f
    ret                              ; 0x8c71
