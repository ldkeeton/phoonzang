io_loc_0c97:
    push ax                          ; 0x0c97
    push ds                          ; 0x0c98
    push dx                          ; 0x0c99
    mov al, 0x36                     ; 0x0c9a
    out 0x43, al                     ; 0x0c9c
    call leaf_loc_0610               ; 0x0c9e
    mov ax, 0                        ; 0x0ca1
    out 0x40, al                     ; 0x0ca4
    call leaf_loc_0610               ; 0x0ca6
    mov al, ah                       ; 0x0ca9
    out 0x40, al                     ; 0x0cab
    mov al, byte [cs:data_0b8f]      ; 0x0cad
    out 0x21, al                     ; 0x0cb1
    mov ds, word [cs:data_0c12]      ; 0x0cb3
    mov dx, word [cs:data_0c10]      ; 0x0cb8
    call string_loc_0a2a             ; 0x0cbd
    mov byte [cs:data_0421], 0       ; 0x0cc0
    pop dx                           ; 0x0cc6
    pop ds                           ; 0x0cc7
    pop ax                           ; 0x0cc8
    ret                              ; 0x0cc9
