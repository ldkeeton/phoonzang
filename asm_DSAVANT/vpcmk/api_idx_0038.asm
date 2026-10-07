api_idx_0038:
    mov ax, 0xffc8                   ; 0x0abb
    call ds_dispatch_f40b            ; 0x0abe
    mov word [data_904e], 0xffff     ; 0x0ac1
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
    call ds_dispatch_c283            ; 0x0b07
    add sp, byte 0x0a                ; 0x0b0a
    mov word [bp - 0x0038], ax       ; 0x0b0d
    push word [bp - 0x000a]          ; 0x0b10
    push word [bp - 0x0008]          ; 0x0b13
    push word [bp - 0x0006]          ; 0x0b16
    push word [bp - 0x0004]          ; 0x0b19
    call ds_dispatch_bc9a            ; 0x0b1c
    add sp, byte 8                   ; 0x0b1f
    lea ax, word [bp - 0x0036]       ; 0x0b22
    push ax                          ; 0x0b25
    push word [bp + 0x4]             ; 0x0b26
    call ds_dispatch_b53b            ; 0x0b29
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
    call ds_dispatch_c0c1            ; 0x0b4c
    add sp, byte 0x0c                ; 0x0b4f
    lea ax, word [bp - 0x0036]       ; 0x0b52
    push ax                          ; 0x0b55
    mov ax, word [bp + 0x4]          ; 0x0b56
    inc ax                           ; 0x0b59
    push ax                          ; 0x0b5a
    call ds_dispatch_b53b            ; 0x0b5b
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
    call ds_dispatch_c0c1            ; 0x0b7e
    add sp, byte 0x0c                ; 0x0b81
    lea ax, word [bp - 0x0036]       ; 0x0b84
    push ax                          ; 0x0b87
    mov ax, word [bp + 0x4]          ; 0x0b88
    inc ax                           ; 0x0b8b
    inc ax                           ; 0x0b8c
    push ax                          ; 0x0b8d
    call ds_dispatch_b53b            ; 0x0b8e
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
    call ds_dispatch_c0c1            ; 0x0bb1
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
    call ds_dispatch_bf97            ; 0x0be0
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
    call ds_dispatch_bfd8            ; 0x0c04
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
    call ds_dispatch_baa6            ; 0x0c35
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
    call ds_dispatch_baa6            ; 0x0c63
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
    mov ax, data_0002                ; 0x0c8d
    push ax                          ; 0x0c90
    call ds_dispatch_baa6            ; 0x0c91
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
