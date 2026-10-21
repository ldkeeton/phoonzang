; auto-generated
api_idx_0002_SMVN:
    mov ax, 0xfffe                   ; 0x0b66
    call aztec_csav                  ; 0x0b69
    mov ax, word [bp + 0x6]          ; 0x0b6c
    add ax, strict word 8            ; 0x0b6f
    mov cx, 8                        ; 0x0b72
    cwd                              ; 0x0b75
    idiv cx                          ; 0x0b76
    mov word [bp + 0x6], dx          ; 0x0b78
    mov ax, word [bp + 0x8]          ; 0x0b7b
    add ax, strict word 8            ; 0x0b7e
    cwd                              ; 0x0b81
    idiv cx                          ; 0x0b82
    mov word [bp + 0x8], dx          ; 0x0b84
    mov ax, word [bp + 0x4]          ; 0x0b87
    mov cx, 6                        ; 0x0b8a
    shl ax, cl                       ; 0x0b8d
    shl dx, 1                        ; 0x0b8f
    shl dx, 1                        ; 0x0b91
    shl dx, 1                        ; 0x0b93
    mov cx, dx                       ; 0x0b95
    add ax, cx                       ; 0x0b97
    add ax, word [bp + 0x6]          ; 0x0b99
    mov word [bp - 0x0002], ax       ; 0x0b9c
    push ax                          ; 0x0b9f
    mov ax, bss_8b7e                 ; 0x0ba0
    push ax                          ; 0x0ba3
    call ds_leaf_loc_PRVP            ; 0x0ba4
    add sp, byte 4                   ; 0x0ba7
    cmp ax, word [bp + 0xa]          ; 0x0baa
    jne short @..api_idx_0002_SMVN.l1 ; 0x0bad
    ret                              ; 0x0baf
@..api_idx_0002_SMVN.l1:
    push word [bp + 0xa]             ; 0x0bb0
    push word [bp - 0x0002]          ; 0x0bb3
    mov ax, bss_8b7e                 ; 0x0bb6
    push ax                          ; 0x0bb9
    call set_bitmap_bit              ; 0x0bba
    add sp, byte 6                   ; 0x0bbd
    mov ax, 4                        ; 0x0bc0
    push ax                          ; 0x0bc3
    push word [bp - 0x0002]          ; 0x0bc4
    mov ax, word [maze_data]         ; 0x0bc7
    add ax, 0x90                     ; 0x0bca
    push ax                          ; 0x0bcd
    call ds_leaf_loc_NPSL            ; 0x0bce
    add sp, byte 6                   ; 0x0bd1
    test ax, ax                      ; 0x0bd4
    jne short @..api_idx_0002_SMVN.l2 ; 0x0bd6
    cmp word [bp + 0x8], byte 7      ; 0x0bd8
    jge short @..api_idx_0002_SMVN.l2 ; 0x0bdc
    push word [bp + 0xa]             ; 0x0bde
    mov ax, word [bp + 0x8]          ; 0x0be1
    inc ax                           ; 0x0be4
    push ax                          ; 0x0be5
    push word [bp + 0x6]             ; 0x0be6
    push word [bp + 0x4]             ; 0x0be9
    call api_idx_0002_SMVN           ; 0x0bec
    add sp, byte 8                   ; 0x0bef
@..api_idx_0002_SMVN.l2:
    mov ax, 4                        ; 0x0bf2
    push ax                          ; 0x0bf5
    push word [bp - 0x0002]          ; 0x0bf6
    mov ax, word [maze_data]         ; 0x0bf9
    add ax, 0x290                    ; 0x0bfc
    push ax                          ; 0x0bff
    call ds_leaf_loc_NPSL            ; 0x0c00
    add sp, byte 6                   ; 0x0c03
    test ax, ax                      ; 0x0c06
    jne short @..api_idx_0002_SMVN.l3 ; 0x0c08
    cmp word [bp + 0x6], byte 7      ; 0x0c0a
    jge short @..api_idx_0002_SMVN.l3 ; 0x0c0e
    push word [bp + 0xa]             ; 0x0c10
    push word [bp + 0x8]             ; 0x0c13
    mov ax, word [bp + 0x6]          ; 0x0c16
    inc ax                           ; 0x0c19
    push ax                          ; 0x0c1a
    push word [bp + 0x4]             ; 0x0c1b
    call api_idx_0002_SMVN           ; 0x0c1e
    add sp, byte 8                   ; 0x0c21
