; auto-generated
api_idx_0068_OUHP:
    mov ax, 0xff98                   ; 0x0ac7
    call aztec_csav                  ; 0x0aca
    call score_music_enabled         ; 0x0acd
    mov word [bss_8450], ax          ; 0x0ad0
    test ax, ax                      ; 0x0ad3
    je short .forward1               ; 0x0ad5
    mov ax, 0                        ; 0x0ad7
    push ax                          ; 0x0ada
    push ax                          ; 0x0adb
    call load_score_files            ; 0x0adc
    add sp, byte 4                   ; 0x0adf
    mov ax, word [dseg_010c]         ; 0x0ae2
    mov word [bss_844e], ax          ; 0x0ae5
.forward1:
    mov word [bp - 8], 0             ; 0x0ae8
.back1:
    mov bx, word [bp - 8]            ; 0x0aed
    mov byte [bx + picture_slot_number], 0xff ; 0x0af0
    mov byte [bx + picture_slot_used], 0 ; 0x0af5
    inc word [bp - 8]                ; 0x0afa
    mov ax, word [bp - 8]            ; 0x0afd
    cmp ax, strict word 0x12         ; 0x0b00
    jl short .back1                  ; 0x0b03
    mov ax, 0xf                      ; 0x0b05
    push ax                          ; 0x0b08
    mov ax, 0x3c                     ; 0x0b09
    push ax                          ; 0x0b0c
    call load_monster_picture        ; 0x0b0d
    add sp, byte 4                   ; 0x0b10
    mov ax, 0                        ; 0x0b13
    push ax                          ; 0x0b16
    mov ax, 0xc7                     ; 0x0b17
    push ax                          ; 0x0b1a
    mov ax, 0x13f                    ; 0x0b1b
    push ax                          ; 0x0b1e
    mov ax, 0                        ; 0x0b1f
    push ax                          ; 0x0b22
    push ax                          ; 0x0b23
    call call_fill_area              ; 0x0b24
    add sp, byte 0xa                 ; 0x0b27
    mov ax, 0                        ; 0x0b2a
    push ax                          ; 0x0b2d
    mov ax, 1                        ; 0x0b2e
    push ax                          ; 0x0b31
    call api_idx_000e_JRRT           ; 0x0b32
    add sp, byte 4                   ; 0x0b35
    mov ax, 0                        ; 0x0b38
    push ax                          ; 0x0b3b
    push ax                          ; 0x0b3c
    push ax                          ; 0x0b3d
    call call_reset_rgb              ; 0x0b3e
    add sp, byte 6                   ; 0x0b41
    mov ax, 0xc7                     ; 0x0b44
    push ax                          ; 0x0b47
    mov ax, 0x13f                    ; 0x0b48
    push ax                          ; 0x0b4b
    mov ax, 0                        ; 0x0b4c
    push ax                          ; 0x0b4f
    push ax                          ; 0x0b50
    call call_show_area              ; 0x0b51
    add sp, byte 8                   ; 0x0b54
    mov ax, 0                        ; 0x0b57
    push ax                          ; 0x0b5a
    call call_fade_in                ; 0x0b5b
    pop cx                           ; 0x0b5e
    mov word [bss_91b8], 0           ; 0x0b5f
    call api_idx_0002_PUOP           ; 0x0b65
    test ax, ax                      ; 0x0b68
    jne short .forward3              ; 0x0b6a
    cmp word [bss_8450], byte 0      ; 0x0b6c
    je short .forward2               ; 0x0b71
    mov ax, 0                        ; 0x0b73
    push ax                          ; 0x0b76
    push word [bss_844e]             ; 0x0b77
    push ax                          ; 0x0b7b
    call ds_app_UKGP                 ; 0x0b7c
    add sp, byte 6                   ; 0x0b7f
    mov word [bss_844c], ax          ; 0x0b82
.forward2:
    mov ax, 0xb4                     ; 0x0b85
    push ax                          ; 0x0b88
    call api_idx_0004_OIGN           ; 0x0b89
    pop cx                           ; 0x0b8c
.forward3:
    call api_idx_0002_PUOP           ; 0x0b8d
    test ax, ax                      ; 0x0b90
    jne short .forward4              ; 0x0b92
    mov ax, 0xa                      ; 0x0b94
    push ax                          ; 0x0b97
    mov ax, 0                        ; 0x0b98
    push ax                          ; 0x0b9b
    mov ax, 3                        ; 0x0b9c
    push ax                          ; 0x0b9f
    mov ax, 2                        ; 0x0ba0
    push ax                          ; 0x0ba3
    call loc_KVVL                    ; 0x0ba4
    add sp, byte 8                   ; 0x0ba7
.forward4:
    call api_idx_0002_PUOP           ; 0x0baa
    test ax, ax                      ; 0x0bad
    jne short .forward5              ; 0x0baf
    mov ax, 0xa                      ; 0x0bb1
    push ax                          ; 0x0bb4
    mov ax, 0                        ; 0x0bb5
    push ax                          ; 0x0bb8
    mov ax, 5                        ; 0x0bb9
    push ax                          ; 0x0bbc
    mov ax, 4                        ; 0x0bbd
    push ax                          ; 0x0bc0
    call loc_KVVL                    ; 0x0bc1
    add sp, byte 8                   ; 0x0bc4
