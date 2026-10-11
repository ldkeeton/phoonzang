api_idx_0050:
    mov ax, 0xffb0                   ; 0x2c84
    call ds_dispatch_f40b            ; 0x2c87
    mov word [bp - 0x0002], 0        ; 0x2c8a
@..api_idx_0050.l1:
    mov ax, word [bp - 0x0002]       ; 0x2c8f
    shl ax, 1                        ; 0x2c92
    mov bx, ax                       ; 0x2c94
    mov ax, word [bx - 0x7cf2]       ; 0x2c96
    add bx, bp                       ; 0x2c9a
    mov word [bx - 0x0050], ax       ; 0x2c9c
    mov ax, word [bp - 0x0002]       ; 0x2c9f
    shl ax, 1                        ; 0x2ca2
    mov bx, ax                       ; 0x2ca4
    mov word [bx - 0x7cf2], 0        ; 0x2ca6
    inc word [bp - 0x0002]           ; 0x2cac
    mov ax, word [bp - 0x0002]       ; 0x2caf
    cmp ax, strict word 6            ; 0x2cb2
    jl short @..api_idx_0050.l1      ; 0x2cb5
    mov word [bss_904e], 0xffff      ; 0x2cb7
    mov word [bp - 0x0004], 0x32     ; 0x2cbd
    mov word [bp - 0x0006], 0x73     ; 0x2cc2
    mov word [bp - 0x0008], 0x10d    ; 0x2cc7
    mov word [bp - 0x000a], 0xc5     ; 0x2ccc
    mov word [bp - 0x000c], 0x95     ; 0x2cd1
    mov word [bp - 0x0014], 0x16     ; 0x2cd6
    mov ax, 0x90ab                   ; 0x2cdb
    push ax                          ; 0x2cde
    mov ax, word [bp - 0x000a]       ; 0x2cdf
    inc ax                           ; 0x2ce2
    push ax                          ; 0x2ce3
    mov ax, word [bp - 0x0008]       ; 0x2ce4
    inc ax                           ; 0x2ce7
    push ax                          ; 0x2ce8
    mov ax, word [bp - 0x0006]       ; 0x2ce9
    dec ax                           ; 0x2cec
    push ax                          ; 0x2ced
    mov ax, word [bp - 0x0004]       ; 0x2cee
    dec ax                           ; 0x2cf1
    push ax                          ; 0x2cf2
    call ds_dispatch_c283            ; 0x2cf3
    add sp, byte 0x0a                ; 0x2cf6
    mov word [bp - 0x003a], ax       ; 0x2cf9
    push word [bp - 0x000a]          ; 0x2cfc
    push word [bp - 0x0008]          ; 0x2cff
    push word [bp - 0x0006]          ; 0x2d02
    push word [bp - 0x0004]          ; 0x2d05
    call ds_dispatch_bc9a            ; 0x2d08
    add sp, byte 8                   ; 0x2d0b
    push word [bp - 0x000a]          ; 0x2d0e
    push word [bp - 0x0008]          ; 0x2d11
    push word [bp - 0x0006]          ; 0x2d14
    mov ax, 0x95                     ; 0x2d17
    push ax                          ; 0x2d1a
    call ds_dispatch_bc9a            ; 0x2d1b
    add sp, byte 8                   ; 0x2d1e
    call api_idx_000a_2              ; 0x2d21
    push word [bp + 0x4]             ; 0x2d24
    call api_idx_000c_3              ; 0x2d27
    pop cx                           ; 0x2d2a
    mov ax, 1                        ; 0x2d2b
    push ax                          ; 0x2d2e
    mov ax, 0x73                     ; 0x2d2f
    push ax                          ; 0x2d32
    mov ax, 0x32                     ; 0x2d33
    push ax                          ; 0x2d36
    call api_idx_000c_2              ; 0x2d37
    add sp, byte 6                   ; 0x2d3a
    lea ax, word [bp - 0x0038]       ; 0x2d3d
    push ax                          ; 0x2d40
    push word [bp + 0x6]             ; 0x2d41
    call ds_dispatch_b53b            ; 0x2d44
    add sp, byte 4                   ; 0x2d47
    lea ax, word [bp - 0x0038]       ; 0x2d4a
    push ax                          ; 0x2d4d
    push word [bp + 0x8]             ; 0x2d4e
    mov ax, 1                        ; 0x2d51
    push ax                          ; 0x2d54
    mov ax, 8                        ; 0x2d55
    push ax                          ; 0x2d58
    mov ax, word [bp - 0x0006]       ; 0x2d59
    add ax, strict word 6            ; 0x2d5c
    push ax                          ; 0x2d5f
    mov ax, word [bp - 0x000c]       ; 0x2d60
    add ax, strict word 6            ; 0x2d63
    push ax                          ; 0x2d66
    call ds_dispatch_c0c1            ; 0x2d67
    add sp, byte 0x0c                ; 0x2d6a
    lea ax, word [bp - 0x0038]       ; 0x2d6d
    push ax                          ; 0x2d70
    mov ax, word [bp + 0x6]          ; 0x2d71
    inc ax                           ; 0x2d74
    push ax                          ; 0x2d75
    call ds_dispatch_b53b            ; 0x2d76
    add sp, byte 4                   ; 0x2d79
    lea ax, word [bp - 0x0038]       ; 0x2d7c
    push ax                          ; 0x2d7f
    mov ax, 1                        ; 0x2d80
    push ax                          ; 0x2d83
    push ax                          ; 0x2d84
    mov ax, 8                        ; 0x2d85
    push ax                          ; 0x2d88
    mov ax, word [bp - 0x0006]       ; 0x2d89
    add ax, strict word 6            ; 0x2d8c
    push ax                          ; 0x2d8f
    mov ax, word [bp - 0x000c]       ; 0x2d90
    add ax, strict word 0x42         ; 0x2d93
    push ax                          ; 0x2d96
    call ds_dispatch_c0c1            ; 0x2d97
    add sp, byte 0x0c                ; 0x2d9a
    mov ax, word [bp - 0x0006]       ; 0x2d9d
    add ax, strict word 0x14         ; 0x2da0
    push ax                          ; 0x2da3
    mov ax, word [bp - 0x000c]       ; 0x2da4
    add ax, strict word 0x48         ; 0x2da7
    push ax                          ; 0x2daa
    call ds_dispatch_e809            ; 0x2dab
    add sp, byte 4                   ; 0x2dae
    mov ax, 0                        ; 0x2db1
    push ax                          ; 0x2db4
    mov ax, 0xcd                     ; 0x2db5
    push ax                          ; 0x2db8
    call ds_dispatch_e823            ; 0x2db9
    add sp, byte 4                   ; 0x2dbc
    mov ax, 2                        ; 0x2dbf
    push ax                          ; 0x2dc2
    mov ax, 0xa                      ; 0x2dc3
    push ax                          ; 0x2dc6
    call ds_dispatch_e830            ; 0x2dc7
    add sp, byte 4                   ; 0x2dca
    mov word [bp - 0x003c], 0xffff   ; 0x2dcd
    mov word [bp - 0x003e], 0        ; 0x2dd2
    mov word [bp - 0x0040], 0        ; 0x2dd7
    mov word [bp - 0x0002], 0        ; 0x2ddc
