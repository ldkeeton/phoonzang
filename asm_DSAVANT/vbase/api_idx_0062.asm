api_idx_0062:
    mov ax, 0xff9e                   ; 0x4b95
    call ds_dispatch_f40b            ; 0x4b98
    mov word [bp - 0x0002], 0        ; 0x4b9b
    mov word [bp - 0x0062], 0        ; 0x4ba0
@..api_idx_0062.l1:
    lea ax, word [bp - 0x005e]       ; 0x4ba5
    push ax                          ; 0x4ba8
    mov ax, word [bp + 0x4]          ; 0x4ba9
    add ax, word [bp - 0x0002]       ; 0x4bac
    push ax                          ; 0x4baf
    call ds_dispatch_b53b            ; 0x4bb0
    add sp, byte 4                   ; 0x4bb3
    cmp word [bss_5216], byte 0      ; 0x4bb6
    jne short @..api_idx_0062.l3     ; 0x4bbb
    lea ax, word [bp - 0x005e]       ; 0x4bbd
    push ax                          ; 0x4bc0
    call ds_dispatch_fa90            ; 0x4bc1
    pop cx                           ; 0x4bc4
    dec ax                           ; 0x4bc5
    cmp ax, word [bp - 0x0062]       ; 0x4bc6
    jle short @..api_idx_0062.l2     ; 0x4bc9
    lea ax, word [bp - 0x005e]       ; 0x4bcb
    push ax                          ; 0x4bce
    call ds_dispatch_fa90            ; 0x4bcf
    pop cx                           ; 0x4bd2
    dec ax                           ; 0x4bd3
    mov word [bp - 0x0062], ax       ; 0x4bd4
@..api_idx_0062.l2:
    inc word [bp - 0x0002]           ; 0x4bd7
@..api_idx_0062.l3:
    cmp word [bss_5216], byte 0      ; 0x4bda
    je short @..api_idx_0062.l1      ; 0x4bdf
    mov ax, 6                        ; 0x4be1
    imul word [bp - 0x0062]          ; 0x4be4
    add ax, strict word 0xc          ; 0x4be7
    mov word [bp - 0x0004], ax       ; 0x4bea
    mov ax, 6                        ; 0x4bed
    imul word [bp - 0x0002]          ; 0x4bf0
    add ax, strict word 0xc          ; 0x4bf3
    mov word [bp - 0x0006], ax       ; 0x4bf6
    mov ax, word [bp - 0x0004]       ; 0x4bf9
    mov cx, 2                        ; 0x4bfc
    cwd                              ; 0x4bff
    idiv cx                          ; 0x4c00
    mov cx, ax                       ; 0x4c02
    mov ax, 0xa0                     ; 0x4c04
    sub ax, cx                       ; 0x4c07
    mov word [bp - 0x0008], ax       ; 0x4c09
    mov ax, word [bp - 0x0006]       ; 0x4c0c
    mov cx, 2                        ; 0x4c0f
    cwd                              ; 0x4c12
    idiv cx                          ; 0x4c13
    mov cx, ax                       ; 0x4c15
    mov ax, 0x64                     ; 0x4c17
    sub ax, cx                       ; 0x4c1a
    mov word [bp - 0x000a], ax       ; 0x4c1c
    mov ax, word [bp - 0x0008]       ; 0x4c1f
    add ax, word [bp - 0x0004]       ; 0x4c22
    dec ax                           ; 0x4c25
    mov word [bp - 0x000c], ax       ; 0x4c26
    mov ax, word [bp - 0x000a]       ; 0x4c29
    add ax, word [bp - 0x0006]       ; 0x4c2c
    dec ax                           ; 0x4c2f
    mov word [bp - 0x000e], ax       ; 0x4c30
    mov ax, 0x90f5                   ; 0x4c33
    push ax                          ; 0x4c36
    mov ax, word [bp - 0x000e]       ; 0x4c37
    inc ax                           ; 0x4c3a
    push ax                          ; 0x4c3b
    mov ax, word [bp - 0x000c]       ; 0x4c3c
    inc ax                           ; 0x4c3f
    push ax                          ; 0x4c40
    mov ax, word [bp - 0x000a]       ; 0x4c41
    dec ax                           ; 0x4c44
    push ax                          ; 0x4c45
    mov ax, word [bp - 0x0008]       ; 0x4c46
    dec ax                           ; 0x4c49
    push ax                          ; 0x4c4a
    call ds_dispatch_c283            ; 0x4c4b
    add sp, byte 0x0a                ; 0x4c4e
    mov word [bp - 0x0060], ax       ; 0x4c51
    push word [bp - 0x000e]          ; 0x4c54
    push word [bp - 0x000c]          ; 0x4c57
    push word [bp - 0x000a]          ; 0x4c5a
    push word [bp - 0x0008]          ; 0x4c5d
    call ds_dispatch_bc9a            ; 0x4c60
    add sp, byte 8                   ; 0x4c63
    mov word [bp - 0x0002], 0        ; 0x4c66
@..api_idx_0062.l4:
    lea ax, word [bp - 0x005e]       ; 0x4c6b
    push ax                          ; 0x4c6e
    mov ax, word [bp + 0x4]          ; 0x4c6f
    add ax, word [bp - 0x0002]       ; 0x4c72
    push ax                          ; 0x4c75
    call ds_dispatch_b53b            ; 0x4c76
    add sp, byte 4                   ; 0x4c79
    cmp word [bss_5216], byte 0      ; 0x4c7c
    jne short @..api_idx_0062.l5     ; 0x4c81
    mov ax, 6                        ; 0x4c83
    imul word [bp - 0x0002]          ; 0x4c86
    add ax, word [bp - 0x000a]       ; 0x4c89
    add ax, strict word 6            ; 0x4c8c
    push ax                          ; 0x4c8f
    lea ax, word [bp - 0x005e]       ; 0x4c90
    push ax                          ; 0x4c93
    call ds_dispatch_fa90            ; 0x4c94
    pop cx                           ; 0x4c97
    mov cx, 6                        ; 0x4c98
    imul cx                          ; 0x4c9b
    add ax, strict word 0xfffa       ; 0x4c9d
    mov cx, 2                        ; 0x4ca0
    cwd                              ; 0x4ca3
    idiv cx                          ; 0x4ca4
    mov cx, ax                       ; 0x4ca6
    mov ax, 0xa0                     ; 0x4ca8
    sub ax, cx                       ; 0x4cab
    push ax                          ; 0x4cad
    call ds_dispatch_e809            ; 0x4cae
    add sp, byte 4                   ; 0x4cb1
    mov ax, 0                        ; 0x4cb4
    push ax                          ; 0x4cb7
    mov al, byte [bp - 0x005e]       ; 0x4cb8
    sub ah, ah                       ; 0x4cbb
    push ax                          ; 0x4cbd
    call ds_dispatch_e823            ; 0x4cbe
    add sp, byte 4                   ; 0x4cc1
    mov ax, 0                        ; 0x4cc4
    push ax                          ; 0x4cc7
    lea ax, word [bp - 0x005d]       ; 0x4cc8
    push ax                          ; 0x4ccb
    call ds_dispatch_e84e            ; 0x4ccc
    add sp, byte 4                   ; 0x4ccf
    inc word [bp - 0x0002]           ; 0x4cd2
@..api_idx_0062.l5:
    cmp word [bss_5216], byte 0      ; 0x4cd5
    je short @..api_idx_0062.l4      ; 0x4cda
    mov ax, word [bp - 0x000e]       ; 0x4cdc
    inc ax                           ; 0x4cdf
    push ax                          ; 0x4ce0
    mov ax, word [bp - 0x000c]       ; 0x4ce1
    inc ax                           ; 0x4ce4
    push ax                          ; 0x4ce5
    mov ax, word [bp - 0x000a]       ; 0x4ce6
    dec ax                           ; 0x4ce9
    push ax                          ; 0x4cea
    mov ax, word [bp - 0x0008]       ; 0x4ceb
    dec ax                           ; 0x4cee
    push ax                          ; 0x4cef
    call ds_dispatch_e8da            ; 0x4cf0
    add sp, byte 8                   ; 0x4cf3
    mov ax, word [bss_905a]          ; 0x4cf6
    shl ax, 1                        ; 0x4cf9
    push ax                          ; 0x4cfb
    call ds_dispatch_b75e            ; 0x4cfc
    pop cx                           ; 0x4cff
    mov ax, 1                        ; 0x4d00
    push ax                          ; 0x4d03
    push word [bp - 0x0060]          ; 0x4d04
    call ds_dispatch_c459            ; 0x4d07
    add sp, byte 4                   ; 0x4d0a
    ret                              ; 0x4d0d
loc_4d0e:
    mov ax, 0xfc4a                   ; 0x4d0e
    call ds_dispatch_f40b            ; 0x4d11
    mov si, bss_5642                 ; 0x4d14
    lea di, word [bp - 0x03b6]       ; 0x4d17
    mov cx, ds                       ; 0x4d1b
    mov es, cx                       ; 0x4d1d
    mov cx, 0x1a6                    ; 0x4d1f
    rep movsw                        ; 0x4d22
    mov ax, 0                        ; 0x4d24
    push ax                          ; 0x4d27
    push ax                          ; 0x4d28
    mov ax, 0x90fb                   ; 0x4d29
    push ax                          ; 0x4d2c
    call ds_dispatch_d161            ; 0x4d2d
    add sp, byte 4                   ; 0x4d30
    push ax                          ; 0x4d33
    call ds_dispatch_f909            ; 0x4d34
    add sp, byte 4                   ; 0x4d37
    mov word [bp - 0x0006], ax       ; 0x4d3a
    cmp ax, strict word 0xffff       ; 0x4d3d
    jne short @..local.l74           ; 0x4d40
    mov ax, 0x1a                     ; 0x4d42
    push ax                          ; 0x4d45
    call ds_dispatch_b171            ; 0x4d46
    pop cx                           ; 0x4d49
@..local.l74:
    mov ax, 0x300                    ; 0x4d4a
    push ax                          ; 0x4d4d
    mov ax, 0x9c94                   ; 0x4d4e
    push ax                          ; 0x4d51
    push word [bp - 0x0006]          ; 0x4d52
    call ds_dispatch_fd6f            ; 0x4d55
    add sp, byte 6                   ; 0x4d58
    push word [bp - 0x0006]          ; 0x4d5b
    call ds_dispatch_fda5            ; 0x4d5e
    pop cx                           ; 0x4d61
    mov word [bp - 0x0008], 0x12     ; 0x4d62
    mov word [bp - 0x000a], 0x2b     ; 0x4d67
    mov ax, word [bp - 0x0008]       ; 0x4d6c
    add ax, 0x11b                    ; 0x4d6f
    mov word [bp - 0x000c], ax       ; 0x4d72
    mov ax, word [bp - 0x000a]       ; 0x4d75
    add ax, 0x93                     ; 0x4d78
    mov word [bp - 0x000e], ax       ; 0x4d7b
    mov word [bss_9050], 0xffff      ; 0x4d7e
    mov ax, 0x9107                   ; 0x4d84
    push ax                          ; 0x4d87
    mov ax, word [bp - 0x000e]       ; 0x4d88
    inc ax                           ; 0x4d8b
    push ax                          ; 0x4d8c
    mov ax, word [bp - 0x000c]       ; 0x4d8d
    inc ax                           ; 0x4d90
    push ax                          ; 0x4d91
    mov ax, word [bp - 0x000a]       ; 0x4d92
    dec ax                           ; 0x4d95
    push ax                          ; 0x4d96
    mov ax, word [bp - 0x0008]       ; 0x4d97
    dec ax                           ; 0x4d9a
    push ax                          ; 0x4d9b
    call ds_dispatch_c283            ; 0x4d9c
    add sp, byte 0x0a                ; 0x4d9f
    mov word [bp - 0x006a], ax       ; 0x4da2
    push word [bp - 0x000e]          ; 0x4da5
    push word [bp - 0x000c]          ; 0x4da8
    push word [bp - 0x000a]          ; 0x4dab
    push word [bp - 0x0008]          ; 0x4dae
    call ds_dispatch_bc9a            ; 0x4db1
    add sp, byte 8                   ; 0x4db4
    mov ax, 0x1c                     ; 0x4db7
    push ax                          ; 0x4dba
    mov ax, word [bp - 0x000a]       ; 0x4dbb
    add ax, strict word 5            ; 0x4dbe
    push ax                          ; 0x4dc1
    mov ax, 0xffff                   ; 0x4dc2
    push ax                          ; 0x4dc5
    mov ax, 0x8fc                    ; 0x4dc6
    push ax                          ; 0x4dc9
    call api_idx_0050                ; 0x4dca
    add sp, byte 8                   ; 0x4dcd
    mov ax, 1                        ; 0x4dd0
    push ax                          ; 0x4dd3
    mov ax, word [bp - 0x000a]       ; 0x4dd4
    add ax, strict word 5            ; 0x4dd7
    push ax                          ; 0x4dda
    mov ax, word [bp - 0x0008]       ; 0x4ddb
    add ax, 0xf5                     ; 0x4dde
    push ax                          ; 0x4de1
    mov ax, 0x8fd                    ; 0x4de2
    push ax                          ; 0x4de5
    call api_idx_0050                ; 0x4de6
    add sp, byte 8                   ; 0x4de9
    mov ax, 0                        ; 0x4dec
    push ax                          ; 0x4def
    mov ax, 1                        ; 0x4df0
    push ax                          ; 0x4df3
    mov ax, word [bss_597a]          ; 0x4df4
    mov cx, 0x64                     ; 0x4df7
    cwd                              ; 0x4dfa
    idiv cx                          ; 0x4dfb
    push ax                          ; 0x4dfd
    call ds_dispatch_b2e7            ; 0x4dfe
    add sp, byte 6                   ; 0x4e01
    mov ax, 0                        ; 0x4e04
    push ax                          ; 0x4e07
    mov ax, 0x2e                     ; 0x4e08
    push ax                          ; 0x4e0b
    call ds_dispatch_e830            ; 0x4e0c
    add sp, byte 4                   ; 0x4e0f
    mov ax, word [bss_597a]          ; 0x4e12
    mov cx, 0x64                     ; 0x4e15
    cwd                              ; 0x4e18
    idiv cx                          ; 0x4e19
    mov word [bp - 0x0002], dx       ; 0x4e1b
    cmp dx, byte 0x0a                ; 0x4e1e
    jge short @..local.l75           ; 0x4e21
    mov ax, 0                        ; 0x4e23
    push ax                          ; 0x4e26
    mov ax, 0x30                     ; 0x4e27
    push ax                          ; 0x4e2a
    call ds_dispatch_e830            ; 0x4e2b
    add sp, byte 4                   ; 0x4e2e
    mov ax, 0                        ; 0x4e31
    push ax                          ; 0x4e34
    mov ax, 1                        ; 0x4e35
    push ax                          ; 0x4e38
    push word [bp - 0x0002]          ; 0x4e39
    call ds_dispatch_b2e7            ; 0x4e3c
    add sp, byte 6                   ; 0x4e3f
    jmp short @..local.l76           ; 0x4e42
