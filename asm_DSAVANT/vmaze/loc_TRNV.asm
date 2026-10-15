; auto-generated
loc_TRNV:
    mov ax, 0                        ; 0x2e0c
    call aztec_csav                  ; 0x2e0f
    push word [bp + 0x6]             ; 0x2e12
    mov ax, word [bp + 0x4]          ; 0x2e15
    dec ax                           ; 0x2e18
    push ax                          ; 0x2e19
    lea ax, word [bp + 0xc]          ; 0x2e1a
    push ax                          ; 0x2e1d
    lea ax, word [bp + 0xa]          ; 0x2e1e
    push ax                          ; 0x2e21
    lea ax, word [bp + 0x8]          ; 0x2e22
    push ax                          ; 0x2e25
    call api_idx_0004_HROJ           ; 0x2e26
    add sp, byte 0x0a                ; 0x2e29
    test ax, ax                      ; 0x2e2c
    je short @..loc_TRNV.l5          ; 0x2e2e
    mov ax, word [bss_5b6e]          ; 0x2e30
    mov cx, 2                        ; 0x2e33
    cwd                              ; 0x2e36
    idiv cx                          ; 0x2e37
    mov ax, dx                       ; 0x2e39
    test ax, ax                      ; 0x2e3b
    je short @..loc_TRNV.l1          ; 0x2e3d
    mov ax, cx                       ; 0x2e3f
    jmp short @..loc_TRNV.l4         ; 0x2e41
@..loc_TRNV.l1:
    mov ax, word [bss_5b6e]          ; 0x2e43
    cmp ax, strict word 6            ; 0x2e46
    je short @..loc_TRNV.l2          ; 0x2e49
    cmp word [bss_91a6], byte 0      ; 0x2e4b
    je short @..loc_TRNV.l3          ; 0x2e50
@..loc_TRNV.l2:
    mov ax, 0                        ; 0x2e52
    jmp short @..loc_TRNV.l4         ; 0x2e55
@..loc_TRNV.l3:
    mov ax, 4                        ; 0x2e57
@..loc_TRNV.l4:
    ret                              ; 0x2e5a
@..loc_TRNV.l5:
    mov ax, 4                        ; 0x2e5b
    push ax                          ; 0x2e5e
    mov ax, word [bp + 0xc]          ; 0x2e5f
    mov cx, 6                        ; 0x2e62
    shl ax, cl                       ; 0x2e65
    mov cx, word [bp + 0xa]          ; 0x2e67
    shl cx, 1                        ; 0x2e6a
    shl cx, 1                        ; 0x2e6c
    shl cx, 1                        ; 0x2e6e
    add ax, cx                       ; 0x2e70
    add ax, word [bp + 0x8]          ; 0x2e72
    push ax                          ; 0x2e75
    mov ax, word [bss_0e14]          ; 0x2e76
    add ax, 0x290                    ; 0x2e79
    push ax                          ; 0x2e7c
    call ds_leaf_loc_JIKQ            ; 0x2e7d
    add sp, byte 6                   ; 0x2e80
    ret                              ; 0x2e83
