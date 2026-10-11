api_idx_0044:
    mov ax, 0xffbc                   ; 0x2988
    call ds_dispatch_f40b            ; 0x298b
    mov word [bp - 0x0002], 0        ; 0x298e
@..api_idx_0044.l1:
    mov ax, word [bp - 0x0002]       ; 0x2993
    shl ax, 1                        ; 0x2996
    mov bx, ax                       ; 0x2998
    mov word [bx - 0x7cf2], 0        ; 0x299a
    inc word [bp - 0x0002]           ; 0x29a0
    mov ax, word [bp - 0x0002]       ; 0x29a3
    cmp ax, strict word 6            ; 0x29a6
    jl short @..api_idx_0044.l1      ; 0x29a9
    mov word [dseg_904e], 0xffff     ; 0x29ab
    mov word [bp - 0x0004], 0x32     ; 0x29b1
    mov word [bp - 0x0006], 0x73     ; 0x29b6
    mov word [bp - 0x0008], 0x10d    ; 0x29bb
    mov word [bp - 0x000a], 0xc5     ; 0x29c0
    mov word [bp - 0x000c], 0x95     ; 0x29c5
    mov word [bp - 0x0014], 0x16     ; 0x29ca
    mov ax, 0x909e                   ; 0x29cf
    push ax                          ; 0x29d2
    mov ax, word [bp - 0x000a]       ; 0x29d3
    inc ax                           ; 0x29d6
    push ax                          ; 0x29d7
    mov ax, word [bp - 0x0008]       ; 0x29d8
    inc ax                           ; 0x29db
    push ax                          ; 0x29dc
    mov ax, word [bp - 0x0006]       ; 0x29dd
    dec ax                           ; 0x29e0
    push ax                          ; 0x29e1
    mov ax, word [bp - 0x0004]       ; 0x29e2
    dec ax                           ; 0x29e5
    push ax                          ; 0x29e6
    call ds_dispatch_c283            ; 0x29e7
    add sp, byte 0x0a                ; 0x29ea
    mov word [bp - 0x003a], ax       ; 0x29ed
    push word [bp - 0x000a]          ; 0x29f0
    push word [bp - 0x0008]          ; 0x29f3
    push word [bp - 0x0006]          ; 0x29f6
    push word [bp - 0x0004]          ; 0x29f9
    call ds_dispatch_bc9a            ; 0x29fc
    add sp, byte 8                   ; 0x29ff
    push word [bp - 0x000a]          ; 0x2a02
    push word [bp - 0x0008]          ; 0x2a05
    push word [bp - 0x0006]          ; 0x2a08
    mov ax, 0x95                     ; 0x2a0b
    push ax                          ; 0x2a0e
    call ds_dispatch_bc9a            ; 0x2a0f
    add sp, byte 8                   ; 0x2a12
    call api_idx_000a_3              ; 0x2a15
    push word [bp + 0x4]             ; 0x2a18
    call api_idx_000c_3              ; 0x2a1b
    pop cx                           ; 0x2a1e
    mov ax, 1                        ; 0x2a1f
    push ax                          ; 0x2a22
    mov ax, 0x73                     ; 0x2a23
    push ax                          ; 0x2a26
    mov ax, 0x32                     ; 0x2a27
    push ax                          ; 0x2a2a
    call api_idx_000c_2              ; 0x2a2b
    add sp, byte 6                   ; 0x2a2e
    lea ax, word [bp - 0x0038]       ; 0x2a31
    push ax                          ; 0x2a34
    push word [bp + 0x6]             ; 0x2a35
    call ds_dispatch_b53b            ; 0x2a38
    add sp, byte 4                   ; 0x2a3b
    lea ax, word [bp - 0x0038]       ; 0x2a3e
    push ax                          ; 0x2a41
    push word [bp + 0x8]             ; 0x2a42
    mov ax, 1                        ; 0x2a45
    push ax                          ; 0x2a48
    mov ax, 8                        ; 0x2a49
    push ax                          ; 0x2a4c
    mov ax, word [bp - 0x0006]       ; 0x2a4d
    add ax, strict word 6            ; 0x2a50
    push ax                          ; 0x2a53
    mov ax, word [bp - 0x000c]       ; 0x2a54
    add ax, strict word 6            ; 0x2a57
    push ax                          ; 0x2a5a
    call ds_dispatch_c0c1            ; 0x2a5b
    add sp, byte 0x0c                ; 0x2a5e
    lea ax, word [bp - 0x0038]       ; 0x2a61
    push ax                          ; 0x2a64
    mov ax, word [bp + 0x6]          ; 0x2a65
    inc ax                           ; 0x2a68
    push ax                          ; 0x2a69
    call ds_dispatch_b53b            ; 0x2a6a
    add sp, byte 4                   ; 0x2a6d
    lea ax, word [bp - 0x0038]       ; 0x2a70
    push ax                          ; 0x2a73
    mov ax, 1                        ; 0x2a74
    push ax                          ; 0x2a77
    push ax                          ; 0x2a78
    mov ax, 8                        ; 0x2a79
    push ax                          ; 0x2a7c
    mov ax, word [bp - 0x0006]       ; 0x2a7d
    add ax, strict word 6            ; 0x2a80
    push ax                          ; 0x2a83
    mov ax, word [bp - 0x000c]       ; 0x2a84
    add ax, strict word 0x42         ; 0x2a87
    push ax                          ; 0x2a8a
    call ds_dispatch_c0c1            ; 0x2a8b
    add sp, byte 0x0c                ; 0x2a8e
    mov ax, word [bp - 0x0006]       ; 0x2a91
    add ax, strict word 0x14         ; 0x2a94
    push ax                          ; 0x2a97
    mov ax, word [bp - 0x000c]       ; 0x2a98
    add ax, strict word 0x48         ; 0x2a9b
    push ax                          ; 0x2a9e
    call ds_dispatch_e809            ; 0x2a9f
    add sp, byte 4                   ; 0x2aa2
    mov ax, 0                        ; 0x2aa5
    push ax                          ; 0x2aa8
    mov ax, 0xcd                     ; 0x2aa9
    push ax                          ; 0x2aac
    call ds_dispatch_e823            ; 0x2aad
    add sp, byte 4                   ; 0x2ab0
    mov ax, 2                        ; 0x2ab3
    push ax                          ; 0x2ab6
    mov ax, 0xa                      ; 0x2ab7
    push ax                          ; 0x2aba
    call ds_dispatch_e830            ; 0x2abb
    add sp, byte 4                   ; 0x2abe
    mov word [bp - 0x003c], 0xffff   ; 0x2ac1
    mov word [bp - 0x003e], 0        ; 0x2ac6
    mov word [bp - 0x0040], 0        ; 0x2acb
    mov word [bp - 0x0002], 0        ; 0x2ad0
