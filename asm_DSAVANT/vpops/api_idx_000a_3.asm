api_idx_000a_3:
    mov ax, 0xfff6                   ; 0x1a0d
    call ds_aztec_csav               ; 0x1a10
    mov byte [bp - 0x000a], 1        ; 0x1a13
    mov byte [bp - 0x0009], 0        ; 0x1a17
    mov ax, 0                        ; 0x1a1b
    push ax                          ; 0x1a1e
    push ax                          ; 0x1a1f
    lea ax, word [bp - 0x000a]       ; 0x1a20
    push ax                          ; 0x1a23
    mov ax, 0                        ; 0x1a24
    push ax                          ; 0x1a27
    mov ax, 0xc7                     ; 0x1a28
    push ax                          ; 0x1a2b
    mov ax, 0                        ; 0x1a2c
    push ax                          ; 0x1a2f
    mov ax, 0x13f                    ; 0x1a30
    push ax                          ; 0x1a33
    mov ax, 0                        ; 0x1a34
    push ax                          ; 0x1a37
    mov ax, 0x73                     ; 0x1a38
    push ax                          ; 0x1a3b
    mov ax, 0x32                     ; 0x1a3c
    push ax                          ; 0x1a3f
    mov ax, 1                        ; 0x1a40
    push ax                          ; 0x1a43
    call ds_loc_4218                 ; 0x1a44
    add sp, byte 0x16                ; 0x1a47
    ret                              ; 0x1a4a
loc_1a4b:
    mov ax, 0                        ; 0x1a4b
    call ds_aztec_csav               ; 0x1a4e
    push word [bp + 0x6]             ; 0x1a51
    mov ax, 0xa                      ; 0x1a54
    imul word [bp + 0x8]             ; 0x1a57
    add ax, word [bp + 0x4]          ; 0x1a5a
    dec ax                           ; 0x1a5d
    push ax                          ; 0x1a5e
    call ds_loc_3a50                 ; 0x1a5f
    add sp, byte 4                   ; 0x1a62
    mov ax, 7                        ; 0x1a65
    push ax                          ; 0x1a68
    mov ax, 0                        ; 0x1a69
    cmp word [bp + 0xa], byte 0      ; 0x1a6c
    je short @..local.l65            ; 0x1a70
    mov ax, 1                        ; 0x1a72
@..local.l65:
    add ax, strict word 0x10         ; 0x1a75
    sub ah, ah                       ; 0x1a78
    push ax                          ; 0x1a7a
    call ds_loc_3a77                 ; 0x1a7b
    add sp, byte 4                   ; 0x1a7e
    push word [bp + 0x6]             ; 0x1a81
    mov ax, 0xa                      ; 0x1a84
    imul word [bp + 0x8]             ; 0x1a87
    add ax, word [bp + 0x4]          ; 0x1a8a
    push ax                          ; 0x1a8d
    call ds_loc_3a50                 ; 0x1a8e
    add sp, byte 4                   ; 0x1a91
    mov ax, 0                        ; 0x1a94
    push ax                          ; 0x1a97
    push ax                          ; 0x1a98
    call ds_loc_3a6a                 ; 0x1a99
    add sp, byte 4                   ; 0x1a9c
    mov ax, 2                        ; 0x1a9f
    push ax                          ; 0x1aa2
    mov ax, word [bp + 0x8]          ; 0x1aa3
    inc ax                           ; 0x1aa6
    sub ah, ah                       ; 0x1aa7
    push ax                          ; 0x1aa9
    call ds_loc_3a77                 ; 0x1aaa
    add sp, byte 4                   ; 0x1aad
    cmp word [bp + 0x8], byte 0      ; 0x1ab0
    jne short @..local.l66           ; 0x1ab4
    cmp word [bp + 0xa], byte 0      ; 0x1ab6
    jne short @..local.l66           ; 0x1aba
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
    call ds_loc_3b48                 ; 0x1ad0
    add sp, byte 0x0a                ; 0x1ad3
@..local.l66:
    ret                              ; 0x1ad6
loc_1ad7:
    mov ax, 0                        ; 0x1ad7
    call ds_aztec_csav               ; 0x1ada
    mov ax, word [bp + 0x6]          ; 0x1add
    add ax, strict word 6            ; 0x1ae0
    push ax                          ; 0x1ae3
    mov ax, word [bp + 0x4]          ; 0x1ae4
    add ax, strict word 0x14         ; 0x1ae7
    push ax                          ; 0x1aea
    push word [bp + 0x6]             ; 0x1aeb
    push word [bp + 0x4]             ; 0x1aee
    call ds_app_0fdf                 ; 0x1af1
    add sp, byte 8                   ; 0x1af4
    mov ax, word [bp + 0x8]          ; 0x1af7
    shl ax, 1                        ; 0x1afa
    shl ax, 1                        ; 0x1afc
    mov bx, ax                       ; 0x1afe
    push word [word bx + 0x8]        ; 0x1b00
    mov ax, word [bp + 0x6]          ; 0x1b04
    add ax, strict word 6            ; 0x1b07
    push ax                          ; 0x1b0a
    mov ax, word [bp + 0x4]          ; 0x1b0b
    add ax, strict word 0x14         ; 0x1b0e
    push ax                          ; 0x1b11
    push word [bp + 0x6]             ; 0x1b12
    push word [bp + 0x4]             ; 0x1b15
    call ds_loc_3b48                 ; 0x1b18
    add sp, byte 0x0a                ; 0x1b1b
    mov ax, word [bp + 0x6]          ; 0x1b1e
    inc ax                           ; 0x1b21
    push ax                          ; 0x1b22
    mov ax, word [bp + 0x4]          ; 0x1b23
    inc ax                           ; 0x1b26
    inc ax                           ; 0x1b27
    push ax                          ; 0x1b28
    call ds_loc_3a50                 ; 0x1b29
    add sp, byte 4                   ; 0x1b2c
    cmp word [bp + 0xa], byte 0      ; 0x1b2f
    jle short @..local.l67           ; 0x1b33
    mov ax, word [bp + 0xa]          ; 0x1b35
    cmp ax, word [bp + 0xc]          ; 0x1b38
    jg short @..local.l67            ; 0x1b3b
    mov ax, 0                        ; 0x1b3d
    push ax                          ; 0x1b40
    mov ax, 1                        ; 0x1b41
    push ax                          ; 0x1b44
    call ds_loc_3a6a                 ; 0x1b45
    add sp, byte 4                   ; 0x1b48
    mov ax, 0                        ; 0x1b4b
    push ax                          ; 0x1b4e
    mov ax, 3                        ; 0x1b4f
    push ax                          ; 0x1b52
    push word [bp + 0xa]             ; 0x1b53
    call ds_app_052e                 ; 0x1b56
    add sp, byte 6                   ; 0x1b59
    jmp short @..local.l68           ; 0x1b5c
@..local.l67:
    mov ax, 0                        ; 0x1b5e
    push ax                          ; 0x1b61
    push ax                          ; 0x1b62
    call ds_loc_3a6a                 ; 0x1b63
    add sp, byte 4                   ; 0x1b66
    mov ax, 0                        ; 0x1b69
    push ax                          ; 0x1b6c
    mov ax, 0x90bb                   ; 0x1b6d
    push ax                          ; 0x1b70
    call ds_string_loc_3a95          ; 0x1b71
    add sp, byte 4                   ; 0x1b74
@..local.l68:
    ret                              ; 0x1b77
