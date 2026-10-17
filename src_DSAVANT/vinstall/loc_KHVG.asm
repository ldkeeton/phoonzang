; auto-generated
loc_KHVG:
    mov word [bp - 0x019e], 0xffff   ; 0x1bd5
    mov ax, word [bp - 0x019c]       ; 0x1bdb
    jmp near @..loc_JGSH.l46         ; 0x1bdf
jumptable_1f81_case_0:
    mov ax, 0x1e9e                   ; 0x1be2
    push ax                          ; 0x1be5
    push word [bp - 0x000e]          ; 0x1be6
    mov ax, 8                        ; 0x1be9
    push ax                          ; 0x1bec
    call loc_HUKT                    ; 0x1bed
    add sp, byte 6                   ; 0x1bf0
    mov word [bp - 0x000e], ax       ; 0x1bf3
    jmp near @..loc_JGSH.l47         ; 0x1bf6
jumptable_1f81_case_1:
@..loc_JGSH.l14:
    mov ax, 2                        ; 0x1bf9
    push ax                          ; 0x1bfc
    lea ax, word [bp - 0x001c]       ; 0x1bfd
    push ax                          ; 0x1c00
    mov ax, 0x2e                     ; 0x1c01
    push ax                          ; 0x1c04
    mov ax, 8                        ; 0x1c05
    push ax                          ; 0x1c08
    call loc_GPOQ                    ; 0x1c09
    add sp, byte 8                   ; 0x1c0c
    cmp byte [bp - 0x001c], 0x41     ; 0x1c0f
    jl short @..loc_JGSH.l15         ; 0x1c13
    cmp byte [bp - 0x001c], 0x5a     ; 0x1c15
    jg short @..loc_JGSH.l15         ; 0x1c19
    cmp byte [bp - 0x001b], 0x3a     ; 0x1c1b
    je short @..loc_JGSH.l16         ; 0x1c1f
@..loc_JGSH.l15:
    mov ax, 1                        ; 0x1c21
    jmp short @..loc_JGSH.l17        ; 0x1c24
@..loc_JGSH.l16:
    mov ax, 0                        ; 0x1c26
@..loc_JGSH.l17:
    mov word [bp - 0x01c2], ax       ; 0x1c29
    cmp ax, strict word 1            ; 0x1c2d
    jne short @..loc_JGSH.l18        ; 0x1c30
    mov ax, 0x1ea4                   ; 0x1c32
    push ax                          ; 0x1c35
    call loc_NNGU                    ; 0x1c36
    pop cx                           ; 0x1c39
@..loc_JGSH.l18:
    cmp word [bp - 0x01c2], byte 1   ; 0x1c3a
    je short @..loc_JGSH.l14         ; 0x1c3f
    jmp near @..loc_JGSH.l47         ; 0x1c41
jumptable_1f81_case_2:
    mov ax, 0x1ecd                   ; 0x1c44
    push ax                          ; 0x1c47
    call loc_NNGU                    ; 0x1c48
    pop cx                           ; 0x1c4b
    jmp near @..loc_JGSH.l47         ; 0x1c4c
jumptable_1f81_case_3:
    mov ax, 0x1ef6                   ; 0x1c4f
    push ax                          ; 0x1c52
    push word [bp - 0x0010]          ; 0x1c53
    mov ax, 9                        ; 0x1c56
    push ax                          ; 0x1c59
    call loc_HUKT                    ; 0x1c5a
    add sp, byte 6                   ; 0x1c5d
    mov word [bp - 0x0010], ax       ; 0x1c60
    lea ax, word [bp - 0x0054]       ; 0x1c63
    push ax                          ; 0x1c66
    lea ax, word [bp - 0x003e]       ; 0x1c67
    push ax                          ; 0x1c6a
    push word [bp - 0x0010]          ; 0x1c6b
    call leaf_loc_UUSR               ; 0x1c6e
    add sp, byte 6                   ; 0x1c71
    mov ax, 0x1efc                   ; 0x1c74
    push ax                          ; 0x1c77
    mov ax, 0x2e                     ; 0x1c78
    push ax                          ; 0x1c7b
    mov ax, 9                        ; 0x1c7c
    push ax                          ; 0x1c7f
    call loc_STSN_040f               ; 0x1c80
    add sp, byte 6                   ; 0x1c83
    lea ax, word [bp - 0x003e]       ; 0x1c86
    push ax                          ; 0x1c89
    mov ax, 0x2e                     ; 0x1c8a
    push ax                          ; 0x1c8d
    mov ax, 9                        ; 0x1c8e
    push ax                          ; 0x1c91
    call loc_STSN_040f               ; 0x1c92
    add sp, byte 6                   ; 0x1c95
    lea ax, word [bp - 0x0054]       ; 0x1c98
    push ax                          ; 0x1c9b
    mov ax, 0x3a                     ; 0x1c9c
    push ax                          ; 0x1c9f
    mov ax, 9                        ; 0x1ca0
    push ax                          ; 0x1ca3
    call loc_STSN_040f               ; 0x1ca4
    add sp, byte 6                   ; 0x1ca7
    jmp near @..loc_JGSH.l47         ; 0x1caa
