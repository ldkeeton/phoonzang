; auto-generated
api_idx_0012_MVLS:
    mov ax, 0xffee                   ; 0x0a96
    call aztec_csav                  ; 0x0a99
    mov word [bss_940e], 0xffff      ; 0x0a9c
    mov ax, word [bp + 6]            ; 0x0aa2
    push ax                          ; 0x0aa5
    cmp ax, strict word 0            ; 0x0aa6
    pop ax                           ; 0x0aa9
    jge short @..api_idx_0012_MVLS.l2 ; 0x0aaa
    push ax                          ; 0x0aac
    cmp ax, strict word 0            ; 0x0aad
    pop ax                           ; 0x0ab0
    jge short @..api_idx_0012_MVLS.l1 ; 0x0ab1
    neg ax                           ; 0x0ab3
@..api_idx_0012_MVLS.l1:
    dec ax                           ; 0x0ab5
@..api_idx_0012_MVLS.l2:
    mov word [bp - 2], ax            ; 0x0ab6
    mov cx, 5                        ; 0x0ab9
    cwd                              ; 0x0abc
    idiv cx                          ; 0x0abd
    mov cx, 0xd                      ; 0x0abf
    imul cx                          ; 0x0ac2
    mov cx, 6                        ; 0x0ac4
    imul cx                          ; 0x0ac7
    push ax                          ; 0x0ac9
    mov ax, word [bp - 2]            ; 0x0aca
    mov cx, 5                        ; 0x0acd
    cwd                              ; 0x0ad0
    idiv cx                          ; 0x0ad1
    mov cx, ax                       ; 0x0ad3
    pop ax                           ; 0x0ad5
    add ax, cx                       ; 0x0ad6
    inc ax                           ; 0x0ad8
    inc ax                           ; 0x0ad9
    mov word [bp - 8], ax            ; 0x0ada
    shl dx, 1                        ; 0x0add
    mov ax, dx                       ; 0x0adf
    mov cx, 6                        ; 0x0ae1
    imul cx                          ; 0x0ae4
    push ax                          ; 0x0ae6
    mov ax, word [bp - 2]            ; 0x0ae7
    mov cx, 5                        ; 0x0aea
    cwd                              ; 0x0aed
    idiv cx                          ; 0x0aee
    mov cx, dx                       ; 0x0af0
    shl cx, 1                        ; 0x0af2
    pop ax                           ; 0x0af4
    add ax, cx                       ; 0x0af5
    add ax, strict word 0x71         ; 0x0af7
    mov word [bp - 0xa], ax          ; 0x0afa
    cmp word [mouse_active], byte 0  ; 0x0afd
    jne short @..api_idx_0012_MVLS.l3 ; 0x0b02
    jmp near @..api_idx_0012_MVLS.l6 ; 0x0b04
@..api_idx_0012_MVLS.l3:
    cmp word [bp + 6], byte 0        ; 0x0b07
    jge short @..api_idx_0012_MVLS.l4 ; 0x0b0b
    lea ax, word [bp - 6]            ; 0x0b0d
    push ax                          ; 0x0b10
    lea ax, word [bp - 4]            ; 0x0b11
    push ax                          ; 0x0b14
    call gfx_get_mouse               ; 0x0b15
    add sp, byte 4                   ; 0x0b18
    mov ax, word [bp - 6]            ; 0x0b1b
    add ax, word [bp + 0x10]         ; 0x0b1e
    push ax                          ; 0x0b21
    mov ax, word [bp - 4]            ; 0x0b22
    add ax, word [bp + 0xe]          ; 0x0b25
    push ax                          ; 0x0b28
    mov ax, 0                        ; 0x0b29
    push ax                          ; 0x0b2c
    push ax                          ; 0x0b2d
    mov ax, 0                        ; 0x0b2e
    mov dx, 0                        ; 0x0b31
    push dx                          ; 0x0b34
    push ax                          ; 0x0b35
    call gfx_set_mouse_pointer       ; 0x0b36
    add sp, byte 0xc                 ; 0x0b39
    call flush_keyboard              ; 0x0b3c
    jmp near @..api_idx_0012_MVLS.l5 ; 0x0b3f
