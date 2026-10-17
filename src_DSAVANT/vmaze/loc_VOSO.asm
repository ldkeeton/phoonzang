; auto-generated
loc_VOSO:
    mov ax, 0                        ; 0x2ed4
    call aztec_csav                  ; 0x2ed7
    mov ax, word [bss_82ee]          ; 0x2eda
    jmp short @..loc_VOSO.l5         ; 0x2edd
@..loc_VOSO.l1:
    mov ax, word [bp + 0xe]          ; 0x2edf
    mov bx, word [bp + 0x4]          ; 0x2ee2
    add word [bx], ax                ; 0x2ee5
    mov ax, word [bp + 0x10]         ; 0x2ee7
    mov bx, word [bp + 0x6]          ; 0x2eea
    add word [bx], ax                ; 0x2eed
    jmp short @..loc_VOSO.l6         ; 0x2eef
@..loc_VOSO.l2:
    mov ax, word [bp + 0x10]         ; 0x2ef1
    mov bx, word [bp + 0x4]          ; 0x2ef4
    add word [bx], ax                ; 0x2ef7
    mov ax, word [bp + 0xe]          ; 0x2ef9
    mov bx, word [bp + 0x6]          ; 0x2efc
    sub word [bx], ax                ; 0x2eff
    jmp short @..loc_VOSO.l6         ; 0x2f01
@..loc_VOSO.l3:
    mov ax, word [bp + 0xe]          ; 0x2f03
    mov bx, word [bp + 0x4]          ; 0x2f06
    sub word [bx], ax                ; 0x2f09
    mov ax, word [bp + 0x10]         ; 0x2f0b
    mov bx, word [bp + 0x6]          ; 0x2f0e
    sub word [bx], ax                ; 0x2f11
    jmp short @..loc_VOSO.l6         ; 0x2f13
@..loc_VOSO.l4:
    mov ax, word [bp + 0x10]         ; 0x2f15
    mov bx, word [bp + 0x4]          ; 0x2f18
    sub word [bx], ax                ; 0x2f1b
    mov ax, word [bp + 0xe]          ; 0x2f1d
    mov bx, word [bp + 0x6]          ; 0x2f20
    add word [bx], ax                ; 0x2f23
    jmp short @..loc_VOSO.l6         ; 0x2f25
@..loc_VOSO.l5:
    cmp ax, strict word 0            ; 0x2f27
    je short @..loc_VOSO.l1          ; 0x2f2a
    cmp ax, strict word 1            ; 0x2f2c
    je short @..loc_VOSO.l2          ; 0x2f2f
    cmp ax, strict word 2            ; 0x2f31
    je short @..loc_VOSO.l3          ; 0x2f34
    cmp ax, strict word 3            ; 0x2f36
    je short @..loc_VOSO.l4          ; 0x2f39
@..loc_VOSO.l6:
    mov bx, word [bp + 0x6]          ; 0x2f3b
    push word [bx]                   ; 0x2f3e
    mov bx, word [bp + 0x4]          ; 0x2f40
    push word [bx]                   ; 0x2f43
    push word [bp + 0xc]             ; 0x2f45
    push word [bp + 0xa]             ; 0x2f48
    push word [bp + 0x8]             ; 0x2f4b
    call api_idx_0004_QVPP           ; 0x2f4e
    add sp, byte 0x0a                ; 0x2f51
    ret                              ; 0x2f54
loc_RRJG:
    mov ax, 0                        ; 0x2f55
    call aztec_csav                  ; 0x2f58
    mov ax, 6                        ; 0x2f5b
    push ax                          ; 0x2f5e
    push word [bp + 0x4]             ; 0x2f5f
    mov ax, word [bss_0e14]          ; 0x2f62
    add ax, 0x4b0                    ; 0x2f65
    push ax                          ; 0x2f68
    call ds_leaf_loc_NPSL            ; 0x2f69
    add sp, byte 6                   ; 0x2f6c
    mov bx, word [bp + 0x6]          ; 0x2f6f
    mov word [bx], ax                ; 0x2f72
    mov ax, 2                        ; 0x2f74
    push ax                          ; 0x2f77
    push word [bp + 0x4]             ; 0x2f78
    mov ax, word [bss_0e14]          ; 0x2f7b
    add ax, 0x7b0                    ; 0x2f7e
    push ax                          ; 0x2f81
    call ds_leaf_loc_NPSL            ; 0x2f82
    add sp, byte 6                   ; 0x2f85
    mov bx, word [bp + 0x8]          ; 0x2f88
    mov word [bx], ax                ; 0x2f8b
    ret                              ; 0x2f8d
