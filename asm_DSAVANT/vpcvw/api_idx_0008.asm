api_idx_0008:
    mov ax, 0xfff8                   ; 0x1b17
    call ds_aztec_csav               ; 0x1b1a
    mov ax, word [bp + 0x6]          ; 0x1b1d
    cwd                              ; 0x1b20
    idiv word [bp + 0x12]            ; 0x1b21
    imul word [bp + 0xe]             ; 0x1b24
    mov word [bp - 0x0002], ax       ; 0x1b27
    mov ax, word [bp + 0x6]          ; 0x1b2a
    cwd                              ; 0x1b2d
    idiv word [bp + 0x12]            ; 0x1b2e
    mov ax, dx                       ; 0x1b31
    imul word [bp + 0x10]            ; 0x1b33
    mov word [bp - 0x0004], ax       ; 0x1b36
    mov ax, word [bp + 0xa]          ; 0x1b39
    add ax, word [bp - 0x0004]       ; 0x1b3c
    add ax, strict word 9            ; 0x1b3f
    push ax                          ; 0x1b42
    mov ax, 6                        ; 0x1b43
    imul word [bp + 0xc]             ; 0x1b46
    add ax, word [bp + 0x8]          ; 0x1b49
    add ax, word [bp - 0x0002]       ; 0x1b4c
    inc ax                           ; 0x1b4f
    push ax                          ; 0x1b50
    mov ax, word [bp + 0xa]          ; 0x1b51
    add ax, word [bp - 0x0004]       ; 0x1b54
    dec ax                           ; 0x1b57
    push ax                          ; 0x1b58
    mov ax, word [bp + 0x8]          ; 0x1b59
    add ax, word [bp - 0x0002]       ; 0x1b5c
    dec ax                           ; 0x1b5f
    push ax                          ; 0x1b60
    call ds_loc_3b6f                 ; 0x1b61
    add sp, byte 8                   ; 0x1b64
    mov word [bp - 0x0006], dx       ; 0x1b67
    mov word [bp - 0x0008], ax       ; 0x1b6a
    mov ax, 0                        ; 0x1b6d
    push ax                          ; 0x1b70
    mov ax, word [bp + 0xa]          ; 0x1b71
    add ax, word [bp - 0x0004]       ; 0x1b74
    add ax, strict word 8            ; 0x1b77
    push ax                          ; 0x1b7a
    mov ax, 6                        ; 0x1b7b
    imul word [bp + 0xc]             ; 0x1b7e
    add ax, word [bp + 0x8]          ; 0x1b81
    add ax, word [bp - 0x0002]       ; 0x1b84
    push ax                          ; 0x1b87
    mov ax, word [bp + 0xa]          ; 0x1b88
    add ax, word [bp - 0x0004]       ; 0x1b8b
    push ax                          ; 0x1b8e
    mov ax, word [bp + 0x8]          ; 0x1b8f
    add ax, word [bp - 0x0002]       ; 0x1b92
    push ax                          ; 0x1b95
    call ds_app_0f2a                 ; 0x1b96
    add sp, byte 0x0a                ; 0x1b99
    mov ax, 0xc0                     ; 0x1b9c
    push ax                          ; 0x1b9f
    push word [bp + 0x14]            ; 0x1ba0
    call ds_loc_3a6a                 ; 0x1ba3
    add sp, byte 4                   ; 0x1ba6
    mov ax, word [bp + 0xa]          ; 0x1ba9
    add ax, word [bp - 0x0004]       ; 0x1bac
    inc ax                           ; 0x1baf
    inc ax                           ; 0x1bb0
    push ax                          ; 0x1bb1
    push word [bp + 0x4]             ; 0x1bb2
    call ds_aztec_strlen             ; 0x1bb5
    pop cx                           ; 0x1bb8
    mov cx, ax                       ; 0x1bb9
    mov ax, word [bp + 0xc]          ; 0x1bbb
    sub ax, cx                       ; 0x1bbe
    mov cx, 6                        ; 0x1bc0
    imul cx                          ; 0x1bc3
    mov cx, 2                        ; 0x1bc5
    cwd                              ; 0x1bc8
    idiv cx                          ; 0x1bc9
    add ax, word [bp + 0x8]          ; 0x1bcb
    add ax, word [bp - 0x0002]       ; 0x1bce
    inc ax                           ; 0x1bd1
    push ax                          ; 0x1bd2
    call ds_loc_3a50                 ; 0x1bd3
    add sp, byte 4                   ; 0x1bd6
    mov ax, 0                        ; 0x1bd9
    push ax                          ; 0x1bdc
    push word [bp + 0x4]             ; 0x1bdd
    call ds_string_loc_3a95          ; 0x1be0
    add sp, byte 4                   ; 0x1be3
    mov ax, word [bp + 0xa]          ; 0x1be6
    add ax, word [bp - 0x0004]       ; 0x1be9
    add ax, strict word 9            ; 0x1bec
    push ax                          ; 0x1bef
    mov ax, 6                        ; 0x1bf0
    imul word [bp + 0xc]             ; 0x1bf3
    add ax, word [bp + 0x8]          ; 0x1bf6
    add ax, word [bp - 0x0002]       ; 0x1bf9
    inc ax                           ; 0x1bfc
    push ax                          ; 0x1bfd
    mov ax, word [bp + 0xa]          ; 0x1bfe
    add ax, word [bp - 0x0004]       ; 0x1c01
    dec ax                           ; 0x1c04
    push ax                          ; 0x1c05
    mov ax, word [bp + 0x8]          ; 0x1c06
    add ax, word [bp - 0x0002]       ; 0x1c09
    dec ax                           ; 0x1c0c
    push ax                          ; 0x1c0d
    call ds_loc_3b21                 ; 0x1c0e
    add sp, byte 8                   ; 0x1c11
    mov ax, 1                        ; 0x1c14
    push ax                          ; 0x1c17
    push word [bp - 0x0006]          ; 0x1c18
    push word [bp - 0x0008]          ; 0x1c1b
    call ds_loc_3b96                 ; 0x1c1e
    add sp, byte 6                   ; 0x1c21
    ret                              ; 0x1c24