@..api_idx_0044.l2:
    mov ax, 0                        ; 0x2ad5
    mov cx, word [bp - 0x0002]       ; 0x2ad8
    cmp cx, word [bp - 0x003e]       ; 0x2adb
    jne short @..api_idx_0044.l3     ; 0x2ade
    mov ax, 1                        ; 0x2ae0
@..api_idx_0044.l3:
    push ax                          ; 0x2ae3
    push cx                          ; 0x2ae4
    mov ax, word [bp - 0x0006]       ; 0x2ae5
    add ax, strict word 0x14         ; 0x2ae8
    push ax                          ; 0x2aeb
    mov ax, word [bp - 0x000c]       ; 0x2aec
    add ax, strict word 0xc          ; 0x2aef
    push ax                          ; 0x2af2
    call loc_2731                    ; 0x2af3
    add sp, byte 8                   ; 0x2af6
    inc word [bp - 0x0002]           ; 0x2af9
    mov ax, word [bp - 0x0002]       ; 0x2afc
    cmp ax, strict word 7            ; 0x2aff
    jl short @..api_idx_0044.l2      ; 0x2b02
    mov word [bp - 0x0042], 0        ; 0x2b04
    mov ax, 0                        ; 0x2b09
    push ax                          ; 0x2b0c
    push ax                          ; 0x2b0d
    push word [bp - 0x0042]          ; 0x2b0e
    mov ax, word [bp - 0x0006]       ; 0x2b11
    add ax, strict word 0x15         ; 0x2b14
    push ax                          ; 0x2b17
    mov ax, word [bp - 0x000c]       ; 0x2b18
    add ax, strict word 0x5e         ; 0x2b1b
    push ax                          ; 0x2b1e
    call loc_27bd                    ; 0x2b1f
    add sp, byte 0x0a                ; 0x2b22
    push word [bp - 0x0042]          ; 0x2b25
    push word [bp + 0x4]             ; 0x2b28
    call api_idx_0004_4              ; 0x2b2b
    add sp, byte 4                   ; 0x2b2e
    mov word [bp - 0x0044], ax       ; 0x2b31
    mov ax, 7                        ; 0x2b34
    cmp word [bp - 0x0044], byte 7   ; 0x2b37
    jge short @..api_idx_0044.l4     ; 0x2b3b
    mov ax, word [bp - 0x0044]       ; 0x2b3d
@..api_idx_0044.l4:
    mov word [bp - 0x0024], ax       ; 0x2b40
    mov word [bp - 0x0018], 0        ; 0x2b43
    mov word [bp - 0x0022], 0xffff   ; 0x2b48
    push ax                          ; 0x2b4d
    push word [bp - 0x0022]          ; 0x2b4e
    push word [bp - 0x0018]          ; 0x2b51
    mov ax, 7                        ; 0x2b54
    push ax                          ; 0x2b57
    mov ax, 0xf                      ; 0x2b58
    push ax                          ; 0x2b5b
    mov ax, word [bp - 0x0006]       ; 0x2b5c
    add ax, strict word 0x22         ; 0x2b5f
    push ax                          ; 0x2b62
    mov ax, word [bp - 0x000c]       ; 0x2b63
    add ax, strict word 6            ; 0x2b66
    push ax                          ; 0x2b69
    call ds_dispatch_bf97            ; 0x2b6a
    add sp, byte 0x0e                ; 0x2b6d
    mov word [bp - 0x0012], 0        ; 0x2b70
    push word [bp - 0x0012]          ; 0x2b75
    mov ax, 7                        ; 0x2b78
    push ax                          ; 0x2b7b
    mov ax, 8                        ; 0x2b7c
    push ax                          ; 0x2b7f
    mov ax, word [bp - 0x0006]       ; 0x2b80
    add ax, strict word 0x22         ; 0x2b83
    push ax                          ; 0x2b86
    mov ax, word [bp - 0x000c]       ; 0x2b87
    add ax, strict word 0x6a         ; 0x2b8a
    push ax                          ; 0x2b8d
    call ds_dispatch_bfd8            ; 0x2b8e
    add sp, byte 0x0a                ; 0x2b91
    mov ax, 0                        ; 0x2b94
    push ax                          ; 0x2b97
    push ax                          ; 0x2b98
    mov ax, word [bp - 0x0006]       ; 0x2b99
    add ax, word [bp - 0x0012]       ; 0x2b9c
    add ax, strict word 0x2e         ; 0x2b9f
    push ax                          ; 0x2ba2
    mov ax, word [bp - 0x000c]       ; 0x2ba3
    add ax, strict word 0x72         ; 0x2ba6
    push ax                          ; 0x2ba9
    mov ax, word [bp - 0x0006]       ; 0x2baa
    add ax, word [bp - 0x0012]       ; 0x2bad
    add ax, strict word 0x2a         ; 0x2bb0
    push ax                          ; 0x2bb3
    mov ax, word [bp - 0x000c]       ; 0x2bb4
    add ax, strict word 0x6a         ; 0x2bb7
    push ax                          ; 0x2bba
    mov ax, 0                        ; 0x2bbb
    push ax                          ; 0x2bbe
    call ds_dispatch_baa6            ; 0x2bbf
    add sp, byte 0x0e                ; 0x2bc2
    mov ax, 0                        ; 0x2bc5
    push ax                          ; 0x2bc8
    mov ax, 9                        ; 0x2bc9
    push ax                          ; 0x2bcc
    mov ax, word [bp - 0x0006]       ; 0x2bcd
    add ax, strict word 0x28         ; 0x2bd0
    push ax                          ; 0x2bd3
    mov ax, word [bp - 0x000c]       ; 0x2bd4
    add ax, strict word 0x72         ; 0x2bd7
    push ax                          ; 0x2bda
    mov ax, word [bp - 0x0006]       ; 0x2bdb
    add ax, strict word 0x22         ; 0x2bde
    push ax                          ; 0x2be1
    mov ax, word [bp - 0x000c]       ; 0x2be2
    add ax, strict word 0x6a         ; 0x2be5
    push ax                          ; 0x2be8
    mov ax, 1                        ; 0x2be9
    push ax                          ; 0x2bec
    call ds_dispatch_baa6            ; 0x2bed
    add sp, byte 0x0e                ; 0x2bf0
    mov ax, 0                        ; 0x2bf3
    push ax                          ; 0x2bf6
    mov ax, 0xb                      ; 0x2bf7
    push ax                          ; 0x2bfa
    mov ax, word [bp - 0x0006]       ; 0x2bfb
    add ax, strict word 0x4c         ; 0x2bfe
    push ax                          ; 0x2c01
    mov ax, word [bp - 0x000c]       ; 0x2c02
    add ax, strict word 0x72         ; 0x2c05
    push ax                          ; 0x2c08
    mov ax, word [bp - 0x0006]       ; 0x2c09
    add ax, strict word 0x46         ; 0x2c0c
    push ax                          ; 0x2c0f
    mov ax, word [bp - 0x000c]       ; 0x2c10
    add ax, strict word 0x6a         ; 0x2c13
    push ax                          ; 0x2c16
    mov ax, 2                        ; 0x2c17
    push ax                          ; 0x2c1a
    call ds_dispatch_baa6            ; 0x2c1b
    add sp, byte 0x0e                ; 0x2c1e
    mov ax, 0                        ; 0x2c21
    push ax                          ; 0x2c24
    mov ax, 0xd                      ; 0x2c25
    push ax                          ; 0x2c28
    mov ax, word [bp - 0x0006]       ; 0x2c29
    add ax, strict word 0xe          ; 0x2c2c
    push ax                          ; 0x2c2f
    mov ax, word [bp - 0x000c]       ; 0x2c30
    add ax, strict word 0x36         ; 0x2c33
    push ax                          ; 0x2c36
    mov ax, word [bp - 0x0006]       ; 0x2c37
    add ax, strict word 6            ; 0x2c3a
    push ax                          ; 0x2c3d
    mov ax, word [bp - 0x000c]       ; 0x2c3e
    add ax, strict word 6            ; 0x2c41
    push ax                          ; 0x2c44
    mov ax, 3                        ; 0x2c45
    push ax                          ; 0x2c48
    call ds_dispatch_baa6            ; 0x2c49
    add sp, byte 0x0e                ; 0x2c4c
    mov ax, 0                        ; 0x2c4f
    push ax                          ; 0x2c52
    mov ax, 0x1b                     ; 0x2c53
    push ax                          ; 0x2c56
    mov ax, word [bp - 0x0006]       ; 0x2c57
    add ax, strict word 0xe          ; 0x2c5a
    push ax                          ; 0x2c5d
    mov ax, word [bp - 0x000c]       ; 0x2c5e
    add ax, strict word 0x72         ; 0x2c61
    push ax                          ; 0x2c64
    mov ax, word [bp - 0x0006]       ; 0x2c65
    add ax, strict word 6            ; 0x2c68
    push ax                          ; 0x2c6b
    mov ax, word [bp - 0x000c]       ; 0x2c6c
    add ax, strict word 0x42         ; 0x2c6f
    push ax                          ; 0x2c72
    mov ax, 4                        ; 0x2c73
    push ax                          ; 0x2c76
    call ds_dispatch_baa6            ; 0x2c77
    add sp, byte 0x0e                ; 0x2c7a
    mov word [bp - 0x0002], 0        ; 0x2c7d