jumptable_1f81_case_4:
@..loc_JGSH.l19:
    mov ax, 2                        ; 0x1cad
    push ax                          ; 0x1cb0
    lea ax, word [bp - 0x003e]       ; 0x1cb1
    push ax                          ; 0x1cb4
    mov ax, 0x2e                     ; 0x1cb5
    push ax                          ; 0x1cb8
    mov ax, 9                        ; 0x1cb9
    push ax                          ; 0x1cbc
    call loc_GPOQ                    ; 0x1cbd
    add sp, byte 8                   ; 0x1cc0
    cmp byte [bp - 0x003e], 0x41     ; 0x1cc3
    jl short @..loc_JGSH.l20         ; 0x1cc7
    cmp byte [bp - 0x003e], 0x5a     ; 0x1cc9
    jg short @..loc_JGSH.l20         ; 0x1ccd
    cmp byte [bp - 0x003d], 0x3a     ; 0x1ccf
    je short @..loc_JGSH.l21         ; 0x1cd3
@..loc_JGSH.l20:
    mov ax, 1                        ; 0x1cd5
    jmp short @..loc_JGSH.l22        ; 0x1cd8
@..loc_JGSH.l21:
    mov ax, 0                        ; 0x1cda
@..loc_JGSH.l22:
    mov word [bp - 0x01c2], ax       ; 0x1cdd
    cmp ax, strict word 1            ; 0x1ce1
    jne short @..loc_JGSH.l23        ; 0x1ce4
    mov ax, 0x1f1e                   ; 0x1ce6
    push ax                          ; 0x1ce9
    call loc_NNGU                    ; 0x1cea
    pop cx                           ; 0x1ced
    jmp short @..loc_JGSH.l24        ; 0x1cee
@..loc_JGSH.l23:
    mov al, byte [bp - 0x003e]       ; 0x1cf0
    cmp al, byte [bp - 0x001c]       ; 0x1cf3
    jne short @..loc_JGSH.l24        ; 0x1cf6
    mov ax, 0x1f47                   ; 0x1cf8
    push ax                          ; 0x1cfb
    call loc_NNGU                    ; 0x1cfc
    pop cx                           ; 0x1cff
@..loc_JGSH.l24:
    cmp word [bp - 0x01c2], byte 1   ; 0x1d00
    je short @..loc_JGSH.l19         ; 0x1d05
    jmp near @..loc_JGSH.l47         ; 0x1d07
jumptable_1f81_case_5:
@..loc_JGSH.l25:
    mov ax, 0x14                     ; 0x1d0a
    push ax                          ; 0x1d0d
    lea ax, word [bp - 0x0054]       ; 0x1d0e
    push ax                          ; 0x1d11
    mov ax, 0x3a                     ; 0x1d12
    push ax                          ; 0x1d15
    mov ax, 9                        ; 0x1d16
    push ax                          ; 0x1d19
    call loc_GPOQ                    ; 0x1d1a
    add sp, byte 8                   ; 0x1d1d
    cmp word [bp - 0x0010], byte 0   ; 0x1d20
    jne short @..loc_JGSH.l30        ; 0x1d24
    cmp byte [bp - 0x0054], 0x41     ; 0x1d26
    jl short @..loc_JGSH.l26         ; 0x1d2a
    cmp byte [bp - 0x0054], 0x5a     ; 0x1d2c
    jg short @..loc_JGSH.l26         ; 0x1d30
    cmp byte [bp - 0x0053], 0x3a     ; 0x1d32
    jne short @..loc_JGSH.l26        ; 0x1d36
    lea ax, word [bp - 0x0054]       ; 0x1d38
    push ax                          ; 0x1d3b
    call aztec_strlen                ; 0x1d3c
    pop cx                           ; 0x1d3f
    cmp ax, strict word 2            ; 0x1d40
    jle short @..loc_JGSH.l27        ; 0x1d43
@..loc_JGSH.l26:
    mov ax, 1                        ; 0x1d45
    jmp short @..loc_JGSH.l28        ; 0x1d48
@..loc_JGSH.l27:
    mov ax, 0                        ; 0x1d4a
@..loc_JGSH.l28:
    mov word [bp - 0x01c2], ax       ; 0x1d4d
    cmp ax, strict word 1            ; 0x1d51
    jne short @..loc_JGSH.l29        ; 0x1d54
    mov ax, 0x1f7c                   ; 0x1d56
    push ax                          ; 0x1d59
    call loc_NNGU                    ; 0x1d5a
    pop cx                           ; 0x1d5d
@..loc_JGSH.l29:
    jmp short @..loc_JGSH.l31        ; 0x1d5e
@..loc_JGSH.l30:
    mov word [bp - 0x01c2], 0        ; 0x1d60
@..loc_JGSH.l31:
    cmp word [bp - 0x01c2], byte 1   ; 0x1d66
    je short @..loc_JGSH.l25         ; 0x1d6b
    jmp near @..loc_JGSH.l47         ; 0x1d6d
jumptable_1f81_case_6:
    push word [bp - 0x01a0]          ; 0x1d70
    mov ax, 0x1b                     ; 0x1d74
    push ax                          ; 0x1d77
    mov ax, 0xb                      ; 0x1d78
    push ax                          ; 0x1d7b
    call loc_PQHH                    ; 0x1d7c
    add sp, byte 6                   ; 0x1d7f
    mov word [bp - 0x01a0], ax       ; 0x1d82
    jmp near @..loc_JGSH.l47         ; 0x1d86
jumptable_1f81_case_7:
    push word [bp - 0x01a2]          ; 0x1d89
    mov ax, 0x29                     ; 0x1d8d
    push ax                          ; 0x1d90
    mov ax, 0xb                      ; 0x1d91
    push ax                          ; 0x1d94
    call loc_PQHH                    ; 0x1d95
    add sp, byte 6                   ; 0x1d98
    mov word [bp - 0x01a2], ax       ; 0x1d9b
    jmp near @..loc_JGSH.l47         ; 0x1d9f