@..local.l75:
    mov ax, 0                        ; 0x4e44
    push ax                          ; 0x4e47
    mov ax, 2                        ; 0x4e48
    push ax                          ; 0x4e4b
    push word [bp - 0x0002]          ; 0x4e4c
    call ds_dispatch_b2e7            ; 0x4e4f
    add sp, byte 6                   ; 0x4e52
@..local.l76:
    mov ax, 0x5f                     ; 0x4e55
    push ax                          ; 0x4e58
    mov ax, word [bp - 0x000a]       ; 0x4e59
    add ax, strict word 0xe          ; 0x4e5c
    push ax                          ; 0x4e5f
    mov ax, 0xffff                   ; 0x4e60
    push ax                          ; 0x4e63
    mov ax, 0x8fe                    ; 0x4e64
    push ax                          ; 0x4e67
    call api_idx_0050                ; 0x4e68
    add sp, byte 8                   ; 0x4e6b
    mov ax, 1                        ; 0x4e6e
    push ax                          ; 0x4e71
    mov ax, word [bp - 0x000a]       ; 0x4e72
    add ax, strict word 0x1b         ; 0x4e75
    push ax                          ; 0x4e78
    mov ax, word [bp - 0x0008]       ; 0x4e79
    add ax, strict word 0xb          ; 0x4e7c
    push ax                          ; 0x4e7f
    mov ax, 0x8ff                    ; 0x4e80
    push ax                          ; 0x4e83
    call api_idx_0050                ; 0x4e84
    add sp, byte 8                   ; 0x4e87
    mov ax, 1                        ; 0x4e8a
    push ax                          ; 0x4e8d
    mov ax, word [bp - 0x000a]       ; 0x4e8e
    add ax, strict word 0x27         ; 0x4e91
    push ax                          ; 0x4e94
    mov ax, word [bp - 0x0008]       ; 0x4e95
    add ax, strict word 0xb          ; 0x4e98
    push ax                          ; 0x4e9b
    mov ax, 0x900                    ; 0x4e9c
    push ax                          ; 0x4e9f
    call api_idx_0050                ; 0x4ea0
    add sp, byte 8                   ; 0x4ea3
    mov ax, 0x1e                     ; 0x4ea6
    push ax                          ; 0x4ea9
    mov ax, word [bp - 0x000a]       ; 0x4eaa
    add ax, strict word 0x27         ; 0x4ead
    push ax                          ; 0x4eb0
    mov ax, word [bp - 0x0008]       ; 0x4eb1
    add ax, strict word 0x2f         ; 0x4eb4
    push ax                          ; 0x4eb7
    call loc_4245                    ; 0x4eb8
    add sp, byte 6                   ; 0x4ebb
    mov ax, 1                        ; 0x4ebe
    push ax                          ; 0x4ec1
    mov ax, word [bp - 0x000a]       ; 0x4ec2
    add ax, strict word 0x39         ; 0x4ec5
    push ax                          ; 0x4ec8
    mov ax, word [bp - 0x0008]       ; 0x4ec9
    add ax, strict word 0xb          ; 0x4ecc
    push ax                          ; 0x4ecf
    mov ax, 0x901                    ; 0x4ed0
    push ax                          ; 0x4ed3
    call api_idx_0050                ; 0x4ed4
    add sp, byte 8                   ; 0x4ed7
    mov ax, 1                        ; 0x4eda
    push ax                          ; 0x4edd
    mov ax, word [bp - 0x000a]       ; 0x4ede
    add ax, strict word 0x45         ; 0x4ee1
    push ax                          ; 0x4ee4
    mov ax, word [bp - 0x0008]       ; 0x4ee5
    add ax, strict word 0xb          ; 0x4ee8
    push ax                          ; 0x4eeb
    mov ax, 0x902                    ; 0x4eec
    push ax                          ; 0x4eef
    call api_idx_0050                ; 0x4ef0
    add sp, byte 8                   ; 0x4ef3
    lea ax, word [bp - 0x0068]       ; 0x4ef6
    push ax                          ; 0x4ef9
    mov ax, 0x903                    ; 0x4efa
    push ax                          ; 0x4efd
    call ds_dispatch_b53b            ; 0x4efe
    add sp, byte 4                   ; 0x4f01
    lea ax, word [bp - 0x0068]       ; 0x4f04
    push ax                          ; 0x4f07
    mov ax, 1                        ; 0x4f08
    push ax                          ; 0x4f0b
    push ax                          ; 0x4f0c
    mov ax, 7                        ; 0x4f0d
    push ax                          ; 0x4f10
    mov ax, word [bp - 0x000a]       ; 0x4f11
    add ax, strict word 0x55         ; 0x4f14
    push ax                          ; 0x4f17
    mov ax, word [bp - 0x0008]       ; 0x4f18
    add ax, strict word 8            ; 0x4f1b
    push ax                          ; 0x4f1e
    call ds_dispatch_c0c1            ; 0x4f1f
    add sp, byte 0x0c                ; 0x4f22
    mov ax, 1                        ; 0x4f25
    push ax                          ; 0x4f28
    mov ax, word [bp - 0x000a]       ; 0x4f29
    add ax, strict word 0x63         ; 0x4f2c
    push ax                          ; 0x4f2f
    mov ax, word [bp - 0x0008]       ; 0x4f30
    add ax, strict word 0x11         ; 0x4f33
    push ax                          ; 0x4f36
    mov ax, 0x904                    ; 0x4f37
    push ax                          ; 0x4f3a
    call api_idx_0050                ; 0x4f3b
    add sp, byte 8                   ; 0x4f3e
    mov ax, 0x1e                     ; 0x4f41
    push ax                          ; 0x4f44
    mov ax, word [bp - 0x000a]       ; 0x4f45
    add ax, strict word 0x63         ; 0x4f48
    push ax                          ; 0x4f4b
    mov ax, word [bp - 0x0008]       ; 0x4f4c
    add ax, strict word 0x5f         ; 0x4f4f
    push ax                          ; 0x4f52
    call loc_4245                    ; 0x4f53
    add sp, byte 6                   ; 0x4f56
    mov ax, 1                        ; 0x4f59
    push ax                          ; 0x4f5c
    mov ax, word [bp - 0x000a]       ; 0x4f5d
    add ax, strict word 0x69         ; 0x4f60
    push ax                          ; 0x4f63
    mov ax, word [bp - 0x0008]       ; 0x4f64
    add ax, strict word 0x11         ; 0x4f67
    push ax                          ; 0x4f6a
    mov ax, 0x905                    ; 0x4f6b
    push ax                          ; 0x4f6e
    call api_idx_0050                ; 0x4f6f
    add sp, byte 8                   ; 0x4f72
    mov ax, 0x1e                     ; 0x4f75
    push ax                          ; 0x4f78
    mov ax, word [bp - 0x000a]       ; 0x4f79
    add ax, strict word 0x69         ; 0x4f7c
    push ax                          ; 0x4f7f
    mov ax, word [bp - 0x0008]       ; 0x4f80
    add ax, strict word 0x5f         ; 0x4f83
    push ax                          ; 0x4f86
    call loc_4245                    ; 0x4f87
    add sp, byte 6                   ; 0x4f8a
    mov ax, 1                        ; 0x4f8d
    push ax                          ; 0x4f90
    mov ax, word [bp - 0x000a]       ; 0x4f91
    add ax, strict word 0x6f         ; 0x4f94
    push ax                          ; 0x4f97
    mov ax, word [bp - 0x0008]       ; 0x4f98
    add ax, strict word 0x11         ; 0x4f9b
    push ax                          ; 0x4f9e
    mov ax, 0x906                    ; 0x4f9f
    push ax                          ; 0x4fa2
    call api_idx_0050                ; 0x4fa3
    add sp, byte 8                   ; 0x4fa6
    mov ax, 0x1e                     ; 0x4fa9
    push ax                          ; 0x4fac
    mov ax, word [bp - 0x000a]       ; 0x4fad
    add ax, strict word 0x6f         ; 0x4fb0
    push ax                          ; 0x4fb3
    mov ax, word [bp - 0x0008]       ; 0x4fb4
    add ax, strict word 0x5f         ; 0x4fb7
    push ax                          ; 0x4fba
    call loc_4245                    ; 0x4fbb
    add sp, byte 6                   ; 0x4fbe
    lea ax, word [bp - 0x0068]       ; 0x4fc1
    push ax                          ; 0x4fc4
    mov ax, 0x907                    ; 0x4fc5
    push ax                          ; 0x4fc8
    call ds_dispatch_b53b            ; 0x4fc9
    add sp, byte 4                   ; 0x4fcc
    lea ax, word [bp - 0x0068]       ; 0x4fcf
    push ax                          ; 0x4fd2
    mov ax, 1                        ; 0x4fd3
    push ax                          ; 0x4fd6
    push ax                          ; 0x4fd7
    mov ax, 7                        ; 0x4fd8
    push ax                          ; 0x4fdb
    mov ax, word [bp - 0x000a]       ; 0x4fdc
    add ax, strict word 0x79         ; 0x4fdf
    push ax                          ; 0x4fe2
    mov ax, word [bp - 0x0008]       ; 0x4fe3
    add ax, strict word 8            ; 0x4fe6
    push ax                          ; 0x4fe9
    call ds_dispatch_c0c1            ; 0x4fea
    add sp, byte 0x0c                ; 0x4fed
    mov ax, 1                        ; 0x4ff0
    push ax                          ; 0x4ff3
    mov ax, word [bp - 0x000a]       ; 0x4ff4
    add ax, 0x87                     ; 0x4ff7
    push ax                          ; 0x4ffa
    mov ax, word [bp - 0x0008]       ; 0x4ffb
    add ax, strict word 0x1d         ; 0x4ffe
    push ax                          ; 0x5001
    mov ax, 0x908                    ; 0x5002
    push ax                          ; 0x5005
    call api_idx_0050                ; 0x5006
    add sp, byte 8                   ; 0x5009
    mov ax, 0x1e                     ; 0x500c
    push ax                          ; 0x500f
    mov ax, word [bp - 0x000a]       ; 0x5010
    add ax, 0x87                     ; 0x5013
    push ax                          ; 0x5016
    mov ax, word [bp - 0x0008]       ; 0x5017
    add ax, strict word 0x5f         ; 0x501a
    push ax                          ; 0x501d
    call loc_4245                    ; 0x501e
    add sp, byte 6                   ; 0x5021
    mov ax, 1                        ; 0x5024
    push ax                          ; 0x5027
    mov ax, word [bp - 0x000a]       ; 0x5028
    add ax, strict word 0x1b         ; 0x502b
    push ax                          ; 0x502e
    mov ax, word [bp - 0x0008]       ; 0x502f
    add ax, 0xa1                     ; 0x5032
    push ax                          ; 0x5035
    mov ax, 0x909                    ; 0x5036
    push ax                          ; 0x5039
    call api_idx_0050                ; 0x503a
    add sp, byte 8                   ; 0x503d
    mov ax, 1                        ; 0x5040
    push ax                          ; 0x5043
    mov ax, word [bp - 0x000a]       ; 0x5044
    add ax, strict word 0x27         ; 0x5047
    push ax                          ; 0x504a
    mov ax, word [bp - 0x0008]       ; 0x504b
    add ax, 0xa1                     ; 0x504e
    push ax                          ; 0x5051
    mov ax, 0x90a                    ; 0x5052
    push ax                          ; 0x5055
    call api_idx_0050                ; 0x5056
    add sp, byte 8                   ; 0x5059
    lea ax, word [bp - 0x0068]       ; 0x505c
    push ax                          ; 0x505f
    mov ax, 0x90b                    ; 0x5060
    push ax                          ; 0x5063
    call ds_dispatch_b53b            ; 0x5064
    add sp, byte 4                   ; 0x5067
    lea ax, word [bp - 0x0068]       ; 0x506a
    push ax                          ; 0x506d
    mov ax, 1                        ; 0x506e
    push ax                          ; 0x5071
    push ax                          ; 0x5072
    mov ax, 6                        ; 0x5073
    push ax                          ; 0x5076
    mov ax, word [bp - 0x000a]       ; 0x5077
    add ax, strict word 0x37         ; 0x507a
    push ax                          ; 0x507d
    mov ax, word [bp - 0x0008]       ; 0x507e
    add ax, 0xa1                     ; 0x5081
    push ax                          ; 0x5084
    call ds_dispatch_c0c1            ; 0x5085
    add sp, byte 0x0c                ; 0x5088
    mov ax, 1                        ; 0x508b
    push ax                          ; 0x508e
    mov ax, word [bp - 0x000a]       ; 0x508f
    add ax, strict word 0x45         ; 0x5092
    push ax                          ; 0x5095
    mov ax, word [bp - 0x0008]       ; 0x5096
    add ax, 0xa1                     ; 0x5099
    push ax                          ; 0x509c
    mov ax, 0x90c                    ; 0x509d
    push ax                          ; 0x50a0
    call api_idx_0050                ; 0x50a1
    add sp, byte 8                   ; 0x50a4
    mov ax, 1                        ; 0x50a7
    push ax                          ; 0x50aa
    mov ax, word [bp - 0x000a]       ; 0x50ab
    add ax, strict word 0x57         ; 0x50ae
    push ax                          ; 0x50b1
    mov ax, word [bp - 0x0008]       ; 0x50b2
    add ax, 0xa1                     ; 0x50b5
    push ax                          ; 0x50b8
    mov ax, 0x90d                    ; 0x50b9
    push ax                          ; 0x50bc
    call api_idx_0050                ; 0x50bd
    add sp, byte 8                   ; 0x50c0
    mov ax, 1                        ; 0x50c3
    push ax                          ; 0x50c6
    mov ax, word [bp - 0x000a]       ; 0x50c7
    add ax, strict word 0x63         ; 0x50ca
    push ax                          ; 0x50cd
    mov ax, word [bp - 0x0008]       ; 0x50ce
    add ax, 0xa1                     ; 0x50d1
    push ax                          ; 0x50d4
    mov ax, 0x90e                    ; 0x50d5
    push ax                          ; 0x50d8
    call api_idx_0050                ; 0x50d9
    add sp, byte 8                   ; 0x50dc
    mov ax, 0x24                     ; 0x50df
    push ax                          ; 0x50e2
    mov ax, word [bp - 0x000a]       ; 0x50e3
    add ax, strict word 0x63         ; 0x50e6
    push ax                          ; 0x50e9
    mov ax, word [bp - 0x0008]       ; 0x50ea
    add ax, 0xdd                     ; 0x50ed
    push ax                          ; 0x50f0
    call loc_4245                    ; 0x50f1
    add sp, byte 6                   ; 0x50f4
    mov ax, 1                        ; 0x50f7
    push ax                          ; 0x50fa
    mov ax, word [bp - 0x000a]       ; 0x50fb
    add ax, strict word 0x69         ; 0x50fe
    push ax                          ; 0x5101
    mov ax, word [bp - 0x0008]       ; 0x5102
    add ax, 0xa1                     ; 0x5105
    push ax                          ; 0x5108
    mov ax, 0x90f                    ; 0x5109
    push ax                          ; 0x510c
    call api_idx_0050                ; 0x510d
    add sp, byte 8                   ; 0x5110
    mov ax, 0x24                     ; 0x5113
    push ax                          ; 0x5116
    mov ax, word [bp - 0x000a]       ; 0x5117
    add ax, strict word 0x69         ; 0x511a
    push ax                          ; 0x511d
    mov ax, word [bp - 0x0008]       ; 0x511e
    add ax, 0xdd                     ; 0x5121
    push ax                          ; 0x5124
    call loc_4245                    ; 0x5125
    add sp, byte 6                   ; 0x5128
    mov ax, word [bp - 0x000a]       ; 0x512b
    add ax, 0x8c                     ; 0x512e
    push ax                          ; 0x5131
    mov ax, word [bp - 0x0008]       ; 0x5132
    add ax, 0x113                    ; 0x5135
    push ax                          ; 0x5138
    mov ax, word [bp - 0x000a]       ; 0x5139
    add ax, strict word 0x7a         ; 0x513c
    push ax                          ; 0x513f
    mov ax, word [bp - 0x0008]       ; 0x5140
    add ax, 0xa9                     ; 0x5143
    push ax                          ; 0x5146
    call ds_dispatch_bd98            ; 0x5147
    add sp, byte 8                   ; 0x514a
    lea ax, word [bp - 0x0068]       ; 0x514d
    push ax                          ; 0x5150
    mov ax, 0x910                    ; 0x5151
    push ax                          ; 0x5154
    call ds_dispatch_b53b            ; 0x5155
    add sp, byte 4                   ; 0x5158
    lea ax, word [bp - 0x0068]       ; 0x515b
    push ax                          ; 0x515e
    mov ax, 1                        ; 0x515f
    push ax                          ; 0x5162
    push ax                          ; 0x5163
    mov ax, 6                        ; 0x5164
    push ax                          ; 0x5167
    mov ax, word [bp - 0x000a]       ; 0x5168
    add ax, strict word 0x7f         ; 0x516b
    push ax                          ; 0x516e
    mov ax, word [bp - 0x0008]       ; 0x516f
    add ax, 0xb2                     ; 0x5172
    push ax                          ; 0x5175
    call ds_dispatch_c0c1            ; 0x5176
    add sp, byte 0x0c                ; 0x5179
    lea ax, word [bp - 0x0068]       ; 0x517c
    push ax                          ; 0x517f
    mov ax, 0x911                    ; 0x5180
    push ax                          ; 0x5183
    call ds_dispatch_b53b            ; 0x5184
    add sp, byte 4                   ; 0x5187
    lea ax, word [bp - 0x0068]       ; 0x518a
    push ax                          ; 0x518d
    mov ax, 1                        ; 0x518e
    push ax                          ; 0x5191
    push ax                          ; 0x5192
    mov ax, 6                        ; 0x5193
    push ax                          ; 0x5196
    mov ax, word [bp - 0x000a]       ; 0x5197
    add ax, strict word 0x7f         ; 0x519a
    push ax                          ; 0x519d
    mov ax, word [bp - 0x0008]       ; 0x519e
    add ax, 0xe6                     ; 0x51a1
    push ax                          ; 0x51a4
    call ds_dispatch_c0c1            ; 0x51a5
    add sp, byte 0x0c                ; 0x51a8
    mov word [bp - 0x0002], 0        ; 0x51ab
