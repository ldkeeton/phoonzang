; auto-generated
api_idx_0026_QIGS:
    mov ax, 0xffda                   ; 0x8a6e
    call aztec_csav                  ; 0x8a71
    mov word [bss_904e], 0xffff      ; 0x8a74
    mov word [bp - 0x0002], 0x37     ; 0x8a7a
    mov word [bp - 0x0004], 0x8f     ; 0x8a7f
    mov word [bp - 0x0006], 0x108    ; 0x8a84
    mov word [bp - 0x0008], 0xc5     ; 0x8a89
    mov ax, 0x92e2                   ; 0x8a8e
    push ax                          ; 0x8a91
    mov ax, word [bp - 0x0008]       ; 0x8a92
    inc ax                           ; 0x8a95
    push ax                          ; 0x8a96
    mov ax, word [bp - 0x0006]       ; 0x8a97
    inc ax                           ; 0x8a9a
    push ax                          ; 0x8a9b
    mov ax, word [bp - 0x0004]       ; 0x8a9c
    dec ax                           ; 0x8a9f
    push ax                          ; 0x8aa0
    mov ax, word [bp - 0x0002]       ; 0x8aa1
    dec ax                           ; 0x8aa4
    push ax                          ; 0x8aa5
    call ds_app_file_LMRK            ; 0x8aa6
    add sp, byte 0x0a                ; 0x8aa9
    mov word [bp - 0x0026], ax       ; 0x8aac
    push word [bp - 0x0008]          ; 0x8aaf
    push word [bp - 0x0006]          ; 0x8ab2
    push word [bp - 0x0004]          ; 0x8ab5
    push word [bp - 0x0002]          ; 0x8ab8
    call ds_app_KNSQ                 ; 0x8abb
    add sp, byte 8                   ; 0x8abe
    lea ax, word [bp - 0x0024]       ; 0x8ac1
    push ax                          ; 0x8ac4
    push word [bp + 0x4]             ; 0x8ac5
    call ds_app_mem_TIMR             ; 0x8ac8
    add sp, byte 4                   ; 0x8acb
    lea ax, word [bp - 0x0024]       ; 0x8ace
    push ax                          ; 0x8ad1
    push word [bp + 0x6]             ; 0x8ad2
    mov ax, 1                        ; 0x8ad5
    push ax                          ; 0x8ad8
    mov ax, 0x20                     ; 0x8ad9
    push ax                          ; 0x8adc
    mov ax, word [bp - 0x0004]       ; 0x8add
    add ax, strict word 7            ; 0x8ae0
    push ax                          ; 0x8ae3
    mov ax, word [bp - 0x0002]       ; 0x8ae4
    add ax, strict word 8            ; 0x8ae7
    push ax                          ; 0x8aea
    call ds_app_string_IIIR          ; 0x8aeb
    add sp, byte 0x0c                ; 0x8aee
    lea ax, word [bp - 0x0024]       ; 0x8af1
    push ax                          ; 0x8af4
    mov ax, word [bp + 0x4]          ; 0x8af5
    inc ax                           ; 0x8af8
    push ax                          ; 0x8af9
    call ds_app_mem_TIMR             ; 0x8afa
    add sp, byte 4                   ; 0x8afd
    lea ax, word [bp - 0x0024]       ; 0x8b00
    push ax                          ; 0x8b03
    push word [bp + 0x8]             ; 0x8b04
    mov ax, 1                        ; 0x8b07
    push ax                          ; 0x8b0a
    mov ax, 0xc                      ; 0x8b0b
    push ax                          ; 0x8b0e
    mov ax, word [bp - 0x0004]       ; 0x8b0f
    add ax, strict word 0x17         ; 0x8b12
    push ax                          ; 0x8b15
    mov ax, word [bp - 0x0002]       ; 0x8b16
    add ax, strict word 8            ; 0x8b19
    push ax                          ; 0x8b1c
    call ds_app_string_IIIR          ; 0x8b1d
    add sp, byte 0x0c                ; 0x8b20
    lea ax, word [bp - 0x0024]       ; 0x8b23
    push ax                          ; 0x8b26
    mov ax, word [bp + 0x4]          ; 0x8b27
    inc ax                           ; 0x8b2a
    inc ax                           ; 0x8b2b
    push ax                          ; 0x8b2c
    call ds_app_mem_TIMR             ; 0x8b2d
    add sp, byte 4                   ; 0x8b30
    lea ax, word [bp - 0x0024]       ; 0x8b33
    push ax                          ; 0x8b36
    push word [bp + 0xa]             ; 0x8b37
    mov ax, 1                        ; 0x8b3a
    push ax                          ; 0x8b3d
    mov ax, 0xc                      ; 0x8b3e
    push ax                          ; 0x8b41
    mov ax, word [bp - 0x0004]       ; 0x8b42
    add ax, strict word 0x27         ; 0x8b45
    push ax                          ; 0x8b48
    mov ax, word [bp - 0x0002]       ; 0x8b49
    add ax, strict word 8            ; 0x8b4c
    push ax                          ; 0x8b4f
    call ds_app_string_IIIR          ; 0x8b50
    add sp, byte 0x0c                ; 0x8b53
    lea ax, word [bp - 0x0024]       ; 0x8b56
    push ax                          ; 0x8b59
    mov ax, word [bp + 0x4]          ; 0x8b5a
    inc ax                           ; 0x8b5d
    inc ax                           ; 0x8b5e
    inc ax                           ; 0x8b5f
    push ax                          ; 0x8b60
    call ds_app_mem_TIMR             ; 0x8b61
    add sp, byte 4                   ; 0x8b64
    mov ax, 0xc2                     ; 0x8b67
    push ax                          ; 0x8b6a
    mov ax, 0x9b                     ; 0x8b6b
    push ax                          ; 0x8b6e
    call gfx_entry_12                ; 0x8b6f
    add sp, byte 4                   ; 0x8b72
    mov ax, word [bp - 0x0004]       ; 0x8b75
    add ax, strict word 0x16         ; 0x8b78
    push ax                          ; 0x8b7b
    lea ax, word [bp - 0x0024]       ; 0x8b7c
    push ax                          ; 0x8b7f
    call aztec_strlen                ; 0x8b80
    pop cx                           ; 0x8b83
    mov cx, ax                       ; 0x8b84
    mov ax, 0x11                     ; 0x8b86
    sub ax, cx                       ; 0x8b89
    mov cx, 6                        ; 0x8b8b
    imul cx                          ; 0x8b8e
    inc ax                           ; 0x8b90
    inc ax                           ; 0x8b91
    mov cx, 2                        ; 0x8b92
    cwd                              ; 0x8b95
    idiv cx                          ; 0x8b96
    add ax, word [bp - 0x0002]       ; 0x8b98
    add ax, strict word 0x5d         ; 0x8b9b
    push ax                          ; 0x8b9e
    call gfx_entry_13                ; 0x8b9f
    add sp, byte 4                   ; 0x8ba2
    mov ax, 0                        ; 0x8ba5
    push ax                          ; 0x8ba8
    lea ax, word [bp - 0x0024]       ; 0x8ba9
    push ax                          ; 0x8bac
    call ds_string_loc_QRJV          ; 0x8bad
    add sp, byte 4                   ; 0x8bb0
    push word [bp + 0xc]             ; 0x8bb3
    mov ax, bss_0e38                 ; 0x8bb6
    push ax                          ; 0x8bb9
    call aztec_strcpy                ; 0x8bba
    add sp, byte 4                   ; 0x8bbd
    mov ax, 1                        ; 0x8bc0
    push ax                          ; 0x8bc3
    mov ax, 0                        ; 0x8bc4
    push ax                          ; 0x8bc7
    push ax                          ; 0x8bc8
    mov ax, 1                        ; 0x8bc9
    push ax                          ; 0x8bcc
    mov ax, 0x11                     ; 0x8bcd
    push ax                          ; 0x8bd0
    mov ax, word [bp - 0x0004]       ; 0x8bd1
    add ax, strict word 0x1f         ; 0x8bd4
    push ax                          ; 0x8bd7
    mov ax, word [bp - 0x0002]       ; 0x8bd8
    add ax, strict word 0x5d         ; 0x8bdb
    push ax                          ; 0x8bde
    call ds_app_HTKI                 ; 0x8bdf
    add sp, byte 0x0e                ; 0x8be2
    mov ax, 0                        ; 0x8be5
    push ax                          ; 0x8be8
    mov ax, 0x20                     ; 0x8be9
    push ax                          ; 0x8bec
    mov ax, word [bp - 0x0004]       ; 0x8bed
    add ax, strict word 0x25         ; 0x8bf0
    push ax                          ; 0x8bf3
    mov ax, word [bp - 0x0002]       ; 0x8bf4
    add ax, 0xc5                     ; 0x8bf7
    push ax                          ; 0x8bfa
    mov ax, word [bp - 0x0004]       ; 0x8bfb
    add ax, strict word 0x1f         ; 0x8bfe
    push ax                          ; 0x8c01
    mov ax, word [bp - 0x0002]       ; 0x8c02
    add ax, strict word 0x5d         ; 0x8c05
    push ax                          ; 0x8c08
    mov ax, 0                        ; 0x8c09
    push ax                          ; 0x8c0c
    call ds_app_NGUR                 ; 0x8c0d
    add sp, byte 0x0e                ; 0x8c10
    mov ax, 0                        ; 0x8c13
    push ax                          ; 0x8c16
    push ax                          ; 0x8c17
    mov ax, word [bp - 0x0004]       ; 0x8c18
    add ax, strict word 0xf          ; 0x8c1b
    push ax                          ; 0x8c1e
    mov ax, word [bp - 0x0002]       ; 0x8c1f
    add ax, strict word 0x50         ; 0x8c22
    push ax                          ; 0x8c25
    mov ax, word [bp - 0x0004]       ; 0x8c26
    add ax, strict word 7            ; 0x8c29
    push ax                          ; 0x8c2c
    mov ax, word [bp - 0x0002]       ; 0x8c2d
    add ax, strict word 8            ; 0x8c30
    push ax                          ; 0x8c33
    mov ax, 1                        ; 0x8c34
    push ax                          ; 0x8c37
    call ds_app_NGUR                 ; 0x8c38
    add sp, byte 0x0e                ; 0x8c3b
    mov ax, 0                        ; 0x8c3e
    push ax                          ; 0x8c41
    mov ax, 0xd                      ; 0x8c42
    push ax                          ; 0x8c45
    mov ax, word [bp - 0x0004]       ; 0x8c46
    add ax, strict word 0x1f         ; 0x8c49
    push ax                          ; 0x8c4c
    mov ax, word [bp - 0x0002]       ; 0x8c4d
    add ax, strict word 0x50         ; 0x8c50
    push ax                          ; 0x8c53
    mov ax, word [bp - 0x0004]       ; 0x8c54
    add ax, strict word 0x17         ; 0x8c57
    push ax                          ; 0x8c5a
    mov ax, word [bp - 0x0002]       ; 0x8c5b
    add ax, strict word 8            ; 0x8c5e
    push ax                          ; 0x8c61
    mov ax, 2                        ; 0x8c62
    push ax                          ; 0x8c65
    call ds_app_NGUR                 ; 0x8c66
    add sp, byte 0x0e                ; 0x8c69
    mov ax, 0                        ; 0x8c6c
    push ax                          ; 0x8c6f
    mov ax, 0x1b                     ; 0x8c70
    push ax                          ; 0x8c73
    mov ax, word [bp - 0x0004]       ; 0x8c74
    add ax, strict word 0x2f         ; 0x8c77
    push ax                          ; 0x8c7a
    mov ax, word [bp - 0x0002]       ; 0x8c7b
    add ax, strict word 0x50         ; 0x8c7e
    push ax                          ; 0x8c81
    mov ax, word [bp - 0x0004]       ; 0x8c82
    add ax, strict word 0x27         ; 0x8c85
    push ax                          ; 0x8c88
    mov ax, word [bp - 0x0002]       ; 0x8c89
    add ax, strict word 8            ; 0x8c8c
    push ax                          ; 0x8c8f
    mov ax, 3                        ; 0x8c90
    push ax                          ; 0x8c93
    call ds_app_NGUR                 ; 0x8c94
    add sp, byte 0x0e                ; 0x8c97
    mov ax, 0                        ; 0x8c9a
    push ax                          ; 0x8c9d
    push ax                          ; 0x8c9e
    push ax                          ; 0x8c9f
    push ax                          ; 0x8ca0
    push ax                          ; 0x8ca1
    mov ax, 0xffff                   ; 0x8ca2
    push ax                          ; 0x8ca5
    mov ax, 4                        ; 0x8ca6
    push ax                          ; 0x8ca9
    call ds_app_NGUR                 ; 0x8caa
    add sp, byte 0x0e                ; 0x8cad
    mov ax, word [bp - 0x0008]       ; 0x8cb0
    inc ax                           ; 0x8cb3
    push ax                          ; 0x8cb4
    mov ax, word [bp - 0x0006]       ; 0x8cb5
    inc ax                           ; 0x8cb8
    push ax                          ; 0x8cb9
    mov ax, word [bp - 0x0004]       ; 0x8cba
    dec ax                           ; 0x8cbd
    push ax                          ; 0x8cbe
    mov ax, word [bp - 0x0002]       ; 0x8cbf
    dec ax                           ; 0x8cc2
    push ax                          ; 0x8cc3
    call gfx_entry_16                ; 0x8cc4
    add sp, byte 8                   ; 0x8cc7
    call bios_kbd_check              ; 0x8cca
    mov ax, 0                        ; 0x8ccd
    push ax                          ; 0x8cd0
    mov ax, 1                        ; 0x8cd1
    push ax                          ; 0x8cd4
    mov ax, 0                        ; 0x8cd5
    push ax                          ; 0x8cd8
    mov ax, 7                        ; 0x8cd9
    push ax                          ; 0x8cdc
    mov ax, word [bp - 0x0004]       ; 0x8cdd
    add ax, strict word 0x20         ; 0x8ce0
    push ax                          ; 0x8ce3
    mov ax, word [bp - 0x0002]       ; 0x8ce4
    add ax, strict word 0x5f         ; 0x8ce7
    push ax                          ; 0x8cea
    mov ax, bss_0e38                 ; 0x8ceb
    push ax                          ; 0x8cee
    call api_idx_0008_LLVT           ; 0x8cef
    add sp, byte 0x0e                ; 0x8cf2
    mov ax, bss_0e38                 ; 0x8cf5
    push ax                          ; 0x8cf8
    push word [bp + 0xc]             ; 0x8cf9
    call aztec_strcpy                ; 0x8cfc
    add sp, byte 4                   ; 0x8cff
    mov ax, 1                        ; 0x8d02
    push ax                          ; 0x8d05
    mov ax, 0xffff                   ; 0x8d06
    push ax                          ; 0x8d09
    mov ax, 0                        ; 0x8d0a
    push ax                          ; 0x8d0d
    mov ax, 1                        ; 0x8d0e
    push ax                          ; 0x8d11
    mov ax, 0x11                     ; 0x8d12
    push ax                          ; 0x8d15
    mov ax, word [bp - 0x0004]       ; 0x8d16
    add ax, strict word 0x1f         ; 0x8d19
    push ax                          ; 0x8d1c
    mov ax, word [bp - 0x0002]       ; 0x8d1d
    add ax, strict word 0x5d         ; 0x8d20
    push ax                          ; 0x8d23
    call ds_app_HTKI                 ; 0x8d24
    add sp, byte 0x0e                ; 0x8d27
    mov ax, word [bp - 0x0004]       ; 0x8d2a
    add ax, strict word 0x26         ; 0x8d2d
    push ax                          ; 0x8d30
    mov ax, word [bp - 0x0002]       ; 0x8d31
    add ax, 0xc5                     ; 0x8d34
    push ax                          ; 0x8d37
    mov ax, word [bp - 0x0004]       ; 0x8d38
    add ax, strict word 0x1f         ; 0x8d3b
    push ax                          ; 0x8d3e
    mov ax, word [bp - 0x0002]       ; 0x8d3f
    add ax, strict word 0x5d         ; 0x8d42
    push ax                          ; 0x8d45
    call gfx_entry_16                ; 0x8d46
    add sp, byte 8                   ; 0x8d49
    mov word [bp - 0x0010], 1        ; 0x8d4c
