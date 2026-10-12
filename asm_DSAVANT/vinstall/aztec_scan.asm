aztec_scan:
    push bp                          ; 0x0a0f
    mov bp, sp                       ; 0x0a10
    add sp, strict word 0xff60       ; 0x0a12
    push word [bp + 0x6]             ; 0x0a16
    lea ax, word [bp - 0x0050]       ; 0x0a19
    push ax                          ; 0x0a1c
    call aztec_strcpy                ; 0x0a1d
    add sp, byte 4                   ; 0x0a20
    mov ax, 0x14ef                   ; 0x0a23
    push ax                          ; 0x0a26
    lea ax, word [bp - 0x0050]       ; 0x0a27
    push ax                          ; 0x0a2a
    call string_loc_2aa6             ; 0x0a2b
    add sp, byte 4                   ; 0x0a2e
    mov ax, 2                        ; 0x0a31
    push ax                          ; 0x0a34
    lea ax, word [bp - 0x0050]       ; 0x0a35
    push ax                          ; 0x0a38
    call aztec_open                  ; 0x0a39
    add sp, byte 4                   ; 0x0a3c
    mov word [bss_2698], ax          ; 0x0a3f
    cmp ax, strict word 0xffff       ; 0x0a42
    jne short @..aztec_scan.l2       ; 0x0a45
    mov ax, 0x14fc                   ; 0x0a47
    push ax                          ; 0x0a4a
    lea ax, word [bp - 0x00a0]       ; 0x0a4b
    push ax                          ; 0x0a4f
    call aztec_strcpy                ; 0x0a50
    add sp, byte 4                   ; 0x0a53
    lea ax, word [bp - 0x0050]       ; 0x0a56
    push ax                          ; 0x0a59
    lea ax, word [bp - 0x00a0]       ; 0x0a5a
    push ax                          ; 0x0a5e
    call string_loc_2aa6             ; 0x0a5f
    add sp, byte 4                   ; 0x0a62
    mov ax, 0x151a                   ; 0x0a65
    push ax                          ; 0x0a68
    lea ax, word [bp - 0x00a0]       ; 0x0a69
    push ax                          ; 0x0a6d
    call string_loc_2aa6             ; 0x0a6e
    add sp, byte 4                   ; 0x0a71
    lea ax, word [bp - 0x00a0]       ; 0x0a74
    push ax                          ; 0x0a78
    call loc_0992                    ; 0x0a79
    pop cx                           ; 0x0a7c
    mov ax, 1                        ; 0x0a7d
@..aztec_scan.l1:
    mov sp, bp                       ; 0x0a80
    pop bp                           ; 0x0a82
    ret                              ; 0x0a83
@..aztec_scan.l2:
    mov ax, 0                        ; 0x0a84
    push ax                          ; 0x0a87
    mov ax, 0                        ; 0x0a88
    mov dx, 0                        ; 0x0a8b
    push dx                          ; 0x0a8e
    push ax                          ; 0x0a8f
    push word [bss_2698]             ; 0x0a90
    call aztec_lseek                 ; 0x0a94
    add sp, byte 8                   ; 0x0a97
    mov ax, 0x34c                    ; 0x0a9a
    push ax                          ; 0x0a9d
    mov ax, 0x269a                   ; 0x0a9e
    push ax                          ; 0x0aa1
    push word [bss_2698]             ; 0x0aa2
    call leaf_loc_3833               ; 0x0aa6
    add sp, byte 6                   ; 0x0aa9
    mov ax, word [bp + 0x1c]         ; 0x0aac
    cmp ax, word [bss_29d2]          ; 0x0aaf
    je short @..aztec_scan.l3        ; 0x0ab3
    mov ax, 0x152c                   ; 0x0ab5
    push ax                          ; 0x0ab8
    call loc_0992                    ; 0x0ab9
    pop cx                           ; 0x0abc
    push word [bss_2698]             ; 0x0abd
    call aztec_close                 ; 0x0ac1
    pop cx                           ; 0x0ac4
    mov ax, 1                        ; 0x0ac5
    jmp short @..aztec_scan.l1       ; 0x0ac8
