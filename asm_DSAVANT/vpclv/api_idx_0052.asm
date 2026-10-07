api_idx_0052:
    mov ax, 0xffae                   ; 0x2c0c
    call ds_dispatch_f40b            ; 0x2c0f
    mov ax, 0x248                    ; 0x2c12
    imul word [bp + 0x4]             ; 0x2c15
    mov bx, ax                       ; 0x2c18
    mov al, byte [bx + 0x5e2d]       ; 0x2c1a
    sub ah, ah                       ; 0x2c1e
    jmp near @..api_idx_0052.l1      ; 0x2c20
    mov ax, 0x90b4                   ; 0x2c23
    push ax                          ; 0x2c26
    mov ax, 0x90a5                   ; 0x2c27
    push ax                          ; 0x2c2a
    push word [bp + 0x4]             ; 0x2c2b
    call api_idx_0006                ; 0x2c2e
    add sp, byte 6                   ; 0x2c31
    jmp near @..api_idx_0052.l2      ; 0x2c34
    mov ax, 0x90d2                   ; 0x2c37
    push ax                          ; 0x2c3a
    mov ax, 0x90c3                   ; 0x2c3b
    push ax                          ; 0x2c3e
    push word [bp + 0x4]             ; 0x2c3f
    call api_idx_0006                ; 0x2c42
    add sp, byte 6                   ; 0x2c45
    jmp near @..api_idx_0052.l2      ; 0x2c48
    mov ax, 0x90f0                   ; 0x2c4b
    push ax                          ; 0x2c4e
    mov ax, 0x90e1                   ; 0x2c4f
    push ax                          ; 0x2c52
    push word [bp + 0x4]             ; 0x2c53
    call api_idx_0006                ; 0x2c56
    add sp, byte 6                   ; 0x2c59
    jmp near @..api_idx_0052.l2      ; 0x2c5c
    mov ax, 0x910e                   ; 0x2c5f
    push ax                          ; 0x2c62
    mov ax, 0x90ff                   ; 0x2c63
    push ax                          ; 0x2c66
    push word [bp + 0x4]             ; 0x2c67
    call api_idx_0006                ; 0x2c6a
    add sp, byte 6                   ; 0x2c6d
    jmp near @..api_idx_0052.l2      ; 0x2c70
    mov ax, 0x912c                   ; 0x2c73
    push ax                          ; 0x2c76
    mov ax, 0x911d                   ; 0x2c77
    push ax                          ; 0x2c7a
    push word [bp + 0x4]             ; 0x2c7b
    call api_idx_0006                ; 0x2c7e
    add sp, byte 6                   ; 0x2c81
    jmp near @..api_idx_0052.l2      ; 0x2c84
    mov ax, 0x914a                   ; 0x2c87
    push ax                          ; 0x2c8a
    mov ax, 0x913b                   ; 0x2c8b
    push ax                          ; 0x2c8e
    push word [bp + 0x4]             ; 0x2c8f
    call api_idx_0006                ; 0x2c92
    add sp, byte 6                   ; 0x2c95
    jmp short @..api_idx_0052.l2     ; 0x2c98
    mov ax, 0x9168                   ; 0x2c9a
    push ax                          ; 0x2c9d
    mov ax, 0x9159                   ; 0x2c9e
    push ax                          ; 0x2ca1
    push word [bp + 0x4]             ; 0x2ca2
    call api_idx_0006                ; 0x2ca5
    add sp, byte 6                   ; 0x2ca8
    jmp short @..api_idx_0052.l2     ; 0x2cab
    mov ax, 0x9186                   ; 0x2cad
    push ax                          ; 0x2cb0
    mov ax, 0x9177                   ; 0x2cb1
    push ax                          ; 0x2cb4
    push word [bp + 0x4]             ; 0x2cb5
    call api_idx_0006                ; 0x2cb8
    add sp, byte 6                   ; 0x2cbb
    jmp short @..api_idx_0052.l2     ; 0x2cbe
    mov ax, 0x91a4                   ; 0x2cc0
    push ax                          ; 0x2cc3
    mov ax, 0x9195                   ; 0x2cc4
    push ax                          ; 0x2cc7
    push word [bp + 0x4]             ; 0x2cc8
    call api_idx_0006                ; 0x2ccb
    add sp, byte 6                   ; 0x2cce
    jmp short @..api_idx_0052.l2     ; 0x2cd1
    mov ax, 0x91c2                   ; 0x2cd3
    push ax                          ; 0x2cd6
    mov ax, 0x91b3                   ; 0x2cd7
    push ax                          ; 0x2cda
    push word [bp + 0x4]             ; 0x2cdb
    call api_idx_0006                ; 0x2cde
    add sp, byte 6                   ; 0x2ce1
    jmp short @..api_idx_0052.l2     ; 0x2ce4
    db 0x6a, 0x7c ; push 0x7c
    into                             ; 0x2ce8
    jl short loc_2cdf                ; 0x2ce9
    jl short loc_2d07                ; 0x2ceb
    jge short loc_2d6d               ; 0x2ced
    jl short loc_2cbf                ; 0x2cef
    jl short loc_2d0d                ; 0x2cf1
    jge short loc_2cd6               ; 0x2cf3
    jl short loc_2d75                ; 0x2cf5
    jl short loc_2ced                ; 0x2cf7
    jl short loc_2c8d                ; 0x2cf9
    jl short loc_2ca3                ; 0x2cfb
    jl short loc_2d06                ; 0x2cfd
    jge short loc_2cbb               ; 0x2cff
    db 0x7c
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
    mov ax, 0x14                     ; 0x2d20
    push ax                          ; 0x2d23
    mov ax, 0xb                      ; 0x2d24
    push ax                          ; 0x2d27
    mov ax, 0                        ; 0x2d28
    push ax                          ; 0x2d2b
    push word [bp + 0x4]             ; 0x2d2c
    call math_loc_2a32               ; 0x2d2f
    add sp, byte 8                   ; 0x2d32
    jmp near @..api_idx_0052.l4      ; 0x2d35
    mov ax, 0x248                    ; 0x2d38
    imul word [bp + 0x4]             ; 0x2d3b
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d67]       ; 0x2d40
    db 0x2a, 0xe4 ; sub ah, ah
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
    call math_loc_2a32               ; 0x2d5a
    add sp, byte 8                   ; 0x2d5d
    mov ax, 0x248                    ; 0x2d60
    imul word [bp + 0x4]             ; 0x2d63
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d67]       ; 0x2d68
    db 0x2a, 0xe4 ; sub ah, ah
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
    call math_loc_2a32               ; 0x2d82
    add sp, byte 8                   ; 0x2d85
    jmp near @..api_idx_0052.l4      ; 0x2d88
    mov ax, 0x14                     ; 0x2d8b
    push ax                          ; 0x2d8e
    mov ax, 9                        ; 0x2d8f
    push ax                          ; 0x2d92
    mov ax, 0                        ; 0x2d93
    push ax                          ; 0x2d96
    push word [bp + 0x4]             ; 0x2d97
    call math_loc_2a32               ; 0x2d9a
    add sp, byte 8                   ; 0x2d9d
    jmp near @..api_idx_0052.l4      ; 0x2da0
    mov ax, 0x19                     ; 0x2da3
    push ax                          ; 0x2da6
    mov ax, 0xc                      ; 0x2da7
    push ax                          ; 0x2daa
    mov ax, 0                        ; 0x2dab
    push ax                          ; 0x2dae
    push word [bp + 0x4]             ; 0x2daf
    call math_loc_2a32               ; 0x2db2
    add sp, byte 8                   ; 0x2db5
    mov ax, 0x19                     ; 0x2db8
    push ax                          ; 0x2dbb
    mov ax, 4                        ; 0x2dbc
    push ax                          ; 0x2dbf
    mov ax, 0                        ; 0x2dc0
    push ax                          ; 0x2dc3
    push word [bp + 0x4]             ; 0x2dc4
    call math_loc_2a32               ; 0x2dc7
    add sp, byte 8                   ; 0x2dca
    mov ax, 0x19                     ; 0x2dcd
    push ax                          ; 0x2dd0
    mov ax, 7                        ; 0x2dd1
    push ax                          ; 0x2dd4
    mov ax, 0                        ; 0x2dd5
    push ax                          ; 0x2dd8
    push word [bp + 0x4]             ; 0x2dd9
    call math_loc_2a32               ; 0x2ddc
    add sp, byte 8                   ; 0x2ddf
    mov ax, 0x19                     ; 0x2de2
    push ax                          ; 0x2de5
    mov ax, 0xa                      ; 0x2de6
    push ax                          ; 0x2de9
    mov ax, 0                        ; 0x2dea
    push ax                          ; 0x2ded
    push word [bp + 0x4]             ; 0x2dee
    call math_loc_2a32               ; 0x2df1
    add sp, byte 8                   ; 0x2df4
    mov ax, 0x19                     ; 0x2df7
    push ax                          ; 0x2dfa
    mov ax, 0xb                      ; 0x2dfb
    push ax                          ; 0x2dfe
    mov ax, 0                        ; 0x2dff
    push ax                          ; 0x2e02
    push word [bp + 0x4]             ; 0x2e03
    call math_loc_2a32               ; 0x2e06
    add sp, byte 8                   ; 0x2e09
