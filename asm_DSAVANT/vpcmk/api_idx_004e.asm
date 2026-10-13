api_idx_004e:
    mov ax, 0xffb2                   ; 0x4b05
    call ds_aztec_csav               ; 0x4b08
    mov ax, 0                        ; 0x4b0b
    push ax                          ; 0x4b0e
    push word [bp + 0x6]             ; 0x4b0f
    lea ax, word [bp - 0x004c]       ; 0x4b12
    push ax                          ; 0x4b15
    mov ax, 1                        ; 0x4b16
    push ax                          ; 0x4b19
    call ds_app_file_0883            ; 0x4b1a
    add sp, byte 8                   ; 0x4b1d
    mov word [bp - 0x0002], 0        ; 0x4b20
@..api_idx_004e.l1:
    mov ax, 0x248                    ; 0x4b25
    imul word [bp + 0x4]             ; 0x4b28
    push ax                          ; 0x4b2b
    mov ax, 0xc                      ; 0x4b2c
    imul word [bp - 0x0002]          ; 0x4b2f
    mov cx, ax                       ; 0x4b32
    pop ax                           ; 0x4b34
    add ax, cx                       ; 0x4b35
    mov bx, ax                       ; 0x4b37
    cmp word [bx + 0x5c34], byte 0   ; 0x4b39
    jle short @..api_idx_004e.l2     ; 0x4b3e
    inc word [bp - 0x0002]           ; 0x4b40
    jmp short @..api_idx_004e.l1     ; 0x4b43
@..api_idx_004e.l2:
    mov ax, 0x248                    ; 0x4b45
    imul word [bp + 0x4]             ; 0x4b48
    push ax                          ; 0x4b4b
    mov ax, 0xc                      ; 0x4b4c
    imul word [bp - 0x0002]          ; 0x4b4f
    mov cx, ax                       ; 0x4b52
    pop ax                           ; 0x4b54
    add ax, cx                       ; 0x4b55
    add ax, 0x5c34                   ; 0x4b57
    mov word [bp - 0x004e], ax       ; 0x4b5a
    mov al, byte [bp - 0x0030]       ; 0x4b5d
    sub ah, ah                       ; 0x4b60
    push ax                          ; 0x4b62
    mov al, byte [bp - 0x002f]       ; 0x4b63
    sub ah, ah                       ; 0x4b66
    mov cx, ax                       ; 0x4b68
    pop ax                           ; 0x4b6a
    imul cx                          ; 0x4b6b
    add ax, word [bp - 0x0032]       ; 0x4b6d
    mov bx, word [bp - 0x004e]       ; 0x4b70
    mov byte [bx + 0x6], al          ; 0x4b73
    mov ax, word [bp + 0x6]          ; 0x4b76
    mov bx, word [bp - 0x004e]       ; 0x4b79
    mov word [bx], ax                ; 0x4b7c
    mov al, byte [bp - 0x0014]       ; 0x4b7e
    mov bx, word [bp - 0x004e]       ; 0x4b81
    mov byte [bx + 0x4], al          ; 0x4b84
    mov al, byte [bp - 0x0013]       ; 0x4b87
    mov bx, word [bp - 0x004e]       ; 0x4b8a
    mov byte [bx + 0x5], al          ; 0x4b8d
    mov ax, word [bp - 0x0028]       ; 0x4b90
    mov bx, word [bp - 0x004e]       ; 0x4b93
    mov word [bx + 0x2], ax          ; 0x4b96
    mov al, byte [bp - 0x0024]       ; 0x4b99
    mov bx, word [bp - 0x004e]       ; 0x4b9c
    mov byte [bx + 0x8], al          ; 0x4b9f
    mov al, byte [bp - 0x0023]       ; 0x4ba2
    mov bx, word [bp - 0x004e]       ; 0x4ba5
    mov byte [bx + 0x9], al          ; 0x4ba8
    mov al, byte [bp - 0x0010]       ; 0x4bab
    mov bx, word [bp - 0x004e]       ; 0x4bae
    mov byte [bx + 0xa], al          ; 0x4bb1
    mov al, byte [bp - 0x000c]       ; 0x4bb4
    mov bx, word [bp - 0x004e]       ; 0x4bb7
    mov byte [bx + 0xb], al          ; 0x4bba
    mov bx, word [bp - 0x004e]       ; 0x4bbd
    mov byte [bx + 0x7], 0x80        ; 0x4bc0
    mov al, byte [bp - 0x0015]       ; 0x4bc4
    sub ah, ah                       ; 0x4bc7
    test ax, 8                       ; 0x4bc9
    je short @..api_idx_004e.l3      ; 0x4bcc
    mov bx, word [bp - 0x004e]       ; 0x4bce
    or byte [bx + 0x7], 4            ; 0x4bd1
