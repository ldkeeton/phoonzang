; auto-generated
api_idx_0044_NJQJ:
    mov ax, 0xffbc                   ; 0x8d1e
    call aztec_csav                  ; 0x8d21
    mov word [bp - 0x0002], 0        ; 0x8d24
@..api_idx_0044_NJQJ.l1:
    mov ax, word [bp - 0x0002]       ; 0x8d29
    shl ax, 1                        ; 0x8d2c
    mov bx, ax                       ; 0x8d2e
    mov word [bx + bss_830e], 0      ; 0x8d30
    inc word [bp - 0x0002]           ; 0x8d36
    mov ax, word [bp - 0x0002]       ; 0x8d39
    cmp ax, strict word 6            ; 0x8d3c
    jl short @..api_idx_0044_NJQJ.l1 ; 0x8d3f
    mov word [bss_904e], 0xffff      ; 0x8d41
    mov word [bp - 0x0004], 0x32     ; 0x8d47
    mov word [bp - 0x0006], 0x73     ; 0x8d4c
    mov word [bp - 0x0008], 0x10d    ; 0x8d51
    mov word [bp - 0x000a], 0xc5     ; 0x8d56
    mov word [bp - 0x000c], 0x95     ; 0x8d5b
    mov word [bp - 0x0014], 0x16     ; 0x8d60
    mov ax, dseg_9104                ; 0x8d65
    push ax                          ; 0x8d68
    mov ax, word [bp - 0x000a]       ; 0x8d69
    inc ax                           ; 0x8d6c
    push ax                          ; 0x8d6d
    mov ax, word [bp - 0x0008]       ; 0x8d6e
    inc ax                           ; 0x8d71
    push ax                          ; 0x8d72
    mov ax, word [bp - 0x0006]       ; 0x8d73
    dec ax                           ; 0x8d76
    push ax                          ; 0x8d77
    mov ax, word [bp - 0x0004]       ; 0x8d78
    dec ax                           ; 0x8d7b
    push ax                          ; 0x8d7c
    call ds_app_file_LMRK            ; 0x8d7d
    add sp, byte 0x0a                ; 0x8d80
    mov word [bp - 0x003a], ax       ; 0x8d83
    push word [bp - 0x000a]          ; 0x8d86
    push word [bp - 0x0008]          ; 0x8d89
    push word [bp - 0x0006]          ; 0x8d8c
    push word [bp - 0x0004]          ; 0x8d8f
    call ds_app_KNSQ                 ; 0x8d92
    add sp, byte 8                   ; 0x8d95
    push word [bp - 0x000a]          ; 0x8d98
    push word [bp - 0x0008]          ; 0x8d9b
    push word [bp - 0x0006]          ; 0x8d9e
    mov ax, 0x95                     ; 0x8da1
    push ax                          ; 0x8da4
    call ds_app_KNSQ                 ; 0x8da5
    add sp, byte 8                   ; 0x8da8
    call api_idx_000a_IIIU           ; 0x8dab
    push word [bp + 0x4]             ; 0x8dae
    call api_idx_000c_JQMN           ; 0x8db1
    pop cx                           ; 0x8db4
    mov ax, 1                        ; 0x8db5
    push ax                          ; 0x8db8
    mov ax, 0x73                     ; 0x8db9
    push ax                          ; 0x8dbc
    mov ax, 0x32                     ; 0x8dbd
    push ax                          ; 0x8dc0
    call draw_party_slot_letters     ; 0x8dc1
    add sp, byte 6                   ; 0x8dc4
    lea ax, word [bp - 0x0038]       ; 0x8dc7
    push ax                          ; 0x8dca
    push word [bp + 0x6]             ; 0x8dcb
    call ds_app_mem_TIMR             ; 0x8dce
    add sp, byte 4                   ; 0x8dd1
    lea ax, word [bp - 0x0038]       ; 0x8dd4
    push ax                          ; 0x8dd7
    push word [bp + 0x8]             ; 0x8dd8
    mov ax, 1                        ; 0x8ddb
    push ax                          ; 0x8dde
    mov ax, 8                        ; 0x8ddf
    push ax                          ; 0x8de2
    mov ax, word [bp - 0x0006]       ; 0x8de3
    add ax, strict word 6            ; 0x8de6
    push ax                          ; 0x8de9
    mov ax, word [bp - 0x000c]       ; 0x8dea
    add ax, strict word 6            ; 0x8ded
    push ax                          ; 0x8df0
    call ds_app_string_IIIR          ; 0x8df1
    add sp, byte 0x0c                ; 0x8df4
    lea ax, word [bp - 0x0038]       ; 0x8df7
    push ax                          ; 0x8dfa
    mov ax, word [bp + 0x6]          ; 0x8dfb
    inc ax                           ; 0x8dfe
    push ax                          ; 0x8dff
    call ds_app_mem_TIMR             ; 0x8e00
    add sp, byte 4                   ; 0x8e03
    lea ax, word [bp - 0x0038]       ; 0x8e06
    push ax                          ; 0x8e09
    mov ax, 1                        ; 0x8e0a
    push ax                          ; 0x8e0d
    push ax                          ; 0x8e0e
    mov ax, 8                        ; 0x8e0f
    push ax                          ; 0x8e12
    mov ax, word [bp - 0x0006]       ; 0x8e13
    add ax, strict word 6            ; 0x8e16
    push ax                          ; 0x8e19
    mov ax, word [bp - 0x000c]       ; 0x8e1a
    add ax, strict word 0x42         ; 0x8e1d
    push ax                          ; 0x8e20
    call ds_app_string_IIIR          ; 0x8e21
    add sp, byte 0x0c                ; 0x8e24
    mov ax, word [bp - 0x0006]       ; 0x8e27
    add ax, strict word 0x14         ; 0x8e2a
    push ax                          ; 0x8e2d
    mov ax, word [bp - 0x000c]       ; 0x8e2e
    add ax, strict word 0x48         ; 0x8e31
    push ax                          ; 0x8e34
    call gfx_entry_13                ; 0x8e35
    add sp, byte 4                   ; 0x8e38
    mov ax, 0                        ; 0x8e3b
    push ax                          ; 0x8e3e
    mov ax, 0xcd                     ; 0x8e3f
    push ax                          ; 0x8e42
    call gfx_entry_12                ; 0x8e43
    add sp, byte 4                   ; 0x8e46
    mov ax, 2                        ; 0x8e49
    push ax                          ; 0x8e4c
    mov ax, 0xa                      ; 0x8e4d
    push ax                          ; 0x8e50
    call ds_loc_TJTV                 ; 0x8e51
    add sp, byte 4                   ; 0x8e54
    mov word [bp - 0x003c], 0xffff   ; 0x8e57
    mov word [bp - 0x003e], 0        ; 0x8e5c
    mov word [bp - 0x0040], 0        ; 0x8e61
    mov word [bp - 0x0002], 0        ; 0x8e66
@..api_idx_0044_NJQJ.l2:
    mov ax, 0                        ; 0x8e6b
    mov cx, word [bp - 0x0002]       ; 0x8e6e
    cmp cx, word [bp - 0x003e]       ; 0x8e71
    jne short @..api_idx_0044_NJQJ.l3 ; 0x8e74
    mov ax, 1                        ; 0x8e76
@..api_idx_0044_NJQJ.l3:
    push ax                          ; 0x8e79
    push cx                          ; 0x8e7a
    mov ax, word [bp - 0x0006]       ; 0x8e7b
    add ax, strict word 0x14         ; 0x8e7e
    push ax                          ; 0x8e81
    mov ax, word [bp - 0x000c]       ; 0x8e82
    add ax, strict word 0xc          ; 0x8e85
    push ax                          ; 0x8e88
    call loc_PTRP                    ; 0x8e89
    add sp, byte 8                   ; 0x8e8c
    inc word [bp - 0x0002]           ; 0x8e8f
    mov ax, word [bp - 0x0002]       ; 0x8e92
    cmp ax, strict word 7            ; 0x8e95
    jl short @..api_idx_0044_NJQJ.l2 ; 0x8e98
    mov word [bp - 0x0042], 0        ; 0x8e9a
    mov ax, 0                        ; 0x8e9f
    push ax                          ; 0x8ea2
    push ax                          ; 0x8ea3
    push word [bp - 0x0042]          ; 0x8ea4
    mov ax, word [bp - 0x0006]       ; 0x8ea7
    add ax, strict word 0x15         ; 0x8eaa
    push ax                          ; 0x8ead
    mov ax, word [bp - 0x000c]       ; 0x8eae
    add ax, strict word 0x5e         ; 0x8eb1
    push ax                          ; 0x8eb4
    call loc_HOII                    ; 0x8eb5
    add sp, byte 0x0a                ; 0x8eb8
    push word [bp - 0x0042]          ; 0x8ebb
    push word [bp + 0x4]             ; 0x8ebe
    call api_idx_0004_JOHI           ; 0x8ec1
    add sp, byte 4                   ; 0x8ec4
    mov word [bp - 0x0044], ax       ; 0x8ec7
    mov ax, 7                        ; 0x8eca
    cmp word [bp - 0x0044], byte 7   ; 0x8ecd
    jge short @..api_idx_0044_NJQJ.l4 ; 0x8ed1
    mov ax, word [bp - 0x0044]       ; 0x8ed3