@..api_idx_0012_MVLS.l4:
    mov ax, word [bp - 0xa]          ; 0x0b42
    add ax, strict word 0xc          ; 0x0b45
    push ax                          ; 0x0b48
    mov ax, word [bp - 8]            ; 0x0b49
    add ax, strict word 0x4b         ; 0x0b4c
    push ax                          ; 0x0b4f
    push word [bp - 0xa]             ; 0x0b50
    push word [bp - 8]               ; 0x0b53
    call gfx_save_area               ; 0x0b56
    add sp, byte 8                   ; 0x0b59
    mov word [bp - 0xc], dx          ; 0x0b5c
    mov word [bp - 0xe], ax          ; 0x0b5f
    mov ax, 0xff                     ; 0x0b62
    push ax                          ; 0x0b65
    mov ax, word [bp - 0xa]          ; 0x0b66
    add ax, strict word 0xc          ; 0x0b69
    push ax                          ; 0x0b6c
    mov ax, word [bp - 8]            ; 0x0b6d
    add ax, strict word 0x4b         ; 0x0b70
    push ax                          ; 0x0b73
    push word [bp - 0xa]             ; 0x0b74
    push word [bp - 8]               ; 0x0b77
    call gfx_fill_area               ; 0x0b7a
    add sp, byte 0xa                 ; 0x0b7d
    push word [bp + 0xc]             ; 0x0b80
    push word [bp + 0xa]             ; 0x0b83
    push word [bp + 8]               ; 0x0b86
    push word [bp - 2]               ; 0x0b89
    push word [bp + 4]               ; 0x0b8c
    call api_idx_0004_MKGU           ; 0x0b8f
    add sp, byte 0xa                 ; 0x0b92
    mov ax, 0xff                     ; 0x0b95
    push ax                          ; 0x0b98
    mov ax, 0x15                     ; 0x0b99
    push ax                          ; 0x0b9c
    call gfx_set_text_color          ; 0x0b9d
    add sp, byte 4                   ; 0x0ba0
    push word [bp - 0xa]             ; 0x0ba3
    push word [bp - 8]               ; 0x0ba6
    call gfx_set_text_pos            ; 0x0ba9
    add sp, byte 4                   ; 0x0bac
    mov ax, 0                        ; 0x0baf
    push ax                          ; 0x0bb2
    mov ax, 4                        ; 0x0bb3
    push ax                          ; 0x0bb6
    call draw_font_glyph             ; 0x0bb7
    add sp, byte 4                   ; 0x0bba
    mov ax, word [bp - 0xa]          ; 0x0bbd
    add ax, strict word 0xc          ; 0x0bc0
    push ax                          ; 0x0bc3
    mov ax, word [bp - 8]            ; 0x0bc4
    add ax, strict word 0x4b         ; 0x0bc7
    push ax                          ; 0x0bca
    push word [bp - 0xa]             ; 0x0bcb
    push word [bp - 8]               ; 0x0bce
    call gfx_save_area               ; 0x0bd1
    add sp, byte 8                   ; 0x0bd4
    mov word [bp - 0x10], dx         ; 0x0bd7
    mov word [bp - 0x12], ax         ; 0x0bda
    mov ax, 0x3dc                    ; 0x0bdd
    push ax                          ; 0x0be0
    push word [bss_0e20]             ; 0x0be1
    push word [bss_0e1e]             ; 0x0be5
    mov ax, word [bp - 0x12]         ; 0x0be9
    add ax, strict word 0xc          ; 0x0bec
    push dx                          ; 0x0bef
    push ax                          ; 0x0bf0
    call app_memmove                 ; 0x0bf1
    add sp, byte 0xa                 ; 0x0bf4
    mov ax, 1                        ; 0x0bf7
    push ax                          ; 0x0bfa
    push word [bp - 0x10]            ; 0x0bfb
    push word [bp - 0x12]            ; 0x0bfe
    call gfx_restore_area            ; 0x0c01
    add sp, byte 6                   ; 0x0c04
    mov ax, 1                        ; 0x0c07
    push ax                          ; 0x0c0a
    push word [bp - 0xc]             ; 0x0c0b
    push word [bp - 0xe]             ; 0x0c0e
    call gfx_restore_area            ; 0x0c11
    add sp, byte 6                   ; 0x0c14
    lea ax, word [bp - 6]            ; 0x0c17
    push ax                          ; 0x0c1a
    lea ax, word [bp - 4]            ; 0x0c1b
    push ax                          ; 0x0c1e
    call gfx_get_mouse               ; 0x0c1f
    add sp, byte 4                   ; 0x0c22
    mov ax, 0x13f                    ; 0x0c25
    push ax                          ; 0x0c28
    mov ax, 0                        ; 0x0c29
    push ax                          ; 0x0c2c
    mov ax, word [bp - 4]            ; 0x0c2d
    add ax, word [bp + 0xe]          ; 0x0c30
    add ax, strict word 0xffdc       ; 0x0c33
    push ax                          ; 0x0c36
    call clamp_between               ; 0x0c37
    add sp, byte 6                   ; 0x0c3a
    mov word [bp - 4], ax            ; 0x0c3d
    mov ax, 0xc7                     ; 0x0c40
    push ax                          ; 0x0c43
    mov ax, 0                        ; 0x0c44
    push ax                          ; 0x0c47
    mov ax, word [bp - 6]            ; 0x0c48
    add ax, word [bp + 0x10]         ; 0x0c4b
    add ax, strict word 0xfffa       ; 0x0c4e
    push ax                          ; 0x0c51
    call clamp_between               ; 0x0c52
    add sp, byte 6                   ; 0x0c55
    mov word [bp - 6], ax            ; 0x0c58
    push ax                          ; 0x0c5b
    push word [bp - 4]               ; 0x0c5c
    mov ax, 0xd                      ; 0x0c5f
    push ax                          ; 0x0c62
    mov ax, 0x4c                     ; 0x0c63
    push ax                          ; 0x0c66
    push word [bss_0e20]             ; 0x0c67
    push word [bss_0e1e]             ; 0x0c6b
    call gfx_set_mouse_pointer       ; 0x0c6f
    add sp, byte 0xc                 ; 0x0c72
    call flush_keyboard              ; 0x0c75
