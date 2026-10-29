; auto-generated
api_idx_0010_UUTT:
    mov ax, 0xfff0                   ; 0x9a2f
    call aztec_csav                  ; 0x9a32
    push word [bss_8462]             ; 0x9a35
    push word [bss_8464]             ; 0x9a39
    mov ax, bss_90e6                 ; 0x9a3d
    push ax                          ; 0x9a40
    call loc_HJSG                    ; 0x9a41
    add sp, byte 6                   ; 0x9a44
    mov ax, bss_9136                 ; 0x9a47
    push ax                          ; 0x9a4a
    mov ax, MSG_RUNS                 ; 0x9a4b
    push ax                          ; 0x9a4e
    call load_message_string         ; 0x9a4f
    add sp, byte 4                   ; 0x9a52
    mov byte [bss_9186], 0           ; 0x9a55
    mov bx, word [bp + 4]            ; 0x9a5a
    mov ax, word [bx]                ; 0x9a5d
    add ax, strict word 0x5a         ; 0x9a5f
    mov word [bp - 0xe], ax          ; 0x9a62
    cmp word [bss_8464], byte 0      ; 0x9a65
    jne short .forward2              ; 0x9a6a
    mov word [bp - 2], 1             ; 0x9a6c
    jmp short .forward1              ; 0x9a71
.back1:
    mov ax, word [bp - 2]            ; 0x9a73
    shl ax, 1                        ; 0x9a76
    mov bx, ax                       ; 0x9a78
    mov bx, word [bx + party_char_ext] ; 0x9a7a
    mov al, byte [bx + member_ext.f_0080] ; 0x9a7e
    sub ah, ah                       ; 0x9a82
    push ax                          ; 0x9a84
    mov ax, word [bp - 2]            ; 0x9a85
    shl ax, 1                        ; 0x9a88
    mov bx, ax                       ; 0x9a8a
    mov bx, word [bx + party_char]   ; 0x9a8c
    mov al, byte [bx + member_rec.item_count] ; 0x9a90
    sub ah, ah                       ; 0x9a94
    mov cx, ax                       ; 0x9a96
    pop ax                           ; 0x9a98
    imul cx                          ; 0x9a99
    mov cx, ax                       ; 0x9a9b
    mov ax, word [bp - 0xe]          ; 0x9a9d
    sub ax, cx                       ; 0x9aa0
    push ax                          ; 0x9aa2
    mov ax, word [bp - 2]            ; 0x9aa3
    shl ax, 1                        ; 0x9aa6
    mov bx, ax                       ; 0x9aa8
    mov bx, word [bx + party_char_ext] ; 0x9aaa
    mov al, byte [bx + member_ext.f_008f] ; 0x9aae
    sub ah, ah                       ; 0x9ab2
    mov cx, ax                       ; 0x9ab4
    mov ax, word [bss_8464]          ; 0x9ab6
    shl ax, 1                        ; 0x9ab9
    mov bx, ax                       ; 0x9abb
    mov bx, word [bx + party_char_ext] ; 0x9abd
    mov al, byte [bx + 0x8f]         ; 0x9ac1
    sub ah, ah                       ; 0x9ac5
    mov dx, ax                       ; 0x9ac7
    sub cx, ax                       ; 0x9ac9
    shl cx, 1                        ; 0x9acb
    pop ax                           ; 0x9acd
    sub ax, cx                       ; 0x9ace
    mov word [bp - 0xe], ax          ; 0x9ad0
    inc word [bp - 2]                ; 0x9ad3
.forward1:
    mov ax, word [bp - 2]            ; 0x9ad6
    cmp ax, word [party_member_count] ; 0x9ad9
    jle short .back1                 ; 0x9add
    jmp short .forward3              ; 0x9adf
