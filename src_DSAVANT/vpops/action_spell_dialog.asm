; auto-generated
action_spell_dialog:
    mov ax, 0xffbc                   ; 0x1ca2
    call aztec_csav                  ; 0x1ca5
    mov word [bp - 2], 0             ; 0x1ca8
.back1:
    mov ax, word [bp - 2]            ; 0x1cad
    shl ax, 1                        ; 0x1cb0
    mov bx, ax                       ; 0x1cb2
    mov word [bx + party_slot_frame], 0 ; 0x1cb4
    inc word [bp - 2]                ; 0x1cba
    mov ax, word [bp - 2]            ; 0x1cbd
    cmp ax, strict word 6            ; 0x1cc0
    jl short .back1                  ; 0x1cc3
    mov word [spell_dialog_result], 0xffff ; 0x1cc5
    mov word [bp - 4], 0x32          ; 0x1ccb
    mov word [bp - 6], 0x73          ; 0x1cd0
    mov word [bp - 8], 0x10d         ; 0x1cd5
    mov word [bp - 0xa], 0xc5        ; 0x1cda
    mov word [bp - 0xc], 0x95        ; 0x1cdf
    mov word [bp - 0x14], 0x16       ; 0x1ce4
    mov ax, dseg_90bf                ; 0x1ce9
    push ax                          ; 0x1cec
    mov ax, word [bp - 0xa]          ; 0x1ced
    inc ax                           ; 0x1cf0
    push ax                          ; 0x1cf1
    mov ax, word [bp - 8]            ; 0x1cf2
    inc ax                           ; 0x1cf5
    push ax                          ; 0x1cf6
    mov ax, word [bp - 6]            ; 0x1cf7
    dec ax                           ; 0x1cfa
    push ax                          ; 0x1cfb
    mov ax, word [bp - 4]            ; 0x1cfc
    dec ax                           ; 0x1cff
    push ax                          ; 0x1d00
    call save_screen_area            ; 0x1d01
    add sp, byte 0xa                 ; 0x1d04
    mov word [bp - 0x3a], ax         ; 0x1d07
    push word [bp - 0xa]             ; 0x1d0a
    push word [bp - 8]               ; 0x1d0d
    push word [bp - 6]               ; 0x1d10
    push word [bp - 4]               ; 0x1d13
    call draw_dialog_box             ; 0x1d16
    add sp, byte 8                   ; 0x1d19
    push word [bp - 0xa]             ; 0x1d1c
    push word [bp - 8]               ; 0x1d1f
    push word [bp - 6]               ; 0x1d22
    mov ax, 0x95                     ; 0x1d25
    push ax                          ; 0x1d28
    call draw_dialog_box             ; 0x1d29
    add sp, byte 8                   ; 0x1d2c
    call draw_marker_glyph           ; 0x1d2f
    push word [bp + 4]               ; 0x1d32
    call draw_realm_spell_points     ; 0x1d35
    pop cx                           ; 0x1d38
    mov ax, 1                        ; 0x1d39
    push ax                          ; 0x1d3c
    mov ax, 0x73                     ; 0x1d3d
    push ax                          ; 0x1d40
    mov ax, 0x32                     ; 0x1d41
    push ax                          ; 0x1d44
    call draw_party_slot_letters     ; 0x1d45
    add sp, byte 6                   ; 0x1d48
    lea ax, word [bp - 0x38]         ; 0x1d4b
    push ax                          ; 0x1d4e
    push word [bp + 6]               ; 0x1d4f
    call load_message_string         ; 0x1d52
    add sp, byte 4                   ; 0x1d55
    lea ax, word [bp - 0x38]         ; 0x1d58
    push ax                          ; 0x1d5b
    push word [bp + 8]               ; 0x1d5c
    mov ax, 1                        ; 0x1d5f
    push ax                          ; 0x1d62
    mov ax, 8                        ; 0x1d63
    push ax                          ; 0x1d66
    mov ax, word [bp - 6]            ; 0x1d67
    add ax, strict word 6            ; 0x1d6a
    push ax                          ; 0x1d6d
    mov ax, word [bp - 0xc]          ; 0x1d6e
    add ax, strict word 6            ; 0x1d71
    push ax                          ; 0x1d74
    call draw_button                 ; 0x1d75
    add sp, byte 0xc                 ; 0x1d78
    lea ax, word [bp - 0x38]         ; 0x1d7b
    push ax                          ; 0x1d7e
    mov ax, word [bp + 6]            ; 0x1d7f
    inc ax                           ; 0x1d82
    push ax                          ; 0x1d83
    call load_message_string         ; 0x1d84
    add sp, byte 4                   ; 0x1d87
    lea ax, word [bp - 0x38]         ; 0x1d8a
    push ax                          ; 0x1d8d
    mov ax, 1                        ; 0x1d8e
    push ax                          ; 0x1d91
    push ax                          ; 0x1d92
    mov ax, 8                        ; 0x1d93
    push ax                          ; 0x1d96
    mov ax, word [bp - 6]            ; 0x1d97
    add ax, strict word 6            ; 0x1d9a
    push ax                          ; 0x1d9d
    mov ax, word [bp - 0xc]          ; 0x1d9e
    add ax, strict word 0x42         ; 0x1da1
    push ax                          ; 0x1da4
    call draw_button                 ; 0x1da5
    add sp, byte 0xc                 ; 0x1da8
    mov ax, word [bp - 6]            ; 0x1dab
    add ax, strict word 0x14         ; 0x1dae
    push ax                          ; 0x1db1
    mov ax, word [bp - 0xc]          ; 0x1db2
    add ax, strict word 0x48         ; 0x1db5
    push ax                          ; 0x1db8
    call gfx_set_text_pos            ; 0x1db9
    add sp, byte 4                   ; 0x1dbc
    mov ax, 0                        ; 0x1dbf
    push ax                          ; 0x1dc2
    mov ax, 0xcd                     ; 0x1dc3
    push ax                          ; 0x1dc6
    call gfx_set_text_color          ; 0x1dc7
    add sp, byte 4                   ; 0x1dca
    mov ax, 2                        ; 0x1dcd
    push ax                          ; 0x1dd0
    mov ax, 0xa                      ; 0x1dd1
    push ax                          ; 0x1dd4
    call draw_font_glyph             ; 0x1dd5
    add sp, byte 4                   ; 0x1dd8
    mov word [bp - 0x3c], 0xffff     ; 0x1ddb
    mov word [bp - 0x3e], 0          ; 0x1de0
    mov word [bp - 0x40], 0          ; 0x1de5
    mov word [bp - 2], 0             ; 0x1dea
.back2:
    mov ax, 0                        ; 0x1def
    mov cx, word [bp - 2]            ; 0x1df2
    cmp cx, word [bp - 0x3e]         ; 0x1df5
    jne short .forward1              ; 0x1df8
    mov ax, 1                        ; 0x1dfa
.forward1:
    push ax                          ; 0x1dfd
    push cx                          ; 0x1dfe
    mov ax, word [bp - 6]            ; 0x1dff
    add ax, strict word 0x14         ; 0x1e02
    push ax                          ; 0x1e05
    mov ax, word [bp - 0xc]          ; 0x1e06
    add ax, strict word 0xc          ; 0x1e09
    push ax                          ; 0x1e0c
    call draw_power_digit            ; 0x1e0d
    add sp, byte 8                   ; 0x1e10
    inc word [bp - 2]                ; 0x1e13
    mov ax, word [bp - 2]            ; 0x1e16
    cmp ax, strict word 7            ; 0x1e19
    jl short .back2                  ; 0x1e1c
    mov word [bp - 0x42], 0          ; 0x1e1e
    mov ax, 0                        ; 0x1e23
    push ax                          ; 0x1e26
    push ax                          ; 0x1e27
    push word [bp - 0x42]            ; 0x1e28
    mov ax, word [bp - 6]            ; 0x1e2b
    add ax, strict word 0x15         ; 0x1e2e
    push ax                          ; 0x1e31
    mov ax, word [bp - 0xc]          ; 0x1e32
    add ax, strict word 0x5e         ; 0x1e35
    push ax                          ; 0x1e38
    call loc_VGIT                    ; 0x1e39
    add sp, byte 0xa                 ; 0x1e3c
    push word [bp - 0x42]            ; 0x1e3f
    push word [bp + 4]               ; 0x1e42
    call api_idx_0004_OQNP           ; 0x1e45
    add sp, byte 4                   ; 0x1e48
    mov word [bp - 0x44], ax         ; 0x1e4b
    mov ax, 7                        ; 0x1e4e
    cmp word [bp - 0x44], byte 7     ; 0x1e51
    jge short .forward2              ; 0x1e55
    mov ax, word [bp - 0x44]         ; 0x1e57
