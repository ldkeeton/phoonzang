; auto-generated
leaf_loc_2d08:
    push bp                          ; 0x2d08
    mov bp, sp                       ; 0x2d09
    sub sp, byte 8                   ; 0x2d0b
    push ds                          ; 0x2d0e
    push es                          ; 0x2d0f
    push di                          ; 0x2d10
    push si                          ; 0x2d11
    mov ax, ds                       ; 0x2d12
    mov es, ax                       ; 0x2d14
    lds si, word [cs:cseg_01f7 - IMAGE_BASE] ; 0x2d16
    mov di, word [bp + 0xc]          ; 0x2d1b
    mov cx, 0x300                    ; 0x2d1e
    rep movsb                        ; 0x2d21
    pop si                           ; 0x2d23
    pop di                           ; 0x2d24
    pop es                           ; 0x2d25
    pop ds                           ; 0x2d26
    mov sp, bp                       ; 0x2d27
    pop bp                           ; 0x2d29
    ret                              ; 0x2d2a

    times 65 db 0

