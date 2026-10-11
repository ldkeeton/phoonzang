api_idx_002c_2:
    mov ax, 0xffd4                   ; 0x6a3f
    call ds_dispatch_f40b            ; 0x6a42
    mov ax, 1                        ; 0x6a45
    push ax                          ; 0x6a48
    mov ax, 2                        ; 0x6a49
    push ax                          ; 0x6a4c
    call ds_dispatch_d61c            ; 0x6a4d
    add sp, byte 4                   ; 0x6a50
    mov ax, 2                        ; 0x6a53
    push ax                          ; 0x6a56
    mov ax, 3                        ; 0x6a57
    push ax                          ; 0x6a5a
    call ds_dispatch_d61c            ; 0x6a5b
    add sp, byte 4                   ; 0x6a5e
    mov ax, 0                        ; 0x6a61
    push ax                          ; 0x6a64
    mov ax, 2                        ; 0x6a65
    push ax                          ; 0x6a68
    mov ax, 0xc7                     ; 0x6a69
    push ax                          ; 0x6a6c
    mov ax, 0x13f                    ; 0x6a6d
    push ax                          ; 0x6a70
    mov ax, 0                        ; 0x6a71
    push ax                          ; 0x6a74
    push ax                          ; 0x6a75
    call ds_dispatch_e935            ; 0x6a76
    add sp, byte 0x0c                ; 0x6a79
    mov word [bp - 0x000c], dx       ; 0x6a7c
    mov word [bp - 0x000e], ax       ; 0x6a7f
    mov ax, 0                        ; 0x6a82
    push ax                          ; 0x6a85
    mov ax, 0x950c                   ; 0x6a86
    push ax                          ; 0x6a89
    call api_idx_0002                ; 0x6a8a
    add sp, byte 4                   ; 0x6a8d
    mov word [dseg_95aa], 0x14       ; 0x6a90
    mov word [dseg_95ac], 0          ; 0x6a96
    mov word [dseg_95ae], 0          ; 0x6a9c
    mov ax, 0                        ; 0x6aa2
    push ax                          ; 0x6aa5
    mov ax, 2                        ; 0x6aa6
    push ax                          ; 0x6aa9
    mov ax, 0x67                     ; 0x6aaa
    push ax                          ; 0x6aad
    mov ax, 0xa2                     ; 0x6aae
    push ax                          ; 0x6ab1
    mov ax, 6                        ; 0x6ab2
    push ax                          ; 0x6ab5
    push ax                          ; 0x6ab6
    call ds_dispatch_e935            ; 0x6ab7
    add sp, byte 0x0c                ; 0x6aba
    mov word [dseg_9526], dx         ; 0x6abd
    mov word [dseg_9524], ax         ; 0x6ac1
    mov ax, 0                        ; 0x6ac4
    push ax                          ; 0x6ac7
    mov ax, 2                        ; 0x6ac8
    push ax                          ; 0x6acb
    mov ax, 0x16                     ; 0x6acc
    push ax                          ; 0x6acf
    mov ax, 0x136                    ; 0x6ad0
    push ax                          ; 0x6ad3
    mov ax, 6                        ; 0x6ad4
    push ax                          ; 0x6ad7
    mov ax, 0xe4                     ; 0x6ad8
    push ax                          ; 0x6adb
    call ds_dispatch_e935            ; 0x6adc
    add sp, byte 0x0c                ; 0x6adf
    mov word [dseg_952a], dx         ; 0x6ae2
    mov word [dseg_9528], ax         ; 0x6ae6
    mov ax, 0                        ; 0x6ae9
    push ax                          ; 0x6aec
    mov ax, 2                        ; 0x6aed
    push ax                          ; 0x6af0
    mov ax, 0xb6                     ; 0x6af1
    push ax                          ; 0x6af4
    mov ax, 0x9f                     ; 0x6af5
    push ax                          ; 0x6af8
    mov ax, 0x70                     ; 0x6af9
    push ax                          ; 0x6afc
    mov ax, 1                        ; 0x6afd
    push ax                          ; 0x6b00
    call ds_dispatch_e935            ; 0x6b01
    add sp, byte 0x0c                ; 0x6b04
    mov word [dseg_952e], dx         ; 0x6b07
    mov word [dseg_952c], ax         ; 0x6b0b
    mov ax, 0                        ; 0x6b0e
    push ax                          ; 0x6b11
    mov ax, 2                        ; 0x6b12
    push ax                          ; 0x6b15
    mov ax, 0x23                     ; 0x6b16
    push ax                          ; 0x6b19
    mov ax, 0x13f                    ; 0x6b1a
    push ax                          ; 0x6b1d
    mov ax, 0x1e                     ; 0x6b1e
    push ax                          ; 0x6b21
    mov ax, 0xdc                     ; 0x6b22
    push ax                          ; 0x6b25
    call ds_dispatch_e935            ; 0x6b26
    add sp, byte 0x0c                ; 0x6b29
    mov word [dseg_9532], dx         ; 0x6b2c
    mov word [dseg_9530], ax         ; 0x6b30
    mov ax, 0                        ; 0x6b33
    push ax                          ; 0x6b36
    mov ax, 2                        ; 0x6b37
    push ax                          ; 0x6b3a
    mov ax, 0x74                     ; 0x6b3b
    push ax                          ; 0x6b3e
    mov ax, 0x136                    ; 0x6b3f
    push ax                          ; 0x6b42
    mov ax, 0x2e                     ; 0x6b43
    push ax                          ; 0x6b46
    mov ax, 0x114                    ; 0x6b47
    push ax                          ; 0x6b4a
    call ds_dispatch_e935            ; 0x6b4b
    add sp, byte 0x0c                ; 0x6b4e
    mov word [dseg_9536], dx         ; 0x6b51
    mov word [dseg_9534], ax         ; 0x6b55
    mov ax, 0                        ; 0x6b58
    push ax                          ; 0x6b5b
    mov ax, 2                        ; 0x6b5c
    push ax                          ; 0x6b5f
    mov ax, 0xbf                     ; 0x6b60
    push ax                          ; 0x6b63
    mov ax, 0x13f                    ; 0x6b64
    push ax                          ; 0x6b67
    mov ax, 0x7e                     ; 0x6b68
    push ax                          ; 0x6b6b
    mov ax, 0xb8                     ; 0x6b6c
    push ax                          ; 0x6b6f
    call ds_dispatch_e935            ; 0x6b70
    add sp, byte 0x0c                ; 0x6b73
    mov word [dseg_953a], dx         ; 0x6b76
    mov word [dseg_9538], ax         ; 0x6b7a
    mov ax, 0                        ; 0x6b7d
    push ax                          ; 0x6b80
    mov ax, 2                        ; 0x6b81
    push ax                          ; 0x6b84
    mov ax, 0x60                     ; 0x6b85
    push ax                          ; 0x6b88
    mov ax, 0xa8                     ; 0x6b89
    push ax                          ; 0x6b8c
    mov ax, 0x23                     ; 0x6b8d
    push ax                          ; 0x6b90
    mov ax, 0x66                     ; 0x6b91
    push ax                          ; 0x6b94
    call ds_dispatch_e935            ; 0x6b95
    add sp, byte 0x0c                ; 0x6b98
    mov word [dseg_953e], dx         ; 0x6b9b
    mov word [dseg_953c], ax         ; 0x6b9f
    mov ax, 0                        ; 0x6ba2
    push ax                          ; 0x6ba5
    mov ax, 2                        ; 0x6ba6
    push ax                          ; 0x6ba9
    mov ax, 0x41                     ; 0x6baa
    push ax                          ; 0x6bad
    mov ax, 0x65                     ; 0x6bae
    push ax                          ; 0x6bb1
    mov ax, 0x19                     ; 0x6bb2
    push ax                          ; 0x6bb5
    mov ax, 0x5a                     ; 0x6bb6
    push ax                          ; 0x6bb9
    call ds_dispatch_e935            ; 0x6bba
    add sp, byte 0x0c                ; 0x6bbd
    mov word [dseg_9542], dx         ; 0x6bc0
    mov word [dseg_9540], ax         ; 0x6bc4
    mov ax, 0xf                      ; 0x6bc7
    push ax                          ; 0x6bca
    mov ax, 0xb                      ; 0x6bcb
    push ax                          ; 0x6bce
    call ds_dispatch_d61c            ; 0x6bcf
    add sp, byte 4                   ; 0x6bd2
    call ds_dispatch_d9a6            ; 0x6bd5
    mov word [dseg_8450], ax         ; 0x6bd8
    test ax, ax                      ; 0x6bdb
    je short @..api_idx_002c_2.l1    ; 0x6bdd
    mov ax, 0                        ; 0x6bdf
    push ax                          ; 0x6be2
    mov ax, 1                        ; 0x6be3
    push ax                          ; 0x6be6
    call ds_dispatch_d7e7            ; 0x6be7
    add sp, byte 4                   ; 0x6bea
    mov ax, word [dseg_010e]         ; 0x6bed
    mov word [dseg_844e], ax         ; 0x6bf0
    mov ax, 1                        ; 0x6bf3
    push ax                          ; 0x6bf6
    push word [dseg_844e]            ; 0x6bf7
    mov ax, 0                        ; 0x6bfb
    push ax                          ; 0x6bfe
    call ds_dispatch_d964            ; 0x6bff
    add sp, byte 6                   ; 0x6c02
    mov word [dseg_844c], ax         ; 0x6c05
