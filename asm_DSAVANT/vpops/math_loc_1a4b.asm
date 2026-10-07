math_loc_1a4b:
    mov ax, 0                        ; 0x1a4b
    call ds_dispatch_f40b            ; 0x1a4e
    push word [bp + 0x6]             ; 0x1a51
    mov ax, 0xa                      ; 0x1a54
    imul word [bp + 0x8]             ; 0x1a57
    add ax, word [bp + 0x4]          ; 0x1a5a
    dec ax                           ; 0x1a5d
    push ax                          ; 0x1a5e
    call ds_dispatch_e809            ; 0x1a5f
    add sp, byte 4                   ; 0x1a62
    mov ax, 7                        ; 0x1a65
    push ax                          ; 0x1a68
    mov ax, 0                        ; 0x1a69
    cmp word [bp + 0xa], byte 0      ; 0x1a6c
    je short @..math_loc_1a4b.l1     ; 0x1a70
    mov ax, 1                        ; 0x1a72
@..math_loc_1a4b.l1:
    add ax, strict word 0x10         ; 0x1a75
    sub ah, ah                       ; 0x1a78
    push ax                          ; 0x1a7a
    call ds_dispatch_e830            ; 0x1a7b
    add sp, byte 4                   ; 0x1a7e
    push word [bp + 0x6]             ; 0x1a81
    mov ax, 0xa                      ; 0x1a84
    imul word [bp + 0x8]             ; 0x1a87
    add ax, word [bp + 0x4]          ; 0x1a8a
    push ax                          ; 0x1a8d
    call ds_dispatch_e809            ; 0x1a8e
    add sp, byte 4                   ; 0x1a91
    mov ax, 0                        ; 0x1a94
    push ax                          ; 0x1a97
    push ax                          ; 0x1a98
    call ds_dispatch_e823            ; 0x1a99
    add sp, byte 4                   ; 0x1a9c
    mov ax, data_0002                ; 0x1a9f
    push ax                          ; 0x1aa2
    mov ax, word [bp + 0x8]          ; 0x1aa3
    inc ax                           ; 0x1aa6
    sub ah, ah                       ; 0x1aa7
    push ax                          ; 0x1aa9
    call ds_dispatch_e830            ; 0x1aaa
    add sp, byte 4                   ; 0x1aad
    cmp word [bp + 0x8], byte 0      ; 0x1ab0
    jne short @..math_loc_1a4b.l2    ; 0x1ab4
    cmp word [bp + 0xa], byte 0      ; 0x1ab6
    jne short @..math_loc_1a4b.l2    ; 0x1aba
    mov ax, 0xc2                     ; 0x1abc
    push ax                          ; 0x1abf
    mov ax, word [bp + 0x6]          ; 0x1ac0
    add ax, strict word 8            ; 0x1ac3
    push ax                          ; 0x1ac6
    mov ax, word [bp + 0x4]          ; 0x1ac7
    dec ax                           ; 0x1aca
    push ax                          ; 0x1acb
    push word [bp + 0x6]             ; 0x1acc
    push ax                          ; 0x1acf
    call ds_dispatch_e901            ; 0x1ad0
    add sp, byte 0x0a                ; 0x1ad3
@..math_loc_1a4b.l2:
    ret                              ; 0x1ad6
