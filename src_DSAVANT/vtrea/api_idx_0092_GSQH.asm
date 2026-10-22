; auto-generated
api_idx_0092_GSQH:
    mov ax, 0xff6e                   ; 0x4bcc
    call aztec_csav                  ; 0x4bcf
    mov word [bp - 0x0092], 0        ; 0x4bd2
    mov word [bp - 0x004e], 0        ; 0x4bd8
@..api_idx_0092_GSQH.l1:
    mov word [bp - 0x0050], 0        ; 0x4bdd
@..api_idx_0092_GSQH.l2:
    mov ax, 0x248                    ; 0x4be2
    imul word [bp + 0x4]             ; 0x4be5
    push ax                          ; 0x4be8
    mov ax, 0x78                     ; 0x4be9
    imul word [bp - 0x004e]          ; 0x4bec
    mov cx, ax                       ; 0x4bef
    pop ax                           ; 0x4bf1
    add ax, cx                       ; 0x4bf2
    push ax                          ; 0x4bf4
    mov ax, 0xc                      ; 0x4bf5
    imul word [bp - 0x0050]          ; 0x4bf8
    mov cx, ax                       ; 0x4bfb
    pop ax                           ; 0x4bfd
    add ax, cx                       ; 0x4bfe
    mov bx, ax                       ; 0x4c00
    cmp word [bx + cell_key_grid], byte 0 ; 0x4c02
    jg short @..api_idx_0092_GSQH.l3 ; 0x4c07
    jmp near @..api_idx_0092_GSQH.l8 ; 0x4c09
@..api_idx_0092_GSQH.l3:
    mov ax, 0                        ; 0x4c0c
    push ax                          ; 0x4c0f
    push word [bx + cell_key_grid]   ; 0x4c10
    lea ax, word [bp - 0x004a]       ; 0x4c14
    push ax                          ; 0x4c17
    mov ax, 1                        ; 0x4c18
    push ax                          ; 0x4c1b
    call data_record_io              ; 0x4c1c
    add sp, byte 8                   ; 0x4c1f
    mov ax, 0x248                    ; 0x4c22
    imul word [bp + 0x4]             ; 0x4c25
    push ax                          ; 0x4c28
    mov ax, 0x78                     ; 0x4c29
    imul word [bp - 0x004e]          ; 0x4c2c
    mov cx, ax                       ; 0x4c2f
    pop ax                           ; 0x4c31
    add ax, cx                       ; 0x4c32
    push ax                          ; 0x4c34
    mov ax, 0xc                      ; 0x4c35
    imul word [bp - 0x0050]          ; 0x4c38
    mov cx, ax                       ; 0x4c3b
    pop ax                           ; 0x4c3d
    add ax, cx                       ; 0x4c3e
    mov bx, ax                       ; 0x4c40
    mov al, byte [bx + 0x5c3b]       ; 0x4c42
    sub ah, ah                       ; 0x4c46
    test ax, 0x80                    ; 0x4c48
    je short @..api_idx_0092_GSQH.l4 ; 0x4c4b
    lea ax, word [bp - 0x004a]       ; 0x4c4d
    push ax                          ; 0x4c50
    mov ax, 0x16                     ; 0x4c51
    imul word [bp - 0x0092]          ; 0x4c54
    add ax, 0x93fe                   ; 0x4c58
    push ax                          ; 0x4c5b
    call aztec_strcpy                ; 0x4c5c
    add sp, byte 4                   ; 0x4c5f
    jmp short @..api_idx_0092_GSQH.l5 ; 0x4c62
@..api_idx_0092_GSQH.l4:
    mov ax, 0x16                     ; 0x4c64
    imul word [bp - 0x0092]          ; 0x4c67
    add ax, 0x93fe                   ; 0x4c6b
    push ax                          ; 0x4c6e
    mov al, byte [bp - 0x0011]       ; 0x4c6f
    sub ah, ah                       ; 0x4c72
    add ax, 0x1770                   ; 0x4c74
    push ax                          ; 0x4c77
    call load_message_string         ; 0x4c78
    add sp, byte 4                   ; 0x4c7b
