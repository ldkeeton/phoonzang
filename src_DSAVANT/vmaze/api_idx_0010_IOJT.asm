; auto-generated
api_idx_0010_IOJT:
    mov ax, 0xfff0                   ; 0x9a80
    call aztec_csav                  ; 0x9a83
    mov word [bp - 0x000a], 0xffff   ; 0x9a86
    mov word [bp - 0x000c], 0xffff   ; 0x9a8b
    mov word [bp - 0x0002], 0xa      ; 0x9a90
@..api_idx_0010_IOJT.l1:
    push word [bp - 0x0002]          ; 0x9a95
    mov ax, 0x26                     ; 0x9a98
    imul word [bp + 0x4]             ; 0x9a9b
    add ax, 0x8502                   ; 0x9a9e
    push ax                          ; 0x9aa1
    call ds_leaf_loc_PRVP            ; 0x9aa2
    add sp, byte 4                   ; 0x9aa5
    test ax, ax                      ; 0x9aa8
    je short @..api_idx_0010_IOJT.l2 ; 0x9aaa
    push word [bp - 0x0002]          ; 0x9aac
    mov ax, 0x26                     ; 0x9aaf
    imul word [bp + 0x6]             ; 0x9ab2
    add ax, 0x850a                   ; 0x9ab5
    push ax                          ; 0x9ab8
    call ds_leaf_loc_PRVP            ; 0x9ab9
    add sp, byte 4                   ; 0x9abc
    test ax, ax                      ; 0x9abf
    jne short @..api_idx_0010_IOJT.l2 ; 0x9ac1
    mov ax, 6                        ; 0x9ac3
    imul word [bp - 0x0002]          ; 0x9ac6
    mov bx, ax                       ; 0x9ac9
    mov al, byte [bx - 0x7b58]       ; 0x9acb
    sub ah, ah                       ; 0x9acf
    mov word [bp - 0x0006], ax       ; 0x9ad1
    push ax                          ; 0x9ad4
    push word [bp + 0x4]             ; 0x9ad5
    call loc_PQKO                    ; 0x9ad8
    add sp, byte 4                   ; 0x9adb
    test ax, ax                      ; 0x9ade
    jne short @..api_idx_0010_IOJT.l2 ; 0x9ae0
    mov ax, word [bp - 0x0002]       ; 0x9ae2
    mov word [bp - 0x000a], ax       ; 0x9ae5
@..api_idx_0010_IOJT.l2:
    push word [bp - 0x0002]          ; 0x9ae8
    mov ax, 0x26                     ; 0x9aeb
    imul word [bp + 0x6]             ; 0x9aee
    add ax, 0x8502                   ; 0x9af1
    push ax                          ; 0x9af4
    call ds_leaf_loc_PRVP            ; 0x9af5
    add sp, byte 4                   ; 0x9af8
    test ax, ax                      ; 0x9afb
    je short @..api_idx_0010_IOJT.l3 ; 0x9afd
    push word [bp - 0x0002]          ; 0x9aff
    mov ax, 0x26                     ; 0x9b02
    imul word [bp + 0x4]             ; 0x9b05
    add ax, 0x850a                   ; 0x9b08
    push ax                          ; 0x9b0b
    call ds_leaf_loc_PRVP            ; 0x9b0c
    add sp, byte 4                   ; 0x9b0f
    test ax, ax                      ; 0x9b12
    jne short @..api_idx_0010_IOJT.l3 ; 0x9b14
    mov ax, word [bp - 0x0002]       ; 0x9b16
    mov word [bp - 0x000c], ax       ; 0x9b19
