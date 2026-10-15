; auto-generated
api_idx_0004_JQSU:
    mov ax, 0xfffc                   ; 0x0d24
    call aztec_csav                  ; 0x0d27
@..api_idx_0004_JQSU.l1:
    mov ax, 0x20                     ; 0x0d2a
    push ax                          ; 0x0d2d
    push word [bp + 0x4]             ; 0x0d2e
    call strpos                      ; 0x0d31
    add sp, byte 4                   ; 0x0d34
    mov word [bp - 0x0002], ax       ; 0x0d37
    cmp ax, strict word 0xffff       ; 0x0d3a
    je short @..api_idx_0004_JQSU.l4 ; 0x0d3d
    mov bx, word [bp + 0x4]          ; 0x0d3f
    mov si, ax                       ; 0x0d42
    mov byte [bx + si], 0            ; 0x0d44
@..api_idx_0004_JQSU.l2:
    mov ax, 0x5f                     ; 0x0d47
    push ax                          ; 0x0d4a
    push word [bp + 0x4]             ; 0x0d4b
    call strpos                      ; 0x0d4e
    add sp, byte 4                   ; 0x0d51
    mov word [bp - 0x0004], ax       ; 0x0d54
    cmp ax, strict word 0xffff       ; 0x0d57
    je short @..api_idx_0004_JQSU.l3 ; 0x0d5a
    mov bx, word [bp + 0x4]          ; 0x0d5c
    mov si, ax                       ; 0x0d5f
    mov byte [bx + si], 0x20         ; 0x0d61
    jmp short @..api_idx_0004_JQSU.l2 ; 0x0d64
@..api_idx_0004_JQSU.l3:
    push word [bp + 0x4]             ; 0x0d66
    call api_idx_0090_KQNM           ; 0x0d69
    pop cx                           ; 0x0d6c
    mov ax, word [bp - 0x0002]       ; 0x0d6d
    add word [bp + 0x4], ax          ; 0x0d70
    add word [bp + 0x4], byte 1      ; 0x0d73
    jmp short @..api_idx_0004_JQSU.l1 ; 0x0d77
@..api_idx_0004_JQSU.l4:
    mov bx, word [bp + 0x4]          ; 0x0d79
    cmp byte [bx], 0                 ; 0x0d7c
    je short @..api_idx_0004_JQSU.l5 ; 0x0d7f
    push bx                          ; 0x0d81
    call api_idx_0090_KQNM           ; 0x0d82
    pop cx                           ; 0x0d85
@..api_idx_0004_JQSU.l5:
    ret                              ; 0x0d86