@..api_idx_0026_QIGS.l1:
    mov ax, 0x59fe                   ; 0x8d51
    push ax                          ; 0x8d54
    call ds_app_io_UHMG              ; 0x8d55
    pop cx                           ; 0x8d58
    dec ax                           ; 0x8d59
    mov word [bp - 0x000e], ax       ; 0x8d5a
    cmp word [bss_5b3e], byte 1      ; 0x8d5d
    je short @..api_idx_0026_QIGS.l2 ; 0x8d62
    jmp near @..api_idx_0026_QIGS.l14 ; 0x8d64
@..api_idx_0026_QIGS.l2:
    jmp near @..api_idx_0026_QIGS.l10 ; 0x8d67
@..api_idx_0026_QIGS.l3:
    call bios_kbd_check              ; 0x8d6a
    mov ax, 1                        ; 0x8d6d
    push ax                          ; 0x8d70
    mov ax, 0                        ; 0x8d71
    push ax                          ; 0x8d74
    push ax                          ; 0x8d75
    mov ax, 1                        ; 0x8d76
    push ax                          ; 0x8d79
    mov ax, 0x11                     ; 0x8d7a
    push ax                          ; 0x8d7d
    mov ax, word [bp - 0x0004]       ; 0x8d7e
    add ax, strict word 0x1f         ; 0x8d81
    push ax                          ; 0x8d84
    mov ax, word [bp - 0x0002]       ; 0x8d85
    add ax, strict word 0x5d         ; 0x8d88
    push ax                          ; 0x8d8b
    call ds_app_HTKI                 ; 0x8d8c
    add sp, byte 0x0e                ; 0x8d8f
    mov ax, word [bp - 0x0004]       ; 0x8d92
    add ax, strict word 0x26         ; 0x8d95
    push ax                          ; 0x8d98
    mov ax, word [bp - 0x0002]       ; 0x8d99
    add ax, 0xc5                     ; 0x8d9c
    push ax                          ; 0x8d9f
    mov ax, word [bp - 0x0004]       ; 0x8da0
    add ax, strict word 0x1f         ; 0x8da3
    push ax                          ; 0x8da6
    mov ax, word [bp - 0x0002]       ; 0x8da7
    add ax, strict word 0x5d         ; 0x8daa
    push ax                          ; 0x8dad
    call gfx_entry_16                ; 0x8dae
    add sp, byte 8                   ; 0x8db1
    mov ax, 0                        ; 0x8db4
    push ax                          ; 0x8db7
    mov ax, 1                        ; 0x8db8
    push ax                          ; 0x8dbb
    mov ax, 0                        ; 0x8dbc
    push ax                          ; 0x8dbf
    mov ax, 7                        ; 0x8dc0
    push ax                          ; 0x8dc3
    mov ax, word [bp - 0x0004]       ; 0x8dc4
    add ax, strict word 0x20         ; 0x8dc7
    push ax                          ; 0x8dca
    mov ax, word [bp - 0x0002]       ; 0x8dcb
    add ax, strict word 0x5f         ; 0x8dce
    push ax                          ; 0x8dd1
    mov ax, bss_0e38                 ; 0x8dd2
    push ax                          ; 0x8dd5
    call api_idx_0008_LLVT           ; 0x8dd6
    add sp, byte 0x0e                ; 0x8dd9
    mov ax, bss_0e38                 ; 0x8ddc
    push ax                          ; 0x8ddf
    push word [bp + 0xc]             ; 0x8de0
    call aztec_strcpy                ; 0x8de3
    add sp, byte 4                   ; 0x8de6
    mov ax, 1                        ; 0x8de9
    push ax                          ; 0x8dec
    mov ax, 0xffff                   ; 0x8ded
    push ax                          ; 0x8df0
    mov ax, 0                        ; 0x8df1
    push ax                          ; 0x8df4
    mov ax, 1                        ; 0x8df5
    push ax                          ; 0x8df8
    mov ax, 0x11                     ; 0x8df9
    push ax                          ; 0x8dfc
    mov ax, word [bp - 0x0004]       ; 0x8dfd
    add ax, strict word 0x1f         ; 0x8e00
    push ax                          ; 0x8e03
    mov ax, word [bp - 0x0002]       ; 0x8e04
    add ax, strict word 0x5d         ; 0x8e07
    push ax                          ; 0x8e0a
    call ds_app_HTKI                 ; 0x8e0b
    add sp, byte 0x0e                ; 0x8e0e
    mov ax, word [bp - 0x0004]       ; 0x8e11
    add ax, strict word 0x26         ; 0x8e14
    push ax                          ; 0x8e17
    mov ax, word [bp - 0x0002]       ; 0x8e18
    add ax, 0xc5                     ; 0x8e1b
    push ax                          ; 0x8e1e
    mov ax, word [bp - 0x0004]       ; 0x8e1f
    add ax, strict word 0x1f         ; 0x8e22
    push ax                          ; 0x8e25
    mov ax, word [bp - 0x0002]       ; 0x8e26
    add ax, strict word 0x5d         ; 0x8e29
    push ax                          ; 0x8e2c
    call gfx_entry_16                ; 0x8e2d
    add sp, byte 8                   ; 0x8e30
    jmp near @..api_idx_0026_QIGS.l14 ; 0x8e33