loc_1c25:
    mov ax, 0                        ; 0x1c25
    call ds_aztec_csav               ; 0x1c28
    push word [bp + 0xc]             ; 0x1c2b
    mov ax, word [bp + 0x6]          ; 0x1c2e
    dec ax                           ; 0x1c31
    push ax                          ; 0x1c32
    mov ax, word [bp + 0x8]          ; 0x1c33
    inc ax                           ; 0x1c36
    push ax                          ; 0x1c37
    mov ax, word [bp + 0x6]          ; 0x1c38
    dec ax                           ; 0x1c3b
    push ax                          ; 0x1c3c
    mov ax, word [bp + 0x4]          ; 0x1c3d
    dec ax                           ; 0x1c40
    push ax                          ; 0x1c41
    call ds_loc_3b48                 ; 0x1c42
    add sp, byte 0x0a                ; 0x1c45
    push word [bp + 0xc]             ; 0x1c48
    mov ax, word [bp + 0xa]          ; 0x1c4b
    inc ax                           ; 0x1c4e
    push ax                          ; 0x1c4f
    mov ax, word [bp + 0x8]          ; 0x1c50
    inc ax                           ; 0x1c53
    push ax                          ; 0x1c54
    mov ax, word [bp + 0x6]          ; 0x1c55
    dec ax                           ; 0x1c58
    push ax                          ; 0x1c59
    mov ax, word [bp + 0x8]          ; 0x1c5a
    inc ax                           ; 0x1c5d
    push ax                          ; 0x1c5e
    call ds_loc_3b48                 ; 0x1c5f
    add sp, byte 0x0a                ; 0x1c62
    push word [bp + 0xc]             ; 0x1c65
    mov ax, word [bp + 0xa]          ; 0x1c68
    inc ax                           ; 0x1c6b
    push ax                          ; 0x1c6c
    mov ax, word [bp + 0x8]          ; 0x1c6d
    inc ax                           ; 0x1c70
    push ax                          ; 0x1c71
    mov ax, word [bp + 0xa]          ; 0x1c72
    inc ax                           ; 0x1c75
    push ax                          ; 0x1c76
    mov ax, word [bp + 0x4]          ; 0x1c77
    dec ax                           ; 0x1c7a
    push ax                          ; 0x1c7b
    call ds_loc_3b48                 ; 0x1c7c
    add sp, byte 0x0a                ; 0x1c7f
    push word [bp + 0xc]             ; 0x1c82
    mov ax, word [bp + 0xa]          ; 0x1c85
    inc ax                           ; 0x1c88
    push ax                          ; 0x1c89
    mov ax, word [bp + 0x4]          ; 0x1c8a
    dec ax                           ; 0x1c8d
    push ax                          ; 0x1c8e
    mov ax, word [bp + 0x6]          ; 0x1c8f
    dec ax                           ; 0x1c92
    push ax                          ; 0x1c93
    mov ax, word [bp + 0x4]          ; 0x1c94
    dec ax                           ; 0x1c97
    push ax                          ; 0x1c98
    call ds_loc_3b48                 ; 0x1c99
    add sp, byte 0x0a                ; 0x1c9c
    ret                              ; 0x1c9f
loc_1ca0:
    mov ax, 0xfe56                   ; 0x1ca0
    call ds_aztec_csav               ; 0x1ca3
    mov ax, word [bp + 0x14]         ; 0x1ca6
    dec ax                           ; 0x1ca9
    cwd                              ; 0x1caa
    idiv word [bp + 0x12]            ; 0x1cab
    inc ax                           ; 0x1cae
    imul word [bp + 0xe]             ; 0x1caf
    add ax, word [bp + 0x8]          ; 0x1cb2
    push ax                          ; 0x1cb5
    mov ax, 6                        ; 0x1cb6
    imul word [bp + 0xc]             ; 0x1cb9
    mov dx, ax                       ; 0x1cbc
    mov cx, word [bp + 0xe]          ; 0x1cbe
    sub cx, ax                       ; 0x1cc1
    pop ax                           ; 0x1cc3
    sub ax, cx                       ; 0x1cc4
    mov word [bp - 0x0006], ax       ; 0x1cc6
    mov ax, word [bp + 0x10]         ; 0x1cc9
    imul word [bp + 0x12]            ; 0x1ccc
    add ax, word [bp + 0xa]          ; 0x1ccf
    mov cx, word [bp + 0x10]         ; 0x1cd2
    add cx, byte 0xf7                ; 0x1cd5
    sub ax, cx                       ; 0x1cd8
    mov word [bp - 0x0008], ax       ; 0x1cda
    cmp word [bp + 0x6], byte 0      ; 0x1cdd
    jne short @..loc_1ca0.l1         ; 0x1ce1
    jmp near @..loc_1ca0.l2          ; 0x1ce3
