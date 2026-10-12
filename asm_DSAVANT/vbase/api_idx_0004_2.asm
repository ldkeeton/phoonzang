api_idx_0004_2:
    mov ax, 0xfffc                   ; 0x1c80
    call ds_aztec_csav               ; 0x1c83
    mov ax, 0x248                    ; 0x1c86
    imul word [bp + 0x4]             ; 0x1c89
    mov bx, ax                       ; 0x1c8c
    mov al, byte [bx + 0x5d67]       ; 0x1c8e
    sub ah, ah                       ; 0x1c92
    push ax                          ; 0x1c94
    mov al, byte [bx + 0x5d66]       ; 0x1c95
    sub ah, ah                       ; 0x1c99
    mov cx, ax                       ; 0x1c9b
    shl ax, 1                        ; 0x1c9d
    mov cx, ax                       ; 0x1c9f
    pop ax                           ; 0x1ca1
    add ax, cx                       ; 0x1ca2
    mov cx, 3                        ; 0x1ca4
    cwd                              ; 0x1ca7
    idiv cx                          ; 0x1ca8
    mov word [bp - 0x0002], ax       ; 0x1caa
    mov word [bp - 0x0004], 0        ; 0x1cad
    cmp ax, strict word 0xd          ; 0x1cb2
    jle short @..api_idx_0004_2.l1   ; 0x1cb5
    inc word [bp - 0x0004]           ; 0x1cb7
@..api_idx_0004_2.l1:
    cmp ax, strict word 0x10         ; 0x1cba
    jle short @..api_idx_0004_2.l2   ; 0x1cbd
    inc word [bp - 0x0004]           ; 0x1cbf
@..api_idx_0004_2.l2:
    cmp byte [bx + 0x5e2b], 5        ; 0x1cc2
    jne short @..api_idx_0004_2.l3   ; 0x1cc7
    inc word [bp - 0x0004]           ; 0x1cc9
@..api_idx_0004_2.l3:
    cmp byte [bx + 0x5e2b], 6        ; 0x1ccc
    jne short @..api_idx_0004_2.l4   ; 0x1cd1
    dec word [bp - 0x0004]           ; 0x1cd3
@..api_idx_0004_2.l4:
    mov al, byte [bx + 0x5e2d]       ; 0x1cd6
    sub ah, ah                       ; 0x1cda
    jmp near @..api_idx_0004_2.l5    ; 0x1cdc
jumptable_1ee4_case_0:
    mov ax, word [bp - 0x0004]       ; 0x1cdf
    inc ax                           ; 0x1ce2
    push ax                          ; 0x1ce3
    push ax                          ; 0x1ce4
    push ax                          ; 0x1ce5
    push ax                          ; 0x1ce6
    push ax                          ; 0x1ce7
    push ax                          ; 0x1ce8
    push word [bp + 0x4]             ; 0x1ce9
    call loc_1c09                    ; 0x1cec
    add sp, byte 0x0e                ; 0x1cef
    jmp near @..api_idx_0004_2.l6    ; 0x1cf2
jumptable_1ee4_case_1:
    mov ax, 0x248                    ; 0x1cf5
    imul word [bp + 0x4]             ; 0x1cf8
    mov bx, ax                       ; 0x1cfb
    mov byte [bx + 0x5d50], 2        ; 0x1cfd
    mov ax, word [bp - 0x0004]       ; 0x1d02
    inc ax                           ; 0x1d05
    inc ax                           ; 0x1d06
    inc ax                           ; 0x1d07
    push ax                          ; 0x1d08
    mov ax, word [bp - 0x0004]       ; 0x1d09
    inc ax                           ; 0x1d0c
    inc ax                           ; 0x1d0d
    push ax                          ; 0x1d0e
    push ax                          ; 0x1d0f
    push ax                          ; 0x1d10
    mov ax, word [bp - 0x0004]       ; 0x1d11
    inc ax                           ; 0x1d14
    inc ax                           ; 0x1d15
    inc ax                           ; 0x1d16
    push ax                          ; 0x1d17
    push ax                          ; 0x1d18
    push word [bp + 0x4]             ; 0x1d19
    call loc_1c09                    ; 0x1d1c
    add sp, byte 0x0e                ; 0x1d1f
    jmp near @..api_idx_0004_2.l6    ; 0x1d22
