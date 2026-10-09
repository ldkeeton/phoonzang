api_idx_0012_2:
    mov ax, 0xffee                   ; 0x29e5
    call ds_dispatch_f40b            ; 0x29e8
    mov word [bp - 0x0004], 0xffff   ; 0x29eb
    mov word [bp - 0x0006], 0xffff   ; 0x29f0
    mov ax, word [bp + 0x6]          ; 0x29f5
    jmp near @..api_idx_0012_2.l1    ; 0x29f8
    cmp word [bp + 0x26], byte 0xff  ; 0x29fb
    jne short loc_2a04               ; 0x29ff
    jmp near loc_2a88                ; 0x2a01
    cmp word [bp + 0x4], byte 0      ; 0x2a04
    je short loc_2a0d                ; 0x2a08
    db 0xe9, 0x7b, 0x00 ; jmp near loc_2a88
    cmp word [bp + 0x6], byte 8      ; 0x2a0d
    jne short loc_2a19               ; 0x2a11
    mov ax, word [bp + 0x26]         ; 0x2a13
    inc ax                           ; 0x2a16
    jmp short loc_2a1f               ; 0x2a17
    mov ax, word [bp + 0x26]         ; 0x2a19
    inc ax                           ; 0x2a1c
    inc ax                           ; 0x2a1d
    inc ax                           ; 0x2a1e
    mov word [bp - 0x0002], ax       ; 0x2a1f
    mov ax, 0                        ; 0x2a22
    push ax                          ; 0x2a25
    mov ax, 1                        ; 0x2a26
    push ax                          ; 0x2a29
    mov ax, 0                        ; 0x2a2a
    push ax                          ; 0x2a2d
    push word [bp + 0xa]             ; 0x2a2e
    push word [bp + 0x4]             ; 0x2a31
    mov ax, 0xffff                   ; 0x2a34
    cmp word [bp + 0x8], byte 2      ; 0x2a37
    jge short loc_2a41               ; 0x2a3b
    mov ax, word [bp - 0x0002]       ; 0x2a3d
    inc ax                           ; 0x2a40
    push ax                          ; 0x2a41
    mov ax, 0xffff                   ; 0x2a42
    cmp word [bp + 0x8], byte 2      ; 0x2a45
    jge short loc_2a4e               ; 0x2a49
    mov ax, word [bp - 0x0002]       ; 0x2a4b
    push ax                          ; 0x2a4e
    mov ax, 0                        ; 0x2a4f
    push ax                          ; 0x2a52
    push ax                          ; 0x2a53
    mov ax, 2                        ; 0x2a54
    push ax                          ; 0x2a57
    push ax                          ; 0x2a58
    cmp word [bp + 0x6], byte 8      ; 0x2a59
    jne short loc_2a65               ; 0x2a5d
    cmp word [bp + 0x8], byte 2      ; 0x2a5f
    jg short loc_2a71                ; 0x2a63
    cmp word [bp + 0x6], byte 9      ; 0x2a65
    jne short loc_2a77               ; 0x2a69
    cmp word [bp + 0x8], byte 2      ; 0x2a6b
    jge short loc_2a77               ; 0x2a6f
    mov ax, word [bp - 0x0002]       ; 0x2a71
    inc ax                           ; 0x2a74
    jmp short loc_2a7a               ; 0x2a75
    mov ax, 0xffff                   ; 0x2a77
    push ax                          ; 0x2a7a
    push word [bp - 0x0002]          ; 0x2a7b
    mov ax, 0xfd                     ; 0x2a7e
    push ax                          ; 0x2a81
    call api_idx_0004_5              ; 0x2a82
    add sp, byte 0x1c                ; 0x2a85
    cmp word [bp + 0x6], byte 3      ; 0x2a88
    je short loc_2a91                ; 0x2a8c
    jmp near loc_2b14                ; 0x2a8e
    cmp word [bp + 0x4], byte 4      ; 0x2a91
    jl short loc_2a9a                ; 0x2a95
    db 0xe9, 0x7a, 0x00 ; jmp near loc_2b14
    cmp word [bp + 0x34], byte 0xff  ; 0x2a9a
    je short loc_2aef                ; 0x2a9e
    mov ax, 0                        ; 0x2aa0
    push ax                          ; 0x2aa3
    mov ax, 1                        ; 0x2aa4
    push ax                          ; 0x2aa7
    mov ax, 0                        ; 0x2aa8
    push ax                          ; 0x2aab
    push word [bp + 0xe]             ; 0x2aac
    push word [bp + 0x4]             ; 0x2aaf
    mov ax, 0xffff                   ; 0x2ab2
    push ax                          ; 0x2ab5
    mov ax, word [bp + 0x34]         ; 0x2ab6
    add ax, word [bp + 0x4]          ; 0x2ab9
    push ax                          ; 0x2abc
    call loc_193b                    ; 0x2abd
    pop cx                           ; 0x2ac0
    push ax                          ; 0x2ac1
    mov ax, 0                        ; 0x2ac2
    push ax                          ; 0x2ac5
    push ax                          ; 0x2ac6
    push ax                          ; 0x2ac7
    mov ax, 2                        ; 0x2ac8
    push ax                          ; 0x2acb
    mov ax, 0xffff                   ; 0x2acc
    push ax                          ; 0x2acf
    mov ax, word [bp + 0x36]         ; 0x2ad0
    add ax, word [bp + 0x4]          ; 0x2ad3
    push ax                          ; 0x2ad6
    mov ax, word [bp + 0x34]         ; 0x2ad7
    add ax, word [bp + 0x4]          ; 0x2ada
    push ax                          ; 0x2add
    call loc_194f                    ; 0x2ade
    add sp, byte 4                   ; 0x2ae1
    push ax                          ; 0x2ae4
    mov ax, 0xfd                     ; 0x2ae5
    push ax                          ; 0x2ae8
    call api_idx_0004_5              ; 0x2ae9
    add sp, byte 0x1c                ; 0x2aec
    mov ax, word [bp + 0x32]         ; 0x2aef
    add ax, word [bp + 0x4]          ; 0x2af2
    push ax                          ; 0x2af5
    mov ax, word [bp + 0x30]         ; 0x2af6
    add ax, word [bp + 0x4]          ; 0x2af9
    push ax                          ; 0x2afc
    call loc_194f                    ; 0x2afd
    add sp, byte 4                   ; 0x2b00
    mov word [bp - 0x0004], ax       ; 0x2b03
    mov ax, word [bp + 0x30]         ; 0x2b06
    add ax, word [bp + 0x4]          ; 0x2b09
    push ax                          ; 0x2b0c
    call loc_193b                    ; 0x2b0d
    pop cx                           ; 0x2b10
    mov word [bp - 0x0006], ax       ; 0x2b11
    cmp word [bp + 0x6], byte 6      ; 0x2b14
    jne short loc_2b45               ; 0x2b18
    cmp word [bp + 0x4], byte 4      ; 0x2b1a
    jge short loc_2b45               ; 0x2b1e
    mov ax, word [bp + 0x24]         ; 0x2b20
    add ax, word [bp + 0x4]          ; 0x2b23
    push ax                          ; 0x2b26
    mov ax, word [bp + 0x22]         ; 0x2b27
    add ax, word [bp + 0x4]          ; 0x2b2a
    push ax                          ; 0x2b2d
    call loc_194f                    ; 0x2b2e
    add sp, byte 4                   ; 0x2b31
    mov word [bp - 0x0004], ax       ; 0x2b34
    mov ax, word [bp + 0x22]         ; 0x2b37
    add ax, word [bp + 0x4]          ; 0x2b3a
    push ax                          ; 0x2b3d
    call loc_193b                    ; 0x2b3e
    pop cx                           ; 0x2b41
    mov word [bp - 0x0006], ax       ; 0x2b42
    cmp word [data_91a8], byte 0     ; 0x2b45
    jne short loc_2ba1               ; 0x2b4a
    cmp word [bp + 0x4], byte 4      ; 0x2b4c
    jge short loc_2b9f               ; 0x2b50
    mov ax, 0                        ; 0x2b52
    push ax                          ; 0x2b55
    mov ax, 1                        ; 0x2b56
    push ax                          ; 0x2b59
    mov ax, 0                        ; 0x2b5a
    push ax                          ; 0x2b5d
    push word [bp + 0xa]             ; 0x2b5e
    push word [bp + 0x4]             ; 0x2b61
    push word [bp - 0x0006]          ; 0x2b64
    mov ax, word [bp + 0x1e]         ; 0x2b67
    add ax, word [bp + 0x4]          ; 0x2b6a
    push ax                          ; 0x2b6d
    call loc_193b                    ; 0x2b6e
    pop cx                           ; 0x2b71
    push ax                          ; 0x2b72
    mov ax, 0                        ; 0x2b73
    push ax                          ; 0x2b76
    push ax                          ; 0x2b77
    mov ax, 2                        ; 0x2b78
    push ax                          ; 0x2b7b
    push ax                          ; 0x2b7c
    push word [bp - 0x0004]          ; 0x2b7d
    mov ax, word [bp + 0x20]         ; 0x2b80
    add ax, word [bp + 0x4]          ; 0x2b83
    push ax                          ; 0x2b86
    mov ax, word [bp + 0x1e]         ; 0x2b87
    add ax, word [bp + 0x4]          ; 0x2b8a
    push ax                          ; 0x2b8d
    call loc_194f                    ; 0x2b8e
    add sp, byte 4                   ; 0x2b91
    push ax                          ; 0x2b94
    mov ax, 0xfd                     ; 0x2b95
    push ax                          ; 0x2b98
    call api_idx_0004_5              ; 0x2b99
    add sp, byte 0x1c                ; 0x2b9c
    jmp short loc_2bfb               ; 0x2b9f
    cmp word [data_91a8], byte 2     ; 0x2ba1
    jne short loc_2bfb               ; 0x2ba6
    cmp word [bp + 0x4], byte 5      ; 0x2ba8
    jge short loc_2bfb               ; 0x2bac
    mov ax, 0                        ; 0x2bae
    push ax                          ; 0x2bb1
    mov ax, 1                        ; 0x2bb2
    push ax                          ; 0x2bb5
    mov ax, 0                        ; 0x2bb6
    push ax                          ; 0x2bb9
    push word [bp + 0xe]             ; 0x2bba
    push word [bp + 0x4]             ; 0x2bbd
    push word [bp - 0x0006]          ; 0x2bc0
    mov ax, word [bp + 0x2c]         ; 0x2bc3
    add ax, word [bp + 0x4]          ; 0x2bc6
    push ax                          ; 0x2bc9
    call loc_193b                    ; 0x2bca
    pop cx                           ; 0x2bcd
    push ax                          ; 0x2bce
    mov ax, 0                        ; 0x2bcf
    push ax                          ; 0x2bd2
    push ax                          ; 0x2bd3
    mov ax, 2                        ; 0x2bd4
    push ax                          ; 0x2bd7
    push ax                          ; 0x2bd8
    push word [bp - 0x0004]          ; 0x2bd9
    mov ax, word [bp + 0x2e]         ; 0x2bdc
    add ax, word [bp + 0x4]          ; 0x2bdf
    push ax                          ; 0x2be2
    mov ax, word [bp + 0x2c]         ; 0x2be3
    add ax, word [bp + 0x4]          ; 0x2be6
    push ax                          ; 0x2be9
    call loc_194f                    ; 0x2bea
    add sp, byte 4                   ; 0x2bed
    push ax                          ; 0x2bf0
    mov ax, 0xfd                     ; 0x2bf1
    push ax                          ; 0x2bf4
    call api_idx_0004_5              ; 0x2bf5
    add sp, byte 0x1c                ; 0x2bf8
    cmp word [bp + 0x26], byte 0xff  ; 0x2bfb
    je short loc_2c4e                ; 0x2bff
    cmp word [bp + 0x4], byte 0      ; 0x2c01
    jne short loc_2c4e               ; 0x2c05
    cmp word [bp + 0x6], byte 8      ; 0x2c07
    je short loc_2c13                ; 0x2c0b
    cmp word [bp + 0x6], byte 9      ; 0x2c0d
    db 0x75, 0x3b ; jne short loc_2c4e
    mov ax, 0                        ; 0x2c13
    push ax                          ; 0x2c16
    mov ax, 1                        ; 0x2c17
    push ax                          ; 0x2c1a
    mov ax, 0                        ; 0x2c1b
    push ax                          ; 0x2c1e
    push word [bp + 0xa]             ; 0x2c1f
    push word [bp + 0x4]             ; 0x2c22
    mov ax, 0xffff                   ; 0x2c25
    push ax                          ; 0x2c28
    cmp word [bp + 0x8], byte 2      ; 0x2c29
    jge short loc_2c32               ; 0x2c2d
    mov ax, word [bp + 0x26]         ; 0x2c2f
    push ax                          ; 0x2c32
    mov ax, 0                        ; 0x2c33
    push ax                          ; 0x2c36
    push ax                          ; 0x2c37
    push ax                          ; 0x2c38
    mov ax, 2                        ; 0x2c39
    push ax                          ; 0x2c3c
    mov ax, 0xffff                   ; 0x2c3d
    push ax                          ; 0x2c40
    push word [bp + 0x26]            ; 0x2c41
    mov ax, 0xfd                     ; 0x2c44
    push ax                          ; 0x2c47
    call api_idx_0004_5              ; 0x2c48
    add sp, byte 0x1c                ; 0x2c4b
    jmp near @..api_idx_0012_2.l2    ; 0x2c4e
    cmp word [bp + 0x4], byte 4      ; 0x2c51
    jge short loc_2c7c               ; 0x2c55
    mov ax, word [bp + 0x3a]         ; 0x2c57
    add ax, word [bp + 0x4]          ; 0x2c5a
    push ax                          ; 0x2c5d
    mov ax, word [bp + 0x38]         ; 0x2c5e
    add ax, word [bp + 0x4]          ; 0x2c61
    push ax                          ; 0x2c64
    call loc_194f                    ; 0x2c65
    add sp, byte 4                   ; 0x2c68
    mov word [bp - 0x0004], ax       ; 0x2c6b
    mov ax, word [bp + 0x38]         ; 0x2c6e
    add ax, word [bp + 0x4]          ; 0x2c71
    push ax                          ; 0x2c74
    call loc_193b                    ; 0x2c75
    pop cx                           ; 0x2c78
    mov word [bp - 0x0006], ax       ; 0x2c79
    cmp word [data_91a8], byte 0     ; 0x2c7c
    jne short loc_2cd9               ; 0x2c81
    cmp word [bp + 0x4], byte 4      ; 0x2c83
    jge short loc_2cd6               ; 0x2c87
    mov ax, 0                        ; 0x2c89
    push ax                          ; 0x2c8c
    mov ax, 1                        ; 0x2c8d
    push ax                          ; 0x2c90
    mov ax, 0                        ; 0x2c91
    push ax                          ; 0x2c94
    push word [bp + 0xa]             ; 0x2c95
    push word [bp + 0x4]             ; 0x2c98
    push word [bp - 0x0006]          ; 0x2c9b
    mov ax, word [bp + 0x16]         ; 0x2c9e
    add ax, word [bp + 0x4]          ; 0x2ca1
    push ax                          ; 0x2ca4
    call loc_193b                    ; 0x2ca5
    pop cx                           ; 0x2ca8
    push ax                          ; 0x2ca9
    mov ax, 0                        ; 0x2caa
    push ax                          ; 0x2cad
    push ax                          ; 0x2cae
    mov ax, 2                        ; 0x2caf
    push ax                          ; 0x2cb2
    push ax                          ; 0x2cb3
    push word [bp - 0x0004]          ; 0x2cb4
    mov ax, word [bp + 0x18]         ; 0x2cb7
    add ax, word [bp + 0x4]          ; 0x2cba
    push ax                          ; 0x2cbd
    mov ax, word [bp + 0x16]         ; 0x2cbe
    add ax, word [bp + 0x4]          ; 0x2cc1
    push ax                          ; 0x2cc4
    call loc_194f                    ; 0x2cc5
    add sp, byte 4                   ; 0x2cc8
    push ax                          ; 0x2ccb
    mov ax, 0xfd                     ; 0x2ccc
    push ax                          ; 0x2ccf
    call api_idx_0004_5              ; 0x2cd0
    add sp, byte 0x1c                ; 0x2cd3
    jmp near loc_2de1                ; 0x2cd6
    cmp word [data_91a8], byte 3     ; 0x2cd9
    jl short loc_2cea                ; 0x2cde
    cmp word [data_91a8], byte 5     ; 0x2ce0
    je short loc_2cea                ; 0x2ce5
    jmp near loc_2d85                ; 0x2ce7
    cmp word [bp + 0x4], byte 5      ; 0x2cea
    jl short loc_2cf3                ; 0x2cee
    jmp near loc_2d83                ; 0x2cf0
    cmp word [data_91a8], byte 2     ; 0x2cf3
    jne short loc_2d34               ; 0x2cf8
    cmp word [bp - 0x0004], byte 0xff ; 0x2cfa
    je short loc_2d34                ; 0x2cfe
    mov ax, 0                        ; 0x2d00
    push ax                          ; 0x2d03
    mov ax, 1                        ; 0x2d04
    push ax                          ; 0x2d07
    mov ax, 0                        ; 0x2d08
    push ax                          ; 0x2d0b
    push word [bp + 0xe]             ; 0x2d0c
    push word [bp + 0x4]             ; 0x2d0f
    mov ax, 0xffff                   ; 0x2d12
    push ax                          ; 0x2d15
    push word [bp - 0x0006]          ; 0x2d16
    mov ax, 0                        ; 0x2d19
    push ax                          ; 0x2d1c
    push ax                          ; 0x2d1d
    push ax                          ; 0x2d1e
    mov ax, 2                        ; 0x2d1f
    push ax                          ; 0x2d22
    mov ax, 0xffff                   ; 0x2d23
    push ax                          ; 0x2d26
    push word [bp - 0x0004]          ; 0x2d27
    mov ax, 0xfd                     ; 0x2d2a
    push ax                          ; 0x2d2d
    call api_idx_0004_5              ; 0x2d2e
    add sp, byte 0x1c                ; 0x2d31
    mov ax, 0                        ; 0x2d34
    push ax                          ; 0x2d37
    mov ax, 1                        ; 0x2d38
    push ax                          ; 0x2d3b
    mov ax, 0                        ; 0x2d3c
    push ax                          ; 0x2d3f
    push word [bp + 0x10]            ; 0x2d40
    push word [bp + 0x4]             ; 0x2d43
    mov ax, 0xffff                   ; 0x2d46
    push ax                          ; 0x2d49
    mov ax, word [bp + 0x28]         ; 0x2d4a
    add ax, word [bp + 0x4]          ; 0x2d4d
    push ax                          ; 0x2d50
    call loc_193b                    ; 0x2d51
    pop cx                           ; 0x2d54
    push ax                          ; 0x2d55
    mov ax, 0                        ; 0x2d56
    push ax                          ; 0x2d59
    push ax                          ; 0x2d5a
    push ax                          ; 0x2d5b
    mov ax, 2                        ; 0x2d5c
    push ax                          ; 0x2d5f
    mov ax, 0xffff                   ; 0x2d60
    push ax                          ; 0x2d63
    mov ax, word [bp + 0x2a]         ; 0x2d64
    add ax, word [bp + 0x4]          ; 0x2d67
    push ax                          ; 0x2d6a
    mov ax, word [bp + 0x28]         ; 0x2d6b
    add ax, word [bp + 0x4]          ; 0x2d6e
    push ax                          ; 0x2d71
    call loc_194f                    ; 0x2d72
    add sp, byte 4                   ; 0x2d75
    push ax                          ; 0x2d78
    mov ax, 0xfd                     ; 0x2d79
    push ax                          ; 0x2d7c
    call api_idx_0004_5              ; 0x2d7d
    add sp, byte 0x1c                ; 0x2d80
    jmp short loc_2de1               ; 0x2d83
    cmp word [data_91a8], byte 5     ; 0x2d85
    jge short loc_2de1               ; 0x2d8a
    cmp word [bp + 0x4], byte 4      ; 0x2d8c
    db 0x7d, 0x4f ; jge short loc_2de1
    mov ax, 0                        ; 0x2d92
    push ax                          ; 0x2d95
    mov ax, 1                        ; 0x2d96
    push ax                          ; 0x2d99
    mov ax, 0                        ; 0x2d9a
    push ax                          ; 0x2d9d
    push word [bp + 0x14]            ; 0x2d9e
    push word [bp + 0x4]             ; 0x2da1
    mov ax, 0xffff                   ; 0x2da4
    push ax                          ; 0x2da7
    mov ax, word [bp + 0x3c]         ; 0x2da8
    add ax, word [bp + 0x4]          ; 0x2dab
    push ax                          ; 0x2dae
    call loc_193b                    ; 0x2daf
    pop cx                           ; 0x2db2
    push ax                          ; 0x2db3
    mov ax, 0                        ; 0x2db4
    push ax                          ; 0x2db7
    push ax                          ; 0x2db8
    push ax                          ; 0x2db9
    mov ax, 2                        ; 0x2dba
    push ax                          ; 0x2dbd
    mov ax, 0xffff                   ; 0x2dbe
    push ax                          ; 0x2dc1
    mov ax, word [bp + 0x3e]         ; 0x2dc2
    add ax, word [bp + 0x4]          ; 0x2dc5
    push ax                          ; 0x2dc8
    mov ax, word [bp + 0x3c]         ; 0x2dc9
    add ax, word [bp + 0x4]          ; 0x2dcc
    push ax                          ; 0x2dcf
    call loc_194f                    ; 0x2dd0
    add sp, byte 4                   ; 0x2dd3
    push ax                          ; 0x2dd6
    mov ax, 0xfd                     ; 0x2dd7
    push ax                          ; 0x2dda
    call api_idx_0004_5              ; 0x2ddb
    add sp, byte 0x1c                ; 0x2dde
    jmp near @..api_idx_0012_2.l2    ; 0x2de1
    cmp word [bp + 0x4], byte 4      ; 0x2de4
    jge short loc_2e39               ; 0x2de8
    mov ax, 0                        ; 0x2dea
    push ax                          ; 0x2ded
    mov ax, 1                        ; 0x2dee
    push ax                          ; 0x2df1
    mov ax, 0                        ; 0x2df2
    push ax                          ; 0x2df5
    push word [bp + 0xc]             ; 0x2df6
    push word [bp + 0x4]             ; 0x2df9
    mov ax, 0xffff                   ; 0x2dfc
    push ax                          ; 0x2dff
    mov ax, word [bp + 0x1a]         ; 0x2e00
    add ax, word [bp + 0x4]          ; 0x2e03
    push ax                          ; 0x2e06
    call loc_1913                    ; 0x2e07
    pop cx                           ; 0x2e0a
    push ax                          ; 0x2e0b
    mov ax, 0                        ; 0x2e0c
    push ax                          ; 0x2e0f
    push ax                          ; 0x2e10
    push ax                          ; 0x2e11
    mov ax, 2                        ; 0x2e12
    push ax                          ; 0x2e15
    mov ax, 0xffff                   ; 0x2e16
    push ax                          ; 0x2e19
    mov ax, word [bp + 0x1c]         ; 0x2e1a
    add ax, word [bp + 0x4]          ; 0x2e1d
    push ax                          ; 0x2e20
    mov ax, word [bp + 0x1a]         ; 0x2e21
    add ax, word [bp + 0x4]          ; 0x2e24
    push ax                          ; 0x2e27
    call loc_1927                    ; 0x2e28
    add sp, byte 4                   ; 0x2e2b
    push ax                          ; 0x2e2e
    mov ax, 0xfb                     ; 0x2e2f
    push ax                          ; 0x2e32
    call api_idx_0004_5              ; 0x2e33
    add sp, byte 0x1c                ; 0x2e36
    jmp near @..api_idx_0012_2.l2    ; 0x2e39
    cmp word [bp + 0x4], byte 4      ; 0x2e3c
    jge short loc_2e91               ; 0x2e40
    mov ax, 0                        ; 0x2e42
    push ax                          ; 0x2e45
    mov ax, 1                        ; 0x2e46
    push ax                          ; 0x2e49
    mov ax, 0                        ; 0x2e4a
    push ax                          ; 0x2e4d
    push word [bp + 0x12]            ; 0x2e4e
    push word [bp + 0x4]             ; 0x2e51
    mov ax, 0xffff                   ; 0x2e54
    push ax                          ; 0x2e57
    mov ax, word [bp + 0x40]         ; 0x2e58
    add ax, word [bp + 0x4]          ; 0x2e5b
    push ax                          ; 0x2e5e
    call loc_193b                    ; 0x2e5f
    pop cx                           ; 0x2e62
    push ax                          ; 0x2e63
    mov ax, 0                        ; 0x2e64
    push ax                          ; 0x2e67
    push ax                          ; 0x2e68
    push ax                          ; 0x2e69
    mov ax, 2                        ; 0x2e6a
    push ax                          ; 0x2e6d
    mov ax, 0xffff                   ; 0x2e6e
    push ax                          ; 0x2e71
    mov ax, word [bp + 0x42]         ; 0x2e72
    add ax, word [bp + 0x4]          ; 0x2e75
    push ax                          ; 0x2e78
    mov ax, word [bp + 0x40]         ; 0x2e79
    add ax, word [bp + 0x4]          ; 0x2e7c
    push ax                          ; 0x2e7f
    call loc_194f                    ; 0x2e80
    add sp, byte 4                   ; 0x2e83
    push ax                          ; 0x2e86
    mov ax, 0xfd                     ; 0x2e87
    push ax                          ; 0x2e8a
    call api_idx_0004_5              ; 0x2e8b
    add sp, byte 0x1c                ; 0x2e8e
    jmp short @..api_idx_0012_2.l2   ; 0x2e91
    pop es                           ; 0x2e93
    jg short loc_2e22                ; 0x2e94
    jnp short loc_2e5b               ; 0x2e96
    jl short loc_2e69                ; 0x2e98
    jp short loc_2ec7                ; 0x2e9a
    jle short loc_2e21               ; 0x2e9c
    jle short loc_2e6f               ; 0x2e9e
    jp short loc_2e3a                ; 0x2ea0
    jl short loc_2ee6                ; 0x2ea2
    jp short loc_2ee8                ; 0x2ea4
    jp short loc_2e6b                ; 0x2ea6
    jl short loc_2e6d                ; 0x2ea8
    jl short loc_2e6f                ; 0x2eaa
    jl short loc_2e71                ; 0x2eac
    jl short loc_2e73                ; 0x2eae
    jl short loc_2e75                ; 0x2eb0
    db 0x7c