@..api_idx_0012_MVLS.l5:
    jmp short @..api_idx_0012_MVLS.l8 ; 0x0c78
@..api_idx_0012_MVLS.l6:
    cmp word [bp + 6], byte 0        ; 0x0c7a
    jge short @..api_idx_0012_MVLS.l7 ; 0x0c7e
    mov word [bss_940e], 0xffff      ; 0x0c80
    jmp short @..api_idx_0012_MVLS.l8 ; 0x0c86
@..api_idx_0012_MVLS.l7:
    mov ax, word [bp - 2]            ; 0x0c88
    mov word [bss_940e], ax          ; 0x0c8b
    push word [bp + 0xa]             ; 0x0c8e
    mov ax, bss_9414                 ; 0x0c91
    push ax                          ; 0x0c94
    call aztec_strcpy                ; 0x0c95
    add sp, byte 4                   ; 0x0c98
    mov bx, word [bp + 8]            ; 0x0c9b
    mov al, byte [bx + 5]            ; 0x0c9e
    sub ah, ah                       ; 0x0ca1
    mov word [bss_9410], ax          ; 0x0ca3
    mov al, byte [bx + 4]            ; 0x0ca6
    sub ah, ah                       ; 0x0ca9
    mov word [bss_942a], ax          ; 0x0cab
    mov al, byte [bx + 6]            ; 0x0cae
    sub ah, ah                       ; 0x0cb1
    mov word [bss_942c], ax          ; 0x0cb3
    mov word [bss_9412], 1           ; 0x0cb6
    call api_idx_0004_KVIP           ; 0x0cbc
@..api_idx_0012_MVLS.l8:
    mov ax, 0xb6                     ; 0x0cbf
    push ax                          ; 0x0cc2
    mov ax, 0xab                     ; 0x0cc3
    push ax                          ; 0x0cc6
    mov ax, 0x70                     ; 0x0cc7
    push ax                          ; 0x0cca
    mov ax, 1                        ; 0x0ccb
    push ax                          ; 0x0cce
    call gfx_show_area               ; 0x0ccf
    add sp, byte 8                   ; 0x0cd2
    ret                              ; 0x0cd5