@..api_idx_0010_IOJT.l3:
    push word [bp - 0x0002]          ; 0x9b1c
    mov ax, 0x26                     ; 0x9b1f
    imul word [bp + 0x4]             ; 0x9b22
    add ax, 0x8504                   ; 0x9b25
    push ax                          ; 0x9b28
    call ds_leaf_loc_PRVP            ; 0x9b29
    add sp, byte 4                   ; 0x9b2c
    test ax, ax                      ; 0x9b2f
    je short @..api_idx_0010_IOJT.l4 ; 0x9b31
    mov ax, 1                        ; 0x9b33
    push ax                          ; 0x9b36
    push word [bp - 0x0002]          ; 0x9b37
    mov ax, 0x26                     ; 0x9b3a
    imul word [bp + 0x6]             ; 0x9b3d
    add ax, 0x8504                   ; 0x9b40
    push ax                          ; 0x9b43
    call set_bitmap_bit              ; 0x9b44
    add sp, byte 6                   ; 0x9b47
@..api_idx_0010_IOJT.l4:
    push word [bp - 0x0002]          ; 0x9b4a
    mov ax, 0x26                     ; 0x9b4d
    imul word [bp + 0x6]             ; 0x9b50
    add ax, 0x8504                   ; 0x9b53
    push ax                          ; 0x9b56
    call ds_leaf_loc_PRVP            ; 0x9b57
    add sp, byte 4                   ; 0x9b5a
    test ax, ax                      ; 0x9b5d
    je short @..api_idx_0010_IOJT.l5 ; 0x9b5f
    mov ax, 1                        ; 0x9b61
    push ax                          ; 0x9b64
    push word [bp - 0x0002]          ; 0x9b65
    mov ax, 0x26                     ; 0x9b68
    imul word [bp + 0x4]             ; 0x9b6b
    add ax, 0x8504                   ; 0x9b6e
    push ax                          ; 0x9b71
    call set_bitmap_bit              ; 0x9b72
    add sp, byte 6                   ; 0x9b75
@..api_idx_0010_IOJT.l5:
    mov ax, 0x26                     ; 0x9b78
    imul word [bp + 0x4]             ; 0x9b7b
    mov bx, ax                       ; 0x9b7e
    mov al, byte [bx + bss_84e8]     ; 0x9b80
    push ax                          ; 0x9b84
    mov ax, 0x26                     ; 0x9b85
    imul word [bp + 0x6]             ; 0x9b88
    mov bx, ax                       ; 0x9b8b
    mov cl, byte [bx + bss_84e8]     ; 0x9b8d
    pop ax                           ; 0x9b91
    cmp al, cl                       ; 0x9b92
    je short @..api_idx_0010_IOJT.l6 ; 0x9b94
    jmp near @..api_idx_0010_IOJT.l10 ; 0x9b96
@..api_idx_0010_IOJT.l6:
    push word [bp - 0x0002]          ; 0x9b99
    mov ax, 0x26                     ; 0x9b9c
    imul word [bp + 0x4]             ; 0x9b9f
    add ax, 0x850a                   ; 0x9ba2
    push ax                          ; 0x9ba5
    call ds_leaf_loc_PRVP            ; 0x9ba6
    add sp, byte 4                   ; 0x9ba9
    test ax, ax                      ; 0x9bac
    je short @..api_idx_0010_IOJT.l7 ; 0x9bae
    mov ax, 1                        ; 0x9bb0
    push ax                          ; 0x9bb3
    push word [bp - 0x0002]          ; 0x9bb4
    mov ax, 0x26                     ; 0x9bb7
    imul word [bp + 0x6]             ; 0x9bba
    add ax, 0x850a                   ; 0x9bbd
    push ax                          ; 0x9bc0
    call set_bitmap_bit              ; 0x9bc1
    add sp, byte 6                   ; 0x9bc4
