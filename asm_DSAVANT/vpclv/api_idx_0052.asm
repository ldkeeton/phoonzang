; auto-generated
api_idx_0052:
    mov ax, 0xffae                   ; 0x2c0c
    call aztec_csav                  ; 0x2c0f
    mov ax, 0x248                    ; 0x2c12
    imul word [bp + 0x4]             ; 0x2c15
    mov bx, ax                       ; 0x2c18
    mov al, byte [bx + 0x5e2d]       ; 0x2c1a
    sub ah, ah                       ; 0x2c1e
    jmp near @..api_idx_0052.l1      ; 0x2c20
jumptable_2ce6_case_0:
    mov ax, 0x90b4                   ; 0x2c23
    push ax                          ; 0x2c26
    mov ax, 0x90a5                   ; 0x2c27
    push ax                          ; 0x2c2a
    push word [bp + 0x4]             ; 0x2c2b
    call api_idx_0006                ; 0x2c2e
    add sp, byte 6                   ; 0x2c31
    jmp near @..api_idx_0052.l2      ; 0x2c34
jumptable_2ce6_case_4:
    mov ax, 0x90d2                   ; 0x2c37
    push ax                          ; 0x2c3a
    mov ax, 0x90c3                   ; 0x2c3b
    push ax                          ; 0x2c3e
    push word [bp + 0x4]             ; 0x2c3f
    call api_idx_0006                ; 0x2c42
    add sp, byte 6                   ; 0x2c45
    jmp near @..api_idx_0052.l2      ; 0x2c48
jumptable_2ce6_case_10:
    mov ax, 0x90f0                   ; 0x2c4b
    push ax                          ; 0x2c4e
    mov ax, 0x90e1                   ; 0x2c4f
    push ax                          ; 0x2c52
    push word [bp + 0x4]             ; 0x2c53
    call api_idx_0006                ; 0x2c56
    add sp, byte 6                   ; 0x2c59
    jmp near @..api_idx_0052.l2      ; 0x2c5c
jumptable_2ce6_case_11:
    mov ax, 0x910e                   ; 0x2c5f
    push ax                          ; 0x2c62
    mov ax, 0x90ff                   ; 0x2c63
    push ax                          ; 0x2c66
    push word [bp + 0x4]             ; 0x2c67
    call api_idx_0006                ; 0x2c6a
    add sp, byte 6                   ; 0x2c6d
    jmp near @..api_idx_0052.l2      ; 0x2c70
jumptable_2ce6_case_13:
    mov ax, 0x912c                   ; 0x2c73
    push ax                          ; 0x2c76
    mov ax, 0x911d                   ; 0x2c77
    push ax                          ; 0x2c7a
    push word [bp + 0x4]             ; 0x2c7b
    call api_idx_0006                ; 0x2c7e
    add sp, byte 6                   ; 0x2c81
    jmp near @..api_idx_0052.l2      ; 0x2c84
jumptable_2ce6_case_1:
    mov ax, 0x914a                   ; 0x2c87
    push ax                          ; 0x2c8a
    mov ax, 0x913b                   ; 0x2c8b
    push ax                          ; 0x2c8e
    push word [bp + 0x4]             ; 0x2c8f
    call api_idx_0006                ; 0x2c92
    add sp, byte 6                   ; 0x2c95
    jmp short @..api_idx_0052.l2     ; 0x2c98
jumptable_2ce6_case_7:
    mov ax, 0x9168                   ; 0x2c9a
    push ax                          ; 0x2c9d
    mov ax, 0x9159                   ; 0x2c9e
    push ax                          ; 0x2ca1
    push word [bp + 0x4]             ; 0x2ca2
    call api_idx_0006                ; 0x2ca5
    add sp, byte 6                   ; 0x2ca8
    jmp short @..api_idx_0052.l2     ; 0x2cab
jumptable_2ce6_case_2:
    mov ax, 0x9186                   ; 0x2cad
    push ax                          ; 0x2cb0
    mov ax, 0x9177                   ; 0x2cb1
    push ax                          ; 0x2cb4
    push word [bp + 0x4]             ; 0x2cb5
    call api_idx_0006                ; 0x2cb8
    add sp, byte 6                   ; 0x2cbb
    jmp short @..api_idx_0052.l2     ; 0x2cbe
jumptable_2ce6_case_12:
    mov ax, 0x91a4                   ; 0x2cc0
    push ax                          ; 0x2cc3
    mov ax, 0x9195                   ; 0x2cc4
    push ax                          ; 0x2cc7
    push word [bp + 0x4]             ; 0x2cc8
    call api_idx_0006                ; 0x2ccb
    add sp, byte 6                   ; 0x2cce
    jmp short @..api_idx_0052.l2     ; 0x2cd1
