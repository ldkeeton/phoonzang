api_idx_0032:
    mov ax, 0xffce                   ; 0x3a7a
    call ds_dispatch_f40b            ; 0x3a7d
    mov ax, word [bp + 0x6]          ; 0x3a80
    shl ax, 1                        ; 0x3a83
    mov bx, ax                       ; 0x3a85
    mov ax, word [bx - 0x6a10]       ; 0x3a87
    mov word [bp - 0x000c], ax       ; 0x3a8b
    mov word [bp - 0x000a], 0        ; 0x3a8e
    mov word [bp - 0x0028], 0xffff   ; 0x3a93
    mov ax, 0xc6                     ; 0x3a98
    push ax                          ; 0x3a9b
    mov ax, 0x13c                    ; 0x3a9c
    push ax                          ; 0x3a9f
    mov ax, 0xbb                     ; 0x3aa0
    push ax                          ; 0x3aa3
    mov ax, 3                        ; 0x3aa4
    push ax                          ; 0x3aa7
    call ds_dispatch_e928            ; 0x3aa8
    add sp, byte 8                   ; 0x3aab
    mov word [bp - 0x002c], dx       ; 0x3aae
    mov word [bp - 0x002e], ax       ; 0x3ab1
@..api_idx_0032.l1:
    push word [bp + 0xa]             ; 0x3ab4
    push word [bp + 0x8]             ; 0x3ab7
    push word [bp + 0x6]             ; 0x3aba
    push word [bp + 0x4]             ; 0x3abd
    call api_idx_0002_5              ; 0x3ac0
    add sp, byte 8                   ; 0x3ac3
    push word [bp - 0x000c]          ; 0x3ac6
    push word [bp + 0x6]             ; 0x3ac9
    call api_idx_002e                ; 0x3acc
    add sp, byte 4                   ; 0x3acf
    mov ax, 0                        ; 0x3ad2
    push ax                          ; 0x3ad5
    mov ax, 1                        ; 0x3ad6
    push ax                          ; 0x3ad9
    call ds_dispatch_e823            ; 0x3ada
    add sp, byte 4                   ; 0x3add
    mov ax, 6                        ; 0x3ae0
    imul word [bp - 0x000a]          ; 0x3ae3
    add ax, strict word 0x72         ; 0x3ae6
    push ax                          ; 0x3ae9
    mov ax, 0x7f                     ; 0x3aea
    push ax                          ; 0x3aed
    call ds_dispatch_e809            ; 0x3aee
    add sp, byte 4                   ; 0x3af1
    mov ax, 0                        ; 0x3af4
    push ax                          ; 0x3af7
    mov ax, 5                        ; 0x3af8
    push ax                          ; 0x3afb
    call ds_dispatch_e830            ; 0x3afc
    add sp, byte 4                   ; 0x3aff
    mov ax, 6                        ; 0x3b02
    imul word [bp - 0x000a]          ; 0x3b05
    add ax, strict word 0x72         ; 0x3b08
    push ax                          ; 0x3b0b
    mov ax, 0x97                     ; 0x3b0c
    push ax                          ; 0x3b0f
    call ds_dispatch_e809            ; 0x3b10
    add sp, byte 4                   ; 0x3b13
    mov ax, 0                        ; 0x3b16
    push ax                          ; 0x3b19
    mov ax, 6                        ; 0x3b1a
    push ax                          ; 0x3b1d
    call ds_dispatch_e830            ; 0x3b1e
    add sp, byte 4                   ; 0x3b21
    mov word [bp - 0x0002], 0        ; 0x3b24
    jmp near @..api_idx_0032.l7      ; 0x3b29
