math_loc_2a2d:
    mov ax, 0                        ; 0x2a2d
    call ds_dispatch_f40b            ; 0x2a30
    push word [bp + 0x6]             ; 0x2a33
    mov ax, 0xa                      ; 0x2a36
    imul word [bp + 0x8]             ; 0x2a39
    add ax, word [bp + 0x4]          ; 0x2a3c
    dec ax                           ; 0x2a3f
    push ax                          ; 0x2a40
    call ds_dispatch_e809            ; 0x2a41
    add sp, byte 4                   ; 0x2a44
    mov ax, 7                        ; 0x2a47
    push ax                          ; 0x2a4a
    mov ax, 0                        ; 0x2a4b
    cmp word [bp + 0xa], byte 0      ; 0x2a4e
    je short @..math_loc_2a2d.l1     ; 0x2a52
    mov ax, 1                        ; 0x2a54
@..math_loc_2a2d.l1:
    add ax, strict word 0x10         ; 0x2a57
    sub ah, ah                       ; 0x2a5a
    push ax                          ; 0x2a5c
    call ds_dispatch_e830            ; 0x2a5d
    add sp, byte 4                   ; 0x2a60
    push word [bp + 0x6]             ; 0x2a63
    mov ax, 0xa                      ; 0x2a66
    imul word [bp + 0x8]             ; 0x2a69
    add ax, word [bp + 0x4]          ; 0x2a6c
    push ax                          ; 0x2a6f
    call ds_dispatch_e809            ; 0x2a70
    add sp, byte 4                   ; 0x2a73
    mov ax, 0                        ; 0x2a76
    push ax                          ; 0x2a79
    push ax                          ; 0x2a7a
    call ds_dispatch_e823            ; 0x2a7b
    add sp, byte 4                   ; 0x2a7e
    mov ax, data_0002                ; 0x2a81
    push ax                          ; 0x2a84
    mov ax, word [bp + 0x8]          ; 0x2a85
    inc ax                           ; 0x2a88
    sub ah, ah                       ; 0x2a89
    push ax                          ; 0x2a8b
    call ds_dispatch_e830            ; 0x2a8c
    add sp, byte 4                   ; 0x2a8f
    cmp word [bp + 0x8], byte 0      ; 0x2a92
    jne short @..math_loc_2a2d.l2    ; 0x2a96
    cmp word [bp + 0xa], byte 0      ; 0x2a98
    jne short @..math_loc_2a2d.l2    ; 0x2a9c
    mov ax, 0xc2                     ; 0x2a9e
    push ax                          ; 0x2aa1
    mov ax, word [bp + 0x6]          ; 0x2aa2
    add ax, strict word 8            ; 0x2aa5
    push ax                          ; 0x2aa8
    mov ax, word [bp + 0x4]          ; 0x2aa9
    dec ax                           ; 0x2aac
    push ax                          ; 0x2aad
    push word [bp + 0x6]             ; 0x2aae
    push ax                          ; 0x2ab1
    call ds_dispatch_e901            ; 0x2ab2
    add sp, byte 0x0a                ; 0x2ab5
@..math_loc_2a2d.l2:
    ret                              ; 0x2ab8
