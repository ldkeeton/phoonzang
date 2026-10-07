math_loc_0d3f:
    push bp                          ; 0x0d3f
    mov bp, sp                       ; 0x0d40
    mov ax, word [bp + 0x8]          ; 0x0d42
    inc ax                           ; 0x0d45
    mov cx, data_0002                ; 0x0d46
    cwd                              ; 0x0d49
    idiv cx                          ; 0x0d4a
    mov word [bp + 0x8], dx          ; 0x0d4c
    shl dx, 1                        ; 0x0d4f
    mov bx, dx                       ; 0x0d51
    push word [bx + 0x154]           ; 0x0d53
    push word [bp + 0x6]             ; 0x0d57
    push word [bp + 0x4]             ; 0x0d5a
    call loc_040f                    ; 0x0d5d
    add sp, byte 6                   ; 0x0d60
    mov ax, word [bp + 0x8]          ; 0x0d63
    mov sp, bp                       ; 0x0d66
    pop bp                           ; 0x0d68
    ret                              ; 0x0d69