@..api_idx_0044_NJQJ.l4:
    mov word [bp - 0x0024], ax       ; 0x8ed6
    mov word [bp - 0x0018], 0        ; 0x8ed9
    mov word [bp - 0x0022], 0xffff   ; 0x8ede
    push ax                          ; 0x8ee3
    push word [bp - 0x0022]          ; 0x8ee4
    push word [bp - 0x0018]          ; 0x8ee7
    mov ax, 7                        ; 0x8eea
    push ax                          ; 0x8eed
    mov ax, 0xf                      ; 0x8eee
    push ax                          ; 0x8ef1
    mov ax, word [bp - 0x0006]       ; 0x8ef2
    add ax, strict word 0x22         ; 0x8ef5
    push ax                          ; 0x8ef8
    mov ax, word [bp - 0x000c]       ; 0x8ef9
    add ax, strict word 6            ; 0x8efc
    push ax                          ; 0x8eff
    call ds_app_HTKI                 ; 0x8f00
    add sp, byte 0x0e                ; 0x8f03
    mov word [bp - 0x0012], 0        ; 0x8f06
    push word [bp - 0x0012]          ; 0x8f0b
    mov ax, 7                        ; 0x8f0e
    push ax                          ; 0x8f11
    mov ax, 8                        ; 0x8f12
    push ax                          ; 0x8f15
    mov ax, word [bp - 0x0006]       ; 0x8f16
    add ax, strict word 0x22         ; 0x8f19
    push ax                          ; 0x8f1c
    mov ax, word [bp - 0x000c]       ; 0x8f1d
    add ax, strict word 0x6a         ; 0x8f20
    push ax                          ; 0x8f23
    call ds_app_JKST                 ; 0x8f24
    add sp, byte 0x0a                ; 0x8f27
    mov ax, 0                        ; 0x8f2a
    push ax                          ; 0x8f2d
    push ax                          ; 0x8f2e
    mov ax, word [bp - 0x0006]       ; 0x8f2f
    add ax, word [bp - 0x0012]       ; 0x8f32
    add ax, strict word 0x2e         ; 0x8f35
    push ax                          ; 0x8f38
    mov ax, word [bp - 0x000c]       ; 0x8f39
    add ax, strict word 0x72         ; 0x8f3c
    push ax                          ; 0x8f3f
    mov ax, word [bp - 0x0006]       ; 0x8f40
    add ax, word [bp - 0x0012]       ; 0x8f43
    add ax, strict word 0x2a         ; 0x8f46
    push ax                          ; 0x8f49
    mov ax, word [bp - 0x000c]       ; 0x8f4a
    add ax, strict word 0x6a         ; 0x8f4d
    push ax                          ; 0x8f50
    mov ax, 0                        ; 0x8f51
    push ax                          ; 0x8f54
    call ds_app_NGUR                 ; 0x8f55
    add sp, byte 0x0e                ; 0x8f58
    mov ax, 0                        ; 0x8f5b
    push ax                          ; 0x8f5e
    mov ax, 9                        ; 0x8f5f
    push ax                          ; 0x8f62
    mov ax, word [bp - 0x0006]       ; 0x8f63
    add ax, strict word 0x28         ; 0x8f66
    push ax                          ; 0x8f69
    mov ax, word [bp - 0x000c]       ; 0x8f6a
    add ax, strict word 0x72         ; 0x8f6d
    push ax                          ; 0x8f70
    mov ax, word [bp - 0x0006]       ; 0x8f71
    add ax, strict word 0x22         ; 0x8f74
    push ax                          ; 0x8f77
    mov ax, word [bp - 0x000c]       ; 0x8f78
    add ax, strict word 0x6a         ; 0x8f7b
    push ax                          ; 0x8f7e
    mov ax, 1                        ; 0x8f7f
    push ax                          ; 0x8f82
    call ds_app_NGUR                 ; 0x8f83
    add sp, byte 0x0e                ; 0x8f86
    mov ax, 0                        ; 0x8f89
    push ax                          ; 0x8f8c
    mov ax, 0xb                      ; 0x8f8d
    push ax                          ; 0x8f90
    mov ax, word [bp - 0x0006]       ; 0x8f91
    add ax, strict word 0x4c         ; 0x8f94
    push ax                          ; 0x8f97
    mov ax, word [bp - 0x000c]       ; 0x8f98
    add ax, strict word 0x72         ; 0x8f9b
    push ax                          ; 0x8f9e
    mov ax, word [bp - 0x0006]       ; 0x8f9f
    add ax, strict word 0x46         ; 0x8fa2
    push ax                          ; 0x8fa5
    mov ax, word [bp - 0x000c]       ; 0x8fa6
    add ax, strict word 0x6a         ; 0x8fa9
    push ax                          ; 0x8fac
    mov ax, 2                        ; 0x8fad
    push ax                          ; 0x8fb0
    call ds_app_NGUR                 ; 0x8fb1
    add sp, byte 0x0e                ; 0x8fb4
    mov ax, 0                        ; 0x8fb7
    push ax                          ; 0x8fba
    mov ax, 0xd                      ; 0x8fbb
    push ax                          ; 0x8fbe
    mov ax, word [bp - 0x0006]       ; 0x8fbf
    add ax, strict word 0xe          ; 0x8fc2
    push ax                          ; 0x8fc5
    mov ax, word [bp - 0x000c]       ; 0x8fc6
    add ax, strict word 0x36         ; 0x8fc9
    push ax                          ; 0x8fcc
    mov ax, word [bp - 0x0006]       ; 0x8fcd
    add ax, strict word 6            ; 0x8fd0
    push ax                          ; 0x8fd3
    mov ax, word [bp - 0x000c]       ; 0x8fd4
    add ax, strict word 6            ; 0x8fd7
    push ax                          ; 0x8fda
    mov ax, 3                        ; 0x8fdb
    push ax                          ; 0x8fde
    call ds_app_NGUR                 ; 0x8fdf
    add sp, byte 0x0e                ; 0x8fe2
    mov ax, 0                        ; 0x8fe5
    push ax                          ; 0x8fe8
    mov ax, 0x1b                     ; 0x8fe9
    push ax                          ; 0x8fec
    mov ax, word [bp - 0x0006]       ; 0x8fed
    add ax, strict word 0xe          ; 0x8ff0
    push ax                          ; 0x8ff3
    mov ax, word [bp - 0x000c]       ; 0x8ff4
    add ax, strict word 0x72         ; 0x8ff7
    push ax                          ; 0x8ffa
    mov ax, word [bp - 0x0006]       ; 0x8ffb
    add ax, strict word 6            ; 0x8ffe
    push ax                          ; 0x9001
    mov ax, word [bp - 0x000c]       ; 0x9002
    add ax, strict word 0x42         ; 0x9005
    push ax                          ; 0x9008
    mov ax, 4                        ; 0x9009
    push ax                          ; 0x900c
    call ds_app_NGUR                 ; 0x900d
    add sp, byte 0x0e                ; 0x9010
    mov word [bp - 0x0002], 0        ; 0x9013
