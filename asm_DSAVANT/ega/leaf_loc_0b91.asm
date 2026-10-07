leaf_loc_0b91:
    cmp byte [cs:data_0a48], 0       ; 0x0b91
    je short @..leaf_loc_0b91.l2     ; 0x0b97
    mov ax, word [cs:data_01e5]      ; 0x0b99
    mov es, ax                       ; 0x0b9d
    mov ax, cs                       ; 0x0b9f
    mov ds, ax                       ; 0x0ba1
    mov ax, word [cs:data_1bdb]      ; 0x0ba3
    mov bx, 0x140                    ; 0x0ba7
    mul bx                           ; 0x0baa
    add ax, word [cs:data_1bd9]      ; 0x0bac
    mov di, ax                       ; 0x0bb1
    mov si, word [cs:data_1bd7]      ; 0x0bb3
    mov cx, word [cs:data_1be3]      ; 0x0bb8
@..leaf_loc_0b91.l1:
    push cx                          ; 0x0bbd
    push di                          ; 0x0bbe
    mov cx, word [cs:data_1bdd]      ; 0x0bbf
    rep movsb                        ; 0x0bc4
    pop di                           ; 0x0bc6
    add di, strict word 0x140        ; 0x0bc7
    pop cx                           ; 0x0bcb
    loop @..leaf_loc_0b91.l1         ; 0x0bcc
@..leaf_loc_0b91.l2:
    ret                              ; 0x0bce
