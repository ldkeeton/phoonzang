math_loc_2e12:
    mov ax, 0                        ; 0x2e12
    call ds_dispatch_f40b            ; 0x2e15
    push word [bp + 0x6]             ; 0x2e18
    mov ax, 0xa                      ; 0x2e1b
    imul word [bp + 0x8]             ; 0x2e1e
    add ax, word [bp + 0x4]          ; 0x2e21
    dec ax                           ; 0x2e24
    push ax                          ; 0x2e25
    call ds_dispatch_e809            ; 0x2e26
    add sp, byte 4                   ; 0x2e29
    mov ax, 7                        ; 0x2e2c
    push ax                          ; 0x2e2f
    mov ax, 0                        ; 0x2e30
    cmp word [bp + 0xa], byte 0      ; 0x2e33
    je short @..math_loc_2e12.l1     ; 0x2e37
    mov ax, 1                        ; 0x2e39
@..math_loc_2e12.l1:
    add ax, strict word 0x10         ; 0x2e3c
    sub ah, ah                       ; 0x2e3f
    push ax                          ; 0x2e41
    call ds_dispatch_e830            ; 0x2e42
    add sp, byte 4                   ; 0x2e45
    push word [bp + 0x6]             ; 0x2e48
    mov ax, 0xa                      ; 0x2e4b
    imul word [bp + 0x8]             ; 0x2e4e
    add ax, word [bp + 0x4]          ; 0x2e51
    push ax                          ; 0x2e54
    call ds_dispatch_e809            ; 0x2e55
    add sp, byte 4                   ; 0x2e58
    mov ax, 0                        ; 0x2e5b
    push ax                          ; 0x2e5e
    push ax                          ; 0x2e5f
    call ds_dispatch_e823            ; 0x2e60
    add sp, byte 4                   ; 0x2e63
    mov ax, data_0002                ; 0x2e66
    push ax                          ; 0x2e69
    mov ax, word [bp + 0x8]          ; 0x2e6a
    inc ax                           ; 0x2e6d
    sub ah, ah                       ; 0x2e6e
    push ax                          ; 0x2e70
    call ds_dispatch_e830            ; 0x2e71
    add sp, byte 4                   ; 0x2e74
    cmp word [bp + 0x8], byte 0      ; 0x2e77
    jne short @..math_loc_2e12.l2    ; 0x2e7b
    cmp word [bp + 0xa], byte 0      ; 0x2e7d
    jne short @..math_loc_2e12.l2    ; 0x2e81
    mov ax, 0xc2                     ; 0x2e83
    push ax                          ; 0x2e86
    mov ax, word [bp + 0x6]          ; 0x2e87
    add ax, strict word 8            ; 0x2e8a
    push ax                          ; 0x2e8d
    mov ax, word [bp + 0x4]          ; 0x2e8e
    dec ax                           ; 0x2e91
    push ax                          ; 0x2e92
    push word [bp + 0x6]             ; 0x2e93
    push ax                          ; 0x2e96
    call ds_dispatch_e901            ; 0x2e97
    add sp, byte 0x0a                ; 0x2e9a
@..math_loc_2e12.l2:
    ret                              ; 0x2e9d
