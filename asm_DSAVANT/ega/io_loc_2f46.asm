io_loc_2f46:
    mov si, word [cs:data_1bf7]      ; 0x2f46
    add di, word [cs:data_1bd7]      ; 0x2f4b
    mov cx, word [cs:data_1bf5]      ; 0x2f50
    mov dx, 0x3ce                    ; 0x2f55
    mov al, 4                        ; 0x2f58
    out dx, al                       ; 0x2f5a
    inc dx                           ; 0x2f5b
    mov al, ah                       ; 0x2f5c
    out dx, al                       ; 0x2f5e
@..io_loc_2f46.l1:
    push cx                          ; 0x2f5f
    push si                          ; 0x2f60
    mov cx, word [cs:data_1bf3]      ; 0x2f61
    rep movsb                        ; 0x2f66
    pop si                           ; 0x2f68
    add si, byte 0x50                ; 0x2f69
    pop cx                           ; 0x2f6c
    loop @..io_loc_2f46.l1           ; 0x2f6d
    ret                              ; 0x2f6f