.forward2:
    mov word [bp - 0x24], ax         ; 0x1e5a
    mov word [bp - 0x18], 0          ; 0x1e5d
    mov word [bp - 0x22], 0xffff     ; 0x1e62
    push ax                          ; 0x1e67
    push word [bp - 0x22]            ; 0x1e68
    push word [bp - 0x18]            ; 0x1e6b
    mov ax, 7                        ; 0x1e6e
    push ax                          ; 0x1e71
    mov ax, 0xf                      ; 0x1e72
    push ax                          ; 0x1e75
    mov ax, word [bp - 6]            ; 0x1e76
    add ax, strict word 0x22         ; 0x1e79
    push ax                          ; 0x1e7c
    mov ax, word [bp - 0xc]          ; 0x1e7d
    add ax, strict word 6            ; 0x1e80
    push ax                          ; 0x1e83
    call draw_text_list              ; 0x1e84
    add sp, byte 0xe                 ; 0x1e87
    mov word [bp - 0x12], 0          ; 0x1e8a
    push word [bp - 0x12]            ; 0x1e8f
    mov ax, 7                        ; 0x1e92
    push ax                          ; 0x1e95
    mov ax, 8                        ; 0x1e96
    push ax                          ; 0x1e99
    mov ax, word [bp - 6]            ; 0x1e9a
    add ax, strict word 0x22         ; 0x1e9d
    push ax                          ; 0x1ea0
    mov ax, word [bp - 0xc]          ; 0x1ea1
    add ax, strict word 0x6a         ; 0x1ea4
    push ax                          ; 0x1ea7
    call draw_scrollbar              ; 0x1ea8
    add sp, byte 0xa                 ; 0x1eab
    mov ax, 0                        ; 0x1eae
    push ax                          ; 0x1eb1
    push ax                          ; 0x1eb2
    mov ax, word [bp - 6]            ; 0x1eb3
    add ax, word [bp - 0x12]         ; 0x1eb6
    add ax, strict word 0x2e         ; 0x1eb9
    push ax                          ; 0x1ebc
    mov ax, word [bp - 0xc]          ; 0x1ebd
    add ax, strict word 0x72         ; 0x1ec0
    push ax                          ; 0x1ec3
    mov ax, word [bp - 6]            ; 0x1ec4
    add ax, word [bp - 0x12]         ; 0x1ec7
    add ax, strict word 0x2a         ; 0x1eca
    push ax                          ; 0x1ecd
    mov ax, word [bp - 0xc]          ; 0x1ece
    add ax, strict word 0x6a         ; 0x1ed1
    push ax                          ; 0x1ed4
    mov ax, 0                        ; 0x1ed5
    push ax                          ; 0x1ed8
    call set_hotspot                 ; 0x1ed9
    add sp, byte 0xe                 ; 0x1edc
    mov ax, 0                        ; 0x1edf
    push ax                          ; 0x1ee2
    mov ax, 9                        ; 0x1ee3
    push ax                          ; 0x1ee6
    mov ax, word [bp - 6]            ; 0x1ee7
    add ax, strict word 0x28         ; 0x1eea
    push ax                          ; 0x1eed
    mov ax, word [bp - 0xc]          ; 0x1eee
    add ax, strict word 0x72         ; 0x1ef1
    push ax                          ; 0x1ef4
    mov ax, word [bp - 6]            ; 0x1ef5
    add ax, strict word 0x22         ; 0x1ef8
    push ax                          ; 0x1efb
    mov ax, word [bp - 0xc]          ; 0x1efc
    add ax, strict word 0x6a         ; 0x1eff
    push ax                          ; 0x1f02
    mov ax, 1                        ; 0x1f03
    push ax                          ; 0x1f06
    call set_hotspot                 ; 0x1f07
    add sp, byte 0xe                 ; 0x1f0a
    mov ax, 0                        ; 0x1f0d
    push ax                          ; 0x1f10
    mov ax, 0xb                      ; 0x1f11
    push ax                          ; 0x1f14
    mov ax, word [bp - 6]            ; 0x1f15
    add ax, strict word 0x4c         ; 0x1f18
    push ax                          ; 0x1f1b
    mov ax, word [bp - 0xc]          ; 0x1f1c
    add ax, strict word 0x72         ; 0x1f1f
    push ax                          ; 0x1f22
    mov ax, word [bp - 6]            ; 0x1f23
    add ax, strict word 0x46         ; 0x1f26
    push ax                          ; 0x1f29
    mov ax, word [bp - 0xc]          ; 0x1f2a
    add ax, strict word 0x6a         ; 0x1f2d
    push ax                          ; 0x1f30
    mov ax, 2                        ; 0x1f31
    push ax                          ; 0x1f34
    call set_hotspot                 ; 0x1f35
    add sp, byte 0xe                 ; 0x1f38
    mov ax, 0                        ; 0x1f3b
    push ax                          ; 0x1f3e
    mov ax, 0xd                      ; 0x1f3f
    push ax                          ; 0x1f42
    mov ax, word [bp - 6]            ; 0x1f43
    add ax, strict word 0xe          ; 0x1f46
    push ax                          ; 0x1f49
    mov ax, word [bp - 0xc]          ; 0x1f4a
    add ax, strict word 0x36         ; 0x1f4d
    push ax                          ; 0x1f50
    mov ax, word [bp - 6]            ; 0x1f51
    add ax, strict word 6            ; 0x1f54
    push ax                          ; 0x1f57
    mov ax, word [bp - 0xc]          ; 0x1f58
    add ax, strict word 6            ; 0x1f5b
    push ax                          ; 0x1f5e
    mov ax, 3                        ; 0x1f5f
    push ax                          ; 0x1f62
    call set_hotspot                 ; 0x1f63
    add sp, byte 0xe                 ; 0x1f66
    mov ax, 0                        ; 0x1f69
    push ax                          ; 0x1f6c
    mov ax, 0x1b                     ; 0x1f6d
    push ax                          ; 0x1f70
    mov ax, word [bp - 6]            ; 0x1f71
    add ax, strict word 0xe          ; 0x1f74
    push ax                          ; 0x1f77
    mov ax, word [bp - 0xc]          ; 0x1f78
    add ax, strict word 0x72         ; 0x1f7b
    push ax                          ; 0x1f7e
    mov ax, word [bp - 6]            ; 0x1f7f
    add ax, strict word 6            ; 0x1f82
    push ax                          ; 0x1f85
    mov ax, word [bp - 0xc]          ; 0x1f86
    add ax, strict word 0x42         ; 0x1f89
    push ax                          ; 0x1f8c
    mov ax, 4                        ; 0x1f8d
    push ax                          ; 0x1f90
    call set_hotspot                 ; 0x1f91
    add sp, byte 0xe                 ; 0x1f94
    mov word [bp - 2], 0             ; 0x1f97
