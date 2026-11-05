; auto-generated
flush_glyph_buffer:
    mov ax, 0xfffc                   ; 0x0a6a
    call aztec_csav                  ; 0x0a6d
    cmp word [maze_message_row], byte 3 ; 0x0a70
    jle short .forward1              ; 0x0a75
    mov ax, 0                        ; 0x0a77
    push ax                          ; 0x0a7a
    call show_treasure_area          ; 0x0a7b
    pop cx                           ; 0x0a7e
.forward1:
    mov bx, word [bp + 4]            ; 0x0a7f
    cmp byte [bx], 0                 ; 0x0a82
    jne short .forward2              ; 0x0a85
    inc word [maze_message_row]      ; 0x0a87
    ret                              ; 0x0a8b
.forward2:
    mov ax, 2                        ; 0x0a8c
    push ax                          ; 0x0a8f
    push bx                          ; 0x0a90
    call measure_text_width          ; 0x0a91
    add sp, byte 4                   ; 0x0a94
    inc ax                           ; 0x0a97
    mov cx, 2                        ; 0x0a98
    cwd                              ; 0x0a9b
    idiv cx                          ; 0x0a9c
    mov cx, ax                       ; 0x0a9e
    mov ax, 0xa0                     ; 0x0aa0
    sub ax, cx                       ; 0x0aa3
    mov word [bp - 2], ax            ; 0x0aa5
    push word [bp + 4]               ; 0x0aa8
    call aztec_strlen                ; 0x0aab
    pop cx                           ; 0x0aae
    dec ax                           ; 0x0aaf
    mov word [bp - 4], ax            ; 0x0ab0
    mov bx, word [bp + 4]            ; 0x0ab3
    mov si, ax                       ; 0x0ab6
    mov al, byte [bx + si]           ; 0x0ab8
    sub ah, ah                       ; 0x0aba
    jmp short .forward3              ; 0x0abc
.back1:
    mov bx, word [bp + 4]            ; 0x0abe
    mov si, word [bp - 4]            ; 0x0ac1
    mov byte [bx + si], 0            ; 0x0ac4
    mov word [bp - 2], 0x44          ; 0x0ac7
    jmp short .forward4              ; 0x0acc
.back2:
    mov bx, word [bp + 4]            ; 0x0ace
    mov si, word [bp - 4]            ; 0x0ad1
    mov byte [bx + si], 0            ; 0x0ad4
    mov ax, word [maze_message_previous_x] ; 0x0ad7
    mov word [bp - 2], ax            ; 0x0ada
    jmp short .forward4              ; 0x0add
.forward3:
    cmp ax, strict word 0x24         ; 0x0adf
    je short .back1                  ; 0x0ae2
    cmp ax, strict word 0x5e         ; 0x0ae4
    je short .back2                  ; 0x0ae7
.forward4:
    mov ax, 0xc                      ; 0x0ae9
    imul word [maze_message_row]     ; 0x0aec
    add ax, 0x92                     ; 0x0af0
    push ax                          ; 0x0af3
    push word [bp - 2]               ; 0x0af4
    call call_set_text_pos           ; 0x0af7
    add sp, byte 4                   ; 0x0afa
    mov ax, 0                        ; 0x0afd
    push ax                          ; 0x0b00
    mov ax, 0x55                     ; 0x0b01
    push ax                          ; 0x0b04
    call call_set_text_color         ; 0x0b05
    add sp, byte 4                   ; 0x0b08
    mov ax, 2                        ; 0x0b0b
    push ax                          ; 0x0b0e
    push word [bp + 4]               ; 0x0b0f
    call draw_text_glyphs            ; 0x0b12
    add sp, byte 4                   ; 0x0b15
    mov bx, word [bp + 4]            ; 0x0b18
    mov byte [bx], 0                 ; 0x0b1b
    mov ax, word [bp - 2]            ; 0x0b1e
    mov word [maze_message_previous_x], ax ; 0x0b21
    inc word [maze_message_row]      ; 0x0b24
    ret                              ; 0x0b28
