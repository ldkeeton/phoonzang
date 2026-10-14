; auto-generated
loc_5118:
    push bp                          ; 0x5118
    mov bp, sp                       ; 0x5119
    push ds                          ; 0x511b
    push es                          ; 0x511c
    push si                          ; 0x511d
    push di                          ; 0x511e
    mov ax, ds                       ; 0x511f
    mov es, ax                       ; 0x5121
    call far [cs:cseg_021e - IMAGE_BASE] ; 0x5123
    pop di                           ; 0x5128
    pop si                           ; 0x5129
    pop es                           ; 0x512a
    pop ds                           ; 0x512b
    mov sp, bp                       ; 0x512c
    pop bp                           ; 0x512e
    ret                              ; 0x512f
