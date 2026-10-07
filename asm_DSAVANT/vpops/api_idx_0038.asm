api_idx_0038:
    mov ax, 0xffc8                   ; 0x2c92
    call ds_dispatch_f40b            ; 0x2c95
    mov word [data_904e], 0xffff     ; 0x2c98
    mov word [bp - 0x0004], 0x37     ; 0x2c9e
    mov word [bp - 0x0006], 0x8f     ; 0x2ca3
    mov word [bp - 0x0008], 0x108    ; 0x2ca8
    mov word [bp - 0x000a], 0xc5     ; 0x2cad
    mov word [bp - 0x0012], 0x16     ; 0x2cb2
    mov ax, 3                        ; 0x2cb7
    cmp word [bp + 0xc], byte 3      ; 0x2cba
    jge short @..api_idx_0038.l1     ; 0x2cbe
    mov ax, word [bp + 0xc]          ; 0x2cc0
@..api_idx_0038.l1:
    mov word [bp - 0x0022], ax       ; 0x2cc3
    mov ax, 0x90c5                   ; 0x2cc6
    push ax                          ; 0x2cc9
    mov ax, word [bp - 0x000a]       ; 0x2cca
    inc ax                           ; 0x2ccd
    push ax                          ; 0x2cce
    mov ax, word [bp - 0x0008]       ; 0x2ccf
    inc ax                           ; 0x2cd2
    push ax                          ; 0x2cd3
    mov ax, word [bp - 0x0006]       ; 0x2cd4
    dec ax                           ; 0x2cd7
    push ax                          ; 0x2cd8
    mov ax, word [bp - 0x0004]       ; 0x2cd9
    dec ax                           ; 0x2cdc
    push ax                          ; 0x2cdd
    call ds_dispatch_c283            ; 0x2cde
    add sp, byte 0x0a                ; 0x2ce1
    mov word [bp - 0x0038], ax       ; 0x2ce4
    push word [bp - 0x000a]          ; 0x2ce7
    push word [bp - 0x0008]          ; 0x2cea
    push word [bp - 0x0006]          ; 0x2ced
    push word [bp - 0x0004]          ; 0x2cf0
    call ds_dispatch_bc9a            ; 0x2cf3
    add sp, byte 8                   ; 0x2cf6
    cmp word [bp + 0x6], byte 0      ; 0x2cf9
    je short @..api_idx_0038.l2      ; 0x2cfd
    lea ax, word [bp - 0x0036]       ; 0x2cff
    push ax                          ; 0x2d02
    push word [bp + 0x4]             ; 0x2d03
    call ds_dispatch_b53b            ; 0x2d06
    add sp, byte 4                   ; 0x2d09
    jmp short @..api_idx_0038.l3     ; 0x2d0c
@..api_idx_0038.l2:
    push word [bp + 0xe]             ; 0x2d0e
    lea ax, word [bp - 0x0036]       ; 0x2d11
    push ax                          ; 0x2d14
    call ds_dispatch_f364            ; 0x2d15
    add sp, byte 4                   ; 0x2d18
