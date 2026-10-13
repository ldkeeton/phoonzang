ds_app_1cf8: ; Aztec csav frame=0x0002
    mov ax, 0xfffe                   ; 0x1cf8
    call aztec_csav                  ; 0x1cfb
    mov word [bp - 0x0002], 0        ; 0x1cfe
    cmp word [bp + 0xe], byte 0      ; 0x1d03
    jle short @..ds_app_1cf8.l1      ; 0x1d07
    mov ax, word [bp + 0xc]          ; 0x1d09
    mov bx, 0x64                     ; 0x1d0c
    imul bx                          ; 0x1d0f
    push dx                          ; 0x1d11
    push ax                          ; 0x1d12
    mov ax, word [bp + 0xe]          ; 0x1d13
    mov bx, 0x64                     ; 0x1d16
    imul bx                          ; 0x1d19
    push ax                          ; 0x1d1b
    push dx                          ; 0x1d1c
    mov ax, word [bp + 0xa]          ; 0x1d1d
    cwd                              ; 0x1d20
    mov cx, ax                       ; 0x1d21
    mov bx, dx                       ; 0x1d23
    pop dx                           ; 0x1d25
    pop ax                           ; 0x1d26
    call aztec_ldv                   ; 0x1d27
    mov cx, ax                       ; 0x1d2a
    mov bx, dx                       ; 0x1d2c
    pop ax                           ; 0x1d2e
    pop dx                           ; 0x1d2f
    call aztec_ldv                   ; 0x1d30
    add ax, strict word 1            ; 0x1d33
    adc dx, byte 0                   ; 0x1d36
    mov word [bp - 0x0002], ax       ; 0x1d39
@..ds_app_1cf8.l1:
    mov ax, word [bp + 0xa]          ; 0x1d3c
    mov cx, word [bp + 0xc]          ; 0x1d3f
    cmp cx, word [bp + 0xe]          ; 0x1d42
    je short @..ds_app_1cf8.l2       ; 0x1d45
    mov ax, 0                        ; 0x1d47
    cmp cx, byte 0                   ; 0x1d4a
    jle short @..ds_app_1cf8.l2      ; 0x1d4d
    mov ax, word [bp - 0x0002]       ; 0x1d4f
@..ds_app_1cf8.l2:
    mov word [bp - 0x0002], ax       ; 0x1d52
    cmp ax, strict word 0            ; 0x1d55
    jle short @..ds_app_1cf8.l3      ; 0x1d58
    push word [bp + 0x10]            ; 0x1d5a
    mov ax, word [bp + 0x6]          ; 0x1d5d
    add ax, word [bp + 0xa]          ; 0x1d60
    dec ax                           ; 0x1d63
    push ax                          ; 0x1d64
    mov ax, word [bp + 0x4]          ; 0x1d65
    add ax, word [bp + 0x8]          ; 0x1d68
    dec ax                           ; 0x1d6b
    push ax                          ; 0x1d6c
    mov ax, word [bp + 0x6]          ; 0x1d6d
    add ax, word [bp + 0xa]          ; 0x1d70
    sub ax, word [bp - 0x0002]       ; 0x1d73
    push ax                          ; 0x1d76
    push word [bp + 0x4]             ; 0x1d77
    call ds_loc_3b48                 ; 0x1d7a
    add sp, byte 0x0a                ; 0x1d7d
@..ds_app_1cf8.l3:
    ret                              ; 0x1d80
