; auto-generated
api_idx_0040:
    mov ax, 0xffc0                   ; 0x2b8e
    call aztec_csav                  ; 0x2b91
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
    call ds_app_file_0883            ; 0x2bb1
    add sp, byte 8                   ; 0x2bb4
    mov word [bp - 0x0002], 0        ; 0x2bb7
loc_2bbc:
    cmp word [bp - 0x0002], byte 8   ; 0x2bbc
    jl short loc_2bc5                ; 0x2bc0
    jmp near loc_376f                ; 0x2bc2
loc_2bc5:
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
    jmp near loc_375c                ; 0x2be8
loc_2beb:
    mov ax, 0                        ; 0x2beb
    ret                              ; 0x2bee
loc_2bef:
    cmp word [bss_93ee], byte 0      ; 0x2bef
    je short loc_2bf9                ; 0x2bf4
    call loc_23d0                    ; 0x2bf6
loc_2bf9:
    push word [bp - 0x0028]          ; 0x2bf9
    push word [bp - 0x0026]          ; 0x2bfc
    call api_idx_0100                ; 0x2bff
    add sp, byte 4                   ; 0x2c02
    cmp word [bss_93ee], byte 0      ; 0x2c05
    je short loc_2c0f                ; 0x2c0a
    call loc_243b                    ; 0x2c0c
loc_2c0f:
    jmp near loc_3769                ; 0x2c0f
loc_2c12:
    cmp word [bp - 0x0026], byte 0   ; 0x2c12
    jle short loc_2c1e               ; 0x2c16
    mov al, byte [bp - 0x0026]       ; 0x2c18
    mov byte [bss_91c2], al          ; 0x2c1b
loc_2c1e:
    mov ax, 1                        ; 0x2c1e
    push ax                          ; 0x2c21
    call loc_2963                    ; 0x2c22
    pop cx                           ; 0x2c25
    mov ax, 1                        ; 0x2c26
    ret                              ; 0x2c29
loc_2c2a:
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
loc_2c46:
    mov word [bss_95a6], 1           ; 0x2c46
    mov word [bss_830a], 5           ; 0x2c4c
    mov word [bss_905e], 0x12        ; 0x2c52
    mov ax, 1                        ; 0x2c58
    ret                              ; 0x2c5b
loc_2c5c:
    mov word [bp - 0x0040], 1        ; 0x2c5c
loc_2c61:
    mov ax, word [bp - 0x0026]       ; 0x2c61
    mov cx, 0x100                    ; 0x2c64
    cwd                              ; 0x2c67
    idiv cx                          ; 0x2c68
    add ax, strict word 0xf          ; 0x2c6a
    mov word [bp - 0x002c], ax       ; 0x2c6d
    mov word [bp - 0x0030], dx       ; 0x2c70
    mov ax, dx                       ; 0x2c73
    mov cx, 0x10                     ; 0x2c75
    cwd                              ; 0x2c78
    idiv cx                          ; 0x2c79
    mov word [bp - 0x002e], ax       ; 0x2c7b
    mov word [bp - 0x0030], dx       ; 0x2c7e
    cmp word [bp - 0x0028], byte 0   ; 0x2c81
    jg short loc_2c8a                ; 0x2c85
    jmp near loc_2d0b                ; 0x2c87
loc_2c8a:
    mov bx, word [bp - 0x002c]       ; 0x2c8a
    mov al, byte [bx + 0x5b48]       ; 0x2c8d
    sub ah, ah                       ; 0x2c91
    cmp ax, 0xff                     ; 0x2c93
    je short loc_2ca7                ; 0x2c96
    mov ax, 1                        ; 0x2c98
    push ax                          ; 0x2c9b
    call ds_loc_415b                 ; 0x2c9c
    pop cx                           ; 0x2c9f
    push word [bp - 0x002c]          ; 0x2ca0
    call ds_app_1371                 ; 0x2ca3
    pop cx                           ; 0x2ca6
