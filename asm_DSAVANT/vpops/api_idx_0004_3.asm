; auto-generated
api_idx_0004_3:
    mov ax, 0xfffc                   ; 0x2aef
    call aztec_csav                  ; 0x2af2
    mov word [bp - 0x0002], 0        ; 0x2af5
    jmp near @..api_idx_0004_3.l8    ; 0x2afa
@..api_idx_0004_3.l1:
    mov ax, word [bp + 0xc]          ; 0x2afd
    add ax, word [bp - 0x0002]       ; 0x2b00
    cmp ax, word [bp + 0xe]          ; 0x2b03
    jne short @..api_idx_0004_3.l2   ; 0x2b06
    mov ax, 1                        ; 0x2b08
    push ax                          ; 0x2b0b
    mov ax, 0xe                      ; 0x2b0c
    imul word [bp - 0x0002]          ; 0x2b0f
    add ax, word [bp + 0x6]          ; 0x2b12
    add ax, strict word 0xd          ; 0x2b15
    push ax                          ; 0x2b18
    mov ax, 6                        ; 0x2b19
    imul word [bp + 0x8]             ; 0x2b1c
    add ax, word [bp + 0x4]          ; 0x2b1f
    inc ax                           ; 0x2b22
    inc ax                           ; 0x2b23
    push ax                          ; 0x2b24
    mov ax, 0xe                      ; 0x2b25
    imul word [bp - 0x0002]          ; 0x2b28
    add ax, word [bp + 0x6]          ; 0x2b2b
    inc ax                           ; 0x2b2e
    push ax                          ; 0x2b2f
    mov ax, word [bp + 0x4]          ; 0x2b30
    add ax, strict word 0x1c         ; 0x2b33
    push ax                          ; 0x2b36
    call thunk_7                     ; 0x2b37
    add sp, byte 0x0a                ; 0x2b3a
    mov word [bp - 0x0004], 0        ; 0x2b3d
    jmp short @..api_idx_0004_3.l3   ; 0x2b42
@..api_idx_0004_3.l2:
    mov word [bp - 0x0004], 0xb4     ; 0x2b44
@..api_idx_0004_3.l3:
    mov ax, 0xe                      ; 0x2b49
    imul word [bp - 0x0002]          ; 0x2b4c
    add ax, word [bp + 0x6]          ; 0x2b4f
    inc ax                           ; 0x2b52
    push ax                          ; 0x2b53
    mov ax, word [bp + 0x4]          ; 0x2b54
    inc ax                           ; 0x2b57
    inc ax                           ; 0x2b58
    push ax                          ; 0x2b59
    call thunk                       ; 0x2b5a
    add sp, byte 4                   ; 0x2b5d
    mov ax, word [bp + 0xc]          ; 0x2b60
    add ax, word [bp - 0x0002]       ; 0x2b63
    shl ax, 1                        ; 0x2b66
    mov bx, ax                       ; 0x2b68
    cmp word [bx - 0x6eaa], byte 0   ; 0x2b6a
    je short @..api_idx_0004_3.l4    ; 0x2b6f
    mov ax, 4                        ; 0x2b71
    push ax                          ; 0x2b74
    mov ax, 0x63                     ; 0x2b75
    push ax                          ; 0x2b78
    call ds_loc_3a77                 ; 0x2b79
    add sp, byte 4                   ; 0x2b7c