@..api_idx_004e.l3:
    mov al, byte [bp - 0x0015]       ; 0x4bd5
    sub ah, ah                       ; 0x4bd8
    test ax, 4                       ; 0x4bda
    je short @..api_idx_004e.l4      ; 0x4bdd
    mov bx, word [bp - 0x004e]       ; 0x4bdf
    or byte [bx + 0x7], 8            ; 0x4be2
@..api_idx_004e.l4:
    mov al, byte [bp - 0x0015]       ; 0x4be6
    sub ah, ah                       ; 0x4be9
    test ax, 0x10                    ; 0x4beb
    je short @..api_idx_004e.l5      ; 0x4bee
    mov bx, word [bp - 0x004e]       ; 0x4bf0
    or byte [bx + 0x7], 0x10         ; 0x4bf3
@..api_idx_004e.l5:
    mov al, byte [bp - 0x0015]       ; 0x4bf7
    sub ah, ah                       ; 0x4bfa
    test ax, 0x20                    ; 0x4bfc
    je short @..api_idx_004e.l6      ; 0x4bff
    mov bx, word [bp - 0x004e]       ; 0x4c01
    or byte [bx + 0x7], 0x20         ; 0x4c04
@..api_idx_004e.l6:
    mov al, byte [bp - 0x0015]       ; 0x4c08
    sub ah, ah                       ; 0x4c0b
    test ax, 2                       ; 0x4c0d
    je short @..api_idx_004e.l7      ; 0x4c10
    mov bx, word [bp - 0x004e]       ; 0x4c12
    or byte [bx + 0x7], 0x40         ; 0x4c15
@..api_idx_004e.l7:
    push word [bp + 0x4]             ; 0x4c19
    call ds_app_17d6                 ; 0x4c1c
    pop cx                           ; 0x4c1f
    ret                              ; 0x4c20
loc_4c21:
    mov ax, 0                        ; 0x4c21
    call ds_aztec_csav               ; 0x4c24
    cmp word [bp + 0x6], byte 0      ; 0x4c27
    je short @..loc_4c21.l1          ; 0x4c2b
    push word [bp + 0x6]             ; 0x4c2d
    push word [bp + 0x4]             ; 0x4c30
    call api_idx_004e                ; 0x4c33
    add sp, byte 4                   ; 0x4c36
@..loc_4c21.l1:
    cmp word [bp + 0x8], byte 0      ; 0x4c39
    je short @..loc_4c21.l2          ; 0x4c3d
    push word [bp + 0x8]             ; 0x4c3f
    push word [bp + 0x4]             ; 0x4c42
    call api_idx_004e                ; 0x4c45
    add sp, byte 4                   ; 0x4c48
@..loc_4c21.l2:
    cmp word [bp + 0xa], byte 0      ; 0x4c4b
    je short @..loc_4c21.l3          ; 0x4c4f
    push word [bp + 0xa]             ; 0x4c51
    push word [bp + 0x4]             ; 0x4c54
    call api_idx_004e                ; 0x4c57
    add sp, byte 4                   ; 0x4c5a
@..loc_4c21.l3:
    cmp word [bp + 0xc], byte 0      ; 0x4c5d
    je short @..loc_4c21.l4          ; 0x4c61
    push word [bp + 0xc]             ; 0x4c63
    push word [bp + 0x4]             ; 0x4c66
    call api_idx_004e                ; 0x4c69
    add sp, byte 4                   ; 0x4c6c
