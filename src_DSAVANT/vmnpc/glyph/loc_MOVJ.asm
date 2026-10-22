; auto-generated
loc_MOVJ:
    mov ax, 0xfea6                   ; 0x1d39
    call aztec_csav                  ; 0x1d3c
    mov ax, word [bp + 0x16]         ; 0x1d3f
    dec ax                           ; 0x1d42
    cwd                              ; 0x1d43
    idiv word [bp + 0x14]            ; 0x1d44
    inc ax                           ; 0x1d47
    imul word [bp + 0x10]            ; 0x1d48
    add ax, word [bp + 0xa]          ; 0x1d4b
    push ax                          ; 0x1d4e
    mov ax, 6                        ; 0x1d4f
    imul word [bp + 0xe]             ; 0x1d52
    mov dx, ax                       ; 0x1d55
    mov cx, word [bp + 0x10]         ; 0x1d57
    sub cx, ax                       ; 0x1d5a
    pop ax                           ; 0x1d5c
    sub ax, cx                       ; 0x1d5d
    mov word [bp - 0x0006], ax       ; 0x1d5f
    mov ax, word [bp + 0x12]         ; 0x1d62
    imul word [bp + 0x14]            ; 0x1d65
    add ax, word [bp + 0xc]          ; 0x1d68
    mov cx, word [bp + 0x12]         ; 0x1d6b
    add cx, byte 0xf7                ; 0x1d6e
    sub ax, cx                       ; 0x1d71
    mov word [bp - 0x0008], ax       ; 0x1d73
    mov bx, word [bp + 0x4]          ; 0x1d76
    cmp byte [bx], 0                 ; 0x1d79
    jne short @..loc_MOVJ.l1         ; 0x1d7c
    jmp near @..loc_MOVJ.l2          ; 0x1d7e
@..loc_MOVJ.l1:
    mov ax, dseg_90c4                ; 0x1d81
    push ax                          ; 0x1d84
    mov ax, word [bp - 0x0008]       ; 0x1d85
    add ax, strict word 6            ; 0x1d88
    push ax                          ; 0x1d8b
    mov ax, word [bp - 0x0006]       ; 0x1d8c
    add ax, strict word 6            ; 0x1d8f
    push ax                          ; 0x1d92
    mov ax, word [bp + 0xc]          ; 0x1d93
    add ax, strict word 0xffeb       ; 0x1d96
    push ax                          ; 0x1d99
    mov ax, word [bp + 0xa]          ; 0x1d9a
    add ax, strict word 0xfffa       ; 0x1d9d
    push ax                          ; 0x1da0
    call save_screen_area            ; 0x1da1
    add sp, byte 0x0a                ; 0x1da4
    mov word [bp - 0x0158], ax       ; 0x1da7
    mov ax, word [bp - 0x0008]       ; 0x1dab
    add ax, strict word 5            ; 0x1dae
    push ax                          ; 0x1db1
    mov ax, word [bp - 0x0006]       ; 0x1db2
    add ax, strict word 5            ; 0x1db5
    push ax                          ; 0x1db8
    mov ax, word [bp + 0xc]          ; 0x1db9
    add ax, strict word 0xffec       ; 0x1dbc
    push ax                          ; 0x1dbf
    mov ax, word [bp + 0xa]          ; 0x1dc0
    add ax, strict word 0xfffb       ; 0x1dc3
    push ax                          ; 0x1dc6
    call draw_dialog_box             ; 0x1dc7
    add sp, byte 8                   ; 0x1dca
    mov ax, 0xc2                     ; 0x1dcd
    push ax                          ; 0x1dd0
    mov ax, 1                        ; 0x1dd1
    push ax                          ; 0x1dd4
    call gfx_set_text_color          ; 0x1dd5
    add sp, byte 4                   ; 0x1dd8
    mov ax, word [bp + 0xc]          ; 0x1ddb
    add ax, strict word 0xfff0       ; 0x1dde
    push ax                          ; 0x1de1
    push word [bp + 0x4]             ; 0x1de2
    call aztec_strlen                ; 0x1de5
    pop cx                           ; 0x1de8
    mov cx, 6                        ; 0x1de9
    imul cx                          ; 0x1dec
    mov cx, 2                        ; 0x1dee
    cwd                              ; 0x1df1
    idiv cx                          ; 0x1df2
    mov cx, ax                       ; 0x1df4
    mov ax, 0xa0                     ; 0x1df6
    sub ax, cx                       ; 0x1df9
    push ax                          ; 0x1dfb
    call gfx_set_text_pos            ; 0x1dfc
    add sp, byte 4                   ; 0x1dff
    mov ax, 0                        ; 0x1e02
    push ax                          ; 0x1e05
    push word [bp + 0x4]             ; 0x1e06
    call draw_string                 ; 0x1e09
    add sp, byte 4                   ; 0x1e0c
    mov ax, word [bp + 0xc]          ; 0x1e0f
    add ax, strict word 0xfff6       ; 0x1e12
    push ax                          ; 0x1e15
    push word [bp + 0x6]             ; 0x1e16
    call aztec_strlen                ; 0x1e19
    pop cx                           ; 0x1e1c
    mov cx, 6                        ; 0x1e1d
    imul cx                          ; 0x1e20
    mov cx, 2                        ; 0x1e22
    cwd                              ; 0x1e25
    idiv cx                          ; 0x1e26
    mov cx, ax                       ; 0x1e28
    mov ax, 0xa0                     ; 0x1e2a
    sub ax, cx                       ; 0x1e2d
    push ax                          ; 0x1e2f
    call gfx_set_text_pos            ; 0x1e30
    add sp, byte 4                   ; 0x1e33
    mov ax, 0                        ; 0x1e36
    push ax                          ; 0x1e39
    push word [bp + 0x6]             ; 0x1e3a
    call draw_string                 ; 0x1e3d
    add sp, byte 4                   ; 0x1e40
    jmp short @..loc_MOVJ.l3         ; 0x1e43