@..api_idx_0092_GSQH.l5:
    mov al, byte [bp - 0x0011]       ; 0x4c7e
    sub ah, ah                       ; 0x4c81
    mov cx, word [bp - 0x0092]       ; 0x4c83
    shl cx, 1                        ; 0x4c87
    mov bx, cx                       ; 0x4c89
    mov word [bx - 0x6c2a], ax       ; 0x4c8b
    mov ax, word [bp - 0x004e]       ; 0x4c8f
    mov word [bx - 0x6c52], ax       ; 0x4c92
    mov ax, 0x248                    ; 0x4c96
    imul word [bp + 0x4]             ; 0x4c99
    push ax                          ; 0x4c9c
    mov ax, 0x78                     ; 0x4c9d
    imul word [bp - 0x004e]          ; 0x4ca0
    mov cx, ax                       ; 0x4ca3
    pop ax                           ; 0x4ca5
    add ax, cx                       ; 0x4ca6
    push ax                          ; 0x4ca8
    mov ax, 0xc                      ; 0x4ca9
    imul word [bp - 0x0050]          ; 0x4cac
    mov cx, ax                       ; 0x4caf
    pop ax                           ; 0x4cb1
    add ax, cx                       ; 0x4cb2
    mov bx, ax                       ; 0x4cb4
    mov al, byte [bx + 0x5c38]       ; 0x4cb6
    sub ah, ah                       ; 0x4cba
    mov bx, ax                       ; 0x4cbc
    cmp byte [bx + 0x60e], 1         ; 0x4cbe
    jne short @..api_idx_0092_GSQH.l6 ; 0x4cc3
    mov ax, 0x248                    ; 0x4cc5
    imul word [bp + 0x4]             ; 0x4cc8
    push ax                          ; 0x4ccb
    mov ax, 0x78                     ; 0x4ccc
    imul word [bp - 0x004e]          ; 0x4ccf
    mov cx, ax                       ; 0x4cd2
    pop ax                           ; 0x4cd4
    add ax, cx                       ; 0x4cd5
    push ax                          ; 0x4cd7
    mov ax, 0xc                      ; 0x4cd8
    imul word [bp - 0x0050]          ; 0x4cdb
    mov cx, ax                       ; 0x4cde
    pop ax                           ; 0x4ce0
    add ax, cx                       ; 0x4ce1
    mov bx, ax                       ; 0x4ce3
    mov al, byte [bx + 0x5c3a]       ; 0x4ce5
    sub ah, ah                       ; 0x4ce9
    mov cx, word [bp - 0x0092]       ; 0x4ceb
    shl cx, 1                        ; 0x4cef
    mov bx, cx                       ; 0x4cf1
    mov word [bx - 0x6a4a], ax       ; 0x4cf3
    jmp short @..api_idx_0092_GSQH.l7 ; 0x4cf7
@..api_idx_0092_GSQH.l6:
    mov ax, word [bp - 0x0092]       ; 0x4cf9
    shl ax, 1                        ; 0x4cfd
    mov bx, ax                       ; 0x4cff
    mov word [bx - 0x6a4a], 0        ; 0x4d01
@..api_idx_0092_GSQH.l7:
    mov ax, word [bp - 0x004e]       ; 0x4d07
    xchg al, ah                      ; 0x4d0a
    sub al, al                       ; 0x4d0c
    add ax, word [bp - 0x0050]       ; 0x4d0e
    mov cx, word [bp - 0x0092]       ; 0x4d11
    shl cx, 1                        ; 0x4d15
    mov bx, cx                       ; 0x4d17
    add bx, bp                       ; 0x4d19
    mov word [bx - 0x0090], ax       ; 0x4d1b
    inc word [bp - 0x0092]           ; 0x4d1f
