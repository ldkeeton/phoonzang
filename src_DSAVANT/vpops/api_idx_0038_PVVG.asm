; auto-generated
api_idx_0038_PVVG:
    mov ax, 0xffc8                   ; 0x2c92
    call aztec_csav                  ; 0x2c95
    mov word [spell_dialog_result], 0xffff ; 0x2c98
    mov word [bp - 4], 0x37          ; 0x2c9e
    mov word [bp - 6], 0x8f          ; 0x2ca3
    mov word [bp - 8], 0x108         ; 0x2ca8
    mov word [bp - 0xa], 0xc5        ; 0x2cad
    mov word [bp - 0x12], 0x16       ; 0x2cb2
    mov ax, 3                        ; 0x2cb7
    cmp word [bp + 0xc], byte 3      ; 0x2cba
    jge short .forward1              ; 0x2cbe
    mov ax, word [bp + 0xc]          ; 0x2cc0
.forward1:
    mov word [bp - 0x22], ax         ; 0x2cc3
    mov ax, dseg_90c5                ; 0x2cc6
    push ax                          ; 0x2cc9
    mov ax, word [bp - 0xa]          ; 0x2cca
    inc ax                           ; 0x2ccd
    push ax                          ; 0x2cce
    mov ax, word [bp - 8]            ; 0x2ccf
    inc ax                           ; 0x2cd2
    push ax                          ; 0x2cd3
    mov ax, word [bp - 6]            ; 0x2cd4
    dec ax                           ; 0x2cd7
    push ax                          ; 0x2cd8
    mov ax, word [bp - 4]            ; 0x2cd9
    dec ax                           ; 0x2cdc
    push ax                          ; 0x2cdd
    call save_screen_area            ; 0x2cde
    add sp, byte 0xa                 ; 0x2ce1
    mov word [bp - 0x38], ax         ; 0x2ce4
    push word [bp - 0xa]             ; 0x2ce7
    push word [bp - 8]               ; 0x2cea
    push word [bp - 6]               ; 0x2ced
    push word [bp - 4]               ; 0x2cf0
    call draw_dialog_box             ; 0x2cf3
    add sp, byte 8                   ; 0x2cf6
    cmp word [bp + 6], byte 0        ; 0x2cf9
    je short .forward2               ; 0x2cfd
    lea ax, word [bp - 0x36]         ; 0x2cff
    push ax                          ; 0x2d02
    push word [bp + 4]               ; 0x2d03
    call load_message_string         ; 0x2d06
    add sp, byte 4                   ; 0x2d09
    jmp short .forward3              ; 0x2d0c
.forward2:
    push word [bp + 0xe]             ; 0x2d0e
    lea ax, word [bp - 0x36]         ; 0x2d11
    push ax                          ; 0x2d14
    call aztec_strcpy                ; 0x2d15
    add sp, byte 4                   ; 0x2d18
