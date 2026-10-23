; auto-generated
api_idx_000e_ORJG:
    mov ax, 0xfff2                   ; 0x3b07
    call aztec_csav                  ; 0x3b0a
    mov bx, word [bp + 0x4]          ; 0x3b0d
    mov al, byte [bx + 0x1f]         ; 0x3b10
    sub ah, ah                       ; 0x3b13
    mov word [bp - 0x000a], ax       ; 0x3b15
    mov al, byte [bx + 0x20]         ; 0x3b18
    sub ah, ah                       ; 0x3b1b
    mov word [bp - 0x000c], ax       ; 0x3b1d
    mov word [bss_90e4], 0           ; 0x3b20
    push word [bp + 0x8]             ; 0x3b26
    push word [bp + 0x6]             ; 0x3b29
    call loc_MUTI                    ; 0x3b2c
    add sp, byte 4                   ; 0x3b2f
    push ax                          ; 0x3b32
    mov ax, 0x2c                     ; 0x3b33
    imul word [bp - 0x000c]          ; 0x3b36
    mov si, ax                       ; 0x3b39
    mov ax, word [bp - 0x000a]       ; 0x3b3b
    shl ax, 1                        ; 0x3b3e
    mov bx, ax                       ; 0x3b40
    mov bx, word [bx + party_char]   ; 0x3b42
    mov dx, word [bx + si]           ; 0x3b46
    mov bx, word [bp + 0x4]          ; 0x3b48
    mov cx, word [bx]                ; 0x3b4b
    sub cx, dx                       ; 0x3b4d
    pop ax                           ; 0x3b4f
    add ax, cx                       ; 0x3b50
    mov word [bp - 0x000e], ax       ; 0x3b52
    mov ax, word [bp + 0x6]          ; 0x3b55
    jmp near @..api_idx_000e_ORJG.l131 ; 0x3b58
jumptable_5eb8_case_0:
    mov ax, 0xc                      ; 0x3b5b
    push ax                          ; 0x3b5e
    mov ax, 1                        ; 0x3b5f
    push ax                          ; 0x3b62
    mov ax, 0xf                      ; 0x3b63
    push ax                          ; 0x3b66
    push word [bp - 0x000c]          ; 0x3b67
    push word [bp - 0x000a]          ; 0x3b6a
    call api_idx_0004_PMSR           ; 0x3b6d
    add sp, byte 0x0a                ; 0x3b70
    push word [bp - 0x000e]          ; 0x3b73
    mov ax, 1                        ; 0x3b76
    push ax                          ; 0x3b79
    push word [bp + 0x8]             ; 0x3b7a
    mov ax, 7                        ; 0x3b7d
    push ax                          ; 0x3b80
    mov ax, 1                        ; 0x3b81
    push ax                          ; 0x3b84
    push word [bp - 0x000c]          ; 0x3b85
    push word [bp - 0x000a]          ; 0x3b88
    call api_idx_000a_PJIK           ; 0x3b8b
    add sp, byte 0x0e                ; 0x3b8e
    jmp near @..api_idx_000e_ORJG.l132 ; 0x3b91
jumptable_5eb8_case_1:
    mov ax, 0xa                      ; 0x3b94
    push ax                          ; 0x3b97
    mov ax, 0                        ; 0x3b98
    push ax                          ; 0x3b9b
    mov ax, 0x16                     ; 0x3b9c
    push ax                          ; 0x3b9f
    push word [bp - 0x000c]          ; 0x3ba0
    push word [bp - 0x000a]          ; 0x3ba3
    call api_idx_0004_PMSR           ; 0x3ba6
    add sp, byte 0x0a                ; 0x3ba9
    mov ax, 0                        ; 0x3bac
    push ax                          ; 0x3baf
    mov ax, 2                        ; 0x3bb0
    push ax                          ; 0x3bb3
    push word [bp + 0x8]             ; 0x3bb4
    mov ax, 0                        ; 0x3bb7
    push ax                          ; 0x3bba
    push word [bp - 0x000e]          ; 0x3bbb
    mov ax, 4                        ; 0x3bbe
    push ax                          ; 0x3bc1
    mov ax, 2                        ; 0x3bc2
    push ax                          ; 0x3bc5
    mov ax, 0xd94                    ; 0x3bc6
    push ax                          ; 0x3bc9
    mov ax, 0                        ; 0x3bca
    mov cx, word [bp + 0x8]          ; 0x3bcd
    inc cx                           ; 0x3bd0
    sub ax, cx                       ; 0x3bd1
    push ax                          ; 0x3bd3
    push word [bp - 0x000a]          ; 0x3bd4
    call api_idx_000a_LHTJ           ; 0x3bd7
    add sp, byte 0x14                ; 0x3bda
    jmp near @..api_idx_000e_ORJG.l132 ; 0x3bdd
jumptable_5eb8_case_2:
    mov ax, 0xb                      ; 0x3be0
    push ax                          ; 0x3be3
    mov ax, 1                        ; 0x3be4
    push ax                          ; 0x3be7
    mov ax, 8                        ; 0x3be8
    push ax                          ; 0x3beb
    mov ax, 0                        ; 0x3bec
    push ax                          ; 0x3bef
    push word [bp - 0x000a]          ; 0x3bf0
    call api_idx_0004_PMSR           ; 0x3bf3
    add sp, byte 0x0a                ; 0x3bf6
    push word [bp - 0x000e]          ; 0x3bf9
    mov ax, 1                        ; 0x3bfc
    push ax                          ; 0x3bff
    push word [bp + 0x8]             ; 0x3c00
    mov ax, 8                        ; 0x3c03
    push ax                          ; 0x3c06
    mov ax, 1                        ; 0x3c07
    push ax                          ; 0x3c0a
    mov ax, 0                        ; 0x3c0b
    mov cx, word [bp + 0x8]          ; 0x3c0e
    inc cx                           ; 0x3c11
    inc cx                           ; 0x3c12
    sub ax, cx                       ; 0x3c13
    push ax                          ; 0x3c15
    push word [bp - 0x000a]          ; 0x3c16
    call api_idx_000a_PJIK           ; 0x3c19
    add sp, byte 0x0e                ; 0x3c1c
    jmp near @..api_idx_000e_ORJG.l132 ; 0x3c1f
jumptable_5eb8_case_3:
    mov ax, 0xb                      ; 0x3c22
    push ax                          ; 0x3c25
    mov ax, 1                        ; 0x3c26
    push ax                          ; 0x3c29
    mov ax, 8                        ; 0x3c2a
    push ax                          ; 0x3c2d
    mov ax, 0                        ; 0x3c2e
    push ax                          ; 0x3c31
    push word [bp - 0x000a]          ; 0x3c32
    call api_idx_0004_PMSR           ; 0x3c35
    add sp, byte 0x0a                ; 0x3c38
    push word [bp - 0x000e]          ; 0x3c3b
    mov ax, 1                        ; 0x3c3e
    push ax                          ; 0x3c41
    push word [bp + 0x8]             ; 0x3c42
    mov ax, 5                        ; 0x3c45
    push ax                          ; 0x3c48
    mov ax, 2                        ; 0x3c49
    push ax                          ; 0x3c4c
    mov ax, 0                        ; 0x3c4d
    mov cx, word [bp + 0x8]          ; 0x3c50
    inc cx                           ; 0x3c53
    inc cx                           ; 0x3c54
    inc cx                           ; 0x3c55
    sub ax, cx                       ; 0x3c56
    push ax                          ; 0x3c58
    push word [bp - 0x000a]          ; 0x3c59
    call api_idx_000a_PJIK           ; 0x3c5c
    add sp, byte 0x0e                ; 0x3c5f
    jmp near @..api_idx_000e_ORJG.l132 ; 0x3c62
jumptable_5eb8_case_4:
    mov ax, 0                        ; 0x3c65
    push ax                          ; 0x3c68
    mov ax, word [bss_8464]          ; 0x3c69
    shl ax, 1                        ; 0x3c6c
    mov bx, ax                       ; 0x3c6e
    mov bx, word [bx + party_char]   ; 0x3c70
    mov al, byte [bx + 0x18c]        ; 0x3c74
    sub ah, ah                       ; 0x3c78
    push ax                          ; 0x3c7a
    mov ax, 0xf                      ; 0x3c7b
    imul word [bp + 0x8]             ; 0x3c7e
    push ax                          ; 0x3c81
    call loc_QQUT                    ; 0x3c82
    add sp, byte 6                   ; 0x3c85
    mov cx, word [bss_8464]          ; 0x3c88
    shl cx, 1                        ; 0x3c8c
    mov bx, cx                       ; 0x3c8e
    mov bx, word [bx + party_char]   ; 0x3c90
    mov byte [bx + 0x18c], al        ; 0x3c94
    jmp near @..api_idx_000e_ORJG.l132 ; 0x3c98
jumptable_5eb8_case_5:
    mov ax, 0xc                      ; 0x3c9b
    push ax                          ; 0x3c9e
    mov ax, 1                        ; 0x3c9f
    push ax                          ; 0x3ca2
    mov ax, 0xc                      ; 0x3ca3
    push ax                          ; 0x3ca6
    mov ax, 0                        ; 0x3ca7
    push ax                          ; 0x3caa
    push word [bp - 0x000a]          ; 0x3cab
    call api_idx_0004_PMSR           ; 0x3cae
    add sp, byte 0x0a                ; 0x3cb1
    push word [bp - 0x000e]          ; 0x3cb4
    push word [bp + 0x8]             ; 0x3cb7
    mov ax, 0                        ; 0x3cba
    mov cx, word [bp + 0x8]          ; 0x3cbd
    inc cx                           ; 0x3cc0
    sub ax, cx                       ; 0x3cc1
    push ax                          ; 0x3cc3
    push word [bp - 0x000a]          ; 0x3cc4
    call api_idx_0006_NIMO           ; 0x3cc7
    add sp, byte 8                   ; 0x3cca
    jmp near @..api_idx_000e_ORJG.l132 ; 0x3ccd
jumptable_5eb8_case_6:
    mov ax, 0xb                      ; 0x3cd0
    push ax                          ; 0x3cd3
    mov ax, 1                        ; 0x3cd4
    push ax                          ; 0x3cd7
    mov ax, 8                        ; 0x3cd8
    push ax                          ; 0x3cdb
    mov ax, 0                        ; 0x3cdc
    push ax                          ; 0x3cdf
    push word [bp - 0x000a]          ; 0x3ce0
    call api_idx_0004_PMSR           ; 0x3ce3
    add sp, byte 0x0a                ; 0x3ce6
    push word [bp - 0x000e]          ; 0x3ce9
    mov ax, 1                        ; 0x3cec
    push ax                          ; 0x3cef
    push word [bp + 0x8]             ; 0x3cf0
    mov ax, 3                        ; 0x3cf3
    push ax                          ; 0x3cf6
    push ax                          ; 0x3cf7
    mov ax, 0                        ; 0x3cf8
    mov cx, word [bp + 0x8]          ; 0x3cfb
    add cx, byte 4                   ; 0x3cfe
    sub ax, cx                       ; 0x3d01
    push ax                          ; 0x3d03
    push word [bp - 0x000a]          ; 0x3d04
    call api_idx_000a_PJIK           ; 0x3d07
    add sp, byte 0x0e                ; 0x3d0a
    jmp near @..api_idx_000e_ORJG.l132 ; 0x3d0d
jumptable_5eb8_case_7:
    mov ax, 0xc                      ; 0x3d10
    push ax                          ; 0x3d13
    mov ax, 1                        ; 0x3d14
    push ax                          ; 0x3d17
    mov ax, 0xc                      ; 0x3d18
    push ax                          ; 0x3d1b
    mov ax, 0                        ; 0x3d1c
    push ax                          ; 0x3d1f
    push word [bp - 0x000a]          ; 0x3d20
    call api_idx_0004_PMSR           ; 0x3d23
    add sp, byte 0x0a                ; 0x3d26
    push word [bp - 0x000e]          ; 0x3d29
    mov ax, 1                        ; 0x3d2c
    push ax                          ; 0x3d2f
    push word [bp + 0x8]             ; 0x3d30
    mov ax, 0xa                      ; 0x3d33
    push ax                          ; 0x3d36
    mov ax, 1                        ; 0x3d37
    push ax                          ; 0x3d3a
    mov ax, 0                        ; 0x3d3b
    mov cx, word [bp + 0x8]          ; 0x3d3e
    inc cx                           ; 0x3d41
    inc cx                           ; 0x3d42
    inc cx                           ; 0x3d43
    sub ax, cx                       ; 0x3d44
    push ax                          ; 0x3d46
    push word [bp - 0x000a]          ; 0x3d47
    call api_idx_000a_PJIK           ; 0x3d4a
    add sp, byte 0x0e                ; 0x3d4d
    jmp near @..api_idx_000e_ORJG.l132 ; 0x3d50
jumptable_5eb8_case_8:
    mov ax, 0xc                      ; 0x3d53
    push ax                          ; 0x3d56
    mov ax, 1                        ; 0x3d57
    push ax                          ; 0x3d5a
    mov ax, 0xc                      ; 0x3d5b
    push ax                          ; 0x3d5e
    mov ax, 0                        ; 0x3d5f
    push ax                          ; 0x3d62
    push word [bp - 0x000a]          ; 0x3d63
    call api_idx_0004_PMSR           ; 0x3d66
    add sp, byte 0x0a                ; 0x3d69
    push word [bp - 0x000e]          ; 0x3d6c
    push word [bp + 0x8]             ; 0x3d6f
    mov ax, 0                        ; 0x3d72
    mov cx, word [bp + 0x8]          ; 0x3d75
    inc cx                           ; 0x3d78
    inc cx                           ; 0x3d79
    inc cx                           ; 0x3d7a
    sub ax, cx                       ; 0x3d7b
    push ax                          ; 0x3d7d
    push word [bp - 0x000a]          ; 0x3d7e
    call api_idx_0006_NIMO           ; 0x3d81
    add sp, byte 8                   ; 0x3d84
    jmp near @..api_idx_000e_ORJG.l132 ; 0x3d87
jumptable_5eb8_case_9:
    mov ax, 0xb                      ; 0x3d8a
    push ax                          ; 0x3d8d
    mov ax, 1                        ; 0x3d8e
    push ax                          ; 0x3d91
    mov ax, 8                        ; 0x3d92
    push ax                          ; 0x3d95
    mov ax, 0                        ; 0x3d96
    push ax                          ; 0x3d99
    push word [bp - 0x000a]          ; 0x3d9a
    call api_idx_0004_PMSR           ; 0x3d9d
    add sp, byte 0x0a                ; 0x3da0
    push word [bp - 0x000e]          ; 0x3da3
    mov ax, 1                        ; 0x3da6
    push ax                          ; 0x3da9
    push word [bp + 0x8]             ; 0x3daa
    mov ax, 4                        ; 0x3dad
    push ax                          ; 0x3db0
    mov ax, 2                        ; 0x3db1
    push ax                          ; 0x3db4
    mov ax, 0xfff6                   ; 0x3db5
    push ax                          ; 0x3db8
    push word [bp - 0x000a]          ; 0x3db9
    call api_idx_000a_PJIK           ; 0x3dbc
    add sp, byte 0x0e                ; 0x3dbf
    mov ax, word [bp - 0x000a]       ; 0x3dc2
    shl ax, 1                        ; 0x3dc5
    mov bx, ax                       ; 0x3dc7
    mov bx, word [bx + party_char]   ; 0x3dc9
    mov al, byte [bx + 0x192]        ; 0x3dcd
    sub ah, ah                       ; 0x3dd1
    mov word [bp - 0x0002], ax       ; 0x3dd3
    cmp ax, word [bp + 0x8]          ; 0x3dd6
    jge short @..api_idx_000e_ORJG.l1 ; 0x3dd9
    mov ax, word [bp + 0x8]          ; 0x3ddb
    mov word [bp - 0x0002], ax       ; 0x3dde
@..api_idx_000e_ORJG.l1:
    mov ax, word [bp - 0x0002]       ; 0x3de1
    inc ax                           ; 0x3de4
    mov byte [bx + 0x192], al        ; 0x3de5
    mov ax, word [dest_alt_arg]      ; 0x3de9
    inc ax                           ; 0x3dec
    mov cx, word [bp - 0x000a]       ; 0x3ded
    shl cx, 1                        ; 0x3df0
    mov bx, cx                       ; 0x3df2
    mov bx, word [bx + party_char]   ; 0x3df4
    mov byte [bx + 0x198], al        ; 0x3df8
    jmp near @..api_idx_000e_ORJG.l132 ; 0x3dfc
jumptable_5eb8_case_10:
    mov ax, 0xb                      ; 0x3dff
    push ax                          ; 0x3e02
    mov ax, 1                        ; 0x3e03
    push ax                          ; 0x3e06
    mov ax, 8                        ; 0x3e07
    push ax                          ; 0x3e0a
    mov ax, 0                        ; 0x3e0b
    push ax                          ; 0x3e0e
    cmp word [bss_8464], byte 0      ; 0x3e0f
    jne short @..api_idx_000e_ORJG.l2 ; 0x3e14
    mov ax, 1                        ; 0x3e16
@..api_idx_000e_ORJG.l2:
    push ax                          ; 0x3e19
    call api_idx_0004_PMSR           ; 0x3e1a
    add sp, byte 0x0a                ; 0x3e1d
    push word [bp - 0x000e]          ; 0x3e20
    mov ax, 1                        ; 0x3e23
    push ax                          ; 0x3e26
    push word [bp + 0x8]             ; 0x3e27
    mov ax, 4                        ; 0x3e2a
    push ax                          ; 0x3e2d
    mov ax, 5                        ; 0x3e2e
    push ax                          ; 0x3e31
    cmp word [bss_8464], byte 0      ; 0x3e32
    je short @..api_idx_000e_ORJG.l3 ; 0x3e37
    mov ax, word [bss_8464]          ; 0x3e39
    cmp ax, strict word 6            ; 0x3e3c
    jne short @..api_idx_000e_ORJG.l4 ; 0x3e3f
@..api_idx_000e_ORJG.l3:
    mov ax, 1                        ; 0x3e41
    jmp short @..api_idx_000e_ORJG.l5 ; 0x3e44
@..api_idx_000e_ORJG.l4:
    mov ax, 0                        ; 0x3e46
@..api_idx_000e_ORJG.l5:
    push ax                          ; 0x3e49
    call api_idx_0002_PGQI           ; 0x3e4a
    add sp, byte 0x0c                ; 0x3e4d
    jmp near @..api_idx_000e_ORJG.l132 ; 0x3e50
jumptable_5eb8_case_11:
    mov ax, 0xc                      ; 0x3e53
    push ax                          ; 0x3e56
    mov ax, 1                        ; 0x3e57
    push ax                          ; 0x3e5a
    mov ax, 0xc                      ; 0x3e5b
    push ax                          ; 0x3e5e
    push word [bp - 0x000c]          ; 0x3e5f
    push word [bp - 0x000a]          ; 0x3e62
    call api_idx_0004_PMSR           ; 0x3e65
    add sp, byte 0x0a                ; 0x3e68
    push word [bp - 0x000e]          ; 0x3e6b
    mov ax, 3                        ; 0x3e6e
    push ax                          ; 0x3e71
    push word [bp + 0x8]             ; 0x3e72
    mov ax, 6                        ; 0x3e75
    push ax                          ; 0x3e78
    mov ax, 1                        ; 0x3e79
    push ax                          ; 0x3e7c
    push word [bp - 0x000c]          ; 0x3e7d
    push word [bp - 0x000a]          ; 0x3e80
    call api_idx_000a_PJIK           ; 0x3e83
    add sp, byte 0x0e                ; 0x3e86
    jmp near @..api_idx_000e_ORJG.l132 ; 0x3e89
jumptable_5eb8_case_13:
    mov ax, 0xa                      ; 0x3e8c
    push ax                          ; 0x3e8f
    mov ax, 0                        ; 0x3e90
    push ax                          ; 0x3e93
    mov ax, 0x16                     ; 0x3e94
    push ax                          ; 0x3e97
    mov ax, 0                        ; 0x3e98
    push ax                          ; 0x3e9b
    push word [bp - 0x000a]          ; 0x3e9c
    call api_idx_0004_PMSR           ; 0x3e9f
    add sp, byte 0x0a                ; 0x3ea2
    push word [bp + 0x8]             ; 0x3ea5
    mov ax, 3                        ; 0x3ea8
    push ax                          ; 0x3eab
    push word [bp + 0x8]             ; 0x3eac
    mov ax, 0                        ; 0x3eaf
    push ax                          ; 0x3eb2
    push word [bp - 0x000e]          ; 0x3eb3
    mov ax, 1                        ; 0x3eb6
    push ax                          ; 0x3eb9
    mov ax, 0xa                      ; 0x3eba
    push ax                          ; 0x3ebd
    mov ax, 0xd91                    ; 0x3ebe
    push ax                          ; 0x3ec1
    mov ax, 0xfff6                   ; 0x3ec2
    push ax                          ; 0x3ec5
    push word [bp - 0x000a]          ; 0x3ec6
    call api_idx_000a_LHTJ           ; 0x3ec9
    add sp, byte 0x14                ; 0x3ecc
    jmp near @..api_idx_000e_ORJG.l132 ; 0x3ecf
jumptable_5eb8_case_14:
    mov ax, 0xa                      ; 0x3ed2
    push ax                          ; 0x3ed5
    mov ax, 0                        ; 0x3ed6
    push ax                          ; 0x3ed9
    mov ax, 0x16                     ; 0x3eda
    push ax                          ; 0x3edd
    mov ax, 0                        ; 0x3ede
    push ax                          ; 0x3ee1
    push word [bp - 0x000a]          ; 0x3ee2
    call api_idx_0004_PMSR           ; 0x3ee5
    add sp, byte 0x0a                ; 0x3ee8
    mov ax, 1                        ; 0x3eeb
    push ax                          ; 0x3eee
    push word [bp + 0x8]             ; 0x3eef
    push word [bp - 0x000e]          ; 0x3ef2
    mov ax, 0                        ; 0x3ef5
    mov cx, word [bp + 0x8]          ; 0x3ef8
    inc cx                           ; 0x3efb
    inc cx                           ; 0x3efc
    inc cx                           ; 0x3efd
    sub ax, cx                       ; 0x3efe
    push ax                          ; 0x3f00
    push word [bp - 0x000a]          ; 0x3f01
    call api_idx_0010_RUQS           ; 0x3f04
    add sp, byte 0x0a                ; 0x3f07
    jmp near @..api_idx_000e_ORJG.l132 ; 0x3f0a
jumptable_5eb8_case_15:
    mov ax, 0xa                      ; 0x3f0d
    push ax                          ; 0x3f10
    mov ax, 0                        ; 0x3f11
    push ax                          ; 0x3f14
    mov ax, 0x16                     ; 0x3f15
    push ax                          ; 0x3f18
    mov ax, 0                        ; 0x3f19
    push ax                          ; 0x3f1c
    push word [bp - 0x000a]          ; 0x3f1d
    call api_idx_0004_PMSR           ; 0x3f20
    add sp, byte 0x0a                ; 0x3f23
    mov ax, 0                        ; 0x3f26
    push ax                          ; 0x3f29
    push word [bp + 0x8]             ; 0x3f2a
    push word [bp - 0x000e]          ; 0x3f2d
    mov cx, word [bp + 0x8]          ; 0x3f30
    inc cx                           ; 0x3f33
    inc cx                           ; 0x3f34
    inc cx                           ; 0x3f35
    sub ax, cx                       ; 0x3f36
    push ax                          ; 0x3f38
    push word [bp - 0x000a]          ; 0x3f39
    call api_idx_0010_RUQS           ; 0x3f3c
    add sp, byte 0x0a                ; 0x3f3f
    jmp near @..api_idx_000e_ORJG.l132 ; 0x3f42
jumptable_5eb8_case_16:
    mov word [bp - 0x0002], 0        ; 0x3f45
    jmp short @..api_idx_000e_ORJG.l8 ; 0x3f4a
@..api_idx_000e_ORJG.l6:
    mov ax, 0x2c                     ; 0x3f4c
    imul word [bp - 0x0002]          ; 0x3f4f
    mov si, ax                       ; 0x3f52
    mov ax, word [bss_8464]          ; 0x3f54
    shl ax, 1                        ; 0x3f57
    mov bx, ax                       ; 0x3f59
    mov bx, word [bx + party_char]   ; 0x3f5b
    cmp byte [bx + si + 0x22], 3     ; 0x3f5f
    jae short @..api_idx_000e_ORJG.l7 ; 0x3f63
    mov ax, 0                        ; 0x3f65
    push ax                          ; 0x3f68
    mov al, byte [bx + si + 0x29]    ; 0x3f69
    cbw                              ; 0x3f6c
    push ax                          ; 0x3f6d
    mov ax, word [bp + 0x8]          ; 0x3f6e
    shl ax, 1                        ; 0x3f71
    push ax                          ; 0x3f73
    call loc_QQUT                    ; 0x3f74
    add sp, byte 6                   ; 0x3f77
    push ax                          ; 0x3f7a
    mov ax, 0x2c                     ; 0x3f7b
    imul word [bp - 0x0002]          ; 0x3f7e
    mov si, ax                       ; 0x3f81
    mov ax, word [bss_8464]          ; 0x3f83
    shl ax, 1                        ; 0x3f86
    mov bx, ax                       ; 0x3f88
    mov bx, word [bx + party_char]   ; 0x3f8a
    pop ax                           ; 0x3f8e
    mov byte [bx + si + 0x29], al    ; 0x3f8f
@..api_idx_000e_ORJG.l7:
    inc word [bp - 0x0002]           ; 0x3f92