@..api_idx_0010_IOJT.l7:
    push word [bp - 0x0002]          ; 0x9bc7
    mov ax, 0x26                     ; 0x9bca
    imul word [bp + 0x6]             ; 0x9bcd
    add ax, 0x850a                   ; 0x9bd0
    push ax                          ; 0x9bd3
    call ds_leaf_loc_PRVP            ; 0x9bd4
    add sp, byte 4                   ; 0x9bd7
    test ax, ax                      ; 0x9bda
    je short @..api_idx_0010_IOJT.l8 ; 0x9bdc
    mov ax, 1                        ; 0x9bde
    push ax                          ; 0x9be1
    push word [bp - 0x0002]          ; 0x9be2
    mov ax, 0x26                     ; 0x9be5
    imul word [bp + 0x4]             ; 0x9be8
    add ax, 0x850a                   ; 0x9beb
    push ax                          ; 0x9bee
    call set_bitmap_bit              ; 0x9bef
    add sp, byte 6                   ; 0x9bf2
@..api_idx_0010_IOJT.l8:
    mov ax, word [bp - 0x0002]       ; 0x9bf5
    add ax, strict word 0xc          ; 0x9bf8
    push ax                          ; 0x9bfb
    mov ax, 0x26                     ; 0x9bfc
    imul word [bp + 0x4]             ; 0x9bff
    add ax, 0x850a                   ; 0x9c02
    push ax                          ; 0x9c05
    call ds_leaf_loc_PRVP            ; 0x9c06
    add sp, byte 4                   ; 0x9c09
    test ax, ax                      ; 0x9c0c
    je short @..api_idx_0010_IOJT.l9 ; 0x9c0e
    mov ax, 1                        ; 0x9c10
    push ax                          ; 0x9c13
    mov ax, word [bp - 0x0002]       ; 0x9c14
    add ax, strict word 0xc          ; 0x9c17
    push ax                          ; 0x9c1a
    mov ax, 0x26                     ; 0x9c1b
    imul word [bp + 0x6]             ; 0x9c1e
    add ax, 0x850a                   ; 0x9c21
    push ax                          ; 0x9c24
    call set_bitmap_bit              ; 0x9c25
    add sp, byte 6                   ; 0x9c28
@..api_idx_0010_IOJT.l9:
    mov ax, word [bp - 0x0002]       ; 0x9c2b
    add ax, strict word 0xc          ; 0x9c2e
    push ax                          ; 0x9c31
    mov ax, 0x26                     ; 0x9c32
    imul word [bp + 0x6]             ; 0x9c35
    add ax, 0x850a                   ; 0x9c38
    push ax                          ; 0x9c3b
    call ds_leaf_loc_PRVP            ; 0x9c3c
    add sp, byte 4                   ; 0x9c3f
    test ax, ax                      ; 0x9c42
    je short @..api_idx_0010_IOJT.l10 ; 0x9c44
    mov ax, 1                        ; 0x9c46
    push ax                          ; 0x9c49
    mov ax, word [bp - 0x0002]       ; 0x9c4a
    add ax, strict word 0xc          ; 0x9c4d
    push ax                          ; 0x9c50
    mov ax, 0x26                     ; 0x9c51
    imul word [bp + 0x4]             ; 0x9c54
    add ax, 0x850a                   ; 0x9c57
    push ax                          ; 0x9c5a
    call set_bitmap_bit              ; 0x9c5b
    add sp, byte 6                   ; 0x9c5e
@..api_idx_0010_IOJT.l10:
    dec word [bp - 0x0002]           ; 0x9c61
    jl short @..api_idx_0010_IOJT.l11 ; 0x9c64
    jmp near @..api_idx_0010_IOJT.l1 ; 0x9c66
@..api_idx_0010_IOJT.l11:
    cmp word [bp + 0x8], byte 0      ; 0x9c69
    jle short @..api_idx_0010_IOJT.l12 ; 0x9c6d
    mov ax, 5                        ; 0x9c6f
    push ax                          ; 0x9c72
    call ds_app_PUNN                 ; 0x9c73
    pop cx                           ; 0x9c76
    push ax                          ; 0x9c77
    push word [bp + 0x6]             ; 0x9c78
    push word [bp + 0x4]             ; 0x9c7b
    call loc_HULT                    ; 0x9c7e
    add sp, byte 6                   ; 0x9c81
    mov ax, 5                        ; 0x9c84
    push ax                          ; 0x9c87
    call ds_app_PUNN                 ; 0x9c88
    pop cx                           ; 0x9c8b
    push ax                          ; 0x9c8c
    push word [bp + 0x4]             ; 0x9c8d
    push word [bp + 0x6]             ; 0x9c90
    call loc_HULT                    ; 0x9c93
    add sp, byte 6                   ; 0x9c96