@..api_idx_0026_QIGS.l4:
    cmp word [bp + 0x6], byte 0      ; 0x8e36
    je short @..api_idx_0026_QIGS.l5 ; 0x8e3a
    mov ax, 1                        ; 0x8e3c
    push ax                          ; 0x8e3f
    push ax                          ; 0x8e40
    mov ax, 0xc                      ; 0x8e41
    push ax                          ; 0x8e44
    mov ax, word [bp - 0x0004]       ; 0x8e45
    add ax, strict word 7            ; 0x8e48
    push ax                          ; 0x8e4b
    mov ax, word [bp - 0x0002]       ; 0x8e4c
    add ax, strict word 8            ; 0x8e4f
    push ax                          ; 0x8e52
    call ds_app_VIGG                 ; 0x8e53
    add sp, byte 0x0a                ; 0x8e56
    mov ax, 0                        ; 0x8e59
    push ax                          ; 0x8e5c
    mov ax, 1                        ; 0x8e5d
    push ax                          ; 0x8e60
    mov ax, 0xc                      ; 0x8e61
    push ax                          ; 0x8e64
    mov ax, word [bp - 0x0004]       ; 0x8e65
    add ax, strict word 7            ; 0x8e68
    push ax                          ; 0x8e6b
    mov ax, word [bp - 0x0002]       ; 0x8e6c
    add ax, strict word 8            ; 0x8e6f
    push ax                          ; 0x8e72
    call ds_app_VIGG                 ; 0x8e73
    add sp, byte 0x0a                ; 0x8e76
    mov word [bss_9050], 0           ; 0x8e79
    mov word [bp - 0x0010], 0        ; 0x8e7f