@..api_idx_000e_ORJG.l8:
    mov ax, word [bss_8464]          ; 0x3f95
    shl ax, 1                        ; 0x3f98
    mov bx, ax                       ; 0x3f9a
    mov bx, word [bx + party_char]   ; 0x3f9c
    mov al, byte [bx + 0x1a1]        ; 0x3fa0
    sub ah, ah                       ; 0x3fa4
    cmp ax, word [bp - 0x0002]       ; 0x3fa6
    jg short @..api_idx_000e_ORJG.l6 ; 0x3fa9
    jmp near @..api_idx_000e_ORJG.l132 ; 0x3fab
jumptable_5eb8_case_18:
    mov ax, 0                        ; 0x3fae
    push ax                          ; 0x3fb1
    mov ax, word [bss_8464]          ; 0x3fb2
    shl ax, 1                        ; 0x3fb5
    mov bx, ax                       ; 0x3fb7
    mov bx, word [bx + party_char]   ; 0x3fb9
    mov al, byte [bx + 0x18d]        ; 0x3fbd
    sub ah, ah                       ; 0x3fc1
    push ax                          ; 0x3fc3
    mov ax, 0xf                      ; 0x3fc4
    imul word [bp + 0x8]             ; 0x3fc7
    push ax                          ; 0x3fca
    call loc_QQUT                    ; 0x3fcb
    add sp, byte 6                   ; 0x3fce
    mov cx, word [bss_8464]          ; 0x3fd1
    shl cx, 1                        ; 0x3fd5
    mov bx, cx                       ; 0x3fd7
    mov bx, word [bx + party_char]   ; 0x3fd9
    mov byte [bx + 0x18d], al        ; 0x3fdd
    jmp near @..api_idx_000e_ORJG.l132 ; 0x3fe1
jumptable_5eb8_case_20:
    mov ax, 0xb                      ; 0x3fe4
    push ax                          ; 0x3fe7
    mov ax, 1                        ; 0x3fe8
    push ax                          ; 0x3feb
    mov ax, 0xa                      ; 0x3fec
    push ax                          ; 0x3fef
    mov ax, 0                        ; 0x3ff0
    push ax                          ; 0x3ff3
    push word [bp - 0x000a]          ; 0x3ff4
    call api_idx_0004_PMSR           ; 0x3ff7
    add sp, byte 0x0a                ; 0x3ffa
    push word [bp - 0x000e]          ; 0x3ffd
    mov ax, 3                        ; 0x4000
    push ax                          ; 0x4003
    push word [bp + 0x8]             ; 0x4004
    mov ax, 4                        ; 0x4007
    push ax                          ; 0x400a
    mov ax, 3                        ; 0x400b
    push ax                          ; 0x400e
    mov ax, 0                        ; 0x400f
    mov cx, word [bp + 0x8]          ; 0x4012
    add cx, byte 4                   ; 0x4015
    sub ax, cx                       ; 0x4018
    push ax                          ; 0x401a
    push word [bp - 0x000a]          ; 0x401b
    call api_idx_000a_PJIK           ; 0x401e
    add sp, byte 0x0e                ; 0x4021
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4024
jumptable_5eb8_case_21:
    mov ax, 0xa                      ; 0x4027
    push ax                          ; 0x402a
    mov ax, 0                        ; 0x402b
    push ax                          ; 0x402e
    mov ax, 0x16                     ; 0x402f
    push ax                          ; 0x4032
    push word [bp - 0x000c]          ; 0x4033
    push word [bp - 0x000a]          ; 0x4036
    call api_idx_0004_PMSR           ; 0x4039
    add sp, byte 0x0a                ; 0x403c
    push word [bp + 0x8]             ; 0x403f
    mov ax, 1                        ; 0x4042
    push ax                          ; 0x4045
    mov ax, word [bp + 0x8]          ; 0x4046
    shl ax, 1                        ; 0x4049
    push ax                          ; 0x404b
    mov ax, 0                        ; 0x404c
    push ax                          ; 0x404f
    push word [bp - 0x000e]          ; 0x4050
    mov ax, 3                        ; 0x4053
    push ax                          ; 0x4056
    mov ax, 4                        ; 0x4057
    push ax                          ; 0x405a
    mov ax, 0xd93                    ; 0x405b
    push ax                          ; 0x405e
    push word [bp - 0x000c]          ; 0x405f
    push word [bp - 0x000a]          ; 0x4062
    call api_idx_000a_LHTJ           ; 0x4065
    add sp, byte 0x14                ; 0x4068
    jmp near @..api_idx_000e_ORJG.l132 ; 0x406b
jumptable_5eb8_case_22:
    mov ax, word [bp + 0x8]          ; 0x406e
    dec ax                           ; 0x4071
    mov cx, 2                        ; 0x4072
    cwd                              ; 0x4075
    idiv cx                          ; 0x4076
    inc ax                           ; 0x4078
    mov word [bp - 0x0004], ax       ; 0x4079
    mov ax, 0                        ; 0x407c
    push ax                          ; 0x407f
    mov ax, 0x2c                     ; 0x4080
    imul word [bp - 0x000c]          ; 0x4083
    mov si, ax                       ; 0x4086
    mov ax, word [bss_8464]          ; 0x4088
    shl ax, 1                        ; 0x408b
    mov bx, ax                       ; 0x408d
    mov bx, word [bx + party_char]   ; 0x408f
    mov al, byte [bx + si + 0x28]    ; 0x4093
    cbw                              ; 0x4096
    push ax                          ; 0x4097
    push word [bp + 0x8]             ; 0x4098
    call loc_QQUT                    ; 0x409b
    add sp, byte 6                   ; 0x409e
    push ax                          ; 0x40a1
    mov ax, 0x2c                     ; 0x40a2
    imul word [bp - 0x000c]          ; 0x40a5
    mov si, ax                       ; 0x40a8
    mov ax, word [bss_8464]          ; 0x40aa
    shl ax, 1                        ; 0x40ad
    mov bx, ax                       ; 0x40af
    mov bx, word [bx + party_char]   ; 0x40b1
    pop ax                           ; 0x40b5
    mov byte [bx + si + 0x28], al    ; 0x40b6
    mov ax, 1                        ; 0x40b9
    push ax                          ; 0x40bc
    mov ax, 0x2c                     ; 0x40bd
    imul word [bp - 0x000c]          ; 0x40c0
    mov si, ax                       ; 0x40c3
    mov ax, word [bss_8464]          ; 0x40c5
    shl ax, 1                        ; 0x40c8
    mov bx, ax                       ; 0x40ca
    mov bx, word [bx + party_char]   ; 0x40cc
    mov al, byte [bx + si + 0x26]    ; 0x40d0
    cbw                              ; 0x40d3
    push ax                          ; 0x40d4
    push word [bp - 0x0004]          ; 0x40d5
    call loc_QQUT                    ; 0x40d8
    add sp, byte 6                   ; 0x40db
    push ax                          ; 0x40de
    mov ax, 0x2c                     ; 0x40df
    imul word [bp - 0x000c]          ; 0x40e2
    mov si, ax                       ; 0x40e5
    mov ax, word [bss_8464]          ; 0x40e7
    shl ax, 1                        ; 0x40ea
    mov bx, ax                       ; 0x40ec
    mov bx, word [bx + party_char]   ; 0x40ee
    pop ax                           ; 0x40f2
    mov byte [bx + si + 0x26], al    ; 0x40f3
    mov ax, 1                        ; 0x40f6
    push ax                          ; 0x40f9
    mov ax, 0x2c                     ; 0x40fa
    imul word [bp - 0x000c]          ; 0x40fd
    mov si, ax                       ; 0x4100
    mov ax, word [bss_8464]          ; 0x4102
    shl ax, 1                        ; 0x4105
    mov bx, ax                       ; 0x4107
    mov bx, word [bx + party_char]   ; 0x4109
    mov al, byte [bx + si + 0x27]    ; 0x410d
    cbw                              ; 0x4110
    push ax                          ; 0x4111
    push word [bp - 0x0004]          ; 0x4112
    call loc_QQUT                    ; 0x4115
    add sp, byte 6                   ; 0x4118
    push ax                          ; 0x411b
    mov ax, 0x2c                     ; 0x411c
    imul word [bp - 0x000c]          ; 0x411f
    mov si, ax                       ; 0x4122
    mov ax, word [bss_8464]          ; 0x4124
    shl ax, 1                        ; 0x4127
    mov bx, ax                       ; 0x4129
    mov bx, word [bx + party_char]   ; 0x412b
    pop ax                           ; 0x412f
    mov byte [bx + si + 0x27], al    ; 0x4130
    mov ax, 0                        ; 0x4133
    push ax                          ; 0x4136
    mov ax, 0x2c                     ; 0x4137
    imul word [bp - 0x000c]          ; 0x413a
    mov si, ax                       ; 0x413d
    mov ax, word [bss_8464]          ; 0x413f
    shl ax, 1                        ; 0x4142
    mov bx, ax                       ; 0x4144
    mov bx, word [bx + party_char]   ; 0x4146
    mov al, byte [bx + si + 0x29]    ; 0x414a
    cbw                              ; 0x414d
    push ax                          ; 0x414e
    mov ax, word [bp + 0x8]          ; 0x414f
    shl ax, 1                        ; 0x4152
    push ax                          ; 0x4154
    call loc_QQUT                    ; 0x4155
    add sp, byte 6                   ; 0x4158
    push ax                          ; 0x415b
    mov ax, 0x2c                     ; 0x415c
    imul word [bp - 0x000c]          ; 0x415f
    mov si, ax                       ; 0x4162
    mov ax, word [bss_8464]          ; 0x4164
    shl ax, 1                        ; 0x4167
    mov bx, ax                       ; 0x4169
    mov bx, word [bx + party_char]   ; 0x416b
    pop ax                           ; 0x416f
    mov byte [bx + si + 0x29], al    ; 0x4170
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4173
jumptable_5eb8_case_23:
    mov ax, 0xb                      ; 0x4176
    push ax                          ; 0x4179
    mov ax, 1                        ; 0x417a
    push ax                          ; 0x417d
    mov ax, 0xa                      ; 0x417e
    push ax                          ; 0x4181
    push word [bp - 0x000c]          ; 0x4182
    push word [bp - 0x000a]          ; 0x4185
    call api_idx_0004_PMSR           ; 0x4188
    add sp, byte 0x0a                ; 0x418b
    push word [bp - 0x000e]          ; 0x418e
    mov ax, 3                        ; 0x4191
    push ax                          ; 0x4194
    push word [bp + 0x8]             ; 0x4195
    mov ax, 0xa                      ; 0x4198
    push ax                          ; 0x419b
    mov ax, 3                        ; 0x419c
    push ax                          ; 0x419f
    push word [bp - 0x000c]          ; 0x41a0
    push word [bp - 0x000a]          ; 0x41a3
    call api_idx_000a_PJIK           ; 0x41a6
    add sp, byte 0x0e                ; 0x41a9
    jmp near @..api_idx_000e_ORJG.l132 ; 0x41ac
jumptable_5eb8_case_24:
    mov ax, 0xa                      ; 0x41af
    push ax                          ; 0x41b2
    mov ax, 1                        ; 0x41b3
    push ax                          ; 0x41b6
    mov ax, 0x16                     ; 0x41b7
    push ax                          ; 0x41ba
    mov ax, 0                        ; 0x41bb
    push ax                          ; 0x41be
    push word [bp - 0x000a]          ; 0x41bf
    call api_idx_0004_PMSR           ; 0x41c2
    add sp, byte 0x0a                ; 0x41c5
    push word [bp - 0x000e]          ; 0x41c8
    mov ax, 0xb                      ; 0x41cb
    push ax                          ; 0x41ce
    push word [bp + 0x8]             ; 0x41cf
    mov ax, 5                        ; 0x41d2
    push ax                          ; 0x41d5
    mov ax, 2                        ; 0x41d6
    push ax                          ; 0x41d9
    mov ax, 0xfff6                   ; 0x41da
    push ax                          ; 0x41dd
    push word [bp - 0x000a]          ; 0x41de
    call api_idx_0010_LPLH           ; 0x41e1
    add sp, byte 0x0e                ; 0x41e4
    mov ax, word [bp - 0x000a]       ; 0x41e7
    shl ax, 1                        ; 0x41ea
    mov bx, ax                       ; 0x41ec
    mov bx, word [bx + party_char]   ; 0x41ee
    mov al, byte [bx + 0x196]        ; 0x41f2
    sub ah, ah                       ; 0x41f6
    mov word [bp - 0x0002], ax       ; 0x41f8
    cmp ax, word [bp + 0x8]          ; 0x41fb
    jge short @..api_idx_000e_ORJG.l9 ; 0x41fe
    mov ax, word [bp + 0x8]          ; 0x4200
    mov word [bp - 0x0002], ax       ; 0x4203
@..api_idx_000e_ORJG.l9:
    mov ax, word [bp - 0x0002]       ; 0x4206
    inc ax                           ; 0x4209
    mov byte [bx + 0x196], al        ; 0x420a
    mov ax, word [dest_alt_arg]      ; 0x420e
    inc ax                           ; 0x4211
    mov cx, word [bp - 0x000a]       ; 0x4212
    shl cx, 1                        ; 0x4215
    mov bx, cx                       ; 0x4217
    mov bx, word [bx + party_char]   ; 0x4219
    mov byte [bx + 0x19c], al        ; 0x421d
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4221
jumptable_5eb8_case_26:
    mov ax, 6                        ; 0x4224
    push ax                          ; 0x4227
    mov ax, 0                        ; 0x4228
    push ax                          ; 0x422b
    mov ax, 0x17                     ; 0x422c
    push ax                          ; 0x422f
    push word [bp - 0x000c]          ; 0x4230
    push word [bp - 0x000a]          ; 0x4233
    call api_idx_0004_PMSR           ; 0x4236
    add sp, byte 0x0a                ; 0x4239
    push word [bp + 0x8]             ; 0x423c
    mov ax, 2                        ; 0x423f
    push ax                          ; 0x4242
    mov ax, 0xa                      ; 0x4243
    imul word [bp + 0x8]             ; 0x4246
    push ax                          ; 0x4249
    mov ax, 0                        ; 0x424a
    push ax                          ; 0x424d
    mov ax, 5                        ; 0x424e
    push ax                          ; 0x4251
    push ax                          ; 0x4252
    mov ax, 1                        ; 0x4253
    push ax                          ; 0x4256
    push word [bp - 0x000e]          ; 0x4257
    push word [bp + 0x8]             ; 0x425a
    mov ax, 6                        ; 0x425d
    push ax                          ; 0x4260
    mov ax, 0xd95                    ; 0x4261
    push ax                          ; 0x4264
    push word [bp - 0x000c]          ; 0x4265
    push word [bp - 0x000a]          ; 0x4268
    call api_idx_000e_RMNP           ; 0x426b
    add sp, byte 0x1a                ; 0x426e
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4271
jumptable_5eb8_case_27:
    mov ax, 0                        ; 0x4274
    push ax                          ; 0x4277
    mov ax, word [bss_8464]          ; 0x4278
    shl ax, 1                        ; 0x427b
    mov bx, ax                       ; 0x427d
    mov bx, word [bx + party_char]   ; 0x427f
    mov al, byte [bx + 0x18e]        ; 0x4283
    sub ah, ah                       ; 0x4287
    push ax                          ; 0x4289
    mov ax, 0xf                      ; 0x428a
    imul word [bp + 0x8]             ; 0x428d
    push ax                          ; 0x4290
    call loc_QQUT                    ; 0x4291
    add sp, byte 6                   ; 0x4294
    mov cx, word [bss_8464]          ; 0x4297
    shl cx, 1                        ; 0x429b
    mov bx, cx                       ; 0x429d
    mov bx, word [bx + party_char]   ; 0x429f
    mov byte [bx + 0x18e], al        ; 0x42a3
    jmp near @..api_idx_000e_ORJG.l132 ; 0x42a7
jumptable_5eb8_case_28:
    mov ax, 0xc                      ; 0x42aa
    push ax                          ; 0x42ad
    mov ax, 0                        ; 0x42ae
    push ax                          ; 0x42b1
    mov ax, 0xe                      ; 0x42b2
    push ax                          ; 0x42b5
    mov ax, 0                        ; 0x42b6
    push ax                          ; 0x42b9
    push word [bp - 0x000a]          ; 0x42ba
    call api_idx_0004_PMSR           ; 0x42bd
    add sp, byte 0x0a                ; 0x42c0
    push word [bp - 0x000e]          ; 0x42c3
    mov ax, 5                        ; 0x42c6
    push ax                          ; 0x42c9
    push word [bp + 0x8]             ; 0x42ca
    push ax                          ; 0x42cd
    mov ax, 1                        ; 0x42ce
    push ax                          ; 0x42d1
    mov ax, 0xfff6                   ; 0x42d2
    push ax                          ; 0x42d5
    push word [bp - 0x000a]          ; 0x42d6
    call api_idx_000a_PJIK           ; 0x42d9
    add sp, byte 0x0e                ; 0x42dc
    jmp near @..api_idx_000e_ORJG.l132 ; 0x42df
jumptable_5eb8_case_29:
    mov ax, 6                        ; 0x42e2
    push ax                          ; 0x42e5
    mov ax, 1                        ; 0x42e6
    push ax                          ; 0x42e9
    mov ax, 0x17                     ; 0x42ea
    push ax                          ; 0x42ed
    mov ax, 0                        ; 0x42ee
    push ax                          ; 0x42f1
    push word [bp - 0x000a]          ; 0x42f2
    call api_idx_0004_PMSR           ; 0x42f5
    add sp, byte 0x0a                ; 0x42f8
    push word [bp + 0x8]             ; 0x42fb
    mov ax, 4                        ; 0x42fe
    push ax                          ; 0x4301
    push word [bp + 0x8]             ; 0x4302
    mov ax, 0                        ; 0x4305
    push ax                          ; 0x4308
    mov ax, 8                        ; 0x4309
    push ax                          ; 0x430c
    mov ax, 6                        ; 0x430d
    push ax                          ; 0x4310
    mov ax, 1                        ; 0x4311
    push ax                          ; 0x4314
    push word [bp - 0x000e]          ; 0x4315
    push word [bp + 0x8]             ; 0x4318
    mov ax, 5                        ; 0x431b
    push ax                          ; 0x431e
    mov ax, 0xd98                    ; 0x431f
    push ax                          ; 0x4322
    mov ax, 0xfffd                   ; 0x4323
    push ax                          ; 0x4326
    push word [bp - 0x000a]          ; 0x4327
    call api_idx_000e_RMNP           ; 0x432a
    add sp, byte 0x1a                ; 0x432d
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4330
jumptable_5eb8_case_30:
    mov ax, 0                        ; 0x4333
    push ax                          ; 0x4336
    mov ax, word [bss_8464]          ; 0x4337
    shl ax, 1                        ; 0x433a
    mov bx, ax                       ; 0x433c
    mov bx, word [bx + party_char]   ; 0x433e
    mov al, byte [bx + 0x18f]        ; 0x4342
    sub ah, ah                       ; 0x4346
    push ax                          ; 0x4348
    mov ax, 0xf                      ; 0x4349
    imul word [bp + 0x8]             ; 0x434c
    push ax                          ; 0x434f
    call loc_QQUT                    ; 0x4350
    add sp, byte 6                   ; 0x4353
    mov cx, word [bss_8464]          ; 0x4356
    shl cx, 1                        ; 0x435a
    mov bx, cx                       ; 0x435c
    mov bx, word [bx + party_char]   ; 0x435e
    mov byte [bx + 0x18f], al        ; 0x4362
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4366
jumptable_5eb8_case_31:
    mov ax, 0xa                      ; 0x4369
    push ax                          ; 0x436c
    mov ax, 0                        ; 0x436d
    push ax                          ; 0x4370
    mov ax, 0x16                     ; 0x4371
    push ax                          ; 0x4374
    mov ax, 0                        ; 0x4375
    push ax                          ; 0x4378
    push word [bp - 0x000a]          ; 0x4379
    call api_idx_0004_PMSR           ; 0x437c
    add sp, byte 0x0a                ; 0x437f
    mov ax, 0                        ; 0x4382
    push ax                          ; 0x4385
    mov ax, 2                        ; 0x4386
    push ax                          ; 0x4389
    push word [bp + 0x8]             ; 0x438a
    mov ax, 0                        ; 0x438d
    push ax                          ; 0x4390
    push word [bp - 0x000e]          ; 0x4391
    push ax                          ; 0x4394
    mov ax, 0xc                      ; 0x4395
    push ax                          ; 0x4398
    mov ax, 0xd90                    ; 0x4399
    push ax                          ; 0x439c
    mov ax, 0                        ; 0x439d
    mov cx, word [bp + 0x8]          ; 0x43a0
    inc cx                           ; 0x43a3
    inc cx                           ; 0x43a4
    inc cx                           ; 0x43a5
    sub ax, cx                       ; 0x43a6
    push ax                          ; 0x43a8
    push word [bp - 0x000a]          ; 0x43a9
    call api_idx_000a_LHTJ           ; 0x43ac
    add sp, byte 0x14                ; 0x43af
    jmp near @..api_idx_000e_ORJG.l132 ; 0x43b2
jumptable_5eb8_case_32:
    mov ax, 6                        ; 0x43b5
    push ax                          ; 0x43b8
    mov ax, 0                        ; 0x43b9
    push ax                          ; 0x43bc
    mov ax, 0x17                     ; 0x43bd
    push ax                          ; 0x43c0
    mov ax, 0                        ; 0x43c1
    push ax                          ; 0x43c4
    push word [bp - 0x000a]          ; 0x43c5
    call api_idx_0004_PMSR           ; 0x43c8
    add sp, byte 0x0a                ; 0x43cb
    push word [bp + 0x8]             ; 0x43ce
    mov ax, 2                        ; 0x43d1
    push ax                          ; 0x43d4
    mov ax, 0xa                      ; 0x43d5
    imul word [bp + 0x8]             ; 0x43d8
    push ax                          ; 0x43db
    mov ax, 0                        ; 0x43dc
    push ax                          ; 0x43df
    mov ax, 5                        ; 0x43e0
    push ax                          ; 0x43e3
    mov ax, 4                        ; 0x43e4
    push ax                          ; 0x43e7
    mov ax, 1                        ; 0x43e8
    push ax                          ; 0x43eb
    push word [bp - 0x000e]          ; 0x43ec
    push word [bp + 0x8]             ; 0x43ef
    mov ax, 6                        ; 0x43f2
    push ax                          ; 0x43f5
    mov ax, 0xd95                    ; 0x43f6
    push ax                          ; 0x43f9
    mov ax, 0xfff6                   ; 0x43fa
    push ax                          ; 0x43fd
    push word [bp - 0x000a]          ; 0x43fe
    call api_idx_000e_RMNP           ; 0x4401
    add sp, byte 0x1a                ; 0x4404
    mov ax, word [bp - 0x000a]       ; 0x4407
    shl ax, 1                        ; 0x440a
    mov bx, ax                       ; 0x440c
    mov bx, word [bx + party_char]   ; 0x440e
    mov al, byte [bx + 0x193]        ; 0x4412
    sub ah, ah                       ; 0x4416
    mov word [bp - 0x0002], ax       ; 0x4418
    cmp ax, word [bp + 0x8]          ; 0x441b
    jge short @..api_idx_000e_ORJG.l10 ; 0x441e
    mov ax, word [bp + 0x8]          ; 0x4420
    mov word [bp - 0x0002], ax       ; 0x4423
@..api_idx_000e_ORJG.l10:
    mov ax, word [bp - 0x0002]       ; 0x4426
    inc ax                           ; 0x4429
    mov byte [bx + 0x193], al        ; 0x442a
    mov ax, word [dest_alt_arg]      ; 0x442e
    inc ax                           ; 0x4431
    mov cx, word [bp - 0x000a]       ; 0x4432
    shl cx, 1                        ; 0x4435
    mov bx, cx                       ; 0x4437
    mov bx, word [bx + party_char]   ; 0x4439
    mov byte [bx + 0x199], al        ; 0x443d
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4441
jumptable_5eb8_case_34:
    mov ax, 6                        ; 0x4444
    push ax                          ; 0x4447
    mov ax, 0                        ; 0x4448
    push ax                          ; 0x444b
    mov ax, 0x18                     ; 0x444c
    push ax                          ; 0x444f
    mov ax, 0                        ; 0x4450
    push ax                          ; 0x4453
    push word [bp - 0x000a]          ; 0x4454
    call api_idx_0004_PMSR           ; 0x4457
    add sp, byte 0x0a                ; 0x445a
    push word [bp - 0x000e]          ; 0x445d
    mov ax, 5                        ; 0x4460
    push ax                          ; 0x4463
    push word [bp + 0x8]             ; 0x4464
    mov ax, 7                        ; 0x4467
    push ax                          ; 0x446a
    mov ax, 1                        ; 0x446b
    push ax                          ; 0x446e
    mov ax, 0                        ; 0x446f
    mov cx, word [bp + 0x8]          ; 0x4472
    inc cx                           ; 0x4475
    inc cx                           ; 0x4476
    inc cx                           ; 0x4477
    sub ax, cx                       ; 0x4478
    push ax                          ; 0x447a
    push word [bp - 0x000a]          ; 0x447b
    call api_idx_000a_PJIK           ; 0x447e
    add sp, byte 0x0e                ; 0x4481
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4484
jumptable_5eb8_case_35:
    mov ax, 3                        ; 0x4487
    push ax                          ; 0x448a
    push ax                          ; 0x448b
    call api_idx_0004_UONH           ; 0x448c
    add sp, byte 4                   ; 0x448f
    mov ax, 3                        ; 0x4492
    push ax                          ; 0x4495
    mov ax, 0x41                     ; 0x4496
    push ax                          ; 0x4499
    mov ax, 0xc98                    ; 0x449a
    push ax                          ; 0x449d
    call api_idx_0050_PLNP           ; 0x449e
    add sp, byte 6                   ; 0x44a1
    push word [bss_9058]             ; 0x44a4
    call api_idx_0004_QUPL           ; 0x44a8
    pop cx                           ; 0x44ab
    mov word [bp - 0x0002], 0        ; 0x44ac
