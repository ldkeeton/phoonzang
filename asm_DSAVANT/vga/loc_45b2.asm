; auto-generated
loc_45b2:
    push bp                          ; 0x45b2
    mov bp, sp                       ; 0x45b3
    sub sp, byte 0x0a                ; 0x45b5
    push ds                          ; 0x45b8
    push es                          ; 0x45b9
    push si                          ; 0x45ba
    push di                          ; 0x45bb
    mov ax, ds                       ; 0x45bc
    mov es, ax                       ; 0x45be
    xor ax, ax                       ; 0x45c0
    push ax                          ; 0x45c2
    push ax                          ; 0x45c3
    push ax                          ; 0x45c4
    push ax                          ; 0x45c5
    push ax                          ; 0x45c6
    push ax                          ; 0x45c7
    push ax                          ; 0x45c8
    call far [cs:cseg_021a - IMAGE_BASE] ; 0x45c9
    add sp, byte 0x0e                ; 0x45ce
    pop di                           ; 0x45d1
    pop si                           ; 0x45d2
    pop es                           ; 0x45d3
    pop ds                           ; 0x45d4
    mov sp, bp                       ; 0x45d5
    pop bp                           ; 0x45d7
    ret                              ; 0x45d8

    times 34 db 0

