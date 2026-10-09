api_idx_000a_2:
    mov ax, 0xfff6                   ; 0x2dd4
    call ds_dispatch_f40b            ; 0x2dd7
    mov byte [bp - 0x000a], 1        ; 0x2dda
    mov byte [bp - 0x0009], 0        ; 0x2dde
    mov ax, 0                        ; 0x2de2
    push ax                          ; 0x2de5
    push ax                          ; 0x2de6
    lea ax, word [bp - 0x000a]       ; 0x2de7
    push ax                          ; 0x2dea
    mov ax, 0                        ; 0x2deb
    push ax                          ; 0x2dee
    mov ax, 0xc7                     ; 0x2def
    push ax                          ; 0x2df2
    mov ax, 0                        ; 0x2df3
    push ax                          ; 0x2df6
    mov ax, 0x13f                    ; 0x2df7
    push ax                          ; 0x2dfa
    mov ax, 0                        ; 0x2dfb
    push ax                          ; 0x2dfe
    mov ax, 0x73                     ; 0x2dff
    push ax                          ; 0x2e02
    mov ax, 0x32                     ; 0x2e03
    push ax                          ; 0x2e06
    mov ax, 1                        ; 0x2e07
    push ax                          ; 0x2e0a
    call ds_dispatch_efd1            ; 0x2e0b
    add sp, byte 0x16                ; 0x2e0e
    ret                              ; 0x2e11
loc_2e12:
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
    je short @..local.l28            ; 0x2e37
    mov ax, 1                        ; 0x2e39
@..local.l28:
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
    jne short @..local.l29           ; 0x2e7b
    cmp word [bp + 0xa], byte 0      ; 0x2e7d
    jne short @..local.l29           ; 0x2e81
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
@..local.l29:
    ret                              ; 0x2e9d
loc_2e9e:
    mov ax, 0                        ; 0x2e9e
    call ds_dispatch_f40b            ; 0x2ea1
    mov ax, word [bp + 0x6]          ; 0x2ea4
    add ax, strict word 6            ; 0x2ea7
    push ax                          ; 0x2eaa
    mov ax, word [bp + 0x4]          ; 0x2eab
    add ax, strict word 0x14         ; 0x2eae
    push ax                          ; 0x2eb1
    push word [bp + 0x6]             ; 0x2eb2
    push word [bp + 0x4]             ; 0x2eb5
    call ds_dispatch_bd98            ; 0x2eb8
    add sp, byte 8                   ; 0x2ebb
    mov ax, word [bp + 0x8]          ; 0x2ebe
    shl ax, 1                        ; 0x2ec1
    shl ax, 1                        ; 0x2ec3
    mov bx, ax                       ; 0x2ec5
    db 0xff, 0xb7, 0x08, 0x00 ; push word [bx + 0x8]
    mov ax, word [bp + 0x6]          ; 0x2ecb
    add ax, strict word 6            ; 0x2ece
    push ax                          ; 0x2ed1
    mov ax, word [bp + 0x4]          ; 0x2ed2
    add ax, strict word 0x14         ; 0x2ed5
    push ax                          ; 0x2ed8
    push word [bp + 0x6]             ; 0x2ed9
    push word [bp + 0x4]             ; 0x2edc
    call ds_dispatch_e901            ; 0x2edf
    add sp, byte 0x0a                ; 0x2ee2
    mov ax, word [bp + 0x6]          ; 0x2ee5
    inc ax                           ; 0x2ee8
    push ax                          ; 0x2ee9
    mov ax, word [bp + 0x4]          ; 0x2eea
    inc ax                           ; 0x2eed
    inc ax                           ; 0x2eee
    push ax                          ; 0x2eef
    call ds_dispatch_e809            ; 0x2ef0
    add sp, byte 4                   ; 0x2ef3
    cmp word [bp + 0xa], byte 0      ; 0x2ef6
    jle short @..local.l30           ; 0x2efa
    mov ax, word [bp + 0xa]          ; 0x2efc
    cmp ax, word [bp + 0xc]          ; 0x2eff
    jg short @..local.l30            ; 0x2f02
    mov ax, 0                        ; 0x2f04
    push ax                          ; 0x2f07
    mov ax, 1                        ; 0x2f08
    push ax                          ; 0x2f0b
    call ds_dispatch_e823            ; 0x2f0c
    add sp, byte 4                   ; 0x2f0f
    mov ax, 0                        ; 0x2f12
    push ax                          ; 0x2f15
    mov ax, 3                        ; 0x2f16
    push ax                          ; 0x2f19
    push word [bp + 0xa]             ; 0x2f1a
    call ds_dispatch_b2e7            ; 0x2f1d
    add sp, byte 6                   ; 0x2f20
    jmp short @..local.l31           ; 0x2f23
@..local.l30:
    mov ax, 0                        ; 0x2f25
    push ax                          ; 0x2f28
    push ax                          ; 0x2f29
    call ds_dispatch_e823            ; 0x2f2a
    add sp, byte 4                   ; 0x2f2d
    mov ax, 0                        ; 0x2f30
    push ax                          ; 0x2f33
    mov ax, 0x92d2                   ; 0x2f34
    push ax                          ; 0x2f37
    call ds_dispatch_e84e            ; 0x2f38
    add sp, byte 4                   ; 0x2f3b
@..local.l31:
    ret                              ; 0x2f3e
