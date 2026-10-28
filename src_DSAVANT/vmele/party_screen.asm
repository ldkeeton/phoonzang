; auto-generated
party_screen:
    mov ax, 0xfd08                   ; 0x1a16
    call aztec_csav                  ; 0x1a19
    mov word [bp - 2], 1             ; 0x1a1c
    jmp near .forward11              ; 0x1a21
.back1:
    mov ax, word [bp - 2]            ; 0x1a24
    shl ax, 1                        ; 0x1a27
    mov bx, ax                       ; 0x1a29
    add bx, bp                       ; 0x1a2b
    mov word [bx - 0x1c], 0          ; 0x1a2d
    mov word [bp - 4], 0             ; 0x1a32
    jmp near .forward5               ; 0x1a37
.back2:
    mov ax, 0x2c                     ; 0x1a3a
    imul word [bp - 4]               ; 0x1a3d
    mov si, ax                       ; 0x1a40
    mov ax, word [bp - 2]            ; 0x1a42
    shl ax, 1                        ; 0x1a45
    mov bx, ax                       ; 0x1a47
    mov bx, word [bx + party_char]   ; 0x1a49
    cmp byte [bx + si + member_rec.item_state], 0 ; 0x1a4d
    je short .forward1               ; 0x1a51
    jmp near .forward4               ; 0x1a53
.forward1:
    cmp byte [bx + si + 0x10], 0     ; 0x1a56
    je short .forward2               ; 0x1a5a
    jmp near .forward4               ; 0x1a5c
.forward2:
    cmp byte [bx + si + 0x11], 0     ; 0x1a5f
    jne short .forward4              ; 0x1a63
    mov word [bp - 0xc], 0           ; 0x1a65
    mov word [bp - 0xa], 0           ; 0x1a6a
.back3:
    mov ax, 0x2c                     ; 0x1a6f
    imul word [bp - 4]               ; 0x1a72
    add ax, word [bp - 0xa]          ; 0x1a75
    mov si, ax                       ; 0x1a78
    mov ax, word [bp - 2]            ; 0x1a7a
    shl ax, 1                        ; 0x1a7d
    mov bx, ax                       ; 0x1a7f
    mov bx, word [bx + party_char]   ; 0x1a81
    cmp byte [bx + si + member_rec.item_counter], 0 ; 0x1a85
    jbe short .forward3              ; 0x1a89
    mov ax, 0x2c                     ; 0x1a8b
    imul word [bp - 4]               ; 0x1a8e
    mov si, ax                       ; 0x1a91
    mov ax, word [bx + si + 2]       ; 0x1a93
    mov cx, 4                        ; 0x1a96
    cwd                              ; 0x1a99
    idiv cx                          ; 0x1a9a
    add word [bp - 0xc], ax          ; 0x1a9c
.forward3:
    inc word [bp - 0xa]              ; 0x1a9f
    mov ax, word [bp - 0xa]          ; 0x1aa2
    cmp ax, strict word 0xa          ; 0x1aa5
    jl short .back3                  ; 0x1aa8
    mov ax, 0x2c                     ; 0x1aaa
    imul word [bp - 4]               ; 0x1aad
    mov si, ax                       ; 0x1ab0
    mov ax, word [bp - 2]            ; 0x1ab2
    shl ax, 1                        ; 0x1ab5
    mov bx, ax                       ; 0x1ab7
    mov bx, word [bx + party_char]   ; 0x1ab9
    mov ax, word [bx + si + member_rec.item_charges] ; 0x1abd
    cmp ax, word [bp - 0xc]          ; 0x1ac0
    jle short .forward4              ; 0x1ac3
    mov ax, word [bx + si + 2]       ; 0x1ac5
    sub ax, word [bp - 0xc]          ; 0x1ac8
    mov cx, word [bp - 2]            ; 0x1acb
    shl cx, 1                        ; 0x1ace
    mov bx, cx                       ; 0x1ad0
    add bx, bp                       ; 0x1ad2
    add word [bx - 0x1c], ax         ; 0x1ad4
.forward4:
    inc word [bp - 4]                ; 0x1ad7