@..loc_MOVJ.l2:
    mov ax, dseg_90ca                ; 0x1e45
    push ax                          ; 0x1e48
    mov ax, word [bp - 0x0008]       ; 0x1e49
    inc ax                           ; 0x1e4c
    push ax                          ; 0x1e4d
    mov ax, word [bp - 0x0006]       ; 0x1e4e
    inc ax                           ; 0x1e51
    push ax                          ; 0x1e52
    mov ax, word [bp + 0xc]          ; 0x1e53
    dec ax                           ; 0x1e56
    push ax                          ; 0x1e57
    mov ax, word [bp + 0xa]          ; 0x1e58
    dec ax                           ; 0x1e5b
    push ax                          ; 0x1e5c
    call save_screen_area            ; 0x1e5d
    add sp, byte 0x0a                ; 0x1e60
    mov word [bp - 0x0158], ax       ; 0x1e63
@..loc_MOVJ.l3:
    mov word [bp - 0x0002], 0        ; 0x1e67
    mov word [bp - 0x0004], 0        ; 0x1e6c
@..loc_MOVJ.l4:
    mov ax, word [bp - 0x0004]       ; 0x1e71
    shl ax, 1                        ; 0x1e74
    mov si, ax                       ; 0x1e76
    mov bx, word [bp + 0x1e]         ; 0x1e78
    cmp word [bx + si], byte 0xff    ; 0x1e7b
    jne short @..loc_MOVJ.l5         ; 0x1e7e
    jmp near @..loc_MOVJ.l9          ; 0x1e80
@..loc_MOVJ.l5:
    cmp word [bx + si], byte 1       ; 0x1e83
    je short @..loc_MOVJ.l6          ; 0x1e86
    jmp near @..loc_MOVJ.l8          ; 0x1e88