@..api_idx_0044_NJQJ.l5:
    mov ax, 0                        ; 0x9018
    push ax                          ; 0x901b
    mov ax, word [bp - 0x0002]       ; 0x901c
    add ax, strict word 0x31         ; 0x901f
    cbw                              ; 0x9022
    push ax                          ; 0x9023
    mov ax, word [bp - 0x0006]       ; 0x9024
    add ax, strict word 0x1b         ; 0x9027
    push ax                          ; 0x902a
    mov ax, 0xa                      ; 0x902b
    imul word [bp - 0x0002]          ; 0x902e
    add ax, word [bp - 0x000c]       ; 0x9031
    add ax, strict word 0x13         ; 0x9034
    push ax                          ; 0x9037
    mov ax, word [bp - 0x0006]       ; 0x9038
    add ax, strict word 0x14         ; 0x903b
    push ax                          ; 0x903e
    mov ax, 0xa                      ; 0x903f
    imul word [bp - 0x0002]          ; 0x9042
    add ax, word [bp - 0x000c]       ; 0x9045
    add ax, strict word 0xc          ; 0x9048
    push ax                          ; 0x904b
    mov ax, word [bp - 0x0002]       ; 0x904c
    add ax, strict word 5            ; 0x904f
    push ax                          ; 0x9052
    call ds_app_NGUR                 ; 0x9053
    add sp, byte 0x0e                ; 0x9056
    inc word [bp - 0x0002]           ; 0x9059
    mov ax, word [bp - 0x0002]       ; 0x905c
    cmp ax, strict word 7            ; 0x905f
    jl short @..api_idx_0044_NJQJ.l5 ; 0x9062
    mov ax, 0                        ; 0x9064
    push ax                          ; 0x9067
    mov ax, 0x46                     ; 0x9068
    push ax                          ; 0x906b
    mov ax, 0x87                     ; 0x906c
    push ax                          ; 0x906f
    mov ax, 0x52                     ; 0x9070
    push ax                          ; 0x9073
    mov ax, 0x74                     ; 0x9074
    push ax                          ; 0x9077
    mov ax, 0x46                     ; 0x9078
    push ax                          ; 0x907b
    mov ax, 0xc                      ; 0x907c
    push ax                          ; 0x907f
    call ds_app_NGUR                 ; 0x9080
    add sp, byte 0x0e                ; 0x9083
    mov ax, 0                        ; 0x9086
    push ax                          ; 0x9089
    mov ax, 0x57                     ; 0x908a
    push ax                          ; 0x908d
    mov ax, 0x9d                     ; 0x908e
    push ax                          ; 0x9091
    mov ax, 0x4b                     ; 0x9092
    push ax                          ; 0x9095
    mov ax, 0x90                     ; 0x9096
    push ax                          ; 0x9099
    mov ax, 0x32                     ; 0x909a
    push ax                          ; 0x909d
    mov ax, 0xd                      ; 0x909e
    push ax                          ; 0x90a1
    call ds_app_NGUR                 ; 0x90a2
    add sp, byte 0x0e                ; 0x90a5
    mov ax, 0                        ; 0x90a8
    push ax                          ; 0x90ab
    mov ax, 0x41                     ; 0x90ac
    push ax                          ; 0x90af
    mov ax, 0xbb                     ; 0x90b0
    push ax                          ; 0x90b3
    mov ax, 0x5f                     ; 0x90b4
    push ax                          ; 0x90b7
    mov ax, 0xa5                     ; 0x90b8
    push ax                          ; 0x90bb
    mov ax, 0x43                     ; 0x90bc
    push ax                          ; 0x90bf
    mov ax, 0xe                      ; 0x90c0
    push ax                          ; 0x90c3
    call ds_app_NGUR                 ; 0x90c4
    add sp, byte 0x0e                ; 0x90c7
    mov ax, 0                        ; 0x90ca
    push ax                          ; 0x90cd
    mov ax, 0x45                     ; 0x90ce
    push ax                          ; 0x90d1
    mov ax, 0x89                     ; 0x90d2
    push ax                          ; 0x90d5
    mov ax, 0x87                     ; 0x90d6
    push ax                          ; 0x90d9
    mov ax, 0x77                     ; 0x90da
    push ax                          ; 0x90dd
    mov ax, 0x6c                     ; 0x90de
    push ax                          ; 0x90e1
    mov ax, 0xf                      ; 0x90e2
    push ax                          ; 0x90e5
    call ds_app_NGUR                 ; 0x90e6
    add sp, byte 0x0e                ; 0x90e9
    mov ax, 0                        ; 0x90ec
    push ax                          ; 0x90ef
    mov ax, 0x4d                     ; 0x90f0
    push ax                          ; 0x90f3
    mov ax, 0x9c                     ; 0x90f4
    push ax                          ; 0x90f7
    mov ax, 0x8e                     ; 0x90f8
    push ax                          ; 0x90fb
    mov ax, 0x91                     ; 0x90fc
    push ax                          ; 0x90ff
    mov ax, 0x7f                     ; 0x9100
    push ax                          ; 0x9103
    mov ax, 0x10                     ; 0x9104
    push ax                          ; 0x9107
    call ds_app_NGUR                 ; 0x9108
    add sp, byte 0x0e                ; 0x910b
    mov ax, 0                        ; 0x910e
    push ax                          ; 0x9111
    mov ax, 0x44                     ; 0x9112
    push ax                          ; 0x9115
    mov ax, 0xb9                     ; 0x9116
    push ax                          ; 0x9119
    mov ax, 0x81                     ; 0x911a
    push ax                          ; 0x911d
    mov ax, 0xa6                     ; 0x911e
    push ax                          ; 0x9121
    mov ax, 0x71                     ; 0x9122
    push ax                          ; 0x9125
    mov ax, 0x11                     ; 0x9126
    push ax                          ; 0x9129
    call ds_app_NGUR                 ; 0x912a
    add sp, byte 0x0e                ; 0x912d
    mov ax, 7                        ; 0x9130
    cmp word [bp - 0x0044], byte 7   ; 0x9133
    jge short @..api_idx_0044_NJQJ.l6 ; 0x9137
    mov ax, word [bp - 0x0044]       ; 0x9139
@..api_idx_0044_NJQJ.l6:
    mov word [bp - 0x0020], ax       ; 0x913c
    mov word [bp - 0x0002], 0        ; 0x913f
@..api_idx_0044_NJQJ.l7:
    mov ax, 0                        ; 0x9144
    push ax                          ; 0x9147
    push ax                          ; 0x9148
    mov ax, 6                        ; 0x9149
    imul word [bp - 0x0002]          ; 0x914c
    add ax, word [bp - 0x0006]       ; 0x914f
    add ax, strict word 0x28         ; 0x9152
    push ax                          ; 0x9155
    mov ax, word [bp - 0x000c]       ; 0x9156
    add ax, strict word 0x62         ; 0x9159
    push ax                          ; 0x915c
    mov ax, 6                        ; 0x915d
    imul word [bp - 0x0002]          ; 0x9160
    add ax, word [bp - 0x0006]       ; 0x9163
    add ax, strict word 0x22         ; 0x9166
    push ax                          ; 0x9169
    mov ax, word [bp - 0x000c]       ; 0x916a
    add ax, strict word 6            ; 0x916d
    push ax                          ; 0x9170
    mov ax, word [bp - 0x0002]       ; 0x9171
    add ax, strict word 0x12         ; 0x9174
    push ax                          ; 0x9177
    call ds_app_NGUR                 ; 0x9178
    add sp, byte 0x0e                ; 0x917b
    inc word [bp - 0x0002]           ; 0x917e
    mov ax, word [bp - 0x0002]       ; 0x9181
    cmp ax, strict word 7            ; 0x9184
    jl short @..api_idx_0044_NJQJ.l7 ; 0x9187
    mov ax, 0                        ; 0x9189
    push ax                          ; 0x918c
    push ax                          ; 0x918d
    push ax                          ; 0x918e
    push ax                          ; 0x918f
    push ax                          ; 0x9190
    mov ax, 0xffff                   ; 0x9191
    push ax                          ; 0x9194
    mov ax, 0x19                     ; 0x9195
    push ax                          ; 0x9198
    call ds_app_NGUR                 ; 0x9199
    add sp, byte 0x0e                ; 0x919c
    mov ax, word [bp - 0x000a]       ; 0x919f
    inc ax                           ; 0x91a2
    push ax                          ; 0x91a3
    mov ax, word [bp - 0x0008]       ; 0x91a4
    inc ax                           ; 0x91a7
    push ax                          ; 0x91a8
    mov ax, word [bp - 0x0006]       ; 0x91a9
    dec ax                           ; 0x91ac
    push ax                          ; 0x91ad
    mov ax, word [bp - 0x0004]       ; 0x91ae
    dec ax                           ; 0x91b1
    push ax                          ; 0x91b2
    call gfx_entry_16                ; 0x91b3
    add sp, byte 8                   ; 0x91b6
    mov word [bss_9124], 5           ; 0x91b9
    les bx, word [dseg_0002]         ; 0x91bf
    mov ax, word [es:bx]             ; 0x91c3
    mov dx, word [es:bx + 0x2]       ; 0x91c6
    mov word [bss_908c], dx          ; 0x91ca
    mov word [bss_908a], ax          ; 0x91ce
    mov word [bp - 0x001c], 1        ; 0x91d1
@..api_idx_0044_NJQJ.l8:
    push word [bp - 0x0042]          ; 0x91d6
    push word [bp + 0x4]             ; 0x91d9
    call loc_SRQQ                    ; 0x91dc
    add sp, byte 4                   ; 0x91df
    mov ax, 0x59fe                   ; 0x91e2
    push ax                          ; 0x91e5
    call ds_app_io_UHMG              ; 0x91e6
    pop cx                           ; 0x91e9
    dec ax                           ; 0x91ea
    mov word [bp - 0x001a], ax       ; 0x91eb
    cmp word [bss_59fc], byte 0      ; 0x91ee
    je short @..api_idx_0044_NJQJ.l12 ; 0x91f3
    mov ax, word [bp - 0x0022]       ; 0x91f5
    cmp ax, word [bp - 0x0018]       ; 0x91f8
    jl short @..api_idx_0044_NJQJ.l9 ; 0x91fb
    inc word [bp - 0x0022]           ; 0x91fd
