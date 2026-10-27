; auto-generated
opl_channel_operators:
    push ax                          ; 0x12f1
    push bx                          ; 0x12f2
    xor ah, ah                       ; 0x12f3
    mov bx, opl_operator_map - IMAGE_BASE ; 0x12f5
    shl ax, 1                        ; 0x12f8
    add bx, ax                       ; 0x12fa
    mov dx, word [cs:bx]             ; 0x12fc
    pop bx                           ; 0x12ff
    pop ax                           ; 0x1300
    ret                              ; 0x1301
