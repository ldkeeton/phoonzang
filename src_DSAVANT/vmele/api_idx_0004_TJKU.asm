; auto-generated
api_idx_0004_TJKU:
    mov ax, 0xfffc                   ; 0x0c67
    call aztec_csav                  ; 0x0c6a
    mov word [bp - 0x0004], 0        ; 0x0c6d
    mov al, byte [bss_69c8]          ; 0x0c72
    mov cx, word [bp - 0x0004]       ; 0x0c75
    shl cx, 1                        ; 0x0c78
    mov bx, cx                       ; 0x0c7a
    mov bx, word [bx + party_char]   ; 0x0c7c
    mov byte [bx + 0x1a1], al        ; 0x0c80
    mov word [bp - 0x0002], 0        ; 0x0c84
@..api_idx_0004_TJKU.l1:
    mov ax, word [bp - 0x0004]       ; 0x0c89
    shl ax, 1                        ; 0x0c8c
    mov bx, ax                       ; 0x0c8e
    mov bx, word [bx + party_char]   ; 0x0c90
    mov si, word [bp - 0x0002]       ; 0x0c94
    mov byte [bx + si + 0x18c], 0    ; 0x0c97
    inc word [bp - 0x0002]           ; 0x0c9c
    mov ax, word [bp - 0x0002]       ; 0x0c9f
    cmp ax, strict word 6            ; 0x0ca2
    jl short @..api_idx_0004_TJKU.l1 ; 0x0ca5
    cmp word [bss_82fa], byte 0      ; 0x0ca7
    jle short @..api_idx_0004_TJKU.l2 ; 0x0cac
    mov al, byte [bss_82fc]          ; 0x0cae
    mov cx, word [bp - 0x0004]       ; 0x0cb1
    shl cx, 1                        ; 0x0cb4
    mov bx, cx                       ; 0x0cb6
    mov bx, word [bx + party_char]   ; 0x0cb8
    mov byte [bx + 0x190], al        ; 0x0cbc
@..api_idx_0004_TJKU.l2:
    mov word [bp - 0x0002], 0        ; 0x0cc0
@..api_idx_0004_TJKU.l3:
    mov ax, word [bp - 0x0004]       ; 0x0cc5
    shl ax, 1                        ; 0x0cc8
    mov bx, ax                       ; 0x0cca
    mov bx, word [bx + party_char]   ; 0x0ccc
    mov si, word [bp - 0x0002]       ; 0x0cd0
    mov byte [bx + si + 0x192], 0    ; 0x0cd3
    inc word [bp - 0x0002]           ; 0x0cd8
    mov ax, word [bp - 0x0002]       ; 0x0cdb
    cmp ax, strict word 6            ; 0x0cde
    jl short @..api_idx_0004_TJKU.l3 ; 0x0ce1
    mov word [bp - 0x0002], 0        ; 0x0ce3
    jmp near @..api_idx_0004_TJKU.l9 ; 0x0ce8