@..aztec_scan.l3:
    mov ax, word [bp + 0x1c]         ; 0x0aca
    mov word [bss_29d2], ax          ; 0x0acd
    mov al, byte [bp + 0xc]          ; 0x0ad0
    mov byte [bss_29e2], al          ; 0x0ad3
    mov al, byte [bp + 0x12]         ; 0x0ad6
    mov byte [bss_29ba], al          ; 0x0ad9
    mov al, byte [bp + 0x14]         ; 0x0adc
    mov byte [bss_29bb], al          ; 0x0adf
    push word [bp + 0x16]            ; 0x0ae2
    mov ax, 0x29bc                   ; 0x0ae5
    push ax                          ; 0x0ae8
    call aztec_strcpy                ; 0x0ae9
    add sp, byte 4                   ; 0x0aec
    mov al, byte [bp + 0x18]         ; 0x0aef
    mov byte [bss_29d0], al          ; 0x0af2
    mov al, byte [bp + 0x1a]         ; 0x0af5
    mov byte [bss_29d1], al          ; 0x0af8
    mov ax, 0xa                      ; 0x0afb
    cmp word [bp + 0xe], byte 7      ; 0x0afe
    jne short @..aztec_scan.l4       ; 0x0b02
    mov ax, 0                        ; 0x0b04
@..aztec_scan.l4:
    mov byte [bss_29d4], al          ; 0x0b07
    mov ax, 0xa                      ; 0x0b0a
    cmp word [bp + 0xe], byte 7      ; 0x0b0d
    jne short @..aztec_scan.l5       ; 0x0b11
    mov ax, 0                        ; 0x0b13
@..aztec_scan.l5:
    mov byte [bss_29d5], al          ; 0x0b16
    mov ax, 0xa                      ; 0x0b19
    cmp word [bp + 0xe], byte 7      ; 0x0b1c
    jne short @..aztec_scan.l6       ; 0x0b20
    mov ax, 0                        ; 0x0b22
@..aztec_scan.l6:
    mov byte [bss_29d6], al          ; 0x0b25
    mov ax, 0xa                      ; 0x0b28
    cmp word [bp + 0xe], byte 7      ; 0x0b2b
    jne short @..aztec_scan.l7       ; 0x0b2f
    mov ax, 0                        ; 0x0b31
@..aztec_scan.l7:
    mov byte [bss_29d7], al          ; 0x0b34
    mov ax, word [bp + 0xe]          ; 0x0b37
    mov cx, 7                        ; 0x0b3a
    cwd                              ; 0x0b3d
    idiv cx                          ; 0x0b3e
    mov ax, dx                       ; 0x0b40
    mov word [bp + 0xe], ax          ; 0x0b42
    mov al, byte [bp + 0xe]          ; 0x0b45
    mov byte [bss_29dc], al          ; 0x0b48
    cmp word [bp + 0xe], byte 5      ; 0x0b4b
    jne short @..aztec_scan.l8       ; 0x0b4f
    mov byte [bss_29dc], 0           ; 0x0b51
@..aztec_scan.l8:
    mov byte [bss_29dd], al          ; 0x0b56
    cmp word [bp + 0xe], byte 2      ; 0x0b59
    je short @..aztec_scan.l9        ; 0x0b5d
    cmp word [bp + 0xe], byte 3      ; 0x0b5f
    jne short @..aztec_scan.l10      ; 0x0b63
@..aztec_scan.l9:
    mov byte [bss_29dd], 0           ; 0x0b65
@..aztec_scan.l10:
    mov word [bss_29d8], 0           ; 0x0b6a
    mov word [bss_29da], 0           ; 0x0b70
    cmp word [bp + 0xe], byte 0      ; 0x0b76
    jle short @..aztec_scan.l11      ; 0x0b7a
    mov word [bss_29d8], 0x220       ; 0x0b7c
    mov word [bss_29da], 0x220       ; 0x0b82
@..aztec_scan.l11:
    mov ax, 1                        ; 0x0b88
    cmp word [bp + 0x10], byte 0     ; 0x0b8b
    jne short @..aztec_scan.l12      ; 0x0b8f
    mov ax, 0                        ; 0x0b91
