; auto-generated
flush_glyph_buffer:
    mov ax, 0xfffc                   ; 0x6c0a
    call $csav                  ; 0x6c0d
    cmp word [maze_message_row], byte 3 ; 0x6c10
    jle short .forward1              ; 0x6c15
    mov ax, 0                        ; 0x6c17
    push ax                          ; 0x6c1a
    call wait_for_maze_input_or_refresh ; 0x6c1b
    pop cx                           ; 0x6c1e
.forward1:
    mov bx, word [bp + 4]            ; 0x6c1f
    cmp byte [bx], 0                 ; 0x6c22
    jne short .forward2              ; 0x6c25
    inc word [maze_message_row]      ; 0x6c27
    ret                              ; 0x6c2b
.forward2:
    mov ax, 2                        ; 0x6c2c
    push ax                          ; 0x6c2f
    push bx                          ; 0x6c30
    call measure_text_width          ; 0x6c31
    add sp, byte 4                   ; 0x6c34
    inc ax                           ; 0x6c37
    mov cx, 2                        ; 0x6c38
    cwd                              ; 0x6c3b
    idiv cx                          ; 0x6c3c
    mov cx, ax                       ; 0x6c3e
    mov ax, 0xa0                     ; 0x6c40
    sub ax, cx                       ; 0x6c43
    mov word [bp - 2], ax            ; 0x6c45
    push word [bp + 4]               ; 0x6c48
    call strlen                ; 0x6c4b
    pop cx                           ; 0x6c4e
    dec ax                           ; 0x6c4f
    mov word [bp - 4], ax            ; 0x6c50
    mov bx, word [bp + 4]            ; 0x6c53
    mov si, ax                       ; 0x6c56
    mov al, byte [bx + si]           ; 0x6c58
    sub ah, ah                       ; 0x6c5a
    jmp short .forward3              ; 0x6c5c
.back1:
    mov bx, word [bp + 4]            ; 0x6c5e
    mov si, word [bp - 4]            ; 0x6c61
    mov byte [bx + si], 0            ; 0x6c64
    mov word [bp - 2], 0x44          ; 0x6c67
    jmp short .forward4              ; 0x6c6c
.back2:
    mov bx, word [bp + 4]            ; 0x6c6e
    mov si, word [bp - 4]            ; 0x6c71
    mov byte [bx + si], 0            ; 0x6c74
    mov ax, word [maze_message_previous_x] ; 0x6c77
    mov word [bp - 2], ax            ; 0x6c7a
    jmp short .forward4              ; 0x6c7d
.forward3:
    cmp ax, strict word 0x24         ; 0x6c7f
    je short .back1                  ; 0x6c82
    cmp ax, strict word 0x5e         ; 0x6c84
    je short .back2                  ; 0x6c87
.forward4:
    mov ax, 0xc                      ; 0x6c89
    imul word [maze_message_row]     ; 0x6c8c
    add ax, 0x92                     ; 0x6c90
    push ax                          ; 0x6c93
    push word [bp - 2]               ; 0x6c94
    call call_set_text_pos           ; 0x6c97
    add sp, byte 4                   ; 0x6c9a
    mov ax, 0                        ; 0x6c9d
    push ax                          ; 0x6ca0
    mov ax, 0x55                     ; 0x6ca1
    push ax                          ; 0x6ca4
    call call_set_text_color         ; 0x6ca5
    add sp, byte 4                   ; 0x6ca8
    mov ax, 2                        ; 0x6cab
    push ax                          ; 0x6cae
    push word [bp + 4]               ; 0x6caf
    call draw_text_glyphs            ; 0x6cb2
    add sp, byte 4                   ; 0x6cb5
    mov bx, word [bp + 4]            ; 0x6cb8
    mov byte [bx], 0                 ; 0x6cbb
    mov ax, word [bp - 2]            ; 0x6cbe
    mov word [maze_message_previous_x], ax ; 0x6cc1
    inc word [maze_message_row]      ; 0x6cc4
    ret                              ; 0x6cc8
