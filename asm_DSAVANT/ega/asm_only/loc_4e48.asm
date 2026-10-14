; auto-generated
; asm only
loc_4e48:
    push bp                          ; 0x4e48
    mov bp, sp                       ; 0x4e49
    push ds                          ; 0x4e4b
    push es                          ; 0x4e4c
    push si                          ; 0x4e4d
    push di                          ; 0x4e4e
    mov ax, ds                       ; 0x4e4f
    mov es, ax                       ; 0x4e51
    push word [bp + 0xc]             ; 0x4e53
    call far [cs:cseg_0222 - IMAGE_BASE] ; 0x4e56
    pop cx                           ; 0x4e5b
    pop di                           ; 0x4e5c
    pop si                           ; 0x4e5d
    pop es                           ; 0x4e5e
    pop ds                           ; 0x4e5f
    mov sp, bp                       ; 0x4e60
    pop bp                           ; 0x4e62
    ret                              ; 0x4e63
