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
    mov word [data_904e], 0xffff     ; 0x2cb7
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
    mov ax, data_0002                ; 0x2dbf
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
    call math_loc_2a2d               ; 0x2dff
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