@..local.l77:
    push word [bp - 0x000a]          ; 0x51b0
    push word [bp - 0x0008]          ; 0x51b3
    push word [bp - 0x0002]          ; 0x51b6
    call api_idx_0052                ; 0x51b9
    add sp, byte 6                   ; 0x51bc
    inc word [bp - 0x0002]           ; 0x51bf
    mov ax, word [bp - 0x0002]       ; 0x51c2
    cmp ax, strict word 0x11         ; 0x51c5
    jl short @..local.l77            ; 0x51c8
    mov ax, 0                        ; 0x51ca
    push ax                          ; 0x51cd
    push ax                          ; 0x51ce
    mov ax, word [bp - 0x000a]       ; 0x51cf
    add ax, strict word 0x21         ; 0x51d2
    push ax                          ; 0x51d5
    mov ax, word [bp - 0x0008]       ; 0x51d6
    add ax, 0x92                     ; 0x51d9
    push ax                          ; 0x51dc
    mov ax, word [bp - 0x000a]       ; 0x51dd
    add ax, strict word 0x19         ; 0x51e0
    push ax                          ; 0x51e3
    mov ax, word [bp - 0x0008]       ; 0x51e4
    add ax, strict word 0x5c         ; 0x51e7
    push ax                          ; 0x51ea
    mov ax, 0                        ; 0x51eb
    push ax                          ; 0x51ee
    call ds_dispatch_baa6            ; 0x51ef
    add sp, byte 0x0e                ; 0x51f2
    mov ax, 0                        ; 0x51f5
    push ax                          ; 0x51f8
    push ax                          ; 0x51f9
    mov ax, word [bp - 0x000a]       ; 0x51fa
    add ax, strict word 0x2c         ; 0x51fd
    push ax                          ; 0x5200
    mov ax, word [bp - 0x0008]       ; 0x5201
    add ax, strict word 0x34         ; 0x5204
    push ax                          ; 0x5207
    mov ax, word [bp - 0x000a]       ; 0x5208
    add ax, strict word 0x27         ; 0x520b
    push ax                          ; 0x520e
    mov ax, word [bp - 0x0008]       ; 0x520f
    add ax, strict word 0x2f         ; 0x5212
    push ax                          ; 0x5215
    mov ax, 1                        ; 0x5216
    push ax                          ; 0x5219
    call ds_dispatch_baa6            ; 0x521a
    add sp, byte 0x0e                ; 0x521d
    mov ax, 0                        ; 0x5220
    push ax                          ; 0x5223
    push ax                          ; 0x5224
    mov ax, word [bp - 0x000a]       ; 0x5225
    add ax, strict word 0x2c         ; 0x5228
    push ax                          ; 0x522b
    mov ax, word [bp - 0x0008]       ; 0x522c
    add ax, strict word 0x52         ; 0x522f
    push ax                          ; 0x5232
    mov ax, word [bp - 0x000a]       ; 0x5233
    add ax, strict word 0x27         ; 0x5236
    push ax                          ; 0x5239
    mov ax, word [bp - 0x0008]       ; 0x523a
    add ax, strict word 0x4d         ; 0x523d
    push ax                          ; 0x5240
    mov ax, 2                        ; 0x5241
    push ax                          ; 0x5244
    call ds_dispatch_baa6            ; 0x5245
    add sp, byte 0x0e                ; 0x5248
    mov ax, 0                        ; 0x524b
    push ax                          ; 0x524e
    push ax                          ; 0x524f
    mov ax, word [bp - 0x000a]       ; 0x5250
    add ax, strict word 0x3e         ; 0x5253
    push ax                          ; 0x5256
    mov ax, word [bp - 0x0008]       ; 0x5257
    add ax, 0x95                     ; 0x525a
    push ax                          ; 0x525d
    mov ax, word [bp - 0x000a]       ; 0x525e
    add ax, strict word 0x38         ; 0x5261
    push ax                          ; 0x5264
    mov ax, word [bp - 0x0008]       ; 0x5265
    add ax, strict word 0x27         ; 0x5268
    push ax                          ; 0x526b
    mov ax, 3                        ; 0x526c
    push ax                          ; 0x526f
    call ds_dispatch_baa6            ; 0x5270
    add sp, byte 0x0e                ; 0x5273
    mov ax, 0                        ; 0x5276
    push ax                          ; 0x5279
    push ax                          ; 0x527a
    mov ax, word [bp - 0x000a]       ; 0x527b
    add ax, strict word 0x4a         ; 0x527e
    push ax                          ; 0x5281
    mov ax, word [bp - 0x0008]       ; 0x5282
    add ax, 0x95                     ; 0x5285
    push ax                          ; 0x5288
    mov ax, word [bp - 0x000a]       ; 0x5289
    add ax, strict word 0x44         ; 0x528c
    push ax                          ; 0x528f
    mov ax, word [bp - 0x0008]       ; 0x5290
    add ax, strict word 0x27         ; 0x5293
    push ax                          ; 0x5296
    mov ax, 4                        ; 0x5297
    push ax                          ; 0x529a
    call ds_dispatch_baa6            ; 0x529b
    add sp, byte 0x0e                ; 0x529e
    mov ax, 0                        ; 0x52a1
    push ax                          ; 0x52a4
    push ax                          ; 0x52a5
    mov ax, word [bp - 0x000a]       ; 0x52a6
    add ax, strict word 0x5d         ; 0x52a9
    push ax                          ; 0x52ac
    mov ax, word [bp - 0x0008]       ; 0x52ad
    add ax, strict word 0x38         ; 0x52b0
    push ax                          ; 0x52b3
    mov ax, word [bp - 0x000a]       ; 0x52b4
    add ax, strict word 0x55         ; 0x52b7
    push ax                          ; 0x52ba
    mov ax, word [bp - 0x0008]       ; 0x52bb
    add ax, strict word 8            ; 0x52be
    push ax                          ; 0x52c1
    mov ax, 5                        ; 0x52c2
    push ax                          ; 0x52c5
    call ds_dispatch_baa6            ; 0x52c6
    add sp, byte 0x0e                ; 0x52c9
    mov ax, 0                        ; 0x52cc
    push ax                          ; 0x52cf
    push ax                          ; 0x52d0
    mov ax, word [bp - 0x000a]       ; 0x52d1
    add ax, strict word 0x68         ; 0x52d4
    push ax                          ; 0x52d7
    mov ax, word [bp - 0x0008]       ; 0x52d8
    add ax, strict word 0x64         ; 0x52db
    push ax                          ; 0x52de
    mov ax, word [bp - 0x000a]       ; 0x52df
    add ax, strict word 0x63         ; 0x52e2
    push ax                          ; 0x52e5
    mov ax, word [bp - 0x0008]       ; 0x52e6
    add ax, strict word 0x5f         ; 0x52e9
    push ax                          ; 0x52ec
    mov ax, 6                        ; 0x52ed
    push ax                          ; 0x52f0
    call ds_dispatch_baa6            ; 0x52f1
    add sp, byte 0x0e                ; 0x52f4
    mov ax, 0                        ; 0x52f7
    push ax                          ; 0x52fa
    push ax                          ; 0x52fb
    mov ax, word [bp - 0x000a]       ; 0x52fc
    add ax, strict word 0x68         ; 0x52ff
    push ax                          ; 0x5302
    mov ax, word [bp - 0x0008]       ; 0x5303
    add ax, 0x82                     ; 0x5306
    push ax                          ; 0x5309
    mov ax, word [bp - 0x000a]       ; 0x530a
    add ax, strict word 0x63         ; 0x530d
    push ax                          ; 0x5310
    mov ax, word [bp - 0x0008]       ; 0x5311
    add ax, strict word 0x7d         ; 0x5314
    push ax                          ; 0x5317
    mov ax, 7                        ; 0x5318
    push ax                          ; 0x531b
    call ds_dispatch_baa6            ; 0x531c
    add sp, byte 0x0e                ; 0x531f
    mov ax, 0                        ; 0x5322
    push ax                          ; 0x5325
    push ax                          ; 0x5326
    mov ax, word [bp - 0x000a]       ; 0x5327
    add ax, strict word 0x6e         ; 0x532a
    push ax                          ; 0x532d
    mov ax, word [bp - 0x0008]       ; 0x532e
    add ax, strict word 0x64         ; 0x5331
    push ax                          ; 0x5334
    mov ax, word [bp - 0x000a]       ; 0x5335
    add ax, strict word 0x69         ; 0x5338
    push ax                          ; 0x533b
    mov ax, word [bp - 0x0008]       ; 0x533c
    add ax, strict word 0x5f         ; 0x533f
    push ax                          ; 0x5342
    mov ax, 8                        ; 0x5343
    push ax                          ; 0x5346
    call ds_dispatch_baa6            ; 0x5347
    add sp, byte 0x0e                ; 0x534a
    mov ax, 0                        ; 0x534d
    push ax                          ; 0x5350
    push ax                          ; 0x5351
    mov ax, word [bp - 0x000a]       ; 0x5352
    add ax, strict word 0x6e         ; 0x5355
    push ax                          ; 0x5358
    mov ax, word [bp - 0x0008]       ; 0x5359
    add ax, 0x82                     ; 0x535c
    push ax                          ; 0x535f
    mov ax, word [bp - 0x000a]       ; 0x5360
    add ax, strict word 0x69         ; 0x5363
    push ax                          ; 0x5366
    mov ax, word [bp - 0x0008]       ; 0x5367
    add ax, strict word 0x7d         ; 0x536a
    push ax                          ; 0x536d
    mov ax, 9                        ; 0x536e
    push ax                          ; 0x5371
    call ds_dispatch_baa6            ; 0x5372
    add sp, byte 0x0e                ; 0x5375
    mov ax, 0                        ; 0x5378
    push ax                          ; 0x537b
    push ax                          ; 0x537c
    mov ax, word [bp - 0x000a]       ; 0x537d
    add ax, strict word 0x74         ; 0x5380
    push ax                          ; 0x5383
    mov ax, word [bp - 0x0008]       ; 0x5384
    add ax, strict word 0x64         ; 0x5387
    push ax                          ; 0x538a
    mov ax, word [bp - 0x000a]       ; 0x538b
    add ax, strict word 0x6f         ; 0x538e
    push ax                          ; 0x5391
    mov ax, word [bp - 0x0008]       ; 0x5392
    add ax, strict word 0x5f         ; 0x5395
    push ax                          ; 0x5398
    mov ax, 0xa                      ; 0x5399
    push ax                          ; 0x539c
    call ds_dispatch_baa6            ; 0x539d
    add sp, byte 0x0e                ; 0x53a0
    mov ax, 0                        ; 0x53a3
    push ax                          ; 0x53a6
    push ax                          ; 0x53a7
    mov ax, word [bp - 0x000a]       ; 0x53a8
    add ax, strict word 0x74         ; 0x53ab
    push ax                          ; 0x53ae
    mov ax, word [bp - 0x0008]       ; 0x53af
    add ax, 0x82                     ; 0x53b2
    push ax                          ; 0x53b5
    mov ax, word [bp - 0x000a]       ; 0x53b6
    add ax, strict word 0x6f         ; 0x53b9
    push ax                          ; 0x53bc
    mov ax, word [bp - 0x0008]       ; 0x53bd
    add ax, strict word 0x7d         ; 0x53c0
    push ax                          ; 0x53c3
    mov ax, 0xb                      ; 0x53c4
    push ax                          ; 0x53c7
    call ds_dispatch_baa6            ; 0x53c8
    add sp, byte 0x0e                ; 0x53cb
    mov ax, 0                        ; 0x53ce
    push ax                          ; 0x53d1
    push ax                          ; 0x53d2
    mov ax, word [bp - 0x000a]       ; 0x53d3
    add ax, 0x81                     ; 0x53d6
    push ax                          ; 0x53d9
    mov ax, word [bp - 0x0008]       ; 0x53da
    add ax, strict word 0x38         ; 0x53dd
    push ax                          ; 0x53e0
    mov ax, word [bp - 0x000a]       ; 0x53e1
    add ax, strict word 0x79         ; 0x53e4
    push ax                          ; 0x53e7
    mov ax, word [bp - 0x0008]       ; 0x53e8
    add ax, strict word 8            ; 0x53eb
    push ax                          ; 0x53ee
    mov ax, 0xc                      ; 0x53ef
    push ax                          ; 0x53f2
    call ds_dispatch_baa6            ; 0x53f3
    add sp, byte 0x0e                ; 0x53f6
    mov ax, 0                        ; 0x53f9
    push ax                          ; 0x53fc
    push ax                          ; 0x53fd
    mov ax, word [bp - 0x000a]       ; 0x53fe
    add ax, 0x8c                     ; 0x5401
    push ax                          ; 0x5404
    mov ax, word [bp - 0x0008]       ; 0x5405
    add ax, strict word 0x64         ; 0x5408
    push ax                          ; 0x540b
    mov ax, word [bp - 0x000a]       ; 0x540c
    add ax, 0x87                     ; 0x540f
    push ax                          ; 0x5412
    mov ax, word [bp - 0x0008]       ; 0x5413
    add ax, strict word 0x5f         ; 0x5416
    push ax                          ; 0x5419
    mov ax, 0xd                      ; 0x541a
    push ax                          ; 0x541d
    call ds_dispatch_baa6            ; 0x541e
    add sp, byte 0x0e                ; 0x5421
    mov ax, 0                        ; 0x5424
    push ax                          ; 0x5427
    push ax                          ; 0x5428
    mov ax, word [bp - 0x000a]       ; 0x5429
    add ax, 0x8c                     ; 0x542c
    push ax                          ; 0x542f
    mov ax, word [bp - 0x0008]       ; 0x5430
    add ax, 0x82                     ; 0x5433
    push ax                          ; 0x5436
    mov ax, word [bp - 0x000a]       ; 0x5437
    add ax, 0x87                     ; 0x543a
    push ax                          ; 0x543d
    mov ax, word [bp - 0x0008]       ; 0x543e
    add ax, strict word 0x7d         ; 0x5441
    push ax                          ; 0x5444
    mov ax, 0xe                      ; 0x5445
    push ax                          ; 0x5448
    call ds_dispatch_baa6            ; 0x5449
    add sp, byte 0x0e                ; 0x544c
    mov ax, 0                        ; 0x544f
    push ax                          ; 0x5452
    push ax                          ; 0x5453
    mov ax, word [bp - 0x000a]       ; 0x5454
    add ax, strict word 0x21         ; 0x5457
    push ax                          ; 0x545a
    mov ax, word [bp - 0x0008]       ; 0x545b
    add ax, 0x110                    ; 0x545e
    push ax                          ; 0x5461
    mov ax, word [bp - 0x000a]       ; 0x5462
    add ax, strict word 0x19         ; 0x5465
    push ax                          ; 0x5468
    mov ax, word [bp - 0x0008]       ; 0x5469
    add ax, 0xe6                     ; 0x546c
    push ax                          ; 0x546f
    mov ax, 0xf                      ; 0x5470
    push ax                          ; 0x5473
    call ds_dispatch_baa6            ; 0x5474
    add sp, byte 0x0e                ; 0x5477
    mov ax, 0                        ; 0x547a
    push ax                          ; 0x547d
    push ax                          ; 0x547e
    mov ax, word [bp - 0x000a]       ; 0x547f
    add ax, strict word 0x2d         ; 0x5482
    push ax                          ; 0x5485
    mov ax, word [bp - 0x0008]       ; 0x5486
    add ax, 0xda                     ; 0x5489
    push ax                          ; 0x548c
    mov ax, word [bp - 0x000a]       ; 0x548d
    add ax, strict word 0x25         ; 0x5490
    push ax                          ; 0x5493
    mov ax, word [bp - 0x0008]       ; 0x5494
    add ax, 0xc2                     ; 0x5497
    push ax                          ; 0x549a
    mov ax, 0x10                     ; 0x549b
    push ax                          ; 0x549e
    call ds_dispatch_baa6            ; 0x549f
    add sp, byte 0x0e                ; 0x54a2
    mov ax, 0                        ; 0x54a5
    push ax                          ; 0x54a8
    push ax                          ; 0x54a9
    mov ax, word [bp - 0x000a]       ; 0x54aa
    add ax, strict word 0x3f         ; 0x54ad
    push ax                          ; 0x54b0
    mov ax, word [bp - 0x0008]       ; 0x54b1
    add ax, 0xcb                     ; 0x54b4
    push ax                          ; 0x54b7
    mov ax, word [bp - 0x000a]       ; 0x54b8
    add ax, strict word 0x37         ; 0x54bb
    push ax                          ; 0x54be
    mov ax, word [bp - 0x0008]       ; 0x54bf
    add ax, 0xa1                     ; 0x54c2
    push ax                          ; 0x54c5
    mov ax, 0x11                     ; 0x54c6
    push ax                          ; 0x54c9
    call ds_dispatch_baa6            ; 0x54ca
    add sp, byte 0x0e                ; 0x54cd
    mov ax, 0                        ; 0x54d0
    push ax                          ; 0x54d3
    push ax                          ; 0x54d4
    mov ax, word [bp - 0x000a]       ; 0x54d5
    add ax, strict word 0x4a         ; 0x54d8
    push ax                          ; 0x54db
    mov ax, word [bp - 0x0008]       ; 0x54dc
    add ax, 0x113                    ; 0x54df
    push ax                          ; 0x54e2
    mov ax, word [bp - 0x000a]       ; 0x54e3
    add ax, strict word 0x44         ; 0x54e6
    push ax                          ; 0x54e9
    mov ax, word [bp - 0x0008]       ; 0x54ea
    add ax, 0xd5                     ; 0x54ed
    push ax                          ; 0x54f0
    mov ax, 0x12                     ; 0x54f1
    push ax                          ; 0x54f4
    call ds_dispatch_baa6            ; 0x54f5
    add sp, byte 0x0e                ; 0x54f8
    mov ax, 0                        ; 0x54fb
    push ax                          ; 0x54fe
    push ax                          ; 0x54ff
    mov ax, word [bp - 0x000a]       ; 0x5500
    add ax, strict word 0x68         ; 0x5503
    push ax                          ; 0x5506
    mov ax, word [bp - 0x0008]       ; 0x5507
    add ax, 0xe2                     ; 0x550a
    push ax                          ; 0x550d
    mov ax, word [bp - 0x000a]       ; 0x550e
    add ax, strict word 0x63         ; 0x5511
    push ax                          ; 0x5514
    mov ax, word [bp - 0x0008]       ; 0x5515
    add ax, 0xdd                     ; 0x5518
    push ax                          ; 0x551b
    mov ax, 0x13                     ; 0x551c
    push ax                          ; 0x551f
    call ds_dispatch_baa6            ; 0x5520
    add sp, byte 0x0e                ; 0x5523
    mov ax, 0                        ; 0x5526
    push ax                          ; 0x5529
    push ax                          ; 0x552a
    mov ax, word [bp - 0x000a]       ; 0x552b
    add ax, strict word 0x68         ; 0x552e
    push ax                          ; 0x5531
    mov ax, word [bp - 0x0008]       ; 0x5532
    add ax, 0x106                    ; 0x5535
    push ax                          ; 0x5538
    mov ax, word [bp - 0x000a]       ; 0x5539
    add ax, strict word 0x63         ; 0x553c
    push ax                          ; 0x553f
    mov ax, word [bp - 0x0008]       ; 0x5540
    add ax, 0x101                    ; 0x5543
    push ax                          ; 0x5546
    mov ax, 0x14                     ; 0x5547
    push ax                          ; 0x554a
    call ds_dispatch_baa6            ; 0x554b
    add sp, byte 0x0e                ; 0x554e
    mov ax, 0                        ; 0x5551
    push ax                          ; 0x5554
    push ax                          ; 0x5555
    mov ax, word [bp - 0x000a]       ; 0x5556
    add ax, strict word 0x6e         ; 0x5559
    push ax                          ; 0x555c
    mov ax, word [bp - 0x0008]       ; 0x555d
    add ax, 0xe2                     ; 0x5560
    push ax                          ; 0x5563
    mov ax, word [bp - 0x000a]       ; 0x5564
    add ax, strict word 0x69         ; 0x5567
    push ax                          ; 0x556a
    mov ax, word [bp - 0x0008]       ; 0x556b
    add ax, 0xdd                     ; 0x556e
    push ax                          ; 0x5571
    mov ax, 0x15                     ; 0x5572
    push ax                          ; 0x5575
    call ds_dispatch_baa6            ; 0x5576
    add sp, byte 0x0e                ; 0x5579
    mov ax, 0                        ; 0x557c
    push ax                          ; 0x557f
    push ax                          ; 0x5580
    mov ax, word [bp - 0x000a]       ; 0x5581
    add ax, strict word 0x6e         ; 0x5584
    push ax                          ; 0x5587
    mov ax, word [bp - 0x0008]       ; 0x5588
    add ax, 0x106                    ; 0x558b
    push ax                          ; 0x558e
    mov ax, word [bp - 0x000a]       ; 0x558f
    add ax, strict word 0x69         ; 0x5592
    push ax                          ; 0x5595
    mov ax, word [bp - 0x0008]       ; 0x5596
    add ax, 0x101                    ; 0x5599
    push ax                          ; 0x559c
    mov ax, 0x16                     ; 0x559d
    push ax                          ; 0x55a0
    call ds_dispatch_baa6            ; 0x55a1
    add sp, byte 0x0e                ; 0x55a4
    mov ax, 0                        ; 0x55a7
    push ax                          ; 0x55aa
    push ax                          ; 0x55ab
    mov ax, word [bp - 0x000a]       ; 0x55ac
    add ax, 0x87                     ; 0x55af
    push ax                          ; 0x55b2
    mov ax, word [bp - 0x0008]       ; 0x55b3
    add ax, 0xdc                     ; 0x55b6
    push ax                          ; 0x55b9
    mov ax, word [bp - 0x000a]       ; 0x55ba
    add ax, strict word 0x7f         ; 0x55bd
    push ax                          ; 0x55c0
    mov ax, word [bp - 0x0008]       ; 0x55c1
    add ax, 0xb2                     ; 0x55c4
    push ax                          ; 0x55c7
    mov ax, 0x17                     ; 0x55c8
    push ax                          ; 0x55cb
    call ds_dispatch_baa6            ; 0x55cc
    add sp, byte 0x0e                ; 0x55cf
    mov ax, 0                        ; 0x55d2
    push ax                          ; 0x55d5
    mov ax, 0x1b                     ; 0x55d6
    push ax                          ; 0x55d9
    mov ax, word [bp - 0x000a]       ; 0x55da
    add ax, 0x87                     ; 0x55dd
    push ax                          ; 0x55e0
    mov ax, word [bp - 0x0008]       ; 0x55e1
    add ax, 0x110                    ; 0x55e4
    push ax                          ; 0x55e7
    mov ax, word [bp - 0x000a]       ; 0x55e8
    add ax, strict word 0x7f         ; 0x55eb
    push ax                          ; 0x55ee
    mov ax, word [bp - 0x0008]       ; 0x55ef
    add ax, 0xe6                     ; 0x55f2
    push ax                          ; 0x55f5
    mov ax, 0x18                     ; 0x55f6
    push ax                          ; 0x55f9
    call ds_dispatch_baa6            ; 0x55fa
    add sp, byte 0x0e                ; 0x55fd
    mov ax, 0                        ; 0x5600
    push ax                          ; 0x5603
    push ax                          ; 0x5604
    push ax                          ; 0x5605
    push ax                          ; 0x5606
    push ax                          ; 0x5607
    mov ax, 0xffff                   ; 0x5608
    push ax                          ; 0x560b
    mov ax, 0x19                     ; 0x560c
    push ax                          ; 0x560f
    call ds_dispatch_baa6            ; 0x5610
    add sp, byte 0x0e                ; 0x5613
    mov ax, word [bp - 0x000e]       ; 0x5616
    inc ax                           ; 0x5619
    push ax                          ; 0x561a
    mov ax, word [bp - 0x000c]       ; 0x561b
    inc ax                           ; 0x561e
    push ax                          ; 0x561f
    mov ax, word [bp - 0x000a]       ; 0x5620
    dec ax                           ; 0x5623
    push ax                          ; 0x5624
    mov ax, word [bp - 0x0008]       ; 0x5625
    dec ax                           ; 0x5628
    push ax                          ; 0x5629
    call ds_dispatch_e8da            ; 0x562a
    add sp, byte 8                   ; 0x562d
    mov word [bp - 0x0018], 1        ; 0x5630
    mov word [bp - 0x0016], 0        ; 0x5635