jumptable_1f81_case_8:
@..loc_JGSH.l32:
    mov ax, 0x14                     ; 0x1da2
    push ax                          ; 0x1da5
    lea ax, word [bp - 0x01b8]       ; 0x1da6
    push ax                          ; 0x1daa
    mov ax, 0x3a                     ; 0x1dab
    push ax                          ; 0x1dae
    mov ax, 0xb                      ; 0x1daf
    push ax                          ; 0x1db2
    call loc_GPOQ                    ; 0x1db3
    add sp, byte 8                   ; 0x1db6
    lea ax, word [bp - 0x01b8]       ; 0x1db9
    push ax                          ; 0x1dbd
    call aztec_strlen                ; 0x1dbe
    pop cx                           ; 0x1dc1
    mov word [bp - 0x02d8], ax       ; 0x1dc2
    cmp ax, strict word 2            ; 0x1dc6
    jl short @..loc_JGSH.l33         ; 0x1dc9
    mov bx, ax                       ; 0x1dcb
    add bx, bp                       ; 0x1dcd
    cmp byte [bx - 0x01b9], 0x3a     ; 0x1dcf
    je short @..loc_JGSH.l34         ; 0x1dd4
@..loc_JGSH.l33:
    mov ax, 1                        ; 0x1dd6
    jmp short @..loc_JGSH.l35        ; 0x1dd9
@..loc_JGSH.l34:
    mov ax, 0                        ; 0x1ddb
@..loc_JGSH.l35:
    mov word [bp - 0x01c2], ax       ; 0x1dde
    cmp ax, strict word 1            ; 0x1de2
    jne short @..loc_JGSH.l36        ; 0x1de5
    mov ax, 0x1fa5                   ; 0x1de7
    push ax                          ; 0x1dea
    call loc_NNGU                    ; 0x1deb
    pop cx                           ; 0x1dee
@..loc_JGSH.l36:
    cmp word [bp - 0x01c2], byte 1   ; 0x1def
    je short @..loc_JGSH.l32         ; 0x1df4
    jmp near @..loc_JGSH.l47         ; 0x1df6
jumptable_1f81_case_9:
    push word [bp - 0x0196]          ; 0x1df9
    call loc_UTOL                    ; 0x1dfd
    pop cx                           ; 0x1e00
    mov word [bp - 0x0196], ax       ; 0x1e01
    jmp near @..loc_JGSH.l47         ; 0x1e05
jumptable_1f81_case_10:
    mov ax, 0xff9d                   ; 0x1e08
    push ax                          ; 0x1e0b
    mov ax, 0x63                     ; 0x1e0c
    push ax                          ; 0x1e0f
    mov ax, 3                        ; 0x1e10
    push ax                          ; 0x1e13
    mov ax, 0x3e                     ; 0x1e14
    push ax                          ; 0x1e17
    mov ax, 0xf                      ; 0x1e18
    push ax                          ; 0x1e1b
    push word [bp - 0x01ba]          ; 0x1e1c
    call loc_NOVO                    ; 0x1e20
    add sp, byte 0x0c                ; 0x1e23
    mov word [bp - 0x01ba], ax       ; 0x1e26
    jmp near @..loc_JGSH.l47         ; 0x1e2a
jumptable_1f81_case_11:
    mov ax, 0xff9d                   ; 0x1e2d
    push ax                          ; 0x1e30
    mov ax, 0x63                     ; 0x1e31
    push ax                          ; 0x1e34
    mov ax, 3                        ; 0x1e35
    push ax                          ; 0x1e38
    mov ax, 0x3e                     ; 0x1e39
    push ax                          ; 0x1e3c
    mov ax, 0x10                     ; 0x1e3d
    push ax                          ; 0x1e40
    push word [bp - 0x01bc]          ; 0x1e41
    call loc_NOVO                    ; 0x1e45
    add sp, byte 0x0c                ; 0x1e48
    mov word [bp - 0x01bc], ax       ; 0x1e4b
    jmp near @..loc_JGSH.l47         ; 0x1e4f
jumptable_1f81_case_12:
    push word [bp - 0x019a]          ; 0x1e52
    mov ax, 0x1b                     ; 0x1e56
    push ax                          ; 0x1e59
    mov ax, 0x12                     ; 0x1e5a
    push ax                          ; 0x1e5d
    call loc_PQHH                    ; 0x1e5e
    add sp, byte 6                   ; 0x1e61
    mov word [bp - 0x019a], ax       ; 0x1e64
    jmp near @..loc_JGSH.l47         ; 0x1e68
jumptable_1f81_case_13:
    push word [bp - 0x0198]          ; 0x1e6b
    call loc_TUNS                    ; 0x1e6f
    pop cx                           ; 0x1e72
    mov word [bp - 0x0198], ax       ; 0x1e73
    jmp near @..loc_JGSH.l47         ; 0x1e77
jumptable_1f81_case_14:
    mov al, byte [bp - 0x001c]       ; 0x1e7a
    cmp al, byte [bp - 0x003e]       ; 0x1e7d
    jne short @..loc_JGSH.l37        ; 0x1e80
    mov ax, 0x1fce                   ; 0x1e82
    push ax                          ; 0x1e85
    call loc_NNGU                    ; 0x1e86
    pop cx                           ; 0x1e89
    mov ax, 0x200a                   ; 0x1e8a
    push ax                          ; 0x1e8d
    call loc_NNGU                    ; 0x1e8e
    pop cx                           ; 0x1e91
    jmp near @..loc_JGSH.l45         ; 0x1e92
@..loc_JGSH.l37:
    mov ax, word [bp - 0x0010]       ; 0x1e95
    jmp short @..loc_JGSH.l42        ; 0x1e98