@..loc_1ca0.l1:
    mov ax, 0x909b                   ; 0x1ce6
    push ax                          ; 0x1ce9
    mov ax, word [bp - 0x0008]       ; 0x1cea
    add ax, strict word 6            ; 0x1ced
    push ax                          ; 0x1cf0
    mov ax, word [bp - 0x0006]       ; 0x1cf1
    add ax, strict word 6            ; 0x1cf4
    push ax                          ; 0x1cf7
    mov ax, word [bp + 0xa]          ; 0x1cf8
    add ax, strict word 0xffeb       ; 0x1cfb
    push ax                          ; 0x1cfe
    mov ax, word [bp + 0x8]          ; 0x1cff
    add ax, strict word 0xfffa       ; 0x1d02
    push ax                          ; 0x1d05
    call ds_app_file_14ca            ; 0x1d06
    add sp, byte 0x0a                ; 0x1d09
    mov word [bp - 0x01a8], ax       ; 0x1d0c
    mov ax, word [bp - 0x0008]       ; 0x1d10
    add ax, strict word 5            ; 0x1d13
    push ax                          ; 0x1d16
    mov ax, word [bp - 0x0006]       ; 0x1d17
    add ax, strict word 5            ; 0x1d1a
    push ax                          ; 0x1d1d
    mov ax, word [bp + 0xa]          ; 0x1d1e
    add ax, strict word 0xffec       ; 0x1d21
    push ax                          ; 0x1d24
    mov ax, word [bp + 0x8]          ; 0x1d25
    add ax, strict word 0xfffb       ; 0x1d28
    push ax                          ; 0x1d2b
    call ds_app_0ee1                 ; 0x1d2c
    add sp, byte 8                   ; 0x1d2f
    lea ax, word [bp - 0x01a6]       ; 0x1d32
    push ax                          ; 0x1d36
    push word [bp + 0x6]             ; 0x1d37
    call ds_app_mem_0782             ; 0x1d3a
    add sp, byte 4                   ; 0x1d3d
    mov ax, 0xc2                     ; 0x1d40
    push ax                          ; 0x1d43
    mov ax, 1                        ; 0x1d44
    push ax                          ; 0x1d47
    call ds_loc_3a6a                 ; 0x1d48
    add sp, byte 4                   ; 0x1d4b
    mov ax, word [bp + 0xa]          ; 0x1d4e
    add ax, strict word 0xfff3       ; 0x1d51
    push ax                          ; 0x1d54
    lea ax, word [bp - 0x01a6]       ; 0x1d55
    push ax                          ; 0x1d59
    call ds_aztec_strlen             ; 0x1d5a
    pop cx                           ; 0x1d5d
    mov cx, 6                        ; 0x1d5e
    imul cx                          ; 0x1d61
    mov cx, 2                        ; 0x1d63
    cwd                              ; 0x1d66
    idiv cx                          ; 0x1d67
    mov cx, ax                       ; 0x1d69
    mov ax, 0xa0                     ; 0x1d6b
    sub ax, cx                       ; 0x1d6e
    push ax                          ; 0x1d70
    call ds_loc_3a50                 ; 0x1d71
    add sp, byte 4                   ; 0x1d74
    mov ax, 0                        ; 0x1d77
    push ax                          ; 0x1d7a
    lea ax, word [bp - 0x01a6]       ; 0x1d7b
    push ax                          ; 0x1d7f
    call ds_string_loc_3a95          ; 0x1d80
    add sp, byte 4                   ; 0x1d83
    jmp short @..loc_1ca0.l3         ; 0x1d86
@..loc_1ca0.l2:
    mov ax, 0x90a1                   ; 0x1d88
    push ax                          ; 0x1d8b
    mov ax, word [bp - 0x0008]       ; 0x1d8c
    inc ax                           ; 0x1d8f
    push ax                          ; 0x1d90
    mov ax, word [bp - 0x0006]       ; 0x1d91
    inc ax                           ; 0x1d94
    push ax                          ; 0x1d95
    mov ax, word [bp + 0xa]          ; 0x1d96
    dec ax                           ; 0x1d99
    push ax                          ; 0x1d9a
    mov ax, word [bp + 0x8]          ; 0x1d9b
    dec ax                           ; 0x1d9e
    push ax                          ; 0x1d9f
    call ds_app_file_14ca            ; 0x1da0
    add sp, byte 0x0a                ; 0x1da3
    mov word [bp - 0x01a8], ax       ; 0x1da6
@..loc_1ca0.l3:
    mov word [bp - 0x0002], 0        ; 0x1daa
    mov word [bp - 0x0004], 0        ; 0x1daf
