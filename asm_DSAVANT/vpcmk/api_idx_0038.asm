; auto-generated
api_idx_0038:
    mov ax, 0xffc8                   ; 0x0abb
    call aztec_csav                  ; 0x0abe
    mov word [bss_904e], 0xffff      ; 0x0ac1
    mov word [bp - 0x0004], 0x37     ; 0x0ac7
    mov word [bp - 0x0006], 0x8f     ; 0x0acc
    mov word [bp - 0x0008], 0x108    ; 0x0ad1
    mov word [bp - 0x000a], 0xc5     ; 0x0ad6
    mov word [bp - 0x0012], 0x16     ; 0x0adb
    mov ax, 7                        ; 0x0ae0
    cmp word [bp + 0xc], byte 7      ; 0x0ae3
    jge short @..api_idx_0038.l1     ; 0x0ae7
    mov ax, word [bp + 0xc]          ; 0x0ae9
@..api_idx_0038.l1:
    mov word [bp - 0x0022], ax       ; 0x0aec
    mov ax, 0x90af                   ; 0x0aef
    push ax                          ; 0x0af2
    mov ax, word [bp - 0x000a]       ; 0x0af3
    inc ax                           ; 0x0af6
    push ax                          ; 0x0af7
    mov ax, word [bp - 0x0008]       ; 0x0af8
    inc ax                           ; 0x0afb
    push ax                          ; 0x0afc
    mov ax, word [bp - 0x0006]       ; 0x0afd
    dec ax                           ; 0x0b00
    push ax                          ; 0x0b01
    mov ax, word [bp - 0x0004]       ; 0x0b02
    dec ax                           ; 0x0b05
    push ax                          ; 0x0b06
    call ds_app_file_14ca            ; 0x0b07
    add sp, byte 0x0a                ; 0x0b0a
    mov word [bp - 0x0038], ax       ; 0x0b0d
    push word [bp - 0x000a]          ; 0x0b10
    push word [bp - 0x0008]          ; 0x0b13
    push word [bp - 0x0006]          ; 0x0b16
    push word [bp - 0x0004]          ; 0x0b19
    call ds_app_0ee1                 ; 0x0b1c
    add sp, byte 8                   ; 0x0b1f
    lea ax, word [bp - 0x0036]       ; 0x0b22
    push ax                          ; 0x0b25
    push word [bp + 0x4]             ; 0x0b26
    call ds_app_mem_0782             ; 0x0b29
    add sp, byte 4                   ; 0x0b2c
    lea ax, word [bp - 0x0036]       ; 0x0b2f
    push ax                          ; 0x0b32
    push word [bp + 0x6]             ; 0x0b33
    mov ax, 1                        ; 0x0b36
    push ax                          ; 0x0b39
    mov ax, 0xc                      ; 0x0b3a
    push ax                          ; 0x0b3d
    mov ax, word [bp - 0x0006]       ; 0x0b3e
    add ax, strict word 7            ; 0x0b41
    push ax                          ; 0x0b44
    mov ax, word [bp - 0x0004]       ; 0x0b45
    add ax, strict word 8            ; 0x0b48
    push ax                          ; 0x0b4b
    call ds_app_string_1308          ; 0x0b4c
    add sp, byte 0x0c                ; 0x0b4f
    lea ax, word [bp - 0x0036]       ; 0x0b52
    push ax                          ; 0x0b55
    mov ax, word [bp + 0x4]          ; 0x0b56
    inc ax                           ; 0x0b59
    push ax                          ; 0x0b5a
    call ds_app_mem_0782             ; 0x0b5b
    add sp, byte 4                   ; 0x0b5e
    lea ax, word [bp - 0x0036]       ; 0x0b61
    push ax                          ; 0x0b64
    push word [bp + 0x8]             ; 0x0b65
    mov ax, 1                        ; 0x0b68
    push ax                          ; 0x0b6b
    mov ax, 0xc                      ; 0x0b6c
    push ax                          ; 0x0b6f
    mov ax, word [bp - 0x0006]       ; 0x0b70
    add ax, strict word 0x17         ; 0x0b73
    push ax                          ; 0x0b76
    mov ax, word [bp - 0x0004]       ; 0x0b77
    add ax, strict word 8            ; 0x0b7a
    push ax                          ; 0x0b7d
    call ds_app_string_1308          ; 0x0b7e
    add sp, byte 0x0c                ; 0x0b81
    lea ax, word [bp - 0x0036]       ; 0x0b84
    push ax                          ; 0x0b87
    mov ax, word [bp + 0x4]          ; 0x0b88
    inc ax                           ; 0x0b8b
    inc ax                           ; 0x0b8c
    push ax                          ; 0x0b8d
    call ds_app_mem_0782             ; 0x0b8e
    add sp, byte 4                   ; 0x0b91
    lea ax, word [bp - 0x0036]       ; 0x0b94
    push ax                          ; 0x0b97
    push word [bp + 0xa]             ; 0x0b98
    mov ax, 1                        ; 0x0b9b
    push ax                          ; 0x0b9e
    mov ax, 0xc                      ; 0x0b9f
    push ax                          ; 0x0ba2
    mov ax, word [bp - 0x0006]       ; 0x0ba3
    add ax, strict word 0x27         ; 0x0ba6
    push ax                          ; 0x0ba9
    mov ax, word [bp - 0x0004]       ; 0x0baa
    add ax, strict word 8            ; 0x0bad
    push ax                          ; 0x0bb0
    call ds_app_string_1308          ; 0x0bb1
    add sp, byte 0x0c                ; 0x0bb4
    mov word [bp - 0x0016], 0        ; 0x0bb7
    mov word [bp - 0x0020], 0xffff   ; 0x0bbc
    push word [bp - 0x0022]          ; 0x0bc1
    push word [bp - 0x0020]          ; 0x0bc4
    push word [bp - 0x0016]          ; 0x0bc7
    mov ax, 7                        ; 0x0bca
    push ax                          ; 0x0bcd
    mov ax, 0xf                      ; 0x0bce
    push ax                          ; 0x0bd1
    mov ax, word [bp - 0x0006]       ; 0x0bd2
    add ax, strict word 6            ; 0x0bd5
    push ax                          ; 0x0bd8
    mov ax, word [bp - 0x0004]       ; 0x0bd9
    add ax, strict word 0x5d         ; 0x0bdc
    push ax                          ; 0x0bdf
    call ds_app_11de                 ; 0x0be0
    add sp, byte 0x0e                ; 0x0be3
    mov word [bp - 0x0010], 0        ; 0x0be6
    push word [bp - 0x0010]          ; 0x0beb
    mov ax, 7                        ; 0x0bee
    push ax                          ; 0x0bf1
    mov ax, 8                        ; 0x0bf2
    push ax                          ; 0x0bf5
    mov ax, word [bp - 0x0006]       ; 0x0bf6
    add ax, strict word 6            ; 0x0bf9
    push ax                          ; 0x0bfc
    mov ax, word [bp - 0x0004]       ; 0x0bfd
    add ax, 0xc1                     ; 0x0c00
    push ax                          ; 0x0c03
    call ds_app_121f                 ; 0x0c04
    add sp, byte 0x0a                ; 0x0c07
    mov ax, 0                        ; 0x0c0a
    push ax                          ; 0x0c0d
    push ax                          ; 0x0c0e
    mov ax, word [bp - 0x0006]       ; 0x0c0f
    add ax, word [bp - 0x0010]       ; 0x0c12
    add ax, strict word 0x12         ; 0x0c15
    push ax                          ; 0x0c18
    mov ax, word [bp - 0x0004]       ; 0x0c19
    add ax, 0xc9                     ; 0x0c1c
    push ax                          ; 0x0c1f
    mov ax, word [bp - 0x0006]       ; 0x0c20
    add ax, word [bp - 0x0010]       ; 0x0c23
    add ax, strict word 0xe          ; 0x0c26
    push ax                          ; 0x0c29
    mov ax, word [bp - 0x0004]       ; 0x0c2a
    add ax, 0xc1                     ; 0x0c2d
    push ax                          ; 0x0c30
    mov ax, 0                        ; 0x0c31
    push ax                          ; 0x0c34
    call ds_app_0ced                 ; 0x0c35
    add sp, byte 0x0e                ; 0x0c38
    mov ax, 0                        ; 0x0c3b
    push ax                          ; 0x0c3e
    mov ax, 9                        ; 0x0c3f
    push ax                          ; 0x0c42
    mov ax, word [bp - 0x0006]       ; 0x0c43
    add ax, strict word 0xc          ; 0x0c46
    push ax                          ; 0x0c49
    mov ax, word [bp - 0x0004]       ; 0x0c4a
    add ax, 0xc9                     ; 0x0c4d
    push ax                          ; 0x0c50
    mov ax, word [bp - 0x0006]       ; 0x0c51
    add ax, strict word 6            ; 0x0c54
    push ax                          ; 0x0c57
    mov ax, word [bp - 0x0004]       ; 0x0c58
    add ax, 0xc1                     ; 0x0c5b
    push ax                          ; 0x0c5e
    mov ax, 1                        ; 0x0c5f
    push ax                          ; 0x0c62
    call ds_app_0ced                 ; 0x0c63
    add sp, byte 0x0e                ; 0x0c66
    mov ax, 0                        ; 0x0c69
    push ax                          ; 0x0c6c
    mov ax, 0xb                      ; 0x0c6d
    push ax                          ; 0x0c70
    mov ax, word [bp - 0x0006]       ; 0x0c71
    add ax, strict word 0x30         ; 0x0c74
    push ax                          ; 0x0c77
    mov ax, word [bp - 0x0004]       ; 0x0c78
    add ax, 0xc9                     ; 0x0c7b
    push ax                          ; 0x0c7e
    mov ax, word [bp - 0x0006]       ; 0x0c7f
    add ax, strict word 0x2a         ; 0x0c82
    push ax                          ; 0x0c85
    mov ax, word [bp - 0x0004]       ; 0x0c86
    add ax, 0xc1                     ; 0x0c89
    push ax                          ; 0x0c8c
    mov ax, 2                        ; 0x0c8d
    push ax                          ; 0x0c90
    call ds_app_0ced                 ; 0x0c91
    add sp, byte 0x0e                ; 0x0c94
    mov ax, 0                        ; 0x0c97
    push ax                          ; 0x0c9a
    push ax                          ; 0x0c9b
    mov ax, word [bp - 0x0006]       ; 0x0c9c
    add ax, strict word 0xf          ; 0x0c9f
    push ax                          ; 0x0ca2
    mov ax, word [bp - 0x0004]       ; 0x0ca3
    add ax, strict word 0x50         ; 0x0ca6
    push ax                          ; 0x0ca9
    mov ax, word [bp - 0x0006]       ; 0x0caa
    add ax, strict word 7            ; 0x0cad
    push ax                          ; 0x0cb0
    mov ax, word [bp - 0x0004]       ; 0x0cb1
    add ax, strict word 8            ; 0x0cb4
    push ax                          ; 0x0cb7
    mov ax, 3                        ; 0x0cb8
    push ax                          ; 0x0cbb
    call ds_app_0ced                 ; 0x0cbc
    add sp, byte 0x0e                ; 0x0cbf
    mov ax, 0                        ; 0x0cc2
    push ax                          ; 0x0cc5
    mov ax, 0xd                      ; 0x0cc6
    push ax                          ; 0x0cc9
    mov ax, word [bp - 0x0006]       ; 0x0cca
    add ax, strict word 0x1f         ; 0x0ccd
    push ax                          ; 0x0cd0
    mov ax, word [bp - 0x0004]       ; 0x0cd1
    add ax, strict word 0x50         ; 0x0cd4
    push ax                          ; 0x0cd7
    mov ax, word [bp - 0x0006]       ; 0x0cd8
    add ax, strict word 0x17         ; 0x0cdb
    push ax                          ; 0x0cde
    mov ax, word [bp - 0x0004]       ; 0x0cdf
    add ax, strict word 8            ; 0x0ce2
    push ax                          ; 0x0ce5
    mov ax, 4                        ; 0x0ce6
    push ax                          ; 0x0ce9
    call ds_app_0ced                 ; 0x0cea
    add sp, byte 0x0e                ; 0x0ced
    mov ax, 0                        ; 0x0cf0
    push ax                          ; 0x0cf3
    mov ax, 0x1b                     ; 0x0cf4
    push ax                          ; 0x0cf7
    mov ax, word [bp - 0x0006]       ; 0x0cf8
    add ax, strict word 0x2f         ; 0x0cfb
    push ax                          ; 0x0cfe
    mov ax, word [bp - 0x0004]       ; 0x0cff
    add ax, strict word 0x50         ; 0x0d02
    push ax                          ; 0x0d05
    mov ax, word [bp - 0x0006]       ; 0x0d06
    add ax, strict word 0x27         ; 0x0d09
    push ax                          ; 0x0d0c
    mov ax, word [bp - 0x0004]       ; 0x0d0d
    add ax, strict word 8            ; 0x0d10
    push ax                          ; 0x0d13
    mov ax, 5                        ; 0x0d14
    push ax                          ; 0x0d17
    call ds_app_0ced                 ; 0x0d18
    add sp, byte 0x0e                ; 0x0d1b
    mov ax, 7                        ; 0x0d1e
    cmp word [bp + 0xc], byte 7      ; 0x0d21
    jge short @..api_idx_0038.l2     ; 0x0d25
    mov ax, word [bp + 0xc]          ; 0x0d27