@..loc_MOVJ.l6:
    mov ax, 0x14                     ; 0x1e8b
    imul word [bp - 0x0002]          ; 0x1e8e
    lea cx, word [bp - 0x0156]       ; 0x1e91
    add ax, cx                       ; 0x1e95
    push ax                          ; 0x1e97
    mov ax, word [bp + 0x8]          ; 0x1e98
    add ax, word [bp - 0x0004]       ; 0x1e9b
    push ax                          ; 0x1e9e
    call load_message_string         ; 0x1e9f
    add sp, byte 4                   ; 0x1ea2
    mov ax, word [bp - 0x0002]       ; 0x1ea5
    cwd                              ; 0x1ea8
    idiv word [bp + 0x14]            ; 0x1ea9
    imul word [bp + 0x10]            ; 0x1eac
    mov word [bp - 0x000a], ax       ; 0x1eaf
    mov ax, word [bp - 0x0002]       ; 0x1eb2
    cwd                              ; 0x1eb5
    idiv word [bp + 0x14]            ; 0x1eb6
    mov ax, dx                       ; 0x1eb9
    imul word [bp + 0x12]            ; 0x1ebb
    mov word [bp - 0x000c], ax       ; 0x1ebe
    mov ax, 0                        ; 0x1ec1
    push ax                          ; 0x1ec4
    mov ax, word [bp + 0xc]          ; 0x1ec5
    add ax, word [bp - 0x000c]       ; 0x1ec8
    add ax, strict word 8            ; 0x1ecb
    push ax                          ; 0x1ece
    mov ax, 6                        ; 0x1ecf
    imul word [bp + 0xe]             ; 0x1ed2
    add ax, word [bp + 0xa]          ; 0x1ed5
    add ax, word [bp - 0x000a]       ; 0x1ed8
    push ax                          ; 0x1edb
    mov ax, word [bp + 0xc]          ; 0x1edc
    add ax, word [bp - 0x000c]       ; 0x1edf
    push ax                          ; 0x1ee2
    mov ax, word [bp + 0xa]          ; 0x1ee3
    add ax, word [bp - 0x000a]       ; 0x1ee6
    push ax                          ; 0x1ee9
    call draw_bevel_frame            ; 0x1eea
    add sp, byte 0x0a                ; 0x1eed
    mov ax, 0xc0                     ; 0x1ef0
    push ax                          ; 0x1ef3
    mov ax, word [bp + 0x18]         ; 0x1ef4
    mov cx, word [bp - 0x0004]       ; 0x1ef7
    cmp cx, word [bp + 0x1a]         ; 0x1efa
    jne short @..loc_MOVJ.l7         ; 0x1efd
    mov ax, 0x1a                     ; 0x1eff
@..loc_MOVJ.l7:
    push ax                          ; 0x1f02
    call gfx_set_text_color          ; 0x1f03
    add sp, byte 4                   ; 0x1f06
    mov ax, word [bp + 0xc]          ; 0x1f09
    add ax, word [bp - 0x000c]       ; 0x1f0c
    inc ax                           ; 0x1f0f
    inc ax                           ; 0x1f10
    push ax                          ; 0x1f11
    mov ax, 0x14                     ; 0x1f12
    imul word [bp - 0x0002]          ; 0x1f15
    lea cx, word [bp - 0x0156]       ; 0x1f18
    add ax, cx                       ; 0x1f1c
    push ax                          ; 0x1f1e
    call aztec_strlen                ; 0x1f1f
    pop cx                           ; 0x1f22
    mov cx, ax                       ; 0x1f23
    mov ax, word [bp + 0xe]          ; 0x1f25
    sub ax, cx                       ; 0x1f28
    mov cx, 6                        ; 0x1f2a
    imul cx                          ; 0x1f2d
    mov cx, 2                        ; 0x1f2f
    cwd                              ; 0x1f32
    idiv cx                          ; 0x1f33
    add ax, word [bp + 0xa]          ; 0x1f35
    add ax, word [bp - 0x000a]       ; 0x1f38
    inc ax                           ; 0x1f3b
    push ax                          ; 0x1f3c
    call gfx_set_text_pos            ; 0x1f3d
    add sp, byte 4                   ; 0x1f40
    mov ax, 0                        ; 0x1f43
    push ax                          ; 0x1f46
    mov ax, 0x14                     ; 0x1f47
    imul word [bp - 0x0002]          ; 0x1f4a
    lea cx, word [bp - 0x0156]       ; 0x1f4d
    add ax, cx                       ; 0x1f51
    push ax                          ; 0x1f53
    call draw_string                 ; 0x1f54
    add sp, byte 4                   ; 0x1f57
    mov ax, 0                        ; 0x1f5a
    push ax                          ; 0x1f5d
    push ax                          ; 0x1f5e
    mov ax, word [bp + 0xc]          ; 0x1f5f
    add ax, word [bp - 0x000c]       ; 0x1f62
    add ax, strict word 8            ; 0x1f65
    push ax                          ; 0x1f68
    mov ax, 6                        ; 0x1f69
    imul word [bp + 0xe]             ; 0x1f6c
    add ax, word [bp + 0xa]          ; 0x1f6f
    add ax, word [bp - 0x000a]       ; 0x1f72
    push ax                          ; 0x1f75
    mov ax, word [bp + 0xc]          ; 0x1f76
    add ax, word [bp - 0x000c]       ; 0x1f79
    push ax                          ; 0x1f7c
    mov ax, word [bp + 0xa]          ; 0x1f7d
    add ax, word [bp - 0x000a]       ; 0x1f80
    push ax                          ; 0x1f83
    push word [bp - 0x0002]          ; 0x1f84
    call set_hotspot                 ; 0x1f87
    add sp, byte 0x0e                ; 0x1f8a
    mov ax, word [bp - 0x0004]       ; 0x1f8d
    mov cx, word [bp - 0x0002]       ; 0x1f90
    shl cx, 1                        ; 0x1f93
    mov bx, cx                       ; 0x1f95
    add bx, bp                       ; 0x1f97
    mov word [bx - 0x002a], ax       ; 0x1f99
    inc word [bp - 0x0002]           ; 0x1f9c