@..loc_1ca0.l4:
    mov ax, word [bp - 0x0004]       ; 0x1db4
    shl ax, 1                        ; 0x1db7
    mov si, ax                       ; 0x1db9
    mov bx, word [bp + 0x1c]         ; 0x1dbb
    cmp word [bx + si], byte 0xff    ; 0x1dbe
    jne short @..loc_1ca0.l5         ; 0x1dc1
    jmp near @..loc_1ca0.l9          ; 0x1dc3
@..loc_1ca0.l5:
    cmp word [bx + si], byte 1       ; 0x1dc6
    je short @..loc_1ca0.l6          ; 0x1dc9
    jmp near @..loc_1ca0.l8          ; 0x1dcb
@..loc_1ca0.l6:
    mov ax, 0x14                     ; 0x1dce
    imul word [bp - 0x0002]          ; 0x1dd1
    lea cx, word [bp - 0x0156]       ; 0x1dd4
    add ax, cx                       ; 0x1dd8
    push ax                          ; 0x1dda
    mov ax, word [bp + 0x4]          ; 0x1ddb
    add ax, word [bp - 0x0004]       ; 0x1dde
    push ax                          ; 0x1de1
    call ds_app_mem_0782             ; 0x1de2
    add sp, byte 4                   ; 0x1de5
    mov ax, word [bp - 0x0002]       ; 0x1de8
    cwd                              ; 0x1deb
    idiv word [bp + 0x12]            ; 0x1dec
    imul word [bp + 0xe]             ; 0x1def
    mov word [bp - 0x000a], ax       ; 0x1df2
    mov ax, word [bp - 0x0002]       ; 0x1df5
    cwd                              ; 0x1df8
    idiv word [bp + 0x12]            ; 0x1df9
    mov ax, dx                       ; 0x1dfc
    imul word [bp + 0x10]            ; 0x1dfe
    mov word [bp - 0x000c], ax       ; 0x1e01
    mov ax, 0                        ; 0x1e04
    push ax                          ; 0x1e07
    mov ax, word [bp + 0xa]          ; 0x1e08
    add ax, word [bp - 0x000c]       ; 0x1e0b
    add ax, strict word 8            ; 0x1e0e
    push ax                          ; 0x1e11
    mov ax, 6                        ; 0x1e12
    imul word [bp + 0xc]             ; 0x1e15
    add ax, word [bp + 0x8]          ; 0x1e18
    add ax, word [bp - 0x000a]       ; 0x1e1b
    push ax                          ; 0x1e1e
    mov ax, word [bp + 0xa]          ; 0x1e1f
    add ax, word [bp - 0x000c]       ; 0x1e22
    push ax                          ; 0x1e25
    mov ax, word [bp + 0x8]          ; 0x1e26
    add ax, word [bp - 0x000a]       ; 0x1e29
    push ax                          ; 0x1e2c
    call ds_app_0f2a                 ; 0x1e2d
    add sp, byte 0x0a                ; 0x1e30
    mov ax, 0xc0                     ; 0x1e33
    push ax                          ; 0x1e36
    mov ax, word [bp + 0x16]         ; 0x1e37
    mov cx, word [bp - 0x0004]       ; 0x1e3a
    cmp cx, word [bp + 0x18]         ; 0x1e3d
    jne short @..loc_1ca0.l7         ; 0x1e40
    mov ax, 0x1a                     ; 0x1e42
@..loc_1ca0.l7:
    push ax                          ; 0x1e45
    call ds_loc_3a6a                 ; 0x1e46
    add sp, byte 4                   ; 0x1e49
    mov ax, word [bp + 0xa]          ; 0x1e4c
    add ax, word [bp - 0x000c]       ; 0x1e4f
    inc ax                           ; 0x1e52
    inc ax                           ; 0x1e53
    push ax                          ; 0x1e54
    mov ax, 0x14                     ; 0x1e55
    imul word [bp - 0x0002]          ; 0x1e58
    lea cx, word [bp - 0x0156]       ; 0x1e5b
    add ax, cx                       ; 0x1e5f
    push ax                          ; 0x1e61
    call ds_aztec_strlen             ; 0x1e62
    pop cx                           ; 0x1e65
    mov cx, ax                       ; 0x1e66
    mov ax, word [bp + 0xc]          ; 0x1e68
    sub ax, cx                       ; 0x1e6b
    mov cx, 6                        ; 0x1e6d
    imul cx                          ; 0x1e70
    mov cx, 2                        ; 0x1e72
    cwd                              ; 0x1e75
    idiv cx                          ; 0x1e76
    add ax, word [bp + 0x8]          ; 0x1e78
    add ax, word [bp - 0x000a]       ; 0x1e7b
    inc ax                           ; 0x1e7e
    push ax                          ; 0x1e7f
    call ds_loc_3a50                 ; 0x1e80
    add sp, byte 4                   ; 0x1e83
    mov ax, 0                        ; 0x1e86
    push ax                          ; 0x1e89
    mov ax, 0x14                     ; 0x1e8a
    imul word [bp - 0x0002]          ; 0x1e8d
    lea cx, word [bp - 0x0156]       ; 0x1e90
    add ax, cx                       ; 0x1e94
    push ax                          ; 0x1e96
    call ds_string_loc_3a95          ; 0x1e97
    add sp, byte 4                   ; 0x1e9a
    mov ax, 0                        ; 0x1e9d
    push ax                          ; 0x1ea0
    push ax                          ; 0x1ea1
    mov ax, word [bp + 0xa]          ; 0x1ea2
    add ax, word [bp - 0x000c]       ; 0x1ea5
    add ax, strict word 8            ; 0x1ea8
    push ax                          ; 0x1eab
    mov ax, 6                        ; 0x1eac
    imul word [bp + 0xc]             ; 0x1eaf
    add ax, word [bp + 0x8]          ; 0x1eb2
    add ax, word [bp - 0x000a]       ; 0x1eb5
    push ax                          ; 0x1eb8
    mov ax, word [bp + 0xa]          ; 0x1eb9
    add ax, word [bp - 0x000c]       ; 0x1ebc
    push ax                          ; 0x1ebf
    mov ax, word [bp + 0x8]          ; 0x1ec0
    add ax, word [bp - 0x000a]       ; 0x1ec3
    push ax                          ; 0x1ec6
    push word [bp - 0x0002]          ; 0x1ec7
    call ds_app_0ced                 ; 0x1eca
    add sp, byte 0x0e                ; 0x1ecd
    mov ax, word [bp - 0x0004]       ; 0x1ed0
    mov cx, word [bp - 0x0002]       ; 0x1ed3
    shl cx, 1                        ; 0x1ed6
    mov bx, cx                       ; 0x1ed8
    add bx, bp                       ; 0x1eda
    mov word [bx - 0x002a], ax       ; 0x1edc
    inc word [bp - 0x0002]           ; 0x1edf