@..api_idx_0032.l2:
    mov ax, word [bp - 0x0002]       ; 0x3b2c
    cmp ax, word [bp - 0x000a]       ; 0x3b2f
    jne short @..api_idx_0032.l3     ; 0x3b32
    mov ax, 0                        ; 0x3b34
    push ax                          ; 0x3b37
    mov ax, 0x2d                     ; 0x3b38
    push ax                          ; 0x3b3b
    mov ax, 6                        ; 0x3b3c
    imul word [bp - 0x000a]          ; 0x3b3f
    add ax, strict word 0x76         ; 0x3b42
    push ax                          ; 0x3b45
    mov ax, 0x84                     ; 0x3b46
    push ax                          ; 0x3b49
    mov ax, 6                        ; 0x3b4a
    imul word [bp - 0x000a]          ; 0x3b4d
    add ax, strict word 0x71         ; 0x3b50
    push ax                          ; 0x3b53
    mov ax, 0x7f                     ; 0x3b54
    push ax                          ; 0x3b57
    push word [bp - 0x0002]          ; 0x3b58
    call ds_dispatch_baa6            ; 0x3b5b
    add sp, byte 0x0e                ; 0x3b5e
    mov ax, 0x3d                     ; 0x3b61
    push ax                          ; 0x3b64
    mov ax, 0x2b                     ; 0x3b65
    push ax                          ; 0x3b68
    mov ax, 6                        ; 0x3b69
    imul word [bp - 0x000a]          ; 0x3b6c
    add ax, strict word 0x76         ; 0x3b6f
    push ax                          ; 0x3b72
    mov ax, 0x9c                     ; 0x3b73
    push ax                          ; 0x3b76
    mov ax, 6                        ; 0x3b77
    imul word [bp - 0x000a]          ; 0x3b7a
    add ax, strict word 0x71         ; 0x3b7d
    push ax                          ; 0x3b80
    mov ax, 0x97                     ; 0x3b81
    push ax                          ; 0x3b84
    push word [bp + 0x8]             ; 0x3b85
    call ds_dispatch_baa6            ; 0x3b88
    add sp, byte 0x0e                ; 0x3b8b
    jmp short @..api_idx_0032.l6     ; 0x3b8e
@..api_idx_0032.l3:
    mov ax, 0                        ; 0x3b90
    push ax                          ; 0x3b93
    mov ax, word [bp - 0x000a]       ; 0x3b94
    inc ax                           ; 0x3b97
    cwd                              ; 0x3b98
    idiv word [bp + 0x8]             ; 0x3b99
    mov ax, dx                       ; 0x3b9c
    cmp ax, word [bp - 0x0002]       ; 0x3b9e
    jne short @..api_idx_0032.l4     ; 0x3ba1
    mov al, 0x20                     ; 0x3ba3
    jmp short @..api_idx_0032.l5     ; 0x3ba5
@..api_idx_0032.l4:
    mov al, 0                        ; 0x3ba7
@..api_idx_0032.l5:
    cbw                              ; 0x3ba9
    push ax                          ; 0x3baa
    mov ax, 6                        ; 0x3bab
    imul word [bp - 0x0002]          ; 0x3bae
    add ax, strict word 0x76         ; 0x3bb1
    push ax                          ; 0x3bb4
    mov ax, 0x9c                     ; 0x3bb5
    push ax                          ; 0x3bb8
    mov ax, 6                        ; 0x3bb9
    imul word [bp - 0x0002]          ; 0x3bbc
    add ax, strict word 0x71         ; 0x3bbf
    push ax                          ; 0x3bc2
    mov ax, 6                        ; 0x3bc3
    push ax                          ; 0x3bc6
    push word [bp - 0x0002]          ; 0x3bc7
    call ds_dispatch_baa6            ; 0x3bca
    add sp, byte 0x0e                ; 0x3bcd
@..api_idx_0032.l6:
    inc word [bp - 0x0002]           ; 0x3bd0
@..api_idx_0032.l7:
    mov ax, word [bp - 0x0002]       ; 0x3bd3
    cmp ax, word [bp + 0x8]          ; 0x3bd6
    jge short @..api_idx_0032.l8     ; 0x3bd9
    jmp near @..api_idx_0032.l2      ; 0x3bdb
@..api_idx_0032.l8:
    mov ax, 0                        ; 0x3bde
    push ax                          ; 0x3be1
    push word [bp - 0x002c]          ; 0x3be2
    push word [bp - 0x002e]          ; 0x3be5
    call ds_dispatch_e94f            ; 0x3be8
    add sp, byte 6                   ; 0x3beb
    mov ax, word [bp - 0x000c]       ; 0x3bee
    mov word [bp - 0x0004], ax       ; 0x3bf1
    mov word [bp - 0x0002], 0        ; 0x3bf4
@..api_idx_0032.l9:
    mov ax, word [bp - 0x0002]       ; 0x3bf9
    cmp ax, word [bp + 0x6]          ; 0x3bfc
    je short @..api_idx_0032.l10     ; 0x3bff
    shl ax, 1                        ; 0x3c01
    mov bx, ax                       ; 0x3c03
    mov ax, word [bx - 0x6a10]       ; 0x3c05
    add word [bp - 0x0004], ax       ; 0x3c09