jumptable_1ee4_case_2:
    mov ax, 0x248                    ; 0x1d25
    imul word [bp + 0x4]             ; 0x1d28
    mov bx, ax                       ; 0x1d2b
    mov byte [bx + 0x5d51], 2        ; 0x1d2d
    mov ax, word [bp - 0x0004]       ; 0x1d32
    inc ax                           ; 0x1d35
    inc ax                           ; 0x1d36
    inc ax                           ; 0x1d37
    push ax                          ; 0x1d38
    push ax                          ; 0x1d39
    mov ax, word [bp - 0x0004]       ; 0x1d3a
    inc ax                           ; 0x1d3d
    inc ax                           ; 0x1d3e
    push ax                          ; 0x1d3f
    push ax                          ; 0x1d40
    mov ax, word [bp - 0x0004]       ; 0x1d41
    inc ax                           ; 0x1d44
    inc ax                           ; 0x1d45
    inc ax                           ; 0x1d46
    push ax                          ; 0x1d47
    mov ax, word [bp - 0x0004]       ; 0x1d48
    inc ax                           ; 0x1d4b
    inc ax                           ; 0x1d4c
    push ax                          ; 0x1d4d
    push word [bp + 0x4]             ; 0x1d4e
    call loc_1c09                    ; 0x1d51
    add sp, byte 0x0e                ; 0x1d54
    jmp near @..api_idx_0004_2.l6    ; 0x1d57
jumptable_1ee4_case_4:
    mov ax, word [bp - 0x0004]       ; 0x1d5a
    inc ax                           ; 0x1d5d
    push ax                          ; 0x1d5e
    mov ax, word [bp - 0x0004]       ; 0x1d5f
    inc ax                           ; 0x1d62
    inc ax                           ; 0x1d63
    push ax                          ; 0x1d64
    push ax                          ; 0x1d65
    push ax                          ; 0x1d66
    mov ax, word [bp - 0x0004]       ; 0x1d67
    inc ax                           ; 0x1d6a
    push ax                          ; 0x1d6b
    push ax                          ; 0x1d6c
    push word [bp + 0x4]             ; 0x1d6d
    call loc_1c09                    ; 0x1d70
    add sp, byte 0x0e                ; 0x1d73
    jmp near @..api_idx_0004_2.l6    ; 0x1d76
jumptable_1ee4_case_5:
    mov ax, 0x248                    ; 0x1d79
    imul word [bp + 0x4]             ; 0x1d7c
    mov bx, ax                       ; 0x1d7f
    mov byte [bx + 0x5d52], 2        ; 0x1d81
    mov ax, word [bp - 0x0004]       ; 0x1d86
    inc ax                           ; 0x1d89
    inc ax                           ; 0x1d8a
    push ax                          ; 0x1d8b
    push ax                          ; 0x1d8c
    mov ax, word [bp - 0x0004]       ; 0x1d8d
    inc ax                           ; 0x1d90
    inc ax                           ; 0x1d91
    inc ax                           ; 0x1d92
    push ax                          ; 0x1d93
    push ax                          ; 0x1d94
    mov ax, word [bp - 0x0004]       ; 0x1d95
    inc ax                           ; 0x1d98
    inc ax                           ; 0x1d99
    push ax                          ; 0x1d9a
    mov ax, word [bp - 0x0004]       ; 0x1d9b
    inc ax                           ; 0x1d9e
    inc ax                           ; 0x1d9f
    inc ax                           ; 0x1da0
    push ax                          ; 0x1da1
    push word [bp + 0x4]             ; 0x1da2
    call loc_1c09                    ; 0x1da5
    add sp, byte 0x0e                ; 0x1da8
    jmp near @..api_idx_0004_2.l6    ; 0x1dab
