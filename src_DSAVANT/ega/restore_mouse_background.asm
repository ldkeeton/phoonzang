; auto-generated
restore_mouse_background:
    cmp byte [cs:mouse_overlaps_area - IMAGE_BASE], 0 ; 0x0b91
    je short .return1                ; 0x0b97
    mov ax, word [cs:screen_buf_seg - IMAGE_BASE] ; 0x0b99
    mov es, ax                       ; 0x0b9d
    mov ax, cs                       ; 0x0b9f
    mov ds, ax                       ; 0x0ba1
    mov ax, word [cs:mouse_drawn_y - IMAGE_BASE] ; 0x0ba3
    mov bx, 0x140                    ; 0x0ba7
    mul bx                           ; 0x0baa
    add ax, word [cs:mouse_drawn_x - IMAGE_BASE] ; 0x0bac
    mov di, ax                       ; 0x0bb1
    mov si, word [cs:cursor_background_buffer - IMAGE_BASE] ; 0x0bb3
    mov cx, word [cs:mouse_drawn_height - IMAGE_BASE] ; 0x0bb8
.back1:
    push cx                          ; 0x0bbd
    push di                          ; 0x0bbe
    mov cx, word [cs:cursor_copy_width - IMAGE_BASE] ; 0x0bbf
    rep movsb                        ; 0x0bc4
    pop di                           ; 0x0bc6
    add di, strict word 0x140        ; 0x0bc7
    pop cx                           ; 0x0bcb
    loop .back1                      ; 0x0bcc
.return1:
    ret                              ; 0x0bce
