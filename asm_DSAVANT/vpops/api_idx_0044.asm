api_idx_0044:
    mov ax, 0xffbc                   ; 0x1ca2
    call ds_dispatch_f40b            ; 0x1ca5
    mov word [bp - 0x0002], 0        ; 0x1ca8
@..api_idx_0044.l1:
    mov ax, word [bp - 0x0002]       ; 0x1cad
    shl ax, 1                        ; 0x1cb0
    mov bx, ax                       ; 0x1cb2
    mov word [bx - 0x7cf2], 0        ; 0x1cb4
    inc word [bp - 0x0002]           ; 0x1cba
    mov ax, word [bp - 0x0002]       ; 0x1cbd
    cmp ax, strict word 6            ; 0x1cc0
    jl short @..api_idx_0044.l1      ; 0x1cc3
    mov word [data_904e], 0xffff     ; 0x1cc5
    mov word [bp - 0x0004], 0x32     ; 0x1ccb
    mov word [bp - 0x0006], 0x73     ; 0x1cd0
    mov word [bp - 0x0008], 0x10d    ; 0x1cd5
    mov word [bp - 0x000a], 0xc5     ; 0x1cda
    mov word [bp - 0x000c], 0x95     ; 0x1cdf
    mov word [bp - 0x0014], 0x16     ; 0x1ce4
    mov ax, 0x90bf                   ; 0x1ce9
    push ax                          ; 0x1cec
    mov ax, word [bp - 0x000a]       ; 0x1ced
    inc ax                           ; 0x1cf0
    push ax                          ; 0x1cf1
    mov ax, word [bp - 0x0008]       ; 0x1cf2
    inc ax                           ; 0x1cf5
    push ax                          ; 0x1cf6
    mov ax, word [bp - 0x0006]       ; 0x1cf7
    dec ax                           ; 0x1cfa
    push ax                          ; 0x1cfb
    mov ax, word [bp - 0x0004]       ; 0x1cfc
    dec ax                           ; 0x1cff
    push ax                          ; 0x1d00
    call ds_dispatch_c283            ; 0x1d01
    add sp, byte 0x0a                ; 0x1d04
    mov word [bp - 0x003a], ax       ; 0x1d07
    push word [bp - 0x000a]          ; 0x1d0a
    push word [bp - 0x0008]          ; 0x1d0d
    push word [bp - 0x0006]          ; 0x1d10
    push word [bp - 0x0004]          ; 0x1d13
    call ds_dispatch_bc9a            ; 0x1d16
    add sp, byte 8                   ; 0x1d19
    push word [bp - 0x000a]          ; 0x1d1c
    push word [bp - 0x0008]          ; 0x1d1f
    push word [bp - 0x0006]          ; 0x1d22
    mov ax, 0x95                     ; 0x1d25
    push ax                          ; 0x1d28
    call ds_dispatch_bc9a            ; 0x1d29
    add sp, byte 8                   ; 0x1d2c
    call api_idx_000a_3              ; 0x1d2f
    push word [bp + 0x4]             ; 0x1d32
    call api_idx_000c_3              ; 0x1d35
    pop cx                           ; 0x1d38
    mov ax, 1                        ; 0x1d39
    push ax                          ; 0x1d3c
    mov ax, 0x73                     ; 0x1d3d
    push ax                          ; 0x1d40
    mov ax, 0x32                     ; 0x1d41
    push ax                          ; 0x1d44
    call api_idx_000c_2              ; 0x1d45
    add sp, byte 6                   ; 0x1d48
    lea ax, word [bp - 0x0038]       ; 0x1d4b
    push ax                          ; 0x1d4e
    push word [bp + 0x6]             ; 0x1d4f
    call ds_dispatch_b53b            ; 0x1d52
    add sp, byte 4                   ; 0x1d55
    lea ax, word [bp - 0x0038]       ; 0x1d58
    push ax                          ; 0x1d5b
    push word [bp + 0x8]             ; 0x1d5c
    mov ax, 1                        ; 0x1d5f
    push ax                          ; 0x1d62
    mov ax, 8                        ; 0x1d63
    push ax                          ; 0x1d66
    mov ax, word [bp - 0x0006]       ; 0x1d67
    add ax, strict word 6            ; 0x1d6a
    push ax                          ; 0x1d6d
    mov ax, word [bp - 0x000c]       ; 0x1d6e
    add ax, strict word 6            ; 0x1d71
    push ax                          ; 0x1d74
    call ds_dispatch_c0c1            ; 0x1d75
    add sp, byte 0x0c                ; 0x1d78
    lea ax, word [bp - 0x0038]       ; 0x1d7b
    push ax                          ; 0x1d7e
    mov ax, word [bp + 0x6]          ; 0x1d7f
    inc ax                           ; 0x1d82
    push ax                          ; 0x1d83
    call ds_dispatch_b53b            ; 0x1d84
    add sp, byte 4                   ; 0x1d87
    lea ax, word [bp - 0x0038]       ; 0x1d8a
    push ax                          ; 0x1d8d
    mov ax, 1                        ; 0x1d8e
    push ax                          ; 0x1d91
    push ax                          ; 0x1d92
    mov ax, 8                        ; 0x1d93
    push ax                          ; 0x1d96
    mov ax, word [bp - 0x0006]       ; 0x1d97
    add ax, strict word 6            ; 0x1d9a
    push ax                          ; 0x1d9d
    mov ax, word [bp - 0x000c]       ; 0x1d9e
    add ax, strict word 0x42         ; 0x1da1
    push ax                          ; 0x1da4
    call ds_dispatch_c0c1            ; 0x1da5
    add sp, byte 0x0c                ; 0x1da8
    mov ax, word [bp - 0x0006]       ; 0x1dab
    add ax, strict word 0x14         ; 0x1dae
    push ax                          ; 0x1db1
    mov ax, word [bp - 0x000c]       ; 0x1db2
    add ax, strict word 0x48         ; 0x1db5
    push ax                          ; 0x1db8
    call ds_dispatch_e809            ; 0x1db9
    add sp, byte 4                   ; 0x1dbc
    mov ax, 0                        ; 0x1dbf
    push ax                          ; 0x1dc2
    mov ax, 0xcd                     ; 0x1dc3
    push ax                          ; 0x1dc6
    call ds_dispatch_e823            ; 0x1dc7
    add sp, byte 4                   ; 0x1dca
    mov ax, data_0002                ; 0x1dcd
    push ax                          ; 0x1dd0
    mov ax, 0xa                      ; 0x1dd1
    push ax                          ; 0x1dd4
    call ds_dispatch_e830            ; 0x1dd5
    add sp, byte 4                   ; 0x1dd8
    mov word [bp - 0x003c], 0xffff   ; 0x1ddb
    mov word [bp - 0x003e], 0        ; 0x1de0
    mov word [bp - 0x0040], 0        ; 0x1de5
    mov word [bp - 0x0002], 0        ; 0x1dea