.forward2:
    mov bx, word [bp + 4]            ; 0x9ae1
    mov al, byte [bx + 0x20]         ; 0x9ae4
    sub ah, ah                       ; 0x9ae7
    mov cx, 0x2c                     ; 0x9ae9
    imul cx                          ; 0x9aec
    mov si, ax                       ; 0x9aee
    mov al, byte [bx + 0x1f]         ; 0x9af0
    sub ah, ah                       ; 0x9af3
    shl ax, 1                        ; 0x9af5
    mov bx, ax                       ; 0x9af7
    mov bx, word [bx + party_char]   ; 0x9af9
    mov cx, word [bx + si]           ; 0x9afd
    mov ax, word [bp - 0xe]          ; 0x9aff
    sub ax, cx                       ; 0x9b02
    push ax                          ; 0x9b04
    mov bx, word [bp + 4]            ; 0x9b05
    mov al, byte [bx + 0x1f]         ; 0x9b08
    sub ah, ah                       ; 0x9b0b
    shl ax, 1                        ; 0x9b0d
    mov bx, ax                       ; 0x9b0f
    mov bx, word [bx + party_char_ext] ; 0x9b11
    mov al, byte [bx + member_ext.f_008f] ; 0x9b15
    sub ah, ah                       ; 0x9b19
    mov cx, ax                       ; 0x9b1b
    mov ax, word [bss_8464]          ; 0x9b1d
    shl ax, 1                        ; 0x9b20
    mov bx, ax                       ; 0x9b22
    mov bx, word [bx + party_char_ext] ; 0x9b24
    mov al, byte [bx + 0x8f]         ; 0x9b28
    sub ah, ah                       ; 0x9b2c
    mov dx, ax                       ; 0x9b2e
    sub cx, ax                       ; 0x9b30
    shl cx, 1                        ; 0x9b32
    pop ax                           ; 0x9b34
    sub ax, cx                       ; 0x9b35
    mov word [bp - 0xe], ax          ; 0x9b37
    mov al, byte [bx + 0xe2]         ; 0x9b3a
    sub ah, ah                       ; 0x9b3e
    test ax, 8                       ; 0x9b40
    je short .forward3               ; 0x9b43
    mov ax, bss_9136                 ; 0x9b45
    push ax                          ; 0x9b48
    mov ax, MSG_FLIES                ; 0x9b49
    push ax                          ; 0x9b4c
    call load_message_string         ; 0x9b4d
    add sp, byte 4                   ; 0x9b50
.forward3:
    cmp word [party_entry_flag], byte 1 ; 0x9b53
    jne short .forward4              ; 0x9b58
    mov word [bp - 0xe], 0           ; 0x9b5a
.forward4:
    mov ax, 0                        ; 0x9b5f
    push ax                          ; 0x9b62
    mov ax, 0x43                     ; 0x9b63
    push ax                          ; 0x9b66
    cmp word [bss_8464], byte 0      ; 0x9b67
    jne short .forward5              ; 0x9b6c
    mov ax, 1                        ; 0x9b6e
.forward5:
    push ax                          ; 0x9b71
    mov ax, bss_9186                 ; 0x9b72
    push ax                          ; 0x9b75
    mov ax, bss_9136                 ; 0x9b76
    push ax                          ; 0x9b79
    mov ax, bss_90e6                 ; 0x9b7a
    push ax                          ; 0x9b7d
    mov ax, 0                        ; 0x9b7e
    push ax                          ; 0x9b81
    call api_idx_0004_QSNR           ; 0x9b82
    add sp, byte 0xe                 ; 0x9b85
    mov ax, word [startup_option]    ; 0x9b88
    mov cx, 2                        ; 0x9b8b
    cwd                              ; 0x9b8e
    idiv cx                          ; 0x9b8f
    push ax                          ; 0x9b91
    call api_idx_0004_QUPL           ; 0x9b92
    pop cx                           ; 0x9b95
    mov ax, 0x64                     ; 0x9b96
    push ax                          ; 0x9b99
    call random_below                ; 0x9b9a
    pop cx                           ; 0x9b9d
    cmp ax, word [bp - 0xe]          ; 0x9b9e
    jl short .forward6               ; 0x9ba1
    jmp near .forward21              ; 0x9ba3
.forward6:
    cmp word [bss_8464], byte 0      ; 0x9ba6
    je short .forward7               ; 0x9bab
    mov ax, word [bss_8464]          ; 0x9bad
    cmp ax, strict word 6            ; 0x9bb0
    je short .forward7               ; 0x9bb3
    shl ax, 1                        ; 0x9bb5
    mov bx, ax                       ; 0x9bb7
    mov bx, word [bx + party_char_ext] ; 0x9bb9
    mov al, byte [bx + 0xe2]         ; 0x9bbd
    sub ah, ah                       ; 0x9bc1
    test ax, 1                       ; 0x9bc3
    je short .forward7               ; 0x9bc6
    mov word [selected_item_record], 0 ; 0x9bc8