jumptable_2ce6_case_3:
    mov ax, 0x91c2                   ; 0x2cd3
    push ax                          ; 0x2cd6
    mov ax, 0x91b3                   ; 0x2cd7
    push ax                          ; 0x2cda
    push word [bp + 0x4]             ; 0x2cdb
    call api_idx_0006                ; 0x2cde
    add sp, byte 6                   ; 0x2ce1
    jmp short @..api_idx_0052.l2     ; 0x2ce4
jumptable_2ce6:
    dw jumptable_2ce6_case_0 - IMAGE_BASE + 0x5055 ; 0x2ce6
    dw jumptable_2ce6_case_1 - IMAGE_BASE + 0x5055 ; 0x2ce8
    dw jumptable_2ce6_case_2 - IMAGE_BASE + 0x5055 ; 0x2cea
    dw jumptable_2ce6_case_3 - IMAGE_BASE + 0x5055 ; 0x2cec
    dw jumptable_2ce6_case_4 - IMAGE_BASE + 0x5055 ; 0x2cee
    dw jumptable_2ce6_case_1 - IMAGE_BASE + 0x5055 ; 0x2cf0
    dw jumptable_2ce6_case_3 - IMAGE_BASE + 0x5055 ; 0x2cf2
    dw jumptable_2ce6_case_7 - IMAGE_BASE + 0x5055 ; 0x2cf4
    dw jumptable_2ce6_case_4 - IMAGE_BASE + 0x5055 ; 0x2cf6
    dw jumptable_2ce6_case_2 - IMAGE_BASE + 0x5055 ; 0x2cf8
    dw jumptable_2ce6_case_10 - IMAGE_BASE + 0x5055 ; 0x2cfa
    dw jumptable_2ce6_case_11 - IMAGE_BASE + 0x5055 ; 0x2cfc
    dw jumptable_2ce6_case_12 - IMAGE_BASE + 0x5055 ; 0x2cfe
    dw jumptable_2ce6_case_13 - IMAGE_BASE + 0x5055 ; 0x2d00
@..api_idx_0052.l1:
    cmp ax, strict word 0xe          ; 0x2d02
    jae short @..api_idx_0052.l2     ; 0x2d05
    xchg bx, ax                      ; 0x2d07
    shl bx, 1                        ; 0x2d08
    jmp [cs:bx + 0x7d2d]             ; 0x2d0a
@..api_idx_0052.l2:
    mov ax, 0x248                    ; 0x2d0f
    imul word [bp + 0x4]             ; 0x2d12
    mov bx, ax                       ; 0x2d15
    mov al, byte [bx + 0x5e2b]       ; 0x2d17
    sub ah, ah                       ; 0x2d1b
    jmp near @..api_idx_0052.l3      ; 0x2d1d
jumptable_2ebe_case_0:
    mov ax, 0x14                     ; 0x2d20
    push ax                          ; 0x2d23
    mov ax, 0xb                      ; 0x2d24
    push ax                          ; 0x2d27
    mov ax, 0                        ; 0x2d28
    push ax                          ; 0x2d2b
    push word [bp + 0x4]             ; 0x2d2c
    call loc_2a32                    ; 0x2d2f
    add sp, byte 8                   ; 0x2d32
    jmp near @..api_idx_0052.l4      ; 0x2d35
jumptable_2ebe_case_2:
    mov ax, 0x248                    ; 0x2d38
    imul word [bp + 0x4]             ; 0x2d3b
    mov bx, ax                       ; 0x2d3e
    mov al, byte [bx + 0x5d67]       ; 0x2d40
    sub ah, ah                       ; 0x2d44
    mov cx, 5                        ; 0x2d46
    cwd                              ; 0x2d49
    idiv cx                          ; 0x2d4a
    imul cx                          ; 0x2d4c
    push ax                          ; 0x2d4e
    mov ax, 6                        ; 0x2d4f
    push ax                          ; 0x2d52
    mov ax, 0                        ; 0x2d53
    push ax                          ; 0x2d56
    push word [bp + 0x4]             ; 0x2d57
    call loc_2a32                    ; 0x2d5a
    add sp, byte 8                   ; 0x2d5d
jumptable_2ebe_case_3:
    mov ax, 0x248                    ; 0x2d60
    imul word [bp + 0x4]             ; 0x2d63
    mov bx, ax                       ; 0x2d66
    mov al, byte [bx + 0x5d67]       ; 0x2d68
    sub ah, ah                       ; 0x2d6c
    mov cx, 5                        ; 0x2d6e
    cwd                              ; 0x2d71
    idiv cx                          ; 0x2d72
    imul cx                          ; 0x2d74
    push ax                          ; 0x2d76
    mov ax, 0xc                      ; 0x2d77
    push ax                          ; 0x2d7a
    mov ax, 0                        ; 0x2d7b
    push ax                          ; 0x2d7e
    push word [bp + 0x4]             ; 0x2d7f
    call loc_2a32                    ; 0x2d82
    add sp, byte 8                   ; 0x2d85
    jmp near @..api_idx_0052.l4      ; 0x2d88