@..api_idx_0038.l2:
    mov word [bp - 0x001e], ax       ; 0x0d2a
    mov word [bp - 0x0002], 0        ; 0x0d2d
    jmp short @..api_idx_0038.l4     ; 0x0d32
@..api_idx_0038.l3:
    mov ax, 0                        ; 0x0d34
    push ax                          ; 0x0d37
    push ax                          ; 0x0d38
    mov ax, 6                        ; 0x0d39
    imul word [bp - 0x0002]          ; 0x0d3c
    add ax, word [bp - 0x0006]       ; 0x0d3f
    add ax, strict word 0xc          ; 0x0d42
    push ax                          ; 0x0d45
    mov ax, word [bp - 0x0004]       ; 0x0d46
    add ax, 0xb9                     ; 0x0d49
    push ax                          ; 0x0d4c
    mov ax, 6                        ; 0x0d4d
    imul word [bp - 0x0002]          ; 0x0d50
    add ax, word [bp - 0x0006]       ; 0x0d53
    add ax, strict word 6            ; 0x0d56
    push ax                          ; 0x0d59
    mov ax, word [bp - 0x0004]       ; 0x0d5a
    add ax, strict word 0x5d         ; 0x0d5d
    push ax                          ; 0x0d60
    mov ax, word [bp - 0x0002]       ; 0x0d61
    add ax, strict word 6            ; 0x0d64
    push ax                          ; 0x0d67
    call ds_app_0ced                 ; 0x0d68
    add sp, byte 0x0e                ; 0x0d6b
    inc word [bp - 0x0002]           ; 0x0d6e
