; auto-generated
restore_cursor_background_plane:
    mov di, word [cs:mouse_drawn_video_offset - IMAGE_BASE] ; 0x189f
    mov cx, word [cs:mouse_drawn_height - IMAGE_BASE] ; 0x18a4
.back1:
    push cx                          ; 0x18a9
    push si                          ; 0x18aa
    push di                          ; 0x18ab
    mov cx, word [cs:mouse_drawn_row_bytes - IMAGE_BASE] ; 0x18ac
    rep movsb                        ; 0x18b1
    pop di                           ; 0x18b3
    add di, byte 0x50                ; 0x18b4
    pop si                           ; 0x18b7
    add si, word [cs:mouse_drawn_row_bytes - IMAGE_BASE] ; 0x18b8
    pop cx                           ; 0x18bd
    loop .back1                      ; 0x18be
    ret                              ; 0x18c0