jumptable_2ebe_case_1:
    mov ax, 0x14                     ; 0x2d8b
    push ax                          ; 0x2d8e
    mov ax, 9                        ; 0x2d8f
    push ax                          ; 0x2d92
    mov ax, 0                        ; 0x2d93
    push ax                          ; 0x2d96
    push word [bp + 0x4]             ; 0x2d97
    call loc_2a32                    ; 0x2d9a
    add sp, byte 8                   ; 0x2d9d
    jmp near @..api_idx_0052.l4      ; 0x2da0
jumptable_2ebe_case_5:
    mov ax, 0x19                     ; 0x2da3
    push ax                          ; 0x2da6
    mov ax, 0xc                      ; 0x2da7
    push ax                          ; 0x2daa
    mov ax, 0                        ; 0x2dab
    push ax                          ; 0x2dae
    push word [bp + 0x4]             ; 0x2daf
    call loc_2a32                    ; 0x2db2
    add sp, byte 8                   ; 0x2db5
    mov ax, 0x19                     ; 0x2db8
    push ax                          ; 0x2dbb
    mov ax, 4                        ; 0x2dbc
    push ax                          ; 0x2dbf
    mov ax, 0                        ; 0x2dc0
    push ax                          ; 0x2dc3
    push word [bp + 0x4]             ; 0x2dc4
    call loc_2a32                    ; 0x2dc7
    add sp, byte 8                   ; 0x2dca
    mov ax, 0x19                     ; 0x2dcd
    push ax                          ; 0x2dd0
    mov ax, 7                        ; 0x2dd1
    push ax                          ; 0x2dd4
    mov ax, 0                        ; 0x2dd5
    push ax                          ; 0x2dd8
    push word [bp + 0x4]             ; 0x2dd9
    call loc_2a32                    ; 0x2ddc
    add sp, byte 8                   ; 0x2ddf
    mov ax, 0x19                     ; 0x2de2
    push ax                          ; 0x2de5
    mov ax, 0xa                      ; 0x2de6
    push ax                          ; 0x2de9
    mov ax, 0                        ; 0x2dea
    push ax                          ; 0x2ded
    push word [bp + 0x4]             ; 0x2dee
    call loc_2a32                    ; 0x2df1
    add sp, byte 8                   ; 0x2df4
    mov ax, 0x19                     ; 0x2df7
    push ax                          ; 0x2dfa
    mov ax, 0xb                      ; 0x2dfb
    push ax                          ; 0x2dfe
    mov ax, 0                        ; 0x2dff
    push ax                          ; 0x2e02
    push word [bp + 0x4]             ; 0x2e03
    call loc_2a32                    ; 0x2e06
    add sp, byte 8                   ; 0x2e09
    jmp near @..api_idx_0052.l4      ; 0x2e0c
jumptable_2ebe_case_6:
    mov ax, 0x19                     ; 0x2e0f
    push ax                          ; 0x2e12
    mov ax, 0xa                      ; 0x2e13
    push ax                          ; 0x2e16
    mov ax, 0                        ; 0x2e17
    push ax                          ; 0x2e1a
    push word [bp + 0x4]             ; 0x2e1b
    call loc_2a32                    ; 0x2e1e
    add sp, byte 8                   ; 0x2e21
    mov ax, 0xa                      ; 0x2e24
    push ax                          ; 0x2e27
    mov ax, 8                        ; 0x2e28
    push ax                          ; 0x2e2b
    mov ax, 0                        ; 0x2e2c
    push ax                          ; 0x2e2f
    push word [bp + 0x4]             ; 0x2e30
    call loc_2a32                    ; 0x2e33
    add sp, byte 8                   ; 0x2e36
    mov ax, 0xffec                   ; 0x2e39
    push ax                          ; 0x2e3c
    mov ax, 3                        ; 0x2e3d
    push ax                          ; 0x2e40
    mov ax, 0                        ; 0x2e41
    push ax                          ; 0x2e44
    push word [bp + 0x4]             ; 0x2e45
    call loc_2a32                    ; 0x2e48
    add sp, byte 8                   ; 0x2e4b
    jmp near @..api_idx_0052.l4      ; 0x2e4e
jumptable_2ebe_case_8:
    mov ax, 0xf                      ; 0x2e51
    push ax                          ; 0x2e54
    mov ax, 7                        ; 0x2e55
    push ax                          ; 0x2e58
    mov ax, 0                        ; 0x2e59
    push ax                          ; 0x2e5c
    push word [bp + 0x4]             ; 0x2e5d
    call loc_2a32                    ; 0x2e60
    add sp, byte 8                   ; 0x2e63
    mov ax, 0x14                     ; 0x2e66
    push ax                          ; 0x2e69
    mov ax, 4                        ; 0x2e6a
    push ax                          ; 0x2e6d
    mov ax, 0                        ; 0x2e6e
    push ax                          ; 0x2e71
    push word [bp + 0x4]             ; 0x2e72
    call loc_2a32                    ; 0x2e75
    add sp, byte 8                   ; 0x2e78
