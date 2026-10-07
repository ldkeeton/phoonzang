math_loc_0b30:
    mov ax, 0                        ; 0x0b30
    db 0xe8, 0xd5, 0xe8 ; call 0xf40b
    mov ax, 0                        ; 0x0b36
    push ax                          ; 0x0b39
    push word [bp + 0xa]             ; 0x0b3a
    call 0xe823                      ; 0x0b3d
    add sp, byte 4                   ; 0x0b40
    push word [bp + 0x8]             ; 0x0b43
    push word [bp + 0x4]             ; 0x0b46
    call 0xfa90                      ; 0x0b49
    pop cx                           ; 0x0b4c
    mov cx, 6                        ; 0x0b4d
    imul cx                          ; 0x0b50
    mov cx, data_0002                ; 0x0b52
    cwd                              ; 0x0b55
    idiv cx                          ; 0x0b56
    mov cx, ax                       ; 0x0b58
    mov ax, word [bp + 0x6]          ; 0x0b5a
    sub ax, cx                       ; 0x0b5d
    push ax                          ; 0x0b5f
    call 0xe809                      ; 0x0b60
    add sp, byte 4                   ; 0x0b63
    mov ax, 0                        ; 0x0b66
    push ax                          ; 0x0b69
    push word [bp + 0x4]             ; 0x0b6a
    call 0xe84e                      ; 0x0b6d
    add sp, byte 4                   ; 0x0b70
    ret                              ; 0x0b73