@..api_idx_0038.l4:
    mov ax, word [bp - 0x0002]       ; 0x0d71
    cmp ax, word [bp - 0x001e]       ; 0x0d74
    jl short @..api_idx_0038.l3      ; 0x0d77
    mov ax, 0                        ; 0x0d79
    push ax                          ; 0x0d7c
    push ax                          ; 0x0d7d
    push ax                          ; 0x0d7e
    push ax                          ; 0x0d7f
    push ax                          ; 0x0d80
    mov ax, 0xffff                   ; 0x0d81
    push ax                          ; 0x0d84
    mov ax, word [bp - 0x001e]       ; 0x0d85
    add ax, strict word 6            ; 0x0d88
    push ax                          ; 0x0d8b
    call ds_app_0ced                 ; 0x0d8c
    add sp, byte 0x0e                ; 0x0d8f
    mov ax, word [bp - 0x000a]       ; 0x0d92
    inc ax                           ; 0x0d95
    push ax                          ; 0x0d96
    mov ax, word [bp - 0x0008]       ; 0x0d97
    inc ax                           ; 0x0d9a
    push ax                          ; 0x0d9b
    mov ax, word [bp - 0x0006]       ; 0x0d9c
    dec ax                           ; 0x0d9f
    push ax                          ; 0x0da0
    mov ax, word [bp - 0x0004]       ; 0x0da1
    dec ax                           ; 0x0da4
    push ax                          ; 0x0da5
    call thunk_4                     ; 0x0da6
    add sp, byte 8                   ; 0x0da9
    mov word [bp - 0x001a], 1        ; 0x0dac