@..loc_JGSH.l38:
    mov ax, 0x204c                   ; 0x1e9a
    push ax                          ; 0x1e9d
    lea ax, word [bp - 0x0194]       ; 0x1e9e
    push ax                          ; 0x1ea2
    call aztec_strcpy                ; 0x1ea3
    add sp, byte 4                   ; 0x1ea6
    jmp short @..loc_JGSH.l43        ; 0x1ea9
@..loc_JGSH.l39:
    mov ax, 0x2062                   ; 0x1eab
    push ax                          ; 0x1eae
    lea ax, word [bp - 0x0194]       ; 0x1eaf
    push ax                          ; 0x1eb3
    call aztec_strcpy                ; 0x1eb4
    add sp, byte 4                   ; 0x1eb7
    jmp short @..loc_JGSH.l43        ; 0x1eba
@..loc_JGSH.l40:
    mov ax, 0x207b                   ; 0x1ebc
    push ax                          ; 0x1ebf
    lea ax, word [bp - 0x0194]       ; 0x1ec0
    push ax                          ; 0x1ec4
    call aztec_strcpy                ; 0x1ec5
    add sp, byte 4                   ; 0x1ec8
    jmp short @..loc_JGSH.l43        ; 0x1ecb
@..loc_JGSH.l41:
    mov ax, 0x208f                   ; 0x1ecd
    push ax                          ; 0x1ed0
    lea ax, word [bp - 0x0194]       ; 0x1ed1
    push ax                          ; 0x1ed5
    call aztec_strcpy                ; 0x1ed6
    add sp, byte 4                   ; 0x1ed9
    jmp short @..loc_JGSH.l43        ; 0x1edc
@..loc_JGSH.l42:
    cmp ax, strict word 0            ; 0x1ede
    je short @..loc_JGSH.l38         ; 0x1ee1
    cmp ax, strict word 1            ; 0x1ee3
    je short @..loc_JGSH.l39         ; 0x1ee6
    cmp ax, strict word 2            ; 0x1ee8
    je short @..loc_JGSH.l40         ; 0x1eeb
    cmp ax, strict word 3            ; 0x1eed
    je short @..loc_JGSH.l41         ; 0x1ef0
@..loc_JGSH.l43:
    mov ax, 0x20a8                   ; 0x1ef2
    push ax                          ; 0x1ef5
    mov ax, 0x2648                   ; 0x1ef6
    push ax                          ; 0x1ef9
    call aztec_strcpy                ; 0x1efa
    add sp, byte 4                   ; 0x1efd
    cmp word [bp - 0x0010], byte 4   ; 0x1f00
    je short @..loc_JGSH.l44         ; 0x1f04
    mov ax, 0x20a9                   ; 0x1f06
    push ax                          ; 0x1f09
    lea ax, word [bp - 0x0144]       ; 0x1f0a
    push ax                          ; 0x1f0e
    call aztec_strcpy                ; 0x1f0f
    add sp, byte 4                   ; 0x1f12
    lea ax, word [bp - 0x0194]       ; 0x1f15
    push ax                          ; 0x1f19
    lea ax, word [bp - 0x0144]       ; 0x1f1a
    push ax                          ; 0x1f1e
    call aztec_strcat                ; 0x1f1f
    add sp, byte 4                   ; 0x1f22
    mov ax, 0x20c0                   ; 0x1f25
    push ax                          ; 0x1f28
    lea ax, word [bp - 0x0144]       ; 0x1f29
    push ax                          ; 0x1f2d
    call aztec_strcat                ; 0x1f2e
    add sp, byte 4                   ; 0x1f31
    lea ax, word [bp - 0x0144]       ; 0x1f34
    push ax                          ; 0x1f38
    call loc_NNGU                    ; 0x1f39
    pop cx                           ; 0x1f3c
    mov ax, 0x20d2                   ; 0x1f3d
    push ax                          ; 0x1f40
    call loc_NNGU                    ; 0x1f41
    pop cx                           ; 0x1f44
@..loc_JGSH.l44:
    mov word [bp - 0x01c6], 1        ; 0x1f45
    mov word [bp - 0x01c0], 1        ; 0x1f4b
    mov word [bp - 0x01ca], 1        ; 0x1f51
@..loc_JGSH.l45:
    jmp short @..loc_JGSH.l47        ; 0x1f57
jumptable_1f81_case_15:
    mov word [bp - 0x01c6], 1        ; 0x1f59
    mov word [bp - 0x01c0], 1        ; 0x1f5f
    mov word [bp - 0x01ca], 0        ; 0x1f65
    jmp short @..loc_JGSH.l47        ; 0x1f6b
jumptable_1f81_case_16:
    mov word [bp - 0x01c6], 0        ; 0x1f6d
    mov word [bp - 0x01c0], 1        ; 0x1f73
    mov word [bp - 0x01ca], 0        ; 0x1f79
    jmp short @..loc_JGSH.l47        ; 0x1f7f
