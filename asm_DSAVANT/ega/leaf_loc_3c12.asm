; auto-generated
leaf_loc_3c12:
    xor ax, ax                       ; 0x3c12
    mov word [bp - 0x003c], ax       ; 0x3c14
    mov dl, 0x80                     ; 0x3c17
    mov bx, word [bp - 0x0034]       ; 0x3c19
    mov cx, 8                        ; 0x3c1c
@..leaf_loc_3c12.l1:
    mov al, byte [cs:bx]             ; 0x3c1f
    and al, dl                       ; 0x3c22
    je short @..leaf_loc_3c12.l2     ; 0x3c24
    inc word [bp - 0x003c]           ; 0x3c26
@..leaf_loc_3c12.l2:
    ror dl, 1                        ; 0x3c29
    loop @..leaf_loc_3c12.l1         ; 0x3c2b
    ret                              ; 0x3c2d
@..graphics_loc_3a8b.l28:
    mov ax, word [bp - 0x002a]       ; 0x3c2e
    sub word [bp - 0x000e], ax       ; 0x3c31
    mov ax, word [bp - 0x0024]       ; 0x3c34
    mov bx, 0x140                    ; 0x3c37
    mul bx                           ; 0x3c3a
    add word [bp - 0x000e], ax       ; 0x3c3c
@..graphics_loc_3a8b.l29:
    mov ax, word [bp - 0x0022]       ; 0x3c3f
    mov di, word [bp - 0x000e]       ; 0x3c42
    add di, word [bp - 0x001e]       ; 0x3c45
    cmp di, ax                       ; 0x3c48
    jb short @..graphics_loc_3a8b.l30 ; 0x3c4a
    jmp near @..graphics_loc_3a8b.l50 ; 0x3c4c
@..graphics_loc_3a8b.l30:
    push cx                          ; 0x3c4f
    call leaf_loc_3bf2               ; 0x3c50
    mov ax, 0x36dd                   ; 0x3c53
    mov word [bp - 0x0034], ax       ; 0x3c56
    mov cx, word [bp - 0x0002]       ; 0x3c59
@..graphics_loc_3a8b.l31:
    push cx                          ; 0x3c5c
    call leaf_loc_3c12               ; 0x3c5d
    mov bx, word [bp - 0x000c]       ; 0x3c60
    mov al, byte [bx]                ; 0x3c63
    and al, byte [bp - 0x000a]       ; 0x3c65
    jne short @..graphics_loc_3a8b.l32 ; 0x3c68
    jmp near @..graphics_loc_3a8b.l48 ; 0x3c6a
@..graphics_loc_3a8b.l32:
    mov bx, word [bp - 0x0034]       ; 0x3c6d
    mov al, byte [cs:bx]             ; 0x3c70
    cmp al, 0xff                     ; 0x3c73
    jne short @..graphics_loc_3a8b.l33 ; 0x3c75
    add si, byte 0x40                ; 0x3c77
    jmp near @..graphics_loc_3a8b.l48 ; 0x3c7a
@..graphics_loc_3a8b.l33:
    push di                          ; 0x3c7d
    push si                          ; 0x3c7e
    mov al, 0x80                     ; 0x3c7f
    mov byte [bp - 0x0038], al       ; 0x3c81
    mov cx, 8                        ; 0x3c84
@..graphics_loc_3a8b.l34:
    cmp di, word [bp - 0x0022]       ; 0x3c87
    jb short @..graphics_loc_3a8b.l35 ; 0x3c8a
    jmp near @..graphics_loc_3a8b.l47 ; 0x3c8c
@..graphics_loc_3a8b.l35:
    mov bx, word [bp - 0x0036]       ; 0x3c8f
    mov al, byte [cs:bx]             ; 0x3c92
    and al, byte [bp - 0x0038]       ; 0x3c95
    je short @..graphics_loc_3a8b.l36 ; 0x3c98
    jmp near @..graphics_loc_3a8b.l46 ; 0x3c9a
@..graphics_loc_3a8b.l36:
    push cx                          ; 0x3c9d
    push di                          ; 0x3c9e
    mov al, 0x80                     ; 0x3c9f
    mov byte [bp - 0x0032], al       ; 0x3ca1
    mov cx, 8                        ; 0x3ca4