.forward5:
    call api_idx_0002_PUOP           ; 0x0bc7
    test ax, ax                      ; 0x0bca
    jne short .forward6              ; 0x0bcc
    mov ax, 0xa                      ; 0x0bce
    push ax                          ; 0x0bd1
    mov ax, 0                        ; 0x0bd2
    push ax                          ; 0x0bd5
    mov ax, 7                        ; 0x0bd6
    push ax                          ; 0x0bd9
    mov ax, 6                        ; 0x0bda
    push ax                          ; 0x0bdd
    call loc_KVVL                    ; 0x0bde
    add sp, byte 8                   ; 0x0be1
.forward6:
    call api_idx_0002_PUOP           ; 0x0be4
    test ax, ax                      ; 0x0be7
    jne short .forward7              ; 0x0be9
    mov ax, 0xa                      ; 0x0beb
    push ax                          ; 0x0bee
    push ax                          ; 0x0bef
    mov ax, 9                        ; 0x0bf0
    push ax                          ; 0x0bf3
    mov ax, 8                        ; 0x0bf4
    push ax                          ; 0x0bf7
    call loc_KVVL                    ; 0x0bf8
    add sp, byte 8                   ; 0x0bfb
.forward7:
    call api_idx_0002_PUOP           ; 0x0bfe
    test ax, ax                      ; 0x0c01
    jne short .forward8              ; 0x0c03
    mov ax, 0xa                      ; 0x0c05
    push ax                          ; 0x0c08
    mov ax, 0xd                      ; 0x0c09
    push ax                          ; 0x0c0c
    mov ax, 0xc                      ; 0x0c0d
    push ax                          ; 0x0c10
    mov ax, 0xb                      ; 0x0c11
    push ax                          ; 0x0c14
    call loc_KVVL                    ; 0x0c15
    add sp, byte 8                   ; 0x0c18
.forward8:
    call api_idx_0002_PUOP           ; 0x0c1b
    test ax, ax                      ; 0x0c1e
    jne short .forward9              ; 0x0c20
    mov ax, 0xa                      ; 0x0c22
    push ax                          ; 0x0c25
    mov ax, 0                        ; 0x0c26
    push ax                          ; 0x0c29
    mov ax, 0xf                      ; 0x0c2a
    push ax                          ; 0x0c2d
    mov ax, 0xe                      ; 0x0c2e
    push ax                          ; 0x0c31
    call loc_KVVL                    ; 0x0c32
    add sp, byte 8                   ; 0x0c35
.forward9:
    call api_idx_0002_PUOP           ; 0x0c38
    test ax, ax                      ; 0x0c3b
    jne short .forward10             ; 0x0c3d
    mov ax, 0                        ; 0x0c3f
    push ax                          ; 0x0c42
    push ax                          ; 0x0c43
    mov ax, 0x11                     ; 0x0c44
    push ax                          ; 0x0c47
    mov ax, 0x10                     ; 0x0c48
    push ax                          ; 0x0c4b
    call loc_KVVL                    ; 0x0c4c
    add sp, byte 8                   ; 0x0c4f
.forward10:
    mov ax, 0xf                      ; 0x0c52
    push ax                          ; 0x0c55
    call free_picture_slot           ; 0x0c56
    pop cx                           ; 0x0c59
    call api_idx_0002_PUOP           ; 0x0c5a
    test ax, ax                      ; 0x0c5d
    je short .forward11              ; 0x0c5f
    jmp near .forward18              ; 0x0c61
.forward11:
    mov ax, 0xf                      ; 0x0c64
    push ax                          ; 0x0c67
    mov ax, 0x3d                     ; 0x0c68
    push ax                          ; 0x0c6b
    call load_monster_picture        ; 0x0c6c
    add sp, byte 4                   ; 0x0c6f
    mov ax, 0x98                     ; 0x0c72
    push ax                          ; 0x0c75
    call api_idx_0004_OIGN           ; 0x0c76
    pop cx                           ; 0x0c79
    call api_idx_0002_PUOP           ; 0x0c7a
    test ax, ax                      ; 0x0c7d
    jne short .forward12             ; 0x0c7f
    mov ax, 0xa                      ; 0x0c81
    push ax                          ; 0x0c84
    mov ax, 3                        ; 0x0c85
    push ax                          ; 0x0c88
    mov ax, 2                        ; 0x0c89
    push ax                          ; 0x0c8c
    mov ax, 1                        ; 0x0c8d
    push ax                          ; 0x0c90
    call loc_KVVL                    ; 0x0c91
    add sp, byte 8                   ; 0x0c94
.forward12:
    call api_idx_0002_PUOP           ; 0x0c97
    test ax, ax                      ; 0x0c9a
    jne short .forward13             ; 0x0c9c
    mov ax, 0xa                      ; 0x0c9e
    push ax                          ; 0x0ca1
    mov ax, 6                        ; 0x0ca2
    push ax                          ; 0x0ca5
    mov ax, 5                        ; 0x0ca6
    push ax                          ; 0x0ca9
    mov ax, 4                        ; 0x0caa
    push ax                          ; 0x0cad
    call loc_KVVL                    ; 0x0cae
    add sp, byte 8                   ; 0x0cb1
.forward13:
    call api_idx_0002_PUOP           ; 0x0cb4
    test ax, ax                      ; 0x0cb7
    jne short .forward14             ; 0x0cb9
    mov ax, 0                        ; 0x0cbb
    push ax                          ; 0x0cbe
    push ax                          ; 0x0cbf
    mov ax, 8                        ; 0x0cc0
    push ax                          ; 0x0cc3
    mov ax, 7                        ; 0x0cc4
    push ax                          ; 0x0cc7
    call loc_KVVL                    ; 0x0cc8
    add sp, byte 8                   ; 0x0ccb