.back3:
    mov ax, 0                        ; 0x1f9c
    push ax                          ; 0x1f9f
    mov ax, word [bp - 2]            ; 0x1fa0
    add ax, strict word 0x31         ; 0x1fa3
    cbw                              ; 0x1fa6
    push ax                          ; 0x1fa7
    mov ax, word [bp - 6]            ; 0x1fa8
    add ax, strict word 0x1b         ; 0x1fab
    push ax                          ; 0x1fae
    mov ax, 0xa                      ; 0x1faf
    imul word [bp - 2]               ; 0x1fb2
    add ax, word [bp - 0xc]          ; 0x1fb5
    add ax, strict word 0x13         ; 0x1fb8
    push ax                          ; 0x1fbb
    mov ax, word [bp - 6]            ; 0x1fbc
    add ax, strict word 0x14         ; 0x1fbf
    push ax                          ; 0x1fc2
    mov ax, 0xa                      ; 0x1fc3
    imul word [bp - 2]               ; 0x1fc6
    add ax, word [bp - 0xc]          ; 0x1fc9
    add ax, strict word 0xc          ; 0x1fcc
    push ax                          ; 0x1fcf
    mov ax, word [bp - 2]            ; 0x1fd0
    add ax, strict word 5            ; 0x1fd3
    push ax                          ; 0x1fd6
    call set_hotspot                 ; 0x1fd7
    add sp, byte 0xe                 ; 0x1fda
    inc word [bp - 2]                ; 0x1fdd
    mov ax, word [bp - 2]            ; 0x1fe0
    cmp ax, strict word 7            ; 0x1fe3
    jl short .back3                  ; 0x1fe6
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
    call set_hotspot                 ; 0x2004
    add sp, byte 0xe                 ; 0x2007
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
    call set_hotspot                 ; 0x2026
    add sp, byte 0xe                 ; 0x2029
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
    call set_hotspot                 ; 0x2048
    add sp, byte 0xe                 ; 0x204b
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
    call set_hotspot                 ; 0x206a
    add sp, byte 0xe                 ; 0x206d
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
    call set_hotspot                 ; 0x208c
    add sp, byte 0xe                 ; 0x208f
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
    call set_hotspot                 ; 0x20ae
    add sp, byte 0xe                 ; 0x20b1
    mov ax, 7                        ; 0x20b4
    cmp word [bp - 0x44], byte 7     ; 0x20b7
    jge short .forward3              ; 0x20bb
    mov ax, word [bp - 0x44]         ; 0x20bd
.forward3:
    mov word [bp - 0x20], ax         ; 0x20c0
    mov word [bp - 2], 0             ; 0x20c3
.back4:
    mov ax, 0                        ; 0x20c8
    push ax                          ; 0x20cb
    push ax                          ; 0x20cc
    mov ax, 6                        ; 0x20cd
    imul word [bp - 2]               ; 0x20d0
    add ax, word [bp - 6]            ; 0x20d3
    add ax, strict word 0x28         ; 0x20d6
    push ax                          ; 0x20d9
    mov ax, word [bp - 0xc]          ; 0x20da
    add ax, strict word 0x62         ; 0x20dd
    push ax                          ; 0x20e0
    mov ax, 6                        ; 0x20e1
    imul word [bp - 2]               ; 0x20e4
    add ax, word [bp - 6]            ; 0x20e7
    add ax, strict word 0x22         ; 0x20ea
    push ax                          ; 0x20ed
    mov ax, word [bp - 0xc]          ; 0x20ee
    add ax, strict word 6            ; 0x20f1
    push ax                          ; 0x20f4
    mov ax, word [bp - 2]            ; 0x20f5
    add ax, strict word 0x12         ; 0x20f8
    push ax                          ; 0x20fb
    call set_hotspot                 ; 0x20fc
    add sp, byte 0xe                 ; 0x20ff
    inc word [bp - 2]                ; 0x2102
    mov ax, word [bp - 2]            ; 0x2105
    cmp ax, strict word 7            ; 0x2108
    jl short .back4                  ; 0x210b
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
    call set_hotspot                 ; 0x211d
    add sp, byte 0xe                 ; 0x2120
    mov ax, word [bp - 0xa]          ; 0x2123
    inc ax                           ; 0x2126
    push ax                          ; 0x2127
    mov ax, 0x139                    ; 0x2128
    push ax                          ; 0x212b
    mov ax, word [bp - 6]            ; 0x212c
    dec ax                           ; 0x212f
    push ax                          ; 0x2130
    mov ax, 9                        ; 0x2131
    push ax                          ; 0x2134
    call gfx_show_area               ; 0x2135
    add sp, byte 8                   ; 0x2138
    mov word [bss_90d6], 5           ; 0x213b
    les bx, word [tick_counter_ptr]  ; 0x2141
    mov ax, word [es:bx]             ; 0x2145
    mov dx, word [es:bx + 2]         ; 0x2148
    mov word [party_redraw_last_tick_hi], dx ; 0x214c
    mov word [party_redraw_last_tick], ax ; 0x2150
    mov word [bp - 0x1c], 1          ; 0x2153
.back5:
    push word [bp - 0x42]            ; 0x2158
    push word [bp + 4]               ; 0x215b
    call periodic_party_redraw       ; 0x215e
    add sp, byte 4                   ; 0x2161
    mov ax, hotspot_rects            ; 0x2164
    push ax                          ; 0x2167
    call poll_hotspots               ; 0x2168
    pop cx                           ; 0x216b
    dec ax                           ; 0x216c
    mov word [bp - 0x1a], ax         ; 0x216d
    cmp word [space_key_hit], byte 0 ; 0x2170
    je short .forward7               ; 0x2175
    mov ax, word [bp - 0x22]         ; 0x2177
    cmp ax, word [bp - 0x18]         ; 0x217a
    jl short .forward4               ; 0x217d
    inc word [bp - 0x22]             ; 0x217f
.forward4:
    mov ax, word [bp - 0x22]         ; 0x2182
    cmp ax, strict word 0xffff       ; 0x2185
    je short .forward5               ; 0x2188
    cmp ax, word [bp - 0x18]         ; 0x218a
    jl short .forward5               ; 0x218d
    mov ax, word [bp - 0x18]         ; 0x218f
    add ax, word [bp - 0x20]         ; 0x2192
    mov cx, ax                       ; 0x2195
    dec ax                           ; 0x2197
    mov cx, ax                       ; 0x2198
    mov ax, word [bp - 0x22]         ; 0x219a
    cmp cx, ax                       ; 0x219d
    jge short .forward6              ; 0x219f
.forward5:
    mov ax, word [bp - 0x18]         ; 0x21a1
    mov word [bp - 0x22], ax         ; 0x21a4
.forward6:
    mov word [hotspot_hit], 1        ; 0x21a7
    mov ax, word [bp - 0x22]         ; 0x21ad
    sub ax, word [bp - 0x18]         ; 0x21b0
    add ax, strict word 0x12         ; 0x21b3
    mov word [bp - 0x1a], ax         ; 0x21b6
.forward7:
    cmp word [hotspot_hit], byte 1   ; 0x21b9
    je short .forward8               ; 0x21be
    jmp near .forward43              ; 0x21c0
.forward8:
    mov ax, word [bp - 0x1a]         ; 0x21c3
    jmp near .forward41              ; 0x21c6
jumptable_28e9_case_0:
    lea ax, word [bp - 0x10]         ; 0x21c9
    push ax                          ; 0x21cc
    lea ax, word [bp - 0xe]          ; 0x21cd
    push ax                          ; 0x21d0
    call gfx_get_mouse               ; 0x21d1
    add sp, byte 4                   ; 0x21d4
    mov ax, 4                        ; 0x21d7
    push ax                          ; 0x21da
    mov ax, 0                        ; 0x21db
    push ax                          ; 0x21de
    mov ax, word [bp - 0x10]         ; 0x21df
    mov cx, word [bp - 6]            ; 0x21e2
    add cx, word [bp - 0x12]         ; 0x21e5
    add cx, byte 0x2a                ; 0x21e8
    sub ax, cx                       ; 0x21eb
    push ax                          ; 0x21ed
    call clamp_between               ; 0x21ee
    add sp, byte 6                   ; 0x21f1
    mov word [bp - 0x16], ax         ; 0x21f4
