; auto-generated
; asm only
loc_4e64:
    push bp                          ; 0x4e64
    mov bp, sp                       ; 0x4e65
    sub sp, byte 0x0a                ; 0x4e67
    push ds                          ; 0x4e6a
    push es                          ; 0x4e6b
    push si                          ; 0x4e6c
    push di                          ; 0x4e6d
    mov ax, ds                       ; 0x4e6e
    mov es, ax                       ; 0x4e70
    xor ax, ax                       ; 0x4e72
    push ax                          ; 0x4e74
    push ax                          ; 0x4e75
    push ax                          ; 0x4e76
    push ax                          ; 0x4e77
    push ax                          ; 0x4e78
    push ax                          ; 0x4e79
    push ax                          ; 0x4e7a
    call far [cs:cseg_011a - IMAGE_BASE] ; 0x4e7b
    add sp, byte 0x0e                ; 0x4e80
    pop di                           ; 0x4e83
    pop si                           ; 0x4e84
    pop es                           ; 0x4e85
    pop ds                           ; 0x4e86
    mov sp, bp                       ; 0x4e87
    pop bp                           ; 0x4e89
    ret                              ; 0x4e8a
cseg_4e8b:

    times 34 db 0