@..aztec_scan.l12:
    mov byte [bss_29e1], al          ; 0x0b94
    mov al, byte [bp + 0xa]          ; 0x0b97
    mov byte [bss_29df], al          ; 0x0b9a
    push word [bp + 0x6]             ; 0x0b9d
    mov ax, 0x296a                   ; 0x0ba0
    push ax                          ; 0x0ba3
    call aztec_strcpy                ; 0x0ba4
    add sp, byte 4                   ; 0x0ba7
    push word [bp + 0x6]             ; 0x0baa
    mov ax, 0x2992                   ; 0x0bad
    push ax                          ; 0x0bb0
    call aztec_strcpy                ; 0x0bb1
    add sp, byte 4                   ; 0x0bb4
    cmp word [bp + 0xa], byte 5      ; 0x0bb7
    jne short @..aztec_scan.l13      ; 0x0bbb
    push word [bp + 0x8]             ; 0x0bbd
    mov ax, 0x297e                   ; 0x0bc0
    push ax                          ; 0x0bc3
    call aztec_strcpy                ; 0x0bc4
    add sp, byte 4                   ; 0x0bc7
    mov ax, 0x155e                   ; 0x0bca
    push ax                          ; 0x0bcd
    mov ax, 0x297e                   ; 0x0bce
    push ax                          ; 0x0bd1
    call string_loc_2aa6             ; 0x0bd2
    add sp, byte 4                   ; 0x0bd5
    mov byte [bss_29e3], 1           ; 0x0bd8
@..aztec_scan.l13:
    mov ax, 0x1560                   ; 0x0bdd
    push ax                          ; 0x0be0
    mov ax, 0x29a6                   ; 0x0be1
    push ax                          ; 0x0be4
    call aztec_strcpy                ; 0x0be5
    add sp, byte 4                   ; 0x0be8
    mov ax, 0                        ; 0x0beb
    push ax                          ; 0x0bee
    mov ax, 0                        ; 0x0bef
    mov dx, 0                        ; 0x0bf2
    push dx                          ; 0x0bf5
    push ax                          ; 0x0bf6
    push word [bss_2698]             ; 0x0bf7
    call aztec_lseek                 ; 0x0bfb
    add sp, byte 8                   ; 0x0bfe
    mov ax, 0x34c                    ; 0x0c01
    push ax                          ; 0x0c04
    mov ax, 0x269a                   ; 0x0c05
    push ax                          ; 0x0c08
    push word [bss_2698]             ; 0x0c09
    call aztec_write                 ; 0x0c0d
    add sp, byte 6                   ; 0x0c10
    push word [bss_2698]             ; 0x0c13
    call aztec_close                 ; 0x0c17
    pop cx                           ; 0x0c1a
    mov ax, 0                        ; 0x0c1b
    jmp near @..aztec_scan.l1        ; 0x0c1e
loc_0c21:
    push bp                          ; 0x0c21
    mov bp, sp                       ; 0x0c22
    mov ax, word [bp + 0x4]          ; 0x0c24
    mov cx, 4                        ; 0x0c27
    cwd                              ; 0x0c2a
    idiv cx                          ; 0x0c2b
    mov ax, dx                       ; 0x0c2d
    inc ax                           ; 0x0c2f
    mov word [bp + 0x4], ax          ; 0x0c30
    cmp ax, strict word 1            ; 0x0c33
    jne short @..local.l28           ; 0x0c36
    cmp word [bss_29e6], byte 0      ; 0x0c38
    jne short @..local.l28           ; 0x0c3d
    inc word [bp + 0x4]              ; 0x0c3f
@..local.l28:
    cmp word [bp + 0x4], byte 2      ; 0x0c42
    jne short @..local.l29           ; 0x0c46
    cmp word [bss_29e8], byte 0      ; 0x0c48
    jne short @..local.l29           ; 0x0c4d
    inc word [bp + 0x4]              ; 0x0c4f
@..local.l29:
    cmp word [bp + 0x4], byte 3      ; 0x0c52
    jne short @..local.l30           ; 0x0c56
    cmp word [bss_29ea], byte 0      ; 0x0c58
    jne short @..local.l30           ; 0x0c5d
    inc word [bp + 0x4]              ; 0x0c5f
@..local.l30:
    cmp word [bp + 0x4], byte 4      ; 0x0c62
    jne short @..local.l31           ; 0x0c66
    cmp word [bss_29ec], byte 0      ; 0x0c68
    jne short @..local.l31           ; 0x0c6d
    mov word [bp + 0x4], 1           ; 0x0c6f
@..local.l31:
    cmp word [bp + 0x4], byte 1      ; 0x0c74
    jne short @..local.l32           ; 0x0c78
    cmp word [bss_29e6], byte 0      ; 0x0c7a
    jne short @..local.l32           ; 0x0c7f
    inc word [bp + 0x4]              ; 0x0c81