@..local.l78:
    cmp word [bss_0e32], byte 0      ; 0x563a
    je short @..local.l79            ; 0x563f
    mov ax, 0x59fe                   ; 0x5641
    push ax                          ; 0x5644
    call ds_dispatch_b90d            ; 0x5645
    pop cx                           ; 0x5648
    dec ax                           ; 0x5649
    mov word [bp - 0x0014], ax       ; 0x564a
    jmp near @..local.l105           ; 0x564d
@..local.l79:
    mov word [bss_5b3e], 0           ; 0x5650
    push word [bp - 0x000a]          ; 0x5656
    push word [bp - 0x0008]          ; 0x5659
    push word [bp - 0x0016]          ; 0x565c
    call api_idx_0052_2              ; 0x565f
    add sp, byte 6                   ; 0x5662
    mov ax, 1                        ; 0x5665
    push ax                          ; 0x5668
    call ds_dispatch_eb32            ; 0x5669
    pop cx                           ; 0x566c
    sub ah, ah                       ; 0x566d
    mov word [bp - 0x0004], ax       ; 0x566f
    jmp near @..local.l97            ; 0x5672
@..local.l80:
    push word [bp - 0x000a]          ; 0x5675
    push word [bp - 0x0008]          ; 0x5678
    push word [bp - 0x0016]          ; 0x567b
    call api_idx_0052                ; 0x567e
    add sp, byte 6                   ; 0x5681
    mov ax, word [bp - 0x0016]       ; 0x5684
    add ax, strict word 0x12         ; 0x5687
    mov cx, 0x13                     ; 0x568a
    cwd                              ; 0x568d
    idiv cx                          ; 0x568e
    mov word [bp - 0x0016], dx       ; 0x5690
    cmp dx, byte 0x0e                ; 0x5693
    jne short @..local.l81           ; 0x5696
    dec word [bp - 0x0016]           ; 0x5698
