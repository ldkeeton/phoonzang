api_idx_002c_2:
    mov ax, 0xffd4                   ; 0x6a3f
    call ds_dispatch_f40b            ; 0x6a42
    mov ax, 1                        ; 0x6a45
    push ax                          ; 0x6a48
    mov ax, data_0002                ; 0x6a49
    push ax                          ; 0x6a4c
    call ds_dispatch_d61c            ; 0x6a4d
    add sp, byte 4                   ; 0x6a50
    mov ax, data_0002                ; 0x6a53
    push ax                          ; 0x6a56
    mov ax, 3                        ; 0x6a57
    push ax                          ; 0x6a5a
    call ds_dispatch_d61c            ; 0x6a5b
    add sp, byte 4                   ; 0x6a5e
    mov ax, 0                        ; 0x6a61
    push ax                          ; 0x6a64
    mov ax, data_0002                ; 0x6a65
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
    mov word [data_95aa], 0x14       ; 0x6a90
    mov word [data_95ac], 0          ; 0x6a96
    mov word [data_95ae], 0          ; 0x6a9c
    mov ax, 0                        ; 0x6aa2
    push ax                          ; 0x6aa5
    mov ax, data_0002                ; 0x6aa6
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
    mov word [data_9526], dx         ; 0x6abd
    mov word [data_9524], ax         ; 0x6ac1
    mov ax, 0                        ; 0x6ac4
    push ax                          ; 0x6ac7
    mov ax, data_0002                ; 0x6ac8
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
    mov word [data_952a], dx         ; 0x6ae2
    mov word [data_9528], ax         ; 0x6ae6
    mov ax, 0                        ; 0x6ae9
    push ax                          ; 0x6aec
    mov ax, data_0002                ; 0x6aed
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
    mov word [data_952e], dx         ; 0x6b07
    mov word [data_952c], ax         ; 0x6b0b
    mov ax, 0                        ; 0x6b0e
    push ax                          ; 0x6b11
    mov ax, data_0002                ; 0x6b12
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
    mov word [data_9532], dx         ; 0x6b2c
    mov word [data_9530], ax         ; 0x6b30
    mov ax, 0                        ; 0x6b33
    push ax                          ; 0x6b36
    mov ax, data_0002                ; 0x6b37
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
    mov word [data_9536], dx         ; 0x6b51
    mov word [data_9534], ax         ; 0x6b55
    mov ax, 0                        ; 0x6b58
    push ax                          ; 0x6b5b
    mov ax, data_0002                ; 0x6b5c
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
    mov word [data_953a], dx         ; 0x6b76
    mov word [data_9538], ax         ; 0x6b7a
    mov ax, 0                        ; 0x6b7d
    push ax                          ; 0x6b80
    mov ax, data_0002                ; 0x6b81
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
    mov word [data_953e], dx         ; 0x6b9b
    mov word [data_953c], ax         ; 0x6b9f
    mov ax, 0                        ; 0x6ba2
    push ax                          ; 0x6ba5
    mov ax, data_0002                ; 0x6ba6
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
    mov word [data_9542], dx         ; 0x6bc0
    mov word [data_9540], ax         ; 0x6bc4
    mov ax, 0xf                      ; 0x6bc7
    push ax                          ; 0x6bca
    mov ax, 0xb                      ; 0x6bcb
    push ax                          ; 0x6bce
    call ds_dispatch_d61c            ; 0x6bcf
    add sp, byte 4                   ; 0x6bd2
    call ds_dispatch_d9a6            ; 0x6bd5
    mov word [data_8450], ax         ; 0x6bd8
    test ax, ax                      ; 0x6bdb
    je short @..api_idx_002c_2.l1    ; 0x6bdd
    mov ax, 0                        ; 0x6bdf
    push ax                          ; 0x6be2
    mov ax, 1                        ; 0x6be3
    push ax                          ; 0x6be6
    call ds_dispatch_d7e7            ; 0x6be7
    add sp, byte 4                   ; 0x6bea
    mov ax, word [data_010e]         ; 0x6bed
    mov word [data_844e], ax         ; 0x6bf0
    mov ax, 1                        ; 0x6bf3
    push ax                          ; 0x6bf6
    push word [data_844e]            ; 0x6bf7
    mov ax, 0                        ; 0x6bfb
    push ax                          ; 0x6bfe
    call ds_dispatch_d964            ; 0x6bff
    add sp, byte 6                   ; 0x6c02
    mov word [data_844c], ax         ; 0x6c05
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