@..api_idx_0044_NJQJ.l9:
    mov ax, word [bp - 0x0022]       ; 0x9200
    cmp ax, strict word 0xffff       ; 0x9203
    je short @..api_idx_0044_NJQJ.l10 ; 0x9206
    cmp ax, word [bp - 0x0018]       ; 0x9208
    jl short @..api_idx_0044_NJQJ.l10 ; 0x920b
    mov ax, word [bp - 0x0018]       ; 0x920d
    add ax, word [bp - 0x0020]       ; 0x9210
    mov cx, ax                       ; 0x9213
    dec ax                           ; 0x9215
    mov cx, ax                       ; 0x9216
    mov ax, word [bp - 0x0022]       ; 0x9218
    cmp cx, ax                       ; 0x921b
    jge short @..api_idx_0044_NJQJ.l11 ; 0x921d
@..api_idx_0044_NJQJ.l10:
    mov ax, word [bp - 0x0018]       ; 0x921f
    mov word [bp - 0x0022], ax       ; 0x9222
@..api_idx_0044_NJQJ.l11:
    mov word [bss_5b3e], 1           ; 0x9225
    mov ax, word [bp - 0x0022]       ; 0x922b
    sub ax, word [bp - 0x0018]       ; 0x922e
    add ax, strict word 0x12         ; 0x9231
    mov word [bp - 0x001a], ax       ; 0x9234
@..api_idx_0044_NJQJ.l12:
    cmp word [bss_5b3e], byte 1      ; 0x9237
    je short @..api_idx_0044_NJQJ.l13 ; 0x923c
    jmp near @..api_idx_0044_NJQJ.l50 ; 0x923e
@..api_idx_0044_NJQJ.l13:
    mov ax, word [bp - 0x001a]       ; 0x9241
    jmp near @..api_idx_0044_NJQJ.l48 ; 0x9244
jumptable_9967_case_0:
    lea ax, word [bp - 0x0010]       ; 0x9247
    push ax                          ; 0x924a
    lea ax, word [bp - 0x000e]       ; 0x924b
    push ax                          ; 0x924e
    call gfx_entry_23                ; 0x924f
    add sp, byte 4                   ; 0x9252
    mov ax, 4                        ; 0x9255
    push ax                          ; 0x9258
    mov ax, 0                        ; 0x9259
    push ax                          ; 0x925c
    mov ax, word [bp - 0x0010]       ; 0x925d
    mov cx, word [bp - 0x0006]       ; 0x9260
    add cx, word [bp - 0x0012]       ; 0x9263
    add cx, byte 0x2a                ; 0x9266
    sub ax, cx                       ; 0x9269
    push ax                          ; 0x926b
    call clamp                       ; 0x926c
    add sp, byte 6                   ; 0x926f
    mov word [bp - 0x0016], ax       ; 0x9272
@..api_idx_0044_NJQJ.l14:
    lea ax, word [bp - 0x0010]       ; 0x9275
    push ax                          ; 0x9278
    lea ax, word [bp - 0x000e]       ; 0x9279
    push ax                          ; 0x927c
    call gfx_entry_23                ; 0x927d
    add sp, byte 4                   ; 0x9280
    mov word [bp - 0x001e], ax       ; 0x9283
    push word [bp - 0x0014]          ; 0x9286
    mov ax, 0                        ; 0x9289
    push ax                          ; 0x928c
    mov ax, word [bp - 0x0010]       ; 0x928d
    mov cx, word [bp - 0x0006]       ; 0x9290
    add cx, byte 0x2a                ; 0x9293
    sub ax, cx                       ; 0x9296
    sub ax, word [bp - 0x0016]       ; 0x9298
    push ax                          ; 0x929b
    call clamp                       ; 0x929c
    add sp, byte 6                   ; 0x929f
    mov word [bp - 0x0012], ax       ; 0x92a2
    cmp word [bp - 0x0044], byte 7   ; 0x92a5
    jle short @..api_idx_0044_NJQJ.l15 ; 0x92a9
    mov cx, 0x64                     ; 0x92ab
    imul cx                          ; 0x92ae
    push ax                          ; 0x92b0
    mov ax, word [bp - 0x0014]       ; 0x92b1
    imul cx                          ; 0x92b4
    add ax, strict word 0x64         ; 0x92b6
    mov cx, word [bp - 0x0044]       ; 0x92b9
    add cx, byte 0xfa                ; 0x92bc
    cwd                              ; 0x92bf
    idiv cx                          ; 0x92c0
    mov cx, ax                       ; 0x92c2
    pop ax                           ; 0x92c4
    cwd                              ; 0x92c5
    idiv cx                          ; 0x92c6
    mov word [bp - 0x0018], ax       ; 0x92c8
@..api_idx_0044_NJQJ.l15:
    push word [bp - 0x0024]          ; 0x92cb
    push word [bp - 0x0022]          ; 0x92ce
    push word [bp - 0x0018]          ; 0x92d1
    mov ax, 7                        ; 0x92d4
    push ax                          ; 0x92d7
    mov ax, 0xf                      ; 0x92d8
    push ax                          ; 0x92db
    mov ax, word [bp - 0x0006]       ; 0x92dc
    add ax, strict word 0x22         ; 0x92df
    push ax                          ; 0x92e2
    mov ax, word [bp - 0x000c]       ; 0x92e3
    add ax, strict word 6            ; 0x92e6
    push ax                          ; 0x92e9
    call ds_app_HTKI                 ; 0x92ea
    add sp, byte 0x0e                ; 0x92ed
    push word [bp - 0x0012]          ; 0x92f0
    mov ax, 7                        ; 0x92f3
    push ax                          ; 0x92f6
    mov ax, 8                        ; 0x92f7
    push ax                          ; 0x92fa
    mov ax, word [bp - 0x0006]       ; 0x92fb
    add ax, strict word 0x22         ; 0x92fe
    push ax                          ; 0x9301
    mov ax, word [bp - 0x000c]       ; 0x9302
    add ax, strict word 0x6a         ; 0x9305
    push ax                          ; 0x9308
    call ds_app_JKST                 ; 0x9309
    add sp, byte 0x0a                ; 0x930c
    mov ax, 0                        ; 0x930f
    push ax                          ; 0x9312
    push ax                          ; 0x9313
    mov ax, word [bp - 0x0006]       ; 0x9314
    add ax, word [bp - 0x0012]       ; 0x9317
    add ax, strict word 0x2e         ; 0x931a
    push ax                          ; 0x931d
    mov ax, word [bp - 0x000c]       ; 0x931e
    add ax, strict word 0x72         ; 0x9321
    push ax                          ; 0x9324
    mov ax, word [bp - 0x0006]       ; 0x9325
    add ax, word [bp - 0x0012]       ; 0x9328
    add ax, strict word 0x2a         ; 0x932b
    push ax                          ; 0x932e
    mov ax, word [bp - 0x000c]       ; 0x932f
    add ax, strict word 0x6a         ; 0x9332
    push ax                          ; 0x9335
    mov ax, 0                        ; 0x9336
    push ax                          ; 0x9339
    call ds_app_NGUR                 ; 0x933a
    add sp, byte 0x0e                ; 0x933d
    mov ax, word [bp - 0x0006]       ; 0x9340
    add ax, strict word 0x4c         ; 0x9343
    push ax                          ; 0x9346
    mov ax, word [bp - 0x000c]       ; 0x9347
    add ax, strict word 0x72         ; 0x934a
    push ax                          ; 0x934d
    mov ax, word [bp - 0x0006]       ; 0x934e
    add ax, strict word 0x22         ; 0x9351
    push ax                          ; 0x9354
    mov ax, word [bp - 0x000c]       ; 0x9355
    add ax, strict word 6            ; 0x9358
    push ax                          ; 0x935b
    call gfx_entry_16                ; 0x935c
    add sp, byte 8                   ; 0x935f
    cmp word [bp - 0x001e], byte 0   ; 0x9362
    je short @..api_idx_0044_NJQJ.l16 ; 0x9366
    jmp near @..api_idx_0044_NJQJ.l14 ; 0x9368
@..api_idx_0044_NJQJ.l16:
    jmp near @..api_idx_0044_NJQJ.l50 ; 0x936b
jumptable_9967_case_1:
    cmp word [bp - 0x001a], byte 1   ; 0x936e
    jne short @..api_idx_0044_NJQJ.l18 ; 0x9372
    mov ax, 1                        ; 0x9374
    push ax                          ; 0x9377
    mov ax, word [bp - 0x0006]       ; 0x9378
    add ax, strict word 0x28         ; 0x937b
    push ax                          ; 0x937e
    mov ax, word [bp - 0x000c]       ; 0x937f
    add ax, strict word 0x72         ; 0x9382
    push ax                          ; 0x9385
    mov ax, word [bp - 0x0006]       ; 0x9386
    add ax, strict word 0x22         ; 0x9389
    push ax                          ; 0x938c
    mov ax, word [bp - 0x000c]       ; 0x938d
    add ax, strict word 0x6a         ; 0x9390
    push ax                          ; 0x9393
    call ds_app_QOOL                 ; 0x9394
    add sp, byte 0x0a                ; 0x9397
    cmp word [bp - 0x0018], byte 0   ; 0x939a
    jle short @..api_idx_0044_NJQJ.l17 ; 0x939e
    dec word [bp - 0x0018]           ; 0x93a0