jumptable_2ebe_case_9:
    mov ax, 0x14                     ; 0x2e7b
    push ax                          ; 0x2e7e
    mov ax, 3                        ; 0x2e7f
    push ax                          ; 0x2e82
    mov ax, 0                        ; 0x2e83
    push ax                          ; 0x2e86
    push word [bp + 0x4]             ; 0x2e87
    call loc_2a32                    ; 0x2e8a
    add sp, byte 8                   ; 0x2e8d
    jmp short @..api_idx_0052.l4     ; 0x2e90
jumptable_2ebe_case_10:
    mov ax, 0x19                     ; 0x2e92
    push ax                          ; 0x2e95
    mov ax, 0xc                      ; 0x2e96
    push ax                          ; 0x2e99
    mov ax, 0                        ; 0x2e9a
    push ax                          ; 0x2e9d
    push word [bp + 0x4]             ; 0x2e9e
    call loc_2a32                    ; 0x2ea1
    add sp, byte 8                   ; 0x2ea4
    mov ax, 0xf                      ; 0x2ea7
    push ax                          ; 0x2eaa
    mov ax, 3                        ; 0x2eab
    push ax                          ; 0x2eae
    mov ax, 0                        ; 0x2eaf
    push ax                          ; 0x2eb2
    push word [bp + 0x4]             ; 0x2eb3
    call loc_2a32                    ; 0x2eb6
    add sp, byte 8                   ; 0x2eb9
    jmp short @..api_idx_0052.l4     ; 0x2ebc
jumptable_2ebe:
    dw jumptable_2ebe_case_0 - IMAGE_BASE + 0x5055 ; 0x2ebe
    dw jumptable_2ebe_case_1 - IMAGE_BASE + 0x5055 ; 0x2ec0
    dw jumptable_2ebe_case_2 - IMAGE_BASE + 0x5055 ; 0x2ec2
    dw jumptable_2ebe_case_3 - IMAGE_BASE + 0x5055 ; 0x2ec4
    dw jumptable_2ebe_case_2 - IMAGE_BASE + 0x5055 ; 0x2ec6
    dw jumptable_2ebe_case_5 - IMAGE_BASE + 0x5055 ; 0x2ec8
    dw jumptable_2ebe_case_6 - IMAGE_BASE + 0x5055 ; 0x2eca
    dw jumptable_2ebe_case_6 - IMAGE_BASE + 0x5055 ; 0x2ecc
    dw jumptable_2ebe_case_8 - IMAGE_BASE + 0x5055 ; 0x2ece
    dw jumptable_2ebe_case_9 - IMAGE_BASE + 0x5055 ; 0x2ed0
    dw jumptable_2ebe_case_10 - IMAGE_BASE + 0x5055 ; 0x2ed2
@..api_idx_0052.l3:
    cmp ax, strict word 0xb          ; 0x2ed4
    jae short @..api_idx_0052.l4     ; 0x2ed7
    xchg bx, ax                      ; 0x2ed9
    shl bx, 1                        ; 0x2eda
    jmp [cs:bx + 0x7f05]             ; 0x2edc
@..api_idx_0052.l4:
    mov ax, 0x248                    ; 0x2ee1
    imul word [bp + 0x4]             ; 0x2ee4
    mov bx, ax                       ; 0x2ee7
    cmp byte [bx + 0x5d67], 0xf      ; 0x2ee9
    jbe short @..api_idx_0052.l5     ; 0x2eee
    mov ax, 5                        ; 0x2ef0
    push ax                          ; 0x2ef3
    mov ax, 6                        ; 0x2ef4
    push ax                          ; 0x2ef7
    mov ax, 0                        ; 0x2ef8
    push ax                          ; 0x2efb
    push word [bp + 0x4]             ; 0x2efc
    call loc_2a32                    ; 0x2eff
    add sp, byte 8                   ; 0x2f02
    mov ax, 5                        ; 0x2f05
    push ax                          ; 0x2f08
    mov ax, 0xb                      ; 0x2f09
    push ax                          ; 0x2f0c
    mov ax, 0                        ; 0x2f0d
    push ax                          ; 0x2f10
    push word [bp + 0x4]             ; 0x2f11
    call loc_2a32                    ; 0x2f14
    add sp, byte 8                   ; 0x2f17