@..api_idx_000e_ORJG.l11:
    mov ax, word [bss_8464]          ; 0x44b1
    shl ax, 1                        ; 0x44b4
    mov bx, ax                       ; 0x44b6
    mov bx, word [bx + party_char]   ; 0x44b8
    mov si, word [bp - 0x0002]       ; 0x44bc
    mov al, byte [bx + si + 0x192]   ; 0x44bf
    sub ah, ah                       ; 0x44c3
    sub ax, word [bp + 0x8]          ; 0x44c5
    mov word [bp - 0x0004], ax       ; 0x44c8
    cmp ax, strict word 0            ; 0x44cb
    jge short @..api_idx_000e_ORJG.l12 ; 0x44ce
    mov word [bp - 0x0004], 0        ; 0x44d0
@..api_idx_000e_ORJG.l12:
    mov al, byte [bp - 0x0004]       ; 0x44d5
    mov byte [bx + si + 0x192], al   ; 0x44d8
    inc word [bp - 0x0002]           ; 0x44dc
    mov ax, word [bp - 0x0002]       ; 0x44df
    cmp ax, strict word 6            ; 0x44e2
    jl short @..api_idx_000e_ORJG.l11 ; 0x44e5
    mov ax, word [bss_8464]          ; 0x44e7
    shl ax, 1                        ; 0x44ea
    mov bx, ax                       ; 0x44ec
    mov bx, word [bx + party_char]   ; 0x44ee
    cmp byte [bx + 0x18f], 0         ; 0x44f2
    jbe short @..api_idx_000e_ORJG.l15 ; 0x44f7
    mov ax, 0xa                      ; 0x44f9
    imul word [bp + 0x8]             ; 0x44fc
    mov cx, ax                       ; 0x44ff
    mov al, byte [bx + 0x18f]        ; 0x4501
    sub ah, ah                       ; 0x4505
    sub ax, cx                       ; 0x4507
    mov word [bp - 0x0004], ax       ; 0x4509
    cmp ax, strict word 0            ; 0x450c
    jge short @..api_idx_000e_ORJG.l13 ; 0x450f
    mov word [bp - 0x0004], 0        ; 0x4511
@..api_idx_000e_ORJG.l13:
    mov al, byte [bp - 0x0004]       ; 0x4516
    mov byte [bx + 0x18f], al        ; 0x4519
    mov ax, 3                        ; 0x451d
    push ax                          ; 0x4520
    push ax                          ; 0x4521
    call api_idx_0004_UONH           ; 0x4522
    add sp, byte 4                   ; 0x4525
    mov ax, 3                        ; 0x4528
    push ax                          ; 0x452b
    mov ax, 0x41                     ; 0x452c
    push ax                          ; 0x452f
    mov ax, 0xc9a                    ; 0x4530
    cmp word [bp - 0x0004], byte 0   ; 0x4533
    jne short @..api_idx_000e_ORJG.l14 ; 0x4537
    mov ax, 0xc99                    ; 0x4539
@..api_idx_000e_ORJG.l14:
    push ax                          ; 0x453c
    call api_idx_0050_PLNP           ; 0x453d
    add sp, byte 6                   ; 0x4540
@..api_idx_000e_ORJG.l15:
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4543
jumptable_5eb8_case_36:
    mov ax, 6                        ; 0x4546
    push ax                          ; 0x4549
    mov ax, 0                        ; 0x454a
    push ax                          ; 0x454d
    mov ax, 0x17                     ; 0x454e
    push ax                          ; 0x4551
    push word [bp - 0x000c]          ; 0x4552
    push word [bp - 0x000a]          ; 0x4555
    call api_idx_0004_PMSR           ; 0x4558
    add sp, byte 0x0a                ; 0x455b
    mov ax, 0x64                     ; 0x455e
    push ax                          ; 0x4561
    call random_below                ; 0x4562
    pop cx                           ; 0x4565
    push ax                          ; 0x4566
    mov ax, 5                        ; 0x4567
    imul word [bp + 0x8]             ; 0x456a
    mov cx, ax                       ; 0x456d
    pop ax                           ; 0x456f
    cmp ax, cx                       ; 0x4570
    jge short @..api_idx_000e_ORJG.l16 ; 0x4572
    mov ax, 0                        ; 0x4574
    push ax                          ; 0x4577
    push ax                          ; 0x4578
    push ax                          ; 0x4579
    mov ax, 1                        ; 0x457a
    push ax                          ; 0x457d
    push word [bp - 0x000e]          ; 0x457e
    mov ax, 3                        ; 0x4581
    push ax                          ; 0x4584
    mov ax, 6                        ; 0x4585
    push ax                          ; 0x4588
    mov ax, 0xda1                    ; 0x4589
    push ax                          ; 0x458c
    push word [bp - 0x000c]          ; 0x458d
    push word [bp - 0x000a]          ; 0x4590
    call api_idx_000a_LHTJ           ; 0x4593
    add sp, byte 0x14                ; 0x4596
    jmp short @..api_idx_000e_ORJG.l17 ; 0x4599
@..api_idx_000e_ORJG.l16:
    mov ax, 0xa                      ; 0x459b
    imul word [bp + 0x8]             ; 0x459e
    push ax                          ; 0x45a1
    mov ax, 4                        ; 0x45a2
    push ax                          ; 0x45a5
    mov ax, 0xa                      ; 0x45a6
    imul word [bp + 0x8]             ; 0x45a9
    push ax                          ; 0x45ac
    mov ax, 0                        ; 0x45ad
    push ax                          ; 0x45b0
    mov ax, 5                        ; 0x45b1
    push ax                          ; 0x45b4
    push ax                          ; 0x45b5
    mov ax, 3                        ; 0x45b6
    push ax                          ; 0x45b9
    push word [bp - 0x000e]          ; 0x45ba
    push word [bp + 0x8]             ; 0x45bd
    mov ax, 6                        ; 0x45c0
    push ax                          ; 0x45c3
    mov ax, 0xd95                    ; 0x45c4
    push ax                          ; 0x45c7
    push word [bp - 0x000c]          ; 0x45c8
    push word [bp - 0x000a]          ; 0x45cb
    call api_idx_000e_RMNP           ; 0x45ce
    add sp, byte 0x1a                ; 0x45d1
@..api_idx_000e_ORJG.l17:
    jmp near @..api_idx_000e_ORJG.l132 ; 0x45d4
jumptable_5eb8_case_38:
    mov ax, 6                        ; 0x45d7
    push ax                          ; 0x45da
    mov ax, 0                        ; 0x45db
    push ax                          ; 0x45de
    mov ax, 0x17                     ; 0x45df
    push ax                          ; 0x45e2
    mov ax, 0                        ; 0x45e3
    push ax                          ; 0x45e6
    push word [bp - 0x000a]          ; 0x45e7
    call api_idx_0004_PMSR           ; 0x45ea
    add sp, byte 0x0a                ; 0x45ed
    push word [bp + 0x8]             ; 0x45f0
    mov ax, 4                        ; 0x45f3
    push ax                          ; 0x45f6
    push word [bp + 0x8]             ; 0x45f7
    mov ax, 0                        ; 0x45fa
    push ax                          ; 0x45fd
    mov ax, 8                        ; 0x45fe
    push ax                          ; 0x4601
    mov ax, 3                        ; 0x4602
    push ax                          ; 0x4605
    mov ax, 2                        ; 0x4606
    push ax                          ; 0x4609
    push word [bp - 0x000e]          ; 0x460a
    push word [bp + 0x8]             ; 0x460d
    mov ax, 5                        ; 0x4610
    push ax                          ; 0x4613
    mov ax, 0xd98                    ; 0x4614
    push ax                          ; 0x4617
    mov ax, 0xfff6                   ; 0x4618
    push ax                          ; 0x461b
    push word [bp - 0x000a]          ; 0x461c
    call api_idx_000e_RMNP           ; 0x461f
    add sp, byte 0x1a                ; 0x4622
    mov ax, word [bp - 0x000a]       ; 0x4625
    shl ax, 1                        ; 0x4628
    mov bx, ax                       ; 0x462a
    mov bx, word [bx + party_char]   ; 0x462c
    mov al, byte [bx + 0x194]        ; 0x4630
    sub ah, ah                       ; 0x4634
    mov word [bp - 0x0002], ax       ; 0x4636
    cmp ax, word [bp + 0x8]          ; 0x4639
    jge short @..api_idx_000e_ORJG.l18 ; 0x463c
    mov ax, word [bp + 0x8]          ; 0x463e
    mov word [bp - 0x0002], ax       ; 0x4641
@..api_idx_000e_ORJG.l18:
    mov ax, word [bp - 0x0002]       ; 0x4644
    inc ax                           ; 0x4647
    mov byte [bx + 0x194], al        ; 0x4648
    mov ax, word [dest_alt_arg]      ; 0x464c
    inc ax                           ; 0x464f
    mov cx, word [bp - 0x000a]       ; 0x4650
    shl cx, 1                        ; 0x4653
    mov bx, cx                       ; 0x4655
    mov bx, word [bx + party_char]   ; 0x4657
    mov byte [bx + 0x19a], al        ; 0x465b
    jmp near @..api_idx_000e_ORJG.l132 ; 0x465f
jumptable_5eb8_case_39:
    mov ax, 6                        ; 0x4662
    push ax                          ; 0x4665
    mov ax, 1                        ; 0x4666
    push ax                          ; 0x4669
    mov ax, 0x17                     ; 0x466a
    push ax                          ; 0x466d
    mov ax, 0                        ; 0x466e
    push ax                          ; 0x4671
    push word [bp - 0x000a]          ; 0x4672
    call api_idx_0004_PMSR           ; 0x4675
    add sp, byte 0x0a                ; 0x4678
    push word [bp + 0x8]             ; 0x467b
    mov ax, 4                        ; 0x467e
    push ax                          ; 0x4681
    push word [bp + 0x8]             ; 0x4682
    mov ax, 0                        ; 0x4685
    push ax                          ; 0x4688
    mov ax, 8                        ; 0x4689
    push ax                          ; 0x468c
    mov ax, 6                        ; 0x468d
    push ax                          ; 0x4690
    mov ax, 1                        ; 0x4691
    push ax                          ; 0x4694
    push word [bp - 0x000e]          ; 0x4695
    push word [bp + 0x8]             ; 0x4698
    mov ax, 5                        ; 0x469b
    push ax                          ; 0x469e
    mov ax, 0xd98                    ; 0x469f
    push ax                          ; 0x46a2
    mov ax, 0                        ; 0x46a3
    mov cx, word [bp + 0x8]          ; 0x46a6
    inc cx                           ; 0x46a9
    inc cx                           ; 0x46aa
    inc cx                           ; 0x46ab
    sub ax, cx                       ; 0x46ac
    push ax                          ; 0x46ae
    push word [bp - 0x000a]          ; 0x46af
    call api_idx_000e_RMNP           ; 0x46b2
    add sp, byte 0x1a                ; 0x46b5
    jmp near @..api_idx_000e_ORJG.l132 ; 0x46b8
jumptable_5eb8_case_40:
    mov ax, 6                        ; 0x46bb
    push ax                          ; 0x46be
    mov ax, 0                        ; 0x46bf
    push ax                          ; 0x46c2
    mov ax, 0x17                     ; 0x46c3
    push ax                          ; 0x46c6
    mov ax, 0                        ; 0x46c7
    push ax                          ; 0x46ca
    push word [bp - 0x000a]          ; 0x46cb
    call api_idx_0004_PMSR           ; 0x46ce
    add sp, byte 0x0a                ; 0x46d1
    push word [bp + 0x8]             ; 0x46d4
    push word [bp + 0x8]             ; 0x46d7
    push word [bp + 0x8]             ; 0x46da
    mov ax, 1                        ; 0x46dd
    push ax                          ; 0x46e0
    push word [bp - 0x000e]          ; 0x46e1
    mov ax, 3                        ; 0x46e4
    push ax                          ; 0x46e7
    mov ax, 5                        ; 0x46e8
    push ax                          ; 0x46eb
    mov ax, 0xda2                    ; 0x46ec
    push ax                          ; 0x46ef
    cmp word [bss_8464], byte 0      ; 0x46f0
    je short @..api_idx_000e_ORJG.l19 ; 0x46f5
    mov ax, word [bss_8464]          ; 0x46f7
    cmp ax, strict word 6            ; 0x46fa
    jne short @..api_idx_000e_ORJG.l20 ; 0x46fd
@..api_idx_000e_ORJG.l19:
    mov ax, 1                        ; 0x46ff
    jmp short @..api_idx_000e_ORJG.l21 ; 0x4702
@..api_idx_000e_ORJG.l20:
    mov ax, 0                        ; 0x4704
@..api_idx_000e_ORJG.l21:
    push ax                          ; 0x4707
    call api_idx_0002_NGRN           ; 0x4708
    add sp, byte 0x12                ; 0x470b
    jmp near @..api_idx_000e_ORJG.l132 ; 0x470e
jumptable_5eb8_case_41:
    mov ax, 6                        ; 0x4711
    push ax                          ; 0x4714
    mov ax, 0                        ; 0x4715
    push ax                          ; 0x4718
    mov ax, 0x17                     ; 0x4719
    push ax                          ; 0x471c
    mov ax, 0                        ; 0x471d
    push ax                          ; 0x4720
    cmp word [bss_8464], byte 0      ; 0x4721
    jne short @..api_idx_000e_ORJG.l22 ; 0x4726
    mov ax, 1                        ; 0x4728
@..api_idx_000e_ORJG.l22:
    push ax                          ; 0x472b
    call api_idx_0004_PMSR           ; 0x472c
    add sp, byte 0x0a                ; 0x472f
    push word [bp - 0x000e]          ; 0x4732
    mov ax, 5                        ; 0x4735
    push ax                          ; 0x4738
    push word [bp + 0x8]             ; 0x4739
    mov ax, 4                        ; 0x473c
    push ax                          ; 0x473f
    push ax                          ; 0x4740
    cmp word [bss_8464], byte 0      ; 0x4741
    je short @..api_idx_000e_ORJG.l23 ; 0x4746
    mov ax, word [bss_8464]          ; 0x4748
    cmp ax, strict word 6            ; 0x474b
    jne short @..api_idx_000e_ORJG.l24 ; 0x474e
@..api_idx_000e_ORJG.l23:
    mov ax, 1                        ; 0x4750
    jmp short @..api_idx_000e_ORJG.l25 ; 0x4753
@..api_idx_000e_ORJG.l24:
    mov ax, 0                        ; 0x4755
@..api_idx_000e_ORJG.l25:
    push ax                          ; 0x4758
    call api_idx_0002_PGQI           ; 0x4759
    add sp, byte 0x0c                ; 0x475c
    jmp near @..api_idx_000e_ORJG.l132 ; 0x475f
jumptable_5eb8_case_42:
    mov ax, 6                        ; 0x4762
    push ax                          ; 0x4765
    mov ax, 0                        ; 0x4766
    push ax                          ; 0x4769
    mov ax, 0x17                     ; 0x476a
    push ax                          ; 0x476d
    mov ax, 0                        ; 0x476e
    push ax                          ; 0x4771
    push word [bp - 0x000a]          ; 0x4772
    call api_idx_0004_PMSR           ; 0x4775
    add sp, byte 0x0a                ; 0x4778
    push word [bp + 0x8]             ; 0x477b
    push word [bp + 0x8]             ; 0x477e
    push word [bp + 0x8]             ; 0x4781
    mov ax, 1                        ; 0x4784
    push ax                          ; 0x4787
    push word [bp - 0x000e]          ; 0x4788
    mov ax, 3                        ; 0x478b
    push ax                          ; 0x478e
    mov ax, 0xb                      ; 0x478f
    push ax                          ; 0x4792
    mov ax, 0xda9                    ; 0x4793
    push ax                          ; 0x4796
    push word [bp - 0x000a]          ; 0x4797
    call api_idx_0006_LIRP           ; 0x479a
    add sp, byte 0x12                ; 0x479d
    mov ax, word [bp - 0x000a]       ; 0x47a0
    shl ax, 1                        ; 0x47a3
    mov bx, ax                       ; 0x47a5
    mov bx, word [bx + party_char]   ; 0x47a7
    mov al, byte [bx + 0x197]        ; 0x47ab
    sub ah, ah                       ; 0x47af
    mov word [bp - 0x0002], ax       ; 0x47b1
    cmp ax, word [bp + 0x8]          ; 0x47b4
    jge short @..api_idx_000e_ORJG.l26 ; 0x47b7
    mov ax, word [bp + 0x8]          ; 0x47b9
    mov word [bp - 0x0002], ax       ; 0x47bc
@..api_idx_000e_ORJG.l26:
    mov ax, word [bp - 0x0002]       ; 0x47bf
    inc ax                           ; 0x47c2
    mov byte [bx + 0x197], al        ; 0x47c3
    mov ax, word [dest_alt_arg]      ; 0x47c7
    inc ax                           ; 0x47ca
    mov cx, word [bp - 0x000a]       ; 0x47cb
    shl cx, 1                        ; 0x47ce
    mov bx, cx                       ; 0x47d0
    mov bx, word [bx + party_char]   ; 0x47d2
    mov byte [bx + 0x19d], al        ; 0x47d6
    jmp near @..api_idx_000e_ORJG.l132 ; 0x47da
jumptable_5eb8_case_43:
    mov ax, 6                        ; 0x47dd
    push ax                          ; 0x47e0
    mov ax, 1                        ; 0x47e1
    push ax                          ; 0x47e4
    mov ax, 0x17                     ; 0x47e5
    push ax                          ; 0x47e8
    push word [bp - 0x000c]          ; 0x47e9
    push word [bp - 0x000a]          ; 0x47ec
    call api_idx_0004_PMSR           ; 0x47ef
    add sp, byte 0x0a                ; 0x47f2
    push word [bp - 0x000e]          ; 0x47f5
    mov ax, 8                        ; 0x47f8
    push ax                          ; 0x47fb
    push word [bp + 0x8]             ; 0x47fc
    mov ax, 7                        ; 0x47ff
    push ax                          ; 0x4802
    mov ax, 1                        ; 0x4803
    push ax                          ; 0x4806
    push word [bp - 0x000c]          ; 0x4807
    push word [bp - 0x000a]          ; 0x480a
    call api_idx_000a_PJIK           ; 0x480d
    add sp, byte 0x0e                ; 0x4810
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4813
jumptable_5eb8_case_44:
    mov ax, 0xa                      ; 0x4816
    push ax                          ; 0x4819
    mov ax, 0                        ; 0x481a
    push ax                          ; 0x481d
    mov ax, 0x16                     ; 0x481e
    push ax                          ; 0x4821
    push word [bp - 0x000c]          ; 0x4822
    push word [bp - 0x000a]          ; 0x4825
    call api_idx_0004_PMSR           ; 0x4828
    add sp, byte 0x0a                ; 0x482b
    push word [bp + 0x8]             ; 0x482e
    mov ax, 2                        ; 0x4831
    push ax                          ; 0x4834
    push word [bp + 0x8]             ; 0x4835
    mov ax, 0                        ; 0x4838
    push ax                          ; 0x483b
    push word [bp - 0x000e]          ; 0x483c
    mov ax, 9                        ; 0x483f
    push ax                          ; 0x4842
    mov ax, 8                        ; 0x4843
    push ax                          ; 0x4846
    mov ax, 0xd9f                    ; 0x4847
    push ax                          ; 0x484a
    mov ax, 0                        ; 0x484b
    mov cx, word [bp + 0x8]          ; 0x484e
    inc cx                           ; 0x4851
    inc cx                           ; 0x4852
    sub ax, cx                       ; 0x4853
    push ax                          ; 0x4855
    push word [bp - 0x000a]          ; 0x4856
    call api_idx_000a_LHTJ           ; 0x4859
    add sp, byte 0x14                ; 0x485c
    jmp near @..api_idx_000e_ORJG.l132 ; 0x485f
jumptable_5eb8_case_45:
    cmp word [bp - 0x000a], byte 0   ; 0x4862
    jne short @..api_idx_000e_ORJG.l27 ; 0x4866
    mov ax, 0x55                     ; 0x4868
    push ax                          ; 0x486b
    mov ax, 0xc53                    ; 0x486c
    push ax                          ; 0x486f
    push word [bp - 0x000c]          ; 0x4870
    push word [bp - 0x000a]          ; 0x4873
    call loc_RKLS                    ; 0x4876
    add sp, byte 8                   ; 0x4879
@..api_idx_000e_ORJG.l27:
    mov ax, 1                        ; 0x487c
    push ax                          ; 0x487f
    mov ax, 0x2c                     ; 0x4880
    imul word [bp - 0x000c]          ; 0x4883
    mov si, ax                       ; 0x4886
    mov ax, word [bp - 0x000a]       ; 0x4888
    shl ax, 1                        ; 0x488b
    mov bx, ax                       ; 0x488d
    mov bx, word [bx + party_char]   ; 0x488f
    mov al, byte [bx + si + 0x26]    ; 0x4893
    cbw                              ; 0x4896
    push ax                          ; 0x4897
    push word [bp + 0x8]             ; 0x4898
    call loc_QQUT                    ; 0x489b
    add sp, byte 6                   ; 0x489e
    push ax                          ; 0x48a1
    mov ax, 0x2c                     ; 0x48a2
    imul word [bp - 0x000c]          ; 0x48a5
    mov si, ax                       ; 0x48a8
    mov ax, word [bp - 0x000a]       ; 0x48aa
    shl ax, 1                        ; 0x48ad
    mov bx, ax                       ; 0x48af
    mov bx, word [bx + party_char]   ; 0x48b1
    pop ax                           ; 0x48b5
    mov byte [bx + si + 0x26], al    ; 0x48b6
    jmp near @..api_idx_000e_ORJG.l132 ; 0x48b9
jumptable_5eb8_case_48:
    mov ax, 6                        ; 0x48bc
    push ax                          ; 0x48bf
    mov ax, 0                        ; 0x48c0
    push ax                          ; 0x48c3
    mov ax, 0x15                     ; 0x48c4
    push ax                          ; 0x48c7
    mov ax, 0                        ; 0x48c8
    push ax                          ; 0x48cb
    push word [bp - 0x000a]          ; 0x48cc
    call api_idx_0004_PMSR           ; 0x48cf
    add sp, byte 0x0a                ; 0x48d2
    push word [bp - 0x000e]          ; 0x48d5
    mov ax, 7                        ; 0x48d8
    push ax                          ; 0x48db
    push word [bp + 0x8]             ; 0x48dc
    mov ax, 4                        ; 0x48df
    push ax                          ; 0x48e2
    mov ax, 2                        ; 0x48e3
    push ax                          ; 0x48e6
    mov ax, 0                        ; 0x48e7
    mov cx, word [bp + 0x8]          ; 0x48ea
    inc cx                           ; 0x48ed
    inc cx                           ; 0x48ee
    inc cx                           ; 0x48ef
    sub ax, cx                       ; 0x48f0
    push ax                          ; 0x48f2
    push word [bp - 0x000a]          ; 0x48f3
    call api_idx_000a_PJIK           ; 0x48f6
    add sp, byte 0x0e                ; 0x48f9
    jmp near @..api_idx_000e_ORJG.l132 ; 0x48fc
jumptable_5eb8_case_50:
    mov ax, 0xc                      ; 0x48ff
    push ax                          ; 0x4902
    mov ax, 0                        ; 0x4903
    push ax                          ; 0x4906
    mov ax, 0xc                      ; 0x4907
    push ax                          ; 0x490a
    push word [bp - 0x000c]          ; 0x490b
    push word [bp - 0x000a]          ; 0x490e
    call api_idx_0004_PMSR           ; 0x4911
    add sp, byte 0x0a                ; 0x4914
    push word [bp + 0x8]             ; 0x4917
    mov ax, 1                        ; 0x491a
    push ax                          ; 0x491d
    mov ax, word [bp + 0x8]          ; 0x491e
    shl ax, 1                        ; 0x4921
    push ax                          ; 0x4923
    mov ax, 0                        ; 0x4924
    push ax                          ; 0x4927
    push word [bp - 0x000e]          ; 0x4928
    mov ax, 3                        ; 0x492b
    push ax                          ; 0x492e
    mov ax, 4                        ; 0x492f
    push ax                          ; 0x4932
    mov ax, 0xda0                    ; 0x4933
    push ax                          ; 0x4936
    push word [bp - 0x000c]          ; 0x4937
    push word [bp - 0x000a]          ; 0x493a
    call api_idx_000a_LHTJ           ; 0x493d
    add sp, byte 0x14                ; 0x4940
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4943
jumptable_5eb8_case_51:
    mov ax, 6                        ; 0x4946
    push ax                          ; 0x4949
    mov ax, 0                        ; 0x494a
    push ax                          ; 0x494d
    mov ax, 0x10                     ; 0x494e
    push ax                          ; 0x4951
    mov ax, 0                        ; 0x4952
    push ax                          ; 0x4955
    push word [bp - 0x000a]          ; 0x4956
    call api_idx_0004_PMSR           ; 0x4959
    add sp, byte 0x0a                ; 0x495c
    push word [bp - 0x000e]          ; 0x495f
    mov ax, 7                        ; 0x4962
    push ax                          ; 0x4965
    push word [bp + 0x8]             ; 0x4966
    mov ax, 6                        ; 0x4969
    push ax                          ; 0x496c
    mov ax, 1                        ; 0x496d
    push ax                          ; 0x4970
    mov ax, 0xfff6                   ; 0x4971
    push ax                          ; 0x4974
    push word [bp - 0x000a]          ; 0x4975
    call api_idx_000a_PJIK           ; 0x4978
    add sp, byte 0x0e                ; 0x497b
    jmp near @..api_idx_000e_ORJG.l132 ; 0x497e
