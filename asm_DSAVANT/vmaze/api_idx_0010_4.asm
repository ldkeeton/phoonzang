api_idx_0010_4:
    mov ax, 0xfff0                   ; 0x9a80
    call ds_dispatch_f40b            ; 0x9a83
    mov word [bp - 0x000a], 0xffff   ; 0x9a86
    mov word [bp - 0x000c], 0xffff   ; 0x9a8b
    mov word [bp - 0x0002], 0xa      ; 0x9a90
@..api_idx_0010_4.l1:
    push word [bp - 0x0002]          ; 0x9a95
    mov ax, 0x26                     ; 0x9a98
    imul word [bp + 0x4]             ; 0x9a9b
    add ax, 0x8502                   ; 0x9a9e
    push ax                          ; 0x9aa1
    call ds_dispatch_ec74            ; 0x9aa2
    add sp, byte 4                   ; 0x9aa5
    test ax, ax                      ; 0x9aa8
    je short @..api_idx_0010_4.l2    ; 0x9aaa
    push word [bp - 0x0002]          ; 0x9aac
    mov ax, 0x26                     ; 0x9aaf
    imul word [bp + 0x6]             ; 0x9ab2
    add ax, 0x850a                   ; 0x9ab5
    push ax                          ; 0x9ab8
    call ds_dispatch_ec74            ; 0x9ab9
    add sp, byte 4                   ; 0x9abc
    test ax, ax                      ; 0x9abf
    jne short @..api_idx_0010_4.l2   ; 0x9ac1
    mov ax, 6                        ; 0x9ac3
    imul word [bp - 0x0002]          ; 0x9ac6
    mov bx, ax                       ; 0x9ac9
    mov al, byte [bx - 0x7b58]       ; 0x9acb
    sub ah, ah                       ; 0x9acf
    mov word [bp - 0x0006], ax       ; 0x9ad1
    push ax                          ; 0x9ad4
    push word [bp + 0x4]             ; 0x9ad5
    call math_loc_9448               ; 0x9ad8
    add sp, byte 4                   ; 0x9adb
    test ax, ax                      ; 0x9ade
    jne short @..api_idx_0010_4.l2   ; 0x9ae0
    mov ax, word [bp - 0x0002]       ; 0x9ae2
    mov word [bp - 0x000a], ax       ; 0x9ae5
@..api_idx_0010_4.l2:
    push word [bp - 0x0002]          ; 0x9ae8
    mov ax, 0x26                     ; 0x9aeb
    imul word [bp + 0x6]             ; 0x9aee
    add ax, 0x8502                   ; 0x9af1
    push ax                          ; 0x9af4
    call ds_dispatch_ec74            ; 0x9af5
    add sp, byte 4                   ; 0x9af8
    test ax, ax                      ; 0x9afb
    je short @..api_idx_0010_4.l3    ; 0x9afd
    push word [bp - 0x0002]          ; 0x9aff
    mov ax, 0x26                     ; 0x9b02
    imul word [bp + 0x4]             ; 0x9b05
    add ax, 0x850a                   ; 0x9b08
    push ax                          ; 0x9b0b
    call ds_dispatch_ec74            ; 0x9b0c
    add sp, byte 4                   ; 0x9b0f
    test ax, ax                      ; 0x9b12
    jne short @..api_idx_0010_4.l3   ; 0x9b14
    mov ax, word [bp - 0x0002]       ; 0x9b16
    mov word [bp - 0x000c], ax       ; 0x9b19
@..api_idx_0010_4.l3:
    push word [bp - 0x0002]          ; 0x9b1c
    mov ax, 0x26                     ; 0x9b1f
    imul word [bp + 0x4]             ; 0x9b22
    add ax, 0x8504                   ; 0x9b25
    push ax                          ; 0x9b28
    call ds_dispatch_ec74            ; 0x9b29
    add sp, byte 4                   ; 0x9b2c
    test ax, ax                      ; 0x9b2f
    je short @..api_idx_0010_4.l4    ; 0x9b31
    mov ax, 1                        ; 0x9b33
    push ax                          ; 0x9b36
    push word [bp - 0x0002]          ; 0x9b37
    mov ax, 0x26                     ; 0x9b3a
    imul word [bp + 0x6]             ; 0x9b3d
    add ax, 0x8504                   ; 0x9b40
    push ax                          ; 0x9b43
    call ds_dispatch_ec41            ; 0x9b44
    add sp, byte 6                   ; 0x9b47
@..api_idx_0010_4.l4:
    push word [bp - 0x0002]          ; 0x9b4a
    mov ax, 0x26                     ; 0x9b4d
    imul word [bp + 0x6]             ; 0x9b50
    add ax, 0x8504                   ; 0x9b53
    push ax                          ; 0x9b56
    call ds_dispatch_ec74            ; 0x9b57
    add sp, byte 4                   ; 0x9b5a
    test ax, ax                      ; 0x9b5d
    je short @..api_idx_0010_4.l5    ; 0x9b5f
    mov ax, 1                        ; 0x9b61
    push ax                          ; 0x9b64
    push word [bp - 0x0002]          ; 0x9b65
    mov ax, 0x26                     ; 0x9b68
    imul word [bp + 0x4]             ; 0x9b6b
    add ax, 0x8504                   ; 0x9b6e
    push ax                          ; 0x9b71
    call ds_dispatch_ec41            ; 0x9b72
    add sp, byte 6                   ; 0x9b75