@..loc_1ca0.l8:
    inc word [bp - 0x0004]           ; 0x1ee2
    jmp near @..loc_1ca0.l4          ; 0x1ee5
@..loc_1ca0.l9:
    mov ax, 0                        ; 0x1ee8
    push ax                          ; 0x1eeb
    push ax                          ; 0x1eec
    push ax                          ; 0x1eed
    push ax                          ; 0x1eee
    push ax                          ; 0x1eef
    mov ax, 0xffff                   ; 0x1ef0
    push ax                          ; 0x1ef3
    push word [bp - 0x0002]          ; 0x1ef4
    call ds_app_0ced                 ; 0x1ef7
    add sp, byte 0x0e                ; 0x1efa
    mov ax, 0xc7                     ; 0x1efd
    push ax                          ; 0x1f00
    mov ax, 0x13f                    ; 0x1f01
    push ax                          ; 0x1f04
    mov ax, 0                        ; 0x1f05
    push ax                          ; 0x1f08
    push ax                          ; 0x1f09
    call ds_loc_3b21                 ; 0x1f0a
    add sp, byte 8                   ; 0x1f0d
    cmp word [bss_0e32], byte 0      ; 0x1f10
    je short @..loc_1ca0.l11         ; 0x1f15
@..loc_1ca0.l10:
    mov ax, 0x59fe                   ; 0x1f17
    push ax                          ; 0x1f1a
    call ds_app_io_0b54              ; 0x1f1b
    pop cx                           ; 0x1f1e
    mov word [bp - 0x0004], ax       ; 0x1f1f
    cmp word [bss_5b3e], byte 0      ; 0x1f22
    je short @..loc_1ca0.l10         ; 0x1f27
    jmp near @..loc_1ca0.l25         ; 0x1f29
@..loc_1ca0.l11:
    mov word [bp - 0x0004], 0        ; 0x1f2c