@..api_idx_0010_IOJT.l12:
    mov ax, 0x16                     ; 0x9c99
    imul word [bp + 0x4]             ; 0x9c9c
    add ax, word [bp + 0x6]          ; 0x9c9f
    mov bx, ax                       ; 0x9ca2
    mov byte [bx + bss_9c42], 1      ; 0x9ca4
    mov ax, 0x16                     ; 0x9ca9
    imul word [bp + 0x6]             ; 0x9cac
    add ax, word [bp + 0x4]          ; 0x9caf
    mov bx, ax                       ; 0x9cb2
    mov byte [bx + bss_9c42], 1      ; 0x9cb4
    mov ax, 0x26                     ; 0x9cb9
    imul word [bp + 0x4]             ; 0x9cbc
    mov bx, ax                       ; 0x9cbf
    mov al, byte [bx - 0x7aff]       ; 0x9cc1
    cbw                              ; 0x9cc5
    mov cx, 0xa                      ; 0x9cc6
    cwd                              ; 0x9cc9
    idiv cx                          ; 0x9cca
    inc ax                           ; 0x9ccc
    mov word [bp - 0x000e], ax       ; 0x9ccd
    mov ax, 0x26                     ; 0x9cd0
    imul word [bp + 0x6]             ; 0x9cd3
    mov bx, ax                       ; 0x9cd6
    mov al, byte [bx - 0x7aff]       ; 0x9cd8
    cbw                              ; 0x9cdc
    cwd                              ; 0x9cdd
    idiv cx                          ; 0x9cde
    inc ax                           ; 0x9ce0
    mov word [bp - 0x0010], ax       ; 0x9ce1
    mov ax, 0x26                     ; 0x9ce4
    imul word [bp + 0x4]             ; 0x9ce7
    mov bx, ax                       ; 0x9cea
    mov al, byte [bx + bss_84e8]     ; 0x9cec
    push ax                          ; 0x9cf0
    mov ax, 0x26                     ; 0x9cf1
    imul word [bp + 0x6]             ; 0x9cf4
    mov bx, ax                       ; 0x9cf7
    pop ax                           ; 0x9cf9
    cmp al, byte [bx + bss_84e8]     ; 0x9cfa
    jne short @..api_idx_0010_IOJT.l13 ; 0x9cfe
    cmp byte [bx - 0x7b16], 1        ; 0x9d00
    jne short @..api_idx_0010_IOJT.l13 ; 0x9d05
    mov ax, 0x26                     ; 0x9d07
    imul word [bp + 0x4]             ; 0x9d0a
    mov bx, ax                       ; 0x9d0d
    cmp byte [bx - 0x7aff], 0x41     ; 0x9d0f
    jge short @..api_idx_0010_IOJT.l13 ; 0x9d14
    mov ax, 3                        ; 0x9d16
    push ax                          ; 0x9d19
    call ds_app_PUNN                 ; 0x9d1a
    pop cx                           ; 0x9d1d
    test ax, ax                      ; 0x9d1e
    jne short @..api_idx_0010_IOJT.l13 ; 0x9d20
    mov ax, 0x26                     ; 0x9d22
    imul word [bp + 0x4]             ; 0x9d25
    mov bx, ax                       ; 0x9d28
    inc byte [bx - 0x7aff]           ; 0x9d2a