.forward3:
    lea ax, word [bp - 0x36]         ; 0x2d1b
    push ax                          ; 0x2d1e
    push word [bp + 6]               ; 0x2d1f
    mov ax, 1                        ; 0x2d22
    push ax                          ; 0x2d25
    mov ax, 0xc                      ; 0x2d26
    push ax                          ; 0x2d29
    mov ax, word [bp - 6]            ; 0x2d2a
    add ax, strict word 7            ; 0x2d2d
    push ax                          ; 0x2d30
    mov ax, word [bp - 4]            ; 0x2d31
    add ax, strict word 8            ; 0x2d34
    push ax                          ; 0x2d37
    call draw_button                 ; 0x2d38
    add sp, byte 0xc                 ; 0x2d3b
    lea ax, word [bp - 0x36]         ; 0x2d3e
    push ax                          ; 0x2d41
    mov ax, word [bp + 4]            ; 0x2d42
    inc ax                           ; 0x2d45
    push ax                          ; 0x2d46
    call load_message_string         ; 0x2d47
    add sp, byte 4                   ; 0x2d4a
    lea ax, word [bp - 0x36]         ; 0x2d4d
    push ax                          ; 0x2d50
    push word [bp + 8]               ; 0x2d51
    mov ax, 1                        ; 0x2d54
    push ax                          ; 0x2d57
    mov ax, 0xc                      ; 0x2d58
    push ax                          ; 0x2d5b
    mov ax, word [bp - 6]            ; 0x2d5c
    add ax, strict word 0x17         ; 0x2d5f
    push ax                          ; 0x2d62
    mov ax, word [bp - 4]            ; 0x2d63
    add ax, strict word 8            ; 0x2d66
    push ax                          ; 0x2d69
    call draw_button                 ; 0x2d6a
    add sp, byte 0xc                 ; 0x2d6d
    lea ax, word [bp - 0x36]         ; 0x2d70
    push ax                          ; 0x2d73
    mov ax, word [bp + 4]            ; 0x2d74
    inc ax                           ; 0x2d77
    inc ax                           ; 0x2d78
    push ax                          ; 0x2d79
    call load_message_string         ; 0x2d7a
    add sp, byte 4                   ; 0x2d7d
    lea ax, word [bp - 0x36]         ; 0x2d80
    push ax                          ; 0x2d83
    push word [bp + 0xa]             ; 0x2d84
    mov ax, 1                        ; 0x2d87
    push ax                          ; 0x2d8a
    mov ax, 0xc                      ; 0x2d8b
    push ax                          ; 0x2d8e
    mov ax, word [bp - 6]            ; 0x2d8f
    add ax, strict word 0x27         ; 0x2d92
    push ax                          ; 0x2d95
    mov ax, word [bp - 4]            ; 0x2d96
    add ax, strict word 8            ; 0x2d99
    push ax                          ; 0x2d9c
    call draw_button                 ; 0x2d9d
    add sp, byte 0xc                 ; 0x2da0
    mov word [bp - 0x16], 0          ; 0x2da3
    mov word [bp - 0x20], 0xffff     ; 0x2da8
    push word [bp - 0x22]            ; 0x2dad
    push word [bp - 0x20]            ; 0x2db0
    push word [bp - 0x16]            ; 0x2db3
    mov ax, 7                        ; 0x2db6
    push ax                          ; 0x2db9
    mov ax, 0xf                      ; 0x2dba
    push ax                          ; 0x2dbd
    mov ax, word [bp - 6]            ; 0x2dbe
    add ax, strict word 6            ; 0x2dc1
    push ax                          ; 0x2dc4
    mov ax, word [bp - 4]            ; 0x2dc5
    add ax, strict word 0x5d         ; 0x2dc8
    push ax                          ; 0x2dcb
    call loc_HTKI                    ; 0x2dcc
    add sp, byte 0xe                 ; 0x2dcf
    mov word [bp - 0x10], 0          ; 0x2dd2
    push word [bp - 0x10]            ; 0x2dd7
    mov ax, 7                        ; 0x2dda
    push ax                          ; 0x2ddd
    mov ax, 8                        ; 0x2dde
    push ax                          ; 0x2de1
    mov ax, word [bp - 6]            ; 0x2de2
    add ax, strict word 6            ; 0x2de5
    push ax                          ; 0x2de8
    mov ax, word [bp - 4]            ; 0x2de9
    add ax, 0xc1                     ; 0x2dec
    push ax                          ; 0x2def
    call draw_scrollbar              ; 0x2df0
    add sp, byte 0xa                 ; 0x2df3
    mov ax, 0                        ; 0x2df6
    push ax                          ; 0x2df9
    push ax                          ; 0x2dfa
    mov ax, word [bp - 6]            ; 0x2dfb
    add ax, word [bp - 0x10]         ; 0x2dfe
    add ax, strict word 0x12         ; 0x2e01
    push ax                          ; 0x2e04
    mov ax, word [bp - 4]            ; 0x2e05
    add ax, 0xc9                     ; 0x2e08
    push ax                          ; 0x2e0b
    mov ax, word [bp - 6]            ; 0x2e0c
    add ax, word [bp - 0x10]         ; 0x2e0f
    add ax, strict word 0xe          ; 0x2e12
    push ax                          ; 0x2e15
    mov ax, word [bp - 4]            ; 0x2e16
    add ax, 0xc1                     ; 0x2e19
    push ax                          ; 0x2e1c
    mov ax, 0                        ; 0x2e1d
    push ax                          ; 0x2e20
    call set_hotspot                 ; 0x2e21
    add sp, byte 0xe                 ; 0x2e24
    mov ax, 0                        ; 0x2e27
    push ax                          ; 0x2e2a
    mov ax, 9                        ; 0x2e2b
    push ax                          ; 0x2e2e
    mov ax, word [bp - 6]            ; 0x2e2f
    add ax, strict word 0xc          ; 0x2e32
    push ax                          ; 0x2e35
    mov ax, word [bp - 4]            ; 0x2e36
    add ax, 0xc9                     ; 0x2e39
    push ax                          ; 0x2e3c
    mov ax, word [bp - 6]            ; 0x2e3d
    add ax, strict word 6            ; 0x2e40
    push ax                          ; 0x2e43
    mov ax, word [bp - 4]            ; 0x2e44
    add ax, 0xc1                     ; 0x2e47
    push ax                          ; 0x2e4a
    mov ax, 1                        ; 0x2e4b
    push ax                          ; 0x2e4e
    call set_hotspot                 ; 0x2e4f
    add sp, byte 0xe                 ; 0x2e52
    mov ax, 0                        ; 0x2e55
    push ax                          ; 0x2e58
    mov ax, 0xb                      ; 0x2e59
    push ax                          ; 0x2e5c
    mov ax, word [bp - 6]            ; 0x2e5d
    add ax, strict word 0x30         ; 0x2e60
    push ax                          ; 0x2e63
    mov ax, word [bp - 4]            ; 0x2e64
    add ax, 0xc9                     ; 0x2e67
    push ax                          ; 0x2e6a
    mov ax, word [bp - 6]            ; 0x2e6b
    add ax, strict word 0x2a         ; 0x2e6e
    push ax                          ; 0x2e71
    mov ax, word [bp - 4]            ; 0x2e72
    add ax, 0xc1                     ; 0x2e75
    push ax                          ; 0x2e78
    mov ax, 2                        ; 0x2e79
    push ax                          ; 0x2e7c
    call set_hotspot                 ; 0x2e7d
    add sp, byte 0xe                 ; 0x2e80
    mov ax, 0                        ; 0x2e83
    push ax                          ; 0x2e86
    push ax                          ; 0x2e87
    mov ax, word [bp - 6]            ; 0x2e88
    add ax, strict word 0xf          ; 0x2e8b
    push ax                          ; 0x2e8e
    mov ax, word [bp - 4]            ; 0x2e8f
    add ax, strict word 0x50         ; 0x2e92
    push ax                          ; 0x2e95
    mov ax, word [bp - 6]            ; 0x2e96
    add ax, strict word 7            ; 0x2e99
    push ax                          ; 0x2e9c
    mov ax, word [bp - 4]            ; 0x2e9d
    add ax, strict word 8            ; 0x2ea0
    push ax                          ; 0x2ea3
    mov ax, 3                        ; 0x2ea4
    push ax                          ; 0x2ea7
    call set_hotspot                 ; 0x2ea8
    add sp, byte 0xe                 ; 0x2eab
    mov ax, 0xd                      ; 0x2eae
    push ax                          ; 0x2eb1
    mov ax, 0x55                     ; 0x2eb2
    push ax                          ; 0x2eb5
    mov ax, word [bp - 6]            ; 0x2eb6
    add ax, strict word 0x1f         ; 0x2eb9
    push ax                          ; 0x2ebc
    mov ax, word [bp - 4]            ; 0x2ebd
    add ax, strict word 0x50         ; 0x2ec0
    push ax                          ; 0x2ec3
    mov ax, word [bp - 6]            ; 0x2ec4
    add ax, strict word 0x17         ; 0x2ec7
    push ax                          ; 0x2eca
    mov ax, word [bp - 4]            ; 0x2ecb
    add ax, strict word 8            ; 0x2ece
    push ax                          ; 0x2ed1
    mov ax, 4                        ; 0x2ed2
    push ax                          ; 0x2ed5
    call set_hotspot                 ; 0x2ed6
    add sp, byte 0xe                 ; 0x2ed9
    mov ax, 0                        ; 0x2edc
    push ax                          ; 0x2edf
    mov ax, 0x1b                     ; 0x2ee0
    push ax                          ; 0x2ee3
    mov ax, word [bp - 6]            ; 0x2ee4
    add ax, strict word 0x2f         ; 0x2ee7
    push ax                          ; 0x2eea
    mov ax, word [bp - 4]            ; 0x2eeb
    add ax, strict word 0x50         ; 0x2eee
    push ax                          ; 0x2ef1
    mov ax, word [bp - 6]            ; 0x2ef2
    add ax, strict word 0x27         ; 0x2ef5
    push ax                          ; 0x2ef8
    mov ax, word [bp - 4]            ; 0x2ef9
    add ax, strict word 8            ; 0x2efc
    push ax                          ; 0x2eff
    mov ax, 5                        ; 0x2f00
    push ax                          ; 0x2f03
    call set_hotspot                 ; 0x2f04
    add sp, byte 0xe                 ; 0x2f07
    mov ax, 3                        ; 0x2f0a
    cmp word [bp + 0xc], byte 3      ; 0x2f0d
    jge short .forward4              ; 0x2f11
    mov ax, word [bp + 0xc]          ; 0x2f13