@..api_idx_0052.l5:
    mov ax, 0x248                    ; 0x2f1a
    imul word [bp + 0x4]             ; 0x2f1d
    mov bx, ax                       ; 0x2f20
    cmp byte [bx + 0x5d65], 0xf      ; 0x2f22
    jbe short @..api_idx_0052.l6     ; 0x2f27
    mov ax, 5                        ; 0x2f29
    push ax                          ; 0x2f2c
    mov ax, 9                        ; 0x2f2d
    push ax                          ; 0x2f30
    mov ax, 0                        ; 0x2f31
    push ax                          ; 0x2f34
    push word [bp + 0x4]             ; 0x2f35
    call loc_2a32                    ; 0x2f38
    add sp, byte 8                   ; 0x2f3b
@..api_idx_0052.l6:
    mov ax, 0x248                    ; 0x2f3e
    imul word [bp + 0x4]             ; 0x2f41
    mov bx, ax                       ; 0x2f44
    cmp byte [bx + 0x5d69], 0xf      ; 0x2f46
    jbe short @..api_idx_0052.l7     ; 0x2f4b
    mov ax, 5                        ; 0x2f4d
    push ax                          ; 0x2f50
    mov ax, 7                        ; 0x2f51
    push ax                          ; 0x2f54
    mov ax, 0                        ; 0x2f55
    push ax                          ; 0x2f58
    push word [bp + 0x4]             ; 0x2f59
    call loc_2a32                    ; 0x2f5c
    add sp, byte 8                   ; 0x2f5f
    mov ax, 5                        ; 0x2f62
    push ax                          ; 0x2f65
    mov ax, 4                        ; 0x2f66
    push ax                          ; 0x2f69
    mov ax, 0                        ; 0x2f6a
    push ax                          ; 0x2f6d
    push word [bp + 0x4]             ; 0x2f6e
    call loc_2a32                    ; 0x2f71
    add sp, byte 8                   ; 0x2f74
@..api_idx_0052.l7:
    mov ax, 0x248                    ; 0x2f77
    imul word [bp + 0x4]             ; 0x2f7a
    mov bx, ax                       ; 0x2f7d
    cmp byte [bx + 0x5d83], 0        ; 0x2f7f
    jbe short @..api_idx_0052.l8     ; 0x2f84
    mov al, byte [bx + 0x5d83]       ; 0x2f86
    sub ah, ah                       ; 0x2f8a
    mov cx, 2                        ; 0x2f8c
    cwd                              ; 0x2f8f
    idiv cx                          ; 0x2f90
    push ax                          ; 0x2f92
    mov ax, 9                        ; 0x2f93
    push ax                          ; 0x2f96
    mov ax, 0                        ; 0x2f97
    push ax                          ; 0x2f9a
    push word [bp + 0x4]             ; 0x2f9b
    call loc_2a32                    ; 0x2f9e
    add sp, byte 8                   ; 0x2fa1
    mov ax, 0x248                    ; 0x2fa4
    imul word [bp + 0x4]             ; 0x2fa7
    mov bx, ax                       ; 0x2faa
    mov al, byte [bx + 0x5d83]       ; 0x2fac
    sub ah, ah                       ; 0x2fb0
    mov cx, 3                        ; 0x2fb2
    cwd                              ; 0x2fb5
    idiv cx                          ; 0x2fb6
    push ax                          ; 0x2fb8
    mov ax, 0xa                      ; 0x2fb9
    push ax                          ; 0x2fbc
    mov ax, 0                        ; 0x2fbd
    push ax                          ; 0x2fc0
    push word [bp + 0x4]             ; 0x2fc1
    call loc_2a32                    ; 0x2fc4
    add sp, byte 8                   ; 0x2fc7
@..api_idx_0052.l8:
    mov word [bp - 0x0004], 0        ; 0x2fca
@..api_idx_0052.l9:
    mov ax, 0x248                    ; 0x2fcf
    imul word [bp + 0x4]             ; 0x2fd2
    add ax, word [bp - 0x0004]       ; 0x2fd5
    mov bx, ax                       ; 0x2fd8
    mov al, byte [bx + 0x5d8e]       ; 0x2fda
    mov byte [bx + 0x5d9c], al       ; 0x2fde
    inc word [bp - 0x0004]           ; 0x2fe2
    mov ax, word [bp - 0x0004]       ; 0x2fe5
    cmp ax, strict word 0xe          ; 0x2fe8
    jl short @..api_idx_0052.l9      ; 0x2feb
    mov word [bp - 0x0004], 0        ; 0x2fed
@..api_idx_0052.l10:
    mov ax, 0x248                    ; 0x2ff2
    imul word [bp + 0x4]             ; 0x2ff5
    add ax, word [bp - 0x0004]       ; 0x2ff8
    mov bx, ax                       ; 0x2ffb
    mov al, byte [bx + 0x5d48]       ; 0x2ffd
    sub ah, ah                       ; 0x3001
    cmp ax, 0xff                     ; 0x3003
    jne short @..api_idx_0052.l11    ; 0x3006
    jmp near @..api_idx_0052.l13     ; 0x3008