@..api_idx_0012_2.l1:
    cmp ax, strict word 0x10         ; 0x2eb3
    jae short @..api_idx_0012_2.l2   ; 0x2eb6
    xchg bx, ax                      ; 0x2eb8
    shl bx, 1                        ; 0x2eb9
    jmp [cs:bx + 0x7eda]             ; 0x2ebb
@..api_idx_0012_2.l2:
    cmp word [bp + 0x4], byte 4      ; 0x2ec0
    jl short @..api_idx_0012_2.l3    ; 0x2ec4
    jmp near @..api_idx_0012_2.l10   ; 0x2ec6
@..api_idx_0012_2.l3:
    cmp word [bp + 0x8], byte 1      ; 0x2ec9
    je short @..api_idx_0012_2.l4    ; 0x2ecd
    cmp word [bp + 0x8], byte 3      ; 0x2ecf
    jne short @..api_idx_0012_2.l5   ; 0x2ed3
@..api_idx_0012_2.l4:
    mov ax, 0                        ; 0x2ed5
    jmp short @..api_idx_0012_2.l6   ; 0x2ed8
@..api_idx_0012_2.l5:
    mov ax, 1                        ; 0x2eda
@..api_idx_0012_2.l6:
    mov word [bp - 0x0012], ax       ; 0x2edd
    mov ax, 0                        ; 0x2ee0
    cmp word [bp + 0x8], byte 2      ; 0x2ee3
    jle short @..api_idx_0012_2.l7   ; 0x2ee7
    mov ax, 1                        ; 0x2ee9
