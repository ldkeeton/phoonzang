api_idx_0006:
    mov ax, 0xfffa                   ; 0x0b74
    call ds_aztec_csav               ; 0x0b77
    mov ax, word [bp + 0x4]          ; 0x0b7a
    jmp near @..api_idx_0006.l5      ; 0x0b7d
@..api_idx_0006.l1:
    mov ax, 0x9098                   ; 0x0b80
    push ax                          ; 0x0b83
    mov ax, 0xc2                     ; 0x0b84
    push ax                          ; 0x0b87
    mov ax, 0xe0                     ; 0x0b88
    push ax                          ; 0x0b8b
    mov ax, 0xa4                     ; 0x0b8c
    push ax                          ; 0x0b8f
    mov ax, 0x62                     ; 0x0b90
    push ax                          ; 0x0b93
    call ds_app_file_14ca            ; 0x0b94
    add sp, byte 0x0a                ; 0x0b97
    mov word [bp - 0x0002], ax       ; 0x0b9a
    mov ax, 0                        ; 0x0b9d
    push ax                          ; 0x0ba0
    call api_idx_000a                ; 0x0ba1
    pop cx                           ; 0x0ba4
    mov ax, 1                        ; 0x0ba5
    push ax                          ; 0x0ba8
    push word [bp - 0x0002]          ; 0x0ba9
    call ds_app_file_16a0            ; 0x0bac
    add sp, byte 4                   ; 0x0baf
    jmp near @..api_idx_0006.l8      ; 0x0bb2
@..api_idx_0006.l2:
    mov ax, 0x909f                   ; 0x0bb5
    push ax                          ; 0x0bb8
    mov ax, 0xc2                     ; 0x0bb9
    push ax                          ; 0x0bbc
    mov ax, 0x60                     ; 0x0bbd
    push ax                          ; 0x0bc0
    mov ax, 0xa5                     ; 0x0bc1
    push ax                          ; 0x0bc4
    mov ax, 8                        ; 0x0bc5
    push ax                          ; 0x0bc8
    call ds_app_file_14ca            ; 0x0bc9
    add sp, byte 0x0a                ; 0x0bcc
    mov word [bp - 0x0002], ax       ; 0x0bcf
    mov ax, 0x90a6                   ; 0x0bd2
    push ax                          ; 0x0bd5
    mov ax, 0xc2                     ; 0x0bd6
    push ax                          ; 0x0bd9
    mov ax, 0x13a                    ; 0x0bda
    push ax                          ; 0x0bdd
    mov ax, 0xa5                     ; 0x0bde
    push ax                          ; 0x0be1
    mov ax, 0xe7                     ; 0x0be2
    push ax                          ; 0x0be5
    call ds_app_file_14ca            ; 0x0be6
    add sp, byte 0x0a                ; 0x0be9
    mov word [bp - 0x0004], ax       ; 0x0bec
    mov ax, 0x90ad                   ; 0x0bef
    push ax                          ; 0x0bf2
    mov ax, 0x9f                     ; 0x0bf3
    push ax                          ; 0x0bf6
    mov ax, 0xcd                     ; 0x0bf7
    push ax                          ; 0x0bfa
    mov ax, 0x93                     ; 0x0bfb
    push ax                          ; 0x0bfe
    mov ax, 0x73                     ; 0x0bff
    push ax                          ; 0x0c02
    call ds_app_file_14ca            ; 0x0c03
    add sp, byte 0x0a                ; 0x0c06
    mov word [bp - 0x0006], ax       ; 0x0c09
    mov ax, 0                        ; 0x0c0c
    push ax                          ; 0x0c0f
    call api_idx_000a                ; 0x0c10
    pop cx                           ; 0x0c13
    mov ax, 1                        ; 0x0c14
    push ax                          ; 0x0c17
    push word [bp - 0x0006]          ; 0x0c18
    call ds_app_file_16a0            ; 0x0c1b
    add sp, byte 4                   ; 0x0c1e
    mov ax, 1                        ; 0x0c21
    push ax                          ; 0x0c24
    push word [bp - 0x0004]          ; 0x0c25
    call ds_app_file_16a0            ; 0x0c28
    add sp, byte 4                   ; 0x0c2b
    mov ax, 1                        ; 0x0c2e
    push ax                          ; 0x0c31
    push word [bp - 0x0002]          ; 0x0c32
    call ds_app_file_16a0            ; 0x0c35
    add sp, byte 4                   ; 0x0c38
    jmp short @..api_idx_0006.l8     ; 0x0c3b
@..api_idx_0006.l3:
    mov ax, 0x90b4                   ; 0x0c3d
    push ax                          ; 0x0c40
    mov ax, 0xc2                     ; 0x0c41
    push ax                          ; 0x0c44
    mov ax, 0x13a                    ; 0x0c45
    push ax                          ; 0x0c48
    mov ax, 0xa4                     ; 0x0c49
    push ax                          ; 0x0c4c
    mov ax, 8                        ; 0x0c4d
    push ax                          ; 0x0c50
    call ds_app_file_14ca            ; 0x0c51
    add sp, byte 0x0a                ; 0x0c54
    mov word [bp - 0x0002], ax       ; 0x0c57
    mov ax, 0                        ; 0x0c5a
    push ax                          ; 0x0c5d
    call api_idx_000a                ; 0x0c5e
    pop cx                           ; 0x0c61
    mov ax, 1                        ; 0x0c62
    push ax                          ; 0x0c65
    push word [bp - 0x0002]          ; 0x0c66
    call ds_app_file_16a0            ; 0x0c69
    add sp, byte 4                   ; 0x0c6c
    jmp short @..api_idx_0006.l8     ; 0x0c6f