@..api_idx_0044.l2:
    mov ax, 0                        ; 0x1def
    mov cx, word [bp - 0x0002]       ; 0x1df2
    cmp cx, word [bp - 0x003e]       ; 0x1df5
    jne short @..api_idx_0044.l3     ; 0x1df8
    mov ax, 1                        ; 0x1dfa
@..api_idx_0044.l3:
    push ax                          ; 0x1dfd
    push cx                          ; 0x1dfe
    mov ax, word [bp - 0x0006]       ; 0x1dff
    add ax, strict word 0x14         ; 0x1e02
    push ax                          ; 0x1e05
    mov ax, word [bp - 0x000c]       ; 0x1e06
    add ax, strict word 0xc          ; 0x1e09
    push ax                          ; 0x1e0c
    call loc_1a4b                    ; 0x1e0d
    add sp, byte 8                   ; 0x1e10
    inc word [bp - 0x0002]           ; 0x1e13
    mov ax, word [bp - 0x0002]       ; 0x1e16
    cmp ax, strict word 7            ; 0x1e19
    jl short @..api_idx_0044.l2      ; 0x1e1c
    mov word [bp - 0x0042], 0        ; 0x1e1e
    mov ax, 0                        ; 0x1e23
    push ax                          ; 0x1e26
    push ax                          ; 0x1e27
    push word [bp - 0x0042]          ; 0x1e28
    mov ax, word [bp - 0x0006]       ; 0x1e2b
    add ax, strict word 0x15         ; 0x1e2e
    push ax                          ; 0x1e31
    mov ax, word [bp - 0x000c]       ; 0x1e32
    add ax, strict word 0x5e         ; 0x1e35
    push ax                          ; 0x1e38
    call loc_1ad7                    ; 0x1e39
    add sp, byte 0x0a                ; 0x1e3c
    push word [bp - 0x0042]          ; 0x1e3f
    push word [bp + 0x4]             ; 0x1e42
    call api_idx_0004_2              ; 0x1e45
    add sp, byte 4                   ; 0x1e48
    mov word [bp - 0x0044], ax       ; 0x1e4b
    mov ax, 7                        ; 0x1e4e
    cmp word [bp - 0x0044], byte 7   ; 0x1e51
    jge short @..api_idx_0044.l4     ; 0x1e55
    mov ax, word [bp - 0x0044]       ; 0x1e57
@..api_idx_0044.l4:
    mov word [bp - 0x0024], ax       ; 0x1e5a
    mov word [bp - 0x0018], 0        ; 0x1e5d
    mov word [bp - 0x0022], 0xffff   ; 0x1e62
    push ax                          ; 0x1e67
    push word [bp - 0x0022]          ; 0x1e68
    push word [bp - 0x0018]          ; 0x1e6b
    mov ax, 7                        ; 0x1e6e
    push ax                          ; 0x1e71
    mov ax, 0xf                      ; 0x1e72
    push ax                          ; 0x1e75
    mov ax, word [bp - 0x0006]       ; 0x1e76
    add ax, strict word 0x22         ; 0x1e79
    push ax                          ; 0x1e7c
    mov ax, word [bp - 0x000c]       ; 0x1e7d
    add ax, strict word 6            ; 0x1e80
    push ax                          ; 0x1e83
    call ds_dispatch_bf97            ; 0x1e84
    add sp, byte 0x0e                ; 0x1e87
    mov word [bp - 0x0012], 0        ; 0x1e8a
    push word [bp - 0x0012]          ; 0x1e8f
    mov ax, 7                        ; 0x1e92
    push ax                          ; 0x1e95
    mov ax, 8                        ; 0x1e96
    push ax                          ; 0x1e99
    mov ax, word [bp - 0x0006]       ; 0x1e9a
    add ax, strict word 0x22         ; 0x1e9d
    push ax                          ; 0x1ea0
    mov ax, word [bp - 0x000c]       ; 0x1ea1
    add ax, strict word 0x6a         ; 0x1ea4
    push ax                          ; 0x1ea7
    call ds_dispatch_bfd8            ; 0x1ea8
    add sp, byte 0x0a                ; 0x1eab
    mov ax, 0                        ; 0x1eae
    push ax                          ; 0x1eb1
    push ax                          ; 0x1eb2
    mov ax, word [bp - 0x0006]       ; 0x1eb3
    add ax, word [bp - 0x0012]       ; 0x1eb6
    add ax, strict word 0x2e         ; 0x1eb9
    push ax                          ; 0x1ebc
    mov ax, word [bp - 0x000c]       ; 0x1ebd
    add ax, strict word 0x72         ; 0x1ec0
    push ax                          ; 0x1ec3
    mov ax, word [bp - 0x0006]       ; 0x1ec4
    add ax, word [bp - 0x0012]       ; 0x1ec7
    add ax, strict word 0x2a         ; 0x1eca
    push ax                          ; 0x1ecd
    mov ax, word [bp - 0x000c]       ; 0x1ece
    add ax, strict word 0x6a         ; 0x1ed1
    push ax                          ; 0x1ed4
    mov ax, 0                        ; 0x1ed5
    push ax                          ; 0x1ed8
    call ds_dispatch_baa6            ; 0x1ed9
    add sp, byte 0x0e                ; 0x1edc
    mov ax, 0                        ; 0x1edf
    push ax                          ; 0x1ee2
    mov ax, 9                        ; 0x1ee3
    push ax                          ; 0x1ee6
    mov ax, word [bp - 0x0006]       ; 0x1ee7
    add ax, strict word 0x28         ; 0x1eea
    push ax                          ; 0x1eed
    mov ax, word [bp - 0x000c]       ; 0x1eee
    add ax, strict word 0x72         ; 0x1ef1
    push ax                          ; 0x1ef4
    mov ax, word [bp - 0x0006]       ; 0x1ef5
    add ax, strict word 0x22         ; 0x1ef8
    push ax                          ; 0x1efb
    mov ax, word [bp - 0x000c]       ; 0x1efc
    add ax, strict word 0x6a         ; 0x1eff
    push ax                          ; 0x1f02
    mov ax, 1                        ; 0x1f03
    push ax                          ; 0x1f06
    call ds_dispatch_baa6            ; 0x1f07
    add sp, byte 0x0e                ; 0x1f0a
    mov ax, 0                        ; 0x1f0d
    push ax                          ; 0x1f10
    mov ax, 0xb                      ; 0x1f11
    push ax                          ; 0x1f14
    mov ax, word [bp - 0x0006]       ; 0x1f15
    add ax, strict word 0x4c         ; 0x1f18
    push ax                          ; 0x1f1b
    mov ax, word [bp - 0x000c]       ; 0x1f1c
    add ax, strict word 0x72         ; 0x1f1f
    push ax                          ; 0x1f22
    mov ax, word [bp - 0x0006]       ; 0x1f23
    add ax, strict word 0x46         ; 0x1f26
    push ax                          ; 0x1f29
    mov ax, word [bp - 0x000c]       ; 0x1f2a
    add ax, strict word 0x6a         ; 0x1f2d
    push ax                          ; 0x1f30
    mov ax, data_0002                ; 0x1f31
    push ax                          ; 0x1f34
    call ds_dispatch_baa6            ; 0x1f35
    add sp, byte 0x0e                ; 0x1f38
    mov ax, 0                        ; 0x1f3b
    push ax                          ; 0x1f3e
    mov ax, 0xd                      ; 0x1f3f
    push ax                          ; 0x1f42
    mov ax, word [bp - 0x0006]       ; 0x1f43
    add ax, strict word 0xe          ; 0x1f46
    push ax                          ; 0x1f49
    mov ax, word [bp - 0x000c]       ; 0x1f4a
    add ax, strict word 0x36         ; 0x1f4d
    push ax                          ; 0x1f50
    mov ax, word [bp - 0x0006]       ; 0x1f51
    add ax, strict word 6            ; 0x1f54
    push ax                          ; 0x1f57
    mov ax, word [bp - 0x000c]       ; 0x1f58
    add ax, strict word 6            ; 0x1f5b
    push ax                          ; 0x1f5e
    mov ax, 3                        ; 0x1f5f
    push ax                          ; 0x1f62
    call ds_dispatch_baa6            ; 0x1f63
    add sp, byte 0x0e                ; 0x1f66
    mov ax, 0                        ; 0x1f69
    push ax                          ; 0x1f6c
    mov ax, 0x1b                     ; 0x1f6d
    push ax                          ; 0x1f70
    mov ax, word [bp - 0x0006]       ; 0x1f71
    add ax, strict word 0xe          ; 0x1f74
    push ax                          ; 0x1f77
    mov ax, word [bp - 0x000c]       ; 0x1f78
    add ax, strict word 0x72         ; 0x1f7b
    push ax                          ; 0x1f7e
    mov ax, word [bp - 0x0006]       ; 0x1f7f
    add ax, strict word 6            ; 0x1f82
    push ax                          ; 0x1f85
    mov ax, word [bp - 0x000c]       ; 0x1f86
    add ax, strict word 0x42         ; 0x1f89
    push ax                          ; 0x1f8c
    mov ax, 4                        ; 0x1f8d
    push ax                          ; 0x1f90
    call ds_dispatch_baa6            ; 0x1f91
    add sp, byte 0x0e                ; 0x1f94
    mov word [bp - 0x0002], 0        ; 0x1f97
