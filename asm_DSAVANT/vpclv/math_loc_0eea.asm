math_loc_0eea:
    mov ax, 0                        ; 0x0eea
    call ds_dispatch_f40b            ; 0x0eed
    push word [bp + 0x6]             ; 0x0ef0
    mov ax, 0xa                      ; 0x0ef3
    imul word [bp + 0x8]             ; 0x0ef6
    add ax, word [bp + 0x4]          ; 0x0ef9
    dec ax                           ; 0x0efc
    push ax                          ; 0x0efd
    call ds_dispatch_e809            ; 0x0efe
    add sp, byte 4                   ; 0x0f01
    mov ax, 7                        ; 0x0f04
    push ax                          ; 0x0f07
    mov ax, 0                        ; 0x0f08
    cmp word [bp + 0xa], byte 0      ; 0x0f0b
    je short @..math_loc_0eea.l1     ; 0x0f0f
    mov ax, 1                        ; 0x0f11
@..math_loc_0eea.l1:
    add ax, strict word 0x10         ; 0x0f14
    sub ah, ah                       ; 0x0f17
    push ax                          ; 0x0f19
    call ds_dispatch_e830            ; 0x0f1a
    add sp, byte 4                   ; 0x0f1d
    push word [bp + 0x6]             ; 0x0f20
    mov ax, 0xa                      ; 0x0f23
    imul word [bp + 0x8]             ; 0x0f26
    add ax, word [bp + 0x4]          ; 0x0f29
    push ax                          ; 0x0f2c
    call ds_dispatch_e809            ; 0x0f2d
    add sp, byte 4                   ; 0x0f30
    mov ax, 0                        ; 0x0f33
    push ax                          ; 0x0f36
    push ax                          ; 0x0f37
    call ds_dispatch_e823            ; 0x0f38
    add sp, byte 4                   ; 0x0f3b
    mov ax, data_0002                ; 0x0f3e
    push ax                          ; 0x0f41
    mov ax, word [bp + 0x8]          ; 0x0f42
    inc ax                           ; 0x0f45
    sub ah, ah                       ; 0x0f46
    push ax                          ; 0x0f48
    call ds_dispatch_e830            ; 0x0f49
    add sp, byte 4                   ; 0x0f4c
    cmp word [bp + 0x8], byte 0      ; 0x0f4f
    jne short @..math_loc_0eea.l2    ; 0x0f53
    cmp word [bp + 0xa], byte 0      ; 0x0f55
    jne short @..math_loc_0eea.l2    ; 0x0f59
    mov ax, 0xc2                     ; 0x0f5b
    push ax                          ; 0x0f5e
    mov ax, word [bp + 0x6]          ; 0x0f5f
    add ax, strict word 8            ; 0x0f62
    push ax                          ; 0x0f65
    mov ax, word [bp + 0x4]          ; 0x0f66
    dec ax                           ; 0x0f69
    push ax                          ; 0x0f6a
    push word [bp + 0x6]             ; 0x0f6b
    push ax                          ; 0x0f6e
    call ds_dispatch_e901            ; 0x0f6f
    add sp, byte 0x0a                ; 0x0f72
@..math_loc_0eea.l2:
    ret                              ; 0x0f75