.forward4:
    mov word [bp - 0x1e], ax         ; 0x2f16
    mov word [bp - 2], 0             ; 0x2f19
    jmp short .forward5              ; 0x2f1e
.back1:
    mov ax, 0                        ; 0x2f20
    push ax                          ; 0x2f23
    push ax                          ; 0x2f24
    mov ax, 0xe                      ; 0x2f25
    imul word [bp - 2]               ; 0x2f28
    add ax, word [bp - 6]            ; 0x2f2b
    add ax, strict word 0x13         ; 0x2f2e
    push ax                          ; 0x2f31
    mov ax, word [bp - 4]            ; 0x2f32
    add ax, 0xb9                     ; 0x2f35
    push ax                          ; 0x2f38
    mov ax, 0xe                      ; 0x2f39
    imul word [bp - 2]               ; 0x2f3c
    add ax, word [bp - 6]            ; 0x2f3f
    add ax, strict word 7            ; 0x2f42
    push ax                          ; 0x2f45
    mov ax, word [bp - 4]            ; 0x2f46
    add ax, strict word 0x5d         ; 0x2f49
    push ax                          ; 0x2f4c
    mov ax, word [bp - 2]            ; 0x2f4d
    add ax, strict word 6            ; 0x2f50
    push ax                          ; 0x2f53
    call set_hotspot                 ; 0x2f54
    add sp, byte 0xe                 ; 0x2f57
    inc word [bp - 2]                ; 0x2f5a