@..api_idx_0050.l2:
    mov ax, 0                        ; 0x2de1
    mov cx, word [bp - 0x0002]       ; 0x2de4
    cmp cx, word [bp - 0x003e]       ; 0x2de7
    jne short @..api_idx_0050.l3     ; 0x2dea
    mov ax, 1                        ; 0x2dec
@..api_idx_0050.l3:
    push ax                          ; 0x2def
    push cx                          ; 0x2df0
    mov ax, word [bp - 0x0006]       ; 0x2df1
    add ax, strict word 0x14         ; 0x2df4
    push ax                          ; 0x2df7
    mov ax, word [bp - 0x000c]       ; 0x2df8
    add ax, strict word 0xc          ; 0x2dfb
    push ax                          ; 0x2dfe
    call loc_2a2d                    ; 0x2dff
    add sp, byte 8                   ; 0x2e02
    inc word [bp - 0x0002]           ; 0x2e05
    mov ax, word [bp - 0x0002]       ; 0x2e08
    cmp ax, strict word 7            ; 0x2e0b
    jl short @..api_idx_0050.l2      ; 0x2e0e
    mov word [bp - 0x0042], 0        ; 0x2e10
    mov ax, 0                        ; 0x2e15
    push ax                          ; 0x2e18
    push ax                          ; 0x2e19
    push word [bp - 0x0042]          ; 0x2e1a
    mov ax, word [bp - 0x0006]       ; 0x2e1d
    add ax, strict word 0x15         ; 0x2e20
    push ax                          ; 0x2e23
    mov ax, word [bp - 0x000c]       ; 0x2e24
    add ax, strict word 0x5e         ; 0x2e27
    push ax                          ; 0x2e2a
    call loc_2ab9                    ; 0x2e2b
    add sp, byte 0x0a                ; 0x2e2e
    push word [bp - 0x0042]          ; 0x2e31
    push word [bp + 0x4]             ; 0x2e34
    call api_idx_0004_4              ; 0x2e37
    add sp, byte 4                   ; 0x2e3a
    mov word [bp - 0x0044], ax       ; 0x2e3d
    mov ax, 7                        ; 0x2e40
    cmp word [bp - 0x0044], byte 7   ; 0x2e43
    jge short @..api_idx_0050.l4     ; 0x2e47
    mov ax, word [bp - 0x0044]       ; 0x2e49
@..api_idx_0050.l4:
    mov word [bp - 0x0024], ax       ; 0x2e4c
    mov word [bp - 0x0018], 0        ; 0x2e4f
    mov word [bp - 0x0022], 0xffff   ; 0x2e54
    push ax                          ; 0x2e59
    push word [bp - 0x0022]          ; 0x2e5a
    push word [bp - 0x0018]          ; 0x2e5d
    mov ax, 7                        ; 0x2e60
    push ax                          ; 0x2e63
    mov ax, 0xf                      ; 0x2e64
    push ax                          ; 0x2e67
    mov ax, word [bp - 0x0006]       ; 0x2e68
    add ax, strict word 0x22         ; 0x2e6b
    push ax                          ; 0x2e6e
    mov ax, word [bp - 0x000c]       ; 0x2e6f
    add ax, strict word 6            ; 0x2e72
    push ax                          ; 0x2e75
    call ds_dispatch_bf97            ; 0x2e76
    add sp, byte 0x0e                ; 0x2e79
    mov word [bp - 0x0012], 0        ; 0x2e7c
    push word [bp - 0x0012]          ; 0x2e81
    mov ax, 7                        ; 0x2e84
    push ax                          ; 0x2e87
    mov ax, 8                        ; 0x2e88
    push ax                          ; 0x2e8b
    mov ax, word [bp - 0x0006]       ; 0x2e8c
    add ax, strict word 0x22         ; 0x2e8f
    push ax                          ; 0x2e92
    mov ax, word [bp - 0x000c]       ; 0x2e93
    add ax, strict word 0x6a         ; 0x2e96
    push ax                          ; 0x2e99
    call ds_dispatch_bfd8            ; 0x2e9a
    add sp, byte 0x0a                ; 0x2e9d
    mov ax, 0                        ; 0x2ea0
    push ax                          ; 0x2ea3
    push ax                          ; 0x2ea4
    mov ax, word [bp - 0x0006]       ; 0x2ea5
    add ax, word [bp - 0x0012]       ; 0x2ea8
    add ax, strict word 0x2e         ; 0x2eab
    push ax                          ; 0x2eae
    mov ax, word [bp - 0x000c]       ; 0x2eaf
    add ax, strict word 0x72         ; 0x2eb2
    push ax                          ; 0x2eb5
    mov ax, word [bp - 0x0006]       ; 0x2eb6
    add ax, word [bp - 0x0012]       ; 0x2eb9
    add ax, strict word 0x2a         ; 0x2ebc
    push ax                          ; 0x2ebf
    mov ax, word [bp - 0x000c]       ; 0x2ec0
    add ax, strict word 0x6a         ; 0x2ec3
    push ax                          ; 0x2ec6
    mov ax, 0                        ; 0x2ec7
    push ax                          ; 0x2eca
    call ds_dispatch_baa6            ; 0x2ecb
    add sp, byte 0x0e                ; 0x2ece
    mov ax, 0                        ; 0x2ed1
    push ax                          ; 0x2ed4
    mov ax, 9                        ; 0x2ed5
    push ax                          ; 0x2ed8
    mov ax, word [bp - 0x0006]       ; 0x2ed9
    add ax, strict word 0x28         ; 0x2edc
    push ax                          ; 0x2edf
    mov ax, word [bp - 0x000c]       ; 0x2ee0
    add ax, strict word 0x72         ; 0x2ee3
    push ax                          ; 0x2ee6
    mov ax, word [bp - 0x0006]       ; 0x2ee7
    add ax, strict word 0x22         ; 0x2eea
    push ax                          ; 0x2eed
    mov ax, word [bp - 0x000c]       ; 0x2eee
    add ax, strict word 0x6a         ; 0x2ef1
    push ax                          ; 0x2ef4
    mov ax, 1                        ; 0x2ef5
    push ax                          ; 0x2ef8
    call ds_dispatch_baa6            ; 0x2ef9
    add sp, byte 0x0e                ; 0x2efc
    mov ax, 0                        ; 0x2eff
    push ax                          ; 0x2f02
    mov ax, 0xb                      ; 0x2f03
    push ax                          ; 0x2f06
    mov ax, word [bp - 0x0006]       ; 0x2f07
    add ax, strict word 0x4c         ; 0x2f0a
    push ax                          ; 0x2f0d
    mov ax, word [bp - 0x000c]       ; 0x2f0e
    add ax, strict word 0x72         ; 0x2f11
    push ax                          ; 0x2f14
    mov ax, word [bp - 0x0006]       ; 0x2f15
    add ax, strict word 0x46         ; 0x2f18
    push ax                          ; 0x2f1b
    mov ax, word [bp - 0x000c]       ; 0x2f1c
    add ax, strict word 0x6a         ; 0x2f1f
    push ax                          ; 0x2f22
    mov ax, 2                        ; 0x2f23
    push ax                          ; 0x2f26
    call ds_dispatch_baa6            ; 0x2f27
    add sp, byte 0x0e                ; 0x2f2a
    mov ax, 0                        ; 0x2f2d
    push ax                          ; 0x2f30
    mov ax, 0xd                      ; 0x2f31
    push ax                          ; 0x2f34
    mov ax, word [bp - 0x0006]       ; 0x2f35
    add ax, strict word 0xe          ; 0x2f38
    push ax                          ; 0x2f3b
    mov ax, word [bp - 0x000c]       ; 0x2f3c
    add ax, strict word 0x36         ; 0x2f3f
    push ax                          ; 0x2f42
    mov ax, word [bp - 0x0006]       ; 0x2f43
    add ax, strict word 6            ; 0x2f46
    push ax                          ; 0x2f49
    mov ax, word [bp - 0x000c]       ; 0x2f4a
    add ax, strict word 6            ; 0x2f4d
    push ax                          ; 0x2f50
    mov ax, 3                        ; 0x2f51
    push ax                          ; 0x2f54
    call ds_dispatch_baa6            ; 0x2f55
    add sp, byte 0x0e                ; 0x2f58
    mov ax, 0                        ; 0x2f5b
    push ax                          ; 0x2f5e
    mov ax, 0x1b                     ; 0x2f5f
    push ax                          ; 0x2f62
    mov ax, word [bp - 0x0006]       ; 0x2f63
    add ax, strict word 0xe          ; 0x2f66
    push ax                          ; 0x2f69
    mov ax, word [bp - 0x000c]       ; 0x2f6a
    add ax, strict word 0x72         ; 0x2f6d
    push ax                          ; 0x2f70
    mov ax, word [bp - 0x0006]       ; 0x2f71
    add ax, strict word 6            ; 0x2f74
    push ax                          ; 0x2f77
    mov ax, word [bp - 0x000c]       ; 0x2f78
    add ax, strict word 0x42         ; 0x2f7b
    push ax                          ; 0x2f7e
    mov ax, 4                        ; 0x2f7f
    push ax                          ; 0x2f82
    call ds_dispatch_baa6            ; 0x2f83
    add sp, byte 0x0e                ; 0x2f86
    mov word [bp - 0x0002], 0        ; 0x2f89
