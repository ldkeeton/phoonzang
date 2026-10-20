; auto-generated
loc_PORS_4866:
    push bp                          ; 0x4866
    mov bp, sp                       ; 0x4867
    push ds                          ; 0x4869
    push es                          ; 0x486a
    push si                          ; 0x486b
    push di                          ; 0x486c
    mov ax, ds                       ; 0x486d
    mov es, ax                       ; 0x486f
    call far [cs:cseg_011e - IMAGE_BASE] ; 0x4871
    pop di                           ; 0x4876
    pop si                           ; 0x4877
    pop es                           ; 0x4878
    pop ds                           ; 0x4879
    mov sp, bp                       ; 0x487a
    pop bp                           ; 0x487c
    ret                              ; 0x487d