@..local.l32:
    cmp word [bp + 0x4], byte 2      ; 0x0c84
    jne short @..local.l33           ; 0x0c88
    cmp word [bss_29e8], byte 0      ; 0x0c8a
    jne short @..local.l33           ; 0x0c8f
    inc word [bp + 0x4]              ; 0x0c91
@..local.l33:
    cmp word [bp + 0x4], byte 3      ; 0x0c94
    jne short @..local.l34           ; 0x0c98
    cmp word [bss_29ea], byte 0      ; 0x0c9a
    jne short @..local.l34           ; 0x0c9f
    inc word [bp + 0x4]              ; 0x0ca1
@..local.l34:
    cmp word [bp + 0x4], byte 4      ; 0x0ca4
    jne short @..local.l35           ; 0x0ca8
    cmp word [bss_29ec], byte 0      ; 0x0caa
    jne short @..local.l35           ; 0x0caf
    mov word [bp + 0x4], 0           ; 0x0cb1
@..local.l35:
    mov ax, word [bp + 0x4]          ; 0x0cb6
    shl ax, 1                        ; 0x0cb9
    mov bx, ax                       ; 0x0cbb
    push word [word bx + 0x2]        ; 0x0cbd
    mov ax, 0x10                     ; 0x0cc1
    push ax                          ; 0x0cc4
    mov ax, 0xd                      ; 0x0cc5
    push ax                          ; 0x0cc8
    call loc_040f                    ; 0x0cc9
    add sp, byte 6                   ; 0x0ccc
    mov ax, word [bp + 0x4]          ; 0x0ccf
    mov sp, bp                       ; 0x0cd2
    pop bp                           ; 0x0cd4
    ret                              ; 0x0cd5
loc_0cd6:
    push bp                          ; 0x0cd6
    mov bp, sp                       ; 0x0cd7
    push si                          ; 0x0cd9
@..local.l36:
    mov ax, word [bp + 0x6]          ; 0x0cda
    inc ax                           ; 0x0cdd
    mov cx, 5                        ; 0x0cde
    cwd                              ; 0x0ce1
    idiv cx                          ; 0x0ce2
    mov word [bp + 0x6], dx          ; 0x0ce4
    mov bx, word [bp + 0x8]          ; 0x0ce7
    mov si, word [bp + 0x6]          ; 0x0cea
    cmp byte [bx + si], 0x30         ; 0x0ced
    je short @..local.l36            ; 0x0cf0
    mov ax, word [bp + 0x6]          ; 0x0cf2
    shl ax, 1                        ; 0x0cf5
    mov bx, ax                       ; 0x0cf7
    push word [bx + 0x160]           ; 0x0cf9
    mov ax, 0x16                     ; 0x0cfd
    push ax                          ; 0x0d00
    push word [bp + 0x4]             ; 0x0d01
    call loc_040f                    ; 0x0d04
    add sp, byte 6                   ; 0x0d07
    mov ax, word [bp + 0x6]          ; 0x0d0a
    pop si                           ; 0x0d0d
    mov sp, bp                       ; 0x0d0e
    pop bp                           ; 0x0d10
    ret                              ; 0x0d11
loc_0d12:
    push bp                          ; 0x0d12
    mov bp, sp                       ; 0x0d13
    mov ax, word [bp + 0x4]          ; 0x0d15
    inc ax                           ; 0x0d18
    mov cx, 8                        ; 0x0d19
    cwd                              ; 0x0d1c
    idiv cx                          ; 0x0d1d
    mov word [bp + 0x4], dx          ; 0x0d1f
    shl dx, 1                        ; 0x0d22
    mov bx, dx                       ; 0x0d24
    push word [bx + 0xa4]            ; 0x0d26
    mov ax, 0x29                     ; 0x0d2a
    push ax                          ; 0x0d2d
    mov ax, 0x12                     ; 0x0d2e
    push ax                          ; 0x0d31
    call loc_040f                    ; 0x0d32
    add sp, byte 6                   ; 0x0d35
    mov ax, word [bp + 0x4]          ; 0x0d38
    mov sp, bp                       ; 0x0d3b
    pop bp                           ; 0x0d3d
    ret                              ; 0x0d3e