@..loc_4c21.l4:
    cmp word [bp + 0xe], byte 0      ; 0x4c6f
    je short @..loc_4c21.l5          ; 0x4c73
    push word [bp + 0xe]             ; 0x4c75
    push word [bp + 0x4]             ; 0x4c78
    call api_idx_004e                ; 0x4c7b
    add sp, byte 4                   ; 0x4c7e
@..loc_4c21.l5:
    ret                              ; 0x4c81
loc_4c82:
    mov ax, 0                        ; 0x4c82
    call ds_aztec_csav               ; 0x4c85
    mov ax, 0x248                    ; 0x4c88
    imul word [bp + 0x4]             ; 0x4c8b
    mov bx, ax                       ; 0x4c8e
    cmp byte [bx + 0x5e2b], 5        ; 0x4c90
    jne short @..loc_4c82.l1         ; 0x4c95
    mov ax, 0x180                    ; 0x4c97
    push ax                          ; 0x4c9a
    mov ax, 0x13c                    ; 0x4c9b
    push ax                          ; 0x4c9e
    mov ax, 0x18f                    ; 0x4c9f
    push ax                          ; 0x4ca2
    mov ax, 0x18e                    ; 0x4ca3
    push ax                          ; 0x4ca6
    mov ax, 0x18d                    ; 0x4ca7
    push ax                          ; 0x4caa
    push word [bp + 0x4]             ; 0x4cab
    call loc_4c21                    ; 0x4cae
    add sp, byte 0x0c                ; 0x4cb1
    ret                              ; 0x4cb4
@..loc_4c82.l1:
    mov ax, 0x248                    ; 0x4cb5
    imul word [bp + 0x4]             ; 0x4cb8
    mov bx, ax                       ; 0x4cbb
    mov al, byte [bx + 0x5e2d]       ; 0x4cbd
    sub ah, ah                       ; 0x4cc1
    jmp near @..loc_4c82.l2          ; 0x4cc3
jumptable_4e83_case_0:
    mov ax, 0x8d                     ; 0x4cc6
    push ax                          ; 0x4cc9
    mov ax, 0x82                     ; 0x4cca
    push ax                          ; 0x4ccd
    mov ax, 0x84                     ; 0x4cce
    push ax                          ; 0x4cd1
    mov ax, 0x87                     ; 0x4cd2
    push ax                          ; 0x4cd5
    mov ax, 8                        ; 0x4cd6
    push ax                          ; 0x4cd9
    push word [bp + 0x4]             ; 0x4cda
    call loc_4c21                    ; 0x4cdd
    add sp, byte 0x0c                ; 0x4ce0
    jmp near @..loc_4c82.l3          ; 0x4ce3
jumptable_4e83_case_1:
    mov ax, 0x14f                    ; 0x4ce6
    push ax                          ; 0x4ce9
    mov ax, 0x82                     ; 0x4cea
    push ax                          ; 0x4ced
    mov ax, 0x7b                     ; 0x4cee
    push ax                          ; 0x4cf1
    mov ax, 0x7a                     ; 0x4cf2
    push ax                          ; 0x4cf5
    mov ax, 0x12                     ; 0x4cf6
    push ax                          ; 0x4cf9
    push word [bp + 0x4]             ; 0x4cfa
    call loc_4c21                    ; 0x4cfd
    add sp, byte 0x0c                ; 0x4d00
    jmp near @..loc_4c82.l3          ; 0x4d03
jumptable_4e83_case_2:
    mov ax, 0x13c                    ; 0x4d06
    push ax                          ; 0x4d09
    mov ax, 0x82                     ; 0x4d0a
    push ax                          ; 0x4d0d
    mov ax, 0x7b                     ; 0x4d0e
    push ax                          ; 0x4d11
    mov ax, 0x7a                     ; 0x4d12
    push ax                          ; 0x4d15
    mov ax, 0x18                     ; 0x4d16
    push ax                          ; 0x4d19
    push word [bp + 0x4]             ; 0x4d1a
    call loc_4c21                    ; 0x4d1d
    add sp, byte 0x0c                ; 0x4d20
    jmp near @..loc_4c82.l3          ; 0x4d23