jumptable_1ee4_case_6:
    mov ax, word [bp - 0x0004]       ; 0x1dae
    inc ax                           ; 0x1db1
    push ax                          ; 0x1db2
    mov ax, word [bp - 0x0004]       ; 0x1db3
    inc ax                           ; 0x1db6
    inc ax                           ; 0x1db7
    push ax                          ; 0x1db8
    mov ax, word [bp - 0x0004]       ; 0x1db9
    inc ax                           ; 0x1dbc
    push ax                          ; 0x1dbd
    push ax                          ; 0x1dbe
    mov ax, word [bp - 0x0004]       ; 0x1dbf
    inc ax                           ; 0x1dc2
    inc ax                           ; 0x1dc3
    push ax                          ; 0x1dc4
    push ax                          ; 0x1dc5
    push word [bp + 0x4]             ; 0x1dc6
    call loc_1c09                    ; 0x1dc9
    add sp, byte 0x0e                ; 0x1dcc
    jmp near @..api_idx_0004_2.l6    ; 0x1dcf
jumptable_1ee4_case_7:
    mov ax, 0x248                    ; 0x1dd2
    imul word [bp + 0x4]             ; 0x1dd5
    mov bx, ax                       ; 0x1dd8
    mov byte [bx + 0x5d53], 2        ; 0x1dda
    mov ax, word [bp - 0x0004]       ; 0x1ddf
    inc ax                           ; 0x1de2
    inc ax                           ; 0x1de3
    push ax                          ; 0x1de4
    mov ax, word [bp - 0x0004]       ; 0x1de5
    add ax, strict word 4            ; 0x1de8
    push ax                          ; 0x1deb
    mov ax, word [bp - 0x0004]       ; 0x1dec
    inc ax                           ; 0x1def
    inc ax                           ; 0x1df0
    push ax                          ; 0x1df1
    push ax                          ; 0x1df2
    push ax                          ; 0x1df3
    mov ax, word [bp - 0x0004]       ; 0x1df4
    inc ax                           ; 0x1df7
    inc ax                           ; 0x1df8
    inc ax                           ; 0x1df9
    push ax                          ; 0x1dfa
    push word [bp + 0x4]             ; 0x1dfb
    call loc_1c09                    ; 0x1dfe
    add sp, byte 0x0e                ; 0x1e01
    jmp near @..api_idx_0004_2.l6    ; 0x1e04
jumptable_1ee4_case_8:
    mov ax, word [bp - 0x0004]       ; 0x1e07
    inc ax                           ; 0x1e0a
    inc ax                           ; 0x1e0b
    push ax                          ; 0x1e0c
    mov ax, word [bp - 0x0004]       ; 0x1e0d
    inc ax                           ; 0x1e10
    push ax                          ; 0x1e11
    push ax                          ; 0x1e12
    mov ax, word [bp - 0x0004]       ; 0x1e13
    inc ax                           ; 0x1e16
    inc ax                           ; 0x1e17
    push ax                          ; 0x1e18
    push ax                          ; 0x1e19
    mov ax, word [bp - 0x0004]       ; 0x1e1a
    inc ax                           ; 0x1e1d
    push ax                          ; 0x1e1e
    push word [bp + 0x4]             ; 0x1e1f
    call loc_1c09                    ; 0x1e22
    add sp, byte 0x0e                ; 0x1e25
    jmp near @..api_idx_0004_2.l6    ; 0x1e28
jumptable_1ee4_case_9:
    mov ax, 0x248                    ; 0x1e2b
    imul word [bp + 0x4]             ; 0x1e2e
    mov bx, ax                       ; 0x1e31
    mov byte [bx + 0x5d50], 1        ; 0x1e33
    mov byte [bx + 0x5d51], 1        ; 0x1e38
    mov ax, word [bp - 0x0004]       ; 0x1e3d
    inc ax                           ; 0x1e40
    inc ax                           ; 0x1e41
    inc ax                           ; 0x1e42
    push ax                          ; 0x1e43
    mov ax, word [bp - 0x0004]       ; 0x1e44
    inc ax                           ; 0x1e47
    inc ax                           ; 0x1e48
    push ax                          ; 0x1e49
    push ax                          ; 0x1e4a
    push ax                          ; 0x1e4b
    push ax                          ; 0x1e4c
    push ax                          ; 0x1e4d
    push word [bp + 0x4]             ; 0x1e4e
    call loc_1c09                    ; 0x1e51
    add sp, byte 0x0e                ; 0x1e54
    jmp near @..api_idx_0004_2.l6    ; 0x1e57