@..local.l81:
    mov ax, word [bp - 0x000e]       ; 0x569b
    inc ax                           ; 0x569e
    push ax                          ; 0x569f
    mov ax, word [bp - 0x000c]       ; 0x56a0
    inc ax                           ; 0x56a3
    push ax                          ; 0x56a4
    mov ax, word [bp - 0x000a]       ; 0x56a5
    dec ax                           ; 0x56a8
    push ax                          ; 0x56a9
    mov ax, word [bp - 0x0008]       ; 0x56aa
    dec ax                           ; 0x56ad
    push ax                          ; 0x56ae
    call ds_dispatch_e8da            ; 0x56af
    add sp, byte 8                   ; 0x56b2
    jmp near @..local.l105           ; 0x56b5
@..local.l82:
    push word [bp - 0x000a]          ; 0x56b8
    push word [bp - 0x0008]          ; 0x56bb
    push word [bp - 0x0016]          ; 0x56be
    call api_idx_0052                ; 0x56c1
    add sp, byte 6                   ; 0x56c4
    mov ax, word [bp - 0x0016]       ; 0x56c7
    inc ax                           ; 0x56ca
    mov cx, 0x13                     ; 0x56cb
    cwd                              ; 0x56ce
    idiv cx                          ; 0x56cf
    mov word [bp - 0x0016], dx       ; 0x56d1
    cmp dx, byte 0x0e                ; 0x56d4
    jne short @..local.l83           ; 0x56d7
    inc word [bp - 0x0016]           ; 0x56d9
@..local.l83:
    mov ax, word [bp - 0x000e]       ; 0x56dc
    inc ax                           ; 0x56df
    push ax                          ; 0x56e0
    mov ax, word [bp - 0x000c]       ; 0x56e1
    inc ax                           ; 0x56e4
    push ax                          ; 0x56e5
    mov ax, word [bp - 0x000a]       ; 0x56e6
    dec ax                           ; 0x56e9
    push ax                          ; 0x56ea
    mov ax, word [bp - 0x0008]       ; 0x56eb
    dec ax                           ; 0x56ee
    push ax                          ; 0x56ef
    call ds_dispatch_e8da            ; 0x56f0
    add sp, byte 8                   ; 0x56f3
    jmp near @..local.l105           ; 0x56f6
@..local.l84:
    mov word [bp - 0x0014], 0xffff   ; 0x56f9
    mov ax, word [bp - 0x0016]       ; 0x56fe
    jmp short @..local.l85           ; 0x5701

    db 0xc7, 0x46, 0xec, 0x00, 0x00, 0xe9, 0x79, 0x00, 0xc7, 0x46, 0xec, 0x03, 0x00, 0xeb, 0x72, 0xc7
    db 0x46, 0xec, 0x04, 0x00, 0xeb, 0x6b, 0xc7, 0x46, 0xec, 0x05, 0x00, 0xeb, 0x64, 0xc7, 0x46, 0xec
    db 0x0c, 0x00, 0xeb, 0x5d, 0xc7, 0x46, 0xec, 0x0f, 0x00, 0xeb, 0x56, 0xc7, 0x46, 0xec, 0x10, 0x00
    db 0xeb, 0x4f, 0xc7, 0x46, 0xec, 0x11, 0x00, 0xeb, 0x48, 0xc7, 0x46, 0xec, 0x12, 0x00, 0xeb, 0x41
    db 0xc7, 0x46, 0xec, 0x17, 0x00, 0xeb, 0x3a, 0xc7, 0x46, 0xec, 0x18, 0x00, 0xeb, 0x33, 0x4a, 0xa7
    db 0xcb, 0xa7, 0x52, 0xa7, 0x59, 0xa7, 0x60, 0xa7, 0xcb, 0xa7, 0xcb, 0xa7, 0xcb, 0xa7, 0x67, 0xa7
    db 0xcb, 0xa7, 0x6e, 0xa7, 0x75, 0xa7, 0x7c, 0xa7, 0x83, 0xa7, 0xcb, 0xa7, 0xcb, 0xa7, 0xcb, 0xa7
    db 0x8a, 0xa7, 0x91, 0xa7