.forward14:
    mov ax, 0x90                     ; 0x0cce
    push ax                          ; 0x0cd1
    call api_idx_0004_OIGN           ; 0x0cd2
    pop cx                           ; 0x0cd5
    call api_idx_0002_PUOP           ; 0x0cd6
    test ax, ax                      ; 0x0cd9
    jne short .forward15             ; 0x0cdb
    mov ax, 0xa                      ; 0x0cdd
    push ax                          ; 0x0ce0
    mov ax, 0xb                      ; 0x0ce1
    push ax                          ; 0x0ce4
    mov ax, 0xa                      ; 0x0ce5
    push ax                          ; 0x0ce8
    mov ax, 9                        ; 0x0ce9
    push ax                          ; 0x0cec
    call loc_KVVL                    ; 0x0ced
    add sp, byte 8                   ; 0x0cf0
.forward15:
    call api_idx_0002_PUOP           ; 0x0cf3
    test ax, ax                      ; 0x0cf6
    jne short .forward16             ; 0x0cf8
    mov ax, 0xa                      ; 0x0cfa
    push ax                          ; 0x0cfd
    mov ax, 0xe                      ; 0x0cfe
    push ax                          ; 0x0d01
    mov ax, 0xd                      ; 0x0d02
    push ax                          ; 0x0d05
    mov ax, 0xc                      ; 0x0d06
    push ax                          ; 0x0d09
    call loc_KVVL                    ; 0x0d0a
    add sp, byte 8                   ; 0x0d0d
.forward16:
    call api_idx_0002_PUOP           ; 0x0d10
    test ax, ax                      ; 0x0d13
    jne short .forward17             ; 0x0d15
    mov ax, 0                        ; 0x0d17
    push ax                          ; 0x0d1a
    mov ax, 0x11                     ; 0x0d1b
    push ax                          ; 0x0d1e
    mov ax, 0x10                     ; 0x0d1f
    push ax                          ; 0x0d22
    mov ax, 0xf                      ; 0x0d23
    push ax                          ; 0x0d26
    call loc_KVVL                    ; 0x0d27
    add sp, byte 8                   ; 0x0d2a
.forward17:
    mov ax, 5                        ; 0x0d2d
    push ax                          ; 0x0d30
    call api_idx_0004_OIGN           ; 0x0d31
    pop cx                           ; 0x0d34
    mov ax, 0xf                      ; 0x0d35
    push ax                          ; 0x0d38
    call free_picture_slot           ; 0x0d39
    pop cx                           ; 0x0d3c
.forward18:
    call api_idx_0002_PUOP           ; 0x0d3d
    test ax, ax                      ; 0x0d40
    je short .forward19              ; 0x0d42
    jmp near .forward26              ; 0x0d44
.forward19:
    mov ax, 0xf                      ; 0x0d47
    push ax                          ; 0x0d4a
    mov ax, 0x3e                     ; 0x0d4b
    push ax                          ; 0x0d4e
    call load_monster_picture        ; 0x0d4f
    add sp, byte 4                   ; 0x0d52
    call api_idx_0002_PUOP           ; 0x0d55
    test ax, ax                      ; 0x0d58
    jne short .forward20             ; 0x0d5a
    mov ax, 0                        ; 0x0d5c
    push ax                          ; 0x0d5f
    mov ax, 0xc7                     ; 0x0d60
    push ax                          ; 0x0d63
    mov ax, 0x13f                    ; 0x0d64
    push ax                          ; 0x0d67
    mov ax, 0                        ; 0x0d68
    push ax                          ; 0x0d6b
    push ax                          ; 0x0d6c
    call call_fill_area              ; 0x0d6d
    add sp, byte 0xa                 ; 0x0d70
.forward20:
    call api_idx_0002_PUOP           ; 0x0d73
    test ax, ax                      ; 0x0d76
    jne short .forward21             ; 0x0d78
    mov ax, 0                        ; 0x0d7a
    push ax                          ; 0x0d7d
    mov ax, 1                        ; 0x0d7e
    push ax                          ; 0x0d81
    call api_idx_000e_JRRT           ; 0x0d82
    add sp, byte 4                   ; 0x0d85
.forward21:
    call api_idx_0002_PUOP           ; 0x0d88
    test ax, ax                      ; 0x0d8b
    jne short .forward22             ; 0x0d8d
    mov ax, 0                        ; 0x0d8f
    push ax                          ; 0x0d92
    mov ax, 2                        ; 0x0d93
    push ax                          ; 0x0d96
    call api_idx_000e_JRRT           ; 0x0d97
    add sp, byte 4                   ; 0x0d9a
.forward22:
    call api_idx_0002_PUOP           ; 0x0d9d
    test ax, ax                      ; 0x0da0
    jne short .forward23             ; 0x0da2
    mov ax, 0                        ; 0x0da4
    push ax                          ; 0x0da7
    mov ax, 3                        ; 0x0da8
    push ax                          ; 0x0dab
    call api_idx_000e_JRRT           ; 0x0dac
    add sp, byte 4                   ; 0x0daf
.forward23:
    call api_idx_0002_PUOP           ; 0x0db2
    test ax, ax                      ; 0x0db5
    jne short .forward24             ; 0x0db7
    mov ax, 0                        ; 0x0db9
    push ax                          ; 0x0dbc
    mov ax, 4                        ; 0x0dbd
    push ax                          ; 0x0dc0
    call api_idx_000e_JRRT           ; 0x0dc1
    add sp, byte 4                   ; 0x0dc4