jumptable_5eb8_case_52:
    mov ax, 6                        ; 0x4981
    push ax                          ; 0x4984
    mov ax, 1                        ; 0x4985
    push ax                          ; 0x4988
    mov ax, 0x17                     ; 0x4989
    push ax                          ; 0x498c
    mov ax, 0                        ; 0x498d
    push ax                          ; 0x4990
    push word [bp - 0x000a]          ; 0x4991
    call api_idx_0004_PMSR           ; 0x4994
    add sp, byte 0x0a                ; 0x4997
    push word [bp - 0x000e]          ; 0x499a
    mov ax, 8                        ; 0x499d
    push ax                          ; 0x49a0
    push word [bp + 0x8]             ; 0x49a1
    mov ax, 6                        ; 0x49a4
    push ax                          ; 0x49a7
    mov ax, 1                        ; 0x49a8
    push ax                          ; 0x49ab
    mov ax, 0xfff6                   ; 0x49ac
    push ax                          ; 0x49af
    push word [bp - 0x000a]          ; 0x49b0
    call api_idx_000a_PJIK           ; 0x49b3
    add sp, byte 0x0e                ; 0x49b6
    mov ax, word [bp - 0x000a]       ; 0x49b9
    shl ax, 1                        ; 0x49bc
    mov bx, ax                       ; 0x49be
    mov bx, word [bx + party_char]   ; 0x49c0
    mov al, byte [bx + 0x195]        ; 0x49c4
    sub ah, ah                       ; 0x49c8
    mov word [bp - 0x0002], ax       ; 0x49ca
    cmp ax, word [bp + 0x8]          ; 0x49cd
    jge short @..api_idx_000e_ORJG.l28 ; 0x49d0
    mov ax, word [bp + 0x8]          ; 0x49d2
    mov word [bp - 0x0002], ax       ; 0x49d5
@..api_idx_000e_ORJG.l28:
    mov ax, word [bp - 0x0002]       ; 0x49d8
    inc ax                           ; 0x49db
    mov byte [bx + 0x195], al        ; 0x49dc
    mov ax, word [dest_alt_arg]      ; 0x49e0
    inc ax                           ; 0x49e3
    mov cx, word [bp - 0x000a]       ; 0x49e4
    shl cx, 1                        ; 0x49e7
    mov bx, cx                       ; 0x49e9
    mov bx, word [bx + party_char]   ; 0x49eb
    mov byte [bx + 0x19b], al        ; 0x49ef
    jmp near @..api_idx_000e_ORJG.l132 ; 0x49f3
jumptable_5eb8_case_53:
    mov ax, 0xa                      ; 0x49f6
    push ax                          ; 0x49f9
    mov ax, 1                        ; 0x49fa
    push ax                          ; 0x49fd
    mov ax, 0x16                     ; 0x49fe
    push ax                          ; 0x4a01
    push word [bp - 0x000c]          ; 0x4a02
    push word [bp - 0x000a]          ; 0x4a05
    call api_idx_0004_PMSR           ; 0x4a08
    add sp, byte 0x0a                ; 0x4a0b
    push word [bp - 0x000e]          ; 0x4a0e
    mov ax, 0                        ; 0x4a11
    push ax                          ; 0x4a14
    push word [bp + 0x8]             ; 0x4a15
    push word [bp - 0x000a]          ; 0x4a18
    call api_idx_0002_NHHH           ; 0x4a1b
    add sp, byte 8                   ; 0x4a1e
    mov word [bp - 0x0004], ax       ; 0x4a21
    mov word [bp - 0x0002], 0        ; 0x4a24
    jmp short @..api_idx_000e_ORJG.l30 ; 0x4a29
@..api_idx_000e_ORJG.l29:
    mov ax, 0                        ; 0x4a2b
    push ax                          ; 0x4a2e
    mov ax, 0x2c                     ; 0x4a2f
    imul word [bp - 0x0002]          ; 0x4a32
    mov si, ax                       ; 0x4a35
    mov ax, word [bp - 0x000a]       ; 0x4a37
    shl ax, 1                        ; 0x4a3a
    mov bx, ax                       ; 0x4a3c
    mov bx, word [bx + party_char]   ; 0x4a3e
    mov al, byte [bx + si + 0x26]    ; 0x4a42
    cbw                              ; 0x4a45
    push ax                          ; 0x4a46
    push word [bp - 0x0004]          ; 0x4a47
    call loc_QQUT                    ; 0x4a4a
    add sp, byte 6                   ; 0x4a4d
    push ax                          ; 0x4a50
    mov ax, 0x2c                     ; 0x4a51
    imul word [bp - 0x0002]          ; 0x4a54
    mov si, ax                       ; 0x4a57
    mov ax, word [bp - 0x000a]       ; 0x4a59
    shl ax, 1                        ; 0x4a5c
    mov bx, ax                       ; 0x4a5e
    mov bx, word [bx + party_char]   ; 0x4a60
    pop ax                           ; 0x4a64
    mov byte [bx + si + 0x26], al    ; 0x4a65
    inc word [bp - 0x0002]           ; 0x4a68
@..api_idx_000e_ORJG.l30:
    mov ax, word [bp - 0x000a]       ; 0x4a6b
    shl ax, 1                        ; 0x4a6e
    mov bx, ax                       ; 0x4a70
    mov bx, word [bx + party_char]   ; 0x4a72
    mov al, byte [bx + 0x1a1]        ; 0x4a76
    sub ah, ah                       ; 0x4a7a
    cmp ax, word [bp - 0x0002]       ; 0x4a7c
    jg short @..api_idx_000e_ORJG.l29 ; 0x4a7f
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4a81
jumptable_5eb8_case_54:
    mov ax, 0xa                      ; 0x4a84
    push ax                          ; 0x4a87
    mov ax, 1                        ; 0x4a88
    push ax                          ; 0x4a8b
    mov ax, 0x16                     ; 0x4a8c
    push ax                          ; 0x4a8f
    push word [bp - 0x000c]          ; 0x4a90
    push word [bp - 0x000a]          ; 0x4a93
    call api_idx_0004_PMSR           ; 0x4a96
    add sp, byte 0x0a                ; 0x4a99
    push word [bp - 0x000e]          ; 0x4a9c
    mov ax, 7                        ; 0x4a9f
    push ax                          ; 0x4aa2
    push word [bp + 0x8]             ; 0x4aa3
    mov ax, 5                        ; 0x4aa6
    push ax                          ; 0x4aa9
    mov ax, 6                        ; 0x4aaa
    push ax                          ; 0x4aad
    push word [bp - 0x000c]          ; 0x4aae
    push word [bp - 0x000a]          ; 0x4ab1
    call api_idx_000a_PJIK           ; 0x4ab4
    add sp, byte 0x0e                ; 0x4ab7
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4aba
jumptable_5eb8_case_55:
    cmp word [bss_8464], byte 0      ; 0x4abd
    je short @..api_idx_000e_ORJG.l31 ; 0x4ac2
    mov ax, word [bss_8464]          ; 0x4ac4
    cmp ax, strict word 6            ; 0x4ac7
    jne short @..api_idx_000e_ORJG.l32 ; 0x4aca
@..api_idx_000e_ORJG.l31:
    push word [bp + 0x8]             ; 0x4acc
    mov ax, 0xd9                     ; 0x4acf
    push ax                          ; 0x4ad2
    mov ax, 0xd8                     ; 0x4ad3
    push ax                          ; 0x4ad6
    mov ax, 0xd7                     ; 0x4ad7
    push ax                          ; 0x4ada
    mov ax, 0xd6                     ; 0x4adb
    push ax                          ; 0x4ade
    mov ax, 0xd5                     ; 0x4adf
    push ax                          ; 0x4ae2
    mov ax, 0xd4                     ; 0x4ae3
    push ax                          ; 0x4ae6
    call string_loc_KUIU             ; 0x4ae7
    add sp, byte 0x0e                ; 0x4aea
    jmp short @..api_idx_000e_ORJG.l33 ; 0x4aed
@..api_idx_000e_ORJG.l32:
    push word [bp + 0x8]             ; 0x4aef
    mov ax, 0xd9                     ; 0x4af2
    push ax                          ; 0x4af5
    mov ax, 0xd8                     ; 0x4af6
    push ax                          ; 0x4af9
    mov ax, 0xd7                     ; 0x4afa
    push ax                          ; 0x4afd
    mov ax, 0xd6                     ; 0x4afe
    push ax                          ; 0x4b01
    mov ax, 0xd5                     ; 0x4b02
    push ax                          ; 0x4b05
    mov ax, 0xd4                     ; 0x4b06
    push ax                          ; 0x4b09
    call string_loc_KUIU             ; 0x4b0a
    add sp, byte 0x0e                ; 0x4b0d
@..api_idx_000e_ORJG.l33:
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4b10
jumptable_5eb8_case_57:
    mov ax, 0xc                      ; 0x4b13
    push ax                          ; 0x4b16
    mov ax, 1                        ; 0x4b17
    push ax                          ; 0x4b1a
    mov ax, 0xe                      ; 0x4b1b
    push ax                          ; 0x4b1e
    push word [bp - 0x000c]          ; 0x4b1f
    push word [bp - 0x000a]          ; 0x4b22
    call api_idx_0004_PMSR           ; 0x4b25
    add sp, byte 0x0a                ; 0x4b28
    push word [bp + 0x8]             ; 0x4b2b
    mov ax, 1                        ; 0x4b2e
    push ax                          ; 0x4b31
    push word [bp + 0x8]             ; 0x4b32
    mov ax, 0                        ; 0x4b35
    push ax                          ; 0x4b38
    mov ax, 7                        ; 0x4b39
    push ax                          ; 0x4b3c
    push ax                          ; 0x4b3d
    mov ax, 1                        ; 0x4b3e
    push ax                          ; 0x4b41
    push word [bp - 0x000e]          ; 0x4b42
    push word [bp + 0x8]             ; 0x4b45
    mov ax, 0xa                      ; 0x4b48
    push ax                          ; 0x4b4b
    mov ax, 0xd97                    ; 0x4b4c
    push ax                          ; 0x4b4f
    push word [bp - 0x000c]          ; 0x4b50
    push word [bp - 0x000a]          ; 0x4b53
    call api_idx_000e_RMNP           ; 0x4b56
    add sp, byte 0x1a                ; 0x4b59
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4b5c
jumptable_5eb8_case_58:
    mov ax, 0xa                      ; 0x4b5f
    push ax                          ; 0x4b62
    mov ax, 0                        ; 0x4b63
    push ax                          ; 0x4b66
    mov ax, 0x16                     ; 0x4b67
    push ax                          ; 0x4b6a
    mov ax, 0                        ; 0x4b6b
    push ax                          ; 0x4b6e
    push word [bp - 0x000a]          ; 0x4b6f
    call api_idx_0004_PMSR           ; 0x4b72
    add sp, byte 0x0a                ; 0x4b75
    mov ax, 0                        ; 0x4b78
    push ax                          ; 0x4b7b
    mov ax, 2                        ; 0x4b7c
    push ax                          ; 0x4b7f
    push word [bp + 0x8]             ; 0x4b80
    mov ax, 0                        ; 0x4b83
    push ax                          ; 0x4b86
    push word [bp - 0x000e]          ; 0x4b87
    mov ax, 2                        ; 0x4b8a
    push ax                          ; 0x4b8d
    mov ax, 9                        ; 0x4b8e
    push ax                          ; 0x4b91
    mov ax, 0xd92                    ; 0x4b92
    push ax                          ; 0x4b95
    mov ax, 0                        ; 0x4b96
    mov cx, word [bp + 0x8]          ; 0x4b99
    inc cx                           ; 0x4b9c
    inc cx                           ; 0x4b9d
    inc cx                           ; 0x4b9e
    sub ax, cx                       ; 0x4b9f
    push ax                          ; 0x4ba1
    push word [bp - 0x000a]          ; 0x4ba2
    call api_idx_000a_LHTJ           ; 0x4ba5
    add sp, byte 0x14                ; 0x4ba8
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4bab
jumptable_5eb8_case_59:
    mov ax, word [bp + 0x8]          ; 0x4bae
    dec ax                           ; 0x4bb1
    mov cx, 2                        ; 0x4bb2
    cwd                              ; 0x4bb5
    idiv cx                          ; 0x4bb6
    inc ax                           ; 0x4bb8
    mov word [bp - 0x0004], ax       ; 0x4bb9
    mov word [bp - 0x0002], 0        ; 0x4bbc
    jmp short @..api_idx_000e_ORJG.l35 ; 0x4bc1
@..api_idx_000e_ORJG.l34:
    mov ax, 1                        ; 0x4bc3
    push ax                          ; 0x4bc6
    mov ax, 0x2c                     ; 0x4bc7
    imul word [bp - 0x0002]          ; 0x4bca
    mov si, ax                       ; 0x4bcd
    mov ax, word [bss_8464]          ; 0x4bcf
    shl ax, 1                        ; 0x4bd2
    mov bx, ax                       ; 0x4bd4
    mov bx, word [bx + party_char]   ; 0x4bd6
    mov al, byte [bx + si + 0x26]    ; 0x4bda
    cbw                              ; 0x4bdd
    push ax                          ; 0x4bde
    push word [bp - 0x0004]          ; 0x4bdf
    call loc_QQUT                    ; 0x4be2
    add sp, byte 6                   ; 0x4be5
    push ax                          ; 0x4be8
    mov ax, 0x2c                     ; 0x4be9
    imul word [bp - 0x0002]          ; 0x4bec
    mov si, ax                       ; 0x4bef
    mov ax, word [bss_8464]          ; 0x4bf1
    shl ax, 1                        ; 0x4bf4
    mov bx, ax                       ; 0x4bf6
    mov bx, word [bx + party_char]   ; 0x4bf8
    pop ax                           ; 0x4bfc
    mov byte [bx + si + 0x26], al    ; 0x4bfd
    mov ax, 1                        ; 0x4c00
    push ax                          ; 0x4c03
    mov ax, 0x2c                     ; 0x4c04
    imul word [bp - 0x0002]          ; 0x4c07
    mov si, ax                       ; 0x4c0a
    mov ax, word [bss_8464]          ; 0x4c0c
    shl ax, 1                        ; 0x4c0f
    mov bx, ax                       ; 0x4c11
    mov bx, word [bx + party_char]   ; 0x4c13
    mov al, byte [bx + si + 0x27]    ; 0x4c17
    cbw                              ; 0x4c1a
    push ax                          ; 0x4c1b
    push word [bp - 0x0004]          ; 0x4c1c
    call loc_QQUT                    ; 0x4c1f
    add sp, byte 6                   ; 0x4c22
    push ax                          ; 0x4c25
    mov ax, 0x2c                     ; 0x4c26
    imul word [bp - 0x0002]          ; 0x4c29
    mov si, ax                       ; 0x4c2c
    mov ax, word [bss_8464]          ; 0x4c2e
    shl ax, 1                        ; 0x4c31
    mov bx, ax                       ; 0x4c33
    mov bx, word [bx + party_char]   ; 0x4c35
    pop ax                           ; 0x4c39
    mov byte [bx + si + 0x27], al    ; 0x4c3a
    inc word [bp - 0x0002]           ; 0x4c3d
@..api_idx_000e_ORJG.l35:
    mov ax, word [bss_8464]          ; 0x4c40
    shl ax, 1                        ; 0x4c43
    mov bx, ax                       ; 0x4c45
    mov bx, word [bx + party_char]   ; 0x4c47
    mov al, byte [bx + 0x1a1]        ; 0x4c4b
    sub ah, ah                       ; 0x4c4f
    cmp ax, word [bp - 0x0002]       ; 0x4c51
    jle short @..api_idx_000e_ORJG.l36 ; 0x4c54
    jmp near @..api_idx_000e_ORJG.l34 ; 0x4c56
@..api_idx_000e_ORJG.l36:
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4c59
jumptable_5eb8_case_60:
    mov ax, 0xa                      ; 0x4c5c
    push ax                          ; 0x4c5f
    mov ax, 0                        ; 0x4c60
    push ax                          ; 0x4c63
    mov ax, 0x16                     ; 0x4c64
    push ax                          ; 0x4c67
    push word [bp - 0x000c]          ; 0x4c68
    push word [bp - 0x000a]          ; 0x4c6b
    call api_idx_0004_PMSR           ; 0x4c6e
    add sp, byte 0x0a                ; 0x4c71
    push word [bp + 0x8]             ; 0x4c74
    mov ax, 1                        ; 0x4c77
    push ax                          ; 0x4c7a
    mov ax, word [bp + 0x8]          ; 0x4c7b
    shl ax, 1                        ; 0x4c7e
    push ax                          ; 0x4c80
    mov ax, 0                        ; 0x4c81
    push ax                          ; 0x4c84
    push word [bp - 0x000e]          ; 0x4c85
    mov ax, 3                        ; 0x4c88
    push ax                          ; 0x4c8b
    mov ax, 9                        ; 0x4c8c
    push ax                          ; 0x4c8f
    mov ax, 0xda8                    ; 0x4c90
    push ax                          ; 0x4c93
    push word [bp - 0x000c]          ; 0x4c94
    push word [bp - 0x000a]          ; 0x4c97
    call api_idx_000a_LHTJ           ; 0x4c9a
    add sp, byte 0x14                ; 0x4c9d
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4ca0
jumptable_5eb8_case_64:
    mov word [bp - 0x0002], 1        ; 0x4ca3
    jmp short @..api_idx_000e_ORJG.l39 ; 0x4ca8
@..api_idx_000e_ORJG.l37:
    mov ax, 0x64                     ; 0x4caa
    push ax                          ; 0x4cad
    call random_below                ; 0x4cae
    pop cx                           ; 0x4cb1
    push ax                          ; 0x4cb2
    mov ax, 0xa                      ; 0x4cb3
    imul word [bp + 0x8]             ; 0x4cb6
    mov cx, ax                       ; 0x4cb9
    add ax, strict word 0x50         ; 0x4cbb
    mov cx, ax                       ; 0x4cbe
    mov ax, 5                        ; 0x4cc0
    imul word [game_state_arg]       ; 0x4cc3
    mov dx, ax                       ; 0x4cc7
    sub cx, ax                       ; 0x4cc9
    pop ax                           ; 0x4ccb
    cmp ax, cx                       ; 0x4ccc
    jge short @..api_idx_000e_ORJG.l38 ; 0x4cce
    mov ax, word [bp - 0x0002]       ; 0x4cd0
    shl ax, 1                        ; 0x4cd3
    mov bx, ax                       ; 0x4cd5
    mov bx, word [bx + party_char]   ; 0x4cd7
    mov byte [bx + 0x1a0], 0         ; 0x4cdb
@..api_idx_000e_ORJG.l38:
    inc word [bp - 0x0002]           ; 0x4ce0
@..api_idx_000e_ORJG.l39:
    mov ax, word [bp - 0x0002]       ; 0x4ce3
    cmp ax, word [bss_8466]          ; 0x4ce6
    jle short @..api_idx_000e_ORJG.l37 ; 0x4cea
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4cec
jumptable_5eb8_case_67:
    mov ax, 0xa                      ; 0x4cef
    push ax                          ; 0x4cf2
    mov ax, 0                        ; 0x4cf3
    push ax                          ; 0x4cf6
    mov ax, 0x16                     ; 0x4cf7
    push ax                          ; 0x4cfa
    push word [bp - 0x000c]          ; 0x4cfb
    push word [bp - 0x000a]          ; 0x4cfe
    call api_idx_0004_PMSR           ; 0x4d01
    add sp, byte 0x0a                ; 0x4d04
    mov ax, 0                        ; 0x4d07
    push ax                          ; 0x4d0a
    mov ax, 2                        ; 0x4d0b
    push ax                          ; 0x4d0e
    push word [bp + 0x8]             ; 0x4d0f
    mov ax, 0                        ; 0x4d12
    push ax                          ; 0x4d15
    push word [bp - 0x000e]          ; 0x4d16
    mov ax, 3                        ; 0x4d19
    push ax                          ; 0x4d1c
    mov ax, 9                        ; 0x4d1d
    push ax                          ; 0x4d20
    mov ax, 0xda4                    ; 0x4d21
    push ax                          ; 0x4d24
    mov ax, 0                        ; 0x4d25
    mov cx, word [bp + 0x8]          ; 0x4d28
    inc cx                           ; 0x4d2b
    inc cx                           ; 0x4d2c
    inc cx                           ; 0x4d2d
    sub ax, cx                       ; 0x4d2e
    push ax                          ; 0x4d30
    push word [bp - 0x000a]          ; 0x4d31
    call api_idx_000a_LHTJ           ; 0x4d34
    add sp, byte 0x14                ; 0x4d37
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4d3a
jumptable_5eb8_case_65:
    mov ax, 0xa                      ; 0x4d3d
    push ax                          ; 0x4d40
    mov ax, 0                        ; 0x4d41
    push ax                          ; 0x4d44
    mov ax, 0x16                     ; 0x4d45
    push ax                          ; 0x4d48
    mov ax, 0                        ; 0x4d49
    push ax                          ; 0x4d4c
    push word [bp - 0x000a]          ; 0x4d4d
    call api_idx_0004_PMSR           ; 0x4d50
    add sp, byte 0x0a                ; 0x4d53
    mov ax, 0                        ; 0x4d56
    push ax                          ; 0x4d59
    mov ax, 2                        ; 0x4d5a
    push ax                          ; 0x4d5d
    push word [bp + 0x8]             ; 0x4d5e
    mov ax, 0                        ; 0x4d61
    push ax                          ; 0x4d64
    push word [bp - 0x000e]          ; 0x4d65
    mov ax, 7                        ; 0x4d68
    push ax                          ; 0x4d6b
    mov ax, 0xa                      ; 0x4d6c
    push ax                          ; 0x4d6f
    mov ax, 0xd8d                    ; 0x4d70
    push ax                          ; 0x4d73
    mov ax, 0                        ; 0x4d74
    mov cx, word [bp + 0x8]          ; 0x4d77
    inc cx                           ; 0x4d7a
    sub ax, cx                       ; 0x4d7b
    push ax                          ; 0x4d7d
    push word [bp - 0x000a]          ; 0x4d7e
    call api_idx_000a_LHTJ           ; 0x4d81
    add sp, byte 0x14                ; 0x4d84
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4d87
jumptable_5eb8_case_70:
    mov ax, 0xc                      ; 0x4d8a
    push ax                          ; 0x4d8d
    mov ax, 1                        ; 0x4d8e
    push ax                          ; 0x4d91
    mov ax, 0xe                      ; 0x4d92
    push ax                          ; 0x4d95
    mov ax, 0                        ; 0x4d96
    push ax                          ; 0x4d99
    push word [bp - 0x000a]          ; 0x4d9a
    call api_idx_0004_PMSR           ; 0x4d9d
    add sp, byte 0x0a                ; 0x4da0
    push word [bp + 0x8]             ; 0x4da3
    mov ax, 2                        ; 0x4da6
    push ax                          ; 0x4da9
    mov ax, word [bp + 0x8]          ; 0x4daa
    shl ax, 1                        ; 0x4dad
    push ax                          ; 0x4daf
    mov ax, 0                        ; 0x4db0
    push ax                          ; 0x4db3
    mov ax, 7                        ; 0x4db4
    push ax                          ; 0x4db7
    push ax                          ; 0x4db8
    mov ax, 1                        ; 0x4db9
    push ax                          ; 0x4dbc
    push word [bp - 0x000e]          ; 0x4dbd
    push word [bp + 0x8]             ; 0x4dc0
    mov ax, 0xa                      ; 0x4dc3
    push ax                          ; 0x4dc6
    mov ax, 0xd97                    ; 0x4dc7
    push ax                          ; 0x4dca
    mov ax, 0                        ; 0x4dcb
    mov cx, word [bp + 0x8]          ; 0x4dce
    inc cx                           ; 0x4dd1
    inc cx                           ; 0x4dd2
    inc cx                           ; 0x4dd3
    sub ax, cx                       ; 0x4dd4
    push ax                          ; 0x4dd6
    push word [bp - 0x000a]          ; 0x4dd7
    call api_idx_000e_RMNP           ; 0x4dda
    add sp, byte 0x1a                ; 0x4ddd
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4de0
jumptable_5eb8_case_71:
    cmp word [bss_8464], byte 0      ; 0x4de3
    je short @..api_idx_000e_ORJG.l40 ; 0x4de8
    mov ax, word [bss_8464]          ; 0x4dea
    cmp ax, strict word 6            ; 0x4ded
    jne short @..api_idx_000e_ORJG.l41 ; 0x4df0
@..api_idx_000e_ORJG.l40:
    push word [bp + 0x8]             ; 0x4df2
    mov ax, 0xdf                     ; 0x4df5
    push ax                          ; 0x4df8
    mov ax, 0xde                     ; 0x4df9
    push ax                          ; 0x4dfc
    mov ax, 0xdd                     ; 0x4dfd
    push ax                          ; 0x4e00
    mov ax, 0xdc                     ; 0x4e01
    push ax                          ; 0x4e04
    mov ax, 0xdb                     ; 0x4e05
    push ax                          ; 0x4e08
    mov ax, 0xda                     ; 0x4e09
    push ax                          ; 0x4e0c
    call string_loc_KUIU             ; 0x4e0d
    add sp, byte 0x0e                ; 0x4e10
    jmp short @..api_idx_000e_ORJG.l42 ; 0x4e13
@..api_idx_000e_ORJG.l41:
    push word [bp + 0x8]             ; 0x4e15
    mov ax, 0xdf                     ; 0x4e18
    push ax                          ; 0x4e1b
    mov ax, 0xde                     ; 0x4e1c
    push ax                          ; 0x4e1f
    mov ax, 0xdd                     ; 0x4e20
    push ax                          ; 0x4e23
    mov ax, 0xdc                     ; 0x4e24
    push ax                          ; 0x4e27
    mov ax, 0xdb                     ; 0x4e28
    push ax                          ; 0x4e2b
    mov ax, 0xda                     ; 0x4e2c
    push ax                          ; 0x4e2f
    call string_loc_KUIU             ; 0x4e30
    add sp, byte 0x0e                ; 0x4e33
