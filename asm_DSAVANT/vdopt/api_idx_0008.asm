api_idx_0008:
    mov ax, 0xfff8                   ; 0x1ccf
    call ds_dispatch_f40b            ; 0x1cd2
    mov ax, word [bp + 0x6]          ; 0x1cd5
    jmp near @..api_idx_0008.l1      ; 0x1cd8
    mov ax, 0x32                     ; 0x1cdb
    imul word [bp + 0x8]             ; 0x1cde
    add word [data_82fe], ax         ; 0x1ce1
    mov ax, 0                        ; 0x1ce5
    push ax                          ; 0x1ce8
    push word [data_8300]            ; 0x1ce9
    mov ax, 5                        ; 0x1ced
    imul word [bp + 0x8]             ; 0x1cf0
    add ax, strict word 0x46         ; 0x1cf3
    push ax                          ; 0x1cf6
    call math_loc_1c7f               ; 0x1cf7
    add sp, byte 6                   ; 0x1cfa
    mov word [data_8300], ax         ; 0x1cfd
    jmp near loc_238c                ; 0x1d00
    mov ax, 0x23                     ; 0x1d03
    imul word [bp + 0x8]             ; 0x1d06
    add word [data_82f2], ax         ; 0x1d09
    mov ax, 0                        ; 0x1d0d
    push ax                          ; 0x1d10
    push word [data_82f4]            ; 0x1d11
    mov ax, word [bp + 0x8]          ; 0x1d15
    dec ax                           ; 0x1d18
    mov cx, data_0002                ; 0x1d19
    cwd                              ; 0x1d1c
    idiv cx                          ; 0x1d1d
    inc ax                           ; 0x1d1f
    push ax                          ; 0x1d20
    call math_loc_1c7f               ; 0x1d21
    add sp, byte 6                   ; 0x1d24
    mov word [data_82f4], ax         ; 0x1d27
    jmp near loc_238c                ; 0x1d2a
    mov ax, 0x32                     ; 0x1d2d
    imul word [bp + 0x8]             ; 0x1d30
    add word [data_82f6], ax         ; 0x1d33
    mov ax, 0                        ; 0x1d37
    push ax                          ; 0x1d3a
    push word [data_82f8]            ; 0x1d3b
    mov ax, word [bp + 0x8]          ; 0x1d3f
    dec ax                           ; 0x1d42
    mov cx, data_0002                ; 0x1d43
    cwd                              ; 0x1d46
    idiv cx                          ; 0x1d47
    inc ax                           ; 0x1d49
    push ax                          ; 0x1d4a
    call math_loc_1c7f               ; 0x1d4b
    add sp, byte 6                   ; 0x1d4e
    mov word [data_82f8], ax         ; 0x1d51
    jmp near loc_238c                ; 0x1d54
    mov ax, 5                        ; 0x1d57
    imul word [bp + 0x8]             ; 0x1d5a
    add word [data_8306], ax         ; 0x1d5d
    jmp near loc_238c                ; 0x1d61
    mov ax, 0x64                     ; 0x1d64
    imul word [bp + 0x8]             ; 0x1d67
    add word [data_8302], ax         ; 0x1d6a
    jmp near loc_238c                ; 0x1d6e
    mov ax, 0x32                     ; 0x1d71
    imul word [bp + 0x8]             ; 0x1d74
    add word [data_82fa], ax         ; 0x1d77
    mov ax, 0                        ; 0x1d7b
    push ax                          ; 0x1d7e
    push word [data_82fc]            ; 0x1d7f
    mov ax, 5                        ; 0x1d83
    imul word [bp + 0x8]             ; 0x1d86
    push ax                          ; 0x1d89
    call math_loc_1c7f               ; 0x1d8a
    add sp, byte 6                   ; 0x1d8d
    mov word [data_82fc], ax         ; 0x1d90
    jmp near loc_238c                ; 0x1d93
    mov ax, 0                        ; 0x1d96
    cmp word [bp + 0x6], byte 0x13   ; 0x1d99
    je short loc_1da2                ; 0x1d9d
    mov ax, word [bp + 0xa]          ; 0x1d9f
    mov word [bp - 0x0002], ax       ; 0x1da2
    mov ax, word [data_69c8]         ; 0x1da5
    cmp word [bp + 0x6], byte 0x13   ; 0x1da8
    je short loc_1db2                ; 0x1dac
    mov ax, word [bp + 0xa]          ; 0x1dae
    inc ax                           ; 0x1db1
    mov word [bp - 0x0004], ax       ; 0x1db2
    mov ax, word [bp + 0x8]          ; 0x1db5
    cmp word [bp + 0x6], byte 0x13   ; 0x1db8
    je short loc_1dc0                ; 0x1dbc
    shl ax, 1                        ; 0x1dbe
    mov word [bp - 0x0006], ax       ; 0x1dc0
    mov ax, 0                        ; 0x1dc3
    cmp word [bp + 0x6], byte 0x13   ; 0x1dc6
    je short loc_1dcf                ; 0x1dca
    mov ax, word [bp + 0x8]          ; 0x1dcc
    mov word [bp - 0x0008], ax       ; 0x1dcf
    jmp short loc_1e31               ; 0x1dd2
    mov ax, 0x248                    ; 0x1dd4
    imul word [bp - 0x0002]          ; 0x1dd7
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x5c12]          ; 0x1ddc
    mov ax, 0                        ; 0x1de0
    push ax                          ; 0x1de3
    push word [bp - 0x0008]          ; 0x1de4
    mov ax, 8                        ; 0x1de7
    push ax                          ; 0x1dea
    push word [bp - 0x0006]          ; 0x1deb
    db 0xe8, 0xf9, 0xb2 ; call ds_dispatch_d0ea
    add sp, byte 6                   ; 0x1df1
    db 0x8b, 0xc8 ; mov cx, ax
    sub sp, byte 4                   ; 0x1df6
    db 0x8b, 0xc4 ; mov ax, sp
    mov dx, ss                       ; 0x1dfb
    mov es, dx                       ; 0x1dfd
    db 0x8b, 0xf1 ; mov si, cx
    db 0x8b, 0xf8 ; mov di, ax
    movsw                            ; 0x1e03
    movsw                            ; 0x1e04
    db 0xe8, 0xb6, 0xb2 ; call ds_dispatch_d0be
    add sp, byte 4                   ; 0x1e08
    push ax                          ; 0x1e0b
    mov ax, 0x248                    ; 0x1e0c
    imul word [bp - 0x0002]          ; 0x1e0f
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x1e14
    add ax, word [bx + 0x5c10]       ; 0x1e15
    push ax                          ; 0x1e19
    db 0xe8, 0xa5, 0x99 ; call ds_dispatch_b7c2
    add sp, byte 6                   ; 0x1e1d
    push ax                          ; 0x1e20
    mov ax, 0x248                    ; 0x1e21
    imul word [bp - 0x0002]          ; 0x1e24
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x1e29
    mov word [bx + 0x5c10], ax       ; 0x1e2a
    inc word [bp - 0x0002]           ; 0x1e2e
    mov ax, word [bp - 0x0002]       ; 0x1e31
    cmp ax, word [bp - 0x0004]       ; 0x1e34
    jl short loc_1dd4                ; 0x1e37
    jmp near loc_238c                ; 0x1e39
    mov ax, 0x248                    ; 0x1e3c
    imul word [bp + 0xa]             ; 0x1e3f
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d5d]       ; 0x1e44
    db 0x2a, 0xe4 ; sub ah, ah
    push ax                          ; 0x1e4a
    mov ax, 0x19                     ; 0x1e4b
    imul word [bp + 0x8]             ; 0x1e4e
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x1e53
    db 0x2b, 0xc1 ; sub ax, cx
    mov word [bp - 0x0002], ax       ; 0x1e56
    cmp ax, strict word 0            ; 0x1e59
    jge short loc_1e63               ; 0x1e5c
    mov word [bp - 0x0002], 0        ; 0x1e5e
    mov al, byte [bp - 0x0002]       ; 0x1e63
    mov byte [bx + 0x5d5d], al       ; 0x1e66
    db 0xe9, 0x1f, 0x05 ; jmp near loc_238c
    mov ax, 0x248                    ; 0x1e6d
    imul word [bp + 0xa]             ; 0x1e70
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5e32]       ; 0x1e75
    db 0x2a, 0xe4 ; sub ah, ah
    sub ax, word [bp + 0x8]          ; 0x1e7b
    mov word [bp - 0x0002], ax       ; 0x1e7e
    cmp ax, strict word 0            ; 0x1e81
    jg short loc_1e90                ; 0x1e84
    mov word [bp - 0x0002], 0        ; 0x1e86
    mov byte [bx + 0x5d5f], 0        ; 0x1e8b
    mov al, byte [bp - 0x0002]       ; 0x1e90
    mov byte [bx + 0x5e32], al       ; 0x1e93
    mov al, byte [bx + 0x5d5f]       ; 0x1e97
    db 0x2a, 0xe4 ; sub ah, ah
    push ax                          ; 0x1e9d
    mov ax, 5                        ; 0x1e9e
    imul word [bp + 0x8]             ; 0x1ea1
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x1ea6
    db 0x2b, 0xc1 ; sub ax, cx
    mov word [bp - 0x0002], ax       ; 0x1ea9
    cmp ax, strict word 0            ; 0x1eac
    jg short loc_1ebb                ; 0x1eaf
    mov word [bp - 0x0002], 0        ; 0x1eb1
    mov byte [bx + 0x5e32], 0        ; 0x1eb6
    mov al, byte [bp - 0x0002]       ; 0x1ebb
    mov byte [bx + 0x5d5f], al       ; 0x1ebe
    db 0xe9, 0xc7, 0x04 ; jmp near loc_238c
    mov ax, 0x248                    ; 0x1ec5
    imul word [bp + 0xa]             ; 0x1ec8
    db 0x8b, 0xd8 ; mov bx, ax