action_spell_dialog.back6:
    lea ax, word [bp - 0x10]         ; 0x21f7
    push ax                          ; 0x21fa
    lea ax, word [bp - 0xe]          ; 0x21fb
    push ax                          ; 0x21fe
    call gfx_get_mouse               ; 0x21ff
    add sp, byte 4                   ; 0x2202
    mov word [bp - 0x1e], ax         ; 0x2205
    push word [bp - 0x14]            ; 0x2208
    mov ax, 0                        ; 0x220b
    push ax                          ; 0x220e
    mov ax, word [bp - 0x10]         ; 0x220f
    mov cx, word [bp - 6]            ; 0x2212
    add cx, byte 0x2a                ; 0x2215
    sub ax, cx                       ; 0x2218
    sub ax, word [bp - 0x16]         ; 0x221a
    push ax                          ; 0x221d
    call clamp_between               ; 0x221e
    add sp, byte 6                   ; 0x2221
    mov word [bp - 0x12], ax         ; 0x2224
    cmp word [bp - 0x44], byte 7     ; 0x2227
    jle short action_spell_dialog.forward9 ; 0x222b
    mov cx, 0x64                     ; 0x222d
    imul cx                          ; 0x2230
    push ax                          ; 0x2232
    mov ax, word [bp - 0x14]         ; 0x2233
    imul cx                          ; 0x2236
    add ax, strict word 0x64         ; 0x2238
    mov cx, word [bp - 0x44]         ; 0x223b
    add cx, byte -6                  ; 0x223e
    cwd                              ; 0x2241
    idiv cx                          ; 0x2242
    mov cx, ax                       ; 0x2244
    pop ax                           ; 0x2246
    cwd                              ; 0x2247
    idiv cx                          ; 0x2248
    mov word [bp - 0x18], ax         ; 0x224a
action_spell_dialog.forward9:
    push word [bp - 0x24]            ; 0x224d
    push word [bp - 0x22]            ; 0x2250
    push word [bp - 0x18]            ; 0x2253
    mov ax, 7                        ; 0x2256
    push ax                          ; 0x2259
    mov ax, 0xf                      ; 0x225a
    push ax                          ; 0x225d
    mov ax, word [bp - 6]            ; 0x225e
    add ax, strict word 0x22         ; 0x2261
    push ax                          ; 0x2264
    mov ax, word [bp - 0xc]          ; 0x2265
    add ax, strict word 6            ; 0x2268
    push ax                          ; 0x226b
    call draw_text_list              ; 0x226c
    add sp, byte 0xe                 ; 0x226f
    push word [bp - 0x12]            ; 0x2272
    mov ax, 7                        ; 0x2275
    push ax                          ; 0x2278
    mov ax, 8                        ; 0x2279
    push ax                          ; 0x227c
    mov ax, word [bp - 6]            ; 0x227d
    add ax, strict word 0x22         ; 0x2280
    push ax                          ; 0x2283
    mov ax, word [bp - 0xc]          ; 0x2284
    add ax, strict word 0x6a         ; 0x2287
    push ax                          ; 0x228a
    call draw_scrollbar              ; 0x228b
    add sp, byte 0xa                 ; 0x228e
    mov ax, 0                        ; 0x2291
    push ax                          ; 0x2294
    push ax                          ; 0x2295
    mov ax, word [bp - 6]            ; 0x2296
    add ax, word [bp - 0x12]         ; 0x2299
    add ax, strict word 0x2e         ; 0x229c
    push ax                          ; 0x229f
    mov ax, word [bp - 0xc]          ; 0x22a0
    add ax, strict word 0x72         ; 0x22a3
    push ax                          ; 0x22a6
    mov ax, word [bp - 6]            ; 0x22a7
    add ax, word [bp - 0x12]         ; 0x22aa
    add ax, strict word 0x2a         ; 0x22ad
    push ax                          ; 0x22b0
    mov ax, word [bp - 0xc]          ; 0x22b1
    add ax, strict word 0x6a         ; 0x22b4
    push ax                          ; 0x22b7
    mov ax, 0                        ; 0x22b8
    push ax                          ; 0x22bb
    call set_hotspot                 ; 0x22bc
    add sp, byte 0xe                 ; 0x22bf
    mov ax, word [bp - 6]            ; 0x22c2
    add ax, strict word 0x4c         ; 0x22c5
    push ax                          ; 0x22c8
    mov ax, word [bp - 0xc]          ; 0x22c9
    add ax, strict word 0x72         ; 0x22cc
    push ax                          ; 0x22cf
    mov ax, word [bp - 6]            ; 0x22d0
    add ax, strict word 0x22         ; 0x22d3
    push ax                          ; 0x22d6
    mov ax, word [bp - 0xc]          ; 0x22d7
    add ax, strict word 6            ; 0x22da
    push ax                          ; 0x22dd
    call gfx_show_area               ; 0x22de
    add sp, byte 8                   ; 0x22e1
    cmp word [bp - 0x1e], byte 0     ; 0x22e4
    je short action_spell_dialog.forward10 ; 0x22e8
    jmp near action_spell_dialog.back6 ; 0x22ea
action_spell_dialog.forward10:
    jmp near action_spell_dialog.forward43 ; 0x22ed
jumptable_28e9_case_1:
    cmp word [bp - 0x1a], byte 1     ; 0x22f0
    jne short action_spell_dialog.forward12 ; 0x22f4
    mov ax, 1                        ; 0x22f6
    push ax                          ; 0x22f9
    mov ax, word [bp - 6]            ; 0x22fa
    add ax, strict word 0x28         ; 0x22fd
    push ax                          ; 0x2300
    mov ax, word [bp - 0xc]          ; 0x2301
    add ax, strict word 0x72         ; 0x2304
    push ax                          ; 0x2307
    mov ax, word [bp - 6]            ; 0x2308
    add ax, strict word 0x22         ; 0x230b
    push ax                          ; 0x230e
    mov ax, word [bp - 0xc]          ; 0x230f
    add ax, strict word 0x6a         ; 0x2312
    push ax                          ; 0x2315
    call flash_area                  ; 0x2316
    add sp, byte 0xa                 ; 0x2319
    cmp word [bp - 0x18], byte 0     ; 0x231c
    jle short action_spell_dialog.forward11 ; 0x2320
    dec word [bp - 0x18]             ; 0x2322
action_spell_dialog.forward11:
    jmp short action_spell_dialog.forward13 ; 0x2325
action_spell_dialog.forward12:
    mov ax, 1                        ; 0x2327
    push ax                          ; 0x232a
    mov ax, word [bp - 6]            ; 0x232b
    add ax, strict word 0x4c         ; 0x232e
    push ax                          ; 0x2331
    mov ax, word [bp - 0xc]          ; 0x2332
    add ax, strict word 0x72         ; 0x2335
    push ax                          ; 0x2338
    mov ax, word [bp - 6]            ; 0x2339
    add ax, strict word 0x46         ; 0x233c
    push ax                          ; 0x233f
    mov ax, word [bp - 0xc]          ; 0x2340
    add ax, strict word 0x6a         ; 0x2343
    push ax                          ; 0x2346
    call flash_area                  ; 0x2347
    add sp, byte 0xa                 ; 0x234a
    mov ax, word [bp - 0x44]         ; 0x234d
    add ax, strict word 0xfff9       ; 0x2350
    cmp ax, word [bp - 0x18]         ; 0x2353
    jle short action_spell_dialog.forward13 ; 0x2356
    inc word [bp - 0x18]             ; 0x2358
action_spell_dialog.forward13:
    cmp word [bp - 0x44], byte 7     ; 0x235b
    jle short action_spell_dialog.forward14 ; 0x235f
    push word [bp - 0x14]            ; 0x2361
    mov ax, 0                        ; 0x2364
    push ax                          ; 0x2367
    mov ax, 0x64                     ; 0x2368
    imul word [bp - 0x14]            ; 0x236b
    add ax, strict word 0x64         ; 0x236e
    mov cx, word [bp - 0x44]         ; 0x2371
    add cx, byte -7                  ; 0x2374
    cwd                              ; 0x2377
    idiv cx                          ; 0x2378
    imul word [bp - 0x18]            ; 0x237a
    mov cx, 0x64                     ; 0x237d
    cwd                              ; 0x2380
    idiv cx                          ; 0x2381
    push ax                          ; 0x2383
    call clamp_between               ; 0x2384
    add sp, byte 6                   ; 0x2387
    mov word [bp - 0x12], ax         ; 0x238a
