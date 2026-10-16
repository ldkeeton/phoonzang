; auto-generated
loc_MUTI:
    mov ax, 0                        ; 0x1c36
    call aztec_csav                  ; 0x1c39
    mov ax, 6                        ; 0x1c3c
    imul word [bp + 0x4]             ; 0x1c3f
    mov bx, ax                       ; 0x1c42
    mov al, byte [bx + 0x621]        ; 0x1c44
    sub ah, ah                       ; 0x1c48
    mov cx, 3                        ; 0x1c4a
    imul cx                          ; 0x1c4d
    push ax                          ; 0x1c4f
    mov ax, word [bp + 0x6]          ; 0x1c50
    imul cx                          ; 0x1c53
    mov cx, ax                       ; 0x1c55
    pop ax                           ; 0x1c57
    add ax, cx                       ; 0x1c58
    add ax, strict word 0xfffa       ; 0x1c5a
    ret                              ; 0x1c5d