@..api_idx_0044_NJQJ.l17:
    jmp short @..api_idx_0044_NJQJ.l19 ; 0x93a3
@..api_idx_0044_NJQJ.l18:
    mov ax, 1                        ; 0x93a5
    push ax                          ; 0x93a8
    mov ax, word [bp - 0x0006]       ; 0x93a9
    add ax, strict word 0x4c         ; 0x93ac
    push ax                          ; 0x93af
    mov ax, word [bp - 0x000c]       ; 0x93b0
    add ax, strict word 0x72         ; 0x93b3
    push ax                          ; 0x93b6
    mov ax, word [bp - 0x0006]       ; 0x93b7
    add ax, strict word 0x46         ; 0x93ba
    push ax                          ; 0x93bd
    mov ax, word [bp - 0x000c]       ; 0x93be
    add ax, strict word 0x6a         ; 0x93c1
    push ax                          ; 0x93c4
    call ds_app_QOOL                 ; 0x93c5
    add sp, byte 0x0a                ; 0x93c8
    mov ax, word [bp - 0x0044]       ; 0x93cb
    add ax, strict word 0xfff9       ; 0x93ce
    cmp ax, word [bp - 0x0018]       ; 0x93d1
    jle short @..api_idx_0044_NJQJ.l19 ; 0x93d4
    inc word [bp - 0x0018]           ; 0x93d6
@..api_idx_0044_NJQJ.l19:
    cmp word [bp - 0x0044], byte 7   ; 0x93d9
    jle short @..api_idx_0044_NJQJ.l20 ; 0x93dd
    push word [bp - 0x0014]          ; 0x93df
    mov ax, 0                        ; 0x93e2
    push ax                          ; 0x93e5
    mov ax, 0x64                     ; 0x93e6
    imul word [bp - 0x0014]          ; 0x93e9
    add ax, strict word 0x64         ; 0x93ec
    mov cx, word [bp - 0x0044]       ; 0x93ef
    add cx, byte 0xf9                ; 0x93f2
    cwd                              ; 0x93f5
    idiv cx                          ; 0x93f6
    imul word [bp - 0x0018]          ; 0x93f8
    mov cx, 0x64                     ; 0x93fb
    cwd                              ; 0x93fe
    idiv cx                          ; 0x93ff
    push ax                          ; 0x9401
    call clamp                       ; 0x9402
    add sp, byte 6                   ; 0x9405
    mov word [bp - 0x0012], ax       ; 0x9408
@..api_idx_0044_NJQJ.l20:
    push word [bp - 0x0024]          ; 0x940b
    push word [bp - 0x0022]          ; 0x940e
    push word [bp - 0x0018]          ; 0x9411
    mov ax, 7                        ; 0x9414
    push ax                          ; 0x9417
    mov ax, 0xf                      ; 0x9418
    push ax                          ; 0x941b
    mov ax, word [bp - 0x0006]       ; 0x941c
    add ax, strict word 0x22         ; 0x941f
    push ax                          ; 0x9422
    mov ax, word [bp - 0x000c]       ; 0x9423
    add ax, strict word 6            ; 0x9426
    push ax                          ; 0x9429
    call ds_app_HTKI                 ; 0x942a
    add sp, byte 0x0e                ; 0x942d
    push word [bp - 0x0012]          ; 0x9430
    mov ax, 7                        ; 0x9433
    push ax                          ; 0x9436
    mov ax, 8                        ; 0x9437
    push ax                          ; 0x943a
    mov ax, word [bp - 0x0006]       ; 0x943b
    add ax, strict word 0x22         ; 0x943e
    push ax                          ; 0x9441
    mov ax, word [bp - 0x000c]       ; 0x9442
    add ax, strict word 0x6a         ; 0x9445
    push ax                          ; 0x9448
    call ds_app_JKST                 ; 0x9449
    add sp, byte 0x0a                ; 0x944c
    mov ax, 0                        ; 0x944f
    push ax                          ; 0x9452
    push ax                          ; 0x9453
    mov ax, word [bp - 0x0006]       ; 0x9454
    add ax, word [bp - 0x0012]       ; 0x9457
    add ax, strict word 0x2e         ; 0x945a
    push ax                          ; 0x945d
    mov ax, word [bp - 0x000c]       ; 0x945e
    add ax, strict word 0x72         ; 0x9461
    push ax                          ; 0x9464
    mov ax, word [bp - 0x0006]       ; 0x9465
    add ax, word [bp - 0x0012]       ; 0x9468
    add ax, strict word 0x2a         ; 0x946b
    push ax                          ; 0x946e
    mov ax, word [bp - 0x000c]       ; 0x946f
    add ax, strict word 0x6a         ; 0x9472
    push ax                          ; 0x9475
    mov ax, 0                        ; 0x9476
    push ax                          ; 0x9479
    call ds_app_NGUR                 ; 0x947a
    add sp, byte 0x0e                ; 0x947d
    mov ax, word [bp - 0x0006]       ; 0x9480
    add ax, strict word 0x4c         ; 0x9483
    push ax                          ; 0x9486
    mov ax, word [bp - 0x000c]       ; 0x9487
    add ax, strict word 0x72         ; 0x948a
    push ax                          ; 0x948d
    mov ax, word [bp - 0x0006]       ; 0x948e
    add ax, strict word 0x22         ; 0x9491
    push ax                          ; 0x9494
    mov ax, word [bp - 0x000c]       ; 0x9495
    add ax, strict word 6            ; 0x9498
    push ax                          ; 0x949b
    call gfx_entry_16                ; 0x949c
    add sp, byte 8                   ; 0x949f
    jmp near @..api_idx_0044_NJQJ.l50 ; 0x94a2
jumptable_9967_case_3:
    cmp word [bp + 0x8], byte 0      ; 0x94a5
    jne short @..api_idx_0044_NJQJ.l21 ; 0x94a9
    jmp near @..api_idx_0044_NJQJ.l26 ; 0x94ab
@..api_idx_0044_NJQJ.l21:
    cmp word [bp - 0x003c], byte 0   ; 0x94ae
    jge short @..api_idx_0044_NJQJ.l22 ; 0x94b2
    jmp near @..api_idx_0044_NJQJ.l25 ; 0x94b4
@..api_idx_0044_NJQJ.l22:
    cmp word [bp + 0xa], byte 0      ; 0x94b7
    je short @..api_idx_0044_NJQJ.l24 ; 0x94bb
    mov ax, word [bp - 0x003e]       ; 0x94bd
    cmp ax, word [bp - 0x0040]       ; 0x94c0
    jle short @..api_idx_0044_NJQJ.l23 ; 0x94c3
    jmp near @..api_idx_0044_NJQJ.l25 ; 0x94c5
@..api_idx_0044_NJQJ.l23:
    mov ax, 6                        ; 0x94c8
    imul word [bp - 0x003c]          ; 0x94cb
    mov bx, ax                       ; 0x94ce
    mov al, byte [bx + 0x622]        ; 0x94d0
    sub ah, ah                       ; 0x94d4
    mov cx, word [bp - 0x003e]       ; 0x94d6
    inc cx                           ; 0x94d9
    imul cx                          ; 0x94da
    push ax                          ; 0x94dc
    mov ax, 0x248                    ; 0x94dd
    imul word [bp + 0x4]             ; 0x94e0
    mov cx, ax                       ; 0x94e3
    mov dx, word [bp - 0x0042]       ; 0x94e5
    shl dx, 1                        ; 0x94e8
    shl dx, 1                        ; 0x94ea
    add ax, dx                       ; 0x94ec
    mov bx, ax                       ; 0x94ee
    mov cx, word [bx + 0x5c1c]       ; 0x94f0
    pop ax                           ; 0x94f4
    cmp ax, cx                       ; 0x94f5
    jg short @..api_idx_0044_NJQJ.l25 ; 0x94f7
@..api_idx_0044_NJQJ.l24:
    mov ax, 1                        ; 0x94f9
    push ax                          ; 0x94fc
    push ax                          ; 0x94fd
    mov ax, 8                        ; 0x94fe
    push ax                          ; 0x9501
    mov ax, word [bp - 0x0006]       ; 0x9502
    add ax, strict word 6            ; 0x9505
    push ax                          ; 0x9508
    mov ax, word [bp - 0x000c]       ; 0x9509
    add ax, strict word 6            ; 0x950c
    push ax                          ; 0x950f
    call ds_app_VIGG                 ; 0x9510
    add sp, byte 0x0a                ; 0x9513
    mov ax, 0                        ; 0x9516
    push ax                          ; 0x9519
    mov ax, 1                        ; 0x951a
    push ax                          ; 0x951d
    mov ax, 8                        ; 0x951e
    push ax                          ; 0x9521
    mov ax, word [bp - 0x0006]       ; 0x9522
    add ax, strict word 6            ; 0x9525
    push ax                          ; 0x9528
    mov ax, word [bp - 0x000c]       ; 0x9529
    add ax, strict word 6            ; 0x952c
    push ax                          ; 0x952f
    call ds_app_VIGG                 ; 0x9530
    add sp, byte 0x0a                ; 0x9533
    mov word [bss_9050], 0           ; 0x9536
    mov word [bp - 0x001c], 0        ; 0x953c