action_spell_dialog.forward14:
    push word [bp - 0x24]            ; 0x238d
    push word [bp - 0x22]            ; 0x2390
    push word [bp - 0x18]            ; 0x2393
    mov ax, 7                        ; 0x2396
    push ax                          ; 0x2399
    mov ax, 0xf                      ; 0x239a
    push ax                          ; 0x239d
    mov ax, word [bp - 6]            ; 0x239e
    add ax, strict word 0x22         ; 0x23a1
    push ax                          ; 0x23a4
    mov ax, word [bp - 0xc]          ; 0x23a5
    add ax, strict word 6            ; 0x23a8
    push ax                          ; 0x23ab
    call draw_text_list              ; 0x23ac
    add sp, byte 0xe                 ; 0x23af
    push word [bp - 0x12]            ; 0x23b2
    mov ax, 7                        ; 0x23b5
    push ax                          ; 0x23b8
    mov ax, 8                        ; 0x23b9
    push ax                          ; 0x23bc
    mov ax, word [bp - 6]            ; 0x23bd
    add ax, strict word 0x22         ; 0x23c0
    push ax                          ; 0x23c3
    mov ax, word [bp - 0xc]          ; 0x23c4
    add ax, strict word 0x6a         ; 0x23c7
    push ax                          ; 0x23ca
    call draw_scrollbar              ; 0x23cb
    add sp, byte 0xa                 ; 0x23ce
    mov ax, 0                        ; 0x23d1
    push ax                          ; 0x23d4
    push ax                          ; 0x23d5
    mov ax, word [bp - 6]            ; 0x23d6
    add ax, word [bp - 0x12]         ; 0x23d9
    add ax, strict word 0x2e         ; 0x23dc
    push ax                          ; 0x23df
    mov ax, word [bp - 0xc]          ; 0x23e0
    add ax, strict word 0x72         ; 0x23e3
    push ax                          ; 0x23e6
    mov ax, word [bp - 6]            ; 0x23e7
    add ax, word [bp - 0x12]         ; 0x23ea
    add ax, strict word 0x2a         ; 0x23ed
    push ax                          ; 0x23f0
    mov ax, word [bp - 0xc]          ; 0x23f1
    add ax, strict word 0x6a         ; 0x23f4
    push ax                          ; 0x23f7
    mov ax, 0                        ; 0x23f8
    push ax                          ; 0x23fb
    call set_hotspot                 ; 0x23fc
    add sp, byte 0xe                 ; 0x23ff
    mov ax, word [bp - 6]            ; 0x2402
    add ax, strict word 0x4c         ; 0x2405
    push ax                          ; 0x2408
    mov ax, word [bp - 0xc]          ; 0x2409
    add ax, strict word 0x72         ; 0x240c
    push ax                          ; 0x240f
    mov ax, word [bp - 6]            ; 0x2410
    add ax, strict word 0x22         ; 0x2413
    push ax                          ; 0x2416
    mov ax, word [bp - 0xc]          ; 0x2417
    add ax, strict word 6            ; 0x241a
    push ax                          ; 0x241d
    call gfx_show_area               ; 0x241e
    add sp, byte 8                   ; 0x2421
    jmp near action_spell_dialog.forward43 ; 0x2424
jumptable_28e9_case_3:
    cmp word [bp + 8], byte 0        ; 0x2427
    jne short action_spell_dialog.forward15 ; 0x242b
    jmp near action_spell_dialog.forward20 ; 0x242d
action_spell_dialog.forward15:
    cmp word [bp - 0x3c], byte 0     ; 0x2430
    jge short action_spell_dialog.forward16 ; 0x2434
    jmp near action_spell_dialog.forward19 ; 0x2436
action_spell_dialog.forward16:
    cmp word [bp + 0xa], byte 0      ; 0x2439
    je short action_spell_dialog.forward18 ; 0x243d
    mov ax, word [bp - 0x3e]         ; 0x243f
    cmp ax, word [bp - 0x40]         ; 0x2442
    jle short action_spell_dialog.forward17 ; 0x2445
    jmp near action_spell_dialog.forward19 ; 0x2447
action_spell_dialog.forward17:
    mov ax, 6                        ; 0x244a
    imul word [bp - 0x3c]            ; 0x244d
    mov bx, ax                       ; 0x2450
    mov al, byte [bx + spell_table + spell_table_rec.f_0002] ; 0x2452
    sub ah, ah                       ; 0x2456
    mov cx, word [bp - 0x3e]         ; 0x2458
    inc cx                           ; 0x245b
    imul cx                          ; 0x245c
    push ax                          ; 0x245e
    mov ax, 0x248                    ; 0x245f
    imul word [bp + 4]               ; 0x2462
    mov cx, ax                       ; 0x2465
    mov dx, word [bp - 0x42]         ; 0x2467
    shl dx, 1                        ; 0x246a
    shl dx, 1                        ; 0x246c
    add ax, dx                       ; 0x246e
    mov bx, ax                       ; 0x2470
    mov cx, word [bx + party_records + pc_rec.realm_points] ; 0x2472
    pop ax                           ; 0x2476
    cmp ax, cx                       ; 0x2477
    jg short action_spell_dialog.forward19 ; 0x2479
action_spell_dialog.forward18:
    mov ax, 1                        ; 0x247b
    push ax                          ; 0x247e
    push ax                          ; 0x247f
    mov ax, 8                        ; 0x2480
    push ax                          ; 0x2483
    mov ax, word [bp - 6]            ; 0x2484
    add ax, strict word 6            ; 0x2487
    push ax                          ; 0x248a
    mov ax, word [bp - 0xc]          ; 0x248b
    add ax, strict word 6            ; 0x248e
    push ax                          ; 0x2491
    call flash_button                ; 0x2492
    add sp, byte 0xa                 ; 0x2495
    mov ax, 0                        ; 0x2498
    push ax                          ; 0x249b
    mov ax, 1                        ; 0x249c
    push ax                          ; 0x249f
    mov ax, 8                        ; 0x24a0
    push ax                          ; 0x24a3
    mov ax, word [bp - 6]            ; 0x24a4
    add ax, strict word 6            ; 0x24a7
    push ax                          ; 0x24aa
    mov ax, word [bp - 0xc]          ; 0x24ab
    add ax, strict word 6            ; 0x24ae
    push ax                          ; 0x24b1
    call flash_button                ; 0x24b2
    add sp, byte 0xa                 ; 0x24b5
    mov word [spell_dialog_button], 0 ; 0x24b8
    mov word [bp - 0x1c], 0          ; 0x24be
action_spell_dialog.forward19:
    cmp word [bp - 0x1c], byte 0     ; 0x24c3
    je short action_spell_dialog.forward20 ; 0x24c7
    mov ax, 0                        ; 0x24c9
    push ax                          ; 0x24cc
    call play_sound_effect           ; 0x24cd
    pop cx                           ; 0x24d0
action_spell_dialog.forward20:
    jmp near action_spell_dialog.forward43 ; 0x24d1