@..api_idx_0052.l11:
    mov word [bp - 0x000a], 0        ; 0x300b
@..api_idx_0052.l12:
    mov ax, 0x248                    ; 0x3010
    imul word [bp + 0x4]             ; 0x3013
    push ax                          ; 0x3016
    add ax, word [bp - 0x0004]       ; 0x3017
    mov bx, ax                       ; 0x301a
    mov al, byte [bx + 0x5d48]       ; 0x301c
    sub ah, ah                       ; 0x3020
    mov cx, 0xc                      ; 0x3022
    imul cx                          ; 0x3025
    mov cx, ax                       ; 0x3027
    pop ax                           ; 0x3029
    add ax, cx                       ; 0x302a
    add ax, word [bp - 0x000a]       ; 0x302c
    mov bx, ax                       ; 0x302f
    mov al, byte [bx + 0x5c3c]       ; 0x3031
    sub ah, ah                       ; 0x3035
    mov cx, 0x10                     ; 0x3037
    cwd                              ; 0x303a
    idiv cx                          ; 0x303b
    mov word [bp - 0x0006], ax       ; 0x303d
    mov ax, 0xa                      ; 0x3040
    imul dx                          ; 0x3043
    mov word [bp - 0x0008], ax       ; 0x3045
    mov ax, 0x7d                     ; 0x3048
    push ax                          ; 0x304b
    mov ax, 0                        ; 0x304c
    push ax                          ; 0x304f
    mov ax, 0x248                    ; 0x3050
    imul word [bp + 0x4]             ; 0x3053
    add ax, word [bp - 0x0006]       ; 0x3056
    mov bx, ax                       ; 0x3059
    mov al, byte [bx + 0x5d9c]       ; 0x305b
    sub ah, ah                       ; 0x305f
    add ax, word [bp - 0x0008]       ; 0x3061
    push ax                          ; 0x3064
    call clamp                       ; 0x3065
    add sp, byte 6                   ; 0x3068
    push ax                          ; 0x306b
    mov ax, 0x248                    ; 0x306c
    imul word [bp + 0x4]             ; 0x306f
    mov cx, ax                       ; 0x3072
    add ax, word [bp - 0x0006]       ; 0x3074
    mov bx, ax                       ; 0x3077
    pop ax                           ; 0x3079
    mov byte [bx + 0x5d9c], al       ; 0x307a
    inc word [bp - 0x000a]           ; 0x307e
    mov ax, word [bp - 0x000a]       ; 0x3081
    cmp ax, strict word 2            ; 0x3084
    jl short @..api_idx_0052.l12     ; 0x3087
@..api_idx_0052.l13:
    inc word [bp - 0x0004]           ; 0x3089
    mov ax, word [bp - 0x0004]       ; 0x308c
    cmp ax, strict word 8            ; 0x308f
    jge short @..api_idx_0052.l14    ; 0x3092
    jmp near @..api_idx_0052.l10     ; 0x3094
@..api_idx_0052.l14:
    mov ax, 0x248                    ; 0x3097
    imul word [bp + 0x4]             ; 0x309a
    mov bx, ax                       ; 0x309d
    mov al, byte [bx + 0x5e2d]       ; 0x309f
    sub ah, ah                       ; 0x30a3
    jmp short @..api_idx_0052.l15    ; 0x30a5
jumptable_30fe_case_0:
    mov ax, 3                        ; 0x30a7
    push ax                          ; 0x30aa
    mov ax, 6                        ; 0x30ab
    push ax                          ; 0x30ae
    mov ax, 5                        ; 0x30af
    push ax                          ; 0x30b2
    mov ax, 7                        ; 0x30b3
    push ax                          ; 0x30b6
    mov ax, 4                        ; 0x30b7
    push ax                          ; 0x30ba
    push word [bp + 0x4]             ; 0x30bb
    call api_idx_0002_4              ; 0x30be
    add sp, byte 0x0c                ; 0x30c1
    jmp short @..api_idx_0052.l16    ; 0x30c4
jumptable_30fe_case_1:
    mov ax, 7                        ; 0x30c6
    push ax                          ; 0x30c9
    push ax                          ; 0x30ca
    mov ax, 0xc                      ; 0x30cb
    push ax                          ; 0x30ce
    push ax                          ; 0x30cf
    mov ax, 2                        ; 0x30d0
    push ax                          ; 0x30d3
    push word [bp + 0x4]             ; 0x30d4
    call api_idx_0002_4              ; 0x30d7
    add sp, byte 0x0c                ; 0x30da
    jmp short @..api_idx_0052.l16    ; 0x30dd