@..api_idx_002c_2.l1:
    mov word [bp - 0x0002], 0        ; 0x6c08
@..api_idx_002c_2.l2:
    mov ax, 0xa                      ; 0x6c0d
    imul word [bp - 0x0002]          ; 0x6c10
    add ax, 0x9544                   ; 0x6c13
    push ax                          ; 0x6c16
    mov ax, word [bp - 0x0002]       ; 0x6c17
    add ax, 0xcc                     ; 0x6c1a
    push ax                          ; 0x6c1d
    call ds_dispatch_b53b            ; 0x6c1e
    add sp, byte 4                   ; 0x6c21
    inc word [bp - 0x0002]           ; 0x6c24
    mov ax, word [bp - 0x0002]       ; 0x6c27
    cmp ax, strict word 8            ; 0x6c2a
    jl short @..api_idx_002c_2.l2    ; 0x6c2d
    mov ax, 0x9596                   ; 0x6c2f
    push ax                          ; 0x6c32
    mov ax, 0x453                    ; 0x6c33
    push ax                          ; 0x6c36
    call ds_dispatch_b53b            ; 0x6c37
    add sp, byte 4                   ; 0x6c3a
    mov word [bp - 0x0002], 0        ; 0x6c3d
@..api_idx_002c_2.l3:
    mov ax, word [bp - 0x0002]       ; 0x6c42
    shl ax, 1                        ; 0x6c45
    mov bx, ax                       ; 0x6c47
    mov word [bx - 0x7cf2], 0        ; 0x6c49
    inc word [bp - 0x0002]           ; 0x6c4f
    mov ax, word [bp - 0x0002]       ; 0x6c52
    cmp ax, strict word 6            ; 0x6c55
    jl short @..api_idx_002c_2.l3    ; 0x6c58
    mov word [dseg_976c], 7          ; 0x6c5a
    les bx, word [dseg_0002]         ; 0x6c60
    mov ax, word [es:bx]             ; 0x6c64
    mov dx, word [es:bx + 0x2]       ; 0x6c67
    mov word [dseg_908c], dx         ; 0x6c6b
    mov word [dseg_908a], ax         ; 0x6c6f