.forward5:
    mov ax, word [bp - 2]            ; 0x2f5d
    cmp ax, word [bp - 0x1e]         ; 0x2f60
    jl short .back1                  ; 0x2f63
    mov ax, 0                        ; 0x2f65
    push ax                          ; 0x2f68
    push ax                          ; 0x2f69
    push ax                          ; 0x2f6a
    push ax                          ; 0x2f6b
    push ax                          ; 0x2f6c
    mov ax, 0xffff                   ; 0x2f6d
    push ax                          ; 0x2f70
    mov ax, word [bp - 0x1e]         ; 0x2f71
    add ax, strict word 6            ; 0x2f74
    push ax                          ; 0x2f77
    call set_hotspot                 ; 0x2f78
    add sp, byte 0xe                 ; 0x2f7b
    mov ax, 0xc6                     ; 0x2f7e
    push ax                          ; 0x2f81
    mov ax, 0x139                    ; 0x2f82
    push ax                          ; 0x2f85
    mov ax, 0x8e                     ; 0x2f86
    push ax                          ; 0x2f89
    mov ax, 9                        ; 0x2f8a
    push ax                          ; 0x2f8d
    call call_show_area              ; 0x2f8e
    add sp, byte 8                   ; 0x2f91
    mov word [bp - 0x1a], 1          ; 0x2f94
.back2:
    mov ax, hotspot_rects            ; 0x2f99
    push ax                          ; 0x2f9c
    call poll_hotspots               ; 0x2f9d
    pop cx                           ; 0x2fa0
    dec ax                           ; 0x2fa1
    mov word [bp - 0x18], ax         ; 0x2fa2
    cmp word [space_key_hit], byte 0 ; 0x2fa5
    je short .forward9               ; 0x2faa
    mov ax, word [bp - 0x20]         ; 0x2fac
    cmp ax, word [bp - 0x16]         ; 0x2faf
    jl short .forward6               ; 0x2fb2
    inc word [bp - 0x20]             ; 0x2fb4
.forward6:
    mov ax, word [bp - 0x20]         ; 0x2fb7
    cmp ax, strict word 0xffff       ; 0x2fba
    je short .forward7               ; 0x2fbd
    cmp ax, word [bp - 0x16]         ; 0x2fbf
    jl short .forward7               ; 0x2fc2
    mov ax, word [bp - 0x16]         ; 0x2fc4
    add ax, word [bp - 0x1e]         ; 0x2fc7
    mov cx, ax                       ; 0x2fca
    dec ax                           ; 0x2fcc
    mov cx, ax                       ; 0x2fcd
    mov ax, word [bp - 0x20]         ; 0x2fcf
    cmp cx, ax                       ; 0x2fd2
    jge short .forward8              ; 0x2fd4
.forward7:
    mov ax, word [bp - 0x16]         ; 0x2fd6
    mov word [bp - 0x20], ax         ; 0x2fd9
.forward8:
    mov word [hotspot_hit], 1        ; 0x2fdc
    mov ax, word [bp - 0x20]         ; 0x2fe2
    sub ax, word [bp - 0x16]         ; 0x2fe5
    add ax, strict word 6            ; 0x2fe8
    mov word [bp - 0x18], ax         ; 0x2feb
.forward9:
    cmp word [hotspot_hit], byte 1   ; 0x2fee
    je short .forward10              ; 0x2ff3
    jmp near .forward22              ; 0x2ff5
.forward10:
    mov ax, word [bp - 0x18]         ; 0x2ff8
    jmp near .forward20              ; 0x2ffb
jumptable_33a0_case_0:
    lea ax, word [bp - 0xe]          ; 0x2ffe
    push ax                          ; 0x3001
    lea ax, word [bp - 0xc]          ; 0x3002
    push ax                          ; 0x3005
    call call_get_mouse              ; 0x3006
    add sp, byte 4                   ; 0x3009
    mov ax, 4                        ; 0x300c
    push ax                          ; 0x300f
    mov ax, 0                        ; 0x3010
    push ax                          ; 0x3013
    mov ax, word [bp - 0xe]          ; 0x3014
    mov cx, word [bp - 6]            ; 0x3017
    add cx, word [bp - 0x10]         ; 0x301a
    add cx, byte 0xe                 ; 0x301d
    sub ax, cx                       ; 0x3020
    push ax                          ; 0x3022
    call clamp_between               ; 0x3023
    add sp, byte 6                   ; 0x3026
    mov word [bp - 0x14], ax         ; 0x3029