@..api_idx_0050.l5:
    mov ax, 0                        ; 0x2f8e
    push ax                          ; 0x2f91
    mov ax, word [bp - 0x0002]       ; 0x2f92
    add ax, strict word 0x31         ; 0x2f95
    cbw                              ; 0x2f98
    push ax                          ; 0x2f99
    mov ax, word [bp - 0x0006]       ; 0x2f9a
    add ax, strict word 0x1b         ; 0x2f9d
    push ax                          ; 0x2fa0
    mov ax, 0xa                      ; 0x2fa1
    imul word [bp - 0x0002]          ; 0x2fa4
    add ax, word [bp - 0x000c]       ; 0x2fa7
    add ax, strict word 0x13         ; 0x2faa
    push ax                          ; 0x2fad
    mov ax, word [bp - 0x0006]       ; 0x2fae
    add ax, strict word 0x14         ; 0x2fb1
    push ax                          ; 0x2fb4
    mov ax, 0xa                      ; 0x2fb5
    imul word [bp - 0x0002]          ; 0x2fb8
    add ax, word [bp - 0x000c]       ; 0x2fbb
    add ax, strict word 0xc          ; 0x2fbe
    push ax                          ; 0x2fc1
    mov ax, word [bp - 0x0002]       ; 0x2fc2
    add ax, strict word 5            ; 0x2fc5
    push ax                          ; 0x2fc8
    call ds_dispatch_baa6            ; 0x2fc9
    add sp, byte 0x0e                ; 0x2fcc
    inc word [bp - 0x0002]           ; 0x2fcf
    mov ax, word [bp - 0x0002]       ; 0x2fd2
    cmp ax, strict word 7            ; 0x2fd5
    jl short @..api_idx_0050.l5      ; 0x2fd8
    mov ax, 0                        ; 0x2fda
    push ax                          ; 0x2fdd
    mov ax, 0x46                     ; 0x2fde
    push ax                          ; 0x2fe1
    mov ax, 0x87                     ; 0x2fe2
    push ax                          ; 0x2fe5
    mov ax, 0x52                     ; 0x2fe6
    push ax                          ; 0x2fe9
    mov ax, 0x74                     ; 0x2fea
    push ax                          ; 0x2fed
    mov ax, 0x46                     ; 0x2fee
    push ax                          ; 0x2ff1
    mov ax, 0xc                      ; 0x2ff2
    push ax                          ; 0x2ff5
    call ds_dispatch_baa6            ; 0x2ff6
    add sp, byte 0x0e                ; 0x2ff9
    mov ax, 0                        ; 0x2ffc
    push ax                          ; 0x2fff
    mov ax, 0x57                     ; 0x3000
    push ax                          ; 0x3003
    mov ax, 0x9d                     ; 0x3004
    push ax                          ; 0x3007
    mov ax, 0x4b                     ; 0x3008
    push ax                          ; 0x300b
    mov ax, 0x90                     ; 0x300c
    push ax                          ; 0x300f
    mov ax, 0x32                     ; 0x3010
    push ax                          ; 0x3013
    mov ax, 0xd                      ; 0x3014
    push ax                          ; 0x3017
    call ds_dispatch_baa6            ; 0x3018
    add sp, byte 0x0e                ; 0x301b
    mov ax, 0                        ; 0x301e
    push ax                          ; 0x3021
    mov ax, 0x41                     ; 0x3022
    push ax                          ; 0x3025
    mov ax, 0xbb                     ; 0x3026
    push ax                          ; 0x3029
    mov ax, 0x5f                     ; 0x302a
    push ax                          ; 0x302d
    mov ax, 0xa5                     ; 0x302e
    push ax                          ; 0x3031
    mov ax, 0x43                     ; 0x3032
    push ax                          ; 0x3035
    mov ax, 0xe                      ; 0x3036
    push ax                          ; 0x3039
    call ds_dispatch_baa6            ; 0x303a
    add sp, byte 0x0e                ; 0x303d
    mov ax, 0                        ; 0x3040
    push ax                          ; 0x3043
    mov ax, 0x45                     ; 0x3044
    push ax                          ; 0x3047
    mov ax, 0x89                     ; 0x3048
    push ax                          ; 0x304b
    mov ax, 0x87                     ; 0x304c
    push ax                          ; 0x304f
    mov ax, 0x77                     ; 0x3050
    push ax                          ; 0x3053
    mov ax, 0x6c                     ; 0x3054
    push ax                          ; 0x3057
    mov ax, 0xf                      ; 0x3058
    push ax                          ; 0x305b
    call ds_dispatch_baa6            ; 0x305c
    add sp, byte 0x0e                ; 0x305f
    mov ax, 0                        ; 0x3062
    push ax                          ; 0x3065
    mov ax, 0x4d                     ; 0x3066
    push ax                          ; 0x3069
    mov ax, 0x9c                     ; 0x306a
    push ax                          ; 0x306d
    mov ax, 0x8e                     ; 0x306e
    push ax                          ; 0x3071
    mov ax, 0x91                     ; 0x3072
    push ax                          ; 0x3075
    mov ax, 0x7f                     ; 0x3076
    push ax                          ; 0x3079
    mov ax, 0x10                     ; 0x307a
    push ax                          ; 0x307d
    call ds_dispatch_baa6            ; 0x307e
    add sp, byte 0x0e                ; 0x3081
    mov ax, 0                        ; 0x3084
    push ax                          ; 0x3087
    mov ax, 0x44                     ; 0x3088
    push ax                          ; 0x308b
    mov ax, 0xb9                     ; 0x308c
    push ax                          ; 0x308f
    mov ax, 0x81                     ; 0x3090
    push ax                          ; 0x3093
    mov ax, 0xa6                     ; 0x3094
    push ax                          ; 0x3097
    mov ax, 0x71                     ; 0x3098
    push ax                          ; 0x309b
    mov ax, 0x11                     ; 0x309c
    push ax                          ; 0x309f
    call ds_dispatch_baa6            ; 0x30a0
    add sp, byte 0x0e                ; 0x30a3
    mov ax, 7                        ; 0x30a6
    cmp word [bp - 0x0044], byte 7   ; 0x30a9
    jge short @..api_idx_0050.l6     ; 0x30ad
    mov ax, word [bp - 0x0044]       ; 0x30af