@..api_idx_0092_GSQH.l8:
    inc word [bp - 0x0050]           ; 0x4d23
    mov ax, word [bp - 0x0050]       ; 0x4d26
    cmp ax, strict word 0xa          ; 0x4d29
    jge short @..api_idx_0092_GSQH.l9 ; 0x4d2c
    jmp near @..api_idx_0092_GSQH.l2 ; 0x4d2e
@..api_idx_0092_GSQH.l9:
    inc word [bp - 0x004e]           ; 0x4d31
    mov ax, word [bp - 0x004e]       ; 0x4d34
    cmp ax, strict word 2            ; 0x4d37
    jge short @..api_idx_0092_GSQH.l10 ; 0x4d3a
    jmp near @..api_idx_0092_GSQH.l1 ; 0x4d3c
@..api_idx_0092_GSQH.l10:
    cmp word [bp - 0x0092], byte 0   ; 0x4d3f
    jne short @..api_idx_0092_GSQH.l11 ; 0x4d44
    ret                              ; 0x4d46
@..api_idx_0092_GSQH.l11:
    mov ax, dseg_90e2                ; 0x4d47
    push ax                          ; 0x4d4a
    push word [bp - 0x0092]          ; 0x4d4b
    mov ax, 1                        ; 0x4d4f
    push ax                          ; 0x4d52
    push ax                          ; 0x4d53
    push ax                          ; 0x4d54
    mov ax, 0x7ee                    ; 0x4d55
    push ax                          ; 0x4d58
    call api_idx_0038_ULQM           ; 0x4d59
    add sp, byte 0x0c                ; 0x4d5c
    mov word [bp - 0x004c], ax       ; 0x4d5f
    mov ax, word [spell_dialog_result] ; 0x4d62
    mov word [bp - 0x0002], ax       ; 0x4d65
    cmp word [bp - 0x004c], byte 2   ; 0x4d68
    je short @..api_idx_0092_GSQH.l12 ; 0x4d6c
    cmp ax, strict word 0xffff       ; 0x4d6e
    jne short @..api_idx_0092_GSQH.l13 ; 0x4d71
@..api_idx_0092_GSQH.l12:
    mov ax, 0xc6                     ; 0x4d73
    push ax                          ; 0x4d76
    mov ax, 0x109                    ; 0x4d77
    push ax                          ; 0x4d7a
    mov ax, 0x8e                     ; 0x4d7b
    push ax                          ; 0x4d7e
    mov ax, 0x36                     ; 0x4d7f
    push ax                          ; 0x4d82
    call gfx_show_area               ; 0x4d83
    add sp, byte 8                   ; 0x4d86
    ret                              ; 0x4d89
@..api_idx_0092_GSQH.l13:
    mov ax, word [bp - 0x0002]       ; 0x4d8a
    shl ax, 1                        ; 0x4d8d
    mov bx, ax                       ; 0x4d8f
    add bx, bp                       ; 0x4d91
    mov ax, word [bx - 0x0090]       ; 0x4d93
    mov cx, 0x100                    ; 0x4d97
    cwd                              ; 0x4d9a
    idiv cx                          ; 0x4d9b
    mov word [bp - 0x004e], ax       ; 0x4d9d
    mov word [bp - 0x0050], dx       ; 0x4da0
    mov ax, 0x10                     ; 0x4da3
    push ax                          ; 0x4da6
    mov ax, 0xc                      ; 0x4da7
    push ax                          ; 0x4daa
    mov ax, 0x96                     ; 0x4dab
    push ax                          ; 0x4dae
    mov ax, 0x3f                     ; 0x4daf
    push ax                          ; 0x4db2
    push word [bp - 0x004c]          ; 0x4db3
    mov ax, word [bp - 0x004c]       ; 0x4db6
    add ax, 0x7ee                    ; 0x4db9
    push ax                          ; 0x4dbc
    call api_idx_0018_RGOS           ; 0x4dbd
    add sp, byte 0x0c                ; 0x4dc0
    cmp word [bp - 0x004c], byte 0   ; 0x4dc3
    je short @..api_idx_0092_GSQH.l14 ; 0x4dc7
    jmp near @..api_idx_0092_GSQH.l17 ; 0x4dc9