@..loc_MOVJ.l8:
    inc word [bp - 0x0004]           ; 0x1f9f
    jmp near @..loc_MOVJ.l4          ; 0x1fa2
@..loc_MOVJ.l9:
    mov ax, 0                        ; 0x1fa5
    push ax                          ; 0x1fa8
    push ax                          ; 0x1fa9
    push ax                          ; 0x1faa
    push ax                          ; 0x1fab
    push ax                          ; 0x1fac
    mov ax, 0xffff                   ; 0x1fad
    push ax                          ; 0x1fb0
    push word [bp - 0x0002]          ; 0x1fb1
    call set_hotspot                 ; 0x1fb4
    add sp, byte 0x0e                ; 0x1fb7
    mov ax, 0xc6                     ; 0x1fba
    push ax                          ; 0x1fbd
    mov ax, 0x109                    ; 0x1fbe
    push ax                          ; 0x1fc1
    mov ax, 0x8e                     ; 0x1fc2
    push ax                          ; 0x1fc5
    mov ax, 0x36                     ; 0x1fc6
    push ax                          ; 0x1fc9
    call gfx_show_area               ; 0x1fca
    add sp, byte 8                   ; 0x1fcd
    cmp word [bss_0e32], byte 0      ; 0x1fd0
    je short @..loc_MOVJ.l11         ; 0x1fd5
@..loc_MOVJ.l10:
    mov ax, 0x59fe                   ; 0x1fd7
    push ax                          ; 0x1fda
    call poll_hotspots               ; 0x1fdb
    pop cx                           ; 0x1fde
    mov word [bp - 0x0004], ax       ; 0x1fdf
    cmp word [hotspot_hit], byte 0   ; 0x1fe2
    je short @..loc_MOVJ.l10         ; 0x1fe7
    jmp near @..loc_MOVJ.l20         ; 0x1fe9
@..loc_MOVJ.l11:
    mov word [bp - 0x0004], 0        ; 0x1fec
@..loc_MOVJ.l12:
    mov ax, word [bp - 0x0004]       ; 0x1ff1
    cwd                              ; 0x1ff4
    idiv word [bp + 0x14]            ; 0x1ff5
    imul word [bp + 0x10]            ; 0x1ff8
    mov word [bp - 0x000a], ax       ; 0x1ffb
    mov ax, word [bp - 0x0004]       ; 0x1ffe
    cwd                              ; 0x2001
    idiv word [bp + 0x14]            ; 0x2002
    mov ax, dx                       ; 0x2005
    imul word [bp + 0x12]            ; 0x2007
    mov word [bp - 0x000c], ax       ; 0x200a
    mov ax, 0x16                     ; 0x200d
    push ax                          ; 0x2010
    mov ax, word [bp + 0xc]          ; 0x2011
    add ax, word [bp - 0x000c]       ; 0x2014
    add ax, strict word 8            ; 0x2017
    push ax                          ; 0x201a
    mov ax, 6                        ; 0x201b
    imul word [bp + 0xe]             ; 0x201e
    add ax, word [bp + 0xa]          ; 0x2021
    add ax, word [bp - 0x000a]       ; 0x2024
    push ax                          ; 0x2027
    mov ax, word [bp + 0xc]          ; 0x2028
    add ax, word [bp - 0x000c]       ; 0x202b
    push ax                          ; 0x202e
    mov ax, word [bp + 0xa]          ; 0x202f
    add ax, word [bp - 0x000a]       ; 0x2032
    push ax                          ; 0x2035
    call loc_MNNG                    ; 0x2036
    add sp, byte 0x0a                ; 0x2039
    mov ax, word [bp - 0x0008]       ; 0x203c
    inc ax                           ; 0x203f
    push ax                          ; 0x2040
    mov ax, word [bp - 0x0006]       ; 0x2041
    inc ax                           ; 0x2044
    push ax                          ; 0x2045
    mov ax, word [bp + 0xc]          ; 0x2046
    dec ax                           ; 0x2049
    push ax                          ; 0x204a
    mov ax, word [bp + 0xa]          ; 0x204b
    dec ax                           ; 0x204e
    push ax                          ; 0x204f
    call gfx_show_area               ; 0x2050
    add sp, byte 8                   ; 0x2053
    mov ax, 0                        ; 0x2056
    push ax                          ; 0x2059
    mov ax, word [bp + 0xc]          ; 0x205a
    add ax, word [bp - 0x000c]       ; 0x205d
    add ax, strict word 8            ; 0x2060
    push ax                          ; 0x2063
    mov ax, 6                        ; 0x2064
    imul word [bp + 0xe]             ; 0x2067
    add ax, word [bp + 0xa]          ; 0x206a
    add ax, word [bp - 0x000a]       ; 0x206d
    push ax                          ; 0x2070
    mov ax, word [bp + 0xc]          ; 0x2071
    add ax, word [bp - 0x000c]       ; 0x2074
    push ax                          ; 0x2077
    mov ax, word [bp + 0xa]          ; 0x2078
    add ax, word [bp - 0x000a]       ; 0x207b
    push ax                          ; 0x207e
    call loc_MNNG                    ; 0x207f
    add sp, byte 0x0a                ; 0x2082