@..api_idx_000e_ORJG.l42:
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4e36
jumptable_5eb8_case_73:
    mov ax, 0xa                      ; 0x4e39
    push ax                          ; 0x4e3c
    mov ax, 0                        ; 0x4e3d
    push ax                          ; 0x4e40
    mov ax, 0x16                     ; 0x4e41
    push ax                          ; 0x4e44
    mov ax, 0                        ; 0x4e45
    push ax                          ; 0x4e48
    push word [bp - 0x000a]          ; 0x4e49
    call api_idx_0004_PMSR           ; 0x4e4c
    add sp, byte 0x0a                ; 0x4e4f
    push word [bp + 0x8]             ; 0x4e52
    mov ax, 3                        ; 0x4e55
    push ax                          ; 0x4e58
    push word [bp + 0x8]             ; 0x4e59
    mov ax, 0                        ; 0x4e5c
    push ax                          ; 0x4e5f
    push word [bp - 0x000e]          ; 0x4e60
    mov ax, 1                        ; 0x4e63
    push ax                          ; 0x4e66
    mov ax, 0xa                      ; 0x4e67
    push ax                          ; 0x4e6a
    mov ax, 0xd91                    ; 0x4e6b
    push ax                          ; 0x4e6e
    cmp word [bss_8464], byte 0      ; 0x4e6f
    je short @..api_idx_000e_ORJG.l43 ; 0x4e74
    mov ax, word [bss_8464]          ; 0x4e76
    cmp ax, strict word 6            ; 0x4e79
    jne short @..api_idx_000e_ORJG.l44 ; 0x4e7c
@..api_idx_000e_ORJG.l43:
    mov ax, 1                        ; 0x4e7e
    jmp short @..api_idx_000e_ORJG.l45 ; 0x4e81
@..api_idx_000e_ORJG.l44:
    mov ax, 0                        ; 0x4e83
@..api_idx_000e_ORJG.l45:
    push ax                          ; 0x4e86
    call api_idx_0002_NGRN           ; 0x4e87
    add sp, byte 0x12                ; 0x4e8a
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4e8d
jumptable_5eb8_case_74:
    mov ax, 0xc                      ; 0x4e90
    push ax                          ; 0x4e93
    mov ax, 0                        ; 0x4e94
    push ax                          ; 0x4e97
    mov ax, 0xe                      ; 0x4e98
    push ax                          ; 0x4e9b
    push word [bp - 0x000c]          ; 0x4e9c
    push word [bp - 0x000a]          ; 0x4e9f
    call api_idx_0004_PMSR           ; 0x4ea2
    add sp, byte 0x0a                ; 0x4ea5
    mov ax, 0                        ; 0x4ea8
    push ax                          ; 0x4eab
    push ax                          ; 0x4eac
    push ax                          ; 0x4ead
    mov ax, 1                        ; 0x4eae
    push ax                          ; 0x4eb1
    mov ax, word [bp - 0x000e]       ; 0x4eb2
    add ax, strict word 0xffdd       ; 0x4eb5
    push ax                          ; 0x4eb8
    mov ax, 3                        ; 0x4eb9
    push ax                          ; 0x4ebc
    mov ax, 0xb                      ; 0x4ebd
    push ax                          ; 0x4ec0
    mov ax, 0xd9a                    ; 0x4ec1
    push ax                          ; 0x4ec4
    push word [bp - 0x000c]          ; 0x4ec5
    push word [bp - 0x000a]          ; 0x4ec8
    call api_idx_000a_LHTJ           ; 0x4ecb
    add sp, byte 0x14                ; 0x4ece
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4ed1
jumptable_5eb8_case_76:
    mov ax, 0xc                      ; 0x4ed4
    push ax                          ; 0x4ed7
    mov ax, 1                        ; 0x4ed8
    push ax                          ; 0x4edb
    mov ax, 0xe                      ; 0x4edc
    push ax                          ; 0x4edf
    mov ax, 0                        ; 0x4ee0
    push ax                          ; 0x4ee3
    push word [bp - 0x000a]          ; 0x4ee4
    call api_idx_0004_PMSR           ; 0x4ee7
    add sp, byte 0x0a                ; 0x4eea
    push word [bp - 0x000e]          ; 0x4eed
    mov ax, 0xa                      ; 0x4ef0
    push ax                          ; 0x4ef3
    push word [bp + 0x8]             ; 0x4ef4
    mov ax, 4                        ; 0x4ef7
    push ax                          ; 0x4efa
    push ax                          ; 0x4efb
    cmp word [bss_8464], byte 0      ; 0x4efc
    je short @..api_idx_000e_ORJG.l46 ; 0x4f01
    mov ax, word [bss_8464]          ; 0x4f03
    cmp ax, strict word 6            ; 0x4f06
    jne short @..api_idx_000e_ORJG.l47 ; 0x4f09
@..api_idx_000e_ORJG.l46:
    mov ax, 1                        ; 0x4f0b
    jmp short @..api_idx_000e_ORJG.l48 ; 0x4f0e
@..api_idx_000e_ORJG.l47:
    mov ax, 0                        ; 0x4f10
@..api_idx_000e_ORJG.l48:
    push ax                          ; 0x4f13
    call api_idx_0002_PGQI           ; 0x4f14
    add sp, byte 0x0c                ; 0x4f17
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4f1a
jumptable_5eb8_case_79:
    mov ax, 0xc                      ; 0x4f1d
    push ax                          ; 0x4f20
    mov ax, 1                        ; 0x4f21
    push ax                          ; 0x4f24
    mov ax, 0xc                      ; 0x4f25
    push ax                          ; 0x4f28
    push word [bp - 0x000c]          ; 0x4f29
    push word [bp - 0x000a]          ; 0x4f2c
    call api_idx_0004_PMSR           ; 0x4f2f
    add sp, byte 0x0a                ; 0x4f32
    push word [bp - 0x000e]          ; 0x4f35
    mov ax, 0xc                      ; 0x4f38
    push ax                          ; 0x4f3b
    push word [bp + 0x8]             ; 0x4f3c
    mov ax, 8                        ; 0x4f3f
    push ax                          ; 0x4f42
    mov ax, 1                        ; 0x4f43
    push ax                          ; 0x4f46
    push word [bp - 0x000c]          ; 0x4f47
    push word [bp - 0x000a]          ; 0x4f4a
    call api_idx_000a_PJIK           ; 0x4f4d
    add sp, byte 0x0e                ; 0x4f50
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4f53
jumptable_5eb8_case_80:
    mov ax, 0xc                      ; 0x4f56
    push ax                          ; 0x4f59
    mov ax, 1                        ; 0x4f5a
    push ax                          ; 0x4f5d
    mov ax, 0xc                      ; 0x4f5e
    push ax                          ; 0x4f61
    mov ax, 0                        ; 0x4f62
    push ax                          ; 0x4f65
    push word [bp - 0x000a]          ; 0x4f66
    call api_idx_0004_PMSR           ; 0x4f69
    add sp, byte 0x0a                ; 0x4f6c
    push word [bp - 0x000e]          ; 0x4f6f
    mov ax, 0xc                      ; 0x4f72
    push ax                          ; 0x4f75
    push word [bp + 0x8]             ; 0x4f76
    mov ax, 7                        ; 0x4f79
    push ax                          ; 0x4f7c
    mov ax, 1                        ; 0x4f7d
    push ax                          ; 0x4f80
    mov ax, 0                        ; 0x4f81
    mov cx, word [bp + 0x8]          ; 0x4f84
    inc cx                           ; 0x4f87
    inc cx                           ; 0x4f88
    sub ax, cx                       ; 0x4f89
    push ax                          ; 0x4f8b
    push word [bp - 0x000a]          ; 0x4f8c
    call api_idx_000a_PJIK           ; 0x4f8f
    add sp, byte 0x0e                ; 0x4f92
    jmp near @..api_idx_000e_ORJG.l132 ; 0x4f95
jumptable_5eb8_case_81:
    mov ax, 0xa                      ; 0x4f98
    push ax                          ; 0x4f9b
    mov ax, 1                        ; 0x4f9c
    push ax                          ; 0x4f9f
    mov ax, 0x16                     ; 0x4fa0
    push ax                          ; 0x4fa3
    mov ax, 0                        ; 0x4fa4
    push ax                          ; 0x4fa7
    push word [bp - 0x000a]          ; 0x4fa8
    call api_idx_0004_PMSR           ; 0x4fab
    add sp, byte 0x0a                ; 0x4fae
    mov ax, word [bp - 0x000a]       ; 0x4fb1
    shl ax, 1                        ; 0x4fb4
    mov bx, ax                       ; 0x4fb6
    mov bx, word [bx + party_char_ext] ; 0x4fb8
    cmp byte [bx + 0xd6], 0x14       ; 0x4fbc
    je short @..api_idx_000e_ORJG.l49 ; 0x4fc1
    mov word [bp - 0x000e], 0xff9c   ; 0x4fc3
    jmp short @..api_idx_000e_ORJG.l50 ; 0x4fc8
@..api_idx_000e_ORJG.l49:
    mov ax, 0x2c                     ; 0x4fca
    imul word [bp - 0x000c]          ; 0x4fcd
    mov si, ax                       ; 0x4fd0
    mov ax, word [bp - 0x000a]       ; 0x4fd2
    shl ax, 1                        ; 0x4fd5
    mov bx, ax                       ; 0x4fd7
    mov bx, word [bx + party_char]   ; 0x4fd9
    mov cx, word [bx + si]           ; 0x4fdd
    mov bx, word [bp + 0x4]          ; 0x4fdf
    mov ax, word [bx]                ; 0x4fe2
    sub ax, cx                       ; 0x4fe4
    mov cx, 3                        ; 0x4fe6
    imul cx                          ; 0x4fe9
    add word [bp - 0x000e], ax       ; 0x4feb
@..api_idx_000e_ORJG.l50:
    mov ax, 0                        ; 0x4fee
    push ax                          ; 0x4ff1
    push ax                          ; 0x4ff2
    push ax                          ; 0x4ff3
    mov ax, 1                        ; 0x4ff4
    push ax                          ; 0x4ff7
    push word [bp - 0x000e]          ; 0x4ff8
    mov ax, 3                        ; 0x4ffb
    push ax                          ; 0x4ffe
    mov ax, 0xb                      ; 0x4fff
    push ax                          ; 0x5002
    mov ax, 0xda5                    ; 0x5003
    push ax                          ; 0x5006
    mov ax, 0                        ; 0x5007
    sub ax, word [bp + 0x8]          ; 0x500a
    push ax                          ; 0x500d
    push word [bp - 0x000a]          ; 0x500e
    call api_idx_000a_LHTJ           ; 0x5011
    add sp, byte 0x14                ; 0x5014
    jmp near @..api_idx_000e_ORJG.l132 ; 0x5017
jumptable_5eb8_case_83:
    mov ax, 0x2c                     ; 0x501a
    imul word [bss_8462]             ; 0x501d
    mov si, ax                       ; 0x5021
    mov ax, word [bss_8464]          ; 0x5023
    shl ax, 1                        ; 0x5026
    mov bx, ax                       ; 0x5028
    mov bx, word [bx + party_char]   ; 0x502a
    cmp byte [bx + si + 0x24], 0     ; 0x502e
    jne short @..api_idx_000e_ORJG.l51 ; 0x5032
    mov ax, word [dest_alt_arg]      ; 0x5034
    mov cx, 2                        ; 0x5037
    cwd                              ; 0x503a
    idiv cx                          ; 0x503b
    push ax                          ; 0x503d
    call random_below                ; 0x503e
    pop cx                           ; 0x5041
    push ax                          ; 0x5042
    mov ax, word [dest_alt_arg]      ; 0x5043
    mov cx, 2                        ; 0x5046
    cwd                              ; 0x5049
    idiv cx                          ; 0x504a
    mov cx, ax                       ; 0x504c
    pop ax                           ; 0x504e
    add ax, cx                       ; 0x504f
    push ax                          ; 0x5051
    mov ax, 0x2c                     ; 0x5052
    imul word [bss_8462]             ; 0x5055
    mov si, ax                       ; 0x5059
    mov ax, word [bss_8464]          ; 0x505b
    shl ax, 1                        ; 0x505e
    mov bx, ax                       ; 0x5060
    mov bx, word [bx + party_char]   ; 0x5062
    pop ax                           ; 0x5066
    mov byte [bx + si + 0x25], al    ; 0x5067
@..api_idx_000e_ORJG.l51:
    mov ax, 0x2c                     ; 0x506a
    imul word [bss_8462]             ; 0x506d
    mov si, ax                       ; 0x5071
    mov ax, word [bss_8464]          ; 0x5073
    shl ax, 1                        ; 0x5076
    mov bx, ax                       ; 0x5078
    mov bx, word [bx + party_char]   ; 0x507a
    mov al, byte [bx + si + 0x24]    ; 0x507e
    sub ah, ah                       ; 0x5081
    push ax                          ; 0x5083
    mov ax, 3                        ; 0x5084
    imul word [bp + 0x8]             ; 0x5087
    mov cx, ax                       ; 0x508a
    pop ax                           ; 0x508c
    add ax, cx                       ; 0x508d
    mov byte [bx + si + 0x24], al    ; 0x508f
    jmp near @..api_idx_000e_ORJG.l132 ; 0x5092
jumptable_5eb8_case_85:
    cmp word [bss_8464], byte 0      ; 0x5095
    je short @..api_idx_000e_ORJG.l52 ; 0x509a
    mov ax, word [bss_8464]          ; 0x509c
    cmp ax, strict word 6            ; 0x509f
    jne short @..api_idx_000e_ORJG.l55 ; 0x50a2
@..api_idx_000e_ORJG.l52:
    mov ax, 2                        ; 0x50a4
    push ax                          ; 0x50a7
    call random_below                ; 0x50a8
    pop cx                           ; 0x50ab
    test ax, ax                      ; 0x50ac
    jne short @..api_idx_000e_ORJG.l53 ; 0x50ae
    push word [bp + 0x8]             ; 0x50b0
    mov ax, 0xcd                     ; 0x50b3
    push ax                          ; 0x50b6
    mov ax, 0xcc                     ; 0x50b7
    push ax                          ; 0x50ba
    mov ax, 0xcb                     ; 0x50bb
    push ax                          ; 0x50be
    mov ax, 0xca                     ; 0x50bf
    push ax                          ; 0x50c2
    mov ax, 0xc9                     ; 0x50c3
    push ax                          ; 0x50c6
    mov ax, 0xc8                     ; 0x50c7
    push ax                          ; 0x50ca
    call string_loc_KUIU             ; 0x50cb
    add sp, byte 0x0e                ; 0x50ce
    jmp short @..api_idx_000e_ORJG.l54 ; 0x50d1
@..api_idx_000e_ORJG.l53:
    push word [bp + 0x8]             ; 0x50d3
    mov ax, 0xd3                     ; 0x50d6
    push ax                          ; 0x50d9
    mov ax, 0xd2                     ; 0x50da
    push ax                          ; 0x50dd
    mov ax, 0xd1                     ; 0x50de
    push ax                          ; 0x50e1
    mov ax, 0xd0                     ; 0x50e2
    push ax                          ; 0x50e5
    mov ax, 0xcf                     ; 0x50e6
    push ax                          ; 0x50e9
    mov ax, 0xce                     ; 0x50ea
    push ax                          ; 0x50ed
    call string_loc_KUIU             ; 0x50ee
    add sp, byte 0x0e                ; 0x50f1
@..api_idx_000e_ORJG.l54:
    jmp short @..api_idx_000e_ORJG.l57 ; 0x50f4
@..api_idx_000e_ORJG.l55:
    mov ax, 2                        ; 0x50f6
    push ax                          ; 0x50f9
    call random_below                ; 0x50fa
    pop cx                           ; 0x50fd
    test ax, ax                      ; 0x50fe
    jne short @..api_idx_000e_ORJG.l56 ; 0x5100
    push word [bp + 0x8]             ; 0x5102
    mov ax, 0xcd                     ; 0x5105
    push ax                          ; 0x5108
    mov ax, 0xcc                     ; 0x5109
    push ax                          ; 0x510c
    mov ax, 0xcb                     ; 0x510d
    push ax                          ; 0x5110
    mov ax, 0xca                     ; 0x5111
    push ax                          ; 0x5114
    mov ax, 0xc9                     ; 0x5115
    push ax                          ; 0x5118
    mov ax, 0xc8                     ; 0x5119
    push ax                          ; 0x511c
    call string_loc_KUIU             ; 0x511d
    add sp, byte 0x0e                ; 0x5120
    jmp short @..api_idx_000e_ORJG.l57 ; 0x5123
@..api_idx_000e_ORJG.l56:
    push word [bp + 0x8]             ; 0x5125
    mov ax, 0xd3                     ; 0x5128
    push ax                          ; 0x512b
    mov ax, 0xd2                     ; 0x512c
    push ax                          ; 0x512f
    mov ax, 0xd1                     ; 0x5130
    push ax                          ; 0x5133
    mov ax, 0xd0                     ; 0x5134
    push ax                          ; 0x5137
    mov ax, 0xcf                     ; 0x5138
    push ax                          ; 0x513b
    mov ax, 0xce                     ; 0x513c
    push ax                          ; 0x513f
    call string_loc_KUIU             ; 0x5140
    add sp, byte 0x0e                ; 0x5143
@..api_idx_000e_ORJG.l57:
    jmp near @..api_idx_000e_ORJG.l132 ; 0x5146
jumptable_5eb8_case_86:
    mov ax, 0xa                      ; 0x5149
    push ax                          ; 0x514c
    mov ax, 0                        ; 0x514d
    push ax                          ; 0x5150
    mov ax, 0x16                     ; 0x5151
    push ax                          ; 0x5154
    mov ax, 0                        ; 0x5155
    push ax                          ; 0x5158
    push word [bp - 0x000a]          ; 0x5159
    call api_idx_0004_PMSR           ; 0x515c
    add sp, byte 0x0a                ; 0x515f
    mov ax, 0                        ; 0x5162
    push ax                          ; 0x5165
    mov ax, word [bp - 0x000a]       ; 0x5166
    shl ax, 1                        ; 0x5169
    mov bx, ax                       ; 0x516b
    mov bx, word [bx + party_char]   ; 0x516d
    mov al, byte [bx + 0x191]        ; 0x5171
    sub ah, ah                       ; 0x5175
    push ax                          ; 0x5177
    mov ax, word [bp + 0x8]          ; 0x5178
    shl ax, 1                        ; 0x517b
    push ax                          ; 0x517d
    call loc_QQUT                    ; 0x517e
    add sp, byte 6                   ; 0x5181
    mov cx, word [bp - 0x000a]       ; 0x5184
    shl cx, 1                        ; 0x5187
    mov bx, cx                       ; 0x5189
    mov bx, word [bx + party_char]   ; 0x518b
    mov byte [bx + 0x191], al        ; 0x518f
    jmp near @..api_idx_000e_ORJG.l132 ; 0x5193
jumptable_5eb8_case_90:
    mov ax, 0xa                      ; 0x5196
    push ax                          ; 0x5199
    mov ax, 1                        ; 0x519a
    push ax                          ; 0x519d
    mov ax, 0x16                     ; 0x519e
    push ax                          ; 0x51a1
    mov ax, 0                        ; 0x51a2
    push ax                          ; 0x51a5
    push word [bp - 0x000a]          ; 0x51a6
    call api_idx_0004_PMSR           ; 0x51a9
    add sp, byte 0x0a                ; 0x51ac
    mov ax, word [bp - 0x000a]       ; 0x51af
    shl ax, 1                        ; 0x51b2
    mov bx, ax                       ; 0x51b4
    mov bx, word [bx + party_char_ext] ; 0x51b6
    cmp byte [bx + 0xd6], 0x15       ; 0x51ba
    je short @..api_idx_000e_ORJG.l58 ; 0x51bf
    mov word [bp - 0x000e], 0xff9c   ; 0x51c1
    jmp short @..api_idx_000e_ORJG.l59 ; 0x51c6
@..api_idx_000e_ORJG.l58:
    mov ax, 0x2c                     ; 0x51c8
    imul word [bp - 0x000c]          ; 0x51cb
    mov si, ax                       ; 0x51ce
    mov ax, word [bp - 0x000a]       ; 0x51d0
    shl ax, 1                        ; 0x51d3
    mov bx, ax                       ; 0x51d5
    mov bx, word [bx + party_char]   ; 0x51d7
    mov cx, word [bx + si]           ; 0x51db
    mov bx, word [bp + 0x4]          ; 0x51dd
    mov ax, word [bx]                ; 0x51e0
    sub ax, cx                       ; 0x51e2
    mov cx, 3                        ; 0x51e4
    imul cx                          ; 0x51e7
    add word [bp - 0x000e], ax       ; 0x51e9
@..api_idx_000e_ORJG.l59:
    mov ax, 0                        ; 0x51ec
    push ax                          ; 0x51ef
    push ax                          ; 0x51f0
    push ax                          ; 0x51f1
    mov ax, 1                        ; 0x51f2
    push ax                          ; 0x51f5
    push word [bp - 0x000e]          ; 0x51f6
    mov ax, 3                        ; 0x51f9
    push ax                          ; 0x51fc
    mov ax, 0xb                      ; 0x51fd
    push ax                          ; 0x5200
    mov ax, 0xda9                    ; 0x5201
    push ax                          ; 0x5204
    mov ax, 0                        ; 0x5205
    sub ax, word [bp + 0x8]          ; 0x5208
    push ax                          ; 0x520b
    push word [bp - 0x000a]          ; 0x520c
    call api_idx_000a_LHTJ           ; 0x520f
    add sp, byte 0x14                ; 0x5212
    jmp near @..api_idx_000e_ORJG.l132 ; 0x5215
jumptable_5eb8_case_91:
    mov ax, 0xc                      ; 0x5218
    push ax                          ; 0x521b
    mov ax, 1                        ; 0x521c
    push ax                          ; 0x521f
    mov ax, 0xc                      ; 0x5220
    push ax                          ; 0x5223
    push word [bp - 0x000c]          ; 0x5224
    push word [bp - 0x000a]          ; 0x5227
    call api_idx_0004_PMSR           ; 0x522a
    add sp, byte 0x0a                ; 0x522d
    mov ax, word [bp - 0x000a]       ; 0x5230
    shl ax, 1                        ; 0x5233
    mov bx, ax                       ; 0x5235
    mov bx, word [bx + party_char_ext] ; 0x5237
    cmp byte [bx + 0xd6], 0x14       ; 0x523b
    je short @..api_idx_000e_ORJG.l60 ; 0x5240
    mov word [bp - 0x000e], 0xff9c   ; 0x5242
    jmp short @..api_idx_000e_ORJG.l61 ; 0x5247
@..api_idx_000e_ORJG.l60:
    mov ax, 0x2c                     ; 0x5249
    imul word [bp - 0x000c]          ; 0x524c
    mov si, ax                       ; 0x524f
    mov ax, word [bp - 0x000a]       ; 0x5251
    shl ax, 1                        ; 0x5254
    mov bx, ax                       ; 0x5256
    mov bx, word [bx + party_char]   ; 0x5258
    mov cx, word [bx + si]           ; 0x525c
    mov bx, word [bp + 0x4]          ; 0x525e
    mov ax, word [bx]                ; 0x5261
    sub ax, cx                       ; 0x5263
    mov cx, 3                        ; 0x5265
    imul cx                          ; 0x5268
    add word [bp - 0x000e], ax       ; 0x526a
@..api_idx_000e_ORJG.l61:
    push word [bp - 0x000e]          ; 0x526d
    mov ax, 0xc                      ; 0x5270
    push ax                          ; 0x5273
    push word [bp + 0x8]             ; 0x5274
    mov ax, 7                        ; 0x5277
    push ax                          ; 0x527a
    push ax                          ; 0x527b
    push word [bp - 0x000c]          ; 0x527c
    push word [bp - 0x000a]          ; 0x527f
    call api_idx_000a_PJIK           ; 0x5282
    add sp, byte 0x0e                ; 0x5285
    jmp near @..api_idx_000e_ORJG.l132 ; 0x5288
jumptable_5eb8_case_93:
    mov ax, 0xc                      ; 0x528b
    push ax                          ; 0x528e
    mov ax, 0                        ; 0x528f
    push ax                          ; 0x5292
    mov ax, 0xc                      ; 0x5293
    push ax                          ; 0x5296
    mov ax, 0                        ; 0x5297
    push ax                          ; 0x529a
    push word [bp - 0x000a]          ; 0x529b
    call api_idx_0004_PMSR           ; 0x529e
    add sp, byte 0x0a                ; 0x52a1
    push word [bp - 0x000e]          ; 0x52a4
    mov ax, 0xb                      ; 0x52a7
    push ax                          ; 0x52aa
    push word [bp + 0x8]             ; 0x52ab
    mov ax, 4                        ; 0x52ae
    push ax                          ; 0x52b1
    push ax                          ; 0x52b2
    cmp word [bss_8464], byte 0      ; 0x52b3
    je short @..api_idx_000e_ORJG.l62 ; 0x52b8
    mov ax, word [bss_8464]          ; 0x52ba
    cmp ax, strict word 6            ; 0x52bd
    jne short @..api_idx_000e_ORJG.l63 ; 0x52c0
@..api_idx_000e_ORJG.l62:
    mov ax, 1                        ; 0x52c2
    jmp short @..api_idx_000e_ORJG.l64 ; 0x52c5
@..api_idx_000e_ORJG.l63:
    mov ax, 0                        ; 0x52c7
