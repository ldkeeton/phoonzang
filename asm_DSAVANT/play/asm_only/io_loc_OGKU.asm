; auto-generated
; asm only
io_loc_OGKU:
    push ax                          ; 0x0c97
    push ds                          ; 0x0c98
    push dx                          ; 0x0c99
    mov al, 0x36                     ; 0x0c9a
    out 0x43, al                     ; 0x0c9c
    call leaf_loc_KROT               ; 0x0c9e
    mov ax, 0                        ; 0x0ca1
    out 0x40, al                     ; 0x0ca4
    call leaf_loc_KROT               ; 0x0ca6
    mov al, ah                       ; 0x0ca9
    out 0x40, al                     ; 0x0cab
    mov al, byte [cs:cseg_0b8f - IMAGE_BASE] ; 0x0cad
    out 0x21, al                     ; 0x0cb1
    mov ds, word [cs:cseg_0c12 - IMAGE_BASE] ; 0x0cb3
    mov dx, word [cs:cseg_0c10 - IMAGE_BASE] ; 0x0cb8
    call string_loc_OPLR             ; 0x0cbd
    mov byte [cs:cseg_0421 - IMAGE_BASE], 0 ; 0x0cc0
    pop dx                           ; 0x0cc6
    pop ds                           ; 0x0cc7
    pop ax                           ; 0x0cc8
    ret                              ; 0x0cc9