@..api_idx_0012_2.l7:
    mov word [bp - 0x0006], ax       ; 0x2eec
    mov word [bp - 0x000c], 0xffff   ; 0x2eef
    mov ax, word [bp + 0x6]          ; 0x2ef4
    jmp near @..api_idx_0012_2.l8    ; 0x2ef7

    db 0xc7, 0x46, 0xf4, 0x09, 0x00, 0x8b, 0x46, 0x04, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x8b, 0x4e, 0xee
    db 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e, 0xfa, 0xd1, 0xe1, 0xd1, 0xe1, 0x03
    db 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0xe6, 0x03, 0x89, 0x46, 0xf2, 0x8b, 0x87, 0xe8, 0x03, 0x89, 0x46
    db 0xf0, 0xc7, 0x46, 0xf8, 0x04, 0x00, 0xa1, 0xe8, 0x82, 0x05, 0x05, 0x00, 0x89, 0x46, 0xf6, 0xe9
    db 0x76, 0x01, 0xc7, 0x46, 0xf4, 0x09, 0x00, 0x8b, 0x46, 0x04, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x8b
    db 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e, 0xfa, 0xd1, 0xe1, 0xd1
    db 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0x36, 0x04, 0x89, 0x46, 0xf2, 0x8b, 0x87, 0x38, 0x04
    db 0x89, 0x46, 0xf0, 0xc7, 0x46, 0xf8, 0x09, 0x00, 0xb8, 0x00, 0x00, 0x83, 0x3e, 0xe8, 0x82, 0x00
    db 0x74, 0x03, 0xb8, 0x0a, 0x00, 0x89, 0x46, 0xf6, 0xe9, 0x2d, 0x01, 0xc7, 0x46, 0xf4, 0x0a, 0x00
    db 0x83, 0x3e, 0xa8, 0x91, 0x00, 0x75, 0x24, 0x8b, 0x46, 0x04, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x8b
    db 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e, 0xfa, 0xd1, 0xe1, 0xd1
    db 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0x86, 0x04, 0xeb, 0x22, 0x8b, 0x46, 0x04, 0xb9, 0x04
    db 0x00, 0xd3, 0xe0, 0x8b, 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e
    db 0xfa, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0xd6, 0x04, 0x89, 0x46, 0xf2
    db 0x83, 0x3e, 0xa8, 0x91, 0x00, 0x75, 0x24, 0x8b, 0x46, 0x04, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x8b
    db 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e, 0xfa, 0xd1, 0xe1, 0xd1
    db 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0x88, 0x04, 0xeb, 0x22, 0x8b, 0x46, 0x04, 0xb9, 0x04
    db 0x00, 0xd3, 0xe0, 0x8b, 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e
    db 0xfa, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0xd8, 0x04, 0x89, 0x46, 0xf0
    db 0xb8, 0x07, 0x00, 0x83, 0x3e, 0xa8, 0x91, 0x00, 0x75, 0x03, 0xb8, 0x03, 0x00, 0xb9, 0x00, 0x00
    db 0x83, 0x7e, 0x06, 0x0d, 0x75, 0x03, 0xb9, 0x01, 0x00, 0x03, 0xc1, 0x89, 0x46, 0xf8, 0xc7, 0x46
    db 0xf6, 0x00, 0x00, 0xeb, 0x63, 0xc7, 0x46, 0xf4, 0x0a, 0x00, 0x8b, 0x46, 0x04, 0xb9, 0x04, 0x00
    db 0xd3, 0xe0, 0x8b, 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e, 0xfa
    db 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0x26, 0x05, 0x89, 0x46, 0xf2, 0x8b
    db 0x87, 0x28, 0x05, 0x89, 0x46, 0xf0, 0xc7, 0x46, 0xf8, 0x0c, 0x00, 0xb8, 0x0e, 0x00, 0x83, 0x7e
    db 0x06, 0x0e, 0x75, 0x03, 0xb8, 0x0d, 0x00, 0x89, 0x46, 0xf6, 0xeb, 0x1c, 0x41, 0x7f, 0x83, 0x7f
    db 0xcc, 0x7f, 0xcc, 0x7f, 0x96, 0x80, 0x96, 0x80