@..api_idx_0026_QIGS.l5:
    jmp near @..api_idx_0026_QIGS.l14 ; 0x8e84
@..api_idx_0026_QIGS.l6:
    cmp word [bp + 0x8], byte 0      ; 0x8e87
    je short @..api_idx_0026_QIGS.l7 ; 0x8e8b
    mov ax, 1                        ; 0x8e8d
    push ax                          ; 0x8e90
    push ax                          ; 0x8e91
    mov ax, 0xc                      ; 0x8e92
    push ax                          ; 0x8e95
    mov ax, word [bp - 0x0004]       ; 0x8e96
    add ax, strict word 0x17         ; 0x8e99
    push ax                          ; 0x8e9c
    mov ax, word [bp - 0x0002]       ; 0x8e9d
    add ax, strict word 8            ; 0x8ea0
    push ax                          ; 0x8ea3
    call ds_app_VIGG                 ; 0x8ea4
    add sp, byte 0x0a                ; 0x8ea7
    mov ax, 0                        ; 0x8eaa
    push ax                          ; 0x8ead
    mov ax, 1                        ; 0x8eae
    push ax                          ; 0x8eb1
    mov ax, 0xc                      ; 0x8eb2
    push ax                          ; 0x8eb5
    mov ax, word [bp - 0x0004]       ; 0x8eb6
    add ax, strict word 0x17         ; 0x8eb9
    push ax                          ; 0x8ebc
    mov ax, word [bp - 0x0002]       ; 0x8ebd
    add ax, strict word 8            ; 0x8ec0
    push ax                          ; 0x8ec3
    call ds_app_VIGG                 ; 0x8ec4
    add sp, byte 0x0a                ; 0x8ec7
    mov word [bss_9050], 1           ; 0x8eca
    mov word [bp - 0x0010], 0        ; 0x8ed0