@..api_idx_0004_3.l4:
    mov ax, 0xe                      ; 0x2b7f
    imul word [bp - 0x0002]          ; 0x2b82
    add ax, word [bp + 0x6]          ; 0x2b85
    inc ax                           ; 0x2b88
    push ax                          ; 0x2b89
    mov ax, word [bp + 0x4]          ; 0x2b8a
    add ax, strict word 0xf          ; 0x2b8d
    push ax                          ; 0x2b90
    call thunk                       ; 0x2b91
    add sp, byte 4                   ; 0x2b94
    mov ax, 4                        ; 0x2b97
    push ax                          ; 0x2b9a
    mov ax, word [bp + 0xc]          ; 0x2b9b
    add ax, word [bp - 0x0002]       ; 0x2b9e
    shl ax, 1                        ; 0x2ba1
    mov bx, ax                       ; 0x2ba3
    mov al, byte [bx - 0x6e82]       ; 0x2ba5
    sub ah, ah                       ; 0x2ba9
    push ax                          ; 0x2bab
    call ds_loc_3a77                 ; 0x2bac
    add sp, byte 4                   ; 0x2baf
    push word [bp - 0x0004]          ; 0x2bb2
    mov ax, 0xe                      ; 0x2bb5
    imul word [bp - 0x0002]          ; 0x2bb8
    add ax, word [bp + 0x6]          ; 0x2bbb
    inc ax                           ; 0x2bbe
    inc ax                           ; 0x2bbf
    push ax                          ; 0x2bc0
    mov ax, word [bp + 0x4]          ; 0x2bc1
    add ax, strict word 0x1d         ; 0x2bc4
    push ax                          ; 0x2bc7
    mov ax, word [bp + 0xc]          ; 0x2bc8
    add ax, word [bp - 0x0002]       ; 0x2bcb
    mov cx, 0x16                     ; 0x2bce
    imul cx                          ; 0x2bd1
    add ax, 0x91a6                   ; 0x2bd3
    push ax                          ; 0x2bd6
    call api_idx_002a                ; 0x2bd7
    add sp, byte 8                   ; 0x2bda
    mov ax, word [bp + 0xc]          ; 0x2bdd
    add ax, word [bp - 0x0002]       ; 0x2be0
    shl ax, 1                        ; 0x2be3
    mov bx, ax                       ; 0x2be5
    cmp word [bx - 0x6ca2], byte 0   ; 0x2be7
    jle short @..api_idx_0004_3.l7   ; 0x2bec
    mov ax, 0xe                      ; 0x2bee
    imul word [bp - 0x0002]          ; 0x2bf1
    add ax, word [bp + 0x6]          ; 0x2bf4
    add ax, strict word 8            ; 0x2bf7
    push ax                          ; 0x2bfa
    mov ax, word [bp + 0x4]          ; 0x2bfb
    add ax, strict word 0x47         ; 0x2bfe
    push ax                          ; 0x2c01
    call thunk                       ; 0x2c02
    add sp, byte 4                   ; 0x2c05
    mov ax, 0                        ; 0x2c08
    push ax                          ; 0x2c0b
    mov ax, word [bp + 0xc]          ; 0x2c0c
    add ax, word [bp - 0x0002]       ; 0x2c0f
    cmp ax, word [bp + 0xe]          ; 0x2c12
    jne short @..api_idx_0004_3.l5   ; 0x2c15
    mov ax, word [bp - 0x0004]       ; 0x2c17
    jmp short @..api_idx_0004_3.l6   ; 0x2c1a
@..api_idx_0004_3.l5:
    mov ax, 2                        ; 0x2c1c
@..api_idx_0004_3.l6:
    push ax                          ; 0x2c1f
    call thunk_3                     ; 0x2c20
    add sp, byte 4                   ; 0x2c23
    mov ax, 0                        ; 0x2c26
    push ax                          ; 0x2c29
    mov ax, 3                        ; 0x2c2a
    push ax                          ; 0x2c2d
    mov ax, word [bp + 0xc]          ; 0x2c2e
    add ax, word [bp - 0x0002]       ; 0x2c31
    shl ax, 1                        ; 0x2c34
    mov bx, ax                       ; 0x2c36
    push word [bx - 0x6ca2]          ; 0x2c38
    call ds_app_052e                 ; 0x2c3c
    add sp, byte 6                   ; 0x2c3f
@..api_idx_0004_3.l7:
    inc word [bp - 0x0002]           ; 0x2c42
@..api_idx_0004_3.l8:
    mov ax, word [bp - 0x0002]       ; 0x2c45
    cmp ax, word [bp + 0xa]          ; 0x2c48
    jge short @..api_idx_0004_3.l9   ; 0x2c4b
    jmp near @..api_idx_0004_3.l1    ; 0x2c4d
@..api_idx_0004_3.l9:
    ret                              ; 0x2c50
loc_2c51:
    mov ax, 0                        ; 0x2c51
    call aztec_csav                  ; 0x2c54
    mov ax, 6                        ; 0x2c57
    imul word [bp + 0xa]             ; 0x2c5a
    add ax, word [bp + 0x6]          ; 0x2c5d
    push ax                          ; 0x2c60
    mov ax, 6                        ; 0x2c61
    imul word [bp + 0x8]             ; 0x2c64
    add ax, word [bp + 0x4]          ; 0x2c67
    inc ax                           ; 0x2c6a
    inc ax                           ; 0x2c6b
    push ax                          ; 0x2c6c
    push word [bp + 0x6]             ; 0x2c6d
    push word [bp + 0x4]             ; 0x2c70
    call ds_app_0fdf                 ; 0x2c73
    add sp, byte 8                   ; 0x2c76
    push word [bp + 0xe]             ; 0x2c79
    push word [bp + 0xc]             ; 0x2c7c
    push word [bp + 0x10]            ; 0x2c7f
    push word [bp + 0x8]             ; 0x2c82
    push word [bp + 0x6]             ; 0x2c85
    push word [bp + 0x4]             ; 0x2c88
    call api_idx_0004_3              ; 0x2c8b
    add sp, byte 0x0c                ; 0x2c8e
    ret                              ; 0x2c91
