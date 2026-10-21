; auto-generated
loc_RVKS:
    mov ax, 0                        ; 0x6f41
    call aztec_csav                  ; 0x6f44
    mov ax, word [bss_82ee]          ; 0x6f47
    shl ax, 1                        ; 0x6f4a
    mov bx, ax                       ; 0x6f4c
    mov word [bx + bss_8cfe], 0      ; 0x6f4e
    push ax                          ; 0x6f54
    mov cx, word [bp + 0x4]          ; 0x6f55
    shl cx, 1                        ; 0x6f58
    mov ax, word [bss_0e12]          ; 0x6f5a
    add ax, cx                       ; 0x6f5d
    add ax, 0x3c0                    ; 0x6f5f
    push ax                          ; 0x6f62
    call api_idx_0002_OVRM           ; 0x6f63
    add sp, byte 4                   ; 0x6f66
    mov ax, 0                        ; 0x6f69
    push ax                          ; 0x6f6c
    push ax                          ; 0x6f6d
    push ax                          ; 0x6f6e
    mov ax, word [bp + 0x4]          ; 0x6f6f
    shl ax, 1                        ; 0x6f72
    mov si, ax                       ; 0x6f74
    mov bx, word [bss_0e12]          ; 0x6f76
    push word [bx + si + 0x3c0]      ; 0x6f7a
    mov ax, 0                        ; 0x6f7e
    push ax                          ; 0x6f81
    push ax                          ; 0x6f82
    push word [bp + 0x4]             ; 0x6f83
    mov ax, 6                        ; 0x6f86
    push ax                          ; 0x6f89
    push word [game_state_arg]       ; 0x6f8a
    call api_idx_0004_JVLM           ; 0x6f8e
    add sp, byte 0x12                ; 0x6f91
    mov ax, word [bp + 0x4]          ; 0x6f94
    shl ax, 1                        ; 0x6f97
    mov si, ax                       ; 0x6f99
    mov bx, word [bss_0e12]          ; 0x6f9b
    cmp word [bx + si], byte 0       ; 0x6f9f
    jle short @..loc_RVKS.l1         ; 0x6fa2
    mov ax, 0                        ; 0x6fa4
    push ax                          ; 0x6fa7
    push word [bx + si]              ; 0x6fa8
    mov ax, word [game_state_arg]    ; 0x6faa
    mov cx, 4                        ; 0x6fad
    shl ax, cl                       ; 0x6fb0
    add ax, 0x8d14                   ; 0x6fb2
    push ax                          ; 0x6fb5
    call set_bitmap_bit              ; 0x6fb6
    add sp, byte 6                   ; 0x6fb9
    mov ax, 0                        ; 0x6fbc
    push ax                          ; 0x6fbf
    mov ax, word [bp + 0x4]          ; 0x6fc0
    shl ax, 1                        ; 0x6fc3
    mov si, ax                       ; 0x6fc5
    mov bx, word [bss_0e12]          ; 0x6fc7
    push word [bx + si]              ; 0x6fcb
    mov ax, word [game_state_arg]    ; 0x6fcd
    mov cx, 4                        ; 0x6fd0
    shl ax, cl                       ; 0x6fd3
    add ax, bss_5642                 ; 0x6fd5
    push ax                          ; 0x6fd8
    call set_bitmap_bit              ; 0x6fd9
    add sp, byte 6                   ; 0x6fdc
    mov ax, word [bp + 0x4]          ; 0x6fdf
    inc ax                           ; 0x6fe2
    mov word [bss_8d12], ax          ; 0x6fe3
@..loc_RVKS.l1:
    cmp word [bp + 0x6], byte 0      ; 0x6fe6
    je short @..loc_RVKS.l2          ; 0x6fea
    mov ax, 1                        ; 0x6fec
    push ax                          ; 0x6fef
    call ds_app_HKIJ                 ; 0x6ff0
    pop cx                           ; 0x6ff3
@..loc_RVKS.l2:
    ret                              ; 0x6ff4
