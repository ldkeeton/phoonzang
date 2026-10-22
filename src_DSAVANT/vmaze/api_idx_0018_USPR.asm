; auto-generated
api_idx_0018_USPR:
    mov ax, 0xffe8                   ; 0x1c94
    call aztec_csav                  ; 0x1c97
    call loc_OGHL                    ; 0x1c9a
    call ds_app_NNSU                 ; 0x1c9d
    mov word [bss_8450], ax          ; 0x1ca0
    test ax, ax                      ; 0x1ca3
    je short @..api_idx_0018_USPR.l1 ; 0x1ca5
    mov ax, 0                        ; 0x1ca7
    push ax                          ; 0x1caa
    mov ax, 1                        ; 0x1cab
    push ax                          ; 0x1cae
    call load_score_files            ; 0x1caf
    add sp, byte 4                   ; 0x1cb2
    mov ax, word [dseg_010e]         ; 0x1cb5
    mov word [bss_844e], ax          ; 0x1cb8
    mov ax, 0                        ; 0x1cbb
    push ax                          ; 0x1cbe
    push word [bss_844e]             ; 0x1cbf
    push ax                          ; 0x1cc3
    call ds_app_UKGP                 ; 0x1cc4
    add sp, byte 6                   ; 0x1cc7
    mov word [bss_844c], ax          ; 0x1cca
@..api_idx_0018_USPR.l1:
    mov ax, 0x7f4                    ; 0x1ccd
    push ax                          ; 0x1cd0
    call show_message                ; 0x1cd1
    pop cx                           ; 0x1cd4
    mov word [bss_91ae], 0           ; 0x1cd5
    mov ax, word [bss_8f1c]          ; 0x1cdb
    mov dx, word [bss_8f1e]          ; 0x1cde
    sub ax, word [bss_8f18]          ; 0x1ce2
    sbb dx, word [bss_8f1a]          ; 0x1ce6
    add word [bss_8f14], ax          ; 0x1cea
    adc word [bss_8f16], dx          ; 0x1cee
    mov ax, word [bss_8f14]          ; 0x1cf2
    mov dx, word [bss_8f16]          ; 0x1cf5
    mov cx, 0x3c                     ; 0x1cf9
    mov bx, 0                        ; 0x1cfc
    call aztec_ldv                   ; 0x1cff
    mov word [bp - 0x000c], ax       ; 0x1d02
    mov word [bp - 0x000e], 0        ; 0x1d05
@..api_idx_0018_USPR.l2:
    cmp word [bp - 0x000c], byte 4   ; 0x1d0a
    jl short @..api_idx_0018_USPR.l3 ; 0x1d0e
    inc word [bp - 0x000e]           ; 0x1d10
    add word [bp - 0x000c], byte 0xfc ; 0x1d13
    add word [bss_8f14], strict word 0xff10 ; 0x1d17
    adc word [bss_8f16], byte 0xff   ; 0x1d1d
    jmp short @..api_idx_0018_USPR.l2 ; 0x1d22
@..api_idx_0018_USPR.l3:
    mov ax, word [bss_8f1c]          ; 0x1d24
    mov dx, word [bss_8f1e]          ; 0x1d27
    mov word [bss_8f1a], dx          ; 0x1d2b
    mov word [bss_8f18], ax          ; 0x1d2f
    cmp word [bss_8450], byte 0      ; 0x1d32
    jne short @..api_idx_0018_USPR.l4 ; 0x1d37
    mov ax, 0x30                     ; 0x1d39
    jmp short @..api_idx_0018_USPR.l5 ; 0x1d3c
@..api_idx_0018_USPR.l4:
    mov ax, 0                        ; 0x1d3e