jumptable_1ee4_case_10:
    mov ax, word [bp - 0x0004]       ; 0x1e5a
    inc ax                           ; 0x1e5d
    inc ax                           ; 0x1e5e
    push ax                          ; 0x1e5f
    mov ax, word [bp - 0x0004]       ; 0x1e60
    inc ax                           ; 0x1e63
    push ax                          ; 0x1e64
    push ax                          ; 0x1e65
    mov ax, word [bp - 0x0004]       ; 0x1e66
    inc ax                           ; 0x1e69
    inc ax                           ; 0x1e6a
    push ax                          ; 0x1e6b
    push ax                          ; 0x1e6c
    mov ax, word [bp - 0x0004]       ; 0x1e6d
    inc ax                           ; 0x1e70
    push ax                          ; 0x1e71
    push word [bp + 0x4]             ; 0x1e72
    call loc_1c09                    ; 0x1e75
    add sp, byte 0x0e                ; 0x1e78
    jmp near @..api_idx_0004_2.l6    ; 0x1e7b
jumptable_1ee4_case_11:
    mov ax, word [bp - 0x0004]       ; 0x1e7e
    inc ax                           ; 0x1e81
    inc ax                           ; 0x1e82
    push ax                          ; 0x1e83
    mov ax, word [bp - 0x0004]       ; 0x1e84
    inc ax                           ; 0x1e87
    push ax                          ; 0x1e88
    push ax                          ; 0x1e89
    push ax                          ; 0x1e8a
    mov ax, word [bp - 0x0004]       ; 0x1e8b
    inc ax                           ; 0x1e8e
    inc ax                           ; 0x1e8f
    push ax                          ; 0x1e90
    push ax                          ; 0x1e91
    push word [bp + 0x4]             ; 0x1e92
    call loc_1c09                    ; 0x1e95
    add sp, byte 0x0e                ; 0x1e98
    jmp short @..api_idx_0004_2.l6   ; 0x1e9b
jumptable_1ee4_case_12:
    mov ax, word [bp - 0x0004]       ; 0x1e9d
    inc ax                           ; 0x1ea0
    push ax                          ; 0x1ea1
    mov ax, word [bp - 0x0004]       ; 0x1ea2
    inc ax                           ; 0x1ea5
    inc ax                           ; 0x1ea6
    inc ax                           ; 0x1ea7
    push ax                          ; 0x1ea8
    mov ax, word [bp - 0x0004]       ; 0x1ea9
    inc ax                           ; 0x1eac
    push ax                          ; 0x1ead
    push ax                          ; 0x1eae
    push ax                          ; 0x1eaf
    mov ax, word [bp - 0x0004]       ; 0x1eb0
    inc ax                           ; 0x1eb3
    inc ax                           ; 0x1eb4
    push ax                          ; 0x1eb5
    push word [bp + 0x4]             ; 0x1eb6
    call loc_1c09                    ; 0x1eb9
    add sp, byte 0x0e                ; 0x1ebc
    jmp short @..api_idx_0004_2.l6   ; 0x1ebf
jumptable_1ee4_case_13:
    mov ax, word [bp - 0x0004]       ; 0x1ec1
    inc ax                           ; 0x1ec4
    push ax                          ; 0x1ec5
    push ax                          ; 0x1ec6
    mov ax, word [bp - 0x0004]       ; 0x1ec7
    inc ax                           ; 0x1eca
    inc ax                           ; 0x1ecb
    push ax                          ; 0x1ecc
    push ax                          ; 0x1ecd
    mov ax, word [bp - 0x0004]       ; 0x1ece
    inc ax                           ; 0x1ed1
    push ax                          ; 0x1ed2
    mov ax, word [bp - 0x0004]       ; 0x1ed3
    inc ax                           ; 0x1ed6
    inc ax                           ; 0x1ed7
    push ax                          ; 0x1ed8
    push word [bp + 0x4]             ; 0x1ed9
    call loc_1c09                    ; 0x1edc
    add sp, byte 0x0e                ; 0x1edf
    jmp short @..api_idx_0004_2.l6   ; 0x1ee2