@..local.l85:
    cmp ax, strict word 0x13         ; 0x5777
    jae short @..local.l86           ; 0x577a
    xchg bx, ax                      ; 0x577c
    shl bx, 1                        ; 0x577d
    jmp [cs:bx - 0x5868]             ; 0x577f
@..local.l86:
    cmp word [bp - 0x0014], byte 0xff ; 0x5784
    je short @..local.l87            ; 0x5788
    mov word [bss_5b3e], 1           ; 0x578a
@..local.l87:
    jmp near @..local.l105           ; 0x5790
@..local.l88:
    mov word [bp - 0x0014], 0xffff   ; 0x5793
    mov ax, word [bp - 0x0016]       ; 0x5798
    jmp short @..local.l89           ; 0x579b

    db 0xc7, 0x46, 0xec, 0x02, 0x00, 0xeb, 0x59, 0xc7, 0x46, 0xec, 0x07, 0x00, 0xeb, 0x52, 0xc7, 0x46
    db 0xec, 0x09, 0x00, 0xeb, 0x4b, 0xc7, 0x46, 0xec, 0x0b, 0x00, 0xeb, 0x44, 0xc7, 0x46, 0xec, 0x0e
    db 0x00, 0xeb, 0x3d, 0xc7, 0x46, 0xec, 0x14, 0x00, 0xeb, 0x36, 0xc7, 0x46, 0xec, 0x16, 0x00, 0xeb
    db 0x2f, 0x44, 0xa8, 0xe4, 0xa7, 0x44, 0xa8, 0x44, 0xa8, 0x44, 0xa8, 0xeb, 0xa7, 0xf2, 0xa7, 0xf9
    db 0xa7, 0x44, 0xa8, 0x00, 0xa8, 0x44, 0xa8, 0x44, 0xa8, 0x44, 0xa8, 0x44, 0xa8, 0x44, 0xa8, 0x07
    db 0xa8, 0x0e, 0xa8

@..local.l89:
    cmp ax, strict word 0x11         ; 0x57f0
    jae short @..local.l90           ; 0x57f3
    xchg bx, ax                      ; 0x57f5
    shl bx, 1                        ; 0x57f6
    jmp [cs:bx - 0x57eb]             ; 0x57f8
@..local.l90:
    cmp word [bp - 0x0014], byte 0xff ; 0x57fd
    je short @..local.l91            ; 0x5801
    mov word [bss_5b3e], 1           ; 0x5803
@..local.l91:
    jmp near @..local.l105           ; 0x5809
@..local.l92:
    mov word [bp - 0x0014], 0xffff   ; 0x580c
    mov ax, word [bp - 0x0016]       ; 0x5811
    jmp short @..local.l93           ; 0x5814

    db 0xc7, 0x46, 0xec, 0x01, 0x00, 0xeb, 0x59, 0xc7, 0x46, 0xec, 0x06, 0x00, 0xeb, 0x52, 0xc7, 0x46
    db 0xec, 0x08, 0x00, 0xeb, 0x4b, 0xc7, 0x46, 0xec, 0x0a, 0x00, 0xeb, 0x44, 0xc7, 0x46, 0xec, 0x0d
    db 0x00, 0xeb, 0x3d, 0xc7, 0x46, 0xec, 0x13, 0x00, 0xeb, 0x36, 0xc7, 0x46, 0xec, 0x15, 0x00, 0xeb
    db 0x2f, 0xbd, 0xa8, 0x5d, 0xa8, 0xbd, 0xa8, 0xbd, 0xa8, 0xbd, 0xa8, 0x64, 0xa8, 0x6b, 0xa8, 0x72
    db 0xa8, 0xbd, 0xa8, 0x79, 0xa8, 0xbd, 0xa8, 0xbd, 0xa8, 0xbd, 0xa8, 0xbd, 0xa8, 0xbd, 0xa8, 0x80
    db 0xa8, 0x87, 0xa8

@..local.l93:
    cmp ax, strict word 0x11         ; 0x5869
    jae short @..local.l94           ; 0x586c
    xchg bx, ax                      ; 0x586e
    shl bx, 1                        ; 0x586f
    jmp [cs:bx - 0x5772]             ; 0x5871
@..local.l94:
    cmp word [bp - 0x0014], byte 0xff ; 0x5876
    je short @..local.l95            ; 0x587a
    mov word [bss_5b3e], 1           ; 0x587c
@..local.l95:
    jmp short @..local.l105          ; 0x5882
@..local.l96:
    mov word [bp - 0x0014], 0x18     ; 0x5884
    mov word [bss_5b3e], 1           ; 0x5889
    jmp short @..local.l105          ; 0x588f
@..local.l97:
    cmp ax, strict word 8            ; 0x5891
    jne short @..local.l98           ; 0x5894
    jmp near @..local.l92            ; 0x5896
@..local.l98:
    cmp ax, strict word 9            ; 0x5899
    jne short @..local.l99           ; 0x589c
    jmp near @..local.l80            ; 0x589e
@..local.l99:
    cmp ax, strict word 0xa          ; 0x58a1
    jne short @..local.l100          ; 0x58a4
    jmp near @..local.l88            ; 0x58a6
@..local.l100:
    cmp ax, strict word 0xb          ; 0x58a9
    jne short @..local.l101          ; 0x58ac
    jmp near @..local.l82            ; 0x58ae
@..local.l101:
    cmp ax, strict word 0xd          ; 0x58b1
    jne short @..local.l102          ; 0x58b4
    jmp near @..local.l84            ; 0x58b6
@..local.l102:
    cmp ax, strict word 0x1b         ; 0x58b9
    je short @..local.l96            ; 0x58bc
    cmp ax, strict word 0x2b         ; 0x58be
    jne short @..local.l103          ; 0x58c1
    jmp near @..local.l88            ; 0x58c3
@..local.l103:
    cmp ax, strict word 0x2d         ; 0x58c6
    jne short @..local.l104          ; 0x58c9
    jmp near @..local.l92            ; 0x58cb
@..local.l104:
    cmp ax, strict word 0x3d         ; 0x58ce
    jne short @..local.l105          ; 0x58d1
    jmp near @..local.l88            ; 0x58d3
@..local.l105:
    cmp word [bss_5b3e], byte 1      ; 0x58d6
    je short @..local.l106           ; 0x58db
    jmp near @..local.l110           ; 0x58dd
@..local.l106:
    mov ax, word [bp - 0x0014]       ; 0x58e0
    jmp near @..local.l107           ; 0x58e3

    db 0xa0, 0x89, 0x59, 0x2a, 0xe4, 0x40, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xa2, 0x89
    db 0x59, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x31, 0xea, 0x83, 0xc4
    db 0x06, 0xe9, 0xb4, 0x05, 0x80, 0x3e, 0x86, 0x59, 0x00, 0x76, 0x14, 0xfe, 0x0e, 0x86, 0x59, 0xff
    db 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0x13, 0xea, 0x83, 0xc4, 0x06, 0xe9
    db 0x96, 0x05, 0x80, 0x3e, 0x86, 0x59, 0x63, 0x73, 0x14, 0xfe, 0x06, 0x86, 0x59, 0xff, 0x76, 0xf6
    db 0xff, 0x76, 0xf8, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0xf5, 0xe9, 0x83, 0xc4, 0x06, 0xe9, 0x78, 0x05
    db 0xe8, 0xce, 0x92, 0xb8, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xf6, 0x05, 0x38, 0x00, 0x50, 0x8b, 0x46
    db 0xf8, 0x05, 0x27, 0x00, 0x50, 0xb8, 0x3a, 0x59, 0x50, 0xe8, 0xc5, 0xed, 0x83, 0xc4, 0x08, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0x8b
    db 0x46, 0xf6, 0x05, 0x39, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x29, 0x00, 0x50, 0xb8, 0x3a, 0x59
    db 0x50, 0xe8, 0xb5, 0xb3, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x02, 0x00
    db 0x50, 0xe8, 0x9b, 0xe9, 0x83, 0xc4, 0x06, 0xe9, 0x1e, 0x05, 0xe8, 0x74, 0x92, 0xb8, 0x12, 0x00
    db 0x50, 0x8b, 0x46, 0xf6, 0x05, 0x44, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0x27, 0x00, 0x50, 0xb8

jumptable_0d04_case_0:

    db 0x4e, 0x59, 0x50, 0xe8, 0x6b, 0xed, 0x83, 0xc4, 0x08, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00
    db 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0x8b, 0x46, 0xf6, 0x05, 0x45, 0x00, 0x50
    db 0x8b, 0x46, 0xf8, 0x05, 0x29, 0x00, 0x50, 0xb8, 0x4e, 0x59, 0x50, 0xe8, 0x5b, 0xb3, 0x83, 0xc4
    db 0x0e, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x03, 0x00, 0x50, 0xe8, 0x41, 0xe9, 0x83, 0xc4
    db 0x06, 0xe9, 0xc4, 0x04, 0x83, 0x7e, 0x04, 0x00, 0x75, 0x28, 0xa0, 0x84, 0x59, 0x2a, 0xe4, 0x40
    db 0xb9, 0x07, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xa2, 0x84, 0x59, 0x80, 0x3e, 0x84, 0x59, 0x05
    db 0x74, 0xe8, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x10, 0xe9, 0x83
    db 0xc4, 0x06, 0x80, 0x3e, 0x84, 0x59, 0x00, 0x76, 0x08, 0xc7, 0x06, 0x80, 0x59, 0x20, 0x02, 0xeb
    db 0x06, 0xc7, 0x06, 0x80, 0x59, 0x00, 0x00, 0xe9, 0x7e, 0x04, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0xff
    db 0xff, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xda, 0xf0, 0x83, 0xc4, 0x06, 0xff, 0x76, 0xf6, 0xff
    db 0x76, 0xf8, 0xb8, 0x05, 0x00, 0x50, 0xe8, 0xd6, 0xe8, 0x83, 0xc4, 0x06, 0xe9, 0x59, 0x04, 0xb8
    db 0x0a, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xb5, 0xf0, 0x83, 0xc4
    db 0x06, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x05, 0x00, 0x50, 0xe8, 0xb1, 0xe8, 0x83, 0xc4
    db 0x06, 0xe9, 0x34, 0x04, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0xff, 0xff, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xe8, 0x90, 0xf0, 0x83, 0xc4, 0x06, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x06, 0x00, 0x50
    db 0xe8, 0x8c, 0xe8, 0x83, 0xc4, 0x06, 0xe9, 0x0f, 0x04, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x01, 0x00
    db 0x50, 0x50, 0xe8, 0x6e, 0xf0, 0x83, 0xc4, 0x06, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x06
    db 0x00, 0x50, 0xe8, 0x6a, 0xe8, 0x83, 0xc4, 0x06, 0xe9, 0xed, 0x03, 0xb8, 0x0a, 0x00, 0x50, 0xb8
    db 0xff, 0xff, 0x50, 0xb8, 0x02, 0x00, 0x50

jumptable_0d04_case_1:

    db 0xe8, 0x49, 0xf0, 0x83, 0xc4, 0x06, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x07, 0x00, 0x50
    db 0xe8, 0x45, 0xe8, 0x83, 0xc4, 0x06, 0xe9, 0xc8, 0x03, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x01, 0x00
    db 0x50, 0xb8, 0x02, 0x00, 0x50, 0xe8, 0x24, 0xf0, 0x83, 0xc4, 0x06, 0xff, 0x76, 0xf6, 0xff, 0x76
    db 0xf8, 0xb8, 0x07, 0x00, 0x50, 0xe8, 0x20, 0xe8, 0x83, 0xc4, 0x06, 0xe9, 0xa3, 0x03, 0x83, 0x7e
    db 0x04, 0x00, 0x75, 0x2f, 0xa0, 0x85, 0x59, 0x2a, 0xe4, 0x40, 0xb9, 0x07, 0x00, 0x99, 0xf7, 0xf9
    db 0x8b, 0xc2, 0xa2, 0x85, 0x59, 0x80, 0x3e, 0x85, 0x59, 0x02, 0x74, 0xe8, 0x80, 0x3e, 0x85, 0x59
    db 0x03, 0x74, 0xe1, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x08, 0x00, 0x50, 0xe8, 0xe8, 0xe7
    db 0x83, 0xc4, 0x06, 0x80, 0x3e, 0x85, 0x59, 0x00, 0x76, 0x08, 0xc7, 0x06, 0x82, 0x59, 0x20, 0x02
    db 0xeb, 0x06, 0xc7, 0x06, 0x82, 0x59, 0x00, 0x00, 0xe9, 0x56, 0x03, 0xb8, 0x0a, 0x00, 0x50, 0xb8
    db 0xff, 0xff, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xe8, 0xb2, 0xef, 0x83, 0xc4, 0x06, 0xff, 0x76, 0xf6
    db 0xff, 0x76, 0xf8, 0xb8, 0x09, 0x00, 0x50, 0xe8, 0xae, 0xe7, 0x83, 0xc4, 0x06, 0xe9, 0x31, 0x03
    db 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xe8, 0x8d, 0xef, 0x83
    db 0xc4, 0x06, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x09, 0x00, 0x50, 0xe8, 0x89, 0xe7, 0x83
    db 0xc4, 0x06, 0xe9, 0x0c, 0x03, 0xa0, 0x88, 0x59, 0x2a, 0xe4, 0x40, 0xb9, 0x03, 0x00, 0x99, 0xf7
    db 0xf9, 0x8b, 0xc2, 0xa2, 0x88, 0x59, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x0a, 0x00, 0x50
    db 0xe8, 0x65, 0xe7, 0x83, 0xc4, 0x06, 0xe9, 0xe8, 0x02, 0xa0, 0x8c, 0x59, 0x2a, 0xe4, 0x40, 0xb9
    db 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xa2, 0x8c, 0x59, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8
    db 0xb8, 0x0b, 0x00, 0x50, 0xe8, 0x41, 0xe7, 0x83, 0xc4, 0x06, 0xe9, 0xc4, 0x02, 0xb8, 0x01, 0x00
    db 0x80, 0x3e, 0x62, 0x59, 0x01, 0x74, 0x0d, 0xb8, 0x00, 0x00, 0x80, 0x3e, 0x63, 0x59, 0x01, 0x75
    db 0x03, 0xb8, 0x02, 0x00, 0x89, 0x46, 0xfc