@..loc_1ca0.l12:
    mov ax, word [bp - 0x0004]       ; 0x1f31
    cwd                              ; 0x1f34
    idiv word [bp + 0x12]            ; 0x1f35
    imul word [bp + 0xe]             ; 0x1f38
    mov word [bp - 0x000a], ax       ; 0x1f3b
    mov ax, word [bp - 0x0004]       ; 0x1f3e
    cwd                              ; 0x1f41
    idiv word [bp + 0x12]            ; 0x1f42
    mov ax, dx                       ; 0x1f45
    imul word [bp + 0x10]            ; 0x1f47
    mov word [bp - 0x000c], ax       ; 0x1f4a
    mov ax, 0x16                     ; 0x1f4d
    push ax                          ; 0x1f50
    mov ax, word [bp + 0xa]          ; 0x1f51
    add ax, word [bp - 0x000c]       ; 0x1f54
    add ax, strict word 8            ; 0x1f57
    push ax                          ; 0x1f5a
    mov ax, 6                        ; 0x1f5b
    imul word [bp + 0xc]             ; 0x1f5e
    add ax, word [bp + 0x8]          ; 0x1f61
    add ax, word [bp - 0x000a]       ; 0x1f64
    push ax                          ; 0x1f67
    mov ax, word [bp + 0xa]          ; 0x1f68
    add ax, word [bp - 0x000c]       ; 0x1f6b
    push ax                          ; 0x1f6e
    mov ax, word [bp + 0x8]          ; 0x1f6f
    add ax, word [bp - 0x000a]       ; 0x1f72
    push ax                          ; 0x1f75
    call loc_1c25                    ; 0x1f76
    add sp, byte 0x0a                ; 0x1f79
    mov ax, word [bp - 0x0008]       ; 0x1f7c
    inc ax                           ; 0x1f7f
    push ax                          ; 0x1f80
    mov ax, word [bp - 0x0006]       ; 0x1f81
    inc ax                           ; 0x1f84
    push ax                          ; 0x1f85
    mov ax, word [bp + 0xa]          ; 0x1f86
    dec ax                           ; 0x1f89
    push ax                          ; 0x1f8a
    mov ax, word [bp + 0x8]          ; 0x1f8b
    dec ax                           ; 0x1f8e
    push ax                          ; 0x1f8f
    call ds_loc_3b21                 ; 0x1f90
    add sp, byte 8                   ; 0x1f93
    mov ax, 0                        ; 0x1f96
    push ax                          ; 0x1f99
    mov ax, word [bp + 0xa]          ; 0x1f9a
    add ax, word [bp - 0x000c]       ; 0x1f9d
    add ax, strict word 8            ; 0x1fa0
    push ax                          ; 0x1fa3
    mov ax, 6                        ; 0x1fa4
    imul word [bp + 0xc]             ; 0x1fa7
    add ax, word [bp + 0x8]          ; 0x1faa
    add ax, word [bp - 0x000a]       ; 0x1fad
    push ax                          ; 0x1fb0
    mov ax, word [bp + 0xa]          ; 0x1fb1
    add ax, word [bp - 0x000c]       ; 0x1fb4
    push ax                          ; 0x1fb7
    mov ax, word [bp + 0x8]          ; 0x1fb8
    add ax, word [bp - 0x000a]       ; 0x1fbb
    push ax                          ; 0x1fbe
    call loc_1c25                    ; 0x1fbf
    add sp, byte 0x0a                ; 0x1fc2
@..loc_1ca0.l13:
    mov ax, 1                        ; 0x1fc5
    push ax                          ; 0x1fc8
    call ds_dos_con_in_noecho        ; 0x1fc9
    pop cx                           ; 0x1fcc
    test ax, ax                      ; 0x1fcd
    jne short @..loc_1ca0.l14        ; 0x1fcf
    jmp short @..loc_1ca0.l13        ; 0x1fd1
@..loc_1ca0.l14:
    mov ax, 1                        ; 0x1fd3
    push ax                          ; 0x1fd6
    call ds_dos_con_in_noecho_2      ; 0x1fd7
    pop cx                           ; 0x1fda
    sub ah, ah                       ; 0x1fdb
    mov word [bp - 0x01aa], ax       ; 0x1fdd
    mov ax, word [bp - 0x0004]       ; 0x1fe1
    cwd                              ; 0x1fe4
    idiv word [bp + 0x12]            ; 0x1fe5
    mov word [bp - 0x000a], ax       ; 0x1fe8
    mov ax, word [bp - 0x0002]       ; 0x1feb
    dec ax                           ; 0x1fee
    cwd                              ; 0x1fef
    idiv word [bp + 0x12]            ; 0x1ff0
    inc ax                           ; 0x1ff3
    mov word [bp - 0x000c], ax       ; 0x1ff4
@..loc_1ca0.l15:
    mov ax, word [bp - 0x01aa]       ; 0x1ff7
    jmp near @..loc_1ca0.l20         ; 0x1ffb
@..loc_1ca0.l16:
    mov ax, word [bp - 0x0004]       ; 0x1ffe
    add ax, word [bp + 0x12]         ; 0x2001
    dec ax                           ; 0x2004
    cwd                              ; 0x2005
    idiv word [bp + 0x12]            ; 0x2006
    mov ax, dx                       ; 0x2009
    push ax                          ; 0x200b
    mov ax, word [bp - 0x000a]       ; 0x200c
    imul word [bp + 0x12]            ; 0x200f
    mov cx, ax                       ; 0x2012
    pop ax                           ; 0x2014
    add ax, cx                       ; 0x2015
    mov word [bp - 0x0004], ax       ; 0x2017
    jmp near @..loc_1ca0.l22         ; 0x201a
@..loc_1ca0.l17:
    mov ax, word [bp - 0x0004]       ; 0x201d
    inc ax                           ; 0x2020
    cwd                              ; 0x2021
    idiv word [bp + 0x12]            ; 0x2022
    mov ax, dx                       ; 0x2025
    push ax                          ; 0x2027
    mov ax, word [bp - 0x000a]       ; 0x2028
    imul word [bp + 0x12]            ; 0x202b
    mov cx, ax                       ; 0x202e
    pop ax                           ; 0x2030
    add ax, cx                       ; 0x2031
    mov word [bp - 0x0004], ax       ; 0x2033
    jmp short @..loc_1ca0.l22        ; 0x2036
