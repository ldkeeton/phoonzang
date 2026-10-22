; auto-generated
loc_3e8a:
    mov ax, word [bp - 0x0004]       ; 0x3e8a
    mov cx, 0xa00                    ; 0x3e8d
    mul cx                           ; 0x3e90
    sub ax, 0x140                    ; 0x3e92
    add ax, word [bp - 0x0006]       ; 0x3e95
    mov word [bp - 0x000e], ax       ; 0x3e98
    mov si, word [bx]                ; 0x3e9b
    add si, bx                       ; 0x3e9d
    mov word [bp - 0x000a], 1        ; 0x3e9f
    lea ax, word [bx + 0x4]          ; 0x3ea4
    mov word [bp - 0x000c], ax       ; 0x3ea7
    mov cx, word [bp - 0x0004]       ; 0x3eaa
    mov byte [bp - 0x003a], 0x80     ; 0x3ead
    mov ax, word [bp - 0x002a]       ; 0x3eb1
    sub word [bp - 0x000e], ax       ; 0x3eb4
    mov ax, word [bp - 0x002c]       ; 0x3eb7
    mov bx, 0x140                    ; 0x3eba
    mul bx                           ; 0x3ebd
    sub word [bp - 0x000e], ax       ; 0x3ebf
loc_3ec2:
    mov ax, word [bp - 0x002e]       ; 0x3ec2
    mov di, word [bp - 0x000e]       ; 0x3ec5
    add di, word [bp - 0x001e]       ; 0x3ec8
    cmp ax, di                       ; 0x3ecb
    jb short loc_3ed2                ; 0x3ecd
    jmp near loc_3fc5                ; 0x3ecf
loc_3ed2:
    push cx                          ; 0x3ed2
    call leaf_loc_MTKK               ; 0x3ed3
    mov ax, cseg_35dd - IMAGE_BASE   ; 0x3ed6
    mov word [bp - 0x0034], ax       ; 0x3ed9
    mov cx, word [bp - 0x0002]       ; 0x3edc
loc_3edf:
    push cx                          ; 0x3edf
    call leaf_loc_KSJN               ; 0x3ee0
    mov bx, word [bp - 0x000c]       ; 0x3ee3
    mov al, byte [bx]                ; 0x3ee6
    and al, byte [bp - 0x000a]       ; 0x3ee8
    jne short loc_3ef0               ; 0x3eeb
    jmp near loc_3f98                ; 0x3eed
loc_3ef0:
    mov bx, word [bp - 0x0034]       ; 0x3ef0
    mov al, byte [cs:bx]             ; 0x3ef3
    cmp al, 0xff                     ; 0x3ef6
    jne short loc_3f00               ; 0x3ef8
    add si, byte 0x40                ; 0x3efa
    jmp near loc_3f98                ; 0x3efd
loc_3f00:
    push di                          ; 0x3f00
    push si                          ; 0x3f01
    mov al, 0x80                     ; 0x3f02
    mov byte [bp - 0x0038], al       ; 0x3f04
    mov cx, 8                        ; 0x3f07
loc_3f0a:
    cmp word [bp - 0x002e], di       ; 0x3f0a
    jbe short loc_3f12               ; 0x3f0d
    jmp near loc_3f93                ; 0x3f0f
loc_3f12:
    mov bx, word [bp - 0x0036]       ; 0x3f12
    mov al, byte [cs:bx]             ; 0x3f15
    and al, byte [bp - 0x0038]       ; 0x3f18
    je short loc_3f20                ; 0x3f1b
    jmp near loc_3f8e                ; 0x3f1d
loc_3f20:
    push cx                          ; 0x3f20
    push di                          ; 0x3f21
    mov al, 0x80                     ; 0x3f22
    mov byte [bp - 0x0032], al       ; 0x3f24
    mov cx, 8                        ; 0x3f27
loc_3f2a:
    mov bx, word [bp - 0x0034]       ; 0x3f2a
    mov al, byte [cs:bx]             ; 0x3f2d
    and al, byte [bp - 0x0032]       ; 0x3f30
    jne short loc_3f86               ; 0x3f33
    mov al, byte [si]                ; 0x3f35
    cmp al, 0xff                     ; 0x3f37
    je short loc_3f72                ; 0x3f39
    cmp byte [bp + 0x1e], 2          ; 0x3f3b
    jne short loc_3f57               ; 0x3f3f
    mov al, byte [es:di]             ; 0x3f41
    mov bx, 0x40cd                   ; 0x3f44
    add bx, ax                       ; 0x3f47
    add al, byte [si]                ; 0x3f49
    jb short loc_3f52                ; 0x3f4b
    cmp al, byte [cs:bx]             ; 0x3f4d
    jb short loc_3f6f                ; 0x3f50