@..loc_MOVJ.l13:
    mov ax, 1                        ; 0x2085
    push ax                          ; 0x2088
    call poll_filtered_key           ; 0x2089
    pop cx                           ; 0x208c
    test ax, ax                      ; 0x208d
    jne short @..loc_MOVJ.l14        ; 0x208f
    jmp short @..loc_MOVJ.l13        ; 0x2091
@..loc_MOVJ.l14:
    mov ax, 1                        ; 0x2093
    push ax                          ; 0x2096
    call get_filtered_key            ; 0x2097
    pop cx                           ; 0x209a
    sub ah, ah                       ; 0x209b
    mov word [bp - 0x015a], ax       ; 0x209d
    jmp short @..loc_MOVJ.l17        ; 0x20a1
@..loc_MOVJ.l15:
    mov ax, word [bp - 0x0004]       ; 0x20a3
    add ax, word [bp - 0x0002]       ; 0x20a6
    dec ax                           ; 0x20a9
    cwd                              ; 0x20aa
    idiv word [bp - 0x0002]          ; 0x20ab
    mov word [bp - 0x0004], dx       ; 0x20ae
    jmp short @..loc_MOVJ.l18        ; 0x20b1
@..loc_MOVJ.l16:
    mov ax, word [bp - 0x0004]       ; 0x20b3
    inc ax                           ; 0x20b6
    cwd                              ; 0x20b7
    idiv word [bp - 0x0002]          ; 0x20b8
    mov word [bp - 0x0004], dx       ; 0x20bb
    jmp short @..loc_MOVJ.l18        ; 0x20be
@..loc_MOVJ.l17:
    cmp ax, strict word 8            ; 0x20c0
    je short @..loc_MOVJ.l15         ; 0x20c3
    cmp ax, strict word 9            ; 0x20c5
    je short @..loc_MOVJ.l16         ; 0x20c8
    cmp ax, strict word 0xa          ; 0x20ca
    je short @..loc_MOVJ.l16         ; 0x20cd
    cmp ax, strict word 0xb          ; 0x20cf
    je short @..loc_MOVJ.l15         ; 0x20d2
@..loc_MOVJ.l18:
    cmp word [bp - 0x015a], byte 0x0d ; 0x20d4
    je short @..loc_MOVJ.l19         ; 0x20d9
    jmp near @..loc_MOVJ.l12         ; 0x20db
@..loc_MOVJ.l19:
    inc word [bp - 0x0004]           ; 0x20de
    mov ax, word [bp - 0x0008]       ; 0x20e1
    inc ax                           ; 0x20e4
    push ax                          ; 0x20e5
    mov ax, word [bp - 0x0006]       ; 0x20e6
    inc ax                           ; 0x20e9
    push ax                          ; 0x20ea
    mov ax, word [bp + 0xc]          ; 0x20eb
    dec ax                           ; 0x20ee
    push ax                          ; 0x20ef
    mov ax, word [bp + 0xa]          ; 0x20f0
    dec ax                           ; 0x20f3
    push ax                          ; 0x20f4
    call gfx_show_area               ; 0x20f5
    add sp, byte 8                   ; 0x20f8