@..api_idx_002c_2.l4:
    mov word [dseg_95aa], 0x14       ; 0x6c72
    mov word [dseg_95ac], 0          ; 0x6c78
    mov ax, 0                        ; 0x6c7e
    push ax                          ; 0x6c81
    push ax                          ; 0x6c82
    push word [dseg_9526]            ; 0x6c83
    push word [dseg_9524]            ; 0x6c87
    call ds_dispatch_e942            ; 0x6c8b
    add sp, byte 8                   ; 0x6c8e
    mov ax, 0                        ; 0x6c91
    push ax                          ; 0x6c94
    push ax                          ; 0x6c95
    push word [dseg_952a]            ; 0x6c96
    push word [dseg_9528]            ; 0x6c9a
    call ds_dispatch_e942            ; 0x6c9e
    add sp, byte 8                   ; 0x6ca1
    mov ax, 0                        ; 0x6ca4
    push ax                          ; 0x6ca7
    push ax                          ; 0x6ca8
    push word [dseg_952e]            ; 0x6ca9
    push word [dseg_952c]            ; 0x6cad
    call ds_dispatch_e942            ; 0x6cb1
    add sp, byte 8                   ; 0x6cb4
    mov ax, 0                        ; 0x6cb7
    push ax                          ; 0x6cba
    push ax                          ; 0x6cbb
    push word [dseg_9532]            ; 0x6cbc
    push word [dseg_9530]            ; 0x6cc0
    call ds_dispatch_e942            ; 0x6cc4
    add sp, byte 8                   ; 0x6cc7
    mov ax, 0                        ; 0x6cca
    push ax                          ; 0x6ccd
    push ax                          ; 0x6cce
    push word [dseg_9536]            ; 0x6ccf
    push word [dseg_9534]            ; 0x6cd3
    call ds_dispatch_e942            ; 0x6cd7
    add sp, byte 8                   ; 0x6cda
    mov ax, 0                        ; 0x6cdd
    push ax                          ; 0x6ce0
    push ax                          ; 0x6ce1
    push word [dseg_953a]            ; 0x6ce2
    push word [dseg_9538]            ; 0x6ce6
    call ds_dispatch_e942            ; 0x6cea
    add sp, byte 8                   ; 0x6ced
    mov word [bp - 0x0002], 0        ; 0x6cf0