@..api_idx_0044_NJQJ.l25:
    cmp word [bp - 0x001c], byte 0   ; 0x9541
    je short @..api_idx_0044_NJQJ.l26 ; 0x9545
    mov ax, 0                        ; 0x9547
    push ax                          ; 0x954a
    call ds_app_HKIJ                 ; 0x954b
    pop cx                           ; 0x954e
@..api_idx_0044_NJQJ.l26:
    jmp near @..api_idx_0044_NJQJ.l50 ; 0x954f
jumptable_9967_case_4:
    mov ax, 1                        ; 0x9552
    push ax                          ; 0x9555
    push ax                          ; 0x9556
    mov ax, 8                        ; 0x9557
    push ax                          ; 0x955a
    mov ax, word [bp - 0x0006]       ; 0x955b
    add ax, strict word 6            ; 0x955e
    push ax                          ; 0x9561
    mov ax, word [bp - 0x000c]       ; 0x9562
    add ax, strict word 0x42         ; 0x9565
    push ax                          ; 0x9568
    call ds_app_VIGG                 ; 0x9569
    add sp, byte 0x0a                ; 0x956c
    mov ax, 0                        ; 0x956f
    push ax                          ; 0x9572
    mov ax, 1                        ; 0x9573
    push ax                          ; 0x9576
    mov ax, 8                        ; 0x9577
    push ax                          ; 0x957a
    mov ax, word [bp - 0x0006]       ; 0x957b
    add ax, strict word 6            ; 0x957e
    push ax                          ; 0x9581
    mov ax, word [bp - 0x000c]       ; 0x9582
    add ax, strict word 0x42         ; 0x9585
    push ax                          ; 0x9588
    call ds_app_VIGG                 ; 0x9589
    add sp, byte 0x0a                ; 0x958c
    mov word [bss_9050], 1           ; 0x958f
    mov word [bp - 0x001c], 0        ; 0x9595
    jmp near @..api_idx_0044_NJQJ.l50 ; 0x959a
@..api_idx_0044_NJQJ.l27:
    cmp word [bp - 0x001a], byte 5   ; 0x959d
    jge short @..api_idx_0044_NJQJ.l28 ; 0x95a1
    jmp near @..api_idx_0044_NJQJ.l36 ; 0x95a3
@..api_idx_0044_NJQJ.l28:
    cmp word [bp - 0x001a], byte 0x0b ; 0x95a6
    jle short @..api_idx_0044_NJQJ.l29 ; 0x95aa
    jmp near @..api_idx_0044_NJQJ.l36 ; 0x95ac
@..api_idx_0044_NJQJ.l29:
    mov ax, 0                        ; 0x95af
    push ax                          ; 0x95b2
    push word [bp - 0x003e]          ; 0x95b3
    mov ax, word [bp - 0x0006]       ; 0x95b6
    add ax, strict word 0x14         ; 0x95b9
    push ax                          ; 0x95bc
    mov ax, word [bp - 0x000c]       ; 0x95bd
    add ax, strict word 0xc          ; 0x95c0
    push ax                          ; 0x95c3
    call loc_PTRP                    ; 0x95c4
    add sp, byte 8                   ; 0x95c7
    mov ax, word [bp - 0x001a]       ; 0x95ca
    add ax, strict word 0xfffb       ; 0x95cd
    mov word [bp - 0x003e], ax       ; 0x95d0
    mov ax, 1                        ; 0x95d3
    push ax                          ; 0x95d6
    push word [bp - 0x003e]          ; 0x95d7
    mov ax, word [bp - 0x0006]       ; 0x95da
    add ax, strict word 0x14         ; 0x95dd
    push ax                          ; 0x95e0
    mov ax, word [bp - 0x000c]       ; 0x95e1
    add ax, strict word 0xc          ; 0x95e4
    push ax                          ; 0x95e7
    call loc_PTRP                    ; 0x95e8
    add sp, byte 8                   ; 0x95eb
    cmp word [bp - 0x003c], byte 0   ; 0x95ee
    jge short @..api_idx_0044_NJQJ.l30 ; 0x95f2
    jmp near @..api_idx_0044_NJQJ.l34 ; 0x95f4
@..api_idx_0044_NJQJ.l30:
    mov ax, 6                        ; 0x95f7
    push ax                          ; 0x95fa
    mov ax, 0                        ; 0x95fb
    push ax                          ; 0x95fe
    mov ax, 0x248                    ; 0x95ff
    imul word [bp + 0x4]             ; 0x9602
    mov bx, ax                       ; 0x9605
    mov ax, word [bx + 0x5c18]       ; 0x9607
    push ax                          ; 0x960b
    mov ax, 6                        ; 0x960c
    imul word [bp - 0x003c]          ; 0x960f
    mov bx, ax                       ; 0x9612
    mov al, byte [bx + 0x621]        ; 0x9614
    sub ah, ah                       ; 0x9618
    mov cx, ax                       ; 0x961a
    pop ax                           ; 0x961c
    sub ax, cx                       ; 0x961d
    push ax                          ; 0x961f
    call clamp                       ; 0x9620
    add sp, byte 6                   ; 0x9623
    mov word [bp - 0x0040], ax       ; 0x9626
    mov ax, 6                        ; 0x9629
    imul word [bp - 0x003c]          ; 0x962c
    mov bx, ax                       ; 0x962f
    mov al, byte [bx + 0x622]        ; 0x9631
    sub ah, ah                       ; 0x9635
    mov cx, word [bp - 0x0040]       ; 0x9637
    inc cx                           ; 0x963a
    imul cx                          ; 0x963b
    mov word [bp - 0x0002], ax       ; 0x963d
    cmp word [bp + 0xa], byte 0      ; 0x9640
    jne short @..api_idx_0044_NJQJ.l31 ; 0x9644
    mov ax, 0x3e7                    ; 0x9646
    jmp short @..api_idx_0044_NJQJ.l33 ; 0x9649
@..api_idx_0044_NJQJ.l31:
    mov ax, 0x248                    ; 0x964b
    imul word [bp + 0x4]             ; 0x964e
    mov cx, word [bp - 0x0042]       ; 0x9651
    shl cx, 1                        ; 0x9654
    shl cx, 1                        ; 0x9656
    add ax, cx                       ; 0x9658
    mov bx, ax                       ; 0x965a
    mov ax, word [bx + 0x5c1c]       ; 0x965c
    cmp ax, word [bp - 0x0002]       ; 0x9660
    jge short @..api_idx_0044_NJQJ.l32 ; 0x9663
    jmp short @..api_idx_0044_NJQJ.l33 ; 0x9665
@..api_idx_0044_NJQJ.l32:
    mov ax, word [bp - 0x0002]       ; 0x9667
@..api_idx_0044_NJQJ.l33:
    push ax                          ; 0x966a
    mov ax, 6                        ; 0x966b
    imul word [bp - 0x003c]          ; 0x966e
    mov bx, ax                       ; 0x9671
    mov al, byte [bx + 0x622]        ; 0x9673
    sub ah, ah                       ; 0x9677
    mov cx, word [bp - 0x003e]       ; 0x9679
    inc cx                           ; 0x967c
    imul cx                          ; 0x967d
    push ax                          ; 0x967f
    push word [bp - 0x0042]          ; 0x9680
    mov ax, word [bp - 0x0006]       ; 0x9683
    add ax, strict word 0x15         ; 0x9686
    push ax                          ; 0x9689
    mov ax, word [bp - 0x000c]       ; 0x968a
    add ax, strict word 0x5e         ; 0x968d
    push ax                          ; 0x9690
    call loc_HOII                    ; 0x9691
    add sp, byte 0x0a                ; 0x9694
    jmp short @..api_idx_0044_NJQJ.l35 ; 0x9697
@..api_idx_0044_NJQJ.l34:
    mov ax, 0                        ; 0x9699
    push ax                          ; 0x969c
    push ax                          ; 0x969d
    push word [bp - 0x0042]          ; 0x969e
    mov ax, word [bp - 0x0006]       ; 0x96a1
    add ax, strict word 0x15         ; 0x96a4
    push ax                          ; 0x96a7
    mov ax, word [bp - 0x000c]       ; 0x96a8
    add ax, strict word 0x5e         ; 0x96ab
    push ax                          ; 0x96ae
    call loc_HOII                    ; 0x96af
    add sp, byte 0x0a                ; 0x96b2