jumptable_1f81:
    dw jumptable_1f81_case_0 - IMAGE_BASE      ; 0x1f81
    dw jumptable_1f81_case_1 - IMAGE_BASE      ; 0x1f83
    dw jumptable_1f81_case_2 - IMAGE_BASE      ; 0x1f85
    dw jumptable_1f81_case_3 - IMAGE_BASE      ; 0x1f87
    dw jumptable_1f81_case_4 - IMAGE_BASE      ; 0x1f89
    dw jumptable_1f81_case_5 - IMAGE_BASE      ; 0x1f8b
    dw jumptable_1f81_case_6 - IMAGE_BASE      ; 0x1f8d
    dw jumptable_1f81_case_7 - IMAGE_BASE      ; 0x1f8f
    dw jumptable_1f81_case_8 - IMAGE_BASE      ; 0x1f91
    dw jumptable_1f81_case_9 - IMAGE_BASE      ; 0x1f93
    dw jumptable_1f81_case_10 - IMAGE_BASE     ; 0x1f95
    dw jumptable_1f81_case_11 - IMAGE_BASE     ; 0x1f97
    dw jumptable_1f81_case_12 - IMAGE_BASE     ; 0x1f99
    dw jumptable_1f81_case_13 - IMAGE_BASE     ; 0x1f9b
    dw jumptable_1f81_case_14 - IMAGE_BASE     ; 0x1f9d
    dw jumptable_1f81_case_15 - IMAGE_BASE     ; 0x1f9f
    dw jumptable_1f81_case_16 - IMAGE_BASE     ; 0x1fa1
@..loc_JGSH.l46:
    cmp ax, strict word 0x11         ; 0x1fa3
    jae short @..loc_JGSH.l47        ; 0x1fa6
    xchg bx, ax                      ; 0x1fa8
    shl bx, 1                        ; 0x1fa9
    jmp [cs:bx + jumptable_1f81 - IMAGE_BASE] ; 0x1fab
@..loc_JGSH.l47:
    jmp short @..loc_JGSH.l49        ; 0x1fb0
jumptable_1fb2:
    dw loc_RQGH - IMAGE_BASE                   ; 0x1fb2
    dw loc_RIRK - IMAGE_BASE                   ; 0x1fb4
    dw loc_TURS - IMAGE_BASE                   ; 0x1fb6
    dw loc_JVOO - IMAGE_BASE                   ; 0x1fb8
    dw jumptable_1fb2_case_4 - IMAGE_BASE      ; 0x1fba
    dw loc_KHVG - IMAGE_BASE                   ; 0x1fbc
@..loc_JGSH.l48:
    sub ax, strict word 8            ; 0x1fbe
    cmp ax, strict word 6            ; 0x1fc1
    jae short @..loc_JGSH.l49        ; 0x1fc4
    xchg bx, ax                      ; 0x1fc6
    shl bx, 1                        ; 0x1fc7
    jmp [cs:bx + jumptable_1fb2 - IMAGE_BASE] ; 0x1fc9
jumptable_1fb2_case_4:
@..loc_JGSH.l49:
    cmp word [bp - 0x01c0], byte 0   ; 0x1fce
    jne short @..loc_JGSH.l50        ; 0x1fd3
    jmp near @..loc_JGSH.l9          ; 0x1fd5
@..loc_JGSH.l50:
    cmp word [bp - 0x01c6], byte 0   ; 0x1fd8
    jne short @..loc_JGSH.l51        ; 0x1fdd
    jmp near @..loc_JGSH.l66         ; 0x1fdf
@..loc_JGSH.l51:
    mov ax, 0x2112                   ; 0x1fe2
    push ax                          ; 0x1fe5
    mov ax, 0x29f0                   ; 0x1fe6
    push ax                          ; 0x1fe9
    call aztec_strcpy                ; 0x1fea
    add sp, byte 4                   ; 0x1fed
    mov ax, 0x2113                   ; 0x1ff0
    push ax                          ; 0x1ff3
    mov ax, 0x2648                   ; 0x1ff4
    push ax                          ; 0x1ff7
    call aztec_strcpy                ; 0x1ff8
    add sp, byte 4                   ; 0x1ffb
    lea ax, word [bp - 0x001c]       ; 0x1ffe
    push ax                          ; 0x2001
    lea ax, word [bp - 0x00a4]       ; 0x2002
    push ax                          ; 0x2006
    call aztec_strcpy                ; 0x2007
    add sp, byte 4                   ; 0x200a
    mov ax, 0x2114                   ; 0x200d
    push ax                          ; 0x2010
    lea ax, word [bp - 0x00a4]       ; 0x2011
    push ax                          ; 0x2015
    call aztec_strcat                ; 0x2016
    add sp, byte 4                   ; 0x2019
    lea ax, word [bp - 0x003e]       ; 0x201c
    push ax                          ; 0x201f
    lea ax, word [bp - 0x00f4]       ; 0x2020
    push ax                          ; 0x2024
    call aztec_strcpy                ; 0x2025
    add sp, byte 4                   ; 0x2028
    mov ax, 0x2116                   ; 0x202b
    push ax                          ; 0x202e
    lea ax, word [bp - 0x00f4]       ; 0x202f
    push ax                          ; 0x2033
    call aztec_strcat                ; 0x2034
    add sp, byte 4                   ; 0x2037
    cmp word [bp - 0x01ca], byte 0   ; 0x203a
    jne short @..loc_JGSH.l52        ; 0x203f
    cmp word [bp - 0x0010], byte 4   ; 0x2041
    jne short @..loc_JGSH.l52        ; 0x2045
    lea ax, word [bp - 0x0054]       ; 0x2047
    push ax                          ; 0x204a
    lea ax, word [bp - 0x00f4]       ; 0x204b
    push ax                          ; 0x204f
    call aztec_strcat                ; 0x2050
    add sp, byte 4                   ; 0x2053
    lea ax, word [bp - 0x0054]       ; 0x2056
    push ax                          ; 0x2059
    call aztec_strlen                ; 0x205a
    pop cx                           ; 0x205d
    cmp ax, strict word 0            ; 0x205e
    jle short @..loc_JGSH.l52        ; 0x2061
    mov ax, 0x2118                   ; 0x2063
    push ax                          ; 0x2066
    lea ax, word [bp - 0x00f4]       ; 0x2067
    push ax                          ; 0x206b
    call aztec_strcat                ; 0x206c
    add sp, byte 4                   ; 0x206f
