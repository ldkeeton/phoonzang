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
    call loc_1c7f                    ; 0x1cf7
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
    mov cx, 2                        ; 0x1d19
    cwd                              ; 0x1d1c
    idiv cx                          ; 0x1d1d
    inc ax                           ; 0x1d1f
    push ax                          ; 0x1d20
    call loc_1c7f                    ; 0x1d21
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
    mov cx, 2                        ; 0x1d43
    cwd                              ; 0x1d46
    idiv cx                          ; 0x1d47
    inc ax                           ; 0x1d49
    push ax                          ; 0x1d4a
    call loc_1c7f                    ; 0x1d4b
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
    call loc_1c7f                    ; 0x1d8a
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
    cmp byte [bx + 0x5e2f], 2        ; 0x1ecd
    jne short loc_1f47               ; 0x1ed2
    mov ax, 3                        ; 0x1ed4
    imul word [bp + 0x8]             ; 0x1ed7
    push ax                          ; 0x1eda
    mov al, byte [bx + 0x5d67]       ; 0x1edb
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xd0 ; mov dx, ax
    mov cx, 0x15                     ; 0x1ee3
    db 0x2b, 0xc8 ; sub cx, ax
    pop ax                           ; 0x1ee8
    db 0x3b, 0xc1 ; cmp ax, cx
    jle short loc_1f47               ; 0x1eeb
    dec byte [bx + 0x5d67]           ; 0x1eed
    mov ax, 0xb7                     ; 0x1ef1
    push ax                          ; 0x1ef4
    db 0xe8, 0xb1, 0x98 ; call ds_dispatch_b7a9
    pop cx                           ; 0x1ef8
    add ax, 0xb7                     ; 0x1ef9
    cwd                              ; 0x1efc
    push ax                          ; 0x1efd
    push dx                          ; 0x1efe
    mov ax, 0x248                    ; 0x1eff
    imul word [bp + 0xa]             ; 0x1f02
    db 0x8b, 0xd8 ; mov bx, ax
    pop dx                           ; 0x1f07
    pop ax                           ; 0x1f08
    add word [bx + 0x5bfc], ax       ; 0x1f09
    adc word [bx + 0x5bfe], dx       ; 0x1f0d
    mov ax, 0x12                     ; 0x1f11
    push ax                          ; 0x1f14
    db 0xe8, 0x91, 0x98 ; call ds_dispatch_b7a9
    pop cx                           ; 0x1f18
    push ax                          ; 0x1f19
    mov ax, 0x248                    ; 0x1f1a
    imul word [bp + 0xa]             ; 0x1f1d
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d67]       ; 0x1f22
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x1f2a
    db 0x3b, 0xc1 ; cmp ax, cx
    jle short loc_1f42               ; 0x1f2d
    mov byte [bx + 0x5e2f], 3        ; 0x1f2f
    mov word [bx + 0x5c0c], 0        ; 0x1f34
    mov word [bx + 0x5c10], 0        ; 0x1f3a
    jmp short loc_1f47               ; 0x1f40
    mov byte [bx + 0x5e2f], 0        ; 0x1f42
    db 0xe9, 0x42, 0x04 ; jmp near loc_238c
    mov ax, 0x248                    ; 0x1f4a
    imul word [bp + 0xa]             ; 0x1f4d
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d61]       ; 0x1f52
    db 0x2a, 0xe4 ; sub ah, ah
    push ax                          ; 0x1f58
    mov ax, 0x19                     ; 0x1f59
    imul word [bp + 0x8]             ; 0x1f5c
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x1f61
    db 0x2b, 0xc1 ; sub ax, cx
    mov word [bp - 0x0002], ax       ; 0x1f64
    cmp ax, strict word 0            ; 0x1f67
    jge short loc_1f71               ; 0x1f6a
    mov word [bp - 0x0002], 0        ; 0x1f6c
    mov al, byte [bp - 0x0002]       ; 0x1f71
    mov byte [bx + 0x5d61], al       ; 0x1f74
    db 0xe9, 0x11, 0x04 ; jmp near loc_238c
    mov ax, 3                        ; 0x1f7b
    imul word [bp + 0x8]             ; 0x1f7e
    push ax                          ; 0x1f81
    mov ax, 0x248                    ; 0x1f82
    imul word [bp + 0xa]             ; 0x1f85
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d67]       ; 0x1f8a
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xd0 ; mov dx, ax
    mov cx, 0x12                     ; 0x1f92
    db 0x2b, 0xc8 ; sub cx, ax
    pop ax                           ; 0x1f97
    db 0x3b, 0xc1 ; cmp ax, cx
    jle short loc_1fa1               ; 0x1f9a
    mov byte [bx + 0x5d60], 0        ; 0x1f9c
    db 0xe9, 0xe8, 0x03 ; jmp near loc_238c
    mov word [bp - 0x0002], 0        ; 0x1fa4
    jmp short loc_1fe0               ; 0x1fa9
    mov ax, 0x248                    ; 0x1fab
    imul word [bp + 0xa]             ; 0x1fae
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d5c]       ; 0x1fb3
    db 0x2a, 0xe4 ; sub ah, ah
    push ax                          ; 0x1fb9
    mov ax, word [bp + 0x8]          ; 0x1fba
    imul ax                          ; 0x1fbd
    db 0x8b, 0xc8 ; mov cx, ax
    add ax, strict word 4            ; 0x1fc1
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x1fc6
    db 0x2b, 0xc1 ; sub ax, cx
    mov word [bp - 0x0004], ax       ; 0x1fc9
    cmp ax, strict word 0            ; 0x1fcc
    jge short loc_1fd6               ; 0x1fcf
    mov word [bp - 0x0004], 0        ; 0x1fd1
    mov al, byte [bp - 0x0004]       ; 0x1fd6
    mov byte [bx + 0x5d5c], al       ; 0x1fd9
    inc word [bp - 0x0002]           ; 0x1fdd
    mov ax, word [bp - 0x0002]       ; 0x1fe0
    cmp ax, word [data_69c8]         ; 0x1fe3
    jl short loc_1fab                ; 0x1fe7
    db 0xe9, 0xa0, 0x03 ; jmp near loc_238c
    mov word [bp - 0x0004], 1        ; 0x1fec
    mov ax, word [bp - 0x0004]       ; 0x1ff1
    cmp ax, strict word 1            ; 0x1ff4
    je short loc_200d                ; 0x1ff7
    cmp ax, strict word 2            ; 0x1ff9
    db 0x74, 0x0f ; je short loc_200d
    cmp ax, strict word 4            ; 0x1ffe
    db 0x74, 0x0a ; je short loc_200d
    cmp ax, strict word 8            ; 0x2003
    db 0x74, 0x05 ; je short loc_200d
    cmp ax, strict word 9            ; 0x2008
    jne short loc_2046               ; 0x200b
    mov ax, 0x248                    ; 0x200d
    imul word [bp + 0xa]             ; 0x2010
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, word [bp - 0x0004]       ; 0x2015
    db 0x03, 0xc8 ; add cx, ax
    db 0x8b, 0xd9 ; mov bx, cx
    mov al, byte [bx + 0x5d5a]       ; 0x201c
    db 0x2a, 0xe4 ; sub ah, ah
    push ax                          ; 0x2022
    mov ax, word [bp + 0x8]          ; 0x2023
    imul ax                          ; 0x2026
    db 0x8b, 0xc8 ; mov cx, ax
    add ax, strict word 4            ; 0x202a
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x202f
    db 0x2b, 0xc1 ; sub ax, cx
    mov word [bp - 0x0002], ax       ; 0x2032
    cmp ax, strict word 0            ; 0x2035
    jge short loc_203f               ; 0x2038
    mov word [bp - 0x0002], 0        ; 0x203a
    mov al, byte [bp - 0x0002]       ; 0x203f
    mov byte [bx + 0x5d5a], al       ; 0x2042
    inc word [bp - 0x0004]           ; 0x2046
    mov ax, word [bp - 0x0004]       ; 0x2049
    cmp ax, strict word 9            ; 0x204c
    jle short loc_1ff1               ; 0x204f
    db 0xe9, 0x38, 0x03 ; jmp near loc_238c
    mov ax, 0                        ; 0x2054
    cmp word [bp + 0x6], byte 0x58   ; 0x2057
    je short loc_2060                ; 0x205b
    mov ax, word [bp + 0xa]          ; 0x205d
    mov word [bp - 0x0002], ax       ; 0x2060
    mov ax, word [data_69c8]         ; 0x2063
    cmp word [bp + 0x6], byte 0x58   ; 0x2066
    je short loc_2070                ; 0x206a
    mov ax, word [bp + 0xa]          ; 0x206c
    inc ax                           ; 0x206f
    mov word [bp - 0x0004], ax       ; 0x2070
    mov ax, 4                        ; 0x2073
    cmp word [bp + 0x6], byte 0x58   ; 0x2076
    je short loc_207f                ; 0x207a
    mov ax, 7                        ; 0x207c
    mov word [bp - 0x0006], ax       ; 0x207f
    mov ax, 0                        ; 0x2082
    cmp word [bp + 0x6], byte 0x58   ; 0x2085
    je short loc_208e                ; 0x2089
    mov ax, word [bp + 0x8]          ; 0x208b
    mov word [bp - 0x0008], ax       ; 0x208e
    jmp short loc_20f9               ; 0x2091
    mov ax, 0x248                    ; 0x2093
    imul word [bp - 0x0002]          ; 0x2096
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x5c0e]          ; 0x209b
    mov ax, 0                        ; 0x209f
    push ax                          ; 0x20a2
    push word [bp - 0x0008]          ; 0x20a3
    push word [bp - 0x0006]          ; 0x20a6
    push word [bp + 0x8]             ; 0x20a9
    db 0xe8, 0x3b, 0xb0 ; call ds_dispatch_d0ea
    add sp, byte 6                   ; 0x20af
    db 0x8b, 0xc8 ; mov cx, ax
    sub sp, byte 4                   ; 0x20b4
    db 0x8b, 0xc4 ; mov ax, sp
    mov dx, ss                       ; 0x20b9
    mov es, dx                       ; 0x20bb
    db 0x8b, 0xf1 ; mov si, cx
    db 0x8b, 0xf8 ; mov di, ax
    movsw                            ; 0x20c1
    movsw                            ; 0x20c2
    db 0xe8, 0xf8, 0xaf ; call ds_dispatch_d0be
    add sp, byte 4                   ; 0x20c6
    push ax                          ; 0x20c9
    mov ax, 0x248                    ; 0x20ca
    imul word [bp - 0x0002]          ; 0x20cd
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x20d2
    add ax, word [bx + 0x5c0c]       ; 0x20d3
    push ax                          ; 0x20d7
    db 0xe8, 0xe7, 0x96 ; call ds_dispatch_b7c2
    add sp, byte 6                   ; 0x20db
    push ax                          ; 0x20de
    mov ax, 0x248                    ; 0x20df
    imul word [bp - 0x0002]          ; 0x20e2
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x20e7
    mov word [bx + 0x5c0c], ax       ; 0x20e8
    add word [bx + 0x5bfc], byte 1   ; 0x20ec
    adc word [bx + 0x5bfe], byte 0   ; 0x20f1
    inc word [bp - 0x0002]           ; 0x20f6
    mov ax, word [bp - 0x0002]       ; 0x20f9
    cmp ax, word [bp - 0x0004]       ; 0x20fc
    jl short loc_2093                ; 0x20ff
    db 0xe9, 0x88, 0x02 ; jmp near loc_238c
    mov ax, 0x248                    ; 0x2104
    imul word [bp + 0xa]             ; 0x2107
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5e2f], 3        ; 0x210c
    je short loc_2116                ; 0x2111
    jmp near loc_2191                ; 0x2113
    mov ax, 3                        ; 0x2116
    imul word [bp + 0x8]             ; 0x2119
    push ax                          ; 0x211c
    mov al, byte [bx + 0x5d67]       ; 0x211d
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xd0 ; mov dx, ax
    mov cx, 0x15                     ; 0x2125
    db 0x2b, 0xc8 ; sub cx, ax
    pop ax                           ; 0x212a
    db 0x3b, 0xc1 ; cmp ax, cx
    jle short loc_2191               ; 0x212d
    dec byte [bx + 0x5d67]           ; 0x212f
    mov byte [bx + 0x5e2f], 0        ; 0x2133
    push word [bx + 0x5c0e]          ; 0x2138
    mov ax, 1                        ; 0x213c
    push ax                          ; 0x213f
    mov ax, word [bx + 0x5c0e]       ; 0x2140
    mov cx, 3                        ; 0x2144
    cwd                              ; 0x2147
    idiv cx                          ; 0x2148
    push ax                          ; 0x214a
    db 0xe8, 0x74, 0x96 ; call ds_dispatch_b7c2
    add sp, byte 6                   ; 0x214e
    push ax                          ; 0x2151
    mov ax, 0x248                    ; 0x2152
    imul word [bp + 0xa]             ; 0x2155
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x215a
    mov word [bx + 0x5c0c], ax       ; 0x215b
    mov ax, word [bx + 0x5c12]       ; 0x215f
    mov cx, 0xa                      ; 0x2163
    cwd                              ; 0x2166
    idiv cx                          ; 0x2167
    mov word [bx + 0x5c10], ax       ; 0x2169
    inc word [bx + 0x5c1a]           ; 0x216d
    mov ax, 0xb7                     ; 0x2171
    push ax                          ; 0x2174
    db 0xe8, 0x31, 0x96 ; call ds_dispatch_b7a9
    pop cx                           ; 0x2178
    add ax, 0x16d                    ; 0x2179
    cwd                              ; 0x217c
    push ax                          ; 0x217d
    push dx                          ; 0x217e
    mov ax, 0x248                    ; 0x217f
    imul word [bp + 0xa]             ; 0x2182
    db 0x8b, 0xd8 ; mov bx, ax
    pop dx                           ; 0x2187
    pop ax                           ; 0x2188
    add word [bx + 0x5bfc], ax       ; 0x2189
    adc word [bx + 0x5bfe], dx       ; 0x218d
    db 0xe9, 0xf8, 0x01 ; jmp near loc_238c
    push word [bp + 0x8]             ; 0x2194
    call api_idx_000e                ; 0x2197
    pop cx                           ; 0x219a
    cmp ax, strict word 0xffff       ; 0x219b
    jne short loc_21a0               ; 0x219e
    db 0xe9, 0xe9, 0x01 ; jmp near loc_238c
    mov ax, 0                        ; 0x21a3
    push ax                          ; 0x21a6
    push ax                          ; 0x21a7
    push word [bp + 0x8]             ; 0x21a8
    call api_idx_0012                ; 0x21ab
    add sp, byte 6                   ; 0x21ae
    db 0xe9, 0xd8, 0x01 ; jmp near loc_238c
    mov ax, 1                        ; 0x21b4
    push ax                          ; 0x21b7
    mov ax, 0                        ; 0x21b8
    push ax                          ; 0x21bb
    push word [bp + 0x8]             ; 0x21bc
    call api_idx_0012                ; 0x21bf
    add sp, byte 6                   ; 0x21c2
    db 0xe9, 0xc4, 0x01 ; jmp near loc_238c
    push word [bp + 0x8]             ; 0x21c8
    mov ax, 8                        ; 0x21cb
    push ax                          ; 0x21ce
    push word [bp + 0x8]             ; 0x21cf
    db 0xe8, 0x15, 0xaf ; call ds_dispatch_d0ea
    add sp, byte 6                   ; 0x21d5
    db 0x8b, 0xc8 ; mov cx, ax
    sub sp, byte 4                   ; 0x21da
    db 0x8b, 0xc4 ; mov ax, sp
    mov dx, ss                       ; 0x21df
    mov es, dx                       ; 0x21e1
    db 0x8b, 0xf1 ; mov si, cx
    db 0x8b, 0xf8 ; mov di, ax
    movsw                            ; 0x21e7
    movsw                            ; 0x21e8
    db 0xe8, 0xd2, 0xae ; call ds_dispatch_d0be
    add sp, byte 4                   ; 0x21ec
    mov word [bp - 0x0002], ax       ; 0x21ef
    push ax                          ; 0x21f2
    mov ax, 0x248                    ; 0x21f3
    imul word [bp + 0x4]             ; 0x21f6
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x21fb
    add word [bx + 0x5c10], ax       ; 0x21fc
    mov ax, word [bx + 0x5c10]       ; 0x2200
    cmp ax, word [bx + 0x5c12]       ; 0x2204
    jle short loc_2212               ; 0x2208
    mov ax, word [bx + 0x5c12]       ; 0x220a
    mov word [bx + 0x5c10], ax       ; 0x220e
    mov ax, 0                        ; 0x2212
    push ax                          ; 0x2215
    mov ax, 2                        ; 0x2216
    push ax                          ; 0x2219
    push word [bp + 0x8]             ; 0x221a
    db 0xe8, 0xca, 0xae ; call ds_dispatch_d0ea
    add sp, byte 6                   ; 0x2220
    db 0x8b, 0xc8 ; mov cx, ax
    sub sp, byte 4                   ; 0x2225
    db 0x8b, 0xc4 ; mov ax, sp
    mov dx, ss                       ; 0x222a
    mov es, dx                       ; 0x222c
    db 0x8b, 0xf1 ; mov si, cx
    db 0x8b, 0xf8 ; mov di, ax
    movsw                            ; 0x2232
    movsw                            ; 0x2233
    db 0xe8, 0x87, 0xae ; call ds_dispatch_d0be
    add sp, byte 4                   ; 0x2237
    mov word [bp - 0x0002], ax       ; 0x223a
    push ax                          ; 0x223d
    mov ax, 0x248                    ; 0x223e
    imul word [bp + 0x4]             ; 0x2241
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x2246
    add word [bx + 0x5c0c], ax       ; 0x2247
    mov ax, word [bx + 0x5c0c]       ; 0x224b
    cmp ax, word [bx + 0x5c0e]       ; 0x224f
    jle short loc_225d               ; 0x2253
    mov ax, word [bx + 0x5c0e]       ; 0x2255
    mov word [bx + 0x5c0c], ax       ; 0x2259
    db 0xe9, 0x2c, 0x01 ; jmp near loc_238c
    mov word [bp - 0x0002], 0        ; 0x2260
    mov ax, 0                        ; 0x2265
    push ax                          ; 0x2268
    mov ax, 0xa                      ; 0x2269
    push ax                          ; 0x226c
    push word [bp + 0x8]             ; 0x226d
    db 0xe8, 0x77, 0xae ; call ds_dispatch_d0ea
    add sp, byte 6                   ; 0x2273
    db 0x8b, 0xc8 ; mov cx, ax
    sub sp, byte 4                   ; 0x2278
    db 0x8b, 0xc4 ; mov ax, sp
    mov dx, ss                       ; 0x227d
    mov es, dx                       ; 0x227f
    db 0x8b, 0xf1 ; mov si, cx
    db 0x8b, 0xf8 ; mov di, ax
    movsw                            ; 0x2285
    movsw                            ; 0x2286
    db 0xe8, 0x34, 0xae ; call ds_dispatch_d0be
    add sp, byte 4                   ; 0x228a
    mov word [bp - 0x0004], ax       ; 0x228d
    push ax                          ; 0x2290
    mov ax, 0x248                    ; 0x2291
    imul word [bp + 0x4]             ; 0x2294
    db 0x8b, 0xc8 ; mov cx, ax
    mov dx, word [bp - 0x0002]       ; 0x2299
    shl dx, 1                        ; 0x229c
    shl dx, 1                        ; 0x229e
    db 0x03, 0xc2 ; add ax, dx
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x22a4
    add word [bx + 0x5c1c], ax       ; 0x22a5
    mov ax, word [bx + 0x5c1c]       ; 0x22a9
    cmp ax, word [bx + 0x5c1e]       ; 0x22ad
    jle short loc_22bb               ; 0x22b1
    mov ax, word [bx + 0x5c1e]       ; 0x22b3
    mov word [bx + 0x5c1c], ax       ; 0x22b7
    inc word [bp - 0x0002]           ; 0x22bb
    mov ax, word [bp - 0x0002]       ; 0x22be
    cmp ax, strict word 6            ; 0x22c1
    jl short loc_2265                ; 0x22c4
    db 0xe9, 0xc3, 0x00 ; jmp near loc_238c
    mov word [bp - 0x0002], 1        ; 0x22c9
    mov word [bp - 0x0006], 0xa      ; 0x22ce
    mov word [bp - 0x0008], 0        ; 0x22d3
    mov ax, 0x248                    ; 0x22d8
    imul word [bp + 0x4]             ; 0x22db
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d86]       ; 0x22e0
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp - 0x0006]       ; 0x22e6
    jl short loc_22ee                ; 0x22e9
    inc word [bp - 0x0002]           ; 0x22eb
    mov ax, word [bp - 0x0006]       ; 0x22ee
    shl ax, 1                        ; 0x22f1
    add ax, strict word 0xa          ; 0x22f3
    mov word [bp - 0x0006], ax       ; 0x22f6
    inc word [bp - 0x0008]           ; 0x22f9
    mov ax, word [bp - 0x0008]       ; 0x22fc
    cmp ax, strict word 3            ; 0x22ff
    jl short loc_22d8                ; 0x2302
    mov ax, 0                        ; 0x2304
    push ax                          ; 0x2307
    mov ax, 1                        ; 0x2308
    push ax                          ; 0x230b
    push word [bp - 0x0002]          ; 0x230c
    call api_idx_0012                ; 0x230f
    add sp, byte 6                   ; 0x2312
    jmp short loc_238c               ; 0x2315
    push word [bp + 0x8]             ; 0x2317
    call api_idx_00fa                ; 0x231a
    pop cx                           ; 0x231d
    db 0xeb, 0x6c ; jmp short loc_238c