@..api_idx_0050.l6:
    mov word [bp - 0x0020], ax       ; 0x30b2
    mov word [bp - 0x0002], 0        ; 0x30b5
@..api_idx_0050.l7:
    mov ax, 0                        ; 0x30ba
    push ax                          ; 0x30bd
    push ax                          ; 0x30be
    mov ax, 6                        ; 0x30bf
    imul word [bp - 0x0002]          ; 0x30c2
    add ax, word [bp - 0x0006]       ; 0x30c5
    add ax, strict word 0x28         ; 0x30c8
    push ax                          ; 0x30cb
    mov ax, word [bp - 0x000c]       ; 0x30cc
    add ax, strict word 0x62         ; 0x30cf
    push ax                          ; 0x30d2
    mov ax, 6                        ; 0x30d3
    imul word [bp - 0x0002]          ; 0x30d6
    add ax, word [bp - 0x0006]       ; 0x30d9
    add ax, strict word 0x22         ; 0x30dc
    push ax                          ; 0x30df
    mov ax, word [bp - 0x000c]       ; 0x30e0
    add ax, strict word 6            ; 0x30e3
    push ax                          ; 0x30e6
    mov ax, word [bp - 0x0002]       ; 0x30e7
    add ax, strict word 0x12         ; 0x30ea
    push ax                          ; 0x30ed
    call ds_dispatch_baa6            ; 0x30ee
    add sp, byte 0x0e                ; 0x30f1
    inc word [bp - 0x0002]           ; 0x30f4
    mov ax, word [bp - 0x0002]       ; 0x30f7
    cmp ax, strict word 7            ; 0x30fa
    jl short @..api_idx_0050.l7      ; 0x30fd
    mov ax, 0                        ; 0x30ff
    push ax                          ; 0x3102
    push ax                          ; 0x3103
    push ax                          ; 0x3104
    push ax                          ; 0x3105
    push ax                          ; 0x3106
    mov ax, 0xffff                   ; 0x3107
    push ax                          ; 0x310a
    mov ax, 0x19                     ; 0x310b
    push ax                          ; 0x310e
    call ds_dispatch_baa6            ; 0x310f
    add sp, byte 0x0e                ; 0x3112
    mov ax, word [bp - 0x000a]       ; 0x3115
    inc ax                           ; 0x3118
    push ax                          ; 0x3119
    mov ax, word [bp - 0x0008]       ; 0x311a
    inc ax                           ; 0x311d
    push ax                          ; 0x311e
    mov ax, word [bp - 0x0006]       ; 0x311f
    dec ax                           ; 0x3122
    push ax                          ; 0x3123
    mov ax, word [bp - 0x0004]       ; 0x3124
    dec ax                           ; 0x3127
    push ax                          ; 0x3128
    call ds_dispatch_e8da            ; 0x3129
    add sp, byte 8                   ; 0x312c
    mov word [bss_9562], 7           ; 0x312f
    les bx, word [dseg_0002]         ; 0x3135
    mov ax, word [es:bx]             ; 0x3139
    mov dx, word [es:bx + 0x2]       ; 0x313c
    mov word [bss_908c], dx          ; 0x3140
    mov word [bss_908a], ax          ; 0x3144
    mov word [bp - 0x001c], 1        ; 0x3147
@..api_idx_0050.l8:
    push word [bp - 0x0042]          ; 0x314c
    push word [bp + 0x4]             ; 0x314f
    call loc_2bf3                    ; 0x3152
    add sp, byte 4                   ; 0x3155
    mov ax, 0x59fe                   ; 0x3158
    push ax                          ; 0x315b
    call ds_dispatch_b90d            ; 0x315c
    pop cx                           ; 0x315f
    dec ax                           ; 0x3160
    mov word [bp - 0x001a], ax       ; 0x3161
    cmp word [bss_59fc], byte 0      ; 0x3164
    je short @..api_idx_0050.l12     ; 0x3169
    mov ax, word [bp - 0x0022]       ; 0x316b
    cmp ax, word [bp - 0x0018]       ; 0x316e
    jl short @..api_idx_0050.l9      ; 0x3171
    inc word [bp - 0x0022]           ; 0x3173
@..api_idx_0050.l9:
    mov ax, word [bp - 0x0022]       ; 0x3176
    cmp ax, strict word 0xffff       ; 0x3179
    je short @..api_idx_0050.l10     ; 0x317c
    cmp ax, word [bp - 0x0018]       ; 0x317e
    jl short @..api_idx_0050.l10     ; 0x3181
    mov ax, word [bp - 0x0018]       ; 0x3183
    add ax, word [bp - 0x0020]       ; 0x3186
    mov cx, ax                       ; 0x3189
    dec ax                           ; 0x318b
    mov cx, ax                       ; 0x318c
    mov ax, word [bp - 0x0022]       ; 0x318e
    cmp cx, ax                       ; 0x3191
    jge short @..api_idx_0050.l11    ; 0x3193
@..api_idx_0050.l10:
    mov ax, word [bp - 0x0018]       ; 0x3195
    mov word [bp - 0x0022], ax       ; 0x3198