@..api_idx_0032.l10:
    inc word [bp - 0x0002]           ; 0x3c0c
    mov ax, word [bp - 0x0002]       ; 0x3c0f
    cmp ax, strict word 4            ; 0x3c12
    jl short @..api_idx_0032.l9      ; 0x3c15
    mov ax, 1                        ; 0x3c17
    cmp word [bp - 0x0004], byte 0   ; 0x3c1a
    jle short @..api_idx_0032.l11    ; 0x3c1e
    mov ax, 0                        ; 0x3c20
@..api_idx_0032.l11:
    mov bx, word [bp + 0xc]          ; 0x3c23
    mov word [bx + 0x8], ax          ; 0x3c26
    mov word [bp - 0x000e], 0        ; 0x3c29
    mov word [bp - 0x0002], 0        ; 0x3c2e
@..api_idx_0032.l12:
    mov ax, word [bp - 0x0002]       ; 0x3c33
    shl ax, 1                        ; 0x3c36
    mov si, ax                       ; 0x3c38
    mov bx, word [bp + 0xc]          ; 0x3c3a
    cmp word [bx + si], byte 0       ; 0x3c3d
    jne short @..api_idx_0032.l13    ; 0x3c40
    jmp near @..api_idx_0032.l16     ; 0x3c42
@..api_idx_0032.l13:
    mov ax, 0x3a                     ; 0x3c45
    imul word [bp - 0x000e]          ; 0x3c48
    add ax, strict word 4            ; 0x3c4b
    mov word [bp - 0x0006], ax       ; 0x3c4e
    mov ax, 0                        ; 0x3c51
    push ax                          ; 0x3c54
    mov ax, 0xc4                     ; 0x3c55
    push ax                          ; 0x3c58
    mov ax, word [bp - 0x0006]       ; 0x3c59
    add ax, strict word 0x36         ; 0x3c5c
    push ax                          ; 0x3c5f
    mov ax, 0xbc                     ; 0x3c60
    push ax                          ; 0x3c63
    push word [bp - 0x0006]          ; 0x3c64
    call ds_dispatch_bce3            ; 0x3c67
    add sp, byte 0x0a                ; 0x3c6a
    mov ax, 0xc0                     ; 0x3c6d
    push ax                          ; 0x3c70
    mov ax, 1                        ; 0x3c71
    mov cx, word [bp - 0x0002]       ; 0x3c74
    cmp cx, word [bp + 0x6]          ; 0x3c77
    jne short @..api_idx_0032.l14    ; 0x3c7a
    mov ax, 0x1a                     ; 0x3c7c