@..loc_MOVJ.l20:
    dec word [bp - 0x0004]           ; 0x20fb
    mov ax, word [bp - 0x0004]       ; 0x20fe
    cwd                              ; 0x2101
    idiv word [bp + 0x14]            ; 0x2102
    imul word [bp + 0x10]            ; 0x2105
    mov word [bp - 0x000a], ax       ; 0x2108
    mov ax, word [bp - 0x0004]       ; 0x210b
    cwd                              ; 0x210e
    idiv word [bp + 0x14]            ; 0x210f
    mov ax, dx                       ; 0x2112
    imul word [bp + 0x12]            ; 0x2114
    mov word [bp - 0x000c], ax       ; 0x2117
    mov ax, 1                        ; 0x211a
    push ax                          ; 0x211d
    push ax                          ; 0x211e
    push word [bp + 0xe]             ; 0x211f
    mov ax, word [bp + 0xc]          ; 0x2122
    add ax, word [bp - 0x000c]       ; 0x2125
    push ax                          ; 0x2128
    mov ax, word [bp + 0xa]          ; 0x2129
    add ax, word [bp - 0x000a]       ; 0x212c
    push ax                          ; 0x212f
    call flash_button                ; 0x2130
    add sp, byte 0x0a                ; 0x2133
    mov ax, 0                        ; 0x2136
    push ax                          ; 0x2139
    mov ax, 1                        ; 0x213a
    push ax                          ; 0x213d
    push word [bp + 0xe]             ; 0x213e
    mov ax, word [bp + 0xc]          ; 0x2141
    add ax, word [bp - 0x000c]       ; 0x2144
    push ax                          ; 0x2147
    mov ax, word [bp + 0xa]          ; 0x2148
    add ax, word [bp - 0x000a]       ; 0x214b
    push ax                          ; 0x214e
    call flash_button                ; 0x214f
    add sp, byte 0x0a                ; 0x2152
    mov ax, 1                        ; 0x2155
    push ax                          ; 0x2158
    push word [bp - 0x0158]          ; 0x2159
    call restore_saved_screen        ; 0x215d
    add sp, byte 4                   ; 0x2160
    cmp word [bp + 0x1c], byte 0     ; 0x2163
    je short @..loc_MOVJ.l22         ; 0x2167
    mov bx, word [bp + 0x4]          ; 0x2169
    cmp byte [bx], 0                 ; 0x216c
    je short @..loc_MOVJ.l21         ; 0x216f
    mov ax, word [bp - 0x0008]       ; 0x2171
    add ax, strict word 6            ; 0x2174
    push ax                          ; 0x2177
    mov ax, word [bp - 0x0006]       ; 0x2178
    add ax, strict word 6            ; 0x217b
    push ax                          ; 0x217e
    mov ax, word [bp + 0xc]          ; 0x217f
    add ax, strict word 0xffeb       ; 0x2182
    push ax                          ; 0x2185
    mov ax, word [bp + 0xa]          ; 0x2186
    add ax, strict word 0xfffa       ; 0x2189
    push ax                          ; 0x218c
    call gfx_show_area               ; 0x218d
    add sp, byte 8                   ; 0x2190
    jmp short @..loc_MOVJ.l22        ; 0x2193
@..loc_MOVJ.l21:
    mov ax, word [bp - 0x0008]       ; 0x2195
    inc ax                           ; 0x2198
    push ax                          ; 0x2199
    mov ax, word [bp - 0x0006]       ; 0x219a
    inc ax                           ; 0x219d
    push ax                          ; 0x219e
    mov ax, word [bp + 0xc]          ; 0x219f
    dec ax                           ; 0x21a2
    push ax                          ; 0x21a3
    mov ax, word [bp + 0xa]          ; 0x21a4
    dec ax                           ; 0x21a7
    push ax                          ; 0x21a8
    call gfx_show_area               ; 0x21a9
    add sp, byte 8                   ; 0x21ac
@..loc_MOVJ.l22:
    mov ax, word [bp - 0x0004]       ; 0x21af
    mov word [bss_9052], ax          ; 0x21b2
    shl ax, 1                        ; 0x21b5
    mov bx, ax                       ; 0x21b7
    add bx, bp                       ; 0x21b9
    mov ax, word [bx - 0x002a]       ; 0x21bb
    ret                              ; 0x21be
