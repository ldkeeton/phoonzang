; auto-generated
loc_3d4a:
    mov ax, word [bp - 0x0004]       ; 0x3d4a
    mov cx, 0xa00                    ; 0x3d4d
    mul cx                           ; 0x3d50
    sub ax, 0x140                    ; 0x3d52
    add ax, word [bp - 0x0006]       ; 0x3d55
    mov word [bp - 0x000e], ax       ; 0x3d58
    mov si, word [bx]                ; 0x3d5b
    add si, bx                       ; 0x3d5d
    mov word [bp - 0x000a], 1        ; 0x3d5f
    lea ax, word [bx + 0x4]          ; 0x3d64
    mov word [bp - 0x000c], ax       ; 0x3d67
    mov cx, word [bp - 0x0004]       ; 0x3d6a
    mov byte [bp - 0x003a], 0x80     ; 0x3d6d
    mov ax, word [bp - 0x0028]       ; 0x3d71
    add word [bp - 0x000e], ax       ; 0x3d74
    mov ax, word [bp - 0x002c]       ; 0x3d77
    mov bx, 0x140                    ; 0x3d7a
    mul bx                           ; 0x3d7d
    sub word [bp - 0x000e], ax       ; 0x3d7f
loc_3d82:
    mov ax, word [bp - 0x002e]       ; 0x3d82
    mov di, word [bp - 0x000e]       ; 0x3d85
    cmp ax, di                       ; 0x3d88
    jbe short loc_3d8f               ; 0x3d8a
    jmp near loc_3e82                ; 0x3d8c
loc_3d8f:
    push cx                          ; 0x3d8f
    call leaf_loc_MTKK               ; 0x3d90
    mov ax, cseg_35dd - IMAGE_BASE   ; 0x3d93
    mov word [bp - 0x0034], ax       ; 0x3d96
    mov cx, word [bp - 0x0002]       ; 0x3d99
loc_3d9c:
    push cx                          ; 0x3d9c
    call leaf_loc_VGLT               ; 0x3d9d
    mov bx, word [bp - 0x000c]       ; 0x3da0
    mov al, byte [bx]                ; 0x3da3
    and al, byte [bp - 0x000a]       ; 0x3da5
    jne short loc_3dad               ; 0x3da8
    jmp near loc_3e55                ; 0x3daa
loc_3dad:
    mov bx, word [bp - 0x0034]       ; 0x3dad
    mov al, byte [cs:bx]             ; 0x3db0
    cmp al, 0xff                     ; 0x3db3
    jne short loc_3dbd               ; 0x3db5
    add si, byte 0x40                ; 0x3db7
    jmp near loc_3e55                ; 0x3dba
loc_3dbd:
    push di                          ; 0x3dbd
    push si                          ; 0x3dbe
    mov al, 0x80                     ; 0x3dbf
    mov byte [bp - 0x0038], al       ; 0x3dc1
    mov cx, 8                        ; 0x3dc4
loc_3dc7:
    cmp word [bp - 0x002e], di       ; 0x3dc7
    jbe short loc_3dcf               ; 0x3dca
    jmp near loc_3e50                ; 0x3dcc
loc_3dcf:
    mov bx, word [bp - 0x0036]       ; 0x3dcf
    mov al, byte [cs:bx]             ; 0x3dd2
    and al, byte [bp - 0x0038]       ; 0x3dd5
    je short loc_3ddd                ; 0x3dd8
    jmp near loc_3e4b                ; 0x3dda
loc_3ddd:
    push cx                          ; 0x3ddd
    push di                          ; 0x3dde
    mov al, 0x80                     ; 0x3ddf
    mov byte [bp - 0x0032], al       ; 0x3de1
    mov cx, 8                        ; 0x3de4
