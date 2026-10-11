api_idx_0018_2:
    mov ax, 0xffe8                   ; 0x3b9a
    db 0xe8, 0x6b, 0xb8 ; call 0xf40b
    mov ax, word [bp + 0x6]          ; 0x3ba0
    imul word [bp + 0xe]             ; 0x3ba3
    add ax, word [bp + 0xa]          ; 0x3ba6
    add ax, strict word 0xb          ; 0x3ba9
    push ax                          ; 0x3bac
    mov ax, 6                        ; 0x3bad
    imul word [bp + 0xc]             ; 0x3bb0
    add ax, word [bp + 0x8]          ; 0x3bb3
    inc ax                           ; 0x3bb6
    push ax                          ; 0x3bb7
    mov ax, word [bp + 0x6]          ; 0x3bb8
    imul word [bp + 0xe]             ; 0x3bbb
    add ax, word [bp + 0xa]          ; 0x3bbe
    dec ax                           ; 0x3bc1
    push ax                          ; 0x3bc2
    mov ax, word [bp + 0x8]          ; 0x3bc3
    dec ax                           ; 0x3bc6
    push ax                          ; 0x3bc7
    db 0xe8, 0x5d, 0xad ; call 0xe928
    add sp, byte 8                   ; 0x3bcb
    mov word [bp - 0x0016], dx       ; 0x3bce
    mov word [bp - 0x0018], ax       ; 0x3bd1
    lea ax, word [bp - 0x0014]       ; 0x3bd4
    push ax                          ; 0x3bd7
    push word [bp + 0x4]             ; 0x3bd8
    db 0xe8, 0x5d, 0x79 ; call 0xb53b
    add sp, byte 4                   ; 0x3bde
    mov ax, 0                        ; 0x3be1
    push ax                          ; 0x3be4
    mov ax, word [bp + 0x6]          ; 0x3be5
    imul word [bp + 0xe]             ; 0x3be8
    add ax, word [bp + 0xa]          ; 0x3beb
    add ax, strict word 8            ; 0x3bee
    push ax                          ; 0x3bf1
    mov ax, 6                        ; 0x3bf2
    imul word [bp + 0xc]             ; 0x3bf5
    add ax, word [bp + 0x8]          ; 0x3bf8
    push ax                          ; 0x3bfb
    mov ax, word [bp + 0x6]          ; 0x3bfc
    imul word [bp + 0xe]             ; 0x3bff
    add ax, word [bp + 0xa]          ; 0x3c02
    push ax                          ; 0x3c05
    push word [bp + 0x8]             ; 0x3c06
    db 0xe8, 0xd7, 0x80 ; call 0xbce3
    add sp, byte 0x0a                ; 0x3c0c
    mov ax, word [bp + 0x6]          ; 0x3c0f
    imul word [bp + 0xe]             ; 0x3c12
    add ax, word [bp + 0xa]          ; 0x3c15
    inc ax                           ; 0x3c18
    inc ax                           ; 0x3c19
    push ax                          ; 0x3c1a
    lea ax, word [bp - 0x0014]       ; 0x3c1b
    push ax                          ; 0x3c1e
    db 0xe8, 0x6e, 0xbe ; call 0xfa90
    pop cx                           ; 0x3c22
    mov cx, ax                       ; 0x3c23
    mov ax, word [bp + 0xc]          ; 0x3c25
    sub ax, cx                       ; 0x3c28
    mov cx, 6                        ; 0x3c2a
    imul cx                          ; 0x3c2d
    mov cx, 2                        ; 0x3c2f
    cwd                              ; 0x3c32
    idiv cx                          ; 0x3c33
    add ax, word [bp + 0x8]          ; 0x3c35
    inc ax                           ; 0x3c38
    push ax                          ; 0x3c39
    db 0xe8, 0xcc, 0xab ; call 0xe809
    add sp, byte 4                   ; 0x3c3d
    mov ax, 0xc0                     ; 0x3c40
    push ax                          ; 0x3c43
    mov ax, 0x1a                     ; 0x3c44
    push ax                          ; 0x3c47
    db 0xe8, 0xd8, 0xab ; call 0xe823
    add sp, byte 4                   ; 0x3c4b
    mov ax, 0                        ; 0x3c4e
    push ax                          ; 0x3c51
    lea ax, word [bp - 0x0014]       ; 0x3c52
    push ax                          ; 0x3c55
    db 0xe8, 0xf5, 0xab ; call 0xe84e
    add sp, byte 4                   ; 0x3c59
    mov ax, word [bp + 0x6]          ; 0x3c5c
    imul word [bp + 0xe]             ; 0x3c5f
    add ax, word [bp + 0xa]          ; 0x3c62
    add ax, strict word 8            ; 0x3c65
    push ax                          ; 0x3c68
    mov ax, 6                        ; 0x3c69
    imul word [bp + 0xc]             ; 0x3c6c
    add ax, word [bp + 0x8]          ; 0x3c6f
    push ax                          ; 0x3c72
    mov ax, word [bp + 0x6]          ; 0x3c73
    imul word [bp + 0xe]             ; 0x3c76
    add ax, word [bp + 0xa]          ; 0x3c79
    push ax                          ; 0x3c7c
    push word [bp + 0x8]             ; 0x3c7d
    db 0xe8, 0x57, 0xac ; call 0xe8da
    add sp, byte 8                   ; 0x3c83
    mov ax, 1                        ; 0x3c86
    push ax                          ; 0x3c89
    push word [bp - 0x0016]          ; 0x3c8a
    push word [bp - 0x0018]          ; 0x3c8d
    db 0xe8, 0xbc, 0xac ; call 0xe94f
    add sp, byte 6                   ; 0x3c93
    ret                              ; 0x3c96