@..api_idx_0044.l5:
    mov ax, 0                        ; 0x1f9c
    push ax                          ; 0x1f9f
    mov ax, word [bp - 0x0002]       ; 0x1fa0
    add ax, strict word 0x31         ; 0x1fa3
    cbw                              ; 0x1fa6
    push ax                          ; 0x1fa7
    mov ax, word [bp - 0x0006]       ; 0x1fa8
    add ax, strict word 0x1b         ; 0x1fab
    push ax                          ; 0x1fae
    mov ax, 0xa                      ; 0x1faf
    imul word [bp - 0x0002]          ; 0x1fb2
    add ax, word [bp - 0x000c]       ; 0x1fb5
    add ax, strict word 0x13         ; 0x1fb8
    push ax                          ; 0x1fbb
    mov ax, word [bp - 0x0006]       ; 0x1fbc
    add ax, strict word 0x14         ; 0x1fbf
    push ax                          ; 0x1fc2
    mov ax, 0xa                      ; 0x1fc3
    imul word [bp - 0x0002]          ; 0x1fc6
    add ax, word [bp - 0x000c]       ; 0x1fc9
    add ax, strict word 0xc          ; 0x1fcc
    push ax                          ; 0x1fcf
    mov ax, word [bp - 0x0002]       ; 0x1fd0
    add ax, strict word 5            ; 0x1fd3
    push ax                          ; 0x1fd6
    call ds_dispatch_baa6            ; 0x1fd7
    add sp, byte 0x0e                ; 0x1fda
    inc word [bp - 0x0002]           ; 0x1fdd
    mov ax, word [bp - 0x0002]       ; 0x1fe0
    cmp ax, strict word 7            ; 0x1fe3
    jl short @..api_idx_0044.l5      ; 0x1fe6
    mov ax, 0                        ; 0x1fe8
    push ax                          ; 0x1feb
    mov ax, 0x46                     ; 0x1fec
    push ax                          ; 0x1fef
    mov ax, 0x87                     ; 0x1ff0
    push ax                          ; 0x1ff3
    mov ax, 0x52                     ; 0x1ff4
    push ax                          ; 0x1ff7
    mov ax, 0x74                     ; 0x1ff8
    push ax                          ; 0x1ffb
    mov ax, 0x46                     ; 0x1ffc
    push ax                          ; 0x1fff
    mov ax, 0xc                      ; 0x2000
    push ax                          ; 0x2003
    call ds_dispatch_baa6            ; 0x2004
    add sp, byte 0x0e                ; 0x2007
    mov ax, 0                        ; 0x200a
    push ax                          ; 0x200d
    mov ax, 0x57                     ; 0x200e
    push ax                          ; 0x2011
    mov ax, 0x9d                     ; 0x2012
    push ax                          ; 0x2015
    mov ax, 0x4b                     ; 0x2016
    push ax                          ; 0x2019
    mov ax, 0x90                     ; 0x201a
    push ax                          ; 0x201d
    mov ax, 0x32                     ; 0x201e
    push ax                          ; 0x2021
    mov ax, 0xd                      ; 0x2022
    push ax                          ; 0x2025
    call ds_dispatch_baa6            ; 0x2026
    add sp, byte 0x0e                ; 0x2029
    mov ax, 0                        ; 0x202c
    push ax                          ; 0x202f
    mov ax, 0x41                     ; 0x2030
    push ax                          ; 0x2033
    mov ax, 0xbb                     ; 0x2034
    push ax                          ; 0x2037
    mov ax, 0x5f                     ; 0x2038
    push ax                          ; 0x203b
    mov ax, 0xa5                     ; 0x203c
    push ax                          ; 0x203f
    mov ax, 0x43                     ; 0x2040
    push ax                          ; 0x2043
    mov ax, 0xe                      ; 0x2044
    push ax                          ; 0x2047
    call ds_dispatch_baa6            ; 0x2048
    add sp, byte 0x0e                ; 0x204b
    mov ax, 0                        ; 0x204e
    push ax                          ; 0x2051
    mov ax, 0x45                     ; 0x2052
    push ax                          ; 0x2055
    mov ax, 0x89                     ; 0x2056
    push ax                          ; 0x2059
    mov ax, 0x87                     ; 0x205a
    push ax                          ; 0x205d
    mov ax, 0x77                     ; 0x205e
    push ax                          ; 0x2061
    mov ax, 0x6c                     ; 0x2062
    push ax                          ; 0x2065
    mov ax, 0xf                      ; 0x2066
    push ax                          ; 0x2069
    call ds_dispatch_baa6            ; 0x206a
    add sp, byte 0x0e                ; 0x206d
    mov ax, 0                        ; 0x2070
    push ax                          ; 0x2073
    mov ax, 0x4d                     ; 0x2074
    push ax                          ; 0x2077
    mov ax, 0x9c                     ; 0x2078
    push ax                          ; 0x207b
    mov ax, 0x8e                     ; 0x207c
    push ax                          ; 0x207f
    mov ax, 0x91                     ; 0x2080
    push ax                          ; 0x2083
    mov ax, 0x7f                     ; 0x2084
    push ax                          ; 0x2087
    mov ax, 0x10                     ; 0x2088
    push ax                          ; 0x208b
    call ds_dispatch_baa6            ; 0x208c
    add sp, byte 0x0e                ; 0x208f
    mov ax, 0                        ; 0x2092
    push ax                          ; 0x2095
    mov ax, 0x44                     ; 0x2096
    push ax                          ; 0x2099
    mov ax, 0xb9                     ; 0x209a
    push ax                          ; 0x209d
    mov ax, 0x81                     ; 0x209e
    push ax                          ; 0x20a1
    mov ax, 0xa6                     ; 0x20a2
    push ax                          ; 0x20a5
    mov ax, 0x71                     ; 0x20a6
    push ax                          ; 0x20a9
    mov ax, 0x11                     ; 0x20aa
    push ax                          ; 0x20ad
    call ds_dispatch_baa6            ; 0x20ae
    add sp, byte 0x0e                ; 0x20b1
    mov ax, 7                        ; 0x20b4
    cmp word [bp - 0x0044], byte 7   ; 0x20b7
    jge short @..api_idx_0044.l6     ; 0x20bb
    mov ax, word [bp - 0x0044]       ; 0x20bd