@..api_idx_002c_2.l5:
    mov ax, word [bp - 0x0002]       ; 0x6cf5
    shl ax, 1                        ; 0x6cf8
    mov bx, ax                       ; 0x6cfa
    add bx, bp                       ; 0x6cfc
    mov word [bx - 0x002c], 0        ; 0x6cfe
    inc word [bp - 0x0002]           ; 0x6d03
    mov ax, word [bp - 0x0002]       ; 0x6d06
    cmp ax, strict word 5            ; 0x6d09
    jl short @..api_idx_002c_2.l5    ; 0x6d0c
    mov word [bp - 0x0022], 1        ; 0x6d0e
    mov word [bp - 0x0020], 0xffff   ; 0x6d13
    call api_idx_0002_13             ; 0x6d18
    mov word [bp - 0x000a], ax       ; 0x6d1b
    cmp ax, strict word 0xffff       ; 0x6d1e
    je short @..api_idx_002c_2.l6    ; 0x6d21
    mov word [bp - 0x002c], 1        ; 0x6d23
@..api_idx_002c_2.l6:
    mov word [bp - 0x0002], 0        ; 0x6d28
    jmp short @..api_idx_002c_2.l9   ; 0x6d2d
@..api_idx_002c_2.l7:
    mov bx, word [bp - 0x0002]       ; 0x6d2f
    cmp byte [bx - 0x6f8a], 1        ; 0x6d32
    jne short @..api_idx_002c_2.l8   ; 0x6d37
    mov word [bp - 0x002a], 1        ; 0x6d39
    mov word [bp - 0x0028], 1        ; 0x6d3e
    mov word [bp - 0x0026], 1        ; 0x6d43
    mov word [bp - 0x0024], 1        ; 0x6d48
@..api_idx_002c_2.l8:
    inc word [bp - 0x0002]           ; 0x6d4d