@..api_idx_000e_ORJG.l64:
    push ax                          ; 0x52ca
    call api_idx_0002_PGQI           ; 0x52cb
    add sp, byte 0x0c                ; 0x52ce
    jmp near @..api_idx_000e_ORJG.l132 ; 0x52d1
jumptable_5eb8_case_95:
    mov ax, 0xc                      ; 0x52d4
    push ax                          ; 0x52d7
    mov ax, 0                        ; 0x52d8
    push ax                          ; 0x52db
    mov ax, 0xe                      ; 0x52dc
    push ax                          ; 0x52df
    mov ax, 0                        ; 0x52e0
    push ax                          ; 0x52e3
    push word [bp - 0x000a]          ; 0x52e4
    call api_idx_0004_PMSR           ; 0x52e7
    add sp, byte 0x0a                ; 0x52ea
    push word [bp + 0x8]             ; 0x52ed
    push word [bp + 0x8]             ; 0x52f0
    push word [bp + 0x8]             ; 0x52f3
    mov ax, 1                        ; 0x52f6
    push ax                          ; 0x52f9
    push word [bp - 0x000e]          ; 0x52fa
    mov ax, 3                        ; 0x52fd
    push ax                          ; 0x5300
    mov ax, 0xb                      ; 0x5301
    push ax                          ; 0x5304
    mov ax, 0xd9e                    ; 0x5305
    push ax                          ; 0x5308
    cmp word [bss_8464], byte 0      ; 0x5309
    je short @..api_idx_000e_ORJG.l65 ; 0x530e
    mov ax, word [bss_8464]          ; 0x5310
    cmp ax, strict word 6            ; 0x5313
    jne short @..api_idx_000e_ORJG.l66 ; 0x5316
@..api_idx_000e_ORJG.l65:
    mov ax, 1                        ; 0x5318
    jmp short @..api_idx_000e_ORJG.l67 ; 0x531b
@..api_idx_000e_ORJG.l66:
    mov ax, 0                        ; 0x531d
@..api_idx_000e_ORJG.l67:
    push ax                          ; 0x5320
    call api_idx_0002_NGRN           ; 0x5321
    add sp, byte 0x12                ; 0x5324
    jmp near @..api_idx_000e_ORJG.l132 ; 0x5327
jumptable_5eb8_case_96:
    mov ax, 0xa                      ; 0x532a
    push ax                          ; 0x532d
    mov ax, 0                        ; 0x532e
    push ax                          ; 0x5331
    mov ax, 0x16                     ; 0x5332
    push ax                          ; 0x5335
    push word [bp - 0x000c]          ; 0x5336
    push word [bp - 0x000a]          ; 0x5339
    call api_idx_0004_PMSR           ; 0x533c
    add sp, byte 0x0a                ; 0x533f
    mov ax, word [bp - 0x000a]       ; 0x5342
    shl ax, 1                        ; 0x5345
    mov bx, ax                       ; 0x5347
    mov bx, word [bx + party_char_ext] ; 0x5349
    cmp byte [bx + 0xd6], 0x14       ; 0x534d
    je short @..api_idx_000e_ORJG.l68 ; 0x5352
    cmp byte [bx + 0xd6], 0x15       ; 0x5354
    je short @..api_idx_000e_ORJG.l68 ; 0x5359
    mov word [bp - 0x000e], 0xff9c   ; 0x535b
@..api_idx_000e_ORJG.l68:
    mov ax, 0x2c                     ; 0x5360
    imul word [bp - 0x000c]          ; 0x5363
    mov si, ax                       ; 0x5366
    mov ax, word [bp - 0x000a]       ; 0x5368
    shl ax, 1                        ; 0x536b
    mov bx, ax                       ; 0x536d
    mov bx, word [bx + party_char]   ; 0x536f
    mov ax, word [bx + si + 0x2]     ; 0x5373
    cwd                              ; 0x5376
    shl ax, 1                        ; 0x5377
    rcl dx, 1                        ; 0x5379
    shl ax, 1                        ; 0x537b
    rcl dx, 1                        ; 0x537d
    shl ax, 1                        ; 0x537f
    rcl dx, 1                        ; 0x5381
    push ax                          ; 0x5383
    push dx                          ; 0x5384
    mov ax, word [bx + si + 0x4]     ; 0x5385
    cwd                              ; 0x5388
    mov cx, ax                       ; 0x5389
    mov bx, dx                       ; 0x538b
    pop dx                           ; 0x538d
    pop ax                           ; 0x538e
    call aztec_ldv                   ; 0x538f
    mov word [bp - 0x0004], ax       ; 0x5392
    cmp ax, strict word 2            ; 0x5395
    jge short @..api_idx_000e_ORJG.l69 ; 0x5398
    mov word [bp - 0x0004], 2        ; 0x539a
@..api_idx_000e_ORJG.l69:
    push word [bp - 0x000e]          ; 0x539f
    mov ax, 0                        ; 0x53a2
    push ax                          ; 0x53a5
    push word [bp + 0x8]             ; 0x53a6
    push word [bp - 0x0004]          ; 0x53a9
    mov ax, 1                        ; 0x53ac
    push ax                          ; 0x53af
    push word [bp - 0x000c]          ; 0x53b0
    push word [bp - 0x000a]          ; 0x53b3
    call api_idx_000a_PJIK           ; 0x53b6
    add sp, byte 0x0e                ; 0x53b9
    jmp near @..api_idx_000e_ORJG.l132 ; 0x53bc
jumptable_5eb8_case_56:
    cmp word [bp - 0x000a], byte 0   ; 0x53bf
    je short @..api_idx_000e_ORJG.l70 ; 0x53c3
    jmp near @..api_idx_000e_ORJG.l75 ; 0x53c5
@..api_idx_000e_ORJG.l70:
    mov ax, 0x2c                     ; 0x53c8
    imul word [bp - 0x000c]          ; 0x53cb
    mov si, ax                       ; 0x53ce
    mov ax, word [bp - 0x000a]       ; 0x53d0
    shl ax, 1                        ; 0x53d3
    mov bx, ax                       ; 0x53d5
    mov bx, word [bx + party_char]   ; 0x53d7
    cmp byte [bx + si + 0x22], 2     ; 0x53db
    je short @..api_idx_000e_ORJG.l71 ; 0x53df
    jmp near @..api_idx_000e_ORJG.l75 ; 0x53e1
@..api_idx_000e_ORJG.l71:
    mov ax, 3                        ; 0x53e4
    imul word [bp + 0x8]             ; 0x53e7
    push ax                          ; 0x53ea
    mov ax, 0x248                    ; 0x53eb
    imul word [bp - 0x000c]          ; 0x53ee
    mov bx, ax                       ; 0x53f1
    mov al, byte [bx + cell_key_grid + 0x133] ; 0x53f3
    sub ah, ah                       ; 0x53f7
    mov dx, ax                       ; 0x53f9
    mov cx, 0x15                     ; 0x53fb
    sub cx, ax                       ; 0x53fe
    pop ax                           ; 0x5400
    cmp ax, cx                       ; 0x5401
    jg short @..api_idx_000e_ORJG.l72 ; 0x5403
    jmp near @..api_idx_000e_ORJG.l75 ; 0x5405
@..api_idx_000e_ORJG.l72:
    dec byte [bx + cell_key_grid + 0x133] ; 0x5408
    mov ax, 0xb7                     ; 0x540c
    push ax                          ; 0x540f
    call random_below                ; 0x5410
    pop cx                           ; 0x5413
    add ax, 0xb7                     ; 0x5414
    cwd                              ; 0x5417
    push ax                          ; 0x5418
    push dx                          ; 0x5419
    mov ax, 0x248                    ; 0x541a
    imul word [bp - 0x000c]          ; 0x541d
    mov bx, ax                       ; 0x5420
    pop dx                           ; 0x5422
    pop ax                           ; 0x5423
    add word [bx + bss_5bf4 + 0x8], ax ; 0x5424
    adc word [bx + bss_5bf4 + 0xa], dx ; 0x5428
    mov ax, 0x12                     ; 0x542c
    push ax                          ; 0x542f
    call random_below                ; 0x5430
    pop cx                           ; 0x5433
    push ax                          ; 0x5434
    mov ax, 0x248                    ; 0x5435
    imul word [bp - 0x000c]          ; 0x5438
    mov bx, ax                       ; 0x543b
    mov al, byte [bx + cell_key_grid + 0x133] ; 0x543d
    sub ah, ah                       ; 0x5441
    mov cx, ax                       ; 0x5443
    pop ax                           ; 0x5445
    cmp ax, cx                       ; 0x5446
    jle short @..api_idx_000e_ORJG.l73 ; 0x5448
    mov ax, 0x2c                     ; 0x544a
    imul word [bp - 0x000c]          ; 0x544d
    mov si, ax                       ; 0x5450
    mov ax, word [bp - 0x000a]       ; 0x5452
    shl ax, 1                        ; 0x5455
    mov bx, ax                       ; 0x5457
    mov bx, word [bx + party_char]   ; 0x5459
    mov byte [bx + si + 0x22], 3     ; 0x545d
    mov ax, 0x2c                     ; 0x5461
    imul word [bp - 0x000c]          ; 0x5464
    mov si, ax                       ; 0x5467
    mov ax, word [bp - 0x000a]       ; 0x5469
    shl ax, 1                        ; 0x546c
    mov bx, ax                       ; 0x546e
    mov bx, word [bx + party_char]   ; 0x5470
    mov word [bx + si + 0x2], 0      ; 0x5474
    mov ax, 0x2c                     ; 0x5479
    imul word [bp - 0x000c]          ; 0x547c
    mov si, ax                       ; 0x547f
    mov ax, word [bp - 0x000a]       ; 0x5481
    shl ax, 1                        ; 0x5484
    mov bx, ax                       ; 0x5486
    mov bx, word [bx + party_char]   ; 0x5488
    mov word [bx + si + 0x6], 0      ; 0x548c
    jmp short @..api_idx_000e_ORJG.l74 ; 0x5491
@..api_idx_000e_ORJG.l73:
    mov ax, 0x2c                     ; 0x5493
    imul word [bp - 0x000c]          ; 0x5496
    mov si, ax                       ; 0x5499
    mov ax, word [bp - 0x000a]       ; 0x549b
    shl ax, 1                        ; 0x549e
    mov bx, ax                       ; 0x54a0
    mov bx, word [bx + party_char]   ; 0x54a2
    mov byte [bx + si + 0x22], 0     ; 0x54a6
    mov ax, 0x55                     ; 0x54aa
    push ax                          ; 0x54ad
    mov ax, 0xc4e                    ; 0x54ae
    push ax                          ; 0x54b1
    push word [bp - 0x000c]          ; 0x54b2
    push word [bp - 0x000a]          ; 0x54b5
    call loc_RKLS                    ; 0x54b8
    add sp, byte 8                   ; 0x54bb
@..api_idx_000e_ORJG.l74:
    mov ax, 0                        ; 0x54be
    push ax                          ; 0x54c1
    push word [bp - 0x000c]          ; 0x54c2
    call api_idx_0004_MLLS           ; 0x54c5
    add sp, byte 4                   ; 0x54c8
@..api_idx_000e_ORJG.l75:
    jmp near @..api_idx_000e_ORJG.l132 ; 0x54cb
jumptable_5eb8_case_94:
    cmp word [bp - 0x000a], byte 0   ; 0x54ce
    je short @..api_idx_000e_ORJG.l76 ; 0x54d2
    jmp near @..api_idx_000e_ORJG.l79 ; 0x54d4
@..api_idx_000e_ORJG.l76:
    mov ax, 0x2c                     ; 0x54d7
    imul word [bp - 0x000c]          ; 0x54da
    mov si, ax                       ; 0x54dd
    mov ax, word [bp - 0x000a]       ; 0x54df
    shl ax, 1                        ; 0x54e2
    mov bx, ax                       ; 0x54e4
    mov bx, word [bx + party_char]   ; 0x54e6
    cmp byte [bx + si + 0x22], 3     ; 0x54ea
    je short @..api_idx_000e_ORJG.l77 ; 0x54ee
    jmp near @..api_idx_000e_ORJG.l79 ; 0x54f0
@..api_idx_000e_ORJG.l77:
    mov ax, 3                        ; 0x54f3
    imul word [bp + 0x8]             ; 0x54f6
    push ax                          ; 0x54f9
    mov ax, 0x248                    ; 0x54fa
    imul word [bp - 0x000c]          ; 0x54fd
    mov bx, ax                       ; 0x5500
    mov al, byte [bx + cell_key_grid + 0x133] ; 0x5502
    sub ah, ah                       ; 0x5506
    mov dx, ax                       ; 0x5508
    mov cx, 0x15                     ; 0x550a
    sub cx, ax                       ; 0x550d
    pop ax                           ; 0x550f
    cmp ax, cx                       ; 0x5510
    jg short @..api_idx_000e_ORJG.l78 ; 0x5512
    jmp near @..api_idx_000e_ORJG.l79 ; 0x5514
@..api_idx_000e_ORJG.l78:
    dec byte [bx + cell_key_grid + 0x133] ; 0x5517
    mov ax, word [bp - 0x000a]       ; 0x551b
    shl ax, 1                        ; 0x551e
    mov bx, ax                       ; 0x5520
    mov bx, word [bx + party_char]   ; 0x5522
    mov byte [bx + si + 0x22], 0     ; 0x5526
    mov ax, 0x2c                     ; 0x552a
    imul word [bp - 0x000c]          ; 0x552d
    mov si, ax                       ; 0x5530
    mov ax, word [bp - 0x000a]       ; 0x5532
    shl ax, 1                        ; 0x5535
    mov bx, ax                       ; 0x5537
    mov bx, word [bx + party_char]   ; 0x5539
    push word [bx + si + 0x4]        ; 0x553d
    mov ax, 1                        ; 0x5540
    push ax                          ; 0x5543
    mov ax, word [bx + si + 0x4]     ; 0x5544
    mov cx, 3                        ; 0x5547
    cwd                              ; 0x554a
    idiv cx                          ; 0x554b
    push ax                          ; 0x554d
    call clamp_between               ; 0x554e
    add sp, byte 6                   ; 0x5551
    push ax                          ; 0x5554
    mov ax, 0x2c                     ; 0x5555
    imul word [bp - 0x000c]          ; 0x5558
    mov si, ax                       ; 0x555b
    mov ax, word [bp - 0x000a]       ; 0x555d
    shl ax, 1                        ; 0x5560
    mov bx, ax                       ; 0x5562
    mov bx, word [bx + party_char]   ; 0x5564
    pop ax                           ; 0x5568
    mov word [bx + si + 0x2], ax     ; 0x5569
    mov ax, 0x2c                     ; 0x556c
    imul word [bp - 0x000c]          ; 0x556f
    mov si, ax                       ; 0x5572
    mov ax, word [bp - 0x000a]       ; 0x5574
    shl ax, 1                        ; 0x5577
    mov bx, ax                       ; 0x5579
    mov bx, word [bx + party_char]   ; 0x557b
    mov ax, word [bx + si + 0x8]     ; 0x557f
    mov cx, 0xa                      ; 0x5582
    cwd                              ; 0x5585
    idiv cx                          ; 0x5586
    mov word [bx + si + 0x6], ax     ; 0x5588
    mov ax, 0x248                    ; 0x558b
    imul word [bp - 0x000c]          ; 0x558e
    mov bx, ax                       ; 0x5591
    inc word [bx + pc_spell_power_cap + 0x2] ; 0x5593
    mov ax, 0xb7                     ; 0x5597
    push ax                          ; 0x559a
    call random_below                ; 0x559b
    pop cx                           ; 0x559e
    add ax, 0x16d                    ; 0x559f
    cwd                              ; 0x55a2
    push ax                          ; 0x55a3
    push dx                          ; 0x55a4
    mov ax, 0x248                    ; 0x55a5
    imul word [bp - 0x000c]          ; 0x55a8
    mov bx, ax                       ; 0x55ab
    pop dx                           ; 0x55ad
    pop ax                           ; 0x55ae
    add word [bx + bss_5bf4 + 0x8], ax ; 0x55af
    adc word [bx + bss_5bf4 + 0xa], dx ; 0x55b3
    mov ax, 0                        ; 0x55b7
    push ax                          ; 0x55ba
    push word [bp - 0x000c]          ; 0x55bb
    call api_idx_0004_MLLS           ; 0x55be
    add sp, byte 4                   ; 0x55c1
    mov ax, 0x55                     ; 0x55c4
    push ax                          ; 0x55c7
    mov ax, 0xc4f                    ; 0x55c8
    push ax                          ; 0x55cb
    push word [bp - 0x000c]          ; 0x55cc
    push word [bp - 0x000a]          ; 0x55cf
    call loc_RKLS                    ; 0x55d2
    add sp, byte 8                   ; 0x55d5
@..api_idx_000e_ORJG.l79:
    jmp near @..api_idx_000e_ORJG.l132 ; 0x55d8
jumptable_5eb8_case_12:
    mov ax, 0                        ; 0x55db
    cmp word [bp + 0x6], byte 0x13   ; 0x55de
    je short @..api_idx_000e_ORJG.l80 ; 0x55e2
    mov ax, word [bp - 0x000c]       ; 0x55e4
@..api_idx_000e_ORJG.l80:
    mov word [bp - 0x0002], ax       ; 0x55e7
    cmp word [bp + 0x6], byte 0x13   ; 0x55ea
    je short @..api_idx_000e_ORJG.l81 ; 0x55ee
    mov ax, word [bp - 0x000c]       ; 0x55f0
    inc ax                           ; 0x55f3
    jmp short @..api_idx_000e_ORJG.l82 ; 0x55f4
@..api_idx_000e_ORJG.l81:
    mov ax, word [bp - 0x000a]       ; 0x55f6
    shl ax, 1                        ; 0x55f9
    mov bx, ax                       ; 0x55fb
    mov bx, word [bx + party_char]   ; 0x55fd
    mov al, byte [bx + 0x1a1]        ; 0x5601
    sub ah, ah                       ; 0x5605
@..api_idx_000e_ORJG.l82:
    mov word [bp - 0x0004], ax       ; 0x5607
    mov ax, word [bp + 0x8]          ; 0x560a
    cmp word [bp + 0x6], byte 0x13   ; 0x560d
    je short @..api_idx_000e_ORJG.l83 ; 0x5611
    shl ax, 1                        ; 0x5613
@..api_idx_000e_ORJG.l83:
    mov word [bp - 0x0006], ax       ; 0x5615
    mov ax, 0                        ; 0x5618
    cmp word [bp + 0x6], byte 0x13   ; 0x561b
    je short @..api_idx_000e_ORJG.l84 ; 0x561f
    mov ax, word [bp + 0x8]          ; 0x5621
@..api_idx_000e_ORJG.l84:
    mov word [bp - 0x0008], ax       ; 0x5624
    jmp near @..api_idx_000e_ORJG.l87 ; 0x5627
@..api_idx_000e_ORJG.l85:
    mov ax, 0x2c                     ; 0x562a
    imul word [bp - 0x0002]          ; 0x562d
    mov si, ax                       ; 0x5630
    mov ax, word [bp - 0x000a]       ; 0x5632
    shl ax, 1                        ; 0x5635
    mov bx, ax                       ; 0x5637
    mov bx, word [bx + party_char]   ; 0x5639
    push word [bx + si + 0x8]        ; 0x563d
    mov ax, 0                        ; 0x5640
    push ax                          ; 0x5643
    push word [bp - 0x0008]          ; 0x5644
    mov ax, 8                        ; 0x5647
    push ax                          ; 0x564a
    push word [bp - 0x0006]          ; 0x564b
    call store_word_and_pair         ; 0x564e
    add sp, byte 6                   ; 0x5651
    mov cx, ax                       ; 0x5654
    sub sp, byte 4                   ; 0x5656
    mov ax, sp                       ; 0x5659
    mov dx, ss                       ; 0x565b
    mov es, dx                       ; 0x565d
    mov si, cx                       ; 0x565f
    mov di, ax                       ; 0x5661
    movsw                            ; 0x5663
    movsw                            ; 0x5664
    call ds_app_QSQR                 ; 0x5665
    add sp, byte 4                   ; 0x5668
    push ax                          ; 0x566b
    mov ax, 0x2c                     ; 0x566c
    imul word [bp - 0x0002]          ; 0x566f
    mov si, ax                       ; 0x5672
    mov ax, word [bp - 0x000a]       ; 0x5674
    shl ax, 1                        ; 0x5677
    mov bx, ax                       ; 0x5679
    mov bx, word [bx + party_char]   ; 0x567b
    pop ax                           ; 0x567f
    add ax, word [bx + si + 0x6]     ; 0x5680
    push ax                          ; 0x5683
    call clamp_between               ; 0x5684
    add sp, byte 6                   ; 0x5687
    push ax                          ; 0x568a
    mov ax, 0x2c                     ; 0x568b
    imul word [bp - 0x0002]          ; 0x568e
    mov si, ax                       ; 0x5691
    mov ax, word [bp - 0x000a]       ; 0x5693
    shl ax, 1                        ; 0x5696
    mov bx, ax                       ; 0x5698
    mov bx, word [bx + party_char]   ; 0x569a
    pop ax                           ; 0x569e
    mov word [bx + si + 0x6], ax     ; 0x569f
    cmp word [bp - 0x000a], byte 0   ; 0x56a2
    jne short @..api_idx_000e_ORJG.l86 ; 0x56a6
    mov ax, 0                        ; 0x56a8
    push ax                          ; 0x56ab
    push word [bp - 0x0002]          ; 0x56ac
    call api_idx_0004_MLLS           ; 0x56af
    add sp, byte 4                   ; 0x56b2
    cmp word [bp + 0x6], byte 0x13   ; 0x56b5
    je short @..api_idx_000e_ORJG.l86 ; 0x56b9
    mov ax, 0x55                     ; 0x56bb
    push ax                          ; 0x56be
    mov ax, 0xc52                    ; 0x56bf
    push ax                          ; 0x56c2
    push word [bp - 0x000c]          ; 0x56c3
    push word [bp - 0x000a]          ; 0x56c6
    call loc_RKLS                    ; 0x56c9
    add sp, byte 8                   ; 0x56cc
@..api_idx_000e_ORJG.l86:
    inc word [bp - 0x0002]           ; 0x56cf
@..api_idx_000e_ORJG.l87:
    mov ax, word [bp - 0x0002]       ; 0x56d2
    cmp ax, word [bp - 0x0004]       ; 0x56d5
    jge short @..api_idx_000e_ORJG.l88 ; 0x56d8
    jmp near @..api_idx_000e_ORJG.l85 ; 0x56da
@..api_idx_000e_ORJG.l88:
    jmp near @..api_idx_000e_ORJG.l132 ; 0x56dd
jumptable_5eb8_case_17:
    mov ax, 0x2c                     ; 0x56e0
    imul word [bp - 0x000c]          ; 0x56e3
    mov si, ax                       ; 0x56e6
    mov ax, word [bp - 0x000a]       ; 0x56e8
    shl ax, 1                        ; 0x56eb
    mov bx, ax                       ; 0x56ed
    mov bx, word [bx + party_char]   ; 0x56ef
    mov al, byte [bx + si + 0x11]    ; 0x56f3
    sub ah, ah                       ; 0x56f6
    push ax                          ; 0x56f8
    mov ax, 0x19                     ; 0x56f9
    imul word [bp + 0x8]             ; 0x56fc
    mov cx, ax                       ; 0x56ff
    pop ax                           ; 0x5701
    sub ax, cx                       ; 0x5702
    mov word [bp - 0x0002], ax       ; 0x5704
    cmp ax, strict word 0            ; 0x5707
    jge short @..api_idx_000e_ORJG.l89 ; 0x570a
    mov word [bp - 0x0002], 0        ; 0x570c
@..api_idx_000e_ORJG.l89:
    mov al, byte [bp - 0x0002]       ; 0x5711
    mov byte [bx + si + 0x11], al    ; 0x5714
    cmp word [bp - 0x000a], byte 0   ; 0x5717
    jne short @..api_idx_000e_ORJG.l90 ; 0x571b
    mov ax, 0                        ; 0x571d
    push ax                          ; 0x5720
    push word [bp - 0x000c]          ; 0x5721
    call api_idx_0004_MLLS           ; 0x5724
    add sp, byte 4                   ; 0x5727
@..api_idx_000e_ORJG.l90:
    jmp near @..api_idx_000e_ORJG.l132 ; 0x572a
jumptable_5eb8_case_33:
    mov ax, 0x2c                     ; 0x572d
    imul word [bp - 0x000c]          ; 0x5730
    mov si, ax                       ; 0x5733
    mov ax, word [bp - 0x000a]       ; 0x5735
    shl ax, 1                        ; 0x5738
    mov bx, ax                       ; 0x573a
    mov bx, word [bx + party_char]   ; 0x573c
    mov al, byte [bx + si + 0x23]    ; 0x5740
    sub ah, ah                       ; 0x5743
    sub ax, word [bp + 0x8]          ; 0x5745
    mov word [bp - 0x0002], ax       ; 0x5748
    cmp ax, strict word 0            ; 0x574b
    jg short @..api_idx_000e_ORJG.l91 ; 0x574e
    mov word [bp - 0x0002], 0        ; 0x5750
    mov byte [bx + si + 0x13], 0     ; 0x5755
