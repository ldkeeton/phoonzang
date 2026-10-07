api_idx_0004_2:
    mov ax, 0xfffc                   ; 0x1c80
    call ds_dispatch_f40b            ; 0x1c83
    mov ax, 0x248                    ; 0x1c86
    imul word [bp + 0x4]             ; 0x1c89
    mov bx, ax                       ; 0x1c8c
    mov al, byte [bx + 0x5d67]       ; 0x1c8e
    sub ah, ah                       ; 0x1c92
    push ax                          ; 0x1c94
    mov al, byte [bx + 0x5d66]       ; 0x1c95
    sub ah, ah                       ; 0x1c99
    mov cx, ax                       ; 0x1c9b
    shl ax, 1                        ; 0x1c9d
    mov cx, ax                       ; 0x1c9f
    pop ax                           ; 0x1ca1
    add ax, cx                       ; 0x1ca2
    mov cx, 3                        ; 0x1ca4
    cwd                              ; 0x1ca7
    idiv cx                          ; 0x1ca8
    mov word [bp - 0x0002], ax       ; 0x1caa
    mov word [bp - 0x0004], 0        ; 0x1cad
    cmp ax, strict word 0xd          ; 0x1cb2
    jle short @..api_idx_0004_2.l1   ; 0x1cb5
    inc word [bp - 0x0004]           ; 0x1cb7
@..api_idx_0004_2.l1:
    cmp ax, strict word 0x10         ; 0x1cba
    jle short @..api_idx_0004_2.l2   ; 0x1cbd
    inc word [bp - 0x0004]           ; 0x1cbf
@..api_idx_0004_2.l2:
    cmp byte [bx + 0x5e2b], 5        ; 0x1cc2
    jne short @..api_idx_0004_2.l3   ; 0x1cc7
    inc word [bp - 0x0004]           ; 0x1cc9
@..api_idx_0004_2.l3:
    cmp byte [bx + 0x5e2b], 6        ; 0x1ccc
    jne short @..api_idx_0004_2.l4   ; 0x1cd1
    dec word [bp - 0x0004]           ; 0x1cd3