jumptable_0d04_case_3:

    db 0x40, 0xb9, 0x03, 0x00, 0x99, 0xf7, 0xf9, 0x89, 0x56, 0xfc, 0xc6, 0x06, 0x62, 0x59, 0x00, 0xc6
    db 0x06, 0x63, 0x59, 0x00, 0x8b, 0xc2, 0xeb, 0x0e, 0xc6, 0x06, 0x62, 0x59, 0x01, 0xeb, 0x11, 0xc6
    db 0x06, 0x63, 0x59, 0x01, 0xeb, 0x0a, 0x3d, 0x01, 0x00, 0x74, 0xed, 0x3d, 0x02, 0x00, 0x74, 0xef
    db 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x0c, 0x00, 0x50, 0xe8, 0xe4, 0xe6, 0x83, 0xc4, 0x06
    db 0x8b, 0x46, 0xf2, 0x40, 0x50, 0x8b, 0x46, 0xf4, 0x40, 0x50, 0x8b, 0x46, 0xf6, 0x48, 0x50, 0x8b
    db 0x46

jumptable_0d04_case_4:

    db 0xf8, 0x48, 0x50, 0xe8, 0x6f, 0x8c, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xec, 0x12, 0x74, 0x13, 0x80
    db 0x3e, 0x63, 0x59, 0x01, 0x75, 0x63, 0xb8, 0x64, 0x59, 0x50, 0xe8, 0x0e, 0x9e, 0x59, 0x85, 0xc0
    db 0x75, 0x57, 0xe8, 0x8d, 0x8f, 0xb8, 0x0a, 0x00, 0x50, 0x8b, 0x46, 0xf6, 0x05, 0x44, 0x00, 0x50
    db 0x8b, 0x46, 0xf8, 0x05, 0xd5, 0x00, 0x50, 0xb8, 0x64, 0x59, 0x50, 0xe8, 0x84, 0xea, 0x83, 0xc4
    db 0x08, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0a, 0x00
    db 0x50

jumptable_0d04_case_5:

    db 0x8b, 0x46, 0xf6, 0x05, 0x45, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05, 0xd7, 0x00, 0x50, 0xb8, 0x64
    db 0x59, 0x50, 0xe8, 0x74, 0xb0, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x0d
    db 0x00, 0x50, 0xe8, 0x5a, 0xe6, 0x83, 0xc4, 0x06, 0xe9, 0xdd, 0x01, 0xb8, 0x9d, 0xff, 0x50, 0xb8
    db 0xff, 0xff, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x6e, 0xee, 0x83, 0xc4, 0x06, 0xff, 0x76, 0xf6
    db 0xff, 0x76, 0xf8, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x35, 0xe6, 0x83, 0xc4, 0x06, 0xa0, 0x79, 0x59
    db 0x98, 0x50, 0xa0, 0x78, 0x59, 0x98, 0x50, 0xe8, 0x50, 0xe3, 0x83, 0xc4, 0x04, 0xe9, 0xa8, 0x01
    db 0xb8, 0x63, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x39, 0xee, 0x83
    db 0xc4, 0x06, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x0f, 0x00, 0x50, 0xe8, 0x00, 0xe6, 0x83
    db 0xc4, 0x06, 0xa0, 0x79, 0x59, 0x98, 0x50, 0xa0, 0x78, 0x59, 0x98, 0x50, 0xe8, 0x1b, 0xe3, 0x83
    db 0xc4, 0x04, 0xe9, 0x73, 0x01, 0xb8, 0x9d, 0xff, 0x50, 0xb8, 0xff, 0xff, 0x50, 0xb8, 0x01, 0x00
    db 0x50, 0xe8, 0x04, 0xee, 0x83, 0xc4, 0x06, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8, 0x10, 0x00
    db 0x50, 0xe8, 0xcb, 0xe5, 0x83, 0xc4, 0x06, 0xa0, 0x79, 0x59, 0x98, 0x50, 0xa0, 0x78, 0x59, 0x98
    db 0x50, 0xe8, 0xe6, 0xe2, 0x83, 0xc4, 0x04, 0xe9, 0x3e, 0x01, 0xb8, 0x63, 0x00, 0x50, 0xb8, 0x01
    db 0x00, 0x50, 0x50, 0xe8, 0xd2, 0xed, 0x83, 0xc4, 0x06, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf8, 0xb8
    db 0x10, 0x00, 0x50, 0xe8, 0x99, 0xe5, 0x83, 0xc4, 0x06, 0xa0, 0x79, 0x59, 0x98, 0x50, 0xa0, 0x78
    db 0x59, 0x98, 0x50, 0xe8, 0xb4, 0xe2, 0x83, 0xc4, 0x04, 0xe9, 0x0c, 0x01, 0xb8, 0x01, 0x00, 0x50
    db 0x50, 0xb8, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf6, 0x05, 0x7f, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05
    db 0xb2, 0x00, 0x50, 0xe8, 0x93, 0x60, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00
    db 0x50, 0xb8, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf6, 0x05, 0x7f, 0x00, 0x50, 0x8b, 0x46, 0xf8, 0x05
    db 0xb2, 0x00, 0x50, 0xe8, 0x73, 0x60, 0x83, 0xc4, 0x0a, 0xa0, 0x84, 0x59, 0x3a, 0x46, 0x8c, 0x75
    db 0x08, 0xa0, 0x85, 0x59, 0x3a, 0x46, 0x8d, 0x74, 0x05, 0xb8, 0x01, 0x00, 0xeb, 0x03, 0xb8, 0x00
    db 0x00, 0xa3, 0x50, 0x90, 0xc7, 0x46, 0xe8, 0x00, 0x00, 0xe8, 0x9a, 0xe1, 0xe9, 0xa9, 0x00, 0xb8
    db 0x01, 0x00, 0x50, 0x50, 0xb8, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf6, 0x05, 0x7f, 0x00, 0x50, 0x8b
    db 0x46, 0xf8, 0x05, 0xe6, 0x00, 0x50, 0xe8, 0x30, 0x60, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50
    db 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf6, 0x05, 0x7f, 0x00, 0x50, 0x8b
    db 0x46, 0xf8, 0x05, 0xe6, 0x00, 0x50, 0xe8, 0x10, 0x60, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90
    db 0x00, 0x00, 0xc7, 0x46, 0xe8, 0x00, 0x00, 0x8d, 0xb6, 0x4a, 0xfc, 0xbf, 0x42, 0x56, 0x8c, 0xd9
    db 0x8e, 0xc1, 0xb9, 0xa6, 0x01, 0xf3, 0xa5, 0xa0, 0x79, 0x59, 0x98, 0x50, 0xa0, 0x78, 0x59, 0x98
    db 0x50, 0xe8, 0xe6, 0xe1, 0x83, 0xc4, 0x04, 0xeb, 0x3f, 0x2d, 0xa9, 0x51, 0xa9, 0x6f, 0xa9, 0x8d
    db 0xa9, 0xe7, 0xa9, 0x41, 0xaa, 0x87, 0xaa, 0xac, 0xaa, 0xd1, 0xaa, 0xf6, 0xaa, 0x18, 0xab, 0x3d
    db 0xab, 0x62, 0xab, 0xaf, 0xab, 0xd4, 0xab, 0xf9, 0xab, 0x1d, 0xac, 0x41, 0xac, 0xb5, 0xac, 0x28
    db 0xad, 0x5d, 0xad, 0x92, 0xad, 0xc7, 0xad, 0xf9, 0xad, 0x5c, 0xae

@..local.l107:
    cmp ax, strict word 0x19         ; 0x5eb1
    jae short @..local.l108          ; 0x5eb4
    xchg bx, ax                      ; 0x5eb6
    shl bx, 1                        ; 0x5eb7
    jmp [cs:bx - 0x513a]             ; 0x5eb9
@..local.l108:
    cmp word [bp - 0x0018], byte 0   ; 0x5ebe
    je short @..local.l109           ; 0x5ec2
    cmp word [bss_0e32], byte 0      ; 0x5ec4
    jne short @..local.l109          ; 0x5ec9
    push word [bp - 0x000a]          ; 0x5ecb
    push word [bp - 0x0008]          ; 0x5ece
    push word [bp - 0x0016]          ; 0x5ed1
    call api_idx_0052_2              ; 0x5ed4
    add sp, byte 6                   ; 0x5ed7
@..local.l109:
    mov ax, word [bp - 0x000e]       ; 0x5eda
    inc ax                           ; 0x5edd
    push ax                          ; 0x5ede
    mov ax, word [bp - 0x000c]       ; 0x5edf
    inc ax                           ; 0x5ee2
    push ax                          ; 0x5ee3
    mov ax, word [bp - 0x000a]       ; 0x5ee4
    dec ax                           ; 0x5ee7
    push ax                          ; 0x5ee8
    mov ax, word [bp - 0x0008]       ; 0x5ee9
    dec ax                           ; 0x5eec
    push ax                          ; 0x5eed
    call ds_dispatch_e8da            ; 0x5eee
    add sp, byte 8                   ; 0x5ef1
@..local.l110:
    cmp word [bp - 0x0018], byte 0   ; 0x5ef4
    je short @..local.l111           ; 0x5ef8
    jmp near @..local.l78            ; 0x5efa
@..local.l111:
    mov ax, 1                        ; 0x5efd
    push ax                          ; 0x5f00
    push word [bp - 0x006a]          ; 0x5f01
    call ds_dispatch_c459            ; 0x5f04
    add sp, byte 4                   ; 0x5f07
    mov ax, word [bp - 0x000e]       ; 0x5f0a
    inc ax                           ; 0x5f0d
    push ax                          ; 0x5f0e
    mov ax, word [bp - 0x000c]       ; 0x5f0f
    inc ax                           ; 0x5f12
    push ax                          ; 0x5f13
    mov ax, word [bp - 0x000a]       ; 0x5f14
    dec ax                           ; 0x5f17
    push ax                          ; 0x5f18
    mov ax, word [bp - 0x0008]       ; 0x5f19
    dec ax                           ; 0x5f1c
    push ax                          ; 0x5f1d
    call ds_dispatch_e8da            ; 0x5f1e
    add sp, byte 8                   ; 0x5f21
    mov ax, word [bss_9050]          ; 0x5f24
    ret                              ; 0x5f27
loc_5f28:
    mov ax, 0xfd40                   ; 0x5f28
    call ds_dispatch_f40b            ; 0x5f2b
    mov word [bp - 0x0008], 0        ; 0x5f2e
    mov word [bp - 0x0002], 0        ; 0x5f33
    jmp near @..local.l118           ; 0x5f38
@..local.l112:
    mov bx, word [bp - 0x0002]       ; 0x5f3b
    cmp byte [bx - 0x6f8a], 1        ; 0x5f3e
    je short @..local.l113           ; 0x5f43
    jmp near @..local.l117           ; 0x5f45
