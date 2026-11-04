; auto-generated
toggle_yes_no_choice:
    push bp                          ; 0x0d3f
    mov bp, sp                       ; 0x0d40
    mov ax, word [bp + 8]            ; 0x0d42
    inc ax                           ; 0x0d45
    mov cx, 2                        ; 0x0d46
    cwd                              ; 0x0d49
    idiv cx                          ; 0x0d4a
    mov word [bp + 8], dx            ; 0x0d4c
    shl dx, 1                        ; 0x0d4f
    mov bx, dx                       ; 0x0d51
    push word [bx + no_yes_label_table] ; 0x0d53
    push word [bp + 6]               ; 0x0d57
    push word [bp + 4]               ; 0x0d5a
    call put_text_at                 ; 0x0d5d
    add sp, byte 6                   ; 0x0d60
    mov ax, word [bp + 8]            ; 0x0d63
    mov sp, bp                       ; 0x0d66
    pop bp                           ; 0x0d68
    ret                              ; 0x0d69
