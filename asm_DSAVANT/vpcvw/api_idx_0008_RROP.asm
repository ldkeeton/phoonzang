; auto-generated
api_idx_0008_RROP:
    mov ax, 0xfff8                   ; 0x1b17
    call aztec_csav                  ; 0x1b1a
    mov ax, word [bp + 0x6]          ; 0x1b1d
    cwd                              ; 0x1b20
    idiv word [bp + 0x12]            ; 0x1b21
    imul word [bp + 0xe]             ; 0x1b24
    mov word [bp - 0x0002], ax       ; 0x1b27
    mov ax, word [bp + 0x6]          ; 0x1b2a
    cwd                              ; 0x1b2d
    idiv word [bp + 0x12]            ; 0x1b2e
    mov ax, dx                       ; 0x1b31
    imul word [bp + 0x10]            ; 0x1b33
    mov word [bp - 0x0004], ax       ; 0x1b36
    mov ax, word [bp + 0xa]          ; 0x1b39
    add ax, word [bp - 0x0004]       ; 0x1b3c
    add ax, strict word 9            ; 0x1b3f
    push ax                          ; 0x1b42
    mov ax, 6                        ; 0x1b43
    imul word [bp + 0xc]             ; 0x1b46
    add ax, word [bp + 0x8]          ; 0x1b49
    add ax, word [bp - 0x0002]       ; 0x1b4c
    inc ax                           ; 0x1b4f
    push ax                          ; 0x1b50
    mov ax, word [bp + 0xa]          ; 0x1b51
    add ax, word [bp - 0x0004]       ; 0x1b54
    dec ax                           ; 0x1b57
    push ax                          ; 0x1b58
    mov ax, word [bp + 0x8]          ; 0x1b59
    add ax, word [bp - 0x0002]       ; 0x1b5c
    dec ax                           ; 0x1b5f
    push ax                          ; 0x1b60
    call thunk_10                    ; 0x1b61
    add sp, byte 8                   ; 0x1b64
    mov word [bp - 0x0006], dx       ; 0x1b67
    mov word [bp - 0x0008], ax       ; 0x1b6a
    mov ax, 0                        ; 0x1b6d
    push ax                          ; 0x1b70
    mov ax, word [bp + 0xa]          ; 0x1b71
    add ax, word [bp - 0x0004]       ; 0x1b74
    add ax, strict word 8            ; 0x1b77
    push ax                          ; 0x1b7a
    mov ax, 6                        ; 0x1b7b
    imul word [bp + 0xc]             ; 0x1b7e
    add ax, word [bp + 0x8]          ; 0x1b81
    add ax, word [bp - 0x0002]       ; 0x1b84
    push ax                          ; 0x1b87
    mov ax, word [bp + 0xa]          ; 0x1b88
    add ax, word [bp - 0x0004]       ; 0x1b8b
    push ax                          ; 0x1b8e
    mov ax, word [bp + 0x8]          ; 0x1b8f
    add ax, word [bp - 0x0002]       ; 0x1b92
    push ax                          ; 0x1b95
    call ds_app_QIHH                 ; 0x1b96
    add sp, byte 0x0a                ; 0x1b99
    mov ax, 0xc0                     ; 0x1b9c
    push ax                          ; 0x1b9f
    push word [bp + 0x14]            ; 0x1ba0
    call thunk_3                     ; 0x1ba3
    add sp, byte 4                   ; 0x1ba6
    mov ax, word [bp + 0xa]          ; 0x1ba9
    add ax, word [bp - 0x0004]       ; 0x1bac
    inc ax                           ; 0x1baf
    inc ax                           ; 0x1bb0
    push ax                          ; 0x1bb1
    push word [bp + 0x4]             ; 0x1bb2
    call aztec_strlen                ; 0x1bb5
    pop cx                           ; 0x1bb8
    mov cx, ax                       ; 0x1bb9
    mov ax, word [bp + 0xc]          ; 0x1bbb
    sub ax, cx                       ; 0x1bbe
    mov cx, 6                        ; 0x1bc0
    imul cx                          ; 0x1bc3
    mov cx, 2                        ; 0x1bc5
    cwd                              ; 0x1bc8
    idiv cx                          ; 0x1bc9
    add ax, word [bp + 0x8]          ; 0x1bcb
    add ax, word [bp - 0x0002]       ; 0x1bce
    inc ax                           ; 0x1bd1
    push ax                          ; 0x1bd2
    call thunk                       ; 0x1bd3
    add sp, byte 4                   ; 0x1bd6
    mov ax, 0                        ; 0x1bd9
    push ax                          ; 0x1bdc
    push word [bp + 0x4]             ; 0x1bdd
    call ds_string_loc_PTIK          ; 0x1be0
    add sp, byte 4                   ; 0x1be3
    mov ax, word [bp + 0xa]          ; 0x1be6
    add ax, word [bp - 0x0004]       ; 0x1be9
    add ax, strict word 9            ; 0x1bec
    push ax                          ; 0x1bef
    mov ax, 6                        ; 0x1bf0
    imul word [bp + 0xc]             ; 0x1bf3
    add ax, word [bp + 0x8]          ; 0x1bf6
    add ax, word [bp - 0x0002]       ; 0x1bf9
    inc ax                           ; 0x1bfc
    push ax                          ; 0x1bfd
    mov ax, word [bp + 0xa]          ; 0x1bfe
    add ax, word [bp - 0x0004]       ; 0x1c01
    dec ax                           ; 0x1c04
    push ax                          ; 0x1c05
    mov ax, word [bp + 0x8]          ; 0x1c06
    add ax, word [bp - 0x0002]       ; 0x1c09
    dec ax                           ; 0x1c0c
    push ax                          ; 0x1c0d
    call thunk_4                     ; 0x1c0e
    add sp, byte 8                   ; 0x1c11
    mov ax, 1                        ; 0x1c14
    push ax                          ; 0x1c17
    push word [bp - 0x0006]          ; 0x1c18
    push word [bp - 0x0008]          ; 0x1c1b
    call thunk_13                    ; 0x1c1e
    add sp, byte 6                   ; 0x1c21
    ret                              ; 0x1c24