@..api_idx_0050.l11:
    mov word [bss_5b3e], 1           ; 0x319b
    mov ax, word [bp - 0x0022]       ; 0x31a1
    sub ax, word [bp - 0x0018]       ; 0x31a4
    add ax, strict word 0x12         ; 0x31a7
    mov word [bp - 0x001a], ax       ; 0x31aa
@..api_idx_0050.l12:
    cmp word [bss_5b3e], byte 1      ; 0x31ad
    je short @..api_idx_0050.l13     ; 0x31b2
    jmp near @..api_idx_0050.l37     ; 0x31b4
@..api_idx_0050.l13:
    mov ax, word [bp - 0x001a]       ; 0x31b7
    jmp near @..api_idx_0050.l35     ; 0x31ba

    db 0x8d, 0x46, 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x8b, 0xbe, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xee, 0x83
    db 0xc1, 0x2a, 0x2b, 0xc1, 0x50, 0xe8, 0xdd, 0x85, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xea, 0x8d, 0x46
    db 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x5d, 0xbe, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe2, 0xff
    db 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x2a, 0x2b
    db 0xc1, 0x2b, 0x46, 0xea, 0x50, 0xe8, 0xad, 0x85, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xee, 0x83, 0x7e
    db 0xbc, 0x07, 0x7e, 0x20, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xec, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xfa, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7
    db 0xf9, 0x89, 0x46, 0xe8, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x34, 0x8d, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x56, 0x8d, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xf3, 0x87, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x05, 0xb6, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe2, 0x00, 0x74
    db 0x03, 0xe9, 0x0a, 0xff, 0xe9, 0x13, 0x06, 0x83, 0x7e, 0xe6, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x28, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0xab, 0x8b
    db 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xe8, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xe8, 0xeb, 0x34, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x46, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0x7a
    db 0x8b, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xbc, 0x05, 0xf9, 0xff, 0x3b, 0x46, 0xe8, 0x7e, 0x03, 0xff
    db 0x46, 0xe8, 0x83, 0x7e, 0xbc, 0x07, 0x7e, 0x2c, 0xff, 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x64, 0x00, 0xf7, 0x6e, 0xec, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xf9, 0x99, 0xf7
    db 0xf9, 0xf7, 0x6e, 0xe8, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0x47, 0x84, 0x83, 0xc4
    db 0x06, 0x89, 0x46, 0xee, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0xf4, 0x8b, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x16, 0x8c, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xb3, 0x86, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xc5, 0xb4, 0x83, 0xc4, 0x08, 0xe9, 0xdc, 0x04, 0x83, 0x7e
    db 0x08, 0x00, 0x75, 0x03, 0xe9, 0xa1, 0x00, 0x83, 0x7e, 0xc4, 0x00, 0x7d, 0x03, 0xe9, 0x8a, 0x00
    db 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x3c, 0x8b, 0x46, 0xc2, 0x3b, 0x46, 0xc0, 0x7e, 0x03, 0xe9, 0x79
    db 0x00, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xc4, 0x8b, 0xd8, 0x8a, 0x87, 0x22, 0x06, 0x2a, 0xe4, 0x8b
    db 0x4e, 0xc2, 0x41, 0xf7, 0xe9, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8b, 0x56
    db 0xbe, 0xd1, 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x8b, 0x8f, 0x1c, 0x5c, 0x58, 0x3b, 0xc1
    db 0x7f, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xd6, 0x89, 0x83, 0xc4, 0x0a, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xb6, 0x89, 0x83, 0xc4, 0x0a, 0xc7
    db 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x08
    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x1c, 0x83, 0x59, 0xe9, 0x2f, 0x04, 0xb8, 0x01, 0x00, 0x50, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x7d, 0x89, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x5d, 0x89, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46
    db 0xe4, 0x00, 0x00, 0xe9, 0xe4, 0x03

@..api_idx_0050.l14:
    cmp word [bp - 0x001a], byte 5   ; 0x3513
    jge short @..api_idx_0050.l15    ; 0x3517
    jmp near @..api_idx_0050.l23     ; 0x3519
@..api_idx_0050.l15:
    cmp word [bp - 0x001a], byte 0x0b ; 0x351c
    jle short @..api_idx_0050.l16    ; 0x3520
    jmp near @..api_idx_0050.l23     ; 0x3522
@..api_idx_0050.l16:
    mov ax, 0                        ; 0x3525
    push ax                          ; 0x3528
    push word [bp - 0x003e]          ; 0x3529
    mov ax, word [bp - 0x0006]       ; 0x352c
    add ax, strict word 0x14         ; 0x352f
    push ax                          ; 0x3532
    mov ax, word [bp - 0x000c]       ; 0x3533
    add ax, strict word 0xc          ; 0x3536
    push ax                          ; 0x3539
    call loc_2a2d                    ; 0x353a
    add sp, byte 8                   ; 0x353d
    mov ax, word [bp - 0x001a]       ; 0x3540
    add ax, strict word 0xfffb       ; 0x3543
    mov word [bp - 0x003e], ax       ; 0x3546
    mov ax, 1                        ; 0x3549
    push ax                          ; 0x354c
    push word [bp - 0x003e]          ; 0x354d
    mov ax, word [bp - 0x0006]       ; 0x3550
    add ax, strict word 0x14         ; 0x3553
    push ax                          ; 0x3556
    mov ax, word [bp - 0x000c]       ; 0x3557
    add ax, strict word 0xc          ; 0x355a
    push ax                          ; 0x355d
    call loc_2a2d                    ; 0x355e
    add sp, byte 8                   ; 0x3561
    cmp word [bp - 0x003c], byte 0   ; 0x3564
    jge short @..api_idx_0050.l17    ; 0x3568
    jmp near @..api_idx_0050.l21     ; 0x356a
@..api_idx_0050.l17:
    mov ax, 6                        ; 0x356d
    push ax                          ; 0x3570
    mov ax, 0                        ; 0x3571
    push ax                          ; 0x3574
    mov ax, 0x248                    ; 0x3575
    imul word [bp + 0x4]             ; 0x3578
    mov bx, ax                       ; 0x357b
    mov ax, word [bx + 0x5c18]       ; 0x357d
    push ax                          ; 0x3581
    mov ax, 6                        ; 0x3582
    imul word [bp - 0x003c]          ; 0x3585
    mov bx, ax                       ; 0x3588
    mov al, byte [bx + 0x621]        ; 0x358a
    sub ah, ah                       ; 0x358e
    mov cx, ax                       ; 0x3590
    pop ax                           ; 0x3592
    sub ax, cx                       ; 0x3593
    push ax                          ; 0x3595
    call ds_dispatch_b7c2            ; 0x3596
    add sp, byte 6                   ; 0x3599
    mov word [bp - 0x0040], ax       ; 0x359c
    mov ax, 6                        ; 0x359f
    imul word [bp - 0x003c]          ; 0x35a2
    mov bx, ax                       ; 0x35a5
    mov al, byte [bx + 0x622]        ; 0x35a7
    sub ah, ah                       ; 0x35ab
    mov cx, word [bp - 0x0040]       ; 0x35ad
    inc cx                           ; 0x35b0
    imul cx                          ; 0x35b1
    mov word [bp - 0x0002], ax       ; 0x35b3
    cmp word [bp + 0xa], byte 0      ; 0x35b6
    jne short @..api_idx_0050.l18    ; 0x35ba
    mov ax, 0x3e7                    ; 0x35bc
    jmp short @..api_idx_0050.l20    ; 0x35bf