@..api_idx_000e_ORJG.l91:
    mov al, byte [bp - 0x0002]       ; 0x5759
    push ax                          ; 0x575c
    mov ax, 0x2c                     ; 0x575d
    imul word [bp - 0x000c]          ; 0x5760
    mov si, ax                       ; 0x5763
    mov ax, word [bp - 0x000a]       ; 0x5765
    shl ax, 1                        ; 0x5768
    mov bx, ax                       ; 0x576a
    mov bx, word [bx + party_char]   ; 0x576c
    pop ax                           ; 0x5770
    mov byte [bx + si + 0x23], al    ; 0x5771
    mov ax, 0x2c                     ; 0x5774
    imul word [bp - 0x000c]          ; 0x5777
    mov si, ax                       ; 0x577a
    mov ax, word [bp - 0x000a]       ; 0x577c
    shl ax, 1                        ; 0x577f
    mov bx, ax                       ; 0x5781
    mov bx, word [bx + party_char]   ; 0x5783
    mov al, byte [bx + si + 0x13]    ; 0x5787
    sub ah, ah                       ; 0x578a
    push ax                          ; 0x578c
    mov ax, 5                        ; 0x578d
    imul word [bp + 0x8]             ; 0x5790
    mov cx, ax                       ; 0x5793
    pop ax                           ; 0x5795
    sub ax, cx                       ; 0x5796
    mov word [bp - 0x0002], ax       ; 0x5798
    cmp ax, strict word 0            ; 0x579b
    jg short @..api_idx_000e_ORJG.l92 ; 0x579e
    mov word [bp - 0x0002], 0        ; 0x57a0
    mov byte [bx + si + 0x23], 0     ; 0x57a5
@..api_idx_000e_ORJG.l92:
    mov al, byte [bp - 0x0002]       ; 0x57a9
    push ax                          ; 0x57ac
    mov ax, 0x2c                     ; 0x57ad
    imul word [bp - 0x000c]          ; 0x57b0
    mov si, ax                       ; 0x57b3
    mov ax, word [bp - 0x000a]       ; 0x57b5
    shl ax, 1                        ; 0x57b8
    mov bx, ax                       ; 0x57ba
    mov bx, word [bx + party_char]   ; 0x57bc
    pop ax                           ; 0x57c0
    mov byte [bx + si + 0x13], al    ; 0x57c1
    cmp word [bp - 0x000a], byte 0   ; 0x57c4
    jne short @..api_idx_000e_ORJG.l93 ; 0x57c8
    mov ax, 0                        ; 0x57ca
    push ax                          ; 0x57cd
    push word [bp - 0x000c]          ; 0x57ce
    call api_idx_0004_MLLS           ; 0x57d1
    add sp, byte 4                   ; 0x57d4
@..api_idx_000e_ORJG.l93:
    jmp near @..api_idx_000e_ORJG.l132 ; 0x57d7
jumptable_5eb8_case_69:
    mov ax, 0x2c                     ; 0x57da
    imul word [bp - 0x000c]          ; 0x57dd
    mov si, ax                       ; 0x57e0
    mov ax, word [bp - 0x000a]       ; 0x57e2
    shl ax, 1                        ; 0x57e5
    mov bx, ax                       ; 0x57e7
    mov bx, word [bx + party_char]   ; 0x57e9
    mov al, byte [bx + si + 0x15]    ; 0x57ed
    sub ah, ah                       ; 0x57f0
    push ax                          ; 0x57f2
    mov ax, 0x19                     ; 0x57f3
    imul word [bp + 0x8]             ; 0x57f6
    mov cx, ax                       ; 0x57f9
    pop ax                           ; 0x57fb
    sub ax, cx                       ; 0x57fc
    mov word [bp - 0x0002], ax       ; 0x57fe
    cmp ax, strict word 0            ; 0x5801
    jge short @..api_idx_000e_ORJG.l94 ; 0x5804
    mov word [bp - 0x0002], 0        ; 0x5806
@..api_idx_000e_ORJG.l94:
    mov al, byte [bp - 0x0002]       ; 0x580b
    mov byte [bx + si + 0x15], al    ; 0x580e
    cmp word [bp - 0x000a], byte 0   ; 0x5811
    jne short @..api_idx_000e_ORJG.l95 ; 0x5815
    mov ax, 0                        ; 0x5817
    push ax                          ; 0x581a
    push word [bp - 0x000c]          ; 0x581b
    call api_idx_0004_MLLS           ; 0x581e
    add sp, byte 4                   ; 0x5821
@..api_idx_000e_ORJG.l95:
    jmp near @..api_idx_000e_ORJG.l132 ; 0x5824
jumptable_5eb8_case_25:
    cmp word [bp - 0x000a], byte 0   ; 0x5827
    jne short @..api_idx_000e_ORJG.l97 ; 0x582b
    mov ax, 3                        ; 0x582d
    imul word [bp + 0x8]             ; 0x5830
    push ax                          ; 0x5833
    mov ax, 0x248                    ; 0x5834
    imul word [bp - 0x000c]          ; 0x5837
    mov bx, ax                       ; 0x583a
    mov al, byte [bx + cell_key_grid + 0x133] ; 0x583c
    sub ah, ah                       ; 0x5840
    mov dx, ax                       ; 0x5842
    mov cx, 0x12                     ; 0x5844
    sub cx, ax                       ; 0x5847
    pop ax                           ; 0x5849
    cmp ax, cx                       ; 0x584a
    jle short @..api_idx_000e_ORJG.l96 ; 0x584c
    mov ax, 0x2c                     ; 0x584e
    imul word [bp - 0x000c]          ; 0x5851
    mov si, ax                       ; 0x5854
    mov ax, word [bp - 0x000a]       ; 0x5856
    shl ax, 1                        ; 0x5859
    mov bx, ax                       ; 0x585b
    mov bx, word [bx + party_char]   ; 0x585d
    mov byte [bx + si + 0x14], 0     ; 0x5861
@..api_idx_000e_ORJG.l96:
    mov ax, 0                        ; 0x5865
    push ax                          ; 0x5868
    push word [bp - 0x000c]          ; 0x5869
    call api_idx_0004_MLLS           ; 0x586c
    add sp, byte 4                   ; 0x586f
@..api_idx_000e_ORJG.l97:
    jmp near @..api_idx_000e_ORJG.l132 ; 0x5872
jumptable_5eb8_case_66:
    mov word [bp - 0x0002], 0        ; 0x5875
    jmp short @..api_idx_000e_ORJG.l100 ; 0x587a
@..api_idx_000e_ORJG.l98:
    mov ax, 0x2c                     ; 0x587c
    imul word [bp - 0x0002]          ; 0x587f
    mov si, ax                       ; 0x5882
    mov ax, word [bp - 0x000a]       ; 0x5884
    shl ax, 1                        ; 0x5887
    mov bx, ax                       ; 0x5889
    mov bx, word [bx + party_char]   ; 0x588b
    mov al, byte [bx + si + 0x10]    ; 0x588f
    sub ah, ah                       ; 0x5892
    push ax                          ; 0x5894
    mov ax, word [bp + 0x8]          ; 0x5895
    imul ax                          ; 0x5898
    mov cx, ax                       ; 0x589a
    add ax, strict word 4            ; 0x589c
    mov cx, ax                       ; 0x589f
    pop ax                           ; 0x58a1
    sub ax, cx                       ; 0x58a2
    mov word [bp - 0x0004], ax       ; 0x58a4
    cmp ax, strict word 0            ; 0x58a7
    jge short @..api_idx_000e_ORJG.l99 ; 0x58aa
    mov word [bp - 0x0004], 0        ; 0x58ac
@..api_idx_000e_ORJG.l99:
    mov al, byte [bp - 0x0004]       ; 0x58b1
    mov byte [bx + si + 0x10], al    ; 0x58b4
    inc word [bp - 0x0002]           ; 0x58b7
@..api_idx_000e_ORJG.l100:
    mov ax, word [bp - 0x000a]       ; 0x58ba
    shl ax, 1                        ; 0x58bd
    mov bx, ax                       ; 0x58bf
    mov bx, word [bx + party_char]   ; 0x58c1
    mov al, byte [bx + 0x1a1]        ; 0x58c5
    sub ah, ah                       ; 0x58c9
    cmp ax, word [bp - 0x0002]       ; 0x58cb
    jg short @..api_idx_000e_ORJG.l98 ; 0x58ce
    jmp near @..api_idx_000e_ORJG.l132 ; 0x58d0
jumptable_5eb8_case_61:
    mov word [bp - 0x0004], 1        ; 0x58d3
@..api_idx_000e_ORJG.l101:
    mov ax, word [bp - 0x0004]       ; 0x58d8
    cmp ax, strict word 1            ; 0x58db
    je short @..api_idx_000e_ORJG.l102 ; 0x58de
    cmp ax, strict word 2            ; 0x58e0
    je short @..api_idx_000e_ORJG.l102 ; 0x58e3
    cmp ax, strict word 4            ; 0x58e5
    je short @..api_idx_000e_ORJG.l102 ; 0x58e8
    cmp ax, strict word 8            ; 0x58ea
    je short @..api_idx_000e_ORJG.l102 ; 0x58ed
    cmp ax, strict word 9            ; 0x58ef
    jne short @..api_idx_000e_ORJG.l104 ; 0x58f2
@..api_idx_000e_ORJG.l102:
    mov ax, 0x2c                     ; 0x58f4
    imul word [bp - 0x000c]          ; 0x58f7
    mov cx, ax                       ; 0x58fa
    mov ax, word [bp - 0x0004]       ; 0x58fc
    add cx, ax                       ; 0x58ff
    mov si, cx                       ; 0x5901
    mov ax, word [bp - 0x000a]       ; 0x5903
    shl ax, 1                        ; 0x5906
    mov bx, ax                       ; 0x5908
    mov bx, word [bx + party_char]   ; 0x590a
    mov al, byte [bx + si + 0xe]     ; 0x590e
    sub ah, ah                       ; 0x5911
    push ax                          ; 0x5913
    mov ax, word [bp + 0x8]          ; 0x5914
    imul ax                          ; 0x5917
    mov cx, ax                       ; 0x5919
    add ax, strict word 4            ; 0x591b
    mov cx, ax                       ; 0x591e
    pop ax                           ; 0x5920
    sub ax, cx                       ; 0x5921
    mov word [bp - 0x0002], ax       ; 0x5923
    cmp ax, strict word 0            ; 0x5926
    jge short @..api_idx_000e_ORJG.l103 ; 0x5929
    mov word [bp - 0x0002], 0        ; 0x592b
@..api_idx_000e_ORJG.l103:
    mov al, byte [bp - 0x0002]       ; 0x5930
    mov byte [bx + si + 0xe], al     ; 0x5933
@..api_idx_000e_ORJG.l104:
    inc word [bp - 0x0004]           ; 0x5936
    mov ax, word [bp - 0x0004]       ; 0x5939
    cmp ax, strict word 9            ; 0x593c
    jle short @..api_idx_000e_ORJG.l101 ; 0x593f
    cmp word [bp - 0x000a], byte 0   ; 0x5941
    jne short @..api_idx_000e_ORJG.l105 ; 0x5945
    mov ax, 0                        ; 0x5947
    push ax                          ; 0x594a
    push word [bp - 0x000c]          ; 0x594b
    call api_idx_0004_MLLS           ; 0x594e
    add sp, byte 4                   ; 0x5951
@..api_idx_000e_ORJG.l105:
    jmp near @..api_idx_000e_ORJG.l132 ; 0x5954
jumptable_5eb8_case_89:
    mov ax, 0xa                      ; 0x5957
    push ax                          ; 0x595a
    mov ax, 0                        ; 0x595b
    push ax                          ; 0x595e
    mov ax, 0x16                     ; 0x595f
    push ax                          ; 0x5962
    mov ax, 0                        ; 0x5963
    push ax                          ; 0x5966
    push word [bp - 0x000a]          ; 0x5967
    call api_idx_0004_PMSR           ; 0x596a
    add sp, byte 0x0a                ; 0x596d
    push word [bp - 0x000e]          ; 0x5970
    mov ax, 0xb                      ; 0x5973
    push ax                          ; 0x5976
    mov ax, word [bp + 0x8]          ; 0x5977
    shl ax, 1                        ; 0x597a
    shl ax, 1                        ; 0x597c
    push ax                          ; 0x597e
    mov ax, 4                        ; 0x597f
    push ax                          ; 0x5982
    mov ax, word [bp + 0x8]          ; 0x5983
    shl ax, 1                        ; 0x5986
    shl ax, 1                        ; 0x5988
    push ax                          ; 0x598a
    push word [bp - 0x000c]          ; 0x598b
    push word [bp - 0x000a]          ; 0x598e
    call api_idx_0022_ROKS           ; 0x5991
    add sp, byte 0x0e                ; 0x5994
    mov word [bp - 0x0002], ax       ; 0x5997
    cmp word [bp - 0x000a], byte 0   ; 0x599a
    jne short @..api_idx_000e_ORJG.l106 ; 0x599e
    mov ax, 0                        ; 0x59a0
    push ax                          ; 0x59a3
    push word [bp - 0x000c]          ; 0x59a4
    call api_idx_0004_MLLS           ; 0x59a7
    add sp, byte 4                   ; 0x59aa
@..api_idx_000e_ORJG.l106:
    mov ax, word [bss_8464]          ; 0x59ad
    mov word [bp - 0x000a], ax       ; 0x59b0
    mov ax, word [bss_8462]          ; 0x59b3
    mov word [bp - 0x000c], ax       ; 0x59b6
    mov ax, word [bp - 0x0002]       ; 0x59b9
    mov cx, 7                        ; 0x59bc
    cwd                              ; 0x59bf
    idiv cx                          ; 0x59c0
    mov word [bp + 0x8], ax          ; 0x59c2
    cmp ax, strict word 1            ; 0x59c5
    jge short @..api_idx_000e_ORJG.l107 ; 0x59c8
    jmp near @..api_idx_000e_ORJG.l132 ; 0x59ca
@..api_idx_000e_ORJG.l107:
    mov ax, 4                        ; 0x59cd
    push ax                          ; 0x59d0
    mov ax, 2                        ; 0x59d1
    push ax                          ; 0x59d4
    call api_idx_0004_UONH           ; 0x59d5
    add sp, byte 4                   ; 0x59d8
jumptable_5eb8_case_78:
    mov ax, 0                        ; 0x59db
    cmp word [bp + 0x6], byte 0x58   ; 0x59de
    je short @..api_idx_000e_ORJG.l108 ; 0x59e2
    mov ax, word [bp - 0x000c]       ; 0x59e4
@..api_idx_000e_ORJG.l108:
    mov word [bp - 0x0002], ax       ; 0x59e7
    cmp word [bp + 0x6], byte 0x58   ; 0x59ea
    je short @..api_idx_000e_ORJG.l109 ; 0x59ee
    mov ax, word [bp - 0x000c]       ; 0x59f0
    inc ax                           ; 0x59f3
    jmp short @..api_idx_000e_ORJG.l110 ; 0x59f4
@..api_idx_000e_ORJG.l109:
    mov ax, word [bp - 0x000a]       ; 0x59f6
    shl ax, 1                        ; 0x59f9
    mov bx, ax                       ; 0x59fb
    mov bx, word [bx + party_char]   ; 0x59fd
    mov al, byte [bx + 0x1a1]        ; 0x5a01
    sub ah, ah                       ; 0x5a05
@..api_idx_000e_ORJG.l110:
    mov word [bp - 0x0004], ax       ; 0x5a07
    mov ax, 4                        ; 0x5a0a
    cmp word [bp + 0x6], byte 0x58   ; 0x5a0d
    je short @..api_idx_000e_ORJG.l111 ; 0x5a11
    mov ax, 7                        ; 0x5a13
@..api_idx_000e_ORJG.l111:
    mov word [bp - 0x0006], ax       ; 0x5a16
    mov ax, 0                        ; 0x5a19
    cmp word [bp + 0x6], byte 0x58   ; 0x5a1c
    je short @..api_idx_000e_ORJG.l112 ; 0x5a20
    mov ax, word [bp + 0x8]          ; 0x5a22
@..api_idx_000e_ORJG.l112:
    mov word [bp - 0x0008], ax       ; 0x5a25
    jmp near @..api_idx_000e_ORJG.l116 ; 0x5a28
@..api_idx_000e_ORJG.l113:
    mov ax, 0x2c                     ; 0x5a2b
    imul word [bp - 0x0002]          ; 0x5a2e
    mov si, ax                       ; 0x5a31
    mov ax, word [bp - 0x000a]       ; 0x5a33
    shl ax, 1                        ; 0x5a36
    mov bx, ax                       ; 0x5a38
    mov bx, word [bx + party_char]   ; 0x5a3a
    push word [bx + si + 0x4]        ; 0x5a3e
    mov ax, 0                        ; 0x5a41
    push ax                          ; 0x5a44
    push word [bp - 0x0008]          ; 0x5a45
    push word [bp - 0x0006]          ; 0x5a48
    push word [bp + 0x8]             ; 0x5a4b
    call store_word_and_pair         ; 0x5a4e
    add sp, byte 6                   ; 0x5a51
    mov cx, ax                       ; 0x5a54
    sub sp, byte 4                   ; 0x5a56
    mov ax, sp                       ; 0x5a59
    mov dx, ss                       ; 0x5a5b
    mov es, dx                       ; 0x5a5d
    mov si, cx                       ; 0x5a5f
    mov di, ax                       ; 0x5a61
    movsw                            ; 0x5a63
    movsw                            ; 0x5a64
    call ds_app_QSQR                 ; 0x5a65
    add sp, byte 4                   ; 0x5a68
    push ax                          ; 0x5a6b
    mov ax, 0x2c                     ; 0x5a6c
    imul word [bp - 0x0002]          ; 0x5a6f
    mov si, ax                       ; 0x5a72
    mov ax, word [bp - 0x000a]       ; 0x5a74
    shl ax, 1                        ; 0x5a77
    mov bx, ax                       ; 0x5a79
    mov bx, word [bx + party_char]   ; 0x5a7b
    pop ax                           ; 0x5a7f
    add ax, word [bx + si + 0x2]     ; 0x5a80
    push ax                          ; 0x5a83
    call clamp_between               ; 0x5a84
    add sp, byte 6                   ; 0x5a87
    push ax                          ; 0x5a8a
    mov ax, 0x2c                     ; 0x5a8b
    imul word [bp - 0x0002]          ; 0x5a8e
    mov si, ax                       ; 0x5a91
    mov ax, word [bp - 0x000a]       ; 0x5a93
    shl ax, 1                        ; 0x5a96
    mov bx, ax                       ; 0x5a98
    mov bx, word [bx + party_char]   ; 0x5a9a
    pop ax                           ; 0x5a9e
    mov word [bx + si + 0x2], ax     ; 0x5a9f
    cmp word [bp - 0x000a], byte 0   ; 0x5aa2
    jne short @..api_idx_000e_ORJG.l114 ; 0x5aa6
    mov ax, 0x248                    ; 0x5aa8
    imul word [bp - 0x0002]          ; 0x5aab
    mov bx, ax                       ; 0x5aae
    add word [bx + bss_5bf4 + 0x8], byte 1 ; 0x5ab0
    adc word [bx + bss_5bf4 + 0xa], byte 0 ; 0x5ab5
    mov ax, 0                        ; 0x5aba
    push ax                          ; 0x5abd
    push word [bp - 0x0002]          ; 0x5abe
    call api_idx_0004_MLLS           ; 0x5ac1
    add sp, byte 4                   ; 0x5ac4
@..api_idx_000e_ORJG.l114:
    cmp word [bp + 0x6], byte 0x58   ; 0x5ac7
    je short @..api_idx_000e_ORJG.l115 ; 0x5acb
    mov ax, 0x55                     ; 0x5acd
    push ax                          ; 0x5ad0
    mov ax, 0xc50                    ; 0x5ad1
    push ax                          ; 0x5ad4
    push word [bp - 0x000c]          ; 0x5ad5
    push word [bp - 0x000a]          ; 0x5ad8
    call loc_RKLS                    ; 0x5adb
    add sp, byte 8                   ; 0x5ade
@..api_idx_000e_ORJG.l115:
    inc word [bp - 0x0002]           ; 0x5ae1
@..api_idx_000e_ORJG.l116:
    mov ax, word [bp - 0x0002]       ; 0x5ae4
    cmp ax, word [bp - 0x0004]       ; 0x5ae7
    jge short @..api_idx_000e_ORJG.l117 ; 0x5aea
    jmp near @..api_idx_000e_ORJG.l113 ; 0x5aec
@..api_idx_000e_ORJG.l117:
    jmp near @..api_idx_000e_ORJG.l132 ; 0x5aef
jumptable_5eb8_case_97:
    mov ax, 0x2c                     ; 0x5af2
    imul word [bss_8462]             ; 0x5af5
    mov si, ax                       ; 0x5af9
    mov ax, word [bss_8464]          ; 0x5afb
    shl ax, 1                        ; 0x5afe
    mov bx, ax                       ; 0x5b00
    mov bx, word [bx + party_char]   ; 0x5b02
    push word [bx + si + 0x8]        ; 0x5b06
    mov ax, 0                        ; 0x5b09
    push ax                          ; 0x5b0c
    push word [bp + 0x8]             ; 0x5b0d
    mov ax, 8                        ; 0x5b10
    push ax                          ; 0x5b13
    push word [bp + 0x8]             ; 0x5b14
    call store_word_and_pair         ; 0x5b17
    add sp, byte 6                   ; 0x5b1a
    mov cx, ax                       ; 0x5b1d
    sub sp, byte 4                   ; 0x5b1f
    mov ax, sp                       ; 0x5b22
    mov dx, ss                       ; 0x5b24
    mov es, dx                       ; 0x5b26
    mov si, cx                       ; 0x5b28
    mov di, ax                       ; 0x5b2a
    movsw                            ; 0x5b2c
    movsw                            ; 0x5b2d
    call ds_app_QSQR                 ; 0x5b2e
    add sp, byte 4                   ; 0x5b31
    push ax                          ; 0x5b34
    mov ax, 0x2c                     ; 0x5b35
    imul word [bss_8462]             ; 0x5b38
    mov si, ax                       ; 0x5b3c
    mov ax, word [bss_8464]          ; 0x5b3e
    shl ax, 1                        ; 0x5b41
    mov bx, ax                       ; 0x5b43
    mov bx, word [bx + party_char]   ; 0x5b45
    pop ax                           ; 0x5b49
    add ax, word [bx + si + 0x6]     ; 0x5b4a
    push ax                          ; 0x5b4d
    call clamp_between               ; 0x5b4e
    add sp, byte 6                   ; 0x5b51
    push ax                          ; 0x5b54
    mov ax, 0x2c                     ; 0x5b55
    imul word [bss_8462]             ; 0x5b58
    mov si, ax                       ; 0x5b5c
    mov ax, word [bss_8464]          ; 0x5b5e
    shl ax, 1                        ; 0x5b61
    mov bx, ax                       ; 0x5b63
    mov bx, word [bx + party_char]   ; 0x5b65
    pop ax                           ; 0x5b69
    mov word [bx + si + 0x6], ax     ; 0x5b6a
    mov ax, 0x2c                     ; 0x5b6d
    imul word [bss_8462]             ; 0x5b70
    mov si, ax                       ; 0x5b74
    mov ax, word [bss_8464]          ; 0x5b76
    shl ax, 1                        ; 0x5b79
    mov bx, ax                       ; 0x5b7b
    mov bx, word [bx + party_char]   ; 0x5b7d
    push word [bx + si + 0x4]        ; 0x5b81
    mov ax, 0                        ; 0x5b84
    push ax                          ; 0x5b87
    push ax                          ; 0x5b88
    mov ax, 2                        ; 0x5b89
    push ax                          ; 0x5b8c
    push word [bp + 0x8]             ; 0x5b8d
    call store_word_and_pair         ; 0x5b90
    add sp, byte 6                   ; 0x5b93
    mov cx, ax                       ; 0x5b96
    sub sp, byte 4                   ; 0x5b98
    mov ax, sp                       ; 0x5b9b
    mov dx, ss                       ; 0x5b9d
    mov es, dx                       ; 0x5b9f
    mov si, cx                       ; 0x5ba1
    mov di, ax                       ; 0x5ba3
    movsw                            ; 0x5ba5
    movsw                            ; 0x5ba6
    call ds_app_QSQR                 ; 0x5ba7
    add sp, byte 4                   ; 0x5baa
    push ax                          ; 0x5bad
    mov ax, 0x2c                     ; 0x5bae
    imul word [bss_8462]             ; 0x5bb1
    mov si, ax                       ; 0x5bb5
    mov ax, word [bss_8464]          ; 0x5bb7
    shl ax, 1                        ; 0x5bba
    mov bx, ax                       ; 0x5bbc
    mov bx, word [bx + party_char]   ; 0x5bbe
    pop ax                           ; 0x5bc2
    add ax, word [bx + si + 0x2]     ; 0x5bc3
    push ax                          ; 0x5bc6
    call clamp_between               ; 0x5bc7
    add sp, byte 6                   ; 0x5bca
    push ax                          ; 0x5bcd
    mov ax, 0x2c                     ; 0x5bce
    imul word [bss_8462]             ; 0x5bd1
    mov si, ax                       ; 0x5bd5
    mov ax, word [bss_8464]          ; 0x5bd7
    shl ax, 1                        ; 0x5bda
    mov bx, ax                       ; 0x5bdc
    mov bx, word [bx + party_char]   ; 0x5bde
    pop ax                           ; 0x5be2
    mov word [bx + si + 0x2], ax     ; 0x5be3
    cmp word [bss_8464], byte 0      ; 0x5be6
    jne short @..api_idx_000e_ORJG.l118 ; 0x5beb
    mov ax, 0                        ; 0x5bed
    push ax                          ; 0x5bf0
    push word [bss_8462]             ; 0x5bf1
    call api_idx_0004_MLLS           ; 0x5bf5
    add sp, byte 4                   ; 0x5bf8
@..api_idx_000e_ORJG.l118:
    jmp near @..api_idx_000e_ORJG.l132 ; 0x5bfb
jumptable_5eb8_case_98:
    cmp word [bss_8464], byte 0      ; 0x5bfe
    jne short @..api_idx_000e_ORJG.l121 ; 0x5c03
    mov word [bp - 0x0002], 0        ; 0x5c05
