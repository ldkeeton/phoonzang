; auto-generated
leaf_loc_VQOG:
    push bx                          ; 0x01e6
    push cx                          ; 0x01e7
    push dx                          ; 0x01e8
    mov cl, 0                        ; 0x01e9
loc_JNQH:
    mov ah, 0xb1                     ; 0x01eb
    cmp byte [cs:play_device - IMAGE_BASE], 1 ; 0x01ed
    je short loc_GLGJ                ; 0x01f3
    cmp byte [cs:play_device - IMAGE_BASE], 4 ; 0x01f5
    je short loc_GLGJ                ; 0x01fb
    dec ah                           ; 0x01fd
loc_GLGJ:
    add ah, cl                       ; 0x01ff
    mov bl, ah                       ; 0x0201