@..api_idx_0044_NJQJ.l35:
    mov ax, word [bp - 0x0006]       ; 0x96b5
    add ax, strict word 0x1c         ; 0x96b8
    push ax                          ; 0x96bb
    mov ax, word [bp - 0x000c]       ; 0x96bc
    add ax, strict word 0x56         ; 0x96bf
    push ax                          ; 0x96c2
    mov ax, word [bp - 0x0006]       ; 0x96c3
    add ax, strict word 0x14         ; 0x96c6
    push ax                          ; 0x96c9
    mov ax, word [bp - 0x000c]       ; 0x96ca
    add ax, strict word 0xb          ; 0x96cd
    push ax                          ; 0x96d0
    call gfx_entry_16                ; 0x96d1
    add sp, byte 8                   ; 0x96d4
    mov ax, word [bp - 0x0006]       ; 0x96d7
    add ax, strict word 0x1b         ; 0x96da
    push ax                          ; 0x96dd
    mov ax, word [bp - 0x000c]       ; 0x96de
    add ax, strict word 0x72         ; 0x96e1
    push ax                          ; 0x96e4
    mov ax, word [bp - 0x0006]       ; 0x96e5
    add ax, strict word 0x15         ; 0x96e8
    push ax                          ; 0x96eb
    mov ax, word [bp - 0x000c]       ; 0x96ec
    add ax, strict word 0x5e         ; 0x96ef
    push ax                          ; 0x96f2
    call gfx_entry_16                ; 0x96f3
    add sp, byte 8                   ; 0x96f6
    jmp near @..api_idx_0044_NJQJ.l47 ; 0x96f9
@..api_idx_0044_NJQJ.l36:
    cmp word [bp - 0x001a], byte 0x0c ; 0x96fc
    jge short @..api_idx_0044_NJQJ.l37 ; 0x9700
    jmp near @..api_idx_0044_NJQJ.l41 ; 0x9702
@..api_idx_0044_NJQJ.l37:
    cmp word [bp - 0x001a], byte 0x11 ; 0x9705
    jle short @..api_idx_0044_NJQJ.l38 ; 0x9709
    jmp near @..api_idx_0044_NJQJ.l41 ; 0x970b
@..api_idx_0044_NJQJ.l38:
    mov ax, word [bp - 0x001a]       ; 0x970e
    add ax, strict word 0xfff4       ; 0x9711
    mov word [bp - 0x0042], ax       ; 0x9714
    mov word [bp - 0x003c], 0xffff   ; 0x9717
    push ax                          ; 0x971c
    push word [bp + 0x4]             ; 0x971d
    call api_idx_0004_JOHI           ; 0x9720
    add sp, byte 4                   ; 0x9723
    mov word [bp - 0x0044], ax       ; 0x9726
    mov ax, 7                        ; 0x9729
    cmp word [bp - 0x0044], byte 7   ; 0x972c
    jge short @..api_idx_0044_NJQJ.l39 ; 0x9730
    mov ax, word [bp - 0x0044]       ; 0x9732
@..api_idx_0044_NJQJ.l39:
    mov word [bp - 0x0024], ax       ; 0x9735
    mov ax, 7                        ; 0x9738
    cmp word [bp - 0x0044], byte 7   ; 0x973b
    jge short @..api_idx_0044_NJQJ.l40 ; 0x973f
    mov ax, word [bp - 0x0044]       ; 0x9741
@..api_idx_0044_NJQJ.l40:
    mov word [bp - 0x0020], ax       ; 0x9744
    mov word [bp - 0x0018], 0        ; 0x9747
    mov word [bp - 0x0022], 0xffff   ; 0x974c
    push word [bp - 0x0024]          ; 0x9751
    push word [bp - 0x0022]          ; 0x9754
    push word [bp - 0x0018]          ; 0x9757
    mov ax, 7                        ; 0x975a
    push ax                          ; 0x975d
    mov ax, 0xf                      ; 0x975e
    push ax                          ; 0x9761
    mov ax, word [bp - 0x0006]       ; 0x9762
    add ax, strict word 0x22         ; 0x9765
    push ax                          ; 0x9768
    mov ax, word [bp - 0x000c]       ; 0x9769
    add ax, strict word 6            ; 0x976c
    push ax                          ; 0x976f
    call ds_app_HTKI                 ; 0x9770
    add sp, byte 0x0e                ; 0x9773
    mov word [bp - 0x0012], 0        ; 0x9776
    push word [bp - 0x0012]          ; 0x977b
    mov ax, 7                        ; 0x977e
    push ax                          ; 0x9781
    mov ax, 8                        ; 0x9782
    push ax                          ; 0x9785
    mov ax, word [bp - 0x0006]       ; 0x9786
    add ax, strict word 0x22         ; 0x9789
    push ax                          ; 0x978c
    mov ax, word [bp - 0x000c]       ; 0x978d
    add ax, strict word 0x6a         ; 0x9790
    push ax                          ; 0x9793
    call ds_app_JKST                 ; 0x9794
    add sp, byte 0x0a                ; 0x9797
    mov ax, 0                        ; 0x979a
    push ax                          ; 0x979d
    push ax                          ; 0x979e
    mov ax, word [bp - 0x0006]       ; 0x979f
    add ax, word [bp - 0x0012]       ; 0x97a2
    add ax, strict word 0x2e         ; 0x97a5
    push ax                          ; 0x97a8
    mov ax, word [bp - 0x000c]       ; 0x97a9
    add ax, strict word 0x72         ; 0x97ac
    push ax                          ; 0x97af
    mov ax, word [bp - 0x0006]       ; 0x97b0
    add ax, word [bp - 0x0012]       ; 0x97b3
    add ax, strict word 0x2a         ; 0x97b6
    push ax                          ; 0x97b9
    mov ax, word [bp - 0x000c]       ; 0x97ba
    add ax, strict word 0x6a         ; 0x97bd
    push ax                          ; 0x97c0
    mov ax, 0                        ; 0x97c1
    push ax                          ; 0x97c4
    call ds_app_NGUR                 ; 0x97c5
    add sp, byte 0x0e                ; 0x97c8
    mov ax, 0                        ; 0x97cb
    push ax                          ; 0x97ce
    push ax                          ; 0x97cf
    push word [bp - 0x0042]          ; 0x97d0
    mov ax, word [bp - 0x0006]       ; 0x97d3
    add ax, strict word 0x15         ; 0x97d6
    push ax                          ; 0x97d9
    mov ax, word [bp - 0x000c]       ; 0x97da
    add ax, strict word 0x5e         ; 0x97dd
    push ax                          ; 0x97e0
    call loc_HOII                    ; 0x97e1
    add sp, byte 0x0a                ; 0x97e4
    mov ax, word [bp - 0x0006]       ; 0x97e7
    add ax, strict word 0x4c         ; 0x97ea
    push ax                          ; 0x97ed
    mov ax, word [bp - 0x000c]       ; 0x97ee
    add ax, strict word 0x72         ; 0x97f1
    push ax                          ; 0x97f4
    mov ax, word [bp - 0x0006]       ; 0x97f5
    add ax, strict word 0x22         ; 0x97f8
    push ax                          ; 0x97fb
    mov ax, word [bp - 0x000c]       ; 0x97fc
    add ax, strict word 6            ; 0x97ff
    push ax                          ; 0x9802
    call gfx_entry_16                ; 0x9803
    add sp, byte 8                   ; 0x9806
    mov ax, word [bp - 0x0006]       ; 0x9809
    add ax, strict word 0x1b         ; 0x980c
    push ax                          ; 0x980f
    mov ax, word [bp - 0x000c]       ; 0x9810
    add ax, strict word 0x72         ; 0x9813
    push ax                          ; 0x9816
    mov ax, word [bp - 0x0006]       ; 0x9817
    add ax, strict word 0x15         ; 0x981a
    push ax                          ; 0x981d
    mov ax, word [bp - 0x000c]       ; 0x981e
    add ax, strict word 0x5e         ; 0x9821
    push ax                          ; 0x9824
    call gfx_entry_16                ; 0x9825
    add sp, byte 8                   ; 0x9828
    jmp near @..api_idx_0044_NJQJ.l47 ; 0x982b
@..api_idx_0044_NJQJ.l41:
    cmp word [bp - 0x001a], byte 0x12 ; 0x982e
    jge short @..api_idx_0044_NJQJ.l42 ; 0x9832
    jmp near @..api_idx_0044_NJQJ.l47 ; 0x9834
@..api_idx_0044_NJQJ.l42:
    mov ax, word [bp - 0x0020]       ; 0x9837
    add ax, strict word 0x12         ; 0x983a
    cmp ax, word [bp - 0x001a]       ; 0x983d
    jg short @..api_idx_0044_NJQJ.l43 ; 0x9840
    jmp near @..api_idx_0044_NJQJ.l47 ; 0x9842