@..api_idx_000e_ORJG.l119:
    mov ax, 0                        ; 0x5c0a
    push ax                          ; 0x5c0d
    mov ax, 0xa                      ; 0x5c0e
    push ax                          ; 0x5c11
    push word [bp + 0x8]             ; 0x5c12
    call store_word_and_pair         ; 0x5c15
    add sp, byte 6                   ; 0x5c18
    mov cx, ax                       ; 0x5c1b
    sub sp, byte 4                   ; 0x5c1d
    mov ax, sp                       ; 0x5c20
    mov dx, ss                       ; 0x5c22
    mov es, dx                       ; 0x5c24
    mov si, cx                       ; 0x5c26
    mov di, ax                       ; 0x5c28
    movsw                            ; 0x5c2a
    movsw                            ; 0x5c2b
    call ds_app_QSQR                 ; 0x5c2c
    add sp, byte 4                   ; 0x5c2f
    mov word [bp - 0x0004], ax       ; 0x5c32
    push ax                          ; 0x5c35
    mov ax, 0x248                    ; 0x5c36
    imul word [bss_8462]             ; 0x5c39
    mov cx, ax                       ; 0x5c3d
    mov dx, word [bp - 0x0002]       ; 0x5c3f
    shl dx, 1                        ; 0x5c42
    shl dx, 1                        ; 0x5c44
    add ax, dx                       ; 0x5c46
    mov bx, ax                       ; 0x5c48
    pop ax                           ; 0x5c4a
    add word [bx + pc_spell_power_cap + 0x4], ax ; 0x5c4b
    mov ax, word [bx + pc_spell_power_cap + 0x4] ; 0x5c4f
    cmp ax, word [bx + pc_spell_power_cap + 0x6] ; 0x5c53
    jle short @..api_idx_000e_ORJG.l120 ; 0x5c57
    mov ax, word [bx + pc_spell_power_cap + 0x6] ; 0x5c59
    mov word [bx + pc_spell_power_cap + 0x4], ax ; 0x5c5d
@..api_idx_000e_ORJG.l120:
    inc word [bp - 0x0002]           ; 0x5c61
    mov ax, word [bp - 0x0002]       ; 0x5c64
    cmp ax, strict word 6            ; 0x5c67
    jl short @..api_idx_000e_ORJG.l119 ; 0x5c6a
@..api_idx_000e_ORJG.l121:
    jmp near @..api_idx_000e_ORJG.l132 ; 0x5c6c
jumptable_5eb8_case_100:
    mov word [bp - 0x0006], 0        ; 0x5c6f
    jmp near @..api_idx_000e_ORJG.l127 ; 0x5c74
@..api_idx_000e_ORJG.l122:
    mov ax, 0x2c                     ; 0x5c77
    imul word [bp - 0x0006]          ; 0x5c7a
    mov si, ax                       ; 0x5c7d
    mov ax, word [bss_8464]          ; 0x5c7f
    shl ax, 1                        ; 0x5c82
    mov bx, ax                       ; 0x5c84
    mov bx, word [bx + party_char]   ; 0x5c86
    mov byte [bx + si + 0x22], 0     ; 0x5c8a
    mov ax, 0x2c                     ; 0x5c8e
    imul word [bp - 0x0006]          ; 0x5c91
    mov si, ax                       ; 0x5c94
    mov ax, word [bss_8464]          ; 0x5c96
    shl ax, 1                        ; 0x5c99
    mov bx, ax                       ; 0x5c9b
    mov bx, word [bx + party_char]   ; 0x5c9d
    mov ax, word [bx + si + 0x8]     ; 0x5ca1
    mov word [bx + si + 0x6], ax     ; 0x5ca4
    mov ax, 0x2c                     ; 0x5ca7
    imul word [bp - 0x0006]          ; 0x5caa
    mov si, ax                       ; 0x5cad
    mov ax, word [bss_8464]          ; 0x5caf
    shl ax, 1                        ; 0x5cb2
    mov bx, ax                       ; 0x5cb4
    mov bx, word [bx + party_char]   ; 0x5cb6
    mov ax, word [bx + si + 0x4]     ; 0x5cba
    mov word [bx + si + 0x2], ax     ; 0x5cbd
    mov word [bp - 0x0004], 0        ; 0x5cc0
@..api_idx_000e_ORJG.l123:
    mov ax, 0x2c                     ; 0x5cc5
    imul word [bp - 0x0006]          ; 0x5cc8
    add ax, word [bp - 0x0004]       ; 0x5ccb
    mov si, ax                       ; 0x5cce
    mov ax, word [bss_8464]          ; 0x5cd0
    shl ax, 1                        ; 0x5cd3
    mov bx, ax                       ; 0x5cd5
    mov bx, word [bx + party_char]   ; 0x5cd7
    mov byte [bx + si + 0xe], 0      ; 0x5cdb
    inc word [bp - 0x0004]           ; 0x5cdf
    mov ax, word [bp - 0x0004]       ; 0x5ce2
    cmp ax, strict word 0xa          ; 0x5ce5
    jl short @..api_idx_000e_ORJG.l123 ; 0x5ce8
    cmp word [bss_8464], byte 0      ; 0x5cea
    jne short @..api_idx_000e_ORJG.l126 ; 0x5cef
    mov word [bp - 0x0002], 0        ; 0x5cf1
@..api_idx_000e_ORJG.l124:
    mov ax, 0x248                    ; 0x5cf6
    imul word [bp - 0x0006]          ; 0x5cf9
    mov cx, word [bp - 0x0002]       ; 0x5cfc
    shl cx, 1                        ; 0x5cff
    shl cx, 1                        ; 0x5d01
    add ax, cx                       ; 0x5d03
    mov bx, ax                       ; 0x5d05
    mov ax, word [bx + pc_spell_power_cap + 0x6] ; 0x5d07
    mov word [bx + pc_spell_power_cap + 0x4], ax ; 0x5d0b
    inc word [bp - 0x0002]           ; 0x5d0f
    mov ax, word [bp - 0x0002]       ; 0x5d12
    cmp ax, strict word 6            ; 0x5d15
    jl short @..api_idx_000e_ORJG.l124 ; 0x5d18
    mov ax, 0x248                    ; 0x5d1a
    imul word [bp - 0x0006]          ; 0x5d1d
    mov bx, ax                       ; 0x5d20
    cmp byte [bx + cell_key_grid + 0x133], 1 ; 0x5d22
    jae short @..api_idx_000e_ORJG.l125 ; 0x5d27
    mov byte [bx + cell_key_grid + 0x133], 1 ; 0x5d29
@..api_idx_000e_ORJG.l125:
    mov ax, 4                        ; 0x5d2e
    push ax                          ; 0x5d31
    mov ax, 2                        ; 0x5d32
    push ax                          ; 0x5d35
    call api_idx_0004_UONH           ; 0x5d36
    add sp, byte 4                   ; 0x5d39
    mov ax, 0                        ; 0x5d3c
    push ax                          ; 0x5d3f
    push word [bp - 0x0006]          ; 0x5d40
    call api_idx_0004_MLLS           ; 0x5d43
    add sp, byte 4                   ; 0x5d46
    mov ax, 0x55                     ; 0x5d49
    push ax                          ; 0x5d4c
    mov ax, 0xc54                    ; 0x5d4d
    push ax                          ; 0x5d50
    push word [bp - 0x0006]          ; 0x5d51
    push word [bss_8464]             ; 0x5d54
    call loc_RKLS                    ; 0x5d58
    add sp, byte 8                   ; 0x5d5b
@..api_idx_000e_ORJG.l126:
    inc word [bp - 0x0006]           ; 0x5d5e
@..api_idx_000e_ORJG.l127:
    mov ax, word [bss_8464]          ; 0x5d61
    shl ax, 1                        ; 0x5d64
    mov bx, ax                       ; 0x5d66
    mov bx, word [bx + party_char]   ; 0x5d68
    mov al, byte [bx + 0x1a1]        ; 0x5d6c
    sub ah, ah                       ; 0x5d70
    cmp ax, word [bp - 0x0006]       ; 0x5d72
    jle short @..api_idx_000e_ORJG.l128 ; 0x5d75
    jmp near @..api_idx_000e_ORJG.l122 ; 0x5d77
@..api_idx_000e_ORJG.l128:
    jmp near @..api_idx_000e_ORJG.l132 ; 0x5d7a
jumptable_5eb8_case_101:
    mov ax, 0x2c                     ; 0x5d7d
    imul word [bss_8462]             ; 0x5d80
    mov si, ax                       ; 0x5d84
    mov ax, word [bss_8464]          ; 0x5d86
    shl ax, 1                        ; 0x5d89
    mov bx, ax                       ; 0x5d8b
    mov bx, word [bx + party_char]   ; 0x5d8d
    mov byte [bx + si + 0x2b], 1     ; 0x5d91
    cmp word [bss_8464], byte 0      ; 0x5d95
    jne short @..api_idx_000e_ORJG.l129 ; 0x5d9a
    mov ax, 0                        ; 0x5d9c
    push ax                          ; 0x5d9f
    push word [bss_8462]             ; 0x5da0
    call api_idx_0004_MLLS           ; 0x5da4
    add sp, byte 4                   ; 0x5da7
    mov ax, 0x55                     ; 0x5daa
    push ax                          ; 0x5dad
    mov ax, 0xc51                    ; 0x5dae
    push ax                          ; 0x5db1
    push word [bss_8462]             ; 0x5db2
    push word [bss_8464]             ; 0x5db6
    call loc_RKLS                    ; 0x5dba
    add sp, byte 8                   ; 0x5dbd
@..api_idx_000e_ORJG.l129:
    jmp near @..api_idx_000e_ORJG.l132 ; 0x5dc0
jumptable_5eb8_case_63:
    mov ax, 0x32                     ; 0x5dc3
    imul word [bp + 0x8]             ; 0x5dc6
    add word [bss_82fe], ax          ; 0x5dc9
    mov ax, 0                        ; 0x5dcd
    push ax                          ; 0x5dd0
    push word [bss_8300]             ; 0x5dd1
    mov ax, 5                        ; 0x5dd5
    imul word [bp + 0x8]             ; 0x5dd8
    add ax, strict word 0x46         ; 0x5ddb
    push ax                          ; 0x5dde
    call loc_QQUT                    ; 0x5ddf
    add sp, byte 6                   ; 0x5de2
    mov word [bss_8300], ax          ; 0x5de5
    jmp near @..api_idx_000e_ORJG.l132 ; 0x5de8
jumptable_5eb8_case_82:
    mov ax, 0x23                     ; 0x5deb
    imul word [bp + 0x8]             ; 0x5dee
    add word [party_status_timer], ax ; 0x5df1
    mov ax, 0                        ; 0x5df5
    push ax                          ; 0x5df8
    push word [bss_82f4]             ; 0x5df9
    mov ax, word [bp + 0x8]          ; 0x5dfd
    dec ax                           ; 0x5e00
    mov cx, 2                        ; 0x5e01
    cwd                              ; 0x5e04
    idiv cx                          ; 0x5e05
    inc ax                           ; 0x5e07
    push ax                          ; 0x5e08
    call loc_QQUT                    ; 0x5e09
    add sp, byte 6                   ; 0x5e0c
    mov word [bss_82f4], ax          ; 0x5e0f
    jmp near @..api_idx_000e_ORJG.l132 ; 0x5e12
jumptable_5eb8_case_49:
    mov ax, 0x32                     ; 0x5e15
    imul word [bp + 0x8]             ; 0x5e18
    add word [bss_82f6], ax          ; 0x5e1b
    mov ax, 0                        ; 0x5e1f
    push ax                          ; 0x5e22
    push word [bss_82f8]             ; 0x5e23
    mov ax, word [bp + 0x8]          ; 0x5e27
    dec ax                           ; 0x5e2a
    mov cx, 2                        ; 0x5e2b
    cwd                              ; 0x5e2e
    idiv cx                          ; 0x5e2f
    inc ax                           ; 0x5e31
    push ax                          ; 0x5e32
    call loc_QQUT                    ; 0x5e33
    add sp, byte 6                   ; 0x5e36
    mov word [bss_82f8], ax          ; 0x5e39
    jmp near @..api_idx_000e_ORJG.l132 ; 0x5e3c
jumptable_5eb8_case_37:
    mov ax, 5                        ; 0x5e3f
    imul word [bp + 0x8]             ; 0x5e42
    add word [bss_8306], ax          ; 0x5e45
    jmp near @..api_idx_000e_ORJG.l132 ; 0x5e49
jumptable_5eb8_case_46:
    mov ax, 0x64                     ; 0x5e4c
    imul word [bp + 0x8]             ; 0x5e4f
    add word [bss_8302], ax          ; 0x5e52
    jmp near @..api_idx_000e_ORJG.l132 ; 0x5e56
jumptable_5eb8_case_84:
    mov ax, 0                        ; 0x5e59
    push ax                          ; 0x5e5c
    mov ax, word [bss_8464]          ; 0x5e5d
    shl ax, 1                        ; 0x5e60
    mov bx, ax                       ; 0x5e62
    mov bx, word [bx + party_char]   ; 0x5e64
    mov al, byte [bx + 0x190]        ; 0x5e68
    sub ah, ah                       ; 0x5e6c
    push ax                          ; 0x5e6e
    mov ax, 0xa                      ; 0x5e6f
    imul word [bp + 0x8]             ; 0x5e72
    push ax                          ; 0x5e75
    call loc_QQUT                    ; 0x5e76
    add sp, byte 6                   ; 0x5e79
    mov cx, word [bss_8464]          ; 0x5e7c
    shl cx, 1                        ; 0x5e80
    mov bx, cx                       ; 0x5e82
    mov bx, word [bx + party_char]   ; 0x5e84
    mov byte [bx + 0x190], al        ; 0x5e88
    cmp word [bss_8464], byte 0      ; 0x5e8c
    jne short @..api_idx_000e_ORJG.l130 ; 0x5e91
    mov ax, 0x32                     ; 0x5e93
    imul word [bp + 0x8]             ; 0x5e96
    add word [bss_82fa], ax          ; 0x5e99
    mov ax, 0                        ; 0x5e9d
    push ax                          ; 0x5ea0
    push word [bss_82fc]             ; 0x5ea1
    mov ax, 0xa                      ; 0x5ea5
    imul word [bp + 0x8]             ; 0x5ea8
    push ax                          ; 0x5eab
    call loc_QQUT                    ; 0x5eac
    add sp, byte 6                   ; 0x5eaf
    mov word [bss_82fc], ax          ; 0x5eb2
@..api_idx_000e_ORJG.l130:
    jmp near @..api_idx_000e_ORJG.l132 ; 0x5eb5
jumptable_5eb8:
    dw jumptable_5eb8_case_0 - IMAGE_BASE + __zres_end ; 0x5eb8
    dw jumptable_5eb8_case_1 - IMAGE_BASE + __zres_end ; 0x5eba
    dw jumptable_5eb8_case_2 - IMAGE_BASE + __zres_end ; 0x5ebc
    dw jumptable_5eb8_case_3 - IMAGE_BASE + __zres_end ; 0x5ebe
    dw jumptable_5eb8_case_4 - IMAGE_BASE + __zres_end ; 0x5ec0
    dw jumptable_5eb8_case_5 - IMAGE_BASE + __zres_end ; 0x5ec2
    dw jumptable_5eb8_case_6 - IMAGE_BASE + __zres_end ; 0x5ec4
    dw jumptable_5eb8_case_7 - IMAGE_BASE + __zres_end ; 0x5ec6
    dw jumptable_5eb8_case_8 - IMAGE_BASE + __zres_end ; 0x5ec8
    dw jumptable_5eb8_case_9 - IMAGE_BASE + __zres_end ; 0x5eca
    dw jumptable_5eb8_case_10 - IMAGE_BASE + __zres_end ; 0x5ecc
    dw jumptable_5eb8_case_11 - IMAGE_BASE + __zres_end ; 0x5ece
    dw jumptable_5eb8_case_12 - IMAGE_BASE + __zres_end ; 0x5ed0
    dw jumptable_5eb8_case_13 - IMAGE_BASE + __zres_end ; 0x5ed2
    dw jumptable_5eb8_case_14 - IMAGE_BASE + __zres_end ; 0x5ed4
    dw jumptable_5eb8_case_15 - IMAGE_BASE + __zres_end ; 0x5ed6
    dw jumptable_5eb8_case_16 - IMAGE_BASE + __zres_end ; 0x5ed8
    dw jumptable_5eb8_case_17 - IMAGE_BASE + __zres_end ; 0x5eda
    dw jumptable_5eb8_case_18 - IMAGE_BASE + __zres_end ; 0x5edc
    dw jumptable_5eb8_case_12 - IMAGE_BASE + __zres_end ; 0x5ede
    dw jumptable_5eb8_case_20 - IMAGE_BASE + __zres_end ; 0x5ee0
    dw jumptable_5eb8_case_21 - IMAGE_BASE + __zres_end ; 0x5ee2
    dw jumptable_5eb8_case_22 - IMAGE_BASE + __zres_end ; 0x5ee4
    dw jumptable_5eb8_case_23 - IMAGE_BASE + __zres_end ; 0x5ee6
    dw jumptable_5eb8_case_24 - IMAGE_BASE + __zres_end ; 0x5ee8
    dw jumptable_5eb8_case_25 - IMAGE_BASE + __zres_end ; 0x5eea
    dw jumptable_5eb8_case_26 - IMAGE_BASE + __zres_end ; 0x5eec
    dw jumptable_5eb8_case_27 - IMAGE_BASE + __zres_end ; 0x5eee
    dw jumptable_5eb8_case_28 - IMAGE_BASE + __zres_end ; 0x5ef0
    dw jumptable_5eb8_case_29 - IMAGE_BASE + __zres_end ; 0x5ef2
    dw jumptable_5eb8_case_30 - IMAGE_BASE + __zres_end ; 0x5ef4
    dw jumptable_5eb8_case_31 - IMAGE_BASE + __zres_end ; 0x5ef6
    dw jumptable_5eb8_case_32 - IMAGE_BASE + __zres_end ; 0x5ef8
    dw jumptable_5eb8_case_33 - IMAGE_BASE + __zres_end ; 0x5efa
    dw jumptable_5eb8_case_34 - IMAGE_BASE + __zres_end ; 0x5efc
    dw jumptable_5eb8_case_35 - IMAGE_BASE + __zres_end ; 0x5efe
    dw jumptable_5eb8_case_36 - IMAGE_BASE + __zres_end ; 0x5f00
    dw jumptable_5eb8_case_37 - IMAGE_BASE + __zres_end ; 0x5f02
    dw jumptable_5eb8_case_38 - IMAGE_BASE + __zres_end ; 0x5f04
    dw jumptable_5eb8_case_39 - IMAGE_BASE + __zres_end ; 0x5f06
    dw jumptable_5eb8_case_40 - IMAGE_BASE + __zres_end ; 0x5f08
    dw jumptable_5eb8_case_41 - IMAGE_BASE + __zres_end ; 0x5f0a
    dw jumptable_5eb8_case_42 - IMAGE_BASE + __zres_end ; 0x5f0c
    dw jumptable_5eb8_case_43 - IMAGE_BASE + __zres_end ; 0x5f0e
    dw jumptable_5eb8_case_44 - IMAGE_BASE + __zres_end ; 0x5f10
    dw jumptable_5eb8_case_45 - IMAGE_BASE + __zres_end ; 0x5f12
    dw jumptable_5eb8_case_46 - IMAGE_BASE + __zres_end ; 0x5f14
    dw jumptable_5eb8_case_47 - IMAGE_BASE + __zres_end ; 0x5f16
    dw jumptable_5eb8_case_48 - IMAGE_BASE + __zres_end ; 0x5f18
    dw jumptable_5eb8_case_49 - IMAGE_BASE + __zres_end ; 0x5f1a
    dw jumptable_5eb8_case_50 - IMAGE_BASE + __zres_end ; 0x5f1c
    dw jumptable_5eb8_case_51 - IMAGE_BASE + __zres_end ; 0x5f1e
    dw jumptable_5eb8_case_52 - IMAGE_BASE + __zres_end ; 0x5f20
    dw jumptable_5eb8_case_53 - IMAGE_BASE + __zres_end ; 0x5f22
    dw jumptable_5eb8_case_54 - IMAGE_BASE + __zres_end ; 0x5f24
    dw jumptable_5eb8_case_55 - IMAGE_BASE + __zres_end ; 0x5f26
    dw jumptable_5eb8_case_56 - IMAGE_BASE + __zres_end ; 0x5f28
    dw jumptable_5eb8_case_57 - IMAGE_BASE + __zres_end ; 0x5f2a
    dw jumptable_5eb8_case_58 - IMAGE_BASE + __zres_end ; 0x5f2c
    dw jumptable_5eb8_case_59 - IMAGE_BASE + __zres_end ; 0x5f2e
    dw jumptable_5eb8_case_60 - IMAGE_BASE + __zres_end ; 0x5f30
    dw jumptable_5eb8_case_61 - IMAGE_BASE + __zres_end ; 0x5f32
    dw jumptable_5eb8_case_47 - IMAGE_BASE + __zres_end ; 0x5f34
    dw jumptable_5eb8_case_63 - IMAGE_BASE + __zres_end ; 0x5f36
    dw jumptable_5eb8_case_64 - IMAGE_BASE + __zres_end ; 0x5f38
    dw jumptable_5eb8_case_65 - IMAGE_BASE + __zres_end ; 0x5f3a
    dw jumptable_5eb8_case_66 - IMAGE_BASE + __zres_end ; 0x5f3c
    dw jumptable_5eb8_case_67 - IMAGE_BASE + __zres_end ; 0x5f3e
    dw jumptable_5eb8_case_47 - IMAGE_BASE + __zres_end ; 0x5f40
    dw jumptable_5eb8_case_69 - IMAGE_BASE + __zres_end ; 0x5f42
    dw jumptable_5eb8_case_70 - IMAGE_BASE + __zres_end ; 0x5f44
    dw jumptable_5eb8_case_71 - IMAGE_BASE + __zres_end ; 0x5f46
    dw jumptable_5eb8_case_47 - IMAGE_BASE + __zres_end ; 0x5f48
    dw jumptable_5eb8_case_73 - IMAGE_BASE + __zres_end ; 0x5f4a
    dw jumptable_5eb8_case_74 - IMAGE_BASE + __zres_end ; 0x5f4c
    dw jumptable_5eb8_case_47 - IMAGE_BASE + __zres_end ; 0x5f4e
    dw jumptable_5eb8_case_76 - IMAGE_BASE + __zres_end ; 0x5f50
    dw jumptable_5eb8_case_47 - IMAGE_BASE + __zres_end ; 0x5f52
    dw jumptable_5eb8_case_78 - IMAGE_BASE + __zres_end ; 0x5f54
    dw jumptable_5eb8_case_79 - IMAGE_BASE + __zres_end ; 0x5f56
    dw jumptable_5eb8_case_80 - IMAGE_BASE + __zres_end ; 0x5f58
    dw jumptable_5eb8_case_81 - IMAGE_BASE + __zres_end ; 0x5f5a
    dw jumptable_5eb8_case_82 - IMAGE_BASE + __zres_end ; 0x5f5c
    dw jumptable_5eb8_case_83 - IMAGE_BASE + __zres_end ; 0x5f5e
    dw jumptable_5eb8_case_84 - IMAGE_BASE + __zres_end ; 0x5f60
    dw jumptable_5eb8_case_85 - IMAGE_BASE + __zres_end ; 0x5f62
    dw jumptable_5eb8_case_86 - IMAGE_BASE + __zres_end ; 0x5f64
    dw jumptable_5eb8_case_47 - IMAGE_BASE + __zres_end ; 0x5f66
    dw jumptable_5eb8_case_78 - IMAGE_BASE + __zres_end ; 0x5f68
    dw jumptable_5eb8_case_89 - IMAGE_BASE + __zres_end ; 0x5f6a
    dw jumptable_5eb8_case_90 - IMAGE_BASE + __zres_end ; 0x5f6c
    dw jumptable_5eb8_case_91 - IMAGE_BASE + __zres_end ; 0x5f6e
    dw jumptable_5eb8_case_47 - IMAGE_BASE + __zres_end ; 0x5f70
    dw jumptable_5eb8_case_93 - IMAGE_BASE + __zres_end ; 0x5f72
    dw jumptable_5eb8_case_94 - IMAGE_BASE + __zres_end ; 0x5f74
    dw jumptable_5eb8_case_95 - IMAGE_BASE + __zres_end ; 0x5f76
    dw jumptable_5eb8_case_96 - IMAGE_BASE + __zres_end ; 0x5f78
    dw jumptable_5eb8_case_97 - IMAGE_BASE + __zres_end ; 0x5f7a
    dw jumptable_5eb8_case_98 - IMAGE_BASE + __zres_end ; 0x5f7c
    dw jumptable_5eb8_case_47 - IMAGE_BASE + __zres_end ; 0x5f7e
    dw jumptable_5eb8_case_100 - IMAGE_BASE + __zres_end ; 0x5f80
    dw jumptable_5eb8_case_101 - IMAGE_BASE + __zres_end ; 0x5f82
@..api_idx_000e_ORJG.l131:
    cmp ax, strict word 0x66         ; 0x5f84
    jae short @..api_idx_000e_ORJG.l132 ; 0x5f87
    xchg bx, ax                      ; 0x5f89
    shl bx, 1                        ; 0x5f8a
    jmp [cs:bx + jumptable_5eb8 - IMAGE_BASE + __zres_end] ; 0x5f8c
jumptable_5eb8_case_47:
@..api_idx_000e_ORJG.l132:
    cmp word [bss_90e4], byte 0      ; 0x5f91
    jne short @..api_idx_000e_ORJG.l133 ; 0x5f96
    push word [bss_9058]             ; 0x5f98
    call api_idx_0004_QUPL           ; 0x5f9c
    pop cx                           ; 0x5f9f
@..api_idx_000e_ORJG.l133:
    ret                              ; 0x5fa0