@..graphics_loc_3a8b.l37:
    mov bx, word [bp - 0x0034]       ; 0x3ca7
    mov al, byte [cs:bx]             ; 0x3caa
    and al, byte [bp - 0x0032]       ; 0x3cad
    jne short @..graphics_loc_3a8b.l45 ; 0x3cb0
    mov al, byte [si]                ; 0x3cb2
    cmp al, 0xff                     ; 0x3cb4
    je short @..graphics_loc_3a8b.l42 ; 0x3cb6
    cmp byte [bp + 0x1e], 2          ; 0x3cb8
    jne short @..graphics_loc_3a8b.l39 ; 0x3cbc
    mov al, byte [es:di]             ; 0x3cbe
    mov bx, 0x40cd                   ; 0x3cc1
    add bx, ax                       ; 0x3cc4
    add al, byte [si]                ; 0x3cc6
    jb short @..graphics_loc_3a8b.l38 ; 0x3cc8
    cmp al, byte [cs:bx]             ; 0x3cca
    jb short @..graphics_loc_3a8b.l41 ; 0x3ccd
@..graphics_loc_3a8b.l38:
    mov al, byte [cs:bx]             ; 0x3ccf
    jmp short @..graphics_loc_3a8b.l41 ; 0x3cd2
@..graphics_loc_3a8b.l39:
    cmp byte [bp - 0x0030], 0        ; 0x3cd4
    je short @..graphics_loc_3a8b.l41 ; 0x3cd8
    mov bx, 0x40cd                   ; 0x3cda
    add bx, ax                       ; 0x3cdd
    add al, byte [bp - 0x0030]       ; 0x3cdf
    jb short @..graphics_loc_3a8b.l40 ; 0x3ce2
    cmp al, byte [cs:bx]             ; 0x3ce4
    jb short @..graphics_loc_3a8b.l41 ; 0x3ce7
@..graphics_loc_3a8b.l40:
    mov al, byte [cs:bx]             ; 0x3ce9
@..graphics_loc_3a8b.l41:
    mov byte [es:di], al             ; 0x3cec
@..graphics_loc_3a8b.l42:
    inc si                           ; 0x3cef
    dec di                           ; 0x3cf0
    ror byte [bp - 0x0032], 1        ; 0x3cf1
    loop @..graphics_loc_3a8b.l37    ; 0x3cf4
@..graphics_loc_3a8b.l43:
    pop di                           ; 0x3cf6
    pop cx                           ; 0x3cf7
    add di, strict word 0x140        ; 0x3cf8
@..graphics_loc_3a8b.l44:
    ror byte [bp - 0x0038], 1        ; 0x3cfc
    loop @..graphics_loc_3a8b.l34    ; 0x3cff
    jmp short @..graphics_loc_3a8b.l47 ; 0x3d01
@..graphics_loc_3a8b.l45:
    inc si                           ; 0x3d03
    ror byte [bp - 0x0032], 1        ; 0x3d04
    loop @..graphics_loc_3a8b.l37    ; 0x3d07
    jmp short @..graphics_loc_3a8b.l43 ; 0x3d09
@..graphics_loc_3a8b.l46:
    add si, byte 8                   ; 0x3d0b
    jmp short @..graphics_loc_3a8b.l44 ; 0x3d0e
@..graphics_loc_3a8b.l47:
    pop si                           ; 0x3d10
    add si, byte 0x40                ; 0x3d11
    pop di                           ; 0x3d14
@..graphics_loc_3a8b.l48:
    sub di, byte 8                   ; 0x3d15
    add di, word [bp - 0x003c]       ; 0x3d18
    rol byte [bp - 0x000a], 1        ; 0x3d1b
    cmp byte [bp - 0x000a], 1        ; 0x3d1e
    jne short @..graphics_loc_3a8b.l49 ; 0x3d22
    inc word [bp - 0x000c]           ; 0x3d24
