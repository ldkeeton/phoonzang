; auto-generated
leaf_loc_TTKL:
    push bx                          ; 0x3245
    cmp al, 0xff                     ; 0x3246
    jne short loc_JRJS               ; 0x3248
    xor cx, cx                       ; 0x324a
    xor ax, ax                       ; 0x324c
    xor dx, dx                       ; 0x324e
    pop bx                           ; 0x3250
    ret                              ; 0x3251