@..api_idx_0010_IOJT.l13:
    cmp word [bp - 0x000c], byte 0xff ; 0x9d2e
    jne short @..api_idx_0010_IOJT.l14 ; 0x9d32
    jmp near @..api_idx_0010_IOJT.l18 ; 0x9d34
@..api_idx_0010_IOJT.l14:
    cmp word [bp - 0x000a], byte 0xff ; 0x9d37
    jne short @..api_idx_0010_IOJT.l17 ; 0x9d3b
    mov ax, 0x32                     ; 0x9d3d
    sub ax, word [bp - 0x000e]       ; 0x9d40
    cmp ax, word [bp + 0x8]          ; 0x9d43
    jg short @..api_idx_0010_IOJT.l15 ; 0x9d46
    mov ax, 0xa                      ; 0x9d48
    push ax                          ; 0x9d4b
    call ds_app_PUNN                 ; 0x9d4c
    pop cx                           ; 0x9d4f
    inc ax                           ; 0x9d50
    cmp ax, word [bp - 0x000e]       ; 0x9d51
    jle short @..api_idx_0010_IOJT.l16 ; 0x9d54
@..api_idx_0010_IOJT.l15:
    ret                              ; 0x9d56
@..api_idx_0010_IOJT.l16:
    mov ax, 0x64                     ; 0x9d57
    push ax                          ; 0x9d5a
    mov ax, 1                        ; 0x9d5b
    push ax                          ; 0x9d5e
    mov ax, 0x26                     ; 0x9d5f
    imul word [bp + 0x6]             ; 0x9d62
    mov bx, ax                       ; 0x9d65
    mov al, byte [bx - 0x7aff]       ; 0x9d67
    cbw                              ; 0x9d6b
    add ax, word [bp - 0x000e]       ; 0x9d6c
    push ax                          ; 0x9d6f
    call clamp_between               ; 0x9d70
    add sp, byte 6                   ; 0x9d73
    push ax                          ; 0x9d76
    mov ax, 0x26                     ; 0x9d77
    imul word [bp + 0x6]             ; 0x9d7a
    mov bx, ax                       ; 0x9d7d
    pop ax                           ; 0x9d7f
    mov byte [bx - 0x7aff], al       ; 0x9d80
    mov ax, 0x64                     ; 0x9d84
    push ax                          ; 0x9d87
    mov ax, 1                        ; 0x9d88
    push ax                          ; 0x9d8b
    mov ax, 0x26                     ; 0x9d8c
    imul word [bp + 0x4]             ; 0x9d8f
    mov bx, ax                       ; 0x9d92
    mov al, byte [bx - 0x7aff]       ; 0x9d94
    cbw                              ; 0x9d98
    sub ax, word [bp - 0x000e]       ; 0x9d99
    push ax                          ; 0x9d9c
    call clamp_between               ; 0x9d9d
    add sp, byte 6                   ; 0x9da0
    push ax                          ; 0x9da3
    mov ax, 0x26                     ; 0x9da4
    imul word [bp + 0x4]             ; 0x9da7
    mov bx, ax                       ; 0x9daa
    pop ax                           ; 0x9dac
    mov byte [bx - 0x7aff], al       ; 0x9dad
@..api_idx_0010_IOJT.l17:
    push word [bp + 0x6]             ; 0x9db1
    mov ax, 3                        ; 0x9db4
    push ax                          ; 0x9db7
    push word [bp - 0x000c]          ; 0x9db8
    push word [bp + 0x4]             ; 0x9dbb
    call api_idx_0002_JLVK           ; 0x9dbe
    add sp, byte 8                   ; 0x9dc1
    push word [bp - 0x000c]          ; 0x9dc4
    push word [bp + 0x6]             ; 0x9dc7
    push word [bp + 0x4]             ; 0x9dca
    call api_idx_0002_QVIM           ; 0x9dcd
    add sp, byte 6                   ; 0x9dd0