.forward7:
    mov bx, word [bp + 4]            ; 0x9bce
    mov byte [bx + 0x2b], 2          ; 0x9bd1
    mov ax, 2                        ; 0x9bd5
    push ax                          ; 0x9bd8
    mov ax, 0x43                     ; 0x9bd9
    push ax                          ; 0x9bdc
    mov ax, MSG_AWAY                 ; 0x9bdd
    push ax                          ; 0x9be0
    call api_idx_0050_PLNP           ; 0x9be1
    add sp, byte 6                   ; 0x9be4
    mov bx, word [bp + 4]            ; 0x9be7
    cmp byte [bx + 0x2a], 0xff       ; 0x9bea
    jne short .forward8              ; 0x9bee
    jmp near .forward19              ; 0x9bf0
.forward8:
    mov al, byte [bx + 0x2a]         ; 0x9bf3
    cbw                              ; 0x9bf6
    mov cx, 0xa                      ; 0x9bf7
    cwd                              ; 0x9bfa
    idiv cx                          ; 0x9bfb
    mov word [bp - 8], ax            ; 0x9bfd
    mov al, byte [bx + 0x2a]         ; 0x9c00
    cbw                              ; 0x9c03
    cwd                              ; 0x9c04
    idiv cx                          ; 0x9c05
    mov word [bp - 0xa], dx          ; 0x9c07
    call loc_KRMP                    ; 0x9c0a
    mov word [bp - 0x10], ax         ; 0x9c0d
    mov word [bp - 2], 0             ; 0x9c10
.back2:
    mov word [bss_845e], 0xfffe      ; 0x9c15
    call api_idx_0006_GMTP           ; 0x9c1b
    mov word [bp - 4], 0             ; 0x9c1e
.back3:
    mov word [bp - 6], 0             ; 0x9c23
.back4:
    mov ax, word [bp - 6]            ; 0x9c28
    mov cx, 2                        ; 0x9c2b
    cwd                              ; 0x9c2e
    idiv cx                          ; 0x9c2f
    mov ax, dx                       ; 0x9c31
    cmp ax, strict word 1            ; 0x9c33
    je short .forward9               ; 0x9c36
    cmp word [bp - 6], byte 0        ; 0x9c38
    jne short .forward10             ; 0x9c3c
.forward9:
    mov ax, word [bp - 2]            ; 0x9c3e
    shl ax, 1                        ; 0x9c41
    mov bx, ax                       ; 0x9c43
    mov cx, word [bx + cell_overlay_code + 0x50] ; 0x9c45
    mov ax, 0                        ; 0x9c49
    sub ax, cx                       ; 0x9c4c
    jmp short .forward11             ; 0x9c4e
.forward10:
    mov ax, word [bp - 2]            ; 0x9c50
    shl ax, 1                        ; 0x9c53
    mov bx, ax                       ; 0x9c55
    mov ax, word [bx + cell_overlay_code + 0x50] ; 0x9c57
.forward11:
    mov word [bp - 0xc], ax          ; 0x9c5b
    push word [bp - 0x10]            ; 0x9c5e
    mov ax, 0xf8                     ; 0x9c61
    push ax                          ; 0x9c64
    mov ax, 0x48                     ; 0x9c65
    push ax                          ; 0x9c68
    mov ax, 6                        ; 0x9c69
    imul word [bp - 4]               ; 0x9c6c
    mov cx, word [bp - 6]            ; 0x9c6f
    shl cx, 1                        ; 0x9c72
    add ax, cx                       ; 0x9c74
    mov bx, ax                       ; 0x9c76
    mov cx, word [bx + 0x580]        ; 0x9c78
    mov ax, 0x64                     ; 0x9c7c
    sub ax, cx                       ; 0x9c7f
    push ax                          ; 0x9c81
    mov ax, word [bp - 8]            ; 0x9c82
    cmp ax, word [bp - 4]            ; 0x9c85
    jne short .forward12             ; 0x9c88
    mov ax, word [bp - 0xa]          ; 0x9c8a
    cmp ax, word [bp - 6]            ; 0x9c8d
    jne short .forward12             ; 0x9c90
    mov ax, word [bp - 0xc]          ; 0x9c92
    jmp short .forward13             ; 0x9c95
.forward12:
    mov ax, 0                        ; 0x9c97
.forward13:
    push ax                          ; 0x9c9a
    push word [bp - 6]               ; 0x9c9b
    push word [bp - 4]               ; 0x9c9e
    call queue_cell_action_overlay   ; 0x9ca1
    add sp, byte 0xe                 ; 0x9ca4
    push word [bp - 6]               ; 0x9ca7
    push word [bp - 4]               ; 0x9caa
    call api_idx_0016_MUKH           ; 0x9cad
    add sp, byte 4                   ; 0x9cb0
    inc word [bp - 6]                ; 0x9cb3
    mov ax, word [bp - 6]            ; 0x9cb6
    cmp ax, strict word 3            ; 0x9cb9
    jge short .forward14             ; 0x9cbc
    jmp near .back4                  ; 0x9cbe