@..api_idx_0044.l5:
    mov ax, 0                        ; 0x2c82
    push ax                          ; 0x2c85
    mov ax, word [bp - 0x0002]       ; 0x2c86
    add ax, strict word 0x31         ; 0x2c89
    cbw                              ; 0x2c8c
    push ax                          ; 0x2c8d
    mov ax, word [bp - 0x0006]       ; 0x2c8e
    add ax, strict word 0x1b         ; 0x2c91
    push ax                          ; 0x2c94
    mov ax, 0xa                      ; 0x2c95
    imul word [bp - 0x0002]          ; 0x2c98
    add ax, word [bp - 0x000c]       ; 0x2c9b
    add ax, strict word 0x13         ; 0x2c9e
    push ax                          ; 0x2ca1
    mov ax, word [bp - 0x0006]       ; 0x2ca2
    add ax, strict word 0x14         ; 0x2ca5
    push ax                          ; 0x2ca8
    mov ax, 0xa                      ; 0x2ca9
    imul word [bp - 0x0002]          ; 0x2cac
    add ax, word [bp - 0x000c]       ; 0x2caf
    add ax, strict word 0xc          ; 0x2cb2
    push ax                          ; 0x2cb5
    mov ax, word [bp - 0x0002]       ; 0x2cb6
    add ax, strict word 5            ; 0x2cb9
    push ax                          ; 0x2cbc
    call ds_dispatch_baa6            ; 0x2cbd
    add sp, byte 0x0e                ; 0x2cc0
    inc word [bp - 0x0002]           ; 0x2cc3
    mov ax, word [bp - 0x0002]       ; 0x2cc6
    cmp ax, strict word 7            ; 0x2cc9
    jl short @..api_idx_0044.l5      ; 0x2ccc
    mov ax, 0                        ; 0x2cce
    push ax                          ; 0x2cd1
    mov ax, 0x46                     ; 0x2cd2
    push ax                          ; 0x2cd5
    mov ax, 0x87                     ; 0x2cd6
    push ax                          ; 0x2cd9
    mov ax, 0x52                     ; 0x2cda
    push ax                          ; 0x2cdd
    mov ax, 0x74                     ; 0x2cde
    push ax                          ; 0x2ce1
    mov ax, 0x46                     ; 0x2ce2
    push ax                          ; 0x2ce5
    mov ax, 0xc                      ; 0x2ce6
    push ax                          ; 0x2ce9
    call ds_dispatch_baa6            ; 0x2cea
    add sp, byte 0x0e                ; 0x2ced
    mov ax, 0                        ; 0x2cf0
    push ax                          ; 0x2cf3
    mov ax, 0x57                     ; 0x2cf4
    push ax                          ; 0x2cf7
    mov ax, 0x9d                     ; 0x2cf8
    push ax                          ; 0x2cfb
    mov ax, 0x4b                     ; 0x2cfc
    push ax                          ; 0x2cff
    mov ax, 0x90                     ; 0x2d00
    push ax                          ; 0x2d03
    mov ax, 0x32                     ; 0x2d04
    push ax                          ; 0x2d07
    mov ax, 0xd                      ; 0x2d08
    push ax                          ; 0x2d0b
    call ds_dispatch_baa6            ; 0x2d0c
    add sp, byte 0x0e                ; 0x2d0f
    mov ax, 0                        ; 0x2d12
    push ax                          ; 0x2d15
    mov ax, 0x41                     ; 0x2d16
    push ax                          ; 0x2d19
    mov ax, 0xbb                     ; 0x2d1a
    push ax                          ; 0x2d1d
    mov ax, 0x5f                     ; 0x2d1e
    push ax                          ; 0x2d21
    mov ax, 0xa5                     ; 0x2d22
    push ax                          ; 0x2d25
    mov ax, 0x43                     ; 0x2d26
    push ax                          ; 0x2d29
    mov ax, 0xe                      ; 0x2d2a
    push ax                          ; 0x2d2d
    call ds_dispatch_baa6            ; 0x2d2e
    add sp, byte 0x0e                ; 0x2d31
    mov ax, 0                        ; 0x2d34
    push ax                          ; 0x2d37
    mov ax, 0x45                     ; 0x2d38
    push ax                          ; 0x2d3b
    mov ax, 0x89                     ; 0x2d3c
    push ax                          ; 0x2d3f
    mov ax, 0x87                     ; 0x2d40
    push ax                          ; 0x2d43
    mov ax, 0x77                     ; 0x2d44
    push ax                          ; 0x2d47
    mov ax, 0x6c                     ; 0x2d48
    push ax                          ; 0x2d4b
    mov ax, 0xf                      ; 0x2d4c
    push ax                          ; 0x2d4f
    call ds_dispatch_baa6            ; 0x2d50
    add sp, byte 0x0e                ; 0x2d53
    mov ax, 0                        ; 0x2d56
    push ax                          ; 0x2d59
    mov ax, 0x4d                     ; 0x2d5a
    push ax                          ; 0x2d5d
    mov ax, 0x9c                     ; 0x2d5e
    push ax                          ; 0x2d61
    mov ax, 0x8e                     ; 0x2d62
    push ax                          ; 0x2d65
    mov ax, 0x91                     ; 0x2d66
    push ax                          ; 0x2d69
    mov ax, 0x7f                     ; 0x2d6a
    push ax                          ; 0x2d6d
    mov ax, 0x10                     ; 0x2d6e
    push ax                          ; 0x2d71
    call ds_dispatch_baa6            ; 0x2d72
    add sp, byte 0x0e                ; 0x2d75
    mov ax, 0                        ; 0x2d78
    push ax                          ; 0x2d7b
    mov ax, 0x44                     ; 0x2d7c
    push ax                          ; 0x2d7f
    mov ax, 0xb9                     ; 0x2d80
    push ax                          ; 0x2d83
    mov ax, 0x81                     ; 0x2d84
    push ax                          ; 0x2d87
    mov ax, 0xa6                     ; 0x2d88
    push ax                          ; 0x2d8b
    mov ax, 0x71                     ; 0x2d8c
    push ax                          ; 0x2d8f
    mov ax, 0x11                     ; 0x2d90
    push ax                          ; 0x2d93
    call ds_dispatch_baa6            ; 0x2d94
    add sp, byte 0x0e                ; 0x2d97
    mov ax, 7                        ; 0x2d9a
    cmp word [bp - 0x0044], byte 7   ; 0x2d9d
    jge short @..api_idx_0044.l6     ; 0x2da1
    mov ax, word [bp - 0x0044]       ; 0x2da3