@..api_idx_0032.l14:
    push ax                          ; 0x3c7f
    call ds_dispatch_e823            ; 0x3c80
    add sp, byte 4                   ; 0x3c83
    mov ax, 0xbe                     ; 0x3c86
    push ax                          ; 0x3c89
    mov ax, 0x14                     ; 0x3c8a
    imul word [bp - 0x0002]          ; 0x3c8d
    add ax, 0x95f8                   ; 0x3c90
    push ax                          ; 0x3c93
    call ds_dispatch_fa90            ; 0x3c94
    pop cx                           ; 0x3c97
    mov cx, ax                       ; 0x3c98
    mov ax, 9                        ; 0x3c9a
    sub ax, cx                       ; 0x3c9d
    mov cx, 6                        ; 0x3c9f
    imul cx                          ; 0x3ca2
    mov cx, data_0002                ; 0x3ca4
    cwd                              ; 0x3ca7
    idiv cx                          ; 0x3ca8
    add ax, word [bp - 0x0006]       ; 0x3caa
    inc ax                           ; 0x3cad
    push ax                          ; 0x3cae
    call ds_dispatch_e809            ; 0x3caf
    add sp, byte 4                   ; 0x3cb2
    mov ax, 0                        ; 0x3cb5
    push ax                          ; 0x3cb8
    mov ax, 0x14                     ; 0x3cb9
    imul word [bp - 0x0002]          ; 0x3cbc
    add ax, 0x95f8                   ; 0x3cbf
    push ax                          ; 0x3cc2
    call ds_dispatch_e84e            ; 0x3cc3
    add sp, byte 4                   ; 0x3cc6
    mov ax, 0                        ; 0x3cc9
    push ax                          ; 0x3ccc
    push ax                          ; 0x3ccd
    mov ax, 0xc4                     ; 0x3cce
    push ax                          ; 0x3cd1
    mov ax, word [bp - 0x0006]       ; 0x3cd2
    add ax, strict word 0x36         ; 0x3cd5
    push ax                          ; 0x3cd8
    mov ax, 0xbc                     ; 0x3cd9
    push ax                          ; 0x3cdc
    push word [bp - 0x0006]          ; 0x3cdd
    mov ax, word [bp + 0x8]          ; 0x3ce0
    add ax, word [bp - 0x000e]       ; 0x3ce3
    inc ax                           ; 0x3ce6
    push ax                          ; 0x3ce7
    call ds_dispatch_baa6            ; 0x3ce8
    add sp, byte 0x0e                ; 0x3ceb
    mov ax, word [bp - 0x0002]       ; 0x3cee
    mov cx, word [bp - 0x000e]       ; 0x3cf1
    shl cx, 1                        ; 0x3cf4
    mov bx, cx                       ; 0x3cf6
    add bx, bp                       ; 0x3cf8
    mov word [bx - 0x0026], ax       ; 0x3cfa
    cmp ax, word [bp + 0x6]          ; 0x3cfd
    jne short @..api_idx_0032.l15    ; 0x3d00
    mov ax, word [bp - 0x000e]       ; 0x3d02
    mov word [bp - 0x0032], ax       ; 0x3d05
    cmp word [data_0e32], byte 0     ; 0x3d08
    jne short @..api_idx_0032.l15    ; 0x3d0d
    mov ax, 0x16                     ; 0x3d0f
    push ax                          ; 0x3d12
    mov ax, 0xc4                     ; 0x3d13
    push ax                          ; 0x3d16
    mov ax, word [bp - 0x0006]       ; 0x3d17
    add ax, strict word 0x36         ; 0x3d1a
    push ax                          ; 0x3d1d
    mov ax, 0xbc                     ; 0x3d1e
    push ax                          ; 0x3d21
    push word [bp - 0x0006]          ; 0x3d22
    call loc_0dc0                    ; 0x3d25
    add sp, byte 0x0a                ; 0x3d28
@..api_idx_0032.l15:
    inc word [bp - 0x000e]           ; 0x3d2b
@..api_idx_0032.l16:
    inc word [bp - 0x0002]           ; 0x3d2e
    mov ax, word [bp - 0x0002]       ; 0x3d31
    cmp ax, strict word 4            ; 0x3d34
    jg short @..api_idx_0032.l17     ; 0x3d37
    jmp near @..api_idx_0032.l12     ; 0x3d39
@..api_idx_0032.l17:
    mov ax, 0                        ; 0x3d3c
    push ax                          ; 0x3d3f
    push ax                          ; 0x3d40
    push ax                          ; 0x3d41
    push ax                          ; 0x3d42
    push ax                          ; 0x3d43
    mov ax, 0xffff                   ; 0x3d44
    push ax                          ; 0x3d47
    mov ax, word [bp + 0x8]          ; 0x3d48
    add ax, word [bp - 0x000e]       ; 0x3d4b
    inc ax                           ; 0x3d4e
    push ax                          ; 0x3d4f
    call ds_dispatch_baa6            ; 0x3d50
    add sp, byte 0x0e                ; 0x3d53
    mov ax, 0xc6                     ; 0x3d56
    push ax                          ; 0x3d59
    mov ax, 0x13c                    ; 0x3d5a
    push ax                          ; 0x3d5d
    mov ax, 0x70                     ; 0x3d5e
    push ax                          ; 0x3d61
    mov ax, 1                        ; 0x3d62
    push ax                          ; 0x3d65
    call ds_dispatch_e8da            ; 0x3d66
    add sp, byte 8                   ; 0x3d69
    cmp word [data_0e32], byte 0     ; 0x3d6c
    je short @..api_idx_0032.l19     ; 0x3d71
@..api_idx_0032.l18:
    mov ax, 0x59fe                   ; 0x3d73
    push ax                          ; 0x3d76
    call ds_dispatch_b90d            ; 0x3d77
    pop cx                           ; 0x3d7a
    dec ax                           ; 0x3d7b
    mov word [bp - 0x0008], ax       ; 0x3d7c
    cmp word [data_5b3e], byte 0     ; 0x3d7f
    je short @..api_idx_0032.l18     ; 0x3d84
    jmp near @..api_idx_0032.l31     ; 0x3d86