.forward14:
    inc word [bp - 4]                ; 0x9cc1
    mov ax, word [bp - 4]            ; 0x9cc4
    cmp ax, strict word 3            ; 0x9cc7
    jge short .forward15             ; 0x9cca
    jmp near .back3                  ; 0x9ccc
.forward15:
    call queue_marker_overlay        ; 0x9ccf
    call draw_party_status_glyphs    ; 0x9cd2
    mov word [bss_845e], 0           ; 0x9cd5
.back5:
    call api_idx_0006_GMTP           ; 0x9cdb
    cmp word [bss_845e], byte -2     ; 0x9cde
    jne short .back5                 ; 0x9ce3
    call loc_KRMP                    ; 0x9ce5
    mov word [bp - 0x10], ax         ; 0x9ce8
    cmp word [bp - 0x10], byte 0     ; 0x9ceb
    je short .forward16              ; 0x9cef
    mov ax, word [screen_cache_index] ; 0x9cf1
    inc ax                           ; 0x9cf4
    mov cx, 2                        ; 0x9cf5
    cwd                              ; 0x9cf8
    idiv cx                          ; 0x9cf9
    mov word [screen_cache_index], dx ; 0x9cfb
    mov ax, word [party_status_frame] ; 0x9cff
    inc ax                           ; 0x9d02
    cwd                              ; 0x9d03
    idiv cx                          ; 0x9d04
    mov word [party_status_frame], dx ; 0x9d06
.forward16:
    cmp word [bp - 0x10], byte 0     ; 0x9d0a
    jne short .forward17             ; 0x9d0e
    jmp near .back2                  ; 0x9d10
.forward17:
    inc word [bp - 2]                ; 0x9d13
    mov ax, word [bp - 2]            ; 0x9d16
    cmp ax, strict word 4            ; 0x9d19
    jge short .forward18             ; 0x9d1c
    jmp near .back2                  ; 0x9d1e
.forward18:
    mov bx, word [bp + 4]            ; 0x9d21
    mov al, byte [bx + 0x2a]         ; 0x9d24
    cbw                              ; 0x9d27
    mov cx, 0xa                      ; 0x9d28
    cwd                              ; 0x9d2b
    idiv cx                          ; 0x9d2c
    mov word [bp - 4], ax            ; 0x9d2e
    mov al, byte [bx + 0x2a]         ; 0x9d31
    cbw                              ; 0x9d34
    cwd                              ; 0x9d35
    idiv cx                          ; 0x9d36
    mov word [bp - 6], dx            ; 0x9d38
    mov ax, 6                        ; 0x9d3b
    imul word [bp - 4]               ; 0x9d3e
    mov cx, word [bp - 6]            ; 0x9d41
    shl cx, 1                        ; 0x9d44
    add ax, cx                       ; 0x9d46
    mov bx, ax                       ; 0x9d48
    mov word [bx + cell_slot_ref], 0 ; 0x9d4a
    mov bx, word [bp + 4]            ; 0x9d50
    mov byte [bx + 0x2a], 0xff       ; 0x9d53
    call run_party_screen_animation  ; 0x9d57
    jmp short .forward20             ; 0x9d5a
.forward19:
    mov ax, word [startup_option]    ; 0x9d5c
    mov cx, 2                        ; 0x9d5f
    cwd                              ; 0x9d62
    idiv cx                          ; 0x9d63
    push ax                          ; 0x9d65
    call api_idx_0004_QUPL           ; 0x9d66
    pop cx                           ; 0x9d69
.forward20:
    jmp short .return1               ; 0x9d6a
.forward21:
    mov ax, 2                        ; 0x9d6c
    push ax                          ; 0x9d6f
    mov ax, 0x43                     ; 0x9d70
    push ax                          ; 0x9d73
    mov ax, MSG_BLOCKED              ; 0x9d74
    push ax                          ; 0x9d77
    call api_idx_0050_PLNP           ; 0x9d78
    add sp, byte 6                   ; 0x9d7b
    mov ax, word [startup_option]    ; 0x9d7e
    mov cx, 2                        ; 0x9d81
    cwd                              ; 0x9d84
    idiv cx                          ; 0x9d85
    push ax                          ; 0x9d87
    call api_idx_0004_QUPL           ; 0x9d88
    pop cx                           ; 0x9d8b
.return1:
    ret                              ; 0x9d8c