@..api_idx_0044.l6:
    mov word [bp - 0x0020], ax       ; 0x20c0
    mov word [bp - 0x0002], 0        ; 0x20c3
@..api_idx_0044.l7:
    mov ax, 0                        ; 0x20c8
    push ax                          ; 0x20cb
    push ax                          ; 0x20cc
    mov ax, 6                        ; 0x20cd
    imul word [bp - 0x0002]          ; 0x20d0
    add ax, word [bp - 0x0006]       ; 0x20d3
    add ax, strict word 0x28         ; 0x20d6
    push ax                          ; 0x20d9
    mov ax, word [bp - 0x000c]       ; 0x20da
    add ax, strict word 0x62         ; 0x20dd
    push ax                          ; 0x20e0
    mov ax, 6                        ; 0x20e1
    imul word [bp - 0x0002]          ; 0x20e4
    add ax, word [bp - 0x0006]       ; 0x20e7
    add ax, strict word 0x22         ; 0x20ea
    push ax                          ; 0x20ed
    mov ax, word [bp - 0x000c]       ; 0x20ee
    add ax, strict word 6            ; 0x20f1
    push ax                          ; 0x20f4
    mov ax, word [bp - 0x0002]       ; 0x20f5
    add ax, strict word 0x12         ; 0x20f8
    push ax                          ; 0x20fb
    call ds_dispatch_baa6            ; 0x20fc
    add sp, byte 0x0e                ; 0x20ff
    inc word [bp - 0x0002]           ; 0x2102
    mov ax, word [bp - 0x0002]       ; 0x2105
    cmp ax, strict word 7            ; 0x2108
    jl short @..api_idx_0044.l7      ; 0x210b
    mov ax, 0                        ; 0x210d
    push ax                          ; 0x2110
    push ax                          ; 0x2111
    push ax                          ; 0x2112
    push ax                          ; 0x2113
    push ax                          ; 0x2114
    mov ax, 0xffff                   ; 0x2115
    push ax                          ; 0x2118
    mov ax, 0x19                     ; 0x2119
    push ax                          ; 0x211c
    call ds_dispatch_baa6            ; 0x211d
    add sp, byte 0x0e                ; 0x2120
    mov ax, word [bp - 0x000a]       ; 0x2123
    inc ax                           ; 0x2126
    push ax                          ; 0x2127
    mov ax, 0x139                    ; 0x2128
    push ax                          ; 0x212b
    mov ax, word [bp - 0x0006]       ; 0x212c
    dec ax                           ; 0x212f
    push ax                          ; 0x2130
    mov ax, 9                        ; 0x2131
    push ax                          ; 0x2134
    call ds_dispatch_e8da            ; 0x2135
    add sp, byte 8                   ; 0x2138
    mov word [data_90d6], 5          ; 0x213b
    les bx, word [data_0002]         ; 0x2141
    mov ax, word [es:bx]             ; 0x2145
    mov dx, word [es:bx + 0x2]       ; 0x2148
    mov word [data_908c], dx         ; 0x214c
    mov word [data_908a], ax         ; 0x2150
    mov word [bp - 0x001c], 1        ; 0x2153
@..api_idx_0044.l8:
    push word [bp - 0x0042]          ; 0x2158
    push word [bp + 0x4]             ; 0x215b
    call loc_1c11                    ; 0x215e
    add sp, byte 4                   ; 0x2161
    mov ax, 0x59fe                   ; 0x2164
    push ax                          ; 0x2167
    call ds_dispatch_b90d            ; 0x2168
    pop cx                           ; 0x216b
    dec ax                           ; 0x216c
    mov word [bp - 0x001a], ax       ; 0x216d
    cmp word [data_59fc], byte 0     ; 0x2170
    je short @..api_idx_0044.l12     ; 0x2175
    mov ax, word [bp - 0x0022]       ; 0x2177
    cmp ax, word [bp - 0x0018]       ; 0x217a
    jl short @..api_idx_0044.l9      ; 0x217d
    inc word [bp - 0x0022]           ; 0x217f
@..api_idx_0044.l9:
    mov ax, word [bp - 0x0022]       ; 0x2182
    cmp ax, strict word 0xffff       ; 0x2185
    je short @..api_idx_0044.l10     ; 0x2188
    cmp ax, word [bp - 0x0018]       ; 0x218a
    jl short @..api_idx_0044.l10     ; 0x218d
    mov ax, word [bp - 0x0018]       ; 0x218f
    add ax, word [bp - 0x0020]       ; 0x2192
    mov cx, ax                       ; 0x2195
    dec ax                           ; 0x2197
    mov cx, ax                       ; 0x2198
    mov ax, word [bp - 0x0022]       ; 0x219a
    cmp cx, ax                       ; 0x219d
    jge short @..api_idx_0044.l11    ; 0x219f