@..api_idx_0018_USPR.l5:
    mov word [bp - 0x0012], ax       ; 0x1d41
    mov word [bp - 0x0008], 0        ; 0x1d44
    mov word [bp - 0x0014], 0        ; 0x1d49
    mov word [bp - 0x0016], 0        ; 0x1d4e
    cmp word [game_state_arg], byte 0 ; 0x1d53
    jne short @..api_idx_0018_USPR.l6 ; 0x1d58
    mov ax, word [party_map_piece]   ; 0x1d5a
    mov cx, 6                        ; 0x1d5d
    shl ax, cl                       ; 0x1d60
    mov cx, word [party_cell_y]      ; 0x1d62
    shl cx, 1                        ; 0x1d66
    shl cx, 1                        ; 0x1d68
    shl cx, 1                        ; 0x1d6a
    add ax, cx                       ; 0x1d6c
    add ax, word [party_cell_x]      ; 0x1d6e
    mov word [bp - 0x0018], ax       ; 0x1d72
    push ax                          ; 0x1d75
    mov ax, word [maze_data]         ; 0x1d76
    add ax, 0x930                    ; 0x1d79
    push ax                          ; 0x1d7c
    call test_bit                    ; 0x1d7d
    add sp, byte 4                   ; 0x1d80
    mov word [bp - 0x0014], ax       ; 0x1d83
@..api_idx_0018_USPR.l6:
    mov ax, word [bp - 0x0008]       ; 0x1d86
    cmp ax, word [bp - 0x0012]       ; 0x1d89
    jl short @..api_idx_0018_USPR.l7 ; 0x1d8c
    call gfx_is_music_playing        ; 0x1d8e
    test ax, ax                      ; 0x1d91
    jne short @..api_idx_0018_USPR.l7 ; 0x1d93
    jmp near @..api_idx_0018_USPR.l32 ; 0x1d95
@..api_idx_0018_USPR.l7:
    cmp word [bss_91ae], byte 0      ; 0x1d98
    je short @..api_idx_0018_USPR.l8 ; 0x1d9d
    jmp near @..api_idx_0018_USPR.l32 ; 0x1d9f
@..api_idx_0018_USPR.l8:
    cmp word [game_state], byte 5    ; 0x1da2
    je short @..api_idx_0018_USPR.l9 ; 0x1da7
    jmp near @..api_idx_0018_USPR.l32 ; 0x1da9
@..api_idx_0018_USPR.l9:
    call loc_QQOI                    ; 0x1dac
    test ax, ax                      ; 0x1daf
    jne short @..api_idx_0018_USPR.l10 ; 0x1db1
    jmp short @..api_idx_0018_USPR.l9 ; 0x1db3
@..api_idx_0018_USPR.l10:
    mov word [bp - 0x0002], 0        ; 0x1db5
    jmp short @..api_idx_0018_USPR.l12 ; 0x1dba
@..api_idx_0018_USPR.l11:
    mov ax, 0x248                    ; 0x1dbc
    imul word [bp - 0x0002]          ; 0x1dbf
    mov bx, ax                       ; 0x1dc2
    mov byte [bx + 0x5d5c], 0xa      ; 0x1dc4
    mov ax, 1                        ; 0x1dc9
    push ax                          ; 0x1dcc
    push word [bp - 0x0002]          ; 0x1dcd
    call ds_app_LUOV                 ; 0x1dd0
    add sp, byte 4                   ; 0x1dd3
    inc word [bp - 0x0002]           ; 0x1dd6
@..api_idx_0018_USPR.l12:
    mov ax, word [bp - 0x0002]       ; 0x1dd9
    cmp ax, word [bss_69c8]          ; 0x1ddc
    jl short @..api_idx_0018_USPR.l11 ; 0x1de0
    cmp word [bp - 0x0014], byte 0   ; 0x1de2
    je short @..api_idx_0018_USPR.l13 ; 0x1de6
    cmp word [bp - 0x0016], byte 0   ; 0x1de8
    jne short @..api_idx_0018_USPR.l13 ; 0x1dec
    mov word [bp - 0x0016], 1        ; 0x1dee
    call api_idx_0004_JLQH           ; 0x1df3
    test ax, ax                      ; 0x1df6
    je short @..api_idx_0018_USPR.l13 ; 0x1df8
    mov bx, word [maze_tables]       ; 0x1dfa
    mov si, word [party_map_piece]   ; 0x1dfe
    mov al, byte [bx + si + 0xb40]   ; 0x1e02
    sub ah, ah                       ; 0x1e06
    mov word [party_region], ax      ; 0x1e08
@..api_idx_0018_USPR.l13:
    call ds_app_TMKJ                 ; 0x1e0b
    test ax, ax                      ; 0x1e0e
    je short @..api_idx_0018_USPR.l14 ; 0x1e10
    mov word [bss_91ae], 1           ; 0x1e12