@..api_idx_0004_2.l4:
    mov al, byte [bx + 0x5e2d]       ; 0x1cd6
    sub ah, ah                       ; 0x1cda
    jmp near @..api_idx_0004_2.l5    ; 0x1cdc
    mov ax, word [bp - 0x0004]       ; 0x1cdf
    inc ax                           ; 0x1ce2
    push ax                          ; 0x1ce3
    push ax                          ; 0x1ce4
    push ax                          ; 0x1ce5
    push ax                          ; 0x1ce6
    push ax                          ; 0x1ce7
    push ax                          ; 0x1ce8
    push word [bp + 0x4]             ; 0x1ce9
    call math_loc_1c09               ; 0x1cec
    add sp, byte 0x0e                ; 0x1cef
    jmp near @..api_idx_0004_2.l6    ; 0x1cf2
    mov ax, 0x248                    ; 0x1cf5
    imul word [bp + 0x4]             ; 0x1cf8
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5d50], data_0002 ; 0x1cfd
    mov ax, word [bp - 0x0004]       ; 0x1d02
    inc ax                           ; 0x1d05
    inc ax                           ; 0x1d06
    inc ax                           ; 0x1d07
    push ax                          ; 0x1d08
    mov ax, word [bp - 0x0004]       ; 0x1d09
    inc ax                           ; 0x1d0c
    inc ax                           ; 0x1d0d
    push ax                          ; 0x1d0e
    push ax                          ; 0x1d0f
    push ax                          ; 0x1d10
    mov ax, word [bp - 0x0004]       ; 0x1d11
    inc ax                           ; 0x1d14
    inc ax                           ; 0x1d15
    inc ax                           ; 0x1d16
    push ax                          ; 0x1d17
    push ax                          ; 0x1d18
    push word [bp + 0x4]             ; 0x1d19
    call math_loc_1c09               ; 0x1d1c
    add sp, byte 0x0e                ; 0x1d1f
    jmp near @..api_idx_0004_2.l6    ; 0x1d22
    mov ax, 0x248                    ; 0x1d25
    imul word [bp + 0x4]             ; 0x1d28
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5d51], data_0002 ; 0x1d2d
    mov ax, word [bp - 0x0004]       ; 0x1d32
    inc ax                           ; 0x1d35
    inc ax                           ; 0x1d36
    inc ax                           ; 0x1d37
    push ax                          ; 0x1d38
    push ax                          ; 0x1d39
    mov ax, word [bp - 0x0004]       ; 0x1d3a
    inc ax                           ; 0x1d3d
    inc ax                           ; 0x1d3e
    push ax                          ; 0x1d3f
    push ax                          ; 0x1d40
    mov ax, word [bp - 0x0004]       ; 0x1d41
    inc ax                           ; 0x1d44
    inc ax                           ; 0x1d45
    inc ax                           ; 0x1d46
    push ax                          ; 0x1d47
    mov ax, word [bp - 0x0004]       ; 0x1d48
    inc ax                           ; 0x1d4b
    inc ax                           ; 0x1d4c
    push ax                          ; 0x1d4d
    push word [bp + 0x4]             ; 0x1d4e
    call math_loc_1c09               ; 0x1d51
    add sp, byte 0x0e                ; 0x1d54
    jmp near @..api_idx_0004_2.l6    ; 0x1d57
    mov ax, word [bp - 0x0004]       ; 0x1d5a
    inc ax                           ; 0x1d5d
    push ax                          ; 0x1d5e
    mov ax, word [bp - 0x0004]       ; 0x1d5f
    inc ax                           ; 0x1d62
    inc ax                           ; 0x1d63
    push ax                          ; 0x1d64
    push ax                          ; 0x1d65
    push ax                          ; 0x1d66
    mov ax, word [bp - 0x0004]       ; 0x1d67
    inc ax                           ; 0x1d6a
    push ax                          ; 0x1d6b
    push ax                          ; 0x1d6c
    push word [bp + 0x4]             ; 0x1d6d
    call math_loc_1c09               ; 0x1d70
    add sp, byte 0x0e                ; 0x1d73
    jmp near @..api_idx_0004_2.l6    ; 0x1d76
    mov ax, 0x248                    ; 0x1d79
    imul word [bp + 0x4]             ; 0x1d7c
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5d52], data_0002 ; 0x1d81
    mov ax, word [bp - 0x0004]       ; 0x1d86
    inc ax                           ; 0x1d89
    inc ax                           ; 0x1d8a
    push ax                          ; 0x1d8b
    push ax                          ; 0x1d8c
    mov ax, word [bp - 0x0004]       ; 0x1d8d
    inc ax                           ; 0x1d90
    inc ax                           ; 0x1d91
    inc ax                           ; 0x1d92
    push ax                          ; 0x1d93
    push ax                          ; 0x1d94
    mov ax, word [bp - 0x0004]       ; 0x1d95
    inc ax                           ; 0x1d98
    inc ax                           ; 0x1d99
    push ax                          ; 0x1d9a
    mov ax, word [bp - 0x0004]       ; 0x1d9b
    inc ax                           ; 0x1d9e
    inc ax                           ; 0x1d9f
    inc ax                           ; 0x1da0
    push ax                          ; 0x1da1
    push word [bp + 0x4]             ; 0x1da2
    call math_loc_1c09               ; 0x1da5
    add sp, byte 0x0e                ; 0x1da8
    jmp near @..api_idx_0004_2.l6    ; 0x1dab
    mov ax, word [bp - 0x0004]       ; 0x1dae
    inc ax                           ; 0x1db1
    push ax                          ; 0x1db2
    mov ax, word [bp - 0x0004]       ; 0x1db3
    inc ax                           ; 0x1db6
    inc ax                           ; 0x1db7
    push ax                          ; 0x1db8
    mov ax, word [bp - 0x0004]       ; 0x1db9
    inc ax                           ; 0x1dbc
    push ax                          ; 0x1dbd
    push ax                          ; 0x1dbe
    mov ax, word [bp - 0x0004]       ; 0x1dbf
    inc ax                           ; 0x1dc2
    inc ax                           ; 0x1dc3
    push ax                          ; 0x1dc4
    push ax                          ; 0x1dc5
    push word [bp + 0x4]             ; 0x1dc6
    call math_loc_1c09               ; 0x1dc9
    add sp, byte 0x0e                ; 0x1dcc
    jmp near @..api_idx_0004_2.l6    ; 0x1dcf
    mov ax, 0x248                    ; 0x1dd2
    imul word [bp + 0x4]             ; 0x1dd5
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5d53], data_0002 ; 0x1dda
    mov ax, word [bp - 0x0004]       ; 0x1ddf
    inc ax                           ; 0x1de2
    inc ax                           ; 0x1de3
    push ax                          ; 0x1de4
    mov ax, word [bp - 0x0004]       ; 0x1de5
    add ax, strict word 4            ; 0x1de8
    push ax                          ; 0x1deb
    mov ax, word [bp - 0x0004]       ; 0x1dec
    inc ax                           ; 0x1def
    inc ax                           ; 0x1df0
    push ax                          ; 0x1df1
    push ax                          ; 0x1df2
    push ax                          ; 0x1df3
    mov ax, word [bp - 0x0004]       ; 0x1df4
    inc ax                           ; 0x1df7
    inc ax                           ; 0x1df8
    inc ax                           ; 0x1df9
    push ax                          ; 0x1dfa
    push word [bp + 0x4]             ; 0x1dfb
    call math_loc_1c09               ; 0x1dfe
    add sp, byte 0x0e                ; 0x1e01
    jmp near @..api_idx_0004_2.l6    ; 0x1e04
    mov ax, word [bp - 0x0004]       ; 0x1e07
    inc ax                           ; 0x1e0a
    inc ax                           ; 0x1e0b
    push ax                          ; 0x1e0c
    mov ax, word [bp - 0x0004]       ; 0x1e0d
    inc ax                           ; 0x1e10
    push ax                          ; 0x1e11
    push ax                          ; 0x1e12
    mov ax, word [bp - 0x0004]       ; 0x1e13
    inc ax                           ; 0x1e16
    inc ax                           ; 0x1e17
    push ax                          ; 0x1e18
    push ax                          ; 0x1e19
    mov ax, word [bp - 0x0004]       ; 0x1e1a
    inc ax                           ; 0x1e1d
    push ax                          ; 0x1e1e
    push word [bp + 0x4]             ; 0x1e1f
    call math_loc_1c09               ; 0x1e22
    add sp, byte 0x0e                ; 0x1e25
    jmp near @..api_idx_0004_2.l6    ; 0x1e28
    mov ax, 0x248                    ; 0x1e2b
    imul word [bp + 0x4]             ; 0x1e2e
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5d50], 1        ; 0x1e33
    mov byte [bx + 0x5d51], 1        ; 0x1e38
    mov ax, word [bp - 0x0004]       ; 0x1e3d
    inc ax                           ; 0x1e40
    inc ax                           ; 0x1e41
    inc ax                           ; 0x1e42
    push ax                          ; 0x1e43
    mov ax, word [bp - 0x0004]       ; 0x1e44
    inc ax                           ; 0x1e47
    inc ax                           ; 0x1e48
    push ax                          ; 0x1e49
    push ax                          ; 0x1e4a
    push ax                          ; 0x1e4b
    push ax                          ; 0x1e4c
    push ax                          ; 0x1e4d
    push word [bp + 0x4]             ; 0x1e4e
    call math_loc_1c09               ; 0x1e51
    add sp, byte 0x0e                ; 0x1e54
    jmp near @..api_idx_0004_2.l6    ; 0x1e57
    mov ax, word [bp - 0x0004]       ; 0x1e5a
    inc ax                           ; 0x1e5d
    inc ax                           ; 0x1e5e
    push ax                          ; 0x1e5f
    mov ax, word [bp - 0x0004]       ; 0x1e60
    inc ax                           ; 0x1e63
    push ax                          ; 0x1e64
    push ax                          ; 0x1e65
    mov ax, word [bp - 0x0004]       ; 0x1e66
    inc ax                           ; 0x1e69
    inc ax                           ; 0x1e6a
    push ax                          ; 0x1e6b
    push ax                          ; 0x1e6c
    mov ax, word [bp - 0x0004]       ; 0x1e6d
    inc ax                           ; 0x1e70
    push ax                          ; 0x1e71
    push word [bp + 0x4]             ; 0x1e72
    call math_loc_1c09               ; 0x1e75
    add sp, byte 0x0e                ; 0x1e78
    jmp near @..api_idx_0004_2.l6    ; 0x1e7b