@..api_idx_0032.l19:
    mov word [bp - 0x0008], 0xffff   ; 0x3d89
    mov ax, word [bp - 0x0032]       ; 0x3d8e
    mov word [bp - 0x0002], ax       ; 0x3d91
@..api_idx_0032.l20:
    mov ax, 0x3a                     ; 0x3d94
    imul word [bp - 0x0002]          ; 0x3d97
    add ax, strict word 4            ; 0x3d9a
    mov word [bp - 0x0006], ax       ; 0x3d9d
    mov ax, 0x16                     ; 0x3da0
    push ax                          ; 0x3da3
    mov ax, 0xc4                     ; 0x3da4
    push ax                          ; 0x3da7
    mov ax, word [bp - 0x0006]       ; 0x3da8
    add ax, strict word 0x36         ; 0x3dab
    push ax                          ; 0x3dae
    mov ax, 0xbc                     ; 0x3daf
    push ax                          ; 0x3db2
    push word [bp - 0x0006]          ; 0x3db3
    call loc_0dc0                    ; 0x3db6
    add sp, byte 0x0a                ; 0x3db9
    mov ax, 0xc7                     ; 0x3dbc
    push ax                          ; 0x3dbf
    mov ax, 0x13d                    ; 0x3dc0
    push ax                          ; 0x3dc3
    mov ax, 0xbb                     ; 0x3dc4
    push ax                          ; 0x3dc7
    mov ax, 3                        ; 0x3dc8
    push ax                          ; 0x3dcb
    call ds_dispatch_e8da            ; 0x3dcc
    add sp, byte 8                   ; 0x3dcf
    mov ax, 0                        ; 0x3dd2
    push ax                          ; 0x3dd5
    mov ax, 0xc4                     ; 0x3dd6
    push ax                          ; 0x3dd9
    mov ax, word [bp - 0x0006]       ; 0x3dda
    add ax, strict word 0x36         ; 0x3ddd
    push ax                          ; 0x3de0
    mov ax, 0xbc                     ; 0x3de1
    push ax                          ; 0x3de4
    push word [bp - 0x0006]          ; 0x3de5
    call loc_0dc0                    ; 0x3de8
    add sp, byte 0x0a                ; 0x3deb
@..api_idx_0032.l21:
    mov ax, 1                        ; 0x3dee
    push ax                          ; 0x3df1
    call ds_dispatch_ea50            ; 0x3df2
    pop cx                           ; 0x3df5
    test ax, ax                      ; 0x3df6
    jne short @..api_idx_0032.l22    ; 0x3df8
    jmp short @..api_idx_0032.l21    ; 0x3dfa
@..api_idx_0032.l22:
    mov ax, 1                        ; 0x3dfc
    push ax                          ; 0x3dff
    call ds_dispatch_eb32            ; 0x3e00
    pop cx                           ; 0x3e03
    sub ah, ah                       ; 0x3e04
    mov word [bp - 0x0030], ax       ; 0x3e06
    jmp short @..api_idx_0032.l29    ; 0x3e09
@..api_idx_0032.l23:
    mov ax, word [bp - 0x0002]       ; 0x3e0b
    add ax, word [bp - 0x000e]       ; 0x3e0e
    dec ax                           ; 0x3e11
    cwd                              ; 0x3e12
    idiv word [bp - 0x000e]          ; 0x3e13
    mov word [bp - 0x0002], dx       ; 0x3e16
    jmp short @..api_idx_0032.l30    ; 0x3e19
@..api_idx_0032.l24:
    mov ax, word [bp - 0x0002]       ; 0x3e1b
    inc ax                           ; 0x3e1e
    cwd                              ; 0x3e1f
    idiv word [bp - 0x000e]          ; 0x3e20
    mov word [bp - 0x0002], dx       ; 0x3e23
    jmp short @..api_idx_0032.l30    ; 0x3e26
@..api_idx_0032.l25:
    mov ax, word [bp + 0x8]          ; 0x3e28
    add ax, word [bp - 0x0002]       ; 0x3e2b
    inc ax                           ; 0x3e2e
    mov word [bp - 0x0008], ax       ; 0x3e2f
    jmp short @..api_idx_0032.l30    ; 0x3e32
@..api_idx_0032.l26:
    mov ax, word [bp - 0x000a]       ; 0x3e34
    mov word [bp - 0x0008], ax       ; 0x3e37
    jmp short @..api_idx_0032.l30    ; 0x3e3a