loc_0d3f:
    push bp                          ; 0x0d3f
    mov bp, sp                       ; 0x0d40
    mov ax, word [bp + 0x8]          ; 0x0d42
    inc ax                           ; 0x0d45
    mov cx, 2                        ; 0x0d46
    cwd                              ; 0x0d49
    idiv cx                          ; 0x0d4a
    mov word [bp + 0x8], dx          ; 0x0d4c
    shl dx, 1                        ; 0x0d4f
    mov bx, dx                       ; 0x0d51
    push word [bx + 0x154]           ; 0x0d53
    push word [bp + 0x6]             ; 0x0d57
    push word [bp + 0x4]             ; 0x0d5a
    call loc_040f                    ; 0x0d5d
    add sp, byte 6                   ; 0x0d60
    mov ax, word [bp + 0x8]          ; 0x0d63
    mov sp, bp                       ; 0x0d66
    pop bp                           ; 0x0d68
    ret                              ; 0x0d69
loc_0d6a:
    push bp                          ; 0x0d6a
    mov bp, sp                       ; 0x0d6b
    add sp, byte 0xae                ; 0x0d6d
    push word [bp + 0x4]             ; 0x0d70
    call aztec_strlen                ; 0x0d73
    pop cx                           ; 0x0d76
    cmp ax, strict word 0x4c         ; 0x0d77
    jle short @..local.l37           ; 0x0d7a
    mov ax, 0x4c                     ; 0x0d7c
    jmp short @..local.l38           ; 0x0d7f
@..local.l37:
    push word [bp + 0x4]             ; 0x0d81
    call aztec_strlen                ; 0x0d84
    pop cx                           ; 0x0d87
@..local.l38:
    mov word [bp - 0x0002], ax       ; 0x0d88
    push ax                          ; 0x0d8b
    push word [bp + 0x4]             ; 0x0d8c
    lea ax, word [bp - 0x0052]       ; 0x0d8f
    push ax                          ; 0x0d92
    call aztec_strncpy               ; 0x0d93
    add sp, byte 6                   ; 0x0d96
    mov bx, word [bp - 0x0002]       ; 0x0d99
    add bx, bp                       ; 0x0d9c
    mov byte [bx - 0x0052], 0        ; 0x0d9e
    mov ax, 0x156d                   ; 0x0da2
    push ax                          ; 0x0da5
    mov ax, 0                        ; 0x0da6
    push ax                          ; 0x0da9
    mov ax, 0x16                     ; 0x0daa
    push ax                          ; 0x0dad
    call loc_040f                    ; 0x0dae
    add sp, byte 6                   ; 0x0db1
    lea ax, word [bp - 0x0052]       ; 0x0db4
    push ax                          ; 0x0db7
    push ax                          ; 0x0db8
    call aztec_strlen                ; 0x0db9
    pop cx                           ; 0x0dbc
    inc ax                           ; 0x0dbd
    mov cx, 2                        ; 0x0dbe
    cwd                              ; 0x0dc1
    idiv cx                          ; 0x0dc2
    mov cx, ax                       ; 0x0dc4
    mov ax, 0x28                     ; 0x0dc6
    sub ax, cx                       ; 0x0dc9
    push ax                          ; 0x0dcb
    mov ax, 0x16                     ; 0x0dcc
    push ax                          ; 0x0dcf
    call loc_040f                    ; 0x0dd0
    add sp, byte 6                   ; 0x0dd3
    mov sp, bp                       ; 0x0dd6
    pop bp                           ; 0x0dd8
    ret                              ; 0x0dd9
loc_0dda:
    push bp                          ; 0x0dda
    mov bp, sp                       ; 0x0ddb
    add sp, strict word 0xff5c       ; 0x0ddd
    mov ax, 0x15bd                   ; 0x0de1
    push ax                          ; 0x0de4
    lea ax, word [bp - 0x00a2]       ; 0x0de5
    push ax                          ; 0x0de9
    call aztec_strcpy                ; 0x0dea
    add sp, byte 4                   ; 0x0ded
    cmp word [bp + 0x8], byte 0      ; 0x0df0
    jge short @..local.l39           ; 0x0df4
    mov ax, 0x15cc                   ; 0x0df6
    push ax                          ; 0x0df9
    lea ax, word [bp - 0x00a2]       ; 0x0dfa
    push ax                          ; 0x0dfe
    call string_loc_2aa6             ; 0x0dff
    add sp, byte 4                   ; 0x0e02
    mov ax, 0                        ; 0x0e05
    sub ax, word [bp + 0x8]          ; 0x0e08
    mov word [bp + 0x8], ax          ; 0x0e0b
    jmp short @..local.l40           ; 0x0e0e
