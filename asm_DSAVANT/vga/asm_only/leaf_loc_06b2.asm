; auto-generated
; asm only
leaf_loc_06b2:
    push bp                          ; 0x06b2
    mov bp, sp                       ; 0x06b3
    push ds                          ; 0x06b5
    push es                          ; 0x06b6
    mov ax, ds                       ; 0x06b7
    mov es, ax                       ; 0x06b9
    mov ax, word [cs:cseg_01e5 - IMAGE_BASE] ; 0x06bb
    mov ds, ax                       ; 0x06bf
    mov ax, word [bp + 0xe]          ; 0x06c1
    mov bx, 0x140                    ; 0x06c4
    mul bx                           ; 0x06c7
    add ax, word [bp + 0xc]          ; 0x06c9
    mov bx, ax                       ; 0x06cc
    mov ax, word [bp + 0x10]         ; 0x06ce
    mov byte [bx], al                ; 0x06d1
    pop es                           ; 0x06d3
    pop ds                           ; 0x06d4
    mov sp, bp                       ; 0x06d5
    pop bp                           ; 0x06d7
    ret                              ; 0x06d8