@..api_idx_0044.l6:
    mov word [bp - 0x0020], ax       ; 0x2da6
    mov word [bp - 0x0002], 0        ; 0x2da9
@..api_idx_0044.l7:
    mov ax, 0                        ; 0x2dae
    push ax                          ; 0x2db1
    push ax                          ; 0x2db2
    mov ax, 6                        ; 0x2db3
    imul word [bp - 0x0002]          ; 0x2db6
    add ax, word [bp - 0x0006]       ; 0x2db9
    add ax, strict word 0x28         ; 0x2dbc
    push ax                          ; 0x2dbf
    mov ax, word [bp - 0x000c]       ; 0x2dc0
    add ax, strict word 0x62         ; 0x2dc3
    push ax                          ; 0x2dc6
    mov ax, 6                        ; 0x2dc7
    imul word [bp - 0x0002]          ; 0x2dca
    add ax, word [bp - 0x0006]       ; 0x2dcd
    add ax, strict word 0x22         ; 0x2dd0
    push ax                          ; 0x2dd3
    mov ax, word [bp - 0x000c]       ; 0x2dd4
    add ax, strict word 6            ; 0x2dd7
    push ax                          ; 0x2dda
    mov ax, word [bp - 0x0002]       ; 0x2ddb
    add ax, strict word 0x12         ; 0x2dde
    push ax                          ; 0x2de1
    call ds_dispatch_baa6            ; 0x2de2
    add sp, byte 0x0e                ; 0x2de5
    inc word [bp - 0x0002]           ; 0x2de8
    mov ax, word [bp - 0x0002]       ; 0x2deb
    cmp ax, strict word 7            ; 0x2dee
    jl short @..api_idx_0044.l7      ; 0x2df1
    mov ax, 0                        ; 0x2df3
    push ax                          ; 0x2df6
    push ax                          ; 0x2df7
    push ax                          ; 0x2df8
    push ax                          ; 0x2df9
    push ax                          ; 0x2dfa
    mov ax, 0xffff                   ; 0x2dfb
    push ax                          ; 0x2dfe
    mov ax, 0x19                     ; 0x2dff
    push ax                          ; 0x2e02
    call ds_dispatch_baa6            ; 0x2e03
    add sp, byte 0x0e                ; 0x2e06
    mov ax, word [bp - 0x000a]       ; 0x2e09
    inc ax                           ; 0x2e0c
    push ax                          ; 0x2e0d
    mov ax, word [bp - 0x0008]       ; 0x2e0e
    inc ax                           ; 0x2e11
    push ax                          ; 0x2e12
    mov ax, word [bp - 0x0006]       ; 0x2e13
    dec ax                           ; 0x2e16
    push ax                          ; 0x2e17
    mov ax, word [bp - 0x0004]       ; 0x2e18
    dec ax                           ; 0x2e1b
    push ax                          ; 0x2e1c
    call ds_dispatch_e8da            ; 0x2e1d
    add sp, byte 8                   ; 0x2e20
    mov word [dseg_9b5e], 5          ; 0x2e23
    les bx, word [dseg_0002]         ; 0x2e29
    mov ax, word [es:bx]             ; 0x2e2d
    mov dx, word [es:bx + 0x2]       ; 0x2e30
    mov word [dseg_908c], dx         ; 0x2e34
    mov word [dseg_908a], ax         ; 0x2e38
    mov word [bp - 0x001c], 1        ; 0x2e3b
@..api_idx_0044.l8:
    push word [bp - 0x0042]          ; 0x2e40
    push word [bp + 0x4]             ; 0x2e43
    call loc_28f7                    ; 0x2e46
    add sp, byte 4                   ; 0x2e49
    mov ax, 0x59fe                   ; 0x2e4c
    push ax                          ; 0x2e4f
    call ds_dispatch_b90d            ; 0x2e50
    pop cx                           ; 0x2e53
    dec ax                           ; 0x2e54
    mov word [bp - 0x001a], ax       ; 0x2e55
    cmp word [dseg_59fc], byte 0     ; 0x2e58
    je short @..api_idx_0044.l12     ; 0x2e5d
    mov ax, word [bp - 0x0022]       ; 0x2e5f
    cmp ax, word [bp - 0x0018]       ; 0x2e62
    jl short @..api_idx_0044.l9      ; 0x2e65
    inc word [bp - 0x0022]           ; 0x2e67
@..api_idx_0044.l9:
    mov ax, word [bp - 0x0022]       ; 0x2e6a
    cmp ax, strict word 0xffff       ; 0x2e6d
    je short @..api_idx_0044.l10     ; 0x2e70
    cmp ax, word [bp - 0x0018]       ; 0x2e72
    jl short @..api_idx_0044.l10     ; 0x2e75
    mov ax, word [bp - 0x0018]       ; 0x2e77
    add ax, word [bp - 0x0020]       ; 0x2e7a
    mov cx, ax                       ; 0x2e7d
    dec ax                           ; 0x2e7f
    mov cx, ax                       ; 0x2e80
    mov ax, word [bp - 0x0022]       ; 0x2e82
    cmp cx, ax                       ; 0x2e85
    jge short @..api_idx_0044.l11    ; 0x2e87