@..api_idx_0010_4.l5:
    mov ax, 0x26                     ; 0x9b78
    imul word [bp + 0x4]             ; 0x9b7b
    mov bx, ax                       ; 0x9b7e
    mov al, byte [bx - 0x7b18]       ; 0x9b80
    push ax                          ; 0x9b84
    mov ax, 0x26                     ; 0x9b85
    imul word [bp + 0x6]             ; 0x9b88
    mov bx, ax                       ; 0x9b8b
    mov cl, byte [bx - 0x7b18]       ; 0x9b8d
    pop ax                           ; 0x9b91
    cmp al, cl                       ; 0x9b92
    je short @..api_idx_0010_4.l6    ; 0x9b94
    jmp near @..api_idx_0010_4.l10   ; 0x9b96
@..api_idx_0010_4.l6:
    push word [bp - 0x0002]          ; 0x9b99
    mov ax, 0x26                     ; 0x9b9c
    imul word [bp + 0x4]             ; 0x9b9f
    add ax, 0x850a                   ; 0x9ba2
    push ax                          ; 0x9ba5
    call ds_dispatch_ec74            ; 0x9ba6
    add sp, byte 4                   ; 0x9ba9
    test ax, ax                      ; 0x9bac
    je short @..api_idx_0010_4.l7    ; 0x9bae
    mov ax, 1                        ; 0x9bb0
    push ax                          ; 0x9bb3
    push word [bp - 0x0002]          ; 0x9bb4
    mov ax, 0x26                     ; 0x9bb7
    imul word [bp + 0x6]             ; 0x9bba
    add ax, 0x850a                   ; 0x9bbd
    push ax                          ; 0x9bc0
    call ds_dispatch_ec41            ; 0x9bc1
    add sp, byte 6                   ; 0x9bc4
@..api_idx_0010_4.l7:
    push word [bp - 0x0002]          ; 0x9bc7
    mov ax, 0x26                     ; 0x9bca
    imul word [bp + 0x6]             ; 0x9bcd
    add ax, 0x850a                   ; 0x9bd0
    push ax                          ; 0x9bd3
    call ds_dispatch_ec74            ; 0x9bd4
    add sp, byte 4                   ; 0x9bd7
    test ax, ax                      ; 0x9bda
    je short @..api_idx_0010_4.l8    ; 0x9bdc
    mov ax, 1                        ; 0x9bde
    push ax                          ; 0x9be1
    push word [bp - 0x0002]          ; 0x9be2
    mov ax, 0x26                     ; 0x9be5
    imul word [bp + 0x4]             ; 0x9be8
    add ax, 0x850a                   ; 0x9beb
    push ax                          ; 0x9bee
    call ds_dispatch_ec41            ; 0x9bef
    add sp, byte 6                   ; 0x9bf2
@..api_idx_0010_4.l8:
    mov ax, word [bp - 0x0002]       ; 0x9bf5
    add ax, strict word 0xc          ; 0x9bf8
    push ax                          ; 0x9bfb
    mov ax, 0x26                     ; 0x9bfc
    imul word [bp + 0x4]             ; 0x9bff
    add ax, 0x850a                   ; 0x9c02
    push ax                          ; 0x9c05
    call ds_dispatch_ec74            ; 0x9c06
    add sp, byte 4                   ; 0x9c09
    test ax, ax                      ; 0x9c0c
    je short @..api_idx_0010_4.l9    ; 0x9c0e
    mov ax, 1                        ; 0x9c10
    push ax                          ; 0x9c13
    mov ax, word [bp - 0x0002]       ; 0x9c14
    add ax, strict word 0xc          ; 0x9c17
    push ax                          ; 0x9c1a
    mov ax, 0x26                     ; 0x9c1b
    imul word [bp + 0x6]             ; 0x9c1e
    add ax, 0x850a                   ; 0x9c21
    push ax                          ; 0x9c24
    call ds_dispatch_ec41            ; 0x9c25
    add sp, byte 6                   ; 0x9c28
@..api_idx_0010_4.l9:
    mov ax, word [bp - 0x0002]       ; 0x9c2b
    add ax, strict word 0xc          ; 0x9c2e
    push ax                          ; 0x9c31
    mov ax, 0x26                     ; 0x9c32
    imul word [bp + 0x6]             ; 0x9c35
    add ax, 0x850a                   ; 0x9c38
    push ax                          ; 0x9c3b
    call ds_dispatch_ec74            ; 0x9c3c
    add sp, byte 4                   ; 0x9c3f
    test ax, ax                      ; 0x9c42
    je short @..api_idx_0010_4.l10   ; 0x9c44
    mov ax, 1                        ; 0x9c46
    push ax                          ; 0x9c49
    mov ax, word [bp - 0x0002]       ; 0x9c4a
    add ax, strict word 0xc          ; 0x9c4d
    push ax                          ; 0x9c50
    mov ax, 0x26                     ; 0x9c51
    imul word [bp + 0x4]             ; 0x9c54
    add ax, 0x850a                   ; 0x9c57
    push ax                          ; 0x9c5a
    call ds_dispatch_ec41            ; 0x9c5b
    add sp, byte 6                   ; 0x9c5e
@..api_idx_0010_4.l10:
    dec word [bp - 0x0002]           ; 0x9c61
    jl short @..api_idx_0010_4.l11   ; 0x9c64
    jmp near @..api_idx_0010_4.l1    ; 0x9c66
@..api_idx_0010_4.l11:
    cmp word [bp + 0x8], byte 0      ; 0x9c69
    jle short @..api_idx_0010_4.l12  ; 0x9c6d
    mov ax, 5                        ; 0x9c6f
    push ax                          ; 0x9c72
    call ds_dispatch_b7a9            ; 0x9c73
    pop cx                           ; 0x9c76
    push ax                          ; 0x9c77
    push word [bp + 0x6]             ; 0x9c78
    push word [bp + 0x4]             ; 0x9c7b
