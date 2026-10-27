; auto-generated
aztec_tolower:
    push bp                          ; 0x2bc6
    mov bp, sp                       ; 0x2bc7
    mov al, byte [bp + 4]            ; 0x2bc9
    sub ah, ah                       ; 0x2bcc
    cmp al, 0x41                     ; 0x2bce
    jl short .forward1               ; 0x2bd0
    cmp al, 0x5a                     ; 0x2bd2
    jg short .forward1               ; 0x2bd4
    add al, 0x20                     ; 0x2bd6
.forward1:
    pop bp                           ; 0x2bd8
    ret                              ; 0x2bd9