@..graphics_loc_3a8b.l49:
    inc word [bp - 0x0034]           ; 0x3d27
    pop cx                           ; 0x3d2a
    loop @..graphics_loc_3a8b.l51    ; 0x3d2b
    pop cx                           ; 0x3d2d
    add word [bp - 0x000e], strict word 0xa00 ; 0x3d2e
    mov ax, word [bp - 0x003e]       ; 0x3d33
    sub word [bp - 0x000e], ax       ; 0x3d36
    inc word [bp - 0x0036]           ; 0x3d39
    mov byte [bp - 0x003a], 0x80     ; 0x3d3c
    loop @..graphics_loc_3a8b.l52    ; 0x3d40
@..graphics_loc_3a8b.l50:
    pop es                           ; 0x3d42
    ret                              ; 0x3d43
@..graphics_loc_3a8b.l51:
    jmp near @..graphics_loc_3a8b.l31 ; 0x3d44
@..graphics_loc_3a8b.l52:
    jmp near @..graphics_loc_3a8b.l29 ; 0x3d47
@..graphics_loc_3a8b.l53:
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
@..graphics_loc_3a8b.l54:
    mov ax, word [bp - 0x002e]       ; 0x3d82
    mov di, word [bp - 0x000e]       ; 0x3d85
    cmp ax, di                       ; 0x3d88
    jbe short @..graphics_loc_3a8b.l55 ; 0x3d8a
    jmp near @..graphics_loc_3a8b.l75 ; 0x3d8c
@..graphics_loc_3a8b.l55:
    push cx                          ; 0x3d8f
    call leaf_loc_3bf2               ; 0x3d90
    mov ax, 0x36dd                   ; 0x3d93
    mov word [bp - 0x0034], ax       ; 0x3d96
    mov cx, word [bp - 0x0002]       ; 0x3d99
@..graphics_loc_3a8b.l56:
    push cx                          ; 0x3d9c
    call leaf_loc_3c12               ; 0x3d9d
    mov bx, word [bp - 0x000c]       ; 0x3da0
    mov al, byte [bx]                ; 0x3da3
    and al, byte [bp - 0x000a]       ; 0x3da5
    jne short @..graphics_loc_3a8b.l57 ; 0x3da8
    jmp near @..graphics_loc_3a8b.l73 ; 0x3daa
@..graphics_loc_3a8b.l57:
    mov bx, word [bp - 0x0034]       ; 0x3dad
    mov al, byte [cs:bx]             ; 0x3db0
    cmp al, 0xff                     ; 0x3db3
    jne short @..graphics_loc_3a8b.l58 ; 0x3db5
    add si, byte 0x40                ; 0x3db7
    jmp near @..graphics_loc_3a8b.l73 ; 0x3dba
@..graphics_loc_3a8b.l58:
    push di                          ; 0x3dbd
    push si                          ; 0x3dbe
    mov al, 0x80                     ; 0x3dbf
    mov byte [bp - 0x0038], al       ; 0x3dc1
    mov cx, 8                        ; 0x3dc4
@..graphics_loc_3a8b.l59:
    cmp word [bp - 0x002e], di       ; 0x3dc7
    jbe short @..graphics_loc_3a8b.l60 ; 0x3dca
    jmp near @..graphics_loc_3a8b.l72 ; 0x3dcc
@..graphics_loc_3a8b.l60:
    mov bx, word [bp - 0x0036]       ; 0x3dcf
    mov al, byte [cs:bx]             ; 0x3dd2
    and al, byte [bp - 0x0038]       ; 0x3dd5
    je short @..graphics_loc_3a8b.l61 ; 0x3dd8
    jmp near @..graphics_loc_3a8b.l71 ; 0x3dda
@..graphics_loc_3a8b.l61:
    push cx                          ; 0x3ddd
    push di                          ; 0x3dde
    mov al, 0x80                     ; 0x3ddf
    mov byte [bp - 0x0032], al       ; 0x3de1
    mov cx, 8                        ; 0x3de4
