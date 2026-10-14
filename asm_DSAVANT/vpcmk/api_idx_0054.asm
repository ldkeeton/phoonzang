; auto-generated
api_idx_0054:
    mov ax, 0xffac                   ; 0x1b40
    call aztec_csav                  ; 0x1b43
    mov ax, 0                        ; 0x1b46
    push ax                          ; 0x1b49
    push ax                          ; 0x1b4a
    push word [bss_9526]             ; 0x1b4b
    push word [bss_9524]             ; 0x1b4f
    call thunk_12                    ; 0x1b53
    add sp, byte 8                   ; 0x1b56
    mov ax, 0                        ; 0x1b59
    push ax                          ; 0x1b5c
    push ax                          ; 0x1b5d
    push word [bss_952a]             ; 0x1b5e
    push word [bss_9528]             ; 0x1b62
    call thunk_12                    ; 0x1b66
    add sp, byte 8                   ; 0x1b69
    mov ax, 0                        ; 0x1b6c
    push ax                          ; 0x1b6f
    push ax                          ; 0x1b70
    call thunk_3                     ; 0x1b71
    add sp, byte 4                   ; 0x1b74
    mov ax, 0x4c                     ; 0x1b77
    push ax                          ; 0x1b7a
    mov ax, 0x248                    ; 0x1b7b
    imul word [bp + 0x4]             ; 0x1b7e
    add ax, 0x5bf4                   ; 0x1b81
    push ax                          ; 0x1b84
    call aztec_strlen                ; 0x1b85
    pop cx                           ; 0x1b88
    mov cx, 6                        ; 0x1b89
    imul cx                          ; 0x1b8c
    mov cx, 2                        ; 0x1b8e
    cwd                              ; 0x1b91
    idiv cx                          ; 0x1b92
    mov cx, ax                       ; 0x1b94
    mov ax, 0x28                     ; 0x1b96
    sub ax, cx                       ; 0x1b99
    push ax                          ; 0x1b9b
    call thunk                       ; 0x1b9c
    add sp, byte 4                   ; 0x1b9f
    mov ax, 0                        ; 0x1ba2
    push ax                          ; 0x1ba5
    mov ax, 0x248                    ; 0x1ba6
    imul word [bp + 0x4]             ; 0x1ba9
    add ax, 0x5bf4                   ; 0x1bac
    push ax                          ; 0x1baf
    call ds_string_loc_3a95          ; 0x1bb0
    add sp, byte 4                   ; 0x1bb3
    mov ax, 0                        ; 0x1bb6
    push ax                          ; 0x1bb9
    mov ax, 1                        ; 0x1bba
    push ax                          ; 0x1bbd
    call thunk_3                     ; 0x1bbe
    add sp, byte 4                   ; 0x1bc1
    mov ax, 6                        ; 0x1bc4
    push ax                          ; 0x1bc7
    mov ax, 0x5a                     ; 0x1bc8
    push ax                          ; 0x1bcb
    call thunk                       ; 0x1bcc
    add sp, byte 4                   ; 0x1bcf
    lea ax, word [bp - 0x0054]       ; 0x1bd2
    push ax                          ; 0x1bd5
    mov ax, 0x248                    ; 0x1bd6
    imul word [bp + 0x4]             ; 0x1bd9
    mov bx, ax                       ; 0x1bdc
    mov al, byte [bx + 0x5e2c]       ; 0x1bde
    sub ah, ah                       ; 0x1be2
    add ax, 0x8c                     ; 0x1be4
    push ax                          ; 0x1be7
    call ds_app_mem_0782             ; 0x1be8
    add sp, byte 4                   ; 0x1beb
    mov ax, 0                        ; 0x1bee
    push ax                          ; 0x1bf1
    mov al, byte [bp - 0x0054]       ; 0x1bf2
    sub ah, ah                       ; 0x1bf5
    push ax                          ; 0x1bf7
    call ds_loc_3a77                 ; 0x1bf8
    add sp, byte 4                   ; 0x1bfb
    mov ax, 0                        ; 0x1bfe
    push ax                          ; 0x1c01
    mov ax, 0x2d                     ; 0x1c02
    push ax                          ; 0x1c05
    call ds_loc_3a77                 ; 0x1c06
    add sp, byte 4                   ; 0x1c09
    lea ax, word [bp - 0x0054]       ; 0x1c0c
    push ax                          ; 0x1c0f
    mov ax, 0x248                    ; 0x1c10
    imul word [bp + 0x4]             ; 0x1c13
    mov bx, ax                       ; 0x1c16
    mov al, byte [bx + 0x5e2b]       ; 0x1c18
    sub ah, ah                       ; 0x1c1c
    add ax, strict word 0x64         ; 0x1c1e
    push ax                          ; 0x1c21
    call ds_app_mem_0782             ; 0x1c22
    add sp, byte 4                   ; 0x1c25
    mov ax, 0                        ; 0x1c28
    push ax                          ; 0x1c2b
    lea ax, word [bp - 0x0054]       ; 0x1c2c
    push ax                          ; 0x1c2f
    call ds_string_loc_3a95          ; 0x1c30
    add sp, byte 4                   ; 0x1c33
    mov ax, 0                        ; 0x1c36
    push ax                          ; 0x1c39
    mov ax, 0x84                     ; 0x1c3a
    push ax                          ; 0x1c3d
    call thunk_3                     ; 0x1c3e
    add sp, byte 4                   ; 0x1c41
    mov ax, 0xc                      ; 0x1c44
    push ax                          ; 0x1c47
    mov ax, 0x5a                     ; 0x1c48
    push ax                          ; 0x1c4b
    call thunk                       ; 0x1c4c
    add sp, byte 4                   ; 0x1c4f
    lea ax, word [bp - 0x0054]       ; 0x1c52
    push ax                          ; 0x1c55
    mov ax, 0x248                    ; 0x1c56
    imul word [bp + 0x4]             ; 0x1c59
    mov bx, ax                       ; 0x1c5c
    mov al, byte [bx + 0x5e2d]       ; 0x1c5e
    sub ah, ah                       ; 0x1c62
    add ax, strict word 0x78         ; 0x1c64
    push ax                          ; 0x1c67
    call ds_app_mem_0782             ; 0x1c68
    add sp, byte 4                   ; 0x1c6b
    mov ax, 0                        ; 0x1c6e
    push ax                          ; 0x1c71
    lea ax, word [bp - 0x0054]       ; 0x1c72
    push ax                          ; 0x1c75
    call ds_string_loc_3a95          ; 0x1c76
    add sp, byte 4                   ; 0x1c79
    mov ax, 0                        ; 0x1c7c
    push ax                          ; 0x1c7f
    mov ax, 0x84                     ; 0x1c80
    push ax                          ; 0x1c83
    call thunk_3                     ; 0x1c84
    add sp, byte 4                   ; 0x1c87
    mov ax, 0x12                     ; 0x1c8a
    push ax                          ; 0x1c8d
    mov ax, 0x5a                     ; 0x1c8e
    push ax                          ; 0x1c91
    call thunk                       ; 0x1c92
    add sp, byte 4                   ; 0x1c95
    lea ax, word [bp - 0x0054]       ; 0x1c98
    push ax                          ; 0x1c9b
    mov ax, 0xc8                     ; 0x1c9c
    push ax                          ; 0x1c9f
    call ds_app_mem_0782             ; 0x1ca0
    add sp, byte 4                   ; 0x1ca3
    mov ax, 0                        ; 0x1ca6
    push ax                          ; 0x1ca9
    lea ax, word [bp - 0x0054]       ; 0x1caa
    push ax                          ; 0x1cad
    call ds_string_loc_3a95          ; 0x1cae
    add sp, byte 4                   ; 0x1cb1
    mov ax, 0                        ; 0x1cb4
    push ax                          ; 0x1cb7
    mov ax, 4                        ; 0x1cb8
    push ax                          ; 0x1cbb
    mov ax, 0x248                    ; 0x1cbc
    imul word [bp + 0x4]             ; 0x1cbf
    mov bx, ax                       ; 0x1cc2
    push word [bx + 0x5c18]          ; 0x1cc4
    call ds_app_052e                 ; 0x1cc8
    add sp, byte 6                   ; 0x1ccb
    mov ax, 0x248                    ; 0x1cce
    imul word [bp + 0x4]             ; 0x1cd1
    mov bx, ax                       ; 0x1cd4
    mov ax, word [bx + 0x5bfc]       ; 0x1cd6
    mov dx, word [bx + 0x5bfe]       ; 0x1cda
    mov cx, 0x16d                    ; 0x1cde
    mov bx, 0                        ; 0x1ce1
    call aztec_ldv                   ; 0x1ce4
    add ax, strict word 0xffee       ; 0x1ce7
    adc dx, byte 0xff                ; 0x1cea
    mov cx, 4                        ; 0x1ced
    mov bx, 0                        ; 0x1cf0
    call aztec_ldv                   ; 0x1cf3
    push ax                          ; 0x1cf6
    push dx                          ; 0x1cf7
    mov ax, 0x248                    ; 0x1cf8
    imul word [bp + 0x4]             ; 0x1cfb
    mov bx, ax                       ; 0x1cfe
    mov ax, word [bx + 0x5c1a]       ; 0x1d00
    cwd                              ; 0x1d04
    mov cx, ax                       ; 0x1d05
    mov bx, dx                       ; 0x1d07
    pop dx                           ; 0x1d09
    pop ax                           ; 0x1d0a
    add ax, cx                       ; 0x1d0b
    adc dx, bx                       ; 0x1d0d
    mov cx, ax                       ; 0x1d0f
    mov bx, dx                       ; 0x1d11
    add ax, strict word 0xffff       ; 0x1d13
    adc dx, byte 0xff                ; 0x1d16
    mov cx, ax                       ; 0x1d19
    mov bx, dx                       ; 0x1d1b
    mov ax, 0x14                     ; 0x1d1d
    mov dx, 0                        ; 0x1d20
    sub ax, cx                       ; 0x1d23
    sbb dx, bx                       ; 0x1d25
    push ax                          ; 0x1d27
    push dx                          ; 0x1d28
    mov ax, 0x248                    ; 0x1d29
    imul word [bp + 0x4]             ; 0x1d2c
    mov bx, ax                       ; 0x1d2f
    mov al, byte [bx + 0x5d67]       ; 0x1d31
    sub ah, ah                       ; 0x1d35
    cwd                              ; 0x1d37
    mov cx, ax                       ; 0x1d38
    mov bx, dx                       ; 0x1d3a
    pop dx                           ; 0x1d3c
    pop ax                           ; 0x1d3d
    push ax                          ; 0x1d3e
    push dx                          ; 0x1d3f
    mul bx                           ; 0x1d40
    mov bx, ax                       ; 0x1d42
    pop ax                           ; 0x1d44
    mul cx                           ; 0x1d45
    add bx, ax                       ; 0x1d47
    pop ax                           ; 0x1d49
    mul cx                           ; 0x1d4a
    add dx, bx                       ; 0x1d4c
    mov cx, 0x12                     ; 0x1d4e
    mov bx, 0                        ; 0x1d51
    call aztec_ldv                   ; 0x1d54
    mov word [bss_95aa], ax          ; 0x1d57
    mov ax, 0x14                     ; 0x1d5a
    push ax                          ; 0x1d5d
    mov ax, 0                        ; 0x1d5e
    push ax                          ; 0x1d61
    push word [bss_95aa]             ; 0x1d62
    call ds_app_0a09                 ; 0x1d66
    add sp, byte 6                   ; 0x1d69
    mov word [bss_95aa], ax          ; 0x1d6c
    mov ax, 0x248                    ; 0x1d6f
    imul word [bp + 0x4]             ; 0x1d72
    mov bx, ax                       ; 0x1d75
    cmp byte [bx + 0x5e2f], 3        ; 0x1d77
    jae short @..api_idx_0054.l1     ; 0x1d7c
    mov ax, 0                        ; 0x1d7e
    jmp short @..api_idx_0054.l2     ; 0x1d81