api_idx_0038_PVVG.back3:
    lea ax, word [bp - 0xe]          ; 0x302c
    push ax                          ; 0x302f
    lea ax, word [bp - 0xc]          ; 0x3030
    push ax                          ; 0x3033
    call call_get_mouse              ; 0x3034
    add sp, byte 4                   ; 0x3037
    mov word [bp - 0x1c], ax         ; 0x303a
    push word [bp - 0x12]            ; 0x303d
    mov ax, 0                        ; 0x3040
    push ax                          ; 0x3043
    mov ax, word [bp - 0xe]          ; 0x3044
    mov cx, word [bp - 6]            ; 0x3047
    add cx, byte 0xe                 ; 0x304a
    sub ax, cx                       ; 0x304d
    sub ax, word [bp - 0x14]         ; 0x304f
    push ax                          ; 0x3052
    call clamp_between               ; 0x3053
    add sp, byte 6                   ; 0x3056
    mov word [bp - 0x10], ax         ; 0x3059
    cmp word [bp + 0xc], byte 3      ; 0x305c
    jle short api_idx_0038_PVVG.forward11 ; 0x3060
    mov cx, 0x64                     ; 0x3062
    imul cx                          ; 0x3065
    push ax                          ; 0x3067
    mov ax, word [bp - 0x12]         ; 0x3068
    imul cx                          ; 0x306b
    add ax, strict word 0x64         ; 0x306d
    mov cx, word [bp + 0xc]          ; 0x3070
    dec cx                           ; 0x3073
    dec cx                           ; 0x3074
    cwd                              ; 0x3075
    idiv cx                          ; 0x3076
    mov cx, ax                       ; 0x3078
    pop ax                           ; 0x307a
    cwd                              ; 0x307b
    idiv cx                          ; 0x307c
    mov word [bp - 0x16], ax         ; 0x307e
api_idx_0038_PVVG.forward11:
    push word [bp - 0x22]            ; 0x3081
    push word [bp - 0x20]            ; 0x3084
    push word [bp - 0x16]            ; 0x3087
    mov ax, 7                        ; 0x308a
    push ax                          ; 0x308d
    mov ax, 0xf                      ; 0x308e
    push ax                          ; 0x3091
    mov ax, word [bp - 6]            ; 0x3092
    add ax, strict word 6            ; 0x3095
    push ax                          ; 0x3098
    mov ax, word [bp - 4]            ; 0x3099
    add ax, strict word 0x5d         ; 0x309c
    push ax                          ; 0x309f
    call loc_HTKI                    ; 0x30a0
    add sp, byte 0xe                 ; 0x30a3
    push word [bp - 0x10]            ; 0x30a6
    mov ax, 7                        ; 0x30a9
    push ax                          ; 0x30ac
    mov ax, 8                        ; 0x30ad
    push ax                          ; 0x30b0
    mov ax, word [bp - 6]            ; 0x30b1
    add ax, strict word 6            ; 0x30b4
    push ax                          ; 0x30b7
    mov ax, word [bp - 4]            ; 0x30b8
    add ax, 0xc1                     ; 0x30bb
    push ax                          ; 0x30be
    call draw_scrollbar              ; 0x30bf
    add sp, byte 0xa                 ; 0x30c2
    mov ax, 0                        ; 0x30c5
    push ax                          ; 0x30c8
    push ax                          ; 0x30c9
    mov ax, word [bp - 6]            ; 0x30ca
    add ax, word [bp - 0x10]         ; 0x30cd
    add ax, strict word 0x12         ; 0x30d0
    push ax                          ; 0x30d3
    mov ax, word [bp - 4]            ; 0x30d4
    add ax, 0xc9                     ; 0x30d7
    push ax                          ; 0x30da
    mov ax, word [bp - 6]            ; 0x30db
    add ax, word [bp - 0x10]         ; 0x30de
    add ax, strict word 0xe          ; 0x30e1
    push ax                          ; 0x30e4
    mov ax, word [bp - 4]            ; 0x30e5
    add ax, 0xc1                     ; 0x30e8
    push ax                          ; 0x30eb
    mov ax, 0                        ; 0x30ec
    push ax                          ; 0x30ef
    call set_hotspot                 ; 0x30f0
    add sp, byte 0xe                 ; 0x30f3
    mov ax, word [bp - 6]            ; 0x30f6
    add ax, strict word 0x30         ; 0x30f9
    push ax                          ; 0x30fc
    mov ax, word [bp - 4]            ; 0x30fd
    add ax, 0xc9                     ; 0x3100
    push ax                          ; 0x3103
    mov ax, word [bp - 6]            ; 0x3104
    add ax, strict word 6            ; 0x3107
    push ax                          ; 0x310a
    mov ax, word [bp - 4]            ; 0x310b
    add ax, strict word 0x5d         ; 0x310e
    push ax                          ; 0x3111
    call call_show_area              ; 0x3112
    add sp, byte 8                   ; 0x3115
    cmp word [bp - 0x1c], byte 0     ; 0x3118
    je short api_idx_0038_PVVG.forward12 ; 0x311c
    jmp near api_idx_0038_PVVG.back3 ; 0x311e
api_idx_0038_PVVG.forward12:
    jmp near api_idx_0038_PVVG.forward22 ; 0x3121