@..api_idx_002c_2.l9:
    mov ax, word [bp - 0x0002]       ; 0x6d50
    cmp ax, word [dseg_9070]         ; 0x6d53
    jl short @..api_idx_002c_2.l7    ; 0x6d57
    lea ax, word [bp - 0x002c]       ; 0x6d59
    push ax                          ; 0x6d5c
    mov ax, 0                        ; 0x6d5d
    push ax                          ; 0x6d60
    mov ax, 0xffff                   ; 0x6d61
    push ax                          ; 0x6d64
    mov ax, 1                        ; 0x6d65
    push ax                          ; 0x6d68
    mov ax, 6                        ; 0x6d69
    push ax                          ; 0x6d6c
    mov ax, 1                        ; 0x6d6d
    push ax                          ; 0x6d70
    mov ax, 0xc                      ; 0x6d71
    push ax                          ; 0x6d74
    mov ax, 0x34                     ; 0x6d75
    push ax                          ; 0x6d78
    mov ax, 8                        ; 0x6d79
    push ax                          ; 0x6d7c
    mov ax, 0xbc                     ; 0x6d7d
    push ax                          ; 0x6d80
    mov ax, 4                        ; 0x6d81
    push ax                          ; 0x6d84
    mov ax, 0                        ; 0x6d85
    push ax                          ; 0x6d88
    mov ax, 0x46a                    ; 0x6d89
    push ax                          ; 0x6d8c
    call loc_0445                    ; 0x6d8d
    add sp, byte 0x1a                ; 0x6d90
    mov word [bp - 0x0006], ax       ; 0x6d93
    jmp near @..api_idx_002c_2.l10   ; 0x6d96

    db 0xb8, 0xc7, 0x00, 0x50, 0xb8, 0x3f, 0x01, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xe8, 0x31, 0x7b
    db 0x83, 0xc4, 0x08, 0xff, 0x76, 0xf6, 0xe8, 0xc1, 0xf8, 0x59, 0xe9, 0xc0, 0x00, 0xb8, 0xc7, 0x00
    db 0x50, 0xb8, 0x3f, 0x01, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xe8, 0x14, 0x7b, 0x83, 0xc4, 0x08
    db 0xb8, 0x82, 0x04, 0x50, 0xe8, 0x2a, 0xfb, 0x59, 0x89, 0x46, 0xf8, 0x3d, 0xff, 0xff, 0x74, 0x05
    db 0x50, 0xe8, 0x5b, 0xf9, 0x59, 0xe9, 0x95, 0x00, 0xb8, 0xc7, 0x00, 0x50, 0xb8, 0x3f, 0x01, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0x50, 0xe8, 0xe9, 0x7a, 0x83, 0xc4, 0x08, 0xb8, 0x85, 0x04, 0x50, 0xe8
    db 0xff, 0xfa, 0x59, 0x89, 0x46, 0xf8, 0x3d, 0xff, 0xff, 0x74, 0x05, 0x50, 0xe8, 0xda, 0xf9, 0x59
    db 0xeb, 0x6b, 0xb8, 0xc7, 0x00, 0x50, 0xb8, 0x3f, 0x01, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xe8
    db 0xbf, 0x7a, 0x83, 0xc4, 0x08, 0xb8, 0x88, 0x04, 0x50, 0xe8, 0xd5, 0xfa, 0x59, 0x89, 0x46, 0xf8
    db 0x3d, 0xff, 0xff, 0x74, 0x05, 0x50, 0xe8, 0xcd, 0xf9, 0x59, 0xeb, 0x41, 0xb8, 0xc7, 0x00, 0x50
    db 0xb8, 0x3f, 0x01, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xe8, 0x95, 0x7a, 0x83, 0xc4, 0x08, 0xb8
    db 0x8b, 0x04, 0x50, 0xe8, 0xab, 0xfa, 0x59, 0x89, 0x46, 0xf8, 0x3d, 0xff, 0xff, 0x74, 0x05, 0x50
    db 0xe8, 0x2b, 0xfa, 0x59, 0xeb, 0x17, 0xe0, 0xbd, 0x28, 0xbe, 0xfd, 0xbd, 0x52, 0xbe, 0x7c, 0xbe

@..api_idx_002c_2.l10:
    cmp ax, strict word 5            ; 0x6e69
    jae short @..api_idx_002c_2.l11  ; 0x6e6c
    xchg bx, ax                      ; 0x6e6e
    shl bx, 1                        ; 0x6e6f
    jmp [cs:bx - 0x415a]             ; 0x6e71
@..api_idx_002c_2.l11:
    cmp word [bp - 0x0006], byte 5   ; 0x6e76
    je short @..api_idx_002c_2.l12   ; 0x6e7a
    jmp near @..api_idx_002c_2.l4    ; 0x6e7c
@..api_idx_002c_2.l12:
    cmp word [dseg_8450], byte 0     ; 0x6e7f
    je short @..api_idx_002c_2.l13   ; 0x6e84
    push word [dseg_844c]            ; 0x6e86
    push word [dseg_844e]            ; 0x6e8a
    call ds_dispatch_d91b            ; 0x6e8e
    add sp, byte 4                   ; 0x6e91
    mov ax, 0                        ; 0x6e94
    push ax                          ; 0x6e97
    call ds_dispatch_d907            ; 0x6e98
    pop cx                           ; 0x6e9b