@..loc_1ca0.l18:
    mov ax, word [bp - 0x000a]       ; 0x2038
    add ax, word [bp - 0x000c]       ; 0x203b
    dec ax                           ; 0x203e
    cwd                              ; 0x203f
    idiv word [bp - 0x000c]          ; 0x2040
    mov word [bp - 0x000a], dx       ; 0x2043
    mov ax, word [bp - 0x0004]       ; 0x2046
    cwd                              ; 0x2049
    idiv word [bp + 0x12]            ; 0x204a
    mov ax, dx                       ; 0x204d
    push ax                          ; 0x204f
    mov ax, word [bp - 0x000a]       ; 0x2050
    imul word [bp + 0x12]            ; 0x2053
    mov cx, ax                       ; 0x2056
    pop ax                           ; 0x2058
    add ax, cx                       ; 0x2059
    mov word [bp - 0x0004], ax       ; 0x205b
    jmp short @..loc_1ca0.l22        ; 0x205e
@..loc_1ca0.l19:
    mov ax, word [bp - 0x000a]       ; 0x2060
    inc ax                           ; 0x2063
    cwd                              ; 0x2064
    idiv word [bp - 0x000c]          ; 0x2065
    mov word [bp - 0x000a], dx       ; 0x2068
    mov ax, word [bp - 0x0004]       ; 0x206b
    cwd                              ; 0x206e
    idiv word [bp + 0x12]            ; 0x206f
    mov ax, dx                       ; 0x2072
    push ax                          ; 0x2074
    mov ax, word [bp - 0x000a]       ; 0x2075
    imul word [bp + 0x12]            ; 0x2078
    mov cx, ax                       ; 0x207b
    pop ax                           ; 0x207d
    add ax, cx                       ; 0x207e
    mov word [bp - 0x0004], ax       ; 0x2080
    jmp short @..loc_1ca0.l22        ; 0x2083
@..loc_1ca0.l20:
    cmp ax, strict word 8            ; 0x2085
    je short @..loc_1ca0.l18         ; 0x2088
    cmp ax, strict word 9            ; 0x208a
    jne short @..loc_1ca0.l21        ; 0x208d
    jmp near @..loc_1ca0.l16         ; 0x208f
@..loc_1ca0.l21:
    cmp ax, strict word 0xa          ; 0x2092
    je short @..loc_1ca0.l19         ; 0x2095
    cmp ax, strict word 0xb          ; 0x2097
    je short @..loc_1ca0.l17         ; 0x209a
@..loc_1ca0.l22:
    mov ax, word [bp - 0x0004]       ; 0x209c
    cmp ax, word [bp - 0x0002]       ; 0x209f
    jl short @..loc_1ca0.l23         ; 0x20a2
    jmp near @..loc_1ca0.l15         ; 0x20a4
@..loc_1ca0.l23:
    cmp word [bp - 0x01aa], byte 0x0d ; 0x20a7
    je short @..loc_1ca0.l24         ; 0x20ac
    jmp near @..loc_1ca0.l12         ; 0x20ae
@..loc_1ca0.l24:
    inc word [bp - 0x0004]           ; 0x20b1
    mov ax, word [bp - 0x0008]       ; 0x20b4
    inc ax                           ; 0x20b7
    push ax                          ; 0x20b8
    mov ax, word [bp - 0x0006]       ; 0x20b9
    inc ax                           ; 0x20bc
    push ax                          ; 0x20bd
    mov ax, word [bp + 0xa]          ; 0x20be
    dec ax                           ; 0x20c1
    push ax                          ; 0x20c2
    mov ax, word [bp + 0x8]          ; 0x20c3
    dec ax                           ; 0x20c6
    push ax                          ; 0x20c7
    call ds_loc_3b21                 ; 0x20c8
    add sp, byte 8                   ; 0x20cb
@..loc_1ca0.l25:
    dec word [bp - 0x0004]           ; 0x20ce
    mov ax, word [bp - 0x0004]       ; 0x20d1
    cwd                              ; 0x20d4
    idiv word [bp + 0x12]            ; 0x20d5
    imul word [bp + 0xe]             ; 0x20d8
    mov word [bp - 0x000a], ax       ; 0x20db
    mov ax, word [bp - 0x0004]       ; 0x20de
    cwd                              ; 0x20e1
    idiv word [bp + 0x12]            ; 0x20e2
    mov ax, dx                       ; 0x20e5
    imul word [bp + 0x10]            ; 0x20e7
    mov word [bp - 0x000c], ax       ; 0x20ea
    mov ax, 1                        ; 0x20ed
    push ax                          ; 0x20f0
    push ax                          ; 0x20f1
    push word [bp + 0xc]             ; 0x20f2
    mov ax, word [bp + 0xa]          ; 0x20f5
    add ax, word [bp - 0x000c]       ; 0x20f8
    push ax                          ; 0x20fb
    mov ax, word [bp + 0x8]          ; 0x20fc
    add ax, word [bp - 0x000a]       ; 0x20ff
    push ax                          ; 0x2102
    call ds_app_10a6                 ; 0x2103
    add sp, byte 0x0a                ; 0x2106
    mov ax, 0                        ; 0x2109
    push ax                          ; 0x210c
    mov ax, 1                        ; 0x210d
    push ax                          ; 0x2110
    push word [bp + 0xc]             ; 0x2111
    mov ax, word [bp + 0xa]          ; 0x2114
    add ax, word [bp - 0x000c]       ; 0x2117
    push ax                          ; 0x211a
    mov ax, word [bp + 0x8]          ; 0x211b
    add ax, word [bp - 0x000a]       ; 0x211e
    push ax                          ; 0x2121
    call ds_app_10a6                 ; 0x2122
    add sp, byte 0x0a                ; 0x2125
    mov ax, 1                        ; 0x2128
    push ax                          ; 0x212b
    push word [bp - 0x01a8]          ; 0x212c
    call ds_app_file_16a0            ; 0x2130
    add sp, byte 4                   ; 0x2133
    cmp word [bp + 0x1a], byte 0     ; 0x2136
    je short @..loc_1ca0.l27         ; 0x213a
    cmp word [bp + 0x6], byte 0      ; 0x213c
    je short @..loc_1ca0.l26         ; 0x2140
    mov ax, word [bp - 0x0008]       ; 0x2142
    add ax, strict word 6            ; 0x2145
    push ax                          ; 0x2148
    mov ax, word [bp - 0x0006]       ; 0x2149
    add ax, strict word 6            ; 0x214c
    push ax                          ; 0x214f
    mov ax, word [bp + 0xa]          ; 0x2150
    add ax, strict word 0xffeb       ; 0x2153
    push ax                          ; 0x2156
    mov ax, word [bp + 0x8]          ; 0x2157
    add ax, strict word 0xfffa       ; 0x215a
    push ax                          ; 0x215d
    call ds_loc_3b21                 ; 0x215e
    add sp, byte 8                   ; 0x2161
    jmp short @..loc_1ca0.l27        ; 0x2164