jumptable_33a0_case_1:
    cmp word [bp - 0x18], byte 1     ; 0x3124
    jne short api_idx_0038_PVVG.forward14 ; 0x3128
    mov ax, 1                        ; 0x312a
    push ax                          ; 0x312d
    mov ax, word [bp - 6]            ; 0x312e
    add ax, strict word 0xc          ; 0x3131
    push ax                          ; 0x3134
    mov ax, word [bp - 4]            ; 0x3135
    add ax, 0xc9                     ; 0x3138
    push ax                          ; 0x313b
    mov ax, word [bp - 6]            ; 0x313c
    add ax, strict word 6            ; 0x313f
    push ax                          ; 0x3142
    mov ax, word [bp - 4]            ; 0x3143
    add ax, 0xc1                     ; 0x3146
    push ax                          ; 0x3149
    call flash_area                  ; 0x314a
    add sp, byte 0xa                 ; 0x314d
    cmp word [bp - 0x16], byte 0     ; 0x3150
    jle short api_idx_0038_PVVG.forward13 ; 0x3154
    dec word [bp - 0x16]             ; 0x3156
api_idx_0038_PVVG.forward13:
    jmp short api_idx_0038_PVVG.forward15 ; 0x3159
api_idx_0038_PVVG.forward14:
    mov ax, 1                        ; 0x315b
    push ax                          ; 0x315e
    mov ax, word [bp - 6]            ; 0x315f
    add ax, strict word 0x30         ; 0x3162
    push ax                          ; 0x3165
    mov ax, word [bp - 4]            ; 0x3166
    add ax, 0xc9                     ; 0x3169
    push ax                          ; 0x316c
    mov ax, word [bp - 6]            ; 0x316d
    add ax, strict word 0x2a         ; 0x3170
    push ax                          ; 0x3173
    mov ax, word [bp - 4]            ; 0x3174
    add ax, 0xc1                     ; 0x3177
    push ax                          ; 0x317a
    call flash_area                  ; 0x317b
    add sp, byte 0xa                 ; 0x317e
    mov ax, word [bp + 0xc]          ; 0x3181
    dec ax                           ; 0x3184
    dec ax                           ; 0x3185
    dec ax                           ; 0x3186
    cmp ax, word [bp - 0x16]         ; 0x3187
    jle short api_idx_0038_PVVG.forward15 ; 0x318a
    inc word [bp - 0x16]             ; 0x318c
api_idx_0038_PVVG.forward15:
    cmp word [bp + 0xc], byte 3      ; 0x318f
    jle short api_idx_0038_PVVG.forward16 ; 0x3193
    push word [bp - 0x12]            ; 0x3195
    mov ax, 0                        ; 0x3198
    push ax                          ; 0x319b
    mov ax, 0x64                     ; 0x319c
    imul word [bp - 0x12]            ; 0x319f
    add ax, strict word 0x64         ; 0x31a2
    mov cx, word [bp + 0xc]          ; 0x31a5
    dec cx                           ; 0x31a8
    dec cx                           ; 0x31a9
    dec cx                           ; 0x31aa
    cwd                              ; 0x31ab
    idiv cx                          ; 0x31ac
    imul word [bp - 0x16]            ; 0x31ae
    mov cx, 0x64                     ; 0x31b1
    cwd                              ; 0x31b4
    idiv cx                          ; 0x31b5
    push ax                          ; 0x31b7
    call clamp_between               ; 0x31b8
    add sp, byte 6                   ; 0x31bb
    mov word [bp - 0x10], ax         ; 0x31be
api_idx_0038_PVVG.forward16:
    push word [bp - 0x22]            ; 0x31c1
    push word [bp - 0x20]            ; 0x31c4
    push word [bp - 0x16]            ; 0x31c7
    mov ax, 7                        ; 0x31ca
    push ax                          ; 0x31cd
    mov ax, 0xf                      ; 0x31ce
    push ax                          ; 0x31d1
    mov ax, word [bp - 6]            ; 0x31d2
    add ax, strict word 6            ; 0x31d5
    push ax                          ; 0x31d8
    mov ax, word [bp - 4]            ; 0x31d9
    add ax, strict word 0x5d         ; 0x31dc
    push ax                          ; 0x31df
    call loc_HTKI                    ; 0x31e0
    add sp, byte 0xe                 ; 0x31e3
    push word [bp - 0x10]            ; 0x31e6
    mov ax, 7                        ; 0x31e9
    push ax                          ; 0x31ec
    mov ax, 8                        ; 0x31ed
    push ax                          ; 0x31f0
    mov ax, word [bp - 6]            ; 0x31f1
    add ax, strict word 6            ; 0x31f4
    push ax                          ; 0x31f7
    mov ax, word [bp - 4]            ; 0x31f8
    add ax, 0xc1                     ; 0x31fb
    push ax                          ; 0x31fe
    call draw_scrollbar              ; 0x31ff
    add sp, byte 0xa                 ; 0x3202
    mov ax, 0                        ; 0x3205
    push ax                          ; 0x3208
    push ax                          ; 0x3209
    mov ax, word [bp - 6]            ; 0x320a
    add ax, word [bp - 0x10]         ; 0x320d
    add ax, strict word 0x12         ; 0x3210
    push ax                          ; 0x3213
    mov ax, word [bp - 4]            ; 0x3214
    add ax, 0xc9                     ; 0x3217
    push ax                          ; 0x321a
    mov ax, word [bp - 6]            ; 0x321b
    add ax, word [bp - 0x10]         ; 0x321e
    add ax, strict word 0xe          ; 0x3221
    push ax                          ; 0x3224
    mov ax, word [bp - 4]            ; 0x3225
    add ax, 0xc1                     ; 0x3228
    push ax                          ; 0x322b
    mov ax, 0                        ; 0x322c
    push ax                          ; 0x322f
    call set_hotspot                 ; 0x3230
    add sp, byte 0xe                 ; 0x3233
    mov ax, word [bp - 6]            ; 0x3236
    add ax, strict word 0x30         ; 0x3239
    push ax                          ; 0x323c
    mov ax, word [bp - 4]            ; 0x323d
    add ax, 0xc9                     ; 0x3240
    push ax                          ; 0x3243
    mov ax, word [bp - 6]            ; 0x3244
    add ax, strict word 6            ; 0x3247
    push ax                          ; 0x324a
    mov ax, word [bp - 4]            ; 0x324b
    add ax, strict word 0x5d         ; 0x324e
    push ax                          ; 0x3251
    call call_show_area              ; 0x3252
    add sp, byte 8                   ; 0x3255
    jmp near api_idx_0038_PVVG.forward22 ; 0x3258
