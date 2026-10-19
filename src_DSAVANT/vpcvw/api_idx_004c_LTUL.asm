; auto-generated
api_idx_004c_LTUL:
    mov ax, 0xffb4                   ; 0x6d13
    call aztec_csav                  ; 0x6d16
    mov ax, 0                        ; 0x6d19
    push ax                          ; 0x6d1c
    push ax                          ; 0x6d1d
    push word [bss_93f8]             ; 0x6d1e
    push word [bss_93f6]             ; 0x6d22
    call gfx_restore_screen          ; 0x6d26
    add sp, byte 8                   ; 0x6d29
    cmp word [bss_9434], byte 0      ; 0x6d2c
    je short @..api_idx_004c_LTUL.l1 ; 0x6d31
    mov ax, 0xac                     ; 0x6d33
    push ax                          ; 0x6d36
    mov ax, 0xa0                     ; 0x6d37
    push ax                          ; 0x6d3a
    call gfx_entry_13                ; 0x6d3b
    add sp, byte 4                   ; 0x6d3e
    mov ax, 4                        ; 0x6d41
    push ax                          ; 0x6d44
    mov ax, 0x63                     ; 0x6d45
    push ax                          ; 0x6d48
    call ds_loc_TJTV                 ; 0x6d49
    add sp, byte 4                   ; 0x6d4c
@..api_idx_004c_LTUL.l1:
    cmp word [bss_9614], byte 0      ; 0x6d4f
    jne short @..api_idx_004c_LTUL.l2 ; 0x6d54
    cmp word [bss_9434], byte 0      ; 0x6d56
    je short @..api_idx_004c_LTUL.l5 ; 0x6d5b
@..api_idx_004c_LTUL.l2:
    mov word [bp - 0x0002], 0        ; 0x6d5d
@..api_idx_004c_LTUL.l3:
    mov ax, 0x18                     ; 0x6d62
    push ax                          ; 0x6d65
    mov ax, 0xe                      ; 0x6d66
    imul word [bp - 0x0002]          ; 0x6d69
    add ax, strict word 0x70         ; 0x6d6c
    push ax                          ; 0x6d6f
    mov ax, 0x9f                     ; 0x6d70
    push ax                          ; 0x6d73
    mov ax, 0xe                      ; 0x6d74
    imul word [bp - 0x0002]          ; 0x6d77
    add ax, strict word 0x70         ; 0x6d7a
    push ax                          ; 0x6d7d
    mov ax, 1                        ; 0x6d7e
    push ax                          ; 0x6d81
    call gfx_entry_18                ; 0x6d82
    add sp, byte 0x0a                ; 0x6d85
    inc word [bp - 0x0002]           ; 0x6d88
    mov ax, word [bp - 0x0002]       ; 0x6d8b
    cmp ax, strict word 6            ; 0x6d8e
    jl short @..api_idx_004c_LTUL.l3 ; 0x6d91
    mov word [bp - 0x0002], 0        ; 0x6d93
@..api_idx_004c_LTUL.l4:
    mov ax, 0x18                     ; 0x6d98
    push ax                          ; 0x6d9b
    mov ax, 0xb6                     ; 0x6d9c
    push ax                          ; 0x6d9f
    mov ax, 0x4f                     ; 0x6da0
    imul word [bp - 0x0002]          ; 0x6da3
    inc ax                           ; 0x6da6
    push ax                          ; 0x6da7
    mov ax, 0x70                     ; 0x6da8
    push ax                          ; 0x6dab
    mov ax, 0x4f                     ; 0x6dac
    imul word [bp - 0x0002]          ; 0x6daf
    inc ax                           ; 0x6db2
    push ax                          ; 0x6db3
    call gfx_entry_18                ; 0x6db4
    add sp, byte 0x0a                ; 0x6db7
    inc word [bp - 0x0002]           ; 0x6dba
    mov ax, word [bp - 0x0002]       ; 0x6dbd
    cmp ax, strict word 3            ; 0x6dc0
    jl short @..api_idx_004c_LTUL.l4 ; 0x6dc3
@..api_idx_004c_LTUL.l5:
    mov word [bp - 0x0002], 0        ; 0x6dc5
