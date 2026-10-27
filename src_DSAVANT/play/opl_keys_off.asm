; auto-generated
opl_keys_off:
    push bx                          ; 0x01e6
    push cx                          ; 0x01e7
    push dx                          ; 0x01e8
    mov cl, 0                        ; 0x01e9
.back1:
    mov ah, 0xb1                     ; 0x01eb
    cmp byte [cs:play_device - IMAGE_BASE], 1 ; 0x01ed
    je short .forward1               ; 0x01f3
    cmp byte [cs:play_device - IMAGE_BASE], 4 ; 0x01f5
    je short .forward1               ; 0x01fb
    dec ah                           ; 0x01fd
.forward1:
    add ah, cl                       ; 0x01ff
    mov bl, ah                       ; 0x0201
    xor bh, bh                       ; 0x0203
    mov al, byte [cs:bx + opl_register_shadow - IMAGE_BASE] ; 0x0205
    and al, 0xdf                     ; 0x020a
    call opl_write                   ; 0x020c
    inc cl                           ; 0x020f
    cmp cl, byte [cs:opl_voice_count - IMAGE_BASE] ; 0x0211
    jbe short .back1                 ; 0x0216
    mov dx, 0x388                    ; 0x0218
    mov al, 0x40                     ; 0x021b
    out dx, al                       ; 0x021d
    pop dx                           ; 0x021e
    pop cx                           ; 0x021f
    pop bx                           ; 0x0220
    ret                              ; 0x0221