jumptable_33a0_case_3:
    cmp word [bp + 6], byte 0        ; 0x325b
    je short api_idx_0038_PVVG.forward17 ; 0x325f
    mov ax, 1                        ; 0x3261
    push ax                          ; 0x3264
    push ax                          ; 0x3265
    mov ax, 0xc                      ; 0x3266
    push ax                          ; 0x3269
    mov ax, word [bp - 6]            ; 0x326a
    add ax, strict word 7            ; 0x326d
    push ax                          ; 0x3270
    mov ax, word [bp - 4]            ; 0x3271
    add ax, strict word 8            ; 0x3274
    push ax                          ; 0x3277
    call flash_button                ; 0x3278
    add sp, byte 0xa                 ; 0x327b
    mov ax, 0                        ; 0x327e
    push ax                          ; 0x3281
    mov ax, 1                        ; 0x3282
    push ax                          ; 0x3285
    mov ax, 0xc                      ; 0x3286
    push ax                          ; 0x3289
    mov ax, word [bp - 6]            ; 0x328a
    add ax, strict word 7            ; 0x328d
    push ax                          ; 0x3290
    mov ax, word [bp - 4]            ; 0x3291
    add ax, strict word 8            ; 0x3294
    push ax                          ; 0x3297
    call flash_button                ; 0x3298
    add sp, byte 0xa                 ; 0x329b
    mov word [spell_dialog_button], 0 ; 0x329e
    mov word [bp - 0x1a], 0          ; 0x32a4
api_idx_0038_PVVG.forward17:
    jmp near api_idx_0038_PVVG.forward22 ; 0x32a9
jumptable_33a0_case_4:
    cmp word [bp + 8], byte 0        ; 0x32ac
    je short api_idx_0038_PVVG.forward18 ; 0x32b0
    mov ax, 1                        ; 0x32b2
    push ax                          ; 0x32b5
    push ax                          ; 0x32b6
    mov ax, 0xc                      ; 0x32b7
    push ax                          ; 0x32ba
    mov ax, word [bp - 6]            ; 0x32bb
    add ax, strict word 0x17         ; 0x32be
    push ax                          ; 0x32c1
    mov ax, word [bp - 4]            ; 0x32c2
    add ax, strict word 8            ; 0x32c5
    push ax                          ; 0x32c8
    call flash_button                ; 0x32c9
    add sp, byte 0xa                 ; 0x32cc
    mov ax, 0                        ; 0x32cf
    push ax                          ; 0x32d2
    mov ax, 1                        ; 0x32d3
    push ax                          ; 0x32d6
    mov ax, 0xc                      ; 0x32d7
    push ax                          ; 0x32da
    mov ax, word [bp - 6]            ; 0x32db
    add ax, strict word 0x17         ; 0x32de
    push ax                          ; 0x32e1
    mov ax, word [bp - 4]            ; 0x32e2
    add ax, strict word 8            ; 0x32e5
    push ax                          ; 0x32e8
    call flash_button                ; 0x32e9
    add sp, byte 0xa                 ; 0x32ec
    mov word [spell_dialog_button], 1 ; 0x32ef
    mov word [bp - 0x1a], 0          ; 0x32f5
api_idx_0038_PVVG.forward18:
    jmp near api_idx_0038_PVVG.forward22 ; 0x32fa