@..api_idx_0044.l10:
    mov ax, word [bp - 0x0018]       ; 0x2e89
    mov word [bp - 0x0022], ax       ; 0x2e8c
@..api_idx_0044.l11:
    mov word [dseg_5b3e], 1          ; 0x2e8f
    mov ax, word [bp - 0x0022]       ; 0x2e95
    sub ax, word [bp - 0x0018]       ; 0x2e98
    add ax, strict word 0x12         ; 0x2e9b
    mov word [bp - 0x001a], ax       ; 0x2e9e
@..api_idx_0044.l12:
    cmp word [dseg_5b3e], byte 1     ; 0x2ea1
    je short @..api_idx_0044.l13     ; 0x2ea6
    jmp near @..api_idx_0044.l37     ; 0x2ea8
@..api_idx_0044.l13:
    mov ax, word [bp - 0x001a]       ; 0x2eab
    jmp near @..api_idx_0044.l35     ; 0x2eae

    db 0x8d, 0x46, 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x97, 0xc1, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xee, 0x83
    db 0xc1, 0x2a, 0x2b, 0xc1, 0x50, 0xe8, 0xe9, 0x88, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xea, 0x8d, 0x46
    db 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x69, 0xc1, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe2, 0xff
    db 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x2a, 0x2b
    db 0xc1, 0x2b, 0x46, 0xea, 0x50, 0xe8, 0xb9, 0x88, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xee, 0x83, 0x7e
    db 0xbc, 0x07, 0x7e, 0x20, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xec, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xfa, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7
    db 0xf9, 0x89, 0x46, 0xe8, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x40, 0x90, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x62, 0x90, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xff, 0x8a, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x11, 0xb9, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe2, 0x00, 0x74
    db 0x03, 0xe9, 0x0a, 0xff, 0xe9, 0x13, 0x06, 0x83, 0x7e, 0xe6, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x28, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0xb7, 0x8e
    db 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xe8, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xe8, 0xeb, 0x34, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x46, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0x86
    db 0x8e, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xbc, 0x05, 0xf9, 0xff, 0x3b, 0x46, 0xe8, 0x7e, 0x03, 0xff
    db 0x46, 0xe8, 0x83, 0x7e, 0xbc, 0x07, 0x7e, 0x2c, 0xff, 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x64, 0x00, 0xf7, 0x6e, 0xec, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xf9, 0x99, 0xf7
    db 0xf9, 0xf7, 0x6e, 0xe8, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0x53, 0x87, 0x83, 0xc4
    db 0x06, 0x89, 0x46, 0xee, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x00, 0x8f, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x22, 0x8f, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xbf, 0x89, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xd1, 0xb7, 0x83, 0xc4, 0x08, 0xe9, 0xdc, 0x04, 0x83, 0x7e
    db 0x08, 0x00, 0x75, 0x03, 0xe9, 0xa1, 0x00, 0x83, 0x7e, 0xc4, 0x00, 0x7d, 0x03, 0xe9, 0x8a, 0x00
    db 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x3c, 0x8b, 0x46, 0xc2, 0x3b, 0x46, 0xc0, 0x7e, 0x03, 0xe9, 0x79
    db 0x00, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xc4, 0x8b, 0xd8, 0x8a, 0x87, 0x22, 0x06, 0x2a, 0xe4, 0x8b
    db 0x4e, 0xc2, 0x41, 0xf7, 0xe9, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8b, 0x56
    db 0xbe, 0xd1, 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x8b, 0x8f, 0x1c, 0x5c, 0x58, 0x3b, 0xc1
    db 0x7f, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xe2, 0x8c, 0x83, 0xc4, 0x0a, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xc2, 0x8c, 0x83, 0xc4, 0x0a, 0xc7
    db 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x08
    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x28, 0x86, 0x59, 0xe9, 0x2f, 0x04, 0xb8, 0x01, 0x00, 0x50, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x89, 0x8c, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x69, 0x8c, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46
    db 0xe4, 0x00, 0x00, 0xe9, 0xe4, 0x03

@..api_idx_0044.l14:
    cmp word [bp - 0x001a], byte 5   ; 0x3207
    jge short @..api_idx_0044.l15    ; 0x320b
    jmp near @..api_idx_0044.l23     ; 0x320d
@..api_idx_0044.l15:
    cmp word [bp - 0x001a], byte 0x0b ; 0x3210
    jle short @..api_idx_0044.l16    ; 0x3214
    jmp near @..api_idx_0044.l23     ; 0x3216
@..api_idx_0044.l16:
    mov ax, 0                        ; 0x3219
    push ax                          ; 0x321c
    push word [bp - 0x003e]          ; 0x321d
    mov ax, word [bp - 0x0006]       ; 0x3220
    add ax, strict word 0x14         ; 0x3223
    push ax                          ; 0x3226
    mov ax, word [bp - 0x000c]       ; 0x3227
    add ax, strict word 0xc          ; 0x322a
    push ax                          ; 0x322d
    call loc_2731                    ; 0x322e
    add sp, byte 8                   ; 0x3231
    mov ax, word [bp - 0x001a]       ; 0x3234
    add ax, strict word 0xfffb       ; 0x3237
    mov word [bp - 0x003e], ax       ; 0x323a
    mov ax, 1                        ; 0x323d
    push ax                          ; 0x3240
    push word [bp - 0x003e]          ; 0x3241
    mov ax, word [bp - 0x0006]       ; 0x3244
    add ax, strict word 0x14         ; 0x3247
    push ax                          ; 0x324a
    mov ax, word [bp - 0x000c]       ; 0x324b
    add ax, strict word 0xc          ; 0x324e
    push ax                          ; 0x3251
    call loc_2731                    ; 0x3252
    add sp, byte 8                   ; 0x3255
    cmp word [bp - 0x003c], byte 0   ; 0x3258
    jge short @..api_idx_0044.l17    ; 0x325c
    jmp near @..api_idx_0044.l21     ; 0x325e