@..api_idx_0050.l18:
    mov ax, 0x248                    ; 0x35c1
    imul word [bp + 0x4]             ; 0x35c4
    mov cx, word [bp - 0x0042]       ; 0x35c7
    shl cx, 1                        ; 0x35ca
    shl cx, 1                        ; 0x35cc
    add ax, cx                       ; 0x35ce
    mov bx, ax                       ; 0x35d0
    mov ax, word [bx + 0x5c1c]       ; 0x35d2
    cmp ax, word [bp - 0x0002]       ; 0x35d6
    jge short @..api_idx_0050.l19    ; 0x35d9
    jmp short @..api_idx_0050.l20    ; 0x35db
@..api_idx_0050.l19:
    mov ax, word [bp - 0x0002]       ; 0x35dd
@..api_idx_0050.l20:
    push ax                          ; 0x35e0
    mov ax, 6                        ; 0x35e1
    imul word [bp - 0x003c]          ; 0x35e4
    mov bx, ax                       ; 0x35e7
    mov al, byte [bx + 0x622]        ; 0x35e9
    sub ah, ah                       ; 0x35ed
    mov cx, word [bp - 0x003e]       ; 0x35ef
    inc cx                           ; 0x35f2
    imul cx                          ; 0x35f3
    push ax                          ; 0x35f5
    push word [bp - 0x0042]          ; 0x35f6
    mov ax, word [bp - 0x0006]       ; 0x35f9
    add ax, strict word 0x15         ; 0x35fc
    push ax                          ; 0x35ff
    mov ax, word [bp - 0x000c]       ; 0x3600
    add ax, strict word 0x5e         ; 0x3603
    push ax                          ; 0x3606
    call loc_2ab9                    ; 0x3607
    add sp, byte 0x0a                ; 0x360a
    jmp short @..api_idx_0050.l22    ; 0x360d
@..api_idx_0050.l21:
    mov ax, 0                        ; 0x360f
    push ax                          ; 0x3612
    push ax                          ; 0x3613
    push word [bp - 0x0042]          ; 0x3614
    mov ax, word [bp - 0x0006]       ; 0x3617
    add ax, strict word 0x15         ; 0x361a
    push ax                          ; 0x361d
    mov ax, word [bp - 0x000c]       ; 0x361e
    add ax, strict word 0x5e         ; 0x3621
    push ax                          ; 0x3624
    call loc_2ab9                    ; 0x3625
    add sp, byte 0x0a                ; 0x3628
@..api_idx_0050.l22:
    mov ax, word [bp - 0x0006]       ; 0x362b
    add ax, strict word 0x1c         ; 0x362e
    push ax                          ; 0x3631
    mov ax, word [bp - 0x000c]       ; 0x3632
    add ax, strict word 0x56         ; 0x3635
    push ax                          ; 0x3638
    mov ax, word [bp - 0x0006]       ; 0x3639
    add ax, strict word 0x14         ; 0x363c
    push ax                          ; 0x363f
    mov ax, word [bp - 0x000c]       ; 0x3640
    add ax, strict word 0xb          ; 0x3643
    push ax                          ; 0x3646
    call ds_dispatch_e8da            ; 0x3647
    add sp, byte 8                   ; 0x364a
    mov ax, word [bp - 0x0006]       ; 0x364d
    add ax, strict word 0x1b         ; 0x3650
    push ax                          ; 0x3653
    mov ax, word [bp - 0x000c]       ; 0x3654
    add ax, strict word 0x72         ; 0x3657
    push ax                          ; 0x365a
    mov ax, word [bp - 0x0006]       ; 0x365b
    add ax, strict word 0x15         ; 0x365e
    push ax                          ; 0x3661
    mov ax, word [bp - 0x000c]       ; 0x3662
    add ax, strict word 0x5e         ; 0x3665
    push ax                          ; 0x3668
    call ds_dispatch_e8da            ; 0x3669
    add sp, byte 8                   ; 0x366c
    jmp near @..api_idx_0050.l34     ; 0x366f
@..api_idx_0050.l23:
    cmp word [bp - 0x001a], byte 0x0c ; 0x3672
    jge short @..api_idx_0050.l24    ; 0x3676
    jmp near @..api_idx_0050.l28     ; 0x3678
@..api_idx_0050.l24:
    cmp word [bp - 0x001a], byte 0x11 ; 0x367b
    jle short @..api_idx_0050.l25    ; 0x367f
    jmp near @..api_idx_0050.l28     ; 0x3681
@..api_idx_0050.l25:
    mov ax, word [bp - 0x001a]       ; 0x3684
    add ax, strict word 0xfff4       ; 0x3687
    mov word [bp - 0x0042], ax       ; 0x368a
    mov word [bp - 0x003c], 0xffff   ; 0x368d
    push ax                          ; 0x3692
    push word [bp + 0x4]             ; 0x3693
    call api_idx_0004_4              ; 0x3696
    add sp, byte 4                   ; 0x3699
    mov word [bp - 0x0044], ax       ; 0x369c
    mov ax, 7                        ; 0x369f
    cmp word [bp - 0x0044], byte 7   ; 0x36a2
    jge short @..api_idx_0050.l26    ; 0x36a6
    mov ax, word [bp - 0x0044]       ; 0x36a8
@..api_idx_0050.l26:
    mov word [bp - 0x0024], ax       ; 0x36ab
    mov ax, 7                        ; 0x36ae
    cmp word [bp - 0x0044], byte 7   ; 0x36b1
    jge short @..api_idx_0050.l27    ; 0x36b5
    mov ax, word [bp - 0x0044]       ; 0x36b7
