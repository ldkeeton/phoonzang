; auto-generated
loc_3c2e:
    mov ax, word [bp - 0x002a]       ; 0x3c2e
    sub word [bp - 0x000e], ax       ; 0x3c31
    mov ax, word [bp - 0x0024]       ; 0x3c34
    mov bx, 0x140                    ; 0x3c37
    mul bx                           ; 0x3c3a
    add word [bp - 0x000e], ax       ; 0x3c3c
loc_3c3f:
    mov ax, word [bp - 0x0022]       ; 0x3c3f
    mov di, word [bp - 0x000e]       ; 0x3c42
    add di, word [bp - 0x001e]       ; 0x3c45
    cmp di, ax                       ; 0x3c48
    jb short loc_3c4f                ; 0x3c4a
    jmp near loc_3d42                ; 0x3c4c
loc_3c4f:
    push cx                          ; 0x3c4f
    call leaf_loc_MTKK               ; 0x3c50
    mov ax, cseg_35dd - IMAGE_BASE   ; 0x3c53
    mov word [bp - 0x0034], ax       ; 0x3c56
    mov cx, word [bp - 0x0002]       ; 0x3c59
loc_3c5c:
    push cx                          ; 0x3c5c
    call leaf_loc_KSJN               ; 0x3c5d
    mov bx, word [bp - 0x000c]       ; 0x3c60
    mov al, byte [bx]                ; 0x3c63
    and al, byte [bp - 0x000a]       ; 0x3c65
    jne short loc_3c6d               ; 0x3c68
    jmp near loc_3d15                ; 0x3c6a
loc_3c6d:
    mov bx, word [bp - 0x0034]       ; 0x3c6d
    mov al, byte [cs:bx]             ; 0x3c70
    cmp al, 0xff                     ; 0x3c73
    jne short loc_3c7d               ; 0x3c75
    add si, byte 0x40                ; 0x3c77
    jmp near loc_3d15                ; 0x3c7a
loc_3c7d:
    push di                          ; 0x3c7d
    push si                          ; 0x3c7e
    mov al, 0x80                     ; 0x3c7f
    mov byte [bp - 0x0038], al       ; 0x3c81
    mov cx, 8                        ; 0x3c84
loc_3c87:
    cmp di, word [bp - 0x0022]       ; 0x3c87
    jb short loc_3c8f                ; 0x3c8a
    jmp near loc_3d10                ; 0x3c8c
loc_3c8f:
    mov bx, word [bp - 0x0036]       ; 0x3c8f
    mov al, byte [cs:bx]             ; 0x3c92
    and al, byte [bp - 0x0038]       ; 0x3c95
    je short loc_3c9d                ; 0x3c98
    jmp near loc_3d0b                ; 0x3c9a
loc_3c9d:
    push cx                          ; 0x3c9d
    push di                          ; 0x3c9e
    mov al, 0x80                     ; 0x3c9f
    mov byte [bp - 0x0032], al       ; 0x3ca1
    mov cx, 8                        ; 0x3ca4
loc_3ca7:
    mov bx, word [bp - 0x0034]       ; 0x3ca7
    mov al, byte [cs:bx]             ; 0x3caa
    and al, byte [bp - 0x0032]       ; 0x3cad
    jne short loc_3d03               ; 0x3cb0
    mov al, byte [si]                ; 0x3cb2
    cmp al, 0xff                     ; 0x3cb4
    je short loc_3cef                ; 0x3cb6
    cmp byte [bp + 0x1e], 2          ; 0x3cb8
    jne short loc_3cd4               ; 0x3cbc
    mov al, byte [es:di]             ; 0x3cbe
    mov bx, 0x40cd                   ; 0x3cc1
    add bx, ax                       ; 0x3cc4
    add al, byte [si]                ; 0x3cc6
    jb short loc_3ccf                ; 0x3cc8
    cmp al, byte [cs:bx]             ; 0x3cca
    jb short loc_3cec                ; 0x3ccd
loc_3ccf:
    mov al, byte [cs:bx]             ; 0x3ccf
    jmp short loc_3cec               ; 0x3cd2
loc_3cd4:
    cmp byte [bp - 0x0030], 0        ; 0x3cd4
    je short loc_3cec                ; 0x3cd8
    mov bx, 0x40cd                   ; 0x3cda
    add bx, ax                       ; 0x3cdd
    add al, byte [bp - 0x0030]       ; 0x3cdf
    jb short loc_3ce9                ; 0x3ce2
    cmp al, byte [cs:bx]             ; 0x3ce4
    jb short loc_3cec                ; 0x3ce7
loc_3ce9:
    mov al, byte [cs:bx]             ; 0x3ce9
loc_3cec:
    mov byte [es:di], al             ; 0x3cec
loc_3cef:
    inc si                           ; 0x3cef
    dec di                           ; 0x3cf0
    ror byte [bp - 0x0032], 1        ; 0x3cf1
    loop loc_3ca7                    ; 0x3cf4
loc_3cf6:
    pop di                           ; 0x3cf6
    pop cx                           ; 0x3cf7
    add di, strict word 0x140        ; 0x3cf8
loc_3cfc:
    ror byte [bp - 0x0038], 1        ; 0x3cfc
    loop loc_3c87                    ; 0x3cff
    jmp short loc_3d10               ; 0x3d01
loc_3d03:
    inc si                           ; 0x3d03
    ror byte [bp - 0x0032], 1        ; 0x3d04
    loop loc_3ca7                    ; 0x3d07
    jmp short loc_3cf6               ; 0x3d09
loc_3d0b:
    add si, byte 8                   ; 0x3d0b
    jmp short loc_3cfc               ; 0x3d0e
loc_3d10:
    pop si                           ; 0x3d10
    add si, byte 0x40                ; 0x3d11
    pop di                           ; 0x3d14
loc_3d15:
    sub di, byte 8                   ; 0x3d15
    add di, word [bp - 0x003c]       ; 0x3d18
    rol byte [bp - 0x000a], 1        ; 0x3d1b
    cmp byte [bp - 0x000a], 1        ; 0x3d1e
    jne short loc_3d27               ; 0x3d22
    inc word [bp - 0x000c]           ; 0x3d24
loc_3d27:
    inc word [bp - 0x0034]           ; 0x3d27
    pop cx                           ; 0x3d2a
    loop loc_3d44                    ; 0x3d2b
    pop cx                           ; 0x3d2d
    add word [bp - 0x000e], strict word 0xa00 ; 0x3d2e
    mov ax, word [bp - 0x003e]       ; 0x3d33
    sub word [bp - 0x000e], ax       ; 0x3d36
    inc word [bp - 0x0036]           ; 0x3d39
    mov byte [bp - 0x003a], 0x80     ; 0x3d3c
    loop loc_3d47                    ; 0x3d40
loc_3d42:
    pop es                           ; 0x3d42
    ret                              ; 0x3d43
loc_3d44:
    jmp near loc_3c5c                ; 0x3d44
loc_3d47:
    jmp near loc_3c3f                ; 0x3d47