@..api_idx_0032.l27:
    mov ax, word [bp + 0x8]          ; 0x3e3c
    mov word [bp - 0x0008], ax       ; 0x3e3f
    jmp short @..api_idx_0032.l30    ; 0x3e42
@..api_idx_0032.l28:
    mov ax, word [bp - 0x000a]       ; 0x3e44
    inc ax                           ; 0x3e47
    cwd                              ; 0x3e48
    idiv word [bp + 0x8]             ; 0x3e49
    mov word [bp - 0x0008], dx       ; 0x3e4c
    jmp short @..api_idx_0032.l30    ; 0x3e4f
@..api_idx_0032.l29:
    cmp ax, strict word 8            ; 0x3e51
    je short @..api_idx_0032.l23     ; 0x3e54
    cmp ax, strict word 0xa          ; 0x3e56
    je short @..api_idx_0032.l24     ; 0x3e59
    cmp ax, strict word 0xd          ; 0x3e5b
    je short @..api_idx_0032.l25     ; 0x3e5e
    cmp ax, strict word 0x20         ; 0x3e60
    je short @..api_idx_0032.l28     ; 0x3e63
    cmp ax, strict word 0x2b         ; 0x3e65
    je short @..api_idx_0032.l27     ; 0x3e68
    cmp ax, strict word 0x2d         ; 0x3e6a
    je short @..api_idx_0032.l26     ; 0x3e6d
    cmp ax, strict word 0x3d         ; 0x3e6f
    je short @..api_idx_0032.l27     ; 0x3e72
@..api_idx_0032.l30:
    cmp word [bp - 0x0008], byte 0xff ; 0x3e74
    jne short @..api_idx_0032.l31    ; 0x3e78
    jmp near @..api_idx_0032.l20     ; 0x3e7a
@..api_idx_0032.l31:
    mov ax, word [bp - 0x0008]       ; 0x3e7d
    cmp ax, word [bp + 0x8]          ; 0x3e80
    jge short @..api_idx_0032.l32    ; 0x3e83
    cmp ax, word [bp - 0x000a]       ; 0x3e85
    je short @..api_idx_0032.l32     ; 0x3e88
    mov word [bp - 0x000a], ax       ; 0x3e8a
    jmp near @..api_idx_0032.l39     ; 0x3e8d
@..api_idx_0032.l32:
    mov ax, word [bp - 0x0008]       ; 0x3e90
    cmp ax, word [bp - 0x000a]       ; 0x3e93
    jne short @..api_idx_0032.l35    ; 0x3e96
    mov ax, 0x248                    ; 0x3e98
    imul word [bp + 0x4]             ; 0x3e9b
    mov cx, word [bp - 0x000a]       ; 0x3e9e
    shl cx, 1                        ; 0x3ea1
    mov si, cx                       ; 0x3ea3
    mov bx, word [bp + 0xa]          ; 0x3ea5
    mov cx, word [bx + si]           ; 0x3ea8
    add ax, cx                       ; 0x3eaa
    mov bx, ax                       ; 0x3eac
    mov al, byte [bx + 0x5d6c]       ; 0x3eae
    sub ah, ah                       ; 0x3eb2
    shl cx, 1                        ; 0x3eb4
    mov bx, cx                       ; 0x3eb6
    mov cx, word [bx - 0x6940]       ; 0x3eb8
    cmp ax, cx                       ; 0x3ebc
    jle short @..api_idx_0032.l33    ; 0x3ebe
    mov ax, 0x248                    ; 0x3ec0
    imul word [bp + 0x4]             ; 0x3ec3
    mov bx, word [bp + 0xa]          ; 0x3ec6
    mov cx, word [bx + si]           ; 0x3ec9
    add ax, cx                       ; 0x3ecb
    mov bx, ax                       ; 0x3ecd
    dec byte [bx + 0x5d6c]           ; 0x3ecf
    inc word [bp - 0x000c]           ; 0x3ed3
    jmp short @..api_idx_0032.l34    ; 0x3ed6
@..api_idx_0032.l33:
    mov ax, 0                        ; 0x3ed8
    push ax                          ; 0x3edb
    call ds_dispatch_b7e0            ; 0x3edc
    pop cx                           ; 0x3edf
@..api_idx_0032.l34:
    jmp short @..api_idx_0032.l39    ; 0x3ee0