@..local.l39:
    mov ax, 0x15d8                   ; 0x0e10
    push ax                          ; 0x0e13
    lea ax, word [bp - 0x00a2]       ; 0x0e14
    push ax                          ; 0x0e18
    call string_loc_2aa6             ; 0x0e19
    add sp, byte 4                   ; 0x0e1c
    call loc_0452                    ; 0x0e1f
@..local.l40:
    mov ax, 0x15e1                   ; 0x0e22
    push ax                          ; 0x0e25
    lea ax, word [bp - 0x00a2]       ; 0x0e26
    push ax                          ; 0x0e2a
    call string_loc_2aa6             ; 0x0e2b
    add sp, byte 4                   ; 0x0e2e
    mov ax, word [bp + 0x8]          ; 0x0e31
    add ax, strict word 0x40         ; 0x0e34
    mov byte [bp - 0x0002], al       ; 0x0e37
    mov byte [bp - 0x0001], 0        ; 0x0e3a
    lea ax, word [bp - 0x0002]       ; 0x0e3e
    push ax                          ; 0x0e41
    lea ax, word [bp - 0x00a2]       ; 0x0e42
    push ax                          ; 0x0e46
    call string_loc_2aa6             ; 0x0e47
    add sp, byte 4                   ; 0x0e4a
    mov ax, 0x15e9                   ; 0x0e4d
    push ax                          ; 0x0e50
    lea ax, word [bp - 0x00a2]       ; 0x0e51
    push ax                          ; 0x0e55
    call string_loc_2aa6             ; 0x0e56
    add sp, byte 4                   ; 0x0e59
    push word [bp + 0x4]             ; 0x0e5c
    lea ax, word [bp - 0x00a2]       ; 0x0e5f
    push ax                          ; 0x0e63
    call string_loc_2aa6             ; 0x0e64
    add sp, byte 4                   ; 0x0e67
    mov ax, 0x15f7                   ; 0x0e6a
    push ax                          ; 0x0e6d
    lea ax, word [bp - 0x00a2]       ; 0x0e6e
    push ax                          ; 0x0e72
    call string_loc_2aa6             ; 0x0e73
    add sp, byte 4                   ; 0x0e76
    push word [bp + 0xa]             ; 0x0e79
    call aztec_strlen                ; 0x0e7c
    pop cx                           ; 0x0e7f
    cmp ax, strict word 0            ; 0x0e80
    jle short @..local.l42           ; 0x0e83
    push word [bp + 0x6]             ; 0x0e85
    lea ax, word [bp - 0x0052]       ; 0x0e88
    push ax                          ; 0x0e8b
    call aztec_strcpy                ; 0x0e8c
    add sp, byte 4                   ; 0x0e8f
    push word [bp + 0xa]             ; 0x0e92
    lea ax, word [bp - 0x0052]       ; 0x0e95
    push ax                          ; 0x0e98
    call string_loc_2aa6             ; 0x0e99
    add sp, byte 4                   ; 0x0e9c
@..local.l41:
    lea ax, word [bp - 0x00a2]       ; 0x0e9f
    push ax                          ; 0x0ea3
    call loc_0992                    ; 0x0ea4
    pop cx                           ; 0x0ea7
    mov ax, 0                        ; 0x0ea8
    push ax                          ; 0x0eab
    lea ax, word [bp - 0x0052]       ; 0x0eac
    push ax                          ; 0x0eaf
    call aztec_open                  ; 0x0eb0
    add sp, byte 4                   ; 0x0eb3
    mov word [bp - 0x00a4], ax       ; 0x0eb6
    cmp word [bp - 0x00a4], byte 0xff ; 0x0eba
    je short @..local.l41            ; 0x0ebf
    push word [bp - 0x00a4]          ; 0x0ec1
    call aztec_close                 ; 0x0ec5
    pop cx                           ; 0x0ec8
    jmp short @..local.l43           ; 0x0ec9
@..local.l42:
    lea ax, word [bp - 0x00a2]       ; 0x0ecb
    push ax                          ; 0x0ecf
    call loc_0992                    ; 0x0ed0
    pop cx                           ; 0x0ed3
