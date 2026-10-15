; auto-generated
loc_SOGS:
    push bp                          ; 0x0d12
    mov bp, sp                       ; 0x0d13
    mov ax, word [bp + 0x4]          ; 0x0d15
    inc ax                           ; 0x0d18
    mov cx, 8                        ; 0x0d19
    cwd                              ; 0x0d1c
    idiv cx                          ; 0x0d1d
    mov word [bp + 0x4], dx          ; 0x0d1f
    shl dx, 1                        ; 0x0d22
    mov bx, dx                       ; 0x0d24
    push word [bx + 0xa4]            ; 0x0d26
    mov ax, 0x29                     ; 0x0d2a
    push ax                          ; 0x0d2d
    mov ax, 0x12                     ; 0x0d2e
    push ax                          ; 0x0d31
    call loc_JSPT                    ; 0x0d32
    add sp, byte 6                   ; 0x0d35
    mov ax, word [bp + 0x4]          ; 0x0d38
    mov sp, bp                       ; 0x0d3b
    pop bp                           ; 0x0d3d
    ret                              ; 0x0d3e