@..api_idx_0038.l5:
    mov ax, 0x59fe                   ; 0x0db1
    push ax                          ; 0x0db4
    call ds_app_io_0b54              ; 0x0db5
    pop cx                           ; 0x0db8
    dec ax                           ; 0x0db9
    mov word [bp - 0x0018], ax       ; 0x0dba
    cmp word [bss_59fc], byte 0      ; 0x0dbd
    je short @..api_idx_0038.l9      ; 0x0dc2
    mov ax, word [bp - 0x0020]       ; 0x0dc4
    cmp ax, word [bp - 0x0016]       ; 0x0dc7
    jl short @..api_idx_0038.l6      ; 0x0dca
    inc word [bp - 0x0020]           ; 0x0dcc
@..api_idx_0038.l6:
    mov ax, word [bp - 0x0020]       ; 0x0dcf
    cmp ax, strict word 0xffff       ; 0x0dd2
    je short @..api_idx_0038.l7      ; 0x0dd5
    cmp ax, word [bp - 0x0016]       ; 0x0dd7
    jl short @..api_idx_0038.l7      ; 0x0dda
    mov ax, word [bp - 0x0016]       ; 0x0ddc
    add ax, word [bp - 0x001e]       ; 0x0ddf
    mov cx, ax                       ; 0x0de2
    dec ax                           ; 0x0de4
    mov cx, ax                       ; 0x0de5
    mov ax, word [bp - 0x0020]       ; 0x0de7
    cmp cx, ax                       ; 0x0dea
    jge short @..api_idx_0038.l8     ; 0x0dec
@..api_idx_0038.l7:
    mov ax, word [bp - 0x0016]       ; 0x0dee
    mov word [bp - 0x0020], ax       ; 0x0df1
@..api_idx_0038.l8:
    mov word [bss_5b3e], 1           ; 0x0df4
    mov ax, word [bp - 0x0020]       ; 0x0dfa
    sub ax, word [bp - 0x0016]       ; 0x0dfd
    add ax, strict word 6            ; 0x0e00
    mov word [bp - 0x0018], ax       ; 0x0e03
@..api_idx_0038.l9:
    cmp word [bss_5b3e], byte 1      ; 0x0e06
    je short @..api_idx_0038.l10     ; 0x0e0b
    jmp near @..api_idx_0038.l24     ; 0x0e0d
@..api_idx_0038.l10:
    mov ax, word [bp - 0x0018]       ; 0x0e10
    jmp near @..api_idx_0038.l22     ; 0x0e13
jumptable_11b9_case_0:
    lea ax, word [bp - 0x000e]       ; 0x0e16
    push ax                          ; 0x0e19
    lea ax, word [bp - 0x000c]       ; 0x0e1a
    push ax                          ; 0x0e1d
    call thunk_38                    ; 0x0e1e
    add sp, byte 4                   ; 0x0e21
    mov ax, 4                        ; 0x0e24
    push ax                          ; 0x0e27
    mov ax, 0                        ; 0x0e28
    push ax                          ; 0x0e2b
    mov ax, word [bp - 0x000e]       ; 0x0e2c
    mov cx, word [bp - 0x0006]       ; 0x0e2f
    add cx, word [bp - 0x0010]       ; 0x0e32
    add cx, byte 0x0e                ; 0x0e35
    sub ax, cx                       ; 0x0e38
    push ax                          ; 0x0e3a
    call ds_app_0a09                 ; 0x0e3b
    add sp, byte 6                   ; 0x0e3e
    mov word [bp - 0x0014], ax       ; 0x0e41