@..api_idx_0002_SMVN.l3:
    cmp word [bp + 0x8], byte 0      ; 0x0c24
    jle short @..api_idx_0002_SMVN.l4 ; 0x0c28
    mov ax, 4                        ; 0x0c2a
    push ax                          ; 0x0c2d
    mov ax, word [bp + 0x4]          ; 0x0c2e
    mov cx, 6                        ; 0x0c31
    shl ax, cl                       ; 0x0c34
    mov cx, word [bp + 0x8]          ; 0x0c36
    shl cx, 1                        ; 0x0c39
    shl cx, 1                        ; 0x0c3b
    shl cx, 1                        ; 0x0c3d
    add ax, cx                       ; 0x0c3f
    add ax, word [bp + 0x6]          ; 0x0c41
    add ax, strict word 0xfff8       ; 0x0c44
    push ax                          ; 0x0c47
    mov ax, word [maze_data]         ; 0x0c48
    add ax, 0x90                     ; 0x0c4b
    push ax                          ; 0x0c4e
    call ds_leaf_loc_NPSL            ; 0x0c4f
    add sp, byte 6                   ; 0x0c52
    test ax, ax                      ; 0x0c55
    jne short @..api_idx_0002_SMVN.l4 ; 0x0c57
    push word [bp + 0xa]             ; 0x0c59
    mov ax, word [bp + 0x8]          ; 0x0c5c
    dec ax                           ; 0x0c5f
    push ax                          ; 0x0c60
    push word [bp + 0x6]             ; 0x0c61
    push word [bp + 0x4]             ; 0x0c64
    call api_idx_0002_SMVN           ; 0x0c67
    add sp, byte 8                   ; 0x0c6a
@..api_idx_0002_SMVN.l4:
    cmp word [bp + 0x6], byte 0      ; 0x0c6d
    jle short @..api_idx_0002_SMVN.l5 ; 0x0c71
    mov ax, 4                        ; 0x0c73
    push ax                          ; 0x0c76
    mov ax, word [bp + 0x4]          ; 0x0c77
    mov cx, 6                        ; 0x0c7a
    shl ax, cl                       ; 0x0c7d
    mov cx, word [bp + 0x8]          ; 0x0c7f
    shl cx, 1                        ; 0x0c82
    shl cx, 1                        ; 0x0c84
    shl cx, 1                        ; 0x0c86
    add ax, cx                       ; 0x0c88
    add ax, word [bp + 0x6]          ; 0x0c8a
    dec ax                           ; 0x0c8d
    push ax                          ; 0x0c8e
    mov ax, word [maze_data]         ; 0x0c8f
    add ax, 0x290                    ; 0x0c92
    push ax                          ; 0x0c95
    call ds_leaf_loc_NPSL            ; 0x0c96
    add sp, byte 6                   ; 0x0c99
    test ax, ax                      ; 0x0c9c
    jne short @..api_idx_0002_SMVN.l5 ; 0x0c9e
    push word [bp + 0xa]             ; 0x0ca0
    push word [bp + 0x8]             ; 0x0ca3
    mov ax, word [bp + 0x6]          ; 0x0ca6
    dec ax                           ; 0x0ca9
    push ax                          ; 0x0caa
    push word [bp + 0x4]             ; 0x0cab
    call api_idx_0002_SMVN           ; 0x0cae
    add sp, byte 8                   ; 0x0cb1
@..api_idx_0002_SMVN.l5:
    ret                              ; 0x0cb4
