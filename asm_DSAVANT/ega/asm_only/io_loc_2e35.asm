; auto-generated
; asm only
io_loc_2e35:
    mov dx, 0x3c4                    ; 0x2e35
    mov al, 2                        ; 0x2e38
    out dx, al                       ; 0x2e3a
    inc dx                           ; 0x2e3b
    mov al, ah                       ; 0x2e3c
    out dx, al                       ; 0x2e3e
    mov bx, dseg_24fd                ; 0x2e3f
    mov di, word [cs:cseg_1be5 - IMAGE_BASE] ; 0x2e42
    mov cx, word [cs:cseg_1be3 - IMAGE_BASE] ; 0x2e47
@..io_loc_2e35.l1:
    push cx                          ; 0x2e4c
    push si                          ; 0x2e4d
    push bx                          ; 0x2e4e
    push di                          ; 0x2e4f
    mov cx, word [cs:cseg_1be1 - IMAGE_BASE] ; 0x2e50
@..io_loc_2e35.l2:
    mov ah, byte [bx]                ; 0x2e55
    inc bx                           ; 0x2e57
    mov al, 9                        ; 0x2e58
@..io_loc_2e35.l3:
    dec al                           ; 0x2e5a
    je short @..io_loc_2e35.l2       ; 0x2e5c
    shl ah, 1                        ; 0x2e5e
    jae short @..io_loc_2e35.l4      ; 0x2e60
    mov dl, byte [si]                ; 0x2e62
    mov byte [es:di], dl             ; 0x2e64
@..io_loc_2e35.l4:
    inc di                           ; 0x2e67
    inc si                           ; 0x2e68
    loop @..io_loc_2e35.l3           ; 0x2e69
    pop di                           ; 0x2e6b
    add di, byte 0x50                ; 0x2e6c
    pop bx                           ; 0x2e6f
    add bx, word [bp - 0x0002]       ; 0x2e70
    pop si                           ; 0x2e73
    add si, word [cs:cseg_1be1 - IMAGE_BASE] ; 0x2e74
    pop cx                           ; 0x2e79
    loop @..io_loc_2e35.l1           ; 0x2e7a
    ret                              ; 0x2e7c