@..api_idx_0038.l11:
    lea ax, word [bp - 0x000e]       ; 0x0e44
    push ax                          ; 0x0e47
    lea ax, word [bp - 0x000c]       ; 0x0e48
    push ax                          ; 0x0e4b
    call thunk_38                    ; 0x0e4c
    add sp, byte 4                   ; 0x0e4f
    mov word [bp - 0x001c], ax       ; 0x0e52
    push word [bp - 0x0012]          ; 0x0e55
    mov ax, 0                        ; 0x0e58
    push ax                          ; 0x0e5b
    mov ax, word [bp - 0x000e]       ; 0x0e5c
    mov cx, word [bp - 0x0006]       ; 0x0e5f
    add cx, byte 0x0e                ; 0x0e62
    sub ax, cx                       ; 0x0e65
    sub ax, word [bp - 0x0014]       ; 0x0e67
    push ax                          ; 0x0e6a
    call ds_app_0a09                 ; 0x0e6b
    add sp, byte 6                   ; 0x0e6e
    mov word [bp - 0x0010], ax       ; 0x0e71
    cmp word [bp + 0xc], byte 7      ; 0x0e74
    jle short @..api_idx_0038.l12    ; 0x0e78
    mov cx, 0x64                     ; 0x0e7a
    imul cx                          ; 0x0e7d
    push ax                          ; 0x0e7f
    mov ax, word [bp - 0x0012]       ; 0x0e80
    imul cx                          ; 0x0e83
    add ax, strict word 0x64         ; 0x0e85
    mov cx, word [bp + 0xc]          ; 0x0e88
    add cx, byte 0xfa                ; 0x0e8b
    cwd                              ; 0x0e8e
    idiv cx                          ; 0x0e8f
    mov cx, ax                       ; 0x0e91
    pop ax                           ; 0x0e93
    cwd                              ; 0x0e94
    idiv cx                          ; 0x0e95
    mov word [bp - 0x0016], ax       ; 0x0e97
@..api_idx_0038.l12:
    push word [bp - 0x0022]          ; 0x0e9a
    push word [bp - 0x0020]          ; 0x0e9d
    push word [bp - 0x0016]          ; 0x0ea0
    mov ax, 7                        ; 0x0ea3
    push ax                          ; 0x0ea6
    mov ax, 0xf                      ; 0x0ea7
    push ax                          ; 0x0eaa
    mov ax, word [bp - 0x0006]       ; 0x0eab
    add ax, strict word 6            ; 0x0eae
    push ax                          ; 0x0eb1
    mov ax, word [bp - 0x0004]       ; 0x0eb2
    add ax, strict word 0x5d         ; 0x0eb5
    push ax                          ; 0x0eb8
    call ds_app_11de                 ; 0x0eb9
    add sp, byte 0x0e                ; 0x0ebc
    push word [bp - 0x0010]          ; 0x0ebf
    mov ax, 7                        ; 0x0ec2
    push ax                          ; 0x0ec5
    mov ax, 8                        ; 0x0ec6
    push ax                          ; 0x0ec9
    mov ax, word [bp - 0x0006]       ; 0x0eca
    add ax, strict word 6            ; 0x0ecd
    push ax                          ; 0x0ed0
    mov ax, word [bp - 0x0004]       ; 0x0ed1
    add ax, 0xc1                     ; 0x0ed4
    push ax                          ; 0x0ed7
    call ds_app_121f                 ; 0x0ed8
    add sp, byte 0x0a                ; 0x0edb
    mov ax, 0                        ; 0x0ede
    push ax                          ; 0x0ee1
    push ax                          ; 0x0ee2
    mov ax, word [bp - 0x0006]       ; 0x0ee3
    add ax, word [bp - 0x0010]       ; 0x0ee6
    add ax, strict word 0x12         ; 0x0ee9
    push ax                          ; 0x0eec
    mov ax, word [bp - 0x0004]       ; 0x0eed
    add ax, 0xc9                     ; 0x0ef0
    push ax                          ; 0x0ef3
    mov ax, word [bp - 0x0006]       ; 0x0ef4
    add ax, word [bp - 0x0010]       ; 0x0ef7
    add ax, strict word 0xe          ; 0x0efa
    push ax                          ; 0x0efd
    mov ax, word [bp - 0x0004]       ; 0x0efe
    add ax, 0xc1                     ; 0x0f01
    push ax                          ; 0x0f04
    mov ax, 0                        ; 0x0f05
    push ax                          ; 0x0f08
    call ds_app_0ced                 ; 0x0f09
    add sp, byte 0x0e                ; 0x0f0c
    mov ax, word [bp - 0x0006]       ; 0x0f0f
    add ax, strict word 0x30         ; 0x0f12
    push ax                          ; 0x0f15
    mov ax, word [bp - 0x0004]       ; 0x0f16
    add ax, 0xc9                     ; 0x0f19
    push ax                          ; 0x0f1c
    mov ax, word [bp - 0x0006]       ; 0x0f1d
    add ax, strict word 6            ; 0x0f20
    push ax                          ; 0x0f23
    mov ax, word [bp - 0x0004]       ; 0x0f24
    add ax, strict word 0x5d         ; 0x0f27
    push ax                          ; 0x0f2a
    call thunk_4                     ; 0x0f2b
    add sp, byte 8                   ; 0x0f2e
    cmp word [bp - 0x001c], byte 0   ; 0x0f31
    je short @..api_idx_0038.l13     ; 0x0f35
    jmp near @..api_idx_0038.l11     ; 0x0f37