.forward5:
    mov ax, word [bp - 2]            ; 0x1ada
    shl ax, 1                        ; 0x1add
    mov bx, ax                       ; 0x1adf
    mov bx, word [bx + party_char]   ; 0x1ae1
    mov al, byte [bx + member_rec.item_count] ; 0x1ae5
    sub ah, ah                       ; 0x1ae9
    cmp ax, word [bp - 4]            ; 0x1aeb
    jle short .forward6              ; 0x1aee
    jmp near .back2                  ; 0x1af0
.forward6:
    mov ax, word [bp - 2]            ; 0x1af3
    shl ax, 1                        ; 0x1af6
    mov bx, ax                       ; 0x1af8
    mov bx, word [bx + party_char_ext] ; 0x1afa
    cmp byte [bx + member_ext.f_00ae], 0 ; 0x1afe
    jbe short .forward7              ; 0x1b03
    mov bx, ax                       ; 0x1b05
    add bx, bp                       ; 0x1b07
    mov ax, word [bx - 0x1c]         ; 0x1b09
    push ax                          ; 0x1b0c
    mov ax, word [bp - 2]            ; 0x1b0d
    shl ax, 1                        ; 0x1b10
    mov si, ax                       ; 0x1b12
    mov si, word [si + party_char_ext] ; 0x1b14
    mov al, byte [si + member_ext.f_00ae] ; 0x1b18
    sub ah, ah                       ; 0x1b1c
    mov cx, 0xa                      ; 0x1b1e
    cwd                              ; 0x1b21
    idiv cx                          ; 0x1b22
    mov cx, ax                       ; 0x1b24
    inc ax                           ; 0x1b26
    mov cx, ax                       ; 0x1b27
    pop ax                           ; 0x1b29
    cwd                              ; 0x1b2a
    idiv cx                          ; 0x1b2b
    mov word [bx - 0x1c], ax         ; 0x1b2d
.forward7:
    mov ax, word [bp - 2]            ; 0x1b30
    shl ax, 1                        ; 0x1b33
    mov bx, ax                       ; 0x1b35
    mov bx, word [bx + party_char_ext] ; 0x1b37
    cmp byte [bx + member_ext.f_00b0], 0 ; 0x1b3b
    jbe short .forward8              ; 0x1b40
    mov bx, ax                       ; 0x1b42
    add bx, bp                       ; 0x1b44
    mov ax, word [bx - 0x1c]         ; 0x1b46
    push ax                          ; 0x1b49
    mov ax, word [bp - 2]            ; 0x1b4a
    shl ax, 1                        ; 0x1b4d
    mov bx, ax                       ; 0x1b4f
    mov bx, word [bx + party_char_ext] ; 0x1b51
    mov al, byte [bx + member_ext.f_00b0] ; 0x1b55
    sub ah, ah                       ; 0x1b59
    mov cx, ax                       ; 0x1b5b
    pop ax                           ; 0x1b5d
    mov bx, cx                       ; 0x1b5e
    imul bx                          ; 0x1b60
    mov cx, 0x64                     ; 0x1b62
    mov bx, 0                        ; 0x1b65
    call aztec_ldv                   ; 0x1b68
    push ax                          ; 0x1b6b
    push dx                          ; 0x1b6c
    mov ax, word [bp - 2]            ; 0x1b6d
    shl ax, 1                        ; 0x1b70
    mov bx, ax                       ; 0x1b72
    add bx, bp                       ; 0x1b74
    mov ax, word [bx - 0x1c]         ; 0x1b76
    cwd                              ; 0x1b79
    mov cx, ax                       ; 0x1b7a
    mov bx, dx                       ; 0x1b7c
    pop dx                           ; 0x1b7e
    pop ax                           ; 0x1b7f
    add ax, cx                       ; 0x1b80
    adc dx, bx                       ; 0x1b82
    mov cx, word [bp - 2]            ; 0x1b84
    shl cx, 1                        ; 0x1b87
    mov bx, cx                       ; 0x1b89
    add bx, bp                       ; 0x1b8b
    mov word [bx - 0x1c], ax         ; 0x1b8d