loc_RIRS:
    mov ax, 0                        ; 0x1c25
    call aztec_csav                  ; 0x1c28
    push word [bp + 0xc]             ; 0x1c2b
    mov ax, word [bp + 0x6]          ; 0x1c2e
    dec ax                           ; 0x1c31
    push ax                          ; 0x1c32
    mov ax, word [bp + 0x8]          ; 0x1c33
    inc ax                           ; 0x1c36
    push ax                          ; 0x1c37
    mov ax, word [bp + 0x6]          ; 0x1c38
    dec ax                           ; 0x1c3b
    push ax                          ; 0x1c3c
    mov ax, word [bp + 0x4]          ; 0x1c3d
    dec ax                           ; 0x1c40
    push ax                          ; 0x1c41
    call thunk_7                     ; 0x1c42
    add sp, byte 0x0a                ; 0x1c45
    push word [bp + 0xc]             ; 0x1c48
    mov ax, word [bp + 0xa]          ; 0x1c4b
    inc ax                           ; 0x1c4e
    push ax                          ; 0x1c4f
    mov ax, word [bp + 0x8]          ; 0x1c50
    inc ax                           ; 0x1c53
    push ax                          ; 0x1c54
    mov ax, word [bp + 0x6]          ; 0x1c55
    dec ax                           ; 0x1c58
    push ax                          ; 0x1c59
    mov ax, word [bp + 0x8]          ; 0x1c5a
    inc ax                           ; 0x1c5d
    push ax                          ; 0x1c5e
    call thunk_7                     ; 0x1c5f
    add sp, byte 0x0a                ; 0x1c62
    push word [bp + 0xc]             ; 0x1c65
    mov ax, word [bp + 0xa]          ; 0x1c68
    inc ax                           ; 0x1c6b
    push ax                          ; 0x1c6c
    mov ax, word [bp + 0x8]          ; 0x1c6d
    inc ax                           ; 0x1c70
    push ax                          ; 0x1c71
    mov ax, word [bp + 0xa]          ; 0x1c72
    inc ax                           ; 0x1c75
    push ax                          ; 0x1c76
    mov ax, word [bp + 0x4]          ; 0x1c77
    dec ax                           ; 0x1c7a
    push ax                          ; 0x1c7b
    call thunk_7                     ; 0x1c7c
    add sp, byte 0x0a                ; 0x1c7f
    push word [bp + 0xc]             ; 0x1c82
    mov ax, word [bp + 0xa]          ; 0x1c85
    inc ax                           ; 0x1c88
    push ax                          ; 0x1c89
    mov ax, word [bp + 0x4]          ; 0x1c8a
    dec ax                           ; 0x1c8d
    push ax                          ; 0x1c8e
    mov ax, word [bp + 0x6]          ; 0x1c8f
    dec ax                           ; 0x1c92
    push ax                          ; 0x1c93
    mov ax, word [bp + 0x4]          ; 0x1c94
    dec ax                           ; 0x1c97
    push ax                          ; 0x1c98
    call thunk_7                     ; 0x1c99
    add sp, byte 0x0a                ; 0x1c9c
    ret                              ; 0x1c9f