.forward24:
    call api_idx_0002_PUOP           ; 0x0dc7
    test ax, ax                      ; 0x0dca
    jne short .forward25             ; 0x0dcc
    mov ax, 0xc7                     ; 0x0dce
    push ax                          ; 0x0dd1
    mov ax, 0x13f                    ; 0x0dd2
    push ax                          ; 0x0dd5
    mov ax, 0                        ; 0x0dd6
    push ax                          ; 0x0dd9
    push ax                          ; 0x0dda
    call call_show_area              ; 0x0ddb
    add sp, byte 8                   ; 0x0dde
.forward25:
    mov ax, 5                        ; 0x0de1
    push ax                          ; 0x0de4
    call api_idx_0004_OIGN           ; 0x0de5
    pop cx                           ; 0x0de8
    mov ax, 0xf                      ; 0x0de9
    push ax                          ; 0x0dec
    call free_picture_slot           ; 0x0ded
    pop cx                           ; 0x0df0
.forward26:
    call api_idx_0002_PUOP           ; 0x0df1
    test ax, ax                      ; 0x0df4
    jne short .forward27             ; 0x0df6
    mov ax, 1                        ; 0x0df8
    push ax                          ; 0x0dfb
    mov ax, dseg_9187                ; 0x0dfc
    push ax                          ; 0x0dff
    call load_screen_file            ; 0x0e00
    add sp, byte 4                   ; 0x0e03
    mov ax, 5                        ; 0x0e06
    push ax                          ; 0x0e09
    call api_idx_0004_OIGN           ; 0x0e0a
    pop cx                           ; 0x0e0d
.forward27:
    mov ax, 0                        ; 0x0e0e
    push ax                          ; 0x0e11
    mov ax, dseg_9194                ; 0x0e12
    push ax                          ; 0x0e15
    call load_screen_file            ; 0x0e16
    add sp, byte 4                   ; 0x0e19
    mov ax, 0xf                      ; 0x0e1c
    push ax                          ; 0x0e1f
    mov ax, 0x3f                     ; 0x0e20
    push ax                          ; 0x0e23
    call load_monster_picture        ; 0x0e24
    add sp, byte 4                   ; 0x0e27
    call api_idx_0002_PUOP           ; 0x0e2a
    test ax, ax                      ; 0x0e2d
    je short .forward28              ; 0x0e2f
    jmp near .forward29              ; 0x0e31
.forward28:
    mov ax, 0xc7                     ; 0x0e34
    push ax                          ; 0x0e37
    mov ax, 0x13f                    ; 0x0e38
    push ax                          ; 0x0e3b
    mov ax, 0                        ; 0x0e3c
    push ax                          ; 0x0e3f
    push ax                          ; 0x0e40
    call call_show_area              ; 0x0e41
    add sp, byte 8                   ; 0x0e44
    mov ax, 0xc                      ; 0x0e47
    push ax                          ; 0x0e4a
    call api_idx_0004_OIGN           ; 0x0e4b
    pop cx                           ; 0x0e4e
    mov ax, 0                        ; 0x0e4f
    push ax                          ; 0x0e52
    mov ax, 2                        ; 0x0e53
    push ax                          ; 0x0e56
    mov ax, 0x62                     ; 0x0e57
    push ax                          ; 0x0e5a
    mov ax, 0x110                    ; 0x0e5b
    push ax                          ; 0x0e5e
    mov ax, 0                        ; 0x0e5f
    push ax                          ; 0x0e62
    mov ax, 0x37                     ; 0x0e63
    push ax                          ; 0x0e66
    call call_cache_area             ; 0x0e67
    add sp, byte 0xc                 ; 0x0e6a
    mov word [bp - 0xa], dx          ; 0x0e6d
    mov word [bp - 0xc], ax          ; 0x0e70
    mov word [bp - 2], 0x5f          ; 0x0e73
.back2:
    mov ax, 0                        ; 0x0e78
    push ax                          ; 0x0e7b
    push ax                          ; 0x0e7c
    push word [bp - 0xa]             ; 0x0e7d
    push word [bp - 0xc]             ; 0x0e80
    call call_restore_screen         ; 0x0e83
    add sp, byte 8                   ; 0x0e86
    push word [bp - 2]               ; 0x0e89
    mov ax, 1                        ; 0x0e8c
    push ax                          ; 0x0e8f
    call api_idx_000e_JRRT           ; 0x0e90
    add sp, byte 4                   ; 0x0e93
    mov ax, 0x62                     ; 0x0e96
    push ax                          ; 0x0e99
    mov ax, 0x110                    ; 0x0e9a
    push ax                          ; 0x0e9d
    mov ax, 9                        ; 0x0e9e
    push ax                          ; 0x0ea1
    mov ax, 0x37                     ; 0x0ea2
    push ax                          ; 0x0ea5
    call call_show_area              ; 0x0ea6
    add sp, byte 8                   ; 0x0ea9
    add word [bp - 2], byte -5       ; 0x0eac
    cmp word [bp - 2], byte 0        ; 0x0eb0
    jge short .back2                 ; 0x0eb4
    mov ax, 0                        ; 0x0eb6
    push ax                          ; 0x0eb9
    mov ax, 1                        ; 0x0eba
    push ax                          ; 0x0ebd
    push word [bp - 0xa]             ; 0x0ebe
    push word [bp - 0xc]             ; 0x0ec1
    call call_restore_screen         ; 0x0ec4
    add sp, byte 8                   ; 0x0ec7
    jmp short .forward30             ; 0x0eca