@..api_idx_0026_QIGS.l7:
    jmp short @..api_idx_0026_QIGS.l14 ; 0x8ed5
@..api_idx_0026_QIGS.l8:
    cmp word [bp + 0xa], byte 0      ; 0x8ed7
    je short @..api_idx_0026_QIGS.l9 ; 0x8edb
    mov ax, 1                        ; 0x8edd
    push ax                          ; 0x8ee0
    push ax                          ; 0x8ee1
    mov ax, 0xc                      ; 0x8ee2
    push ax                          ; 0x8ee5
    mov ax, word [bp - 0x0004]       ; 0x8ee6
    add ax, strict word 0x27         ; 0x8ee9
    push ax                          ; 0x8eec
    mov ax, word [bp - 0x0002]       ; 0x8eed
    add ax, strict word 8            ; 0x8ef0
    push ax                          ; 0x8ef3
    call ds_app_VIGG                 ; 0x8ef4
    add sp, byte 0x0a                ; 0x8ef7
    mov ax, 0                        ; 0x8efa
    push ax                          ; 0x8efd
    mov ax, 1                        ; 0x8efe
    push ax                          ; 0x8f01
    mov ax, 0xc                      ; 0x8f02
    push ax                          ; 0x8f05
    mov ax, word [bp - 0x0004]       ; 0x8f06
    add ax, strict word 0x27         ; 0x8f09
    push ax                          ; 0x8f0c
    mov ax, word [bp - 0x0002]       ; 0x8f0d
    add ax, strict word 8            ; 0x8f10
    push ax                          ; 0x8f13
    call ds_app_VIGG                 ; 0x8f14
    add sp, byte 0x0a                ; 0x8f17
    mov word [bss_9050], 2           ; 0x8f1a
    mov word [bp - 0x0010], 0        ; 0x8f20