@..api_idx_004c_LTUL.l6:
    mov ax, 0x248                    ; 0x6dca
    imul word [bp + 0x4]             ; 0x6dcd
    push ax                          ; 0x6dd0
    mov ax, 0x78                     ; 0x6dd1
    imul word [bss_9434]             ; 0x6dd4
    mov cx, ax                       ; 0x6dd8
    pop ax                           ; 0x6dda
    add ax, cx                       ; 0x6ddb
    push ax                          ; 0x6ddd
    mov ax, 0xc                      ; 0x6dde
    imul word [bp - 0x0002]          ; 0x6de1
    mov cx, ax                       ; 0x6de4
    pop ax                           ; 0x6de6
    add ax, cx                       ; 0x6de7
    mov bx, ax                       ; 0x6de9
    cmp word [bx + 0x5c34], byte 0   ; 0x6deb
    jg short @..api_idx_004c_LTUL.l7 ; 0x6df0
    jmp near @..api_idx_004c_LTUL.l16 ; 0x6df2
@..api_idx_004c_LTUL.l7:
    cmp word [bss_967a], byte 0      ; 0x6df5
    je short @..api_idx_004c_LTUL.l8 ; 0x6dfa
    jmp near @..api_idx_004c_LTUL.l11 ; 0x6dfc
@..api_idx_004c_LTUL.l8:
    mov ax, 0                        ; 0x6dff
    push ax                          ; 0x6e02
    push word [bx + 0x5c34]          ; 0x6e03
    lea ax, word [bp - 0x004c]       ; 0x6e07
    push ax                          ; 0x6e0a
    mov ax, 1                        ; 0x6e0b
    push ax                          ; 0x6e0e
    call ds_app_file_MPPM            ; 0x6e0f
    add sp, byte 8                   ; 0x6e12
    mov ax, 0x248                    ; 0x6e15
    imul word [bp + 0x4]             ; 0x6e18
    push ax                          ; 0x6e1b
    mov ax, 0x78                     ; 0x6e1c
    imul word [bss_9434]             ; 0x6e1f
    mov cx, ax                       ; 0x6e23
    pop ax                           ; 0x6e25
    add ax, cx                       ; 0x6e26
    push ax                          ; 0x6e28
    mov ax, 0xc                      ; 0x6e29
    imul word [bp - 0x0002]          ; 0x6e2c
    mov cx, ax                       ; 0x6e2f
    pop ax                           ; 0x6e31
    add ax, cx                       ; 0x6e32
    mov bx, ax                       ; 0x6e34
    mov al, byte [bx + 0x5c3b]       ; 0x6e36
    sub ah, ah                       ; 0x6e3a
    test ax, 0x80                    ; 0x6e3c
    je short @..api_idx_004c_LTUL.l9 ; 0x6e3f
    lea ax, word [bp - 0x004c]       ; 0x6e41
    push ax                          ; 0x6e44
    mov ax, 0x16                     ; 0x6e45
    imul word [bp - 0x0002]          ; 0x6e48
    add ax, 0x9436                   ; 0x6e4b
    push ax                          ; 0x6e4e
    call aztec_strcpy                ; 0x6e4f
    add sp, byte 4                   ; 0x6e52
    jmp short @..api_idx_004c_LTUL.l10 ; 0x6e55
@..api_idx_004c_LTUL.l9:
    mov ax, 0x16                     ; 0x6e57
    imul word [bp - 0x0002]          ; 0x6e5a
    add ax, 0x9436                   ; 0x6e5d
    push ax                          ; 0x6e60
    mov al, byte [bp - 0x0013]       ; 0x6e61
    sub ah, ah                       ; 0x6e64
    add ax, 0x1770                   ; 0x6e66
    push ax                          ; 0x6e69
    call ds_app_mem_TIMR             ; 0x6e6a
    add sp, byte 4                   ; 0x6e6d
@..api_idx_004c_LTUL.l10:
    mov al, byte [bp - 0x0012]       ; 0x6e70
    sub ah, ah                       ; 0x6e73
    mov cx, word [bp - 0x0002]       ; 0x6e75
    shl cx, 1                        ; 0x6e78
    mov bx, cx                       ; 0x6e7a
    mov word [bx - 0x6a00], ax       ; 0x6e7c
@..api_idx_004c_LTUL.l11:
    mov ax, word [bp - 0x0002]       ; 0x6e80
    shl ax, 1                        ; 0x6e83
    mov bx, ax                       ; 0x6e85
    mov word [bx - 0x6a14], 0x69     ; 0x6e87
    cmp word [bss_9434], byte 0      ; 0x6e8d
    jne short @..api_idx_004c_LTUL.l14 ; 0x6e92
    mov word [bp - 0x0004], 0        ; 0x6e94