.forward29:
    mov ax, 0                        ; 0x0ecc
    push ax                          ; 0x0ecf
    mov ax, 1                        ; 0x0ed0
    push ax                          ; 0x0ed3
    call api_idx_000e_JRRT           ; 0x0ed4
    add sp, byte 4                   ; 0x0ed7
    mov ax, 0xc7                     ; 0x0eda
    push ax                          ; 0x0edd
    mov ax, 0x13f                    ; 0x0ede
    push ax                          ; 0x0ee1
    mov ax, 0                        ; 0x0ee2
    push ax                          ; 0x0ee5
    push ax                          ; 0x0ee6
    call call_show_area              ; 0x0ee7
    add sp, byte 8                   ; 0x0eea
.forward30:
    mov ax, 0xf                      ; 0x0eed
    push ax                          ; 0x0ef0
    call free_picture_slot           ; 0x0ef1
    pop cx                           ; 0x0ef4
    mov ax, 0                        ; 0x0ef5
    push ax                          ; 0x0ef8
    mov ax, 2                        ; 0x0ef9
    push ax                          ; 0x0efc
    mov ax, 0xa2                     ; 0x0efd
    push ax                          ; 0x0f00
    mov ax, 0x13f                    ; 0x0f01
    push ax                          ; 0x0f04
    mov ax, 0x66                     ; 0x0f05
    push ax                          ; 0x0f08
    mov ax, 0                        ; 0x0f09
    push ax                          ; 0x0f0c
    call call_cache_area             ; 0x0f0d
    add sp, byte 0xc                 ; 0x0f10
    mov word [bp - 0xa], dx          ; 0x0f13
    mov word [bp - 0xc], ax          ; 0x0f16
    call api_idx_0002_PUOP           ; 0x0f19
    mov ax, 0xb54                    ; 0x0f1c
    cmp word [bss_91b8], byte 0      ; 0x0f1f
    je short .forward31              ; 0x0f24
    mov ax, 0xb69                    ; 0x0f26
.forward31:
    mov word [bp - 0x60], ax         ; 0x0f29
    lea ax, word [bp - 0x5c]         ; 0x0f2c
    push ax                          ; 0x0f2f
    push word [bp - 0x60]            ; 0x0f30
    call load_message_string         ; 0x0f33
    add sp, byte 4                   ; 0x0f36
    lea ax, word [bp - 0x5c]         ; 0x0f39
    mov word [bp - 0x5e], ax         ; 0x0f3c
    mov word [bp - 2], 0             ; 0x0f3f
.back3:
    mov ax, word [bp - 2]            ; 0x0f44
    mov word [bp - 0x66], ax         ; 0x0f47
    mov bx, word [bp - 0x5e]         ; 0x0f4a
    mov al, byte [bx]                ; 0x0f4d
    sub ah, ah                       ; 0x0f4f
    mov word [bp - 2], ax            ; 0x0f51
    inc word [bp - 0x5e]             ; 0x0f54
    mov word [bp - 4], 0             ; 0x0f57
    jmp near .forward42              ; 0x0f5c
.back4:
    mov bx, word [bp - 0x5e]         ; 0x0f5f
    mov al, byte [bx]                ; 0x0f62
    sub ah, ah                       ; 0x0f64
    mov word [bp - 0x62], ax         ; 0x0f66
    inc word [bp - 0x5e]             ; 0x0f69
    cmp ax, strict word 2            ; 0x0f6c
    je short .forward32              ; 0x0f6f
    jmp near .forward33              ; 0x0f71
