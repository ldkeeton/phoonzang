api_idx_0040:
    mov ax, 0xffc0                   ; 0x2b8e
    db 0xe8, 0x77, 0xc8 ; call 0xf40b
    mov ax, word [bp + 0x6]          ; 0x2b94
    shl ax, 1                        ; 0x2b97
    mov bx, ax                       ; 0x2b99
    mov ax, word [bx - 0x6e88]       ; 0x2b9b
    mov word [bp - 0x0004], ax       ; 0x2b9f
    mov ax, 0                        ; 0x2ba2
    push ax                          ; 0x2ba5
    push word [bp - 0x0004]          ; 0x2ba6
    lea ax, word [bp - 0x0024]       ; 0x2ba9
    push ax                          ; 0x2bac
    mov ax, 6                        ; 0x2bad
    push ax                          ; 0x2bb0
    db 0xe8, 0x88, 0x8a ; call 0xb63c
    add sp, byte 8                   ; 0x2bb4
    mov word [bp - 0x0002], 0        ; 0x2bb7
@..api_idx_0040.l1:
    cmp word [bp - 0x0002], byte 8   ; 0x2bbc
    jl short @..api_idx_0040.l2      ; 0x2bc0
    jmp near @..api_idx_0040.l5      ; 0x2bc2
@..api_idx_0040.l2:
    mov word [bp - 0x0040], 0        ; 0x2bc5
    mov ax, word [bp - 0x0002]       ; 0x2bca
    shl ax, 1                        ; 0x2bcd
    shl ax, 1                        ; 0x2bcf
    mov bx, ax                       ; 0x2bd1
    add bx, bp                       ; 0x2bd3
    mov ax, word [bx - 0x0024]       ; 0x2bd5
    mov word [bp - 0x0026], ax       ; 0x2bd8
    mov al, byte [bx - 0x0022]       ; 0x2bdb
    sub ah, ah                       ; 0x2bde
    mov word [bp - 0x0028], ax       ; 0x2be0
    mov al, byte [bx - 0x0021]       ; 0x2be3
    sub ah, ah                       ; 0x2be6
    jmp near @..api_idx_0040.l3      ; 0x2be8
    mov ax, 0                        ; 0x2beb
    ret                              ; 0x2bee
    cmp word [data_93ee], byte 0     ; 0x2bef
    je short loc_2bf9                ; 0x2bf4
    call loc_23d0                    ; 0x2bf6
    push word [bp - 0x0028]          ; 0x2bf9
    push word [bp - 0x0026]          ; 0x2bfc
    call api_idx_0100                ; 0x2bff
    add sp, byte 4                   ; 0x2c02
    cmp word [data_93ee], byte 0     ; 0x2c05
    je short loc_2c0f                ; 0x2c0a
    call loc_243b                    ; 0x2c0c
    jmp near @..api_idx_0040.l4      ; 0x2c0f
    cmp word [bp - 0x0026], byte 0   ; 0x2c12
    jle short loc_2c1e               ; 0x2c16
    mov al, byte [bp - 0x0026]       ; 0x2c18
    mov byte [data_91c2], al         ; 0x2c1b
    mov ax, 1                        ; 0x2c1e
    push ax                          ; 0x2c21
    call loc_2963                    ; 0x2c22
    pop cx                           ; 0x2c25
    mov ax, 1                        ; 0x2c26
    ret                              ; 0x2c29
    cmp word [bp - 0x0028], byte 0   ; 0x2c2a
    jne short loc_2c46               ; 0x2c2e
    mov ax, 0x55                     ; 0x2c30
    push ax                          ; 0x2c33
    mov ax, 0                        ; 0x2c34
    push ax                          ; 0x2c37
    mov ax, 1                        ; 0x2c38
    push ax                          ; 0x2c3b
    mov ax, 0x606                    ; 0x2c3c
    push ax                          ; 0x2c3f
    call api_idx_0050                ; 0x2c40
    add sp, byte 8                   ; 0x2c43
    mov word [data_95a6], 1          ; 0x2c46
    mov word [data_830a], 5          ; 0x2c4c
    mov word [data_905e], 0x12       ; 0x2c52
    mov ax, 1                        ; 0x2c58
    ret                              ; 0x2c5b
    mov word [bp - 0x0040], 1        ; 0x2c5c
    mov ax, word [bp - 0x0026]       ; 0x2c61
    mov cx, 0x100                    ; 0x2c64
    cwd                              ; 0x2c67
    idiv cx                          ; 0x2c68
    add ax, strict word 0xf          ; 0x2c6a
    mov word [bp - 0x002c], ax       ; 0x2c6d
    mov word [bp - 0x0030], dx       ; 0x2c70
    db 0x8b, 0xc2 ; mov ax, dx
    mov cx, 0x10                     ; 0x2c75
    cwd                              ; 0x2c78
    idiv cx                          ; 0x2c79
    mov word [bp - 0x002e], ax       ; 0x2c7b
    mov word [bp - 0x0030], dx       ; 0x2c7e
    cmp word [bp - 0x0028], byte 0   ; 0x2c81
    jg short loc_2c8a                ; 0x2c85
    jmp near loc_2d0b                ; 0x2c87
    mov bx, word [bp - 0x002c]       ; 0x2c8a
    mov al, byte [bx + 0x5b48]       ; 0x2c8d
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, 0xff                     ; 0x2c93
    je short loc_2ca7                ; 0x2c96
    mov ax, 1                        ; 0x2c98
    push ax                          ; 0x2c9b
    call 0xef14                      ; 0x2c9c
    pop cx                           ; 0x2c9f
    push word [bp - 0x002c]          ; 0x2ca0
    call 0xc12a                      ; 0x2ca3
    pop cx                           ; 0x2ca6
    push word [bp - 0x002c]          ; 0x2ca7
    push word [bp - 0x0028]          ; 0x2caa
    call 0xd61c                      ; 0x2cad
    add sp, byte 4                   ; 0x2cb0
    mov ax, word [bp - 0x002c]       ; 0x2cb3
    push ax                          ; 0x2cb6
    mov ax, 6                        ; 0x2cb7
    imul word [bp - 0x002e]          ; 0x2cba
    db 0x8b, 0xc8 ; mov cx, ax
    mov dx, word [bp - 0x0030]       ; 0x2cbf
    shl dx, 1                        ; 0x2cc2
    db 0x03, 0xc2 ; add ax, dx
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x2cc8
    mov word [bx - 0x7bc6], ax       ; 0x2cc9
    mov ax, 0xffff                   ; 0x2ccd
    push ax                          ; 0x2cd0
    push word [bp - 0x0030]          ; 0x2cd1
    push word [bp - 0x002e]          ; 0x2cd4
    push word [bp - 0x002c]          ; 0x2cd7
    call api_idx_0008                ; 0x2cda
    add sp, byte 8                   ; 0x2cdd
    cmp word [bp - 0x0040], byte 0   ; 0x2ce0
    je short loc_2d06                ; 0x2ce4
    mov ax, 6                        ; 0x2ce6
    imul word [bp - 0x002e]          ; 0x2ce9
    mov cx, word [bp - 0x0030]       ; 0x2cec
    shl cx, 1                        ; 0x2cef
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov word [bx - 0x6c24], 1        ; 0x2cf5
    mov ax, 0                        ; 0x2cfb
    push ax                          ; 0x2cfe
    push ax                          ; 0x2cff
    call api_idx_005e                ; 0x2d00
    add sp, byte 4                   ; 0x2d03
    call loc_109f                    ; 0x2d06
    jmp short loc_2d4c               ; 0x2d09
    cmp word [bp - 0x0040], byte 0   ; 0x2d0b
    je short loc_2d34                ; 0x2d0f
    mov ax, 6                        ; 0x2d11
    imul word [bp - 0x002e]          ; 0x2d14
    mov cx, word [bp - 0x0030]       ; 0x2d17
    shl cx, 1                        ; 0x2d1a
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov word [bx - 0x6c24], 1        ; 0x2d20
    mov ax, 0                        ; 0x2d26
    push ax                          ; 0x2d29
    mov ax, 1                        ; 0x2d2a
    push ax                          ; 0x2d2d
    call api_idx_005e                ; 0x2d2e
    add sp, byte 4                   ; 0x2d31
    mov ax, 6                        ; 0x2d34
    imul word [bp - 0x002e]          ; 0x2d37
    mov cx, word [bp - 0x0030]       ; 0x2d3a
    shl cx, 1                        ; 0x2d3d
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov word [bx - 0x7bc6], 0        ; 0x2d43
    call loc_109f                    ; 0x2d49
    jmp near @..api_idx_0040.l4      ; 0x2d4c
    mov ax, 1                        ; 0x2d4f
    push ax                          ; 0x2d52
    push word [bp - 0x0028]          ; 0x2d53
    call api_idx_0004_5              ; 0x2d56
    add sp, byte 4                   ; 0x2d59
    jmp near @..api_idx_0040.l4      ; 0x2d5c
    cmp word [data_93ee], byte 0     ; 0x2d5f
    je short loc_2d69                ; 0x2d64
    call loc_23d0                    ; 0x2d66
    push word [bp - 0x0028]          ; 0x2d69
    push word [bp - 0x0026]          ; 0x2d6c
    push word [bp + 0x4]             ; 0x2d6f
    call api_idx_00ba                ; 0x2d72
    add sp, byte 6                   ; 0x2d75
    mov word [bp - 0x0032], ax       ; 0x2d78
    cmp word [data_93ee], byte 0     ; 0x2d7b
    je short loc_2d85                ; 0x2d80
    call loc_243b                    ; 0x2d82
    cmp word [bp - 0x0032], byte 1   ; 0x2d85
    jle short loc_2da2               ; 0x2d89
    push word [bp - 0x0032]          ; 0x2d8b
    push word [bp + 0x4]             ; 0x2d8e
    call api_idx_0040                ; 0x2d91
    add sp, byte 4                   ; 0x2d94
    cmp ax, strict word 1            ; 0x2d97
    jne short loc_2da0               ; 0x2d9a
    mov ax, 1                        ; 0x2d9c
    ret                              ; 0x2d9f
    jmp short loc_2dcc               ; 0x2da0
    mov ax, data_95a8                ; 0x2da2
    push ax                          ; 0x2da5
    mov ax, word [bp - 0x0026]       ; 0x2da6
    inc ax                           ; 0x2da9
    push ax                          ; 0x2daa
    call 0xb53b                      ; 0x2dab
    add sp, byte 4                   ; 0x2dae
    mov ax, data_95a8                ; 0x2db1
    push ax                          ; 0x2db4
    call 0xfa90                      ; 0x2db5
    pop cx                           ; 0x2db8
    cmp ax, strict word 0            ; 0x2db9
    jle short loc_2dcc               ; 0x2dbc
    mov ax, 1                        ; 0x2dbe
    push ax                          ; 0x2dc1
    mov ax, data_95a8                ; 0x2dc2
    push ax                          ; 0x2dc5
    call loc_2472                    ; 0x2dc6
    add sp, byte 4                   ; 0x2dc9
    jmp near @..api_idx_0040.l4      ; 0x2dcc
    call 0xbaef                      ; 0x2dcf
    test ax, ax                      ; 0x2dd2
    jne short loc_2ddb               ; 0x2dd4
    call api_idx_0006_2              ; 0x2dd6
    jmp short loc_2dcf               ; 0x2dd9
    jmp near @..api_idx_0040.l4      ; 0x2ddb
    mov ax, word [data_830c]         ; 0x2dde
    cmp ax, word [data_8f3c]         ; 0x2de1
    jne short loc_2e2c               ; 0x2de5
    mov ax, word [data_8f36]         ; 0x2de7
    mov word [data_8f42], ax         ; 0x2dea
    mov ax, word [data_8f34]         ; 0x2ded
    mov word [data_8f40], ax         ; 0x2df0
    mov ax, word [data_8f32]         ; 0x2df3
    mov word [data_8f3e], ax         ; 0x2df6
    mov ax, word [data_8f3a]         ; 0x2df9
    mov word [data_8f46], ax         ; 0x2dfc
    mov ax, word [data_8f38]         ; 0x2dff
    mov word [data_8f44], ax         ; 0x2e02
    mov ax, word [data_8f30]         ; 0x2e05
    mov word [data_82ee], ax         ; 0x2e08
    mov bx, word [data_0e12]         ; 0x2e0b
    mov si, word [data_8f3e]         ; 0x2e0f
    mov al, byte [bx + si + 0xb40]   ; 0x2e13
    db 0x2a, 0xe4 ; sub ah, ah
    mov word [data_8d12], ax         ; 0x2e19
    mov word [data_830a], 5          ; 0x2e1c
    mov word [data_905e], 0x12       ; 0x2e22
    mov ax, 1                        ; 0x2e28
    ret                              ; 0x2e2b
    jmp near @..api_idx_0040.l4      ; 0x2e2c
    push word [bp - 0x0028]          ; 0x2e2f
    push word [bp - 0x0026]          ; 0x2e32
    push word [bp + 0x4]             ; 0x2e35
    call api_idx_0008_2              ; 0x2e38
    add sp, byte 6                   ; 0x2e3b
    jmp near @..api_idx_0040.l4      ; 0x2e3e
    mov word [bp - 0x003a], 0xffff   ; 0x2e41
    mov ax, word [bp + 0x4]          ; 0x2e46
    mov word [bp - 0x0030], ax       ; 0x2e49
    mov word [bp + 0x4], 0           ; 0x2e4c
    jmp short loc_2ea6               ; 0x2e51
    push word [bp - 0x0026]          ; 0x2e53
    push word [bp + 0x4]             ; 0x2e56
    call api_idx_0004_8              ; 0x2e59
    add sp, byte 4                   ; 0x2e5c
    mov word [bp - 0x003a], ax       ; 0x2e5f
    cmp ax, strict word 0xffff       ; 0x2e62
    je short loc_2ea3                ; 0x2e65
    mov cx, 0x100                    ; 0x2e67
    cwd                              ; 0x2e6a
    idiv cx                          ; 0x2e6b
    mov word [bp - 0x002a], ax       ; 0x2e6d
    mov word [bp - 0x002c], dx       ; 0x2e70
    push word [bp - 0x0026]          ; 0x2e73
    call loc_5497                    ; 0x2e76
    pop cx                           ; 0x2e79
    test ax, ax                      ; 0x2e7a
    je short loc_2e94                ; 0x2e7c
    mov ax, word [bp - 0x0026]       ; 0x2e7e
    add ax, 0xfe70                   ; 0x2e81
    push ax                          ; 0x2e84
    mov ax, 0x15                     ; 0x2e85
    push ax                          ; 0x2e88
    mov al, byte [data_91c6]         ; 0x2e89
    cbw                              ; 0x2e8c
    push ax                          ; 0x2e8d
    call api_idx_0002_5              ; 0x2e8e
    add sp, byte 6                   ; 0x2e91
    push word [bp - 0x002c]          ; 0x2e94
    push word [bp - 0x002a]          ; 0x2e97
    push word [bp + 0x4]             ; 0x2e9a
    call 0xc9e8                      ; 0x2e9d
    add sp, byte 6                   ; 0x2ea0
    inc word [bp + 0x4]              ; 0x2ea3
    mov ax, word [bp + 0x4]          ; 0x2ea6
    cmp ax, word [data_69c8]         ; 0x2ea9
    jge short loc_2eb5               ; 0x2ead
    cmp word [bp - 0x003a], byte 0xff ; 0x2eaf
    je short loc_2e53                ; 0x2eb3
    mov ax, word [bp - 0x0030]       ; 0x2eb5
    mov word [bp + 0x4], ax          ; 0x2eb8
    jmp near @..api_idx_0040.l4      ; 0x2ebb
    mov ax, word [bp - 0x0026]       ; 0x2ebe
    mov cx, word [bp - 0x0028]       ; 0x2ec1
    db 0x8b, 0xd9 ; mov bx, cx
    imul bx                          ; 0x2ec6
    mov word [bp - 0x0034], dx       ; 0x2ec8
    mov word [bp - 0x0036], ax       ; 0x2ecb
    mov ax, word [bp - 0x0036]       ; 0x2ece
    mov dx, word [bp - 0x0034]       ; 0x2ed1
    push ax                          ; 0x2ed4
    push dx                          ; 0x2ed5
    mov ax, 0x248                    ; 0x2ed6
    imul word [bp + 0x4]             ; 0x2ed9
    db 0x8b, 0xd8 ; mov bx, ax
    pop dx                           ; 0x2ede
    pop ax                           ; 0x2edf
    add word [bx + 0x5c08], ax       ; 0x2ee0
    adc word [bx + 0x5c0a], dx       ; 0x2ee4
    mov ax, word [bp - 0x0036]       ; 0x2ee8
    mov dx, word [bp - 0x0034]       ; 0x2eeb
    sub word [data_91b6], ax         ; 0x2eee
    sbb word [data_91b8], dx         ; 0x2ef2
    cmp word [data_91b8], byte 0     ; 0x2ef6
    jg short loc_2f06                ; 0x2efb
    jne short loc_2f08               ; 0x2efd
    cmp word [data_91b6], byte 0     ; 0x2eff
    jb short loc_2f08                ; 0x2f04
    jmp short loc_2f14               ; 0x2f06
    mov word [data_91b8], 0          ; 0x2f08
    mov word [data_91b6], 0          ; 0x2f0e
    jmp near @..api_idx_0040.l4      ; 0x2f14
    mov ax, word [bp - 0x0026]       ; 0x2f17
    mov bx, 0xa                      ; 0x2f1a
    imul bx                          ; 0x2f1d
    mov word [bp - 0x0034], dx       ; 0x2f1f
    mov word [bp - 0x0036], ax       ; 0x2f22
    cmp word [bp - 0x0034], byte 0   ; 0x2f25
    jne short loc_2f2f               ; 0x2f29
    cmp word [bp - 0x0036], byte 0   ; 0x2f2b
    jne short loc_2f9f               ; 0x2f2f
    mov word [bp - 0x002c], 0        ; 0x2f31
    jmp short loc_2f96               ; 0x2f36
    cmp word [bp - 0x0028], byte 0   ; 0x2f38
    jle short loc_2f7f               ; 0x2f3c
    mov ax, 0x248                    ; 0x2f3e
    imul word [bp - 0x002c]          ; 0x2f41
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx + 0x5c08]       ; 0x2f46
    mov dx, word [bx + 0x5c0a]       ; 0x2f4a
    push ax                          ; 0x2f4e
    push dx                          ; 0x2f4f
    mov ax, word [bp - 0x0028]       ; 0x2f50
    cwd                              ; 0x2f53
    db 0x8b, 0xc8 ; mov cx, ax
    db 0x8b, 0xda ; mov bx, dx
    pop dx                           ; 0x2f58
    pop ax                           ; 0x2f59
    call 0xf99f                      ; 0x2f5a
    mov word [bp - 0x0034], dx       ; 0x2f5d
    mov word [bp - 0x0036], ax       ; 0x2f60
    mov ax, word [bp - 0x0036]       ; 0x2f63
    mov dx, word [bp - 0x0034]       ; 0x2f66
    push ax                          ; 0x2f69
    push dx                          ; 0x2f6a
    mov ax, 0x248                    ; 0x2f6b
    imul word [bp - 0x002c]          ; 0x2f6e
    db 0x8b, 0xd8 ; mov bx, ax
    pop dx                           ; 0x2f73
    pop ax                           ; 0x2f74
    sub word [bx + 0x5c08], ax       ; 0x2f75
    sbb word [bx + 0x5c0a], dx       ; 0x2f79
    jmp short loc_2f93               ; 0x2f7d
    mov ax, 0x248                    ; 0x2f7f
    imul word [bp - 0x002c]          ; 0x2f82
    db 0x8b, 0xd8 ; mov bx, ax
    mov word [bx + 0x5c0a], 0        ; 0x2f87
    mov word [bx + 0x5c08], 0        ; 0x2f8d
    inc word [bp - 0x002c]           ; 0x2f93
    mov ax, word [bp - 0x002c]       ; 0x2f96
    cmp ax, word [data_69c8]         ; 0x2f99
    jl short loc_2f38                ; 0x2f9d
    mov ax, 0x248                    ; 0x2f9f
    imul word [bp + 0x4]             ; 0x2fa2
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx + 0x5c08]       ; 0x2fa7
    mov dx, word [bx + 0x5c0a]       ; 0x2fab
    cmp dx, word [bp - 0x0034]       ; 0x2faf
    jg short loc_2fbb                ; 0x2fb2
    jne short loc_2fbd               ; 0x2fb4
    cmp ax, word [bp - 0x0036]       ; 0x2fb6
    jb short loc_2fbd                ; 0x2fb9
    jmp short loc_3001               ; 0x2fbb
    push word [bp + 0x4]             ; 0x2fbd
    call api_idx_0006_7              ; 0x2fc0
    pop cx                           ; 0x2fc3
    mov ax, 0x248                    ; 0x2fc4
    imul word [bp + 0x4]             ; 0x2fc7
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx + 0x5c08]       ; 0x2fcc
    mov dx, word [bx + 0x5c0a]       ; 0x2fd0
    cmp dx, word [bp - 0x0034]       ; 0x2fd4
    jg short loc_2fe0                ; 0x2fd7
    jne short loc_2fe2               ; 0x2fd9
    cmp ax, word [bp - 0x0036]       ; 0x2fdb
    jb short loc_2fe2                ; 0x2fde
    db 0xeb, 0x1f ; jmp short loc_3001
    cmp word [bp - 0x0028], byte 0   ; 0x2fe2
    jle short loc_3001               ; 0x2fe6
    push word [bp - 0x0028]          ; 0x2fe8
    push word [bp + 0x4]             ; 0x2feb
    call api_idx_0040                ; 0x2fee
    add sp, byte 4                   ; 0x2ff1
    cmp ax, strict word 1            ; 0x2ff4
    jne short loc_2ffd               ; 0x2ff7
    mov ax, 1                        ; 0x2ff9
    ret                              ; 0x2ffc
    mov ax, 0                        ; 0x2ffd
    ret                              ; 0x3000
    mov ax, word [bp - 0x0036]       ; 0x3001
    mov dx, word [bp - 0x0034]       ; 0x3004
    push ax                          ; 0x3007
    push dx                          ; 0x3008
    mov ax, 0x248                    ; 0x3009
    imul word [bp + 0x4]             ; 0x300c
    db 0x8b, 0xd8 ; mov bx, ax
    pop dx                           ; 0x3011
    pop ax                           ; 0x3012
    sub word [bx + 0x5c08], ax       ; 0x3013
    sbb word [bx + 0x5c0a], dx       ; 0x3017
    mov ax, word [bp - 0x0036]       ; 0x301b
    mov dx, word [bp - 0x0034]       ; 0x301e
    add word [data_91b6], ax         ; 0x3021
    adc word [data_91b8], dx         ; 0x3025
    jmp near @..api_idx_0040.l4      ; 0x3029
    mov word [bp - 0x002c], 0        ; 0x302c
    mov ax, 3                        ; 0x3031
    push ax                          ; 0x3034
    call 0xb7a9                      ; 0x3035
    pop cx                           ; 0x3038
    test ax, ax                      ; 0x3039
    jne short loc_3084               ; 0x303b
    mov ax, 0x248                    ; 0x303d
    imul word [bp + 0x4]             ; 0x3040
    push ax                          ; 0x3043
    mov ax, 0xc                      ; 0x3044
    imul word [bp - 0x002c]          ; 0x3047
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x304c
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx + 0x5cac], byte 0   ; 0x3051
    jle short loc_3084               ; 0x3056
    mov al, byte [bx + 0x5cb3]       ; 0x3058
    db 0x2a, 0xe4 ; sub ah, ah
    test ax, 0x40                    ; 0x305e
    db 0x75, 0x21 ; jne short loc_3084
    push word [bp - 0x002c]          ; 0x3063
    mov ax, 1                        ; 0x3066
    push ax                          ; 0x3069
    push word [bp + 0x4]             ; 0x306a
    db 0xe8, 0x78, 0x99 ; call 0xc9e8
    add sp, byte 6                   ; 0x3070
    mov ax, 3                        ; 0x3073
    push ax                          ; 0x3076
    db 0xe8, 0x2f, 0x87 ; call 0xb7a9
    pop cx                           ; 0x307a
    test ax, ax                      ; 0x307b
    db 0x75, 0x05 ; jne short loc_3084
    mov word [bp - 0x002c], 0xa      ; 0x307f
    inc word [bp - 0x002c]           ; 0x3084
    mov ax, word [bp - 0x002c]       ; 0x3087
    cmp ax, strict word 0xa          ; 0x308a
    jl short loc_3031                ; 0x308d
    jmp near @..api_idx_0040.l4      ; 0x308f
    mov ax, word [bp - 0x0026]       ; 0x3092
    cmp ax, strict word 0            ; 0x3095
    jle short loc_30b5               ; 0x3098
    cmp ax, strict word 0x7f         ; 0x309a
    jge short loc_30b5               ; 0x309d
    push word [bp - 0x0028]          ; 0x309f
    push ax                          ; 0x30a2
    mov ax, word [data_830c]         ; 0x30a3
    mov cx, 4                        ; 0x30a6
    shl ax, cl                       ; 0x30a9
    add ax, 0x8d14                   ; 0x30ab
    push ax                          ; 0x30ae
    call 0xec41                      ; 0x30af
    add sp, byte 6                   ; 0x30b2
    jmp near @..api_idx_0040.l4      ; 0x30b5
    mov ax, word [bp - 0x0026]       ; 0x30b8
    cmp ax, strict word 0            ; 0x30bb
    jle short loc_30f3               ; 0x30be
    cmp ax, strict word 0x7f         ; 0x30c0
    jge short loc_30f3               ; 0x30c3
    push word [bp - 0x0028]          ; 0x30c5
    push ax                          ; 0x30c8
    mov ax, word [data_830c]         ; 0x30c9
    mov cx, 4                        ; 0x30cc
    shl ax, cl                       ; 0x30cf
    add ax, 0x8d14                   ; 0x30d1
    push ax                          ; 0x30d4
    db 0xe8, 0x69, 0xbb ; call 0xec41
    add sp, byte 6                   ; 0x30d8
    push word [bp - 0x0028]          ; 0x30db
    push word [bp - 0x0026]          ; 0x30de
    mov ax, word [data_830c]         ; 0x30e1
    mov cx, 4                        ; 0x30e4
    shl ax, cl                       ; 0x30e7
    add ax, 0x5642                   ; 0x30e9
    push ax                          ; 0x30ec
    db 0xe8, 0x51, 0xbb ; call 0xec41
    add sp, byte 6                   ; 0x30f0
    jmp near @..api_idx_0040.l4      ; 0x30f3
    mov ax, word [bp - 0x0026]       ; 0x30f6
    cmp ax, strict word 0            ; 0x30f9
    jle short loc_3111               ; 0x30fc
    cmp ax, strict word 0xf          ; 0x30fe
    jge short loc_3111               ; 0x3101
    push word [bp - 0x0028]          ; 0x3103
    push ax                          ; 0x3106
    mov ax, 0x95f8                   ; 0x3107
    push ax                          ; 0x310a
    db 0xe8, 0x33, 0xbb ; call 0xec41
    add sp, byte 6                   ; 0x310e
    jmp near @..api_idx_0040.l4      ; 0x3111
    mov ax, word [bp - 0x0026]       ; 0x3114
    cmp ax, strict word 0            ; 0x3117
    jle short loc_3144               ; 0x311a
    cmp ax, strict word 0xf          ; 0x311c
    jge short loc_3144               ; 0x311f
    push word [bp - 0x0028]          ; 0x3121
    push ax                          ; 0x3124
    mov ax, 0x95f8                   ; 0x3125
    push ax                          ; 0x3128
    db 0xe8, 0x15, 0xbb ; call 0xec41
    add sp, byte 6                   ; 0x312c
    push word [bp - 0x0028]          ; 0x312f
    push word [bp - 0x0026]          ; 0x3132
    mov ax, word [data_9136]         ; 0x3135
    shl ax, 1                        ; 0x3138
    add ax, 0x584e                   ; 0x313a
    push ax                          ; 0x313d
    db 0xe8, 0x00, 0xbb ; call 0xec41
    add sp, byte 6                   ; 0x3141
    jmp near @..api_idx_0040.l4      ; 0x3144
    push word [bp - 0x0026]          ; 0x3147
    mov ax, word [data_830c]         ; 0x314a
    mov cx, 4                        ; 0x314d
    shl ax, cl                       ; 0x3150
    add ax, 0x8d14                   ; 0x3152
    push ax                          ; 0x3155
    call 0xec74                      ; 0x3156
    add sp, byte 4                   ; 0x3159
    cmp ax, strict word 1            ; 0x315c
    jne short loc_3165               ; 0x315f
    mov ax, 0                        ; 0x3161
    ret                              ; 0x3164
    jmp near @..api_idx_0040.l4      ; 0x3165
    push word [bp - 0x0026]          ; 0x3168
    mov ax, word [data_830c]         ; 0x316b
    mov cx, 4                        ; 0x316e
    shl ax, cl                       ; 0x3171
    add ax, 0x8d14                   ; 0x3173
    push ax                          ; 0x3176
    db 0xe8, 0xfa, 0xba ; call 0xec74
    add sp, byte 4                   ; 0x317a
    test ax, ax                      ; 0x317d
    jne short loc_3185               ; 0x317f
    mov ax, 0                        ; 0x3181
    ret                              ; 0x3184
    jmp near @..api_idx_0040.l4      ; 0x3185
    push word [bp - 0x0026]          ; 0x3188
    mov ax, 0x95f8                   ; 0x318b
    push ax                          ; 0x318e
    db 0xe8, 0xe2, 0xba ; call 0xec74
    add sp, byte 4                   ; 0x3192
    cmp ax, strict word 1            ; 0x3195
    jne short loc_319e               ; 0x3198
    mov ax, 0                        ; 0x319a
    ret                              ; 0x319d
    jmp near @..api_idx_0040.l4      ; 0x319e
    push word [bp - 0x0026]          ; 0x31a1
    mov ax, 0x95f8                   ; 0x31a4
    push ax                          ; 0x31a7
    db 0xe8, 0xc9, 0xba ; call 0xec74
    add sp, byte 4                   ; 0x31ab
    test ax, ax                      ; 0x31ae
    jne short loc_31b6               ; 0x31b0
    mov ax, 0                        ; 0x31b2
    ret                              ; 0x31b5
    jmp near @..api_idx_0040.l4      ; 0x31b6
    cmp word [bp - 0x0028], byte 0   ; 0x31b9
    jne short loc_31d0               ; 0x31bd
    push word [bp - 0x0026]          ; 0x31bf
    push word [bp + 0x4]             ; 0x31c2
    call api_idx_0004_8              ; 0x31c5
    add sp, byte 4                   ; 0x31c8
    mov word [bp - 0x003a], ax       ; 0x31cb
    jmp short loc_31fd               ; 0x31ce
    mov word [bp - 0x003a], 0xffff   ; 0x31d0
    mov word [bp - 0x002c], 0        ; 0x31d5
    jmp short loc_31ee               ; 0x31da
    push word [bp - 0x0026]          ; 0x31dc
    push word [bp - 0x002c]          ; 0x31df
    call api_idx_0004_8              ; 0x31e2
    add sp, byte 4                   ; 0x31e5
    mov word [bp - 0x003a], ax       ; 0x31e8
    inc word [bp - 0x002c]           ; 0x31eb
    mov ax, word [bp - 0x002c]       ; 0x31ee
    cmp ax, word [data_69c8]         ; 0x31f1
    jge short loc_31fd               ; 0x31f5
    cmp word [bp - 0x003a], byte 0xff ; 0x31f7
    je short loc_31dc                ; 0x31fb
    mov ax, word [bp - 0x0002]       ; 0x31fd
    shl ax, 1                        ; 0x3200
    shl ax, 1                        ; 0x3202
    db 0x8b, 0xd8 ; mov bx, ax
    db 0x03, 0xdd ; add bx, bp
    cmp byte [bx - 0x0021], 0x16     ; 0x3208
    jne short loc_3214               ; 0x320c
    cmp word [bp - 0x003a], byte 0xff ; 0x320e
    je short loc_3220                ; 0x3212
    cmp byte [bx - 0x0021], 0x17     ; 0x3214
    jne short loc_3224               ; 0x3218
    cmp word [bp - 0x003a], byte 0xff ; 0x321a
    je short loc_3224                ; 0x321e
    mov ax, 0                        ; 0x3220
    ret                              ; 0x3223
    jmp near @..api_idx_0040.l4      ; 0x3224
    mov ax, 0x64                     ; 0x3227
    push ax                          ; 0x322a
    db 0xe8, 0x7b, 0x85 ; call 0xb7a9
    pop cx                           ; 0x322e
    cmp ax, word [bp - 0x0026]       ; 0x322f
    jle short loc_3238               ; 0x3232
    mov ax, 0                        ; 0x3234
    ret                              ; 0x3237
    jmp near @..api_idx_0040.l4      ; 0x3238
    push word [bp - 0x0026]          ; 0x323b
    mov ax, word [data_830c]         ; 0x323e
    mov cx, 4                        ; 0x3241
    shl ax, cl                       ; 0x3244
    add ax, 0x8d14                   ; 0x3246
    push ax                          ; 0x3249
    db 0xe8, 0x27, 0xba ; call 0xec74
    add sp, byte 4                   ; 0x324d
    test ax, ax                      ; 0x3250
    jne short loc_3269               ; 0x3252
    push word [bp - 0x0028]          ; 0x3254
    push word [bp + 0x4]             ; 0x3257
    call api_idx_0040                ; 0x325a
    add sp, byte 4                   ; 0x325d
    cmp ax, strict word 1            ; 0x3260
    db 0x75, 0x04 ; jne short loc_3269
    mov ax, 1                        ; 0x3265
    ret                              ; 0x3268
    jmp near @..api_idx_0040.l4      ; 0x3269
    push word [bp - 0x0026]          ; 0x326c
    mov ax, word [data_830c]         ; 0x326f
    mov cx, 4                        ; 0x3272
    shl ax, cl                       ; 0x3275
    add ax, 0x8d14                   ; 0x3277
    push ax                          ; 0x327a
    db 0xe8, 0xf6, 0xb9 ; call 0xec74
    add sp, byte 4                   ; 0x327e
    cmp ax, strict word 1            ; 0x3281
    jne short loc_329b               ; 0x3284
    push word [bp - 0x0028]          ; 0x3286
    push word [bp + 0x4]             ; 0x3289
    call api_idx_0040                ; 0x328c
    add sp, byte 4                   ; 0x328f
    cmp ax, strict word 1            ; 0x3292
    db 0x75, 0x04 ; jne short loc_329b
    mov ax, 1                        ; 0x3297
    ret                              ; 0x329a
    jmp near @..api_idx_0040.l4      ; 0x329b
    push word [bp - 0x0026]          ; 0x329e
    mov ax, 0x95f8                   ; 0x32a1
    push ax                          ; 0x32a4
    db 0xe8, 0xcc, 0xb9 ; call 0xec74
    add sp, byte 4                   ; 0x32a8
    test ax, ax                      ; 0x32ab
    jne short loc_32c4               ; 0x32ad
    push word [bp - 0x0028]          ; 0x32af
    push word [bp + 0x4]             ; 0x32b2
    call api_idx_0040                ; 0x32b5
    add sp, byte 4                   ; 0x32b8
    cmp ax, strict word 1            ; 0x32bb
    db 0x75, 0x04 ; jne short loc_32c4
    mov ax, 1                        ; 0x32c0
    ret                              ; 0x32c3
    jmp near @..api_idx_0040.l4      ; 0x32c4
    push word [bp - 0x0026]          ; 0x32c7
    mov ax, 0x95f8                   ; 0x32ca
    push ax                          ; 0x32cd
    db 0xe8, 0xa3, 0xb9 ; call 0xec74
    add sp, byte 4                   ; 0x32d1
    cmp ax, strict word 1            ; 0x32d4
    jne short loc_32ee               ; 0x32d7
    push word [bp - 0x0028]          ; 0x32d9
    push word [bp + 0x4]             ; 0x32dc
    call api_idx_0040                ; 0x32df
    add sp, byte 4                   ; 0x32e2
    cmp ax, strict word 1            ; 0x32e5
    db 0x75, 0x04 ; jne short loc_32ee
    mov ax, 1                        ; 0x32ea
    ret                              ; 0x32ed
    jmp near @..api_idx_0040.l4      ; 0x32ee
    mov ax, 0x64                     ; 0x32f1
    push ax                          ; 0x32f4
    db 0xe8, 0xb1, 0x84 ; call 0xb7a9
    pop cx                           ; 0x32f8
    cmp ax, word [bp - 0x0026]       ; 0x32f9
    jge short loc_3313               ; 0x32fc
    push word [bp - 0x0028]          ; 0x32fe
    push word [bp + 0x4]             ; 0x3301
    call api_idx_0040                ; 0x3304
    add sp, byte 4                   ; 0x3307
    cmp ax, strict word 1            ; 0x330a
    jne short loc_3313               ; 0x330d
    mov ax, 1                        ; 0x330f
    ret                              ; 0x3312
    jmp near @..api_idx_0040.l4      ; 0x3313
    mov ax, 0x26                     ; 0x3316
    imul word [bp - 0x0026]          ; 0x3319
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7aff]       ; 0x331e
    mov byte [bx - 0x7b00], al       ; 0x3322
    mov byte [bx - 0x7b16], 0        ; 0x3326
    mov al, byte [bp - 0x0028]       ; 0x332b
    mov byte [bx - 0x7b14], al       ; 0x332e
    mov byte [bx - 0x7b15], al       ; 0x3332
    jmp near @..api_idx_0040.l4      ; 0x3336
    mov ax, word [bp - 0x0026]       ; 0x3339
    mov word [bp - 0x003a], ax       ; 0x333c
    cmp ax, strict word 0            ; 0x333f
    jge short loc_335e               ; 0x3342
    push ax                          ; 0x3344
    cmp ax, strict word 0            ; 0x3345
    pop ax                           ; 0x3348
    jge short loc_334d               ; 0x3349
    neg ax                           ; 0x334b
    push ax                          ; 0x334d
    db 0xe8, 0x58, 0x84 ; call 0xb7a9
    pop cx                           ; 0x3351
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0                        ; 0x3354
    db 0x2b, 0xc1 ; sub ax, cx
    mov word [bp - 0x003a], ax       ; 0x3359
    jmp short loc_3368               ; 0x335c
    push word [bp - 0x003a]          ; 0x335e
    db 0xe8, 0x45, 0x84 ; call 0xb7a9
    pop cx                           ; 0x3364
    mov word [bp - 0x003a], ax       ; 0x3365
    mov ax, word [bp - 0x0028]       ; 0x3368
    add ax, strict word 0xff9c       ; 0x336b
    mov word [bp - 0x002c], ax       ; 0x336e
    mov ax, 0x64                     ; 0x3371
    push ax                          ; 0x3374
    push word [bp - 0x002c]          ; 0x3375
    mov al, byte [data_91c7]         ; 0x3378
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7622]       ; 0x337f
    cbw                              ; 0x3383
    add ax, word [bp - 0x003a]       ; 0x3384
    push ax                          ; 0x3387
    call 0xb7c2                      ; 0x3388
    add sp, byte 6                   ; 0x338b
    push ax                          ; 0x338e
    mov al, byte [data_91c7]         ; 0x338f
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x3396
    mov byte [bx - 0x7622], al       ; 0x3397
    jmp near @..api_idx_0040.l4      ; 0x339b
    mov word [bp - 0x002c], 0        ; 0x339e
    jmp near loc_3432                ; 0x33a3
    mov ax, word [bp - 0x0026]       ; 0x33a6
    dec ax                           ; 0x33a9
    mov word [bp - 0x003a], ax       ; 0x33aa
    cmp ax, strict word 7            ; 0x33ad
    jle short loc_33bd               ; 0x33b0
    mov ax, 8                        ; 0x33b2
    push ax                          ; 0x33b5
    db 0xe8, 0xf0, 0x83 ; call 0xb7a9
    pop cx                           ; 0x33b9
    mov word [bp - 0x003a], ax       ; 0x33ba
    mov ax, 0x248                    ; 0x33bd
    imul word [bp - 0x002c]          ; 0x33c0
    add ax, word [bp - 0x003a]       ; 0x33c3
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5d64], 0x13     ; 0x33c8
    jae short loc_342f               ; 0x33cd
    inc byte [bx + 0x5d64]           ; 0x33cf
    mov ax, data_95a8                ; 0x33d3
    push ax                          ; 0x33d6
    mov ax, 0x1397                   ; 0x33d7
    push ax                          ; 0x33da
    call 0xb53b                      ; 0x33db
    add sp, byte 4                   ; 0x33de
    mov ax, data_95fa                ; 0x33e1
    push ax                          ; 0x33e4
    mov ax, word [bp - 0x003a]       ; 0x33e5
    add ax, 0x13ba                   ; 0x33e8
    push ax                          ; 0x33eb
    db 0xe8, 0x4c, 0x81 ; call 0xb53b
    add sp, byte 4                   ; 0x33ef
    mov ax, 0x5e                     ; 0x33f2
    push ax                          ; 0x33f5
    mov ax, 0x248                    ; 0x33f6
    imul word [bp - 0x002c]          ; 0x33f9
    add ax, 0x5bf4                   ; 0x33fc
    push ax                          ; 0x33ff
    mov ax, data_95a8                ; 0x3400
    push ax                          ; 0x3403
    call 0xb300                      ; 0x3404
    add sp, byte 6                   ; 0x3407
    mov ax, 0x24                     ; 0x340a
    push ax                          ; 0x340d
    mov ax, data_95fa                ; 0x340e
    push ax                          ; 0x3411
    mov ax, data_95a8                ; 0x3412
    push ax                          ; 0x3415
    db 0xe8, 0xe7, 0x7e ; call 0xb300
    add sp, byte 6                   ; 0x3419
    mov ax, 0x55                     ; 0x341c
    push ax                          ; 0x341f
    mov ax, 1                        ; 0x3420
    push ax                          ; 0x3423
    push ax                          ; 0x3424
    mov ax, data_95a8                ; 0x3425
    push ax                          ; 0x3428
    call loc_130b                    ; 0x3429
    add sp, byte 8                   ; 0x342c
    inc word [bp - 0x002c]           ; 0x342f
    mov ax, word [bp - 0x002c]       ; 0x3432
    cmp ax, word [data_69c8]         ; 0x3435
    jge short loc_343e               ; 0x3439
    jmp near loc_33a6                ; 0x343b
    jmp near @..api_idx_0040.l4      ; 0x343e
    mov ax, word [bp - 0x0026]       ; 0x3441
    mov cx, 0x10                     ; 0x3444
    cwd                              ; 0x3447
    idiv cx                          ; 0x3448
    mov word [bp - 0x003e], ax       ; 0x344a
    mov word [bp - 0x003c], dx       ; 0x344d
    mov ax, word [bp - 0x0028]       ; 0x3450
    cwd                              ; 0x3453
    idiv cx                          ; 0x3454
    mov word [bp - 0x002e], ax       ; 0x3456
    mov word [bp - 0x0030], dx       ; 0x3459
    mov ax, 6                        ; 0x345c
    imul word [bp - 0x003e]          ; 0x345f
    mov cx, word [bp - 0x003c]       ; 0x3462
    shl cx, 1                        ; 0x3465
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx - 0x7bc6]       ; 0x346b
    push ax                          ; 0x346f
    mov ax, 6                        ; 0x3470
    imul word [bp - 0x002e]          ; 0x3473
    db 0x8b, 0xc8 ; mov cx, ax
    mov dx, word [bp - 0x0030]       ; 0x3478
    shl dx, 1                        ; 0x347b
    db 0x03, 0xc2 ; add ax, dx
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x3481
    mov word [bx - 0x7bc6], ax       ; 0x3482
    mov ax, 0xffff                   ; 0x3486
    push ax                          ; 0x3489
    push word [bp - 0x0030]          ; 0x348a
    push word [bp - 0x002e]          ; 0x348d
    push word [bx - 0x7bc6]          ; 0x3490
    call api_idx_0008                ; 0x3494
    add sp, byte 8                   ; 0x3497
    mov ax, 6                        ; 0x349a
    imul word [bp - 0x003e]          ; 0x349d
    mov cx, word [bp - 0x003c]       ; 0x34a0
    shl cx, 1                        ; 0x34a3
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov word [bx - 0x7bc6], 0        ; 0x34a9
    jmp near @..api_idx_0040.l4      ; 0x34af
    push word [bp - 0x0028]          ; 0x34b2
    push word [bp + 0x4]             ; 0x34b5
    call api_idx_0040                ; 0x34b8
    add sp, byte 4                   ; 0x34bb
    cmp ax, strict word 1            ; 0x34be
    jne short loc_34c7               ; 0x34c1
    mov ax, 1                        ; 0x34c3
    ret                              ; 0x34c6
    jmp near @..api_idx_0040.l4      ; 0x34c7
    push word [bp - 0x0026]          ; 0x34ca
    call loc_742e                    ; 0x34cd
    pop cx                           ; 0x34d0
    jmp near @..api_idx_0040.l4      ; 0x34d1
    cmp byte [data_91c6], 0xff       ; 0x34d4
    je short loc_3518                ; 0x34d9
    mov word [bp - 0x003a], 0        ; 0x34db
    push word [bp - 0x003a]          ; 0x34e0
    mov al, byte [data_91c6]         ; 0x34e3
    cbw                              ; 0x34e6
    mov cx, 0x26                     ; 0x34e7
    imul cx                          ; 0x34ea
    add ax, 0x8502                   ; 0x34ec
    push ax                          ; 0x34ef
    db 0xe8, 0x81, 0xb7 ; call 0xec74
    add sp, byte 4                   ; 0x34f3
    test ax, ax                      ; 0x34f6
    je short loc_350d                ; 0x34f8
    push word [bp - 0x0028]          ; 0x34fa
    mov ax, word [bp - 0x003a]       ; 0x34fd
    add ax, 0x190                    ; 0x3500
    push ax                          ; 0x3503
    push word [bp + 0x4]             ; 0x3504
    call api_idx_0008_2              ; 0x3507
    add sp, byte 6                   ; 0x350a
    inc word [bp - 0x003a]           ; 0x350d
    mov ax, word [bp - 0x003a]       ; 0x3510
    cmp ax, strict word 0xb          ; 0x3513
    jl short loc_34e0                ; 0x3516
    jmp near @..api_idx_0040.l4      ; 0x3518
    push word [bp + 0x4]             ; 0x351b
    call 0xca85                      ; 0x351e
    pop cx                           ; 0x3521
    test ax, ax                      ; 0x3522
    jne short loc_353b               ; 0x3524
    push word [bp - 0x0028]          ; 0x3526
    push word [bp + 0x4]             ; 0x3529
    call api_idx_0040                ; 0x352c
    add sp, byte 4                   ; 0x352f
    cmp ax, strict word 1            ; 0x3532
    db 0x75, 0x04 ; jne short loc_353b
    mov ax, 1                        ; 0x3537
    ret                              ; 0x353a
    jmp near @..api_idx_0040.l4      ; 0x353b
    mov ax, 1                        ; 0x353e
    ret                              ; 0x3541
    mov word [data_8f46], 0x7b       ; 0x3542
    mov word [data_8f44], 0x80       ; 0x3548
    mov word [data_8f42], 3          ; 0x354e
    mov word [data_8f40], 0          ; 0x3554
    mov word [data_8f3e], data_0002  ; 0x355a
    mov word [data_82ee], 0          ; 0x3560
    mov word [data_830c], 0x13       ; 0x3566
    mov word [data_830a], 6          ; 0x356c
    mov word [data_905e], 0x12       ; 0x3572
    mov ax, 1                        ; 0x3578
    ret                              ; 0x357b
    mov al, byte [data_91c7]         ; 0x357c
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx - 0x7622]       ; 0x3583
    cbw                              ; 0x3587
    cmp ax, word [bp - 0x0026]       ; 0x3588
    jge short loc_35a2               ; 0x358b
    push word [bp - 0x0028]          ; 0x358d
    push word [bp + 0x4]             ; 0x3590
    call api_idx_0040                ; 0x3593
    add sp, byte 4                   ; 0x3596
    cmp ax, strict word 1            ; 0x3599
    jne short loc_35a2               ; 0x359c
    mov ax, 1                        ; 0x359e
    ret                              ; 0x35a1
    jmp near @..api_idx_0040.l4      ; 0x35a2
    mov word [bp - 0x003a], 0xffff   ; 0x35a5
    mov word [bp - 0x0030], 0        ; 0x35aa
    jmp near loc_3637                ; 0x35af
    push word [bp - 0x0028]          ; 0x35b2
    push word [bp - 0x0030]          ; 0x35b5
    call api_idx_0004_8              ; 0x35b8
    add sp, byte 4                   ; 0x35bb
    mov word [bp - 0x003a], ax       ; 0x35be
    cmp ax, strict word 0xffff       ; 0x35c1
    je short loc_3634                ; 0x35c4
    mov cx, 0x100                    ; 0x35c6
    cwd                              ; 0x35c9
    idiv cx                          ; 0x35ca
    mov word [bp - 0x002a], ax       ; 0x35cc
    mov word [bp - 0x002c], dx       ; 0x35cf
    push dx                          ; 0x35d2
    push ax                          ; 0x35d3
    push word [bp - 0x0030]          ; 0x35d4
    db 0xe8, 0x0e, 0x94 ; call 0xc9e8
    add sp, byte 6                   ; 0x35da
    mov ax, 1                        ; 0x35dd
    push ax                          ; 0x35e0
    mov ax, 0xffff                   ; 0x35e1
    push ax                          ; 0x35e4
    mov ax, 0x248                    ; 0x35e5
    imul word [bp - 0x0030]          ; 0x35e8
    push ax                          ; 0x35eb
    mov ax, 0x78                     ; 0x35ec
    imul word [bp - 0x002a]          ; 0x35ef
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x35f4
    db 0x03, 0xc1 ; add ax, cx
    push ax                          ; 0x35f7
    mov ax, 0xc                      ; 0x35f8
    imul word [bp - 0x002c]          ; 0x35fb
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x3600
    db 0x03, 0xc1 ; add ax, cx
    add ax, 0x5c34                   ; 0x3603
    push ax                          ; 0x3606
    push word [bp - 0x0026]          ; 0x3607
    push word [bp - 0x0030]          ; 0x360a
    call api_idx_004c                ; 0x360d
    add sp, byte 0x0a                ; 0x3610
    push word [bp - 0x0026]          ; 0x3613
    call loc_5497                    ; 0x3616
    pop cx                           ; 0x3619
    test ax, ax                      ; 0x361a
    db 0x74, 0x16 ; je short loc_3634
    mov ax, word [bp - 0x0026]       ; 0x361e
    add ax, 0xfe70                   ; 0x3621
    push ax                          ; 0x3624
    mov al, byte [data_91c6]         ; 0x3625
    cbw                              ; 0x3628
    push ax                          ; 0x3629
    mov ax, 0x15                     ; 0x362a
    push ax                          ; 0x362d
    call api_idx_0002_5              ; 0x362e
    add sp, byte 6                   ; 0x3631
    inc word [bp - 0x0030]           ; 0x3634
    mov ax, word [bp - 0x0030]       ; 0x3637
    cmp ax, word [data_69c8]         ; 0x363a
    jge short loc_3649               ; 0x363e
    cmp word [bp - 0x003a], byte 0xff ; 0x3640
    jne short loc_3649               ; 0x3644
    jmp near loc_35b2                ; 0x3646
    jmp near @..api_idx_0040.l4      ; 0x3649
    mov ax, word [bp - 0x0026]       ; 0x364c
    mov cx, 0x100                    ; 0x364f
    cwd                              ; 0x3652
    idiv cx                          ; 0x3653
    add ax, strict word 0xf          ; 0x3655
    mov word [bp - 0x002c], ax       ; 0x3658
    mov word [bp - 0x003a], dx       ; 0x365b
    db 0x8b, 0xc2 ; mov ax, dx
    mov cx, 0x10                     ; 0x3660
    cwd                              ; 0x3663
    idiv cx                          ; 0x3664
    mov word [bp - 0x002e], ax       ; 0x3666
    mov word [bp - 0x0030], dx       ; 0x3669
    push word [bp - 0x0028]          ; 0x366c
    push dx                          ; 0x366f
    push ax                          ; 0x3670
    push word [bp - 0x002c]          ; 0x3671
    call api_idx_0008                ; 0x3674
    add sp, byte 8                   ; 0x3677
    jmp near @..api_idx_0040.l4      ; 0x367a
    mov ax, word [bp - 0x0028]       ; 0x367d
    mov word [data_9134], ax         ; 0x3680
    jmp near @..api_idx_0040.l4      ; 0x3683
    mov ax, 0                        ; 0x3686
    push ax                          ; 0x3689
    push word [bp - 0x0028]          ; 0x368a
    push word [bp - 0x0026]          ; 0x368d
    call api_idx_0038                ; 0x3690
    add sp, byte 6                   ; 0x3693
    jmp near @..api_idx_0040.l4      ; 0x3696
    mov ax, word [bp - 0x0026]       ; 0x3699
    mov cx, word [bp - 0x0028]       ; 0x369c
    shl cx, 1                        ; 0x369f
    db 0x8b, 0xd9 ; mov bx, cx
    mov word [bx - 0x6e88], ax       ; 0x36a3
    jmp near @..api_idx_0040.l4      ; 0x36a7
    mov ax, word [bp - 0x0026]       ; 0x36aa
    dec ax                           ; 0x36ad
    mov word [bp - 0x0002], ax       ; 0x36ae
    jmp near @..api_idx_0040.l4      ; 0x36b1
    mov ax, 1                        ; 0x36b4
    push ax                          ; 0x36b7
    push word [bp - 0x0028]          ; 0x36b8
    mov ax, word [bp - 0x0026]       ; 0x36bb
    shl ax, 1                        ; 0x36be
    add ax, 0x584e                   ; 0x36c0
    push ax                          ; 0x36c3
    db 0xe8, 0x7a, 0xb5 ; call 0xec41
    add sp, byte 6                   ; 0x36c7
    jmp near @..api_idx_0040.l4      ; 0x36ca
    push word [bp - 0x0026]          ; 0x36cd
    mov ax, 0x5842                   ; 0x36d0
    push ax                          ; 0x36d3
    db 0xe8, 0x9d, 0xb5 ; call 0xec74
    add sp, byte 4                   ; 0x36d7
    cmp ax, word [bp - 0x0028]       ; 0x36da
    jne short loc_36e3               ; 0x36dd
    mov ax, 0                        ; 0x36df
    ret                              ; 0x36e2
    mov ax, word [bp - 0x0026]       ; 0x36e3
    cmp ax, strict word 0xc          ; 0x36e6
    jne short loc_36f6               ; 0x36e9
    cmp byte [data_86c8], 0          ; 0x36eb
    jne short loc_36f6               ; 0x36f0
    mov ax, 0                        ; 0x36f2
    ret                              ; 0x36f5
    jmp short @..api_idx_0040.l4     ; 0x36f6
    xor bh, byte [si + 0x36]         ; 0x36f8
    jl short loc_3756                ; 0x36fb
    jl short loc_3770                ; 0x36fd
    jl short loc_36a9                ; 0x36ff
    jl short loc_3699                ; 0x3701
    jge short loc_36ab               ; 0x3703
    jge short loc_371d               ; 0x3705
    jle short loc_372e               ; 0x3707
    jle short loc_3781               ; 0x3709
    jle short loc_3695               ; 0x370b
    jle short loc_3714               ; 0x370d
    jg short @..api_idx_0040.l5      ; 0x370f
    jg short @..api_idx_0006_3.l1    ; 0x3711
    sbb cl, 0x80                     ; 0x3713
    inc word [bx + si - 0x7ec3]      ; 0x3716
    pop bx                           ; 0x371a
    or word [bp - 0x507f], strict word 0xcf81 ; 0x371b
    db 0x81, 0xe8, 0x81, 0x00 ; sub ax, strict word 0x81
    db 0x82, 0x00, 0x82 ; add byte [bx + si], 0x82
    outsb                            ; 0x3728
    db 0x82, 0x82, 0x82, 0xb3, 0x82 ; add byte [bp + si - 0x4c7e], 0x82
    in ax, 0x82                      ; 0x372e
    push cs                          ; 0x3730
    cmp word [bx + si], byte 0x83    ; 0x3731
    pop bp                           ; 0x3734
    add word [bx + si - 0x1a7d], byte 0x83 ; 0x3735
    mov byte [si - 0x7b07], al       ; 0x373a
    adc word [di + 0x7ca3], ax       ; 0x373e
    sbb ax, word [di - 0x7a9e]       ; 0x3742
    test word [di - 0x7a77], ax      ; 0x3746
    ret                              ; 0x374a
    test sp, bp                      ; 0x374b
    test word [bp + di - 0x3b7a], dx ; 0x374d
    db 0x86, 0xcd ; xchg ch, cl
    db 0x86, 0xe0 ; xchg al, ah
    db 0x86, 0xf1 ; xchg cl, dh
    db 0x86, 0xfb ; xchg bl, bh
    xchg byte [si], dl               ; 0x3759
    db 0x87
@..api_idx_0040.l3:
    cmp ax, strict word 0x32         ; 0x375c
    jae short @..api_idx_0040.l4     ; 0x375f
    xchg bx, ax                      ; 0x3761
    shl bx, 1                        ; 0x3762
    jmp [cs:bx - 0x78c1]             ; 0x3764
@..api_idx_0040.l4:
    inc word [bp - 0x0002]           ; 0x3769
    jmp near @..api_idx_0040.l1      ; 0x376c
@..api_idx_0040.l5:
    mov ax, 0                        ; 0x376f
    ret                              ; 0x3772
