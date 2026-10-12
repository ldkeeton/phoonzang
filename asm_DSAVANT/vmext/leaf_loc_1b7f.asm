leaf_loc_1b7f:
    mov ax, 5                        ; 0x1b7f
    imul word [bss_91aa]             ; 0x1b82
    add ax, word [bp + 0xe]          ; 0x1b86
    mov bx, ax                       ; 0x1b89
    mov byte [bx - 0x6e20], 1        ; 0x1b8b
    cmp word [bss_91aa], byte 4      ; 0x1b90
    jge short @..leaf_loc_1b7f.l1    ; 0x1b95
    mov byte [bx - 0x6e1b], 1        ; 0x1b97
@..leaf_loc_1b7f.l1:
    mov ax, 0                        ; 0x1b9c
    ret                              ; 0x1b9f
jumptable_1ba0:
    dw leaf_loc_1b7f - IMAGE_BASE + 0x5055     ; 0x1ba0
    dw leaf_loc_1b46 - IMAGE_BASE + 0x5055     ; 0x1ba2
    dw leaf_loc_1b59 - IMAGE_BASE + 0x5055     ; 0x1ba4
    dw leaf_loc_1b7f - IMAGE_BASE + 0x5055     ; 0x1ba6
    dw leaf_loc_1b59 - IMAGE_BASE + 0x5055     ; 0x1ba8
    dw leaf_loc_1b6c - IMAGE_BASE + 0x5055     ; 0x1baa
@..api_idx_0008_3.l8:
    cmp ax, strict word 6            ; 0x1bac
    jae short loc_1bb9               ; 0x1baf
    xchg bx, ax                      ; 0x1bb1
    shl bx, 1                        ; 0x1bb2
    jmp [cs:bx + 0x6be7]             ; 0x1bb4
loc_1bb9:
    push word [bp - 0x0002]          ; 0x1bb9
    mov ax, word [bss_0e14]          ; 0x1bbc
    add ax, 0x930                    ; 0x1bbf
    push ax                          ; 0x1bc2
    call ds_leaf_loc_3ebb            ; 0x1bc3
    add sp, byte 4                   ; 0x1bc6
    test ax, ax                      ; 0x1bc9
    je short loc_1c1d                ; 0x1bcb
    mov ax, word [bss_830c]          ; 0x1bcd
    jmp short loc_1c04               ; 0x1bd0
loc_1bd2:
    mov ax, 5                        ; 0x1bd2
    imul word [bss_91aa]             ; 0x1bd5
    add ax, word [bp + 0xe]          ; 0x1bd9
    mov bx, ax                       ; 0x1bdc
    mov byte [bx - 0x6e52], 3        ; 0x1bde
    jmp short loc_1c1d               ; 0x1be3
loc_1be5:
    mov ax, 5                        ; 0x1be5
    imul word [bss_91aa]             ; 0x1be8
    add ax, word [bp + 0xe]          ; 0x1bec
    mov bx, ax                       ; 0x1bef
    mov byte [bx - 0x6e20], 2        ; 0x1bf1
    cmp word [bss_91aa], byte 4      ; 0x1bf6
    jge short loc_1c02               ; 0x1bfb
    mov byte [bx - 0x6e1b], 2        ; 0x1bfd
loc_1c02:
    jmp short loc_1c1d               ; 0x1c02
loc_1c04:
    cmp ax, strict word 0xa          ; 0x1c04
    je short loc_1be5                ; 0x1c07
    cmp ax, strict word 0xe          ; 0x1c09
    je short loc_1bd2                ; 0x1c0c
    cmp ax, strict word 0x13         ; 0x1c0e
    je short loc_1bd2                ; 0x1c11
    cmp ax, strict word 0x19         ; 0x1c13
    je short loc_1be5                ; 0x1c16
    cmp ax, strict word 0x1f         ; 0x1c18
    je short loc_1bd2                ; 0x1c1b