@..api_idx_0026_QIGS.l9:
    jmp short @..api_idx_0026_QIGS.l14 ; 0x8f25
@..api_idx_0026_QIGS.l10:
    cmp ax, strict word 0            ; 0x8f27
    jne short @..api_idx_0026_QIGS.l11 ; 0x8f2a
    jmp near @..api_idx_0026_QIGS.l3 ; 0x8f2c
@..api_idx_0026_QIGS.l11:
    cmp ax, strict word 1            ; 0x8f2f
    jne short @..api_idx_0026_QIGS.l12 ; 0x8f32
    jmp near @..api_idx_0026_QIGS.l4 ; 0x8f34
@..api_idx_0026_QIGS.l12:
    cmp ax, strict word 2            ; 0x8f37
    jne short @..api_idx_0026_QIGS.l13 ; 0x8f3a
    jmp near @..api_idx_0026_QIGS.l6 ; 0x8f3c
@..api_idx_0026_QIGS.l13:
    cmp ax, strict word 3            ; 0x8f3f
    je short @..api_idx_0026_QIGS.l8 ; 0x8f42
@..api_idx_0026_QIGS.l14:
    cmp word [bp - 0x0010], byte 0   ; 0x8f44
    je short @..api_idx_0026_QIGS.l15 ; 0x8f48
    jmp near @..api_idx_0026_QIGS.l1 ; 0x8f4a
@..api_idx_0026_QIGS.l15:
    mov ax, 1                        ; 0x8f4d
    push ax                          ; 0x8f50
    push word [bp - 0x0026]          ; 0x8f51
    call ds_app_file_HMNO            ; 0x8f54
    add sp, byte 4                   ; 0x8f57
    mov word [bss_904e], 0xffff      ; 0x8f5a
    mov ax, word [bss_9050]          ; 0x8f60
    ret                              ; 0x8f63