@..loc_JGSH.l52:
    cmp word [bp - 0x01ca], byte 1   ; 0x2072
    je short @..loc_JGSH.l53         ; 0x2077
    jmp near @..loc_JGSH.l61         ; 0x2079
@..loc_JGSH.l53:
    cmp word [bp - 0x0010], byte 4   ; 0x207c
    je short @..loc_JGSH.l54         ; 0x2080
    jmp near @..loc_JGSH.l61         ; 0x2082
@..loc_JGSH.l54:
    lea ax, word [bp - 0x0054]       ; 0x2085
    push ax                          ; 0x2088
    lea ax, word [bp - 0x00f4]       ; 0x2089
    push ax                          ; 0x208d
    call aztec_strcat                ; 0x208e
    add sp, byte 4                   ; 0x2091
    mov ax, 1                        ; 0x2094
    push ax                          ; 0x2097
    lea ax, word [bp - 0x00f4]       ; 0x2098
    push ax                          ; 0x209c
    lea ax, word [bp - 0x003e]       ; 0x209d
    push ax                          ; 0x20a0
    call loc_HSPL                    ; 0x20a1
    add sp, byte 6                   ; 0x20a4
    lea ax, word [bp - 0x0054]       ; 0x20a7
    push ax                          ; 0x20aa
    call aztec_strlen                ; 0x20ab
    pop cx                           ; 0x20ae
    cmp ax, strict word 0            ; 0x20af
    jle short @..loc_JGSH.l55        ; 0x20b2
    mov ax, 0x211a                   ; 0x20b4
    push ax                          ; 0x20b7
    lea ax, word [bp - 0x00f4]       ; 0x20b8
    push ax                          ; 0x20bc
    call aztec_strcat                ; 0x20bd
    add sp, byte 4                   ; 0x20c0
@..loc_JGSH.l55:
    mov ax, 0x211c                   ; 0x20c3
    push ax                          ; 0x20c6
    mov ax, 1                        ; 0x20c7
    push ax                          ; 0x20ca
    lea ax, word [bp - 0x00a4]       ; 0x20cb
    push ax                          ; 0x20cf
    lea ax, word [bp - 0x001c]       ; 0x20d0
    push ax                          ; 0x20d3
    call loc_ONOP                    ; 0x20d4
    add sp, byte 8                   ; 0x20d7
    mov ax, 0x2132                   ; 0x20da
    push ax                          ; 0x20dd
    mov ax, 0x2127                   ; 0x20de
    push ax                          ; 0x20e1
    lea ax, word [bp - 0x00f4]       ; 0x20e2
    push ax                          ; 0x20e6
    lea ax, word [bp - 0x00a4]       ; 0x20e7
    push ax                          ; 0x20eb
    call loc_GVUH                    ; 0x20ec
    add sp, byte 8                   ; 0x20ef
    cmp word [bp - 0x000e], byte 3   ; 0x20f2
    je short @..loc_JGSH.l56         ; 0x20f6
    jmp near @..loc_JGSH.l57         ; 0x20f8
@..loc_JGSH.l56:
    mov ax, 0x213e                   ; 0x20fb
    push ax                          ; 0x20fe
    mov ax, 0x2133                   ; 0x20ff
    push ax                          ; 0x2102
    lea ax, word [bp - 0x00f4]       ; 0x2103
    push ax                          ; 0x2107
    lea ax, word [bp - 0x00a4]       ; 0x2108
    push ax                          ; 0x210c
    call loc_GVUH                    ; 0x210d
    add sp, byte 8                   ; 0x2110
    mov ax, 0x214a                   ; 0x2113
    push ax                          ; 0x2116
    mov ax, 0x213f                   ; 0x2117
    push ax                          ; 0x211a
    lea ax, word [bp - 0x00f4]       ; 0x211b
    push ax                          ; 0x211f
    lea ax, word [bp - 0x00a4]       ; 0x2120
    push ax                          ; 0x2124
    call loc_GVUH                    ; 0x2125
    add sp, byte 8                   ; 0x2128
    mov ax, 0x2156                   ; 0x212b
    push ax                          ; 0x212e
    mov ax, 0x214b                   ; 0x212f
    push ax                          ; 0x2132
    lea ax, word [bp - 0x00f4]       ; 0x2133
    push ax                          ; 0x2137
    lea ax, word [bp - 0x00a4]       ; 0x2138
    push ax                          ; 0x213c
    call loc_GVUH                    ; 0x213d
    add sp, byte 8                   ; 0x2140
    mov ax, 0x2157                   ; 0x2143
    push ax                          ; 0x2146
    mov ax, 2                        ; 0x2147
    push ax                          ; 0x214a
    lea ax, word [bp - 0x00a4]       ; 0x214b
    push ax                          ; 0x214f
    lea ax, word [bp - 0x001c]       ; 0x2150
    push ax                          ; 0x2153
    call loc_ONOP                    ; 0x2154
    add sp, byte 8                   ; 0x2157
    mov ax, 0x216d                   ; 0x215a
    push ax                          ; 0x215d
    mov ax, 0x2162                   ; 0x215e
    push ax                          ; 0x2161
    lea ax, word [bp - 0x00f4]       ; 0x2162
    push ax                          ; 0x2166
    lea ax, word [bp - 0x00a4]       ; 0x2167
    push ax                          ; 0x216b
    call loc_GVUH                    ; 0x216c
    add sp, byte 8                   ; 0x216f
    mov ax, 0x2179                   ; 0x2172
    push ax                          ; 0x2175
    mov ax, 0x216e                   ; 0x2176
    push ax                          ; 0x2179
    lea ax, word [bp - 0x00f4]       ; 0x217a
    push ax                          ; 0x217e
    lea ax, word [bp - 0x00a4]       ; 0x217f
    push ax                          ; 0x2183
    call loc_GVUH                    ; 0x2184
    add sp, byte 8                   ; 0x2187
    mov ax, 0x2185                   ; 0x218a
    push ax                          ; 0x218d
    mov ax, 0x217a                   ; 0x218e
    push ax                          ; 0x2191
    lea ax, word [bp - 0x00f4]       ; 0x2192
    push ax                          ; 0x2196
    lea ax, word [bp - 0x00a4]       ; 0x2197
    push ax                          ; 0x219b
    call loc_GVUH                    ; 0x219c
    add sp, byte 8                   ; 0x219f
    mov ax, 0x2191                   ; 0x21a2
    push ax                          ; 0x21a5
    mov ax, 0x2186                   ; 0x21a6
    push ax                          ; 0x21a9
    lea ax, word [bp - 0x00f4]       ; 0x21aa
    push ax                          ; 0x21ae
    lea ax, word [bp - 0x00a4]       ; 0x21af
    push ax                          ; 0x21b3
    call loc_GVUH                    ; 0x21b4
    add sp, byte 8                   ; 0x21b7