@..api_idx_0044_NJQJ.l43:
    mov ax, word [bp - 0x0018]       ; 0x9845
    add ax, word [bp - 0x001a]       ; 0x9848
    add ax, strict word 0xffee       ; 0x984b
    mov word [bp - 0x0022], ax       ; 0x984e
    shl ax, 1                        ; 0x9851
    mov bx, ax                       ; 0x9853
    mov ax, word [bx - 0x6996]       ; 0x9855
    mov word [bp - 0x003c], ax       ; 0x9859
    push word [bp - 0x0024]          ; 0x985c
    push word [bp - 0x0022]          ; 0x985f
    push word [bp - 0x0018]          ; 0x9862
    mov ax, 7                        ; 0x9865
    push ax                          ; 0x9868
    mov ax, 0xf                      ; 0x9869
    push ax                          ; 0x986c
    mov ax, word [bp - 0x0006]       ; 0x986d
    add ax, strict word 0x22         ; 0x9870
    push ax                          ; 0x9873
    mov ax, word [bp - 0x000c]       ; 0x9874
    add ax, strict word 6            ; 0x9877
    push ax                          ; 0x987a
    call ds_app_HTKI                 ; 0x987b
    add sp, byte 0x0e                ; 0x987e
    mov ax, 6                        ; 0x9881
    push ax                          ; 0x9884
    mov ax, 0                        ; 0x9885
    push ax                          ; 0x9888
    mov ax, 0x248                    ; 0x9889
    imul word [bp + 0x4]             ; 0x988c
    mov bx, ax                       ; 0x988f
    mov ax, word [bx + 0x5c18]       ; 0x9891
    push ax                          ; 0x9895
    mov ax, 6                        ; 0x9896
    imul word [bp - 0x003c]          ; 0x9899
    mov bx, ax                       ; 0x989c
    mov al, byte [bx + 0x621]        ; 0x989e
    sub ah, ah                       ; 0x98a2
    mov cx, ax                       ; 0x98a4
    pop ax                           ; 0x98a6
    sub ax, cx                       ; 0x98a7
    push ax                          ; 0x98a9
    call clamp                       ; 0x98aa
    add sp, byte 6                   ; 0x98ad
    mov word [bp - 0x0040], ax       ; 0x98b0
    mov ax, 6                        ; 0x98b3
    imul word [bp - 0x003c]          ; 0x98b6
    mov bx, ax                       ; 0x98b9
    mov al, byte [bx + 0x622]        ; 0x98bb
    sub ah, ah                       ; 0x98bf
    mov cx, word [bp - 0x0040]       ; 0x98c1
    inc cx                           ; 0x98c4
    imul cx                          ; 0x98c5
    mov word [bp - 0x0002], ax       ; 0x98c7
    cmp word [bp + 0xa], byte 0      ; 0x98ca
    jne short @..api_idx_0044_NJQJ.l44 ; 0x98ce
    mov ax, 0x3e7                    ; 0x98d0
    jmp short @..api_idx_0044_NJQJ.l46 ; 0x98d3
@..api_idx_0044_NJQJ.l44:
    mov ax, 0x248                    ; 0x98d5
    imul word [bp + 0x4]             ; 0x98d8
    mov cx, word [bp - 0x0042]       ; 0x98db
    shl cx, 1                        ; 0x98de
    shl cx, 1                        ; 0x98e0
    add ax, cx                       ; 0x98e2
    mov bx, ax                       ; 0x98e4
    mov ax, word [bx + 0x5c1c]       ; 0x98e6
    cmp ax, word [bp - 0x0002]       ; 0x98ea
    jge short @..api_idx_0044_NJQJ.l45 ; 0x98ed
    jmp short @..api_idx_0044_NJQJ.l46 ; 0x98ef
@..api_idx_0044_NJQJ.l45:
    mov ax, word [bp - 0x0002]       ; 0x98f1
@..api_idx_0044_NJQJ.l46:
    push ax                          ; 0x98f4
    mov ax, 6                        ; 0x98f5
    imul word [bp - 0x003c]          ; 0x98f8
    mov bx, ax                       ; 0x98fb
    mov al, byte [bx + 0x622]        ; 0x98fd
    sub ah, ah                       ; 0x9901
    mov cx, word [bp - 0x003e]       ; 0x9903
    inc cx                           ; 0x9906
    imul cx                          ; 0x9907
    push ax                          ; 0x9909
    push word [bp - 0x0042]          ; 0x990a
    mov ax, word [bp - 0x0006]       ; 0x990d
    add ax, strict word 0x15         ; 0x9910
    push ax                          ; 0x9913
    mov ax, word [bp - 0x000c]       ; 0x9914
    add ax, strict word 0x5e         ; 0x9917
    push ax                          ; 0x991a
    call loc_HOII                    ; 0x991b
    add sp, byte 0x0a                ; 0x991e
    mov ax, word [bp - 0x0006]       ; 0x9921
    add ax, strict word 0x4c         ; 0x9924
    push ax                          ; 0x9927
    mov ax, word [bp - 0x000c]       ; 0x9928
    add ax, strict word 0x72         ; 0x992b
    push ax                          ; 0x992e
    mov ax, word [bp - 0x0006]       ; 0x992f
    add ax, strict word 0x22         ; 0x9932
    push ax                          ; 0x9935
    mov ax, word [bp - 0x000c]       ; 0x9936
    add ax, strict word 6            ; 0x9939
    push ax                          ; 0x993c
    call gfx_entry_16                ; 0x993d
    add sp, byte 8                   ; 0x9940
    mov ax, word [bp - 0x0006]       ; 0x9943
    add ax, strict word 0x1b         ; 0x9946
    push ax                          ; 0x9949
    mov ax, word [bp - 0x000c]       ; 0x994a
    add ax, strict word 0x72         ; 0x994d
    push ax                          ; 0x9950
    mov ax, word [bp - 0x0006]       ; 0x9951
    add ax, strict word 0x15         ; 0x9954
    push ax                          ; 0x9957
    mov ax, word [bp - 0x000c]       ; 0x9958
    add ax, strict word 0x5e         ; 0x995b
    push ax                          ; 0x995e
    call gfx_entry_16                ; 0x995f
    add sp, byte 8                   ; 0x9962
@..api_idx_0044_NJQJ.l47:
    jmp short @..api_idx_0044_NJQJ.l50 ; 0x9965
jumptable_9967:
    dw jumptable_9967_case_0 - IMAGE_BASE + __zres_end ; 0x9967
    dw jumptable_9967_case_1 - IMAGE_BASE + __zres_end ; 0x9969
    dw jumptable_9967_case_1 - IMAGE_BASE + __zres_end ; 0x996b
    dw jumptable_9967_case_3 - IMAGE_BASE + __zres_end ; 0x996d
    dw jumptable_9967_case_4 - IMAGE_BASE + __zres_end ; 0x996f
@..api_idx_0044_NJQJ.l48:
    cmp ax, strict word 5            ; 0x9971
    jae short @..api_idx_0044_NJQJ.l49 ; 0x9974
    xchg bx, ax                      ; 0x9976
    shl bx, 1                        ; 0x9977
    jmp [cs:bx + jumptable_9967 - IMAGE_BASE + __zres_end] ; 0x9979
@..api_idx_0044_NJQJ.l49:
    jmp near @..api_idx_0044_NJQJ.l27 ; 0x997e
@..api_idx_0044_NJQJ.l50:
    cmp word [bp - 0x001c], byte 0   ; 0x9981
    je short @..api_idx_0044_NJQJ.l51 ; 0x9985
    jmp near @..api_idx_0044_NJQJ.l8 ; 0x9987
@..api_idx_0044_NJQJ.l51:
    mov ax, 1                        ; 0x998a
    push ax                          ; 0x998d
    push word [bp - 0x003a]          ; 0x998e
    call ds_app_file_HMNO            ; 0x9991
    add sp, byte 4                   ; 0x9994
    mov ax, word [bp - 0x000a]       ; 0x9997
    inc ax                           ; 0x999a
    push ax                          ; 0x999b
    mov ax, word [bp - 0x0008]       ; 0x999c
    inc ax                           ; 0x999f
    push ax                          ; 0x99a0
    mov ax, word [bp - 0x0006]       ; 0x99a1
    dec ax                           ; 0x99a4
    push ax                          ; 0x99a5
    mov ax, word [bp - 0x0004]       ; 0x99a6
    dec ax                           ; 0x99a9
    push ax                          ; 0x99aa
    call gfx_entry_16                ; 0x99ab
    add sp, byte 8                   ; 0x99ae
    mov ax, word [bp - 0x003e]       ; 0x99b1
    xchg al, ah                      ; 0x99b4
    sub al, al                       ; 0x99b6
    add ax, word [bp - 0x003c]       ; 0x99b8
    add ax, 0x100                    ; 0x99bb
    mov word [bss_904e], ax          ; 0x99be
    mov ax, word [bss_9050]          ; 0x99c1
    ret                              ; 0x99c4