jumptable_30fe_case_2:
    mov ax, 5                        ; 0x30df
    push ax                          ; 0x30e2
    mov ax, 7                        ; 0x30e3
    push ax                          ; 0x30e6
    mov ax, 8                        ; 0x30e7
    push ax                          ; 0x30ea
    mov ax, 0xa                      ; 0x30eb
    push ax                          ; 0x30ee
    mov ax, 3                        ; 0x30ef
    push ax                          ; 0x30f2
    push word [bp + 0x4]             ; 0x30f3
    call api_idx_0002_4              ; 0x30f6
    add sp, byte 0x0c                ; 0x30f9
    jmp short @..api_idx_0052.l16    ; 0x30fc
jumptable_30fe:
    dw jumptable_30fe_case_0 - IMAGE_BASE + 0x5055 ; 0x30fe
    dw jumptable_30fe_case_1 - IMAGE_BASE + 0x5055 ; 0x3100
    dw jumptable_30fe_case_2 - IMAGE_BASE + 0x5055 ; 0x3102
    dw jumptable_30fe_case_2 - IMAGE_BASE + 0x5055 ; 0x3104
    dw jumptable_30fe_case_0 - IMAGE_BASE + 0x5055 ; 0x3106
    dw jumptable_30fe_case_1 - IMAGE_BASE + 0x5055 ; 0x3108
    dw jumptable_30fe_case_2 - IMAGE_BASE + 0x5055 ; 0x310a
    dw jumptable_30fe_case_1 - IMAGE_BASE + 0x5055 ; 0x310c
    dw jumptable_30fe_case_0 - IMAGE_BASE + 0x5055 ; 0x310e
    dw jumptable_30fe_case_1 - IMAGE_BASE + 0x5055 ; 0x3110
    dw jumptable_30fe_case_0 - IMAGE_BASE + 0x5055 ; 0x3112
    dw jumptable_30fe_case_0 - IMAGE_BASE + 0x5055 ; 0x3114
    dw jumptable_30fe_case_0 - IMAGE_BASE + 0x5055 ; 0x3116
    dw jumptable_30fe_case_0 - IMAGE_BASE + 0x5055 ; 0x3118
@..api_idx_0052.l15:
    cmp ax, strict word 0xe          ; 0x311a
    jae short @..api_idx_0052.l16    ; 0x311d
    xchg bx, ax                      ; 0x311f
    shl bx, 1                        ; 0x3120
    jmp [cs:bx - 0x7ebb]             ; 0x3122
@..api_idx_0052.l16:
    mov word [bp - 0x0002], 0        ; 0x3127
@..api_idx_0052.l17:
    push word [bp - 0x0002]          ; 0x312c
    push word [bp + 0x4]             ; 0x312f
    call ds_app_mem_184f             ; 0x3132
    add sp, byte 4                   ; 0x3135
    mov ax, 0x248                    ; 0x3138
    imul word [bp + 0x4]             ; 0x313b
    add ax, word [bp - 0x0002]       ; 0x313e
    mov bx, ax                       ; 0x3141
    mov al, byte [bx + 0x5d48]       ; 0x3143
    sub ah, ah                       ; 0x3147
    cmp ax, 0xff                     ; 0x3149
    je short @..api_idx_0052.l18     ; 0x314c
    mov ax, 0                        ; 0x314e
    push ax                          ; 0x3151
    mov ax, 0x248                    ; 0x3152
    imul word [bp + 0x4]             ; 0x3155
    push ax                          ; 0x3158
    mov al, byte [bx + 0x5d48]       ; 0x3159
    sub ah, ah                       ; 0x315d
    mov cx, 0xc                      ; 0x315f
    imul cx                          ; 0x3162
    mov cx, ax                       ; 0x3164
    pop ax                           ; 0x3166
    add ax, cx                       ; 0x3167
    mov bx, ax                       ; 0x3169
    push word [bx + 0x5c34]          ; 0x316b
    lea ax, word [bp - 0x0052]       ; 0x316f
    push ax                          ; 0x3172
    mov ax, 1                        ; 0x3173
    push ax                          ; 0x3176
    call ds_app_file_0883            ; 0x3177
    add sp, byte 8                   ; 0x317a
    lea ax, word [bp - 0x0052]       ; 0x317d
    push ax                          ; 0x3180
    push word [bp - 0x0002]          ; 0x3181
    push word [bp + 0x4]             ; 0x3184
    call api_idx_0004_3              ; 0x3187
    add sp, byte 6                   ; 0x318a
@..api_idx_0052.l18:
    inc word [bp - 0x0002]           ; 0x318d
    mov ax, word [bp - 0x0002]       ; 0x3190
    cmp ax, strict word 2            ; 0x3193
    jl short @..api_idx_0052.l17     ; 0x3196
    mov ax, 0x248                    ; 0x3198
    imul word [bp + 0x4]             ; 0x319b
    mov bx, ax                       ; 0x319e
    mov byte [bx + 0x5daa], 0xa      ; 0x31a0
    mov al, byte [bx + 0x5daa]       ; 0x31a5
    cbw                              ; 0x31a9
    mov cx, 0                        ; 0x31aa
    cmp byte [bx + 0x5d69], 0xf      ; 0x31ad
    jbe short @..api_idx_0052.l19    ; 0x31b2
    mov cx, 1                        ; 0x31b4