.forward32:
    mov ax, 2                        ; 0x0f74
    push ax                          ; 0x0f77
    push word [bp - 0x5e]            ; 0x0f78
    call measure_text_width          ; 0x0f7b
    add sp, byte 4                   ; 0x0f7e
    inc ax                           ; 0x0f81
    mov cx, 2                        ; 0x0f82
    cwd                              ; 0x0f85
    idiv cx                          ; 0x0f86
    mov cx, ax                       ; 0x0f88
    mov ax, 0xa0                     ; 0x0f8a
    sub ax, cx                       ; 0x0f8d
    mov word [bp - 0x64], ax         ; 0x0f8f
    mov ax, 0xc                      ; 0x0f92
    imul word [bp - 4]               ; 0x0f95
    add ax, strict word 0x66         ; 0x0f98
    push ax                          ; 0x0f9b
    mov ax, word [bp - 0x64]         ; 0x0f9c
    dec ax                           ; 0x0f9f
    push ax                          ; 0x0fa0
    call call_set_text_pos           ; 0x0fa1
    add sp, byte 4                   ; 0x0fa4
    mov ax, 0                        ; 0x0fa7
    push ax                          ; 0x0faa
    mov ax, 0xc                      ; 0x0fab
    push ax                          ; 0x0fae
    call call_set_text_color         ; 0x0faf
    add sp, byte 4                   ; 0x0fb2
    mov ax, 2                        ; 0x0fb5
    push ax                          ; 0x0fb8
    push word [bp - 0x5e]            ; 0x0fb9
    call draw_text_glyphs            ; 0x0fbc
    add sp, byte 4                   ; 0x0fbf
    mov ax, 0xc                      ; 0x0fc2
    imul word [bp - 4]               ; 0x0fc5
    add ax, strict word 0x66         ; 0x0fc8
    push ax                          ; 0x0fcb
    mov ax, word [bp - 0x64]         ; 0x0fcc
    inc ax                           ; 0x0fcf
    push ax                          ; 0x0fd0
    call call_set_text_pos           ; 0x0fd1
    add sp, byte 4                   ; 0x0fd4
    mov ax, 0                        ; 0x0fd7
    push ax                          ; 0x0fda
    mov ax, 0xc                      ; 0x0fdb
    push ax                          ; 0x0fde
    call call_set_text_color         ; 0x0fdf
    add sp, byte 4                   ; 0x0fe2
    mov ax, 2                        ; 0x0fe5
    push ax                          ; 0x0fe8
    push word [bp - 0x5e]            ; 0x0fe9
    call draw_text_glyphs            ; 0x0fec
    add sp, byte 4                   ; 0x0fef
    mov ax, 0xc                      ; 0x0ff2
    imul word [bp - 4]               ; 0x0ff5
    add ax, strict word 0x67         ; 0x0ff8
    push ax                          ; 0x0ffb
    push word [bp - 0x64]            ; 0x0ffc
    call call_set_text_pos           ; 0x0fff
    add sp, byte 4                   ; 0x1002
    mov ax, 0                        ; 0x1005
    push ax                          ; 0x1008
    mov ax, 0xc                      ; 0x1009
    push ax                          ; 0x100c
    call call_set_text_color         ; 0x100d
    add sp, byte 4                   ; 0x1010
    mov ax, 2                        ; 0x1013
    push ax                          ; 0x1016
    push word [bp - 0x5e]            ; 0x1017
    call draw_text_glyphs            ; 0x101a
    add sp, byte 4                   ; 0x101d
    mov ax, 0xc                      ; 0x1020
    imul word [bp - 4]               ; 0x1023
    add ax, strict word 0x65         ; 0x1026
    push ax                          ; 0x1029
    push word [bp - 0x64]            ; 0x102a
    call call_set_text_pos           ; 0x102d
    add sp, byte 4                   ; 0x1030
    mov ax, 0                        ; 0x1033
    push ax                          ; 0x1036
    mov ax, 0xc                      ; 0x1037
    push ax                          ; 0x103a
    call call_set_text_color         ; 0x103b
    add sp, byte 4                   ; 0x103e
    mov ax, 2                        ; 0x1041
    push ax                          ; 0x1044
    push word [bp - 0x5e]            ; 0x1045
    call draw_text_glyphs            ; 0x1048
    add sp, byte 4                   ; 0x104b
    mov ax, 0xc                      ; 0x104e
    imul word [bp - 4]               ; 0x1051
    add ax, strict word 0x66         ; 0x1054
    push ax                          ; 0x1057
    push word [bp - 0x64]            ; 0x1058
    call call_set_text_pos           ; 0x105b
    add sp, byte 4                   ; 0x105e
    mov ax, 0                        ; 0x1061
    push ax                          ; 0x1064
    mov ax, 1                        ; 0x1065
    push ax                          ; 0x1068
    call call_set_text_color         ; 0x1069
    add sp, byte 4                   ; 0x106c
    mov ax, 2                        ; 0x106f
    push ax                          ; 0x1072
    push word [bp - 0x5e]            ; 0x1073
    call draw_text_glyphs            ; 0x1076
    add sp, byte 4                   ; 0x1079
    jmp near .forward41              ; 0x107c
.forward33:
    cmp word [bp - 0x62], byte 3     ; 0x107f
    jne short .forward34             ; 0x1083
    push word [bp - 0x5e]            ; 0x1085
    call aztec_strlen                ; 0x1088
    pop cx                           ; 0x108b
    mov cx, 6                        ; 0x108c
    imul cx                          ; 0x108f
    mov cx, 2                        ; 0x1091
    cwd                              ; 0x1094
    idiv cx                          ; 0x1095
    mov cx, ax                       ; 0x1097
    mov ax, 0xa0                     ; 0x1099
    sub ax, cx                       ; 0x109c
    mov word [bp - 0x64], ax         ; 0x109e
    mov word [bp - 0x68], 0          ; 0x10a1
    jmp short .forward35             ; 0x10a6
.forward34:
    mov ax, 2                        ; 0x10a8
    push ax                          ; 0x10ab
    push word [bp - 0x5e]            ; 0x10ac
    call measure_text_width          ; 0x10af
    add sp, byte 4                   ; 0x10b2
    inc ax                           ; 0x10b5
    mov cx, 2                        ; 0x10b6
    cwd                              ; 0x10b9
    idiv cx                          ; 0x10ba
    mov cx, ax                       ; 0x10bc
    mov ax, 0xa0                     ; 0x10be
    sub ax, cx                       ; 0x10c1
    mov word [bp - 0x64], ax         ; 0x10c3
    mov word [bp - 0x68], 2          ; 0x10c6
.forward35:
    mov ax, 0xc                      ; 0x10cb
    imul word [bp - 4]               ; 0x10ce
    add ax, strict word 0x66         ; 0x10d1
    push ax                          ; 0x10d4
    mov ax, word [bp - 0x64]         ; 0x10d5
    dec ax                           ; 0x10d8
    push ax                          ; 0x10d9
    call call_set_text_pos           ; 0x10da
    add sp, byte 4                   ; 0x10dd
    mov ax, 0                        ; 0x10e0
    push ax                          ; 0x10e3
    cmp word [bp - 0x62], byte 1     ; 0x10e4
    jne short .forward36             ; 0x10e8
    mov ax, 0x22                     ; 0x10ea