@..api_idx_0012_2.l8:
    sub ax, strict word 0xa          ; 0x30a2
    cmp ax, strict word 6            ; 0x30a5
    jae short @..api_idx_0012_2.l9   ; 0x30a8
    xchg bx, ax                      ; 0x30aa
    shl bx, 1                        ; 0x30ab
    jmp [cs:bx - 0x7f23]             ; 0x30ad
@..api_idx_0012_2.l9:
    cmp word [bp - 0x000c], byte 0xff ; 0x30b2
    je short @..api_idx_0012_2.l10   ; 0x30b6
    mov ax, 3                        ; 0x30b8
    push ax                          ; 0x30bb
    mov ax, 1                        ; 0x30bc
    push ax                          ; 0x30bf
    push word [bp - 0x0006]          ; 0x30c0
    mov ax, word [bp + 0x4]          ; 0x30c3
    shl ax, 1                        ; 0x30c6
    mov bx, ax                       ; 0x30c8
    push word [bx + 0x576]           ; 0x30ca
    push word [bp + 0x4]             ; 0x30ce
    mov ax, 0xf8                     ; 0x30d1
    push ax                          ; 0x30d4
    mov ax, 0x48                     ; 0x30d5
    push ax                          ; 0x30d8
    mov ax, 0                        ; 0x30d9
    push ax                          ; 0x30dc
    push ax                          ; 0x30dd
    push word [bp - 0x000a]          ; 0x30de
    push word [bp - 0x0008]          ; 0x30e1
    push word [bp - 0x0010]          ; 0x30e4
    push word [bp - 0x000e]          ; 0x30e7
    push word [bp - 0x000c]          ; 0x30ea
    call api_idx_0004_5              ; 0x30ed
    add sp, byte 0x1c                ; 0x30f0
@..api_idx_0012_2.l10:
    ret                              ; 0x30f3