@..api_idx_0038.l3:
    lea ax, word [bp - 0x0036]       ; 0x2d1b
    push ax                          ; 0x2d1e
    push word [bp + 0x6]             ; 0x2d1f
    mov ax, 1                        ; 0x2d22
    push ax                          ; 0x2d25
    mov ax, 0xc                      ; 0x2d26
    push ax                          ; 0x2d29
    mov ax, word [bp - 0x0006]       ; 0x2d2a
    add ax, strict word 7            ; 0x2d2d
    push ax                          ; 0x2d30
    mov ax, word [bp - 0x0004]       ; 0x2d31
    add ax, strict word 8            ; 0x2d34
    push ax                          ; 0x2d37
    call ds_dispatch_c0c1            ; 0x2d38
    add sp, byte 0x0c                ; 0x2d3b
    lea ax, word [bp - 0x0036]       ; 0x2d3e
    push ax                          ; 0x2d41
    mov ax, word [bp + 0x4]          ; 0x2d42
    inc ax                           ; 0x2d45
    push ax                          ; 0x2d46
    call ds_dispatch_b53b            ; 0x2d47
    add sp, byte 4                   ; 0x2d4a
    lea ax, word [bp - 0x0036]       ; 0x2d4d
    push ax                          ; 0x2d50
    push word [bp + 0x8]             ; 0x2d51
    mov ax, 1                        ; 0x2d54
    push ax                          ; 0x2d57
    mov ax, 0xc                      ; 0x2d58
    push ax                          ; 0x2d5b
    mov ax, word [bp - 0x0006]       ; 0x2d5c
    add ax, strict word 0x17         ; 0x2d5f
    push ax                          ; 0x2d62
    mov ax, word [bp - 0x0004]       ; 0x2d63
    add ax, strict word 8            ; 0x2d66
    push ax                          ; 0x2d69
    call ds_dispatch_c0c1            ; 0x2d6a
    add sp, byte 0x0c                ; 0x2d6d
    lea ax, word [bp - 0x0036]       ; 0x2d70
    push ax                          ; 0x2d73
    mov ax, word [bp + 0x4]          ; 0x2d74
    inc ax                           ; 0x2d77
    inc ax                           ; 0x2d78
    push ax                          ; 0x2d79
    call ds_dispatch_b53b            ; 0x2d7a
    add sp, byte 4                   ; 0x2d7d
    lea ax, word [bp - 0x0036]       ; 0x2d80
    push ax                          ; 0x2d83
    push word [bp + 0xa]             ; 0x2d84
    mov ax, 1                        ; 0x2d87
    push ax                          ; 0x2d8a
    mov ax, 0xc                      ; 0x2d8b
    push ax                          ; 0x2d8e
    mov ax, word [bp - 0x0006]       ; 0x2d8f
    add ax, strict word 0x27         ; 0x2d92
    push ax                          ; 0x2d95
    mov ax, word [bp - 0x0004]       ; 0x2d96
    add ax, strict word 8            ; 0x2d99
    push ax                          ; 0x2d9c
    call ds_dispatch_c0c1            ; 0x2d9d
    add sp, byte 0x0c                ; 0x2da0
    mov word [bp - 0x0016], 0        ; 0x2da3
    mov word [bp - 0x0020], 0xffff   ; 0x2da8
    push word [bp - 0x0022]          ; 0x2dad
    push word [bp - 0x0020]          ; 0x2db0
    push word [bp - 0x0016]          ; 0x2db3
    mov ax, 7                        ; 0x2db6
    push ax                          ; 0x2db9
    mov ax, 0xf                      ; 0x2dba
    push ax                          ; 0x2dbd
    mov ax, word [bp - 0x0006]       ; 0x2dbe
    add ax, strict word 6            ; 0x2dc1
    push ax                          ; 0x2dc4
    mov ax, word [bp - 0x0004]       ; 0x2dc5
    add ax, strict word 0x5d         ; 0x2dc8
    push ax                          ; 0x2dcb
    call math_loc_2c51               ; 0x2dcc
    add sp, byte 0x0e                ; 0x2dcf
    mov word [bp - 0x0010], 0        ; 0x2dd2
    push word [bp - 0x0010]          ; 0x2dd7
    mov ax, 7                        ; 0x2dda
    push ax                          ; 0x2ddd
    mov ax, 8                        ; 0x2dde
    push ax                          ; 0x2de1
    mov ax, word [bp - 0x0006]       ; 0x2de2
    add ax, strict word 6            ; 0x2de5
    push ax                          ; 0x2de8
    mov ax, word [bp - 0x0004]       ; 0x2de9
    add ax, 0xc1                     ; 0x2dec
    push ax                          ; 0x2def
    call ds_dispatch_bfd8            ; 0x2df0
    add sp, byte 0x0a                ; 0x2df3
    mov ax, 0                        ; 0x2df6
    push ax                          ; 0x2df9
    push ax                          ; 0x2dfa
    mov ax, word [bp - 0x0006]       ; 0x2dfb
    add ax, word [bp - 0x0010]       ; 0x2dfe
    add ax, strict word 0x12         ; 0x2e01
    push ax                          ; 0x2e04
    mov ax, word [bp - 0x0004]       ; 0x2e05
    add ax, 0xc9                     ; 0x2e08
    push ax                          ; 0x2e0b
    mov ax, word [bp - 0x0006]       ; 0x2e0c
    add ax, word [bp - 0x0010]       ; 0x2e0f
    add ax, strict word 0xe          ; 0x2e12
    push ax                          ; 0x2e15
    mov ax, word [bp - 0x0004]       ; 0x2e16
    add ax, 0xc1                     ; 0x2e19
    push ax                          ; 0x2e1c
    mov ax, 0                        ; 0x2e1d
    push ax                          ; 0x2e20
    call ds_dispatch_baa6            ; 0x2e21
    add sp, byte 0x0e                ; 0x2e24
    mov ax, 0                        ; 0x2e27
    push ax                          ; 0x2e2a
    mov ax, 9                        ; 0x2e2b
    push ax                          ; 0x2e2e
    mov ax, word [bp - 0x0006]       ; 0x2e2f
    add ax, strict word 0xc          ; 0x2e32
    push ax                          ; 0x2e35
    mov ax, word [bp - 0x0004]       ; 0x2e36
    add ax, 0xc9                     ; 0x2e39
    push ax                          ; 0x2e3c
    mov ax, word [bp - 0x0006]       ; 0x2e3d
    add ax, strict word 6            ; 0x2e40
    push ax                          ; 0x2e43
    mov ax, word [bp - 0x0004]       ; 0x2e44
    add ax, 0xc1                     ; 0x2e47
    push ax                          ; 0x2e4a
    mov ax, 1                        ; 0x2e4b
    push ax                          ; 0x2e4e
    call ds_dispatch_baa6            ; 0x2e4f
    add sp, byte 0x0e                ; 0x2e52
    mov ax, 0                        ; 0x2e55
    push ax                          ; 0x2e58
    mov ax, 0xb                      ; 0x2e59
    push ax                          ; 0x2e5c
    mov ax, word [bp - 0x0006]       ; 0x2e5d
    add ax, strict word 0x30         ; 0x2e60
    push ax                          ; 0x2e63
    mov ax, word [bp - 0x0004]       ; 0x2e64
    add ax, 0xc9                     ; 0x2e67
    push ax                          ; 0x2e6a
    mov ax, word [bp - 0x0006]       ; 0x2e6b
    add ax, strict word 0x2a         ; 0x2e6e
    push ax                          ; 0x2e71
    mov ax, word [bp - 0x0004]       ; 0x2e72
    add ax, 0xc1                     ; 0x2e75
    push ax                          ; 0x2e78
    mov ax, data_0002                ; 0x2e79
    push ax                          ; 0x2e7c
    call ds_dispatch_baa6            ; 0x2e7d
    add sp, byte 0x0e                ; 0x2e80
    mov ax, 0                        ; 0x2e83
    push ax                          ; 0x2e86
    push ax                          ; 0x2e87
    mov ax, word [bp - 0x0006]       ; 0x2e88
    add ax, strict word 0xf          ; 0x2e8b
    push ax                          ; 0x2e8e
    mov ax, word [bp - 0x0004]       ; 0x2e8f
