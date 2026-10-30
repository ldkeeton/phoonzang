; auto-generated
save_cursor_background_plane:
    mov si, word [cs:cursor_video_offset - IMAGE_BASE] ; 0x2f46
    add di, word [cs:cursor_background_buffer - IMAGE_BASE] ; 0x2f4b
    mov cx, word [cs:cursor_height_rows - IMAGE_BASE] ; 0x2f50
    mov dx, 0x3ce                    ; 0x2f55
    mov al, 4                        ; 0x2f58
    out dx, al                       ; 0x2f5a
    inc dx                           ; 0x2f5b
    mov al, ah                       ; 0x2f5c
    out dx, al                       ; 0x2f5e
.back1:
    push cx                          ; 0x2f5f
    push si                          ; 0x2f60
    mov cx, word [cs:cursor_save_row_bytes - IMAGE_BASE] ; 0x2f61
    rep movsb                        ; 0x2f66
    pop si                           ; 0x2f68
    add si, byte 0x50                ; 0x2f69
    pop cx                           ; 0x2f6c
    loop .back1                      ; 0x2f6d
    ret                              ; 0x2f6f