jumptable_28e9_case_4:
    mov ax, 1                        ; 0x24d4
    push ax                          ; 0x24d7
    push ax                          ; 0x24d8
    mov ax, 8                        ; 0x24d9
    push ax                          ; 0x24dc
    mov ax, word [bp - 6]            ; 0x24dd
    add ax, strict word 6            ; 0x24e0
    push ax                          ; 0x24e3
    mov ax, word [bp - 0xc]          ; 0x24e4
    add ax, strict word 0x42         ; 0x24e7
    push ax                          ; 0x24ea
    call flash_button                ; 0x24eb
    add sp, byte 0xa                 ; 0x24ee
    mov ax, 0                        ; 0x24f1
    push ax                          ; 0x24f4
    mov ax, 1                        ; 0x24f5
    push ax                          ; 0x24f8
    mov ax, 8                        ; 0x24f9
    push ax                          ; 0x24fc
    mov ax, word [bp - 6]            ; 0x24fd
    add ax, strict word 6            ; 0x2500
    push ax                          ; 0x2503
    mov ax, word [bp - 0xc]          ; 0x2504
    add ax, strict word 0x42         ; 0x2507
    push ax                          ; 0x250a
    call flash_button                ; 0x250b
    add sp, byte 0xa                 ; 0x250e
    mov word [spell_dialog_button], 1 ; 0x2511
    mov word [bp - 0x1c], 0          ; 0x2517
    jmp near action_spell_dialog.forward43 ; 0x251c
action_spell_dialog.back7:
    cmp word [bp - 0x1a], byte 5     ; 0x251f
    jge short action_spell_dialog.forward21 ; 0x2523
    jmp near action_spell_dialog.forward29 ; 0x2525
action_spell_dialog.forward21:
    cmp word [bp - 0x1a], byte 0xb   ; 0x2528
    jle short action_spell_dialog.forward22 ; 0x252c
    jmp near action_spell_dialog.forward29 ; 0x252e
action_spell_dialog.forward22:
    mov ax, 0                        ; 0x2531
    push ax                          ; 0x2534
    push word [bp - 0x3e]            ; 0x2535
    mov ax, word [bp - 6]            ; 0x2538
    add ax, strict word 0x14         ; 0x253b
    push ax                          ; 0x253e
    mov ax, word [bp - 0xc]          ; 0x253f
    add ax, strict word 0xc          ; 0x2542
    push ax                          ; 0x2545
    call draw_power_digit            ; 0x2546
    add sp, byte 8                   ; 0x2549
    mov ax, word [bp - 0x1a]         ; 0x254c
    add ax, strict word 0xfffb       ; 0x254f
    mov word [bp - 0x3e], ax         ; 0x2552
    mov ax, 1                        ; 0x2555
    push ax                          ; 0x2558
    push word [bp - 0x3e]            ; 0x2559
    mov ax, word [bp - 6]            ; 0x255c
    add ax, strict word 0x14         ; 0x255f
    push ax                          ; 0x2562
    mov ax, word [bp - 0xc]          ; 0x2563
    add ax, strict word 0xc          ; 0x2566
    push ax                          ; 0x2569
    call draw_power_digit            ; 0x256a
    add sp, byte 8                   ; 0x256d
    cmp word [bp - 0x3c], byte 0     ; 0x2570
    jge short action_spell_dialog.forward23 ; 0x2574
    jmp near action_spell_dialog.forward27 ; 0x2576
action_spell_dialog.forward23:
    mov ax, 6                        ; 0x2579
    push ax                          ; 0x257c
    mov ax, 0                        ; 0x257d
    push ax                          ; 0x2580
    mov ax, 0x248                    ; 0x2581
    imul word [bp + 4]               ; 0x2584
    mov bx, ax                       ; 0x2587
    mov ax, word [bx + party_records + pc_rec.power_cap] ; 0x2589
    push ax                          ; 0x258d
    mov ax, 6                        ; 0x258e
    imul word [bp - 0x3c]            ; 0x2591
    mov bx, ax                       ; 0x2594
    mov al, byte [bx + spell_table + spell_table_rec.f_0001] ; 0x2596
    sub ah, ah                       ; 0x259a
    mov cx, ax                       ; 0x259c
    pop ax                           ; 0x259e
    sub ax, cx                       ; 0x259f
    push ax                          ; 0x25a1
    call clamp_between               ; 0x25a2
    add sp, byte 6                   ; 0x25a5
    mov word [bp - 0x40], ax         ; 0x25a8
    mov ax, 6                        ; 0x25ab
    imul word [bp - 0x3c]            ; 0x25ae
    mov bx, ax                       ; 0x25b1
    mov al, byte [bx + spell_table + spell_table_rec.f_0002] ; 0x25b3
    sub ah, ah                       ; 0x25b7
    mov cx, word [bp - 0x40]         ; 0x25b9
    inc cx                           ; 0x25bc
    imul cx                          ; 0x25bd
    mov word [bp - 2], ax            ; 0x25bf
    cmp word [bp + 0xa], byte 0      ; 0x25c2
    jne short action_spell_dialog.forward24 ; 0x25c6
    mov ax, 0x3e7                    ; 0x25c8
    jmp short action_spell_dialog.forward26 ; 0x25cb
action_spell_dialog.forward24:
    mov ax, 0x248                    ; 0x25cd
    imul word [bp + 4]               ; 0x25d0
    mov cx, word [bp - 0x42]         ; 0x25d3
    shl cx, 1                        ; 0x25d6
    shl cx, 1                        ; 0x25d8
    add ax, cx                       ; 0x25da
    mov bx, ax                       ; 0x25dc
    mov ax, word [bx + party_records + pc_rec.realm_points] ; 0x25de
    cmp ax, word [bp - 2]            ; 0x25e2
    jge short action_spell_dialog.forward25 ; 0x25e5
    jmp short action_spell_dialog.forward26 ; 0x25e7
action_spell_dialog.forward25:
    mov ax, word [bp - 2]            ; 0x25e9
action_spell_dialog.forward26:
    push ax                          ; 0x25ec
    mov ax, 6                        ; 0x25ed
    imul word [bp - 0x3c]            ; 0x25f0
    mov bx, ax                       ; 0x25f3
    mov al, byte [bx + spell_table + spell_table_rec.f_0002] ; 0x25f5
    sub ah, ah                       ; 0x25f9
    mov cx, word [bp - 0x3e]         ; 0x25fb
    inc cx                           ; 0x25fe
    imul cx                          ; 0x25ff
    push ax                          ; 0x2601
    push word [bp - 0x42]            ; 0x2602
    mov ax, word [bp - 6]            ; 0x2605
    add ax, strict word 0x15         ; 0x2608
    push ax                          ; 0x260b
    mov ax, word [bp - 0xc]          ; 0x260c
    add ax, strict word 0x5e         ; 0x260f
    push ax                          ; 0x2612
    call loc_VGIT                    ; 0x2613
    add sp, byte 0xa                 ; 0x2616
    jmp short action_spell_dialog.forward28 ; 0x2619
action_spell_dialog.forward27:
    mov ax, 0                        ; 0x261b
    push ax                          ; 0x261e
    push ax                          ; 0x261f
    push word [bp - 0x42]            ; 0x2620
    mov ax, word [bp - 6]            ; 0x2623
    add ax, strict word 0x15         ; 0x2626
    push ax                          ; 0x2629
    mov ax, word [bp - 0xc]          ; 0x262a
    add ax, strict word 0x5e         ; 0x262d
    push ax                          ; 0x2630
    call loc_VGIT                    ; 0x2631
    add sp, byte 0xa                 ; 0x2634
action_spell_dialog.forward28:
    mov ax, word [bp - 6]            ; 0x2637
    add ax, strict word 0x1c         ; 0x263a
    push ax                          ; 0x263d
    mov ax, word [bp - 0xc]          ; 0x263e
    add ax, strict word 0x56         ; 0x2641
    push ax                          ; 0x2644
    mov ax, word [bp - 6]            ; 0x2645
    add ax, strict word 0x14         ; 0x2648
    push ax                          ; 0x264b
    mov ax, word [bp - 0xc]          ; 0x264c
    add ax, strict word 0xb          ; 0x264f
    push ax                          ; 0x2652
    call gfx_show_area               ; 0x2653
    add sp, byte 8                   ; 0x2656
    mov ax, word [bp - 6]            ; 0x2659
    add ax, strict word 0x1b         ; 0x265c
    push ax                          ; 0x265f
    mov ax, word [bp - 0xc]          ; 0x2660
    add ax, strict word 0x72         ; 0x2663
    push ax                          ; 0x2666
    mov ax, word [bp - 6]            ; 0x2667
    add ax, strict word 0x15         ; 0x266a
    push ax                          ; 0x266d
    mov ax, word [bp - 0xc]          ; 0x266e
    add ax, strict word 0x5e         ; 0x2671
    push ax                          ; 0x2674
    call gfx_show_area               ; 0x2675
    add sp, byte 8                   ; 0x2678
    jmp near action_spell_dialog.forward40 ; 0x267b
