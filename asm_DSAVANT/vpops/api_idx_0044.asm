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
    call math_loc_1a4b               ; 0x1e0d
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