@..local.l113:
    mov ax, 0                        ; 0x5f48
    push ax                          ; 0x5f4b
    push bx                          ; 0x5f4c
    lea ax, word [bp - 0x0250]       ; 0x5f4d
    push ax                          ; 0x5f51
    call api_idx_0002                ; 0x5f52
    add sp, byte 6                   ; 0x5f55
    lea ax, word [bp - 0x0250]       ; 0x5f58
    push ax                          ; 0x5f5c
    mov ax, 0x14                     ; 0x5f5d
    imul word [bp - 0x0008]          ; 0x5f60
    add ax, 0xe38                    ; 0x5f63
    push ax                          ; 0x5f66
    call ds_dispatch_f364            ; 0x5f67
    add sp, byte 4                   ; 0x5f6a
    mov ax, 0x14                     ; 0x5f6d
    imul word [bp - 0x0008]          ; 0x5f70
    add ax, 0xe38                    ; 0x5f73
    push ax                          ; 0x5f76
    call ds_dispatch_fa90            ; 0x5f77
    pop cx                           ; 0x5f7a
    mov word [bp - 0x0004], ax       ; 0x5f7b
@..local.l114:
    cmp word [bp - 0x0004], byte 0x0a ; 0x5f7e
    jge short @..local.l115          ; 0x5f82
    mov ax, 0x14                     ; 0x5f84
    imul word [bp - 0x0008]          ; 0x5f87
    add ax, word [bp - 0x0004]       ; 0x5f8a
    mov bx, ax                       ; 0x5f8d
    mov byte [bx + 0xe38], 0x20      ; 0x5f8f
    inc word [bp - 0x0004]           ; 0x5f94
    jmp short @..local.l114          ; 0x5f97
@..local.l115:
    lea ax, word [bp - 0x02a0]       ; 0x5f99
    push ax                          ; 0x5f9d
    mov al, byte [bp - 0x0018]       ; 0x5f9e
    sub ah, ah                       ; 0x5fa1
    add ax, 0x8c                     ; 0x5fa3
    push ax                          ; 0x5fa6
    call ds_dispatch_b53b            ; 0x5fa7
    add sp, byte 4                   ; 0x5faa
    mov al, byte [bp - 0x02a0]       ; 0x5fad
    push ax                          ; 0x5fb1
    mov ax, 0x14                     ; 0x5fb2
    imul word [bp - 0x0008]          ; 0x5fb5
    mov bx, ax                       ; 0x5fb8
    pop ax                           ; 0x5fba
    mov byte [bx + 0xe42], al        ; 0x5fbb
    mov byte [bx + 0xe43], 0x2d      ; 0x5fbf
    lea ax, word [bp - 0x02a0]       ; 0x5fc4
    push ax                          ; 0x5fc8
    mov al, byte [bp - 0x0017]       ; 0x5fc9
    sub ah, ah                       ; 0x5fcc
    add ax, strict word 0x78         ; 0x5fce
    push ax                          ; 0x5fd1
    call ds_dispatch_b53b            ; 0x5fd2
    add sp, byte 4                   ; 0x5fd5
    mov word [bp - 0x0004], 0        ; 0x5fd8
@..local.l116:
    mov bx, word [bp - 0x0004]       ; 0x5fdd
    add bx, bp                       ; 0x5fe0
    mov al, byte [bx - 0x02a0]       ; 0x5fe2
    push ax                          ; 0x5fe6
    mov ax, 0x14                     ; 0x5fe7
    imul word [bp - 0x0008]          ; 0x5fea
    mov cx, ax                       ; 0x5fed
    add ax, word [bp - 0x0004]       ; 0x5fef
    mov bx, ax                       ; 0x5ff2
    pop ax                           ; 0x5ff4
    mov byte [bx + 0xe44], al        ; 0x5ff5
    inc word [bp - 0x0004]           ; 0x5ff9
    mov ax, word [bp - 0x0004]       ; 0x5ffc
    cmp ax, strict word 3            ; 0x5fff
    jl short @..local.l116           ; 0x6002
    mov ax, 0x14                     ; 0x6004
    imul word [bp - 0x0008]          ; 0x6007
    mov bx, ax                       ; 0x600a
    mov byte [bx + 0xe47], 0         ; 0x600c
    mov ax, word [bp - 0x0002]       ; 0x6011
    mov cx, word [bp - 0x0008]       ; 0x6014
    shl cx, 1                        ; 0x6017
    mov bx, cx                       ; 0x6019
    add bx, bp                       ; 0x601b
    mov word [bx - 0x02c0], ax       ; 0x601d
    inc word [bp - 0x0008]           ; 0x6021
@..local.l117:
    inc word [bp - 0x0002]           ; 0x6024
@..local.l118:
    mov ax, word [bp - 0x0002]       ; 0x6027
    cmp ax, word [bss_9070]          ; 0x602a
    jge short @..local.l119          ; 0x602e
    jmp near @..local.l112           ; 0x6030
@..local.l119:
    cmp word [bp - 0x0008], byte 0   ; 0x6033
    jle short @..local.l120          ; 0x6037
    push word [bp - 0x0008]          ; 0x6039
    mov ax, 1                        ; 0x603c
    push ax                          ; 0x603f
    push ax                          ; 0x6040
    mov ax, 0                        ; 0x6041
    push ax                          ; 0x6044
    push word [bp + 0x4]             ; 0x6045
    call api_idx_0038                ; 0x6048
    add sp, byte 0x0a                ; 0x604b
    cmp ax, strict word 1            ; 0x604e
    jne short @..local.l120          ; 0x6051
    mov ax, word [bss_904e]          ; 0x6053
    mov word [bp - 0x0006], ax       ; 0x6056
    cmp ax, strict word 0xffff       ; 0x6059
    je short @..local.l120           ; 0x605c
    shl ax, 1                        ; 0x605e
    mov bx, ax                       ; 0x6060
    add bx, bp                       ; 0x6062
    mov ax, word [bx - 0x02c0]       ; 0x6064
    ret                              ; 0x6068
@..local.l120:
    mov ax, 0xffff                   ; 0x6069
    ret                              ; 0x606c
loc_606d:
    mov ax, 0xfdb2                   ; 0x606d
    call ds_dispatch_f40b            ; 0x6070
@..local.l121:
    cmp word [bss_69c8], byte 6      ; 0x6073
    jl short @..local.l122           ; 0x6078
    jmp near @..local.l130           ; 0x607a
@..local.l122:
    mov ax, 0x4b0                    ; 0x607d
    push ax                          ; 0x6080
    call loc_5f28                    ; 0x6081
    pop cx                           ; 0x6084
    mov word [bp - 0x0002], ax       ; 0x6085
    cmp ax, strict word 0xffff       ; 0x6088
    jne short @..local.l123          ; 0x608b
    jmp near @..local.l130           ; 0x608d
@..local.l123:
    mov ax, 0                        ; 0x6090
    push ax                          ; 0x6093
    push word [bp - 0x0002]          ; 0x6094
    lea ax, word [bp - 0x024e]       ; 0x6097
    push ax                          ; 0x609b
    call api_idx_0002                ; 0x609c
    add sp, byte 6                   ; 0x609f
    mov bx, word [bp - 0x0002]       ; 0x60a2
    mov byte [bx - 0x6f8a], 2        ; 0x60a5
    mov si, word [bss_69c8]          ; 0x60aa
    shl si, 1                        ; 0x60ae
    mov word [si - 0x750e], bx       ; 0x60b0
    push word [bss_69c8]             ; 0x60b4
    call api_idx_0006                ; 0x60b8
    pop cx                           ; 0x60bb
    mov cx, word [bss_69c8]          ; 0x60bc
    shl cx, 1                        ; 0x60c0
    mov bx, cx                       ; 0x60c2
    mov word [bx + 0x69bc], ax       ; 0x60c4
    push ax                          ; 0x60c8
    mov al, byte [bp - 0x0018]       ; 0x60c9
    sub ah, ah                       ; 0x60cc
    push ax                          ; 0x60ce
    call api_idx_0016                ; 0x60cf
    add sp, byte 4                   ; 0x60d2
    lea si, word [bp - 0x024e]       ; 0x60d5
    mov ax, 0x248                    ; 0x60d9
    imul word [bss_69c8]             ; 0x60dc
    mov di, ax                       ; 0x60e0
    add ax, 0x5bf4                   ; 0x60e2
    mov di, ax                       ; 0x60e5
    mov cx, ds                       ; 0x60e7
    mov es, cx                       ; 0x60e9
    mov cx, 0x124                    ; 0x60eb
    rep movsw                        ; 0x60ee
    mov ax, 0                        ; 0x60f0
    push ax                          ; 0x60f3
    push word [bss_69c8]             ; 0x60f4
    call ds_dispatch_cb3a            ; 0x60f8
    add sp, byte 4                   ; 0x60fb
    mov ax, word [bss_69c8]          ; 0x60fe
    mov cx, 2                        ; 0x6101
    cwd                              ; 0x6104
    idiv cx                          ; 0x6105
    mov ax, dx                       ; 0x6107
    mov cx, 0xfc                     ; 0x6109
    imul cx                          ; 0x610c
    add ax, strict word 5            ; 0x610e
    mov word [bp - 0x0004], ax       ; 0x6111
    mov ax, word [bss_69c8]          ; 0x6114
    mov cx, 2                        ; 0x6117
    cwd                              ; 0x611a
    idiv cx                          ; 0x611b
    mov cx, 0x2d                     ; 0x611d
    imul cx                          ; 0x6120
    add ax, strict word 0x12         ; 0x6122
    mov word [bp - 0x0006], ax       ; 0x6125
    mov ax, word [bss_69c8]          ; 0x6128
    jmp near @..local.l127           ; 0x612b
@..local.l124:
    mov ax, 0x8d                     ; 0x612e
    push ax                          ; 0x6131
    mov ax, word [bp - 0x0004]       ; 0x6132
    add ax, strict word 0x3b         ; 0x6135
    push ax                          ; 0x6138
    push word [bp - 0x0006]          ; 0x6139
    push word [bp - 0x0004]          ; 0x613c
    call ds_dispatch_e8da            ; 0x613f
    add sp, byte 8                   ; 0x6142
    mov ax, word [bp - 0x0006]       ; 0x6145
    add ax, strict word 0x2b         ; 0x6148
    push ax                          ; 0x614b
    mov ax, 0x35                     ; 0x614c
    push ax                          ; 0x614f
    push word [bp - 0x0006]          ; 0x6150
    push word [bp - 0x0004]          ; 0x6153
    call ds_dispatch_e8da            ; 0x6156
    add sp, byte 8                   ; 0x6159
    jmp short @..local.l129          ; 0x615c
@..local.l125:
    mov ax, 0x8d                     ; 0x615e
    push ax                          ; 0x6161
    mov ax, word [bp - 0x0004]       ; 0x6162
    add ax, strict word 0x3b         ; 0x6165
    push ax                          ; 0x6168
    push word [bp - 0x0006]          ; 0x6169
    push word [bp - 0x0004]          ; 0x616c
    call ds_dispatch_e8da            ; 0x616f
    add sp, byte 8                   ; 0x6172
    mov ax, word [bp - 0x0006]       ; 0x6175
    add ax, strict word 0x2b         ; 0x6178
    push ax                          ; 0x617b
    mov ax, word [bp - 0x0004]       ; 0x617c
    add ax, strict word 0x3b         ; 0x617f
    push ax                          ; 0x6182
    push word [bp - 0x0006]          ; 0x6183
    mov ax, 0x10a                    ; 0x6186
    push ax                          ; 0x6189
    call ds_dispatch_e8da            ; 0x618a
    add sp, byte 8                   ; 0x618d
    jmp short @..local.l129          ; 0x6190
@..local.l126:
    mov ax, word [bp - 0x0006]       ; 0x6192
    add ax, strict word 0x2b         ; 0x6195
    push ax                          ; 0x6198
    mov ax, word [bp - 0x0004]       ; 0x6199
    add ax, strict word 0x3b         ; 0x619c
    push ax                          ; 0x619f
    push word [bp - 0x0006]          ; 0x61a0
    push word [bp - 0x0004]          ; 0x61a3
    call ds_dispatch_e8da            ; 0x61a6
    add sp, byte 8                   ; 0x61a9
    jmp short @..local.l129          ; 0x61ac
@..local.l127:
    cmp ax, strict word 4            ; 0x61ae
    jne short @..local.l128          ; 0x61b1
    jmp near @..local.l124           ; 0x61b3
@..local.l128:
    cmp ax, strict word 5            ; 0x61b6
    je short @..local.l125           ; 0x61b9
    jmp short @..local.l126          ; 0x61bb
@..local.l129:
    inc word [bss_69c8]              ; 0x61bd
    jmp near @..local.l121           ; 0x61c1
@..local.l130:
    mov ax, 0xc6                     ; 0x61c4
    push ax                          ; 0x61c7
    mov ax, 0x109                    ; 0x61c8
    push ax                          ; 0x61cb
    mov ax, 0x8e                     ; 0x61cc
    push ax                          ; 0x61cf
    mov ax, 0x36                     ; 0x61d0
    push ax                          ; 0x61d3
    call ds_dispatch_e8da            ; 0x61d4
    add sp, byte 8                   ; 0x61d7
    ret                              ; 0x61da
