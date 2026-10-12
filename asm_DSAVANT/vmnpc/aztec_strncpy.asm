aztec_strncpy:
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
    jcxz @..aztec_strncpy.cpydone    ; 0xae61
@..aztec_strncpy.cpyloop:
    lodsb                            ; 0xae63
    test al, al                      ; 0xae64
    je short @..aztec_strncpy.zerofill ; 0xae66
    stosb                            ; 0xae68
    loop @..aztec_strncpy.cpyloop    ; 0xae69
    jmp short @..aztec_strncpy.cpydone ; 0xae6b
@..aztec_strncpy.zerofill:
    rep stosb                        ; 0xae6d
@..aztec_strncpy.cpydone:
    pop di                           ; 0xae6f
    pop si                           ; 0xae70
    mov ax, word [bp + 0x4]          ; 0xae71
    pop bp                           ; 0xae74
    ret                              ; 0xae75