@..api_idx_0044.l10:
    mov ax, word [bp - 0x0018]       ; 0x21a1
    mov word [bp - 0x0022], ax       ; 0x21a4
@..api_idx_0044.l11:
    mov word [data_5b3e], 1          ; 0x21a7
    mov ax, word [bp - 0x0022]       ; 0x21ad
    sub ax, word [bp - 0x0018]       ; 0x21b0
    add ax, strict word 0x12         ; 0x21b3
    mov word [bp - 0x001a], ax       ; 0x21b6
@..api_idx_0044.l12:
    cmp word [data_5b3e], byte 1     ; 0x21b9
    je short @..api_idx_0044.l13     ; 0x21be
    jmp near @..api_idx_0044.l37     ; 0x21c0
@..api_idx_0044.l13:
    mov ax, word [bp - 0x001a]       ; 0x21c3
    jmp near @..api_idx_0044.l35     ; 0x21c6

    db 0x8d, 0x46, 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x7f, 0xce, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xee, 0x83
    db 0xc1, 0x2a, 0x2b, 0xc1, 0x50, 0xe8, 0xd1, 0x95, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xea, 0x8d, 0x46
    db 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x51, 0xce, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe2, 0xff
    db 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x2a, 0x2b
    db 0xc1, 0x2b, 0x46, 0xea, 0x50, 0xe8, 0xa1, 0x95, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xee, 0x83, 0x7e
    db 0xbc, 0x07, 0x7e, 0x20, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xec, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xfa, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7
    db 0xf9, 0x89, 0x46, 0xe8, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x28, 0x9d, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x4a, 0x9d, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xe7, 0x97, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xf9, 0xc5, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe2, 0x00, 0x74
    db 0x03, 0xe9, 0x0a, 0xff, 0xe9, 0x13, 0x06, 0x83, 0x7e, 0xe6, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x28, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0x9f, 0x9b
    db 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xe8, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xe8, 0xeb, 0x34, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x46, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0x6e
    db 0x9b, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xbc, 0x05, 0xf9, 0xff, 0x3b, 0x46, 0xe8, 0x7e, 0x03, 0xff
    db 0x46, 0xe8, 0x83, 0x7e, 0xbc, 0x07, 0x7e, 0x2c, 0xff, 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x64, 0x00, 0xf7, 0x6e, 0xec, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xf9, 0x99, 0xf7
    db 0xf9, 0xf7, 0x6e, 0xe8, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0x3b, 0x94, 0x83, 0xc4
    db 0x06, 0x89, 0x46, 0xee, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0xe8, 0x9b, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x0a, 0x9c, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xa7, 0x96, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xb9, 0xc4, 0x83, 0xc4, 0x08, 0xe9, 0xdc, 0x04, 0x83, 0x7e
    db 0x08, 0x00, 0x75, 0x03, 0xe9, 0xa1, 0x00, 0x83, 0x7e, 0xc4, 0x00, 0x7d, 0x03, 0xe9, 0x8a, 0x00
    db 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x3c, 0x8b, 0x46, 0xc2, 0x3b, 0x46, 0xc0, 0x7e, 0x03, 0xe9, 0x79
    db 0x00, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xc4, 0x8b, 0xd8, 0x8a, 0x87, 0x22, 0x06, 0x2a, 0xe4, 0x8b
    db 0x4e, 0xc2, 0x41, 0xf7, 0xe9, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8b, 0x56
    db 0xbe, 0xd1, 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x8b, 0x8f, 0x1c, 0x5c, 0x58, 0x3b, 0xc1
    db 0x7f, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xca, 0x99, 0x83, 0xc4, 0x0a, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xaa, 0x99, 0x83, 0xc4, 0x0a, 0xc7
    db 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x08
    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x10, 0x93, 0x59, 0xe9, 0x2f, 0x04, 0xb8, 0x01, 0x00, 0x50, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x71, 0x99, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x51, 0x99, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46
    db 0xe4, 0x00, 0x00, 0xe9, 0xe4, 0x03

@..api_idx_0044.l14:
    cmp word [bp - 0x001a], byte 5   ; 0x251f
    jge short @..api_idx_0044.l15    ; 0x2523
    jmp near @..api_idx_0044.l23     ; 0x2525
@..api_idx_0044.l15:
    cmp word [bp - 0x001a], byte 0x0b ; 0x2528
    jle short @..api_idx_0044.l16    ; 0x252c
    jmp near @..api_idx_0044.l23     ; 0x252e
@..api_idx_0044.l16:
    mov ax, 0                        ; 0x2531
    push ax                          ; 0x2534
    push word [bp - 0x003e]          ; 0x2535
    mov ax, word [bp - 0x0006]       ; 0x2538
    add ax, strict word 0x14         ; 0x253b
    push ax                          ; 0x253e
    mov ax, word [bp - 0x000c]       ; 0x253f
    add ax, strict word 0xc          ; 0x2542
    push ax                          ; 0x2545
    call loc_1a4b                    ; 0x2546
    add sp, byte 8                   ; 0x2549
    mov ax, word [bp - 0x001a]       ; 0x254c
    add ax, strict word 0xfffb       ; 0x254f
    mov word [bp - 0x003e], ax       ; 0x2552
    mov ax, 1                        ; 0x2555
    push ax                          ; 0x2558
    push word [bp - 0x003e]          ; 0x2559
    mov ax, word [bp - 0x0006]       ; 0x255c
    add ax, strict word 0x14         ; 0x255f
    push ax                          ; 0x2562
    mov ax, word [bp - 0x000c]       ; 0x2563
    add ax, strict word 0xc          ; 0x2566
    push ax                          ; 0x2569
    call loc_1a4b                    ; 0x256a
    add sp, byte 8                   ; 0x256d
    cmp word [bp - 0x003c], byte 0   ; 0x2570
    jge short @..api_idx_0044.l17    ; 0x2574
    jmp near @..api_idx_0044.l21     ; 0x2576
