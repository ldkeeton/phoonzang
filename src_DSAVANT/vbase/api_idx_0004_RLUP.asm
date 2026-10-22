; auto-generated
api_idx_0004_RLUP:
    mov ax, 0xfffc                   ; 0x6d1f
    call aztec_csav                  ; 0x6d22
    cmp word [bss_a4a6], byte 3      ; 0x6d25
    jle short @..api_idx_0004_RLUP.l1 ; 0x6d2a
    call api_idx_0004_MIQG           ; 0x6d2c
@..api_idx_0004_RLUP.l1:
    mov bx, word [bp + 0x4]          ; 0x6d2f
    cmp byte [bx], 0                 ; 0x6d32
    jne short @..api_idx_0004_RLUP.l2 ; 0x6d35
    inc word [bss_a4a6]              ; 0x6d37
    ret                              ; 0x6d3b
@..api_idx_0004_RLUP.l2:
    mov ax, 2                        ; 0x6d3c
    push ax                          ; 0x6d3f
    push bx                          ; 0x6d40
    call ds_loc_JJGM                 ; 0x6d41
    add sp, byte 4                   ; 0x6d44
    inc ax                           ; 0x6d47
    mov cx, 2                        ; 0x6d48
    cwd                              ; 0x6d4b
    idiv cx                          ; 0x6d4c
    mov cx, ax                       ; 0x6d4e
    mov ax, 0xa0                     ; 0x6d50
    sub ax, cx                       ; 0x6d53
    mov word [bp - 0x0002], ax       ; 0x6d55
    push word [bp + 0x4]             ; 0x6d58
    call aztec_strlen                ; 0x6d5b
    pop cx                           ; 0x6d5e
    dec ax                           ; 0x6d5f
    mov word [bp - 0x0004], ax       ; 0x6d60
    mov bx, word [bp + 0x4]          ; 0x6d63
    mov si, ax                       ; 0x6d66
    mov al, byte [bx + si]           ; 0x6d68
    sub ah, ah                       ; 0x6d6a
    jmp short @..api_idx_0004_RLUP.l5 ; 0x6d6c
@..api_idx_0004_RLUP.l3:
    mov bx, word [bp + 0x4]          ; 0x6d6e
    mov si, word [bp - 0x0004]       ; 0x6d71
    mov byte [bx + si], 0            ; 0x6d74
    mov word [bp - 0x0002], 0xc      ; 0x6d77
    jmp short @..api_idx_0004_RLUP.l6 ; 0x6d7c
@..api_idx_0004_RLUP.l4:
    mov bx, word [bp + 0x4]          ; 0x6d7e
    mov si, word [bp - 0x0004]       ; 0x6d81
    mov byte [bx + si], 0            ; 0x6d84
    mov ax, word [bss_a4a8]          ; 0x6d87
    mov word [bp - 0x0002], ax       ; 0x6d8a
    jmp short @..api_idx_0004_RLUP.l6 ; 0x6d8d
@..api_idx_0004_RLUP.l5:
    cmp ax, strict word 0x24         ; 0x6d8f
    je short @..api_idx_0004_RLUP.l3 ; 0x6d92
    cmp ax, strict word 0x5e         ; 0x6d94
    je short @..api_idx_0004_RLUP.l4 ; 0x6d97
@..api_idx_0004_RLUP.l6:
    mov ax, 0xc                      ; 0x6d99
    imul word [bss_a4a6]             ; 0x6d9c
    add ax, 0x92                     ; 0x6da0
    push ax                          ; 0x6da3
    push word [bp - 0x0002]          ; 0x6da4
    call gfx_set_text_pos            ; 0x6da7
    add sp, byte 4                   ; 0x6daa
    mov ax, 0                        ; 0x6dad
    push ax                          ; 0x6db0
    mov ax, 0x55                     ; 0x6db1
    push ax                          ; 0x6db4
    call gfx_set_text_color          ; 0x6db5
    add sp, byte 4                   ; 0x6db8
    mov ax, 2                        ; 0x6dbb
    push ax                          ; 0x6dbe
    push word [bp + 0x4]             ; 0x6dbf
    call draw_string                 ; 0x6dc2
    add sp, byte 4                   ; 0x6dc5
    mov bx, word [bp + 0x4]          ; 0x6dc8
    mov byte [bx], 0                 ; 0x6dcb
    mov ax, word [bp - 0x0002]       ; 0x6dce
    mov word [bss_a4a8], ax          ; 0x6dd1
    inc word [bss_a4a6]              ; 0x6dd4
    ret                              ; 0x6dd8
