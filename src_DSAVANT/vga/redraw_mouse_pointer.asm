; auto-generated
redraw_mouse_pointer:
    cmp byte [cs:cseg_0515 - IMAGE_BASE], 0 ; 0x067f
    je short .return1                ; 0x0685
    mov ax, word [cs:screen_buf_seg - IMAGE_BASE] ; 0x0687
    mov es, ax                       ; 0x068b
    mov ax, cs                       ; 0x068d
    mov ds, ax                       ; 0x068f
    mov di, word [cs:cseg_14bc - IMAGE_BASE] ; 0x0691
    mov si, word [cs:cseg_14b6 - IMAGE_BASE] ; 0x0696
    mov cx, word [cs:cseg_14ba - IMAGE_BASE] ; 0x069b
.back1:
    push cx                          ; 0x06a0
    push di                          ; 0x06a1
    mov cx, word [cs:cseg_14b8 - IMAGE_BASE] ; 0x06a2
    rep movsb                        ; 0x06a7
    pop di                           ; 0x06a9
    add di, strict word 0x140        ; 0x06aa
    pop cx                           ; 0x06ae
    loop .back1                      ; 0x06af
.return1:
    ret                              ; 0x06b1
