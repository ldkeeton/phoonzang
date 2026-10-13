api_idx_0004_7:
    mov ax, 0xfffc                   ; 0x3c18
    call aztec_csav                  ; 0x3c1b
@..api_idx_0004_7.l1:
    mov ax, 0x20                     ; 0x3c1e
    push ax                          ; 0x3c21
    push word [bp + 0x4]             ; 0x3c22
    call strlen                      ; 0x3c25
    add sp, byte 4                   ; 0x3c28
    mov word [bp - 0x0002], ax       ; 0x3c2b
    cmp ax, strict word 0xffff       ; 0x3c2e
    je short @..api_idx_0004_7.l4    ; 0x3c31
    mov bx, word [bp + 0x4]          ; 0x3c33
    mov si, ax                       ; 0x3c36
    mov byte [bx + si], 0            ; 0x3c38
@..api_idx_0004_7.l2:
    mov ax, 0x5f                     ; 0x3c3b
    push ax                          ; 0x3c3e
    push word [bp + 0x4]             ; 0x3c3f
    call strlen                      ; 0x3c42
    add sp, byte 4                   ; 0x3c45
    mov word [bp - 0x0004], ax       ; 0x3c48
    cmp ax, strict word 0xffff       ; 0x3c4b
    je short @..api_idx_0004_7.l3    ; 0x3c4e
    mov bx, word [bp + 0x4]          ; 0x3c50
    mov si, ax                       ; 0x3c53
    mov byte [bx + si], 0x20         ; 0x3c55
    jmp short @..api_idx_0004_7.l2   ; 0x3c58
@..api_idx_0004_7.l3:
    push word [bp + 0x4]             ; 0x3c5a
    call api_idx_0084                ; 0x3c5d
    pop cx                           ; 0x3c60
    mov ax, word [bp - 0x0002]       ; 0x3c61
    add word [bp + 0x4], ax          ; 0x3c64
    add word [bp + 0x4], byte 1      ; 0x3c67
    jmp short @..api_idx_0004_7.l1   ; 0x3c6b
@..api_idx_0004_7.l4:
    mov bx, word [bp + 0x4]          ; 0x3c6d
    cmp byte [bx], 0                 ; 0x3c70
    je short @..api_idx_0004_7.l5    ; 0x3c73
    push bx                          ; 0x3c75
    call api_idx_0084                ; 0x3c76
    pop cx                           ; 0x3c79
@..api_idx_0004_7.l5:
    ret                              ; 0x3c7a