@..api_idx_0006.l4:
    mov ax, 0                        ; 0x0c71
    push ax                          ; 0x0c74
    call api_idx_000a                ; 0x0c75
    pop cx                           ; 0x0c78
    jmp short @..api_idx_0006.l8     ; 0x0c79
@..api_idx_0006.l5:
    cmp ax, strict word 0            ; 0x0c7b
    jne short @..api_idx_0006.l6     ; 0x0c7e
    jmp near @..api_idx_0006.l1      ; 0x0c80
@..api_idx_0006.l6:
    cmp ax, strict word 1            ; 0x0c83
    jne short @..api_idx_0006.l7     ; 0x0c86
    jmp near @..api_idx_0006.l2      ; 0x0c88
@..api_idx_0006.l7:
    cmp ax, strict word 2            ; 0x0c8b
    je short @..api_idx_0006.l3      ; 0x0c8e
    cmp ax, strict word 3            ; 0x0c90
    je short @..api_idx_0006.l4      ; 0x0c93
@..api_idx_0006.l8:
    ret                              ; 0x0c95
loc_0c96:
    mov ax, 0                        ; 0x0c96
    call ds_aztec_csav               ; 0x0c99
    mov ax, word [bp + 0x4]          ; 0x0c9c
    jmp near @..local.l6             ; 0x0c9f
@..local.l2:
    mov ax, 0x9f                     ; 0x0ca2
    push ax                          ; 0x0ca5
    mov ax, 0xcd                     ; 0x0ca6
    push ax                          ; 0x0ca9
    mov ax, 0x93                     ; 0x0caa
    push ax                          ; 0x0cad
    mov ax, 0x73                     ; 0x0cae
    push ax                          ; 0x0cb1
    call ds_loc_3b21                 ; 0x0cb2
    add sp, byte 8                   ; 0x0cb5
    mov ax, 0xc2                     ; 0x0cb8
    push ax                          ; 0x0cbb
    mov ax, 0x60                     ; 0x0cbc
    push ax                          ; 0x0cbf
    mov ax, 0xa5                     ; 0x0cc0
    push ax                          ; 0x0cc3
    mov ax, 8                        ; 0x0cc4
    push ax                          ; 0x0cc7
    call ds_loc_3b21                 ; 0x0cc8
    add sp, byte 8                   ; 0x0ccb
    mov ax, 0xc2                     ; 0x0cce
    push ax                          ; 0x0cd1
    mov ax, 0x13a                    ; 0x0cd2
    push ax                          ; 0x0cd5
    mov ax, 0xa5                     ; 0x0cd6
    push ax                          ; 0x0cd9
    mov ax, 0xe7                     ; 0x0cda
    push ax                          ; 0x0cdd
    call ds_loc_3b21                 ; 0x0cde
    add sp, byte 8                   ; 0x0ce1
    jmp short @..local.l8            ; 0x0ce4
@..local.l3:
    mov ax, 0xc2                     ; 0x0ce6
    push ax                          ; 0x0ce9
    mov ax, 0xe0                     ; 0x0cea
    push ax                          ; 0x0ced
    mov ax, 0xa4                     ; 0x0cee
    push ax                          ; 0x0cf1
    mov ax, 0x62                     ; 0x0cf2
    push ax                          ; 0x0cf5
    call ds_loc_3b21                 ; 0x0cf6
    add sp, byte 8                   ; 0x0cf9
    jmp short @..local.l8            ; 0x0cfc
@..local.l4:
    mov ax, 0x9f                     ; 0x0cfe
    push ax                          ; 0x0d01
    mov ax, 0xcd                     ; 0x0d02
    push ax                          ; 0x0d05
    mov ax, 0x93                     ; 0x0d06
    push ax                          ; 0x0d09
    mov ax, 0x73                     ; 0x0d0a
    push ax                          ; 0x0d0d
    call ds_loc_3b21                 ; 0x0d0e
    add sp, byte 8                   ; 0x0d11
    jmp short @..local.l8            ; 0x0d14
@..local.l5:
    mov ax, 0xc2                     ; 0x0d16
    push ax                          ; 0x0d19
    mov ax, 0x13a                    ; 0x0d1a
    push ax                          ; 0x0d1d
    mov ax, 0x93                     ; 0x0d1e
    push ax                          ; 0x0d21
    mov ax, 8                        ; 0x0d22
    push ax                          ; 0x0d25
    call ds_loc_3b21                 ; 0x0d26
    add sp, byte 8                   ; 0x0d29
    jmp short @..local.l8            ; 0x0d2c
@..local.l6:
    cmp ax, strict word 0            ; 0x0d2e
    jne short @..local.l7            ; 0x0d31
    jmp near @..local.l2             ; 0x0d33
@..local.l7:
    cmp ax, strict word 1            ; 0x0d36
    je short @..local.l3             ; 0x0d39
    cmp ax, strict word 2            ; 0x0d3b
    je short @..local.l4             ; 0x0d3e
    cmp ax, strict word 3            ; 0x0d40
    je short @..local.l5             ; 0x0d43
@..local.l8:
    ret                              ; 0x0d45