@..api_idx_0092_GSQH.l14:
    mov ax, 0                        ; 0x4dcc
    push ax                          ; 0x4dcf
    mov ax, 0x248                    ; 0x4dd0
    imul word [bp + 0x4]             ; 0x4dd3
    push ax                          ; 0x4dd6
    mov ax, 0x78                     ; 0x4dd7
    imul word [bp - 0x004e]          ; 0x4dda
    mov cx, ax                       ; 0x4ddd
    pop ax                           ; 0x4ddf
    add ax, cx                       ; 0x4de0
    push ax                          ; 0x4de2
    mov ax, 0xc                      ; 0x4de3
    imul word [bp - 0x0050]          ; 0x4de6
    mov cx, ax                       ; 0x4de9
    pop ax                           ; 0x4deb
    add ax, cx                       ; 0x4dec
    mov bx, ax                       ; 0x4dee
    push word [bx + cell_key_grid]   ; 0x4df0
    lea ax, word [bp - 0x004a]       ; 0x4df4
    push ax                          ; 0x4df7
    mov ax, 1                        ; 0x4df8
    push ax                          ; 0x4dfb
    call data_record_io              ; 0x4dfc
    add sp, byte 8                   ; 0x4dff
    cmp word [bp - 0x0028], byte 0   ; 0x4e02
    je short @..api_idx_0092_GSQH.l16 ; 0x4e06
    mov ax, word [bp - 0x0028]       ; 0x4e08
    mov cx, 0x100                    ; 0x4e0b
    cwd                              ; 0x4e0e
    idiv cx                          ; 0x4e0f
    mov word [bp - 0x0054], ax       ; 0x4e11
    mov word [bp - 0x0052], dx       ; 0x4e14
    mov ax, 6                        ; 0x4e17
    imul dx                          ; 0x4e1a
    mov bx, ax                       ; 0x4e1c
    cmp byte [bx + 0x624], 1         ; 0x4e1e
    jne short @..api_idx_0092_GSQH.l15 ; 0x4e23
    call pick_party_member           ; 0x4e25
    mov word [bss_95e2], ax          ; 0x4e28
    cmp ax, strict word 0xffff       ; 0x4e2b
    jne short @..api_idx_0092_GSQH.l15 ; 0x4e2e
    mov word [bp - 0x0052], 0xffff   ; 0x4e30
@..api_idx_0092_GSQH.l15:
    mov ax, 0xc6                     ; 0x4e35
    push ax                          ; 0x4e38
    mov ax, 0x109                    ; 0x4e39
    push ax                          ; 0x4e3c
    mov ax, 0x8e                     ; 0x4e3d
    push ax                          ; 0x4e40
    mov ax, 0x36                     ; 0x4e41
    push ax                          ; 0x4e44
    call gfx_show_area               ; 0x4e45
    add sp, byte 8                   ; 0x4e48
    cmp word [bp - 0x0052], byte 0xff ; 0x4e4b
    je short @..api_idx_0092_GSQH.l16 ; 0x4e4f
    push word [bp - 0x0050]          ; 0x4e51
    push word [bp - 0x004e]          ; 0x4e54
    push word [bp + 0x4]             ; 0x4e57
    call ds_app_UTUH                 ; 0x4e5a
    add sp, byte 6                   ; 0x4e5d
    push word [bss_95e2]             ; 0x4e60
    push word [bp - 0x0054]          ; 0x4e64
    push word [bp - 0x0052]          ; 0x4e67
    push word [bp + 0x4]             ; 0x4e6a
    call api_idx_0008_HJOM           ; 0x4e6d
    add sp, byte 8                   ; 0x4e70