@..api_idx_0044.l17:
    mov ax, 6                        ; 0x2579
    push ax                          ; 0x257c
    mov ax, 0                        ; 0x257d
    push ax                          ; 0x2580
    mov ax, 0x248                    ; 0x2581
    imul word [bp + 0x4]             ; 0x2584
    mov bx, ax                       ; 0x2587
    mov ax, word [bx + 0x5c18]       ; 0x2589
    push ax                          ; 0x258d
    mov ax, 6                        ; 0x258e
    imul word [bp - 0x003c]          ; 0x2591
    mov bx, ax                       ; 0x2594
    mov al, byte [bx + 0x621]        ; 0x2596
    sub ah, ah                       ; 0x259a
    mov cx, ax                       ; 0x259c
    pop ax                           ; 0x259e
    sub ax, cx                       ; 0x259f
    push ax                          ; 0x25a1
    call ds_dispatch_b7c2            ; 0x25a2
    add sp, byte 6                   ; 0x25a5
    mov word [bp - 0x0040], ax       ; 0x25a8
    mov ax, 6                        ; 0x25ab
    imul word [bp - 0x003c]          ; 0x25ae
    mov bx, ax                       ; 0x25b1
    mov al, byte [bx + 0x622]        ; 0x25b3
    sub ah, ah                       ; 0x25b7
    mov cx, word [bp - 0x0040]       ; 0x25b9
    inc cx                           ; 0x25bc
    imul cx                          ; 0x25bd
    mov word [bp - 0x0002], ax       ; 0x25bf
    cmp word [bp + 0xa], byte 0      ; 0x25c2
    jne short @..api_idx_0044.l18    ; 0x25c6
    mov ax, 0x3e7                    ; 0x25c8
    jmp short @..api_idx_0044.l20    ; 0x25cb
@..api_idx_0044.l18:
    mov ax, 0x248                    ; 0x25cd
    imul word [bp + 0x4]             ; 0x25d0
    mov cx, word [bp - 0x0042]       ; 0x25d3
    shl cx, 1                        ; 0x25d6
    shl cx, 1                        ; 0x25d8
    add ax, cx                       ; 0x25da
    mov bx, ax                       ; 0x25dc
    mov ax, word [bx + 0x5c1c]       ; 0x25de
    cmp ax, word [bp - 0x0002]       ; 0x25e2
    jge short @..api_idx_0044.l19    ; 0x25e5
    jmp short @..api_idx_0044.l20    ; 0x25e7
@..api_idx_0044.l19:
    mov ax, word [bp - 0x0002]       ; 0x25e9
@..api_idx_0044.l20:
    push ax                          ; 0x25ec
    mov ax, 6                        ; 0x25ed
    imul word [bp - 0x003c]          ; 0x25f0
    mov bx, ax                       ; 0x25f3
    mov al, byte [bx + 0x622]        ; 0x25f5
    sub ah, ah                       ; 0x25f9
    mov cx, word [bp - 0x003e]       ; 0x25fb
    inc cx                           ; 0x25fe
    imul cx                          ; 0x25ff
    push ax                          ; 0x2601
    push word [bp - 0x0042]          ; 0x2602
    mov ax, word [bp - 0x0006]       ; 0x2605
    add ax, strict word 0x15         ; 0x2608
    push ax                          ; 0x260b
    mov ax, word [bp - 0x000c]       ; 0x260c
    add ax, strict word 0x5e         ; 0x260f
    push ax                          ; 0x2612
    call loc_1ad7                    ; 0x2613
    add sp, byte 0x0a                ; 0x2616
    jmp short @..api_idx_0044.l22    ; 0x2619
@..api_idx_0044.l21:
    mov ax, 0                        ; 0x261b
    push ax                          ; 0x261e
    push ax                          ; 0x261f
    push word [bp - 0x0042]          ; 0x2620
    mov ax, word [bp - 0x0006]       ; 0x2623
    add ax, strict word 0x15         ; 0x2626
    push ax                          ; 0x2629
    mov ax, word [bp - 0x000c]       ; 0x262a
    add ax, strict word 0x5e         ; 0x262d
    push ax                          ; 0x2630
    call loc_1ad7                    ; 0x2631
    add sp, byte 0x0a                ; 0x2634
@..api_idx_0044.l22:
    mov ax, word [bp - 0x0006]       ; 0x2637
    add ax, strict word 0x1c         ; 0x263a
    push ax                          ; 0x263d
    mov ax, word [bp - 0x000c]       ; 0x263e
    add ax, strict word 0x56         ; 0x2641
    push ax                          ; 0x2644
    mov ax, word [bp - 0x0006]       ; 0x2645
    add ax, strict word 0x14         ; 0x2648
    push ax                          ; 0x264b
    mov ax, word [bp - 0x000c]       ; 0x264c
    add ax, strict word 0xb          ; 0x264f
    push ax                          ; 0x2652
    call ds_dispatch_e8da            ; 0x2653
    add sp, byte 8                   ; 0x2656
    mov ax, word [bp - 0x0006]       ; 0x2659
    add ax, strict word 0x1b         ; 0x265c
    push ax                          ; 0x265f
    mov ax, word [bp - 0x000c]       ; 0x2660
    add ax, strict word 0x72         ; 0x2663
    push ax                          ; 0x2666
    mov ax, word [bp - 0x0006]       ; 0x2667
    add ax, strict word 0x15         ; 0x266a
    push ax                          ; 0x266d
    mov ax, word [bp - 0x000c]       ; 0x266e
    add ax, strict word 0x5e         ; 0x2671
    push ax                          ; 0x2674
    call ds_dispatch_e8da            ; 0x2675
    add sp, byte 8                   ; 0x2678
    jmp near @..api_idx_0044.l34     ; 0x267b
@..api_idx_0044.l23:
    cmp word [bp - 0x001a], byte 0x0c ; 0x267e
    jge short @..api_idx_0044.l24    ; 0x2682
    jmp near @..api_idx_0044.l28     ; 0x2684
@..api_idx_0044.l24:
    cmp word [bp - 0x001a], byte 0x11 ; 0x2687
    jle short @..api_idx_0044.l25    ; 0x268b
    jmp near @..api_idx_0044.l28     ; 0x268d
@..api_idx_0044.l25:
    mov ax, word [bp - 0x001a]       ; 0x2690
    add ax, strict word 0xfff4       ; 0x2693
    mov word [bp - 0x0042], ax       ; 0x2696
    mov word [bp - 0x003c], 0xffff   ; 0x2699
    push ax                          ; 0x269e
    push word [bp + 0x4]             ; 0x269f
    call api_idx_0004_2              ; 0x26a2
    add sp, byte 4                   ; 0x26a5
    mov word [bp - 0x0044], ax       ; 0x26a8
    mov ax, 7                        ; 0x26ab
    cmp word [bp - 0x0044], byte 7   ; 0x26ae
    jge short @..api_idx_0044.l26    ; 0x26b2
    mov ax, word [bp - 0x0044]       ; 0x26b4
@..api_idx_0044.l26:
    mov word [bp - 0x0024], ax       ; 0x26b7
    mov ax, 7                        ; 0x26ba
    cmp word [bp - 0x0044], byte 7   ; 0x26bd
    jge short @..api_idx_0044.l27    ; 0x26c1
    mov ax, word [bp - 0x0044]       ; 0x26c3