@..api_idx_0052.l19:
    sub ax, cx                       ; 0x31b7
    mov byte [bx + 0x5daa], al       ; 0x31b9
    cbw                              ; 0x31bd
    mov cx, 0                        ; 0x31be
    cmp byte [bx + 0x5d69], 0x11     ; 0x31c1
    jbe short @..api_idx_0052.l20    ; 0x31c6
    mov cx, 1                        ; 0x31c8
@..api_idx_0052.l20:
    sub ax, cx                       ; 0x31cb
    mov byte [bx + 0x5daa], al       ; 0x31cd
    mov al, byte [bx + 0x5daa]       ; 0x31d1
    cbw                              ; 0x31d5
    mov cx, 0                        ; 0x31d6
    cmp byte [bx + 0x5e2b], 5        ; 0x31d9
    jne short @..api_idx_0052.l21    ; 0x31de
    mov cx, 2                        ; 0x31e0
@..api_idx_0052.l21:
    sub ax, cx                       ; 0x31e3
    mov byte [bx + 0x5daa], al       ; 0x31e5
    cmp byte [bx + 0x5e2d], 0xd      ; 0x31e9
    je short @..api_idx_0052.l22     ; 0x31ee
    cmp byte [bx + 0x5e2d], 0xc      ; 0x31f0
    jne short @..api_idx_0052.l24    ; 0x31f5
@..api_idx_0052.l22:
    mov ax, 0xa                      ; 0x31f7
    cmp word [bx + 0x5c18], byte 0x14 ; 0x31fa
    jg short @..api_idx_0052.l23     ; 0x31ff
    mov ax, word [bx + 0x5c18]       ; 0x3201
    mov cx, 2                        ; 0x3205
    cwd                              ; 0x3208
    idiv cx                          ; 0x3209
@..api_idx_0052.l23:
    mov word [bp - 0x0002], ax       ; 0x320b
    mov al, byte [bx + 0x5d7d]       ; 0x320e
    sub ah, ah                       ; 0x3212
    mov cx, 0xa                      ; 0x3214
    cwd                              ; 0x3217
    idiv cx                          ; 0x3218
    add word [bp - 0x0002], ax       ; 0x321a
    mov al, byte [bx + 0x5daa]       ; 0x321d
    cbw                              ; 0x3221
    sub ax, word [bp - 0x0002]       ; 0x3222
    mov byte [bx + 0x5daa], al       ; 0x3225
@..api_idx_0052.l24:
    mov word [bp - 0x0002], 3        ; 0x3229
@..api_idx_0052.l25:
    mov ax, 0x248                    ; 0x322e
    imul word [bp + 0x4]             ; 0x3231
    mov bx, ax                       ; 0x3234
    mov al, byte [bx + 0x5daa]       ; 0x3236
    add bx, word [bp - 0x0002]       ; 0x323a
    mov byte [bx + 0x5daa], al       ; 0x323d
    mov al, byte [bx + 0x5d48]       ; 0x3241
    sub ah, ah                       ; 0x3245
    cmp ax, 0xff                     ; 0x3247
    je short @..api_idx_0052.l26     ; 0x324a
    mov ax, 0x248                    ; 0x324c
    imul word [bp + 0x4]             ; 0x324f
    push ax                          ; 0x3252
    mov al, byte [bx + 0x5d48]       ; 0x3253
    sub ah, ah                       ; 0x3257
    mov cx, 0xc                      ; 0x3259
    imul cx                          ; 0x325c
    mov cx, ax                       ; 0x325e
    pop ax                           ; 0x3260
    add ax, cx                       ; 0x3261
    mov bx, ax                       ; 0x3263
    mov al, byte [bx + 0x5c3f]       ; 0x3265
    push ax                          ; 0x3269
    mov ax, 0x248                    ; 0x326a
    imul word [bp + 0x4]             ; 0x326d
    mov cx, ax                       ; 0x3270
    add ax, word [bp - 0x0002]       ; 0x3272
    mov bx, ax                       ; 0x3275
    pop ax                           ; 0x3277
    sub byte [bx + 0x5daa], al       ; 0x3278
@..api_idx_0052.l26:
    inc word [bp - 0x0002]           ; 0x327c
    mov ax, word [bp - 0x0002]       ; 0x327f
    cmp ax, strict word 8            ; 0x3282
    jl short @..api_idx_0052.l25     ; 0x3285
    ret                              ; 0x3287
