; auto-generated
; asm only
loc_487e:
    push bp                          ; 0x487e
    mov bp, sp                       ; 0x487f
    push ds                          ; 0x4881
    push es                          ; 0x4882
    push si                          ; 0x4883
    push di                          ; 0x4884
    mov ax, ds                       ; 0x4885
    mov es, ax                       ; 0x4887
    call far [cs:cseg_0112 - IMAGE_BASE] ; 0x4889
    pop di                           ; 0x488e
    pop si                           ; 0x488f
    pop es                           ; 0x4890
    pop ds                           ; 0x4891
    mov sp, bp                       ; 0x4892
    pop bp                           ; 0x4894
    ret                              ; 0x4895