@..loc_JGSH.l57:
    cmp word [bp - 0x000e], byte 2   ; 0x21ba
    je short @..loc_JGSH.l58         ; 0x21be
    jmp near @..loc_JGSH.l59         ; 0x21c0
@..loc_JGSH.l58:
    mov ax, 0x219d                   ; 0x21c3
    push ax                          ; 0x21c6
    mov ax, 0x2192                   ; 0x21c7
    push ax                          ; 0x21ca
    lea ax, word [bp - 0x00f4]       ; 0x21cb
    push ax                          ; 0x21cf
    lea ax, word [bp - 0x00a4]       ; 0x21d0
    push ax                          ; 0x21d4
    call loc_GVUH                    ; 0x21d5
    add sp, byte 8                   ; 0x21d8
    mov ax, 0x219e                   ; 0x21db
    push ax                          ; 0x21de
    mov ax, 2                        ; 0x21df
    push ax                          ; 0x21e2
    lea ax, word [bp - 0x00a4]       ; 0x21e3
    push ax                          ; 0x21e7
    lea ax, word [bp - 0x001c]       ; 0x21e8
    push ax                          ; 0x21eb
    call loc_ONOP                    ; 0x21ec
    add sp, byte 8                   ; 0x21ef
    mov ax, 0x21b4                   ; 0x21f2
    push ax                          ; 0x21f5
    mov ax, 0x21a9                   ; 0x21f6
    push ax                          ; 0x21f9
    lea ax, word [bp - 0x00f4]       ; 0x21fa
    push ax                          ; 0x21fe
    lea ax, word [bp - 0x00a4]       ; 0x21ff
    push ax                          ; 0x2203
    call loc_GVUH                    ; 0x2204
    add sp, byte 8                   ; 0x2207
    mov ax, 0x21c0                   ; 0x220a
    push ax                          ; 0x220d
    mov ax, 0x21b5                   ; 0x220e
    push ax                          ; 0x2211
    lea ax, word [bp - 0x00f4]       ; 0x2212
    push ax                          ; 0x2216
    lea ax, word [bp - 0x00a4]       ; 0x2217
    push ax                          ; 0x221b
    call loc_GVUH                    ; 0x221c
    add sp, byte 8                   ; 0x221f
    mov ax, 0x21cc                   ; 0x2222
    push ax                          ; 0x2225
    mov ax, 0x21c1                   ; 0x2226
    push ax                          ; 0x2229
    lea ax, word [bp - 0x00f4]       ; 0x222a
    push ax                          ; 0x222e
    lea ax, word [bp - 0x00a4]       ; 0x222f
    push ax                          ; 0x2233
    call loc_GVUH                    ; 0x2234
    add sp, byte 8                   ; 0x2237
    mov ax, 0x21cd                   ; 0x223a
    push ax                          ; 0x223d
    mov ax, 3                        ; 0x223e
    push ax                          ; 0x2241
    lea ax, word [bp - 0x00a4]       ; 0x2242
    push ax                          ; 0x2246
    lea ax, word [bp - 0x001c]       ; 0x2247
    push ax                          ; 0x224a
    call loc_ONOP                    ; 0x224b
    add sp, byte 8                   ; 0x224e
    mov ax, 0x21e3                   ; 0x2251
    push ax                          ; 0x2254
    mov ax, 0x21d8                   ; 0x2255
    push ax                          ; 0x2258
    lea ax, word [bp - 0x00f4]       ; 0x2259
    push ax                          ; 0x225d
    lea ax, word [bp - 0x00a4]       ; 0x225e
    push ax                          ; 0x2262
    call loc_GVUH                    ; 0x2263
    add sp, byte 8                   ; 0x2266
    mov ax, 0x21ef                   ; 0x2269
    push ax                          ; 0x226c
    mov ax, 0x21e4                   ; 0x226d
    push ax                          ; 0x2270
    lea ax, word [bp - 0x00f4]       ; 0x2271
    push ax                          ; 0x2275
    lea ax, word [bp - 0x00a4]       ; 0x2276
    push ax                          ; 0x227a
    call loc_GVUH                    ; 0x227b
    add sp, byte 8                   ; 0x227e
    mov ax, 0x21f0                   ; 0x2281
    push ax                          ; 0x2284
    mov ax, 4                        ; 0x2285
    push ax                          ; 0x2288
    lea ax, word [bp - 0x00a4]       ; 0x2289
    push ax                          ; 0x228d
    lea ax, word [bp - 0x001c]       ; 0x228e
    push ax                          ; 0x2291
    call loc_ONOP                    ; 0x2292
    add sp, byte 8                   ; 0x2295
    mov ax, 0x2206                   ; 0x2298
    push ax                          ; 0x229b
    mov ax, 0x21fb                   ; 0x229c
    push ax                          ; 0x229f
    lea ax, word [bp - 0x00f4]       ; 0x22a0
    push ax                          ; 0x22a4
    lea ax, word [bp - 0x00a4]       ; 0x22a5
    push ax                          ; 0x22a9
    call loc_GVUH                    ; 0x22aa
    add sp, byte 8                   ; 0x22ad