@..api_idx_0044.l27:
    mov word [bp - 0x0020], ax       ; 0x26c6
    mov word [bp - 0x0018], 0        ; 0x26c9
    mov word [bp - 0x0022], 0xffff   ; 0x26ce
    push word [bp - 0x0024]          ; 0x26d3
    push word [bp - 0x0022]          ; 0x26d6
    push word [bp - 0x0018]          ; 0x26d9
    mov ax, 7                        ; 0x26dc
    push ax                          ; 0x26df
    mov ax, 0xf                      ; 0x26e0
    push ax                          ; 0x26e3
    mov ax, word [bp - 0x0006]       ; 0x26e4
    add ax, strict word 0x22         ; 0x26e7
    push ax                          ; 0x26ea
    mov ax, word [bp - 0x000c]       ; 0x26eb
    add ax, strict word 6            ; 0x26ee
    push ax                          ; 0x26f1
    call ds_dispatch_bf97            ; 0x26f2
    add sp, byte 0x0e                ; 0x26f5
    mov word [bp - 0x0012], 0        ; 0x26f8
    push word [bp - 0x0012]          ; 0x26fd
    mov ax, 7                        ; 0x2700
    push ax                          ; 0x2703
    mov ax, 8                        ; 0x2704
    push ax                          ; 0x2707
    mov ax, word [bp - 0x0006]       ; 0x2708
    add ax, strict word 0x22         ; 0x270b
    push ax                          ; 0x270e
    mov ax, word [bp - 0x000c]       ; 0x270f
    add ax, strict word 0x6a         ; 0x2712
    push ax                          ; 0x2715
    call ds_dispatch_bfd8            ; 0x2716
    add sp, byte 0x0a                ; 0x2719
    mov ax, 0                        ; 0x271c
    push ax                          ; 0x271f
    push ax                          ; 0x2720
    mov ax, word [bp - 0x0006]       ; 0x2721
    add ax, word [bp - 0x0012]       ; 0x2724
    add ax, strict word 0x2e         ; 0x2727
    push ax                          ; 0x272a
    mov ax, word [bp - 0x000c]       ; 0x272b
    add ax, strict word 0x72         ; 0x272e
    push ax                          ; 0x2731
    mov ax, word [bp - 0x0006]       ; 0x2732
    add ax, word [bp - 0x0012]       ; 0x2735
    add ax, strict word 0x2a         ; 0x2738
    push ax                          ; 0x273b
    mov ax, word [bp - 0x000c]       ; 0x273c
    add ax, strict word 0x6a         ; 0x273f
    push ax                          ; 0x2742
    mov ax, 0                        ; 0x2743
    push ax                          ; 0x2746
    call ds_dispatch_baa6            ; 0x2747
    add sp, byte 0x0e                ; 0x274a
    mov ax, 0                        ; 0x274d
    push ax                          ; 0x2750
    push ax                          ; 0x2751
    push word [bp - 0x0042]          ; 0x2752
    mov ax, word [bp - 0x0006]       ; 0x2755
    add ax, strict word 0x15         ; 0x2758
    push ax                          ; 0x275b
    mov ax, word [bp - 0x000c]       ; 0x275c
    add ax, strict word 0x5e         ; 0x275f
    push ax                          ; 0x2762
    call loc_1ad7                    ; 0x2763
    add sp, byte 0x0a                ; 0x2766
    mov ax, word [bp - 0x0006]       ; 0x2769
    add ax, strict word 0x4c         ; 0x276c
    push ax                          ; 0x276f
    mov ax, word [bp - 0x000c]       ; 0x2770
    add ax, strict word 0x72         ; 0x2773
    push ax                          ; 0x2776
    mov ax, word [bp - 0x0006]       ; 0x2777
    add ax, strict word 0x22         ; 0x277a
    push ax                          ; 0x277d
    mov ax, word [bp - 0x000c]       ; 0x277e
    add ax, strict word 6            ; 0x2781
    push ax                          ; 0x2784
    call ds_dispatch_e8da            ; 0x2785
    add sp, byte 8                   ; 0x2788
    mov ax, word [bp - 0x0006]       ; 0x278b
    add ax, strict word 0x1b         ; 0x278e
    push ax                          ; 0x2791
    mov ax, word [bp - 0x000c]       ; 0x2792
    add ax, strict word 0x72         ; 0x2795
    push ax                          ; 0x2798
    mov ax, word [bp - 0x0006]       ; 0x2799
    add ax, strict word 0x15         ; 0x279c
    push ax                          ; 0x279f
    mov ax, word [bp - 0x000c]       ; 0x27a0
    add ax, strict word 0x5e         ; 0x27a3
    push ax                          ; 0x27a6
    call ds_dispatch_e8da            ; 0x27a7
    add sp, byte 8                   ; 0x27aa
    jmp near @..api_idx_0044.l34     ; 0x27ad
@..api_idx_0044.l28:
    cmp word [bp - 0x001a], byte 0x12 ; 0x27b0
    jge short @..api_idx_0044.l29    ; 0x27b4
    jmp near @..api_idx_0044.l34     ; 0x27b6
@..api_idx_0044.l29:
    mov ax, word [bp - 0x0020]       ; 0x27b9
    add ax, strict word 0x12         ; 0x27bc
    cmp ax, word [bp - 0x001a]       ; 0x27bf
    jg short @..api_idx_0044.l30     ; 0x27c2
    jmp near @..api_idx_0044.l34     ; 0x27c4
@..api_idx_0044.l30:
    mov ax, word [bp - 0x0018]       ; 0x27c7
    add ax, word [bp - 0x001a]       ; 0x27ca
    add ax, strict word 0xffee       ; 0x27cd
    mov word [bp - 0x0022], ax       ; 0x27d0
    shl ax, 1                        ; 0x27d3
    mov bx, ax                       ; 0x27d5
    mov ax, word [bx - 0x6efa]       ; 0x27d7
    mov word [bp - 0x003c], ax       ; 0x27db
    push word [bp - 0x0024]          ; 0x27de
    push word [bp - 0x0022]          ; 0x27e1
    push word [bp - 0x0018]          ; 0x27e4
    mov ax, 7                        ; 0x27e7
    push ax                          ; 0x27ea
    mov ax, 0xf                      ; 0x27eb
    push ax                          ; 0x27ee
    mov ax, word [bp - 0x0006]       ; 0x27ef
    add ax, strict word 0x22         ; 0x27f2
    push ax                          ; 0x27f5
    mov ax, word [bp - 0x000c]       ; 0x27f6
    add ax, strict word 6            ; 0x27f9
    push ax                          ; 0x27fc
    call ds_dispatch_bf97            ; 0x27fd
    add sp, byte 0x0e                ; 0x2800
    mov ax, 6                        ; 0x2803
    push ax                          ; 0x2806
    mov ax, 0                        ; 0x2807
    push ax                          ; 0x280a
    mov ax, 0x248                    ; 0x280b
    imul word [bp + 0x4]             ; 0x280e
    mov bx, ax                       ; 0x2811
    mov ax, word [bx + 0x5c18]       ; 0x2813
    push ax                          ; 0x2817
    mov ax, 6                        ; 0x2818
    imul word [bp - 0x003c]          ; 0x281b
    mov bx, ax                       ; 0x281e
    mov al, byte [bx + 0x621]        ; 0x2820
    sub ah, ah                       ; 0x2824
    mov cx, ax                       ; 0x2826
    pop ax                           ; 0x2828
    sub ax, cx                       ; 0x2829
    push ax                          ; 0x282b
    call ds_dispatch_b7c2            ; 0x282c
    add sp, byte 6                   ; 0x282f
    mov word [bp - 0x0040], ax       ; 0x2832
    mov ax, 6                        ; 0x2835
    imul word [bp - 0x003c]          ; 0x2838
    mov bx, ax                       ; 0x283b
    mov al, byte [bx + 0x622]        ; 0x283d
    sub ah, ah                       ; 0x2841
    mov cx, word [bp - 0x0040]       ; 0x2843
    inc cx                           ; 0x2846
    imul cx                          ; 0x2847
    mov word [bp - 0x0002], ax       ; 0x2849
    cmp word [bp + 0xa], byte 0      ; 0x284c
    jne short @..api_idx_0044.l31    ; 0x2850
    mov ax, 0x3e7                    ; 0x2852
    jmp short @..api_idx_0044.l33    ; 0x2855