action_spell_dialog.forward29:
    cmp word [bp - 0x1a], byte 0xc   ; 0x267e
    jge short action_spell_dialog.forward30 ; 0x2682
    jmp near action_spell_dialog.forward34 ; 0x2684
action_spell_dialog.forward30:
    cmp word [bp - 0x1a], byte 0x11  ; 0x2687
    jle short action_spell_dialog.forward31 ; 0x268b
    jmp near action_spell_dialog.forward34 ; 0x268d
action_spell_dialog.forward31:
    mov ax, word [bp - 0x1a]         ; 0x2690
    add ax, strict word 0xfff4       ; 0x2693
    mov word [bp - 0x42], ax         ; 0x2696
    mov word [bp - 0x3c], 0xffff     ; 0x2699
    push ax                          ; 0x269e
    push word [bp + 4]               ; 0x269f
    call api_idx_0004_OQNP           ; 0x26a2
    add sp, byte 4                   ; 0x26a5
    mov word [bp - 0x44], ax         ; 0x26a8
    mov ax, 7                        ; 0x26ab
    cmp word [bp - 0x44], byte 7     ; 0x26ae
    jge short action_spell_dialog.forward32 ; 0x26b2
    mov ax, word [bp - 0x44]         ; 0x26b4
action_spell_dialog.forward32:
    mov word [bp - 0x24], ax         ; 0x26b7
    mov ax, 7                        ; 0x26ba
    cmp word [bp - 0x44], byte 7     ; 0x26bd
    jge short action_spell_dialog.forward33 ; 0x26c1
    mov ax, word [bp - 0x44]         ; 0x26c3
action_spell_dialog.forward33:
    mov word [bp - 0x20], ax         ; 0x26c6
    mov word [bp - 0x18], 0          ; 0x26c9
    mov word [bp - 0x22], 0xffff     ; 0x26ce
    push word [bp - 0x24]            ; 0x26d3
    push word [bp - 0x22]            ; 0x26d6
    push word [bp - 0x18]            ; 0x26d9
    mov ax, 7                        ; 0x26dc
    push ax                          ; 0x26df
    mov ax, 0xf                      ; 0x26e0
    push ax                          ; 0x26e3
    mov ax, word [bp - 6]            ; 0x26e4
    add ax, strict word 0x22         ; 0x26e7
    push ax                          ; 0x26ea
    mov ax, word [bp - 0xc]          ; 0x26eb
    add ax, strict word 6            ; 0x26ee
    push ax                          ; 0x26f1
    call draw_text_list              ; 0x26f2
    add sp, byte 0xe                 ; 0x26f5
    mov word [bp - 0x12], 0          ; 0x26f8
    push word [bp - 0x12]            ; 0x26fd
    mov ax, 7                        ; 0x2700
    push ax                          ; 0x2703
    mov ax, 8                        ; 0x2704
    push ax                          ; 0x2707
    mov ax, word [bp - 6]            ; 0x2708
    add ax, strict word 0x22         ; 0x270b
    push ax                          ; 0x270e
    mov ax, word [bp - 0xc]          ; 0x270f
    add ax, strict word 0x6a         ; 0x2712
    push ax                          ; 0x2715
    call draw_scrollbar              ; 0x2716
    add sp, byte 0xa                 ; 0x2719
    mov ax, 0                        ; 0x271c
    push ax                          ; 0x271f
    push ax                          ; 0x2720
    mov ax, word [bp - 6]            ; 0x2721
    add ax, word [bp - 0x12]         ; 0x2724
    add ax, strict word 0x2e         ; 0x2727
    push ax                          ; 0x272a
    mov ax, word [bp - 0xc]          ; 0x272b
    add ax, strict word 0x72         ; 0x272e
    push ax                          ; 0x2731
    mov ax, word [bp - 6]            ; 0x2732
    add ax, word [bp - 0x12]         ; 0x2735
    add ax, strict word 0x2a         ; 0x2738
    push ax                          ; 0x273b
    mov ax, word [bp - 0xc]          ; 0x273c
    add ax, strict word 0x6a         ; 0x273f
    push ax                          ; 0x2742
    mov ax, 0                        ; 0x2743
    push ax                          ; 0x2746
    call set_hotspot                 ; 0x2747
    add sp, byte 0xe                 ; 0x274a
    mov ax, 0                        ; 0x274d
    push ax                          ; 0x2750
    push ax                          ; 0x2751
    push word [bp - 0x42]            ; 0x2752
    mov ax, word [bp - 6]            ; 0x2755
    add ax, strict word 0x15         ; 0x2758
    push ax                          ; 0x275b
    mov ax, word [bp - 0xc]          ; 0x275c
    add ax, strict word 0x5e         ; 0x275f
    push ax                          ; 0x2762
    call loc_VGIT                    ; 0x2763
    add sp, byte 0xa                 ; 0x2766
    mov ax, word [bp - 6]            ; 0x2769
    add ax, strict word 0x4c         ; 0x276c
    push ax                          ; 0x276f
    mov ax, word [bp - 0xc]          ; 0x2770
    add ax, strict word 0x72         ; 0x2773
    push ax                          ; 0x2776
    mov ax, word [bp - 6]            ; 0x2777
    add ax, strict word 0x22         ; 0x277a
    push ax                          ; 0x277d
    mov ax, word [bp - 0xc]          ; 0x277e
    add ax, strict word 6            ; 0x2781
    push ax                          ; 0x2784
    call gfx_show_area               ; 0x2785
    add sp, byte 8                   ; 0x2788
    mov ax, word [bp - 6]            ; 0x278b
    add ax, strict word 0x1b         ; 0x278e
    push ax                          ; 0x2791
    mov ax, word [bp - 0xc]          ; 0x2792
    add ax, strict word 0x72         ; 0x2795
    push ax                          ; 0x2798
    mov ax, word [bp - 6]            ; 0x2799
    add ax, strict word 0x15         ; 0x279c
    push ax                          ; 0x279f
    mov ax, word [bp - 0xc]          ; 0x27a0
    add ax, strict word 0x5e         ; 0x27a3
    push ax                          ; 0x27a6
    call gfx_show_area               ; 0x27a7
    add sp, byte 8                   ; 0x27aa
    jmp near action_spell_dialog.forward40 ; 0x27ad
action_spell_dialog.forward34:
    cmp word [bp - 0x1a], byte 0x12  ; 0x27b0
    jge short action_spell_dialog.forward35 ; 0x27b4
    jmp near action_spell_dialog.forward40 ; 0x27b6
action_spell_dialog.forward35:
    mov ax, word [bp - 0x20]         ; 0x27b9
    add ax, strict word 0x12         ; 0x27bc
    cmp ax, word [bp - 0x1a]         ; 0x27bf
    jg short action_spell_dialog.forward36 ; 0x27c2
    jmp near action_spell_dialog.forward40 ; 0x27c4
