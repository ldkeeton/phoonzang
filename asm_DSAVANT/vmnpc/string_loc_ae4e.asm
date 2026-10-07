string_loc_ae4e:
    push bp                          ; 0xae4e
    mov bp, sp                       ; 0xae4f
    cld                              ; 0xae51
    push si                          ; 0xae52
    push di                          ; 0xae53
    mov cx, word [bp + 0x8]          ; 0xae54
    mov di, ds                       ; 0xae57
    mov es, di                       ; 0xae59
    mov di, word [bp + 0x4]          ; 0xae5b
    mov si, word [bp + 0x6]          ; 0xae5e
    jcxz @..string_loc_ae4e.l3       ; 0xae61
@..string_loc_ae4e.l1:
    lodsb                            ; 0xae63
    test al, al                      ; 0xae64
    je short @..string_loc_ae4e.l2   ; 0xae66
    stosb                            ; 0xae68
    loop @..string_loc_ae4e.l1       ; 0xae69
    jmp short @..string_loc_ae4e.l3  ; 0xae6b
@..string_loc_ae4e.l2:
    rep stosb                        ; 0xae6d
@..string_loc_ae4e.l3:
    pop di                           ; 0xae6f
    pop si                           ; 0xae70
    mov ax, word [bp + 0x4]          ; 0xae71
    pop bp                           ; 0xae74
    ret                              ; 0xae75