@..api_idx_0044.l17:
    mov ax, 6                        ; 0x3261
    push ax                          ; 0x3264
    mov ax, 0                        ; 0x3265
    push ax                          ; 0x3268
    mov ax, 0x248                    ; 0x3269
    imul word [bp + 0x4]             ; 0x326c
    mov bx, ax                       ; 0x326f
    mov ax, word [bx + 0x5c18]       ; 0x3271
    push ax                          ; 0x3275
    mov ax, 6                        ; 0x3276
    imul word [bp - 0x003c]          ; 0x3279
    mov bx, ax                       ; 0x327c
    mov al, byte [bx + 0x621]        ; 0x327e
    sub ah, ah                       ; 0x3282
    mov cx, ax                       ; 0x3284
    pop ax                           ; 0x3286
    sub ax, cx                       ; 0x3287
    push ax                          ; 0x3289
    call ds_dispatch_b7c2            ; 0x328a
    add sp, byte 6                   ; 0x328d
    mov word [bp - 0x0040], ax       ; 0x3290
    mov ax, 6                        ; 0x3293
    imul word [bp - 0x003c]          ; 0x3296
    mov bx, ax                       ; 0x3299
    mov al, byte [bx + 0x622]        ; 0x329b
    sub ah, ah                       ; 0x329f
    mov cx, word [bp - 0x0040]       ; 0x32a1
    inc cx                           ; 0x32a4
    imul cx                          ; 0x32a5
    mov word [bp - 0x0002], ax       ; 0x32a7
    cmp word [bp + 0xa], byte 0      ; 0x32aa
    jne short @..api_idx_0044.l18    ; 0x32ae
    mov ax, 0x3e7                    ; 0x32b0
    jmp short @..api_idx_0044.l20    ; 0x32b3
@..api_idx_0044.l18:
    mov ax, 0x248                    ; 0x32b5
    imul word [bp + 0x4]             ; 0x32b8
    mov cx, word [bp - 0x0042]       ; 0x32bb
    shl cx, 1                        ; 0x32be
    shl cx, 1                        ; 0x32c0
    add ax, cx                       ; 0x32c2
    mov bx, ax                       ; 0x32c4
    mov ax, word [bx + 0x5c1c]       ; 0x32c6
    cmp ax, word [bp - 0x0002]       ; 0x32ca
    jge short @..api_idx_0044.l19    ; 0x32cd
    jmp short @..api_idx_0044.l20    ; 0x32cf
@..api_idx_0044.l19:
    mov ax, word [bp - 0x0002]       ; 0x32d1
@..api_idx_0044.l20:
    push ax                          ; 0x32d4
    mov ax, 6                        ; 0x32d5
    imul word [bp - 0x003c]          ; 0x32d8
    mov bx, ax                       ; 0x32db
    mov al, byte [bx + 0x622]        ; 0x32dd
    sub ah, ah                       ; 0x32e1
    mov cx, word [bp - 0x003e]       ; 0x32e3
    inc cx                           ; 0x32e6
    imul cx                          ; 0x32e7
    push ax                          ; 0x32e9
    push word [bp - 0x0042]          ; 0x32ea
    mov ax, word [bp - 0x0006]       ; 0x32ed
    add ax, strict word 0x15         ; 0x32f0
    push ax                          ; 0x32f3
    mov ax, word [bp - 0x000c]       ; 0x32f4
    add ax, strict word 0x5e         ; 0x32f7
    push ax                          ; 0x32fa
    call loc_27bd                    ; 0x32fb
    add sp, byte 0x0a                ; 0x32fe
    jmp short @..api_idx_0044.l22    ; 0x3301
@..api_idx_0044.l21:
    mov ax, 0                        ; 0x3303
    push ax                          ; 0x3306
    push ax                          ; 0x3307
    push word [bp - 0x0042]          ; 0x3308
    mov ax, word [bp - 0x0006]       ; 0x330b
    add ax, strict word 0x15         ; 0x330e
    push ax                          ; 0x3311
    mov ax, word [bp - 0x000c]       ; 0x3312
    add ax, strict word 0x5e         ; 0x3315
    push ax                          ; 0x3318
    call loc_27bd                    ; 0x3319
    add sp, byte 0x0a                ; 0x331c
@..api_idx_0044.l22:
    mov ax, word [bp - 0x0006]       ; 0x331f
    add ax, strict word 0x1c         ; 0x3322
    push ax                          ; 0x3325
    mov ax, word [bp - 0x000c]       ; 0x3326
    add ax, strict word 0x56         ; 0x3329
    push ax                          ; 0x332c
    mov ax, word [bp - 0x0006]       ; 0x332d
    add ax, strict word 0x14         ; 0x3330
    push ax                          ; 0x3333
    mov ax, word [bp - 0x000c]       ; 0x3334
    add ax, strict word 0xb          ; 0x3337
    push ax                          ; 0x333a
    call ds_dispatch_e8da            ; 0x333b
    add sp, byte 8                   ; 0x333e
    mov ax, word [bp - 0x0006]       ; 0x3341
    add ax, strict word 0x1b         ; 0x3344
    push ax                          ; 0x3347
    mov ax, word [bp - 0x000c]       ; 0x3348
    add ax, strict word 0x72         ; 0x334b
    push ax                          ; 0x334e
    mov ax, word [bp - 0x0006]       ; 0x334f
    add ax, strict word 0x15         ; 0x3352
    push ax                          ; 0x3355
    mov ax, word [bp - 0x000c]       ; 0x3356
    add ax, strict word 0x5e         ; 0x3359
    push ax                          ; 0x335c
    call ds_dispatch_e8da            ; 0x335d
    add sp, byte 8                   ; 0x3360
    jmp near @..api_idx_0044.l34     ; 0x3363
@..api_idx_0044.l23:
    cmp word [bp - 0x001a], byte 0x0c ; 0x3366
    jge short @..api_idx_0044.l24    ; 0x336a
    jmp near @..api_idx_0044.l28     ; 0x336c
@..api_idx_0044.l24:
    cmp word [bp - 0x001a], byte 0x11 ; 0x336f
    jle short @..api_idx_0044.l25    ; 0x3373
    jmp near @..api_idx_0044.l28     ; 0x3375
@..api_idx_0044.l25:
    mov ax, word [bp - 0x001a]       ; 0x3378
    add ax, strict word 0xfff4       ; 0x337b
    mov word [bp - 0x0042], ax       ; 0x337e
    mov word [bp - 0x003c], 0xffff   ; 0x3381
    push ax                          ; 0x3386
    push word [bp + 0x4]             ; 0x3387
    call api_idx_0004_4              ; 0x338a
    add sp, byte 4                   ; 0x338d
    mov word [bp - 0x0044], ax       ; 0x3390
    mov ax, 7                        ; 0x3393
    cmp word [bp - 0x0044], byte 7   ; 0x3396
    jge short @..api_idx_0044.l26    ; 0x339a
    mov ax, word [bp - 0x0044]       ; 0x339c
@..api_idx_0044.l26:
    mov word [bp - 0x0024], ax       ; 0x339f
    mov ax, 7                        ; 0x33a2
    cmp word [bp - 0x0044], byte 7   ; 0x33a5
    jge short @..api_idx_0044.l27    ; 0x33a9
    mov ax, word [bp - 0x0044]       ; 0x33ab