@..api_idx_0050.l27:
    mov word [bp - 0x0020], ax       ; 0x36ba
    mov word [bp - 0x0018], 0        ; 0x36bd
    mov word [bp - 0x0022], 0xffff   ; 0x36c2
    push word [bp - 0x0024]          ; 0x36c7
    push word [bp - 0x0022]          ; 0x36ca
    push word [bp - 0x0018]          ; 0x36cd
    mov ax, 7                        ; 0x36d0
    push ax                          ; 0x36d3
    mov ax, 0xf                      ; 0x36d4
    push ax                          ; 0x36d7
    mov ax, word [bp - 0x0006]       ; 0x36d8
    add ax, strict word 0x22         ; 0x36db
    push ax                          ; 0x36de
    mov ax, word [bp - 0x000c]       ; 0x36df
    add ax, strict word 6            ; 0x36e2
    push ax                          ; 0x36e5
    call ds_dispatch_bf97            ; 0x36e6
    add sp, byte 0x0e                ; 0x36e9
    mov word [bp - 0x0012], 0        ; 0x36ec
    push word [bp - 0x0012]          ; 0x36f1
    mov ax, 7                        ; 0x36f4
    push ax                          ; 0x36f7
    mov ax, 8                        ; 0x36f8
    push ax                          ; 0x36fb
    mov ax, word [bp - 0x0006]       ; 0x36fc
    add ax, strict word 0x22         ; 0x36ff
    push ax                          ; 0x3702
    mov ax, word [bp - 0x000c]       ; 0x3703
    add ax, strict word 0x6a         ; 0x3706
    push ax                          ; 0x3709
    call ds_dispatch_bfd8            ; 0x370a
    add sp, byte 0x0a                ; 0x370d
    mov ax, 0                        ; 0x3710
    push ax                          ; 0x3713
    push ax                          ; 0x3714
    mov ax, word [bp - 0x0006]       ; 0x3715
    add ax, word [bp - 0x0012]       ; 0x3718
    add ax, strict word 0x2e         ; 0x371b
    push ax                          ; 0x371e
    mov ax, word [bp - 0x000c]       ; 0x371f
    add ax, strict word 0x72         ; 0x3722
    push ax                          ; 0x3725
    mov ax, word [bp - 0x0006]       ; 0x3726
    add ax, word [bp - 0x0012]       ; 0x3729
    add ax, strict word 0x2a         ; 0x372c
    push ax                          ; 0x372f
    mov ax, word [bp - 0x000c]       ; 0x3730
    add ax, strict word 0x6a         ; 0x3733
    push ax                          ; 0x3736
    mov ax, 0                        ; 0x3737
    push ax                          ; 0x373a
    call ds_dispatch_baa6            ; 0x373b
    add sp, byte 0x0e                ; 0x373e
    mov ax, 0                        ; 0x3741
    push ax                          ; 0x3744
    push ax                          ; 0x3745
    push word [bp - 0x0042]          ; 0x3746
    mov ax, word [bp - 0x0006]       ; 0x3749
    add ax, strict word 0x15         ; 0x374c
    push ax                          ; 0x374f
    mov ax, word [bp - 0x000c]       ; 0x3750
    add ax, strict word 0x5e         ; 0x3753
    push ax                          ; 0x3756
    call loc_2ab9                    ; 0x3757
    add sp, byte 0x0a                ; 0x375a
    mov ax, word [bp - 0x0006]       ; 0x375d
    add ax, strict word 0x4c         ; 0x3760
    push ax                          ; 0x3763
    mov ax, word [bp - 0x000c]       ; 0x3764
    add ax, strict word 0x72         ; 0x3767
    push ax                          ; 0x376a
    mov ax, word [bp - 0x0006]       ; 0x376b
    add ax, strict word 0x22         ; 0x376e
    push ax                          ; 0x3771
    mov ax, word [bp - 0x000c]       ; 0x3772
    add ax, strict word 6            ; 0x3775
    push ax                          ; 0x3778
    call ds_dispatch_e8da            ; 0x3779
    add sp, byte 8                   ; 0x377c
    mov ax, word [bp - 0x0006]       ; 0x377f
    add ax, strict word 0x1b         ; 0x3782
    push ax                          ; 0x3785
    mov ax, word [bp - 0x000c]       ; 0x3786
    add ax, strict word 0x72         ; 0x3789
    push ax                          ; 0x378c
    mov ax, word [bp - 0x0006]       ; 0x378d
    add ax, strict word 0x15         ; 0x3790
    push ax                          ; 0x3793
    mov ax, word [bp - 0x000c]       ; 0x3794
    add ax, strict word 0x5e         ; 0x3797
    push ax                          ; 0x379a
    call ds_dispatch_e8da            ; 0x379b
    add sp, byte 8                   ; 0x379e
    jmp near @..api_idx_0050.l34     ; 0x37a1
@..api_idx_0050.l28:
    cmp word [bp - 0x001a], byte 0x12 ; 0x37a4
    jge short @..api_idx_0050.l29    ; 0x37a8
    jmp near @..api_idx_0050.l34     ; 0x37aa
@..api_idx_0050.l29:
    mov ax, word [bp - 0x0020]       ; 0x37ad
    add ax, strict word 0x12         ; 0x37b0
    cmp ax, word [bp - 0x001a]       ; 0x37b3
    jg short @..api_idx_0050.l30     ; 0x37b6
    jmp near @..api_idx_0050.l34     ; 0x37b8
@..api_idx_0050.l30:
    mov ax, word [bp - 0x0018]       ; 0x37bb
    add ax, word [bp - 0x001a]       ; 0x37be
    add ax, strict word 0xffee       ; 0x37c1
    mov word [bp - 0x0022], ax       ; 0x37c4
    shl ax, 1                        ; 0x37c7
    mov bx, ax                       ; 0x37c9
    mov ax, word [bx - 0x6aee]       ; 0x37cb
    mov word [bp - 0x003c], ax       ; 0x37cf
    push word [bp - 0x0024]          ; 0x37d2
    push word [bp - 0x0022]          ; 0x37d5
    push word [bp - 0x0018]          ; 0x37d8
    mov ax, 7                        ; 0x37db
    push ax                          ; 0x37de
    mov ax, 0xf                      ; 0x37df
    push ax                          ; 0x37e2
    mov ax, word [bp - 0x0006]       ; 0x37e3
    add ax, strict word 0x22         ; 0x37e6
    push ax                          ; 0x37e9
    mov ax, word [bp - 0x000c]       ; 0x37ea
    add ax, strict word 6            ; 0x37ed
    push ax                          ; 0x37f0
    call ds_dispatch_bf97            ; 0x37f1
    add sp, byte 0x0e                ; 0x37f4
    mov ax, 6                        ; 0x37f7
    push ax                          ; 0x37fa
    mov ax, 0                        ; 0x37fb
    push ax                          ; 0x37fe
    mov ax, 0x248                    ; 0x37ff
    imul word [bp + 0x4]             ; 0x3802
    mov bx, ax                       ; 0x3805
    mov ax, word [bx + 0x5c18]       ; 0x3807
    push ax                          ; 0x380b
    mov ax, 6                        ; 0x380c
    imul word [bp - 0x003c]          ; 0x380f
    mov bx, ax                       ; 0x3812
    mov al, byte [bx + 0x621]        ; 0x3814
    sub ah, ah                       ; 0x3818
    mov cx, ax                       ; 0x381a
    pop ax                           ; 0x381c
    sub ax, cx                       ; 0x381d
    push ax                          ; 0x381f
    call ds_dispatch_b7c2            ; 0x3820
    add sp, byte 6                   ; 0x3823
    mov word [bp - 0x0040], ax       ; 0x3826
    mov ax, 6                        ; 0x3829
    imul word [bp - 0x003c]          ; 0x382c
    mov bx, ax                       ; 0x382f
    mov al, byte [bx + 0x622]        ; 0x3831
    sub ah, ah                       ; 0x3835
    mov cx, word [bp - 0x0040]       ; 0x3837
    inc cx                           ; 0x383a
    imul cx                          ; 0x383b
    mov word [bp - 0x0002], ax       ; 0x383d
    cmp word [bp + 0xa], byte 0      ; 0x3840
    jne short @..api_idx_0050.l31    ; 0x3844
    mov ax, 0x3e7                    ; 0x3846
    jmp short @..api_idx_0050.l33    ; 0x3849
