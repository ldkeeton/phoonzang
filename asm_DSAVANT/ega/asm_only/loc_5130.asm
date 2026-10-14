; auto-generated
; asm only
loc_5130:
    push bp                          ; 0x5130
    mov bp, sp                       ; 0x5131
    push ds                          ; 0x5133
    push es                          ; 0x5134
    push si                          ; 0x5135
    push di                          ; 0x5136
    mov ax, ds                       ; 0x5137
    mov es, ax                       ; 0x5139
    call far [cs:cseg_0212 - IMAGE_BASE] ; 0x513b
    pop di                           ; 0x5140
    pop si                           ; 0x5141
    pop es                           ; 0x5142
    pop ds                           ; 0x5143
    mov sp, bp                       ; 0x5144
    pop bp                           ; 0x5146
    ret                              ; 0x5147