@..api_idx_0044.l27:
    mov word [bp - 0x0020], ax       ; 0x33ae
    mov word [bp - 0x0018], 0        ; 0x33b1
    mov word [bp - 0x0022], 0xffff   ; 0x33b6
    push word [bp - 0x0024]          ; 0x33bb
    push word [bp - 0x0022]          ; 0x33be
    push word [bp - 0x0018]          ; 0x33c1
    mov ax, 7                        ; 0x33c4
    push ax                          ; 0x33c7
    mov ax, 0xf                      ; 0x33c8
    push ax                          ; 0x33cb
    mov ax, word [bp - 0x0006]       ; 0x33cc
    add ax, strict word 0x22         ; 0x33cf
    push ax                          ; 0x33d2
    mov ax, word [bp - 0x000c]       ; 0x33d3
    add ax, strict word 6            ; 0x33d6
    push ax                          ; 0x33d9
    call ds_dispatch_bf97            ; 0x33da
    add sp, byte 0x0e                ; 0x33dd
    mov word [bp - 0x0012], 0        ; 0x33e0
    push word [bp - 0x0012]          ; 0x33e5
    mov ax, 7                        ; 0x33e8
    push ax                          ; 0x33eb
    mov ax, 8                        ; 0x33ec
    push ax                          ; 0x33ef
    mov ax, word [bp - 0x0006]       ; 0x33f0
    add ax, strict word 0x22         ; 0x33f3
    push ax                          ; 0x33f6
    mov ax, word [bp - 0x000c]       ; 0x33f7
    add ax, strict word 0x6a         ; 0x33fa
    push ax                          ; 0x33fd
    call ds_dispatch_bfd8            ; 0x33fe
    add sp, byte 0x0a                ; 0x3401
    mov ax, 0                        ; 0x3404
    push ax                          ; 0x3407
    push ax                          ; 0x3408
    mov ax, word [bp - 0x0006]       ; 0x3409
    add ax, word [bp - 0x0012]       ; 0x340c
    add ax, strict word 0x2e         ; 0x340f
    push ax                          ; 0x3412
    mov ax, word [bp - 0x000c]       ; 0x3413
    add ax, strict word 0x72         ; 0x3416
    push ax                          ; 0x3419
    mov ax, word [bp - 0x0006]       ; 0x341a
    add ax, word [bp - 0x0012]       ; 0x341d
    add ax, strict word 0x2a         ; 0x3420
    push ax                          ; 0x3423
    mov ax, word [bp - 0x000c]       ; 0x3424
    add ax, strict word 0x6a         ; 0x3427
    push ax                          ; 0x342a
    mov ax, 0                        ; 0x342b
    push ax                          ; 0x342e
    call ds_dispatch_baa6            ; 0x342f
    add sp, byte 0x0e                ; 0x3432
    mov ax, 0                        ; 0x3435
    push ax                          ; 0x3438
    push ax                          ; 0x3439
    push word [bp - 0x0042]          ; 0x343a
    mov ax, word [bp - 0x0006]       ; 0x343d
    add ax, strict word 0x15         ; 0x3440
    push ax                          ; 0x3443
    mov ax, word [bp - 0x000c]       ; 0x3444
    add ax, strict word 0x5e         ; 0x3447
    push ax                          ; 0x344a
    call loc_27bd                    ; 0x344b
    add sp, byte 0x0a                ; 0x344e
    mov ax, word [bp - 0x0006]       ; 0x3451
    add ax, strict word 0x4c         ; 0x3454
    push ax                          ; 0x3457
    mov ax, word [bp - 0x000c]       ; 0x3458
    add ax, strict word 0x72         ; 0x345b
    push ax                          ; 0x345e
    mov ax, word [bp - 0x0006]       ; 0x345f
    add ax, strict word 0x22         ; 0x3462
    push ax                          ; 0x3465
    mov ax, word [bp - 0x000c]       ; 0x3466
    add ax, strict word 6            ; 0x3469
    push ax                          ; 0x346c
    call ds_dispatch_e8da            ; 0x346d
    add sp, byte 8                   ; 0x3470
    mov ax, word [bp - 0x0006]       ; 0x3473
    add ax, strict word 0x1b         ; 0x3476
    push ax                          ; 0x3479
    mov ax, word [bp - 0x000c]       ; 0x347a
    add ax, strict word 0x72         ; 0x347d
    push ax                          ; 0x3480
    mov ax, word [bp - 0x0006]       ; 0x3481
    add ax, strict word 0x15         ; 0x3484
    push ax                          ; 0x3487
    mov ax, word [bp - 0x000c]       ; 0x3488
    add ax, strict word 0x5e         ; 0x348b
    push ax                          ; 0x348e
    call ds_dispatch_e8da            ; 0x348f
    add sp, byte 8                   ; 0x3492
    jmp near @..api_idx_0044.l34     ; 0x3495
@..api_idx_0044.l28:
    cmp word [bp - 0x001a], byte 0x12 ; 0x3498
    jge short @..api_idx_0044.l29    ; 0x349c
    jmp near @..api_idx_0044.l34     ; 0x349e
@..api_idx_0044.l29:
    mov ax, word [bp - 0x0020]       ; 0x34a1
    add ax, strict word 0x12         ; 0x34a4
    cmp ax, word [bp - 0x001a]       ; 0x34a7
    jg short @..api_idx_0044.l30     ; 0x34aa
    jmp near @..api_idx_0044.l34     ; 0x34ac
@..api_idx_0044.l30:
    mov ax, word [bp - 0x0018]       ; 0x34af
    add ax, word [bp - 0x001a]       ; 0x34b2
    add ax, strict word 0xffee       ; 0x34b5
    mov word [bp - 0x0022], ax       ; 0x34b8
    shl ax, 1                        ; 0x34bb
    mov bx, ax                       ; 0x34bd
    mov ax, word [bx - 0x64f2]       ; 0x34bf
    mov word [bp - 0x003c], ax       ; 0x34c3
    push word [bp - 0x0024]          ; 0x34c6
    push word [bp - 0x0022]          ; 0x34c9
    push word [bp - 0x0018]          ; 0x34cc
    mov ax, 7                        ; 0x34cf
    push ax                          ; 0x34d2
    mov ax, 0xf                      ; 0x34d3
    push ax                          ; 0x34d6
    mov ax, word [bp - 0x0006]       ; 0x34d7
    add ax, strict word 0x22         ; 0x34da
    push ax                          ; 0x34dd
    mov ax, word [bp - 0x000c]       ; 0x34de
    add ax, strict word 6            ; 0x34e1
    push ax                          ; 0x34e4
    call ds_dispatch_bf97            ; 0x34e5
    add sp, byte 0x0e                ; 0x34e8
    mov ax, 6                        ; 0x34eb
    push ax                          ; 0x34ee
    mov ax, 0                        ; 0x34ef
    push ax                          ; 0x34f2
    mov ax, 0x248                    ; 0x34f3
    imul word [bp + 0x4]             ; 0x34f6
    mov bx, ax                       ; 0x34f9
    mov ax, word [bx + 0x5c18]       ; 0x34fb
    push ax                          ; 0x34ff
    mov ax, 6                        ; 0x3500
    imul word [bp - 0x003c]          ; 0x3503
    mov bx, ax                       ; 0x3506
    mov al, byte [bx + 0x621]        ; 0x3508
    sub ah, ah                       ; 0x350c
    mov cx, ax                       ; 0x350e
    pop ax                           ; 0x3510
    sub ax, cx                       ; 0x3511
    push ax                          ; 0x3513
    call ds_dispatch_b7c2            ; 0x3514
    add sp, byte 6                   ; 0x3517
    mov word [bp - 0x0040], ax       ; 0x351a
    mov ax, 6                        ; 0x351d
    imul word [bp - 0x003c]          ; 0x3520
    mov bx, ax                       ; 0x3523
    mov al, byte [bx + 0x622]        ; 0x3525
    sub ah, ah                       ; 0x3529
    mov cx, word [bp - 0x0040]       ; 0x352b
    inc cx                           ; 0x352e
    imul cx                          ; 0x352f
    mov word [bp - 0x0002], ax       ; 0x3531
    cmp word [bp + 0xa], byte 0      ; 0x3534
    jne short @..api_idx_0044.l31    ; 0x3538
    mov ax, 0x3e7                    ; 0x353a
    jmp short @..api_idx_0044.l33    ; 0x353d
