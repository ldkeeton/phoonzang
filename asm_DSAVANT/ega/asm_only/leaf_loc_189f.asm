; auto-generated
; asm only
leaf_loc_189f:
    mov di, word [cs:cseg_1be5 - IMAGE_BASE] ; 0x189f
    mov cx, word [cs:cseg_1be3 - IMAGE_BASE] ; 0x18a4
@..leaf_loc_189f.l1:
    push cx                          ; 0x18a9
    push si                          ; 0x18aa
    push di                          ; 0x18ab
    mov cx, word [cs:cseg_1be1 - IMAGE_BASE] ; 0x18ac
    rep movsb                        ; 0x18b1
    pop di                           ; 0x18b3
    add di, byte 0x50                ; 0x18b4
    pop si                           ; 0x18b7
    add si, word [cs:cseg_1be1 - IMAGE_BASE] ; 0x18b8
    pop cx                           ; 0x18bd
    loop @..leaf_loc_189f.l1         ; 0x18be
    ret                              ; 0x18c0