@..api_idx_002c_2.l13:
    mov ax, 0xf                      ; 0x6e9c
    push ax                          ; 0x6e9f
    call ds_dispatch_c12a            ; 0x6ea0
    pop cx                           ; 0x6ea3
    mov ax, 0                        ; 0x6ea4
    push ax                          ; 0x6ea7
    mov ax, 1                        ; 0x6ea8
    push ax                          ; 0x6eab
    push word [dseg_9542]            ; 0x6eac
    push word [dseg_9540]            ; 0x6eb0
    call ds_dispatch_e942            ; 0x6eb4
    add sp, byte 8                   ; 0x6eb7
    mov ax, 0                        ; 0x6eba
    push ax                          ; 0x6ebd
    mov ax, 1                        ; 0x6ebe
    push ax                          ; 0x6ec1
    push word [dseg_953e]            ; 0x6ec2
    push word [dseg_953c]            ; 0x6ec6
    call ds_dispatch_e942            ; 0x6eca
    add sp, byte 8                   ; 0x6ecd
    mov ax, 0                        ; 0x6ed0
    push ax                          ; 0x6ed3
    mov ax, 1                        ; 0x6ed4
    push ax                          ; 0x6ed7
    push word [dseg_953a]            ; 0x6ed8
    push word [dseg_9538]            ; 0x6edc
    call ds_dispatch_e942            ; 0x6ee0
    add sp, byte 8                   ; 0x6ee3
    mov ax, 0                        ; 0x6ee6
    push ax                          ; 0x6ee9
    mov ax, 1                        ; 0x6eea
    push ax                          ; 0x6eed
    push word [dseg_9536]            ; 0x6eee
    push word [dseg_9534]            ; 0x6ef2
    call ds_dispatch_e942            ; 0x6ef6
    add sp, byte 8                   ; 0x6ef9
    mov ax, 0                        ; 0x6efc
    push ax                          ; 0x6eff
    mov ax, 1                        ; 0x6f00
    push ax                          ; 0x6f03
    push word [dseg_9532]            ; 0x6f04
    push word [dseg_9530]            ; 0x6f08
    call ds_dispatch_e942            ; 0x6f0c
    add sp, byte 8                   ; 0x6f0f
    mov ax, 0                        ; 0x6f12
    push ax                          ; 0x6f15
    mov ax, 1                        ; 0x6f16
    push ax                          ; 0x6f19
    push word [dseg_952e]            ; 0x6f1a
    push word [dseg_952c]            ; 0x6f1e
    call ds_dispatch_e942            ; 0x6f22
    add sp, byte 8                   ; 0x6f25
    mov ax, 0                        ; 0x6f28
    push ax                          ; 0x6f2b
    mov ax, 1                        ; 0x6f2c
    push ax                          ; 0x6f2f
    push word [dseg_952a]            ; 0x6f30
    push word [dseg_9528]            ; 0x6f34
    call ds_dispatch_e942            ; 0x6f38
    add sp, byte 8                   ; 0x6f3b
    mov ax, 0                        ; 0x6f3e
    push ax                          ; 0x6f41
    mov ax, 1                        ; 0x6f42
    push ax                          ; 0x6f45
    push word [dseg_9526]            ; 0x6f46
    push word [dseg_9524]            ; 0x6f4a
    call ds_dispatch_e942            ; 0x6f4e
    add sp, byte 8                   ; 0x6f51
    mov ax, 0                        ; 0x6f54
    push ax                          ; 0x6f57
    mov ax, 1                        ; 0x6f58
    push ax                          ; 0x6f5b
    push word [bp - 0x000c]          ; 0x6f5c
    push word [bp - 0x000e]          ; 0x6f5f
    call ds_dispatch_e942            ; 0x6f62
    add sp, byte 8                   ; 0x6f65
    mov ax, 1                        ; 0x6f68
    push ax                          ; 0x6f6b
    call ds_dispatch_c12a            ; 0x6f6c
    pop cx                           ; 0x6f6f
    mov ax, 2                        ; 0x6f70
    push ax                          ; 0x6f73
    call ds_dispatch_c12a            ; 0x6f74
    pop cx                           ; 0x6f77
    mov ax, 0xc7                     ; 0x6f78
    push ax                          ; 0x6f7b
    mov ax, 0x13f                    ; 0x6f7c
    push ax                          ; 0x6f7f
    mov ax, 0                        ; 0x6f80
    push ax                          ; 0x6f83
    push ax                          ; 0x6f84
    call ds_dispatch_e8da            ; 0x6f85
    add sp, byte 8                   ; 0x6f88
    ret                              ; 0x6f8b