@..api_idx_0008.l1:
    mov cx, 0x1a                     ; 0x2320
    call leaf_loc_4717               ; 0x2323

    db 0x0c, 0x00, 0x11, 0x00, 0x13, 0x00, 0x19, 0x00, 0x21, 0x00, 0x25, 0x00, 0x2e, 0x00, 0x2f, 0x00
    db 0x31, 0x00, 0x38, 0x00, 0x3d, 0x00, 0x3f, 0x00, 0x42, 0x00, 0x45, 0x00, 0x48, 0x00, 0x4b, 0x00
    db 0x4d, 0x00, 0x4e, 0x00, 0x52, 0x00, 0x54, 0x00, 0x58, 0x00, 0x5e, 0x00, 0x61, 0x00, 0x62, 0x00
    db 0x63, 0x00, 0xdd, 0x6d, 0x83, 0x6e, 0xdd, 0x6d, 0xc2, 0x6f, 0xb4, 0x6e, 0x9e, 0x6d, 0xab, 0x6d
    db 0xdb, 0x71, 0x74, 0x6d, 0x0c
    db 'o3p"m'
    db 0xeb, 0x6f, 0x91, 0x6f, 0xea, 0x71, 0xfb, 0x71, 0x5e, 0x73, 0x9b, 0x70, 0x4a, 0x6d, 0xb8, 0x6d
    db 0x9b, 0x70, 0x4b, 0x71, 0x0f, 0x72, 0xa7, 0x72, 0x10, 0x73, 0xd3, 0x73, 0xc3