loc_3de7:
    mov bx, word [bp - 0x0034]       ; 0x3de7
    mov al, byte [cs:bx]             ; 0x3dea
    and al, byte [bp - 0x0032]       ; 0x3ded
    jne short loc_3e43               ; 0x3df0
    mov al, byte [si]                ; 0x3df2
    cmp al, 0xff                     ; 0x3df4
    je short loc_3e2f                ; 0x3df6
    cmp byte [bp + 0x1e], 2          ; 0x3df8
    jne short loc_3e14               ; 0x3dfc
    mov al, byte [es:di]             ; 0x3dfe
    mov bx, 0x40cd                   ; 0x3e01
    add bx, ax                       ; 0x3e04
    add al, byte [si]                ; 0x3e06
    jb short loc_3e0f                ; 0x3e08
    cmp al, byte [cs:bx]             ; 0x3e0a
    jb short loc_3e2c                ; 0x3e0d
loc_3e0f:
    mov al, byte [cs:bx]             ; 0x3e0f
    jmp short loc_3e2c               ; 0x3e12
loc_3e14:
    cmp byte [bp - 0x0030], 0        ; 0x3e14
    je short loc_3e2c                ; 0x3e18
    mov bx, 0x40cd                   ; 0x3e1a
    add bx, ax                       ; 0x3e1d
    add al, byte [bp - 0x0030]       ; 0x3e1f
    jb short loc_3e29                ; 0x3e22
    cmp al, byte [cs:bx]             ; 0x3e24
    jb short loc_3e2c                ; 0x3e27
loc_3e29:
    mov al, byte [cs:bx]             ; 0x3e29
loc_3e2c:
    mov byte [es:di], al             ; 0x3e2c
loc_3e2f:
    inc si                           ; 0x3e2f
    inc di                           ; 0x3e30
    ror byte [bp - 0x0032], 1        ; 0x3e31
    loop loc_3de7                    ; 0x3e34
loc_3e36:
    pop di                           ; 0x3e36
    sub di, strict word 0x140        ; 0x3e37
    pop cx                           ; 0x3e3b
loc_3e3c:
    ror byte [bp - 0x0038], 1        ; 0x3e3c
    loop loc_3dc7                    ; 0x3e3f
    jmp short loc_3e50               ; 0x3e41
loc_3e43:
    inc si                           ; 0x3e43
    ror byte [bp - 0x0032], 1        ; 0x3e44
    loop loc_3de7                    ; 0x3e47
    jmp short loc_3e36               ; 0x3e49
loc_3e4b:
    add si, byte 8                   ; 0x3e4b
    jmp short loc_3e3c               ; 0x3e4e
loc_3e50:
    pop si                           ; 0x3e50
    add si, byte 0x40                ; 0x3e51
    pop di                           ; 0x3e54
loc_3e55:
    add di, byte 8                   ; 0x3e55
    sub di, word [bp - 0x003c]       ; 0x3e58
    rol byte [bp - 0x000a], 1        ; 0x3e5b
    cmp byte [bp - 0x000a], 1        ; 0x3e5e
    jne short loc_3e67               ; 0x3e62
    inc word [bp - 0x000c]           ; 0x3e64
loc_3e67:
    inc word [bp - 0x0034]           ; 0x3e67
    pop cx                           ; 0x3e6a
    loop loc_3e84                    ; 0x3e6b
    pop cx                           ; 0x3e6d
    sub word [bp - 0x000e], strict word 0xa00 ; 0x3e6e
    mov ax, word [bp - 0x003e]       ; 0x3e73
    add word [bp - 0x000e], ax       ; 0x3e76
    inc word [bp - 0x0036]           ; 0x3e79
    mov byte [bp - 0x003a], 0x80     ; 0x3e7c
    loop loc_3e87                    ; 0x3e80
loc_3e82:
    pop es                           ; 0x3e82
    ret                              ; 0x3e83
loc_3e84:
    jmp near loc_3d9c                ; 0x3e84
loc_3e87:
    jmp near loc_3d82                ; 0x3e87