@..graphics_loc_3a8b.l62:
    mov bx, word [bp - 0x0034]       ; 0x3de7
    mov al, byte [cs:bx]             ; 0x3dea
    and al, byte [bp - 0x0032]       ; 0x3ded
    jne short @..graphics_loc_3a8b.l70 ; 0x3df0
    mov al, byte [si]                ; 0x3df2
    cmp al, 0xff                     ; 0x3df4
    je short @..graphics_loc_3a8b.l67 ; 0x3df6
    cmp byte [bp + 0x1e], 2          ; 0x3df8
    jne short @..graphics_loc_3a8b.l64 ; 0x3dfc
    mov al, byte [es:di]             ; 0x3dfe
    mov bx, 0x40cd                   ; 0x3e01
    add bx, ax                       ; 0x3e04
    add al, byte [si]                ; 0x3e06
    jb short @..graphics_loc_3a8b.l63 ; 0x3e08
    cmp al, byte [cs:bx]             ; 0x3e0a
    jb short @..graphics_loc_3a8b.l66 ; 0x3e0d
@..graphics_loc_3a8b.l63:
    mov al, byte [cs:bx]             ; 0x3e0f
    jmp short @..graphics_loc_3a8b.l66 ; 0x3e12
@..graphics_loc_3a8b.l64:
    cmp byte [bp - 0x0030], 0        ; 0x3e14
    je short @..graphics_loc_3a8b.l66 ; 0x3e18
    mov bx, 0x40cd                   ; 0x3e1a
    add bx, ax                       ; 0x3e1d
    add al, byte [bp - 0x0030]       ; 0x3e1f
    jb short @..graphics_loc_3a8b.l65 ; 0x3e22
    cmp al, byte [cs:bx]             ; 0x3e24
    jb short @..graphics_loc_3a8b.l66 ; 0x3e27
@..graphics_loc_3a8b.l65:
    mov al, byte [cs:bx]             ; 0x3e29
@..graphics_loc_3a8b.l66:
    mov byte [es:di], al             ; 0x3e2c
@..graphics_loc_3a8b.l67:
    inc si                           ; 0x3e2f
    inc di                           ; 0x3e30
    ror byte [bp - 0x0032], 1        ; 0x3e31
    loop @..graphics_loc_3a8b.l62    ; 0x3e34
@..graphics_loc_3a8b.l68:
    pop di                           ; 0x3e36
    sub di, strict word 0x140        ; 0x3e37
    pop cx                           ; 0x3e3b
@..graphics_loc_3a8b.l69:
    ror byte [bp - 0x0038], 1        ; 0x3e3c
    loop @..graphics_loc_3a8b.l59    ; 0x3e3f
    jmp short @..graphics_loc_3a8b.l72 ; 0x3e41
@..graphics_loc_3a8b.l70:
    inc si                           ; 0x3e43
    ror byte [bp - 0x0032], 1        ; 0x3e44
    loop @..graphics_loc_3a8b.l62    ; 0x3e47
    jmp short @..graphics_loc_3a8b.l68 ; 0x3e49
@..graphics_loc_3a8b.l71:
    add si, byte 8                   ; 0x3e4b
    jmp short @..graphics_loc_3a8b.l69 ; 0x3e4e
@..graphics_loc_3a8b.l72:
    pop si                           ; 0x3e50
    add si, byte 0x40                ; 0x3e51
    pop di                           ; 0x3e54
@..graphics_loc_3a8b.l73:
    add di, byte 8                   ; 0x3e55
    sub di, word [bp - 0x003c]       ; 0x3e58
    rol byte [bp - 0x000a], 1        ; 0x3e5b
    cmp byte [bp - 0x000a], 1        ; 0x3e5e
    jne short @..graphics_loc_3a8b.l74 ; 0x3e62
    inc word [bp - 0x000c]           ; 0x3e64
@..graphics_loc_3a8b.l74:
    inc word [bp - 0x0034]           ; 0x3e67
    pop cx                           ; 0x3e6a
    loop @..graphics_loc_3a8b.l76    ; 0x3e6b
    pop cx                           ; 0x3e6d
    sub word [bp - 0x000e], strict word 0xa00 ; 0x3e6e
    mov ax, word [bp - 0x003e]       ; 0x3e73
    add word [bp - 0x000e], ax       ; 0x3e76
    inc word [bp - 0x0036]           ; 0x3e79
    mov byte [bp - 0x003a], 0x80     ; 0x3e7c
    loop @..graphics_loc_3a8b.l77    ; 0x3e80
@..graphics_loc_3a8b.l75:
    pop es                           ; 0x3e82
    ret                              ; 0x3e83
