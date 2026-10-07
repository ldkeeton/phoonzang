api_idx_0044:
    mov ax, 0xffbc                   ; 0x8d1e
    call ds_dispatch_f40b            ; 0x8d21
    mov word [bp - 0x0002], 0        ; 0x8d24
@..api_idx_0044.l1:
    mov ax, word [bp - 0x0002]       ; 0x8d29
    shl ax, 1                        ; 0x8d2c
    mov bx, ax                       ; 0x8d2e
    mov word [bx - 0x7cf2], 0        ; 0x8d30
    inc word [bp - 0x0002]           ; 0x8d36
    mov ax, word [bp - 0x0002]       ; 0x8d39
    cmp ax, strict word 6            ; 0x8d3c
    jl short @..api_idx_0044.l1      ; 0x8d3f
    mov word [data_904e], 0xffff     ; 0x8d41
    mov word [bp - 0x0004], 0x32     ; 0x8d47
    mov word [bp - 0x0006], 0x73     ; 0x8d4c
    mov word [bp - 0x0008], 0x10d    ; 0x8d51
    mov word [bp - 0x000a], 0xc5     ; 0x8d56
    mov word [bp - 0x000c], 0x95     ; 0x8d5b
    mov word [bp - 0x0014], 0x16     ; 0x8d60
    mov ax, 0x9104                   ; 0x8d65
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
    call ds_dispatch_c283            ; 0x8d7d
    add sp, byte 0x0a                ; 0x8d80
    mov word [bp - 0x003a], ax       ; 0x8d83
    push word [bp - 0x000a]          ; 0x8d86
    push word [bp - 0x0008]          ; 0x8d89
    push word [bp - 0x0006]          ; 0x8d8c
    push word [bp - 0x0004]          ; 0x8d8f
    call ds_dispatch_bc9a            ; 0x8d92
    add sp, byte 8                   ; 0x8d95
    push word [bp - 0x000a]          ; 0x8d98
    push word [bp - 0x0008]          ; 0x8d9b
    push word [bp - 0x0006]          ; 0x8d9e
    mov ax, 0x95                     ; 0x8da1
    push ax                          ; 0x8da4
    call ds_dispatch_bc9a            ; 0x8da5
    add sp, byte 8                   ; 0x8da8
    call api_idx_000a_3              ; 0x8dab
    push word [bp + 0x4]             ; 0x8dae
    call api_idx_000c_2              ; 0x8db1
    pop cx                           ; 0x8db4
    mov ax, 1                        ; 0x8db5
    push ax                          ; 0x8db8
    mov ax, 0x73                     ; 0x8db9
    push ax                          ; 0x8dbc
    mov ax, 0x32                     ; 0x8dbd
    push ax                          ; 0x8dc0
    call api_idx_000c                ; 0x8dc1
    add sp, byte 6                   ; 0x8dc4
    lea ax, word [bp - 0x0038]       ; 0x8dc7
    push ax                          ; 0x8dca
    push word [bp + 0x6]             ; 0x8dcb
    call ds_dispatch_b53b            ; 0x8dce
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
    call ds_dispatch_c0c1            ; 0x8df1
    add sp, byte 0x0c                ; 0x8df4
    lea ax, word [bp - 0x0038]       ; 0x8df7
    push ax                          ; 0x8dfa
    mov ax, word [bp + 0x6]          ; 0x8dfb
    inc ax                           ; 0x8dfe
    push ax                          ; 0x8dff
    call ds_dispatch_b53b            ; 0x8e00
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
    call ds_dispatch_c0c1            ; 0x8e21
    add sp, byte 0x0c                ; 0x8e24
    mov ax, word [bp - 0x0006]       ; 0x8e27
    add ax, strict word 0x14         ; 0x8e2a
    push ax                          ; 0x8e2d
    mov ax, word [bp - 0x000c]       ; 0x8e2e
    add ax, strict word 0x48         ; 0x8e31
    push ax                          ; 0x8e34
    call ds_dispatch_e809            ; 0x8e35
    add sp, byte 4                   ; 0x8e38
    mov ax, 0                        ; 0x8e3b
    push ax                          ; 0x8e3e
    mov ax, 0xcd                     ; 0x8e3f
    push ax                          ; 0x8e42
    call ds_dispatch_e823            ; 0x8e43
    add sp, byte 4                   ; 0x8e46
    mov ax, data_0002                ; 0x8e49
    push ax                          ; 0x8e4c
    mov ax, 0xa                      ; 0x8e4d
    push ax                          ; 0x8e50
    call ds_dispatch_e830            ; 0x8e51
    add sp, byte 4                   ; 0x8e54
    mov word [bp - 0x003c], 0xffff   ; 0x8e57
    mov word [bp - 0x003e], 0        ; 0x8e5c
    mov word [bp - 0x0040], 0        ; 0x8e61
    mov word [bp - 0x0002], 0        ; 0x8e66
@..api_idx_0044.l2:
    mov ax, 0                        ; 0x8e6b
    mov cx, word [bp - 0x0002]       ; 0x8e6e
    cmp cx, word [bp - 0x003e]       ; 0x8e71
    jne short @..api_idx_0044.l3     ; 0x8e74
    mov ax, 1                        ; 0x8e76
@..api_idx_0044.l3:
    push ax                          ; 0x8e79
    push cx                          ; 0x8e7a
    mov ax, word [bp - 0x0006]       ; 0x8e7b
    add ax, strict word 0x14         ; 0x8e7e
    push ax                          ; 0x8e81
    mov ax, word [bp - 0x000c]       ; 0x8e82
    add ax, strict word 0xc          ; 0x8e85
    push ax                          ; 0x8e88
    call math_loc_8ac7               ; 0x8e89
    add sp, byte 8                   ; 0x8e8c
    inc word [bp - 0x0002]           ; 0x8e8f
    mov ax, word [bp - 0x0002]       ; 0x8e92
    cmp ax, strict word 7            ; 0x8e95
    jl short @..api_idx_0044.l2      ; 0x8e98
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
    call loc_8b53                    ; 0x8eb5
    add sp, byte 0x0a                ; 0x8eb8
    push word [bp - 0x0042]          ; 0x8ebb
    push word [bp + 0x4]             ; 0x8ebe
    call api_idx_0004_13             ; 0x8ec1
    add sp, byte 4                   ; 0x8ec4
    mov word [bp - 0x0044], ax       ; 0x8ec7
    mov ax, 7                        ; 0x8eca
    cmp word [bp - 0x0044], byte 7   ; 0x8ecd
    jge short @..api_idx_0044.l4     ; 0x8ed1
    mov ax, word [bp - 0x0044]       ; 0x8ed3
@..api_idx_0044.l4:
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
    call ds_dispatch_bf97            ; 0x8f00
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