.forward8:
    mov ax, word [bp - 2]            ; 0x1b90
    shl ax, 1                        ; 0x1b93
    mov bx, ax                       ; 0x1b95
    mov bx, word [bx + party_char_ext] ; 0x1b97
    cmp byte [bx + member_ext.f_00b1], 0 ; 0x1b9b
    jbe short .forward9              ; 0x1ba0
    mov bx, ax                       ; 0x1ba2
    add bx, bp                       ; 0x1ba4
    mov ax, word [bx - 0x1c]         ; 0x1ba6
    push ax                          ; 0x1ba9
    mov ax, word [bp - 2]            ; 0x1baa
    shl ax, 1                        ; 0x1bad
    mov bx, ax                       ; 0x1baf
    mov bx, word [bx + party_char_ext] ; 0x1bb1
    mov al, byte [bx + member_ext.f_00b1] ; 0x1bb5
    sub ah, ah                       ; 0x1bb9
    mov cx, ax                       ; 0x1bbb
    pop ax                           ; 0x1bbd
    mov bx, cx                       ; 0x1bbe
    imul bx                          ; 0x1bc0
    mov cx, 0x64                     ; 0x1bc2
    mov bx, 0                        ; 0x1bc5
    call aztec_ldv                   ; 0x1bc8
    push ax                          ; 0x1bcb
    push dx                          ; 0x1bcc
    mov ax, word [bp - 2]            ; 0x1bcd
    shl ax, 1                        ; 0x1bd0
    mov bx, ax                       ; 0x1bd2
    add bx, bp                       ; 0x1bd4
    mov ax, word [bx - 0x1c]         ; 0x1bd6
    cwd                              ; 0x1bd9
    mov cx, ax                       ; 0x1bda
    mov bx, dx                       ; 0x1bdc
    pop dx                           ; 0x1bde
    pop ax                           ; 0x1bdf
    add ax, cx                       ; 0x1be0
    adc dx, bx                       ; 0x1be2
    mov cx, word [bp - 2]            ; 0x1be4
    shl cx, 1                        ; 0x1be7
    mov bx, cx                       ; 0x1be9
    add bx, bp                       ; 0x1beb
    mov word [bx - 0x1c], ax         ; 0x1bed
.forward9:
    mov ax, word [bp - 2]            ; 0x1bf0
    shl ax, 1                        ; 0x1bf3
    mov bx, ax                       ; 0x1bf5
    mov bx, word [bx + party_char]   ; 0x1bf7
    cmp byte [bx + member_rec.slot], 0xff ; 0x1bfb
    je short .forward10              ; 0x1c00
    mov al, byte [bx + 0x19f]        ; 0x1c02
    cbw                              ; 0x1c06
    mov cx, 0x15e                    ; 0x1c07
    imul cx                          ; 0x1c0a
    mov bx, ax                       ; 0x1c0c
    cmp byte [bx + slot_recs + slot_rec.forced], 0 ; 0x1c0e
    je short .forward10              ; 0x1c13
    mov ax, word [bp - 2]            ; 0x1c15
    shl ax, 1                        ; 0x1c18
    mov bx, ax                       ; 0x1c1a
    add bx, bp                       ; 0x1c1c
    mov word [bx - 0x1c], 0          ; 0x1c1e
.forward10:
    inc word [bp - 2]                ; 0x1c23
.forward11:
    mov ax, word [bp - 2]            ; 0x1c26
    cmp ax, word [party_member_count] ; 0x1c29
    jg short .forward12              ; 0x1c2d
    jmp near .back1                  ; 0x1c2f
.forward12:
    mov ax, word [party_member_count] ; 0x1c32
    mov word [bp - 2], ax            ; 0x1c35
    jmp near .forward26              ; 0x1c38
.back4:
    mov ax, word [bp - 2]            ; 0x1c3b
    shl ax, 1                        ; 0x1c3e
    mov bx, ax                       ; 0x1c40
    add bx, bp                       ; 0x1c42
    push word [bx - 0x1c]            ; 0x1c44
    call random_below                ; 0x1c47
    pop cx                           ; 0x1c4a
    push ax                          ; 0x1c4b
    mov ax, word [bp - 2]            ; 0x1c4c
    shl ax, 1                        ; 0x1c4f
    mov bx, ax                       ; 0x1c51
    add bx, bp                       ; 0x1c53
    push word [bx - 0x1e]            ; 0x1c55
    call random_below                ; 0x1c58
    pop cx                           ; 0x1c5b
    mov cx, ax                       ; 0x1c5c
    pop ax                           ; 0x1c5e
    cmp ax, cx                       ; 0x1c5f
    jg short .forward13              ; 0x1c61
    jmp near .forward25              ; 0x1c63
