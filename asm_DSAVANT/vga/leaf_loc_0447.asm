; auto-generated
leaf_loc_0447:
    push bp                          ; 0x0447
    mov bp, sp                       ; 0x0448
    mov ax, word [bp + 0xc]          ; 0x044a
    mov word [cs:graphics_loc_0293 - IMAGE_BASE], ax ; 0x044d
    mov ax, word [bp + 0xe]          ; 0x0451
    mov word [cs:cseg_0291 - IMAGE_BASE], ax ; 0x0454
    mov sp, bp                       ; 0x0458
    pop bp                           ; 0x045a
    ret                              ; 0x045b