loc_1c1d:
    mov ax, word [bss_82ee]          ; 0x1c1d
    jmp short loc_1c88               ; 0x1c20
loc_1c22:
    mov ax, 4                        ; 0x1c22
    push ax                          ; 0x1c25
    push word [bp - 0x0002]          ; 0x1c26
    mov ax, word [bss_0e14]          ; 0x1c29
    add ax, 0x90                     ; 0x1c2c
    push ax                          ; 0x1c2f
    call ds_leaf_loc_3f3d            ; 0x1c30
    add sp, byte 6                   ; 0x1c33
    mov word [bp - 0x0004], ax       ; 0x1c36
    jmp short loc_1c9c               ; 0x1c39
loc_1c3b:
    mov ax, 4                        ; 0x1c3b
    push ax                          ; 0x1c3e
    push word [bp - 0x0002]          ; 0x1c3f
    mov ax, word [bss_0e14]          ; 0x1c42
    add ax, 0x290                    ; 0x1c45
    push ax                          ; 0x1c48
    call ds_leaf_loc_3f3d            ; 0x1c49
    add sp, byte 6                   ; 0x1c4c
    mov word [bp - 0x0004], ax       ; 0x1c4f
    jmp short loc_1c9c               ; 0x1c52
loc_1c54:
    push word [bp + 0xc]             ; 0x1c54
    push word [bp + 0xa]             ; 0x1c57
    push word [bp + 0x8]             ; 0x1c5a
    push word [bp + 0x6]             ; 0x1c5d
    push word [bp + 0x4]             ; 0x1c60
    call loc_1823                    ; 0x1c63
    add sp, byte 0x0a                ; 0x1c66
    mov word [bp - 0x0004], ax       ; 0x1c69
    jmp short loc_1c9c               ; 0x1c6c
loc_1c6e:
    push word [bp + 0xc]             ; 0x1c6e
    push word [bp + 0xa]             ; 0x1c71
    push word [bp + 0x8]             ; 0x1c74
    push word [bp + 0x6]             ; 0x1c77
    push word [bp + 0x4]             ; 0x1c7a
    call loc_189b                    ; 0x1c7d
    add sp, byte 0x0a                ; 0x1c80
    mov word [bp - 0x0004], ax       ; 0x1c83
    jmp short loc_1c9c               ; 0x1c86
loc_1c88:
    cmp ax, strict word 0            ; 0x1c88
    je short loc_1c22                ; 0x1c8b
    cmp ax, strict word 1            ; 0x1c8d
    je short loc_1c3b                ; 0x1c90
    cmp ax, strict word 2            ; 0x1c92
    je short loc_1c54                ; 0x1c95
    cmp ax, strict word 3            ; 0x1c97
    je short loc_1c6e                ; 0x1c9a
loc_1c9c:
    lea ax, word [bp - 0x0008]       ; 0x1c9c
    push ax                          ; 0x1c9f
    lea ax, word [bp - 0x0006]       ; 0x1ca0
    push ax                          ; 0x1ca3
    push word [bp - 0x0002]          ; 0x1ca4
    call loc_19e4                    ; 0x1ca7
    add sp, byte 6                   ; 0x1caa
    mov ax, word [bss_82ee]          ; 0x1cad
    cmp ax, word [bp - 0x0008]       ; 0x1cb0
    je short loc_1cca                ; 0x1cb3
    mov ax, word [bp - 0x0006]       ; 0x1cb5
    cmp ax, strict word 7            ; 0x1cb8
    jl short loc_1cc2                ; 0x1cbb
    cmp ax, strict word 9            ; 0x1cbd
    jle short loc_1cca               ; 0x1cc0
loc_1cc2:
    cmp ax, strict word 0xb          ; 0x1cc2
    jg short loc_1cca                ; 0x1cc5
    jmp near loc_1e16                ; 0x1cc7
loc_1cca:
    mov ax, word [bp - 0x0006]       ; 0x1cca
    jmp near loc_1e09                ; 0x1ccd