.forward13:
    mov ax, 1                        ; 0x1c66
    push ax                          ; 0x1c69
    call redraw_glyph_strip          ; 0x1c6a
    pop cx                           ; 0x1c6d
    mov ax, 1                        ; 0x1c6e
    push ax                          ; 0x1c71
    call wait_ticks_with_events      ; 0x1c72
    pop cx                           ; 0x1c75
    mov ax, word [bp - 2]            ; 0x1c76
    shl ax, 1                        ; 0x1c79
    mov bx, ax                       ; 0x1c7b
    mov bx, word [bx + party_char]   ; 0x1c7d
    cmp byte [bx + member_rec.item_count], 1 ; 0x1c81
    jne short .forward14             ; 0x1c86
    mov ax, 0                        ; 0x1c88
    jmp short .forward15             ; 0x1c8b
.forward14:
    mov ax, 1                        ; 0x1c8d
.forward15:
    mov cx, 4                        ; 0x1c90
    shl ax, cl                       ; 0x1c93
    mov cx, ax                       ; 0x1c95
    push cx                          ; 0x1c97
    mov al, byte [bx + 0x1a0]        ; 0x1c98
    sub ah, ah                       ; 0x1c9c
    mov cx, 5                        ; 0x1c9e
    shl ax, cl                       ; 0x1ca1
    pop cx                           ; 0x1ca3
    add cx, ax                       ; 0x1ca4
    mov ax, word [bp - 2]            ; 0x1ca6
    shl ax, 1                        ; 0x1ca9
    mov bx, ax                       ; 0x1cab
    mov ax, word [bx + party_char_ext] ; 0x1cad
    add ax, cx                       ; 0x1cb1
    push ax                          ; 0x1cb3
    lea ax, word [bp - 0x6c]         ; 0x1cb4
    push ax                          ; 0x1cb7
    call aztec_strcpy                ; 0x1cb8
    add sp, byte 4                   ; 0x1cbb
    lea ax, word [bp - 0x6c]         ; 0x1cbe
    push ax                          ; 0x1cc1
    call titlecase_string            ; 0x1cc2
    pop cx                           ; 0x1cc5
    lea ax, word [bp - 0x6c]         ; 0x1cc6
    push ax                          ; 0x1cc9
    call aztec_strlen                ; 0x1cca
    pop cx                           ; 0x1ccd
    mov word [bp - 0xa], ax          ; 0x1cce
    mov bx, ax                       ; 0x1cd1
    add bx, bp                       ; 0x1cd3
    mov byte [bx - 0x6c], 0x20       ; 0x1cd5
    lea cx, word [bp - 0x6b]         ; 0x1cd9
    add ax, cx                       ; 0x1cdc
    push ax                          ; 0x1cde
    mov ax, word [bp - 2]            ; 0x1cdf
    shl ax, 1                        ; 0x1ce2
    mov bx, ax                       ; 0x1ce4
    mov bx, word [bx + party_char]   ; 0x1ce6
    cmp byte [bx + member_rec.item_count], 1 ; 0x1cea
    jne short .forward16             ; 0x1cef
    mov ax, MSG_ADVANCES_3510        ; 0x1cf1
    jmp short .forward17             ; 0x1cf4
.forward16:
    mov ax, MSG_ADVANCE              ; 0x1cf6
.forward17:
    push ax                          ; 0x1cf9
    call load_message_string         ; 0x1cfa
    add sp, byte 4                   ; 0x1cfd
    mov ax, 0x11                     ; 0x1d00
    push ax                          ; 0x1d03
    lea ax, word [bp - 0x6c]         ; 0x1d04
    push ax                          ; 0x1d07
    call show_centered_message       ; 0x1d08
    add sp, byte 4                   ; 0x1d0b
    mov word [bp - 4], 0             ; 0x1d0e
    jmp short .forward19             ; 0x1d13