jumptable_4e83_case_3:
    mov ax, 0x1b                     ; 0x4d26
    push ax                          ; 0x4d29
    mov ax, 0x83                     ; 0x4d2a
    push ax                          ; 0x4d2d
    mov ax, 0x79                     ; 0x4d2e
    push ax                          ; 0x4d31
    mov ax, 0x78                     ; 0x4d32
    push ax                          ; 0x4d35
    mov ax, 6                        ; 0x4d36
    push ax                          ; 0x4d39
    push word [bp + 0x4]             ; 0x4d3a
    call loc_4c21                    ; 0x4d3d
    add sp, byte 0x0c                ; 0x4d40
    jmp near @..loc_4c82.l3          ; 0x4d43
jumptable_4e83_case_4:
    mov ax, 0x83                     ; 0x4d46
    push ax                          ; 0x4d49
    mov ax, 0x7f                     ; 0x4d4a
    push ax                          ; 0x4d4d
    mov ax, 0x7e                     ; 0x4d4e
    push ax                          ; 0x4d51
    mov ax, 0x21                     ; 0x4d52
    push ax                          ; 0x4d55
    mov ax, 0x1f                     ; 0x4d56
    push ax                          ; 0x4d59
    push word [bp + 0x4]             ; 0x4d5a
    call loc_4c21                    ; 0x4d5d
    add sp, byte 0x0c                ; 0x4d60
    jmp near @..loc_4c82.l3          ; 0x4d63
jumptable_4e83_case_5:
    mov ax, 0x147                    ; 0x4d66
    push ax                          ; 0x4d69
    mov ax, 0x82                     ; 0x4d6a
    push ax                          ; 0x4d6d
    mov ax, 0x7b                     ; 0x4d6e
    push ax                          ; 0x4d71
    mov ax, 0x7a                     ; 0x4d72
    push ax                          ; 0x4d75
    mov ax, 0x12                     ; 0x4d76
    push ax                          ; 0x4d79
    push word [bp + 0x4]             ; 0x4d7a
    call loc_4c21                    ; 0x4d7d
    add sp, byte 0x0c                ; 0x4d80
    jmp near @..loc_4c82.l3          ; 0x4d83
jumptable_4e83_case_6:
    mov ax, 0x37                     ; 0x4d86
    push ax                          ; 0x4d89
    mov ax, 0x79                     ; 0x4d8a
    push ax                          ; 0x4d8d
    mov ax, 0x78                     ; 0x4d8e
    push ax                          ; 0x4d91
    mov ax, 0x1e                     ; 0x4d92
    push ax                          ; 0x4d95
    mov ax, 0x1d                     ; 0x4d96
    push ax                          ; 0x4d99
    push word [bp + 0x4]             ; 0x4d9a
    call loc_4c21                    ; 0x4d9d
    add sp, byte 0x0c                ; 0x4da0
    jmp near @..loc_4c82.l3          ; 0x4da3
jumptable_4e83_case_7:
    mov ax, 0xf1                     ; 0x4da6
    push ax                          ; 0x4da9
    mov ax, 0x82                     ; 0x4daa
    push ax                          ; 0x4dad
    mov ax, 0x7b                     ; 0x4dae
    push ax                          ; 0x4db1
    mov ax, 0x7a                     ; 0x4db2
    push ax                          ; 0x4db5
    mov ax, 1                        ; 0x4db6
    push ax                          ; 0x4db9
    push word [bp + 0x4]             ; 0x4dba
    call loc_4c21                    ; 0x4dbd
    add sp, byte 0x0c                ; 0x4dc0
    jmp near @..loc_4c82.l3          ; 0x4dc3