@..api_idx_0004_TJKU.l4:
    mov ax, 0x248                    ; 0x0ceb
    imul word [bp - 0x0002]          ; 0x0cee
    mov bx, ax                       ; 0x0cf1
    mov ax, word [bx + pc_spell_power_cap] ; 0x0cf3
    push ax                          ; 0x0cf7
    mov ax, 0x2c                     ; 0x0cf8
    imul word [bp - 0x0002]          ; 0x0cfb
    mov si, ax                       ; 0x0cfe
    mov ax, word [bp - 0x0004]       ; 0x0d00
    shl ax, 1                        ; 0x0d03
    mov bx, ax                       ; 0x0d05
    mov bx, word [bx + party_char]   ; 0x0d07
    pop ax                           ; 0x0d0b
    mov word [bx + si], ax           ; 0x0d0c
    mov ax, 0x248                    ; 0x0d0e
    imul word [bp - 0x0002]          ; 0x0d11
    mov bx, ax                       ; 0x0d14
    mov ax, word [bx + bss_5c0a + 0x4] ; 0x0d16
    push ax                          ; 0x0d1a
    mov ax, 0x2c                     ; 0x0d1b
    imul word [bp - 0x0002]          ; 0x0d1e
    mov si, ax                       ; 0x0d21
    mov ax, word [bp - 0x0004]       ; 0x0d23
    shl ax, 1                        ; 0x0d26
    mov bx, ax                       ; 0x0d28
    mov bx, word [bx + party_char]   ; 0x0d2a
    pop ax                           ; 0x0d2e
    mov word [bx + si + 0x4], ax     ; 0x0d2f
    mov ax, 0x248                    ; 0x0d32
    imul word [bp - 0x0002]          ; 0x0d35
    mov bx, ax                       ; 0x0d38
    mov ax, word [bx + bss_5c0a + 0x2] ; 0x0d3a
    push ax                          ; 0x0d3e
    mov ax, 0x2c                     ; 0x0d3f
    imul word [bp - 0x0002]          ; 0x0d42
    mov si, ax                       ; 0x0d45
    mov ax, word [bp - 0x0004]       ; 0x0d47
    shl ax, 1                        ; 0x0d4a
    mov bx, ax                       ; 0x0d4c
    mov bx, word [bx + party_char]   ; 0x0d4e
    pop ax                           ; 0x0d52
    mov word [bx + si + 0x2], ax     ; 0x0d53
    mov ax, 0x248                    ; 0x0d56
    imul word [bp - 0x0002]          ; 0x0d59
    mov bx, ax                       ; 0x0d5c
    mov ax, word [bx + pc_records + 0x2] ; 0x0d5e
    push ax                          ; 0x0d62
    mov ax, 0x2c                     ; 0x0d63
    imul word [bp - 0x0002]          ; 0x0d66
    mov si, ax                       ; 0x0d69
    mov ax, word [bp - 0x0004]       ; 0x0d6b
    shl ax, 1                        ; 0x0d6e
    mov bx, ax                       ; 0x0d70
    mov bx, word [bx + party_char]   ; 0x0d72
    pop ax                           ; 0x0d76
    mov word [bx + si + 0x8], ax     ; 0x0d77
    mov ax, 0x248                    ; 0x0d7a
    imul word [bp - 0x0002]          ; 0x0d7d
    mov bx, ax                       ; 0x0d80
    mov ax, word [bx + pc_records]   ; 0x0d82
    push ax                          ; 0x0d86
    mov ax, 0x2c                     ; 0x0d87
    imul word [bp - 0x0002]          ; 0x0d8a
    mov si, ax                       ; 0x0d8d
    mov ax, word [bp - 0x0004]       ; 0x0d8f
    shl ax, 1                        ; 0x0d92
    mov bx, ax                       ; 0x0d94
    mov bx, word [bx + party_char]   ; 0x0d96
    pop ax                           ; 0x0d9a
    mov word [bx + si + 0x6], ax     ; 0x0d9b
    mov ax, 0x248                    ; 0x0d9e
    imul word [bp - 0x0002]          ; 0x0da1
    mov bx, ax                       ; 0x0da4
    mov al, byte [bx + bss_5e2a + 0x5] ; 0x0da6
    push ax                          ; 0x0daa
    mov ax, 0x2c                     ; 0x0dab
    imul word [bp - 0x0002]          ; 0x0dae
    mov si, ax                       ; 0x0db1
    mov ax, word [bp - 0x0004]       ; 0x0db3
    shl ax, 1                        ; 0x0db6
    mov bx, ax                       ; 0x0db8
    mov bx, word [bx + party_char]   ; 0x0dba
    pop ax                           ; 0x0dbe
    mov byte [bx + si + 0x22], al    ; 0x0dbf
    mov ax, 0xa                      ; 0x0dc2
    push ax                          ; 0x0dc5
    mov ax, 0x2c                     ; 0x0dc6
    imul word [bp - 0x0002]          ; 0x0dc9
    mov cx, ax                       ; 0x0dcc
    mov ax, word [bp - 0x0004]       ; 0x0dce
    shl ax, 1                        ; 0x0dd1
    mov bx, ax                       ; 0x0dd3
    mov ax, word [bx + party_char]   ; 0x0dd5
    add ax, cx                       ; 0x0dd9
    add ax, strict word 0xe          ; 0x0ddb
    push ax                          ; 0x0dde
    mov ax, 0x248                    ; 0x0ddf
    imul word [bp - 0x0002]          ; 0x0de2
    add ax, cell_key_grid + 0x126    ; 0x0de5
    push ax                          ; 0x0de8
    call aztec_movmem                ; 0x0de9
    add sp, byte 6                   ; 0x0dec
    mov ax, 0x248                    ; 0x0def
    imul word [bp - 0x0002]          ; 0x0df2
    mov bx, ax                       ; 0x0df5
    mov al, byte [bx + bss_5e2a + 0x8] ; 0x0df7
    push ax                          ; 0x0dfb
    mov ax, 0x2c                     ; 0x0dfc
    imul word [bp - 0x0002]          ; 0x0dff
    mov si, ax                       ; 0x0e02
    mov ax, word [bp - 0x0004]       ; 0x0e04
    shl ax, 1                        ; 0x0e07
    mov bx, ax                       ; 0x0e09
    mov bx, word [bx + party_char]   ; 0x0e0b
    pop ax                           ; 0x0e0f
    mov byte [bx + si + 0x23], al    ; 0x0e10
    mov ax, 0x2c                     ; 0x0e13
    imul word [bp - 0x0002]          ; 0x0e16
    mov si, ax                       ; 0x0e19
    mov ax, word [bp - 0x0004]       ; 0x0e1b
    shl ax, 1                        ; 0x0e1e
    mov bx, ax                       ; 0x0e20
    mov bx, word [bx + party_char]   ; 0x0e22
    mov byte [bx + si + 0x2a], 0xff  ; 0x0e26
    mov ax, 0x2c                     ; 0x0e2a
    imul word [bp - 0x0002]          ; 0x0e2d
    mov si, ax                       ; 0x0e30
    mov ax, word [bp - 0x0004]       ; 0x0e32
    shl ax, 1                        ; 0x0e35
    mov bx, ax                       ; 0x0e37
    mov bx, word [bx + party_char]   ; 0x0e39
    mov byte [bx + si + 0x1f], 1     ; 0x0e3d
    mov ax, 0x248                    ; 0x0e41
    imul word [bp - 0x0002]          ; 0x0e44
    mov bx, ax                       ; 0x0e47
    cmp byte [bx + cell_key_grid + 0x14e], 0 ; 0x0e49
    jbe short @..api_idx_0004_TJKU.l5 ; 0x0e4e
    mov ax, 0x2c                     ; 0x0e50
    imul word [bp - 0x0002]          ; 0x0e53
    mov si, ax                       ; 0x0e56
    mov ax, word [bp - 0x0004]       ; 0x0e58
    shl ax, 1                        ; 0x0e5b
    mov bx, ax                       ; 0x0e5d
    mov bx, word [bx + party_char]   ; 0x0e5f
    mov al, byte [bx + si + 0x28]    ; 0x0e63
    cbw                              ; 0x0e66
    push ax                          ; 0x0e67
    mov ax, 0x248                    ; 0x0e68
    imul word [bp - 0x0002]          ; 0x0e6b
    mov bx, ax                       ; 0x0e6e
    mov al, byte [bx + cell_key_grid + 0x14e] ; 0x0e70
    sub ah, ah                       ; 0x0e74
    mov cx, 0xa                      ; 0x0e76
    cwd                              ; 0x0e79
    idiv cx                          ; 0x0e7a
    mov cx, ax                       ; 0x0e7c
    pop ax                           ; 0x0e7e
    add ax, cx                       ; 0x0e7f
    inc ax                           ; 0x0e81
    inc ax                           ; 0x0e82
    mov cx, word [bp - 0x0004]       ; 0x0e83
    shl cx, 1                        ; 0x0e86
    mov bx, cx                       ; 0x0e88
    mov bx, word [bx + party_char]   ; 0x0e8a
    mov byte [bx + si + 0x28], al    ; 0x0e8e