.forward36:
    push ax                          ; 0x10ed
    call call_set_text_color         ; 0x10ee
    add sp, byte 4                   ; 0x10f1
    push word [bp - 0x68]            ; 0x10f4
    push word [bp - 0x5e]            ; 0x10f7
    call draw_text_glyphs            ; 0x10fa
    add sp, byte 4                   ; 0x10fd
    mov ax, 0xc                      ; 0x1100
    imul word [bp - 4]               ; 0x1103
    add ax, strict word 0x66         ; 0x1106
    push ax                          ; 0x1109
    mov ax, word [bp - 0x64]         ; 0x110a
    inc ax                           ; 0x110d
    push ax                          ; 0x110e
    call call_set_text_pos           ; 0x110f
    add sp, byte 4                   ; 0x1112
    mov ax, 0                        ; 0x1115
    push ax                          ; 0x1118
    cmp word [bp - 0x62], byte 1     ; 0x1119
    jne short .forward37             ; 0x111d
    mov ax, 0x22                     ; 0x111f
.forward37:
    push ax                          ; 0x1122
    call call_set_text_color         ; 0x1123
    add sp, byte 4                   ; 0x1126
    push word [bp - 0x68]            ; 0x1129
    push word [bp - 0x5e]            ; 0x112c
    call draw_text_glyphs            ; 0x112f
    add sp, byte 4                   ; 0x1132
    mov ax, 0xc                      ; 0x1135
    imul word [bp - 4]               ; 0x1138
    add ax, strict word 0x67         ; 0x113b
    push ax                          ; 0x113e
    push word [bp - 0x64]            ; 0x113f
    call call_set_text_pos           ; 0x1142
    add sp, byte 4                   ; 0x1145
    mov ax, 0                        ; 0x1148
    push ax                          ; 0x114b
    cmp word [bp - 0x62], byte 1     ; 0x114c
    jne short .forward38             ; 0x1150
    mov ax, 0x22                     ; 0x1152
.forward38:
    push ax                          ; 0x1155
    call call_set_text_color         ; 0x1156
    add sp, byte 4                   ; 0x1159
    push word [bp - 0x68]            ; 0x115c
    push word [bp - 0x5e]            ; 0x115f
    call draw_text_glyphs            ; 0x1162
    add sp, byte 4                   ; 0x1165
    mov ax, 0xc                      ; 0x1168
    imul word [bp - 4]               ; 0x116b
    add ax, strict word 0x65         ; 0x116e
    push ax                          ; 0x1171
    push word [bp - 0x64]            ; 0x1172
    call call_set_text_pos           ; 0x1175
    add sp, byte 4                   ; 0x1178
    mov ax, 0                        ; 0x117b
    push ax                          ; 0x117e
    cmp word [bp - 0x62], byte 1     ; 0x117f
    jne short .forward39             ; 0x1183
    mov ax, 0x22                     ; 0x1185
.forward39:
    push ax                          ; 0x1188
    call call_set_text_color         ; 0x1189
    add sp, byte 4                   ; 0x118c
    push word [bp - 0x68]            ; 0x118f
    push word [bp - 0x5e]            ; 0x1192
    call draw_text_glyphs            ; 0x1195
    add sp, byte 4                   ; 0x1198
    mov ax, 0xc                      ; 0x119b
    imul word [bp - 4]               ; 0x119e
    add ax, strict word 0x66         ; 0x11a1
    push ax                          ; 0x11a4
    push word [bp - 0x64]            ; 0x11a5
    call call_set_text_pos           ; 0x11a8
    add sp, byte 4                   ; 0x11ab
    mov ax, 0                        ; 0x11ae
    push ax                          ; 0x11b1
    mov ax, 0x55                     ; 0x11b2
    cmp word [bp - 0x62], byte 1     ; 0x11b5
    jne short .forward40             ; 0x11b9
    mov ax, 0x16                     ; 0x11bb
.forward40:
    push ax                          ; 0x11be
    call call_set_text_color         ; 0x11bf
    add sp, byte 4                   ; 0x11c2
    push word [bp - 0x68]            ; 0x11c5
    push word [bp - 0x5e]            ; 0x11c8
    call draw_text_glyphs            ; 0x11cb
    add sp, byte 4                   ; 0x11ce
.forward41:
    inc word [bp - 0x60]             ; 0x11d1
    lea ax, word [bp - 0x5c]         ; 0x11d4
    push ax                          ; 0x11d7
    push word [bp - 0x60]            ; 0x11d8
    call load_message_string         ; 0x11db
    add sp, byte 4                   ; 0x11de
    lea ax, word [bp - 0x5c]         ; 0x11e1
    mov word [bp - 0x5e], ax         ; 0x11e4
    inc word [bp - 4]                ; 0x11e7
.forward42:
    mov ax, word [bp - 4]            ; 0x11ea
    cmp ax, word [bp - 2]            ; 0x11ed
    jge short .forward43             ; 0x11f0
    jmp near .back4                  ; 0x11f2
.forward43:
    mov ax, 0                        ; 0x11f5
    push ax                          ; 0x11f8
    mov ax, word [bp - 2]            ; 0x11f9
    cmp ax, word [bp - 0x66]         ; 0x11fc
    jle short .forward44             ; 0x11ff
    mov cx, 0xc                      ; 0x1201
    imul cx                          ; 0x1204
    jmp short .forward45             ; 0x1206
.forward44:
    mov ax, 0xc                      ; 0x1208
    imul word [bp - 0x66]            ; 0x120b
