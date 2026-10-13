; auto-generated
api_idx_0062:
    mov ax, 0xff9e                   ; 0x4b95
    call aztec_csav                  ; 0x4b98
    mov word [bp - 0x0002], 0        ; 0x4b9b
    mov word [bp - 0x0062], 0        ; 0x4ba0
@..api_idx_0062.l1:
    lea ax, word [bp - 0x005e]       ; 0x4ba5
    push ax                          ; 0x4ba8
    mov ax, word [bp + 0x4]          ; 0x4ba9
    add ax, word [bp - 0x0002]       ; 0x4bac
    push ax                          ; 0x4baf
    call ds_app_mem_0782             ; 0x4bb0
    add sp, byte 4                   ; 0x4bb3
    cmp word [bss_5216], byte 0      ; 0x4bb6
    jne short @..api_idx_0062.l3     ; 0x4bbb
    lea ax, word [bp - 0x005e]       ; 0x4bbd
    push ax                          ; 0x4bc0
    call aztec_strlen                ; 0x4bc1
    pop cx                           ; 0x4bc4
    dec ax                           ; 0x4bc5
    cmp ax, word [bp - 0x0062]       ; 0x4bc6
    jle short @..api_idx_0062.l2     ; 0x4bc9
    lea ax, word [bp - 0x005e]       ; 0x4bcb
    push ax                          ; 0x4bce
    call aztec_strlen                ; 0x4bcf
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
    call ds_app_file_14ca            ; 0x4c4b
    add sp, byte 0x0a                ; 0x4c4e
    mov word [bp - 0x0060], ax       ; 0x4c51
    push word [bp - 0x000e]          ; 0x4c54
    push word [bp - 0x000c]          ; 0x4c57
    push word [bp - 0x000a]          ; 0x4c5a
    push word [bp - 0x0008]          ; 0x4c5d
    call ds_app_0ee1                 ; 0x4c60
    add sp, byte 8                   ; 0x4c63
    mov word [bp - 0x0002], 0        ; 0x4c66
@..api_idx_0062.l4:
    lea ax, word [bp - 0x005e]       ; 0x4c6b
    push ax                          ; 0x4c6e
    mov ax, word [bp + 0x4]          ; 0x4c6f
    add ax, word [bp - 0x0002]       ; 0x4c72
    push ax                          ; 0x4c75
    call ds_app_mem_0782             ; 0x4c76
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
    call aztec_strlen                ; 0x4c94
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
    call ds_loc_3a50                 ; 0x4cae
    add sp, byte 4                   ; 0x4cb1
    mov ax, 0                        ; 0x4cb4
    push ax                          ; 0x4cb7
    mov al, byte [bp - 0x005e]       ; 0x4cb8
    sub ah, ah                       ; 0x4cbb
    push ax                          ; 0x4cbd
    call ds_loc_3a6a                 ; 0x4cbe
    add sp, byte 4                   ; 0x4cc1
    mov ax, 0                        ; 0x4cc4
    push ax                          ; 0x4cc7
    lea ax, word [bp - 0x005d]       ; 0x4cc8
    push ax                          ; 0x4ccb
    call ds_string_loc_3a95          ; 0x4ccc
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
    call ds_loc_3b21                 ; 0x4cf0
    add sp, byte 8                   ; 0x4cf3
    mov ax, word [bss_905a]          ; 0x4cf6
    shl ax, 1                        ; 0x4cf9
    push ax                          ; 0x4cfb
    call ds_app_09a5                 ; 0x4cfc
    pop cx                           ; 0x4cff
    mov ax, 1                        ; 0x4d00
    push ax                          ; 0x4d03
    push word [bp - 0x0060]          ; 0x4d04
    call ds_app_file_16a0            ; 0x4d07
    add sp, byte 4                   ; 0x4d0a
    ret                              ; 0x4d0d
loc_4d0e:
    mov ax, 0xfc4a                   ; 0x4d0e
    call aztec_csav                  ; 0x4d11
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
    call ds_app_23a8                 ; 0x4d2d
    add sp, byte 4                   ; 0x4d30
    push ax                          ; 0x4d33
    call aztec_open                  ; 0x4d34
    add sp, byte 4                   ; 0x4d37
    mov word [bp - 0x0006], ax       ; 0x4d3a
    cmp ax, strict word 0xffff       ; 0x4d3d
    jne short @..loc_4d0e.l1         ; 0x4d40
    mov ax, 0x1a                     ; 0x4d42
    push ax                          ; 0x4d45
    call ds_app_03b8                 ; 0x4d46
    pop cx                           ; 0x4d49