@..graphics_loc_3a8b.l76:
    jmp near @..graphics_loc_3a8b.l56 ; 0x3e84
@..graphics_loc_3a8b.l77:
    jmp near @..graphics_loc_3a8b.l54 ; 0x3e87
@..graphics_loc_3a8b.l78:
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
@..graphics_loc_3a8b.l79:
    mov ax, word [bp - 0x002e]       ; 0x3ec2
    mov di, word [bp - 0x000e]       ; 0x3ec5
    add di, word [bp - 0x001e]       ; 0x3ec8
    cmp ax, di                       ; 0x3ecb
    jb short @..graphics_loc_3a8b.l80 ; 0x3ecd
    jmp near @..graphics_loc_3a8b.l100 ; 0x3ecf
@..graphics_loc_3a8b.l80:
    push cx                          ; 0x3ed2
    call leaf_loc_3bf2               ; 0x3ed3
    mov ax, 0x36dd                   ; 0x3ed6
    mov word [bp - 0x0034], ax       ; 0x3ed9
    mov cx, word [bp - 0x0002]       ; 0x3edc
@..graphics_loc_3a8b.l81:
    push cx                          ; 0x3edf
    call leaf_loc_3c12               ; 0x3ee0
    mov bx, word [bp - 0x000c]       ; 0x3ee3
    mov al, byte [bx]                ; 0x3ee6
    and al, byte [bp - 0x000a]       ; 0x3ee8
    jne short @..graphics_loc_3a8b.l82 ; 0x3eeb
    jmp near @..graphics_loc_3a8b.l98 ; 0x3eed
@..graphics_loc_3a8b.l82:
    mov bx, word [bp - 0x0034]       ; 0x3ef0
    mov al, byte [cs:bx]             ; 0x3ef3
    cmp al, 0xff                     ; 0x3ef6
    jne short @..graphics_loc_3a8b.l83 ; 0x3ef8
    add si, byte 0x40                ; 0x3efa
    jmp near @..graphics_loc_3a8b.l98 ; 0x3efd
@..graphics_loc_3a8b.l83:
    push di                          ; 0x3f00
    push si                          ; 0x3f01
    mov al, 0x80                     ; 0x3f02
    mov byte [bp - 0x0038], al       ; 0x3f04
    mov cx, 8                        ; 0x3f07
@..graphics_loc_3a8b.l84:
    cmp word [bp - 0x002e], di       ; 0x3f0a
    jbe short @..graphics_loc_3a8b.l85 ; 0x3f0d
    jmp near @..graphics_loc_3a8b.l97 ; 0x3f0f
@..graphics_loc_3a8b.l85:
    mov bx, word [bp - 0x0036]       ; 0x3f12
    mov al, byte [cs:bx]             ; 0x3f15
    and al, byte [bp - 0x0038]       ; 0x3f18
    je short @..graphics_loc_3a8b.l86 ; 0x3f1b
    jmp near @..graphics_loc_3a8b.l96 ; 0x3f1d
@..graphics_loc_3a8b.l86:
    push cx                          ; 0x3f20
    push di                          ; 0x3f21
    mov al, 0x80                     ; 0x3f22
    mov byte [bp - 0x0032], al       ; 0x3f24
    mov cx, 8                        ; 0x3f27
@..graphics_loc_3a8b.l87:
    mov bx, word [bp - 0x0034]       ; 0x3f2a
    mov al, byte [cs:bx]             ; 0x3f2d
    and al, byte [bp - 0x0032]       ; 0x3f30
    jne short @..graphics_loc_3a8b.l95 ; 0x3f33
    mov al, byte [si]                ; 0x3f35
    cmp al, 0xff                     ; 0x3f37
    je short @..graphics_loc_3a8b.l92 ; 0x3f39
    cmp byte [bp + 0x1e], 2          ; 0x3f3b
    jne short @..graphics_loc_3a8b.l89 ; 0x3f3f
    mov al, byte [es:di]             ; 0x3f41
    mov bx, 0x40cd                   ; 0x3f44
    add bx, ax                       ; 0x3f47
    add al, byte [si]                ; 0x3f49
    jb short @..graphics_loc_3a8b.l88 ; 0x3f4b
    cmp al, byte [cs:bx]             ; 0x3f4d
    jb short @..graphics_loc_3a8b.l91 ; 0x3f50