@..api_idx_0032.l35:
    mov ax, word [bp - 0x0008]       ; 0x3ee2
    cmp ax, word [bp + 0x8]          ; 0x3ee5
    jne short @..api_idx_0032.l38    ; 0x3ee8
    mov ax, 0x248                    ; 0x3eea
    imul word [bp + 0x4]             ; 0x3eed
    mov cx, word [bp - 0x000a]       ; 0x3ef0
    shl cx, 1                        ; 0x3ef3
    mov si, cx                       ; 0x3ef5
    mov bx, word [bp + 0xa]          ; 0x3ef7
    mov cx, word [bx + si]           ; 0x3efa
    add ax, cx                       ; 0x3efc
    mov bx, ax                       ; 0x3efe
    cmp byte [bx + 0x5d6c], 0x64     ; 0x3f00
    jae short @..api_idx_0032.l36    ; 0x3f05
    cmp word [bp - 0x000c], byte 0   ; 0x3f07
    jle short @..api_idx_0032.l36    ; 0x3f0b
    inc byte [bx + 0x5d6c]           ; 0x3f0d
    dec word [bp - 0x000c]           ; 0x3f11
    jmp short @..api_idx_0032.l37    ; 0x3f14
@..api_idx_0032.l36:
    mov ax, 0                        ; 0x3f16
    push ax                          ; 0x3f19
    call ds_dispatch_b7e0            ; 0x3f1a
    pop cx                           ; 0x3f1d
@..api_idx_0032.l37:
    jmp short @..api_idx_0032.l39    ; 0x3f1e
@..api_idx_0032.l38:
    mov ax, word [bp - 0x0008]       ; 0x3f20
    sub ax, word [bp + 0x8]          ; 0x3f23
    dec ax                           ; 0x3f26
    mov word [bp - 0x0028], ax       ; 0x3f27
    shl ax, 1                        ; 0x3f2a
    mov bx, ax                       ; 0x3f2c
    add bx, bp                       ; 0x3f2e
    mov ax, word [bx - 0x0026]       ; 0x3f30
    mov word [bp - 0x002a], ax       ; 0x3f33
@..api_idx_0032.l39:
    cmp word [bp - 0x0028], byte 0xff ; 0x3f36
    jne short @..api_idx_0032.l40    ; 0x3f3a
    jmp near @..api_idx_0032.l1      ; 0x3f3c
@..api_idx_0032.l40:
    mov ax, word [bp - 0x000c]       ; 0x3f3f
    mov cx, word [bp + 0x6]          ; 0x3f42
    shl cx, 1                        ; 0x3f45
    mov bx, cx                       ; 0x3f47
    mov word [bx - 0x6a10], ax       ; 0x3f49
    mov ax, 1                        ; 0x3f4d
    push ax                          ; 0x3f50
    push ax                          ; 0x3f51
    mov ax, 9                        ; 0x3f52
    push ax                          ; 0x3f55
    mov ax, 0xbc                     ; 0x3f56
    push ax                          ; 0x3f59
    mov ax, 0x3a                     ; 0x3f5a
    imul word [bp - 0x0028]          ; 0x3f5d
    add ax, strict word 4            ; 0x3f60
    push ax                          ; 0x3f63
    call ds_dispatch_be5f            ; 0x3f64
    add sp, byte 0x0a                ; 0x3f67
    mov ax, 0                        ; 0x3f6a
    push ax                          ; 0x3f6d
    mov ax, 1                        ; 0x3f6e
    push ax                          ; 0x3f71
    mov ax, 9                        ; 0x3f72
    push ax                          ; 0x3f75
    mov ax, 0xbc                     ; 0x3f76
    push ax                          ; 0x3f79
    mov ax, 0x3a                     ; 0x3f7a
    imul word [bp - 0x0028]          ; 0x3f7d
    add ax, strict word 4            ; 0x3f80
    push ax                          ; 0x3f83
    call ds_dispatch_be5f            ; 0x3f84
    add sp, byte 0x0a                ; 0x3f87
    mov ax, 1                        ; 0x3f8a
    push ax                          ; 0x3f8d
    push word [bp - 0x002c]          ; 0x3f8e
    push word [bp - 0x002e]          ; 0x3f91
    call ds_dispatch_e94f            ; 0x3f94
    add sp, byte 6                   ; 0x3f97
    mov ax, word [bp - 0x002a]       ; 0x3f9a
    ret                              ; 0x3f9d