@..loc_1ca0.l26:
    mov ax, word [bp - 0x0008]       ; 0x2166
    inc ax                           ; 0x2169
    push ax                          ; 0x216a
    mov ax, word [bp - 0x0006]       ; 0x216b
    inc ax                           ; 0x216e
    push ax                          ; 0x216f
    mov ax, word [bp + 0xa]          ; 0x2170
    dec ax                           ; 0x2173
    push ax                          ; 0x2174
    mov ax, word [bp + 0x8]          ; 0x2175
    dec ax                           ; 0x2178
    push ax                          ; 0x2179
    call ds_loc_3b21                 ; 0x217a
    add sp, byte 8                   ; 0x217d
@..loc_1ca0.l27:
    mov ax, word [bp - 0x0004]       ; 0x2180
    mov word [bss_9052], ax          ; 0x2183
    shl ax, 1                        ; 0x2186
    mov bx, ax                       ; 0x2188
    add bx, bp                       ; 0x218a
    mov ax, word [bx - 0x002a]       ; 0x218c
    ret                              ; 0x218f
loc_2190:
    mov ax, 0                        ; 0x2190
    call ds_aztec_csav               ; 0x2193
    mov ax, 1                        ; 0x2196
    push ax                          ; 0x2199
    push ax                          ; 0x219a
    push word [bp + 0x4]             ; 0x219b
    call api_idx_000c                ; 0x219e
    add sp, byte 6                   ; 0x21a1
    mov ax, 0x3e8                    ; 0x21a4
    push ax                          ; 0x21a7
    call ds_leaf_loc_36d0            ; 0x21a8
    pop cx                           ; 0x21ab
    ret                              ; 0x21ac
loc_21ad:
    mov ax, 0                        ; 0x21ad
    call ds_aztec_csav               ; 0x21b0
    cmp word [bp + 0x8], byte 1      ; 0x21b3
    jne short @..loc_21ad.l3         ; 0x21b7
    cmp word [bp + 0x6], byte 0      ; 0x21b9
    jle short @..loc_21ad.l1         ; 0x21bd
    mov ax, word [bp + 0x4]          ; 0x21bf
    sub word [bp + 0x6], ax          ; 0x21c2
    jmp short @..loc_21ad.l2         ; 0x21c5
@..loc_21ad.l1:
    mov ax, 0                        ; 0x21c7
    sub ax, word [bp + 0x4]          ; 0x21ca
    cmp ax, word [bp + 0x6]          ; 0x21cd
    jge short @..loc_21ad.l2         ; 0x21d0
    mov word [bp + 0x6], ax          ; 0x21d2
@..loc_21ad.l2:
    jmp short @..loc_21ad.l5         ; 0x21d5
@..loc_21ad.l3:
    cmp word [bp + 0x8], byte 0      ; 0x21d7
    jne short @..loc_21ad.l5         ; 0x21db
    cmp word [bp + 0x6], byte 0      ; 0x21dd
    jge short @..loc_21ad.l4         ; 0x21e1
    mov ax, word [bp + 0x4]          ; 0x21e3
    add word [bp + 0x6], ax          ; 0x21e6
    jmp short @..loc_21ad.l5         ; 0x21e9
@..loc_21ad.l4:
    mov ax, word [bp + 0x6]          ; 0x21eb
    cmp ax, word [bp + 0x4]          ; 0x21ee
    jge short @..loc_21ad.l5         ; 0x21f1
    mov ax, word [bp + 0x4]          ; 0x21f3
    mov word [bp + 0x6], ax          ; 0x21f6
@..loc_21ad.l5:
    mov ax, word [bp + 0x6]          ; 0x21f9
    ret                              ; 0x21fc