jumptable_4e83_case_8:
    mov ax, 0x8a                     ; 0x4dc6
    push ax                          ; 0x4dc9
    mov ax, 0x82                     ; 0x4dca
    push ax                          ; 0x4dcd
    mov ax, 0x7d                     ; 0x4dce
    push ax                          ; 0x4dd1
    mov ax, 0x7c                     ; 0x4dd2
    push ax                          ; 0x4dd5
    mov ax, 0x16                     ; 0x4dd6
    push ax                          ; 0x4dd9
    push word [bp + 0x4]             ; 0x4dda
    call loc_4c21                    ; 0x4ddd
    add sp, byte 0x0c                ; 0x4de0
    jmp near @..loc_4c82.l3          ; 0x4de3
jumptable_4e83_case_9:
    mov ax, 0xa3                     ; 0x4de6
    push ax                          ; 0x4de9
    mov ax, 0x82                     ; 0x4dea
    push ax                          ; 0x4ded
    mov ax, 0x7b                     ; 0x4dee
    push ax                          ; 0x4df1
    mov ax, 0x7a                     ; 0x4df2
    push ax                          ; 0x4df5
    mov ax, 0x18                     ; 0x4df6
    push ax                          ; 0x4df9
    push word [bp + 0x4]             ; 0x4dfa
    call loc_4c21                    ; 0x4dfd
    add sp, byte 0x0c                ; 0x4e00
    jmp near @..loc_4c82.l3          ; 0x4e03
jumptable_4e83_case_10:
    mov ax, 0x8f                     ; 0x4e06
    push ax                          ; 0x4e09
    mov ax, 0x83                     ; 0x4e0a
    push ax                          ; 0x4e0d
    mov ax, 0x86                     ; 0x4e0e
    push ax                          ; 0x4e11
    mov ax, 0x85                     ; 0x4e12
    push ax                          ; 0x4e15
    mov ax, 9                        ; 0x4e16
    push ax                          ; 0x4e19
    push word [bp + 0x4]             ; 0x4e1a
    call loc_4c21                    ; 0x4e1d
    add sp, byte 0x0c                ; 0x4e20
    jmp near @..loc_4c82.l3          ; 0x4e23
jumptable_4e83_case_11:
    mov ax, 0x82                     ; 0x4e26
    push ax                          ; 0x4e29
    mov ax, 0x7b                     ; 0x4e2a
    push ax                          ; 0x4e2d
    mov ax, 0x7a                     ; 0x4e2e
    push ax                          ; 0x4e31
    mov ax, 4                        ; 0x4e32
    push ax                          ; 0x4e35
    mov ax, 0xa                      ; 0x4e36
    push ax                          ; 0x4e39
    push word [bp + 0x4]             ; 0x4e3a
    call loc_4c21                    ; 0x4e3d
    add sp, byte 0x0c                ; 0x4e40
    jmp short @..loc_4c82.l3         ; 0x4e43
jumptable_4e83_case_12:
    mov ax, 0x82                     ; 0x4e45
    push ax                          ; 0x4e48
    mov ax, 0x7b                     ; 0x4e49
    push ax                          ; 0x4e4c
    mov ax, 0x7a                     ; 0x4e4d
    push ax                          ; 0x4e50
    mov ax, 0x2f                     ; 0x4e51
    push ax                          ; 0x4e54
    mov ax, 0x19                     ; 0x4e55
    push ax                          ; 0x4e58
    push word [bp + 0x4]             ; 0x4e59
    call loc_4c21                    ; 0x4e5c
    add sp, byte 0x0c                ; 0x4e5f
    jmp short @..loc_4c82.l3         ; 0x4e62
jumptable_4e83_case_13:
    mov ax, 0xa1                     ; 0x4e64
    push ax                          ; 0x4e67
    mov ax, 0x9f                     ; 0x4e68
    push ax                          ; 0x4e6b
    mov ax, 0x9e                     ; 0x4e6c
    push ax                          ; 0x4e6f
    mov ax, 0xa0                     ; 0x4e70
    push ax                          ; 0x4e73
    mov ax, 0x2f                     ; 0x4e74
    push ax                          ; 0x4e77
    push word [bp + 0x4]             ; 0x4e78
    call loc_4c21                    ; 0x4e7b
    add sp, byte 0x0c                ; 0x4e7e
    jmp short @..loc_4c82.l3         ; 0x4e81
