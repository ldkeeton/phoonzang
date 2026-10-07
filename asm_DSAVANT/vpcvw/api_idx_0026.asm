api_idx_0026:
    mov ax, 0xffda                   ; 0x8a6e
    call ds_dispatch_f40b            ; 0x8a71
    mov word [data_904e], 0xffff     ; 0x8a74
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
    call ds_dispatch_c283            ; 0x8aa6
    add sp, byte 0x0a                ; 0x8aa9
    mov word [bp - 0x0026], ax       ; 0x8aac
    push word [bp - 0x0008]          ; 0x8aaf
    push word [bp - 0x0006]          ; 0x8ab2
    push word [bp - 0x0004]          ; 0x8ab5
    push word [bp - 0x0002]          ; 0x8ab8
    call ds_dispatch_bc9a            ; 0x8abb
    add sp, byte 8                   ; 0x8abe
    lea ax, word [bp - 0x0024]       ; 0x8ac1
    push ax                          ; 0x8ac4
    push word [bp + 0x4]             ; 0x8ac5
    call ds_dispatch_b53b            ; 0x8ac8
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
    call ds_dispatch_c0c1            ; 0x8aeb
    add sp, byte 0x0c                ; 0x8aee
    lea ax, word [bp - 0x0024]       ; 0x8af1
    push ax                          ; 0x8af4
    mov ax, word [bp + 0x4]          ; 0x8af5
    inc ax                           ; 0x8af8
    push ax                          ; 0x8af9
    call ds_dispatch_b53b            ; 0x8afa
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
    call ds_dispatch_c0c1            ; 0x8b1d
    add sp, byte 0x0c                ; 0x8b20
    lea ax, word [bp - 0x0024]       ; 0x8b23
    push ax                          ; 0x8b26
    mov ax, word [bp + 0x4]          ; 0x8b27
    inc ax                           ; 0x8b2a
    inc ax                           ; 0x8b2b
    push ax                          ; 0x8b2c
    call ds_dispatch_b53b            ; 0x8b2d
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
    call ds_dispatch_c0c1            ; 0x8b50
    add sp, byte 0x0c                ; 0x8b53
    lea ax, word [bp - 0x0024]       ; 0x8b56
    push ax                          ; 0x8b59
    mov ax, word [bp + 0x4]          ; 0x8b5a
    inc ax                           ; 0x8b5d
    inc ax                           ; 0x8b5e
    inc ax                           ; 0x8b5f
    push ax                          ; 0x8b60
    call ds_dispatch_b53b            ; 0x8b61
    add sp, byte 4                   ; 0x8b64
    mov ax, 0xc2                     ; 0x8b67
    push ax                          ; 0x8b6a
    mov ax, 0x9b                     ; 0x8b6b
    push ax                          ; 0x8b6e
    call ds_dispatch_e823            ; 0x8b6f
    add sp, byte 4                   ; 0x8b72
    mov ax, word [bp - 0x0004]       ; 0x8b75
    add ax, strict word 0x16         ; 0x8b78
    push ax                          ; 0x8b7b
    lea ax, word [bp - 0x0024]       ; 0x8b7c
    push ax                          ; 0x8b7f
    call ds_dispatch_fa90            ; 0x8b80
    pop cx                           ; 0x8b83
    mov cx, ax                       ; 0x8b84
    mov ax, 0x11                     ; 0x8b86
    sub ax, cx                       ; 0x8b89
    mov cx, 6                        ; 0x8b8b
    imul cx                          ; 0x8b8e
    inc ax                           ; 0x8b90
    inc ax                           ; 0x8b91
    mov cx, data_0002                ; 0x8b92
    cwd                              ; 0x8b95
    idiv cx                          ; 0x8b96
    add ax, word [bp - 0x0002]       ; 0x8b98
    add ax, strict word 0x5d         ; 0x8b9b
    push ax                          ; 0x8b9e
    call ds_dispatch_e809            ; 0x8b9f
    add sp, byte 4                   ; 0x8ba2
    mov ax, 0                        ; 0x8ba5
    push ax                          ; 0x8ba8
    lea ax, word [bp - 0x0024]       ; 0x8ba9
    push ax                          ; 0x8bac
    call ds_dispatch_e84e            ; 0x8bad
    add sp, byte 4                   ; 0x8bb0
    push word [bp + 0xc]             ; 0x8bb3
    mov ax, 0xe38                    ; 0x8bb6
    push ax                          ; 0x8bb9
    call ds_dispatch_f364            ; 0x8bba
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
    call ds_dispatch_bf97            ; 0x8bdf
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
    call ds_dispatch_baa6            ; 0x8c0d
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
    call ds_dispatch_baa6            ; 0x8c38
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
    mov ax, data_0002                ; 0x8c62
    push ax                          ; 0x8c65
    call ds_dispatch_baa6            ; 0x8c66
    add sp, byte 0x0e                ; 0x8c69