.forward45:
    add ax, strict word 0x66         ; 0x120e
    push ax                          ; 0x1211
    mov ax, 0x10d                    ; 0x1212
    push ax                          ; 0x1215
    mov ax, 0x66                     ; 0x1216
    push ax                          ; 0x1219
    mov ax, 0x32                     ; 0x121a
    push ax                          ; 0x121d
    call call_dissolve_area          ; 0x121e
    add sp, byte 0xa                 ; 0x1221
    mov ax, 0x10                     ; 0x1224
    push ax                          ; 0x1227
    call api_idx_0004_OIGN           ; 0x1228
    pop cx                           ; 0x122b
    mov ax, 0                        ; 0x122c
    push ax                          ; 0x122f
    push ax                          ; 0x1230
    push word [bp - 0xa]             ; 0x1231
    push word [bp - 0xc]             ; 0x1234
    call call_restore_screen         ; 0x1237
    add sp, byte 8                   ; 0x123a
    call api_idx_0002_PUOP           ; 0x123d
    test ax, ax                      ; 0x1240
    je short .forward46              ; 0x1242
    cmp word [bp - 0x60], strict word 0xb69 ; 0x1244
    jge short .forward46             ; 0x1249
    mov word [bp - 0x60], 0xb69      ; 0x124b
    lea ax, word [bp - 0x5c]         ; 0x1250
    push ax                          ; 0x1253
    push word [bp - 0x60]            ; 0x1254
    call load_message_string         ; 0x1257
    add sp, byte 4                   ; 0x125a
    lea ax, word [bp - 0x5c]         ; 0x125d
    mov word [bp - 0x5e], ax         ; 0x1260
.forward46:
    cmp word [message_not_found], byte 0 ; 0x1263
    jne short .forward47             ; 0x1268
    jmp near .back3                  ; 0x126a
.forward47:
    call api_idx_0002_PUOP           ; 0x126d
    test ax, ax                      ; 0x1270
    je short .forward48              ; 0x1272
    mov word [bss_91b8], 0xffff      ; 0x1274
.forward48:
    mov ax, 0x32                     ; 0x127a
    push ax                          ; 0x127d
    call api_idx_0004_OIGN           ; 0x127e
    pop cx                           ; 0x1281
    mov ax, 0                        ; 0x1282
    push ax                          ; 0x1285
    mov ax, 1                        ; 0x1286
    push ax                          ; 0x1289
    push word [bp - 0xa]             ; 0x128a
    push word [bp - 0xc]             ; 0x128d
    call call_restore_screen         ; 0x1290
    add sp, byte 8                   ; 0x1293
    cmp word [bss_8450], byte 0      ; 0x1296
    je short .back6                  ; 0x129b
    cmp word [bss_91b8], byte 0      ; 0x129d
    jne short .forward49             ; 0x12a2
.back5:
    call call_is_music_playing       ; 0x12a4
    test ax, ax                      ; 0x12a7
    je short .forward49              ; 0x12a9
    jmp short .back5                 ; 0x12ab
.forward49:
    push word [bss_844c]             ; 0x12ad
    push word [bss_844e]             ; 0x12b1
    call fade_out_music              ; 0x12b5
    add sp, byte 4                   ; 0x12b8
    mov ax, 0                        ; 0x12bb
    push ax                          ; 0x12be
    call free_loaded_score           ; 0x12bf
    pop cx                           ; 0x12c2
    jmp short .forward50             ; 0x12c3
.back6:
    call poll_fullscreen_hotspot     ; 0x12c5
    test ax, ax                      ; 0x12c8
    jne short .forward50             ; 0x12ca
    jmp short .back6                 ; 0x12cc
.forward50:
    call flush_keyboard              ; 0x12ce
    mov ax, 0                        ; 0x12d1
    push ax                          ; 0x12d4
    push ax                          ; 0x12d5
    push ax                          ; 0x12d6
    push ax                          ; 0x12d7
    call call_fade_out               ; 0x12d8
    add sp, byte 8                   ; 0x12db
    mov ax, 0                        ; 0x12de
    push ax                          ; 0x12e1
    mov ax, 0xc7                     ; 0x12e2
    push ax                          ; 0x12e5
    mov ax, 0x13f                    ; 0x12e6
    push ax                          ; 0x12e9
    mov ax, 0                        ; 0x12ea
    push ax                          ; 0x12ed
    push ax                          ; 0x12ee
    call call_fill_area              ; 0x12ef
    add sp, byte 0xa                 ; 0x12f2
    mov ax, 0xc7                     ; 0x12f5
    push ax                          ; 0x12f8
    mov ax, 0x13f                    ; 0x12f9
    push ax                          ; 0x12fc
    mov ax, 0                        ; 0x12fd
    push ax                          ; 0x1300
    push ax                          ; 0x1301
    call call_show_area              ; 0x1302
    add sp, byte 8                   ; 0x1305
    mov ax, 1                        ; 0x1308
    push ax                          ; 0x130b
    call call_wait_sound             ; 0x130c
    pop cx                           ; 0x130f
    test word [startup_hardware_flags], 0x1000 ; 0x1310
    je short .forward51              ; 0x1316
    cmp byte [startup_aux_option_b], 1 ; 0x1318
    jne short .forward51             ; 0x131d
    call call_mouse_init             ; 0x131f
    mov word [mouse_active], 1       ; 0x1322
    jmp short .forward52             ; 0x1328
.forward51:
    mov word [mouse_active], 0       ; 0x132a
.forward52:
    mov word [hotspot_hit], 0        ; 0x1330
    mov word [game_state], 2         ; 0x1336
    ret                              ; 0x133c