loc_2ca7:
    push word [bp - 0x002c]          ; 0x2ca7
    push word [bp - 0x0028]          ; 0x2caa
    call ds_app_file_2863            ; 0x2cad
    add sp, byte 4                   ; 0x2cb0
    mov ax, word [bp - 0x002c]       ; 0x2cb3
    push ax                          ; 0x2cb6
    mov ax, 6                        ; 0x2cb7
    imul word [bp - 0x002e]          ; 0x2cba
    mov cx, ax                       ; 0x2cbd
    mov dx, word [bp - 0x0030]       ; 0x2cbf
    shl dx, 1                        ; 0x2cc2
    add ax, dx                       ; 0x2cc4
    mov bx, ax                       ; 0x2cc6
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
    add ax, cx                       ; 0x2cf1
    mov bx, ax                       ; 0x2cf3
    mov word [bx - 0x6c24], 1        ; 0x2cf5
    mov ax, 0                        ; 0x2cfb
    push ax                          ; 0x2cfe
    push ax                          ; 0x2cff
    call api_idx_005e                ; 0x2d00
    add sp, byte 4                   ; 0x2d03
loc_2d06:
    call loc_109f                    ; 0x2d06
    jmp short loc_2d4c               ; 0x2d09
loc_2d0b:
    cmp word [bp - 0x0040], byte 0   ; 0x2d0b
    je short loc_2d34                ; 0x2d0f
    mov ax, 6                        ; 0x2d11
    imul word [bp - 0x002e]          ; 0x2d14
    mov cx, word [bp - 0x0030]       ; 0x2d17
    shl cx, 1                        ; 0x2d1a
    add ax, cx                       ; 0x2d1c
    mov bx, ax                       ; 0x2d1e
    mov word [bx - 0x6c24], 1        ; 0x2d20
    mov ax, 0                        ; 0x2d26
    push ax                          ; 0x2d29
    mov ax, 1                        ; 0x2d2a
    push ax                          ; 0x2d2d
    call api_idx_005e                ; 0x2d2e
    add sp, byte 4                   ; 0x2d31
loc_2d34:
    mov ax, 6                        ; 0x2d34
    imul word [bp - 0x002e]          ; 0x2d37
    mov cx, word [bp - 0x0030]       ; 0x2d3a
    shl cx, 1                        ; 0x2d3d
    add ax, cx                       ; 0x2d3f
    mov bx, ax                       ; 0x2d41
    mov word [bx - 0x7bc6], 0        ; 0x2d43
    call loc_109f                    ; 0x2d49
loc_2d4c:
    jmp near loc_3769                ; 0x2d4c
loc_2d4f:
    mov ax, 1                        ; 0x2d4f
    push ax                          ; 0x2d52
    push word [bp - 0x0028]          ; 0x2d53
    call api_idx_0004_5              ; 0x2d56
    add sp, byte 4                   ; 0x2d59
    jmp near loc_3769                ; 0x2d5c
loc_2d5f:
    cmp word [bss_93ee], byte 0      ; 0x2d5f
    je short loc_2d69                ; 0x2d64
    call loc_23d0                    ; 0x2d66
loc_2d69:
    push word [bp - 0x0028]          ; 0x2d69
    push word [bp - 0x0026]          ; 0x2d6c
    push word [bp + 0x4]             ; 0x2d6f
    call api_idx_00ba                ; 0x2d72
    add sp, byte 6                   ; 0x2d75
    mov word [bp - 0x0032], ax       ; 0x2d78
    cmp word [bss_93ee], byte 0      ; 0x2d7b
    je short loc_2d85                ; 0x2d80
    call loc_243b                    ; 0x2d82
loc_2d85:
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
loc_2da0:
    jmp short loc_2dcc               ; 0x2da0
loc_2da2:
    mov ax, 0x95a8                   ; 0x2da2
    push ax                          ; 0x2da5
    mov ax, word [bp - 0x0026]       ; 0x2da6
    inc ax                           ; 0x2da9
    push ax                          ; 0x2daa
    call ds_app_mem_0782             ; 0x2dab
    add sp, byte 4                   ; 0x2dae
    mov ax, 0x95a8                   ; 0x2db1
    push ax                          ; 0x2db4
    call aztec_strlen                ; 0x2db5
    pop cx                           ; 0x2db8
    cmp ax, strict word 0            ; 0x2db9
    jle short loc_2dcc               ; 0x2dbc
    mov ax, 1                        ; 0x2dbe
    push ax                          ; 0x2dc1
    mov ax, 0x95a8                   ; 0x2dc2
    push ax                          ; 0x2dc5
    call loc_2472                    ; 0x2dc6
    add sp, byte 4                   ; 0x2dc9