@..api_idx_0054.l1:
    mov ax, 1                        ; 0x1d83
@..api_idx_0054.l2:
    mov word [bss_95ac], ax          ; 0x1d86
    mov word [bss_95ae], 0           ; 0x1d89
    push word [bss_95ae]             ; 0x1d8f
    call api_idx_000a                ; 0x1d93
    pop cx                           ; 0x1d96
    mov ax, 0                        ; 0x1d97
    push ax                          ; 0x1d9a
    mov ax, 0xfd                     ; 0x1d9b
    push ax                          ; 0x1d9e
    call thunk_3                     ; 0x1d9f
    add sp, byte 4                   ; 0x1da2
    lea ax, word [bp - 0x0054]       ; 0x1da5
    push ax                          ; 0x1da8
    mov ax, 0xc9                     ; 0x1da9
    push ax                          ; 0x1dac
    call ds_app_mem_0782             ; 0x1dad
    add sp, byte 4                   ; 0x1db0
    mov ax, 6                        ; 0x1db3
    push ax                          ; 0x1db6
    mov ax, 0xe4                     ; 0x1db7
    push ax                          ; 0x1dba
    call thunk                       ; 0x1dbb
    add sp, byte 4                   ; 0x1dbe
    mov ax, 0                        ; 0x1dc1
    push ax                          ; 0x1dc4
    lea ax, word [bp - 0x0054]       ; 0x1dc5
    push ax                          ; 0x1dc8
    call ds_string_loc_3a95          ; 0x1dc9
    add sp, byte 4                   ; 0x1dcc
    lea ax, word [bp - 0x0054]       ; 0x1dcf
    push ax                          ; 0x1dd2
    mov ax, 0x248                    ; 0x1dd3
    imul word [bp + 0x4]             ; 0x1dd6
    mov bx, ax                       ; 0x1dd9
    mov al, byte [bx + 0x5e2d]       ; 0x1ddb
    sub ah, ah                       ; 0x1ddf
    mov cx, 0xa                      ; 0x1de1
    imul cx                          ; 0x1de4
    push ax                          ; 0x1de6
    mov al, byte [bx + 0x5e2e]       ; 0x1de7
    sub ah, ah                       ; 0x1deb
    mov cx, ax                       ; 0x1ded
    pop ax                           ; 0x1def
    add ax, cx                       ; 0x1df0
    add ax, 0x320                    ; 0x1df2
    push ax                          ; 0x1df5
    call ds_app_mem_0782             ; 0x1df6
    add sp, byte 4                   ; 0x1df9
    mov ax, 6                        ; 0x1dfc
    push ax                          ; 0x1dff
    lea ax, word [bp - 0x0054]       ; 0x1e00
    push ax                          ; 0x1e03
    call aztec_strlen                ; 0x1e04
    pop cx                           ; 0x1e07
    mov cx, 0x34                     ; 0x1e08
    sub cx, ax                       ; 0x1e0b
    mov ax, 6                        ; 0x1e0d
    imul cx                          ; 0x1e10
    push ax                          ; 0x1e12
    call thunk                       ; 0x1e13
    add sp, byte 4                   ; 0x1e16
    mov ax, 0                        ; 0x1e19
    push ax                          ; 0x1e1c
    lea ax, word [bp - 0x0054]       ; 0x1e1d
    push ax                          ; 0x1e20
    call ds_string_loc_3a95          ; 0x1e21
    add sp, byte 4                   ; 0x1e24
    mov ax, 0                        ; 0x1e27
    push ax                          ; 0x1e2a
    mov ax, 0x47                     ; 0x1e2b
    push ax                          ; 0x1e2e
    call thunk_3                     ; 0x1e2f
    add sp, byte 4                   ; 0x1e32
    lea ax, word [bp - 0x0054]       ; 0x1e35
    push ax                          ; 0x1e38
    mov ax, 0xca                     ; 0x1e39
    push ax                          ; 0x1e3c
    call ds_app_mem_0782             ; 0x1e3d
    add sp, byte 4                   ; 0x1e40
    mov ax, 0xc                      ; 0x1e43
    push ax                          ; 0x1e46
    mov ax, 0xe4                     ; 0x1e47
    push ax                          ; 0x1e4a
    call thunk                       ; 0x1e4b
    add sp, byte 4                   ; 0x1e4e
    mov ax, 0                        ; 0x1e51
    push ax                          ; 0x1e54
    lea ax, word [bp - 0x0054]       ; 0x1e55
    push ax                          ; 0x1e58
    call ds_string_loc_3a95          ; 0x1e59
    add sp, byte 4                   ; 0x1e5c
    mov ax, 0                        ; 0x1e5f
    push ax                          ; 0x1e62
    mov ax, 0x20                     ; 0x1e63
    push ax                          ; 0x1e66
    call ds_loc_3a77                 ; 0x1e67
    add sp, byte 4                   ; 0x1e6a
    mov ax, 0                        ; 0x1e6d
    push ax                          ; 0x1e70
    mov ax, 0xa                      ; 0x1e71
    push ax                          ; 0x1e74
    mov ax, 0x248                    ; 0x1e75
    imul word [bp + 0x4]             ; 0x1e78
    mov bx, ax                       ; 0x1e7b
    push word [bx + 0x5c02]          ; 0x1e7d
    push word [bx + 0x5c00]          ; 0x1e81
    call ds_app_string_04da          ; 0x1e85
    add sp, byte 8                   ; 0x1e88
    lea ax, word [bp - 0x0054]       ; 0x1e8b
    push ax                          ; 0x1e8e
    mov ax, 0xcb                     ; 0x1e8f
    push ax                          ; 0x1e92
    call ds_app_mem_0782             ; 0x1e93
    add sp, byte 4                   ; 0x1e96
    mov ax, 0x12                     ; 0x1e99
    push ax                          ; 0x1e9c
    mov ax, 0xe4                     ; 0x1e9d
    push ax                          ; 0x1ea0
    call thunk                       ; 0x1ea1
    add sp, byte 4                   ; 0x1ea4
    mov ax, 0                        ; 0x1ea7
    push ax                          ; 0x1eaa
    lea ax, word [bp - 0x0054]       ; 0x1eab
    push ax                          ; 0x1eae
    call ds_string_loc_3a95          ; 0x1eaf
    add sp, byte 4                   ; 0x1eb2
    mov ax, 0                        ; 0x1eb5
    push ax                          ; 0x1eb8
    mov ax, 0x20                     ; 0x1eb9
    push ax                          ; 0x1ebc
    call ds_loc_3a77                 ; 0x1ebd
    add sp, byte 4                   ; 0x1ec0
    mov ax, 0                        ; 0x1ec3
    push ax                          ; 0x1ec6
    mov ax, 0xa                      ; 0x1ec7
    push ax                          ; 0x1eca
    mov ax, 0x248                    ; 0x1ecb
    imul word [bp + 0x4]             ; 0x1ece
    mov bx, ax                       ; 0x1ed1
    push word [bx + 0x5c06]          ; 0x1ed3
    push word [bx + 0x5c04]          ; 0x1ed7
    call ds_app_string_04da          ; 0x1edb
    add sp, byte 8                   ; 0x1ede
    mov ax, 0                        ; 0x1ee1
    push ax                          ; 0x1ee4
    mov ax, 0x1d                     ; 0x1ee5
    push ax                          ; 0x1ee8
    call thunk_3                     ; 0x1ee9
    add sp, byte 4                   ; 0x1eec
    lea ax, word [bp - 0x0054]       ; 0x1eef
    push ax                          ; 0x1ef2
    mov ax, 0xd4                     ; 0x1ef3
    push ax                          ; 0x1ef6
    call ds_app_mem_0782             ; 0x1ef7
    add sp, byte 4                   ; 0x1efa
    mov ax, 0x5d                     ; 0x1efd
    push ax                          ; 0x1f00
    mov ax, 6                        ; 0x1f01
    push ax                          ; 0x1f04
    call thunk                       ; 0x1f05
    add sp, byte 4                   ; 0x1f08
    mov ax, 0                        ; 0x1f0b
    push ax                          ; 0x1f0e
    lea ax, word [bp - 0x0054]       ; 0x1f0f
    push ax                          ; 0x1f12
    call ds_string_loc_3a95          ; 0x1f13
    add sp, byte 4                   ; 0x1f16
    mov ax, 0                        ; 0x1f19
    push ax                          ; 0x1f1c
    mov ax, 0x20                     ; 0x1f1d
    push ax                          ; 0x1f20
    call ds_loc_3a77                 ; 0x1f21
    add sp, byte 4                   ; 0x1f24
    mov ax, 0                        ; 0x1f27
    push ax                          ; 0x1f2a
    mov ax, 0x1b                     ; 0x1f2b
    push ax                          ; 0x1f2e
    call thunk_3                     ; 0x1f2f
    add sp, byte 4                   ; 0x1f32
    lea ax, word [bp - 0x0054]       ; 0x1f35
    push ax                          ; 0x1f38
    mov ax, 0x248                    ; 0x1f39
    imul word [bp + 0x4]             ; 0x1f3c
    mov bx, ax                       ; 0x1f3f
    push word [bx + 0x5c0c]          ; 0x1f41
    call ds_app_04c4                 ; 0x1f45
    add sp, byte 4                   ; 0x1f48
    mov ax, 0                        ; 0x1f4b
    push ax                          ; 0x1f4e
    lea ax, word [bp - 0x0054]       ; 0x1f4f
    push ax                          ; 0x1f52
    call ds_string_loc_3a95          ; 0x1f53
    add sp, byte 4                   ; 0x1f56
    mov ax, 0                        ; 0x1f59
    push ax                          ; 0x1f5c
    mov ax, 0x2f                     ; 0x1f5d
    push ax                          ; 0x1f60
    call ds_loc_3a77                 ; 0x1f61
    add sp, byte 4                   ; 0x1f64
    lea ax, word [bp - 0x0054]       ; 0x1f67
    push ax                          ; 0x1f6a
    mov ax, 0x248                    ; 0x1f6b
    imul word [bp + 0x4]             ; 0x1f6e
    mov bx, ax                       ; 0x1f71
    push word [bx + 0x5c0e]          ; 0x1f73
    call ds_app_04c4                 ; 0x1f77
    add sp, byte 4                   ; 0x1f7a
    mov ax, 0                        ; 0x1f7d
    push ax                          ; 0x1f80
    lea ax, word [bp - 0x0054]       ; 0x1f81
    push ax                          ; 0x1f84
    call ds_string_loc_3a95          ; 0x1f85
    add sp, byte 4                   ; 0x1f88
    mov ax, 0                        ; 0x1f8b
    push ax                          ; 0x1f8e
    mov ax, 0x1d                     ; 0x1f8f
    push ax                          ; 0x1f92
    call thunk_3                     ; 0x1f93
    add sp, byte 4                   ; 0x1f96
    lea ax, word [bp - 0x0054]       ; 0x1f99
    push ax                          ; 0x1f9c
    mov ax, 0xd5                     ; 0x1f9d
    push ax                          ; 0x1fa0
    call ds_app_mem_0782             ; 0x1fa1
    add sp, byte 4                   ; 0x1fa4
    mov ax, 0x63                     ; 0x1fa7
    push ax                          ; 0x1faa
    mov ax, 6                        ; 0x1fab
    push ax                          ; 0x1fae
    call thunk                       ; 0x1faf
    add sp, byte 4                   ; 0x1fb2
    mov ax, 0                        ; 0x1fb5
    push ax                          ; 0x1fb8
    lea ax, word [bp - 0x0054]       ; 0x1fb9
    push ax                          ; 0x1fbc
    call ds_string_loc_3a95          ; 0x1fbd
    add sp, byte 4                   ; 0x1fc0
    mov ax, 0                        ; 0x1fc3
    push ax                          ; 0x1fc6
    mov ax, 0x20                     ; 0x1fc7
    push ax                          ; 0x1fca
    call ds_loc_3a77                 ; 0x1fcb
    add sp, byte 4                   ; 0x1fce
    mov ax, 0                        ; 0x1fd1
    push ax                          ; 0x1fd4
    mov ax, 0x1b                     ; 0x1fd5
    push ax                          ; 0x1fd8
    call thunk_3                     ; 0x1fd9
    add sp, byte 4                   ; 0x1fdc
    mov ax, 0x248                    ; 0x1fdf
    imul word [bp + 0x4]             ; 0x1fe2
    mov bx, ax                       ; 0x1fe5
    mov ax, word [bx + 0x5c10]       ; 0x1fe7
    mov cx, 0x64                     ; 0x1feb
    imul cx                          ; 0x1fee
    mov cx, word [bx + 0x5c12]       ; 0x1ff0
    cwd                              ; 0x1ff4
    idiv cx                          ; 0x1ff5
    mov word [bp - 0x0004], ax       ; 0x1ff7
    cmp ax, strict word 1            ; 0x1ffa
    jge short @..api_idx_0054.l3     ; 0x1ffd
    cmp word [bx + 0x5c10], byte 0   ; 0x1fff
    jle short @..api_idx_0054.l3     ; 0x2004
    mov ax, 1                        ; 0x2006
    jmp short @..api_idx_0054.l4     ; 0x2009