jumptable_1ee4:
    dw jumptable_1ee4_case_0 - IMAGE_BASE + 0x5055 ; 0x1ee4
    dw jumptable_1ee4_case_1 - IMAGE_BASE + 0x5055 ; 0x1ee6
    dw jumptable_1ee4_case_2 - IMAGE_BASE + 0x5055 ; 0x1ee8
    dw jumptable_1ee4_case_0 - IMAGE_BASE + 0x5055 ; 0x1eea
    dw jumptable_1ee4_case_4 - IMAGE_BASE + 0x5055 ; 0x1eec
    dw jumptable_1ee4_case_5 - IMAGE_BASE + 0x5055 ; 0x1eee
    dw jumptable_1ee4_case_6 - IMAGE_BASE + 0x5055 ; 0x1ef0
    dw jumptable_1ee4_case_7 - IMAGE_BASE + 0x5055 ; 0x1ef2
    dw jumptable_1ee4_case_8 - IMAGE_BASE + 0x5055 ; 0x1ef4
    dw jumptable_1ee4_case_9 - IMAGE_BASE + 0x5055 ; 0x1ef6
    dw jumptable_1ee4_case_10 - IMAGE_BASE + 0x5055 ; 0x1ef8
    dw jumptable_1ee4_case_11 - IMAGE_BASE + 0x5055 ; 0x1efa
    dw jumptable_1ee4_case_12 - IMAGE_BASE + 0x5055 ; 0x1efc
    dw jumptable_1ee4_case_13 - IMAGE_BASE + 0x5055 ; 0x1efe
@..api_idx_0004_2.l5:
    cmp ax, strict word 0xe          ; 0x1f00
    jae short @..api_idx_0004_2.l6   ; 0x1f03
    xchg bx, ax                      ; 0x1f05
    shl bx, 1                        ; 0x1f06
    jmp [cs:bx + 0x6f2b]             ; 0x1f08
@..api_idx_0004_2.l6:
    ret                              ; 0x1f0d
loc_1f0e:
    mov ax, 0                        ; 0x1f0e
    call ds_aztec_csav               ; 0x1f11
    mov al, byte [bp + 0x4]          ; 0x1f14
    mov byte [bss_89df], al          ; 0x1f17
    mov byte [bss_89ea], al          ; 0x1f1a
    mov al, byte [bp + 0x6]          ; 0x1f1d
    mov byte [bss_89e0], al          ; 0x1f20
    mov byte [bss_89f6], al          ; 0x1f23
    mov al, byte [bp + 0x8]          ; 0x1f26
    mov byte [bss_89e1], al          ; 0x1f29
    mov byte [bss_8a02], al          ; 0x1f2c
    mov al, byte [bp + 0xa]          ; 0x1f2f
    mov byte [bss_89e2], al          ; 0x1f32
    mov byte [bss_8a0e], al          ; 0x1f35
    mov al, byte [bp + 0xc]          ; 0x1f38
    mov byte [bss_89e3], al          ; 0x1f3b
    mov byte [bss_8a1a], al          ; 0x1f3e
    mov al, byte [bp + 0xe]          ; 0x1f41
    mov byte [bss_89e4], al          ; 0x1f44
    mov byte [bss_8a26], al          ; 0x1f47
    mov al, byte [bp + 0x10]         ; 0x1f4a
    mov byte [bss_89e5], al          ; 0x1f4d
    mov byte [bss_8a32], al          ; 0x1f50
    mov al, byte [bp + 0x12]         ; 0x1f53
    mov byte [bss_89e6], al          ; 0x1f56
    mov byte [bss_8a3e], al          ; 0x1f59
    mov al, byte [bp + 0x14]         ; 0x1f5c
    mov byte [bss_89e7], al          ; 0x1f5f
    mov byte [bss_8a4a], al          ; 0x1f62
    mov al, byte [bp + 0x16]         ; 0x1f65
    mov byte [bss_89e8], al          ; 0x1f68
    mov byte [bss_8a56], al          ; 0x1f6b
    ret                              ; 0x1f6e