@..local.l43:
    mov sp, bp                       ; 0x0ed4
    pop bp                           ; 0x0ed6
    ret                              ; 0x0ed7
loc_0ed8:
    push bp                          ; 0x0ed8
    mov bp, sp                       ; 0x0ed9
    add sp, strict word 0xfe34       ; 0x0edb
    push word [bp + 0x4]             ; 0x0edf
    lea ax, word [bp - 0x0028]       ; 0x0ee2
    push ax                          ; 0x0ee5
    call aztec_strcpy                ; 0x0ee6
    add sp, byte 4                   ; 0x0ee9
    mov ax, 0x1609                   ; 0x0eec
    push ax                          ; 0x0eef
    lea ax, word [bp - 0x0028]       ; 0x0ef0
    push ax                          ; 0x0ef3
    call string_loc_2aa6             ; 0x0ef4
    add sp, byte 4                   ; 0x0ef7
    mov ax, 0x1615                   ; 0x0efa
    push ax                          ; 0x0efd
    lea ax, word [bp - 0x0050]       ; 0x0efe
    push ax                          ; 0x0f01
    call aztec_strcpy                ; 0x0f02
    add sp, byte 4                   ; 0x0f05
    push word [bp + 0x4]             ; 0x0f08
    lea ax, word [bp - 0x0078]       ; 0x0f0b
    push ax                          ; 0x0f0e
    call aztec_strcpy                ; 0x0f0f
    add sp, byte 4                   ; 0x0f12
    push word [bp + 0x8]             ; 0x0f15
    lea ax, word [bp - 0x0078]       ; 0x0f18
    push ax                          ; 0x0f1b
    call string_loc_2aa6             ; 0x0f1c
    add sp, byte 4                   ; 0x0f1f
    push word [bp + 0x4]             ; 0x0f22
    lea ax, word [bp - 0x0177]       ; 0x0f25
    push ax                          ; 0x0f29
    call aztec_strcpy                ; 0x0f2a
    add sp, byte 4                   ; 0x0f2d
    mov ax, 0x1621                   ; 0x0f30
    push ax                          ; 0x0f33
    lea ax, word [bp - 0x0177]       ; 0x0f34
    push ax                          ; 0x0f38
    call string_loc_2aa6             ; 0x0f39
    add sp, byte 4                   ; 0x0f3c
    push word [bp + 0x4]             ; 0x0f3f
    lea ax, word [bp - 0x0177]       ; 0x0f42
    push ax                          ; 0x0f46
    call string_loc_2aa6             ; 0x0f47
    add sp, byte 4                   ; 0x0f4a
    push word [bp + 0x8]             ; 0x0f4d
    lea ax, word [bp - 0x0177]       ; 0x0f50
    push ax                          ; 0x0f54
    call string_loc_2aa6             ; 0x0f55
    add sp, byte 4                   ; 0x0f58
    mov ax, 0x162e                   ; 0x0f5b
    push ax                          ; 0x0f5e
    lea ax, word [bp - 0x0177]       ; 0x0f5f
    push ax                          ; 0x0f63
    call string_loc_2aa6             ; 0x0f64
    add sp, byte 4                   ; 0x0f67
    push word [bp + 0xa]             ; 0x0f6a
    lea ax, word [bp - 0x0177]       ; 0x0f6d
    push ax                          ; 0x0f71
    call string_loc_2aa6             ; 0x0f72
    add sp, byte 4                   ; 0x0f75
    lea ax, word [bp - 0x0177]       ; 0x0f78
    push ax                          ; 0x0f7c
    call loc_0d6a                    ; 0x0f7d
    pop cx                           ; 0x0f80
    mov ax, 0x2357                   ; 0x0f81
    push ax                          ; 0x0f84
    mov ax, 0x1634                   ; 0x0f85
    push ax                          ; 0x0f88
    mov ax, 0x1630                   ; 0x0f89
    push ax                          ; 0x0f8c
    call loc_2bfe                    ; 0x0f8d
    add sp, byte 6                   ; 0x0f90
    mov word [bss_29ee], ax          ; 0x0f93
    mov ax, 0                        ; 0x0f96
    push ax                          ; 0x0f99
    push ax                          ; 0x0f9a
    push word [bp + 0xa]             ; 0x0f9b
    lea ax, word [bp - 0x0078]       ; 0x0f9e
    push ax                          ; 0x0fa1
    lea ax, word [bp - 0x0050]       ; 0x0fa2
    push ax                          ; 0x0fa5
    lea ax, word [bp - 0x0028]       ; 0x0fa6
    push ax                          ; 0x0fa9
    call loc_2908                    ; 0x0faa
    add sp, byte 0x0c                ; 0x0fad
    mov word [bp - 0x01c9], ax       ; 0x0fb0
    call aztec_wait                  ; 0x0fb4
    mov word [bp - 0x01cb], ax       ; 0x0fb7
    push word [bss_29ee]             ; 0x0fbb
    mov ax, 0x163a                   ; 0x0fbf
    push ax                          ; 0x0fc2
    mov ax, 0x1636                   ; 0x0fc3
    push ax                          ; 0x0fc6
    call loc_2bfe                    ; 0x0fc7
    add sp, byte 6                   ; 0x0fca
    mov word [bss_29ee], ax          ; 0x0fcd
    cmp word [bp - 0x01c9], byte 0xff ; 0x0fd0
    je short @..local.l44            ; 0x0fd5
    cmp word [bp - 0x01cb], byte 0   ; 0x0fd7
    je short @..local.l45            ; 0x0fdc