@..api_idx_0054.l3:
    mov ax, word [bp - 0x0004]       ; 0x200b
@..api_idx_0054.l4:
    mov word [bp - 0x0004], ax       ; 0x200e
    lea ax, word [bp - 0x0054]       ; 0x2011
    push ax                          ; 0x2014
    push word [bp - 0x0004]          ; 0x2015
    call ds_app_04c4                 ; 0x2018
    add sp, byte 4                   ; 0x201b
    mov ax, 0                        ; 0x201e
    push ax                          ; 0x2021
    lea ax, word [bp - 0x0054]       ; 0x2022
    push ax                          ; 0x2025
    call ds_string_loc_3a95          ; 0x2026
    add sp, byte 4                   ; 0x2029
    mov ax, 0                        ; 0x202c
    push ax                          ; 0x202f
    mov ax, 0x90bb                   ; 0x2030
    push ax                          ; 0x2033
    call ds_string_loc_3a95          ; 0x2034
    add sp, byte 4                   ; 0x2037
    mov ax, 0                        ; 0x203a
    push ax                          ; 0x203d
    mov ax, 0x1d                     ; 0x203e
    push ax                          ; 0x2041
    call thunk_3                     ; 0x2042
    add sp, byte 4                   ; 0x2045
    mov ax, 0                        ; 0x2048
    push ax                          ; 0x204b
    mov ax, 0x28                     ; 0x204c
    push ax                          ; 0x204f
    call ds_loc_3a77                 ; 0x2050
    add sp, byte 4                   ; 0x2053
    lea ax, word [bp - 0x0054]       ; 0x2056
    push ax                          ; 0x2059
    mov ax, 0x248                    ; 0x205a
    imul word [bp + 0x4]             ; 0x205d
    mov bx, ax                       ; 0x2060
    push word [bx + 0x5c12]          ; 0x2062
    call ds_app_04c4                 ; 0x2066
    add sp, byte 4                   ; 0x2069
    mov ax, 0                        ; 0x206c
    push ax                          ; 0x206f
    lea ax, word [bp - 0x0054]       ; 0x2070
    push ax                          ; 0x2073
    call ds_string_loc_3a95          ; 0x2074
    add sp, byte 4                   ; 0x2077
    mov ax, 0                        ; 0x207a
    push ax                          ; 0x207d
    mov ax, 0x29                     ; 0x207e
    push ax                          ; 0x2081
    call ds_loc_3a77                 ; 0x2082
    add sp, byte 4                   ; 0x2085
    push word [bp + 0x4]             ; 0x2088
    call api_idx_0004                ; 0x208b
    pop cx                           ; 0x208e
    ret                              ; 0x208f