@..api_idx_0018_USPR.l14:
    call loc_QQOI                    ; 0x1e18
    test ax, ax                      ; 0x1e1b
    jne short @..api_idx_0018_USPR.l15 ; 0x1e1d
    mov ax, 0xa                      ; 0x1e1f
    push ax                          ; 0x1e22
    call delay_ms                    ; 0x1e23
    pop cx                           ; 0x1e26
@..api_idx_0018_USPR.l15:
    cmp word [bp - 0x0014], byte 0   ; 0x1e27
    je short @..api_idx_0018_USPR.l16 ; 0x1e2b
    mov word [bss_91ae], 0           ; 0x1e2d
@..api_idx_0018_USPR.l16:
    cmp word [bss_91ae], byte 0      ; 0x1e33
    je short @..api_idx_0018_USPR.l17 ; 0x1e38
    jmp near @..api_idx_0018_USPR.l31 ; 0x1e3a
@..api_idx_0018_USPR.l17:
    inc word [bp - 0x0008]           ; 0x1e3d
    add word [bss_8f1c], byte 0x0a   ; 0x1e40
    adc word [bss_8f1e], byte 0      ; 0x1e45
    call api_idx_0002_ITLQ           ; 0x1e4a
    mov ax, 0xa                      ; 0x1e4d
    push ax                          ; 0x1e50
    call api_idx_0002_IPQN           ; 0x1e51
    pop cx                           ; 0x1e54
    cmp word [bp - 0x0008], byte 0x18 ; 0x1e55
    jne short @..api_idx_0018_USPR.l18 ; 0x1e59
    mov ax, 0x64                     ; 0x1e5b
    push ax                          ; 0x1e5e
    call random_below                ; 0x1e5f
    pop cx                           ; 0x1e62
    mov word [bp - 0x0002], ax       ; 0x1e63
    mov ax, 0x64                     ; 0x1e66
    push ax                          ; 0x1e69
    call random_below                ; 0x1e6a
    pop cx                           ; 0x1e6d
    mov bx, word [bp - 0x0002]       ; 0x1e6e
    mov byte [bx + bss_5990], al     ; 0x1e71
@..api_idx_0018_USPR.l18:
    mov word [bp - 0x0002], 0        ; 0x1e75
    jmp near @..api_idx_0018_USPR.l27 ; 0x1e7a
@..api_idx_0018_USPR.l19:
    mov ax, word [bp - 0x0008]       ; 0x1e7d
    mov cx, 6                        ; 0x1e80
    cwd                              ; 0x1e83
    idiv cx                          ; 0x1e84
    mov ax, dx                       ; 0x1e86
    test ax, ax                      ; 0x1e88
    jne short @..api_idx_0018_USPR.l20 ; 0x1e8a
    mov ax, 1                        ; 0x1e8c
    jmp short @..api_idx_0018_USPR.l21 ; 0x1e8f
@..api_idx_0018_USPR.l20:
    mov ax, 0                        ; 0x1e91
@..api_idx_0018_USPR.l21:
    push ax                          ; 0x1e94
    mov ax, 1                        ; 0x1e95
    push ax                          ; 0x1e98
    test dx, dx                      ; 0x1e99
    jne short @..api_idx_0018_USPR.l22 ; 0x1e9b
    mov ax, 0x248                    ; 0x1e9d
    imul word [bp - 0x0002]          ; 0x1ea0
    mov bx, ax                       ; 0x1ea3
    mov al, byte [bx + 0x5e35]       ; 0x1ea5
    sub ah, ah                       ; 0x1ea9
    jmp short @..api_idx_0018_USPR.l23 ; 0x1eab
@..api_idx_0018_USPR.l22:
    mov ax, 0                        ; 0x1ead
@..api_idx_0018_USPR.l23:
    push ax                          ; 0x1eb0
    mov ax, word [bp - 0x0008]       ; 0x1eb1
    cwd                              ; 0x1eb4
    idiv cx                          ; 0x1eb5
    mov ax, dx                       ; 0x1eb7
    test ax, ax                      ; 0x1eb9
    jne short @..api_idx_0018_USPR.l24 ; 0x1ebb
    cmp word [bp - 0x000e], byte 0   ; 0x1ebd
    jle short @..api_idx_0018_USPR.l24 ; 0x1ec1
    mov ax, 0x248                    ; 0x1ec3
    imul word [bp - 0x0002]          ; 0x1ec6
    mov bx, ax                       ; 0x1ec9
    mov al, byte [bx + 0x5e34]       ; 0x1ecb
    sub ah, ah                       ; 0x1ecf
    inc ax                           ; 0x1ed1
    jmp short @..api_idx_0018_USPR.l25 ; 0x1ed2