@..loc_4d0e.l1:
    mov ax, 0x300                    ; 0x4d4a
    push ax                          ; 0x4d4d
    mov ax, 0x9c94                   ; 0x4d4e
    push ax                          ; 0x4d51
    push word [bp - 0x0006]          ; 0x4d52
    call ds_leaf_loc_4fb6            ; 0x4d55
    add sp, byte 6                   ; 0x4d58
    push word [bp - 0x0006]          ; 0x4d5b
    call aztec_close                 ; 0x4d5e
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
    call ds_app_file_14ca            ; 0x4d9c
    add sp, byte 0x0a                ; 0x4d9f
    mov word [bp - 0x006a], ax       ; 0x4da2
    push word [bp - 0x000e]          ; 0x4da5
    push word [bp - 0x000c]          ; 0x4da8
    push word [bp - 0x000a]          ; 0x4dab
    push word [bp - 0x0008]          ; 0x4dae
    call ds_app_0ee1                 ; 0x4db1
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
    call ds_app_052e                 ; 0x4dfe
    add sp, byte 6                   ; 0x4e01
    mov ax, 0                        ; 0x4e04
    push ax                          ; 0x4e07
    mov ax, 0x2e                     ; 0x4e08
    push ax                          ; 0x4e0b
    call ds_loc_3a77                 ; 0x4e0c
    add sp, byte 4                   ; 0x4e0f
    mov ax, word [bss_597a]          ; 0x4e12
    mov cx, 0x64                     ; 0x4e15
    cwd                              ; 0x4e18
    idiv cx                          ; 0x4e19
    mov word [bp - 0x0002], dx       ; 0x4e1b
    cmp dx, byte 0x0a                ; 0x4e1e
    jge short @..loc_4d0e.l2         ; 0x4e21
    mov ax, 0                        ; 0x4e23
    push ax                          ; 0x4e26
    mov ax, 0x30                     ; 0x4e27
    push ax                          ; 0x4e2a
    call ds_loc_3a77                 ; 0x4e2b
    add sp, byte 4                   ; 0x4e2e
    mov ax, 0                        ; 0x4e31
    push ax                          ; 0x4e34
    mov ax, 1                        ; 0x4e35
    push ax                          ; 0x4e38
    push word [bp - 0x0002]          ; 0x4e39
    call ds_app_052e                 ; 0x4e3c
    add sp, byte 6                   ; 0x4e3f
    jmp short @..loc_4d0e.l3         ; 0x4e42
@..loc_4d0e.l2:
    mov ax, 0                        ; 0x4e44
    push ax                          ; 0x4e47
    mov ax, 2                        ; 0x4e48
    push ax                          ; 0x4e4b
    push word [bp - 0x0002]          ; 0x4e4c
    call ds_app_052e                 ; 0x4e4f
    add sp, byte 6                   ; 0x4e52
@..loc_4d0e.l3:
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
    call ds_app_mem_0782             ; 0x4efe
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
    call ds_app_string_1308          ; 0x4f1f
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
    call ds_app_mem_0782             ; 0x4fc9
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
    call ds_app_string_1308          ; 0x4fea
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
    call ds_app_mem_0782             ; 0x5064
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
    call ds_app_string_1308          ; 0x5085
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
    call ds_app_0fdf                 ; 0x5147
    add sp, byte 8                   ; 0x514a
    lea ax, word [bp - 0x0068]       ; 0x514d
    push ax                          ; 0x5150
    mov ax, 0x910                    ; 0x5151
    push ax                          ; 0x5154
    call ds_app_mem_0782             ; 0x5155
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
    call ds_app_string_1308          ; 0x5176
    add sp, byte 0x0c                ; 0x5179
    lea ax, word [bp - 0x0068]       ; 0x517c
    push ax                          ; 0x517f
    mov ax, 0x911                    ; 0x5180
    push ax                          ; 0x5183
    call ds_app_mem_0782             ; 0x5184
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
    call ds_app_string_1308          ; 0x51a5
    add sp, byte 0x0c                ; 0x51a8
    mov word [bp - 0x0002], 0        ; 0x51ab