@..api_idx_004c_LTUL.l12:
    mov ax, 0x248                    ; 0x6e99
    imul word [bp + 0x4]             ; 0x6e9c
    add ax, word [bp - 0x0004]       ; 0x6e9f
    mov bx, ax                       ; 0x6ea2
    mov al, byte [bx + 0x5d48]       ; 0x6ea4
    sub ah, ah                       ; 0x6ea8
    cmp ax, word [bp - 0x0002]       ; 0x6eaa
    jne short @..api_idx_004c_LTUL.l13 ; 0x6ead
    mov ax, word [bp - 0x0004]       ; 0x6eaf
    shl ax, 1                        ; 0x6eb2
    mov bx, ax                       ; 0x6eb4
    mov ax, word [word bx + 0x1e]    ; 0x6eb6
    mov cx, word [bp - 0x0002]       ; 0x6eba
    shl cx, 1                        ; 0x6ebd
    mov bx, cx                       ; 0x6ebf
    mov word [bx - 0x6a14], ax       ; 0x6ec1
@..api_idx_004c_LTUL.l13:
    inc word [bp - 0x0004]           ; 0x6ec5
    mov ax, word [bp - 0x0004]       ; 0x6ec8
    cmp ax, strict word 8            ; 0x6ecb
    jl short @..api_idx_004c_LTUL.l12 ; 0x6ece
@..api_idx_004c_LTUL.l14:
    mov ax, 0x248                    ; 0x6ed0
    imul word [bp + 0x4]             ; 0x6ed3
    push ax                          ; 0x6ed6
    mov ax, 0x78                     ; 0x6ed7
    imul word [bss_9434]             ; 0x6eda
    mov cx, ax                       ; 0x6ede
    pop ax                           ; 0x6ee0
    add ax, cx                       ; 0x6ee1
    push ax                          ; 0x6ee3
    mov ax, 0xc                      ; 0x6ee4
    imul word [bp - 0x0002]          ; 0x6ee7
    mov cx, ax                       ; 0x6eea
    pop ax                           ; 0x6eec
    add ax, cx                       ; 0x6eed
    mov bx, ax                       ; 0x6eef
    mov al, byte [bx + 0x5c3b]       ; 0x6ef1
    sub ah, ah                       ; 0x6ef5
    test ax, 2                       ; 0x6ef7
    je short @..api_idx_004c_LTUL.l15 ; 0x6efa
    mov ax, word [bp - 0x0002]       ; 0x6efc
    shl ax, 1                        ; 0x6eff
    mov bx, ax                       ; 0x6f01
    mov word [bx - 0x6a14], 0x55     ; 0x6f03
@..api_idx_004c_LTUL.l15:
    mov ax, word [bp - 0x0002]       ; 0x6f09
    shl ax, 1                        ; 0x6f0c
    mov bx, ax                       ; 0x6f0e
    push word [bx - 0x6a14]          ; 0x6f10
    mov ax, 0x16                     ; 0x6f14
    imul word [bp - 0x0002]          ; 0x6f17
    add ax, 0x9436                   ; 0x6f1a
    push ax                          ; 0x6f1d
    mov ax, 0x248                    ; 0x6f1e
    imul word [bp + 0x4]             ; 0x6f21
    push ax                          ; 0x6f24
    mov ax, 0x78                     ; 0x6f25
    imul word [bss_9434]             ; 0x6f28
    mov cx, ax                       ; 0x6f2c
    pop ax                           ; 0x6f2e
    add ax, cx                       ; 0x6f2f
    push ax                          ; 0x6f31
    mov ax, 0xc                      ; 0x6f32
    imul word [bp - 0x0002]          ; 0x6f35
    mov cx, ax                       ; 0x6f38
    pop ax                           ; 0x6f3a
    add ax, cx                       ; 0x6f3b
    add ax, 0x5c34                   ; 0x6f3d
    push ax                          ; 0x6f40
    push word [bp - 0x0002]          ; 0x6f41
    push word [bp + 0x4]             ; 0x6f44
    call api_idx_0004_MKGU           ; 0x6f47
    add sp, byte 0x0a                ; 0x6f4a
@..api_idx_004c_LTUL.l16:
    inc word [bp - 0x0002]           ; 0x6f4d
    mov ax, word [bp - 0x0002]       ; 0x6f50
    cmp ax, strict word 0xa          ; 0x6f53
    jge short @..api_idx_004c_LTUL.l17 ; 0x6f56
    jmp near @..api_idx_004c_LTUL.l6 ; 0x6f58
@..api_idx_004c_LTUL.l17:
    mov word [bss_967a], 1           ; 0x6f5b
    ret                              ; 0x6f61