loc_2dcc:
    jmp near loc_3769                ; 0x2dcc
loc_2dcf:
    call ds_app_0d36                 ; 0x2dcf
    test ax, ax                      ; 0x2dd2
    jne short loc_2ddb               ; 0x2dd4
    call api_idx_0006_2              ; 0x2dd6
    jmp short loc_2dcf               ; 0x2dd9
loc_2ddb:
    jmp near loc_3769                ; 0x2ddb
loc_2dde:
    mov ax, word [bss_830c]          ; 0x2dde
    cmp ax, word [bss_8f3c]          ; 0x2de1
    jne short loc_2e2c               ; 0x2de5
    mov ax, word [bss_8f36]          ; 0x2de7
    mov word [bss_8f42], ax          ; 0x2dea
    mov ax, word [bss_8f34]          ; 0x2ded
    mov word [bss_8f40], ax          ; 0x2df0
    mov ax, word [bss_8f32]          ; 0x2df3
    mov word [bss_8f3e], ax          ; 0x2df6
    mov ax, word [bss_8f3a]          ; 0x2df9
    mov word [bss_8f46], ax          ; 0x2dfc
    mov ax, word [bss_8f38]          ; 0x2dff
    mov word [bss_8f44], ax          ; 0x2e02
    mov ax, word [bss_8f30]          ; 0x2e05
    mov word [bss_82ee], ax          ; 0x2e08
    mov bx, word [bss_0e12]          ; 0x2e0b
    mov si, word [bss_8f3e]          ; 0x2e0f
    mov al, byte [bx + si + 0xb40]   ; 0x2e13
    sub ah, ah                       ; 0x2e17
    mov word [bss_8d12], ax          ; 0x2e19
    mov word [bss_830a], 5           ; 0x2e1c
    mov word [bss_905e], 0x12        ; 0x2e22
    mov ax, 1                        ; 0x2e28
    ret                              ; 0x2e2b
loc_2e2c:
    jmp near loc_3769                ; 0x2e2c
loc_2e2f:
    push word [bp - 0x0028]          ; 0x2e2f
    push word [bp - 0x0026]          ; 0x2e32
    push word [bp + 0x4]             ; 0x2e35
    call api_idx_0008_2              ; 0x2e38
    add sp, byte 6                   ; 0x2e3b
    jmp near loc_3769                ; 0x2e3e
loc_2e41:
    mov word [bp - 0x003a], 0xffff   ; 0x2e41
    mov ax, word [bp + 0x4]          ; 0x2e46
    mov word [bp - 0x0030], ax       ; 0x2e49
    mov word [bp + 0x4], 0           ; 0x2e4c
    jmp short loc_2ea6               ; 0x2e51
loc_2e53:
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
    mov al, byte [bss_91c6]          ; 0x2e89
    cbw                              ; 0x2e8c
    push ax                          ; 0x2e8d
    call api_idx_0002_5              ; 0x2e8e
    add sp, byte 6                   ; 0x2e91
loc_2e94:
    push word [bp - 0x002c]          ; 0x2e94
    push word [bp - 0x002a]          ; 0x2e97
    push word [bp + 0x4]             ; 0x2e9a
    call ds_app_1c2f                 ; 0x2e9d
    add sp, byte 6                   ; 0x2ea0
loc_2ea3:
    inc word [bp + 0x4]              ; 0x2ea3
loc_2ea6:
    mov ax, word [bp + 0x4]          ; 0x2ea6
    cmp ax, word [bss_69c8]          ; 0x2ea9
    jge short loc_2eb5               ; 0x2ead
    cmp word [bp - 0x003a], byte 0xff ; 0x2eaf
    je short loc_2e53                ; 0x2eb3
loc_2eb5:
    mov ax, word [bp - 0x0030]       ; 0x2eb5
    mov word [bp + 0x4], ax          ; 0x2eb8
    jmp near loc_3769                ; 0x2ebb