@..graphics_loc_3a8b.l88:
    mov al, byte [cs:bx]             ; 0x3f52
    jmp short @..graphics_loc_3a8b.l91 ; 0x3f55
@..graphics_loc_3a8b.l89:
    cmp byte [bp - 0x0030], 0        ; 0x3f57
    je short @..graphics_loc_3a8b.l91 ; 0x3f5b
    mov bx, 0x40cd                   ; 0x3f5d
    add bx, ax                       ; 0x3f60
    add al, byte [bp - 0x0030]       ; 0x3f62
    jb short @..graphics_loc_3a8b.l90 ; 0x3f65
    cmp al, byte [cs:bx]             ; 0x3f67
    jb short @..graphics_loc_3a8b.l91 ; 0x3f6a
@..graphics_loc_3a8b.l90:
    mov al, byte [cs:bx]             ; 0x3f6c
@..graphics_loc_3a8b.l91:
    mov byte [es:di], al             ; 0x3f6f
@..graphics_loc_3a8b.l92:
    inc si                           ; 0x3f72
    dec di                           ; 0x3f73
    ror byte [bp - 0x0032], 1        ; 0x3f74
    loop @..graphics_loc_3a8b.l87    ; 0x3f77
@..graphics_loc_3a8b.l93:
    pop di                           ; 0x3f79
    sub di, strict word 0x140        ; 0x3f7a
    pop cx                           ; 0x3f7e
@..graphics_loc_3a8b.l94:
    ror byte [bp - 0x0038], 1        ; 0x3f7f
    loop @..graphics_loc_3a8b.l84    ; 0x3f82
    jmp short @..graphics_loc_3a8b.l97 ; 0x3f84
@..graphics_loc_3a8b.l95:
    inc si                           ; 0x3f86
    ror byte [bp - 0x0032], 1        ; 0x3f87
    loop @..graphics_loc_3a8b.l87    ; 0x3f8a
    jmp short @..graphics_loc_3a8b.l93 ; 0x3f8c
@..graphics_loc_3a8b.l96:
    add si, byte 8                   ; 0x3f8e
    jmp short @..graphics_loc_3a8b.l94 ; 0x3f91
@..graphics_loc_3a8b.l97:
    pop si                           ; 0x3f93
    add si, byte 0x40                ; 0x3f94
    pop di                           ; 0x3f97
@..graphics_loc_3a8b.l98:
    sub di, byte 8                   ; 0x3f98
    add di, word [bp - 0x003c]       ; 0x3f9b
    rol byte [bp - 0x000a], 1        ; 0x3f9e
    cmp byte [bp - 0x000a], 1        ; 0x3fa1
    jne short @..graphics_loc_3a8b.l99 ; 0x3fa5
    inc word [bp - 0x000c]           ; 0x3fa7
@..graphics_loc_3a8b.l99:
    inc word [bp - 0x0034]           ; 0x3faa
    pop cx                           ; 0x3fad
    loop @..graphics_loc_3a8b.l101   ; 0x3fae
    pop cx                           ; 0x3fb0
    sub word [bp - 0x000e], strict word 0xa00 ; 0x3fb1
    mov ax, word [bp - 0x003e]       ; 0x3fb6
    add word [bp - 0x000e], ax       ; 0x3fb9
    inc word [bp - 0x0036]           ; 0x3fbc
    mov byte [bp - 0x003a], 0x80     ; 0x3fbf
    loop @..graphics_loc_3a8b.l102   ; 0x3fc3
@..graphics_loc_3a8b.l100:
    pop es                           ; 0x3fc5
    ret                              ; 0x3fc6
@..graphics_loc_3a8b.l101:
    jmp near @..graphics_loc_3a8b.l81 ; 0x3fc7
@..graphics_loc_3a8b.l102:
    jmp near @..graphics_loc_3a8b.l79 ; 0x3fca

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

@..dos_write_file_2.l1:
    mov ax, cs                       ; 0x40cd
    mov ds, ax                       ; 0x40cf
    mov dx, 0x41dd                   ; 0x40d1