jumptable_33a0_case_5:
    cmp word [bp + 0xa], byte 0      ; 0x32fd
    je short api_idx_0038_PVVG.forward19 ; 0x3301
    mov ax, 1                        ; 0x3303
    push ax                          ; 0x3306
    push ax                          ; 0x3307
    mov ax, 0xc                      ; 0x3308
    push ax                          ; 0x330b
    mov ax, word [bp - 6]            ; 0x330c
    add ax, strict word 0x27         ; 0x330f
    push ax                          ; 0x3312
    mov ax, word [bp - 4]            ; 0x3313
    add ax, strict word 8            ; 0x3316
    push ax                          ; 0x3319
    call flash_button                ; 0x331a
    add sp, byte 0xa                 ; 0x331d
    mov ax, 0                        ; 0x3320
    push ax                          ; 0x3323
    mov ax, 1                        ; 0x3324
    push ax                          ; 0x3327
    mov ax, 0xc                      ; 0x3328
    push ax                          ; 0x332b
    mov ax, word [bp - 6]            ; 0x332c
    add ax, strict word 0x27         ; 0x332f
    push ax                          ; 0x3332
    mov ax, word [bp - 4]            ; 0x3333
    add ax, strict word 8            ; 0x3336
    push ax                          ; 0x3339
    call flash_button                ; 0x333a
    add sp, byte 0xa                 ; 0x333d
    mov word [spell_dialog_button], 2 ; 0x3340
    mov word [bp - 0x1a], 0          ; 0x3346
api_idx_0038_PVVG.forward19:
    jmp short api_idx_0038_PVVG.forward22 ; 0x334b
api_idx_0038_PVVG.back4:
    mov ax, word [bp - 0x16]         ; 0x334d
    add ax, word [bp - 0x18]         ; 0x3350
    add ax, strict word 0xfffa       ; 0x3353
    mov word [bp - 0x20], ax         ; 0x3356
    push word [bp - 0x22]            ; 0x3359
    push ax                          ; 0x335c
    push word [bp - 0x16]            ; 0x335d
    mov ax, 7                        ; 0x3360
    push ax                          ; 0x3363
    mov ax, 0xf                      ; 0x3364
    push ax                          ; 0x3367
    mov ax, word [bp - 6]            ; 0x3368
    add ax, strict word 6            ; 0x336b
    push ax                          ; 0x336e
    mov ax, word [bp - 4]            ; 0x336f
    add ax, strict word 0x5d         ; 0x3372
    push ax                          ; 0x3375
    call loc_HTKI                    ; 0x3376
    add sp, byte 0xe                 ; 0x3379
    mov ax, word [bp - 6]            ; 0x337c
    add ax, strict word 0x30         ; 0x337f
    push ax                          ; 0x3382
    mov ax, word [bp - 4]            ; 0x3383
    add ax, 0xb9                     ; 0x3386
    push ax                          ; 0x3389
    mov ax, word [bp - 6]            ; 0x338a
    add ax, strict word 6            ; 0x338d
    push ax                          ; 0x3390
    mov ax, word [bp - 4]            ; 0x3391
    add ax, strict word 0x5d         ; 0x3394
    push ax                          ; 0x3397
    call call_show_area              ; 0x3398
    add sp, byte 8                   ; 0x339b
    jmp short api_idx_0038_PVVG.forward22 ; 0x339e
jumptable_33a0:
    dw jumptable_33a0_case_0 - IMAGE_BASE + __zres_end ; 0x33a0
    dw jumptable_33a0_case_1 - IMAGE_BASE + __zres_end ; 0x33a2
    dw jumptable_33a0_case_1 - IMAGE_BASE + __zres_end ; 0x33a4
    dw jumptable_33a0_case_3 - IMAGE_BASE + __zres_end ; 0x33a6
    dw jumptable_33a0_case_4 - IMAGE_BASE + __zres_end ; 0x33a8
    dw jumptable_33a0_case_5 - IMAGE_BASE + __zres_end ; 0x33aa
api_idx_0038_PVVG.forward20:
    cmp ax, strict word 6            ; 0x33ac
    jae short api_idx_0038_PVVG.forward21 ; 0x33af
    xchg bx, ax                      ; 0x33b1
    shl bx, 1                        ; 0x33b2
    jmp [cs:bx + jumptable_33a0 - IMAGE_BASE + __zres_end] ; 0x33b4
api_idx_0038_PVVG.forward21:
    jmp short api_idx_0038_PVVG.back4 ; 0x33b9
api_idx_0038_PVVG.forward22:
    cmp word [bp - 0x1a], byte 0     ; 0x33bb
    je short api_idx_0038_PVVG.forward23 ; 0x33bf
    jmp near api_idx_0038_PVVG.back2 ; 0x33c1
api_idx_0038_PVVG.forward23:
    mov ax, 1                        ; 0x33c4
    push ax                          ; 0x33c7
    push word [bp - 0x38]            ; 0x33c8
    call restore_saved_screen        ; 0x33cb
    add sp, byte 4                   ; 0x33ce
    mov ax, word [bp - 0x20]         ; 0x33d1
    mov word [spell_dialog_result], ax ; 0x33d4
    mov ax, word [spell_dialog_button] ; 0x33d7
    ret                              ; 0x33da
