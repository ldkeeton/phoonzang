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