@..api_idx_0004_TJKU.l5:
    mov ax, 0x248                    ; 0x0e91
    imul word [bp - 0x0002]          ; 0x0e94
    mov bx, ax                       ; 0x0e97
    cmp byte [bx + cell_key_grid + 0x14b], 0 ; 0x0e99
    jbe short @..api_idx_0004_TJKU.l6 ; 0x0e9e
    mov ax, 0x2c                     ; 0x0ea0
    imul word [bp - 0x0002]          ; 0x0ea3
    mov si, ax                       ; 0x0ea6
    mov ax, word [bp - 0x0004]       ; 0x0ea8
    shl ax, 1                        ; 0x0eab
    mov bx, ax                       ; 0x0ead
    mov bx, word [bx + party_char]   ; 0x0eaf
    mov al, byte [bx + si + 0x26]    ; 0x0eb3
    cbw                              ; 0x0eb6
    push ax                          ; 0x0eb7
    mov ax, 0x248                    ; 0x0eb8
    imul word [bp - 0x0002]          ; 0x0ebb
    mov bx, ax                       ; 0x0ebe
    mov al, byte [bx + cell_key_grid + 0x14b] ; 0x0ec0
    sub ah, ah                       ; 0x0ec4
    mov cx, 0xf                      ; 0x0ec6
    cwd                              ; 0x0ec9
    idiv cx                          ; 0x0eca
    mov cx, ax                       ; 0x0ecc
    inc ax                           ; 0x0ece
    inc ax                           ; 0x0ecf
    mov cx, ax                       ; 0x0ed0
    pop ax                           ; 0x0ed2
    sub ax, cx                       ; 0x0ed3
    mov cx, word [bp - 0x0004]       ; 0x0ed5
    shl cx, 1                        ; 0x0ed8
    mov bx, cx                       ; 0x0eda
    mov bx, word [bx + party_char]   ; 0x0edc
    mov byte [bx + si + 0x26], al    ; 0x0ee0
