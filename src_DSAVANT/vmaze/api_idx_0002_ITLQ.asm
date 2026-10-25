; auto-generated
api_idx_0002_ITLQ:
    mov ax, 0xfffe                   ; 0x0e5d
    call aztec_csav                  ; 0x0e60
    mov ax, word [game_time]         ; 0x0e63
    mov dx, word [game_time_hi]      ; 0x0e66
    mov cx, 0x5a0                    ; 0x0e6a
    mov bx, 0                        ; 0x0e6d
    call aztec_lrm                   ; 0x0e70
    mov cx, 0x3c                     ; 0x0e73
    mov bx, 0                        ; 0x0e76
    call aztec_ldv                   ; 0x0e79
    mov word [bp - 0x0002], ax       ; 0x0e7c
    mov cx, 3                        ; 0x0e7f
    imul cx                          ; 0x0e82
    mov bx, ax                       ; 0x0e84
    mov al, byte [bx + 0xc6]         ; 0x0e86
    sub ah, ah                       ; 0x0e8a
    push ax                          ; 0x0e8c
    mov al, byte [bx + 0xc5]         ; 0x0e8d
    sub ah, ah                       ; 0x0e91
    push ax                          ; 0x0e93
    mov al, byte [bx + 0xc4]         ; 0x0e94
    sub ah, ah                       ; 0x0e98
    push ax                          ; 0x0e9a
    mov ax, 0xff                     ; 0x0e9b
    push ax                          ; 0x0e9e
    call gfx_set_rgb                 ; 0x0e9f
    add sp, byte 8                   ; 0x0ea2
    ret                              ; 0x0ea5