@..local.l44:
    mov ax, 0x163c                   ; 0x0fde
    push ax                          ; 0x0fe1
    lea ax, word [bp - 0x01c7]       ; 0x0fe2
    push ax                          ; 0x0fe6
    call aztec_strcpy                ; 0x0fe7
    add sp, byte 4                   ; 0x0fea
    push word [bp + 0x4]             ; 0x0fed
    lea ax, word [bp - 0x01c7]       ; 0x0ff0
    push ax                          ; 0x0ff4
    call string_loc_2aa6             ; 0x0ff5
    add sp, byte 4                   ; 0x0ff8
    push word [bp + 0x8]             ; 0x0ffb
    lea ax, word [bp - 0x01c7]       ; 0x0ffe
    push ax                          ; 0x1002
    call string_loc_2aa6             ; 0x1003
    add sp, byte 4                   ; 0x1006
    mov ax, 0x1657                   ; 0x1009
    push ax                          ; 0x100c
    lea ax, word [bp - 0x01c7]       ; 0x100d
    push ax                          ; 0x1011
    call string_loc_2aa6             ; 0x1012
    add sp, byte 4                   ; 0x1015
    lea ax, word [bp - 0x01c7]       ; 0x1018
    push ax                          ; 0x101c
    call loc_0992                    ; 0x101d
    pop cx                           ; 0x1020
    mov ax, 3                        ; 0x1021
    push ax                          ; 0x1024
    call loc_380b                    ; 0x1025
    pop cx                           ; 0x1028
@..local.l45:
    mov sp, bp                       ; 0x1029
    pop bp                           ; 0x102b
    ret                              ; 0x102c

    db 0x55, 0x8b, 0xec, 0xb8, 0xf0, 0x29, 0x50, 0xe8
    db '8%Y=P', 0
    db 0x7f, 0x18, 0xb8, 0xf0, 0x29, 0x50, 0xe8, 0x2b, 0x25, 0x59, 0x3d, 0x00, 0x00, 0x7e, 0x2e, 0xff
    db 0x76, 0x0a, 0xe8, 0x1f, 0x25, 0x59, 0x85, 0xc0, 0x75, 0x23, 0xb8, 0xf0, 0x29, 0x50, 0xff, 0x76
    db 0x08, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x73, 0xfe, 0x83, 0xc4, 0x08, 0xb8, 0x69, 0x16
    db 0x50, 0xb8, 0xf0, 0x29, 0x50, 0xe8, 0x6a, 0x1a, 0x83, 0xc4, 0x04, 0xeb, 0x1b, 0xb8, 0xf0, 0x29
    db 0x50, 0xe8, 0xf0, 0x24, 0x59, 0x3d, 0x00, 0x00, 0x7e, 0x0e, 0xb8, 0x6a, 0x16, 0x50, 0xb8, 0xf0
    db 0x29, 0x50, 0xe8, 0x16, 0x1a, 0x83, 0xc4, 0x04, 0xff, 0x76, 0x0a, 0xb8, 0xf0, 0x29, 0x50, 0xe8
    db 0x09, 0x1a, 0x83, 0xc4, 0x04, 0x8b, 0xe5, 0x5d, 0xc3