@..api_idx_0004_TJKU.l6:
    mov ax, 0x248                    ; 0x0ee3
    imul word [bp - 0x0002]          ; 0x0ee6
    mov bx, ax                       ; 0x0ee9
    cmp byte [bx + cell_key_grid + 0x14d], 0 ; 0x0eeb
    jbe short @..api_idx_0004_TJKU.l7 ; 0x0ef0
    mov ax, 0x2c                     ; 0x0ef2
    imul word [bp - 0x0002]          ; 0x0ef5
    mov si, ax                       ; 0x0ef8
    mov ax, word [bp - 0x0004]       ; 0x0efa
    shl ax, 1                        ; 0x0efd
    mov bx, ax                       ; 0x0eff
    mov bx, word [bx + party_char]   ; 0x0f01
    mov al, byte [bx + si + 0x27]    ; 0x0f05
    cbw                              ; 0x0f08
    push ax                          ; 0x0f09
    mov ax, 0x248                    ; 0x0f0a
    imul word [bp - 0x0002]          ; 0x0f0d
    mov bx, ax                       ; 0x0f10
    mov al, byte [bx + cell_key_grid + 0x14d] ; 0x0f12
    sub ah, ah                       ; 0x0f16
    mov cx, 0xf                      ; 0x0f18
    cwd                              ; 0x0f1b
    idiv cx                          ; 0x0f1c
    mov cx, ax                       ; 0x0f1e
    inc ax                           ; 0x0f20
    inc ax                           ; 0x0f21
    mov cx, ax                       ; 0x0f22
    pop ax                           ; 0x0f24
    sub ax, cx                       ; 0x0f25
    mov cx, word [bp - 0x0004]       ; 0x0f27
    shl cx, 1                        ; 0x0f2a
    mov bx, cx                       ; 0x0f2c
    mov bx, word [bx + party_char]   ; 0x0f2e
    mov byte [bx + si + 0x27], al    ; 0x0f32
@..api_idx_0004_TJKU.l7:
    mov ax, 0x248                    ; 0x0f35
    imul word [bp - 0x0002]          ; 0x0f38
    mov bx, ax                       ; 0x0f3b
    cmp byte [bx + cell_key_grid + 0x14c], 0 ; 0x0f3d
    jbe short @..api_idx_0004_TJKU.l8 ; 0x0f42
    mov ax, 0x2c                     ; 0x0f44
    imul word [bp - 0x0002]          ; 0x0f47
    mov si, ax                       ; 0x0f4a
    mov ax, word [bp - 0x0004]       ; 0x0f4c
    shl ax, 1                        ; 0x0f4f
    mov bx, ax                       ; 0x0f51
    mov bx, word [bx + party_char]   ; 0x0f53
    mov al, byte [bx + si + 0x29]    ; 0x0f57
    cbw                              ; 0x0f5a
    push ax                          ; 0x0f5b
    mov ax, 0x248                    ; 0x0f5c
    imul word [bp - 0x0002]          ; 0x0f5f
    mov bx, ax                       ; 0x0f62
    mov al, byte [bx + cell_key_grid + 0x14c] ; 0x0f64
    sub ah, ah                       ; 0x0f68
    mov cx, 0xa                      ; 0x0f6a
    cwd                              ; 0x0f6d
    idiv cx                          ; 0x0f6e
    mov cx, ax                       ; 0x0f70
    pop ax                           ; 0x0f72
    add ax, cx                       ; 0x0f73
    inc ax                           ; 0x0f75
    inc ax                           ; 0x0f76
    mov cx, word [bp - 0x0004]       ; 0x0f77
    shl cx, 1                        ; 0x0f7a
    mov bx, cx                       ; 0x0f7c
    mov bx, word [bx + party_char]   ; 0x0f7e
    mov byte [bx + si + 0x29], al    ; 0x0f82
@..api_idx_0004_TJKU.l8:
    inc word [bp - 0x0002]           ; 0x0f85
@..api_idx_0004_TJKU.l9:
    mov ax, word [bp - 0x0002]       ; 0x0f88
    cmp ax, word [bss_69c8]          ; 0x0f8b
    jge short @..api_idx_0004_TJKU.l10 ; 0x0f8f
    jmp near @..api_idx_0004_TJKU.l4 ; 0x0f91
@..api_idx_0004_TJKU.l10:
    ret                              ; 0x0f94
