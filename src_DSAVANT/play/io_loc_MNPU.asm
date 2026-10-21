; auto-generated
io_loc_MNPU:
    xor bh, bh                       ; 0x0203
    mov al, byte [cs:bx + cseg_1429 - IMAGE_BASE] ; 0x0205
    and al, 0xdf                     ; 0x020a
    call opl_write                   ; 0x020c
    inc cl                           ; 0x020f
    cmp cl, byte [cs:opl_voice_count - IMAGE_BASE] ; 0x0211
    jbe short loc_JNQH               ; 0x0216
    mov dx, 0x388                    ; 0x0218
    mov al, 0x40                     ; 0x021b
    out dx, al                       ; 0x021d
    pop dx                           ; 0x021e
    pop cx                           ; 0x021f
    pop bx                           ; 0x0220
    ret                              ; 0x0221