@..api_idx_0044.l31:
    mov ax, 0x248                    ; 0x2857
    imul word [bp + 0x4]             ; 0x285a
    mov cx, word [bp - 0x0042]       ; 0x285d
    shl cx, 1                        ; 0x2860
    shl cx, 1                        ; 0x2862
    add ax, cx                       ; 0x2864
    mov bx, ax                       ; 0x2866
    mov ax, word [bx + 0x5c1c]       ; 0x2868
    cmp ax, word [bp - 0x0002]       ; 0x286c
    jge short @..api_idx_0044.l32    ; 0x286f
    jmp short @..api_idx_0044.l33    ; 0x2871
@..api_idx_0044.l32:
    mov ax, word [bp - 0x0002]       ; 0x2873
@..api_idx_0044.l33:
    push ax                          ; 0x2876
    mov ax, 6                        ; 0x2877
    imul word [bp - 0x003c]          ; 0x287a
    mov bx, ax                       ; 0x287d
    mov al, byte [bx + 0x622]        ; 0x287f
    sub ah, ah                       ; 0x2883
    mov cx, word [bp - 0x003e]       ; 0x2885
    inc cx                           ; 0x2888
    imul cx                          ; 0x2889
    push ax                          ; 0x288b
    push word [bp - 0x0042]          ; 0x288c
    mov ax, word [bp - 0x0006]       ; 0x288f
    add ax, strict word 0x15         ; 0x2892
    push ax                          ; 0x2895
    mov ax, word [bp - 0x000c]       ; 0x2896
    add ax, strict word 0x5e         ; 0x2899
    push ax                          ; 0x289c
    call loc_1ad7                    ; 0x289d
    add sp, byte 0x0a                ; 0x28a0
    mov ax, word [bp - 0x0006]       ; 0x28a3
    add ax, strict word 0x4c         ; 0x28a6
    push ax                          ; 0x28a9
    mov ax, word [bp - 0x000c]       ; 0x28aa
    add ax, strict word 0x72         ; 0x28ad
    push ax                          ; 0x28b0
    mov ax, word [bp - 0x0006]       ; 0x28b1
    add ax, strict word 0x22         ; 0x28b4
    push ax                          ; 0x28b7
    mov ax, word [bp - 0x000c]       ; 0x28b8
    add ax, strict word 6            ; 0x28bb
    push ax                          ; 0x28be
    call ds_dispatch_e8da            ; 0x28bf
    add sp, byte 8                   ; 0x28c2
    mov ax, word [bp - 0x0006]       ; 0x28c5
    add ax, strict word 0x1b         ; 0x28c8
    push ax                          ; 0x28cb
    mov ax, word [bp - 0x000c]       ; 0x28cc
    add ax, strict word 0x72         ; 0x28cf
    push ax                          ; 0x28d2
    mov ax, word [bp - 0x0006]       ; 0x28d3
    add ax, strict word 0x15         ; 0x28d6
    push ax                          ; 0x28d9
    mov ax, word [bp - 0x000c]       ; 0x28da
    add ax, strict word 0x5e         ; 0x28dd
    push ax                          ; 0x28e0
    call ds_dispatch_e8da            ; 0x28e1
    add sp, byte 8                   ; 0x28e4
@..api_idx_0044.l34:
    jmp short @..api_idx_0044.l37    ; 0x28e7
    adc byte [bp + si + 0x37], dh    ; 0x28e9
    jae short loc_2925               ; 0x28ec
    jae short loc_295e               ; 0x28ee
    db 0x74, 0x1b ; je short loc_290d
    db 0x75
@..api_idx_0044.l35:
    cmp ax, strict word 5            ; 0x28f3
    jae short @..api_idx_0044.l36    ; 0x28f6
    xchg bx, ax                      ; 0x28f8
    shl bx, 1                        ; 0x28f9
    jmp [cs:bx + 0x7930]             ; 0x28fb
@..api_idx_0044.l36:
    jmp near @..api_idx_0044.l14     ; 0x2900
@..api_idx_0044.l37:
    cmp word [bp - 0x001c], byte 0   ; 0x2903
    je short @..api_idx_0044.l38     ; 0x2907
    jmp near @..api_idx_0044.l8      ; 0x2909
@..api_idx_0044.l38:
    mov ax, 1                        ; 0x290c
    push ax                          ; 0x290f
    push word [bp - 0x003a]          ; 0x2910
    call ds_dispatch_c459            ; 0x2913
    add sp, byte 4                   ; 0x2916
    mov ax, word [bp - 0x000a]       ; 0x2919
    inc ax                           ; 0x291c
    push ax                          ; 0x291d
    mov ax, word [bp - 0x0008]       ; 0x291e
    inc ax                           ; 0x2921
    push ax                          ; 0x2922
    mov ax, word [bp - 0x0006]       ; 0x2923
    dec ax                           ; 0x2926
    push ax                          ; 0x2927
    mov ax, word [bp - 0x0004]       ; 0x2928
    dec ax                           ; 0x292b
    push ax                          ; 0x292c
    call ds_dispatch_e8da            ; 0x292d
    add sp, byte 8                   ; 0x2930
    mov ax, word [bp - 0x003e]       ; 0x2933
    xchg al, ah                      ; 0x2936
    sub al, al                       ; 0x2938
    add ax, word [bp - 0x003c]       ; 0x293a
    add ax, 0x100                    ; 0x293d
    mov word [data_904e], ax         ; 0x2940
    mov ax, word [data_9050]         ; 0x2943
    ret                              ; 0x2946