loc_3f52:
    mov al, byte [cs:bx]             ; 0x3f52
    jmp short loc_3f6f               ; 0x3f55
loc_3f57:
    cmp byte [bp - 0x0030], 0        ; 0x3f57
    je short loc_3f6f                ; 0x3f5b
    mov bx, 0x40cd                   ; 0x3f5d
    add bx, ax                       ; 0x3f60
    add al, byte [bp - 0x0030]       ; 0x3f62
    jb short loc_3f6c                ; 0x3f65
    cmp al, byte [cs:bx]             ; 0x3f67
    jb short loc_3f6f                ; 0x3f6a
loc_3f6c:
    mov al, byte [cs:bx]             ; 0x3f6c
loc_3f6f:
    mov byte [es:di], al             ; 0x3f6f
loc_3f72:
    inc si                           ; 0x3f72
    dec di                           ; 0x3f73
    ror byte [bp - 0x0032], 1        ; 0x3f74
    loop loc_3f2a                    ; 0x3f77
loc_3f79:
    pop di                           ; 0x3f79
    sub di, strict word 0x140        ; 0x3f7a
    pop cx                           ; 0x3f7e
loc_3f7f:
    ror byte [bp - 0x0038], 1        ; 0x3f7f
    loop loc_3f0a                    ; 0x3f82
    jmp short loc_3f93               ; 0x3f84
loc_3f86:
    inc si                           ; 0x3f86
    ror byte [bp - 0x0032], 1        ; 0x3f87
    loop loc_3f2a                    ; 0x3f8a
    jmp short loc_3f79               ; 0x3f8c
loc_3f8e:
    add si, byte 8                   ; 0x3f8e
    jmp short loc_3f7f               ; 0x3f91
loc_3f93:
    pop si                           ; 0x3f93
    add si, byte 0x40                ; 0x3f94
    pop di                           ; 0x3f97
loc_3f98:
    sub di, byte 8                   ; 0x3f98
    add di, word [bp - 0x003c]       ; 0x3f9b
    rol byte [bp - 0x000a], 1        ; 0x3f9e
    cmp byte [bp - 0x000a], 1        ; 0x3fa1
    jne short loc_3faa               ; 0x3fa5
    inc word [bp - 0x000c]           ; 0x3fa7
loc_3faa:
    inc word [bp - 0x0034]           ; 0x3faa
    pop cx                           ; 0x3fad
    loop loc_3fc7                    ; 0x3fae
    pop cx                           ; 0x3fb0
    sub word [bp - 0x000e], strict word 0xa00 ; 0x3fb1
    mov ax, word [bp - 0x003e]       ; 0x3fb6
    add word [bp - 0x000e], ax       ; 0x3fb9
    inc word [bp - 0x0036]           ; 0x3fbc
    mov byte [bp - 0x003a], 0x80     ; 0x3fbf
    loop loc_3fca                    ; 0x3fc3
loc_3fc5:
    pop es                           ; 0x3fc5
    ret                              ; 0x3fc6
loc_3fc7:
    jmp near loc_3edf                ; 0x3fc7
loc_3fca:
    jmp near loc_3ec2                ; 0x3fca

    db 0x00, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f
    db 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f
    db '####++++++++////:::::::::::?????JJJJJJJJJJJOOOOO]]]]]]]]]]]]]]__oooooooooooooooowwwwwwww'
    db 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f
    db 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x93, 0x93, 0x93, 0x93, 0x96, 0x96, 0x96, 0x9f
    db 0x9f, 0x9f, 0x9f, 0x9f, 0x9f, 0x9f, 0x9f, 0x9f, 0xa3, 0xa3, 0xa3, 0xa3, 0xa6, 0xa6, 0xa6, 0xaf
    db 0xaf, 0xaf, 0xaf, 0xaf, 0xaf, 0xaf, 0xaf, 0xaf, 0xb7, 0xb7, 0xb7, 0xb7, 0xb7, 0xb7, 0xb7, 0xb7
    db 0xbf, 0xbf, 0xbf, 0xbf, 0xbf, 0xbf, 0xbf, 0xbf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf
    db 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xd6, 0xd6, 0xd6, 0xd6, 0xd6, 0xd6, 0xd6, 0xdf
    db 0xdf, 0xdf, 0xdf, 0xdf, 0xdf, 0xdf, 0xdf, 0xdf, 0xe2, 0xe2, 0xe2, 0xe6, 0xe6, 0xe6, 0xe6, 0xef
    db 0xef, 0xef, 0xef, 0xef, 0xef, 0xef, 0xef, 0xef, 0xf5, 0xf5, 0xf5, 0xf5, 0xf5, 0xf5, 0xfe, 0xfe
    db 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xff