@..api_idx_0092_GSQH.l16:
    jmp short @..api_idx_0092_GSQH.l19 ; 0x4e73
@..api_idx_0092_GSQH.l17:
    cmp word [bp - 0x004c], byte 1   ; 0x4e75
    jne short @..api_idx_0092_GSQH.l19 ; 0x4e79
    mov ax, 0x248                    ; 0x4e7b
    imul word [bp + 0x4]             ; 0x4e7e
    push ax                          ; 0x4e81
    mov ax, 0x78                     ; 0x4e82
    imul word [bp - 0x004e]          ; 0x4e85
    mov cx, ax                       ; 0x4e88
    pop ax                           ; 0x4e8a
    add ax, cx                       ; 0x4e8b
    push ax                          ; 0x4e8d
    mov ax, 0xc                      ; 0x4e8e
    imul word [bp - 0x0050]          ; 0x4e91
    mov cx, ax                       ; 0x4e94
    pop ax                           ; 0x4e96
    add ax, cx                       ; 0x4e97
    mov bx, ax                       ; 0x4e99
    mov al, byte [bx + 0x5c3b]       ; 0x4e9b
    sub ah, ah                       ; 0x4e9f
    test ax, 2                       ; 0x4ea1
    je short @..api_idx_0092_GSQH.l18 ; 0x4ea4
    mov ax, 0                        ; 0x4ea6
    push ax                          ; 0x4ea9
    call play_sound_effect           ; 0x4eaa
    pop cx                           ; 0x4ead
    jmp short @..api_idx_0092_GSQH.l19 ; 0x4eae
@..api_idx_0092_GSQH.l18:
    mov ax, 0x248                    ; 0x4eb0
    imul word [bp + 0x4]             ; 0x4eb3
    push ax                          ; 0x4eb6
    mov ax, 0x78                     ; 0x4eb7
    imul word [bp - 0x004e]          ; 0x4eba
    mov cx, ax                       ; 0x4ebd
    pop ax                           ; 0x4ebf
    add ax, cx                       ; 0x4ec0
    push ax                          ; 0x4ec2
    mov ax, 0xc                      ; 0x4ec3
    imul word [bp - 0x0050]          ; 0x4ec6
    mov cx, ax                       ; 0x4ec9
    pop ax                           ; 0x4ecb
    add ax, cx                       ; 0x4ecc
    add ax, 0x5c34                   ; 0x4ece
    push ax                          ; 0x4ed1
    call api_idx_0004_UJRL           ; 0x4ed2
    pop cx                           ; 0x4ed5
    push word [bp - 0x0050]          ; 0x4ed6
    push word [bp - 0x004e]          ; 0x4ed9
    push word [bp + 0x4]             ; 0x4edc
    call ds_app_IPJO                 ; 0x4edf
    add sp, byte 6                   ; 0x4ee2
@..api_idx_0092_GSQH.l19:
    mov ax, 0xc6                     ; 0x4ee5
    push ax                          ; 0x4ee8
    mov ax, 0x109                    ; 0x4ee9
    push ax                          ; 0x4eec
    mov ax, 0x8e                     ; 0x4eed
    push ax                          ; 0x4ef0
    mov ax, 0x36                     ; 0x4ef1
    push ax                          ; 0x4ef4
    call gfx_show_area               ; 0x4ef5
    add sp, byte 8                   ; 0x4ef8
    mov ax, 1                        ; 0x4efb
    push ax                          ; 0x4efe
    push word [bp + 0x4]             ; 0x4eff
    call ds_app_string_LUOV          ; 0x4f02
    add sp, byte 4                   ; 0x4f05
    call api_idx_0006_KPLV           ; 0x4f08
    ret                              ; 0x4f0b
