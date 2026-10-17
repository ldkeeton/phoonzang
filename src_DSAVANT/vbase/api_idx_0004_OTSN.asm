; auto-generated
api_idx_0004_OTSN:
    mov ax, 0xfffc                   ; 0x6f16
    call aztec_csav                  ; 0x6f19
@..api_idx_0004_OTSN.l1:
    mov ax, 0x20                     ; 0x6f1c
    push ax                          ; 0x6f1f
    push word [bp + 0x4]             ; 0x6f20
    call strpos                      ; 0x6f23
    add sp, byte 4                   ; 0x6f26
    mov word [bp - 0x0002], ax       ; 0x6f29
    cmp ax, strict word 0xffff       ; 0x6f2c
    je short @..api_idx_0004_OTSN.l4 ; 0x6f2f
    mov bx, word [bp + 0x4]          ; 0x6f31
    mov si, ax                       ; 0x6f34
    mov byte [bx + si], 0            ; 0x6f36
@..api_idx_0004_OTSN.l2:
    mov ax, 0x5f                     ; 0x6f39
    push ax                          ; 0x6f3c
    push word [bp + 0x4]             ; 0x6f3d
    call strpos                      ; 0x6f40
    add sp, byte 4                   ; 0x6f43
    mov word [bp - 0x0004], ax       ; 0x6f46
    cmp ax, strict word 0xffff       ; 0x6f49
    je short @..api_idx_0004_OTSN.l3 ; 0x6f4c
    mov bx, word [bp + 0x4]          ; 0x6f4e
    mov si, ax                       ; 0x6f51
    mov byte [bx + si], 0x20         ; 0x6f53
    jmp short @..api_idx_0004_OTSN.l2 ; 0x6f56
@..api_idx_0004_OTSN.l3:
    push word [bp + 0x4]             ; 0x6f58
    call loc_VMSS                    ; 0x6f5b
    pop cx                           ; 0x6f5e
    mov ax, word [bp - 0x0002]       ; 0x6f5f
    add word [bp + 0x4], ax          ; 0x6f62
    add word [bp + 0x4], byte 1      ; 0x6f65
    jmp short @..api_idx_0004_OTSN.l1 ; 0x6f69
@..api_idx_0004_OTSN.l4:
    mov bx, word [bp + 0x4]          ; 0x6f6b
    cmp byte [bx], 0                 ; 0x6f6e
    je short @..api_idx_0004_OTSN.l5 ; 0x6f71
    push bx                          ; 0x6f73
    call loc_VMSS                    ; 0x6f74
    pop cx                           ; 0x6f77
@..api_idx_0004_OTSN.l5:
    ret                              ; 0x6f78