.back5:
    mov ax, 0x2c                     ; 0x1d15
    imul word [bp - 4]               ; 0x1d18
    mov si, ax                       ; 0x1d1b
    mov ax, word [bp - 2]            ; 0x1d1d
    shl ax, 1                        ; 0x1d20
    mov bx, ax                       ; 0x1d22
    mov bx, word [bx + overlay_list + 0x18] ; 0x1d24
    cmp byte [bx + si + overlay_list_rec.f_002a], 0xff ; 0x1d28
    je short .forward18              ; 0x1d2c
    mov al, byte [bx + si + 0x2a]    ; 0x1d2e
    cbw                              ; 0x1d31
    mov cx, 0xa                      ; 0x1d32
    cwd                              ; 0x1d35
    idiv cx                          ; 0x1d36
    mov word [bp - 6], ax            ; 0x1d38
    mov al, byte [bx + si + 0x2a]    ; 0x1d3b
    cbw                              ; 0x1d3e
    cwd                              ; 0x1d3f
    idiv cx                          ; 0x1d40
    mov word [bp - 8], dx            ; 0x1d42
    mov ax, 6                        ; 0x1d45
    imul word [bp - 6]               ; 0x1d48
    mov cx, word [bp - 8]            ; 0x1d4b
    shl cx, 1                        ; 0x1d4e
    add ax, cx                       ; 0x1d50
    mov bx, ax                       ; 0x1d52
    mov word [bx + cell_action_marks], 1 ; 0x1d54
.forward18:
    inc word [bp - 4]                ; 0x1d5a
.forward19:
    mov ax, word [bp - 2]            ; 0x1d5d
    shl ax, 1                        ; 0x1d60
    mov bx, ax                       ; 0x1d62
    mov bx, word [bx + overlay_list + 0x18] ; 0x1d64
    mov al, byte [bx + overlay_list_rec.f_01a1] ; 0x1d68
    sub ah, ah                       ; 0x1d6c
    cmp ax, word [bp - 4]            ; 0x1d6e
    jg short .back5                  ; 0x1d71
    mov ax, 1                        ; 0x1d73
    push ax                          ; 0x1d76
    call play_action_overlays        ; 0x1d77
    pop cx                           ; 0x1d7a
    mov word [bp - 4], 0             ; 0x1d7b
    jmp short .forward21             ; 0x1d80
.back6:
    mov ax, 0x2c                     ; 0x1d82
    imul word [bp - 4]               ; 0x1d85
    mov si, ax                       ; 0x1d88
    mov ax, word [bp - 2]            ; 0x1d8a
    shl ax, 1                        ; 0x1d8d
    mov bx, ax                       ; 0x1d8f
    mov bx, word [bx + overlay_list + 0x18] ; 0x1d91
    cmp byte [bx + si + overlay_list_rec.f_002a], 0xff ; 0x1d95
    je short .forward20              ; 0x1d99
    mov al, byte [bx + si + 0x2a]    ; 0x1d9b
    cbw                              ; 0x1d9e
    mov cx, 0xa                      ; 0x1d9f
    cwd                              ; 0x1da2
    idiv cx                          ; 0x1da3
    mov word [bp - 6], ax            ; 0x1da5
    mov al, byte [bx + si + 0x2a]    ; 0x1da8
    cbw                              ; 0x1dab
    cwd                              ; 0x1dac
    idiv cx                          ; 0x1dad
    mov word [bp - 8], dx            ; 0x1daf
    mov ax, 6                        ; 0x1db2
    imul word [bp - 6]               ; 0x1db5
    mov cx, word [bp - 8]            ; 0x1db8
    shl cx, 1                        ; 0x1dbb
    add ax, cx                       ; 0x1dbd
    mov bx, ax                       ; 0x1dbf
    mov word [bx + cell_slot_ref], 0 ; 0x1dc1
    mov ax, word [bp - 2]            ; 0x1dc7
    shl ax, 1                        ; 0x1dca
    mov bx, ax                       ; 0x1dcc
    mov bx, word [bx + overlay_list + 0x18] ; 0x1dce
    mov byte [bx + si + 0x2a], 0xff  ; 0x1dd2
.forward20:
    inc word [bp - 4]                ; 0x1dd6