@..api_idx_0044.l31:
    mov ax, 0x248                    ; 0x353f
    imul word [bp + 0x4]             ; 0x3542
    mov cx, word [bp - 0x0042]       ; 0x3545
    shl cx, 1                        ; 0x3548
    shl cx, 1                        ; 0x354a
    add ax, cx                       ; 0x354c
    mov bx, ax                       ; 0x354e
    mov ax, word [bx + 0x5c1c]       ; 0x3550
    cmp ax, word [bp - 0x0002]       ; 0x3554
    jge short @..api_idx_0044.l32    ; 0x3557
    jmp short @..api_idx_0044.l33    ; 0x3559
@..api_idx_0044.l32:
    mov ax, word [bp - 0x0002]       ; 0x355b
@..api_idx_0044.l33:
    push ax                          ; 0x355e
    mov ax, 6                        ; 0x355f
    imul word [bp - 0x003c]          ; 0x3562
    mov bx, ax                       ; 0x3565
    mov al, byte [bx + 0x622]        ; 0x3567
    sub ah, ah                       ; 0x356b
    mov cx, word [bp - 0x003e]       ; 0x356d
    inc cx                           ; 0x3570
    imul cx                          ; 0x3571
    push ax                          ; 0x3573
    push word [bp - 0x0042]          ; 0x3574
    mov ax, word [bp - 0x0006]       ; 0x3577
    add ax, strict word 0x15         ; 0x357a
    push ax                          ; 0x357d
    mov ax, word [bp - 0x000c]       ; 0x357e
    add ax, strict word 0x5e         ; 0x3581
    push ax                          ; 0x3584
    call loc_27bd                    ; 0x3585
    add sp, byte 0x0a                ; 0x3588
    mov ax, word [bp - 0x0006]       ; 0x358b
    add ax, strict word 0x4c         ; 0x358e
    push ax                          ; 0x3591
    mov ax, word [bp - 0x000c]       ; 0x3592
    add ax, strict word 0x72         ; 0x3595
    push ax                          ; 0x3598
    mov ax, word [bp - 0x0006]       ; 0x3599
    add ax, strict word 0x22         ; 0x359c
    push ax                          ; 0x359f
    mov ax, word [bp - 0x000c]       ; 0x35a0
    add ax, strict word 6            ; 0x35a3
    push ax                          ; 0x35a6
    call ds_dispatch_e8da            ; 0x35a7
    add sp, byte 8                   ; 0x35aa
    mov ax, word [bp - 0x0006]       ; 0x35ad
    add ax, strict word 0x1b         ; 0x35b0
    push ax                          ; 0x35b3
    mov ax, word [bp - 0x000c]       ; 0x35b4
    add ax, strict word 0x72         ; 0x35b7
    push ax                          ; 0x35ba
    mov ax, word [bp - 0x0006]       ; 0x35bb
    add ax, strict word 0x15         ; 0x35be
    push ax                          ; 0x35c1
    mov ax, word [bp - 0x000c]       ; 0x35c2
    add ax, strict word 0x5e         ; 0x35c5
    push ax                          ; 0x35c8
    call ds_dispatch_e8da            ; 0x35c9
    add sp, byte 8                   ; 0x35cc
@..api_idx_0044.l34:
    jmp short @..api_idx_0044.l37    ; 0x35cf
    clc                              ; 0x35d1
    jle short loc_35f3               ; 0x35d2
    sbb byte [bx], 0x80              ; 0x35d4
    push si                          ; 0x35d7
    db 0x81, 0x03, 0x82
@..api_idx_0044.l35:
    cmp ax, strict word 5            ; 0x35db
    jae short @..api_idx_0044.l36    ; 0x35de
    xchg bx, ax                      ; 0x35e0
    shl bx, 1                        ; 0x35e1
    jmp [cs:bx - 0x79e8]             ; 0x35e3
@..api_idx_0044.l36:
    jmp near @..api_idx_0044.l14     ; 0x35e8
@..api_idx_0044.l37:
    cmp word [bp - 0x001c], byte 0   ; 0x35eb
    je short @..api_idx_0044.l38     ; 0x35ef
    jmp near @..api_idx_0044.l8      ; 0x35f1
@..api_idx_0044.l38:
    mov ax, 1                        ; 0x35f4
    push ax                          ; 0x35f7
    push word [bp - 0x003a]          ; 0x35f8
    call ds_dispatch_c459            ; 0x35fb
    add sp, byte 4                   ; 0x35fe
    mov ax, word [bp - 0x000a]       ; 0x3601
    inc ax                           ; 0x3604
    push ax                          ; 0x3605
    mov ax, word [bp - 0x0008]       ; 0x3606
    inc ax                           ; 0x3609
    push ax                          ; 0x360a
    mov ax, word [bp - 0x0006]       ; 0x360b
    dec ax                           ; 0x360e
    push ax                          ; 0x360f
    mov ax, word [bp - 0x0004]       ; 0x3610
    dec ax                           ; 0x3613
    push ax                          ; 0x3614
    call ds_dispatch_e8da            ; 0x3615
    add sp, byte 8                   ; 0x3618
    mov ax, word [bp - 0x003e]       ; 0x361b
    xchg al, ah                      ; 0x361e
    sub al, al                       ; 0x3620
    add ax, word [bp - 0x003c]       ; 0x3622
    add ax, 0x100                    ; 0x3625
    mov word [dseg_904e], ax         ; 0x3628
    mov ax, word [dseg_9050]         ; 0x362b
    ret                              ; 0x362e