@..loc_JGSH.l59:
    cmp word [bp - 0x000e], byte 1   ; 0x22b0
    je short @..loc_JGSH.l60         ; 0x22b4
    jmp near @..loc_JGSH.l61         ; 0x22b6
@..loc_JGSH.l60:
    mov ax, 0x2212                   ; 0x22b9
    push ax                          ; 0x22bc
    mov ax, 0x2207                   ; 0x22bd
    push ax                          ; 0x22c0
    lea ax, word [bp - 0x00f4]       ; 0x22c1
    push ax                          ; 0x22c5
    lea ax, word [bp - 0x00a4]       ; 0x22c6
    push ax                          ; 0x22ca
    call loc_GVUH                    ; 0x22cb
    add sp, byte 8                   ; 0x22ce
    mov ax, 0x221e                   ; 0x22d1
    push ax                          ; 0x22d4
    mov ax, 0x2213                   ; 0x22d5
    push ax                          ; 0x22d8
    lea ax, word [bp - 0x00f4]       ; 0x22d9
    push ax                          ; 0x22dd
    lea ax, word [bp - 0x00a4]       ; 0x22de
    push ax                          ; 0x22e2
    call loc_GVUH                    ; 0x22e3
    add sp, byte 8                   ; 0x22e6
    mov ax, 0x221f                   ; 0x22e9
    push ax                          ; 0x22ec
    mov ax, 2                        ; 0x22ed
    push ax                          ; 0x22f0
    lea ax, word [bp - 0x00a4]       ; 0x22f1
    push ax                          ; 0x22f5
    lea ax, word [bp - 0x001c]       ; 0x22f6
    push ax                          ; 0x22f9
    call loc_ONOP                    ; 0x22fa
    add sp, byte 8                   ; 0x22fd
    mov ax, 0x2235                   ; 0x2300
    push ax                          ; 0x2303
    mov ax, 0x222a                   ; 0x2304
    push ax                          ; 0x2307
    lea ax, word [bp - 0x00f4]       ; 0x2308
    push ax                          ; 0x230c
    lea ax, word [bp - 0x00a4]       ; 0x230d
    push ax                          ; 0x2311
    call loc_GVUH                    ; 0x2312
    add sp, byte 8                   ; 0x2315
    mov ax, 0x2241                   ; 0x2318
    push ax                          ; 0x231b
    mov ax, 0x2236                   ; 0x231c
    push ax                          ; 0x231f
    lea ax, word [bp - 0x00f4]       ; 0x2320
    push ax                          ; 0x2324
    lea ax, word [bp - 0x00a4]       ; 0x2325
    push ax                          ; 0x2329
    call loc_GVUH                    ; 0x232a
    add sp, byte 8                   ; 0x232d
    mov ax, 0x224d                   ; 0x2330
    push ax                          ; 0x2333
    mov ax, 0x2242                   ; 0x2334
    push ax                          ; 0x2337
    lea ax, word [bp - 0x00f4]       ; 0x2338
    push ax                          ; 0x233c
    lea ax, word [bp - 0x00a4]       ; 0x233d
    push ax                          ; 0x2341
    call loc_GVUH                    ; 0x2342
    add sp, byte 8                   ; 0x2345
    mov ax, 0x2259                   ; 0x2348
    push ax                          ; 0x234b
    mov ax, 0x224e                   ; 0x234c
    push ax                          ; 0x234f
    lea ax, word [bp - 0x00f4]       ; 0x2350
    push ax                          ; 0x2354
    lea ax, word [bp - 0x00a4]       ; 0x2355
    push ax                          ; 0x2359
    call loc_GVUH                    ; 0x235a
    add sp, byte 8                   ; 0x235d
    mov ax, 0x225a                   ; 0x2360
    push ax                          ; 0x2363
    mov ax, 3                        ; 0x2364
    push ax                          ; 0x2367
    lea ax, word [bp - 0x00a4]       ; 0x2368
    push ax                          ; 0x236c
    lea ax, word [bp - 0x001c]       ; 0x236d
    push ax                          ; 0x2370
    call loc_ONOP                    ; 0x2371
    add sp, byte 8                   ; 0x2374
    mov ax, 0x2270                   ; 0x2377
    push ax                          ; 0x237a
    mov ax, 0x2265                   ; 0x237b
    push ax                          ; 0x237e
    lea ax, word [bp - 0x00f4]       ; 0x237f
    push ax                          ; 0x2383
    lea ax, word [bp - 0x00a4]       ; 0x2384
    push ax                          ; 0x2388
    call loc_GVUH                    ; 0x2389
    add sp, byte 8                   ; 0x238c
@..loc_JGSH.l61:
    mov ax, word [bp - 0x0010]       ; 0x238f
    jmp short @..loc_JGSH.l62        ; 0x2392