.forward21:
    mov ax, word [bp - 2]            ; 0x1dd9
    shl ax, 1                        ; 0x1ddc
    mov bx, ax                       ; 0x1dde
    mov bx, word [bx + overlay_list + 0x18] ; 0x1de0
    mov al, byte [bx + overlay_list_rec.f_01a1] ; 0x1de4
    sub ah, ah                       ; 0x1de8
    cmp ax, word [bp - 4]            ; 0x1dea
    jg short .back6                  ; 0x1ded
    call run_party_screen_animation  ; 0x1def
    mov ax, word [bp - 2]            ; 0x1df2
    shl ax, 1                        ; 0x1df5
    mov bx, ax                       ; 0x1df7
    add bx, bp                       ; 0x1df9
    mov ax, word [bx - 0x1c]         ; 0x1dfb
    mov word [bp - 6], ax            ; 0x1dfe
    mov ax, word [bx - 0x1e]         ; 0x1e01
    mov word [bx - 0x1c], ax         ; 0x1e04
    mov ax, word [bp - 6]            ; 0x1e07
    mov word [bx - 0x1e], ax         ; 0x1e0a
    mov ax, 0x1a4                    ; 0x1e0d
    push ax                          ; 0x1e10
    mov ax, word [bp - 2]            ; 0x1e11
    shl ax, 1                        ; 0x1e14
    mov bx, ax                       ; 0x1e16
    push word [bx + overlay_list + 0x18] ; 0x1e18
    push word [bx + party_char]      ; 0x1e1c
    call aztec_swapmem               ; 0x1e20
    add sp, byte 6                   ; 0x1e23
    mov ax, 0xe8                     ; 0x1e26
    push ax                          ; 0x1e29
    mov ax, word [bp - 2]            ; 0x1e2a
    shl ax, 1                        ; 0x1e2d
    mov bx, ax                       ; 0x1e2f
    push word [bx + bss_848e]        ; 0x1e31
    push word [bx + party_char_ext]  ; 0x1e35
    call aztec_swapmem               ; 0x1e39
    add sp, byte 6                   ; 0x1e3c
    mov word [bp - 0xe], 0           ; 0x1e3f
    jmp short .forward24             ; 0x1e44
.back7:
    mov ax, 0x2c                     ; 0x1e46
    imul word [bp - 0xe]             ; 0x1e49
    mov si, ax                       ; 0x1e4c
    mov bx, word [party_char]        ; 0x1e4e
    mov al, byte [bx + si + member_rec.f_001f] ; 0x1e52
    sub ah, ah                       ; 0x1e55
    cmp ax, word [bp - 2]            ; 0x1e57
    jne short .forward22             ; 0x1e5a
    mov ax, word [bp - 2]            ; 0x1e5c
    dec ax                           ; 0x1e5f
    mov byte [bx + si + 0x1f], al    ; 0x1e60
    jmp short .forward23             ; 0x1e63
.forward22:
    mov ax, 0x2c                     ; 0x1e65
    imul word [bp - 0xe]             ; 0x1e68
    mov si, ax                       ; 0x1e6b
    mov bx, word [party_char]        ; 0x1e6d
    mov al, byte [bx + si + member_rec.f_001f] ; 0x1e71
    sub ah, ah                       ; 0x1e74
    mov cx, word [bp - 2]            ; 0x1e76
    dec cx                           ; 0x1e79
    cmp ax, cx                       ; 0x1e7a
    jne short .forward23             ; 0x1e7c
    mov al, byte [bp - 2]            ; 0x1e7e
    mov byte [bx + si + 0x1f], al    ; 0x1e81
.forward23:
    inc word [bp - 0xe]              ; 0x1e84
.forward24:
    mov ax, word [bp - 0xe]          ; 0x1e87
    cmp ax, word [party_char_count]  ; 0x1e8a
    jl short .back7                  ; 0x1e8e
    call setup_party_pictures        ; 0x1e90
    mov ax, word [bp - 2]            ; 0x1e93
    dec ax                           ; 0x1e96
    push ax                          ; 0x1e97
    call advance_member_cell_actions ; 0x1e98
    pop cx                           ; 0x1e9b
    call fill_row_action_slots       ; 0x1e9c
    mov ax, 0                        ; 0x1e9f
    push ax                          ; 0x1ea2
    call play_action_overlays        ; 0x1ea3
    pop cx                           ; 0x1ea6
.forward25:
    dec word [bp - 2]                ; 0x1ea7
.forward26:
    cmp word [bp - 2], byte 2        ; 0x1eaa
    jl short .return1                ; 0x1eae
    jmp near .back4                  ; 0x1eb0
.return1:
    ret                              ; 0x1eb3