@..api_idx_0010_IOJT.l18:
    cmp word [bp - 0x000a], byte 0xff ; 0x9dd3
    jne short @..api_idx_0010_IOJT.l19 ; 0x9dd7
    jmp near @..api_idx_0010_IOJT.l23 ; 0x9dd9
@..api_idx_0010_IOJT.l19:
    cmp word [bp - 0x000c], byte 0xff ; 0x9ddc
    jne short @..api_idx_0010_IOJT.l22 ; 0x9de0
    mov ax, 0x32                     ; 0x9de2
    sub ax, word [bp - 0x0010]       ; 0x9de5
    cmp ax, word [bp + 0x8]          ; 0x9de8
    jg short @..api_idx_0010_IOJT.l20 ; 0x9deb
    mov ax, 0xa                      ; 0x9ded
    push ax                          ; 0x9df0
    call ds_app_PUNN                 ; 0x9df1
    pop cx                           ; 0x9df4
    inc ax                           ; 0x9df5
    cmp ax, word [bp - 0x0010]       ; 0x9df6
    jle short @..api_idx_0010_IOJT.l21 ; 0x9df9
@..api_idx_0010_IOJT.l20:
    ret                              ; 0x9dfb
@..api_idx_0010_IOJT.l21:
    mov ax, 0x64                     ; 0x9dfc
    push ax                          ; 0x9dff
    mov ax, 1                        ; 0x9e00
    push ax                          ; 0x9e03
    mov ax, 0x26                     ; 0x9e04
    imul word [bp + 0x4]             ; 0x9e07
    mov bx, ax                       ; 0x9e0a
    mov al, byte [bx - 0x7aff]       ; 0x9e0c
    cbw                              ; 0x9e10
    add ax, word [bp - 0x0010]       ; 0x9e11
    push ax                          ; 0x9e14
    call clamp_between               ; 0x9e15
    add sp, byte 6                   ; 0x9e18
    push ax                          ; 0x9e1b
    mov ax, 0x26                     ; 0x9e1c
    imul word [bp + 0x4]             ; 0x9e1f
    mov bx, ax                       ; 0x9e22
    pop ax                           ; 0x9e24
    mov byte [bx - 0x7aff], al       ; 0x9e25
    mov ax, 0x64                     ; 0x9e29
    push ax                          ; 0x9e2c
    mov ax, 1                        ; 0x9e2d
    push ax                          ; 0x9e30
    mov ax, 0x26                     ; 0x9e31
    imul word [bp + 0x6]             ; 0x9e34
    mov bx, ax                       ; 0x9e37
    mov al, byte [bx - 0x7aff]       ; 0x9e39
    cbw                              ; 0x9e3d
    sub ax, word [bp - 0x0010]       ; 0x9e3e
    push ax                          ; 0x9e41
    call clamp_between               ; 0x9e42
    add sp, byte 6                   ; 0x9e45
    push ax                          ; 0x9e48
    mov ax, 0x26                     ; 0x9e49
    imul word [bp + 0x6]             ; 0x9e4c
    mov bx, ax                       ; 0x9e4f
    pop ax                           ; 0x9e51
    mov byte [bx - 0x7aff], al       ; 0x9e52
@..api_idx_0010_IOJT.l22:
    push word [bp + 0x4]             ; 0x9e56
    mov ax, 3                        ; 0x9e59
    push ax                          ; 0x9e5c
    push word [bp - 0x000a]          ; 0x9e5d
    push word [bp + 0x6]             ; 0x9e60
    call api_idx_0002_JLVK           ; 0x9e63
    add sp, byte 8                   ; 0x9e66
    push word [bp - 0x000a]          ; 0x9e69
    push word [bp + 0x4]             ; 0x9e6c
    push word [bp + 0x6]             ; 0x9e6f
    call api_idx_0002_QVIM           ; 0x9e72
    add sp, byte 6                   ; 0x9e75
@..api_idx_0010_IOJT.l23:
    ret                              ; 0x9e78