@..api_idx_0038.l13:
    jmp near @..api_idx_0038.l24     ; 0x0f3a
jumptable_11b9_case_1:
    cmp word [bp - 0x0018], byte 1   ; 0x0f3d
    jne short @..api_idx_0038.l15    ; 0x0f41
    mov ax, 1                        ; 0x0f43
    push ax                          ; 0x0f46
    mov ax, word [bp - 0x0006]       ; 0x0f47
    add ax, strict word 0xc          ; 0x0f4a
    push ax                          ; 0x0f4d
    mov ax, word [bp - 0x0004]       ; 0x0f4e
    add ax, 0xc9                     ; 0x0f51
    push ax                          ; 0x0f54
    mov ax, word [bp - 0x0006]       ; 0x0f55
    add ax, strict word 6            ; 0x0f58
    push ax                          ; 0x0f5b
    mov ax, word [bp - 0x0004]       ; 0x0f5c
    add ax, 0xc1                     ; 0x0f5f
    push ax                          ; 0x0f62
    call ds_app_10ff                 ; 0x0f63
    add sp, byte 0x0a                ; 0x0f66
    cmp word [bp - 0x0016], byte 0   ; 0x0f69
    jle short @..api_idx_0038.l14    ; 0x0f6d
    dec word [bp - 0x0016]           ; 0x0f6f
@..api_idx_0038.l14:
    jmp short @..api_idx_0038.l16    ; 0x0f72
@..api_idx_0038.l15:
    mov ax, 1                        ; 0x0f74
    push ax                          ; 0x0f77
    mov ax, word [bp - 0x0006]       ; 0x0f78
    add ax, strict word 0x30         ; 0x0f7b
    push ax                          ; 0x0f7e
    mov ax, word [bp - 0x0004]       ; 0x0f7f
    add ax, 0xc9                     ; 0x0f82
    push ax                          ; 0x0f85
    mov ax, word [bp - 0x0006]       ; 0x0f86
    add ax, strict word 0x2a         ; 0x0f89
    push ax                          ; 0x0f8c
    mov ax, word [bp - 0x0004]       ; 0x0f8d
    add ax, 0xc1                     ; 0x0f90
    push ax                          ; 0x0f93
    call ds_app_10ff                 ; 0x0f94
    add sp, byte 0x0a                ; 0x0f97
    mov ax, word [bp + 0xc]          ; 0x0f9a
    add ax, strict word 0xfff9       ; 0x0f9d
    cmp ax, word [bp - 0x0016]       ; 0x0fa0
    jle short @..api_idx_0038.l16    ; 0x0fa3
    inc word [bp - 0x0016]           ; 0x0fa5
@..api_idx_0038.l16:
    cmp word [bp + 0xc], byte 7      ; 0x0fa8
    jle short @..api_idx_0038.l17    ; 0x0fac
    push word [bp - 0x0012]          ; 0x0fae
    mov ax, 0                        ; 0x0fb1
    push ax                          ; 0x0fb4
    mov ax, 0x64                     ; 0x0fb5
    imul word [bp - 0x0012]          ; 0x0fb8
    add ax, strict word 0x64         ; 0x0fbb
    mov cx, word [bp + 0xc]          ; 0x0fbe
    add cx, byte 0xf9                ; 0x0fc1
    cwd                              ; 0x0fc4
    idiv cx                          ; 0x0fc5
    imul word [bp - 0x0016]          ; 0x0fc7
    mov cx, 0x64                     ; 0x0fca
    cwd                              ; 0x0fcd
    idiv cx                          ; 0x0fce
    push ax                          ; 0x0fd0
    call ds_app_0a09                 ; 0x0fd1
    add sp, byte 6                   ; 0x0fd4
    mov word [bp - 0x0010], ax       ; 0x0fd7