jumptable_4e83:
    dw jumptable_4e83_case_0 - IMAGE_BASE + 0x5055 ; 0x4e83
    dw jumptable_4e83_case_1 - IMAGE_BASE + 0x5055 ; 0x4e85
    dw jumptable_4e83_case_2 - IMAGE_BASE + 0x5055 ; 0x4e87
    dw jumptable_4e83_case_3 - IMAGE_BASE + 0x5055 ; 0x4e89
    dw jumptable_4e83_case_4 - IMAGE_BASE + 0x5055 ; 0x4e8b
    dw jumptable_4e83_case_5 - IMAGE_BASE + 0x5055 ; 0x4e8d
    dw jumptable_4e83_case_6 - IMAGE_BASE + 0x5055 ; 0x4e8f
    dw jumptable_4e83_case_7 - IMAGE_BASE + 0x5055 ; 0x4e91
    dw jumptable_4e83_case_8 - IMAGE_BASE + 0x5055 ; 0x4e93
    dw jumptable_4e83_case_9 - IMAGE_BASE + 0x5055 ; 0x4e95
    dw jumptable_4e83_case_10 - IMAGE_BASE + 0x5055 ; 0x4e97
    dw jumptable_4e83_case_11 - IMAGE_BASE + 0x5055 ; 0x4e99
    dw jumptable_4e83_case_12 - IMAGE_BASE + 0x5055 ; 0x4e9b
    dw jumptable_4e83_case_13 - IMAGE_BASE + 0x5055 ; 0x4e9d
@..loc_4c82.l2:
    cmp ax, strict word 0xe          ; 0x4e9f
    jae short @..loc_4c82.l3         ; 0x4ea2
    xchg bx, ax                      ; 0x4ea4
    shl bx, 1                        ; 0x4ea5
    jmp [cs:bx - 0x6136]             ; 0x4ea7
@..loc_4c82.l3:
    ret                              ; 0x4eac
loc_4ead:
    mov ax, 0                        ; 0x4ead
    call ds_aztec_csav               ; 0x4eb0
    mov ax, 0x7d                     ; 0x4eb3
    push ax                          ; 0x4eb6
    mov ax, 0                        ; 0x4eb7
    push ax                          ; 0x4eba
    mov ax, 0x248                    ; 0x4ebb
    imul word [bp + 0x4]             ; 0x4ebe
    push ax                          ; 0x4ec1
    mov ax, 0xe                      ; 0x4ec2
    imul word [bp + 0x6]             ; 0x4ec5
    mov cx, ax                       ; 0x4ec8
    pop ax                           ; 0x4eca
    add ax, cx                       ; 0x4ecb
    add ax, word [bp + 0x8]          ; 0x4ecd
    mov bx, ax                       ; 0x4ed0
    mov al, byte [bx + 0x5d8e]       ; 0x4ed2
    sub ah, ah                       ; 0x4ed6
    add ax, word [bp + 0xa]          ; 0x4ed8
    push ax                          ; 0x4edb
    call ds_app_0a09                 ; 0x4edc
    add sp, byte 6                   ; 0x4edf
    push ax                          ; 0x4ee2
    mov ax, 0x248                    ; 0x4ee3
    imul word [bp + 0x4]             ; 0x4ee6
    mov cx, ax                       ; 0x4ee9
    mov ax, 0xe                      ; 0x4eeb
    imul word [bp + 0x6]             ; 0x4eee
    mov dx, ax                       ; 0x4ef1
    add cx, ax                       ; 0x4ef3
    add cx, word [bp + 0x8]          ; 0x4ef5
    mov bx, cx                       ; 0x4ef8
    pop ax                           ; 0x4efa
    mov byte [bx + 0x5d8e], al       ; 0x4efb
    ret                              ; 0x4eff