@..loc_4d0e.l4:
    push word [bp - 0x000a]          ; 0x51b0
    push word [bp - 0x0008]          ; 0x51b3
    push word [bp - 0x0002]          ; 0x51b6
    call api_idx_0052                ; 0x51b9
    add sp, byte 6                   ; 0x51bc
    inc word [bp - 0x0002]           ; 0x51bf
    mov ax, word [bp - 0x0002]       ; 0x51c2
    cmp ax, strict word 0x11         ; 0x51c5
    jl short @..loc_4d0e.l4          ; 0x51c8
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
    call ds_app_0ced                 ; 0x51ef
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
    call ds_app_0ced                 ; 0x521a
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
    call ds_app_0ced                 ; 0x5245
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
    call ds_app_0ced                 ; 0x5270
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
    call ds_app_0ced                 ; 0x529b
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
    call ds_app_0ced                 ; 0x52c6
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
    call ds_app_0ced                 ; 0x52f1
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
    call ds_app_0ced                 ; 0x531c
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
    call ds_app_0ced                 ; 0x5347
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
    call ds_app_0ced                 ; 0x5372
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
    call ds_app_0ced                 ; 0x539d
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
    call ds_app_0ced                 ; 0x53c8
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
    call ds_app_0ced                 ; 0x53f3
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
    call ds_app_0ced                 ; 0x541e
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
    call ds_app_0ced                 ; 0x5449
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
    call ds_app_0ced                 ; 0x5474
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
    call ds_app_0ced                 ; 0x549f
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
    call ds_app_0ced                 ; 0x54ca
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
    call ds_app_0ced                 ; 0x54f5
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
    call ds_app_0ced                 ; 0x5520
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
    call ds_app_0ced                 ; 0x554b
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
    call ds_app_0ced                 ; 0x5576
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
    call ds_app_0ced                 ; 0x55a1
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
    call ds_app_0ced                 ; 0x55cc
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
    call ds_app_0ced                 ; 0x55fa
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
    call ds_app_0ced                 ; 0x5610
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
    call ds_loc_3b21                 ; 0x562a
    add sp, byte 8                   ; 0x562d
    mov word [bp - 0x0018], 1        ; 0x5630
    mov word [bp - 0x0016], 0        ; 0x5635
loc_563a:
    cmp word [bss_0e32], byte 0      ; 0x563a
    je short loc_5650                ; 0x563f
    mov ax, 0x59fe                   ; 0x5641
    push ax                          ; 0x5644
    call ds_app_io_0b54              ; 0x5645
    pop cx                           ; 0x5648
    dec ax                           ; 0x5649
    mov word [bp - 0x0014], ax       ; 0x564a
    jmp near loc_58d6                ; 0x564d
loc_5650:
    mov word [bss_5b3e], 0           ; 0x5650
    push word [bp - 0x000a]          ; 0x5656
    push word [bp - 0x0008]          ; 0x5659
    push word [bp - 0x0016]          ; 0x565c
    call api_idx_0052_2              ; 0x565f
    add sp, byte 6                   ; 0x5662
    mov ax, 1                        ; 0x5665
    push ax                          ; 0x5668
    call dos_con_in_noecho_2         ; 0x5669
    pop cx                           ; 0x566c
    sub ah, ah                       ; 0x566d
    mov word [bp - 0x0004], ax       ; 0x566f
    jmp near loc_5891                ; 0x5672
loc_5675:
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
    jne short loc_569b               ; 0x5696
    dec word [bp - 0x0016]           ; 0x5698
loc_569b:
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
    call ds_loc_3b21                 ; 0x56af
    add sp, byte 8                   ; 0x56b2
    jmp near loc_58d6                ; 0x56b5
loc_56b8:
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
    jne short loc_56dc               ; 0x56d7
    inc word [bp - 0x0016]           ; 0x56d9
loc_56dc:
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
    call ds_loc_3b21                 ; 0x56f0
    add sp, byte 8                   ; 0x56f3
    jmp near loc_58d6                ; 0x56f6
loc_56f9:
    mov word [bp - 0x0014], 0xffff   ; 0x56f9
    mov ax, word [bp - 0x0016]       ; 0x56fe
    jmp short loc_5777               ; 0x5701