@..api_idx_0038.l17:
    push word [bp - 0x0022]          ; 0x0fda
    push word [bp - 0x0020]          ; 0x0fdd
    push word [bp - 0x0016]          ; 0x0fe0
    mov ax, 7                        ; 0x0fe3
    push ax                          ; 0x0fe6
    mov ax, 0xf                      ; 0x0fe7
    push ax                          ; 0x0fea
    mov ax, word [bp - 0x0006]       ; 0x0feb
    add ax, strict word 6            ; 0x0fee
    push ax                          ; 0x0ff1
    mov ax, word [bp - 0x0004]       ; 0x0ff2
    add ax, strict word 0x5d         ; 0x0ff5
    push ax                          ; 0x0ff8
    call ds_app_11de                 ; 0x0ff9
    add sp, byte 0x0e                ; 0x0ffc
    push word [bp - 0x0010]          ; 0x0fff
    mov ax, 7                        ; 0x1002
    push ax                          ; 0x1005
    mov ax, 8                        ; 0x1006
    push ax                          ; 0x1009
    mov ax, word [bp - 0x0006]       ; 0x100a
    add ax, strict word 6            ; 0x100d
    push ax                          ; 0x1010
    mov ax, word [bp - 0x0004]       ; 0x1011
    add ax, 0xc1                     ; 0x1014
    push ax                          ; 0x1017
    call ds_app_121f                 ; 0x1018
    add sp, byte 0x0a                ; 0x101b
    mov ax, 0                        ; 0x101e
    push ax                          ; 0x1021
    push ax                          ; 0x1022
    mov ax, word [bp - 0x0006]       ; 0x1023
    add ax, word [bp - 0x0010]       ; 0x1026
    add ax, strict word 0x12         ; 0x1029
    push ax                          ; 0x102c
    mov ax, word [bp - 0x0004]       ; 0x102d
    add ax, 0xc9                     ; 0x1030
    push ax                          ; 0x1033
    mov ax, word [bp - 0x0006]       ; 0x1034
    add ax, word [bp - 0x0010]       ; 0x1037
    add ax, strict word 0xe          ; 0x103a
    push ax                          ; 0x103d
    mov ax, word [bp - 0x0004]       ; 0x103e
    add ax, 0xc1                     ; 0x1041
    push ax                          ; 0x1044
    mov ax, 0                        ; 0x1045
    push ax                          ; 0x1048
    call ds_app_0ced                 ; 0x1049
    add sp, byte 0x0e                ; 0x104c
    mov ax, word [bp - 0x0006]       ; 0x104f
    add ax, strict word 0x30         ; 0x1052
    push ax                          ; 0x1055
    mov ax, word [bp - 0x0004]       ; 0x1056
    add ax, 0xc9                     ; 0x1059
    push ax                          ; 0x105c
    mov ax, word [bp - 0x0006]       ; 0x105d
    add ax, strict word 6            ; 0x1060
    push ax                          ; 0x1063
    mov ax, word [bp - 0x0004]       ; 0x1064
    add ax, strict word 0x5d         ; 0x1067
    push ax                          ; 0x106a
    call thunk_4                     ; 0x106b
    add sp, byte 8                   ; 0x106e
    jmp near @..api_idx_0038.l24     ; 0x1071
jumptable_11b9_case_3:
    cmp word [bp + 0x6], byte 0      ; 0x1074
    je short @..api_idx_0038.l18     ; 0x1078
    mov ax, 1                        ; 0x107a
    push ax                          ; 0x107d
    push ax                          ; 0x107e
    mov ax, 0xc                      ; 0x107f
    push ax                          ; 0x1082
    mov ax, word [bp - 0x0006]       ; 0x1083
    add ax, strict word 7            ; 0x1086
    push ax                          ; 0x1089
    mov ax, word [bp - 0x0004]       ; 0x108a
    add ax, strict word 8            ; 0x108d
    push ax                          ; 0x1090
    call ds_app_10a6                 ; 0x1091
    add sp, byte 0x0a                ; 0x1094
    mov ax, 0                        ; 0x1097
    push ax                          ; 0x109a
    mov ax, 1                        ; 0x109b
    push ax                          ; 0x109e
    mov ax, 0xc                      ; 0x109f
    push ax                          ; 0x10a2
    mov ax, word [bp - 0x0006]       ; 0x10a3
    add ax, strict word 7            ; 0x10a6
    push ax                          ; 0x10a9
    mov ax, word [bp - 0x0004]       ; 0x10aa
    add ax, strict word 8            ; 0x10ad
    push ax                          ; 0x10b0
    call ds_app_10a6                 ; 0x10b1
    add sp, byte 0x0a                ; 0x10b4
    mov word [bss_9050], 0           ; 0x10b7
    mov word [bp - 0x001a], 0        ; 0x10bd
@..api_idx_0038.l18:
    jmp near @..api_idx_0038.l24     ; 0x10c2
jumptable_11b9_case_4:
    cmp word [bp + 0x8], byte 0      ; 0x10c5
    je short @..api_idx_0038.l19     ; 0x10c9
    mov ax, 1                        ; 0x10cb
    push ax                          ; 0x10ce
    push ax                          ; 0x10cf
    mov ax, 0xc                      ; 0x10d0
    push ax                          ; 0x10d3
    mov ax, word [bp - 0x0006]       ; 0x10d4
    add ax, strict word 0x17         ; 0x10d7
    push ax                          ; 0x10da
    mov ax, word [bp - 0x0004]       ; 0x10db
    add ax, strict word 8            ; 0x10de
    push ax                          ; 0x10e1
    call ds_app_10a6                 ; 0x10e2
    add sp, byte 0x0a                ; 0x10e5
    mov ax, 0                        ; 0x10e8
    push ax                          ; 0x10eb
    mov ax, 1                        ; 0x10ec
    push ax                          ; 0x10ef
    mov ax, 0xc                      ; 0x10f0
    push ax                          ; 0x10f3
    mov ax, word [bp - 0x0006]       ; 0x10f4
    add ax, strict word 0x17         ; 0x10f7
    push ax                          ; 0x10fa
    mov ax, word [bp - 0x0004]       ; 0x10fb
    add ax, strict word 8            ; 0x10fe
    push ax                          ; 0x1101
    call ds_app_10a6                 ; 0x1102
    add sp, byte 0x0a                ; 0x1105
    mov word [bss_9050], 1           ; 0x1108
    mov word [bp - 0x001a], 0        ; 0x110e
@..api_idx_0038.l19:
    jmp near @..api_idx_0038.l24     ; 0x1113