@..api_idx_0018_USPR.l24:
    mov ax, 0                        ; 0x1ed4
@..api_idx_0018_USPR.l25:
    push ax                          ; 0x1ed7
    push word [bp - 0x0002]          ; 0x1ed8
    call api_idx_000a_TQHL           ; 0x1edb
    add sp, byte 0x0a                ; 0x1ede
    mov ax, 5                        ; 0x1ee1
    push ax                          ; 0x1ee4
    call random_below                ; 0x1ee5
    pop cx                           ; 0x1ee8
    push ax                          ; 0x1ee9
    mov ax, 0x248                    ; 0x1eea
    imul word [bp - 0x0002]          ; 0x1eed
    mov bx, ax                       ; 0x1ef0
    pop ax                           ; 0x1ef2
    mov byte [bx + 0x5d5c], al       ; 0x1ef3
    mov ax, word [bp - 0x0008]       ; 0x1ef7
    mov cx, 6                        ; 0x1efa
    cwd                              ; 0x1efd
    idiv cx                          ; 0x1efe
    mov ax, dx                       ; 0x1f00
    test ax, ax                      ; 0x1f02
    jne short @..api_idx_0018_USPR.l26 ; 0x1f04
    cmp byte [bx + 0x5e32], 0        ; 0x1f06
    jbe short @..api_idx_0018_USPR.l26 ; 0x1f0b
    dec byte [bx + 0x5e32]           ; 0x1f0d
@..api_idx_0018_USPR.l26:
    inc word [bp - 0x0002]           ; 0x1f11
@..api_idx_0018_USPR.l27:
    mov ax, word [bp - 0x0002]       ; 0x1f14
    cmp ax, word [bss_69c8]          ; 0x1f17
    jge short @..api_idx_0018_USPR.l28 ; 0x1f1b
    jmp near @..api_idx_0018_USPR.l19 ; 0x1f1d
@..api_idx_0018_USPR.l28:
    push word [bss_69c8]             ; 0x1f20
    call random_below                ; 0x1f24
    pop cx                           ; 0x1f27
    mov cx, 0x248                    ; 0x1f28
    imul cx                          ; 0x1f2b
    mov bx, ax                       ; 0x1f2d
    mov byte [bx + 0x5d5c], 0        ; 0x1f2f
    mov ax, word [bp - 0x0008]       ; 0x1f34
    mov cx, 6                        ; 0x1f37
    cwd                              ; 0x1f3a
    idiv cx                          ; 0x1f3b
    mov ax, dx                       ; 0x1f3d
    test ax, ax                      ; 0x1f3f
    jne short @..api_idx_0018_USPR.l31 ; 0x1f41
    call api_idx_0032_TNQM           ; 0x1f43
    dec word [bp - 0x000e]           ; 0x1f46
    mov ax, 0x3cf                    ; 0x1f49
    cmp byte [bss_5988], 1           ; 0x1f4c
    jne short @..api_idx_0018_USPR.l29 ; 0x1f51
    mov ax, 0x3de                    ; 0x1f53
@..api_idx_0018_USPR.l29:
    mov word [bp - 0x0010], ax       ; 0x1f56
    cmp word [bss_91b0], byte 0      ; 0x1f59
    jne short @..api_idx_0018_USPR.l31 ; 0x1f5e
    cmp word [bp - 0x0014], byte 0   ; 0x1f60
    jne short @..api_idx_0018_USPR.l31 ; 0x1f64
    mov ax, 0x3e8                    ; 0x1f66
    push ax                          ; 0x1f69
    call random_below                ; 0x1f6a
    pop cx                           ; 0x1f6d
    mov cx, ax                       ; 0x1f6e
    mov ax, word [bp - 0x0010]       ; 0x1f70
    cmp cx, ax                       ; 0x1f73
    jl short @..api_idx_0018_USPR.l31 ; 0x1f75
    cmp word [bss_8450], byte 0      ; 0x1f77
    je short @..api_idx_0018_USPR.l30 ; 0x1f7c
    call gfx_stop_music              ; 0x1f7e
    mov ax, 0                        ; 0x1f81
    push ax                          ; 0x1f84
    call ds_app_gfx_free_score_VGJR  ; 0x1f85
    pop cx                           ; 0x1f88
