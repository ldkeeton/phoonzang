; auto-generated
aztec_toupper:
    push bp                          ; 0x2bb2
    mov bp, sp                       ; 0x2bb3
    mov al, byte [bp + 0x4]          ; 0x2bb5
    sub ah, ah                       ; 0x2bb8
    cmp al, 0x61                     ; 0x2bba
    jl short @..aztec_toupper.tu_done ; 0x2bbc
    cmp al, 0x7a                     ; 0x2bbe
    jg short @..aztec_toupper.tu_done ; 0x2bc0
    sub al, 0x20                     ; 0x2bc2
@..aztec_toupper.tu_done:
    pop bp                           ; 0x2bc4
    ret                              ; 0x2bc5
aztec_tolower:
    push bp                          ; 0x2bc6
    mov bp, sp                       ; 0x2bc7
    mov al, byte [bp + 0x4]          ; 0x2bc9
    sub ah, ah                       ; 0x2bcc
    cmp al, 0x41                     ; 0x2bce
    jl short @..aztec_toupper.skip   ; 0x2bd0
    cmp al, 0x5a                     ; 0x2bd2
    jg short @..aztec_toupper.skip   ; 0x2bd4
    add al, 0x20                     ; 0x2bd6
@..aztec_toupper.skip:
    pop bp                           ; 0x2bd8
    ret                              ; 0x2bd9