@..api_idx_0050.l31:
    mov ax, 0x248                    ; 0x384b
    imul word [bp + 0x4]             ; 0x384e
    mov cx, word [bp - 0x0042]       ; 0x3851
    shl cx, 1                        ; 0x3854
    shl cx, 1                        ; 0x3856
    add ax, cx                       ; 0x3858
    mov bx, ax                       ; 0x385a
    mov ax, word [bx + 0x5c1c]       ; 0x385c
    cmp ax, word [bp - 0x0002]       ; 0x3860
    jge short @..api_idx_0050.l32    ; 0x3863
    jmp short @..api_idx_0050.l33    ; 0x3865
@..api_idx_0050.l32:
    mov ax, word [bp - 0x0002]       ; 0x3867
@..api_idx_0050.l33:
    push ax                          ; 0x386a
    mov ax, 6                        ; 0x386b
    imul word [bp - 0x003c]          ; 0x386e
    mov bx, ax                       ; 0x3871
    mov al, byte [bx + 0x622]        ; 0x3873
    sub ah, ah                       ; 0x3877
    mov cx, word [bp - 0x003e]       ; 0x3879
    inc cx                           ; 0x387c
    imul cx                          ; 0x387d
    push ax                          ; 0x387f
    push word [bp - 0x0042]          ; 0x3880
    mov ax, word [bp - 0x0006]       ; 0x3883
    add ax, strict word 0x15         ; 0x3886
    push ax                          ; 0x3889
    mov ax, word [bp - 0x000c]       ; 0x388a
    add ax, strict word 0x5e         ; 0x388d
    push ax                          ; 0x3890
    call loc_2ab9                    ; 0x3891
    add sp, byte 0x0a                ; 0x3894
    mov ax, word [bp - 0x0006]       ; 0x3897
    add ax, strict word 0x4c         ; 0x389a
    push ax                          ; 0x389d
    mov ax, word [bp - 0x000c]       ; 0x389e
    add ax, strict word 0x72         ; 0x38a1
    push ax                          ; 0x38a4
    mov ax, word [bp - 0x0006]       ; 0x38a5
    add ax, strict word 0x22         ; 0x38a8
    push ax                          ; 0x38ab
    mov ax, word [bp - 0x000c]       ; 0x38ac
    add ax, strict word 6            ; 0x38af
    push ax                          ; 0x38b2
    call ds_dispatch_e8da            ; 0x38b3
    add sp, byte 8                   ; 0x38b6
    mov ax, word [bp - 0x0006]       ; 0x38b9
    add ax, strict word 0x1b         ; 0x38bc
    push ax                          ; 0x38bf
    mov ax, word [bp - 0x000c]       ; 0x38c0
    add ax, strict word 0x72         ; 0x38c3
    push ax                          ; 0x38c6
    mov ax, word [bp - 0x0006]       ; 0x38c7
    add ax, strict word 0x15         ; 0x38ca
    push ax                          ; 0x38cd
    mov ax, word [bp - 0x000c]       ; 0x38ce
    add ax, strict word 0x5e         ; 0x38d1
    push ax                          ; 0x38d4
    call ds_dispatch_e8da            ; 0x38d5
    add sp, byte 8                   ; 0x38d8
@..api_idx_0050.l34:
    jmp short @..api_idx_0050.l37    ; 0x38db
    db 0x04, 0x82, 0x2b, 0x83, 0x2b, 0x83, 0x62, 0x84, 0x0f, 0x85
@..api_idx_0050.l35:
    cmp ax, strict word 5            ; 0x38e7
    jae short @..api_idx_0050.l36    ; 0x38ea
    xchg bx, ax                      ; 0x38ec
    shl bx, 1                        ; 0x38ed
    jmp [cs:bx - 0x76dc]             ; 0x38ef
@..api_idx_0050.l36:
    jmp near @..api_idx_0050.l14     ; 0x38f4
@..api_idx_0050.l37:
    cmp word [bp - 0x001c], byte 0   ; 0x38f7
    je short @..api_idx_0050.l38     ; 0x38fb
    jmp near @..api_idx_0050.l8      ; 0x38fd
@..api_idx_0050.l38:
    mov ax, 1                        ; 0x3900
    push ax                          ; 0x3903
    push word [bp - 0x003a]          ; 0x3904
    call ds_dispatch_c459            ; 0x3907
    add sp, byte 4                   ; 0x390a
    mov ax, word [bp - 0x000a]       ; 0x390d
    inc ax                           ; 0x3910
    push ax                          ; 0x3911
    mov ax, word [bp - 0x0008]       ; 0x3912
    inc ax                           ; 0x3915
    push ax                          ; 0x3916
    mov ax, word [bp - 0x0006]       ; 0x3917
    dec ax                           ; 0x391a
    push ax                          ; 0x391b
    mov ax, word [bp - 0x0004]       ; 0x391c
    dec ax                           ; 0x391f
    push ax                          ; 0x3920
    call ds_dispatch_e8da            ; 0x3921
    add sp, byte 8                   ; 0x3924
    mov word [bp - 0x0002], 0        ; 0x3927
@..api_idx_0050.l39:
    mov ax, word [bp - 0x0002]       ; 0x392c
    shl ax, 1                        ; 0x392f
    mov bx, ax                       ; 0x3931
    add bx, bp                       ; 0x3933
    mov ax, word [bx - 0x0050]       ; 0x3935
    mov cx, word [bp - 0x0002]       ; 0x3938
    shl cx, 1                        ; 0x393b
    mov bx, cx                       ; 0x393d
    mov word [bx - 0x7cf2], ax       ; 0x393f
    inc word [bp - 0x0002]           ; 0x3943
    mov ax, word [bp - 0x0002]       ; 0x3946
    cmp ax, strict word 6            ; 0x3949
    jl short @..api_idx_0050.l39     ; 0x394c
    les bx, word [dseg_0002]         ; 0x394e
    mov ax, word [es:bx]             ; 0x3952
    mov dx, word [es:bx + 0x2]       ; 0x3955
    mov word [bss_908c], dx          ; 0x3959
    mov word [bss_908a], ax          ; 0x395d
    mov ax, word [bp - 0x003e]       ; 0x3960
    xchg al, ah                      ; 0x3963
    sub al, al                       ; 0x3965
    add ax, word [bp - 0x003c]       ; 0x3967
    add ax, 0x100                    ; 0x396a
    mov word [bss_904e], ax          ; 0x396d
    mov ax, word [bss_9050]          ; 0x3970
    ret                              ; 0x3973