@..api_idx_0018_USPR.l30:
    mov ax, 1                        ; 0x1f89
    ret                              ; 0x1f8c
@..api_idx_0018_USPR.l31:
    jmp near @..api_idx_0018_USPR.l6 ; 0x1f8d
@..api_idx_0018_USPR.l32:
    mov ax, 0x98                     ; 0x1f90
    push ax                          ; 0x1f93
    mov ax, 0x13f                    ; 0x1f94
    push ax                          ; 0x1f97
    mov ax, 0x92                     ; 0x1f98
    push ax                          ; 0x1f9b
    mov ax, 0                        ; 0x1f9c
    push ax                          ; 0x1f9f
    call gfx_show_area               ; 0x1fa0
    add sp, byte 8                   ; 0x1fa3
    mov ax, 2                        ; 0x1fa6
    push ax                          ; 0x1fa9
    call random_below                ; 0x1faa
    pop cx                           ; 0x1fad
    mov word [bp - 0x0004], ax       ; 0x1fae
    mov word [bp - 0x0002], 0        ; 0x1fb1
    jmp short @..api_idx_0018_USPR.l36 ; 0x1fb6
@..api_idx_0018_USPR.l33:
    cmp word [bp - 0x0004], byte 0   ; 0x1fb8
    je short @..api_idx_0018_USPR.l34 ; 0x1fbc
    mov ax, 0x248                    ; 0x1fbe
    imul word [bp - 0x0002]          ; 0x1fc1
    mov bx, ax                       ; 0x1fc4
    add word [bx + 0x5bfc], byte 1   ; 0x1fc6
    adc word [bx + 0x5bfe], byte 0   ; 0x1fcb
@..api_idx_0018_USPR.l34:
    mov ax, 0x248                    ; 0x1fd0
    imul word [bp - 0x0002]          ; 0x1fd3
    mov bx, ax                       ; 0x1fd6
    mov ax, word [bx + pc_records]   ; 0x1fd8
    push ax                          ; 0x1fdc
    mov ax, word [bx + 0x5c12]       ; 0x1fdd
    mov cx, 2                        ; 0x1fe1
    cwd                              ; 0x1fe4
    idiv cx                          ; 0x1fe5
    mov cx, ax                       ; 0x1fe7
    pop ax                           ; 0x1fe9
    cmp ax, cx                       ; 0x1fea
    jle short @..api_idx_0018_USPR.l35 ; 0x1fec
    mov byte [bx + 0x5d5c], 0        ; 0x1fee
@..api_idx_0018_USPR.l35:
    mov ax, 1                        ; 0x1ff3
    push ax                          ; 0x1ff6
    push word [bp - 0x0002]          ; 0x1ff7
    call ds_app_LUOV                 ; 0x1ffa
    add sp, byte 4                   ; 0x1ffd
    inc word [bp - 0x0002]           ; 0x2000
@..api_idx_0018_USPR.l36:
    mov ax, word [bp - 0x0002]       ; 0x2003
    cmp ax, word [bss_69c8]          ; 0x2006
    jl short @..api_idx_0018_USPR.l33 ; 0x200a
    call loc_QQOI                    ; 0x200c
    cmp word [bss_8450], byte 0      ; 0x200f
    je short @..api_idx_0018_USPR.l37 ; 0x2014
    push word [bss_844c]             ; 0x2016
    push word [bss_844e]             ; 0x201a
    call fade_out_music              ; 0x201e
    add sp, byte 4                   ; 0x2021
    mov ax, 0                        ; 0x2024
    push ax                          ; 0x2027
    call ds_app_gfx_free_score_VGJR  ; 0x2028
    pop cx                           ; 0x202b
@..api_idx_0018_USPR.l37:
    call loc_VRKM                    ; 0x202c
    mov ax, 0                        ; 0x202f
    ret                              ; 0x2032