action_spell_dialog.forward36:
    mov ax, word [bp - 0x18]         ; 0x27c7
    add ax, word [bp - 0x1a]         ; 0x27ca
    add ax, strict word 0xffee       ; 0x27cd
    mov word [bp - 0x22], ax         ; 0x27d0
    shl ax, 1                        ; 0x27d3
    mov bx, ax                       ; 0x27d5
    mov ax, word [bx + known_spell_ids] ; 0x27d7
    mov word [bp - 0x3c], ax         ; 0x27db
    push word [bp - 0x24]            ; 0x27de
    push word [bp - 0x22]            ; 0x27e1
    push word [bp - 0x18]            ; 0x27e4
    mov ax, 7                        ; 0x27e7
    push ax                          ; 0x27ea
    mov ax, 0xf                      ; 0x27eb
    push ax                          ; 0x27ee
    mov ax, word [bp - 6]            ; 0x27ef
    add ax, strict word 0x22         ; 0x27f2
    push ax                          ; 0x27f5
    mov ax, word [bp - 0xc]          ; 0x27f6
    add ax, strict word 6            ; 0x27f9
    push ax                          ; 0x27fc
    call draw_text_list              ; 0x27fd
    add sp, byte 0xe                 ; 0x2800
    mov ax, 6                        ; 0x2803
    push ax                          ; 0x2806
    mov ax, 0                        ; 0x2807
    push ax                          ; 0x280a
    mov ax, 0x248                    ; 0x280b
    imul word [bp + 4]               ; 0x280e
    mov bx, ax                       ; 0x2811
    mov ax, word [bx + party_records + pc_rec.power_cap] ; 0x2813
    push ax                          ; 0x2817
    mov ax, 6                        ; 0x2818
    imul word [bp - 0x3c]            ; 0x281b
    mov bx, ax                       ; 0x281e
    mov al, byte [bx + spell_table + spell_table_rec.f_0001] ; 0x2820
    sub ah, ah                       ; 0x2824
    mov cx, ax                       ; 0x2826
    pop ax                           ; 0x2828
    sub ax, cx                       ; 0x2829
    push ax                          ; 0x282b
    call clamp_between               ; 0x282c
    add sp, byte 6                   ; 0x282f
    mov word [bp - 0x40], ax         ; 0x2832
    mov ax, 6                        ; 0x2835
    imul word [bp - 0x3c]            ; 0x2838
    mov bx, ax                       ; 0x283b
    mov al, byte [bx + spell_table + spell_table_rec.f_0002] ; 0x283d
    sub ah, ah                       ; 0x2841
    mov cx, word [bp - 0x40]         ; 0x2843
    inc cx                           ; 0x2846
    imul cx                          ; 0x2847
    mov word [bp - 2], ax            ; 0x2849
    cmp word [bp + 0xa], byte 0      ; 0x284c
    jne short action_spell_dialog.forward37 ; 0x2850
    mov ax, 0x3e7                    ; 0x2852
    jmp short action_spell_dialog.forward39 ; 0x2855
action_spell_dialog.forward37:
    mov ax, 0x248                    ; 0x2857
    imul word [bp + 4]               ; 0x285a
    mov cx, word [bp - 0x42]         ; 0x285d
    shl cx, 1                        ; 0x2860
    shl cx, 1                        ; 0x2862
    add ax, cx                       ; 0x2864
    mov bx, ax                       ; 0x2866
    mov ax, word [bx + party_records + pc_rec.realm_points] ; 0x2868
    cmp ax, word [bp - 2]            ; 0x286c
    jge short action_spell_dialog.forward38 ; 0x286f
    jmp short action_spell_dialog.forward39 ; 0x2871
action_spell_dialog.forward38:
    mov ax, word [bp - 2]            ; 0x2873
action_spell_dialog.forward39:
    push ax                          ; 0x2876
    mov ax, 6                        ; 0x2877
    imul word [bp - 0x3c]            ; 0x287a
    mov bx, ax                       ; 0x287d
    mov al, byte [bx + spell_table + spell_table_rec.f_0002] ; 0x287f
    sub ah, ah                       ; 0x2883
    mov cx, word [bp - 0x3e]         ; 0x2885
    inc cx                           ; 0x2888
    imul cx                          ; 0x2889
    push ax                          ; 0x288b
    push word [bp - 0x42]            ; 0x288c
    mov ax, word [bp - 6]            ; 0x288f
    add ax, strict word 0x15         ; 0x2892
    push ax                          ; 0x2895
    mov ax, word [bp - 0xc]          ; 0x2896
    add ax, strict word 0x5e         ; 0x2899
    push ax                          ; 0x289c
    call loc_VGIT                    ; 0x289d
    add sp, byte 0xa                 ; 0x28a0
    mov ax, word [bp - 6]            ; 0x28a3
    add ax, strict word 0x4c         ; 0x28a6
    push ax                          ; 0x28a9
    mov ax, word [bp - 0xc]          ; 0x28aa
    add ax, strict word 0x72         ; 0x28ad
    push ax                          ; 0x28b0
    mov ax, word [bp - 6]            ; 0x28b1
    add ax, strict word 0x22         ; 0x28b4
    push ax                          ; 0x28b7
    mov ax, word [bp - 0xc]          ; 0x28b8
    add ax, strict word 6            ; 0x28bb
    push ax                          ; 0x28be
    call gfx_show_area               ; 0x28bf
    add sp, byte 8                   ; 0x28c2
    mov ax, word [bp - 6]            ; 0x28c5
    add ax, strict word 0x1b         ; 0x28c8
    push ax                          ; 0x28cb
    mov ax, word [bp - 0xc]          ; 0x28cc
    add ax, strict word 0x72         ; 0x28cf
    push ax                          ; 0x28d2
    mov ax, word [bp - 6]            ; 0x28d3
    add ax, strict word 0x15         ; 0x28d6
    push ax                          ; 0x28d9
    mov ax, word [bp - 0xc]          ; 0x28da
    add ax, strict word 0x5e         ; 0x28dd
    push ax                          ; 0x28e0
    call gfx_show_area               ; 0x28e1
    add sp, byte 8                   ; 0x28e4
action_spell_dialog.forward40:
    jmp short action_spell_dialog.forward43 ; 0x28e7
jumptable_28e9:
    dw jumptable_28e9_case_0 - IMAGE_BASE + __zres_end ; 0x28e9
    dw jumptable_28e9_case_1 - IMAGE_BASE + __zres_end ; 0x28eb
    dw jumptable_28e9_case_1 - IMAGE_BASE + __zres_end ; 0x28ed
    dw jumptable_28e9_case_3 - IMAGE_BASE + __zres_end ; 0x28ef
    dw jumptable_28e9_case_4 - IMAGE_BASE + __zres_end ; 0x28f1
action_spell_dialog.forward41:
    cmp ax, strict word 5            ; 0x28f3
    jae short action_spell_dialog.forward42 ; 0x28f6
    xchg bx, ax                      ; 0x28f8
    shl bx, 1                        ; 0x28f9
    jmp [cs:bx + jumptable_28e9 - IMAGE_BASE + __zres_end] ; 0x28fb
action_spell_dialog.forward42:
    jmp near action_spell_dialog.back7 ; 0x2900
action_spell_dialog.forward43:
    cmp word [bp - 0x1c], byte 0     ; 0x2903
    je short action_spell_dialog.forward44 ; 0x2907
    jmp near action_spell_dialog.back5 ; 0x2909
action_spell_dialog.forward44:
    mov ax, 1                        ; 0x290c
    push ax                          ; 0x290f
    push word [bp - 0x3a]            ; 0x2910
    call restore_saved_screen        ; 0x2913
    add sp, byte 4                   ; 0x2916
    mov ax, word [bp - 0xa]          ; 0x2919
    inc ax                           ; 0x291c
    push ax                          ; 0x291d
    mov ax, word [bp - 8]            ; 0x291e
    inc ax                           ; 0x2921
    push ax                          ; 0x2922
    mov ax, word [bp - 6]            ; 0x2923
    dec ax                           ; 0x2926
    push ax                          ; 0x2927
    mov ax, word [bp - 4]            ; 0x2928
    dec ax                           ; 0x292b
    push ax                          ; 0x292c
    call gfx_show_area               ; 0x292d
    add sp, byte 8                   ; 0x2930
    mov ax, word [bp - 0x3e]         ; 0x2933
    xchg al, ah                      ; 0x2936
    sub al, al                       ; 0x2938
    add ax, word [bp - 0x3c]         ; 0x293a
    add ax, 0x100                    ; 0x293d
    mov word [spell_dialog_result], ax ; 0x2940
    mov ax, word [spell_dialog_button] ; 0x2943
    ret                              ; 0x2946