jumptable_11b9_case_5:
    cmp word [bp + 0xa], byte 0      ; 0x1116
    je short @..api_idx_0038.l20     ; 0x111a
    mov ax, 1                        ; 0x111c
    push ax                          ; 0x111f
    push ax                          ; 0x1120
    mov ax, 0xc                      ; 0x1121
    push ax                          ; 0x1124
    mov ax, word [bp - 0x0006]       ; 0x1125
    add ax, strict word 0x27         ; 0x1128
    push ax                          ; 0x112b
    mov ax, word [bp - 0x0004]       ; 0x112c
    add ax, strict word 8            ; 0x112f
    push ax                          ; 0x1132
    call ds_app_10a6                 ; 0x1133
    add sp, byte 0x0a                ; 0x1136
    mov ax, 0                        ; 0x1139
    push ax                          ; 0x113c
    mov ax, 1                        ; 0x113d
    push ax                          ; 0x1140
    mov ax, 0xc                      ; 0x1141
    push ax                          ; 0x1144
    mov ax, word [bp - 0x0006]       ; 0x1145
    add ax, strict word 0x27         ; 0x1148
    push ax                          ; 0x114b
    mov ax, word [bp - 0x0004]       ; 0x114c
    add ax, strict word 8            ; 0x114f
    push ax                          ; 0x1152
    call ds_app_10a6                 ; 0x1153
    add sp, byte 0x0a                ; 0x1156
    mov word [bss_9050], 2           ; 0x1159
    mov word [bp - 0x001a], 0        ; 0x115f
@..api_idx_0038.l20:
    jmp short @..api_idx_0038.l24    ; 0x1164
@..api_idx_0038.l21:
    mov ax, word [bp - 0x0016]       ; 0x1166
    add ax, word [bp - 0x0018]       ; 0x1169
    add ax, strict word 0xfffa       ; 0x116c
    mov word [bp - 0x0020], ax       ; 0x116f
    push word [bp - 0x0022]          ; 0x1172
    push ax                          ; 0x1175
    push word [bp - 0x0016]          ; 0x1176
    mov ax, 7                        ; 0x1179
    push ax                          ; 0x117c
    mov ax, 0xf                      ; 0x117d
    push ax                          ; 0x1180
    mov ax, word [bp - 0x0006]       ; 0x1181
    add ax, strict word 6            ; 0x1184
    push ax                          ; 0x1187
    mov ax, word [bp - 0x0004]       ; 0x1188
    add ax, strict word 0x5d         ; 0x118b
    push ax                          ; 0x118e
    call ds_app_11de                 ; 0x118f
    add sp, byte 0x0e                ; 0x1192
    mov ax, word [bp - 0x0006]       ; 0x1195
    add ax, strict word 0x30         ; 0x1198
    push ax                          ; 0x119b
    mov ax, word [bp - 0x0004]       ; 0x119c
    add ax, 0xb9                     ; 0x119f
    push ax                          ; 0x11a2
    mov ax, word [bp - 0x0006]       ; 0x11a3
    add ax, strict word 6            ; 0x11a6
    push ax                          ; 0x11a9
    mov ax, word [bp - 0x0004]       ; 0x11aa
    add ax, strict word 0x5d         ; 0x11ad
    push ax                          ; 0x11b0
    call thunk_4                     ; 0x11b1
    add sp, byte 8                   ; 0x11b4
    jmp short @..api_idx_0038.l24    ; 0x11b7
jumptable_11b9:
    dw jumptable_11b9_case_0 - IMAGE_BASE + 0x5055 ; 0x11b9
    dw jumptable_11b9_case_1 - IMAGE_BASE + 0x5055 ; 0x11bb
    dw jumptable_11b9_case_1 - IMAGE_BASE + 0x5055 ; 0x11bd
    dw jumptable_11b9_case_3 - IMAGE_BASE + 0x5055 ; 0x11bf
    dw jumptable_11b9_case_4 - IMAGE_BASE + 0x5055 ; 0x11c1
    dw jumptable_11b9_case_5 - IMAGE_BASE + 0x5055 ; 0x11c3
@..api_idx_0038.l22:
    cmp ax, strict word 6            ; 0x11c5
    jae short @..api_idx_0038.l23    ; 0x11c8
    xchg bx, ax                      ; 0x11ca
    shl bx, 1                        ; 0x11cb
    jmp [cs:bx + 0x6200]             ; 0x11cd
@..api_idx_0038.l23:
    jmp short @..api_idx_0038.l21    ; 0x11d2
@..api_idx_0038.l24:
    cmp word [bp - 0x001a], byte 0   ; 0x11d4
    je short @..api_idx_0038.l25     ; 0x11d8
    jmp near @..api_idx_0038.l5      ; 0x11da
@..api_idx_0038.l25:
    mov ax, 1                        ; 0x11dd
    push ax                          ; 0x11e0
    push word [bp - 0x0038]          ; 0x11e1
    call ds_app_file_16a0            ; 0x11e4
    add sp, byte 4                   ; 0x11e7
    mov ax, word [bp - 0x0020]       ; 0x11ea
    mov word [bss_904e], ax          ; 0x11ed
    mov ax, word [bss_9050]          ; 0x11f0
    ret                              ; 0x11f3
